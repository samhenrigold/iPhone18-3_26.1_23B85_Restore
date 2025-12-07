unint64_t *protocol witness for RangeReplaceableCollection.remove(at:) in conformance FocusStoreList@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*v2 + 16);
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 >= v3)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  outlined init with copy of FocusStoreList.Item(*v2 + 72 * v4 + 32, a2);

  return specialized Array.replaceSubrange<A>(_:with:)(v4, v4 + 1);
}

double protocol witness for RangeReplaceableCollection._customRemoveLast() in conformance FocusStoreList@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.removeAll(keepingCapacity:) in conformance FocusStoreList(char a1)
{
  if (a1)
  {
    v2 = *(*v1 + 16);

    return specialized Array.replaceSubrange<A>(_:with:)(0, v2);
  }

  else
  {

    *v1 = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance FocusStoreList(uint64_t (**a1)(), unint64_t *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x41uLL);
  }

  *a1 = result;
  v6 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *(*v2 + 16))
  {
    outlined init with copy of FocusStoreList.Item(*v2 + 72 * v6 + 32, result);
    return protocol witness for Collection.subscript.read in conformance FocusStoreList;
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.read in conformance FocusStoreList(uint64_t *a1)
{
  v1 = *a1;
  outlined destroy of FocusStoreList.Item(*a1);

  free(v1);
}

void protocol witness for Collection.subscript.getter in conformance FocusStoreList(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1 < 0 || (v4 = a1[1], v5 = *v2, *(*v2 + 16) < v4))
  {
    __break(1u);
  }

  else
  {
    *a2 = v3;
    a2[1] = v4;
    a2[2] = v5;
  }
}

double protocol witness for Collection.indices.getter in conformance FocusStoreList@<D0>(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = *v1;
  a1[1] = 0;
  a1[2] = v2;

  return result;
}

unint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance FocusStoreList@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized Collection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance FocusStoreList()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

unint64_t lazy protocol witness table accessor for type FocusStoreList and conformance FocusStoreList()
{
  result = lazy protocol witness table cache variable for type FocusStoreList and conformance FocusStoreList;
  if (!lazy protocol witness table cache variable for type FocusStoreList and conformance FocusStoreList)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusStoreList, &type metadata for FocusStoreList, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusStoreList and conformance FocusStoreList);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FocusStoreList and conformance FocusStoreList;
  if (!lazy protocol witness table cache variable for type FocusStoreList and conformance FocusStoreList)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusStoreList, &type metadata for FocusStoreList, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusStoreList and conformance FocusStoreList);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FocusStoreList and conformance FocusStoreList;
  if (!lazy protocol witness table cache variable for type FocusStoreList and conformance FocusStoreList)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusStoreList, &type metadata for FocusStoreList, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusStoreList and conformance FocusStoreList);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type IndexingIterator<FocusStoreList> and conformance IndexingIterator<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexingIterator<FocusStoreList>(255, a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for IndexingIterator<FocusStoreList>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type FocusStoreList and conformance FocusStoreList();
    v7 = a3(a1, &type metadata for FocusStoreList, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Slice<FocusStoreList> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<FocusStoreList> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<FocusStoreList> and conformance <> Slice<A>)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for IndexingIterator<FocusStoreList>(255, &lazy cache variable for type metadata for Slice<FocusStoreList>, MEMORY[0x1E69E74D0]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type FocusStoreList and conformance FocusStoreList();
    result = swift_getWitnessTable(MEMORY[0x1E69E7500], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<FocusStoreList> and conformance <> Slice<A>);
  }

  return result;
}

unint64_t specialized Collection.index(_:offsetBy:limitedBy:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v3 = a3 - result;
    if (a3 - result >= a2 - 1)
    {
      v3 = a2 - 1;
    }

    if (v3 >= (result ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v3 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v4 = v3 + 1;
    if (v4 >= 5)
    {
      v7 = v4 & 3;
      if ((v4 & 3) == 0)
      {
        v7 = 4;
      }

      v5 = v4 - v7;
      v8 = 0uLL;
      v9 = result;
      v10 = vdupq_n_s64(1uLL);
      v11 = v5;
      do
      {
        v8 = vaddq_s64(v8, v10);
        v9 = vaddq_s64(v9, v10);
        v11 -= 4;
      }

      while (v11);
      v6 = vaddvq_s64(vpaddq_s64(v9, v8));
    }

    else
    {
      v5 = 0;
      v6 = result;
    }

    v12 = v5 + result - 0x7FFFFFFFFFFFFFFFLL;
    v13 = v5 + result - a3;
    v14 = a2 - v5;
    result = v6;
    while (1)
    {
      if (!v13)
      {
        return 0;
      }

      if (!v12)
      {
        break;
      }

      ++result;
      ++v12;
      ++v13;
      if (!--v14)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t outlined init with take of Repeated<FocusStoreList.Item>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CollectionOfOne<FocusStoreList.Item>(0, &lazy cache variable for type metadata for Repeated<FocusStoreList.Item>, MEMORY[0x1E69E7BF8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for IndexingIterator<Repeated<FocusStoreList.Item>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IndexingIterator<Repeated<FocusStoreList.Item>>)
  {
    type metadata accessor for CollectionOfOne<FocusStoreList.Item>(255, &lazy cache variable for type metadata for Repeated<FocusStoreList.Item>, MEMORY[0x1E69E7BF8]);
    lazy protocol witness table accessor for type Repeated<FocusStoreList.Item> and conformance Repeated<A>();
    v1 = type metadata accessor for IndexingIterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IndexingIterator<Repeated<FocusStoreList.Item>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Repeated<FocusStoreList.Item> and conformance Repeated<A>()
{
  result = lazy protocol witness table cache variable for type Repeated<FocusStoreList.Item> and conformance Repeated<A>;
  if (!lazy protocol witness table cache variable for type Repeated<FocusStoreList.Item> and conformance Repeated<A>)
  {
    type metadata accessor for CollectionOfOne<FocusStoreList.Item>(255, &lazy cache variable for type metadata for Repeated<FocusStoreList.Item>, MEMORY[0x1E69E7BF8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E7C18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Repeated<FocusStoreList.Item> and conformance Repeated<A>);
  }

  return result;
}

unint64_t type metadata accessor for Hashable()
{
  result = lazy cache variable for type metadata for Hashable;
  if (!lazy cache variable for type metadata for Hashable)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Hashable);
  }

  return result;
}

uint64_t outlined destroy of CollectionOfOne<Decodable & Encodable & Hashable>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  type metadata accessor for CollectionOfOne<Hashable>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t outlined destroy of IndexingIterator<Repeated<Decodable & Encodable & Hashable>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for IndexingIterator<Repeated<Hashable>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IndexingIterator<Repeated<Hashable>>)
  {
    v1 = MEMORY[0x1E69E7BF8];
    type metadata accessor for CollectionOfOne<Hashable>(255, &lazy cache variable for type metadata for Repeated<Hashable>, type metadata accessor for Hashable, MEMORY[0x1E69E7BF8]);
    lazy protocol witness table accessor for type CollectionOfOne<Hashable> and conformance CollectionOfOne<A>(&lazy protocol witness table cache variable for type Repeated<Hashable> and conformance Repeated<A>, &lazy cache variable for type metadata for Repeated<Hashable>, v1, MEMORY[0x1E69E7C18]);
    v2 = type metadata accessor for IndexingIterator();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for IndexingIterator<Repeated<Hashable>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type CollectionOfOne<Hashable> and conformance CollectionOfOne<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CollectionOfOne<Hashable>(255, a2, type metadata accessor for Hashable, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined assign with take of Hashable?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for CollectionOfOne<Hashable>(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Repeated<Decodable & Encodable & Hashable> and conformance Repeated<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CollectionOfOne<Hashable>(255, a2, type metadata accessor for Decodable & Encodable & Hashable, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of Decodable & Encodable & Hashable(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void type metadata accessor for IndexingIterator<Repeated<Decodable & Encodable & Hashable>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IndexingIterator<Repeated<Decodable & Encodable & Hashable>>)
  {
    v1 = MEMORY[0x1E69E7BF8];
    type metadata accessor for CollectionOfOne<Hashable>(255, &lazy cache variable for type metadata for Repeated<Decodable & Encodable & Hashable>, type metadata accessor for Decodable & Encodable & Hashable, MEMORY[0x1E69E7BF8]);
    lazy protocol witness table accessor for type Repeated<Decodable & Encodable & Hashable> and conformance Repeated<A>(&lazy protocol witness table cache variable for type Repeated<Decodable & Encodable & Hashable> and conformance Repeated<A>, &lazy cache variable for type metadata for Repeated<Decodable & Encodable & Hashable>, v1, MEMORY[0x1E69E7C18]);
    v2 = type metadata accessor for IndexingIterator();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for IndexingIterator<Repeated<Decodable & Encodable & Hashable>>);
    }
  }
}

uint64_t partial apply for closure #1 in FocusStateBindingUpdateAction.init<A>(binding:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for FocusState.Binding(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 8) + 80);
  return specialized FocusState.Binding.binding.setter(v4 + ((((v7 + 32) & ~v7) + *(*(v6 - 8) + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80)), v6);
}

uint64_t assignWithCopy for FocusStoreList.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  v5 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (v5)
    {
      v7 = *(a2 + 40);
      *(a1 + 32) = v5;
      *(a1 + 40) = v7;

      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 32) = *(a2 + 32);
    goto LABEL_8;
  }

  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = *(a2 + 40);
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

LABEL_8:
  swift_weakCopyAssign();
  swift_weakCopyAssign();
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t assignWithTake for FocusStoreList.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v4;

  v5 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (v5)
    {
      v7 = *(a2 + 40);
      *(a1 + 32) = v5;
      *(a1 + 40) = v7;
      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 32) = *(a2 + 32);
    goto LABEL_8;
  }

  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = *(a2 + 40);
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

LABEL_8:
  swift_weakTakeAssign();
  swift_weakTakeAssign();
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t getEnumTagSinglePayload for FocusStoreList.Item(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t storeEnumTagSinglePayload for FocusStoreList.Item(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static View.makeMapKitView(inputs:_:)(__int128 *a1, void (*a2)(__int128 *, __int128 *))
{
  v3 = a1[1];
  v10 = *a1;
  v11 = v3;
  v12 = a1[2];
  outlined init with copy of _GraphInputs(&v10, v13);
  _ViewInputs.init(withoutGeometry:)();
  v7 = v10;
  v8 = v11;
  v9 = v12;
  v5[2] = v13[2];
  v5[3] = v13[3];
  v5[4] = v13[4];
  v6 = v14;
  v5[0] = v13[0];
  v5[1] = v13[1];
  outlined init with copy of _GraphInputs(&v10, v15);
  a2(&v7, v5);
  v15[0] = v7;
  v15[1] = v8;
  v15[2] = v9;
  outlined destroy of MapKitGraphInputs(v15);
  return outlined destroy of _ViewInputs(v13);
}

uint64_t MapKitViewTraitCollection.updateTraitKeysWithForEach<A>(contentID:id:offset:isConstant:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  ViewTraitCollection.subscript.setter();
  ViewTraitCollection.subscript.setter();
  if ((a4 & 1) == 0)
  {
    return ViewTraitCollection.setTag<A>(for:value:)();
  }

  type metadata accessor for TagValueTraitKey<Int>();
  lazy protocol witness table accessor for type TagValueTraitKey<Int> and conformance TagValueTraitKey<A>();
  return ViewTraitCollection.subscript.setter();
}

void type metadata accessor for TagValueTraitKey<Int>()
{
  if (!lazy cache variable for type metadata for TagValueTraitKey<Int>)
  {
    v0 = type metadata accessor for TagValueTraitKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TagValueTraitKey<Int>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TagValueTraitKey<Int> and conformance TagValueTraitKey<A>()
{
  result = lazy protocol witness table cache variable for type TagValueTraitKey<Int> and conformance TagValueTraitKey<A>;
  if (!lazy protocol witness table cache variable for type TagValueTraitKey<Int> and conformance TagValueTraitKey<A>)
  {
    type metadata accessor for TagValueTraitKey<Int>();
    result = swift_getWitnessTable(MEMORY[0x1E697EB68], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TagValueTraitKey<Int> and conformance TagValueTraitKey<A>);
  }

  return result;
}

uint64_t CGSize.withinRange(axes:rangeCosine:)(unsigned __int8 *a1, CGFloat a2)
{
  v2 = *a1;
  if (v2 == 15)
  {
    return 1;
  }

  v4 = CGSize.normalized()();
  if ((v2 & 1) != 0 && -v4.width > a2)
  {
    return 1;
  }

  if ((v2 & 2) != 0 && v4.width > a2 || (v2 & 4) != 0 && -v4.height > a2)
  {
    return 1;
  }

  else
  {
    return (v4.height > a2) & (v2 >> 3);
  }
}

unint64_t lazy protocol witness table accessor for type _EventDirections and conformance _EventDirections()
{
  result = lazy protocol witness table cache variable for type _EventDirections and conformance _EventDirections;
  if (!lazy protocol witness table cache variable for type _EventDirections and conformance _EventDirections)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _EventDirections, &type metadata for _EventDirections, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EventDirections and conformance _EventDirections);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _EventDirections and conformance _EventDirections;
  if (!lazy protocol witness table cache variable for type _EventDirections and conformance _EventDirections)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _EventDirections, &type metadata for _EventDirections, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EventDirections and conformance _EventDirections);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _EventDirections and conformance _EventDirections;
  if (!lazy protocol witness table cache variable for type _EventDirections and conformance _EventDirections)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _EventDirections, &type metadata for _EventDirections, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EventDirections and conformance _EventDirections);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _EventDirections and conformance _EventDirections;
  if (!lazy protocol witness table cache variable for type _EventDirections and conformance _EventDirections)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _EventDirections, &type metadata for _EventDirections, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EventDirections and conformance _EventDirections);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MagnifyEvent and conformance MagnifyEvent()
{
  result = lazy protocol witness table cache variable for type MagnifyEvent and conformance MagnifyEvent;
  if (!lazy protocol witness table cache variable for type MagnifyEvent and conformance MagnifyEvent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MagnifyEvent, &type metadata for MagnifyEvent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MagnifyEvent and conformance MagnifyEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagnifyEvent and conformance MagnifyEvent;
  if (!lazy protocol witness table cache variable for type MagnifyEvent and conformance MagnifyEvent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MagnifyEvent, &type metadata for MagnifyEvent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MagnifyEvent and conformance MagnifyEvent);
  }

  return result;
}

__n128 (*protocol witness for SpatialEventType.location.modify in conformance MagnifyEvent(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *(v1 + 24);
  return protocol witness for SpatialEventType.location.modify in conformance MagnifyEvent;
}

__n128 protocol witness for SpatialEventType.location.modify in conformance MagnifyEvent(__n128 *a1)
{
  result = *a1;
  *(a1[1].n128_u64[0] + 24) = *a1;
  return result;
}

void protocol witness for EventType.init(_:) in conformance MagnifyEvent(uint64_t a3@<X8>)
{
  type metadata accessor for EventType();
  if (swift_dynamicCast())
  {
    v4 = v8;
    v5 = v10;
    v6 = v11;
    v7 = v12;
    *(a3 + 8) = v9;
  }

  else
  {
    outlined consume of WheelEvent?(0, 0, 1);
    v6 = 0uLL;
    v4 = 0;
    v7 = 0;
    *(a3 + 8) = 0;
    v5 = xmmword_18CD6A6D0;
  }

  *a3 = v4;
  *(a3 + 16) = v5;
  *(a3 + 32) = v6;
  *(a3 + 48) = v7;
}

uint64_t protocol witness for HitTestableEventType.hitTestLocation.getter in conformance MagnifyEvent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MagnifyEvent and conformance MagnifyEvent();

  return MEMORY[0x1EEDE1378](a1, a2, v4);
}

uint64_t protocol witness for HitTestableEventType.hitTestRadius.getter in conformance MagnifyEvent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MagnifyEvent and conformance MagnifyEvent();

  return MEMORY[0x1EEDE1370](a1, a2, v4);
}

uint64_t initializeWithCopy for MagnifyEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithCopy for MagnifyEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t assignWithTake for MagnifyEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for MagnifyEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for MagnifyEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

BOOL specialized static MagnifyEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a2 + 16);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  v12 = *(a2 + 40);
  if (!v5)
  {
    if (!v9)
    {
      if (v7 != v11 || v6 != v10 || v8 != v12)
      {
        return 0;
      }

      return *(a1 + 48) == *(a2 + 48);
    }

LABEL_18:

    return 0;
  }

  if (!v9)
  {
    goto LABEL_18;
  }

  if (v5 != v9)
  {
    return 0;
  }

  v14 = v7 == v11 && v6 == v10 && v8 == v12;
  result = 0;
  if (v14)
  {
    return *(a1 + 48) == *(a2 + 48);
  }

  return result;
}

uint64_t type metadata completion function for OptionButton(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for OptionButton(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (v5 & 0xFFFFFFFFFFFFFFF8) != 0 && (v5 & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFFFFFFFE8)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *(v3 + v5) = *(a2 + v5);
    v10 = (v3 + v5) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(v11 + 16);
    *(v10 + 8) = *(v11 + 8);
    *(v10 + 16) = v12;
  }

  return v3;
}

double destroy for OptionButton(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();

  return result;
}

uint64_t initializeWithCopy for OptionButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v7 &= 0xFFFFFFFFFFFFFFF8;
  v8 &= 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 16);
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 16) = v9;

  return a1;
}

uint64_t assignWithCopy for OptionButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v7 &= 0xFFFFFFFFFFFFFFF8;
  v8 &= 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 16);
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 16) = v9;

  return a1;
}

uint64_t initializeWithTake for OptionButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  *((v7 & 0xFFFFFFFFFFFFFFF8) + 8) = *((v8 & 0xFFFFFFFFFFFFFFF8) + 8);
  return a1;
}

uint64_t assignWithTake for OptionButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  *((v7 & 0xFFFFFFFFFFFFFFF8) + 8) = *((v8 & 0xFFFFFFFFFFFFFFF8) + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for OptionButton(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = (v6 & 0xFFFFFFFFFFFFFFF8) + 24;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *storeEnumTagSinglePayload for OptionButton(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 24;
  if ((v8 & 0xFFFFFFF8) == 0xFFFFFFE8)
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
    if ((v8 & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if ((v8 & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, (v8 & 0xFFFFFFFFFFFFFFF8) + 24);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
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
    v18 = (result + v8) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      *(v18 + 8) = a2 & 0x7FFFFFFF;
      *(v18 + 16) = 0;
    }

    else
    {
      *(v18 + 8) = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<CGFloat>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<CGFloat>);
    }
  }
}

unint64_t ScrollEventConverter.convert(_:in:)(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [a1 phase];
  if (v6 > 1)
  {
    v9 = v6;
    v10 = *v3;
    type metadata accessor for (UIScrollEvent, PanEvent)(0);
    v12 = v11;
    [a1 _adjustedAcceleratedDeltaInView_];
    v14 = v3[1] + v13;
    v15 = v3[2];
    v3[1] = v14;
    v3[2] = v16 + v15;
    [a1 locationInView_];
    [a1 timestamp];
    [a1 phase];
    PanEvent.init(globalLocation:phase:timestamp:globalTranslation:touchType:)();
    PanEvent.globalTranslation.getter();
    PanEvent.translation.setter();

    *&v23 = 0;
    if ((v9 & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      *v3 = v10 + 1;
      v3[1] = 0.0;
      v3[2] = 0.0;
    }

    type metadata accessor for _ContiguousArrayStorage<(EventID, PanEvent)>(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    *(inited + 32) = v12;
    v18 = inited + 32;
    *(inited + 40) = v10 ^ a1;
    *(inited + 112) = v24;
    *(inited + 128) = *v25;
    *(inited + 137) = *&v25[9];
    *(inited + 48) = v20;
    *(inited + 64) = v21;
    *(inited + 80) = v22;
    *(inited + 96) = v23;
    v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC03PanE0VTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (EventID, PanEvent)(v18);
    return v19;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];

    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC03PanE0VTt0g5Tf4g_n(v7);
  }
}

void type metadata accessor for (UIScrollEvent, PanEvent)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (UIScrollEvent, PanEvent))
  {
    type metadata accessor for UIScrollEvent();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UIScrollEvent, PanEvent));
    }
  }
}

unint64_t type metadata accessor for UIScrollEvent()
{
  result = lazy cache variable for type metadata for UIScrollEvent;
  if (!lazy cache variable for type metadata for UIScrollEvent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIScrollEvent);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<(EventID, PanEvent)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(EventID, PanEvent)>)
  {
    type metadata accessor for (EventID, PanEvent)();
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<(EventID, PanEvent)>);
    }
  }
}

void type metadata accessor for (EventID, PanEvent)()
{
  if (!lazy cache variable for type metadata for (EventID, PanEvent))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (EventID, PanEvent));
    }
  }
}

uint64_t outlined destroy of (EventID, PanEvent)(uint64_t a1)
{
  type metadata accessor for (EventID, PanEvent)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Section.create(isExpanded:content:header:footer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v29 = a4;
  v30 = a5;
  v32 = a3;
  v31 = a8;
  v13 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v26, v27, v22);
  (*(v17 + 16))(v20, v29, a7);
  (*(v13 + 16))(v15, v30, a9);
  Section.init(isExpanded:header:content:footer:)(a1, a2, v32, v24, v20, v15, a6, a7, v31, a9);
  return outlined copy of Binding<Int>?(a1, a2);
}

id PresentationHostingControllerBase.__allocating_init(rootView:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = specialized UIHostingController.init(rootView:)(a1);
  (*(*(*(v2 + 125) - 8) + 8))(a1);
  return v5;
}

id PresentationHostingControllerBase.init(coder:rootView:)(void *a1, uint64_t a2)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3E8);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - v8;
  (*(v6 + 16))(&v14 - v8, v7);
  v10 = UIHostingController.init(coder:rootView:)(a1, v9);
  v11 = *(v6 + 8);
  v12 = v10;
  v11(a2, v5);
  if (v10)
  {
  }

  return v10;
}

id PresentationHostingControllerBase.init(coder:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for PresentationHostingControllerBase(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x3E8), *((*MEMORY[0x1E69E7D40] & *v4) + 0x3F0), a4);
  v9.receiver = v4;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id PresentationHostingControllerBase.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PresentationHostingControllerBase(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x3E8), *((*MEMORY[0x1E69E7D40] & *v4) + 0x3F0), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t PresentationHostingController.HostingView.defaultBackgroundIsTransparent.getter()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x710);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 1);
    ObjectType = swift_getObjectType();
    LOBYTE(v3) = (*(v3 + 8))(ObjectType, v3);
    swift_unknownObjectRelease();
    return v3 & 1;
  }

  return result;
}

void *PresentationHostingController.HostingView.__allocating_init(rootView:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = specialized PresentationHostingController.HostingView.init(rootView:)(a1);
  (*(*(*(v2 + 224) - 8) + 8))(a1);
  return v5;
}

id PresentationHostingController.HostingView.init(coder:)(void *a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x710) + 8) = 0;
  swift_unknownObjectWeakInit();
  v6 = type metadata accessor for PresentationHostingController.HostingView(0, *((v4 & v3) + 0x700), *((v4 & v3) + 0x708), v5);
  v9.receiver = v1;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id PresentationHostingController.HostingView.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PresentationHostingController.HostingView(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x700), *((*MEMORY[0x1E69E7D40] & *v4) + 0x708), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t PresentationHostingController.defaultBackgroundIsTransparent.getter()
{
  PresentationHostingController.presentationKind.getter(&v3);
  if (!v3)
  {
    if (*(v0 + direct field offset for PresentationHostingController.placement) <= 3u)
    {
      if (*(v0 + direct field offset for PresentationHostingController.placement) > 1u)
      {
        if (*(v0 + direct field offset for PresentationHostingController.placement) != 2)
        {
          goto LABEL_3;
        }
      }

      else if (*(v0 + direct field offset for PresentationHostingController.placement))
      {
        goto LABEL_3;
      }
    }

LABEL_10:
    static _GraphInputs.defaultInterfaceIdiom.getter();
    v1 = static Solarium.isEnabled(for:)();
    return v1 & 1;
  }

  PresentationHostingController.presentationKind.getter(&v4);
  if (v4 != 3)
  {
    goto LABEL_10;
  }

LABEL_3:
  v1 = 0;
  return v1 & 1;
}

double @objc PresentationHostingController.preferredContentSize.getter(void *a1)
{
  v1 = a1;
  PresentationHostingController.preferredContentSize.getter();
  v3 = v2;

  return v3;
}

id PresentationHostingController.preferredContentSize.getter()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_preferredContentSize);
}

void @objc PresentationHostingController.preferredContentSize.setter(void *a1, double a2, double a3)
{
  v5 = a1;
  PresentationHostingController.preferredContentSize.setter(a2, a3);
}

void PresentationHostingController.preferredContentSize.setter(double a1, double a2)
{
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in PresentationHostingController.preferredContentSize.setter;
  *(v7 + 24) = v6;
  v11[4] = partial apply for thunk for @callee_guaranteed () -> ();
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_71;
  v8 = _Block_copy(v11);
  v9 = v2;

  [v5 performWithoutAnimation_];
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

id closure #1 in PresentationHostingController.preferredContentSize.setter(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for PresentationHostingController(0, *((*MEMORY[0x1E69E7D40] & *a1) + 0x408), *((*MEMORY[0x1E69E7D40] & *a1) + 0x410), a6);
  v11.receiver = a1;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, sel_setPreferredContentSize_, a2, a3);
}

void closure #1 in PresentationHostingController.sizingOptionsDidChange(from:)(uint64_t *a1, uint64_t a2)
{
  v3 = specialized UIHostingController.host.getter();
  _UIHostingView.viewGraph.getter(v3);

  _ProposedSize.init(width:height:)();
  swift_beginAccess();
  type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>(0);
  ViewGraphGeometryObservers.stopObserving(proposal:)();
  swift_endAccess();

  v4 = a2 + direct field offset for PresentationHostingController.observedSize;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
}

uint64_t PresentationHostingController.shouldUsePresentationSizing.getter()
{
  UIHostingController.sizingOptions.getter(v7);
  if (!v7[0] && (v3 = [v0 sheetPresentationController]) != 0 && (v4 = v3, v5 = objc_msgSend(v3, sel_presentationStyle), v4, v5 == 2))
  {
    v6 = &v0[direct field offset for PresentationHostingController.lastPresentationOptions];
    swift_beginAccess();
    if (*v6)
    {
      v1 = v6[136] ^ 1;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

id UIViewController.nonPresentedAncestor.getter()
{
  v1 = v0;
  v2 = [v1 presentingViewController];
  if (v2)
  {
    while (1)
    {
      v3 = v2;
      result = [v2 view];
      if (!result)
      {
        break;
      }

      v5 = result;
      v6 = [result window];

      if (!v6)
      {

        goto LABEL_7;
      }

      v2 = [v3 presentingViewController];
      v1 = v3;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_7:
  v3 = v1;
LABEL_8:
  v7 = [v3 parentViewController];
  if (v7)
  {
    while (1)
    {
      v8 = v7;
      result = [v7 view];
      if (!result)
      {
        break;
      }

      v9 = result;
      v10 = [result window];

      if (!v10)
      {

        return v3;
      }

      v7 = [v8 parentViewController];
      v3 = v8;
      if (!v7)
      {
        return v8;
      }
    }

LABEL_17:
    __break(1u);
    return result;
  }

  return v3;
}

void closure #2 in PresentationHostingController.sizingOptionsDidChange(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = direct field offset for PresentationHostingController.lastPresentationOptions;
    swift_beginAccess();
    if (*&v12[v13])
    {
      outlined init with copy of PresentationOptionsPreference(&v12[v13], &v51);
      type metadata accessor for EnvironmentPropertyKey<PresentationKind.Key>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
      lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
      if (static SemanticFeature.isEnabled.getter())
      {
        outlined init with copy of PresentationSizing?(&v59, &v46);
        if (v47)
        {
          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v46, &v64);
        }

        else
        {
          *(&v65 + 1) = &type metadata for AutomaticPresentationSizing;
          v66 = &protocol witness table for AutomaticPresentationSizing;
        }
      }

      else
      {
        v66 = 0;
        v64 = 0;
        v65 = 0u;
      }

      outlined destroy of PresentationOptionsPreference(&v51);
      if (*(&v65 + 1))
      {
        outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v64, v67);
        v14 = v12;
        v15 = [v14 presentingViewController];
        if (!v15)
        {

LABEL_27:
          __swift_destroy_boxed_opaque_existential_1(v67);
          return;
        }

        v16 = v15;
        v17 = UIViewController.nonPresentedAncestor.getter();
        v18 = [v17 view];

        if (!v18)
        {
          __break(1u);
          return;
        }

        v45 = *&v14[direct field offset for PresentationHostingController.lastColumnCount];
        ObjectType = swift_getObjectType();
        v51.receiver = v14;
        v51.super_class = ObjectType;
        objc_msgSendSuper2(&v51, sel_preferredContentSize);
        v21 = v20;
        v23 = v22;
        v24 = [v14 traitCollection];

        v25 = [v24 _environmentWrapper];
        if (v25)
        {
          v26 = v25;
          type metadata accessor for EnvironmentWrapper(0);
          if (swift_dynamicCastClass())
          {
            v44 = a6;
            v27 = a7;
            v28 = a4;
            v29 = a5;
            v30 = v16;
            v31 = v18;
            v32 = v26;
            dispatch thunk of ViewGraphHostEnvironmentWrapper.environment.getter();

            v18 = v31;
            v16 = v30;
            a5 = v29;
            a4 = v28;
            a7 = v27;
            a6 = v44;

            receiver = v51.receiver;
            super_class = v51.super_class;
            v64 = v51;
LABEL_26:
            v51.receiver = receiver;
            v51.super_class = super_class;
            EnvironmentValues.readableWidth.getter();
            v37 = v36;

            v50 = 0;
            v49 = 1;
            v48 = 1;
            outlined init with copy of _Benchmark(v67, &v51);
            v52 = v18;
            v53 = v45;
            v54 = v21;
            v55 = v23;
            v56 = 0;
            v57 = 0;
            v58 = 1;
            v59 = 0;
            v60 = 1;
            v61 = a4;
            v62 = a5;
            v63 = v37;
            specialized UIHostingController.host.getter();
            specialized UIHostingController.host.getter();
            v39 = type metadata accessor for _UIHostingView(255, a6, a7, v38);
            *(&v46 + 1) = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v39);
            swift_unknownObjectWeakInit();
            specialized SheetSizing.sheetSizeThatFits<A>(host:subview:)(&v46);
            v41 = v40;
            v43 = v42;
            outlined destroy of weak FallbackResponderProvider?(&v46);
            PresentationHostingController.preferredContentSize.setter(v41, v43);

            outlined destroy of SheetSizing(&v51);
            goto LABEL_27;
          }
        }

        EnvironmentValues.init()();
        v64 = v51;
        EnvironmentValues.configureForRoot()();
        v35 = v64.receiver;
        if (one-time initialization token for configuredForPlatform != -1)
        {
          swift_once();
        }

        if (v35)
        {
          if (!static EnvironmentValues.configuredForPlatform || v35 != static EnvironmentValues.configuredForPlatform)
          {
            goto LABEL_25;
          }
        }

        else if (static EnvironmentValues.configuredForPlatform)
        {
          goto LABEL_25;
        }

        EnvironmentValues.plist.setter();
LABEL_25:
        EnvironmentValues._configureForPlatform(traitCollection:)(v24);

        super_class = v64.super_class;
        receiver = v64.receiver;
        goto LABEL_26;
      }
    }

    else
    {

      v66 = 0;
      v64 = 0;
      v65 = 0u;
    }

    outlined destroy of PresentationSizing?(&v64);
  }
}

