void AnyBidirectionalCollection.formIndex(before:)(unint64_t *a1, uint64_t *a2)
{
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull(*a1);
  v6 = *a1;
  v5 = a1[1];
  v7 = *a2;
  if (isUniquelyReferenced_nonNull)
  {
    (*(v7 + 360))(v6, v5);
  }

  else
  {
    v8 = (*(v7 + 352))(v6, v5);
    v10 = v9;
    swift_unknownObjectRelease(v6);
    *a1 = v8;
    a1[1] = v10;
  }
}

id protocol witness for Collection.startIndex.getter in conformance AnyCollection<A>@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void)@<X2>, void *a3@<X8>)
{
  v5 = a2(*v3, *(a1 + 16));
  *a3 = v5;
  a3[1] = v6;

  return swift_unknownObjectRetain(v5);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance AnyRandomAccessCollection<A>(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x28, 0x843DuLL);
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = AnyRandomAccessCollection.subscript.read(v7, *a2, a2[1], *v3, *(a3 + 16));
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*AnyRandomAccessCollection.subscript.read(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  *a1 = a5;
  v9 = *(a5 - 8);
  a1[1] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v11 = swift_coroFrameAlloc(v10, 0x7EC4uLL);
  }

  else
  {
    v11 = malloc(v10);
  }

  a1[2] = v11;
  (*(*a4 + 256))(a2, a3);
  return _ArrayBuffer.subscript.read;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance AnySequence<A>@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = (*(*v3 + 96))();
  result = v3;
  *a1 = v4;
  return result;
}

uint64_t LazyFilterSequence.Iterator.init(_base:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, Class *a4@<X3>, int **a5@<X4>, uint64_t a6@<X8>)
{
  swift_getAssociatedTypeWitness(0, a5, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for LazyFilterSequence.Iterator(0, a4, a5, v13);
  v15 = (a6 + *(result + 36));
  *v15 = a2;
  v15[1] = a3;
  return result;
}

uint64_t LazyFilterSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v39 = a1;
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v6 = v5;
  v9 = type metadata accessor for Optional(0, v5, v7, v8);
  v31 = *(v9 - 8);
  v32 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v30 - v12;
  v14 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v11, v15);
  v17 = &v30 - v16;
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v19 = v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, v4, v18, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v21 = *(AssociatedConformanceWitness + 16);
  v38 = v19;
  v22 = swift_checkMetadataState(0, v19);
  v36 = v21;
  v37 = AssociatedConformanceWitness;
  v21(v22, AssociatedConformanceWitness);
  v34 = v14;
  v35 = *(v14 + 48);
  if (v35(v13, 1, v6) == 1)
  {
LABEL_5:
    (*(v31 + 8))(v13, v32);
    v26 = 1;
    v27 = v33;
  }

  else
  {
    v23 = *(v34 + 32);
    v24 = (v34 + 8);
    while (1)
    {
      v23(v17, v13, v6);
      if ((*(v2 + *(v39 + 36)))(v17))
      {
        break;
      }

      (*v24)(v17, v6);
      v25 = swift_checkMetadataState(0, v38);
      v36(v25, v37);
      if (v35(v13, 1, v6) == 1)
      {
        goto LABEL_5;
      }
    }

    v28 = v33;
    v23(v33, v17, v6);
    v27 = v28;
    v26 = 0;
  }

  return (*(v34 + 56))(v27, v26, 1, v6);
}

__n128 LazyFilterSequence.makeIterator()@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a1 + 16);
  MEMORY[0x1EEE9AC00](a1, a2);
  (*(v9 + 32))(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v7);
  v10 = *(a1 + 24);
  (*(v10 + 32))(v7, v10);
  v11 = *(a1 + 36);
  v13 = type metadata accessor for LazyFilterSequence.Iterator(0, v7, v10, v12);
  result = *(v4 + v11);
  *(a3 + *(v13 + 36)) = result;
  return result;
}

