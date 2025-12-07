uint64_t DiscontiguousSlice.index(after:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v67 = a1;
  v61 = a3;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  swift_getAssociatedTypeWitness(0, v5, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v8 = *(v7 - 8);
  v68 = v7;
  v69 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v64 = &v54 - v10;
  swift_getAssociatedTypeWitness(0, v5, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  v70 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v65 = &v54 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v6, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v62 = AssociatedConformanceWitness;
  v63 = type metadata accessor for Range(0, v12, AssociatedConformanceWitness, v16);
  v17 = *(v63 - 8);
  v19 = MEMORY[0x1EEE9AC00](v63, v18);
  v57 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v54 - v22;
  v56 = *(a2 + 36);
  v24 = v67;
  v25 = *v67;
  v59 = *(v3 + v56);
  v71 = v59;
  v27 = type metadata accessor for RangeSet.Ranges(0, v12, AssociatedConformanceWitness, v26);
  v66 = v25;
  v55 = v27;
  RangeSet.Ranges.subscript.getter(v25, v27, v23, v28);
  v29 = *(v5 + 88);
  v30 = v64;
  v60 = v3;
  v29(v23, v6, v5);
  v32 = type metadata accessor for DiscontiguousSlice.Index(0, v6, v5, v31);
  v33 = *(v32 + 36);
  v54 = v5;
  v34 = v5;
  v35 = v12;
  v58 = v6;
  v36 = v6;
  v37 = v68;
  v38 = swift_getAssociatedConformanceWitness(v34, v36, v68, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
  v39 = v24 + v33;
  v40 = v63;
  v41 = v65;
  (*(v38 + 184))(v39, v37, v38);
  (*(v69 + 8))(v30, v37);
  LOBYTE(v33) = (*(v62 + 16))(v41, &v23[*(v40 + 36)], v12);
  v42 = *(v17 + 8);
  v69 = v17 + 8;
  v42(v23, v40);
  if (v33)
  {
    v43 = v61;
    result = (*(v70 + 32))(v61 + *(v32 + 36), v41, v35);
    *v43 = v66;
  }

  else
  {
    v45 = v32;
    v46 = v70;
    result = (*(v70 + 8))(v41, v35);
    v48 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      __break(1u);
    }

    else
    {
      v49 = *(v59 + 16);
      if (v48 >= v49)
      {
        v53 = v61;
        result = (*(v54 + 72))(v58);
        *v53 = v49;
      }

      else
      {
        v50 = v57;
        v71 = *(v60 + v56);
        RangeSet.Ranges.subscript.getter(v48, v55, v57, v47);
        v51 = *(v45 + 36);
        v52 = v61;
        (*(v46 + 16))(v61 + v51, v50, v35);
        result = (v42)(v50, v40);
        *v52 = v48;
      }
    }
  }

  return result;
}

uint64_t DiscontiguousSlice.subscript.getter@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v38 = a1;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  swift_getAssociatedTypeWitness(0, v6, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v8 = *(v7 - 8);
  v35 = v7;
  v36 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v34 = &v34 - v10;
  swift_getAssociatedTypeWitness(255, v6, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v5, v11, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v15 = type metadata accessor for Range(0, v12, AssociatedConformanceWitness, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v34 - v18;
  v20 = *v38;
  v40 = *(v3 + *(a2 + 36));
  v22 = type metadata accessor for RangeSet.Ranges(0, v12, AssociatedConformanceWitness, v21);
  RangeSet.Ranges.subscript.getter(v20, v22, v19, v23);
  v24 = v34;
  (*(v6 + 88))(v19, v5, v6);
  (*(v16 + 8))(v19, v15);
  v26 = *(type metadata accessor for DiscontiguousSlice.Index(0, v5, v6, v25) + 36);
  v27 = v35;
  v28 = swift_getAssociatedConformanceWitness(v6, v5, v35, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
  v29 = (*(v28 + 80))(v39, v38 + v26, v27, v28);
  v31 = v30;
  swift_getAssociatedTypeWitness(0, *(v6 + 8), v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  (*(*(v32 - 8) + 16))(v37, v31, v32);
  v29(v39, 0);
  return (*(v36 + 8))(v24, v27);
}

uint64_t DiscontiguousSlice.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v102 = a3;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v103 = a2;
  swift_getAssociatedTypeWitness(0, v5, v4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v117 = v6;
  v101 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v116 = &v93 - v8;
  swift_getAssociatedTypeWitness(255, v5, v4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = v9;
  swift_getTupleTypeMetadata2(0, v10, v10, "lower upper ", 0);
  v115 = v11;
  v121 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v108 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v114 = &v93 - v17;
  v18 = *(v10 - 1);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v113 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v111 = &v93 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v105 = &v93 - v27;
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v93 - v29;
  v32 = type metadata accessor for DiscontiguousSlice.Index(0, v4, v5, v31);
  v33 = *(v32 - 8);
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v107 = &v93 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v37);
  v39 = &v93 - v38;
  v104 = v5;
  v118 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v4, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v110 = type metadata accessor for Range(0, v10, AssociatedConformanceWitness, v41);
  v99 = *(v110 - 8);
  v43 = MEMORY[0x1EEE9AC00](v110, v42);
  v100 = &v93 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v45);
  v109 = &v93 - v46;
  v47 = *(v33 + 16);
  v47(v39, a1, v32);
  v48 = *(v32 + 36);
  v120 = v18;
  v49 = v18 + 32;
  v50 = *(v18 + 32);
  v50(v30, &v39[v48], v10);
  v52 = a1 + *(type metadata accessor for Range(0, v32, &protocol witness table for DiscontiguousSlice<A>.Index, v51) + 36);
  v53 = v105;
  v54 = v107;
  v47(v107, v52, v32);
  v55 = &v54[*(v32 + 36)];
  v106 = v49;
  v107 = v50;
  v50(v53, v55, v10);
  v56 = AssociatedConformanceWitness + 24;
  v57 = *(AssociatedConformanceWitness + 24);
  v112 = AssociatedConformanceWitness;
  if ((v57(v30, v53, v10, AssociatedConformanceWitness) & 1) == 0 || (v58 = v114, v98 = v57, v59 = v107, v97 = v56, (v107)(v114, v30, v10), v60 = v115, v59(&v58[*(v115 + 48)], v53, v10), v61 = v121, v62 = *(v121 + 16), v63 = v108, v96 = v121 + 16, v95 = v62, v62(v108, v58, v60), v105 = *(v60 + 48), v64 = v109, v59(v109, v63, v10), v65 = v120 + 8, v66 = *(v120 + 8), v66(&v105[v63], v10), v67 = *(v61 + 32), v121 = v61 + 32, v94 = v67, v67(v63, v58, v60), v59(&v64[*(v110 + 36)], &v63[*(v60 + 48)], v10), v120 = v65, v105 = v66, v66(v63, v10), v68 = v104, v69 = v118, (v104[11])(v64, v118, v104), v70 = v117, v71 = swift_getAssociatedConformanceWitness(v68, v69, v117, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection), v72 = v111, (*(v71 + 64))(v70, v71), v73 = v113, (*(v71 + 72))(v70, v71), (v98(v72, v73, v10, v112) & 1) == 0))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v101 + 8))(v116, v117);
  v74 = v110;
  (*(v99 + 8))(v109, v110);
  v75 = v114;
  v76 = v107;
  (v107)(v114, v111, v10);
  v77 = v115;
  v76(&v75[*(v115 + 48)], v113, v10);
  v78 = v108;
  v95(v108, v75, v77);
  v79 = *(v77 + 48);
  v80 = v100;
  v76(v100, v78, v10);
  v81 = v105;
  (v105)(&v78[v79], v10);
  v94(v78, v75, v77);
  v76((v80 + *(v74 + 36)), &v78[*(v77 + 48)], v10);
  v81(v78, v10);
  v82 = v103;
  v83 = v119;
  v84 = *(v119 + *(v103 + 36));
  v84;
  v85 = v112;
  RangeSet.init(_:)(v80, v10, v112, &v124, v86);
  v87 = v124;
  v122[0] = v124;
  v122[1] = v84;
  v89 = type metadata accessor for RangeSet.Ranges(0, v10, v85, v88);
  RangeSet.Ranges._intersection(_:)(v122, v89, &v123);
  v84;
  v87;
  v90 = v123;
  v91 = v102;
  result = (*(*(v118 - 1) + 2))(v102, v83);
  *(v91 + *(v82 + 36)) = v90;
  return result;
}

void RangeSet.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t a5@<X3>)
{
  v9 = type metadata accessor for Range(0, a2, a3, a5);
  if (((*(*(a3 + 8) + 8))(a1, a1 + *(v9 + 36), a2) & 1) == 0)
  {
    v18 = type metadata accessor for _ContiguousArrayStorage(0, v9, v10, v11);
    v19 = *(v9 - 8);
    v20 = swift_allocObject(v18, (((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72)), *(v19 + 80) | 7);
    v12 = static Array._adoptStorage(_:count:)(v20, 1);
    (*(v19 + 32))(v21, a1, v9);
    v13 = _ArrayBuffer.requestNativeBuffer()(v12, v9);
    if (v13)
    {
LABEL_6:
      v16 = v13;
      v17 = v12;
      goto LABEL_7;
    }

LABEL_5:
    v25 = v12;
    v22 = type metadata accessor for Array(v13, v9, v14, v15);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v22, v23);
    v13 = _copyCollectionToContiguousArray<A>(_:)(&v25, v22, WitnessTable);
    goto LABEL_6;
  }

  (*(*(v9 - 8) + 8))(a1, v9);
  _swift_isClassOrObjCExistentialType(v9, v9);
  v12 = &_swiftEmptyArrayStorage;
  v13 = _ArrayBuffer.requestNativeBuffer()(&_swiftEmptyArrayStorage, v9);
  if (!v13)
  {
    goto LABEL_5;
  }

  v16 = v13;
  v17 = &_swiftEmptyArrayStorage;
LABEL_7:
  v17;
  *a4 = v16;
}

uint64_t RangeSet.intersection(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, uint64_t a4@<X3>)
{
  v7 = *v4;
  v10[0] = *a1;
  v6 = v10[0];
  v10[1] = v7;
  v8 = type metadata accessor for RangeSet.Ranges(0, *(a2 + 16), *(a2 + 24), a4);
  v10[0];
  RangeSet.Ranges._intersection(_:)(v10, v8, &v11);
  v7;
  result = v6;
  *a3 = v11;
  return result;
}

uint64_t DiscontiguousSlice._index(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v36 = a3;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v6, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v7, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v34 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v11);
  v12 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v13);
  v15 = &v33 - v14;
  v41 = *(v3 + *(a2 + 36));
  v16 = v41;
  v38 = v7;
  v39 = v6;
  v35 = v6;
  v40 = a1;
  v17 = a1;
  v19 = type metadata accessor for RangeSet.Ranges(0, v9, AssociatedConformanceWitness, v18);
  v16;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, v19, v20);
  Collection._partitioningIndex(where:)(partial apply for closure #1 in DiscontiguousSlice._index(of:), v37, v19, WitnessTable, &v42);
  v41;
  v22 = v42;
  v42 = v16;
  v23 = v19;
  v24 = v17;
  RangeSet.Ranges.subscript.getter(v22, v23, v15, v25);
  if ((*(AssociatedConformanceWitness + 24))(v15, v17, v9, AssociatedConformanceWitness))
  {
    v26 = v34;
    v27 = (*(AssociatedConformanceWitness + 16))(v24, &v15[*(v34 + 36)], v9, AssociatedConformanceWitness);
    (*(v12 + 8))(v15, v26);
    if (v27)
    {
      v29 = type metadata accessor for DiscontiguousSlice.Index(0, v7, v35, v28);
      v30 = v36;
      (*(*(v9 - 8) + 16))(v36 + *(v29 + 36), v24, v9);
      *v30 = v22;
      return (*(*(v29 - 8) + 56))(v30, 0, 1, v29);
    }
  }

  else
  {
    (*(v12 + 8))(v15, v34);
  }

  v32 = type metadata accessor for DiscontiguousSlice.Index(0, v7, v35, v28);
  return (*(*(v32 - 8) + 56))(v36, 1, 1, v32);
}

uint64_t Range.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  if ((*(v6 + 24))(v3, a1, v7, v6))
  {
    return (*(v6 + 16))(a1, v3 + *(a2 + 36), v7, v6) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t EnumeratedSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  MEMORY[0x1EEE9AC00](a1, v2);
  (*(v7 + 32))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 24);
  (*(v8 + 32))(v5, v8);
  result = type metadata accessor for EnumeratedSequence.Iterator(0, v5, v8, v9);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t EnumeratedSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v41 = a2;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v6 = v5;
  swift_getTupleTypeMetadata2(0, &type metadata for Int, v5, "offset element ", 0);
  v42 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v39 = (&v37 - v10);
  v13 = type metadata accessor for Optional(0, v6, v11, v12);
  v37 = *(v13 - 8);
  v38 = v13;
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v37 - v16;
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v15, v19);
  v21 = &v37 - v20;
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v23 = v22;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, v4, v22, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v25 = *(AssociatedConformanceWitness + 16);
  v26 = swift_checkMetadataState(0, v23);
  v25(v26, AssociatedConformanceWitness);
  if ((*(v18 + 48))(v17, 1, v6) == 1)
  {
    (*(v37 + 8))(v17, v38);
    v27 = 1;
    v28 = v41;
    v29 = v42;
    return (*(v8 + 56))(v28, v27, 1, v29);
  }

  v30 = *(v18 + 32);
  v30(v21, v17, v6);
  v31 = v42;
  v32 = *(v42 + 48);
  v33 = v39;
  v34 = *(v40 + 36);
  v35 = *(v2 + v34);
  *v39 = v35;
  result = (v30)(v33 + v32, v21, v6);
  if (!__OFADD__(v35, 1))
  {
    v29 = v31;
    *(v2 + v34) = v35 + 1;
    v28 = v41;
    (*(v8 + 32))(v41, v33, v31);
    v27 = 0;
    return (*(v8 + 56))(v28, v27, 1, v29);
  }

  __break(1u);
  return result;
}

uint64_t DiscontiguousSlice._customLastIndexOfEquatableElement(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v118 = a1;
  v102 = a3;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  swift_getAssociatedTypeWitness(0, v6, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v98 = &v97 - v11;
  swift_getAssociatedTypeWitness(0, v6, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v117 = v12;
  v130 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v116 = &v97 - v14;
  v128 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v5, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v17 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v16);
  v18 = *(v17 - 1);
  MEMORY[0x1EEE9AC00](v17, v19);
  v115 = &v97 - v20;
  v119 = v8;
  v23 = type metadata accessor for Optional(255, v8, v21, v22);
  v101 = type metadata accessor for Optional(0, v23, v24, v25);
  v26 = *(v101 - 8);
  v28 = MEMORY[0x1EEE9AC00](v101, v27);
  v114 = &v97 - v29;
  v30 = *(v23 - 8);
  v32 = MEMORY[0x1EEE9AC00](v28, v31);
  v110 = &v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v34);
  v109 = &v97 - v35;
  swift_getTupleTypeMetadata2(0, &type metadata for Int, v17, "offset element ", 0);
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v36);
  v121 = &v97 - v38;
  v133 = v39;
  v126 = type metadata accessor for Optional(0, v39, v40, v41);
  v43 = MEMORY[0x1EEE9AC00](v126, v42);
  v132 = &v97 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v45);
  v125 = &v97 - v46;
  v47 = *(v3 + *(a2 + 36));
  v120 = v18 + 16;
  v131 = (v18 + 32);
  v123 = (v48 + 32);
  v124 = (v37 + 56);
  v122 = (v37 + 48);
  v49 = *(v47 + 16);
  v129 = v6;
  v113 = v6 + 11;
  v112 = (v18 + 8);
  ++v130;
  v111 = (v30 + 48);
  v108 = (v30 + 32);
  v99 = v9;
  v107 = (v9 + 48);
  v106 = (v30 + 8);
  v100 = (v26 + 8);
  result = v47;
  v51 = 0;
  v103 = 1;
  v127 = result;
LABEL_2:
  v53 = v132;
  v52 = v133;
  if (v49)
  {
LABEL_3:
    v54 = v49 - 1;
    v55 = *(result + 16);
    if (v49 - 1 >= v55)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v49 != v55)
    {
      v55 = v51;
    }

    v56 = v55 - 1;
    if (!__OFSUB__(v55, 1))
    {
      v57 = *(v52 + 48);
      v58 = v121;
      (*(v18 + 16))(&v121[v57], result + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v54, v17);
      v105 = v56;
      *v53 = v56;
      (*(v18 + 32))(&v53[*(v52 + 48)], &v58[v57], v17);
      v59 = 0;
      v49 = v54;
      goto LABEL_8;
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v105 = v51;
      v59 = 1;
LABEL_8:
      (*v124)(v53, v59, 1, v52);
      v60 = v125;
      (*v123)(v125, v53, v126);
      if ((*v122)(v60, 1, v52) == 1)
      {
        break;
      }

      v104 = v18;
      v61 = v119;
      v97 = *v60;
      v62 = v115;
      (*v131)(v115, &v60[*(v52 + 48)], v17);
      v64 = v128;
      v63 = v129;
      v65 = v23;
      v66 = v116;
      v67 = v3;
      (v129[11])(v62, v128, v129);
      v68 = v62;
      v69 = v17;
      (*v112)(v68, v17);
      v70 = v63;
      v71 = v117;
      v72 = swift_getAssociatedConformanceWitness(v70, v64, v117, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
      v73 = v114;
      (*(v72 + 128))(v118, v71, v72);
      v74 = v66;
      v23 = v65;
      (*v130)(v74, v71);
      if ((*v111)(v73, 1, v65) == 1)
      {
        (*v100)(v73, v101);
        v103 = 0;
        v17 = v69;
        v18 = v104;
        result = v127;
        v51 = v105;
        goto LABEL_2;
      }

      v75 = *v108;
      v76 = v109;
      (*v108)(v109, v73, v65);
      v77 = v110;
      v75(v110, v76, v23);
      if ((*v107)(v77, 1, v61) != 1)
      {
        v127;
        v84 = *(v99 + 32);
        v85 = v98;
        v86 = v119;
        v84(v98, v77, v119);
        v88 = type metadata accessor for DiscontiguousSlice.Index(0, v128, v129, v87);
        v89 = v102;
        v84(v102 + *(v88 + 36), v85, v86);
        *v89 = v97;
        (*(*(v88 - 8) + 56))(v89, 0, 1, v88);
        v92 = type metadata accessor for Optional(0, v88, v90, v91);
        return (*(*(v92 - 8) + 56))(v89, 0, 1, v92);
      }

      (*v106)(v77, v23);
      v3 = v67;
      v17 = v69;
      v18 = v104;
      v53 = v132;
      v52 = v133;
      result = v127;
      v51 = v105;
      if (v49)
      {
        goto LABEL_3;
      }
    }

    v127;
    if (v103)
    {
      v79 = type metadata accessor for DiscontiguousSlice.Index(0, v128, v129, v78);
      v80 = v102;
      (*(*(v79 - 8) + 56))(v102, 1, 1, v79);
      v83 = type metadata accessor for Optional(0, v79, v81, v82);
      return (*(*(v83 - 8) + 56))(v80, 0, 1, v83);
    }

    else
    {
      v93 = type metadata accessor for DiscontiguousSlice.Index(255, v128, v129, v78);
      v96 = type metadata accessor for Optional(0, v93, v94, v95);
      return (*(*(v96 - 8) + 56))(v102, 1, 1, v96);
    }
  }

  return result;
}

uint64_t ReversedCollection.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1, v3);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 32))(v9);
  (*(v7 + 16))(a2, v9, v6);
  v10 = *(a1 + 24);
  v11 = *(v10 + 8);
  v12 = *(v11 + 72);
  type metadata accessor for ReversedCollection.Iterator(0, v6, v10, v13);
  v12(v6, v11);
  return (*(v7 + 8))(v9, v6);
}