Class @objc PresentationHostingController.keyCommands.getter(void *a1)
{
  v1 = a1;
  v2 = PresentationHostingController.keyCommands.getter();

  if (v2)
  {
    type metadata accessor for UIKeyCommand();
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

uint64_t PresentationHostingController.keyCommands.getter()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v9, sel_keyCommands);
  if (v1)
  {
    v2 = v1;
    type metadata accessor for UIKeyCommand();
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  v10 = v3;
  v4 = *(v0 + direct field offset for PresentationHostingController.lastInteractiveDismissDisabled);
  static Semantics.v6_1.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (v4 & 1) == 0)
  {
    v5 = [objc_opt_self() keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel_escapeKeyPressed];
    v6 = v5;
    if (v3)
    {
      v7 = v5;
      MEMORY[0x18D00CC30]();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      return v10;
    }

    else
    {
      type metadata accessor for RemoteSheetContainerVCKey.Storage?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_18CD69590;
      *(v3 + 32) = v6;
    }
  }

  return v3;
}

void @objc PresentationHostingController.escapeKeyPressed()(void *a1)
{
  v1 = a1;
  protocol witness for PlatformFilePicker.dismiss() in conformance UIDocumentPickerViewController();
}

id closure #1 in PresentationHostingController._canShowWhileLocked()@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v5 = specialized UIHostingController.host.getter();
  _UIHostingView.viewGraph.getter(v5);

  GraphHost.preferenceValue<A>(_:)();

  if (v8 == 2)
  {
    v7.receiver = a1;
    v7.super_class = ObjectType;
    result = objc_msgSendSuper2(&v7, sel__canShowWhileLocked);
  }

  else
  {
    result = (v8 & 1);
  }

  *a2 = result;
  return result;
}

BOOL @objc PresentationHostingController._canShowWhileLocked()(void *a1)
{
  v1 = a1;
  canShowWhile = PresentationHostingController._canShowWhileLocked()();

  return canShowWhile;
}

double PresentationHostingController.willTransition(to:with:)(void *a1, void *a2)
{
  v13.receiver = v2;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_willTransitionToTraitCollection_withTransitionCoordinator_, a1, a2);
  v5 = &v2[direct field offset for PresentationHostingController.delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    if (((*(v7 + 24))(ObjectType, v7) & 1) != 0 && [a1 horizontalSizeClass] == 2)
    {
      (*(v7 + 32))(ObjectType, v7);
      v9 = swift_allocObject();
      *(v9 + 16) = v2;
      v12[4] = partial apply for closure #1 in PresentationHostingController.willTransition(to:with:);
      v12[5] = v9;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1107296256;
      v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
      v12[3] = &block_descriptor_28_0;
      v10 = _Block_copy(v12);
      v11 = v2;

      [a2 animateAlongsideTransition:v10 completion:0];
      _Block_release(v10);
    }

    swift_unknownObjectRelease();
  }

  return result;
}

void closure #1 in PresentationHostingController.willTransition(to:with:)(int a1, id a2)
{
  v3 = [a2 view];
  if (v3)
  {
    v4 = v3;
    [v3 setHidden_];

    v5 = swift_allocObject();
    *(v5 + 16) = a2;
    v8[4] = partial apply for closure #1 in closure #1 in PresentationHostingController.willTransition(to:with:);
    v8[5] = v5;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = thunk for @escaping @callee_guaranteed () -> ();
    v8[3] = &block_descriptor_34_1;
    v6 = _Block_copy(v8);
    v7 = a2;

    [v7 dismissViewControllerAnimated:0 completion:v6];
    _Block_release(v6);
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in closure #1 in PresentationHostingController.willTransition(to:with:)(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 setHidden_];
  }

  else
  {
    __break(1u);
  }
}

void @objc PresentationHostingController.willTransition(to:with:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  PresentationHostingController.willTransition(to:with:)(v6, a4);

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall PresentationHostingController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v17.receiver = v1;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_viewWillDisappear_, a1);
  v4 = direct field offset for PresentationHostingController.didPresenterLoseModifierRecursively;
  v5 = v1;
  v6 = [v5 presentingViewController];

  v7 = v5;
  if (v6)
  {
    v8 = v5;
    while (1)
    {
      v10 = swift_dynamicCastClass();
      if (!v10)
      {
        break;
      }

      v7 = v10;

      if (v7[direct field offset for PresentationHostingController.didPresenterLoseModifierRecursively] == 1)
      {
        v2[v4] = 1;
      }

      v9 = v6;
      v6 = [v7 presentingViewController];

      v8 = v7;
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    v7 = v8;
  }

LABEL_8:
  if ([v5 isBeingDismissed])
  {
    v11 = [v5 transitionCoordinator];
    if (v11)
    {
      v12 = v11;
      if ([v11 isInteractive])
      {
        v13 = swift_allocObject();
        *(v13 + 16) = v5;
        v16[4] = partial apply for closure #1 in PresentationHostingController.viewWillDisappear(_:);
        v16[5] = v13;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 1107296256;
        v16[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
        v16[3] = &block_descriptor_22_1;
        v14 = _Block_copy(v16);
        v15 = v5;

        [v12 notifyWhenInteractionChangesUsingBlock_];

        _Block_release(v14);
        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
    }
  }
}

double closure #1 in PresentationHostingController.viewWillDisappear(_:)(void *a1, uint64_t a2)
{
  if (([a1 isInteractive] & 1) == 0 && (objc_msgSend(a1, sel_isCancelled) & 1) == 0)
  {
    v5 = a2 + direct field offset for PresentationHostingController.delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(a2, ObjectType, v6);

      swift_unknownObjectRelease();
    }
  }

  return result;
}

void @objc PresentationHostingController.viewWillDisappear(_:)(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  PresentationHostingController.viewWillDisappear(_:)(a3);
}

Swift::Void __swiftcall PresentationHostingController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewDidDisappear_, a1);
  if ([v2 isBeingDismissed])
  {
    v4 = &v2[direct field offset for PresentationHostingController.delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 1);
      ObjectType = swift_getObjectType();
      (*(v5 + 16))(v2, v2[direct field offset for PresentationHostingController.wasPreempted], v2[direct field offset for PresentationHostingController.didPresenterLoseModifierRecursively], ObjectType, v5);
      swift_unknownObjectRelease();
    }

    v7 = &v2[direct field offset for PresentationHostingController.secondaryDismissDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 1);
      v9 = swift_getObjectType();
      (*(v8 + 8))(v2, v2[direct field offset for PresentationHostingController.wasPreempted], v9, v8);
      swift_unknownObjectRelease();
    }

    *(v7 + 1) = 0;
    swift_unknownObjectWeakAssign();
  }

  v2[direct field offset for PresentationHostingController.didPresenterLoseModifierRecursively] = 0;
}

void @objc PresentationHostingController.viewDidDisappear(_:)(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  PresentationHostingController.viewDidDisappear(_:)(a3);
}

uint64_t closure #1 in PresentationHostingController.configureDetents(of:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = PresentationOptionsPreference.differenceMessage(from:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void closure #1 in PresentationHostingController.updateDetentsSelection(of:using:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in closure #1 in PresentationHostingController.updateDetentsSelection(of:using:);
  *(v5 + 24) = v4;
  v9[4] = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_44_0;
  v6 = _Block_copy(v9);
  v7 = a1;
  v8 = a2;

  [v7 animateChanges_];
  _Block_release(v6);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }
}

void PresentationHostingController.update(_:)(uint64_t *a1)
{
  PresentationHostingController.presentationKind.getter(&v3);
  type metadata accessor for EnvironmentPropertyKey<PresentationKind.Key>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationKind.Key>, &type metadata for PresentationKind.Key, &protocol witness table for PresentationKind.Key, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationKind.Key> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  v2 = a1[1];
  if (v2)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  LOBYTE(v3) = 3;
  type metadata accessor for EnvironmentPropertyKey<PresentationKind.Key>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey>, &type metadata for ContainerBackgroundKeys.HasContainerBackgroundPlacementKey, &protocol witness table for ContainerBackgroundKeys.HasContainerBackgroundPlacementKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v2)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  specialized UIHostingController.host.getter();
  LOBYTE(v3) = _UIHostingView.wantsTransparentBackground.getter();
  type metadata accessor for EnvironmentPropertyKey<PresentationKind.Key>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentPresentation>, &type metadata for ContainerBackgroundKeys.TransparentPresentation, &protocol witness table for ContainerBackgroundKeys.TransparentPresentation, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentPresentation> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v2)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  if (EnvironmentValues.isVisionEnabled.getter())
  {
    v3 = 0uLL;
    EnvironmentValues.backgroundInfo.setter();
    v3 = xmmword_18CD6E1E0;
    EnvironmentValues.backgroundMaterial.setter();
  }

  UIHostingController.update(_:)(a1);
}

id @objc PresentationHostingController._showcaseView.getter(void *a1)
{
  v1 = a1;
  v2 = PresentationHostingController._showcaseView.getter();

  return v2;
}

id PresentationHostingController._showcaseView.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = specialized UIHostingController.host.getter();
  v5 = type metadata accessor for _UIHostingView(0, *((v2 & v1) + 0x408), *((v2 & v1) + 0x410), v4);
  v6 = v3;
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v5);
  ViewRendererHost.preferenceValue<A>(_:)();

  if (v13 == 1)
  {
    outlined destroy of PresentationOptionsPreference?(v12, &lazy cache variable for type metadata for _NavigationTransitionOutputs?, &type metadata for _NavigationTransitionOutputs);
  }

  else
  {
    outlined init with copy of _NavigationTransitionOutputs.Content(v12, v11);
    outlined destroy of _NavigationTransitionOutputs(v12);
    v12[0] = *v11;
    v12[1] = *&v11[16];
    v13 = *&v11[32];
    outlined init with copy of _NavigationTransitionOutputs.Content(v12, v11);
    if (*&v11[32])
    {
      v9[0] = *&v11[8];
      v9[1] = *&v11[24];
      v10 = *&v11[40];
      v7 = UIHostingController.findMatchedTransitionDestinationView<A>(id:namespace:)(v9, *v11, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0]);
      outlined destroy of AnyHashable(v9);
      outlined destroy of _NavigationTransitionOutputs.Content(v12);
      return v7;
    }

    outlined destroy of _NavigationTransitionOutputs.Content(v12);
  }

  return 0;
}

double PresentationHostingController.__ivar_destroyer()
{
  outlined destroy of weak FallbackResponderProvider?(v0 + direct field offset for PresentationHostingController.delegate);
  outlined destroy of weak FallbackResponderProvider?(v0 + direct field offset for PresentationHostingController.secondaryDismissDelegate);
  outlined destroy of PresentationOptionsPreference?(v0 + direct field offset for PresentationHostingController.lastPresentationOptions, &lazy cache variable for type metadata for PresentationOptionsPreference?, &type metadata for PresentationOptionsPreference);
  outlined destroy of PresentationOptionsPreference?(v0 + direct field offset for PresentationHostingController.lastPreferenceForSheetControllerConfiguration, &lazy cache variable for type metadata for PresentationOptionsPreference?, &type metadata for PresentationOptionsPreference);

  return result;
}

double @objc PresentationHostingController.__ivar_destroyer(uint64_t a1)
{
  outlined destroy of weak FallbackResponderProvider?(a1 + direct field offset for PresentationHostingController.delegate);
  outlined destroy of weak FallbackResponderProvider?(a1 + direct field offset for PresentationHostingController.secondaryDismissDelegate);
  outlined destroy of PresentationOptionsPreference?(a1 + direct field offset for PresentationHostingController.lastPresentationOptions, &lazy cache variable for type metadata for PresentationOptionsPreference?, &type metadata for PresentationOptionsPreference);
  outlined destroy of PresentationOptionsPreference?(a1 + direct field offset for PresentationHostingController.lastPreferenceForSheetControllerConfiguration, &lazy cache variable for type metadata for PresentationOptionsPreference?, &type metadata for PresentationOptionsPreference);

  return result;
}

unint64_t lazy protocol witness table accessor for type PresentationHostingControllerPresenterKind and conformance PresentationHostingControllerPresenterKind()
{
  result = lazy protocol witness table cache variable for type PresentationHostingControllerPresenterKind and conformance PresentationHostingControllerPresenterKind;
  if (!lazy protocol witness table cache variable for type PresentationHostingControllerPresenterKind and conformance PresentationHostingControllerPresenterKind)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PresentationHostingControllerPresenterKind, &type metadata for PresentationHostingControllerPresenterKind, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationHostingControllerPresenterKind and conformance PresentationHostingControllerPresenterKind);
  }

  return result;
}

void specialized PresentationDimmingBehavior.setLargestUndimmedDetentIdentifier(of:detents:)(void *a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v4 = [objc_opt_self() largeDetent];
    v5 = [v4 identifier];

    v6 = [objc_opt_self() appearanceWithSmallestDimmedDetentIdentifier_];
    [a1 _setStandardAppearance_];
  }

  else
  {

    [a1 setLargestUndimmedDetentIdentifier_];
  }
}

void *specialized PresentationHostingController.HostingView.init(rootView:)(uint64_t a1)
{
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x710) + 8) = 0;
  swift_unknownObjectWeakInit();

  return specialized _UIHostingView.init(rootView:)(a1, v3);
}

void specialized PresentationHostingController.init(rootView:)()
{
  *(v0 + direct field offset for PresentationHostingController.delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + direct field offset for PresentationHostingController.secondaryDismissDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + direct field offset for PresentationHostingController.bridgedPresentationWantsTransparentBackground) = 0;
  *(v0 + direct field offset for PresentationHostingController.presentingBridgeKind) = 3;
  *(v0 + direct field offset for PresentationHostingController.placement) = 7;
  *(v0 + direct field offset for PresentationHostingController.lastColumnCount) = 0;
  *(v0 + direct field offset for PresentationHostingController.lastInteractiveDismissDisabled) = 2;
  *(v0 + direct field offset for PresentationHostingController.didPresenterLoseModifierRecursively) = 0;
  *(v0 + direct field offset for PresentationHostingController.wasPreempted) = 0;
  v1 = (v0 + direct field offset for PresentationHostingController.lastPresentationOptions);
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  v1[4] = 0u;
  v1[5] = 0u;
  v1[6] = 0u;
  v1[7] = 0u;
  *(v1 + 122) = 0u;
  v2 = (v0 + direct field offset for PresentationHostingController.lastPreferenceForSheetControllerConfiguration);
  *v2 = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  v2[3] = 0u;
  v2[4] = 0u;
  v2[5] = 0u;
  v2[6] = 0u;
  v2[7] = 0u;
  *(v2 + 122) = 0u;
  v3 = v0 + direct field offset for PresentationHostingController.observedSize;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  *(v0 + direct field offset for PresentationHostingController.isDelayingRemotePresentation) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized PresentationHostingController.init(coder:)()
{
  *(v0 + direct field offset for PresentationHostingController.delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + direct field offset for PresentationHostingController.secondaryDismissDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + direct field offset for PresentationHostingController.bridgedPresentationWantsTransparentBackground) = 0;
  *(v0 + direct field offset for PresentationHostingController.presentingBridgeKind) = 3;
  *(v0 + direct field offset for PresentationHostingController.placement) = 7;
  *(v0 + direct field offset for PresentationHostingController.lastColumnCount) = 0;
  *(v0 + direct field offset for PresentationHostingController.lastInteractiveDismissDisabled) = 2;
  *(v0 + direct field offset for PresentationHostingController.didPresenterLoseModifierRecursively) = 0;
  *(v0 + direct field offset for PresentationHostingController.wasPreempted) = 0;
  v1 = (v0 + direct field offset for PresentationHostingController.lastPresentationOptions);
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  v1[4] = 0u;
  v1[5] = 0u;
  v1[6] = 0u;
  v1[7] = 0u;
  *(v1 + 122) = 0u;
  v2 = (v0 + direct field offset for PresentationHostingController.lastPreferenceForSheetControllerConfiguration);
  *v2 = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  v2[3] = 0u;
  v2[4] = 0u;
  v2[5] = 0u;
  v2[6] = 0u;
  v2[7] = 0u;
  *(v2 + 122) = 0u;
  v3 = v0 + direct field offset for PresentationHostingController.observedSize;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  *(v0 + direct field offset for PresentationHostingController.isDelayingRemotePresentation) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void type metadata accessor for PresentationSizing?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t outlined destroy of PresentationOptionsPreference?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for RemoteSheetContainerVCKey.Storage?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t assignWithCopy for PresentationState(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    outlined destroy of PresentationState.Base(a1);
    v4 = *(a2 + 234);
    if (v4 <= 5)
    {
      if (*(a2 + 234) <= 2u)
      {
        if (!*(a2 + 234))
        {
          *a1 = *a2;
          v17 = *(a2 + 1);

          if (v17)
          {
            v18 = *(a2 + 2);
            *(a1 + 8) = v17;
            *(a1 + 16) = v18;
          }

          else
          {
            *(a1 + 8) = *(a2 + 8);
          }

          *(a1 + 24) = *(a2 + 3);
          v66 = *(a2 + 7);
          if (v66)
          {
            *(a1 + 56) = v66;
            *(a1 + 64) = *(a2 + 8);
            (**(v66 - 8))(a1 + 32, a2 + 2);
          }

          else
          {
            v70 = a2[2];
            v71 = a2[3];
            *(a1 + 64) = *(a2 + 8);
            *(a1 + 32) = v70;
            *(a1 + 48) = v71;
          }

          *(a1 + 72) = *(a2 + 72);
          *(a1 + 73) = *(a2 + 73);
          *(a1 + 80) = *(a2 + 10);
          *(a1 + 88) = *(a2 + 11);
          *(a1 + 96) = *(a2 + 12);
          *(a1 + 104) = *(a2 + 104);
          *(a1 + 105) = *(a2 + 105);
          v72 = *(a2 + 14);
          *(a1 + 112) = v72;
          *(a1 + 120) = *(a2 + 30);
          *(a1 + 234) = 0;
          goto LABEL_98;
        }

        if (v4 != 1)
        {
          v5 = *a2;
          *a1 = *a2;
          *(a1 + 8) = *(a2 + 1);
          v6 = *(a2 + 2);
          v7 = v5;

          if (v6)
          {
            v8 = *(a2 + 3);
            *(a1 + 16) = v6;
            *(a1 + 24) = v8;
          }

          else
          {
            *(a1 + 16) = a2[1];
          }

          *(a1 + 32) = *(a2 + 4);
          v46 = *(a2 + 8);
          if (v46)
          {
            *(a1 + 64) = v46;
            *(a1 + 72) = *(a2 + 9);
            (**(v46 - 8))(a1 + 40, a2 + 40);
          }

          else
          {
            v50 = *(a2 + 40);
            v51 = *(a2 + 56);
            *(a1 + 72) = *(a2 + 9);
            *(a1 + 56) = v51;
            *(a1 + 40) = v50;
          }

          *(a1 + 80) = *(a2 + 80);
          *(a1 + 81) = *(a2 + 81);
          *(a1 + 88) = *(a2 + 11);
          *(a1 + 96) = *(a2 + 12);
          *(a1 + 104) = *(a2 + 13);
          *(a1 + 112) = *(a2 + 112);
          *(a1 + 113) = *(a2 + 113);
          v52 = 2;
LABEL_103:
          *(a1 + 234) = v52;

          return a1;
        }

        *a1 = *a2;
        v27 = *(a2 + 1);

        if (v27)
        {
          v28 = *(a2 + 2);
          *(a1 + 8) = v27;
          *(a1 + 16) = v28;
        }

        else
        {
          *(a1 + 8) = *(a2 + 8);
        }

        *(a1 + 24) = *(a2 + 3);
        v80 = *(a2 + 7);
        if (v80)
        {
          *(a1 + 56) = v80;
          *(a1 + 64) = *(a2 + 8);
          (**(v80 - 8))(a1 + 32, a2 + 2);
        }

        else
        {
          v83 = a2[2];
          v84 = a2[3];
          *(a1 + 64) = *(a2 + 8);
          *(a1 + 32) = v83;
          *(a1 + 48) = v84;
        }

        *(a1 + 72) = *(a2 + 72);
        *(a1 + 73) = *(a2 + 73);
        *(a1 + 80) = *(a2 + 10);
        *(a1 + 88) = *(a2 + 11);
        *(a1 + 96) = *(a2 + 12);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 105) = *(a2 + 105);
        v72 = *(a2 + 14);
        *(a1 + 112) = v72;
        *(a1 + 120) = *(a2 + 30);
        v79 = 1;
LABEL_97:
        *(a1 + 234) = v79;
LABEL_98:

        v85 = v72;
        return a1;
      }

      switch(v4)
      {
        case 3u:
          v21 = *a2;
          *a1 = *a2;
          *(a1 + 8) = *(a2 + 1);
          v22 = *(a2 + 2);
          v23 = v21;

          if (v22)
          {
            v24 = *(a2 + 3);
            *(a1 + 16) = v22;
            *(a1 + 24) = v24;
          }

          else
          {
            *(a1 + 16) = a2[1];
          }

          *(a1 + 32) = *(a2 + 4);
          v68 = *(a2 + 8);
          if (v68)
          {
            *(a1 + 64) = v68;
            *(a1 + 72) = *(a2 + 9);
            (**(v68 - 8))(a1 + 40, a2 + 40);
          }

          else
          {
            v75 = *(a2 + 40);
            v76 = *(a2 + 56);
            *(a1 + 72) = *(a2 + 9);
            *(a1 + 56) = v76;
            *(a1 + 40) = v75;
          }

          *(a1 + 80) = *(a2 + 80);
          *(a1 + 81) = *(a2 + 81);
          *(a1 + 88) = *(a2 + 11);
          *(a1 + 96) = *(a2 + 12);
          *(a1 + 104) = *(a2 + 13);
          *(a1 + 112) = *(a2 + 112);
          *(a1 + 113) = *(a2 + 113);
          v52 = 3;
          goto LABEL_103;
        case 4u:
          *a1 = *a2;
          v31 = *(a2 + 1);

          if (v31)
          {
            v32 = *(a2 + 2);
            *(a1 + 8) = v31;
            *(a1 + 16) = v32;
          }

          else
          {
            *(a1 + 8) = *(a2 + 8);
          }

          *(a1 + 24) = *(a2 + 3);
          v81 = *(a2 + 7);
          if (v81)
          {
            *(a1 + 56) = v81;
            *(a1 + 64) = *(a2 + 8);
            (**(v81 - 8))(a1 + 32, a2 + 2);
          }

          else
          {
            v86 = a2[2];
            v87 = a2[3];
            *(a1 + 64) = *(a2 + 8);
            *(a1 + 32) = v86;
            *(a1 + 48) = v87;
          }

          *(a1 + 72) = *(a2 + 72);
          *(a1 + 73) = *(a2 + 73);
          *(a1 + 80) = *(a2 + 10);
          *(a1 + 88) = *(a2 + 11);
          *(a1 + 96) = *(a2 + 12);
          *(a1 + 104) = *(a2 + 104);
          *(a1 + 105) = *(a2 + 105);
          v52 = 4;
          goto LABEL_103;
        case 5u:
          v11 = *a2;
          *a1 = *a2;
          *(a1 + 8) = *(a2 + 1);
          v12 = *(a2 + 2);
          v13 = v11;

          if (v12)
          {
            v14 = *(a2 + 3);
            *(a1 + 16) = v12;
            *(a1 + 24) = v14;
          }

          else
          {
            *(a1 + 16) = a2[1];
          }

          *(a1 + 32) = *(a2 + 4);
          v48 = *(a2 + 8);
          if (v48)
          {
            *(a1 + 64) = v48;
            *(a1 + 72) = *(a2 + 9);
            (**(v48 - 8))(a1 + 40, a2 + 40);
          }

          else
          {
            v59 = *(a2 + 40);
            v60 = *(a2 + 56);
            *(a1 + 72) = *(a2 + 9);
            *(a1 + 56) = v60;
            *(a1 + 40) = v59;
          }

          *(a1 + 80) = *(a2 + 80);
          *(a1 + 81) = *(a2 + 81);
          *(a1 + 88) = *(a2 + 11);
          *(a1 + 96) = *(a2 + 12);
          *(a1 + 104) = *(a2 + 13);
          *(a1 + 112) = *(a2 + 112);
          *(a1 + 113) = *(a2 + 113);
          v52 = 5;
          goto LABEL_103;
      }

      goto LABEL_39;
    }

    if (*(a2 + 234) > 8u)
    {
      switch(v4)
      {
        case 9u:
          *a1 = *a2;
          v25 = *(a2 + 1);

          if (v25)
          {
            v26 = *(a2 + 2);
            *(a1 + 8) = v25;
            *(a1 + 16) = v26;
          }

          else
          {
            *(a1 + 8) = *(a2 + 8);
          }

          *(a1 + 24) = *(a2 + 3);
          v69 = *(a2 + 7);
          if (v69)
          {
            *(a1 + 56) = v69;
            *(a1 + 64) = *(a2 + 8);
            (**(v69 - 8))(a1 + 32, a2 + 2);
          }

          else
          {
            v77 = a2[2];
            v78 = a2[3];
            *(a1 + 64) = *(a2 + 8);
            *(a1 + 32) = v77;
            *(a1 + 48) = v78;
          }

          *(a1 + 72) = *(a2 + 72);
          *(a1 + 73) = *(a2 + 73);
          *(a1 + 80) = *(a2 + 10);
          *(a1 + 88) = *(a2 + 11);
          *(a1 + 96) = *(a2 + 12);
          *(a1 + 104) = *(a2 + 104);
          *(a1 + 105) = *(a2 + 105);
          v72 = *(a2 + 14);
          *(a1 + 112) = v72;
          *(a1 + 120) = *(a2 + 120);
          v79 = 9;
          goto LABEL_97;
        case 0xAu:
          *a1 = *a2;
          v33 = *(a2 + 1);

          if (v33)
          {
            v34 = *(a2 + 2);
            *(a1 + 8) = v33;
            *(a1 + 16) = v34;
          }

          else
          {
            *(a1 + 8) = *(a2 + 8);
          }

          *(a1 + 24) = *(a2 + 3);
          v82 = *(a2 + 7);
          if (v82)
          {
            *(a1 + 56) = v82;
            *(a1 + 64) = *(a2 + 8);
            (**(v82 - 8))(a1 + 32, a2 + 2);
          }

          else
          {
            v88 = a2[2];
            v89 = a2[3];
            *(a1 + 64) = *(a2 + 8);
            *(a1 + 32) = v88;
            *(a1 + 48) = v89;
          }

          *(a1 + 72) = *(a2 + 72);
          *(a1 + 73) = *(a2 + 73);
          *(a1 + 80) = *(a2 + 10);
          *(a1 + 88) = *(a2 + 11);
          *(a1 + 96) = *(a2 + 12);
          *(a1 + 104) = *(a2 + 104);
          *(a1 + 105) = *(a2 + 105);
          *(a1 + 106) = *(a2 + 106);
          v52 = 10;
          goto LABEL_103;
        case 0xBu:
          *a1 = *a2;
          v15 = *(a2 + 1);

          if (v15)
          {
            v16 = *(a2 + 2);
            *(a1 + 8) = v15;
            *(a1 + 16) = v16;
          }

          else
          {
            *(a1 + 8) = *(a2 + 8);
          }

          *(a1 + 24) = *(a2 + 3);
          v49 = *(a2 + 7);
          if (v49)
          {
            *(a1 + 56) = v49;
            *(a1 + 64) = *(a2 + 8);
            (**(v49 - 8))(a1 + 32, a2 + 2);
          }

          else
          {
            v61 = a2[2];
            v62 = a2[3];
            *(a1 + 64) = *(a2 + 8);
            *(a1 + 32) = v61;
            *(a1 + 48) = v62;
          }

          *(a1 + 72) = *(a2 + 72);
          *(a1 + 73) = *(a2 + 73);
          *(a1 + 80) = *(a2 + 10);
          *(a1 + 88) = *(a2 + 11);
          *(a1 + 96) = *(a2 + 12);
          *(a1 + 104) = *(a2 + 104);
          *(a1 + 105) = *(a2 + 105);
          v52 = 11;
          goto LABEL_103;
      }

      goto LABEL_39;
    }

    if (v4 == 6)
    {
      *a1 = *a2;
      v19 = *(a2 + 1);

      if (v19)
      {
        v20 = *(a2 + 2);
        *(a1 + 8) = v19;
        *(a1 + 16) = v20;
      }

      else
      {
        *(a1 + 8) = *(a2 + 8);
      }

      *(a1 + 24) = *(a2 + 3);
      v67 = *(a2 + 7);
      if (v67)
      {
        *(a1 + 56) = v67;
        *(a1 + 64) = *(a2 + 8);
        (**(v67 - 8))(a1 + 32, a2 + 2);
      }

      else
      {
        v73 = a2[2];
        v74 = a2[3];
        *(a1 + 64) = *(a2 + 8);
        *(a1 + 32) = v73;
        *(a1 + 48) = v74;
      }

      *(a1 + 72) = *(a2 + 72);
      *(a1 + 73) = *(a2 + 73);
      *(a1 + 80) = *(a2 + 10);
      *(a1 + 88) = *(a2 + 11);
      *(a1 + 96) = *(a2 + 12);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 105) = *(a2 + 105);
      v52 = 6;
      goto LABEL_103;
    }

    if (v4 != 7)
    {
      if (v4 == 8)
      {
        *a1 = *a2;
        v9 = *(a2 + 1);

        if (v9)
        {
          v10 = *(a2 + 2);
          *(a1 + 8) = v9;
          *(a1 + 16) = v10;
        }

        else
        {
          *(a1 + 8) = *(a2 + 8);
        }

        *(a1 + 24) = *(a2 + 3);
        v47 = *(a2 + 7);
        if (v47)
        {
          *(a1 + 56) = v47;
          *(a1 + 64) = *(a2 + 8);
          (**(v47 - 8))(a1 + 32, a2 + 2);
        }

        else
        {
          v53 = a2[2];
          v54 = a2[3];
          *(a1 + 64) = *(a2 + 8);
          *(a1 + 32) = v53;
          *(a1 + 48) = v54;
        }

        *(a1 + 72) = *(a2 + 72);
        *(a1 + 73) = *(a2 + 73);
        *(a1 + 80) = *(a2 + 10);
        *(a1 + 88) = *(a2 + 11);
        *(a1 + 96) = *(a2 + 12);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 105) = *(a2 + 105);
        v55 = *(a2 + 14);
        *(a1 + 112) = v55;
        *(a1 + 120) = *(a2 + 120);
        *(a1 + 128) = *(a2 + 16);
        v56 = *(a2 + 17);

        v57 = v55;

        if (v56)
        {
          v58 = *(a2 + 18);
          *(a1 + 136) = v56;
          *(a1 + 144) = v58;
        }

        else
        {
          *(a1 + 136) = *(a2 + 136);
        }

        *(a1 + 152) = *(a2 + 19);
        v63 = *(a2 + 23);
        if (v63)
        {
          *(a1 + 184) = v63;
          *(a1 + 192) = *(a2 + 24);
          (**(v63 - 8))(a1 + 160, a2 + 10);
        }

        else
        {
          v64 = a2[10];
          v65 = a2[11];
          *(a1 + 192) = *(a2 + 24);
          *(a1 + 160) = v64;
          *(a1 + 176) = v65;
        }

        *(a1 + 200) = *(a2 + 200);
        *(a1 + 201) = *(a2 + 201);
        *(a1 + 208) = *(a2 + 26);
        *(a1 + 216) = *(a2 + 27);
        *(a1 + 224) = *(a2 + 28);
        *(a1 + 232) = *(a2 + 232);
        *(a1 + 233) = *(a2 + 233);
        v52 = 8;
        goto LABEL_103;
      }

LABEL_39:
      v35 = *a2;
      v36 = a2[2];
      *(a1 + 16) = a2[1];
      *(a1 + 32) = v36;
      *a1 = v35;
      v37 = a2[3];
      v38 = a2[4];
      v39 = a2[6];
      *(a1 + 80) = a2[5];
      *(a1 + 96) = v39;
      *(a1 + 48) = v37;
      *(a1 + 64) = v38;
      v40 = a2[7];
      v41 = a2[8];
      v42 = a2[10];
      *(a1 + 144) = a2[9];
      *(a1 + 160) = v42;
      *(a1 + 112) = v40;
      *(a1 + 128) = v41;
      v43 = a2[11];
      v44 = a2[12];
      v45 = a2[13];
      *(a1 + 219) = *(a2 + 219);
      *(a1 + 192) = v44;
      *(a1 + 208) = v45;
      *(a1 + 176) = v43;
      return a1;
    }

    v29 = *a2;
    *a1 = *a2;
    *(a1 + 234) = 7;
    v30 = v29;
  }

  return a1;
}

