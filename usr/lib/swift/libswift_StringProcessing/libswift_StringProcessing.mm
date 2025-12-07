BOOL Collection<>.contains<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for Range();
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  Collection<>.firstRange<A>(of:)(a1, a2, a3, a4, a5, a6, &v19 - v15);
  v17 = (*(*(v12 - 8) + 48))(v16, 1, v12) != 1;
  (*(v14 + 8))(v16, v13);
  return v17;
}

uint64_t Collection<>.firstRange<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v83 = a6;
  v87 = a4;
  v88 = a7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  v14 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v80 - v15;
  v17 = *(v14 + 48);
  v18 = *(a2 - 8);
  (*(v18 + 16))(&v80 - v15, v7, a2);
  v86 = *(a3 - 8);
  (*(v86 + 16))(&v16[v17], a1, a3);
  if (swift_dynamicCast())
  {
    v84 = v17;
    v85 = v18;
    if (swift_dynamicCast())
    {
      v83 = a3;
      v19 = String.subscript.getter();
      v82 = v20;
      v22 = v21;
      v24 = v23;

      v25 = String.subscript.getter();
      v27 = v26;
      v29 = v28;
      v31 = v30;

      v32 = Substring._firstRangeSubstring(of:)(v25, v27, v29, v31, v19, v82, v22, v24);
      v34 = v33;
      v36 = v35;

      if (v36)
      {
LABEL_4:
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        v37 = type metadata accessor for Range();
        (*(*(v37 - 8) + 56))(v88, 1, 1, v37);
LABEL_8:
        v13 = v85;
        (*(v86 + 8))(&v16[v84], v83);
        return (*(v13 + 8))(v16, a2);
      }

LABEL_7:
      v89 = v32;
      v90 = v34;
      swift_getCanonicalSpecializedMetadata();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      v51 = type metadata accessor for Range();
      v52 = v88;
      swift_dynamicCast();
      (*(*(v51 - 8) + 56))(v52, 0, 1, v51);
      goto LABEL_8;
    }

    if (swift_dynamicCast())
    {
      v38 = v95;
      v39 = v96;
      v40 = v98;
      v82 = v97;
      v83 = a3;
      v41 = String.subscript.getter();
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v32 = Substring._firstRangeSubstring(of:)(v41, v43, v45, v47, v38, v39, v82, v40);
      v34 = v48;
      v50 = v49;

      if (v50)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }

    v17 = v84;
    v18 = v85;
  }

  if (!swift_dynamicCast())
  {
    goto LABEL_21;
  }

  v84 = v17;
  v85 = v18;
  v81 = v95;
  v82 = v96;
  v54 = v97;
  v53 = v98;
  if (swift_dynamicCast())
  {
    v55 = a3;
    v56 = String.subscript.getter();
    v58 = v57;
    v60 = v59;
    v62 = v61;

    v63 = Substring._firstRangeSubstring(of:)(v81, v82, v54, v53, v56, v58, v60, v62);
    v65 = v64;
    LOBYTE(v58) = v66;

    if (v58)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      v67 = type metadata accessor for Range();
      (*(*(v67 - 8) + 56))(v88, 1, 1, v67);
    }

    else
    {
      v89 = v63;
      v90 = v65;
      swift_getCanonicalSpecializedMetadata();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      v75 = type metadata accessor for Range();
      v76 = v88;
      swift_dynamicCast();
      (*(*(v75 - 8) + 56))(v76, 0, 1, v75);
    }

    v13 = v85;
    (*(v86 + 8))(&v16[v84], v55);
    return (*(v13 + 8))(v16, a2);
  }

  v80 = v54;
  v68 = v82;
  if (!swift_dynamicCast())
  {

LABEL_21:
    Collection<>._firstRangeGeneric<A>(of:)(a1, a2, a3, v87, a5, v83, v88);
    a2 = TupleTypeMetadata2;
    return (*(v13 + 8))(v16, a2);
  }

  v69 = Substring._firstRangeSubstring(of:)(v81, v68, v80, v53, v91, v92, v93, v94);
  v71 = v70;
  v73 = v72;

  if (v73)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v74 = type metadata accessor for Range();
    (*(*(v74 - 8) + 56))(v88, 1, 1, v74);
  }

  else
  {
    v89 = v69;
    v90 = v71;
    swift_getCanonicalSpecializedMetadata();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v78 = type metadata accessor for Range();
    v79 = v88;
    swift_dynamicCast();
    (*(*(v78 - 8) + 56))(v79, 0, 1, v78);
  }

  v13 = v85;
  (*(v86 + 8))(&v16[v84], a3);
  return (*(v13 + 8))(v16, a2);
}

uint64_t BidirectionalCollection<>.firstRange<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v84 = a5;
  v88 = a4;
  v89 = a7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  v14 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v81 - v15;
  v17 = *(v14 + 48);
  v18 = *(a2 - 8);
  (*(v18 + 16))(&v81 - v15, v7, a2);
  v87 = *(a3 - 8);
  (*(v87 + 16))(&v16[v17], a1, a3);
  if (!swift_dynamicCast())
  {
    goto LABEL_10;
  }

  v85 = v17;
  v86 = v18;
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      v38 = v96;
      v39 = v97;
      v40 = v99;
      v83 = v98;
      v84 = a3;
      v41 = String.subscript.getter();
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v32 = Substring._firstRangeSubstring(of:)(v41, v43, v45, v47, v38, v39, v83, v40);
      v34 = v48;
      v50 = v49;

      if (v50)
      {
        goto LABEL_4;
      }

LABEL_7:
      v90 = v32;
      v91 = v34;
      swift_getCanonicalSpecializedMetadata();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      v51 = type metadata accessor for Range();
      v52 = v89;
      swift_dynamicCast();
      (*(*(v51 - 8) + 56))(v52, 0, 1, v51);
      goto LABEL_8;
    }

    v17 = v85;
    v18 = v86;
LABEL_10:
    if (swift_dynamicCast())
    {
      v85 = v17;
      v86 = v18;
      v82 = v96;
      v83 = v97;
      v55 = v98;
      v54 = v99;
      if (swift_dynamicCast())
      {
        v56 = a3;
        v57 = String.subscript.getter();
        v59 = v58;
        v61 = v60;
        v63 = v62;

        v64 = Substring._firstRangeSubstring(of:)(v82, v83, v55, v54, v57, v59, v61, v63);
        v66 = v65;
        LOBYTE(v59) = v67;

        if (v59)
        {
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          v68 = type metadata accessor for Range();
          (*(*(v68 - 8) + 56))(v89, 1, 1, v68);
        }

        else
        {
          v90 = v64;
          v91 = v66;
          swift_getCanonicalSpecializedMetadata();
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          v76 = type metadata accessor for Range();
          v77 = v89;
          swift_dynamicCast();
          (*(*(v76 - 8) + 56))(v77, 0, 1, v76);
        }

        v53 = v56;
        goto LABEL_19;
      }

      v81 = v55;
      v69 = v83;
      if (swift_dynamicCast())
      {
        v70 = Substring._firstRangeSubstring(of:)(v82, v69, v81, v54, v92, v93, v94, v95);
        v72 = v71;
        v74 = v73;

        if (v74)
        {
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          v75 = type metadata accessor for Range();
          (*(*(v75 - 8) + 56))(v89, 1, 1, v75);
        }

        else
        {
          v90 = v70;
          v91 = v72;
          swift_getCanonicalSpecializedMetadata();
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          v79 = type metadata accessor for Range();
          v80 = v89;
          swift_dynamicCast();
          (*(*(v79 - 8) + 56))(v80, 0, 1, v79);
        }

        (*(v87 + 8))(&v16[v85], a3);
        goto LABEL_20;
      }
    }

    Collection<>._firstRangeGeneric<A>(of:)(a1, a2, a3, *(v88 + 8), v84, *(a6 + 8), v89);
    a2 = TupleTypeMetadata2;
    return (*(v13 + 8))(v16, a2);
  }

  v84 = a3;
  v19 = String.subscript.getter();
  v83 = v20;
  v22 = v21;
  v24 = v23;

  v25 = String.subscript.getter();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = Substring._firstRangeSubstring(of:)(v25, v27, v29, v31, v19, v83, v22, v24);
  v34 = v33;
  v36 = v35;

  if ((v36 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v37 = type metadata accessor for Range();
  (*(*(v37 - 8) + 56))(v89, 1, 1, v37);
LABEL_8:
  v53 = v84;
LABEL_19:
  (*(v87 + 8))(&v16[v85], v53);
LABEL_20:
  v13 = v86;
  return (*(v13 + 8))(v16, a2);
}

Swift::Bool __swiftcall StringProtocol.contains(_:)(Swift::String a1)
{
  v3 = v1;
  v7 = a1;
  v4 = *(v2 + 8);
  v5 = lazy protocol witness table accessor for type String and conformance String();
  BidirectionalCollection<>.firstRange<A>(of:)(&v7, v3, MEMORY[0x1E69E6158], v4, v5, MEMORY[0x1E69E5EF0], v8);
  return (v8[16] & 1) == 0;
}

BOOL StringProtocol.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  v7 = *(a6 + 8);
  v8 = lazy protocol witness table accessor for type Substring and conformance Substring();
  BidirectionalCollection<>.firstRange<A>(of:)(v10, a5, MEMORY[0x1E69E67B0], v7, v8, MEMORY[0x1E69E5EF0], v11);
  return (v11[16] & 1) == 0;
}

uint64_t BidirectionalCollection<>.contains<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 16))(&v14, a3, a5);
  Collection.subscript.getter();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Regex(0, AssociatedTypeWitness, v6, v7);
  Regex.firstMatch(in:)(v10, v11, v12, v13, v8, &v15);

  if (!v16)
  {
    return 0;
  }

  outlined consume of Regex<A1.RegexOutput>.Match?<A><A1>(v15, v16, v17);
  return 1;
}

uint64_t Regex.firstMatch(in:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = type metadata accessor for MEProgram(0);
  result = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v16 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 14 < a1 >> 14)
  {
    __break(1u);
  }

  else
  {
    Regex.Program.loweredProgram.getter(v15);
    static Executor.firstMatch(_:_:subjectBounds:searchBounds:)(v15, a3, a4, a1, a2, a1, a2, *(a5 + 16), a6);
    return outlined destroy of MEProgram(v15, type metadata accessor for MEProgram);
  }

  return result;
}

unint64_t Substring._firstRangeSubstring(of:)(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8)
{
  if (a6 >> 14 < a5 >> 14)
  {
    __break(1u);
  }

  else
  {
    v67 = v8;
    v68 = v9;
    v17 = result;

    v18 = Substring.subscript.getter();
    v42 = a8;
    v43 = a7;
    v20 = v19;
    v22 = v21;
    v23 = a2;
    v24 = a3;
    v26 = v25;

    v27 = v26;
    v28 = v24;
    v29 = v23;
    v30 = specialized SubstringSearcher.State.init(text:pattern:)(v18, v20, v22, v27, v17, v23, v28, a4);
    v34 = v32;
    v35 = v33 & 1;
    LOBYTE(v55) = v33 & 1;
    v36 = v17;
    if (v33)
    {
      v37 = 0;
      v39 = v42;
      v38 = v43;
    }

    else
    {
      v55 = a5;
      v56 = a6;
      v39 = v42;
      v57 = v43;
      v58 = v42;
      v59 = v17;
      v60 = v29;
      v61 = v28;
      v62 = a4;
      v63 = v30;
      v64 = v31;
      v65 = v32;
      v66 = v33 & 1;
      v40 = v30;
      v41 = v31;
      SubstringSearcher.nextRange(in:searchFromEnd:)(a5, a6, v43, v32, v44);
      v31 = v41;
      v30 = v40;
      v37 = v44[0];
      v34 = v45;
      v35 = v46;
      v54 = v46;
      v38 = v43;
    }

    v44[0] = a5;
    v44[1] = a6;
    v44[2] = v38;
    v45 = v39;
    v46 = v36;
    v47 = v29;
    v48 = v28;
    v49 = a4;
    v50 = v30;
    v51 = v31;
    v52 = v34;
    v53 = v35;
    outlined destroy of SubstringSearcher(v44);
    return v37;
  }

  return result;
}

