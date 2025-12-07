uint64_t getEnumTagSinglePayload for AccessibilityCollectionViewTableDataSource(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 200))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityCollectionViewTableDataSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityCollectionViewTableAttachment and conformance AccessibilityCollectionViewTableAttachment()
{
  result = lazy protocol witness table cache variable for type AccessibilityCollectionViewTableAttachment and conformance AccessibilityCollectionViewTableAttachment;
  if (!lazy protocol witness table cache variable for type AccessibilityCollectionViewTableAttachment and conformance AccessibilityCollectionViewTableAttachment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityCollectionViewTableAttachment, &type metadata for AccessibilityCollectionViewTableAttachment, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCollectionViewTableAttachment and conformance AccessibilityCollectionViewTableAttachment);
  }

  return result;
}

uint64_t specialized AccessibilityRowAccumulator.visit<A, B>(rowValue:view:children:traits:)(uint64_t a1)
{
  outlined init with copy of AccessibilityTableContext?(a1, &v7, &lazy cache variable for type metadata for TableRowList?, &type metadata for TableRowList);
  if (*(&v8 + 1))
  {
    v10 = v7;
    v11 = v8;
    v2 = v9;
    v12 = v9;
    v3 = *(&v8 + 1);
    __swift_project_boxed_opaque_existential_1(&v10, *(&v8 + 1));
    if ((*(v2 + 24))(v3, v2))
    {

      v4 = *(&v11 + 1);
      v5 = v12;
      __swift_project_boxed_opaque_existential_1(&v10, *(&v11 + 1));
      *v1 += (*(v5 + 16))(v4, v5);
    }

    else
    {
      MEMORY[0x1EEE9AC00](0);
      static Update.ensure<A>(_:)();
    }

    outlined destroy of TableRowList(&v10);
  }

  else
  {
    _s7SwiftUI25AccessibilityTableContextOSgWOhTm_0(&v7, &lazy cache variable for type metadata for TableRowList?, &type metadata for TableRowList, MEMORY[0x1E69E6720]);
    ++*v1;
  }

  return 1;
}

uint64_t outlined init with copy of AccessibilityTableContext?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t static AccessibilityFocusStore.Key.defaultValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = type metadata accessor for AccessibilityFocusStore.Entry(0, a1, a2, a3);
  v6 = *(*(v5 - 8) + 56);

  return v6(a4, 1, 1, v5);
}

void AccessibilityFocusStore.makeStoreContent(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  if (!v3)
  {
    *v1 = 0;
    return;
  }

  if (v3 == 1)
  {
    v4 = 0;
    v5 = 0;
LABEL_15:
    v12 = v3 - v5;
    v13 = (a1 + 56 * v5 + 32);
    do
    {
      v15 = *v13;
      v13 += 7;
      v14 = v15;
      if (v15 > v4)
      {
        v4 = v14;
      }

      --v12;
    }

    while (v12);
    goto LABEL_19;
  }

  v4 = 0;
  v6 = 0;
  v5 = v3 & 0x7FFFFFFFFFFFFFFELL;
  v7 = (a1 + 88);
  v8 = v3 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    v9 = *(v7 - 7);
    v11 = *v7;
    v7 += 14;
    v10 = v11;
    if (v9 > v4)
    {
      v4 = v9;
    }

    if (v10 > v6)
    {
      v6 = v10;
    }

    v8 -= 2;
  }

  while (v8);
  if (v4 <= v6)
  {
    v4 = v6;
  }

  if (v3 != v5)
  {
    goto LABEL_15;
  }

LABEL_19:
  v16 = 0;
  v47 = *(a1 + 16);
  v48 = a1 + 32;
  *v1 = v4;
LABEL_21:
  v17 = (v48 + 56 * v16);
  v19 = v17[1];
  v18 = v17[2];
  v20 = v17[4];
  v21 = v17[6];
  v50 = v17[5];
  v22 = v2[2];
  if (*(v22 + 16) && (v23 = specialized __RawDictionaryStorage.find<A>(_:)(v19), (v24 & 1) != 0))
  {
    v53 = *(*(v22 + 56) + 8 * v23);
  }

  else
  {
    v53 = 0;
  }

  v49 = v16 + 1;

  v18(v20, v50, &v53);
  v25 = v53;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = v2[2];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, v19, isUniquelyReferenced_nonNull_native);
  v2[2] = v51;
  v27 = 1 << *(v21 + 32);
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  else
  {
    v28 = -1;
  }

  v29 = v28 & *(v21 + 64);
  v30 = (v27 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v31 = 0;
  while (v29)
  {
LABEL_36:
    v38 = __clz(__rbit64(v29)) | (v31 << 6);
    v39 = *(*(v21 + 48) + v38);
    v40 = *(*(v21 + 56) + v38);
    v41 = v2[1];
    if (*(v41 + 16) && (v42 = specialized __RawDictionaryStorage.find<A>(_:)(v39), (v43 & 1) != 0))
    {
      matched = *(*(v41 + 56) + 8 * v42);

      if (!matched[2])
      {
        goto LABEL_29;
      }
    }

    else
    {
      matched = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI18AccessibilityFocusV5MatchO_ShyAC8UniqueIDVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      if (!matched[2])
      {
        goto LABEL_29;
      }
    }

    v45 = specialized __RawDictionaryStorage.find<A>(_:)(v40);
    if ((v46 & 1) == 0)
    {
LABEL_29:
      v32 = MEMORY[0x1E69E7CD0];
      goto LABEL_30;
    }

    v32 = *(matched[7] + 8 * v45);

LABEL_30:
    v29 &= v29 - 1;

    v34 = specialized Set.union<A>(_:)(v33, v32);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v40, v35);

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v52 = v2[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(matched, v39, v36);

    v2[1] = v52;
  }

  while (1)
  {
    v37 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v37 >= v30)
    {

      swift_bridgeObjectRelease_n();
      ++v16;
      if (v49 == v47)
      {
        return;
      }

      goto LABEL_21;
    }

    v29 = *(v21 + 64 + 8 * v37);
    ++v31;
    if (v29)
    {
      v31 = v37;
      goto LABEL_36;
    }
  }

  __break(1u);
}

uint64_t AccessibilityFocusStore.matchedNodeIDs(for:match:)(unsigned __int16 *a1, uint64_t a2)
{
  v4 = *(v2 + 8);
  v5 = AccessibilityTechnologySet.list.getter(*a1);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = MEMORY[0x1E69E7CD0];
    v8 = 32;
    v9 = MEMORY[0x1E69E7CD0];
    do
    {
      if (*(v4 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(*(v5 + v8)), (v12 & 1) != 0) && *(*(*(v4 + 56) + 8 * v11) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(a2), (v13 & 1) != 0))
      {
      }

      else
      {
        v10 = v7;
      }

      v9 = specialized Set.union<A>(_:)(v10, v9);
      ++v8;
      --v6;
    }

    while (v6);
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v9;
}

uint64_t specialized Set.union<A>(_:)(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = specialized Set._Variant.insert(_:)(&v11, *(*(v2 + 48) + ((v9 << 9) | (8 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*AccessibilityFocusStoreLocation.wasRead.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + *(*v1 + class metadata base offset for AccessibilityFocusStoreLocation + 72));
  return AccessibilityFocusStoreLocation.wasRead.modify;
}

uint64_t AccessibilityFocusStoreLocation.deferUpdate(_:)(uint64_t a1)
{
  v3 = *(*v1 + class metadata base offset for AccessibilityFocusStoreLocation);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = *(TupleTypeMetadata2 + 48);
  (*(*(v3 - 8) + 16))(&v13 - v8, a1, v3, v7);
  *&v9[v10] = *&v1[*(*v1 + class metadata base offset for AccessibilityFocusStoreLocation + 64)];
  (*(*(TupleTypeMetadata2 - 8) + 56))(v9, 0, 1, TupleTypeMetadata2);
  v11 = *(*v1 + class metadata base offset for AccessibilityFocusStoreLocation + 48);
  swift_beginAccess();
  (*(v6 + 40))(&v1[v11], v9, v5);
  return swift_endAccess();
}

double AccessibilityFocusStoreLocation.set(_:transaction:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + class metadata base offset for AccessibilityFocusStoreLocation);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v2 + 5);
  v8 = &v13 - v7;
  if (swift_weakLoadStrong())
  {
    v10 = swift_allocObject();
    swift_weakInit();
    (*(v6 + 16))(v8, a1, v5);
    v11 = (*(v6 + 80) + 40) & ~*(v6 + 80);
    v12 = swift_allocObject();
    *(v12 + 2) = v5;
    *(v12 + 3) = *(v4 + class metadata base offset for AccessibilityFocusStoreLocation + 8);
    *(v12 + 4) = v10;
    (*(v6 + 32))(&v12[v11], v8, v5);

    default argument 1 of GraphHost.asyncTransaction(_:id:_:)();
    GraphHost.asyncTransaction(_:id:_:)();
  }

  return result;
}

void closure #1 in AccessibilityFocusStoreLocation.set(_:transaction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a2;
  v4 = type metadata accessor for AccessibilityFocusStore.Entry(255, a3, a4, a4);
  v5 = type metadata accessor for Optional();
  v49 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v48 - v6;
  v8 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v48 - v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v17 = Strong;
  (*(*(TupleTypeMetadata2 - 8) + 56))(v15, 1, 1, TupleTypeMetadata2);
  v18 = *(*v17 + class metadata base offset for AccessibilityFocusStoreLocation + 48);
  swift_beginAccess();
  (*(v13 + 40))(&v17[v18], v15, v12);
  swift_endAccess();
  v19 = v51;
  v21 = AccessibilityFocusStoreLocation.find(for:)(v20, v7);
  if ((*(v8 + 48))(v7, 1, v4, v21) == 1)
  {
    (*(v49 + 8))(v7, v5);
    AccessibilityFocusStoreLocation.deferUpdate(_:)(v19);

    return;
  }

  v49 = v8;
  v22 = v50;
  (*(v8 + 32))(v50, v7, v4);
  v51 = v4;
  v23 = *&v22[*(v4 + 36)];
  swift_getKeyPath();
  v24 = MEMORY[0x1E69E7CC0];
  *v54 = MEMORY[0x1E69E7CC0];
  v25 = *(v23 + 16);
  if (v25)
  {
    v26 = v23 + 32;
    do
    {
      outlined init with copy of WeakBox<AccessibilityNode>(v26, v53);
      swift_getAtKeyPath();
      v27 = outlined destroy of WeakBox<AccessibilityNode>(v53);
      if (v52)
      {
        MEMORY[0x18D00CC30](v27);
        if (*((*v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v24 = *v54;
      }

      v26 += 8;
      --v25;
    }

    while (v25);
  }

  if (!(v24 >> 62))
  {
    v28 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_13;
    }

LABEL_40:

    (*(v49 + 8))(v50, v51);
    return;
  }

LABEL_47:
  v28 = __CocoaSet.count.getter();
  if (!v28)
  {
    goto LABEL_40;
  }

LABEL_13:
  v29 = 0;
  v30 = v24 & 0xC000000000000001;
  v48 = v24 + 32;
  v31 = &unk_1EAB09000;
  do
  {
    if (v30)
    {
      v32 = MEMORY[0x18D00E9C0](v29, v24);
    }

    else
    {
      if (v29 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v32 = *(v24 + 8 * v29 + 32);
    }

    v33 = v32;
    v34 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v53[0] = 4;
    AccessibilityNode.impliedVisibility(consideringParent:with:)(1, v53, v54);
    if (v54[0] != 3)
    {

      v35 = v51;
      v36 = v49;
LABEL_43:
      AccessibilityNode.representedElement.getter();
      v47 = v46;
      *v54 = *&v17[*(*v17 + v31[223] + 40)];
      specialized static AccessibilityFocus.move(to:for:)(v46, v54);

      (*(v36 + 8))(v50, v35);
      return;
    }

    ++v29;
  }

  while (v34 != v28);
  v37 = 0;
  if (v30)
  {
    while (1)
    {
      v38 = MEMORY[0x18D00E9C0](v37, v24);
      if (__OFADD__(v37++, 1))
      {
        break;
      }

      v40 = v38;
      swift_unknownObjectRetain_n();
      v53[0] = 4;
      v33 = v40;
      AccessibilityNode.impliedVisibility(consideringParent:with:)(1, v53, v54);
      if (v54[0] != 3)
      {
        goto LABEL_42;
      }

      while (1)
      {
        v41 = swift_unknownObjectWeakLoadStrong();

        if (!v41)
        {
          break;
        }

        v33 = v41;
        v53[0] = 4;
        AccessibilityNode.impliedVisibility(consideringParent:with:)(1, v53, v54);
        if (v54[0] != 3)
        {
          goto LABEL_42;
        }
      }

      swift_unknownObjectRelease();
      if (v37 == v28)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
  }

  else
  {
    v42 = v48;
    while (v37 < *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v40 = *(v42 + 8 * v37);
      v53[0] = 4;
      AccessibilityNode.impliedVisibility(consideringParent:with:)(1, v53, v54);
      if (v54[0] != 3)
      {
        v33 = v40;
LABEL_42:

        v35 = v51;
        v36 = v49;
        v31 = &unk_1EAB09000;
        goto LABEL_43;
      }

      v43 = v37 + 1;
      v33 = v40;
      while (1)
      {
        v44 = swift_unknownObjectWeakLoadStrong();

        if (!v44)
        {
          break;
        }

        v33 = v44;
        v53[0] = 4;
        AccessibilityNode.impliedVisibility(consideringParent:with:)(1, v53, v54);
        if (v54[0] != 3)
        {
          goto LABEL_42;
        }
      }

      v37 = v43;
      v45 = v43 == v28;
      v42 = v48;
      if (v45)
      {
        goto LABEL_40;
      }
    }
  }

  __break(1u);
}

double AccessibilityFocusStoreLocation.find(for:)@<D0>(uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(*v3 + class metadata base offset for AccessibilityFocusStoreLocation);
  v6 = *(*v3 + class metadata base offset for AccessibilityFocusStoreLocation + 8);
  v7 = type metadata accessor for AccessibilityFocusStore.Entry(0, v5, v6, a2);
  (*(*(v7 - 8) + 56))(a3, 1, 1, v7);
  if (*(v3[4] + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v3);
    if (v10)
    {
      v11 = type metadata accessor for AccessibilityFocusStore.Key(0, v5, v6, v9);
      MEMORY[0x1EEE9AC00](v11);

      swift_getWitnessTable(protocol conformance descriptor for AccessibilityFocusStore.Key<A>, v11);
      PropertyList.forEach<A>(keyType:_:)();
    }
  }

  return result;
}

uint64_t closure #1 in AccessibilityFocusStoreLocation.find(for:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a4;
  v24 = a3;
  v8 = type metadata accessor for AccessibilityFocusStore.Entry(255, a5, a6, a4);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  v13 = *(v8 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - v16;
  (*(v10 + 16))(v12, a1, v9, v15);
  if ((*(v13 + 48))(v12, 1, v8) == 1)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v22 = a2;
  v19 = *(v13 + 32);
  v19(v17, v12, v8);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return (*(v13 + 8))(v17, v8);
  }

  v20 = v23;
  (*(v10 + 8))(v23, v9);
  v19(v20, v17, v8);
  result = (*(v13 + 56))(v20, 0, 1, v8);
  *v22 = 1;
  return result;
}

uint64_t closure #1 in AccessibilityFocusStoreLocation.resolve()(uint64_t a1, _BYTE *a2, uint64_t *a3, uint64_t a4)
{
  v33 = a4;
  v34 = a3;
  v6 = type metadata accessor for AccessibilityFocusStore.Entry(255, *(*a3 + class metadata base offset for AccessibilityFocusStoreLocation), *(*a3 + class metadata base offset for AccessibilityFocusStoreLocation + 8), a4);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v32 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v29 - v19;
  (*(v8 + 16))(v13, a1, v7, v18);
  v21 = *(v14 + 48);
  if (v21(v13, 1, v6) == 1)
  {
    return (*(v8 + 8))(v13, v7);
  }

  v31 = a2;
  v30 = *(v14 + 32);
  v30(v20, v13, v6);
  v23 = (v8 + 8);
  find #1 <A>(_:) in closure #1 in AccessibilityFocusStoreLocation.resolve()(byte_1EFF8CBF0, v34, v20, v10);
  if (v21(v10, 1, v6) == 1 && (v24 = *v23, (*v23)(v10, v7), find #1 <A>(_:) in closure #1 in AccessibilityFocusStoreLocation.resolve()(byte_1EFF8CBF1, v34, v20, v10), v21(v10, 1, v6) == 1) && (v24(v10, v7), find #1 <A>(_:) in closure #1 in AccessibilityFocusStoreLocation.resolve()(byte_1EFF8CBF2, v34, v20, v10), v21(v10, 1, v6) == 1) && (v24(v10, v7), find #1 <A>(_:) in closure #1 in AccessibilityFocusStoreLocation.resolve()(byte_1EFF8CBF3, v34, v20, v10), v21(v10, 1, v6) == 1))
  {
    v24(v10, v7);
    return (*(v14 + 8))(v20, v6);
  }

  else
  {
    (*(v14 + 8))(v20, v6);
    v25 = v32;
    v26 = v10;
    v27 = v30;
    v30(v32, v26, v6);
    v28 = v33;
    (*v23)(v33, v7);
    v27(v28, v25, v6);
    result = (*(v14 + 56))(v28, 0, 1, v6);
    *v31 = 1;
  }

  return result;
}

uint64_t find #1 <A>(_:) in closure #1 in AccessibilityFocusStoreLocation.resolve()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  v31 = *(a2 + *(*a2 + class metadata base offset for AccessibilityFocusStoreLocation + 40));

  v6 = AccessibilityFocusStore.matchedNodeIDs(for:match:)(&v31, a1);

  v9 = 0;
  v10 = 1 << *(v6 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v6 + 56);
  v13 = (v10 + 63) >> 6;
LABEL_5:
  while (v12)
  {
LABEL_10:
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v16 = *(*(v6 + 48) + ((v9 << 9) | (8 * v15)));
    result = type metadata accessor for AccessibilityFocusStore.Entry(0, *(v5 + class metadata base offset for AccessibilityFocusStoreLocation), *(v5 + class metadata base offset for AccessibilityFocusStoreLocation + 8), v8);
    v17 = *(a3 + *(result + 40));
    if (*(v17 + 16))
    {
      v18 = result;
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v16);
      result = Hasher._finalize()();
      v19 = -1 << *(v17 + 32);
      v20 = result & ~v19;
      if ((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        v21 = ~v19;
        while (*(*(v17 + 48) + 8 * v20) != v16)
        {
          v20 = (v20 + 1) & v21;
          if (((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        v28 = *(v18 - 8);
        (*(v28 + 16))(a4, a3, v18);
        v24 = *(v28 + 56);
        v26 = a4;
        v27 = 0;
        v25 = v18;
LABEL_18:

        return v24(v26, v27, 1, v25);
      }
    }
  }

  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v14 >= v13)
    {

      v23 = type metadata accessor for AccessibilityFocusStore.Entry(0, *(v5 + class metadata base offset for AccessibilityFocusStoreLocation), *(v5 + class metadata base offset for AccessibilityFocusStoreLocation + 8), v22);
      v24 = *(*(v23 - 8) + 56);
      v25 = v23;
      v26 = a4;
      v27 = 1;
      goto LABEL_18;
    }

    v12 = *(v6 + 56 + 8 * v14);
    ++v9;
    if (v12)
    {
      v9 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t AccessibilityFocusStoreLocation.__ivar_destroyer()
{
  v1 = *v0;

  swift_weakDestroy();
  v2 = *(v1 + class metadata base offset for AccessibilityFocusStoreLocation);
  (*(*(v2 - 8) + 8))(&v0[*(*v0 + class metadata base offset for AccessibilityFocusStoreLocation + 32)], v2);
  v3 = *(*v0 + class metadata base offset for AccessibilityFocusStoreLocation + 48);
  swift_getTupleTypeMetadata2();
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + class metadata base offset for AccessibilityFocusStoreLocation + 56);
  type metadata accessor for AccessibilityFocusStore.Entry(255, v2, *(v1 + class metadata base offset for AccessibilityFocusStoreLocation + 8), v6);
  v7 = type metadata accessor for Optional();
  v8 = *(*(v7 - 8) + 8);

  return v8(&v0[v5], v7);
}

char *AccessibilityFocusStoreLocation.deinit()
{
  v1 = *v0;
  v2 = AnyLocation.deinit();

  swift_weakDestroy();
  v3 = *(v1 + class metadata base offset for AccessibilityFocusStoreLocation);
  (*(*(v3 - 8) + 8))(&v2[*(*v2 + class metadata base offset for AccessibilityFocusStoreLocation + 32)], v3);
  v4 = *(*v2 + class metadata base offset for AccessibilityFocusStoreLocation + 48);
  swift_getTupleTypeMetadata2();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 8))(&v2[v4], v5);
  v6 = *(*v2 + class metadata base offset for AccessibilityFocusStoreLocation + 56);
  type metadata accessor for AccessibilityFocusStore.Entry(255, v3, *(v1 + class metadata base offset for AccessibilityFocusStoreLocation + 8), v7);
  v8 = type metadata accessor for Optional();
  (*(*(v8 - 8) + 8))(&v2[v6], v8);
  return v2;
}

double AccessibilityFocusStoreLocation.__deallocating_deinit()
{
  AccessibilityFocusStoreLocation.deinit();

  swift_deallocClassInstance();
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AccessibilityFocusStore.Entry(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    *((v10 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t initializeWithTake for AccessibilityFocusStore.Entry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for AccessibilityFocusStoreListModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = ((v6 + 16) & ~v6) + v7 + v6;
  v9 = (v8 & ~v6) + v7;
  v10 = *(v5 + 80) & 0x100000;
  v11 = *a2;
  *a1 = *a2;
  if (v6 > 7 || v10 != 0 || v9 > 0x18)
  {
    a1 = (v11 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v14 = ~v6;
    v15 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v16 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v16;
    v17 = *(v5 + 16);

    v17(v15 + 1, v16 + 1, v4);
    v17(((a1 + v8) & v14), ((a2 + v8) & v14), v4);
  }

  return a1;
}

void *initializeWithTake for AccessibilityFocusStoreListModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 32);
  v10 = v8 + 32;
  v11 = *(v8 + 80);
  v9((v5 + v11 + 8) & ~v11, (v6 + v11 + 8) & ~v11, v7);
  v12 = ((v11 + 16) & ~v11) + *(v10 + 32) + v11;
  v9((a1 + v12) & ~v11, (a2 + v12) & ~v11, v7);
  return a1;
}

uint64_t *assignWithTake for AccessibilityFocusStoreListModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v6;

  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 40);
  v11 = v9 + 40;
  v12 = *(v9 + 80);
  v10((v7 + v12 + 8) & ~v12, (v12 + 8 + v6) & ~v12, v8);
  v13 = ((v12 + 16) & ~v12) + *(v11 + 24) + v12;
  v10((a1 + v13) & ~v12, (a2 + v13) & ~v12, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityFocusStoreListModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v10 = ((v7 + v6 + ((v6 + 16) & ~v6)) & ~v6) + v7;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      v16 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v16 + v6 + 8) & ~v6);
      }

      v17 = *v16;
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void storeEnumTagSinglePayload for AccessibilityFocusStoreListModifier(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + v9 + ((v9 + 16) & ~v9)) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
LABEL_47:
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
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
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
  v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((v19 + v9 + 8) & ~v9);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

uint64_t (*protocol witness for Location.wasRead.modify in conformance AccessibilityFocusStoreLocation<A>(uint64_t a1))(uint64_t a1)
{
  *a1 = *v1;
  *(a1 + 8) = AccessibilityFocusStoreLocation.wasRead.getter() & 1;
  return protocol witness for Location.wasRead.modify in conformance AccessibilityFocusStoreLocation<A>;
}

uint64_t (*AccessibilityFocusStoreUpdateAction.init<A>(prototype:)(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  (*(v6 + 32))(v8 + v7, a1, a2);
  return partial apply for closure #1 in AccessibilityFocusStoreUpdateAction.init<A>(prototype:);
}

uint64_t closure #1 in AccessibilityFocusStoreUpdateAction.init<A>(prototype:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AccessibilityFocusStore.Entry(255, v15, v16, v14);
  v18 = type metadata accessor for Optional();
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v27 - v20;
  (*(v11 + 16))(v13, a4, a5, v19);
  (*(v11 + 32))(v21, v13, a5);
  v23 = type metadata accessor for AccessibilityFocusStore.Entry(0, a5, a6, v22);
  *&v21[*(v23 + 36)] = a1;
  *&v21[*(v23 + 40)] = a2;
  (*(*(v17 - 8) + 56))(v21, 0, 1, v17);
  v25 = type metadata accessor for AccessibilityFocusStore.Key(0, a5, a6, v24);

  swift_getWitnessTable(protocol conformance descriptor for AccessibilityFocusStore.Key<A>, v25);
  return PropertyList.subscript.setter();
}

uint64_t AccessibilityFocusStoreListModifier.ItemFilter.updateValue()(uint64_t a1)
{
  v119[1] = *MEMORY[0x1E69E9840];
  v98 = *(*(a1 + 16) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v97 = &v91[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v99 = *(v4 + 24);
  v100 = v5;
  v7 = type metadata accessor for AccessibilityFocusStoreListModifier(0, v5, v99, v6);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v91[-v9];
  v11 = *(v1 + 4);
  LODWORD(v116) = *(v1 + 8);
  v107 = *(v1 + 16);
  v101 = v1;
  Value = AGGraphGetValue();
  v13 = MEMORY[0x1E69E7CC0];
  if ((*Value & 1) == 0)
  {
    v119[0] = MEMORY[0x1E69E7CC0];
    return AGGraphSetOutputValue();
  }

  v14 = AGGraphGetValue();
  v93 = v15;
  v16 = *(v8 + 16);
  v96 = v10;
  v95 = v7;
  v16(v10, v14, v7);
  v113 = *MEMORY[0x1E698D3F8];
  if (v113 == v11)
  {
    v17 = 0;
  }

  else
  {
    AGGraphGetValue();
  }

  if (v17)
  {
    v13 = v17;
  }

  v94 = v13 >> 62;
  if (v13 >> 62)
  {
LABEL_108:
    v19 = __CocoaSet.count.getter();
  }

  else
  {
    v19 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = MEMORY[0x1E69E7CC0];
  v111 = v13;
  if (v19)
  {
    v119[0] = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 & ~(v19 >> 63), 0);
    if (v19 < 0)
    {
      __break(1u);
      goto LABEL_110;
    }

    v21 = 0;
    v20 = v119[0];
    v22 = v13 & 0xC000000000000001;
    do
    {
      if (v22)
      {
        v23 = MEMORY[0x18D00E9C0](v21, v111);
      }

      else
      {
        v23 = *(v111 + 8 * v21 + 32);
      }

      v24 = *&v23[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_id];

      v119[0] = v20;
      v2 = *(v20 + 16);
      v25 = *(v20 + 24);
      if (v2 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v2 + 1, 1);
        v20 = v119[0];
      }

      ++v21;
      *(v20 + 16) = v2 + 1;
      *(v20 + 8 * v2 + 32) = v24;
    }

    while (v19 != v21);

    v13 = v111;
  }

  *(v101 + 24) = v20;
  v26 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI9NamespaceV2IDV_Tt1g5();

  v27 = static AccessibilityEnabledTechnology.focusSupportingTechnologies.getter();
  v28 = *(v27 + 16);
  v103 = v8;
  v29 = v107;
  v105 = v28;
  v92 = v26;
  if (!v28)
  {

    v30 = MEMORY[0x1E69E7CC8];
    goto LABEL_71;
  }

  v110 = v13 & 0xFFFFFFFFFFFFFF8;
  if (v94)
  {
    v115 = __CocoaSet.count.getter();
  }

  else
  {
    v115 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = 0;
  v104 = v27 + 32;
  v112 = v13 & 0xC000000000000001;
  v109 = v13 + 32;
  v30 = MEMORY[0x1E69E7CC8];
  v102 = v27;
  while (2)
  {
    if (v31 >= *(v27 + 16))
    {
      goto LABEL_105;
    }

    v33 = *(v104 + v31);
    if (!v115)
    {
LABEL_66:
      v57 = specialized __RawDictionaryStorage.find<A>(_:)(v33);
      if (v58)
      {
        v59 = v57;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v119[0] = v30;
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeDictionary.copy()();
          v30 = v119[0];
        }

        specialized _NativeDictionary._delete(at:)(v59, v30);
      }

      goto LABEL_27;
    }

    v106 = v31;
    v108 = v30;
    v8 = 0;
    v34 = 1 << (v33 & 0xF);
    if (v33 > 0xF)
    {
      v34 = 0;
    }

    v114 = v34;
    v35 = 4;
    do
    {
      if (v112)
      {
        v36 = MEMORY[0x18D00E9C0](v8, v13);
      }

      else
      {
        if (v8 >= *(v110 + 16))
        {
          goto LABEL_104;
        }

        v36 = *(v109 + 8 * v8);
      }

      v37 = v36;
      if (__OFADD__(v8++, 1))
      {
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      v39 = v33;
      if (v113 == v116 || (v40 = *AGGraphGetValue(), , !v40))
      {
        v41 = MEMORY[0x1E69E7CC0];
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI30AccessibilityEnabledTechnologyO_AC0E5FocusV6TargetVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

        v40 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI30AccessibilityEnabledTechnologyO_AC0E5FocusV6TargetVTt0g5Tf4g_n(v41);
      }

      if (one-time initialization token for focusSupportingTechnologies != -1)
      {
        swift_once();
      }

      v42 = AccessibilityTechnologySet.list.getter(static AccessibilityTechnologies.focusSupportingTechnologies & v114);
      v43 = *(v42 + 16);
      v44 = v42 + 32;
      v2 = v37;

      if (v43)
      {
        v45 = 0;
        while (1)
        {
          if (*(v40 + 16))
          {
            v46 = specialized __RawDictionaryStorage.find<A>(_:)(*(v44 + v45));
            if (v47)
            {
              outlined init with copy of AccessibilityFocus.Target(*(v40 + 56) + 8 * v46, &v118);
              outlined init with take of AccessibilityFocus.Target(&v118, v119);
              AccessibilityFocus.Target.match(focusStoreNode:)(v2);
              v49 = v48;
              outlined destroy of AccessibilityFocus.Target(v119);
              if (v49 != 4)
              {
                break;
              }
            }
          }

          if (v43 == ++v45)
          {
            goto LABEL_52;
          }
        }

        v43 = v45;
LABEL_52:
        v13 = v111;
      }

      v50 = *(v42 + 16);
      if (v43 == v50)
      {

        swift_bridgeObjectRelease_n();
        v33 = v39;
      }

      else
      {
        if (v43 >= v50)
        {
          goto LABEL_103;
        }

        if (!*(v40 + 16))
        {
          goto LABEL_111;
        }

        v51 = specialized __RawDictionaryStorage.find<A>(_:)(*(v44 + v43));
        if ((v52 & 1) == 0)
        {
          goto LABEL_111;
        }

        outlined init with copy of AccessibilityFocus.Target(*(v40 + 56) + 8 * v51, &v118);
        outlined init with take of AccessibilityFocus.Target(&v118, v119);
        AccessibilityFocus.Target.match(focusStoreNode:)(v2);
        v54 = v53;
        v55 = v53;
        outlined destroy of AccessibilityFocus.Target(v119);

        if (v55 == 4)
        {
          goto LABEL_112;
        }

        v33 = v39;
        if (v35 == 4)
        {
        }

        else
        {
          v56 = specialized AccessibilityFocus.Match.takesPriority(over:)(v54);

          if (v56)
          {
            v54 = v54;
          }

          else
          {
            v54 = v35;
          }
        }

        v35 = v54;
        if (!v54)
        {
          v35 = 0;
          v27 = v102;
          v8 = v103;
          v30 = v108;
          v31 = v106;
          goto LABEL_26;
        }
      }
    }

    while (v8 != v115);
    v27 = v102;
    v8 = v103;
    v30 = v108;
    v31 = v106;
    if (v35 == 4)
    {
      goto LABEL_66;
    }

LABEL_26:
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v119[0] = v30;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v33, v32);
    v30 = v119[0];
LABEL_27:
    ++v31;
    v29 = v107;
    if (v31 != v105)
    {
      continue;
    }

    break;
  }

LABEL_71:
  if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI30AccessibilityEnabledTechnologyO_AC0D5FocusV5MatchOTt1g5(v30, v29) & 1) == 0)
  {

    *(v101 + 16) = v30;
    v29 = v30;
    goto LABEL_76;
  }

  if ((((v93 & 1) == 0) & v92) != 1)
  {
LABEL_76:
    v62 = v95;
    goto LABEL_77;
  }

  OutputValue = AGGraphGetOutputValue();
  v62 = v95;
  if (OutputValue)
  {
    (*(v8 + 8))(v96, v95);
  }

LABEL_77:
  v107 = v29;
  v63 = v97;
  v64 = v100;
  (*(v98 + 16))(v97, &v96[*(v62 + 36)], v100);
  v65 = v63;
  v66 = v99;
  AccessibilityFocusStoreUpdateAction.init<A>(prototype:)(v65, v64, v99);
  v68 = v67;
  DisplayList.Version.init(forUpdate:)();
  v69 = v119[0];
  v71 = type metadata accessor for AccessibilityFocusState.Binding(0, v64, v66, v70);
  v75 = AccessibilityFocusState.Binding.propertyID.getter(v71, v72, v73, v74);
  if (v94)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    v115 = v69;
    v116 = v68;
    v108 = v30;
    v118 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13 & ~(v13 >> 63), 0);
    if ((v13 & 0x8000000000000000) == 0)
    {
      v76 = 0;
      v8 = v118;
      v77 = v111 & 0xC000000000000001;
      v78 = v111 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v77)
        {
          v79 = MEMORY[0x18D00E9C0](v76, v111);
        }

        else
        {
          if ((v76 & 0x8000000000000000) != 0)
          {
            goto LABEL_106;
          }

          if (v76 >= *(v78 + 16))
          {
            goto LABEL_107;
          }

          v79 = *(v111 + 8 * v76 + 32);
        }

        v80 = v79;
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakAssign();

        v118 = v8;
        v82 = *(v8 + 16);
        v81 = *(v8 + 24);
        v2 = v82 + 1;
        if (v82 >= v81 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 1, 1);
          v8 = v118;
        }

        ++v76;
        *(v8 + 16) = v2;
        outlined init with take of WeakBox<AccessibilityNode>(v117, v8 + 8 * v82 + 32);
      }

      while (v13 != v76);
      v118 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13 & ~(v13 >> 63), 0);
      v83 = 0;
      v84 = v118;
      do
      {
        if (v77)
        {
          v85 = MEMORY[0x18D00E9C0](v83, v111);
        }

        else
        {
          v85 = *(v111 + 8 * v83 + 32);
        }

        v86 = *&v85[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_id];

        v118 = v84;
        v88 = *(v84 + 16);
        v87 = *(v84 + 24);
        if (v88 >= v87 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v88 + 1, 1);
          v84 = v118;
        }

        ++v83;
        *(v84 + 16) = v88 + 1;
        *(v84 + 8 * v88 + 32) = v86;
      }

      while (v13 != v83);

      v69 = v115;
      v68 = v116;
      goto LABEL_100;
    }