__n128 __swift_memcpy235_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 219) = *(a2 + 219);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

_OWORD *assignWithTake for PresentationState(_OWORD *result, _OWORD *a2)
{
  if (result != a2)
  {
    v3 = result;
    outlined destroy of PresentationState.Base(result);
    v4 = a2[13];
    v3[12] = a2[12];
    v3[13] = v4;
    *(v3 + 219) = *(a2 + 219);
    v5 = a2[9];
    v3[8] = a2[8];
    v3[9] = v5;
    v6 = a2[11];
    v3[10] = a2[10];
    v3[11] = v6;
    v7 = a2[5];
    v3[4] = a2[4];
    v3[5] = v7;
    v8 = a2[7];
    v3[6] = a2[6];
    v3[7] = v8;
    v9 = a2[1];
    *v3 = *a2;
    v3[1] = v9;
    v10 = a2[3];
    v3[2] = a2[2];
    v3[3] = v10;
    return v3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PresentationState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 235))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 234);
  if (v3 <= 0xC)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PresentationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
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
    *(result + 234) = 0;
    *(result + 232) = 0;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 235) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 235) = 0;
    }

    if (a2)
    {
      *(result + 234) = -a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for PresentationState.Base(uint64_t a1, uint64_t *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = *(a1 + 234);
  if (v4 >= 0xC)
  {
    v4 = *a1 + 12;
  }

  if (v4 > 5)
  {
    if (v4 > 8)
    {
      if (v4 == 9)
      {
LABEL_35:

        if (*(a1 + 8))
        {
        }

        if (*(a1 + 56))
        {
          __swift_destroy_boxed_opaque_existential_1((a1 + 32));
        }

        v5 = *(a1 + 112);
        goto LABEL_41;
      }

      if (v4 != 10 && v4 != 11)
      {
        goto LABEL_42;
      }
    }

    else if (v4 != 6)
    {
      if (v4 != 7)
      {

        if (*(a1 + 8))
        {
        }

        if (*(a1 + 56))
        {
          __swift_destroy_boxed_opaque_existential_1((a1 + 32));
        }

        if (*(a1 + 136))
        {
        }

        if (*(a1 + 184))
        {
          __swift_destroy_boxed_opaque_existential_1((a1 + 160));
        }

        goto LABEL_34;
      }

      v5 = *a1;
LABEL_41:

      goto LABEL_42;
    }

LABEL_30:

    if (*(a1 + 8))
    {
    }

    if (*(a1 + 56))
    {
      __swift_destroy_boxed_opaque_existential_1((a1 + 32));
    }

    goto LABEL_34;
  }

  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 != 2)
      {
        goto LABEL_42;
      }

      goto LABEL_22;
    }

    goto LABEL_35;
  }

  if (v4 == 4)
  {
    goto LABEL_30;
  }

LABEL_22:

  if (*(a1 + 16))
  {
  }

  if (*(a1 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 40));
  }

LABEL_34:

LABEL_42:
  v6 = *(a2 + 234);
  if (v6 >= 0xC)
  {
    v6 = *a2 + 12;
  }

  if (v6 <= 5)
  {
    if (v6 > 2)
    {
      if (v6 == 3)
      {
        v23 = *a2;
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        v24 = a2[2];
        v25 = v23;

        if (v24)
        {
          v26 = a2[3];
          *(a1 + 16) = v24;
          *(a1 + 24) = v26;
        }

        else
        {
          *(a1 + 16) = *(a2 + 1);
        }

        *(a1 + 32) = a2[4];
        v70 = a2[8];
        if (v70)
        {
          *(a1 + 64) = v70;
          *(a1 + 72) = a2[9];
          (**(v70 - 8))(a1 + 40, a2 + 5);
        }

        else
        {
          v77 = *(a2 + 5);
          v78 = *(a2 + 7);
          *(a1 + 72) = a2[9];
          *(a1 + 56) = v78;
          *(a1 + 40) = v77;
        }

        *(a1 + 80) = *(a2 + 80);
        *(a1 + 81) = *(a2 + 81);
        *(a1 + 88) = a2[11];
        *(a1 + 96) = a2[12];
        *(a1 + 104) = a2[13];
        *(a1 + 112) = *(a2 + 112);
        *(a1 + 113) = *(a2 + 113);
        v54 = 3;
      }

      else if (v6 == 4)
      {
        *a1 = *a2;
        v33 = a2[1];

        if (v33)
        {
          v34 = a2[2];
          *(a1 + 8) = v33;
          *(a1 + 16) = v34;
        }

        else
        {
          *(a1 + 8) = *(a2 + 1);
        }

        *(a1 + 24) = a2[3];
        v83 = a2[7];
        if (v83)
        {
          *(a1 + 56) = v83;
          *(a1 + 64) = a2[8];
          (**(v83 - 8))(a1 + 32, a2 + 4);
        }

        else
        {
          v88 = *(a2 + 2);
          v89 = *(a2 + 3);
          *(a1 + 64) = a2[8];
          *(a1 + 32) = v88;
          *(a1 + 48) = v89;
        }

        *(a1 + 72) = *(a2 + 72);
        *(a1 + 73) = *(a2 + 73);
        *(a1 + 80) = a2[10];
        *(a1 + 88) = a2[11];
        *(a1 + 96) = a2[12];
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 105) = *(a2 + 105);
        v54 = 4;
      }

      else
      {
        v13 = *a2;
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        v14 = a2[2];
        v15 = v13;

        if (v14)
        {
          v16 = a2[3];
          *(a1 + 16) = v14;
          *(a1 + 24) = v16;
        }

        else
        {
          *(a1 + 16) = *(a2 + 1);
        }

        *(a1 + 32) = a2[4];
        v50 = a2[8];
        if (v50)
        {
          *(a1 + 64) = v50;
          *(a1 + 72) = a2[9];
          (**(v50 - 8))(a1 + 40, a2 + 5);
        }

        else
        {
          v61 = *(a2 + 5);
          v62 = *(a2 + 7);
          *(a1 + 72) = a2[9];
          *(a1 + 56) = v62;
          *(a1 + 40) = v61;
        }

        *(a1 + 80) = *(a2 + 80);
        *(a1 + 81) = *(a2 + 81);
        *(a1 + 88) = a2[11];
        *(a1 + 96) = a2[12];
        *(a1 + 104) = a2[13];
        *(a1 + 112) = *(a2 + 112);
        *(a1 + 113) = *(a2 + 113);
        v54 = 5;
      }

      goto LABEL_144;
    }

    if (!v6)
    {
      *a1 = *a2;
      v19 = a2[1];

      if (v19)
      {
        v20 = a2[2];
        *(a1 + 8) = v19;
        *(a1 + 16) = v20;
      }

      else
      {
        *(a1 + 8) = *(a2 + 1);
      }

      *(a1 + 24) = a2[3];
      v68 = a2[7];
      if (v68)
      {
        *(a1 + 56) = v68;
        *(a1 + 64) = a2[8];
        (**(v68 - 8))(a1 + 32, a2 + 4);
      }

      else
      {
        v72 = *(a2 + 2);
        v73 = *(a2 + 3);
        *(a1 + 64) = a2[8];
        *(a1 + 32) = v72;
        *(a1 + 48) = v73;
      }

      *(a1 + 72) = *(a2 + 72);
      *(a1 + 73) = *(a2 + 73);
      *(a1 + 80) = a2[10];
      *(a1 + 88) = a2[11];
      *(a1 + 96) = a2[12];
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 105) = *(a2 + 105);
      v74 = a2[14];
      *(a1 + 112) = v74;
      *(a1 + 120) = *(a2 + 30);
      *(a1 + 234) = 0;
      goto LABEL_139;
    }

    if (v6 != 1)
    {
      if (v6 == 2)
      {
        v7 = *a2;
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        v8 = a2[2];
        v9 = v7;

        if (v8)
        {
          v10 = a2[3];
          *(a1 + 16) = v8;
          *(a1 + 24) = v10;
        }

        else
        {
          *(a1 + 16) = *(a2 + 1);
        }

        *(a1 + 32) = a2[4];
        v48 = a2[8];
        if (v48)
        {
          *(a1 + 64) = v48;
          *(a1 + 72) = a2[9];
          (**(v48 - 8))(a1 + 40, a2 + 5);
        }

        else
        {
          v52 = *(a2 + 5);
          v53 = *(a2 + 7);
          *(a1 + 72) = a2[9];
          *(a1 + 56) = v53;
          *(a1 + 40) = v52;
        }

        *(a1 + 80) = *(a2 + 80);
        *(a1 + 81) = *(a2 + 81);
        *(a1 + 88) = a2[11];
        *(a1 + 96) = a2[12];
        *(a1 + 104) = a2[13];
        *(a1 + 112) = *(a2 + 112);
        *(a1 + 113) = *(a2 + 113);
        v54 = 2;
LABEL_144:
        *(a1 + 234) = v54;

        return a1;
      }

      goto LABEL_80;
    }

    *a1 = *a2;
    v29 = a2[1];

    if (v29)
    {
      v30 = a2[2];
      *(a1 + 8) = v29;
      *(a1 + 16) = v30;
    }

    else
    {
      *(a1 + 8) = *(a2 + 1);
    }

    *(a1 + 24) = a2[3];
    v82 = a2[7];
    if (v82)
    {
      *(a1 + 56) = v82;
      *(a1 + 64) = a2[8];
      (**(v82 - 8))(a1 + 32, a2 + 4);
    }

    else
    {
      v85 = *(a2 + 2);
      v86 = *(a2 + 3);
      *(a1 + 64) = a2[8];
      *(a1 + 32) = v85;
      *(a1 + 48) = v86;
    }

    *(a1 + 72) = *(a2 + 72);
    *(a1 + 73) = *(a2 + 73);
    *(a1 + 80) = a2[10];
    *(a1 + 88) = a2[11];
    *(a1 + 96) = a2[12];
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 105) = *(a2 + 105);
    v74 = a2[14];
    *(a1 + 112) = v74;
    *(a1 + 120) = *(a2 + 30);
    v81 = 1;
LABEL_138:
    *(a1 + 234) = v81;
LABEL_139:

    v87 = v74;
    return a1;
  }

  if (v6 > 8)
  {
    if (v6 != 9)
    {
      if (v6 == 10)
      {
        *a1 = *a2;
        v35 = a2[1];

        if (v35)
        {
          v36 = a2[2];
          *(a1 + 8) = v35;
          *(a1 + 16) = v36;
        }

        else
        {
          *(a1 + 8) = *(a2 + 1);
        }

        *(a1 + 24) = a2[3];
        v84 = a2[7];
        if (v84)
        {
          *(a1 + 56) = v84;
          *(a1 + 64) = a2[8];
          (**(v84 - 8))(a1 + 32, a2 + 4);
        }

        else
        {
          v90 = *(a2 + 2);
          v91 = *(a2 + 3);
          *(a1 + 64) = a2[8];
          *(a1 + 32) = v90;
          *(a1 + 48) = v91;
        }

        *(a1 + 72) = *(a2 + 72);
        *(a1 + 73) = *(a2 + 73);
        *(a1 + 80) = a2[10];
        *(a1 + 88) = a2[11];
        *(a1 + 96) = a2[12];
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 105) = *(a2 + 105);
        *(a1 + 106) = *(a2 + 106);
        v54 = 10;
        goto LABEL_144;
      }

      if (v6 == 11)
      {
        *a1 = *a2;
        v17 = a2[1];

        if (v17)
        {
          v18 = a2[2];
          *(a1 + 8) = v17;
          *(a1 + 16) = v18;
        }

        else
        {
          *(a1 + 8) = *(a2 + 1);
        }

        *(a1 + 24) = a2[3];
        v51 = a2[7];
        if (v51)
        {
          *(a1 + 56) = v51;
          *(a1 + 64) = a2[8];
          (**(v51 - 8))(a1 + 32, a2 + 4);
        }

        else
        {
          v63 = *(a2 + 2);
          v64 = *(a2 + 3);
          *(a1 + 64) = a2[8];
          *(a1 + 32) = v63;
          *(a1 + 48) = v64;
        }

        *(a1 + 72) = *(a2 + 72);
        *(a1 + 73) = *(a2 + 73);
        *(a1 + 80) = a2[10];
        *(a1 + 88) = a2[11];
        *(a1 + 96) = a2[12];
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 105) = *(a2 + 105);
        v54 = 11;
        goto LABEL_144;
      }

LABEL_80:
      v37 = *a2;
      v38 = *(a2 + 2);
      *(a1 + 16) = *(a2 + 1);
      *(a1 + 32) = v38;
      *a1 = v37;
      v39 = *(a2 + 3);
      v40 = *(a2 + 4);
      v41 = *(a2 + 6);
      *(a1 + 80) = *(a2 + 5);
      *(a1 + 96) = v41;
      *(a1 + 48) = v39;
      *(a1 + 64) = v40;
      v42 = *(a2 + 7);
      v43 = *(a2 + 8);
      v44 = *(a2 + 10);
      *(a1 + 144) = *(a2 + 9);
      *(a1 + 160) = v44;
      *(a1 + 112) = v42;
      *(a1 + 128) = v43;
      v45 = *(a2 + 11);
      v46 = *(a2 + 12);
      v47 = *(a2 + 13);
      *(a1 + 219) = *(a2 + 219);
      *(a1 + 192) = v46;
      *(a1 + 208) = v47;
      *(a1 + 176) = v45;
      return a1;
    }

    *a1 = *a2;
    v27 = a2[1];

    if (v27)
    {
      v28 = a2[2];
      *(a1 + 8) = v27;
      *(a1 + 16) = v28;
    }

    else
    {
      *(a1 + 8) = *(a2 + 1);
    }

    *(a1 + 24) = a2[3];
    v71 = a2[7];
    if (v71)
    {
      *(a1 + 56) = v71;
      *(a1 + 64) = a2[8];
      (**(v71 - 8))(a1 + 32, a2 + 4);
    }

    else
    {
      v79 = *(a2 + 2);
      v80 = *(a2 + 3);
      *(a1 + 64) = a2[8];
      *(a1 + 32) = v79;
      *(a1 + 48) = v80;
    }

    *(a1 + 72) = *(a2 + 72);
    *(a1 + 73) = *(a2 + 73);
    *(a1 + 80) = a2[10];
    *(a1 + 88) = a2[11];
    *(a1 + 96) = a2[12];
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 105) = *(a2 + 105);
    v74 = a2[14];
    *(a1 + 112) = v74;
    *(a1 + 120) = *(a2 + 120);
    v81 = 9;
    goto LABEL_138;
  }

  if (v6 == 6)
  {
    *a1 = *a2;
    v21 = a2[1];

    if (v21)
    {
      v22 = a2[2];
      *(a1 + 8) = v21;
      *(a1 + 16) = v22;
    }

    else
    {
      *(a1 + 8) = *(a2 + 1);
    }

    *(a1 + 24) = a2[3];
    v69 = a2[7];
    if (v69)
    {
      *(a1 + 56) = v69;
      *(a1 + 64) = a2[8];
      (**(v69 - 8))(a1 + 32, a2 + 4);
    }

    else
    {
      v75 = *(a2 + 2);
      v76 = *(a2 + 3);
      *(a1 + 64) = a2[8];
      *(a1 + 32) = v75;
      *(a1 + 48) = v76;
    }

    *(a1 + 72) = *(a2 + 72);
    *(a1 + 73) = *(a2 + 73);
    *(a1 + 80) = a2[10];
    *(a1 + 88) = a2[11];
    *(a1 + 96) = a2[12];
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 105) = *(a2 + 105);
    v54 = 6;
    goto LABEL_144;
  }

  if (v6 != 7)
  {
    *a1 = *a2;
    v11 = a2[1];

    if (v11)
    {
      v12 = a2[2];
      *(a1 + 8) = v11;
      *(a1 + 16) = v12;
    }

    else
    {
      *(a1 + 8) = *(a2 + 1);
    }

    *(a1 + 24) = a2[3];
    v49 = a2[7];
    if (v49)
    {
      *(a1 + 56) = v49;
      *(a1 + 64) = a2[8];
      (**(v49 - 8))(a1 + 32, a2 + 4);
    }

    else
    {
      v55 = *(a2 + 2);
      v56 = *(a2 + 3);
      *(a1 + 64) = a2[8];
      *(a1 + 32) = v55;
      *(a1 + 48) = v56;
    }

    *(a1 + 72) = *(a2 + 72);
    *(a1 + 73) = *(a2 + 73);
    *(a1 + 80) = a2[10];
    *(a1 + 88) = a2[11];
    *(a1 + 96) = a2[12];
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 105) = *(a2 + 105);
    v57 = a2[14];
    *(a1 + 112) = v57;
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 128) = a2[16];
    v58 = a2[17];

    v59 = v57;

    if (v58)
    {
      v60 = a2[18];
      *(a1 + 136) = v58;
      *(a1 + 144) = v60;
    }

    else
    {
      *(a1 + 136) = *(a2 + 17);
    }

    *(a1 + 152) = a2[19];
    v65 = a2[23];
    if (v65)
    {
      *(a1 + 184) = v65;
      *(a1 + 192) = a2[24];
      (**(v65 - 8))(a1 + 160, a2 + 20);
    }

    else
    {
      v66 = *(a2 + 10);
      v67 = *(a2 + 11);
      *(a1 + 192) = a2[24];
      *(a1 + 160) = v66;
      *(a1 + 176) = v67;
    }

    *(a1 + 200) = *(a2 + 200);
    *(a1 + 201) = *(a2 + 201);
    *(a1 + 208) = a2[26];
    *(a1 + 216) = a2[27];
    *(a1 + 224) = a2[28];
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 233) = *(a2 + 233);
    v54 = 8;
    goto LABEL_144;
  }

  v31 = *a2;
  *a1 = *a2;
  *(a1 + 234) = 7;
  v32 = v31;
  return a1;
}