uint64_t ReversedCollection.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = a1;
  v26 = a2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(v6 + 8);
  swift_getAssociatedTypeWitness(0, v7, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v25 - v12;
  v14 = *(v4 + 36);
  (*(v7 + 64))(v5, v7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v5, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  LOBYTE(v4) = (*(*(AssociatedConformanceWitness + 8) + 8))(v3 + v14, v13, v9);
  (*(v10 + 8))(v13, v9);
  if (v4)
  {
    swift_getAssociatedTypeWitness(0, *(v7 + 8), v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    return (*(*(v24 - 8) + 56))(v26, 1, 1, v24);
  }

  else
  {
    (*(v6 + 40))(v3 + v14, v5, v6);
    v16 = (*(v7 + 80))(v27, v3 + v14, v5, v7);
    v18 = v17;
    swift_getAssociatedTypeWitness(0, *(v7 + 8), v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    v20 = v19;
    v21 = *(v19 - 8);
    v22 = v26;
    (*(v21 + 16))(v26, v18, v19);
    v16(v27, 0);
    return (*(v21 + 56))(v22, 0, 1, v20);
  }
}

uint64_t DiscontiguousSlice._failEarlyRangeCheck(_:bounds:)(int64_t *a1, int64_t *a2, uint64_t a3)
{
  v110 = a1;
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  v97 = a3;
  swift_getAssociatedTypeWitness(255, v4, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  swift_getTupleTypeMetadata2(0, v7, v7, "lower upper ", 0);
  v105 = v8;
  v103 = *(v8 - 1);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v104 = v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v102 = v91 - v14;
  v113 = *(v7 - 1);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v93 = v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = v91 - v20;
  MEMORY[0x1EEE9AC00](v19, v22);
  v108 = v91 - v23;
  v25 = type metadata accessor for DiscontiguousSlice.Index(0, v5, v4, v24);
  v26 = *(v25 - 8);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v95 = v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v107 = v91 - v32;
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = v91 - v34;
  v99 = v4;
  v109 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v7, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v112 = type metadata accessor for Range(0, v7, AssociatedConformanceWitness, v37);
  v94 = *(v112 - 8);
  v39 = MEMORY[0x1EEE9AC00](v112, v38);
  v92 = v91 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v41);
  v111 = v91 - v42;
  v96 = v26;
  v43 = *(v26 + 16);
  v43(v35, a2, v25);
  v44 = *(v113 + 32);
  v45 = &v35[*(v25 + 36)];
  v46 = v21;
  v47 = v108;
  (v44)(v108, v45, v7);
  v49 = *(type metadata accessor for Range(0, v25, &protocol witness table for DiscontiguousSlice<A>.Index, v48) + 36);
  v106 = a2;
  v101 = v49;
  v50 = a2 + v49;
  v51 = v107;
  v43(v107, v50, v25);
  v98 = v25;
  (v44)(v46, v51 + *(v25 + 36), v7);
  v52 = *(AssociatedConformanceWitness + 24);
  v107 = AssociatedConformanceWitness;
  if ((v52(v47, v46, v7, AssociatedConformanceWitness) & 1) == 0 || (v91[0] = v52, v91[1] = AssociatedConformanceWitness + 24, v53 = v102, (v44)(v102, v47, v7), v54 = v105, (v44)(&v53[v105[12]], v46, v7), v56 = v103, v55 = v104, (*(v103 + 16))(v104, v53, v54), v57 = v54[12], v58 = v111, (v44)(v111, v55, v7), v108 = v44, v60 = v113 + 8, v59 = *(v113 + 8), v59(&v55[v57], v7), (*(v56 + 32))(v55, v53, v54), (v108)(&v58[*(v112 + 36)], &v55[v54[12]], v7), v108 = v7, v105 = v59, v59(v55, v7), v61 = *v106, v62 = *(v106 + v101), v62 < *v106))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v63 = v58;
  v113 = v60;
  v65 = v98;
  v64 = v99;
  v66 = *(v98 + 36);
  v68 = v109;
  v67 = v110;
  v69 = v100;
  (v99[20])(v110 + v66, v63, v109, v99);
  v70 = *v67;
  if (v70 < v61 || v70 >= v62)
  {
    goto LABEL_8;
  }

  v71 = v68;
  v72 = *(v97 + 36);
  v73 = *(*(v69 + v72) + 16);
  v74 = v64[9];
  v75 = v95;
  (v74)(v71, v64);
  *v75 = v73;
  (*(v96 + 8))(v75, v65);
  if (v70 == v73)
  {
    v77 = v93;
    (v74)(v109, v64);
    v78 = v108;
    v79 = (*(*(v107 + 8) + 8))(v110 + v66, v77, v108);
    (v105)(v77, v78);
    if (v79)
    {
      return (*(v94 + 8))(v111, v112);
    }

LABEL_8:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v114 = *(v69 + v72);
  v81 = v66;
  v83 = v107;
  v82 = v108;
  v84 = type metadata accessor for RangeSet.Ranges(0, v108, v107, v76);
  v85 = v92;
  RangeSet.Ranges.subscript.getter(v70, v84, v92, v86);
  v87 = v110;
  if (((v91[0])(v85, v110 + v81, v82, v83) & 1) == 0)
  {
    (*(v94 + 8))(v85, v112);
    goto LABEL_8;
  }

  v88 = v112;
  v89 = (*(v83 + 16))(v87 + v81, v85 + *(v112 + 36), v82, v83);
  v90 = *(v94 + 8);
  v90(v85, v88);
  if ((v89 & 1) == 0)
  {
    goto LABEL_8;
  }

  return (v90)(v111, v88);
}

{
  v110 = a1;
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  v98 = a3;
  swift_getAssociatedTypeWitness(255, v4, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v6, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v113 = AssociatedConformanceWitness;
  v94 = type metadata accessor for Range(0, v7, AssociatedConformanceWitness, v9);
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v10);
  v92 = v90 - v11;
  swift_getTupleTypeMetadata2(0, v7, v7, "lower upper ", 0);
  v106 = *(v12 - 1);
  v107 = v12;
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v105 = v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v104 = v90 - v18;
  v19 = *(v7 - 1);
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v91 = v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v109 = v90 - v25;
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = v90 - v27;
  v100 = v5;
  v101 = v4;
  v30 = type metadata accessor for DiscontiguousSlice.Index(0, v5, v4, v29);
  v31 = *(v30 - 8);
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v96 = v90 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v38 = v90 - v37;
  MEMORY[0x1EEE9AC00](v36, v39);
  v41 = v90 - v40;
  v112 = type metadata accessor for ClosedRange(0, v7, AssociatedConformanceWitness, v42);
  v95 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112, v43);
  v111 = v90 - v44;
  v97 = v31;
  v45 = *(v31 + 16);
  v45(v41, a2, v30);
  v46 = *(v30 + 36);
  v114 = v19;
  v47 = *(v19 + 32);
  v48 = &v41[v46];
  v49 = v109;
  (v47)(v28, v48, v7);
  v51 = *(type metadata accessor for ClosedRange(0, v30, &protocol witness table for DiscontiguousSlice<A>.Index, v50) + 36);
  v108 = a2;
  v103 = v51;
  v45(v38, (a2 + v51), v30);
  v99 = v30;
  (v47)(v49, &v38[*(v30 + 36)], v7);
  v52 = v113 + 24;
  v53 = *(v113 + 24);
  if ((v53(v28, v49, v7) & 1) == 0 || (v90[0] = v53, v90[1] = v52, v54 = v104, (v47)(v104, v28, v7), v55 = v107, (v47)(&v54[v107[12]], v49, v7), v57 = v105, v56 = v106, (*(v106 + 16))(v105, v54, v55), v58 = v55[12], v59 = v111, (v47)(v111, v57, v7), v109 = v47, v61 = v114 + 8, v60 = *(v114 + 8), v60(&v57[v58], v7), (*(v56 + 32))(v57, v54, v55), (v109)(&v59[*(v112 + 36)], &v57[v55[12]], v7), v109 = v7, v107 = v60, v60(v57, v7), v62 = *v108, v63 = *(v108 + v103), v63 < *v108))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v64 = v59;
  v114 = v61;
  v66 = v99;
  v65 = v100;
  v67 = *(v99 + 36);
  v69 = v101;
  v68 = v102;
  v70 = v110;
  (v101[21])(v110 + v67, v64, v100, v101);
  v71 = *v70;
  if (v71 < v62 || v63 < v71)
  {
    goto LABEL_7;
  }

  v108 = *(v98 + 36);
  v72 = *(*(v108 + v68) + 16);
  v73 = v65;
  v74 = v69[9];
  v75 = v96;
  (v74)(v73, v69);
  *v75 = v72;
  (*(v97 + 8))(v75, v66);
  if (v71 != v72)
  {
    v115 = *(v108 + v68);
    v80 = v67;
    v81 = v109;
    v82 = v113;
    v83 = type metadata accessor for RangeSet.Ranges(0, v109, v113, v76);
    v84 = v92;
    RangeSet.Ranges.subscript.getter(v71, v83, v92, v85);
    v86 = v110;
    if ((v90[0])(v84, v110 + v80, v81, v82))
    {
      v87 = v94;
      v88 = (*(v82 + 16))(v86 + v80, v84 + *(v94 + 36), v81, v82);
      (*(v93 + 8))(v84, v87);
      if (v88)
      {
        return (*(v95 + 8))(v111, v112);
      }
    }

    else
    {
      (*(v93 + 8))(v84, v94);
    }

LABEL_7:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v77 = v91;
  (v74)(v73, v69);
  v78 = v109;
  v79 = (*(*(v113 + 8) + 8))(v110 + v67, v77, v109);
  (v107)(v77, v78);
  if ((v79 & 1) == 0)
  {
    goto LABEL_7;
  }

  return (*(v95 + 8))(v111, v112);
}

{
  v186 = a2;
  v170 = a1;
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  v159 = a3;
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v6 = v5;
  swift_getTupleTypeMetadata2(0, v6, v6, "lower upper ", 0);
  v185 = v7;
  v189 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v184 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v183 = &v156 - v13;
  v14 = *(v6 - 1);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v158 = &v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v173 = &v156 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v172 = &v156 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v191 = &v156 - v26;
  MEMORY[0x1EEE9AC00](v25, v27);
  v180 = &v156 - v28;
  v30 = type metadata accessor for DiscontiguousSlice.Index(0, v4, v3, v29);
  v31 = *(v30 - 8);
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v161 = &v156 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v171 = &v156 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v169 = &v156 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v182 = &v156 - v43;
  MEMORY[0x1EEE9AC00](v42, v44);
  v46 = &v156 - v45;
  v174 = v3;
  v177 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, v4, v6, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v188 = type metadata accessor for Range(0, v6, AssociatedConformanceWitness, v48);
  v160 = *(v188 - 8);
  v50 = MEMORY[0x1EEE9AC00](v188, v49);
  v156 = &v156 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1EEE9AC00](v50, v52);
  v157 = &v156 - v54;
  v56 = MEMORY[0x1EEE9AC00](v53, v55);
  v181 = &v156 - v57;
  MEMORY[0x1EEE9AC00](v56, v58);
  v187 = &v156 - v59;
  v176 = v31;
  v60 = *(v31 + 16);
  v61 = v186;
  v60(v46, v186, v30);
  v62 = *(v30 + 36);
  v190 = v14;
  v63 = v14 + 32;
  v64 = *(v14 + 32);
  v65 = &v46[v62];
  v66 = v180;
  v67 = v6;
  v64(v180, v65, v6);
  v166 = type metadata accessor for Range(0, v30, &protocol witness table for DiscontiguousSlice<A>.Index, v68);
  v165 = *(v166 + 36);
  v69 = v61 + v165;
  v70 = v191;
  v71 = v182;
  v168 = v31 + 16;
  v167 = v60;
  v60(v182, v69, v30);
  v72 = v67;
  v64(v70, (v71 + *(v30 + 36)), v67);
  v73 = (AssociatedConformanceWitness + 24);
  v74 = *(AssociatedConformanceWitness + 24);
  v182 = AssociatedConformanceWitness;
  if ((v74(v66, v70, v72, AssociatedConformanceWitness) & 1) == 0 || (v75 = v183, v64(v183, v66, v72), v180 = v73, v76 = v185, v64(&v75[*(v185 + 48)], v70, v72), v179 = v74, v77 = v189, v78 = *(v189 + 16), v79 = v184, v164 = v189 + 16, v163 = v78, v78(v184, v75, v76), v178 = *(v76 + 48), v80 = v187, v64(v187, v79, v72), v191 = v63, v81 = v64, v82 = v30, v83 = *(v190 + 8), v190 += 8, v83(v178 + v79, v72), v84 = *(v77 + 32), v189 = v77 + 32, v162 = v84, v84(v79, v75, v76), v81(&v80[*(v188 + 36)], &v79[*(v76 + 48)], v72), v178 = v83, v83(v79, v72), v85 = v169, v86 = v170, v87 = v167, v167(v169, v170, v82), v88 = v172, v81(v172, &v85[*(v82 + 9)], v72), v169 = *(v166 + 36), v89 = v171, v87(v171, &v169[v86], v82), v90 = v173, v81(v173, &v89[*(v82 + 9)], v72), (v179(v88, v90, v72, v182) & 1) == 0) || (v171 = v82, v91 = v183, v81(v183, v88, v72), v92 = v185, v81(&v91[*(v185 + 48)], v90, v72), v93 = v184, v163(v184, v91, v92), v94 = *(v92 + 48), v95 = v181, v81(v181, v93, v72), v96 = &v93[v94], v97 = v178, v178(v96, v72), v162(v93, v91, v92), v98 = *(v92 + 48), v189 = *(v188 + 36), v81(&v95[v189], &v93[v98], v72), v97(v93, v72), v99 = *v186, v100 = *(v186 + v165), v100 < *v186) || (v101 = *v86, v102 = *&v169[v86], v102 < v101))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v103 = v95;
  v105 = v174;
  v104 = v175;
  v106 = v177;
  (v174[22])(v103, v187, v177, v174);
  if (v101 < v99 || v101 >= v100 || v100 < v102)
  {
    goto LABEL_10;
  }

  v191 = v72;
  v185 = v102;
  v107 = *(v159 + 36);
  v108 = v104;
  v186 = *&v107[v104];
  v109 = v186[2];
  v110 = v105[9];
  v111 = v171;
  v112 = v161;
  (v110)(v106, v105);
  *v112 = v109;
  v113 = *(v176 + 8);
  v176 += 8;
  v184 = v113;
  (v113)(v112, v111);
  v183 = v107;
  if (v101 == v109)
  {
    v115 = v158;
    v116 = v177;
    (v110)(v177, v105);
    v117 = v191;
    v118 = (*(*(v182 + 8) + 8))(v181, v115, v191);
    v119 = v117;
    v120 = v116;
    v178(v115, v119);
    v121 = v160;
    if ((v118 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v186 = *&v107[v104];
    v192 = v186;
    v122 = v191;
    v123 = v182;
    v124 = type metadata accessor for RangeSet.Ranges(0, v191, v182, v114);
    v125 = v157;
    RangeSet.Ranges.subscript.getter(v101, v124, v157, v126);
    v127 = v181;
    v128 = v179(v125, v181, v122, v123);
    v121 = v160;
    if ((v128 & 1) == 0)
    {
      (*(v160 + 8))(v125, v188);
      goto LABEL_10;
    }

    v129 = v188;
    v130 = (*(v123 + 16))(v127, v125 + *(v188 + 36), v122, v123);
    (*(v121 + 8))(v125, v129);
    v105 = v174;
    v108 = v175;
    v120 = v177;
    if ((v130 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v131 = v186[2];
  v132 = v171;
  v133 = v161;
  (v110)(v120, v105);
  *v133 = v131;
  (v184)(v133, v132);
  v135 = v185;
  if (v185 == v131)
  {
    v136 = v158;
    (v110)(v120, v105);
    v137 = v181;
    v138 = v191;
    v139 = (*(*(v182 + 8) + 8))(&v181[v189], v136, v191);
    v178(v136, v138);
    v141 = v187;
    v140 = v188;
    if (v139)
    {
      v142 = *(v121 + 8);
      v142(v137, v188);
      return (v142)(v141, v140);
    }

LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v192 = *&v183[v108];
  v144 = v191;
  v145 = v182;
  v146 = type metadata accessor for RangeSet.Ranges(0, v191, v182, v134);
  v147 = v156;
  RangeSet.Ranges.subscript.getter(v135, v146, v156, v148);
  v149 = v181;
  v150 = v189;
  v151 = v179(v147, &v181[v189], v144, v145);
  v153 = v187;
  v152 = v188;
  if ((v151 & 1) == 0)
  {
    (*(v121 + 8))(v147, v188);
    goto LABEL_10;
  }

  v154 = (*(v145 + 16))(&v149[v150], v147 + *(v188 + 36), v144, v145);
  v155 = *(v121 + 8);
  v155(v147, v152);
  if ((v154 & 1) == 0)
  {
    goto LABEL_10;
  }

  v155(v149, v152);
  return (v155)(v153, v152);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance DiscontiguousSlice<A>(void *a1, unint64_t *a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc(0x28, 0xD183uLL);
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = DiscontiguousSlice.subscript.read(v6, a2, a3);
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

void (*DiscontiguousSlice.subscript.read(void *a1, unint64_t *a2, uint64_t a3))(uint64_t a1)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x48, 0x9B0DuLL);
  }

  else
  {
    v5 = malloc(0x48uLL);
  }

  v6 = v5;
  *a1 = v5;
  v8 = *(a3 + 16);
  v7 = *(a3 + 24);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v38 = *(v9 - 8);
  v39 = v9;
  v10 = *(v38 + 64);
  if (swift_coroFrameAlloc)
  {
    v11 = swift_coroFrameAlloc(v10, 0x9B0DuLL);
  }

  else
  {
    v11 = malloc(v10);
  }

  v37 = v11;
  v6[4] = v11;
  swift_getAssociatedTypeWitness(255, v7, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v8, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v15 = type metadata accessor for Range(0, v13, AssociatedConformanceWitness, v14);
  v35 = *(v15 - 8);
  v36 = v15;
  v16 = *(v35 + 64);
  if (swift_coroFrameAlloc)
  {
    v17 = swift_coroFrameAlloc(v16, 0x9B0DuLL);
  }

  else
  {
    v17 = malloc(v16);
  }

  v18 = v17;
  v6[5] = v17;
  swift_getAssociatedTypeWitness(0, *(v7 + 8), v8, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v6[6] = v19;
  v20 = *(v19 - 8);
  v21 = v20;
  v6[7] = v20;
  v22 = *(v20 + 64);
  if (swift_coroFrameAlloc)
  {
    v23 = swift_coroFrameAlloc(v22, 0x9B0DuLL);
  }

  else
  {
    v23 = malloc(v22);
  }

  v25 = v23;
  v6[8] = v23;
  v26 = *a2;
  v27 = type metadata accessor for RangeSet.Ranges(0, v13, AssociatedConformanceWitness, v24);
  RangeSet.Ranges.subscript.getter(v26, v27, v18, v28);
  (*(v7 + 88))(v18, v8, v7);
  (*(v35 + 8))(v18, v36);
  v30 = *(type metadata accessor for DiscontiguousSlice.Index(0, v8, v7, v29) + 36);
  v31 = swift_getAssociatedConformanceWitness(v7, v8, v39, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
  v32 = (*(v31 + 80))(v6, a2 + v30, v39, v31);
  (*(v21 + 16))(v25);
  v32(v6, 0);
  (*(v38 + 8))(v37, v39);
  return DiscontiguousSlice.subscript.read;
}

void DiscontiguousSlice.subscript.read(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 32);
  (*(*(*a1 + 56) + 8))(v2, *(*a1 + 48));
  free(v2);
  free(v3);
  free(v4);

  free(v1);
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance DiscontiguousSlice<A>(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DiscontiguousSlice.Index(0, *(a2 + 16), *(a2 + 24), a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v12 - v9);
  (*(v7 + 32))(&v12 - v9, a1, v6);
  DiscontiguousSlice.index(after:)(v10, a2, a1);
  return (*(v7 + 8))(v10, v6);
}

uint64_t DiscontiguousSlice<>.index(before:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, swift *a3@<X2>, unint64_t *a4@<X8>)
{
  v82 = a1;
  v74 = a4;
  v70 = a3;
  v6 = *(a3 + 1);
  v7 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, v6, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v72 = *(v8 - 8);
  v73 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v71 = &v63 - v10;
  swift_getAssociatedTypeWitness(255, v6, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v7, v11, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v78 = type metadata accessor for Range(0, v12, AssociatedConformanceWitness, v14);
  v75 = *(v78 - 8);
  v16 = MEMORY[0x1EEE9AC00](v78, v15);
  v77 = &v63 - v17;
  v79 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v63 - v19;
  v22 = type metadata accessor for DiscontiguousSlice.Index(0, v7, v6, v21);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v63 - v25;
  v76 = a2;
  v81 = v4;
  DiscontiguousSlice.startIndex.getter(a2, &v63 - v25, v27);
  v28 = *(v22 + 36);
  v29 = *(AssociatedConformanceWitness + 16);
  v80 = AssociatedConformanceWitness;
  v30 = v29(&v26[v28], v82 + v28, v12, AssociatedConformanceWitness);
  (*(v23 + 8))(v26, v22);
  if ((v30 & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v67 = v22;
  v68 = v6;
  v31 = *(v22 + 36);
  v32 = *(v6 + 72);
  v69 = v7;
  v32(v7, v6);
  v33 = *(v80 + 8);
  v34 = *(v33 + 8);
  v35 = v34(v82 + v31, v20, v12, v33);
  v36 = *(v79 + 8);
  result = v36(v20, v12);
  if ((v35 & 1) == 0)
  {
    v64 = *(v76 + 36);
    v39 = *v82;
    v83 = *(v81 + v64);
    v40 = type metadata accessor for RangeSet.Ranges(0, v12, v80, v38);
    v65 = v39;
    v66 = v31;
    v41 = v77;
    v63 = v40;
    RangeSet.Ranges.subscript.getter(v39, v40, v77, v42);
    (*(v79 + 16))(v20, v41, v12);
    v43 = v41;
    v44 = v66;
    v79 = *(v75 + 8);
    (v79)(v43, v78);
    v45 = v34(v82 + v44, v20, v12, v33);
    result = v36(v20, v12);
    if ((v45 & 1) == 0)
    {
      v46 = v65;
      v83 = *(v81 + v64);
      v57 = v77;
      RangeSet.Ranges.subscript.getter(v65, v63, v77, v38);
      v58 = v71;
      v59 = v69;
      (*(v68 + 88))(v57, v69);
      (v79)(v57, v78);
      v60 = v59;
      v61 = v73;
      v62 = swift_getAssociatedConformanceWitness(v70, v60, v73, &protocol requirements base descriptor for BidirectionalCollection, associated conformance descriptor for BidirectionalCollection.Collection.SubSequence: BidirectionalCollection);
      v56 = v74;
      (*(v62 + 32))(v82 + v44, v61, v62);
      result = (*(v72 + 8))(v58, v61);
      goto LABEL_7;
    }
  }

  v46 = *v82 - 1;
  if (!__OFSUB__(*v82, 1))
  {
    v83 = *(v81 + *(v76 + 36));
    v47 = type metadata accessor for RangeSet.Ranges(0, v12, v80, v38);
    v48 = v77;
    RangeSet.Ranges.subscript.getter(v46, v47, v77, v49);
    v50 = v69;
    v51 = v71;
    (*(v68 + 88))(v48, v69);
    v52 = v78;
    v53 = *(v78 + 36);
    v54 = v73;
    v55 = swift_getAssociatedConformanceWitness(v70, v50, v73, &protocol requirements base descriptor for BidirectionalCollection, associated conformance descriptor for BidirectionalCollection.Collection.SubSequence: BidirectionalCollection);
    v56 = v74;
    (*(v55 + 32))(v48 + v53, v54, v55);
    (*(v72 + 8))(v51, v54);
    result = (*(v75 + 8))(v48, v52);
LABEL_7:
    *v56 = v46;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance <> DiscontiguousSlice<A>(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = type metadata accessor for DiscontiguousSlice.Index(0, *(a2 + 16), v6[1], a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = (&v13 - v10);
  (*(v8 + 32))(&v13 - v10, a1, v7);
  DiscontiguousSlice<>.index(before:)(v11, a2, v6, a1);
  return (*(v8 + 8))(v11, v7);
}

uint64_t DiscontiguousSlice<>.subscript.getter@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a4;
  v39 = a1;
  v6 = *(a3 + 8);
  v7 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, v6, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v9 = *(v8 - 8);
  v36 = v8;
  v37 = v9;
  MEMORY[0x1EEE9AC00](v8, v10);
  v35 = &v35 - v11;
  swift_getAssociatedTypeWitness(255, v6, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v7, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v16 = type metadata accessor for Range(0, v13, AssociatedConformanceWitness, v15);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v35 - v19;
  v21 = *v39;
  v41 = *(v4 + *(a2 + 36));
  v23 = type metadata accessor for RangeSet.Ranges(0, v13, AssociatedConformanceWitness, v22);
  RangeSet.Ranges.subscript.getter(v21, v23, v20, v24);
  v25 = v35;
  (*(v6 + 88))(v20, v7, v6);
  (*(v17 + 8))(v20, v16);
  v27 = *(type metadata accessor for DiscontiguousSlice.Index(0, v7, v6, v26) + 36);
  v28 = v36;
  v29 = swift_getAssociatedConformanceWitness(v6, v7, v36, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
  v30 = (*(v29 + 80))(v40, v39 + v27, v28, v29);
  v32 = v31;
  swift_getAssociatedTypeWitness(0, *(v6 + 8), v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  (*(*(v33 - 8) + 16))(v38, v32, v33);
  v30(v40, 0);
  return (*(v37 + 8))(v25, v28);
}

uint64_t key path setter for DiscontiguousSlice<>.subscript(_:) : <A>DiscontiguousSlice<A>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v8 = *(v6 + 8);
  swift_getAssociatedTypeWitness(0, *(v8 + 8), v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v24 - v13;
  v16 = type metadata accessor for DiscontiguousSlice.Index(0, v7, v8, v15);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v24 - v18);
  (*(v20 + 16))(&v24 - v18, a3);
  (*(v11 + 16))(v14, a1, v10);
  v22 = type metadata accessor for DiscontiguousSlice(0, v7, v8, v21);
  return DiscontiguousSlice<>.subscript.setter(v14, v19, v22, v6);
}

uint64_t DiscontiguousSlice<>.subscript.setter(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v40 = a1;
  v7 = *(a4 + 8);
  v8 = *(a3 + 16);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v36 = &v36 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v8, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v16 = type metadata accessor for Range(0, v10, AssociatedConformanceWitness, v15);
  v38 = *(v16 - 8);
  v39 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v36 - v18;
  v20 = *(v4 + *(a3 + 36));
  v21 = *a2;
  v42 = v20;
  v23 = type metadata accessor for RangeSet.Ranges(0, v10, AssociatedConformanceWitness, v22);
  RangeSet.Ranges.subscript.getter(v21, v23, v19, v24);
  v26 = type metadata accessor for DiscontiguousSlice.Index(0, v8, v7, v25);
  v27 = v36;
  (*(v11 + 32))(v36, a2 + *(v26 + 36), v10);
  v28 = v37;
  v29 = (*(v37 + 48))(v41, v19, v8, v37);
  swift_getAssociatedTypeWitness(255, v7, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v31 = v30;
  v32 = swift_getAssociatedConformanceWitness(v28, v8, v30, &protocol requirements base descriptor for MutableCollection, associated conformance descriptor for MutableCollection.Collection.SubSequence: MutableCollection);
  v33 = *(v32 + 24);
  v34 = swift_checkMetadataState(0, v31);
  v33(v40, v27, v34, v32);
  v29(v41, 0);
  return (*(v38 + 8))(v19, v39);
}

void (*DiscontiguousSlice<>.subscript.modify(void *a1, unint64_t *a2, uint64_t a3, uint64_t a4))(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x120, 0x4D96uLL);
  }

  else
  {
    v7 = malloc(0x120uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[12] = a4;
  v7[13] = v53;
  v9 = *(a4 + 8);
  v10 = *(a3 + 16);
  v7[14] = v10;
  swift_getAssociatedTypeWitness(0, v9, v10, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  v8[15] = v11;
  v13 = *(v11 - 8);
  v8[16] = v13;
  v14 = *(v13 + 64);
  if (swift_coroFrameAlloc)
  {
    v15 = swift_coroFrameAlloc(v14, 0x4D96uLL);
  }

  else
  {
    v15 = malloc(v14);
  }

  v8[17] = v15;
  swift_getAssociatedTypeWitness(0, v9, v10, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v8[18] = v16;
  v50 = *(v16 - 8);
  v51 = v16;
  v17 = *(v50 + 64);
  if (swift_coroFrameAlloc)
  {
    v18 = swift_coroFrameAlloc(v17, 0x4D96uLL);
  }

  else
  {
    v18 = malloc(v17);
  }

  v49 = v18;
  v8[19] = v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v9, v10, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v20 = type metadata accessor for Range(0, v12, AssociatedConformanceWitness, v19);
  v8[20] = v20;
  v47 = *(v20 - 8);
  v48 = v20;
  v21 = *(v47 + 64);
  if (swift_coroFrameAlloc)
  {
    v22 = swift_coroFrameAlloc(v21, 0x4D96uLL);
  }

  else
  {
    v22 = malloc(v21);
  }

  v23 = v22;
  v8[21] = v22;
  swift_getAssociatedTypeWitness(0, *(v9 + 8), v10, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8[22] = v24;
  v25 = *(v24 - 8);
  v26 = v25;
  v8[23] = v25;
  v27 = *(v25 + 64);
  if (swift_coroFrameAlloc)
  {
    v8[24] = swift_coroFrameAlloc(v27, 0x4D96uLL);
    v28 = swift_coroFrameAlloc(v27, 0x4D96uLL);
  }

  else
  {
    v8[24] = malloc(v27);
    v28 = malloc(v27);
  }

  v45 = v28;
  v8[25] = v28;
  v30 = type metadata accessor for DiscontiguousSlice.Index(0, v10, v9, v29);
  v8[26] = v30;
  v31 = *(v30 - 8);
  v32 = v31;
  v8[27] = v31;
  v33 = *(v31 + 64);
  if (swift_coroFrameAlloc)
  {
    v8[28] = swift_coroFrameAlloc(v33, 0x4D96uLL);
    v34 = swift_coroFrameAlloc(v33, 0x4D96uLL);
  }

  else
  {
    v8[28] = malloc(v33);
    v34 = malloc(v33);
  }

  v8[29] = v34;
  (*(v32 + 16))();
  *(v8 + 70) = *(a3 + 36);
  v35 = *a2;
  v37 = type metadata accessor for RangeSet.Ranges(0, v12, AssociatedConformanceWitness, v36);
  v8[30] = v37;
  RangeSet.Ranges.subscript.getter(v35, v37, v23, v38);
  (*(v9 + 88))(v23, v10, v9);
  v39 = *(v47 + 8);
  v8[31] = v39;
  v8[32] = (v47 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v39(v23, v48);
  v40 = *(v30 + 36);
  v41 = swift_getAssociatedConformanceWitness(v9, v10, v51, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
  v42 = (*(v41 + 80))(v8, a2 + v40, v51, v41);
  v43 = *(v26 + 16);
  v8[33] = v43;
  v8[34] = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v43(v45);
  v42(v8, 0);
  (*(v50 + 8))(v49, v51);
  return DiscontiguousSlice<>.subscript.modify;
}

void DiscontiguousSlice<>.subscript.modify(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v41 = *(*a1 + 248);
  if (a2)
  {
    v5 = *(v4 + 232);
    v46 = *(v4 + 240);
    v34 = v5;
    v7 = *(v4 + 216);
    v6 = *(v4 + 224);
    v8 = *(v4 + 208);
    v42 = *(v4 + 192);
    v44 = *(v4 + 200);
    v9 = *(v4 + 168);
    v36 = *(v4 + 176);
    v37 = *(v4 + 160);
    v39 = *(v4 + 184);
    v48 = *(v4 + 152);
    v33 = *(v4 + 144);
    v11 = *(v4 + 128);
    v10 = *(v4 + 136);
    v31 = *(v4 + 120);
    v32 = *(v4 + 112);
    v12 = *(v4 + 96);
    (*(v4 + 264))();
    (*(v7 + 32))(v6, v5, v8);
    RangeSet.Ranges.subscript.getter(*v6, v46, v9, v13);
    v47 = v6;
    (*(v11 + 32))(v10, v6 + *(v8 + 36), v31);
    v14 = v10;
    v15 = (*(v12 + 6))(v4 + 32, v9, v32, v12);
    v16 = v12;
    v18 = v42;
    v17 = v44;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v16, v32, v33, &protocol requirements base descriptor for MutableCollection, associated conformance descriptor for MutableCollection.Collection.SubSequence: MutableCollection);
    (*(AssociatedConformanceWitness + 24))(v42, v10, v33, AssociatedConformanceWitness);
    v15(v4 + 32, 0);
    v41(v9, v37);
    (*(v39 + 8))(v44, v36);
    v20 = v34;
  }

  else
  {
    v21 = *(v4 + 232);
    v35 = *(v4 + 208);
    v45 = *(v4 + 200);
    v47 = *(v4 + 224);
    v43 = *(v4 + 192);
    v9 = *(v4 + 168);
    v40 = *(v4 + 160);
    v48 = *(v4 + 152);
    v38 = *(v4 + 144);
    v22 = *(v4 + 128);
    v23 = *(v4 + 136);
    v24 = *(v4 + 112);
    v25 = *(v4 + 120);
    v26 = *(v4 + 96);
    RangeSet.Ranges.subscript.getter(*v21, *(v4 + 240), v9, a4);
    v27 = v25;
    v18 = v43;
    (*(v22 + 32))(v23, v21 + *(v35 + 36), v27);
    v14 = v23;
    v28 = (*(v26 + 6))(v4 + 64, v9, v24, v26);
    v29 = v24;
    v17 = v45;
    v30 = swift_getAssociatedConformanceWitness(v26, v29, v38, &protocol requirements base descriptor for MutableCollection, associated conformance descriptor for MutableCollection.Collection.SubSequence: MutableCollection);
    (*(v30 + 24))(v45, v23, v38, v30);
    v28(v4 + 64, 0);
    v41(v9, v40);
    v20 = v21;
  }

  free(v20);
  free(v47);
  free(v17);
  free(v18);
  free(v9);
  free(v48);
  free(v14);

  free(v4);
}

uint64_t Collection.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  (*(*(a2 - 8) + 16))(a4, v4, a2);
  *(a4 + *(type metadata accessor for DiscontiguousSlice(0, a2, a3, v9) + 36)) = v8;

  return v8;
}

uint64_t Collection.removingSubranges(_:)@<X0>(Class *a1@<X1>, int **a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  swift_getAssociatedTypeWitness(255, a2, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a2, a1, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v12 = type metadata accessor for RangeSet(0, v9, AssociatedConformanceWitness, v11);
  RangeSet._inverted<A>(within:)(v12, a1, a2, &v16);
  v13 = v16;
  (*(*(a1 - 1) + 2))(a3, v4, a1);
  result = type metadata accessor for DiscontiguousSlice(0, a1, a2, v14);
  *(a3 + *(result + 36)) = v13;
  return result;
}

uint64_t RangeSet._inverted<A>(within:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v53 = a4;
  v8 = *(a1 + 16);
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v49 = v9;
  v52 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v46 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v47 = &v42 - v15;
  v51 = *(v8 - 1);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v42 - v21;
  v23 = *(a1 + 24);
  v50 = type metadata accessor for Range(0, v8, v23, v24);
  v25 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v26);
  v45 = &v42 - v27;
  v54 = *v4;
  v28 = *(a3 + 64);
  v54;
  v28(a2, a3);
  (*(a3 + 72))(a2, a3);
  v29 = *(v23 + 24);
  v48 = v23;
  if ((v29(v22, v19, v8, v23) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v30 = v51;
  v31 = *(v51 + 32);
  v32 = v47;
  v31(v47, v22, v8);
  v44 = v25;
  v33 = v49;
  v31(&v32[*(v49 + 48)], v19, v8);
  v34 = v52;
  v35 = v46;
  (*(v52 + 16))(v46, v32, v33);
  v43 = *(v33 + 48);
  v36 = v45;
  v31(v45, v35, v8);
  v37 = *(v30 + 8);
  v37(&v35[v43], v8);
  (*(v34 + 32))(v35, v32, v33);
  v38 = v50;
  v31((v36 + *(v50 + 36)), &v35[*(v33 + 48)], v8);
  v37(v35, v8);
  v40 = type metadata accessor for RangeSet.Ranges(0, v8, v48, v39);
  RangeSet.Ranges._gaps(boundedBy:)(v36, v40, &v55);
  (*(v44 + 8))(v36, v38);
  result = v54;
  *v53 = v55;
  return result;
}

uint64_t LazyDropWhileSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v34 = a2;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_getAssociatedTypeWitness(255, v4, v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v7 = v6;
  v10 = type metadata accessor for Optional(0, v6, v8, v9);
  v31 = *(v10 - 8);
  v32 = v10;
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v30 - v13;
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v30 - v16;
  v33 = v2;
  v18 = *v2;
  v41 = a1;
  v19 = *(a1 + 36);
  swift_getAssociatedTypeWitness(255, v4, v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v21 = v20;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v20, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v23 = *(AssociatedConformanceWitness + 16);
  v40 = v21;
  v24 = swift_checkMetadataState(0, v21);
  if (v18 == 1)
  {
    return v23(v24, AssociatedConformanceWitness);
  }

  v37 = AssociatedConformanceWitness;
  v38 = v19;
  v26 = v33;
  v23(v24, AssociatedConformanceWitness);
  v36 = *(v35 + 48);
  if (v36(v14, 1, v7) == 1)
  {
LABEL_7:
    (*(v31 + 8))(v14, v32);
    return (*(v35 + 56))(v34, 1, 1, v7);
  }

  else
  {
    v39 = *(v35 + 32);
    v27 = (v35 + 8);
    while (1)
    {
      v39(v17, v14, v7);
      if (((*&v26[*(v41 + 40)])(v17) & 1) == 0)
      {
        break;
      }

      (*v27)(v17, v7);
      v28 = swift_checkMetadataState(0, v40);
      v23(v28, v37);
      if (v36(v14, 1, v7) == 1)
      {
        goto LABEL_7;
      }
    }

    *v26 = 1;
    v29 = v34;
    v39(v34, v17, v7);
    return (*(v35 + 56))(v29, 0, 1, v7);
  }
}

uint64_t LazyDropWhileSequence<>.startIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
    if ((v25 & 1) == 0)
    {
      break;
    }

    (*(a2 + 192))(v18, v19, a2);
  }

  return result;
}

uint64_t LazyDropWhileSequence<>.index(after:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, a3, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v15 - v10;
  (*(a3 + 72))(v5, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, v5, v7, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v13 = (*(AssociatedConformanceWitness + 16))(a1, v11, v7, AssociatedConformanceWitness);
  (*(v8 + 8))(v11, v7);
  if ((v13 & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(a3 + 184))(a1, v5, a3);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance <> LazyDropWhileSequence<A>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc(0x28, 0x1EDBuLL);
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = LazyDropWhileSequence<>.subscript.read(v8, a2, a3, *(a4 - 8));
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*LazyDropWhileSequence<>.subscript.read(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc(0x38, 0xAEE8uLL);
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
    v15 = swift_coroFrameAlloc(v14, 0xAEE8uLL);
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

uint64_t LazyDropWhileSequence<>.index(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v17[1] = a4;
  v7 = *(a3 + 8);
  v8 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v17 - v13;
  LazyDropWhileSequence<>.startIndex.getter(v5, v7, v17 - v13);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v8, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  LOBYTE(v5) = (*(AssociatedConformanceWitness + 40))(a1, v14, v10, AssociatedConformanceWitness);
  (*(v11 + 8))(v14, v10);
  if ((v5 & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(a3 + 32))(a1, v8, a3);
}

uint64_t dump<A, B>(_:to:name:indent:maxDepth:maxItems:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v24 = a7;
  v23 = &_swiftEmptyDictionarySingleton;
  (*(a11 + 8))(a10, a11);
  v22[3] = a8;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v22);
  v18 = *(*(a8 - 8) + 16);
  v18(boxed_opaque_existential_0Tm, a1, a8);
  _dump_unlocked<A>(_:to:name:indent:maxDepth:maxItemCounter:visitedItems:)(v22, a2, a3, a4, a5, a6, &v24, &v23, a10, a11);
  v23;
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  v18(a9, a1, a8);
  return (*(a11 + 16))(a10, a11);
}

void _dump_unlocked<A>(_:to:name:indent:maxDepth:maxItemCounter:visitedItems:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  if (*a7 < 1)
  {
    return;
  }

  --*a7;
  if (a5 < 0)
  {
LABEL_60:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a5)
  {
    v14 = *(a10 + 24);
    v15 = a5;
    do
    {
      v16 = a5;
      v14(32, 0xE100000000000000, a9, a10);
      0xE100000000000000;
      a5 = v16;
      --v15;
    }

    while (v15);
  }

  v63 = a5;
  v75 = a8;
  outlined init with copy of Any(a1, v82);
  v17 = Mirror.init(reflecting:)(v82, &v77);
  v67 = v77;
  v18 = v78;
  v69 = v80;
  v70 = *(&v79 + 1);
  v65 = v81;
  v66 = v79;
  v19 = (*(*v78 + 320))(v17);
  v20 = v19;
  v21 = 12162786;
  if (a6 > 0)
  {
    v21 = 12556002;
  }

  v22 = v19 == 0;
  if (v19)
  {
    v23 = v21;
  }

  else
  {
    v23 = 45;
  }

  if (v22)
  {
    v24 = 0xE100000000000000;
  }

  else
  {
    v24 = 0xA300000000000000;
  }

  v25 = *(a10 + 24);
  v64 = v24;
  v25(v23);
  (v25)(32, 0xE100000000000000, a9, a10);
  0xE100000000000000;
  if (a4)
  {
    (v25)(a3, a4, a9, a10);
    (v25)(8250, 0xE200000000000000, a9, a10);
    0xE200000000000000;
  }

  v68 = v25;
  v77 = v67;
  v78 = v18;
  LOBYTE(v79) = v66;
  *(&v79 + 1) = v70;
  v80 = v69;
  v81 = v65;
  _dumpPrint_unlocked<A, B>(_:_:_:)(a1, &v77, a2, qword_1EEEAC6F8, a9, a10);
  v26 = a1[3];
  v27 = __swift_project_boxed_opaque_existential_0Tm(a1, v26);
  DynamicType = swift_getDynamicType(v27, v26, 1);
  if (swift_isClassType(DynamicType) && DynamicType)
  {
    v29 = _unsafeDowncastToAnyObject(fromAny:)(a1);
    swift_unknownObjectRelease(v29);
  }

  else
  {
    outlined init with copy of Any(a1, &v77);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, _sypXpMR);
    v34 = v25;
    if (!swift_dynamicCast(v82, &v77, qword_1EEEAC6F8, v30, 6uLL, v31, v32, v33, v62))
    {
      v43 = a10;
      goto LABEL_28;
    }

    v29 = *&v82[0];
  }

  v35 = *a8;
  v36 = *(*a8 + 16);
  if (v36)
  {
    v37 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
    if (v38)
    {
      v39 = v37;
      v69;
      v18;
      v64;
      v40 = *(*(v35 + 56) + 8 * v39);
      v68(8992, 0xE200000000000000, a9, a10);
      0xE200000000000000;
      v77 = v40;
      _print_unlocked<A, B>(_:_:)(&v77, a2, &type metadata for Int, a9, a10);
      v68(10, 0xE100000000000000, a9, a10);
      object = 0xE100000000000000;
      goto LABEL_46;
    }

    v42 = a8;
    v35 = *a8;
  }

  else
  {
    v42 = a8;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v35);
  v77 = *v42;
  *v42 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v36, v29, isUniquelyReferenced_nonNull_native, specialized __RawDictionaryStorage.find<A>(_:), canonical specialized generic type metadata accessor for _DictionaryStorage<ObjectIdentifier, Int>, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), &type metadata for ObjectIdentifier);
  *v42 = v77;
  v43 = a10;
  v34 = v68;
  v68(8992, 0xE200000000000000, a9, a10);
  0xE200000000000000;
  v77 = v36;
  _print_unlocked<A, B>(_:_:)(&v77, a2, &type metadata for Int, a9, a10);
LABEL_28:
  v34(10, 0xE100000000000000, a9, v43);
  0xE100000000000000;
  v45 = a6 < 1;
  v73 = a6 - 1;
  if (v45)
  {
    goto LABEL_45;
  }

  v70(&v77);
  v46 = v77;
  if (v77)
  {
    v47 = v78;
    v49 = v79;
    v48 = v80;
    v81 &= 1u;
    if (__OFADD__(v63, 2))
    {
      __break(1u);
      goto LABEL_62;
    }

    _dumpSuperclass_unlocked<A>(mirror:to:indent:maxDepth:maxItemCounter:visitedItems:)(&v77, a2, v63 + 2, v73, a7, v75, a9, a10);
    outlined consume of Mirror?(v46, v47, v49, *(&v49 + 1), v48);
  }

  if (v20 < 0)
  {
    goto LABEL_60;
  }

  if (!v20)
  {
    goto LABEL_45;
  }

  v71 = v20;
  v51 = *(v18 + 16);
  v50 = *(v18 + 24);
  v52 = __OFADD__(v63, 2);
  swift_unknownObjectRetain(*(v18 + 16));
  v53 = 0;
  do
  {
    if (*a7 <= 0)
    {
      v60 = v63 + 4;
      if (!__OFADD__(v63, 4))
      {
        if ((v60 & 0x8000000000000000) == 0)
        {
          v69;
          v18;
          v64;
          do
          {
            if (!v60)
            {
              _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v77 = 32;
            v78 = 0xE100000000000000;
            _print_unlocked<A, B>(_:_:)(&v77, a2, &type metadata for String, a9, a10);
            0xE100000000000000;
            --v60;
          }

          while (v60);
          v68(40, 0xE100000000000000, a9, a10);
          0xE100000000000000;
          v77 = v71 - v53;
          _print_unlocked<A, B>(_:_:)(&v77, a2, &type metadata for Int, a9, a10);
          if (v53)
          {
            v68(0x65726F6D20, 0xE500000000000000, a9, a10);
            0xE500000000000000;
          }

          if (v71 - 1 == v53)
          {
            v68(0xA29646C69686320, 0xE800000000000000, a9, a10);
            swift_unknownObjectRelease(v51);
            object = 0xE800000000000000;
          }

          else
          {
LABEL_59:
            v61 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" children)\n", 0xBuLL, 1);
            (v68)(v61._countAndFlagsBits);
            swift_unknownObjectRelease(v51);
            object = v61._object;
          }

          goto LABEL_46;
        }

        goto LABEL_60;
      }

LABEL_62:
      __break(1u);
      return;
    }

    (*(*v18 + 256))(&v77, v51, v50);
    v54 = v77;
    v55 = v78;
    outlined init with take of Any(&v79, v82);
    isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull(v51);
    v57 = *v18;
    if (isUniquelyReferenced_nonNull)
    {
      (*(v57 + 272))(v51, v50);
    }

    else
    {
      v58 = (*(v57 + 264))(v51, v50);
      v50 = v59;
      swift_unknownObjectRelease(v51);
      v51 = v58;
    }

    if (v52)
    {
      __break(1u);
      goto LABEL_59;
    }

    ++v53;
    _dump_unlocked<A>(_:to:name:indent:maxDepth:maxItemCounter:visitedItems:)(v82, a2, v54, v55, v63 + 2, v73, a7, v75, a9, a10);
    v55;
    __swift_destroy_boxed_opaque_existential_1Tm(v82);
  }

  while (v71 != v53);
  swift_unknownObjectRelease(v51);
LABEL_45:
  v69;
  v18;
  object = v64;
LABEL_46:
  object;
}

void dump<A>(_:name:indent:maxDepth:maxItems:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v20 = a6;
  v19 = &_swiftEmptyDictionarySingleton;
  _swift_stdlib_flockfile_stdout();
  v18[3] = a7;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v18);
  v16 = *(*(a7 - 8) + 16);
  v16(boxed_opaque_existential_0Tm, a1, a7);
  _dump_unlocked<A>(_:to:name:indent:maxDepth:maxItemCounter:visitedItems:)(v18, v17, a2, a3, a4, a5, &v20, &v19, &type metadata for _Stdout, &protocol witness table for _Stdout);
  v19;
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  v16(a8, a1, a7);
  _swift_stdlib_funlockfile_stdout();
}

void _dumpPrint_unlocked<A, B>(_:_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, Class *a4, uint64_t a5, uint64_t a6)
{
  v292 = a5;
  v293 = a3;
  v9 = *(a4 - 1);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = v288 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = v288 - v15;
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v21 = (v288 - v20);
  v22 = *v19;
  v23 = *(v19 + 8);
  v24 = *(v19 + 16);
  v25 = *(v19 + 24);
  if (v24 == 9)
  {
    goto LABEL_2;
  }

  if (*(v19 + 16) > 5u)
  {
    if (v24 != 6)
    {
      if (v24 != 7)
      {
        goto LABEL_2;
      }

      v43 = (*(*v23 + 320))(v18, v25);
      if (v43 == 1)
      {
        object = 0xE800000000000000;
        v45 = 0x7265626D656D2031;
        v46 = v292;
LABEL_116:
        v215 = *(a6 + 24);
        v56 = v45;
        v216 = object;
LABEL_140:
        v233 = v46;
LABEL_174:
        v215(v56, v216, v233, a6);

        object;
        return;
      }

      v80 = v43;
      v81 = _StringGuts.init(_initialCapacity:)(10);
      v91 = v82;
      v294 = v81;
      v295 = v82;
      v92 = HIBYTE(v82) & 0xF;
      if ((v82 & 0x2000000000000000) == 0)
      {
        v92 = v81 & 0xFFFFFFFFFFFFLL;
      }

      v46 = v292;
      if (v92 || (v81 & ~v82 & 0x2000000000000000) != 0)
      {
        if (v82 & 0x2000000000000000) == 0 || (v93 = specialized _SmallString.init(_:appending:)(v81, v82, 0, 0xE000000000000000), (v95))
        {
          _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v83, v84, v85, v86, v87, v88, v89, v90);
          0xE000000000000000;
          v97 = v294;
          v96 = v295;
          goto LABEL_93;
        }

        v97 = v93;
        v96 = v94;
        v91;
        0xE000000000000000;
        v294 = v97;
      }

      else
      {
        v82;
        v97 = 0;
        v96 = 0xE000000000000000;
        v294 = 0;
      }

      v295 = v96;
LABEL_93:
      v183 = _int64ToString(_:radix:uppercase:)(v80, 10, 0, swift_int64ToString);
      v193 = v184;
      v194 = HIBYTE(v96) & 0xF;
      if ((v96 & 0x2000000000000000) == 0)
      {
        v194 = v97 & 0xFFFFFFFFFFFFLL;
      }

      if (!v194 && (v97 & ~v96 & 0x2000000000000000) == 0)
      {
        v214 = v183;
        v96;
        v204 = v214;
        v294 = v214;
        v295 = v193;
        goto LABEL_103;
      }

      if ((v96 & 0x2000000000000000) != 0)
      {
        if ((v184 & 0x2000000000000000) != 0)
        {
          v209 = v183;
          v210 = specialized _SmallString.init(_:appending:)(v97, v96, v183, v184);
          if ((v212 & 1) == 0)
          {
            v276 = v211;
            v277 = v210;
            v96;
            v193;
            v294 = v277;
            v295 = v276;
            v193 = v276;
            v204 = v277;
            goto LABEL_103;
          }

          v195 = HIBYTE(v193) & 0xF;
          v183 = v209;
          goto LABEL_102;
        }
      }

      else if ((v184 & 0x2000000000000000) != 0)
      {
        v195 = HIBYTE(v184) & 0xF;
LABEL_102:
        _StringGuts.append(_:)(v183, v193, 0, v195, v185, v186, v187, v188, v189, v190, v191, v192);
        v193;
        v204 = v294;
        v193 = v295;
LABEL_103:
        v45 = 0x737265626D656D20;
        v205 = HIBYTE(v193) & 0xF;
        if ((v193 & 0x2000000000000000) == 0)
        {
          v205 = v204 & 0xFFFFFFFFFFFFLL;
        }

        if (v205 || (v204 & ~v193 & 0x2000000000000000) != 0)
        {
          if ((v193 & 0x2000000000000000) != 0 && (v206 = specialized _SmallString.init(_:appending:)(v204, v193, 0x737265626D656D20uLL, 0xE800000000000000), (v208 & 1) == 0))
          {
            v213 = v206;
            object = v207;
            v193;
            0xE800000000000000;
            v45 = v213;
          }

          else
          {
            _StringGuts.append(_:)(0x737265626D656D20, 0xE800000000000000, 0, 8, v196, v197, v198, v199, v200, v201, v202, v203);
            0xE800000000000000;
            v45 = v294;
            object = v295;
          }
        }

        else
        {
          v193;
          object = 0xE800000000000000;
        }

        goto LABEL_116;
      }

      v195 = v183 & 0xFFFFFFFFFFFFLL;
      goto LABEL_102;
    }

    v58 = 0xD000000000000010;
    v59 = (*(*v23 + 320))(v18, v25);
    if (v59 == 1)
    {
      object = 0x8000000180671FA0 | 0x8000000000000000;
      v60 = v292;
LABEL_173:
      v215 = *(a6 + 24);
      v56 = v58;
      v216 = object;
      v233 = v60;
      goto LABEL_174;
    }

    v116 = v59;
    v117 = _StringGuts.init(_initialCapacity:)(18);
    v127 = v118;
    v294 = v117;
    v295 = v118;
    v128 = HIBYTE(v118) & 0xF;
    if ((v118 & 0x2000000000000000) == 0)
    {
      v128 = v117 & 0xFFFFFFFFFFFFLL;
    }

    v60 = v292;
    if (v128 || (v117 & ~v118 & 0x2000000000000000) != 0)
    {
      if (v118 & 0x2000000000000000) == 0 || (v129 = specialized _SmallString.init(_:appending:)(v117, v118, 0, 0xE000000000000000), (v131))
      {
        _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v119, v120, v121, v122, v123, v124, v125, v126);
        0xE000000000000000;
        v133 = v294;
        v132 = v295;
        goto LABEL_147;
      }

      v133 = v129;
      v132 = v130;
      v127;
      0xE000000000000000;
      v294 = v133;
    }

    else
    {
      v118;
      v133 = 0;
      v132 = 0xE000000000000000;
      v294 = 0;
    }

    v295 = v132;
LABEL_147:
    v241 = _int64ToString(_:radix:uppercase:)(v116, 10, 0, swift_int64ToString);
    v251 = v242;
    v252 = HIBYTE(v132) & 0xF;
    if ((v132 & 0x2000000000000000) == 0)
    {
      v252 = v133 & 0xFFFFFFFFFFFFLL;
    }

    if (!v252 && (v133 & ~v132 & 0x2000000000000000) == 0)
    {
      v273 = v241;
      v132;
      v262 = v273;
      v294 = v273;
      v295 = v251;
      goto LABEL_157;
    }

    if ((v132 & 0x2000000000000000) != 0)
    {
      if ((v242 & 0x2000000000000000) != 0)
      {
        v269 = v241;
        v270 = specialized _SmallString.init(_:appending:)(v133, v132, v241, v242);
        if ((v272 & 1) == 0)
        {
          v280 = v271;
          v281 = v270;
          v132;
          v251;
          v294 = v281;
          v295 = v280;
          v251 = v280;
          v262 = v281;
          goto LABEL_157;
        }

        v253 = HIBYTE(v251) & 0xF;
        v241 = v269;
        goto LABEL_156;
      }
    }

    else if ((v242 & 0x2000000000000000) != 0)
    {
      v253 = HIBYTE(v242) & 0xF;
LABEL_156:
      _StringGuts.append(_:)(v241, v251, 0, v253, v243, v244, v245, v246, v247, v248, v249, v250);
      v251;
      v262 = v294;
      v251 = v295;
LABEL_157:
      object = 0x8000000180671F80 | 0x8000000000000000;
      v263 = HIBYTE(v251) & 0xF;
      if ((v251 & 0x2000000000000000) == 0)
      {
        v263 = v262 & 0xFFFFFFFFFFFFLL;
      }

      if (v263 || (v262 & ~v251 & 0x2000000000000000) != 0)
      {
        if ((0x8000000180671F80 & 0x2000000000000000 & v251) != 0 && (v264 = specialized _SmallString.init(_:appending:)(v262, v251, 0xD000000000000010, 0x8000000180671F80 | 0x8000000000000000), (v266 & 1) == 0))
        {
          v58 = v264;
          v268 = v265;
          v251;
          0x8000000180671F80 | 0x8000000000000000;
          object = v268;
        }

        else
        {
          if ((0x8000000180671F80 & 0x2000000000000000) != 0)
          {
            v267 = (0x8000000180671F80 >> 56) & 0xF;
          }

          else
          {
            v267 = 16;
          }

          _StringGuts.append(_:)(0xD000000000000010, 0x8000000180671F80 | 0x8000000000000000, 0, v267, v254, v255, v256, v257, v258, v259, v260, v261);
          0x8000000180671F80 | 0x8000000000000000;
          v58 = v294;
          object = v295;
        }
      }

      else
      {
        v251;
      }

      goto LABEL_173;
    }

    v253 = v241 & 0xFFFFFFFFFFFFLL;
    goto LABEL_156;
  }

  if (v24 == 3)
  {
    v55 = (*(*v23 + 320))(v18, v25);
    if (v55 == 1)
    {
      v33 = "(1 element)";
      v34 = 11;
      goto LABEL_21;
    }

    v98 = v55;
    v99 = _StringGuts.init(_initialCapacity:)(13);
    v109 = v100;
    v294 = v99;
    v295 = v100;
    v110 = HIBYTE(v100) & 0xF;
    if ((v100 & 0x2000000000000000) == 0)
    {
      v110 = v99 & 0xFFFFFFFFFFFFLL;
    }

    v46 = v292;
    if (v110 || (v99 & ~v100 & 0x2000000000000000) != 0)
    {
      if (v100 & 0x2000000000000000) == 0 || (v111 = specialized _SmallString.init(_:appending:)(v99, v100, 0x28uLL, 0xE100000000000000), (v113))
      {
        _StringGuts.append(_:)(40, 0xE100000000000000, 0, 1, v101, v102, v103, v104, v105, v106, v107, v108);
        0xE100000000000000;
        v115 = v294;
        v114 = v295;
        goto LABEL_119;
      }

      v115 = v111;
      v114 = v112;
      v109;
      0xE100000000000000;
    }

    else
    {
      v100;
      v115 = 40;
      v114 = 0xE100000000000000;
    }

    v294 = v115;
    v295 = v114;
LABEL_119:
    v156 = _int64ToString(_:radix:uppercase:)(v98, 10, 0, swift_int64ToString);
    v165 = v217;
    v226 = HIBYTE(v114) & 0xF;
    if ((v114 & 0x2000000000000000) == 0)
    {
      v226 = v115 & 0xFFFFFFFFFFFFLL;
    }

    if (v226 || (v115 & ~v114 & 0x2000000000000000) != 0)
    {
      if ((v114 & 0x2000000000000000) == 0)
      {
        if ((v217 & 0x2000000000000000) != 0)
        {
          goto LABEL_129;
        }

LABEL_127:
        v227 = v156 & 0xFFFFFFFFFFFFLL;
LABEL_130:
        _StringGuts.append(_:)(v156, v165, 0, v227, v218, v219, v220, v221, v222, v223, v224, v225);
        v165;
        v156 = v294;
        v165 = v295;
        goto LABEL_131;
      }

      if ((v217 & 0x2000000000000000) == 0)
      {
        goto LABEL_127;
      }

      v228 = specialized _SmallString.init(_:appending:)(v115, v114, v156, v217);
      if (v230)
      {
LABEL_129:
        v227 = HIBYTE(v165) & 0xF;
        goto LABEL_130;
      }

      v278 = v228;
      v279 = v229;
      v114;
      v165;
      v294 = v278;
      v295 = v279;
      v165 = v279;
      v156 = v278;
    }

    else
    {
      v114;
      v294 = v156;
      v295 = v165;
    }

LABEL_131:
    v231 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" elements)", 0xAuLL, 1);
    countAndFlagsBits = v231._countAndFlagsBits;
    object = v231._object;
    v232 = HIBYTE(v165) & 0xF;
    if ((v165 & 0x2000000000000000) == 0)
    {
      v232 = v156 & 0xFFFFFFFFFFFFLL;
    }

    if (v232 || (v156 & ~v165 & 0x2000000000000000) != 0)
    {
      if ((v165 & 0x2000000000000000) == 0)
      {
LABEL_89:
        if ((object & 0x2000000000000000) != 0)
        {
          v182 = HIBYTE(object) & 0xF;
LABEL_138:
          _StringGuts.append(_:)(countAndFlagsBits, object, 0, v182, v172, v173, v174, v175, v176, v177, v178, v179);
          object;
          v56 = v294;
          object = v295;
          goto LABEL_139;
        }

LABEL_137:
        v182 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        goto LABEL_138;
      }

LABEL_136:
      if ((object & 0x2000000000000000) != 0)
      {
        v234 = countAndFlagsBits;
        v235 = specialized _SmallString.init(_:appending:)(v156, v165, countAndFlagsBits, object);
        if ((v237 & 1) == 0)
        {
          v239 = v236;
          v240 = v235;
          v165;
          object;
          v56 = v240;
          object = v239;
          goto LABEL_139;
        }

        v182 = HIBYTE(object) & 0xF;
        countAndFlagsBits = v234;
        goto LABEL_138;
      }

      goto LABEL_137;
    }

LABEL_143:
    v238 = countAndFlagsBits;
    v165;
    v56 = v238;
    goto LABEL_139;
  }

  if (v24 == 5)
  {
    v32 = (*(*v23 + 320))(v18, v25);
    if (v32 == 1)
    {
      v33 = "1 element";
      v34 = 9;
LABEL_21:
      v57 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v33, v34, 1);
      v56 = v57._countAndFlagsBits;
      object = v57._object;
      v46 = v292;
LABEL_139:
      v215 = *(a6 + 24);
      v216 = object;
      goto LABEL_140;
    }

    v62 = v32;
    v63 = _StringGuts.init(_initialCapacity:)(11);
    v73 = v64;
    v294 = v63;
    v295 = v64;
    v74 = HIBYTE(v64) & 0xF;
    if ((v64 & 0x2000000000000000) == 0)
    {
      v74 = v63 & 0xFFFFFFFFFFFFLL;
    }

    v46 = v292;
    if (v74 || (v63 & ~v64 & 0x2000000000000000) != 0)
    {
      if (v64 & 0x2000000000000000) == 0 || (v75 = specialized _SmallString.init(_:appending:)(v63, v64, 0, 0xE000000000000000), (v77))
      {
        _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v65, v66, v67, v68, v69, v70, v71, v72);
        0xE000000000000000;
        v79 = v294;
        v78 = v295;
        goto LABEL_72;
      }

      v79 = v75;
      v78 = v76;
      v73;
      0xE000000000000000;
      v294 = v79;
    }

    else
    {
      v64;
      v79 = 0;
      v78 = 0xE000000000000000;
      v294 = 0;
    }

    v295 = v78;
LABEL_72:
    v156 = _int64ToString(_:radix:uppercase:)(v62, 10, 0, swift_int64ToString);
    v165 = v155;
    v166 = HIBYTE(v78) & 0xF;
    if ((v78 & 0x2000000000000000) == 0)
    {
      v166 = v79 & 0xFFFFFFFFFFFFLL;
    }

    if (v166 || (v79 & ~v78 & 0x2000000000000000) != 0)
    {
      if ((v78 & 0x2000000000000000) == 0)
      {
        if ((v155 & 0x2000000000000000) != 0)
        {
          goto LABEL_82;
        }

LABEL_80:
        v167 = v156 & 0xFFFFFFFFFFFFLL;
LABEL_83:
        _StringGuts.append(_:)(v156, v165, 0, v167, v157, v158, v159, v160, v161, v162, v163, v164);
        v165;
        v156 = v294;
        v165 = v295;
        goto LABEL_84;
      }

      if ((v155 & 0x2000000000000000) == 0)
      {
        goto LABEL_80;
      }

      v168 = specialized _SmallString.init(_:appending:)(v79, v78, v156, v155);
      if (v170)
      {
LABEL_82:
        v167 = HIBYTE(v165) & 0xF;
        goto LABEL_83;
      }

      v274 = v168;
      v275 = v169;
      v78;
      v165;
      v294 = v274;
      v295 = v275;
      v165 = v275;
      v156 = v274;
    }

    else
    {
      v78;
      v294 = v156;
      v295 = v165;
    }

LABEL_84:
    v180 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" elements", 9uLL, 1);
    countAndFlagsBits = v180._countAndFlagsBits;
    object = v180._object;
    v181 = HIBYTE(v165) & 0xF;
    if ((v165 & 0x2000000000000000) == 0)
    {
      v181 = v156 & 0xFFFFFFFFFFFFLL;
    }

    if (v181 || (v156 & ~v165 & 0x2000000000000000) != 0)
    {
      if ((v165 & 0x2000000000000000) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_136;
    }

    goto LABEL_143;
  }

LABEL_2:
  v289 = *(v19 + 40);
  v290 = v25;
  v291 = v22;
  v26 = a6;
  v27 = *(v9 + 16);
  v27(v288 - v20, a1, a4);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v299, v21, a4, v28, 6uLL, v29, v30, v31, v288[0]) || (v301 = 0, v299 = 0u, v300 = 0u, outlined destroy of _HasContiguousBytes?(&v299, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR), v27(v16, a1, a4), v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR), swift_dynamicCast(&v299, v16, a4, v35, 6uLL, v36, v37, v38, v288[0])))
  {
    _ss9CodingKey_pWOb_0(&v299, &v294);
    v39 = v297;
    __swift_project_boxed_opaque_existential_0Tm(&v294, v297.n128_i64[0]);
    v40 = (*(v39.n128_u64[1] + 8))(v39.n128_u64[0], v39.n128_u64[1]);
    v42 = v41;
    (*(v26 + 24))(v40);
    v42;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1Tm(&v294);
    return;
  }

  v301 = 0;
  v299 = 0u;
  v300 = 0u;
  outlined destroy of _HasContiguousBytes?(&v299, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v27(v12, a1, a4);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  v51 = swift_dynamicCast(&v299, v12, a4, v47, 6uLL, v48, v49, v50, v288[0]);
  v52 = v292;
  v53 = v293;
  if (v51)
  {
    _ss9CodingKey_pWOb_0(&v299, &v294);
    v54 = v297;
    __swift_project_boxed_opaque_existential_0Tm(&v294, v297.n128_i64[0]);
    (*(v54.n128_u64[1] + 8))(v53, v52, v26, v54.n128_u64[0], v54.n128_u64[1]);
    goto LABEL_11;
  }

  v301 = 0;
  v299 = 0u;
  v300 = 0u;
  outlined destroy of _HasContiguousBytes?(&v299, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v61 = v26;
  if (v24 == 9)
  {
LABEL_25:
    v294 = v291;
    v295 = v23;
    v296 = v24;
    v297 = v290;
    v298 = v289;
    _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(a1, &v294, v53, 1, a4, v52, v26);
    return;
  }

  if (v24 < 2)
  {
LABEL_57:
    TypeName = swift_getTypeName(v291, 1);
    if ((v135 & 0x8000000000000000) == 0)
    {
      v136 = TypeName;
      v137 = v135;
      v138 = validateUTF8(_:)(TypeName, v135);
      if ((v138 & 0x8000000000000000) != 0)
      {
        v142 = repairUTF8(_:firstKnownBrokenRange:)(v136, v137, v139, v140);
      }

      else
      {
        v142 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v136, v137, v138 & 1, v141);
      }

      v144 = v143;
      (*(v26 + 24))(v142);
      goto LABEL_66;
    }

LABEL_185:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v24 != 2)
  {
    if (v24 != 8)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

  v145 = swift_getTypeName(v291, 1);
  if (v146 < 0)
  {
    goto LABEL_185;
  }

  v147 = v145;
  v148 = v146;
  v149 = validateUTF8(_:)(v145, v146);
  if ((v149 & 0x8000000000000000) != 0)
  {
    v153 = repairUTF8(_:firstKnownBrokenRange:)(v147, v148, v150, v151);
  }

  else
  {
    v153 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v147, v148, v149 & 1, v152);
  }

  v282 = v154;
  v283 = *(v61 + 24);
  v283(v153);
  v282;
  v284 = swift_EnumCaseName(a1, a4);
  if (v284)
  {
    v285 = specialized String.init(validatingUTF8:)(v284);
    if (v286)
    {
      v287 = v285;
      v144 = v286;
      (v283)(46, 0xE100000000000000, v52, v61);
      0xE100000000000000;
      (v283)(v287, v144, v52, v61);
LABEL_66:
      v144;
    }
  }
}

void _print_unlocked<A, B>(_:_:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v78 = a2;
  v79 = a4;
  v8 = *(a3 - 1);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v77 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v76 - v13;
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v76 - v17;
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v76 - v21;
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v76 - v24;
  v82 = v26;
  v27 = __swift_allocate_boxed_opaque_existential_0Tm(&v80);
  v28 = *(v8 + 16);
  v28(v27, a1, a3);
  v29 = v82;
  v30 = __swift_project_boxed_opaque_existential_0Tm(&v80, v82);
  DynamicType = swift_getDynamicType(v30, v29, 1);
  LODWORD(v29) = swift_isOptionalType(DynamicType);
  __swift_destroy_boxed_opaque_existential_1Tm(&v80);
  if (v29)
  {
    v28(v25, a1, a3);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v80, v25, a3, v32, 7uLL, v33, v34, v35, v76);
    v36 = v82;
    v37 = v83;
    __swift_project_boxed_opaque_existential_0Tm(&v80, v82);
    v38 = (*(v37 + 8))(v36, v37);
    v40 = v39;
    v41 = *(a5 + 24);
LABEL_3:
    v41(v38);
LABEL_4:
    v40;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1Tm(&v80);
    return;
  }

  v42 = v78;
  v28(v22, a1, a3);
  if (swift_dynamicCast(&v80, v22, a3, &type metadata for String, 6uLL, v43, v44, v45, v76))
  {
    v46 = v81;
    (*(a5 + 24))(v80, v81, v79, a5);
    v46;
  }

  else
  {
    v28(v18, a1, a3);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
    if (swift_dynamicCast(&v84, v18, a3, v47, 6uLL, v48, v49, v50, v76))
    {
      _ss9CodingKey_pWOb_0(&v84, &v80);
      v51 = v82;
      v52 = v83;
      __swift_project_boxed_opaque_existential_0Tm(&v80, v82);
      (*(v52 + 8))(v42, v79, a5, v51, v52);
      goto LABEL_5;
    }

    v86 = 0;
    v84 = 0u;
    v85 = 0u;
    outlined destroy of _HasContiguousBytes?(&v84, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
    v28(v14, a1, a3);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
    v57 = v42;
    if (swift_dynamicCast(&v84, v14, a3, v53, 6uLL, v54, v55, v56, v76))
    {
      _ss9CodingKey_pWOb_0(&v84, &v80);
      v58 = v82;
      v59 = v83;
      __swift_project_boxed_opaque_existential_0Tm(&v80, v82);
      v38 = (*(v59 + 8))(v58, v59);
      v40 = v60;
      v41 = *(a5 + 24);
      goto LABEL_3;
    }

    v86 = 0;
    v84 = 0u;
    v85 = 0u;
    outlined destroy of _HasContiguousBytes?(&v84, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
    v61 = v77;
    v28(v77, a1, a3);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    v66 = swift_dynamicCast(&v84, v61, a3, v62, 6uLL, v63, v64, v65, v76);
    v67 = a5;
    v68 = v79;
    if (v66)
    {
      _ss9CodingKey_pWOb_0(&v84, &v80);
      v69 = v82;
      v70 = v83;
      __swift_project_boxed_opaque_existential_0Tm(&v80, v82);
      v71 = (*(v70 + 8))(v69, v70);
      v40 = v72;
      (*(a5 + 24))(v71);
      goto LABEL_4;
    }

    v86 = 0;
    v84 = 0u;
    v85 = 0u;
    outlined destroy of _HasContiguousBytes?(&v84, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
    *(&v85 + 1) = a3;
    v73 = __swift_allocate_boxed_opaque_existential_0Tm(&v84);
    v28(v73, a1, a3);
    Mirror.init(reflecting:)(&v84, &v80);
    v74 = v81;
    v75 = v83;
    _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(a1, &v80, v57, 0, a3, v68, v67);
    v75;
    v74;
  }
}

void _dumpSuperclass_unlocked<A>(mirror:to:indent:maxDepth:maxItemCounter:visitedItems:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  if (*a5 < 1)
  {
    return;
  }

  v10 = *a1;
  v11 = a1[1];
  v12 = a1[3];
  --*a5;
  if (a3 < 0)
  {
LABEL_47:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v14 = a2;
  v49 = v10;
  v54 = a7;
  v55 = a8;
  if (a3)
  {
    v15 = *(a8 + 24);
    v16 = a3;
    do
    {
      v15(32, 0xE100000000000000, a7, a8);
      0xE100000000000000;
      v14 = a2;
      a7 = v54;
      a8 = v55;
      --v16;
    }

    while (v16);
  }

  v47 = v12;
  v48 = a3;
  v17 = a8;
  v18 = a7;
  v19 = v14;
  v20 = (*(*v11 + 320))();
  v21 = 12162786;
  if (a4 > 0)
  {
    v21 = 12556002;
  }

  v51 = v20;
  v22 = v20 == 0;
  if (v20)
  {
    v23 = v21;
  }

  else
  {
    v23 = 45;
  }

  if (v22)
  {
    v24 = 0xE100000000000000;
  }

  else
  {
    v24 = 0xA300000000000000;
  }

  v25 = *(v17 + 24);
  v25(v23, v24, v18, v17);
  v25(0x203A726570757320, 0xE800000000000000, v18, v17);
  0xE800000000000000;
  v56 = v49;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, _sypXpMR);
  _debugPrint_unlocked<A, B>(_:_:)(&v56, v19, v26, v18, v17);
  v45 = v25;
  v25(10, 0xE100000000000000, v18, v17);
  0xE100000000000000;
  v50 = a4 - 1;
  if (a4 < 1)
  {
    object = v24;
    goto LABEL_33;
  }

  v46 = v24;
  v47(&v56);
  v27 = v56;
  if (v56)
  {
    v28 = v57;
    v30 = v58;
    v29 = v59;
    v60 &= 1u;
    if (__OFADD__(v48, 2))
    {
      __break(1u);
      goto LABEL_49;
    }

    _dumpSuperclass_unlocked<A>(mirror:to:indent:maxDepth:maxItemCounter:visitedItems:)(&v56, a2, v48 + 2, v50, a5, a6, v54, v55);
    outlined consume of Mirror?(v27, v28, v30, *(&v30 + 1), v29);
  }

  v31 = v51;
  if (v51 < 0)
  {
    goto LABEL_47;
  }

  if (!v51)
  {
    goto LABEL_31;
  }

  v33 = *(v11 + 2);
  v32 = *(v11 + 3);
  v34 = __OFADD__(v48, 2);
  swift_unknownObjectRetain(*(v11 + 2));
  v35 = 0;
  do
  {
    if (*a5 <= 0)
    {
      v43 = v48 + 4;
      if (!__OFADD__(v48, 4))
      {
        v11 = v45;
        if ((v43 & 0x8000000000000000) == 0)
        {
          v46;
          do
          {
            if (!v43)
            {
              _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v45(32, 0xE100000000000000, v54, v55);
            0xE100000000000000;
            --v43;
          }

          while (v43);
          v45(40, 0xE100000000000000, v54, v55);
          0xE100000000000000;
          v56 = v31 - v35;
          _print_unlocked<A, B>(_:_:)(&v56, a2, &type metadata for Int, v54, v55);
          if (v35)
          {
            v45(0x65726F6D20, 0xE500000000000000, v54, v55);
            0xE500000000000000;
          }

          if (v31 - 1 == v35)
          {
            v45(0xA29646C69686320, 0xE800000000000000, v54, v55);
            swift_unknownObjectRelease(v33);
            object = 0xE800000000000000;
          }

          else
          {
LABEL_46:
            v44 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" children)\n", 0xBuLL, 1);
            (v11)(v44._countAndFlagsBits);
            swift_unknownObjectRelease(v33);
            object = v44._object;
          }

          goto LABEL_33;
        }

        goto LABEL_47;
      }

LABEL_49:
      __break(1u);
      return;
    }

    (*(*v11 + 256))(&v56, v33, v32);
    v36 = v56;
    v37 = v57;
    outlined init with take of Any(&v58, v61);
    isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull(v33);
    v39 = *v11;
    if (isUniquelyReferenced_nonNull)
    {
      (*(v39 + 272))(v33, v32);
    }

    else
    {
      v40 = (*(v39 + 264))(v33, v32);
      v32 = v41;
      swift_unknownObjectRelease(v33);
      v33 = v40;
    }

    if (v34)
    {
      __break(1u);
      goto LABEL_46;
    }

    ++v35;
    _dump_unlocked<A>(_:to:name:indent:maxDepth:maxItemCounter:visitedItems:)(v61, a2, v36, v37, v48 + 2, v50, a5, a6, v54, v55);
    v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    v31 = v51;
  }

  while (v51 != v35);
  swift_unknownObjectRelease(v33);
LABEL_31:
  object = v46;
LABEL_33:
  object;
}

uint64_t _debugPrint_unlocked<A, B>(_:_:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a3 - 1);
  v11 = MEMORY[0x1EEE9AC00](a1, a2);
  v13 = (v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = (v45 - v16);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = (v45 - v19);
  v21 = *(v10 + 16);
  v21(v45 - v19, a1);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v48, v20, a3, v22, 6uLL, v23, v24, v25, v45[0]) || (v50 = 0, v48 = 0u, v49 = 0u, outlined destroy of _HasContiguousBytes?(&v48, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR), (v21)(v17, a1, a3), v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR), swift_dynamicCast(&v48, v17, a3, v26, 6uLL, v27, v28, v29, v45[0])))
  {
    _ss9CodingKey_pWOb_0(&v48, v45);
    v30 = v46;
    v31 = v47;
    __swift_project_boxed_opaque_existential_0Tm(v45, v46);
    v32 = (*(v31 + 8))(v30, v31);
    v34 = v33;
    (*(a5 + 24))(v32);
    v34;
    return __swift_destroy_boxed_opaque_existential_1Tm(v45);
  }

  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  outlined destroy of _HasContiguousBytes?(&v48, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  (v21)(v13, a1, a3);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v48, v13, a3, v36, 6uLL, v37, v38, v39, v45[0]))
  {
    _ss9CodingKey_pWOb_0(&v48, v45);
    v40 = v46;
    v41 = v47;
    __swift_project_boxed_opaque_existential_0Tm(v45, v46);
    (*(v41 + 8))(a2, a4, a5, v40, v41);
    return __swift_destroy_boxed_opaque_existential_1Tm(v45);
  }

  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  outlined destroy of _HasContiguousBytes?(&v48, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  *(&v49 + 1) = a3;
  v42 = __swift_allocate_boxed_opaque_existential_0Tm(&v48);
  (v21)(v42, a1, a3);
  Mirror.init(reflecting:)(&v48, v45);
  v43 = v45[1];
  v44 = v47;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(a1, v45, a2, 1, a3, a4, a5);
  v44;
  return v43;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance EmptyCollection<A>(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

__objc2_class **protocol witness for Sequence._copyToContiguousArray() in conformance EmptyCollection<A>(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, a1, a3);

  return specialized Collection._copyToContiguousArray()(WitnessTable, a1, WitnessTable);
}

uint64_t EmptyCollection.subscript.getter(uint64_t result, uint64_t a2)
{
  if (result | a2)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t key path setter for EmptyCollection.subscript(_:) : <A>EmptyCollection<A>A(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  type metadata accessor for EmptyCollection(0, *(a3 + a4 - 8), a3, a4);
  return specialized EmptyCollection.subscript.setter(v4, v5);
}

void (*EmptyCollection.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  if (a2 | a3)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

Swift::Int __swiftcall EmptyCollection.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  if (_ | offsetBy)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 0;
}

Swift::Int_optional __swiftcall EmptyCollection.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  if (_ | limitedBy)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = offsetBy != 0;
  v4 = 0;
  result.value = v4;
  result.is_nil = v3;
  return result;
}

Swift::Int __swiftcall EmptyCollection.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  if (from || to)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 0;
}

uint64_t EmptyCollection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a1 || (v6 = type metadata accessor for EmptyCollection(0, a4, a3, a4), WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, v6, v7), result = RandomAccessCollection<>.indices.getter(v6, WitnessTable, &protocol witness table for Int, &v10), v10 != __PAIR128__(a3, a2)))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t static ClosedRange.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v10 = *(a4 + 8);
  v11 = *(v10 + 8);
  if ((v11(a1, a2, a3, v10) & 1) == 0)
  {
    return 0;
  }

  v12 = a5(0, a3, a4);
  return v11(a1 + *(v12 + 36), a2 + *(v12 + 36), a3, v10) & 1;
}

uint64_t EmptyCollection._failEarlyRangeCheck(_:bounds:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for EmptyCollection(0, a5, a3, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, v9, v10);
  RandomAccessCollection<>.indices.getter(v9, WitnessTable, &protocol witness table for Int, &v13);
  if (v13 != __PAIR128__(a2, a1) || (result = RandomAccessCollection<>.indices.getter(v9, WitnessTable, &protocol witness table for Int, &v13), v13 != __PAIR128__(a4, a3)))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

void (*protocol witness for MutableCollection.subscript.modify in conformance EmptyCollection<A>(uint64_t a1, _OWORD *a2))()
{
  if (*a2 != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

Swift::Int _ss15EmptyCollectionVyxGSksSk5index_8offsetBy5IndexQzAG_SitFTW_0@<X0>(Swift::Int *a1@<X0>, Swift::Int a2@<X1>, void *a3@<X8>)
{
  result = EmptyCollection.index(_:offsetBy:)(*a1, a2);
  *a3 = 0;
  return result;
}

Swift::Int _ss15EmptyCollectionVyxGSksSk5index_8offsetBy07limitedE05IndexQzSgAH_SiAHtFTW_0@<X0>(Swift::Int *a1@<X0>, Swift::Int a2@<X1>, Swift::Int *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = EmptyCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = 0;
  *(a4 + 8) = v6.is_nil;
  return v6.value;
}

void protocol witness for Collection.subscript.read in conformance EmptyCollection<A>(void *a1)
{
  if (swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc(0x28, 0x23BCuLL);
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  protocol witness for MutableCollection.subscript.modify in conformance EmptyCollection<A>();
}

uint64_t protocol witness for Collection.indices.getter in conformance EmptyCollection<A>@<X0>(unsigned __int16 *a1@<X0>, char *a2@<X8>, uint64_t a3@<X2>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, a1, a3);

  return RandomAccessCollection<>.indices.getter(a1, WitnessTable, &protocol witness table for Int, a2);
}

uint64_t protocol witness for RandomAccessCollection.distance(from:to:) in conformance EmptyCollection<A>(void *a1, void *a2)
{
  if (*a1 || *a2)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 0;
}

uint64_t EnumeratedSequence.Iterator.init(_base:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, int **a3@<X2>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for EnumeratedSequence.Iterator(0, a2, a3, v9);
  *(a4 + *(result + 36)) = 0;
  return result;
}

uint64_t EnumeratedSequence<>.startIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  (*(a2 + 64))(v5);
  result = type metadata accessor for EnumeratedSequence<>.Index(0, v5, a2, v6);
  *(a3 + *(result + 36)) = 0;
  return result;
}

uint64_t EnumeratedSequence<>.endIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  (*(a2 + 72))(v5);
  result = type metadata accessor for EnumeratedSequence<>.Index(0, v5, a2, v6);
  *(a3 + *(result + 36)) = 0;
  return result;
}

uint64_t EnumeratedSequence<>.distance(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a2;
  v7 = *(a3 + 16);
  swift_getAssociatedTypeWitness(0, a4, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v25 - v12;
  v14 = *(a4 + 72);
  v29 = v4;
  v27 = v14;
  v14(v7, a4);
  v15 = *(swift_getAssociatedConformanceWitness(a4, v7, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
  v16 = *(v15 + 8);
  v28 = a1;
  v26 = v16;
  v17 = v16(a1, v13, v9, v15);
  v18 = *(v10 + 8);
  v18(v13, v9);
  if (v17)
  {
    return (*(a4 + 152))(v28, v30, v7, a4);
  }

  v27(v7, a4);
  v19 = v26(v30, v13, v9, v15);
  v18(v13, v9);
  if (v19)
  {
    return (*(a4 + 152))(v28, v30, v7, a4);
  }

  v22 = *(type metadata accessor for EnumeratedSequence<>.Index(0, v7, a4, v20) + 36);
  v23 = *(v30 + v22);
  v24 = *(v28 + v22);
  result = v23 - v24;
  if (__OFSUB__(v23, v24))
  {
    __break(1u);
  }

  return result;
}

uint64_t EnumeratedSequence<>.index(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 16);
  (*(a3 + 184))(a1, v7);
  result = type metadata accessor for EnumeratedSequence<>.Index(0, v7, a3, v8);
  v10 = *(result + 36);
  v11 = *(a1 + v10);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a4 + v10) = v13;
  }

  return result;
}

uint64_t EnumeratedSequence<>.index(_:offsetBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a5;
  v8 = *(a3 + 16);
  swift_getAssociatedTypeWitness(0, a4, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = v9;
  v11 = *(v9 - 8);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v26 - v17;
  (*(a4 + 136))(a1, a2, v8, a4);
  if (a2 < 0 && ((*(a4 + 72))(v8, a4), AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, v8, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable), v21 = (*(*(AssociatedConformanceWitness + 8) + 8))(a1, v15, v10), (*(v11 + 8))(v15, v10), (v21 & 1) != 0))
  {
    result = (*(a4 + 112))(v8, a4);
  }

  else
  {
    result = *(a1 + *(type metadata accessor for EnumeratedSequence<>.Index(0, v8, a4, v19) + 36));
  }

  v23 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    v24 = v27;
    (*(v11 + 32))(v27, v18, v10);
    result = type metadata accessor for EnumeratedSequence<>.Index(0, v8, a4, v25);
    *(v24 + *(result + 36)) = v23;
  }

  return result;
}

uint64_t EnumeratedSequence<>.index(_:offsetBy:limitedBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v55 = a3;
  v56 = a6;
  v10 = *(a4 + 16);
  swift_getAssociatedTypeWitness(255, a5, v10, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  v53 = type metadata accessor for Optional(0, v11, v13, v14);
  v15 = *(v53 - 8);
  v17 = MEMORY[0x1EEE9AC00](v53, v16);
  v19 = &v51 - v18;
  v20 = *(v12 - 8);
  v22 = MEMORY[0x1EEE9AC00](v17, v21);
  v52 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v51 - v25;
  v27 = *(a5 + 144);
  v54 = a1;
  v28 = a1;
  v29 = v10;
  v30 = a2;
  v27(v28, a2, v55, v29, a5);
  v31 = v20;
  if ((*(v20 + 48))(v19, 1, v12) == 1)
  {
    (*(v15 + 8))(v19, v53);
    v33 = type metadata accessor for EnumeratedSequence<>.Index(0, v29, a5, v32);
    return (*(*(v33 - 8) + 56))(v56, 1, 1, v33);
  }

  else
  {
    v55 = *(v20 + 32);
    v55(v26, v19, v12);
    v36 = v30;
    if (v30 < 0)
    {
      v53 = v26;
      v40 = v52;
      (*(a5 + 72))(v29, a5);
      v41 = *(*(swift_getAssociatedConformanceWitness(a5, v29, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8) + 8);
      v51 = v6;
      v42 = v29;
      v43 = v54;
      v44 = v41(v54, v40, v12);
      (*(v31 + 8))(v40, v12);
      if (v44)
      {
        v29 = v42;
        v38 = (*(a5 + 112))(v42, a5);
        v39 = v56;
        v26 = v53;
      }

      else
      {
        v46 = v42;
        v38 = *(v43 + *(type metadata accessor for EnumeratedSequence<>.Index(0, v42, a5, v45) + 36));
        v39 = v56;
        v26 = v53;
        v29 = v46;
      }
    }

    else
    {
      v37 = type metadata accessor for EnumeratedSequence<>.Index(0, v29, a5, v35);
      v38 = *(v54 + *(v37 + 36));
      v39 = v56;
    }

    result = (v55)(v39, v26, v12);
    v48 = __OFADD__(v38, v36);
    v49 = v38 + v36;
    if (v48)
    {
      __break(1u);
    }

    else
    {
      v50 = type metadata accessor for EnumeratedSequence<>.Index(0, v29, a5, v47);
      *(v39 + *(v50 + 36)) = v49;
      return (*(*(v50 - 8) + 56))(v39, 0, 1, v50);
    }
  }

  return result;
}

uint64_t EnumeratedSequence<>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v6 = *(a3 + 16);
  swift_getAssociatedTypeWitness(0, a4, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v24 - v11;
  (*(a4 + 64))(v6, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, v6, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v14 = (*(AssociatedConformanceWitness + 24))(v12, a2, v8, AssociatedConformanceWitness);
  v15 = *(v9 + 8);
  v15(v12, v8);
  if ((v14 & 1) == 0 || ((*(a4 + 72))(v6, a4), v16 = (*(AssociatedConformanceWitness + 16))(a2, v12, v8, AssociatedConformanceWitness), v15(v12, v8), (v16 & 1) == 0))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v18 = *(a2 + *(type metadata accessor for EnumeratedSequence<>.Index(0, v6, a4, v17) + 36));
  v19 = (*(a4 + 80))(v26, a2, v6, a4);
  v21 = v20;
  swift_getAssociatedTypeWitness(0, *(a4 + 8), v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  (*(*(v22 - 8) + 16))(v25, v21, v22);
  v19(v26, 0);
  return v18;
}

void (*protocol witness for Collection.subscript.read in conformance <> EnumeratedSequence<A>(char ****a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, uint64_t a2)
{
  if (swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc(0x40, 0xAD9AuLL);
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  v10 = *(a4 - 8);
  swift_getAssociatedTypeWitness(255, *(v10 + 8), *(a3 + 16), &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v12 = v11;
  swift_getTupleTypeMetadata2(0, &type metadata for Int, v11, "offset element ", 0);
  v14 = v13;
  v9[4] = v13;
  v15 = *(v13 - 1);
  v9[5] = v15;
  v16 = *(v15 + 64);
  if (swift_coroFrameAlloc)
  {
    v17 = swift_coroFrameAlloc(v16, 0xAD9AuLL);
  }

  else
  {
    v17 = malloc(v16);
  }

  v18 = v17;
  v9[6] = v17;
  v9[7] = EnumeratedSequence<>.subscript.read(v9, a2, a3, v10);
  *v18 = v19;
  (*(*(v12 - 1) + 16))(&v18[*(v14 + 12)], v20, v12);
  return protocol witness for Collection.subscript.read in conformance <> EnumeratedSequence<A>;
}

void protocol witness for Collection.subscript.read in conformance <> EnumeratedSequence<A>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

uint64_t (*EnumeratedSequence<>.subscript.read(char ***a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  swift_getAssociatedTypeWitness(255, *(a4 + 8), *(a3 + 16), &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  swift_getTupleTypeMetadata2(0, &type metadata for Int, v8, "offset element ", 0);
  v10 = v9;
  *a1 = v9;
  v11 = *(v9 - 1);
  a1[1] = v11;
  v12 = *(v11 + 64);
  if (swift_coroFrameAlloc)
  {
    v13 = swift_coroFrameAlloc(v12, 0xFC9DuLL);
  }

  else
  {
    v13 = malloc(v12);
  }

  a1[2] = v13;
  *v13 = EnumeratedSequence<>.subscript.getter(v13 + *(v10 + 12), a2, a3, a4);
  return EnumeratedSequence<>.subscript.read;
}

void EnumeratedSequence<>.subscript.read(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t static EnumeratedSequence<>.Index.== infix(_:_:)(uint64_t a1, uint64_t a2, Class *a3, int **a4)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  return (*(*(AssociatedConformanceWitness + 8) + 8))(a1, a2, v9) & 1;
}

uint64_t static EnumeratedSequence<>.Index.< infix(_:_:)(uint64_t a1, uint64_t a2, Class *a3, int **a4)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  return (*(AssociatedConformanceWitness + 16))(a1, a2, v9, AssociatedConformanceWitness) & 1;
}

uint64_t EnumeratedSequence<>.index(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v5 = *(a3 + 8);
  v6 = *(v5 + 8);
  v7 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, v6, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v10 = *(v8 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v25 - v16;
  (*(v5 + 32))(a1, v7, v5);
  (*(v6 + 72))(v7, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v7, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v19 = (*(*(AssociatedConformanceWitness + 8) + 8))(a1, v14, v9);
  (*(v10 + 8))(v14, v9);
  if (v19)
  {
    result = (*(v6 + 112))(v7, v6);
  }

  else
  {
    result = *(a1 + *(type metadata accessor for EnumeratedSequence<>.Index(0, v7, v6, v20) + 36));
  }

  v22 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v23 = v26;
    (*(v10 + 32))(v26, v17, v9);
    result = type metadata accessor for EnumeratedSequence<>.Index(0, v7, v6, v24);
    *(v23 + *(result + 36)) = v22;
  }

  return result;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance <> EnumeratedSequence<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = type metadata accessor for EnumeratedSequence<>.Index(0, *(a2 + 16), *(*(v6 + 8) + 8), a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v13 - v10;
  (*(v8 + 32))(&v13 - v10, a1, v7);
  EnumeratedSequence<>.index(before:)(v11, a2, v6, a1);
  return (*(v8 + 8))(v11, v7);
}

uint64_t _swift_stdlib_Equatable_isEqual_indirect(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1, a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v17 - v12;
  v14 = *(v7 + 16);
  v14(&v17 - v12);
  (v14)(v10, a2, a3);
  LOBYTE(a4) = (*(a4 + 8))(v13, v10, a3, a4);
  v15 = *(v7 + 8);
  v15(v10, a3);
  v15(v13, a3);
  return a4 & 1;
}

void *_getErrorDomainNSString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(a3 + 8))(a2, a3);
  v10 = v9;
  (*(v5 + 8))(v7, a2);
  v12 = String._bridgeToObjectiveCImpl()(v8, v10, v11);
  v10;
  return v12;
}

void *String._bridgeToObjectiveCImpl()(uint64_t a1, unint64_t a2, void *a3)
{
  if (one-time initialization token for _bridgeInitializedSuccessfully != -1)
  {
    v13 = a2;
    swift_once(&one-time initialization token for _bridgeInitializedSuccessfully, one-time initialization function for _bridgeInitializedSuccessfully, a3);
    a2 = v13;
  }

  if (!_bridgeInitializedSuccessfully)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  _orphanedFoundationSubclassesReparented = 1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a2 & 0x8000000000000000) == 0 || (a2 & 0xD000000000000000) == 0xC000000000000000)
    {
      IndirectTaggedPointerString = (a2 & 0xFFFFFFFFFFFFFFFLL);
    }

    else if ((~a1 & 0x9000000000000000) != 0 || (a2 & 0x1000000000000000) != 0 || (v12 = a2, IndirectTaggedPointerString = _swift_stdlib_CreateIndirectTaggedPointerString(), a2 = v12, !IndirectTaggedPointerString))
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v4 = _StringObject.sharedUTF8.getter(a1, a2);
        if (!v4)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      if (a1 >= 0)
      {
        v5 = a1 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v5 = a1 & 0xFFFFFFFFFFFFLL | 0xC000000000000000;
      }

      v6 = type metadata accessor for __SharedStringStorage();
      result = swift_allocObject(v6, 0x31, 7uLL);
      result[2] = 0;
      result[3] = v4;
      *(result + 48) = 1;
      result[4] = v5;
      result[5] = 0;
      return result;
    }

    return swift_unknownObjectRetain(IndirectTaggedPointerString);
  }

  if ((a2 & 0x4000000000000000) == 0 || (v8 = a2, result = _swift_stdlib_CFStringCreateTaggedPointerString(), a2 = v8, !result))
  {
    v14 = a2;
    a2;
    _StringGuts.grow(_:)(16);
    v10 = String._bridgeToObjectiveCImpl()(a1, v14, v9);
    v14;
    return v10;
  }

  return result;
}

uint64_t _getErrorCode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(a3 + 16))(a2, a3);
  (*(v5 + 8))(v7, a2);
  return v8;
}

uint64_t _getErrorUserInfoNSDictionary<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(a3 + 24))(a2, a3);
  (*(v5 + 8))(v7, a2);
  return v8;
}

uint64_t _getErrorEmbeddedNSErrorIndirect<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(a3 + 32))(a2, a3);
  (*(v5 + 8))(v7, a2);
  return v8;
}

void swift_errorInMain(uint64_t a1)
{
  v2 = 0xD00000000000001BLL;
  v3 = _StringGuts.init(_initialCapacity:)(29);
  v13 = v4;
  v53 = v3;
  v54 = v4;
  v14 = 0x800000018066D000;
  v15 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v15 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v15 || (v3 & ~v4 & 0x2000000000000000) != 0)
  {
    if (("Swift/StringBridge.swift" & 0x2000000000000000 & v4) != 0 && (v16 = specialized _SmallString.init(_:appending:)(v3, v4, 0xD00000000000001BLL, 0x800000018066D000), (v18 & 1) == 0))
    {
      v2 = v16;
      v20 = v17;
      v13;
      v53 = v2;
      v54 = v20;
      v14 = v20;
    }

    else
    {
      if (("Swift/StringBridge.swift" & 0x2000000000000000) != 0)
      {
        v19 = ("Swift/StringBridge.swift" >> 56) & 0xF;
      }

      else
      {
        v19 = 27;
      }

      _StringGuts.append(_:)(0xD00000000000001BLL, 0x800000018066D000, 0, v19, v5, v6, v7, v8, v9, v10, v11, v12);
      v2 = v53;
      v14 = v54;
    }
  }

  else
  {
    v4;
    v53 = 0xD00000000000001BLL;
    v54 = 0x800000018066D000;
  }

  v50 = 0;
  v51 = 0xE000000000000000;
  v52 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
  _debugPrint_unlocked<A, B>(_:_:)(&v52, &v50, v21, &type metadata for String, &protocol witness table for String);
  v30 = v50;
  v31 = v51;
  v32 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v32 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32 && (v2 & ~v14 & 0x2000000000000000) == 0)
  {
    v14;
    v53 = v30;
    v54 = v31;
    goto LABEL_26;
  }

  if ((v14 & 0x2000000000000000) != 0)
  {
    if ((v51 & 0x2000000000000000) != 0)
    {
      v42 = specialized _SmallString.init(_:appending:)(v2, v14, v50, v51);
      if ((v44 & 1) == 0)
      {
        v48 = v42;
        v49 = v43;
        v14;
        v31;
        v53 = v48;
        v54 = v49;
        v31 = v49;
        v30 = v48;
LABEL_26:
        v45 = v30 & 0xFFFFFFFFFFFFLL;
        if ((v31 & 0x2000000000000000) != 0)
        {
          v45 = HIBYTE(v31) & 0xF;
        }

        if (v45 || (v30 & ~v31 & 0x2000000000000000) != 0)
        {
          if ((v31 & 0x2000000000000000) != 0)
          {
            v31;
            v47 = 0xA000000000000000;
            if (!(v31 & 0x80808080808080 | v30 & 0x8080808080808080))
            {
              v47 = 0xE000000000000000;
            }

            v46 = v47 & 0xFF00000000000000 | ((HIBYTE(v31) & 0xF) << 56) | v31 & 0xFFFFFFFFFFFFFFLL;
          }

          else
          {
            _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v33, v34, v35, v36, v37, v38, v39, v40);
            v30 = v53;
            v46 = v54;
          }
        }

        else
        {
          v31;
          v30 = 0;
          v46 = 0xE000000000000000;
        }

        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v30, v46, "Swift/ErrorType.swift", 0x15uLL, 2, 0xFEuLL, 0);
      }

      goto LABEL_24;
    }
  }

  else if ((v51 & 0x2000000000000000) != 0)
  {
LABEL_24:
    v41 = HIBYTE(v31) & 0xF;
    goto LABEL_25;
  }

  v41 = v50 & 0xFFFFFFFFFFFFLL;
LABEL_25:
  _StringGuts.append(_:)(v30, v31, 0, v41, v22, v23, v24, v25, v26, v27, v28, v29);
  v31;
  v30 = v53;
  v31 = v54;
  goto LABEL_26;
}

uint64_t _typeName(_:qualified:)(Class *a1, char a2)
{
  TypeName = swift_getTypeName(a1, a2);
  if (v3 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = TypeName;
  v5 = v3;
  v6 = validateUTF8(_:)(TypeName, v3);
  if ((v6 & 0x8000000000000000) == 0)
  {
    return specialized static String._uncheckedFromUTF8(_:isASCII:)(v4, v5, v6 & 1, v9);
  }

  return repairUTF8(_:firstKnownBrokenRange:)(v4, v5, v7, v8);
}

uint64_t Error<>._code.getter(Class *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness(0, a3, a1, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  v8 = v7;
  v9 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v18 - v11;
  v13 = *(a4 + 8);
  v14 = (*(v13 + 64))();
  (*(a3 + 24))(a1, a3);
  if (v14)
  {
    v15 = _ss11numericCastyq_xSzRzSzR_r0_lFxSiSzRzSiRs_r0_lIetnd_Tpq5_0(v12, v8, v13);
  }

  else
  {
    v15 = specialized numericCast<A, B>(_:)(v12, v8, v13);
  }

  v16 = v15;
  (*(v9 + 8))(v12, v8);
  return v16;
}

char *AnyIterator.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for _IteratorBox(0, a3, a4, a4);
  v7 = swift_allocObject(v6, *(v6 + 48), *(v6 + 52));
  (*(*(a3 - 8) + 32))(&v7[*(*v7 + 120)], a1, a3);
  return v7;
}

char *_IteratorBox.__allocating_init(_:)(uint64_t a1)
{
  v3 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));
  (*(*(*(v1 + 104) - 8) + 32))(&v3[*(*v3 + 120)], a1);
  return v3;
}

void *AnyIterator.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for _ClosureBasedIterator(255, a3, a3, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ClosureBasedIterator<A>, v6, v7);
  v10 = type metadata accessor for _IteratorBox(0, v6, WitnessTable, v9);
  result = swift_allocObject(v10, 0x20, 7uLL);
  result[2] = a1;
  result[3] = a2;
  return result;
}

__objc2_class **_ss17_NativeDictionaryVyxq_GSTsST22_copyToContiguousArrays0eF0Vy7ElementQzGyFTW_0(uint64_t a1, uint64_t a2)
{
  v3 = specialized Sequence._copyToContiguousArray()(v2, a1, a2);
  *v2;
  return v3;
}

void _IteratorBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 104) - 8) + 8))(v0 + *(*v0 + 120));

  swift_deallocClassInstance(v0);
}