uint64_t Collection<>._firstRangeGeneric<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v70 = a6;
  v66 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = *(TupleTypeMetadata2 - 8);
  v13 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v60 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v62 = &v54 - v16;
  v64 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v68 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v67 = &v54 - v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v63 = type metadata accessor for Range();
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v57 = &v54 - v20;
  v21 = swift_getAssociatedTypeWitness();
  v58 = *(v21 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = (&v54 - v23);
  MEMORY[0x1EEE9AC00](v22);
  (*(v26 + 16))(&v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v27 = swift_getAssociatedTypeWitness();
  v28 = a5;
  v29 = Array.init<A>(_:)();
  v30 = swift_allocObject();
  v30[2] = a2;
  v30[3] = a3;
  v30[4] = a4;
  v30[5] = v28;
  v30[6] = v70;
  v30[7] = v27;
  v31 = swift_getAssociatedConformanceWitness();
  v32 = v29;
  v33 = v67;
  v70 = v21;
  v34 = ZSearcher.init(pattern:by:)(v32, partial apply for implicit closure #1 in Collection<>._firstRangeGeneric<A>(of:), v30, v21, v31);
  v36 = v35;
  v54 = v37;
  v55 = v38;
  v56 = v24;
  v39 = v68;
  Collection.subscript.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v40 = AssociatedTypeWitness;
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v42 = v64;
    v43 = *(v64 + 32);
    v71 = v31;
    v44 = v62;
    v43(v62, v33, AssociatedTypeWitness);
    v45 = TupleTypeMetadata2;
    v43(&v44[*(TupleTypeMetadata2 + 48)], v39, AssociatedTypeWitness);
    AssociatedConformanceWitness = v36;
    v46 = v65;
    v47 = v60;
    (*(v65 + 16))(v60, v44, v45);
    v67 = *(v45 + 48);
    v48 = v57;
    v43(v57, v47, v40);
    v68 = v34;
    v49 = *(v42 + 8);
    v49(&v67[v47], v40);
    (*(v46 + 32))(v47, v44, v45);
    v50 = *(v45 + 48);
    v51 = v63;
    v43((v48 + *(v63 + 36)), &v47[v50], v40);
    v49(v47, v40);
    v52 = v56;
    v53 = v70;
    ZSearcher.search(_:in:)(v56, v48, v68, AssociatedConformanceWitness, v54, v55, v70, v71, v66);

    (*(v61 + 8))(v48, v51);
    return (*(v58 + 8))(v52, v53);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

uint64_t ZSearcher.init(pattern:by:)(uint64_t a1, uint64_t (*a2)(char *, char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  zAlgorithm<A>(_:by:)(a1, a2, a3, AssociatedTypeWitness);
  return a1;
}

unint64_t specialized ZSearcher.search(_:in:)(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t *, uint64_t *))
{
  v10 = result;
  v11 = 0;
  v12 = 0;
  v28 = a8 + 32;
  v31 = a2 >> 14;
  v30 = (a7 + 40);
  v13 = a5;
  while (1)
  {
    v14 = a5 >> 14;
    v15 = v13 >> 14;
    if (a5 >> 14 >= v13 >> 14)
    {
      v35 = *(a7 + 16);
      if (!v35)
      {
        return a5;
      }

      v33 = a5;
      v34 = a5 >> 14;
      v12 = 0;
      v13 = a5;
      v23 = v30;
      while ((v13 ^ a6) >= 0x4000)
      {
        v38 = v12;
        v24 = *v23;
        v41 = *(v23 - 1);
        v42 = v24;

        v39 = Substring.subscript.getter();
        v40 = v25;
        v26 = a9(&v41, &v39);

        if ((v26 & 1) == 0)
        {
          v11 = 0;
          v14 = v34;
          v12 = v38;
          goto LABEL_25;
        }

        v12 = v38 + 1;
        result = Substring.index(after:)();
        v13 = result;
        v23 += 2;
        if (v35 == v38 + 1)
        {
          goto LABEL_29;
        }
      }

      v11 = 0;
LABEL_24:
      v14 = v34;
      goto LABEL_25;
    }

    if (v11 >= *(a8 + 16))
    {
      goto LABEL_37;
    }

    if (*(v28 + 8 * v11) >= v12)
    {
      break;
    }

LABEL_25:
    if (v14 == v31)
    {
      return 0;
    }

    result = Substring.index(after:)();
    a5 = result;
    ++v11;
    if (__OFSUB__(v12--, 1))
    {
      __break(1u);
LABEL_29:
      if (v34 > v13 >> 14)
      {
        goto LABEL_38;
      }

      return v33;
    }
  }

  v16 = *(a7 + 16);
  if (v12 == v16)
  {
LABEL_31:
    if (v15 < v14)
    {
      goto LABEL_39;
    }

    return a5;
  }

  v33 = a5;
  v34 = a5 >> 14;
  v37 = v10;
  v17 = &v30[2 * v12];
  while (1)
  {
    if ((v13 ^ a6) < 0x4000)
    {
      v11 = 0;
LABEL_23:
      v10 = v37;
      goto LABEL_24;
    }

    if (v12 >= v16)
    {
      break;
    }

    v18 = *v17;
    v41 = *(v17 - 1);
    v42 = v18;

    v19 = a4;
    v39 = Substring.subscript.getter();
    v40 = v20;
    v21 = a9(&v41, &v39);

    if ((v21 & 1) == 0)
    {
      v11 = 0;
      a4 = v19;
      goto LABEL_23;
    }

    v22 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_36;
    }

    a4 = v19;
    result = Substring.index(after:)();
    v13 = result;
    ++v12;
    v17 += 2;
    if (v22 == v16)
    {
      v15 = result >> 14;
      a5 = v33;
      v14 = v34;
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t ZSearcher.search(_:in:)@<X0>(void (*a1)(uint64_t, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(char *, char *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v74 = a5;
  v75 = a6;
  v73 = a3;
  v81 = a1;
  v62 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v82 = a8;
  v83 = a7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for Range();
  v15 = type metadata accessor for Optional();
  v69 = *(v15 - 8);
  v70 = v15;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v65 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v68 = &v58 - v19;
  v76 = v14;
  v20 = *(v14 - 8);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v59 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v60 = &v58 - v24;
  v25 = *(AssociatedTypeWitness - 8);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v58 - v29;
  v78 = swift_allocBox();
  v32 = v31;
  v33 = *(v25 + 16);
  v33(v31, a2, AssociatedTypeWitness);
  v77 = swift_allocBox();
  v79 = v34;
  v33(v34, v32, AssociatedTypeWitness);
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  v72 = a2;
  v63 = v33;
  v33(v30, a2, AssociatedTypeWitness);
  v37 = 0;
  v38 = 0;
  v66 = a4 + 32;
  v67 = a4;
  v64 = v25 + 16;
  v80 = (v25 + 8);
  v61 = v20;
  v71 = (v20 + 48);
  ++v69;
  while (1)
  {
    result = dispatch thunk of static Comparable.>= infix(_:_:)();
    if (result)
    {
      v40 = v68;
      compare #1 <A>(start:end:minLength:) in ZSearcher.search(_:in:)(v30, v30, 0, v73, v74, v75, v72, v81, v68, v78, v77, v35, v36, v83, v82);
      v41 = v76;
      v42 = (*v71)(v40, 1, v76);
      v43 = v40;
      if (v42 != 1)
      {
        (*v80)(v30, AssociatedTypeWitness);
        v54 = v61;
        v55 = *(v61 + 32);
        v56 = v60;
        v55(v60, v68, v41);
LABEL_16:
        v53 = v62;
        v55(v62, v56, v41);
        v52 = 0;
        goto LABEL_17;
      }

LABEL_9:
      (*v69)(v43, v70);
      goto LABEL_10;
    }

    v44 = v83;
    if ((v37 & 0x8000000000000000) != 0)
    {
      goto LABEL_20;
    }

    if (v37 >= *(v67 + 16))
    {
      goto LABEL_21;
    }

    if (*(v66 + 8 * v37) >= v38)
    {
      v63(v28, v79, AssociatedTypeWitness);
      v57 = v44;
      v45 = v65;
      compare #1 <A>(start:end:minLength:) in ZSearcher.search(_:in:)(v30, v28, v38, v73, v74, v75, v72, v81, v65, v78, v77, v35, v36, v57, v82);
      v46 = *v80;
      (*v80)(v28, AssociatedTypeWitness);
      v41 = v76;
      v47 = (*v71)(v45, 1, v76);
      v43 = v45;
      if (v47 != 1)
      {
        v46(v30, AssociatedTypeWitness);
        v54 = v61;
        v55 = *(v61 + 32);
        v56 = v59;
        v55(v59, v65, v41);
        goto LABEL_16;
      }

      goto LABEL_9;
    }

LABEL_10:
    dispatch thunk of Collection.endIndex.getter();
    v48 = dispatch thunk of static Equatable.== infix(_:_:)();
    v49 = *v80;
    (*v80)(v28, AssociatedTypeWitness);
    if (v48)
    {
      v49(v30, AssociatedTypeWitness);
      v52 = 1;
      v53 = v62;
      v41 = v76;
      v54 = v61;
LABEL_17:
      (*(v54 + 56))(v53, v52, 1, v41);
    }

    result = dispatch thunk of Collection.formIndex(after:)();
    v50 = *(v35 + 16);
    v37 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    *(v35 + 16) = v37;
    v51 = *(v36 + 16);
    v38 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
      goto LABEL_19;
    }

    *(v36 + 16) = v38;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t BidirectionalCollection<>.firstRange<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Collection.subscript.getter();
  v7 = v18;
  v8 = v19;
  v10 = v20;
  v9 = v21;
  (*(a5 + 16))(&v17, a3, a5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for Regex(0, AssociatedTypeWitness, v12, v13);
  Regex.firstMatch(in:)(v7, v8, v10, v9, v14, &v18);

  if (!v19)
  {
    return 0;
  }

  v15 = v21;
  outlined consume of Regex<A1.RegexOutput>.Match?<A><A1>(v18, v19, v20);
  return v15;
}

uint64_t RangesSequence.init(input:searcher:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a5, a1, AssociatedTypeWitness);
  v12 = type metadata accessor for RangesSequence(0, a3, a4, v11);
  v13 = *(*(a3 - 8) + 32);
  v14 = a5 + *(v12 + 36);

  return v13(v14, a2, a3);
}

uint64_t RangesSequence.Iterator.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v51 = *(TupleTypeMetadata2 - 8);
  v8 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v46 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v47 = &v40 - v11;
  v44 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - v15;
  swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for Range();
  v49 = *(v17 - 8);
  v50 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  v52 = a2;
  v53 = a3;
  v21 = type metadata accessor for RangesSequence(0, a2, a3, v20);
  v43 = *(v21 - 8);
  (*(v43 + 16))(v55, a1, v21);
  v45 = v21;
  v42 = *(v21 + 36);
  swift_checkMetadataState();
  dispatch thunk of Collection.startIndex.getter();
  v54 = a1;
  dispatch thunk of Collection.endIndex.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v23 = v44;
    v24 = *(v44 + 32);
    v25 = v47;
    v24(v47, v16, AssociatedTypeWitness);
    v26 = v19;
    v41 = v19;
    v27 = TupleTypeMetadata2;
    v24(&v25[*(TupleTypeMetadata2 + 48)], v14, AssociatedTypeWitness);
    v28 = v51;
    v29 = v46;
    (*(v51 + 16))(v46, v25, v27);
    v30 = *(v27 + 48);
    v24(v26, v29, AssociatedTypeWitness);
    v31 = *(v23 + 8);
    v31(&v29[v30], AssociatedTypeWitness);
    (*(v28 + 32))(v29, v25, v27);
    v32 = *(v27 + 48);
    v33 = v50;
    v34 = v41;
    v24(&v41[*(v50 + 36)], &v29[v32], AssociatedTypeWitness);
    v31(v29, AssociatedTypeWitness);
    v36 = v52;
    v35 = v53;
    v37 = *(v53 + 32);
    type metadata accessor for RangesSequence.Iterator(0, v52, v53, v38);
    v39 = v54;
    v37(v54, v34, v36, v35);
    (*(v43 + 8))(v39, v45);
    return (*(v49 + 8))(v34, v33);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t RangesSequence.Iterator.next()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  type metadata accessor for RangesSequence(0, v7, v8, a4);
  return (*(v8 + 40))(v5, v5 + *(a1 + 36), v7, v8);
}

uint64_t RangesSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5);
  return RangesSequence.Iterator.init(_:)(v5, *(a1 + 16), *(a1 + 24), a2);
}

uint64_t Collection._ranges<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v15);
  (*(v8 + 16))(v11, a1, a2);
  return RangesSequence.init(input:searcher:)(v13, v11, a2, a3, a4);
}

uint64_t specialized Collection<>._ranges<A>(of:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = String.count.getter();
  if (v14)
  {
    v15 = v14;
    v16 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSJ_Tt1gq5(v14, 0);

    v17 = specialized Sequence._copySequenceContents(initializing:)(v59, v16 + 2, v15, a1, a2);

    if (v17 == v15)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_5:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_18E5ED040;
  countAndFlagsBits = v16[1].value._countAndFlagsBits;
  *(result + 32) = countAndFlagsBits;
  if (countAndFlagsBits < 2 || (result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, countAndFlagsBits, 0, result), v48 = v16[1].value._countAndFlagsBits, v48 < 2))
  {
LABEL_6:
    *a7 = a3;
    a7[1] = a4;
    a7[2] = a5;
    a7[3] = a6;
    a7[4] = v16;
    a7[5] = result;
    a7[6] = _sSl17_StringProcessingSQ7ElementRpzrlE7_ranges2ofAA14RangesSequenceVyAA9ZSearcherVyxGGqd___tSlRd__ABQyd__ACRSlFSbAC_ACtcfu_Ss_SSTt1G5;
    a7[7] = 0;
  }

  v53 = 0;
  v54 = countAndFlagsBits;
  v20 = 0;
  v21 = 0;
  v55 = -1;
  v57 = 0;
  v58 = 1;
  while (1)
  {
    --v54;
    v24 = v20 - v58;
    v56 = result;
    if (v20 <= v58)
    {
      break;
    }

    v25 = v58 - v21;
    if (__OFSUB__(v58, v21))
    {
      goto LABEL_61;
    }

    if ((v25 & 0x8000000000000000) != 0)
    {
      goto LABEL_62;
    }

    v26 = *(result + 16);
    if (v25 >= v26)
    {
      goto LABEL_63;
    }

    v27 = *(result + 8 * v25 + 32);
    if (v27 < v24)
    {
      v22 = *(result + 24);
      v23 = v26 + 1;
      if (v26 >= v22 >> 1)
      {
        v41 = *(result + 16);
        v50 = v21;
        v52 = v20;
        v43 = v57;
        v45 = v58;
        v42 = v55;
        v44 = v53;
        goto LABEL_55;
      }
    }

    else
    {
      v28 = v20;
      if (__OFADD__(v58, v24))
      {
        goto LABEL_64;
      }

      if (v20 < countAndFlagsBits)
      {
        v47 = *(result + 16);
        v29 = v20 + v55;
        v30 = v20;
        v31 = v53 + 16 * v20;
        v32 = v16;
        v49 = v31;
        v51 = v20 + v55;
        while (1)
        {
          if (v29 < 0)
          {
            goto LABEL_58;
          }

          v33 = v16[1].value._countAndFlagsBits;
          if (v55 + v28 >= v33)
          {
            goto LABEL_59;
          }

          if (v28 >= v33)
          {
            goto LABEL_60;
          }

          if (*(&v32[1].value._countAndFlagsBits + v31) != v32[v30 + 2].value._countAndFlagsBits || *(&v32[1].value._object + v31) != v32[v30 + 2].value._object)
          {
            v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v31 = v49;
            v29 = v51;
            v36 = v35;
            result = v56;
            if ((v36 & 1) == 0)
            {
              break;
            }
          }

          ++v28;
          ++v32;
          if (countAndFlagsBits == v28)
          {
            v27 = v55 + v28;
            v28 = countAndFlagsBits;
            goto LABEL_48;
          }
        }

        v27 = v55 + v28;
LABEL_48:
        v26 = v47;
        goto LABEL_49;
      }

      v27 = v20 - v58;
LABEL_49:
      v22 = *(result + 24);
      v23 = v26 + 1;
      if (v26 >= v22 >> 1)
      {
        v41 = v26;
        v42 = v55;
        v43 = v57;
        v44 = v53;
        v52 = v28;
LABEL_54:
        v45 = v58;
        v50 = v58;
LABEL_55:
        v57 = v43;
        v58 = v45;
        v55 = v42;
        v53 = v44;
        v46 = v23;
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23, 1, v56);
        v23 = v46;
        v21 = v50;
        v20 = v52;
        v26 = v41;
        goto LABEL_12;
      }

      v20 = v28;
      v21 = v58;
    }

LABEL_12:
    *(result + 16) = v23;
    *(result + 8 * v26 + 32) = v27;
    --v55;
    v57 += 16;
    ++v58;
    v53 -= 16;
    if (v58 == v48)
    {
      goto LABEL_6;
    }
  }

  if (v58 >= countAndFlagsBits)
  {
    v27 = 0;
    v20 = v58;
LABEL_44:
    v26 = *(result + 16);
    v22 = *(result + 24);
    v23 = v26 + 1;
    if (v26 >= v22 >> 1)
    {
      v41 = *(result + 16);
      v52 = v20;
      v42 = v55;
      v43 = v57;
      v44 = v53;
      goto LABEL_54;
    }

    v21 = v58;
    goto LABEL_12;
  }

  v27 = 0;
  v37 = v16 + 2;
  while (1)
  {
    v38 = v16[1].value._countAndFlagsBits;
    if (v27 >= v38)
    {
      break;
    }

    if (v58 + v27 >= v38)
    {
      goto LABEL_57;
    }

    if (v37->value._countAndFlagsBits != *(&v37[1].value._countAndFlagsBits + v57) || v37->value._object != *(&v37[1].value._object + v57))
    {
      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
      result = v56;
      if ((v40 & 1) == 0)
      {
        v20 = v58 + v27;
        goto LABEL_44;
      }
    }

    ++v27;
    ++v37;
    if (!(v58 - countAndFlagsBits + v27))
    {
      v27 = v54;
      v20 = countAndFlagsBits;
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

uint64_t Collection<>._ranges<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v14 + 16))(v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = Array.init<A>(_:)();
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  v17[6] = a6;
  v17[7] = AssociatedTypeWitness;
  v24[0] = ZSearcher.init(pattern:by:)(v16, partial apply for implicit closure #1 in Collection<>._ranges<A>(of:), v17, a2, a4);
  v24[1] = v18;
  v24[2] = v19;
  v24[3] = v20;
  v21 = type metadata accessor for ZSearcher(0, a2, a4, v20);
  WitnessTable = swift_getWitnessTable();
  Collection._ranges<A>(of:)(v24, v21, WitnessTable, a7);
}

uint64_t Collection<>.ranges<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v121 = a6;
  v120 = a5;
  v127 = a4;
  v10 = type metadata accessor for ZSearcher(255, a2, a4, a4);
  WitnessTable = swift_getWitnessTable();
  v119 = type metadata accessor for RangesSequence(0, v10, WitnessTable, v12);
  MEMORY[0x1EEE9AC00](v119);
  v14 = &v116 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(TupleTypeMetadata2 - 8);
  v17 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v19 = &v116 - v18;
  v20 = *(v17 + 48);
  v21 = *(a2 - 8);
  v22 = *(v21 + 16);
  v122 = v6;
  v23 = v6;
  v24 = a1;
  v129 = a2;
  v22(&v116 - v18, v23, a2);
  v125 = *(a3 - 8);
  (*(v125 + 16))(&v19[v20], a1, a3);
  v25 = swift_dynamicCast();
  v126 = v20;
  v128 = v19;
  if (v25)
  {
    v123 = v21;
    v124 = a3;
    if (swift_dynamicCast())
    {
      v26 = String.subscript.getter();
      v28 = v27;
      v122 = v29;
      v31 = v30;

      v32 = String.subscript.getter();
      v34 = v33;
      v36 = v35;
      v38 = v37;

      if (v28 >> 14 >= v26 >> 14)
      {

        v121 = v26;
        v40 = v36;
        v41 = v122;
        v42 = Substring.subscript.getter();
        v43 = v32;
        v45 = v44;
        v120 = v28;
        v46 = v38;
        v48 = v47;
        v50 = v49;

        v51 = specialized SubstringSearcher.State.init(text:pattern:)(v42, v45, v48, v50, v43, v34, v40, v46);
        v55 = v54 & 1;
        v130 = v54 & 1;
        *&v139 = v121;
        *(&v139 + 1) = v120;
        v140 = v41;
        v141 = v31;
        v142 = v43;
        v143 = v34;
        v144 = v40;
        v145 = v46;
LABEL_17:
        v146 = v51;
        v147 = v52;
        v148 = v53;
        v149 = v55;
        specialized _copySequenceToContiguousArray<A>(_:)(&v139);
        outlined destroy of SubstringSearcher(&v139);
        swift_getCanonicalSpecializedMetadata();
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        type metadata accessor for Range();
        v115 = _arrayForceCast<A, B>(_:)();

        (*(v125 + 8))(&v128[v126], v124);
        v16 = v123;
LABEL_20:
        (*(v16 + 8))(v128, v129);
        return v115;
      }

      __break(1u);
      goto LABEL_22;
    }

    if (swift_dynamicCast())
    {
      v56 = v135;
      v57 = v136;
      v58 = v137;
      v59 = v138;
      v122 = String.subscript.getter();
      v61 = v60;
      v121 = v62;
      v64 = v63;

      if (v57 >> 14 >= v56 >> 14)
      {

        v65 = Substring.subscript.getter();
        v67 = v66;
        v69 = v68;
        v71 = v70;

        v72 = v67;
        v73 = v69;
        v74 = v122;
        v75 = v121;
        v51 = specialized SubstringSearcher.State.init(text:pattern:)(v65, v72, v73, v71, v122, v61, v121, v64);
        v55 = v76 & 1;
        v130 = v76 & 1;
        *&v139 = v56;
        *(&v139 + 1) = v57;
        v140 = v58;
        v141 = v59;
        v142 = v74;
        v143 = v61;
        v144 = v75;
        v145 = v64;
        goto LABEL_17;
      }

      goto LABEL_23;
    }

    a3 = v124;
    v21 = v123;
  }

  if (!swift_dynamicCast())
  {
LABEL_19:
    Collection<>._ranges<A>(of:)(v24, v129, a3, v127, v120, v121, v14);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Range();
    swift_getWitnessTable();
    v115 = Array.init<A>(_:)();
    v129 = TupleTypeMetadata2;
    goto LABEL_20;
  }

  v117 = v135;
  v118 = v136;
  v78 = v137;
  v77 = v138;
  if (swift_dynamicCast())
  {
    v122 = v78;
    v123 = v21;
    v124 = a3;
    v79 = String.subscript.getter();
    v81 = v80;
    v83 = v82;
    v85 = v84;

    if (v81 >> 14 < v79 >> 14)
    {
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v86 = Substring.subscript.getter();
    v88 = v87;
    v90 = v89;
    v92 = v91;

    v93 = v86;
    v94 = v88;
    v95 = v90;
    v96 = v117;
    v97 = v118;
    v98 = v122;
    v51 = specialized SubstringSearcher.State.init(text:pattern:)(v93, v94, v95, v92, v117, v118, v122, v77);
    v55 = v99 & 1;
    v130 = v99 & 1;
    *&v139 = v79;
    *(&v139 + 1) = v81;
    v140 = v83;
    v141 = v85;
LABEL_16:
    v142 = v96;
    v143 = v97;
    v144 = v98;
    v145 = v77;
    goto LABEL_17;
  }

  result = swift_dynamicCast();
  if (!result)
  {

    goto LABEL_19;
  }

  v122 = v78;
  v123 = v21;
  v124 = a3;
  v100 = v131;
  v101 = v132;
  if (v132 >> 14 >= v131 >> 14)
  {
    v102 = v133;
    v103 = v134;

    v104 = Substring.subscript.getter();
    v106 = v105;
    v108 = v107;
    v110 = v109;

    v111 = v104;
    v112 = v106;
    v113 = v108;
    v96 = v117;
    v97 = v118;
    v98 = v122;
    v51 = specialized SubstringSearcher.State.init(text:pattern:)(v111, v112, v113, v110, v117, v118, v122, v77);
    v55 = v114 & 1;
    v130 = v114 & 1;
    *&v139 = v100;
    *(&v139 + 1) = v101;
    v140 = v102;
    v141 = v103;
    goto LABEL_16;
  }

LABEL_24:
  __break(1u);
  return result;
}

int *RegexRangesSequence.init(input:subjectBounds:searchBounds:regex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = type metadata accessor for MEProgram(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Regex.Program.loweredProgram.getter(v19);

  outlined init with take of DSLTree.QuantificationKind(v19, a9, type metadata accessor for MEProgram);
  result = type metadata accessor for Executor.Matches(0, a8, v20, v21);
  v23 = (a9 + result[7]);
  *v23 = a1;
  v23[1] = a2;
  v24 = (a9 + result[8]);
  *v24 = a3;
  v24[1] = a4;
  v25 = (a9 + result[9]);
  *v25 = a5;
  v25[1] = a6;
  return result;
}

uint64_t Regex.Program.loweredProgram.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for MEProgram(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing9MEProgramVSgMd, &_s17_StringProcessing9MEProgramVSgMR);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - v16;
  loadProgram #1 <A>() in Regex.Program.loweredProgram.getter(v2, &v28 - v16);
  v18 = *(v6 + 48);
  if (v18(v17, 1, v5) != 1)
  {
    v11 = v17;
    return outlined init with take of DSLTree.QuantificationKind(v11, a1, type metadata accessor for MEProgram);
  }

  v28 = v4;
  v29 = a1;
  outlined destroy of SplitSequence<SubstringSearcher>(v17, &_s17_StringProcessing9MEProgramVSgMd, &_s17_StringProcessing9MEProgramVSgMR);
  v19 = v2[3];
  v20 = v2[4];
  type metadata accessor for Compiler();
  inited = swift_initStackObject();
  inited[2] = v19;
  inited[3] = &outlined read-only object #0 of Regex.Program.loweredProgram.getter;
  inited[4] = v20;

  Compiler.emit()(v11);
  type metadata accessor for Regex.Program.ProgramBox(0, *(v28 + 80), v22, v23);
  outlined init with copy of DSLTree._AST.AbsentFunction(v11, v9, type metadata accessor for MEProgram);
  v24 = swift_allocObject();
  outlined init with take of DSLTree.QuantificationKind(v9, v24 + direct field offset for Regex.Program.ProgramBox.value, type metadata accessor for MEProgram);

  v25 = 0;
  atomic_compare_exchange_strong(v2 + 2, &v25, v24);
  if (!v25)
  {

    a1 = v29;
    return outlined init with take of DSLTree.QuantificationKind(v11, a1, type metadata accessor for MEProgram);
  }

  loadProgram #1 <A>() in Regex.Program.loweredProgram.getter(v2, v15);
  v26 = v18(v15, 1, v5);
  a1 = v29;
  if (v26 != 1)
  {
    outlined destroy of MEProgram(v11, type metadata accessor for MEProgram);
    v11 = v15;
    return outlined init with take of DSLTree.QuantificationKind(v11, a1, type metadata accessor for MEProgram);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t RegexRangesSequence.Iterator.next()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Executor.Matches.Iterator(0, v4, a3, a4);
  Executor.Matches.Iterator.next()(v5, &v14);
  v12 = v14;
  v13 = v15;
  KeyPath = swift_getKeyPath();
  type metadata accessor for Regex.Match(255, v4, v7, v8);
  type metadata accessor for Optional();
  CanonicalSpecializedMetadata = swift_getCanonicalSpecializedMetadata();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for implicit closure #1 in RegexRangesSequence.Iterator.next(), KeyPath, MEMORY[0x1E69E73E0], CanonicalSpecializedMetadata, v10, &v16);

  outlined consume of Regex<A1.RegexOutput>.Match?<A><A1>(v12, *(&v12 + 1), v13);
  return v16;
}

void Executor.Matches.Iterator.next()(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(result + 32);
  if (*(v2 + v4) == 1 || (v5 = (v2 + *(result + 28)), static Executor._firstMatch(_:using:)(v2, v5, &v14), !v15))
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v13 = v15;
    v7 = v14;
    v8 = v16;
    v9 = v17;
    v10 = Executor.Matches.Iterator.nextSearchIndex(after:)(v16, v17, result);
    if (v11)
    {
      *(v2 + v4) = 1;
LABEL_10:
      *a2 = v7;
      *(a2 + 8) = v13;
      *(a2 + 24) = v8;
      *(a2 + 32) = v9;
      return;
    }

    v12 = v5[10];
    if (v12 >> 14 >= v10 >> 14)
    {
      Processor.reset(currentPosition:searchBounds:)(v10, v10, v12);
      goto LABEL_10;
    }

    __break(1u);
  }
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t protocol witness for IteratorProtocol.next() in conformance RegexRangesSequence<A>.Iterator@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = RegexRangesSequence.Iterator.next()(a1, a3, a4, a5);
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  return result;
}

uint64_t RegexRangesSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Executor.Matches.Iterator(0, v5, a3, a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  v12 = type metadata accessor for Executor.Matches(0, v5, v10, v11);
  v13 = Executor.Matches.makeIterator()(v12, v9);
  return (*(v7 + 32))(a2, v9, v6, v13);
}

double Executor.Matches.makeIterator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for MEProgram(0);
  v7 = v6 - 8;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - v11;
  outlined init with copy of DSLTree._AST.AbsentFunction(v3, &v36 - v11, type metadata accessor for MEProgram);
  outlined init with copy of DSLTree._AST.AbsentFunction(v3, v10, type metadata accessor for MEProgram);
  v13 = *(a1 + 32);
  v14 = (v3 + *(a1 + 28));
  v15 = *v14;
  v16 = v14[1];
  v17 = *(v3 + v13);
  v37 = *(v3 + v13 + 8);
  v38 = v15;
  v18 = (v3 + *(a1 + 36));
  v19 = *v18;
  v39 = v18[1];
  v46 = 1;
  v20 = *v10;
  v21 = (v10 + *(v7 + 56));
  v22 = v21[4];
  v50 = v21[3];
  v51 = v22;
  v23 = *v21;
  v24 = v21[2];
  v48 = v21[1];
  v49 = v24;
  v47 = v23;
  v44 = v50;
  *v45 = v22;
  v42 = v48;
  v43 = v24;
  v41 = v23;
  v25 = *(v10 + *(v7 + 60));

  outlined init with copy of Processor.Registers(&v47, &v40);

  outlined destroy of MEProgram(v10, type metadata accessor for MEProgram);
  LOBYTE(v10) = v46;
  v26 = *(a1 + 16);
  outlined init with take of DSLTree.QuantificationKind(v12, a2, type metadata accessor for MEProgram);
  v29 = type metadata accessor for Executor.Matches.Iterator(0, v26, v27, v28);
  v30 = a2 + *(v29 + 28);
  v31 = v41;
  *(v30 + 120) = v42;
  v32 = v44;
  *(v30 + 136) = v43;
  *(v30 + 152) = v32;
  result = v45[0];
  *(v30 + 168) = *v45;
  v34 = v37;
  *v30 = v38;
  *(v30 + 8) = v16;
  *(v30 + 16) = v17;
  *(v30 + 24) = v34;
  *(v30 + 32) = 1;
  *(v30 + 48) = 0;
  *(v30 + 56) = 0;
  *(v30 + 40) = v20;
  *(v30 + 64) = v10;
  v35 = v39;
  *(v30 + 72) = v19;
  *(v30 + 80) = v35;
  *(v30 + 88) = v19;
  *(v30 + 96) = 0;
  *(v30 + 104) = v31;
  *(v30 + 184) = MEMORY[0x1E69E7CC0];
  *(v30 + 192) = v25;
  *(v30 + 200) = 0;
  *(v30 + 208) = 0;
  *(a2 + *(v29 + 32)) = 0;
  return result;
}

int *Collection<>._ranges<A>(of:subjectBounds:searchBounds:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a6@<X6>, uint64_t a8@<X8>, uint64_t a9)
{
  Collection.subscript.getter();
  v15 = v19[3];
  v14 = v19[4];
  (*(a9 + 16))(v19, a6, a9);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return RegexRangesSequence.init(input:subjectBounds:searchBounds:regex:)(v15, v14, a1, a2, a3, a4, AssociatedTypeWitness, a8);
}

int *Collection<>._ranges<A>(of:)@<X0>(uint64_t a2@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  dispatch thunk of Collection.startIndex.getter();
  result = dispatch thunk of Collection.endIndex.getter();
  if (v9 >> 14 < v10 >> 14)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    return Collection<>._ranges<A>(of:subjectBounds:searchBounds:)(v10, v9, v10, v9, a2, a5, a4);
  }

  return result;
}

uint64_t BidirectionalCollection<>.ranges<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for RegexRangesSequence(0, AssociatedTypeWitness, v8, v9);
  MEMORY[0x1EEE9AC00](v10);
  Collection<>._ranges<A>(of:)(a3, a5, &v13 - v11);
  swift_getCanonicalSpecializedMetadata();
  swift_getWitnessTable();
  return Array.init<A>(_:)();
}