uint64_t getEnumTagSinglePayload for PresentationState.Base(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 235))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 234);
  if (v3 >= 0xD)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PresentationState.Base(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 219) = 0u;
    *(result + 192) = 0u;
    *(result + 208) = 0u;
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 235) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 235) = 0;
    }

    if (a2)
    {
      *(result + 234) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for PresentationState.Base(uint64_t a1)
{
  result = *(a1 + 234);
  if (result >= 0xC)
  {
    return (*a1 + 12);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for PresentationState.Base(uint64_t result, unsigned int a2)
{
  if (a2 > 0xB)
  {
    *(result + 218) = 0u;
    *(result + 192) = 0u;
    *(result + 208) = 0u;
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 12;
    LOBYTE(a2) = 12;
  }

  *(result + 234) = a2;
  return result;
}

Swift::Void __swiftcall PresentationState.dismiss(willPresentAgain:hasNoModifier:)(Swift::Bool willPresentAgain, Swift::Bool hasNoModifier)
{
  outlined init with copy of PresentationState.Base(v2, v11);
  if (v15 > 7u)
  {
    if (v15 == 8)
    {

      outlined destroy of SheetPreference(&v14);
    }

    else
    {
      if (v15 != 9)
      {
LABEL_12:
        outlined destroy of PresentationState.Base(v11);
        return;
      }
    }

LABEL_14:
    outlined destroy of SheetPreference(v11);
    return;
  }

  if (v15 >= 2u)
  {
    if (v15 != 4)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v5 = v13;
  v20 = v11[4];
  v21[0] = v12[0];
  *(v21 + 10) = *(v12 + 10);
  v16 = v11[0];
  v17 = v11[1];
  v18 = v11[2];
  v19 = v11[3];
  if (hasNoModifier && (type metadata accessor for _SemanticFeature<Semantics_v6>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]), lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>(), (static SemanticFeature.isEnabled.getter() & 1) != 0))
  {

    v6 = 4;
    v7 = v11;
  }

  else
  {
    v7 = (v11 + 8);
    *&v11[0] = v5;
    if (willPresentAgain)
    {
      v6 = 5;
    }

    else
    {
      v6 = 2;
    }
  }

  v8 = v21[0];
  v7[4] = v20;
  v7[5] = v8;
  *(v7 + 90) = *(v21 + 10);
  v9 = v17;
  *v7 = v16;
  v7[1] = v9;
  v10 = v19;
  v7[2] = v18;
  v7[3] = v10;
  v15 = v6;
  PresentationState.base.willset(v11);
  outlined assign with take of PresentationState.Base(v11, v2);
}

uint64_t PresentationState.isDismissingFromSheetBridge.getter()
{
  outlined init with copy of PresentationState.Base(v0, &v3);
  result = 0;
  switch(v6[106])
  {
    case 2:
    case 3:
    case 5:

      v2 = &v4;
      goto LABEL_8;
    case 4:
      goto LABEL_7;
    case 6:
    case 0xA:
      goto LABEL_3;
    case 7:
    case 0xB:
      outlined destroy of PresentationState.Base(&v3);
      return 0;
    case 8:

      outlined destroy of SheetPreference(v6);
LABEL_7:
      v2 = &v3;
LABEL_8:
      outlined destroy of SheetPreference(v2);
      result = 1;
      break;
    case 0xC:
      return result;
    default:

LABEL_3:
      outlined destroy of SheetPreference(&v3);
      result = 0;
      break;
  }

  return result;
}

uint64_t PresentationState.isDismissalPreemptable.getter()
{
  outlined init with copy of PresentationState.Base(v0, &v3);
  result = 0;
  switch(v6[106])
  {
    case 2:
    case 3:

      outlined destroy of SheetPreference(v4);
      return 1;
    case 4:
    case 6:
    case 0xA:
      goto LABEL_7;
    case 5:

      v2 = v4;
      goto LABEL_8;
    case 7:
    case 0xB:
      outlined destroy of PresentationState.Base(&v3);
      return 0;
    case 8:

      outlined destroy of SheetPreference(v6);
      goto LABEL_7;
    case 0xC:
      return result;
    default:

LABEL_7:
      v2 = &v3;
LABEL_8:
      outlined destroy of SheetPreference(v2);
      return 0;
  }
}

uint64_t PresentationState.enqueueDelayedPresentation_IsDismissing(_:animated:)(uint64_t a1, char a2)
{
  PresentationState.Base.lastPresentation.getter(v6);
  if (!*&v6[0])
  {
    return _ss11AnyHashableVSgWOhTm_3(v6, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
  }

  v11[4] = v6[4];
  v12[0] = v7[0];
  *(v12 + 10) = *(v7 + 10);
  v11[0] = v6[0];
  v11[1] = v6[1];
  v11[2] = v6[2];
  v11[3] = v6[3];
  outlined init with copy of SheetPreference(a1, v6);
  v8 = PresentationState.Base.presentedVC.getter();
  v9 = a2 & 1;
  outlined init with copy of SheetPreference(v11, v10);
  v10[106] = 8;
  PresentationState.base.willset(v6);
  outlined destroy of SheetPreference(v11);
  return outlined assign with take of PresentationState.Base(v6, v2);
}

void PresentationState.delayedPresentation.getter(uint64_t a1@<X8>)
{
  outlined init with copy of PresentationState.Base(v1, &v12);
  switch(v22)
  {
    case 10:
      v8 = v18;
      goto LABEL_7;
    case 9:

      v8 = v20;
LABEL_7:
      v9 = *v17;
      *(a1 + 64) = v16;
      *(a1 + 80) = v9;
      *(a1 + 90) = *&v17[10];
      v10 = v13;
      *a1 = v12;
      *(a1 + 16) = v10;
      v11 = v15;
      *(a1 + 32) = v14;
      *(a1 + 48) = v11;
      *(a1 + 112) = 0;
      *(a1 + 120) = v8;
      return;
    case 8:
      v3 = v19;
      v4 = v20;
      v5 = *v17;
      *(a1 + 64) = v16;
      *(a1 + 80) = v5;
      *(a1 + 90) = *&v17[10];
      v6 = v13;
      *a1 = v12;
      *(a1 + 16) = v6;
      v7 = v15;
      *(a1 + 32) = v14;
      *(a1 + 48) = v7;
      *(a1 + 112) = v3;
      *(a1 + 120) = v4;
      outlined destroy of SheetPreference(&v21);
      break;
    default:
      *(a1 + 105) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      outlined destroy of PresentationState.Base(&v12);
      break;
  }
}

Swift::Void __swiftcall PresentationState.presentationDidBeginInteractiveDismissal()()
{
  outlined init with copy of PresentationState.Base(v0, v5);
  if (v7 > 6u)
  {
    if (v7 > 9u)
    {
      if (v7 == 10)
      {
        goto LABEL_15;
      }

      if (v7 != 11)
      {
        return;
      }
    }

    else if (v7 != 7)
    {
      if (v7 == 8)
      {

        outlined destroy of SheetPreference(&v6);
      }

      else
      {
      }

      goto LABEL_15;
    }

    outlined destroy of PresentationState.Base(v5);
    return;
  }

  if (v7 <= 3u)
  {
    if (v7 < 2u)
    {
      v1 = *&v5[64];
      v12 = *&v5[64];
      v13[0] = *&v5[80];
      *(v13 + 10) = *&v5[90];
      v2 = *v5;
      v8 = *v5;
      v9 = *&v5[16];
      v3 = *&v5[32];
      v10 = *&v5[32];
      v11 = *&v5[48];
      *v5 = *&v5[112];
      *&v5[56] = *&v5[48];
      *&v5[72] = v1;
      *&v5[88] = v13[0];
      *&v5[98] = *(v13 + 10);
      *&v5[8] = v2;
      *&v5[24] = v9;
      *&v5[40] = v3;
      v7 = 3;
      PresentationState.base.willset(v5);
      outlined assign with take of PresentationState.Base(v5, v0);
      return;
    }

    goto LABEL_10;
  }

  if (v7 != 5)
  {
LABEL_15:
    v4 = v5;
    goto LABEL_16;
  }

LABEL_10:

  v4 = &v5[8];
LABEL_16:
  outlined destroy of SheetPreference(v4);
}

Swift::Void __swiftcall PresentationState.presentationDidDisappear()()
{
  outlined init with copy of PresentationState.Base(v0, &v10);
  switch(v18)
  {
    case 2:
    case 3:

      v1 = &v10 + 8;
      goto LABEL_6;
    case 4:
    case 6:
    case 10:
      goto LABEL_3;
    case 5:
      *&v3 = v10;
      v9 = 7;
      PresentationState.base.willset(&v3);
      outlined assign with take of PresentationState.Base(&v3, v0);
      outlined destroy of SheetPreference(&v10 + 8);
      return;
    case 7:
    case 11:
      outlined destroy of PresentationState.Base(&v10);
      goto LABEL_7;
    case 8:

      v7 = v14;
      v8[0] = v15[0];
      *(v8 + 10) = *(v15 + 10);
      v3 = v10;
      v4 = v11;
      v5 = v12;
      v6 = v13;
      outlined destroy of SheetPreference(v17);
      goto LABEL_12;
    case 9:

      v7 = v14;
      v8[0] = v15[0];
      *(v8 + 10) = *(v15 + 10);
      v3 = v10;
      v4 = v11;
      v5 = v12;
      v6 = v13;
LABEL_12:
      v14 = v7;
      v15[0] = v8[0];
      *(v15 + 10) = *(v8 + 10);
      v10 = v3;
      v11 = v4;
      v12 = v5;
      v13 = v6;
      v2 = 11;
      goto LABEL_8;
    case 12:
      goto LABEL_7;
    default:

LABEL_3:
      v1 = &v10;
LABEL_6:
      outlined destroy of SheetPreference(v1);
LABEL_7:
      memset(v17, 0, sizeof(v17));
      v16 = 0u;
      v14 = 0u;
      memset(v15, 0, sizeof(v15));
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v2 = 12;
LABEL_8:
      v18 = v2;
      PresentationState.base.willset(&v10);
      outlined assign with take of PresentationState.Base(&v10, v0);
      return;
  }
}

Swift::Void __swiftcall PresentationState.dismissInspector()()
{
  outlined init with copy of PresentationState.Base(v0, v1);
  if (v4 >= 2u)
  {
    if (v4 == 6)
    {
      outlined destroy of SheetPreference(v1);
    }

    else
    {
      outlined destroy of PresentationState.Base(v1);
    }
  }

  else
  {

    *(v10 + 10) = *&v2[10];
    v9 = v1[4];
    v10[0] = *v2;
    v7 = v1[2];
    v8 = v1[3];
    v5 = v1[0];
    v6 = v1[1];
    *&v2[10] = *(v10 + 10);
    v4 = 6;
    PresentationState.base.willset(v1);
    outlined assign with take of PresentationState.Base(v1, v0);
  }
}

uint64_t PresentationState.Base.description.getter()
{
  outlined init with copy of PresentationState.Base(v0, v83);
  v1 = 0xEE006E6F69746174;
  v2 = 0x6E65736572506F6ELL;
  switch(v91)
  {
    case 1:
      v3 = *&v83[112];
      v4 = v84;
      v81 = *&v83[64];
      v82[0] = *&v83[80];
      *(v82 + 10) = *&v83[90];
      v77 = *v83;
      v78 = *&v83[16];
      v79 = *&v83[32];
      v80 = *&v83[48];
      *&v75[0] = 0;
      *(&v75[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      *&v56 = 0x65746E6573657270;
      *(&v56 + 1) = 0xEA00000000002864;
      outlined init with copy of SheetPreference(&v77, v75);
      outlined init with copy of SheetPreference?(v75, &v63, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      if (v63)
      {
        v73 = v67;
        v74[0] = v68[0];
        *(v74 + 10) = *(v68 + 10);
        v69 = v63;
        v70 = v64;
        v71 = v65;
        v72 = v66;
        *&v63 = *(&v64 + 1);
        v25 = String.init<A>(describing:)();
        v27 = v26;
        outlined destroy of SheetPreference(&v69);
        _ss11AnyHashableVSgWOhTm_3(v75, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      }

      else
      {
        v25 = 7104878;
        _ss11AnyHashableVSgWOhTm_3(&v63, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
        _ss11AnyHashableVSgWOhTm_3(v75, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
        v27 = 0xE300000000000000;
      }

      MEMORY[0x18D00C9B0](v25, v27);

      MEMORY[0x18D00C9B0](0x6E6573657270202CLL, 0xEF203A4356646574);
      *&v75[0] = v3;
      v49 = String.init<A>(describing:)();
      MEMORY[0x18D00C9B0](v49);

      MEMORY[0x18D00C9B0](0x203A646565732029, 0xE800000000000000);
      if (v4 == -1)
      {
        goto LABEL_58;
      }

      if (v4)
      {
        goto LABEL_57;
      }

      goto LABEL_53;
    case 2:
      v12 = 7104878;
      v13 = *v83;
      v81 = *&v83[72];
      v82[0] = *&v83[88];
      *(v82 + 10) = *&v83[98];
      v77 = *&v83[8];
      v78 = *&v83[24];
      v79 = *&v83[40];
      v80 = *&v83[56];
      *&v75[0] = 0;
      *(&v75[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(40);

      *&v56 = 0xD00000000000001BLL;
      *(&v56 + 1) = 0x800000018CD56B90;
      if (!v13)
      {
        goto LABEL_14;
      }

      goto LABEL_7;
    case 3:
      v12 = 7104878;
      v13 = *v83;
      v81 = *&v83[72];
      v82[0] = *&v83[88];
      *(v82 + 10) = *&v83[98];
      v77 = *&v83[8];
      v78 = *&v83[24];
      v79 = *&v83[40];
      v80 = *&v83[56];
      *&v75[0] = 0;
      *(&v75[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      *&v56 = 0xD000000000000018;
      *(&v56 + 1) = 0x800000018CD56B70;
      if (v13)
      {
LABEL_7:
        *&v75[0] = v13;
        v14 = String.init<A>(describing:)();
        v16 = v15;
      }

      else
      {
LABEL_14:
        v16 = 0xE300000000000000;
        v14 = 7104878;
      }

      MEMORY[0x18D00C9B0](v14, v16);

      MEMORY[0x18D00C9B0](0x203A7473616C202CLL, 0xE800000000000000);
      outlined init with copy of SheetPreference(&v77, v75);
      outlined init with copy of SheetPreference?(v75, &v63, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      if (!v63)
      {
        goto LABEL_60;
      }

      goto LABEL_24;
    case 4:
      v81 = *&v83[64];
      v82[0] = *&v83[80];
      *(v82 + 10) = *&v83[90];
      v77 = *v83;
      v78 = *&v83[16];
      v79 = *&v83[32];
      v80 = *&v83[48];
      *&v75[0] = 0;
      *(&v75[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      v17 = 0x800000018CD56B50;
      v18 = 0xD00000000000001CLL;
      goto LABEL_19;
    case 5:
      v13 = *v83;
      v81 = *&v83[72];
      v82[0] = *&v83[88];
      *(v82 + 10) = *&v83[98];
      v77 = *&v83[8];
      v78 = *&v83[24];
      v79 = *&v83[40];
      v80 = *&v83[56];
      *(&v75[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      *&v56 = 0xD000000000000019;
      *(&v56 + 1) = 0x800000018CD56B30;
      *&v75[0] = v13;
      v31 = String.init<A>(describing:)();
      MEMORY[0x18D00C9B0](v31);

      MEMORY[0x18D00C9B0](0x203A7473616C202CLL, 0xE800000000000000);
      outlined init with copy of SheetPreference(&v77, v75);
      outlined init with copy of SheetPreference?(v75, &v63, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      if (v63)
      {
LABEL_24:
        v73 = v67;
        v74[0] = v68[0];
        *(v74 + 10) = *(v68 + 10);
        v69 = v63;
        v70 = v64;
        v71 = v65;
        v72 = v66;
        *&v63 = *(&v64 + 1);
        v12 = String.init<A>(describing:)();
        v33 = v32;
        outlined destroy of SheetPreference(&v69);
        _ss11AnyHashableVSgWOhTm_3(v75, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      }

      else
      {
        v12 = 7104878;
LABEL_60:
        _ss11AnyHashableVSgWOhTm_3(&v63, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
        _ss11AnyHashableVSgWOhTm_3(v75, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
        v33 = 0xE300000000000000;
      }

      MEMORY[0x18D00C9B0](v12, v33);

      MEMORY[0x18D00C9B0](41, 0xE100000000000000);

      goto LABEL_71;
    case 6:
      v81 = *&v83[64];
      v82[0] = *&v83[80];
      *(v82 + 10) = *&v83[90];
      v77 = *v83;
      v78 = *&v83[16];
      v79 = *&v83[32];
      v80 = *&v83[48];
      *&v75[0] = 0;
      *(&v75[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(20);

      v17 = 0x800000018CD56A10;
      v18 = 0xD000000000000011;
      goto LABEL_19;
    case 7:
      v38 = *v83;
      _StringGuts.grow(_:)(25);

      *&v77 = 0xD000000000000016;
      *(&v77 + 1) = 0x800000018CD56B10;
      *&v75[0] = v38;
      v39 = String.init<A>(describing:)();
      MEMORY[0x18D00C9B0](v39);

      MEMORY[0x18D00C9B0](41, 0xE100000000000000);

      v1 = 0x800000018CD56B10;
      v2 = 0xD000000000000016;
      goto LABEL_73;
    case 8:
      v19 = 7104878;
      v20 = *&v83[112];
      v21 = v84;
      v81 = *&v83[64];
      v82[0] = *&v83[80];
      *(v82 + 10) = *&v83[90];
      v77 = *v83;
      v78 = *&v83[16];
      v79 = *&v83[32];
      v80 = *&v83[48];
      v75[4] = v89;
      v76[0] = *v90;
      *(v76 + 10) = *&v90[10];
      v75[0] = v85;
      v75[1] = v86;
      v75[2] = v87;
      v75[3] = v88;
      *&v69 = 0;
      *(&v69 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(80);
      v62 = v69;
      MEMORY[0x18D00C9B0](0xD000000000000024, 0x800000018CD56AE0);
      outlined init with copy of SheetPreference(&v77, &v69);
      outlined init with copy of SheetPreference?(&v69, &v56, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      if (v56)
      {
        v67 = v60;
        v68[0] = v61[0];
        *(v68 + 10) = *(v61 + 10);
        v63 = v56;
        v64 = v57;
        v65 = v58;
        v66 = v59;
        *&v56 = *(&v57 + 1);
        v22 = String.init<A>(describing:)();
        v24 = v23;
        outlined destroy of SheetPreference(&v63);
        _ss11AnyHashableVSgWOhTm_3(&v69, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      }

      else
      {
        _ss11AnyHashableVSgWOhTm_3(&v56, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
        _ss11AnyHashableVSgWOhTm_3(&v69, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
        v24 = 0xE300000000000000;
        v22 = 7104878;
      }

      MEMORY[0x18D00C9B0](v22, v24);

      MEMORY[0x18D00C9B0](0x6E6573657270202CLL, 0xEF203A4356646574);
      if (v20)
      {
        *&v69 = v20;
        v42 = String.init<A>(describing:)();
        v44 = v43;
      }

      else
      {
        v44 = 0xE300000000000000;
        v42 = 7104878;
      }

      MEMORY[0x18D00C9B0](v42, v44);

      MEMORY[0x18D00C9B0](0x74616D696E61202CLL, 0xEC000000203A6465);
      if (v21)
      {
        v45 = 1702195828;
      }

      else
      {
        v45 = 0x65736C6166;
      }

      if (v21)
      {
        v46 = 0xE400000000000000;
      }

      else
      {
        v46 = 0xE500000000000000;
      }

      MEMORY[0x18D00C9B0](v45, v46);

      MEMORY[0x18D00C9B0](0x203A7473616C202CLL, 0xE800000000000000);
      outlined init with copy of SheetPreference(v75, &v69);
      outlined init with copy of SheetPreference?(&v69, &v56, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      if (v56)
      {
        v67 = v60;
        v68[0] = v61[0];
        *(v68 + 10) = *(v61 + 10);
        v63 = v56;
        v64 = v57;
        v65 = v58;
        v66 = v59;
        *&v56 = *(&v57 + 1);
        v19 = String.init<A>(describing:)();
        v48 = v47;
        outlined destroy of SheetPreference(&v63);
        _ss11AnyHashableVSgWOhTm_3(&v69, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      }

      else
      {
        _ss11AnyHashableVSgWOhTm_3(&v56, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
        _ss11AnyHashableVSgWOhTm_3(&v69, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
        v48 = 0xE300000000000000;
      }

      MEMORY[0x18D00C9B0](v19, v48);

      MEMORY[0x18D00C9B0](41, 0xE100000000000000);

      v1 = *(&v62 + 1);
      v2 = v62;
      outlined destroy of SheetPreference(v75);
      goto LABEL_72;
    case 9:
      v3 = *&v83[112];
      v34 = v84;
      v81 = *&v83[64];
      v82[0] = *&v83[80];
      *(v82 + 10) = *&v83[90];
      v77 = *v83;
      v78 = *&v83[16];
      v79 = *&v83[32];
      v80 = *&v83[48];
      *&v75[0] = 0;
      *(&v75[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(84);
      v56 = v75[0];
      MEMORY[0x18D00C9B0](0xD000000000000033, 0x800000018CD56AA0);
      outlined init with copy of SheetPreference(&v77, v75);
      outlined init with copy of SheetPreference?(v75, &v63, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      if (v63)
      {
        v73 = v67;
        v74[0] = v68[0];
        *(v74 + 10) = *(v68 + 10);
        v69 = v63;
        v70 = v64;
        v71 = v65;
        v72 = v66;
        *&v63 = *(&v64 + 1);
        v35 = String.init<A>(describing:)();
        v37 = v36;
        outlined destroy of SheetPreference(&v69);
        _ss11AnyHashableVSgWOhTm_3(v75, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      }

      else
      {
        v35 = 7104878;
        _ss11AnyHashableVSgWOhTm_3(&v63, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
        _ss11AnyHashableVSgWOhTm_3(v75, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
        v37 = 0xE300000000000000;
      }

      MEMORY[0x18D00C9B0](v35, v37);

      MEMORY[0x18D00C9B0](0x6E6573657270202CLL, 0xEF203A4356646574);
      *&v75[0] = v3;
      v54 = String.init<A>(describing:)();
      MEMORY[0x18D00C9B0](v54);

      MEMORY[0x18D00C9B0](0x74616D696E61202CLL, 0xEC000000203A6465);
      if (v34)
      {
        v50 = 1702195828;
      }

      else
      {
        v50 = 0x65736C6166;
      }

      if (v34)
      {
        v51 = 0xE400000000000000;
      }

      else
      {
        v51 = 0xE500000000000000;
      }

      goto LABEL_69;
    case 10:
      v8 = v83[106];
      v81 = *&v83[64];
      v82[0] = *&v83[80];
      *(v82 + 10) = *&v83[90];
      v77 = *v83;
      v78 = *&v83[16];
      v79 = *&v83[32];
      v80 = *&v83[48];
      *&v75[0] = 0;
      *(&v75[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(64);
      v56 = v75[0];
      MEMORY[0x18D00C9B0](0xD000000000000030, 0x800000018CD56A60);
      outlined init with copy of SheetPreference(&v77, v75);
      outlined init with copy of SheetPreference?(v75, &v63, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      if (v63)
      {
        v73 = v67;
        v74[0] = v68[0];
        *(v74 + 10) = *(v68 + 10);
        v69 = v63;
        v70 = v64;
        v71 = v65;
        v72 = v66;
        *&v63 = *(&v64 + 1);
        v9 = String.init<A>(describing:)();
        v11 = v10;
        outlined destroy of SheetPreference(&v69);
        _ss11AnyHashableVSgWOhTm_3(v75, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      }

      else
      {
        v9 = 7104878;
        _ss11AnyHashableVSgWOhTm_3(&v63, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
        _ss11AnyHashableVSgWOhTm_3(v75, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
        v11 = 0xE300000000000000;
      }

      MEMORY[0x18D00C9B0](v9, v11);

      MEMORY[0x18D00C9B0](0x74616D696E61202CLL, 0xEC000000203A6465);
      if (v8)
      {
        v40 = 1702195828;
      }

      else
      {
        v40 = 0x65736C6166;
      }

      if (v8)
      {
        v41 = 0xE400000000000000;
      }

      else
      {
        v41 = 0xE500000000000000;
      }

      MEMORY[0x18D00C9B0](v40, v41);
      goto LABEL_70;
    case 11:
      v81 = *&v83[64];
      v82[0] = *&v83[80];
      *(v82 + 10) = *&v83[90];
      v77 = *v83;
      v78 = *&v83[16];
      v79 = *&v83[32];
      v80 = *&v83[48];
      *&v75[0] = 0;
      *(&v75[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      v17 = 0x800000018CD56A30;
      v18 = 0xD000000000000024;
LABEL_19:
      *&v56 = v18;
      *(&v56 + 1) = v17;
      outlined init with copy of SheetPreference(&v77, v75);
      outlined init with copy of SheetPreference?(v75, &v63, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      if (v63)
      {
        v73 = v67;
        v74[0] = v68[0];
        *(v74 + 10) = *(v68 + 10);
        v69 = v63;
        v70 = v64;
        v71 = v65;
        v72 = v66;
        *&v63 = *(&v64 + 1);
        v28 = String.init<A>(describing:)();
        v30 = v29;
        outlined destroy of SheetPreference(&v69);
        _ss11AnyHashableVSgWOhTm_3(v75, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      }

      else
      {
        v28 = 7104878;
        _ss11AnyHashableVSgWOhTm_3(&v63, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
        _ss11AnyHashableVSgWOhTm_3(v75, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
        v30 = 0xE300000000000000;
      }

      MEMORY[0x18D00C9B0](v28, v30);

      MEMORY[0x18D00C9B0](41, 0xE100000000000000);
      goto LABEL_71;
    case 12:
      goto LABEL_73;
    default:
      v3 = *&v83[112];
      v4 = v84;
      v81 = *&v83[64];
      v82[0] = *&v83[80];
      *(v82 + 10) = *&v83[90];
      v77 = *v83;
      v78 = *&v83[16];
      v79 = *&v83[32];
      v80 = *&v83[48];
      *&v75[0] = 0;
      *(&v75[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      v56 = v75[0];
      MEMORY[0x18D00C9B0](0xD000000000000016, 0x800000018CD56BB0);
      outlined init with copy of SheetPreference(&v77, v75);
      outlined init with copy of SheetPreference?(v75, &v63, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      if (v63)
      {
        v73 = v67;
        v74[0] = v68[0];
        *(v74 + 10) = *(v68 + 10);
        v69 = v63;
        v70 = v64;
        v71 = v65;
        v72 = v66;
        *&v63 = *(&v64 + 1);
        v5 = String.init<A>(describing:)();
        v7 = v6;
        outlined destroy of SheetPreference(&v69);
        _ss11AnyHashableVSgWOhTm_3(v75, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      }

      else
      {
        v5 = 7104878;
        _ss11AnyHashableVSgWOhTm_3(&v63, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
        _ss11AnyHashableVSgWOhTm_3(v75, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
        v7 = 0xE300000000000000;
      }

      MEMORY[0x18D00C9B0](v5, v7);

      MEMORY[0x18D00C9B0](0x6E6573657270202CLL, 0xEF203A4356646574);
      *&v75[0] = v3;
      v52 = String.init<A>(describing:)();
      MEMORY[0x18D00C9B0](v52);

      MEMORY[0x18D00C9B0](0x203A646565732029, 0xE800000000000000);
      if (v4 == -1)
      {
LABEL_58:
        v51 = 0xE700000000000000;
        v50 = 0x64696C61766E69;
      }

      else if (v4)
      {
LABEL_57:
        LODWORD(v75[0]) = v4;
        v50 = dispatch thunk of CustomStringConvertible.description.getter();
        v51 = v53;
      }

      else
      {
LABEL_53:
        v50 = 0x7974706D65;
        v51 = 0xE500000000000000;
      }

LABEL_69:
      MEMORY[0x18D00C9B0](v50, v51);

LABEL_70:

LABEL_71:
      v1 = *(&v56 + 1);
      v2 = v56;
LABEL_72:
      outlined destroy of SheetPreference(&v77);
LABEL_73:
      *v83 = 0x2E65736142;
      *&v83[8] = 0xE500000000000000;
      MEMORY[0x18D00C9B0](v2, v1);

      return *v83;
  }
}

void type metadata accessor for _SemanticFeature<Semantics_v6>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t static ToolbarEdges.bars.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v4();
  v5 = VerticalEdge.Set.contains(_:)();
  v6 = MEMORY[0x1E69E7CD0];
  if (v5)
  {
    memset(v12, 0, sizeof(v12));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeSet.update(with:isUnique:)(v12, isUniquelyReferenced_nonNull_native, v13);
    outlined destroy of ToolbarPlacement.Role?(v13, &lazy cache variable for type metadata for ToolbarPlacement.Role?, &type metadata for ToolbarPlacement.Role);
    memset(v12, 0, 24);
    *&v12[24] = xmmword_18CD79D60;
    v8 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeSet.update(with:isUnique:)(v12, v8, v13);
    outlined destroy of ToolbarPlacement.Role?(v13, &lazy cache variable for type metadata for ToolbarPlacement.Role?, &type metadata for ToolbarPlacement.Role);
    memset(v12, 0, 24);
    *&v12[24] = xmmword_18CD6A6D0;
    v9 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeSet.update(with:isUnique:)(v12, v9, v13);
    outlined destroy of ToolbarPlacement.Role?(v13, &lazy cache variable for type metadata for ToolbarPlacement.Role?, &type metadata for ToolbarPlacement.Role);
  }

  (v4)(a1, a2);
  if (VerticalEdge.Set.contains(_:)())
  {
    memset(v12, 0, 24);
    *&v12[24] = xmmword_18CD7DD20;
    v10 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeSet.update(with:isUnique:)(v12, v10, v13);
    outlined destroy of ToolbarPlacement.Role?(v13, &lazy cache variable for type metadata for ToolbarPlacement.Role?, &type metadata for ToolbarPlacement.Role);
  }

  return v6;
}

uint64_t InferredToolbarModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = *(a1 + 16);
  swift_getWitnessTable("%");
  v4 = type metadata accessor for _ViewModifier_Content();
  v5 = *(a1 + 24);
  type metadata accessor for InferredToolbarModifier.OnScrollStateChange(255, v3, v5, v6);
  v32 = v4;
  v7 = type metadata accessor for ModifiedContent();
  v47 = v3;
  v48 = &type metadata for TopToolbarEdges;
  v49 = v5;
  v50 = &protocol witness table for TopToolbarEdges;
  v8 = type metadata accessor for EdgesPredicate(255, &v47);
  type metadata accessor for _InsetViewModifier<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>(255);
  v9 = type metadata accessor for StaticIf();
  v10 = type metadata accessor for ModifiedContent();
  v47 = v3;
  v48 = &type metadata for BottomToolbarEdges;
  v49 = v5;
  v50 = &protocol witness table for BottomToolbarEdges;
  v11 = type metadata accessor for EdgesPredicate(255, &v47);
  type metadata accessor for _InsetViewModifier<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>(255);
  v30 = type metadata accessor for StaticIf();
  v31 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v4);
  v46[0] = WitnessTable;
  v46[1] = &protocol witness table for InferredToolbarModifier<A>.OnScrollStateChange;
  v12 = MEMORY[0x1E697E858];
  v13 = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v46);
  v14 = swift_getWitnessTable(protocol conformance descriptor for EdgesPredicate<A, B>, v8);
  v15 = MEMORY[0x1E697F598];
  v45[0] = v14;
  v45[1] = lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _InsetViewModifier<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>> and conformance _InsetViewModifier<A>, type metadata accessor for _InsetViewModifier<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>, MEMORY[0x1E697F598]);
  v45[2] = MEMORY[0x1E697E100];
  v16 = MEMORY[0x1E6981CE0];
  v44[0] = v13;
  v44[1] = swift_getWitnessTable(MEMORY[0x1E6981CE0], v9, v45);
  v17 = swift_getWitnessTable(v12, v10, v44);
  v43[0] = swift_getWitnessTable(protocol conformance descriptor for EdgesPredicate<A, B>, v11);
  v43[1] = lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _InsetViewModifier<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>> and conformance _InsetViewModifier<A>, type metadata accessor for _InsetViewModifier<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>, v15);
  v43[2] = MEMORY[0x1E697E100];
  v42[0] = v17;
  v42[1] = swift_getWitnessTable(v16, v30, v43);
  v18 = swift_getWitnessTable(v12, v31, v42);
  v47 = v3;
  v48 = v31;
  v49 = v5;
  v50 = v18;
  type metadata accessor for ToolbarReader(255, &v47);
  v19 = type metadata accessor for StaticIf();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v30 - v24;
  v38 = v3;
  v39 = v5;
  v40 = v34;
  v36 = v3;
  v37 = v5;
  v26 = lazy protocol witness table accessor for type EnableInferredToolbar and conformance EnableInferredToolbar();
  v27 = WitnessTable;
  StaticIf<>.init(_:then:else:)();
  v41[0] = v26;
  v41[1] = &protocol witness table for ToolbarReader<A, B>;
  v41[2] = v27;
  swift_getWitnessTable(MEMORY[0x1E6981CE8], v19, v41);
  static ViewBuilder.buildExpression<A>(_:)();
  v28 = *(v20 + 8);
  v28(v22, v19);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v28)(v25, v19);
}

uint64_t closure #1 in InferredToolbarModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v58 = a1;
  v59 = a4;
  v7 = type metadata accessor for InferredToolbarModifier(0, a2, a3, a5);
  v56 = *(v7 - 8);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v49 - v8;
  v54 = *(a2 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v61 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v7;
  swift_getWitnessTable("%", v7, v10);
  v12 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for InferredToolbarModifier.OnScrollStateChange(255, a2, a3, v13);
  v14 = type metadata accessor for ModifiedContent();
  v67 = a2;
  v68 = &type metadata for TopToolbarEdges;
  v69 = a3;
  v70 = &protocol witness table for TopToolbarEdges;
  v52 = a3;
  v15 = type metadata accessor for EdgesPredicate(255, &v67);
  type metadata accessor for _InsetViewModifier<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>(255);
  v16 = type metadata accessor for StaticIf();
  v17 = type metadata accessor for ModifiedContent();
  v67 = a2;
  v68 = &type metadata for BottomToolbarEdges;
  v69 = a3;
  v70 = &protocol witness table for BottomToolbarEdges;
  v18 = type metadata accessor for EdgesPredicate(255, &v67);
  type metadata accessor for _InsetViewModifier<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>(255);
  v19 = type metadata accessor for StaticIf();
  v60 = type metadata accessor for ModifiedContent();
  v66[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v12);
  v66[1] = &protocol witness table for InferredToolbarModifier<A>.OnScrollStateChange;
  v20 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v14, v66);
  v22 = swift_getWitnessTable(protocol conformance descriptor for EdgesPredicate<A, B>, v15);
  v23 = MEMORY[0x1E697F598];
  v24 = lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _InsetViewModifier<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>> and conformance _InsetViewModifier<A>, type metadata accessor for _InsetViewModifier<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>, MEMORY[0x1E697F598]);
  v65[0] = v22;
  v65[1] = v24;
  v65[2] = MEMORY[0x1E697E100];
  v25 = MEMORY[0x1E6981CE0];
  v26 = swift_getWitnessTable(MEMORY[0x1E6981CE0], v16, v65);
  v64[0] = WitnessTable;
  v64[1] = v26;
  v27 = swift_getWitnessTable(v20, v17, v64);
  v28 = swift_getWitnessTable(protocol conformance descriptor for EdgesPredicate<A, B>, v18);
  v29 = lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _InsetViewModifier<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>> and conformance _InsetViewModifier<A>, type metadata accessor for _InsetViewModifier<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>, v23);
  v63[0] = v28;
  v63[1] = v29;
  v63[2] = MEMORY[0x1E697E100];
  v30 = swift_getWitnessTable(v25, v19, v63);
  v62[0] = v27;
  v62[1] = v30;
  v31 = v60;
  v51 = swift_getWitnessTable(v20, v60, v62);
  v32 = a2;
  v67 = a2;
  v68 = v31;
  v33 = v52;
  v69 = v52;
  v70 = v51;
  v34 = type metadata accessor for ToolbarReader(0, &v67);
  v50 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v49 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v49 - v39;
  v41 = v58;
  (*(v54 + 16))(v61, v58, a2, v38);
  v42 = v56;
  v43 = v55;
  v44 = v53;
  (*(v56 + 16))(v55, v41, v53);
  v45 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = v32;
  *(v46 + 24) = v33;
  (*(v42 + 32))(v46 + v45, v43, v44);
  ToolbarReader.init(edges:content:)(v61, partial apply for closure #1 in closure #1 in InferredToolbarModifier.body(content:), v46, v32, v60, v33, v51, v36);
  static ViewBuilder.buildExpression<A>(_:)();
  v47 = *(v50 + 8);
  v47(v36, v34);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v47)(v40, v34);
}

uint64_t closure #1 in closure #1 in InferredToolbarModifier.body(content:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v37 = *v7;
  v38 = v7[2];
  v32 = v7[3];
  v33 = v7[1];
  v8 = type metadata accessor for InferredToolbarModifier(0, v3, v1, v1);
  v9 = (v6 + *(v8 + 36));
  v11 = *v9;
  v10 = v9[1];
  *&__dst[0] = v11;
  *(&__dst[0] + 1) = v10;
  type metadata accessor for State<InferredToolbarState>(0, &lazy cache variable for type metadata for State<InferredToolbarState>, &type metadata for InferredToolbarState, MEMORY[0x1E6981790]);
  State.projectedValue.getter();
  swift_getWitnessTable("%", v8);
  v34 = v8;
  v12 = type metadata accessor for _ViewModifier_Content();
  v14 = type metadata accessor for InferredToolbarModifier.OnScrollStateChange(0, v4, v2, v13);
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v12);
  MEMORY[0x18D00A570](v48, v51, v12, v14, WitnessTable);

  v49[0] = v48[0];
  *&v49[1] = *&v48[1];
  *&__dst[0] = __PAIR64__(v33, v37);
  *(&__dst[0] + 1) = __PAIR64__(v32, v38);
  InferredToolbarModifier.topSafeArea(toolbar:)(__dst, v8);
  memcpy(__dst, v51, 0x198uLL);
  v16 = type metadata accessor for ModifiedContent();
  v46[0] = v4;
  v46[1] = &type metadata for TopToolbarEdges;
  v46[2] = v2;
  v46[3] = &protocol witness table for TopToolbarEdges;
  v17 = type metadata accessor for EdgesPredicate(255, v46);
  type metadata accessor for _InsetViewModifier<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>(255);
  v18 = type metadata accessor for StaticIf();
  v45[0] = WitnessTable;
  v45[1] = &protocol witness table for InferredToolbarModifier<A>.OnScrollStateChange;
  v36 = MEMORY[0x1E697E858];
  v35 = swift_getWitnessTable(MEMORY[0x1E697E858], v16, v45);
  MEMORY[0x18D00A570](__src, __dst, v16, v18, v35);
  memcpy(v47, __dst, sizeof(v47));
  (*(*(v18 - 8) + 8))(v47, v18);

  memcpy(v44, __src, sizeof(v44));
  v51[0] = __PAIR64__(v33, v37);
  v51[1] = __PAIR64__(v32, v38);
  InferredToolbarModifier.bottomSafeArea(toolbar:)(v51, v34);
  memcpy(v46, __dst, 0x240uLL);
  v19 = type metadata accessor for ModifiedContent();
  v51[0] = v4;
  v51[1] = &type metadata for BottomToolbarEdges;
  v51[2] = v2;
  v51[3] = &protocol witness table for BottomToolbarEdges;
  v20 = type metadata accessor for EdgesPredicate(255, v51);
  type metadata accessor for _InsetViewModifier<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>(255);
  v21 = type metadata accessor for StaticIf();
  v22 = swift_getWitnessTable(protocol conformance descriptor for EdgesPredicate<A, B>, v17);
  v23 = MEMORY[0x1E697F598];
  v24 = lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _InsetViewModifier<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>> and conformance _InsetViewModifier<A>, type metadata accessor for _InsetViewModifier<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>, MEMORY[0x1E697F598]);
  v43[0] = v22;
  v43[1] = v24;
  v25 = MEMORY[0x1E697E100];
  v43[2] = MEMORY[0x1E697E100];
  v26 = MEMORY[0x1E6981CE0];
  v27 = swift_getWitnessTable(MEMORY[0x1E6981CE0], v18, v43);
  v42[0] = v35;
  v42[1] = v27;
  v28 = swift_getWitnessTable(v36, v19, v42);
  MEMORY[0x18D00A570](v51, v46, v19, v21, v28);
  memcpy(v48, v46, sizeof(v48));
  (*(*(v21 - 8) + 8))(v48, v21);
  memcpy(v49, v44, sizeof(v49));
  (*(*(v19 - 8) + 8))(v49, v19);
  memcpy(__src, v51, sizeof(__src));
  v29 = type metadata accessor for ModifiedContent();
  v40[0] = swift_getWitnessTable(protocol conformance descriptor for EdgesPredicate<A, B>, v20);
  v40[1] = lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _InsetViewModifier<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>> and conformance _InsetViewModifier<A>, type metadata accessor for _InsetViewModifier<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>, v23);
  v40[2] = v25;
  v39[0] = v28;
  v39[1] = swift_getWitnessTable(v26, v21, v40);
  swift_getWitnessTable(v36, v29, v39);
  static ViewBuilder.buildExpression<A>(_:)();
  memcpy(__dst, __src, sizeof(__dst));
  v30 = *(*(v29 - 8) + 8);
  v30(__dst, v29);
  memcpy(__src, v46, sizeof(__src));
  static ViewBuilder.buildExpression<A>(_:)();
  memcpy(v51, __src, 0x3F0uLL);
  return v30(v51, v29);
}

uint64_t InferredToolbarModifier.topSafeArea(toolbar:)(_OWORD *a1, uint64_t a2)
{
  *__dst = *a1;
  InferredToolbarModifier.navigationBar(toolbar:)(__dst, a2, v7);
  memcpy(__dst, v7, 0x178uLL);
  v3 = static HorizontalAlignment.center.getter();
  v4 = *(a2 + 24);
  v7[0] = *(a2 + 16);
  v7[1] = &type metadata for TopToolbarEdges;
  v7[2] = v4;
  v7[3] = &protocol witness table for TopToolbarEdges;
  v5 = type metadata accessor for EdgesPredicate(0, v7);
  memcpy(v7, __dst, 0x178uLL);
  v7[47] = 1;
  v7[48] = 0;
  v8 = 0;
  v9 = v3;
  type metadata accessor for _InsetViewModifier<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>(0);
  swift_getWitnessTable(protocol conformance descriptor for EdgesPredicate<A, B>, v5);
  lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _InsetViewModifier<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>> and conformance _InsetViewModifier<A>, type metadata accessor for _InsetViewModifier<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>, MEMORY[0x1E697F598]);
  return StaticIf<>.init<>(_:then:)();
}

uint64_t InferredToolbarModifier.bottomSafeArea(toolbar:)(unint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  closure #1 in InferredToolbarModifier.bottomBar(toolbar:)(*a1, a1[1], v3, v4, v5, v9);
  v6 = static HorizontalAlignment.center.getter();
  v13[0] = v4;
  v13[1] = &type metadata for BottomToolbarEdges;
  v13[2] = v5;
  v13[3] = &protocol witness table for BottomToolbarEdges;
  v7 = type metadata accessor for EdgesPredicate(0, v13);
  v10 = xmmword_18CD6A6D0;
  v11 = 512;
  v12 = v6;
  type metadata accessor for _InsetViewModifier<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>(0);
  swift_getWitnessTable(protocol conformance descriptor for EdgesPredicate<A, B>, v7);
  lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _InsetViewModifier<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>> and conformance _InsetViewModifier<A>, type metadata accessor for _InsetViewModifier<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>, MEMORY[0x1E697F598]);
  return StaticIf<>.init<>(_:then:)();
}

uint64_t closure #2 in InferredToolbarModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for InferredToolbarModifier(255, a1, a2, a4);
  swift_getWitnessTable("%", v4);
  v5 = type metadata accessor for _ViewModifier_Content();
  swift_getWitnessTable(MEMORY[0x1E697FDF8], v5);
  static ViewBuilder.buildExpression<A>(_:)();

  return static ViewBuilder.buildExpression<A>(_:)();
}

uint64_t InferredToolbarModifier.bar<A>(toolbar:edge:content:)@<X0>(unsigned int *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v50 = a7;
  v53 = a5;
  v51 = a4;
  v49 = a3;
  v52 = a8;
  type metadata accessor for ModifiedContent<Divider, _OpacityEffect>?(255);
  v48 = a6;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(255, &lazy cache variable for type metadata for _BackgroundStyleModifier<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980460]);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  v46 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981F48], v46);
  v11 = type metadata accessor for VStack();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v40[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40[-v16];
  v19 = *a1;
  v18 = a1[1];
  v20 = a1[2];
  v21 = a1[3];
  v22 = a2 & 1;
  v23 = 3;
  if ((a2 & 1) == 0)
  {
    v23 = 0;
  }

  memset(v57, 0, 24);
  v57[3] = v23;
  v57[4] = 0;
  *&v55 = __PAIR64__(v18, v19);
  *(&v55 + 1) = __PAIR64__(v21, v20);
  ToolbarProxy_V1.appearance(in:)(v57, v56);
  outlined destroy of ToolbarAppearanceConfiguration(v56);
  v24 = v53;
  v25 = 1.0;
  if (v56[24] == 1)
  {
    goto LABEL_7;
  }

  v41 = v20;
  v42 = v19;
  v43 = v18;
  v44 = v11;
  v26 = (v45 + *(v53 + 36));
  v28 = *v26;
  v27 = v26[1];
  *&v55 = v28;
  *(&v55 + 1) = v27;
  type metadata accessor for State<InferredToolbarState>(0, &lazy cache variable for type metadata for State<InferredToolbarState>, &type metadata for InferredToolbarState, MEMORY[0x1E6981790]);
  result = State.wrappedValue.getter();
  v30 = v54;
  if (*(v54 + 16))
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(v22);
    if (v31)
    {
      v25 = *(*(v30 + 56) + 8 * result);

      v24 = v53;
      v11 = v44;
      v18 = v43;
      v19 = v42;
      v20 = v41;
LABEL_7:
      *&v55 = __PAIR64__(v18, v19);
      *(&v55 + 1) = __PAIR64__(v21, v20);
      v32 = *(v24 + 16);
      v33 = *(v24 + 24);
      v34 = specialized InferredToolbarModifier.backgroundStyle(in:toolbar:opacity:)(v57, &v55, v25);
      MEMORY[0x1EEE9AC00](v34);
      v35 = v48;
      *&v40[-80] = v32;
      *&v40[-72] = v35;
      v36 = v50;
      *&v40[-64] = v33;
      *&v40[-56] = v36;
      v40[-48] = v22;
      *&v40[-40] = v25;
      v37 = v51;
      *&v40[-32] = v49;
      *&v40[-24] = v37;
      *&v40[-16] = v38;
      static HorizontalAlignment.center.getter();
      VStack.init(alignment:spacing:content:)();

      outlined destroy of ToolbarPlacement.Role(v57);
      swift_getWitnessTable(MEMORY[0x1E6981870], v11);
      static ViewBuilder.buildExpression<A>(_:)();
      v39 = *(v12 + 8);
      v39(v14, v11);
      static ViewBuilder.buildExpression<A>(_:)();
      return (v39)(v17, v11);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in InferredToolbarModifier.bar<A>(toolbar:edge:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(double)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X7>, uint64_t a6@<X8>, double a7@<D0>)
{
  v44 = a3;
  v38 = a2;
  v45 = a1;
  v46 = a6;
  v40 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ModifiedContent();
  v41 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  v15 = type metadata accessor for ModifiedContent();
  v43 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(255, &lazy cache variable for type metadata for _BackgroundStyleModifier<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980460]);
  v18 = type metadata accessor for ModifiedContent();
  v42 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v37 = &v37 - v23;
  v39 = a7;
  v38(v22);
  static Alignment.center.getter();
  View.frame(width:height:alignment:)();
  (*(v40 + 8))(v11, a4);
  static Edge.Set.horizontal.getter();
  v58[0] = a5;
  v58[1] = MEMORY[0x1E697E040];
  v24 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v12, v58);
  View.padding(_:_:)();
  (*(v41 + 8))(v14, v12);
  v55[0] = v44;
  static Edge.Set.all.getter();
  v57[0] = WitnessTable;
  v57[1] = MEMORY[0x1E697E5D8];
  v26 = swift_getWitnessTable(v24, v15, v57);
  View.background<A>(_:ignoresSafeAreaEdges:)();
  (*(v43 + 8))(v17, v15);
  v27 = lazy protocol witness table accessor for type _BackgroundStyleModifier<AnyShapeStyle> and conformance _BackgroundStyleModifier<A>();
  v56[0] = v26;
  v56[1] = v27;
  v28 = swift_getWitnessTable(v24, v18, v56);
  v29 = v37;
  static ViewBuilder.buildExpression<A>(_:)();
  v30 = v42;
  v31 = *(v42 + 8);
  v31(v20, v18);
  v32 = v45 & 1;
  if (v45)
  {
    v33 = v39;
  }

  else
  {
    v33 = 0.0;
  }

  if (v45)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = v39;
  }

  v53 = v33;
  v54 = (v45 & 1) == 0;
  v55[0] = &v53;
  (*(v30 + 16))(v20, v29, v18);
  v51 = v34;
  v52 = v32;
  v55[1] = v20;
  v55[2] = &v51;
  type metadata accessor for ModifiedContent<Divider, _OpacityEffect>?(0);
  v50[0] = v35;
  v50[1] = v18;
  v50[2] = v35;
  v47 = lazy protocol witness table accessor for type ModifiedContent<Divider, _OpacityEffect>? and conformance <A> A?();
  v48 = v28;
  v49 = v47;
  static ViewBuilder.buildBlock<each A>(_:)(v55, 3uLL, v50);
  v31(v29, v18);
  return (v31)(v20, v18);
}

void *InferredToolbarModifier.navigationBar(toolbar:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  closure #1 in InferredToolbarModifier.navigationBar(toolbar:)(*a1, a1[1], *(a2 + 16), *(a2 + 24), __src);
  lazy protocol witness table accessor for type MoveTransition and conformance MoveTransition();
  v4 = AnyTransition.init<A>(_:)();
  result = memcpy(a3, __src, 0x170uLL);
  a3[46] = v4;
  return result;
}

void *closure #1 in InferredToolbarModifier.navigationBar(toolbar:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v7 = a2;
  v8 = a1;
  v10 = HIDWORD(a1);
  v11 = HIDWORD(a2);
  memset(v30, 0, 40);
  outlined init with copy of ToolbarPlacement.Storage(v30, v26);
  if (*(&v26[1] + 1) == 7)
  {
    v12 = outlined destroy of ToolbarPlacement(v30);
LABEL_5:
    v21 = a5;
    *&v26[0] = __PAIR64__(v10, v8);
    *(&v26[0] + 1) = __PAIR64__(v11, v7);
    MEMORY[0x1EEE9AC00](v12);
    v20[4] = v8;
    v20[5] = v10;
    v20[6] = v7;
    v20[7] = v11;
    v15 = type metadata accessor for InferredToolbarModifier(0, a3, a4, v14);
    type metadata accessor for HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>(0);
    v17 = v16;
    v18 = lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, MEMORY[0x1E69817F8]);
    InferredToolbarModifier.bar<A>(toolbar:edge:content:)(v26, 0, partial apply for closure #1 in closure #1 in InferredToolbarModifier.navigationBar(toolbar:), v20, v15, v17, v18, v30);
    a5 = v21;
    memcpy(v26, v30, 0x169uLL);
    _s7SwiftUI19_ConditionalContentV7StorageOyAA6VStackVyAA9TupleViewVyAA08ModifiedD0VyAA7DividerVAA14_OpacityEffectVGSg_AKyAKyAKyAA6HStackVyAIyAA7ForEachVySayAA07ToolbarE0V5EntryVGAY2IDVAA07BarItemH0VG_AA6SpacerVA3_A5_A3_tGGAA12_FrameLayoutVGAA08_PaddingW0VGAA24_BackgroundStyleModifierVyAA08AnyShapeZ0VGGAQtGGAKyAA05EmptyH0VA9_G_GWOi_(v26);
    goto LABEL_6;
  }

  v27 = v26[0];
  v28 = v26[1];
  *&v29 = *&v26[2];
  v22 = v8;
  v23 = v10;
  v24 = v7;
  v25 = v11;
  v13 = ToolbarProxy_V1.visibility(in:)(&v27);
  outlined destroy of ToolbarPlacement.Role(&v27);
  v12 = outlined destroy of ToolbarPlacement(v30);
  if (v13 != 2)
  {
    goto LABEL_5;
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v26[0] = v27;
  BYTE8(v26[0]) = BYTE8(v27);
  *&v26[1] = v28;
  BYTE8(v26[1]) = BYTE8(v28);
  v26[2] = v29;
  _s7SwiftUI19_ConditionalContentV7StorageOyAA6VStackVyAA9TupleViewVyAA08ModifiedD0VyAA7DividerVAA14_OpacityEffectVGSg_AKyAKyAKyAA6HStackVyAIyAA7ForEachVySayAA07ToolbarE0V5EntryVGAY2IDVAA07BarItemH0VG_AA6SpacerVA3_A5_A3_tGGAA12_FrameLayoutVGAA08_PaddingW0VGAA24_BackgroundStyleModifierVyAA08AnyShapeZ0VGGAQtGGAKyAA05EmptyH0VA9_G_GWOi0_(v26);
LABEL_6:
  memcpy(v30, v26, 0x16AuLL);
  return memcpy(a5, v30, 0x16AuLL);
}

double closure #1 in closure #1 in InferredToolbarModifier.navigationBar(toolbar:)@<D0>(unint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = static VerticalAlignment.center.getter();
  v26 = 1;
  closure #1 in closure #1 in closure #1 in InferredToolbarModifier.navigationBar(toolbar:)(a1, &v14);
  v35 = v22;
  v36 = v23;
  v37 = v24;
  v31 = v18;
  v32 = v19;
  v33 = v20;
  v34 = v21;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v38[8] = v22;
  v38[9] = v23;
  v38[10] = v24;
  v38[4] = v18;
  v38[5] = v19;
  v38[6] = v20;
  v38[7] = v21;
  v38[0] = v14;
  v38[1] = v15;
  v38[2] = v16;
  v38[3] = v17;
  outlined init with copy of TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>(&v27, &v13, type metadata accessor for TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>);
  outlined destroy of TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>(v38, type metadata accessor for TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>);
  *&v25[119] = v34;
  *&v25[135] = v35;
  *&v25[151] = v36;
  *&v25[167] = v37;
  *&v25[55] = v30;
  *&v25[71] = v31;
  *&v25[87] = v32;
  *&v25[103] = v33;
  *&v25[7] = v27;
  *&v25[23] = v28;
  *&v25[39] = v29;
  v6 = *&v25[144];
  *(a3 + 145) = *&v25[128];
  *(a3 + 161) = v6;
  *(a3 + 177) = *&v25[160];
  v7 = *&v25[80];
  *(a3 + 81) = *&v25[64];
  *(a3 + 97) = v7;
  v8 = *&v25[112];
  *(a3 + 113) = *&v25[96];
  *(a3 + 129) = v8;
  v9 = *&v25[16];
  *(a3 + 17) = *v25;
  *(a3 + 33) = v9;
  result = *&v25[32];
  v11 = *&v25[48];
  *(a3 + 49) = *&v25[32];
  v12 = v26;
  *a3 = v5;
  *(a3 + 8) = 0;
  *(a3 + 16) = v12;
  *(a3 + 192) = *&v25[175];
  *(a3 + 65) = v11;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in InferredToolbarModifier.navigationBar(toolbar:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = HIDWORD(a1);
  v4 = type metadata accessor for ToolbarStorage.Entry(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v52 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v51 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51 - v11;
  memset(v84, 0, 24);
  *(&v84[1] + 8) = xmmword_18CD90770;
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  v83 = -1;
  v79 = MEMORY[0x1E69E7CC0];
  v64 = v3;
  v13 = *AGGraphGetInputValue();
  v65[2] = &v80;
  v65[3] = &v79;
  v14 = v13;
  specialized ToolbarBridge.adjustEntries(in:_:)(v84, closure #1 in ToolbarProxy_V1.callAsFunction(in:placement:showSeparator:)partial apply, v65);

  v15 = v79;
  v16 = *(v79 + 16);
  v61 = v5;
  if (v16)
  {
    outlined init with copy of TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>(v79 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * (v16 - 1), v12, type metadata accessor for ToolbarStorage.Entry);

    ToolbarStorage.Entry.id.getter(&v73);
    outlined destroy of TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>(v12, type metadata accessor for ToolbarStorage.Entry);
  }

  else
  {
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
  }

  KeyPath = swift_getKeyPath();
  outlined init with copy of ToolbarStorage.Entry.ID?(&v73, &v68, &lazy cache variable for type metadata for ToolbarStorage.Entry.ID?, &type metadata for ToolbarStorage.Entry.ID, MEMORY[0x1E69E6720], type metadata accessor for State<InferredToolbarState>);
  v18 = swift_allocObject();
  v19 = v70;
  *(v18 + 56) = v69[1];
  *(v18 + 72) = v19;
  *(v18 + 88) = v71;
  v20 = v69[0];
  *(v18 + 24) = v68;
  *(v18 + 16) = 0;
  *(v18 + 104) = v72;
  *(v18 + 40) = v20;
  v66 = KeyPath;
  v67 = v15;
  type metadata accessor for [ToolbarStorage.Entry](0);
  v22 = v21;
  lazy protocol witness table accessor for type [ToolbarStorage.Entry] and conformance [A]();
  v62 = lazy protocol witness table accessor for type ToolbarStorage.Entry.ID and conformance ToolbarStorage.Entry.ID();
  v63 = v22;
  ForEach.init(_:idGenerator:content:)();
  outlined destroy of ToolbarPlacement.Role?(&v73, &lazy cache variable for type metadata for ToolbarStorage.Entry.ID?, &type metadata for ToolbarStorage.Entry.ID);
  outlined destroy of Toolbar.BarLocation(v84);

  outlined destroy of ToolbarPlacement.Role?(&v80, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role);
  v58 = v68;
  v59 = *(&v69[0] + 1);
  v60 = *&v69[0];
  v56 = *(&v69[1] + 1);
  v57 = *&v69[1];
  memset(v84, 0, 40);
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  v83 = -1;
  v23 = MEMORY[0x1E69E7CC0];
  v79 = MEMORY[0x1E69E7CC0];
  InputValue = AGGraphGetInputValue();
  MEMORY[0x1EEE9AC00](InputValue);
  v49 = &v80;
  v50 = &v79;
  v26 = v25;
  specialized ToolbarBridge.adjustEntries(in:_:)(v84, closure #1 in ToolbarProxy_V1.callAsFunction(in:placement:showSeparator:)partial apply, (&v51 - 4));

  v27 = v79;
  v28 = *(v79 + 16);
  if (v28)
  {
    outlined init with copy of TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>(v79 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * (v28 - 1), v9, type metadata accessor for ToolbarStorage.Entry);

    ToolbarStorage.Entry.id.getter(&v73);
    outlined destroy of TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>(v9, type metadata accessor for ToolbarStorage.Entry);
  }

  else
  {
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
  }

  v29 = swift_getKeyPath();
  outlined init with copy of ToolbarStorage.Entry.ID?(&v73, &v68, &lazy cache variable for type metadata for ToolbarStorage.Entry.ID?, &type metadata for ToolbarStorage.Entry.ID, MEMORY[0x1E69E6720], type metadata accessor for State<InferredToolbarState>);
  v30 = swift_allocObject();
  v31 = v70;
  *(v30 + 56) = v69[1];
  *(v30 + 72) = v31;
  *(v30 + 88) = v71;
  v32 = v69[0];
  *(v30 + 24) = v68;
  *(v30 + 16) = 0;
  *(v30 + 104) = v72;
  *(v30 + 40) = v32;
  v66 = v29;
  v67 = v27;
  v49 = v62;
  ForEach.init(_:idGenerator:content:)();
  outlined destroy of ToolbarPlacement.Role?(&v73, &lazy cache variable for type metadata for ToolbarStorage.Entry.ID?, &type metadata for ToolbarStorage.Entry.ID);
  outlined destroy of Toolbar.BarLocation(v84);

  outlined destroy of ToolbarPlacement.Role?(&v80, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role);
  v55 = v68;
  v33 = v69[0];
  v53 = *(&v69[1] + 1);
  v54 = *&v69[1];
  memset(v84, 0, 24);
  *(&v84[1] + 8) = xmmword_18CD7DD20;
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  v83 = -1;
  v79 = v23;
  v34 = AGGraphGetInputValue();
  MEMORY[0x1EEE9AC00](v34);
  v49 = &v80;
  v50 = &v79;
  v36 = v35;
  specialized ToolbarBridge.adjustEntries(in:_:)(v84, closure #1 in ToolbarProxy_V1.callAsFunction(in:placement:showSeparator:)partial apply, (&v51 - 4));

  v37 = v79;
  v38 = *(v79 + 16);
  if (v38)
  {
    v39 = v52;
    outlined init with copy of TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>(v79 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * (v38 - 1), v52, type metadata accessor for ToolbarStorage.Entry);

    ToolbarStorage.Entry.id.getter(&v73);
    outlined destroy of TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>(v39, type metadata accessor for ToolbarStorage.Entry);
  }

  else
  {
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
  }

  v40 = swift_getKeyPath();
  outlined init with copy of ToolbarStorage.Entry.ID?(&v73, &v68, &lazy cache variable for type metadata for ToolbarStorage.Entry.ID?, &type metadata for ToolbarStorage.Entry.ID, MEMORY[0x1E69E6720], type metadata accessor for State<InferredToolbarState>);
  v41 = swift_allocObject();
  v42 = v70;
  *(v41 + 56) = v69[1];
  *(v41 + 72) = v42;
  *(v41 + 88) = v71;
  v43 = v69[0];
  *(v41 + 24) = v68;
  *(v41 + 16) = 0;
  *(v41 + 104) = v72;
  *(v41 + 40) = v43;
  v66 = v40;
  v67 = v37;
  v49 = v62;
  ForEach.init(_:idGenerator:content:)();
  outlined destroy of ToolbarPlacement.Role?(&v73, &lazy cache variable for type metadata for ToolbarStorage.Entry.ID?, &type metadata for ToolbarStorage.Entry.ID);
  outlined destroy of Toolbar.BarLocation(v84);

  outlined destroy of ToolbarPlacement.Role?(&v80, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role);
  v44 = *&v69[0];
  v45 = *(&v69[1] + 1);
  LOBYTE(v67) = 1;
  LOBYTE(v66) = 1;
  *a2 = v58;
  v46 = v59;
  *(a2 + 16) = v60;
  *(a2 + 24) = v46;
  v47 = v56;
  *(a2 + 32) = v57;
  *(a2 + 40) = v47;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 64) = v55;
  *(a2 + 80) = v33;
  *(a2 + 96) = v54;
  *(a2 + 104) = v53;
  *(a2 + 112) = 0;
  *(a2 + 120) = 1;
  *(a2 + 128) = v68;
  *(a2 + 144) = v44;
  *(a2 + 152) = *(v69 + 8);
  *(a2 + 168) = v45;
}

void *closure #1 in InferredToolbarModifier.bottomBar(toolbar:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v9 = a2;
  v10 = a1;
  v12 = HIDWORD(a1);
  v13 = HIDWORD(a2);
  memset(v36, 0, 24);
  *&v36[3] = xmmword_18CD7DD20;
  outlined init with copy of ToolbarPlacement.Storage(v36, v35);
  if (*(&v35[1] + 1) == 7)
  {
    v14 = outlined destroy of ToolbarPlacement(v36);
LABEL_5:
    v29 = a6;
    *&v35[0] = __PAIR64__(v12, v10);
    *(&v35[0] + 1) = __PAIR64__(v13, v9);
    MEMORY[0x1EEE9AC00](v14);
    v23[2] = a4;
    v23[3] = a5;
    v24 = v10;
    v25 = v12;
    v26 = v9;
    v27 = v13;
    v28 = a3;
    v17 = type metadata accessor for InferredToolbarModifier(0, a4, a5, v16);
    type metadata accessor for ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>(0);
    v19 = v18;
    v20 = lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    InferredToolbarModifier.bar<A>(toolbar:edge:content:)(v35, 1, partial apply for closure #1 in closure #1 in InferredToolbarModifier.bottomBar(toolbar:), v23, v17, v19, v20, v36);
    a6 = v29;
    memcpy(v34, v36, 0x209uLL);
    LOBYTE(v35[0]) = 2;
    lazy protocol witness table accessor for type MoveTransition and conformance MoveTransition();
    v21 = AnyTransition.init<A>(_:)();
    memcpy(v35, v34, 0x210uLL);
    *&v35[33] = v21;
    _s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA6VStackVyAA9TupleViewVyAGyAA7DividerVAA14_OpacityEffectVGSg_AGyAGyAGyAGyAA6HStackVyAKyAA7ForEachVys10ArraySliceVyAA07ToolbarE0V5EntryVGA_2IDVAA07BarItemI0VG_AKyAA6SpacerV_AUySayA_GA2_A4_GA7_tGSgA5_tGGAA16_FlexFrameLayoutVGAA01_yZ0VGAA08_PaddingZ0VGAA24_BackgroundStyleModifierVyAA13AnyShapeStyleVGGAQtGGAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGAGyAA05EmptyI0VA18_G_GWOi_(v35);
    goto LABEL_6;
  }

  v34[0] = v35[0];
  v34[1] = v35[1];
  *&v34[2] = *&v35[2];
  v30 = v10;
  v31 = v12;
  v32 = v9;
  v33 = v13;
  v15 = ToolbarProxy_V1.visibility(in:)(v34);
  outlined destroy of ToolbarPlacement.Role(v34);
  v14 = outlined destroy of ToolbarPlacement(v36);
  if (v15 != 2)
  {
    goto LABEL_5;
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v35[0] = *&v34[0];
  BYTE8(v35[0]) = BYTE8(v34[0]);
  *&v35[1] = *&v34[1];
  BYTE8(v35[1]) = BYTE8(v34[1]);
  v35[2] = v34[2];
  _s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA6VStackVyAA9TupleViewVyAGyAA7DividerVAA14_OpacityEffectVGSg_AGyAGyAGyAGyAA6HStackVyAKyAA7ForEachVys10ArraySliceVyAA07ToolbarE0V5EntryVGA_2IDVAA07BarItemI0VG_AKyAA6SpacerV_AUySayA_GA2_A4_GA7_tGSgA5_tGGAA16_FlexFrameLayoutVGAA01_yZ0VGAA08_PaddingZ0VGAA24_BackgroundStyleModifierVyAA13AnyShapeStyleVGGAQtGGAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGAGyAA05EmptyI0VA18_G_GWOi0_(v35);
LABEL_6:
  memcpy(v36, v35, 0x219uLL);
  return memcpy(a6, v36, 0x219uLL);
}

double closure #1 in closure #1 in InferredToolbarModifier.bottomBar(toolbar:)@<D0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a6@<X8>)
{
  v9 = static VerticalAlignment.center.getter();
  v40 = 1;
  closure #1 in closure #1 in closure #1 in InferredToolbarModifier.bottomBar(toolbar:)(a1, a2, &v25);
  v51 = v35;
  v52 = v36;
  v53 = v37;
  v54 = v38;
  v47 = v31;
  v48 = v32;
  v49 = v33;
  v50 = v34;
  v43 = v27;
  v44 = v28;
  v45 = v29;
  v46 = v30;
  v41 = v25;
  v42 = v26;
  v55[10] = v35;
  v55[11] = v36;
  v55[12] = v37;
  v55[13] = v38;
  v55[6] = v31;
  v55[7] = v32;
  v55[8] = v33;
  v55[9] = v34;
  v55[2] = v27;
  v55[3] = v28;
  v55[4] = v29;
  v55[5] = v30;
  v55[0] = v25;
  v55[1] = v26;
  outlined init with copy of TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>(&v41, v24, type metadata accessor for TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>);
  outlined destroy of TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>(v55, type metadata accessor for TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>);
  *&v39[167] = v51;
  *&v39[183] = v52;
  *&v39[199] = v53;
  *&v39[215] = v54;
  *&v39[103] = v47;
  *&v39[119] = v48;
  *&v39[135] = v49;
  *&v39[151] = v50;
  *&v39[39] = v43;
  *&v39[55] = v44;
  *&v39[71] = v45;
  *&v39[87] = v46;
  *&v39[7] = v41;
  *&v39[23] = v42;
  v10 = v40;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v11 = *&v39[160];
  *(a6 + 193) = *&v39[176];
  v12 = *&v39[208];
  *(a6 + 209) = *&v39[192];
  *(a6 + 225) = v12;
  v13 = *&v39[96];
  *(a6 + 129) = *&v39[112];
  v14 = *&v39[144];
  *(a6 + 145) = *&v39[128];
  *(a6 + 161) = v14;
  *(a6 + 177) = v11;
  v15 = *&v39[32];
  *(a6 + 65) = *&v39[48];
  v16 = *&v39[80];
  *(a6 + 81) = *&v39[64];
  *(a6 + 97) = v16;
  *(a6 + 113) = v13;
  v17 = *&v39[16];
  *(a6 + 17) = *v39;
  *(a6 + 33) = v17;
  *(a6 + 49) = v15;
  v18 = v29;
  v19 = v30;
  v20 = v27;
  *(a6 + 296) = v28;
  *(a6 + 312) = v18;
  v21 = v31;
  *(a6 + 328) = v19;
  *(a6 + 344) = v21;
  result = *&v25;
  v23 = v26;
  *(a6 + 248) = v25;
  *a6 = v9;
  *(a6 + 8) = 0;
  *(a6 + 16) = v10;
  *(a6 + 240) = *&v39[223];
  *(a6 + 264) = v23;
  *(a6 + 280) = v20;
  return result;
}

void closure #1 in closure #1 in closure #1 in InferredToolbarModifier.bottomBar(toolbar:)(unint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  *&v117 = a1;
  *(&v117 + 1) = a2;
  v73 = a2;
  v5 = type metadata accessor for ToolbarStorage.Entry(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v115, 0, sizeof(v115));
  v116 = xmmword_18CD90760;
  v111 = 13;
  v112 = 0u;
  v113 = 0u;
  v114 = 2;
  v98 = 0uLL;
  *&v99[0] = 0;
  v74 = xmmword_18CD90760;
  *(v99 + 8) = xmmword_18CD90760;
  v102[0] = 13;
  memset(&v102[1], 0, 32);
  LOBYTE(v102[5]) = 2;
  v9 = ToolbarProxy_V1.count(in:placement:)(&v98, v102);
  outlined destroy of ToolbarPlacement.Role?(v102, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role);
  outlined destroy of Toolbar.BarLocation(&v98);
  if (v9 < 2)
  {
    if (v9 < 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v9 = v9 >> 1;
  }

  *&v98 = MEMORY[0x1E69E7CC0];
  InputValue = AGGraphGetInputValue();
  MEMORY[0x1EEE9AC00](InputValue);
  v58 = &v111;
  v59 = &v98;
  v12 = v11;
  specialized ToolbarBridge.adjustEntries(in:_:)(v115, partial apply for closure #1 in ToolbarProxy_V1.callAsFunction<A>(in:placement:range:), (&v60 - 4));

  v13 = v98;
  if (*(v98 + 16) < v9)
  {
    __break(1u);
  }

  else
  {
    v71 = v6;
    v72 = v8;
    v14 = v73;
    v67 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v15 = v98 + v67;
    KeyPath = swift_getKeyPath();
    v102[0] = v13;
    v102[1] = v15;
    v102[2] = 0;
    v102[3] = (2 * v9) | 1;
    *v95 = KeyPath;
    type metadata accessor for ArraySlice<ToolbarStorage.Entry>(0);
    v18 = v17;
    v19 = lazy protocol witness table accessor for type ArraySlice<ToolbarStorage.Entry> and conformance ArraySlice<A>();
    v20 = lazy protocol witness table accessor for type ToolbarStorage.Entry.ID and conformance ToolbarStorage.Entry.ID();

    v68 = v20;
    v58 = v20;
    v64 = v19;
    v65 = v18;
    ForEach.init(_:idGenerator:content:)();
    outlined destroy of Toolbar.BarLocation(v115);

    outlined destroy of ToolbarItemPlacement.Role(&v111);
    v108 = v119;
    v109 = v120;
    v110 = v121;
    v106 = v117;
    v107 = v118;
    *v95 = a1;
    *&v95[8] = v14;
    v66 = HIDWORD(v14);
    v98 = 0uLL;
    *&v99[0] = 0;
    *(v99 + 8) = v74;
    v102[0] = 4;
    memset(&v102[1], 0, 32);
    LOBYTE(v102[5]) = 2;
    v21 = ToolbarProxy_V1.count(in:placement:)(&v98, v102);
    outlined destroy of ToolbarPlacement.Role?(v102, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role);
    outlined destroy of Toolbar.BarLocation(&v98);
    if (v21)
    {
      v86 = 0uLL;
      *&v87[0] = 0;
      *(v87 + 8) = v74;
      *v95 = 4;
      memset(&v95[8], 0, 32);
      v95[40] = 2;
      *&v84[0] = MEMORY[0x1E69E7CC0];
      v22 = AGGraphGetInputValue();
      MEMORY[0x1EEE9AC00](v22);
      v58 = v95;
      v59 = v84;
      v24 = v23;
      specialized ToolbarBridge.adjustEntries(in:_:)(&v86, partial apply for closure #1 in ToolbarProxy_V1.callAsFunction(in:placement:showSeparator:), (&v60 - 4));

      v25 = *&v84[0];
      v26 = *(*&v84[0] + 16);
      v27 = a1;
      if (v26)
      {
        v28 = v72;
        outlined init with copy of TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>(*&v84[0] + v67 + *(v71 + 72) * (v26 - 1), v72, type metadata accessor for ToolbarStorage.Entry);

        ToolbarStorage.Entry.id.getter(v102);
        outlined destroy of TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>(v28, type metadata accessor for ToolbarStorage.Entry);
      }

      else
      {
        v105 = 0;
        v103 = 0u;
        v104 = 0u;
        memset(v102, 0, sizeof(v102));
      }

      v30 = swift_getKeyPath();
      outlined init with copy of ToolbarStorage.Entry.ID?(v102, &v98, &lazy cache variable for type metadata for ToolbarStorage.Entry.ID?, &type metadata for ToolbarStorage.Entry.ID, MEMORY[0x1E69E6720], type metadata accessor for State<InferredToolbarState>);
      v31 = swift_allocObject();
      v32 = v100[0];
      *(v31 + 56) = v99[1];
      *(v31 + 72) = v32;
      *(v31 + 88) = v100[1];
      v33 = v99[0];
      *(v31 + 24) = v98;
      *(v31 + 16) = 0;
      *(v31 + 104) = v101;
      *(v31 + 40) = v33;
      *&v82[0] = v25;
      *&v80[0] = v30;
      type metadata accessor for [ToolbarStorage.Entry](0);
      lazy protocol witness table accessor for type [ToolbarStorage.Entry] and conformance [A]();
      v58 = v68;
      ForEach.init(_:idGenerator:content:)();
      outlined destroy of ToolbarPlacement.Role?(v102, &lazy cache variable for type metadata for ToolbarStorage.Entry.ID?, &type metadata for ToolbarStorage.Entry.ID);
      outlined destroy of Toolbar.BarLocation(&v86);

      outlined destroy of ToolbarPlacement.Role?(v95, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role);
      v62 = *(&v99[0] + 1);
      v63 = *(&v98 + 1);
      v71 = *&v99[1];
      v72 = v98;
      v69 = *&v99[0];
      v70 = *(&v99[1] + 1);
      LOBYTE(v82[0]) = 1;
      LOBYTE(v80[0]) = 1;
      v29 = 1;
      v61 = 1;
    }

    else
    {
      v71 = 0;
      v72 = 0;
      v62 = 0;
      v63 = 0;
      v69 = 0;
      v70 = 0;
      v61 = 0;
      v29 = 0;
      v27 = a1;
    }

    memset(v93, 0, sizeof(v93));
    v94 = v74;
    v89 = 13;
    v90 = 0u;
    v91 = 0u;
    v92 = 2;
    *v95 = v27;
    *&v95[4] = HIDWORD(a1);
    *&v95[8] = v73;
    *&v95[12] = v66;
    v98 = 0uLL;
    *&v99[0] = 0;
    *(v99 + 8) = v74;
    v102[0] = 13;
    memset(&v102[1], 0, 32);
    LOBYTE(v102[5]) = 2;
    v34 = ToolbarProxy_V1.count(in:placement:)(&v98, v102);
    outlined destroy of ToolbarPlacement.Role?(v102, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role);
    outlined destroy of Toolbar.BarLocation(&v98);
    if (v34 <= 1)
    {
      v35 = 0;
    }

    else
    {
      v35 = v34 >> 1;
    }

    if (v34 <= 1)
    {
      v36 = 0;
    }

    else
    {
      v36 = v34;
    }

    *&v98 = MEMORY[0x1E69E7CC0];
    v37 = AGGraphGetInputValue();
    MEMORY[0x1EEE9AC00](v37);
    v58 = &v89;
    v59 = &v98;
    v39 = v38;
    specialized ToolbarBridge.adjustEntries(in:_:)(v93, closure #1 in ToolbarProxy_V1.callAsFunction<A>(in:placement:range:)partial apply, (&v60 - 4));

    v40 = v98;
    v41 = *(v98 + 16);
    if (v41 >= v35 && v41 >= v36)
    {
      v42 = v98 + v67;
      v43 = swift_getKeyPath();
      v102[0] = v40;
      v102[1] = v42;
      v102[2] = v35;
      v102[3] = (2 * v36) | 1;
      *&v86 = v43;

      v58 = v68;
      ForEach.init(_:idGenerator:content:)();
      outlined destroy of Toolbar.BarLocation(v93);

      outlined destroy of ToolbarItemPlacement.Role(&v89);
      v84[2] = *&v95[32];
      v84[3] = v96;
      v84[0] = *v95;
      v84[1] = *&v95[16];
      v80[2] = v108;
      v80[3] = v109;
      v80[0] = v106;
      v80[1] = v107;
      v77 = v108;
      v78 = v109;
      v75 = v106;
      v76 = v107;
      *&v98 = 0;
      v60 = v29;
      *(&v98 + 1) = v29;
      *&v99[0] = v72;
      v44 = v62;
      v45 = v63;
      *(&v99[0] + 1) = v63;
      *&v99[1] = v69;
      *(&v99[1] + 1) = v62;
      *&v100[0] = v71;
      *(&v100[0] + 1) = v70;
      *(v79 + 8) = v98;
      *(&v79[3] + 8) = v100[0];
      *&v100[1] = 0;
      v46 = v61;
      BYTE8(v100[1]) = v61;
      *(&v79[2] + 8) = v99[1];
      *(&v79[1] + 8) = v99[0];
      *(&v79[4] + 1) = *(v100 + 9);
      v82[2] = *&v95[32];
      v82[3] = v96;
      v82[0] = *v95;
      v82[1] = *&v95[16];
      v85 = v97;
      v81 = v110;
      *&v79[0] = v110;
      v83 = v97;
      *(&v79[5] + 8) = *v95;
      *(&v79[9] + 1) = v97;
      *(&v79[8] + 8) = v96;
      *(&v79[7] + 8) = *&v95[32];
      *(&v79[6] + 8) = *&v95[16];
      v47 = v107;
      *a3 = v106;
      a3[1] = v47;
      v48 = v77;
      v49 = v78;
      v50 = v79[1];
      a3[4] = v79[0];
      a3[5] = v50;
      a3[2] = v48;
      a3[3] = v49;
      v51 = v79[2];
      v52 = v79[3];
      v53 = v79[5];
      a3[8] = v79[4];
      a3[9] = v53;
      a3[6] = v51;
      a3[7] = v52;
      v54 = v79[6];
      v55 = v79[7];
      v56 = v79[9];
      a3[12] = v79[8];
      a3[13] = v56;
      a3[10] = v54;
      a3[11] = v55;
      outlined init with copy of ToolbarStorage.Entry.ID?(v80, v102, &lazy cache variable for type metadata for ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, type metadata accessor for ArraySlice<ToolbarStorage.Entry>, lazy protocol witness table accessor for type ArraySlice<ToolbarStorage.Entry> and conformance ArraySlice<A>, type metadata accessor for ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>);
      v57 = MEMORY[0x1E69E6720];
      outlined init with copy of ToolbarStorage.Entry.ID?(&v98, v102, &lazy cache variable for type metadata for TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, type metadata accessor for TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>, MEMORY[0x1E69E6720], type metadata accessor for TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>);
      outlined init with copy of ToolbarStorage.Entry.ID?(v82, v102, &lazy cache variable for type metadata for ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, type metadata accessor for ArraySlice<ToolbarStorage.Entry>, lazy protocol witness table accessor for type ArraySlice<ToolbarStorage.Entry> and conformance ArraySlice<A>, type metadata accessor for ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>);
      outlined destroy of TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?(v84, &lazy cache variable for type metadata for ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, type metadata accessor for ArraySlice<ToolbarStorage.Entry>, lazy protocol witness table accessor for type ArraySlice<ToolbarStorage.Entry> and conformance ArraySlice<A>, type metadata accessor for ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>);
      v102[0] = 0;
      v102[1] = v60;
      v102[2] = v72;
      v102[3] = v45;
      v102[4] = v69;
      v102[5] = v44;
      *&v103 = v71;
      *(&v103 + 1) = v70;
      *&v104 = 0;
      BYTE8(v104) = v46;
      outlined destroy of TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?(v102, &lazy cache variable for type metadata for TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, type metadata accessor for TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>, v57, type metadata accessor for TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>);
      v87[1] = v108;
      v87[2] = v109;
      v88 = v110;
      v86 = v106;
      v87[0] = v107;
      outlined destroy of TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?(&v86, &lazy cache variable for type metadata for ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, type metadata accessor for ArraySlice<ToolbarStorage.Entry>, lazy protocol witness table accessor for type ArraySlice<ToolbarStorage.Entry> and conformance ArraySlice<A>, type metadata accessor for ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>);
      return;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

double static InferredToolbarModifier.OnScrollStateChange._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v37 = a4;
  v79 = *MEMORY[0x1E69E9840];
  v9 = a2[3];
  v10 = a2[1];
  v57 = a2[2];
  v58 = v9;
  v11 = a2[3];
  v59 = a2[4];
  v12 = a2[1];
  v55 = *a2;
  v56 = v12;
  v51 = v57;
  v52 = v11;
  v53 = a2[4];
  v13 = *a1;
  v60 = *(a2 + 20);
  v54 = *(a2 + 20);
  v49 = v55;
  v50 = v10;
  outlined init with copy of _ViewInputs(&v55, &v43);
  PreferenceKeys.add(_:)();
  v61[2] = v51;
  v61[3] = v52;
  v61[4] = v53;
  v62 = v54;
  v61[0] = v49;
  v61[1] = v50;
  v45[0] = v51;
  v45[1] = v52;
  v45[2] = v53;
  LODWORD(v45[3]) = v54;
  v43 = v49;
  v44 = v50;
  v14 = outlined init with copy of _ViewInputs(v61, v63);
  a3(v46, v14, &v43);
  v63[2] = v45[0];
  v63[3] = v45[1];
  v63[4] = v45[2];
  v64 = v45[3];
  v63[0] = v43;
  v63[1] = v44;
  outlined destroy of _ViewInputs(v63);
  *&v16 = *(&v46[0] + 1);
  v15 = *&v46[0];
  *&v43 = *&v46[0];
  *v38 = v16;
  DWORD2(v43) = DWORD2(v46[0]);
  v17 = PreferencesOutputs.subscript.getter();
  if ((v17 & 0x100000000) == 0)
  {
    v19 = v17;
    v42 = v13;
    type metadata accessor for InferredToolbarModifier.OnScrollStateChange(255, v37, a5, v18);
    type metadata accessor for _GraphValue();
    v35 = _GraphValue.value.getter();
    v46[2] = v57;
    v46[3] = v58;
    v46[4] = v59;
    v47 = v60;
    v46[0] = v55;
    v46[1] = v56;
    v20 = _ViewInputs.position.getter();
    v36 = a6;
    v33 = HIDWORD(v58);
    v34 = DWORD2(v59);
    v21 = a5;
    v22 = DWORD2(v56);
    default argument 2 of Observer.init(modifier:environment:cycleDetector:lastValue:)(&v39);
    v23 = v40;
    v24 = v41;
    _s7SwiftUI19ScrollGeometryStateVSgWOi0_(&v43);
    v69 = v45[2];
    v70 = v45[3];
    *v71 = v45[4];
    *&v71[13] = *(&v45[4] + 13);
    v65 = v43;
    v66 = v44;
    v67 = v45[0];
    v68 = v45[1];
    v72 = v43;
    v73 = v44;
    v74 = v45[0];
    v75 = v45[1];
    v76 = v45[2];
    v77 = v45[3];
    v78[0] = v45[4];
    *(v78 + 13) = *(&v45[4] + 13);
    *&v48[49] = v45[2];
    *&v48[53] = v45[3];
    *&v48[57] = v78[0];
    *(&v48[60] + 1) = *(&v45[4] + 13);
    *&v48[33] = v43;
    *&v48[37] = v44;
    *&v48[41] = v45[0];
    *&v48[45] = v45[1];
    *&v48[17] = v45[2];
    *&v48[21] = v45[3];
    *&v48[25] = *v71;
    *&v48[29] = *&v71[16];
    *&v48[1] = v43;
    *&v48[5] = v44;
    *&v48[9] = v45[0];
    *&v48[13] = v45[1];
    *&v43 = __PAIR64__(v19, v35);
    *(&v43 + 1) = __PAIR64__(v34, v20);
    *&v44 = __PAIR64__(v22, v33);
    *(&v44 + 1) = v39;
    LODWORD(v45[0]) = v23;
    BYTE4(v45[0]) = v24;
    DWORD2(v45[0]) = 0;
    v25 = memcpy(v45 + 12, v48, 0x101uLL);
    MEMORY[0x1EEE9AC00](v25);
    v31 = type metadata accessor for InferredToolbarModifier.ScrollGeometryActionBinding(0, v37, v21, v26);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for InferredToolbarModifier<A>.ScrollGeometryActionBinding, v31);
    type metadata accessor for State<InferredToolbarState>(0, &lazy cache variable for type metadata for Attribute<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v43, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_7, &v30, v31, MEMORY[0x1E69E73E0], v27, MEMORY[0x1E69E7410], v28);
    a6 = v36;
    AGGraphSetFlags();
  }

  v45[0] = v51;
  v45[1] = v52;
  v45[2] = v53;
  LODWORD(v45[3]) = v54;
  v43 = v49;
  v44 = v50;
  outlined destroy of _ViewInputs(&v43);
  *a6 = v15;
  result = v38[0];
  a6[1] = *&v38[0];
  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance InferredToolbarModifier<A>.OnScrollStateChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for InferredToolbarModifier<A>.OnScrollStateChange, a5);

  return MEMORY[0x1EEDE07E0](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t InferredToolbarModifier.ScrollGeometryActionBinding.modifier.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for InferredToolbarModifier.OnScrollStateChange(0, *(a1 + 16), *(a1 + 24), a4);
  v4 = *AGGraphGetValue();

  return v4;
}

void InferredToolbarModifier.ScrollGeometryActionBinding.updateValue()(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  if (v4 != *AGGraphGetValue() >> 1)
  {
    *(v2 + 40) = *AGGraphGetValue() >> 1;
    *(v2 + 28) = 0xFFFFFFFFLL;
    *(v2 + 36) = 0;
    _s7SwiftUI19ScrollGeometryStateVSgWOi0_(__dst);
    v177 = __dst[4];
    v178 = __dst[5];
    *v179 = __dst[6];
    *&v179[13] = *(&__dst[6] + 13);
    v173 = __dst[0];
    v174 = __dst[1];
    v175 = __dst[2];
    v176 = __dst[3];
    v180 = __dst[0];
    v185 = __dst[5];
    v186[0] = __dst[6];
    *(v186 + 13) = *(&__dst[6] + 13);
    v181 = __dst[1];
    v182 = __dst[2];
    v184 = __dst[4];
    v183 = __dst[3];
    v5 = __dst[5];
    *(v2 + 240) = __dst[4];
    *(v2 + 256) = v5;
    *(v2 + 272) = v186[0];
    *(v2 + 285) = *(v186 + 13);
    v6 = v181;
    *(v2 + 176) = v180;
    *(v2 + 192) = v6;
    v7 = v183;
    *(v2 + 208) = v182;
    *(v2 + 224) = v7;
    v8 = v178;
    *(v2 + 112) = v177;
    *(v2 + 128) = v8;
    v9 = *&v179[16];
    *(v2 + 144) = *v179;
    *(v2 + 160) = v9;
    v10 = v174;
    *(v2 + 48) = v173;
    *(v2 + 64) = v10;
    v11 = v176;
    *(v2 + 80) = v175;
    *(v2 + 96) = v11;
  }

  type metadata accessor for State<InferredToolbarState>(0, &lazy cache variable for type metadata for [ScrollGeometryState], MEMORY[0x1E697F7D0], MEMORY[0x1E69E62F8]);
  Value = AGGraphGetValue();
  if (v13)
  {
    v14 = *Value;

    if ((UpdateCycleDetector.dispatch(label:isDebug:)() & 1) == 0)
    {

      return;
    }

    AGGraphClearUpdate();
    v16 = type metadata accessor for InferredToolbarModifier.ScrollGeometryActionBinding(0, *(a1 + 16), *(a1 + 24), v15);
    type metadata accessor for CGPoint(0);
    v17 = AGGraphGetValue();
    v18 = *v17;
    v19 = v17[1];
    AGGraphSetUpdate();
    AGGraphClearUpdate();
    v20 = AGGraphGetValue();
    v94 = v20[1];
    v96 = *v20;
    AGGraphSetUpdate();
    AGGraphClearUpdate();
    memcpy(__dst, v2, 0x12DuLL);
    v85 = v16;
    AlertTransformModifier.Transform.transform.getter(&v111);
    AGGraphSetUpdate();
    v21 = v111;
    v90 = v113;
    v92 = v112;
    static ScrollGeometryState.zero.getter();
    v140[4] = __dst[4];
    v140[5] = __dst[5];
    v140[6] = __dst[6];
    v140[0] = __dst[0];
    v140[1] = __dst[1];
    v140[2] = __dst[2];
    v140[3] = __dst[3];
    v87 = __dst[7];
    v139 = BYTE3(__dst[7]);
    v138 = *(&__dst[7] + 1);
    v88 = DWORD2(__dst[7]);
    v89 = DWORD1(__dst[7]);
    v22 = memcpy(__dst, v2, 0x12DuLL);
    *v108 = v96;
    *&v108[16] = v94;
    v23 = MEMORY[0x18D00B390](v22);
    *v98 = v21;
    *&v98[16] = v92;
    *&v98[32] = v90;
    InferredToolbarModifier.ScrollGeometryActionBinding.findBestStates(in:position:size:transform:)(v14, v98, &v111, v18, v19, v23, v24);

    v147 = v115;
    v148 = v116;
    v149 = *v117;
    v143 = v111;
    v144 = v112;
    v146 = v114;
    v145 = v113;
    v25 = v117[16];
    v142 = v117[19];
    v141 = *&v117[17];
    LODWORD(v16) = *&v117[20];
    v26 = *&v117[24];
    v86 = v117[28];
    v156 = v122;
    v157 = v123;
    v158 = v124;
    v152 = v118;
    v153 = v119;
    v155 = v121;
    v154 = v120;
    v97 = v125;
    v151 = v127;
    v150 = v126;
    v95 = v128;
    v93 = v129;
    v91 = v130;
    _s7SwiftUI19ScrollGeometryStateVSgWOi0_(&v159);
    v27 = swift_allocObject();
    v28 = v164;
    v27[5] = v163;
    v27[6] = v28;
    v27[7] = v165[0];
    *(v27 + 125) = *(v165 + 13);
    v29 = v160;
    v27[1] = v159;
    v27[2] = v29;
    v30 = v162;
    v27[3] = v161;
    v27[4] = v30;
    v31 = *(v2 + 80);
    *&v98[51] = *(v2 + 96);
    v32 = *(v2 + 128);
    *&v98[67] = *(v2 + 112);
    *&v98[83] = v32;
    *&v98[99] = *(v2 + 144);
    v33 = *(v2 + 64);
    *&v98[3] = *(v2 + 48);
    v34 = *(v2 + 160);
    LOWORD(v101) = *(v2 + 161);
    BYTE2(v101) = *(v2 + 163);
    v35 = *(v2 + 164);
    v36 = *(v2 + 168);
    v37 = *(v2 + 172);
    v168 = v141;
    v169 = v142;
    *&v98[19] = v33;
    *&v98[35] = v31;
    v166[1] = v144;
    v166[0] = v143;
    v166[6] = v149;
    v166[5] = v148;
    v166[4] = v147;
    v166[2] = v145;
    v166[3] = v146;
    v167 = v25;
    v84 = v16;
    v170 = v16;
    v171 = v26;
    v172 = v86;
    if (_s7SwiftUI19ScrollGeometryStateVSgWOg(v166) == 1)
    {
      __dst[4] = *&v98[67];
      __dst[5] = *&v98[83];
      __dst[6] = *&v98[99];
      __dst[0] = *&v98[3];
      __dst[1] = *&v98[19];
      __dst[3] = *&v98[51];
      __dst[2] = *&v98[35];
      *(&__dst[7] + 1) = v101;
      BYTE3(__dst[7]) = BYTE2(v101);
      LOBYTE(__dst[7]) = v34;
      *(&__dst[7] + 4) = __PAIR64__(v36, v35);
      BYTE12(__dst[7]) = v37;
      if (_s7SwiftUI19ScrollGeometryStateVSgWOg(__dst) == 1)
      {
LABEL_7:
        v135 = v163;
        v136 = v164;
        v137[0] = v165[0];
        *(v137 + 13) = *(v165 + 13);
        v131 = v159;
        v132 = v160;
        v133 = v161;
        v134 = v162;
        v38 = v87;
        goto LABEL_20;
      }
    }

    else
    {
      __dst[4] = *&v98[67];
      __dst[5] = *&v98[83];
      __dst[6] = *&v98[99];
      __dst[0] = *&v98[3];
      __dst[1] = *&v98[19];
      __dst[3] = *&v98[51];
      __dst[2] = *&v98[35];
      *(&__dst[7] + 1) = v101;
      BYTE3(__dst[7]) = BYTE2(v101);
      LOBYTE(__dst[7]) = v34;
      *(&__dst[7] + 4) = __PAIR64__(v36, v35);
      BYTE12(__dst[7]) = v37;
      if (_s7SwiftUI19ScrollGeometryStateVSgWOg(__dst) != 1)
      {
        *&v108[64] = *&v98[67];
        *&v108[80] = *&v98[83];
        *&v108[96] = *&v98[99];
        *v108 = *&v98[3];
        *&v108[16] = *&v98[19];
        *&v108[32] = *&v98[35];
        *&v108[48] = *&v98[51];
        v115 = v147;
        v116 = v148;
        *v117 = v149;
        v111 = v143;
        v112 = v144;
        v113 = v145;
        v114 = v146;
        v39 = v25;
        if ((MEMORY[0x18D004CD0](&v111, v108) & 1) != 0 && v25 == v34)
        {
          v40 = v84;
          if (static WeakAttribute.== infix(_:_:)())
          {
            goto LABEL_7;
          }

          v38 = v87;
LABEL_12:
          __dst[4] = v147;
          __dst[5] = v148;
          __dst[6] = v149;
          __dst[0] = v143;
          __dst[1] = v144;
          __dst[3] = v146;
          __dst[2] = v145;
          LOBYTE(__dst[7]) = v39;
          BYTE3(__dst[7]) = v142;
          *(&__dst[7] + 1) = v141;
          *(&__dst[7] + 4) = __PAIR64__(v26, v40);
          BYTE12(__dst[7]) = v86;
          v41 = _s7SwiftUI19ScrollGeometryStateVSgWOg(__dst);
          v42 = &v143;
          if (v41 == 1)
          {
            v42 = v140;
          }

          v43 = v42[5];
          v44 = &v141;
          *&v108[64] = v42[4];
          *&v108[80] = v43;
          if (v41 == 1)
          {
            v44 = &v138;
            v45 = v38;
          }

          else
          {
            v45 = v39;
          }

          v47 = v88;
          v46 = v89;
          if (v41 != 1)
          {
            v46 = v40;
            v47 = v26;
          }

          *&v108[96] = v42[6];
          v48 = v42[1];
          *v108 = *v42;
          *&v108[16] = v48;
          v49 = v42[3];
          *&v108[32] = v42[2];
          *&v108[48] = v49;
          v109 = *v44;
          v110 = *(v44 + 2);
          v115 = *&v108[64];
          v116 = *&v108[80];
          *v117 = *&v108[96];
          v111 = *v108;
          v112 = v48;
          v113 = *&v108[32];
          v114 = v49;
          v117[16] = v45;
          *&v117[17] = v109;
          v117[19] = v110;
          *&v117[20] = v46;
          *&v117[24] = v47;
          _s7SwiftUI19ScrollGeometryStateVSgWOi_(&v111);
          v135 = v115;
          v136 = v116;
          v137[0] = *v117;
          *(v137 + 13) = *&v117[13];
          v131 = v111;
          v132 = v112;
          v133 = v113;
          v134 = v114;
LABEL_20:
          v50 = *(v2 + 288);
          v109 = *(v2 + 289);
          v110 = *(v2 + 291);
          v51 = *(v2 + 292);
          v52 = *(v2 + 296);
          v53 = *(v2 + 300);
          v54 = *(v2 + 208);
          *&v108[51] = *(v2 + 224);
          v55 = *(v2 + 256);
          *&v108[67] = *(v2 + 240);
          *&v108[83] = v55;
          *&v108[99] = *(v2 + 272);
          v56 = *(v2 + 192);
          *&v108[3] = *(v2 + 176);
          *&v108[19] = v56;
          *&v108[35] = v54;
          v111 = v152;
          v112 = v153;
          v116 = v157;
          *v117 = v158;
          v114 = v155;
          v115 = v156;
          v113 = v154;
          v117[16] = v97;
          v117[19] = v151;
          *&v117[17] = v150;
          *&v117[20] = v95;
          *&v117[24] = v93;
          v117[28] = v91;
          if (_s7SwiftUI19ScrollGeometryStateVSgWOg(&v111) == 1)
          {
            __dst[4] = *&v108[67];
            __dst[5] = *&v108[83];
            __dst[6] = *&v108[99];
            __dst[0] = *&v108[3];
            __dst[1] = *&v108[19];
            __dst[3] = *&v108[51];
            __dst[2] = *&v108[35];
            *(&__dst[7] + 1) = v109;
            BYTE3(__dst[7]) = v110;
            LOBYTE(__dst[7]) = v50;
            *(&__dst[7] + 4) = __PAIR64__(v52, v51);
            BYTE12(__dst[7]) = v53;
            if (_s7SwiftUI19ScrollGeometryStateVSgWOg(__dst) == 1)
            {
LABEL_32:
              *&v98[64] = v135;
              *&v98[80] = v136;
              *&v98[96] = v137[0];
              *&v98[109] = *(v137 + 13);
              *v98 = v131;
              *&v98[16] = v132;
              *&v98[32] = v133;
              *&v98[48] = v134;
              if (_s7SwiftUI19ScrollGeometryStateVSgWOg(v98) != 1 || (v69 = v27[6], __dst[4] = v27[5], __dst[5] = v69, __dst[6] = v27[7], *(&__dst[6] + 13) = *(v27 + 125), v70 = v27[2], __dst[0] = v27[1], __dst[1] = v70, v71 = v27[4], __dst[2] = v27[3], __dst[3] = v71, _s7SwiftUI19ScrollGeometryStateVSgWOg(__dst) != 1))
              {
                AGGraphClearUpdate();
                memcpy(__dst, v2, 0x12DuLL);
                v75 = InferredToolbarModifier.ScrollGeometryActionBinding.modifier.getter(v85, v72, v73, v74);
                v77 = v76;
                v79 = v78;
                AGGraphSetUpdate();
                LOBYTE(__dst[0]) = 17;
                v80 = swift_allocObject();
                v81 = v136;
                *(v80 + 80) = v135;
                *(v80 + 96) = v81;
                *(v80 + 112) = v137[0];
                *(v80 + 125) = *(v137 + 13);
                v82 = v132;
                *(v80 + 16) = v131;
                *(v80 + 32) = v82;
                v83 = v134;
                *(v80 + 48) = v133;
                *(v80 + 64) = v83;
                *(v80 + 144) = v75;
                *(v80 + 152) = v77;
                *(v80 + 160) = v79;
                *(v80 + 168) = v27;

                static Update.enqueueAction(reason:_:)();
              }

              return;
            }
          }

          else
          {
            __dst[4] = *&v108[67];
            __dst[5] = *&v108[83];
            __dst[6] = *&v108[99];
            __dst[0] = *&v108[3];
            __dst[1] = *&v108[19];
            __dst[3] = *&v108[51];
            __dst[2] = *&v108[35];
            *(&__dst[7] + 1) = v109;
            BYTE3(__dst[7]) = v110;
            LOBYTE(__dst[7]) = v50;
            *(&__dst[7] + 4) = __PAIR64__(v52, v51);
            BYTE12(__dst[7]) = v53;
            if (_s7SwiftUI19ScrollGeometryStateVSgWOg(__dst) != 1)
            {
              v105 = *&v108[67];
              v106 = *&v108[83];
              v107 = *&v108[99];
              v101 = *&v108[3];
              v102 = *&v108[19];
              v103 = *&v108[35];
              v104 = *&v108[51];
              *&v98[64] = v156;
              *&v98[80] = v157;
              *&v98[96] = v158;
              *v98 = v152;
              *&v98[16] = v153;
              *&v98[32] = v154;
              *&v98[48] = v155;
              if (MEMORY[0x18D004CD0](v98, &v101) & 1) != 0 && v97 == v50 && (static WeakAttribute.== infix(_:_:)())
              {
                goto LABEL_32;
              }
            }
          }

          __dst[4] = v156;
          __dst[5] = v157;
          __dst[6] = v158;
          __dst[0] = v152;
          __dst[1] = v153;
          __dst[3] = v155;
          __dst[2] = v154;
          LOBYTE(__dst[7]) = v97;
          BYTE3(__dst[7]) = v151;
          *(&__dst[7] + 1) = v150;
          *(&__dst[7] + 4) = __PAIR64__(v93, v95);
          BYTE12(__dst[7]) = v91;
          v57 = _s7SwiftUI19ScrollGeometryStateVSgWOg(__dst);
          v58 = &v152;
          if (v57 == 1)
          {
            v58 = v140;
          }

          v59 = v58[5];
          v60 = &v150;
          v105 = v58[4];
          v106 = v59;
          if (v57 == 1)
          {
            v60 = &v138;
            v61 = v38;
          }

          else
          {
            v61 = v97;
          }

          v63 = v88;
          v62 = v89;
          if (v57 != 1)
          {
            v62 = v95;
            v63 = v93;
          }

          v107 = v58[6];
          v64 = v58[1];
          v101 = *v58;
          v102 = v64;
          v65 = v58[3];
          v103 = v58[2];
          v104 = v65;
          v99 = *v60;
          v100 = *(v60 + 2);
          *&v98[64] = v105;
          *&v98[80] = v106;
          *&v98[96] = v107;
          *v98 = v101;
          *&v98[16] = v64;
          *&v98[32] = v103;
          *&v98[48] = v65;
          v98[112] = v61;
          *&v98[113] = v99;
          v98[115] = v100;
          *&v98[116] = v62;
          *&v98[120] = v63;
          _s7SwiftUI19ScrollGeometryStateVSgWOi_(v98);
          v66 = *&v98[80];
          v27[5] = *&v98[64];
          v27[6] = v66;
          v27[7] = *&v98[96];
          *(v27 + 125) = *&v98[109];
          v67 = *&v98[16];
          v27[1] = *v98;
          v27[2] = v67;
          v68 = *&v98[48];
          v27[3] = *&v98[32];
          v27[4] = v68;
          goto LABEL_32;
        }

        v38 = v87;
LABEL_11:
        v40 = v84;
        goto LABEL_12;
      }
    }

    v38 = v87;
    v39 = v25;
    goto LABEL_11;
  }
}

double InferredToolbarModifier.ScrollGeometryActionBinding.findBestStates(in:position:size:transform:)@<D0>(uint64_t a1@<X0>, __n128 *a2@<X1>, _OWORD *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v47 = a2->n128_u64[1];
  v48 = a2->n128_u64[0];
  v45 = a2[1];
  v46 = a2[2];
  _s7SwiftUI19ScrollGeometryStateVSgWOi0_(&v90);
  v80 = v94;
  v81 = v95;
  *v82 = v96[0];
  *&v82[13] = *(v96 + 13);
  v76 = v90;
  v77 = v91;
  v78 = v92;
  v79 = v93;
  v83 = v90;
  v84 = v91;
  v85 = v92;
  v86 = v93;
  v87 = v94;
  v88 = v95;
  v89[0] = v96[0];
  *(v89 + 13) = *(v96 + 13);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = (a1 + (v8 << 7) - 96);
    for (i = v8 - 1; ; --i)
    {
      v11 = v9[5];
      v12 = v9[3];
      v73 = v9[4];
      v74 = v11;
      v13 = v9[5];
      v75[0] = v9[6];
      *(v75 + 12) = *(v9 + 108);
      v14 = *(v9 + 1);
      v69 = *v9;
      v70 = v14;
      v15 = v9[3];
      v17 = *v9;
      v16 = *(v9 + 1);
      v71 = *(v9 + 2);
      v72 = v15;
      v94 = v73;
      v95 = v13;
      v96[0] = v9[6];
      *(v96 + 12) = *(v9 + 108);
      v90 = v17;
      v91 = v16;
      v92 = v71;
      v93 = v12;
      ScrollGeometryState.transform.getter();
      v18 = v53;
      if (v53 != 1)
      {
        v19 = *(&v53 + 1);
        v20 = v54;
        v21 = v55;
        v65 = a4;
        v66 = a5;
        v67 = a6;
        v68 = a7;
        hostingViewCoordinateSpace.getter();
        *&v53 = v61;
        v55.n128_u8[8] = 1;
        *&v90 = v48;
        *(&v90 + 1) = v47;
        v91 = v45;
        v92 = v46;
        CGRect.convert(to:transform:)();
        outlined destroy of CoordinateSpace(&v53);
        v94 = v73;
        v95 = v74;
        v96[0] = v75[0];
        v90 = v69;
        v91 = v70;
        v92 = v71;
        v93 = v72;
        ScrollGeometry.bounds.getter();
        v61 = v22;
        v62 = v23;
        v63 = v24;
        v64 = v25;
        hostingViewCoordinateSpace.getter();
        *&v53 = v60;
        v55.n128_u8[8] = 1;
        *&v90 = v18;
        *(&v90 + 1) = v19;
        v91 = v20;
        v92 = v21;
        CGRect.convert(to:transform:)();
        outlined destroy of CoordinateSpace(&v53);
        v26 = v65;
        v27 = v66;
        v28 = v67;
        v29 = v68;
        v30 = v61;
        v31 = v62;
        v32 = v63;
        v33 = v64;
        if (v66 == v62)
        {
          v94 = v73;
          v95 = v74;
          v96[0] = v75[0];
          *(v96 + 12) = *(v75 + 12);
          v90 = v69;
          v91 = v70;
          v92 = v71;
          v93 = v72;
          _s7SwiftUI19ScrollGeometryStateVSgWOi_(&v90);
          v80 = v94;
          v81 = v95;
          *v82 = v96[0];
          *&v82[13] = *(v96 + 13);
          v76 = v90;
          v77 = v91;
          v78 = v92;
          v79 = v93;
        }

        v97.origin.x = v26;
        v97.origin.y = v27;
        v97.size.width = v28;
        v97.size.height = v29;
        MaxY = CGRectGetMaxY(v97);
        v98.origin.x = v30;
        v98.origin.y = v31;
        v98.size.width = v32;
        v98.size.height = v33;
        v35 = CGRectGetMaxY(v98);
        outlined consume of EnvironmentValues?(v18, v19);
        if (MaxY == v35)
        {
          v94 = v73;
          v95 = v74;
          v96[0] = v75[0];
          *(v96 + 12) = *(v75 + 12);
          v90 = v69;
          v91 = v70;
          v92 = v71;
          v93 = v72;
          _s7SwiftUI19ScrollGeometryStateVSgWOi_(&v90);
          v87 = v94;
          v88 = v95;
          v89[0] = v96[0];
          *(v89 + 13) = *(v96 + 13);
          v83 = v90;
          v84 = v91;
          v85 = v92;
          v86 = v93;
        }

        v94 = v80;
        v95 = v81;
        v96[0] = *v82;
        *(v96 + 13) = *&v82[13];
        v90 = v76;
        v91 = v77;
        v92 = v78;
        v93 = v79;
        if (_s7SwiftUI19ScrollGeometryStateVSgWOg(&v90) != 1)
        {
          v57 = v87;
          v58 = v88;
          v59[0] = v89[0];
          *(v59 + 13) = *(v89 + 13);
          v53 = v83;
          v54 = v84;
          v55 = v85;
          v56 = v86;
          if (_s7SwiftUI19ScrollGeometryStateVSgWOg(&v53) != 1)
          {
            break;
          }
        }
      }

      if (!i)
      {
        break;
      }

      v9 -= 8;
    }
  }

  v36 = v88;
  a3[12] = v87;
  a3[13] = v36;
  a3[14] = v89[0];
  *(a3 + 237) = *(v89 + 13);
  v37 = v84;
  a3[8] = v83;
  a3[9] = v37;
  v38 = v86;
  a3[10] = v85;
  a3[11] = v38;
  v39 = v81;
  a3[4] = v80;
  a3[5] = v39;
  v40 = *&v82[16];
  a3[6] = *v82;
  a3[7] = v40;
  v41 = v77;
  *a3 = v76;
  a3[1] = v41;
  result = v78.n128_f64[0];
  v43 = v79;
  a3[2] = v78;
  a3[3] = v43;
  return result;
}

uint64_t specialized closure #5 in InferredToolbarModifier.ScrollGeometryActionBinding.updateValue()(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v9 = a1[5];
  v48 = a1[4];
  v49 = v9;
  v50[0] = a1[6];
  *(v50 + 13) = *(a1 + 109);
  v10 = a1[1];
  v44 = *a1;
  v45 = v10;
  v11 = a1[3];
  v46 = a1[2];
  v47 = v11;
  if (_s7SwiftUI19ScrollGeometryStateVSgWOg(&v44) != 1)
  {
    v41 = v48;
    v42 = v49;
    v43[0] = v50[0];
    v37 = v44;
    v38 = v45;
    v39 = v46;
    v40 = v47;
    *&v29 = a2;
    *(&v29 + 1) = a3;
    *&v30 = a4;
    type metadata accessor for State<InferredToolbarState>(0, &lazy cache variable for type metadata for Binding<InferredToolbarState>, &type metadata for InferredToolbarState, MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](v36);
    InferredToolbarState.update(edge:to:)(0, &v37, v12, v13, v14, v15, v16, v17);
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  swift_beginAccess();
  v18 = a5[6];
  v41 = a5[5];
  v42 = v18;
  v43[0] = a5[7];
  *(v43 + 13) = *(a5 + 125);
  v19 = a5[2];
  v37 = a5[1];
  v38 = v19;
  v20 = a5[4];
  v39 = a5[3];
  v40 = v20;
  result = _s7SwiftUI19ScrollGeometryStateVSgWOg(&v37);
  if (result != 1)
  {
    v33 = v41;
    v34 = v42;
    v35 = v43[0];
    v29 = v37;
    v30 = v38;
    v31 = v39;
    v32 = v40;
    type metadata accessor for State<InferredToolbarState>(0, &lazy cache variable for type metadata for Binding<InferredToolbarState>, &type metadata for InferredToolbarState, MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](&v28);
    InferredToolbarState.update(edge:to:)(1, &v29, v22, v23, v24, v25, v26, v27);
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

uint64_t static InferredToolbarState.Storage.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type VerticalEdge and conformance VerticalEdge();
  v9 = MEMORY[0x1E697DFA8];

  return MEMORY[0x1EEE68930](a1, a2, v9, a3, v8, a4);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance InferredToolbarUserDefaultFeature(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type InferredToolbarUserDefaultFeature and conformance InferredToolbarUserDefaultFeature();

  return static UserDefaultKeyedFeature.isEnabled.getter();
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance InferredToolbarUserDefaultFeature@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = lazy protocol witness table accessor for type InferredToolbarUserDefaultFeature and conformance InferredToolbarUserDefaultFeature();
  result = (*(v4 + 16))(a1, v4);
  *a2 = result & 1;
  return result;
}

uint64_t View.inferToolbar()(uint64_t a1, uint64_t a2)
{
  v6[0] = specialized InferredToolbarState.init()();
  v6[1] = 0;
  type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(0, &lazy cache variable for type metadata for InferredToolbarModifier<AllToolbarEdges>, &type metadata for AllToolbarEdges, &protocol witness table for AllToolbarEdges, type metadata accessor for InferredToolbarModifier);
  MEMORY[0x18D00A570](v6, a1, v4, a2);
}

BOOL specialized static ViewInputPredicate.evaluate(listInputs:)(uint64_t *a1)
{
  type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  if ((static SemanticFeature.isEnabled.getter() & 1) == 0)
  {
    return 0;
  }

  v1 = lazy protocol witness table accessor for type InferredToolbarUserDefaultFeature and conformance InferredToolbarUserDefaultFeature();
  if (((*(v1 + 16))(&type metadata for InferredToolbarUserDefaultFeature, v1) & 1) == 0)
  {
    return 0;
  }

  lazy protocol witness table accessor for type DocumentGroupConfiguration.DocumentKey and conformance DocumentGroupConfiguration.DocumentKey();
  PropertyList.subscript.getter();
  return v3 == *MEMORY[0x1E698D3F8];
}

unint64_t lazy protocol witness table accessor for type InferredToolbarModifier<AllToolbarEdges> and conformance InferredToolbarModifier<A>()
{
  result = lazy protocol witness table cache variable for type InferredToolbarModifier<AllToolbarEdges> and conformance InferredToolbarModifier<A>;
  if (!lazy protocol witness table cache variable for type InferredToolbarModifier<AllToolbarEdges> and conformance InferredToolbarModifier<A>)
  {
    type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(255, &lazy cache variable for type metadata for InferredToolbarModifier<AllToolbarEdges>, &type metadata for AllToolbarEdges, &protocol witness table for AllToolbarEdges, type metadata accessor for InferredToolbarModifier);
    result = swift_getWitnessTable("%", v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InferredToolbarModifier<AllToolbarEdges> and conformance InferredToolbarModifier<A>);
  }

  return result;
}

uint64_t type metadata completion function for InferredToolbarModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for InferredToolbarModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *a1 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    v10[1] = v11[1];
  }

  return v3;
}

double destroy for InferredToolbarModifier(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();

  return result;
}

uint64_t initializeWithCopy for InferredToolbarModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];

  return a1;
}

uint64_t assignWithCopy for InferredToolbarModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v7[1] = v8[1];

  return a1;
}

uint64_t assignWithTake for InferredToolbarModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v7[1] = v8[1];

  return a1;
}

void type metadata accessor for ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>)
  {
    type metadata accessor for _UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>(255);
    type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(255, &lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>, MEMORY[0x1E697F528], MEMORY[0x1E697F518], MEMORY[0x1E697FDB8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>);
    }
  }
}

void type metadata accessor for _UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = type metadata accessor for _UnaryViewAdaptor();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for _ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>)
  {
    type metadata accessor for VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>(255);
    type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(255, &lazy cache variable for type metadata for ModifiedContent<EmptyView, _FrameLayout>, MEMORY[0x1E6981E70], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    v1 = type metadata accessor for _ConditionalContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>);
    }
  }
}

void type metadata accessor for VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>(255);
    lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>, MEMORY[0x1E6981F48]);
    v1 = type metadata accessor for VStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Divider, _OpacityEffect>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Divider, _OpacityEffect>?)
  {
    type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(255, &lazy cache variable for type metadata for ModifiedContent<Divider, _OpacityEffect>, &type metadata for Divider, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Divider, _OpacityEffect>?);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, type metadata accessor for ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>);
    type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(255, &lazy cache variable for type metadata for _BackgroundStyleModifier<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980460]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>);
    }
  }
}

void type metadata accessor for HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>)
  {
    type metadata accessor for TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>(255);
    lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)> and conformance TupleView<A>, type metadata accessor for TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>, MEMORY[0x1E6981F48]);
    v1 = type metadata accessor for HStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>);
    }
  }
}

void type metadata accessor for (ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>))
  {
    type metadata accessor for ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>(255, &lazy cache variable for type metadata for ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, type metadata accessor for [ToolbarStorage.Entry], lazy protocol witness table accessor for type [ToolbarStorage.Entry] and conformance [A]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>));
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>> and conformance VStack<A>, type metadata accessor for VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, MEMORY[0x1E6981870]);
    v5[1] = lazy protocol witness table accessor for type ModifiedContent<EmptyView, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<EmptyView, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<EmptyView, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<EmptyView, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(255, &lazy cache variable for type metadata for ModifiedContent<EmptyView, _FrameLayout>, MEMORY[0x1E6981E70], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    v4[0] = MEMORY[0x1E6981E60];
    v4[1] = MEMORY[0x1E697E040];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<EmptyView, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>, type metadata accessor for ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>> and conformance _UnaryViewAdaptor<A>, type metadata accessor for _UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, MEMORY[0x1E697F380]);
    v5[1] = lazy protocol witness table accessor for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for _InsetViewModifier<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>(255, a3, a4);
    a5();
    v7 = type metadata accessor for _InsetViewModifier();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for _ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>)
  {
    type metadata accessor for ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>(255);
    type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(255, &lazy cache variable for type metadata for ModifiedContent<EmptyView, _FrameLayout>, MEMORY[0x1E6981E70], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    v1 = type metadata accessor for _ConditionalContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>);
    }
  }
}

void type metadata accessor for ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>)
  {
    type metadata accessor for VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>(255);
    type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(255, &lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>, MEMORY[0x1E697F528], MEMORY[0x1E697F518], MEMORY[0x1E697FDB8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>);
    }
  }
}

void type metadata accessor for VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>(255);
    lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>, MEMORY[0x1E6981F48]);
    v1 = type metadata accessor for VStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>);
    }
  }
}

void type metadata accessor for (ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<Divider, _OpacityEffect>?(255);
    a3(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>);
    type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(255, &lazy cache variable for type metadata for _BackgroundStyleModifier<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980460]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>)
  {
    type metadata accessor for TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>(255);
    lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)> and conformance TupleView<A>, type metadata accessor for TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>, MEMORY[0x1E6981F48]);
    v1 = type metadata accessor for HStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>);
    }
  }
}

void type metadata accessor for (ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>))
  {
    type metadata accessor for ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>(255, &lazy cache variable for type metadata for ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, type metadata accessor for ArraySlice<ToolbarStorage.Entry>, lazy protocol witness table accessor for type ArraySlice<ToolbarStorage.Entry> and conformance ArraySlice<A>);
    type metadata accessor for TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>(255, &lazy cache variable for type metadata for TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, type metadata accessor for TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>));
    }
  }
}

void type metadata accessor for ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    lazy protocol witness table accessor for type ToolbarStorage.Entry.ID and conformance ToolbarStorage.Entry.ID();
    v6 = type metadata accessor for ForEach();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for (Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer))
  {
    type metadata accessor for ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>(255, &lazy cache variable for type metadata for ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, type metadata accessor for [ToolbarStorage.Entry], lazy protocol witness table accessor for type [ToolbarStorage.Entry] and conformance [A]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer));
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type ModifiedContent<EmptyView, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>> and conformance VStack<A>, type metadata accessor for VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, MEMORY[0x1E6981870]);
    v5[1] = lazy protocol witness table accessor for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>, type metadata accessor for _UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>> and conformance _UnaryViewAdaptor<A>, type metadata accessor for _UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, MEMORY[0x1E697F380]);
    v5[1] = lazy protocol witness table accessor for type StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnableInferredToolbar and conformance EnableInferredToolbar()
{
  result = lazy protocol witness table cache variable for type EnableInferredToolbar and conformance EnableInferredToolbar;
  if (!lazy protocol witness table cache variable for type EnableInferredToolbar and conformance EnableInferredToolbar)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EnableInferredToolbar, &type metadata for EnableInferredToolbar, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnableInferredToolbar and conformance EnableInferredToolbar);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in InferredToolbarModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for InferredToolbarModifier(0, *(v4 + 16), *(v4 + 24), a4);

  return closure #1 in closure #1 in InferredToolbarModifier.body(content:)(a1);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, MEMORY[0x1E69817F8]);
    v5[1] = MEMORY[0x1E697EBF8];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t lazy protocol witness table accessor for type MoveTransition and conformance MoveTransition()
{
  result = lazy protocol witness table cache variable for type MoveTransition and conformance MoveTransition;
  if (!lazy protocol witness table cache variable for type MoveTransition and conformance MoveTransition)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697E408], MEMORY[0x1E697E418], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MoveTransition and conformance MoveTransition);
  }

  return result;
}