LABEL_110:
    __break(1u);
LABEL_111:

    swift_bridgeObjectRelease_n();
LABEL_112:
    __break(1u);
  }

  v84 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
LABEL_100:
  v89 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI8UniqueIDV_SayAFGTt0g5Tf4g_n(v84);

  type metadata accessor for Attribute<EnvironmentValues>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityFocusStoreList.Item>, &type metadata for AccessibilityFocusStoreList.Item, MEMORY[0x1E69E6F90]);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_18CD63400;
  *(v90 + 32) = v69;
  *(v90 + 40) = v75;
  *(v90 + 48) = partial apply for closure #1 in AccessibilityFocusStoreUpdateAction.init<A>(prototype:);
  *(v90 + 56) = v68;
  *(v90 + 64) = v8;
  *(v90 + 72) = v89;
  *(v90 + 80) = v107;
  v119[0] = v90;

  AGGraphSetOutputValue();
  (*(v103 + 8))(v96, v95);
}

uint64_t (*AccessibilityFocusStoreListModifier.ListTransform.value.getter(uint64_t a1))()
{
  v1 = *AGGraphGetValue();
  *(swift_allocObject() + 16) = v1;

  return partial apply for closure #1 in AccessibilityFocusStoreListModifier.ListTransform.value.getter;
}

uint64_t protocol witness for Rule.value.getter in conformance AccessibilityFocusStoreListModifier<A>.ListTransform@<X0>(uint64_t (**a1)()@<X8>)
{
  AccessibilityFocusStoreListModifier.ListTransform.value.getter(*v1);
  v4 = v3;
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in AccessibilityFocusStoreListModifier.ListTransform.value.getter;
  *(result + 24) = v4;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@inout AccessibilityLargeContentViewTree) -> ();
  a1[1] = result;
  return result;
}

uint64_t AccessibilityFocusStoreListModifier.init(binding:prototype:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for AccessibilityFocusState.Binding(0, a3, a4, a4);
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v12 = type metadata accessor for AccessibilityFocusStoreListModifier(0, a3, a4, v11);
  v13 = *(*(a3 - 8) + 32);
  v14 = a5 + *(v12 + 36);

  return v13(v14, a2, a3);
}

uint64_t outlined init with copy of WeakBox<AccessibilityNode>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for WeakBox<AccessibilityNode>, type metadata accessor for AccessibilityNode, MEMORY[0x1E6981A78]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WeakBox<AccessibilityNode>(uint64_t a1)
{
  type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for WeakBox<AccessibilityNode>, type metadata accessor for AccessibilityNode, MEMORY[0x1E6981A78]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t assignWithCopy for AccessibilityFocusStoreListModifier.ItemFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t outlined init with take of WeakBox<AccessibilityNode>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for WeakBox<AccessibilityNode>, type metadata accessor for AccessibilityNode, MEMORY[0x1E6981A78]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t destroy for AccessibilityFocusStoreList.Item(uint64_t a1)
{
}

uint64_t initializeWithCopy for AccessibilityFocusStoreList.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

void *assignWithCopy for AccessibilityFocusStoreList.Item(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  a1[4] = a2[4];

  a1[5] = a2[5];

  a1[6] = a2[6];

  return a1;
}

uint64_t assignWithTake for AccessibilityFocusStoreList.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityFocusStoreList.Item(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for AccessibilityFocusStoreList.Item(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t closure #1 in PlatformSearchFieldStyle.Implementation.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UIKitSearchFieldAdaptor(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  _s7SwiftUI24SearchFieldConfigurationVWOcTm_1(a1, &v17 - v11, type metadata accessor for SearchFieldConfiguration);
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0]();
  v13 = *v6;
  _s7SwiftUI16SearchFieldStateVWOhTm_3(v6, type metadata accessor for SearchFieldState);
  v14 = v13 == 2 || (v13 & 1) == 0;
  _s7SwiftUI24SearchFieldConfigurationVWOcTm_1(v12, v9, type metadata accessor for UIKitSearchFieldAdaptor);
  _s7SwiftUI24SearchFieldConfigurationVWOcTm_1(v9, a2, type metadata accessor for UIKitSearchFieldAdaptor);
  type metadata accessor for (UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)(0);
  *(a2 + *(v15 + 48)) = v14;
  _s7SwiftUI16SearchFieldStateVWOhTm_3(v12, type metadata accessor for UIKitSearchFieldAdaptor);
  return _s7SwiftUI16SearchFieldStateVWOhTm_3(v9, type metadata accessor for UIKitSearchFieldAdaptor);
}

uint64_t protocol witness for View.body.getter in conformance PlatformSearchFieldStyle.Implementation@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  type metadata accessor for _VariadicView.Tree<_VStackLayout, TupleView<(UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)>>(0);
  return closure #1 in PlatformSearchFieldStyle.Implementation.body.getter(v2, a1 + *(v4 + 44));
}