uint64_t LazyFilterSequence._customContainsEquatableElement(_:)(uint64_t a1, uint64_t a2)
{
  if (((*(v2 + *(a2 + 36)))() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 16);
  v6 = *(*(a2 + 24) + 48);

  return v6(a1, v5);
}

uint64_t LazyFilterSequence<>.startIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 8);
  v35 = a1;
  v8 = *(a1 + 16);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v34 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v33 = &v29 - v12;
  swift_getAssociatedTypeWitness(0, a2, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v14 = v13;
  v36 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v29 - v16;
  v18 = a3;
  (*(a2 + 64))(v8, a2);
  v40 = *(a2 + 72);
  v41 = a2 + 72;
  v19 = v8;
  v42 = v14;
  v39 = *(swift_getAssociatedConformanceWitness(a2, v8, v14, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
  v37 = *(v39 + 8);
  v38 = v39 + 8;
  ++v36;
  v31 = (v10 + 16);
  v32 = a2 + 80;
  v29 = a2 + 192;
  v30 = (v10 + 8);
  v20 = v33;
  while (1)
  {
    v40(v19, a2);
    v21 = v42;
    v22 = v37(v18, v17, v42, v39);
    result = (*v36)(v17, v21);
    if (v22)
    {
      break;
    }

    v24 = *(v4 + *(v35 + 36));
    v25 = (*(a2 + 80))(v43, v18, v19, a2);
    v26 = v4;
    v27 = v34;
    (*v31)(v20);
    (v25)(v43, 0);
    LOBYTE(v25) = v24(v20);
    v28 = v27;
    v4 = v26;
    result = (*v30)(v20, v28);
    if (v25)
    {
      break;
    }

    (*(a2 + 192))(v18, v19, a2);
  }

  return result;
}

uint64_t LazyFilterSequence<>.index(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int **a3@<X2>, char *a4@<X8>)
{
  swift_getAssociatedTypeWitness(0, a3, *(a2 + 16), &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  (*(*(v8 - 8) + 16))(a4, a1, v8);

  return LazyFilterSequence<>.formIndex(after:)(a4, a2, a3);
}

uint64_t LazyFilterSequence<>.formIndex(after:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = *(a3 + 8);
  v49 = a2;
  v9 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, v8, v9, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v48 = v10;
  v58 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v47 = &v40 - v12;
  swift_getAssociatedTypeWitness(0, v5, v9, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v14 = v13;
  v15 = *(v13 - 8);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v40 - v21;
  (*(v15 + 16))(&v40 - v21, a1, v14);
  v55 = *(v5 + 72);
  v56 = v5 + 72;
  v55(v9, v5);
  v23 = *(swift_getAssociatedConformanceWitness(v5, v9, v14, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
  v24 = *(v23 + 8);
  v53 = v23 + 8;
  v54 = v23;
  v52 = v24;
  v25 = (v24)(v22, v19, v14);
  v26 = *(v15 + 8);
  v57 = v19;
  v26(v19, v14);
  if (v25)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v41 = v15;
  v42 = a1;
  v26(a1, v14);
  v50 = *(v5 + 192);
  v51 = v5 + 192;
  v44 = (v58 + 16);
  v45 = v5 + 80;
  v43 = (v58 + 8);
  v27 = v26;
  v46 = v15 + 8;
  do
  {
    v50(v22, v9, v5);
    v28 = v57;
    v55(v9, v5);
    v29 = v52(v22, v28, v14, v54);
    v27(v28, v14);
    if (v29)
    {
      break;
    }

    v58 = *(v4 + *(v49 + 36));
    v30 = (*(v5 + 80))(v59, v22, v9, v5);
    v31 = v14;
    v32 = v47;
    v33 = v27;
    v34 = v22;
    v35 = v5;
    v36 = v48;
    (*v44)(v47);
    (v30)(v59, 0);
    LOBYTE(v30) = v58(v32);
    v37 = v32;
    v14 = v31;
    v38 = v36;
    v5 = v35;
    v22 = v34;
    v27 = v33;
    (*v43)(v37, v38);
  }

  while ((v30 & 1) == 0);
  return (*(v41 + 32))(v42, v22, v14);
}

uint64_t LazyFilterSequence<>._advanceIndex(_:step:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a4;
  v50 = a2;
  v8 = *(a4 + 8);
  v39 = a3;
  v9 = *(a3 + 16);
  swift_getAssociatedTypeWitness(0, v8, v9, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v38 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v37 = &v33 - v13;
  swift_getAssociatedTypeWitness(0, v6, v9, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v33 - v18;
  v47 = *(v6 + 136);
  v48 = v6 + 136;
  v45 = *(v6 + 72);
  v46 = v6 + 72;
  v51 = v9;
  v44 = *(swift_getAssociatedConformanceWitness(v6, v9, v15, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
  v42 = *(v44 + 8);
  v43 = v44 + 8;
  v20 = *(v16 + 32);
  v49 = v16 + 32;
  v40 = (v16 + 8);
  v41 = v20;
  v35 = (v11 + 16);
  v36 = v6 + 80;
  v34 = (v11 + 8);
  v21 = v38;
  do
  {
    v41(v19, a1, v15);
    v22 = v51;
    v47(v19, v50, v51, v6);
    v23 = *v40;
    (*v40)(v19, v15);
    v45(v22, v6);
    v24 = v42(a1, v19, v15, v44);
    result = (v23)(v19, v15);
    if (v24)
    {
      break;
    }

    v26 = *(v5 + *(v39 + 36));
    v27 = (*(v6 + 80))(v52, a1, v51, v6);
    v28 = v6;
    v29 = a1;
    v30 = v5;
    v31 = v37;
    (*v35)(v37);
    (v27)(v52, 0);
    LOBYTE(v27) = v26(v31);
    v32 = v31;
    v5 = v30;
    a1 = v29;
    v6 = v28;
    result = (*v34)(v32, v21);
  }

  while ((v27 & 1) == 0);
  return result;
}

uint64_t LazyFilterSequence<>._ensureBidirectional(step:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, a3, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  v27 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v26 - v13;
  v17 = type metadata accessor for Optional(0, v7, v15, v16);
  result = MEMORY[0x1EEE9AC00](v17, v18);
  v22 = &v26 - v21;
  if (a1 < 0)
  {
    v23 = a1;
    v24 = v20;
    (*(a3 + 72))(v5, a3);
    (*(a3 + 64))(v5, a3);
    (*(a3 + 144))(v14, v23, v11, v5, a3);
    v25 = *(v27 + 8);
    v25(v11, v7);
    v25(v14, v7);
    return (*(v24 + 8))(v22, v17);
  }

  return result;
}

uint64_t LazyFilterSequence<>.distance(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v8 = *(a3 + 16);
  swift_getAssociatedTypeWitness(0, a4, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = v9;
  v34 = *(v9 - 8);
  v11 = v34;
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v34 - v17;
  v19 = *(a4 + 152);
  v37 = v4;
  v19(a1, a2, v8, a4);
  v35 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, v8, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v21 = (*(AssociatedConformanceWitness + 40))(a1, a2, v10, AssociatedConformanceWitness);
  v22 = *(v11 + 16);
  if (v21)
  {
    v23 = a2;
  }

  else
  {
    v23 = a1;
  }

  if (v21)
  {
    v24 = a1;
  }

  else
  {
    v24 = a2;
  }

  if (v21)
  {
    v25 = -1;
  }

  else
  {
    v25 = 1;
  }

  v22(v18, v23, v10);
  v22(v15, v24, v10);
  v26 = v15;
  v27 = *(AssociatedConformanceWitness + 8);
  v28 = *(v27 + 8);
  result = v28(v18, v26, v10, v27);
  v30 = v34;
  v31 = 0;
  if (result)
  {
LABEL_15:
    v33 = *(v30 + 8);
    v33(v26, v10);
    v33(v18, v10);
    return v31;
  }

  else
  {
    v32 = 0;
    while (1)
    {
      v31 = v32 + v25;
      if (__OFADD__(v32, v25))
      {
        break;
      }

      LazyFilterSequence<>.formIndex(after:)(v18, v36, v35);
      result = v28(v18, v26, v10, v27);
      v32 += v25;
      if (result)
      {
        v30 = v34;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t LazyFilterSequence<>.index(_:offsetBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, swift *a4@<X3>, uint64_t a5@<X8>)
{
  v72 = a5;
  v9 = *(a4 + 1);
  v59 = a3;
  v10 = *(a3 + 16);
  swift_getAssociatedTypeWitness(0, v9, v10, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v58 = v11;
  v54 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v57 = &v51 - v13;
  v75 = a4;
  swift_getAssociatedTypeWitness(0, a4, v10, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v15 = v14;
  v16 = *(v14 - 8);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v51 - v22;
  v26 = type metadata accessor for Optional(0, v15, v24, v25);
  v70 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v51 - v28;
  v71 = v16;
  result = (*(v16 + 16))(a5, a1, v15);
  v31 = a2 >> 63;
  v74 = v10;
  v60 = a2 >> 63;
  v61 = a2 > 0;
  if (a2 >> 63 < 0)
  {
    v69 = v26;
    v33 = v75;
    (*(v75 + 9))(v10, v75);
    (*(v33 + 8))(v10, v33);
    (*(v33 + 18))(v23, v31 | (a2 > 0), v20, v10, v33);
    v34 = *(v71 + 8);
    v34(v20, v15);
    v34(v23, v15);
    result = v70[1](v29, v69);
    v35 = __OFSUB__(0, a2);
    a2 = -a2;
    if (v35)
    {
      __break(1u);
      return result;
    }

    v31 = v60;
    v32 = v61;
    if (a2 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else
  {
    v32 = a2 > 0;
    if (!a2)
    {
      return result;
    }
  }

  v36 = v75;
  v69 = *(v75 + 17);
  v70 = (v75 + 136);
  v67 = *(v75 + 9);
  v68 = v75 + 72;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v75, v74, v15, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v38 = 0;
  v66 = *(AssociatedConformanceWitness + 8);
  v64 = *(v66 + 8);
  v65 = v66 + 8;
  v39 = *(v71 + 32);
  v71 += 32;
  v62 = (v71 - 24);
  v63 = v39;
  v56 = v36 + 80;
  v55 = (v54 + 2);
  ++v54;
  v52 = a2;
  do
  {
    v53 = v38 + 1;
    do
    {
      v40 = v72;
      v63(v23, v72, v15);
      v41 = v74;
      v42 = v75;
      v69(v23, v31 | v32, v74, v75);
      v43 = *v62;
      (*v62)(v23, v15);
      v67(v41, v42);
      v44 = v64(v40, v23, v15, v66);
      result = (v43)(v23, v15);
      if (v44)
      {
        break;
      }

      v45 = *(v73 + *(v59 + 36));
      v46 = (*(v75 + 10))(v76, v72, v74);
      v47 = v15;
      v48 = v57;
      v49 = v58;
      (*v55)(v57);
      (v46)(v76, 0);
      LOBYTE(v46) = v45(v48);
      v50 = v48;
      v15 = v47;
      v31 = v60;
      v32 = v61;
      result = (*v54)(v50, v49);
    }

    while ((v46 & 1) == 0);
    v38 = v53;
  }

  while (v53 != v52);
  return result;
}

uint64_t abs<A>(_:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a3;
  v32 = a4;
  v33 = *(a2 - 1);
  v34 = a1;
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v29 = v6;
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 8);
  v8 = *(v7 + 16);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v29 - v12;
  swift_getAssociatedTypeWitness(0, v7, a2, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v14, v18);
  v21 = &v29 - v20;
  if (v19 == a2)
  {
    v28 = v33;
    (*(v7 + 56))(a2, v7);
    if (v17 != v5)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    (*(v28 + 16))(v32, v21, a2);
    return (*(v16 + 8))(v21, v15);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, a2, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v10, AssociatedConformanceWitness);
    v23 = v30;
    (*(v8 + 24))(v13, a2, v8);
    v24 = v34;
    v25 = (*(v31 + 16))(v34, v23, a2);
    v26 = v33;
    (*(v33 + 8))(v23, a2);
    if (v25)
    {
      return (*(v29 + 16))(v24, a2);
    }

    else
    {
      return (*(v26 + 16))(v32, v24, a2);
    }
  }
}

uint64_t LazyFilterSequence<>.formIndex(_:offsetBy:)(uint64_t a1, uint64_t a2, uint64_t a3, int **a4)
{
  swift_getAssociatedTypeWitness(0, a4, *(a3 + 16), &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v15 - v12;
  (*(v10 + 32))(&v15 - v12, a1, v9);
  LazyFilterSequence<>.index(_:offsetBy:)(v13, a2, a3, a4, a1);
  return (*(v10 + 8))(v13, v9);
}

uint64_t LazyFilterSequence<>.index(_:offsetBy:limitedBy:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = v5;
  v56 = a2;
  v53 = a5;
  v9 = *(a4 + 8);
  v63 = a3;
  v10 = *(a3 + 16);
  swift_getAssociatedTypeWitness(0, v9, v10, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v62 = v11;
  v72 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v61 = &v52 - v13;
  swift_getAssociatedTypeWitness(255, a4, v10, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v15 = v14;
  v73 = type metadata accessor for Optional(0, v14, v16, v17);
  v71 = *(v73 - 1);
  v19 = MEMORY[0x1EEE9AC00](v73, v18);
  v75 = &v52 - v20;
  v21 = *(v15 - 8);
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v74 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v52 - v27;
  MEMORY[0x1EEE9AC00](v26, v29);
  v30 = *(v21 + 16);
  v64 = &v52 - v31;
  v30();
  v76 = v10;
  v65 = a1 >> 63;
  v66 = a1 > 0;
  if (((a1 >> 63) & 0x8000000000000000) == 0)
  {
    if (!a1)
    {
      v72 = *(v21 + 32);
      v52 = (v21 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v32 = v64;
LABEL_4:
      v33 = v32;
      v34 = v53;
      (v72)(v53, v33, v15);
      v35 = 0;
      return (*(v21 + 56))(v34, v35, 1, v15);
    }

LABEL_7:
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, v10, v15, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
    v57 = 0;
    v75 = *(AssociatedConformanceWitness + 8);
    v73 = *(v75 + 1);
    v74 = v75 + 8;
    v70 = (a4 + 72);
    v71 = a4 + 136;
    v41 = (v21 + 8);
    v60 = a4 + 80;
    v59 = (v72 + 16);
    v58 = (v72 + 8);
    v69 = (v21 + 32);
    v52 = (v21 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v32 = v64;
    v55 = a1;
    v54 = v21;
    for (i = v73(v64, v56, v15, v75); (i & 1) == 0; i = v73(v32, v56, v15, v75))
    {
      ++v57;
      v43 = *v71;
      v67 = *v70;
      v68 = v43;
      v72 = *v69;
      do
      {
        (v72)(v28, v32, v15);
        v68(v28, v65 | v66, v10, a4);
        v44 = *v41;
        (*v41)(v28, v15);
        v67(v10, a4);
        v45 = v73(v32, v28, v15, v75);
        v44(v28, v15);
        if (v45)
        {
          break;
        }

        v46 = *(v6 + *(v63 + 36));
        v47 = (*(a4 + 80))(v77, v32, v76, a4);
        v49 = v61;
        v48 = v62;
        (*v59)(v61);
        (v47)(v77, 0);
        v50 = v46(v49);
        v10 = v76;
        LOBYTE(v47) = v50;
        v51 = v48;
        v32 = v64;
        (*v58)(v49, v51);
      }

      while ((v47 & 1) == 0);
      v21 = v54;
      if (v57 == v55)
      {
        goto LABEL_4;
      }
    }

    (*v41)(v32, v15);
    v35 = 1;
    v34 = v53;
    return (*(v21 + 56))(v34, v35, 1, v15);
  }

  (*(a4 + 72))(v10, a4);
  (*(a4 + 64))(v10, a4);
  v36 = v74;
  (*(a4 + 144))(v28, (a1 >> 63) | (a1 > 0), v74, v10, a4);
  v37 = *(v21 + 8);
  v37(v36, v15);
  v37(v28, v15);
  result = (*(v71 + 8))(v75, v73);
  v39 = __OFSUB__(0, a1);
  a1 = -a1;
  if (!v39)
  {
    v10 = v76;
    if (a1 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

BOOL LazyFilterSequence<>.formIndex(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int **a5)
{
  swift_getAssociatedTypeWitness(255, a5, *(a4 + 16), &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  v14 = type metadata accessor for Optional(0, v10, v12, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v22 - v17;
  LazyFilterSequence<>.index(_:offsetBy:limitedBy:)(a2, a3, a4, a5, &v22 - v17);
  v19 = *(v11 - 8);
  (*(v19 + 8))(a1, v11);
  v20 = (*(v19 + 48))(v18, 1, v11);
  if (v20 == 1)
  {
    (*(v15 + 8))(v18, v14);
    (*(v19 + 16))(a1, a3, v11);
  }

  else
  {
    (*(v19 + 32))(a1, v18, v11);
  }

  return v20 != 1;
}

uint64_t LazyFilterSequence<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 16);
  (*(a3 + 88))(a1, v8);
  v9 = (v4 + *(a2 + 36));
  v11 = *v9;
  v10 = v9[1];
  swift_getAssociatedTypeWitness(255, a3, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, v8, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
  v16 = (a4 + *(type metadata accessor for LazyFilterSequence(0, v13, *(AssociatedConformanceWitness + 8), v15) + 36));
  *v16 = v11;
  v16[1] = v10;

  return v10;
}

uint64_t LazyFilterSequence<>._customLastIndexOfEquatableElement(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((*(v4 + *(a2 + 36)))())
  {
    v9 = *(a3 + 128);
    v10 = *(a2 + 16);

    return v9(a1, v10, a3);
  }

  else
  {
    swift_getAssociatedTypeWitness(0, a3, *(a2 + 16), &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
    v13 = v12;
    (*(*(v12 - 8) + 56))(a4, 1, 1, v12);
    v16 = type metadata accessor for Optional(0, v13, v14, v15);
    v17 = *(*(v16 - 8) + 56);

    return v17(a4, 0, 1, v16);
  }
}

uint64_t (*protocol witness for Collection.subscript.read in conformance <> LazyFilterSequence<A>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc(0x28, 0xB433uLL);
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = LazyFilterSequence<>.subscript.read(v8, a2, a3, *(a4 - 8));
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*LazyFilterSequence<>.subscript.read(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc(0x38, 0x59D5uLL);
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v10 = *(a3 + 16);
  swift_getAssociatedTypeWitness(0, *(a4 + 8), v10, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v9[4] = v11;
  v12 = *(v11 - 8);
  v13 = v12;
  v9[5] = v12;
  v14 = *(v12 + 64);
  if (swift_coroFrameAlloc)
  {
    v15 = swift_coroFrameAlloc(v14, 0x59D5uLL);
  }

  else
  {
    v15 = malloc(v14);
  }

  v16 = v15;
  v9[6] = v15;
  v17 = (*(a4 + 80))(v9, a2, v10, a4);
  (*(v13 + 16))(v16);
  v17(v9, 0);
  return LazyDropWhileSequence<>.subscript.read;
}

uint64_t LazyFilterSequence<>.index(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  swift_getAssociatedTypeWitness(0, *(a3 + 8), *(a2 + 16), &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  (*(*(v8 - 8) + 16))(a4, a1, v8);

  return LazyFilterSequence<>.formIndex(before:)(a4, a2, a3);
}

uint64_t LazyFilterSequence<>.formIndex(before:)(char *a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v6 = *(a3 + 8);
  v7 = *(v6 + 8);
  v39 = a2;
  v8 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10 = v9;
  v37 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v33 - v12;
  swift_getAssociatedTypeWitness(0, v6, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v15 = v14;
  v16 = *(v14 - 8);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v33 - v22;
  v24 = *(v16 + 32);
  v38 = v16 + 32;
  v36 = v24;
  v24(&v33 - v22, a1, v15);
  v25 = *(v6 + 64);
  v44 = v3;
  v25(v8, v6);
  v42 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v8, v15, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v27 = (*(*(AssociatedConformanceWitness + 8) + 8))(v23, v20, v15);
  (*(v16 + 8))(v20, v15);
  if (v27)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v34 = v15;
  v35 = a1;
  v40 = *(v43 + 40);
  v41 = v43 + 40;
  v39 = *(v44 + *(v39 + 36));
  v28 = *(v42 + 80);
  v29 = (v37 + 16);
  v30 = (v37 + 8);
  do
  {
    v40(v23, v8, v43);
    v31 = v28(v45, v23, v8, v42);
    (*v29)(v13);
    (v31)(v45, 0);
    LOBYTE(v31) = (v39)(v13);
    (*v30)(v13, v10);
  }

  while ((v31 & 1) == 0);
  return v36(v35, v23, v34);
}

uint64_t LazyFilterSequence.filter(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v24 = a1;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  (*(*(v13 - 8) + 16))(a4, v5, v13);
  v14 = *(v9 + 32);
  v14(v11, v5, a3);
  v15 = *(v9 + 80);
  v16 = (v15 + 32) & ~v15;
  v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject(&unk_1EEEADEA8, (v17 + 16), v15 | 7);
  v19 = *(a3 + 24);
  *(v18 + 2) = v13;
  *(v18 + 3) = v19;
  v14(v18 + v16, v11, a3);
  v20 = (v18 + v17);
  *v20 = v24;
  v20[1] = a2;
  v21 = (a4 + *(a3 + 36));
  *v21 = partial apply for closure #1 in LazyFilterSequence.filter(_:);
  v21[1] = v18;
  return a2;
}

uint64_t LazySequenceProtocol.flatMap<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(a5 + 32))(a3, a5);
  swift_getAssociatedTypeWitness(255, a5, a3, &protocol requirements base descriptor for LazySequenceProtocol, associated type descriptor for LazySequenceProtocol.Elements);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v12, &protocol requirements base descriptor for LazySequenceProtocol, associated conformance descriptor for LazySequenceProtocol.LazySequenceProtocol.Elements: Sequence);
  v15 = (a6 + *(type metadata accessor for LazyMapSequence(0, v13, a4, AssociatedConformanceWitness) + 44));
  *v15 = a1;
  v15[1] = a2;

  return a2;
}

uint64_t LazySequenceProtocol<>.joined()(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))();
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t closure #2 in LazySequenceProtocol.compactMap<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  v7 = type metadata accessor for Optional(0, a2, a2, a4);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v14 - v9;
  (*(v11 + 16))(&v14 - v9, a1);
  v12 = *(a2 - 8);
  if ((*(v12 + 48))(v10, 1, a2) == 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(v12 + 32))(a3, v10, a2);
}

uint64_t FlattenSequence.Iterator.init(_base:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, int **a3@<X2>, int **a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(type metadata accessor for FlattenSequence.Iterator(0, a2, a3, a4) + 44);
  swift_getAssociatedTypeWitness(255, a3, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  swift_getAssociatedTypeWitness(0, a4, v11, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  (*(*(v12 - 8) + 56))(a5 + v10, 1, 1, v12);
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v14 = *(*(v13 - 8) + 32);

  return v14(a5, a1, v13);
}

uint64_t specialized FlattenSequence.Iterator.next()()
{
  v1 = v0[7];
  if (!v1)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v2 = v0[6];
    if ((v1 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(v1) & 0xF;
    }

    else
    {
      v3 = v2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = v0[8];
    if (v4 >> 14 != 4 * v3)
    {
      v10 = (v2 >> 59) & 1;
      if ((v1 & 0x1000000000000000) == 0)
      {
        LOBYTE(v10) = 1;
      }

      v11 = v0[8] & 0xCLL;
      v12 = 4 << v10;
      rawBits = v0[8];
      if (v11 == v12)
      {
        v20._rawBits = v0[8];
        v17 = v0[6];
        v18._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v4)._rawBits;
        v2 = v17;
        rawBits = v18._rawBits;
        v4 = v20._rawBits;
      }

      v14 = rawBits >> 16;
      if (rawBits >> 16 >= v3)
      {
        goto LABEL_29;
      }

      if ((v1 & 0x1000000000000000) != 0)
      {
        v21._rawBits = v4;
        v8 = String.UTF8View._foreignSubscript(position:)(rawBits);
        v4 = v21._rawBits;
        if (v11 != v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if ((v1 & 0x2000000000000000) != 0)
        {
          v23[0] = v2;
          v23[1] = v1 & 0xFFFFFFFFFFFFFFLL;
          v15 = v23;
        }

        else if ((v2 & 0x1000000000000000) != 0)
        {
          v15 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v22._rawBits = v4;
          v15 = _StringObject.sharedUTF8.getter(v2, v1);
          v4 = v22._rawBits;
        }

        v8 = *(v15 + v14);
        if (v11 != v12)
        {
LABEL_20:
          if ((v1 & 0x1000000000000000) == 0)
          {
LABEL_21:
            v16 = (v4 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_27:
            v9 = 0;
            v0[8] = v16;
            return v8 | (v9 << 8);
          }

          goto LABEL_25;
        }
      }

      v4 = _StringGuts._slowEnsureMatchingEncoding(_:)(v4)._rawBits;
      if ((v1 & 0x1000000000000000) == 0)
      {
        goto LABEL_21;
      }

LABEL_25:
      if (v3 > v4 >> 16)
      {
        v16 = String.UTF8View._foreignIndex(after:)(v4)._rawBits;
        goto LABEL_27;
      }

LABEL_29:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_6:
    v5 = specialized LazyMapSequence.Iterator.next()();
    if (!v6)
    {
      break;
    }

    v7 = v5;
    v1 = v6;
    v0[7];
    v0[6] = v7;
    v0[7] = v1;
    v0[8] = 15;
  }

  v8 = 0;
  v9 = 1;
  return v8 | (v9 << 8);
}

{
  v1 = v0[8];
  if (!v1)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v2 = v0[7];
    if ((v1 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(v1) & 0xF;
    }

    else
    {
      v3 = v2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = v0[9];
    if (v4 >> 14 != 4 * v3)
    {
      v10 = (v2 >> 59) & 1;
      if ((v1 & 0x1000000000000000) == 0)
      {
        LOBYTE(v10) = 1;
      }

      v11 = v0[9] & 0xCLL;
      v12 = 4 << v10;
      rawBits = v0[9];
      if (v11 == v12)
      {
        v20._rawBits = v0[9];
        v17 = v0[7];
        v18._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v4)._rawBits;
        v2 = v17;
        rawBits = v18._rawBits;
        v4 = v20._rawBits;
      }

      v14 = rawBits >> 16;
      if (rawBits >> 16 >= v3)
      {
        goto LABEL_29;
      }

      if ((v1 & 0x1000000000000000) != 0)
      {
        v21._rawBits = v4;
        v8 = String.UTF8View._foreignSubscript(position:)(rawBits);
        v4 = v21._rawBits;
        if (v11 != v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if ((v1 & 0x2000000000000000) != 0)
        {
          v23[0] = v2;
          v23[1] = v1 & 0xFFFFFFFFFFFFFFLL;
          v15 = v23;
        }

        else if ((v2 & 0x1000000000000000) != 0)
        {
          v15 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v22._rawBits = v4;
          v15 = _StringObject.sharedUTF8.getter(v2, v1);
          v4 = v22._rawBits;
        }

        v8 = *(v15 + v14);
        if (v11 != v12)
        {
LABEL_20:
          if ((v1 & 0x1000000000000000) == 0)
          {
LABEL_21:
            v16 = (v4 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_27:
            v9 = 0;
            v0[9] = v16;
            return v8 | (v9 << 8);
          }

          goto LABEL_25;
        }
      }

      v4 = _StringGuts._slowEnsureMatchingEncoding(_:)(v4)._rawBits;
      if ((v1 & 0x1000000000000000) == 0)
      {
        goto LABEL_21;
      }

LABEL_25:
      if (v3 > v4 >> 16)
      {
        v16 = String.UTF8View._foreignIndex(after:)(v4)._rawBits;
        goto LABEL_27;
      }

LABEL_29:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_6:
    v5 = specialized LazyMapSequence.Iterator.next()();
    if (!v6)
    {
      break;
    }

    v7 = v5;
    v1 = v6;
    v0[8];
    v0[7] = v7;
    v0[8] = v1;
    v0[9] = 15;
  }

  v8 = 0;
  v9 = 1;
  return v8 | (v9 << 8);
}

{
  v1 = v0;
  v2 = v0[5];
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_2:
  v3 = v1[4];
  v4 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v2) & 0xF;
  }

  v5 = v1[6];
  if (v5 >> 14 != 4 * v4)
  {
    v15 = (v3 >> 59) & 1;
    if ((v2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v15) = 1;
    }

    v16 = v1[6] & 0xCLL;
    v17 = 4 << v15;
    rawBits = v1[6];
    if (v16 == v17)
    {
      v33 = v17;
      v36._rawBits = v1[6];
      v22 = v1[4];
      v23 = v4;
      v24._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v5)._rawBits;
      v16 = v36._rawBits & 0xC;
      v17 = v33;
      v4 = v23;
      v3 = v22;
      rawBits = v24._rawBits;
      v5 = v36._rawBits;
    }

    v19 = rawBits >> 16;
    if (rawBits >> 16 >= v4)
    {
      goto LABEL_31;
    }

    if ((v2 & 0x1000000000000000) != 0)
    {
      v34 = v17;
      v37._rawBits = v5;
      v25 = v4;
      v31 = v16;
      v26 = String.UTF8View._foreignSubscript(position:)(rawBits);
      v4 = v25;
      v13 = v26;
      v5 = v37._rawBits;
      if (v31 != v34)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if ((v2 & 0x2000000000000000) != 0)
      {
        v40 = v3;
        v41 = v2 & 0xFFFFFFFFFFFFFFLL;
        v20 = &v40;
      }

      else if ((v3 & 0x1000000000000000) != 0)
      {
        v20 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v35 = v17;
        v38._rawBits = v5;
        v32 = v16;
        v29 = v4;
        v30 = _StringObject.sharedUTF8.getter(v3, v2);
        v16 = v32;
        v17 = v35;
        v4 = v29;
        v20 = v30;
        v5 = v38._rawBits;
      }

      v13 = *(v20 + v19);
      if (v16 != v17)
      {
LABEL_22:
        if ((v2 & 0x1000000000000000) == 0)
        {
LABEL_23:
          v21 = (v5 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_29:
          v14 = 0;
          v1[6] = v21;
          return v13 | (v14 << 8);
        }

        goto LABEL_27;
      }
    }

    v27 = v4;
    v5 = _StringGuts._slowEnsureMatchingEncoding(_:)(v5)._rawBits;
    v4 = v27;
    if ((v2 & 0x1000000000000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_27:
    if (v4 > v5 >> 16)
    {
      v21 = String.UTF8View._foreignIndex(after:)(v5)._rawBits;
      goto LABEL_29;
    }

LABEL_31:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_5:
  while (1)
  {
    v6 = v1[1];
    v7 = *(*v1 + 16);
    if (v6 == v7)
    {
      break;
    }

    if (v6 >= v7)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v10 = (*v1 + 16 * v6 + 32);
    v8 = *v10;
    v9 = v10[1];
    v1[1] = v6 + 1;
    v11 = v1[2];
    v39[0] = v8;
    v39[1] = v9;
    v9;
    v11(&v40, v39);
    v9;
    v12 = v40;
    v2 = v41;
    v1[5];
    v1[4] = v12;
    v1[5] = v2;
    v1[6] = 15;
    if (v2)
    {
      goto LABEL_2;
    }
  }

  v13 = 0;
  v14 = 1;
  return v13 | (v14 << 8);
}

{
  v1 = v0;
  v2 = v0[5];
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_2:
  v3 = v1[4];
  if ((v2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  v5 = v1[6];
  if (v5 >> 14 != 4 * v4)
  {
    v11 = (v3 >> 59) & 1;
    if ((v2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v11) = 1;
    }

    v12 = v1[6] & 0xC;
    v13 = 4 << v11;
    rawBits = v1[6];
    if (v12 == v13)
    {
      v20._rawBits = v1[6];
      v17 = v1[4];
      v18._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v5)._rawBits;
      v3 = v17;
      rawBits = v18._rawBits;
      v5 = v20._rawBits;
    }

    v7 = rawBits >> 16;
    if (rawBits >> 16 >= v4)
    {
      goto LABEL_30;
    }

    if ((v2 & 0x1000000000000000) != 0)
    {
      v21._rawBits = v5;
      LOBYTE(v7) = String.UTF8View._foreignSubscript(position:)(rawBits);
      v5 = v21._rawBits;
      if (v12 != v13)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if ((v2 & 0x2000000000000000) != 0)
      {
        v24 = v3;
        v25 = v2 & 0xFFFFFFFFFFFFFFLL;
        v15 = &v24;
      }

      else if ((v3 & 0x1000000000000000) != 0)
      {
        v15 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v22._rawBits = v5;
        v15 = _StringObject.sharedUTF8.getter(v3, v2);
        v5 = v22._rawBits;
      }

      LOBYTE(v7) = *(v15 + v7);
      if (v12 != v13)
      {
LABEL_21:
        if ((v2 & 0x1000000000000000) == 0)
        {
LABEL_22:
          v16 = (v5 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_28:
          v10 = 0;
          v1[6] = v16;
          return v7 | (v10 << 8);
        }

        goto LABEL_26;
      }
    }

    v5 = _StringGuts._slowEnsureMatchingEncoding(_:)(v5)._rawBits;
    if ((v2 & 0x1000000000000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_26:
    if (v4 > v5 >> 16)
    {
      v16 = String.UTF8View._foreignIndex(after:)(v5)._rawBits;
      goto LABEL_28;
    }

LABEL_30:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_6:
  while (1)
  {
    v6 = *v1;
    v7 = v1[1];
    *v1 = 0;
    v1[1] = 0;
    if (!v7)
    {
      break;
    }

    v8 = v1[2];
    v24 = v6;
    v25 = v7;
    v8(v23, &v24);
    v7;
    v9 = v23[0];
    v2 = v23[1];
    v1[5];
    v1[4] = v9;
    v1[5] = v2;
    v1[6] = 15;
    if (v2)
    {
      goto LABEL_2;
    }
  }

  v10 = 1;
  return v7 | (v10 << 8);
}

{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    v3 = (v1 & 0x2000000000000000) != 0 ? HIBYTE(v1) & 0xF : v2 & 0xFFFFFFFFFFFFLL;
    v4 = v0[4];
    if (v4 >> 14 != 4 * v3)
    {
      v7 = (v2 >> 59) & 1;
      if ((v1 & 0x1000000000000000) == 0)
      {
        LOBYTE(v7) = 1;
      }

      v8 = v0[4] & 0xCLL;
      v9 = 4 << v7;
      rawBits = v0[4];
      if (v8 == v9)
      {
        v22 = v0[4];
        v25 = v0[2];
        v14 = v0[3];
        v15._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v4)._rawBits;
        v1 = v14;
        rawBits = v15._rawBits;
        v4 = v22;
        v2 = v25;
      }

      v11 = rawBits >> 16;
      if (rawBits >> 16 >= v3)
      {
        goto LABEL_27;
      }

      if ((v1 & 0x1000000000000000) != 0)
      {
        v23 = v4;
        v16 = v1;
        v17 = String.UTF8View._foreignSubscript(position:)(rawBits);
        v1 = v16;
        v5 = v17;
        v4 = v23;
        if (v8 != v9)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if ((v1 & 0x2000000000000000) != 0)
        {
          v26[0] = v2;
          v26[1] = v1 & 0xFFFFFFFFFFFFFFLL;
          v12 = v26;
        }

        else if ((v2 & 0x1000000000000000) != 0)
        {
          v12 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v24 = v4;
          v21 = v1;
          v19 = _StringObject.sharedUTF8.getter(v2, v1);
          v1 = v21;
          v12 = v19;
          v4 = v24;
        }

        v5 = *(v12 + v11);
        if (v8 != v9)
        {
LABEL_18:
          if ((v1 & 0x1000000000000000) == 0)
          {
LABEL_19:
            v13 = (v4 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_25:
            v6 = 0;
            v0[4] = v13;
            return v5 | (v6 << 8);
          }

          goto LABEL_23;
        }
      }

      v20 = v1;
      v4 = _StringGuts._slowEnsureMatchingEncoding(_:)(v4)._rawBits;
      if ((v20 & 0x1000000000000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_23:
      if (v3 > v4 >> 16)
      {
        v13 = String.UTF8View._foreignIndex(after:)(v4)._rawBits;
        goto LABEL_25;
      }

LABEL_27:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  v5 = 0;
  v6 = 1;
  return v5 | (v6 << 8);
}

uint64_t FlattenSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v64 = a2;
  v5 = *(a1 + 24);
  v80 = *(a1 + 16);
  v81 = v5;
  swift_getAssociatedTypeWitness(255, v5, v80, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v7 = v6;
  v77 = type metadata accessor for Optional(0, v6, v8, v9);
  v10 = *(v77 - 8);
  v12 = MEMORY[0x1EEE9AC00](v77, v11);
  v75 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v79 = &v62 - v15;
  v16 = *(a1 + 32);
  swift_getAssociatedTypeWitness(255, v16, v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v18 = v17;
  v67 = type metadata accessor for Optional(0, v17, v19, v20);
  v21 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v22);
  v66 = &v62 - v23;
  swift_getAssociatedTypeWitness(255, v16, v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v25 = v24;
  v28 = type metadata accessor for Optional(0, v24, v26, v27);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v73 = &v62 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v85 = &v62 - v34;
  v36 = *(v35 + 16);
  v35 += 16;
  v83 = v25 - 8;
  v84 = v36;
  v37 = *(a1 + 44);
  v82 = (v35 - 8);
  v68 = v18 - 8;
  v69 = v18;
  v63 = v21;
  v65 = (v21 + 8);
  v38 = v37;
  v87 = v16;
  v88 = v7;
  v78 = v7 - 1;
  v74 = (v10 + 16);
  v76 = (v10 + 8);
  v86 = v35;
  v71 = (v35 + 24);
  v72 = v16 + 4;
  for (i = v33; ; (*v71)(v52 + v46, v60, i))
  {
    v39 = v85;
    v84(v85, v3 + v38, v28);
    v40 = *(v25 - 8);
    v41 = *(v40 + 48);
    v42 = v41(v39, 1, v25);
    (*v82)(v39, v28);
    if (v42 == 1)
    {
      goto LABEL_6;
    }

    if (v41((v3 + v38), 1, v25) == 1)
    {
      goto LABEL_11;
    }

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v87, v88, v25, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v44 = v66;
    (*(AssociatedConformanceWitness + 16))(v25, AssociatedConformanceWitness);
    if ((*(*(v69 - 8) + 48))(v44, 1) != 1)
    {
      break;
    }

    (*v65)(v44, v67);
LABEL_6:
    v45 = v25;
    v46 = v38;
    v48 = v80;
    v47 = v81;
    swift_getAssociatedTypeWitness(255, v81, v80, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
    v50 = v49;
    v51 = swift_getAssociatedConformanceWitness(v47, v48, v49, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v52 = v3;
    v53 = *(v51 + 16);
    v54 = swift_checkMetadataState(0, v50);
    v55 = v79;
    v53(v54, v51);
    v56 = v88;
    v57 = *(*(v88 - 1) + 6);
    if (v57(v55, 1, v88) == 1)
    {
      (*v76)(v55, v77);
      return (*(*(v69 - 8) + 56))(v64, 1, 1);
    }

    v58 = v75;
    v59 = v77;
    (*v74)(v75, v55, v77);
    if (v57(v58, 1, v56) == 1)
    {
LABEL_11:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v60 = v73;
    (v87[4])(v56);
    (*v76)(v55, v59);
    v25 = v45;
    (*(v40 + 56))(v60, 0, 1, v45);
    v3 = v52;
    v38 = v46;
    v28 = i;
  }

  return (*(v63 + 32))(v64, v44, v67);
}

uint64_t FlattenSequence.makeIterator()@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[2];
  MEMORY[0x1EEE9AC00](a1, v2);
  (*(v7 + 32))(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = a1[3];
  (*(v8 + 32))(v5, v8);
  v9 = a1[4];
  v10 = *(type metadata accessor for FlattenSequence.Iterator(0, v5, v8, v9) + 44);
  swift_getAssociatedTypeWitness(255, v8, v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  swift_getAssociatedTypeWitness(0, v9, v11, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  return (*(*(v12 - 8) + 56))(a2 + v10, 1, 1, v12);
}

uint64_t FlattenSequence<>.Index._inner.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = *(a1 + 32);
  swift_getAssociatedTypeWitness(255, *(*(a1 + 24) + 8), *(a1 + 16), &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  swift_getAssociatedTypeWitness(255, v5, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = type metadata accessor for Optional(0, v7, v8, v9);
  v11 = *(*(v10 - 8) + 16);

  return v11(a2, v2 + v4, v10);
}

uint64_t FlattenSequence<>.Index.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X8>)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v13 = *(type metadata accessor for FlattenSequence<>.Index(0, a3, a4, a5) + 44);
  swift_getAssociatedTypeWitness(255, *(a4 + 8), a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  swift_getAssociatedTypeWitness(255, a5, v14, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v18 = type metadata accessor for Optional(0, v15, v16, v17);
  v19 = *(*(v18 - 8) + 32);

  return v19(a6 + v13, a2, v18);
}

uint64_t static FlattenSequence<>.Index.== infix(_:_:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4, int **a5)
{
  swift_getAssociatedTypeWitness(255, *(a4 + 8), a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v45 = v10;
  swift_getAssociatedTypeWitness(0, a5, v10, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v50 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v11);
  v44 = &v43 - v12;
  v48 = v13;
  v16 = type metadata accessor for Optional(0, v13, v14, v15);
  v49 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v16, v17);
  v46 = &v43 - v18;
  swift_getTupleTypeMetadata2(0, v16, v16, 0, 0);
  v20 = v19;
  v47 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v43 - v22;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v25 = v24;
  v26 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v24, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v28 = a1;
  if ((*(*(AssociatedConformanceWitness + 8) + 8))(a1, v26, v25))
  {
    v43 = a5;
    v29 = type metadata accessor for FlattenSequence<>.Index(0, a3, a4, a5);
    v30 = v49;
    v31 = *(v29 + 44);
    v32 = *(v20 + 48);
    v33 = *(v49 + 16);
    v33(v23, v28 + v31, v16);
    v33(&v23[v32], v26 + v31, v16);
    v34 = *(v50 + 48);
    v35 = v48;
    if (v34(v23, 1, v48) == 1)
    {
      if (v34(&v23[v32], 1, v35) == 1)
      {
        v36 = 1;
      }

      else
      {
        v30 = v47;
        v16 = v20;
        v36 = 0;
      }
    }

    else
    {
      v37 = v46;
      v33(v46, v23, v16);
      if (v34(&v23[v32], 1, v35) == 1)
      {
        (*(v50 + 8))(v37, v35);
        v36 = 0;
        v30 = v47;
        v16 = v20;
      }

      else
      {
        v38 = v50;
        v39 = v44;
        (*(v50 + 32))(v44, &v23[v32], v35);
        v40 = swift_getAssociatedConformanceWitness(v43, v45, v35, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
        v36 = (*(*(v40 + 8) + 8))(v37, v39, v35);
        v41 = *(v38 + 8);
        v41(v39, v35);
        v41(v37, v35);
        v30 = v49;
      }
    }

    (*(v30 + 8))(v23, v16);
  }

  else
  {
    v36 = 0;
  }

  return v36 & 1;
}

uint64_t static FlattenSequence<>.Index.< infix(_:_:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4, swift *a5)
{
  swift_getAssociatedTypeWitness(255, *(a4 + 8), a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v74 = a5;
  v69 = v10;
  swift_getAssociatedTypeWitness(255, a5, v10, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  v15 = type metadata accessor for Optional(0, v11, v13, v14);
  v75 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v72 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v73 = &v62 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v71 = &v62 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v62 - v27;
  v76 = *(v12 - 8);
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v68 = &v62 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v32);
  v70 = &v62 - v33;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v35 = v34;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v34, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v37 = *(*(AssociatedConformanceWitness + 8) + 8);
  v77 = a2;
  if ((v37(a1, a2, v35) & 1) == 0)
  {
    return (*(AssociatedConformanceWitness + 16))(a1, v77, v35, AssociatedConformanceWitness) & 1;
  }

  v67 = type metadata accessor for FlattenSequence<>.Index(0, a3, a4, v74);
  v38 = v75;
  v39 = *(v75 + 16);
  v40 = a1;
  v64 = *(v67 + 44);
  v39(v28, a1 + v64, v15);
  v41 = *(v76 + 48);
  v42 = v41(v28, 1, v12);
  v65 = v41;
  v66 = v39;
  if (v42 == 1)
  {
    v43 = v28;
    goto LABEL_7;
  }

  v63 = a1;
  v45 = v77;
  v46 = v70;
  v47 = v28;
  v48 = *(v76 + 32);
  v48(v70, v47, v12);
  v49 = v45 + *(v67 + 44);
  v43 = v71;
  v39(v71, v49, v15);
  if (v41(v43, 1, v12) == 1)
  {
    (*(v76 + 8))(v46, v12);
    v40 = v63;
    v38 = v75;
LABEL_7:
    v50 = *(v38 + 8);
    v50(v43, v15);
    v51 = v40 + v64;
    v52 = v73;
    v53 = v66;
    v66(v73, v51, v15);
    v54 = v65;
    v55 = v65(v52, 1, v12);
    v50(v52, v15);
    if (v55 != 1 || (v56 = v72, v53(v72, v77 + *(v67 + 44), v15), v57 = v54(v56, 1, v12), v50(v56, v15), v57 != 1))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v58 = 0;
    return v58 & 1;
  }

  v59 = v68;
  v48(v68, v43, v12);
  v60 = swift_getAssociatedConformanceWitness(v74, v69, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v58 = (*(v60 + 16))(v46, v59, v12, v60);
  v61 = *(v76 + 8);
  v61(v59, v12);
  v61(v46, v12);
  return v58 & 1;
}

void FlattenSequence<>.Index<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a1;
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v29 = a4;
  v30 = v6;
  v8 = *(a2 + 16);
  swift_getAssociatedTypeWitness(255, *(v6 + 8), v8, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  swift_getAssociatedTypeWitness(0, v7, v9, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v28 = &v27 - v14;
  v17 = type metadata accessor for Optional(0, v11, v15, v16);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v27 - v20;
  v22 = *(a3 + 24);
  swift_getAssociatedTypeWitness(0, v30, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v23 = v31;
  v22(v32, v24, a3);
  (*(v18 + 16))(v21, v23 + *(a2 + 44), v17);
  if ((*(v12 + 48))(v21, 1, v11) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v25 = v28;
    (*(v12 + 32))(v28, v21, v11);
    v26 = v32;
    Hasher._combine(_:)(1u);
    (*(v29 + 24))(v26, v11);
    (*(v12 + 8))(v25, v11);
  }
}

Swift::Int FlattenSequence<>.Index<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v5 = *(a1 + 32);
  v28 = *(a1 + 24);
  v6 = *(a1 + 16);
  swift_getAssociatedTypeWitness(255, v28[1], v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  swift_getAssociatedTypeWitness(0, v5, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v26 = &v25 - v12;
  v15 = type metadata accessor for Optional(0, v9, v13, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v25 - v18;
  v33 = 0u;
  v34 = 0u;
  v30 = 0;
  v31 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v32 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  v20 = *(a2 + 24);
  swift_getAssociatedTypeWitness(0, v28, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v21 = v29;
  v20(&v30, v22, a2);
  (*(v16 + 16))(v19, v21 + *(a1 + 44), v15);
  if ((*(v10 + 48))(v19, 1, v9) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v23 = v26;
    (*(v10 + 32))(v26, v19, v9);
    Hasher._combine(_:)(1u);
    (*(v27 + 24))(&v30, v9);
    (*(v10 + 8))(v23, v9);
  }

  return Hasher._finalize()();
}

Swift::UInt64 specialized FlattenSequence<>.startIndex.getter(uint64_t a1, unint64_t a2, void (*a3)(uint64_t *__return_ptr, void *), uint64_t a4)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v16 = (a1 & 0x800000000000000) == 0;
  v17._rawBits = 15;
  if (v5)
  {
    rawBits = 15;
    while (1)
    {
      v9._rawBits = rawBits;
      v10 = specialized LazyMapSequence<>.subscript.getter(v9, a1, a2, a3);
      v12 = v11;
      v11;
      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        break;
      }

      specialized LazyMapSequence<>.formIndex(after:)(&v17, a1, a2);
      rawBits = v17._rawBits;
      if (4 * v5 == v17._rawBits >> 14)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v14 = 7;
    if (((a2 >> 60) & v16) != 0)
    {
      v14 = 11;
    }

    return (v5 << 16) | v14;
  }

  return rawBits;
}

Swift::UInt64 specialized FlattenSequence<>.startIndex.getter()
{
  v1 = v0[1];
  v11 = *v0;
  v12 = v1;
  v13 = v0[2];
  result = *(&v11 + 1);
  v3 = v11;
  v10 = v11;
  v4 = *(&v11 + 1) >> 14;
  if (*(&v11 + 1) >> 14 != v11 >> 14)
  {
    v5 = *(&v11 + 1);
    while (1)
    {
      v6 = specialized LazyMapSequence<>.subscript.getter(v3);
      v8 = v7;
      v7;
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v9)
      {
        break;
      }

      specialized LazyMapSequence<>.formIndex(after:)(&v10);
      v3 = v10;
      if (v4 == v10 >> 14)
      {
        return v5;
      }
    }

    return v3;
  }

  return result;
}

uint64_t specialized FlattenSequence<>.startIndex.getter(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *))
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v6 = *i;
    v11[0] = *(i - 1);
    v11[1] = v6;
    v6;
    a2(&v12, v11);
    v6;
    v8 = v12;
    v7 = v13;
    v13;
    v9 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      break;
    }

    if (v2 == ++v4)
    {
      return v2;
    }
  }

  return v4;
}

BOOL specialized FlattenSequence<>.startIndex.getter(uint64_t a1, unint64_t a2, void (*a3)(uint64_t *__return_ptr, void *))
{
  v9[0] = a1;
  v9[1] = a2;
  a2;
  a3(&v10, v9);
  a2;
  v6 = v10;
  v5 = v11;
  v11;
  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFLL;
  }

  return v7 == 0;
}

uint64_t FlattenSequence<>.startIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a3;
  v42 = a4;
  v5 = *(a1 + 16);
  swift_getAssociatedTypeWitness(0, *(a2 + 8), v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v52 = v6;
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v40 - v9;
  swift_getAssociatedTypeWitness(0, a2, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  v41 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = v40 - v18;
  v40[0] = *(a2 + 72);
  v40[1] = a2 + 72;
  (v40[0])(v5, a2);
  (*(a2 + 64))(v5, a2);
  v20 = *(swift_getAssociatedConformanceWitness(a2, v5, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
  v21 = *(v20 + 8);
  v49 = v20;
  v50 = v19;
  v47 = v21;
  v48 = v20 + 8;
  if ((v21)(v16, v19, v12))
  {
LABEL_5:
    v28 = *(v41 + 8);
    v28(v16, v12);
    v28(v50, v12);
    v29 = v42;
    (v40[0])(v5, a2);
    v30 = v51;
    v31 = *(type metadata accessor for FlattenSequence<>.Index(0, v5, a2, v51) + 44);
    swift_getAssociatedTypeWitness(0, v30, v52, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
    return (*(*(v32 - 8) + 56))(v29 + v31, 1, 1, v32);
  }

  else
  {
    v22 = *(a2 + 80);
    v23 = (v7 + 16);
    v44 = v51 + 104;
    v45 = v22;
    v24 = (v7 + 8);
    v46 = a2 + 80;
    v43 = a2 + 192;
    while (1)
    {
      v25 = v45(v53, v16, v5, a2);
      v26 = v5;
      v27 = v52;
      (*v23)(v10);
      v25(v53, 0);
      if (((*(v51 + 104))(v27) & 1) == 0)
      {
        break;
      }

      (*v24)(v10, v52);
      (*(a2 + 192))(v16, v26, a2);
      v5 = v26;
      if (v47(v16, v50, v12, v49))
      {
        goto LABEL_5;
      }
    }

    v34 = v41;
    (*(v41 + 8))(v50, v12);
    v35 = v42;
    (*(v34 + 32))(v42, v16, v12);
    v36 = v51;
    v37 = *(type metadata accessor for FlattenSequence<>.Index(0, v26, a2, v51) + 44);
    v38 = v52;
    (*(v36 + 64))(v52, v36);
    (*v24)(v10, v38);
    swift_getAssociatedTypeWitness(0, v36, v38, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
    return (*(*(v39 - 8) + 56))(v35 + v37, 0, 1, v39);
  }
}

uint64_t FlattenSequence<>.endIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int **a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  (*(a2 + 72))(v7);
  v8 = *(type metadata accessor for FlattenSequence<>.Index(0, v7, a2, a3) + 44);
  swift_getAssociatedTypeWitness(255, *(a2 + 8), v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  swift_getAssociatedTypeWitness(0, a3, v9, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = *(*(v10 - 8) + 56);

  return v11(a4 + v8, 1, 1, v10);
}

uint64_t FlattenSequence<>._index(after:)@<X0>(int **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v107 = a1;
  v99 = a5;
  v86 = a2;
  v8 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, a3, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v105 = v9;
  v102 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v96 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v87 = &v79 - v14;
  swift_getAssociatedTypeWitness(255, *(a3 + 8), v8, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v16 = v15;
  swift_getAssociatedTypeWitness(255, a4, v15, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v18 = v17;
  v21 = type metadata accessor for Optional(0, v17, v19, v20);
  v100 = *(v21 - 8);
  v101 = v21;
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v85 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v79 - v27;
  v103 = *(v18 - 8);
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v98 = &v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v32);
  v106 = &v79 - v33;
  v34 = swift_checkMetadataState(0, v16);
  v35 = *(v34 - 1);
  v37 = MEMORY[0x1EEE9AC00](v34, v36);
  v95 = &v79 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v39);
  v41 = &v79 - v40;
  v42 = *(a3 + 80);
  v43 = v107;
  v88 = v5;
  v93 = v42;
  v94 = a3 + 80;
  v44 = v42(v108, v107, v8, a3);
  v104 = v35;
  v91 = *(v35 + 16);
  v92 = v35 + 16;
  v91(v41);
  v44(v108, 0);
  v89 = v8;
  v90 = a3;
  v97 = type metadata accessor for FlattenSequence<>.Index(0, v8, a3, a4);
  (v100[2])(v28, v43 + *(v97 + 44), v101);
  v45 = v103;
  if ((*(v103 + 48))(v28, 1, v18) == 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v46 = v106;
  (*(a4 + 184))(v28, v34, a4);
  v47 = *(v45 + 8);
  v47(v28, v18);
  v48 = v98;
  (*(a4 + 72))(v34, a4);
  v49 = v41;
  v50 = v104 + 8;
  v101 = *(v104 + 8);
  v101(v49, v34);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, v34, v18, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v52 = (*(*(AssociatedConformanceWitness + 8) + 8))(v46, v48, v18);
  v47(v48, v18);
  if (v52)
  {
    v57 = a4;
    v104 = v50;
    v83 = v34;
    v80 = v18;
    v47(v106, v18);
    v58 = v90;
    v59 = v87;
    v60 = v88;
    v61 = v89;
    (*(v90 + 184))(v107, v89, v90);
    v62 = *(v58 + 9);
    v100 = (v58 + 72);
    v106 = v62;
    v98 = *(swift_getAssociatedConformanceWitness(v58, v61, v105, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
    v84 = *(v98 + 1);
    v97 = (v98 + 8);
    v63 = (v102 + 8);
    v107 = v57;
    v82 = v57 + 13;
    v81 = (v58 + 192);
    v64 = v101;
    while (1)
    {
      v65 = v96;
      (v106)(v61, v58);
      v66 = v105;
      v67 = v84(v59, v65, v105, v98);
      v68 = v60;
      v69 = v58;
      v70 = *v63;
      (*v63)(v65, v66);
      if (v67)
      {
        v70(v59, v105);
        return FlattenSequence<>.endIndex.getter(v86, v69, v107, v99);
      }

      v71 = v93(v108, v59, v61, v69);
      v72 = v95;
      v73 = v83;
      v91(v95);
      v71(v108, 0);
      v58 = v69;
      if (((v107[13])(v73) & 1) == 0)
      {
        break;
      }

      v64(v72, v73);
      (*(v69 + 192))(v59, v61, v69);
      v60 = v68;
    }

    v74 = v72;
    v75 = v73;
    v76 = v96;
    (*(v102 + 32))(v96, v59, v105);
    v77 = v107;
    v78 = v85;
    (v107[8])(v75, v107);
    v64(v74, v75);
    (*(v103 + 56))(v78, 0, 1, v80);
    return FlattenSequence<>.Index.init(_:_:)(v76, v78, v61, v58, v77, v99);
  }

  else
  {
    v53 = v99;
    (*(v102 + 16))(v99, v107, v105);
    v54 = v18;
    v55 = *(v97 + 44);
    (*(v45 + 32))(v53 + v55, v106, v54);
    return (*(v45 + 56))(v53 + v55, 0, 1, v54);
  }
}

uint64_t FlattenSequence<>._index(before:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v80 = a5;
  v8 = *(a2 + 16);
  swift_getAssociatedTypeWitness(255, *(a3 + 8), v8, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10 = v9;
  swift_getAssociatedTypeWitness(255, a4, v9, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  v15 = type metadata accessor for Optional(0, v11, v13, v14);
  v96 = *(v15 - 8);
  v97 = v15;
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v95 = &v79 - v18;
  v81 = *(v12 - 8);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v100 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v79 - v23;
  v25 = swift_checkMetadataState(0, v10);
  v83 = *(v25 - 1);
  v103 = v83;
  MEMORY[0x1EEE9AC00](v25, v26);
  v98 = &v79 - v27;
  swift_getAssociatedTypeWitness(0, a3, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v29 = v28;
  v91 = *(v28 - 8);
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v33 = &v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v34);
  v36 = &v79 - v35;
  v38 = *(v37 + 16);
  v99 = a1;
  v38(&v79 - v35, a1, v29);
  v39 = a3;
  v40 = *(a3 + 72);
  v41 = v8;
  v104 = v8;
  v42 = v8;
  v43 = v39;
  v40(v42);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v43, v41, v29, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  LOBYTE(v41) = (*(*(AssociatedConformanceWitness + 8) + 8))(v36, v33, v29);
  v45 = *(v91 + 8);
  v89 = v91 + 8;
  v90 = v33;
  v102 = v29;
  v46 = v29;
  v47 = v104;
  v88 = v45;
  v45(v33, v46);
  if (v41)
  {
    v48 = v90;
    (*(v43 + 136))(v36, -1, v47, v43);
    v49 = v102;
    v88(v36, v102);
    (*(v91 + 32))(v36, v48, v49);
  }

  v50 = *(v43 + 80);
  v87 = v43 + 80;
  v86 = v50;
  v51 = v50(v105, v36, v104, v43);
  v52 = *(v103 + 16);
  v53 = v98;
  v103 += 16;
  v85 = v52;
  v52(v98);
  v51(v105, 0);
  v101 = v43;
  v79 = type metadata accessor for FlattenSequence<>.Index(0, v104, v43, a4);
  v55 = v95;
  v54 = v96;
  v56 = v97;
  (*(v96 + 16))(v95, &v99[*(v79 + 44)], v97);
  v57 = v81;
  v58 = (*(v81 + 48))(v55, 1, v12);
  v99 = v36;
  if (v58 == 1)
  {
    (*(a4 + 72))(v25, a4);
    (*(v54 + 8))(v55, v56);
  }

  else
  {
    (*(v57 + 32))(v24, v55, v12);
  }

  v95 = *(a4 + 64);
  v96 = a4 + 64;
  v94 = *(swift_getAssociatedConformanceWitness(a4, v25, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
  v92 = *(v94 + 8);
  v93 = v94 + 8;
  v59 = (v57 + 8);
  v97 = (v83 + 8);
  v83 = v101 + 136;
  v91 += 32;
  v82 = a4 + 72;
  v84 = v25;
  v60 = v102;
  while (1)
  {
    v61 = v100;
    (v95)(v25, a4);
    v62 = v92(v24, v61, v12, v94);
    v63 = a4;
    v64 = *v59;
    (*v59)(v61, v12);
    if ((v62 & 1) == 0)
    {
      break;
    }

    v64(v24, v12);
    (*v97)(v53, v25);
    v65 = v101;
    v66 = v59;
    v67 = v90;
    v68 = v99;
    v69 = v24;
    v70 = v12;
    v71 = v104;
    (*(v101 + 136))(v99, -1, v104, v101);
    v88(v68, v60);
    v72 = v67;
    v59 = v66;
    (*v91)(v68, v72, v60);
    v73 = v68;
    v53 = v98;
    v74 = v71;
    v12 = v70;
    v24 = v69;
    v25 = v84;
    v75 = v86(v105, v73, v74, v65);
    v85(v53);
    v75(v105, 0);
    (*(v63 + 72))(v25, v63);
    a4 = v63;
  }

  v76 = v80;
  (*v91)(v80, v99, v102);
  v77 = *(v79 + 44);
  (*(v63 + 136))(v24, -1, v25, v63);
  v64(v24, v12);
  (*v97)(v53, v25);
  return (*(v81 + 56))(v76 + v77, 0, 1, v12);
}

uint64_t FlattenSequence<>.formIndex(after:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FlattenSequence<>.Index(0, *(a2 + 16), a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = (&v14 - v11);
  (*(v9 + 32))(&v14 - v11, a1, v8);
  FlattenSequence<>._index(after:)(v12, a2, a3, a4, a1);
  return (*(v9 + 8))(v12, v8);
}

unint64_t specialized FlattenSequence<>.distance(from:to:)(Swift::String::Index a1, int64_t a2, char a3, unint64_t a4, int64_t a5, char a6, unint64_t a7, unint64_t a8, void (*a9)(void *__return_ptr, Swift::UInt32 *, Swift::Int), uint64_t a10)
{
  rawBits = a4;
  v16 = a4 >> 14;
  v17 = a1._rawBits >> 14;
  if (a4 >> 14 == a1._rawBits >> 14)
  {
    if (a6)
    {
      if (a3)
      {
        return 0;
      }

LABEL_57:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v58 = a6;
    if (a3)
    {
      goto LABEL_57;
    }

    v57 = a5;
    if (a5 >= a2)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v58 = a6;
    v57 = a5;
    if (a4 >> 14 >= a1._rawBits >> 14)
    {
      v19 = specialized LazyMapSequence<>.subscript.getter(a1, a7, a8, a9);
      if (a3)
      {
        goto LABEL_57;
      }

      v20 = 2;
      v21 = 3;
      if (v19 >= 0x10000)
      {
        v21 = 4;
      }

      if (v19 >= 0x800)
      {
        v20 = v21;
      }

      if (v19 <= 0x7F)
      {
        v22 = 1;
      }

      else
      {
        v22 = v20;
      }

      v18 = specialized RandomAccessCollection<>.distance(from:to:)(a2, v22, v19);
      v23 = 1;
      v17 = v16;
      v54 = rawBits;
      v55 = v57;
      v56 = v58;
      rawBits = a1._rawBits;
      goto LABEL_34;
    }
  }

  v24 = HIBYTE(a8) & 0xF;
  if ((a8 & 0x2000000000000000) == 0)
  {
    v24 = a7;
  }

  v25 = 7;
  if (((a8 >> 60) & ((a7 & 0x800000000000000) == 0)) != 0)
  {
    v25 = 11;
  }

  v26._rawBits = v25 | (v24 << 16);
  v27._rawBits = 15;
  specialized Collection.count.getter(v26, v27, a7, a8);
  if (v16 != v17)
  {
    v56 = a3;
    v55 = a2;
    v31._rawBits = rawBits;
    v32 = specialized LazyMapSequence<>.subscript.getter(v31, a7, a8, a9);
    v33 = v32;
    v34 = 3;
    if (v32 >= 0x10000)
    {
      v34 = 4;
    }

    if (v32 < 0x800)
    {
      v34 = 2;
    }

    if (v32 <= 0x7F)
    {
      v35 = 1;
    }

    else
    {
      v35 = v34;
    }

    if (v58)
    {
      goto LABEL_57;
    }

    v18 = specialized RandomAccessCollection<>.distance(from:to:)(v35, v57, v33);
    v23 = -1;
    v54 = a1._rawBits;
LABEL_34:
    v36._rawBits = rawBits;
    v37._rawBits = specialized LazyMapSequence<>.index(after:)(v36, a7, a8);
    v61._rawBits = v37._rawBits;
    if (v17 <= v37._rawBits >> 14)
    {
LABEL_52:
      if (v56)
      {
        return v18;
      }

      v49._rawBits = v54;
      v50 = specialized LazyMapSequence<>.subscript.getter(v49, a7, a8, a9);
      v51 = specialized RandomAccessCollection<>.distance(from:to:)(0, v55, v50);
      v48 = __OFADD__(v18, v51 * v23);
      v18 += v51 * v23;
      if (!v48)
      {
        return v18;
      }
    }

    else
    {
      while (1)
      {
        v38._rawBits = _StringGuts.validateScalarIndex(_:)(v37)._rawBits;
        if ((a8 & 0x1000000000000000) != 0)
        {
          v44 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v38._rawBits & 0xFFFFFFFFFFFF0000));
          scalarLength = v44.scalarLength;
          value = v44._0._value;
        }

        else
        {
          v40 = v38._rawBits >> 16;
          if ((a8 & 0x2000000000000000) != 0)
          {
            v59[0] = a7;
            v59[1] = a8 & 0xFFFFFFFFFFFFFFLL;
            v41 = v59;
          }

          else
          {
            v41 = ((a8 & 0xFFFFFFFFFFFFFFFLL) + 32);
            if ((a7 & 0x1000000000000000) == 0)
            {
              v53 = v40;
              v41 = _StringObject.sharedUTF8.getter(a7, a8);
              v40 = v53;
            }
          }

          value = _decodeScalar(_:startingAt:)(v41, v39._rawBits, v40);
        }

        v60 = value;
        a9(v59, &v60, scalarLength);
        if (LODWORD(v59[0]) < 0x10000)
        {
          v45 = 3;
        }

        else
        {
          v45 = 4;
        }

        if (LODWORD(v59[0]) < 0x800)
        {
          v45 = 2;
        }

        v46 = LODWORD(v59[0]) >= 0x80 ? v45 : 1;
        v47 = v46 * v23;
        v48 = __OFADD__(v18, v47);
        v18 += v47;
        if (v48)
        {
          break;
        }

        specialized LazyMapSequence<>.formIndex(after:)(&v61, a7, a8);
        v37._rawBits = v61._rawBits;
        if (v17 <= v61._rawBits >> 14)
        {
          goto LABEL_52;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_57;
  }

LABEL_22:
  v28 = a3;
  v18 = 0;
  if ((v28 & 1) == 0 && (v58 & 1) == 0)
  {
    v29._rawBits = a1._rawBits;
    v30 = specialized LazyMapSequence<>.subscript.getter(v29, a7, a8, a9);
    return specialized RandomAccessCollection<>.distance(from:to:)(a2, v57, v30);
  }

  return v18;
}

Swift::Int specialized FlattenSequence<>.distance(from:to:)(Swift::String::Index a1, unint64_t a2, unint64_t a3, Swift::UInt64 a4, Swift::UInt64 a5, int a6, unint64_t a7, unint64_t a8, void (*a9)(uint64_t *__return_ptr, void *), uint64_t a10)
{
  v10 = a8;
  v12 = a5;
  v14 = a3;
  v15 = a2;
  v16 = a4 >> 14;
  v17 = a1._rawBits >> 14;
  if (a4 >> 14 != a1._rawBits >> 14)
  {
    LODWORD(v71) = a6;
    if (a4 >> 14 < a1._rawBits >> 14)
    {
      goto LABEL_18;
    }

    v68 = a5;
    rawBits = a1._rawBits;
    v19 = specialized LazyMapSequence<>.subscript.getter(a1, a7, a8, a9);
    if (v14)
    {
      goto LABEL_93;
    }

    v12 = v20;
    v70 = a4;
    if ((v20 & 0x2000000000000000) != 0)
    {
      v14 = HIBYTE(v20) & 0xF;
    }

    else
    {
      v14 = v19 & 0xFFFFFFFFFFFFLL;
    }

    v21 = v14 << 16;
    LODWORD(v17) = (v20 & 0x1000000000000000) == 0 || (v19 & 0x800000000000000) != 0;
    if (v17 == 1)
    {
      v22._rawBits = v21 | 7;
      if ((v20 & 0x1000000000000000) == 0)
      {
        LOBYTE(v23) = 1;
        goto LABEL_47;
      }
    }

    else
    {
      v22._rawBits = v21 | 0xB;
    }

    v23 = (v19 & 0x800000000000000uLL) >> 59;
LABEL_47:
    if ((v15 & 0xC) == 4 << v23)
    {
      goto LABEL_70;
    }

    goto LABEL_48;
  }

  if (a6)
  {
    if (a3)
    {
      return 0;
    }

LABEL_93:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  LOBYTE(v71) = a6;
  if (a3)
  {
    goto LABEL_93;
  }

  if (a5 >> 14 >= a2 >> 14)
  {
LABEL_23:
    v28._rawBits = v12;
    v29._rawBits = v15;
    v15 = 0;
    if (v14 & 1) != 0 || (v71)
    {
      return v15;
    }

    v30 = specialized LazyMapSequence<>.subscript.getter(a1, a7, v10, a9);
    v32 = (v30 >> 59) & 1;
    if ((v31 & 0x1000000000000000) == 0)
    {
      LOBYTE(v32) = 1;
    }

    v33 = v29._rawBits;
    v34 = 4 << v32;
    if ((v29._rawBits & 0xC) == 4 << v32)
    {
      v59 = v30;
      v60 = v31;
      v61._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v29)._rawBits;
      v31 = v60;
      v33 = v61._rawBits;
      v30 = v59;
    }

    v35 = v28._rawBits;
    if ((v28._rawBits & 0xC) == v34)
    {
      v62 = v30;
      v63 = v31;
      v64._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v28)._rawBits;
      v31 = v63;
      v35 = v64._rawBits;
      v30 = v62;
      if ((v31 & 0x1000000000000000) == 0)
      {
        goto LABEL_31;
      }
    }

    else if ((v31 & 0x1000000000000000) == 0)
    {
LABEL_31:
      v31;
      return (v35 >> 16) - (v33 >> 16);
    }

    v65 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v65 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (v65 < v33 >> 16 || v65 < v35 >> 16)
    {
      goto LABEL_92;
    }

    v66 = v31;
    v67 = String.UTF8View._foreignDistance(from:to:)(v33, v35);
    v66;
    return v67;
  }

LABEL_18:
  v24 = HIBYTE(a8) & 0xF;
  if ((a8 & 0x2000000000000000) == 0)
  {
    v24 = a7;
  }

  v25 = 7;
  if (((a8 >> 60) & ((a7 & 0x800000000000000) == 0)) != 0)
  {
    v25 = 11;
  }

  rawBits = a1._rawBits;
  v26._rawBits = v25 | (v24 << 16);
  v27._rawBits = 15;
  specialized LazyMapSequence<>.distance(from:to:)(v26, v27, a7, a8);
  a1._rawBits = rawBits;
  if (v16 == v17)
  {
    goto LABEL_23;
  }

  to = v15;
  v70 = a4;
  v36._rawBits = a4;
  v37 = specialized LazyMapSequence<>.subscript.getter(v36, a7, v10, a9);
  if ((v38 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v38) & 0xF;
  }

  else
  {
    v16 = v37 & 0xFFFFFFFFFFFFLL;
  }

  v39 = (v37 >> 59) & 1;
  if ((v38 & 0x1000000000000000) == 0)
  {
    LODWORD(v39) = 1;
  }

  v40 = 11;
  if (v39)
  {
    v40 = 7;
  }

  if (v71)
  {
    goto LABEL_93;
  }

  v22._rawBits = v40 | (v16 << 16);
  v15 = 4 << v39;
  if ((v40 & 0xC) == 4 << v39)
  {
LABEL_81:
    v68 = v12;
    v53._rawBits = v22._rawBits;
    v54 = v38;
    v55._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v53)._rawBits;
    v38 = v54;
    v22._rawBits = v55._rawBits;
  }

  if ((v12 & 0xC) == v15)
  {
    v56 = v38;
    v57._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v12)._rawBits;
    v38 = v56;
    v12 = v57._rawBits;
    if ((v56 & 0x1000000000000000) == 0)
    {
      goto LABEL_43;
    }

LABEL_83:
    if (v16 < v22._rawBits >> 16)
    {
      goto LABEL_92;
    }

    v58._rawBits = v12;
    if (v16 < v12 >> 16)
    {
      goto LABEL_92;
    }

    v12 = v38;
    v15 = String.UTF8View._foreignDistance(from:to:)(v22, v58);
    v12;
    goto LABEL_44;
  }

  if ((v38 & 0x1000000000000000) != 0)
  {
    goto LABEL_83;
  }

LABEL_43:
  v38;
  v15 = (v12 >> 16) - (v22._rawBits >> 16);
LABEL_44:
  v22._rawBits = -1;
  v71 = rawBits;
  for (v41._rawBits = v70; ; v41._rawBits = rawBits)
  {
    v42._rawBits = specialized LazyMapSequence<>.index(after:)(v41, a7, v10);
    v73._rawBits = v42._rawBits;
    if (v17 <= v42._rawBits >> 14)
    {
      break;
    }

    while (1)
    {
      v44 = specialized LazyMapSequence<>.subscript.getter(v42, a7, v10, a9);
      v12 = v43;
      if ((v43 & 0x1000000000000000) != 0)
      {
        v16 = String.UTF8View._foreignCount()();
        v12;
      }

      else
      {
        v43;
        v16 = (v12 & 0x2000000000000000) != 0 ? HIBYTE(v12) & 0xF : v44 & 0xFFFFFFFFFFFFLL;
      }

      v45 = __OFADD__(v15, v16 * v22._rawBits);
      v15 += v16 * v22._rawBits;
      if (v45)
      {
        break;
      }

      specialized LazyMapSequence<>.formIndex(after:)(&v73, a7, v10);
      v42._rawBits = v73._rawBits;
      if (v17 <= v73._rawBits >> 14)
      {
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_70:
    v15 = _StringGuts._slowEnsureMatchingEncoding(_:)(v15)._rawBits;
LABEL_48:
    if ((v22._rawBits & 0xC) == 4 << v17)
    {
      v22._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v22)._rawBits;
      if ((v12 & 0x1000000000000000) == 0)
      {
LABEL_50:
        v12;
        v15 = (v22._rawBits >> 16) - (v15 >> 16);
        goto LABEL_51;
      }
    }

    else if ((v12 & 0x1000000000000000) == 0)
    {
      goto LABEL_50;
    }

    if (v14 < v15 >> 16 || v14 < v22._rawBits >> 16)
    {
      goto LABEL_92;
    }

    v15 = String.UTF8View._foreignDistance(from:to:)(v15, v22);
    v12;
LABEL_51:
    v22._rawBits = 1;
    v17 = v16;
    to = v68;
    v14 = v71;
    v71 = v70;
  }

LABEL_61:
  if ((v14 & 1) == 0)
  {
    v46._rawBits = v71;
    v47 = specialized LazyMapSequence<>.subscript.getter(v46, a7, v10, a9);
    v49 = (v47 >> 59) & 1;
    if ((v48 & 0x1000000000000000) == 0)
    {
      LOBYTE(v49) = 1;
    }

    if ((to & 0xC) != 4 << v49)
    {
      if ((v48 & 0x1000000000000000) == 0)
      {
        goto LABEL_66;
      }

LABEL_76:
      v52 = v47 & 0xFFFFFFFFFFFFLL;
      v10 = v48;
      if ((v48 & 0x2000000000000000) != 0)
      {
        v52 = HIBYTE(v48) & 0xF;
      }

      if (v52 >= to >> 16)
      {
        v14 = String.UTF8View._foreignDistance(from:to:)(15, to);
        v10;
        goto LABEL_67;
      }

LABEL_92:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v50 = v47;
    v10 = v48;
    v51._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(to)._rawBits;
    v48 = v10;
    to = v51._rawBits;
    v47 = v50;
    if ((v10 & 0x1000000000000000) != 0)
    {
      goto LABEL_76;
    }

LABEL_66:
    v48;
    v14 = to >> 16;
LABEL_67:
    v45 = __OFADD__(v15, v14 * v22._rawBits);
    v15 += v14 * v22._rawBits;
    if (v45)
    {
      __break(1u);
      goto LABEL_81;
    }
  }

  return v15;
}

Swift::UInt64 specialized FlattenSequence<>.distance(from:to:)(Swift::UInt64 a1, Swift::UInt64 a2, uint64_t a3, Swift::UInt64 a4, Swift::UInt64 a5, uint64_t a6)
{
  v7 = a6;
  v8._rawBits = a5;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v12 = v6[1];
  v74 = *v6;
  v75 = v12;
  v76 = v6[2];
  v13 = a4 >> 14;
  v14 = a1 >> 14;
  if (a4 >> 14 != a1 >> 14)
  {
    v16 = a4;
    if (a4 >> 14 < a1 >> 14)
    {
      specialized LazyMapSequence<>.distance(from:to:)(*(&v74 + 8), v74, a3);
      v17 = specialized LazyMapSequence<>.subscript.getter(v16);
      if ((v18 & 0x2000000000000000) != 0)
      {
        v13 = HIBYTE(v18) & 0xF;
      }

      else
      {
        v13 = v17 & 0xFFFFFFFFFFFFLL;
      }

      v19 = (v17 >> 59) & 1;
      if ((v18 & 0x1000000000000000) == 0)
      {
        LODWORD(v19) = 1;
      }

      v20 = 11;
      if (v19)
      {
        v20 = 7;
      }

      if (v7)
      {
        goto LABEL_87;
      }

      rawBits = v20 | (v13 << 16);
      v7 = 4 << v19;
      to = v10;
      if ((v20 & 0xC) == 4 << v19)
      {
        goto LABEL_65;
      }

      while (1)
      {
        if ((v8._rawBits & 0xC) == v7)
        {
          v46._rawBits = v8._rawBits;
          v47 = v18;
          v48._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v46)._rawBits;
          v18 = v47;
          v8._rawBits = v48._rawBits;
          if ((v18 & 0x1000000000000000) == 0)
          {
LABEL_17:
            v18;
            v22 = (v8._rawBits >> 16) - (rawBits >> 16);
            goto LABEL_18;
          }
        }

        else if ((v18 & 0x1000000000000000) == 0)
        {
          goto LABEL_17;
        }

        if (v13 < rawBits >> 16 || v13 < v8._rawBits >> 16)
        {
          goto LABEL_85;
        }

        v49._rawBits = rawBits;
        v50 = v18;
        v22 = String.UTF8View._foreignDistance(from:to:)(v49, v8);
        v50;
LABEL_18:
        v23 = -1;
        v8._rawBits = v11;
LABEL_47:
        v35 = specialized LazyMapSequence<>.index(after:)(v16);
        v73 = v35;
        if (v14 <= v35 >> 14)
        {
LABEL_56:
          if (v9)
          {
            return v22;
          }

          v40 = specialized LazyMapSequence<>.subscript.getter(v8._rawBits);
          v41 = (v40 >> 59) & 1;
          if ((v39 & 0x1000000000000000) == 0)
          {
            LOBYTE(v41) = 1;
          }

          if ((to & 0xC) != 4 << v41)
          {
            if ((v39 & 0x1000000000000000) == 0)
            {
              goto LABEL_61;
            }

LABEL_81:
            v70 = v40 & 0xFFFFFFFFFFFFLL;
            if ((v39 & 0x2000000000000000) != 0)
            {
              v70 = HIBYTE(v39) & 0xF;
            }

            if (v70 >= to >> 16)
            {
              v71 = v39;
              v42 = String.UTF8View._foreignDistance(from:to:)(15, to);
              v71;
              goto LABEL_62;
            }

LABEL_85:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v68 = v39;
          v69._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(to)._rawBits;
          v39 = v68;
          to = v69._rawBits;
          if ((v68 & 0x1000000000000000) != 0)
          {
            goto LABEL_81;
          }

LABEL_61:
          v39;
          v42 = to >> 16;
LABEL_62:
          v38 = __OFADD__(v22, v42 * v23);
          v22 += v42 * v23;
          if (!v38)
          {
            return v22;
          }

          __break(1u);
LABEL_87:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        while (1)
        {
          v37 = specialized LazyMapSequence<>.subscript.getter(v35);
          rawBits = v36;
          if ((v36 & 0x1000000000000000) != 0)
          {
            v11 = String.UTF8View._foreignCount()();
            rawBits;
          }

          else
          {
            v36;
            v11 = (rawBits & 0x2000000000000000) != 0 ? HIBYTE(rawBits) & 0xF : v37 & 0xFFFFFFFFFFFFLL;
          }

          v38 = __OFADD__(v22, v11 * v23);
          v22 += v11 * v23;
          if (v38)
          {
            break;
          }

          specialized LazyMapSequence<>.formIndex(after:)(&v73);
          v35 = v73;
          if (v14 <= v73 >> 14)
          {
            goto LABEL_56;
          }
        }

        __break(1u);
LABEL_65:
        v43._rawBits = rawBits;
        v44 = v18;
        v45._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v43)._rawBits;
        v18 = v44;
        rawBits = v45._rawBits;
      }
    }

    v28 = specialized LazyMapSequence<>.subscript.getter(a1);
    if (v9)
    {
      goto LABEL_87;
    }

    if ((v29 & 0x2000000000000000) != 0)
    {
      v30 = HIBYTE(v29) & 0xF;
    }

    else
    {
      v30 = v28 & 0xFFFFFFFFFFFFLL;
    }

    v31 = v30 << 16;
    v32 = (v29 & 0x1000000000000000) == 0 || (v28 & 0x800000000000000) != 0;
    if (v32 == 1)
    {
      v33 = v31 | 7;
      if ((v29 & 0x1000000000000000) == 0)
      {
        LOBYTE(v34) = 1;
        goto LABEL_41;
      }
    }

    else
    {
      v33 = v31 | 0xB;
    }

    v34 = (v28 & 0x800000000000000uLL) >> 59;
LABEL_41:
    if ((v10 & 0xC) == 4 << v34)
    {
      v59._rawBits = v10;
      v60 = v29;
      v61._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v59)._rawBits;
      v29 = v60;
      v10 = v61._rawBits;
    }

    if ((v33 & 0xC) == 4 << v32)
    {
      v62._rawBits = v33;
      v63 = v29;
      v64._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v62)._rawBits;
      v29 = v63;
      v33 = v64._rawBits;
      if ((v29 & 0x1000000000000000) == 0)
      {
        goto LABEL_45;
      }
    }

    else if ((v29 & 0x1000000000000000) == 0)
    {
LABEL_45:
      v29;
      v22 = (v33 >> 16) - (v10 >> 16);
      goto LABEL_46;
    }

    if (v30 < v10 >> 16 || v30 < v33 >> 16)
    {
      goto LABEL_85;
    }

    v65 = v29;
    v66._rawBits = v33;
    v67 = v65;
    v22 = String.UTF8View._foreignDistance(from:to:)(v10, v66);
    v67;
LABEL_46:
    v23 = 1;
    v14 = v13;
    to = v8._rawBits;
    v9 = v7;
    v8._rawBits = v16;
    v16 = v11;
    goto LABEL_47;
  }

  if (a6)
  {
    if (a3)
    {
      return 0;
    }

    goto LABEL_87;
  }

  if (a3)
  {
    goto LABEL_87;
  }

  if (a5 >> 14 < a2 >> 14)
  {
    specialized LazyMapSequence<>.distance(from:to:)(*(&v74 + 8), v74, a3);
  }

  v25 = specialized LazyMapSequence<>.subscript.getter(v11);
  v26 = (v25 >> 59) & 1;
  if ((v24 & 0x1000000000000000) == 0)
  {
    LOBYTE(v26) = 1;
  }

  v27 = 4 << v26;
  if ((v10 & 0xC) == 4 << v26)
  {
    v51 = v24;
    v52._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v10)._rawBits;
    v24 = v51;
    v10 = v52._rawBits;
  }

  if ((v8._rawBits & 0xC) == v27)
  {
    v53._rawBits = v8._rawBits;
    v54 = v24;
    v55._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v53)._rawBits;
    v24 = v54;
    v8._rawBits = v55._rawBits;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_28;
    }
  }

  else if ((v24 & 0x1000000000000000) == 0)
  {
LABEL_28:
    v24;
    return (v8._rawBits >> 16) - (v10 >> 16);
  }

  v56 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v56 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (v56 < v10 >> 16 || v56 < v8._rawBits >> 16)
  {
    goto LABEL_85;
  }

  v57 = v24;
  v58 = String.UTF8View._foreignDistance(from:to:)(v10, v8);
  v57;
  return v58;
}

Swift::UInt64 specialized FlattenSequence<>.distance(from:to:)(int64_t a1, Swift::UInt64 a2, char a3, int64_t a4, Swift::UInt64 a5, Swift::UInt64 a6, uint64_t a7, void (*a8)(unint64_t *__return_ptr, uint64_t *))
{
  v9 = a6;
  v11 = a4;
  rawBits = a2;
  if (a4 != a1)
  {
    v14 = a1;
    v15 = a7 + 32;
    v62 = a7 + 32;
    if (a4 < a1)
    {
      v63 = a3;
      to = a2;
      sub_1802E86D0(a4, 1, a7);
      v16 = (v15 + 16 * v11);
      v17 = v16[1];
      v68 = *v16;
      v69 = v17;
      v17;
      a8(&v70, &v68);
      v17;
      v18 = v71;
      if ((v71 & 0x2000000000000000) != 0)
      {
        v19 = HIBYTE(v71) & 0xF;
      }

      else
      {
        v19 = v70 & 0xFFFFFFFFFFFFLL;
      }

      v20 = (v70 >> 59) & 1;
      if ((v71 & 0x1000000000000000) == 0)
      {
        LODWORD(v20) = 1;
      }

      v21 = 11;
      if (v20)
      {
        v21 = 7;
      }

      if ((v9 & 1) == 0)
      {
        v9 = v21 | (v19 << 16);
        v22 = 4 << v20;
        if ((v21 & 0xC) == 4 << v20)
        {
          goto LABEL_70;
        }

        goto LABEL_16;
      }

      goto LABEL_92;
    }

    sub_1802E86D0(a1, 1, a7);
    v31 = (v15 + 16 * v14);
    v32 = v31[1];
    v68 = *v31;
    v69 = v32;
    v32;
    a8(&v70, &v68);
    v32;
    if (a3)
    {
      goto LABEL_92;
    }

    v33 = v71;
    if ((v71 & 0x2000000000000000) != 0)
    {
      v34 = HIBYTE(v71) & 0xF;
    }

    else
    {
      v34 = v70 & 0xFFFFFFFFFFFFLL;
    }

    v35 = v34 << 16;
    v36 = (v71 & 0x1000000000000000) == 0 || (v70 & 0x800000000000000) != 0;
    if (v36 == 1)
    {
      v18 = v35 | 7;
      if ((v71 & 0x1000000000000000) == 0)
      {
        LOBYTE(v37) = 1;
        goto LABEL_40;
      }
    }

    else
    {
      v18 = v35 | 0xB;
    }

    v37 = (v70 & 0x800000000000000) >> 59;
LABEL_40:
    if ((rawBits & 0xC) == 4 << v37)
    {
      toa._rawBits = v71;
      v52._rawBits = rawBits;
      v53 = v34;
      v54._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v52)._rawBits;
      v34 = v53;
      rawBits = v54._rawBits;
      v33 = toa._rawBits;
    }

    if ((v18 & 0xC) == 4 << v36)
    {
      tob._rawBits = v33;
      v55._rawBits = v18;
      v56 = v34;
      v57._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v55)._rawBits;
      v34 = v56;
      v18 = v57._rawBits;
      v33 = tob._rawBits;
      if ((tob._rawBits & 0x1000000000000000) == 0)
      {
        goto LABEL_44;
      }
    }

    else if ((v33 & 0x1000000000000000) == 0)
    {
LABEL_44:
      v33;
      v23 = (v18 >> 16) - (rawBits >> 16);
LABEL_45:
      v22 = 1;
      to = a5;
      v63 = v9;
      a5 = v11;
      v11 = v14;
      while (1)
      {
        v19 = v11 + 1;
        if (!__OFADD__(v11, 1))
        {
          if (v19 >= a5)
          {
LABEL_59:
            if (v63)
            {
              return v23;
            }

            sub_1802E86D0(a5, 1, a7);
            v41 = (v62 + 16 * a5);
            v42 = v41[1];
            v68 = *v41;
            v69 = v42;
            v42;
            a8(&v70, &v68);
            v42;
            v44 = v70;
            v43 = v71;
            v45 = (v70 >> 59) & 1;
            if ((v71 & 0x1000000000000000) == 0)
            {
              LOBYTE(v45) = 1;
            }

            if ((to & 0xC) != 4 << v45)
            {
              if ((v71 & 0x1000000000000000) == 0)
              {
                goto LABEL_64;
              }

LABEL_86:
              v60 = v44 & 0xFFFFFFFFFFFFLL;
              if ((v43 & 0x2000000000000000) != 0)
              {
                v60 = HIBYTE(v43) & 0xF;
              }

              if (v60 >= to >> 16)
              {
                v61 = v43;
                v46 = String.UTF8View._foreignDistance(from:to:)(15, to);
                v61;
                goto LABEL_65;
              }

LABEL_90:
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v59 = v71;
            to = _StringGuts._slowEnsureMatchingEncoding(_:)(to)._rawBits;
            v43 = v59;
            if ((v59 & 0x1000000000000000) != 0)
            {
              goto LABEL_86;
            }

LABEL_64:
            v43;
            v46 = to >> 16;
LABEL_65:
            v40 = __OFADD__(v23, v46 * v22);
            v23 += v46 * v22;
            if (!v40)
            {
              return v23;
            }

            __break(1u);
LABEL_92:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v9 = a7 + 16 * v11 + 56;
          v14 = v11 + 1;
          while (1)
          {
            if ((v19 & 0x8000000000000000) != 0 || v14 >= *(a7 + 16))
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v38 = *v9;
            v68 = *(v9 - 8);
            v69 = v38;
            v38;
            a8(&v70, &v68);
            v38;
            v39 = v70;
            v18 = v71;
            if ((v71 & 0x1000000000000000) != 0)
            {
              v11 = String.UTF8View._foreignCount()();
              v18;
            }

            else
            {
              v71;
              v11 = (v18 & 0x2000000000000000) != 0 ? HIBYTE(v18) & 0xF : v39 & 0xFFFFFFFFFFFFLL;
            }

            v40 = __OFADD__(v23, v11 * v22);
            v23 += v11 * v22;
            if (v40)
            {
              break;
            }

            ++v14;
            v9 += 16;
            if (a5 == v14)
            {
              goto LABEL_59;
            }
          }

          __break(1u);
        }

        __break(1u);
LABEL_70:
        v9 = _StringGuts._slowEnsureMatchingEncoding(_:)(v9)._rawBits;
LABEL_16:
        if ((a5 & 0xC) == v22)
        {
          a5 = _StringGuts._slowEnsureMatchingEncoding(_:)(a5)._rawBits;
          if ((v18 & 0x1000000000000000) == 0)
          {
LABEL_18:
            v18;
            v23 = (a5 >> 16) - (v9 >> 16);
            goto LABEL_19;
          }
        }

        else if ((v18 & 0x1000000000000000) == 0)
        {
          goto LABEL_18;
        }

        if (v19 < v9 >> 16 || v19 < a5 >> 16)
        {
          goto LABEL_90;
        }

        v23 = String.UTF8View._foreignDistance(from:to:)(v9, a5);
        v18;
LABEL_19:
        v22 = -1;
        a5 = v14;
      }
    }

    if (v34 < rawBits >> 16 || v34 < v18 >> 16)
    {
      goto LABEL_90;
    }

    v58._rawBits = v18;
    v18 = v33;
    v23 = String.UTF8View._foreignDistance(from:to:)(rawBits, v58);
    v18;
    goto LABEL_45;
  }

  if (a6)
  {
    if (a3)
    {
      return 0;
    }

    goto LABEL_92;
  }

  if (a3)
  {
    goto LABEL_92;
  }

  sub_1802E86D0(a4, 1, a7);
  v24 = a7 + 16 * v11;
  v25 = *(v24 + 40);
  v68 = *(v24 + 32);
  v69 = v25;
  v25;
  a8(&v70, &v68);
  v25;
  v27 = v70;
  v26 = v71;
  v28 = (v70 >> 59) & 1;
  if ((v71 & 0x1000000000000000) == 0)
  {
    LOBYTE(v28) = 1;
  }

  v29 = 4 << v28;
  if ((rawBits & 0xC) == 4 << v28)
  {
    v47 = v71;
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
    v26 = v47;
  }

  if ((a5 & 0xC) == v29)
  {
    v48 = v26;
    a5 = _StringGuts._slowEnsureMatchingEncoding(_:)(a5)._rawBits;
    v26 = v48;
    if ((v48 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }
  }

  else if ((v26 & 0x1000000000000000) == 0)
  {
LABEL_27:
    v26;
    return (a5 >> 16) - (rawBits >> 16);
  }

  v49 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v49 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (v49 < rawBits >> 16 || v49 < a5 >> 16)
  {
    goto LABEL_90;
  }

  v50 = v26;
  v51 = String.UTF8View._foreignDistance(from:to:)(rawBits, a5);
  v50;
  return v51;
}

unint64_t specialized FlattenSequence<>.distance(from:to:)(uint64_t a1, unint64_t a2, char a3, uint64_t a4, unint64_t a5, char a6, int a7, void (*a8)(uint64_t *__return_ptr, int *))
{
  v12 = a3;
  if (a4 == a1)
  {
    if (a6)
    {
      if (a3)
      {
        return 0;
      }

LABEL_36:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      goto LABEL_36;
    }

    if (!a4)
    {
      v25 = a7;
      a8(&v26, &v25);
      return specialized RandomAccessCollection<>.distance(from:to:)(a2, a5, v26);
    }

    goto LABEL_34;
  }

  if (a4 >= a1)
  {
    if (a1)
    {
      goto LABEL_34;
    }

    v15 = a4;
    v25 = a7;
    a8(&v26, &v25);
    if (v12)
    {
      goto LABEL_36;
    }

    v19 = 2;
    v20 = 3;
    if (v26 >= 0x10000)
    {
      v20 = 4;
    }

    if (v26 > 0x7FF)
    {
      v19 = v20;
    }

    if (v26 >= 0x80)
    {
      v21 = v19;
    }

    else
    {
      v21 = 1;
    }

    result = specialized RandomAccessCollection<>.distance(from:to:)(a2, v21, v26);
    v18 = 1;
    a2 = a5;
    v12 = a6;
  }

  else
  {
    if (a4)
    {
      goto LABEL_34;
    }

    v15 = a1;
    v25 = a7;
    a8(&v26, &v25);
    v16 = 3;
    if (v26 >= 0x10000)
    {
      v16 = 4;
    }

    if (v26 <= 0x7FF)
    {
      v16 = 2;
    }

    if (v26 >= 0x80)
    {
      v17 = v16;
    }

    else
    {
      v17 = 1;
    }

    if (a6)
    {
      goto LABEL_36;
    }

    result = specialized RandomAccessCollection<>.distance(from:to:)(v17, a5, v26);
    v18 = -1;
  }

  if (v15 >= 2)
  {
LABEL_34:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v12 & 1) == 0)
  {
    if (v15)
    {
      goto LABEL_34;
    }

    v25 = a7;
    v22 = result;
    a8(&v26, &v25);
    v23 = specialized RandomAccessCollection<>.distance(from:to:)(0, a2, v26);
    v24 = __OFADD__(v22, v23 * v18);
    result = v22 + v23 * v18;
    if (v24)
    {
      __break(1u);
      goto LABEL_36;
    }
  }

  return result;
}

Swift::UInt64 specialized FlattenSequence<>.distance(from:to:)(uint64_t a1, Swift::String::Index rawBits, char a3, uint64_t a4, Swift::String::Index a5, char a6, uint64_t a7, unint64_t a8, void (*a9)(unint64_t *__return_ptr, uint64_t *))
{
  v13 = a3;
  v15 = a9;
  if (a4 == a1)
  {
    if (a6)
    {
      if (a3)
      {
        return 0;
      }

LABEL_81:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      goto LABEL_81;
    }

    if (!a4)
    {
      v61 = a7;
      v62 = a8;
      a8;
      a9(&v63, &v61);
      a8;
      v25 = v63;
      v24 = v64;
      v26 = (v63 >> 59) & 1;
      if ((v64 & 0x1000000000000000) == 0)
      {
        LOBYTE(v26) = 1;
      }

      v27 = 4 << v26;
      if ((rawBits._rawBits & 0xC) == 4 << v26)
      {
        v42 = v64;
        rawBits._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
        v24 = v42;
      }

      if ((a5._rawBits & 0xC) == v27)
      {
        v43 = v24;
        a5._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a5)._rawBits;
        v24 = v43;
        if ((v43 & 0x1000000000000000) == 0)
        {
          goto LABEL_29;
        }
      }

      else if ((v24 & 0x1000000000000000) == 0)
      {
LABEL_29:
        v24;
        return (a5._rawBits >> 16) - (rawBits._rawBits >> 16);
      }

      v44 = HIBYTE(v24) & 0xF;
      if ((v24 & 0x2000000000000000) == 0)
      {
        v44 = v25 & 0xFFFFFFFFFFFFLL;
      }

      if (v44 >= rawBits._rawBits >> 16 && v44 >= a5._rawBits >> 16)
      {
        v45 = v24;
        v46._rawBits = rawBits._rawBits;
        v47 = v45;
        v48 = String.UTF8View._foreignDistance(from:to:)(v46, a5);
        v47;
        return v48;
      }

LABEL_79:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_59:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a4 < a1)
  {
    if (a4)
    {
      goto LABEL_59;
    }

    v60 = a1;
    v61 = a7;
    v62 = a8;
    a8;
    a9(&v63, &v61);
    a8;
    v17 = v64;
    if ((v64 & 0x2000000000000000) != 0)
    {
      v18 = HIBYTE(v64) & 0xF;
    }

    else
    {
      v18 = v63 & 0xFFFFFFFFFFFFLL;
    }

    v19 = (v63 >> 59) & 1;
    if ((v64 & 0x1000000000000000) == 0)
    {
      LODWORD(v19) = 1;
    }

    v20 = 11;
    if (v19)
    {
      v20 = 7;
    }

    if (a6)
    {
      goto LABEL_81;
    }

    v21 = v20 | (v18 << 16);
    v22 = 4 << v19;
    if ((v20 & 0xC) == 4 << v19)
    {
      v56 = v64;
      v21 = _StringGuts._slowEnsureMatchingEncoding(_:)(v21)._rawBits;
      v17 = v56;
    }

    if ((a5._rawBits & 0xC) == v22)
    {
      v57 = v17;
      a5._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a5)._rawBits;
      v17 = v57;
      v15 = a9;
      if ((v57 & 0x1000000000000000) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v15 = a9;
      if ((v17 & 0x1000000000000000) == 0)
      {
LABEL_19:
        v17;
        result = (a5._rawBits >> 16) - (v21 >> 16);
LABEL_20:
        v23 = -1;
        goto LABEL_49;
      }
    }

    if (v18 < v21 >> 16 || v18 < a5._rawBits >> 16)
    {
      goto LABEL_79;
    }

    v39._rawBits = a5._rawBits;
    v40 = v17;
    v41 = String.UTF8View._foreignDistance(from:to:)(v21, v39);
    v40;
    result = v41;
    goto LABEL_20;
  }

  if (a1)
  {
    goto LABEL_59;
  }

  v60 = a4;
  v61 = a7;
  v62 = a8;
  a8;
  a9(&v63, &v61);
  a8;
  if (v13)
  {
    goto LABEL_81;
  }

  v28 = v64;
  if ((v64 & 0x2000000000000000) != 0)
  {
    v29 = HIBYTE(v64) & 0xF;
  }

  else
  {
    v29 = v63 & 0xFFFFFFFFFFFFLL;
  }

  v30 = v29 << 16;
  v31 = (v64 & 0x1000000000000000) == 0 || (v63 & 0x800000000000000) != 0;
  if (v31 == 1)
  {
    v32._rawBits = v30 | 7;
    if ((v64 & 0x1000000000000000) == 0)
    {
      LOBYTE(v33) = 1;
      goto LABEL_43;
    }
  }

  else
  {
    v32._rawBits = v30 | 0xB;
  }

  v33 = (v63 & 0x800000000000000) >> 59;
LABEL_43:
  if ((rawBits._rawBits & 0xC) == 4 << v33)
  {
    v58 = v64;
    rawBits._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
    v28 = v58;
  }

  if ((v32._rawBits & 0xC) == 4 << v31)
  {
    v59 = v28;
    v32._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v32)._rawBits;
    v28 = v59;
    if ((v59 & 0x1000000000000000) == 0)
    {
      goto LABEL_47;
    }

LABEL_71:
    if (v29 < rawBits._rawBits >> 16 || v29 < v32._rawBits >> 16)
    {
      goto LABEL_79;
    }

    v49 = v28;
    v50._rawBits = rawBits._rawBits;
    v51 = v49;
    v52 = String.UTF8View._foreignDistance(from:to:)(v50, v32);
    v51;
    result = v52;
    goto LABEL_48;
  }

  if ((v28 & 0x1000000000000000) != 0)
  {
    goto LABEL_71;
  }

LABEL_47:
  v28;
  result = (v32._rawBits >> 16) - (rawBits._rawBits >> 16);
LABEL_48:
  v23 = 1;
  rawBits._rawBits = a5._rawBits;
  v13 = a6;
LABEL_49:
  if (v60 >= 2)
  {
    goto LABEL_59;
  }

  if ((v13 & 1) == 0)
  {
    if (v60)
    {
      goto LABEL_59;
    }

    v34 = result;
    v61 = a7;
    v62 = a8;
    a8;
    v15(&v63, &v61);
    a8;
    v36 = v63;
    v35 = v64;
    v37 = (v63 >> 59) & 1;
    if ((v64 & 0x1000000000000000) == 0)
    {
      LOBYTE(v37) = 1;
    }

    if ((rawBits._rawBits & 0xC) == 4 << v37)
    {
      v53 = v64;
      rawBits._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
      v35 = v53;
      if ((v53 & 0x1000000000000000) == 0)
      {
        goto LABEL_56;
      }
    }

    else if ((v64 & 0x1000000000000000) == 0)
    {
LABEL_56:
      v35;
      v38 = rawBits._rawBits >> 16;
LABEL_57:
      result = v34 + v38 * v23;
      if (__OFADD__(v34, v38 * v23))
      {
        __break(1u);
        goto LABEL_81;
      }

      return result;
    }

    v54 = v36 & 0xFFFFFFFFFFFFLL;
    if ((v35 & 0x2000000000000000) != 0)
    {
      v54 = HIBYTE(v35) & 0xF;
    }

    if (v54 < rawBits._rawBits >> 16)
    {
      goto LABEL_79;
    }

    v55 = v35;
    v38 = String.UTF8View._foreignDistance(from:to:)(15, rawBits);
    v55;
    goto LABEL_57;
  }

  return result;
}

uint64_t FlattenSequence<>.distance(from:to:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, int **a5)
{
  v9 = *(a3 + 16);
  v10 = type metadata accessor for FlattenSequence<>.Index(0, v9, a4, a5);
  v169 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v186 = v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v174 = v152 - v15;
  swift_getAssociatedTypeWitness(0, *(a4 + 8), v9, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v187 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v173 = v152 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v175 = v152 - v22;
  MEMORY[0x1EEE9AC00](v21, v23);
  v181 = v152 - v24;
  v184 = v25;
  swift_getAssociatedTypeWitness(255, a5, v25, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v27 = v26;
  v164 = type metadata accessor for Optional(0, v26, v28, v29);
  v166 = *(v164 - 8);
  v31 = MEMORY[0x1EEE9AC00](v164, v30);
  v158 = v152 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v171 = v152 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34, v36);
  v172 = v152 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v177 = (v152 - v41);
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v179 = v152 - v44;
  v165 = v27;
  v168 = *(v27 - 8);
  v46 = MEMORY[0x1EEE9AC00](v43, v45);
  v156 = v152 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v46, v48);
  v159 = v152 - v50;
  v52 = MEMORY[0x1EEE9AC00](v49, v51);
  v157 = v152 - v53;
  v55 = MEMORY[0x1EEE9AC00](v52, v54);
  v176 = v152 - v56;
  MEMORY[0x1EEE9AC00](v55, v57);
  v180 = v152 - v58;
  swift_getAssociatedTypeWitness(0, a4, v9, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v60 = v59;
  v162 = *(v59 - 8);
  v62 = MEMORY[0x1EEE9AC00](v59, v61);
  v160 = v152 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x1EEE9AC00](v62, v64);
  v67 = v152 - v66;
  MEMORY[0x1EEE9AC00](v65, v68);
  v70 = v152 - v69;
  v71 = a2;
  v178 = a1;
  v185 = a5;
  v72 = static FlattenSequence<>.Index.< infix(_:_:)(a2, a1, v9, a4, a5);
  v170 = v10;
  if (v72)
  {
    (*(a4 + 72))(v9, a4);
    (*(a4 + 64))(v9, a4);
    (*(a4 + 152))(v70, v67, v9, a4);
    v73 = *(v162 + 8);
    v73(v67, v60);
    v73(v70, v60);
    v10 = v170;
  }

  v163 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, v9, v60, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v183 = v60;
  v74 = v178;
  v75 = (*(*(AssociatedConformanceWitness + 8) + 8))(v178, a2, v60);
  v161 = a4;
  if ((v75 & 1) == 0)
  {
    v85 = *(v169 + 16);
    v86 = v72;
    v87 = (v187 + 16);
    v88 = v165;
    v179 = (v187 + 16);
    v180 = (a4 + 80);
    if (v86)
    {
      v89 = v174;
      v85(v174, v71, v10);
      v85(v186, v74, v10);
      v178 = *(a4 + 80);
      v90 = (v178)(v188, v89, v163, a4);
      v91 = *v87;
      v92 = v175;
      v93 = v184;
      v177 = v91;
      v91(v175);
      v90(v188, 0);
      v94 = v170;
      v95 = v185;
      v96 = v157;
      (v185[9])(v93, v185);
      v97 = &v89[*(v94 + 44)];
      v98 = v172;
      v155 = *(v166 + 16);
      v155(v172, v97, v164);
      v99 = v168;
      v154 = *(v168 + 48);
      if (v154(v98, 1, v88) == 1)
      {
        goto LABEL_25;
      }

      v153 = v95[19];
      v100 = (v153)(v96, v98, v93, v95);
      v101 = v96;
      v84 = v100;
      v176 = -1;
    }

    else
    {
      v106 = v174;
      v85(v174, v74, v10);
      v85(v186, v71, v10);
      v178 = *(a4 + 80);
      v107 = (v178)(v188, v106, v163, a4);
      v108 = v173;
      v93 = v184;
      v177 = *v87;
      v177(v173);
      v107(v188, 0);
      v109 = &v106[*(v170 + 44)];
      v110 = v171;
      v155 = *(v166 + 16);
      v155(v171, v109, v164);
      v99 = v168;
      v154 = *(v168 + 48);
      v111 = v154(v110, 1, v88);
      v95 = v185;
      if (v111 == 1)
      {
        goto LABEL_25;
      }

      v112 = v159;
      (v185[9])(v93, v185);
      v153 = v95[19];
      v84 = (v153)(v110, v112, v93, v95);
      v176 = 1;
      v101 = v112;
      v92 = v108;
      v98 = v110;
    }

    v113 = *(v99 + 8);
    v113(v101, v88);
    v114 = *(v187 + 8);
    v187 += 8;
    v175 = v114;
    (v114)(v92, v93);
    v152[1] = v99 + 8;
    v152[0] = v113;
    v113(v98, v88);
    v115 = v161;
    v116 = v160;
    v117 = v174;
    v118 = v167;
    v119 = v163;
    (*(v161 + 184))(v174, v163, v161);
    v120 = *(v169 + 8);
    v169 += 8;
    v157 = v120;
    (v120)(v117, v170);
    v121 = v183;
    v173 = *(AssociatedConformanceWitness + 16);
    v174 = (AssociatedConformanceWitness + 16);
    if (((v173)(v116, v186, v183) & 1) == 0)
    {
LABEL_17:
      (*(v162 + 8))(v116, v121);
      v130 = v170;
      v131 = v166;
      v132 = v186;
      v133 = v158;
      v134 = v164;
      v155(v158, &v186[*(v170 + 44)], v164);
      v135 = v168;
      v136 = v165;
      if (v154(v133, 1, v165) == 1)
      {
        (v157)(v132, v130);
        (*(v131 + 8))(v133, v134);
        return v84;
      }

      v137 = v133;
      v102 = v156;
      (*(v135 + 32))(v156, v137, v136);
      v138 = v130;
      v139 = (v178)(v188, v132, v163, v115);
      v103 = v181;
      v140 = v184;
      v177(v181);
      v139(v188, 0);
      (v157)(v132, v138);
      v141 = v185;
      v142 = v159;
      (v185[8])(v140, v185);
      v143 = (v153)(v142, v102, v140, v141);
      v105 = v152[0];
      (v152[0])(v142, v136);
      (v175)(v103, v140);
      v105(v102, v136);
      v129 = __OFADD__(v84, v143 * v176);
      v84 += v143 * v176;
      if (!v129)
      {
        return v84;
      }

      __break(1u);
      goto LABEL_22;
    }

    v122 = v95[14];
    v171 = *(v115 + 192);
    v172 = v122;
    while (1)
    {
      v123 = (v178)(v188, v116, v119, v115);
      v124 = v181;
      v125 = v118;
      v126 = v115;
      v127 = v184;
      v177(v181);
      v123(v188, 0);
      v128 = (v172)(v127, v185);
      (v175)(v124, v127);
      v129 = __OFADD__(v84, v128 * v176);
      v84 += v128 * v176;
      if (v129)
      {
        break;
      }

      (v171)(v116, v119, v126);
      v121 = v183;
      v115 = v126;
      v118 = v125;
      if (((v173)(v116, v186, v183, AssociatedConformanceWitness) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_25:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v76 = v166;
  v77 = *(v166 + 16);
  v78 = &v74[*(v10 + 44)];
  v79 = v179;
  v80 = v164;
  v77(v179, v78, v164);
  v81 = v168;
  v82 = *(v168 + 48);
  v83 = v165;
  if (v82(v79, 1, v165) != 1)
  {
    v102 = v83;
    v103 = *(v81 + 32);
    (v103)(v180, v79, v83);
    v104 = v71 + *(v170 + 44);
    v105 = v177;
    v77(v177, v104, v80);
    if (v82(v105, 1, v83) == 1)
    {
      (*(v168 + 8))(v180, v83);
      (*(v166 + 8))(v105, v80);
      return 0;
    }

LABEL_22:
    v144 = v176;
    (v103)(v176, v105, v102);
    v145 = (*(v161 + 80))(v188, v178, v163);
    v146 = v187;
    v147 = v181;
    v148 = v184;
    (*(v187 + 16))(v181);
    v145(v188, 0);
    v149 = v180;
    v84 = (v185[19])(v180, v144, v148);
    (*(v146 + 8))(v147, v148);
    v150 = *(v168 + 8);
    v150(v144, v102);
    v150(v149, v102);
    return v84;
  }

  (*(v76 + 8))(v79, v80);
  return 0;
}

uint64_t FlattenSequence<>._advanceIndex(_:step:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for FlattenSequence<>.Index(0, *(a3 + 16), a4, a5);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v17 - v13;
  v15 = &v17 - v13;
  if (a2 < 0)
  {
    FlattenSequence<>._index(before:)(a1, a3, a4, a5, v15);
  }

  else
  {
    FlattenSequence<>._index(after:)(a1, a3, a4, a5, v15);
  }

  (*(v11 + 8))(a1, v10);
  return (*(v11 + 32))(a1, v14, v10);
}

uint64_t FlattenSequence<>._ensureBidirectional(step:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, a3, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  v27 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v26 - v13;
  v17 = type metadata accessor for Optional(0, v7, v15, v16);
  result = MEMORY[0x1EEE9AC00](v17, v18);
  v22 = &v26 - v21;
  if (a1 < 0)
  {
    v23 = a1;
    v24 = v20;
    (*(a3 + 72))(v5, a3);
    (*(a3 + 64))(v5, a3);
    (*(a3 + 144))(v14, v23, v11, v5, a3);
    v25 = *(v27 + 8);
    v25(v11, v7);
    v25(v14, v7);
    return (*(v24 + 8))(v22, v17);
  }

  return result;
}

uint64_t FlattenSequence<>.index(_:offsetBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v11 = *(a3 + 16);
  v47 = a5;
  v12 = type metadata accessor for FlattenSequence<>.Index(0, v11, a4, a5);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v38 - v15;
  v45 = v11;
  swift_getAssociatedTypeWitness(0, a4, v11, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v44 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17, v17);
  v42 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v38 - v21;
  v43 = v23;
  v26 = type metadata accessor for Optional(0, v23, v24, v25);
  v40 = *(v26 - 8);
  v41 = v26;
  MEMORY[0x1EEE9AC00](v26, v27);
  v46 = &v38 - v28;
  result = (*(v13 + 16))(a6, a1, v12);
  v30 = a2 >> 63;
  if (a2 >> 63 < 0)
  {
    v38 = v13;
    v39 = v22;
    v31 = v45;
    (*(a4 + 72))(v45, a4);
    v32 = v42;
    (*(a4 + 64))(v31, a4);
    (*(a4 + 144))(v39, a2 >> 63, v32, v31, a4);
    v45 = *(v44 + 8);
    v33 = v32;
    v34 = v43;
    (v45)(v33, v43);
    (v45)(v39, v34);
    result = (*(v40 + 8))(v46, v41);
    v35 = __OFSUB__(0, a2);
    a2 = -a2;
    if (v35)
    {
      __break(1u);
      return result;
    }

    v13 = v38;
    if (a2 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else if (!a2)
  {
    return result;
  }

  v36 = (v13 + 8);
  v37 = (v13 + 32);
  do
  {
    if (v30 < 0)
    {
      FlattenSequence<>._index(before:)(a6, a3, a4, v47, v16);
    }

    else
    {
      FlattenSequence<>._index(after:)(a6, a3, a4, v47, v16);
    }

    (*v36)(a6, v12);
    result = (*v37)(a6, v16, v12);
    --a2;
  }

  while (a2);
  return result;
}

uint64_t FlattenSequence<>.formIndex(_:offsetBy:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for FlattenSequence<>.Index(0, *(a3 + 16), a4, a5);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v16 - v13;
  (*(v11 + 32))(&v16 - v13, a1, v10);
  FlattenSequence<>.index(_:offsetBy:)(v14, a2, a3, a4, a5, a1);
  return (*(v11 + 8))(v14, v10);
}

uint64_t FlattenSequence<>.index(_:offsetBy:limitedBy:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int **a6@<X5>, char *a7@<X8>)
{
  v9 = a5;
  v115 = a3;
  v116 = a1;
  v87 = a7;
  v11 = *(a5 + 8);
  v111 = a4;
  v12 = *(a4 + 16);
  swift_getAssociatedTypeWitness(255, v11, v12, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v92 = v13;
  swift_getAssociatedTypeWitness(0, a6, v13, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v107 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v14);
  v91 = &v86 - v15;
  v101 = v16;
  v19 = type metadata accessor for Optional(0, v16, v17, v18);
  v106 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v19);
  v95 = &v86 - v20;
  v102 = v21;
  swift_getTupleTypeMetadata2(0, v21, v21, 0, 0);
  v103 = v22;
  v105 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v104 = &v86 - v24;
  swift_getAssociatedTypeWitness(0, v9, v12, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v26 = v25;
  v99 = *(v25 - 8);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v30 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v31);
  v33 = &v86 - v32;
  v36 = type metadata accessor for Optional(0, v26, v34, v35);
  v108 = *(v36 - 8);
  v109 = v36;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = (&v86 - v38);
  v40 = v12;
  v113 = a6;
  v41 = type metadata accessor for FlattenSequence<>.Index(0, v12, v9, a6);
  v43 = MEMORY[0x1EEE9AC00](v41, v42);
  v112 = &v86 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v45);
  v47 = &v86 - v46;
  v88 = v48;
  v49 = *(v48 + 16);
  v50 = v116;
  v116 = v51;
  v49(&v86 - v46, v50);
  v114 = a2 >> 63;
  v110 = v12;
  if (a2 >> 63 < 0)
  {
    (*(v9 + 72))(v12, v9);
    (*(v9 + 64))(v12, v9);
    v56 = *(v9 + 144);
    v96 = v39;
    v52 = v7;
    v57 = v99;
    v56(v33, a2 >> 63, v30, v40, v9);
    v58 = v57[1];
    (v58)(v30, v26);
    (v58)(v33, v26);
    result = (*(v108 + 8))(v96, v109);
    v60 = __OFSUB__(0, a2);
    a2 = -a2;
    if (v60)
    {
      __break(1u);
      return result;
    }

    v53 = v26;
    if ((a2 & 0x8000000000000000) != 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else
  {
    v52 = v7;
    v53 = v26;
    if (!a2)
    {
      v54 = *(v88 + 32);
      v55 = v87;
LABEL_21:
      v83 = v116;
      v54(v55, v47, v116);
      return (*(v88 + 56))(v55, 0, 1, v83);
    }
  }

  v110 = *(swift_getAssociatedConformanceWitness(v9, v110, v53, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
  v108 = *(v110 + 1);
  v109 = v110 + 8;
  v61 = (v106 + 16);
  v99 = (v107 + 6);
  v89 = (v107 + 4);
  v94 = v107 + 1;
  v90 = (v106 + 8);
  v96 = (v105 + 1);
  v107 = (v88 + 8);
  v105 = (v88 + 32);
  v86 = (v88 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v62 = v102;
  v63 = v104;
  v106 += 16;
  v97 = v53;
  v98 = v9;
  v100 = v52;
  for (i = (v108)(v47, v115, v53, v110); ; i = (v108)(v47, v115, v53, v110))
  {
    v67 = v52;
    v70 = v112;
    v71 = v114;
    if ((i & 1) == 0)
    {
      goto LABEL_9;
    }

    v104 = a2;
    v72 = v61;
    v73 = *(v116 + 44);
    v74 = *(v103 + 48);
    v75 = *v72;
    (*v72)(v63, &v47[v73], v62);
    v75(&v63[v74], (v115 + v73), v62);
    v76 = *v99;
    v77 = v101;
    if ((*v99)(v63, 1, v101) == 1)
    {
      break;
    }

    v78 = v95;
    v75(v95, v63, v102);
    if (v76(&v63[v74], 1, v77) == 1)
    {
      (*v94)(v78, v77);
      v66 = v100;
      v71 = v114;
      a2 = v104;
      goto LABEL_8;
    }

    v79 = v91;
    (*v89)(v91, &v63[v74], v77);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v113, v92, v77, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
    v93 = (*(*(AssociatedConformanceWitness + 8) + 8))(v78, v79, v77);
    v81 = v77;
    v82 = *v94;
    (*v94)(v79, v81);
    v82(v78, v81);
    v62 = v102;
    (*v90)(v63, v102);
    v67 = v100;
    v53 = v97;
    v9 = v98;
    v71 = v114;
    a2 = v104;
    if (v93)
    {
      goto LABEL_23;
    }

LABEL_9:
    v68 = v9;
    if (v71 < 0)
    {
      v52 = v67;
      FlattenSequence<>._index(before:)(v47, v111, v9, v113, v70);
    }

    else
    {
      v52 = v67;
      FlattenSequence<>._index(after:)(v47, v111, v9, v113, v70);
    }

    v69 = v116;
    (*v107)(v47, v116);
    v54 = *v105;
    (*v105)(v47, v70, v69);
    --a2;
    v9 = v68;
    v61 = v106;
    if (!a2)
    {
      v55 = v87;
      goto LABEL_21;
    }
  }

  v65 = v76(&v63[v74], 1, v77);
  v66 = v100;
  a2 = v104;
  if (v65 != 1)
  {
LABEL_8:
    v67 = v66;
    (*v96)(v63, v103);
    v53 = v97;
    v9 = v98;
    v62 = v102;
    goto LABEL_9;
  }

  (*v90)(v63, v102);
LABEL_23:
  v84 = v88;
  v85 = v116;
  (*(v88 + 8))(v47, v116);
  return (*(v84 + 56))(v87, 1, 1, v85);
}

BOOL FlattenSequence<>.formIndex(_:offsetBy:limitedBy:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int **a6)
{
  v12 = type metadata accessor for FlattenSequence<>.Index(255, *(a4 + 16), a5, a6);
  v23 = type metadata accessor for Optional(0, v12, v13, v14);
  v15 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v16);
  v18 = &v22 - v17;
  FlattenSequence<>.index(_:offsetBy:limitedBy:)(a1, a2, a3, a4, a5, a6, &v22 - v17);
  v19 = *(v12 - 8);
  (*(v19 + 8))(a1, v12);
  v20 = (*(v19 + 48))(v18, 1, v12);
  if (v20 == 1)
  {
    (*(v15 + 8))(v18, v23);
    (*(v19 + 16))(a1, a3, v12);
  }

  else
  {
    (*(v19 + 32))(a1, v18, v12);
  }

  return v20 != 1;
}

uint64_t FlattenSequence<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a5;
  v8 = *(a2 + 16);
  swift_getAssociatedTypeWitness(255, *(a3 + 8), v8, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10 = v9;
  swift_getAssociatedTypeWitness(255, a4, v9, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v34 = v11;
  v33 = type metadata accessor for Optional(0, v11, v12, v13);
  v14 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v15);
  v17 = &v32 - v16;
  v18 = swift_checkMetadataState(0, v10);
  v19 = *(v18 - 1);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v32 - v21;
  v23 = (*(a3 + 80))(v35, a1, v8, a3);
  (*(v19 + 16))(v22);
  v23(v35, 0);
  v24 = a1 + *(type metadata accessor for FlattenSequence<>.Index(0, v8, a3, a4) + 44);
  v25 = v34;
  (*(v14 + 16))(v17, v24, v33);
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v17, 1, v25) == 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v27 = (*(a4 + 80))(v35, v17, v18, a4);
  v29 = v28;
  swift_getAssociatedTypeWitness(0, *(a4 + 8), v18, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  (*(*(v30 - 8) + 16))(v32, v29, v30);
  v27(v35, 0);
  (*(v19 + 8))(v22, v18);
  return (*(v26 + 8))(v17, v25);
}

{
  return ClosedRange<>.subscript.getter(a1, a2, a3, a4, type metadata accessor for FlattenSequence<>.Index, &protocol witness table for FlattenSequence<A><>.Index, protocol conformance descriptor for <> FlattenSequence<A>, a5);
}

uint64_t ClosedRange<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, void)@<X4>, uint64_t a6@<X5>, int *a7@<X6>, uint64_t a8@<X8>)
{
  v11 = v8;
  v29 = a1;
  v16 = a5(255, *(a2 + 16));
  v18 = type metadata accessor for Range(0, v16, a6, v17);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v28 - v21;
  v30[0] = a3;
  v30[1] = a4;
  WitnessTable = swift_getWitnessTable(a7, a2, v30);
  v25 = type metadata accessor for Slice(0, a2, WitnessTable, v24);
  (*(*(a2 - 8) + 16))(a8 + *(v25 + 40), v11, a2);
  (*(v19 + 16))(v22, v29, v18);
  v26 = *(*(v16 - 8) + 32);
  v26(a8, v22, v16);
  return (v26)(a8 + *(v25 + 36), &v22[*(v18 + 36)], v16);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance <> FlattenSequence<A>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc(0x28, 0xEC1EuLL);
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = FlattenSequence<>.subscript.read(v8, a2, a3, *(a4 - 8), *(a4 - 16));
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*FlattenSequence<>.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = *(a5 + 8);
  swift_getAssociatedTypeWitness(255, *(a4 + 8), *(a3 + 16), &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  swift_getAssociatedTypeWitness(0, v10, v11, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  *a1 = v12;
  v13 = *(v12 - 8);
  a1[1] = v13;
  v14 = *(v13 + 64);
  if (swift_coroFrameAlloc)
  {
    v15 = swift_coroFrameAlloc(v14, 0x6DB8uLL);
  }

  else
  {
    v15 = malloc(v14);
  }

  a1[2] = v15;
  FlattenSequence<>.subscript.getter(a2, a3, a4, a5, v15);
  return _ArrayBuffer.subscript.read;
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance <> FlattenSequence<A>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = type metadata accessor for FlattenSequence<>.Index(255, *(a1 + 16), *(a2 - 8), *(a2 - 16));
  v7 = type metadata accessor for Optional(0, v4, v5, v6);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, 1, 1, v7);
}

uint64_t FlattenSequence<>.formIndex(before:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 8);
  v7 = *(a4 + 8);
  v8 = type metadata accessor for FlattenSequence<>.Index(0, *(a2 + 16), v6, v7);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v14 - v11;
  (*(v9 + 32))(&v14 - v11, a1, v8);
  FlattenSequence<>._index(before:)(v12, a2, v6, v7, a1);
  return (*(v9 + 8))(v12, v8);
}

uint64_t static FloatingPoint.ulpOfOne.getter(Class *a1, uint64_t a2)
{
  return static FloatingPoint.ulpOfOne.getter(a1, a2);
}

{
  v4 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(*(v7 + 16) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v8, a1, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v16 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, a1, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_1806729C0, 512, v10, AssociatedConformanceWitness);
  (*(v8 + 24))(v13, a1, v8);
  (*(a2 + 136))(a1, a2);
  return (*(v4 + 8))(v6, a1);
}

uint64_t FloatingPoint.remainder(dividingBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  (*(*(a2 - 8) + 16))(a4, v7, a2);
  return (*(a3 + 216))(a1, a2, a3);
}

{
  (*(*(a2 - 8) + 16))(a4, v4, a2);
  return (*(a3 + 216))(a1, a2, a3);
}

uint64_t FloatingPoint.truncatingRemainder(dividingBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  (*(*(a2 - 8) + 16))(a4, v7, a2);
  return (*(a3 + 232))(a1, a2, a3);
}

{
  (*(*(a2 - 8) + 16))(a4, v4, a2);
  return (*(a3 + 232))(a1, a2, a3);
}

uint64_t FloatingPoint.squareRoot()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a1 - 8) + 16))(a3, v3, a1);
  return (*(a2 + 248))(a1, a2);
}

{
  (*(*(a1 - 8) + 16))(a3, v3, a1);
  return (*(a2 + 248))(a1, a2);
}

uint64_t FloatingPoint.addingProduct(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, v5);
  return (*(a4 + 264))(a1, a2, a3, a4);
}

{
  (*(*(a3 - 8) + 16))(a5, v5);
  return (*(a4 + 264))(a1, a2, a3, a4);
}

uint64_t static FloatingPoint.minimum(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return static FloatingPoint.minimum(_:_:)(a1, a2, a3, a4, a5);
}

{
  if (((*(*(*(a4 + 24) + 8) + 24))() & 1) == 0 && ((*(a4 + 408))(a3, a4) & 1) == 0)
  {
    a1 = a2;
  }

  v10 = *(*(a3 - 8) + 16);

  return v10(a5, a1, a3);
}

uint64_t static FloatingPoint.maximum(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return static FloatingPoint.maximum(_:_:)(a1, a2, a3, a4, a5);
}

{
  if (((*(*(*(a4 + 24) + 8) + 40))() & 1) == 0 && ((*(a4 + 408))(a3, a4) & 1) == 0)
  {
    a1 = a2;
  }

  v10 = *(*(a3 - 8) + 16);

  return v10(a5, a1, a3);
}

uint64_t static FloatingPoint.minimumMagnitude(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return static FloatingPoint.minimumMagnitude(_:_:)(a1, a2, a3, a4, a5);
}

{
  v29 = a5;
  v8 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v26 - v14;
  v17 = *(*(v16 + 16) + 8);
  v18 = *(v17 + 56);
  v28 = v13;
  v18(v19, v17);
  v27 = a2;
  v18(a3, v17);
  v20 = (*(*(*(a4 + 24) + 8) + 24))(v15, v11, a3);
  v21 = *(v8 + 8);
  v21(v11, a3);
  v21(v15, a3);
  if (v20)
  {
    v22 = v28;
  }

  else
  {
    v23 = v27;
    v24 = (*(a4 + 408))(a3, a4);
    v22 = v28;
    if ((v24 & 1) == 0)
    {
      v22 = v23;
    }
  }

  return (*(v8 + 16))(v29, v22, a3);
}

uint64_t static FloatingPoint.maximumMagnitude(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return static FloatingPoint.maximumMagnitude(_:_:)(a1, a2, a3, a4, a5);
}

{
  v29 = a5;
  v8 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v26 - v14;
  v17 = *(*(v16 + 16) + 8);
  v18 = *(v17 + 56);
  v28 = v13;
  v18(v19, v17);
  v27 = a2;
  v18(a3, v17);
  v20 = (*(*(*(a4 + 24) + 8) + 40))(v15, v11, a3);
  v21 = *(v8 + 8);
  v21(v11, a3);
  v21(v15, a3);
  if (v20)
  {
    v22 = v28;
  }

  else
  {
    v23 = v27;
    v24 = (*(a4 + 408))(a3, a4);
    v22 = v28;
    if ((v24 & 1) == 0)
    {
      v22 = v23;
    }
  }

  return (*(v8 + 16))(v29, v22, a3);
}

uint64_t FloatingPoint.rounded(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  (*(*(a2 - 8) + 16))(a4, v7, a2);
  return (*(a3 + 312))(a1, a2, a3);
}

{
  (*(*(a2 - 8) + 16))(a4, v4, a2);
  return (*(a3 + 312))(a1, a2, a3);
}

uint64_t FloatingPoint.nextDown.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = MEMORY[0x1EEE9AC00](v2, a2);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v18 - v11;
  v14 = *(v13 + 16);
  v15 = *(v14 + 16);
  v15(v10, a1, v14);
  (*(a2 + 320))(a1, a2);
  v16 = *(v5 + 8);
  v16(v12, a1);
  v15(v8, a1, v14);
  return (v16)(v8, a1);
}

{
  v5 = *(a1 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v17 - v10;
  v13 = *(v12 + 16);
  v14 = *(v13 + 16);
  v14(v2, a1, v13);
  (*(a2 + 320))(a1, a2);
  v15 = *(v5 + 8);
  v15(v11, a1);
  v14(v8, a1, v13);
  return (v15)(v8, a1);
}

uint64_t specialized FloatingPoint.floatingPointClass.getter(float a1)
{
  v1 = (LODWORD(a1) >> 10) & 0x1F;
  if (SLOWORD(a1) < 0)
  {
    v2 = 5;
  }

  else
  {
    v2 = 6;
  }

  if (SLOWORD(a1) < 0)
  {
    v3 = 4;
  }

  else
  {
    v3 = 7;
  }

  if ((LOWORD(a1) & 0x3FF) != 0)
  {
    v2 = v3;
  }

  if (SLOWORD(a1) < 0)
  {
    v4 = 3;
  }

  else
  {
    v4 = 8;
  }

  if (SLOWORD(a1) < 0)
  {
    v5 = 2;
  }

  else
  {
    v5 = 9;
  }

  if ((SLOWORD(a1) & 0x3FF) != 0)
  {
    v6 = (SLOWORD(a1) >> 9) & 1;
  }

  else
  {
    v6 = v5;
  }

  if (v1 != 31)
  {
    v6 = v4;
  }

  if (v1)
  {
    return v6;
  }

  else
  {
    return v2;
  }
}

{
  if (a1 < 0.0)
  {
    v1 = 5;
  }

  else
  {
    v1 = 6;
  }

  if (a1 < 0.0)
  {
    v2 = 4;
  }

  else
  {
    v2 = 7;
  }

  if ((LODWORD(a1) & 0x7FFFFF) != 0)
  {
    v1 = v2;
  }

  if (a1 < 0.0)
  {
    v3 = 3;
  }

  else
  {
    v3 = 8;
  }

  if (a1 < 0.0)
  {
    v4 = 2;
  }

  else
  {
    v4 = 9;
  }

  if ((LODWORD(a1) & 0x7FFFFF) != 0)
  {
    v5 = (LODWORD(a1) >> 22) & 1;
  }

  else
  {
    v5 = v4;
  }

  if ((LODWORD(a1) >> 23) != 255)
  {
    v5 = v3;
  }

  if ((LODWORD(a1) >> 23))
  {
    return v5;
  }

  else
  {
    return v1;
  }
}

uint64_t specialized FloatingPoint.floatingPointClass.getter(double a1)
{
  v1 = (*&a1 >> 52) & 0x7FFLL;
  if (a1 < 0.0)
  {
    v2 = 5;
  }

  else
  {
    v2 = 6;
  }

  if (a1 < 0.0)
  {
    v3 = 4;
  }

  else
  {
    v3 = 7;
  }

  if ((*&a1 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v2 = v3;
  }

  if (a1 < 0.0)
  {
    v4 = 3;
  }

  else
  {
    v4 = 8;
  }

  if (a1 < 0.0)
  {
    v5 = 2;
  }

  else
  {
    v5 = 9;
  }

  if ((*&a1 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v6 = (*&a1 >> 51) & 1;
  }

  else
  {
    v6 = v5;
  }

  if (v1 != 2047)
  {
    v6 = v4;
  }

  if (v1)
  {
    return v6;
  }

  else
  {
    return v2;
  }
}

uint64_t FloatingPoint.floatingPointClass.getter(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 416))())
  {
    return 0;
  }

  if ((*(a2 + 408))(a1, a2))
  {
    return 1;
  }

  if ((*(a2 + 400))(a1, a2))
  {
    if ((*(a2 + 168))(a1, a2))
    {
      return 2;
    }

    else
    {
      return 9;
    }
  }

  else if ((*(a2 + 368))(a1, a2))
  {
    if ((*(a2 + 168))(a1, a2))
    {
      return 3;
    }

    else
    {
      return 8;
    }
  }

  else
  {
    v5 = (*(a2 + 392))(a1, a2);
    v6 = (*(a2 + 168))(a1, a2);
    if (v6)
    {
      v7 = 5;
    }

    else
    {
      v7 = 6;
    }

    if (v6)
    {
      v8 = 4;
    }

    else
    {
      v8 = 7;
    }

    if (v5)
    {
      return v8;
    }

    else
    {
      return v7;
    }
  }
}

Swift::FloatingPointSign_optional __swiftcall FloatingPointSign.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = Swift_FloatingPointSign_minus;
  }

  else
  {
    v1.value = Swift_FloatingPointSign_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance FloatingPointSign@<X0>(void *result@<X0>, char *a2@<X8>)
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FloatingPointClassification()
{
  v1 = *v0;
  specialized Hasher.init(_seed:)(0, v3);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FloatingPointClassification(uint64_t a1)
{
  v2 = *v1;
  specialized Hasher.init(_seed:)(a1, v4);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t specialized BinaryFloatingPoint.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  return (*(a2 + 64))();
}

{
  return (*(a2 + 72))();
}

double specialized BinaryFloatingPoint.init<A>(_:)(uint64_t a1, Class *a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v74 = &v72 - v8;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawExponent);
  v72 = *(v9 - 8);
  v73 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v72 - v12;
  v14 = *(a2 - 1);
  v16 = MEMORY[0x1EEE9AC00](v11, v15);
  v18 = (&v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = (&v72 - v21);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = (&v72 - v24);
  v26 = (*(a3 + 96))(a2, a3);
  v27 = (*(a3 + 104))(a2, a3);
  if (v26 == 11)
  {
    if (v27 == 52)
    {
      (*(v14 + 16))(v18, a1, a2);
      if (!swift_dynamicCast(&v77, v18, a2, &type metadata for Double, 6uLL, v36, v37, v38, v72))
      {
        v39 = (*(*(a3 + 16) + 168))(a2);
        (*(a3 + 112))(a2, a3);
        v40 = v73;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v73, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
        v42 = (*(*(AssociatedConformanceWitness + 8) + 120))(v40);
        (*(v72 + 8))(v13, v40);
        v43 = v74;
        (*(a3 + 120))(a2, a3);
        (*(v14 + 8))(a1, a2);
        v44 = a2;
        v45 = v76;
        v46 = swift_getAssociatedConformanceWitness(a3, v44, v76, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
        v47 = (*(*(v46 + 8) + 120))(v45);
        (*(v75 + 8))(v43, v45);
        *&result = (v39 << 63) | ((v42 & 0x7FF) << 52) | v47 & 0xFFFFFFFFFFFFFLL;
        return result;
      }

      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v26 == 8)
  {
    if (v27 == 23)
    {
      (*(v14 + 16))(v22, a1, a2);
      if (swift_dynamicCast(&v77, v22, a2, &type metadata for Float, 6uLL, v32, v33, v34, v72))
      {
        (*(v14 + 8))(a1, a2);
        return *&v77;
      }

      else
      {
        v48 = (*(*(a3 + 16) + 168))(a2);
        (*(a3 + 112))(a2, a3);
        v49 = v73;
        v50 = swift_getAssociatedConformanceWitness(a3, a2, v73, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
        v51 = (*(*(v50 + 8) + 120))(v49);
        (*(v72 + 8))(v13, v49);
        v52 = v74;
        (*(a3 + 120))(a2, a3);
        (*(v14 + 8))(a1, a2);
        v53 = a2;
        v54 = v76;
        v55 = swift_getAssociatedConformanceWitness(a3, v53, v76, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
        v56 = (*(*(v55 + 8) + 120))(v54);
        (*(v75 + 8))(v52, v54);
        if (v48)
        {
          v57 = 0x80000000;
        }

        else
        {
          v57 = 0;
        }

        return COERCE_FLOAT(v57 & 0x80000000 | (v51 << 23) | v56 & 0x7FFFFF);
      }
    }

    goto LABEL_13;
  }

  if (v26 != 5 || v27 != 10)
  {
LABEL_13:
    specialized static BinaryFloatingPoint._convert<A>(from:)(&v77, a1, a2, a3);
LABEL_14:
    (*(v14 + 8))(a1, a2);
    return v77;
  }

  (*(v14 + 16))(v25, a1, a2);
  if (swift_dynamicCast(&v77, v25, a2, &type metadata for Float16, 6uLL, v28, v29, v30, v72))
  {
    (*(v14 + 8))(a1, a2);
    _H0 = LOWORD(v77);
  }

  else
  {
    v58 = (*(*(a3 + 16) + 168))(a2);
    (*(a3 + 112))(a2, a3);
    v59 = v73;
    v60 = swift_getAssociatedConformanceWitness(a3, a2, v73, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
    v61 = (*(*(v60 + 8) + 120))(v59);
    (*(v72 + 8))(v13, v59);
    v62 = v74;
    (*(a3 + 120))(a2, a3);
    (*(v14 + 8))(a1, a2);
    v63 = a2;
    v64 = v76;
    v65 = swift_getAssociatedConformanceWitness(a3, v63, v76, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
    v66 = (*(*(v65 + 8) + 120))(v64);
    (*(v75 + 8))(v62, v64);
    if (v58)
    {
      v67 = 0x8000;
    }

    else
    {
      v67 = 0;
    }

    _H0 = v67 & 0x8000 | ((v61 & 0x1F) << 10) | v66 & 0x3FF;
  }

  __asm { FCVT            D0, H0 }

  return result;
}

float specialized BinaryFloatingPoint.init<A>(_:)(uint64_t a1, Class *a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v74 = &v72 - v8;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawExponent);
  v72 = *(v9 - 8);
  v73 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v72 - v12;
  v14 = *(a2 - 1);
  v16 = MEMORY[0x1EEE9AC00](v11, v15);
  v18 = (&v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = (&v72 - v21);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = (&v72 - v24);
  v26 = (*(a3 + 96))(a2, a3);
  v27 = (*(a3 + 104))(a2, a3);
  if (v26 == 11)
  {
    if (v27 == 52)
    {
      (*(v14 + 16))(v18, a1, a2);
      if (swift_dynamicCast(&v77, v18, a2, &type metadata for Double, 6uLL, v46, v47, v48, v72))
      {
        (*(v14 + 8))(a1, a2);
        return v77;
      }

      else
      {
        v49 = (*(*(a3 + 16) + 168))(a2);
        (*(a3 + 112))(a2, a3);
        v50 = v73;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v73, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
        v52 = (*(*(AssociatedConformanceWitness + 8) + 120))(v50);
        (*(v72 + 8))(v13, v50);
        v53 = v74;
        (*(a3 + 120))(a2, a3);
        (*(v14 + 8))(a1, a2);
        v54 = a2;
        v55 = v76;
        v56 = swift_getAssociatedConformanceWitness(a3, v54, v76, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
        v57 = (*(*(v56 + 8) + 120))(v55);
        (*(v75 + 8))(v53, v55);
        return COERCE_DOUBLE((v49 << 63) | ((v52 & 0x7FF) << 52) | v57 & 0xFFFFFFFFFFFFFLL);
      }
    }

    goto LABEL_16;
  }

  if (v26 == 8)
  {
    if (v27 == 23)
    {
      (*(v14 + 16))(v22, a1, a2);
      if (!swift_dynamicCast(&v77, v22, a2, &type metadata for Float, 6uLL, v32, v33, v34, v72))
      {
        v35 = (*(*(a3 + 16) + 168))(a2);
        (*(a3 + 112))(a2, a3);
        v36 = v73;
        v37 = swift_getAssociatedConformanceWitness(a3, a2, v73, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
        v38 = (*(*(v37 + 8) + 120))(v36);
        (*(v72 + 8))(v13, v36);
        v39 = v74;
        (*(a3 + 120))(a2, a3);
        (*(v14 + 8))(a1, a2);
        v40 = a2;
        v41 = v76;
        v42 = swift_getAssociatedConformanceWitness(a3, v40, v76, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
        v43 = (*(*(v42 + 8) + 120))(v41);
        (*(v75 + 8))(v39, v41);
        if (v35)
        {
          v44 = 0x80000000;
        }

        else
        {
          v44 = 0;
        }

        LODWORD(result) = v44 & 0x80000000 | (v38 << 23) | v43 & 0x7FFFFF;
        return result;
      }

LABEL_17:
      (*(v14 + 8))(a1, a2);
      return *&v77;
    }

LABEL_16:
    specialized static BinaryFloatingPoint._convert<A>(from:)(&v77, a1, a2, a3);
    goto LABEL_17;
  }

  if (v26 != 5 || v27 != 10)
  {
    goto LABEL_16;
  }

  (*(v14 + 16))(v25, a1, a2);
  if (swift_dynamicCast(&v77, v25, a2, &type metadata for Float16, 6uLL, v28, v29, v30, v72))
  {
    (*(v14 + 8))(a1, a2);
    _H0 = LOWORD(v77);
  }

  else
  {
    v58 = (*(*(a3 + 16) + 168))(a2);
    (*(a3 + 112))(a2, a3);
    v59 = v73;
    v60 = swift_getAssociatedConformanceWitness(a3, a2, v73, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
    v61 = (*(*(v60 + 8) + 120))(v59);
    (*(v72 + 8))(v13, v59);
    v62 = v74;
    (*(a3 + 120))(a2, a3);
    (*(v14 + 8))(a1, a2);
    v63 = a2;
    v64 = v76;
    v65 = swift_getAssociatedConformanceWitness(a3, v63, v76, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
    v66 = (*(*(v65 + 8) + 120))(v64);
    (*(v75 + 8))(v62, v64);
    if (v58)
    {
      v67 = 0x8000;
    }

    else
    {
      v67 = 0;
    }

    _H0 = v67 & 0x8000 | ((v61 & 0x1F) << 10) | v66 & 0x3FF;
  }

  __asm { FCVT            S0, H0 }

  return result;
}

__int16 specialized BinaryFloatingPoint.init<A>(_:)@<H0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>)
{
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v78 = *(v6 - 8);
  v79 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v77 = &v75 - v8;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawExponent);
  v75 = *(v9 - 8);
  v76 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v75 - v12;
  v14 = *(a2 - 1);
  v16 = MEMORY[0x1EEE9AC00](v11, v15);
  v18 = (&v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = (&v75 - v21);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = (&v75 - v24);
  v26 = (*(a3 + 96))(a2, a3);
  v27 = (*(a3 + 104))(a2, a3);
  if (v26 == 11)
  {
    if (v27 == 52)
    {
      (*(v14 + 16))(v18, a1, a2);
      if (swift_dynamicCast(&v80, v18, a2, &type metadata for Double, 6uLL, v50, v51, v52, v75))
      {
        (*(v14 + 8))(a1, a2);
        _D0 = v80;
        __asm { FCVT            H0, D0 }
      }

      else
      {
        v65 = (*(*(a3 + 16) + 168))(a2);
        (*(a3 + 112))(a2, a3);
        v66 = v76;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v76, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
        v68 = (*(*(AssociatedConformanceWitness + 8) + 120))(v66);
        (*(v75 + 8))(v13, v66);
        v69 = v77;
        (*(a3 + 120))(a2, a3);
        (*(v14 + 8))(a1, a2);
        v70 = a2;
        v71 = v79;
        v72 = swift_getAssociatedConformanceWitness(a3, v70, v79, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
        v73 = (*(*(v72 + 8) + 120))(v71);
        (*(v78 + 8))(v69, v71);
        _D0 = (v65 << 63) | ((v68 & 0x7FF) << 52) | v73 & 0xFFFFFFFFFFFFFLL;
        __asm { FCVT            H0, D0 }
      }

      return result;
    }

    goto LABEL_16;
  }

  if (v26 != 8)
  {
    if (v26 == 5 && v27 == 10)
    {
      (*(v14 + 16))(v25, a1, a2);
      if (!swift_dynamicCast(&v80, v25, a2, &type metadata for Float16, 6uLL, v28, v29, v30, v75))
      {
        v31 = (*(*(a3 + 16) + 168))(a2);
        (*(a3 + 112))(a2, a3);
        v32 = v76;
        v33 = swift_getAssociatedConformanceWitness(a3, a2, v76, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
        v34 = (*(*(v33 + 8) + 120))(v32);
        (*(v75 + 8))(v13, v32);
        v35 = v77;
        (*(a3 + 120))(a2, a3);
        (*(v14 + 8))(a1, a2);
        v36 = a2;
        v37 = v79;
        v38 = swift_getAssociatedConformanceWitness(a3, v36, v79, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
        v39 = (*(*(v38 + 8) + 120))(v37);
        (*(v78 + 8))(v35, v37);
        if (v31)
        {
          v40 = 0x8000;
        }

        else
        {
          v40 = 0;
        }

        return v40 & 0x8000 | ((v34 & 0x1F) << 10) | v39 & 0x3FF;
      }

LABEL_17:
      (*(v14 + 8))(a1, a2);
      return v80;
    }

LABEL_16:
    specialized static BinaryFloatingPoint._convert<A>(from:)(&v80, a1, a2, a3);
    goto LABEL_17;
  }

  if (v27 != 23)
  {
    goto LABEL_16;
  }

  (*(v14 + 16))(v22, a1, a2);
  if (swift_dynamicCast(&v80, v22, a2, &type metadata for Float, 6uLL, v42, v43, v44, v75))
  {
    (*(v14 + 8))(a1, a2);
    _S0 = v80;
    __asm { FCVT            H0, S0 }
  }

  else
  {
    v54 = (*(*(a3 + 16) + 168))(a2);
    (*(a3 + 112))(a2, a3);
    v55 = v76;
    v56 = swift_getAssociatedConformanceWitness(a3, a2, v76, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
    v57 = (*(*(v56 + 8) + 120))(v55);
    (*(v75 + 8))(v13, v55);
    v58 = v77;
    (*(a3 + 120))(a2, a3);
    (*(v14 + 8))(a1, a2);
    v59 = a2;
    v60 = v79;
    v61 = swift_getAssociatedConformanceWitness(a3, v59, v79, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
    v62 = (*(*(v61 + 8) + 120))(v60);
    (*(v78 + 8))(v58, v60);
    if (v54)
    {
      v63 = 0x80000000;
    }

    else
    {
      v63 = 0;
    }

    _S0 = v63 & 0x80000000 | (v57 << 23) | v62 & 0x7FFFFF;
    __asm { FCVT            H0, S0 }
  }

  return result;
}

uint64_t BinaryFloatingPoint.init<A>(_:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v116 = a1;
  v117 = a4;
  v118 = a6;
  v9 = *(*(*(a4 + 16) + 16) + 8);
  v114 = *(v9 + 16);
  v115 = v9;
  swift_getAssociatedTypeWitness(0, v114, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v112 = v10;
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v111 = &v105 - v13;
  v119 = a2;
  v113 = *(a2 - 1);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v105 - v19;
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v109 = *(v21 - 8);
  v110 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v108 = &v105 - v23;
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawExponent);
  v106 = *(v24 - 8);
  v107 = v24;
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v105 = &v105 - v27;
  v28 = *(a3 - 1);
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v32 = (&v105 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v36 = (&v105 - v35);
  MEMORY[0x1EEE9AC00](v34, v37);
  v39 = (&v105 - v38);
  v40 = (*(a5 + 96))(a3, a5);
  v41 = (*(a5 + 104))(a3, a5);
  if (v40 == 11)
  {
    if (v41 == 52)
    {
      v56 = v28;
      v57 = v116;
      (*(v28 + 16))(v32, v116, a3);
      if (swift_dynamicCast(v122, v32, a3, &type metadata for Double, 6uLL, v58, v59, v60, v105))
      {
        v61 = v122[0];
        (*(v28 + 8))(v57, a3);
      }

      else
      {
        v81 = (*(*(a5 + 16) + 168))(a3);
        v82 = v105;
        (*(a5 + 112))(a3, a5);
        v83 = v107;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v107, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
        v85 = (*(*(AssociatedConformanceWitness + 8) + 120))(v83);
        (*(v106 + 8))(v82, v83);
        v86 = v108;
        (*(a5 + 120))(a3, a5);
        (*(v56 + 8))(v57, a3);
        v87 = v110;
        v88 = swift_getAssociatedConformanceWitness(a5, a3, v110, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
        v89 = (*(*(v88 + 8) + 120))(v87);
        (*(v109 + 8))(v86, v87);
        *&v61 = (v81 << 63) | ((v85 & 0x7FF) << 52) | v89 & 0xFFFFFFFFFFFFFLL;
      }

      return (*(v117 + 72))(v61);
    }

    goto LABEL_13;
  }

  if (v40 != 8)
  {
    if (v40 == 5 && v41 == 10)
    {
      v42 = v28;
      v43 = v116;
      (*(v28 + 16))(v39, v116, a3);
      if (swift_dynamicCast(&v120, v39, a3, &type metadata for Float16, 6uLL, v44, v45, v46, v105))
      {
        _H8 = v120;
        (*(v28 + 8))(v43, a3);
      }

      else
      {
        v90 = (*(*(a5 + 16) + 168))(a3);
        v91 = v105;
        (*(a5 + 112))(a3, a5);
        v92 = v107;
        v93 = swift_getAssociatedConformanceWitness(a5, a3, v107, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
        v94 = (*(*(v93 + 8) + 120))(v92);
        (*(v106 + 8))(v91, v92);
        v95 = v108;
        (*(a5 + 120))(a3, a5);
        (*(v42 + 8))(v43, a3);
        v96 = a3;
        v97 = v110;
        v98 = swift_getAssociatedConformanceWitness(a5, v96, v110, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
        v99 = (*(*(v98 + 8) + 120))(v97);
        (*(v109 + 8))(v95, v97);
        if (v90)
        {
          v100 = 0x8000;
        }

        else
        {
          v100 = 0;
        }

        _H8 = v100 & 0x8000 | ((v94 & 0x1F) << 10) | v99 & 0x3FF;
      }

      __asm { FCVT            S0, H8 }

      return (*(v117 + 64))(_Q0);
    }

LABEL_13:
    v62 = v116;
    v63 = v119;
    static BinaryFloatingPoint._convert<A>(from:)(v20, v116, v119, a3, v117, a5);
    (*(v28 + 8))(v62, a3);
    v64 = v114;
    v65 = v112;
    v66 = swift_getAssociatedConformanceWitness(v114, v63, v112, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v67 = v111;
    (*(v66 + 8))(&qword_1806729C0, 512, v65, v66);
    (v64[3])(v67, v63, v64);
    (*(v115 + 64))(v20, v17, v63);
    v68 = *(v113 + 8);
    v68(v17, v63);
    return (v68)(v20, v63);
  }

  if (v41 != 23)
  {
    goto LABEL_13;
  }

  v49 = v28;
  v50 = v116;
  (*(v28 + 16))(v36, v116, a3);
  if (swift_dynamicCast(&v121, v36, a3, &type metadata for Float, 6uLL, v51, v52, v53, v105))
  {
    v54 = v121;
    (*(v28 + 8))(v50, a3);
  }

  else
  {
    v70 = (*(*(a5 + 16) + 168))(a3);
    v71 = v105;
    (*(a5 + 112))(a3, a5);
    v72 = v107;
    v73 = swift_getAssociatedConformanceWitness(a5, a3, v107, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
    v74 = (*(*(v73 + 8) + 120))(v72);
    (*(v106 + 8))(v71, v72);
    v75 = v108;
    (*(a5 + 120))(a3, a5);
    (*(v49 + 8))(v50, a3);
    v76 = a3;
    v77 = v110;
    v78 = swift_getAssociatedConformanceWitness(a5, v76, v110, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
    v79 = (*(*(v78 + 8) + 120))(v77);
    (*(v109 + 8))(v75, v77);
    if (v70)
    {
      v80 = 0x80000000;
    }

    else
    {
      v80 = 0;
    }

    v54 = v80 & 0x80000000 | (v74 << 23) | v79 & 0x7FFFFF;
  }

  v55.n128_u32[0] = v54;
  return (*(v117 + 64))(v55);
}

uint64_t specialized BinaryFloatingPoint.init<A>(exactly:)(uint64_t a1, Class *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  swift_getAssociatedTypeWitness(255, v6, a2, &protocol requirements base descriptor for FloatingPoint, associated type descriptor for FloatingPoint.Exponent);
  v8 = v7;
  v9 = *(swift_getAssociatedConformanceWitness(v6, a2, v7, &protocol requirements base descriptor for FloatingPoint, associated conformance descriptor for FloatingPoint.FloatingPoint.Exponent: SignedInteger) + 8);
  v205 = *(*(v9 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v205, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v204 = &v193 - v13;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v15 = v14;
  v213 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v212 = &v193 - v17;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawExponent);
  v210 = *(v18 - 8);
  v211 = v18;
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v209 = &v193 - v21;
  v22 = *(a2 - 1);
  v24 = MEMORY[0x1EEE9AC00](v20, v23);
  v208 = &v193 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v207 = &v193 - v28;
  MEMORY[0x1EEE9AC00](v27, v29);
  v206 = &v193 - v30;
  v31 = swift_checkMetadataState(0, v8);
  v216 = *(v31 - 1);
  v33 = MEMORY[0x1EEE9AC00](v31, v32);
  v214 = &v193 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v215 = &v193 - v37;
  MEMORY[0x1EEE9AC00](v36, v38);
  v217 = &v193 - v39;
  if ((*(v6 + 408))(a2, v6))
  {
    goto LABEL_2;
  }

  v202 = *(a3 + 96);
  v203 = a3 + 96;
  if (v202(a2, a3) <= 5 && (*(a3 + 104))(a2, a3) < 11 || ((*(v6 + 376))(a2, v6) & 1) == 0 || ((*(v6 + 384))(a2, v6) & 1) != 0)
  {
LABEL_8:
    v42 = v202(a2, a3);
    v43 = (*(a3 + 104))(a2, a3);
    if (v42 == 11)
    {
      if (v43 == 52)
      {
        v67 = v208;
        v22[2](v208, a1, a2);
        if (swift_dynamicCast(v218, v67, a2, &type metadata for Double, 6uLL, v68, v69, v70, v193))
        {
          (v22[1])(a1, a2);
          _D0 = *v218;
          __asm { FCVT            H0, D0 }
        }

        else
        {
          v100 = (*(v6 + 168))(a2, v6);
          v101 = v209;
          (*(a3 + 112))(a2, a3);
          v102 = v211;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v211, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
          v104 = a1;
          v105 = (*(*(AssociatedConformanceWitness + 8) + 120))(v102);
          (*(v210 + 8))(v101, v102);
          v106 = v212;
          (*(a3 + 120))(a2, a3);
          (v22[1])(v104, a2);
          v107 = swift_getAssociatedConformanceWitness(a3, a2, v15, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
          v108 = (*(*(v107 + 8) + 120))(v15);
          (*(v213 + 8))(v106, v15);
          _D0 = (v100 << 63) | ((v105 & 0x7FF) << 52) | v108 & 0xFFFFFFFFFFFFFLL;
          __asm { FCVT            H0, D0 }
        }

        goto LABEL_25;
      }
    }

    else if (v42 == 8)
    {
      if (v43 == 23)
      {
        v59 = v207;
        v22[2](v207, a1, a2);
        if (swift_dynamicCast(v218, v59, a2, &type metadata for Float, 6uLL, v60, v61, v62, v193))
        {
          (v22[1])(a1, a2);
          LODWORD(_D0) = *v218;
          __asm { FCVT            H0, S0 }
        }

        else
        {
          v90 = (*(v6 + 168))(a2, v6);
          v91 = v209;
          (*(a3 + 112))(a2, a3);
          v92 = v211;
          v93 = swift_getAssociatedConformanceWitness(a3, a2, v211, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
          v94 = a1;
          v95 = (*(*(v93 + 8) + 120))(v92);
          (*(v210 + 8))(v91, v92);
          v96 = v212;
          (*(a3 + 120))(a2, a3);
          (v22[1])(v94, a2);
          v97 = swift_getAssociatedConformanceWitness(a3, a2, v15, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
          v98 = (*(*(v97 + 8) + 120))(v15);
          (*(v213 + 8))(v96, v15);
          if (v90)
          {
            v99 = 0x80000000;
          }

          else
          {
            v99 = 0;
          }

          LODWORD(_D0) = v99 & 0x80000000 | (v95 << 23) | v98 & 0x7FFFFF;
          __asm { FCVT            H0, S0 }
        }

        goto LABEL_25;
      }
    }

    else if (v42 == 5 && v43 == 10)
    {
      v44 = v206;
      v22[2](v206, a1, a2);
      if (!swift_dynamicCast(v218, v44, a2, &type metadata for Float16, 6uLL, v45, v46, v47, v193))
      {
        v48 = (*(v6 + 168))(a2, v6);
        v49 = v209;
        (*(a3 + 112))(a2, a3);
        v50 = v211;
        v51 = swift_getAssociatedConformanceWitness(a3, a2, v211, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
        v52 = a1;
        v53 = (*(*(v51 + 8) + 120))(v50);
        (*(v210 + 8))(v49, v50);
        v54 = v212;
        (*(a3 + 120))(a2, a3);
        (v22[1])(v52, a2);
        v55 = swift_getAssociatedConformanceWitness(a3, a2, v15, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
        v56 = (*(*(v55 + 8) + 120))(v15);
        (*(v213 + 8))(v54, v15);
        if (v48)
        {
          v57 = -32768;
        }

        else
        {
          v57 = 0;
        }

        LODWORD(_D0) = v57 & 0xFFFF8000 | ((v53 & 0x1F) << 10) | v56 & 0x3FF;
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    specialized static BinaryFloatingPoint._convert<A>(from:)(v218, a1, a2, a3);
LABEL_24:
    (v22[1])(a1, a2);
    *&_D0 = v218[0];
LABEL_25:
    v41 = 0;
    v40 = _D0;
    return v40 | (v41 << 16);
  }

  v198 = v22;
  v196 = v11;
  v72 = *(v6 + 176);
  v73 = v217;
  v199 = a1;
  v72(a2, v6);
  *v218 = -14;
  v74 = *(v9 + 64);
  v75 = v74(v31, v9);
  v200 = v9 + 64;
  v197 = v15;
  if ((v75 & 1) == 0)
  {
    v83 = v74(v31, v9);
    v201 = *(v9 + 128);
    v84 = v201(v31, v9);
    v76 = v74;
    if (v83)
    {
      v22 = v198;
      if (v84 > 64)
      {
        v87 = *(v9 + 96);
        v88 = lazy protocol witness table accessor for type Int and conformance Int(v84, v85, v86);
        v87(v218, &type metadata for Int, v88, v31, v9);
        v89 = (*(*(*(v9 + 32) + 8) + 16))(v217, v215, v31);
        v82 = v216;
        (*(v216 + 8))(v215, v31);
        if (v89)
        {
          goto LABEL_49;
        }

        goto LABEL_53;
      }

      v113 = v205;
      v114 = v196;
      v115 = swift_getAssociatedConformanceWitness(v205, v31, v196, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v116 = v204;
      (*(v115 + 8))(&qword_18071E0A8, 256, v114, v115);
      (v113[3])(v116, v31, v113);
      LOBYTE(v114) = (*(*(*(v9 + 32) + 8) + 16))(v217, v215, v31);
      v82 = v216;
      (*(v216 + 8))(v215, v31);
      if (v114)
      {
        goto LABEL_49;
      }

      v112 = (*(v9 + 120))(v31, v9) < -14;
    }

    else
    {
      v22 = v198;
      if (v84 >= 64)
      {
        v82 = v216;
        goto LABEL_53;
      }

      v112 = (*(v9 + 120))(v31, v9) < -14;
      v82 = v216;
    }

    if (v112)
    {
      goto LABEL_49;
    }

LABEL_53:
    *v218 = 15;
    v123 = v76(v31, v9);
    v124 = v201(v31, v9);
    if (v123)
    {
      if (v124 > 64)
      {
        goto LABEL_55;
      }
    }

    else if (v124 > 63)
    {
LABEL_55:
      v127 = *(v9 + 96);
      v128 = lazy protocol witness table accessor for type Int and conformance Int(v124, v125, v126);
      v129 = v215;
      v127(v218, &type metadata for Int, v128, v31, v9);
      v130 = v217;
      v131 = (*(*(*(v9 + 32) + 8) + 16))(v129, v217, v31);
      v132 = *(v216 + 8);
      v132(v129, v31);
      v132(v130, v31);
      a1 = v199;
      if (v131)
      {
        goto LABEL_2;
      }

      goto LABEL_59;
    }

    v133 = v217;
    v134 = (*(v9 + 120))(v31, v9);
    (*(v82 + 8))(v133, v31);
    a1 = v199;
    if (v134 > 15)
    {
      goto LABEL_2;
    }

LABEL_59:
    v135 = (*(a3 + 136))(a2, a3);
    v15 = v197;
    if (v135 < 11)
    {
      goto LABEL_8;
    }

    goto LABEL_2;
  }

  v76 = v74;
  v77 = v73;
  v201 = *(v9 + 128);
  v78 = v201(v31, v9);
  if (v78 >= 64)
  {
    v194 = *(v9 + 96);
    v109 = lazy protocol witness table accessor for type Int and conformance Int(v78, v79, v80);
    v110 = v215;
    v194(v218, &type metadata for Int, v109, v31, v9);
    v111 = (*(*(*(v9 + 32) + 8) + 16))(v77, v110, v31);
    v82 = v216;
    (*(v216 + 8))(v110, v31);
    v22 = v198;
    if (v111)
    {
      goto LABEL_49;
    }

    goto LABEL_53;
  }

  v81 = (*(v9 + 120))(v31, v9);
  v82 = v216;
  v22 = v198;
  if (v81 > -15)
  {
    goto LABEL_53;
  }

LABEL_49:
  *v218 = -24;
  v117 = v76(v31, v9);
  v195 = v76;
  if (v117)
  {
    v118 = v217;
    v119 = v201(v31, v9);
    if (v119 >= 64)
    {
      v198 = *(v9 + 96);
      v144 = lazy protocol witness table accessor for type Int and conformance Int(v119, v120, v121);
      v145 = v215;
      (v198)(v218, &type metadata for Int, v144, v31, v9);
      v82 = v216;
      v146 = (*(*(*(v9 + 32) + 8) + 16))(v118, v145, v31);
      (*(v82 + 8))(v145, v31);
      a1 = v199;
      if ((v146 & 1) == 0)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v122 = (*(v9 + 120))(v31, v9);
      a1 = v199;
      if (v122 > -25)
      {
        goto LABEL_73;
      }
    }

LABEL_69:
    (v22[1])(a1, a2);
    (*(v82 + 8))(v217, v31);
    goto LABEL_3;
  }

  v136 = v76(v31, v9);
  v137 = v201;
  v138 = v201(v31, v9);
  v201 = v137;
  if (v136)
  {
    a1 = v199;
    if (v138 > 64)
    {
      v198 = *(v9 + 96);
      v141 = lazy protocol witness table accessor for type Int and conformance Int(v138, v139, v140);
      v142 = v215;
      (v198)(v218, &type metadata for Int, v141, v31, v9);
      v143 = (*(*(*(v9 + 32) + 8) + 16))(v217, v142, v31);
      v82 = v216;
      (*(v216 + 8))(v142, v31);
      if ((v143 & 1) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_69;
    }

    v147 = v205;
    v148 = v196;
    v149 = swift_getAssociatedConformanceWitness(v205, v31, v196, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v150 = v204;
    (*(v149 + 8))(&qword_18071E0A8, 256, v148, v149);
    v151 = v147;
    v152 = v147[3];
    v153 = v215;
    (v152)(v150, v31, v151);
    LOBYTE(v148) = (*(*(*(v9 + 32) + 8) + 16))(v217, v153, v31);
    v154 = v153;
    v155 = *(v216 + 8);
    v155(v154, v31);
    if (v148)
    {
      (v22[1])(a1, a2);
      v155(v217, v31);
      goto LABEL_3;
    }

    v156 = (*(v9 + 120))(v31, v9);
    v82 = v216;
    if (v156 < -24)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v82 = v216;
    a1 = v199;
    if (v138 < 64 && (*(v9 + 120))(v31, v9) < -24)
    {
      goto LABEL_69;
    }
  }

LABEL_73:
  v198 = (*(a3 + 136))(a2, a3);
  (*(v82 + 16))(v214, v217, v31);
  v157 = v195(v31, v9);
  v158 = v201;
  if ((v157 & 1) == 0 || v201(v31, v9) < 65)
  {
    goto LABEL_87;
  }

  *v218 = 0x8000000000000000;
  v159 = v195;
  if ((v195(v31, v9) & 1) == 0)
  {
    v166 = v159(v31, v9);
    v158 = v201;
    v167 = v201(v31, v9);
    if ((v166 & 1) == 0)
    {
      a1 = v199;
      if (v167 >= 64)
      {
        goto LABEL_87;
      }

      goto LABEL_86;
    }

    a1 = v199;
    if (v167 <= 64)
    {
      v173 = v205;
      v174 = v196;
      v175 = swift_getAssociatedConformanceWitness(v205, v31, v196, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v176 = v204;
      (*(v175 + 8))(&qword_18071E0A8, 256, v174, v175);
      v177 = v173;
      v178 = v173[3];
      v179 = v215;
      (v178)(v176, v31, v177);
      LODWORD(v205) = (*(*(*(v9 + 32) + 8) + 16))(v214, v179, v31);
      (*(v216 + 8))(v179, v31);
      v158 = v201;
      if ((v205 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v205 = *(v9 + 96);
      v170 = lazy protocol witness table accessor for type Int and conformance Int(v167, v168, v169);
      v171 = v215;
      (v205)(v218, &type metadata for Int, v170, v31, v9);
      v172 = (*(*(*(v9 + 32) + 8) + 16))(v214, v171, v31);
      (*(v216 + 8))(v171, v31);
      v158 = v201;
      if ((v172 & 1) == 0)
      {
        goto LABEL_87;
      }
    }

LABEL_91:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v158 = v201;
  v160 = v201(v31, v9);
  a1 = v199;
  if (v160 < 64)
  {
LABEL_86:
    (*(v9 + 120))(v31, v9);
    goto LABEL_87;
  }

  v205 = *(v9 + 96);
  v163 = lazy protocol witness table accessor for type Int and conformance Int(v160, v161, v162);
  v164 = v215;
  (v205)(v218, &type metadata for Int, v163, v31, v9);
  v158 = v201;
  v165 = (*(*(*(v9 + 32) + 8) + 16))(v214, v164, v31);
  (*(v216 + 8))(v164, v31);
  if (v165)
  {
    goto LABEL_91;
  }

LABEL_87:
  v201 = v158;
  v180 = v214;
  v181 = v158(v31, v9);
  v182 = v180;
  if (v181 <= 64 && (v201(v31, v9) != 64 || (v195(v31, v9) & 1) != 0))
  {
    goto LABEL_97;
  }

  *v218 = 0x7FFFFFFFFFFFFFFFLL;
  v183 = v195(v31, v9);
  v184 = v201(v31, v9);
  if (v183)
  {
    if (v184 > 64)
    {
      goto LABEL_90;
    }

LABEL_96:
    v182 = v214;
    (*(v9 + 120))(v31, v9);
    goto LABEL_97;
  }

  if (v184 < 64)
  {
    goto LABEL_96;
  }

LABEL_90:
  v205 = *(v9 + 96);
  v187 = lazy protocol witness table accessor for type Int and conformance Int(v184, v185, v186);
  v188 = v215;
  (v205)(v218, &type metadata for Int, v187, v31, v9);
  v182 = v214;
  v189 = (*(*(*(v9 + 32) + 8) + 16))(v188, v214, v31);
  (*(v216 + 8))(v188, v31);
  if (v189)
  {
    goto LABEL_91;
  }

LABEL_97:
  v190 = (*(v9 + 120))(v31, v9);
  v191 = v182;
  v192 = *(v216 + 8);
  v192(v191, v31);
  result = (v192)(v217, v31);
  if (!__OFADD__(v190, 24))
  {
    v15 = v197;
    if (v190 + 24 >= v198)
    {
      goto LABEL_8;
    }

LABEL_2:
    (v22[1])(a1, a2);
LABEL_3:
    v40 = 0;
    v41 = 1;
    return v40 | (v41 << 16);
  }

  __break(1u);
  return result;
}

{
  v6 = *(a3 + 16);
  swift_getAssociatedTypeWitness(255, v6, a2, &protocol requirements base descriptor for FloatingPoint, associated type descriptor for FloatingPoint.Exponent);
  v8 = v7;
  v9 = *(swift_getAssociatedConformanceWitness(v6, a2, v7, &protocol requirements base descriptor for FloatingPoint, associated conformance descriptor for FloatingPoint.FloatingPoint.Exponent: SignedInteger) + 8);
  v203 = *(*(v9 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v203, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v202 = &v192 - v13;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v15 = v14;
  v211 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v210 = &v192 - v17;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawExponent);
  v208 = *(v18 - 8);
  v209 = v18;
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v207 = &v192 - v21;
  v22 = *(a2 - 1);
  v24 = MEMORY[0x1EEE9AC00](v20, v23);
  v206 = &v192 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v205 = &v192 - v28;
  MEMORY[0x1EEE9AC00](v27, v29);
  v204 = &v192 - v30;
  v31 = swift_checkMetadataState(0, v8);
  v214 = *(v31 - 1);
  v33 = MEMORY[0x1EEE9AC00](v31, v32);
  v212 = &v192 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v213 = &v192 - v37;
  MEMORY[0x1EEE9AC00](v36, v38);
  v215 = &v192 - v39;
  if ((*(v6 + 408))(a2, v6))
  {
    goto LABEL_2;
  }

  v200 = *(a3 + 96);
  v201 = a3 + 96;
  if (v200(a2, a3) <= 11 && (*(a3 + 104))(a2, a3) < 53 || ((*(v6 + 376))(a2, v6) & 1) == 0 || ((*(v6 + 384))(a2, v6) & 1) != 0)
  {
LABEL_8:
    v41 = v200(a2, a3);
    v42 = (*(a3 + 104))(a2, a3);
    if (v41 == 11)
    {
      if (v42 == 52)
      {
        v53 = v206;
        v22[2](v206, a1, a2);
        if (!swift_dynamicCast(v216, v53, a2, &type metadata for Double, 6uLL, v54, v55, v56, v192))
        {
          v57 = (*(v6 + 168))(a2, v6);
          v58 = v207;
          (*(a3 + 112))(a2, a3);
          v59 = v209;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v209, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
          v61 = a1;
          v62 = (*(*(AssociatedConformanceWitness + 8) + 120))(v59);
          (*(v208 + 8))(v58, v59);
          v63 = v210;
          (*(a3 + 120))(a2, a3);
          (v22[1])(v61, a2);
          v64 = swift_getAssociatedConformanceWitness(a3, a2, v15, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
          v65 = (*(*(v64 + 8) + 120))(v15);
          (*(v211 + 8))(v63, v15);
          *&_D0 = (v57 << 63) | ((v62 & 0x7FF) << 52) | v65 & 0xFFFFFFFFFFFFFLL;
          return *&_D0;
        }

LABEL_21:
        (v22[1])(a1, a2);
        _D0 = *v216;
        return *&_D0;
      }
    }

    else if (v41 == 8)
    {
      if (v42 == 23)
      {
        v48 = v205;
        v22[2](v205, a1, a2);
        if (swift_dynamicCast(v216, v48, a2, &type metadata for Float, 6uLL, v49, v50, v51, v192))
        {
          (v22[1])(a1, a2);
          _D0 = *v216;
        }

        else
        {
          v84 = (*(v6 + 168))(a2, v6);
          v85 = v207;
          (*(a3 + 112))(a2, a3);
          v86 = v209;
          v87 = swift_getAssociatedConformanceWitness(a3, a2, v209, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
          v88 = a1;
          v89 = (*(*(v87 + 8) + 120))(v86);
          (*(v208 + 8))(v85, v86);
          v90 = v210;
          (*(a3 + 120))(a2, a3);
          (v22[1])(v88, a2);
          v91 = swift_getAssociatedConformanceWitness(a3, a2, v15, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
          v92 = (*(*(v91 + 8) + 120))(v15);
          (*(v211 + 8))(v90, v15);
          if (v84)
          {
            v93 = 0x80000000;
          }

          else
          {
            v93 = 0;
          }

          _D0 = COERCE_FLOAT(v93 & 0x80000000 | (v89 << 23) | v92 & 0x7FFFFF);
        }

        return *&_D0;
      }
    }

    else if (v41 == 5 && v42 == 10)
    {
      v43 = v204;
      v22[2](v204, a1, a2);
      if (swift_dynamicCast(v216, v43, a2, &type metadata for Float16, 6uLL, v44, v45, v46, v192))
      {
        (v22[1])(a1, a2);
        _H0 = v216[0];
      }

      else
      {
        v94 = (*(v6 + 168))(a2, v6);
        v95 = v207;
        (*(a3 + 112))(a2, a3);
        v96 = v209;
        v97 = swift_getAssociatedConformanceWitness(a3, a2, v209, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
        v98 = a1;
        v99 = (*(*(v97 + 8) + 120))(v96);
        (*(v208 + 8))(v95, v96);
        v100 = v210;
        (*(a3 + 120))(a2, a3);
        (v22[1])(v98, a2);
        v101 = swift_getAssociatedConformanceWitness(a3, a2, v15, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
        v102 = (*(*(v101 + 8) + 120))(v15);
        (*(v211 + 8))(v100, v15);
        if (v94)
        {
          v103 = 0x8000;
        }

        else
        {
          v103 = 0;
        }

        _H0 = v103 & 0x8000 | ((v99 & 0x1F) << 10) | v102 & 0x3FF;
      }

      __asm { FCVT            D0, H0 }

      return *&_D0;
    }

    specialized static BinaryFloatingPoint._convert<A>(from:)(v216, a1, a2, a3);
    goto LABEL_21;
  }

  v196 = v22;
  v194 = v11;
  v66 = *(v6 + 176);
  v67 = v215;
  v197 = a1;
  v66(a2, v6);
  v216[0] = -1022;
  v68 = *(v9 + 64);
  v69 = v68(v31, v9);
  v198 = v9 + 64;
  v195 = v15;
  if ((v69 & 1) == 0)
  {
    v77 = v68(v31, v9);
    v199 = *(v9 + 128);
    v78 = v199(v31, v9);
    v70 = v68;
    if (v77)
    {
      v22 = v196;
      if (v78 > 64)
      {
        v81 = *(v9 + 96);
        v82 = lazy protocol witness table accessor for type Int and conformance Int(v78, v79, v80);
        v81(v216, &type metadata for Int, v82, v31, v9);
        v83 = (*(*(*(v9 + 32) + 8) + 16))(v215, v213, v31);
        v76 = v214;
        (*(v214 + 8))(v213, v31);
        if (v83)
        {
          goto LABEL_49;
        }

        goto LABEL_53;
      }

      v112 = v203;
      v113 = v194;
      v114 = swift_getAssociatedConformanceWitness(v203, v31, v194, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v115 = v202;
      (*(v114 + 8))(&qword_18071E0A8, 256, v113, v114);
      (v112[3])(v115, v31, v112);
      LOBYTE(v113) = (*(*(*(v9 + 32) + 8) + 16))(v215, v213, v31);
      v76 = v214;
      (*(v214 + 8))(v213, v31);
      if (v113)
      {
        goto LABEL_49;
      }

      v111 = (*(v9 + 120))(v31, v9) < -1022;
    }

    else
    {
      v22 = v196;
      if (v78 >= 64)
      {
        v76 = v214;
        goto LABEL_53;
      }

      v111 = (*(v9 + 120))(v31, v9) < -1022;
      v76 = v214;
    }

    if (v111)
    {
      goto LABEL_49;
    }

LABEL_53:
    v216[0] = 1023;
    v122 = v70(v31, v9);
    v123 = v199(v31, v9);
    if (v122)
    {
      if (v123 > 64)
      {
        goto LABEL_55;
      }
    }

    else if (v123 > 63)
    {
LABEL_55:
      v126 = *(v9 + 96);
      v127 = lazy protocol witness table accessor for type Int and conformance Int(v123, v124, v125);
      v128 = v213;
      v126(v216, &type metadata for Int, v127, v31, v9);
      v129 = v215;
      v130 = (*(*(*(v9 + 32) + 8) + 16))(v128, v215, v31);
      v131 = *(v214 + 8);
      v131(v128, v31);
      v131(v129, v31);
      a1 = v197;
      if (v130)
      {
        goto LABEL_2;
      }

      goto LABEL_59;
    }

    v132 = v215;
    v133 = (*(v9 + 120))(v31, v9);
    (*(v76 + 8))(v132, v31);
    a1 = v197;
    if (v133 > 1023)
    {
      goto LABEL_2;
    }

LABEL_59:
    v134 = (*(a3 + 136))(a2, a3);
    v15 = v195;
    if (v134 < 53)
    {
      goto LABEL_8;
    }

    goto LABEL_2;
  }

  v70 = v68;
  v71 = v67;
  v199 = *(v9 + 128);
  v72 = v199(v31, v9);
  if (v72 >= 64)
  {
    v192 = *(v9 + 96);
    v108 = lazy protocol witness table accessor for type Int and conformance Int(v72, v73, v74);
    v109 = v213;
    v192(v216, &type metadata for Int, v108, v31, v9);
    v110 = (*(*(*(v9 + 32) + 8) + 16))(v71, v109, v31);
    v76 = v214;
    (*(v214 + 8))(v109, v31);
    v22 = v196;
    if (v110)
    {
      goto LABEL_49;
    }

    goto LABEL_53;
  }

  v75 = (*(v9 + 120))(v31, v9);
  v76 = v214;
  v22 = v196;
  if (v75 > -1023)
  {
    goto LABEL_53;
  }

LABEL_49:
  v216[0] = -1074;
  v116 = v70(v31, v9);
  v193 = v70;
  if (v116)
  {
    v117 = v215;
    v118 = v199(v31, v9);
    if (v118 >= 64)
    {
      v196 = *(v9 + 96);
      v143 = lazy protocol witness table accessor for type Int and conformance Int(v118, v119, v120);
      v144 = v213;
      (v196)(v216, &type metadata for Int, v143, v31, v9);
      v76 = v214;
      v145 = (*(*(*(v9 + 32) + 8) + 16))(v117, v144, v31);
      (*(v76 + 8))(v144, v31);
      a1 = v197;
      if ((v145 & 1) == 0)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v121 = (*(v9 + 120))(v31, v9);
      a1 = v197;
      if (v121 > -1075)
      {
        goto LABEL_73;
      }
    }

LABEL_69:
    (v22[1])(a1, a2);
    (*(v76 + 8))(v215, v31);
    return 0;
  }

  v135 = v70(v31, v9);
  v136 = v199;
  v137 = v199(v31, v9);
  v199 = v136;
  if (v135)
  {
    a1 = v197;
    if (v137 > 64)
    {
      v196 = *(v9 + 96);
      v140 = lazy protocol witness table accessor for type Int and conformance Int(v137, v138, v139);
      v141 = v213;
      (v196)(v216, &type metadata for Int, v140, v31, v9);
      v142 = (*(*(*(v9 + 32) + 8) + 16))(v215, v141, v31);
      v76 = v214;
      (*(v214 + 8))(v141, v31);
      if ((v142 & 1) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_69;
    }

    v146 = v203;
    v147 = v194;
    v148 = swift_getAssociatedConformanceWitness(v203, v31, v194, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v149 = v202;
    (*(v148 + 8))(&qword_18071E0A8, 256, v147, v148);
    v150 = v146;
    v151 = v146[3];
    v152 = v213;
    (v151)(v149, v31, v150);
    LOBYTE(v147) = (*(*(*(v9 + 32) + 8) + 16))(v215, v152, v31);
    v153 = v152;
    v154 = *(v214 + 8);
    v154(v153, v31);
    if (v147)
    {
      (v22[1])(a1, a2);
      v154(v215, v31);
      return 0;
    }

    v155 = (*(v9 + 120))(v31, v9);
    v76 = v214;
    if (v155 < -1074)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v76 = v214;
    a1 = v197;
    if (v137 < 64 && (*(v9 + 120))(v31, v9) < -1074)
    {
      goto LABEL_69;
    }
  }

LABEL_73:
  v196 = (*(a3 + 136))(a2, a3);
  (*(v76 + 16))(v212, v215, v31);
  v156 = v193(v31, v9);
  v157 = v199;
  if ((v156 & 1) == 0 || v199(v31, v9) < 65)
  {
    goto LABEL_87;
  }

  v216[0] = 0x8000000000000000;
  v158 = v193;
  if ((v193(v31, v9) & 1) == 0)
  {
    v165 = v158(v31, v9);
    v157 = v199;
    v166 = v199(v31, v9);
    if ((v165 & 1) == 0)
    {
      a1 = v197;
      if (v166 >= 64)
      {
        goto LABEL_87;
      }

      goto LABEL_86;
    }

    a1 = v197;
    if (v166 <= 64)
    {
      v172 = v203;
      v173 = v194;
      v174 = swift_getAssociatedConformanceWitness(v203, v31, v194, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v175 = v202;
      (*(v174 + 8))(&qword_18071E0A8, 256, v173, v174);
      v176 = v172;
      v177 = v172[3];
      v178 = v213;
      (v177)(v175, v31, v176);
      LODWORD(v203) = (*(*(*(v9 + 32) + 8) + 16))(v212, v178, v31);
      (*(v214 + 8))(v178, v31);
      v157 = v199;
      if ((v203 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v203 = *(v9 + 96);
      v169 = lazy protocol witness table accessor for type Int and conformance Int(v166, v167, v168);
      v170 = v213;
      (v203)(v216, &type metadata for Int, v169, v31, v9);
      v171 = (*(*(*(v9 + 32) + 8) + 16))(v212, v170, v31);
      (*(v214 + 8))(v170, v31);
      v157 = v199;
      if ((v171 & 1) == 0)
      {
        goto LABEL_87;
      }
    }

LABEL_91:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v157 = v199;
  v159 = v199(v31, v9);
  a1 = v197;
  if (v159 < 64)
  {
LABEL_86:
    (*(v9 + 120))(v31, v9);
    goto LABEL_87;
  }

  v203 = *(v9 + 96);
  v162 = lazy protocol witness table accessor for type Int and conformance Int(v159, v160, v161);
  v163 = v213;
  (v203)(v216, &type metadata for Int, v162, v31, v9);
  v157 = v199;
  v164 = (*(*(*(v9 + 32) + 8) + 16))(v212, v163, v31);
  (*(v214 + 8))(v163, v31);
  if (v164)
  {
    goto LABEL_91;
  }

LABEL_87:
  v199 = v157;
  v179 = v212;
  v180 = v157(v31, v9);
  v181 = v179;
  if (v180 <= 64 && (v199(v31, v9) != 64 || (v193(v31, v9) & 1) != 0))
  {
    goto LABEL_97;
  }

  v216[0] = 0x7FFFFFFFFFFFFFFFLL;
  v182 = v193(v31, v9);
  v183 = v199(v31, v9);
  if (v182)
  {
    if (v183 > 64)
    {
      goto LABEL_90;
    }

LABEL_96:
    v181 = v212;
    (*(v9 + 120))(v31, v9);
    goto LABEL_97;
  }

  if (v183 < 64)
  {
    goto LABEL_96;
  }

LABEL_90:
  v203 = *(v9 + 96);
  v186 = lazy protocol witness table accessor for type Int and conformance Int(v183, v184, v185);
  v187 = v213;
  (v203)(v216, &type metadata for Int, v186, v31, v9);
  v181 = v212;
  v188 = (*(*(*(v9 + 32) + 8) + 16))(v187, v212, v31);
  (*(v214 + 8))(v187, v31);
  if (v188)
  {
    goto LABEL_91;
  }

LABEL_97:
  v189 = (*(v9 + 120))(v31, v9);
  v190 = v181;
  v191 = *(v214 + 8);
  v191(v190, v31);
  result = (v191)(v215, v31);
  if (!__OFADD__(v189, 1074))
  {
    v15 = v195;
    if (v189 + 1074 >= v196)
    {
      goto LABEL_8;
    }

LABEL_2:
    (v22[1])(a1, a2);
    return 0;
  }

  __break(1u);
  return result;
}

unint64_t specialized BinaryFloatingPoint.init<A>(exactly:)(uint64_t a1, Class *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  swift_getAssociatedTypeWitness(255, v6, a2, &protocol requirements base descriptor for FloatingPoint, associated type descriptor for FloatingPoint.Exponent);
  v8 = v7;
  v9 = *(swift_getAssociatedConformanceWitness(v6, a2, v7, &protocol requirements base descriptor for FloatingPoint, associated conformance descriptor for FloatingPoint.FloatingPoint.Exponent: SignedInteger) + 8);
  v205 = *(*(v9 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v205, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v204 = &v194 - v13;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v15 = v14;
  v213 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v212 = &v194 - v17;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawExponent);
  v210 = *(v18 - 8);
  v211 = v18;
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v209 = &v194 - v21;
  v22 = *(a2 - 1);
  v24 = MEMORY[0x1EEE9AC00](v20, v23);
  v208 = &v194 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v207 = &v194 - v28;
  MEMORY[0x1EEE9AC00](v27, v29);
  v206 = &v194 - v30;
  v31 = swift_checkMetadataState(0, v8);
  v216 = *(v31 - 1);
  v33 = MEMORY[0x1EEE9AC00](v31, v32);
  v214 = &v194 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v215 = &v194 - v37;
  MEMORY[0x1EEE9AC00](v36, v38);
  v217 = &v194 - v39;
  if ((*(v6 + 408))(a2, v6))
  {
    goto LABEL_2;
  }

  v202 = *(a3 + 96);
  v203 = a3 + 96;
  if (v202(a2, a3) <= 8 && (*(a3 + 104))(a2, a3) < 24 || ((*(v6 + 376))(a2, v6) & 1) == 0 || ((*(v6 + 384))(a2, v6) & 1) != 0)
  {
LABEL_8:
    v42 = v202(a2, a3);
    v43 = (*(a3 + 104))(a2, a3);
    if (v42 == 11)
    {
      if (v43 == 52)
      {
        v64 = v208;
        v22[2](v208, a1, a2);
        if (swift_dynamicCast(v218, v64, a2, &type metadata for Double, 6uLL, v65, v66, v67, v194))
        {
          (v22[1])(a1, a2);
          _S0 = v218[0];
        }

        else
        {
          v87 = (*(v6 + 168))(a2, v6);
          v88 = v209;
          (*(a3 + 112))(a2, a3);
          v89 = v211;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v211, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
          v91 = a1;
          v92 = (*(*(AssociatedConformanceWitness + 8) + 120))(v89);
          (*(v210 + 8))(v88, v89);
          v93 = v212;
          (*(a3 + 120))(a2, a3);
          (v22[1])(v91, a2);
          v94 = swift_getAssociatedConformanceWitness(a3, a2, v15, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
          v95 = (*(*(v94 + 8) + 120))(v15);
          (*(v213 + 8))(v93, v15);
          _S0 = COERCE_DOUBLE((v87 << 63) | ((v92 & 0x7FF) << 52) | v95 & 0xFFFFFFFFFFFFFLL);
        }

        goto LABEL_25;
      }
    }

    else if (v42 == 8)
    {
      if (v43 == 23)
      {
        v49 = v207;
        v22[2](v207, a1, a2);
        if (!swift_dynamicCast(v218, v49, a2, &type metadata for Float, 6uLL, v50, v51, v52, v194))
        {
          v53 = (*(v6 + 168))(a2, v6);
          v54 = v209;
          (*(a3 + 112))(a2, a3);
          v55 = v211;
          v56 = swift_getAssociatedConformanceWitness(a3, a2, v211, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
          v57 = a1;
          v58 = (*(*(v56 + 8) + 120))(v55);
          (*(v210 + 8))(v54, v55);
          v59 = v212;
          (*(a3 + 120))(a2, a3);
          (v22[1])(v57, a2);
          v60 = swift_getAssociatedConformanceWitness(a3, a2, v15, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
          v61 = (*(*(v60 + 8) + 120))(v15);
          (*(v213 + 8))(v59, v15);
          if (v53)
          {
            v62 = 0x80000000;
          }

          else
          {
            v62 = 0;
          }

          LODWORD(_S0) = v62 & 0x80000000 | (v58 << 23) | v61 & 0x7FFFFF;
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    else if (v42 == 5 && v43 == 10)
    {
      v44 = v206;
      v22[2](v206, a1, a2);
      if (swift_dynamicCast(v218, v44, a2, &type metadata for Float16, 6uLL, v45, v46, v47, v194))
      {
        (v22[1])(a1, a2);
        _H0 = LOWORD(v218[0]);
      }

      else
      {
        v96 = (*(v6 + 168))(a2, v6);
        v97 = v209;
        (*(a3 + 112))(a2, a3);
        v98 = v211;
        v99 = swift_getAssociatedConformanceWitness(a3, a2, v211, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
        v100 = a1;
        v101 = (*(*(v99 + 8) + 120))(v98);
        (*(v210 + 8))(v97, v98);
        v102 = v212;
        (*(a3 + 120))(a2, a3);
        (v22[1])(v100, a2);
        v103 = swift_getAssociatedConformanceWitness(a3, a2, v15, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
        v104 = (*(*(v103 + 8) + 120))(v15);
        (*(v213 + 8))(v102, v15);
        if (v96)
        {
          v105 = 0x8000;
        }

        else
        {
          v105 = 0;
        }

        _H0 = v105 & 0x8000 | ((v101 & 0x1F) << 10) | v104 & 0x3FF;
      }

      __asm { FCVT            S0, H0 }

      goto LABEL_25;
    }

    specialized static BinaryFloatingPoint._convert<A>(from:)(v218, a1, a2, a3);
LABEL_24:
    (v22[1])(a1, a2);
    _S0 = *v218;
LABEL_25:
    v41 = 0;
    v40 = LODWORD(_S0);
    goto LABEL_26;
  }

  v198 = v22;
  v196 = v11;
  v69 = *(v6 + 176);
  v70 = v217;
  v199 = a1;
  v69(a2, v6);
  v218[0] = NAN;
  v71 = *(v9 + 64);
  v72 = v71(v31, v9);
  v200 = v9 + 64;
  v197 = v15;
  if ((v72 & 1) == 0)
  {
    v80 = v71(v31, v9);
    v201 = *(v9 + 128);
    v81 = v201(v31, v9);
    v73 = v71;
    if (v80)
    {
      v22 = v198;
      if (v81 > 64)
      {
        v84 = *(v9 + 96);
        v85 = lazy protocol witness table accessor for type Int and conformance Int(v81, v82, v83);
        v84(v218, &type metadata for Int, v85, v31, v9);
        v86 = (*(*(*(v9 + 32) + 8) + 16))(v217, v215, v31);
        v79 = v216;
        (*(v216 + 8))(v215, v31);
        if (v86)
        {
          goto LABEL_50;
        }

        goto LABEL_54;
      }

      v114 = v205;
      v115 = v196;
      v116 = swift_getAssociatedConformanceWitness(v205, v31, v196, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v117 = v204;
      (*(v116 + 8))(&qword_18071E0A8, 256, v115, v116);
      (v114[3])(v117, v31, v114);
      LOBYTE(v115) = (*(*(*(v9 + 32) + 8) + 16))(v217, v215, v31);
      v79 = v216;
      (*(v216 + 8))(v215, v31);
      if (v115)
      {
        goto LABEL_50;
      }

      v113 = (*(v9 + 120))(v31, v9) < -126;
    }

    else
    {
      v22 = v198;
      if (v81 >= 64)
      {
        v79 = v216;
        goto LABEL_54;
      }

      v113 = (*(v9 + 120))(v31, v9) < -126;
      v79 = v216;
    }

    if (v113)
    {
      goto LABEL_50;
    }

LABEL_54:
    *&v218[0] = 127;
    v124 = v73(v31, v9);
    v125 = v201(v31, v9);
    if (v124)
    {
      if (v125 > 64)
      {
        goto LABEL_56;
      }
    }

    else if (v125 > 63)
    {
LABEL_56:
      v128 = *(v9 + 96);
      v129 = lazy protocol witness table accessor for type Int and conformance Int(v125, v126, v127);
      v130 = v215;
      v128(v218, &type metadata for Int, v129, v31, v9);
      v131 = v217;
      v132 = (*(*(*(v9 + 32) + 8) + 16))(v130, v217, v31);
      v133 = *(v216 + 8);
      v133(v130, v31);
      v133(v131, v31);
      a1 = v199;
      if (v132)
      {
        goto LABEL_2;
      }

      goto LABEL_60;
    }

    v134 = v217;
    v135 = (*(v9 + 120))(v31, v9);
    (*(v79 + 8))(v134, v31);
    a1 = v199;
    if (v135 > 127)
    {
      goto LABEL_2;
    }

LABEL_60:
    v136 = (*(a3 + 136))(a2, a3);
    v15 = v197;
    if (v136 < 24)
    {
      goto LABEL_8;
    }

    goto LABEL_2;
  }

  v73 = v71;
  v74 = v70;
  v201 = *(v9 + 128);
  v75 = v201(v31, v9);
  if (v75 >= 64)
  {
    v194 = *(v9 + 96);
    v110 = lazy protocol witness table accessor for type Int and conformance Int(v75, v76, v77);
    v111 = v215;
    v194(v218, &type metadata for Int, v110, v31, v9);
    v112 = (*(*(*(v9 + 32) + 8) + 16))(v74, v111, v31);
    v79 = v216;
    (*(v216 + 8))(v111, v31);
    v22 = v198;
    if (v112)
    {
      goto LABEL_50;
    }

    goto LABEL_54;
  }

  v78 = (*(v9 + 120))(v31, v9);
  v79 = v216;
  v22 = v198;
  if (v78 > -127)
  {
    goto LABEL_54;
  }

LABEL_50:
  v218[0] = NAN;
  v118 = v73(v31, v9);
  v195 = v73;
  if (v118)
  {
    v119 = v217;
    v120 = v201(v31, v9);
    if (v120 >= 64)
    {
      v198 = *(v9 + 96);
      v145 = lazy protocol witness table accessor for type Int and conformance Int(v120, v121, v122);
      v146 = v215;
      (v198)(v218, &type metadata for Int, v145, v31, v9);
      v79 = v216;
      v147 = (*(*(*(v9 + 32) + 8) + 16))(v119, v146, v31);
      (*(v79 + 8))(v146, v31);
      a1 = v199;
      if ((v147 & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v123 = (*(v9 + 120))(v31, v9);
      a1 = v199;
      if (v123 > -150)
      {
        goto LABEL_74;
      }
    }

LABEL_70:
    (v22[1])(a1, a2);
    (*(v79 + 8))(v217, v31);
    goto LABEL_3;
  }

  v137 = v73(v31, v9);
  v138 = v201;
  v139 = v201(v31, v9);
  v201 = v138;
  if (v137)
  {
    a1 = v199;
    if (v139 > 64)
    {
      v198 = *(v9 + 96);
      v142 = lazy protocol witness table accessor for type Int and conformance Int(v139, v140, v141);
      v143 = v215;
      (v198)(v218, &type metadata for Int, v142, v31, v9);
      v144 = (*(*(*(v9 + 32) + 8) + 16))(v217, v143, v31);
      v79 = v216;
      (*(v216 + 8))(v143, v31);
      if ((v144 & 1) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_70;
    }

    v148 = v205;
    v149 = v196;
    v150 = swift_getAssociatedConformanceWitness(v205, v31, v196, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v151 = v204;
    (*(v150 + 8))(&qword_18071E0A8, 256, v149, v150);
    v152 = v148;
    v153 = v148[3];
    v154 = v215;
    (v153)(v151, v31, v152);
    LOBYTE(v149) = (*(*(*(v9 + 32) + 8) + 16))(v217, v154, v31);
    v155 = v154;
    v156 = *(v216 + 8);
    v156(v155, v31);
    if (v149)
    {
      (v22[1])(a1, a2);
      v156(v217, v31);
      goto LABEL_3;
    }

    v157 = (*(v9 + 120))(v31, v9);
    v79 = v216;
    if (v157 < -149)
    {
      goto LABEL_70;
    }
  }

  else
  {
    v79 = v216;
    a1 = v199;
    if (v139 < 64 && (*(v9 + 120))(v31, v9) < -149)
    {
      goto LABEL_70;
    }
  }

LABEL_74:
  v198 = (*(a3 + 136))(a2, a3);
  (*(v79 + 16))(v214, v217, v31);
  v158 = v195(v31, v9);
  v159 = v201;
  if ((v158 & 1) == 0 || v201(v31, v9) < 65)
  {
    goto LABEL_88;
  }

  v218[0] = -0.0;
  v160 = v195;
  if ((v195(v31, v9) & 1) == 0)
  {
    v167 = v160(v31, v9);
    v159 = v201;
    v168 = v201(v31, v9);
    if ((v167 & 1) == 0)
    {
      a1 = v199;
      if (v168 >= 64)
      {
        goto LABEL_88;
      }

      goto LABEL_87;
    }

    a1 = v199;
    if (v168 <= 64)
    {
      v174 = v205;
      v175 = v196;
      v176 = swift_getAssociatedConformanceWitness(v205, v31, v196, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v177 = v204;
      (*(v176 + 8))(&qword_18071E0A8, 256, v175, v176);
      v178 = v174;
      v179 = v174[3];
      v180 = v215;
      (v179)(v177, v31, v178);
      LODWORD(v205) = (*(*(*(v9 + 32) + 8) + 16))(v214, v180, v31);
      (*(v216 + 8))(v180, v31);
      v159 = v201;
      if ((v205 & 1) == 0)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v205 = *(v9 + 96);
      v171 = lazy protocol witness table accessor for type Int and conformance Int(v168, v169, v170);
      v172 = v215;
      (v205)(v218, &type metadata for Int, v171, v31, v9);
      v173 = (*(*(*(v9 + 32) + 8) + 16))(v214, v172, v31);
      (*(v216 + 8))(v172, v31);
      v159 = v201;
      if ((v173 & 1) == 0)
      {
        goto LABEL_88;
      }
    }

LABEL_92:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v159 = v201;
  v161 = v201(v31, v9);
  a1 = v199;
  if (v161 < 64)
  {
LABEL_87:
    (*(v9 + 120))(v31, v9);
    goto LABEL_88;
  }

  v205 = *(v9 + 96);
  v164 = lazy protocol witness table accessor for type Int and conformance Int(v161, v162, v163);
  v165 = v215;
  (v205)(v218, &type metadata for Int, v164, v31, v9);
  v159 = v201;
  v166 = (*(*(*(v9 + 32) + 8) + 16))(v214, v165, v31);
  (*(v216 + 8))(v165, v31);
  if (v166)
  {
    goto LABEL_92;
  }

LABEL_88:
  v201 = v159;
  v181 = v214;
  v182 = v159(v31, v9);
  v183 = v181;
  if (v182 <= 64 && (v201(v31, v9) != 64 || (v195(v31, v9) & 1) != 0))
  {
    goto LABEL_98;
  }

  v218[0] = NAN;
  v184 = v195(v31, v9);
  v185 = v201(v31, v9);
  if (v184)
  {
    if (v185 > 64)
    {
      goto LABEL_91;
    }

LABEL_97:
    v183 = v214;
    (*(v9 + 120))(v31, v9);
    goto LABEL_98;
  }

  if (v185 < 64)
  {
    goto LABEL_97;
  }

LABEL_91:
  v205 = *(v9 + 96);
  v188 = lazy protocol witness table accessor for type Int and conformance Int(v185, v186, v187);
  v189 = v215;
  (v205)(v218, &type metadata for Int, v188, v31, v9);
  v183 = v214;
  v190 = (*(*(*(v9 + 32) + 8) + 16))(v189, v214, v31);
  (*(v216 + 8))(v189, v31);
  if (v190)
  {
    goto LABEL_92;
  }

LABEL_98:
  v191 = (*(v9 + 120))(v31, v9);
  v192 = v183;
  v193 = *(v216 + 8);
  v193(v192, v31);
  result = (v193)(v217, v31);
  if (!__OFADD__(v191, 149))
  {
    v15 = v197;
    if (v191 + 149 >= v198)
    {
      goto LABEL_8;
    }

LABEL_2:
    (v22[1])(a1, a2);
LABEL_3:
    v40 = 0;
    v41 = 1;
LABEL_26:
    LOBYTE(v218[0]) = v41;
    return v40 | (v41 << 32);
  }

  __break(1u);
  return result;
}

uint64_t BinaryFloatingPoint.init<A>(exactly:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a4;
  v9 = a2;
  v335 = a6;
  v11 = *(a4 + 16);
  swift_getAssociatedTypeWitness(255, v11, a2, &protocol requirements base descriptor for FloatingPoint, associated type descriptor for FloatingPoint.Exponent);
  v13 = v12;
  v330 = v11;
  v325 = *(swift_getAssociatedConformanceWitness(v11, v9, v12, &protocol requirements base descriptor for FloatingPoint, associated conformance descriptor for FloatingPoint.FloatingPoint.Exponent: SignedInteger) + 8);
  v315 = v325[3];
  v317 = *(v315 + 2);
  swift_getAssociatedTypeWitness(0, v317, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v316 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v318 = &v295[-v16];
  v17 = *(a5 + 16);
  swift_getAssociatedTypeWitness(255, v17, a3, &protocol requirements base descriptor for FloatingPoint, associated type descriptor for FloatingPoint.Exponent);
  v19 = v18;
  v331 = *(swift_getAssociatedConformanceWitness(v17, a3, v18, &protocol requirements base descriptor for FloatingPoint, associated conformance descriptor for FloatingPoint.FloatingPoint.Exponent: SignedInteger) + 8);
  v313 = *(*(v331 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v313, v19, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v311 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v312 = &v295[-v22];
  v332 = swift_checkMetadataState(0, v13);
  v329 = *(v332 - 1);
  v24 = MEMORY[0x1EEE9AC00](v332, v23);
  v322 = &v295[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v314 = &v295[-v28];
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v319 = &v295[-v31];
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v323 = &v295[-v34];
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v324 = &v295[-v37];
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v41 = &v295[-v40];
  v336 = *(v9 - 1);
  v43 = MEMORY[0x1EEE9AC00](v39, v42);
  v320 = &v295[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = MEMORY[0x1EEE9AC00](v43, v45);
  v321 = &v295[-v47];
  v49 = MEMORY[0x1EEE9AC00](v46, v48);
  v51 = &v295[-v50];
  MEMORY[0x1EEE9AC00](v49, v52);
  v54 = &v295[-v53];
  v55 = swift_checkMetadataState(0, v19);
  v327 = *(v55 - 1);
  v328 = v55;
  v57 = MEMORY[0x1EEE9AC00](v55, v56);
  v326 = &v295[-((v58 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v57, v59);
  v333 = &v295[-v60];
  if (((*(v17 + 408))(a3, v17) & 1) == 0)
  {
    v334 = a1;
    v63 = (*(a5 + 96))(a3, a5);
    if ((*(v7 + 96))(v9, v7) >= v63)
    {
      v64 = (*(a5 + 104))(a3, a5);
      if ((*(v7 + 104))(v9, v7) >= v64)
      {
        goto LABEL_8;
      }
    }

    if ((*(v17 + 376))(a3, v17) & 1) == 0 || ((*(v17 + 384))(a3, v17))
    {
      goto LABEL_8;
    }

    v298 = a5;
    v297 = v7;
    v66 = *(v17 + 176);
    v302 = a3;
    v66(a3, v17);
    v67 = v330;
    (v330[19])(v9, v330);
    v68 = v67[22];
    v304 = v67 + 22;
    v303 = v68;
    (v68)(v9, v67);
    v69 = *(v336 + 8);
    v307 = v336 + 8;
    v306 = v69;
    v69(v54, v9);
    v70 = v331;
    v72 = v331 + 64;
    v71 = *(v331 + 64);
    v73 = v328;
    v74 = v71();
    v75 = v325;
    v76 = v325[8];
    v309 = v325 + 8;
    v308 = v76;
    v77 = v76();
    v310 = v9;
    v300 = v72;
    v299 = v71;
    if ((v74 ^ v77))
    {
      v78 = v75;
      v79 = (v71)(v73, v70);
      v301 = *(v70 + 128);
      v80 = v301(v73, v70);
      v305 = v78[16];
      v81 = (v305)(v332, v78);
      if ((v79 & 1) == 0)
      {
        if (v80 < v81)
        {
          v95 = v326;
          v85 = v328;
          (*(v327 + 16))(v326, v333, v328);
          v97 = v324;
          v96 = v325;
          v83 = v332;
          (v325[12])(v95, v85, v331, v332, v325);
          v92 = (*(*(v96[4] + 1) + 16))(v97, v41, v83);
          v98 = *(v329 + 8);
          v98(v97, v83);
          v98(v41, v83);
          v75 = v96;
          goto LABEL_21;
        }

        v139 = v317;
        v83 = v332;
        v140 = v316;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v317, v332, v316, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v142 = v318;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v140, AssociatedConformanceWitness);
        v143 = v324;
        (v139[3])(v142, v83, v139);
        v144 = v325;
        LOBYTE(v140) = (*(*(v325[4] + 1) + 40))(v41, v143, v83);
        v145 = *(v329 + 8);
        v145(v143, v83);
        if ((v140 & 1) == 0)
        {
          v145(v41, v83);
          v85 = v328;
          v75 = v144;
          v101 = v308;
          goto LABEL_44;
        }

        v146 = v331;
        v84 = v326;
        v85 = v328;
        (*(v331 + 96))(v41, v83, v144, v328, v331);
        v75 = v144;
        v100 = (*(*(*(v146 + 32) + 8) + 16))(v333, v84, v85);
LABEL_20:
        v92 = v100;
        (*(v327 + 8))(v84, v85);
LABEL_21:
        v101 = v308;
        if (v92)
        {
          goto LABEL_22;
        }

LABEL_44:
        v165 = v330;
        v166 = v330[15];
        v167 = v320;
        v168 = v310;
        v325 = v330 + 15;
        v323 = v166;
        (v166)(v310, v330);
        v169 = v322;
        (v303)(v168, v165);
        v306(v167, v168);
        LODWORD(v168) = (v101)(v83, v75);
        v170 = v331;
        if ((v168 ^ (v299)(v85, v331)))
        {
          v171 = (v101)(v83, v75);
          v172 = (v305)(v83, v75);
          v173 = v301(v85, v170);
          if (v171)
          {
            v174 = v329;
            v7 = v297;
            if (v173 >= v172)
            {
              v208 = v317;
              v209 = v332;
              v210 = v316;
              v211 = swift_getAssociatedConformanceWitness(v317, v332, v316, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
              v212 = v318;
              (*(v211 + 8))(&qword_18071E0A8, 256, v210, v211);
              v213 = v324;
              v214 = v322;
              (v208[3])(v212, v209, v208);
              LOBYTE(v210) = (*(*(v75[4] + 1) + 16))(v214, v213, v209);
              v215 = *(v174 + 8);
              v215(v213, v209);
              v216 = v333;
              if (v210)
              {
                v215(v214, v209);
                (*(v327 + 8))(v216, v328);
              }

              else
              {
                v259 = v331;
                v260 = v326;
                v261 = v209;
                v262 = v328;
                (*(v331 + 96))(v214, v261, v75, v328, v331);
                v263 = (*(*(*(v259 + 32) + 8) + 16))(v260, v216, v262);
                v264 = *(v327 + 8);
                v264(v260, v262);
                v264(v216, v262);
                if ((v263 & 1) == 0)
                {
LABEL_76:
                  a5 = v298;
                  a3 = v302;
                  v265 = (*(v298 + 136))(v302, v298);
                  v266 = v321;
                  v9 = v310;
                  (v323)(v310, v330);
                  v267 = (*(v7 + 136))(v9, v7);
                  v306(v266, v9);
                  if (v267 < v265)
                  {
                    goto LABEL_98;
                  }

                  goto LABEL_8;
                }
              }
            }

            else
            {
              v175 = v326;
              v176 = v328;
              (*(v327 + 32))(v326, v333, v328);
              v177 = v324;
              v178 = v332;
              (v75[12])(v175, v176, v331, v332, v75);
              LOBYTE(v176) = (*(*(v75[4] + 1) + 16))(v169, v177, v178);
              v179 = *(v174 + 8);
              v179(v177, v178);
              v179(v169, v178);
              if ((v176 & 1) == 0)
              {
                goto LABEL_76;
              }
            }

LABEL_56:
            (*(*(v302 - 1) + 1))(v334);
            goto LABEL_57;
          }

          v187 = v329;
          if (v172 >= v173)
          {
            v217 = v313;
            v218 = v328;
            v219 = v311;
            v220 = swift_getAssociatedConformanceWitness(v313, v328, v311, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v221 = v312;
            (*(v220 + 8))(&qword_18071E0A8, 256, v219, v220);
            v222 = v326;
            (v217[3])(v221, v218, v217);
            v223 = v333;
            LOBYTE(v219) = (*(*(*(v170 + 32) + 8) + 40))(v333, v222, v218);
            v224 = v170;
            v225 = v327;
            v226 = *(v327 + 8);
            v226(v222, v218);
            if ((v219 & 1) == 0)
            {
              (*(v187 + 8))(v322, v332);
              v226(v223, v218);
              v7 = v297;
              goto LABEL_76;
            }

            (*(v225 + 32))(v222, v223, v218);
            v227 = v324;
            v228 = v332;
            (v75[12])(v222, v218, v224, v332, v75);
            v229 = v322;
            v183 = (*(*(v75[4] + 1) + 16))(v322, v227, v228);
            v230 = *(v187 + 8);
            v230(v227, v228);
            v230(v229, v228);
            goto LABEL_55;
          }

          v188 = v326;
          v189 = v328;
          (*(v170 + 96))(v169, v332, v75, v328, v170);
          v190 = *(*(*(v170 + 32) + 8) + 16);
          v191 = v333;
          v183 = v190(v188, v333, v189);
          v184 = *(v327 + 8);
          v184(v188, v189);
          v185 = v191;
          v186 = v189;
        }

        else
        {
          v180 = (v305)(v83, v75);
          v181 = v333;
          if (v180 >= v301(v85, v170))
          {
            v192 = v326;
            (*(v327 + 32))(v326, v181, v85);
            v193 = v170;
            v194 = v324;
            (v75[12])(v192, v85, v193, v83, v75);
            v183 = (*(*(v75[4] + 1) + 16))(v169, v194, v83);
            v195 = *(v329 + 8);
            v195(v194, v83);
            v195(v169, v83);
LABEL_55:
            v7 = v297;
            if ((v183 & 1) == 0)
            {
              goto LABEL_76;
            }

            goto LABEL_56;
          }

          v182 = v326;
          (*(v170 + 96))(v169, v83, v75, v85, v170);
          v183 = (*(*(*(v170 + 32) + 8) + 16))(v182, v181, v85);
          v184 = *(v327 + 8);
          v184(v182, v85);
          v185 = v181;
          v186 = v85;
        }

        v184(v185, v186);
        goto LABEL_55;
      }

      if (v81 >= v80)
      {
        v131 = v313;
        v85 = v328;
        v132 = v311;
        v133 = swift_getAssociatedConformanceWitness(v313, v328, v311, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v134 = v312;
        (*(v133 + 8))(&qword_18071E0A8, 256, v132, v133);
        v135 = v326;
        (v131[3])(v134, v85, v131);
        v136 = v331;
        v137 = v333;
        LOBYTE(v132) = (*(*(*(v331 + 32) + 8) + 16))(v333, v135, v85);
        v138 = v327;
        (*(v327 + 8))(v135, v85);
        v75 = v325;
        if (v132)
        {
          v83 = v332;
          (*(v329 + 8))(v41, v332);
          v101 = v308;
        }

        else
        {
          (*(v138 + 16))(v135, v137, v85);
          v161 = v324;
          v162 = v135;
          v83 = v332;
          (v75[12])(v162, v85, v136, v332, v75);
          v296 = (*(*(v75[4] + 1) + 16))(v161, v41, v83);
          v163 = v75;
          v164 = *(v329 + 8);
          v164(v161, v83);
          v164(v41, v83);
          v75 = v163;
          v101 = v308;
          if ((v296 & 1) == 0)
          {
            goto LABEL_44;
          }
        }

LABEL_22:
        v102 = v330;
        v103 = v330[20];
        v104 = v310;
        v322 = v330 + 20;
        v320 = v103;
        (v103)(v310, v330);
        v105 = v75;
        v106 = v323;
        (v303)(v104, v102);
        v306(v51, v104);
        v107 = v85;
        v108 = v85;
        v109 = v331;
        v110 = v83;
        v111 = v299;
        LODWORD(v104) = (v299)(v108, v331);
        if ((v104 ^ (v101)(v83, v105)))
        {
          v112 = v107;
          v113 = (v111)(v107, v109);
          v114 = v333;
          v115 = v301(v112, v109);
          v116 = (v305)(v83, v105);
          v117 = v329;
          if (v113)
          {
            if (v116 >= v115)
            {
              v154 = v313;
              v120 = v328;
              v155 = v311;
              v156 = swift_getAssociatedConformanceWitness(v313, v328, v311, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
              v157 = v312;
              (*(v156 + 8))(&qword_18071E0A8, 256, v155, v156);
              v119 = v326;
              (v154[3])(v157, v120, v154);
              LOBYTE(v154) = (*(*(*(v109 + 32) + 8) + 16))(v114, v119, v120);
              v158 = v114;
              v159 = v327;
              (*(v327 + 8))(v119, v120);
              v160 = v332;
              if (v154)
              {
                (*(v117 + 8))(v323, v332);
                v122 = v159;
                v114 = v158;
              }

              else
              {
                (*(v159 + 16))(v119, v158, v120);
                v231 = v325;
                v232 = v109;
                v234 = v323;
                v233 = v324;
                (v325[12])(v119, v120, v232, v160, v325);
                LODWORD(v313) = (*(*(v231[4] + 1) + 16))(v233, v234, v160);
                v235 = v158;
                v236 = *(v117 + 8);
                v236(v233, v332);
                v237 = v234;
                v123 = v331;
                v236(v237, v332);
                v118 = v231;
                v110 = v332;
                v122 = v159;
                v114 = v235;
                if ((v313 & 1) == 0)
                {
                  goto LABEL_68;
                }
              }
            }

            else
            {
              v118 = v325;
              v119 = v326;
              v110 = v332;
              v120 = v328;
              (*(v109 + 96))(v323, v332, v325, v328, v109);
              v121 = (*(*(*(v109 + 32) + 8) + 16))(v114, v119, v120);
              v122 = v327;
              (*(v327 + 8))(v119, v120);
              v123 = v109;
              if ((v121 & 1) == 0)
              {
                goto LABEL_68;
              }
            }

            goto LABEL_38;
          }

          if (v115 < v116)
          {
            v119 = v326;
            v120 = v328;
            (*(v327 + 16))(v326, v333, v328);
            v147 = v324;
            v148 = v325;
            v149 = v323;
            v123 = v331;
            v150 = v332;
            (v325[12])(v119, v120, v331, v332, v325);
            v151 = (*(*(v148[4] + 1) + 16))(v147, v149, v150);
            v152 = *(v329 + 8);
            v152(v147, v150);
            v152(v149, v150);
            v118 = v148;
            v110 = v150;
            v122 = v327;
            v114 = v333;
            if ((v151 & 1) == 0)
            {
              goto LABEL_68;
            }

            goto LABEL_38;
          }

          v196 = v317;
          v197 = v332;
          v198 = v316;
          v199 = swift_getAssociatedConformanceWitness(v317, v332, v316, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
          v200 = v318;
          (*(v199 + 8))(&qword_18071E0A8, 256, v198, v199);
          v201 = v324;
          (v196[3])(v200, v197, v196);
          v202 = v325;
          v203 = v323;
          LOBYTE(v198) = (*(*(v325[4] + 1) + 40))(v323, v201, v197);
          v204 = *(v329 + 8);
          v204(v201, v197);
          if (v198)
          {
            v123 = v331;
            v119 = v326;
            v205 = v203;
            v120 = v328;
            (*(v331 + 96))(v205, v197, v202, v328, v331);
            v206 = (*(*(*(v123 + 32) + 8) + 16))(v114, v119, v120);
            v207 = v327;
            (*(v327 + 8))(v119, v120);
            v110 = v197;
            v122 = v207;
            v118 = v202;
            if ((v206 & 1) == 0)
            {
              goto LABEL_68;
            }

            goto LABEL_38;
          }

          v204(v203, v197);
          v110 = v197;
          v122 = v327;
          v120 = v328;
          v123 = v331;
          v119 = v326;
          v118 = v202;
        }

        else
        {
          v124 = v333;
          v125 = v301(v107, v109);
          v126 = v125 < (v305)(v83, v105);
          v120 = v107;
          v118 = v105;
          v119 = v326;
          if (v126)
          {
            v122 = v327;
            (*(v327 + 16))(v326, v124, v107);
            v127 = v109;
            v128 = v324;
            (v118[12])(v119, v107, v127, v110, v118);
            v153 = (*(*(v118[4] + 1) + 16))(v128, v106, v110);
            v129 = *(v329 + 8);
            v129(v128, v332);
            v130 = v106;
            v123 = v331;
            v129(v130, v332);
            v110 = v332;
          }

          else
          {
            (*(v109 + 96))(v106, v83, v118, v107, v109);
            v153 = (*(*(*(v109 + 32) + 8) + 16))(v124, v119, v107);
            v122 = v327;
            (*(v327 + 8))(v119, v107);
            v123 = v109;
          }

          v114 = v124;
          if (v153)
          {
LABEL_38:
            (*(*(v302 - 1) + 1))(v334);
            (*(v122 + 8))(v114, v120);
LABEL_57:
            v61 = 1;
            v62 = v335;
            v9 = v310;
            return (*(v336 + 56))(v62, v61, 1, v9);
          }
        }

LABEL_68:
        v238 = v114;
        a3 = v302;
        v326 = (*(v298 + 136))(v302, v298);
        (*(v122 + 16))(v119, v238, v120);
        v239 = v324;
        (v118[11])(v119, v120, v123, v110, v118);
        v240 = v321;
        v9 = v310;
        v241 = v330;
        (v320)(v310, v330);
        v242 = v118;
        v243 = v314;
        (v303)(v9, v241);
        v306(v240, v9);
        v244 = v319;
        (*(*(v315 + 1) + 40))(v239, v243, v110);
        v245 = v329 + 8;
        v246 = *(v329 + 8);
        v246(v243, v110);
        v247 = v239;
        v248 = v244;
        v329 = v245;
        v246(v247, v110);
        v249 = (v308)(v110, v242);
        v250 = v305;
        if ((v249 & 1) == 0 || (v305)(v110, v242) < 65)
        {
          goto LABEL_87;
        }

        v251 = v308;
        if ((v308)(v110, v242))
        {
          v250 = v305;
          v252 = (v305)(v110, v242);
          if (v252 >= 64)
          {
            v337 = 0x8000000000000000;
            v255 = v242[12];
            v256 = lazy protocol witness table accessor for type Int and conformance Int(v252, v253, v254);
            v257 = v324;
            (v255)(&v337, &type metadata for Int, v256, v332, v242);
            v110 = v332;
            v258 = (*(*(v242[4] + 1) + 16))(v319, v257, v332);
            goto LABEL_81;
          }
        }

        else
        {
          v268 = (v251)(v110, v242);
          v269 = v110;
          v270 = v268;
          v250 = v305;
          v271 = (v305)(v269, v242);
          if (v270)
          {
            if (v271 > 64)
            {
              v337 = 0x8000000000000000;
              v274 = v242[12];
              v275 = lazy protocol witness table accessor for type Int and conformance Int(v271, v272, v273);
              v257 = v324;
              v276 = v332;
              (v274)(&v337, &type metadata for Int, v275, v332, v242);
              v110 = v276;
              v258 = (*(*(v242[4] + 1) + 16))(v319, v257, v276);
LABEL_81:
              v277 = v258;
              v278 = v257;
              v248 = v319;
              v246(v278, v110);
              if (v277)
              {
                goto LABEL_91;
              }

LABEL_87:
              if (v250)(v110, v242) <= 64 && ((v250)(v110, v242) != 64 || ((v308)(v110, v242)))
              {
                goto LABEL_97;
              }

              v283 = (v308)(v110, v242);
              v284 = v110;
              v285 = v283;
              v286 = (v250)(v284, v242);
              if (v285)
              {
                if (v286 >= 65)
                {
                  goto LABEL_90;
                }
              }

              else if (v286 >= 64)
              {
LABEL_90:
                v337 = 0x7FFFFFFFFFFFFFFFLL;
                v289 = v242[12];
                v290 = lazy protocol witness table accessor for type Int and conformance Int(v286, v287, v288);
                v291 = v324;
                v292 = v332;
                (v289)(&v337, &type metadata for Int, v290, v332, v242);
                v110 = v292;
                LOBYTE(v292) = (*(*(v242[4] + 1) + 16))(v291, v319, v292);
                v293 = v291;
                v248 = v319;
                v246(v293, v110);
                if (v292)
                {
                  goto LABEL_91;
                }

LABEL_97:
                (*(v327 + 8))(v333, v328);
                v294 = (v242[15])(v110, v242);
                v246(v248, v110);
                v7 = v297;
                a5 = v298;
                if (v294 < v326)
                {
LABEL_98:
                  (*(*(a3 - 1) + 1))(v334, a3);
                  goto LABEL_3;
                }

LABEL_8:
                v62 = v335;
                (*(v7 + 80))(v334, a3, a5, v9, v7);
                v61 = 0;
                return (*(v336 + 56))(v62, v61, 1, v9);
              }

              v110 = v332;
              (v242[15])(v332, v242);
              goto LABEL_97;
            }

            v279 = v317;
            v110 = v332;
            v280 = v316;
            v281 = swift_getAssociatedConformanceWitness(v317, v332, v316, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            (*(v281 + 8))(&qword_18071E0A8, 256, v280, v281);
            v282 = v324;
            (v279[3])(v318, v110, v279);
            LOBYTE(v280) = (*(*(v242[4] + 1) + 16))(v248, v282, v110);
            v246(v282, v110);
            if (v280)
            {
LABEL_91:
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }
          }

          else
          {
            v110 = v332;
            if (v271 >= 64)
            {
              goto LABEL_87;
            }
          }
        }

        (v242[15])(v110, v242);
        goto LABEL_87;
      }

      v82 = v331;
      v83 = v332;
      v75 = v325;
      v84 = v326;
      v85 = v328;
      (*(v331 + 96))(v41, v332, v325, v328, v331);
      v86 = *(v82 + 32);
    }

    else
    {
      v85 = v73;
      v301 = *(v70 + 128);
      v87 = v301(v73, v70);
      v305 = v75[16];
      v88 = v70;
      if (v87 < (v305)(v332, v75))
      {
        v89 = v326;
        (*(v327 + 16))(v326, v333, v73);
        v90 = v70;
        v91 = v324;
        v83 = v332;
        (v75[12])(v89, v73, v90, v332, v75);
        v92 = (*(*(v75[4] + 1) + 16))(v91, v41, v83);
        v93 = v75;
        v94 = *(v329 + 8);
        v94(v91, v83);
        v94(v41, v83);
        v75 = v93;
        goto LABEL_21;
      }

      v99 = *(v70 + 96);
      v84 = v326;
      v83 = v332;
      v99(v41, v332, v75, v73, v88);
      v86 = *(v88 + 32);
    }

    v100 = (*(*(v86 + 8) + 16))(v333, v84, v85);
    goto LABEL_20;
  }

  (*(*(a3 - 1) + 1))(a1, a3);
LABEL_3:
  v61 = 1;
  v62 = v335;
  return (*(v336 + 56))(v62, v61, 1, v9);
}

uint64_t BinaryFloatingPoint.init(signOf:magnitudeOf:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v19 - v10;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawExponent);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v19 - v14;
  v16 = (*(*(a4 + 16) + 168))(a3);
  v17 = *(*(a3 - 1) + 1);
  v17(a1, a3);
  (*(a4 + 112))(a3, a4);
  (*(a4 + 120))(a3, a4);
  v17(a2, a3);
  return (*(a4 + 56))(v16 & 1, v15, v11, a3, a4);
}

uint64_t specialized static BinaryFloatingPoint._convert<A>(from:)(unint64_t *a1, uint64_t a2, char *a3, swift *a4)
{
  v500 = a1;
  v514 = *(a3 - 1);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v512 = &v480 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v484 = &v480 - v12;
  swift_getAssociatedTypeWitness(255, v14, v13, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v16 = v15;
  v510 = *(swift_getAssociatedConformanceWitness(a4, a3, v15, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger) + 8);
  v489 = *(v510 + 24);
  v509 = *(v489 + 16);
  swift_getAssociatedTypeWitness(0, v509, v16, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v506 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v505 = &v480 - v19;
  v507 = swift_checkMetadataState(0, v16);
  v499 = *(v507 - 1);
  v21 = MEMORY[0x1EEE9AC00](v507, v20);
  v23 = &v480 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v27 = &v480 - v26;
  v29 = MEMORY[0x1EEE9AC00](v25, v28);
  v508 = &v480 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v492 = &v480 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v487 = &v480 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35, v37);
  v498 = &v480 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38, v40);
  v491 = &v480 - v42;
  v44 = MEMORY[0x1EEE9AC00](v41, v43);
  v497 = &v480 - v45;
  v47 = MEMORY[0x1EEE9AC00](v44, v46);
  v490 = &v480 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47, v49);
  v496 = &v480 - v51;
  v53 = MEMORY[0x1EEE9AC00](v50, v52);
  v486 = &v480 - v54;
  v56 = MEMORY[0x1EEE9AC00](v53, v55);
  v483 = &v480 - v57;
  MEMORY[0x1EEE9AC00](v56, v58);
  v519 = &v480 - v59;
  v511 = a4;
  v60 = *(a4 + 2);
  swift_getAssociatedTypeWitness(255, v60, a3, &protocol requirements base descriptor for FloatingPoint, associated type descriptor for FloatingPoint.Exponent);
  v62 = v61;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v60, a3, v61, &protocol requirements base descriptor for FloatingPoint, associated conformance descriptor for FloatingPoint.FloatingPoint.Exponent: SignedInteger);
  v64 = *(AssociatedConformanceWitness + 8);
  v495 = *(v64 + 24);
  v504 = *(v495 + 2);
  swift_getAssociatedTypeWitness(0, v504, v62, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v502 = v65;
  MEMORY[0x1EEE9AC00](v65, v66);
  v503 = &v480 - v67;
  v68 = v62;
  v69 = v60;
  v70 = swift_checkMetadataState(0, v68);
  v517 = *(v70 - 1);
  v72 = MEMORY[0x1EEE9AC00](v70, v71);
  v493 = &v480 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = MEMORY[0x1EEE9AC00](v72, v74);
  v485 = &v480 - v76;
  v78 = MEMORY[0x1EEE9AC00](v75, v77);
  v494 = &v480 - v79;
  v81 = MEMORY[0x1EEE9AC00](v78, v80);
  v488 = &v480 - v82;
  v84 = MEMORY[0x1EEE9AC00](v81, v83);
  v86 = &v480 - v85;
  v88 = MEMORY[0x1EEE9AC00](v84, v87);
  v516 = &v480 - v89;
  MEMORY[0x1EEE9AC00](v88, v90);
  v518 = &v480 - v91;
  if ((v69[48])(a3, v69))
  {
    if (((v69[21])(a3, v69) & 1) == 0)
    {
      *v500 = 0;
      return 1;
    }

    v459 = 0x8000000000000000;
    goto LABEL_225;
  }

  if (((v69[47])(a3, v69) & 1) == 0)
  {
    if (((v69[50])(a3, v69) & 1) == 0)
    {
      v460 = v511;
      v461 = v511[15];
      (v461)(a3, v511);
      v462 = v461;
      v518 = v461;
      v463 = v484;
      (v69[12])(a3, v69);
      v462(a3, v460);
      v464 = v69;
      v465 = *(v514 + 1);
      v465(v463, a3);
      v501 = v464;
      v466 = v512;
      (v464[13])(a3, v464);
      (v518)(a3, v460);
      v465(v466, a3);
      v467 = v510;
      v468 = v491;
      v469 = v507;
      (*(v510 + 208))(v27, v23, v507, v510);
      v470 = *(v499 + 8);
      v470(v23, v469);
      v470(v27, v469);
      v471 = v497;
      (*(v467 + 184))(v468, v469, v467);
      v470(v468, v469);
      v472 = v508;
      v473 = v519;
      (*(v467 + 192))(v519, v471, v469, v467);
      v470(v471, v469);
      v470(v473, v469);
      v474 = (*(v467 + 120))(v469, v467);
      v470(v472, v469);
      v475 = v474 & 0x3FFFFFFFFFFFFLL;
      v476 = v501;
      LOBYTE(v474) = (*(v501 + 52))(a3, v501);
      v477 = (*(v476 + 21))(a3, v476);
      result = 0;
      v478 = v475 | (v477 << 63);
      v479 = 0x7FF8000000000000;
      if (v474)
      {
        v479 = 0x7FF4000000000000;
      }

      v158 = v478 | v479;
      goto LABEL_74;
    }

    if (((v69[21])(a3, v69) & 1) == 0)
    {
LABEL_224:
      v459 = 0x7FF0000000000000;
      goto LABEL_225;
    }

    v459 = 0xFFF0000000000000;
LABEL_225:
    *v500 = v459;
    return 1;
  }

  v484 = AssociatedConformanceWitness;
  v92 = v518;
  v93 = v69;
  (v69[22])(a3, v69);
  v520 = -1022;
  v94 = *(v64 + 64);
  v95 = v94(v70, v64);
  v512 = v94;
  v513 = a3;
  v515 = a2;
  v508 = (v64 + 64);
  if ((v95 & 1) == 0)
  {
    v100 = v94(v70, v64);
    v514 = *(v64 + 128);
    v101 = v514(v70, v64);
    v99 = v93;
    if (v100)
    {
      if (v101 > 64)
      {
        v104 = *(v64 + 96);
        v105 = lazy protocol witness table accessor for type Int and conformance Int(v101, v102, v103);
        v106 = v516;
        v104(&v520, &type metadata for Int, v105, v70, v64);
        v92 = v518;
        v107 = (*(*(*(v64 + 32) + 8) + 16))(v518, v106, v70);
        (*(v517 + 8))(v106, v70);
        if (v107)
        {
          goto LABEL_17;
        }

        goto LABEL_21;
      }

      v112 = v504;
      v113 = v502;
      v114 = swift_getAssociatedConformanceWitness(v504, v70, v502, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v115 = v503;
      (*(v114 + 8))(&qword_18071E0A8, 256, v113, v114);
      v116 = v516;
      (v112[3])(v115, v70, v112);
      v92 = v518;
      LOBYTE(v113) = (*(*(*(v64 + 32) + 8) + 16))(v518, v116, v70);
      (*(v517 + 8))(v116, v70);
      if (v113)
      {
        goto LABEL_17;
      }
    }

    else if (v101 >= 64)
    {
      goto LABEL_21;
    }

    if ((*(v64 + 120))(v70, v64) >= -1022)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  v514 = *(v64 + 128);
  v96 = v514(v70, v64);
  if (v96 >= 64)
  {
    v108 = *(v64 + 96);
    v109 = lazy protocol witness table accessor for type Int and conformance Int(v96, v97, v98);
    v110 = v516;
    v108(&v520, &type metadata for Int, v109, v70, v64);
    v92 = v518;
    v111 = (*(*(*(v64 + 32) + 8) + 16))(v518, v110, v70);
    (*(v517 + 8))(v110, v70);
    v99 = v93;
    if (v111)
    {
      goto LABEL_17;
    }

LABEL_21:
    v520 = 1023;
    v136 = v508;
    v137 = v512;
    v138 = (v512)(v70, v64);
    v139 = (v64 + 128);
    v140 = v514(v70, v64);
    if (v138)
    {
      if (v140 > 64)
      {
        goto LABEL_23;
      }
    }

    else if (v140 > 63)
    {
LABEL_23:
      v143 = *(v64 + 96);
      v144 = lazy protocol witness table accessor for type Int and conformance Int(v140, v141, v142);
      v145 = v516;
      v143(&v520, &type metadata for Int, v144, v70, v64);
      v92 = v518;
      v146 = (*(*(*(v64 + 32) + 8) + 16))(v145, v518, v70);
      v147 = v145;
      v137 = v512;
      (*(v517 + 8))(v147, v70);
      if ((v146 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_30:
      (*(v517 + 8))(v92, v70);
      if ((*(v99 + 21))(v513, v99))
      {
        result = 0;
        v158 = 0xFFF0000000000000;
      }

      else
      {
        result = 0;
        v158 = 0x7FF0000000000000;
      }

      goto LABEL_74;
    }

    if ((*(v64 + 120))(v70, v64) <= 1023)
    {
LABEL_24:
      v148 = v137(v70, v64);
      v501 = v99;
      if (v148)
      {
        v149 = v514(v70, v64);
        if (v149 >= 64)
        {
          v520 = 0;
          v152 = *(v64 + 96);
          v153 = lazy protocol witness table accessor for type Int and conformance Int(v149, v150, v151);
          v154 = v516;
          v152(&v520, &type metadata for Int, v153, v70, v64);
          v92 = v518;
          v155 = (*(*(*(v64 + 32) + 8) + 16))(v518, v154, v70);
          v156 = v154;
          v136 = v508;
          (*(v517 + 8))(v156, v70);
          if ((v155 & 1) == 0)
          {
            goto LABEL_52;
          }

LABEL_60:
          v204 = v485;
          (*(*(v484 + 2) + 16))(v92, v70);
          v205 = v136;
          v206 = *(v517 + 8);
          v517 += 8;
          (v206)(v92, v70);
          if (v137(v70, v64))
          {
            v207 = v504;
            v208 = v502;
            v209 = swift_getAssociatedConformanceWitness(v504, v70, v502, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v210 = v503;
            (*(v209 + 8))(&qword_18071E0A8, 256, v208, v209);
            v205 = v516;
            v211 = v210;
            v137 = v512;
            (v207[3])(v211, v70, v207);
            LOBYTE(v208) = (*(*(*(v64 + 32) + 8) + 32))(v204, v205, v70);
            (v206)(v205, v70);
            if ((v208 & 1) == 0)
            {
              goto LABEL_222;
            }
          }

          v212 = v514;
          if (v514(v70, v64) > 63)
          {
            v520 = -1;
            v205 = v137(v70, v64);
            v213 = v212(v70, v64);
            if (v205)
            {
              if (v213 <= 64)
              {
                v139 = v504;
                v216 = v502;
                v217 = swift_getAssociatedConformanceWitness(v504, v70, v502, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                v218 = v503;
                (*(v217 + 8))(&qword_18071E0A8, 256, v216, v217);
                v205 = v516;
                (v139[3])(v218, v70, v139);
                v204 = v485;
                LOBYTE(v216) = (*(*(*(v64 + 32) + 8) + 40))(v485, v205, v70);
                (v206)(v205, v70);
                if (v216)
                {
                  (*(v64 + 120))(v70, v64);
                }

                goto LABEL_112;
              }
            }

            else if (v213 <= 64)
            {
              v204 = v485;
              (*(v64 + 120))(v70, v64);
              goto LABEL_112;
            }

            v205 = v64 + 96;
            v139 = *(v64 + 96);
            v255 = lazy protocol witness table accessor for type UInt and conformance UInt(v213, v214, v215);
            v256 = v516;
            (v139)(&v520, &type metadata for UInt, v255, v70, v64);
            v204 = v485;
            v257 = (*(*(*(v64 + 32) + 8) + 16))(v256, v485, v70);
            (v206)(v256, v70);
            if (v257)
            {
              goto LABEL_222;
            }
          }

LABEL_112:
          v259 = (*(v64 + 120))(v70, v64);
          (v206)(v204, v70);
          v258 = (1023 - v259);
          if (v259 > 0x3FF)
          {
            __break(1u);
            goto LABEL_232;
          }

LABEL_113:
          v504 = v258;
          v260 = v510;
          v261 = v511;
          v262 = v519;
          v263 = v511[17];
          v512 = ((v511 + 17) & 0xFFFFFFFFFFFFLL | 0x1E66000000000000);
          v264 = v513;
          v514 = v263;
          v517 = v263(v513, v511);
          v516 = v261[15];
          (v516)(v264, v261);
          v265 = *(v260 + 144);
          v266 = v507;
          v495 = (v260 + 144);
          v494 = v265;
          v267 = (v265)(v507, v260);
          v70 = (v499 + 8);
          v518 = *(v499 + 8);
          (v518)(v262, v266);
          v517 = 52 - v517 - v267;
          LOBYTE(v260) = (*(v501 + 49))(v264);
          v268 = v509;
          v269 = v506;
          v270 = swift_getAssociatedConformanceWitness(v509, v266, v506, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
          v271 = *(v270 + 8);
          v503 = (v268 + 3);
          v508 = (v261 + 15);
          if (v260)
          {
            v272 = v505;
            v271(&qword_1806729C0, 512, v269, v270);
            v502 = v268[3];
            (v502)(v272, v266, v268);
            v273 = v514(v264, v261);
            v274 = v497;
            (v516)(v264, v261);
            v205 = v510;
            v275 = (v494)(v266, v510);
            v276 = v518;
            v277 = (v518)(v274, v266);
            v520 = v275 + v273;
            v278 = *(v205 + 256);
            v281 = lazy protocol witness table accessor for type Int and conformance Int(v277, v279, v280);
            v282 = v519;
            v278(v519, &v520, &type metadata for Int, v281, v266, v205);
            v139 = v70;
            (v276)(v282, v266);
            v283 = v492;
            v284 = v276;
          }

          else
          {
            v139 = v70;
            v285 = v505;
            v271(&qword_18071E0A8, 256, v269, v270);
            v502 = v268[3];
            (v502)(v285, v266, v268);
            v205 = v510;
            v284 = v518;
            v282 = v519;
            v283 = v492;
          }

          v259 = v205 + 224;
          v206 = v517;
          if ((v517 & 0x8000000000000000) == 0)
          {
            (v516)(v513, v511);
            v286 = v498;
            (*(v205 + 224))(v498, v282, v266, v205);
            (v284)(v282, v266);
            v508 = v139;
            (v284)(v286, v266);
            v287 = *(v205 + 64);
            v288 = v205;
            if (v287(v266, v205))
            {
              v289 = v509;
              v290 = v506;
              v291 = swift_getAssociatedConformanceWitness(v509, v266, v506, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
              v292 = v505;
              (*(v291 + 8))(&qword_18071E0A8, 256, v290, v291);
              (v502)(v292, v266, v289);
              LOBYTE(v292) = (*(*(*(v205 + 32) + 8) + 32))(v283, v282, v266);
              (v518)(v282, v266);
              if ((v292 & 1) == 0)
              {
                goto LABEL_222;
              }
            }

            v293 = *(v205 + 128);
            if (v293(v266, v205) <= 63)
            {
              goto LABEL_140;
            }

            v520 = -1;
            v294 = v287(v266, v205);
            v295 = v293(v266, v205);
            if (v294)
            {
              v298 = v519;
              if (v295 > 64)
              {
                v299 = *(v205 + 96);
                v300 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v295, v296, v297);
                v299(&v520, &type metadata for UInt64, v300, v266, v205);
                v301 = (*(*(*(v205 + 32) + 8) + 16))(v298, v283, v266);
                v302 = v298;
                goto LABEL_132;
              }

              v334 = v509;
              v335 = v506;
              v336 = swift_getAssociatedConformanceWitness(v509, v266, v506, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
              v337 = v505;
              (*(v336 + 8))(&qword_18071E0A8, 256, v335, v336);
              (v502)(v337, v266, v334);
              LOBYTE(v337) = (*(*(*(v205 + 32) + 8) + 40))(v283, v298, v266);
              (v518)(v298, v266);
              if ((v337 & 1) == 0)
              {
LABEL_140:
                v338 = (*(v288 + 120))(v266, v288);
                (v518)(v283, v266);
                if (v517 >= 0x40)
                {
                  v339 = 0;
                }

                else
                {
                  v339 = v338 << v517;
                }

                goto LABEL_146;
              }
            }

            else if (v295 > 64)
            {
              v328 = *(v205 + 96);
              v329 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v295, v296, v297);
              v330 = v519;
              v328(&v520, &type metadata for UInt64, v329, v266, v288);
              v301 = (*(*(*(v288 + 32) + 8) + 16))(v330, v283, v266);
              v302 = v330;
LABEL_132:
              (v518)(v302, v266);
              if (v301)
              {
                goto LABEL_222;
              }

              goto LABEL_140;
            }

            (*(v205 + 120))(v266, v205);
            goto LABEL_140;
          }

          v204 = v497;
          (v516)(v513, v511);
          v303 = v498;
          (*(v205 + 224))(v498, v204, v266, v205);
          (v284)(v204, v266);
          v304 = (v284)(v303, v266);
          if (!__OFSUB__(0, v206))
          {
            v520 = -v206;
            v307 = *(v205 + 240);
            v308 = lazy protocol witness table accessor for type Int and conformance Int(v304, v305, v306);
            v309 = v487;
            v310 = v519;
            v307(v519, &v520, &type metadata for Int, v308, v266, v205);
            (v284)(v310, v266);
            v311 = *(v205 + 64);
            v312 = v205;
            if (v311(v266, v205))
            {
              v313 = v509;
              v314 = v506;
              v315 = swift_getAssociatedConformanceWitness(v509, v266, v506, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
              v316 = v505;
              (*(v315 + 8))(&qword_18071E0A8, 256, v314, v315);
              v317 = v519;
              (v502)(v316, v266, v313);
              LOBYTE(v313) = (*(*(*(v312 + 32) + 8) + 32))(v487, v317, v266);
              v309 = v487;
              (v518)(v317, v266);
              if ((v313 & 1) == 0)
              {
                goto LABEL_222;
              }
            }

            v318 = *(v312 + 128);
            if (v318(v266, v312) <= 63)
            {
              goto LABEL_145;
            }

            v520 = -1;
            v319 = v311(v266, v312);
            v320 = v318(v266, v312);
            if (v319)
            {
              if (v320 > 64)
              {
                v323 = *(v312 + 96);
                v324 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v320, v321, v322);
                v325 = v519;
                v323(&v520, &type metadata for UInt64, v324, v266, v312);
                v309 = v487;
                v326 = (*(*(*(v312 + 32) + 8) + 16))(v325, v487, v266);
                v327 = v325;
                goto LABEL_136;
              }

              v340 = v509;
              v341 = v506;
              v342 = swift_getAssociatedConformanceWitness(v509, v266, v506, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
              v343 = v505;
              (*(v342 + 8))(&qword_18071E0A8, 256, v341, v342);
              v344 = v519;
              (v502)(v343, v266, v340);
              v309 = v487;
              LOBYTE(v340) = (*(*(*(v312 + 32) + 8) + 40))(v487, v344, v266);
              (v518)(v344, v266);
              if ((v340 & 1) == 0)
              {
LABEL_145:
                v345 = (*(v312 + 120))(v266, v312);
                v346 = v266;
                v339 = v345;
                (v518)(v309, v346);
LABEL_146:
                v347 = 52;
                v349 = v513;
                v348 = v514;
                v350 = v511;
                v351 = v504;
LABEL_199:
                v423 = (v501 + 168);
                v508 = *(v501 + 21);
                v424 = ((v351 & 0x7FF) << 52) | ((v508)(v349) << 63) | v339 & 0xFFFFFFFFFFFFFLL;
                if (v347 < v348(v349, v350))
                {
                  v502 = v423;
                  v503 = v424;
                  v498 = v339;
                  v425 = v509;
                  v426 = v506;
                  v427 = v507;
                  v428 = swift_getAssociatedConformanceWitness(v509, v507, v506, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                  v429 = v428 + 8;
                  v430 = *(v428 + 8);
                  v431 = v505;
                  v511 = v428;
                  v430(&qword_1806729C0, 512, v426);
                  v432 = v425 + 3;
                  v433 = v425[3];
                  v434 = (v433)(v431, v427, v425);
                  if (!__OFSUB__(0, v517))
                  {
                    v437 = v433;
                    v520 = -v517;
                    v517 = v429;
                    v438 = v518;
                    v514 = v430;
                    v439 = v510;
                    v440 = *(v510 + 256);
                    v441 = lazy protocol witness table accessor for type Int and conformance Int(v434, v435, v436);
                    v512 = v432;
                    v504 = v433;
                    v440(v519, &v520, &type metadata for Int, v441, v427, v439);
                    v442 = (v499 + 8);
                    (v438)(v519, v427);
                    (v516)(v513, v350);
                    v444 = v505;
                    v443 = v506;
                    (v514)(&qword_1806729C0, 512, v506, v511);
                    v445 = v491;
                    (v437)(v444, v427, v509);
                    v446 = v497;
                    v447 = v496;
                    (*(*(v489 + 8) + 40))(v496, v445, v427);
                    (v438)(v445, v427);
                    v448 = v490;
                    (*(v439 + 192))(v519, v446, v427, v439);
                    (v438)(v446, v427);
                    (v438)(v519, v427);
                    (v514)(qword_18071E0B8, 768, v443, v511);
                    (v504)(v444, v427, v509);
                    v499 = *(v439 + 152);
                    (v499)(v447, v446, v427, v439);
                    (v438)(v446, v427);
                    v449 = *(v439 + 32);
                    v450 = v519;
                    v451 = *(v449 + 8);
                    LOBYTE(v437) = (*(v451 + 16))(v448, v519, v427, v451);
                    v516 = v442;
                    (v438)(v450, v427);
                    if (v437)
                    {
                      (v438)(v448, v427);
                      (v438)(v447, v427);
                      result = 0;
                      *v500 = v503;
                      return result;
                    }

                    v452 = v438;
                    v4 = *&v503;
                    if ((v508)(v513, v501))
                    {
                      v453 = 0.0 - v4;
                      v454 = v505;
                      if (0.0 - v4 != INFINITY)
                      {
                        *&v453 += (*&v453 >> 63) | 1;
                      }

                      v5 = -v453;
                    }

                    else
                    {
                      v5 = v4 + 0.0;
                      v454 = v505;
                      if (v4 != INFINITY)
                      {
                        *&v5 += (*&v5 >> 63) | 1;
                      }
                    }

                    v514(qword_18071E0B8, 768);
                    v455 = v497;
                    v456 = v454;
                    v457 = v507;
                    (v504)(v456, v507, v509);
                    (v499)(v447, v455, v457, v510);
                    (v452)(v455, v457);
                    (v452)(v447, v457);
                    v458 = (*(v451 + 40))(v448, v450, v457, v451);
                    (v452)(v450, v457);
                    (v452)(v448, v457);
                    result = 0;
                    if (v458)
                    {
                      *v500 = v5;
                      return result;
                    }

                    goto LABEL_227;
                  }

                  __break(1u);
                  goto LABEL_224;
                }

                *v500 = v424;
                return 1;
              }
            }

            else if (v320 > 64)
            {
              v331 = *(v312 + 96);
              v332 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v320, v321, v322);
              v333 = v519;
              v331(&v520, &type metadata for UInt64, v332, v266, v312);
              v326 = (*(*(*(v312 + 32) + 8) + 16))(v333, v487, v266);
              v327 = v333;
              v309 = v487;
LABEL_136:
              (v518)(v327, v266);
              if (v326)
              {
                goto LABEL_222;
              }

              goto LABEL_145;
            }

            (*(v312 + 120))(v266, v312);
            goto LABEL_145;
          }

LABEL_232:
          __break(1u);
          goto LABEL_233;
        }
      }

      else
      {
        v167 = v137(v70, v64);
        v168 = v514(v70, v64);
        if (v167)
        {
          if (v168 > 64)
          {
            v520 = 0;
            v171 = *(v64 + 96);
            v172 = lazy protocol witness table accessor for type Int and conformance Int(v168, v169, v170);
            v173 = v516;
            v171(&v520, &type metadata for Int, v172, v70, v64);
            v92 = v518;
            v174 = (*(*(*(v64 + 32) + 8) + 16))(v518, v173, v70);
            (*(v517 + 8))(v173, v70);
            v136 = v508;
            if (v174)
            {
              goto LABEL_60;
            }

            goto LABEL_52;
          }

          v183 = v504;
          v184 = v502;
          v185 = swift_getAssociatedConformanceWitness(v504, v70, v502, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
          v186 = v503;
          (*(v185 + 8))(&qword_18071E0A8, 256, v184, v185);
          v187 = v516;
          (v183[3])(v186, v70, v183);
          v92 = v518;
          LOBYTE(v184) = (*(*(*(v64 + 32) + 8) + 16))(v518, v187, v70);
          (*(v517 + 8))(v187, v70);
          v136 = v508;
          if (v184)
          {
            goto LABEL_60;
          }
        }

        else if (v168 >= 64)
        {
          goto LABEL_52;
        }
      }

      if ((*(v64 + 120))(v70, v64) < 0)
      {
        goto LABEL_60;
      }

LABEL_52:
      v188 = v493;
      (*(v517 + 32))(v493, v92, v70);
      if (v137(v70, v64))
      {
        v189 = v504;
        v190 = v502;
        v191 = swift_getAssociatedConformanceWitness(v504, v70, v502, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v192 = v503;
        (*(v191 + 8))(&qword_18071E0A8, 256, v190, v191);
        v193 = v516;
        (v189[3])(v192, v70, v189);
        LOBYTE(v190) = (*(*(*(v64 + 32) + 8) + 32))(v493, v193, v70);
        v194 = v193;
        v188 = v493;
        (*(v517 + 8))(v194, v70);
        if ((v190 & 1) == 0)
        {
          goto LABEL_222;
        }
      }

      v126 = v514;
      if (v514(v70, v64) > 63)
      {
        v520 = -1;
        v195 = v137(v70, v64);
        v196 = (v126)(v70, v64);
        if (v195)
        {
          if (v196 <= 64)
          {
            v199 = v504;
            v200 = v502;
            v201 = swift_getAssociatedConformanceWitness(v504, v70, v502, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v126 = v503;
            (*(v201 + 8))(&qword_18071E0A8, 256, v200, v201);
            v202 = v516;
            (v199[3])(v126, v70, v199);
            v203 = v493;
            LOBYTE(v200) = (*(*(*(v64 + 32) + 8) + 40))(v493, v202, v70);
            (*(v517 + 8))(v202, v70);
            if (v200)
            {
              (*(v64 + 120))(v70, v64);
            }

            v188 = v203;
            goto LABEL_107;
          }
        }

        else if (v196 <= 64)
        {
          v188 = v493;
          (*(v64 + 120))(v70, v64);
          goto LABEL_107;
        }

        v219 = *(v64 + 96);
        v220 = lazy protocol witness table accessor for type UInt and conformance UInt(v196, v197, v198);
        v126 = v516;
        v219(&v520, &type metadata for UInt, v220, v70, v64);
        v188 = v493;
        v221 = (*(*(*(v64 + 32) + 8) + 16))(v126, v493, v70);
        (*(v517 + 8))(v126, v70);
        if (v221)
        {
          goto LABEL_222;
        }
      }

LABEL_107:
      v64 = (*(v64 + 120))(v70, v64);
      (*(v517 + 8))(v188, v70);
      v258 = (v64 + 1023);
      v249 = v64 < -1023;
      if (v64 >= 0xFFFFFFFFFFFFFC01)
      {
        __break(1u);
LABEL_109:
        if (!v249)
        {
          goto LABEL_149;
        }

        goto LABEL_148;
      }

      goto LABEL_113;
    }

    goto LABEL_30;
  }

  v99 = v93;
  if ((*(v64 + 120))(v70, v64) > -1023)
  {
    goto LABEL_21;
  }

LABEL_17:
  v501 = v99;
  v117 = v504;
  v118 = v502;
  v119 = swift_getAssociatedConformanceWitness(v504, v70, v502, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v120 = *(v119 + 8);
  v121 = v503;
  v493 = v119;
  v492 = (v119 + 8);
  v487 = v120;
  (v120)(&qword_1806729C0, 512, v118);
  v122 = v117 + 3;
  v123 = v117[3];
  v124 = v516;
  v125 = v117;
  v126 = v518;
  v485 = v122;
  v484 = v123;
  (v123)(v121, v70, v125);
  v127 = *(v495 + 1);
  v481 = *(v127 + 24);
  v481(v126, v124, v70, v127);
  v128 = *(v517 + 8);
  v498 = v517 + 8;
  v495 = v128;
  v128(v124, v70);
  v129 = v512;
  v130 = (v512)(v70, v64);
  v482 = v127;
  if ((v130 & 1) == 0)
  {
    v159 = v129(v70, v64);
    v160 = v514(v70, v64);
    if (v159)
    {
      if (v160 > 64)
      {
        v520 = -1074;
        v163 = *(v64 + 96);
        v164 = lazy protocol witness table accessor for type Int and conformance Int(v160, v161, v162);
        v165 = v516;
        v163(&v520, &type metadata for Int, v164, v70, v64);
        v166 = (*(*(*(v64 + 32) + 8) + 16))(v86, v165, v70);
        v135 = v495;
        v495(v165, v70);
        v135(v86, v70);
        v126 = v518;
        if (v166)
        {
          goto LABEL_72;
        }

        goto LABEL_75;
      }

      v180 = v503;
      (v487)(&qword_18071E0A8, 256);
      v181 = v516;
      (v484)(v180, v70, v504);
      v182 = (*(*(*(v64 + 32) + 8) + 16))(v86, v181, v70);
      v135 = v495;
      v495(v181, v70);
      if (v182)
      {
        v135(v86, v70);
        v126 = v518;
        goto LABEL_72;
      }

      v179 = (*(v64 + 120))(v70, v64);
      v135(v86, v70);
    }

    else
    {
      if (v160 >= 64)
      {
        v135 = v495;
        v495(v86, v70);
        v126 = v518;
        goto LABEL_75;
      }

      v179 = (*(v64 + 120))(v70, v64);
      v135 = v495;
      v495(v86, v70);
    }

    v126 = v518;
    if (v179 >= -1074)
    {
      goto LABEL_75;
    }

    goto LABEL_72;
  }

  v131 = v514(v70, v64);
  if (v131 < 64)
  {
    v134 = (*(v64 + 120))(v70, v64);
    v135 = v495;
    v495(v86, v70);
    if (v134 > -1075)
    {
      goto LABEL_75;
    }

LABEL_72:
    v135(v126, v70);
    if (((*(v501 + 21))(v513) & 1) == 0)
    {
      result = 0;
      *v500 = 0;
      return result;
    }

    result = 0;
    v158 = 0x8000000000000000;
LABEL_74:
    *v500 = v158;
    return result;
  }

  v520 = -1074;
  v175 = *(v64 + 96);
  v176 = lazy protocol witness table accessor for type Int and conformance Int(v131, v132, v133);
  v177 = v516;
  v175(&v520, &type metadata for Int, v176, v70, v64);
  v126 = v518;
  v178 = (*(*(*(v64 + 32) + 8) + 16))(v86, v177, v70);
  v135 = v495;
  v495(v177, v70);
  v135(v86, v70);
  if (v178)
  {
    goto LABEL_72;
  }

LABEL_75:
  v222 = v503;
  (v487)(&qword_1806729C0, 512);
  v223 = v516;
  (v484)(v222, v70, v504);
  v224 = v488;
  v481(v126, v223, v70, v482);
  v135(v223, v70);
  v225 = v512;
  if ((v512)(v70, v64))
  {
    v226 = v514(v70, v64);
    if (v226 >= 64)
    {
LABEL_80:
      v520 = -1074;
      v230 = *(v64 + 96);
      v231 = lazy protocol witness table accessor for type Int and conformance Int(v226, v227, v228);
      v232 = v516;
      v230(&v520, &type metadata for Int, v231, v70, v64);
      v233 = (*(*(*(v64 + 16) + 8) + 8))(v224, v232, v70);
      v234 = v232;
      v126 = v518;
      v135(v234, v70);
      v135(v224, v70);
      if (v233)
      {
        goto LABEL_85;
      }

      goto LABEL_94;
    }

    goto LABEL_84;
  }

  v229 = v225(v70, v64);
  v226 = v514(v70, v64);
  if ((v229 & 1) == 0)
  {
    if (v226 < 64)
    {
      goto LABEL_84;
    }

LABEL_93:
    v135(v224, v70);
    goto LABEL_94;
  }

  if (v226 > 64)
  {
    goto LABEL_80;
  }

  v241 = v503;
  (v487)(&qword_18071E0A8, 256);
  v242 = v516;
  (v484)(v241, v70, v504);
  v243 = (*(*(*(v64 + 32) + 8) + 32))(v224, v242, v70);
  v135(v242, v70);
  if ((v243 & 1) == 0)
  {
    goto LABEL_93;
  }

LABEL_84:
  v235 = (*(v64 + 120))(v70, v64);
  v135(v224, v70);
  if (v235 == -1074)
  {
LABEL_85:
    v135(v126, v70);
    v236 = v513;
    v237 = (v511[17])(v513);
    v238 = (*(v501 + 21))(v236);
    result = 0;
    v239 = -0.0;
    if ((v238 & 1) == 0)
    {
      v239 = 0.0;
    }

    *&v240 = 1;
    if (v238)
    {
      v240 = COERCE_DOUBLE(0x8000000000000001);
    }

    if (v237)
    {
      v239 = v240;
    }

    goto LABEL_230;
  }

LABEL_94:
  v99 = v494;
  (*(v517 + 16))(v494, v126, v70);
  if (((v512)(v70, v64) & 1) != 0 && v514(v70, v64) >= 65)
  {
    v520 = 0x8000000000000000;
    v244 = v512;
    if ((v512)(v70, v64))
    {
      v245 = v514(v70, v64);
      if (v245 < 64)
      {
LABEL_148:
        (*(v64 + 120))(v70, v64);
        goto LABEL_149;
      }
    }

    else
    {
      v248 = v244(v70, v64);
      v245 = v514(v70, v64);
      v249 = v245 < 64;
      if ((v248 & 1) == 0)
      {
        goto LABEL_109;
      }

      if (v245 <= 64)
      {
        v352 = v503;
        (v487)(&qword_18071E0A8, 256);
        v353 = v516;
        (v484)(v352, v70, v504);
        v354 = (*(*(*(v64 + 32) + 8) + 16))(v99, v353, v70);
        v135(v353, v70);
        if (v354)
        {
          goto LABEL_222;
        }

        goto LABEL_148;
      }
    }

    v250 = *(v64 + 96);
    v251 = lazy protocol witness table accessor for type Int and conformance Int(v245, v246, v247);
    v252 = v516;
    v250(&v520, &type metadata for Int, v251, v70, v64);
    v253 = (*(*(*(v64 + 32) + 8) + 16))(v99, v252, v70);
    v254 = v252;
    v126 = v518;
    v135(v254, v70);
    if (v253)
    {
      goto LABEL_222;
    }
  }

LABEL_149:
  v355 = v99;
  v356 = v514;
  if (v514(v70, v64) <= 64 && (v356(v70, v64) != 64 || ((v512)(v70, v64) & 1) != 0))
  {
    goto LABEL_159;
  }

  v520 = 0x7FFFFFFFFFFFFFFFLL;
  v357 = (v512)(v70, v64);
  v358 = v356(v70, v64);
  if (v357)
  {
    if (v358 > 64)
    {
      goto LABEL_152;
    }

LABEL_158:
    v355 = v494;
    (*(v64 + 120))(v70, v64);
    goto LABEL_159;
  }

  if (v358 < 64)
  {
    goto LABEL_158;
  }

LABEL_152:
  v361 = *(v64 + 96);
  v362 = lazy protocol witness table accessor for type Int and conformance Int(v358, v359, v360);
  v363 = v516;
  v361(&v520, &type metadata for Int, v362, v70, v64);
  v355 = v494;
  v364 = (*(*(*(v64 + 32) + 8) + 16))(v363, v494, v70);
  v365 = v363;
  v126 = v518;
  v495(v365, v70);
  if (v364)
  {
    goto LABEL_222;
  }

LABEL_159:
  v366 = (*(v64 + 120))(v70, v64);
  v367 = v495;
  result = (v495)(v355, v70);
  v205 = v366 + 1074;
  if (!__OFADD__(v366, 1074))
  {
    v367(v126, v70);
    v368 = v511;
    v204 = v513;
    v514 = v511[17];
    v512 = (v511 + 17);
    v369 = v514(v513, v511);
    v206 = v368[15];
    v70 = v519;
    (v206)(v204, v368);
    v370 = v507;
    v371 = (*(v510 + 144))(v507);
    v518 = *(v499 + 8);
    (v518)(v70, v370);
    v259 = v205 - (v369 + v371);
    v372 = (*(v501 + 46))(v204);
    v516 = v206;
    v517 = v259;
    v508 = v205;
    if (v372)
    {
      v139 = v510;
      if (v205 < -64 || v205 > 64)
      {
        goto LABEL_163;
      }

      if (v205 < 0)
      {
        goto LABEL_234;
      }

      if (v205 == 64)
      {
        goto LABEL_163;
      }

      v373 = (1 << v205);
    }

    else
    {
      v373 = 0;
      v139 = v510;
    }

LABEL_172:
    if ((v259 & 0x8000000000000000) == 0)
    {
LABEL_173:
      v504 = v373;
      v394 = v486;
      (v206)(v204, v511);
      v395 = v139[8];
      v396 = v507;
      if ((v395)(v507, v139) & 1) == 0 || (v397 = v509, v398 = v506, v399 = swift_getAssociatedConformanceWitness(v509, v396, v506, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral), v400 = v505, (*(v399 + 8))(&qword_18071E0A8, 256, v398, v399), (v397[3])(v400, v396, v397), LOBYTE(v397) = (*(*(v139[4] + 1) + 32))(v394, v70, v396), (v518)(v70, v396), (v397))
      {
        v401 = v139;
        v402 = v139[16];
        if ((v402)(v396, v401) <= 63)
        {
          goto LABEL_191;
        }

        v520 = -1;
        v403 = (v395)(v396, v401);
        v404 = (v402)(v396, v401);
        if (v403)
        {
          if (v404 <= 64)
          {
            v407 = v509;
            v408 = v506;
            v396 = v507;
            v409 = swift_getAssociatedConformanceWitness(v509, v507, v506, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v410 = v505;
            (*(v409 + 8))(&qword_18071E0A8, 256, v408, v409);
            v411 = v519;
            (v407[3])(v410, v396, v407);
            v401 = v510;
            v394 = v486;
            LOBYTE(v407) = (*(*(*(v510 + 32) + 8) + 40))(v486, v411, v396);
            (v518)(v411, v396);
            if (v407)
            {
              (v401[15])(v396, v401);
            }

            goto LABEL_191;
          }
        }

        else if (v404 <= 64)
        {
          v401 = v510;
          v394 = v486;
          v396 = v507;
          (*(v510 + 120))(v507, v510);
          goto LABEL_191;
        }

        v401 = v510;
        v412 = *(v510 + 96);
        v413 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v404, v405, v406);
        v414 = v519;
        v396 = v507;
        v412(&v520, &type metadata for UInt64, v413, v507, v401);
        v394 = v486;
        v415 = (*(*(v401[4] + 1) + 16))(v414, v486, v396);
        (v518)(v414, v396);
        if (v415)
        {
          goto LABEL_222;
        }

LABEL_191:
        v417 = (v401[15])(v396, v401);
        (v518)(v394, v396);
        if (v517 >= 0x40)
        {
          v418 = 0;
        }

        else
        {
          v418 = v417 << v517;
        }

        goto LABEL_198;
      }

LABEL_222:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    while (1)
    {
      v504 = v373;
      v374 = (v206)(v204, v511);
      if (!__OFSUB__(0, v259))
      {
        break;
      }

LABEL_233:
      __break(1u);
LABEL_234:
      if (v205 != -64)
      {
        v373 = 0;
        goto LABEL_172;
      }

LABEL_163:
      v373 = 0;
      if ((v259 & 0x8000000000000000) == 0)
      {
        goto LABEL_173;
      }
    }

    v520 = -v259;
    v377 = v139[30];
    v378 = lazy protocol witness table accessor for type Int and conformance Int(v374, v375, v376);
    v379 = v483;
    v380 = v507;
    (v377)(v70, &v520, &type metadata for Int, v378, v507, v139);
    (v518)(v70, v380);
    v381 = v139[8];
    if ((v381)(v380, v139))
    {
      v382 = v509;
      v383 = v506;
      v384 = swift_getAssociatedConformanceWitness(v509, v380, v506, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v385 = v505;
      (*(v384 + 8))(&qword_18071E0A8, 256, v383, v384);
      (v382[3])(v385, v380, v382);
      LOBYTE(v382) = (*(*(v139[4] + 1) + 32))(v379, v70, v380);
      (v518)(v70, v380);
      if ((v382 & 1) == 0)
      {
        goto LABEL_222;
      }
    }

    v386 = v139[16];
    if ((v386)(v380, v139) > 63)
    {
      v520 = -1;
      v387 = (v381)(v380, v139);
      v388 = (v386)(v380, v139);
      if (v387)
      {
        v391 = v519;
        if (v388 <= 64)
        {
          v419 = v509;
          v420 = v506;
          v380 = v507;
          v421 = swift_getAssociatedConformanceWitness(v509, v507, v506, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
          v422 = v505;
          (*(v421 + 8))(&qword_18071E0A8, 256, v420, v421);
          (v419[3])(v422, v380, v419);
          v139 = v510;
          LOBYTE(v419) = (*(*(*(v510 + 32) + 8) + 40))(v379, v391, v380);
          (v518)(v391, v380);
          if (v419)
          {
            (v139[15])(v380, v139);
          }

          goto LABEL_197;
        }

        v139 = v510;
        v392 = *(v510 + 96);
        v393 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v388, v389, v390);
      }

      else
      {
        if (v388 <= 64)
        {
          v139 = v510;
          v380 = v507;
          (*(v510 + 120))(v507, v510);
          goto LABEL_197;
        }

        v139 = v510;
        v392 = *(v510 + 96);
        v393 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v388, v389, v390);
        v391 = v519;
      }

      v380 = v507;
      v392(&v520, &type metadata for UInt64, v393, v507, v139);
      v416 = (*(*(v139[4] + 1) + 16))(v391, v379, v380);
      (v518)(v391, v380);
      if (v416)
      {
        goto LABEL_222;
      }
    }

LABEL_197:
    v418 = (v139[15])(v380, v139);
    (v518)(v379, v380);
LABEL_198:
    v349 = v513;
    v351 = 0;
    v339 = v504 | v418;
    v350 = v511;
    v348 = v514;
    v347 = v508;
    goto LABEL_199;
  }

  __break(1u);
LABEL_227:
  if (__clz(__rbit64(*&v5 & 0xFFFFFFFFFFFFFLL)) >= __clz(__rbit64(v498)))
  {
    v239 = v5;
  }

  else
  {
    v239 = v4;
  }

LABEL_230:
  *v500 = v239;
  return result;
}