void *Substring._replacingSubstring(_:with:maxReplacements:)(void *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13)
{
  v38 = result;
  if (a9 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v55 = 0;
  v56 = 0xE000000000000000;
  if (a11 >> 14 < a10 >> 14)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = Substring.subscript.getter();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = specialized SubstringSearcher.State.init(text:pattern:)(v13, v15, v17, v19, v38, a2, a3, a4);
  v36 = v22;
  v37 = v20;
  v24 = v23;
  v54 = v21 & 1;
  if (a9 && (v21 & 1) == 0)
  {
    v25 = 1;
    v26 = a10;
    while (1)
    {
      v57 = a10;
      v58 = a11;
      v59 = a12;
      v60 = a13;
      v61 = v38;
      v62 = a2;
      v63 = a3;
      v64 = a4;
      v65 = v37;
      v66 = v36;
      v67 = v24;
      v68 = 0;
      result = SubstringSearcher.nextRange(in:searchFromEnd:)(a10, a11, a12, v24, &v42);
      v27 = v43;
      v24 = v45;
      v28 = v46;
      v54 = v46;
      if (v44 == 1)
      {
        v27 = v26;
        goto LABEL_12;
      }

      if (v42 >> 14 < v26 >> 14)
      {
        break;
      }

      v29 = Substring.subscript.getter();
      MEMORY[0x193ACE8B0](v29);

      MEMORY[0x193ACE8B0](a5, a6, a7, a8);
      v30 = v25++ >= a9;
      v26 = v27;
      if ((v30 | v28))
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  v27 = a10;
LABEL_12:
  v42 = a10;
  v43 = a11;
  v44 = a12;
  v45 = a13;
  v46 = v38;
  v47 = a2;
  v48 = a3;
  v49 = a4;
  v50 = v37;
  v51 = v36;
  v52 = v24;
  v53 = v54;
  result = outlined destroy of SubstringSearcher(&v42);
  if (a11 >> 14 >= v27 >> 14)
  {
    v31 = Substring.subscript.getter();
    MEMORY[0x193ACE8B0](v31);

    return v55;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t specialized Collection.subscript.getter(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

unint64_t specialized RangeReplaceableCollection._replacing<A, B>(_:with:maxReplacements:)(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a4 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v37 = 0;
  v38 = 0xE000000000000000;
  v7 = *result;
  v6 = *(result + 8);
  v8 = v6 >> 14;
  if (v6 >> 14 >= *result >> 14)
  {
    v29 = *(result + 40);
    v30 = *(result + 32);
    v26 = *(result + 48);
    v31 = *(result + 16);
    v32 = *(result + 24);
    result = outlined init with copy of (range: Range<String.Index>, value: Any?)?(result, &v33, &_s17_StringProcessing14RangesSequenceVyAA9ZSearcherVySsGGMd, &_s17_StringProcessing14RangesSequenceVyAA9ZSearcherVySsGGMR);
    v9 = 0;
    v10 = 15;
    v11 = v7;
    while (v8 >= v11 >> 14)
    {
      result = specialized ZSearcher.search(_:in:)(v7, v6, v31, v32, v11, v6, v30, v29, v26);
      if ((v13 & 1) != 0 || ((v14 = v12, v15 = result >> 14, result >> 14 != v12 >> 14) ? (v16 = 0, v11 = v12) : v15 != v8 ? (result = Substring.index(after:)(), v11 = result, v16 = 0) : (v11 = 0, v16 = 1), a4 == v9))
      {
        v14 = v10;
LABEL_17:

        v33 = specialized Collection.subscript.getter(v14, a5, a6);
        v34 = v20;
        v35 = v21;
        v36 = v22;
        lazy protocol witness table accessor for type Substring and conformance Substring();
        String.append<A>(contentsOf:)();

        return v37;
      }

      if (v15 < v10 >> 14)
      {
        goto LABEL_19;
      }

      v33 = String.subscript.getter();
      v34 = v17;
      v35 = v18;
      v36 = v19;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      String.append<A>(contentsOf:)();

      v33 = a2;
      v34 = a3;
      result = String.append<A>(contentsOf:)();
      if (__OFADD__(v9, 1))
      {
        goto LABEL_20;
      }

      ++v9;
      v10 = v14;
      if (v16)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t RangeReplaceableCollection._replacing<A, B>(_:with:maxReplacements:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(char *, char *, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v102 = a7;
  v100 = a3;
  v101 = a9;
  v86 = a2;
  v96 = a1;
  v14 = *(a7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v70 = type metadata accessor for PartialRangeFrom();
  v69 = *(v70 - 8);
  v17 = MEMORY[0x1EEE9AC00](v70);
  v68 = &v67 - v18;
  v87 = a6;
  v19 = a6;
  v20 = AssociatedTypeWitness;
  v73 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v85 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a4;
  v93 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v93);
  v92 = &v67 - v23;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v88 = *(TupleTypeMetadata2 - 8);
  v24 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v83 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v82 = &v67 - v26;
  v97 = AssociatedConformanceWitness;
  v27 = type metadata accessor for Range();
  v71 = *(v27 - 8);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v81 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v67 - v30;
  v32 = type metadata accessor for Optional();
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v67 - v34;
  v95 = *(a5 - 1);
  MEMORY[0x1EEE9AC00](v33);
  v94 = (&v67 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v103 = a5;
  v104 = a8;
  v37 = swift_getAssociatedTypeWitness();
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v67 - v39;
  v41 = *(v20 - 8);
  result = MEMORY[0x1EEE9AC00](v38);
  v45 = &v67 - v44;
  if (v100 < 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
    v67 = v43;
    v77 = a10;
    v98 = result;
    v99 = v31;
    dispatch thunk of RangeReplaceableCollection.init()();
    v46 = v99;
    v91 = v14;
    dispatch thunk of Collection.startIndex.getter();
    (*(v95 + 16))(v94, v96, v103);
    v96 = v40;
    dispatch thunk of Sequence.makeIterator()();
    v47 = v98;
    v95 = swift_getAssociatedConformanceWitness();
    v94 = (v71 + 48);
    v89 = (v71 + 32);
    v90 = (v41 + 32);
    v76 = (v88 + 2);
    v75 = (v41 + 8);
    v74 = (v88 + 4);
    v88 = (v71 + 8);
    v73 += 2;
    v48 = v47;
    v49 = v45;
    v50 = 0;
    v80 = v27;
    v79 = v35;
    v78 = v49;
    v72 = v22;
    while (1)
    {
      v51 = v96;
      dispatch thunk of IteratorProtocol.next()();
      if ((*v94)(v35, 1, v27) == 1)
      {
        break;
      }

      (*v89)(v46, v35, v27);
      if (v100 == v50)
      {
        goto LABEL_9;
      }

      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      if ((result & 1) == 0)
      {
        __break(1u);
        goto LABEL_13;
      }

      v52 = *v90;
      v53 = v82;
      (*v90)(v82, v49, v20);
      v54 = v20;
      v55 = TupleTypeMetadata2;
      v52(&v53[*(TupleTypeMetadata2 + 48)], v46, v54);
      v56 = v83;
      (*v76)(v83, v53, v55);
      v57 = *(v55 + 48);
      v104 = v50;
      v58 = v81;
      v52(v81, v56, v54);
      v103 = v52;
      v59 = *v75;
      (*v75)(&v56[v57], v54);
      v60 = v53;
      v27 = v80;
      (*v74)(v56, v60, v55);
      v52(&v58[*(v27 + 36)], &v56[*(v55 + 48)], v54);
      v59(v56, v54);
      v61 = v101;
      dispatch thunk of Collection.subscript.getter();
      v62 = v58;
      v63 = v104;
      (*v88)(v62, v27);
      swift_getAssociatedConformanceWitness();
      dispatch thunk of RangeReplaceableCollection.append<A>(contentsOf:)();
      (*v73)(v85, v86, v87);
      v51 = v61;
      v20 = v54;
      v49 = v78;
      v48 = v98;
      v46 = v99;
      dispatch thunk of RangeReplaceableCollection.append<A>(contentsOf:)();
      v103(v49, &v46[*(v27 + 36)], v20);
      v35 = v79;
      v64 = __OFADD__(v63, 1);
      v50 = v63 + 1;
      if (v64)
      {
        __break(1u);
LABEL_9:
        (*v88)(v46, v27);
        break;
      }
    }

    (*(v67 + 8))(v51, v48);
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if ((result & 1) == 0)
    {
      goto LABEL_14;
    }

    v65 = v68;
    (*v90)(v68, v49, v20);
    v66 = v70;
    swift_getWitnessTable();
    Collection.subscript.getter();
    (*(v69 + 8))(v65, v66);
    swift_getAssociatedConformanceWitness();
    return dispatch thunk of RangeReplaceableCollection.append<A>(contentsOf:)();
  }

  return result;
}

uint64_t RangeReplaceableCollection<>.replacing<A, B>(_:with:subrange:maxReplacements:)@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v251 = a4;
  v241 = a3;
  v252 = a9;
  v245 = a8;
  v19 = *(a8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v240 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v238 = &v230 - v21;
  v239 = v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v242 = AssociatedTypeWitness;
  v235 = AssociatedConformanceWitness;
  v24 = type metadata accessor for ZSearcher(255, AssociatedTypeWitness, AssociatedConformanceWitness, v23);
  WitnessTable = swift_getWitnessTable();
  v237 = type metadata accessor for RangesSequence(0, v24, WitnessTable, v26);
  v236 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237);
  v28 = &v230 - v27;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v234 = *(TupleTypeMetadata3 - 8);
  v30 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v32 = &v230 - v31;
  v33 = *(v30 + 48);
  v233 = v30;
  v34 = *(v30 + 64);
  v250 = *(a5 - 8);
  v35 = *(v250 + 16);
  v246 = v13;
  v35(&v230 - v31, v13, a5);
  v249 = *(a6 - 8);
  v36 = *(v249 + 16);
  v243 = a1;
  v36(&v32[v33], a1, a6);
  v248 = *(a7 - 8);
  v37 = *(v248 + 16);
  v244 = a2;
  v37(&v32[v34], a2, a7);
  v38 = swift_dynamicCast();
  v255 = v34;
  v256 = a7;
  v254 = v33;
  if (v38)
  {
    if (swift_dynamicCast())
    {
      if (swift_dynamicCast())
      {
        v247 = a6;
        v232 = a5;
        v253 = String.subscript.getter();
        v246 = v39;
        v245 = v40;
        v244 = v41;

        v243 = String.subscript.getter();
        v43 = v42;
        v45 = v44;
        v47 = v46;

        v48 = String.subscript.getter();
        v50 = v49;
        v52 = v51;
        v54 = v53;

        v55 = v52;
        v56 = v232;
        v57 = Substring._replacingSubstring(_:with:maxReplacements:)(v243, v43, v45, v47, v48, v50, v55, v54, v251, v253, v246, v245, v244);
        v59 = v58;

        v257 = v57;
        v258 = v59;
        swift_dynamicCast();
        (*(v248 + 8))(&v32[v255], v256);
LABEL_50:
        (*(v249 + 8))(&v32[v254], v247);
        v224 = &v273;
        return (*(*(v224 - 32) + 8))(v32, v56);
      }
    }

    else
    {
    }
  }

  v60 = swift_dynamicCast();
  v253 = v32;
  if (v60)
  {
    v61 = v269;
    v62 = v270;
    v64 = v271;
    v63 = v272;
    if (swift_dynamicCast())
    {
      v247 = a6;
      v232 = a5;
      v65 = v265;
      v66 = v266;
      v67 = v268;
      v231 = v267;
      v68 = v256;
      if (swift_dynamicCast())
      {
        Substring._replacingSubstring(_:with:maxReplacements:)(v65, v66, v231, v67, v261, v262, v263, v264, v251, v61, v62, v64, v63);

        v69 = String.subscript.getter();
        v71 = v70;
        v73 = v72;
        v74 = v68;
        v76 = v75;

        v257 = v69;
        v258 = v71;
        v259 = v73;
        v260 = v76;
        v56 = v232;
        swift_dynamicCast();
        (*(v248 + 8))(&v32[v255], v74);
        goto LABEL_50;
      }

      a5 = v232;
      a6 = v247;
    }

    if (swift_dynamicCast())
    {
      result = swift_dynamicCast();
      if (result)
      {
        v247 = a6;
        v232 = a5;
        if (v62 >> 14 >= v61 >> 14)
        {
          v246 = Substring.subscript.getter();
          v245 = v78;
          v244 = v79;
          v81 = v80;

          v243 = String.subscript.getter();
          v83 = v82;
          v85 = v84;
          v87 = v86;

          v88 = String.subscript.getter();
          v90 = v89;
          v92 = v91;
          v94 = v93;

          Substring._replacingSubstring(_:with:maxReplacements:)(v243, v83, v85, v87, v88, v90, v92, v94, v251, v246, v245, v244, v81);

          v95 = String.subscript.getter();
          v97 = v96;
          v99 = v98;
          v101 = v100;

          v265 = v95;
          v266 = v97;
          v267 = v99;
          v268 = v101;
LABEL_48:
          v56 = v232;
          goto LABEL_49;
        }

LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

    else
    {
    }
  }

  if (!swift_dynamicCast())
  {
LABEL_30:
    if (swift_dynamicCast())
    {
      v148 = v269;
      v149 = v270;
      if (swift_dynamicCast())
      {
        result = swift_dynamicCast();
        if (result)
        {
          v247 = a6;
          if (v149 >> 14 >= v148 >> 14)
          {
            v150 = a5;
            v151 = v265;
            v152 = v266;
            v243 = v267;
            v246 = Substring.subscript.getter();
            v245 = v153;
            v244 = v154;
            v156 = v155;

            v157 = String.subscript.getter();
            v159 = v158;
            v242 = v160;
            v162 = v161;

            if (v152 >> 14 >= v151 >> 14)
            {
              v163 = Substring.subscript.getter();
              v165 = v164;
              v167 = v166;
              v169 = v168;

              Substring._replacingSubstring(_:with:maxReplacements:)(v157, v159, v242, v162, v163, v165, v167, v169, v251, v246, v245, v244, v156);

              v170 = String.subscript.getter();
              v172 = v171;
              v174 = v173;
              v176 = v175;

              v261 = v170;
              v262 = v172;
              v263 = v174;
              v264 = v176;
              v56 = v150;
LABEL_49:
              swift_dynamicCast();
              v32 = v253;
              (*(v248 + 8))(&v253[v255], v256);
              goto LABEL_50;
            }

            goto LABEL_61;
          }

LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }
      }

      if (swift_dynamicCast())
      {
        v199 = v265;
        v231 = v266;
        v230 = v267;
        result = swift_dynamicCast();
        if (result)
        {
          v247 = a6;
          v232 = a5;
          if (v149 >> 14 >= v148 >> 14)
          {
            v246 = Substring.subscript.getter();
            v245 = v200;
            v244 = v201;
            v203 = v202;

            if (v231 >> 14 >= v199 >> 14)
            {
              v204 = Substring.subscript.getter();
              v206 = v205;
              v243 = v207;
              v209 = v208;

              v210 = String.subscript.getter();
              v212 = v211;
              v214 = v213;
              v216 = v215;

              Substring._replacingSubstring(_:with:maxReplacements:)(v204, v206, v243, v209, v210, v212, v214, v216, v251, v246, v245, v244, v203);

              v217 = String.subscript.getter();
              v219 = v218;
              v221 = v220;
              v223 = v222;

              v261 = v217;
              v262 = v219;
              v263 = v221;
              v264 = v223;
              goto LABEL_48;
            }

            goto LABEL_63;
          }

LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }
      }
    }

    v225 = a5;
    v226 = v238;
    dispatch thunk of Collection.subscript.getter();
    v227 = v242;
    Collection<>._ranges<A>(of:)(v243, v242, a6, v235, a10, a12, v28);
    (*(v240 + 8))(v226, v227);
    v228 = v237;
    v229 = swift_getWitnessTable();
    RangeReplaceableCollection._replacing<A, B>(_:with:maxReplacements:)(v28, v244, v251, v225, v228, v256, v245, v229, v252, a11);
    (*(v236 + 8))(v28, v228);
    v56 = v233;
    v32 = v253;
    v224 = &v266;
    return (*(*(v224 - 32) + 8))(v32, v56);
  }

  if (swift_dynamicCast())
  {
    v103 = v269;
    v102 = v270;
    if (swift_dynamicCast())
    {
      v247 = a6;
      v232 = a5;
      v246 = String.subscript.getter();
      v245 = v104;
      v244 = v105;
      v107 = v106;

      if (v102 >> 14 >= v103 >> 14)
      {
        v108 = Substring.subscript.getter();
        v110 = v109;
        v112 = v111;
        v114 = v113;

        v115 = String.subscript.getter();
        v117 = v116;
        v119 = v118;
        v121 = v120;

        v122 = Substring._replacingSubstring(_:with:maxReplacements:)(v108, v110, v112, v114, v115, v117, v119, v121, v251, v246, v245, v244, v107);
        v124 = v123;

        v257 = v122;
        v258 = v124;
        goto LABEL_48;
      }

      __break(1u);
      goto LABEL_58;
    }
  }

  if (!swift_dynamicCast())
  {

    goto LABEL_30;
  }

  v125 = v269;
  v126 = v270;
  v127 = v271;
  v231 = v272;
  if (swift_dynamicCast())
  {
    v246 = v127;
    v247 = a6;
    v232 = a5;
    v245 = String.subscript.getter();
    v244 = v128;
    v243 = v129;
    v131 = v130;

    v132 = String.subscript.getter();
    v134 = v133;
    v136 = v135;
    v138 = v137;

    if (v126 >> 14 < v125 >> 14)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v139 = Substring.subscript.getter();
    v141 = v140;
    v143 = v142;
    v145 = v144;

    v146 = Substring._replacingSubstring(_:with:maxReplacements:)(v132, v134, v136, v138, v139, v141, v143, v145, v251, v245, v244, v243, v131);
LABEL_40:
    v197 = v146;
    v198 = v147;

    v257 = v197;
    v258 = v198;
    goto LABEL_48;
  }

  if (!swift_dynamicCast())
  {

    goto LABEL_30;
  }

  v247 = a6;
  v232 = a5;
  v178 = v265;
  v177 = v266;
  v246 = String.subscript.getter();
  v245 = v179;
  v244 = v180;
  v182 = v181;

  if (v177 >> 14 < v178 >> 14)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v183 = Substring.subscript.getter();
  v185 = v184;
  v187 = v186;
  v189 = v188;

  if (v126 >> 14 >= v125 >> 14)
  {
    v190 = Substring.subscript.getter();
    v192 = v191;
    v194 = v193;
    v196 = v195;

    v146 = Substring._replacingSubstring(_:with:maxReplacements:)(v183, v185, v187, v189, v190, v192, v194, v196, v251, v246, v245, v244, v182);
    goto LABEL_40;
  }

LABEL_65:
  __break(1u);
  return result;
}

uint64_t RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v51 = a8;
  v52 = a3;
  v54 = a5;
  v55 = a6;
  v49 = a1;
  v50 = a2;
  v48 = a9;
  v56 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v47 = *(TupleTypeMetadata2 - 8);
  v14 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v42 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v43 = &v36 - v17;
  v46 = *(AssociatedTypeWitness - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v36 - v21;
  swift_getAssociatedConformanceWitness();
  v23 = type metadata accessor for Range();
  v44 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v36 - v24;
  dispatch thunk of Collection.startIndex.getter();
  v53 = a4;
  dispatch thunk of Collection.endIndex.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v40 = a10;
    v41 = a11;
    v39 = v11;
    v27 = v46;
    v28 = *(v46 + 32);
    v29 = v43;
    v28(v43, v22, AssociatedTypeWitness);
    v38 = v23;
    v30 = TupleTypeMetadata2;
    v28(&v29[*(TupleTypeMetadata2 + 48)], v20, AssociatedTypeWitness);
    v31 = v47;
    v32 = v42;
    (*(v47 + 16))(v42, v29, v30);
    v37 = *(v30 + 48);
    v28(v25, v32, AssociatedTypeWitness);
    v33 = *(v27 + 8);
    v33(&v32[v37], AssociatedTypeWitness);
    (*(v31 + 32))(v32, v29, v30);
    v34 = *(v30 + 48);
    v35 = v38;
    v28(&v25[*(v38 + 36)], &v32[v34], AssociatedTypeWitness);
    v33(v32, AssociatedTypeWitness);
    RangeReplaceableCollection<>.replacing<A, B>(_:with:subrange:maxReplacements:)(v49, v50, v25, v52, v53, v54, v55, v56, v48, v51, v40, v41);
    return (*(v44 + 8))(v25, v35);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t RangeReplaceableCollection<>.replace<A, B>(_:with:maxReplacements:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v63 = a8;
  v64 = a3;
  v66 = a5;
  v67 = a6;
  v61 = a1;
  v62 = a2;
  v51 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  v59 = TupleTypeMetadata2;
  v60 = v14;
  v15 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v56 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v55 = &v45 - v18;
  v53 = *(AssociatedTypeWitness - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v45 - v22;
  swift_getAssociatedConformanceWitness();
  v24 = type metadata accessor for Range();
  v57 = *(v24 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v45 - v26;
  v28 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v30 = *(v28 + 16);
  v52 = &v45 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v31 = *(v28 + 8);
  v65 = v10;
  v58 = a4;
  v54 = v28 + 8;
  v31(v10, a4);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v48 = a9;
    v49 = a10;
    v47 = v24;
    v33 = v53;
    v34 = *(v53 + 32);
    v35 = v55;
    v36 = v23;
    v37 = AssociatedTypeWitness;
    v34(v55, v36, AssociatedTypeWitness);
    v50 = v31;
    v38 = v59;
    v34(&v35[*(v59 + 48)], v21, AssociatedTypeWitness);
    v39 = v60;
    v40 = v56;
    (*(v60 + 16))(v56, v35, v38);
    v46 = *(v38 + 48);
    v34(v27, v40, v37);
    v41 = *(v33 + 8);
    v41(&v40[v46], v37);
    (*(v39 + 32))(v40, v35, v38);
    v42 = v47;
    v34(&v27[*(v47 + 36)], &v40[*(v38 + 48)], v37);
    v41(v40, v37);
    v43 = v58;
    v44 = v52;
    RangeReplaceableCollection<>.replacing<A, B>(_:with:subrange:maxReplacements:)(v61, v62, v27, v64, v58, v66, v67, v51, v65, v63, v48, v49);
    (*(v57 + 8))(v27, v42);
    return v50(v44, v43);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t specialized RangeReplaceableCollection<>._replacing<A, B>(_:with:maxReplacements:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v14 = String.subscript.getter();
  specialized Collection<>._ranges<A>(of:)(a1, a2, v14, v15, v16, v17, &v20);

  v25[0] = v20;
  v25[1] = v21;
  v25[2] = v22;
  v25[3] = v23;
  v18 = specialized RangeReplaceableCollection._replacing<A, B>(_:with:maxReplacements:)(v25, a3, a4, a5, a6, a7);
  v24[0] = v20;
  v24[1] = v21;
  v24[2] = v22;
  v24[3] = v23;
  outlined destroy of SplitSequence<SubstringSearcher>(v24, &_s17_StringProcessing14RangesSequenceVyAA9ZSearcherVySsGGMd, &_s17_StringProcessing14RangesSequenceVyAA9ZSearcherVySsGGMR);
  return v18;
}

uint64_t RangeReplaceableCollection<>.replacing<A, B>(_:with:subrange:maxReplacements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v28 = a3;
  v29 = a4;
  v31 = a9;
  v32 = a2;
  v27 = a1;
  v26 = a12;
  v30 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for RegexRangesSequence(0, AssociatedTypeWitness, v16, v17);
  v19 = *(v18 - 1);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v25 - v20;
  dispatch thunk of Collection.startIndex.getter();
  v22 = v34;
  result = dispatch thunk of Collection.endIndex.getter();
  if (v33 >> 14 < v22 >> 14)
  {
    __break(1u);
  }

  else
  {
    v25 = a10;
    Collection<>._ranges<A>(of:subjectBounds:searchBounds:)(v22, v33, v28, v29, v30, v21, v26);
    WitnessTable = swift_getWitnessTable();
    RangeReplaceableCollection._replacing<A, B>(_:with:maxReplacements:)(v21, v32, a5, a6, v18, a7, v25, WitnessTable, v31, a11);
    return (*(v19 + 8))(v21, v18);
  }

  return result;
}

uint64_t RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  dispatch thunk of Collection.startIndex.getter();
  result = dispatch thunk of Collection.endIndex.getter();
  if (v20 >> 14 >= v21 >> 14)
  {
    return RangeReplaceableCollection<>.replacing<A, B>(_:with:subrange:maxReplacements:)(a1, a2, v21, v20, a3, a4, a5, a6, a9, a7, a8, a10);
  }

  __break(1u);
  return result;
}

uint64_t RangeReplaceableCollection<>.replace<A, B>(_:with:maxReplacements:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = a7;
  v22 = a8;
  v16 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 32))(v18, v9, v19);
  RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)(a1, a2, a3, a4, a5, a6, v21, v22, v9, a9);
  return (*(v16 + 8))(v18, a4);
}

uint64_t SplitSequence.init(input:searcher:maxSplits:omittingEmptySubsequences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Collection._ranges<A>(of:)(a2, a5, a6, a7);
  (*(*(a5 - 8) + 8))(a2, a5);
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  result = type metadata accessor for SplitSequence(0, a5, a6, v15);
  *(a7 + *(result + 36)) = a3;
  *(a7 + *(result + 40)) = a4;
  return result;
}

uint64_t SplitSequence.Iterator.init(ranges:maxSplits:omittingEmptySubsequences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for SplitSequence.Iterator(0, a4, a5, a4);
  *(a6 + v12[11]) = 0;
  *(a6 + v12[13]) = 0;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of Collection.startIndex.getter();
  v14 = type metadata accessor for RangesSequence(0, a4, a5, v13);
  RangesSequence.makeIterator()(v14, a6);
  result = (*(*(v14 - 8) + 8))(a1, v14);
  *(a6 + v12[10]) = a2;
  *(a6 + v12[12]) = a3;
  return result;
}

void specialized SplitSequence.Iterator.next()()
{
  if (*(v0 + 185))
  {
    return;
  }

  v1 = *(v0 + 160);
  v45 = *(v0 + 8);
  v2 = v45 >> 14;
  if (v1 >> 14 == v45 >> 14)
  {
    *(v0 + 185) = 1;
    if ((*(v0 + 184) & 1) == 0)
    {
      Substring.subscript.getter();
    }

    return;
  }

  v3 = *(v0 + 176);
  if (v3 >= *(v0 + 168))
  {
    *(v0 + 185) = 1;
    if (v2 >= v1 >> 14)
    {

      Substring.subscript.getter();

      return;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return;
  }

  v4 = *v0;
  v5 = *(v0 + 24);
  v48 = *(v0 + 16);
  v6 = *(v0 + 80);
  v58 = *(v0 + 64);
  v59 = v6;
  v60[0] = *(v0 + 96);
  *(v60 + 9) = *(v0 + 105);
  v7 = *(v0 + 48);
  v56 = *(v0 + 32);
  v57 = v7;
  if (*(v0 + 152))
  {
LABEL_8:
    v8 = v1;
LABEL_52:
    *(v0 + 185) = 1;
    if (v8 >> 14 == v2 && (*(v0 + 184) & 1) != 0)
    {
      return;
    }

    if (v2 >= v8 >> 14)
    {

      Substring.subscript.getter();

      return;
    }

    goto LABEL_64;
  }

  v39 = v3;
  v10 = *(&v60[0] + 1);
  v9 = *&v60[0];
  v44 = v60[0] + __PAIR128__(-1, 0);
  v11 = __OFSUB__(*(&v60[0] + 1), 1);
  v42 = v11;
  v51 = v58 >> 14;
  v47 = v4 >> 14;
  v12 = *(v0 + 144);
  v41 = v0;
  v40 = *(&v60[0] + 1);
  while (1)
  {
    if (!v10)
    {
      if (v2 == v12 >> 14)
      {
        v34 = 0;
        v35 = 1;
        v46 = v12;
      }

      else
      {
        v38 = v12;
        v34 = Substring.index(after:)();
        v12 = v38;
        v35 = 0;
        v46 = v38;
      }

LABEL_48:
      v36 = v12;
      *(v0 + 144) = v34;
      *(v0 + 152) = v35 & 1;
      v12 = v34;
      goto LABEL_49;
    }

    if (*(v9 + 16))
    {
      v43 = v1;
      if (v42)
      {
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v13 = v12;
      v14 = v48;
      while (1)
      {
        v46 = v13;
        v15 = v14;
        v16 = v5;
        v17 = Substring.index(before:)();
        v18 = Substring.index(before:)() >> 14;
        if (v18 >= v51)
        {
          break;
        }

        v19 = *(&v44 + 1);
        v5 = v16;
        v14 = v15;
LABEL_33:
        v27 = Substring.subscript.getter();
        if (*(v9 + 16))
        {
          v29 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v28);
          v31 = v30;

          if (v31)
          {
            v32 = *(*(v9 + 56) + 8 * v29);
          }

          else
          {
            v32 = 0;
          }
        }

        else
        {

          v32 = 0;
        }

        if (__OFSUB__(v19, v32))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v13 = Substring.index(_:offsetBy:limitedBy:)();
        if (v33)
        {
          v2 = v45 >> 14;
          v0 = v41;
          *(v41 + 144) = v13;
          *(v41 + 152) = 1;
          v8 = v43;
          goto LABEL_52;
        }
      }

      v50 = *(&v44 + 1);
      while (1)
      {
        v20 = Substring.subscript.getter();
        v22 = v21;
        v49 = v17;
        v23 = v4;
        if (v20 == Substring.subscript.getter() && v22 == v24)
        {
        }

        else
        {
          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v25 & 1) == 0)
          {
            v5 = v16;
            v14 = v48;
            v4 = v23;
            v9 = v44;
            goto LABEL_32;
          }
        }

        if (__OFSUB__(v50--, 1))
        {
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v5 = v16;
        v4 = v23;
        if (v18 == v51)
        {
          break;
        }

        if (v47 >= v49 >> 14)
        {
          goto LABEL_59;
        }

        v17 = Substring.index(before:)();
        v18 = Substring.index(before:)() >> 14;
        if (v18 < v51)
        {
          v9 = v44;
          v5 = v16;
          v14 = v48;
LABEL_32:
          v19 = v50;
          goto LABEL_33;
        }
      }

      if (v46 >> 14 < v49 >> 14)
      {
        goto LABEL_62;
      }

      v10 = v40;
      v34 = Substring.index(_:offsetBy:limitedBy:)();
      v2 = v45 >> 14;
      v0 = v41;
      v1 = v43;
      v9 = v44;
      v12 = v49;
      goto LABEL_48;
    }

    SubstringSearcher.nextRangeNaive(in:searchFromEnd:)(v4, v45, v52);
    v36 = v52[0];
    v46 = v52[1];
    v37 = v53;
    v12 = v54;
    v35 = v55;
    *(v0 + 144) = v54;
    *(v0 + 152) = v35;
    if (v37)
    {
      goto LABEL_8;
    }

LABEL_49:
    if (*(v0 + 184) != 1 || (v36 ^ v1) >= 0x4000)
    {
      break;
    }

    v8 = v46;
    *(v0 + 160) = v46;
    v1 = v46;
    if (v35)
    {
      goto LABEL_52;
    }
  }

  *(v0 + 176) = v39 + 1;
  if (v36 >> 14 < v1 >> 14)
  {
    goto LABEL_65;
  }

  Substring.subscript.getter();
  *(v0 + 160) = v46;
}

uint64_t SplitSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v109 = a2;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v110 = v6;
  v111 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v95 = *(TupleTypeMetadata2 - 8);
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v96 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v94 = &v77 - v11;
  v12 = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for Range();
  v14 = type metadata accessor for Optional();
  v92 = *(v14 - 8);
  v93 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v77 - v16;
  v100 = *(v13 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v99 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v77 - v21;
  v107 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v77 - v23;
  v25 = swift_checkMetadataState();
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v77 - v28;
  if (*(v3 + *(a1 + 52)))
  {
    v30 = swift_getAssociatedTypeWitness();
    v31 = *(*(v30 - 8) + 56);
    v32 = v30;
    v33 = v109;

    return v31(v33, 1, 1, v32);
  }

  v89 = v22;
  v90 = v13;
  v35 = *(a1 + 36);
  v98 = v12;
  v36 = v26;
  v37 = v27;
  v38 = swift_getAssociatedTypeWitness();
  v39 = *(v38 - 8);
  v40 = *(v39 + 16);
  v88 = v38;
  v87 = v40;
  v86 = v39 + 16;
  (v40)(v29, v3);
  v85 = AssociatedConformanceWitness;
  dispatch thunk of Collection.endIndex.getter();
  v41 = *(v37 + 8);
  v91 = v29;
  v84 = v36;
  v83 = v37 + 8;
  v41(v29, v36);
  v42 = *(v98 + 8);
  v108 = v35;
  v106 = v42;
  v43 = dispatch thunk of static Equatable.== infix(_:_:)();
  v44 = v107 + 1;
  v45 = v107[1];
  v45(v24, AssociatedTypeWitness);
  if (v43)
  {
LABEL_6:
    v48 = v109;
    v47 = v110;
    v49 = v3;
    v50 = v111;
    return finish #1 <A>() in SplitSequence.Iterator.next()(v49, v47, v50, v48);
  }

  v47 = v110;
  v50 = v111;
  v51 = *(a1 + 44);
  v48 = v109;
  if (*(v3 + v51) >= *(v3 + *(a1 + 40)))
  {
    v49 = v3;
    return finish #1 <A>() in SplitSequence.Iterator.next()(v49, v47, v50, v48);
  }

  v81 = *(v3 + v51);
  v82 = v51;
  v78 = v45;
  v79 = v44;
  v80 = v41;
  v101 = a1;
  v52 = type metadata accessor for RangesSequence.Iterator(0, v110, v111, v46);
  v53 = *(v52 + 24);
  v104 = *(v52 + 16);
  v105 = v52;
  v55 = type metadata accessor for RangesSequence(0, v104, v53, v54);
  v102 = *(v53 + 40);
  v103 = v55;
  v56 = (v100 + 6);
  v57 = (v100 + 4);
  ++v100;
  v58 = v90;
  for (i = v89; ; (*v100)(i, v58))
  {
    v102(v3, v3 + *(v105 + 36), v104, v53);
    if ((*v56)(v17, 1, v58) == 1)
    {
      (*(v92 + 8))(v17, v93);
      goto LABEL_6;
    }

    (*v57)(i, v17, v58);
    if (*(v3 + *(v101 + 48)) != 1 || (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      break;
    }

    $defer #1 <A>() in SplitSequence.Iterator.next()(v3, i, v110, v111);
  }

  *(v3 + v82) = v81 + 1;
  v87(v91, v3, v88);
  v60 = v108;
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v61 = v107[2];
    v62 = v94;
    v61(v94, &v60[v3], AssociatedTypeWitness);
    v63 = TupleTypeMetadata2;
    v61(&v62[*(TupleTypeMetadata2 + 48)], i, AssociatedTypeWitness);
    v65 = v95;
    v64 = v96;
    (*(v95 + 16))(v96, v62, v63);
    v66 = *(v63 + 48);
    v67 = v107[4];
    v107 += 4;
    v108 = v67;
    (v67)(v99, v64, AssociatedTypeWitness);
    v68 = &v64[v66];
    v69 = v78;
    v78(v68, AssociatedTypeWitness);
    (*(v65 + 32))(v64, v62, v63);
    v70 = v99;
    (v108)(&v99[*(v58 + 36)], &v64[*(v63 + 48)], AssociatedTypeWitness);
    v69(v64, AssociatedTypeWitness);
    v71 = v109;
    v72 = v70;
    v73 = v91;
    v74 = v84;
    dispatch thunk of Collection.subscript.getter();
    v75 = *v100;
    (*v100)(v72, v58);
    v80(v73, v74);
    v76 = swift_getAssociatedTypeWitness();
    (*(*(v76 - 8) + 56))(v71, 0, 1, v76);
    $defer #1 <A>() in SplitSequence.Iterator.next()(v3, i, v110, v111);
    return (v75)(i, v58);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t finish #1 <A>() in SplitSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a4;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for PartialRangeFrom();
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v43 - v9;
  v59 = swift_checkMetadataState();
  v61 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v11 = &v43 - v10;
  v13 = type metadata accessor for SplitSequence.Iterator(0, a2, a3, v12);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v43 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  v19 = MEMORY[0x1EEE9AC00](v15);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v43 - v23;
  *(a1 + *(v22 + 52)) = 1;
  v25 = *(v18 + 16);
  v50 = *(v22 + 36);
  v51 = v25;
  v57 = a1;
  v52 = v18 + 16;
  v25(&v43 - v23, a1 + v50, AssociatedTypeWitness);
  v49 = *(v14 + 16);
  v49(v17, a1, v13);
  v26 = swift_getAssociatedTypeWitness();
  v27 = *(v26 - 8);
  v28 = *(v27 + 16);
  v47 = v27 + 16;
  v48 = v28;
  v28(v11, v17, v26);
  v29 = *(v14 + 8);
  v53 = v14 + 8;
  v46 = v29;
  v29(v17, v13);
  v30 = v59;
  dispatch thunk of Collection.endIndex.getter();
  v31 = *(v61 + 8);
  v54 = v11;
  v61 += 8;
  v43 = v31;
  v31(v11, v30);
  v58 = *(v58 + 8);
  LOBYTE(v11) = dispatch thunk of static Equatable.== infix(_:_:)();
  v32 = *(v18 + 8);
  v33 = v21;
  v34 = v57;
  v32(v33, AssociatedTypeWitness);
  v32(v24, AssociatedTypeWitness);
  if (v11 & 1) != 0 && (*(v34 + *(v13 + 48)))
  {
    v35 = 1;
    v36 = v56;
LABEL_6:
    v42 = swift_getAssociatedTypeWitness();
    return (*(*(v42 - 8) + 56))(v36, v35, 1, v42);
  }

  v49(v17, v34, v13);
  v37 = v54;
  v48(v54, v17, v26);
  v46(v17, v13);
  v38 = v55;
  v51(v55, v34 + v50, AssociatedTypeWitness);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v40 = v45;
    swift_getWitnessTable();
    v36 = v56;
    v41 = v59;
    Collection.subscript.getter();
    (*(v44 + 8))(v38, v40);
    v43(v37, v41);
    v35 = 0;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t $defer #1 <A>() in SplitSequence.Iterator.next()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = *(type metadata accessor for Range() + 36);
  v11 = type metadata accessor for SplitSequence.Iterator(0, a3, a4, v10);
  v12 = *(*(AssociatedTypeWitness - 8) + 24);
  v13 = a1 + *(v11 + 36);

  return v12(v13, a2 + v9, AssociatedTypeWitness);
}

uint64_t SplitSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = type metadata accessor for RangesSequence(0, v6, v7, a3);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, v3);
  return SplitSequence.Iterator.init(ranges:maxSplits:omittingEmptySubsequences:)(v10, *(v3 + *(a1 + 36)), *(v3 + *(a1 + 40)), v6, v7, a2);
}

uint64_t Collection._split<A>(by:maxSplits:omittingEmptySubsequences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = *(a4 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v20, v19);
  (*(v12 + 16))(v15, a1, a4);
  return SplitSequence.init(input:searcher:maxSplits:omittingEmptySubsequences:)(v17, v15, a2, a3, a4, a5, a6);
}

uint64_t Collection<>.split<A>(separator:maxSplits:omittingEmptySubsequences:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v75 = a7;
  v76 = a8;
  v84 = a3;
  v85 = a2;
  v14 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v72 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ZSearcher(255, v16, v17, v16);
  WitnessTable = swift_getWitnessTable();
  v74 = v18;
  v79 = type metadata accessor for SplitSequence(0, v18, WitnessTable, v19);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v69 - v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v70 = *(TupleTypeMetadata2 - 8);
  v22 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v24 = &v69 - v23;
  v77 = v22;
  v25 = *(v22 + 48);
  v82 = *(a4 - 8);
  v26 = *(v82 + 16);
  v80 = v9;
  v26(&v69 - v23, v9, a4);
  v27 = *(v14 + 16);
  v28 = v25;
  v71 = a1;
  v29 = a1;
  v30 = a6;
  v27(&v24[v25], v29, a5);
  if (!swift_dynamicCast())
  {
    goto LABEL_8;
  }

  v81 = v14;
  v83 = a6;
  v31 = v25;
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      v78 = v91;
      v79 = v90;
      v43 = v92;
      v44 = v93;
      v45 = String.subscript.getter();
      v46 = a4;
      v47 = v24;
      v49 = v48;
      v51 = v50;
      v80 = v31;
      v53 = v52;

      v54 = v49;
      v24 = v47;
      a4 = v46;
      specialized StringProtocol<>._split(separator:maxSplits:omittingEmptySubsequences:)(v79, v78, v43, v44, v85, v84 & 1, v45, v54, v51, v53);

      goto LABEL_6;
    }

    v30 = v83;
    v14 = v81;
LABEL_8:
    if (swift_dynamicCast())
    {
      v81 = v14;
      v83 = v30;
      v56 = v90;
      v57 = v91;
      v59 = v92;
      v58 = v93;
      if (swift_dynamicCast())
      {
        specialized StringProtocol<>._split(separator:maxSplits:omittingEmptySubsequences:)(v86, v87, v85, v84 & 1, v56, v57, v59, v58);
LABEL_13:

        swift_getAssociatedTypeWitness();
        v55 = _arrayForceCast<A, B>(_:)();

        (*(v81 + 8))(&v24[v28], a5);
        goto LABEL_14;
      }

      if (swift_dynamicCast())
      {
        specialized StringProtocol<>._split(separator:maxSplits:omittingEmptySubsequences:)(v86, v87, v88, v89, v85, v84 & 1, v56, v57, v59, v58);
        goto LABEL_13;
      }

      v30 = v83;
    }

    v27(v72, v71, a5);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v62 = v75;
    v63 = Array.init<A>(_:)();
    v64 = swift_allocObject();
    v64[2] = a4;
    v64[3] = a5;
    v64[4] = v30;
    v64[5] = v62;
    v64[6] = v76;
    v64[7] = AssociatedTypeWitness;
    v90 = ZSearcher.init(pattern:by:)(v63, partial apply for implicit closure #1 in Collection<>._ranges<A>(of:), v64, a4, v30);
    v91 = v65;
    v92 = v66;
    v93 = v67;
    Collection._split<A>(by:maxSplits:omittingEmptySubsequences:)(&v90, v85, v84 & 1, v74, WitnessTable, v78);

    swift_getAssociatedTypeWitness();
    swift_getWitnessTable();
    v55 = Array.init<A>(_:)();
    a4 = v77;
    v60 = v70;
    goto LABEL_17;
  }

  v80 = v25;
  v32 = v90;
  v33 = v91;
  v34 = String.subscript.getter();
  v36 = v35;
  v38 = v37;
  v39 = a4;
  v40 = v24;
  v42 = v41;

  specialized StringProtocol<>._split(separator:maxSplits:omittingEmptySubsequences:)(v32, v33, v85, v84 & 1, v34, v36, v38, v42);
  v24 = v40;
  a4 = v39;

LABEL_6:

  swift_getAssociatedTypeWitness();
  v55 = _arrayForceCast<A, B>(_:)();

  (*(v81 + 8))(&v24[v80], a5);
LABEL_14:
  v60 = v82;
LABEL_17:
  (*(v60 + 8))(v24, a4);
  return v55;
}

unint64_t specialized StringProtocol<>._split(separator:maxSplits:omittingEmptySubsequences:)(unint64_t result, unint64_t a2, uint64_t a3, char a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6 >> 14 < a5 >> 14)
  {
    __break(1u);
  }

  else
  {
    v9 = Substring.subscript.getter();
    v44 = v10;
    v45 = v9;
    v43 = v11;
    v13 = v12;
    v14 = MEMORY[0x193ACECF0](0, 0xE000000000000000);
    v16 = v15;
    v18 = v17;
    v20 = v19;
    result = String.subscript.getter();
    if (v16 >> 14 >= v14 >> 14)
    {
      v24 = v23;
      v25 = result;
      v40 = v21;
      v41 = v22;

      v26 = v18;
      v42 = a3;
      v27 = Substring.subscript.getter();
      v29 = v28;
      v39 = v13;
      v31 = v30;
      v33 = v32;

      v47[0] = v45;
      v47[1] = v44;
      v47[2] = v43;
      v47[3] = v39;
      v47[4] = v14;
      v47[5] = v16;
      v47[6] = v26;
      v47[7] = v20;
      v47[8] = v25;
      v47[9] = v40;
      v47[10] = v41;
      v47[11] = v24;
      v47[12] = specialized SubstringSearcher.State.init(text:pattern:)(v27, v29, v31, v33, v25, v40, v41, v24);
      v47[13] = v34;
      v47[14] = v35;
      v48 = v36 & 1;
      v49 = v42;
      v50 = a4 & 1;
      specialized _copySequenceToContiguousArray<A>(_:)(v47);
      v38 = v37;
      outlined destroy of SplitSequence<SubstringSearcher>(v47, &_s17_StringProcessing13SplitSequenceVyAA17SubstringSearcherVGMd, &_s17_StringProcessing13SplitSequenceVyAA17SubstringSearcherVGMR);
      return v38;
    }
  }

  __break(1u);
  return result;
}

unint64_t StringProtocol<>._split(separator:maxSplits:omittingEmptySubsequences:)(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  Collection.subscript.getter();
  v7 = MEMORY[0x193ACECF0](0, 0xE000000000000000);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = String.subscript.getter();
  if (v9 >> 14 < v7 >> 14)
  {
    __break(1u);
  }

  else
  {
    v18 = v17;
    v19 = result;
    v33 = v15;
    v34 = v16;

    v20 = v11;
    v35 = a3;
    v21 = Substring.subscript.getter();
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v42[0] = v37;
    v42[1] = v38;
    v42[2] = v39;
    v42[3] = v40;
    v42[4] = v7;
    v42[5] = v9;
    v42[6] = v20;
    v42[7] = v13;
    v42[8] = v19;
    v42[9] = v33;
    v42[10] = v34;
    v42[11] = v18;
    v42[12] = specialized SubstringSearcher.State.init(text:pattern:)(v21, v23, v25, v27, v19, v33, v34, v18);
    v42[13] = v28;
    v42[14] = v29;
    v43 = v30 & 1;
    *&v44[3] = *&v41[3];
    *v44 = *v41;
    v45 = v35;
    v46 = a4 & 1;
    specialized _copySequenceToContiguousArray<A>(_:)(v42);
    v32 = v31;
    outlined destroy of SplitSequence<SubstringSearcher>(v42, &_s17_StringProcessing13SplitSequenceVyAA17SubstringSearcherVGMd, &_s17_StringProcessing13SplitSequenceVyAA17SubstringSearcherVGMR);
    return v32;
  }

  return result;
}

unint64_t specialized StringProtocol<>._split(separator:maxSplits:omittingEmptySubsequences:)(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a8 >> 14 < a7 >> 14)
  {
    __break(1u);
    goto LABEL_6;
  }

  v12 = result;
  v13 = Substring.subscript.getter();
  v46 = v14;
  v47 = v13;
  v16 = v15;
  v48 = v17;
  result = MEMORY[0x193ACECF0](0, 0xE000000000000000);
  if (a2 >> 14 < v12 >> 14)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v21 = result;
  v22 = v18;
  v23 = v20;
  v24 = v19;
  result = Substring.subscript.getter();
  if (v22 >> 14 >= v21 >> 14)
  {
    v28 = v27;
    v29 = result;
    v43 = v25;
    v44 = v26;

    v45 = a5;
    v30 = Substring.subscript.getter();
    v32 = v31;
    v42 = v16;
    v34 = v33;
    v36 = v35;

    v50[0] = v47;
    v50[1] = v46;
    v50[2] = v42;
    v50[3] = v48;
    v50[4] = v21;
    v50[5] = v22;
    v50[6] = v24;
    v50[7] = v23;
    v50[8] = v29;
    v50[9] = v43;
    v50[10] = v44;
    v50[11] = v28;
    v50[12] = specialized SubstringSearcher.State.init(text:pattern:)(v30, v32, v34, v36, v29, v43, v44, v28);
    v50[13] = v37;
    v50[14] = v38;
    v51 = v39 & 1;
    v52 = v45;
    v53 = a6 & 1;
    specialized _copySequenceToContiguousArray<A>(_:)(v50);
    v41 = v40;
    outlined destroy of SplitSequence<SubstringSearcher>(v50, &_s17_StringProcessing13SplitSequenceVyAA17SubstringSearcherVGMd, &_s17_StringProcessing13SplitSequenceVyAA17SubstringSearcherVGMR);
    return v41;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t StringProtocol<>._split(separator:maxSplits:omittingEmptySubsequences:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  Collection.subscript.getter();
  result = MEMORY[0x193ACECF0](0, 0xE000000000000000);
  if (a2 >> 14 < a1 >> 14)
  {
    __break(1u);
  }

  else
  {
    v15 = result;
    v16 = v12;
    v17 = v14;
    v18 = v13;
    result = Substring.subscript.getter();
    if (v16 >> 14 >= v15 >> 14)
    {
      v22 = v21;
      v23 = result;
      v37 = v19;
      v38 = v20;

      v39 = a5;
      v24 = Substring.subscript.getter();
      v26 = v25;
      v28 = v27;
      v30 = v29;

      v31 = specialized SubstringSearcher.State.init(text:pattern:)(v24, v26, v28, v30, v23, v37, v38, v22);
      v41[0] = v32 & 1;
      v42[4] = v15;
      v42[5] = v16;
      v42[6] = v18;
      v42[7] = v17;
      v42[8] = v23;
      v42[9] = v37;
      v42[10] = v38;
      v42[11] = v22;
      v42[12] = v31;
      v42[13] = v33;
      v42[14] = v34;
      v43 = v32 & 1;
      *&v44[3] = *&v41[3];
      *v44 = *v41;
      v45 = v39;
      v46 = a6 & 1;
      specialized _copySequenceToContiguousArray<A>(_:)(v42);
      v36 = v35;
      outlined destroy of SplitSequence<SubstringSearcher>(v42, &_s17_StringProcessing13SplitSequenceVyAA17SubstringSearcherVGMd, &_s17_StringProcessing13SplitSequenceVyAA17SubstringSearcherVGMR);
      return v36;
    }
  }

  __break(1u);
  return result;
}

char *BidirectionalCollection<>.split<A>(separator:maxSplits:omittingEmptySubsequences:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v51 = a3;
  v49 = a7;
  v50 = a1;
  v46 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for Executor.Matches(0, AssociatedTypeWitness, v12, v13);
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  v19 = type metadata accessor for Executor.Matches.Iterator(0, AssociatedTypeWitness, v17, v18);
  v47 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = MEMORY[0x1E69E7CC0];
  v23 = swift_allocObject();
  v24 = a6;
  v25 = *(a6 + 8);
  dispatch thunk of Collection.startIndex.getter();
  v48 = a2;
  if (a2 < 1 || (dispatch thunk of Collection.isEmpty.getter() & 1) != 0)
  {
    dispatch thunk of Collection.endIndex.getter();
    appendSubsequence #1 <A><A1>(end:) in BidirectionalCollection<>.split<A>(separator:maxSplits:omittingEmptySubsequences:)(v54, v23, v51 & 1, v22, v7, a4, v24);
LABEL_4:
    v26 = *(v22 + 16);
    goto LABEL_5;
  }

  v43 = v25;
  v28 = v49;
  v49 = v7;
  v50 = a4;
  BidirectionalCollection<>._matches<A>(of:)(v46, v28, v16);
  v29 = v45;
  v30 = Executor.Matches.makeIterator()(v45, v21);
  (*(v44 + 8))(v16, v29, v30);
  Executor.Matches.Iterator.next()(v19, &v54);
  v31 = v55;
  if (v55)
  {
    v32 = v54;
    v33 = v56;
    v34 = v57;
    v35 = v58;
    while ((appendSubsequence #1 <A><A1>(end:) in BidirectionalCollection<>.split<A>(separator:maxSplits:omittingEmptySubsequences:)(v34, v23, v51 & 1, v22, v49, v50, v24) & 1) == 0 || *(*(v22 + 16) + 16) != v48)
    {
      *(v23 + 16) = v35;
      outlined consume of Regex<A1.RegexOutput>.Match?<A><A1>(v32, v31, v33);
      Executor.Matches.Iterator.next()(v19, &v54);
      v32 = v54;
      v31 = v55;
      v33 = v56;
      v34 = v57;
      v35 = v58;
      if (!v55)
      {
        goto LABEL_12;
      }
    }

    (*(v47 + 8))(v21, v19);
    *(v23 + 16) = v35;
    outlined consume of Regex<A1.RegexOutput>.Match?<A><A1>(v32, v31, v33);
  }

  else
  {
LABEL_12:
    (*(v47 + 8))(v21, v19);
  }

  v36 = *(v23 + 16);
  v26 = v49;
  v37 = v50;
  v38 = v43;
  dispatch thunk of Collection.endIndex.getter();
  v39 = v36 >> 14;
  if (v36 >> 14 == v54 >> 14 && (v51 & 1) != 0)
  {
    goto LABEL_4;
  }

  dispatch thunk of Collection.endIndex.getter();
  if (v39 > v54 >> 14)
  {
    __break(1u);
    goto LABEL_21;
  }

  v52 = v36;
  v53 = v54;
  dispatch thunk of Collection.subscript.getter();
  v37 = v54;
  v39 = v55;
  v38 = v56;
  v21 = v57;
  v26 = *(v22 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_21:
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
  }

  v41 = *(v26 + 2);
  v40 = *(v26 + 3);
  if (v41 >= v40 >> 1)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v26);
  }

  *(v26 + 2) = v41 + 1;
  v42 = &v26[32 * v41];
  *(v42 + 4) = v37;
  *(v42 + 5) = v39;
  *(v42 + 6) = v38;
  *(v42 + 7) = v21;
  *(v22 + 16) = v26;
LABEL_5:

  return v26;
}

uint64_t appendSubsequence #1 <A><A1>(end:) in BidirectionalCollection<>.split<A>(separator:maxSplits:omittingEmptySubsequences:)(unint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a2 + 16) >> 14;
  v14 = (v13 == a1 >> 14) & a3;
  if (v14)
  {
    return v14 ^ 1u;
  }

  if (a1 >> 14 < v13)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = a4;
  dispatch thunk of Collection.subscript.getter();
  v9 = v20;
  v10 = v21;
  v11 = v22;
  v12 = v23;
  v8 = *(v7 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    *(v7 + 16) = v8;
  }

  v17 = *(v8 + 2);
  v16 = *(v8 + 3);
  if (v17 >= v16 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v8);
  }

  *(v8 + 2) = v17 + 1;
  v18 = &v8[32 * v17];
  *(v18 + 4) = v9;
  *(v18 + 5) = v10;
  *(v18 + 6) = v11;
  *(v18 + 7) = v12;
  *(v7 + 16) = v8;
  return v14 ^ 1u;
}

int *BidirectionalCollection<>._matches<A>(of:)@<X0>(uint64_t a2@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v8 = type metadata accessor for MEProgram(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a4 + 16);
  v30 = a2;
  v11(&v35, a2, a4);
  Regex.Program.loweredProgram.getter(v10);

  Collection.subscript.getter();
  v12 = v33;
  v29 = v34;
  dispatch thunk of Collection.startIndex.getter();
  v13 = v32;
  result = dispatch thunk of Collection.endIndex.getter();
  v15 = v31;
  v28 = v13;
  if (v31 >> 14 < v13 >> 14)
  {
    __break(1u);
  }

  else
  {
    v27 = v12;
    dispatch thunk of Collection.startIndex.getter();
    v16 = v32;
    result = dispatch thunk of Collection.endIndex.getter();
    v17 = v31;
    if (v31 >> 14 >= v16 >> 14)
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      outlined init with take of DSLTree.QuantificationKind(v10, a5, type metadata accessor for MEProgram);
      result = type metadata accessor for Executor.Matches(0, AssociatedTypeWitness, v19, v20);
      v21 = (a5 + result[7]);
      v22 = v28;
      v23 = v29;
      *v21 = v27;
      v21[1] = v23;
      v24 = (a5 + result[8]);
      *v24 = v22;
      v24[1] = v15;
      v25 = (a5 + result[9]);
      *v25 = v16;
      v25[1] = v17;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t BidirectionalCollection<>.starts<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Collection.subscript.getter();
  v7 = v16;
  v8 = v17;
  v10 = v18;
  v9 = v19;
  (*(a5 + 16))(&v15, a3, a5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Regex(0, AssociatedTypeWitness, v12, v13);
  Regex.prefixMatch(in:)(v7, v8, v10, v9, &v16);

  if (!v17)
  {
    return 0;
  }

  outlined consume of Regex<A1.RegexOutput>.Match?<A><A1>(v16, v17, v18);
  return 1;
}

unint64_t SubstringSearcher.nextRangeNaive(in:searchFromEnd:)@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a6@<X8>)
{
  if (*(v6 + 72) < 1)
  {
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = *(v6 + 32);
    v10 = Substring.index(before:)();
    v33 = a2 >> 14;
    if (a2 >> 14 < Substring.index(before:)() >> 14)
    {
      goto LABEL_21;
    }

    v37 = v9 >> 14;
    v34 = v10 >> 14;
    v35 = v8 >> 14;
LABEL_4:
    v11 = Substring.subscript.getter();
    v13 = v12;
    v14 = Substring.subscript.getter();
    v16 = v15;
    v17 = v11 >> 14;
    if (v11 >> 14 == v13 >> 14)
    {
      goto LABEL_22;
    }

    v18 = v14;
    v19 = v11;
    while (Substring.subscript.getter() != v18 || v20 != v16)
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v21)
      {
        goto LABEL_12;
      }

      v19 = Substring.index(after:)();
      v17 = v19 >> 14;
      if (v19 >> 14 == v13 >> 14)
      {
LABEL_22:

        v23 = 0;
        v30 = 0;
        result = 0;
        v31 = 1;
        v32 = 1;
LABEL_26:
        *a6 = v23;
        *(a6 + 8) = v30;
        *(a6 + 16) = v31;
        *(a6 + 24) = result;
        *(a6 + 32) = v32 & 1;
        return result;
      }
    }

LABEL_12:

    if (v17 < v35)
    {
      goto LABEL_28;
    }

    if (v37 < v34)
    {
      while (1)
      {
        v24 = Substring.index(before:)();
        v25 = Substring.index(before:)();
        v26 = Substring.subscript.getter();
        v28 = v27;
        if (v26 == Substring.subscript.getter() && v28 == v29)
        {
        }

        else
        {
          v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v22 & 1) == 0)
          {
            if (v33 < Substring.index(after:)() >> 14)
            {
LABEL_21:
              __break(1u);
              goto LABEL_22;
            }

            goto LABEL_4;
          }
        }

        v23 = v25;
        if (v37 >= v24 >> 14)
        {
          goto LABEL_24;
        }
      }
    }

    v23 = v19;
LABEL_24:
    result = Substring.index(after:)();
    if (result >> 14 >= v23 >> 14)
    {
      v30 = result;
      result = Substring.index(_:offsetBy:limitedBy:)();
      v31 = 0;
      goto LABEL_26;
    }
  }

  __break(1u);
  return result;
}

unint64_t SubstringSearcher.nextRange(in:searchFromEnd:)@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a5;
  v9 = a2;
  v10 = a6;
  v11 = *(v6 + 72);
  if (!v11)
  {
    if ((a5 ^ a2) >= 0x4000)
    {
      result = Substring.index(after:)();
      v32 = 0;
      v33 = 0;
    }

    else
    {
      v32 = 0;
      result = 0;
      v33 = 1;
    }

    v31 = v7;
    goto LABEL_34;
  }

  v12 = v6;
  v13 = *(v6 + 64);
  if (!*(v13 + 16))
  {
    SubstringSearcher.nextRangeNaive(in:searchFromEnd:)(result, a2, v42);
    v7 = v42[0];
    v31 = v42[1];
    v32 = v43;
    result = v44;
    v33 = v45;
LABEL_34:
    *v10 = v7;
    *(v10 + 8) = v31;
    *(v10 + 16) = v32;
    *(v10 + 24) = result;
    *(v10 + 32) = v33 & 1;
    return result;
  }

  v36 = v11 - 1;
  if (!__OFSUB__(v11, 1))
  {
    v41 = *(v12 + 32) >> 14;
    v38 = result >> 14;
    result = a5;
    v35 = v13;
    while (1)
    {
      v37 = result;
      v7 = Substring.index(before:)();
      v14 = Substring.index(before:)() >> 14;
      if (v14 >= v41)
      {
        break;
      }

      v15 = v36;
LABEL_18:
      v24 = Substring.subscript.getter();
      if (*(v13 + 16))
      {
        v26 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v25);
        v28 = v27;

        if (v28)
        {
          v29 = *(*(v13 + 56) + 8 * v26);
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {

        v29 = 0;
      }

      if (__OFSUB__(v15, v29))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      result = Substring.index(_:offsetBy:limitedBy:)();
      if (v30)
      {
        v7 = 0;
        v31 = 0;
        v32 = 1;
        v33 = 1;
LABEL_30:
        v10 = a6;
        goto LABEL_34;
      }
    }

    v40 = v36;
    v16 = v9;
    v17 = a3;
    while (1)
    {
      v39 = v14;
      v18 = Substring.subscript.getter();
      v20 = v19;
      if (v18 == Substring.subscript.getter() && v20 == v21)
      {
      }

      else
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v22 & 1) == 0)
        {
          a3 = v17;
          v9 = v16;
          v13 = v35;
          v15 = v40;
          goto LABEL_18;
        }
      }

      if (__OFSUB__(v40--, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if (v39 == v41)
      {
        break;
      }

      if (v38 >= v7 >> 14)
      {
        goto LABEL_36;
      }

      v7 = Substring.index(before:)();
      v14 = Substring.index(before:)() >> 14;
      if (v14 < v41)
      {
        v13 = v35;
        a3 = v17;
        v9 = v16;
        v15 = v40;
        goto LABEL_18;
      }
    }

    if (v37 >> 14 < v7 >> 14)
    {
      goto LABEL_39;
    }

    result = Substring.index(_:offsetBy:limitedBy:)();
    v32 = 0;
    v31 = v37;
    goto LABEL_30;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance SubstringSearcher@<Q0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 48);
  a1[2] = *(v1 + 32);
  a1[3] = v2;
  a1[4] = *(v1 + 64);
  *(a1 + 73) = *(v1 + 73);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance SubstringSearcher()
{
  v1 = v0[3];
  v5[2] = v0[2];
  v5[3] = v1;
  v6[0] = v0[4];
  *(v6 + 9) = *(v0 + 73);
  v2 = v0[1];
  v5[0] = *v0;
  v5[1] = v2;
  v3 = specialized _copySequenceToContiguousArray<A>(_:)(v5);
  outlined destroy of SubstringSearcher(v5);
  return v3;
}

unint64_t protocol witness for IteratorProtocol.next() in conformance SubstringSearcher@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 88))
  {
    v3 = 0uLL;
    v4 = 1;
  }

  else
  {
    v5 = *(v1 + 10);
    v6 = v1[1];
    v14 = *v1;
    v15 = v6;
    v7 = v1[3];
    v16 = v1[2];
    v17 = v7;
    v18[0] = v1[4];
    *(v18 + 9) = *(v1 + 73);
    result = SubstringSearcher.nextRange(in:searchFromEnd:)(v14, *(&v14 + 1), v15, v5, &v10);
    v3 = v10;
    v4 = v11;
    v9 = v13;
    *(v1 + 10) = v12;
    *(v1 + 88) = v9;
  }

  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

void *protocol witness for CollectionSearcher.state(for:in:) in conformance SubstringSearcher@<X0>(uint64_t a3@<X8>)
{
  v5 = v3[4];
  v6 = v3[5];
  v7 = v3[6];
  v8 = v3[7];
  v17 = v7;

  v9 = Substring.subscript.getter();
  result = specialized SubstringSearcher.State.init(text:pattern:)(v9, v10, v11, v12, v5, v6, v17, v8);
  *a3 = result;
  *(a3 + 8) = v14;
  *(a3 + 16) = v15;
  *(a3 + 24) = v16 & 1;
  return result;
}

unint64_t *protocol witness for CollectionSearcher.search(_:_:) in conformance SubstringSearcher@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 24))
  {
    v4 = 0uLL;
    v5 = 1;
  }

  else
  {
    result = SubstringSearcher.nextRange(in:searchFromEnd:)(*result, result[1], result[2], *(a2 + 16), &v8);
    v4 = v8;
    v5 = v9;
    v7 = v11;
    *(a2 + 16) = v10;
    *(a2 + 24) = v7;
  }

  *a3 = v4;
  *(a3 + 16) = v5;
  return result;
}

