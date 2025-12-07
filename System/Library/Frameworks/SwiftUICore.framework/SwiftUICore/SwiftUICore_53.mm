void FrameVelocityFilter.addSample(_:time:)(double *a1, double a2, double a3, double a4, double a5)
{
  v6 = *a1;
  if ((*(v5 + 56) & 1) == 0)
  {
    v7 = *(v5 + 16);
    if (v7 < v6)
    {
      v19 = a3;
      v20 = a2;
      v18 = a4;
      v8 = a5;
      v9 = 1.0 / (v6 - v7);
      v21.origin.x = v9 * (a2 - *(v5 + 24));
      x = v21.origin.x;
      v21.origin.y = v9 * (a3 - *(v5 + 32));
      y = v21.origin.y;
      v21.size.width = v9 * (a4 - *(v5 + 40));
      width = v21.size.width;
      v21.size.height = v9 * (a5 - *(v5 + 48));
      height = v21.size.height;
      v14 = fabs(CGRectGetMinX(v21));
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      v15 = fabs(CGRectGetMaxX(v22));
      if (v14 <= v15)
      {
        v14 = v15;
      }

      v23.origin.x = x;
      v23.origin.y = y;
      v23.size.width = width;
      v23.size.height = height;
      v16 = fabs(CGRectGetMinY(v23));
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      v17 = fabs(CGRectGetMaxY(v24));
      if (v16 > v17)
      {
        v17 = v16;
      }

      if (v14 > v17)
      {
        v17 = v14;
      }

      if ((*(v5 + 8) & 1) == 0)
      {
        v17 = *v5 + (v17 - *v5) * 0.35;
      }

      *v5 = v17;
      *(v5 + 8) = 0;
      a5 = v8;
      a4 = v18;
      a3 = v19;
      a2 = v20;
    }
  }

  *(v5 + 16) = v6;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  *(v5 + 56) = 0;
}

double closure #1 in GraphDelegate.beginTransaction()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  specialized static NSRunLoop.addObserver(_:)(partial apply for closure #1 in closure #1 in GraphDelegate.beginTransaction(), v6);

  return result;
}

Swift::Void __swiftcall GraphDelegate.beginTransaction()()
{
  v2 = v1;
  v3 = v0;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v4;
  v6 = objc_opt_self();

  if ([v6 isMainThread])
  {
    closure #1 in GraphDelegate.beginTransaction()(v4, v3, v2);
  }

  else
  {
    v7 = [objc_opt_self() mainRunLoop];
    type metadata accessor for AGGraphRef?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NSRunLoopMode>, type metadata accessor for NSRunLoopMode, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_18DDA6EB0;
    v9 = *MEMORY[0x1E695DA28];
    *(v8 + 32) = *MEMORY[0x1E695DA28];
    type metadata accessor for NSRunLoopMode(0);
    v10 = v9;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v13[4] = partial apply for closure #1 in GraphDelegate.beginTransaction();
    v13[5] = v5;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = thunk for @escaping @callee_guaranteed () -> ();
    v13[3] = &block_descriptor_20;
    v12 = _Block_copy(v13);

    [v7 performInModes:isa block:v12];

    _Block_release(v12);
  }
}

uint64_t sub_18D333B50()
{
  MEMORY[0x193AC4950](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18D333B88()
{

  return swift_deallocObject();
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance CountingIndexCollection<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for CountingIndexCollection<A>, a1);

  return Collection._copyToContiguousArray()();
}

uint64_t protocol witness for Sequence.makeIterator() in conformance CountingIndexCollection<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *(a1 - 8);
  (*(v8 + 16))(a2, v2, a1);
  swift_getWitnessTable(protocol conformance descriptor for CountingIndexCollection<A>, a1);
  v5 = type metadata accessor for IndexingIterator();
  CountingIndexCollection.startIndex.getter(a2 + *(v5 + 36));
  v6 = *(v8 + 8);

  return v6(v2, a1);
}

uint64_t CountingIndexCollection.startIndex.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v12 - v5;
  dispatch thunk of Collection.startIndex.getter();
  v7 = dispatch thunk of Collection.isEmpty.getter();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(v4 + 32))(a2, v6, AssociatedTypeWitness);
  result = type metadata accessor for CountingIndex(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  v11 = a2 + *(result + 36);
  *v11 = 0;
  *(v11 + 8) = v7 & 1;
  return result;
}

uint64_t CountingIndexCollection.endIndex.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v11 - v5;
  dispatch thunk of Collection.endIndex.getter();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(v4 + 32))(a2, v6, AssociatedTypeWitness);
  result = type metadata accessor for CountingIndex(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v10 = a2 + *(result + 36);
  *v10 = 0;
  *(v10 + 8) = 1;
  return result;
}

uint64_t static CountingIndex.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v9 = *(type metadata accessor for CountingIndex(0, a3, a4, v8) + 36);
  v10 = (a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  v13 = *(a2 + v9 + 8);
  if (v11)
  {
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v10 != *v12)
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance CountingIndexCollection<A>(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = CountingIndexCollection.subscript.read(v6, a2, a3);
  return protocol witness for Collection.subscript.read in conformance UnsafeMutableBufferProjectionPointer<A, B>;
}

uint64_t (*CountingIndexCollection.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v5 = *(AssociatedTypeWitness - 8);
  a1[1] = v5;
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v5 + 64));
  }

  a1[2] = v6;
  CountingIndexCollection.subscript.getter(v6);
  return CountingIndexCollection.subscript.read;
}

uint64_t CountingIndexCollection.subscript.getter@<X0>(uint64_t a3@<X8>)
{
  v4 = dispatch thunk of Collection.subscript.read();
  v6 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a3, v6, AssociatedTypeWitness);
  return v4(&v9, 0);
}

void protocol witness for Collection.subscript.read in conformance ArrayWith2Inline<A>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void ArrayWith2Inline.subscript.read(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance CountingIndexCollection<A>(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for CountingIndex(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  (*(v11 + 32))(&v16 - v13, a1, v10, v12);
  a4(v14, a2);
  return (*(v11 + 8))(v14, v10);
}

uint64_t CountingIndexCollection.index(after:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v26 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  dispatch thunk of Collection.index(after:)();
  (*(v5 + 16))(v10, v13, AssociatedTypeWitness);
  dispatch thunk of Collection.endIndex.getter();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = *(v5 + 8);
  v16(v7, AssociatedTypeWitness);
  if (v15)
  {
    v16(v13, AssociatedTypeWitness);
    v18 = 0;
LABEL_5:
    v22 = v26;
    (*(v5 + 32))(v26, v10, AssociatedTypeWitness);
    result = type metadata accessor for CountingIndex(0, AssociatedTypeWitness, AssociatedConformanceWitness, v23);
    v24 = v22 + *(result + 36);
    *v24 = v18;
    *(v24 + 8) = v15 & 1;
    return result;
  }

  result = type metadata accessor for CountingIndex(0, AssociatedTypeWitness, AssociatedConformanceWitness, v17);
  v20 = (a1 + *(result + 36));
  if ((v20[1] & 1) == 0)
  {
    v21 = *v20;
    result = (v16)(v13, AssociatedTypeWitness);
    v18 = v21 + 1;
    if (!__OFADD__(v21, 1))
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a6 - 8);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v16 + ((*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80)), *(v16 + 16), v14, v12);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a6);
  }

  return result;
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<A.Sequence.Element>) -> (@out A1, @error @owned Error)(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(v3 + 40))(a1, a2);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t CountingIndexCollection.index(_:offsetBy:limitedBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v41 = a3;
  v42 = a5;
  v43 = *(*(a4 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - v19;
  v37 = a2;
  v38 = a1;
  dispatch thunk of BidirectionalCollection.index(_:offsetBy:limitedBy:)();
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v39 + 8))(v10, v40);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v23 = type metadata accessor for CountingIndex(0, AssociatedTypeWitness, AssociatedConformanceWitness, v22);
    return (*(*(v23 - 8) + 56))(v42, 1, 1, v23);
  }

  v40 = *(v11 + 32);
  v40(v20, v10, AssociatedTypeWitness);
  v25 = *(v11 + 16);
  v41 = v17;
  v25(v17, v20, AssociatedTypeWitness);
  dispatch thunk of Collection.endIndex.getter();
  v26 = swift_getAssociatedConformanceWitness();
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = *(v11 + 8);
  v28(v14, AssociatedTypeWitness);
  if ((v27 & 1) == 0)
  {
    result = type metadata accessor for CountingIndex(0, AssociatedTypeWitness, v26, v29);
    v32 = v38 + *(result + 36);
    v31 = v42;
    if ((*(v32 + 8) & 1) == 0)
    {
      v33 = *v32;
      result = (v28)(v20, AssociatedTypeWitness);
      v30 = v33 + v37;
      if (!__OFADD__(v33, v37))
      {
        goto LABEL_7;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  v28(v20, AssociatedTypeWitness);
  v30 = 0;
  v31 = v42;
LABEL_7:
  v40(v31, v41, AssociatedTypeWitness);
  v35 = type metadata accessor for CountingIndex(0, AssociatedTypeWitness, v26, v34);
  v36 = &v31[*(v35 + 36)];
  *v36 = v30;
  v36[8] = v27 & 1;
  return (*(*(v35 - 8) + 56))(v31, 0, 1, v35);
}

void storeEnumTagSinglePayload for CountingIndex(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = ((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v7 >= a3)
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = (a3 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
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

    if (v7 >= a2)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v8] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_29;
        }

        *&a1[v8] = 0;
      }

      else if (v12)
      {
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      }

      if (!a2)
      {
        return;
      }

LABEL_29:
      v15 = *(v6 + 56);

      v15();
      return;
    }
  }

  v13 = ~v7 + a2;
  bzero(a1, v8);
  if (v8 <= 3)
  {
    v14 = (v13 >> 8) + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v13;
    if (v12 > 1)
    {
LABEL_24:
      if (v12 == 2)
      {
        *&a1[v8] = v14;
      }

      else
      {
        *&a1[v8] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v12 > 1)
    {
      goto LABEL_24;
    }
  }

  if (v12)
  {
    a1[v8] = v14;
  }
}

uint64_t getEnumTagSinglePayload for CountingIndex(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v7 = (a2 - v5 + 255) >> 8;
  if (v6 <= 3)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v9 = 1;
  }

  if (v8 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = *&a1[v6];
      if (!*&a1[v6])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 = *&a1[v6];
      if (!v11)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v10 || (v11 = a1[v6]) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v12 = (v11 - 1) << (8 * v6);
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return v5 + (v13 | v12) + 1;
}

uint64_t static CountingIndex.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v25 - v13;
  v15 = *(v8 + 16);
  v15(v25 - v13, a1, v12);
  v17 = type metadata accessor for CountingIndex(0, a3, a4, v16);
  v18 = a1 + *(v17 + 36);
  if (*(v18 + 8))
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v19 = *v18;
  }

  v25[1] = v19;
  (v15)(v10, a2, a3);
  v20 = a2 + *(v17 + 36);
  if (*(v20 + 8))
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = *v20;
  }

  v25[0] = v21;
  v22 = < infix<A, B>(_:_:)();
  v23 = *(v8 + 8);
  v23(v10, a3);
  v23(v14, a3);
  return v22 & 1;
}

uint64_t CollectionChanges.endIndex.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 32);
  v6[0] = *(a1 + 16);
  v6[1] = v3;
  v4 = type metadata accessor for CollectionChanges.Element(0, v6);
  return MEMORY[0x193ABF2C0](v2, v4);
}

void *CollectionChanges.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v5[0] = *(a2 + 16);
  v5[1] = v3;
  type metadata accessor for CollectionChanges.Element(0, v5);
  return Array.subscript.getter();
}

double SectionAccumulator.RowIDs.heterogeneous.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = v3 + 56 * v4;
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  v8 = __OFADD__(v6, v7);
  v9 = v6 + v7;
  if (v8)
  {
    goto LABEL_16;
  }

  if (*(v3 + 80) == v9)
  {
LABEL_4:
    v10 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
LABEL_5:
      HeterogeneousCollection.init(_:)(v10, v22);
      v11 = v22[1];
      *a1 = v22[0];
      *(a1 + 16) = v11;
      return *&v11;
    }

    v1 = MEMORY[0x1E69E7CC0];
    v16 = __CocoaSet.count.getter();
    if (!v16)
    {
LABEL_17:
      v10 = v1;
      goto LABEL_5;
    }

    v1 = v16;
    v18 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs10AnyKeyPathC_Tt1g5(v16, 0, v17);
    specialized Array._copyContents(initializing:)(v18 + 32, v1, MEMORY[0x1E69E7CC0]);
    v20 = v19;

    v10 = v18;
    if (v20 == v1)
    {
      goto LABEL_5;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v4 == 1 && *(v3 + 64) == 3)
  {
    v12 = *(v3 + 48);
    v13 = *(v3 + 56);
    v14 = *(v3 + 32);
    v15 = *(v3 + 40);
    *a1 = v14;
    *(a1 + 8) = v15;
    *(a1 + 16) = v12;
    *(a1 + 24) = v13;

    *&v11 = outlined copy of SectionAccumulator.RowIDs.IDs(v14, v15, v12, v13, 3u);
  }

  else
  {
    *&v11 = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return *&v11;
}

double outlined copy of SectionAccumulator.RowIDs.IDs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 1u)
  {
    if (a5 == 2)
    {

      goto LABEL_6;
    }

    if (a5 == 3)
    {

      goto LABEL_6;
    }
  }

  else if (a5)
  {
    if (a5 == 1)
    {

LABEL_6:
    }
  }

  else
  {
  }

  return result;
}

void changedInsertsRemovesAndMoves(from:to:)(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v197 = type metadata accessor for IndexSetBuilder(0);
  MEMORY[0x1EEE9AC00](v197);
  v7 = &v179 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v192 = &v179 - v9;
  v10 = type metadata accessor for IndexSet();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v179 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v179 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v193 = &v179 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v191 = &v179 - v20;
  v21 = type metadata accessor for DiffResultBuilder(0);
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v22);
  v200 = &v179 - v25;
  v26 = *a1;
  v27 = *(*a1 + 16);
  if (!v27)
  {
    IndexSet.init(integersIn:)();
    IndexSet.init()();
    v49 = type metadata accessor for DiffResult(0);
    *&a3[*(v49 + 20)] = MEMORY[0x1E69E7CC0];
    (*(v11 + 32))(&a3[*(v49 + 24)], v13, v10);
    return;
  }

  v187 = v7;
  v28 = *a2;
  v29 = *(v26 + 32);
  v198 = v26 + 32;
  v224 = v29;
  v30 = *(v28 + 16);
  if (!v30)
  {

    IndexSet.init(integersIn:)();
    v50 = type metadata accessor for DiffResult(0);
    IndexSet.init()();
    (*(v11 + 32))(a3, v16, v10);

    *&a3[*(v50 + 20)] = MEMORY[0x1E69E7CC0];
    return;
  }

  v214 = v29;
  v185 = v24;
  v186 = v23;
  v184 = v11;
  v189 = v28;
  v31 = *(v28 + 32);
  v188 = v28 + 32;
  v223 = v31;
  v32 = a1[2];
  v215 = v31;
  if (v32)
  {
    v33 = a1[3];

    v34 = v32;
  }

  else
  {

    specialized HeterogeneousIndexLookupTable.init(_:)(v35);
    v33 = v36;
    a1[2] = v37;
    a1[3] = v36;
  }

  v38 = *(v34 + 16);
  v196 = v34;
  v195 = v26;
  if (v38 && (v39 = specialized __RawDictionaryStorage.find<A>(_:)(*(v215 + 16)), (v40 & 1) != 0))
  {
    v41 = *(*(v34 + 56) + 8 * v39);
  }

  else
  {
    v41 = 0;
  }

  v222 = v41;
  v42 = a1[1];
  v43 = *(v42 + 16);
  if (v43)
  {
    if (v33 == *(v42 + 4 * v43 + 28))
    {
      goto LABEL_14;
    }

LABEL_17:

    v46 = a1[1];
    v219 = *a1;
    v220 = v46;
    v221 = *(a1 + 1);
    v47 = *a2;
    v48 = a2[1];
    v218 = *(a2 + 1);
    *&v217 = v47;
    *(&v217 + 1) = v48;

    HeterogeneousCollection.differenceWithDuplicates(to:)(&v217, a3);

    goto LABEL_211;
  }

  if (v33)
  {
    goto LABEL_17;
  }

LABEL_14:
  v204 = v41;
  if (a2[2])
  {
    v44 = a2[3];
    v45 = a2[2];
  }

  else
  {

    specialized HeterogeneousIndexLookupTable.init(_:)(v51);
    v44 = v52;
    a2[2] = v53;
    a2[3] = v52;
    v45 = v53;
  }

  v54 = *(v45 + 16);
  v194 = v45;
  if (v54)
  {
    v55 = v214;
    specialized __RawDictionaryStorage.find<A>(_:)(v214[2]);
    if (v56)
    {
    }

    else
    {
      v57 = 0;
    }
  }

  else
  {
    v57 = 0;
    v55 = v214;
  }

  v202 = v57;
  v216 = v57;
  v58 = a2[1];
  v59 = *(v58 + 16);
  if (!v59)
  {
    if (!v44)
    {
      goto LABEL_26;
    }

LABEL_210:

    v176 = a1[1];
    v219 = *a1;
    v220 = v176;
    v221 = *(a1 + 1);
    v177 = *a2;
    v178 = a2[1];
    v218 = *(a2 + 1);
    *&v217 = v177;
    *(&v217 + 1) = v178;

    HeterogeneousCollection.differenceWithDuplicates(to:)(&v217, a3);

    goto LABEL_211;
  }

  if (v44 != *(v58 + 4 * v59 + 28))
  {
    goto LABEL_210;
  }

LABEL_26:
  v181 = v10;
  v182 = a3;

  v60 = v200;
  IndexSet.init()();
  v61 = v197;
  v62 = v60 + *(v197 + 20);
  *v62 = 0;
  *(v62 + 8) = 0;
  v180 = v62;
  *(v62 + 16) = 1;
  v63 = v60 + *(v186 + 24);
  IndexSet.init()();
  v64 = *(v61 + 20);
  v183 = v63;
  v65 = v63 + v64;
  *v65 = 0;
  *(v65 + 8) = 0;
  v179 = v65;
  v203 = 1;
  *(v65 + 16) = 1;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v212 = 0;
  v66 = 0;
  v214 = 0;
  v67 = 0;
  v199 = 0;
  v211 = 0;
  v207 = 0;
  v209 = 0;
  v68 = 0;
  v69 = 0;
  v210 = 0;
  v70 = 0;
  v206 = MEMORY[0x1E69E7CC0];
  v213 = 1;
  v201 = v215;
  v208 = v55;
  v71 = v204;
  v72 = v202;
  v190 = v27;
  v205 = v30;
  while (1)
  {
    if (v70 >= v27)
    {
      v68 = v210;
      if (v210 >= v30)
      {
        break;
      }
    }

    if (v30 == v68)
    {
      if (v72)
      {
        v74 = v71;
        v75 = v69;
        v55 = v208;
        v76 = (*(*v72 + 112))(v67, v208);
        if ((v77 & 1) == 0)
        {
          v90 = v76;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v206 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v206 + 2) + 1, 1, v206);
          }

          v92 = *(v206 + 2);
          v91 = *(v206 + 3);
          if (v92 >= v91 >> 1)
          {
            v206 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, v206);
          }

          v69 = v75;
          v71 = v74;
          v93 = v206;
          *(v206 + 2) = v92 + 1;
          v94 = &v93[16 * v92];
          *(v94 + 4) = v66;
          *(v94 + 5) = v90;
          v55 = v208;
          v30 = v205;
          goto LABEL_70;
        }

        v69 = v75;
        v71 = v74;
        v30 = v205;
      }

      if (v213)
      {
        if (__OFADD__(v66, 1))
        {
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
LABEL_219:
          __break(1u);
LABEL_220:
          __break(1u);
LABEL_221:
          __break(1u);
LABEL_222:
          __break(1u);
LABEL_223:
          __break(1u);
LABEL_224:
          __break(1u);
LABEL_225:
          __break(1u);
LABEL_226:
          __break(1u);
LABEL_227:
          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
          return;
        }

        if (v66 + 1 < v66)
        {
          goto LABEL_213;
        }

        v209 = v66 + 1;
        v213 = 0;
        v207 = v66;
      }

      else if (v209 == v66)
      {
        if (__OFADD__(v66, 1))
        {
          goto LABEL_218;
        }

        if (v66 + 1 < v207)
        {
          goto LABEL_221;
        }

        v209 = v66 + 1;
        v213 = 0;
      }

      else
      {
        v95 = v69;
        IndexSet.insert(integersIn:)();
        if (__OFADD__(v66, 1))
        {
          goto LABEL_216;
        }

        if (v66 + 1 < v66)
        {
          goto LABEL_220;
        }

        v209 = v66 + 1;
        v213 = 0;
        v207 = v66;
        v69 = v95;
      }