void *initializeBufferWithCopyOfBuffer for PlatformSearchFieldStyle.Implementation(void *a1, void *a2)
{
  v4 = type metadata accessor for SearchFieldConfiguration(0);
  v5 = *(*(v4 - 8) + 80);
  v6 = *a2;
  *a1 = *a2;
  if ((v5 & 0x20000) != 0)
  {
    a1 = (v6 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = v4;
    a1[1] = a2[1];
    _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
    v9 = *(v8 + 32);
    v10 = a1 + v9;
    v11 = a2 + v9;
    *v10 = *(a2 + v9);
    v10[1] = *(a2 + v9 + 1);
    *(v10 + 1) = *(a2 + v9 + 2);
    v10[8] = *(a2 + v9 + 8);
    *(v10 + 1) = *(a2 + v9 + 4);
    v12 = type metadata accessor for SearchFieldState(0);
    v13 = v12[9];
    v14 = type metadata accessor for AttributedString();
    v32 = *(*(v14 - 8) + 16);

    v32(&v10[v13], &v11[v13], v14);
    v15 = v7;
    v10[v12[10]] = v11[v12[10]];
    v16 = v12[11];
    v17 = &v10[v16];
    v18 = &v11[v16];
    *v17 = *v18;
    v17[4] = v18[4];
    v19 = *(v7 + 24);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v22 = v21[8];
    if (v22 == 255)
    {
      *v20 = *v21;
      v20[8] = v21[8];
    }

    else
    {
      v23 = *v21;
      v24 = v22 & 1;
      outlined copy of PlatformItemCollection.Storage(*v21, v22 & 1);
      *v20 = v23;
      v20[8] = v24;
    }

    *(a1 + *(v15 + 28)) = *(a2 + *(v15 + 28));
    v25 = *(v15 + 32);
    v26 = a1 + v25;
    v27 = a2 + v25;
    v28 = *(a2 + v25);
    v29 = *(v27 + 1);
    v30 = v27[16];
    outlined copy of Text.Storage(v28, v29, v30);
    *v26 = v28;
    *(v26 + 1) = v29;
    v26[16] = v30;
    *(v26 + 3) = *(v27 + 3);
  }

  return a1;
}

uint64_t destroy for PlatformSearchFieldStyle.Implementation(void *a1)
{

  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v3 = *(v2 + 32);
  v4 = a1 + *(type metadata accessor for SearchFieldState(0) + 36);
  v5 = type metadata accessor for AttributedString();
  (*(*(v5 - 8) + 8))(&v4[v3], v5);
  v6 = type metadata accessor for SearchFieldConfiguration(0);
  v7 = a1 + *(v6 + 24);
  v8 = v7[8];
  if (v8 != 255)
  {
    outlined consume of PlatformItemCollection.Storage(*v7, v8 & 1);
  }

  outlined consume of Text.Storage(*(a1 + *(v6 + 32)), *(a1 + *(v6 + 32) + 8), *(a1 + *(v6 + 32) + 16));
}

void *initializeWithCopy for PlatformSearchFieldStyle.Implementation(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v6 = *(v5 + 32);
  v7 = a1 + v6;
  v8 = a2 + v6;
  *v7 = *(a2 + v6);
  v7[1] = *(a2 + v6 + 1);
  *(v7 + 1) = *(a2 + v6 + 2);
  v7[8] = *(a2 + v6 + 8);
  *(v7 + 1) = *(a2 + v6 + 4);
  v9 = type metadata accessor for SearchFieldState(0);
  v10 = v9[9];
  v11 = type metadata accessor for AttributedString();
  v12 = *(*(v11 - 8) + 16);

  v12(&v7[v10], &v8[v10], v11);
  v7[v9[10]] = v8[v9[10]];
  v13 = v9[11];
  v14 = &v7[v13];
  v15 = &v8[v13];
  v14[4] = v15[4];
  *v14 = *v15;
  v16 = type metadata accessor for SearchFieldConfiguration(0);
  v17 = v16[6];
  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = v19[8];
  if (v20 == 255)
  {
    *v18 = *v19;
    v18[8] = v19[8];
  }

  else
  {
    v21 = *v19;
    v22 = v20 & 1;
    outlined copy of PlatformItemCollection.Storage(*v19, v20 & 1);
    *v18 = v21;
    v18[8] = v22;
  }

  *(a1 + v16[7]) = *(a2 + v16[7]);
  v23 = v16[8];
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = *(a2 + v23);
  v27 = *(v25 + 1);
  v28 = v25[16];
  outlined copy of Text.Storage(v26, v27, v28);
  *v24 = v26;
  *(v24 + 1) = v27;
  v24[16] = v28;
  *(v24 + 3) = *(v25 + 3);

  return a1;
}

void *assignWithCopy for PlatformSearchFieldStyle.Implementation(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v5 = *(v4 + 32);
  v6 = a1 + v5;
  v7 = a2 + v5;
  *v6 = *(a2 + v5);
  v6[1] = *(a2 + v5 + 1);
  v6[2] = *(a2 + v5 + 2);
  v6[3] = *(a2 + v5 + 3);
  LODWORD(v5) = *(a2 + v5 + 4);
  v6[8] = v7[8];
  *(v6 + 1) = v5;
  v8 = type metadata accessor for SearchFieldState(0);
  v9 = v8[9];
  v10 = type metadata accessor for AttributedString();
  (*(*(v10 - 8) + 24))(&v6[v9], &v7[v9], v10);
  v6[v8[10]] = v7[v8[10]];
  v11 = v8[11];
  v12 = &v6[v11];
  v13 = &v7[v11];
  *v12 = *v13;
  v12[4] = v13[4];
  v14 = type metadata accessor for SearchFieldConfiguration(0);
  v15 = v14[6];
  v16 = a1 + v15;
  v17 = a2 + v15;
  v18 = *(a1 + v15 + 8);
  v19 = *(a2 + v15 + 8);
  if (v18 == 255)
  {
    if (v19 == 255)
    {
      v27 = *v17;
      v16[8] = v17[8];
      *v16 = v27;
    }

    else
    {
      v24 = *v17;
      v25 = v19 & 1;
      outlined copy of PlatformItemCollection.Storage(v24, v19 & 1);
      *v16 = v24;
      v16[8] = v25;
    }
  }

  else if (v19 == 255)
  {
    outlined destroy of PlatformItemCollection(v16);
    v26 = v17[8];
    *v16 = *v17;
    v16[8] = v26;
  }

  else
  {
    v20 = *v17;
    v21 = v19 & 1;
    outlined copy of PlatformItemCollection.Storage(v20, v19 & 1);
    v22 = *v16;
    v23 = v16[8];
    *v16 = v20;
    v16[8] = v21;
    outlined consume of PlatformItemCollection.Storage(v22, v23);
  }

  *(a1 + v14[7]) = *(a2 + v14[7]);
  v28 = v14[8];
  v29 = a1 + v28;
  v30 = a2 + v28;
  v31 = *(a2 + v28);
  v32 = *(v30 + 1);
  v33 = v30[16];
  outlined copy of Text.Storage(v31, v32, v33);
  v34 = *v29;
  v35 = *(v29 + 1);
  v36 = v29[16];
  *v29 = v31;
  *(v29 + 1) = v32;
  v29[16] = v33;
  outlined consume of Text.Storage(v34, v35, v36);
  *(v29 + 3) = *(v30 + 3);

  return a1;
}

void *initializeWithTake for PlatformSearchFieldStyle.Implementation(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v6 = *(v5 + 32);
  v7 = a1 + v6;
  v8 = a2 + v6;
  *v7 = *(a2 + v6);
  v7[1] = *(a2 + v6 + 1);
  *(v7 + 1) = *(a2 + v6 + 2);
  v7[8] = *(a2 + v6 + 8);
  *(v7 + 1) = *(a2 + v6 + 4);
  v9 = type metadata accessor for SearchFieldState(0);
  v10 = v9[9];
  v11 = type metadata accessor for AttributedString();
  (*(*(v11 - 8) + 32))(&v7[v10], &v8[v10], v11);
  v7[v9[10]] = v8[v9[10]];
  v12 = v9[11];
  v13 = &v7[v12];
  v14 = &v8[v12];
  v13[4] = v14[4];
  *v13 = *v14;
  v15 = type metadata accessor for SearchFieldConfiguration(0);
  v16 = v15[6];
  v17 = a1 + v16;
  v18 = a2 + v16;
  *v17 = *v18;
  v17[8] = v18[8];
  *(a1 + v15[7]) = *(a2 + v15[7]);
  v19 = v15[8];
  v20 = (a1 + v19);
  v21 = (a2 + v19);
  v22 = v21[1];
  *v20 = *v21;
  v20[1] = v22;
  return a1;
}

void *assignWithTake for PlatformSearchFieldStyle.Implementation(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v5 = *(v4 + 32);
  v6 = a1 + v5;
  v7 = a2 + v5;
  *v6 = *(a2 + v5);
  v6[1] = *(a2 + v5 + 1);
  *(v6 + 1) = *(a2 + v5 + 2);
  v6[8] = *(a2 + v5 + 8);
  *(v6 + 1) = *(a2 + v5 + 4);
  v8 = type metadata accessor for SearchFieldState(0);
  v9 = v8[9];
  v10 = type metadata accessor for AttributedString();
  (*(*(v10 - 8) + 40))(&v6[v9], &v7[v9], v10);
  v6[v8[10]] = v7[v8[10]];
  v11 = v8[11];
  v12 = &v6[v11];
  v13 = &v7[v11];
  *v12 = *v13;
  v12[4] = v13[4];
  v14 = type metadata accessor for SearchFieldConfiguration(0);
  v15 = v14[6];
  v16 = a1 + v15;
  v17 = a2 + v15;
  v18 = *(a1 + v15 + 8);
  if (v18 == 255)
  {
    goto LABEL_5;
  }

  v19 = v17[8];
  if (v19 == 255)
  {
    outlined destroy of PlatformItemCollection(v16);
LABEL_5:
    *v16 = *v17;
    v16[8] = v17[8];
    goto LABEL_6;
  }

  v20 = *v16;
  *v16 = *v17;
  v16[8] = v19 & 1;
  outlined consume of PlatformItemCollection.Storage(v20, v18 & 1);
LABEL_6:
  *(a1 + v14[7]) = *(a2 + v14[7]);
  v21 = v14[8];
  v22 = a1 + v21;
  v23 = a2 + v21;
  LOBYTE(v21) = v23[16];
  v24 = *v22;
  v25 = *(v22 + 1);
  v26 = v22[16];
  *v22 = *v23;
  v22[16] = v21;
  outlined consume of Text.Storage(v24, v25, v26);
  *(v22 + 3) = *(v23 + 3);

  return a1;
}

uint64_t type metadata accessor for PlatformSearchFieldStyle.Implementation(uint64_t a1)
{
  result = type metadata singleton initialization cache for PlatformSearchFieldStyle.Implementation;
  if (!type metadata singleton initialization cache for PlatformSearchFieldStyle.Implementation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata accessor for _VariadicView.Tree<_VStackLayout, TupleView<(UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, TupleView<(UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)>>)
  {
    _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_1(255, &lazy cache variable for type metadata for TupleView<(UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)>, type metadata accessor for (UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?), MEMORY[0x1E6981F40]);
    v1 = type metadata accessor for _VariadicView.Tree();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, TupleView<(UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)>>);
    }
  }
}

void type metadata accessor for (UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?))
  {
    type metadata accessor for UIKitSearchFieldAdaptor(255);
    type metadata accessor for SearchFieldConfiguration.Suggestions?();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?));
    }
  }
}

void type metadata accessor for SearchFieldConfiguration.Suggestions?()
{
  if (!lazy cache variable for type metadata for SearchFieldConfiguration.Suggestions?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SearchFieldConfiguration.Suggestions?);
    }
  }
}

uint64_t lazy protocol witness table accessor for type PlatformSearchFieldStyle.Implementation and conformance PlatformSearchFieldStyle.Implementation(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void type metadata accessor for VStack<TupleView<(UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for VStack<TupleView<(UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)>>)
  {
    _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_1(255, &lazy cache variable for type metadata for TupleView<(UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)>, type metadata accessor for (UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?), MEMORY[0x1E6981F40]);
    lazy protocol witness table accessor for type TupleView<(UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)> and conformance TupleView<A>();
    v1 = type metadata accessor for VStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for VStack<TupleView<(UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TupleView<(UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)> and conformance TupleView<A>)
  {
    _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_1(255, &lazy cache variable for type metadata for TupleView<(UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)>, type metadata accessor for (UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?), MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable(MEMORY[0x1E6981F48], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)> and conformance TupleView<A>);
  }

  return result;
}

void NavigationPath.updatePossibilities(from:to:into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v8 = a1;
  v10 = *v3;
  v9 = *(v3 + 8);
  v11 = *(v3 + 16);
  if (*(v3 + 24))
  {
    *&v16 = *v3;
    *(&v16 + 1) = v9;
    v17 = v11;

    NavigationPath.CodableRepresentation.updatePossibilities(from:to:into:)(v8, a2, a3);
    v13 = v16;
    v14 = v11;
    v15 = 1;
    NavigationPath.items.setter(&v13);
    if (v5)
    {
      swift_willThrow();
    }

    return;
  }

  if (a2 < a1)
  {
    goto LABEL_19;
  }

  v18 = *(v3 + 16);

  if (v8 == a2)
  {
LABEL_6:
    outlined consume of NavigationPath.Representation(v10, v9, v18, 0);
    return;
  }

  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x18D00E9C0](v8, v10);
      goto LABEL_11;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v8 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    v12 = *(v10 + 8 * v8 + 32);

LABEL_11:
    (*(*v12 + 168))(a3, v8);
    if (v5)
    {
      outlined consume of NavigationPath.Representation(v10, v9, v18, 0);

      return;
    }

    ++v8;

    if (a2 == v8)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

BOOL NavigationPath.isEmpty.getter()
{
  v1 = *(v0 + 32);
  if (!NavigationPath.Representation.isEmpty.getter())
  {
    return 0;
  }

  if (v1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 == 0;
}

double NavigationPath.append<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ItemBox(0, v7, v8, v9);
  (*(v4 + 16))(v6, a1, a2);
  v10 = ItemBox.__allocating_init(_:)(v6);
  NavigationPath.append<A>(box:)(v10);

  return result;
}

{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = v7;
  v13[1] = v8;
  v13[2] = v9;
  v13[3] = v10;
  type metadata accessor for CodableItemBox(0, v13);
  (*(v4 + 16))(v6, a1, a2);
  v11 = CodableItemBox.__allocating_init(_:)(v6);
  NavigationPath.append<A>(box:)(v11);

  return result;
}

Swift::Void __swiftcall NavigationPath.removeLast(_:)(Swift::Int a1)
{
  v6 = *(v4 + 32);
  if (v6 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_7;
    }

    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  if (v7 >= a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = v7;
  }

  specialized RangeReplaceableCollection<>.removeLast(_:)(v8, v1, v2, v3);
  v9 = __OFSUB__(a1, v8);
  a1 -= v8;
  if (v9)
  {
    __break(1u);
    return;
  }

LABEL_7:
  if (a1 >= 1)
  {
    v10 = *(v4 + 8);
    v11 = *(v4 + 16);
    v12 = *(v4 + 24);
    *&v19 = *v4;
    *(&v19 + 1) = v10;
    v20 = v11;
    v21 = v12;
    outlined copy of NavigationPath.Representation(v19, v10, v11, v12);
    NavigationPath.Representation.removeLast(_:)(a1, v13, v14, v15);
    v16 = v19;
    v17 = v20;
    v18 = v21;
    NavigationPath.items.setter(&v16);
  }
}

uint64_t NavigationPath.view<A>(basedOn:applying:index:apparentPosition:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(v8 + 24))
  {
    goto LABEL_13;
  }

  v12 = *v8;
  v11 = *(v8 + 8);
  v13 = *(v8 + 16);
  v28 = v11;
  v26 = *v8 + 8 * a5;
  v27 = *v8 & 0xC000000000000001;
  if (!v27)
  {
    if ((a5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) > a5)
    {
      v20 = a3;
      v21 = a6;
      v22 = a4;
      v23 = a7;
      v24 = a8;
      v25 = *(*v8 + 8 * a5 + 32);
      outlined copy of NavigationPath.Representation(v12, v11, v13, 0);

      goto LABEL_7;
    }

    __break(1u);
LABEL_13:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v20 = a3;
  v21 = a6;
  v22 = a4;
  v23 = a7;
  v24 = a8;

  v25 = MEMORY[0x18D00E9C0](a5, v12);
LABEL_7:
  v14 = *(a2 + 48);
  v29[2] = *(a2 + 32);
  v29[3] = v14;
  v29[4] = *(a2 + 64);
  v30 = *(a2 + 80);
  v15 = *(a2 + 16);
  v29[0] = *a2;
  v29[1] = v15;
  v16 = (*(*v25 + 176))(v29, v21, v20, v22, v23, v24);

  if (v27)
  {
    v17 = MEMORY[0x18D00E9C0](a5, v12);
  }

  else
  {
    v17 = *(v26 + 32);
  }

  v18 = outlined consume of NavigationPath.Representation(v12, v28, v13, 0);
  (*(*v17 + 112))(v18);

  return v16;
}

BOOL NavigationPath.contains<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = *v3;
  if (*(v3 + 24))
  {
    v7 = *(v3 + 32);
    if (NavigationPath.CodableRepresentation.contains<A>(_:)(a1, a2, a3))
    {
      return 1;
    }

    else
    {
      v21 = v5;
      if (v7 >> 62)
      {
        v17 = __CocoaSet.count.getter();
      }

      else
      {
        v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v6 = 0;
      v5 = a2;
      v11 = a1;
      do
      {
        v10 = v17 != v6;
        if (v17 == v6)
        {
          break;
        }

        if ((v7 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x18D00E9C0](v6, v7);
          if (__OFADD__(v6, 1))
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (v6 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v18 = *(v7 + 8 * v6 + 32);

          if (__OFADD__(v6, 1))
          {
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }
        }

        v4 = (*(*v18 + 152))(v11, v5, v21);

        ++v6;
      }

      while ((v4 & 1) == 0);
    }
  }

  else
  {
    v19 = *(v3 + 8);
    v20 = *(v3 + 16);
    v22 = a1;
    v11 = a2;
    v4 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v6 >> 62)
    {
LABEL_32:
      v12 = __CocoaSet.count.getter();
    }

    else
    {
      v12 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = 0;
    do
    {
      v10 = v12 != v13;
      if (v12 == v13)
      {
        break;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x18D00E9C0](v13, v6);
        if (__OFADD__(v13, 1))
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v13 >= *(v4 + 16))
        {
          goto LABEL_30;
        }

        v14 = *(v6 + 8 * v13 + 32);

        if (__OFADD__(v13, 1))
        {
LABEL_15:
          __break(1u);
          break;
        }
      }

      v15 = (*(*v14 + 152))(v22, v11, v5);

      ++v13;
    }

    while ((v15 & 1) == 0);
    outlined consume of NavigationPath.Representation(v6, v19, v20, 0);
  }

  return v10;
}

uint64_t specialized RangeReplaceableCollection<>.removeLast(_:)(uint64_t result, void x1_0, void a3, uint64_t a4)
{
  if (result)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else if (!(*v3 >> 62))
    {
      v4 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v5 = -v4;
      if (!__OFSUB__(0, v4))
      {
        goto LABEL_5;
      }

      goto LABEL_17;
    }

    v8 = result;
    v4 = __CocoaSet.count.getter();
    result = v8;
    v5 = -v4;
    if (!__OFSUB__(0, v4))
    {
LABEL_5:
      v6 = -result;
      if (v5 <= 0 && v5 > v6)
      {
        goto LABEL_20;
      }

      result = v4 - result;
      if (!__OFADD__(v4, v6))
      {
        if (v4 >= result)
        {
          return specialized Array.replaceSubrange<A>(_:with:)(result, v4, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), a4, type metadata accessor for NavigationPath_ItemBoxBase);
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  return result;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v42 - v14;
  v46 = a5;
  v44 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v42 - v18;
  v19 = type metadata accessor for Optional();
  v47 = *(v19 - 8);
  v48 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v49 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v55 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v31 = &v42 - v30;
  v32 = dispatch thunk of Sequence.underestimatedCount.getter();
  v63 = ContiguousArray.init()();
  v58 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v32);
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = dispatch thunk of Sequence.makeIterator()();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      dispatch thunk of IteratorProtocol.next()();
      result = (*v34)(v23, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v23, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v23, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v23, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  dispatch thunk of IteratorProtocol.next()();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
      dispatch thunk of IteratorProtocol.next()();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t NavigationPath.items.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(v2 + 32);
  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_6:
    if (!v6)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v6)
  {
LABEL_7:
    if (!*(v4 + 16))
    {

      specialized Array.append<A>(contentsOf:)(v11);

      specialized Array.append<A>(contentsOf:)(v12);
      v9 = v3;
      goto LABEL_10;
    }

LABEL_8:
    result = outlined consume of NavigationPath.Representation(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
    *v2 = v3;
    *(v2 + 8) = v4;
    *(v2 + 16) = v5;
    *(v2 + 24) = v6;
    return result;
  }

  specialized Array.append<A>(contentsOf:)(v8);
  v9 = v3;
LABEL_10:
  outlined consume of NavigationPath.Representation(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = v9;
  *(v2 + 24) = 0;

  *(v2 + 32) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t NavigationPath.codable.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v9[0] = v3;
  v9[1] = v4;
  v9[2] = v5;
  v10 = v6;
  outlined copy of NavigationPath.Representation(v3, v4, v5, v6);

  return NavigationPath.CodableRepresentation.init(items:subsequentItems:)(v9, v7, a1);
}

uint64_t NavigationPath.CodableRepresentation.init(items:subsequentItems:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = a3;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v18 = *(a1 + 24);
  if (v18)
  {
    v17 = a3;
    v8 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
LABEL_33:
      v9 = __CocoaSet.count.getter();
    }

    else
    {
      v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = 0;
    do
    {
      if (v9 == v10)
      {

        specialized Array.append<A>(contentsOf:)(v3);
        outlined consume of NavigationPath.Representation(v5, v6, v7, 1);
        result = outlined consume of NavigationPath.Representation(v5, v6, v7, 1);
        v16 = v7;
        v4 = v17;
        goto LABEL_28;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x18D00E9C0](v10, v3);
        if (__OFADD__(v10, 1))
        {
LABEL_13:
          __break(1u);
          goto LABEL_14;
        }
      }

      else
      {
        if (v10 >= *(v8 + 16))
        {
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v11 = *(v3 + 8 * v10 + 32);

        if (__OFADD__(v10, 1))
        {
          goto LABEL_13;
        }
      }

      v4 = (*(*v11 + 128))();

      ++v10;
    }

    while ((v4 & 1) != 0);

    v4 = v17;
LABEL_29:
    outlined consume of NavigationPath.Representation(v5, v6, v7, v18);
    result = outlined consume of NavigationPath.Representation(v5, v6, v7, v18);
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
  }

  else
  {
LABEL_14:

    v8 = v5 & 0xFFFFFFFFFFFFFF8;
    if (v5 >> 62)
    {
      v3 = __CocoaSet.count.getter();
    }

    else
    {
      v3 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = 0;
    while (v3 != v12)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x18D00E9C0](v12, v5);
        if (__OFADD__(v12, 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v12 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v13 = *(v5 + 8 * v12 + 32);

        if (__OFADD__(v12, 1))
        {
LABEL_25:
          __break(1u);
          break;
        }
      }

      v14 = (*(*v13 + 128))();

      ++v12;
      if ((v14 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    result = outlined consume of NavigationPath.Representation(v5, v6, v7, 0);
    v16 = MEMORY[0x1E69E7CC0];
    v6 = MEMORY[0x1E69E7CC0];
LABEL_28:
    *v4 = v5;
    *(v4 + 8) = v6;
    *(v4 + 16) = v16;
  }

  return result;
}

uint64_t NavigationPath.init<A>(_:)@<X0>(uint64_t a1@<X0>, unsigned int (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = partial apply for implicit closure #1 in NavigationPath.init<A>(_:);
  v15[6] = v10;
  v11 = type metadata accessor for NavigationPath_ItemBoxBase();
  v13 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A.Sequence.Element) -> (@owned ItemBox<A.Sequence.Element>), v15, a2, v11, MEMORY[0x1E69E73E0], a3, MEMORY[0x1E69E7410], v12);

  result = (*(*(a2 - 1) + 8))(a1, a2);
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = v13;
  *(a5 + 24) = 0;
  *(a5 + 32) = MEMORY[0x1E69E7CC0];
  *(a5 + 40) = 0;
  return result;
}

_BYTE *implicit closure #1 in NavigationPath.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v12 - v8;
  type metadata accessor for ItemBox(0, AssociatedTypeWitness, a4, v10);
  (*(v7 + 16))(v9, a1, AssociatedTypeWitness);
  return ItemBox.__allocating_init(_:)(v9);
}

_BYTE *ItemBox.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 192) - 8) + 32))(&v2[*(*v2 + 208)], a1);
  v2[16] = 0;
  return v2;
}

uint64_t NavigationPath.init<A>(_:)@<X0>(uint64_t a1@<X0>, unsigned int (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = a5;
  v19[6] = a6;
  v19[7] = partial apply for implicit closure #1 in NavigationPath.init<A>(_:);
  v19[8] = v14;
  v15 = type metadata accessor for NavigationPath_ItemBoxBase();
  v17 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A.Sequence.Element) -> (@owned CodableItemBox<A.Sequence.Element>), v19, a2, v15, MEMORY[0x1E69E73E0], a3, MEMORY[0x1E69E7410], v16);

  result = (*(*(a2 - 1) + 8))(a1, a2);
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  *a7 = v17;
  *(a7 + 24) = 0;
  *(a7 + 32) = MEMORY[0x1E69E7CC0];
  *(a7 + 40) = 0;
  return result;
}

_BYTE *implicit closure #1 in NavigationPath.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = v16 - v12;
  v16[0] = v14;
  v16[1] = a4;
  v16[2] = a5;
  v16[3] = a6;
  type metadata accessor for CodableItemBox(0, v16);
  (*(v11 + 16))(v13, a1, AssociatedTypeWitness);
  return CodableItemBox.__allocating_init(_:)(v13);
}

_BYTE *CodableItemBox.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 192) - 8) + 32))(&v2[*(*v2 + 224)], a1);
  v2[16] = 0;
  return v2;
}