void _AnyCollectionBox.__ivar_destroyer()
{
  swift_unknownObjectRelease(*(v0 + 16));
  v1 = *(v0 + 32);

  swift_unknownObjectRelease(v1);
}

void _AnyCollectionBox.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  v0;
  swift_unknownObjectRelease(v1);
  v2 = *(v0 + 32);
  v0;
  swift_unknownObjectRelease(v2);

  swift_deallocClassInstance(v0);
}

void _AnyCollectionBox.subscript.getter()
{
  _abstract(file:line:)("Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x137uLL);
}

{
  _abstract(file:line:)("Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x18FuLL);
}

void *_AnyCollectionBox.__allocating_init(_startIndex:endIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject(v4, 0x30, 7uLL);
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *_AnyCollectionBox.init(_startIndex:endIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t _AnyCollectionBox.deinit()
{
  swift_unknownObjectRelease(*(v0 + 16));
  swift_unknownObjectRelease(*(v0 + 32));
  return v0;
}

void _AnyBidirectionalCollectionBox.__deallocating_deinit()
{
  swift_unknownObjectRelease(*(v0 + 16));
  swift_unknownObjectRelease(*(v0 + 32));

  swift_deallocClassInstance(v0);
}

char *_SequenceBox._makeIterator()(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v20 - v6;
  v8 = *(v3 + 216);
  swift_getAssociatedTypeWitness(0, v8, v4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v20 - v13;
  (*(v5 + 16))(v7, v2 + *(v3 + 224), v4);
  (*(v8 + 32))(v4, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v10, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v17 = type metadata accessor for _IteratorBox(0, v10, AssociatedConformanceWitness, v16);
  v18 = swift_allocObject(v17, *(v17 + 48), *(v17 + 52));
  (*(v11 + 32))(&v18[*(*v18 + 120)], v14, v10);
  return v18;
}

uint64_t _SequenceBox._underestimatedCount.getter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v10 - v6;
  (*(v5 + 16))(&v10 - v6, v2 + *(v3 + 224), v4);
  v8 = (*(*(v3 + 216) + 40))(v4);
  (*(v5 + 8))(v7, v4);
  return v8;
}

__objc2_class **_SequenceBox._map<A>(_:)(uint64_t a1, uint64_t a2, char *a3)
{
  v7 = *v3;
  v8 = *(*v3 + 208);
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v14[-v10];
  (*(v9 + 16))(&v14[-v10], v3 + *(v7 + 224), v8);
  v15 = v8;
  v16 = a3;
  v17 = *(v7 + 216);
  v18 = a1;
  v19 = a2;
  v12 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyADsAE_pqd__Isgnrzr_xABsAE_pSTRzsAE_pRsd_0_r_0_lIetMgnozo_Tpq5Tm(partial apply for thunk for @callee_guaranteed (@in_guaranteed A.Sequence.Element) -> (@out A1, @error @owned Error), v14, v8, a3, v17);
  (*(v9 + 8))(v11, v8);
  return v12;
}

__objc2_class **_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_s6UInt32Vs5NeverOTg506_sSS17def38V6append10contentsOfyx_tSTRzs0A0O0B0V7b7RtzlFs6G8VAHXEfU_Tf1cn_n(unint64_t a1, unint64_t a2)
{
  v4._rawBits = specialized Collection.count.getter(a1, a2)._rawBits;
  v26 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4._rawBits & ~(v4._rawBits >> 63), 0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if ((v4._rawBits & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = v26;
  for (i = 0; v4._rawBits; --v4._rawBits)
  {
    if (i >= v6)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v13 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((i << 16));
      scalarLength = v13.scalarLength;
      value = v13._0._value;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v24 = a1;
        v25 = a2 & 0xFFFFFFFFFFFFFFLL;
        v9 = &v24;
      }

      else
      {
        v9 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((a1 & 0x1000000000000000) == 0)
        {
          v9 = _StringObject.sharedUTF8.getter(a1, a2);
        }
      }

      value = _decodeScalar(_:startingAt:)(v9, scalarLength, i);
    }

    v26 = v7;
    v12 = v7[2];
    v11 = v7[3];
    if (v12 >= v11 >> 1)
    {
      v21 = value;
      v20 = scalarLength;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v11 > 1, v12 + 1, 1);
      scalarLength = v20;
      value = v21;
      v7 = v26;
    }

    i += scalarLength;
    v7[2] = (v12 + 1);
    *(v7 + v12 + 8) = value;
  }

  for (; i < v6; *(v7 + v17 + 8) = v15)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v18 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((i << 16));
      scalarLength = v18.scalarLength;
      v15 = v18._0._value;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v24 = a1;
        v25 = a2 & 0xFFFFFFFFFFFFFFLL;
        v14 = &v24;
      }

      else
      {
        v14 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((a1 & 0x1000000000000000) == 0)
        {
          v14 = _StringObject.sharedUTF8.getter(a1, a2);
        }
      }

      v15 = _decodeScalar(_:startingAt:)(v14, scalarLength, i);
    }

    v26 = v7;
    v17 = v7[2];
    v16 = v7[3];
    if (v17 >= v16 >> 1)
    {
      v23 = v15;
      v22 = scalarLength;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v16 > 1, v17 + 1, 1);
      scalarLength = v22;
      v15 = v23;
      v7 = v26;
    }

    i += scalarLength;
    v7[2] = (v17 + 1);
  }

  return v7;
}