LABEL_70:
      ++v66;
      ++v67;
      v68 = v30;
      if (v67 == v55[3])
      {
        v67 = 0;
        v96 = v70 + 1;
        v68 = v30;
        v70 = v27;
        if (v96 != v27)
        {
          if ((v96 & 0x8000000000000000) != 0)
          {
            goto LABEL_214;
          }

          if (v96 >= *(v195 + 16))
          {
            goto LABEL_215;
          }

          v70 = v96;
          v97 = v71;
          v98 = v69;
          v99 = *(v198 + 8 * v96);
          v224 = v99;

          v100 = v194;
          if (*(v194 + 16))
          {
            v101 = specialized __RawDictionaryStorage.find<A>(_:)(v99[2]);
            v55 = v99;
            if (v102)
            {
              v73 = *(*(v100 + 56) + 8 * v101);
            }

            else
            {
              v73 = 0;
            }
          }

          else
          {
            v73 = 0;
            v55 = v99;
          }

          v216 = v73;

          v67 = 0;
          v68 = v205;
          v208 = v55;
          v72 = v73;
          v69 = v98;
          v71 = v97;
          v30 = v205;
        }
      }
    }

    else if (v27 == v70)
    {
      v78 = v215;
      if (v71 && (v78 = v201, (*(*v71 + 112))(v214, v201), (v79 & 1) == 0))
      {
        v69 = v211;
        v78 = v201;
        v80 = v212;
      }

      else
      {
        if (v203)
        {
          v80 = v212;
          v69 = v212 + 1;
          if (__OFADD__(v212, 1))
          {
            goto LABEL_217;
          }

          if (v69 < v212)
          {
            goto LABEL_219;
          }
        }

        else
        {
          if (v211 == v212)
          {
            v69 = v211 + 1;
            if (__OFADD__(v211, 1))
            {
              goto LABEL_227;
            }

            if (v69 < v199)
            {
              goto LABEL_228;
            }

            v203 = 0;
            v80 = v211;
            goto LABEL_96;
          }

          IndexSet.insert(integersIn:)();
          v80 = v212;
          v69 = v212 + 1;
          if (__OFADD__(v212, 1))
          {
            goto LABEL_226;
          }

          if (v69 < v212)
          {
            goto LABEL_229;
          }
        }

        v203 = 0;
        v199 = v80;
      }

LABEL_96:
      v212 = v80 + 1;
      v215 = v78;
      v107 = *(v78 + 24);
      v211 = v69;
      v70 = v27;
      v214 = (v214 + 1);
      if (v214 == v107)
      {
        v214 = 0;
        v108 = v68 + 1;
        v211 = v69;
        v68 = v30;
        v210 = v30;
        v70 = v27;
        if (v108 != v30)
        {
          if ((v108 & 0x8000000000000000) != 0)
          {
            goto LABEL_222;
          }

          if (v108 >= *(v189 + 16))
          {
            goto LABEL_223;
          }

          v68 = v108;
          v109 = v69;
          v223 = *(v188 + 8 * v108);
          v110 = v223;

          v111 = v196;
          v112 = *(v196 + 16);
          v201 = v110;
          if (v112)
          {
            v113 = specialized __RawDictionaryStorage.find<A>(_:)(*(v110 + 16));
            if (v114)
            {
              v115 = *(*(v111 + 56) + 8 * v113);
            }

            else
            {
              v115 = 0;
            }

            v110 = v201;
          }

          else
          {
            v115 = 0;
          }

          v222 = v115;

          v214 = 0;
          v69 = v109;
          v211 = v109;
          v215 = v110;
          v71 = v115;
          v210 = v68;
          v70 = v27;
          goto LABEL_140;
        }
      }
    }

    else
    {
      v204 = v69;
      if (v55[2] == *(v215 + 16) && ((*(*v55 + 112))(v67, v215, v214) & 1) != 0)
      {
        if (++v67 == v55[3])
        {
          ++v70;
          v81 = v212;
          v69 = v204;
          if (v70 == v27)
          {
            v67 = 0;
            v70 = v27;
            goto LABEL_190;
          }

          if ((v70 & 0x8000000000000000) != 0)
          {
            goto LABEL_244;
          }

          if (v70 >= *(v195 + 16))
          {
            goto LABEL_246;
          }

          v142 = *(v198 + 8 * v70);
          v224 = v142;

          v143 = v194;
          if (*(v194 + 16))
          {
            v144 = specialized __RawDictionaryStorage.find<A>(_:)(v142[2]);
            v55 = v142;
            if (v145)
            {
              v146 = *(*(v143 + 56) + 8 * v144);
            }

            else
            {
              v146 = 0;
            }
          }

          else
          {
            v146 = 0;
            v55 = v142;
          }

          v216 = v146;

          v67 = 0;
          v208 = v55;
          v72 = v146;
        }

        v81 = v212;
        v69 = v204;
LABEL_190:
        ++v66;
        v212 = v81 + 1;
        v153 = *(v215 + 24);
        v214 = (v214 + 1);
        if (v214 == v153)
        {
          v214 = 0;
          v134 = v68 + 1;
          v68 = v30;
          v210 = v30;
          if (v134 != v30)
          {
            if ((v134 & 0x8000000000000000) != 0)
            {
              goto LABEL_245;
            }

            if (v134 >= *(v189 + 16))
            {
              goto LABEL_247;
            }

            goto LABEL_194;
          }
        }
      }

      else
      {
        if (!v72)
        {
          if (!v71)
          {
            goto LABEL_85;
          }

          v83 = v55;
          v202 = 0;
          v88 = v71;
          v89 = 0;
          v87 = 1;
          goto LABEL_80;
        }

        v82 = *(*v72 + 112);
        v83 = v55;
        v202 = v72;
        v84 = v82(v67, v55);
        v86 = v71;
        v87 = v85;
        v88 = v86;
        if (v86)
        {
          v89 = v84;
LABEL_80:
          v103 = (*(*v88 + 112))(v214, v215);
          if (v87)
          {
LABEL_84:
            v71 = v88;
            v72 = v202;
            v55 = v83;
            v27 = v190;
LABEL_85:
            v69 = v204;
            if (v213)
            {
              v106 = v66 + 1;
              if (__OFADD__(v66, 1))
              {
                goto LABEL_224;
              }

              if (v106 < v66)
              {
                goto LABEL_225;
              }
            }

            else
            {
              if (v209 == v66)
              {
                if (__OFADD__(v66, 1))
                {
                  goto LABEL_230;
                }

                if (v66 + 1 < v207)
                {
                  goto LABEL_233;
                }

                v209 = v66 + 1;
                goto LABEL_120;
              }

              IndexSet.insert(integersIn:)();
              v106 = v66 + 1;
              if (__OFADD__(v66, 1))
              {
                goto LABEL_231;
              }

              v69 = v204;
              if (v106 < v66)
              {
                goto LABEL_232;
              }
            }

            v209 = v106;
            v207 = v66;
LABEL_120:
            v213 = 0;
            ++v66;
            if (++v67 == v55[3])
            {
              v67 = 0;
              v213 = 0;
              v127 = v70 + 1;
              v70 = v27;
              if (v127 != v27)
              {
                if ((v127 & 0x8000000000000000) != 0)
                {
                  goto LABEL_234;
                }

                if (v127 >= *(v195 + 16))
                {
                  goto LABEL_235;
                }

                v70 = v127;
                v128 = *(v198 + 8 * v127);
                v224 = v128;

                v129 = v194;
                if (*(v194 + 16))
                {
                  v130 = specialized __RawDictionaryStorage.find<A>(_:)(v128[2]);
                  v55 = v128;
                  if (v131)
                  {
                    v126 = *(*(v129 + 56) + 8 * v130);
                  }

                  else
                  {
                    v126 = 0;
                  }
                }

                else
                {
                  v126 = 0;
                  v55 = v128;
                }

                v216 = v126;

                v67 = 0;
                v213 = 0;
LABEL_165:
                v208 = v55;
                v72 = v126;
                v69 = v204;
              }
            }
          }

          else
          {
            v105 = v212;
            if (v104)
            {
              v55 = v83;
              goto LABEL_128;
            }

            if (v89 >= v212)
            {
              v71 = v88;
              if (v103 >= v66)
              {
                if (v103 - v66 >= v89 - v212)
                {
                  ++v212;
                  v152 = *(v215 + 24);
                  v214 = (v214 + 1);
                  v72 = v202;
                  v55 = v83;
                  v27 = v190;
                  v69 = v204;
                  if (v214 == v152)
                  {
                    v214 = 0;
                    v134 = v68 + 1;
                    v68 = v30;
                    v210 = v30;
                    if (v134 != v30)
                    {
                      if ((v134 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_253;
                      }

                      if (v134 >= *(v189 + 16))
                      {
                        goto LABEL_255;
                      }

                      goto LABEL_194;
                    }
                  }
                }

                else
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v206 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v206 + 2) + 1, 1, v206);
                  }

                  v148 = *(v206 + 2);
                  v147 = *(v206 + 3);
                  v69 = v204;
                  if (v148 >= v147 >> 1)
                  {
                    v206 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v147 > 1), v148 + 1, 1, v206);
                    v69 = v204;
                  }

                  v149 = v206;
                  *(v206 + 2) = v148 + 1;
                  v150 = &v149[16 * v148];
                  *(v150 + 4) = v66;
                  *(v150 + 5) = v89;
                  ++v66;
                  ++v67;
                  v55 = v83;
                  v120 = v67 == v83[3];
                  v71 = v88;
                  v72 = v202;
                  v27 = v190;
                  if (v120)
                  {
                    v67 = 0;
                    v121 = v70 + 1;
                    v70 = v190;
                    if (v121 != v190)
                    {
                      if ((v121 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_252;
                      }

                      if (v121 >= *(v195 + 16))
                      {
                        goto LABEL_254;
                      }

                      goto LABEL_114;
                    }
                  }
                }
              }

              else
              {
                ++v212;
                v133 = *(v215 + 24);
                v214 = (v214 + 1);
                v72 = v202;
                v55 = v83;
                v27 = v190;
                v69 = v204;
                if (v214 == v133)
                {
                  v214 = 0;
                  v134 = v68 + 1;
                  v68 = v30;
                  v210 = v30;
                  if (v134 != v30)
                  {
                    if ((v134 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_250;
                    }

                    if (v134 >= *(v189 + 16))
                    {
                      goto LABEL_251;
                    }

LABEL_194:
                    v68 = v134;
                    v223 = *(v188 + 8 * v134);
                    v154 = v223;

                    v155 = v196;
                    v156 = *(v196 + 16);
                    v201 = v154;
                    if (v156)
                    {
                      v157 = specialized __RawDictionaryStorage.find<A>(_:)(*(v154 + 16));
                      if (v158)
                      {
                        v71 = *(*(v155 + 56) + 8 * v157);
                      }

                      else
                      {
                        v71 = 0;
                      }

                      v27 = v190;
                    }

                    else
                    {
                      v71 = 0;
                    }

                    v222 = v71;
                    v159 = v201;

                    v214 = 0;
                    v215 = v159;
                    v210 = v68;
                    v69 = v204;
                    goto LABEL_140;
                  }
                }
              }
            }

            else
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v206 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v206 + 2) + 1, 1, v206);
              }

              v117 = *(v206 + 2);
              v116 = *(v206 + 3);
              v69 = v204;
              if (v117 >= v116 >> 1)
              {
                v206 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v116 > 1), v117 + 1, 1, v206);
                v69 = v204;
              }

              v118 = v206;
              *(v206 + 2) = v117 + 1;
              v119 = &v118[16 * v117];
              *(v119 + 4) = v66;
              *(v119 + 5) = v89;
              ++v66;
              ++v67;
              v55 = v83;
              v120 = v67 == v83[3];
              v71 = v88;
              v72 = v202;
              v27 = v190;
              if (v120)
              {
                v67 = 0;
                v121 = v70 + 1;
                v70 = v190;
                if (v121 != v190)
                {
                  if ((v121 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_248;
                  }

                  if (v121 >= *(v195 + 16))
                  {
                    goto LABEL_249;
                  }

LABEL_114:
                  v70 = v121;
                  v122 = *(v198 + 8 * v121);
                  v224 = v122;

                  v123 = v194;
                  if (*(v194 + 16))
                  {
                    v124 = specialized __RawDictionaryStorage.find<A>(_:)(v122[2]);
                    v55 = v122;
                    if (v125)
                    {
                      v126 = *(*(v123 + 56) + 8 * v124);
                    }

                    else
                    {
                      v126 = 0;
                    }
                  }

                  else
                  {
                    v126 = 0;
                    v55 = v122;
                  }

                  v216 = v126;

                  v67 = 0;
                  goto LABEL_165;
                }
              }
            }
          }
        }

        else
        {
          if (v85)
          {
            goto LABEL_84;
          }

          v105 = v212;
LABEL_128:
          v27 = v190;
          if (v203)
          {
            if (__OFADD__(v105, 1))
            {
              goto LABEL_236;
            }

            v71 = v88;
            v211 = v105 + 1;
            v72 = v202;
            if (v105 + 1 < v105)
            {
              goto LABEL_237;
            }
          }

          else
          {
            if (v211 == v105)
            {
              v132 = v211 + 1;
              if (__OFADD__(v211, 1))
              {
                goto LABEL_239;
              }

              v71 = v88;
              ++v211;
              v72 = v202;
              if (v132 < v199)
              {
                goto LABEL_240;
              }

              goto LABEL_150;
            }

            IndexSet.insert(integersIn:)();
            v105 = v212;
            if (__OFADD__(v212, 1))
            {
              goto LABEL_238;
            }

            v71 = v88;
            v211 = v212 + 1;
            v72 = v202;
            if (v212 + 1 < v212)
            {
              goto LABEL_241;
            }
          }

          v199 = v105;
LABEL_150:
          v203 = 0;
          v212 = v105 + 1;
          v135 = *(v215 + 24);
          v69 = v211;
          v214 = (v214 + 1);
          if (v214 == v135)
          {
            v214 = 0;
            v203 = 0;
            v136 = v68 + 1;
            v68 = v30;
            v69 = v211;
            v210 = v30;
            if (v136 != v30)
            {
              if ((v136 & 0x8000000000000000) != 0)
              {
                goto LABEL_242;
              }

              if (v136 >= *(v189 + 16))
              {
                goto LABEL_243;
              }

              v68 = v136;
              v223 = *(v188 + 8 * v136);
              v137 = v223;

              v138 = v196;
              v139 = *(v196 + 16);
              v201 = v137;
              if (v139)
              {
                v140 = specialized __RawDictionaryStorage.find<A>(_:)(*(v137 + 16));
                if (v141)
                {
                  v71 = *(*(v138 + 56) + 8 * v140);
                }

                else
                {
                  v71 = 0;
                }

                v27 = v190;
              }

              else
              {
                v71 = 0;
              }

              v222 = v71;
              v151 = v201;

              v214 = 0;
              v203 = 0;
              v69 = v211;
              v215 = v151;
              v210 = v68;
LABEL_140:
              v30 = v205;
            }
          }
        }
      }
    }
  }

  v202 = v72;
  v160 = v69;

  v161 = *(v186 + 20);

  v162 = v200;
  *(v200 + v161) = v206;
  v163 = v180;
  v164 = v209;
  *v180 = v207;
  v163[1] = v164;
  *(v163 + 16) = v213 & 1;
  v165 = v179;
  *v179 = v199;
  v165[1] = v160;
  *(v165 + 16) = v203 & 1;
  v166 = v185;
  outlined init with copy of DiffResultBuilder(v162, v185);
  v167 = v192;
  outlined init with take of IndexSetBuilder(v166, v192);
  if ((*(v167 + *(v197 + 20) + 16) & 1) == 0)
  {
    IndexSet.insert(integersIn:)();
  }

  v168 = *(v184 + 32);
  v169 = v191;
  v170 = v181;
  v168(v191, v167, v181);
  v171 = *(v185 + *(v186 + 20));
  v172 = v187;
  outlined init with take of IndexSetBuilder(v185 + *(v186 + 24), v187);
  v173 = v182;
  if ((*(v172 + *(v197 + 20) + 16) & 1) == 0)
  {
    IndexSet.insert(integersIn:)();
  }

  v174 = v193;
  v168(v193, v172, v170);
  v168(v173, v169, v170);
  v175 = type metadata accessor for DiffResult(0);
  *&v173[*(v175 + 20)] = v171;
  v168(&v173[*(v175 + 24)], v174, v170);
  outlined destroy of DiffResultBuilder(v200);

LABEL_211:
}

void specialized HeterogeneousIndexLookupTable.init(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v25 = MEMORY[0x1E69E7CC0];
    v3 = a1;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    a1 = v3;
    v4 = 0;
    v5 = 0;
    v2 = v25;
    while (v4 < *(a1 + 16))
    {
      v6 = *(*(v3 + 32 + 8 * v4) + 24);
      v7 = v5 + v6;
      if (__OFADD__(v5, v6))
      {
        goto LABEL_23;
      }

      v26 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
        a1 = v3;
        v2 = v26;
      }

      ++v4;
      *(v2 + 16) = v9 + 1;
      *(v2 + 8 * v9 + 32) = v5;
      v5 = v7;
      if (v1 == v4)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v10 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSO_s12Zip2SequenceVys15ContiguousArrayVy7SwiftUI29AbstractHomogeneousCollectionCGSaySiGGTt1g503_s7h40UI29HeterogeneousIndexLookupTableVyACs15fgs4AA29jkl57CGcfcSOAG_Sit_tcfu_33_00d3769050a98b258c2836a15380bcfdAG_X11SOTf3nnpk_nTf1nc_n(a1, v2);
    specialized Dictionary.compactMapValues<A>(_:)(v10);
    v12 = v11;

    v13 = 1 << *(v12 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v12 + 64);
    v16 = (v13 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v17 = 0;
    v18 = 0;
    while (v15)
    {
      v19 = v17;
LABEL_17:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = *(**(*(v12 + 56) + ((v19 << 9) | (8 * v20))) + 88);

      v23 = v21(v22);

      v24 = __OFADD__(v18, v23);
      v18 += v23;
      if (v24)
      {
        __break(1u);
LABEL_20:

        return;
      }
    }

    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v16)
      {
        goto LABEL_20;
      }

      v15 = *(v12 + 64 + 8 * v19);
      ++v17;
      if (v15)
      {
        v17 = v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void *_sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSO_s12Zip2SequenceVys15ContiguousArrayVy7SwiftUI29AbstractHomogeneousCollectionCGSaySiGGTt1g503_s7h40UI29HeterogeneousIndexLookupTableVyACs15fgs4AA29jkl57CGcfcSOAG_Sit_tcfu_33_00d3769050a98b258c2836a15380bcfdAG_X11SOTf3nnpk_nTf1nc_n(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = MEMORY[0x1E69E7CC8];
  v35 = MEMORY[0x1E69E7CC8];
  v4 = *(a1 + 16);
  if (v4)
  {
    v33 = -v4;
    v5 = 4;
    v34 = a1;
    while (1)
    {
      v7 = v5 - 4;
      if ((v5 - 4) >= *(a1 + 16))
      {
        break;
      }

      v8 = *(v2 + 16);
      if (v7 == v8)
      {
        goto LABEL_19;
      }

      if (v7 >= v8)
      {
        goto LABEL_21;
      }

      v9 = *(a1 + 8 * v5);
      v10 = *(v2 + 8 * v5);
      v11 = *(v9 + 16);
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      v14 = v3[2];
      v15 = (v13 & 1) == 0;
      v16 = v14 + v15;
      if (__OFADD__(v14, v15))
      {
        goto LABEL_22;
      }

      v17 = v12;
      v18 = v13;
      v19 = v3[3];

      if (v19 < v16)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, 1);
        v3 = v35;
        v20 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
        if ((v18 & 1) != (v21 & 1))
        {
          goto LABEL_24;
        }

        v17 = v20;
      }

      if (v18)
      {
        v22 = v3[7];
        v23 = *(v22 + 8 * v17);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v22 + 8 * v17) = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
          *(v22 + 8 * v17) = v23;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v23);
          *(v22 + 8 * v17) = v23;
        }

        a1 = v34;
        v23[2] = v26 + 1;
        v6 = &v23[2 * v26];
        v6[4] = v9;
        v6[5] = v10;
        v2 = a2;
      }

      else
      {
        type metadata accessor for _ContiguousArrayStorage<Transaction.PendingListeners.WeakListener>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(AbstractHomogeneousCollection, Int)>, type metadata accessor for (AbstractHomogeneousCollection, Int), MEMORY[0x1E69E6F90]);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_18DDA6EB0;
        *(v27 + 32) = v9;
        *(v27 + 40) = v10;
        v3[(v17 >> 6) + 8] |= 1 << v17;
        *(v3[6] + 8 * v17) = v11;
        *(v3[7] + 8 * v17) = v27;
        v28 = v3[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_23;
        }

        v3[2] = v30;
        a1 = v34;
      }

      ++v5;
      if (v33 + v5 == 4)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
LABEL_19:

    return v3;
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<(AbstractHomogeneousCollection, Int)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(AbstractHomogeneousCollection, Int)>)
  {
    type metadata accessor for (AGSubgraphRef, Int)(255, &lazy cache variable for type metadata for (AbstractHomogeneousCollection, Int), type metadata accessor for AbstractHomogeneousCollection, MEMORY[0x1E69E6530]);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<(AbstractHomogeneousCollection, Int)>);
    }
  }
}

void specialized Dictionary.compactMapValues<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7CC8];
  v30 = MEMORY[0x1E69E7CC8];
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v12 = v11 | (v10 << 6);
        v13 = *(*(a1 + 56) + 8 * v12);
        if (*(v13 + 16))
        {
          break;
        }

        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v28 = *(*(a1 + 48) + 8 * v12);
      v29 = v2;
      v15 = **(v13 + 32);

      specialized _arrayForceCast<A, B>(_:)(v13);
      v27 = (*(v15 + 136))();

      v16 = *(v4 + 16);
      if (*(v4 + 24) <= v16)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16 + 1, 1);
        v4 = v30;
      }

      v17 = MEMORY[0x193AC1170](*(v4 + 40), v28);
      v18 = v4 + 64;
      v19 = -1 << *(v4 + 32);
      v20 = v17 & ~v19;
      v21 = v20 >> 6;
      v2 = v29;
      if (((-1 << v20) & ~*(v4 + 64 + 8 * (v20 >> 6))) == 0)
      {
        break;
      }

      v22 = __clz(__rbit64((-1 << v20) & ~*(v4 + 64 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v4 + 48) + 8 * v22) = v28;
      *(*(v4 + 56) + 8 * v22) = v27;
      ++*(v4 + 16);
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    v23 = 0;
    v24 = (63 - v19) >> 6;
    while (++v21 != v24 || (v23 & 1) == 0)
    {
      v25 = v21 == v24;
      if (v21 == v24)
      {
        v21 = 0;
      }

      v23 |= v25;
      v26 = *(v18 + 8 * v21);
      if (v26 != -1)
      {
        v22 = __clz(__rbit64(~v26)) + (v21 << 6);
        goto LABEL_23;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v14 >= v9)
      {

        return;
      }

      v8 = *(v5 + 8 * v14);
      ++v10;
      if (v8)
      {
        v10 = v14;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void type metadata accessor for (AbstractHomogeneousCollection, precedingElementCount: Int)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (AbstractHomogeneousCollection, precedingElementCount: Int))
  {
    type metadata accessor for AbstractHomogeneousCollection();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AbstractHomogeneousCollection, precedingElementCount: Int));
    }
  }
}

void type metadata accessor for (AbstractHomogeneousCollection, Int)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (AbstractHomogeneousCollection, Int))
  {
    type metadata accessor for AbstractHomogeneousCollection();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AbstractHomogeneousCollection, Int));
    }
  }
}