unint64_t NavigationPath.init(_:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  result = a1[2];
  if (v3 >> 62)
  {
    v6 = result;
    v7 = a2;
    v8 = __CocoaSet.count.getter();
    a2 = v7;
    v9 = v8;
    result = v6;
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_6;
  }

  if (!*(v2 + 16))
  {
    if (result >> 62)
    {
      v10 = result;
      v11 = a2;
      v12 = __CocoaSet.count.getter();
      a2 = v11;
      v13 = v12;
      result = v10;
      if (v13)
      {
        goto LABEL_6;
      }
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    v14 = a2;

    a2 = v14;
    v2 = 0;
    result = 0;
    v5 = 0;
    v3 = MEMORY[0x1E69E7CC0];
    goto LABEL_7;
  }

LABEL_6:
  v5 = 1;
LABEL_7:
  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = result;
  *(a2 + 24) = v5;
  *(a2 + 32) = MEMORY[0x1E69E7CC0];
  *(a2 + 40) = 0;
  return result;
}

uint64_t NavigationPath.Representation.removeLast(_:)(Swift::Int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v4;
  v8 = *v4 >> 62;
  if ((v4[3] & 1) == 0)
  {
    v34 = *v4;
    if (!v8)
    {
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) < a1)
      {
        goto LABEL_26;
      }

      goto LABEL_12;
    }

LABEL_25:
    if (__CocoaSet.count.getter() < a1)
    {
LABEL_26:
      _StringGuts.grow(_:)(53);
      MEMORY[0x18D00C9B0](0xD000000000000015, 0x800000018CD45D60);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v26);

      MEMORY[0x18D00C9B0](0xD000000000000016, 0x800000018CD45D80);
      if (!v8)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }

LABEL_12:
    result = specialized RangeReplaceableCollection<>.removeLast(_:)(a1, a2, a3, a4);
    v5[1] = 0;
    v5[2] = 0;
    *v5 = v34;
    *(v5 + 24) = 0;
    return result;
  }

  v10 = v4[1];
  v9 = v4[2];
  v35 = *v4;
  if (v8)
  {
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = *(v10 + 16);
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_25;
  }

  v14 = v9 >> 62;
  if (!(v9 >> 62))
  {
    v15 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v13 + v15;
    if (!__OFADD__(v13, v15))
    {
      goto LABEL_7;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    _StringGuts.grow(_:)(53);
    MEMORY[0x18D00C9B0](0xD000000000000015, 0x800000018CD45D60);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v28);

    MEMORY[0x18D00C9B0](0xD000000000000016, 0x800000018CD45D80);
    if (!v8)
    {
      v29 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_36:
      v30 = *(v10 + 16);
      v31 = v29 + v30;
      if (!__OFADD__(v29, v30))
      {
        if (v14)
        {
          v32 = __CocoaSet.count.getter();
        }

        else
        {
          v32 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!__OFADD__(v31, v32))
        {
          while (1)
          {
LABEL_45:
            v33 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v33);

            MEMORY[0x18D00C9B0](0x736D65746920, 0xE600000000000000);
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }
        }

        __break(1u);
      }

      __break(1u);
LABEL_44:
      __CocoaSet.count.getter();
      goto LABEL_45;
    }

LABEL_35:
    v29 = __CocoaSet.count.getter();
    goto LABEL_36;
  }

  v27 = __CocoaSet.count.getter();
  v16 = v13 + v27;
  if (__OFADD__(v13, v27))
  {
    goto LABEL_30;
  }

LABEL_7:
  if (v16 < a1)
  {
    goto LABEL_31;
  }

  if (v8)
  {
    v17 = __CocoaSet.count.getter();
  }

  else
  {
    v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = *(v10 + 16);
  v20 = v17 + v19;
  if (__OFADD__(v17, v19))
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v14)
  {
    v21 = __CocoaSet.count.getter();
  }

  else
  {
    v21 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    goto LABEL_34;
  }

  if (v22 == a1)
  {
    v24 = 0;
    v25 = 0;
    v23 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    NavigationPath.CodableRepresentation.removeLast(_:)(a1);

    v23 = v35;
    v24 = v10;
    v25 = v9;
  }

  *v5 = v23;
  v5[1] = v24;
  v5[2] = v25;
  *(v5 + 24) = v22 != a1;
}

Swift::Void __swiftcall NavigationPath.CodableRepresentation.removeLast(_:)(Swift::Int a1)
{
  v3 = a1;
  v4 = *(v2[1] + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  if (v4 >= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = *(v2[1] + 16);
  }

  if (a1)
  {
    if (a1 < 0)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return;
    }

    specialized Array.replaceSubrange<A>(_:with:)(0, v5, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
  }

  v6 = __OFSUB__(v3, v5);
  v3 -= v5;
  if (v6)
  {
    __break(1u);
  }

  else
  {
LABEL_9:
    if (v3 < 1)
    {
      return;
    }

    if (!(*v2 >> 62))
    {
      v7 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = -v7;
      if (!__OFSUB__(0, v7))
      {
        goto LABEL_12;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }
  }

  v7 = __CocoaSet.count.getter();
  v8 = -v7;
  if (__OFSUB__(0, v7))
  {
    goto LABEL_24;
  }

LABEL_12:
  v9 = -v3;
  if (v8 <= 0 && v8 > v9)
  {
    goto LABEL_28;
  }

  v11 = v7 - v3;
  if (__OFADD__(v7, v9))
  {
    goto LABEL_25;
  }

  if (v7 < v11)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  specialized Array.replaceSubrange<A>(_:with:)(v11, v7, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), v1, type metadata accessor for NavigationPath_ItemBoxBase);
}

uint64_t NavigationPath.append<A>(box:)(uint64_t a1)
{
  if (*(v1 + 24))
  {

    MEMORY[0x18D00CC30](v2);
    if (*((*(v1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    v4 = *(v1 + 8);
    v5 = *(v1 + 16);
    v9 = *v1;
    outlined copy of NavigationPath.Representation(v9, v4, v5, 0);

    MEMORY[0x18D00CC30](v6);
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v7[1] = 0;
    v7[2] = 0;
    v7[0] = v9;
    v8 = 0;
    return NavigationPath.items.setter(v7);
  }
}

void NavigationPath.CodableRepresentation.updatePossibilities(from:to:into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v8 = *v3;
  v9 = v3[1];
  v10 = v3[2];
  if (v8 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v12 = *(v9 + 16);
    v13 = i + v12;
    if (__OFADD__(i, v12))
    {
      break;
    }

    if (v10 >> 62)
    {
      goto LABEL_26;
    }

    v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = __OFADD__(v13, v14);
    v9 = v13 + v14;
    if (v15)
    {
      goto LABEL_28;
    }

LABEL_6:
    if (v9 < a1)
    {
      goto LABEL_29;
    }

    if (v9 == a1)
    {
      return;
    }

    while (a1 < v9)
    {
      v16 = NavigationPath.CodableRepresentation.item(at:given:)(a1, *(a3 + 32));
      if (v5)
      {
        v10 = v5;
        v5 = 0;
        v17 = v10;
        v18 = v10;
        type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for Error, MEMORY[0x1E69E7280], 1);
        v19 = swift_dynamicCast();

        if (v19)
        {
          swift_willThrow();
          return;
        }

        v20 = v10;
        if (swift_dynamicCast())
        {
          if (v25 >= 2)
          {

            lazy protocol witness table accessor for type NavigationPath.Error and conformance NavigationPath.Error();
            swift_allocError();
            *v21 = v24;
            v21[1] = v25;
            swift_willThrow();

            return;
          }

          outlined consume of NavigationPath.Error(v24, v25);
        }
      }

      else
      {
        v10 = v16;
        if (a1 < a2)
        {
          (*(*v16 + 168))(a3, a1);
        }
      }

      if (v9 == ++a1)
      {
        return;
      }
    }

    __break(1u);
LABEL_24:
    ;
  }

  __break(1u);
LABEL_26:
  v22 = __CocoaSet.count.getter();
  v15 = __OFADD__(v13, v22);
  v9 = v13 + v22;
  if (!v15)
  {
    goto LABEL_6;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

BOOL NavigationPath.CodableRepresentation.contains<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v18 = v3[2];
  v8 = *v3 & 0xFFFFFFFFFFFFFF8;
  if (*v3 >> 62)
  {
LABEL_29:
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v9 != i; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x18D00E9C0](i, v7);
      if (__OFADD__(i, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (i >= *(v8 + 16))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v11 = *(v7 + 8 * i + 32);

      if (__OFADD__(i, 1))
      {
        goto LABEL_12;
      }
    }

    v12 = (*(*v11 + 152))(a1, a2, a3);

    if (v12)
    {
      return 1;
    }
  }

  v8 = v18 & 0xFFFFFFFFFFFFFF8;
  if (v18 >> 62)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  do
  {
    v14 = v7 != v13;
    if (v7 == v13)
    {
      break;
    }

    if ((v18 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x18D00E9C0](v13, v18);
      if (__OFADD__(v13, 1))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v13 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v15 = *(v18 + 8 * v13 + 32);

      if (__OFADD__(v13, 1))
      {
LABEL_24:
        __break(1u);
        return 1;
      }
    }

    v16 = (*(*v15 + 152))(a1, a2, a3);

    ++v13;
  }

  while ((v16 & 1) == 0);
  return v14;
}

uint64_t NavigationPath.CodableRepresentation.item(at:given:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v63 = a2;
  v65 = type metadata accessor for String.Encoding();
  v7 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (v9 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result > a1)
    {
      goto LABEL_3;
    }

    result = __CocoaSet.count.getter();
  }

  else
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result > a1)
    {
LABEL_3:
      if ((v9 & 0xC000000000000001) == 0)
      {
        if ((a1 & 0x8000000000000000) == 0)
        {
          if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
          {
            v11 = v9 + 8 * a1;
LABEL_33:
            v44 = *(v11 + 32);

            return v44;
          }

          goto LABEL_48;
        }

LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

LABEL_44:
      result = a1;
      v49 = v9;
      return MEMORY[0x18D00E9C0](result, v49);
    }
  }

  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_47;
  }

  v12 = v5[1];
  v13 = v12[2];
  result = v9 - v13;
  if (v9 < v13)
  {
    v58 = v5 + 1;
    v62 = (v7 + 8);
    v59 = xmmword_18CD63400;
    v60 = a1;
    v61 = v5;
    while (1)
    {
      if (!v12[2])
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v14 = v12[2];
        if (!v14)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
        v14 = v12[2];
        if (!v14)
        {
          goto LABEL_42;
        }
      }

      v15 = v4;
      v68 = v12;
      v69 = v9;
      v16 = v14 - 1;
      v17 = &v12[4 * v14];
      v18 = v17[1];
      v67 = *v17;
      v12[2] = v16;
      v19 = v64;
      static String.Encoding.utf8.getter();
      v20 = String.data(using:allowLossyConversion:)();
      v22 = v21;

      (*v62)(v19, v65);
      if (v22 >> 60 == 15)
      {

        v53 = v68;
        *v58 = v68;
        lazy protocol witness table accessor for type NavigationPath.Error and conformance NavigationPath.Error();
        swift_allocError();
        *v54 = xmmword_18CD633F0;
        swift_willThrow();
        goto LABEL_37;
      }

      v66 = v15;
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      v23 = JSONDecoder.init()();
      type metadata accessor for _ContiguousArrayStorage<(CodingUserInfoKey, Sendable)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(CodingUserInfoKey, Sendable)>, type metadata accessor for (CodingUserInfoKey, Sendable), MEMORY[0x1E69E6F90]);
      type metadata accessor for (CodingUserInfoKey, Sendable)(0);
      v25 = v24 - 8;
      v26 = (*(*(v24 - 8) + 80) + 32) & ~*(*(v24 - 8) + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = v59;
      v28 = *(v25 + 56);
      if (one-time initialization token for navigationPathTypesByTag != -1)
      {
        v48 = v27;
        swift_once();
        v27 = v48;
      }

      v29 = v27 + v26;
      v30 = (v27 + v26 + v28);
      v31 = v27;
      v32 = type metadata accessor for CodingUserInfoKey();
      v33 = __swift_project_value_buffer(v32, static CodingUserInfoKey.navigationPathTypesByTag);
      (*(*(v32 - 8) + 16))(v29, v33, v32);
      type metadata accessor for [String : Decodable & Encodable.Type](0);
      v30[3] = v34;
      v35 = v63;
      *v30 = v63;
      v36 = v35;

      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_s8Sendable_pTt0g5Tf4g_n(v31);
      swift_setDeallocating();
      outlined destroy of (CodingUserInfoKey, Sendable)(v29, type metadata accessor for (CodingUserInfoKey, Sendable));
      swift_deallocClassInstance();
      dispatch thunk of JSONDecoder.userInfo.setter();
      v37 = v20;
      v38 = v67;
      if (!*(v36 + 16) || (v39 = specialized __RawDictionaryStorage.find<A>(_:)(v67, v18), (v40 & 1) == 0))
      {
        v50 = v68;
        *v58 = v68;
        lazy protocol witness table accessor for type NavigationPath.Error and conformance NavigationPath.Error();
        swift_allocError();
        *v51 = v38;
        v51[1] = v18;
        swift_willThrow();

        v52 = v22;
        v53 = v50;
        outlined consume of Data?(v37, v52);
        a1 = v60;
        v5 = v61;
        goto LABEL_37;
      }

      v41 = v39;

      v42 = v66;
      v43 = decode #1 <A>(_:) in NavigationPath.CodableRepresentation.item(at:given:)(*(*(v36 + 56) + 24 * v41), v23, v37, v22, *(*(v36 + 56) + 24 * v41), *(*(v36 + 56) + 24 * v41 + 8), *(*(v36 + 56) + 24 * v41 + 16));
      v4 = v42;
      a1 = v60;
      v5 = v61;
      if (v42)
      {
        break;
      }

      v44 = v43;

      MEMORY[0x18D00CC30](v45);
      if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      outlined consume of Data?(v37, v22);
      v46 = v69;
      if (!v69)
      {
        *v58 = v68;
        return v44;
      }

      v47 = __OFSUB__(v46, 1);
      v9 = v46 - 1;
      v12 = v68;
      if (v47)
      {
        goto LABEL_43;
      }
    }

    outlined consume of Data?(v37, v22);
    v53 = v68;
    *v58 = v68;
LABEL_37:
    v70 = 0;
    v71 = 0xE000000000000000;
    _StringGuts.grow(_:)(141);
    MEMORY[0x18D00C9B0](0xD000000000000032, 0x800000018CD45C10);
    v72 = a1;
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v55);

    MEMORY[0x18D00C9B0](0xD000000000000059, 0x800000018CD45C50);
    v44 = v71;
    MEMORY[0x18D009810](v70, v71);

    v56 = v53[2];
    result = v69;
    if (v56 < v69)
    {
      goto LABEL_51;
    }

    specialized Array.replaceSubrange<A>(_:with:)(v69, v56, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));

    v5[2] = MEMORY[0x1E69E7CC0];
    swift_willThrow();
    return v44;
  }

  v49 = v5[2];
  if ((v49 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x18D00E9C0](result, v49);
  }

  if (result < 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (result < *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = v49 + 8 * result;
    goto LABEL_33;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t NavigationPath.CodableRepresentation.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v2)
  {
    v21 = a2;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v5 = dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter();
    v6 = MEMORY[0x1E69E7CC0];
    if ((v5 & 1) == 0)
    {
      do
      {
        __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
        v9 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
        v11 = v10;
        __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
        v12 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
        v14 = v13;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
        }

        v16 = v6[2];
        v15 = v6[3];
        if (v16 >= v15 >> 1)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v6);
        }

        v6[2] = v16 + 1;
        v17 = &v6[4 * v16];
        v17[4] = v9;
        v17[5] = v11;
        v17[6] = v12;
        v17[7] = v14;
        __swift_project_boxed_opaque_existential_1(v19, v20);
      }

      while ((dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter() & 1) == 0);
    }

    __swift_destroy_boxed_opaque_existential_1(v19);
    v7 = v21;
    v8 = MEMORY[0x1E69E7CC0];
    *v21 = MEMORY[0x1E69E7CC0];
    v7[1] = v6;
    v7[2] = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t NavigationPath.CodableRepresentation.encode(to:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v22 = v3;
  for (i = v4; v7; i = v4)
  {
    v26 = v5 & 0xC000000000000001;
    v4 = v5 & 0xFFFFFFFFFFFFFF8;
    v3 = v5 + 32;
    while (1)
    {
      v8 = __OFSUB__(v7--, 1);
      if (v8)
      {
        break;
      }

      if (v26)
      {
        v10 = MEMORY[0x18D00E9C0](v7, v5);
        v9 = v10;
      }

      else
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_16;
        }

        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(v3 + 8 * v7);
      }

      (*(*v9 + 144))(v10);
      __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      if (v2)
      {
LABEL_13:

        return __swift_destroy_boxed_opaque_existential_1(v24);
      }

      (*(*v9 + 136))(v11);
      v6 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();

      if (!v7)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v7 = __CocoaSet.count.getter();
    v22 = v3;
  }

LABEL_19:
  v13 = i;
  v26 = *(i + 16);
  if (v26)
  {
    v14 = 0;
    v15 = i + 56;
    while (1)
    {
      if (v14 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_39;
      }

      __swift_mutable_project_boxed_opaque_existential_1(v24, v25);

      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();

      if (v2)
      {
        break;
      }

      v6 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();

      ++v14;
      v15 += 32;
      v13 = i;
      if (v26 == v14)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_24:
    v6 = v22;
    if (v22 >> 62)
    {
      goto LABEL_42;
    }

    for (j = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = __CocoaSet.count.getter())
    {
      v26 = v6 & 0xC000000000000001;
      v17 = v6 & 0xFFFFFFFFFFFFFF8;
      v18 = v6 + 32;
      while (1)
      {
        v8 = __OFSUB__(j--, 1);
        if (v8)
        {
          break;
        }

        if (v26)
        {
          v20 = MEMORY[0x18D00E9C0](j, v22);
          v19 = v20;
        }

        else
        {
          if ((j & 0x8000000000000000) != 0)
          {
            goto LABEL_40;
          }

          if (j >= *(v17 + 16))
          {
            goto LABEL_41;
          }

          v19 = *(v18 + 8 * j);
        }

        (*(*v19 + 144))(v20);
        __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
        dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
        if (v2)
        {
          goto LABEL_13;
        }

        (*(*v19 + 136))(v21);
        v6 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
        dispatch thunk of UnkeyedEncodingContainer.encode(_:)();

        if (!j)
        {
          return __swift_destroy_boxed_opaque_existential_1(v24);
        }
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      ;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

_BYTE *decode #1 <A>(_:) in NavigationPath.CodableRepresentation.item(at:given:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v19 - v16;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (!v7)
  {
    type metadata accessor for DecodedItemBox(0, a5, a6, a7);
    (*(v12 + 16))(v14, v17, a5);
    a2 = DecodedItemBox.__allocating_init(_:)(v14);
    (*(v12 + 8))(v17, a5);
  }

  return a2;
}

_BYTE *DecodedItemBox.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 192) - 8) + 32))(&v2[*(*v2 + 216)], a1);
  v2[16] = 0;
  return v2;
}

uint64_t NavigationPath.mutateWithCodableCollectionProxy(transform:)(void (*a1)(uint64_t *))
{
  if (*(v1 + 24))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v2 = *v1;
    v10 = *(v1 + 16);
    v11 = *(v1 + 8);
    if (*v1 >> 62)
    {
LABEL_16:
      v3 = __CocoaSet.count.getter();
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v3 != i; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x18D00E9C0](i, v2);
        if (__OFADD__(i, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_16;
        }

        v5 = *(v2 + 8 * i + 32);

        if (__OFADD__(i, 1))
        {
          goto LABEL_13;
        }
      }

      v6 = *(*v5 + 128);

      v8 = v6(v7);

      if ((v8 & 1) == 0)
      {
        outlined consume of NavigationPath.Representation(v2, v11, v10, 0);
        lazy protocol witness table accessor for type NavigationPath.CollectionProxyError and conformance NavigationPath.CollectionProxyError();
        swift_allocError();
        return swift_willThrow();
      }
    }

    v17 = v2;
    v14 = 0;
    v15 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    v16 = 0;
    NavigationPath.items.setter(&v13);
    a1(&v17);
    v14 = 0;
    v15 = 0;
    v13 = v17;
    v16 = 0;
    return NavigationPath.items.setter(&v13);
  }

  return result;
}

uint64_t NavigationPath.mutateWithCollectionProxy(transform:)(void (*a1)(uint64_t *))
{
  if (*(v1 + 24))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v8 = *v1;
    v5 = 0;
    v6 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    v7 = 0;

    NavigationPath.items.setter(&v4);
    a1(&v8);
    v5 = 0;
    v6 = 0;
    v4 = v8;
    v7 = 0;
    return NavigationPath.items.setter(&v4);
  }

  return result;
}

Swift::Int NavigationPath.CollectionProxyError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](0);
  return Hasher._finalize()();
}

void NavigationPath.CodableCollectionProxy.subscript.getter(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v5 = *(v4 + 8 * a1 + 32);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_10;
  }

  v6 = MEMORY[0x18D00E9C0](a1);
  v5 = v6;
LABEL_5:
  (*(*v5 + 120))(&v7, v6);

  if (v8)
  {
    outlined init with take of Decodable & Encodable & Hashable(&v7, a2);
    return;
  }

LABEL_10:
  __break(1u);
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, int64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, int64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = *v5;
  v8 = *(*v5 + 2);
  if (v8 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = result;
  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = __OFSUB__(1, v10);
  v12 = 1 - v10;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8 + v12;
  if (__OFADD__(v8, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v7 + 3) >> 1)
  {
    if (v8 <= v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = v8;
    }

    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v18, 1, v7);
    *v5 = v7;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v9, a2, 1, a3, a4, a5 & 1);
  *v5 = v7;
  return result;
}

void protocol witness for Collection.subscript.read in conformance NavigationPath.CodableCollectionProxy(uint64_t *a1, unint64_t *a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x70uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *a2;
  v8 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v7 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v8 + 8 * v7 + 32);

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_13;
  }

  v10 = MEMORY[0x18D00E9C0](v7);
  v9 = v10;
LABEL_8:
  (*(*v9 + 120))(v10);

  if (*(v6 + 80))
  {
    outlined init with take of Decodable & Encodable & Hashable((v6 + 56), v6);
    return;
  }

LABEL_13:
  __break(1u);
}