uint64_t Collection._trimmingPrefix<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v37 = a1;
  v35 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for PartialRangeFrom();
  v31 = *(v12 - 8);
  v32 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v30 = &v27 - v13;
  v14 = type metadata accessor for Optional();
  v28 = *(v14 - 8);
  v29 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v27 - v19;
  v21 = v6;
  CollectionConsumer.consuming(_:)(v6, a3, a4, v17);
  v22 = *(v18 + 48);
  v23 = v22(v17, 1, AssociatedTypeWitness);
  v36 = v21;
  v33 = a2;
  v34 = AssociatedConformanceWitness;
  if (v23 == 1)
  {
    dispatch thunk of Collection.startIndex.getter();
    if (v22(v17, 1, AssociatedTypeWitness) != 1)
    {
      (*(v28 + 8))(v17, v29);
    }
  }

  else
  {
    (*(v18 + 32))(v20, v17, AssociatedTypeWitness);
  }

  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v25 = v30;
    (*(v18 + 32))(v30, v20, AssociatedTypeWitness);
    v26 = v32;
    swift_getWitnessTable();
    Collection.subscript.getter();
    return (*(v31 + 8))(v25, v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CollectionConsumer.consuming(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a4;
  swift_getAssociatedTypeWitness();
  v41 = a3;
  v40 = a2;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v36 = TupleTypeMetadata2;
  v37 = v9;
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v33 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v31 - v19;
  swift_getAssociatedConformanceWitness();
  v21 = type metadata accessor for Range();
  v34 = *(v21 - 8);
  v35 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v32 = &v31 - v22;
  swift_checkMetadataState();
  dispatch thunk of Collection.startIndex.getter();
  v39 = a1;
  dispatch thunk of Collection.endIndex.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v24 = *(v15 + 32);
    v24(v14, v20, AssociatedTypeWitness);
    v25 = v36;
    v24(&v14[*(v36 + 48)], v18, AssociatedTypeWitness);
    v26 = v37;
    v27 = v33;
    (*(v37 + 16))(v33, v14, v25);
    v31 = *(v25 + 48);
    v28 = v32;
    v24(v32, v27, AssociatedTypeWitness);
    v29 = *(v15 + 8);
    v29(&v27[v31], AssociatedTypeWitness);
    (*(v26 + 32))(v27, v14, v25);
    v30 = v35;
    v24(&v28[*(v35 + 36)], &v27[*(v25 + 48)], AssociatedTypeWitness);
    v29(v27, AssociatedTypeWitness);
    (*(v41 + 24))(v39, v28, v40);
    return (*(v34 + 8))(v28, v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CollectionConsumer.consume<>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = AssociatedConformanceWitness;
  v33 = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for PartialRangeFrom();
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v29 = &v28 - v9;
  v10 = swift_checkMetadataState();
  v34 = *(v10 - 8);
  v35 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v28 - v11;
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v28 - v18;
  CollectionConsumer.consuming(_:)(a1, a2, a3, v16);
  v20 = (*(v17 + 48))(v16, 1, AssociatedTypeWitness);
  if (v20 == 1)
  {
    (*(v13 + 8))(v16, v12);
    return v20 != 1;
  }

  v21 = *(v17 + 32);
  v21(v19, v16, AssociatedTypeWitness);
  v22 = v34;
  v23 = v35;
  (*(v34 + 32))(v36, a1, v35);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v25 = v29;
    v21(v29, v19, AssociatedTypeWitness);
    v26 = v31;
    swift_getWitnessTable();
    v27 = v36;
    Collection.subscript.getter();
    (*(v30 + 8))(v25, v26);
    (*(v22 + 8))(v27, v23);
    return v20 != 1;
  }

  __break(1u);
  return result;
}

uint64_t RangeReplaceableCollection._trimPrefix<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a1;
  v28 = a5;
  v26 = a3;
  v24 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = a2;
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for PartialRangeUpTo();
  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v21 - v17;
  v25 = v5;
  CollectionConsumer.consuming(_:)(v5, v26, v28, v15);
  if ((*(v16 + 48))(v15, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v12 + 8))(v15, v11);
  }

  v20 = *(v16 + 32);
  v20(v18, v15, AssociatedTypeWitness);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v20(v10, v18, AssociatedTypeWitness);
    swift_getWitnessTable();
    RangeReplaceableCollection.removeSubrange<A>(_:)();
    return (*(v22 + 8))(v10, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Collection._endOfPrefix(while:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v18 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v17 - v12;
  v20 = a3;
  v21 = a4;
  v22 = a1;
  v23 = a2;
  result = Collection.firstIndex(where:)();
  if (!v5)
  {
    v17[1] = 0;
    v15 = *(AssociatedTypeWitness - 8);
    v16 = *(v15 + 48);
    if (v16(v13, 1, AssociatedTypeWitness) == 1)
    {
      dispatch thunk of Collection.endIndex.getter();
      result = v16(v13, 1, AssociatedTypeWitness);
      if (result != 1)
      {
        return (*(v18 + 8))(v13, v11);
      }
    }

    else
    {
      return (*(v15 + 32))(v19, v13, AssociatedTypeWitness);
    }
  }

  return result;
}

uint64_t Collection.trimmingPrefix(while:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a1;
  v20 = a2;
  v18[1] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for PartialRangeFrom();
  v18[0] = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = v18 - v14;
  v16 = v21;
  result = Collection._endOfPrefix(while:)(v19, v20, a3, a4, v18 - v14);
  if (!v16)
  {
    v20 = v5;
    v21 = 0;
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if (result)
    {
      (*(v13 + 32))(v12, v15, AssociatedTypeWitness);
      swift_getWitnessTable();
      Collection.subscript.getter();
      return (*(v18[0] + 8))(v12, v9);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t Collection<>.trimPrefix(while:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v26 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for PartialRangeFrom();
  v22 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v24 = *(a3 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v21 - v16;
  v18 = v26;
  v26 = v4;
  v19 = v27;
  result = Collection._endOfPrefix(while:)(v25, v18, a3, a4, &v21 - v16);
  if (!v19)
  {
    v27 = 0;
    (*(v24 + 32))(v14, v26, a3);
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if (result)
    {
      (*(v15 + 32))(v11, v17, AssociatedTypeWitness);
      swift_getWitnessTable();
      Collection.subscript.getter();
      (*(v22 + 8))(v11, v8);
      return (*(v24 + 8))(v14, a3);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t RangeReplaceableCollection.trimPrefix(while:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a1;
  v45 = a2;
  v40 = a4;
  v6 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v39 = *(TupleTypeMetadata2 - 8);
  v8 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v37 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v34 - v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for Range();
  v38 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  v21 = v44;
  v22 = v45;
  v44 = a3;
  v45 = v4;
  v23 = v46;
  result = Collection._endOfPrefix(while:)(v21, v22, a3, v6, &v34 - v19);
  if (!v23)
  {
    v36 = 0;
    v25 = v15;
    v26 = v41;
    v46 = v11;
    v27 = TupleTypeMetadata2;
    dispatch thunk of Collection.startIndex.getter();
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v28 = *(v25 + 32);
      v28(v26, v18, AssociatedTypeWitness);
      v28(&v26[*(v27 + 48)], v20, AssociatedTypeWitness);
      AssociatedConformanceWitness = v28;
      v29 = v39;
      v30 = v37;
      (*(v39 + 16))(v37, v26, v27);
      v35 = *(v27 + 48);
      v28(v14, v30, AssociatedTypeWitness);
      v31 = *(v25 + 8);
      v31(&v30[v35], AssociatedTypeWitness);
      (*(v29 + 32))(v30, v26, v27);
      v32 = *(v27 + 48);
      v33 = v46;
      AssociatedConformanceWitness(&v14[*(v46 + 36)], &v30[v32], AssociatedTypeWitness);
      v31(v30, AssociatedTypeWitness);
      dispatch thunk of RangeReplaceableCollection.removeSubrange(_:)();
      return (*(v38 + 8))(v14, v33);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t Collection<>.trimmingPrefix<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v23[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[0] = v11;
  v23[1] = v12;
  v23[2] = v13;
  v23[3] = v14;
  v23[4] = v15;
  v16 = type metadata accessor for FixedPatternConsumer(0, v23);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v23[-1] - v18;
  (*(v8 + 16))(v10, a1, a3);
  (*(v8 + 32))(v19, v10, a3);
  WitnessTable = swift_getWitnessTable();
  Collection._trimmingPrefix<A>(_:)(v19, a2, v16, WitnessTable, a4);
  return (*(v17 + 8))(v19, v16);
}

uint64_t Collection<>.trimPrefix<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = v9;
  v21[1] = v10;
  v21[2] = v11;
  v21[3] = v12;
  v21[4] = v13;
  v14 = type metadata accessor for FixedPatternConsumer(0, v21);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v21[-1] - v16;
  (*(v6 + 16))(v8, a1, a3);
  (*(v6 + 32))(v17, v8, a3);
  WitnessTable = swift_getWitnessTable();
  CollectionConsumer.consume<>(_:)(v3, v14, WitnessTable);
  return (*(v15 + 8))(v17, v14);
}

uint64_t RangeReplaceableCollection<>.trimPrefix<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v24[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 8);
  v24[0] = v13;
  v24[1] = v14;
  v24[2] = v12;
  v24[3] = v15;
  v24[4] = v16;
  v17 = type metadata accessor for FixedPatternConsumer(0, v24);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v24[-1] - v19;
  (*(v8 + 16))(v10, a1, a3);
  (*(v8 + 32))(v20, v10, a3);
  WitnessTable = swift_getWitnessTable();
  RangeReplaceableCollection._trimPrefix<A>(_:)(v20, a2, v17, a4, WitnessTable);
  return (*(v18 + 8))(v20, v17);
}

void BidirectionalCollection<>.trimmingPrefix<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Collection.subscript.getter();
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v10 = v19;
  (*(a5 + 16))(&v15, a3, a5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Regex(0, AssociatedTypeWitness, v12, v13);
  Regex.prefixMatch(in:)(v7, v8, v9, v10, &v16);

  if (v17)
  {
    v14 = v20;
    outlined consume of Regex<A1.RegexOutput>.Match?<A><A1>(v16, v17, v18);
    if (v8 >> 14 < v14 >> 14)
    {
      __break(1u);
    }

    else
    {
      Substring.subscript.getter();
    }
  }
}

void RangeReplaceableCollection<>.trimPrefix<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Collection.subscript.getter();
  v8 = v19;
  v9 = v20;
  v10 = v21;
  v11 = v22;
  (*(a6 + 16))(&v18, a3, a6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Regex(0, AssociatedTypeWitness, v13, v14);
  Regex.prefixMatch(in:)(v8, v9, v10, v11, &v19);

  v15 = v20;
  if (v20)
  {
    v16 = v19;
    v17 = v21;
    v19 = v22;
    v20 = v23;
    dispatch thunk of RangeReplaceableCollection.removeSubrange(_:)();
    outlined consume of Regex<A1.RegexOutput>.Match?<A><A1>(v16, v15, v17);
  }
}

uint64_t FixedPatternConsumer.consuming(_:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a2;
  v50 = a1;
  v53 = a4;
  v5 = a3[4];
  v6 = a3[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = type metadata accessor for Optional();
  v48 = *(v49 - 8);
  v8 = MEMORY[0x1EEE9AC00](v49);
  v64 = &v48 - v9;
  v68 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v61 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v63 = &v48 - v13;
  v14 = a3[3];
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a3;
  v65 = a3[5];
  v18 = swift_getAssociatedTypeWitness();
  v51 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - v19;
  v21 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v48 - v22;
  v52 = v24;
  (*(v24 + 16))(&v48 - v22, v67, v21);
  (*(v15 + 16))(v17, v66, v14);
  dispatch thunk of Sequence.makeIterator()();
  v25 = v50;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = v64;
  v65 = v20;
  v66 = v18;
  v28 = v23;
  v60 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v29 = v27;
  v30 = v68;
  v58 = *(v68 + 48);
  v59 = v68 + 48;
  if (v58(v29, 1, AssociatedTypeWitness) == 1)
  {
LABEL_6:
    (*(v51 + 8))(v65, v66);
    (*(v48 + 8))(v29, v49);
    v45 = v52;
    v44 = v53;
    (*(v52 + 32))(v53, v28, v21);
    v46 = 0;
  }

  else
  {
    v32 = *(v30 + 32);
    v31 = v30 + 32;
    v54 = (v31 - 16);
    v55 = v21;
    v68 = v31;
    v56 = v32;
    v57 = (v31 - 24);
    while (1)
    {
      v33 = v63;
      v56(v63, v29, AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      type metadata accessor for Range();
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v34 = dispatch thunk of Collection.subscript.read();
      v35 = v61;
      (*v54)(v61);
      (v34)(v69, 0);
      LOBYTE(v34) = dispatch thunk of static Equatable.== infix(_:_:)();
      v36 = v33;
      v37 = v6;
      v38 = v5;
      v39 = v25;
      v40 = *v57;
      v41 = v35;
      v21 = v55;
      (*v57)(v41, AssociatedTypeWitness);
      v40(v36, AssociatedTypeWitness);
      if ((v34 & 1) == 0)
      {
        goto LABEL_8;
      }

      dispatch thunk of Collection.formIndex(after:)();
      v42 = v64;
      dispatch thunk of IteratorProtocol.next()();
      v29 = v42;
      v43 = v58(v42, 1, AssociatedTypeWitness);
      v25 = v39;
      v5 = v38;
      v6 = v37;
      if (v43 == 1)
      {
        goto LABEL_6;
      }
    }

    (*v57)(v33, AssociatedTypeWitness);
LABEL_8:
    (*(v51 + 8))(v65, v66);
    v45 = v52;
    (*(v52 + 8))(v28, v21);
    v46 = 1;
    v44 = v53;
  }

  return (*(v45 + 56))(v44, v46, 1, v21);
}

uint64_t BidirectionalCollection<>.firstMatch<A, B>(of:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, void *x8_0@<X8>)
{
  Collection.subscript.getter();
  v11 = v19[0];
  v12 = v19[1];
  v14 = v19[2];
  v13 = v19[3];
  (*(a6 + 16))(v19, a4, a6);
  v17 = type metadata accessor for Regex(0, a3, v15, v16);
  Regex.firstMatch(in:)(v11, v12, v14, v13, v17, x8_0);
}

uint64_t RangeReplaceableCollection<>.replacing<A, B, C>(_:subrange:maxReplacements:with:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(__int128 *)@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v51 = a3;
  v52 = a4;
  v49 = a7;
  result = MEMORY[0x1EEE9AC00](a1);
  v20 = v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v50 = v20;
  v59 = a11;
  v48 = a8;
  v47 = result;
  v68 = v17;
  v46 = v18;
  v58 = v16;
  dispatch thunk of RangeReplaceableCollection.init()();
  *&v65 = a2;
  swift_getCanonicalSpecializedMetadata();
  v21 = *(a9 + 8);
  lazy protocol witness table accessor for type PartialRangeUpTo<String.Index> and conformance PartialRangeUpTo<A>(&lazy protocol witness table cache variable for type PartialRangeUpTo<String.Index> and conformance PartialRangeUpTo<A>, &unk_1F01905C0, &cache variable for noncanonical specialized generic type metadata for PartialRangeUpTo<String.Index>, MEMORY[0x1E69E6D28]);
  Collection.subscript.getter();
  v65 = v61;
  v66 = v62;
  v67 = v63;
  v22 = lazy protocol witness table accessor for type Substring and conformance Substring();
  v23 = MEMORY[0x1E69E67B0];
  v54 = a6;
  v55 = v22;
  v53 = a9;
  dispatch thunk of RangeReplaceableCollection.append<A>(contentsOf:)();
  *&v65 = a2;
  *(&v65 + 1) = v58;
  v57 = v11;
  v58 = a5;
  v56 = v21;
  dispatch thunk of Collection.subscript.getter();
  v65 = v61;
  v66 = v62;
  v67 = v63;
  v24 = lazy protocol witness table accessor for type Substring and conformance Substring();
  v25 = v46;
  v26 = BidirectionalCollection<>.matches<A, B>(of:)(v47, v23, v46, v48, v24, v59);

  *&v65 = v26;
  v29 = type metadata accessor for Regex.Match(255, v25, v27, v28);
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.prefix(_:)();
  v30 = v61;
  v32 = v62;
  v31 = v63;
  v33 = ArraySlice.startIndex.getter();
  if (v33 != ArraySlice.endIndex.getter())
  {
    v42[0] = a10;
    v47 = v31 >> 1;
    v34 = (*(&v30 + 1) + 40 * v33 + 16);
    v48 = v33;
    v46 = v30;
    v45 = v29;
    v44 = *(&v30 + 1);
    v43 = v32;
    v42[1] = v31;
    while (1)
    {
      result = ArraySlice._hoistableIsNativeTypeChecked()();
      if (v48 < v32 || v47 <= v33)
      {
        break;
      }

      v35 = v34[1];
      if (v35 >> 14 < a2 >> 14)
      {
        goto LABEL_14;
      }

      v36 = *(v34 - 1);
      v37 = *v34;
      v68 = v34[2];
      v38 = v54;
      v59 = *(v34 - 2);
      *&v65 = a2;
      *(&v65 + 1) = v35;

      v39 = v58;
      dispatch thunk of Collection.subscript.getter();
      v65 = v61;
      v66 = v62;
      v67 = v63;
      dispatch thunk of RangeReplaceableCollection.append<A>(contentsOf:)();
      v40 = v60;
      *&v61 = v59;
      *(&v61 + 1) = v36;
      v62 = v37;
      v63 = v35;
      v64 = v68;
      v51(&v61);
      if (v40)
      {
        (*(*(v39 - 8) + 8))(v38, v39);

        return swift_unknownObjectRelease();
      }

      v60 = 0;
      ++v33;

      dispatch thunk of RangeReplaceableCollection.append<A>(contentsOf:)();
      v32 = v43;
      v41 = ArraySlice.endIndex.getter();
      v34 += 5;
      a2 = v68;
      if (v33 == v41)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v68 = a2;
LABEL_10:
  swift_unknownObjectRelease();
  *&v65 = v68;
  swift_getCanonicalSpecializedMetadata();
  lazy protocol witness table accessor for type PartialRangeUpTo<String.Index> and conformance PartialRangeUpTo<A>(&lazy protocol witness table cache variable for type PartialRangeFrom<String.Index> and conformance PartialRangeFrom<A>, &unk_1F0190580, &cache variable for noncanonical specialized generic type metadata for PartialRangeFrom<String.Index>, MEMORY[0x1E69E6D18]);
  Collection.subscript.getter();
  v65 = v61;
  v66 = v62;
  v67 = v63;
  return dispatch thunk of RangeReplaceableCollection.append<A>(contentsOf:)();
}

uint64_t BidirectionalCollection<>.matches<A, B>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25[1] = a5;
  *&v26 = a6;
  v8 = type metadata accessor for Executor.Matches(0, a3, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v25 - v10;
  v14 = type metadata accessor for Executor.Matches.Iterator(0, a3, v12, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v25 - v16;
  type metadata accessor for Regex.Match(0, a3, v18, v19);
  v31 = Array.init()();
  BidirectionalCollection<>._matches<A>(of:)(a4, v26, v11);
  v20 = Executor.Matches.makeIterator()(v8, v17);
  (*(v9 + 8))(v11, v8, v20);
  Executor.Matches.Iterator.next()(v14, &v28);
  if (v29)
  {
    v21 = v28;
    v26 = v30;
    v27 = v29;
    type metadata accessor for Array();
    v23 = v26;
    v22 = v27;
    do
    {
      v28 = v21;
      v30 = v23;
      v29 = v22;
      Array.append(_:)();
      Executor.Matches.Iterator.next()(v14, &v28);
      v21 = v28;
      v22 = v29;
      v23 = v30;
    }

    while (v29);
  }

  (*(v15 + 8))(v17, v14);
  return v31;
}

uint64_t RangeReplaceableCollection<>.replacing<A, B, C>(_:maxReplacements:with:)@<X0>(uint64_t a1@<X0>, void (*a2)(__int128 *)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10)
{
  dispatch thunk of Collection.startIndex.getter();
  result = dispatch thunk of Collection.endIndex.getter();
  if (v18 >> 14 >= v19 >> 14)
  {
    return RangeReplaceableCollection<>.replacing<A, B, C>(_:subrange:maxReplacements:with:)(a1, v19, a2, a3, a4, a7, a5, a6, a8, a9, a10);
  }

  __break(1u);
  return result;
}

uint64_t RangeReplaceableCollection<>.replace<A, B, C>(_:maxReplacements:with:)(uint64_t a1, uint64_t a2, void (*a3)(__int128 *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v24 = a6;
  v21[0] = a8;
  v21[1] = a2;
  v22 = a3;
  v23 = a4;
  v15 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of Collection.startIndex.getter();
  v18 = v27;
  result = dispatch thunk of Collection.endIndex.getter();
  if (v26 >> 14 < v18 >> 14)
  {
    __break(1u);
  }

  else
  {
    v20 = v25;
    result = RangeReplaceableCollection<>.replacing<A, B, C>(_:subrange:maxReplacements:with:)(a1, v18, v22, v23, a5, v17, a7, v21[0], a9, a10, a11);
    if (!v20)
    {
      (*(v15 + 8))(v11, a5);
      return (*(v15 + 32))(v11, v17, a5);
    }
  }

  return result;
}

uint64_t DefaultSearcherState.init(position:end:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for DefaultSearcherState.Position(0, a3, a4, a4);
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v12 = *(type metadata accessor for DefaultSearcherState(0, a3, a4, v11) + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 32);

  return v14(a5 + v12, a2, AssociatedTypeWitness);
}

uint64_t StatelessCollectionSearcher.state(for:in:)@<X0>(uint64_t a1@<X1>, uint64_t a4@<X8>)
{
  v20 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v12 = type metadata accessor for DefaultSearcherState.Position(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19 - v13;
  v15 = *(v8 + 16);
  v15(&v19 - v13, a1, v7);
  (*(v8 + 56))(v14, 0, 1, v7);
  swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for Range();
  v15(v10, a1 + *(v16 + 36), v7);
  v17 = swift_checkMetadataState();
  return DefaultSearcherState.init(position:end:)(v14, v10, v17, AssociatedConformanceWitness, v20);
}

uint64_t StatelessCollectionSearcher.search(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v86 = a4;
  v87 = a1;
  v90 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v85 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v81 = *(TupleTypeMetadata2 - 8);
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v83 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v80 = &v63 - v12;
  v88 = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for Range();
  v14 = type metadata accessor for Optional();
  v76 = *(v14 - 8);
  v77 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v82 = &v63 - v16;
  v17 = v13;
  v18 = *(v13 - 8);
  v19 = MEMORY[0x1EEE9AC00](v15);
  v79 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v78 = &v63 - v21;
  v89 = AssociatedConformanceWitness;
  v23 = type metadata accessor for DefaultSearcherState.Position(0, AssociatedTypeWitness, AssociatedConformanceWitness, v22);
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v73 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v63 - v28;
  v30 = *(v9 - 8);
  v31 = MEMORY[0x1EEE9AC00](v27);
  v74 = &v63 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v63 - v33;
  (*(v24 + 16))(v29, a2, v23);
  if ((*(v30 + 48))(v29, 1, v9) == 1)
  {
    (*(v24 + 8))(v29, v23);
    goto LABEL_6;
  }

  v69 = v24;
  v70 = v23;
  v75 = v18;
  v72 = v17;
  v35 = *(v30 + 32);
  v35(v34, v29, v9);
  v66 = AssociatedTypeWitness;
  v37 = *(type metadata accessor for DefaultSearcherState(0, AssociatedTypeWitness, v89, v36) + 36);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v39 = v30;
    v40 = v35;
    v41 = v80;
    v40(v80, v34, v9);
    v42 = TupleTypeMetadata2;
    v43 = *(v39 + 16);
    v44 = &v41[*(TupleTypeMetadata2 + 48)];
    v68 = a2;
    v65 = v39 + 16;
    v64 = v43;
    v43(v44, (a2 + v37), v9);
    v45 = v81;
    v46 = v83;
    (*(v81 + 16))(v83, v41, v42);
    v71 = *(v42 + 48);
    v47 = v79;
    v40(v79, v46, v9);
    v67 = v39;
    v48 = *(v39 + 8);
    v63 = v39 + 8;
    v48(&v46[v71], v9);
    (*(v45 + 32))(v46, v41, v42);
    v49 = v72;
    v40(&v47[*(v72 + 36)], &v46[*(v42 + 48)], v9);
    TupleTypeMetadata2 = v48;
    v48(v46, v9);
    v50 = v82;
    (*(v86 + 16))(v87, v47, v85);
    v18 = v75;
    (*(v75 + 8))(v47, v49);
    v17 = v49;
    if ((*(v18 + 48))(v50, 1, v49) != 1)
    {
      v53 = *(v18 + 32);
      v54 = v78;
      v53(v78, v50, v49);
      v55 = Range.isEmpty.getter();
      v52 = v90;
      if (v55)
      {
        v86 = v53;
        v56 = *(v49 + 36);
        v57 = v74;
        dispatch thunk of Collection.endIndex.getter();
        v88 = v56;
        v58 = dispatch thunk of static Equatable.== infix(_:_:)();
        (TupleTypeMetadata2)(v57, v9);
        if (v58)
        {
          v59 = v68;
          (*(v69 + 8))(v68, v70);
          (*(v67 + 56))(v59, 1, 1, v9);
          v54 = v78;
        }

        else
        {
          v61 = v78;
          v62 = v73;
          dispatch thunk of Collection.index(after:)();
          (*(v67 + 56))(v62, 0, 1, v9);
          (*(v69 + 40))(v68, v62, v70);
          v54 = v61;
        }

        v53 = v86;
      }

      else
      {
        v60 = v68;
        (*(v69 + 8))(v68, v70);
        v64(v60, &v54[*(v49 + 36)], v9);
        (*(v67 + 56))(v60, 0, 1, v9);
      }

      v53(v52, v54, v17);
      v51 = 0;
      v18 = v75;
      return (*(v18 + 56))(v52, v51, 1, v17);
    }

    (*(v76 + 8))(v50, v77);
LABEL_6:
    v51 = 1;
    v52 = v90;
    return (*(v18 + 56))(v52, v51, 1, v17);
  }

  __break(1u);
  return result;
}

uint64_t zAlgorithm<A>(_:by:)(uint64_t a1, uint64_t (*a2)(char *, char *), uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18E5ED040;
  result = MEMORY[0x193ACEA40](a1, a4);
  *(v6 + 32) = result;
  if (result >= 2)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    type metadata accessor for Array();
    swift_getWitnessTable();
    RandomAccessCollection<>.indices.getter();
    swift_getCanonicalSpecializedMetadata();
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>, MEMORY[0x1E69E66F0]);
    result = Collection.dropFirst(_:)();
    v6 = v25;
    if (v25 == v26)
    {
LABEL_3:
      v11 = *(v8 + 16);

      return v11;
    }

    if (v26 < v25)
    {
      break;
    }

    if (v25 >= v26)
    {
      goto LABEL_27;
    }

    v22 = a4;
    while (1)
    {
      v12 = *(v10 + 16);
      if (v6 >= v12)
      {
        result = compare #1 <A>(start:minLength:) in zAlgorithm<A>(_:by:)(v6, 0, a1, a2, a3, v8, v9, v10, a4);
        goto LABEL_8;
      }

      v13 = v12 - v6;
      if (__OFSUB__(v12, v6))
      {
        break;
      }

      v14 = *(v9 + 16);
      v15 = __OFSUB__(v6, v14);
      v16 = v6 - v14;
      if (v15)
      {
        goto LABEL_22;
      }

      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_23;
      }

      v17 = *(v8 + 16);
      v18 = *(v17 + 16);
      if (v16 >= v18)
      {
        goto LABEL_24;
      }

      v19 = *(v17 + 8 * v16 + 32);
      if (v19 >= v13)
      {
        result = compare #1 <A>(start:minLength:) in zAlgorithm<A>(_:by:)(v6, v13, a1, a2, a3, v8, v9, v10, a4);
      }

      else
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18 + 1, 1, v17);
          v17 = result;
        }

        v21 = *(v17 + 16);
        v20 = *(v17 + 24);
        if (v21 >= v20 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v17);
          v17 = result;
        }

        *(v17 + 16) = v21 + 1;
        *(v17 + 8 * v21 + 32) = v19;
        *(v8 + 16) = v17;
        a4 = v22;
      }

LABEL_8:
      if (v26 == ++v6)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, result, 0, v6);
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t compare #1 <A>(start:end:minLength:) in ZSearcher.search(_:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(char *, char *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(uint64_t, char *, uint64_t)@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v77 = a2;
  v78 = a8;
  v75 = a6;
  v76 = a7;
  v69 = a9;
  v70 = a1;
  v73 = a11;
  v74 = a5;
  v72 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v62 = *(TupleTypeMetadata2 - 8);
  v18 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v64 = v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v61 = v60 - v20;
  v21 = swift_getAssociatedTypeWitness();
  v67 = *(v21 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = v60 - v26;
  v28 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v25);
  v30 = v60 - v29;
  v65 = swift_projectBox();
  v66 = swift_projectBox();
  v68 = v28;
  v31 = *(v28 + 16);
  v60[1] = v28 + 16;
  v60[0] = v31;
  v31(v30, v77, AssociatedTypeWitness);
  v32 = a4;
  v33 = MEMORY[0x193ACEA60](a4, v21);
  v77 = AssociatedTypeWitness;
  v79 = a15;
  if (v33 != a3)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v73 = a14;
    v35 = AssociatedConformanceWitness;
    v36 = type metadata accessor for Range();
    v71 = *(v35 + 8);
    v72 = v36;
    v37 = (v67 + 16);
    v38 = (v67 + 8);
    do
    {
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      Array.subscript.getter();
      v39 = dispatch thunk of Collection.subscript.read();
      (*v37)(v24);
      (v39)(v80, 0);
      LOBYTE(v39) = v74(v27, v24);
      v40 = *v38;
      (*v38)(v24, v21);
      result = (v40)(v27, v21);
      if ((v39 & 1) == 0)
      {
        break;
      }

      if (__OFADD__(a3, 1))
      {
        __break(1u);
        goto LABEL_13;
      }

      ++a3;
      dispatch thunk of Collection.formIndex(after:)();
    }

    while (a3 != MEMORY[0x193ACEA60](v32, v21));
  }

  if (a3 == MEMORY[0x193ACEA40](v32, v21))
  {
    v42 = v77;
    v43 = swift_getAssociatedConformanceWitness();
    v44 = v70;
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v79 = v43;
      v45 = v61;
      (v60[0])(v61, v44, v42);
      v46 = TupleTypeMetadata2;
      v47 = v68;
      v48 = *(v68 + 32);
      v48(&v45[*(TupleTypeMetadata2 + 48)], v30, v42);
      v49 = v48;
      v78 = v48;
      v50 = v62;
      v51 = v64;
      (*(v62 + 16))(v64, v45, v46);
      v52 = *(v46 + 48);
      v53 = v69;
      v49(v69, v51, v42);
      v54 = *(v47 + 8);
      v54(&v51[v52], v42);
      (*(v50 + 32))(v51, v45, v46);
      v55 = *(v46 + 48);
      v56 = type metadata accessor for Range();
      v78(v53 + *(v56 + 36), &v51[v55], v42);
      v54(v51, v42);
      return (*(*(v56 - 8) + 56))(v53, 0, 1, v56);
    }

    else
    {
LABEL_13:
      __break(1u);
    }
  }

  else
  {
    v57 = v68;
    v58 = v77;
    (*(v68 + 24))(v65, v70, v77);
    (*(v57 + 40))(v66, v30, v58);
    *(a12 + 16) = 0;
    *(a13 + 16) = a3;
    swift_getAssociatedConformanceWitness();
    v59 = type metadata accessor for Range();
    return (*(*(v59 - 8) + 56))(v69, 1, 1, v59);
  }

  return result;
}

uint64_t protocol witness for CollectionSearcher.search(_:_:) in conformance ZSearcher<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return StatelessCollectionSearcher.search(_:_:)(a1, a2, a3, WitnessTable, a4);
}

uint64_t compare #1 <A>(start:minLength:) in zAlgorithm<A>(_:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5, char *a6, uint64_t a7, void (*a8)(char *, uint64_t), uint64_t a9)
{
  v30 = a6;
  v31 = a4;
  v13 = *(a9 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v27 - v18;
  v29 = v17;
  v21 = v17 + v20;
  if (__OFADD__(v17, v20))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
    v16 = result;
    *(v19 + 2) = result;
    goto LABEL_12;
  }

  v32 = MEMORY[0x193ACEA40](a3, a9);
  if (v21 < v32)
  {
    v27 = a7;
    v28 = a8;
    a7 = v13 + 8;
    while (1)
    {
      Array.subscript.getter();
      Array.subscript.getter();
      v22 = v31(v19, v16);
      a8 = *a7;
      (*a7)(v16, a9);
      a8(v19, a9);
      if ((v22 & 1) == 0)
      {
        v32 = v21;
        goto LABEL_10;
      }

      v23 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      ++v21;
      ++a2;
      if (v21 >= v32)
      {
        a2 = v23;
LABEL_10:
        a7 = v27;
        a8 = v28;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v32 = v21;
LABEL_11:
  v19 = v30;
  v16 = *(v30 + 2);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v19 + 2) = v16;
  if ((result & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_12:
  v26 = *(v16 + 2);
  v25 = *(v16 + 3);
  if (v26 >= v25 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v16);
    v16 = result;
  }

  *(v16 + 2) = v26 + 1;
  *&v16[8 * v26 + 32] = a2;
  *(v19 + 2) = v16;
  *(a7 + 16) = v29;
  *(a8 + 2) = v32;
  return result;
}

void Compiler.ByteCodeGen.emitNode(_:)(unint64_t a1)
{
  v5 = type metadata accessor for DSLTree.Atom(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DSLTree.QuantificationKind(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DSLTree._AST.QuantificationAmount(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DSLTree._AST.GroupKind(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
  {
    case 1uLL:

      Compiler.ByteCodeGen.emitConcatenation(_:)(v55);
      goto LABEL_32;
    case 2uLL:
      v24 = *v1;
      v25 = *(*v1 + 2);
      if (v25)
      {
        v26 = a1 & 0xFFFFFFFFFFFFFFBLL;
        v27 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        a1 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v28 = *(v26 + 32);
        v16 = *(v26 + 40);
        v29 = *(v26 + 56);
        v93 = *(v26 + 48);
        v30 = *(v26 + 64);
        v31 = *(v26 + 72);
        v32 = *(v26 + 80);
        v33 = *(v26 + 88);
        v3 = *&v24[4 * v25 + 28];
        v96 = v29;
        v88 = v27;
        v89 = v30;
        v90 = v31;
        v91 = v32;
        outlined copy of CaptureTransform?(v29, v30, v31, v32, v33);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v92 = v33;
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_9:
          v36 = *(v24 + 2);
          v35 = *(v24 + 3);
          if (v36 >= v35 >> 1)
          {
            v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v24);
          }

          *(v24 + 2) = v36 + 1;
          *&v24[4 * v36 + 32] = v3;
          *v1 = v24;
          v25 = v1 + *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
          if ((v16 & 1) == 0)
          {
            v37 = *(v25 + 17);
            type metadata accessor for MEProgram.Builder(0);
            v16 = v1;
            specialized Dictionary._Variant.updateValue(_:forKey:)(v37, v28);
          }

          if (a1)
          {
            type metadata accessor for MEProgram.Builder(0);
            v28 = v1;
            v38._countAndFlagsBits = v88;
            v38._object = a1;
            CaptureList.indexOfCapture(named:)(v38);
          }

          v39 = *(v25 + 17);
          if (!__OFADD__(v39, 1))
          {
            *(v25 + 17) = v39 + 1;
            v40 = *v25;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 16) + 1, 1, v40, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
            }

            v42 = *(v40 + 16);
            v41 = *(v40 + 24);
            v43 = v42 + 1;
            if (v42 >= v41 >> 1)
            {
              v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v40, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
            }

            *(v40 + 16) = v43;
            *(v40 + 8 * v42 + 32) = v39 | 0x1700000000000000;
            *v25 = v40;
            v44 = v1;
            v45 = Compiler.ByteCodeGen.emitNode(_:)(v93);
            if (!v2)
            {
              v40 = v45;
              v43 = v46;
              v47 = *v25;
              v72 = swift_isUniquelyReferenced_nonNull_native();
              v93 = v39 | 0x1800000000000000;
              if (v72)
              {
LABEL_54:
                v74 = *(v47 + 2);
                v73 = *(v47 + 3);
                v75 = v74 + 1;
                if (v74 >= v73 >> 1)
                {
                  v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), v74 + 1, 1, v47, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
                }

                *(v47 + 2) = v75;
                *&v47[8 * v74 + 32] = v93;
                *v25 = v47;
                if (v43)
                {
                  v76 = v96;
                }

                else
                {
                  v43 = v40 | (v39 << 16) | 0x1A00000000000000;
                  v77 = *(v47 + 3);
                  v40 = v74 + 2;
                  if ((v74 + 2) > (v77 >> 1))
                  {
                    v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v74 + 2, 1, v47, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
                  }

                  v76 = v96;
                  *(v47 + 2) = v40;
                  *&v47[8 * v75 + 32] = v43;
                  *v25 = v47;
                }

                if (!v76)
                {
                  goto LABEL_69;
                }

                v96 = v44;
                v78 = swift_allocObject();
                v79 = v89;
                v80 = v90;
                *(v78 + 16) = v76;
                *(v78 + 24) = v79;
                v81 = v91;
                *(v78 + 32) = v80;
                *(v78 + 40) = v81;
                *(v78 + 48) = v92;
                v40 = *(v25 + 8);
                v44 = *(v40 + 16);
                v43 = swift_allocObject();
                *(v43 + 16) = partial apply for closure #1 in Compiler.ByteCodeGen.emitNode(_:);
                *(v43 + 24) = v78;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  goto LABEL_86;
                }

                while (1)
                {
                  v83 = *(v40 + 16);
                  v82 = *(v40 + 24);
                  if (v83 >= v82 >> 1)
                  {
                    v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1, v40, &_ss23_ContiguousArrayStorageCyypSgSS_17_StringProcessing9ProcessorV14_StoredCaptureVtKcGMd, &_ss23_ContiguousArrayStorageCyypSgSS_17_StringProcessing9ProcessorV14_StoredCaptureVtKcGMR);
                  }

                  *(v40 + 16) = v83 + 1;
                  v84 = (v40 + 16 * v83);
                  *(v84 + 4) = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String, @in_guaranteed Processor._StoredCapture) -> (@out Any?, @error @owned Error);
                  *(v84 + 5) = v43;
                  *(v25 + 8) = v40;
                  v43 = v39 | (v44 << 16) | 0x1900000000000000;
                  v86 = *(v47 + 2);
                  v85 = *(v47 + 3);
                  v40 = v86 + 1;
                  if (v86 >= v85 >> 1)
                  {
                    v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1, v47, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
                  }

                  v44 = v96;
                  *(v47 + 2) = v40;
                  *&v47[8 * v86 + 32] = v43;
                  *v25 = v47;
LABEL_69:
                  v47 = *v44;
                  if (*(*v44 + 16))
                  {
                    if (swift_isUniquelyReferenced_nonNull_native())
                    {
                      v87 = *(v47 + 2);
                      if (v87)
                      {
                        goto LABEL_72;
                      }

                      goto LABEL_85;
                    }
                  }

                  else
                  {
                    __break(1u);
                  }

                  v47 = specialized _ArrayBuffer._consumeAndCreateNew()(v47);
                  v87 = *(v47 + 2);
                  if (v87)
                  {
LABEL_72:
                    *(v47 + 2) = v87 - 1;
                    *v44 = v47;
                    return;
                  }

LABEL_85:
                  __break(1u);
LABEL_86:
                  v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 16) + 1, 1, v40, &_ss23_ContiguousArrayStorageCyypSgSS_17_StringProcessing9ProcessorV14_StoredCaptureVtKcGMd, &_ss23_ContiguousArrayStorageCyypSgSS_17_StringProcessing9ProcessorV14_StoredCaptureVtKcGMR);
                }
              }

LABEL_82:
              v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 2) + 1, 1, v47, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
              goto LABEL_54;
            }

            outlined consume of CaptureTransform?(v96, v89, v90, v91, v92);
            v47 = *v1;
            if (*(*v44 + 16))
            {
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v48 = *(v47 + 2);
                if (v48)
                {
LABEL_24:
                  *(v47 + 2) = v48 - 1;
                  *v44 = v47;
                  return;
                }

                goto LABEL_81;
              }
            }

            else
            {
              __break(1u);
            }

            v47 = specialized _ArrayBuffer._consumeAndCreateNew()(v47);
            v48 = *(v47 + 2);
            if (v48)
            {
              goto LABEL_24;
            }

LABEL_81:
            __break(1u);
            goto LABEL_82;
          }

          __break(1u);
          goto LABEL_78;
        }

LABEL_76:
        v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v25 + 1), 1, v24);
        goto LABEL_9;
      }

      __break(1u);