uint64_t *static HomogeneousCollection.makeHomogenousIndexLookupTable(from:)(uint64_t a1)
{
  v3 = *(v1 + 160);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  if (v8 == 1)
  {
    v9 = *(a1 + 40);
    v49 = *(*(a1 + 32) + 32);
    v10 = type metadata accessor for ContiguousArray();
    v11 = *(v1 + 168);
    swift_retain_n();

    swift_getWitnessTable(MEMORY[0x1E69E6C18], v10);
    v12 = OrderedSet.init<A>(_:)();
    v14 = v13;
    type metadata accessor for HomogenousContiguousIndexLookupTable(0, v3, v11, v15);
    v16 = swift_allocObject();
    v17 = *v16;
    v16[3] = v12;
    v16[4] = v14;
    v16[5] = v9;
    v16[2] = *(v17 + 120);

    return v16;
  }

  else
  {
    v19 = MEMORY[0x1E69E7668];
    swift_getTupleTypeMetadata2();
    v20 = static Array._allocateUninitialized(_:)();
    v21 = *(v1 + 168);
    v22 = specialized Dictionary.init(dictionaryLiteral:)(v20, v3, v19, v21);

    v23 = 0;
    v49 = v22;
    v24 = (a1 + 32);
    v25 = v8 + 1;
    v44 = a1 + 32;
    while (--v25)
    {
      v26 = *v24;
      v24 += 2;
      v27 = *(v26 + 24);
      v28 = __OFADD__(v23, v27);
      v23 += v27;
      if (v28)
      {
        __break(1u);
        break;
      }
    }

    v42 = v21;
    v47 = type metadata accessor for Dictionary();
    Dictionary.reserveCapacity(_:)(v23);
    if (v8)
    {
      v30 = 0;
      v43 = v8;
      while (1)
      {
        v31 = (v44 + 16 * v30);
        v32 = *v31;
        v33 = v31[1];

        result = ContiguousArray.count.getter();
        if ((result & 0x8000000000000000) != 0)
        {
          break;
        }

        v34 = result;
        if (result)
        {
          v45 = v32;
          v46 = v30;
          v35 = 0;
          v36 = 0x100000000;
          if (v33 < 0x100000000)
          {
            v36 = v33;
          }

          v37 = v36 - 0x100000000;
          v38 = v33;
          while (1)
          {
            result = ContiguousArray.subscript.getter();
            if ((v33 & 0x8000000000000000) != 0)
            {
              break;
            }

            if (!v37)
            {
              goto LABEL_24;
            }

            ++v35;
            v48 = v38;
            Dictionary.updateValue(_:forKey:)();
            (*(v4 + 8))(v6, v3);
            ++v37;
            ++v38;
            if (v34 == v35)
            {

              v8 = v43;
              v30 = v46;
              goto LABEL_11;
            }
          }

          __break(1u);
LABEL_24:
          __break(1u);
          break;
        }

LABEL_11:
        ++v30;

        if (v30 == v8)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_21:
      type metadata accessor for HomogenousDiscontiguousIndexLookupTable(0, v3, v42, v29);
      v39 = v49;
      result = swift_allocObject();
      v40 = *result;
      result[3] = v39;
      result[2] = *(v40 + 120);
    }
  }

  return result;
}

uint64_t HomogeneousCollection.isElementEqual(at:toElementIn:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*v3 + 160);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  ContiguousArray.subscript.getter();
  ContiguousArray.subscript.getter();
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v5 + 8);
  v12(v7, v4);
  v12(v10, v4);
  return v11 & 1;
}

uint64_t static TypedCanonicalViewID.== infix(_:_:)(_DWORD *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for TypedCanonicalViewID(0, a3, a4, a4);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t outlined init with copy of DiffResultBuilder(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiffResultBuilder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t initializeWithCopy for DiffResultBuilder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(*(v6 - 8) + 16);
  v7(a1, a2, v6);
  v8 = type metadata accessor for IndexSetBuilder(0);
  v9 = *(v8 + 20);
  v10 = a1 + v9;
  v11 = a2 + v9;
  *v10 = *v11;
  *(v10 + 16) = *(v11 + 16);
  v12 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  v13 = a1 + v12;
  v14 = a2 + v12;

  v7(v13, v14, v6);
  v15 = *(v8 + 20);
  v16 = v13 + v15;
  v17 = v14 + v15;
  *v16 = *v17;
  *(v16 + 16) = *(v17 + 16);
  return a1;
}

uint64_t outlined init with take of IndexSetBuilder(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexSetBuilder(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DiffResultBuilder(uint64_t a1)
{
  v2 = type metadata accessor for DiffResultBuilder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t destroy for DiffResult(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexSet();
  v7 = *(*(v4 - 8) + 8);
  (v7)((v4 - 8), a1, v4);

  v5 = a1 + *(a2 + 24);

  return v7(v5, v4);
}

uint64_t HomogenousContiguousIndexLookupTable.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DiffResult.removes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for IndexSet();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DiffResult.inserts.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DiffResult(0) + 24);
  v4 = type metadata accessor for IndexSet();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double outlined consume of SectionAccumulator.RowIDs.IDs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 1u)
  {
    if (a5 == 2)
    {

      goto LABEL_6;
    }

    if (a5 == 3)
    {

      goto LABEL_6;
    }
  }

  else if (a5)
  {
    if (a5 == 1)
    {

LABEL_6:
    }
  }

  else
  {
  }

  return result;
}

uint64_t HomogeneousCollection.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double specialized AnimationBox.animate<A>(value:time:context:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D4>)
{
  v7 = *v3;
  v8 = *(*v3 + 160);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = v24 - v11;
  *v24 = v10;
  v24[1] = v13;
  v24[2] = v14;
  v24[3] = v15;
  (*(v9 + 16))(v24 - v11, v3 + *(v7 + 176), v8);
  v16 = *(v7 + 168);
  v17 = *(v16 + 16);
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  v19 = v18;
  _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_0(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
  v17(v25, v24, a1, v19, v20, v8, v16, a3);
  (*(v9 + 8))(v12, v8);
  v21 = v26;
  result = *v25;
  v23 = v25[1];
  *a2 = v25[0];
  *(a2 + 16) = v23;
  *(a2 + 32) = v21;
  return result;
}

void SpringAnimation.animate<A>(value:time:context:)(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  MEMORY[0x1EEE9AC00](*(a3 - 8));
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v15 == MEMORY[0x1E69E63B0])
  {
    *a4 = specialized SpringAnimation.animate<A>(value:time:context:)(a2, *a1, a5, *v5, v5[1]);
    *(a4 + 8) = v25 & 1;
    return;
  }

  v32 = v11;
  v16 = v12;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v17 == a3)
  {
    specialized SpringAnimation.animate<A>(value:time:context:)(a2, &v33, *a1, a1[1], a1[2], a1[3], a5, v5[1]);
    v26 = v34;
    *a4 = v33;
    *(a4 + 16) = v26;
    *(a4 + 32) = LOBYTE(v35);
    return;
  }

  v18 = v5[1];
  v19 = v5[3];
  v20 = sqrt(v18 / *v5);
  v21 = sqrt(*v5 * v18);
  v22 = v5[2] / (v21 + v21);
  if (v22 >= 1.0)
  {
    v24 = v20 - v19;
    v23 = 0.0;
  }

  else
  {
    v23 = v20 * sqrt(1.0 - v22 * v22);
    v24 = (v20 * v22 - v19) / v23;
  }

  *&v33 = v20;
  *(&v33 + 1) = v22;
  *&v34 = v23;
  *(&v34 + 1) = 0x3FF0000000000000;
  v35 = v24;
  SpringModel.duration(epsilon:)(0.001);
  if (v27 > a5)
  {
    v28 = SpringModel.sample(at:)(a5);
    if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v30 = v32;
      v31 = v28;
      if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (6.28318531 / sqrt(v18) > a5)
        {
LABEL_18:
          (*(v30 + 16))(v14, a1, a3);
          (*(v16 + 16))(a3, v16, v31);
          (*(v32 + 32))(a4, v14, a3);
          (*(v32 + 56))(a4, 0, 1, a3);
          return;
        }
      }

      else if (a5 < 0.0)
      {
        goto LABEL_18;
      }

      *(a2 + 17) = 1;
      goto LABEL_18;
    }
  }

  v29 = *(v32 + 56);

  v29(a4, 1, 1, a3);
}

void specialized SpringAnimation.animate<A>(value:time:context:)(uint64_t a1@<X0>, uint64_t a2@<X8>, float64_t a3@<D0>, float64_t a4@<D1>, float64_t a5@<D2>, float64_t a6@<D3>, double a7@<D4>, double a8@<D6>)
{
  SpringModel.duration(epsilon:)(0.001);
  v12 = 0uLL;
  if (v13 <= a7)
  {
    v15 = 1;
    v16 = 0uLL;
    goto LABEL_11;
  }

  v14 = SpringModel.sample(at:)(a7);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if ((*&a8 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (6.28318531 / sqrt(a8) > a7)
      {
LABEL_10:
        v15 = 0;
        v17.f64[0] = a3;
        v17.f64[1] = a4;
        v12 = vmulq_n_f64(v17, v14);
        v18.f64[0] = a5;
        v18.f64[1] = a6;
        v16 = vmulq_n_f64(v18, v14);
        goto LABEL_11;
      }
    }

    else if (a7 < 0.0)
    {
      goto LABEL_10;
    }

    *(a1 + 17) = 1;
    goto LABEL_10;
  }

  v15 = 1;
  v16 = 0uLL;
  v12 = 0uLL;
LABEL_11:
  *a2 = v12;
  *(a2 + 16) = v16;
  *(a2 + 32) = v15;
}

double SpringModel.sample(at:)(double a1)
{
  v2 = v1[1];
  if (v2 >= 1.0)
  {
    v8 = v1[3] + v1[4] * a1;
    v7 = v8 * exp(-(a1 * *v1));
  }

  else
  {
    v3 = v1[2] * a1;
    v4 = exp(-(v2 * *v1) * a1);
    v5 = v1[3];
    v6 = __sincos_stret(v3);
    v7 = v4 * (v5 * v6.__cosval + v6.__sinval * v1[4]);
  }

  return 1.0 - v7;
}

uint64_t static Text.+ infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  type metadata accessor for ConcatenatedTextStorage();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3 & 1;
  *(v16 + 40) = a4;
  *(v16 + 48) = a5;
  *(v16 + 56) = a6;
  a7 &= 1u;
  *(v16 + 64) = a7;
  *(v16 + 72) = a8;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  outlined copy of Text.Storage(a5, a6, a7);

  return v16;
}

uint64_t Font.smallCaps()(uint64_t a1)
{
  type metadata accessor for FontBox<Font.ModifierProvider<Font.FeatureSettingModifier>>(0);
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = xmmword_18DDF4DE0;
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = xmmword_18DDF4DF0;

  return v3;
}

uint64_t ConcatenatedTextStorage.allowsTypesettingLanguage()()
{
  if (*(v0 + 32) == 1 && ((*(**(v0 + 16) + 112))() & 1) == 0)
  {
    return 0;
  }

  if (*(v0 + 64) == 1)
  {
    return (*(**(v0 + 48) + 112))() & 1;
  }

  return 1;
}

uint64_t ConcatenatedTextStorage.resolve<A>(into:in:with:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = a2[1];
  v11 = *a3;
  v12 = *(v5 + 16);
  v13 = *(v5 + 24);
  v14 = *(v5 + 32);
  v15 = *(v5 + 40);
  v22 = *a2;
  v9 = v22;
  v23 = v10;
  v21 = v11;
  Text.resolve<A>(into:in:with:)(a1, &v22, &v21, v12, v13, v14, v15, a4, a5);
  v16 = *(v5 + 48);
  v17 = *(v5 + 56);
  v18 = *(v5 + 64);
  v19 = *(v5 + 72);
  v22 = v9;
  v23 = v10;
  v21 = v11;
  return Text.resolve<A>(into:in:with:)(a1, &v22, &v21, v16, v17, v18, v19, a4, a5);
}

uint64_t outlined init with copy of Text.Style(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Text.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double NSAttributedString.oversizedDrawingMargin(from:)(uint64_t a1)
{
  v2 = v1;
  v37 = *MEMORY[0x1E69E9840];
  v3 = [v1 string];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  aBlock = v4;
  v32 = v6;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  LOBYTE(v3) = v7;

  v8 = 0.0;
  if ((v3 & 1) == 0)
  {
    v30 = MEMORY[0x1E69E7CD0];
    if (one-time initialization token for kitFont != -1)
    {
LABEL_27:
      swift_once();
    }

    v9 = static NSAttributedStringKey.kitFont;
    v10 = [v2 length];
    v11 = swift_allocObject();
    *(v11 + 16) = &v30;
    v12 = swift_allocObject();
    *(v12 + 16) = partial apply for closure #1 in NSAttributedString.allFonts();
    *(v12 + 24) = v11;
    v35 = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
    v36 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v32 = 1107296256;
    v33 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    v34 = &block_descriptor_81;
    v13 = _Block_copy(&aBlock);

    [v2 enumerateAttribute:v9 inRange:0 options:v10 usingBlock:{0, v13}];
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    v2 = *&v30;

    if ((v2 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for CTFontRef(0);
      lazy protocol witness table accessor for type ResolvedTextFilter and conformance ResolvedTextFilter(&lazy protocol witness table cache variable for type CTFontRef and conformance CTFontRef, type metadata accessor for CTFontRef, protocol conformance descriptor for CTFontRef);
      Set.Iterator.init(_cocoa:)();
      v16 = aBlock;
      v15 = v32;
      v17 = v33;
      v18 = v34;
      v19 = v35;
    }

    else
    {
      v20 = -1 << *(v2 + 32);
      v15 = v2 + 56;
      v17 = ~v20;
      v21 = -v20;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      else
      {
        v22 = -1;
      }

      v19 = v22 & *(v2 + 56);

      v18 = 0;
      v16 = v2;
    }

    while (1)
    {
      if (v16 < 0)
      {
        if (!__CocoaSet.Iterator.next()() || (type metadata accessor for CTFontRef(0), swift_dynamicCast(), v27 = v30, v25 = v18, v26 = v19, v30 == 0.0))
        {
LABEL_24:
          outlined consume of Set<EventID>.Iterator._Variant(v16);

          return v8;
        }
      }

      else
      {
        v23 = v18;
        v24 = v19;
        v25 = v18;
        if (!v19)
        {
          while (1)
          {
            v25 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            if (v25 >= ((v17 + 64) >> 6))
            {
              goto LABEL_24;
            }

            v24 = *(v15 + 8 * v25);
            ++v23;
            if (v24)
            {
              goto LABEL_16;
            }
          }

          __break(1u);
          goto LABEL_27;
        }

LABEL_16:
        v26 = (v24 - 1) & v24;
        v27 = COERCE_DOUBLE(*(*(v16 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24))))));
        if (v27 == 0.0)
        {
          goto LABEL_24;
        }
      }

      v30 = 0.0;
      LanguageAwareOutsets = CTFontGetLanguageAwareOutsets();

      if (LanguageAwareOutsets && v8 <= v30)
      {
        v8 = v30;
      }

      v18 = v25;
      v19 = v26;
    }
  }

  return v8;
}

uint64_t TextScaleModifier.modify(style:environment:)(uint64_t result)
{
  if (*(v1 + 16) == 1)
  {
    *(result + 320) = *(v1 + 17);
  }

  return result;
}

uint64_t sub_18D339AB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypesettingLanguage.Storage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

double View.typesettingLanguageAwareLineHeightRatio(_:isEnabled:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = *a1;
  v6 = *(a1 + 8);
  KeyPath = swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 32) = v6;
  View.transformEnvironment<A>(_:transform:)(KeyPath, partial apply for closure #1 in View.typesettingLanguageAwareLineHeightRatio(_:isEnabled:), v8, a3);

  return result;
}

uint64_t partial apply for closure #1 in View.typesettingLanguageAwareLineHeightRatio(_:isEnabled:)(uint64_t result)
{
  if (*(v1 + 16) == 1)
  {
    v2 = result;
    v3 = *(v1 + 32);
    v4 = *(v1 + 24);
    result = type metadata accessor for TypesettingConfiguration(0);
    v5 = v2 + *(result + 20);
    *v5 = v4;
    *(v5 + 8) = v3;
  }

  return result;
}

_BYTE *assignWithTake for TypesettingConfiguration(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1, 2, v6);
  v11 = v9(a2, 2, v7);
  if (!v10)
  {
    if (!v11)
    {
      v18 = type metadata accessor for Locale.Language();
      (*(*(v18 - 8) + 40))(a1, a2, v18);
      a1[*(v7 + 48)] = a2[*(v7 + 48)];
      goto LABEL_7;
    }

    outlined destroy of TypesettingConfiguration(a1, type metadata accessor for (Locale.Language, TypesettingLanguage.Flags));
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v13 = type metadata accessor for TypesettingLanguage.Storage(0);
    memcpy(a1, a2, *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  v12 = type metadata accessor for Locale.Language();
  (*(*(v12 - 8) + 32))(a1, a2, v12);
  a1[*(v7 + 48)] = a2[*(v7 + 48)];
  (*(v8 + 56))(a1, 0, 2, v7);
LABEL_7:
  v14 = *(a3 + 20);
  v15 = &a1[v14];
  v16 = &a2[v14];
  *v15 = *v16;
  v15[8] = v16[8];
  return a1;
}

uint64_t EnvironmentValues.typesettingConfiguration.setter(uint64_t a1)
{
  v3 = type metadata accessor for TypesettingConfiguration(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  outlined init with copy of TypesettingConfiguration(a1, &v13[-v7], type metadata accessor for TypesettingConfiguration);
  v9 = *v1;
  v10 = v1[1];
  v14 = *v1;
  v15 = v10;
  if (EnvironmentValues.bridgedEnvironmentResolver.getter())
  {
    (*(v11 + 16))(&type metadata for TypesettingConfigurationKey, v1, v8, &type metadata for TypesettingConfigurationKey, &protocol witness table for TypesettingConfigurationKey);
  }

  else
  {
    outlined init with copy of TypesettingConfiguration(v8, v5, type metadata accessor for TypesettingConfiguration);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA024TypesettingConfigurationF0VG_Tt2g5(v1, v5);

    outlined destroy of TypesettingConfiguration(v5, type metadata accessor for TypesettingConfiguration);
    if (v10)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA024TypesettingConfigurationK0VG_Ttg5(v9, *v1);
    }
  }

  outlined destroy of TypesettingConfiguration(a1, type metadata accessor for TypesettingConfiguration);
  return outlined destroy of TypesettingConfiguration(v8, type metadata accessor for TypesettingConfiguration);
}

uint64_t outlined destroy of TypesettingConfiguration(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double closure #1 in View.monospacedDigit()(void *a1)
{
  _s7SwiftUI15AnyFontModifierC6staticyACxmAA06StaticdE0RzlFZAA0D0V015MonospacedDigitE0V_Ttt0g5();
  MEMORY[0x193ABF170]();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return result;
}

void protocol witness for static StaticFontModifier.modify(descriptor:in:) in conformance Font.MonospacedDigitModifier(const __CTFontDescriptor **a1, uint64_t a2)
{
  if ((*(a2 + 25) & 1) == 0)
  {
    v2 = *a1;
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v5 = Int._bridgeToObjectiveC()().super.super.isa;
    CopyWithFeature = CTFontDescriptorCreateCopyWithFeature(v2, isa, v5);

    *a1 = CopyWithFeature;
  }
}

void ResolvedMulticolorStyle.init(in:bundle:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v7 = a1[1];
  v16 = *a1;
  v6 = v16;
  v17 = v7;
  *a3 = specialized Color.AccentColorProvider.resolve(in:)(&v16, a4);
  *(a3 + 4) = v8;
  *(a3 + 8) = v9;
  *(a3 + 12) = v10;
  *(a3 + 16) = 2143289344;
  v16 = v6;
  v17 = v7;
  EnvironmentValues.colorScheme.getter(&v15);
  *(a3 + 20) = v15;
  if (v7)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019ColorSchemeContrastI033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt1g5(v6, &v16);

    *(a3 + 21) = v16;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayGamutI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v6, &v16);

    v11 = v16;
  }

  else
  {
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019ColorSchemeContrastS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(v6);
    if (v12)
    {
      v13 = *(v12 + 72);
    }

    else
    {
      v13 = 0;
    }

    *(a3 + 21) = v13;
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayGamutS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v6);
    if (v14)
    {
      v11 = *(v14 + 72);
    }

    else
    {
      v11 = 0;
    }
  }

  *(a3 + 22) = v11;
  *(a3 + 24) = a2;
}

uint64_t specialized static Color.ResolvedHDR.named(_:bundle:in:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v8 = *a4;
  v7 = a4[1];
  if (one-time initialization token for namedTypes != -1)
  {
    swift_once();
  }

  v9 = static SystemColorType.namedTypes;
  if (*(static SystemColorType.namedTypes + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v11 & 1) != 0))
  {
    v21 = *(*(v9 + 56) + v10);
    v20[0] = v8;
    v20[1] = v7;
    SystemColorType.resolveHDR(in:)(v20, v22);
    v12 = 0;
    result = v22[0];
  }

  else
  {
    if (a3)
    {
      v22[0] = v8;
      v22[1] = v7;
      v14 = a3;

      v15 = Color.NamedColor.resolveCGColor(in:)(v22, a1, a2, a3);

      if (v15)
      {
        v16 = v15;
        v17 = specialized Color.Resolved.init(failableCGColor:)(v16);
        if ((v18 & 1) == 0)
        {
          v19 = v17;
          CGColorGetContentHeadroom();

          result = v19;
          v12 = 0;
          goto LABEL_12;
        }
      }
    }

    result = 0;
    v12 = 1;
  }

LABEL_12:
  LOBYTE(v22[0]) = v12;
  return result;
}

uint64_t ResolvedMulticolorStyle.resolveHDR(name:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 20);
  v7 = *(v2 + 21);
  v8 = *(v2 + 22);
  v9 = *(v2 + 24);
  if (a1 == 0xD000000000000012 && 0x800000018DD7AE20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    LOBYTE(v10) = 0;
  }

  else if (a1 == 0x6574696877 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    LOBYTE(v10) = 0;
    v5 = 0x3F8000003F800000;
  }

  else if (a1 == 0x6B63616C62 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = 0;
    LOBYTE(v10) = 0;
  }

  else
  {
    EnvironmentValues.init()(&v19);
    v12 = v19;
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE019ExplicitColorSchemeF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2B5(&v19, v6);

    v13 = v20;
    if (v20)
    {
      v14 = v19;
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE019ExplicitColorSchemeK033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Ttg5(v12, v19);
    }

    else
    {

      v14 = v19;
    }

    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA019ColorSchemeContrastF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2B5(&v19, v7);

    if (v13)
    {
      v15 = v19;
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA019ColorSchemeContrastK033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Ttg5(v14, v19);
    }

    else
    {

      v15 = v19;
    }

    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA012DisplayGamutF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2B5(&v19, v8);

    if (v13)
    {
      v16 = v19;
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA012DisplayGamutK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v15, v19);
    }

    else
    {

      v16 = v19;
    }

    v18[0] = v16;
    v18[1] = v20;
    v5 = specialized static Color.ResolvedHDR.named(_:bundle:in:)(a1, a2, v9, v18);
    v10 = HIDWORD(v17) & 1;
  }

  LOBYTE(v19) = v10;
  return v5;
}