void protocol witness for Collection.subscript.read in conformance NavigationPath.CodableCollectionProxy(void **a1)
{
  v1 = *a1;
  __swift_destroy_boxed_opaque_existential_1(*a1);

  free(v1);
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance NavigationPath.CodableCollectionProxy@<X0>(uint64_t a4@<X8>)
{
  result = specialized Collection.index(_:offsetBy:limitedBy:)();
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

__int128 *protocol witness for RangeReplaceableCollection.init(repeating:count:) in conformance NavigationPath.CodableCollectionProxy@<X0>(__int128 *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = MEMORY[0x1E69E7CC0];
  if (!a2)
  {
    result = __swift_destroy_boxed_opaque_existential_1(result);
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    *&v5[0] = a2;
    outlined init with take of Decodable & Encodable & Hashable(result, v5 + 8);
    result = specialized RangeReplaceableCollection.append<A>(contentsOf:)(v5);
    v4 = v6;
LABEL_5:
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.append(_:) in conformance NavigationPath.CodableCollectionProxy(__int128 *a1)
{
  if (*v1 >> 62)
  {
    v4 = a1;
    v2 = __CocoaSet.count.getter();
    a1 = v4;
  }

  else
  {
    v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  outlined init with take of Decodable & Encodable & Hashable(a1, v5);
  specialized NavigationPath.CodableCollectionProxy.replaceSubrange<A>(_:with:)(v2, v2, v5);
  return outlined destroy of CollectionOfOne<Decodable & Encodable & Hashable>(v5);
}

uint64_t protocol witness for RangeReplaceableCollection.insert(_:at:) in conformance NavigationPath.CodableCollectionProxy(__int128 *a1, uint64_t *a2)
{
  v2 = *a2;
  outlined init with take of Decodable & Encodable & Hashable(a1, v4);
  specialized NavigationPath.CodableCollectionProxy.replaceSubrange<A>(_:with:)(v2, v2, v4);
  return outlined destroy of CollectionOfOne<Decodable & Encodable & Hashable>(v4);
}

void specialized RangeReplaceableCollection.remove(at:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) == 0)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v6 = *(v5 + 8 * a1 + 32);

      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_13:
  v7 = MEMORY[0x18D00E9C0](a1, v5);
  v6 = v7;
LABEL_7:
  (*(*v6 + 120))(&v9, v7);

  if (v10)
  {
    outlined init with take of Decodable & Encodable & Hashable(&v9, a2);
    v8 = a1 + 1;
    if (!__OFADD__(a1, 1))
    {
      if (v8 >= a1)
      {
        specialized Array.replaceSubrange<A>(_:with:)(a1, v8, MEMORY[0x1E69E7CC0], specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
}

void specialized RangeReplaceableCollection.remove(at:)(uint64_t a1)
{
  v3 = *v1;
  if (!(*v1 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_12:
    v5 = MEMORY[0x18D00E9C0](a1, v3);
    v4 = v5;
    goto LABEL_7;
  }

  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = *(v3 + 8 * a1 + 32);

LABEL_7:
  (*(*v4 + 112))(v5);

  v6 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v6 >= a1)
  {
    specialized Array.replaceSubrange<A>(_:with:)(a1, v6, MEMORY[0x1E69E7CC0], specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
    return;
  }

LABEL_16:
  __break(1u);
}

double protocol witness for RangeReplaceableCollection._customRemoveLast() in conformance NavigationPath.CodableCollectionProxy@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

void protocol witness for RangeReplaceableCollection.removeFirst() in conformance NavigationPath.CodableCollectionProxy(uint64_t a1@<X8>)
{
  if (!(*v1 >> 62))
  {
    if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_6;
  }

LABEL_3:
  specialized Collection.first.getter(*v1, &v3);
  if (v4)
  {
    outlined init with take of Decodable & Encodable & Hashable(&v3, a1);
    specialized RangeReplaceableCollection.removeFirst(_:)();
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t specialized RangeReplaceableCollection.removeAll(keepingCapacity:)(char a1)
{
  v3 = *v1;
  if (a1)
  {
    if (v3 >> 62)
    {
      v6 = __CocoaSet.count.getter();
      if (v6 < 0)
      {
        __break(1u);
      }

      v4 = v6;
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return specialized Array.replaceSubrange<A>(_:with:)(0, v4, MEMORY[0x1E69E7CC0], specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
  }

  else
  {

    *v1 = MEMORY[0x1E69E7CC0];
  }

  return result;
}

char *protocol witness for Sequence._copyToContiguousArray() in conformance NavigationPath.CodableCollectionProxy()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t NavigationPath.CodableCollectionProxy.endIndex.getter()
{
  if (*v0 >> 62)
  {
    return __CocoaSet.count.getter();
  }

  else
  {
    return *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

Swift::Int __swiftcall NavigationPath.CollectionProxy.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

void NavigationPath.CollectionProxy.subscript.getter(unint64_t a1)
{
  v2 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x18D00E9C0](a1);
    v3 = v4;
    goto LABEL_5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v3 = *(v2 + 8 * a1 + 32);

LABEL_5:
  (*(*v3 + 112))(v4);
}

uint64_t NavigationPath.CollectionProxy.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a2;
  v18 = a1;
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v18 - v13;
  v24 = MEMORY[0x1E69E7CC0];
  (*(v7 + 16))(v9, a3, a4, v12);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (!v23)
    {
      break;
    }

    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v22, v20);
    v15 = v21;
    v16 = __swift_project_boxed_opaque_existential_1(v20, v21);
    specialized append #1 <A><A1>(_:) in NavigationPath.CollectionProxy.replaceSubrange<A>(_:with:)(v16, &v24, a4, v15);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  (*(v11 + 8))(v14, AssociatedTypeWitness);
  swift_beginAccess();
  specialized Array.replaceSubrange<A>(_:with:)(v18, v19, v24, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

uint64_t specialized append #1 <A><A1>(_:) in NavigationPath.CollectionProxy.replaceSubrange<A>(_:with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ItemBox(0, v11, v10, v11);
  (*(v7 + 16))(v9, a1, a4);
  ItemBox.__allocating_init(_:)(v9);
  v12 = swift_beginAccess();
  MEMORY[0x18D00CC30](v12);
  if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t NavigationPath.CodableCollectionProxy.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a2;
  v18 = a1;
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v18 - v13;
  v24 = MEMORY[0x1E69E7CC0];
  (*(v7 + 16))(v9, a3, a4, v12);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (!v23)
    {
      break;
    }

    outlined init with take of Decodable & Encodable & Hashable(&v22, v20);
    v15 = v21;
    v16 = __swift_project_boxed_opaque_existential_1(v20, v21);
    specialized append #1 <A><A1>(_:) in NavigationPath.CodableCollectionProxy.replaceSubrange<A>(_:with:)(v16, &v24, a4, v15);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  (*(v11 + 8))(v14, AssociatedTypeWitness);
  swift_beginAccess();
  specialized Array.replaceSubrange<A>(_:with:)(v18, v19, v24, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

uint64_t specialized append #1 <A><A1>(_:) in NavigationPath.CodableCollectionProxy.replaceSubrange<A>(_:with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = v10;
  v16[1] = v11;
  v16[2] = v12;
  v16[3] = v13;
  type metadata accessor for CodableItemBox(0, v16);
  (*(v7 + 16))(v9, a1, a4);
  CodableItemBox.__allocating_init(_:)(v9);
  v14 = swift_beginAccess();
  MEMORY[0x18D00CC30](v14);
  if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

unint64_t protocol witness for Collection.subscript.read in conformance NavigationPath.CollectionProxy(uint64_t *a1, unint64_t *a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  result = *a2;
  v7 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x18D00E9C0](result);
    v8 = v9;
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v7 + 8 * result + 32);

LABEL_8:
    (*(*v8 + 112))(v9);

    return protocol witness for Collection.subscript.read in conformance NavigationPath.CodableCollectionProxy;
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.getter in conformance NavigationPath.CodableCollectionProxy(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *v2;
  if (*v2 >> 62)
  {
    v2 = a2;
    v3 = v6;
    v6 = __CocoaSet.count.getter();
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_9;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 < 0)
  {
LABEL_11:
    __break(1u);
  }

  else
  {
    while (v7 < v4)
    {
LABEL_9:
      __break(1u);
LABEL_10:
      v7 = v6;
      a2 = v2;
      v6 = v3;
      if (v5 < 0)
      {
        goto LABEL_11;
      }
    }

    a2[1] = v4;
    a2[2] = v6;
    *a2 = v5;
  }
}

double protocol witness for Collection.indices.getter in conformance NavigationPath.CodableCollectionProxy@<D0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  a1[1] = 0;
  if (v2 >> 62)
  {
    v5 = a1;
    v6 = __CocoaSet.count.getter();
    a1 = v5;
    v3 = v6;
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a1[2] = v3;

  return result;
}

BOOL protocol witness for Collection.isEmpty.getter in conformance NavigationPath.CodableCollectionProxy()
{
  if (*v0 >> 62)
  {
    v1 = __CocoaSet.count.getter();
  }

  else
  {
    v1 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 == 0;
}

uint64_t *protocol witness for Collection.index(_:offsetBy:) in conformance NavigationPath.CodableCollectionProxy@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    if (!a2)
    {
LABEL_5:
      *a3 = v3;
      return result;
    }

    if ((v3 ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
      v3 += a2;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.distance(from:to:) in conformance NavigationPath.CodableCollectionProxy(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (result < 0 != v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = __OFSUB__(v2, v3);
  v6 = v2 - v3;
  if (!v6)
  {
    return 0;
  }

  if (v6 < 0 == v5)
  {
    goto LABEL_9;
  }

  if (v6 < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.replaceSubrange<A>(_:with:) in conformance NavigationPath.CodableCollectionProxy(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, void, uint64_t, uint64_t, uint64_t))
{
  (a7)(*a1, a1[1], a2, a3, a4, a6);
  v9 = *(*(a3 - 8) + 8);

  return v9(a2, a3);
}

__int128 *protocol witness for RangeReplaceableCollection.init(repeating:count:) in conformance NavigationPath.CollectionProxy@<X0>(__int128 *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = MEMORY[0x1E69E7CC0];
  if (!a2)
  {
    result = __swift_destroy_boxed_opaque_existential_1(result);
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    *&v5[0] = a2;
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(result, v5 + 8);
    result = specialized RangeReplaceableCollection.append<A>(contentsOf:)(v5);
    v4 = v6;
LABEL_5:
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.append(_:) in conformance NavigationPath.CollectionProxy(__int128 *a1)
{
  if (*v1 >> 62)
  {
    v4 = a1;
    v2 = __CocoaSet.count.getter();
    a1 = v4;
  }

  else
  {
    v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(a1, v5);
  specialized NavigationPath.CollectionProxy.replaceSubrange<A>(_:with:)(v2, v2, v5);
  return outlined destroy of (CodingUserInfoKey, Sendable)(v5, type metadata accessor for CollectionOfOne<Hashable>);
}

uint64_t protocol witness for RangeReplaceableCollection.insert(_:at:) in conformance NavigationPath.CollectionProxy(__int128 *a1, uint64_t *a2)
{
  v2 = *a2;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(a1, v4);
  specialized NavigationPath.CollectionProxy.replaceSubrange<A>(_:with:)(v2, v2, v4);
  return outlined destroy of (CodingUserInfoKey, Sendable)(v4, type metadata accessor for CollectionOfOne<Hashable>);
}

uint64_t protocol witness for Collection.count.getter in conformance NavigationPath.CodableCollectionProxy()
{
  if (!(*v0 >> 62))
  {
    return *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = __CocoaSet.count.getter();
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

char *protocol witness for Sequence._copyToContiguousArray() in conformance NavigationPath.CollectionProxy()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t ItemBox.value.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 208);
  v3 = *v1;
  v4 = *(*v1 + 192);
  a1[3] = v4;
  a1[4] = *(v3 + 200);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v6 = *(*(v4 - 8) + 16);

  return v6(boxed_opaque_existential_1, &v1[v2], v4);
}

uint64_t ItemBox.isCodable.getter()
{
  _StringGuts.grow(_:)(112);
  MEMORY[0x18D00C9B0](0x100000000000005BLL, 0x800000018CD45CE0);
  swift_getMetatypeMetadata();
  v0 = String.init<A>(describing:)();
  MEMORY[0x18D00C9B0](v0);

  MEMORY[0x18D00C9B0](0x1000000000000013, 0x800000018CD45D40);
  MEMORY[0x18D009810](0, 0xE000000000000000);

  return 0;
}

uint64_t ItemBox.contains<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[0] = a3;
  v24[1] = a1;
  v5 = *v3;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - v8;
  v10 = *(v5 + 192);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v24 - v12;
  v14 = *(a2 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v13, &v3[*(v5 + 208)], v10, v16);
  v20 = swift_dynamicCast();
  v21 = *(v14 + 56);
  if (v20)
  {
    v21(v9, 0, 1, a2);
    (*(v14 + 32))(v18, v9, a2);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v14 + 8))(v18, a2);
  }

  else
  {
    v21(v9, 1, 1, a2);
    (*(v7 + 8))(v9, v6);
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t ItemBox.equals(_:)(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - v4;
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    (*(v3 + 16))(v5, v6 + *(*v6 + 208), v2);

    v7 = dispatch thunk of static Equatable.== infix(_:_:)();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

double ItemBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 192) - 8) + 8))(v0 + *(*v0 + 208));

  swift_deallocClassInstance();
  return result;
}

uint64_t CodableItemBox.value.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 224);
  v3 = *v1;
  v4 = *(*v1 + 192);
  a1[3] = v4;
  a1[4] = *(v3 + 216);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v6 = *(*(v4 - 8) + 16);

  return v6(boxed_opaque_existential_1, &v1[v2], v4);
}

uint64_t CodableItemBox.codableValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 224);
  v6 = *(*v1 + 192);
  *(a1 + 24) = v6;
  *(a1 + 32) = *(v4 + 200);
  *(a1 + 48) = *(v3 + 216);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v8 = *(*(v6 - 8) + 16);

  return v8(boxed_opaque_existential_1, &v1[v5], v6);
}

char *CodableItemBox.jsonEncoding.getter()
{
  v1 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v0)
  {
    v6 = v4;
    v7 = v5;
    static String.Encoding.utf8.getter();
    v8 = String.init(data:encoding:)();
    if (v9)
    {
      v3 = v8;
      outlined consume of Data._Representation(v6, v7);

      return v3;
    }

    lazy protocol witness table accessor for type NavigationPath.Error and conformance NavigationPath.Error();
    swift_allocError();
    *v11 = 0;
    v11[1] = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v6, v7);
  }

  return v3;
}

uint64_t CodableItemBox.contains<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[0] = a3;
  v24[1] = a1;
  v5 = *v3;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - v8;
  v10 = *(v5 + 192);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v24 - v12;
  v14 = *(a2 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v13, &v3[*(v5 + 224)], v10, v16);
  v20 = swift_dynamicCast();
  v21 = *(v14 + 56);
  if (v20)
  {
    v21(v9, 0, 1, a2);
    (*(v14 + 32))(v18, v9, a2);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v14 + 8))(v18, a2);
  }

  else
  {
    v21(v9, 1, 1, a2);
    (*(v7 + 8))(v9, v6);
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t CodableItemBox.equals(_:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - v5;
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    (*(v4 + 16))(v6, v7 + *(*v7 + 224), v3);

    v8 = dispatch thunk of static Equatable.== infix(_:_:)();

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    type metadata accessor for DecodedItemBox(0, v3, *(v2 + 200), *(v2 + 208));
    if (swift_dynamicCastClass())
    {

      v8 = dispatch thunk of static Equatable.== infix(_:_:)();
    }

    else
    {
      v8 = 0;
    }
  }

  return v8 & 1;
}

double CodableItemBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 192) - 8) + 8))(v0 + *(*v0 + 224));

  swift_deallocClassInstance();
  return result;
}

double DecodedItemBox.value.getter(uint64_t a1)
{
  v3 = *(*v2 + 192);
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v9 - v7, v2 + *(v5 + 216), v3, v4);
  type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for Hashable, MEMORY[0x1E69E5EA0], 1);
  swift_dynamicCast();
  return result;
}

double DecodedItemBox.codableValue.getter(uint64_t a1)
{
  v3 = *(*v2 + 192);
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v9 - v7, v2 + *(v5 + 216), v3, v4);
  type metadata accessor for Decodable & Encodable & Hashable();
  swift_dynamicCast();
  return result;
}

char *DecodedItemBox.jsonEncoding.getter()
{
  v1 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v0)
  {
    v6 = v4;
    v7 = v5;
    static String.Encoding.utf8.getter();
    v8 = String.init(data:encoding:)();
    if (v9)
    {
      v3 = v8;
      outlined consume of Data._Representation(v6, v7);

      return v3;
    }

    lazy protocol witness table accessor for type NavigationPath.Error and conformance NavigationPath.Error();
    swift_allocError();
    *v11 = 0;
    v11[1] = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v6, v7);
  }

  return v3;
}

uint64_t DecodedItemBox.contains<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[0] = a3;
  v24[1] = a1;
  v5 = *v3;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - v8;
  v10 = *(v5 + 192);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v24 - v12;
  v14 = *(a2 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v13, &v3[*(v5 + 216)], v10, v16);
  v20 = swift_dynamicCast();
  v21 = *(v14 + 56);
  if (v20)
  {
    v21(v9, 0, 1, a2);
    (*(v14 + 32))(v18, v9, a2);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v14 + 8))(v18, a2);
  }

  else
  {
    v21(v9, 1, 1, a2);
    (*(v7 + 8))(v9, v6);
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t DecodedItemBox.equals(_:)(_BYTE *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 192);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15[-v6];
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = *(v3 + 216);
    v10 = (*(v5 + 16))(v7, v8 + *(*v8 + 216), v4);
    MEMORY[0x1EEE9AC00](v10);
    *&v15[-32] = v4;
    *&v15[-24] = v7;
    *&v15[-16] = 3;

    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v1[v9], partial apply for closure #1 in compareValues<A>(_:_:options:), &v15[-48], v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v11);

    v12 = v15[15];
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    if ((v1[16] & 1) == 0)
    {
      a1[16] = 1;
      v14 = (*(*a1 + 160))(v1);
      a1[16] = 0;
      return v14 & 1;
    }

    return 0;
  }

  return v12;
}

double DecodedItemBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 192) - 8) + 8))(v0 + *(*v0 + 216));

  swift_deallocClassInstance();
  return result;
}

uint64_t one-time initialization function for navigationPathTypesByTag()
{
  type metadata accessor for _ContiguousArrayStorage<(CodingUserInfoKey, Sendable)>(0, &lazy cache variable for type metadata for CodingUserInfoKey?, MEMORY[0x1E69E6D30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for CodingUserInfoKey();
  __swift_allocate_value_buffer(v3, static CodingUserInfoKey.navigationPathTypesByTag);
  v4 = __swift_project_value_buffer(v3, static CodingUserInfoKey.navigationPathTypesByTag);
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

uint64_t CodableItemBox.description.getter()
{
  _StringGuts.grow(_:)(18);
  MEMORY[0x18D00C9B0](0x49656C6261646F43, 0xEF28786F426D6574);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x18D00C9B0](41, 0xE100000000000000);
  return 0;
}

uint64_t ItemBox.description.getter()
{
  MEMORY[0x18D00C9B0](0x28786F426D657449, 0xE800000000000000);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x18D00C9B0](41, 0xE100000000000000);
  return 0;
}

uint64_t DecodedItemBox.description.getter()
{
  _StringGuts.grow(_:)(18);
  MEMORY[0x18D00C9B0](0x496465646F636544, 0xEF28786F426D6574);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x18D00C9B0](41, 0xE100000000000000);
  return 0;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = a3 - v7;
  if (__OFSUB__(a3, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = *v6;
  v10 = v9 + 32 + 24 * result;
  if (v8)
  {
    v11 = *(v9 + 16);
    v12 = __OFSUB__(v11, a2);
    v13 = v11 - a2;
    if (!v12)
    {
      result = v10 + 24 * a3;
      v14 = (v9 + 32 + 24 * a2);
      if (result != v14 || result >= v14 + 24 * v13)
      {
        v16 = a3;
        v17 = a6;
        v18 = a5;
        v19 = a4;
        result = memmove(result, v14, 24 * v13);
        a4 = v19;
        a5 = v18;
        a3 = v16;
        a6 = v17;
      }

      v20 = *(v9 + 16);
      v12 = __OFADD__(v20, v8);
      v21 = v20 + v8;
      if (!v12)
      {
        *(v9 + 16) = v21;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v10 = a4;
    *(v10 + 8) = a5;
    *(v10 + 16) = a6 & 1;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  if (a2 == a3)
  {
    if (result)
    {
      a6(a5);
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void *a6)
{
  if (a2 == a3)
  {
    if (result)
    {
      type metadata accessor for NSObject(0, a5, a6);
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq57SwiftUI26NavigationPath_ItemBoxBaseC_ytTg5073_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_7i4UI26kl1_mnO7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAIytIsgyrzo_Tf1ncn_nTm(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, __n128), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  AssociatedObject = specialized _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(a1, a4);
  v6 = AssociatedObject[2];

  return (a2)(AssociatedObject + 4, v6);
}

void *specialized _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a1 < 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v4, MEMORY[0x1E69E7CC0]);
  if (AssociatedObject)
  {
    v6 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v4);
    v7 = objc_getAssociatedObject(v4, MEMORY[0x1E69E7CC0]);
    if (v7)
    {
      v6 = v7;
      swift_retain_n();
    }

    else
    {
      v6 = a2(a1);

      objc_setAssociatedObject(v4, MEMORY[0x1E69E7CC0], v6, 1);
    }

    objc_sync_exit(v4);
  }

  return v6;
}

uint64_t *specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x18D00E9C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return destroy for ScrollOverlayLayout;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x18D00E9C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return destroy for NavigationDestinationModifier.SeededResolver;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x18D00E9C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x18D00E9C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return destroy for ForEach<>.PreferenceTransform.Item;
  }

  __break(1u);
  return result;
}

_BYTE *partial apply for implicit closure #1 in NavigationPath.init<A>(_:)(uint64_t a1)
{
  return implicit closure #1 in NavigationPath.init<A>(_:)(a1, v1[2], v1[3], v1[4]);
}

{
  return implicit closure #1 in NavigationPath.init<A>(_:)(a1, v1[2], v1[3], v1[4], v1[5], v1[6]);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A.Sequence.Element) -> (@owned ItemBox<A.Sequence.Element>)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 40))();
  *a1 = result;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A.Sequence.Element) -> (@owned CodableItemBox<A.Sequence.Element>)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 56))();
  *a1 = result;
  return result;
}

uint64_t specialized static NavigationPath.CodableRepresentation.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI26NavigationPath_ItemBoxBaseC_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 16);
  if (v6 != *(v4 + 16))
  {
    return 0;
  }

  if (v6)
  {
    v7 = (v2 + 56);
    v8 = (v4 + 56);
    do
    {
      v9 = *(v7 - 1);
      v10 = *v7;
      v11 = *(v8 - 1);
      v12 = *v8;
      v13 = *(v7 - 3) == *(v8 - 3) && *(v7 - 2) == *(v8 - 2);
      if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      v14 = v9 == v11 && v10 == v12;
      if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      v7 += 4;
      v8 += 4;
    }

    while (--v6);
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI26NavigationPath_ItemBoxBaseC_Tt1g5(v3, v5);
}