uint64_t specialized InferredToolbarModifier.backgroundStyle(in:toolbar:opacity:)(uint64_t a1, __int128 *a2, double a3)
{
  ToolbarProxy_V1.appearance(in:)(a1, v5);
  v3 = v6;

  outlined destroy of ToolbarAppearanceConfiguration(v5);
  if (v3)
  {
    type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(0, &lazy cache variable for type metadata for _OpacityShapeStyle<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E697F5B0]);
    lazy protocol witness table accessor for type _OpacityShapeStyle<AnyShapeStyle> and conformance _OpacityShapeStyle<A>();
  }

  else
  {
    static Material.bar.getter();
    type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(0, &lazy cache variable for type metadata for _OpacityShapeStyle<Material>, MEMORY[0x1E6981C98], MEMORY[0x1E6981AD0], MEMORY[0x1E697F5B0]);
    lazy protocol witness table accessor for type _OpacityShapeStyle<Material> and conformance _OpacityShapeStyle<A>();
  }

  return AnyShapeStyle.init<A>(_:)();
}

unint64_t lazy protocol witness table accessor for type _BackgroundStyleModifier<AnyShapeStyle> and conformance _BackgroundStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type _BackgroundStyleModifier<AnyShapeStyle> and conformance _BackgroundStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type _BackgroundStyleModifier<AnyShapeStyle> and conformance _BackgroundStyleModifier<A>)
  {
    type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(255, &lazy cache variable for type metadata for _BackgroundStyleModifier<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980460]);
    result = swift_getWitnessTable(MEMORY[0x1E6980468], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _BackgroundStyleModifier<AnyShapeStyle> and conformance _BackgroundStyleModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Divider, _OpacityEffect>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Divider, _OpacityEffect>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Divider, _OpacityEffect>? and conformance <A> A?)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for ModifiedContent<Divider, _OpacityEffect>?(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<Divider, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E6982090], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Divider, _OpacityEffect>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Divider, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Divider, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Divider, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(255, &lazy cache variable for type metadata for ModifiedContent<Divider, _OpacityEffect>, &type metadata for Divider, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    v4[0] = &protocol witness table for Divider;
    v4[1] = MEMORY[0x1E697E5C0];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Divider, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t outlined destroy of ToolbarPlacement.Role?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for State<InferredToolbarState>(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of ToolbarStorage.Entry.ID?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t outlined destroy of TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t objectdestroy_6Tm_0()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 24));
    if (*(v0 + 104) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 64));
    }
  }

  return swift_deallocObject();
}