__objc2_class **_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSs17UnicodeScalarViewV_s6UInt32Vs5NeverOTg506_sSS17def38V6append10contentsOfyx_tSTRzs0A0O0B0V7b7RtzlFs6G8VAHXEfU_Tf1cn_n(Swift::String::Index a1, Swift::String::Index a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  v8._rawBits = specialized Collection.count.getter(a1, a2, a3, a4)._rawBits;
  v129 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8._rawBits & ~(v8._rawBits >> 63), 0);
  if ((v8._rawBits & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v10 = v129;
  v11 = a2._rawBits >> 14;
  if (v8._rawBits)
  {
    v12 = (v5 >> 59) & 1;
    if ((a4 & 0x1000000000000000) == 0)
    {
      LOBYTE(v12) = 1;
    }

    v13 = 4 << v12;
    v14 = a1._rawBits >> 14;
    v15 = a4 & 0xFFFFFFFFFFFFFFLL;
    v16 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v17 = HIBYTE(a4) & 0xF;
    }

    else
    {
      v17 = v5 & 0xFFFFFFFFFFFFLL;
    }

    v18._rawBits = a1._rawBits;
    do
    {
      v19 = v18._rawBits >> 14;
      if (v18._rawBits >> 14 == v11)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v20 = v18._rawBits & 0xC;
      v21 = (v18._rawBits & 1) == 0 || v20 == v13;
      v22 = v21;
      if (v21)
      {
        rawBits = v18._rawBits;
        if (v20 == v13)
        {
          v119 = v14;
          v122 = v11;
          v52 = v13;
          v111 = v10;
          v53 = v15;
          v125 = v16;
          v104 = v17;
          v116 = v22;
          rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v18)._rawBits;
          v22 = v116;
          v17 = v104;
          v11 = v122;
          v16 = v125;
          v15 = v53;
          v10 = v111;
          v14 = v119;
          v13 = v52;
          v19 = rawBits >> 14;
          if (rawBits >> 14 < v119)
          {
            goto LABEL_107;
          }
        }

        else if (v19 < v14)
        {
          goto LABEL_107;
        }

        if (v19 >= v11)
        {
          goto LABEL_107;
        }

        if ((rawBits & 1) == 0)
        {
          v117 = v14;
          v120 = v11;
          v24 = v13;
          v109 = v10;
          v25 = v15;
          v123 = v16;
          v102 = v17;
          v114 = v22;
          rawBits = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
          v22 = v114;
          v17 = v102;
          v11 = v120;
          v16 = v123;
          v15 = v25;
          v10 = v109;
          v14 = v117;
          v13 = v24;
        }
      }

      else if (v19 < v14 || (rawBits = v18._rawBits, v19 >= v11))
      {
LABEL_107:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v118 = v14;
      v121 = v11;
      v108 = v15;
      v110 = v10;
      v124 = v16;
      v115 = v22;
      if ((a4 & 0x1000000000000000) != 0)
      {
        v27 = v17;
        v28 = v13;
        v54 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((rawBits & 0xFFFFFFFFFFFF0000));
        scalarLength = v54.scalarLength;
        value = v54._0._value;
      }

      else
      {
        v26 = rawBits >> 16;
        v27 = v17;
        v28 = v13;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v127 = v5;
          v128 = v15;
          v29 = &v127;
        }

        else
        {
          v29 = v16;
          if ((v5 & 0x1000000000000000) == 0)
          {
            v103 = v26;
            v29 = _StringObject.sharedUTF8.getter(v5, a4);
            v26 = v103;
          }
        }

        value = _decodeScalar(_:startingAt:)(v29, scalarLength, v26);
      }

      v31 = value;
      v13 = v28;
      v17 = v27;
      v107 = v5;
      if (v115)
      {
        v15 = v108;
        v16 = v124;
        if (v20 == v28)
        {
          v56 = value;
          v57._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v18)._rawBits;
          v31 = v56;
          v5 = v107;
          v17 = v27;
          v16 = v124;
          v15 = v108;
          v13 = v28;
          v18._rawBits = v57._rawBits;
          if (v27 <= v57._rawBits >> 16)
          {
            goto LABEL_107;
          }
        }

        else if (v27 <= v18._rawBits >> 16)
        {
          goto LABEL_107;
        }

        if ((v18._rawBits & 1) == 0)
        {
          v100 = v13;
          v32 = v15;
          v33 = v16;
          v34 = v17;
          v35 = v31;
          v36._rawBits = _StringGuts.scalarAlignSlow(_:)(v18)._rawBits;
          v31 = v35;
          v5 = v107;
          v17 = v34;
          v16 = v33;
          v15 = v32;
          v13 = v100;
          v18._rawBits = v18._rawBits & 0xC | v36._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
        }
      }

      else
      {
        v15 = v108;
        v16 = v124;
        if (v27 <= v18._rawBits >> 16)
        {
          goto LABEL_107;
        }
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        v40._rawBits = v18._rawBits;
        v41 = v13;
        v42 = v15;
        v43 = v16;
        v44 = v17;
        v45 = v31;
        v46._rawBits = String.UnicodeScalarView._foreignIndex(after:)(v40)._rawBits;
        v31 = v45;
        v17 = v44;
        v16 = v43;
        v15 = v42;
        v13 = v41;
        v18._rawBits = v46._rawBits;
        v14 = v118;
        v11 = v121;
        v10 = v110;
      }

      else
      {
        v37 = v18._rawBits >> 16;
        v14 = v118;
        v11 = v121;
        v10 = v110;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v127 = v5;
          v128 = v15;
          v39 = *(&v127 + v37);
        }

        else
        {
          v38 = v16;
          if ((v5 & 0x1000000000000000) == 0)
          {
            v58 = v13;
            v59 = v15;
            v60 = v16;
            v106 = v17;
            v99 = v31;
            v38 = _StringObject.sharedUTF8.getter(v5, a4);
            v31 = v99;
            v17 = v106;
            v16 = v60;
            v15 = v59;
            v10 = v110;
            v14 = v118;
            v11 = v121;
            v13 = v58;
          }

          v39 = v38[v37];
        }

        v47 = v39;
        v48 = __clz(v39 ^ 0xFF) - 24;
        if (v47 >= 0)
        {
          LOBYTE(v48) = 1;
        }

        v18._rawBits = ((v37 + v48) << 16) | 5;
      }

      v129 = v10;
      v50 = v10[2];
      v49 = v10[3];
      v51 = (v50 + 1);
      if (v50 >= v49 >> 1)
      {
        v101 = v13;
        v105 = v17;
        v55 = v15;
        v98 = v31;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v49 > 1, v50 + 1, 1);
        v31 = v98;
        v13 = v101;
        v17 = v105;
        v11 = v121;
        v16 = v124;
        v15 = v55;
        v51 = (v50 + 1);
        v14 = v118;
        v10 = v129;
      }

      v10[2] = v51;
      *(v10 + v50 + 8) = v31;
      --v8._rawBits;
      v5 = v107;
    }

    while (v8._rawBits);
  }

  else
  {
    v18._rawBits = a1._rawBits;
  }

  v61 = v18._rawBits >> 14;
  if (v18._rawBits >> 14 != v11)
  {
    v63 = (v5 >> 59) & 1;
    if ((a4 & 0x1000000000000000) == 0)
    {
      LOBYTE(v63) = 1;
    }

    v64 = 4 << v63;
    v65 = a1._rawBits >> 14;
    v66 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v66 = v5 & 0xFFFFFFFFFFFFLL;
    }

    v126 = v66;
    do
    {
      v67 = v18._rawBits & 0xC;
      v68 = (v18._rawBits & 1) == 0 || v67 == v64;
      v69 = v68;
      if (v68)
      {
        v70 = v18._rawBits;
        if (v67 == v64)
        {
          v79 = v11;
          v70 = _StringGuts._slowEnsureMatchingEncoding(_:)(v18)._rawBits;
          v11 = v79;
        }

        if (v70 >> 14 < v65 || v70 >> 14 >= v11)
        {
          goto LABEL_107;
        }

        if ((v70 & 1) == 0)
        {
          v71 = v11;
          v70 = _StringGuts.scalarAlignSlow(_:)(v70)._rawBits;
          v11 = v71;
        }
      }

      else
      {
        if (v61 < v65)
        {
          goto LABEL_107;
        }

        v70 = v18._rawBits;
        if (v61 >= v11)
        {
          goto LABEL_107;
        }
      }

      v72 = v65;
      if ((a4 & 0x1000000000000000) != 0)
      {
        v74 = v11;
        v80 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v70 & 0xFFFFFFFFFFFF0000));
        scalarLength = v80.scalarLength;
        v76 = v80._0._value;
        if (!v69)
        {
          goto LABEL_92;
        }
      }

      else
      {
        v73 = v70 >> 16;
        v74 = v11;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v127 = v5;
          v128 = a4 & 0xFFFFFFFFFFFFFFLL;
          v75 = &v127;
        }

        else
        {
          v75 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v5 & 0x1000000000000000) == 0)
          {
            v112 = v73;
            v75 = _StringObject.sharedUTF8.getter(v5, a4);
            v73 = v112;
          }
        }

        v76 = _decodeScalar(_:startingAt:)(v75, scalarLength, v73);
        if (!v69)
        {
LABEL_92:
          if (v126 <= v18._rawBits >> 16)
          {
            goto LABEL_107;
          }

          goto LABEL_93;
        }
      }

      if (v67 == v64)
      {
        v93._rawBits = v18._rawBits;
        v94 = v76;
        v95._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v93)._rawBits;
        v76 = v94;
        v18._rawBits = v95._rawBits;
      }

      if (v126 <= v18._rawBits >> 16)
      {
        goto LABEL_107;
      }

      if ((v18._rawBits & 1) == 0)
      {
        v77 = v76;
        v78._rawBits = _StringGuts.scalarAlignSlow(_:)(v18)._rawBits;
        v76 = v77;
        v18._rawBits = v18._rawBits & 0xC | v78._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
      }