uint64_t getEnumTagSinglePayload for _BlendModeShapeStyle(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xEB)
  {
    v7 = 235;
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

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
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
      if (v5 >= 0xEB)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      if (v15 >= 0x15)
      {
        return v15 - 20;
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

unsigned int *storeEnumTagSinglePayload for _BlendModeShapeStyle(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xEB)
  {
    v7 = 235;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
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
      if (v6 < 0xEB)
      {
        *(result + v8) = a2 + 20;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ResolvedColorProvider(__int128 *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = *(a1 + 4);
  v5 = *a2;
  v6 = *(a2 + 4);
  return specialized static ResolvedColorProvider.== infix(_:_:)(&v3, &v5);
}

BOOL specialized static ResolvedColorProvider.== infix(_:_:)(float *a1, float *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    v2 = a1[1] == a2[1] && a1[2] == a2[2];
    v3 = v2 && a1[3] == a2[3];
    if (v3 && a1[4] == a2[4])
    {
      return 1;
    }
  }

  return result;
}

uint64_t ConcatenatedTextStorage.isEqual(to:)(uint64_t a1)
{
  v2 = v1;
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 16);
  v5 = *(v2 + 40);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  if (*(v2 + 32))
  {
    if (*(v3 + 32))
    {
      v22 = v3;
      v10 = *(*v4 + 96);

      outlined copy of Text.Storage(v6, v7, 1);

      if (v10(v6))
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    return 0;
  }

  if (*(v3 + 32))
  {
    return 0;
  }

  v22 = v3;
  v11 = *(v2 + 24);
  if (v4 == v6 && v11 == v7)
  {

    outlined copy of Text.Storage(v4, v11, 0);
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    outlined copy of Text.Storage(v6, v7, 0);

    if ((v13 & 1) == 0)
    {
LABEL_12:
      outlined consume of Text.Storage(v6, v7, v8);

      return 0;
    }
  }

LABEL_14:
  _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(v5, v9);
  v15 = v14;
  outlined consume of Text.Storage(v6, v7, v8);

  if ((v15 & 1) == 0)
  {
    goto LABEL_20;
  }

  v16 = *(v2 + 48);
  v17 = *(v2 + 72);
  v18 = *(v22 + 72);
  if ((*(v2 + 64) & 1) == 0)
  {
    if (*(v22 + 64) & 1) == 0 && (v16 == *(v22 + 48) && *(v2 + 56) == *(v22 + 56) || (_stringCompareWithSmolCheck(_:_:expecting:)()))
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if ((*(v22 + 64) & 1) == 0 || ((*(*v16 + 96))(*(v22 + 48)) & 1) == 0)
  {
LABEL_20:

    return 0;
  }

LABEL_25:
  _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(v17, v18);
  v21 = v20;

  return v21 & 1;
}

uint64_t VisualEffect.clipShape<A>(_:style:)@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = a5;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _ClipEffect(0, v14, v15, v14);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v23 - v19;
  (*(v11 + 16))(v13, a1, a4, v18);
  (*(v11 + 32))(v20, v13, a4);
  v21 = &v20[*(v16 + 36)];
  *v21 = a2 & 1;
  v21[1] = HIBYTE(a2) & 1;
  swift_getWitnessTable(protocol conformance descriptor for _ClipEffect<A>, v16);
  VisualEffect.rendererEffect<A>(_:)(v20, a3, v16, v23, a6);
  return (*(v17 + 8))(v20, v16);
}

uint64_t assignWithCopy for Path(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of Path.Storage(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v12 = *(a1 + 32);
  *(a1 + 32) = v7;
  outlined consume of Path.Storage(v8, v9, v10, v11, v12);
  return a1;
}

uint64_t StyledTextResponder.deinit(__n128 a1)
{
  outlined destroy of weak ViewGraphDelegate?(v1 + 16, a1);
  swift_weakDestroy();
  v2 = *(v1 + 96);
  v9[2] = *(v1 + 80);
  v9[3] = v2;
  v9[4] = *(v1 + 112);
  v10 = *(v1 + 128);
  v3 = *(v1 + 64);
  v9[0] = *(v1 + 48);
  v9[1] = v3;
  outlined destroy of _ViewInputs(v9);

  v4 = *(v1 + 256);
  v11[6] = *(v1 + 240);
  v11[7] = v4;
  v12 = *(v1 + 272);
  v5 = *(v1 + 192);
  v11[2] = *(v1 + 176);
  v11[3] = v5;
  v6 = *(v1 + 224);
  v11[4] = *(v1 + 208);
  v11[5] = v6;
  v7 = *(v1 + 160);
  v11[0] = *(v1 + 144);
  v11[1] = v7;
  outlined destroy of ContentResponderHelper<ShapeStyledResponderData<StyledTextContentView>>(v11);

  swift_unknownObjectRelease();
  return v1;
}

uint64_t StyledTextResponder.__deallocating_deinit(__n128 a1)
{
  StyledTextResponder.deinit(a1);

  return swift_deallocClassInstance();
}

void type metadata accessor for ContentResponderHelper<ShapeStyledResponderData<StyledTextContentView>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ContentResponderHelper<ShapeStyledResponderData<StyledTextContentView>>)
  {
    type metadata accessor for ShapeStyledResponderData<StyledTextContentView>(255, &lazy cache variable for type metadata for ShapeStyledResponderData<StyledTextContentView>, &type metadata for StyledTextContentView, &protocol witness table for StyledTextContentView, type metadata accessor for ShapeStyledResponderData);
    v4 = type metadata accessor for ContentResponderHelper(a1, v2, &protocol witness table for ShapeStyledResponderData<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ContentResponderHelper<ShapeStyledResponderData<StyledTextContentView>>);
    }
  }
}

uint64_t outlined destroy of ContentResponderHelper<ShapeStyledResponderData<StyledTextContentView>>(uint64_t a1)
{
  type metadata accessor for ContentResponderHelper<ShapeStyledResponderData<StyledTextContentView>>(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for ShapeStyledResponderData<StyledTextContentView>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(uint64_t a1, void *a2, uint64_t a3, __n128 a4, __n128 a5, __n128 a6, double a7, double a8)
{
  v9 = v8;
  v51 = a6.n128_f64[0];
  v49 = a5.n128_f64[0];
  v50 = a4.n128_f64[0];
  if (*(v8 + 125))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v48 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v48)
  {
LABEL_25:
    swift_beginAccess();
    *(v8 + 16) = a1;

    swift_beginAccess();
    *(v8 + 32) = v50;
    *(v8 + 40) = v49;
    *(v8 + 48) = v51;
    *(v8 + 56) = a7;
    goto LABEL_8;
  }

LABEL_2:
  v13 = a8 - *(v8 + 64);
  swift_beginAccess();
  v14 = *(v8 + 24);
  v15 = *(v8 + 144);

  v55[0] = v14;
  v55[1] = AGCreateWeakAttribute();
  v56 = 0;
  v57 = v15;
  v16 = *(v8 + 152);
  if (v16)
  {
    v17 = *(v9 + 160);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>(0);
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>, MEMORY[0x1E69E6720]);
    *(&v54 + 1) = v20;
    *&v53 = v16;
    *(&v53 + 1) = v17;
    specialized Dictionary.subscript.setter(&v53, v19);
  }

  swift_beginAccess();
  v21 = *(v9 + 16);
  v22 = *(v9 + 24);
  swift_beginAccess();
  v23 = *(v9 + 32);
  v24 = *(v9 + 40);
  v25 = *(v9 + 48);
  v26 = *(v9 + 56);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v21, v22, v23, v24, v25, v26);

  *(v9 + 144) = 0;
  v27 = *(v9 + 48);
  v53 = *(v9 + 32);
  v54 = v27;
  v28 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  v30 = v29;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
  v32 = v31;

  LOBYTE(v30) = v28(v33, &v53, v55, v30, v32, v13);

  if (v30)
  {
    *(v9 + 24) = v55[0];

    *(v9 + 16) = a1;

    v35.f64[0] = v51;
    v34 = a7;
    v36 = v49;
    v37.f64[0] = v50;
  }

  else
  {

    v38 = *(v9 + 32);
    v39 = *(v9 + 40);
    v40 = *(v9 + 48);
    v41 = *(v9 + 56);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v9 + 16), (v9 + 24), a1, v38, v39, v40, v41, v13, v50, v49, v51, a7);
    swift_endAccess();
    swift_endAccess();
    v36 = v49;
    v37.f64[0] = v50;
    v35.f64[0] = v51;
    v34 = a7;
  }

  v37.f64[1] = v36;
  v35.f64[1] = v34;
  v42 = vaddq_f64(*(v9 + 48), v35);
  *(v9 + 32) = vaddq_f64(*(v9 + 32), v37);
  *(v9 + 48) = v42;
  *(v9 + 80) = a8;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v44 & 1) == 0)
  {
    v45 = 0.0;
    if (*&result > 0.0)
    {
      v46 = log2(*&result * 240.0);
      v45 = exp2(floor(v46 + 0.01)) * 0.00416666667;
    }

    if (v45 >= *(v9 + 72))
    {
      v45 = *(v9 + 72);
    }

    *(v9 + 72) = v45;
    if (v45 >= 0.0166666667)
    {
      *&result = 0.0;
      v47 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
      if ((result & 0x100000000) != 0)
      {
        result = *(v9 + 120);
        v47 = *(v9 + 124);
      }

      else
      {
        v47 = 0;
      }
    }

    *(v9 + 120) = result;
    *(v9 + 124) = v47;
  }

  return result;
}

{
  v9 = v8;
  v51 = a6.n128_f64[0];
  v49 = a5.n128_f64[0];
  v50 = a4.n128_f64[0];
  if (*(v8 + 125))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v48 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v48)
  {
LABEL_25:
    swift_beginAccess();
    *(v8 + 16) = a1;

    swift_beginAccess();
    *(v8 + 32) = v50;
    *(v8 + 40) = v49;
    *(v8 + 48) = v51;
    *(v8 + 56) = a7;
    goto LABEL_8;
  }

LABEL_2:
  v13 = a8 - *(v8 + 64);
  swift_beginAccess();
  v14 = *(v8 + 24);
  v15 = *(v8 + 144);

  v55[0] = v14;
  v55[1] = AGCreateWeakAttribute();
  v56 = 0;
  v57 = v15;
  v16 = *(v8 + 152);
  if (v16)
  {
    v17 = *(v9 + 160);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>(0);
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>, MEMORY[0x1E69E6720]);
    *(&v54 + 1) = v20;
    *&v53 = v16;
    *(&v53 + 1) = v17;
    specialized Dictionary.subscript.setter(&v53, v19);
  }

  swift_beginAccess();
  v21 = *(v9 + 16);
  v22 = *(v9 + 24);
  swift_beginAccess();
  v23 = *(v9 + 32);
  v24 = *(v9 + 40);
  v25 = *(v9 + 48);
  v26 = *(v9 + 56);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v21, v22, v23, v24, v25, v26);

  *(v9 + 144) = 0;
  v27 = *(v9 + 48);
  v53 = *(v9 + 32);
  v54 = v27;
  v28 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>(0);
  v30 = v29;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>, protocol conformance descriptor for AnimatablePair<A, B>);
  v32 = v31;

  LOBYTE(v30) = v28(v33, &v53, v55, v30, v32, v13);

  if (v30)
  {
    *(v9 + 24) = v55[0];

    *(v9 + 16) = a1;

    v35.f64[0] = v51;
    v34 = a7;
    v36 = v49;
    v37.f64[0] = v50;
  }

  else
  {

    v38 = *(v9 + 32);
    v39 = *(v9 + 40);
    v40 = *(v9 + 48);
    v41 = *(v9 + 56);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v9 + 16), (v9 + 24), a1, v38, v39, v40, v41, v13, v50, v49, v51, a7);
    swift_endAccess();
    swift_endAccess();
    v36 = v49;
    v37.f64[0] = v50;
    v35.f64[0] = v51;
    v34 = a7;
  }

  v37.f64[1] = v36;
  v35.f64[1] = v34;
  v42 = vaddq_f64(*(v9 + 48), v35);
  *(v9 + 32) = vaddq_f64(*(v9 + 32), v37);
  *(v9 + 48) = v42;
  *(v9 + 80) = a8;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v44 & 1) == 0)
  {
    v45 = 0.0;
    if (*&result > 0.0)
    {
      v46 = log2(*&result * 240.0);
      v45 = exp2(floor(v46 + 0.01)) * 0.00416666667;
    }

    if (v45 >= *(v9 + 72))
    {
      v45 = *(v9 + 72);
    }

    *(v9 + 72) = v45;
    if (v45 >= 0.0166666667)
    {
      *&result = 0.0;
      v47 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
      if ((result & 0x100000000) != 0)
      {
        result = *(v9 + 120);
        v47 = *(v9 + 124);
      }

      else
      {
        v47 = 0;
      }
    }

    *(v9 + 120) = result;
    *(v9 + 124) = v47;
  }

  return result;
}

{
  v9 = v8;
  v49 = a6.n128_f64[0];
  v47 = a5.n128_f64[0];
  v48 = a4.n128_f64[0];
  if (*(v8 + 125))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v46 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v46)
  {
LABEL_25:
    swift_beginAccess();
    *(v8 + 16) = a1;

    swift_beginAccess();
    *(v8 + 32) = v48;
    *(v8 + 40) = v47;
    *(v8 + 48) = v49;
    *(v8 + 56) = a7;
    goto LABEL_8;
  }

LABEL_2:
  v13 = a8 - *(v8 + 64);
  swift_beginAccess();
  v14 = *(v8 + 24);
  v15 = *(v8 + 144);

  v53[0] = v14;
  v53[1] = AGCreateWeakAttribute();
  v54 = 0;
  v55 = v15;
  v16 = *(v8 + 152);
  if (v16)
  {
    v17 = *(v8 + 160);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Edge.Corner.Style.AnimatableData>, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v19 = v18;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Edge.Corner.Style.AnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Edge.Corner.Style.AnimatableData>, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData);
    *(&v52 + 1) = v20;
    *&v51 = v16;
    *(&v51 + 1) = v17;
    specialized Dictionary.subscript.setter(&v51, v19);
  }

  swift_beginAccess();
  v21 = *(v8 + 16);
  v22 = *(v8 + 24);
  swift_beginAccess();
  v23 = *(v8 + 32);
  v24 = *(v8 + 40);
  v25 = *(v8 + 48);
  v26 = *(v8 + 56);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v21, v22, v23, v24, v25, v26);

  *(v8 + 144) = 0;
  v27 = *(v8 + 48);
  v51 = *(v8 + 32);
  v52 = v27;
  v28 = *(*a1 + 136);
  lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData();
  v30 = v29;

  LOBYTE(v30) = v28(v31, &v51, v53, &type metadata for Edge.Corner.Style.AnimatableData, v30, v13);

  if (v30)
  {
    *(v9 + 24) = v53[0];

    *(v9 + 16) = a1;

    v33.f64[0] = v49;
    v32 = a7;
    v34 = v47;
    v35.f64[0] = v48;
  }

  else
  {

    v36 = *(v9 + 32);
    v37 = *(v9 + 40);
    v38 = *(v9 + 48);
    v39 = *(v9 + 56);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v9 + 16), (v9 + 24), a1, v36, v37, v38, v39, v13, v48, v47, v49, a7);
    swift_endAccess();
    swift_endAccess();
    v34 = v47;
    v35.f64[0] = v48;
    v33.f64[0] = v49;
    v32 = a7;
  }

  v35.f64[1] = v34;
  v33.f64[1] = v32;
  v40 = vaddq_f64(*(v9 + 48), v33);
  *(v9 + 32) = vaddq_f64(*(v9 + 32), v35);
  *(v9 + 48) = v40;
  *(v9 + 80) = a8;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v42 & 1) == 0)
  {
    v43 = 0.0;
    if (*&result > 0.0)
    {
      v44 = log2(*&result * 240.0);
      v43 = exp2(floor(v44 + 0.01)) * 0.00416666667;
    }

    if (v43 >= *(v9 + 72))
    {
      v43 = *(v9 + 72);
    }

    *(v9 + 72) = v43;
    if (v43 >= 0.0166666667)
    {
      *&result = 0.0;
      v45 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
      if ((result & 0x100000000) != 0)
      {
        result = *(v9 + 120);
        v45 = *(v9 + 124);
      }

      else
      {
        v45 = 0;
      }
    }

    *(v9 + 120) = result;
    *(v9 + 124) = v45;
  }

  return result;
}

uint64_t specialized AnimatorState.forkListeners(animation:state:interval:)(uint64_t result, uint64_t a2, double a3, double a4, double a5, double a6)
{
  if ((*(v6 + 144) & 1) == 0)
  {
    v12 = result;
    swift_beginAccess();
    v13 = *(v6 + 136);
    if (v13 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v14 = *(v6 + 152);
    v15 = *(v6 + 160);
    v16 = *(v6 + 136);
    *&v26 = v12;
    *(&v26 + 1) = a2;
    *&v27 = a3;
    *(&v27 + 1) = a4;
    *&v28 = a5;
    *(&v28 + 1) = a6;
    *&v29 = v14;
    *(&v29 + 1) = v15;
    v30 = v16;
    swift_beginAccess();
    v17 = *(v6 + 168);

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v26, v25, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 168) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
      *(v6 + 168) = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v17);
    }

    v17[2] = v20 + 1;
    v21 = &v17[9 * v20];
    *(v21 + 2) = v26;
    v22 = v27;
    v23 = v28;
    v24 = v29;
    v21[12] = v30;
    *(v21 + 4) = v23;
    *(v21 + 5) = v24;
    *(v21 + 3) = v22;
    *(v6 + 168) = v17;
    swift_endAccess();
    *(v6 + 136) = MEMORY[0x1E69E7CC0];

    v25[0] = v12;
    v25[1] = a2;
    *&v25[2] = a3;
    *&v25[3] = a4;
    *&v25[4] = a5;
    *&v25[5] = a6;
    v25[6] = v14;
    v25[7] = v15;
    v25[8] = v16;
    return outlined destroy of Slice<IndexSet>(v25, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork);
  }

  return result;
}

{
  if ((*(v6 + 144) & 1) == 0)
  {
    v12 = result;
    swift_beginAccess();
    v13 = *(v6 + 136);
    if (v13 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v14 = *(v6 + 152);
    v15 = *(v6 + 160);
    v16 = *(v6 + 136);
    v18[0] = v12;
    v18[1] = a2;
    *&v18[2] = a3;
    *&v18[3] = a4;
    *&v18[4] = a5;
    *&v18[5] = a6;
    v18[6] = v14;
    v18[7] = v15;
    v18[8] = v16;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v18, v17, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork);
    specialized Array.append(_:)(v18);
    swift_endAccess();
    *(v6 + 136) = MEMORY[0x1E69E7CC0];

    v17[0] = v12;
    v17[1] = a2;
    *&v17[2] = a3;
    *&v17[3] = a4;
    *&v17[4] = a5;
    *&v17[5] = a6;
    v17[6] = v14;
    v17[7] = v15;
    v17[8] = v16;
    return outlined destroy of Slice<IndexSet>(v17, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork);
  }

  return result;
}

{
  if ((*(v6 + 144) & 1) == 0)
  {
    v12 = result;
    swift_beginAccess();
    v13 = *(v6 + 136);
    if (v13 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v14 = *(v6 + 152);
    v15 = *(v6 + 160);
    v16 = *(v6 + 136);
    v18[0] = v12;
    v18[1] = a2;
    *&v18[2] = a3;
    *&v18[3] = a4;
    *&v18[4] = a5;
    *&v18[5] = a6;
    v18[6] = v14;
    v18[7] = v15;
    v18[8] = v16;
    swift_beginAccess();

    outlined init with copy of AnimatorState<Edge.Corner.Style.AnimatableData>.Fork(v18, v17);
    specialized Array.append(_:)(v18);
    swift_endAccess();
    *(v6 + 136) = MEMORY[0x1E69E7CC0];

    v17[0] = v12;
    v17[1] = a2;
    *&v17[2] = a3;
    *&v17[3] = a4;
    *&v17[4] = a5;
    *&v17[5] = a6;
    v17[6] = v14;
    v17[7] = v15;
    v17[8] = v16;
    return outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v17, &lazy cache variable for type metadata for AnimatorState<Edge.Corner.Style.AnimatableData>.Fork, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData, type metadata accessor for AnimatorState.Fork);
  }

  return result;
}

void specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, unint64_t *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v22 = *a1;
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    v24 = *(v23 + 16);

    v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v26 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26);
    }

    v27 = a4 + a9;
    v28 = a5 + a10;
    v29 = a6 + a11;
    v31 = v26[2];
    v30 = v26[3];
    if (v31 >= v30 >> 1)
    {
      v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v26);
    }

    v26[2] = v31 + 1;
    v32 = &v26[5 * v31];
    v32[4] = v27;
    v32[5] = v28;
    v32[6] = v29;
    v32[7] = a7 + a12;
    *(v32 + 8) = v25;
    type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>(0);
    v58 = v33;
    v57[0] = v26;
    specialized Dictionary.subscript.setter(v57, v33);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
    }

    v35 = *(v24 + 2);
    v34 = *(v24 + 3);
    if (v35 >= v34 >> 1)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v24);
    }

    *(v24 + 2) = v35 + 1;
    v36 = &v24[16 * v35];
    *(v36 + 4) = a3;
    *(v36 + 5) = a8;
    v37 = swift_allocObject();
    *(v37 + 16) = v24;
    *a1 = v37;
  }

  else
  {
    v59 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v38 = *a2;

    v39 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(v59, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1, v39);
    }

    v41 = v39[2];
    v40 = v39[3];
    if (v41 >= v40 >> 1)
    {
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v39);
    }

    v39[2] = v41 + 1;
    v42 = &v39[5 * v41];
    v42[4] = a4;
    v42[5] = a5;
    v42[6] = a6;
    v42[7] = a7;
    *(v42 + 8) = v38;
    type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>(0);
    v44 = v43;
    v58 = v43;
    v57[0] = v39;
    specialized Dictionary.subscript.setter(v57, v43);
    v45 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v46 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(v59, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46[2] + 1, 1, v46);
    }

    v47 = a4 + a9;
    v48 = a5 + a10;
    v49 = a6 + a11;
    v51 = v46[2];
    v50 = v46[3];
    if (v51 >= v50 >> 1)
    {
      v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v46);
    }

    v46[2] = v51 + 1;
    v52 = &v46[5 * v51];
    v52[4] = v47;
    v52[5] = v48;
    v52[6] = v49;
    v52[7] = a7 + a12;
    *(v52 + 8) = v45;
    v58 = v44;
    v57[0] = v46;
    specialized Dictionary.subscript.setter(v57, v44);
    v53 = v59;

    *a2 = v53;

    v54 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v22, a3, a8);
    v55 = swift_allocObject();
    *(v55 + 16) = v54;
    *a1 = v55;
  }
}

{
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v22 == &type metadata for Edge.Corner.Style.AnimatableData)
  {

    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  }

  else
  {
    v23 = *a1;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
    v24 = swift_dynamicCastClass();
    if (v24)
    {
      v25 = *(v24 + 16);

      v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v27 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(*a2, &lazy cache variable for type metadata for CombinedAnimationState<Edge.Corner.Style.AnimatableData>, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27[2] + 1, 1, v27);
      }

      v29 = v27[2];
      v28 = v27[3];
      if (v29 >= v28 >> 1)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v27);
      }

      v27[2] = v29 + 1;
      v30 = &v27[5 * v29];
      v30[4] = a4 + a9;
      v30[5] = a5 + a10;
      v30[6] = a6 + a11;
      v30[7] = a7 + a12;
      *(v30 + 8) = v26;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<Edge.Corner.Style.AnimatableData>, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData, type metadata accessor for CombinedAnimationState);
      v55 = v31;
      v54[0] = v27;
      specialized Dictionary.subscript.setter(v54, v31);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
      }

      v33 = *(v25 + 2);
      v32 = *(v25 + 3);
      if (v33 >= v32 >> 1)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v25);
      }

      *(v25 + 2) = v33 + 1;
      v34 = &v25[16 * v33];
      *(v34 + 4) = a3;
      *(v34 + 5) = a8;
      v35 = swift_allocObject();
      *(v35 + 16) = v25;
      *a1 = v35;
    }

    else
    {
      v56 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v36 = *a2;

      v37 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v56, &lazy cache variable for type metadata for CombinedAnimationState<Edge.Corner.Style.AnimatableData>, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37[2] + 1, 1, v37);
      }

      v39 = v37[2];
      v38 = v37[3];
      if (v39 >= v38 >> 1)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v37);
      }

      v37[2] = v39 + 1;
      v40 = &v37[5 * v39];
      v40[4] = a4;
      v40[5] = a5;
      v40[6] = a6;
      v40[7] = a7;
      *(v40 + 8) = v36;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<Edge.Corner.Style.AnimatableData>, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData, type metadata accessor for CombinedAnimationState);
      v42 = v41;
      v55 = v41;
      v54[0] = v37;
      specialized Dictionary.subscript.setter(v54, v41);
      v43 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v44 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v56, &lazy cache variable for type metadata for CombinedAnimationState<Edge.Corner.Style.AnimatableData>, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44[2] + 1, 1, v44);
      }

      v46 = v44[2];
      v45 = v44[3];
      v47 = v46 + 1;
      if (v46 >= v45 >> 1)
      {
        v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v44);
        v47 = v46 + 1;
        v44 = v52;
      }

      v44[2] = v47;
      v48 = &v44[5 * v46];
      v48[4] = a4 + a9;
      v48[5] = a5 + a10;
      v48[6] = a6 + a11;
      v48[7] = a7 + a12;
      *(v48 + 8) = v43;
      v55 = v42;
      v54[0] = v44;
      specialized Dictionary.subscript.setter(v54, v42);
      v49 = v56;

      *a2 = v49;

      v50 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v23, a3, a8);
      v51 = swift_allocObject();
      *(v51 + 16) = v50;
      *a1 = v51;
    }
  }
}

void lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation()
{
  if (!lazy protocol witness table cache variable for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation)
  {
    swift_getWitnessTable(protocol conformance descriptor for DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation);
  }
}

{
  if (!lazy protocol witness table cache variable for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation)
  {
    swift_getWitnessTable(protocol conformance descriptor for DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation);
  }
}

{
  if (!lazy protocol witness table cache variable for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation)
  {
    swift_getWitnessTable(protocol conformance descriptor for DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation);
  }
}

uint64_t _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(uint64_t a1, uint64_t (*a2)(void))
{
  if (!*(a1 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = a2(0);
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
  if ((v5 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v4, v7);
  outlined init with take of Any(v7, v8);
  outlined init with take of Any(v8, v7);
  swift_dynamicCast();
  return v9;
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Entry(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Entry)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(255);
    v3 = v2;
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
    v6 = type metadata accessor for CombinedAnimationState.Entry(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Entry);
    }
  }
}

uint64_t type metadata completion function for CombinedAnimationState.Entry(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(255);
    v3 = v2;
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
    v6 = type metadata accessor for CombinedAnimationState(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>);
    }
  }
}

void *specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(uint64_t a1, uint64_t a2, double a3)
{
  type metadata accessor for AnimationBox<DefaultCombiningAnimation>(0);
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = *(v6 + 16);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
    }

    v9 = *(v7 + 16);
    v8 = *(v7 + 24);
    if (v9 >= v8 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 16) = v9 + 1;
    v10 = v7 + 16 * v9;
    *(v10 + 32) = a2;
    v11 = (v10 + 40);
  }

  else
  {
    type metadata accessor for _ContiguousArrayStorage<DefaultCombiningAnimation.Entry>();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_18DDAB4C0;
    *(v7 + 32) = a1;
    *(v7 + 40) = 0;
    *(v7 + 48) = a2;
    v11 = (v7 + 56);
  }

  *v11 = a3;
  return v7;
}

void type metadata accessor for AnimationBox<DefaultCombiningAnimation>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>)
  {
    lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation();
    v4 = type metadata accessor for AnimationBox(a1, &type metadata for DefaultCombiningAnimation, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<DefaultCombiningAnimation.Entry>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<DefaultCombiningAnimation.Entry>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DefaultCombiningAnimation.Entry>);
    }
  }
}

void DefaultCombiningAnimation.animate<A>(value:time:context:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, double a6@<D0>)
{
  v120 = type metadata accessor for Optional();
  v12 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v14 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v98 - v16;
  v114 = a4;
  v19 = type metadata accessor for CombinedAnimationState.Entry(0, a3, a4, v18);
  v111 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v118 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v116 = &v98 - v22;
  MEMORY[0x1EEE9AC00](*(a3 - 8));
  v106 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v117 = &v98 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v98 - v28;
  if (a3 == MEMORY[0x1E69E63B0])
  {
    specialized DefaultCombiningAnimation.animate<A>(value:time:context:)(a1, a2, a6);
    *a5 = v90;
    *(a5 + 8) = v91 & 1;
    return;
  }

  v101 = v27;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v31 == a3)
  {
    specialized DefaultCombiningAnimation.animate<A>(value:time:context:)(a1, a2, &v124, a6);
    v92 = v125;
    *a5 = v124;
    *(a5 + 16) = v92;
    *(a5 + 32) = v126;
    return;
  }

  v122 = v12;
  v119 = v29;
  v107 = v14;
  v32 = a3;
  v33 = type metadata accessor for AnimationState(0, a3, v114, v30);
  AnimationState.combinedState.getter(v33, v34, v35, v36);
  v37 = MEMORY[0x193ABF270]();

  if (v37 == *(a2 + 16))
  {
    v38 = *(v114 + 8);
    v113 = v32;
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    if (v37)
    {
      v109 = v38;
      v115 = v17;
      v99 = a5;
      v42 = 0;
      v43 = a2;
      v44 = (v111 + 8);
      v110 = (v101 + 16);
      v103 = (v122 + 2);
      v105 = (v101 + 48);
      v100 = (v101 + 32);
      v112 = (v101 + 8);
      v108 = (v122 + 1);
      v45 = (v43 + 40);
      v104 = (v111 + 8);
      while (1)
      {
        v121 = v37;
        v122 = v45;
        AnimationState.combinedState.getter(v33, v39, v40, v41);
        v54 = v116;
        Array.subscript.getter();

        v55 = *&v54[*(v19 + 36)];
        v56 = *v44;

        v56(v54, v19);
        v60 = v44;
        if (v55)
        {
          v61 = *(a1 + 8);
          v62 = *(a1 + 17);
          LOBYTE(v125) = *(a1 + 16);
          BYTE1(v125) = v62;
          *&v124 = v55;
          *(&v124 + 1) = v61;
          v63 = a1;
          v64 = v33;
          v65 = v63;
          AnimationState.combinedState.getter(v33, v57, v58, v59);
          v66 = v118;
          Array.subscript.getter();

          v67 = v117;
          v68 = v113;
          (*v110)(v117, v66, v113);
          v56(v66, v19);
          dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
          v52 = v122;
          v69 = *(v122 - 1);
          v70 = a6 - *v122;

          v71 = v115;
          Animation.animate<A>(value:time:context:)(v67, &v124, v69, v68, v114, v115, v70);

          v72 = v107;
          (*v103)(v107, v71, v120);
          v102 = *v105;
          if (v102(v72, 1, v68) == 1)
          {
            (*v108)(v72, v120);
            v33 = v64;
            v73 = v64;
            a1 = v65;
            v123 = AnimationState.combinedState.getter(v73, v74, v75, v76);
            type metadata accessor for Array();
            Array._makeMutableAndUnique()();
            v77 = v123;
            Array._checkSubscript_mutating(_:)(v42);
            *(v77 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v42 + *(v19 + 36)) = 0;

            _ViewInputs.base.modify();
            specialized AnimationState.combinedState.setter(v123, v33, v78, v79);

            v80 = v117;
            dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
            v46 = *v112;
            (*v112)(v80, v68);
          }

          else
          {
            v81 = v106;
            (*v100)();
            v82 = v124;

            v33 = v64;
            v83 = v64;
            a1 = v65;
            v123 = AnimationState.combinedState.getter(v83, v84, v85, v86);
            type metadata accessor for Array();
            Array._makeMutableAndUnique()();
            v87 = v123;
            Array._checkSubscript_mutating(_:)(v42);
            *(v87 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v42 + *(v19 + 36)) = v82;
            v52 = v122;

            _ViewInputs.base.modify();
            specialized AnimationState.combinedState.setter(v123, v33, v88, v89);

            dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
            v46 = *v112;
            (*v112)(v81, v68);
            v46(v117, v68);
          }

          v53 = v121;
          v44 = v104;
          if (v121 == 1)
          {
            *(a1 + 17) = BYTE1(v125);
            v95 = v115;
            v96 = v113;
            if (v102(v115, 1, v113) == 1)
            {
              v46(v119, v96);
              (*v108)(v95, v120);
              (*(v101 + 56))(v99, 1, 1, v96);
            }

            else
            {
              (*v108)(v95, v120);
              v97 = v99;
              (*(v101 + 32))(v99, v119, v96);
              (*(v101 + 56))(v97, 0, 1, v96);
            }

            return;
          }

          (*v108)(v115, v120);
        }

        else
        {
          AnimationState.combinedState.getter(v33, v57, v58, v59);
          Array.subscript.getter();

          v46 = *v112;
          v47 = v119;
          v48 = a1;
          v49 = v33;
          v50 = v113;
          (*v112)(v119, v113);
          v51 = v118;
          (*v110)(v47, v118, v50);
          v56(v51, v19);
          v33 = v49;
          a1 = v48;
          v44 = v60;
          v53 = v121;
          v52 = v122;
        }

        v45 = v52 + 2;
        ++v42;
        v37 = v53 - 1;
        if (!v37)
        {
          a5 = v99;
          goto LABEL_21;
        }
      }
    }

    v46 = *(v101 + 8);
LABEL_21:
    v94 = v113;
    v46(v119, v113);
    (*(v101 + 56))(a5, 1, 1, v94);
  }

  else
  {
    v93 = *(v101 + 56);

    v93(a5, 1, 1, v32);
  }
}

void specialized DefaultCombiningAnimation.animate<A>(value:time:context:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = a1;
  v8 = *(_s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVyAHy12CoreGraphics7CGFloatVAKGALG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAMGTt0B5(*a1) + 16);

  v9 = *(a2 + 16);
  if (v8 != v9 || v9 == 0)
  {
    v11 = 0uLL;
    v12 = 1;
    v13 = 0uLL;
LABEL_48:
    *a3 = v11;
    *(a3 + 16) = v13;
    *(a3 + 32) = v12;
  }

  else
  {
    v51 = a3;
    type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>(0);
    v15 = v14;
    v16 = 0;
    v17 = (a2 + 40);
    v60 = 0u;
    v61 = 0u;
    v18 = 8;
    v52 = v5;
    while (1)
    {
      v19 = *v5;
      if (*(*v5 + 16) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15), (v21 & 1) != 0))
      {
        outlined init with copy of Any(*(v19 + 56) + 32 * v20, v69);
        outlined init with take of Any(v69, &v62);
        outlined init with take of Any(&v62, v69);
        swift_dynamicCast();
        v22 = v66[0];
      }

      else
      {
        v22 = MEMORY[0x1E69E7CC0];
      }

      if (v16 >= *(v22 + 16))
      {
        break;
      }

      v23 = *(v22 + v18 * 8);

      if (v23)
      {
        v25 = *v5;
        v24 = v5[1];
        v26 = *(v5 + 17);
        v67 = *(v5 + 16);
        v68 = v26;
        v66[0] = v23;
        v66[1] = v24;
        if (*(v25 + 16) && (v27 = specialized __RawDictionaryStorage.find<A>(_:)(v15), (v28 & 1) != 0))
        {
          outlined init with copy of Any(*(v25 + 56) + 32 * v27, v69);
          outlined init with take of Any(v69, &v62);
          outlined init with take of Any(&v62, v69);
          swift_dynamicCast();
          v29 = v65;
        }

        else
        {
          v29 = MEMORY[0x1E69E7CC0];
        }

        if (v16 >= v29[2])
        {
          goto LABEL_50;
        }

        v59 = v8;
        v30 = v15;
        v55 = *&v29[v18 - 2];
        v57 = *&v29[v18 - 4];

        v31 = *(v17 - 1);
        v32 = a4 - *v17;
        v53 = vsubq_f64(v57, v61);
        v54 = vsubq_f64(v55, v60);
        v69[0] = v53;
        v69[1] = v54;
        v33 = *(*v31 + 120);
        type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
        v35 = v34;
        _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_0(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
        v37 = v36;

        v33(&v62, v69, v66, v35, v37, v32);

        v56 = v63;
        v58 = v62;
        v38 = v64;
        if (v64)
        {
          v15 = v30;
          if (*(v25 + 16) && (v39 = specialized __RawDictionaryStorage.find<A>(_:)(v30), (v40 & 1) != 0))
          {
            outlined init with copy of Any(*(v25 + 56) + 32 * v39, v69);
            outlined init with take of Any(v69, &v62);
            outlined init with take of Any(&v62, v69);
            swift_dynamicCast();
            v41 = v65;
          }

          else
          {
            v41 = MEMORY[0x1E69E7CC0];
          }

          v5 = v52;
          v8 = v59;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = specialized _ArrayBuffer._consumeAndCreateNew()(v41);
          }

          if (v16 >= v41[2])
          {
            goto LABEL_53;
          }

          v41[v18] = 0;

          *&v63.f64[1] = v15;
          *&v62.f64[0] = v41;
          specialized Dictionary.subscript.setter(&v62, v15);
          v50 = v53;
          v49 = v54;
        }

        else
        {
          v45 = v66[0];
          v15 = v30;
          if (*(v25 + 16) && (v46 = specialized __RawDictionaryStorage.find<A>(_:)(v30), (v47 & 1) != 0))
          {
            outlined init with copy of Any(*(v25 + 56) + 32 * v46, v69);
            outlined init with take of Any(v69, &v62);
            outlined init with take of Any(&v62, v69);

            swift_dynamicCast();
            v48 = v65;
          }

          else
          {

            v48 = MEMORY[0x1E69E7CC0];
          }

          v5 = v52;
          v8 = v59;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = specialized _ArrayBuffer._consumeAndCreateNew()(v48);
          }

          if (v16 >= v48[2])
          {
            goto LABEL_52;
          }

          v48[v18] = v45;

          *&v63.f64[1] = v15;
          *&v62.f64[0] = v48;
          specialized Dictionary.subscript.setter(&v62, v15);
          v49 = v56;
          v50 = v58;
        }

        v60 = vaddq_f64(v60, v49);
        v61 = vaddq_f64(v61, v50);
        if (v8 == 1)
        {
          *(v5 + 17) = v68;
          if (v38)
          {

            v12 = 1;
            a3 = v51;
            v13 = v56;
            v11 = v58;
            goto LABEL_48;
          }

          v12 = 0;
          v13 = v60;
          v11 = v61;
          goto LABEL_47;
        }
      }

      else
      {
        if (*(v19 + 16) && (v42 = specialized __RawDictionaryStorage.find<A>(_:)(v15), (v43 & 1) != 0))
        {
          outlined init with copy of Any(*(v19 + 56) + 32 * v42, v69);
          outlined init with take of Any(v69, &v62);
          outlined init with take of Any(&v62, v69);
          swift_dynamicCast();
          v44 = v66[0];
        }

        else
        {
          v44 = MEMORY[0x1E69E7CC0];
        }

        if (v16 >= *(v44 + 16))
        {
          goto LABEL_51;
        }

        v60 = *(v44 + v18 * 8 - 16);
        v61 = *(v44 + v18 * 8 - 32);
      }

      v18 += 5;
      v17 += 2;
      ++v16;
      if (!--v8)
      {
        v11 = 0uLL;
        v12 = 1;
        v13 = 0uLL;
LABEL_47:
        a3 = v51;
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
  }
}

uint64_t Text.typesettingLanguageAwareLineHeightRatio(_:isEnabled:)(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, char a5, char *a6)
{
  if (a2)
  {
    v10 = *(a1 + 8);
    v11 = *a1;
    type metadata accessor for LanguageAwareLineHeightRatioTextModifier();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v10;
    outlined copy of Text.Storage(a3, a4, a5 & 1);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a6 + 2) + 1, 1, a6);
    }

    v14 = *(a6 + 2);
    v13 = *(a6 + 3);
    if (v14 >= v13 >> 1)
    {
      a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, a6);
    }

    *(a6 + 2) = v14 + 1;
    v15 = &a6[16 * v14];
    *(v15 + 4) = v12;
    v15[40] = -64;
  }

  else
  {
    outlined copy of Text.Storage(a3, a4, a5 & 1);
  }

  return a3;
}

BOOL specialized static Image.RenderingModeProvider.== infix(_:_:)(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a1[8];
  v3 = *(a2 + 8);
  if (*a1 != *a2 && ((*(**a1 + 96))() & 1) == 0)
  {
    return 0;
  }

  if (v2 != 2)
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 2;
}

uint64_t LanguageAwareLineHeightRatioTextModifier.isEqual(to:)(uint64_t a1)
{
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = *(result + 16);
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    if (*(result + 24) == 1)
    {
      if (v3 == 0.0)
      {
        if (v4 != 0.0)
        {
          v5 = 0;
        }

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      else if (*&v3 == 1)
      {
        if (*&v4 != 1)
        {
          v5 = 0;
        }

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (*&v4 <= 1uLL)
        {
          v5 = 0;
        }

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v3 != v4)
      {
        v5 = 1;
      }

      if (v5)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyTransformModifier<TypesettingConfiguration>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t Text.textScale(_:isEnabled:)(char *a1, char a2, uint64_t a3, uint64_t a4, char a5, char *a6)
{
  v11 = *a1;
  type metadata accessor for TextScaleModifier();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 17) = v11;
  outlined copy of Text.Storage(a3, a4, a5 & 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a6 + 2) + 1, 1, a6);
  }

  v14 = *(a6 + 2);
  v13 = *(a6 + 3);
  if (v14 >= v13 >> 1)
  {
    a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, a6);
  }

  *(a6 + 2) = v14 + 1;
  v15 = &a6[16 * v14];
  *(v15 + 4) = v12;
  v15[40] = -64;
  return a3;
}

uint64_t assignWithCopy for Text.Sizing(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t ConcatenatedTextStorage.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);

  outlined consume of Text.Storage(v1, v2, v3);

  outlined consume of Text.Storage(*(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocClassInstance();
}

void lazy protocol witness table accessor for type GloballySimultaneousGestureCombiner and conformance GloballySimultaneousGestureCombiner()
{
  if (!lazy protocol witness table cache variable for type GloballySimultaneousGestureCombiner and conformance GloballySimultaneousGestureCombiner)
  {
    swift_getWitnessTable(protocol conformance descriptor for GloballySimultaneousGestureCombiner, &type metadata for GloballySimultaneousGestureCombiner, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GloballySimultaneousGestureCombiner and conformance GloballySimultaneousGestureCombiner);
  }
}

uint64_t LanguageAwareLineHeightRatioTextModifier.modify(style:environment:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = a1 + *(type metadata accessor for Text.Style(0) + 84);
  result = type metadata accessor for TypesettingConfiguration(0);
  v6 = v4 + *(result + 20);
  *v6 = v2;
  *(v6 + 8) = v3;
  return result;
}

void type metadata accessor for AnyDynamicFontModifier<LanguageAwareLineHeightRatioFontModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for AnyDynamicFontModifier(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void protocol witness for FontModifier.modify(descriptor:in:) in conformance LanguageAwareLineHeightRatioFontModifier(const __CTFontDescriptor **a1)
{
  v3 = *v1;
  type metadata accessor for _EnvironmentKeyTransformModifier<TypesettingConfiguration>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(CFStringRef, Any)>, type metadata accessor for (CFStringRef, Any), MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18DDA6EB0;
  v5 = *MEMORY[0x1E69657E0];
  *(inited + 32) = *MEMORY[0x1E69657E0];
  *(inited + 64) = MEMORY[0x1E69E63B0];
  *(inited + 40) = v3;
  v6 = v5;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, Any)(inited + 32);
  v7 = *a1;
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v7, isa);

  *a1 = CopyWithAttributes;
}

uint64_t outlined destroy of (CFStringRef, Any)(uint64_t a1)
{
  type metadata accessor for (CFStringRef, Any)(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (CFStringRef, Any)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (CFStringRef, Any))
  {
    type metadata accessor for CFStringRef(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (CFStringRef, Any));
    }
  }
}

uint64_t closure #1 in applyNode #1 (start:style:node:transform:section:) in _LazyLayout_Subviews.apply(from:style:to:)(void *a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, unint64_t a6, uint64_t *a7, unint64_t a8, unint64_t a9)
{
  v14 = *a2;
  v50 = *a4;
  LODWORD(v51) = *(a4 + 8);
  v15 = outlined init with copy of _ViewList_Node(a3, &v72);
  if (v77 > 2u)
  {
    LODWORD(v52) = v72.n128_u32[0];
    *(&v52 + 1) = v72.n128_u64[1];
    *&v53[0] = v73;
    BYTE8(v53[0]) = BYTE8(v73);
    v55 = v14;
    *v69 = v50;
    v69[8] = v51;
    MEMORY[0x1EEE9AC00](v15);
    v40 = a5;
    v41 = a6;
    v42 = a7;
    v43 = a8;
    v26 = _ViewList_Section.applyNodes(from:style:transform:to:)(a1, &v55, v69, closure #2 in applyNode #1 (start:style:node:transform:section:) in _LazyLayout_Subviews.apply(from:style:to:)partial apply, v39);

    return v26 & 1;
  }

  if (v77 == 1)
  {
    *&v69[32] = v74;
    v70 = v75;
    v71[0] = *v76;
    *(v71 + 13) = *&v76[13];
    *v69 = v72;
    *&v69[16] = v73;
    v16 = v72.n128_i64[1];
    if (v14)
    {
      v16 = v72.n128_u64[1] * (v14 >> 1);
      if ((v72.n128_i64[1] * (v14 >> 1)) >> 64 != v16 >> 63)
      {
        goto LABEL_35;
      }
    }

    v17 = *a1 - v16;
    if (*a1 >= v16)
    {
      outlined destroy of _ViewList_Sublist(v69);
      *a1 = v17;
    }

    else
    {
      v47 = a5;
      v48 = a7;
      v49 = a8;
      *&v52 = v50;
      BYTE8(v52) = v51;
      _ViewList_TemporarySublistTransform.apply(sublist:)(v69, v72);
      v18 = *v69;
      if (*&v69[8] < *v69)
      {
        goto LABEL_36;
      }

      swift_beginAccess();
      swift_beginAccess();
      if (v18 != *(&v18 + 1))
      {
        v19 = 0x80000000;
        if (v18 > 0x80000000)
        {
          v19 = v18;
        }

        v50 = (a9 & 0x1000000000000) >> 48;
        v51 = v19;
        v45 = HIDWORD(a9) & 1;
        v46 = ((a9 & 0x10000000000) >> 40);
        v20 = v18;
        do
        {
          v67[0] = 0;
          if (v18 < 0xFFFFFFFF80000000)
          {
            goto LABEL_33;
          }

          if (v51 == v20)
          {
            goto LABEL_34;
          }

          v21 = *&v69[20];
          v22 = *&v69[24];
          outlined init with copy of _ViewList_SubgraphElements(&v69[32], &v55);
          v57 = v20;
          v58 = v21;
          v59 = v22;
          v60 = *&v71[1];
          v61 = DWORD2(v71[1]);
          v62 = BYTE12(v71[1]);
          v63 = a9;
          v64 = v45;
          v65 = v46;
          v66 = v50;
          v23 = *v47;
          v24 = *(v47 + 2);
          outlined init with copy of _LazyLayout_Subview.Data(&v55, v53);
          v25 = *(a6 + 16);
          *&v52 = v23;
          DWORD2(v52) = v24;
          v54 = v25;

          (v48)(&v52, v67);
          outlined destroy of _LazyLayout_Subview(&v52);
          outlined destroy of _LazyLayout_Subview.Data(&v55);
          ++*(a6 + 16);
          if (v67[0] == 1)
          {
            outlined destroy of _ViewList_Sublist(v69);
            v26 = 0;
            return v26 & 1;
          }
        }

        while (*(&v18 + 1) != ++v20);
      }

      outlined destroy of _ViewList_Sublist(v69);
    }

    v26 = 1;
    return v26 & 1;
  }

  v49 = v14;
  if (v77 != 2)
  {
    goto LABEL_37;
  }

  v46 = &v44;
  MEMORY[0x1EEE9AC00](v15);
  v27 = 0;
  v39[0] = a5;
  v39[1] = a6;
  v40 = a7;
  v41 = a8;
  LODWORD(v42) = a9;
  BYTE4(v42) = BYTE4(a9) & 1;
  BYTE5(v42) = v28;
  BYTE6(v42) = v29;
  v47 = v30 + 4;
  v48 = v30;
  v31 = v30[2];
  while (1)
  {
    if (v27 == v31)
    {
      v27 = v31;
      memset(v69, 0, 44);
      goto LABEL_24;
    }

    if ((v27 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v27 >= v48[2])
    {
      goto LABEL_32;
    }

    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(&v47[6 * v27++], v69);
LABEL_24:
    *(v53 + 12) = *&v69[28];
    v52 = *v69;
    v53[0] = *&v69[16];
    v26 = *&v69[24] == 0;
    if (*&v69[24])
    {
      v32 = DWORD2(v53[1]);
      outlined init with take of _ViewList_Elements(&v52, v69);
      v33 = *&v69[24];
      v34 = *&v69[32];
      __swift_project_boxed_opaque_existential_1(v69, *&v69[24]);
      v68[0] = v49;
      v55 = v50;
      v56 = v51;
      v35 = *(v34 + 64);
      v67[1] = 0;
      v36 = v35(a1, v68, v32, &v55, closure #1 in applyNode #1 (start:style:node:transform:section:) in _LazyLayout_Subviews.apply(from:style:to:)partial apply, &v38, v33, v34);
      __swift_destroy_boxed_opaque_existential_1(v69);
      if (v36)
      {
        continue;
      }
    }

    return v26 & 1;
  }

  __break(1u);
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
LABEL_37:
  LODWORD(v43) = 0;
  v42 = 570;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t one-time initialization function for namedTypes()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI15SystemColorTypeOTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for namedTypes);
  type metadata accessor for (String, SystemColorType)();
  result = swift_arrayDestroy();
  static SystemColorType.namedTypes = v0;
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI15SystemColorTypeOTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<String, SystemColorType>();
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

void type metadata accessor for _DictionaryStorage<String, SystemColorType>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<String, SystemColorType>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<String, SystemColorType>);
    }
  }
}