LABEL_74:
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v1[2] + 1), 1, v1, &_ss23_ContiguousArrayStorageCySS5IndexV_yptSgSS_ADSnyADGtKcGMd, &_ss23_ContiguousArrayStorageCySS5IndexV_yptSgSS_ADSnyADGtKcGMR);
LABEL_34:
      v24 = v1[2];
      v60 = v1[3];
      if (v24 >= v60 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), (v24 + 1), 1, v1, &_ss23_ContiguousArrayStorageCySS5IndexV_yptSgSS_ADSnyADGtKcGMd, &_ss23_ContiguousArrayStorageCySS5IndexV_yptSgSS_ADSnyADGtKcGMR);
      }

      v1[2] = v24 + 1;
      v61 = &v1[2 * v24];
      v61[4] = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String, @unowned String.Index, @unowned Range<String.Index>) -> (@out (String.Index, Any)?, @error @owned Error);
      v61[5] = a1;
      *(v25 + 9) = v1;
      v28 = *(v25 + 13);
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_76;
      }

      *(v25 + 13) = v28 + 1;
      v1 = *v25;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_38;
      }

LABEL_78:
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v1[2] + 1), 1, v1, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
LABEL_38:
      v63 = v1[2];
      v62 = v1[3];
      if (v63 >= v62 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v1, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
      }

      v1[2] = (v63 + 1);
      v1[v63 + 4] = (v16 | (v28 << 16) | 0x1000000000000000);
      *v25 = v1;
      return;
    case 3uLL:
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMR);
      v50 = swift_projectBox();
      v51 = *(v50 + *(v49 + 48));
      outlined init with copy of DSLTree._AST.AbsentFunction(v50, v16, type metadata accessor for DSLTree._AST.GroupKind);

      Compiler.ByteCodeGen.emitNoncapturingGroup(_:_:)(v16, v51);
      outlined destroy of MEProgram(v16, type metadata accessor for DSLTree._AST.GroupKind);
      goto LABEL_27;
    case 4uLL:
      v21 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      Compiler.ByteCodeGen.emitNode(_:)(v21);