LABEL_93:
      if ((a4 & 0x1000000000000000) != 0)
      {
        v84._rawBits = v18._rawBits;
        v85 = v76;
        v86._rawBits = String.UnicodeScalarView._foreignIndex(after:)(v84)._rawBits;
        v76 = v85;
        v18._rawBits = v86._rawBits;
        v11 = v74;
        v65 = v72;
      }

      else
      {
        v81 = v18._rawBits >> 16;
        v11 = v74;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v127 = v5;
          v128 = a4 & 0xFFFFFFFFFFFFFFLL;
          v83 = *(&v127 + v81);
          v65 = v72;
        }

        else
        {
          v82 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v65 = v72;
          if ((v5 & 0x1000000000000000) == 0)
          {
            v96 = v11;
            v97 = v76;
            v82 = _StringObject.sharedUTF8.getter(v5, a4);
            v76 = v97;
            v11 = v96;
          }

          v83 = v82[v81];
        }

        v87 = v83;
        v88 = __clz(v83 ^ 0xFF) - 24;
        if (v87 >= 0)
        {
          LOBYTE(v88) = 1;
        }

        v18._rawBits = ((v81 + v88) << 16) | 5;
      }

      v129 = v10;
      v90 = v10[2];
      v89 = v10[3];
      if (v90 >= v89 >> 1)
      {
        v113 = v65;
        v91 = v11;
        v92 = v76;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v89 > 1, v90 + 1, 1);
        v76 = v92;
        v11 = v91;
        v65 = v113;
        v10 = v129;
      }

      v10[2] = (v90 + 1);
      *(v10 + v90 + 8) = v76;
      v61 = v18._rawBits >> 14;
    }

    while (v18._rawBits >> 14 != v11);
  }

  return v10;
}

__objc2_class **_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyADs5NeverOs6UInt32VIsgnrzr_xSayAIGAGSTRzAIRsd__AGRsd_0_r_0_lIetMgnozo_Tp5s15CollectionOfOneVys7UnicodeO6ScalarVG_Tg506_sSS17ij42ViewV6append10contentsOfyx_tSTRzs0A0O0B0V7b7RtzlFs6E8VAHXEfU_Tf1cn_n(int a1)
{
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0);
  result = &_swiftEmptyArrayStorage;
  v3 = qword_1EE3221C0;
  v4 = qword_1EE3221C0 + 1;
  if (qword_1EE3221C0 >= qword_1EE3221C8 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(qword_1EE3221C8 > 1, qword_1EE3221C0 + 1, 1);
    result = &_swiftEmptyArrayStorage;
  }

  qword_1EE3221C0 = v4;
  *(&_swiftEmptyArrayStorage + v3 + 8) = a1;
  return result;
}

__objc2_class **_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyADs5NeverOs6UInt32VIsgnrzr_xSayAIGAGSTRzAIRsd__AGRsd_0_r_0_lIetMgnozo_Tp5s8RepeatedVys7UnicodeO6ScalarVG_Tg506_sSS17gh42ViewV6append10contentsOfyx_tSTRzs0A0O0B0V7b7RtzlFs6E8VAHXEfU_Tf1cn_n(uint64_t a1, int a2)
{
  v3 = a1;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1 & ~(a1 >> 63), 0);
  if (v3 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  for (result = &_swiftEmptyArrayStorage; v3; --v3)
  {
    v7 = result;
    v6 = result[2];
    v5 = result[3];
    if (v6 >= v5 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v5 > 1, &v6->isa + 1, 1);
      result = v7;
    }

    result[2] = (&v6->isa + 1);
    *(result + v6 + 8) = a2;
  }

  return result;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyADs5NeverOs6UInt32VIsgnrzr_xSayAIGAGSTRzAIRsd__AGRsd_0_r_0_lIetMgnozo_Tp5(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, Class *a3, uint64_t a4)
{
  v5 = v4;
  v65 = a1;
  v66 = a2;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v9 = v8;
  v12 = type metadata accessor for Optional(0, v8, v10, v11);
  v55 = *(v12 - 8);
  v56 = v12;
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v61 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v63 = &v53 - v18;
  v67 = *(v9 - 8);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v62 = &v53 - v21;
  v22 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v69 = v26;
  v57 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v53 - v28;
  v64 = a4;
  v30 = (*(a4 + 40))(a3, a4);
  v71 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30 & ~(v30 >> 63), 0);
  v31 = v71;
  (*(v22 + 16))(v25, v68, a3);
  v32 = v64;
  v33 = *(v64 + 32);
  v68 = v29;
  v33(a3, v64);
  if (v30 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v30)
  {
    v59 = (v67 + 8);
    v60 = (v67 + 48);
    v34 = v69;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v32, a3, v69, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v36 = (AssociatedConformanceWitness + 16);
    v37 = *(AssociatedConformanceWitness + 16);
    while (1)
    {
      v38 = v61;
      v64 = AssociatedConformanceWitness;
      v58 = v36;
      v54 = v37;
      v37(v34, AssociatedConformanceWitness);
      if ((*v60)(v38, 1, v9) == 1)
      {
        break;
      }

      v65(&v70, v38);
      if (v5)
      {
        goto LABEL_21;
      }

      v5 = 0;
      v39 = *v59;
      v53 = v9;
      v39(v38, v9);
      v40 = v70;
      v71 = v31;
      v42 = *(v31 + 16);
      v41 = *(v31 + 24);
      if (v42 >= v41 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v41 > 1, v42 + 1, 1);
        v31 = v71;
      }

      *(v31 + 16) = v42 + 1;
      *(v31 + 4 * v42 + 32) = v40;
      --v30;
      v9 = v53;
      v37 = v54;
      v34 = v69;
      AssociatedConformanceWitness = v64;
      v36 = v58;
      if (!v30)
      {
        goto LABEL_11;
      }
    }

LABEL_22:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v34 = v69;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v32, a3, v69, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
LABEL_11:
  v43 = v63;
  v60 = *(AssociatedConformanceWitness + 16);
  v61 = (AssociatedConformanceWitness + 16);
  (v60)(v34, AssociatedConformanceWitness);
  v44 = v67;
  v38 = (v67 + 48);
  v59 = *(v67 + 48);
  v45 = (v59)(v43, 1, v9);
  v46 = v62;
  if (v45 != 1)
  {
    v64 = AssociatedConformanceWitness;
    v58 = *(v44 + 32);
    v67 = v44 + 32;
    v48 = (v44 + 8);
    while (1)
    {
      v58(v46, v43, v9);
      v65(&v70, v46);
      if (v5)
      {
        break;
      }

      v5 = 0;
      (*v48)(v46, v9);
      v49 = v70;
      v71 = v31;
      v51 = *(v31 + 16);
      v50 = *(v31 + 24);
      if (v51 >= v50 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v50 > 1, v51 + 1, 1);
        v31 = v71;
      }

      *(v31 + 16) = v51 + 1;
      *(v31 + 4 * v51 + 32) = v49;
      v43 = v63;
      v34 = v69;
      (v60)(v69, v64);
      v52 = (v59)(v43, 1, v9);
      v46 = v62;
      if (v52 == 1)
      {
        goto LABEL_12;
      }
    }

    (*v48)(v46, v9);
    (*(v57 + 8))(v68, v69);
    v31;
    __break(1u);
LABEL_21:
    (*(v57 + 8))(v68, v69);
    v31;
    (*v59)(v38, v9);
    __break(1u);
    goto LABEL_22;
  }

LABEL_12:
  (*(v57 + 8))(v68, v34);
  (*(v55 + 8))(v43, v56);
  return v31;
}

__objc2_class **_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyADsAE_pqd__Isgnrzr_xABsAE_pSTRzsAE_pRsd_0_r_0_lIetMgnozo_Tpq5Tm(void (*a1)(char *, uint64_t *), uint64_t a2, Class *a3, char *a4, uint64_t a5)
{
  v7 = v6;
  v71 = a2;
  v72 = a4;
  v70 = a1;
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v67 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v57 = &v57 - v13;
  swift_getAssociatedTypeWitness(255, a5, v14, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v16 = v15;
  v19 = type metadata accessor for Optional(0, v15, v17, v18);
  v59 = *(v19 - 8);
  v60 = v19;
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v66 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v63 = &v57 - v25;
  v68 = v16;
  v64 = *(v16 - 8);
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v61 = &v57 - v28;
  v29 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v27, v30);
  v32 = &v57 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v73 = v33;
  v62 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v57 - v35;
  v37 = (*(a5 + 40))(a3, a5);
  v75 = &_swiftEmptyArrayStorage;
  v69 = type metadata accessor for ContiguousArray(0, v72, v38, v39);
  ContiguousArray.reserveCapacity(_:)(v37);
  (*(v29 + 16))(v32, v5, a3);
  v40 = *(a5 + 32);
  v72 = v36;
  v40(a3, a5);
  if (v37 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v37)
  {
    v65 = (v64 + 48);
    v58 = (v64 + 8);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v73, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v42 = *(AssociatedConformanceWitness + 16);
    v43 = v67;
    v44 = v68;
    v45 = v66;
    while (1)
    {
      v46 = AssociatedConformanceWitness;
      v47 = v42;
      v42(v73, AssociatedConformanceWitness);
      if ((*v65)(v45, 1, v44) == 1)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v70(v45, &v74);
      if (v7)
      {
        break;
      }

      v7 = 0;
      (*v58)(v45, v44);
      ContiguousArray.append(_:)(v43, v69);
      --v37;
      AssociatedConformanceWitness = v46;
      v42 = v47;
      if (!v37)
      {
        v48 = v73;
        goto LABEL_9;
      }
    }

    (*(v62 + 8))(v72, v73);
    v75;
    return (*v58)(v45, v44);
  }

  else
  {
    v48 = v73;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v73, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v44 = v68;
LABEL_9:
    v49 = *(AssociatedConformanceWitness + 16);
    v67 = (AssociatedConformanceWitness + 16);
    v68 = AssociatedConformanceWitness;
    v66 = v49;
    (v49)(v48, AssociatedConformanceWitness);
    v50 = v63;
    v51 = v64;
    v65 = *(v64 + 48);
    v52 = (v65)(v63, 1, v44);
    v53 = v61;
    if (v52 == 1)
    {
LABEL_13:
      (*(v62 + 8))(v72, v73);
      (*(v59 + 8))(v50, v60);
      return v75;
    }

    else
    {
      v64 = *(v51 + 32);
      v54 = (v51 + 8);
      v55 = v57;
      while (1)
      {
        (v64)(v53, v50, v44);
        v70(v53, &v74);
        if (v7)
        {
          break;
        }

        v7 = 0;
        (*v54)(v53, v44);
        ContiguousArray.append(_:)(v55, v69);
        (v66)(v73, v68);
        if ((v65)(v50, 1, v44) == 1)
        {
          goto LABEL_13;
        }
      }

      (*v54)(v53, v44);
      (*(v62 + 8))(v72, v73);
      return v75;
    }
  }
}

__objc2_class **Sequence.filter(_:)(uint64_t (*a1)(char *), uint64_t a2, Class *a3, uint64_t a4)
{
  v54 = a1;
  v55 = a2;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v11 = type metadata accessor for Optional(0, v7, v9, v10);
  v46 = *(v11 - 8);
  v47 = v11;
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v45 - v14;
  v58 = *(v8 - 8);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v51 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v45 - v20;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v23 = v22;
  v48 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v45 - v25;
  v59 = &_swiftEmptyArrayStorage;
  (*(a4 + 32))(a3, a4);
  v27 = a4;
  v28 = v26;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v27, a3, v23, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v31 = AssociatedConformanceWitness + 16;
  v30 = *(AssociatedConformanceWitness + 16);
  v56 = v23;
  v53 = v30;
  v30(v23, AssociatedConformanceWitness);
  v32 = v58;
  v33 = v58 + 48;
  v52 = *(v58 + 48);
  if (v52(v15, 1, v8) == 1)
  {
LABEL_2:
    (*(v48 + 8))(v28, v56);
    (*(v46 + 8))(v15, v47);
    return v59;
  }

  else
  {
    v57 = *(v32 + 32);
    v58 = v32 + 32;
    v49 = v33;
    v50 = (v32 + 8);
    v57(v21, v15, v8);
    while (1)
    {
      v35 = v54(v21);
      if (v4)
      {
        break;
      }

      if (v35)
      {
        v36 = v15;
        v37 = v31;
        v38 = AssociatedConformanceWitness;
        v39 = v28;
        v40 = v51;
        v57(v51, v21, v8);
        v43 = type metadata accessor for ContiguousArray(0, v8, v41, v42);
        v44 = v40;
        v28 = v39;
        AssociatedConformanceWitness = v38;
        v31 = v37;
        v15 = v36;
        ContiguousArray.append(_:)(v44, v43);
      }

      else
      {
        (*v50)(v21, v8);
      }

      v53(v56, AssociatedConformanceWitness);
      if (v52(v15, 1, v8) == 1)
      {
        goto LABEL_2;
      }

      v57(v21, v15, v8);
    }

    (*v50)(v21, v8);
    (*(v48 + 8))(v28, v56);
    return v59;
  }
}

uint64_t _SequenceBox._forEach(_:)(void (*a1)(char *), uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 208);
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v11 - v8;
  (*(v7 + 16))(&v11 - v8, v2 + *(v5 + 224), v6);
  Sequence.forEach(_:)(a1, a2, v6, *(v5 + 216));
  return (*(v7 + 8))(v9, v6);
}

Swift::UInt64 specialized Sequence.forEach(_:)(Swift::String::Index position, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = a2 >> 14;
  v6 = position._rawBits >> 14;
  if (position._rawBits >> 14 != a2 >> 14)
  {
    v9 = (a3 >> 59) & 1;
    if ((a4 & 0x1000000000000000) == 0)
    {
      LOBYTE(v9) = 1;
    }

    v10 = 4 << v9;
    v22 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v23 = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v11 = a3 & 0xFFFFFFFFFFFFLL;
    }

    v25 = v11;
    do
    {
      v12 = position._rawBits & 0xC;
      rawBits = position._rawBits;
      if (v12 == v10)
      {
        v20 = position._rawBits;
        rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(position)._rawBits;
        position._rawBits = v20;
      }

      if (rawBits >> 14 < v6 || rawBits >> 14 >= v5)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        v18 = position._rawBits;
        v15 = String.UTF8View._foreignSubscript(position:)(rawBits);
        position._rawBits = v18;
        if (v12 != v10)
        {
          goto LABEL_18;
        }
      }

      else if ((a4 & 0x2000000000000000) != 0)
      {
        v24[0] = a3;
        v24[1] = v23;
        v15 = *(v24 + (rawBits >> 16));
        if (v12 != v10)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v14 = v22;
        if ((a3 & 0x1000000000000000) == 0)
        {
          v21 = position._rawBits;
          v14 = _StringObject.sharedUTF8.getter(a3, a4);
          position._rawBits = v21;
        }

        v15 = v14[rawBits >> 16];
        if (v12 != v10)
        {
LABEL_18:
          if ((a4 & 0x1000000000000000) != 0)
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }
      }

      position._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(position)._rawBits;
      if ((a4 & 0x1000000000000000) != 0)
      {
LABEL_22:
        if (v25 <= position._rawBits >> 16)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v16 = v4;
        v17 = String.UTF8View._foreignIndex(after:)(position)._rawBits;
        goto LABEL_24;
      }

LABEL_19:
      v16 = v4;
      v17 = (position._rawBits & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_24:
      Hasher._combine(_:)(v15);
      position._rawBits = v17;
      v4 = v16;
    }

    while (v5 != v17 >> 14);
  }

  return position._rawBits;
}

Swift::UInt64 specialized Sequence.forEach(_:)(Swift::String::Index position, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t *a5)
{
  v6 = a2 >> 14;
  v7 = position._rawBits >> 14;
  if (position._rawBits >> 14 != a2 >> 14)
  {
    v10 = (a3 >> 59) & 1;
    if ((a4 & 0x1000000000000000) == 0)
    {
      LOBYTE(v10) = 1;
    }

    v11 = 4 << v10;
    v35 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v36 = a4 & 0xFFFFFFFFFFFFFFLL;
    v12 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v12 = a3 & 0xFFFFFFFFFFFFLL;
    }

    v37 = v12;
    do
    {
      v13 = position._rawBits & 0xC;
      rawBits = position._rawBits;
      if (v13 == v11)
      {
        v41 = v11;
        v18 = position._rawBits;
        v19 = a3;
        v20._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(position)._rawBits;
        a3 = v19;
        rawBits = v20._rawBits;
        position._rawBits = v18;
        v11 = v41;
      }

      if (rawBits >> 14 < v7 || rawBits >> 14 >= v6)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        v21 = position._rawBits;
        v22 = a3;
        v23 = String.UTF8View._foreignSubscript(position:)(rawBits);
        a3 = v22;
        v39 = v23;
        position._rawBits = v21;
        if (v13 != v11)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v40[0] = a3;
          v40[1] = v36;
          v16 = *(v40 + (rawBits >> 16));
        }

        else
        {
          v15 = v35;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v41 = position._rawBits;
            v32 = a3;
            v33 = _StringObject.sharedUTF8.getter(a3, a4);
            a3 = v32;
            v15 = v33;
            position._rawBits = v41;
          }

          v16 = v15[rawBits >> 16];
        }

        v39 = v16;
        if (v13 != v11)
        {
LABEL_18:
          if ((a4 & 0x1000000000000000) != 0)
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }
      }

      v24 = a3;
      position._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(position)._rawBits;
      a3 = v24;
      if ((a4 & 0x1000000000000000) != 0)
      {
LABEL_22:
        if (v37 <= position._rawBits >> 16)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v17 = v5;
        v25 = a3;
        v26._rawBits = String.UTF8View._foreignIndex(after:)(position)._rawBits;
        a3 = v25;
        v41 = v26._rawBits;
        goto LABEL_24;
      }

LABEL_19:
      v17 = v5;
      v41 = (position._rawBits & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_24:
      v38 = a3;
      v27 = *a5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*a5);
      *a5 = v27;
      if (isUniquelyReferenced_nonNull_native)
      {
        v29 = a5;
      }

      else
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 16) + 1, 1, v27);
        v29 = a5;
        *a5 = v27;
      }

      v31 = *(v27 + 16);
      v30 = *(v27 + 24);
      v5 = v17;
      position._rawBits = v41;
      if (v31 >= v30 >> 1)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v27);
        position._rawBits = v41;
        *v29 = v27;
      }

      *(v27 + 16) = v31 + 1;
      *(v27 + v31 + 32) = v39;
      a5 = v29;
      a3 = v38;
    }

    while (v6 != position._rawBits >> 14);
  }

  return position._rawBits;
}

uint64_t Sequence.forEach(_:)(void (*a1)(char *), uint64_t a2, Class *a3, int **a4)
{
  v42 = a1;
  v43 = a2;
  v44 = a4;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v36 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v35 - v10;
  v14 = type metadata accessor for Optional(0, v8, v12, v13);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v18 = &v35 - v17;
  v19 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v16, v20);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v24 = v23;
  v37 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = (&v35 - v26);
  (*(v19 + 16))(v22, v45, a3);
  v28 = v44;
  (v44[4])(a3, v44);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v28, a3, v24, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v30 = *(AssociatedConformanceWitness + 16);
  v44 = v27;
  v45 = v24;
  v40 = AssociatedConformanceWitness + 16;
  v41 = AssociatedConformanceWitness;
  v39 = v30;
  (v30)(v24);
  v31 = v36;
  v38 = *(v36 + 48);
  if (v38(v18, 1, v8) != 1)
  {
    v32 = *(v31 + 32);
    v33 = (v31 + 8);
    while (1)
    {
      v32(v11, v18, v8);
      v42(v11);
      if (v4)
      {
        break;
      }

      (*v33)(v11, v8);
      v39(v45, v41);
      if (v38(v18, 1, v8) == 1)
      {
        return (*(v37 + 8))(v44, v45);
      }
    }

    (*v33)(v11, v8);
  }

  return (*(v37 + 8))(v44, v45);
}

uint64_t _SequenceBox.__customContainsEquatableElement(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v11 - v7;
  (*(v6 + 16))(&v11 - v7, v2 + *(v4 + 224), v5);
  v9 = (*(*(v4 + 216) + 48))(a1, v5);
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t _SequenceBox.__copyToContiguousArray()(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  MEMORY[0x1EEE9AC00](a1, a2);
  (*(v5 + 16))(&v8 - v6, v2 + *(v3 + 224), v4);
  return (*(*(v3 + 216) + 56))(v4);
}

char *_SequenceBox.__copyContents(initializing:)(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  v3 = *v2;
  v4 = *(*v2 + 208);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v20 - v6;
  v8 = *(v3 + 216);
  swift_getAssociatedTypeWitness(0, v8, v4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v20 - v13;
  (*(v5 + 16))(v7, v2 + *(v3 + 224), v4);
  (*(v8 + 64))(v14, v20, v21, v4, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v10, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v17 = type metadata accessor for _IteratorBox(0, v10, AssociatedConformanceWitness, v16);
  v18 = swift_allocObject(v17, *(v17 + 48), *(v17 + 52));
  (*(v11 + 32))(&v18[*(*v18 + 120)], v14, v10);
  return v18;
}

char *_SequenceBox._dropFirst(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v26 - v7;
  Sequence = type metadata accessor for DropFirstSequence(0, v5, *(v4 + 216), v9);
  v11 = *(Sequence - 8);
  v13 = MEMORY[0x1EEE9AC00](Sequence, v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v26 - v17;
  (*(v6 + 16))(v8, v2 + *(v4 + 224), v5);
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v6 + 32))(v15, v8, v5);
  *&v15[*(Sequence + 36)] = a1;
  v19 = *(v11 + 32);
  v19(v18, v15, Sequence);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DropFirstSequence<A>, Sequence, v20);
  v23 = type metadata accessor for _SequenceBox(0, Sequence, WitnessTable, v22);
  v24 = swift_allocObject(v23, *(v23 + 48), *(v23 + 52));
  v19(&v24[*(*v24 + 224)], v18, Sequence);
  return v24;
}

char *_SequenceBox.__allocating_init(_base:)(uint64_t a1)
{
  v3 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));
  (*(*(*(v1 + 208) - 8) + 32))(&v3[*(*v3 + 224)], a1);
  return v3;
}

char *_SequenceBox._drop(while:)(uint64_t (*a1)(char *), uint64_t a2)
{
  v48 = a1;
  v49 = a2;
  v3 = *v2;
  v4 = *(*v2 + 216);
  v5 = *(*v2 + 208);
  swift_getAssociatedTypeWitness(0, v4, v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v47 = &v44 - v9;
  v10 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v44 - v12;
  v15 = type metadata accessor for DropWhileSequence(0, v5, v4, v14);
  v45 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = &v44 - v22;
  MEMORY[0x1EEE9AC00](v21, v24);
  v44 = &v44 - v25;
  (*(v10 + 16))(v13, v2 + *(v3 + 224), v5);
  v46 = v15;
  v26 = *(v15 + 36);
  v27 = v19;
  swift_getAssociatedTypeWitness(0, v4, v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v29 = v28;
  (*(*(v28 - 8) + 56))(&v23[v26], 1, 1, v28);
  v30 = v47;
  (*(v4 + 32))(v5, v4);
  v31 = v50;
  DropWhileSequence.init(iterator:predicate:)(v30, v48, v49, v5, v4, v27);
  v34 = type metadata accessor for Optional(0, v29, v32, v33);
  (*(*(v34 - 8) + 8))(&v23[v26], v34);
  if (!v31)
  {
    v35 = *(v45 + 32);
    v36 = v27;
    v37 = v46;
    v35(v23, v36, v46);
    v38 = v44;
    v35(v44, v23, v37);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DropWhileSequence<A>, v37, v39);
    v42 = type metadata accessor for _SequenceBox(0, v37, WitnessTable, v41);
    v30 = swift_allocObject(v42, *(v42 + 48), *(v42 + 52));
    v35(&v30[*(*v30 + 224)], v38, v37);
  }

  return v30;
}

uint64_t Sequence.drop(while:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a1;
  v29 = a2;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v26 - v10;
  v13 = type metadata accessor for DropWhileSequence(0, a3, a4, v12);
  v27 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v26 - v16;
  v18 = *(v15 + 36);
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v20 = v19;
  (*(*(v19 - 8) + 56))(a5 + v18, 1, 1, v19);
  (*(a4 + 32))(a3, a4);
  v21 = v30;
  DropWhileSequence.init(iterator:predicate:)(v11, v28, v29, a3, a4, v17);
  v24 = type metadata accessor for Optional(0, v20, v22, v23);
  if (v21)
  {
    return (*(*(v24 - 8) + 8))(a5 + v18, v24);
  }

  (*(*(v24 - 8) + 8))(a5 + v18, v24);
  return (*(v27 + 32))(a5, v17, v13);
}

__objc2_class **Sequence.dropLast(_:)(int64_t a1, Class *a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v7 = v6;
  v8 = *(v6 - 8);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v44 - v14;
  v18 = type metadata accessor for Optional(0, v7, v16, v17);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v44 - v20;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v57 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v56 = &v44 - v25;
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a1)
  {
    v49 = v12;
    v50 = v24;
    v58 = &_swiftEmptyArrayStorage;
    v59 = &_swiftEmptyArrayStorage;
    v54 = v15;
    v55 = a1;
    v26 = *(a3 + 32);
    &_swiftEmptyArrayStorage;
    v26(a2, a3);
    v27 = v54;
    v28 = v57;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v57, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v53 = *(AssociatedConformanceWitness + 16);
    v53(v28, AssociatedConformanceWitness);
    v52 = *(v8 + 48);
    if (v52(v21, 1, v7) != 1)
    {
      v33 = 0;
      v51 = *(v8 + 32);
      v47 = (v8 + 40);
      v48 = v8 + 16;
      do
      {
        v51(v27, v21, v7);
        v36 = v58[2];
        if (v36 >= v55)
        {
          if (v33 >= v36)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v45 = (*(v8 + 80) + 32) & ~*(v8 + 80);
          v46 = AssociatedConformanceWitness;
          v38 = *(v8 + 16);
          v44 = *(v8 + 72) * v33;
          v39 = v49;
          v38(v49, v58 + v45 + v44, v7);
          v42 = type metadata accessor for ContiguousArray(0, v7, v40, v41);
          ContiguousArray.append(_:)(v39, v42);
          v43 = v58;
          if (!swift_isUniquelyReferenced_nonNull_native(v58))
          {
            v43 = _ContiguousArrayBuffer._consumeAndCreateNew()(v43, *(v42 + 16));
            v58 = v43;
          }

          v27 = v54;
          AssociatedConformanceWitness = v46;
          ContiguousArray._checkSubscript_mutating(_:)(v33);
          (*v47)(v43 + v45 + v44, v27, v7);
          if ((v33 + 1) < v55)
          {
            ++v33;
          }

          else
          {
            v33 = 0;
          }
        }

        else
        {
          v37 = type metadata accessor for ContiguousArray(0, v7, v34, v35);
          ContiguousArray.append(_:)(v27, v37);
        }

        v53(v57, AssociatedConformanceWitness);
      }

      while (v52(v21, 1, v7) != 1);
    }

    (*(v50 + 8))(v56, v57);
    v30 = v59;
    v58;
    return v30;
  }

  else
  {
    v32 = *(a3 + 56);

    return v32(a2, a3);
  }
}

char *_SequenceBox._prefix(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v26 - v7;
  v10 = type metadata accessor for PrefixSequence(0, v5, *(v4 + 216), v9);
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v26 - v17;
  (*(v6 + 16))(v8, v2 + *(v4 + 224), v5);
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v6 + 32))(v15, v8, v5);
  *&v15[*(v10 + 36)] = a1;
  v19 = *(v11 + 32);
  v19(v18, v15, v10);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PrefixSequence<A>, v10, v20);
  v23 = type metadata accessor for _SequenceBox(0, v10, WitnessTable, v22);
  v24 = swift_allocObject(v23, *(v23 + 48), *(v23 + 52));
  v19(&v24[*(*v24 + 224)], v18, v10);
  return v24;
}

uint64_t Sequence.dropFirst(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, uint64_t, uint64_t)@<X6>, uint64_t a5@<X8>)
{
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(*(a2 - 8) + 32))(a5, v5, a2);
  result = a4(0, a2, a3);
  *(a5 + *(result + 36)) = a1;
  return result;
}

uint64_t _SequenceBox._filter(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  v7 = *v3;
  v8 = *(*v3 + 208);
  MEMORY[0x1EEE9AC00](a1, a2);
  (*(v9 + 16))(&v12 - v10, v3 + *(v7 + 224), v8);
  return a3(a1, a2, v8, *(v7 + 216));
}

__objc2_class **Sequence.prefix(while:)(uint64_t (*a1)(char *), uint64_t a2, Class *a3, uint64_t a4)
{
  v45 = a1;
  v46 = a2;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v39 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v44 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v37 - v13;
  v17 = type metadata accessor for Optional(0, v8, v15, v16);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v37 - v19;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v22 = v21;
  v38 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v37 - v24;
  v49 = &_swiftEmptyArrayStorage;
  (*(a4 + 32))(a3, a4);
  v26 = a3;
  v27 = v39;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, v26, v22, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v29 = *(AssociatedConformanceWitness + 16);
  v47 = v25;
  v48 = v22;
  v42 = AssociatedConformanceWitness + 16;
  v43 = AssociatedConformanceWitness;
  v41 = v29;
  (v29)(v22);
  v40 = *(v27 + 48);
  if (v40(v20, 1, v8) != 1)
  {
    v30 = *(v27 + 32);
    while (1)
    {
      v30(v14, v20, v8);
      v31 = v45(v14);
      if (v4)
      {
        (*(v39 + 8))(v14, v8);
        (*(v38 + 8))(v47, v48);
        return v49;
      }

      if ((v31 & 1) == 0)
      {
        break;
      }

      v32 = v44;
      v30(v44, v14, v8);
      v35 = type metadata accessor for ContiguousArray(0, v8, v33, v34);
      ContiguousArray.append(_:)(v32, v35);
      v41(v48, v43);
      if (v40(v20, 1, v8) == 1)
      {
        goto LABEL_9;
      }
    }

    (*(v39 + 8))(v14, v8);
  }

LABEL_9:
  (*(v38 + 8))(v47, v48);
  return v49;
}