double _s7SwiftUI19ScrollGeometryStateVSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 108) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 124) = 1;
  return result;
}

uint64_t getEnumTagSinglePayload for InferredToolbarModifier.ScrollGeometryActionBinding(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 301))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 36);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for InferredToolbarModifier.ScrollGeometryActionBinding(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 248) = 0u;
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
    *(result + 300) = 0;
    *(result + 296) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 301) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 301) = 0;
    }

    if (a2)
    {
      *(result + 36) = a2 + 1;
    }
  }

  return result;
}

uint64_t _s7SwiftUI19ScrollGeometryStateVSgWOg(uint64_t a1)
{
  if (*(a1 + 124))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy253_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 237) = *(a2 + 237);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for InferredToolbarModifier.ScrollGeometryActionBinding.Candidates(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 253))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for InferredToolbarModifier.ScrollGeometryActionBinding.Candidates(uint64_t result, int a2, int a3)
{
  if (a2)
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
    *(result + 252) = 0;
    *(result + 248) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 253) = v3;
  return result;
}

void type metadata accessor for State<InferredToolbarState>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t static BackgroundTaskProtocol<>.runTasks(identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return static BackgroundTaskProtocol.runTasks(_:identifier:)(a1, v9, a2, a3, a4);
}

double _sScG7addTask8priority9operationyScPSg_xyYaYAcntF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for TaskPriority?(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TaskPriority?(a1, v12);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of TaskPriority?(v12);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = dispatch thunk of Actor.unownedExecutor.getter();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v5;
  v19 = swift_allocObject();
  v19[2] = *(a4 + 16);
  v19[3] = a2;
  v19[4] = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();

  return result;
}

