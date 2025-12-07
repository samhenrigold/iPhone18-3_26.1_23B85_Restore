uint64_t RangeReplaceableCollection.append<A>(contentsOf:)(uint64_t a1, Class *a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v36 = a4;
  v8 = *(*(a4 + 8) + 8);
  v35 = a2;
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v32 - v13;
  v17 = type metadata accessor for Optional(0, v10, v15, v16);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v32 - v19;
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v22 = v21;
  v32 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v32 - v24;
  (*(a5 + 32))(a3, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v22, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v27 = *(AssociatedConformanceWitness + 16);
  v37 = v25;
  v38 = v22;
  v33 = v27;
  v34 = AssociatedConformanceWitness;
  (v27)(v22);
  v28 = v10;
  v29 = *(v11 + 48);
  if (v29(v20, 1, v28) != 1)
  {
    v30 = *(v11 + 32);
    do
    {
      v30(v14, v20, v28);
      (*(v36 + 64))(v14, v35);
      v33(v38, v34);
    }

    while (v29(v20, 1, v28) != 1);
  }

  return (*(v32 + 8))(v37, v38);
}

uint64_t specialized RangeReplaceableCollection.insert(_:at:)(uint64_t result, unsigned int a2)
{
  v3 = *v2;
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v4 = *v2;
    while (v4 != a2)
    {
      v5 = v4 >= 0x100;
      v4 >>= 8;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    v6 = *v2;
    while (v6 != a2)
    {
      v5 = v6 >= 0x100;
      v6 >>= 8;
      if (!v5)
      {
        goto LABEL_10;
      }
    }
  }

  if (v3 < a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v3 == a2)
  {
    v7 = 0;
    v10 = 0;
    goto LABEL_15;
  }

  v10 = 0;
  v11 = *v2;
  do
  {
    if (v3 < v11 || v11 <= a2)
    {
      goto LABEL_27;
    }

    if (HIBYTE(v10))
    {
      goto LABEL_10;
    }

    v10 |= v11 << (-(__clz(v10) & 0x18) & 0x18);
    v11 >>= 8;
  }

  while (v11 != a2);
  if (HIBYTE(v10))
  {
LABEL_10:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = __clz(v10) & 0x18;
LABEL_15:
  v8 = ((result + 1) << (-v7 & 0x18)) | v10;
  if (a2)
  {
    v9 = a2;
    while (v9 <= a2)
    {
      if (HIBYTE(v8))
      {
        goto LABEL_10;
      }

      v8 |= v9 << (-(__clz(v8) & 0x18) & 0x18);
      v5 = v9 >= 0x100;
      v9 >>= 8;
      if (!v5)
      {
        goto LABEL_20;
      }
    }

LABEL_27:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_20:
  *v2 = v8;
  return result;
}

uint64_t RangeReplaceableCollection.insert(_:at:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4)
{
  v5 = v4;
  v56 = a1;
  v51 = a4;
  v8 = *(a4 + 8);
  swift_getAssociatedTypeWitness(255, *(v8 + 8), a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v54 = v9;
  v55 = type metadata accessor for CollectionOfOne(0, v9, v10, v11);
  MEMORY[0x1EEE9AC00](v55, v12);
  v53 = &v46 - v13;
  swift_getAssociatedTypeWitness(255, v8, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v15 = v14;
  swift_getTupleTypeMetadata2(0, v15, v15, "lower upper ", 0);
  v17 = v16;
  v50 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v46 - v23;
  v57 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, a3, v15, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v27 = type metadata accessor for Range(0, v15, AssociatedConformanceWitness, v26);
  v52 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v46 - v29;
  if (((*(AssociatedConformanceWitness + 24))(a2, a2, v15, AssociatedConformanceWitness) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v31 = *(v15 - 1);
  v32 = v31;
  v48 = v27;
  v33 = *(v31 + 16);
  v49 = v5;
  v33(v24, a2, v15);
  v33(&v24[*(v17 + 48)], a2, v15);
  v34 = v50;
  (*(v50 + 16))(v21, v24, v17);
  v46 = *(v17 + 48);
  v47 = v30;
  v35 = *(v32 + 32);
  v35(v30, v21, v15);
  v36 = *(v32 + 8);
  v36(&v21[v46], v15);
  (*(v34 + 32))(v21, v24, v17);
  v37 = v48;
  v35(&v30[*(v48 + 36)], &v21[*(v17 + 48)], v15);
  v36(v21, v15);
  v38 = v53;
  (*(*(v54 - 8) + 32))(v53, v56);
  v39 = v51;
  v40 = *(v51 + 32);
  v41 = v55;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, v55, v42);
  v44 = v47;
  v40(v47, v38, v41, WitnessTable, v57, v39);
  return (*(v52 + 8))(v44, v37);
}

uint64_t specialized RangeReplaceableCollection.remove(at:)(Swift::String::Index a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6._rawBits = _StringGuts.validateScalarIndex(_:)(a1)._rawBits;
  if ((v3 & 0x1000000000000000) != 0)
  {
    v10 = *&_StringGuts.foreignErrorCorrectedScalar(startingAt:)((v6._rawBits & 0xFFFFFFFFFFFF0000));
    v19._rawBits = _StringGuts.validateScalarIndex(_:)(a1)._rawBits;
    v16._rawBits = String.UnicodeScalarView._foreignIndex(after:)(v19)._rawBits;
  }

  else
  {
    v8 = v6._rawBits >> 16;
    if ((v3 & 0x2000000000000000) != 0)
    {
      v21 = v2;
      v22 = v3 & 0xFFFFFFFFFFFFFFLL;
      v10 = _decodeScalar(_:startingAt:)(&v21, v7._rawBits, v8);
      v11._rawBits = _StringGuts.validateScalarIndex(_:)(a1)._rawBits >> 16;
      v21 = v2;
      v22 = v3 & 0xFFFFFFFFFFFFFFLL;
      v13 = *(&v21 + v11._rawBits);
    }

    else
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        v9 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v20 = v6._rawBits >> 16;
        v9 = _StringObject.sharedUTF8.getter(v2, v3);
        v8 = v20;
      }

      v10 = _decodeScalar(_:startingAt:)(v9, v7._rawBits, v8);
      v11._rawBits = _StringGuts.validateScalarIndex(_:)(a1)._rawBits >> 16;
      if ((v2 & 0x1000000000000000) != 0)
      {
        v12 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v12 = _StringObject.sharedUTF8.getter(v2, v3);
      }

      v13 = v12[v11._rawBits];
    }

    v14 = v13;
    v15 = __clz(v13 ^ 0xFF) - 24;
    if (v14 >= 0)
    {
      LOBYTE(v15) = 1;
    }

    v16._rawBits = ((v11._rawBits + v15) << 16) | 5;
  }

  if (v16._rawBits >> 14 < a1._rawBits >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v17._rawBits = a1._rawBits;
  specialized String.UnicodeScalarView.replaceSubrange<A>(_:with:)(v17, v16);
  return v10;
}

{
  if (!((*(v1 + 8) ^ *v1) >> 14))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = Substring.subscript.getter(a1._rawBits, *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  v4._rawBits = Substring.index(after:)(a1)._rawBits;
  if (v4._rawBits >> 14 < a1._rawBits >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5._rawBits = v4._rawBits;
  v6._rawBits = a1._rawBits;
  specialized Substring._replaceSubrange<A>(_:with:)(v6, v5);
  return v3;
}

uint64_t specialized RangeReplaceableCollection.remove(at:)(unsigned int a1)
{
  v2 = *v1;
  if (!*v1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a1)
  {
LABEL_16:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = a1 >> 8;
  v4 = a1 >> 8;
  v5 = *v1;
  while (v5 != a1)
  {
    v6 = v5 >= 0x100;
    v5 >>= 8;
    if (!v6)
    {
      goto LABEL_16;
    }
  }

  if (a1 >= 0x100)
  {
    v9 = *v1;
    while (v9 != v3)
    {
      v6 = v9 >= 0x100;
      v9 >>= 8;
      if (!v6)
      {
        goto LABEL_16;
      }
    }
  }

  if (v2 < a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = 0;
  if (v2 != a1)
  {
    v10 = *v1;
    do
    {
      if (v2 < v10 || v10 <= a1)
      {
        goto LABEL_27;
      }

      if (HIBYTE(v7))
      {
        goto LABEL_16;
      }

      v7 |= v10 << (-(__clz(v7) & 0x18) & 0x18);
      v10 >>= 8;
    }

    while (v10 != a1);
    if (v2 < v3)
    {
LABEL_27:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  if (a1 >= 0x100)
  {
    while (v4 - 1 < v3)
    {
      if (HIBYTE(v7))
      {
        goto LABEL_16;
      }

      v7 |= v4 << (-(__clz(v7) & 0x18) & 0x18);
      v6 = v4 >= 0x100;
      v4 >>= 8;
      if (!v6)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_27;
  }

LABEL_12:
  result = a1 - 1;
  *v1 = v7;
  return result;
}

{
  v2 = *(v1 + 4);
  if (!*(v1 + 4))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a1 >= 0xF0u)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = *v1;
  v4 = a1 + 16;
  if (v2 < a1)
  {
    goto LABEL_9;
  }

  v5 = (a1 + 16);
  if (v2 < v5)
  {
    v5 = *(v1 + 4);
  }

  if (v5 != v4 || (v6 = -(((a1 + 16) - a1 + ((((a1 + 16) - a1) & 0xF000u) >> 12)) >> 4), (v6 + (v2 >> 4)) >= 3))
  {
LABEL_9:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *v1 = (v3 >> ((v4 >> 1) & 0x18) >> ((v4 >> 1) & 0x18) << ((16 * v6 + v4) & 0x10)) | v3 & ((1 << ((a1 >> 1) & 0x18) << ((a1 >> 1) & 0x18)) - 1);
  *(v1 + 4) = v2 + 16 * v6;
  return v3 >> a1;
}

{
  v2 = *(v1 + 4);
  if (!*(v1 + 4))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a1 >= 0xF8u)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = *v1;
  v4 = a1 + 8;
  if (v2 < a1)
  {
    goto LABEL_9;
  }

  v5 = (a1 + 8);
  if (v2 < v5)
  {
    v5 = *(v1 + 4);
  }

  if (v5 != v4 || (v6 = -(((a1 + 8) - a1 + ((((a1 + 8) - a1) & 0xE000u) >> 13)) >> 3), (v6 + (v2 >> 3)) >= 5))
  {
LABEL_9:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *v1 = (v3 >> ((v4 >> 1) & 0x1C) >> ((v4 >> 1) & 0x1C) << ((8 * v6 + v4) & 0x18)) | v3 & ((1 << ((a1 >> 1) & 0x1C) << ((a1 >> 1) & 0x1C)) - 1);
  *(v1 + 4) = v2 + 8 * v6;
  return v3 >> a1;
}

uint64_t specialized RangeReplaceableCollection.remove(at:)(Swift::String::Index a1, uint64_t a2)
{
  v3 = *v2 >> 14;
  v4 = v2[1] >> 14;
  if (v3 == v4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5._rawBits = a1._rawBits;
  v6 = v2[2];
  v7 = v2[3];
  v8 = (v7 & 0x1000000000000000) == 0 || (v6 & 0x800000000000000) != 0;
  v9 = a1._rawBits & 0xC;
  v10 = 4 << v8;
  if ((a1._rawBits & 1) != 0 && v9 != v10)
  {
    if (a1._rawBits >> 14 >= v3 && a1._rawBits >> 14 < v4)
    {
      goto LABEL_22;
    }

LABEL_20:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v9 == v10)
  {
    a1._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a1)._rawBits;
  }

  if (a1._rawBits >> 14 < v3 || a1._rawBits >> 14 >= v4)
  {
    goto LABEL_20;
  }

  if ((a1._rawBits & 1) == 0)
  {
    a1._rawBits = _StringGuts.scalarAlignSlow(_:)(a1)._rawBits;
    if ((v7 & 0x1000000000000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_38:
    v15 = *&_StringGuts.foreignErrorCorrectedScalar(startingAt:)((a1._rawBits & 0xFFFFFFFFFFFF0000));
    v24._rawBits = _StringGuts.validateScalarIndex(_:)(v5)._rawBits;
    v21._rawBits = String.UnicodeScalarView._foreignIndex(after:)(v24)._rawBits;
    goto LABEL_33;
  }

LABEL_22:
  if ((v7 & 0x1000000000000000) != 0)
  {
    goto LABEL_38;
  }

LABEL_23:
  v13 = a1._rawBits >> 16;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v28 = v6;
    v29 = v7 & 0xFFFFFFFFFFFFFFLL;
    v15 = _decodeScalar(_:startingAt:)(&v28, a2, v13);
    v16._rawBits = _StringGuts.validateScalarIndex(_:)(v5)._rawBits >> 16;
    v28 = v6;
    v29 = v7 & 0xFFFFFFFFFFFFFFLL;
    v18 = *(&v28 + v16._rawBits);
  }

  else
  {
    if ((v6 & 0x1000000000000000) != 0)
    {
      v14 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v25 = a1._rawBits >> 16;
      v14 = _StringObject.sharedUTF8.getter(v6, v7);
      v13 = v25;
    }

    v15 = _decodeScalar(_:startingAt:)(v14, a2, v13);
    v16._rawBits = _StringGuts.validateScalarIndex(_:)(v5)._rawBits >> 16;
    if ((v6 & 0x1000000000000000) != 0)
    {
      v17 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v26 = v6;
      rawBits = v16._rawBits;
      v17 = _StringObject.sharedUTF8.getter(v26, v7);
      v16._rawBits = rawBits;
    }

    v18 = v17[v16._rawBits];
  }

  v19 = v18;
  v20 = __clz(v18 ^ 0xFF) - 24;
  if (v19 >= 0)
  {
    LOBYTE(v20) = 1;
  }

  v21._rawBits = ((v16._rawBits + v20) << 16) | 5;
LABEL_33:
  if (v21._rawBits >> 14 < v5._rawBits >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v22._rawBits = v5._rawBits;
  specialized Substring.UnicodeScalarView.replaceSubrange<A>(_:with:)(v22, v21);
  return v15;
}

uint64_t RangeReplaceableCollection.remove(at:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a1;
  v63 = a4;
  v7 = *(a3 + 8);
  swift_getAssociatedTypeWitness(255, v7, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  swift_getTupleTypeMetadata2(0, v9, v9, "lower upper ", 0);
  v61 = *(v10 - 8);
  v62 = v10;
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v59 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v60 = &v54 - v16;
  v58 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v54 - v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, a2, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v22 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v21);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v64 = &v54 - v25;
  if ((*(v7 + 104))(a2, v7))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v55 = v23;
  v56 = v22;
  v57 = a3;
  v26 = v65;
  v27 = (*(v7 + 80))(v66, v65, a2, v7);
  v28 = a2;
  v30 = v29;
  swift_getAssociatedTypeWitness(0, *(v7 + 8), v28, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v32 = *(*(v31 - 8) + 16);
  v54 = v31;
  v32(v63, v30);
  v27(v66, 0);
  v33 = *(v7 + 184);
  v34 = v19;
  v63 = v28;
  v33(v26, v28, v7);
  if (((*(AssociatedConformanceWitness + 24))(v26, v19, v9, AssociatedConformanceWitness) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v35 = v58;
  v36 = *(v58 + 16);
  v37 = v60;
  v38 = v65;
  v65 = v4;
  v36(v60, v38, v9);
  v39 = v62;
  v40 = *(v35 + 32);
  v40(&v37[*(v62 + 48)], v34, v9);
  v41 = v61;
  v42 = v59;
  (*(v61 + 16))(v59, v37, v39);
  v43 = *(v39 + 48);
  v40(v64, v42, v9);
  v44 = *(v35 + 8);
  v44(&v42[v43], v9);
  (*(v41 + 32))(v42, v37, v39);
  v45 = *(v39 + 48);
  v46 = v56;
  v47 = v64;
  v40(&v64[*(v56 + 36)], &v42[v45], v9);
  v44(v42, v9);
  v48 = *(v57 + 32);
  v51 = type metadata accessor for EmptyCollection(0, v54, v49, v50);
  swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, v51, v52);
  v48(v47);
  return (*(v55 + 8))(v47, v46);
}

uint64_t RangeReplaceableCollection._customRemoveLast()@<X0>(Class *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return RangeReplaceableCollection._customRemoveLast()(a1, a2, a3);
}

{
  swift_getAssociatedTypeWitness(0, *(*(a2 + 8) + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

void specialized RangeReplaceableCollection.removeAll(keepingCapacity:)(char a1)
{
  if (a1)
  {
    v2 = v1[1];
    v3 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v3 = *v1;
    }

    v4 = 7;
    if (((v2 >> 60) & ((*v1 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v6._rawBits = 15;

    v5._rawBits = v4 | (v3 << 16);
    specialized String.UnicodeScalarView.replaceSubrange<A>(_:with:)(v6, v5);
  }

  else
  {
    v1[1];
    *v1 = 0;
    v1[1] = 0xE000000000000000;
  }
}

double specialized RangeReplaceableCollection.removeAll(keepingCapacity:)(char a1, void (*a2)(void))
{
  if (a1)
  {
    if (v2[1] >> 14 < *v2 >> 14)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    a2();
  }

  else
  {
    v2[3];
    *&result = 15;
    *v2 = xmmword_18071DB90;
    v2[2] = 0;
    v2[3] = 0xE000000000000000;
  }

  return result;
}

Swift::Void __swiftcall RangeReplaceableCollection.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  v3 = v1;
  v5 = v2;
  v6 = *(v2 + 8);
  swift_getAssociatedTypeWitness(255, v6, v1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v59 = v9;
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v58 = &v51 - v17;
  v57 = *(v8 - 1);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v51 - v23;
  v60 = v6;
  v61 = v3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v3, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v27 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v26);
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  if (keepingCapacity)
  {
    v55 = v5;
    v56 = &v51 - v30;
    v53 = v31;
    v54 = v29;
    v52 = v10;
    v32 = v60;
    v33 = v61;
    (v60[8])(v61, v60);
    (v32[9])(v33, v32);
    if (((*(AssociatedConformanceWitness + 24))(v24, v21, v8, AssociatedConformanceWitness) & 1) == 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v35 = v57;
    v34 = v58;
    v36 = *(v57 + 32);
    v36(v58, v24, v8);
    v37 = v59;
    v36(&v34[*(v59 + 48)], v21, v8);
    v38 = v52;
    (*(v52 + 16))(v14, v34, v37);
    v39 = *(v37 + 48);
    v36(v56, v14, v8);
    v40 = *(v35 + 8);
    v40(&v14[v39], v8);
    (*(v38 + 32))(v14, v34, v37);
    v41 = *(v37 + 48);
    v42 = v54;
    v43 = v56;
    v36(&v56[*(v54 + 36)], &v14[v41], v8);
    v40(v14, v8);
    v44 = *(v55 + 32);
    swift_getAssociatedTypeWitness(255, v60[1], v61, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    v48 = type metadata accessor for EmptyCollection(0, v45, v46, v47);
    swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, v48, v49);
    v44(v43);
    (*(v53 + 8))(v43, v42);
  }

  else
  {
    v50 = v61;
    (*(*(v61 - 1) + 1))(v62, v61);
    (*(v5 + 24))(v50, v5);
  }
}

uint64_t RangeReplaceableCollection.removeAll(where:)(uint64_t (*a1)(char *), uint64_t a2, Class *a3, uint64_t a4)
{
  return RangeReplaceableCollection.removeAll(where:)(a1, a2, a3, a4);
}

{
  v58 = a4;
  v62 = a1;
  v63 = a2;
  v65 = *(*(a4 + 8) + 8);
  v6 = v65;
  swift_getAssociatedTypeWitness(0, v65, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v54 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v55 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v49 - v13;
  v17 = type metadata accessor for Optional(0, v8, v15, v16);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v49 - v19;
  swift_getAssociatedTypeWitness(0, v6, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v22 = v21;
  v51 = *(v21 - 1);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v26 = &v49 - v25;
  v28 = MEMORY[0x1EEE9AC00](v24, v27);
  v30 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v31);
  v50 = v32;
  (*(v32 + 16))(&v49 - v33, v52, a3);
  v34 = *(v58 + 24);
  v56 = v30;
  v34(a3);
  v35 = v65;
  (v65[4])(a3);
  v57 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v35, a3, v22, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v37 = *(AssociatedConformanceWitness + 16);
  v64 = v26;
  v65 = v22;
  v60 = v37;
  v61 = AssociatedConformanceWitness;
  (v37)(v22);
  v38 = v54;
  v59 = *(v54 + 48);
  if (v59(v20, 1, v8) == 1)
  {
LABEL_2:
    v39 = v50;
    v40 = v52;
    v41 = v57;
    (*(v50 + 8))(v52, v57);
    (*(v51 + 8))(v64, v65);
    return (*(v39 + 32))(v40, v56, v41);
  }

  else
  {
    v45 = *(v38 + 32);
    v43 = v38 + 32;
    v44 = v45;
    v53 = v58 + 64;
    v54 = v43 - 24;
    while (1)
    {
      v47 = v43;
      v44(v14, v20, v8);
      v48 = v62(v14);
      if (v4)
      {
        break;
      }

      if (v48)
      {
        (*v54)(v14, v8);
      }

      else
      {
        v46 = v55;
        v44(v55, v14, v8);
        (*(v58 + 64))(v46, v57);
      }

      v60(v65, v61);
      v43 = v47;
      if (v59(v20, 1, v8) == 1)
      {
        goto LABEL_2;
      }
    }

    (*v54)(v14, v8);
    (*(v51 + 8))(v64, v65);
    return (*(v50 + 8))(v56, v57);
  }
}

void specialized RangeReplaceableCollection.removeAll(where:)(uint64_t (*a1)(void *))
{
  v4 = v1[1];
  v5 = 0xE000000000000000;
  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  v30[2] = *v1;
  v30[3] = v4;
  v30[4] = 0;
  v30[5] = v6;
  v31 = 0;
  v33 = v4;
  v4;
  v7 = String.Iterator.next()();
  if (v7.value._object)
  {
    countAndFlagsBits = v7.value._countAndFlagsBits;
    object = v7.value._object;
    while (1)
    {
      v30[0] = countAndFlagsBits;
      v30[1] = object;
      v12 = a1(v30);
      if (v2)
      {
        v33;
        object;
        v32;
        return;
      }

      if ((v12 & 1) == 0)
      {
        v21 = v32;
        v22 = HIBYTE(v32) & 0xF;
        if ((v32 & 0x2000000000000000) == 0)
        {
          v22 = v31 & 0xFFFFFFFFFFFFLL;
        }

        if (!v22 && (v31 & ~v32 & 0x2000000000000000) == 0)
        {
          v32;
          v31 = countAndFlagsBits;
          v32 = object;
          goto LABEL_10;
        }

        if ((object & 0x2000000000000000 & v32) != 0)
        {
          v23 = specialized _SmallString.init(_:appending:)(v31, v32, countAndFlagsBits, object);
          if ((v25 & 1) == 0)
          {
            v26 = v23;
            v27 = v24;
            object;
            v21;
            v31 = v26;
            v32 = v27;
            goto LABEL_10;
          }
        }

        if ((object & 0x2000000000000000) != 0)
        {
          v10 = HIBYTE(object) & 0xF;
        }

        else
        {
          v10 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        _StringGuts.append(_:)(countAndFlagsBits, object, 0, v10, v13, v14, v15, v16, v17, v18, v19, v20);
      }

      object;
LABEL_10:
      v11 = String.Iterator.next()();
      countAndFlagsBits = v11.value._countAndFlagsBits;
      object = v11.value._object;
      if (!v11.value._object)
      {
        v28 = v31;
        v5 = v32;
        goto LABEL_24;
      }
    }
  }

  v28 = 0;
LABEL_24:
  swift_bridgeObjectRelease_n(v33, 2);
  *v29 = v28;
  v29[1] = v5;
}

void specialized RangeReplaceableCollection.removeAll(where:)(uint64_t (*a1)(void *), uint64_t a2)
{
  v5 = *v2;
  v4 = v2[1];
  v43 = 0;
  v44 = 0xE000000000000000;
  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v5 & 0xFFFFFFFFFFFFLL;
  }

  v45 = v6;
  if (!v6)
  {
    v4;
    v38 = 0;
    v39 = 0xE000000000000000;
    goto LABEL_27;
  }

  v7 = a2;
  v9 = 0;
  v41 = v5;
  do
  {
    if ((v4 & 0x1000000000000000) != 0)
    {
      v14 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v9 << 16));
      scalarLength = v14.scalarLength;
      value = v14._0._value;
    }

    else
    {
      if ((v4 & 0x2000000000000000) != 0)
      {
        v42[0] = v5;
        v42[1] = v4 & 0xFFFFFFFFFFFFFFLL;
        v11 = v42;
      }

      else
      {
        v11 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((v5 & 0x1000000000000000) == 0)
        {
          v11 = _StringObject.sharedUTF8.getter(v5, v4);
        }
      }

      value = _decodeScalar(_:startingAt:)(v11, a2, v9);
    }

    v15 = value;
    v16 = scalarLength;
    LODWORD(v42[0]) = value;
    v17 = a1(v42);
    if (v3)
    {
      v44;
      return;
    }

    if ((v17 & 1) == 0)
    {
      v18 = a1;
      v19 = v7;
      v21 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v15);
      v30 = v20;
      v31 = v44;
      if ((v44 & 0x2000000000000000) != 0)
      {
        if ((v20 & 0x2000000000000000) != 0)
        {
          v32 = specialized _SmallString.init(_:appending:)(v43, v44, v21, v20);
          if ((v34 & 1) == 0)
          {
            v35 = v32;
            v36 = v30;
            v37 = v33;
            v36;
            v31;
            v43 = v35;
            v44 = v37;
            goto LABEL_7;
          }

          goto LABEL_23;
        }
      }

      else if ((v20 & 0x2000000000000000) != 0)
      {
LABEL_23:
        v10 = HIBYTE(v30) & 0xF;
        goto LABEL_6;
      }

      v10 = v21 & 0xFFFFFFFFFFFFLL;
LABEL_6:
      _StringGuts.append(_:)(v21, v30, 0, v10, v22, v23, v24, v25, v26, v27, v28, v29);
      v30;
LABEL_7:
      v7 = v19;
      a1 = v18;
      v5 = v41;
    }

    v9 += v16;
  }

  while (v9 < v45);
  v4;
  v38 = v43;
  v39 = v44;
  v2 = v40;
LABEL_27:
  *v2 = v38;
  v2[1] = v39;
}

{
  v24 = a2;
  v4 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  *&v21[0]._rawBits = xmmword_18071DB90;
  v8 = 0xE000000000000000;
  v22 = 0;
  v23 = 0xE000000000000000;
  if ((v4 ^ v5) >= 0x4000)
  {
    v12._rawBits = v4;
    do
    {
      v13 = Substring.subscript.getter(v12._rawBits, v4, v5, v7, v6);
      v15 = v14;
      v12._rawBits = Substring.index(after:)(v12)._rawBits;
      v20[0] = v13;
      v20[1] = v15;
      v16 = a1(v20);
      if (v3)
      {
        v15;
        v23;
        return;
      }

      if ((v16 & 1) == 0)
      {
        v17._rawBits = v21[1]._rawBits;
        v18._rawBits = v21[1]._rawBits;
        specialized Substring._replaceSubrange<A>(_:with:)(v17, v18, v13, v15);
      }

      v15;
    }

    while ((v12._rawBits ^ v5) >= 0x4000);
    rawBits = v21[0]._rawBits;
    v11 = v21[1]._rawBits;
    v9 = v22;
    v8 = v23;
  }

  else
  {
    v9 = 0;
    rawBits = 15;
    v11 = 7;
  }

  v6;
  *v2 = rawBits;
  v2[1] = v11;
  v2[2] = v9;
  v2[3] = v8;
}

void specialized RangeReplaceableCollection.removeAll(where:)(uint64_t (*a1)(Swift::UInt64 *), uint64_t a2)
{
  v5._rawBits = *v2;
  v4 = v2[1];
  v6 = v2[3];
  v37 = v2[2];
  *&v40[0]._rawBits = xmmword_18071DB90;
  v41 = 0;
  v42 = 0xE000000000000000;
  v7 = v4 >> 14;
  v8 = v5._rawBits >> 14;
  if (v5._rawBits >> 14 == v4 >> 14)
  {
    v6;
    v9 = xmmword_18071DB90;
    v10 = 0;
    v11 = 0xE000000000000000;
LABEL_3:
    *v2 = v9;
    v2[2] = v10;
    v2[3] = v11;
  }

  else
  {
    v43 = a1;
    v12 = (v37 >> 59) & 1;
    if ((v6 & 0x1000000000000000) == 0)
    {
      LOBYTE(v12) = 1;
    }

    v13 = 4 << v12;
    v14 = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v15 = v5._rawBits >> 14;
    while (1)
    {
      if ((v5._rawBits & 0xC) == v13 || (v5._rawBits & 1) == 0)
      {
        rawBits = v5._rawBits;
        if ((v5._rawBits & 0xC) == v13)
        {
          rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v5)._rawBits;
        }

        if (rawBits >> 14 < v8 || rawBits >> 14 >= v7)
        {
LABEL_37:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        if ((rawBits & 1) == 0)
        {
          rawBits = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
        }
      }

      else
      {
        if (v15 < v8)
        {
          goto LABEL_37;
        }

        rawBits = v5._rawBits;
        if (v15 >= v7)
        {
          goto LABEL_37;
        }
      }

      v34 = v14;
      v35 = v13;
      if ((v6 & 0x1000000000000000) != 0)
      {
        value = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((rawBits & 0xFFFFFFFFFFFF0000))._0._value;
        v31._rawBits = _StringGuts.validateScalarIndex(_:)(v5)._rawBits;
        v26 = value;
        v5._rawBits = String.UnicodeScalarView._foreignIndex(after:)(v31)._rawBits;
      }

      else
      {
        v18 = rawBits >> 16;
        if ((v6 & 0x2000000000000000) != 0)
        {
          v38 = v37;
          v39 = v6 & 0xFFFFFFFFFFFFFFLL;
          v36 = _decodeScalar(_:startingAt:)(&v38, a2, v18);
          v22 = _StringGuts.validateScalarIndex(_:)(v5)._rawBits >> 16;
          v38 = v37;
          v39 = v6 & 0xFFFFFFFFFFFFFFLL;
          v23 = *(&v38 + v22);
        }

        else
        {
          v19 = v14;
          if ((v37 & 0x1000000000000000) == 0)
          {
            v32 = v18;
            v19 = _StringObject.sharedUTF8.getter(v37, v6);
            v18 = v32;
          }

          v36 = _decodeScalar(_:startingAt:)(v19, a2, v18);
          v20._rawBits = _StringGuts.validateScalarIndex(_:)(v5)._rawBits;
          v21 = v14;
          if ((v37 & 0x1000000000000000) == 0)
          {
            v33 = v20._rawBits;
            v21 = _StringObject.sharedUTF8.getter(v37, v6);
            v20._rawBits = v33;
          }

          v22 = v20._rawBits >> 16;
          v23 = v21[v22];
        }

        v24 = v23;
        v25 = __clz(v23 ^ 0xFF) - 24;
        if (v24 >= 0)
        {
          LOBYTE(v25) = 1;
        }

        v5._rawBits = ((v22 + v25) << 16) | 5;
        v26 = v36;
      }

      LODWORD(v38) = v26;
      v27 = v43(&v38);
      if (v3)
      {
        break;
      }

      if ((v27 & 1) == 0)
      {
        v28._rawBits = v40[1]._rawBits;
        v29._rawBits = v40[1]._rawBits;
        specialized Substring.UnicodeScalarView.replaceSubrange<A>(_:with:)(v28, v29);
      }

      v15 = v5._rawBits >> 14;
      v14 = v34;
      v13 = v35;
      if (v5._rawBits >> 14 == v7)
      {
        v6;
        v9 = *&v40[0]._rawBits;
        v10 = v41;
        v11 = v42;
        goto LABEL_3;
      }
    }

    v42;
  }
}

uint64_t specialized RangeReplaceableCollection.removeAll(where:)(uint64_t result)
{
  v3 = *v1;
  if (*v1)
  {
    v4 = result;
    v5 = 0;
LABEL_3:
    v6 = v3;
    while (1)
    {
      v8 = v6 - 1;
      result = v4(&v8);
      if (v2)
      {
        break;
      }

      v3 = v6 >> 8;
      if ((result & 1) == 0)
      {
        if (HIBYTE(v5))
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v5 |= v6 << (-(__clz(v5) & 0x18) & 0x18);
        if (v6 >= 0x100)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }

      v7 = v6 >= 0x100;
      v6 >>= 8;
      if (!v7)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v5 = 0;
LABEL_12:
    *v1 = v5;
  }

  return result;
}

uint64_t Repeated.init(_repeating:count:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5@<X3>)
{
  if (a2 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a4 = a2;
  v8 = type metadata accessor for Repeated(0, a3, a3, a5);
  v9 = *(*(a3 - 8) + 32);
  v10 = a4 + *(v8 + 28);

  return v9(v10, a1, a3);
}

uint64_t RangeReplaceableCollection.replaceSubrange<A, B>(_:with:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, swift *a8)
{
  v26 = a4;
  v27 = a7;
  v25 = a2;
  v13 = *(a6 + 8);
  swift_getAssociatedTypeWitness(255, v13, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v15 = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a8, a5, v14, &protocol requirements base descriptor for RangeExpression, associated conformance descriptor for RangeExpression.RangeExpression.Bound: Comparable);
  v18 = type metadata accessor for Range(0, v15, AssociatedConformanceWitness, v17);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v24 - v21;
  (*(a8 + 3))(v8, a3, v13, a5, a8);
  (*(a6 + 32))(v22, v25, v26, v27, a3, a6);
  return (*(v19 + 8))(v22, v18);
}

uint64_t RangeReplaceableCollection.removeSubrange<A>(_:)(uint64_t a1, Class *a2, const char *a3, uint64_t a4, swift *a5)
{
  v10 = *(a4 + 8);
  swift_getAssociatedTypeWitness(255, v10, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v11, &protocol requirements base descriptor for RangeExpression, associated conformance descriptor for RangeExpression.RangeExpression.Bound: Comparable);
  v15 = type metadata accessor for Range(0, v12, AssociatedConformanceWitness, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v21 - v18;
  (*(a5 + 3))(v5, a2, v10, a3, a5);
  (*(a4 + 104))(v19, a2, a4);
  return (*(v16 + 8))(v19, v15);
}

uint64_t specialized RangeReplaceableCollection<>._customRemoveLast()()
{
  rawBits = v0->_rawBits;
  v2 = v0[1]._rawBits;
  v3 = v0->_rawBits >> 14;
  if (v3 == v2 >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = v0[2]._rawBits;
  v4 = v0[3]._rawBits;
  v6._rawBits = Substring.index(before:)(v0[1])._rawBits;
  v7 = Substring.subscript.getter(v6._rawBits, rawBits, v2, v5, v4);
  v8._rawBits = Substring.index(before:)(v2)._rawBits;
  if (v3 > v8._rawBits >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v9._rawBits = v8._rawBits;
  v10 = specialized Substring.subscript.getter(rawBits, v9, rawBits, v2, v5, v4);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v15;
  v4;
  v0->_rawBits = v10;
  v0[1]._rawBits = v12;
  v0[2]._rawBits = v14;
  v0[3]._rawBits = v16;
  return v7;
}

{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5._rawBits = v1;
  v6 = specialized BidirectionalCollection.last.getter(*v0, v5, v3, v4);
  if ((v6 & 0x100000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = v6;
  v8._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(v1)._rawBits;
  if (!(v8._rawBits >> 14))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v4 & 0x1000000000000000) != 0)
  {
    rawBits = String.UnicodeScalarView._foreignIndex(before:)(v8)._rawBits;
  }

  else
  {
    if ((v4 & 0x2000000000000000) != 0)
    {
      v23[0] = v3;
      v23[1] = v4 & 0xFFFFFFFFFFFFFFLL;
      if ((*(v23 + (v8._rawBits >> 16) - 1) & 0xC0) == 0x80)
      {
        v14 = v23 + (v8._rawBits >> 16) - 2;
        v13 = 1;
        do
        {
          ++v13;
          v15 = *v14--;
        }

        while ((v15 & 0xC0) == 0x80);
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {
      if ((v3 & 0x1000000000000000) != 0)
      {
        v9 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v22 = v8._rawBits;
        v9 = _StringObject.sharedUTF8.getter(v3, v4);
        v8._rawBits = v22;
      }

      v10 = 0;
      v11 = v9 + (v8._rawBits >> 16) - 1;
      do
      {
        v12 = *(v11 + v10--) & 0xC0;
      }

      while (v12 == 128);
      v13 = -v10;
    }

    rawBits = (v8._rawBits - (v13 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
  }

  if (rawBits >> 14 < v2 >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4;
  v17._rawBits = rawBits;
  v18 = _StringGuts.validateScalarRange(_:in:)(v2, v17, v2, v1, v3, v4);
  v20 = v19;
  v4;
  *v0 = v18;
  v0[1] = v20;
  v0[2] = v3;
  v0[3] = v4;
  LOBYTE(v23[0]) = 0;
  return v7;
}

uint64_t RangeReplaceableCollection<>._customRemoveLast()@<X0>(Class *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v91 = a3;
  v6 = *(a2 + 8);
  swift_getAssociatedTypeWitness(255, v6, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v10 = *(v9 - 8);
  v89 = v9;
  v90 = v10;
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v87 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v86 = &v77 - v16;
  v97 = *(v8 - 1);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v93 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v94 = &v77 - v22;
  MEMORY[0x1EEE9AC00](v21, v23);
  v96 = &v77 - v24;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a1, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v88 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v25);
  v85 = *(v88 - 8);
  v27 = MEMORY[0x1EEE9AC00](v88, v26);
  v84 = &v77 - v28;
  v29 = *(a1 - 1);
  v31 = MEMORY[0x1EEE9AC00](v27, v30);
  v33 = &v77 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v34);
  v98 = &v77 - v35;
  swift_getAssociatedTypeWitness(255, *(v6 + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v37 = v36;
  v40 = type metadata accessor for Optional(0, v36, v38, v39);
  v42 = MEMORY[0x1EEE9AC00](v40 - 8, v41);
  v44 = &v77 - v43;
  v45 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v42, v46);
  v95 = &v77 - v47;
  v99 = a1;
  v48 = a1;
  v49 = a2;
  BidirectionalCollection.last.getter(v48, a2, v44);
  if ((*(v45 + 48))(v44, 1, v37) == 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v80 = v45;
  v81 = v37;
  v50 = *(v45 + 32);
  v79 = v45 + 32;
  v78 = v50;
  v50(v95, v44, v37);
  v51 = *(v29 + 16);
  v52 = v99;
  v51(v98, v3, v99);
  v53 = v96;
  (*(v6 + 64))(v52, v6);
  v51(v33, v3, v52);
  v54 = *(v6 + 72);
  v55 = v93;
  v82 = v6;
  v54(v52, v6);
  v58 = *(v29 + 8);
  v56 = v29 + 8;
  v57 = v58;
  v83 = v3;
  v58(v3, v52);
  v59 = v49;
  v60 = *(v49 + 32);
  v61 = v94;
  v60(v55, v52, v59);
  v93 = *(v97 + 8);
  (v93)(v55, v8);
  v58(v33, v52);
  if (((*(AssociatedConformanceWitness + 24))(v53, v61, v8) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  AssociatedConformanceWitness = v57;
  v62 = *(v97 + 32);
  v97 = v56;
  v63 = v86;
  v62(v86, v96, v8);
  v64 = v89;
  v62(&v63[*(v89 + 48)], v61, v8);
  v65 = v90;
  v66 = v87;
  (*(v90 + 16))(v87, v63, v64);
  v67 = *(v64 + 48);
  v68 = v84;
  v62(v84, v66, v8);
  v69 = &v66[v67];
  v70 = v93;
  (v93)(v69, v8);
  (*(v65 + 32))(v66, v63, v64);
  v71 = v88;
  v62(&v68[*(v88 + 36)], &v66[*(v64 + 48)], v8);
  v70(v66, v8);
  v72 = v98;
  v73 = v99;
  (*(v82 + 88))(v68, v99);
  (*(v85 + 8))(v68, v71);
  (AssociatedConformanceWitness)(v72, v73);
  v74 = v91;
  v75 = v81;
  v78(v91, v95, v81);
  return (*(v80 + 56))(v74, 0, 1, v75);
}

uint64_t RangeReplaceableCollection<>.removeLast(_:)(uint64_t a1, Class *a2, uint64_t a3, uint64_t a4)
{
  return RangeReplaceableCollection<>.removeLast(_:)(a1, a2, a3, a4, 892, 899);
}

{
  return RangeReplaceableCollection<>.removeLast(_:)(a1, a2, a3, a4, 966, 973);
}

uint64_t RangeReplaceableCollection<>.popLast()@<X0>(Class *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v37 = a3;
  v38 = a4;
  v35 = a2;
  v5 = *(a2 + 8);
  swift_getAssociatedTypeWitness(0, v5, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v36 = v6;
  v34 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v34 - v12;
  swift_getAssociatedTypeWitness(255, *(v5 + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v15 = v14;
  v18 = type metadata accessor for Optional(0, v14, v16, v17);
  v19 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v23 = &v34 - v22;
  v39 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v34 - v25;
  if ((*(v5 + 104))(a1, v5))
  {
    v27 = v38;
    v28 = *(v39 + 56);

    return v28(v27, 1, 1, v15);
  }

  else
  {
    (*(v37 + 112))(a1);
    if ((*(v39 + 48))(v23, 1, v15) == 1)
    {
      (*(v19 + 8))(v23, v18);
      (*(v5 + 72))(a1, v5);
      (*(v35 + 32))(v10, a1);
      v30 = *(v34 + 8);
      v31 = v36;
      v30(v10, v36);
      v32 = v38;
      (*(v37 + 96))(v13, a1);
      v30(v13, v31);
    }

    else
    {
      v33 = *(v39 + 32);
      v33(v26, v23, v15);
      v32 = v38;
      v33(v38, v26, v15);
    }

    return (*(v39 + 56))(v32, 0, 1, v15);
  }
}

uint64_t RangeReplaceableCollection<>.removeLast()@<X0>(Class *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a4;
  v35 = a5;
  v33 = a2;
  v7 = *(a2 + 8);
  swift_getAssociatedTypeWitness(0, v7, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v34 = v8;
  v32 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v30 - v14;
  swift_getAssociatedTypeWitness(255, *(v7 + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v17 = v16;
  v20 = type metadata accessor for Optional(0, v16, v18, v19);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v30 - v23;
  if ((*(v7 + 104))(a1, v7))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v25 = *(a3 + 112);
  v31 = a3;
  v25(a1, a3);
  v26 = *(v17 - 8);
  if ((*(v26 + 48))(v24, 1, v17) != 1)
  {
    return (*(v26 + 32))(v35, v24, v17);
  }

  (*(v21 + 8))(v24, v20);
  (*(v7 + 72))(a1, v7);
  (*(v33 + 32))(v12, a1);
  v27 = *(v32 + 8);
  v28 = v34;
  v27(v12, v34);
  (*(v31 + 96))(v15, a1);
  return (v27)(v15, v28);
}

uint64_t RangeReplaceableCollection<>.removeLast(_:)(uint64_t a1, Class *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v57 = a6;
  v67 = a4;
  v68 = a5;
  v66 = a3;
  v9 = *(a3 + 8);
  swift_getAssociatedTypeWitness(255, v9, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  swift_getTupleTypeMetadata2(0, v11, v11, "lower upper ", 0);
  v64 = v12;
  v62 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v63 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v59 = &v55 - v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v9, a2, v11, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v19 = type metadata accessor for Range(0, v11, AssociatedConformanceWitness, v18);
  v60 = *(v19 - 8);
  v61 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v58 = &v55 - v21;
  v24 = type metadata accessor for Optional(0, v11, v22, v23);
  v55 = *(v24 - 8);
  v56 = v24;
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = &v55 - v27;
  v29 = *(v11 - 1);
  v31 = MEMORY[0x1EEE9AC00](v26, v30);
  v33 = &v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v31, v34);
  v37 = &v55 - v36;
  result = MEMORY[0x1EEE9AC00](v35, v38);
  v41 = &v55 - v40;
  if (!a1)
  {
    return result;
  }

  if (a1 < 0)
  {
LABEL_8:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v42 = *(v67 + 120);
  v68 = v6;
  result = v42(a1, a2);
  if (result)
  {
    return result;
  }

  (*(v9 + 72))(a2, v9);
  (*(v9 + 64))(a2, v9);
  (v66[7])(v41, -a1, v33, a2);
  v43 = *(v29 + 8);
  v43(v33, v11);
  if ((*(v29 + 48))(v28, 1, v11) == 1)
  {
    (*(v55 + 8))(v28, v56);
    goto LABEL_8;
  }

  v44 = *(v29 + 32);
  v44(v37, v28, v11);
  if (((*(AssociatedConformanceWitness + 24))(v37, v41, v11) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  AssociatedConformanceWitness = v43;
  v66 = a2;
  v45 = v59;
  v44(v59, v37, v11);
  v46 = v64;
  v44(&v45[*(v64 + 48)], v41, v11);
  v48 = v62;
  v47 = v63;
  (*(v62 + 16))(v63, v45, v46);
  v49 = *(v46 + 48);
  v50 = v58;
  v44(v58, v47, v11);
  v51 = &v47[v49];
  v52 = AssociatedConformanceWitness;
  (AssociatedConformanceWitness)(v51, v11);
  (*(v48 + 32))(v47, v45, v46);
  v53 = *(v46 + 48);
  v54 = v61;
  v44(&v50[*(v61 + 36)], &v47[v53], v11);
  v52(v47, v11);
  (*(v67 + 104))(v50, v66);
  return (*(v60 + 8))(v50, v54);
}

uint64_t static RangeReplaceableCollection.+ infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(v16 - 8) + 16))(a7);
  (*(v13 + 16))(v15, a2, a4);
  return (*(a5 + 72))(v15, a4, a6, a3, a5);
}

{
  v13 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(v16 - 8) + 16))(a7);
  (*(v13 + 16))(v15, a2, a4);
  return (*(a5 + 72))(v15, a4, *(*(a6 + 8) + 8), a3, a5);
}

uint64_t static RangeReplaceableCollection.+ infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = *(a3 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v12, v16);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 + 24);
  v32[1] = v21;
  v20(v22, v19);
  v23 = *(a5 + 8);
  v24 = *(v23 + 112);
  v36 = a2;
  v25 = v24(a3, v23);
  v26 = *(a6 + 40);
  v35 = a6;
  v27 = v26(a4, a6);
  v28 = __OFADD__(v25, v27);
  result = v25 + v27;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    (*(a5 + 40))(result, a3, a5);
    (*(v15 + 16))(v18, a1, a4);
    v30 = *(a5 + 72);
    v30(v18, a4, v35, a3, a5);
    v31 = v33;
    (*(v34 + 16))(v33, v36, a3);
    return (v30)(v31, a3, *(v23 + 8), a3, a5);
  }

  return result;
}

uint64_t static RangeReplaceableCollection.+= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  return (*(a5 + 72))(v11, a4, a6, a3, a5);
}

uint64_t RangeReplaceableCollection.filter(_:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a1;
  v53 = a2;
  v54 = *(*(a4 + 8) + 8);
  v9 = v54;
  swift_getAssociatedTypeWitness(0, v54, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v11 = v10;
  v44 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v45 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v41 - v16;
  v20 = type metadata accessor for Optional(0, v11, v18, v19);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v41 - v22;
  swift_getAssociatedTypeWitness(0, v9, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v25 = v24;
  v42 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = (&v41 - v27);
  v29 = *(a4 + 24);
  v46 = a5;
  v48 = a4;
  v29(a3, a4);
  v30 = v54;
  (v54[4])(a3, v54);
  v47 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v30, a3, v25, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v32 = *(AssociatedConformanceWitness + 16);
  v54 = v28;
  v55 = v25;
  v50 = v32;
  v51 = AssociatedConformanceWitness;
  (v32)(v25);
  v33 = v44;
  v49 = *(v44 + 48);
  if (v49(v23, 1, v11) == 1)
  {
    return (*(v42 + 8))(v54, v55);
  }

  v37 = *(v33 + 32);
  v35 = v33 + 32;
  v36 = v37;
  v43 = v48 + 64;
  v44 = v35 - 24;
  while (1)
  {
    v38 = v35;
    v36(v17, v23, v11);
    v39 = v52(v17);
    if (v5)
    {
      break;
    }

    if (v39)
    {
      v40 = v45;
      v36(v45, v17, v11);
      (*(v48 + 64))(v40, v47);
    }

    else
    {
      (*v44)(v17, v11);
    }

    v50(v55, v51);
    v35 = v38;
    if (v49(v23, 1, v11) == 1)
    {
      return (*(v42 + 8))(v54, v55);
    }
  }

  (*v44)(v17, v11);
  (*(v42 + 8))(v54, v55);
  return (*(*(v47 - 1) + 1))(v46, v47);
}

uint64_t RangeReplaceableCollection.removeSubranges(_:)(uint64_t a1, Class *a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness(0, v6, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v60 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v59 = &v49 - v9;
  swift_getAssociatedTypeWitness(255, v6, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a2, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v14 = type metadata accessor for Range(0, v11, AssociatedConformanceWitness, v13);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v58 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = &v49 - v21;
  result = MEMORY[0x1EEE9AC00](v20, v23);
  v28 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*a1 + 16))
  {
    v55 = v26;
    v29 = type metadata accessor for RangeSet(0, v11, AssociatedConformanceWitness, v25);
    RangeSet._inverted<A>(within:)(v29, a2, v6, &v62);
    (*(v3 + 24))(a2, v3);
    v30 = v62;
    v31 = *(v62 + 16);
    if (v31)
    {
      v32 = 0;
      v33 = v15 + 16;
      v34 = v15 + 32;
      v54 = v6 + 88;
      v53 = v15 + 8;
      v35 = v3 + 72;
      do
      {
        if (v32 >= v31)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v36 = v30 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v32;
        v37 = *(v15 + 16);
        v56 = v35;
        v57 = v33;
        v38 = v58;
        v52 = v30;
        v37(v58, v36, v14);
        (*(v15 + 32))(v22, v38, v14);
        ++v32;
        v39 = *(v6 + 88);
        v51 = v34;
        v40 = v14;
        v41 = v3;
        v42 = v59;
        v39(v22, a2, v6);
        (*(v15 + 8))(v22, v40);
        v50 = *(v41 + 72);
        v43 = v60;
        v44 = *(swift_getAssociatedConformanceWitness(v6, a2, v60, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection) + 8);
        v45 = v42;
        v3 = v41;
        v14 = v40;
        v34 = v51;
        v50(v45, v43, v44, a2, v3);
        v35 = v56;
        v33 = v57;
        v30 = v52;
        v31 = *(v52 + 16);
      }

      while (v32 != v31);
    }

    v46 = v55;
    v47 = v61;
    v48 = v30;
    (*(v55 + 8))(v61, a2);
    v48;
    return (*(v46 + 32))(v47, v28, a2);
  }

  return result;
}

uint64_t MutableCollection<>.removeSubranges(_:)(uint64_t *a1, Class *a2, char *a3, uint64_t a4)
{
  v142 = a4;
  v160 = a3;
  v6 = *(a3 + 1);
  swift_getAssociatedTypeWitness(255, v6, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v141 = v9;
  v139 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v140 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v138 = &v123 - v15;
  v149 = *(v8 - 1);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v144 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v143 = &v123 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v159 = &v123 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v158 = &v123 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v150 = &v123 - v30;
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = &v123 - v32;
  v145 = v6;
  v146 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a2, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v36 = type metadata accessor for Range(255, v8, AssociatedConformanceWitness, v35);
  v157 = type metadata accessor for Optional(0, v36, v37, v38);
  v39 = *(v157 - 8);
  v41 = MEMORY[0x1EEE9AC00](v157, v40);
  v43 = &v123 - v42;
  v44 = *(v36 - 8);
  v46 = MEMORY[0x1EEE9AC00](v41, v45);
  v137 = &v123 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v46, v48);
  v151 = &v123 - v50;
  v52 = MEMORY[0x1EEE9AC00](v49, v51);
  v152 = &v123 - v53;
  MEMORY[0x1EEE9AC00](v52, v54);
  v56 = &v123 - v55;
  v57 = *a1;
  v162 = v57;
  v148 = AssociatedConformanceWitness;
  v59 = type metadata accessor for RangeSet.Ranges(0, v8, AssociatedConformanceWitness, v58);
  v156 = v57;
  v57;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, v59, v60);
  Collection.first.getter(v59, WitnessTable, v43);
  v162;
  if ((*(v44 + 48))(v43, 1, v36) == 1)
  {
    return (*(v39 + 8))(v43, v157);
  }

  v147 = v44;
  v63 = *(v44 + 32);
  v132 = v44 + 32;
  v131 = v63;
  v63(v56, v43, v36);
  v64 = v59;
  v65 = v149;
  v67 = v149 + 16;
  v66 = *(v149 + 16);
  v66(v33, v56, v8);
  v136 = v36;
  v66(v150, &v56[*(v36 + 36)], v8);
  v161 = v156;
  v156;
  Collection.dropFirst(_:)(1, v64, WitnessTable, &v162);
  v68 = v162;
  v69 = v163;
  v70 = v164;
  v71 = v160;
  if (v162 != v163)
  {
    v95 = *(v148 + 8);
    v96 = v95 + 8;
    v97 = *(v95 + 8);
    v98 = v147 + 16;
    v99 = v160 + 64;
    v100 = (v145 + 24);
    v130 = (v65 + 8);
    v101 = (v147 + 8);
    v102 = v162;
    do
    {
      if (v102 >= v69)
      {
        goto LABEL_21;
      }

      v154 = v33;
      v126 = v101;
      v127 = v100;
      v153 = v99;
      v155 = v97;
      v156 = v96;
      v157 = v95;
      v128 = v69;
      v135 = v66;
      v129 = v68;
      if (v68 < 0 || v102 >= *(v70 + 16))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v103 = v70 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v102;
      v104 = *(v147 + 16);
      v105 = v102;
      v106 = v152;
      v107 = v136;
      v125 = v98;
      v104(v152, v103, v136);
      v108 = *(v70 + 16);
      v124 = v105;
      v109 = v158;
      if (v105 >= v108)
      {
LABEL_21:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v123 = v70;
      v133 = v56;
      v110 = v151;
      v131(v151, v106, v107);
      v134 = v67;
      v135(v109, v110, v8);
      v111 = v150;
      v112 = (v155)(v150, v109, v8, v157);
      v114 = v145;
      v113 = v146;
      v33 = v154;
      v100 = v127;
      if ((v112 & 1) == 0)
      {
        v115 = *v153;
        v116 = *v127;
        do
        {
          v115(v33, v111, v113, v160);
          v116(v33, v113, v114);
          v116(v111, v113, v114);
        }

        while (((v155)(v111, v158, v8, v157) & 1) == 0);
      }

      v117 = v124 + 1;
      v118 = *v130;
      (*v130)(v158, v8);
      v118(v111, v8);
      v119 = v136;
      v120 = v151;
      v67 = v134;
      v66 = v135;
      v135(v111, &v151[*(v136 + 36)], v8);
      v121 = v119;
      v101 = v126;
      (*v126)(v120, v121);
      v69 = v128;
      v122 = v117 == v128;
      v65 = v149;
      v71 = v160;
      v102 = v117;
      v56 = v133;
      v70 = v123;
      v68 = v129;
      v96 = v156;
      v95 = v157;
      v97 = v155;
      v98 = v125;
      v99 = v153;
    }

    while (!v122);
  }

  v135 = v66;
  v134 = v67;
  v133 = v56;
  v154 = v33;
  v157 = v8;
  v70;
  v73 = v145;
  v72 = v146;
  v155 = v145[9];
  v156 = v145 + 9;
  v153 = *(v148 + 8);
  v74 = *(v153 + 1);
  v158 = (v65 + 8);
  v151 = v71 + 64;
  v152 = v74;
  for (i = v150; ; (v81)(i, v72, v73))
  {
    v76 = v159;
    (v155)(v72, v73);
    v77 = v157;
    v78 = (v152)(i, v76, v157, v153);
    v79 = *v158;
    (*v158)(v76, v77);
    if (v78)
    {
      break;
    }

    v80 = v154;
    (*(v160 + 8))(v154, i, v72);
    v81 = v73[24];
    (v81)(v80, v72, v73);
  }

  v82 = v143;
  v83 = v154;
  v84 = v157;
  v135(v143, v154, v157);
  v85 = v144;
  (v155)(v72, v73);
  if (((*(v148 + 24))(v82, v85, v84) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v79(v150, v84);
  v79(v83, v84);
  v86 = *(v147 + 8);
  v147 += 8;
  v160 = v86;
  (v86)(v133, v136);
  v87 = *(v149 + 32);
  v88 = v138;
  v87(v138, v82, v84);
  v89 = v141;
  v87(&v88[*(v141 + 48)], v85, v84);
  v90 = v139;
  v91 = v140;
  (*(v139 + 16))(v140, v88, v89);
  v92 = *(v89 + 48);
  v93 = v137;
  v87(v137, v91, v84);
  v79(&v91[v92], v84);
  (*(v90 + 32))(v91, v88, v89);
  v94 = v136;
  v87(&v93[*(v136 + 36)], &v91[*(v89 + 48)], v84);
  v79(v91, v84);
  (*(v142 + 104))(v93, v146);
  return (v160)(v93, v94);
}

uint64_t RangeSet._ranges.setter(uint64_t *a1)
{
  v2 = *a1;
  result = *v1;
  *v1 = v2;
  return result;
}

void RangeSet.init()(uint64_t a1@<X0>, uint64_t a2@<X1>, __objc2_class ***a3@<X8>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for Range(0, a1, a2, a4);
  _swift_isClassOrObjCExistentialType(v5, v5);
  v6 = _ArrayBuffer.requestNativeBuffer()(&_swiftEmptyArrayStorage, v5);
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v13 = &_swiftEmptyArrayStorage;
    v10 = type metadata accessor for Array(0, v5, v7, v8);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v10, v11);
    v9 = _copyCollectionToContiguousArray<A>(_:)(&v13, v10, WitnessTable);
  }

  &_swiftEmptyArrayStorage;
  *a3 = v9;
}

void RangeSet.Ranges.init()(uint64_t a1@<X0>, uint64_t a2@<X1>, __objc2_class ***a3@<X8>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for Range(0, a1, a2, a4);
  _swift_isClassOrObjCExistentialType(v5, v5);
  v6 = _ArrayBuffer.requestNativeBuffer()(&_swiftEmptyArrayStorage, v5);
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v13 = &_swiftEmptyArrayStorage;
    v10 = type metadata accessor for Array(0, v5, v7, v8);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v10, v11);
    v9 = _copyCollectionToContiguousArray<A>(_:)(&v13, v10, WitnessTable);
  }

  &_swiftEmptyArrayStorage;
  *a3 = v9;
}

void RangeSet.Ranges.init(_range:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for Range(255, a2, a3, a5);
  v10 = type metadata accessor for _ContiguousArrayStorage(0, v7, v8, v9);
  v11 = *(v7 - 1);
  v12 = swift_allocObject(v10, (((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72)), *(v11 + 80) | 7);
  v13 = static Array._adoptStorage(_:count:)(v12, 1);
  (*(v11 + 32))(v14, a1, v7);
  v15 = _ArrayBuffer.requestNativeBuffer()(v13, v7);
  if (!v15)
  {
    v22 = v13;
    v18 = type metadata accessor for Array(0, v7, v16, v17);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v18, v19);
    v15 = _copyCollectionToContiguousArray<A>(_:)(&v22, v18, WitnessTable);
  }

  v21 = v15;
  v13;
  *a4 = v21;
}

void *RangeSet.init<A>(_:)@<X0>(__objc2_class ***a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __objc2_class ***a6@<X8>)
{
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (type metadata accessor for RangeSet.Ranges(0, v15, v16, v16) == a3)
  {
    v19 = *a1;
    v20 = *(v12 + 8);
    *a1;
    result = v20(a1, a3);
  }

  else
  {
    (*(v12 + 32))(v14, a1, a3);
    v17 = (*(a5 + 56))(a3, a5);
    result = RangeSet.Ranges.init(_unorderedRanges:)(v17, a2, a4, &v22);
    v19 = v22;
  }

  *a6 = v19;
  return result;
}

uint64_t RangeSet.Ranges.init(_unorderedRanges:)@<X0>(unint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, __objc2_class ***a4@<X8>)
{
  swift_getTupleTypeMetadata2(0, a2, a2, "lower upper ", 0);
  v9 = v8;
  v10 = *(v8 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v171 = &v159 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v170 = &v159 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v184 = &v159 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v183 = &v159 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v172 = &v159 - v25;
  v26 = *(a2 - 1);
  v28 = MEMORY[0x1EEE9AC00](v24, v27);
  v175 = &v159 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v176 = &v159 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v174 = &v159 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34, v36);
  v186 = &v159 - v38;
  MEMORY[0x1EEE9AC00](v37, v39);
  v187 = &v159 - v40;
  v42 = type metadata accessor for Range(0, a2, a3, v41);
  v201 = *(v42 - 1);
  v44 = MEMORY[0x1EEE9AC00](v42, v43);
  v169 = &v159 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v44, v46);
  v182 = &v159 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47, v49);
  v194 = &v159 - v51;
  MEMORY[0x1EEE9AC00](v50, v52);
  v197 = &v159 - v53;
  v54 = a1;
  v55 = _ArrayBuffer.requestNativeBuffer()(v54, v42);
  a1;
  v189 = a1;
  v190 = a4;
  v173 = v9;
  v180 = v10;
  v179 = v26;
  if (!v55)
  {
    v208 = a1;
    v60 = type metadata accessor for Array(0, v42, v58, v59);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v60, v61);
    v56 = _copyCollectionToContiguousArray<A>(_:)(&v208, v60, WitnessTable);
    v55 = v56;
  }

  v208 = v55;
  MEMORY[0x1EEE9AC00](v56, v57);
  v203 = a2;
  v204 = v42;
  v157 = a2;
  v158 = a3;
  v65 = type metadata accessor for ContiguousArray(0, v42, v63, v64);
  v67 = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v65, v66);
  v69 = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v65, v68);
  v181 = v65;
  v188 = v67;
  MutableCollection<>.sort(by:)(partial apply for closure #1 in RangeSet.Ranges.init(_unorderedRanges:), v155, v65, v67, v69);
  v70 = v208;
  v196 = *(v208 + 16);
  if (v196)
  {
    v71 = 0;
    v199 = v201 + 16;
    v200 = a3;
    v202 = v201 + 8;
    v195 = v208;
    v72 = v201;
    v73 = v197;
    while (1)
    {
      if (v71 >= *(v70 + 16))
      {
LABEL_48:
        LODWORD(v157) = 0;
        v156 = 691;
        v155[0] = 2;
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v198 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      v74 = *(v72 + 72);
      v75 = *(v72 + 16);
      v76 = v204;
      v75(v73, v70 + v198 + v74 * v71, v204);
      v77 = *(a3 + 8);
      v78 = *(v77 + 8);
      LODWORD(v205) = v78(v73, &v73[*(v76 + 9)]);
      v79 = *(v72 + 8);
      v79(v73, v76);
      if ((v205 & 1) == 0)
      {
        break;
      }

      ++v71;
      v70 = v195;
      a3 = v200;
      if (v196 == v71)
      {
        goto LABEL_8;
      }
    }

    v191 = v79;
    v192 = v77 + 8;
    v85 = v77;
    v193 = v78;
    v195 = v75;
    v86 = v198;
    v206 = v71;
    v207 = 0;
    MutableCollection.swapAt(_:_:)(&v207, &v206, v181, v188);
    v87 = v71 + 1;
    v88 = v208;
    v89 = *(v208 + 16);
    if (v87 < v89)
    {
      v90 = 0;
      v196 = 0;
      v178 = (v179 + 16);
      v177 = v200 + 32;
      v185 = (v179 + 8);
      v164 = (v201 + 40);
      v163 = (v179 + 32);
      v162 = v200 + 24;
      v161 = (v180 + 16);
      v160 = (v180 + 32);
      v91 = v86 + v74 * v87;
      v92 = v203;
      v188 = v85;
      v93 = v74;
      v166 = v74;
      while (1)
      {
        if (v87 >= v89)
        {
          goto LABEL_48;
        }

        v205 = v87;
        v105 = v88;
        v106 = v194;
        v107 = v204;
        v195(v194, v88 + v91, v204);
        v108 = v193(v106, &v106[*(v107 + 9)], v92, v188);
        v191(v106, v107);
        if (v108)
        {
          goto LABEL_20;
        }

        if ((v196 & 0x8000000000000000) != 0)
        {
          goto LABEL_48;
        }

        if (v196 >= *(v105 + 16))
        {
          goto LABEL_48;
        }

        v109 = v196 * v93;
        v165 = v105 + v198;
        v110 = v92;
        v111 = *(v107 + 9);
        v112 = *v178;
        v180 = v105 + v198 + v196 * v93;
        v113 = v187;
        v112(v187, v180 + v111, v110);
        if (v205 >= *(v105 + 16))
        {
          goto LABEL_48;
        }

        v167 = v109;
        v201 = v91;
        v114 = v186;
        v112(v186, v105 + v91, v110);
        v168 = *(v200 + 32);
        v115 = v168(v113, v114, v110);
        v116 = *v185;
        (*v185)(v114, v110);
        v179 = v116;
        (v116)(v113, v110);
        if ((v115 & 1) == 0)
        {
          break;
        }

        if (v196 >= *(v105 + 16))
        {
          goto LABEL_48;
        }

        v117 = v180 + v111;
        v118 = v176;
        v119 = v203;
        v112(v176, v117, v203);
        if (v205 >= *(v105 + 16))
        {
          goto LABEL_48;
        }

        v120 = v175;
        v112(v175, v105 + v201 + *(v204 + 9), v119);
        v121 = v200;
        v122 = (v168)(v120, v118, v119, v200);
        v123 = (v122 & 1) == 0;
        v124 = (v122 & 1) != 0 ? v118 : v120;
        v125 = v123 ? v118 : v120;
        (v179)(v124, v119);
        v126 = v174;
        v127 = *v163;
        (*v163)(v174, v125, v119);
        if (v196 >= *(v105 + 16))
        {
          goto LABEL_48;
        }

        v128 = v126;
        v129 = v172;
        v112(v172, v180, v119);
        v130 = v173;
        v131 = *(v173 + 48);
        v127(&v129[v131], v128, v119);
        if (((*(v121 + 24))(v129, &v129[v131], v119, v121) & 1) == 0)
        {
          LODWORD(v157) = 0;
          v156 = 180;
          v155[0] = 2;
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v132 = *v161;
        v133 = v183;
        (*v161)(v183, v129, v130);
        v180 = *(v130 + 48);
        v168 = *v160;
        v134 = v184;
        v168(v184, v129, v130);
        v135 = *(v130 + 48);
        v136 = v170;
        v127(v170, v133, v203);
        v127(&v136[*(v130 + 48)], &v134[v135], v203);
        v137 = v171;
        v132(v171, v136, v130);
        v138 = *(v130 + 48);
        v139 = v182;
        v127(v182, v137, v203);
        v140 = &v137[v138];
        v141 = v179;
        (v179)(v140, v203);
        v168(v137, v136, v130);
        v92 = v203;
        v142 = v204;
        v127(&v139[*(v204 + 9)], &v137[*(v130 + 48)], v203);
        v141(v137, v92);
        v141(v184, v92);
        v141(&v183[v180], v92);
        v143 = v208;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v208);
        v208 = v143;
        if (!isUniquelyReferenced_nonNull_native)
        {
          v143 = _ContiguousArrayBuffer._consumeAndCreateNew()(v143, v181[2]);
          v208 = v143;
        }

        v104 = v205;
        v93 = v166;
        v91 = v201;
        v145 = v196;
        ContiguousArray._checkSubscript_mutating(_:)(v196);
        (*v164)(v143 + v198 + v167, v182, v142);
        v90 = v145;
LABEL_21:
        v87 = v104 + 1;
        v88 = v208;
        v89 = *(v208 + 16);
        v91 += v93;
        if (v87 >= v89)
        {
          goto LABEL_15;
        }
      }

      v146 = v196 + 1;
      v104 = v205;
      v90 = v205;
      v196 = v205;
      v92 = v203;
      v91 = v201;
      v93 = v166;
      if (v205 == v146)
      {
        goto LABEL_21;
      }

      v147 = *(v105 + 16);
      if (v205 >= v147)
      {
        goto LABEL_48;
      }

      v148 = v204;
      v149 = v195;
      v195(v169, v105 + v201, v204);
      if (v146 >= v147)
      {
        goto LABEL_48;
      }

      v149(v197, v165 + v146 * v93, v148);
      v150 = v208;
      v151 = swift_isUniquelyReferenced_nonNull_native(v208);
      v208 = v150;
      if (!v151)
      {
        v150 = _ContiguousArrayBuffer._consumeAndCreateNew()(v150, v181[2]);
        v208 = v150;
      }

      ContiguousArray._checkSubscript_mutating(_:)(v205);
      v152 = *v164;
      (*v164)(v150 + v91, v197, v148);
      v153 = v208;
      v154 = swift_isUniquelyReferenced_nonNull_native(v208);
      v208 = v153;
      if (!v154)
      {
        v153 = _ContiguousArrayBuffer._consumeAndCreateNew()(v153, v181[2]);
        v208 = v153;
      }

      ContiguousArray._checkSubscript_mutating(_:)(v146);
      v152(v153 + v198 + v146 * v93, v169, v148);
      v90 = v146;
      v196 = v146;
      v92 = v203;
LABEL_20:
      v104 = v205;
      goto LABEL_21;
    }

    v90 = 0;
LABEL_15:
    if (__OFADD__(v90, 1))
    {
      __break(1u);
    }

    else if (v89 >= (v90 + 1))
    {
      v189;
      v100 = type metadata accessor for EmptyCollection(0, v204, v98, v99);
      v102 = swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, v100, v101);
      result = ContiguousArray.replaceSubrange<A>(_:with:)(v90 + 1, v89, v103, v181, v100, v102);
      v84 = v208;
      goto LABEL_18;
    }

    LODWORD(v157) = 0;
    v156 = 760;
    v155[0] = 2;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_8:
  v189;
  v80 = v204;
  _swift_isClassOrObjCExistentialType(v204, v204);
  v81 = _ArrayBuffer.requestNativeBuffer()(&_swiftEmptyArrayStorage, v80);
  if (v81)
  {
    v84 = v81;
  }

  else
  {
    v207 = &_swiftEmptyArrayStorage;
    v94 = type metadata accessor for Array(0, v80, v82, v83);
    v96 = swift_getWitnessTable(protocol conformance descriptor for [A], v94, v95);
    v84 = _copyCollectionToContiguousArray<A>(_:)(&v207, v94, v96);
  }

  &_swiftEmptyArrayStorage;
  result = v208;
LABEL_18:
  *v190 = v84;
  return result;
}

uint64_t RangeSet.Ranges._contains(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v11 = type metadata accessor for Range(0, v4, v9, v10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v24 - v14;
  v30 = *v2;
  v16 = v30;
  v27 = v4;
  v28 = v9;
  v25 = a1;
  v29 = a1;
  v19 = type metadata accessor for ContiguousArray(0, v11, v17, v18);
  v16;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v19, v20);
  Collection._partitioningIndex(where:)(partial apply for closure #1 in RangeSet.Ranges._contains(_:), v26, v19, WitnessTable, &v31);
  v16;
  if (v31 == *(v16 + 16))
  {
    v22 = 0;
  }

  else
  {
    ContiguousArray.subscript.getter(v31, v16, v11, v15);
    (*(v5 + 16))(v7, v15, v4);
    (*(v12 + 8))(v15, v11);
    v22 = (*(v9 + 24))(v7, v25, v4, v9);
    (*(v5 + 8))(v7, v4);
  }

  return v22 & 1;
}

uint64_t RangeSet.insert(contentsOf:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = type metadata accessor for Range(0, v5, v6, a4);
  result = (*(*(v6 + 8) + 8))(a1, &a1[*(v7 + 36)], v5);
  if ((result & 1) == 0)
  {
    v10 = type metadata accessor for RangeSet.Ranges(0, v5, v6, v9);

    return RangeSet.Ranges._insert(contentsOf:)(a1, v10);
  }

  return result;
}

uint64_t RangeSet.Ranges._insert(contentsOf:)(char *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  swift_getTupleTypeMetadata2(0, v5, v5, "lower upper ", 0);
  v106 = v6;
  v104 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v105 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v103 = &v97 - v12;
  v110 = *(v5 - 1);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v111 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v108 = &v97 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v109 = &v97 - v21;
  MEMORY[0x1EEE9AC00](v20, v22);
  v116 = &v97 - v23;
  v24 = *(a2 + 24);
  v26 = type metadata accessor for Range(255, v5, v24, v25);
  v113 = type metadata accessor for CollectionOfOne(0, v26, v27, v28);
  v30 = MEMORY[0x1EEE9AC00](v113, v29);
  v112 = &v97 - v31;
  v32 = *(v26 - 8);
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v100 = &v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v34, v36);
  v115 = &v97 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v107 = &v97 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v45 = &v97 - v44;
  MEMORY[0x1EEE9AC00](v43, v46);
  v48 = &v97 - v47;
  v114 = v2;
  v49 = *v2;
  *v2;
  v50 = a1;
  v51 = specialized RangeSet.Ranges._indicesOfRange(_:in:includeAdjacent:)(a1, v49, 1, v5, v24);
  v53 = v52;
  v49;
  v117 = v53;
  if (v51 == v53)
  {
    (*(v32 + 16))(v48, v50, v26);
    ContiguousArray._checkIndex(_:)(v51);
    v54 = v112;
    (*(v32 + 32))(v112, v48, v26);
    v57 = type metadata accessor for ContiguousArray(0, v26, v55, v56);
    v58 = v113;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, v113, v59);
    v61 = v51;
    v62 = v51;
    goto LABEL_18;
  }

  v98 = v51;
  v99 = v49;
  ContiguousArray.subscript.getter(v51, v49, v26, v45);
  v64 = v109;
  v63 = v110;
  v65 = *(v110 + 16);
  v65(v109, v45, v5);
  v97 = v32;
  v101 = *(v32 + 8);
  v102 = v32 + 8;
  v101(v45, v26);
  if ((*(v24 + 2))(v50, v64, v5, v24))
  {
    (*(v63 + 8))(v64, v5);
    v65(v116, v50, v5);
  }

  else
  {
    (*(v63 + 32))(v116, v64, v5);
  }

  v66 = v111;
  if (__OFSUB__(v117, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v67 = v65;
  v68 = v50;
  v69 = v107;
  ContiguousArray.subscript.getter(v117 - 1, v99, v26, v107);
  v67(v66, v69 + *(v26 + 36), v5);
  v101(v69, v26);
  v70 = *(v26 + 36);
  if ((*(v24 + 4))(&v68[v70], v66, v5, v24))
  {
    (*(v63 + 8))(v66, v5);
    v71 = &v68[v70];
    v72 = v108;
    v67(v108, v71, v5);
  }

  else
  {
    v72 = v108;
    (*(v63 + 32))(v108, v66, v5);
  }

  v73 = v116;
  if (((*(v24 + 3))(v116, v72, v5, v24) & 1) == 0)
  {
LABEL_21:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v109 = v24;
  v111 = v26;
  v74 = v103;
  v75 = v63;
  v76 = *(v63 + 32);
  v76(v103, v73, v5);
  v77 = v106;
  v76(&v74[*(v106 + 48)], v72, v5);
  v78 = v104;
  v79 = v105;
  (*(v104 + 16))(v105, v74, v77);
  v116 = *(v77 + 48);
  v80 = v115;
  v76(v115, v79, v5);
  v81 = *(v75 + 8);
  v81(&v116[v79], v5);
  v82 = v74;
  v83 = v111;
  (*(v78 + 32))(v79, v82, v77);
  v84 = *(v77 + 48);
  v85 = *(v83 + 36);
  v76(&v85[v80], &v79[v84], v5);
  result = (v81)(v79, v5);
  v87 = v98;
  if (__OFSUB__(v117, v98))
  {
    __break(1u);
    return result;
  }

  v116 = v85;
  v88 = v97;
  v89 = v115;
  if (v117 - v98 == 1)
  {
    v90 = v100;
    ContiguousArray.subscript.getter(v98, v99, v83, v100);
    v91 = *(v109 + 1);
    v92 = *(v91 + 8);
    if (v92(v89, v90, v5, v91))
    {
      v93 = v92(&v116[v89], v90 + *(v83 + 36), v5, v91);
      v101(v90, v83);
      if (v93)
      {
        v101(v89, v83);
        return 0;
      }
    }

    else
    {
      v101(v90, v83);
    }
  }

  v54 = v112;
  (*(v88 + 32))(v112, v89, v83);
  v57 = type metadata accessor for ContiguousArray(0, v83, v94, v95);
  v58 = v113;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, v113, v96);
  v61 = v87;
  v62 = v117;
LABEL_18:
  ContiguousArray.replaceSubrange<A>(_:with:)(v61, v62, v54, v57, v58, WitnessTable);
  return 1;
}

uint64_t RangeSet.remove(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = type metadata accessor for Range(0, v5, v6, a4);
  result = (*(*(v6 + 8) + 8))(a1, a1 + *(v7 + 36), v5);
  if ((result & 1) == 0)
  {
    v10 = type metadata accessor for RangeSet.Ranges(0, v5, v6, v9);

    return RangeSet.Ranges._remove(contentsOf:)(a1, v10, v11, v12);
  }

  return result;
}

uint64_t RangeSet.Ranges._remove(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = type metadata accessor for Range(255, v6, v7, a4);
  v198 = type metadata accessor for _Pair(0, v8, v9, v10);
  MEMORY[0x1EEE9AC00](v198, v11);
  v197 = v185 - v12;
  v213 = type metadata accessor for CollectionOfOne(0, v8, v13, v14);
  MEMORY[0x1EEE9AC00](v213, v15);
  v212 = v185 - v16;
  swift_getTupleTypeMetadata2(0, v6, v6, "lower upper ", 0);
  v216 = v17;
  v221 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v215 = v185 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v220 = v185 - v23;
  v224 = *(v6 - 1);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v202 = v185 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v201 = v185 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v209 = v185 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v208 = v185 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34, v36);
  v207 = (v185 - v38);
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v205 = v185 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v206 = v185 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43, v45);
  v48 = v185 - v47;
  v50 = MEMORY[0x1EEE9AC00](v46, v49);
  v225 = v185 - v51;
  v223 = *(v8 - 8);
  v53 = MEMORY[0x1EEE9AC00](v50, v52);
  v200 = v185 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x1EEE9AC00](v53, v55);
  v196 = v185 - v57;
  v59 = MEMORY[0x1EEE9AC00](v56, v58);
  v61 = v185 - v60;
  v63 = MEMORY[0x1EEE9AC00](v59, v62);
  v211 = v185 - v64;
  v66 = MEMORY[0x1EEE9AC00](v63, v65);
  v204 = v185 - v67;
  v69 = MEMORY[0x1EEE9AC00](v66, v68);
  v71 = v185 - v70;
  v73 = MEMORY[0x1EEE9AC00](v69, v72);
  v203 = v185 - v74;
  v76 = MEMORY[0x1EEE9AC00](v73, v75);
  v199 = v185 - v77;
  MEMORY[0x1EEE9AC00](v76, v78);
  v80 = v185 - v79;
  v81 = *v4;
  *v4;
  v226 = a1;
  v222 = v7;
  v82 = specialized RangeSet.Ranges._indicesOfRange(_:in:includeAdjacent:)(a1, v81, 0, v6, v7);
  v84 = v83;
  result = v81;
  if (v82 != v84)
  {
    v186 = v61;
    v185[1] = v71;
    v187 = v48;
    v195 = v4;
    v210 = v82;
    ContiguousArray.subscript.getter(v82, v81, v8, v80);
    v86 = v224;
    v87 = v225;
    v89 = v224 + 16;
    v88 = *(v224 + 16);
    v218 = v81;
    v219 = v88;
    v88(v225, v80, v6);
    v90 = v8;
    v91 = (v223 + 8);
    v92 = *(v223 + 8);
    v214 = v90;
    v92(v80);
    v93 = v222;
    v94 = (*(v222 + 40))(v226, v87, v6, v222);
    v96 = *(v86 + 8);
    v95 = v86 + 8;
    v217 = v96;
    v96(v87, v6);
    if (__OFSUB__(v84, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    v191 = v84;
    v97 = v214;
    v194 = v94;
    v98 = *(v214 + 36);
    v189 = v84 - 1;
    ContiguousArray.subscript.getter(v84 - 1, v218, v214, v80);
    v99 = &v80[*(v97 + 36)];
    v100 = v225;
    v192 = v89;
    v219(v225, v99, v6);
    v193 = v92;
    (v92)(v80, v97);
    v101 = *(v93 + 16);
    v102 = v226;
    v188 = v98;
    v103 = v226 + v98;
    v104 = v6;
    v105 = v101(v103, v100, v6, v93);
    v190 = v95;
    v217(v100, v6);
    v108 = v91;
    if (v194)
    {
      if (v105)
      {
        v109 = v186;
        ContiguousArray.subscript.getter(v210, v218, v97, v186);
        v110 = v208;
        v111 = v219;
        v219(v208, v109, v104);
        v112 = v109;
        v113 = v110;
        v213 = v108;
        v193(v112, v97);
        v114 = v209;
        v111(v209, v102, v104);
        v115 = *(v93 + 24);
        v225 = (v93 + 24);
        v212 = v115;
        v116 = (v115)(v113, v114, v104, v93);
        v117 = v216;
        v118 = v221;
        if (v116)
        {
          v119 = *(v224 + 32);
          v120 = v220;
          v119(v220, v113, v104);
          v119(&v120[*(v117 + 48)], v114, v104);
          v121 = *(v118 + 16);
          v122 = v215;
          v224 = v118 + 16;
          v209 = v121;
          (v121)(v215, v120, v117);
          v123 = *(v117 + 48);
          v124 = v211;
          v119(v211, v122, v104);
          v125 = v217;
          v217(&v122[v123], v104);
          v126 = *(v118 + 32);
          v221 = v118 + 32;
          v208 = v126;
          (v126)(v122, v120, v117);
          v127 = v214;
          v128 = &v124[*(v214 + 36)];
          v129 = &v122[*(v117 + 48)];
          v207 = v119;
          v119(v128, v129, v104);
          v125(v122, v104);
          v130 = v201;
          v131 = v219;
          v219(v201, (v226 + v188), v104);
          v132 = v200;
          ContiguousArray.subscript.getter(v189, v218, v127, v200);
          v133 = v202;
          v131(v202, v132 + *(v127 + 36), v104);
          v193(v132, v127);
          if ((v212)(v130, v133, v104, v222))
          {
            v134 = v220;
            v135 = v130;
            v136 = v207;
            v207(v220, v135, v104);
            v136(&v134[*(v117 + 48)], v133, v104);
            (v209)(v122, v134, v117);
            v137 = *(v117 + 48);
            v138 = v196;
            v136(v196, v122, v104);
            v139 = v217;
            v217(&v122[v137], v104);
            (v208)(v122, v134, v117);
            v136(&v138[*(v127 + 36)], &v122[*(v117 + 48)], v104);
            v139(v122, v104);
            v140 = *(v223 + 32);
            v141 = v197;
            v140(v197, v211, v127);
            swift_getTupleTypeMetadata2(0, v127, v127, "first second ", 0);
            v140(&v141[*(v142 + 48)], v138, v127);
            v145 = type metadata accessor for ContiguousArray(0, v127, v143, v144);
            v146 = v198;
            WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _Pair<A>, v198, v147);
            v149 = v210;
            v150 = v191;
            v151 = v141;
LABEL_14:
            v178 = v145;
            v179 = v146;
            return ContiguousArray.replaceSubrange<A>(_:with:)(v149, v150, v151, v178, v179, WitnessTable);
          }
        }

LABEL_19:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v165 = v204;
      ContiguousArray.subscript.getter(v210, v218, v97, v204);
      v166 = v205;
      v167 = v219;
      v219(v205, v165, v104);
      v193(v165, v97);
      v168 = v207;
      v167(v207, v102, v104);
      v169 = (*(v93 + 24))(v166, v168, v104, v93);
      v159 = v216;
      v160 = v221;
      if ((v169 & 1) == 0)
      {
        goto LABEL_19;
      }

      v158 = *(v224 + 32);
      v162 = v220;
      v158(v220, v166, v104);
      v158(&v162[*(v159 + 48)], v168, v104);
      v161 = v215;
      (*(v160 + 16))(v215, v162, v159);
      v163 = *(v159 + 48);
      v164 = &v217;
    }

    else
    {
      v152 = v220;
      if ((v105 & 1) == 0)
      {
        v180 = type metadata accessor for ContiguousArray(0, v97, v106, v107);
        v183 = type metadata accessor for EmptyCollection(0, v97, v181, v182);
        WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, v183, v184);
        v149 = v210;
        v150 = v191;
        v178 = v180;
        v179 = v183;
        return ContiguousArray.replaceSubrange<A>(_:with:)(v149, v150, v151, v178, v179, WitnessTable);
      }

      v153 = (v102 + v188);
      v154 = v187;
      v155 = v219;
      v219(v187, v153, v6);
      v156 = v203;
      ContiguousArray.subscript.getter(v189, v218, v97, v203);
      v157 = v206;
      v155(v206, v156 + *(v97 + 36), v104);
      v193(v156, v97);
      if (((*(v93 + 24))(v154, v157, v104, v93) & 1) == 0)
      {
        goto LABEL_19;
      }

      v158 = *(v224 + 32);
      v158(v152, v154, v104);
      v159 = v216;
      v158(&v152[*(v216 + 48)], v157, v104);
      v160 = v221;
      v161 = v215;
      (*(v221 + 16))(v215, v152, v159);
      v162 = v152;
      v163 = *(v159 + 48);
      v164 = &v227;
    }

    v170 = *(v164 - 32);
    v158(v170, v161, v104);
    v171 = v217;
    v217(&v161[v163], v104);
    (*(v160 + 32))(v161, v162, v159);
    v172 = *(v159 + 48);
    v173 = v214;
    v158(&v170[*(v214 + 36)], &v161[v172], v104);
    v171(v161, v104);
    v174 = v212;
    (*(v223 + 32))(v212, v170, v173);
    v145 = type metadata accessor for ContiguousArray(0, v173, v175, v176);
    v146 = v213;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, v213, v177);
    v149 = v210;
    v150 = v191;
    v151 = v174;
    goto LABEL_14;
  }

  return result;
}

uint64_t static RangeSet.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v7 = type metadata accessor for Range(0, a3, a4, a4);
  v37 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v30 - v13;
  v15 = *a1;
  v16 = *a2;
  v17 = *(*a1 + 16);
  if (v17 == *(v16 + 16))
  {
    if (!v17 || v15 == v16)
    {
      v25 = 1;
    }

    else
    {
      v18 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v32 = v16 + v18;
      v33 = v37 + 16;
      v34 = v15 + v18;
      v19 = (v37 + 8);
      v15;
      v35 = v16;
      v16;
      v20 = 0;
      v31 = v17 - 1;
      while (1)
      {
        if (v20 >= *(v15 + 16) || (v21 = *(v37 + 72) * v20, v22 = *(v37 + 16), v22(v14, v34 + v21, v7), v20 >= *(v35 + 16)))
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v22(v11, v32 + v21, v7);
        v23 = *(v36 + 8);
        v24 = *(v23 + 8);
        if ((v24(v14, v11, a3, v23) & 1) == 0)
        {
          break;
        }

        v25 = v24(&v14[*(v7 + 36)], &v11[*(v7 + 36)], a3, v23);
        v26 = *v19;
        (*v19)(v11, v7);
        v26(v14, v7);
        if ((v25 & 1) != 0 && v31 != v20++)
        {
          continue;
        }

        goto LABEL_15;
      }

      v28 = *v19;
      (*v19)(v11, v7);
      v28(v14, v7);
      v25 = 0;
LABEL_15:
      v15;
      v35;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

uint64_t static RangeSet.Ranges.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v7 = type metadata accessor for Range(0, a3, a4, a4);
  v39 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v30 - v12;
  v14 = *a1;
  v15 = *a2;
  v16 = *(v14 + 16);
  if (v16 != *(*a2 + 16))
  {
LABEL_14:
    v25 = 0;
    return v25 & 1;
  }

  if (v16 && v14 != v15)
  {
    v17 = 0;
    v18 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v34 = v11;
    v35 = v15 + v18;
    v36 = (v39 + 8);
    v37 = v14 + v18;
    v31 = v16 - 1;
    v32 = v39 + 16;
    v33 = v15;
    while (1)
    {
      if (v17 >= *(v14 + 16) || (v19 = *(v39 + 72) * v17, v20 = *(v39 + 16), v20(v13, v37 + v19, v7), v17 >= *(v15 + 16)))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v21 = v14;
      v22 = v34;
      v20(v34, v35 + v19, v7);
      v23 = *(v38 + 8);
      v24 = *(v23 + 8);
      if ((v24(v13, v22, a3, v23) & 1) == 0)
      {
        break;
      }

      v25 = v24(&v13[*(v7 + 36)], &v22[*(v7 + 36)], a3, v23);
      v26 = *v36;
      (*v36)(v22, v7);
      v26(v13, v7);
      if (v25)
      {
        v27 = v31 == v17++;
        v14 = v21;
        v15 = v33;
        if (!v27)
        {
          continue;
        }
      }

      return v25 & 1;
    }

    v28 = *v36;
    (*v36)(v22, v7);
    v28(v13, v7);
    goto LABEL_14;
  }

  v25 = 1;
  return v25 & 1;
}

void RangeSet<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 24);
  v27 = *(a2 + 16);
  v25 = type metadata accessor for Range(0, v27, v7, a4);
  v8 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v9);
  v24 = v20 - v10;
  v11 = *v4;
  v12 = *(*v4 + 16);
  v28 = a1;
  Hasher._combine(_:)(v12);
  v26 = v12;
  if (v12)
  {
    v22 = a3 + 24;
    v23 = v8 + 16;
    v20[1] = v8 + 8;
    v11;
    v13 = 0;
    v21 = v11;
    v14 = v24;
    v15 = v27;
    do
    {
      if (v13 >= *(v11 + 16))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v16 = v25;
      (*(v8 + 16))(v14, v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v13++, v25);
      v17 = *(a3 + 24);
      v18 = v28;
      v17(v28, v15, a3);
      v19 = v18;
      v11 = v21;
      v17(v19, v15, a3);
      (*(v8 + 8))(v14, v16);
    }

    while (v26 != v13);
    v11;
  }
}

Swift::Int RangeSet<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *v4;
  v10 = 0u;
  v9 = 0u;
  v6 = 0;
  v7 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v8 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  RangeSet<>.hash(into:)(&v6, a1, a2, a4);
  return Hasher._finalize()();
}

uint64_t RangeSet.init<A, B>(_:within:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, Class *a4@<X3>, const char *a5@<X4>, int **a6@<X5>, swift *a7@<X6>, __objc2_class ***a8@<X8>)
{
  v98 = a2;
  v92 = a1;
  v76 = a8;
  swift_getTupleTypeMetadata2(0, a3, a3, "lower upper ", 0);
  v96 = v13;
  v78 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v94 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v95 = &v74 - v18;
  v97 = a7;
  v99 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a7, a5, a3, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v20 = type metadata accessor for Range(0, a3, AssociatedConformanceWitness, v19);
  v77 = *(v20 - 1);
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v93 = &v74 - v23;
  v24 = *(a3 - 1);
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v28 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v29);
  v31 = &v74 - v30;
  v34 = type metadata accessor for Optional(0, a3, v32, v33);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v37 = &v74 - v36;
  v102 = a6;
  v38 = a6;
  v39 = a4;
  swift_getAssociatedTypeWitness(0, v38, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v101 = v40;
  v75 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v41);
  v100 = &v74 - v42;
  _swift_isClassOrObjCExistentialType(v20, v20);
  v43 = v20;
  v44 = _ArrayBuffer.requestNativeBuffer()(&_swiftEmptyArrayStorage, v20);
  if (v44)
  {
    v47 = v44;
  }

  else
  {
    v104 = &_swiftEmptyArrayStorage;
    v48 = type metadata accessor for Array(0, v20, v45, v46);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v48, v49);
    v47 = _copyCollectionToContiguousArray<A>(_:)(&v104, v48, WitnessTable);
  }

  &_swiftEmptyArrayStorage;
  v104 = v47;
  v51 = v102;
  (*(v102 + 32))(v39, v102);
  v52 = v39;
  v53 = v101;
  v54 = swift_getAssociatedConformanceWitness(v51, v52, v101, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v55 = *(v54 + 16);
  v91 = v54 + 16;
  v92 = v54;
  v90 = v55;
  (v55)(v53);
  v88 = *(v24 + 48);
  v89 = v24 + 48;
  if (v88(v37, 1, a3) != 1)
  {
    v57 = *(v24 + 32);
    v56 = v24 + 32;
    v102 = v57;
    v86 = AssociatedConformanceWitness + 24;
    v87 = v97 + 184;
    v82 = (v56 - 16);
    v81 = v78 + 2;
    v80 = v56 - 24;
    v78 += 4;
    ++v77;
    v84 = v31;
    v85 = v28;
    v83 = v37;
    v79 = v43;
    v58 = (v56 - 24);
    do
    {
      (v102)(v31, v37, a3);
      (*(v97 + 23))(v31, v99);
      if (((*(AssociatedConformanceWitness + 24))(v31, v28, a3) & 1) == 0)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v59 = v95;
      (*v82)(v95, v31, a3);
      v60 = v96;
      v61 = v102;
      (v102)(&v59[*(v96 + 48)], v28, a3);
      v62 = v94;
      (*v81)(v94, v59, v60);
      v63 = *(v60 + 48);
      v64 = v93;
      v61(v93, v62, a3);
      v65 = v56;
      v66 = *v58;
      (*v58)(&v62[v63], a3);
      (*v78)(v62, v59, v60);
      v67 = *(v60 + 48);
      v68 = v79;
      v37 = v83;
      v61(&v64[*(v79 + 9)], &v62[v67], a3);
      v69 = v62;
      v31 = v84;
      v66(v69, a3);
      v71 = type metadata accessor for RangeSet.Ranges(0, a3, AssociatedConformanceWitness, v70);
      RangeSet.Ranges._insert(contentsOf:)(v64, v71);
      v72 = v64;
      v28 = v85;
      (*v77)(v72, v68);
      v66(v31, a3);
      v56 = v65;
      v90(v101, v92);
    }

    while (v88(v37, 1, a3) != 1);
  }

  (*(*(v99 - 1) + 8))(v98);
  result = (*(v75 + 8))(v100, v101);
  *v76 = v104;
  return result;
}

uint64_t RangeSet.insert<A>(_:within:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a4;
  v8 = *(a3 + 16);
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v10 = *(v9 - 8);
  v42 = v9;
  v43 = v10;
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v41 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v39 - v16;
  v18 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v15, v19);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a3 + 24);
  v24 = type metadata accessor for Range(0, v8, v22, v23);
  v44 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v39 - v26;
  (*(a5 + 184))(a1, v45, a5);
  v28 = *(v22 + 24);
  v45 = v22;
  if ((v28(a1, v21, v8, v22) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v18 + 16))(v17, a1, v8);
  v29 = v42;
  v30 = *(v42 + 48);
  v40 = v24;
  v31 = *(v18 + 32);
  v31(&v17[v30], v21, v8);
  v32 = v43;
  v33 = v41;
  (*(v43 + 16))(v41, v17, v29);
  v39 = *(v29 + 48);
  v31(v27, v33, v8);
  v34 = *(v18 + 8);
  v34(&v33[v39], v8);
  (*(v32 + 32))(v33, v17, v29);
  v35 = v40;
  v31(&v27[*(v40 + 36)], &v33[*(v29 + 48)], v8);
  v34(v33, v8);
  v37 = type metadata accessor for RangeSet.Ranges(0, v8, v45, v36);
  LOBYTE(v33) = RangeSet.Ranges._insert(contentsOf:)(v27, v37);
  (*(v44 + 8))(v27, v35);
  return v33 & 1;
}

uint64_t RangeSet.remove<A>(_:within:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a4;
  v8 = *(a3 + 16);
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v45 = v9;
  v48 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v42 - v16;
  v18 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v15, v19);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a3 + 24);
  v47 = type metadata accessor for Range(0, v8, v22, v23);
  v24 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v25);
  v46 = &v42 - v26;
  (*(a5 + 184))(a1, v49, a5);
  v27 = *(v22 + 24);
  v49 = v22;
  if ((v27(a1, v21, v8, v22) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v44 = v24;
  (*(v18 + 16))(v17, a1, v8);
  v28 = v45;
  v29 = *(v18 + 32);
  v29(&v17[*(v45 + 48)], v21, v8);
  v30 = v48;
  (*(v48 + 16))(v13, v17, v28);
  v43 = *(v28 + 48);
  v31 = v46;
  v29(v46, v13, v8);
  v32 = *(v18 + 8);
  v32(&v13[v43], v8);
  (*(v30 + 32))(v13, v17, v28);
  v33 = *(v28 + 48);
  v34 = v47;
  v35 = *(v47 + 36);
  v29((v31 + v35), &v13[v33], v8);
  v32(v13, v8);
  v36 = v49;
  if (((*(*(v49 + 8) + 8))(v31, v31 + v35, v8) & 1) == 0)
  {
    v38 = type metadata accessor for RangeSet.Ranges(0, v8, v36, v37);
    RangeSet.Ranges._remove(contentsOf:)(v31, v38, v39, v40);
  }

  return (*(v44 + 8))(v31, v34);
}

void RangeSet.Ranges._gaps(boundedBy:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v164 = a3;
  v6 = *(a2 + 16);
  swift_getTupleTypeMetadata2(0, v6, v6, "lower upper ", 0);
  v8 = *(v7 - 8);
  v162 = v7;
  v163 = v8;
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v161 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v160 = &v129 - v13;
  v14 = *(a2 + 24);
  v16 = type metadata accessor for Range(0, v6, v14, v15);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v150 = &v129 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v157 = &v129 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v165 = &v129 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v159 = &v129 - v33;
  v34 = *(v6 - 1);
  v36 = MEMORY[0x1EEE9AC00](v32, v35);
  v152 = &v129 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v151 = &v129 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v158 = &v129 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42, v44);
  v166 = &v129 - v46;
  MEMORY[0x1EEE9AC00](v45, v47);
  v49 = &v129 - v48;
  v50 = *v3;
  v51 = *v3;
  v167 = v14;
  v52 = specialized RangeSet.Ranges._indicesOfRange(_:in:includeAdjacent:)(a1, v51, 1, v6, v14);
  if (v52 == v53)
  {
    (*(v17 + 16))(v21, a1, v16);
    v56 = type metadata accessor for _ContiguousArrayStorage(0, v16, v54, v55);
    v57 = swift_allocObject(v56, (((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72)), *(v17 + 80) | 7);
    v58 = static Array._adoptStorage(_:count:)(v57, 1);
    (*(v17 + 32))(v59, v21, v16);
    v60 = _ArrayBuffer.requestNativeBuffer()(v58, v16);
    if (v60)
    {
LABEL_5:
      v67 = v60;
      goto LABEL_6;
    }

    v169 = v58;
    v63 = type metadata accessor for Array(0, v16, v61, v62);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v63, v64);
    v66 = &v169;
LABEL_4:
    v60 = _copyCollectionToContiguousArray<A>(_:)(v66, v63, WitnessTable);
    goto LABEL_5;
  }

  v68 = v52;
  v69 = v53;
  _swift_isClassOrObjCExistentialType(v16, v16);
  v70 = *(v17 + 80);
  v169 = &_swiftEmptyArrayStorage;
  v71 = *(v34 + 16);
  v154 = v34 + 16;
  v155 = v49;
  v153 = v71;
  v71(v49, a1, v6);
  ContiguousArray._checkIndex(_:)(v68);
  ContiguousArray._checkIndex(_:)(v69);
  v156 = v69;
  if (v69 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v72 = v50;
  v138 = a1;
  v73 = v50 + ((v70 + 32) & ~v70);
  v74 = v17 + 16;
  v145 = v17 + 32;
  v149 = v167 + 24;
  v148 = (v34 + 8);
  v147 = (v34 + 32);
  v146 = v163 + 2;
  v163 += 4;
  v75 = (v17 + 8);
  v137 = v72;
  v72;
  v76 = v166;
  v77 = v156;
  do
  {
    if (v68 >= v77)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v143 = v75;
    v78 = *(v17 + 72);
    v142 = v73;
    v79 = v73 + v78 * v68;
    v80 = *(v17 + 16);
    v81 = v159;
    v141 = v74;
    v80(v159, v79, v16);
    v82 = v165;
    (*(v17 + 32))(v165, v81, v16);
    v83 = v155;
    v84 = v153;
    v153(v76, v155, v6);
    v85 = v158;
    v84(v158, v82, v6);
    v86 = *(v167 + 24);
    if ((v86(v76, v85, v6) & 1) == 0)
    {
      goto LABEL_23;
    }

    v136 = v86;
    v139 = v68;
    v140 = v17;
    v87 = *v148;
    (*v148)(v83, v6);
    v88 = *v147;
    v144 = v16;
    v89 = v160;
    v88(v160, v76, v6);
    v90 = v85;
    v91 = v162;
    v88(&v89[*(v162 + 48)], v90, v6);
    v92 = v161;
    v134 = *v146;
    v134(v161, v89, v91);
    v93 = *(v91 + 48);
    v94 = v157;
    v88(v157, v92, v6);
    v87(&v92[v93], v6);
    v95 = v89;
    v16 = v144;
    v131 = *v163;
    v131(v92, v95, v91);
    v96 = *(v16 + 36);
    v97 = &v92[*(v91 + 48)];
    v135 = v88;
    v88(&v94[v96], v97, v6);
    v98 = v92;
    v99 = v94;
    v100 = v87;
    v87(v98, v6);
    v101 = *(v167 + 8);
    v102 = *(v101 + 8);
    v103 = v102(v99, v99 + v96, v6, v101);
    v133 = v101;
    v132 = v101 + 8;
    v130 = v102;
    if (v103)
    {
      v106 = v99;
      v75 = v143;
      (*v143)(v106, v16);
    }

    else
    {
      v107 = type metadata accessor for Array(0, v16, v104, v105);
      Array.append(_:)(v99, v107);
      v75 = v143;
    }

    v73 = v142;
    v68 = v139 + 1;
    v108 = v165;
    v153(v155, &v165[*(v16 + 36)], v6);
    v109 = *v75;
    (*v75)(v108, v16);
    v77 = v156;
    v76 = v166;
    v17 = v140;
    v74 = v141;
  }

  while (v156 != v68);
  v137;
  v110 = v151;
  v111 = v155;
  v112 = v153;
  v153(v151, v155, v6);
  v113 = v152;
  v112(v152, v138 + *(v16 + 36), v6);
  if ((v136(v110, v113, v6, v167) & 1) == 0)
  {
LABEL_23:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v129 = v100;
  v100(v111, v6);
  v114 = v160;
  v115 = v135;
  v135(v160, v110, v6);
  v116 = v162;
  v115(&v114[*(v162 + 48)], v113, v6);
  v117 = v161;
  v134(v161, v114, v116);
  v118 = *(v116 + 48);
  v119 = v150;
  v115(v150, v117, v6);
  v129(&v117[v118], v6);
  v131(v117, v114, v116);
  v120 = v144;
  v121 = *(v144 + 36);
  v115((v119 + v121), &v117[*(v116 + 48)], v6);
  v129(v117, v6);
  if (v130(v119, v119 + v121, v6, v133))
  {
    v109(v119, v120);
  }

  else
  {
    v124 = type metadata accessor for Array(0, v120, v122, v123);
    Array.append(_:)(v119, v124);
  }

  v58 = v169;
  v125 = v169;
  v67 = _ArrayBuffer.requestNativeBuffer()(v125, v120);
  v58;
  if (!v67)
  {
    v168 = v58;
    v63 = type metadata accessor for Array(0, v120, v126, v127);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v63, v128);
    v66 = &v168;
    goto LABEL_4;
  }

LABEL_6:
  v58;
  *v164 = v67;
}

uint64_t RangeSet.formUnion(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v9[0] = *a1;
  v5 = v9[0];
  v9[1] = v6;
  v7 = type metadata accessor for RangeSet.Ranges(0, *(a2 + 16), *(a2 + 24), a4);
  RangeSet.Ranges._union(_:)(v9, v7, &v10);
  v6;
  result = v5;
  *v4 = v10;
  return result;
}

uint64_t RangeSet.union(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, uint64_t a4@<X3>)
{
  v7 = *v4;
  v10[0] = *a1;
  v6 = v10[0];
  v10[1] = v7;
  v8 = type metadata accessor for RangeSet.Ranges(0, *(a2 + 16), *(a2 + 24), a4);
  RangeSet.Ranges._union(_:)(v10, v8, &v11);
  v7;
  result = v6;
  *a3 = v11;
  return result;
}

uint64_t RangeSet.formIntersection(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v9[0] = *a1;
  v5 = v9[0];
  v9[1] = v6;
  v7 = type metadata accessor for RangeSet.Ranges(0, *(a2 + 16), *(a2 + 24), a4);
  v9[0];
  RangeSet.Ranges._intersection(_:)(v9, v7, &v10);
  v6;
  result = v5;
  *v4 = v10;
  return result;
}

void *RangeSet.formSymmetricDifference(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v7[0] = *a1;
  v7[1] = v5;
  result = RangeSet.symmetricDifference(_:)(v7, a2, &v8, a4);
  *v4 = v8;
  return result;
}

uint64_t RangeSet.symmetricDifference(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  v8 = *v4;
  v15 = *a1;
  v7 = v15;
  v16 = v8;
  v9 = type metadata accessor for RangeSet.Ranges(0, *(a2 + 16), *(a2 + 24), a4);
  v8;
  v15;
  RangeSet.Ranges._union(_:)(&v15, v9, &v17);
  v8;
  v7;
  v10 = v17;
  v15 = v7;
  v16 = v8;
  RangeSet.Ranges._intersection(_:)(&v15, v9, &v17);
  v8;
  v7;
  v11 = v17;
  *a3 = v10;
  v17 = v11;
  RangeSet.subtract(_:)(&v17, a2, v12, v13);

  return v11;
}

uint64_t RangeSet.subtract(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = type metadata accessor for Range(0, v6, v7, a4);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v28 - v15;
  v17 = *a1;
  v18 = *(*a1 + 16);
  if (v18)
  {
    v28 = v4;
    v19 = v9 + 16;
    v30 = (v9 + 8);
    v31 = v9 + 32;
    v17;
    v20 = 0;
    do
    {
      if (v20 >= v18)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v21 = v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v20;
      v22 = *(v9 + 16);
      v29 = v19;
      v22(v16, v21, v8);
      (*(v9 + 32))(v13, v16, v8);
      if (((*(*(v7 + 8) + 8))(v13, &v13[*(v8 + 36)], v6) & 1) == 0)
      {
        v24 = type metadata accessor for RangeSet.Ranges(0, v6, v7, v23);
        RangeSet.Ranges._remove(contentsOf:)(v13, v24, v25, v26);
      }

      ++v20;
      (*v30)(v13, v8);
      v18 = *(v17 + 16);
      v19 = v29;
    }

    while (v20 != v18);
  }

  else
  {
    v17;
  }

  return v17;
}

void RangeSet.Ranges._union(_:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(a2 + 16);
  swift_getTupleTypeMetadata2(0, v7, v7, "lower upper ", 0);
  v123 = v8;
  v138 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v122 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v121 = &v108 - v13;
  v140 = *(a2 + 24);
  v15 = type metadata accessor for Range(0, v7, v140, v14);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v112 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v120 = &v108 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v141 = &v108 - v24;
  v25 = *(v7 - 1);
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v126 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v124 = &v108 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v136 = &v108 - v34;
  MEMORY[0x1EEE9AC00](v33, v35);
  v113 = &v108 - v37;
  v38 = *a1;
  v130 = *v3;
  v39 = v38;
  if (*(v38 + 16))
  {
    if (*(v130 + 16))
    {
      v108 = a3;
      v40 = v130;
      v145 = v38;
      v146 = v130;
      v111 = v36;
      v130;
      v39;
      _swift_isClassOrObjCExistentialType(v15, v15);
      v43 = v111;
      v44 = *(v111 + 80);
      v144 = &_swiftEmptyArrayStorage;
      if (*(v40 + 16))
      {
        v45 = 0;
        v46 = 0;
        v128 = (v44 + 32) & ~v44;
        v47 = (v25 + 16);
        v110 = v140 + 2;
        v139 = (v25 + 8);
        v109 = (v111 + 16);
        v132 = v140 + 4;
        v119 = v140 + 3;
        v118 = (v111 + 8);
        v117 = (v25 + 32);
        v116 = (v138 + 16);
        v115 = (v138 + 32);
        v125 = (v111 + 32);
        v135 = (v25 + 16);
        v114 = v15;
        while (v46 < *(v39 + 16))
        {
          v52 = *(v43 + 72);
          v53 = v46;
          v54 = *v47;
          v55 = v113;
          (*v47)(v113, v39 + v128 + v52 * v46, v7);
          if ((v45 & 0x8000000000000000) != 0)
          {
            goto LABEL_47;
          }

          v56 = v128;
          v57 = v130 + v128 + v52 * v45;
          v129 = v45;
          v58 = v136;
          v134 = v54;
          v54(v136, v57, v7);
          LODWORD(v137) = v140[2](v55, v58, v7);
          v59 = *v139;
          (*v139)(v58, v7);
          v138 = v59;
          (v59)(v55, v7);
          v60 = (v137 & 1) != 0 ? v129 : v53;
          v61 = (v137 & 1) != 0 ? v53 : v129;
          v62 = (v137 & 1) != 0 ? v39 : v130;
          v63 = (v137 & 1) != 0 ? v130 : v39;
          if (v61 >= *(v62 + 16))
          {
            goto LABEL_47;
          }

          (*v109)(v141, v62 + v56 + v61 * v52, v15);
          v129 = v61 + 1;
          v64 = *(v63 + 16);
          if (v60 < v64)
          {
            v133 = *(v15 + 36);
            v65 = v134;
            v127 = v52;
            while ((v60 & 0x8000000000000000) == 0 && v60 < v64)
            {
              v66 = v63 + v128 + v60 * v52;
              v67 = v136;
              v65(v136, v66, v7);
              v68 = v140[4];
              v69 = v68(&v141[v133], v67, v7);
              (v138)(v67, v7);
              if ((v69 & 1) == 0)
              {
                goto LABEL_5;
              }

              if (v60 >= *(v63 + 16))
              {
                break;
              }

              v131 = v62;
              v137 = v63;
              v70 = v15;
              v71 = *(v15 + 36);
              v72 = v136;
              v73 = v134;
              v134(v136, v66 + v71, v7);
              v74 = (v68)(&v141[v133], v72, v7, v140);
              (v138)(v72, v7);
              if (v74)
              {
                ++v60;
                v62 = v131;
                v130 = v131;
                v15 = v70;
                v63 = v137;
              }

              else
              {
                v75 = v124;
                v73(v124, v141, v7);
                if (v60 >= *(v137 + 16))
                {
                  break;
                }

                v76 = v126;
                v73(v126, v66 + v71, v7);
                if ((v140[3](v75, v76, v7) & 1) == 0)
                {
                  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
                }

                v77 = v141;
                (*v118)(v141, v70);
                v78 = *v117;
                v79 = v121;
                (*v117)(v121, v75, v7);
                v80 = v123;
                v78(&v79[*(v123 + 48)], v126, v7);
                v81 = v122;
                (*v116)(v122, v79, v80);
                v82 = *(v80 + 48);
                v83 = v120;
                v78(v120, v81, v7);
                v130 = v60;
                v84 = v138;
                (v138)(&v81[v82], v7);
                v85 = v79;
                v15 = v114;
                (*v115)(v81, v85, v80);
                v78(&v83[*(v15 + 36)], &v81[*(v80 + 48)], v7);
                v84(v81, v7);
                (*v125)(v77, v83, v15);
                v60 = v129;
                v129 = v130 + 1;
                v62 = v137;
                v63 = v131;
                v130 = v137;
              }

              v64 = *(v63 + 16);
              v52 = v127;
              v65 = v134;
              if (v60 >= v64)
              {
                goto LABEL_6;
              }
            }

LABEL_47:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

LABEL_5:
          v130 = v62;
LABEL_6:
          v39 = v63;
          v48 = v112;
          (*v125)(v112, v141, v15);
          v51 = type metadata accessor for Array(0, v15, v49, v50);
          Array.append(_:)(v48, v51);
          v47 = v135;
          v46 = v60;
          v45 = v129;
          v43 = v111;
          if (v129 >= *(v130 + 16))
          {
            goto LABEL_40;
          }
        }

        v145 = v39;
        v146 = v130;
        v60 = v45;
        v87 = type metadata accessor for ContiguousArray(0, v15, v41, v42);
        WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v87, v90);
      }

      else
      {
        v60 = 0;
LABEL_40:
        v145 = v39;
        v146 = v130;
        if (v60 >= *(v39 + 16))
        {
          goto LABEL_44;
        }

        v87 = type metadata accessor for ContiguousArray(0, v15, v41, v42);
        WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v87, v88);
      }

      specialized MutableCollection.subscript.getter(v60, v87, WitnessTable);
      v142[0] = v143[0];
      v142[1] = v143[1];
      v93 = type metadata accessor for Array(0, v15, v91, v92);
      v96 = type metadata accessor for ArraySlice(0, v15, v94, v95);
      v98 = swift_getWitnessTable(protocol conformance descriptor for ArraySlice<A>, v96, v97);
      Array.append<A>(contentsOf:)(v142, v93, v96, v98);
LABEL_44:
      v99 = v108;
      v100 = v144;
      v101 = v144;
      v102 = _ArrayBuffer.requestNativeBuffer()(v101, v15);
      v100;
      if (!v102)
      {
        *&v143[0] = v100;
        v105 = type metadata accessor for Array(0, v15, v103, v104);
        v107 = swift_getWitnessTable(protocol conformance descriptor for [A], v105, v106);
        v102 = _copyCollectionToContiguousArray<A>(_:)(v143, v105, v107);
      }

      v130;
      v39;
      v100;
      *v99 = v102;
      return;
    }

    *a3 = v38;
    v86 = v38;
  }

  else
  {
    v86 = v130;
    *a3 = v130;
  }

  v86;
}

void RangeSet.Ranges._intersection(_:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = *(a2 + 16);
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v115 = v9;
  v133 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v114 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v113 = &v95 - v15;
  v16 = *(v8 - 1);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v112 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v126 = &v95 - v21;
  v22 = *(a2 + 24);
  v24 = type metadata accessor for Range(0, v8, v22, v23);
  v25 = *(v24 - 8);
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v111 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v32 = &v95 - v31;
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v110 = &v95 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34, v36);
  v116 = &v95 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v97 = &v95 - v41;
  v42 = *a1;
  v43 = *v4;
  v135 = v40;
  _swift_isClassOrObjCExistentialType(v40, v40);
  v44 = v43;
  v45 = *(v25 + 80);
  v46 = &_swiftEmptyArrayStorage;
  v137 = &_swiftEmptyArrayStorage;
  v102 = *(v44 + 16);
  if (v102)
  {
    v96 = a3;
    v134 = 0;
    v47 = 0;
    v48 = (v45 + 32) & ~v45;
    v100 = v44 + v48;
    v122 = v25 + 16;
    v121 = v25 + 32;
    v127 = v22 + 24;
    v130 = v22 + 16;
    v129 = v22 + 40;
    v125 = (v16 + 16);
    v101 = v25;
    v120 = (v25 + 8);
    v109 = (v16 + 32);
    v108 = (v133 + 16);
    v107 = (v16 + 8);
    v106 = (v133 + 32);
    v98 = v42 + v48;
    v105 = v22;
    v104 = v32;
    v49 = v116;
    v50 = v97;
    v123 = v42;
    v99 = v44;
    while (1)
    {
      if (v47 >= *(v44 + 16))
      {
LABEL_41:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v51 = v101;
      v52 = *(v101 + 72);
      v103 = v47;
      v53 = v135;
      v119 = *(v101 + 16);
      v119(v50, v100 + v52 * v47, v135);
      v54 = *(v51 + 32);
      v55 = v123;
      v118 = v54;
      v54(v49, v50, v53);
      v56 = *(v55 + 16);
      v57 = v134;
      v132 = v52;
      v133 = v56;
      if (v134 >= v56)
      {
        goto LABEL_15;
      }

      v58 = v134;
      v59 = v98 + v134 * v52;
      do
      {
        if (v134 < 0 || v58 >= *(v55 + 16))
        {
          goto LABEL_41;
        }

        if (((*(v22 + 24))(v59 + *(v135 + 9), v49, v8, v22) & 1) == 0)
        {
          v57 = v58;
          v52 = v132;
LABEL_15:
          if (v57 >= v133)
          {
            goto LABEL_4;
          }

          v60 = v98 + v57 * v52;
          while (2)
          {
            if (v57 >= *(v55 + 16))
            {
              goto LABEL_41;
            }

            v61 = *(v22 + 16);
            v131 = *(v135 + 9);
            if ((v61(v60, &v49[v131], v8, v22) & 1) == 0)
            {
              goto LABEL_3;
            }

            if (v57 >= *(v55 + 16))
            {
              goto LABEL_41;
            }

            v134 = v57;
            v119(v32, v60, v135);
            v128 = *(v22 + 40);
            if (v128(v49, v32, v8, v22))
            {
              v62 = v32;
              v63 = *v125;
              (*v125)(v126, v49, v8);
              v64 = v131;
            }

            else
            {
              v65 = v131;
              v66 = v61(&v49[v131], v32, v8, v22);
              v63 = *v125;
              if (v66)
              {
                v62 = v32;
                v67 = &v49[v65];
                v68 = v126;
              }

              else
              {
                v68 = v126;
                v62 = v32;
                v67 = v32;
              }

              v63(v68, v67, v8);
              v64 = v65;
            }

            v69 = *(v135 + 9);
            v70 = v61(&v49[v64], &v62[v69], v8, v22);
            v124 = v60;
            if (v70)
            {
              v117 = *v120;
              v117(v62, v135);
              v71 = &v49[v64];
              v72 = v112;
              v73 = v112;
              goto LABEL_30;
            }

            if (v128(v49, &v62[v69], v8, v22))
            {
              v117 = *v120;
              v117(v62, v135);
              v72 = v112;
              v73 = v112;
              v71 = v49;
LABEL_30:
              v63(v73, v71, v8);
            }

            else
            {
              v72 = v112;
              v63(v112, &v62[v69], v8);
              v117 = *v120;
              v117(v62, v135);
            }

            v74 = *v109;
            v75 = v113;
            (*v109)(v113, v126, v8);
            v76 = v115;
            v74(&v75[*(v115 + 48)], v72, v8);
            v77 = v114;
            (*v108)(v114, v75, v76);
            v78 = *(v76 + 48);
            v79 = v110;
            v74(v110, v77, v8);
            v80 = *v107;
            (*v107)(&v77[v78], v8);
            (*v106)(v77, v75, v76);
            v81 = v135;
            v74(&v79[*(v135 + 9)], &v77[*(v76 + 48)], v8);
            v80(v77, v8);
            v82 = v111;
            v118(v111, v79, v81);
            v85 = type metadata accessor for Array(0, v81, v83, v84);
            Array.append(_:)(v82, v85);
            v55 = v123;
            v86 = v134;
            if (v134 >= *(v123 + 16))
            {
              goto LABEL_41;
            }

            v49 = v116;
            v87 = v124;
            v22 = v105;
            if ((v128(&v116[v131], (v124 + *(v135 + 9)), v8, v105) & 1) == 0)
            {
              v117(v49, v135);
              v32 = v104;
              v50 = v97;
              goto LABEL_5;
            }

            v57 = v86 + 1;
            v60 = v87 + v132;
            v32 = v104;
            if (v133 == v57)
            {
              v57 = v133;
LABEL_3:
              v50 = v97;
              goto LABEL_4;
            }

            continue;
          }
        }

        ++v58;
        v59 += v132;
      }

      while (v133 != v58);
      v57 = v133;
LABEL_4:
      v134 = v57;
      (*v120)(v49, v135);
LABEL_5:
      v47 = v103 + 1;
      v44 = v99;
      if (v103 + 1 == v102)
      {
        v46 = v137;
        a3 = v96;
        break;
      }
    }
  }

  v88 = v46;
  v89 = _ArrayBuffer.requestNativeBuffer()(v88, v135);
  v46;
  if (!v89)
  {
    v136 = v46;
    v92 = type metadata accessor for Array(0, v135, v90, v91);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v92, v93);
    v89 = _copyCollectionToContiguousArray<A>(_:)(&v136, v92, WitnessTable);
  }

  v46;
  *a3 = v89;
}

uint64_t RangeSet.subtracting(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v6 = *a1;
  *a3 = *v5;
  v8 = v6;
  return RangeSet.subtract(_:)(&v8, a2, a4, a5);
}

uint64_t RangeSet.isSubset(of:)(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v67 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v10 = type metadata accessor for Range(0, v4, v8, v9);
  v71 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v66 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v57 - v16;
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v57 - v19;
  v21 = *v2;
  v64 = *a1;
  *&v76 = v64;
  v23 = type metadata accessor for RangeSet.Ranges(0, v4, v8, v22);
  v21;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, v23, v24);
  Collection.subscript.getter(v23, WitnessTable, &v80);
  v78 = v21;
  v79 = 0;
  v68 = *(v21 + 16);
  if (v68)
  {
    v27 = v5;
    v28 = 0;
    v72 = 0;
    v65 = (v71 + 4);
    v63 = (v27 + 16);
    ++v71;
    v62 = v8 + 16;
    v61 = (v27 + 8);
    v60 = v21;
    v59 = v23;
    v58 = WitnessTable;
    while (1)
    {
      RangeSet.Ranges.subscript.getter(v28, v23, v20, v26);
      v73 = v28;
      *&v76 = 0;
      *(&v76 + 1) = v68;
      specialized Collection._failEarlyRangeCheck(_:bounds:)(&v73, &v76, v23, WitnessTable);
      if (__OFADD__(v28, 1))
      {
        __break(1u);
LABEL_15:
        LODWORD(v56) = 0;
        v55 = 760;
        LOBYTE(v54) = 2;
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v69 = v28 + 1;
      v70 = v28;
      v79 = v28 + 1;
      v29 = (*v65)(v17, v20, v10);
      v30 = v81;
      v76 = v80;
      v77 = v81;
      MEMORY[0x1EEE9AC00](v29, v31);
      v54 = v4;
      v55 = v8;
      v56 = v17;
      v33 = v8;
      v34 = type metadata accessor for Slice(0, v23, WitnessTable, v32);
      v30;
      v36 = swift_getWitnessTable(protocol conformance descriptor for Slice<A>, v34, v35);
      v37 = v72;
      Collection.firstIndex(where:)(partial apply for closure #1 in RangeSet.isSubset(of:), (&v57 - 6), v34, v36, &v73);
      v77;
      if (v74)
      {
        v81;
        v78;
        (*v71)(v17, v10);
        return 0;
      }

      v72 = v37;
      v38 = v20;
      v39 = v73;
      v40 = v81;
      v76 = v80;
      v77 = v81;
      v41 = v66;
      Slice.subscript.getter(&v73, v34, v66);
      v40;
      v42 = v67;
      (*v63)(v67, v41 + *(v10 + 36), v4);
      v43 = *v71;
      (*v71)(v41, v10);
      v44 = v4;
      v45 = v10;
      v46 = &v17[*(v10 + 36)];
      v47 = v33;
      v48 = (*(v33 + 16))(v42, v46, v44, v33);
      (*v61)(v42, v44);
      if (v48)
      {
        break;
      }

      v75 = v64;
      v49 = *(v64 + 16);
      if (v49 < v39)
      {
        goto LABEL_15;
      }

      v73 = v39;
      v74 = v49;
      v50 = v59;
      v51 = v58;
      Collection<>.subscript.getter(&v73, v59, v58, &v76);
      v80 = v76;
      v81 = v77;
      v43(v17, v45);
      WitnessTable = v51;
      v8 = v47;
      v10 = v45;
      v4 = v44;
      v20 = v38;
      v23 = v50;
      v28 = v70 + 1;
      if (v69 == *(v60 + 16))
      {
        v21 = v78;
        goto LABEL_9;
      }
    }

    v78;
    v43(v17, v45);
    return 0;
  }

  else
  {
LABEL_9:
    v52 = v81;
    v21;
    v52;
    return 1;
  }
}

uint64_t RangeSet.isSuperset(of:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v5[0] = *v2;
  v5[1] = v3;
  return RangeSet.isSubset(of:)(v5, a2) & 1;
}

uint64_t RangeSet.isStrictSubset(of:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *v2;
  v8 = *a1;
  v9 = v5;
  if (static RangeSet.== infix(_:_:)(&v9, &v8, *(a2 + 16), *(a2 + 24)))
  {
    v6 = 0;
  }

  else
  {
    v8 = v4;
    v9 = v5;
    v6 = RangeSet.isSubset(of:)(&v8, a2);
  }

  return v6 & 1;
}

uint64_t RangeSet.isStrictSuperset(of:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *v2;
  v8 = v5;
  v9 = v4;
  if (static RangeSet.== infix(_:_:)(&v9, &v8, *(a2 + 16), *(a2 + 24)))
  {
    v6 = 0;
  }

  else
  {
    v8 = v5;
    v9 = v4;
    v6 = RangeSet.isSubset(of:)(&v8, a2);
  }

  return v6 & 1;
}

BOOL RangeSet.isDisjoint(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v10[0] = *a1;
  v5 = v10[0];
  v10[1] = v6;
  v7 = type metadata accessor for RangeSet.Ranges(0, *(a2 + 16), *(a2 + 24), a4);
  v10[0];
  v6;
  RangeSet.Ranges._intersection(_:)(v10, v7, &v11);
  v6;
  v5;
  v8 = *(v11 + 16);
  v11;
  return v8 == 0;
}

uint64_t RangeSet.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = type metadata accessor for Range(0, v6, v5, a4);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v100 - v14;
  v16 = *v4;
  0xE000000000000000;
  v112 = 91;
  v113 = 0xE100000000000000;
  v17 = *(v16 + 16);
  if (v17)
  {
    v107 = v8 + 16;
    v108 = v8 + 32;
    v16;
    v18 = 0;
    v19 = 1;
    v106 = xmmword_18071DB30;
    v104 = xmmword_18071DB40;
    while (1)
    {
      if (v18 >= v17)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      (*(v8 + 16))(v15, v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v18, v7);
      *(&v110 + 1) = v17;
      v111 = v18;
      *&v110 = 0;
      v21 = type metadata accessor for RangeSet.Ranges(0, v6, v5, v20);
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, v21, v22);
      specialized Collection._failEarlyRangeCheck(_:bounds:)(&v111, &v110, v21, WitnessTable);
      v105 = *(v8 + 32);
      v105(v12, v15, v7);
      if (v19)
      {
        goto LABEL_50;
      }

      v103 = v5;
      v101 = v6;
      v24 = v112;
      v25 = v113;
      v26 = HIBYTE(v113) & 0xF;
      v27 = v112 & 0xFFFFFFFFFFFFLL;
      v28 = (v113 & 0x2000000000000000) != 0 ? HIBYTE(v113) & 0xF : v112 & 0xFFFFFFFFFFFFLL;
      if (!v28 && (v112 & ~v113 & 0x2000000000000000) == 0)
      {
        break;
      }

      if ((v113 & 0x2000000000000000) != 0 && v26 <= 0xD)
      {
        v29 = 8 * (HIBYTE(v113) & 7);
        v30 = (-255 << v29) - 1;
        v31 = 44 << v29;
        v32 = v26 + 1;
        if (v26 >= 8)
        {
          v34 = v30 & v113 | v31;
          v33 = 8 * (v32 & 7);
          v6 = v101;
LABEL_31:
          v102 = v24;
          v42 = ((-255 << v33) - 1) & v34 | (32 << v33);
        }

        else
        {
          v24 = v30 & v112 | v31;
          v6 = v101;
          if (v26 == 7)
          {
            v33 = 0;
            v34 = v113;
            goto LABEL_31;
          }

          v102 = ((-255 << (8 * (v32 & 7u))) - 1) & v24 | (32 << (8 * (v32 & 7u)));
          v42 = v113;
        }

        v113;
        0xE200000000000000;
        v56 = 0xE000000000000000;
        if (v102 & 0x8080808080808080 | v42 & 0x80808080808080)
        {
          v56 = 0xA000000000000000;
        }

        v112 = v102;
        v113 = (v56 & 0xFF00000000000000 | (v26 << 56) | v42 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
LABEL_49:
        v5 = v103;
        goto LABEL_50;
      }

      v102 = v112;
      0xE200000000000000;
      if ((v25 & 0x1000000000000000) != 0)
      {
        v28 = String.UTF8View._foreignCount()();
      }

      v36 = __OFADD__(v28, 2);
      v37 = v28 + 2;
      v5 = v103;
      if (v36)
      {
        goto LABEL_125;
      }

      if ((v102 & ~v25 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v25 & 0xFFFFFFFFFFFFFFFLL))
      {
        v38 = _StringGuts.nativeUnusedCapacity.getter(v102, v25);
        if (v39)
        {
          goto LABEL_132;
        }

        if (v37 <= 15)
        {
          if ((v25 & 0x2000000000000000) != 0)
          {
            goto LABEL_33;
          }

          if (v38 < 2)
          {
            goto LABEL_24;
          }
        }
      }

      else if (v37 <= 15)
      {
        if ((v25 & 0x2000000000000000) != 0)
        {
LABEL_33:
          v41 = v25;
        }

        else
        {
LABEL_24:
          if ((v25 & 0x1000000000000000) != 0)
          {
            v102 = _StringGuts._foreignConvertedToSmall()(v102, v25);
            v41 = v60;
          }

          else
          {
            if ((v102 & 0x1000000000000000) != 0)
            {
              v40 = ((v25 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v40 = _StringObject.sharedUTF8.getter(v102, v25);
              v27 = v63;
            }

            closure #1 in _StringGuts._convertedToSmall()(v40, v27, &v110, v35);
            v41 = *(&v110 + 1);
            v102 = v110;
          }
        }

        v43 = 0xE200000000000000;
        0xE200000000000000;
        v44._rawBits = 131073;
        v45._rawBits = 1;
        v46._rawBits = _StringGuts.validateScalarRange(_:)(v45, v44, 0x202CuLL, 0xE200000000000000)._rawBits;
        if (v46._rawBits < 0x10000)
        {
          v46._rawBits |= 3;
        }

        if (v46._rawBits >> 16 || (v49 = 8236, (v47._rawBits & 0xFFFFFFFFFFFF0000) != 0x20000))
        {
          v49 = specialized static String._copying(_:)(v46._rawBits, v47, 0x202CuLL, 0xE200000000000000);
          v43 = v50;
          0xE200000000000000;
        }

        if ((v43 & 0x2000000000000000) != 0)
        {
          v43;
        }

        else if ((v43 & 0x1000000000000000) != 0)
        {
          v100 = _StringGuts._foreignConvertedToSmall()(v49, v43);
          v65 = v64;
          v43;
          v43 = v65;
          v49 = v100;
        }

        else
        {
          if ((v49 & 0x1000000000000000) != 0)
          {
            v61 = ((v43 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v62 = v49 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v61 = _StringObject.sharedUTF8.getter(v49, v43);
          }

          closure #1 in _StringGuts._convertedToSmall()(v61, v62, &v110, v48);
          v43;
          v43 = *(&v110 + 1);
          v49 = v110;
        }

        v51 = specialized _SmallString.init(_:appending:)(v102, v41, v49, v43);
        if (v53)
        {
          goto LABEL_132;
        }

        v54 = v51;
        v55 = v52;
        v25;
        swift_bridgeObjectRelease_n(0xE200000000000000, 2);
        v112 = v54;
        v113 = v55;
        goto LABEL_44;
      }

      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v37, 2);
      v110 = v104;
      closure #1 in _StringGuts.append(_:)(&v110, 2uLL, &v112, 1);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
      v6 = v101;
LABEL_50:
      ++v18;
      v57 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>(0);
      inited = swift_initStackObject(v57, v109);
      *(inited + 1) = v106;
      inited[7] = v7;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(inited + 4);
      v105(boxed_opaque_existential_0Tm, v12, v7);
      specialized _debugPrint<A>(_:separator:terminator:to:)(inited, 0x20uLL, 0xE100000000000000, 0, 0xE000000000000000, &v112);
      0xE000000000000000;
      0xE100000000000000;
      swift_setDeallocating(inited);
      __swift_destroy_boxed_opaque_existential_1Tm(inited + 4);
      v19 = 0;
      v17 = *(v16 + 16);
      if (v18 == v17)
      {
        v37 = v112;
        v25 = v113;
        goto LABEL_62;
      }
    }

    v113;
    v112 = 8236;
    v113 = 0xE200000000000000;
LABEL_44:
    v6 = v101;
    goto LABEL_49;
  }

  v16;
  v25 = 0xE100000000000000;
  v37 = 91;
LABEL_62:
  v16;
  v16 = HIBYTE(v25) & 0xF;
  v7 = v37 & 0xFFFFFFFFFFFFLL;
  if ((v25 & 0x2000000000000000) != 0)
  {
    v66 = HIBYTE(v25) & 0xF;
  }

  else
  {
    v66 = v37 & 0xFFFFFFFFFFFFLL;
  }

  if (!v66 && (v37 & ~v25 & 0x2000000000000000) == 0)
  {
    v25;
    return 93;
  }

  if ((v25 & 0x2000000000000000) == 0 || v16 == 15)
  {
    0xE100000000000000;
    if ((v25 & 0x1000000000000000) != 0)
    {
      v93 = String.UTF8View._foreignCount()();
      v18 = v93 + 1;
      if (!__OFADD__(v93, 1))
      {
        goto LABEL_74;
      }
    }

    else
    {
      v36 = __OFADD__(v66, 1);
      v18 = v66 + 1;
      if (!v36)
      {
LABEL_74:
        v67 = v37 & ~v25;
        if ((v67 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v25 & 0xFFFFFFFFFFFFFFFLL))
        {
          v68 = _StringGuts.nativeUnusedCapacity.getter(v37, v25);
          if (v69)
          {
            goto LABEL_132;
          }

          if (v18 > 15)
          {
            goto LABEL_85;
          }

          if ((v25 & 0x2000000000000000) == 0)
          {
            if (v68 < 1)
            {
LABEL_80:
              if ((v25 & 0x1000000000000000) == 0)
              {
                if ((v37 & 0x1000000000000000) != 0)
                {
                  v70 = ((v25 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_83:
                  closure #1 in _StringGuts._convertedToSmall()(v70, v7, &v110, v35);
                  v18 = *(&v110 + 1);
                  v37 = v110;
                  goto LABEL_102;
                }

LABEL_131:
                v70 = _StringObject.sharedUTF8.getter(v37, v25);
                v7 = v97;
                goto LABEL_83;
              }

              v37 = _StringGuts._foreignConvertedToSmall()(v37, v25);
              v18 = v92;
LABEL_102:
              v7 = 0xE100000000000000;
              0xE100000000000000;
              v16 = 93;
              v78._rawBits = 1;
              v79._rawBits = 65537;
              v80._rawBits = _StringGuts.validateScalarRange(_:)(v78, v79, 0x5DuLL, 0xE100000000000000)._rawBits;
              if (v80._rawBits < 0x10000)
              {
                v80._rawBits |= 3;
              }

              if (v80._rawBits >> 16 || (v81._rawBits & 0xFFFFFFFFFFFF0000) != 0x10000)
              {
                v16 = specialized static String._copying(_:)(v80._rawBits, v81, 0x5DuLL, 0xE100000000000000);
                v7 = v82;
                0xE100000000000000;
              }

              if ((v7 & 0x2000000000000000) != 0)
              {
                v7;
                goto LABEL_109;
              }

LABEL_126:
              v94 = v25;
              if ((v7 & 0x1000000000000000) != 0)
              {
                v16 = _StringGuts._foreignConvertedToSmall()(v16, v7);
                v99 = v98;
                v7;
                v7 = v99;
                v25 = v94;
              }

              else
              {
                if ((v16 & 0x1000000000000000) != 0)
                {
                  v95 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
                  v96 = v16 & 0xFFFFFFFFFFFFLL;
                }

                else
                {
                  v95 = _StringObject.sharedUTF8.getter(v16, v7);
                }

                closure #1 in _StringGuts._convertedToSmall()(v95, v96, &v110, v35);
                v7;
                v7 = *(&v110 + 1);
                v16 = v110;
              }

LABEL_109:
              v83 = HIBYTE(v18) & 0xF;
              v84 = HIBYTE(v7) & 0xF;
              if (v84 + v83 <= 0xF)
              {
                0xE100000000000000;
                if (v84)
                {
                  v85 = 0;
                  v86 = 0;
                  v87 = 8 * v83;
                  do
                  {
                    v88 = v7 >> (v85 & 0x38);
                    if (v86 < 8)
                    {
                      v88 = v16 >> v85;
                    }

                    v89 = (v88 << (v87 & 0x38)) | ((-255 << (v87 & 0x38)) - 1) & v18;
                    v90 = (v88 << v87) | ((-255 << v87) - 1) & v37;
                    if (v83 <= 7)
                    {
                      v37 = v90;
                    }

                    else
                    {
                      v18 = v89;
                    }

                    ++v83;
                    v87 += 8;
                    v85 += 8;
                    ++v86;
                  }

                  while (8 * v84 != v85);
                }

                goto LABEL_71;
              }

LABEL_132:
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

LABEL_85:
            v71 = v67 & 0x2000000000000000;
            v72 = _StringGuts.nativeUnusedCapacity.getter(v37, v25);
            if ((v73 & 1) != 0 || v72 <= 0)
            {
              if (v71)
              {
                swift_isUniquelyReferenced_nonNull_native(v25 & 0xFFFFFFFFFFFFFFFLL);
              }

              v74 = _StringGuts.nativeCapacity.getter(v37, v25);
              if (v75)
              {
                v76 = 0;
              }

              else
              {
                v76 = v74;
              }

              if (v76 + 0x4000000000000000 < 0)
              {
                __break(1u);
                goto LABEL_131;
              }

              v77 = 2 * v76;
              if (v77 > v18)
              {
                v18 = v77;
              }
            }

            else if (v71 && swift_isUniquelyReferenced_nonNull_native(v25 & 0xFFFFFFFFFFFFFFFLL))
            {
              goto LABEL_99;
            }

            _StringGuts.grow(_:)(v18);
LABEL_99:
            v110 = xmmword_18071DB50;
            closure #1 in _StringGuts.append(_:)(&v110, 1uLL, &v112, 1);
            swift_bridgeObjectRelease_n(0xE100000000000000, 2);
            return v112;
          }
        }

        else
        {
          if (v18 > 15)
          {
            goto LABEL_85;
          }

          if ((v25 & 0x2000000000000000) == 0)
          {
            goto LABEL_80;
          }
        }

        v18 = v25;
        goto LABEL_102;
      }
    }

    __break(1u);
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if (v16 < 8)
  {
    v37 = ((-255 << (8 * (HIBYTE(v25) & 7u))) - 1) & v37 | (93 << (8 * (HIBYTE(v25) & 7u)));
  }

LABEL_71:
  v25;
  0xE100000000000000;
  return v37;
}

uint64_t RangeSet.Ranges.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v6 = type metadata accessor for Range(0, *(a1 + 16), *(a1 + 24), a4);
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v100 - v13;
  v15 = *v4;
  0xE000000000000000;
  v112 = 91;
  v113 = 0xE100000000000000;
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v7 + 16;
    v108 = v7 + 32;
    v15;
    v18 = 0;
    v19 = 1;
    v107 = xmmword_18071DB30;
    v106 = xmmword_18071DB40;
    while (1)
    {
      if (v18 >= v16)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      (*(v7 + 16))(v14, v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18, v6);
      *(&v110 + 1) = v16;
      v111 = v18;
      *&v110 = 0;
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, v5, v20);
      specialized Collection._failEarlyRangeCheck(_:bounds:)(&v111, &v110, v5, WitnessTable);
      v22 = *(v7 + 32);
      v22(v11, v14, v6);
      if (v19)
      {
        goto LABEL_51;
      }

      v105 = v22;
      v103 = v17;
      v104 = v11;
      v23 = v112;
      v24 = v113;
      v25 = HIBYTE(v113) & 0xF;
      v26 = v112 & 0xFFFFFFFFFFFFLL;
      if ((v113 & 0x2000000000000000) != 0)
      {
        v27 = HIBYTE(v113) & 0xF;
      }

      else
      {
        v27 = v112 & 0xFFFFFFFFFFFFLL;
      }

      if (!v27 && (v112 & ~v113 & 0x2000000000000000) == 0)
      {
        v113;
        v112 = 8236;
        v56 = 0xE200000000000000;
        goto LABEL_48;
      }

      if ((v113 & 0x2000000000000000) != 0 && v25 <= 0xD)
      {
        break;
      }

      v102 = v112;
      0xE200000000000000;
      if ((v24 & 0x1000000000000000) != 0)
      {
        v27 = String.UTF8View._foreignCount()();
      }

      v35 = __OFADD__(v27, 2);
      v36 = v27 + 2;
      v22 = v105;
      if (v35)
      {
        goto LABEL_126;
      }

      if ((v102 & ~v24 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v24 & 0xFFFFFFFFFFFFFFFLL))
      {
        v37 = _StringGuts.nativeUnusedCapacity.getter(v102, v24);
        if (v38)
        {
          goto LABEL_133;
        }

        if (v36 <= 15)
        {
          if ((v24 & 0x2000000000000000) != 0)
          {
            goto LABEL_33;
          }

          if (v37 < 2)
          {
            goto LABEL_24;
          }
        }
      }

      else if (v36 <= 15)
      {
        if ((v24 & 0x2000000000000000) != 0)
        {
LABEL_33:
          v40 = v24;
        }

        else
        {
LABEL_24:
          if ((v24 & 0x1000000000000000) != 0)
          {
            v102 = _StringGuts._foreignConvertedToSmall()(v102, v24);
            v40 = v61;
          }

          else
          {
            if ((v102 & 0x1000000000000000) != 0)
            {
              v39 = ((v24 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v39 = _StringObject.sharedUTF8.getter(v102, v24);
              v26 = v64;
            }

            closure #1 in _StringGuts._convertedToSmall()(v39, v26, &v110, v34);
            v40 = *(&v110 + 1);
            v102 = v110;
          }
        }

        v43 = 0xE200000000000000;
        0xE200000000000000;
        v44._rawBits = 131073;
        v45._rawBits = 1;
        v46._rawBits = _StringGuts.validateScalarRange(_:)(v45, v44, 0x202CuLL, 0xE200000000000000)._rawBits;
        if (v46._rawBits < 0x10000)
        {
          v46._rawBits |= 3;
        }

        if (v46._rawBits >> 16 || (v49 = 8236, (v47._rawBits & 0xFFFFFFFFFFFF0000) != 0x20000))
        {
          v49 = specialized static String._copying(_:)(v46._rawBits, v47, 0x202CuLL, 0xE200000000000000);
          v43 = v50;
          0xE200000000000000;
        }

        if ((v43 & 0x2000000000000000) != 0)
        {
          v43;
        }

        else if ((v43 & 0x1000000000000000) != 0)
        {
          v49 = _StringGuts._foreignConvertedToSmall()(v49, v43);
          v101 = v65;
          v43;
          v43 = v101;
        }

        else
        {
          if ((v49 & 0x1000000000000000) != 0)
          {
            v62 = ((v43 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v63 = v49 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v62 = _StringObject.sharedUTF8.getter(v49, v43);
          }

          closure #1 in _StringGuts._convertedToSmall()(v62, v63, &v110, v48);
          v43;
          v43 = *(&v110 + 1);
          v49 = v110;
        }

        v51 = specialized _SmallString.init(_:appending:)(v102, v40, v49, v43);
        if (v53)
        {
          goto LABEL_133;
        }

        v54 = v51;
        v55 = v52;
        v24;
        swift_bridgeObjectRelease_n(0xE200000000000000, 2);
        v112 = v54;
        v113 = v55;
        goto LABEL_49;
      }

      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v36, 2);
      v110 = v106;
      closure #1 in _StringGuts.append(_:)(&v110, 2uLL, &v112, 1);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
      v11 = v104;
LABEL_50:
      v17 = v103;
LABEL_51:
      ++v18;
      v58 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>(0);
      inited = swift_initStackObject(v58, v109);
      *(inited + 1) = v107;
      inited[7] = v6;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(inited + 4);
      v22(boxed_opaque_existential_0Tm, v11, v6);
      specialized _debugPrint<A>(_:separator:terminator:to:)(inited, 0x20uLL, 0xE100000000000000, 0, 0xE000000000000000, &v112);
      0xE000000000000000;
      0xE100000000000000;
      swift_setDeallocating(inited);
      __swift_destroy_boxed_opaque_existential_1Tm(inited + 4);
      v19 = 0;
      v16 = *(v15 + 16);
      if (v18 == v16)
      {
        v5 = v112;
        v24 = v113;
        goto LABEL_63;
      }
    }

    v28 = 8 * (HIBYTE(v113) & 7);
    v29 = (-255 << v28) - 1;
    v30 = 44 << v28;
    v31 = v25 + 1;
    if (v25 >= 8)
    {
      v33 = v29 & v113 | v30;
      v32 = 8 * (v31 & 7);
LABEL_31:
      v41 = v23;
      v42 = ((-255 << v32) - 1) & v33 | (32 << v32);
    }

    else
    {
      v23 = v29 & v112 | v30;
      if (v25 == 7)
      {
        v32 = 0;
        v33 = v113;
        goto LABEL_31;
      }

      v41 = ((-255 << (8 * (v31 & 7u))) - 1) & v23 | (32 << (8 * (v31 & 7u)));
      v42 = v113;
    }

    v113;
    0xE200000000000000;
    v57 = 0xA000000000000000;
    if (!(v41 & 0x8080808080808080 | v42 & 0x80808080808080))
    {
      v57 = 0xE000000000000000;
    }

    v56 = (v57 & 0xFF00000000000000 | (v25 << 56) | v42 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
    v112 = v41;
LABEL_48:
    v113 = v56;
LABEL_49:
    v11 = v104;
    v22 = v105;
    goto LABEL_50;
  }

  v15;
  v24 = 0xE100000000000000;
  v5 = 91;
LABEL_63:
  v15;
  v7 = HIBYTE(v24) & 0xF;
  v15 = v5 & 0xFFFFFFFFFFFFLL;
  if ((v24 & 0x2000000000000000) != 0)
  {
    v66 = HIBYTE(v24) & 0xF;
  }

  else
  {
    v66 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v66 && (v5 & ~v24 & 0x2000000000000000) == 0)
  {
    v24;
    return 93;
  }

  if ((v24 & 0x2000000000000000) == 0 || v7 == 15)
  {
    0xE100000000000000;
    if ((v24 & 0x1000000000000000) != 0)
    {
      v93 = String.UTF8View._foreignCount()();
      v6 = v93 + 1;
      if (!__OFADD__(v93, 1))
      {
        goto LABEL_75;
      }
    }

    else
    {
      v35 = __OFADD__(v66, 1);
      v6 = v66 + 1;
      if (!v35)
      {
LABEL_75:
        v67 = v5 & ~v24;
        if ((v67 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v24 & 0xFFFFFFFFFFFFFFFLL))
        {
          v68 = _StringGuts.nativeUnusedCapacity.getter(v5, v24);
          if (v69)
          {
            goto LABEL_133;
          }

          if (v6 > 15)
          {
            goto LABEL_86;
          }

          if ((v24 & 0x2000000000000000) == 0)
          {
            if (v68 < 1)
            {
LABEL_81:
              if ((v24 & 0x1000000000000000) == 0)
              {
                if ((v5 & 0x1000000000000000) != 0)
                {
                  v70 = ((v24 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_84:
                  closure #1 in _StringGuts._convertedToSmall()(v70, v15, &v110, v34);
                  v6 = *(&v110 + 1);
                  v5 = v110;
                  goto LABEL_103;
                }

LABEL_132:
                v70 = _StringObject.sharedUTF8.getter(v5, v24);
                v15 = v97;
                goto LABEL_84;
              }

              v5 = _StringGuts._foreignConvertedToSmall()(v5, v24);
              v6 = v92;
LABEL_103:
              v15 = 0xE100000000000000;
              0xE100000000000000;
              v7 = 93;
              v78._rawBits = 1;
              v79._rawBits = 65537;
              v80._rawBits = _StringGuts.validateScalarRange(_:)(v78, v79, 0x5DuLL, 0xE100000000000000)._rawBits;
              if (v80._rawBits < 0x10000)
              {
                v80._rawBits |= 3;
              }

              if (v80._rawBits >> 16 || (v81._rawBits & 0xFFFFFFFFFFFF0000) != 0x10000)
              {
                v7 = specialized static String._copying(_:)(v80._rawBits, v81, 0x5DuLL, 0xE100000000000000);
                v15 = v82;
                0xE100000000000000;
              }

              if ((v15 & 0x2000000000000000) != 0)
              {
                v15;
                goto LABEL_110;
              }

LABEL_127:
              v94 = v24;
              if ((v15 & 0x1000000000000000) != 0)
              {
                v7 = _StringGuts._foreignConvertedToSmall()(v7, v15);
                v99 = v98;
                v15;
                v15 = v99;
                v24 = v94;
              }

              else
              {
                if ((v7 & 0x1000000000000000) != 0)
                {
                  v95 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
                  v96 = v7 & 0xFFFFFFFFFFFFLL;
                }

                else
                {
                  v95 = _StringObject.sharedUTF8.getter(v7, v15);
                }

                closure #1 in _StringGuts._convertedToSmall()(v95, v96, &v110, v34);
                v15;
                v15 = *(&v110 + 1);
                v7 = v110;
              }

LABEL_110:
              v83 = HIBYTE(v6) & 0xF;
              v84 = HIBYTE(v15) & 0xF;
              if (v84 + v83 <= 0xF)
              {
                0xE100000000000000;
                if (v84)
                {
                  v85 = 0;
                  v86 = 0;
                  v87 = 8 * v83;
                  do
                  {
                    v88 = v15 >> (v85 & 0x38);
                    if (v86 < 8)
                    {
                      v88 = v7 >> v85;
                    }

                    v89 = (v88 << (v87 & 0x38)) | ((-255 << (v87 & 0x38)) - 1) & v6;
                    v90 = (v88 << v87) | ((-255 << v87) - 1) & v5;
                    if (v83 <= 7)
                    {
                      v5 = v90;
                    }

                    else
                    {
                      v6 = v89;
                    }

                    ++v83;
                    v87 += 8;
                    v85 += 8;
                    ++v86;
                  }

                  while (8 * v84 != v85);
                }

                goto LABEL_72;
              }

LABEL_133:
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

LABEL_86:
            v71 = v67 & 0x2000000000000000;
            v72 = _StringGuts.nativeUnusedCapacity.getter(v5, v24);
            if ((v73 & 1) != 0 || v72 <= 0)
            {
              if (v71)
              {
                swift_isUniquelyReferenced_nonNull_native(v24 & 0xFFFFFFFFFFFFFFFLL);
              }

              v74 = _StringGuts.nativeCapacity.getter(v5, v24);
              if (v75)
              {
                v76 = 0;
              }

              else
              {
                v76 = v74;
              }

              if (v76 + 0x4000000000000000 < 0)
              {
                __break(1u);
                goto LABEL_132;
              }

              v77 = 2 * v76;
              if (v77 > v6)
              {
                v6 = v77;
              }
            }

            else if (v71 && swift_isUniquelyReferenced_nonNull_native(v24 & 0xFFFFFFFFFFFFFFFLL))
            {
              goto LABEL_100;
            }

            _StringGuts.grow(_:)(v6);
LABEL_100:
            v110 = xmmword_18071DB50;
            closure #1 in _StringGuts.append(_:)(&v110, 1uLL, &v112, 1);
            swift_bridgeObjectRelease_n(0xE100000000000000, 2);
            return v112;
          }
        }

        else
        {
          if (v6 > 15)
          {
            goto LABEL_86;
          }

          if ((v24 & 0x2000000000000000) == 0)
          {
            goto LABEL_81;
          }
        }

        v6 = v24;
        goto LABEL_103;
      }
    }

    __break(1u);
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  if (v7 < 8)
  {
    v5 = ((-255 << (8 * (HIBYTE(v24) & 7u))) - 1) & v5 | (93 << (8 * (HIBYTE(v24) & 7u)));
  }

LABEL_72:
  v24;
  0xE100000000000000;
  return v5;
}

void *MutableCollection<>.sort(by:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v132 = a5;
  v134 = a2;
  v8 = *(a4 + 8);
  v130 = *(v8 + 8);
  swift_getAssociatedTypeWitness(0, v130, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v128 = v9;
  v124 = *(v9 - 1);
  v113 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  v115 = &v104 - v11;
  swift_getAssociatedTypeWitness(255, v8, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v13 = v12;
  v117 = type metadata accessor for Optional(0, v12, v14, v15);
  v116 = *(v117 - 8);
  v17 = MEMORY[0x1EEE9AC00](v117, v16);
  v125 = &v104 - v18;
  v127 = *(v13 - 1);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v119 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v123 = &v104 - v23;
  v126 = v13;
  swift_getTupleTypeMetadata2(0, v13, &type metadata for Int, 0, 0);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v114 = &v104 - v26;
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Indices);
  v28 = v27;
  v122 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v121 = &v104 - v30;
  v131 = v8;
  v31 = *(swift_getAssociatedConformanceWitness(v8, a3, v28, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Indices: Collection) + 8);
  v33 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>, protocol conformance descriptor for <> Range<A>, v32);
  v142 = v28;
  v143 = word_1EEEBBF38;
  v144 = v31;
  v145 = v33;
  v120 = type metadata accessor for Zip2Sequence(0, &v142);
  MEMORY[0x1EEE9AC00](v120, v34);
  v36 = (&v104 - v35);
  v142 = v28;
  v143 = word_1EEEBBF38;
  v37 = v31;
  v144 = v31;
  v145 = v33;
  v38 = type metadata accessor for Zip2Sequence.Iterator(0, &v142);
  v118 = *(v38 - 8);
  v40 = MEMORY[0x1EEE9AC00](v38, v39);
  v42 = &v104 - v41;
  v129 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v40, v43);
  v45 = &v104 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = a3;
  v138 = a4;
  v46 = v133;
  v139 = v132;
  v140 = a1;
  v132 = a1;
  v141 = v134;
  result = (*(a4 + 80))(&v142, partial apply for closure #1 in MutableCollection<>.sort(by:), v136, &unk_1EEEAC658, a3, a4);
  if (!v46)
  {
    v107 = v36;
    v108 = v37;
    v48 = v130;
    v109 = v28;
    v49 = v131;
    v112 = v42;
    v110 = v38;
    v133 = a3;
    v111 = a4;
    if (v142 == 1)
    {
      v50 = v133;
      (v129[2])(v45, v135, v133);
      v142 = (v48[7])(v50, v48);
      v51 = v128;
      v54 = type metadata accessor for ContiguousArray(0, v128, v52, v53);
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v54, v55);
      v58 = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v54, v57);
      MutableCollection<>.sort(by:)(v132, v134, v54, WitnessTable, v58);
      v59 = v142;
      v134 = 0;
      v60 = v107;
      (*(v49 + 96))(v50, v49);
      v132 = v59;
      v146 = v59;
      v63 = type metadata accessor for Array(0, v51, v61, v62);
      v65 = swift_getWitnessTable(protocol conformance descriptor for [A], v63, v64);
      RandomAccessCollection<>.indices.getter(v63, v65, &protocol witness table for Int, &v142);
      v67 = v142;
      v66 = v143;
      v68 = (v60 + *(v120 + 52));
      *v68 = v142;
      v68[1] = v66;
      v69 = v60;
      v70 = v109;
      (v122[4])(v121, v69, v109);
      v71 = v108;
      v72 = v112;
      (*(v108 + 32))(v70, v108);
      v73 = v110;
      v74 = &v72[*(v110 + 52)];
      *v74 = v67;
      v74[1] = v66;
      v129 = v74;
      v74[2] = v67;
      v130 = *(v73 + 56);
      v131 = v66;
      *(v130 + v72) = 0;
      swift_getAssociatedTypeWitness(255, v71, v70, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
      v76 = v75;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v71, v70, v75, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
      v78 = AssociatedConformanceWitness + 16;
      v79 = *(AssociatedConformanceWitness + 16);
      v122 = v76;
      v80 = swift_checkMetadataState(0, v76);
      v81 = v125;
      v121 = AssociatedConformanceWitness;
      v120 = v79;
      v79(v80, AssociatedConformanceWitness);
      v82 = v81;
      v83 = v126;
      v84 = *(v127 + 48);
      v109 = (v127 + 48);
      if (v84(v81, 1, v126) == 1)
      {
LABEL_4:
        v132;
        (*(v116 + 8))(v82, v117);
      }

      else
      {
        v87 = v127 + 32;
        v86 = *(v127 + 32);
        v108 = v132 & 0xC000000000000001;
        v107 = (v124 + 16);
        v106 = v111 + 24;
        while (1)
        {
          v88 = v86;
          v89 = v87;
          v86(v123, v82, v83);
          if (v131 == v67)
          {
            break;
          }

          if (v67 >= v131)
          {
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v104 = v78;
          v105 = v84;
          v90 = v108 == 0;
          v129[2] = v67 + 1;
          v91 = v114;
          v88(v114, v123, v83);
          v88(v119, v91, v83);
          v92 = v128;
          v93 = v90 | ~_swift_isClassOrObjCExistentialType(v128, v128);
          v94 = v132;
          Array._checkSubscript(_:wasNativeTypeChecked:)(v67, v93 & 1);
          if (v93)
          {
            v95 = v115;
            (*(v124 + 16))(v115, v94 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v67, v92);
          }

          else
          {
            v100 = _ArrayBuffer._getElementSlowPath(_:)(v67, v94, v92);
            if (v113 != 8)
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v101 = v100;
            v142 = v100;
            v102 = v115;
            (*v107)(v115, &v142, v128);
            v103 = v101;
            v95 = v102;
            swift_unknownObjectRelease(v103);
            v50 = v133;
          }

          v84 = v105;
          v78 = v104;
          (*(v111 + 24))(v95, v119, v50);
          v96 = swift_checkMetadataState(0, v122);
          v97 = v125;
          (v120)(v96, v121);
          v82 = v97;
          v98 = v97;
          v83 = v126;
          v99 = v84(v98, 1, v126);
          ++v67;
          v86 = v88;
          v87 = v89;
          if (v99 == 1)
          {
            goto LABEL_4;
          }
        }

        (*(v127 + 8))(v123, v83);
        v132;
      }

      v85 = v118;
      *(v130 + v112) = 1;
      return (*(v85 + 8))();
    }
  }

  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance RangeSet<A>.Ranges(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

__objc2_class **protocol witness for Sequence._copyToContiguousArray() in conformance RangeSet<A>.Ranges(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, a1, a3);
  v6 = specialized Collection._copyToContiguousArray()(v3, a1, WitnessTable);
  *v3;
  return v6;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance RangeSet<A>.Ranges@<X0>(uint64_t *a1@<X8>)
{
  result = RangeSet.Ranges.count.getter();
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance RangeSet<A>.Ranges(uint64_t **a1, unint64_t *a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc(0x28, 0xFBEEuLL);
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = RangeSet.Ranges.subscript.read(v6, *a2, a3, v7);
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*RangeSet.Ranges.subscript.read(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = type metadata accessor for Range(0, *(a3 + 16), *(a3 + 24), a4);
  *a1 = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  a1[1] = v8;
  v10 = *(v8 + 64);
  if (swift_coroFrameAlloc)
  {
    v11 = swift_coroFrameAlloc(v10, 0x8951uLL);
  }

  else
  {
    v11 = malloc(v10);
  }

  a1[2] = v11;
  if ((a2 & 0x8000000000000000) != 0 || *(*v4 + 16) <= a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v9 + 16))(v11, *v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a2, v7);
  return _ArrayBuffer.subscript.read;
}

uint64_t protocol witness for Collection.indices.getter in conformance RangeSet<A>.Ranges@<X0>(unsigned __int16 *a1@<X0>, char *a2@<X8>, uint64_t a3@<X2>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, a1, a3);

  return RandomAccessCollection<>.indices.getter(a1, WitnessTable, &protocol witness table for Int, a2);
}

uint64_t protocol witness for Collection.index(after:) in conformance RangeSet<A>.Ranges@<X0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, a2, a4);

  return RandomAccessCollection<>.index(after:)(a1, a2, WitnessTable, &protocol witness table for Int, a3);
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance RangeSet<A>.Ranges@<X0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, a2, a4);

  return RandomAccessCollection<>.index(before:)(a1, a2, WitnessTable, &protocol witness table for Int, a3);
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance RangeSet<A>.Ranges(uint64_t *a1, unsigned __int16 *a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, _UNKNOWN **))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, a2, a3);
  return a4(&v8, a2, WitnessTable, &protocol witness table for Int);
}

uint64_t protocol witness for BidirectionalCollection.index(_:offsetBy:) in conformance RangeSet<A>.Ranges@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int16 *a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, a3, a3);

  return RandomAccessCollection<>.index(_:offsetBy:)(a1, a2, a3, WitnessTable, &protocol witness table for Int, a4);
}

uint64_t protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance RangeSet<A>.Ranges@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int16 *a4@<X3>, uint64_t a5@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, a4, a3);

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t protocol witness for BidirectionalCollection.distance(from:to:) in conformance RangeSet<A>.Ranges(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, a3, a3);

  return RandomAccessCollection<>.distance(from:to:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

void RangeSet.Ranges<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v6 = *(a2 + 24);
  v27 = *(a2 + 16);
  v25 = type metadata accessor for Range(0, v27, v6, a4);
  v29 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v7);
  v24 = v20 - v8;
  v9 = *v4;
  v10 = *(*v4 + 16);
  v28 = a1;
  Hasher._combine(_:)(v10);
  v26 = v10;
  if (v10)
  {
    v11 = 0;
    v12 = v30;
    v22 = v30 + 24;
    v23 = v29 + 16;
    v20[1] = v29 + 8;
    v21 = v9;
    v13 = v27;
    do
    {
      if (v11 >= *(v9 + 16))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v14 = v29;
      v15 = v24;
      v16 = v25;
      (*(v29 + 16))(v24, v9 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v11++, v25);
      v17 = *(v12 + 24);
      v18 = v28;
      v17(v28, v13, v12);
      v19 = v18;
      v9 = v21;
      v17(v19, v13, v12);
      (*(v14 + 8))(v15, v16);
    }

    while (v26 != v11);
  }
}

Swift::Int RangeSet.Ranges<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *v4;
  v10 = 0u;
  v9 = 0u;
  v6 = 0;
  v7 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v8 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  RangeSet.Ranges<>.hash(into:)(&v6, a1, a2, a4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> RangeSet<A>(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t, uint64_t))
{
  v6 = *(a3 - 8);
  v7 = specialized Hasher.init(_seed:)(a1, v9);
  (a4)(v9, a2, v6, v7);
  return Hasher._finalize()();
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance _Pair<A>@<X0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _Pair<A>, a2, a4);

  return RandomAccessCollection<>.index(before:)(a1, a2, WitnessTable, &protocol witness table for Int, a3);
}

uint64_t protocol witness for BidirectionalCollection.index(_:offsetBy:) in conformance _Pair<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int16 *a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _Pair<A>, a3, a3);

  return RandomAccessCollection<>.index(_:offsetBy:)(a1, a2, a3, WitnessTable, &protocol witness table for Int, a4);
}

uint64_t protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance _Pair<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int16 *a4@<X3>, uint64_t a5@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _Pair<A>, a4, a3);

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t protocol witness for BidirectionalCollection.distance(from:to:) in conformance _Pair<A>(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _Pair<A>, a3, a3);

  return RandomAccessCollection<>.distance(from:to:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance _Pair<A>(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc(0x28, 0x2CA3uLL);
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = _Pair.subscript.read(v6, *a2, a3);
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*_Pair.subscript.read(void *a1, uint64_t a2, uint64_t a3))(void)
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x28, 0x5C18uLL);
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *(a3 + 16);
  *v7 = v9;
  swift_getTupleTypeMetadata2(0, v9, v9, "first second ", 0);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  if (swift_coroFrameAlloc)
  {
    v14 = swift_coroFrameAlloc(v13, 0x5C18uLL);
  }

  else
  {
    v14 = malloc(v13);
  }

  v15 = v14;
  v8[1] = v14;
  v16 = *(v9 - 1);
  v17 = v16;
  v8[2] = v16;
  v18 = *(v16 + 64);
  if (swift_coroFrameAlloc)
  {
    v19 = swift_coroFrameAlloc(v18, 0x5C18uLL);
  }

  else
  {
    v19 = malloc(v18);
  }

  v20 = v19;
  v8[3] = v19;
  if (a2 == 1)
  {
    (*(v12 + 16))(v15, v3, v11);
    v21 = &v15[*(v11 + 48)];
  }

  else
  {
    if (a2)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    (*(v12 + 16))(v15, v3, v11);
    v21 = v15;
    v15 += *(v11 + 48);
  }

  (*(v17 + 32))(v20, v21, v9);
  v22 = *(v17 + 8);
  v8[4] = v22;
  v22(v15, v9);
  return _Pair.subscript.read;
}

void _Pair.subscript.read(void **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  v3 = (*a1)[1];
  ((*a1)[4])(v2, **a1);
  free(v2);
  free(v3);

  free(v1);
}

uint64_t protocol witness for Collection.indices.getter in conformance _Pair<A>@<X0>(unsigned __int16 *a1@<X0>, char *a2@<X8>, uint64_t a3@<X2>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _Pair<A>, a1, a3);

  return RandomAccessCollection<>.indices.getter(a1, WitnessTable, &protocol witness table for Int, a2);
}

uint64_t protocol witness for Collection.index(after:) in conformance _Pair<A>@<X0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _Pair<A>, a2, a4);

  return RandomAccessCollection<>.index(after:)(a1, a2, WitnessTable, &protocol witness table for Int, a3);
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance _Pair<A>(uint64_t *a1, unsigned __int16 *a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, _UNKNOWN **))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _Pair<A>, a2, a3);
  return a4(&v8, a2, WitnessTable, &protocol witness table for Int);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance _Pair<A>@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  (*(*(a1 - 1) + 32))(a2, v4, a1);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _Pair<A>, a1, v6);
  result = type metadata accessor for IndexingIterator(0, a1, WitnessTable, v8);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance _Pair<A>(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _Pair<A>, a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

__objc2_class **protocol witness for Sequence._copyToContiguousArray() in conformance _Pair<A>(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _Pair<A>, a1, a3);
  v6 = specialized Collection._copyToContiguousArray()(v3, a1, WitnessTable);
  (*(*(a1 - 1) + 8))(v3, a1);
  return v6;
}

uint64_t Mirror.init(internalReflecting:subjectType:customAncestor:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a3[1];
  v193 = *a3;
  v194[0] = v6;
  *(v194 + 9) = *(a3 + 25);
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v8 = a1[3];
    v9 = __swift_project_boxed_opaque_existential_0Tm(a1, v8);
    DynamicType = swift_getDynamicType(v9, v8, 1);
    v7 = swift_reflectionMirror_normalizedType(a1, DynamicType, qword_1EEEAC6F8);
  }

  v11 = swift_reflectionMirror_count(a1, v7, qword_1EEEAC6F8);
  if (v11 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = v11;
  outlined init with copy of Any(a1, v192);
  v13 = swift_allocObject(&unk_1EEEBE918, 0x38, 7uLL);
  outlined init with take of Any(v192, v13 + 1);
  v13[6] = v7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVySnySiGSSSg5label_yp5valuetGGMd, _ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVySnySiGSSSg5label_yp5valuetGGMR);
  v15 = swift_allocObject(v14, 0x50, 7uLL);
  v15[6] = 0;
  v15[7] = v12;
  v15[8] = partial apply for closure #1 in Mirror.init(internalReflecting:subjectType:customAncestor:);
  v15[9] = v13;
  v16 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v17 = swift_allocObject(v16, 0x18, 7uLL);
  v17[2] = 0;
  v18 = swift_allocObject(v16, 0x18, 7uLL);
  v18[2] = v12;
  v15[2] = v17;
  v15[3] = &protocol witness table for _IndexBox<A>;
  v15[4] = v18;
  v15[5] = &protocol witness table for _IndexBox<A>;
  outlined init with copy of Any(a1, v192);
  v19 = swift_allocObject(&unk_1EEEBE940, 0x68, 7uLL);
  v19[2] = v7;
  v20 = v194[0];
  *(v19 + 3) = v193;
  *(v19 + 5) = v20;
  *(v19 + 49) = *(v194 + 9);
  outlined init with take of Any(v192, v19 + 9);
  v13;
  outlined init with copy of Mirror?(&v193, v192);
  v21 = swift_reflectionMirror_displayStyle(a1, qword_1EEEAC6F8);
  if ((v21 & 0x80) != 0)
  {
    goto LABEL_21;
  }

  if (v21 > 0x65u)
  {
    switch(v21)
    {
      case 'f':
        v22 = 8;
        goto LABEL_19;
      case 's':
        v22 = 0;
        goto LABEL_19;
      case 't':
        v22 = 3;
        goto LABEL_19;
    }

LABEL_21:
    v187 = v21;
    v24 = _StringGuts.init(_initialCapacity:)(30);
    v26 = v25;
    *&v192[0] = v24;
    *(&v192[0] + 1) = v25;
    v189 = 0x8000000180672010 | 0x8000000000000000;
    v27 = HIBYTE(v25) & 0xF;
    v28 = v24;
    v29 = v24 & 0xFFFFFFFFFFFFLL;
    if ((v25 & 0x2000000000000000) != 0)
    {
      v30 = HIBYTE(v25) & 0xF;
    }

    else
    {
      v30 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (!v30 && (v24 & ~v25 & 0x2000000000000000) == 0)
    {
      v25;
      *&v192[0] = 0xD00000000000001BLL;
      v31 = 0x8000000180672010 | 0x8000000000000000;
LABEL_93:
      *(&v192[0] + 1) = v31;
      goto LABEL_100;
    }

    v32 = 0x8000000180672010 & 0x2000000000000000;
    v33 = (0x8000000180672010 >> 56) & 0xF;
    if ((0x8000000180672010 & 0x2000000000000000 & v25) != 0)
    {
      v34 = v27 + v33;
      if (v27 + v33 <= 0xF)
      {
        if (v33)
        {
          v73 = 0;
          v74 = 0;
          v75 = 8 * v27;
          v56 = v25;
          v57 = 0x8000000180672010 | 0x8000000000000000;
          v58 = v24;
          do
          {
            v76 = v27 + v74;
            v67 = v74 >= 8;
            v77 = v74 + 1;
            v78 = v189 >> (v73 & 0x38);
            if (!v67)
            {
              v78 = 0xD00000000000001BLL >> v73;
            }

            v79 = (v78 << ((v75 + v73) & 0x38)) | ((-255 << ((v75 + v73) & 0x38)) - 1) & v56;
            v80 = (v78 << (v75 + v73)) | ((-255 << (v75 + v73)) - 1) & v58;
            if (v76 <= 7)
            {
              v58 = v80;
            }

            else
            {
              v56 = v79;
            }

            v73 += 8;
            v74 = v77;
          }

          while (v33 != v77);
        }

        else
        {
          v56 = v25;
          v57 = 0x8000000180672010 | 0x8000000000000000;
          v58 = v24;
        }

        v81 = v57;
        v82 = v58;
        v26;
        v81;
        v83 = 0xA000000000000000;
        if (!(v82 & 0x8080808080808080 | v56 & 0x80808080808080))
        {
          v83 = 0xE000000000000000;
        }

        v31 = v83 & 0xFF00000000000000 | (v34 << 56) | v56 & 0xFFFFFFFFFFFFFFLL;
        *&v192[0] = v82;
        goto LABEL_93;
      }
    }

    if (v32)
    {
      v35 = (0x8000000180672010 >> 56) & 0xF;
    }

    else
    {
      v35 = 27;
    }

    if ((0x8000000180672010 & 0x1000000000000000) != 0)
    {
      swift_bridgeObjectRetain_n(v189, 2);
      v164._rawBits = 1;
      v165._rawBits = (v35 << 16) | 1;
      v166._rawBits = _StringGuts.validateScalarRange(_:)(v164, v165, 0xD00000000000001BLL, v189)._rawBits;
      if (v166._rawBits < 0x10000)
      {
        v166._rawBits |= 3;
      }

      v37 = String.UTF8View.distance(from:to:)(v166, v167);
      v189;
      if ((v26 & 0x1000000000000000) == 0)
      {
LABEL_34:
        v38 = __OFADD__(v30, v37);
        v39 = v30 + v37;
        if (!v38)
        {
LABEL_35:
          v40 = v28 & ~v26;
          if ((v40 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v26 & 0xFFFFFFFFFFFFFFFLL))
          {
            v41 = _StringGuts.nativeUnusedCapacity.getter(v28, v26);
            if (v42)
            {
              goto LABEL_201;
            }

            if (v39 > 15)
            {
              goto LABEL_46;
            }

            if ((v26 & 0x2000000000000000) == 0)
            {
              if (v41 < v37)
              {
                goto LABEL_41;
              }

LABEL_46:
              v44 = v40 & 0x2000000000000000;
              v45 = _StringGuts.nativeUnusedCapacity.getter(v28, v26);
              if ((v46 & 1) != 0 || v45 < v37)
              {
                if (v44)
                {
                  swift_isUniquelyReferenced_nonNull_native(v26 & 0xFFFFFFFFFFFFFFFLL);
                }

                v47 = 2 * _StringGuts.nativeCapacity.getter(v28, v26);
                if (v48)
                {
                  v47 = 0;
                }

                if (v47 > v39)
                {
                  v39 = v47;
                }
              }

              else if (v44 && swift_isUniquelyReferenced_nonNull_native(v26 & 0xFFFFFFFFFFFFFFFLL))
              {
                goto LABEL_55;
              }

              _StringGuts.grow(_:)(v39);
LABEL_55:
              if ((0x8000000180672010 & 0x1000000000000000) != 0)
              {
                _StringGuts._foreignAppendInPlace(_:)(0xD00000000000001BLL, v189, 0, v35);
                v59 = 0x8000000180672010 | 0x8000000000000000;
              }

              else
              {
                if (v32)
                {
                  v51 = (0x8000000180672010 >> 62) & 1;
                  *&v191 = 0xD00000000000001BLL;
                  *(&v191 + 1) = 0x8000000180672010 & 0xFFFFFFFFFFFFF0;
                  v49 = &v191;
                  v50 = (0x8000000180672010 >> 56) & 0xF;
                }

                else
                {
                  v49 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, 27, (0x8000000180672010 & 0xFFFFFFFFFFFFFF0) + 32, 27);
                  LOBYTE(v51) = 1;
                }

                closure #1 in _StringGuts.append(_:)(v49, v50, v192, v51);
                v59 = 0x8000000180672010 | 0x8000000000000000;
              }

              swift_bridgeObjectRelease_n(v59, 2);
LABEL_100:
              v84 = _int64ToString(_:radix:uppercase:)(v187, 10, 0, swift_int64ToString);
              v86 = v85;
              v87 = *(&v192[0] + 1);
              v88 = HIBYTE(*(&v192[0] + 1)) & 0xFLL;
              v188 = *&v192[0];
              v190 = v84;
              v89 = *&v192[0] & 0xFFFFFFFFFFFFLL;
              if ((*(&v192[0] + 1) & 0x2000000000000000) != 0)
              {
                v90 = HIBYTE(*(&v192[0] + 1)) & 0xFLL;
              }

              else
              {
                v90 = *&v192[0] & 0xFFFFFFFFFFFFLL;
              }

              if (!v90 && (*&v192[0] & ~*(&v192[0] + 1) & 0x2000000000000000) == 0)
              {
                *(&v192[0] + 1);
                *&v192[0] = v190;
                *(&v192[0] + 1) = v86;
                goto LABEL_167;
              }

              v91 = (v85 & 0x2000000000000000) == 0;
              v92 = HIBYTE(v85) & 0xF;
              if ((*(&v192[0] + 1) & 0x2000000000000000) != 0)
              {
                if ((v85 & 0x2000000000000000) != 0)
                {
                  v113 = v88 + v92;
                  if ((v88 + v92) < 0x10)
                  {
                    if (v92)
                    {
                      v127 = 0;
                      v128 = 0;
                      v129 = 8 * v88;
                      v125 = *(&v192[0] + 1);
                      v126 = *&v192[0];
                      do
                      {
                        v130 = v88 + v128;
                        v67 = v128 >= 8;
                        v131 = v128 + 1;
                        v132 = v85 >> (v127 & 0x38);
                        if (!v67)
                        {
                          v132 = v84 >> v127;
                        }

                        v133 = (v132 << ((v129 + v127) & 0x38)) | ((-255 << ((v129 + v127) & 0x38)) - 1) & v125;
                        v134 = (v132 << (v129 + v127)) | ((-255 << (v129 + v127)) - 1) & v126;
                        if (v130 <= 7)
                        {
                          v126 = v134;
                        }

                        else
                        {
                          v125 = v133;
                        }

                        v127 += 8;
                        v128 = v131;
                      }

                      while (v92 != v131);
                    }

                    else
                    {
                      v125 = *(&v192[0] + 1);
                      v126 = *&v192[0];
                    }

                    *(&v192[0] + 1);
                    v86;
                    v135 = 0xA000000000000000;
                    if (!(v126 & 0x8080808080808080 | v125 & 0x80808080808080))
                    {
                      v135 = 0xE000000000000000;
                    }

                    *&v192[0] = v126;
                    for (*(&v192[0] + 1) = v135 & 0xFF00000000000000 | (v113 << 56) | v125 & 0xFFFFFFFFFFFFFFLL; ; *(&v192[0] + 1) = v124)
                    {
LABEL_167:
                      v86 = *(&v192[0] + 1);
                      v87 = *&v192[0];
                      v136 = HIBYTE(*(&v192[0] + 1)) & 0xFLL;
                      v101 = *&v192[0] & 0xFFFFFFFFFFFFLL;
                      if ((*(&v192[0] + 1) & 0x2000000000000000) != 0)
                      {
                        v137 = HIBYTE(*(&v192[0] + 1)) & 0xFLL;
                      }

                      else
                      {
                        v137 = *&v192[0] & 0xFFFFFFFFFFFFLL;
                      }

                      if (!v137 && (*&v192[0] & ~*(&v192[0] + 1) & 0x2000000000000000) == 0)
                      {
                        *(&v192[0] + 1);
                        v138 = 0xE100000000000000;
                        v87 = 39;
                        goto LABEL_203;
                      }

                      if ((*(&v192[0] + 1) & 0x2000000000000000) != 0 && v136 != 15)
                      {
                        v139 = 8 * (HIBYTE(*(&v192[0] + 1)) & 7);
                        v140 = (-255 << v139) - 1;
                        v141 = 39 << v139;
                        v142 = v140 & *(&v192[0] + 1) | v141;
                        v143 = v140 & *&v192[0] | v141;
                        if (v136 >= 8)
                        {
                          v144 = v142;
                        }

                        else
                        {
                          v144 = *(&v192[0] + 1);
                        }

                        if (v136 < 8)
                        {
                          v87 = v143;
                        }

                        *(&v192[0] + 1);
                        0xE100000000000000;
                        v145 = 0xA000000000000000;
                        if (!(v87 & 0x8080808080808080 | v144 & 0x80808080808080))
                        {
                          v145 = 0xE000000000000000;
                        }

                        v138 = (v145 & 0xFF00000000000000 | (v136 << 56) | v144 & 0xFFFFFFFFFFFFFFLL) + 0x100000000000000;
                        goto LABEL_203;
                      }

                      0xE100000000000000;
                      if ((v86 & 0x1000000000000000) != 0)
                      {
                        v171 = String.UTF8View._foreignCount()();
                        v112 = v171 + 1;
                        if (!__OFADD__(v171, 1))
                        {
LABEL_185:
                          if ((v87 & ~v86 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v86 & 0xFFFFFFFFFFFFFFFLL))
                          {
                            v146 = _StringGuts.nativeUnusedCapacity.getter(v87, v86);
                            if (v147)
                            {
                              goto LABEL_201;
                            }

                            if (v112 > 15)
                            {
                              goto LABEL_190;
                            }

                            if ((v86 & 0x2000000000000000) == 0)
                            {
                              if (v146 < 1)
                              {
                                goto LABEL_207;
                              }

LABEL_190:
                              _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v112, 1);
                              v191 = xmmword_18071DCC0;
                              closure #1 in _StringGuts.append(_:)(&v191, 1uLL, v192, 1);
                              swift_bridgeObjectRelease_n(0xE100000000000000, 2);
                              v138 = *(&v192[0] + 1);
                              v87 = *&v192[0];
LABEL_203:
                              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v87, v138, "Swift/ReflectionMirror.swift", 0x1CuLL, 2, 0xB6uLL, 0);
                            }

LABEL_192:
                            v148 = v86;
                          }

                          else
                          {
                            if (v112 > 15)
                            {
                              goto LABEL_190;
                            }

                            if ((v86 & 0x2000000000000000) != 0)
                            {
                              goto LABEL_192;
                            }

LABEL_207:
                            if ((v86 & 0x1000000000000000) != 0)
                            {
                              v87 = _StringGuts._foreignConvertedToSmall()(v87, v86);
                              v148 = v163;
                            }

                            else
                            {
                              if ((v87 & 0x1000000000000000) != 0)
                              {
                                v160 = ((v86 & 0xFFFFFFFFFFFFFFFLL) + 32);
                              }

                              else
                              {
                                v160 = _StringObject.sharedUTF8.getter(v87, v86);
                                v101 = v180;
                              }

                              closure #1 in _StringGuts._convertedToSmall()(v160, v101, &v191, v111);
                              v148 = *(&v191 + 1);
                              v87 = v191;
                            }
                          }

                          v149 = 0xE100000000000000;
                          0xE100000000000000;
                          v150 = 39;
                          v151._rawBits = 1;
                          v152._rawBits = 65537;
                          v153._rawBits = _StringGuts.validateScalarRange(_:)(v151, v152, 0x27uLL, 0xE100000000000000)._rawBits;
                          if (v153._rawBits < 0x10000)
                          {
                            v153._rawBits |= 3;
                          }

                          if (v153._rawBits >> 16 || (v154._rawBits & 0xFFFFFFFFFFFF0000) != 0x10000)
                          {
                            v150 = specialized static String._copying(_:)(v153._rawBits, v154, 0x27uLL, 0xE100000000000000);
                            v149 = v156;
                            0xE100000000000000;
                          }

                          if ((v149 & 0x2000000000000000) != 0)
                          {
                            v149;
                          }

                          else if ((v149 & 0x1000000000000000) != 0)
                          {
                            v150 = _StringGuts._foreignConvertedToSmall()(v150, v149);
                            v186 = v185;
                            v149;
                            v149 = v186;
                          }

                          else
                          {
                            if ((v150 & 0x1000000000000000) != 0)
                            {
                              v174 = ((v149 & 0xFFFFFFFFFFFFFFFLL) + 32);
                              v175 = v150 & 0xFFFFFFFFFFFFLL;
                            }

                            else
                            {
                              v174 = _StringObject.sharedUTF8.getter(v150, v149);
                            }

                            closure #1 in _StringGuts._convertedToSmall()(v174, v175, &v191, v155);
                            v149;
                            v149 = *(&v191 + 1);
                            v150 = v191;
                          }

                          v157 = specialized _SmallString.init(_:appending:)(v87, v148, v150, v149);
                          if (v159)
                          {
LABEL_201:
                            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
                          }

                          v87 = v157;
                          v138 = v158;
                          v86;
                          swift_bridgeObjectRelease_n(0xE100000000000000, 2);
                          goto LABEL_203;
                        }
                      }

                      else
                      {
                        v38 = __OFADD__(v137, 1);
                        v112 = v137 + 1;
                        if (!v38)
                        {
                          goto LABEL_185;
                        }
                      }

                      __break(1u);
LABEL_227:
                      if ((v112 & 0x1000000000000000) != 0)
                      {
                        v190 = _StringGuts._foreignConvertedToSmall()(v190, v112);
                        v184 = v183;
                        v112;
                        v120 = specialized _SmallString.init(_:appending:)(v188, v101, v190, v184);
                      }

                      else
                      {
                        if ((v190 & 0x1000000000000000) != 0)
                        {
                          v172 = ((v112 & 0xFFFFFFFFFFFFFFFLL) + 32);
                          v173 = v190 & 0xFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v172 = _StringObject.sharedUTF8.getter(v190, v112);
                        }

                        closure #1 in _StringGuts._convertedToSmall()(v172, v173, &v191, v111);
                        v112;
                        v190 = v191;
                        v120 = specialized _SmallString.init(_:appending:)(v188, v101, v191, *(&v191 + 1));
                      }

LABEL_150:
                      if (v122)
                      {
                        goto LABEL_201;
                      }

                      v123 = v120;
                      v124 = v121;
                      v87;
                      swift_bridgeObjectRelease_n(v86, 2);
                      *&v192[0] = v123;
                    }
                  }

                  v91 = 0;
                  v93 = v84 & 0xFFFFFFFFFFFFLL;
                  v94 = HIBYTE(v85) & 0xF;
                  if ((v85 & 0x1000000000000000) == 0)
                  {
LABEL_113:
                    v85;
                    v96 = v94;
                    if ((v87 & 0x1000000000000000) == 0)
                    {
                      goto LABEL_114;
                    }

                    goto LABEL_143;
                  }

LABEL_140:
                  swift_bridgeObjectRetain_n(v85, 2);
                  v114._rawBits = 1;
                  v115._rawBits = (v94 << 16) | 1;
                  v116._rawBits = _StringGuts.validateScalarRange(_:)(v114, v115, v190, v86)._rawBits;
                  if (v116._rawBits < 0x10000)
                  {
                    v116._rawBits |= 3;
                  }

                  v96 = String.UTF8View.distance(from:to:)(v116, v117);
                  v86;
                  if ((v87 & 0x1000000000000000) == 0)
                  {
LABEL_114:
                    v38 = __OFADD__(v90, v96);
                    v97 = v90 + v96;
                    if (!v38)
                    {
LABEL_115:
                      if ((v188 & ~v87 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v87 & 0xFFFFFFFFFFFFFFFLL))
                      {
                        v98 = _StringGuts.nativeUnusedCapacity.getter(v188, v87);
                        if (v99)
                        {
                          goto LABEL_201;
                        }

                        if (v97 > 15)
                        {
                          goto LABEL_126;
                        }

                        if ((v87 & 0x2000000000000000) == 0)
                        {
                          if (v98 < v96)
                          {
                            goto LABEL_121;
                          }

LABEL_126:
                          _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v97, v96);
                          if ((v86 & 0x1000000000000000) == 0)
                          {
                            if (v91)
                            {
                              if ((v190 & 0x1000000000000000) != 0)
                              {
                                v102 = (v86 & 0xFFFFFFFFFFFFFFFLL) + 32;
                                v103 = v93;
                              }

                              else
                              {
                                v176 = _StringObject.sharedUTF8.getter(v190, v86);
                                if (v177 < v93)
                                {
                                  _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
                                }

                                v102 = v176;
                                v103 = v177;
                              }

                              v104 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v93, v102, v103);
                              v106 = v190 >> 63;
                            }

                            else
                            {
                              v106 = (v86 >> 62) & 1;
                              *&v191 = v190;
                              *(&v191 + 1) = v86 & 0xFFFFFFFFFFFFFFLL;
                              v104 = &v191;
                              v105 = HIBYTE(v86) & 0xF;
                            }

                            closure #1 in _StringGuts.append(_:)(v104, v105, v192, v106);
                            goto LABEL_156;
                          }

LABEL_146:
                          _StringGuts._foreignAppendInPlace(_:)(v190, v86, 0, v94);
LABEL_156:
                          swift_bridgeObjectRelease_n(v86, 2);
                          goto LABEL_167;
                        }
                      }

                      else
                      {
                        if (v97 > 15)
                        {
                          goto LABEL_126;
                        }

                        if ((v87 & 0x2000000000000000) == 0)
                        {
LABEL_121:
                          if ((v87 & 0x1000000000000000) != 0)
                          {
                            v188 = _StringGuts._foreignConvertedToSmall()(v188, v87);
                            v101 = v162;
                          }

                          else
                          {
                            if ((v188 & 0x1000000000000000) != 0)
                            {
                              v100 = ((v87 & 0xFFFFFFFFFFFFFFFLL) + 32);
                            }

                            else
                            {
                              v100 = _StringObject.sharedUTF8.getter(v188, v87);
                              v89 = v179;
                            }

                            closure #1 in _StringGuts._convertedToSmall()(v100, v89, &v191, v95);
                            v101 = *(&v191 + 1);
                            v188 = v191;
                          }

                          goto LABEL_133;
                        }
                      }

                      v101 = v87;
LABEL_133:
                      v86;
                      v107._rawBits = 1;
                      v108._rawBits = (v94 << 16) | 1;
                      v109._rawBits = _StringGuts.validateScalarRange(_:)(v107, v108, v190, v86)._rawBits;
                      if (v109._rawBits < 0x10000)
                      {
                        v109._rawBits |= 3;
                      }

                      if (v109._rawBits >> 16 || v110._rawBits >> 16 != v94)
                      {
                        v190 = specialized static String._copying(_:)(v109._rawBits, v110, v190, v86);
                        v112 = v119;
                        v86;
                      }

                      else
                      {
                        v112 = v86;
                      }

                      if ((v112 & 0x2000000000000000) == 0)
                      {
                        goto LABEL_227;
                      }

                      v112;
                      v120 = specialized _SmallString.init(_:appending:)(v188, v101, v190, v112);
                      goto LABEL_150;
                    }

LABEL_145:
                    __break(1u);
                    goto LABEL_146;
                  }

LABEL_143:
                  v118 = String.UTF8View._foreignCount()();
                  v97 = v118 + v96;
                  if (!__OFADD__(v118, v96))
                  {
                    goto LABEL_115;
                  }

                  goto LABEL_145;
                }

                v93 = v84 & 0xFFFFFFFFFFFFLL;
                v91 = 1;
              }

              else
              {
                v93 = v84 & 0xFFFFFFFFFFFFLL;
                v94 = HIBYTE(v85) & 0xF;
                if ((v85 & 0x2000000000000000) != 0)
                {
LABEL_112:
                  if ((v85 & 0x1000000000000000) == 0)
                  {
                    goto LABEL_113;
                  }

                  goto LABEL_140;
                }
              }

              v94 = v93;
              goto LABEL_112;
            }
          }

          else
          {
            if (v39 > 15)
            {
              goto LABEL_46;
            }

            if ((v26 & 0x2000000000000000) == 0)
            {
LABEL_41:
              if ((v26 & 0x1000000000000000) != 0)
              {
                v28 = _StringGuts._foreignConvertedToSmall()(v28, v26);
                v33 = v161;
              }

              else
              {
                if ((v28 & 0x1000000000000000) != 0)
                {
                  v43 = ((v26 & 0xFFFFFFFFFFFFFFFLL) + 32);
                }

                else
                {
                  v43 = _StringObject.sharedUTF8.getter(v28, v26);
                  v29 = v178;
                }

                closure #1 in _StringGuts._convertedToSmall()(v43, v29, &v191, v36);
                v33 = *(&v191 + 1);
                v28 = v191;
              }

LABEL_60:
              v29 = 0xD00000000000001BLL;
              v189;
              v52._rawBits = 1;
              v53._rawBits = (v35 << 16) | 1;
              v54._rawBits = _StringGuts.validateScalarRange(_:)(v52, v53, 0xD00000000000001BLL, v189)._rawBits;
              if (v54._rawBits < 0x10000)
              {
                v54._rawBits |= 3;
              }

              if (v54._rawBits >> 16 || v55._rawBits >> 16 != v35)
              {
                v29 = specialized static String._copying(_:)(v54._rawBits, v55, 0xD00000000000001BLL, v189);
                v35 = v60;
                v189;
              }

              else
              {
                v35 = 0x8000000180672010 | 0x8000000000000000;
              }

              if ((v35 & 0x2000000000000000) != 0)
              {
                v35;
LABEL_71:
                v61 = HIBYTE(v33) & 0xF;
                v62 = HIBYTE(v35) & 0xF;
                if ((v62 + v61) > 0xF)
                {
                  goto LABEL_201;
                }

                v189;
                if (v62)
                {
                  v63 = 0;
                  v64 = 0;
                  v65 = 8 * v61;
                  do
                  {
                    v66 = v61 + v64;
                    v67 = v64 >= 8;
                    v68 = v64 + 1;
                    v69 = v35 >> (v63 & 0x38);
                    if (!v67)
                    {
                      v69 = v29 >> v63;
                    }

                    v70 = (v69 << ((v65 + v63) & 0x38)) | ((-255 << ((v65 + v63) & 0x38)) - 1) & v33;
                    v71 = (v69 << (v65 + v63)) | ((-255 << (v65 + v63)) - 1) & v28;
                    if (v66 <= 7)
                    {
                      v28 = v71;
                    }

                    else
                    {
                      v33 = v70;
                    }

                    v63 += 8;
                    v64 = v68;
                  }

                  while (v62 != v68);
                }

                v26;
                v189;
                v72 = 0xA000000000000000;
                if (!(v28 & 0x8080808080808080 | v33 & 0x80808080808080))
                {
                  v72 = 0xE000000000000000;
                }

                v31 = v72 & 0xFF00000000000000 | ((v62 + v61) << 56) | v33 & 0xFFFFFFFFFFFFFFLL;
                *&v192[0] = v28;
                goto LABEL_93;
              }

LABEL_220:
              if ((v35 & 0x1000000000000000) != 0)
              {
                v29 = _StringGuts._foreignConvertedToSmall()(v29, v35);
                v182 = v181;
                v35;
                v35 = v182;
              }

              else
              {
                if ((v29 & 0x1000000000000000) != 0)
                {
                  v169 = ((v35 & 0xFFFFFFFFFFFFFFFLL) + 32);
                  v170 = v29 & 0xFFFFFFFFFFFFLL;
                }

                else
                {
                  v169 = _StringObject.sharedUTF8.getter(v29, v35);
                }

                closure #1 in _StringGuts._convertedToSmall()(v169, v170, &v191, v36);
                v35;
                v35 = *(&v191 + 1);
                v29 = v191;
              }

              goto LABEL_71;
            }
          }

          v33 = v26;
          goto LABEL_60;
        }

LABEL_219:
        __break(1u);
        goto LABEL_220;
      }
    }

    else
    {
      v189;
      v37 = v35;
      if ((v26 & 0x1000000000000000) == 0)
      {
        goto LABEL_34;
      }
    }

    v168 = String.UTF8View._foreignCount()();
    v39 = v168 + v37;
    if (!__OFADD__(v168, v37))
    {
      goto LABEL_35;
    }

    goto LABEL_219;
  }

  if (!v21)
  {
    v22 = 9;
    goto LABEL_19;
  }

  if (v21 == 99)
  {
    v22 = 1;
    goto LABEL_19;
  }

  if (v21 != 101)
  {
    goto LABEL_21;
  }

  v22 = 2;
LABEL_19:
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  outlined destroy of Mirror?(&v193);
  result = v13;
  *a4 = v7;
  *(a4 + 8) = v15;
  *(a4 + 16) = v22;
  *(a4 + 24) = partial apply for closure #2 in Mirror.init(internalReflecting:subjectType:customAncestor:);
  *(a4 + 32) = v19;
  *(a4 + 40) = 0;
  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance _EachFieldOptions(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *protocol witness for SetAlgebra.remove(_:) in conformance _EachFieldOptions@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *protocol witness for SetAlgebra.update(with:) in conformance _EachFieldOptions@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t SetAlgebra.subtracting(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23[0] = a1;
  v23[1] = a4;
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1, a2);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = v23 - v13;
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = v23 - v17;
  MEMORY[0x1EEE9AC00](v16, v19);
  v20 = *(v7 + 16);
  v20(v23 - v21, v4, a2);
  v20(v14, v4, a2);
  v20(v10, v23[0], a2);
  (*(a3 + 64))(v10, a2, a3);
  (*(a3 + 56))(v18, a2, a3);
  return (*(v7 + 8))(v18, a2);
}

{
  SetAlgebra.subtracting(_:)(a1, a2, a3, a4);
  v6 = *(*(a2 - 8) + 8);

  return v6(v4, a2);
}

uint64_t SetAlgebra.isSubset(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1;
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v16 - v13;
  (*(v8 + 16))(v11, v4, a2);
  (*(a3 + 56))(v7, a2, a3);
  LOBYTE(v7) = (*(*(a3 + 8) + 8))(v14, v4, a2);
  (*(v8 + 8))(v14, a2);
  return v7 & 1;
}

uint64_t SetAlgebra.isDisjoint(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v15 - v12;
  (*(v7 + 16))(v10, v3, a2);
  (*(a3 + 56))(a1, a2, a3);
  LOBYTE(a3) = (*(a3 + 152))(a2, a3);
  (*(v7 + 8))(v13, a2);
  return a3 & 1;
}

uint64_t SetAlgebra.isEmpty.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 32))(v7);
  LOBYTE(v3) = (*(*(a2 + 8) + 8))(v3, v9, a1);
  (*(v6 + 8))(v9, a1);
  return v3 & 1;
}

uint64_t specialized SetAlgebra.init<A>(_:)@<X0>(Class *a1@<X1>, uint64_t a2@<X2>, _DWORD *a3@<X8>)
{
  swift_getAssociatedTypeWitness(0, a2, a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v17 - v10;
  (*(a2 + 32))(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a2, a1, v7, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v13 = *(AssociatedConformanceWitness + 16);
  v13(&v18, v7, AssociatedConformanceWitness);
  if ((v18 & 0x100000000) != 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0;
    do
    {
      v15 = v18;
      if ((v18 & ~v14) == 0)
      {
        v15 = 0;
      }

      v14 |= v15;
      v13(&v18, v7, AssociatedConformanceWitness);
    }

    while (BYTE4(v18) != 1);
  }

  result = (*(v8 + 8))(v11, v7);
  *a3 = v14;
  return result;
}

uint64_t SetAlgebra.init<A>(_:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v54 = a1;
  swift_getAssociatedTypeWitness(0, a4, a2, &protocol requirements base descriptor for SetAlgebra, associated type descriptor for SetAlgebra.Element);
  v12 = v11;
  v13 = *(v11 - 8);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v56 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v55 = &v48 - v18;
  v21 = type metadata accessor for Optional(0, v12, v19, v20);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v48 - v23;
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v49 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v48 - v27;
  v29 = *(a4 + 32);
  v57 = a6;
  v58 = a2;
  v59 = a4;
  v30 = a4;
  v32 = v31;
  v29(a2, v30);
  (*(a5 + 32))(a3, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v32, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v34 = *(AssociatedConformanceWitness + 16);
  v53 = AssociatedConformanceWitness + 16;
  v54 = AssociatedConformanceWitness;
  v52 = v34;
  (v34)(v32);
  v35 = v13;
  v38 = *(v13 + 48);
  v37 = v13 + 48;
  v36 = v38;
  if (v38(v24, 1, v12) != 1)
  {
    v39 = *(v35 + 32);
    v50 = v59 + 72;
    v51 = v39;
    v40 = (v35 + 8);
    do
    {
      v41 = v56;
      v51(v56, v24, v12);
      v42 = v37;
      v43 = v28;
      v44 = v32;
      v45 = v55;
      (*(v59 + 72))(v55, v41, v58);
      v46 = v45;
      v32 = v44;
      v28 = v43;
      v37 = v42;
      (*v40)(v46, v12);
      v52(v32, v54);
    }

    while (v36(v24, 1, v12) != 1);
  }

  return (*(v49 + 8))(v28, v32);
}

uint64_t SetAlgebra.subtract(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v21 - v14;
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v21 - v17;
  v19 = *(v8 + 16);
  v19(v15, v4, a2);
  v19(v11, a1, a2);
  (*(a3 + 64))(v11, a2, a3);
  (*(a3 + 104))(v18, a2, a3);
  return (*(v8 + 8))(v18, a2);
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance _EachFieldOptions@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void specialized SetAlgebra<>.init(arrayLiteral:)(unint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  a1;
  *a2 = v4;
}

uint64_t SetAlgebra<>.init(arrayLiteral:)(uint64_t a1, Class *a2, uint64_t a3)
{
  v13 = a1;
  v5 = *(a3 + 160);
  swift_getAssociatedTypeWitness(255, *(a3 + 16), a2, &protocol requirements base descriptor for ExpressibleByArrayLiteral, associated type descriptor for ExpressibleByArrayLiteral.ArrayLiteralElement);
  v9 = type metadata accessor for Array(0, v6, v7, v8);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v9, v10);
  return v5(&v13, v9, WitnessTable, a2, a3);
}

Swift::_MetadataKind_optional __swiftcall _MetadataKind.init(rawValue:)(Swift::UInt rawValue)
{
  if (rawValue > 770)
  {
    if (rawValue > 1023)
    {
      if (rawValue > 1280)
      {
        if (rawValue == 1281)
        {
          *v1 = 14;
          return rawValue;
        }

        if (rawValue == 0xFFFF)
        {
          *v1 = 15;
          return rawValue;
        }
      }

      else
      {
        if (rawValue == 1024)
        {
          *v1 = 12;
          return rawValue;
        }

        if (rawValue == 1280)
        {
          *v1 = 13;
          return rawValue;
        }
      }

      goto LABEL_37;
    }

    if (rawValue > 772)
    {
      if (rawValue == 773)
      {
        *v1 = 10;
        return rawValue;
      }

      if (rawValue == 774)
      {
        *v1 = 11;
        return rawValue;
      }

      goto LABEL_37;
    }

    if (rawValue == 771)
    {
      *v1 = 8;
    }

    else
    {
      *v1 = 9;
    }
  }

  else if (rawValue > 514)
  {
    if (rawValue <= 768)
    {
      if (rawValue == 515)
      {
        *v1 = 4;
        return rawValue;
      }

      if (rawValue == 768)
      {
        *v1 = 5;
        return rawValue;
      }

      goto LABEL_37;
    }

    if (rawValue == 769)
    {
      *v1 = 6;
    }

    else
    {
      *v1 = 7;
    }
  }

  else
  {
    if (rawValue <= 512)
    {
      if (!rawValue)
      {
        *v1 = 0;
        return rawValue;
      }

      if (rawValue == 512)
      {
        *v1 = 1;
        return rawValue;
      }

LABEL_37:
      *v1 = 16;
      return rawValue;
    }

    if (rawValue == 513)
    {
      *v1 = 2;
    }

    else
    {
      *v1 = 3;
    }
  }

  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _MetadataKind()
{
  v1 = *v0;
  specialized Hasher.init(_seed:)(0, v3);
  Hasher._combine(_:)(qword_18072A0B0[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _MetadataKind(uint64_t a1)
{
  v2 = *v1;
  specialized Hasher.init(_seed:)(a1, v4);
  Hasher._combine(_:)(qword_18072A0B0[v2]);
  return Hasher._finalize()();
}

uint64_t _forEachField(of:options:body:)(swift *a1, int *a2, uint64_t (*a3)(void))
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (swift_isClassType(a1) != ((static _EachFieldOptions.classType & ~v5) != 0))
  {
    v6 = swift_reflectionMirror_recursiveCount(a1);
    if (v6 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v7 = v6;
    if (!v6)
    {
      return 1;
    }

    v8 = 0;
    while (1)
    {
      swift_reflectionMirror_recursiveChildOffset(a1, v8);
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v9 = swift_reflectionMirror_recursiveChildMetadata(a1, v8, &v14);
      MetadataKind = swift_getMetadataKind(v9);
      _MetadataKind.init(rawValue:)(MetadataKind);
      v11 = v13 == 16 ? 15 : v13;
      v13 = v11;
      if ((a3() & 1) == 0)
      {
        break;
      }

      if (v15)
      {
        v15(v14);
      }

      if (v7 == ++v8)
      {
        return 1;
      }
    }

    if (v15)
    {
      v15(v14);
    }
  }

  return 0;
}

uint64_t _forEachFieldWithKeyPath<A>(of:options:body:)(unint64_t *a1, int *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  if (swift_isClassType(a1) || (static _EachFieldOptions.classType & ~v7) == 0)
  {
    return 0;
  }

  v24 = static _EachFieldOptions.ignoreUnknown;
  v10 = swift_reflectionMirror_recursiveCount(a1);
  if (v10 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v11 = v10;
  v8 = 1;
  if (v10)
  {
    v12 = 0;
    v23 = v24 & v7;
    while (1)
    {
      swift_reflectionMirror_recursiveChildOffset(a1, v12);
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v13 = swift_reflectionMirror_recursiveChildMetadata(a1, v12, &v27);
      MetadataKind = swift_getMetadataKind(v13);
      _MetadataKind.init(rawValue:)(MetadataKind);
      v16 = v26 > 0xBu || ((1 << v26) & 0x94F) == 0;
      if (v16 || (v29 & 1) == 0)
      {
        v19 = v28;
        if (v23 != v24)
        {
          if (!v28)
          {
            return 0;
          }

          goto LABEL_28;
        }

        if (v28)
        {
          goto LABEL_8;
        }
      }

      else
      {
        if (HIBYTE(v29) == 1)
        {
          v17 = type metadata accessor for WritableKeyPath(0, a5, v13, v15);
        }

        else
        {
          v17 = type metadata accessor for KeyPath(0, a5, v13, v15);
        }

        v20 = MEMORY[0x1EEE9AC00](v17, v18);
        v21 = swift_allocObject(v20, (((*(v20 + 48) + 3) & 0x1FFFFFFFCLL) + 12), *(v20 + 52) | 3);
        v21[2] = 0;
        partial apply for closure #1 in _forEachFieldWithKeyPath<A>(of:options:body:)(v21 + 3, v21 + 36);
        v22 = a3();
        v21;
        if ((v22 & 1) == 0)
        {
          v19 = v28;
          if (!v28)
          {
            return 0;
          }

LABEL_28:
          v19(v27);
          return 0;
        }

        v19 = v28;
        if (v28)
        {
LABEL_8:
          v19(v27);
        }
      }

      if (v11 == ++v12)
      {
        return 1;
      }
    }
  }

  return v8;
}

uint64_t Repeated.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 < 0 || *v3 <= a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *(*(*(a2 + 16) - 8) + 16);
  v5 = v3 + *(a2 + 28);

  return v4(a3, v5);
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance Repeated<A>@<X0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Repeated<A>, a2, a4);

  return RandomAccessCollection<>.index(before:)(a1, a2, WitnessTable, &protocol witness table for Int, a3);
}

uint64_t _ss8RepeatedVyxGSlsSl5index_8offsetBy5IndexQzAG_SitFTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int16 *a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Repeated<A>, a3, a3);

  return RandomAccessCollection<>.index(_:offsetBy:)(a1, a2, a3, WitnessTable, &protocol witness table for Int, a4);
}

uint64_t _ss8RepeatedVyxGSlsSl5index_8offsetBy07limitedD05IndexQzSgAH_SiAHtFTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int16 *a4@<X3>, uint64_t a5@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Repeated<A>, a4, a3);

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t _ss8RepeatedVyxGSlsSl8distance4from2toSi5IndexQz_AHtFTW_0(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Repeated<A>, a3, a3);

  return RandomAccessCollection<>.distance(from:to:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t protocol witness for Collection.endIndex.getter in conformance Repeated<A>@<X0>(uint64_t *a1@<X8>)
{
  result = Repeated.count.getter();
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance Repeated<A>(void *a1, uint64_t *a2))()
{
  if (swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc(0x28, 0x5E33uLL);
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = Repeated.subscript.read(v4, *a2);
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

void (*Repeated.subscript.read(uint64_t a1, uint64_t a2))()
{
  if (a2 < 0 || *v2 <= a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

uint64_t protocol witness for Collection.indices.getter in conformance Repeated<A>@<X0>(unsigned __int16 *a1@<X0>, char *a2@<X8>, uint64_t a3@<X2>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Repeated<A>, a1, a3);

  return RandomAccessCollection<>.indices.getter(a1, WitnessTable, &protocol witness table for Int, a2);
}

uint64_t protocol witness for Collection.index(after:) in conformance Repeated<A>@<X0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Repeated<A>, a2, a4);

  return RandomAccessCollection<>.index(after:)(a1, a2, WitnessTable, &protocol witness table for Int, a3);
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance Repeated<A>(uint64_t *a1, unsigned __int16 *a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, _UNKNOWN **))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Repeated<A>, a2, a3);
  return a4(&v8, a2, WitnessTable, &protocol witness table for Int);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance Repeated<A>@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  (*(*(a1 - 1) + 32))(a2, v4, a1);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Repeated<A>, a1, v6);
  result = type metadata accessor for IndexingIterator(0, a1, WitnessTable, v8);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance Repeated<A>(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Repeated<A>, a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t repeatElement<A>(_:count:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  if (a2 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a4 = a2;
  v12 = type metadata accessor for Repeated(0, a3, v10, v11);
  return (*(v7 + 32))(&a4[*(v12 + 28)], v9, a3);
}

Swift::Void __swiftcall _replPrintLiteralString(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>(0);
  inited = swift_initStackObject(v3, v5);
  *(inited + 1) = xmmword_18071DB30;
  inited[7] = &type metadata for String;
  inited[4] = countAndFlagsBits;
  inited[5] = object;
  object;
  print(_:separator:terminator:)(inited, 0x20uLL, 0xE100000000000000, 0, 0xE000000000000000);
  swift_setDeallocating(inited);
  __swift_destroy_boxed_opaque_existential_1Tm(inited + 4);
}

uint64_t _replDebugPrintln<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>(0);
  inited = swift_initStackObject(v4, v8);
  *(inited + 1) = xmmword_18071DB30;
  inited[7] = a2;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(inited + 4);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0Tm, a1, a2);
  debugPrint(_:separator:terminator:)(inited, 0x20uLL, 0xE100000000000000, 10, 0xE100000000000000);
  swift_setDeallocating(inited);
  return __swift_destroy_boxed_opaque_existential_1Tm(inited + 4);
}

uint64_t static Result<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a5;
  v44 = a6;
  v49 = a1;
  v50 = a2;
  v47 = *(a4 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v42 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v41 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v12;
  v15 = type metadata accessor for Result(0, v13, v12, v14);
  v16 = *(v15 - 1);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v41 - v22;
  swift_getTupleTypeMetadata2(0, v15, v15, 0, 0);
  v25 = v24;
  v45 = *(v24 - 1);
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v29 = (&v41 - v28);
  v30 = *(v27 + 48);
  v31 = *(v16 + 16);
  v31(&v41 - v28, v49, v15);
  v31(v29 + v30, v50, v15);
  if (swift_getEnumCaseMultiPayload(v29, v15) != 1)
  {
    v31(v23, v29, v15);
    if (swift_getEnumCaseMultiPayload((v29 + v30), v15) != 1)
    {
      v37 = v46;
      v38 = v41;
      (*(v46 + 32))(v41, v29 + v30, a3);
      v35 = (*(v43 + 8))(v23, v38, a3);
      v39 = *(v37 + 8);
      v39(v38, a3);
      v39(v23, a3);
      goto LABEL_9;
    }

    (*(v46 + 8))(v23, a3);
    goto LABEL_7;
  }

  v31(v20, v29, v15);
  if (swift_getEnumCaseMultiPayload((v29 + v30), v15) != 1)
  {
    (*(v47 + 8))(v20, v48);
LABEL_7:
    v35 = 0;
    v16 = v45;
    v15 = v25;
    goto LABEL_9;
  }

  v33 = v47;
  v32 = v48;
  v34 = v42;
  (*(v47 + 32))(v42, v29 + v30, v48);
  v35 = (*(v44 + 8))(v20, v34, v32);
  v36 = *(v33 + 8);
  v36(v34, v32);
  v36(v20, v32);
LABEL_9:
  (*(v16 + 8))(v29, v15);
  return v35 & 1;
}

uint64_t Result<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v7 = *(a2 + 24);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v9, v12);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = (&v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20, v22, a2);
  if (swift_getEnumCaseMultiPayload(v20, a2) == 1)
  {
    (*(v8 + 32))(v11, v20, v7);
    Hasher._combine(_:)(1uLL);
    (*(v25 + 24))(a1, v7);
    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    (*(v14 + 32))(v17, v20, v13);
    Hasher._combine(_:)(0);
    (*(a3 + 24))(a1, v13, a3);
    return (*(v14 + 8))(v17, v13);
  }
}

Swift::Int Result<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0u;
  v8 = 0u;
  v4 = 0;
  v5 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v6 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  Result<>.hash(into:)(&v4, a1, a2, a3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> FlattenSequence<A><>.Index(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3 - 16);
  v6 = *(a3 - 8);
  v8 = specialized Hasher.init(_seed:)(a1, v10);
  (a4)(v10, a2, v6, v7, v8);
  return Hasher._finalize()();
}

void Result.map<A>(_:)(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v9 = a3[2];
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1, a2);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = (&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v18);
  if (swift_getEnumCaseMultiPayload(v16, a3) == 1)
  {
    v19 = a3[3];
    (*(*(v19 - 8) + 32))(a5, v16, v19);
    v20 = 1;
  }

  else
  {
    (*(v10 + 32))(v13, v16, v9);
    a1(v13);
    (*(v10 + 8))(v13, v9);
    v20 = 0;
    v19 = a3[3];
  }

  v21 = type metadata accessor for Result(0, a4, v19, a3[4]);
  swift_storeEnumTagMultiPayload(a5, v21, v20);
}

void Result.mapError<A>(_:)(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v11 = *(a3 + 24);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = (&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v20);
  if (swift_getEnumCaseMultiPayload(v18, a3) == 1)
  {
    (*(v12 + 32))(v15, v18, v11);
    a1(v15);
    (*(v12 + 8))(v15, v11);
    v21 = *(a3 + 16);
    v22 = 1;
  }

  else
  {
    v21 = *(a3 + 16);
    (*(*(v21 - 8) + 32))(a6, v18, v21);
    v22 = 0;
  }

  v23 = type metadata accessor for Result(0, v21, a4, a5);
  swift_storeEnumTagMultiPayload(a6, v23, v22);
}

void Result.flatMap<A>(_:)(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v9 = a3[2];
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1, a2);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = (&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v18);
  if (swift_getEnumCaseMultiPayload(v16, a3) == 1)
  {
    v19 = a3[3];
    (*(*(v19 - 8) + 32))(a5, v16, v19);
    v20 = type metadata accessor for Result(0, a4, v19, a3[4]);
    swift_storeEnumTagMultiPayload(a5, v20, 1u);
  }

  else
  {
    (*(v10 + 32))(v13, v16, v9);
    a1(v13);
    (*(v10 + 8))(v13, v9);
  }
}

void Result.flatMapError<A>(_:)(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v11 = *(a3 + 24);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = (&v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v20);
  if (swift_getEnumCaseMultiPayload(v18, a3) == 1)
  {
    (*(v12 + 32))(v15, v18, v11);
    a1(v15);
    (*(v12 + 8))(v15, v11);
  }

  else
  {
    v21 = *(a3 + 16);
    (*(*(v21 - 8) + 32))(a6, v18, v21);
    v22 = type metadata accessor for Result(0, v21, a4, a5);
    swift_storeEnumTagMultiPayload(a6, v22, 0);
  }
}

uint64_t Result.get()@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = a1[3];
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1, v3);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  if (swift_getEnumCaseMultiPayload(v13, a1) != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a2, v13);
  }

  v15 = *(v7 + 32);
  v15(v10, v13, v6);
  swift_allocError(v6, a1[4], 0, 0);
  v15(v16, v10, v6);
  return swift_willThrow();
}

uint64_t Result<>.init(catching:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, _ss5Error_pMR);
  v7 = type metadata accessor for Result(0, a2, v6, &protocol self-conformance witness table for Error);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v14 - v11;
  a1(v10);
  swift_storeEnumTagMultiPayload(v12, v7, 0);
  return (*(v8 + 32))(a3, v12, v7);
}

uint64_t ReversedCollection.Iterator._position.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  swift_getAssociatedTypeWitness(0, *(*(a1 + 24) + 8), *(a1 + 16), &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ReversedCollection.Iterator._position.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  swift_getAssociatedTypeWitness(0, *(*(a2 + 24) + 8), *(a2 + 16), &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ReversedCollection.Iterator.init(_base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = *(a2 - 8);
  (*(v12 + 16))(a4, a1, a2);
  v7 = *(a3 + 8);
  v8 = *(v7 + 72);
  type metadata accessor for ReversedCollection.Iterator(0, a2, a3, v9);
  v8(a2, v7);
  v10 = *(v12 + 8);

  return v10(a1, a2);
}

uint64_t protocol witness for IteratorProtocol.next() in conformance ReversedCollection<A>.Iterator@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v27 = a2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(v6 + 8);
  swift_getAssociatedTypeWitness(0, v7, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v26 - v12;
  v14 = *(a1 + 36);
  (*(v7 + 64))(v5, v7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v5, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v16 = (*(*(AssociatedConformanceWitness + 8) + 8))(v2 + v14, v13, v9);
  (*(v10 + 8))(v13, v9);
  if (v16)
  {
    swift_getAssociatedTypeWitness(0, *(v7 + 8), v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    return (*(*(v25 - 8) + 56))(v27, 1, 1, v25);
  }

  else
  {
    (*(v6 + 40))(v4 + v14, v5, v6);
    v17 = (*(v7 + 80))(v28, v4 + v14, v5, v7);
    v19 = v18;
    swift_getAssociatedTypeWitness(0, *(v7 + 8), v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    v21 = v20;
    v22 = *(v20 - 8);
    v23 = v27;
    (*(v22 + 16))(v27, v19, v20);
    v17(v28, 0);
    return (*(v22 + 56))(v23, 0, 1, v21);
  }
}

uint64_t protocol witness for Sequence.makeIterator() in conformance ReversedCollection<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1, v4);
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

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance ReversedCollection<A>(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ReversedCollection<A>, a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t ReversedCollection.Index.base.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness(0, *(*(a1 + 24) + 8), *(a1 + 16), &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t ReversedCollection.Index.init(_:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness(0, *(a3 + 8), a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = *(*(v6 - 8) + 32);

  return v7(a4, a1, v6);
}

uint64_t static ReversedCollection.Index.== infix(_:_:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4)
{
  v7 = *(a4 + 8);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, a3, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  return (*(*(AssociatedConformanceWitness + 8) + 8))(a1, a2, v9) & 1;
}

uint64_t static ReversedCollection.Index.< infix(_:_:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4)
{
  v7 = *(a4 + 8);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, a3, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  return (*(AssociatedConformanceWitness + 40))(a1, a2, v9, AssociatedConformanceWitness) & 1;
}

uint64_t ReversedCollection.Index<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  swift_getAssociatedTypeWitness(0, *(*(a2 + 24) + 8), *(a2 + 16), &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);

  return v7(a1, v5, a3);
}

Swift::Int ReversedCollection.Index<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  v9 = 0u;
  v10 = 0u;
  v6 = 0;
  v7 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v8 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  v3 = *(a2 + 24);
  swift_getAssociatedTypeWitness(0, *(*(a1 + 24) + 8), *(a1 + 16), &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v3(&v6, v4, a2);
  return Hasher._finalize()();
}

uint64_t ReversedCollection.index(_:offsetBy:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = __OFSUB__(0, a2);
  v4 = -a2;
  if (!v3)
  {
    return (*(*(a3 + 24) + 48))(result, v4, *(a3 + 16));
  }

  __break(1u);
  return result;
}

uint64_t ReversedCollection.index(_:offsetBy:limitedBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a5;
  v9 = *(a4 + 16);
  v8 = *(a4 + 24);
  swift_getAssociatedTypeWitness(255, *(v8 + 8), v9, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  v14 = type metadata accessor for Optional(0, v10, v12, v13);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = &v30 - v22;
  if (__OFSUB__(0, a2))
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 56))(a1, -a2, a3, v9, v8);
    (*(v15 + 32))(v19, v23, v14);
    v24 = *(v11 - 8);
    v25 = 1;
    v26 = (*(v24 + 48))(v19, 1, v11);
    v28 = v31;
    if (v26 != 1)
    {
      (*(v24 + 32))(v31, v19, v11);
      v25 = 0;
    }

    v29 = type metadata accessor for ReversedCollection.Index(0, v9, v8, v27);
    return (*(*(v29 - 8) + 56))(v28, v25, 1, v29);
  }

  return result;
}

uint64_t ReversedCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(v6 + 8);
  swift_getAssociatedTypeWitness(0, v7, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v19[-v12];
  (*(v6 + 32))(a1, v5, v6);
  v14 = (*(v7 + 80))(v19, v13, v5, v7);
  v16 = v15;
  swift_getAssociatedTypeWitness(0, *(v7 + 8), v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  (*(*(v17 - 8) + 16))(a3, v16, v17);
  v14(v19, 0);
  return (*(v10 + 8))(v13, v9);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance ReversedCollection<A>(void *a1, uint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc(0x28, 0x8087uLL);
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = ReversedCollection.subscript.read(v6, a2, a3);
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*ReversedCollection.subscript.read(void *a1, uint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0xAB22uLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  v9 = *(v8 + 8);
  swift_getAssociatedTypeWitness(0, v9, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v23 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  if (swift_coroFrameAlloc)
  {
    v13 = swift_coroFrameAlloc(v12, 0xAB22uLL);
  }

  else
  {
    v13 = malloc(v12);
  }

  v14 = v13;
  v6[4] = v13;
  swift_getAssociatedTypeWitness(0, *(v9 + 8), v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v6[5] = v15;
  v16 = *(v15 - 8);
  v17 = v16;
  v6[6] = v16;
  v18 = *(v16 + 64);
  if (swift_coroFrameAlloc)
  {
    v19 = swift_coroFrameAlloc(v18, 0xAB22uLL);
  }

  else
  {
    v19 = malloc(v18);
  }

  v20 = v19;
  v6[7] = v19;
  (*(v8 + 32))(a2, v7, v8);
  v21 = (*(v9 + 80))(v6, v14, v7, v9);
  (*(v17 + 16))(v20);
  v21(v6, 0);
  (*(v11 + 8))(v14, v23);
  return ReversedCollection.subscript.read;
}

void LazyMapSequence<>.subscript.read(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 56);
  v3 = *(*a1 + 32);
  (*(*(*a1 + 48) + 8))(v2, *(*a1 + 40));
  free(v2);
  free(v3);

  free(v1);
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance ReversedCollection<A>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v4 = type metadata accessor for ReversedCollection.Index(255, *(a1 + 16), *(a1 + 24), a3);
  v7 = type metadata accessor for Optional(0, v4, v5, v6);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, 1, 1, v7);
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance ReversedCollection<A>(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t))
{
  v7 = type metadata accessor for ReversedCollection.Index(0, *(a2 + 16), *(a2 + 24), a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v13 - v10;
  (*(v8 + 32))(&v13 - v10, a1, v7);
  a4(v11, a2);
  return (*(v8 + 8))(v11, v7);
}

BOOL _stdlib_atomicCompareExchangeStrongPtr(object:expected:desired:)(atomic_ullong *a1, uint64_t *a2, unint64_t a3)
{
  v3 = *a2;
  v4 = *a2;
  atomic_compare_exchange_strong(a1, &v4, a3);
  result = v4 == v3;
  *a2 = v4;
  return result;
}

BOOL _stdlib_atomicCompareExchangeStrongPtr<A>(object:expected:desired:)(atomic_ullong *a1, uint64_t *a2, unint64_t a3)
{
  v3 = *a2;
  v4 = *a2;
  atomic_compare_exchange_strong(a1, &v4, a3);
  result = v4 == v3;
  *a2 = v4;
  return result;
}

{
  v3 = *a2;
  v4 = *a2;
  atomic_compare_exchange_strong(a1, &v4, a3);
  result = v4 == v3;
  *a2 = v4;
  return result;
}

double _float16ToString(_:debug:)@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v3 = swift_float16ToString(&v6, 0x20uLL, a2);
  result = *&v6;
  v5 = v7;
  *a1 = v6;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

double _float32ToString(_:debug:)@<D0>(uint64_t a1@<X8>, float a2@<S0>)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v3 = swift_float32ToString(&v6, a2);
  result = *&v6;
  v5 = v7;
  *a1 = v6;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

double _float64ToString(_:debug:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v3 = swift_float64ToString(&v6, a2);
  result = *&v6;
  v5 = v7;
  *a1 = v6;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

Swift::Int specialized Collection.underestimatedCount.getter(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return String.UTF16View._foreignCount()();
  }

  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1;
  }

  return String.UTF16View._nativeGetOffset(for:)(((v2 << 16) | 7));
}

void *__SwiftNativeNSSet.__allocating_init(coder:)(void *a1)
{
  swift_unknownObjectRelease(a1);

  return swift_allocObject(v1, 0x10, 7uLL);
}

uint64_t DropFirstSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness(255, v5, v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v34 = type metadata accessor for Optional(0, v7, v9, v10);
  v31 = *(v34 - 8);
  v12 = MEMORY[0x1EEE9AC00](v34, v11);
  v14 = &v30 - v13;
  MEMORY[0x1EEE9AC00](v12, v15);
  (*(v17 + 16))(&v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v6);
  v18 = *(v5 + 32);
  v35 = a2;
  v18(v6, v5);
  v32 = v2;
  v33 = a1;
  v19 = *(v2 + *(a1 + 36));
  v20 = v19 - 1;
  if (v19 >= 1)
  {
    swift_getAssociatedTypeWitness(255, v5, v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
    v22 = v21;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v6, v21, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v24 = *(AssociatedConformanceWitness + 16);
    v25 = (v31 + 8);
    do
    {
      v26 = swift_checkMetadataState(0, v22);
      v24(v26, AssociatedConformanceWitness);
      v27 = (*(*(v8 - 8) + 48))(v14, 1, v8);
      (*v25)(v14, v34);
    }

    while (v27 != 1 && v20-- != 0);
  }

  return (*(*(v33 - 8) + 8))(v32);
}

uint64_t DropFirstSequence.dropFirst(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a2 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v4, v8);
  v12 = *(v4 + *(a2 + 36));
  (*(*(a2 - 8) + 8))(v4, a2);
  v13 = v12 + a1;
  if (__OFADD__(v12, a1))
  {
    __break(1u);
LABEL_5:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v13 < 0)
  {
    goto LABEL_5;
  }

  result = (*(v9 + 32))(a3, v11, v8);
  *(a3 + *(a2 + 36)) = v13;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance DropFirstSequence<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness(255, v5, v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v31[0] = type metadata accessor for Optional(0, v7, v9, v10);
  v11 = *(v31[0] - 8);
  v13 = MEMORY[0x1EEE9AC00](v31[0], v12);
  v15 = v31 - v14;
  MEMORY[0x1EEE9AC00](v13, v16);
  (*(v18 + 16))(v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v6);
  v19 = *(v5 + 32);
  v31[1] = a2;
  v19(v6, v5);
  v20 = *(v2 + *(a1 + 36));
  result = (*(*(a1 - 8) + 8))(v2, a1);
  v22 = v20 - 1;
  if (v20 >= 1)
  {
    swift_getAssociatedTypeWitness(255, v5, v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
    v24 = v23;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v6, v23, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v26 = *(AssociatedConformanceWitness + 16);
    v27 = (v11 + 8);
    do
    {
      v28 = swift_checkMetadataState(0, v24);
      v26(v28, AssociatedConformanceWitness);
      v29 = (*(*(v8 - 8) + 48))(v15, 1, v8);
      result = (*v27)(v15, v31[0]);
    }

    while (v29 != 1 && v22-- != 0);
  }

  return result;
}

uint64_t DropFirstSequence.init(_:dropping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, uint64_t, uint64_t)@<X7>, uint64_t a6@<X8>)
{
  if (a2 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(*(a3 - 8) + 32))(a6, a1);
  result = a5(0, a3, a4);
  *(a6 + *(result + 36)) = a2;
  return result;
}

uint64_t PrefixSequence.Iterator.init(_:maxLength:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, int **a4@<X3>, uint64_t a5@<X8>)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for PrefixSequence.Iterator(0, a3, a4, v11);
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t PrefixSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = *(v2 + v4);
  if (v5)
  {
    *(v2 + v4) = v5 - 1;
    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    swift_getAssociatedTypeWitness(255, v6, v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
    v9 = v8;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v7, v8, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v15 = *(AssociatedConformanceWitness + 16);
    v11 = swift_checkMetadataState(0, v9);

    return v15(v11, AssociatedConformanceWitness);
  }

  else
  {
    swift_getAssociatedTypeWitness(0, *(a1 + 24), *(a1 + 16), &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    v14 = *(*(v13 - 8) + 56);

    return v14(a2, 1, 1, v13);
  }
}

uint64_t PrefixSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a1 + 16);
  MEMORY[0x1EEE9AC00](a1, a2);
  (*(v9 + 16))(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v7);
  v10 = *(a1 + 24);
  (*(v10 + 32))(v7, v10);
  v11 = *(v3 + *(a1 + 36));
  (*(*(a1 - 8) + 8))(v4, a1);
  result = type metadata accessor for PrefixSequence.Iterator(0, v7, v10, v12);
  *(a3 + *(result + 36)) = v11;
  return result;
}

uint64_t PrefixSequence.prefix(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v9 + *(v8 + 36)) >= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + *(v8 + 36));
  }

  v13 = *(v6 + 32);
  v13(v11, v9, v5);
  if (v12 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = (v13)(a3, v11, v5);
  *(a3 + *(a2 + 36)) = v12;
  return result;
}

uint64_t DropWhileSequence.init(iterator:predicate:)@<X0>(char *a1@<X0>, uint64_t (*a2)(char *)@<X1>, uint64_t a3@<X2>, Class *a4@<X3>, int **a5@<X4>, uint64_t a6@<X8>)
{
  v57 = a2;
  v58 = a3;
  v56 = a1;
  swift_getAssociatedTypeWitness(0, a5, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v11 = v10;
  v61 = *(v10 - 8);
  v12 = v61;
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v43 - v14;
  v60 = type metadata accessor for Optional(0, v11, v16, v17);
  v44 = *(v60 - 8);
  v19 = MEMORY[0x1EEE9AC00](v60, v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v43 - v23;
  v43 = type metadata accessor for DropWhileSequence(0, a4, a5, v25);
  v59 = *(v43 + 36);
  (*(v12 + 56))(a6 + v59, 1, 1, v11);
  swift_getAssociatedTypeWitness(0, a5, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v27 = v26;
  (*(*(v26 - 8) + 32))(a6, v56, v26);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a4, v27, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v29 = *(AssociatedConformanceWitness + 16);
  v54 = AssociatedConformanceWitness;
  v55 = v27;
  v52 = v29;
  v53 = AssociatedConformanceWitness + 16;
  (v29)(v27);
  v30 = v44;
  v31 = *(v44 + 40);
  v33 = v59;
  v32 = v60;
  v56 = v24;
  v34 = v24;
  v35 = v61;
  v50 = v31;
  v51 = v44 + 40;
  v31(a6 + v59, v34, v60);
  v48 = *(v30 + 16);
  v49 = v30 + 16;
  v48(v21, a6 + v33, v32);
  v46 = *(v35 + 48);
  v47 = v35 + 48;
  if (v46(v21, 1, v11) == 1)
  {
    return (*(v44 + 8))(v21, v60);
  }

  v45 = *(v35 + 32);
  v61 = v35 + 32;
  v36 = (v35 + 8);
  while (1)
  {
    v45(v15, v21, v11);
    v37 = v57(v15);
    if (v6)
    {
      break;
    }

    v38 = v37;
    result = (*v36)(v15, v11);
    if ((v38 & 1) == 0)
    {
      return result;
    }

    v40 = v56;
    v52(v55, v54);
    v42 = v59;
    v41 = v60;
    v50(a6 + v59, v40, v60);
    v48(v21, a6 + v42, v41);
    if (v46(v21, 1, v11) == 1)
    {
      return (*(v44 + 8))(v21, v60);
    }
  }

  (*v36)(v15, v11);
  return (*(*(v43 - 8) + 8))(a6, v43);
}

uint64_t DropWhileSequence.init(_:predicate:)@<X0>(uint64_t (*a1)(char *)@<X1>, uint64_t a2@<X2>, Class *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
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

uint64_t DropWhileSequence._nextElement.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  swift_getAssociatedTypeWitness(255, *(a1 + 24), *(a1 + 16), &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = type metadata accessor for Optional(0, v5, v6, v7);
  v9 = *(*(v8 - 8) + 16);

  return v9(a2, v2 + v4, v8);
}

uint64_t DropWhileSequence._nextElement.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  swift_getAssociatedTypeWitness(255, *(a2 + 24), *(a2 + 16), &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = type metadata accessor for Optional(0, v5, v6, v7);
  v9 = *(*(v8 - 8) + 40);

  return v9(v2 + v4, a1, v8);
}

uint64_t DropWhileSequence.Iterator.init(_:nextElement:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, int **a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(type metadata accessor for DropWhileSequence.Iterator(0, a3, a4, a4) + 36);
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v12 = v11;
  (*(*(v11 - 8) + 56))(a5 + v10, 1, 1, v11);
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  (*(*(v13 - 8) + 32))(a5, a1, v13);
  v16 = type metadata accessor for Optional(0, v12, v14, v15);
  v17 = *(*(v16 - 8) + 40);

  return v17(a5 + v10, a2, v16);
}

uint64_t DropWhileSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness(255, v5, v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v11 = type metadata accessor for Optional(0, v7, v9, v10);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v31 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v30 - v17;
  v19 = *(v12 + 16);
  v30 = *(a1 + 36);
  v19(&v30 - v17, v2 + v30, v11);
  v20 = *(v8 - 8);
  if ((*(v20 + 48))(v18, 1, v8) == 1)
  {
    (*(v12 + 8))(v18, v11);
    v21 = 1;
  }

  else
  {
    (*(v20 + 32))(a2, v18, v8);
    swift_getAssociatedTypeWitness(255, v5, v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
    v23 = v22;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v6, v22, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v25 = a2;
    v26 = *(AssociatedConformanceWitness + 16);
    v27 = swift_checkMetadataState(0, v23);
    v28 = v31;
    v26(v27, AssociatedConformanceWitness);
    a2 = v25;
    (*(v12 + 40))(v2 + v30, v28, v11);
    v21 = 0;
  }

  return (*(v20 + 56))(a2, v21, 1, v8);
}

uint64_t DropWhileSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  swift_getAssociatedTypeWitness(255, v6, v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v9 = v8;
  v12 = type metadata accessor for Optional(0, v8, v10, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v21 - v15;
  swift_getAssociatedTypeWitness(0, v6, v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  (*(*(v17 - 8) + 16))(a2, v3, v17);
  (*(v13 + 16))(v16, v3 + *(a1 + 36), v12);
  v19 = *(type metadata accessor for DropWhileSequence.Iterator(0, v7, v6, v18) + 36);
  (*(*(v9 - 8) + 56))(a2 + v19, 1, 1, v9);
  return (*(v13 + 40))(a2 + v19, v16, v12);
}

uint64_t DropWhileSequence.drop(while:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v39 = a1;
  v40 = a2;
  v41 = a4;
  v8 = *(a3 + 16);
  v7 = *(a3 + 24);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v36 = v9;
  v34 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v35 = &v34 - v11;
  v37 = v8;
  v38 = v7;
  swift_getAssociatedTypeWitness(255, v7, v8, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v13 = v12;
  v16 = type metadata accessor for Optional(0, v12, v14, v15);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v34 - v20;
  v22 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v19, v23);
  v25 = &v34 - v24;
  v26 = v5;
  (*(v17 + 16))(v21, v5 + *(a3 + 36), v16);
  if ((*(v22 + 48))(v21, 1, v13) == 1)
  {
    (*(v17 + 8))(v21, v16);
    return (*(*(a3 - 8) + 32))(v41, v26, a3);
  }

  (*(v22 + 32))(v25, v21, v13);
  v29 = v39;
  v28 = v40;
  v30 = v42;
  v31 = v39(v25);
  if (v30)
  {
    (*(*(a3 - 8) + 8))(v26, a3);
    return (*(v22 + 8))(v25, v13);
  }

  else
  {
    v32 = v31;
    (*(v22 + 8))(v25, v13);
    if ((v32 & 1) == 0)
    {
      return (*(*(a3 - 8) + 32))(v41, v26, a3);
    }

    v33 = v35;
    (*(v34 + 16))(v35, v26, v36);
    (*(*(a3 - 8) + 8))(v26, a3);
    return DropWhileSequence.init(iterator:predicate:)(v33, v29, v28, v37, v38, v41);
  }
}

uint64_t protocol witness for Sequence.makeIterator() in conformance DropWhileSequence<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  DropWhileSequence.makeIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

__objc2_class **Sequence.map<A>(_:)(uint64_t a1, uint64_t a2, Class *a3, char *a4, uint64_t a5)
{
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a5;
  v6[5] = a1;
  v6[6] = a2;
  return _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyADsAE_pqd__Isgnrzr_xABsAE_pSTRzsAE_pRsd_0_r_0_lIetMgnozo_Tpq5Tm(thunk for @callee_guaranteed (@in_guaranteed A.Sequence.Element) -> (@out A1, @error @owned Error)partial apply, v6, a3, a4, a5);
}

uint64_t Collection<>.split(separator:maxSplits:omittingEmptySubsequences:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, _BYTE *, uint64_t, uint64_t))
{
  v23 = a8;
  v10 = v8;
  v17 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  (*(v17 + 16))(&v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v19);
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a1;
  v20 = v23(a2, a3, a7, v24, a4, a5);
  (*(v17 + 8))(v10, a4);
  return v20;
}

void Sequence.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(uint64_t a1, char a2, uint64_t (*a3)(char *), uint64_t a4, Class *a5, uint64_t a6)
{
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(a6 + 56))(a5, a6);
  swift_getAssociatedTypeWitness(255, a6, a5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v15 = type metadata accessor for Array(0, v12, v13, v14);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v15, v16);
  Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(a1, a2 & 1, a3, a4, v15, WitnessTable);
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(Swift::String::Index *a1, uint64_t a2, uint64_t a3, Swift::String::Index position, Swift::UInt64 a5, Swift::UInt64 a6, Swift::UInt64 a7)
{
  if (a2)
  {
    if (a3 < 0)
    {
LABEL_33:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      v7 = 0;
      v8 = a5 >> 14;
      v9 = (a6 >> 59) & 1;
      if ((a7 & 0x1000000000000000) == 0)
      {
        LOBYTE(v9) = 1;
      }

      v10 = 4 << v9;
      v11 = position._rawBits >> 14;
      v12 = a7 & 0xFFFFFFFFFFFFFFLL;
      v13 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v14 = HIBYTE(a7) & 0xF;
      }

      else
      {
        v14 = a6 & 0xFFFFFFFFFFFFLL;
      }

      rawBits = position._rawBits;
      while (1)
      {
        if (a3 == v7)
        {
          goto LABEL_33;
        }

        v16 = rawBits >> 14;
        if (rawBits >> 14 == v8)
        {
          goto LABEL_36;
        }

        v17 = rawBits & 0xC;
        v18 = rawBits;
        if (v17 == v10)
        {
          v68 = v7;
          v73 = a1;
          v64 = a2;
          v78 = a3;
          v83 = a5;
          v22 = a7;
          v23 = a6;
          v24 = position._rawBits;
          v25 = v8;
          v26 = v12;
          v88 = v13;
          v27 = v14;
          v28._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
          v14 = v27;
          a5 = v83;
          v13 = v88;
          v12 = v26;
          v8 = v25;
          position._rawBits = v24;
          a6 = v23;
          a7 = v22;
          v18 = v28._rawBits;
          a2 = v64;
          v7 = v68;
          a1 = v73;
          a3 = v78;
          v16 = v18 >> 14;
          if (v18 >> 14 < v11)
          {
LABEL_37:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

        else if (v16 < v11)
        {
          goto LABEL_37;
        }

        if (v16 >= v8)
        {
          goto LABEL_37;
        }

        if ((a7 & 0x1000000000000000) != 0)
        {
          v69 = v7;
          v74 = a1;
          v65 = a2;
          v79 = a3;
          v84 = a5;
          v29 = a7;
          v30 = a6;
          v31 = position._rawBits;
          v32 = v8;
          v33 = v12;
          v89 = v13;
          v34 = v14;
          v35 = String.UTF8View._foreignSubscript(position:)(v18);
          v14 = v34;
          a5 = v84;
          v13 = v89;
          v12 = v33;
          v8 = v32;
          position._rawBits = v31;
          a6 = v30;
          a7 = v29;
          v21 = v35;
          a2 = v65;
          v7 = v69;
          a1 = v74;
          a3 = v79;
          if (v17 != v10)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v19 = v18 >> 16;
          if ((a7 & 0x2000000000000000) != 0)
          {
            v92[0] = a6;
            v92[1] = v12;
            v21 = *(v92 + v19);
            if (v17 != v10)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v20 = v13;
            if ((a6 & 0x1000000000000000) == 0)
            {
              v72 = v7;
              v77 = a1;
              v63 = v10;
              v67 = a2;
              v55 = a7;
              v56 = a6;
              v82 = v12;
              v87 = a5;
              v57 = position._rawBits;
              v58 = a3;
              v59 = v8;
              v91 = v13;
              v60 = v14;
              v61 = _StringObject.sharedUTF8.getter(a6, a7);
              v14 = v60;
              a5 = v87;
              v13 = v91;
              v8 = v59;
              v10 = v63;
              a2 = v67;
              a3 = v58;
              position._rawBits = v57;
              a6 = v56;
              a7 = v55;
              v20 = v61;
              v7 = v72;
              a1 = v77;
              v12 = v82;
            }

            v21 = v20[v19];
            if (v17 != v10)
            {
LABEL_22:
              if ((a7 & 0x1000000000000000) != 0)
              {
                goto LABEL_28;
              }

              goto LABEL_23;
            }
          }
        }

        v70 = v7;
        v75 = a1;
        v36._rawBits = rawBits;
        v66 = a2;
        v80 = a3;
        v37 = a7;
        v38 = a6;
        v39 = a5;
        v40 = position._rawBits;
        v41 = v8;
        v42 = v12;
        v43 = v13;
        v44 = v14;
        v85 = v21;
        v45._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v36)._rawBits;
        v21 = v85;
        v14 = v44;
        v13 = v43;
        v12 = v42;
        v8 = v41;
        a2 = v66;
        v7 = v70;
        position._rawBits = v40;
        a5 = v39;
        a6 = v38;
        a7 = v37;
        rawBits = v45._rawBits;
        a1 = v75;
        a3 = v80;
        if ((v37 & 0x1000000000000000) != 0)
        {
LABEL_28:
          v86 = v21;
          v90 = v13;
          v76 = v8;
          v81 = v12;
          if (v14 <= rawBits >> 16)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v46 = a2;
          v47 = a3;
          v48 = position._rawBits;
          v49 = a1;
          v50 = a5;
          v51 = v14;
          v52._rawBits = rawBits;
          v71 = a7;
          v53 = a6;
          v54._rawBits = String.UTF8View._foreignIndex(after:)(v52)._rawBits;
          a6 = v53;
          a7 = v71;
          v8 = v76;
          rawBits = v54._rawBits;
          a5 = v50;
          a1 = v49;
          position._rawBits = v48;
          a3 = v47;
          a2 = v46;
          v12 = v81;
          v13 = v90;
          v14 = v51;
          v21 = v86;
          goto LABEL_30;
        }

LABEL_23:
        rawBits = (rawBits & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_30:
        *(a2 + v7++) = v21;
        if (a3 == v7)
        {
          goto LABEL_35;
        }
      }
    }

    rawBits = position._rawBits;
LABEL_35:
    v7 = a3;
  }

  else
  {
    v7 = 0;
    rawBits = position._rawBits;
  }

LABEL_36:
  a1->_rawBits = position._rawBits;
  a1[1]._rawBits = a5;
  a1[2]._rawBits = a6;
  a1[3]._rawBits = a7;
  a1[4]._rawBits = rawBits;
  return v7;
}