uint64_t _SequenceBox._dropLast(_:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void))
{
  v5 = *v2;
  v6 = *(*v2 + 208);
  MEMORY[0x1EEE9AC00](a1, a2);
  (*(v7 + 16))(&v10 - v8, v2 + *(v5 + 224), v6);
  return a2(a1, v6, *(v5 + 216));
}

__objc2_class **Sequence.suffix(_:)(Swift::Int a1, Class *a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v55 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v50 - v10;
  v14 = type metadata accessor for Optional(0, v8, v12, v13);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v18 = &v50 - v17;
  v19 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v16, v20);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v61 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v60 = &v50 - v26;
  if (a1 < 0)
  {
LABEL_23:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a1)
  {
    v51 = v25;
    v62 = v11;
    v68 = &_swiftEmptyArrayStorage;
    v27 = *(a3 + 40);
    &_swiftEmptyArrayStorage;
    v59 = v22;
    v28 = v27(a2, a3);
    v31 = a1;
    if (v28 < a1)
    {
      a1 = v28;
    }

    v56 = type metadata accessor for ContiguousArray(0, v8, v29, v30);
    ContiguousArray.reserveCapacity(_:)(a1);
    v52 = v19;
    v53 = v3;
    (*(v19 + 16))(v59, v3, a2);
    (*(a3 + 32))(a2, a3);
    v50 = a2;
    v32 = v61;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v61, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v58 = *(AssociatedConformanceWitness + 16);
    v59 = AssociatedConformanceWitness;
    v58(v32);
    v57 = *(v55 + 48);
    v34 = 0;
    if (v57(v18, 1, v8) != 1)
    {
      v34 = 0;
      v47 = *(v55 + 32);
      v54 = v55 + 40;
      do
      {
        v48 = v62;
        v47(v62, v18, v8);
        v49 = v68;
        if (v68[2] < v31)
        {
          ContiguousArray.append(_:)(v48, v56);
        }

        else
        {
          if (!swift_isUniquelyReferenced_nonNull_native(v68))
          {
            v49 = _ContiguousArrayBuffer._consumeAndCreateNew()(v49, *(v56 + 16));
            v68 = v49;
          }

          ContiguousArray._checkSubscript_mutating(_:)(v34);
          (*(v55 + 40))(v49 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v34, v62, v8);
          if (__OFADD__(v34, 1))
          {
            __break(1u);
            goto LABEL_23;
          }

          if (v34 + 1 >= v31)
          {
            v34 = 0;
          }

          else
          {
            ++v34;
          }
        }

        (v58)(v61, v59);
      }

      while (v57(v18, 1, v8) != 1);
    }

    (*(v51 + 8))(v60, v61);
    if (v34)
    {
      v67 = &_swiftEmptyArrayStorage;
      v35 = v68;
      v36 = v68[2];
      v37 = v56;
      ContiguousArray.reserveCapacity(_:)(v36);
      v39 = v52;
      v38 = v53;
      if (v36 < v34 || (ContiguousArray._checkIndex(_:)(v34), ContiguousArray._checkIndex(_:)(v36), v40 = v35 + ((*(v55 + 80) + 32) & ~*(v55 + 80)), v63 = v35, v64 = v40, v65 = v34, v66 = (2 * v36) | 1, v43 = type metadata accessor for ArraySlice(0, v8, v41, v42), v35, WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ArraySlice<A>, v43, v44), ContiguousArray.append<A>(contentsOf:)(&v63, v37, v43, WitnessTable), v34 < 0))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      (*(v39 + 8))(v38, v50);
      ContiguousArray._checkIndex(_:)(0);
      ContiguousArray._checkIndex(_:)(v34);
      v63 = v35;
      v64 = v40;
      v65 = 0;
      v66 = (2 * v34) | 1;
      ContiguousArray.append<A>(contentsOf:)(&v63, v37, v43, WitnessTable);
      return v67;
    }

    else
    {
      &_swiftEmptyArrayStorage;
      (*(v52 + 8))(v53, v50);
      return v68;
    }
  }

  else
  {
    (*(v19 + 8))(v3, a2);
    _swift_isClassOrObjCExistentialType(v8, v8);
    return &_swiftEmptyArrayStorage;
  }
}

void _SequenceBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 208) - 8) + 8))(v0 + *(*v0 + 224));

  swift_deallocClassInstance(v0);
}

char *_CollectionBox._makeIterator()(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 344);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v20 - v6;
  v8 = *(*(v3 + 352) + 8);
  swift_getAssociatedTypeWitness(0, v8, v4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v20 - v13;
  (*(v5 + 16))(v7, v2 + *(v3 + 360), v4);
  (*(v8 + 32))(v4, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v10, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v17 = type metadata accessor for _IteratorBox(0, v10, AssociatedConformanceWitness, v16);
  v18 = swift_allocObject(v17, *(v17 + 48), *(v17 + 52));
  (*(v11 + 32))(&v18[*(*v18 + 120)], v14, v10);
  return v18;
}

uint64_t _CollectionBox._underestimatedCount.getter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 344);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v10 - v6;
  (*(v5 + 16))(&v10 - v6, v2 + *(v3 + 360), v4);
  v8 = (*(*(*(v3 + 352) + 8) + 40))(v4);
  (*(v5 + 8))(v7, v4);
  return v8;
}

__objc2_class **_CollectionBox._map<A>(_:)(void (*a1)(char *), uint64_t a2, unint64_t *a3)
{
  v66 = a1;
  v67 = a2;
  v5 = *v3;
  v6 = *(*v3 + 352);
  v7 = *(*v3 + 344);
  swift_getAssociatedTypeWitness(0, *(v6 + 8), v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v59 = v8;
  v65 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v58 = &v52 - v11;
  v12 = a3;
  MEMORY[0x1EEE9AC00](v10, v13);
  v60 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v6, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v16 = v15;
  v61 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v57 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v23 = &v52 - v22;
  v24 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v21, v25);
  v27 = &v52 - v26;
  (*(v24 + 16))(&v52 - v26, v3 + *(v5 + 360), v7);
  v28 = *(v6 + 112);
  v70 = v6;
  v29 = v28(v7, v6);
  if (v29)
  {
    v32 = v29;
    v72 = &_swiftEmptyArrayStorage;
    v63 = type metadata accessor for ContiguousArray(0, v12, v30, v31);
    ContiguousArray.reserveCapacity(_:)(v32);
    v33 = *(v70 + 64);
    v55 = v23;
    v56 = v27;
    v33(v7);
    if (v32 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v53 = v24;
    v54 = v16;
    v34 = *(v70 + 80);
    v35 = v58;
    v36 = v59;
    v68 = v7;
    v37 = (v65 + 16);
    v38 = (v65 + 8);
    v64 = v34;
    v65 = v70 + 80;
    v62 = v70 + 192;
    v40 = v55;
    v39 = v56;
    v41 = v60;
    do
    {
      v42 = v64(v71, v40, v68, v70);
      (*v37)(v35);
      v42(v71, 0);
      v43 = v69;
      v66(v35);
      if (v43)
      {
        (*v38)(v35, v36);
        (*(v61 + 8))(v40, v54);
        v72;
        return (*(v53 + 8))(v39, v68);
      }

      v69 = 0;
      (*v38)(v35, v36);
      ContiguousArray.append(_:)(v41, v63);
      (*(v70 + 192))(v40, v68);
      --v32;
    }

    while (v32);
    v44 = v70;
    v45 = v57;
    v46 = v68;
    (*(v70 + 72))(v68, v70);
    v47 = v54;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v44, v46, v54, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
    v49 = (*(*(AssociatedConformanceWitness + 8) + 8))(v40, v45, v47);
    v50 = *(v61 + 8);
    v50(v45, v47);
    if ((v49 & 1) == 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v50(v40, v47);
    (*(v53 + 8))(v39, v46);
    return v72;
  }

  else
  {
    (*(v24 + 8))(v27, v7);
    _swift_isClassOrObjCExistentialType(v12, v12);
    return &_swiftEmptyArrayStorage;
  }
}

__objc2_class **_CollectionBox._filter(_:)(uint64_t (*a1)(char *), uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 344);
  MEMORY[0x1EEE9AC00](a1, a2);
  (*(v7 + 16))(&v10 - v8, v2 + *(v5 + 360), v6);
  return Sequence.filter(_:)(a1, a2, v6, *(*(v5 + 352) + 8));
}

uint64_t _CollectionBox._forEach(_:)(void (*a1)(char *), uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 344);
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v11 - v8;
  (*(v7 + 16))(&v11 - v8, v2 + *(v5 + 360), v6);
  Sequence.forEach(_:)(a1, a2, v6, *(*(v5 + 352) + 8));
  return (*(v7 + 8))(v9, v6);
}

uint64_t _CollectionBox.__customContainsEquatableElement(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 344);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v11 - v7;
  (*(v6 + 16))(&v11 - v7, v2 + *(v4 + 360), v5);
  v9 = (*(*(*(v4 + 352) + 8) + 48))(a1, v5);
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t _CollectionBox.__copyToContiguousArray()(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 344);
  MEMORY[0x1EEE9AC00](a1, a2);
  (*(v5 + 16))(&v8 - v6, v2 + *(v3 + 360), v4);
  return (*(*(*(v3 + 352) + 8) + 56))(v4);
}

char *_CollectionBox.__copyContents(initializing:)(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  v3 = *v2;
  v4 = *(*v2 + 344);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v20 - v6;
  v8 = *(*(v3 + 352) + 8);
  swift_getAssociatedTypeWitness(0, v8, v4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v20 - v13;
  (*(v5 + 16))(v7, v2 + *(v3 + 360), v4);
  (*(v8 + 64))(v14, v20, v21, v4, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v10, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v17 = type metadata accessor for _IteratorBox(0, v10, AssociatedConformanceWitness, v16);
  v18 = swift_allocObject(v17, *(v17 + 48), *(v17 + 52));
  (*(v11 + 32))(&v18[*(*v18 + 120)], v14, v10);
  return v18;
}

char *_CollectionBox.__allocating_init(_base:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject(v1, *(v1 + 48), *(v1 + 52));
  v4 = specialized _CollectionBox.init(_base:)(a1);
  (*(*(*(v2 + 344) - 8) + 8))(a1);
  return v4;
}

char *_CollectionBox._drop(while:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v26 = a3;
  v24 = a2;
  v5 = *v3;
  v6 = *(*v3 + 344);
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v22 - v8;
  v10 = *(v5 + 352);
  swift_getAssociatedTypeWitness(0, v10, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v12 = v11;
  v23 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v22 - v14;
  (*(v7 + 16))(v9, v3 + *(v5 + 360), v6);
  v16 = v25;
  v17 = v9;
  v26(a1, v24, v6, v10);
  if (!v16)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v6, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
    v20 = type metadata accessor for _CollectionBox(0, v12, AssociatedConformanceWitness, v19);
    swift_allocObject(v20, *(v20 + 48), *(v20 + 52));
    v17 = specialized _CollectionBox.init(_base:)(v15);
    (*(v23 + 8))(v15, v12);
  }

  return v17;
}

char *_CollectionBox._dropFirst(_:)(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t))
{
  v20 = a1;
  v21 = a2;
  v3 = *v2;
  v4 = *(*v2 + 344);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v20 - v6;
  v8 = *(v3 + 352);
  swift_getAssociatedTypeWitness(0, v8, v4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v20 - v13;
  (*(v5 + 16))(v7, v2 + *(v3 + 360), v4);
  v21(v20, v4, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
  v17 = type metadata accessor for _CollectionBox(0, v10, AssociatedConformanceWitness, v16);
  swift_allocObject(v17, *(v17 + 48), *(v17 + 52));
  v18 = specialized _CollectionBox.init(_base:)(v14);
  (*(v11 + 8))(v14, v10);
  return v18;
}

id *_CollectionBox.deinit()
{
  v1 = *v0;
  swift_unknownObjectRelease(v0[2]);
  swift_unknownObjectRelease(v0[4]);
  (*(*(v1[43] - 8) + 8))(v0 + *(*v0 + 45));
  return v0;
}

void _CollectionBox.__deallocating_deinit()
{
  v1 = *v0;
  swift_unknownObjectRelease(v0[2]);
  swift_unknownObjectRelease(v0[4]);
  (*(*(v1[43] - 8) + 8))(v0 + *(*v0 + 45));

  swift_deallocClassInstance(v0);
}

char *_CollectionBox.init(_base:)(uint64_t a1)
{
  v3 = *v1;
  v4 = specialized _CollectionBox.init(_base:)(a1);
  (*(*(*(v3 + 344) - 8) + 8))(a1);
  return v4;
}

char *_IndexBox.__allocating_init(_base:)(uint64_t a1)
{
  v3 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));
  (*(*(*(v1 + 80) - 8) + 32))(&v3[*(*v3 + 96)], a1);
  return v3;
}

uint64_t _CollectionBox._unbox(_:file:line:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, unint64_t a4@<X3>, unsigned int a5@<W4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a6;
  v29 = a3;
  v31 = a5;
  v30 = a4;
  v32 = a7;
  v10 = *(*v7 + 352);
  v11 = *(*v7 + 344);
  swift_getAssociatedTypeWitness(255, v10, v11, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v13 = v12;
  v16 = type metadata accessor for Optional(0, v12, v14, v15);
  v26 = *(v16 - 8);
  v27 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v25 - v18;
  ObjectType = swift_getObjectType(a1);
  v21 = *(a2 + 16);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v11, v13, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v21(v13, AssociatedConformanceWitness, ObjectType, a2);
  v23 = *(v13 - 8);
  if ((*(v23 + 48))(v19, 1, v13) == 1)
  {
    (*(v26 + 8))(v19, v27);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, v29, v30, v31, v28, 0);
  }

  return (*(v23 + 32))(v32, v19, v13);
}

uint64_t _CollectionBox.subscript.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v6 = *v3;
  v48 = *(*v3 + 352);
  v7 = *(v6 + 344);
  swift_getAssociatedTypeWitness(255, v48, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v12 = type metadata accessor for Optional(0, v8, v10, v11);
  v42 = *(v12 - 8);
  v43 = v12;
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v41 - v15;
  v17 = *(v9 - 8);
  v19 = MEMORY[0x1EEE9AC00](v14, v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v45 = &v41 - v24;
  MEMORY[0x1EEE9AC00](v23, v25);
  v46 = v26;
  v27 = *(v26 + 16);
  v44 = &v41 - v28;
  v27();
  ObjectType = swift_getObjectType(a1);
  v30 = *(a2 + 16);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v48, v7, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v30(v9, AssociatedConformanceWitness, ObjectType, a2);
  if ((*(v17 + 48))(v16, 1, v9) == 1)
  {
    (*(v42 + 8))(v16, v43);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x2D9uLL, 0);
  }

  v32 = *(v17 + 32);
  v32(v21, v16, v9);
  v33 = v45;
  v32(v45, v21, v9);
  v34 = v48;
  v35 = v44;
  v36 = (v48[10])(v49, v33, v7, v48);
  v38 = v37;
  swift_getAssociatedTypeWitness(0, v34[1], v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  (*(*(v39 - 8) + 16))(v47, v38, v39);
  v36(v49, 0);
  (*(v17 + 8))(v33, v9);
  return (*(v46 + 8))(v35, v7);
}

char *_CollectionBox.subscript.getter(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v96 = a3;
  v97 = a4;
  v98 = *v4;
  v7 = v98[44];
  v8 = v98[43];
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v93 = *(v9 - 8);
  v94 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v92 = &v77 - v11;
  swift_getAssociatedTypeWitness(255, v7, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v13 = v12;
  swift_getTupleTypeMetadata2(0, v13, v13, "lower upper ", 0);
  v90 = v14;
  v88 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v89 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v83 = &v77 - v19;
  v79 = type metadata accessor for Optional(0, v13, v20, v21);
  v78 = *(v79 - 8);
  v23 = MEMORY[0x1EEE9AC00](v79, v22);
  v95 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v77 - v27;
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v32 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v33);
  v99 = &v77 - v34;
  v91 = v7;
  v35 = v7;
  v37 = v36;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v35, v8, v13, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v40 = type metadata accessor for Range(0, v13, AssociatedConformanceWitness, v39);
  v86 = *(v40 - 8);
  v87 = v40;
  v42 = MEMORY[0x1EEE9AC00](v40, v41);
  v84 = &v77 - v43;
  MEMORY[0x1EEE9AC00](v42, v44);
  v85 = v45;
  v46 = *(v45 + 16);
  v82 = &v77 - v47;
  v98 = v8;
  v46();
  ObjectType = swift_getObjectType(a1);
  (*(a2 + 16))(v13, AssociatedConformanceWitness, ObjectType, a2);
  v49 = *(v37 + 48);
  if (v49(v28, 1, v13) == 1)
  {
    (*(v78 + 8))(v28, v79);
    goto LABEL_8;
  }

  v81 = v37;
  v50 = v28;
  v51 = *(v37 + 32);
  v51(v99, v50, v13);
  v52 = swift_getObjectType(v96);
  v53 = v95;
  (*(v97 + 16))(v13, AssociatedConformanceWitness, v52);
  if (v49(v53, 1, v13) == 1)
  {
    (*(v78 + 8))(v53, v79);
LABEL_8:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x2E1uLL, 0);
  }

  v54 = v32;
  v51(v32, v53, v13);
  if (((*(AssociatedConformanceWitness + 24))(v99, v32, v13, AssociatedConformanceWitness) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v55 = v83;
  v51(v83, v99, v13);
  v56 = v90;
  v51(&v55[*(v90 + 48)], v54, v13);
  v57 = v88;
  v58 = *(v88 + 16);
  v59 = v51;
  v80 = v51;
  v60 = v89;
  v58(v89, v55, v56);
  v61 = *(v56 + 48);
  v62 = v84;
  v59(v84, v60, v13);
  v63 = *(v81 + 8);
  v63(&v60[v61], v13);
  (*(v57 + 32))(v60, v55, v56);
  v64 = *(v56 + 48);
  v65 = v87;
  v80(&v62[*(v87 + 36)], &v60[v64], v13);
  v63(v60, v13);
  v66 = v91;
  v67 = v92;
  v68 = v82;
  v69 = v98;
  (v91[11])(v62, v98, v91);
  (*(v86 + 8))(v62, v65);
  (*(v85 + 8))(v68, v69);
  v70 = v69;
  v71 = v94;
  v72 = swift_getAssociatedConformanceWitness(v66, v70, v94, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
  v74 = type metadata accessor for _CollectionBox(0, v71, v72, v73);
  swift_allocObject(v74, *(v74 + 48), *(v74 + 52));
  v75 = specialized _CollectionBox.init(_base:)(v67);
  (*(v93 + 8))(v67, v71);
  return v75;
}

char *_CollectionBox._index(after:)(unint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v47 = *(*v2 + 352);
  v6 = *(v5 + 344);
  swift_getAssociatedTypeWitness(255, v47, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  v11 = type metadata accessor for Optional(0, v7, v9, v10);
  v41 = *(v11 - 8);
  v42 = v11;
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = *(v8 - 8);
  v20 = MEMORY[0x1EEE9AC00](&v40 - v17, v19);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v20, v23);
  v44 = &v40 - v25;
  v26 = *(v5 + 360);
  v46 = v27;
  v28 = *(v27 + 16);
  v43 = v24;
  v28(v24, &v2[v26], v6);
  ObjectType = swift_getObjectType(a1);
  v30 = *(a2 + 16);
  v45 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v47, v6, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v30(v8, AssociatedConformanceWitness, ObjectType, a2);
  if ((*(v18 + 48))(v15, 1, v8) == 1)
  {
    (*(v41 + 8))(v15, v42);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x2E7uLL, 0);
  }

  v32 = *(v18 + 32);
  v32(v22, v15, v8);
  v33 = v43;
  v34 = v44;
  v35 = v45;
  (v47[23])(v22, v45);
  (*(v18 + 8))(v22, v8);
  (*(v46 + 8))(v33, v35);
  v37 = type metadata accessor for _IndexBox(0, v8, AssociatedConformanceWitness, v36);
  v38 = swift_allocObject(v37, *(v37 + 48), *(v37 + 52));
  v32(&v38[*(*v38 + 96)], v34, v8);
  return v38;
}

uint64_t _CollectionBox._formIndex(after:)(swift *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 344);
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v19 - v7;
  v10 = *(v9 + 352);
  swift_getAssociatedTypeWitness(255, v10, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v5, v11, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v15 = type metadata accessor for _IndexBox(0, v12, AssociatedConformanceWitness, v14);
  v16 = swift_dynamicCastClass(a1, v15);
  if (!v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x2EFuLL, 0);
  }

  v17 = v16;
  (*(v6 + 16))(v8, v2 + *(v4 + 360), v5);
  (*(v10 + 192))(v17 + *(*v17 + 96), v5, v10);
  return (*(v6 + 8))(v8, v5);
}

char *_CollectionBox._index(_:offsetBy:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v6 = *v3;
  v48 = *(*v3 + 352);
  v7 = *(v6 + 344);
  swift_getAssociatedTypeWitness(255, v48, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v12 = type metadata accessor for Optional(0, v8, v10, v11);
  v41 = *(v12 - 8);
  v42 = v12;
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v41 - v15;
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = *(v9 - 8);
  v21 = MEMORY[0x1EEE9AC00](&v41 - v18, v20);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v44 = &v41 - v26;
  v27 = *(v6 + 360);
  v46 = v28;
  v29 = *(v28 + 16);
  v43 = v25;
  v29(v25, &v3[v27], v7);
  ObjectType = swift_getObjectType(a1);
  v31 = *(a2 + 16);
  v45 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v48, v7, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v31(v9, AssociatedConformanceWitness, ObjectType, a2);
  if ((*(v19 + 48))(v16, 1, v9) == 1)
  {
    (*(v41 + 8))(v16, v42);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x2F6uLL, 0);
  }

  v33 = *(v19 + 32);
  v33(v23, v16, v9);
  v34 = v43;
  v35 = v44;
  v36 = v45;
  (v48[17])(v23, v47, v45);
  (*(v19 + 8))(v23, v9);
  (*(v46 + 8))(v34, v36);
  v38 = type metadata accessor for _IndexBox(0, v9, AssociatedConformanceWitness, v37);
  v39 = swift_allocObject(v38, *(v38 + 48), *(v38 + 52));
  v33(&v39[*(*v39 + 96)], v35, v9);
  return v39;
}

char *_CollectionBox._index(_:offsetBy:limitedBy:)(unint64_t a1, void *a2, uint64_t a3, void (*a4)(char *, char *, uint64_t), unsigned int (*a5)(char *, uint64_t, uint64_t))
{
  v72 = a4;
  v73 = a5;
  v71 = a3;
  v76 = a2;
  v7 = *v5;
  v78 = *(*v5 + 352);
  v8 = *(v7 + 344);
  swift_getAssociatedTypeWitness(0, v78, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = v9;
  v11 = *(v9 - 8);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v64 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v70 = &v63 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v77 = &v63 - v20;
  v21 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v63 - v23;
  v27 = type metadata accessor for Optional(0, v10, v25, v26);
  v74 = *(v27 - 8);
  v75 = v27;
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v67 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v34 = &v63 - v33;
  v36 = MEMORY[0x1EEE9AC00](v32, v35);
  v38 = &v63 - v37;
  MEMORY[0x1EEE9AC00](v36, v39);
  v66 = &v63 - v40;
  v41 = *(v7 + 360);
  v68 = v24;
  v69 = v21;
  (*(v21 + 16))(v24, v5 + v41, v8);
  ObjectType = swift_getObjectType(a1);
  v43 = v76;
  v44 = v76[2];
  v65 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v78, v8, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v44(v10, AssociatedConformanceWitness, ObjectType, v43);
  v76 = v11;
  v46 = v11[6];
  if (v46(v38, 1, v10) == 1)
  {
    (*(v74 + 8))(v38, v75);
    goto LABEL_9;
  }

  v47 = v76[4];
  v47(v77, v38, v10);
  v48 = swift_getObjectType(v72);
  v49 = *(v73 + 2);
  v63 = AssociatedConformanceWitness;
  v49(v10, AssociatedConformanceWitness, v48);
  v73 = v46;
  if (v46(v34, 1, v10) == 1)
  {
    (*(v74 + 8))(v34, v75);
LABEL_9:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x2FFuLL, 0);
  }

  v50 = v70;
  v72 = v47;
  v47(v70, v34, v10);
  v51 = v77;
  v53 = v65;
  v52 = v66;
  v54 = v68;
  (v78[18])(v77, v71, v50, v65);
  v55 = v76[1];
  v55(v50, v10);
  v55(v51, v10);
  (*(v69 + 8))(v54, v53);
  v56 = v67;
  (*(v74 + 32))(v67, v52, v75);
  if (v73(v56, 1, v10) == 1)
  {
    return 0;
  }

  v58 = v64;
  v59 = v72;
  v72(v64, v56, v10);
  v61 = type metadata accessor for _IndexBox(0, v10, v63, v60);
  v62 = swift_allocObject(v61, *(v61 + 48), *(v61 + 52));
  v59(&v62[*(*v62 + 96)], v58, v10);
  return v62;
}

uint64_t _CollectionBox._formIndex(_:offsetBy:)(swift **a1, uint64_t a2)
{
  v24 = *v2;
  v25 = a2;
  v4 = v24[44];
  v5 = v24[43];
  swift_getAssociatedTypeWitness(0, v4, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  v8 = *(v6 - 8);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v24 - v11;
  v13 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v10, v14);
  v16 = &v24 - v15;
  v17 = *a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v7, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v20 = type metadata accessor for _IndexBox(0, v7, AssociatedConformanceWitness, v19);
  v21 = swift_dynamicCastClass(v17, v20);
  if (!v21)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x30AuLL, 0);
  }

  v22 = v21;
  (*(v13 + 16))(v16, &v2[v24[45]], v5);
  (*(v8 + 32))(v12, v22 + *(*v22 + 96), v7);
  (*(v4 + 136))(v12, v25, v5, v4);
  (*(v8 + 8))(v12, v7);
  return (*(v13 + 8))(v16, v5);
}

BOOL _CollectionBox._formIndex(_:offsetBy:limitedBy:)(swift **a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v6 = *v4;
  v7 = *v4;
  v47 = a2;
  v48 = v7;
  v8 = *(v6 + 352);
  v9 = *(v6 + 344);
  swift_getAssociatedTypeWitness(255, v8, v9, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  v14 = type metadata accessor for Optional(0, v10, v12, v13);
  v43 = *(v14 - 8);
  v44 = v14;
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v46 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v43 - v20;
  v22 = *(v11 - 8);
  v24 = MEMORY[0x1EEE9AC00](v19, v23);
  v45 = &v43 - v25;
  v52 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v43 - v27;
  v29 = *a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v9, v11, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v32 = type metadata accessor for _IndexBox(0, v11, AssociatedConformanceWitness, v31);
  v51 = swift_dynamicCastClass(v29, v32);
  if (!v51)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x314uLL, 0);
  }

  (*(v52 + 16))(v28, &v4[*(v48 + 360)], v9);
  ObjectType = swift_getObjectType(v49);
  (*(v50 + 16))(v11, AssociatedConformanceWitness, ObjectType);
  v50 = v22[6];
  if ((v50)(v21, 1, v11) == 1)
  {
    (*(v43 + 8))(v21, v44);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x312uLL, 0);
  }

  v34 = v45;
  v48 = v22[4];
  (v48)(v45, v21, v11);
  v49 = v11;
  v35 = v51;
  v36 = *(*v51 + 96);
  v37 = v46;
  (*(v8 + 144))(v51 + v36, v47, v34, v9, v8);
  (*(v52 + 8))(v28, v9);
  v38 = v22[1];
  v39 = v35 + v36;
  v40 = v49;
  v38(v39, v49);
  v41 = (v50)(v37, 1, v40);
  if (v41 == 1)
  {
    (*(v43 + 8))(v37, v44);
    v37 = v34;
  }

  else
  {
    v38(v34, v40);
  }

  (v48)(v51 + v36, v37, v40);
  return v41 != 1;
}

uint64_t _CollectionBox._distance(from:to:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v52 = a3;
  v53 = a4;
  v7 = *v4;
  v55 = *(*v4 + 352);
  v8 = *(v7 + 344);
  swift_getAssociatedTypeWitness(255, v55, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = v9;
  v13 = type metadata accessor for Optional(0, v9, v11, v12);
  v45 = *(v13 - 8);
  v46 = v13;
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v51 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v44 - v19;
  v21 = *(v10 - 8);
  v23 = MEMORY[0x1EEE9AC00](v18, v22);
  v49 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v54 = &v44 - v27;
  MEMORY[0x1EEE9AC00](v26, v28);
  v47 = &v44 - v29;
  v48 = v30;
  (*(v30 + 16))();
  ObjectType = swift_getObjectType(a1);
  v32 = *(a2 + 16);
  v50 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v55, v8, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v32(v10, AssociatedConformanceWitness, ObjectType, a2);
  v34 = v21[6];
  if (v34(v20, 1, v10) == 1 || (v35 = v21[4], v35(v54, v20, v10), v36 = swift_getObjectType(v52), v20 = v51, (*(v53 + 16))(v10, AssociatedConformanceWitness, v36), v34(v20, 1, v10) == 1))
  {
    (*(v45 + 8))(v20, v46);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x31CuLL, 0);
  }

  v37 = v49;
  v35(v49, v20, v10);
  v38 = v54;
  v39 = v47;
  v40 = v50;
  v41 = (v55[19])(v54, v37, v50);
  v42 = v21[1];
  v42(v37, v10);
  v42(v38, v10);
  (*(v48 + 8))(v39, v40);
  return v41;
}

uint64_t _CollectionBox._count.getter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 344);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v10 - v6;
  (*(v5 + 16))(&v10 - v6, v2 + *(v3 + 360), v4);
  v8 = (*(*(v3 + 352) + 112))(v4);
  (*(v5 + 8))(v7, v4);
  return v8;
}