uint64_t static BackgroundTaskProtocol<>.runTasks(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return static BackgroundTaskProtocol.runTasks(_:identifier:)(a1, a2, a2, a3, a4);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for TaskPriority?(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[0] = a4;
  v27[1] = a5;
  outlined init with copy of TaskPriority?(a3, v13);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    outlined destroy of TaskPriority?(v13);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter();
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfcBoSRys4Int8VGXEfU_(v21 + 32, v27, a6, v26);

      v22 = v26[0];
      outlined destroy of TaskPriority?(a3);

      return v22;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  v23 = swift_allocObject();
  v23[2] = a6;
  v23[3] = a4;
  v23[4] = a5;
  if (v20 | v18)
  {
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = v18;
    v26[4] = v20;
  }

  return swift_task_create();
}

uint64_t BackgroundTask.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_1, a1, a2);
}

void static BackgroundTask.urlSession.getter(uint64_t (**a1)()@<X8>)
{
  a1[3] = &type metadata for UnidentifiedURLSessionBackgroundTask;
  a1[4] = &protocol witness table for UnidentifiedURLSessionBackgroundTask;
  *a1 = protocol witness for static PreferenceKey._isReadableByHost.getter in conformance AccessibilityLargeContentViewTree.Key;
  a1[1] = 0;
}