LABEL_27:

      return;
    case 5uLL:
      type metadata accessor for Unsupported();
      lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998], MEMORY[0x1E69E89A0]);
      swift_allocError();
      v19 = 0x6F697469646E6F43;
      v18 = 0xEC000000736C616ELL;
      v20 = 1281;
      goto LABEL_42;
    case 6uLL:
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMR);
      v65 = swift_projectBox();
      v66 = *(v64 + 48);
      v67 = *(v65 + *(v64 + 64));
      outlined init with copy of DSLTree._AST.AbsentFunction(v65, v13, type metadata accessor for DSLTree._AST.QuantificationAmount);
      outlined init with copy of DSLTree._AST.AbsentFunction(v65 + v66, v10, type metadata accessor for DSLTree.QuantificationKind);

      Compiler.ByteCodeGen.emitQuantification(_:_:_:)(v13, v10, v67);
      if (v2)
      {

        outlined destroy of MEProgram(v10, type metadata accessor for DSLTree.QuantificationKind);
        outlined destroy of MEProgram(v13, type metadata accessor for DSLTree._AST.QuantificationAmount);
        return;
      }

      outlined destroy of MEProgram(v10, type metadata accessor for DSLTree.QuantificationKind);
      v70 = type metadata accessor for DSLTree._AST.QuantificationAmount;
      v71 = v13;
      goto LABEL_52;
    case 7uLL:
      v52 = a1 & 0xFFFFFFFFFFFFFFBLL;
      v53 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v54 = *(v52 + 24);
      v94 = v53;
      v95 = v54;

      if (DSLTree.CustomCharacterClass.containsDot.getter())
      {

        if (v54)
        {
          type metadata accessor for Unsupported();
          lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998], MEMORY[0x1E69E89A0]);
          swift_allocError();
          v19 = 0x6465747265766E49;
          v18 = 0xEC000000796E6120;
          v20 = 1291;
LABEL_42:
          MEMORY[0x193ACDF10](v19, v18, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/ByteCodeGen.swift", 152, 2, v20);
          swift_willThrow();
        }

        else
        {
          Compiler.ByteCodeGen.emitDot()();
        }
      }

      else
      {
        v94 = v53;
        v95 = v54;
        Compiler.ByteCodeGen.emitCustomCharacterClass(_:)(&v94);
LABEL_32:
      }

      return;
    case 8uLL:
      v68 = swift_projectBox();
      outlined init with copy of DSLTree._AST.AbsentFunction(v68, v7, type metadata accessor for DSLTree.Atom);
      Compiler.ByteCodeGen.emitAtom(_:)(v7);
      if (v2)
      {
        outlined destroy of MEProgram(v7, type metadata accessor for DSLTree.Atom);
      }

      else
      {
        v70 = type metadata accessor for DSLTree.Atom;
        v71 = v7;
LABEL_52:
        outlined destroy of MEProgram(v71, v70);
      }

      return;
    case 9uLL:
    case 0x10uLL:
      return;
    case 0xAuLL:
      v22 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v23 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

      Compiler.ByteCodeGen.emitQuotedLiteral(_:)(v22, v23);
      goto LABEL_32;
    case 0xBuLL:
      type metadata accessor for Unsupported();
      lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998], MEMORY[0x1E69E89A0]);
      swift_allocError();
      v19 = 0x6620746E65736261;
      v18 = 0xEF6E6F6974636E75;
      v20 = 1307;
      goto LABEL_42;
    case 0xCuLL:
      v69 = *swift_projectBox();

      Compiler.ByteCodeGen.emitNode(_:)(v69);

      return;
    case 0xDuLL:
      type metadata accessor for Unsupported();
      lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998], MEMORY[0x1E69E89A0]);
      swift_allocError();
      v19 = 0x72656D75736E6F63;
      v18 = 0xE800000000000000;
      v20 = 1309;
      goto LABEL_42;
    case 0xEuLL:
      v56 = a1 & 0xFFFFFFFFFFFFFFBLL;
      v57 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v58 = *(v56 + 32);
      v59 = swift_allocObject();
      *(v59 + 16) = v57;
      *(v59 + 24) = v58;
      v25 = v1 + *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
      v1 = *(v25 + 9);
      v16 = v1[2];
      a1 = swift_allocObject();
      *(a1 + 16) = partial apply for closure #1 in Compiler.ByteCodeGen.emitMatcher(_:);
      *(a1 + 24) = v59;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_34;
      }

      goto LABEL_74;
    case 0xFuLL:
      type metadata accessor for Unsupported();
      lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998], MEMORY[0x1E69E89A0]);
      swift_allocError();
      v18 = 0x800000018E5F2BC0;
      v19 = 0xD000000000000014;
      v20 = 1315;
      goto LABEL_42;
    default:

      specialized Compiler.ByteCodeGen.emitAlternationGen<A>(_:withBacktracking:_:)(v17, v1);
      goto LABEL_32;
  }
}

uint64_t MEProgram.Builder.assemble()@<X0>(uint64_t a1@<X8>)
{
  v69 = type metadata accessor for MEProgram.Builder(0);
  v4 = *(v1 + v69[24]);
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = *v1;
  v75 = *(v1 + v69[24]);

  v67 = a1;
  v68 = v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_4:
  v10 = 0;
  v82 = v1;
  *v1 = v9;
  v11 = (v6 + 63) >> 6;
  v12 = v9 + 32;
  do
  {
LABEL_5:
    if (!v8)
    {
      while (1)
      {
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
          goto LABEL_73;
        }

        if (v13 >= v11)
        {
          break;
        }

        v8 = *(v5 + 8 * v13);
        ++v10;
        if (v8)
        {
          v10 = v13;
          goto LABEL_10;
        }
      }

      v22 = v68;
      v23 = v82;
      if (v68)
      {
        return result;
      }

LABEL_24:
      v1 = *v23;
      if (*(v23 + 152))
      {
        goto LABEL_32;
      }

      v10 = *(v23 + 144);
      v25 = v23;
      v23 = *(v1 + 16);
      v6 = *(v25 + 80);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_83;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_84;
      }

      while (v10 >= *(v6 + 16))
      {
        while (1)
        {
          __break(1u);
LABEL_86:
          v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 16) + 1, 1, v1, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
LABEL_29:
          v27 = v1;
          v28 = *(v1 + 16);
          v29 = v27;
          v30 = *(v27 + 24);
          v6 = v28 + 1;
          if (v28 >= v30 >> 1)
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v28 + 1, 1, v29, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
          }

          *(v29 + 2) = v6;
          v31 = &v29[8 * v28];
          v1 = v29;
          *(v31 + 4) = 0x1D00000000000000;
          *v23 = v29;
LABEL_32:
          v68 = v22;
          v9 = *(v23 + 88);
          v32 = *(v9 + 2);

          if (v32)
          {
            v8 = 0;
            v33 = v9 + 56;
            v65 = 414;
            while (v8 < *(v9 + 2))
            {
              v10 = *(v33 - 3);
              if ((v10 & 0x8000000000000000) != 0)
              {
                goto LABEL_74;
              }

              if (v10 >= *(v1 + 16))
              {
                goto LABEL_75;
              }

              v34 = *(v33 - 2);
              if ((v34 & 0x8000000000000000) != 0)
              {
                goto LABEL_76;
              }

              v35 = *(v23 + 80);
              v22 = *(v35 + 16);
              if (v34 >= v22)
              {
                goto LABEL_77;
              }

              v5 = v35 + 32;
              v36 = v35 + 32 + 16 * v34;
              if (*(v36 + 8))
              {
                __break(1u);
LABEL_88:
                __break(1u);
                return result;
              }

              v71 = *(v33 - 1);
              v73 = *v33;
              v75 = v1;
              v1 = *(v1 + 8 * v10 + 32);
              v23 = *v36;
              result = specialized Instruction.OpCode.init(rawValue:)(HIBYTE(v1));
              v6 = result;
              if (result <= 0x10u)
              {
                if (result != 4)
                {
                  if (result != 5 && result != 6)
                  {
                    goto LABEL_70;
                  }

                  v23 |= v1 << 16;
                }
              }

              else if (result - 17 >= 2 && result != 20)
              {
                if (result != 21)
                {
                  goto LABEL_70;
                }

                if (v73)
                {
                  goto LABEL_69;
                }

                if (v71 >= v22)
                {
                  __break(1u);
                  goto LABEL_81;
                }

                v38 = v5 + 16 * v71;
                if (*(v38 + 8))
                {
                  goto LABEL_88;
                }

                v23 |= *v38 << 16;
              }

              v1 = v75;
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew()(v75);
                v1 = result;
              }

              if (v10 >= *(v1 + 16))
              {
                goto LABEL_78;
              }

              ++v8;
              *(v1 + 8 * v10 + 32) = v23 | (v6 << 56);
              v33 += 32;
              v23 = v82;
              if (v32 == v8)
              {
                goto LABEL_58;
              }
            }

LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
            goto LABEL_4;
          }

LABEL_58:
          v5 = *(v23 + 96);
          if (v5 < 0)
          {
LABEL_81:
            __break(1u);
          }

          else
          {
            v6 = *(v23 + 24);
            v10 = *(v23 + 40);
            v22 = *(v23 + 48);
            v40 = *(v23 + 56);
            v39 = *(v23 + 64);
            v41 = *(v23 + 72);
            v42 = *(v23 + 112);
            v82 = *(v23 + 104);

            v74 = v39;

            v72 = v41;

            if (v5)
            {
              v43 = static Array._allocateBufferUninitialized(minimumCapacity:)();
              *(v43 + 16) = v5;
              bzero((v43 + 32), 8 * v5);
            }

            else
            {
              v43 = MEMORY[0x1E69E7CC0];
            }

            *&v78 = &type metadata for SentinelValue;
            v44 = _sSa9repeating5countSayxGx_SitcfCyp_Tt1g5(&v76, v82);
            if ((v42 & 0x8000000000000000) == 0)
            {
              v82 = v44;
              v70 = v6;
              v64 = v22;
              v66 = v10;
              v62 = v43;
              v63 = v40;
              if (v42)
              {
                v45 = static Array._allocateBufferUninitialized(minimumCapacity:)();
                *(v45 + 16) = v42;
                v61 = v45;
                memset_pattern16((v45 + 32), &unk_18E5ED280, 8 * v42);
              }

              else
              {
                v61 = MEMORY[0x1E69E7CC0];
              }

              v76 = 0uLL;
              v77 = 1;
              v78 = 0u;
              v79 = 0u;
              v80 = 0;
              v81 = 1;
              v46 = _sSa9repeating5countSayxGx_SitcfC17_StringProcessing9ProcessorV14_StoredCaptureV_Tt1g5(&v76, *(v23 + 136));
              v59 = *(v23 + 120);
              v60 = v46;
              v47 = *(v23 + 128);
              v48 = *(v23 + 8);
              v49 = *(v23 + 9);
              v50 = v69[21];
              v51 = type metadata accessor for MEProgram(0);
              v52 = v51[8];
              v53 = type metadata accessor for CaptureList();
              (*(*(v53 - 8) + 16))(v67 + v52, v23 + v50, v53);
              v54 = *(v23 + v69[25]);
              v55 = *(v23 + v69[22]);
              v56 = *(v23 + v69[23]);
              *v67 = v1;
              *(v67 + 8) = v59;
              *(v67 + 16) = v47;
              *(v67 + 17) = v48;
              *(v67 + 18) = v49;
              *(v67 + v51[9]) = v54;
              *(v67 + v51[10]) = v55;
              *(v67 + v51[11]) = v56;
              v57 = v67 + v51[12];
              *v57 = v70;
              *(v57 + 8) = v66;
              *(v57 + 16) = v64;
              *(v57 + 24) = v63;
              *(v57 + 32) = v74;
              *(v57 + 40) = v72;
              *(v57 + 48) = 0;
              v58 = v82;
              *(v57 + 56) = v62;
              *(v57 + 64) = v58;
              *(v57 + 72) = v61;
              *(v67 + v51[13]) = v60;
            }
          }

          __break(1u);
LABEL_83:
          v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
          if ((v10 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_84:
          __break(1u);
        }
      }

      v26 = v6 + 16 * v10;
      *(v26 + 32) = v23;
      *(v26 + 40) = 0;
      v23 = v82;
      v82[10] = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_86;
      }

      goto LABEL_29;
    }