void type metadata accessor for (String, SystemColorType)()
{
  if (!lazy cache variable for type metadata for (String, SystemColorType))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, SystemColorType));
    }
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    outlined init with take of Any(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void protocol witness for Shape.path(in:) in conformance Path(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  outlined copy of Path.Storage(v3, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

int8x16_t protocol witness for Shape.path(in:) in conformance Rectangle._Inset@<Q0>(int8x16_t *a1@<X8>, double a2@<D0>)
{
  v19 = CGRectInset(*&a2, *v5, *v5);
  y = v19.origin.y;
  x = v19.origin.x;
  width = v19.size.width;
  height = v19.size.height;
  IsNull = CGRectIsNull(v19);
  *v8.i64 = x;
  *&v8.i64[1] = y;
  *v9.i64 = width;
  *&v9.i64[1] = height;
  if (IsNull)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  v11 = vdupq_n_s64(v10);
  if (IsNull)
  {
    v12 = 6;
  }

  else
  {
    v12 = 0;
  }

  v13 = vbicq_s8(v8, v11);
  result = vbicq_s8(v9, v11);
  *a1 = v13;
  a1[1] = result;
  a1[2].i8[0] = v12;
  return result;
}

uint64_t sub_18D33E800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t FileArchiveReader.__deallocating_deinit()
{
  v1 = *(v0 + 48);

  return swift_deallocClassInstance();
}

void *FileArchiveReader.UnmapBuffer.__deallocating_deinit()
{
  result = *(v0 + 16);
  if (result)
  {
    munmap(result, *(v0 + 24));

    return swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static ViewDecoders.registerDecodableFactoryType<A>(_:forID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static ViewDecoders.shared);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = off_1EAB0F5C8;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a5, a6, a2, a3, isUniquelyReferenced_nonNull_native);
  off_1EAB0F5C8 = v12;

  os_unfair_lock_unlock(&static ViewDecoders.shared);
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      specialized _NativeDictionary.copy()();
      v15 = v23;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a6 & 1);
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_14:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 24 * v15);
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v15, a4, a5, a1, a2, a3, v25);
  }
}

char *FileArchiveReader.__allocating_init(url:)(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSFileHandle, 0x1E696AC00);
  (*(v4 + 16))(v6, a1, v3);
  v8 = v6;
  v9 = v7;
  v10 = @nonobjc NSFileHandle.__allocating_init(forReadingFrom:)(v8);
  if (v1)
  {
    (*(v4 + 8))(a1, v3);
  }

  else
  {
    v11 = v10;
    swift_allocObject();
    v9 = FileArchiveReader.init(file:)(v11);
    (*(v4 + 8))(a1, v3);
  }

  return v9;
}

id @nonobjc NSFileHandle.__allocating_init(forReadingFrom:)(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  URL._bridgeToObjectiveC()(v13);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = type metadata accessor for URL();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

char *FileArchiveReader.init(file:)(void *a1)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = [a1 seekToEndOfFile];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  v5 = v4;
  if (v4 >= 0x8000)
  {
    v6 = mmap(0, v4, 1, 2, [a1 fileDescriptor], 0);
  }

  else
  {
    v6 = MAP_FAILED.getter();
  }

  v7 = v6;
  result = MAP_FAILED.getter();
  if (v7)
  {
    if (!result || v7 != result)
    {
      *(v1 + 6) = 0;
      type metadata accessor for FileArchiveReader.UnmapBuffer();
      v9 = swift_allocObject();
      *(v9 + 16) = v7;
      *(v9 + 24) = v5;
LABEL_9:
      *(v1 + 7) = v9;
      v1 = ArchiveReader.init(buffer:)(v7, v5);

      return v1;
    }
  }

  else if (result)
  {
    *(v1 + 6) = 0;
    __break(1u);
    goto LABEL_23;
  }

  v20[0] = 0;
  if (![a1 seekToOffset:0 error:v20])
  {
    v14 = v20[0];
    _convertNSErrorToError(_:)();

    goto LABEL_16;
  }

  v10 = v20[0];
  v11 = NSFileHandle.readToEnd()();
  if (v2)
  {
LABEL_17:

    swift_deallocPartialClassInstance();
    return v1;
  }

  if (v12 >> 60 == 15)
  {
    lazy protocol witness table accessor for type Error and conformance Error();
    swift_allocError();
    *v13 = 5;
    *(v13 + 8) = 1;
LABEL_16:
    swift_willThrow();
    goto LABEL_17;
  }

  v15 = v11;
  v16 = v12;
  v17.super.isa = Data._bridgeToObjectiveC()().super.isa;
  *(v1 + 6) = v17;
  result = [(objc_class *)v17.super.isa bytes];
  v18 = *(v1 + 6);
  if (v18)
  {
    v7 = result;
    v19 = v18;
    v5 = [v19 length];
    outlined consume of Data?(v15, v16);

    v9 = 0;
    goto LABEL_9;
  }

LABEL_23:
  __break(1u);
  return result;
}

double outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return v2;
}

char *ArchiveReader.init(buffer:)(char *result, uint64_t a2)
{
  v3 = 1;
  if (a2 < 1 || (a2 & 7) != 0)
  {
    goto LABEL_10;
  }

  if (result)
  {
    v4 = &result[a2];
    v5 = &result[a2 - 4];
    if (v5 < result)
    {
      v3 = 1;
LABEL_10:
      lazy protocol witness table accessor for type Error and conformance Error();
      swift_allocError();
      *v9 = v3;
      *(v9 + 8) = 1;
      swift_willThrow();
      type metadata accessor for ArchiveReader();
      swift_deallocPartialClassInstance();
      return v2;
    }

    if (*v5 != -782886287)
    {
      v3 = 2;
      goto LABEL_10;
    }

    v6 = *(v4 - 2);
    v7 = &v4[-16 * v6 - 8];
    v8 = v7 - result;
    if (v7 < result)
    {
      v3 = 3;
      goto LABEL_10;
    }

    if (v7 - result >= 0)
    {
      v2[2] = result;
      v2[3] = a2;
      v2[4] = v7;
      v2[5] = v6;
      if (v6)
      {
        v10 = &v7[16 * v6];
        while (1)
        {
          v11 = *(v7 + 1);
          if (__CFADD__(v11, *v7) || v8 < v11 + *v7)
          {
            break;
          }

          v7 += 16;
          if (v7 == v10)
          {
            return v2;
          }
        }

        lazy protocol witness table accessor for type Error and conformance Error();
        swift_allocError();
        *v12 = 4;
        *(v12 + 8) = 1;
        swift_willThrow();
      }

      return v2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void type metadata accessor for [Int]()
{
  if (!lazy cache variable for type metadata for [Int])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [Int]);
    }
  }
}

void lazy protocol witness table accessor for type [Int] and conformance <A> [A](unint64_t *a1, uint64_t a2, const char *a3)
{
  if (!*a1)
  {
    type metadata accessor for [Int]();
    v8 = a2;
    swift_getWitnessTable(a3, v6, &v8);
    atomic_store(v7, a1);
  }
}

void ArchiveReader.subscript.getter(uint64_t a1)
{
  v3 = type metadata accessor for Data.Deallocator();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  if (v7)
  {
    v8 = (*(v1 + 32) + 16 * a1);
    v9 = *v8;
    if (*v8 < 0)
    {
      __break(1u);
    }

    else
    {
      v10 = v8[1];

      if ((v10 & 0x8000000000000000) == 0)
      {
        v11 = swift_allocObject();
        *(v11 + 16) = v1;
        *v6 = TextShadowModifier.__ivar_destroyer;
        v6[1] = v11;
        (*(v4 + 104))(v6, *MEMORY[0x1E6969028], v3);
        specialized Data.init(bytesNoCopy:count:deallocator:)(v7 + v9, v10, v6);
        return;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t specialized Data.init(bytesNoCopy:count:deallocator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Data.Deallocator();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Data.Deallocator._deallocator.getter();
  if (a2)
  {
    type metadata accessor for __DataStorage();
    swift_allocObject();

    v10 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
    (*(v7 + 16))(v9, a3, v6);
    if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E6969010])
    {
      v11 = __DataStorage._capacity.modify();
      *v12 |= 0x8000000000000000;
      v11(v16, 0);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }

    v14 = specialized Data._Representation.init(_:count:)(v10, a2);
  }

  else
  {
    v13 = Data.Deallocator._deallocator.getter();
    v13(a1, 0);

    v14 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v14;
}

uint64_t specialized Data._Representation.init(_:count:)(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = __DataStorage._bytes.getter();
  if (v3)
  {
    result = __DataStorage._offset.getter();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = MEMORY[0x193ABC2C0]();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = specialized Data.InlineData.init(_:)(v3, v7);

  return v8;
}

void type metadata accessor for KeyedEncodingContainer<ArchivedViewCore.Metadata.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, uint64_t))
{
  if (!*a2)
  {
    lazy protocol witness table accessor for type ArchivedViewCore.Metadata.CodingKeys and conformance ArchivedViewCore.Metadata.CodingKeys();
    v7 = a3(a1, &unk_1F004AD10, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void lazy protocol witness table accessor for type ArchivedViewCore.Metadata.CodingKeys and conformance ArchivedViewCore.Metadata.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type ArchivedViewCore.Metadata.CodingKeys and conformance ArchivedViewCore.Metadata.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ArchivedViewCore.Metadata.CodingKeys, &unk_1F004AD10, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ArchivedViewCore.Metadata.CodingKeys and conformance ArchivedViewCore.Metadata.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type ArchivedViewCore.Metadata.CodingKeys and conformance ArchivedViewCore.Metadata.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ArchivedViewCore.Metadata.CodingKeys, &unk_1F004AD10, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ArchivedViewCore.Metadata.CodingKeys and conformance ArchivedViewCore.Metadata.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type ArchivedViewCore.Metadata.CodingKeys and conformance ArchivedViewCore.Metadata.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ArchivedViewCore.Metadata.CodingKeys, &unk_1F004AD10, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ArchivedViewCore.Metadata.CodingKeys and conformance ArchivedViewCore.Metadata.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type ArchivedViewCore.Metadata.CodingKeys and conformance ArchivedViewCore.Metadata.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ArchivedViewCore.Metadata.CodingKeys, &unk_1F004AD10, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ArchivedViewCore.Metadata.CodingKeys and conformance ArchivedViewCore.Metadata.CodingKeys);
  }
}

void ArchivedViewCore.Metadata.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v33 = a2;
  v3 = type metadata accessor for UUID();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<ArchivedViewCore.Metadata.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ArchivedViewCore.Metadata.CodingKeys>, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - v7;
  v9 = type metadata accessor for ArchivedViewCore.Metadata(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() mainBundle];
  v13 = [v12 preferredLocalizations];

  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v14 + 16))
  {
    v38 = *(v14 + 40);
  }

  else
  {
    v38 = 0;
  }

  v15 = *(v9 + 48);
  v11[v15] = CTParagraphStyleGetCompositionLanguageForLanguage();
  __swift_project_boxed_opaque_existential_1(v39, v39[3]);
  lazy protocol witness table accessor for type ArchivedViewCore.Metadata.CodingKeys and conformance ArchivedViewCore.Metadata.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  else
  {
    v16 = v11;
    v32 = v9;
    LOBYTE(v41) = 0;
    v17 = v6;
    *v16 = KeyedDecodingContainer.decode(_:forKey:)();
    type metadata accessor for [Int]();
    v40 = 1;
    lazy protocol witness table accessor for type [Int] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A], MEMORY[0x1E69E6560], MEMORY[0x1E69E6330]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v16 + 8) = v41;
    LOBYTE(v41) = 2;
    *(v16 + 16) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v16 + 24) = v18 & 1;
    LOBYTE(v41) = 3;
    *(v16 + 32) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v16 + 40) = v19 & 1;
    v40 = 4;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v20 = MEMORY[0x1E69E7CC0];
    if (v41)
    {
      v20 = v41;
    }

    *(v16 + 48) = v20;
    LOBYTE(v41) = 5;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v21 = v34;
    v22 = v36;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v23 = v21;
    v24 = v32;
    (*(v35 + 32))(v16 + *(v32 + 36), v23, v22);
    v40 = 6;
    lazy protocol witness table accessor for type ArchivedViewInput.DeploymentVersion and conformance ArchivedViewInput.DeploymentVersion();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v25 = v41;
    if (BYTE1(v41))
    {
      v25 = 1;
    }

    *(v16 + *(v24 + 40)) = v25;
    LOBYTE(v41) = 7;
    v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v28 = v27;

    v29 = (v16 + *(v32 + 44));
    *v29 = v26;
    v29[1] = v28;
    type metadata accessor for CodableRawRepresentable<CTCompositionLanguage>(0);
    v40 = 8;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CodableRawRepresentable<CTCompositionLanguage> and conformance CodableRawRepresentable<A>, type metadata accessor for CodableRawRepresentable<CTCompositionLanguage>, protocol conformance descriptor for CodableRawRepresentable<A>);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v37 + 8))(v8, v17);
    v30 = v41;
    if (BYTE1(v41))
    {
      v30 = 0;
    }

    *(v16 + v15) = v30;
    outlined init with copy of ArchivedViewCore.Metadata(v16, v33);
    __swift_destroy_boxed_opaque_existential_1(v39);
    outlined destroy of ArchivedViewCore.Metadata(v16);
  }
}

uint64_t type metadata accessor for ArchivedViewCore.Metadata(uint64_t a1)
{
  result = type metadata singleton initialization cache for ArchivedViewCore.Metadata;
  if (!type metadata singleton initialization cache for ArchivedViewCore.Metadata)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t ArchivedViewCore.Metadata.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x726556726F6A616DLL;
    v6 = 0xD000000000000013;
    if (a1 != 2)
    {
      v6 = 0x6174744161746164;
    }

    if (a1)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000011;
    v2 = 0xD000000000000017;
    if (a1 != 7)
    {
      v2 = 0xD00000000000001CLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD00000000000001ELL;
    if (a1 != 4)
    {
      v3 = 0x4965766968637261;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t storeEnumTagSinglePayload for ArchivedViewCore.Metadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArchivedViewCore.Metadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void _s10Foundation4UUIDVACSEAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void lazy protocol witness table accessor for type ArchivedViewInput.DeploymentVersion and conformance ArchivedViewInput.DeploymentVersion()
{
  if (!lazy protocol witness table cache variable for type ArchivedViewInput.DeploymentVersion and conformance ArchivedViewInput.DeploymentVersion)
  {
    swift_getWitnessTable(protocol conformance descriptor for ArchivedViewInput.DeploymentVersion, &type metadata for ArchivedViewInput.DeploymentVersion, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ArchivedViewInput.DeploymentVersion and conformance ArchivedViewInput.DeploymentVersion);
  }
}

{
  if (!lazy protocol witness table cache variable for type ArchivedViewInput.DeploymentVersion and conformance ArchivedViewInput.DeploymentVersion)
  {
    swift_getWitnessTable(protocol conformance descriptor for ArchivedViewInput.DeploymentVersion, &type metadata for ArchivedViewInput.DeploymentVersion, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ArchivedViewInput.DeploymentVersion and conformance ArchivedViewInput.DeploymentVersion);
  }
}

{
  if (!lazy protocol witness table cache variable for type ArchivedViewInput.DeploymentVersion and conformance ArchivedViewInput.DeploymentVersion)
  {
    swift_getWitnessTable(protocol conformance descriptor for ArchivedViewInput.DeploymentVersion, &type metadata for ArchivedViewInput.DeploymentVersion, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ArchivedViewInput.DeploymentVersion and conformance ArchivedViewInput.DeploymentVersion);
  }
}

uint64_t protocol witness for Decodable.init(from:) in conformance ArchivedViewInput.DeploymentVersion@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    __swift_destroy_boxed_opaque_existential_1(v7);
    *a2 = v5;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void type metadata accessor for CodableRawRepresentable<CTCompositionLanguage>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CodableRawRepresentable<CTCompositionLanguage>)
  {
    type metadata accessor for CTCompositionLanguage(255);
    v3 = v2;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CTCompositionLanguage and conformance CTCompositionLanguage, type metadata accessor for CTCompositionLanguage, protocol conformance descriptor for CTCompositionLanguage);
    v7[0] = v3;
    v7[1] = v4;
    v7[2] = MEMORY[0x1E69E7528];
    v7[3] = MEMORY[0x1E69E7510];
    v5 = type metadata accessor for CodableRawRepresentable(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for CodableRawRepresentable<CTCompositionLanguage>);
    }
  }
}

uint64_t RawRepresentableProxy.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, void *, double)@<X5>, uint64_t a7@<X8>)
{
  v39 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v44 = &v32 - v13;
  v14 = type metadata accessor for Optional();
  v37 = *(v14 - 8);
  v38 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  v40 = *(a2 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45[0] = a2;
  v45[1] = a3;
  v41 = a3;
  v43 = a4;
  v45[2] = a4;
  v46 = a5;
  v21 = a6(0, v45, v18);
  v36 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v32 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = v47;
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v24)
  {
    v33 = v23;
    v34 = v21;
    v35 = v20;
    v47 = a1;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v25 = v16;
    dispatch thunk of RawRepresentable.init(rawValue:)();
    v26 = v40;
    if ((*(v40 + 48))(v16, 1, a2) != 1)
    {
      v29 = *(v26 + 32);
      v30 = v35;
      v29(v35, v25, a2);
      v31 = v33;
      v29(v33, v30, a2);
      __swift_destroy_boxed_opaque_existential_1(v45);
      (*(v36 + 32))(v39, v31, v34);
      v27 = v47;
      return __swift_destroy_boxed_opaque_existential_1(v27);
    }

    (*(v37 + 8))(v16, v38);
    lazy protocol witness table accessor for type Error and conformance Error();
    swift_allocError();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v45);
    a1 = v47;
  }

  v27 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t outlined init with copy of ArchivedViewCore.Metadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArchivedViewCore.Metadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t initializeWithCopy for ArchivedViewCore.Metadata(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v7 = a3[9];
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 16);

  v9(a1 + v7, a2 + v7, v8);
  v10 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  v13 = v12[1];
  *v11 = *v12;
  v11[1] = v13;
  *(a1 + a3[12]) = *(a2 + a3[12]);

  return a1;
}

uint64_t outlined destroy of ArchivedViewCore.Metadata(uint64_t a1)
{
  v2 = type metadata accessor for ArchivedViewCore.Metadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double destroy for ArchivedViewCore.Metadata(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 36);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);

  return result;
}

void _DisplayList_StableIdentityMap.init(from:)(char *a1@<X0>, char **a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if (v4 >= v5)
    {
      *(a1 + 3) = 0;
      *a2 = v6;
      return;
    }

    v7 = *(a1 + 3);
    if (v7)
    {
      v8 = *(a1 + 4);
      if (v4 < v8)
      {
        goto LABEL_9;
      }

      if (v8 < v4)
      {
        goto LABEL_44;
      }

      *(a1 + 3) = 0;
    }

    v7 = ProtobufDecoder.decodeVarint()(v7);
    if (v2)
    {
      goto LABEL_47;
    }

    if (v7 < 8)
    {
LABEL_44:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
LABEL_47:

      return;
    }

LABEL_9:
    if ((v7 & 0xFFFFFFFFFFFFFFF8) == 8)
    {
      break;
    }

    v27 = v7 & 7;
    if (v27 > 1)
    {
      if (v27 == 2)
      {
        v9 = a1;
        v29 = ProtobufDecoder.decodeVarint()(v7);
        if (v2)
        {
          goto LABEL_47;
        }

        if (v29 < 0)
        {
          goto LABEL_51;
        }

        v4 = *(a1 + 1) + v29;
        if (v5 < v4)
        {
          goto LABEL_44;
        }

        *(a1 + 1) = v4;
      }

      else
      {
        if (v27 != 5)
        {
          goto LABEL_44;
        }

        v4 = *(a1 + 1) + 4;
        if (v5 < v4)
        {
          goto LABEL_44;
        }

        *(a1 + 1) = v4;
      }
    }

    else if ((v7 & 7) != 0)
    {
      if (v27 != 1)
      {
        goto LABEL_44;
      }

      v4 = *(a1 + 1) + 8;
      if (v5 < v4)
      {
        goto LABEL_44;
      }

      *(a1 + 1) = v4;
    }

    else
    {
      ProtobufDecoder.decodeVarint()(v7);
      if (v2)
      {
        goto LABEL_47;
      }

LABEL_42:
      v4 = *(a1 + 1);
    }
  }

  if ((v7 & 7) != 2)
  {
    goto LABEL_44;
  }

  ProtobufDecoder.beginMessage()();
  if (v2)
  {
    goto LABEL_47;
  }

  closure #1 in _DisplayList_StableIdentityMap.init(from:)(a1, &v39);
  v9 = *(a1 + 5);
  if (*(v9 + 2))
  {
    v45 = 0;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v10 = *(v9 + 2);
      if (!v10)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      v10 = *(v9 + 2);
      if (!v10)
      {
        goto LABEL_49;
      }
    }

    v11 = v10 - 1;
    v12 = *&v9[8 * v11 + 32];
    *(v9 + 2) = v11;
    *(a1 + 5) = v9;
    *(a1 + 2) = v12;
    v14 = v39;
    v13 = HIDWORD(v39);
    v16 = v40;
    v15 = v41;
    v17 = v42;
    v37 = v43;
    v38 = v12;
    v36 = v44;
    v9 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v9;
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(v14);
    v21 = *(v9 + 2);
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_50;
    }

    v25 = v20;
    if (*(v9 + 3) >= v24)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_29;
      }

      v30 = v19;
      specialized _NativeDictionary.copy()();
      v19 = v30;
      v6 = v39;
      if ((v25 & 1) == 0)
      {
        goto LABEL_40;
      }