unint64_t lazy protocol witness table accessor for type NavigationPath.CollectionProxyError and conformance NavigationPath.CollectionProxyError()
{
  result = lazy protocol witness table cache variable for type NavigationPath.CollectionProxyError and conformance NavigationPath.CollectionProxyError;
  if (!lazy protocol witness table cache variable for type NavigationPath.CollectionProxyError and conformance NavigationPath.CollectionProxyError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationPath.CollectionProxyError, &type metadata for NavigationPath.CollectionProxyError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationPath.CollectionProxyError and conformance NavigationPath.CollectionProxyError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationPath.CollectionProxyError and conformance NavigationPath.CollectionProxyError;
  if (!lazy protocol witness table cache variable for type NavigationPath.CollectionProxyError and conformance NavigationPath.CollectionProxyError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationPath.CollectionProxyError, &type metadata for NavigationPath.CollectionProxyError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationPath.CollectionProxyError and conformance NavigationPath.CollectionProxyError);
  }

  return result;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3;
  v8 = a2;
  v12 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[a1 + 4];
  a5(a4);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    result = v6[2];
    v15 = result - v8;
    if (!__OFSUB__(result, v8))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = __CocoaSet.count.getter();
  v15 = result - v8;
  if (__OFSUB__(result, v8))
  {
    goto LABEL_23;
  }

LABEL_6:
  v16 = (v7 + 8 * v5);
  v17 = &v9[v8];
  if (v16 != v17 || v16 >= &v17[8 * v15])
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = v6[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_24;
  }

  v6[2] = result + v11;
LABEL_17:
  if (v5 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

void specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for NavigationPath_ItemBoxBase();
  v13 = swift_arrayDestroy();
  v15 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v15)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v16 = v5[2];
    v17 = v16 - v7;
    if (!__OFSUB__(v16, v7))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_25:
  v21 = __CocoaSet.count.getter();
  v17 = v21 - v7;
  if (__OFSUB__(v21, v7))
  {
    goto LABEL_27;
  }

LABEL_6:
  v18 = (v6 + 8 * v8);
  v19 = &v9[v7];
  if (v18 != v19 || v18 >= &v19[8 * v17])
  {
    memmove(v18, v19, 8 * v17);
  }

  if (v10)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = v5[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_28;
  }

  v5[2] = v13 + v11;
LABEL_17:
  if (v8 < 1)
  {
    return;
  }

  MEMORY[0x1EEE9AC00](v13);
  v14 = v22;
  v22[2] = v8;
  v22[3] = v6;
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_29:
    _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq57SwiftUI26NavigationPath_ItemBoxBaseC_ytTg5073_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_7i4UI26kl1_mnO7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAIytIsgyrzo_Tf1ncn_nTm(v4, partial apply for specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:), v14, specialized _copyCollectionToContiguousArray<A>(_:));
    return;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    swift_arrayInitWithCopy();
  }

  else
  {
    __break(1u);
  }
}

{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for NSObject & PlatformAccessibilityElementProtocol();
  v13 = swift_arrayDestroy();
  v15 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v15)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v16 = v5[2];
    v17 = v16 - v7;
    if (!__OFSUB__(v16, v7))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_25:
  v21 = __CocoaSet.count.getter();
  v17 = v21 - v7;
  if (__OFSUB__(v21, v7))
  {
    goto LABEL_27;
  }

LABEL_6:
  v18 = (v6 + 8 * v8);
  v19 = &v9[v7];
  if (v18 != v19 || v18 >= &v19[8 * v17])
  {
    memmove(v18, v19, 8 * v17);
  }

  if (v10)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = v5[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_28;
  }

  v5[2] = v13 + v11;
LABEL_17:
  if (v8 < 1)
  {
    return;
  }

  MEMORY[0x1EEE9AC00](v13);
  v14 = v22;
  v22[2] = v8;
  v22[3] = v6;
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_29:
    _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq57SwiftUI26NavigationPath_ItemBoxBaseC_ytTg5073_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_7i4UI26kl1_mnO7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAIytIsgyrzo_Tf1ncn_nTm(v4, partial apply for specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:), v14, specialized _copyCollectionToContiguousArray<A>(_:));
    return;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    swift_arrayInitWithCopy();
  }

  else
  {
    __break(1u);
  }
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

unint64_t lazy protocol witness table accessor for type NavigationPath.CodableCollectionProxy and conformance NavigationPath.CodableCollectionProxy()
{
  result = lazy protocol witness table cache variable for type NavigationPath.CodableCollectionProxy and conformance NavigationPath.CodableCollectionProxy;
  if (!lazy protocol witness table cache variable for type NavigationPath.CodableCollectionProxy and conformance NavigationPath.CodableCollectionProxy)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationPath.CodableCollectionProxy, &type metadata for NavigationPath.CodableCollectionProxy, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationPath.CodableCollectionProxy and conformance NavigationPath.CodableCollectionProxy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationPath.CodableCollectionProxy and conformance NavigationPath.CodableCollectionProxy;
  if (!lazy protocol witness table cache variable for type NavigationPath.CodableCollectionProxy and conformance NavigationPath.CodableCollectionProxy)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationPath.CodableCollectionProxy, &type metadata for NavigationPath.CodableCollectionProxy, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationPath.CodableCollectionProxy and conformance NavigationPath.CodableCollectionProxy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationPath.CodableCollectionProxy and conformance NavigationPath.CodableCollectionProxy;
  if (!lazy protocol witness table cache variable for type NavigationPath.CodableCollectionProxy and conformance NavigationPath.CodableCollectionProxy)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationPath.CodableCollectionProxy, &type metadata for NavigationPath.CodableCollectionProxy, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationPath.CodableCollectionProxy and conformance NavigationPath.CodableCollectionProxy);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DefaultIndices<NavigationPath.CodableCollectionProxy> and conformance DefaultIndices<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DefaultIndices<NavigationPath.CodableCollectionProxy>(255, a2, lazy protocol witness table accessor for type NavigationPath.CodableCollectionProxy and conformance NavigationPath.CodableCollectionProxy, &type metadata for NavigationPath.CodableCollectionProxy, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Slice<NavigationPath.CodableCollectionProxy> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<NavigationPath.CodableCollectionProxy> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<NavigationPath.CodableCollectionProxy> and conformance <> Slice<A>)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for DefaultIndices<NavigationPath.CodableCollectionProxy>(255, &lazy cache variable for type metadata for Slice<NavigationPath.CodableCollectionProxy>, lazy protocol witness table accessor for type NavigationPath.CodableCollectionProxy and conformance NavigationPath.CodableCollectionProxy, &type metadata for NavigationPath.CodableCollectionProxy, MEMORY[0x1E69E74D0]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type NavigationPath.CodableCollectionProxy and conformance NavigationPath.CodableCollectionProxy();
    result = swift_getWitnessTable(MEMORY[0x1E69E7500], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<NavigationPath.CodableCollectionProxy> and conformance <> Slice<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationPath.CollectionProxy and conformance NavigationPath.CollectionProxy()
{
  result = lazy protocol witness table cache variable for type NavigationPath.CollectionProxy and conformance NavigationPath.CollectionProxy;
  if (!lazy protocol witness table cache variable for type NavigationPath.CollectionProxy and conformance NavigationPath.CollectionProxy)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationPath.CollectionProxy, &type metadata for NavigationPath.CollectionProxy, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationPath.CollectionProxy and conformance NavigationPath.CollectionProxy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationPath.CollectionProxy and conformance NavigationPath.CollectionProxy;
  if (!lazy protocol witness table cache variable for type NavigationPath.CollectionProxy and conformance NavigationPath.CollectionProxy)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationPath.CollectionProxy, &type metadata for NavigationPath.CollectionProxy, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationPath.CollectionProxy and conformance NavigationPath.CollectionProxy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationPath.CollectionProxy and conformance NavigationPath.CollectionProxy;
  if (!lazy protocol witness table cache variable for type NavigationPath.CollectionProxy and conformance NavigationPath.CollectionProxy)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationPath.CollectionProxy, &type metadata for NavigationPath.CollectionProxy, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationPath.CollectionProxy and conformance NavigationPath.CollectionProxy);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultIndices<NavigationPath.CollectionProxy> and conformance DefaultIndices<A>()
{
  result = lazy protocol witness table cache variable for type DefaultIndices<NavigationPath.CollectionProxy> and conformance DefaultIndices<A>;
  if (!lazy protocol witness table cache variable for type DefaultIndices<NavigationPath.CollectionProxy> and conformance DefaultIndices<A>)
  {
    type metadata accessor for DefaultIndices<NavigationPath.CodableCollectionProxy>(255, &lazy cache variable for type metadata for DefaultIndices<NavigationPath.CollectionProxy>, lazy protocol witness table accessor for type NavigationPath.CollectionProxy and conformance NavigationPath.CollectionProxy, &type metadata for NavigationPath.CollectionProxy, MEMORY[0x1E69E5EA8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E5EC8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultIndices<NavigationPath.CollectionProxy> and conformance DefaultIndices<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Slice<NavigationPath.CollectionProxy> and conformance Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<NavigationPath.CollectionProxy> and conformance Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<NavigationPath.CollectionProxy> and conformance Slice<A>)
  {
    type metadata accessor for DefaultIndices<NavigationPath.CodableCollectionProxy>(255, &lazy cache variable for type metadata for Slice<NavigationPath.CollectionProxy>, lazy protocol witness table accessor for type NavigationPath.CollectionProxy and conformance NavigationPath.CollectionProxy, &type metadata for NavigationPath.CollectionProxy, MEMORY[0x1E69E74D0]);
    result = swift_getWitnessTable(MEMORY[0x1E69E74F8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<NavigationPath.CollectionProxy> and conformance Slice<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Slice<NavigationPath.CollectionProxy> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<NavigationPath.CollectionProxy> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<NavigationPath.CollectionProxy> and conformance <> Slice<A>)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for DefaultIndices<NavigationPath.CodableCollectionProxy>(255, &lazy cache variable for type metadata for Slice<NavigationPath.CollectionProxy>, lazy protocol witness table accessor for type NavigationPath.CollectionProxy and conformance NavigationPath.CollectionProxy, &type metadata for NavigationPath.CollectionProxy, MEMORY[0x1E69E74D0]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type NavigationPath.CollectionProxy and conformance NavigationPath.CollectionProxy();
    result = swift_getWitnessTable(MEMORY[0x1E69E7500], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<NavigationPath.CollectionProxy> and conformance <> Slice<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IndexingIterator<NavigationPath.CollectionProxy> and conformance IndexingIterator<A>()
{
  result = lazy protocol witness table cache variable for type IndexingIterator<NavigationPath.CollectionProxy> and conformance IndexingIterator<A>;
  if (!lazy protocol witness table cache variable for type IndexingIterator<NavigationPath.CollectionProxy> and conformance IndexingIterator<A>)
  {
    type metadata accessor for DefaultIndices<NavigationPath.CodableCollectionProxy>(255, &lazy cache variable for type metadata for IndexingIterator<NavigationPath.CollectionProxy>, lazy protocol witness table accessor for type NavigationPath.CollectionProxy and conformance NavigationPath.CollectionProxy, &type metadata for NavigationPath.CollectionProxy, MEMORY[0x1E69E6CF0]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6CF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IndexingIterator<NavigationPath.CollectionProxy> and conformance IndexingIterator<A>);
  }

  return result;
}

void type metadata accessor for DefaultIndices<NavigationPath.CodableCollectionProxy>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t assignWithCopy for NavigationPath(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of NavigationPath.Representation(*a2, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  outlined consume of NavigationPath.Representation(v8, v9, v10, v11);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for NavigationPath(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  outlined consume of NavigationPath.Representation(v6, v7, v8, v9);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

void *assignWithCopy for NavigationPath.CodableRepresentation(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

uint64_t assignWithTake for NavigationPath.CodableRepresentation(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t type metadata completion function for ItemBox(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t type metadata completion function for CodableItemBox(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t type metadata completion function for DecodedItemBox(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t initializeWithCopy for NavigationPath.Representation(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  outlined copy of NavigationPath.Representation(*a2, v4, v5, v6);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return a1;
}

uint64_t assignWithCopy for NavigationPath.Representation(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  outlined copy of NavigationPath.Representation(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  outlined consume of NavigationPath.Representation(v7, v8, v9, v10);
  return a1;
}

uint64_t assignWithTake for NavigationPath.Representation(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  outlined consume of NavigationPath.Representation(v5, v7, v6, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationPath.Representation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigationPath.Representation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t outlined consume of NavigationPath.Error(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationPath.Error and conformance NavigationPath.Error()
{
  result = lazy protocol witness table cache variable for type NavigationPath.Error and conformance NavigationPath.Error;
  if (!lazy protocol witness table cache variable for type NavigationPath.Error and conformance NavigationPath.Error)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationPath.Error, &type metadata for NavigationPath.Error, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationPath.Error and conformance NavigationPath.Error);
  }

  return result;
}

void type metadata accessor for (CodingUserInfoKey, Sendable)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (CodingUserInfoKey, Sendable))
  {
    type metadata accessor for CodingUserInfoKey();
    type metadata accessor for Sendable();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (CodingUserInfoKey, Sendable));
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<(CodingUserInfoKey, Sendable)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for (tag: String, item: String)()
{
  if (!lazy cache variable for type metadata for (tag: String, item: String))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (tag: String, item: String));
    }
  }
}

void specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void *a6, uint64_t (*a7)(uint64_t, uint64_t, __n128), uint64_t (*a8)(uint64_t))
{
  v15 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v11 = a4;
  v14 = a3;
  v13 = a2;
  v27 = a7;
  v28 = a8;
  v16 = *v9;
  v9 = (*v9 & 0xFFFFFFFFFFFFFF8);
  v8 = v9 + 4;
  v12 = &v9[a1 + 4];
  type metadata accessor for NSObject(0, a5, a6);
  v17 = swift_arrayDestroy();
  v19 = __OFSUB__(v14, v15);
  v15 = v14 - v15;
  if (v19)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v15)
  {
    goto LABEL_17;
  }

  v10 = v16 >> 62;
  if (!(v16 >> 62))
  {
    v20 = v9[2];
    v21 = v20 - v13;
    if (!__OFSUB__(v20, v13))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_25:
  v25 = __CocoaSet.count.getter();
  v21 = v25 - v13;
  if (__OFSUB__(v25, v13))
  {
    goto LABEL_27;
  }

LABEL_6:
  v22 = (v12 + 8 * v14);
  v23 = &v8[v13];
  if (v22 != v23 || v22 >= &v23[8 * v21])
  {
    memmove(v22, v23, 8 * v21);
  }

  if (v10)
  {
    v17 = __CocoaSet.count.getter();
  }

  else
  {
    v17 = v9[2];
  }

  if (__OFADD__(v17, v15))
  {
    goto LABEL_28;
  }

  v9[2] = v17 + v15;
LABEL_17:
  if (v14 < 1)
  {
    return;
  }

  MEMORY[0x1EEE9AC00](v17);
  v18 = v26;
  v26[2] = v14;
  v26[3] = v12;
  if (v11 < 0 || (v11 & 0x4000000000000000) != 0)
  {
LABEL_29:
    _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq57SwiftUI26NavigationPath_ItemBoxBaseC_ytTg5073_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_7i4UI26kl1_mnO7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAIytIsgyrzo_Tf1ncn_nTm(v11, v27, v18, v28);
    return;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) == v14)
  {
    swift_arrayInitWithCopy();
  }

  else
  {
    __break(1u);
  }
}

void specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
      {
        goto LABEL_4;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }
  }

  if (__CocoaSet.count.getter() < v6)
  {
    goto LABEL_14;
  }

LABEL_4:
  v10 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!(v4 >> 62))
  {
    v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = __OFSUB__(v11, v10);
    v13 = v11 - v10;
    if (!v12)
    {
      goto LABEL_7;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_16:
  v11 = __CocoaSet.count.getter();
  v12 = __OFSUB__(v11, v10);
  v13 = v11 - v10;
  if (v12)
  {
    goto LABEL_18;
  }

LABEL_7:
  if (v9)
  {
    v14 = __CocoaSet.count.getter();
  }

  else
  {
    v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v12)
  {
    specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v15, 1);
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, v6, v11, v4, &lazy cache variable for type metadata for UIBarButtonItemGroup, 0x1E69DC720, partial apply for specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:), specialized _copyCollectionToContiguousArray<A>(_:));
    return;
  }

LABEL_19:
  __break(1u);
}

{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
      {
        goto LABEL_4;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }
  }

  if (__CocoaSet.count.getter() < v6)
  {
    goto LABEL_14;
  }

LABEL_4:
  v10 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!(v4 >> 62))
  {
    v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = __OFSUB__(v11, v10);
    v13 = v11 - v10;
    if (!v12)
    {
      goto LABEL_7;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_16:
  v11 = __CocoaSet.count.getter();
  v12 = __OFSUB__(v11, v10);
  v13 = v11 - v10;
  if (v12)
  {
    goto LABEL_18;
  }

LABEL_7:
  if (v9)
  {
    v14 = __CocoaSet.count.getter();
  }

  else
  {
    v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v12)
  {
    specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v15, 1);
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, v6, v11, v4, &lazy cache variable for type metadata for UIMenuElement, 0x1E69DCC78, partial apply for specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:), specialized _copyCollectionToContiguousArray<A>(_:));
    return;
  }

LABEL_19:
  __break(1u);
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v6 + v8;
  if (__OFADD__(v6, v8))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v9 > *(v5 + 24) >> 1)
  {
    v5 = a3();
    *v3 = v5;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a2, 0);
  *v3 = v5;
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = a5;
    v8 = a4;
    v11 = a3;
    v9 = a2;
    v10 = a1;
    v12 = *v7;
    v13 = *v7 >> 62;
    if (!v13)
    {
      result = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v9)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v9, v10))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = v10 - v9;
  if (__OFSUB__(0, v9 - v10))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v13)
  {
    v16 = __CocoaSet.count.getter();
  }

  else
  {
    v16 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = __OFADD__(v16, v15);
  result = v16 + v15;
  if (!v17)
  {
    v11(result, 1);
    return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v10, v9, 0, v8, v6);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = a4;
    v6 = a3;
    v8 = a2;
    v10 = a1;
    v19 = a5;
    v11 = *v7;
    v12 = *v7 >> 62;
    if (!v12)
    {
      result = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v8)
  {
    goto LABEL_16;
  }

LABEL_4:
  v13 = v8 - v10;
  if (__OFSUB__(v8, v10))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!(v6 >> 62))
  {
    v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = __OFSUB__(v15, v13);
    v17 = v15 - v13;
    if (!v16)
    {
      goto LABEL_7;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

LABEL_18:
  result = __CocoaSet.count.getter();
  v15 = result;
  v16 = __OFSUB__(result, v13);
  v17 = result - v13;
  if (v16)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v12)
  {
    v18 = __CocoaSet.count.getter();
  }

  else
  {
    v18 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = __OFADD__(v18, v17);
  result = v18 + v17;
  if (v16)
  {
    goto LABEL_21;
  }

  v9(result, 1);

  return v19(v10, v8, v15, v6);
}

uint64_t partial apply for specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2)
{
  return specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, *(v2 + 16), *(v2 + 24), &lazy cache variable for type metadata for UIMenuElement, 0x1E69DCC78);
}

{
  return specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, *(v2 + 16), *(v2 + 24), &lazy cache variable for type metadata for UIBarButtonItemGroup, 0x1E69DC720);
}

{
  return specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, *(v2 + 16), *(v2 + 24), 0, type metadata accessor for NSObject & PlatformAccessibilityElementProtocol);
}

uint64_t outlined destroy of (CodingUserInfoKey, Sendable)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for CollectionOfOne<Hashable>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CollectionOfOne<Hashable>)
  {
    type metadata accessor for DropDelegate(255, &lazy cache variable for type metadata for Hashable, MEMORY[0x1E69E5EA0], 1);
    v1 = type metadata accessor for CollectionOfOne();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CollectionOfOne<Hashable>);
    }
  }
}