char *_BidirectionalCollectionBox._makeIterator()(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v20 - v6;
  v8 = *(*(*(v3 + 376) + 8) + 8);
  swift_getAssociatedTypeWitness(0, v8, v4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v20 - v13;
  (*(v5 + 16))(v7, v2 + *(v3 + 384), v4);
  (*(v8 + 32))(v4, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v10, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v17 = type metadata accessor for _IteratorBox(0, v10, AssociatedConformanceWitness, v16);
  v18 = swift_allocObject(v17, *(v17 + 48), *(v17 + 52));
  (*(v11 + 32))(&v18[*(*v18 + 120)], v14, v10);
  return v18;
}

uint64_t _BidirectionalCollectionBox._underestimatedCount.getter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v10 - v6;
  (*(v5 + 16))(&v10 - v6, v2 + *(v3 + 384), v4);
  v8 = (*(*(*(*(v3 + 376) + 8) + 8) + 40))(v4);
  (*(v5 + 8))(v7, v4);
  return v8;
}

__objc2_class **_BidirectionalCollectionBox._map<A>(_:)(void (*a1)(char *), uint64_t a2, unint64_t *a3)
{
  v66 = a1;
  v67 = a2;
  v5 = *v3;
  v6 = *(*(*v3 + 376) + 8);
  v7 = *(*v3 + 368);
  swift_getAssociatedTypeWitness(0, *(v6 + 8), v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v59 = v8;
  v65 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v58 = &v52 - v11;
  v12 = a3;
  MEMORY[0x1EEE9AC00](v10, v13);
  v60 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v6, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v16 = v15;
  v61 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v57 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v23 = &v52 - v22;
  v24 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v21, v25);
  v27 = &v52 - v26;
  (*(v24 + 16))(&v52 - v26, v3 + *(v5 + 384), v7);
  v28 = *(v6 + 112);
  v70 = v6;
  v29 = v28(v7, v6);
  if (v29)
  {
    v32 = v29;
    v72 = &_swiftEmptyArrayStorage;
    v63 = type metadata accessor for ContiguousArray(0, v12, v30, v31);
    ContiguousArray.reserveCapacity(_:)(v32);
    v33 = *(v70 + 64);
    v55 = v23;
    v56 = v27;
    v33(v7);
    if (v32 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v53 = v24;
    v54 = v16;
    v34 = *(v70 + 80);
    v35 = v58;
    v36 = v59;
    v68 = v7;
    v37 = (v65 + 16);
    v38 = (v65 + 8);
    v64 = v34;
    v65 = v70 + 80;
    v62 = v70 + 192;
    v40 = v55;
    v39 = v56;
    v41 = v60;
    do
    {
      v42 = v64(v71, v40, v68, v70);
      (*v37)(v35);
      v42(v71, 0);
      v43 = v69;
      v66(v35);
      if (v43)
      {
        (*v38)(v35, v36);
        (*(v61 + 8))(v40, v54);
        v72;
        return (*(v53 + 8))(v39, v68);
      }

      v69 = 0;
      (*v38)(v35, v36);
      ContiguousArray.append(_:)(v41, v63);
      (*(v70 + 192))(v40, v68);
      --v32;
    }

    while (v32);
    v44 = v70;
    v45 = v57;
    v46 = v68;
    (*(v70 + 72))(v68, v70);
    v47 = v54;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v44, v46, v54, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
    v49 = (*(*(AssociatedConformanceWitness + 8) + 8))(v40, v45, v47);
    v50 = *(v61 + 8);
    v50(v45, v47);
    if ((v49 & 1) == 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v50(v40, v47);
    (*(v53 + 8))(v39, v46);
    return v72;
  }

  else
  {
    (*(v24 + 8))(v27, v7);
    _swift_isClassOrObjCExistentialType(v12, v12);
    return &_swiftEmptyArrayStorage;
  }
}

__objc2_class **_BidirectionalCollectionBox._filter(_:)(uint64_t (*a1)(char *), uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 368);
  MEMORY[0x1EEE9AC00](a1, a2);
  (*(v7 + 16))(&v10 - v8, v2 + *(v5 + 384), v6);
  return Sequence.filter(_:)(a1, a2, v6, *(*(*(v5 + 376) + 8) + 8));
}

uint64_t _BidirectionalCollectionBox._forEach(_:)(void (*a1)(char *), uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 368);
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v11 - v8;
  (*(v7 + 16))(&v11 - v8, v2 + *(v5 + 384), v6);
  Sequence.forEach(_:)(a1, a2, v6, *(*(*(v5 + 376) + 8) + 8));
  return (*(v7 + 8))(v9, v6);
}

uint64_t _BidirectionalCollectionBox.__customContainsEquatableElement(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 368);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v11 - v7;
  (*(v6 + 16))(&v11 - v7, v2 + *(v4 + 384), v5);
  v9 = (*(*(*(*(v4 + 376) + 8) + 8) + 48))(a1, v5);
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t _BidirectionalCollectionBox.__copyToContiguousArray()(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  MEMORY[0x1EEE9AC00](a1, a2);
  (*(v5 + 16))(&v8 - v6, v2 + *(v3 + 384), v4);
  return (*(*(*(*(v3 + 376) + 8) + 8) + 56))(v4);
}

char *_BidirectionalCollectionBox.__copyContents(initializing:)(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  v3 = *v2;
  v4 = *(*v2 + 368);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v20 - v6;
  v8 = *(*(*(v3 + 376) + 8) + 8);
  swift_getAssociatedTypeWitness(0, v8, v4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v20 - v13;
  (*(v5 + 16))(v7, v2 + *(v3 + 384), v4);
  (*(v8 + 64))(v14, v20, v21, v4, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v10, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v17 = type metadata accessor for _IteratorBox(0, v10, AssociatedConformanceWitness, v16);
  v18 = swift_allocObject(v17, *(v17 + 48), *(v17 + 52));
  (*(v11 + 32))(&v18[*(*v18 + 120)], v14, v10);
  return v18;
}

char *_BidirectionalCollectionBox.__allocating_init(_base:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject(v1, *(v1 + 48), *(v1 + 52));
  v4 = specialized _BidirectionalCollectionBox.init(_base:)(a1);
  (*(*(*(v2 + 368) - 8) + 8))(a1);
  return v4;
}

char *_BidirectionalCollectionBox._drop(while:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v25 = a3;
  v23 = a2;
  v22 = a1;
  v4 = *v3;
  v5 = *(*v3 + 368);
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v21 - v7;
  v9 = *(v4 + 376);
  v10 = *(v9 + 1);
  swift_getAssociatedTypeWitness(0, v10, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v12 = v11;
  v21 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v21 - v14;
  (*(v6 + 16))(v8, v3 + *(v4 + 384), v5);
  v16 = v24;
  v25(v22, v23, v5, v10);
  if (!v16)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v9, v5, v12, &protocol requirements base descriptor for BidirectionalCollection, associated conformance descriptor for BidirectionalCollection.Collection.SubSequence: BidirectionalCollection);
    v19 = type metadata accessor for _BidirectionalCollectionBox(0, v12, AssociatedConformanceWitness, v18);
    swift_allocObject(v19, *(v19 + 48), *(v19 + 52));
    v5 = specialized _BidirectionalCollectionBox.init(_base:)(v15);
    (*(v21 + 8))(v15, v12);
  }

  return v5;
}

char *_BidirectionalCollectionBox._dropFirst(_:)(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t))
{
  v21 = a1;
  v22 = a2;
  v3 = *v2;
  v4 = *(*v2 + 368);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v21 - v6;
  v8 = *(v3 + 376);
  v9 = *(v8 + 1);
  swift_getAssociatedTypeWitness(0, v9, v4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v21 - v14;
  (*(v5 + 16))(v7, v2 + *(v3 + 384), v4);
  v22(v21, v4, v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v11, &protocol requirements base descriptor for BidirectionalCollection, associated conformance descriptor for BidirectionalCollection.Collection.SubSequence: BidirectionalCollection);
  v18 = type metadata accessor for _BidirectionalCollectionBox(0, v11, AssociatedConformanceWitness, v17);
  swift_allocObject(v18, *(v18 + 48), *(v18 + 52));
  v19 = specialized _BidirectionalCollectionBox.init(_base:)(v15);
  (*(v12 + 8))(v15, v11);
  return v19;
}

char *_BidirectionalCollectionBox._dropLast(_:)(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t))
{
  v22 = a2;
  v4 = *v2;
  v5 = *(*v2 + 368);
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v21 - v7;
  v9 = *(v4 + 376);
  swift_getAssociatedTypeWitness(0, v9[1], v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v21 - v14;
  (*(v6 + 16))(v8, v2 + *(v4 + 384), v5);
  v22(a1, v5, v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v9, v5, v11, &protocol requirements base descriptor for BidirectionalCollection, associated conformance descriptor for BidirectionalCollection.Collection.SubSequence: BidirectionalCollection);
  v18 = type metadata accessor for _BidirectionalCollectionBox(0, v11, AssociatedConformanceWitness, v17);
  swift_allocObject(v18, *(v18 + 48), *(v18 + 52));
  v19 = specialized _BidirectionalCollectionBox.init(_base:)(v15);
  (*(v12 + 8))(v15, v11);
  return v19;
}

id *_BidirectionalCollectionBox.deinit()
{
  v1 = *v0;
  swift_unknownObjectRelease(v0[2]);
  swift_unknownObjectRelease(v0[4]);
  (*(*(v1[46] - 8) + 8))(v0 + *(*v0 + 48));
  return v0;
}

void _BidirectionalCollectionBox.__deallocating_deinit()
{
  v1 = *v0;
  swift_unknownObjectRelease(v0[2]);
  swift_unknownObjectRelease(v0[4]);
  (*(*(v1[46] - 8) + 8))(v0 + *(*v0 + 48));

  swift_deallocClassInstance(v0);
}

char *_BidirectionalCollectionBox.init(_base:)(uint64_t a1)
{
  v3 = *v1;
  v4 = specialized _BidirectionalCollectionBox.init(_base:)(a1);
  (*(*(*(v3 + 368) - 8) + 8))(a1);
  return v4;
}

uint64_t _BidirectionalCollectionBox._unbox(_:file:line:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, unint64_t a4@<X3>, unsigned int a5@<W4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a6;
  v29 = a3;
  v31 = a5;
  v30 = a4;
  v32 = a7;
  v10 = *(*(*v7 + 376) + 8);
  v11 = *(*v7 + 368);
  swift_getAssociatedTypeWitness(255, v10, v11, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v13 = v12;
  v16 = type metadata accessor for Optional(0, v12, v14, v15);
  v26 = *(v16 - 8);
  v27 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v25 - v18;
  ObjectType = swift_getObjectType(a1);
  v21 = *(a2 + 16);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v11, v13, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v21(v13, AssociatedConformanceWitness, ObjectType, a2);
  v23 = *(v13 - 8);
  if ((*(v23 + 48))(v19, 1, v13) == 1)
  {
    (*(v26 + 8))(v19, v27);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, v29, v30, v31, v28, 0);
  }

  return (*(v23 + 32))(v32, v19, v13);
}

uint64_t _BidirectionalCollectionBox.subscript.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v6 = *v3;
  v48 = *(*(*v3 + 376) + 8);
  v7 = *(v6 + 368);
  swift_getAssociatedTypeWitness(255, v48, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v12 = type metadata accessor for Optional(0, v8, v10, v11);
  v42 = *(v12 - 8);
  v43 = v12;
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v41 - v15;
  v17 = *(v9 - 8);
  v19 = MEMORY[0x1EEE9AC00](v14, v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v45 = &v41 - v24;
  MEMORY[0x1EEE9AC00](v23, v25);
  v46 = v26;
  v27 = *(v26 + 16);
  v44 = &v41 - v28;
  v27();
  ObjectType = swift_getObjectType(a1);
  v30 = *(a2 + 16);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v48, v7, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v30(v9, AssociatedConformanceWitness, ObjectType, a2);
  if ((*(v17 + 48))(v16, 1, v9) == 1)
  {
    (*(v42 + 8))(v16, v43);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x3A0uLL, 0);
  }

  v32 = *(v17 + 32);
  v32(v21, v16, v9);
  v33 = v45;
  v32(v45, v21, v9);
  v34 = v48;
  v35 = v44;
  v36 = (v48[10])(v49, v33, v7, v48);
  v38 = v37;
  swift_getAssociatedTypeWitness(0, v34[1], v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  (*(*(v39 - 8) + 16))(v47, v38, v39);
  v36(v49, 0);
  (*(v17 + 8))(v33, v9);
  return (*(v46 + 8))(v35, v7);
}

char *_BidirectionalCollectionBox.subscript.getter(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v83 = a3;
  v84 = a4;
  v85 = *v4;
  v86 = a1;
  v78 = v85[47];
  v6 = *(v78 + 1);
  v7 = v85[46];
  swift_getAssociatedTypeWitness(0, v6, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v80 = *(v8 - 8);
  v81 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v79 = &v67 - v10;
  swift_getAssociatedTypeWitness(255, v6, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  swift_getTupleTypeMetadata2(0, v12, v12, "lower upper ", 0);
  v76 = v13;
  v74 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v75 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v73 = &v67 - v18;
  v21 = type metadata accessor for Optional(0, v12, v19, v20);
  v67 = *(v21 - 8);
  v68 = v21;
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v82 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v67 - v27;
  v29 = *(v12 - 1);
  v31 = MEMORY[0x1EEE9AC00](v26, v30);
  v33 = &v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v34);
  v87 = &v67 - v35;
  v77 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v7, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v38 = type metadata accessor for Range(0, v12, AssociatedConformanceWitness, v37);
  v72 = *(v38 - 8);
  v40 = MEMORY[0x1EEE9AC00](v38, v39);
  v69 = &v67 - v41;
  MEMORY[0x1EEE9AC00](v40, v42);
  v70 = &v67 - v43;
  v71 = v44;
  v45 = *(v44 + 16);
  v85 = v7;
  v45();
  ObjectType = swift_getObjectType(v86);
  (*(a2 + 16))(v12, AssociatedConformanceWitness, ObjectType, a2);
  v47 = *(v29 + 48);
  if (v47(v28, 1, v12) == 1 || (v86 = v29, v48 = *(v29 + 32), v48(v87, v28, v12), v49 = swift_getObjectType(v83), v28 = v82, (*(v84 + 16))(v12, AssociatedConformanceWitness, v49), v47(v28, 1, v12) == 1))
  {
    (*(v67 + 8))(v28, v68);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x3A9uLL, 0);
  }

  v50 = v33;
  v48(v33, v28, v12);
  if (((*(AssociatedConformanceWitness + 24))(v87, v33, v12, AssociatedConformanceWitness) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v51 = v73;
  v48(v73, v87, v12);
  v52 = v76;
  v48(&v51[*(v76 + 48)], v50, v12);
  v54 = v74;
  v53 = v75;
  (*(v74 + 16))(v75, v51, v52);
  v84 = *(v52 + 48);
  v55 = v69;
  v48(v69, v53, v12);
  v87 = v38;
  v56 = *(v86 + 8);
  v56(&v53[v84], v12);
  (*(v54 + 32))(v53, v51, v52);
  v57 = v87;
  v48(&v55[*(v87 + 9)], &v53[*(v52 + 48)], v12);
  v56(v53, v12);
  v58 = v79;
  v59 = v70;
  v60 = v85;
  (v77[11])(v55, v85);
  (*(v72 + 8))(v55, v57);
  (*(v71 + 8))(v59, v60);
  v61 = v81;
  v62 = swift_getAssociatedConformanceWitness(v78, v60, v81, &protocol requirements base descriptor for BidirectionalCollection, associated conformance descriptor for BidirectionalCollection.Collection.SubSequence: BidirectionalCollection);
  v64 = type metadata accessor for _BidirectionalCollectionBox(0, v61, v62, v63);
  swift_allocObject(v64, *(v64 + 48), *(v64 + 52));
  v65 = specialized _BidirectionalCollectionBox.init(_base:)(v58);
  (*(v80 + 8))(v58, v61);
  return v65;
}

char *_BidirectionalCollectionBox._index(after:)(unint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v47 = *(*(*v2 + 376) + 8);
  v6 = *(v5 + 368);
  swift_getAssociatedTypeWitness(255, v47, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  v11 = type metadata accessor for Optional(0, v7, v9, v10);
  v41 = *(v11 - 8);
  v42 = v11;
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = *(v8 - 8);
  v20 = MEMORY[0x1EEE9AC00](&v40 - v17, v19);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v20, v23);
  v44 = &v40 - v25;
  v26 = *(v5 + 384);
  v45 = v27;
  v28 = *(v27 + 16);
  v43 = v24;
  v28(v24, &v2[v26], v6);
  ObjectType = swift_getObjectType(a1);
  v30 = *(a2 + 16);
  v46 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v47, v6, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v30(v8, AssociatedConformanceWitness, ObjectType, a2);
  if ((*(v18 + 48))(v15, 1, v8) == 1)
  {
    (*(v41 + 8))(v15, v42);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x3AFuLL, 0);
  }

  v32 = *(v18 + 32);
  v32(v22, v15, v8);
  v33 = v46;
  v34 = v43;
  v35 = v44;
  (v47[23])(v22, v46);
  (*(v18 + 8))(v22, v8);
  (*(v45 + 8))(v34, v33);
  v37 = type metadata accessor for _IndexBox(0, v8, AssociatedConformanceWitness, v36);
  v38 = swift_allocObject(v37, *(v37 + 48), *(v37 + 52));
  v32(&v38[*(*v38 + 96)], v35, v8);
  return v38;
}

uint64_t _BidirectionalCollectionBox._formIndex(after:)(swift *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 368);
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v19 - v7;
  v10 = *(*(v9 + 376) + 8);
  swift_getAssociatedTypeWitness(255, v10, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v5, v11, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v15 = type metadata accessor for _IndexBox(0, v12, AssociatedConformanceWitness, v14);
  v16 = swift_dynamicCastClass(a1, v15);
  if (!v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x3B7uLL, 0);
  }

  v17 = v16;
  (*(v6 + 16))(v8, v2 + *(v4 + 384), v5);
  (*(v10 + 192))(v17 + *(*v17 + 96), v5, v10);
  return (*(v6 + 8))(v8, v5);
}

char *_BidirectionalCollectionBox._index(_:offsetBy:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a3;
  v6 = *v3;
  v47 = *(*v3 + 376);
  v49 = *(v47 + 8);
  v7 = *(v6 + 368);
  swift_getAssociatedTypeWitness(255, v49, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v12 = type metadata accessor for Optional(0, v8, v10, v11);
  v42 = *(v12 - 8);
  v43 = v12;
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v42 - v15;
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = *(v9 - 8);
  v21 = MEMORY[0x1EEE9AC00](&v42 - v18, v20);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v45 = &v42 - v26;
  v27 = *(v6 + 384);
  v46 = v28;
  v29 = *(v28 + 16);
  v44 = v25;
  v29(v25, &v3[v27], v7);
  ObjectType = swift_getObjectType(a1);
  v31 = *(a2 + 16);
  v32 = v49;
  v49 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v32, v7, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v31(v9, AssociatedConformanceWitness, ObjectType, a2);
  if ((*(v19 + 48))(v16, 1, v9) == 1)
  {
    (*(v42 + 8))(v16, v43);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x3BEuLL, 0);
  }

  v34 = *(v19 + 32);
  v34(v23, v16, v9);
  v35 = v44;
  v36 = v45;
  v37 = v49;
  (*(v47 + 48))(v23, v48, v49);
  (*(v19 + 8))(v23, v9);
  (*(v46 + 8))(v35, v37);
  v39 = type metadata accessor for _IndexBox(0, v9, AssociatedConformanceWitness, v38);
  v40 = swift_allocObject(v39, *(v39 + 48), *(v39 + 52));
  v34(&v40[*(*v40 + 96)], v36, v9);
  return v40;
}

char *_BidirectionalCollectionBox._index(_:offsetBy:limitedBy:)(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, char *, uint64_t), unsigned int (*a5)(char *, uint64_t, uint64_t))
{
  v72 = a4;
  v73 = a5;
  v71 = a3;
  v77 = a1;
  v7 = *v5;
  v70 = *(*v5 + 376);
  v74 = *(v70 + 8);
  v8 = *(v7 + 368);
  swift_getAssociatedTypeWitness(0, v74, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = v9;
  v11 = *(v9 - 8);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v64 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v69 = &v63 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v78 = &v63 - v20;
  v21 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v63 - v23;
  v27 = type metadata accessor for Optional(0, v10, v25, v26);
  v75 = *(v27 - 8);
  v76 = v27;
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v66 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v34 = &v63 - v33;
  v36 = MEMORY[0x1EEE9AC00](v32, v35);
  v38 = &v63 - v37;
  MEMORY[0x1EEE9AC00](v36, v39);
  v65 = &v63 - v40;
  v41 = *(v7 + 384);
  v67 = v24;
  v68 = v21;
  (*(v21 + 16))(v24, v5 + v41, v8);
  ObjectType = swift_getObjectType(v77);
  v43 = *(a2 + 16);
  v44 = v74;
  v74 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v44, v8, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v43(v10, AssociatedConformanceWitness, ObjectType, a2);
  v77 = v11;
  v46 = *(v11 + 48);
  if (v46(v38, 1, v10) == 1)
  {
    (*(v75 + 8))(v38, v76);
    goto LABEL_9;
  }

  v47 = *(v77 + 32);
  v47(v78, v38, v10);
  v48 = swift_getObjectType(v72);
  v49 = *(v73 + 2);
  v63 = AssociatedConformanceWitness;
  v49(v10, AssociatedConformanceWitness, v48);
  v73 = v46;
  if (v46(v34, 1, v10) == 1)
  {
    (*(v75 + 8))(v34, v76);
LABEL_9:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x3C7uLL, 0);
  }

  v50 = v69;
  v72 = v47;
  v47(v69, v34, v10);
  v51 = v65;
  v52 = v78;
  v53 = v67;
  v54 = v74;
  (*(v70 + 56))(v78, v71, v50, v74);
  v55 = *(v77 + 8);
  v55(v50, v10);
  v55(v52, v10);
  (*(v68 + 8))(v53, v54);
  v56 = v66;
  (*(v75 + 32))(v66, v51, v76);
  if (v73(v56, 1, v10) == 1)
  {
    return 0;
  }

  v58 = v64;
  v59 = v72;
  v72(v64, v56, v10);
  v61 = type metadata accessor for _IndexBox(0, v10, v63, v60);
  v62 = swift_allocObject(v61, *(v61 + 48), *(v61 + 52));
  v59(&v62[*(*v62 + 96)], v58, v10);
  return v62;
}

uint64_t _BidirectionalCollectionBox._formIndex(_:offsetBy:)(swift **a1, uint64_t a2)
{
  v24 = *v2;
  v25 = a2;
  v4 = *(v24[47] + 8);
  v5 = v24[46];
  swift_getAssociatedTypeWitness(0, v4, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  v8 = *(v6 - 8);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v24 - v11;
  v13 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v10, v14);
  v16 = &v24 - v15;
  v17 = *a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v7, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v20 = type metadata accessor for _IndexBox(0, v7, AssociatedConformanceWitness, v19);
  v21 = swift_dynamicCastClass(v17, v20);
  if (!v21)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x3D2uLL, 0);
  }

  v22 = v21;
  (*(v13 + 16))(v16, &v2[v24[48]], v5);
  (*(v8 + 32))(v12, v22 + *(*v22 + 96), v7);
  (*(v4 + 136))(v12, v25, v5, v4);
  (*(v8 + 8))(v12, v7);
  return (*(v13 + 8))(v16, v5);
}

BOOL _BidirectionalCollectionBox._formIndex(_:offsetBy:limitedBy:)(swift **a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v6 = *v4;
  v7 = *v4;
  v47 = a2;
  v48 = v7;
  v8 = *(*(v6 + 376) + 8);
  v9 = *(v6 + 368);
  swift_getAssociatedTypeWitness(255, v8, v9, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  v14 = type metadata accessor for Optional(0, v10, v12, v13);
  v43 = *(v14 - 8);
  v44 = v14;
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v46 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v43 - v20;
  v22 = *(v11 - 8);
  v24 = MEMORY[0x1EEE9AC00](v19, v23);
  v45 = &v43 - v25;
  v52 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v43 - v27;
  v29 = *a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v9, v11, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v32 = type metadata accessor for _IndexBox(0, v11, AssociatedConformanceWitness, v31);
  v51 = swift_dynamicCastClass(v29, v32);
  if (!v51)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x3DCuLL, 0);
  }

  (*(v52 + 16))(v28, &v4[*(v48 + 384)], v9);
  ObjectType = swift_getObjectType(v49);
  (*(v50 + 16))(v11, AssociatedConformanceWitness, ObjectType);
  v50 = v22[6];
  if ((v50)(v21, 1, v11) == 1)
  {
    (*(v43 + 8))(v21, v44);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x3DAuLL, 0);
  }

  v34 = v45;
  v48 = v22[4];
  (v48)(v45, v21, v11);
  v49 = v11;
  v35 = v51;
  v36 = *(*v51 + 96);
  v37 = v46;
  (*(v8 + 144))(v51 + v36, v47, v34, v9, v8);
  (*(v52 + 8))(v28, v9);
  v38 = v22[1];
  v39 = v35 + v36;
  v40 = v49;
  v38(v39, v49);
  v41 = (v50)(v37, 1, v40);
  if (v41 == 1)
  {
    (*(v43 + 8))(v37, v44);
    v37 = v34;
  }

  else
  {
    v38(v34, v40);
  }

  (v48)(v51 + v36, v37, v40);
  return v41 != 1;
}

uint64_t _BidirectionalCollectionBox._distance(from:to:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v54 = a3;
  v55 = a4;
  v7 = *v4;
  v51 = *(*v4 + 376);
  v8 = *(v51 + 8);
  v9 = *(v7 + 368);
  swift_getAssociatedTypeWitness(255, v8, v9, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  v14 = type metadata accessor for Optional(0, v10, v12, v13);
  v46 = *(v14 - 8);
  v47 = v14;
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v53 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - v20;
  v22 = *(v11 - 8);
  v24 = MEMORY[0x1EEE9AC00](v19, v23);
  v50 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v56 = &v45 - v28;
  MEMORY[0x1EEE9AC00](v27, v29);
  v48 = &v45 - v30;
  v49 = v31;
  (*(v31 + 16))();
  ObjectType = swift_getObjectType(a1);
  v33 = *(a2 + 16);
  v52 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v9, v11, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v33(v11, AssociatedConformanceWitness, ObjectType, a2);
  v35 = v22[6];
  if (v35(v21, 1, v11) == 1 || (v36 = v22[4], v36(v56, v21, v11), v37 = swift_getObjectType(v54), v21 = v53, (*(v55 + 16))(v11, AssociatedConformanceWitness, v37), v35(v21, 1, v11) == 1))
  {
    (*(v46 + 8))(v21, v47);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x3E4uLL, 0);
  }

  v38 = v50;
  v36(v50, v21, v11);
  v39 = v52;
  v40 = v56;
  v41 = v48;
  v42 = (*(v51 + 64))(v56, v38, v52);
  v43 = v22[1];
  v43(v38, v11);
  v43(v40, v11);
  (*(v49 + 8))(v41, v39);
  return v42;
}

uint64_t _BidirectionalCollectionBox._count.getter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v10 - v6;
  (*(v5 + 16))(&v10 - v6, v2 + *(v3 + 384), v4);
  v8 = (*(*(*(v3 + 376) + 8) + 112))(v4);
  (*(v5 + 8))(v7, v4);
  return v8;
}

char *_BidirectionalCollectionBox._index(before:)(unint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*(*v2 + 376) + 8);
  v48 = *(*v2 + 376);
  v49 = v6;
  v7 = *(v5 + 368);
  swift_getAssociatedTypeWitness(255, v6, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v12 = type metadata accessor for Optional(0, v8, v10, v11);
  v43 = *(v12 - 8);
  v44 = v12;
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v42 - v15;
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = *(v9 - 8);
  v21 = MEMORY[0x1EEE9AC00](&v42 - v18, v20);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v46 = &v42 - v26;
  v27 = *(v5 + 384);
  v47 = v28;
  v29 = *(v28 + 16);
  v45 = v25;
  v29(v25, &v2[v27], v7);
  ObjectType = swift_getObjectType(a1);
  v31 = *(a2 + 16);
  v32 = v49;
  v49 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v32, v7, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v31(v9, AssociatedConformanceWitness, ObjectType, a2);
  if ((*(v19 + 48))(v16, 1, v9) == 1)
  {
    (*(v43 + 8))(v16, v44);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x3EEuLL, 0);
  }

  v34 = *(v19 + 32);
  v34(v23, v16, v9);
  v35 = v49;
  v36 = v45;
  v37 = v46;
  (*(v48 + 32))(v23, v49);
  (*(v19 + 8))(v23, v9);
  (*(v47 + 8))(v36, v35);
  v39 = type metadata accessor for _IndexBox(0, v9, AssociatedConformanceWitness, v38);
  v40 = swift_allocObject(v39, *(v39 + 48), *(v39 + 52));
  v34(&v40[*(*v40 + 96)], v37, v9);
  return v40;
}

uint64_t _BidirectionalCollectionBox._formIndex(before:)(swift *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 368);
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v20 - v7;
  v10 = *(v9 + 376);
  v11 = *(v10 + 8);
  swift_getAssociatedTypeWitness(255, v11, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v11, v5, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v16 = type metadata accessor for _IndexBox(0, v13, AssociatedConformanceWitness, v15);
  v17 = swift_dynamicCastClass(a1, v16);
  if (!v17)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x3F6uLL, 0);
  }

  v18 = v17;
  (*(v6 + 16))(v8, v2 + *(v4 + 384), v5);
  (*(v10 + 40))(v18 + *(*v18 + 96), v5, v10);
  return (*(v6 + 8))(v8, v5);
}

char *_RandomAccessCollectionBox._makeIterator()(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 376);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v20 - v6;
  v8 = *(*(*(*(v3 + 384) + 8) + 8) + 8);
  swift_getAssociatedTypeWitness(0, v8, v4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v20 - v13;
  (*(v5 + 16))(v7, v2 + *(v3 + 392), v4);
  (*(v8 + 32))(v4, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v10, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v17 = type metadata accessor for _IteratorBox(0, v10, AssociatedConformanceWitness, v16);
  v18 = swift_allocObject(v17, *(v17 + 48), *(v17 + 52));
  (*(v11 + 32))(&v18[*(*v18 + 120)], v14, v10);
  return v18;
}

uint64_t _RandomAccessCollectionBox._underestimatedCount.getter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 376);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v10 - v6;
  (*(v5 + 16))(&v10 - v6, v2 + *(v3 + 392), v4);
  v8 = (*(*(*(*(*(v3 + 384) + 8) + 8) + 8) + 40))(v4);
  (*(v5 + 8))(v7, v4);
  return v8;
}

__objc2_class **_RandomAccessCollectionBox._map<A>(_:)(void (*a1)(char *), uint64_t a2, unint64_t *a3)
{
  v66 = a1;
  v67 = a2;
  v5 = *v3;
  v6 = *(*(*(*v3 + 384) + 8) + 8);
  v7 = *(*v3 + 376);
  swift_getAssociatedTypeWitness(0, *(v6 + 8), v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v58 = v8;
  v65 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v59 = &v52 - v11;
  v12 = a3;
  MEMORY[0x1EEE9AC00](v10, v13);
  v60 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v6, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v16 = v15;
  v61 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v57 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v23 = &v52 - v22;
  v24 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v21, v25);
  v27 = &v52 - v26;
  (*(v24 + 16))(&v52 - v26, v3 + *(v5 + 392), v7);
  v28 = *(v6 + 112);
  v70 = v6;
  v29 = v28(v7, v6);
  if (v29)
  {
    v32 = v29;
    v72 = &_swiftEmptyArrayStorage;
    v63 = type metadata accessor for ContiguousArray(0, v12, v30, v31);
    ContiguousArray.reserveCapacity(_:)(v32);
    v33 = *(v70 + 64);
    v55 = v23;
    v56 = v27;
    v33(v7);
    if (v32 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v53 = v24;
    v54 = v16;
    v34 = *(v70 + 80);
    v36 = v58;
    v35 = v59;
    v68 = v7;
    v37 = (v65 + 16);
    v38 = (v65 + 8);
    v64 = v34;
    v65 = v70 + 80;
    v62 = v70 + 192;
    v40 = v55;
    v39 = v56;
    v41 = v60;
    do
    {
      v42 = v64(v71, v40, v68, v70);
      (*v37)(v35);
      v42(v71, 0);
      v43 = v69;
      v66(v35);
      if (v43)
      {
        (*v38)(v35, v36);
        (*(v61 + 8))(v40, v54);
        v72;
        return (*(v53 + 8))(v39, v68);
      }

      v69 = 0;
      (*v38)(v35, v36);
      ContiguousArray.append(_:)(v41, v63);
      (*(v70 + 192))(v40, v68);
      --v32;
    }

    while (v32);
    v44 = v70;
    v45 = v57;
    v46 = v68;
    (*(v70 + 72))(v68, v70);
    v47 = v54;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v44, v46, v54, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
    v49 = (*(*(AssociatedConformanceWitness + 8) + 8))(v40, v45, v47);
    v50 = *(v61 + 8);
    v50(v45, v47);
    if ((v49 & 1) == 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v50(v40, v47);
    (*(v53 + 8))(v39, v46);
    return v72;
  }

  else
  {
    (*(v24 + 8))(v27, v7);
    _swift_isClassOrObjCExistentialType(v12, v12);
    return &_swiftEmptyArrayStorage;
  }
}

__objc2_class **_RandomAccessCollectionBox._filter(_:)(uint64_t (*a1)(char *), uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 376);
  MEMORY[0x1EEE9AC00](a1, a2);
  (*(v7 + 16))(&v10 - v8, v2 + *(v5 + 392), v6);
  return Sequence.filter(_:)(a1, a2, v6, *(*(*(*(v5 + 384) + 8) + 8) + 8));
}

uint64_t _RandomAccessCollectionBox._forEach(_:)(void (*a1)(char *), uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 376);
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v11 - v8;
  (*(v7 + 16))(&v11 - v8, v2 + *(v5 + 392), v6);
  Sequence.forEach(_:)(a1, a2, v6, *(*(*(*(v5 + 384) + 8) + 8) + 8));
  return (*(v7 + 8))(v9, v6);
}

uint64_t _RandomAccessCollectionBox.__customContainsEquatableElement(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 376);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v11 - v7;
  (*(v6 + 16))(&v11 - v7, v2 + *(v4 + 392), v5);
  v9 = (*(*(*(*(*(v4 + 384) + 8) + 8) + 8) + 48))(a1, v5);
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t _RandomAccessCollectionBox.__copyToContiguousArray()(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 376);
  MEMORY[0x1EEE9AC00](a1, a2);
  (*(v5 + 16))(&v8 - v6, v2 + *(v3 + 392), v4);
  return (*(*(*(*(*(v3 + 384) + 8) + 8) + 8) + 56))(v4);
}