LABEL_30:
      v28 = (*(v6 + 7) + 24 * v19);
      *v28 = v13;
      v28[1] = v16;
      v28[2] = v15;
      v28[3] = v17;
      v28[4] = v37;
      v28[5] = v36;
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, isUniquelyReferenced_nonNull_native);
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v14);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_53;
      }

LABEL_29:
      v6 = v39;
      if (v25)
      {
        goto LABEL_30;
      }

LABEL_40:
      specialized _NativeDictionary._insert(at:key:value:)(v19, v14, v13 | (v16 << 32), v15 | (v17 << 32), v37 | (v36 << 32), v6);
    }

    v2 = v45;
    v5 = v38;
    goto LABEL_42;
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  __break(1u);
  v33 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
  v34 = *(v33 + 2);
  if (v34)
  {
    v31 = v34 - 1;
    v32 = *&v33[8 * v31 + 32];
    *(v33 + 2) = v31;
    *(a1 + 5) = v33;
    *(a1 + 2) = v32;
    goto LABEL_47;
  }

  __break(1u);
LABEL_53:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_18D340E70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void ProtobufDecoder.init(_:)(uint64_t a1@<X0>, unint64_t a2@<X1>, NSData *a3@<X8>)
{
  a3[3].super.isa = 0;
  v6 = MEMORY[0x1E69E7CC8];
  a3[5].super.isa = MEMORY[0x1E69E7CC0];
  a3[6].super.isa = v6;
  v7.super.isa = Data._bridgeToObjectiveC()().super.isa;
  a3->super.isa = v7.super.isa;
  v8 = [(objc_class *)v7.super.isa bytes];
  v9 = a2;
  v10 = v8;
  a3[1].super.isa = v8;
  v11 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v11 != 2)
    {
      outlined consume of Data._Representation(a1, v9);
      v14 = 0;
      goto LABEL_11;
    }

    v16 = *(a1 + 16);
    v15 = *(a1 + 24);
    outlined consume of Data._Representation(a1, v9);
    v14 = v15 - v16;
    if (!__OFSUB__(v15, v16))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v11)
  {
    v12 = a1;
    v13 = BYTE6(v9);
    outlined consume of Data._Representation(v12, v9);
    v14 = v13;
LABEL_11:
    a3[2].super.isa = (v10 + v14);
    a3[4].super.isa = v10;
    return;
  }

  outlined consume of Data._Representation(a1, v9);
  LODWORD(v14) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v14 = v14;
    goto LABEL_11;
  }

  __break(1u);
}

double outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t ProtobufDecoder.decodeVarint()(uint64_t result)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  if (v3 < (v2 + 1))
  {
LABEL_8:
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = v2 + 1;
      v7 = (*v2 & 0x7F) << v4;
      if (v4 > 0x3F)
      {
        v7 = 0;
      }

      v5 |= v7;
      if ((*v2 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      v8 = v2 + 2;
      ++v2;
      if (v3 < v8)
      {
        *(v1 + 8) = v6;
        goto LABEL_8;
      }
    }

    *(v1 + 8) = v2 + 1;
  }

  return v5;
}

uint64_t ProtobufDecoder.beginMessage()()
{
  v2 = v0[2];
  v3 = v0[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1, v3);
    v3 = isUniquelyReferenced_nonNull_native;
  }

  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v6 >= v5 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v3);
    v3 = isUniquelyReferenced_nonNull_native;
  }

  *(v3 + 16) = v6 + 1;
  *(v3 + 8 * v6 + 32) = v2;
  v0[5] = v3;
  result = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
  if (!v1)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v8 = v0[1] + result;
      if (v2 >= v8)
      {
        v0[2] = v8;
      }

      else
      {
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        return swift_willThrow();
      }
    }
  }

  return result;
}

unint64_t closure #1 in _DisplayList_StableIdentityMap.init(from:)@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v5 = result[1];
  v6 = result[2];
  if (v5 < v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
    v12 = 1;
    while (1)
    {
      v13 = result[3];
      if (v13)
      {
        v14 = result[4];
        if (v5 < v14)
        {
          goto LABEL_11;
        }

        if (v14 < v5)
        {
          goto LABEL_51;
        }

        result[3] = 0;
      }

      v13 = ProtobufDecoder.decodeVarint()(v13);
      if (v2)
      {
        return v13;
      }

      if (v13 <= 7)
      {
        goto LABEL_51;
      }

LABEL_11:
      if (v13 >> 3 == 2)
      {
        if ((v13 & 7) != 2)
        {
          goto LABEL_51;
        }

        v16 = result[5];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
          v16 = isUniquelyReferenced_nonNull_native;
        }

        v19 = *(v16 + 16);
        v18 = *(v16 + 24);
        if (v19 >= v18 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
          v16 = isUniquelyReferenced_nonNull_native;
        }

        *(v16 + 16) = v19 + 1;
        *(v16 + 8 * v19 + 32) = v6;
        result[5] = v16;
        v13 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
        if (v2)
        {
          return v13;
        }

        if ((v13 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          __break(1u);
          v13 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
          v28 = *(v13 + 16);
          if (v28)
          {
            v26 = v28 - 1;
            v27 = *(v13 + 8 * v26 + 32);
            *(v13 + 16) = v26;
            result[5] = v13;
            result[2] = v27;
          }

          else
          {
            __break(1u);
          }

          return v13;
        }

        v20 = result[1] + v13;
        if (v6 < v20)
        {
          goto LABEL_51;
        }

        result[2] = v20;
        _DisplayList_StableIdentity.init(from:)(result, v29);
        v21 = result[5];
        if (!*(v21 + 16))
        {
          goto LABEL_57;
        }

        v13 = swift_isUniquelyReferenced_nonNull_native();
        if (v13)
        {
          v22 = *(v21 + 16);
          if (!v22)
          {
            goto LABEL_49;
          }
        }

        else
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
          v21 = v13;
          v22 = *(v13 + 16);
          if (!v22)
          {
LABEL_49:
            __break(1u);
            break;
          }
        }

        v11 = 0;
        v23 = v22 - 1;
        v6 = *(v21 + 8 * v23 + 32);
        *(v21 + 16) = v23;
        result[5] = v21;
        result[2] = v6;
        v7 = v29[0];
        v8 = v29[1];
        v9 = v29[2];
        goto LABEL_4;
      }

      if (v13 >> 3 == 1)
      {
        if ((v13 & 7) != 0)
        {
          if ((v13 & 7) != 2)
          {
            goto LABEL_51;
          }

          v13 = ProtobufDecoder.decodeVarint()(v13);
          if (v2)
          {
            return v13;
          }

          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_58;
          }

          v15 = result[1] + v13;
          if (v6 < v15)
          {
            goto LABEL_51;
          }

          result[3] = 8;
          result[4] = v15;
        }

        v13 = ProtobufDecoder.decodeVarint()(v13);
        if (v2)
        {
          return v13;
        }

        v10 = v13;
        v12 = 0;
        goto LABEL_4;
      }

      v24 = v13 & 7;
      if (v24 > 1)
      {
        if (v24 == 2)
        {
          v13 = ProtobufDecoder.decodeVarint()(v13);
          if (v2)
          {
            return v13;
          }

          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_59;
          }

          v25 = result[1] + v13;
          if (v6 < v25)
          {
            goto LABEL_51;
          }
        }

        else
        {
          if (v24 != 5)
          {
            goto LABEL_51;
          }

          v25 = result[1] + 4;
          if (v6 < v25)
          {
            goto LABEL_51;
          }
        }
      }

      else
      {
        if ((v13 & 7) == 0)
        {
          v13 = ProtobufDecoder.decodeVarint()(v13);
          if (v2)
          {
            return v13;
          }

          goto LABEL_4;
        }

        if (v24 != 1)
        {
          goto LABEL_51;
        }

        v25 = result[1] + 8;
        if (v6 < v25)
        {
          goto LABEL_51;
        }
      }

      result[1] = v25;
LABEL_4:
      v5 = result[1];
      if (v5 >= v6)
      {
        result[3] = 0;
        if ((v12 | v11))
        {
          goto LABEL_51;
        }

        *a2 = v10;
        *(a2 + 4) = v7;
        *(a2 + 12) = v8;
        *(a2 + 20) = v9;
        return v13;
      }
    }
  }

  result[3] = 0;
LABEL_51:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  return swift_willThrow();
}

unint64_t _DisplayList_StableIdentity.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
LABEL_50:
    v7 = 0;
    v8 = 0;
    v24 = 0u;
LABEL_51:
    v3[3] = 0;
    *a2 = v24;
    *(a2 + 16) = v7;
    *(a2 + 20) = v8;
    return result;
  }

  v7 = 0;
  v8 = 0;
  v24 = 0u;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v9 = v3[4];
      if (v5 < v9)
      {
        goto LABEL_11;
      }

      if (v9 < v5)
      {
        goto LABEL_52;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_52:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    if (result >> 3 == 2)
    {
      if ((result & 7) != 0)
      {
        if ((result & 7) != 2)
        {
          goto LABEL_52;
        }

        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_57;
        }

        v18 = v3[1] + result;
        if (v6 < v18)
        {
          goto LABEL_52;
        }

        v3[3] = 16;
        v3[4] = v18;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        return result;
      }

      v8 = result;
      goto LABEL_4;
    }

    if (result >> 3 != 1)
    {
      v19 = result & 7;
      if (v19 > 1)
      {
        if (v19 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_58;
          }

          v20 = v3[1] + result;
          if (v6 < v20)
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (v19 != 5)
          {
            goto LABEL_52;
          }

          v20 = v3[1] + 4;
          if (v6 < v20)
          {
            goto LABEL_52;
          }
        }
      }

      else
      {
        if ((result & 7) == 0)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          goto LABEL_4;
        }

        if (v19 != 1)
        {
          goto LABEL_52;
        }

        v20 = v3[1] + 8;
        if (v6 < v20)
        {
          goto LABEL_52;
        }
      }

      v3[1] = v20;
      goto LABEL_4;
    }

    if ((result & 7) != 2)
    {
      goto LABEL_52;
    }

    v10 = v3[5];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    v13 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v13 >= v12 >> 1)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    *(v10 + 16) = v13 + 1;
    *(v10 + 8 * v13 + 32) = v6;
    v3[5] = v10;
    result = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
    if (v2)
    {
      return result;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    v14 = v3[1] + result;
    if (v6 < v14)
    {
      goto LABEL_52;
    }

    v3[2] = v14;
    StrongHash.init(from:)(v3, &v25);
    v15 = v3[5];
    if (!*(v15 + 16))
    {
      goto LABEL_56;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v16 = *(v15 + 16);
      if (!v16)
      {
        goto LABEL_49;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
      v15 = result;
      v16 = *(result + 16);
      if (!v16)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    v17 = v16 - 1;
    v6 = *(v15 + 8 * v17 + 32);
    *(v15 + 16) = v17;
    v3[5] = v15;
    v3[2] = v6;
    v24 = v25;
    v7 = v26;
LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v23 = *(result + 16);
  if (v23)
  {
    v21 = v23 - 1;
    v22 = *(result + 8 * v21 + 32);
    *(result + 16) = v21;
    v3[5] = result;
    v3[2] = v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t StrongHash.init(from:)@<X0>(unint64_t result@<X0>, _DWORD *a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
LABEL_4:
    v3[3] = 0;
    *a2 = v7;
    a2[1] = v8;
    a2[2] = v9;
    a2[3] = v10;
    a2[4] = v11;
    return result;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v14 = v3[4];
      if (v5 < v14)
      {
        goto LABEL_14;
      }

      if (v14 < v5)
      {
        goto LABEL_48;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_48:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_14:
    v15 = result & 7;
    if ((result & 0xFFFFFFFFFFFFFFF8) != 8)
    {
      if ((result & 7) > 1)
      {
        if (v15 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_52;
          }

          v5 = v3[1] + result;
          if (v6 < v5)
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (v15 != 5)
          {
            goto LABEL_48;
          }

          v5 = v3[1] + 4;
          if (v6 < v5)
          {
            goto LABEL_48;
          }
        }
      }

      else
      {
        if ((result & 7) == 0)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          v5 = v3[1];
          goto LABEL_7;
        }

        if (v15 != 1)
        {
          goto LABEL_48;
        }

        v5 = v3[1] + 8;
        if (v6 < v5)
        {
          goto LABEL_48;
        }
      }

      v3[1] = v5;
      goto LABEL_7;
    }

    if (v15 == 2)
    {
      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_51;
      }

      v16 = v3[1];
      if (v6 < v16 + result)
      {
        goto LABEL_48;
      }

      v3[3] = 13;
      v3[4] = v16 + result;
    }

    else
    {
      if (v15 != 5)
      {
        goto LABEL_48;
      }

      v16 = v3[1];
    }

    v5 = (v16 + 1);
    if (v6 < (v16 + 1))
    {
      goto LABEL_48;
    }

    v17 = *v16;
    v3[1] = v5;
    if (v12 <= 1)
    {
      if (v12)
      {
        if (v12 == 1)
        {
          v8 = v17;
        }
      }

      else
      {
        v7 = v17;
      }
    }

    else
    {
      switch(v12)
      {
        case 2:
          v9 = v17;
          break;
        case 3:
          v10 = v17;
          break;
        case 4:
          v11 = v17;
          break;
      }
    }

    if (__OFADD__(v12++, 1))
    {
      break;
    }

LABEL_7:
    if (v5 >= v6)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 4 * result) = a2;
  v6 = (a6[7] + 24 * result);
  *v6 = a3;
  v6[1] = a4;
  v6[2] = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

void specialized AnimatorState.removeListeners()()
{
  swift_beginAccess();
  v1 = *(v0 + 18);
  if (v1 >> 62)
  {
    goto LABEL_52;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = *(v0 + 18);
    if (v4 >> 62)
    {
      v5 = __CocoaSet.count.getter();
      if (v5)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_6:
        if (v5 < 1)
        {
          __break(1u);
          goto LABEL_60;
        }

        v6 = v0;

        for (i = 0; i != v5; ++i)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v4);
          }

          else
          {
            v8 = *(v4 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }

        v0 = v6;
      }
    }

    *(v0 + 18) = v3;
  }

  swift_beginAccess();
  v9 = *(v0 + 19);
  if (!(v9 >> 62))
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = *(v0 + 19);
    if (v10 >> 62)
    {
      v11 = __CocoaSet.count.getter();
      if (v11)
      {
LABEL_18:
        if (v11 >= 1)
        {
          v12 = v0;

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v14 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v14 = *(v10 + 8 * j + 32);
            }

            (*(*v14 + 96))();
          }

          v0 = v12;
          goto LABEL_25;
        }

LABEL_60:
        __break(1u);
        return;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    *(v0 + 19) = v3;

    goto LABEL_26;
  }

  if (__CocoaSet.count.getter())
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v15 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      return;
    }
  }

  else if (static Semantics.forced < v15)
  {
    return;
  }

  swift_beginAccess();
  v16 = *(v0 + 23);
  v17 = *(v16 + 16);
  if (v17)
  {
    v22 = v0;

    v18 = 0;
    while (1)
    {
      if (v18 >= *(v16 + 16))
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        v2 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v0 = lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData;
      outlined init with copy of AnimatorState<_AnyAnimatableData>.Fork(v16 + 32 + 80 * v18, v23, &lazy cache variable for type metadata for AnimatorState<_AnyAnimatableData>.Fork, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData);
      v19 = v24;

      outlined destroy of AnimatorState<_AnyAnimatableData>.Fork(v23, &lazy cache variable for type metadata for AnimatorState<_AnyAnimatableData>.Fork, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData);
      if (v19 >> 62)
      {
        v20 = __CocoaSet.count.getter();
        if (!v20)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v20)
        {
          goto LABEL_36;
        }
      }

      if (v20 < 1)
      {
        goto LABEL_51;
      }

      for (k = 0; k != v20; ++k)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v0 = MEMORY[0x193AC03C0](k, v19);
        }

        else
        {
          v0 = *(v19 + 8 * k + 32);
        }

        (*(*v0 + 96))();
      }

LABEL_36:
      ++v18;

      if (v18 == v17)
      {

        *(v22 + 23) = MEMORY[0x1E69E7CC0];

        return;
      }
    }
  }
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[10];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = v1[10];
    if (v5 >> 62)
    {
      v6 = __CocoaSet.count.getter();
      if (v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[10] = v4;
  }

  swift_beginAccess();
  v9 = v1[11];
  if (!(v9 >> 62))
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[11];
    if (v10 >> 62)
    {
      v11 = __CocoaSet.count.getter();
      if (v11)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[11] = v4;

    goto LABEL_26;
  }

  if (__CocoaSet.count.getter())
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      return;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return;
  }

  swift_beginAccess();
  v15 = v1[15];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= *(v15 + 16))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        v3 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = (v15 + 32 + 48 * v17);
      v19 = v18[5];
      v20 = *v18;

      if (!v20)
      {
LABEL_49:

        v1[15] = MEMORY[0x1E69E7CC0];

        return;
      }

      if (v19 >> 62)
      {
        v21 = __CocoaSet.count.getter();
        if (!v21)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v21)
        {
          goto LABEL_36;
        }
      }

      if (v21 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v21; ++k)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x193AC03C0](k, v19);
        }

        else
        {
          v23 = *(v19 + 8 * k + 32);
        }

        (*(*v23 + 96))();
      }

LABEL_36:
      ++v17;

      if (v17 == v16)
      {
        goto LABEL_49;
      }
    }
  }
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[16];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = v1[16];
    if (v5 >> 62)
    {
      v6 = __CocoaSet.count.getter();
      if (v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[16] = v4;
  }

  swift_beginAccess();
  v9 = v1[17];
  if (!(v9 >> 62))
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[17];
    if (v10 >> 62)
    {
      v11 = __CocoaSet.count.getter();
      if (v11)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[17] = v4;

    goto LABEL_26;
  }

  if (__CocoaSet.count.getter())
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      return;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return;
  }

  swift_beginAccess();
  v15 = v1[21];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= *(v15 + 16))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        v3 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = v15 + 32 + 72 * v17;
      v19 = *(v18 + 64);
      v20 = *(v18 + 16);
      v21 = *(v18 + 48);
      v32 = *(v18 + 32);
      v33 = v21;
      v31 = v20;
      v30 = *v18;
      v34 = v19;
      v26 = v32;
      v27 = v21;
      v25 = v20;
      v28 = v30;
      outlined init with copy of AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork(&v30, v29, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork);
      if (!v28)
      {
LABEL_49:

        v1[21] = MEMORY[0x1E69E7CC0];

        return;
      }

      v30 = v28;
      v31 = v25;
      v32 = v26;
      v33 = v27;
      v34 = v19;

      outlined destroy of AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork(&v30, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork);
      if (v19 >> 62)
      {
        v22 = __CocoaSet.count.getter();
        if (!v22)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v22 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v22)
        {
          goto LABEL_36;
        }
      }

      if (v22 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v22; ++k)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x193AC03C0](k, v19);
        }

        else
        {
          v24 = *(v19 + 8 * k + 32);
        }

        (*(*v24 + 96))();
      }

LABEL_36:

      if (++v17 == v16)
      {
        goto LABEL_49;
      }
    }
  }
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[12];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = v1[12];
    if (v5 >> 62)
    {
      v6 = __CocoaSet.count.getter();
      if (v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[12] = v4;
  }

  swift_beginAccess();
  v9 = v1[13];
  if (!(v9 >> 62))
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[13];
    if (v10 >> 62)
    {
      v11 = __CocoaSet.count.getter();
      if (v11)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[13] = v4;

    goto LABEL_26;
  }

  if (__CocoaSet.count.getter())
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      return;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return;
  }

  swift_beginAccess();
  v15 = v1[17];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= *(v15 + 16))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        v3 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = (v15 + 32 + 56 * v17);
      v19 = v18[6];
      v20 = *v18;

      if (!v20)
      {
LABEL_49:

        v1[17] = MEMORY[0x1E69E7CC0];

        return;
      }

      if (v19 >> 62)
      {
        v21 = __CocoaSet.count.getter();
        if (!v21)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v21)
        {
          goto LABEL_36;
        }
      }

      if (v21 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v21; ++k)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x193AC03C0](k, v19);
        }

        else
        {
          v23 = *(v19 + 8 * k + 32);
        }

        (*(*v23 + 96))();
      }