LABEL_10:
    v1 = *(v82 + v69[25]);
    if (!*(v1 + 16) || (v14 = __clz(__rbit64(v8)) | (v10 << 6), v6 = *(*(v75 + 56) + 8 * v14), v15 = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v75 + 48) + 8 * v14)), (v16 & 1) == 0))
    {

      lazy protocol witness table accessor for type RegexCompilationError and conformance RegexCompilationError();
      v22 = swift_allocError();
      *v24 = 0;
      *(v24 + 8) = 0;
      *(v24 + 16) = 2;
      result = swift_willThrow();
      v23 = v82;
      if (v22)
      {
        return result;
      }

      goto LABEL_24;
    }

    v8 &= v8 - 1;
    v17 = *(v6 + 16);
  }

  while (!v17);
  v1 = *(*(v1 + 56) + 8 * v15) << 16;

  v18 = 32;
  while (1)
  {
    v19 = *(v6 + v18);
    if ((v19 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v19 >= *(v9 + 2))
    {
      goto LABEL_68;
    }

    if (*&v12[8 * v19] == 1)
    {
      v20 = v1 + 1;
    }

    else
    {
      v20 = v1;
    }

    *&v12[8 * v19] = v20 | 0x1B00000000000000;
    v18 += 8;
    if (!--v17)
    {

      *v82 = v9;
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  v65 = 409;
LABEL_70:
  type metadata accessor for Unreachable();
  lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unreachable and conformance Unreachable, MEMORY[0x1E69E8988], MEMORY[0x1E69E8990]);
  swift_allocError();
  MEMORY[0x193ACDEF0](0x6572203A4F444F54, 0xEC0000006E6F7361, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/Engine/MEBuilder.swift", 157, 2, v65);
  swift_willThrow();
}

uint64_t Compiler.ByteCodeGen.emitAtom(_:)(uint64_t a1)
{
  v2 = type metadata accessor for DSLTree._AST.Atom(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DSLTree._AST.MatchingOptionSequence(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DSLTree._AST.Reference(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DSLTree.Atom(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v79 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v79 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v79 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v81 = &v79 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v80 = &v79 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = (&v79 - v28);
  v83 = a1;
  outlined init with copy of DSLTree._AST.AbsentFunction(a1, &v79 - v28, type metadata accessor for DSLTree.Atom);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        v32 = v88;
        Compiler.ByteCodeGen.emitAny()();
      }

      else
      {
        v32 = v88;
        v36 = v82;
        if (EnumCaseMultiPayload == 9)
        {
          Compiler.ByteCodeGen.emitAnyNonNewline()();
        }

        else
        {
          Compiler.ByteCodeGen.emitDot()();
          if (v36)
          {
            outlined init with copy of DSLTree._AST.AbsentFunction(v83, v23, type metadata accessor for DSLTree.Atom);
            result = swift_getEnumCaseMultiPayload();
            if (result <= 3)
            {
              if ((result - 1) < 2)
              {
                goto LABEL_48;
              }

              if (result)
              {
                return result;
              }
            }

            else
            {
              if (((1 << result) & 0x720) != 0)
              {
                goto LABEL_48;
              }

              if (((1 << result) & 0x90) == 0)
              {
                v50 = v23;
                return outlined destroy of MEProgram(v50, type metadata accessor for DSLTree.Atom);
              }
            }

            v51 = v23;
LABEL_47:
            outlined destroy of MEProgram(v51, type metadata accessor for DSLTree.Atom);
            goto LABEL_48;
          }
        }
      }

      goto LABEL_38;
    }

    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        outlined init with take of DSLTree.QuantificationKind(v29, v7, type metadata accessor for DSLTree._AST.MatchingOptionSequence);
        v31 = type metadata accessor for Compiler.ByteCodeGen(0);
        v32 = v88;
        v29 = v82;
        if (*(v88 + *(v31 + 24)))
        {
          goto LABEL_10;
        }

        v23 = v88 + *(v31 + 20);
        v10 = *(type metadata accessor for MEProgram.Builder(0) + 88);
        v17 = *&v23[v10];
        v4 = *(v17 + 16);
        LODWORD(v33) = swift_isUniquelyReferenced_nonNull_native();
        if ((v33 & 1) == 0)
        {
          goto LABEL_124;
        }

        for (; v4; v17 = v33)
        {
          v34 = *(v17 + 16);
          if (v4 > v34)
          {
            __break(1u);
            goto LABEL_131;
          }

          MatchingOptions.Representation.apply(_:)(v7);
          *&v23[v10] = v17;
LABEL_10:
          v17 = *v32;
          v4 = *(*v32 + 16);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (!v4)
            {
              goto LABEL_121;
            }
          }

          else
          {
LABEL_120:
            v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
            if (!v4)
            {
LABEL_121:
              __break(1u);
              goto LABEL_122;
            }
          }

          if (v4 <= *(v17 + 16))
          {
            MatchingOptions.Representation.apply(_:)(v7);
            outlined destroy of MEProgram(v7, type metadata accessor for DSLTree._AST.MatchingOptionSequence);
            *v32 = v17;
            goto LABEL_38;
          }

LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          v33 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
        }

        __break(1u);
LABEL_126:
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 16) + 1, 1, v17, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
LABEL_107:
        v76 = *(v17 + 16);
        v75 = *(v17 + 24);
        if (v76 >= v75 >> 1)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1, v17, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        }

        *(v17 + 16) = v76 + 1;
        *(v17 + 8 * v76 + 32) = v10;
        *(v32 + v7) = v17;
        if (v29)
        {
          goto LABEL_110;
        }

        goto LABEL_38;
      }

      outlined init with take of DSLTree.QuantificationKind(v29, v4, type metadata accessor for DSLTree._AST.Atom);
      v52 = v82;
      v53 = AST.Atom.generateConsumer(_:)(*v88);
      if (v52)
      {
        outlined destroy of MEProgram(v4, type metadata accessor for DSLTree._AST.Atom);
        outlined init with copy of DSLTree._AST.AbsentFunction(v83, v14, type metadata accessor for DSLTree.Atom);
        result = swift_getEnumCaseMultiPayload();
        if (result <= 3)
        {
          v55 = v88;
          if ((result - 1) >= 2)
          {
            if (result)
            {
              return result;
            }

LABEL_77:
            outlined destroy of MEProgram(v14, type metadata accessor for DSLTree.Atom);
          }
        }

        else
        {
          v55 = v88;
          if (((1 << result) & 0x720) == 0)
          {
            if (((1 << result) & 0x90) == 0)
            {
              v50 = v14;
              return outlined destroy of MEProgram(v50, type metadata accessor for DSLTree.Atom);
            }

            goto LABEL_77;
          }
        }

        result = type metadata accessor for Compiler.ByteCodeGen(0);
        *(v55 + *(result + 24)) = 1;
        return result;
      }

      if (v53)
      {
        v63 = v53;
        v64 = v54;
        outlined destroy of MEProgram(v4, type metadata accessor for DSLTree._AST.Atom);
        type metadata accessor for Compiler.ByteCodeGen(0);
        v32 = v88;
        MEProgram.Builder.buildConsume(by:)(v63, v64);
        outlined consume of (@escaping @callee_guaranteed (@guaranteed String, @unowned Range<String.Index>) -> (@unowned String.Index?))?(v63, v64);
        goto LABEL_38;
      }

      v86 = 0;
      v87 = 0xE000000000000000;
      v66 = AST.Atom._patternBase.getter();
      v68 = v67;
      v70 = v69;
      outlined destroy of MEProgram(v4, type metadata accessor for DSLTree._AST.Atom);
      v84[0] = v66;
      v84[1] = v68;
      v85 = v70 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_Sb12canBeWrappedtMd, &_sSS_Sb12canBeWrappedtMR);
      _print_unlocked<A, B>(_:_:)();

      v71 = v86;
      v72 = v87;
      type metadata accessor for Unsupported();
      lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998], MEMORY[0x1E69E89A0]);
      swift_allocError();
      MEMORY[0x193ACDF10](v71, v72, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/ByteCodeGen.swift", 152, 2, 114);
      swift_willThrow();
      v17 = v80;
      outlined init with copy of DSLTree._AST.AbsentFunction(v83, v80, type metadata accessor for DSLTree.Atom);
      result = swift_getEnumCaseMultiPayload();
      if (result <= 3)
      {
        if ((result - 1) >= 2)
        {
          if (result)
          {
            return result;
          }

LABEL_96:
          outlined destroy of MEProgram(v17, type metadata accessor for DSLTree.Atom);
        }
      }

      else if (((1 << result) & 0x720) == 0)
      {
        if (((1 << result) & 0x90) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_96;
      }

      result = type metadata accessor for Compiler.ByteCodeGen(0);
      *(v88 + *(result + 24)) = 1;
      return result;
    }

    v84[0] = *v29;
    v32 = v88;
    v44 = *(*v88 + 16);
    if (v44)
    {
      v45 = (*(*v88 + 4 * v44 + 28) & 0x10000) == 0;
      type metadata accessor for Compiler.ByteCodeGen(0);
      MEProgram.Builder.buildUnresolvedReference(id:isScalarMode:)(v84, v45);
      goto LABEL_38;
    }

    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v32 = v88;
    if (EnumCaseMultiPayload)
    {
      v48 = *(*v88 + 16);
      if (v48)
      {
        v33 = *v29;
        if ((*(*v88 + 4 * v48 + 28) & 0x10000) != 0)
        {
          if (v33 > 0x7F)
          {
            LODWORD(v34) = (*v29 & 0x3F) << 8;
            if (v33 >= 0x800)
            {
LABEL_131:
              v77 = (v34 | (v33 >> 6) & 0x3F) << 8;
              v78 = (((v77 | (v33 >> 12) & 0x3F) << 8) | (v33 >> 18)) - 2122219023;
              v60 = (v33 >> 12) + v77 + 8487393;
              if (WORD1(v33))
              {
                v60 = v78;
              }
            }

            else
            {
              v60 = (v33 >> 6) + v34 + 33217;
            }

            v32 = v88;
          }

          else
          {
            v60 = v33 + 1;
          }

          v84[0] = (v60 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v60) >> 3))));
          v61 = static String._uncheckedFromUTF8(_:)();
          Compiler.ByteCodeGen.emitCharacter(_:)(v61, v62);
        }

        else
        {
          Compiler.ByteCodeGen.emitMatchScalar(_:)(v33);
        }

        goto LABEL_38;
      }

      goto LABEL_119;
    }

    Compiler.ByteCodeGen.emitCharacter(_:)(*v29, v29[1]);

LABEL_38:
    v47 = v83;
    v17 = v81;
LABEL_39:
    outlined init with copy of DSLTree._AST.AbsentFunction(v47, v17, type metadata accessor for DSLTree.Atom);
    result = swift_getEnumCaseMultiPayload();
    if (result <= 3)
    {
      if ((result - 1) >= 2)
      {
        if (result)
        {
          return result;
        }

LABEL_46:
        v51 = v17;
        goto LABEL_47;
      }
    }

    else if (((1 << result) & 0x720) == 0)
    {
      if (((1 << result) & 0x90) == 0)
      {
LABEL_42:
        v50 = v17;
        return outlined destroy of MEProgram(v50, type metadata accessor for DSLTree.Atom);
      }

      goto LABEL_46;
    }

LABEL_48:
    result = type metadata accessor for Compiler.ByteCodeGen(0);
    *(v32 + *(result + 24)) = 1;
    return result;
  }

  v32 = v88;
  if (EnumCaseMultiPayload == 2)
  {
    LOBYTE(v84[0]) = *v29;
    v37.stack._rawValue = *v88;
    v38 = DSLTree.Atom.CharacterClass.asRuntimeModel(_:)(v37);
    v39 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
    v40 = v38 | ((((v38 & 0x100) >> 8) & 1) << 53) & 0xFFBFFFFFFFFFFFFFLL | ((((v38 & 0x10000) >> 16) & 1) << 54) | (((v38 & 0xFF000000) != 0) << 55) | 0xC00000000000000;
    v41 = *(v32 + v39);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    v43 = *(v41 + 2);
    v42 = *(v41 + 3);
    if (v43 >= v42 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v41, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    *(v41 + 2) = v43 + 1;
    *&v41[8 * v43 + 32] = v40;
    *(v32 + v39) = v41;
    goto LABEL_38;
  }

  if (EnumCaseMultiPayload != 3)
  {
    outlined init with take of DSLTree.QuantificationKind(v29, v10, type metadata accessor for DSLTree._AST.Reference);
    v46 = v82;
    Compiler.ByteCodeGen.emitBackreference(_:)(v10);
    if (v46)
    {
      outlined destroy of MEProgram(v10, type metadata accessor for DSLTree._AST.Reference);
      v47 = v83;
      goto LABEL_39;
    }

    outlined destroy of MEProgram(v10, type metadata accessor for DSLTree._AST.Reference);
    goto LABEL_38;
  }

  v17 = *v29;
  if (v17 != 3)
  {
    v56 = *(*v88 + 16);
    if (!v56)
    {
      goto LABEL_123;
    }

    v57 = *(*v88 + 4 * v56 + 28);
    v58 = *&v57 & 0x10000;
    v7 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
    v29 = v82;
    if ((v57 & 4) != 0)
    {
      if ((v57 & 0x40) == 0)
      {
        v59 = 0x80000000000000;
        if ((v57 & 0x2800) != 0)
        {
LABEL_73:
          v65 = 0x40000000000000;
          if (!v58)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        }

        if (!v58)
        {
          v74 = 0;
          v65 = 0x40000000000000;
          goto LABEL_93;
        }

        goto LABEL_101;
      }

      if ((v57 & 0x2800) != 0)
      {
        v65 = 0;
        v59 = 0x80000000000000;
        if (!v58)
        {
LABEL_92:
          v74 = 0x20000000000000;
LABEL_93:
          v73 = 0x10000000000000;
          goto LABEL_106;
        }

LABEL_91:
        v73 = 0;
        v74 = 0x20000000000000;
        goto LABEL_106;
      }

      v74 = 0;
      v65 = 0;
      v73 = (v58 << 36) ^ 0x10000000000000;
      v59 = 0x80000000000000;
    }

    else if ((v57 & 0x40) != 0)
    {
      if ((v57 & 0x2800) != 0)
      {
        v65 = 0;
        if (v58)
        {
          v59 = 0;
          goto LABEL_91;
        }

        v74 = 0x20000000000000;
        v73 = 0x10000000000000;
        v59 = 0;
      }

      else
      {
        v74 = 0;
        v65 = 0;
        v59 = 0;
        v73 = (v58 << 36) ^ 0x10000000000000;
      }
    }

    else
    {
      if ((v57 & 0x2800) != 0)
      {
        v59 = 0;
        goto LABEL_73;
      }

      v74 = 0;
      if (v58)
      {
        v59 = 0;
LABEL_101:
        v73 = 0;
        v74 = 0;
        v65 = 0x40000000000000;
        goto LABEL_106;
      }

      v65 = 0x40000000000000;
      v73 = 0x10000000000000;
      v59 = 0;
    }

LABEL_106:
    v10 = v73 | v74 | v65 | v59 | v17 | 0xF00000000000000;
    v17 = *(v32 + v7);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_107;
    }

    goto LABEL_126;
  }

  type metadata accessor for Unsupported();
  lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998], MEMORY[0x1E69E89A0]);
  v35 = swift_allocError();
  MEMORY[0x193ACDF10](0xD000000000000019, 0x800000018E5F2E90, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/ByteCodeGen.swift", 152, 2, 204);
  swift_willThrow();
  if (!v35)
  {
    goto LABEL_38;
  }

LABEL_110:
  outlined init with copy of DSLTree._AST.AbsentFunction(v83, v20, type metadata accessor for DSLTree.Atom);
  result = swift_getEnumCaseMultiPayload();
  if (result > 3)
  {
    if (((1 << result) & 0x720) != 0)
    {
      goto LABEL_48;
    }

    if (((1 << result) & 0x90) == 0)
    {
      v50 = v20;
      return outlined destroy of MEProgram(v50, type metadata accessor for DSLTree.Atom);
    }

    goto LABEL_116;
  }

  if ((result - 1) < 2)
  {
    goto LABEL_48;
  }

  if (!result)
  {
LABEL_116:
    v51 = v20;
    goto LABEL_47;
  }

  return result;
}

uint64_t Compiler.ByteCodeGen.emitAny()()
{
  v6 = *v1;
  v7 = *(*v1 + 16);
  if (!v7)
  {
    __break(1u);
LABEL_12:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v2, 1, v0, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    v0 = result;
    goto LABEL_10;
  }

  v3 = 0x700000000010001;
  v8 = *(v6 + 4 * v7 + 28);
  v4 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
  v0 = *(v1 + v4);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((v8 & 0x10000) != 0)
  {
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v0 + 16) + 1, 1, v0, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
      v0 = result;
    }

    v5 = *(v0 + 16);
    v6 = *(v0 + 24);
    v2 = v5 + 1;
    v3 = 0x700000000010000;
  }

  else
  {
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v0 + 16) + 1, 1, v0, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
      v0 = result;
    }

    v5 = *(v0 + 16);
    v6 = *(v0 + 24);
    v2 = v5 + 1;
  }

  if (v5 >= v6 >> 1)
  {
    goto LABEL_12;
  }

LABEL_10:
  *(v0 + 16) = v2;
  *(v0 + 8 * v5 + 32) = v3;
  *(v1 + v4) = v0;
  return result;
}

uint64_t Compiler.ByteCodeGen.emitAnyNonNewline()()
{
  v3 = *(*v1 + 16);
  if (!v3)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *(*v1 + 4 * v3 + 28);
  v2 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
  v0 = *(v1 + v2);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((v4 & 0x10000) == 0)
  {
    if (result)
    {
LABEL_4:
      v7 = *(v0 + 16);
      v6 = *(v0 + 24);
      v8 = v7 + 1;
      if (v7 >= v6 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v0, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        v0 = result;
      }

      v9 = 0xD00000000000001;
      goto LABEL_12;
    }

LABEL_14:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v0 + 16) + 1, 1, v0, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    v0 = result;
    goto LABEL_4;
  }

  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v0 + 16) + 1, 1, v0, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    v0 = result;
  }

  v7 = *(v0 + 16);
  v10 = *(v0 + 24);
  v8 = v7 + 1;
  if (v7 >= v10 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v7 + 1, 1, v0, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    v0 = result;
  }

  v9 = 0xD00000000000000;
LABEL_12:
  *(v0 + 16) = v8;
  *(v0 + 8 * v7 + 32) = v9;
  *(v1 + v2) = v0;
  return result;
}

void Compiler.ByteCodeGen.emitDot()()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = *(*v0 + 4 * v1 + 28);
    if ((v2 & 0x10) != 0)
    {
      if ((v2 & 0x200) != 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E5ED050;
        type metadata accessor for DSLTree.Atom(0);
        v4 = swift_allocBox();
        *v5 = 4;
        swift_storeEnumTagMultiPayload();
        *(inited + 32) = v4 | 0x4000000000000000;
        v6 = swift_allocBox();
        swift_storeEnumTagMultiPayload();
        *(inited + 40) = v6 | 0x4000000000000000;
        specialized Compiler.ByteCodeGen.emitAlternationGen<A>(_:withBacktracking:_:)(inited, v0);
        swift_setDeallocating();
        swift_arrayDestroy();
      }

      else
      {
        Compiler.ByteCodeGen.emitAny()();
      }
    }

    else
    {
      Compiler.ByteCodeGen.emitAnyNonNewline()();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t Compiler.ByteCodeGen.emitCharacter(_:)(unint64_t a1, unint64_t a2)
{
  v64 = a2;
  v63 = type metadata accessor for Unicode.Scalar.Properties();
  v5 = *(v63 - 8);
  result = MEMORY[0x1EEE9AC00](v63);
  v8 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v2;
  v9 = *v2;
  v10 = *(*v2 + 16);
  if (!v10)
  {
    goto LABEL_114;
  }

  v11 = *(v9 + 4 * v10 + 28);
  v67 = a1;
  if ((v11 & 0x10000) == 0)
  {
    v2 = v64;
    v12 = HIBYTE(v64) & 0xF;
    v60 = a1 & 0xFFFFFFFFFFFFLL;
    v61 = v12;
    if ((v64 & 0x2000000000000000) == 0)
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v66 = v12;
    if (!v12)
    {
      return result;
    }

    v13 = 0;
    v65 = v9 + 28;
    v58[1] = (v64 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v59 = v64 & 0xFFFFFFFFFFFFFFLL;
    v62 = (v5 + 8);
    v14 = v9;
    while (1)
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        v17 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      }

      else
      {
        if ((v2 & 0x2000000000000000) != 0)
        {
          v69 = a1;
          v70 = v59;
        }

        else if ((a1 & 0x1000000000000000) == 0)
        {
          _StringObject.sharedUTF8.getter();
        }

        v17 = _decodeScalar(_:startingAt:)();
      }

      v19 = v17;
      a1 = v18;
      v20 = *(v9 + 16);
      if (!v20)
      {
        break;
      }

      if (*(v65 + 4 * v20) & 1) != 0 && (Unicode.Scalar.properties.getter(), v21 = Unicode.Scalar.Properties.isCased.getter(), v2 = v64, v22 = v21, (*v62)(v8, v63), (v22))
      {
        v23 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
        v24 = *(v68 + v23);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1, v24, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
          v24 = result;
        }

        v26 = *(v24 + 16);
        v25 = *(v24 + 24);
        v27 = v26 + 1;
        if (v26 >= v25 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v24, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
          v24 = result;
        }

        v15 = v19;
        v16 = 0x980000000000000;
      }

      else
      {
        v23 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
        v24 = *(v68 + v23);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1, v24, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
          v24 = result;
        }

        v26 = *(v24 + 16);
        v28 = *(v24 + 24);
        v27 = v26 + 1;
        if (v26 >= v28 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v26 + 1, 1, v24, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
          v24 = result;
        }

        v15 = v19;
        v16 = 0x900000000000000;
      }

      *(v24 + 16) = v27;
      *(v24 + 8 * v26 + 32) = v15 | v16;
      *(v68 + v23) = v24;
      v13 += a1;
      a1 = v67;
      v9 = v14;
      if (v13 >= v66)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_102;
  }

  v29 = v64;
  if (v11)
  {
    if ((Character._isSingleScalar.getter() & 1) == 0)
    {
      goto LABEL_93;
    }

    result = specialized Collection.first.getter(a1, v29);
    if ((result & 0x100000000) != 0)
    {
      __break(1u);
      goto LABEL_119;
    }

    Unicode.Scalar.properties.getter();
    v52 = Unicode.Scalar.Properties.isCased.getter();
    (*(v5 + 8))(v8, v63);
    if ((v52 & 1) == 0)
    {
LABEL_93:
      if (Character._isUppercased.getter() & 1) != 0 && (Character._isLowercased.getter())
      {
        goto LABEL_29;
      }
    }

    v53 = type metadata accessor for Compiler.ByteCodeGen(0);
    if ((*(v68 + *(v53 + 28)) & 1) != 0 || (Character.asciiValue.getter() & 0x100) != 0)
    {
      v5 = v68 + *(v53 + 20);
      v57 = specialized TypedSetVector.store(_:)(a1, v64);
      v8 = *v5;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        v8 = result;
      }

      v9 = (v57 << 16) | 0x800000000000001;
LABEL_107:
      v3 = *(v8 + 16);
      v10 = *(v8 + 24);
      v2 = v3 + 1;
      if (v3 >= v10 >> 1)
      {
        goto LABEL_115;
      }

      goto LABEL_108;
    }

    result = specialized BidirectionalCollection.last.getter(a1, v64);
    if ((result & 0x100000000) == 0)
    {
      LODWORD(v30) = result;
      v8 = *(v53 + 20);
      v9 = 0x9C0000000000000;
      v2 = *(v68 + v8);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
LABEL_98:
        v54 = v9 & 0xFFFFFFFF00000000 | v30;
        v56 = *(v2 + 16);
        v55 = *(v2 + 24);
        if (v56 >= v55 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v2, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
          v2 = result;
        }

        *(v2 + 16) = v56 + 1;
        *(v2 + 8 * v56 + 32) = v54;
        *(v68 + v8) = v2;
        return result;
      }

LABEL_117:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 16) + 1, 1, v2, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
      v2 = result;
      goto LABEL_98;
    }

LABEL_119:
    __break(1u);
    return result;
  }

LABEL_29:
  v2 = type metadata accessor for Compiler.ByteCodeGen(0);
  if ((*(v68 + *(v2 + 28)) & 1) != 0 || (Character.asciiValue.getter() & 0x100) != 0)
  {
LABEL_102:
    v5 = v68 + *(v2 + 20);
    v9 = (specialized TypedSetVector.store(_:)(a1, v64) << 16) | 0x800000000000000;
    v8 = *v5;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
      v8 = result;
    }

    goto LABEL_107;
  }

  v30 = v64;
  v60 = a1 & 0xFFFFFFFFFFFFLL;
  v61 = HIBYTE(v64) & 0xF;
  if ((v64 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v64) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    __break(1u);
    goto LABEL_117;
  }

  v66 = 4 * v3;
  v31 = (v64 & 0x1000000000000000) == 0 || (a1 & 0x800000000000000) != 0;
  v32 = 11;
  if (v31)
  {
    v32 = 7;
  }

  v33 = 15;
  v34 = specialized DefaultIndices<>.index(before:)(v32 | (v3 << 16), a1, v64);
  v35 = 4 << v31;
  v62 = ((v30 & 0xFFFFFFFFFFFFFFFLL) + 32);
  v63 = v30 & 0xFFFFFFFFFFFFFFLL;
  v65 = v34 >> 14;

  v8 = 0;
  while (1)
  {
    v5 = v33 & 0xC;
    v36 = (v33 & 1) == 0 || v5 == v35;
    v9 = v36;
    if (v36)
    {
      break;
    }

    v37 = v33;
    if (v3 <= v33 >> 16)
    {
      goto LABEL_111;
    }

LABEL_54:
    if ((v64 & 0x1000000000000000) != 0)
    {
      v41 = String.UnicodeScalarView._foreignIndex(after:)();
      if (!v9)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v38 = v37 >> 16;
      if ((v64 & 0x2000000000000000) != 0)
      {
        v69 = a1;
        v70 = v63;
        v40 = *(&v69 + v38);
      }

      else
      {
        v39 = v62;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v39 = _StringObject.sharedUTF8.getter();
        }

        v40 = *(v39 + v38);
      }

      v42 = v40;
      v43 = __clz(v40 ^ 0xFF) - 24;
      if (v42 >= 0)
      {
        LOBYTE(v43) = 1;
      }

      v10 = v38 + v43;
      v41 = (v10 << 16) | 5;
      if (!v9)
      {
LABEL_60:
        if (v33 >> 16 >= v3)
        {
          goto LABEL_113;
        }

LABEL_70:
        v44 = v64;
        if ((v64 & 0x1000000000000000) == 0)
        {
          goto LABEL_71;
        }

        goto LABEL_79;
      }
    }

    if (v5 == v35)
    {
      v33 = _StringGuts._slowEnsureMatchingEncoding(_:)(v33, a1, v64);
    }

    if (v33 >> 16 >= v3)
    {
      goto LABEL_112;
    }

    if (v33)
    {
      goto LABEL_70;
    }

    _StringGuts.scalarAlignSlow(_:)(v33, a1, v64);
    v44 = v64;
    if ((v64 & 0x1000000000000000) == 0)
    {
LABEL_71:
      if ((v44 & 0x2000000000000000) != 0)
      {
        v69 = a1;
        v70 = v63;
      }

      else if ((a1 & 0x1000000000000000) == 0)
      {
        _StringObject.sharedUTF8.getter();
      }

      v45 = _decodeScalar(_:startingAt:)();
      goto LABEL_80;
    }

LABEL_79:
    v45 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
LABEL_80:
    v46 = v45;
    v47 = *(v2 + 20);
    if (v8 == v65)
    {
      v48 = 0x940000000000000;
    }

    else
    {
      v48 = 0x900000000000000;
    }

    v49 = *(v68 + v47);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    v51 = *(v49 + 2);
    v50 = *(v49 + 3);
    if (v51 >= v50 >> 1)
    {
      v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v49, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    *(v49 + 2) = v51 + 1;
    *&v49[8 * v51 + 32] = v48 | v46;
    *(v68 + v47) = v49;
    v8 = v41 >> 14;
    v33 = v41;
    v10 = v66;
    a1 = v67;
    if (v41 >> 14 == v66)
    {
    }
  }

  v37 = v33;
  if (v5 != v35)
  {
    if (v3 <= v33 >> 16)
    {
      goto LABEL_110;
    }

    goto LABEL_51;
  }

  v37 = _StringGuts._slowEnsureMatchingEncoding(_:)(v33, a1, v64);
  if (v3 > v37 >> 16)
  {
LABEL_51:
    if ((v37 & 1) == 0)
    {
      v37 = v37 & 0xC | _StringGuts.scalarAlignSlow(_:)(v37, a1, v64) & 0xFFFFFFFFFFFFFFF3 | 1;
    }

    goto LABEL_54;
  }

LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v2, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
  v8 = result;
LABEL_108:
  *(v8 + 16) = v2;
  *(v8 + 8 * v3 + 32) = v9;
  *v5 = v8;
  return result;
}

uint64_t Compiler.ByteCodeGen.emitMatchScalar(_:)(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for Unicode.Scalar.Properties();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*v3 + 16);
  if (!v9)
  {
    __break(1u);
LABEL_11:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    v8 = result;
    goto LABEL_7;
  }

  if (*(*v3 + 4 * v9 + 28) & 1) != 0 && (Unicode.Scalar.properties.getter(), v10 = Unicode.Scalar.Properties.isCased.getter(), (*(v6 + 8))(v8, v5), (v10))
  {
    v5 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
    a1 = a1;
    v2 = 0x980000000000000;
  }

  else
  {
    v5 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
    a1 = a1;
    v2 = 0x900000000000000;
  }

  v8 = *(v3 + v5);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v12 = a1 | v2;
  v14 = *(v8 + 2);
  v13 = *(v8 + 3);
  if (v14 >= v13 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    v8 = result;
  }

  *(v8 + 2) = v14 + 1;
  *&v8[8 * v14 + 32] = v12;
  *(v3 + v5) = v8;
  return result;
}

uint64_t Compiler.ByteCodeGen.emitBackreference(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AST.Atom.Number();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AST.Reference.Kind();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (AST.Reference.recursesWholePattern.getter())
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    v43 = 0xD000000000000014;
    v44 = 0x800000018E5F2EB0;
    type metadata accessor for AST.Reference();
    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type AST.Reference and conformance AST.Reference, MEMORY[0x1E69E8E98], MEMORY[0x1E69E8EA0]);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ACE8E0](v12);

    v13 = v43;
    v14 = v44;
    type metadata accessor for Unsupported();
    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998], MEMORY[0x1E69E89A0]);
    swift_allocError();
    MEMORY[0x193ACDF10](v13, v14, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/ByteCodeGen.swift", 152, 2, 177);
    return swift_willThrow();
  }

  v16 = a1;
  AST.Reference.kind.getter();
  v17 = (*(v9 + 88))(v11, v8);
  if (v17 == *MEMORY[0x1E69E8E88])
  {
    (*(v9 + 96))(v11, v8);
    (*(v5 + 32))(v7, v11, v4);
    v16 = AST.Atom.Number.value.getter();
    v8 = v18;
    v19 = *(v5 + 8);
    v5 += 8;
    v19(v7, v4);
    if (v8)
    {
      type metadata accessor for Unreachable();
      lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unreachable and conformance Unreachable, MEMORY[0x1E69E8988], MEMORY[0x1E69E8990]);
      swift_allocError();
      MEMORY[0x193ACDEF0](0xD000000000000010, 0x800000018E5F2ED0, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/ByteCodeGen.swift", 152, 2, 183);
      return swift_willThrow();
    }

    if (!__OFSUB__(v16, 1))
    {
      v23 = *(*v2 + 16);
      if (v23)
      {
        v8 = ((*(*v2 + 4 * v23 + 28) & 0x10000) == 0) | ((v16 - 1) << 16);
        v11 = 0x1B00000000000000;
        v5 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
        v16 = *(v2 + v5);
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
LABEL_12:
          v24 = v8 | v11;
          v26 = *(v16 + 16);
          v25 = *(v16 + 24);
          if (v26 >= v25 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v16, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
            v16 = result;
          }

          *(v16 + 16) = v26 + 1;
          *(v16 + 8 * v26 + 32) = v24;
          *(v2 + v5) = v16;
          return result;
        }

LABEL_33:
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        v16 = result;
        goto LABEL_12;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v17 == *MEMORY[0x1E69E8E90])
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    v43 = 0xD000000000000014;
    v44 = 0x800000018E5F2EB0;
    type metadata accessor for AST.Reference();
    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type AST.Reference and conformance AST.Reference, MEMORY[0x1E69E8E98], MEMORY[0x1E69E8EA0]);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ACE8E0](v20);

    v21 = v43;
    v22 = v44;
    type metadata accessor for Unsupported();
    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998], MEMORY[0x1E69E89A0]);
    swift_allocError();
    MEMORY[0x193ACDF10](v21, v22, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/ByteCodeGen.swift", 152, 2, 192);
    swift_willThrow();
    return (*(v9 + 8))(v11, v8);
  }

  if (v17 != *MEMORY[0x1E69E8E80])
  {
LABEL_36:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  (*(v9 + 96))(v11, v8);
  v27 = *(*v2 + 16);
  if (!v27)
  {
    goto LABEL_31;
  }

  v30 = v11;
  v29 = *v11;
  v28 = *(v30 + 8);
  v31 = *(*v2 + 4 * v27 + 28);
  v32 = (v2 + *(type metadata accessor for Compiler.ByteCodeGen(0) + 20));
  type metadata accessor for MEProgram.Builder(0);
  v33._countAndFlagsBits = v29;
  v33._object = v28;
  v45 = CaptureList.indexOfCapture(named:)(v33);
  value = v45.value;
  is_nil = v45.is_nil;

  if ((v31 & 0x10000) != 0)
  {
    if (!is_nil)
    {
      v36 = value - 1;
      if (!__OFSUB__(value, 1))
      {
        v37 = 0x1B00000000000000;
        goto LABEL_25;
      }

      goto LABEL_35;
    }

LABEL_22:
    lazy protocol witness table accessor for type RegexCompilationError and conformance RegexCompilationError();
    swift_allocError();
    *v38 = 0;
    *(v38 + 8) = 0;
    *(v38 + 16) = 2;
    return swift_willThrow();
  }

  if (is_nil)
  {
    goto LABEL_22;
  }

  v36 = value - 1;
  if (__OFSUB__(value, 1))
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v37 = 0x1B00000000000001;
LABEL_25:
  v39 = *v32;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 16) + 1, 1, v39, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    v39 = result;
  }

  v40 = v37 | (v36 << 16);
  v42 = *(v39 + 16);
  v41 = *(v39 + 24);
  if (v42 >= v41 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v39, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    v39 = result;
  }

  *(v39 + 16) = v42 + 1;
  *(v39 + 8 * v42 + 32) = v40;
  *v32 = v39;
  return result;
}