uint64_t outlined destroy of CollectionOfOne<Decodable & Encodable & Hashable>(uint64_t a1)
{
  type metadata accessor for _ContiguousArrayStorage<(CodingUserInfoKey, Sendable)>(0, &lazy cache variable for type metadata for CollectionOfOne<Decodable & Encodable & Hashable>, type metadata accessor for Decodable & Encodable & Hashable, MEMORY[0x1E69E6BC0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t destroy for NavigationPath.Error(uint64_t a1)
{
  result = *(a1 + 8);
  if (result >= 0xFFFFFFFF)
  {
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for NavigationPath.Error(__n128 *a1, __n128 *a2)
{
  v2 = a2->n128_u64[1];
  if (v2 < 0xFFFFFFFF)
  {
    result = *a2;
    *a1 = *a2;
  }

  else
  {
    a1->n128_u64[0] = a2->n128_u64[0];
    a1->n128_u64[1] = v2;
  }

  return result;
}

void *assignWithCopy for NavigationPath.Error(void *a1, void *a2)
{
  v3 = a2[1];
  if (a1[1] < 0xFFFFFFFFuLL)
  {
    if (v3 >= 0xFFFFFFFF)
    {
      *a1 = *a2;
      a1[1] = a2[1];

      return a1;
    }

    v5 = *a2;
LABEL_8:
    *a1 = v5;
    return a1;
  }

  if (v3 < 0xFFFFFFFF)
  {

    v5 = *a2;
    goto LABEL_8;
  }

  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

_OWORD *assignWithTake for NavigationPath.Error(_OWORD *result, uint64_t a2)
{
  if (*(result + 1) < 0xFFFFFFFFuLL)
  {
    *result = *a2;
  }

  else
  {
    v2 = *(a2 + 8);
    if (v2 < 0xFFFFFFFF)
    {
      v3 = result;

      *v3 = *a2;
    }

    else
    {
      *result = *a2;
      *(result + 1) = v2;
      v3 = result;
    }

    return v3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NavigationPath.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for NavigationPath.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for NavigationPath.Error(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

double ArchivedTemplateHost.viewGraph.getter()
{
  specialized _ArchivedViewHost.viewGraph.getter();

  return result;
}

double ArchivedTemplateHost.currentTimestamp.getter@<D0>(double *a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

void ArchivedTemplateHost.currentTimestamp.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 24) = v2;
}

void ArchivedTemplateHost.renderingPhase.setter(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 34) = v2;
}

double ArchivedTemplateHost.environment.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(*v1 + 144));
  swift_beginAccess();
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;

  return result;
}

double key path getter for ArchivedTemplateHost.environment : <A>ArchivedTemplateHost<A>@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + *(**a1 + 144));
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return result;
}

uint64_t key path setter for ArchivedTemplateHost.environment : <A>ArchivedTemplateHost<A>(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = v2;
  v4[1] = v1;

  return ArchivedTemplateHost.environment.setter(v4);
}

uint64_t ArchivedTemplateHost.environment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(*v1 + 144));
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;

  return ArchivedTemplateHost.environment.didset(2);
}

uint64_t (*ArchivedTemplateHost.environment.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return ArchivedTemplateHost.environment.modify;
}

double ArchivedTemplateHost.size.getter()
{
  v1 = v0 + *(*v0 + 152);
  swift_beginAccess();
  return *v1;
}

uint64_t ArchivedTemplateHost.size.setter(double a1, double a2)
{
  v5 = (v2 + *(*v2 + 152));
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return ArchivedTemplateHost.environment.didset(40);
}

uint64_t (*ArchivedTemplateHost.size.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return ArchivedTemplateHost.size.modify;
}

uint64_t ArchivedTemplateHost.environment.modify(uint64_t a1, char a2, uint64_t a3)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return ArchivedTemplateHost.environment.didset(a3);
  }

  return result;
}

double ArchivedTemplateHost.safeAreaInsets.getter()
{
  v1 = v0 + *(*v0 + 160);
  swift_beginAccess();
  return *v1;
}

uint64_t ArchivedTemplateHost.safeAreaInsets.setter(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + *(*v4 + 160));
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return ArchivedTemplateHost.environment.didset(48);
}

uint64_t ArchivedTemplateHost.environment.didset(uint64_t a1)
{
  v2 = *v1;
  GraphHost.emptyTransaction(_:)();
  swift_getWitnessTable(protocol conformance descriptor for ArchivedTemplateHost<A>, v2);

  return ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

uint64_t (*ArchivedTemplateHost.safeAreaInsets.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return ArchivedTemplateHost.safeAreaInsets.modify;
}

char *ArchivedTemplateHost.__allocating_init(_:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v4 = specialized ArchivedTemplateHost.init(_:)();
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v4;
}

char *ArchivedTemplateHost.init(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = specialized ArchivedTemplateHost.init(_:)();
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t ArchivedTemplateHost.metadata()@<X0>(id *a1@<X8>)
{
  v2 = v1;
  v48 = *v1;
  v49 = a1;
  type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?(0, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata.Graphic?, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v51 = &v46 - v4;
  type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?(0, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata?, type metadata accessor for WidgetAuxiliaryViewMetadata);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v46 - v6;
  v8 = type metadata accessor for OSSignposter();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  v15 = type metadata accessor for OSSignpostID();
  v52 = *(v15 - 8);
  v53 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  static OSSignposter.metadataExtraction.getter();
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v21 = *(v9 + 8);
  v47 = v8;
  v21(v14, v8);
  static OSSignposter.metadataExtraction.getter();
  v22 = OSSignposter.logHandle.getter();
  v23 = static os_signpost_type_t.begin.getter();
  v24 = OS_os_log.signpostsEnabled.getter();
  v50 = v7;
  if (v24)
  {
    v25 = v2;
    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_18BD4A000, v22, v23, v27, "Metadata Extraction", "", v26, 2u);
    v28 = v26;
    v2 = v25;
    v7 = v50;
    MEMORY[0x18D0110E0](v28, -1, -1);
  }

  (*(v52 + 16))(v17, v20, v53);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v29 = OSSignpostIntervalState.init(id:isOpen:)();
  v21(v11, v47);
  swift_getWitnessTable(protocol conformance descriptor for ArchivedTemplateHost<A>, v48);
  ViewRendererHost.preferenceValue<A>(_:)();
  v30 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  v31 = *(*(v30 - 1) + 48);
  if (v31(v7, 1, v30) == 1)
  {
    v32 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
    v48 = v2;
    v33 = v32;
    v34 = *(*(v32 - 8) + 56);
    v34(v51, 1, 1, v32);
    v35 = v49;
    *v49 = 0;
    v35[1] = 0;
    v36 = v30[6];
    v34(v35 + v36, 1, 1, v33);
    *(v35 + v30[7]) = 0;
    v37 = v30[8];
    v38 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0);
    (*(*(v38 - 8) + 56))(v35 + v37, 1, 1, v38);
    v39 = (v35 + v30[9]);
    *(v39 + 41) = 0u;
    v39[1] = 0u;
    v39[2] = 0u;
    *v39 = 0u;
    v40 = v30[10];
    v41 = type metadata accessor for URL();
    v42 = v35 + v40;
    v2 = v48;
    (*(*(v41 - 8) + 56))(v42, 1, 1, v41);
    v43 = (v35 + v30[11]);
    *v43 = xmmword_18CD633F0;
    v43[1] = 0u;
    v43[2] = 0u;
    v43[3] = 0u;
    v44 = v50;
    outlined assign with take of WidgetAuxiliaryViewMetadata.Graphic?(v51, v35 + v36);

    *v35 = 0;
    if (v31(v44, 1, v30) != 1)
    {
      outlined destroy of WidgetAuxiliaryViewMetadata?(v44);
    }
  }

  else
  {
    outlined init with take of WidgetAuxiliaryViewMetadata(v7, v49);
  }

  $defer #1 <A>() in ArchivedTemplateHost.metadata()(v2, v29);

  return (*(v52 + 8))(v20, v53);
}

uint64_t $defer #1 <A>() in ArchivedTemplateHost.metadata()(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for OSSignpostError();
  v20 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = type metadata accessor for OSSignpostID();
  v5 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for OSSignposter();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static OSSignposter.metadataExtraction.getter();
  v12 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v19 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    v13 = v20;
    if ((*(v20 + 88))(v4, v2) == *MEMORY[0x1E69E93E8])
    {
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(v13 + 8))(v4, v2);
      v14 = "";
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_18BD4A000, v12, v19, v16, "Metadata Extraction", v14, v15, 2u);
    MEMORY[0x18D0110E0](v15, -1, -1);
  }

  (*(v5 + 8))(v7, v21);
  return (*(v9 + 8))(v11, v8);
}

void *ArchivedTemplateHost.preferenceValue<A>(for:)()
{
  v5 = *v4;
  mainThreadPrecondition()();
  swift_getWitnessTable(protocol conformance descriptor for ArchivedTemplateHost<A>, v5);

  return ViewRendererHost.preferenceValue<A>(_:)();
}

uint64_t ArchivedTemplateHost.containsPrivacySensitive.getter()
{
  v1 = *v0;
  mainThreadPrecondition()();
  swift_getWitnessTable(protocol conformance descriptor for ArchivedTemplateHost<A>, v1);
  ViewRendererHost.updateViewGraph<A>(body:)();

  return (v3 >> 2) & 1;
}

uint64_t closure #1 in ArchivedTemplateHost.containsPrivacySensitive.getter@<X0>(uint64_t a1@<X8>)
{
  GraphHost.instantiateIfNeeded()();
  result = ViewGraph.displayList()();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 12) = v5;
  return result;
}

char *ArchivedTemplateHost.deinit()
{

  v1 = *(*v0 + 136);
  v2 = type metadata accessor for ModifiedContent();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

double ArchivedTemplateHost.__deallocating_deinit()
{
  ArchivedTemplateHost.deinit();

  swift_deallocClassInstance();
  return result;
}

uint64_t ArchivedTemplateHost.as<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  if (type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for ViewGraphOwner, MEMORY[0x1E697E590]) == a1)
  {
    v9 = v3;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ArchivedTemplateHost<A>, v6);
    v3 = *(a1 - 8);
    if (v3[8] == 16)
    {
      goto LABEL_9;
    }

    __break(1u);
LABEL_8:
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivedTemplateHost<A>, v6, v9, WitnessTable);
    v9 = v3;
    WitnessTable = result;
    v3 = *(a1 - 8);
    if (v3[8] != 16)
    {
      __break(1u);
      return result;
    }

LABEL_9:
    (v3[2])(a2, &v9, a1);
    return (v3[7])(a2, 0, 1, a1);
  }

  if (type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for ViewGraphDelegate, MEMORY[0x1E697F308]) == a1)
  {
    goto LABEL_8;
  }

  v7 = *(*(a1 - 8) + 56);

  return v7(a2, 1, 1, a1);
}

Swift::Void __swiftcall ArchivedTemplateHost.updateRootView()()
{
  v1 = *v0;
  v2 = type metadata accessor for ModifiedContent();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v9 - v5;
  (*(v3 + 16))(v9 - v5, &v0[*(v1 + 136)], v2, v4);
  v7 = *(v1 + 88);
  v8 = lazy protocol witness table accessor for type CommonModifiers and conformance CommonModifiers();
  v9[0] = v7;
  v9[1] = v8;
  swift_getWitnessTable(MEMORY[0x1E697E858], v2, v9);
  ViewGraph.setRootView<A>(_:)();
  (*(v3 + 8))(v6, v2);
}

Swift::Void __swiftcall ArchivedTemplateHost.updateEnvironment()()
{
  v1 = (v0 + *(*v0 + 144));
  swift_beginAccess();
  v2 = *v1;
  v3 = one-time initialization token for configuredForPlatform;

  if (v3 != -1)
  {
    swift_once();
  }

  if (v2)
  {
    if (!static EnvironmentValues.configuredForPlatform || v2 != static EnvironmentValues.configuredForPlatform)
    {
      EnvironmentValues._configureForPlatform(traitCollection:)(0);
    }
  }

  else if (static EnvironmentValues.configuredForPlatform)
  {

    EnvironmentValues.plist.setter();
  }

  GraphHost.setEnvironment(_:)();
}

Swift::Void __swiftcall ArchivedTemplateHost.updateSize()()
{
  v1 = (v0 + *(*v0 + 152));
  swift_beginAccess();
  ViewGraph.setProposedSize(_:)(*v1);
}

Swift::Void __swiftcall ArchivedTemplateHost.updateSafeArea()()
{
  v1 = (v0 + *(*v0 + 160));
  swift_beginAccess();
  type metadata accessor for _ContiguousArrayStorage<SafeAreaInsets.Element>();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18CD63400;
  *(v2 + 32) = 1;
  v3 = *v1;
  *(v2 + 56) = v1[1];
  *(v2 + 40) = v3;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 1;
  ViewGraph.setSafeAreaInsets(_:)(v2);
}

Swift::Void __swiftcall ArchivedTemplateHost.updateContainerSize()()
{
  swift_beginAccess();
  swift_beginAccess();
  CGSize.inset(by:)();
  static ViewSize.fixed(_:)();
  ViewGraph.setContainerSize(_:)();
}

uint64_t protocol witness for ViewRendererHost.responderNode.getter in conformance ArchivedTemplateHost<A>()
{
  swift_getWitnessTable(protocol conformance descriptor for ArchivedTemplateHost<A>, *v0);

  return ViewGraphRootValueUpdater.responderNode.getter();
}

uint64_t (*protocol witness for ViewGraphOwner.currentTimestamp.modify in conformance ArchivedTemplateHost<A>(uint64_t *a1))()
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
  *(v2 + 32) = ArchivedTemplateHost.currentTimestamp.modify(v2);
  return protocol witness for ViewGraphOwner.valuesNeedingUpdate.modify in conformance ArchivedTemplateHost<A>;
}

uint64_t (*protocol witness for ViewGraphOwner.valuesNeedingUpdate.modify in conformance ArchivedTemplateHost<A>(uint64_t *a1))()
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
  *(v2 + 32) = ArchivedTemplateHost.valuesNeedingUpdate.modify(v2);
  return protocol witness for ViewGraphOwner.valuesNeedingUpdate.modify in conformance ArchivedTemplateHost<A>;
}

void (*protocol witness for ViewGraphOwner.renderingPhase.modify in conformance ArchivedTemplateHost<A>(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = ArchivedTemplateHost.renderingPhase.modify(v2);
  return protocol witness for ViewGraphOwner.renderingPhase.modify in conformance _UIHostingView<A>;
}

uint64_t (*protocol witness for ViewGraphOwner.externalUpdateCount.modify in conformance ArchivedTemplateHost<A>(uint64_t *a1))()
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
  *(v2 + 32) = ArchivedTemplateHost.externalUpdateCount.modify(v2);
  return protocol witness for ViewGraphOwner.valuesNeedingUpdate.modify in conformance ArchivedTemplateHost<A>;
}

uint64_t protocol witness for GraphDelegate.updateGraph<A>(body:) in conformance ArchivedTemplateHost<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for ArchivedTemplateHost<A>, *v3);

  return ViewGraphRootValueUpdater.updateGraph<A>(body:)();
}

void protocol witness for GraphDelegate.graphDidChange() in conformance ArchivedTemplateHost<A>()
{
  swift_getWitnessTable(protocol conformance descriptor for ArchivedTemplateHost<A>, *v0);

  ViewGraphRootValueUpdater.graphDidChange()();
}

char *specialized ArchivedTemplateHost.init(_:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0;
  v4 = *(*v0 + 80);
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  v0[3] = 0;
  *(v0 + 16) = 0;
  *(v0 + 34) = 0;
  v0[5] = 0;
  v9 = EnvironmentValues.init()();
  v10 = (v1 + *(*v1 + 152));
  *v10 = 0;
  v10[1] = 0;
  v11 = (v1 + *(*v1 + 160));
  *v11 = 0u;
  v11[1] = 0u;
  v12 = *(v2 + 88);
  MEMORY[0x18D00A570](v9, v4, &unk_1EFFB4D48, v12);
  v13 = (*(v6 + 32))(v1 + *(*v1 + 136), v8, v5);
  MEMORY[0x18D00ABE0](v13);
  type metadata accessor for ViewGraph();
  LOBYTE(v21[0]) = 17;
  v14 = lazy protocol witness table accessor for type CommonModifiers and conformance CommonModifiers();
  v20[0] = v12;
  v20[1] = v14;
  swift_getWitnessTable(MEMORY[0x1E697E858], v5, v20);
  swift_allocObject();
  v0[2] = ViewGraph.init<A>(rootViewType:requestedOutputs:)();

  AccessibilityViewGraph.init(graph:)(v15, v18);
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v21[0] = v18[0];
  v21[1] = v18[1];
  v21[2] = v18[2];
  v22 = v19;
  outlined destroy of AccessibilityViewGraph(v21);
  (*(v6 + 16))(v8, v1 + *(*v1 + 136), v5);
  ViewGraph.setRootView<A>(_:)();
  (*(v6 + 8))(v8, v5);
  swift_getWitnessTable(protocol conformance descriptor for ArchivedTemplateHost<A>, v3);
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  ViewGraphRootValueUpdater.initializeViewGraph()();
  static Update.end()();
  return v0;
}

void type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined assign with take of WidgetAuxiliaryViewMetadata.Graphic?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?(0, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata.Graphic?, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WidgetAuxiliaryViewMetadata?(uint64_t a1)
{
  type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?(0, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata?, type metadata accessor for WidgetAuxiliaryViewMetadata);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of WidgetAuxiliaryViewMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type CommonModifiers and conformance CommonModifiers()
{
  result = lazy protocol witness table cache variable for type CommonModifiers and conformance CommonModifiers;
  if (!lazy protocol witness table cache variable for type CommonModifiers and conformance CommonModifiers)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CommonModifiers, &unk_1EFFB4D48, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CommonModifiers and conformance CommonModifiers);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<SafeAreaInsets.Element>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<SafeAreaInsets.Element>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SafeAreaInsets.Element>);
    }
  }
}

uint64_t type metadata completion function for ArchivedTemplateHost(uint64_t a1)
{
  result = type metadata accessor for ModifiedContent();
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<CommonModifiers>, WidgetAuxiliaryViewMetadataModifier<_ViewModifier_Content<CommonModifiers>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<CommonModifiers>, WidgetAuxiliaryViewMetadataModifier<_ViewModifier_Content<CommonModifiers>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<CommonModifiers>, WidgetAuxiliaryViewMetadataModifier<_ViewModifier_Content<CommonModifiers>>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<CommonModifiers>, WidgetAuxiliaryViewMetadataModifier<_ViewModifier_Content<CommonModifiers>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ViewModifier_Content<CommonModifiers> and conformance _ViewModifier_Content<A>();
    v5[1] = &protocol witness table for WidgetAuxiliaryViewMetadataModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<CommonModifiers>, WidgetAuxiliaryViewMetadataModifier<_ViewModifier_Content<CommonModifiers>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<CommonModifiers>, WidgetAuxiliaryViewMetadataModifier<_ViewModifier_Content<CommonModifiers>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<CommonModifiers>, WidgetAuxiliaryViewMetadataModifier<_ViewModifier_Content<CommonModifiers>>>)
  {
    type metadata accessor for _ViewModifier_Content<CommonModifiers>(255);
    type metadata accessor for WidgetAuxiliaryViewMetadataModifier<_ViewModifier_Content<CommonModifiers>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<CommonModifiers>, WidgetAuxiliaryViewMetadataModifier<_ViewModifier_Content<CommonModifiers>>>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<CommonModifiers>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<CommonModifiers>)
  {
    lazy protocol witness table accessor for type CommonModifiers and conformance CommonModifiers();
    v1 = type metadata accessor for _ViewModifier_Content();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ViewModifier_Content<CommonModifiers>);
    }
  }
}

void type metadata accessor for WidgetAuxiliaryViewMetadataModifier<_ViewModifier_Content<CommonModifiers>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for WidgetAuxiliaryViewMetadataModifier<_ViewModifier_Content<CommonModifiers>>)
  {
    type metadata accessor for _ViewModifier_Content<CommonModifiers>(255);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type _ViewModifier_Content<CommonModifiers> and conformance _ViewModifier_Content<A>();
    v6 = type metadata accessor for WidgetAuxiliaryViewMetadataModifier(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadataModifier<_ViewModifier_Content<CommonModifiers>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<CommonModifiers> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<CommonModifiers> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<CommonModifiers> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<CommonModifiers>(255);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<CommonModifiers> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t View.accessibilityDataSeries(_:)(void *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, __src, sizeof(__srca));
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  memcpy(v7, __srca, sizeof(v7));
  outlined init with copy of AccessibilityDataSeriesConfiguration(__dst, v10);
  View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E69800F0], v7, 1, a2, MEMORY[0x1E69800F0], a3, MEMORY[0x1E69800E8]);
  memcpy(v10, v7, sizeof(v10));
  return outlined destroy of AccessibilityDataSeriesConfiguration?(v10);
}

uint64_t outlined destroy of AccessibilityDataSeriesConfiguration?(uint64_t a1)
{
  type metadata accessor for AccessibilityDataSeriesConfiguration?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for AccessibilityDataSeriesConfiguration?()
{
  if (!lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?);
    }
  }
}

uint64_t ModifiedContent<>.accessibilityDataSeries(_:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, __src, sizeof(__srca));
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  memcpy(v7, __srca, sizeof(v7));
  outlined init with copy of AccessibilityDataSeriesConfiguration(__dst, v10);
  ModifiedContent<>.update<A>(_:replacing:isEnabled:)(MEMORY[0x1E69800F0], v7, 1, a2, MEMORY[0x1E69800F0], MEMORY[0x1E69800E8], a3);
  memcpy(v10, v7, 0x138uLL);
  return outlined destroy of AccessibilityDataSeriesConfiguration?(v10);
}

uint64_t Color.Resolved.accessibilityName.getter(uint64_t a1, float a2, float a3, float a4, float a5)
{
  v5 = Color.Resolved.cgColor.getter();
  v6 = AXNameFromColor(v5);

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v7;
}

uint64_t View.scrollTransition<A>(_:axis:transition:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 48);
  v9 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v9;
  v11[2] = *(a1 + 32);
  v12 = v8;
  return View.scrollTransition<A>(_:axis:transition:)(v11, a2 & 1, a3, a4, a5, a6, a7, a8);
}

uint64_t View.scrollTransition<A>(topLeading:bottomTrailing:axis:transition:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(a1 + 48);
  v10 = *(a2 + 48);
  v11 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v11;
  v16[2] = *(a1 + 32);
  v17 = v9;
  v12 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v12;
  v14[2] = *(a2 + 32);
  v15 = v10;
  return View.scrollTransition<A>(topLeading:bottomTrailing:axis:transition:)(v16, v14, a3 & 1, a4, a5, a6, a7, a8, a9);
}

uint64_t View.scrollTransition<A>(topLeading:bottomTrailing:axis:transition:)(uint64_t *a1, uint64_t *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v13 = a1[4];
  v14 = a1[5];
  v15 = a1[6];
  v16 = *a2;
  v25 = a2[1];
  v17 = a2[3];
  v18 = a2[4];
  v23 = a2[5];
  v24 = a2[2];
  v22 = a2[6];
  *&v29 = a4;
  *(&v29 + 1) = a5;
  *&v30 = v9;
  *(&v30 + 1) = v10;
  *&v31 = v11;
  *(&v31 + 1) = v12;
  *&v32 = v13;
  *(&v32 + 1) = v14;
  *&v33 = v15;
  *(&v33 + 1) = v16;
  *&v34 = v25;
  *(&v34 + 1) = v24;
  *&v35 = v17;
  *(&v35 + 1) = v18;
  *&v36 = v23;
  *(&v36 + 1) = v22;
  v37 = a3;

  outlined copy of ScrollTransitionConfiguration.Mode(v10, v11, v12, v13, v14, v15);

  outlined copy of ScrollTransitionConfiguration.Mode(v25, v24, v17, v18, v23, v22);
  v20 = type metadata accessor for ScrollTransitionModifier(0, a7, a9, v19);
  MEMORY[0x18D00A570](&v29, a6, v20, a8);
  v38[6] = v35;
  v38[7] = v36;
  v39 = v37;
  v38[2] = v31;
  v38[3] = v32;
  v38[4] = v33;
  v38[5] = v34;
  v38[0] = v29;
  v38[1] = v30;
  return (*(*(v20 - 8) + 8))(v38, v20);
}