char *_RandomAccessCollectionBox.__copyContents(initializing:)(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  v3 = *v2;
  v4 = *(*v2 + 376);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v20 - v6;
  v8 = *(*(*(*(v3 + 384) + 8) + 8) + 8);
  swift_getAssociatedTypeWitness(0, v8, v4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v20 - v13;
  (*(v5 + 16))(v7, v2 + *(v3 + 392), v4);
  (*(v8 + 64))(v14, v20, v21, v4, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v10, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v17 = type metadata accessor for _IteratorBox(0, v10, AssociatedConformanceWitness, v16);
  v18 = swift_allocObject(v17, *(v17 + 48), *(v17 + 52));
  (*(v11 + 32))(&v18[*(*v18 + 120)], v14, v10);
  return v18;
}

char *_RandomAccessCollectionBox.__allocating_init(_base:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject(v1, *(v1 + 48), *(v1 + 52));
  v4 = specialized _RandomAccessCollectionBox.init(_base:)(a1);
  (*(*(*(v2 + 376) - 8) + 8))(a1);
  return v4;
}

char *_RandomAccessCollectionBox._drop(while:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v25 = a3;
  v23 = a2;
  v22 = a1;
  v4 = *v3;
  v5 = *(*v3 + 376);
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v21 - v7;
  v9 = *(v4 + 384);
  v10 = *(*(v9 + 1) + 8);
  swift_getAssociatedTypeWitness(0, v10, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v12 = v11;
  v21 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v21 - v14;
  (*(v6 + 16))(v8, v3 + *(v4 + 392), v5);
  v16 = v24;
  v25(v22, v23, v5, v10);
  if (!v16)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v9, v5, v12, &protocol requirements base descriptor for RandomAccessCollection, associated conformance descriptor for RandomAccessCollection.Collection.SubSequence: RandomAccessCollection);
    v19 = type metadata accessor for _RandomAccessCollectionBox(0, v12, AssociatedConformanceWitness, v18);
    swift_allocObject(v19, *(v19 + 48), *(v19 + 52));
    v5 = specialized _RandomAccessCollectionBox.init(_base:)(v15);
    (*(v21 + 8))(v15, v12);
  }

  return v5;
}

char *_RandomAccessCollectionBox._dropFirst(_:)(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t))
{
  v21 = a1;
  v22 = a2;
  v3 = *v2;
  v4 = *(*v2 + 376);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v21 - v6;
  v8 = *(v3 + 384);
  v9 = *(*(v8 + 1) + 8);
  swift_getAssociatedTypeWitness(0, v9, v4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v21 - v14;
  (*(v5 + 16))(v7, v2 + *(v3 + 392), v4);
  v22(v21, v4, v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v11, &protocol requirements base descriptor for RandomAccessCollection, associated conformance descriptor for RandomAccessCollection.Collection.SubSequence: RandomAccessCollection);
  v18 = type metadata accessor for _RandomAccessCollectionBox(0, v11, AssociatedConformanceWitness, v17);
  swift_allocObject(v18, *(v18 + 48), *(v18 + 52));
  v19 = specialized _RandomAccessCollectionBox.init(_base:)(v15);
  (*(v12 + 8))(v15, v11);
  return v19;
}

char *_RandomAccessCollectionBox._dropLast(_:)(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t))
{
  v21 = a1;
  v22 = a2;
  v3 = *v2;
  v4 = *(*v2 + 376);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v21 - v6;
  v8 = *(v3 + 384);
  v9 = *(v8 + 1);
  swift_getAssociatedTypeWitness(0, *(v9 + 8), v4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v21 - v14;
  (*(v5 + 16))(v7, v2 + *(v3 + 392), v4);
  v22(v21, v4, v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v11, &protocol requirements base descriptor for RandomAccessCollection, associated conformance descriptor for RandomAccessCollection.Collection.SubSequence: RandomAccessCollection);
  v18 = type metadata accessor for _RandomAccessCollectionBox(0, v11, AssociatedConformanceWitness, v17);
  swift_allocObject(v18, *(v18 + 48), *(v18 + 52));
  v19 = specialized _RandomAccessCollectionBox.init(_base:)(v15);
  (*(v12 + 8))(v15, v11);
  return v19;
}

id *_RandomAccessCollectionBox.deinit()
{
  v1 = *v0;
  swift_unknownObjectRelease(v0[2]);
  swift_unknownObjectRelease(v0[4]);
  (*(*(v1[47] - 8) + 8))(v0 + *(*v0 + 49));
  return v0;
}

void _RandomAccessCollectionBox.__deallocating_deinit()
{
  v1 = *v0;
  swift_unknownObjectRelease(v0[2]);
  swift_unknownObjectRelease(v0[4]);
  (*(*(v1[47] - 8) + 8))(v0 + *(*v0 + 49));

  swift_deallocClassInstance(v0);
}

char *_RandomAccessCollectionBox.init(_base:)(uint64_t a1)
{
  v3 = *v1;
  v4 = specialized _RandomAccessCollectionBox.init(_base:)(a1);
  (*(*(*(v3 + 376) - 8) + 8))(a1);
  return v4;
}

uint64_t _RandomAccessCollectionBox._unbox(_:file:line:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, unint64_t a4@<X3>, unsigned int a5@<W4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a6;
  v29 = a3;
  v31 = a5;
  v30 = a4;
  v32 = a7;
  v10 = *(*(*(*v7 + 384) + 8) + 8);
  v11 = *(*v7 + 376);
  swift_getAssociatedTypeWitness(255, v10, v11, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v13 = v12;
  v16 = type metadata accessor for Optional(0, v12, v14, v15);
  v26 = *(v16 - 8);
  v27 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v25 - v18;
  ObjectType = swift_getObjectType(a1);
  v21 = *(a2 + 16);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v11, v13, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v21(v13, AssociatedConformanceWitness, ObjectType, a2);
  v23 = *(v13 - 8);
  if ((*(v23 + 48))(v19, 1, v13) == 1)
  {
    (*(v26 + 8))(v19, v27);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, v29, v30, v31, v28, 0);
  }

  return (*(v23 + 32))(v32, v19, v13);
}

uint64_t _RandomAccessCollectionBox.subscript.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v6 = *v3;
  v48 = *(*(*(*v3 + 384) + 8) + 8);
  v7 = *(v6 + 376);
  swift_getAssociatedTypeWitness(255, v48, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v12 = type metadata accessor for Optional(0, v8, v10, v11);
  v42 = *(v12 - 8);
  v43 = v12;
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v41 - v15;
  v17 = *(v9 - 8);
  v19 = MEMORY[0x1EEE9AC00](v14, v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v45 = &v41 - v24;
  MEMORY[0x1EEE9AC00](v23, v25);
  v46 = v26;
  v27 = *(v26 + 16);
  v44 = &v41 - v28;
  v27();
  ObjectType = swift_getObjectType(a1);
  v30 = *(a2 + 16);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v48, v7, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v30(v9, AssociatedConformanceWitness, ObjectType, a2);
  if ((*(v17 + 48))(v16, 1, v9) == 1)
  {
    (*(v42 + 8))(v16, v43);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x475uLL, 0);
  }

  v32 = *(v17 + 32);
  v32(v21, v16, v9);
  v33 = v45;
  v32(v45, v21, v9);
  v34 = v48;
  v35 = v44;
  v36 = (v48[10])(v49, v33, v7, v48);
  v38 = v37;
  swift_getAssociatedTypeWitness(0, v34[1], v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  (*(*(v39 - 8) + 16))(v47, v38, v39);
  v36(v49, 0);
  (*(v17 + 8))(v33, v9);
  return (*(v46 + 8))(v35, v7);
}

char *_RandomAccessCollectionBox.subscript.getter(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v86 = a3;
  v87 = a4;
  v6 = *v4;
  v88 = a1;
  v89 = v6;
  v82 = *(v6 + 384);
  v7 = *(*(v82 + 1) + 8);
  v8 = *(v6 + 376);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v83 = *(v9 - 8);
  v84 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v81 = &v69 - v11;
  swift_getAssociatedTypeWitness(255, v7, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v13 = v12;
  swift_getTupleTypeMetadata2(0, v13, v13, "lower upper ", 0);
  v79 = v14;
  v77 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v78 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v73 = &v69 - v19;
  v22 = type metadata accessor for Optional(0, v13, v20, v21);
  v69 = *(v22 - 8);
  v70 = v22;
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v85 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v29 = &v69 - v28;
  v30 = *(v13 - 1);
  v32 = MEMORY[0x1EEE9AC00](v27, v31);
  v34 = &v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v35);
  v37 = &v69 - v36;
  v80 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v8, v13, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v40 = type metadata accessor for Range(0, v13, AssociatedConformanceWitness, v39);
  v75 = *(v40 - 8);
  v76 = v40;
  v42 = MEMORY[0x1EEE9AC00](v40, v41);
  v71 = &v69 - v43;
  MEMORY[0x1EEE9AC00](v42, v44);
  v74 = v45;
  v46 = *(v45 + 16);
  v72 = &v69 - v47;
  v89 = v8;
  v46();
  ObjectType = swift_getObjectType(v88);
  (*(a2 + 16))(v13, AssociatedConformanceWitness, ObjectType, a2);
  v49 = *(v30 + 48);
  if (v49(v29, 1, v13) == 1 || (v88 = v30, v50 = *(v30 + 32), v50(v37, v29, v13), v51 = swift_getObjectType(v86), v29 = v85, (*(v87 + 16))(v13, AssociatedConformanceWitness, v51), v49(v29, 1, v13) == 1))
  {
    (*(v69 + 8))(v29, v70);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x47DuLL, 0);
  }

  v52 = v34;
  v50(v34, v29, v13);
  if (((*(AssociatedConformanceWitness + 24))(v37, v34, v13, AssociatedConformanceWitness) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v53 = v73;
  v50(v73, v37, v13);
  v54 = v79;
  v50(&v53[*(v79 + 48)], v52, v13);
  v56 = v77;
  v55 = v78;
  (*(v77 + 16))(v78, v53, v54);
  v87 = *(v54 + 48);
  v57 = v71;
  v50(v71, v55, v13);
  v58 = *(v88 + 8);
  v58(&v55[v87], v13);
  (*(v56 + 32))(v55, v53, v54);
  v59 = v76;
  v50(&v57[*(v76 + 36)], &v55[*(v54 + 48)], v13);
  v58(v55, v13);
  v60 = v81;
  v61 = v72;
  v62 = v89;
  (v80[11])(v57, v89);
  (*(v75 + 8))(v57, v59);
  (*(v74 + 8))(v61, v62);
  v63 = v84;
  v64 = swift_getAssociatedConformanceWitness(v82, v62, v84, &protocol requirements base descriptor for RandomAccessCollection, associated conformance descriptor for RandomAccessCollection.Collection.SubSequence: RandomAccessCollection);
  v66 = type metadata accessor for _RandomAccessCollectionBox(0, v63, v64, v65);
  swift_allocObject(v66, *(v66 + 48), *(v66 + 52));
  v67 = specialized _RandomAccessCollectionBox.init(_base:)(v60);
  (*(v83 + 8))(v60, v63);
  return v67;
}

char *_RandomAccessCollectionBox._index(after:)(unint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v47 = *(*(*(*v2 + 384) + 8) + 8);
  v6 = *(v5 + 376);
  swift_getAssociatedTypeWitness(255, v47, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  v11 = type metadata accessor for Optional(0, v7, v9, v10);
  v41 = *(v11 - 8);
  v42 = v11;
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = *(v8 - 8);
  v20 = MEMORY[0x1EEE9AC00](&v40 - v17, v19);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v20, v23);
  v44 = &v40 - v25;
  v26 = *(v5 + 392);
  v45 = v27;
  v28 = *(v27 + 16);
  v43 = v24;
  v28(v24, &v2[v26], v6);
  ObjectType = swift_getObjectType(a1);
  v30 = *(a2 + 16);
  v46 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v47, v6, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v30(v8, AssociatedConformanceWitness, ObjectType, a2);
  if ((*(v18 + 48))(v15, 1, v8) == 1)
  {
    (*(v41 + 8))(v15, v42);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x483uLL, 0);
  }

  v32 = *(v18 + 32);
  v32(v22, v15, v8);
  v33 = v46;
  v34 = v43;
  v35 = v44;
  (v47[23])(v22, v46);
  (*(v18 + 8))(v22, v8);
  (*(v45 + 8))(v34, v33);
  v37 = type metadata accessor for _IndexBox(0, v8, AssociatedConformanceWitness, v36);
  v38 = swift_allocObject(v37, *(v37 + 48), *(v37 + 52));
  v32(&v38[*(*v38 + 96)], v35, v8);
  return v38;
}

uint64_t _RandomAccessCollectionBox._formIndex(after:)(swift *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 376);
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v19 - v7;
  v10 = *(*(*(v9 + 384) + 8) + 8);
  swift_getAssociatedTypeWitness(255, v10, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v5, v11, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v15 = type metadata accessor for _IndexBox(0, v12, AssociatedConformanceWitness, v14);
  v16 = swift_dynamicCastClass(a1, v15);
  if (!v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x48BuLL, 0);
  }

  v17 = v16;
  (*(v6 + 16))(v8, v2 + *(v4 + 392), v5);
  (*(v10 + 192))(v17 + *(*v17 + 96), v5, v10);
  return (*(v6 + 8))(v8, v5);
}

char *_RandomAccessCollectionBox._index(_:offsetBy:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a3;
  v6 = *v3;
  v47 = *(*v3 + 384);
  v49 = *(*(v47 + 8) + 8);
  v7 = *(v6 + 376);
  swift_getAssociatedTypeWitness(255, v49, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v12 = type metadata accessor for Optional(0, v8, v10, v11);
  v42 = *(v12 - 8);
  v43 = v12;
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v42 - v15;
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = *(v9 - 8);
  v21 = MEMORY[0x1EEE9AC00](&v42 - v18, v20);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v45 = &v42 - v26;
  v27 = *(v6 + 392);
  v46 = v28;
  v29 = *(v28 + 16);
  v44 = v25;
  v29(v25, &v3[v27], v7);
  ObjectType = swift_getObjectType(a1);
  v31 = *(a2 + 16);
  v32 = v49;
  v49 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v32, v7, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v31(v9, AssociatedConformanceWitness, ObjectType, a2);
  if ((*(v19 + 48))(v16, 1, v9) == 1)
  {
    (*(v42 + 8))(v16, v43);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x492uLL, 0);
  }

  v34 = *(v19 + 32);
  v34(v23, v16, v9);
  v35 = v44;
  v36 = v45;
  v37 = v49;
  (*(v47 + 32))(v23, v48, v49);
  (*(v19 + 8))(v23, v9);
  (*(v46 + 8))(v35, v37);
  v39 = type metadata accessor for _IndexBox(0, v9, AssociatedConformanceWitness, v38);
  v40 = swift_allocObject(v39, *(v39 + 48), *(v39 + 52));
  v34(&v40[*(*v40 + 96)], v36, v9);
  return v40;
}

char *_RandomAccessCollectionBox._index(_:offsetBy:limitedBy:)(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, char *, uint64_t), unsigned int (*a5)(char *, uint64_t, uint64_t))
{
  v72 = a4;
  v73 = a5;
  v71 = a3;
  v77 = a1;
  v7 = *v5;
  v70 = *(*v5 + 384);
  v74 = *(*(v70 + 8) + 8);
  v8 = *(v7 + 376);
  swift_getAssociatedTypeWitness(0, v74, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = v9;
  v11 = *(v9 - 8);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v64 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v69 = &v63 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v78 = &v63 - v20;
  v21 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v63 - v23;
  v27 = type metadata accessor for Optional(0, v10, v25, v26);
  v75 = *(v27 - 8);
  v76 = v27;
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v66 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v34 = &v63 - v33;
  v36 = MEMORY[0x1EEE9AC00](v32, v35);
  v38 = &v63 - v37;
  MEMORY[0x1EEE9AC00](v36, v39);
  v65 = &v63 - v40;
  v41 = *(v7 + 392);
  v67 = v24;
  v68 = v21;
  (*(v21 + 16))(v24, v5 + v41, v8);
  ObjectType = swift_getObjectType(v77);
  v43 = *(a2 + 16);
  v44 = v74;
  v74 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v44, v8, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v43(v10, AssociatedConformanceWitness, ObjectType, a2);
  v77 = v11;
  v46 = *(v11 + 48);
  if (v46(v38, 1, v10) == 1)
  {
    (*(v75 + 8))(v38, v76);
    goto LABEL_9;
  }

  v47 = *(v77 + 32);
  v47(v78, v38, v10);
  v48 = swift_getObjectType(v72);
  v49 = *(v73 + 2);
  v63 = AssociatedConformanceWitness;
  v49(v10, AssociatedConformanceWitness, v48);
  v73 = v46;
  if (v46(v34, 1, v10) == 1)
  {
    (*(v75 + 8))(v34, v76);
LABEL_9:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x49BuLL, 0);
  }

  v50 = v69;
  v72 = v47;
  v47(v69, v34, v10);
  v51 = v65;
  v52 = v78;
  v53 = v67;
  v54 = v74;
  (*(v70 + 40))(v78, v71, v50, v74);
  v55 = *(v77 + 8);
  v55(v50, v10);
  v55(v52, v10);
  (*(v68 + 8))(v53, v54);
  v56 = v66;
  (*(v75 + 32))(v66, v51, v76);
  if (v73(v56, 1, v10) == 1)
  {
    return 0;
  }

  v58 = v64;
  v59 = v72;
  v72(v64, v56, v10);
  v61 = type metadata accessor for _IndexBox(0, v10, v63, v60);
  v62 = swift_allocObject(v61, *(v61 + 48), *(v61 + 52));
  v59(&v62[*(*v62 + 96)], v58, v10);
  return v62;
}

uint64_t _RandomAccessCollectionBox._formIndex(_:offsetBy:)(swift **a1, uint64_t a2)
{
  v24 = *v2;
  v25 = a2;
  v4 = *(*(v24[48] + 8) + 8);
  v5 = v24[47];
  swift_getAssociatedTypeWitness(0, v4, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  v8 = *(v6 - 8);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v24 - v11;
  v13 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v10, v14);
  v16 = &v24 - v15;
  v17 = *a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v7, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v20 = type metadata accessor for _IndexBox(0, v7, AssociatedConformanceWitness, v19);
  v21 = swift_dynamicCastClass(v17, v20);
  if (!v21)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x4A6uLL, 0);
  }

  v22 = v21;
  (*(v13 + 16))(v16, &v2[v24[49]], v5);
  (*(v8 + 32))(v12, v22 + *(*v22 + 96), v7);
  (*(v4 + 136))(v12, v25, v5, v4);
  (*(v8 + 8))(v12, v7);
  return (*(v13 + 8))(v16, v5);
}

BOOL _RandomAccessCollectionBox._formIndex(_:offsetBy:limitedBy:)(swift **a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v6 = *v4;
  v7 = *v4;
  v47 = a2;
  v48 = v7;
  v8 = *(*(*(v6 + 384) + 8) + 8);
  v9 = *(v6 + 376);
  swift_getAssociatedTypeWitness(255, v8, v9, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  v14 = type metadata accessor for Optional(0, v10, v12, v13);
  v43 = *(v14 - 8);
  v44 = v14;
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v46 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v43 - v20;
  v22 = *(v11 - 8);
  v24 = MEMORY[0x1EEE9AC00](v19, v23);
  v45 = &v43 - v25;
  v52 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v43 - v27;
  v29 = *a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v9, v11, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v32 = type metadata accessor for _IndexBox(0, v11, AssociatedConformanceWitness, v31);
  v51 = swift_dynamicCastClass(v29, v32);
  if (!v51)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x4B0uLL, 0);
  }

  (*(v52 + 16))(v28, &v4[*(v48 + 392)], v9);
  ObjectType = swift_getObjectType(v49);
  (*(v50 + 16))(v11, AssociatedConformanceWitness, ObjectType);
  v50 = v22[6];
  if ((v50)(v21, 1, v11) == 1)
  {
    (*(v43 + 8))(v21, v44);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x4AEuLL, 0);
  }

  v34 = v45;
  v48 = v22[4];
  (v48)(v45, v21, v11);
  v49 = v11;
  v35 = v51;
  v36 = *(*v51 + 96);
  v37 = v46;
  (*(v8 + 144))(v51 + v36, v47, v34, v9, v8);
  (*(v52 + 8))(v28, v9);
  v38 = v22[1];
  v39 = v35 + v36;
  v40 = v49;
  v38(v39, v49);
  v41 = (v50)(v37, 1, v40);
  if (v41 == 1)
  {
    (*(v43 + 8))(v37, v44);
    v37 = v34;
  }

  else
  {
    v38(v34, v40);
  }

  (v48)(v51 + v36, v37, v40);
  return v41 != 1;
}

uint64_t _RandomAccessCollectionBox._distance(from:to:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v54 = a3;
  v55 = a4;
  v7 = *v4;
  v51 = *(*v4 + 384);
  v8 = *(*(v51 + 8) + 8);
  v9 = *(v7 + 376);
  swift_getAssociatedTypeWitness(255, v8, v9, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  v14 = type metadata accessor for Optional(0, v10, v12, v13);
  v46 = *(v14 - 8);
  v47 = v14;
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v53 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - v20;
  v22 = *(v11 - 8);
  v24 = MEMORY[0x1EEE9AC00](v19, v23);
  v50 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v56 = &v45 - v28;
  MEMORY[0x1EEE9AC00](v27, v29);
  v48 = &v45 - v30;
  v49 = v31;
  (*(v31 + 16))();
  ObjectType = swift_getObjectType(a1);
  v33 = *(a2 + 16);
  v52 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v9, v11, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v33(v11, AssociatedConformanceWitness, ObjectType, a2);
  v35 = v22[6];
  if (v35(v21, 1, v11) == 1 || (v36 = v22[4], v36(v56, v21, v11), v37 = swift_getObjectType(v54), v21 = v53, (*(v55 + 16))(v11, AssociatedConformanceWitness, v37), v35(v21, 1, v11) == 1))
  {
    (*(v46 + 8))(v21, v47);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x4B8uLL, 0);
  }

  v38 = v50;
  v36(v50, v21, v11);
  v39 = v52;
  v40 = v56;
  v41 = v48;
  v42 = (*(v51 + 48))(v56, v38, v52);
  v43 = v22[1];
  v43(v38, v11);
  v43(v40, v11);
  (*(v49 + 8))(v41, v39);
  return v42;
}

uint64_t _RandomAccessCollectionBox._count.getter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 376);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v10 - v6;
  (*(v5 + 16))(&v10 - v6, v2 + *(v3 + 392), v4);
  v8 = (*(*(*(*(v3 + 384) + 8) + 8) + 112))(v4);
  (*(v5 + 8))(v7, v4);
  return v8;
}

char *_RandomAccessCollectionBox._index(before:)(unint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*(*(*v2 + 384) + 8) + 8);
  v48 = *(*(*v2 + 384) + 8);
  v49 = v6;
  v7 = *(v5 + 376);
  swift_getAssociatedTypeWitness(255, v6, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v12 = type metadata accessor for Optional(0, v8, v10, v11);
  v43 = *(v12 - 8);
  v44 = v12;
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v42 - v15;
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = *(v9 - 8);
  v21 = MEMORY[0x1EEE9AC00](&v42 - v18, v20);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v46 = &v42 - v26;
  v27 = *(v5 + 392);
  v47 = v28;
  v29 = *(v28 + 16);
  v45 = v25;
  v29(v25, &v2[v27], v7);
  ObjectType = swift_getObjectType(a1);
  v31 = *(a2 + 16);
  v32 = v49;
  v49 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v32, v7, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v31(v9, AssociatedConformanceWitness, ObjectType, a2);
  if ((*(v19 + 48))(v16, 1, v9) == 1)
  {
    (*(v43 + 8))(v16, v44);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x4C2uLL, 0);
  }

  v34 = *(v19 + 32);
  v34(v23, v16, v9);
  v35 = v49;
  v36 = v45;
  v37 = v46;
  (*(v48 + 32))(v23, v49);
  (*(v19 + 8))(v23, v9);
  (*(v47 + 8))(v36, v35);
  v39 = type metadata accessor for _IndexBox(0, v9, AssociatedConformanceWitness, v38);
  v40 = swift_allocObject(v39, *(v39 + 48), *(v39 + 52));
  v34(&v40[*(*v40 + 96)], v37, v9);
  return v40;
}

uint64_t _RandomAccessCollectionBox._formIndex(before:)(swift *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 376);
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v20 - v7;
  v10 = *(*(v9 + 384) + 8);
  v11 = *(v10 + 8);
  swift_getAssociatedTypeWitness(255, v11, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v11, v5, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v16 = type metadata accessor for _IndexBox(0, v13, AssociatedConformanceWitness, v15);
  v17 = swift_dynamicCastClass(a1, v16);
  if (!v17)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x4CAuLL, 0);
  }

  v18 = v17;
  (*(v6 + 16))(v8, v2 + *(v4 + 392), v5);
  (*(v10 + 40))(v18 + *(*v18 + 96), v5, v10);
  return (*(v6 + 8))(v8, v5);
}

uint64_t _ClosureBasedSequence._makeUnderlyingIterator.setter(uint64_t a1, uint64_t a2)
{
  result = v2[1];
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance _ClosureBasedSequence<A>()
{
  v1 = *(v0 + 8);
  _ClosureBasedSequence.makeIterator()(*v0);

  return v1;
}

__objc2_class **protocol witness for Sequence._copyToContiguousArray() in conformance _ClosureBasedSequence<A>(uint64_t a1, uint64_t a2)
{
  v3 = specialized Sequence._copyToContiguousArray()(v2, a1, a2);
  *(v2 + 8);
  return v3;
}

void *AnySequence.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _ClosureBasedSequence(255, a4, a5, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ClosureBasedSequence<A>, v7, v8);
  v11 = type metadata accessor for _SequenceBox(0, v7, WitnessTable, v10);
  result = swift_allocObject(v11, 0x20, 7uLL);
  result[2] = a1;
  result[3] = a2;
  return result;
}

char *AnySequence.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for _SequenceBox(0, a3, a4, a4);
  v7 = swift_allocObject(v6, *(v6 + 48), *(v6 + 52));
  (*(*(a3 - 8) + 32))(&v7[*(*v7 + 224)], a1, a3);
  return v7;
}

uint64_t _ss13AnyCollectionVyxGSTsST22_copyToContiguousArrays0eF0Vy7ElementQzGyFTW_0(uint64_t a1)
{
  v2 = *v1;
  v3 = specialized AnyBidirectionalCollection._copyToContiguousArray()(*v1);
  v2;
  return v3;
}

uint64_t AnySequence._copyToContiguousArray()(uint64_t a1, uint64_t a2)
{
  v3 = specialized AnyBidirectionalCollection._copyToContiguousArray()(a1);
  a1;
  return v3;
}

void *AnySequence._copyContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = specialized AnyBidirectionalCollection._copyContents(initializing:)(a1, a2, a3, a4);
  a3;
  return v5;
}

uint64_t AnySequence.dropLast(_:)(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 176))(a1);
  a2;
  return v3;
}

uint64_t AnySequence.prefix(while:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*a3 + 192))(a1, a2);
  a3;
  return v4;
}

uint64_t AnySequence.suffix(_:)(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 200))(a1);
  a2;
  return v3;
}

void *specialized thunk for @callee_guaranteed (@in_guaranteed A) -> (@out A1, @error @out B1)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t *))
{
  result = a2(a1, &v6);
  if (v2)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
    result = swift_allocError(v4, &protocol self-conformance witness table for Error, 0, 0);
    *v5 = v6;
  }

  return result;
}

uint64_t AnySequence.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return AnySequence.filter(_:)(a1, a2, a3);
}

{
  v4 = (*(*a3 + 120))(a1, a2);
  a3;
  return v4;
}

uint64_t AnySequence.forEach(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return AnySequence.forEach(_:)(a1, a2, a3);
}

{
  (*(*a3 + 128))(a1, a2);
  return a3;
}

uint64_t AnySequence.drop(while:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return AnySequence.drop(while:)(a1, a2, a3);
}

{
  v4 = (*(*a3 + 160))(a1, a2);
  a3;
  return v4;
}

uint64_t AnyCollection.prefix(while:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return AnyCollection.prefix(while:)(a1, a2, a3);
}

{
  v4 = (*(*a3 + 240))(a1, a2);
  a3;
  return v4;
}

uint64_t AnyCollection.makeIterator()(uint64_t a1)
{
  v2 = (*(*a1 + 96))(a1);
  a1;
  return v2;
}

uint64_t AnyCollection.dropLast(_:)(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 232))(a1);
  a2;
  return v3;
}

uint64_t AnyCollection.suffix(_:)(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 248))(a1);
  a2;
  return v3;
}

uint64_t AnySequence.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a4;
  v14 = a5;
  v15 = a1;
  v16 = a2;
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a6;
  v11[5] = &v12;
  result = (*(*a3 + 112))(a7, v11, a5);
  if (v7)
  {
    v17 = v7;
    v9 = result;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
    swift_willThrowTypedImpl(&v17, v10, &protocol self-conformance witness table for Error);
    return v9;
  }

  return result;
}

uint64_t AnySequence.dropFirst(_:)(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 168))(a1);
  a2;
  return v3;
}

uint64_t AnySequence.prefix(_:)(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 184))(a1);
  a2;
  return v3;
}

uint64_t _IndexBox._unsafeUnbox(_:)@<X0>(swift *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  if (!swift_dynamicCastClass(a1, *v3))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = *(*(*(v6 + 80) - 8) + 16);
  v8 = a1 + *(*a1 + 96);

  return v7(a2, v8);
}

uint64_t _IndexBox._unbox<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  v5 = v4;
  v8 = type metadata accessor for _IndexBox(0, a1, a2, a4);
  v9 = swift_dynamicCastClass(v5, v8);
  if (v9)
  {
    v14 = *(a1 - 8);
    (*(v14 + 16))(a3, v9 + *(*v9 + 96), a1);
    v10 = v14;
    v11 = 0;
  }

  else
  {
    v10 = *(a1 - 8);
    v11 = 1;
  }

  v12 = *(v10 + 56);

  return v12(a3, v11, 1, a1);
}

uint64_t _IndexBox._isEqual(to:)(swift *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v18 - v11;
  v14 = *(v6 + 16);
  v14(&v18 - v11, v2 + *(v13 + 96), v5);
  if (!swift_dynamicCastClass(a1, v4))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v14(v9, a1 + *(*a1 + 96), v5);
  v15 = (*(*(*(v4 + 88) + 8) + 8))(v12, v9, v5);
  v16 = *(v6 + 8);
  v16(v9, v5);
  v16(v12, v5);
  return v15 & 1;
}

uint64_t _IndexBox._isLess(than:)(swift *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v18 - v11;
  v14 = *(v6 + 16);
  v14(&v18 - v11, v2 + *(v13 + 96), v5);
  if (!swift_dynamicCastClass(a1, v4))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v14(v9, a1 + *(*a1 + 96), v5);
  v15 = (*(*(v4 + 88) + 16))(v12, v9, v5);
  v16 = *(v6 + 8);
  v16(v9, v5);
  v16(v12, v5);
  return v15 & 1;
}

void AnyIndex._box.setter(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease(*v2);
  *v2 = a1;
  *(v2 + 8) = a2;
}

char *AnyIndex.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for _IndexBox(0, a2, a3, a4);
  v7 = swift_allocObject(v6, *(v6 + 48), *(v6 + 52));
  (*(*(a2 - 8) + 32))(&v7[*(*v7 + 96)], a1, a2);
  return v7;
}

uint64_t AnyCollection.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return AnyCollection.init<A>(_:)(a1, a2, a3, a4, type metadata accessor for _CollectionBox, specialized _CollectionBox.init(_base:));
}

{
  return AnyCollection.init<A>(_:)(a1, a2, a3, a4, type metadata accessor for _BidirectionalCollectionBox, specialized _BidirectionalCollectionBox.init(_base:));
}

{
  return AnyCollection.init<A>(_:)(a1, a2, a3, a4, type metadata accessor for _RandomAccessCollectionBox, specialized _RandomAccessCollectionBox.init(_base:));
}

uint64_t (*protocol witness for Collection.subscript.read in conformance AnyCollection<A>(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x28, 0x1D1CuLL);
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = AnyCollection.subscript.read(v7, *a2, a2[1], *v3, *(a3 + 16));
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*AnyCollection.subscript.read(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  *a1 = a5;
  v9 = *(a5 - 8);
  a1[1] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v11 = swift_coroFrameAlloc(v10, 0xE087uLL);
  }

  else
  {
    v11 = malloc(v10);
  }

  a1[2] = v11;
  (*(*a4 + 256))(a2, a3);
  return _ArrayBuffer.subscript.read;
}

double _ss13AnyCollectionVyxGSlsSl34_customLastIndexOfEquatableElementy0E0QzSgSg0H0QzFTW_0@<D0>(_OWORD *a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_180672740;
  return result;
}

uint64_t protocol witness for Sequence._copyContents(initializing:) in conformance AnySequence<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = specialized AnyBidirectionalCollection._copyContents(initializing:)(a2, a3, v6, *(a4 + 16));
  v9 = v8;
  v6;
  *a1 = v7;
  return v9;
}

uint64_t protocol witness for Collection.index(after:) in conformance AnyCollection<A>@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void)@<X3>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1], *v3);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t protocol witness for Collection.index(_:offsetBy:) in conformance AnyCollection<A>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, void, uint64_t, void)@<X4>, uint64_t *a4@<X8>)
{
  result = a3(*a1, a1[1], a2, *v4);
  *a4 = result;
  a4[1] = v7;
  return result;
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance AnyCollection<A>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(void, void, uint64_t, void, void, void)@<X5>, uint64_t *a5@<X8>)
{
  result = a4(*a1, a1[1], a2, *a3, a3[1], *v5);
  *a5 = result;
  a5[1] = v8;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance AnyBidirectionalCollection<A>(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x28, 0xF7B7uLL);
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = AnyBidirectionalCollection.subscript.read(v7, *a2, a2[1], *v3, *(a3 + 16));
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*AnyBidirectionalCollection.subscript.read(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  *a1 = a5;
  v9 = *(a5 - 8);
  a1[1] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v11 = swift_coroFrameAlloc(v10, 0x894BuLL);
  }

  else
  {
    v11 = malloc(v10);
  }

  a1[2] = v11;
  (*(*a4 + 256))(a2, a3);
  return _ArrayBuffer.subscript.read;
}

uint64_t protocol witness for Collection.subscript.getter in conformance AnyCollection<A>@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void, void)@<X3>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1], a1[2], a1[3], *v3);
  *a3 = result;
  return result;
}

uint64_t AnyCollection.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t))
{
  v9 = a5(0, a3, a4);
  swift_allocObject(v9, *(v9 + 48), *(v9 + 52));
  v10 = a6(a1);
  (*(*(a3 - 8) + 8))(a1, a3);
  return v10;
}

swift *AnyBidirectionalCollection.init(_:)(swift *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = (a3)(0, a2);
  result = swift_dynamicCastClass(a1, v4);
  if (!result)
  {
    a1;
    return 0;
  }

  return result;
}

void AnyCollection.formIndex(after:)(unint64_t *a1, uint64_t *a2)
{
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull(*a1);
  v6 = *a1;
  v5 = a1[1];
  v7 = *a2;
  if (isUniquelyReferenced_nonNull)
  {
    (*(v7 + 272))(v6, v5);
  }

  else
  {
    v8 = (*(v7 + 264))(v6, v5);
    v10 = v9;
    swift_unknownObjectRelease(v6);
    *a1 = v8;
    a1[1] = v10;
  }
}

void AnyCollection.formIndex(_:offsetBy:)(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (swift_isUniquelyReferenced_nonNull(*a1))
  {
    (*(*a3 + 296))(a1, a2);
  }

  else
  {
    v6 = *a1;
    v7 = (*(*a3 + 280))(*a1, a1[1], a2);
    v9 = v8;
    swift_unknownObjectRelease(v6);
    *a1 = v7;
    a1[1] = v9;
  }
}

uint64_t AnyCollection.formIndex(_:offsetBy:limitedBy:)(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  if (swift_isUniquelyReferenced_nonNull(*a1))
  {
    return (*(*a5 + 304))(a1, a2, a3, a4) & 1;
  }

  v11 = *a1;
  v12 = (*(*a5 + 288))(*a1, a1[1], a2, a3, a4);
  v14 = v13;
  swift_unknownObjectRelease(v11);
  if (v12)
  {
    *a1 = v12;
    a1[1] = v14;
    return 1;
  }

  else
  {
    *a1 = a3;
    a1[1] = a4;
    swift_unknownObjectRetain(a3);
    return 0;
  }
}