double static BackgroundTask.urlSession(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t a1, uint64_t a2)@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  a3[3] = &type metadata for URLSessionBackgroundTask;
  a3[4] = &protocol witness table for URLSessionBackgroundTask;
  *a3 = partial apply for closure #1 in URLSessionBackgroundTask.init(identifier:);
  a3[1] = v6;

  return result;
}

double static BackgroundTask.urlSession(matching:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = &type metadata for UnidentifiedURLSessionBackgroundTask;
  a3[4] = &protocol witness table for UnidentifiedURLSessionBackgroundTask;
  *a3 = a1;
  a3[1] = a2;

  return result;
}

double static BackgroundTask.appRefresh(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = &type metadata for AppRefreshBackgroundTask;
  a3[4] = &protocol witness table for AppRefreshBackgroundTask;
  *a3 = a1;
  a3[1] = a2;

  return result;
}

uint64_t Scene.backgroundTask<A, B>(_:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(_BYTE *, uint64_t, uint64_t, uint64_t, __n128))
{
  v16 = type metadata accessor for BackgroundTask(0, a5, a6, a4);
  (*(*(v16 - 8) + 16))(v20, a1, v16);
  v21 = a2;
  v22 = a3;
  v18 = type metadata accessor for BackgroundTaskModifier(0, a5, a6, v17);

  (a8)(v20, a4, v18, a7);
  return (*(*(v18 - 8) + 8))(v20, v18);
}

uint64_t static BackgroundTaskProtocol.currentTasks()(uint64_t a1, uint64_t a2)
{
  v18[6] = a1;
  v18[7] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = swift_getAssociatedTypeWitness();
  type metadata accessor for TaskActionsContainer(0, AssociatedTypeWitness, v5, v6);
  static Update.ensure<A>(_:)();
  v19[0] = (*(a2 + 40))(a1, a2);
  v19[1] = v7;
  type metadata accessor for TaskActionsContainer.ContainerEntry(255, AssociatedTypeWitness, v5, v8);
  v9 = type metadata accessor for Array();
  MEMORY[0x18D00C560](v20, v19, v20[2], MEMORY[0x1E69E6158], v9, MEMORY[0x1E69E6168]);

  if (v20[0])
  {
    v19[0] = v20[0];
    MEMORY[0x1EEE9AC00](v10);
    v18[2] = a1;
    v18[3] = a2;
    v13 = type metadata accessor for BackgroundTaskEntry(0, a1, a2, v12);
    WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6340], v9);
    v16 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in static BackgroundTaskProtocol.currentTasks(), v18, v9, v13, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v15);

    return v16;
  }

  else
  {
    type metadata accessor for BackgroundTaskEntry(0, a1, a2, v11);
    return static Array._allocateUninitialized(_:)();
  }
}

void closure #1 in static BackgroundTaskProtocol.currentTasks()(unint64_t *a3@<X8>)
{
  if (static AppGraph.shared)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v5 = swift_getAssociatedTypeWitness();
    v7 = type metadata accessor for TaskActionsContainer.Key(0, AssociatedTypeWitness, v5, v6);

    swift_getWitnessTable(protocol conformance descriptor for TaskActionsContainer<A, B>.Key, v7);
    GraphHost.preferenceValue<A>(_:)();
  }

  else
  {
    v8 = swift_getAssociatedTypeWitness();
    v9 = swift_getAssociatedTypeWitness();
    *a3 = TaskActionsContainer.init()(v8, v9, v10, v11);
  }
}

unint64_t TaskActionsContainer.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TaskActionsContainer.ContainerEntry(255, a1, a2, a4);
  v4 = type metadata accessor for Array();
  v5 = MEMORY[0x1E69E6158];
  swift_getTupleTypeMetadata2();
  v6 = static Array._allocateUninitialized(_:)();
  v7 = specialized Dictionary.init(dictionaryLiteral:)(v6, v5, v4, MEMORY[0x1E69E6168]);

  return v7;
}

uint64_t static BackgroundTaskProtocol.runTasks(_:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](static BackgroundTaskProtocol.runTasks(_:identifier:), 0, 0);
}

uint64_t static BackgroundTaskProtocol.runTasks(_:identifier:)()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = static BackgroundTaskProtocol.currentTasks()(v1, v2);
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;
  v0[7] = v4;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = static BackgroundTaskProtocol.runTasks(_:identifier:);
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return partial apply for closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(v8, v6, v7);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Result();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[13] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v6[14] = v9;
  v6[15] = *(v9 + 64);
  v6[16] = swift_task_alloc();
  v10 = swift_getAssociatedTypeWitness();
  v6[17] = v10;
  v11 = *(v10 - 8);
  v6[18] = v11;
  v6[19] = *(v11 + 64);
  v6[20] = swift_task_alloc();
  type metadata accessor for TaskPriority?(0);
  v6[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in static BackgroundTaskProtocol.runTasks(actions:), 0, 0);
}

uint64_t closure #1 in static BackgroundTaskProtocol.runTasks(actions:)()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v23 = v2;
  v3 = *(v0 + 144);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  v6 = *(v0 + 112);
  v25 = *(v0 + 152);
  v7 = *(v0 + 104);
  v27 = v1;
  v28 = *(v0 + 64);
  v8 = *(v0 + 32);
  v26 = *(v0 + 40);
  v9 = *(v0 + 24);
  v10 = type metadata accessor for TaskPriority();
  v24 = *(v0 + 48);
  (*(*(v10 - 8) + 56))(v1, 1, 1, v10);
  v11 = v2;
  v12 = v5;
  (*(v3 + 16))(v11, v8, v5);
  (*(v6 + 16))(v4, v9, v7);
  v13 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v14 = (v25 + *(v6 + 80) + v13) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = v24;
  *(v15 + 48) = v26;
  (*(v3 + 32))(v15 + v13, v23, v12);
  (*(v6 + 32))(v15 + v14, v4, v7);

  v16 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC(0, 0, v27, &async function pointer to partial apply for closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:), v15, v28);
  *(v0 + 176) = v16;
  v17 = swift_task_alloc();
  *(v0 + 184) = v17;
  *v17 = v0;
  v17[1] = closure #1 in static BackgroundTaskProtocol.runTasks(actions:);
  v18 = *(v0 + 96);
  v19 = *(v0 + 64);
  v20 = MEMORY[0x1E69E73E0];
  v21 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6DA20](v18, v16, v19, v20, v21);
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in static BackgroundTaskProtocol.runTasks(actions:), 0, 0);
}

{
  (*(v0[10] + 16))(v0[11], v0[12], v0[9]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[12];
  if (EnumCaseMultiPayload == 1)
  {
    v3 = v0[9];
    v4 = v0[10];
    (*(v0[7] + 64))();

    (*(v4 + 8))(v2, v3);
  }

  else
  {
    v5 = v0[11];
    v6 = v0[8];
    v7 = v0[2];
    (*(v0[10] + 8))(v0[12], v0[9]);

    (*(*(v6 - 8) + 32))(v7, v5, v6);
  }

  v8 = v0[1];

  return v8();
}

uint64_t closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:), 0, 0);
}

uint64_t closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = *(v0 + 24);
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  *(v5 + 32) = v6;
  *(v5 + 48) = v3;
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = specialized closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:);
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE6DBF8](v8, AssociatedTypeWitness, AssociatedTypeWitness, 0, 0, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:), v5, AssociatedTypeWitness);
}

uint64_t closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[11] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v7[12] = v11;
  v7[13] = *(v11 + 64);
  v7[14] = swift_task_alloc();
  type metadata accessor for TaskPriority?(0);
  v7[15] = swift_task_alloc();
  v12 = swift_getAssociatedTypeWitness();
  v7[16] = v12;
  v7[17] = *(v12 - 8);
  v7[18] = swift_task_alloc();
  v14 = type metadata accessor for BackgroundTaskEntry(0, a6, a7, v13);
  v7[19] = v14;
  v15 = *(v14 - 8);
  v7[20] = v15;
  v7[21] = *(v15 + 64);
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)()
{
  if (MEMORY[0x18D00CDE0](*(v0 + 48), *(v0 + 152)))
  {
    v1 = 0;
    v37 = *(v0 + 168);
    v47 = *(v0 + 160);
    v48 = (v47 + 16);
    v45 = *(*(v0 + 80) + 48);
    v46 = (v47 + 32);
    v38 = *(v0 + 96);
    do
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v5 = *(v47 + 16);
        v5(*(v0 + 192), *(v0 + 48) + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v1, *(v0 + 152));
        v6 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        v21 = _ArrayBuffer._getElementSlowPath(_:)();
        if (v37 != 8)
        {
          __break(1u);
          return MEMORY[0x1EEE6DB30](v21, v22, v23, v24, v25, v26, WitnessTable);
        }

        v28 = *(v0 + 192);
        v29 = *(v0 + 152);
        *(v0 + 16) = v21;
        v5 = *v48;
        (*v48)(v28, v0 + 16, v29);
        swift_unknownObjectRelease();
        v6 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_11:
          __break(1u);
          break;
        }
      }

      v8 = *(v0 + 72);
      v7 = *(v0 + 80);
      v9 = *(v0 + 56);
      v10 = *v46;
      (*v46)(*(v0 + 184), *(v0 + 192), *(v0 + 152));
      if (v45(v9, v8, v7))
      {
        v11 = *(v0 + 176);
        v42 = v11;
        v12 = *(v0 + 152);
        v40 = *(v0 + 184);
        v41 = v12;
        v13 = *(v0 + 120);
        v14 = *(v0 + 112);
        v44 = *(v0 + 168);
        v15 = *(v0 + 88);
        v39 = *(v0 + 64);
        v16 = type metadata accessor for TaskPriority();
        v43 = *(v0 + 72);
        (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
        v5(v11, v40, v12);
        (*(v38 + 16))(v14, v39, v15);
        v17 = (*(v47 + 80) + 48) & ~*(v47 + 80);
        v18 = (v44 + *(v38 + 80) + v17) & ~*(v38 + 80);
        v19 = swift_allocObject();
        *(v19 + 16) = 0;
        *(v19 + 24) = 0;
        *(v19 + 32) = v43;
        v10(v19 + v17, v42, v41);
        (*(v38 + 32))(v19 + v18, v14, v15);
        v20 = type metadata accessor for TaskGroup();
        _sScG7addTask8priority9operationyScPSg_xyYaYAcntF(v13, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:), v19, v20);
        outlined destroy of TaskPriority?(v13);
      }

      v2 = *(v0 + 152);
      v3 = *(v0 + 48);
      (*(v47 + 8))(*(v0 + 184), v2);
      ++v1;
    }

    while (v6 != MEMORY[0x18D00CDE0](v3, v2));
  }

  v31 = *(v0 + 72);
  v30 = *(v0 + 80);
  *(v0 + 24) = **(v0 + 40);
  (*(v30 + 64))(v31, v30);
  v32 = swift_allocObject();
  *(v0 + 200) = v32;
  v32[2] = v31;
  v32[3] = v30;
  v32[4] = v31;
  v33 = swift_task_alloc();
  *(v0 + 208) = v33;
  v33[2] = v31;
  v33[3] = v30;
  v33[4] = partial apply for implicit closure #1 in closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:);
  v33[5] = v32;
  v34 = swift_task_alloc();
  *(v0 + 216) = v34;
  v35 = type metadata accessor for TaskGroup();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E85A0], v35);
  *v34 = v0;
  v34[1] = closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:);
  v22 = *(v0 + 144);
  v26 = *(v0 + 128);
  v21 = *(v0 + 32);
  v23 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A.BackgroundTaskProtocol.Response, @in_guaranteed A.BackgroundTaskProtocol.Response) -> (@out A.BackgroundTaskProtocol.Response);
  v24 = v33;
  v25 = v35;

  return MEMORY[0x1EEE6DB30](v21, v22, v23, v24, v25, v26, WitnessTable);
}

void closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[17] + 8))(v2[18], v2[16]);

    v4 = v3[1];

    v4();
  }
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[3];
  v6 = (v5 + *(type metadata accessor for BackgroundTaskEntry(0, v4[5], v4[6], a4) + 36));
  v11 = (*v6 + **v6);
  v7 = swift_task_alloc();
  v4[7] = v7;
  *v7 = v4;
  v7[1] = closure #1 in closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:);
  v8 = v4[4];
  v9 = v4[2];

  return v11(v9, v8);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A.BackgroundTaskProtocol.Response, @in_guaranteed A.BackgroundTaskProtocol.Response) -> (@out A.BackgroundTaskProtocol.Response)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  a4(a2, a3);
  v5 = *(v4 + 8);

  return v5();
}

uint64_t closure #1 in static BackgroundTaskProtocol.currentTasks(in:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for TaskActionsContainer.Key(0, AssociatedTypeWitness, v7, v8);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TaskActionsContainer<A, B>.Key, v9);
  WidgetBundleHost.readPreference<A>(_:)(v9, v9, WitnessTable);
  v23[0] = (*(a2 + 40))(a1, a2);
  v23[1] = v11;
  type metadata accessor for TaskActionsContainer.ContainerEntry(255, AssociatedTypeWitness, v7, v12);
  v13 = type metadata accessor for Array();
  MEMORY[0x18D00C560](v24, v23, v24[2], MEMORY[0x1E69E6158], v13, MEMORY[0x1E69E6168]);

  if (v24[0])
  {
    v23[0] = v24[0];
    MEMORY[0x1EEE9AC00](v14);
    v22[2] = a1;
    v22[3] = a2;
    v17 = type metadata accessor for BackgroundTaskEntry(0, a1, a2, v16);
    v18 = swift_getWitnessTable(MEMORY[0x1E69E6340], v13);
    v20 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in closure #1 in static BackgroundTaskProtocol.currentTasks(in:), v22, v13, v17, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);
  }

  else
  {
    type metadata accessor for BackgroundTaskEntry(0, a1, a2, v15);
    result = static Array._allocateUninitialized(_:)();
    v20 = result;
  }

  *a3 = v20;
  return result;
}

double closure #2 in static BackgroundTaskProtocol.currentTasks()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for BackgroundTask(0, AssociatedTypeWitness, v12, v13);
  (*(*(v14 - 8) + 16))(v20, a1, v14);
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v20, v21);
  type metadata accessor for BackgroundTaskProtocol();
  swift_dynamicCast();
  v16 = *(a1 + 40);
  v15 = *(a1 + 48);
  (*(v8 + 32))(a4, v10, a2);
  v18 = (a4 + *(type metadata accessor for BackgroundTaskEntry(0, a2, a3, v17) + 36));
  *v18 = v16;
  v18[1] = v15;

  return result;
}

void *static BackgroundTaskProtocol.runTasks(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = static BackgroundTaskProtocol.currentTasks(in:)(a1, a2, a3, a4);
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  return &async function pointer to partial apply for closure #1 in static BackgroundTaskProtocol.runTasks(actions:);
}

uint64_t static BackgroundTaskProtocol.currentTasks(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BackgroundTaskEntry(255, a2, a3, a4);
  type metadata accessor for Array();
  static Update.ensure<A>(_:)();
  return v5;
}

uint64_t closure #1 in static BackgroundTaskProtocol.currentTasks<A>(in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for TaskActionsContainer.Key(0, AssociatedTypeWitness, v9, v10);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TaskActionsContainer<A, B>.Key, v11);
  WidgetHost.readPreference<A>(_:)(v11, v11, WitnessTable);
  v28[0] = (*(a3 + 40))(a2, a3);
  v28[1] = v13;
  type metadata accessor for TaskActionsContainer.ContainerEntry(255, AssociatedTypeWitness, v9, v14);
  v15 = type metadata accessor for Array();
  MEMORY[0x18D00C560](v29, v28, v29[2], MEMORY[0x1E69E6158], v15, MEMORY[0x1E69E6168]);

  if (v29[0])
  {
    v27 = a4;
    v28[0] = v29[0];
    MEMORY[0x1EEE9AC00](v16);
    v18 = *(v7 + 80);
    v19 = *(v7 + 88);
    v26[2] = a2;
    v26[3] = v18;
    v26[4] = a3;
    v26[5] = v19;
    v21 = type metadata accessor for BackgroundTaskEntry(0, a2, a3, v20);
    v22 = swift_getWitnessTable(MEMORY[0x1E69E6340], v15);
    v24 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in closure #1 in static BackgroundTaskProtocol.currentTasks<A>(in:), v26, v15, v21, MEMORY[0x1E69E73E0], v22, MEMORY[0x1E69E7410], v23);

    a4 = v27;
  }

  else
  {
    type metadata accessor for BackgroundTaskEntry(0, a2, a3, v17);
    result = static Array._allocateUninitialized(_:)();
    v24 = result;
  }

  *a4 = v24;
  return result;
}

double closure #1 in closure #1 in static BackgroundTaskProtocol.currentTasks<A>(in:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for BackgroundTask(0, AssociatedTypeWitness, v12, v13);
  (*(*(v14 - 8) + 16))(v20, a1, v14);
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v20, v21);
  type metadata accessor for BackgroundTaskProtocol();
  swift_dynamicCast();
  v16 = *(a1 + 40);
  v15 = *(a1 + 48);
  (*(v8 + 32))(a4, v10, a2);
  v18 = (a4 + *(type metadata accessor for BackgroundTaskEntry(0, a2, a3, v17) + 36));
  *v18 = v16;
  v18[1] = v15;

  return result;
}

uint64_t partial apply for closure #1 in URLSessionBackgroundTask.init(identifier:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16) == a1 && *(v2 + 24) == a2)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t get_witness_table_7SwiftUI5SceneRzs8SendableRd__sACRd_0_r_0_lAA15ModifiedContentVyxAA22BackgroundTaskModifierVyqd__qd_0_GGAaBHpxAaBHD1__AhA01_cI0HPyHCHCTm(uint64_t *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v6 = a1[3];
  type metadata accessor for BackgroundTaskModifier(255, a1[1], a1[2], a4);
  v7 = type metadata accessor for ModifiedContent();
  v9[0] = v6;
  v9[1] = a2;
  return swift_getWitnessTable(a3, v7, v9);
}

void protocol witness for BackgroundTaskProtocol.register() in conformance AppRefreshBackgroundTask()
{
  v1 = *v0;
  v2 = v0[1];
  if (one-time initialization token for shared != -1)
  {
    v3 = *v0;
    v4 = v0[1];
    swift_once();
    v2 = v4;
    v1 = v3;
  }

  BGTaskSchedulerWrapper.observeTask(_:)(*&v1);
}

uint64_t protocol witness for BackgroundTaskProtocol.predicate(_:) in conformance AppRefreshBackgroundTask(uint64_t *a1)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  if (*a1 == *v1 && v2 == v1[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t static BackgroundTaskModifier.makeRegistration(modifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  type metadata accessor for BackgroundTaskModifier(255, a2, a3, a4);
  type metadata accessor for _GraphValue();
  v17 = _GraphValue.value.getter();
  v7 = type metadata accessor for TaskActionsContainer.Key(255, a2, a3, v6);
  swift_getWitnessTable(protocol conformance descriptor for TaskActionsContainer<A, B>.Key, v7);
  v19 = type metadata accessor for _PreferenceTransformModifier();
  v20 = type metadata accessor for BackgroundTaskModifier.Registration(0, a2, a3, v8);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for BackgroundTaskModifier<A, B>.Registration, v20);
  v9 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v17, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v18, v20, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  v11 = AGCreateWeakAttribute();
  v12 = v11;
  v13 = HIDWORD(v11);
  LOBYTE(v17) = 17;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = v12;
  *(v14 + 36) = v13;
  static Update.enqueueAction(reason:_:)();

  return v16;
}

uint64_t closure #1 in closure #1 in static BackgroundTaskModifier.makeRegistration(modifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for TaskActionsContainer.Key(255, a2, a3, a4);
  swift_getWitnessTable(protocol conformance descriptor for TaskActionsContainer<A, B>.Key, v4);
  type metadata accessor for _PreferenceTransformModifier();

  return AGGraphGetWeakValue();
}

uint64_t BackgroundTaskModifier.Registration.modifier.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = type metadata accessor for BackgroundTaskModifier(0, a2, a3, a4);
  Value = AGGraphGetValue();
  v8 = *(*(v6 - 8) + 16);

  return v8(a5, Value, v6);
}

Swift::Void __swiftcall BackgroundTaskModifier.Registration.updateValue()()
{
  v2 = v0;
  v25 = *MEMORY[0x1E69E9840];
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = type metadata accessor for TaskActionsContainer.Key(255, v3, v4, v1);
  swift_getWitnessTable(protocol conformance descriptor for TaskActionsContainer<A, B>.Key, v5);
  v6 = type metadata accessor for _PreferenceTransformModifier();
  if (!AGGraphGetOutputValue())
  {
    BackgroundTaskModifier.Registration.modifier.getter(v3, v4, v7, v23);
    v9 = type metadata accessor for BackgroundTask(0, v3, v4, v8);
    (*(*(v9 - 8) + 16))(v20, v23, v9);
    v11 = type metadata accessor for BackgroundTaskModifier(0, v3, v4, v10);
    (*(*(v11 - 8) + 8))(v23, v11);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (*(v13 + 32))(v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  BackgroundTaskModifier.Registration.modifier.getter(v3, v4, v7, v23);
  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  *(v14 + 24) = v4;
  v15 = v23[1];
  *(v14 + 32) = v23[0];
  *(v14 + 48) = v15;
  *(v14 + 64) = v23[2];
  *(v14 + 80) = v24;
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  *&v23[0] = _PreferenceTransformModifier.init(key:transform:)();
  *(&v23[0] + 1) = v16;
  v17 = MEMORY[0x1EEE9AC00](*&v23[0]);
  v19[2] = v2;
  v19[3] = swift_getWitnessTable(protocol conformance descriptor for BackgroundTaskModifier<A, B>.Registration, v2, v17);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v23, partial apply for closure #1 in StatefulRule.value.setter, v19, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v18);
}

unint64_t closure #1 in closure #1 in BackgroundTaskModifier.Registration.updateValue()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for TaskActionsContainer.ContainerEntry(255, a2, a3, a4);
  v8 = type metadata accessor for Array();
  v9 = MEMORY[0x1E69E6158];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  type metadata accessor for _ContiguousArrayStorage();
  swift_initStackObject();
  v11 = static Array._adoptStorage(_:count:)();
  v13 = v12;
  v15 = type metadata accessor for BackgroundTask(0, a2, a3, v14);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  *v13 = (*(v17 + 40))(v16, v17);
  v13[1] = v18;
  type metadata accessor for _ContiguousArrayStorage();
  swift_allocObject();
  v19 = static Array._adoptStorage(_:count:)();
  v21 = v20;
  (*(*(v15 - 8) + 16))(v31, a1, v15);
  v22 = a1[5];
  v23 = a1[6];
  v24 = v32;
  v25 = v31[1];
  *v21 = v31[0];
  *(v21 + 16) = v25;
  *(v21 + 32) = v24;
  *(v21 + 40) = v22;
  *(v21 + 48) = v23;
  _finalizeUninitializedArray<A>(_:)(v19, v7);
  v13[2] = v26;
  _finalizeUninitializedArray<A>(_:)(v11, TupleTypeMetadata2);
  v28 = v27;

  v29 = specialized Dictionary.init(dictionaryLiteral:)(v28, v9, v8, MEMORY[0x1E69E6168]);

  return v29;
}

uint64_t static TaskActionsContainer.Key.reduce(value:nextValue:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2();
  type metadata accessor for TaskActionsContainer.ContainerEntry(255, a4, a5, v7);
  type metadata accessor for Array();
  type metadata accessor for Dictionary();
  return Dictionary.merge(_:uniquingKeysWith:)();
}

uint64_t static BackgroundTaskModifier._makeScene(modifier:inputs:body:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(int *, _OWORD *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = *a1;
  v13 = a2[1];
  v19[0] = *a2;
  v19[1] = v13;
  v20[0] = a2[2];
  *(v20 + 12) = *(a2 + 44);
  v18 = v12;
  static BackgroundTaskModifier.makeRegistration(modifier:)(&v18, a5, a6, a4);
  v15 = type metadata accessor for TaskActionsContainer.Key(255, a5, a6, v14);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TaskActionsContainer<A, B>.Key, v15);
  type metadata accessor for _PreferenceTransformModifier();
  _GraphValue.init(_:)();
  return a7(&v18, v19, a3, a4, v15, WitnessTable);
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance TaskActionsContainer<A, B>.Key@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static TaskActionsContainer.Key.defaultValue.getter(*(a1 + 16), *(a1 + 24));
  *a2 = result;
  return result;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance TaskActionsContainer<A, B>.Key(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  v7 = *(a4 + 16);
  v8 = v4;
  v9 = a2;
  v10 = a3;
  return static TaskActionsContainer.Key.reduce(value:nextValue:)(a1, partial apply for thunk for @callee_guaranteed () -> (@out TaskActionsContainer<A, B>), &v6, v7, v4);
}

uint64_t protocol witness for static PreferenceKey._isReadableByHost.getter in conformance TaskActionsContainer<A, B>.Key(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TaskActionsContainer<A, B>.Key, a1);

  return MEMORY[0x1EEDE0700](a1, WitnessTable);
}

unint64_t __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, a2, a3);
}

unint64_t __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfcBoSRys4Int8VGXEfU_@<X0>(uint64_t result@<X0>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (result)
  {
    v10 = *a5;
    v9 = a5[1];
    v11 = swift_allocObject();
    v11[2] = a6;
    v11[3] = v10;
    v11[4] = v9;

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double partial apply for closure #1 in static BackgroundTaskModifier.makeRegistration(modifier:)(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  AGGraphClearUpdate();
  closure #1 in closure #1 in static BackgroundTaskModifier.makeRegistration(modifier:)(v4, v2, v3, v5);

  AGGraphSetUpdate();
  return result;
}

uint64_t partial apply for closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(a1, a2, a3, v10, v8, v9);
}

uint64_t partial apply for closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[6];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(a1, v12, v13, v14, v1 + v8, v1 + v11, v6, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(a1, a2, v8, v9, v10, v6, v7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A.BackgroundTaskProtocol.Response, @in_guaranteed A.BackgroundTaskProtocol.Response) -> (@out A.BackgroundTaskProtocol.Response)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 32);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A.BackgroundTaskProtocol.Response, @in_guaranteed A.BackgroundTaskProtocol.Response) -> (@out A.BackgroundTaskProtocol.Response)(a1, a2, a3, v8);
}