double static ScrollTransitionConfiguration.animated(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0x3FE0000000000000;
  *a2 = v4;
  *(a2 + 8) = a1;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;

  return result;
}

uint64_t static ScrollTransitionConfiguration.Threshold.visible(_:)@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *a1 = result;
  return result;
}

double one-time initialization function for animated(uint64_t a1)
{
  v1 = static Animation.default.getter();
  v2 = swift_allocObject();
  *(v2 + 16) = 0x3FE0000000000000;
  static ScrollTransitionConfiguration.animated = v2;
  *algn_1EAA220E8 = v1;
  result = 0.0;
  xmmword_1EAA220F0 = 0u;
  *&qword_1EAA22100 = 0u;
  qword_1EAA22110 = 0;
  return result;
}

double static ScrollTransitionConfiguration.animated.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for animated != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_1EAA220E8;
  v2 = xmmword_1EAA220F0;
  v3 = qword_1EAA22100;
  v4 = unk_1EAA22108;
  v5 = qword_1EAA22110;
  *a1 = static ScrollTransitionConfiguration.animated;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;

  return outlined copy of ScrollTransitionConfiguration.Mode(v1, v2, *(&v2 + 1), v3, v4, v5);
}

__n128 static ScrollTransitionConfiguration.interactive(timingCurve:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = swift_allocObject();
  *(v5 + 16) = 0x3FF0000000000000;
  *a2 = v5;
  result = *a1;
  *(a2 + 24) = *(a1 + 16);
  *(a2 + 8) = result;
  *(a2 + 40) = v4 | 0x4000000000000000;
  *(a2 + 48) = 0;
  return result;
}

double one-time initialization function for identity()
{
  if (one-time initialization token for visible != -1)
  {
    swift_once();
  }

  static ScrollTransitionConfiguration.identity = static ScrollTransitionConfiguration.Threshold.visible;
  unk_1EAA22120 = 0u;
  unk_1EAA22130 = 0u;
  unk_1EAA22140 = xmmword_18CD68310;

  return result;
}

double static ScrollTransitionConfiguration.identity.getter@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for identity != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = unk_1EAA22120;
  v2 = qword_1EAA22128;
  v3 = unk_1EAA22130;
  v4 = qword_1EAA22138;
  v5 = unk_1EAA22140;
  v6 = qword_1EAA22148;
  *a1 = static ScrollTransitionConfiguration.identity;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;

  return outlined copy of ScrollTransitionConfiguration.Mode(v1, v2, v3, v4, v5, v6);
}

double ScrollTransitionConfiguration.animation(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = v2[5];
  if (!(v4 >> 62))
  {
    *a2 = v3;
    *(a2 + 8) = a1;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0;
    goto LABEL_5;
  }

  v6 = v2[1];
  v5 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  if (v4 >> 62 == 1)
  {
    *a2 = v3;
    *(a2 + 8) = v6;
    *(a2 + 16) = v5;
    *(a2 + 24) = v7;
    *(a2 + 32) = v8;
    *(a2 + 40) = v4 & 1 | 0x4000000000000000;
    *(a2 + 48) = a1;
LABEL_5:

    return result;
  }

  v10 = v2[6];
  *a2 = v3;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v4;
  *(a2 + 48) = v10;

  return outlined copy of ScrollTransitionConfiguration.Mode(v6, v5, v7, v8, v4, v10);
}

double ScrollTransitionConfiguration.threshold(_:)@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;
  outlined copy of ScrollTransitionConfiguration.Mode(v4, v5, v6, v7, v8, v9);

  return result;
}

uint64_t one-time initialization function for visible()
{
  result = swift_allocObject();
  *(result + 16) = 0x3FF0000000000000;
  static ScrollTransitionConfiguration.Threshold.visible = result;
  return result;
}

uint64_t one-time initialization function for hidden()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  static ScrollTransitionConfiguration.Threshold.hidden = result;
  return result;
}

double static ScrollTransitionConfiguration.Threshold.visible.getter@<D0>(void *a1@<X0>, void *a2@<X1>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a4;
    swift_once();
    a4 = v7;
    a2 = v6;
  }

  *a4 = *a2;

  return result;
}

double ScrollTransitionConfiguration.Threshold.interpolated(towards:amount:)@<D0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>, double a3@<D0>)
{
  v6 = *a1;
  v7 = *v3;
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  *(v8 + 32) = a3;
  *a2 = v8 | 0x8000000000000000;

  return result;
}

double ScrollTransitionConfiguration.Threshold.inset(by:)@<D0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = v5;
  *a1 = v6 | 0x4000000000000000;

  return result;
}

void ScrollTransitionModifier.StageProgress.animatedProgress(threshold:axis:geometryProxy:)(unint64_t *a1, char a2, __int128 *a3, uint64_t a4, unint64_t a5)
{
  v6 = *a1;
  v7 = a3[1];
  v19 = *a3;
  v20 = v7;
  v21 = a3[2];
  v22 = *(a3 + 12);
  static CoordinateSpaceProtocol<>.scrollView(axis:)();
  GeometryProxy.bounds(of:)();
  outlined destroy of NamedCoordinateSpace(&v18);
  if ((v27 & 1) == 0)
  {
    v8 = v25;
    v9 = v26;
    v10 = v23;
    v11 = v24;
    if (a2)
    {
      Height = CGRectGetHeight(*&v10);
      Value = AGGraphGetValue();
      v14 = Value[1];
      v19 = *Value;
      v20 = v14;
      ViewSize.height.getter();
    }

    else
    {
      Height = CGRectGetWidth(*&v10);
      v16 = AGGraphGetValue();
      v17 = v16[1];
      v19 = *v16;
      v20 = v17;
      ViewSize.width.getter();
    }

    ScrollTransitionConfiguration.Threshold.Storage.resolve(targetLength:containerLength:)(v6, v15, Height);
  }
}

double protocol witness for Animatable.animatableData.setter in conformance ScrollTransitionProgress(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double (*protocol witness for Animatable.animatableData.modify in conformance ScrollTransitionProgress(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return protocol witness for Animatable.animatableData.modify in conformance ScrollTransitionProgress;
}

double protocol witness for Animatable.animatableData.modify in conformance ScrollTransitionProgress(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

Swift::Int ScrollTransitionPhase.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ScrollTransitionPhase and conformance ScrollTransitionPhase()
{
  result = lazy protocol witness table cache variable for type ScrollTransitionPhase and conformance ScrollTransitionPhase;
  if (!lazy protocol witness table cache variable for type ScrollTransitionPhase and conformance ScrollTransitionPhase)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollTransitionPhase, &type metadata for ScrollTransitionPhase, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollTransitionPhase and conformance ScrollTransitionPhase);
  }

  return result;
}

uint64_t *initializeWithCopy for ScrollTransitionConfiguration(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];

  outlined copy of ScrollTransitionConfiguration.Mode(v3, v4, v5, v6, v7, v8);
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return a1;
}

uint64_t *assignWithCopy for ScrollTransitionConfiguration(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v9 = a2[5];
  v8 = a2[6];
  outlined copy of ScrollTransitionConfiguration.Mode(v4, v5, v6, v7, v9, v8);
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v13 = a1[4];
  v14 = a1[5];
  v15 = a1[6];
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v9;
  a1[6] = v8;
  outlined consume of ScrollTransitionConfiguration.Mode(v10, v11, v12, v13, v14, v15);
  return a1;
}

void *assignWithTake for ScrollTransitionConfiguration(void *a1, uint64_t a2)
{

  v4 = *(a2 + 48);
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 1) = v11;
  *(a1 + 2) = *(a2 + 32);
  a1[6] = v4;
  outlined consume of ScrollTransitionConfiguration.Mode(v5, v6, v7, v8, v9, v10);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollTransitionConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40) >> 1;
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

double storeEnumTagSinglePayload for ScrollTransitionConfiguration(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 56) = 1;
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
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 8) = 0u;
      *(a1 + 40) = 2 * -a2;
      *(a1 + 48) = 0;
      return result;
    }

    *(a1 + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *assignWithCopy for ScrollTransitionConfiguration.Threshold(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollTransitionConfiguration.Threshold(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ScrollTransitionConfiguration.Threshold(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t *initializeWithCopy for ScrollTransitionConfiguration.Mode(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  outlined copy of ScrollTransitionConfiguration.Mode(*a2, v4, v5, v6, v7, v8);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  return a1;
}

uint64_t *assignWithCopy for ScrollTransitionConfiguration.Mode(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  outlined copy of ScrollTransitionConfiguration.Mode(*a2, v4, v5, v6, v7, v8);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v13 = a1[4];
  v14 = a1[5];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  outlined consume of ScrollTransitionConfiguration.Mode(v9, v10, v11, v12, v13, v14);
  return a1;
}

uint64_t *assignWithTake for ScrollTransitionConfiguration.Mode(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v5 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a2[1];
  *a1 = *a2;
  *(a1 + 1) = v9;
  *(a1 + 2) = a2[2];
  outlined consume of ScrollTransitionConfiguration.Mode(v3, v5, v4, v6, v7, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollTransitionConfiguration.Mode(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32) >> 1;
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

double storeEnumTagSinglePayload for ScrollTransitionConfiguration.Mode(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 48) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 2 * -a2;
      *(a1 + 40) = 0;
      return result;
    }

    *(a1 + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithTake for ScrollTransitionModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v10;
  *(a1 + 48) = *(a2 + 48);
  outlined consume of ScrollTransitionConfiguration.Mode(v4, v5, v6, v7, v8, v9);
  *(a1 + 64) = *(a2 + 64);

  v11 = *(a1 + 80);
  v12 = *(a1 + 88);
  v13 = *(a1 + 96);
  v14 = *(a1 + 104);
  v15 = *(a1 + 112);
  v16 = *(a1 + 120);
  v17 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v17;
  *(a1 + 112) = *(a2 + 112);
  outlined consume of ScrollTransitionConfiguration.Mode(v11, v12, v13, v14, v15, v16);
  *(a1 + 128) = *(a2 + 128);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollTransitionModifier(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
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

uint64_t storeEnumTagSinglePayload for ScrollTransitionModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_OWORD *assignWithTake for ScrollTransitionModifier.EffectApplicationModifier(_OWORD *a1, _OWORD *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollTransitionModifier.StageProgress(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[32])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t TabItemGroup.allChildEntries.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v10 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = v10;
    v5 = v2 + 32;
    do
    {
      outlined init with copy of TabItem(v5, __src);
      LOBYTE(__src[35]) = 0;
      v10 = v4;
      v7 = *(v4 + 16);
      v6 = *(v4 + 24);
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        v4 = v10;
      }

      *(v4 + 16) = v7 + 1;
      memcpy((v4 + 288 * v7 + 32), __src, 0x119uLL);
      v5 += 112;
      --v3;
    }

    while (v3);
  }

  __src[0] = v1;

  specialized Array.append<A>(contentsOf:)(v4);
  return __src[0];
}

BOOL TabItemGroup.sidebarReorderable.getter()
{
  v1 = v0;
  outlined init with copy of TabItem?(v0 + 48, &v60);
  if (!*&v61[8])
  {
    outlined destroy of TabItem?(&v60, type metadata accessor for TabItem?);
    return 0;
  }

  v2 = &v60;
  v68[4] = v63;
  v68[5] = v64;
  v69 = v65;
  v68[0] = v60;
  v68[1] = *v61;
  v68[2] = *&v61[16];
  v68[3] = v62;
  if (!TabItem.needsCustomizationIDForEnablement.getter())
  {
LABEL_7:
    *&v55 = v69;
    if (one-time initialization token for defaultValue != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_8;
  }

  *&v53 = v69;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  __dst[0] = static TabOptions.TraitKey.defaultValue;
  __dst[1] = unk_1EAB09380;
  *(&__dst[1] + 9) = *(&word_1EAB09388 + 1);
  v55 = static TabOptions.TraitKey.defaultValue;
  v56[0] = unk_1EAB09380;
  *(v56 + 9) = *(&word_1EAB09388 + 1);
  outlined init with copy of TabOptions(__dst, &v66);
  ViewTraitCollection.value<A>(for:defaultValue:)();
  *__src = v55;
  *&__src[16] = v56[0];
  *&__src[25] = *(v56 + 9);
  outlined destroy of TabOptions(__src);
  v60 = v66;
  *v61 = *v67;
  *&v61[9] = *&v67[9];
  v3 = *(&v66 + 1);
  v4 = *v67;
  v5 = v67[8];
  outlined copy of TabCustomizationID?(*(&v66 + 1), *v67, v67[8]);
  outlined destroy of TabOptions(&v60);
  if (v5 != 255)
  {
    outlined consume of TabCustomizationID?(v3, v4, v5);
    goto LABEL_7;
  }

  v20 = 0;
LABEL_9:
  v22 = *(v1 + 8);
  v21 = *(v22 + 16);
  if (v21)
  {
    v10 = 0;
    v2 = &v37;
    v1 = v22 + 32;
    do
    {
      if (v10 >= *(v22 + 16))
      {
        __break(1u);
LABEL_38:
        swift_once();
LABEL_8:
        v6 = unk_1EAB09380;
        __dst[0] = static TabOptions.TraitKey.defaultValue;
        __dst[1] = unk_1EAB09380;
        *(&__dst[1] + 9) = *(&word_1EAB09388 + 1);
        v7 = *(&word_1EAB09388 + 1);
        *v2 = static TabOptions.TraitKey.defaultValue;
        v2[1] = v6;
        *(v2 + 25) = v7;
        outlined init with copy of TabOptions(__dst, __src);
        ViewTraitCollection.value<A>(for:defaultValue:)();
        v8 = v2[1];
        *__src = *v2;
        *&__src[16] = v8;
        *&__src[25] = *(v2 + 25);
        outlined destroy of TabOptions(__src);
        v9 = *v67;
        *v2 = v66;
        v2[1] = v9;
        *(v2 + 25) = *&v67[9];
        outlined destroy of TabOptions(&v60);
        v20 = v61[9] != 2;
        goto LABEL_9;
      }

      outlined init with copy of TabEntry(v1, &v60);
      outlined init with copy of TabEntry(&v60, __src);
      if (v59)
      {
        memcpy(__dst, __src, 0x118uLL);
        v11 = TabItemGroup.sidebarReorderable.getter();
        outlined destroy of TabItemGroup(__dst);
        outlined destroy of TabEntry(&v60);
        if (v11)
        {
          goto LABEL_35;
        }
      }

      else
      {
        __dst[5] = *&__src[80];
        __dst[6] = *&__src[96];
        __dst[0] = *__src;
        __dst[1] = *&__src[16];
        __dst[3] = *&__src[48];
        __dst[4] = *&__src[64];
        __dst[2] = *&__src[32];
        *&v47 = *&__src[96];
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v53 = static TabOptions.TraitKey.defaultValue;
        v54[0] = unk_1EAB09380;
        *(v54 + 9) = *(&word_1EAB09388 + 1);
        v49 = static TabOptions.TraitKey.defaultValue;
        v50[0] = unk_1EAB09380;
        *(v50 + 9) = *(&word_1EAB09388 + 1);
        outlined init with copy of TabOptions(&v53, &v51);
        ViewTraitCollection.value<A>(for:defaultValue:)();
        v55 = v49;
        v56[0] = v50[0];
        *(v56 + 9) = *(v50 + 9);
        outlined destroy of TabOptions(&v55);
        v66 = v51;
        *v67 = *v52;
        *&v67[9] = *&v52[9];
        outlined destroy of TabOptions(&v66);
        if (!v67[10] || (*&v41 = *&__dst[6], v47 = static TabOptions.TraitKey.defaultValue, v48[0] = unk_1EAB09380, *(v48 + 9) = *(&word_1EAB09388 + 1), v43 = static TabOptions.TraitKey.defaultValue, v44[0] = unk_1EAB09380, *(v44 + 9) = *(&word_1EAB09388 + 1), outlined init with copy of TabOptions(&v47, &v45), ViewTraitCollection.value<A>(for:defaultValue:)(), v49 = v43, v50[0] = v44[0], *(v50 + 9) = *(v44 + 9), outlined destroy of TabOptions(&v49), v51 = v45, *v52 = *v46, *&v52[9] = *&v46[9], outlined destroy of TabOptions(&v51), !v52[9]) || ((*&v33 = *&__dst[6], v41 = static TabOptions.TraitKey.defaultValue, v42[0] = unk_1EAB09380, *(v42 + 9) = *(&word_1EAB09388 + 1), v37 = static TabOptions.TraitKey.defaultValue, *v38 = unk_1EAB09380, *&v38[9] = *(&word_1EAB09388 + 1), outlined init with copy of TabOptions(&v41, &v35), ViewTraitCollection.value<A>(for:defaultValue:)(), v43 = v37, v44[0] = *v38, *(v44 + 9) = *&v38[9], outlined destroy of TabOptions(&v43), v45 = v39, *v46 = *v40, *&v46[9] = *&v40[9], outlined destroy of TabOptions(&v45), v45 != 2) && ((*&v25 = *&__dst[6], v33 = static TabOptions.TraitKey.defaultValue, v34[0] = unk_1EAB09380, *(v34 + 9) = *(&word_1EAB09388 + 1), v29 = static TabOptions.TraitKey.defaultValue, *v30 = unk_1EAB09380, *&v30[9] = *(&word_1EAB09388 + 1), outlined init with copy of TabOptions(&v33, &v27), ViewTraitCollection.value<A>(for:defaultValue:)(), v35 = v29, v36[0] = *v30, *(v36 + 9) = *&v30[9], outlined destroy of TabOptions(&v35), *&v38[9] = *(v32 + 9), v37 = v31, *v38 = v32[0], v12 = v31, v13 = BYTE8(v32[1]), outlined destroy of TabOptions(&v37), (v13 & 1) != 0) || v12) && v12 != 1 ? (v25 = static TabOptions.TraitKey.defaultValue, v26[0] = unk_1EAB09380, *(v26 + 9) = *(&word_1EAB09388 + 1), v29 = static TabOptions.TraitKey.defaultValue, *v30 = unk_1EAB09380, *&v30[9] = *(&word_1EAB09388 + 1), outlined init with copy of TabOptions(&v25, &v27), ViewTraitCollection.value<A>(for:defaultValue:)(), v27 = v29, v28[0] = *v30, *(v28 + 9) = *&v30[9], outlined destroy of TabOptions(&v27), v29 = v23, *v30 = *v24, *&v30[9] = *&v24[9], outlined destroy of TabOptions(&v29), v14 = v30[10] == 1) : (v14 = 0), (*&v29 = *&__dst[6], v35 = static TabOptions.TraitKey.defaultValue, v36[0] = unk_1EAB09380, *(v36 + 9) = *(&word_1EAB09388 + 1), v31 = static TabOptions.TraitKey.defaultValue, v32[0] = unk_1EAB09380, *(v32 + 9) = *(&word_1EAB09388 + 1), outlined init with copy of TabOptions(&v35, &v33), ViewTraitCollection.value<A>(for:defaultValue:)(), v37 = v31, *v38 = v32[0], *&v38[9] = *(v32 + 9), outlined destroy of TabOptions(&v37), v39 = v33, *v40 = v34[0], *&v40[9] = *(v34 + 9), outlined destroy of TabOptions(&v39), v14) || v40[9] == 1))
        {
          *&v41 = *&__dst[6];
          v47 = static TabOptions.TraitKey.defaultValue;
          v48[0] = unk_1EAB09380;
          *(v48 + 9) = *(&word_1EAB09388 + 1);
          v43 = static TabOptions.TraitKey.defaultValue;
          v44[0] = unk_1EAB09380;
          *(v44 + 9) = *(&word_1EAB09388 + 1);
          outlined init with copy of TabOptions(&v47, &v45);
          ViewTraitCollection.value<A>(for:defaultValue:)();
          v49 = v43;
          v50[0] = v44[0];
          *(v50 + 9) = *(v44 + 9);
          outlined destroy of TabOptions(&v49);
          v51 = v45;
          *v52 = *v46;
          *&v52[9] = *&v46[9];
          v15 = *(&v45 + 1);
          v16 = *v46;
          v17 = v46[8];
          outlined copy of TabCustomizationID?(*(&v45 + 1), *v46, v46[8]);
          outlined destroy of TabOptions(&v51);
          if (v17 == 255)
          {
            outlined destroy of TabEntry(&v60);
            outlined destroy of TabItem(__dst);
            goto LABEL_12;
          }

          outlined consume of TabCustomizationID?(v15, v16, v17);
        }

        *&v43 = *&__dst[6];
        v47 = static TabOptions.TraitKey.defaultValue;
        v48[0] = unk_1EAB09380;
        *(v48 + 9) = *(&word_1EAB09388 + 1);
        v51 = static TabOptions.TraitKey.defaultValue;
        *v52 = unk_1EAB09380;
        *&v52[9] = *(&word_1EAB09388 + 1);
        outlined init with copy of TabOptions(&v47, &v49);
        ViewTraitCollection.value<A>(for:defaultValue:)();
        v49 = v51;
        v50[0] = *v52;
        *(v50 + 9) = *&v52[9];
        outlined destroy of TabOptions(&v49);
        outlined destroy of TabEntry(&v60);
        v51 = v45;
        *v52 = *v46;
        *&v52[9] = *&v46[9];
        outlined destroy of TabOptions(&v51);
        v18 = v52[9];
        outlined destroy of TabItem(__dst);
        if (v18 < 2)
        {
LABEL_35:
          outlined destroy of TabItem(v68);
          return v20;
        }
      }

LABEL_12:
      ++v10;
      v1 += 288;
    }

    while (v21 != v10);
  }

  outlined destroy of TabItem(v68);
  return 0;
}