LABEL_36:
      ++v17;

      if (v17 == v16)
      {
        goto LABEL_49;
      }
    }
  }
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[14];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = v1[14];
    if (v5 >> 62)
    {
      v6 = __CocoaSet.count.getter();
      if (v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[14] = v4;
  }

  swift_beginAccess();
  v9 = v1[15];
  if (!(v9 >> 62))
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[15];
    if (v10 >> 62)
    {
      v11 = __CocoaSet.count.getter();
      if (v11)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[15] = v4;

    goto LABEL_26;
  }

  if (__CocoaSet.count.getter())
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      return;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return;
  }

  swift_beginAccess();
  v15 = v1[19];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= *(v15 + 16))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        v3 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = (v15 + 32 + (v17 << 6));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[3];
      v32 = v18[2];
      v33 = v21;
      v30 = v19;
      v31 = v20;
      v26 = v32;
      v27 = v21;
      v25 = v20;
      v28 = v19;
      outlined init with copy of AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork(&v30, v29, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Fork);
      if (!v28)
      {
LABEL_49:

        v1[19] = MEMORY[0x1E69E7CC0];

        return;
      }

      v30 = v28;
      v31 = v25;
      v32 = v26;
      v33 = v27;

      outlined destroy of AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork(&v30, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Fork);
      if (*(&v27 + 1) >> 62)
      {
        v22 = __CocoaSet.count.getter();
        if (!v22)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v22 = *((*(&v27 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v22)
        {
          goto LABEL_36;
        }
      }

      if (v22 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v22; ++k)
      {
        if ((*(&v27 + 1) & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x193AC03C0](k, *(&v27 + 1));
        }

        else
        {
          v24 = *(*(&v27 + 1) + 8 * k + 32);
        }

        (*(*v24 + 96))();
      }

LABEL_36:

      if (++v17 == v16)
      {
        goto LABEL_49;
      }
    }
  }
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[14];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = v1[14];
    if (v5 >> 62)
    {
      v6 = __CocoaSet.count.getter();
      if (v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[14] = v4;
  }

  swift_beginAccess();
  v9 = v1[15];
  if (!(v9 >> 62))
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[15];
    if (v10 >> 62)
    {
      v11 = __CocoaSet.count.getter();
      if (v11)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[15] = v4;

    goto LABEL_26;
  }

  if (__CocoaSet.count.getter())
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      return;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return;
  }

  swift_beginAccess();
  v15 = v1[19];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= *(v15 + 16))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        v3 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = (v15 + 32 + (v17 << 6));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[3];
      v32 = v18[2];
      v33 = v21;
      v30 = v19;
      v31 = v20;
      v26 = v32;
      v27 = v21;
      v25 = v20;
      v28 = v19;
      outlined init with copy of AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork(&v30, v29, type metadata accessor for AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork);
      if (!v28)
      {
LABEL_49:

        v1[19] = MEMORY[0x1E69E7CC0];

        return;
      }

      v30 = v28;
      v31 = v25;
      v32 = v26;
      v33 = v27;

      outlined destroy of AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork(&v30, type metadata accessor for AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork);
      if (*(&v27 + 1) >> 62)
      {
        v22 = __CocoaSet.count.getter();
        if (!v22)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v22 = *((*(&v27 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v22)
        {
          goto LABEL_36;
        }
      }

      if (v22 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v22; ++k)
      {
        if ((*(&v27 + 1) & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x193AC03C0](k, *(&v27 + 1));
        }

        else
        {
          v24 = *(*(&v27 + 1) + 8 * k + 32);
        }

        (*(*v24 + 96))();
      }

LABEL_36:

      if (++v17 == v16)
      {
        goto LABEL_49;
      }
    }
  }
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[24];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = *(v1 + 192);
    if (v5 >> 62)
    {
      v6 = __CocoaSet.count.getter();
      if (v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    *(v1 + 192) = v4;
  }

  swift_beginAccess();
  v9 = *(v1 + 200);
  if (!(v9 >> 62))
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = *(v1 + 200);
    if (v10 >> 62)
    {
      v11 = __CocoaSet.count.getter();
      if (v11)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    *(v1 + 200) = v4;

    goto LABEL_26;
  }

  if (__CocoaSet.count.getter())
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      return;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return;
  }

  swift_beginAccess();
  v15 = *(v1 + 232);
  v16 = *(v15 + 16);
  if (v16)
  {
    v26 = v1;

    v1 = 0;
    while (1)
    {
      if (v1 >= *(v15 + 16))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        v3 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v17 = v15 + 32 + 104 * v1;
      v18 = *(v17 + 96);
      v19 = *(v17 + 48);
      v20 = *(v17 + 80);
      v38 = *(v17 + 64);
      v39 = v20;
      v37 = v19;
      v21 = *v17;
      v22 = *(v17 + 16);
      v36 = *(v17 + 32);
      v34 = v21;
      v35 = v22;
      v40 = v18;
      v30 = v38;
      v31 = v20;
      v28 = v36;
      v29 = v37;
      v27 = v22;
      v32 = v21;
      outlined init with copy of AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork(&v34, v33, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Fork);
      if (!v32)
      {
LABEL_49:

        *(v26 + 232) = MEMORY[0x1E69E7CC0];

        return;
      }

      v34 = v32;
      v35 = v27;
      v36 = v28;
      v37 = v29;
      v38 = v30;
      v39 = v31;
      v40 = v18;

      outlined destroy of AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork(&v34, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Fork);
      if (v18 >> 62)
      {
        v23 = __CocoaSet.count.getter();
        if (!v23)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v23 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v23)
        {
          goto LABEL_36;
        }
      }

      if (v23 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v23; ++k)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x193AC03C0](k, v18);
        }

        else
        {
          v25 = *(v18 + 8 * k + 32);
        }

        (*(*v25 + 96))();
      }

LABEL_36:

      if (++v1 == v16)
      {
        goto LABEL_49;
      }
    }
  }
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[14];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = v1[14];
    if (v5 >> 62)
    {
      v6 = __CocoaSet.count.getter();
      if (v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[14] = v4;
  }

  swift_beginAccess();
  v9 = v1[15];
  if (!(v9 >> 62))
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[15];
    if (v10 >> 62)
    {
      v11 = __CocoaSet.count.getter();
      if (v11)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[15] = v4;

    goto LABEL_26;
  }

  if (__CocoaSet.count.getter())
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      return;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return;
  }

  swift_beginAccess();
  v15 = v1[19];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= *(v15 + 16))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        v3 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = (v15 + 32 + (v17 << 6));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[3];
      v32 = v18[2];
      v33 = v21;
      v30 = v19;
      v31 = v20;
      v26 = v32;
      v27 = v21;
      v25 = v20;
      v28 = v19;
      outlined init with copy of AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork(&v30, v29, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Fork);
      if (!v28)
      {
LABEL_49:

        v1[19] = MEMORY[0x1E69E7CC0];

        return;
      }

      v30 = v28;
      v31 = v25;
      v32 = v26;
      v33 = v27;

      outlined destroy of AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork(&v30, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Fork);
      if (*(&v27 + 1) >> 62)
      {
        v22 = __CocoaSet.count.getter();
        if (!v22)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v22 = *((*(&v27 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v22)
        {
          goto LABEL_36;
        }
      }

      if (v22 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v22; ++k)
      {
        if ((*(&v27 + 1) & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x193AC03C0](k, *(&v27 + 1));
        }

        else
        {
          v24 = *(*(&v27 + 1) + 8 * k + 32);
        }

        (*(*v24 + 96))();
      }

LABEL_36:

      if (++v17 == v16)
      {
        goto LABEL_49;
      }
    }
  }
}

{
  swift_beginAccess();
  v1 = v0[14];
  if (v1 >> 62)
  {
    goto LABEL_53;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v0[14];
    if (v4 >> 62)
    {
      v5 = __CocoaSet.count.getter();
      if (v5)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_6:
        if (v5 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        v6 = v0;

        for (i = 0; i != v5; ++i)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v4);
          }

          else
          {
            v8 = *(v4 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }

        v0 = v6;
      }
    }

    v0[14] = v3;
  }

  swift_beginAccess();
  v9 = v0[15];
  if (!(v9 >> 62))
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v0[15];
    if (v10 >> 62)
    {
      v11 = __CocoaSet.count.getter();
      if (v11)
      {
LABEL_18:
        if (v11 >= 1)
        {
          v12 = v0;

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v14 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v14 = *(v10 + 8 * j + 32);
            }

            (*(*v14 + 96))();
          }

          v0 = v12;
          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v0[15] = v3;

    goto LABEL_26;
  }

  if (__CocoaSet.count.getter())
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v15 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      return;
    }
  }

  else if (static Semantics.forced < v15)
  {
    return;
  }

  swift_beginAccess();
  v16 = v0[19];
  v17 = *(v16 + 16);
  if (v17)
  {
    v25 = v0;

    v18 = 0;
    while (1)
    {
      if (v18 >= *(v16 + 16))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        v2 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v19 = (v16 + 32 + (v18 << 6));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[3];
      v33 = v19[2];
      v34 = v22;
      v31 = v20;
      v32 = v21;
      v27 = v33;
      v28 = v22;
      v26 = v21;
      v29 = v20;
      outlined init with copy of AnimatorState<_AnyAnimatableData>.Fork(&v31, v30, &lazy cache variable for type metadata for AnimatorState<Color.ResolvedHDR._Animatable>.Fork, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable);
      if (!v29)
      {
LABEL_49:

        v25[19] = MEMORY[0x1E69E7CC0];

        return;
      }

      v31 = v29;
      v32 = v26;
      v33 = v27;
      v34 = v28;

      outlined destroy of AnimatorState<_AnyAnimatableData>.Fork(&v31, &lazy cache variable for type metadata for AnimatorState<Color.ResolvedHDR._Animatable>.Fork, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable);
      if (*(&v28 + 1) >> 62)
      {
        v23 = __CocoaSet.count.getter();
        if (!v23)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v23 = *((*(&v28 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v23)
        {
          goto LABEL_36;
        }
      }

      if (v23 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v23; ++k)
      {
        if ((*(&v28 + 1) & 0xC000000000000001) != 0)
        {
          v0 = MEMORY[0x193AC03C0](k, *(&v28 + 1));
        }

        else
        {
          v0 = *(*(&v28 + 1) + 8 * k + 32);
        }

        (*(*v0 + 96))();
      }

LABEL_36:

      if (++v18 == v17)
      {
        goto LABEL_49;
      }
    }
  }
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[10];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = v1[10];
    if (v5 >> 62)
    {
      v6 = __CocoaSet.count.getter();
      if (v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[10] = v4;
  }

  swift_beginAccess();
  v9 = v1[11];
  if (!(v9 >> 62))
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[11];
    if (v10 >> 62)
    {
      v11 = __CocoaSet.count.getter();
      if (v11)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[11] = v4;

    goto LABEL_26;
  }

  if (__CocoaSet.count.getter())
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      return;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return;
  }

  swift_beginAccess();
  v15 = v1[15];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= *(v15 + 16))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        v3 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = (v15 + 32 + 48 * v17);
      v19 = v18[5];
      v20 = *v18;

      if (!v20)
      {
LABEL_49:

        v1[15] = MEMORY[0x1E69E7CC0];

        return;
      }

      if (v19 >> 62)
      {
        v21 = __CocoaSet.count.getter();
        if (!v21)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v21)
        {
          goto LABEL_36;
        }
      }

      if (v21 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v21; ++k)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x193AC03C0](k, v19);
        }

        else
        {
          v23 = *(v19 + 8 * k + 32);
        }

        (*(*v23 + 96))();
      }

LABEL_36:
      ++v17;

      if (v17 == v16)
      {
        goto LABEL_49;
      }
    }
  }
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[16];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = v1[16];
    if (v5 >> 62)
    {
      v6 = __CocoaSet.count.getter();
      if (v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[16] = v4;
  }

  swift_beginAccess();
  v9 = v1[17];
  if (!(v9 >> 62))
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[17];
    if (v10 >> 62)
    {
      v11 = __CocoaSet.count.getter();
      if (v11)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[17] = v4;

    goto LABEL_26;
  }

  if (__CocoaSet.count.getter())
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      return;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return;
  }

  swift_beginAccess();
  v15 = v1[21];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= v16)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        v3 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = *(v15 + 32 + 72 * v17 + 64);
      if (v18 >> 62)
      {
        v19 = __CocoaSet.count.getter();
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      if (v19 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v19; ++k)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x193AC03C0](k, v18);
        }

        else
        {
          v21 = *(v18 + 8 * k + 32);
        }

        (*(*v21 + 96))();
      }

LABEL_37:
      ++v17;
      v16 = *(v15 + 16);
      if (v17 == v16)
      {

        v1[21] = MEMORY[0x1E69E7CC0];

        return;
      }
    }
  }
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[14];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = v1[14];
    if (v5 >> 62)
    {
      v6 = __CocoaSet.count.getter();
      if (v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[14] = v4;
  }

  swift_beginAccess();
  v9 = v1[15];
  if (!(v9 >> 62))
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[15];
    if (v10 >> 62)
    {
      v11 = __CocoaSet.count.getter();
      if (v11)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[15] = v4;

    goto LABEL_26;
  }

  if (__CocoaSet.count.getter())
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      return;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return;
  }

  swift_beginAccess();
  v15 = v1[19];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= v16)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        v3 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = *(v15 + 32 + (v17 << 6) + 56);
      if (v18 >> 62)
      {
        v19 = __CocoaSet.count.getter();
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      if (v19 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v19; ++k)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x193AC03C0](k, v18);
        }

        else
        {
          v21 = *(v18 + 8 * k + 32);
        }

        (*(*v21 + 96))();
      }

LABEL_37:
      ++v17;
      v16 = *(v15 + 16);
      if (v17 == v16)
      {

        v1[19] = v4;

        return;
      }
    }
  }
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[18];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = v1[18];
    if (v5 >> 62)
    {
      v6 = __CocoaSet.count.getter();
      if (v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[18] = v4;
  }

  swift_beginAccess();
  v9 = v1[19];
  if (!(v9 >> 62))
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[19];
    if (v10 >> 62)
    {
      v11 = __CocoaSet.count.getter();
      if (v11)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[19] = v4;

    goto LABEL_26;
  }

  if (__CocoaSet.count.getter())
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      return;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return;
  }

  swift_beginAccess();
  v15 = v1[23];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= v16)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        v3 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = *(v15 + 32 + 80 * v17 + 72);
      if (v18 >> 62)
      {
        v19 = __CocoaSet.count.getter();
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      if (v19 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v19; ++k)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x193AC03C0](k, v18);
        }

        else
        {
          v21 = *(v18 + 8 * k + 32);
        }

        (*(*v21 + 96))();
      }

LABEL_37:
      ++v17;
      v16 = *(v15 + 16);
      if (v17 == v16)
      {

        v1[23] = MEMORY[0x1E69E7CC0];

        return;
      }
    }
  }
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[22];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = v1[22];
    if (v5 >> 62)
    {
      v6 = __CocoaSet.count.getter();
      if (v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[22] = v4;
  }

  swift_beginAccess();
  v9 = v1[23];
  if (!(v9 >> 62))
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[23];
    if (v10 >> 62)
    {
      v11 = __CocoaSet.count.getter();
      if (v11)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[23] = v4;

    goto LABEL_26;
  }

  if (__CocoaSet.count.getter())
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      return;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return;
  }

  swift_beginAccess();
  v15 = v1[27];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= v16)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        v3 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = *(v15 + 32 + 96 * v17 + 88);
      if (v18 >> 62)
      {
        v19 = __CocoaSet.count.getter();
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      if (v19 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v19; ++k)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x193AC03C0](k, v18);
        }

        else
        {
          v21 = *(v18 + 8 * k + 32);
        }

        (*(*v21 + 96))();
      }

LABEL_37:
      ++v17;
      v16 = *(v15 + 16);
      if (v17 == v16)
      {

        v1[27] = MEMORY[0x1E69E7CC0];

        return;
      }
    }
  }
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[34];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = v1[34];
    if (v5 >> 62)
    {
      v6 = __CocoaSet.count.getter();
      if (v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[34] = v4;
  }

  swift_beginAccess();
  v9 = v1[35];
  if (!(v9 >> 62))
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[35];
    if (v10 >> 62)
    {
      v11 = __CocoaSet.count.getter();
      if (v11)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[35] = v4;

    goto LABEL_26;
  }

  if (__CocoaSet.count.getter())
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      return;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return;
  }

  swift_beginAccess();
  v15 = v1[39];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= v16)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        v3 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = *(v15 + 32 + 144 * v17 + 136);
      if (v18 >> 62)
      {
        v19 = __CocoaSet.count.getter();
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      if (v19 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v19; ++k)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x193AC03C0](k, v18);
        }

        else
        {
          v21 = *(v18 + 8 * k + 32);
        }

        (*(*v21 + 96))();
      }

LABEL_37:
      ++v17;
      v16 = *(v15 + 16);
      if (v17 == v16)
      {

        v1[39] = MEMORY[0x1E69E7CC0];

        return;
      }
    }
  }
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[30];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = v1[30];
    if (v5 >> 62)
    {
      v6 = __CocoaSet.count.getter();
      if (v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[30] = v4;
  }

  swift_beginAccess();
  v9 = v1[31];
  if (!(v9 >> 62))
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[31];
    if (v10 >> 62)
    {
      v11 = __CocoaSet.count.getter();
      if (v11)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[31] = v4;

    goto LABEL_26;
  }

  if (__CocoaSet.count.getter())
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      return;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return;
  }

  swift_beginAccess();
  v15 = v1[35];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= v16)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        v3 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = *(v15 + 32 + (v17 << 7) + 120);
      if (v18 >> 62)
      {
        v19 = __CocoaSet.count.getter();
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      if (v19 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v19; ++k)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x193AC03C0](k, v18);
        }

        else
        {
          v21 = *(v18 + 8 * k + 32);
        }

        (*(*v21 + 96))();
      }

LABEL_37:
      ++v17;
      v16 = *(v15 + 16);
      if (v17 == v16)
      {

        v1[35] = v4;

        return;
      }
    }
  }
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[20];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = v1[20];
    if (v5 >> 62)
    {
      v6 = __CocoaSet.count.getter();
      if (v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[20] = v4;
  }

  swift_beginAccess();
  v9 = v1[21];
  if (!(v9 >> 62))
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[21];
    if (v10 >> 62)
    {
      v11 = __CocoaSet.count.getter();
      if (v11)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[21] = v4;

    goto LABEL_26;
  }

  if (__CocoaSet.count.getter())
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      return;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return;
  }

  swift_beginAccess();
  v15 = v1[25];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= v16)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        v3 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = *(v15 + 32 + 88 * v17 + 80);
      if (v18 >> 62)
      {
        v19 = __CocoaSet.count.getter();
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      if (v19 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v19; ++k)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x193AC03C0](k, v18);
        }

        else
        {
          v21 = *(v18 + 8 * k + 32);
        }

        (*(*v21 + 96))();
      }

LABEL_37:
      ++v17;
      v16 = *(v15 + 16);
      if (v17 == v16)
      {

        v1[25] = MEMORY[0x1E69E7CC0];

        return;
      }
    }
  }
}

{
  v1 = v0;
  v2 = v0 + 72;
  swift_beginAccess();
  v3 = v0[72];
  if (v3 >> 62)
  {
    goto LABEL_53;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = *v2;
    if (*v2 >> 62)
    {
      v7 = __CocoaSet.count.getter();
      if (v7)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
LABEL_6:
        if (v7 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v7; ++i)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x193AC03C0](i, v6);
          }

          else
          {
            v9 = *(v6 + 8 * i + 32);
          }

          (*(*v9 + 96))();
        }
      }
    }

    *v2 = v5;
  }

  v10 = v1 + 73;
  swift_beginAccess();
  v11 = v1[73];
  if (!(v11 >> 62))
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

LABEL_16:
    v12 = *v10;
    if (*v10 >> 62)
    {
      v13 = __CocoaSet.count.getter();
      if (v13)
      {
LABEL_18:
        if (v13 >= 1)
        {

          for (j = 0; j != v13; ++j)
          {
            if ((v12 & 0xC000000000000001) != 0)
            {
              v15 = MEMORY[0x193AC03C0](j, v12);
            }

            else
            {
              v15 = *(v12 + 8 * j + 32);
            }

            (*(*v15 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return;
      }
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    *v10 = v5;

    goto LABEL_26;
  }

  if (__CocoaSet.count.getter())
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v16 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      return;
    }
  }

  else if (static Semantics.forced < v16)
  {
    return;
  }

  v2 = v1 + 77;
  swift_beginAccess();
  v1 = v1[77];
  v17 = v1[2];
  if (v17)
  {

    v18 = 0;
    while (1)
    {
      if (v18 >= v17)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        v4 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v19 = v1[37 * v18 + 40];
      if (v19 >> 62)
      {
        v20 = __CocoaSet.count.getter();
        if (!v20)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v20)
        {
          goto LABEL_37;
        }
      }

      if (v20 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v20; ++k)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x193AC03C0](k, v19);
        }

        else
        {
          v22 = *(v19 + 8 * k + 32);
        }

        (*(*v22 + 96))();
      }

LABEL_37:
      ++v18;
      v17 = v1[2];
      if (v18 == v17)
      {

        *v2 = MEMORY[0x1E69E7CC0];

        return;
      }
    }
  }
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[12];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = v1[12];
    if (v5 >> 62)
    {
      v6 = __CocoaSet.count.getter();
      if (v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[12] = v4;
  }

  swift_beginAccess();
  v9 = v1[13];
  if (!(v9 >> 62))
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[13];
    if (v10 >> 62)
    {
      v11 = __CocoaSet.count.getter();
      if (v11)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[13] = v4;

    goto LABEL_26;
  }

  if (__CocoaSet.count.getter())
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      return;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return;
  }

  swift_beginAccess();
  v15 = v1[17];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= v16)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        v3 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = *(v15 + 32 + 56 * v17 + 48);
      if (v18 >> 62)
      {
        v19 = __CocoaSet.count.getter();
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      if (v19 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v19; ++k)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x193AC03C0](k, v18);
        }

        else
        {
          v21 = *(v18 + 8 * k + 32);
        }

        (*(*v21 + 96))();
      }

LABEL_37:
      ++v17;
      v16 = *(v15 + 16);
      if (v17 == v16)
      {

        v1[17] = MEMORY[0x1E69E7CC0];

        return;
      }
    }
  }
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[32];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = v1[32];
    if (v5 >> 62)
    {
      v6 = __CocoaSet.count.getter();
      if (v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[32] = v4;
  }

  swift_beginAccess();
  v9 = v1[33];
  if (!(v9 >> 62))
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[33];
    if (v10 >> 62)
    {
      v11 = __CocoaSet.count.getter();
      if (v11)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[33] = v4;

    goto LABEL_26;
  }

  if (__CocoaSet.count.getter())
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      return;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return;
  }

  swift_beginAccess();
  v15 = v1[37];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= v16)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        v3 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = *(v15 + 32 + 136 * v17 + 128);
      if (v18 >> 62)
      {
        v19 = __CocoaSet.count.getter();
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      if (v19 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v19; ++k)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x193AC03C0](k, v18);
        }

        else
        {
          v21 = *(v18 + 8 * k + 32);
        }

        (*(*v21 + 96))();
      }

LABEL_37:
      ++v17;
      v16 = *(v15 + 16);
      if (v17 == v16)
      {

        v1[37] = MEMORY[0x1E69E7CC0];

        return;
      }
    }
  }
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[40];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = v1[40];
    if (v5 >> 62)
    {
      v6 = __CocoaSet.count.getter();
      if (v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[40] = v4;
  }

  swift_beginAccess();
  v9 = v1[41];
  if (!(v9 >> 62))
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[41];
    if (v10 >> 62)
    {
      v11 = __CocoaSet.count.getter();
      if (v11)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[41] = v4;

    goto LABEL_26;
  }

  if (__CocoaSet.count.getter())
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      return;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return;
  }

  swift_beginAccess();
  v15 = v1[45];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= v16)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        v3 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = *(v15 + 32 + 168 * v17 + 160);
      if (v18 >> 62)
      {
        v19 = __CocoaSet.count.getter();
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      if (v19 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v19; ++k)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x193AC03C0](k, v18);
        }

        else
        {
          v21 = *(v18 + 8 * k + 32);
        }

        (*(*v21 + 96))();
      }

LABEL_37:
      ++v17;
      v16 = *(v15 + 16);
      if (v17 == v16)
      {

        v1[45] = MEMORY[0x1E69E7CC0];

        return;
      }
    }
  }
}