Swift::Void __swiftcall MEProgram.Builder.buildUnresolvedReference(id:isScalarMode:)(_StringProcessing::ReferenceID id, Swift::Bool isScalarMode)
{
  v3 = v2;
  v5 = *id.base;
  v6 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
  }

  *(v6 + 2) = v8 + 1;
  *&v6[8 * v8 + 32] = isScalarMode | 0x1B00000000000000;
  *v3 = v6;
  v9 = *(type metadata accessor for MEProgram.Builder(0) + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v9);
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
  v14 = *(v11 + 2);
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_19;
  }

  v17 = v12;
  if (*(v11 + 3) < v16)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, isUniquelyReferenced_nonNull_native);
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
    if ((v17 & 1) != (v19 & 1))
    {
      goto LABEL_23;
    }

    v13 = v18;
    *(v3 + v9) = v11;
    if (v17)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    *(v3 + v9) = v11;
    if (v12)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  specialized _NativeDictionary.copy()();
  *(v3 + v9) = v11;
  if ((v17 & 1) == 0)
  {
LABEL_12:
    *&v11[8 * (v13 >> 6) + 64] |= 1 << v13;
    *(*(v11 + 6) + 8 * v13) = v5;
    *(*(v11 + 7) + 8 * v13) = MEMORY[0x1E69E7CC0];
    v20 = *(v11 + 2);
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (!v21)
    {
      *(v11 + 2) = v22;
      goto LABEL_14;
    }

    __break(1u);
LABEL_23:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_14:
  v3 = *(v11 + 7);
  v5 = v3[v13];
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v3[v13] = v5;
  if ((v23 & 1) == 0)
  {
LABEL_19:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5, &_ss23_ContiguousArrayStorageCy17_StringProcessing8TypedIntVyAC19_InstructionAddressOGGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing8TypedIntVyAC19_InstructionAddressOGGMR);
    v3[v13] = v5;
  }

  v25 = *(v5 + 2);
  v24 = *(v5 + 3);
  if (v25 >= v24 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v5, &_ss23_ContiguousArrayStorageCy17_StringProcessing8TypedIntVyAC19_InstructionAddressOGGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing8TypedIntVyAC19_InstructionAddressOGGMR);
    v3[v13] = v5;
  }

  *(v5 + 2) = v25 + 1;
  *&v5[8 * v25 + 32] = v8;
}

uint64_t (*AST.Atom.generateConsumer(_:)(uint64_t a1))()
{
  v3 = type metadata accessor for AST.Atom.CharacterProperty();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AST.Atom.Kind();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  AST.Atom.kind.getter();
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == *MEMORY[0x1E69E8D58] || v11 == *MEMORY[0x1E69E8D60])
  {
    goto LABEL_33;
  }

  if (v11 == *MEMORY[0x1E69E8D28])
  {
LABEL_6:
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  if (v11 == *MEMORY[0x1E69E8D80])
  {
    (*(v8 + 96))(v10, v7);
    (*(v4 + 32))(v6, v10, v3);
    v14 = AST.Atom.CharacterProperty.generateConsumer(_:)(a1);
    if (v1)
    {
      return (*(v4 + 8))(v6, v3);
    }

    v24 = v14;
    (*(v4 + 8))(v6, v3);
    return v24;
  }

  if (v11 == *MEMORY[0x1E69E8D70])
  {
    goto LABEL_33;
  }

  if (v11 == *MEMORY[0x1E69E8D30] || v11 == *MEMORY[0x1E69E8D10] || v11 == *MEMORY[0x1E69E8D38])
  {
    goto LABEL_6;
  }

  if (v11 != *MEMORY[0x1E69E8D20])
  {
    if (v11 == *MEMORY[0x1E69E8D18] || v11 == *MEMORY[0x1E69E8CF8] || v11 == *MEMORY[0x1E69E8D68] || v11 == *MEMORY[0x1E69E8D40] || v11 == *MEMORY[0x1E69E8D48])
    {
      goto LABEL_6;
    }

    if (v11 != *MEMORY[0x1E69E8D50] && v11 != *MEMORY[0x1E69E8D00] && v11 != *MEMORY[0x1E69E8D08] && v11 == *MEMORY[0x1E69E8D78])
    {
      return 0;
    }

    goto LABEL_34;
  }

  v15 = *(v8 + 96);
  v8 += 96;
  v15(v10, v7);
  v16 = *(a1 + 16);
  if (!v16)
  {
    __break(1u);
LABEL_33:
    (*(v8 + 8))(v10, v7);
LABEL_34:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v19 = v10;
  v18 = *v10;
  v17 = v19[1];
  if ((*(a1 + 4 * v16 + 28) & 0x10000) != 0)
  {
    v20 = consumeCharacterWithLeadingScalar(_:);
  }

  else
  {
    v20 = consumeScalar(_:);
  }

  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  *(v21 + 24) = v17;
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for closure #1 in consumeName(_:opts:);
  *(v22 + 24) = v21;
  v23 = v20(partial apply for closure #1 in propertyScalarPredicate(_:), v22);

  return v23;
}

uint64_t MEProgram.Builder.buildConsume(by:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[7];
  v6 = v5[2];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5, &_ss23_ContiguousArrayStorageCySS5IndexVSgSS_SnyADGtcGMd, &_ss23_ContiguousArrayStorageCySS5IndexVSgSS_SnyADGtcGMR);
  }

  v9 = v5[2];
  v8 = v5[3];
  if (v9 >= v8 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v5, &_ss23_ContiguousArrayStorageCySS5IndexVSgSS_SnyADGtcGMd, &_ss23_ContiguousArrayStorageCySS5IndexVSgSS_SnyADGtcGMR);
  }

  v5[2] = v9 + 1;
  v10 = &v5[2 * v9];
  v10[4] = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String, @unowned Range<String.Index>) -> (@unowned String.Index?);
  v10[5] = v7;
  v2[7] = v5;
  v11 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    v11 = result;
  }

  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  if (v14 >= v13 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    v11 = result;
  }

  *(v11 + 16) = v14 + 1;
  *(v11 + 8 * v14 + 32) = v6 | 0xE00000000000000;
  *v2 = v11;
  return result;
}

unint64_t AST.Atom._patternBase.getter()
{
  v1 = type metadata accessor for AST.Atom.CharacterProperty();
  v27 = *(v1 - 8);
  v28 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v26 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AST.Atom.EscapedBuiltin();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AST.Atom.Kind();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  v29 = v0;
  AST.Atom.kind.getter();
  v14 = *(v8 + 88);
  v15 = v14(v13, v7);
  if (v15 == *MEMORY[0x1E69E8D70])
  {
    (*(v8 + 96))(v13, v7);
    (*(v4 + 32))(v6, v13, v3);
    AST.Atom.EscapedBuiltin.dslAssertionKind.getter(&v31);
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    if (v15 == *MEMORY[0x1E69E8D00])
    {
      v16 = 9;
      goto LABEL_11;
    }

    if (v15 == *MEMORY[0x1E69E8D08])
    {
      v16 = 10;
      goto LABEL_11;
    }

    v31 = 13;
    (*(v8 + 8))(v13, v7);
  }

  v16 = v31;
  if (v31 != 13)
  {
LABEL_11:
    v30 = v16;
    return DSLTree.Atom.Assertion._patternBase.getter();
  }

  AST.Atom.kind.getter();
  v17 = v14(v11, v7);
  if (v17 == *MEMORY[0x1E69E8D80])
  {
    (*(v8 + 96))(v11, v7);
    v19 = v26;
    v18 = v27;
    v20 = v28;
    (*(v27 + 32))(v26, v11, v28);
    v21 = AST.Atom.CharacterProperty.isUnprintableProperty.getter();
    (*(v18 + 8))(v19, v20);
    if (v21)
    {
      return AST.Atom._regexBase.getter();
    }

    return AST.Atom._dslBase.getter();
  }

  if (v17 == *MEMORY[0x1E69E8D30] || v17 == *MEMORY[0x1E69E8D10] || v17 == *MEMORY[0x1E69E8D38])
  {
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    v23 = *MEMORY[0x1E69E8D20];
    v24 = v17;
    (*(v8 + 8))(v11, v7);
    if (v24 != v23)
    {
      return AST.Atom._dslBase.getter();
    }
  }

  return AST.Atom._regexBase.getter();
}

uint64_t Compiler.ByteCodeGen.emitQuotedLiteral(_:)(uint64_t countAndFlagsBits, unint64_t object)
{
  v6 = 0;
  v86 = type metadata accessor for Unicode.Scalar.Properties();
  v7 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v85 = v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for Compiler.ByteCodeGen(0);
  v90 = v2;
  v9 = *(v2 + *(v89 + 28));
  v10 = HIBYTE(object) & 0xF;
  if (v9)
  {
    goto LABEL_19;
  }

  v2 = *v2;
  v11 = *(v2 + 16);
  if (v11)
  {
    v3 = (v2 + 32);
    if ((*(v2 + 32 + 4 * v11 - 2) & 1) != 0 && (specialized Sequence.allSatisfy(_:)(countAndFlagsBits, object) & 1) == 0)
    {
      goto LABEL_19;
    }

    v12 = (object & 0x2000000000000000) != 0 ? HIBYTE(object) & 0xF : countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if (!v12)
    {
      goto LABEL_19;
    }

    if ((object & 0x1000000000000000) == 0)
    {
      if (v12 >= 5)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }
  }

  else
  {
    __break(1u);
  }

  if (String.UTF8View._foreignCount()() >= 5)
  {
LABEL_11:
    v13 = *(v2 + 16);
    if (!v13)
    {
      goto LABEL_129;
    }

    v14 = *(v3 + v13 - 1);
    if ((v14 & 1) == 0)
    {
      v15 = specialized _copyCollectionToContiguousArray<A>(_:)(countAndFlagsBits, object);
      v3 = (v90 + *(v89 + 20));
      v16 = specialized TypedSetVector.store(_:)(v15);

      v2 = (v14 >> 16) & 1 | (v16 << 16);
      v6 = 0xA00000000000000;
      v9 = *v3;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_14;
    }
  }

LABEL_19:
  v81 = 0;
  v3 = v90;
  v6 = *v90;
  v21 = *(*v90 + 16);
  if (!v21)
  {
    goto LABEL_128;
  }

  v22 = *(v6 + 4 * v21 + 30);
  v88 = *v90;
  if ((v22 & 1) == 0)
  {
    v23 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((object & 0x2000000000000000) != 0)
    {
      v23 = HIBYTE(object) & 0xF;
    }

    v92 = countAndFlagsBits;
    v93 = object;
    v94 = 0;
    v95 = v23;

    v24 = String.Iterator.next()();
    if (!v24.value._object)
    {
    }

    countAndFlagsBits = v24.value._countAndFlagsBits;
    object = v24.value._object;
    v87 = v6 + 28;
    v84 = (v7 + 8);
    while (1)
    {
      v10 = (object & 0x2000000000000000) != 0 ? HIBYTE(object) & 0xF : countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      if (v10)
      {
        break;
      }

LABEL_59:

      v43 = String.Iterator.next()();
      countAndFlagsBits = v43.value._countAndFlagsBits;
      object = v43.value._object;
      if (!v43.value._object)
      {
      }
    }

    v25 = 0;
    v82 = (object & 0xFFFFFFFFFFFFFFFLL) + 32;
    v83 = object & 0xFFFFFFFFFFFFFFLL;
    while (1)
    {
      if ((object & 0x1000000000000000) != 0)
      {
        v30 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v32 = v31;
      }

      else
      {
        if ((object & 0x2000000000000000) != 0)
        {
          v91[0] = countAndFlagsBits;
          v91[1] = v83;
          v29 = v91 + v25;
        }

        else
        {
          v28 = v82;
          if ((countAndFlagsBits & 0x1000000000000000) == 0)
          {
            v28 = _StringObject.sharedUTF8.getter();
          }

          v29 = (v28 + v25);
        }

        v30 = *v29;
        if ((*v29 & 0x80000000) == 0)
        {
          goto LABEL_40;
        }

        v42 = (__clz(v30 ^ 0xFF) - 24);
        if (v42 > 2)
        {
          if (v42 == 3)
          {
            v30 = ((v30 & 0xF) << 12) | ((v29[1] & 0x3F) << 6) | v29[2] & 0x3F;
            v32 = 3;
          }

          else
          {
            v30 = ((v30 & 0xF) << 18) | ((v29[1] & 0x3F) << 12) | ((v29[2] & 0x3F) << 6) | v29[3] & 0x3F;
            v32 = 4;
          }

          goto LABEL_41;
        }

        if (v42 == 1)
        {
LABEL_40:
          v32 = 1;
        }

        else
        {
          v30 = v29[1] & 0x3F | ((v30 & 0x1F) << 6);
          v32 = 2;
        }
      }

LABEL_41:
      v33 = *(v6 + 16);
      if (!v33)
      {
        goto LABEL_78;
      }

      if (*(v87 + 4 * v33) & 1) != 0 && (v34 = v85, Unicode.Scalar.properties.getter(), v35 = Unicode.Scalar.Properties.isCased.getter(), (*v84)(v34, v86), (v35))
      {
        v36 = *(v89 + 20);
        v37 = *(v3 + v36);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 2) + 1, 1, v37, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        }

        v39 = *(v37 + 2);
        v38 = *(v37 + 3);
        v40 = v39 + 1;
        if (v39 >= v38 >> 1)
        {
          v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v37, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        }

        v26 = v30;
        v27 = 0x980000000000000;
      }

      else
      {
        v36 = *(v89 + 20);
        v37 = *(v3 + v36);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 2) + 1, 1, v37, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        }

        v39 = *(v37 + 2);
        v41 = *(v37 + 3);
        v40 = v39 + 1;
        if (v39 >= v41 >> 1)
        {
          v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v39 + 1, 1, v37, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        }

        v26 = v30;
        v27 = 0x900000000000000;
      }

      *(v37 + 2) = v40;
      *&v37[8 * v39 + 32] = v26 | v27;
      v3 = v90;
      *(v90 + v36) = v37;
      v25 += v32;
      v6 = v88;
      if (v25 >= v10)
      {
        goto LABEL_59;
      }
    }
  }

  if (v9)
  {
    goto LABEL_79;
  }

  v44 = object & 0x2000000000000000;
  v45 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((object & 0x2000000000000000) != 0)
  {
    v46 = HIBYTE(object) & 0xF;
  }

  else
  {
    v46 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v92 = countAndFlagsBits;
  v93 = object;
  v94 = 0;
  v95 = v46;
  v87 = v46;

  v47 = String.Iterator.next()();
  if (v47.value._object)
  {
    v48 = v47.value._countAndFlagsBits;
    v49 = v47.value._object;
    do
    {
      if (v48 == 2573 && v49 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
      }

      else
      {
        if ((Character._isSingleScalar.getter() & 1) == 0)
        {
          goto LABEL_117;
        }

        result = specialized Collection.first.getter(v48, v49);
        if ((result & 0x100000000) != 0)
        {
          __break(1u);
LABEL_132:
          __break(1u);
          return result;
        }

        if ((result & 0xFFFFFF80) != 0)
        {
LABEL_117:

          goto LABEL_118;
        }

        result = specialized Collection.first.getter(v48, v49);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_132;
        }

        v51 = result;

        if ((v51 & 0xFFFFFF00) != 0)
        {
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          v44 = object & 0x2000000000000000;
          v45 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
LABEL_118:
          if (v44)
          {
            v71 = v10;
          }

          else
          {
            v71 = v45;
          }

          v92 = countAndFlagsBits;
          v93 = object;
          v94 = 0;
          v95 = v71;

          v73 = String.Iterator.next()();
          v72 = v73.value._countAndFlagsBits;
          if (v73.value._object)
          {
            v74 = v73.value._object;
            do
            {
              Compiler.ByteCodeGen.emitCharacter(_:)(v72, v74);

              v75 = String.Iterator.next()();
              v72 = v75.value._countAndFlagsBits;
              v74 = v75.value._object;
            }

            while (v75.value._object);
          }
        }
      }

      v50 = String.Iterator.next()();
      v48 = v50.value._countAndFlagsBits;
      v49 = v50.value._object;
    }

    while (v50.value._object);
  }

  v52 = v87;
  if (!v87)
  {
    goto LABEL_118;
  }

  v78 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  v79 = HIBYTE(object) & 0xF;
  v80 = object & 0x2000000000000000;
  v53 = (object & 0x1000000000000000) == 0 || (countAndFlagsBits & 0x800000000000000) != 0;
  v54 = 11;
  if (v53)
  {
    v54 = 7;
  }

  v83 = 4 * v87;
  v84 = (v54 | (v87 << 16));
  v2 = 15;
  v55 = specialized DefaultIndices<>.index(before:)(v84, countAndFlagsBits, object);
  v91[0] = 15;
  v6 = v88;
  v81 = v88 + 28;
  v82 = v55 >> 14;
  v3 = (4 << v53);
  v77 = object & 0xFFFFFFFFFFFFFFLL;
  v76[1] = (object & 0xFFFFFFFFFFFFFFFLL) + 32;
  v9 = v7 + 8;

  v56 = 0;
  while (1)
  {
    specialized DefaultIndices.formIndex(after:)(v91, countAndFlagsBits, object);
    if (v2 & 0xC) != v3 && (v2)
    {
      v57 = v2 >> 16;
      if (v2 >> 16 >= v52)
      {
        goto LABEL_127;
      }

LABEL_95:
      if ((object & 0x1000000000000000) != 0)
      {
        goto LABEL_102;
      }

      goto LABEL_96;
    }

    if ((v2 & 0xC) == v3)
    {
      v2 = _StringGuts._slowEnsureMatchingEncoding(_:)(v2, countAndFlagsBits, object);
    }

    v57 = v2 >> 16;
    if (v2 >> 16 >= v52)
    {
      goto LABEL_126;
    }

    if (v2)
    {
      goto LABEL_95;
    }

    v2 = _StringGuts.scalarAlignSlow(_:)(v2, countAndFlagsBits, object);
    v57 = v2 >> 16;
    if ((object & 0x1000000000000000) != 0)
    {
LABEL_102:
      v58 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      goto LABEL_103;
    }

LABEL_96:
    if (v80)
    {
      v92 = countAndFlagsBits;
      v93 = v77;
    }

    else if ((countAndFlagsBits & 0x1000000000000000) == 0)
    {
      v2 = v57;
      _StringObject.sharedUTF8.getter();
    }

    v58 = _decodeScalar(_:startingAt:)();
LABEL_103:
    v59 = v58;
    v60 = *(v6 + 16);
    if (!v60)
    {
      break;
    }

    if (*(v81 + 4 * v60) & 1) != 0 && (v61 = v85, Unicode.Scalar.properties.getter(), v62 = Unicode.Scalar.Properties.isCased.getter(), (*v9)(v61, v86), (v62))
    {
      v63 = *(v89 + 20);
      v64 = v56 == v82;
      v65 = 0x980000000000000;
      v66 = 0x9C0000000000000;
    }

    else
    {
      v63 = *(v89 + 20);
      v64 = v56 == v82;
      v65 = 0x900000000000000;
      v66 = 0x940000000000000;
    }

    if (v64)
    {
      v67 = v66;
    }

    else
    {
      v67 = v65;
    }

    v68 = *(v90 + v63);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v68 + 2) + 1, 1, v68, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    v70 = *(v68 + 2);
    v69 = *(v68 + 3);
    if (v70 >= v69 >> 1)
    {
      v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1, v68, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    *(v68 + 2) = v70 + 1;
    *&v68[8 * v70 + 32] = v67 | v59;
    *(v90 + v63) = v68;
    v2 = v91[0];
    v56 = v91[0] >> 14;
    v52 = v87;
    v6 = v88;
    if (v91[0] >> 14 == v83)
    {
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
  v9 = result;
LABEL_14:
  v18 = v2 | v6;
  v20 = *(v9 + 16);
  v19 = *(v9 + 24);
  if (v20 >= v19 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v9, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    v9 = result;
  }

  *(v9 + 16) = v20 + 1;
  *(v9 + 8 * v20 + 32) = v18;
  *v3 = v9;
  return result;
}

BOOL specialized Sequence.allSatisfy(_:)(uint64_t a1, unint64_t *a2)
{
  v3 = *(a1 + 16);
  v4 = (a1 + 32);
  do
  {
    v5 = v3;
    if (!v3)
    {
      break;
    }

    v6 = *v4;

    v7 = DSLTree.Node._canOnlyMatchAtStartImpl(_:)(a2, v6);

    if (v7 == 2)
    {
      break;
    }

    ++v4;
    v3 = v5 - 1;
  }

  while ((v7 & 1) != 0);
  return v5 == 0;
}

unint64_t specialized Sequence.allSatisfy(_:)(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v5 = 4 * v4;
  v6 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  v7 = 4 << v6;
  v20 = a2 & 0xFFFFFFFFFFFFFFLL;
  v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  result = 15;
  while (1)
  {
    v10 = result >> 14;
    if (result >> 14 == v5)
    {
      return v10 == v5;
    }

    v11 = result & 0xC;
    v12 = result;
    if (v11 == v7)
    {
      v16 = result;
      v12 = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a1, a2);
      result = v16;
    }

    v13 = v12 >> 16;
    if (v12 >> 16 >= v4)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v18 = result;
      v15 = String.UTF8View._foreignSubscript(position:)();
      result = v18;
      if (v11 != v7)
      {
        goto LABEL_18;
      }

LABEL_23:
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a1, a2);
      if ((a2 & 0x1000000000000000) != 0)
      {
        goto LABEL_19;
      }

LABEL_7:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      if (v15 < 0)
      {
        return v10 == v5;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v19[0] = a1;
        v19[1] = v20;
        v14 = v19;
      }

      else
      {
        v14 = v8;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v17 = result;
          v14 = _StringObject.sharedUTF8.getter();
          result = v17;
        }
      }

      v15 = *(v14 + v13);
      if (v11 == v7)
      {
        goto LABEL_23;
      }

LABEL_18:
      if ((a2 & 0x1000000000000000) == 0)
      {
        goto LABEL_7;
      }

LABEL_19:
      if (v4 <= result >> 16)
      {
        goto LABEL_27;
      }

      result = String.UTF8View._foreignIndex(after:)();
      if (v15 < 0)
      {
        return v10 == v5;
      }
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t specialized BidirectionalCollection.last.getter(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    v11 = 0;
    goto LABEL_28;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = _StringGuts.validateInclusiveScalarIndex(_:)(v5 | (v2 << 16), a1, a2);
  if (v6 < 0x4000)
  {
    __break(1u);
    goto LABEL_30;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
LABEL_30:
    v16 = String.UnicodeScalarView._foreignIndex(before:)();
    _StringGuts.validateScalarIndex(_:)(v16, a1, a2);
    v11 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    goto LABEL_28;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v18 = a1;
    v19 = a2 & 0xFFFFFFFFFFFFFFLL;
    v12 = &v18 + (v6 >> 16);
    if ((*(v12 - 1) & 0xC0) == 0x80)
    {
      v9 = -2;
      do
      {
        v13 = v12[v9--] & 0xC0;
      }

      while (v13 == 128);
      goto LABEL_20;
    }

LABEL_21:
    v14 = -1;
    goto LABEL_22;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v17 = v6;
    v7 = _StringObject.sharedUTF8.getter();
    v6 = v17;
  }

  v8 = v7 + (v6 >> 16);
  if ((*(v8 - 1) & 0xC0) != 0x80)
  {
    goto LABEL_21;
  }

  v9 = -2;
  do
  {
    v10 = *(v8 + v9--) & 0xC0;
  }

  while (v10 == 128);
LABEL_20:
  v14 = v9 + 1;
LABEL_22:
  _StringGuts.validateScalarIndex(_:)((v6 + (v14 << 16)) & 0xFFFFFFFFFFFF0000 | 5, a1, a2);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v18 = a1;
    v19 = a2 & 0xFFFFFFFFFFFFFFLL;
  }

  else if ((a1 & 0x1000000000000000) == 0)
  {
    _StringObject.sharedUTF8.getter();
  }

  v11 = _decodeScalar(_:startingAt:)();
LABEL_28:
  LOBYTE(v18) = v2 == 0;
  return v11 | ((v2 == 0) << 32);
}

uint64_t specialized BidirectionalCollection.last.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
    v13 = *(v6 - 8);
    outlined init with copy of DSLTree._AST.AbsentFunction(a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v5, a2, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    v7 = *(v13 + 56);
    v8 = a2;
    v9 = 0;
    v10 = v6;
  }

  else
  {
    v11 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
    v7 = *(*(v11 - 8) + 56);
    v10 = v11;
    v8 = a2;
    v9 = 1;
  }

  return v7(v8, v9, 1, v10);
}

uint64_t DSLTree.Atom.CharacterClass.asRuntimeModel(_:)(_StringProcessing::MatchingOptions a1)
{
  v2 = *v1;
  v3 = 2;
  v4 = *v1;
  switch(v2)
  {
    case 1:
      goto LABEL_10;
    case 2:
      v4 = 0;
      v3 = 3;
      goto LABEL_11;
    case 3:
      v4 = 0x1000000;
      v3 = v2;
      goto LABEL_11;
    case 4:
    case 6:
      v4 = 0;
      v3 = v2;
      goto LABEL_11;
    case 5:
      v3 = 4;
      goto LABEL_10;
    case 7:
      v3 = 6;
      goto LABEL_10;
    case 8:
      v4 = 0;
      v3 = 5;
      goto LABEL_11;
    case 9:
      v3 = 5;
      goto LABEL_10;
    case 10:
      v4 = 0;
      v3 = 7;
      goto LABEL_11;
    case 11:
      v3 = 7;
LABEL_10:
      v4 = 0x1000000;
      goto LABEL_11;
    case 12:
      v4 = 0;
      v3 = 1;
      goto LABEL_11;
    case 13:
      goto LABEL_19;
    default:
LABEL_11:
      v5 = *(a1.stack._rawValue + 2);
      if (!v5)
      {
        __break(1u);
LABEL_19:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        JUMPOUT(0x18E587F10);
      }

      v6 = *(a1.stack._rawValue + v5 + 7);
      if (_CharacterClassModel.Representation.isStrictAscii(options:)(a1))
      {
        v7 = 0x10000;
      }

      else
      {
        v7 = 0;
      }

      return (v4 | v3 | v7 | (v6 >> 8) & 0x100) ^ 0x100;
  }
}