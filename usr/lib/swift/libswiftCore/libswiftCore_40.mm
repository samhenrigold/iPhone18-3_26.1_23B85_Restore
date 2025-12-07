uint64_t Optional.customMirror.getter@<X0>(swift *a1@<X0>, uint64_t a2@<X1>, swift **a3@<X8>)
{
  v4 = v3;
  v60 = a3;
  v6 = *(a1 + 2);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 - 8);
  v13 = MEMORY[0x1EEE9AC00](v8, v12);
  v57 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v56 - v17;
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v58 = &v56 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = &v56 - v24;
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = &v56 - v27;
  v59 = v11;
  v29 = *(v11 + 16);
  v29(&v56 - v27, v4, a1);
  if ((*(v7 + 48))(v28, 1, v6) == 1)
  {
    v29(v18, v4, a1);
    v61 = 0;
    v62 = 0;
    v30 = static Mirror._superclassIterator<A>(_:_:)(v18, &v61, a1);
    v32 = v31;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMd, _ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMR);
    v34 = swift_allocObject(v33, 0x48, 7uLL);
    *(v34 + 6) = &_swiftEmptyArrayStorage;
    *(v34 + 7) = closure #1 in Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:);
    *(v34 + 8) = 0;
    v35 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
    v36 = swift_allocObject(v35, 0x18, 7uLL);
    v36[2] = 0;
    v37 = swift_allocObject(v35, 0x18, 7uLL);
    v37[2] = 0;
    *(v34 + 2) = v36;
    *(v34 + 3) = &protocol witness table for _IndexBox<A>;
    *(v34 + 4) = v37;
    *(v34 + 5) = &protocol witness table for _IndexBox<A>;
    v38 = v57;
    (*(v59 + 32))(v57, v18, a1);
  }

  else
  {
    v39 = *(v7 + 32);
    v39(v10, v28, v6);
    v29(v25, v4, a1);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, _ss23_ContiguousArrayStorageCySS_yptGMR);
    v41 = swift_allocObject(v40, 0x50, 7uLL);
    *(v41 + 1) = xmmword_18071DB30;
    v41[4] = 1701670771;
    v41[5] = 0xE400000000000000;
    v41[9] = v6;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v41 + 6);
    v39(boxed_opaque_existential_0Tm, v10, v6);
    v61 = 0;
    v62 = 0;
    v30 = static Mirror._superclassIterator<A>(_:_:)(v25, &v61, a1);
    v32 = v43;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMd, _ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMR);
    v34 = swift_allocObject(v44, 0x48, 7uLL);
    *(v34 + 6) = v41;
    *(v34 + 7) = closure #1 in Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:);
    *(v34 + 8) = 0;
    v45 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
    v46 = swift_allocObject(v45, 0x18, 7uLL);
    v46[2] = 0;
    v47 = v41[2];
    v48 = swift_allocObject(v45, 0x18, 7uLL);
    v48[2] = v47;
    *(v34 + 2) = v46;
    *(v34 + 3) = &protocol witness table for _IndexBox<A>;
    *(v34 + 4) = v48;
    *(v34 + 5) = &protocol witness table for _IndexBox<A>;
    v38 = v58;
    (*(v59 + 32))(v58, v25, a1);
  }

  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(&v61, v38, a1, v49, 6uLL, v50, v51, v52, v56);
  v54 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(&v61);
  }

  v55 = v60;
  *v60 = a1;
  v55[1] = v34;
  *(v55 + 16) = 4;
  v55[3] = v30;
  v55[4] = v32;
  *(v55 + 40) = v54;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance <A> A?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v34 = a1;
  v32 = *(a4 - 8);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1, a2);
  v31 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v8, v12);
  v35 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2(0, v14, v14, 0, 0);
  v16 = v15;
  v33 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v30 - v19;
  v21 = *(v18 + 48);
  v22 = *(v11 + 16);
  v22(&v30 - v19, v34, v4);
  v22(&v20[v21], a2, v4);
  v34 = v7;
  v23 = *(v7 + 48);
  if (v23(v20, 1, v6) == 1)
  {
    if (v23(&v20[v21], 1, v6) == 1)
    {
      v24 = 1;
    }

    else
    {
      v11 = v33;
      v4 = v16;
      v24 = 0;
    }
  }

  else
  {
    v22(v35, v20, v4);
    if (v23(&v20[v21], 1, v6) == 1)
    {
      (*(v34 + 8))(v35, v6);
      v24 = 0;
      v11 = v33;
      v4 = v16;
    }

    else
    {
      v25 = v34;
      v26 = v31;
      (*(v34 + 32))(v31, &v20[v21], v6);
      v27 = v35;
      v24 = (*(v32 + 8))(v35, v26, v6);
      v28 = *(v25 + 8);
      v28(v26, v6);
      v28(v27, v6);
    }
  }

  (*(v11 + 8))(v20, v4);
  return v24 & 1;
}

void Optional<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v14);
  if ((*(v6 + 48))(v12, 1, v5) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v6 + 32))(v9, v12, v5);
    Hasher._combine(_:)(1u);
    (*(a3 + 24))(a1, v5, a3);
    (*(v6 + 8))(v9, v5);
  }
}

Swift::Int Optional<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0u;
  v19 = 0u;
  v15 = 0;
  v16 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v17 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  (*(v12 + 16))(v11, v2);
  if ((*(v5 + 48))(v11, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v8, v11, v4);
    Hasher._combine(_:)(1u);
    (*(a2 + 24))(&v15, v4, a2);
    (*(v5 + 8))(v8, v4);
  }

  return Hasher._finalize()();
}

uint64_t ?? infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>, uint64_t a5@<X2>)
{
  v9 = type metadata accessor for Optional(0, a3, a5, a3);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v16 - v11;
  (*(v13 + 16))(v16 - v11, a1);
  v14 = *(a3 - 8);
  if ((*(v14 + 48))(v12, 1, a3) == 1)
  {
    return a2();
  }

  else
  {
    return (*(v14 + 32))(a4, v12, a3);
  }
}

{
  v9 = type metadata accessor for Optional(0, a3, a5, a3);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v16 - v11;
  (*(v13 + 16))(v16 - v11, a1);
  v14 = *(a3 - 8);
  if ((*(v14 + 48))(v12, 1, a3) == 1)
  {
    return a2();
  }

  (*(v14 + 32))(a4, v12, a3);
  return (*(v14 + 56))(a4, 0, 1, a3);
}

__SwiftNull *Optional._bridgeToObjectiveC()(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1, v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v5, v10);
  v12 = (&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    (*(v4 + 8))(v7, a1);
    return _swift_Foundation_getOptionalNilSentinelObject(v8);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v14 = _bridgeAnythingToObjectiveC<A>(_:)(v12, v8);
    (*(v9 + 8))(v12, v8);
    return v14;
  }
}

uint64_t static Optional._forceBridgeFromObjectiveC(_:result:)(__SwiftNull *a1, uint64_t a2, unint64_t *a3)
{
  v6 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Optional(255, v9, v9, v10);
  v14 = type metadata accessor for Optional(0, v11, v12, v13);
  (*(*(v14 - 8) + 8))(a2, v14);
  OptionalNilSentinelObject = _swift_Foundation_getOptionalNilSentinelObject(a3);
  swift_unknownObjectRelease(OptionalNilSentinelObject);
  if (OptionalNilSentinelObject == a1)
  {
    (*(v6 + 56))(a2, 1, 1, a3);
    v20 = *(*(v11 - 8) + 56);

    return v20(a2, 0, 1, v11);
  }

  else
  {
    v22 = a1;
    swift_unknownObjectRetain(a1);
    swift_dynamicCast(v8, &v22, qword_1EEEAC710, a3, 7uLL, v16, v17, v18, v21);
    (*(v6 + 16))(a2, v8, a3);
    (*(v6 + 56))(a2, 0, 1, a3);
    (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
    return (*(v6 + 8))(v8, a3);
  }
}

uint64_t static Optional._conditionallyBridgeFromObjectiveC(_:result:)(__SwiftNull *a1, char *a2, unint64_t *a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional(0, a3, a3, a4);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = (&v29 - v11);
  v13 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v10, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Optional(0, v7, v17, v18);
  (*(*(v19 - 8) + 8))(a2, v19);
  OptionalNilSentinelObject = _swift_Foundation_getOptionalNilSentinelObject(a3);
  swift_unknownObjectRelease(OptionalNilSentinelObject);
  if (OptionalNilSentinelObject == a1)
  {
    v26 = 1;
    (*(v13 + 56))(a2, 1, 1, a3);
    (*(v8 + 56))(a2, 0, 1, v7);
  }

  else
  {
    v30 = a1;
    swift_unknownObjectRetain(a1);
    v24 = swift_dynamicCast(v12, &v30, qword_1EEEAC710, a3, 6uLL, v21, v22, v23, v29);
    v25 = *(v13 + 56);
    if (v24)
    {
      v26 = 1;
      v25(v12, 0, 1, a3);
      v29 = v7;
      v27 = *(v13 + 32);
      v27(v16, v12, a3);
      v27(a2, v16, a3);
      v25(a2, 0, 1, a3);
      (*(v8 + 56))(a2, 0, 1, v29);
    }

    else
    {
      v25(v12, 1, 1, a3);
      (*(v8 + 8))(v12, v7);
      (*(v8 + 56))(a2, 1, 1, v7);
      return 0;
    }
  }

  return v26;
}

uint64_t static Optional._unconditionallyBridgeFromObjectiveC(_:)@<X0>(__SwiftNull *a1@<X0>, unint64_t *a2@<X1>, swift *a3@<X8>)
{
  if (a1)
  {
    swift_unknownObjectRetain(a1);
    OptionalNilSentinelObject = _swift_Foundation_getOptionalNilSentinelObject(a2);
    swift_unknownObjectRelease(OptionalNilSentinelObject);
    if (OptionalNilSentinelObject != a1)
    {
      v13 = a1;
      swift_dynamicCast(a3, &v13, qword_1EEEAC710, a2, 7uLL, v7, v8, v9, v12);
      return (*(*(a2 - 1) + 56))(a3, 0, 1, a2);
    }

    swift_unknownObjectRelease(a1);
  }

  v11 = *(*(a2 - 1) + 56);

  return v11(a3, 1, 1, a2);
}

uint64_t OptionSet.union(_:)(uint64_t a1, Class *a2, uint64_t a3)
{
  v6 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 8);
  swift_getAssociatedTypeWitness(0, v10, a2, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v16 - v13;
  (*(v10 + 24))(a2, v10);
  (*(a3 + 24))(v14, a2, a3);
  (*(v6 + 16))(v8, a1, a2);
  return (*(*(a3 + 16) + 96))(v8, a2);
}

uint64_t OptionSet.intersection(_:)(uint64_t a1, Class *a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness(0, v6, a2, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v12 - v9;
  (*(v6 + 24))(a2, v6);
  (*(a3 + 24))(v10, a2, a3);
  return (*(*(a3 + 16) + 104))(a1, a2);
}

uint64_t OptionSet.symmetricDifference(_:)(uint64_t a1, Class *a2, uint64_t a3)
{
  v6 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 8);
  swift_getAssociatedTypeWitness(0, v10, a2, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v16 - v13;
  (*(v10 + 24))(a2, v10);
  (*(a3 + 24))(v14, a2, a3);
  (*(v6 + 16))(v8, a1, a2);
  return (*(*(a3 + 16) + 112))(v8, a2);
}

uint64_t OptionSet<>.insert(_:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v39 = a1;
  swift_getTupleTypeMetadata2(0, &type metadata for Bool, a3, "inserted memberAfterInsert ", 0);
  v40 = v9;
  v38 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v37 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = v36 - v15;
  v17 = *(a3 - 1);
  v19 = MEMORY[0x1EEE9AC00](v14, v18);
  v21 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = v36 - v23;
  v25 = *(v17 + 16);
  v36[1] = v5;
  v25(v21, v5, a3);
  v26 = *(a4 + 16);
  (*(v26 + 56))(a2, a3, v26);
  v27 = *(*(v26 + 8) + 8);
  v36[0] = a2;
  v28 = v27(v24, a2, a3);
  v29 = *(v40 + 48);
  *v16 = (v28 & 1) == 0;
  if (v28)
  {
    (*(v17 + 32))(&v16[v29], v24, a3);
  }

  else
  {
    (*(v17 + 8))(v24, a3);
    v30 = &v16[v29];
    v31 = v36[0];
    v25(v30, v36[0], a3);
    v25(v21, v31, a3);
    (*(v26 + 96))(v21, a3, v26);
  }

  v32 = v37;
  v33 = v40;
  (*(v38 + 32))(v37, v16, v40);
  v34 = *v32;
  (*(v17 + 32))(v39, &v32[*(v33 + 48)], a3);
  return v34;
}

uint64_t OptionSet<>.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = *(a2 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1, a2);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v20 - v15;
  (*(v10 + 16))(v13, v5, a2);
  v17 = *(a3 + 16);
  (*(v17 + 56))(a1, a2, v17);
  if ((*(v17 + 152))(a2, v17))
  {
    (*(v10 + 8))(v16, a2);
    v18 = 1;
  }

  else
  {
    (*(v17 + 168))(a1, a2, v17);
    (*(v10 + 32))(a4, v16, a2);
    v18 = 0;
  }

  return (*(v10 + 56))(a4, v18, 1, a2);
}

uint64_t OptionSet<>.update(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v23 = a4;
  v9 = *(a2 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v22 - v14;
  v16 = *(v9 + 16);
  v16(v12, v5, a2);
  v17 = *(a3 + 16);
  (*(v17 + 56))(a1, a2, v17);
  v16(v12, a1, a2);
  (*(v17 + 96))(v12, a2, v17);
  if ((*(v17 + 152))(a2, v17))
  {
    (*(v9 + 8))(v15, a2);
    v18 = 1;
    v19 = v23;
  }

  else
  {
    v20 = v23;
    (*(v9 + 32))(v23, v15, a2);
    v18 = 0;
    v19 = v20;
  }

  return (*(v9 + 56))(v19, v18, 1, a2);
}

uint64_t OptionSet<>.init()(Class *a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness(0, *(a2 + 8), a1, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v19 - v9;
  v11 = *(*(*(a3 + 8) + 24) + 16);
  swift_getAssociatedTypeWitness(0, v11, v7, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v19 - v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v11, v7, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v13, AssociatedConformanceWitness);
  (*(v11 + 24))(v16, v7, v11);
  return (*(a2 + 24))(v10, a1, a2);
}

uint64_t OptionSet<>.formUnion(_:)(uint64_t a1, Class *a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v26 = a3;
  v24[1] = a1;
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness(0, v6, a2, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  v8 = v7;
  v9 = *(v7 - 8);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = v24 - v16;
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = v24 - v19;
  v21 = *(v6 + 24);
  v24[0] = v4;
  v21(a2, v6);
  (*(*(a2 - 1) + 1))(v4, a2);
  v21(a2, v6);
  (*(*(v25 + 8) + 208))(v17, v13, v8);
  v22 = *(v9 + 8);
  v22(v13, v8);
  v22(v17, v8);
  return (*(v26 + 24))(v20, a2);
}

uint64_t OptionSet<>.formIntersection(_:)(uint64_t a1, Class *a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v26 = a3;
  v24[1] = a1;
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness(0, v6, a2, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  v8 = v7;
  v9 = *(v7 - 8);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = v24 - v16;
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = v24 - v19;
  v21 = *(v6 + 24);
  v24[0] = v4;
  v21(a2, v6);
  (*(*(a2 - 1) + 1))(v4, a2);
  v21(a2, v6);
  (*(*(v25 + 8) + 192))(v17, v13, v8);
  v22 = *(v9 + 8);
  v22(v13, v8);
  v22(v17, v8);
  return (*(v26 + 24))(v20, a2);
}

uint64_t OptionSet<>.formSymmetricDifference(_:)(uint64_t a1, Class *a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v26 = a3;
  v24[1] = a1;
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness(0, v6, a2, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  v8 = v7;
  v9 = *(v7 - 8);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = v24 - v16;
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = v24 - v19;
  v21 = *(v6 + 24);
  v24[0] = v4;
  v21(a2, v6);
  (*(*(a2 - 1) + 1))(v4, a2);
  v21(a2, v6);
  (*(*(v25 + 8) + 224))(v17, v13, v8);
  v22 = *(v9 + 8);
  v22(v13, v8);
  v22(v17, v8);
  return (*(v26 + 24))(v20, a2);
}

void TextOutputStream._writeASCII(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint8x8_t a5)
{
  v6 = specialized static String._uncheckedFromASCII(_:)(a1, a2, a5);
  v8 = v7;
  (*(a4 + 24))(v6);

  v8;
}

uint64_t _fallbackEnumRawValue<A>(_:)(int *a1, uint64_t a2)
{
  result = 0;
  v4 = *(*(a2 - 8) + 64);
  if (v4 > 3)
  {
    if (v4 == 4)
    {
      return *a1;
    }

    else if (v4 == 8)
    {
      return *a1;
    }
  }

  else if (v4 == 1)
  {
    return *a1;
  }

  else if (v4 == 2)
  {
    return *a1;
  }

  return result;
}

void _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v15 = (&v244 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *v16;
  v18 = *(v16 + 8);
  v19 = *(v16 + 16);
  v245 = v21;
  v246 = v20;
  v247 = v22;
  if (v19 > 3)
  {
    if (v19 != 9)
    {
      if (v19 == 8)
      {
        printTypeName #1 <A, B>(_:) in _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v17, a3, v11 & 1, a6, a7);
        (*(a7 + 24))(10536, 0xE200000000000000, a6, a7);

        0xE200000000000000;
        return;
      }

      if (v19 == 4)
      {
        v59 = v18[2];
        v60 = v18[3];
        if (specialized static AnyIndex.== infix(_:_:)(v59, v60, v18[4], v18[5]))
        {
          *&v251 = 7104878;
          *(&v251 + 1) = 0xE300000000000000;
          _debugPrint_unlocked<A, B>(_:_:)(&v251, a3, &type metadata for String, a6, v245);
          v61 = 0xE300000000000000;
          goto LABEL_264;
        }

        (*(*v18 + 256))(&v251, v59, v60);
        _debugPrint_unlocked<A, B>(_:_:)(&v252, a3, qword_1EEEAC6F8, a6, v245);
        outlined destroy of _HasContiguousBytes?(&v251, &_sSSSg5label_yp5valuetMd, _sSSSg5label_yp5valuetMR);
        return;
      }

LABEL_71:
      TypeName = swift_getTypeName(v17, 1);
      if (v77 < 0)
      {
        goto LABEL_271;
      }

      v78 = TypeName;
      v79 = v77;
      if (_allASCII(_:)(TypeName, v77))
      {
        v81 = 1;
LABEL_74:
        if (v79)
        {
          if (v79 <= 15)
          {
            v82 = v79 - 8;
            v83 = 8;
            if (v79 < 8)
            {
              v83 = v79;
            }

            if (v79 >= 4)
            {
              v86 = v83 & 0xC;
              v80.i32[0] = *v78;
              v169 = vmovl_u16(*&vmovl_u8(v80));
              v170.i64[0] = v169.u32[0];
              v170.i64[1] = v169.u32[1];
              v171.i64[0] = 255;
              v171.i64[1] = 255;
              v172 = vandq_s8(v170, v171);
              v170.i64[0] = v169.u32[2];
              v170.i64[1] = v169.u32[3];
              v173 = vshlq_u64(vandq_s8(v170, v171), xmmword_18071DBA0);
              v174.i32[1] = 0;
              v175 = vshlq_u64(v172, xmmword_18071DBB0);
              if (v86 != 4)
              {
                v174.i32[0] = *(v78 + 4);
                v176 = vmovl_u16(*&vmovl_u8(v174));
                v177.i64[0] = v176.u32[2];
                v177.i64[1] = v176.u32[3];
                v178 = vandq_s8(v177, v171);
                v177.i64[0] = v176.u32[0];
                v177.i64[1] = v176.u32[1];
                v173 = vorrq_s8(vshlq_u64(v178, xmmword_18071DBD0), v173);
                v175 = vorrq_s8(vshlq_u64(vandq_s8(v177, v171), xmmword_18071DBC0), v175);
              }

              v179 = vorrq_s8(v175, v173);
              v84 = vorr_s8(*v179.i8, *&vextq_s8(v179, v179, 8uLL));
              if (v83 == v86)
              {
LABEL_226:
                if (v79 >= 9)
                {
                  v183 = 0;
                  v184 = 0;
                  v185 = (v78 + 8);
                  do
                  {
                    v186 = *v185++;
                    v183 |= v186 << v184;
                    v184 += 8;
                    --v82;
                  }

                  while (v82);
                  goto LABEL_259;
                }

LABEL_258:
                v183 = 0;
LABEL_259:
                v241 = 0xA000000000000000;
                if (((v183 | *&v84) & 0x8080808080808080) == 0)
                {
                  v241 = 0xE000000000000000;
                }

                v107 = v241 | (v79 << 56) | v183;
                goto LABEL_262;
              }

              v85 = 8 * v86;
            }

            else
            {
              v84 = 0;
              v85 = 0;
              v86 = 0;
            }

            v180 = v83 - v86;
            v181 = (v78 + v86);
            do
            {
              v182 = *v181++;
              *&v84 |= v182 << (v85 & 0x38);
              v85 += 8;
              --v180;
            }

            while (v180);
            goto LABEL_226;
          }

LABEL_147:
          v107 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v78, v79, v79, v81 & 1);
          v84 = *(v107 + 24);
          goto LABEL_262;
        }

LABEL_217:
        v84 = 0;
        v107 = 0xE000000000000000;
        goto LABEL_262;
      }

      if (!v79)
      {
        goto LABEL_217;
      }

      v108 = 0;
      v109 = (v78 + v79);
      v81 = 1;
      v110 = v78;
      v111 = v78;
      while (1)
      {
        v113 = *v111++;
        v112 = v113;
        if ((v113 & 0x80000000) == 0)
        {
          v114 = 1;
          goto LABEL_98;
        }

        if ((v112 + 11) <= 0xCCu)
        {
          LOBYTE(v251) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v112);
          goto LABEL_149;
        }

        if (v112 <= 0xDFu)
        {
          if (v111 == v109 || (*v111 & 0xC0) != 0x80)
          {
LABEL_266:
            v242 = 4;
            goto LABEL_267;
          }

          v81 = 0;
          v111 = v110 + 2;
          v114 = 2;
        }

        else
        {
          if (v112 == 224)
          {
            if (v111 == v109)
            {
              goto LABEL_266;
            }

            if (v110[1] - 192 < 0xFFFFFFE0)
            {
              goto LABEL_275;
            }

            goto LABEL_117;
          }

          if (v112 <= 0xECu)
          {
            if (v111 == v109 || (v110[1] & 0xC0) != 0x80)
            {
              goto LABEL_266;
            }

LABEL_117:
            if (v110 + 2 == v109 || (v110[2] & 0xC0) != 0x80)
            {
              goto LABEL_266;
            }

            v81 = 0;
            v111 = v110 + 3;
            v114 = 3;
            a7 = v245;
            goto LABEL_98;
          }

          if (v112 == 237)
          {
            if (v111 == v109)
            {
              goto LABEL_266;
            }

            v115 = v110[1];
            if (v115 > 0x9F || (v115 & 0xC0) != 0x80)
            {
              v242 = 1;
LABEL_267:
              while (1)
              {
                LOBYTE(v251) = v242;
LABEL_149:
                swift_willThrowTypedImpl(&v251, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
                v120 = specialized Collection.subscript.getter(v108, v78, v79);
                v125 = findInvalidRange #1 (_:) in validateUTF8(_:)(v120, v121, v122, v123);
                *&v251 = 0;
                *(&v251 + 1) = 0xE000000000000000;
                if (!__OFADD__(v79, 15))
                {
                  break;
                }

                __break(1u);
LABEL_284:
                v242 = 2;
              }

              v126 = v124;
              v108 = &v251;
              _StringGuts.reserveCapacity(_:)(v79 + 15);
              v127 = v125;
              while (1)
              {
                v128 = specialized Collection.subscript.getter(v127, v78, v79);
                v132 = v251 & 0xFFFFFFFFFFFFLL;
                if ((*(&v251 + 1) & 0x2000000000000000) != 0)
                {
                  v132 = HIBYTE(*(&v251 + 1)) & 0xFLL;
                }

                v133 = __OFADD__(v132, v79);
                v134 = v132 + v79;
                if (v133)
                {
                  __break(1u);
LABEL_273:
                  __break(1u);
LABEL_274:
                  __break(1u);
                  goto LABEL_275;
                }

                v135 = v128;
                if (__OFADD__(v134, 3))
                {
                  goto LABEL_273;
                }

                v136 = v129;
                v137 = v130;
                v138 = v131;
                v139 = v78;
                _StringGuts.reserveCapacity(_:)(v134 + 3);
                v140 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v135, v136, v137, v138);
                v142 = v141;
                v108 = (*(&v251 + 1) & 0xFFFFFFFFFFFFFFFLL);
                v78 = (*(&v251 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32;
                specialized UnsafeMutablePointer.initialize(from:count:)(v140, v141, (v78 + (*((*(&v251 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL)));
                v143 = *(v108 + 3) & 0xFFFFFFFFFFFFLL;
                v144 = v143 + v142;
                if (__OFADD__(v143, v142))
                {
                  goto LABEL_274;
                }

                v145 = v144 | 0x3000000000000000;
                *(v108 + 3) = v144 | 0x3000000000000000;
                *(v78 + (v144 & 0xFFFFFFFFFFFFLL)) = 0;
                if ((v108[1] & 0x8000000000000000) != 0)
                {
                  v146 = __StringStorage._breadcrumbsAddress.getter();
                  v147 = *v146;
                  *v146 = 0;
                  v147;
                  v145 = *(v108 + 3);
                }

                *&v251 = v145;
                specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(0xFFFDu, &v251);
                v148 = specialized Collection.subscript.getter(v126, v139, v79);
                v78 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v148, v149, v150, v151);
                v79 = v152;
                if ((validateUTF8(_:)(v78, v152) & 0x8000000000000000) == 0)
                {
                  break;
                }

                v126 = v153;
                if (!v79)
                {
                  goto LABEL_219;
                }
              }

              _StringGuts.appendInPlace(_:isASCII:)(v78, v79, 0);
LABEL_219:
              v107 = *(&v251 + 1);
              v84 = v251;
              a7 = v245;
LABEL_262:
              (*(a7 + 24))(v84);
LABEL_263:
              v61 = v107;
LABEL_264:
              v61;
              return;
            }

            goto LABEL_127;
          }

          if (v112 <= 0xEFu)
          {
            if (v111 == v109 || (v110[1] & 0xC0) != 0x80)
            {
              goto LABEL_266;
            }

LABEL_127:
            if (v110 + 2 == v109 || (v110[2] & 0xC0) != 0x80)
            {
              goto LABEL_266;
            }

            v81 = 0;
            v111 = v110 + 3;
            v114 = 3;
            goto LABEL_98;
          }

          if (v112 == 240)
          {
            if (v111 == v109)
            {
              goto LABEL_266;
            }

            if (v110[1] - 192 < 0xFFFFFFD0)
            {
LABEL_275:
              v242 = 3;
              goto LABEL_267;
            }
          }

          else if (v112 <= 0xF3u)
          {
            if (v111 == v109 || (v110[1] & 0xC0) != 0x80)
            {
              goto LABEL_266;
            }
          }

          else
          {
            if (v111 == v109)
            {
              goto LABEL_266;
            }

            v116 = v110[1];
            if (v116 > 0x8F || (v116 & 0xC0) != 0x80)
            {
              goto LABEL_284;
            }
          }

          if (v110 + 2 == v109 || (v110[2] & 0xC0) != 0x80 || v110 + 3 == v109 || (v110[3] & 0xC0) != 0x80)
          {
            goto LABEL_266;
          }

          v81 = 0;
          v111 = v110 + 4;
          v114 = 4;
        }

LABEL_98:
        v108 = (v108 + v114);
        v110 = v111;
        if (v111 == v109)
        {
          goto LABEL_74;
        }
      }
    }

    v70 = v11;
    v71 = v12;
    (*(v13 + 16))(v15, v10, v12);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, _sypXpMR);
    if (swift_dynamicCast(&v251, v15, v71, v72, 6uLL, v73, v74, v75, v244))
    {
      printTypeName #1 <A, B>(_:) in _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v251, a3, v70 & 1, a6, a7);
      return;
    }

    v104 = swift_OpaqueSummary(v17);
    if (v104)
    {
      v105 = specialized String.init(validatingUTF8:)(v104);
      if (v106)
      {
        v107 = v106;
        (*(a7 + 24))(v105);
        goto LABEL_263;
      }
    }

    v117 = swift_getTypeName(v17, 1);
    if (v118 < 0)
    {
      goto LABEL_271;
    }

    v78 = v117;
    v79 = v118;
    if (_allASCII(_:)(v117, v118))
    {
      v81 = 1;
LABEL_145:
      if (!v79)
      {
        goto LABEL_217;
      }

      if (v79 > 15)
      {
        goto LABEL_147;
      }

      v220 = v79 - 8;
      v221 = 8;
      if (v79 < 8)
      {
        v221 = v79;
      }

      if (v79 >= 4)
      {
        v223 = v221 & 0xC;
        v119.i32[0] = *v78;
        v224 = vmovl_u16(*&vmovl_u8(v119));
        v225.i64[0] = v224.u32[0];
        v225.i64[1] = v224.u32[1];
        v226.i64[0] = 255;
        v226.i64[1] = 255;
        v227 = vandq_s8(v225, v226);
        v225.i64[0] = v224.u32[2];
        v225.i64[1] = v224.u32[3];
        v228 = vshlq_u64(vandq_s8(v225, v226), xmmword_18071DBA0);
        v229.i32[1] = 0;
        v230 = vshlq_u64(v227, xmmword_18071DBB0);
        if (v223 != 4)
        {
          v229.i32[0] = *(v78 + 4);
          v231 = vmovl_u16(*&vmovl_u8(v229));
          v232.i64[0] = v231.u32[2];
          v232.i64[1] = v231.u32[3];
          v233 = vandq_s8(v232, v226);
          v232.i64[0] = v231.u32[0];
          v232.i64[1] = v231.u32[1];
          v228 = vorrq_s8(vshlq_u64(v233, xmmword_18071DBD0), v228);
          v230 = vorrq_s8(vshlq_u64(vandq_s8(v232, v226), xmmword_18071DBC0), v230);
        }

        v234 = vorrq_s8(v230, v228);
        v84 = vorr_s8(*v234.i8, *&vextq_s8(v234, v234, 8uLL));
        if (v221 == v223)
        {
LABEL_254:
          if (v79 >= 9)
          {
            v183 = 0;
            v238 = 0;
            v239 = (v78 + 8);
            do
            {
              v240 = *v239++;
              v183 |= v240 << v238;
              v238 += 8;
              --v220;
            }

            while (v220);
            goto LABEL_259;
          }

          goto LABEL_258;
        }

        v222 = 8 * v223;
      }

      else
      {
        v84 = 0;
        v222 = 0;
        v223 = 0;
      }

      v235 = v221 - v223;
      v236 = (v78 + v223);
      do
      {
        v237 = *v236++;
        *&v84 |= v237 << (v222 & 0x38);
        v222 += 8;
        --v235;
      }

      while (v235);
      goto LABEL_254;
    }

    if (!v79)
    {
      goto LABEL_217;
    }

    v160 = 0;
    v161 = (v78 + v79);
    v81 = 1;
    v162 = v78;
    v163 = v78;
    while (1)
    {
      v165 = *v163++;
      v164 = v165;
      if ((v165 & 0x80000000) == 0)
      {
        v166 = 1;
        goto LABEL_174;
      }

      if ((v164 + 11) <= 0xCCu)
      {
        LOBYTE(v251) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v164);
        goto LABEL_231;
      }

      if (v164 <= 0xDFu)
      {
        if (v163 == v161 || (*v163 & 0xC0) != 0x80)
        {
LABEL_268:
          v243 = 4;
LABEL_269:
          while (1)
          {
            LOBYTE(v251) = v243;
LABEL_231:
            swift_willThrowTypedImpl(&v251, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
            v187 = specialized Collection.subscript.getter(v160, v78, v79);
            v192 = findInvalidRange #1 (_:) in validateUTF8(_:)(v187, v188, v189, v190);
            *&v251 = 0;
            *(&v251 + 1) = 0xE000000000000000;
            if (!__OFADD__(v79, 15))
            {
              break;
            }

            __break(1u);
LABEL_286:
            v243 = 2;
          }

          v193 = v191;
          _StringGuts.reserveCapacity(_:)(v79 + 15);
          v194 = v192;
          while (1)
          {
            v195 = specialized Collection.subscript.getter(v194, v78, v79);
            v199 = v251 & 0xFFFFFFFFFFFFLL;
            if ((*(&v251 + 1) & 0x2000000000000000) != 0)
            {
              v199 = HIBYTE(*(&v251 + 1)) & 0xFLL;
            }

            v133 = __OFADD__(v199, v79);
            v200 = v199 + v79;
            if (v133)
            {
              break;
            }

            v201 = v195;
            if (__OFADD__(v200, 3))
            {
              goto LABEL_277;
            }

            v202 = v196;
            v203 = v197;
            v204 = v198;
            _StringGuts.reserveCapacity(_:)(v200 + 3);
            v205 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v201, v202, v203, v204);
            v207 = v206;
            v208 = *(&v251 + 1) & 0xFFFFFFFFFFFFFFFLL;
            specialized UnsafeMutablePointer.initialize(from:count:)(v205, v206, ((*(&v251 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32 + (*((*(&v251 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL)));
            v209 = *(v208 + 24) & 0xFFFFFFFFFFFFLL;
            v210 = v209 + v207;
            if (__OFADD__(v209, v207))
            {
              goto LABEL_278;
            }

            v211 = v210 | 0x3000000000000000;
            *(v208 + 24) = v210 | 0x3000000000000000;
            *(v208 + 32 + (v210 & 0xFFFFFFFFFFFFLL)) = 0;
            a7 = v245;
            if ((*(v208 + 16) & 0x8000000000000000) != 0)
            {
              v212 = __StringStorage._breadcrumbsAddress.getter();
              v213 = *v212;
              *v212 = 0;
              v213;
              v211 = *(v208 + 24);
            }

            *&v251 = v211;
            specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(0xFFFDu, &v251);
            v214 = specialized Collection.subscript.getter(v193, v78, v79);
            v78 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v214, v215, v216, v217);
            v79 = v218;
            if ((validateUTF8(_:)(v78, v218) & 0x8000000000000000) == 0)
            {
              _StringGuts.appendInPlace(_:isASCII:)(v78, v79, 0);
              v107 = *(&v251 + 1);
              v84 = v251;
              goto LABEL_262;
            }

            v193 = v219;
            if (!v79)
            {
              v107 = *(&v251 + 1);
              v84 = v251;
              a7 = v245;
              goto LABEL_262;
            }
          }

          __break(1u);
LABEL_277:
          __break(1u);
LABEL_278:
          __break(1u);
LABEL_271:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v81 = 0;
        v163 = v162 + 2;
        v166 = 2;
      }

      else
      {
        if (v164 == 224)
        {
          if (v163 == v161)
          {
            goto LABEL_268;
          }

          if (v162[1] - 192 < 0xFFFFFFE0)
          {
            goto LABEL_280;
          }

          goto LABEL_202;
        }

        if (v164 <= 0xECu)
        {
          goto LABEL_200;
        }

        if (v164 == 237)
        {
          if (v163 == v161)
          {
            goto LABEL_268;
          }

          v167 = v162[1];
          if (v167 > 0x9F || (v167 & 0xC0) != 0x80)
          {
            v243 = 1;
            goto LABEL_269;
          }

          goto LABEL_202;
        }

        if (v164 <= 0xEFu)
        {
LABEL_200:
          if (v163 == v161 || (v162[1] & 0xC0) != 0x80)
          {
            goto LABEL_268;
          }

LABEL_202:
          if (v162 + 2 == v161 || (v162[2] & 0xC0) != 0x80)
          {
            goto LABEL_268;
          }

          v81 = 0;
          v163 = v162 + 3;
          v166 = 3;
          goto LABEL_174;
        }

        if (v164 == 240)
        {
          if (v163 == v161)
          {
            goto LABEL_268;
          }

          if (v162[1] - 192 < 0xFFFFFFD0)
          {
LABEL_280:
            v243 = 3;
            goto LABEL_269;
          }

          if (v162 + 2 == v161 || (v162[2] & 0xC0) != 0x80 || v162 + 3 == v161 || (v162[3] & 0xC0) != 0x80)
          {
            goto LABEL_268;
          }

          v81 = 0;
          v163 = v162 + 4;
          v166 = 4;
        }

        else
        {
          if (v164 <= 0xF3u)
          {
            if (v163 == v161 || (v162[1] & 0xC0) != 0x80)
            {
              goto LABEL_268;
            }
          }

          else
          {
            if (v163 == v161)
            {
              goto LABEL_268;
            }

            v168 = v162[1];
            if (v168 > 0x8F || (v168 & 0xC0) != 0x80)
            {
              goto LABEL_286;
            }
          }

          if (v162 + 2 == v161 || (v162[2] & 0xC0) != 0x80 || v162 + 3 == v161 || (v162[3] & 0xC0) != 0x80)
          {
            goto LABEL_268;
          }

          v81 = 0;
          v163 = v162 + 4;
          v166 = 4;
          a7 = v245;
        }
      }

LABEL_174:
      v160 += v166;
      v162 = v163;
      if (v163 == v161)
      {
        goto LABEL_145;
      }
    }
  }

  if (!v19)
  {
    printTypeName #1 <A, B>(_:) in _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v17, a3, v11 & 1, a6, a7);
    v62 = *(a7 + 24);
    v62(40, 0xE100000000000000, a6, a7);
    0xE100000000000000;
    v63 = (*(*v18 + 96))();
    v64 = *(*v63 + 96);
    v64(&v248);
    v252 = v249;
    v253 = v250;
    v251 = v248;
    if (*(&v250 + 1))
    {
      v65 = 1;
      do
      {
        v69 = v251;
        outlined init with take of Any(&v252, &v248);
        if (*(&v69 + 1))
        {
          if ((v65 & 1) == 0)
          {
            v62(8236, 0xE200000000000000, v246, v245);
            0xE200000000000000;
          }

          v66 = v246;
          v67 = v247;
          a7 = v245;
          v62(v69, *(&v69 + 1), v246, v245);
          *(&v69 + 1);
          v62(8250, 0xE200000000000000, v66, a7);
          0xE200000000000000;
          _debugPrint_unlocked<A, B>(_:_:)(&v248, v67, qword_1EEEAC6F8, v66, a7);
          v65 = 0;
        }

        else
        {
          a7 = v245;
        }

        v68 = __swift_destroy_boxed_opaque_existential_1Tm(&v248);
        (v64)(&v248, v68);
        v252 = v249;
        v253 = v250;
        v251 = v248;
      }

      while (*(&v250 + 1));
    }

    v63;
    v62(41, 0xE100000000000000, v246, a7);
    v61 = 0xE100000000000000;
    goto LABEL_264;
  }

  if (v19 != 2)
  {
    if (v19 == 3)
    {
      v23 = *(a7 + 24);
      v23(40, 0xE100000000000000, a6, a7);
      0xE100000000000000;
      v24 = (*(*v18 + 96))();
      v25 = *(*v24 + 96);
      v25(&v248);
      v252 = v249;
      v253 = v250;
      v251 = v248;
      if (!*(&v250 + 1))
      {
LABEL_87:
        v24;
        v23(41, 0xE100000000000000, v246, a7);
        v61 = 0xE100000000000000;
        goto LABEL_264;
      }

      v26 = 1;
      while (1)
      {
        v27 = *(&v251 + 1);
        v29 = v251;
        outlined init with take of Any(&v252, &v248);
        if ((v26 & 1) == 0)
        {
          v23(8236, 0xE200000000000000, v246, a7);
          0xE200000000000000;
        }

        if (!v27)
        {
          goto LABEL_9;
        }

        v30 = HIBYTE(v27) & 0xF;
        v31 = v29 & 0xFFFFFFFFFFFFLL;
        if ((v27 & 0x2000000000000000) != 0)
        {
          v32 = HIBYTE(v27) & 0xF;
        }

        else
        {
          v32 = v29 & 0xFFFFFFFFFFFFLL;
        }

        if (!v32)
        {
          goto LABEL_8;
        }

        if ((v27 & 0x1000000000000000) != 0)
        {
          v52 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(0);
          v53 = _StringGuts.foreignErrorCorrectedGrapheme(startingAt:endingAt:)(0, v52);
          object = v53._object;
          countAndFlagsBits = v53._countAndFlagsBits;
          goto LABEL_39;
        }

        if ((v27 & 0x2000000000000000) == 0)
        {
          break;
        }

        if (v30 == 1)
        {
          *&v254[0] = v29;
          *(&v254[0] + 1) = v27 & 0xFFFFFFFFFFFFFFLL;
          v45 = 1;
        }

        else
        {
          if (v29 == 2573 || (v29 & 0x8080) != 0)
          {
            v54 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(0);
            if (v54 < 0)
            {
              goto LABEL_270;
            }

            v45 = v54;
          }

          else
          {
            v45 = 1;
          }

          *&v254[0] = v29;
          *(&v254[0] + 1) = v27 & 0xFFFFFFFFFFFFFFLL;
          if (v30 < v45)
          {
            goto LABEL_271;
          }
        }

        v46 = _allASCII(_:)(v254, v45);
        v43 = v254;
        v41 = v46;
        v44 = v45;
LABEL_38:
        countAndFlagsBits = specialized static String._uncheckedFromUTF8(_:isASCII:)(v43, v44, v41, v42);
LABEL_39:
        v49 = object;
        if (countAndFlagsBits == 46 && object == 0xE100000000000000)
        {
          v27;
          0xE100000000000000;
          v27 = 0xE100000000000000;
        }

        else
        {
          if ((~object & 0x6000000000000000) == 0)
          {
            object;
            0xE100000000000000;
LABEL_45:
            v51 = v246;
            a7 = v245;
            v23(v29, v27, v246, v245);
            v27;
            v27 = 0xE200000000000000;
            v23(8250, 0xE200000000000000, v51, a7);
            goto LABEL_8;
          }

          v50 = _stringCompareInternal(_:_:expecting:)(countAndFlagsBits, object, 46, 0xE100000000000000, 0);
          v49;
          0xE100000000000000;
          if ((v50 & 1) == 0)
          {
            goto LABEL_45;
          }

          a7 = v245;
        }

LABEL_8:
        v27;
LABEL_9:
        _debugPrint_unlocked<A, B>(_:_:)(&v248, v247, qword_1EEEAC6F8, v246, a7);
        v28 = __swift_destroy_boxed_opaque_existential_1Tm(&v248);
        (v25)(&v248, v28);
        v26 = 0;
        v252 = v249;
        v253 = v250;
        v251 = v248;
        if (!*(&v250 + 1))
        {
          goto LABEL_87;
        }
      }

      if ((v29 & 0x1000000000000000) != 0)
      {
        v33 = ((v27 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v34 = v29 & 0xFFFFFFFFFFFFLL;
        if (v31 != 1)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v33 = _StringObject.sharedUTF8.getter(v29, v27);
        v31 = v29 & 0xFFFFFFFFFFFFLL;
        if (v34 != 1)
        {
LABEL_21:
          if (!v33)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v35 = *v33;
          if (v35 != 2573 && (v35 & 0x80808080) == 0)
          {
            v34 = 1;
          }

          else
          {
            v57 = v31;
            v58 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(0);
            if (v58 < 0)
            {
LABEL_270:
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v34 = v58;
            v31 = v57;
          }
        }
      }

      if ((v29 & 0x1000000000000000) != 0)
      {
        v37 = ((v27 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if (v31 < v34)
        {
          goto LABEL_271;
        }
      }

      else
      {
        v55 = v34;
        v37 = _StringObject.sharedUTF8.getter(v29, v27);
        v31 = v56;
        v34 = v55;
        if (v31 < v55)
        {
          goto LABEL_271;
        }
      }

      v38 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v34, v37, v31);
      v40 = v39;
      v41 = _allASCII(_:)(v38, v39);
      v43 = v38;
      v44 = v40;
      a7 = v245;
      goto LABEL_38;
    }

    goto LABEL_71;
  }

  v87 = v11;
  v88 = v10;
  v89 = v12;
  v90 = swift_EnumCaseName(v10, v12);
  if (v90 && (v91 = specialized String.init(validatingUTF8:)(v90), v92))
  {
    v93 = v92;
    if (v87)
    {
      v94 = v91;
      v95 = v245;
      printTypeName #1 <A, B>(_:) in _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v17, v247, 1, a6, v245);
      v96 = *(v95 + 24);
      v96(46, 0xE100000000000000, a6, v95);
      0xE100000000000000;
      v91 = v94;
      a3 = v247;
    }

    else
    {
      v95 = v245;
      v96 = *(v245 + 24);
    }

    v96(v91, v93, a6, v95);
    v103 = v93;
  }

  else
  {
    printTypeName #1 <A, B>(_:) in _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v17, a3, v87 & 1, a6, v245);
    v97 = _fallbackEnumRawValue<A>(_:)(v88, v89);
    if (v98)
    {
      goto LABEL_164;
    }

    v99 = v97;
    v100 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("(rawValue: ", 0xBuLL, 1);
    v101 = v245;
    v102 = *(v245 + 24);
    v102(v100._countAndFlagsBits);
    v100._object;
    *&v251 = v99;
    _debugPrint_unlocked<A, B>(_:_:)(&v251, v247, &type metadata for Int64, a6, v101);
    (v102)(41, 0xE100000000000000, a6, v101);
    a3 = v247;
    v103 = 0xE100000000000000;
  }

  v103;
LABEL_164:
  v154 = v18[2];
  v155 = v18[3];
  if ((specialized static AnyIndex.== infix(_:_:)(v154, v155, v18[4], v18[5]) & 1) == 0)
  {
    (*(*v18 + 256))(&v248, v154, v155);
    v251 = v248;
    outlined init with take of Any(&v249, &v252);
    *(&v251 + 1);
    outlined init with take of Any(&v252, v254);
    outlined init with copy of Any(v254, &v248);
    Mirror.init(reflecting:)(&v248, &v251);
    v156 = *(&v251 + 1);
    v157 = v252;
    v253;
    v156;
    if (v157 == 9)
    {
      v158 = v245;
    }

    else
    {
      v158 = v245;
      if (v157 == 3)
      {
        _debugPrint_unlocked<A, B>(_:_:)(v254, a3, qword_1EEEAC6F8, a6, v245);
        __swift_destroy_boxed_opaque_existential_1Tm(v254);
        return;
      }
    }

    v159 = *(v158 + 24);
    v159(40, 0xE100000000000000, a6, v158);
    0xE100000000000000;
    _debugPrint_unlocked<A, B>(_:_:)(v254, a3, qword_1EEEAC6F8, a6, v158);
    __swift_destroy_boxed_opaque_existential_1Tm(v254);
    v159(41, 0xE100000000000000, a6, v158);
    v61 = 0xE100000000000000;
    goto LABEL_264;
  }
}

void printTypeName #1 <A, B>(_:) in _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(Class *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  TypeName = swift_getTypeName(a1, a3);
  if (v8 < 0)
  {
    goto LABEL_183;
  }

  v9 = TypeName;
  v10 = v8;
  if (_allASCII(_:)(TypeName, v8))
  {
    v12 = 1;
LABEL_4:
    if (v10)
    {
      if (v10 > 15)
      {
        v13 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v9, v10, v10, v12 & 1);
        v14 = *(v13 + 24);
        goto LABEL_173;
      }

      v75 = v10 - 8;
      v76 = 8;
      if (v10 < 8)
      {
        v76 = v10;
      }

      if (v10 >= 4)
      {
        v78 = v76 & 0xC;
        v11.i32[0] = *v9;
        v79 = vmovl_u16(*&vmovl_u8(v11));
        v80.i64[0] = v79.u32[0];
        v80.i64[1] = v79.u32[1];
        v81.i64[0] = 255;
        v81.i64[1] = 255;
        v82 = vandq_s8(v80, v81);
        v80.i64[0] = v79.u32[2];
        v80.i64[1] = v79.u32[3];
        v83 = vshlq_u64(vandq_s8(v80, v81), xmmword_18071DBA0);
        v84.i32[1] = 0;
        v85 = vshlq_u64(v82, xmmword_18071DBB0);
        if (v78 != 4)
        {
          v84.i32[0] = *(v9 + 4);
          v86 = vmovl_u16(*&vmovl_u8(v84));
          v87.i64[0] = v86.u32[2];
          v87.i64[1] = v86.u32[3];
          v88 = vandq_s8(v87, v81);
          v87.i64[0] = v86.u32[0];
          v87.i64[1] = v86.u32[1];
          v83 = vorrq_s8(vshlq_u64(v88, xmmword_18071DBD0), v83);
          v85 = vorrq_s8(vshlq_u64(vandq_s8(v87, v81), xmmword_18071DBC0), v85);
        }

        v89 = vorrq_s8(v85, v83);
        v14 = vorr_s8(*v89.i8, *&vextq_s8(v89, v89, 8uLL));
        if (v76 == v78)
        {
          goto LABEL_165;
        }

        v77 = 8 * v78;
      }

      else
      {
        v14 = 0;
        v77 = 0;
        v78 = 0;
      }

      v90 = v76 - v78;
      v91 = (v9 + v78);
      do
      {
        v92 = *v91++;
        *&v14 |= v92 << (v77 & 0x38);
        v77 += 8;
        --v90;
      }

      while (v90);
LABEL_165:
      if (v10 < 9)
      {
        v93 = 0;
      }

      else
      {
        v93 = 0;
        v94 = 0;
        v95 = (v9 + 8);
        do
        {
          v96 = *v95++;
          v93 |= v96 << v94;
          v94 += 8;
          --v75;
        }

        while (v75);
      }

      v97 = 0xA000000000000000;
      if (((v93 | *&v14) & 0x8080808080808080) == 0)
      {
        v97 = 0xE000000000000000;
      }

      v13 = v97 | (v10 << 56) | v93;
      goto LABEL_173;
    }

LABEL_54:
    v14 = 0;
    v13 = 0xE000000000000000;
    goto LABEL_173;
  }

  if (!v10)
  {
    goto LABEL_54;
  }

  v15 = (v9 + v10);
  v12 = 1;
  v16 = v9;
  v17 = 0;
  v18 = v9;
  while (1)
  {
    v20 = *v18++;
    v19 = v20;
    if ((v20 & 0x80000000) == 0)
    {
      v21 = 1;
      goto LABEL_11;
    }

    if ((v19 + 11) <= 0xCCu)
    {
      LOBYTE(v101) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v19);
      goto LABEL_56;
    }

    if (v19 <= 0xDFu)
    {
      break;
    }

    if (v19 == 224)
    {
      if (v18 == v15)
      {
        goto LABEL_174;
      }

      if (v16[1] - 192 < 0xFFFFFFE0)
      {
        goto LABEL_176;
      }

      goto LABEL_39;
    }

    if (v19 <= 0xECu)
    {
      goto LABEL_37;
    }

    if (v19 == 237)
    {
      if (v18 == v15)
      {
        goto LABEL_174;
      }

      v22 = v16[1];
      if (v22 > 0x9F || (v22 & 0xC0) != 0x80)
      {
        v98 = 1;
        goto LABEL_175;
      }

LABEL_39:
      if (v16 + 2 == v15 || (v16[2] & 0xC0) != 0x80)
      {
        goto LABEL_174;
      }

      v12 = 0;
      v18 = v16 + 3;
      v21 = 3;
      goto LABEL_11;
    }

    if (v19 <= 0xEFu)
    {
LABEL_37:
      if (v18 == v15 || (v16[1] & 0xC0) != 0x80)
      {
        goto LABEL_174;
      }

      goto LABEL_39;
    }

    if (v19 == 240)
    {
      if (v18 == v15)
      {
        goto LABEL_174;
      }

      if (v16[1] - 192 < 0xFFFFFFD0)
      {
LABEL_176:
        v98 = 3;
        goto LABEL_175;
      }

      if (v16 + 2 == v15 || (v16[2] & 0xC0) != 0x80 || v16 + 3 == v15 || (v16[3] & 0xC0) != 0x80)
      {
        goto LABEL_174;
      }

      v12 = 0;
      v18 = v16 + 4;
      v21 = 4;
    }

    else
    {
      if (v19 <= 0xF3u)
      {
        if (v18 == v15 || (v16[1] & 0xC0) != 0x80)
        {
          goto LABEL_174;
        }
      }

      else
      {
        if (v18 == v15)
        {
          goto LABEL_174;
        }

        v23 = v16[1];
        if (v23 > 0x8F || (v23 & 0xC0) != 0x80)
        {
          goto LABEL_190;
        }
      }

      if (v16 + 2 == v15 || (v16[2] & 0xC0) != 0x80 || v16 + 3 == v15 || (v16[3] & 0xC0) != 0x80)
      {
        goto LABEL_174;
      }

      v12 = 0;
      v18 = v16 + 4;
      v21 = 4;
    }

LABEL_11:
    v17 += v21;
    v16 = v18;
    if (v18 == v15)
    {
      goto LABEL_4;
    }
  }

  if (v18 != v15 && (*v18 & 0xC0) == 0x80)
  {
    v12 = 0;
    v18 = v16 + 2;
    v21 = 2;
    goto LABEL_11;
  }

LABEL_174:
  v98 = 4;
LABEL_175:
  while (2)
  {
    LOBYTE(v101) = v98;
LABEL_56:
    swift_willThrowTypedImpl(&v101, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
    v24 = specialized Collection.subscript.getter(v17, v9, v10);
    v17 = v24;
    v28 = v25;
    v29 = v26;
    v30 = v27;
    v31 = v24;
    if (v24 != v25)
    {
      specialized Slice.subscript.getter(v24, v24, v25, v26, v27);
      v31 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_183;
      }
    }

    v99 = a4;
    a4 = v17;
    if (v31 != v28)
    {
      v32 = specialized Slice.subscript.getter(v31, v17, v28, v29, v30);
      v33 = __OFADD__(v31, 1);
      v34 = v31 + 1;
      if (v33)
      {
        goto LABEL_183;
      }

      a4 = v17;
      if ((v32 & 0xC0) == 0x80)
      {
        a4 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_191;
        }

        if (v17 + 1 <= v17)
        {
          goto LABEL_183;
        }

        if (v34 != v28)
        {
          v35 = specialized Slice.subscript.getter(v34, v17, v28, v29, v30);
          v33 = __OFADD__(v34, 1);
          v36 = v34 + 1;
          if (v33)
          {
            goto LABEL_183;
          }

          if ((v35 & 0xC0) == 0x80)
          {
            v33 = __OFADD__(a4, 1);
            a4 = v17 + 2;
            if (v33)
            {
              goto LABEL_191;
            }

            if (v17 + 2 <= v17)
            {
              goto LABEL_183;
            }

            if (v36 != v28)
            {
              v37 = specialized Slice.subscript.getter(v36, v17, v28, v29, v30);
              if (v36 == 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_183;
              }

              if ((v37 & 0xC0) == 0x80)
              {
                v33 = __OFADD__(a4, 1);
                a4 = v17 + 3;
                if (!v33)
                {
                  if (v17 + 3 <= v17)
                  {
                    goto LABEL_183;
                  }

                  goto LABEL_73;
                }

LABEL_191:
                __break(1u);
LABEL_183:
                _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
              }
            }
          }
        }
      }

LABEL_73:
      if (a4 < v17)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    v38 = a4 + 1;
    if (__OFADD__(a4, 1))
    {
      __break(1u);
      goto LABEL_183;
    }

    if (v28 < v38)
    {
      goto LABEL_183;
    }

    v39 = _legacyNarrowIllegalRange #1 (buf:) in validateUTF8(_:)(v17, v38, v29, v30);
    v101 = 0;
    v102 = 0xE000000000000000;
    v41 = v10 + 15;
    if (__OFADD__(v10, 15))
    {
      __break(1u);
LABEL_190:
      v98 = 2;
      continue;
    }

    break;
  }

  v42 = v39;
  v43 = v40;
  if (v41 >= 16)
  {
    v44 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v45 & 1) != 0 || v44 < v41)
    {
      _StringGuts.grow(_:)(v10 + 15);
    }
  }

LABEL_81:
  if (v42 < 0)
  {
LABEL_177:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v46 = v10;
  if (v10 < v42)
  {
    goto LABEL_183;
  }

  v47 = v101 & 0xFFFFFFFFFFFFLL;
  if ((v102 & 0x2000000000000000) != 0)
  {
    v47 = HIBYTE(v102) & 0xF;
  }

  v33 = __OFADD__(v47, v10);
  v48 = v47 + v10;
  if (v33)
  {
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  v49 = v48 + 3;
  if (__OFADD__(v48, 3))
  {
    goto LABEL_181;
  }

  if (v49 >= 16 && ((v50 = _StringGuts.uniqueNativeCapacity.getter(), (v51 & 1) != 0) || v50 < v49))
  {
    _StringGuts.grow(_:)(v49);
    if (v42)
    {
      goto LABEL_91;
    }
  }

  else if (v42)
  {
LABEL_91:
    if (!v9)
    {
      goto LABEL_183;
    }
  }

  v13 = v102;
  v52 = v102 & 0xFFFFFFFFFFFFFFFLL;
  v53 = (v102 & 0xFFFFFFFFFFFFFFFLL) + 32;
  specialized UnsafeMutablePointer.initialize(from:count:)(v9, v42, (v53 + (*((v102 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL)));
  v54 = *(v52 + 24) & 0xFFFFFFFFFFFFLL;
  v55 = v54 + v42;
  if (__OFADD__(v54, v42))
  {
    goto LABEL_182;
  }

  v56 = v55 | 0x3000000000000000;
  *(v52 + 24) = v55 | 0x3000000000000000;
  *(v53 + (v55 & 0xFFFFFFFFFFFFLL)) = 0;
  v57 = *(v52 + 16);
  if (v57 < 0)
  {
    v58 = ((v53 + (v57 & 0xFFFFFFFFFFFFLL) + 7) & 0x7FFFFFFFFFFFFFF8);
    v59 = *v58;
    *v58 = 0;
    v59;
    v56 = *(v52 + 24);
  }

  v101 = v56;
  specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(0xFFFDu, &v101);
  if (v46 < v43)
  {
    goto LABEL_177;
  }

  if (v43 < 0)
  {
    goto LABEL_183;
  }

  v10 = v46 - v43;
  if (v46 - v43 < 0 || v10 && !v9)
  {
    goto LABEL_183;
  }

  v60 = (v9 + v43);
  if (!_allASCII(_:)((v9 + v43), v46 - v43) && v46 != v43)
  {
    v61 = 0;
    v62 = (v9 + v46);
    v63 = v60;
    v64 = v60;
    do
    {
      v66 = *v64++;
      v65 = v66;
      if ((v66 & 0x80000000) == 0)
      {
        v67 = 1;
        goto LABEL_105;
      }

      if ((v65 + 11) <= 0xCCu)
      {
        v100[0] = _diagnoseInvalidUTF8MultiByteLeading(_:)(v65);
        goto LABEL_145;
      }

      if (v65 <= 0xDFu)
      {
        if (v64 == v62 || (*v64 & 0xC0) != 0x80)
        {
LABEL_149:
          v100[0] = 4;
          goto LABEL_145;
        }

        v64 = v63 + 2;
        v67 = 2;
      }

      else
      {
        if (v65 == 224)
        {
          if (v64 == v62)
          {
            goto LABEL_149;
          }

          if (v63[1] - 192 < 0xFFFFFFE0)
          {
            goto LABEL_150;
          }

          goto LABEL_129;
        }

        if (v65 <= 0xECu)
        {
          goto LABEL_127;
        }

        if (v65 == 237)
        {
          if (v64 == v62)
          {
            goto LABEL_149;
          }

          v68 = v63[1];
          if (v68 > 0x9F || (v68 & 0xC0) != 0x80)
          {
            v100[0] = 1;
            goto LABEL_145;
          }

          goto LABEL_129;
        }

        if (v65 <= 0xEFu)
        {
LABEL_127:
          if (v64 == v62 || (v63[1] & 0xC0) != 0x80)
          {
            goto LABEL_149;
          }

LABEL_129:
          if (v63 + 2 == v62 || (v63[2] & 0xC0) != 0x80)
          {
            goto LABEL_149;
          }

          v64 = v63 + 3;
          v67 = 3;
          goto LABEL_105;
        }

        if (v65 == 240)
        {
          if (v64 == v62)
          {
            goto LABEL_149;
          }

          if (v63[1] - 192 < 0xFFFFFFD0)
          {
LABEL_150:
            v100[0] = 3;
            goto LABEL_145;
          }
        }

        else if (v65 <= 0xF3u)
        {
          if (v64 == v62 || (v63[1] & 0xC0) != 0x80)
          {
            goto LABEL_149;
          }
        }

        else
        {
          if (v64 == v62)
          {
            goto LABEL_149;
          }

          v69 = v63[1];
          if (v69 > 0x8F || (v69 & 0xC0) != 0x80)
          {
            v100[0] = 2;
LABEL_145:
            swift_willThrowTypedImpl(v100, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
            v70 = specialized Collection.subscript.getter(v61, v60, v10);
            v42 = findInvalidRange #1 (_:) in validateUTF8(_:)(v70, v71, v72, v73);
            v43 = v74;
            v9 = v60;
            if (!v10)
            {
              v14 = v101;
              v13 = v102;
              goto LABEL_154;
            }

            goto LABEL_81;
          }
        }

        if (v63 + 2 == v62 || (v63[2] & 0xC0) != 0x80 || v63 + 3 == v62 || (v63[3] & 0xC0) != 0x80)
        {
          goto LABEL_149;
        }

        v64 = v63 + 4;
        v67 = 4;
      }

LABEL_105:
      v61 += v67;
      v63 = v64;
    }

    while (v64 != v62);
  }

  __StringStorage.appendInPlace(_:isASCII:)(v60, v10, 0);
  v14 = *(v52 + 24);
LABEL_154:
  a4 = v99;
LABEL_173:
  (*(a5 + 24))(v14, v13, a4, a5);
  v13;
}

uint64_t String.subscript.getter(Swift::String::Index a1, uint64_t a2, unint64_t a3)
{
  v5._rawBits = _StringGuts.validateScalarIndex(_:)(a1)._rawBits;
  v6 = (v5._rawBits >> 8) & 0x3F;
  v7 = v5._rawBits >> 16;
  if (v6)
  {
LABEL_24:
    v10 = v6 + v7;
    if ((a3 & 0x1000000000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_38;
  }

  v8 = a2 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v9 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5._rawBits >> 14 == 4 * v9)
  {
    v6 = 0;
    v10 = v5._rawBits >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_38;
    }

LABEL_25:
    if (v10 < v7)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if ((a3 & 0x2000000000000000) != 0)
    {
      v29 = a2;
      v30 = a3 & 0xFFFFFFFFFFFFFFLL;
      if ((HIBYTE(a3) & 0xF) >= v10 && (v6 & 0x8000000000000000) == 0)
      {
        v24 = _allASCII(_:)((&v29 + v7), v6);
        v22 = &v29 + v7;
        v20 = v24;
        v23 = v6;
        return specialized static String._uncheckedFromUTF8(_:isASCII:)(v22, v23, v20, v21);
      }
    }

    else if ((a2 & 0x1000000000000000) != 0)
    {
      v15 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v16 = a2 & 0xFFFFFFFFFFFFLL;
      if ((a2 & 0xFFFFFFFFFFFFLL) >= v10)
      {
LABEL_29:
        v17 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v7, v10, v15, v16);
        v19 = v18;
        v20 = _allASCII(_:)(v17, v18);
        v22 = v17;
        v23 = v19;
        return specialized static String._uncheckedFromUTF8(_:isASCII:)(v22, v23, v20, v21);
      }
    }

    else
    {
      v26 = a2;
      v27 = v10;
      v15 = _StringObject.sharedUTF8.getter(v26, a3);
      v16 = v28;
      v10 = v27;
      if (v16 >= v27)
      {
        goto LABEL_29;
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v29 = a2;
    v30 = a3 & 0xFFFFFFFFFFFFFFLL;
    if (v7 + 1 != (HIBYTE(a3) & 0xF))
    {
      v13 = *(&v29 + v7);
      if (v13 == 2573 || (v13 & 0x80808080) != 0)
      {
        goto LABEL_37;
      }
    }

    goto LABEL_23;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v11 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter(a2, a3);
  }

  if (v7 + 1 == v8)
  {
    goto LABEL_23;
  }

  if (!v11)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = *&v11[v7];
  if (v12 != 2573 && (v12 & 0x80808080) == 0)
  {
LABEL_23:
    v6 = 1;
    goto LABEL_24;
  }

LABEL_37:
  v6 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v7);
  v10 = v6 + v7;
  if ((a3 & 0x1000000000000000) == 0)
  {
    goto LABEL_25;
  }

LABEL_38:

  return _StringGuts.foreignErrorCorrectedGrapheme(startingAt:endingAt:)(v7, v10)._countAndFlagsBits;
}

Swift::Void __swiftcall _Stdout.write(_:)(Swift::String a1)
{
  v1 = HIBYTE(a1._object) & 0xF;
  if ((a1._object & 0x2000000000000000) == 0)
  {
    v1 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v1)
  {
    object = a1._object;
    countAndFlagsBits = a1._countAndFlagsBits;
    a1._object;
    if ((object & 0x1000000000000000) != 0)
    {
      countAndFlagsBits = specialized static String._copying(_:)(countAndFlagsBits, object);
      v7 = v6;
      object;
      object = v7;
      if ((v7 & 0x2000000000000000) == 0)
      {
        goto LABEL_6;
      }
    }

    else if ((object & 0x2000000000000000) == 0)
    {
LABEL_6:
      if ((countAndFlagsBits & 0x1000000000000000) != 0)
      {
        v4 = ((object & 0xFFFFFFFFFFFFFFFLL) + 32);
        v5 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v4 = _StringObject.sharedUTF8.getter(countAndFlagsBits, object);
        if (!v4)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v5 = v8;
      }

      _swift_stdlib_fwrite_stdout(v4, 1uLL, v5);

      object;
      return;
    }

    v9[0] = countAndFlagsBits;
    v9[1] = object & 0xFFFFFFFFFFFFFFLL;
    _swift_stdlib_fwrite_stdout(v9, 1uLL, HIBYTE(object) & 0xF);
    object;
  }
}

void protocol witness for TextOutputStream._writeASCII(_:) in conformance _Stdout(uint64_t a1, uint64_t a2, uint8x8_t a3)
{
  v3._countAndFlagsBits = specialized static String._uncheckedFromASCII(_:)(a1, a2, a3);
  object = v3._object;
  _Stdout.write(_:)(v3);

  object;
}

unint64_t _StringGuts.init(_:isASCII:)(uint64_t a1, unint64_t a2, char a3)
{
  v3 = a2 | 0xC000000000000000;
  if ((a3 & 1) == 0)
  {
    v3 = a2;
  }

  return v3 | 0x1000000000000000;
}

void _StringGuts.append(_:)(unint64_t a1, unint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, int8x16_t a10)
{
  v11 = v10[1];
  if ((v11 & 0x2000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = HIBYTE(a2) & 0xF;
      goto LABEL_6;
    }

LABEL_5:
    v12 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_6;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v13 = a1;
  v14 = a2;
  v15 = specialized _SmallString.init(_:appending:)(*v10, v10[1], a1, a2);
  if ((v17 & 1) == 0)
  {
    v18 = v15;
    v19 = v16;
    v11;
    *v10 = v18;
    v10[1] = v19;
    return;
  }

  a2 = v14;
  v12 = HIBYTE(v14) & 0xF;
  a1 = v13;
LABEL_6:

  _StringGuts.append(_:)(a1, a2, 0, v12, a3, a4, a5, a6, a7, a8, a9, a10);
}

void Unicode.Scalar.write<A>(to:)(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(a2);
  v7 = v6;
  (*(a4 + 24))(v5);

  v7;
}

uint64_t _playgroundPrintHook.getter()
{
  v0 = _playgroundPrintHook;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed String) -> ())?(_playgroundPrintHook, qword_1EA79EC28);
  return v0;
}

uint64_t _playgroundPrintHook.setter(uint64_t a1, uint64_t a2)
{
  v2 = _playgroundPrintHook;
  v3 = qword_1EA79EC28;
  _playgroundPrintHook = a1;
  qword_1EA79EC28 = a2;
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed String) -> ())?(v2, v3);
}

Swift::Void __swiftcall _TeeStream.write(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  (*(*(v1 + 32) + 24))(a1._countAndFlagsBits, a1._object, *(v1 + 16));
  (*(*(v2 + 40) + 24))(countAndFlagsBits, object, *(v2 + 24));
}

Swift::Void __swiftcall _TeeStream._lock()()
{
  v1 = v0;
  (*(*(v0 + 32) + 8))(*(v0 + 16));
  (*(*(v1 + 40) + 8))(*(v1 + 24));
}

Swift::Void __swiftcall _TeeStream._unlock()()
{
  v1 = v0;
  (*(*(v0 + 40) + 16))(*(v0 + 24));
  v2 = *(*(v1 + 32) + 16);
  v3 = *(v1 + 16);

  v2(v3);
}

uint64_t _Pointer.successor()(Class *a1, uint64_t a2)
{
  v4 = (*(a2 + 48))();
  swift_getAssociatedTypeWitness(0, a2, a1, &protocol requirements base descriptor for _Pointer, associated type descriptor for _Pointer.Pointee);
  return (*(a2 + 56))(v4 + *(*(v5 - 8) + 72), a1, a2);
}

uint64_t _Pointer.predecessor()(Class *a1, uint64_t a2)
{
  v4 = (*(a2 + 48))();
  swift_getAssociatedTypeWitness(0, a2, a1, &protocol requirements base descriptor for _Pointer, associated type descriptor for _Pointer.Pointee);
  return (*(a2 + 56))(v4 - *(*(v5 - 8) + 72), a1, a2);
}

uint64_t static Strideable<>.-= infix(_:_:)(const void *a1, uint64_t a2, Class *a3, uint64_t a4)
{
  v7 = *(a4 + 32);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v9 = v8;
  v10 = *(v8 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v19 - v13;
  MEMORY[0x1EEE9AC00](v12, v15);
  memcpy(&v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v16);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, a3, v9, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric);
  (*(AssociatedConformanceWitness + 16))(a2, v9, AssociatedConformanceWitness);
  (*(v7 + 48))(v14, a3, v7);
  return (*(v10 + 8))(v14, v9);
}

void *_convertConstArrayToPointerArgument<A, B>(_:)(uint64_t a1, int64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  a2;
  if (!_swift_isClassOrObjCExistentialType(a3, a3) || (a2 & 0x8000000000000000) == 0 && (a2 & 0x4000000000000000) == 0)
  {
    a2;
    if (_swift_isClassOrObjCExistentialType(a3, a3))
    {
      v9 = ((*(*(a3 - 1) + 80) + 32) & ~*(*(a3 - 1) + 80)) + (a2 & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      v9 = a2 + ((*(*(a3 - 1) + 80) + 32) & ~*(*(a3 - 1) + 80));
    }

LABEL_7:
    if (_swift_isClassOrObjCExistentialType(a3, a3) && (a2 < 0 || (a2 & 0x4000000000000000) != 0))
    {
      if (a2 < 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      swift_unknownObjectRetain(v10);
      if (v9)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (_swift_isClassOrObjCExistentialType(a3, a3))
      {
        v10 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      else
      {
        v10 = a2;
      }

      a2;
      if (v9)
      {
        goto LABEL_14;
      }
    }

    (*(a5 + 56))((~*(*(a3 - 1) + 80) | 0xFFFFFF00), a4, a5);
    return v10;
  }

  if (!Array._getCount()())
  {
    a2;
    v9 = 0;
    goto LABEL_7;
  }

  v14 = type metadata accessor for _ArrayBuffer(0, a3, v11, v12);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ArrayBuffer<A>, v14, v15);
  v10 = (*(WitnessTable + 56))(v14, WitnessTable);
  v9 = v10 + ((*(*(a3 - 1) + 80) + 32) & ~*(*(a3 - 1) + 80));
LABEL_14:
  (*(a5 + 56))(v9, a4, a5);
  return v10;
}

void *_convertMutableArrayToPointerArgument<A, B>(_:)(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Array(0, a3, a3, a4);
  Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(0, 0);
  v10 = *a2;
  if (_swift_isClassOrObjCExistentialType(a3, a3) && ((v10 & 0x8000000000000000) != 0 || (v10 & 0x4000000000000000) != 0))
  {
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v9, v11);
    if ((Collection.isEmpty.getter(v9, WitnessTable) & 1) == 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else
  {
    _swift_isClassOrObjCExistentialType(a3, a3);
  }

  v12 = *a2;
  *a2;
  if (!_swift_isClassOrObjCExistentialType(a3, a3) || (v12 & 0x8000000000000000) == 0 && (v12 & 0x4000000000000000) == 0)
  {
    v12;
    if (_swift_isClassOrObjCExistentialType(a3, a3))
    {
      v13 = ((*(*(a3 - 1) + 80) + 32) & ~*(*(a3 - 1) + 80)) + (v12 & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      v13 = v12 + ((*(*(a3 - 1) + 80) + 32) & ~*(*(a3 - 1) + 80));
    }

LABEL_11:
    if (_swift_isClassOrObjCExistentialType(a3, a3) && (v12 < 0 || (v12 & 0x4000000000000000) != 0))
    {
      if (v12 < 0)
      {
        v14 = v12;
      }

      else
      {
        v14 = (v12 & 0xFFFFFFFFFFFFFF8);
      }

      swift_unknownObjectRetain(v14);
      if (v13)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (_swift_isClassOrObjCExistentialType(a3, a3))
      {
        v14 = (v12 & 0xFFFFFFFFFFFFFF8);
      }

      else
      {
        v14 = v12;
      }

      v12;
      if (v13)
      {
        goto LABEL_18;
      }
    }

    (*(a5 + 56))((~*(*(a3 - 1) + 80) | 0xFFFFFF00), a4, a5);
    return v14;
  }

  if (!Array._getCount()())
  {
    v12;
    v13 = 0;
    goto LABEL_11;
  }

  v19 = type metadata accessor for _ArrayBuffer(0, a3, v16, v17);
  v21 = swift_getWitnessTable(protocol conformance descriptor for _ArrayBuffer<A>, v19, v20);
  v14 = (*(v21 + 56))(v19, v21);
  v13 = v14 + ((*(*(a3 - 1) + 80) + 32) & ~*(*(a3 - 1) + 80));
LABEL_18:
  (*(a5 + 56))(v13, a4, a5);
  return v14;
}

__objc2_class **_convertConstStringToUTF8PointerArgument<A>(_:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = String.utf8CString.getter(a2, a3);
  (*(a5 + 56))(v7 + 4, a4, a5);
  return v7;
}

__objc2_class **String.utf8CString.getter(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11[0] = a1;
      v11[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v5 = HIBYTE(a2) & 0xF;
      v4 = v11;
    }

    else if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v5 = a1 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = _StringObject.sharedUTF8.getter(a1, a2);
      if (!v4)
      {
        v6 = &_swiftEmptyArrayStorage;
        goto LABEL_7;
      }
    }

    v6 = specialized _copyCollectionToContiguousArray<A>(_:)(v4, v5);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v6);
    v11[0] = v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, &v6[2]->isa + 1, 1);
      v6 = v11[0];
    }

    v9 = v6[2];
    v8 = v6[3];
    if (v9 >= v8 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), &v9->isa + 1, 1);
      v6 = v11[0];
    }

    v6[2] = (&v9->isa + 1);
    *(&v9->info + v6) = 0;
    return v6;
  }

  return String._slowUTF8CString()(a1, a2);
}

uint64_t LazyDropWhileSequence.init(_base:predicate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  result = a6(0, a4, a5);
  v14 = (a7 + *(result + 36));
  *v14 = a2;
  v14[1] = a3;
  return result;
}

uint64_t LazyDropWhileSequence.Iterator._predicate.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v3 = *v2;
  v2[1];
  return v3;
}

uint64_t LazyDropWhileSequence.Iterator.init(_base:predicate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, Class *a4@<X3>, int **a5@<X4>, uint64_t (*a6)(void, uint64_t, uint64_t)@<X5>, _BYTE *a7@<X8>)
{
  *a7 = 0;
  v13 = a6(0, a4, a5);
  v14 = *(v13 + 36);
  swift_getAssociatedTypeWitness(0, a5, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  result = (*(*(v15 - 8) + 32))(&a7[v14], a1, v15);
  v17 = &a7[*(v13 + 40)];
  *v17 = a2;
  v17[1] = a3;
  return result;
}

uint64_t LazyPrefixWhileSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness(255, v5, v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v11 = type metadata accessor for Optional(0, v7, v9, v10);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v31 - v14;
  v16 = *(v8 - 8);
  v18 = MEMORY[0x1EEE9AC00](v13, v17);
  v21 = &v31 - v20;
  v34 = v2;
  if ((*v2 & 1) == 0)
  {
    v31 = v19;
    v32 = v18;
    v33 = a2;
    swift_getAssociatedTypeWitness(255, v5, v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
    v24 = v23;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v6, v23, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v26 = *(AssociatedConformanceWitness + 16);
    v27 = swift_checkMetadataState(0, v24);
    v26(v27, AssociatedConformanceWitness);
    if ((*(v16 + 48))(v15, 1, v8) == 1)
    {
      (*(v31 + 8))(v15, v32);
      v22 = 1;
    }

    else
    {
      v28 = *(v16 + 32);
      v28(v21, v15, v8);
      if ((*&v34[*(a1 + 40)])(v21))
      {
        v29 = v33;
        v28(v33, v21, v8);
        a2 = v29;
        v22 = 0;
        return (*(v16 + 56))(a2, v22, 1, v8);
      }

      (*(v16 + 8))(v21, v8);
      v22 = 1;
      *v34 = 1;
    }

    a2 = v33;
    return (*(v16 + 56))(a2, v22, 1, v8);
  }

  v22 = 1;
  return (*(v16 + 56))(a2, v22, 1, v8);
}

__n128 LazyDropWhileSequence.makeIterator()@<Q0>(uint64_t a1@<X0>, uint64_t (*a2)(void, uint64_t, uint64_t)@<X1>, _BYTE *a3@<X8>)
{
  v7 = *(a1 + 16);
  MEMORY[0x1EEE9AC00](a1, a2);
  (*(v9 + 32))(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v7);
  v10 = *(a1 + 24);
  v11 = *(v10 + 32);
  v12 = a2(0, v7, v10);
  v11(v7, v10);
  v13 = *(a1 + 36);
  *a3 = 0;
  result = *(v3 + v13);
  *&a3[*(v12 + 40)] = result;
  return result;
}

uint64_t LazySequenceProtocol.drop(while:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  (*(a4 + 32))(a3, a4);
  (*(*(a3 - 1) + 1))(v6, a3);
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for LazySequenceProtocol, associated type descriptor for LazySequenceProtocol.Elements);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v13, &protocol requirements base descriptor for LazySequenceProtocol, associated conformance descriptor for LazySequenceProtocol.LazySequenceProtocol.Elements: Sequence);
  v16 = (a6 + *(a5(0, v14, AssociatedConformanceWitness) + 36));
  *v16 = a1;
  v16[1] = a2;

  return a2;
}

uint64_t LazyPrefixWhileSequence<>.Index._value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v5 = type metadata accessor for LazyPrefixWhileSequence<>._IndexRepresentation(0, *(a1 + 16), *(a1 + 24), a3);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v3, v5);
}

uint64_t LazyPrefixWhileSequence<>.Index.init(_:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, int **a3@<X2>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  v10 = *(v6 - 8);
  (*(v10 + 32))(a4, a1, v6);
  v8 = *(v10 + 56);

  return v8(a4, 0, 1, v7);
}

uint64_t LazyPrefixWhileSequence<>.Index.init(endOf:)@<X0>(Class *a1@<X1>, int **a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a1 - 1) + 1))();
  swift_getAssociatedTypeWitness(0, a2, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = *(*(v6 - 8) + 56);

  return v7(a3, 1, 1, v6);
}

uint64_t static LazyPrefixWhileSequence<>.Index.== infix(_:_:)(uint64_t a1, uint64_t a2, Class *a3, int **a4)
{
  v38 = a1;
  v39 = a2;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  v8 = *(v6 - 8);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v36 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v35 = &v34 - v13;
  v37 = a3;
  v15 = type metadata accessor for LazyPrefixWhileSequence<>._IndexRepresentation(255, a3, a4, v14);
  swift_getTupleTypeMetadata2(0, v15, v15, 0, 0);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v20 = &v34 - v19;
  v21 = *(v18 + 56);
  v22 = *(v15 - 1);
  v23 = *(v22 + 16);
  v23(&v34 - v19, v38, v15);
  v23(&v20[v21], v39, v15);
  v24 = v8[6];
  LODWORD(v23) = v24(v20, 1, v7);
  v25 = v24(&v20[v21], 1, v7);
  if (v23 != 1)
  {
    if (v25 != 1)
    {
      v27 = v8[4];
      v28 = v35;
      v27(v35, v20, v7);
      v29 = &v20[v21];
      v30 = v36;
      v27(v36, v29, v7);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, v37, v7, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
      v26 = (*(*(AssociatedConformanceWitness + 8) + 8))(v28, v30, v7);
      v32 = v8[1];
      v32(v30, v7);
      v32(v28, v7);
      return v26 & 1;
    }

    (v8[1])(v20, v7);
    goto LABEL_7;
  }

  if (v25 != 1)
  {
    (*(v22 + 8))(&v20[v21], v15);
LABEL_7:
    v26 = 0;
    return v26 & 1;
  }

  v26 = 1;
  return v26 & 1;
}

uint64_t static LazyPrefixWhileSequence<>.Index.< infix(_:_:)(uint64_t a1, uint64_t a2, Class *a3, int **a4)
{
  v37 = a2;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  v9 = *(v7 - 8);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v35 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v34 = &v34 - v14;
  v36 = a3;
  v16 = type metadata accessor for LazyPrefixWhileSequence<>._IndexRepresentation(255, a3, a4, v15);
  swift_getTupleTypeMetadata2(0, v16, v16, 0, 0);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v21 = &v34 - v20;
  v22 = *(v19 + 56);
  v23 = *(v16 - 1);
  v24 = *(v23 + 16);
  v24(&v34 - v20, a1, v16);
  v24(&v21[v22], v37, v16);
  v25 = *(v9 + 48);
  if (v25(v21, 1, v8) == 1)
  {
    (*(v23 + 8))(&v21[v22], v16);
    v26 = 0;
  }

  else if (v25(&v21[v22], 1, v8) == 1)
  {
    (*(v9 + 8))(v21, v8);
    v26 = 1;
  }

  else
  {
    v27 = *(v9 + 32);
    v28 = v34;
    v27(v34, v21, v8);
    v29 = &v21[v22];
    v30 = v35;
    v27(v35, v29, v8);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, v36, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
    v26 = (*(AssociatedConformanceWitness + 16))(v28, v30, v8, AssociatedConformanceWitness);
    v32 = *(v9 + 8);
    v32(v30, v8);
    v32(v28, v8);
  }

  return v26 & 1;
}

void LazyPrefixWhileSequence<>.Index<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v21 - v13;
  v16 = type metadata accessor for LazyPrefixWhileSequence<>._IndexRepresentation(0, v8, v7, v15);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v21 - v18;
  (*(v20 + 16))(&v21 - v18, v4);
  if ((*(v11 + 48))(v19, 1, v10) == 1)
  {
    Hasher._combine(_:)(0x7FFFFFFFFFFFFFFFuLL);
  }

  else
  {
    (*(v11 + 32))(v14, v19, v10);
    (*(a3 + 24))(a1, v10, a3);
    (*(v11 + 8))(v14, v10);
  }
}

Swift::Int LazyPrefixWhileSequence<>.Index<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness(0, v5, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v20 - v11;
  v14 = type metadata accessor for LazyPrefixWhileSequence<>._IndexRepresentation(0, v6, v5, v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v20 - v16;
  v24 = 0u;
  v25 = 0u;
  v21 = 0;
  v22 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v23 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  (*(v18 + 16))(&v20 - v16, v3);
  if ((*(v9 + 48))(v17, 1, v8) == 1)
  {
    Hasher._combine(_:)(0x7FFFFFFFFFFFFFFFuLL);
  }

  else
  {
    (*(v9 + 32))(v12, v17, v8);
    (*(a2 + 24))(&v21, v8, a2);
    (*(v9 + 8))(v12, v8);
  }

  return Hasher._finalize()();
}

uint64_t LazyPrefixWhileSequence<>.startIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  swift_getAssociatedTypeWitness(0, a2, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v13 - v10;
  (*(a2 + 64))(v5, a2);
  (*(v8 + 32))(a3, v11, v7);
  return (*(v8 + 56))(a3, 0, 1, v7);
}

uint64_t LazyPrefixWhileSequence<>.endIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v31 = a1;
  v5 = *(a1 + 16);
  swift_getAssociatedTypeWitness(0, a2, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v32 = &v30 - v8;
  swift_getAssociatedTypeWitness(255, *(a2 + 8), v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10 = v9;
  v13 = type metadata accessor for Optional(0, v9, v11, v12);
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v30 - v17;
  v19 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v16, v20);
  v22 = &v30 - v21;
  Collection.first.getter(v5, a2, v18);
  if ((*(v19 + 48))(v18, 1, v10) == 1)
  {
    (*(v14 + 8))(v18, v13);
LABEL_5:
    v28 = v32;
    (*(a2 + 64))(v5, a2);
    v27 = v33;
    v26 = v34;
    v25 = v35;
    (*(v33 + 32))(v35, v28, v34);
    v24 = 0;
    return (*(v27 + 56))(v25, v24, 1, v26);
  }

  (*(v19 + 32))(v22, v18, v10);
  v23 = (*(v3 + *(v31 + 36)))(v22);
  (*(v19 + 8))(v22, v10);
  if ((v23 & 1) == 0)
  {
    goto LABEL_5;
  }

  v24 = 1;
  v26 = v34;
  v25 = v35;
  v27 = v33;
  return (*(v27 + 56))(v25, v24, 1, v26);
}

uint64_t LazyPrefixWhileSequence<>.index(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = a2;
  v64 = a1;
  v61 = a4;
  v8 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, *(a3 + 8), v8, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v55 = &v54 - v11;
  v13 = type metadata accessor for LazyPrefixWhileSequence<>._IndexRepresentation(0, v8, a3, v12);
  v62 = *(v13 - 8);
  v63 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v54 - v15;
  swift_getAssociatedTypeWitness(0, a3, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v18 = v17;
  v65 = *(v17 - 8);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v58 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v59 = &v54 - v24;
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v54 - v26;
  v29 = type metadata accessor for LazyPrefixWhileSequence<>.Index(0, v8, a3, v28);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = &v54 - v32;
  v54 = v7;
  v60 = v5;
  LazyPrefixWhileSequence<>.endIndex.getter(v7, a3, &v54 - v32);
  v34 = v64;
  LOBYTE(v7) = static LazyPrefixWhileSequence<>.Index.== infix(_:_:)(v64, v33, v8, a3);
  (*(v30 + 8))(v33, v29);
  if (v7)
  {
LABEL_8:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v36 = v62;
  v35 = v63;
  (*(v62 + 16))(v16, v34, v63);
  v37 = v65;
  if ((*(v65 + 48))(v16, 1, v18) == 1)
  {
    (*(v36 + 8))(v16, v35);
    goto LABEL_8;
  }

  v63 = *(v37 + 32);
  v64 = v37 + 32;
  v63(v27, v16, v18);
  v39 = v59;
  v38 = v60;
  (*(a3 + 184))(v27, v8, a3);
  v40 = *(v37 + 8);
  v40(v27, v18);
  v41 = v58;
  (*(a3 + 72))(v8, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, v8, v18, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v43 = (*(*(AssociatedConformanceWitness + 8) + 8))(v39, v41, v18);
  v40(v41, v18);
  if ((v43 & 1) != 0 || (v44 = *(v38 + *(v54 + 36)), v45 = (*(a3 + 80))(v66, v39, v8, a3), v47 = v55, v46 = v56, v48 = v57, (*(v56 + 16))(v55), v45(v66, 0), v49 = v44(v47), (*(v46 + 8))(v47, v48), (v49 & 1) == 0))
  {
    v40(v39, v18);
    v52 = 1;
    v51 = v61;
  }

  else
  {
    v50 = v61;
    v63(v61, v39, v18);
    v51 = v50;
    v52 = 0;
  }

  return (*(v65 + 56))(v51, v52, 1, v18);
}

uint64_t LazyPrefixWhileSequence<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, a3, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v25[-v12];
  v15 = type metadata accessor for LazyPrefixWhileSequence<>._IndexRepresentation(0, v7, a3, v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v25[-v17];
  (*(v19 + 16))(&v25[-v17], a1);
  if ((*(v10 + 48))(v18, 1, v9) == 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v10 + 32))(v13, v18, v9);
  v20 = (*(a3 + 80))(v25, v13, v7, a3);
  v22 = v21;
  swift_getAssociatedTypeWitness(0, *(a3 + 8), v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  (*(*(v23 - 8) + 16))(a4, v22, v23);
  v20(v25, 0);
  return (*(v10 + 8))(v13, v9);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance <> LazyPrefixWhileSequence<A>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc(0x28, 0x48CCuLL);
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = LazyPrefixWhileSequence<>.subscript.read(v8, a2, a3, *(a4 - 8));
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*LazyPrefixWhileSequence<>.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  swift_getAssociatedTypeWitness(0, *(a4 + 8), *(a3 + 16), &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  *a1 = v8;
  v9 = *(v8 - 8);
  a1[1] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v11 = swift_coroFrameAlloc(v10, 0xE853uLL);
  }

  else
  {
    v11 = malloc(v10);
  }

  a1[2] = v11;
  LazyPrefixWhileSequence<>.subscript.getter(a2, a3, a4, v11);
  return _ArrayBuffer.subscript.read;
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance <> EnumeratedSequence<A>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(uint64_t, void, void)@<X3>, uint64_t a4@<X8>)
{
  v5 = a3(255, *(a1 + 16), *(a2 - 8));
  v8 = type metadata accessor for Optional(0, v5, v6, v7);
  v9 = *(*(v8 - 8) + 56);

  return v9(a4, 1, 1, v8);
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance <> EnumeratedSequence<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, uint64_t), void (*a5)(char *, uint64_t, uint64_t))
{
  v8 = *(a3 - 8);
  v9 = a4(0, *(a2 + 16), v8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v15 - v12;
  (*(v10 + 32))(&v15 - v12, a1, v9);
  a5(v13, a2, v8);
  return (*(v10 + 8))(v13, v9);
}

uint64_t LazyPrefixWhileSequence<>.index(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v66 = a4;
  v79 = a3;
  v8 = *(a3 + 8);
  v9 = *(v8 + 8);
  v82 = a2;
  v10 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, v9, v10, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v81 = v11;
  v72 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v80 = &v64 - v13;
  swift_getAssociatedTypeWitness(0, v8, v10, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v15 = v14;
  v16 = *(v14 - 8);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v64 - v23;
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v28 = &v64 - v27;
  MEMORY[0x1EEE9AC00](v26, v29);
  v83 = (&v64 - v30);
  v32 = type metadata accessor for LazyPrefixWhileSequence<>._IndexRepresentation(0, v10, v8, v31);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v64 - v34;
  (*(v36 + 16))(&v64 - v34, a1);
  v37 = *(v16 + 48);
  v84 = v15;
  if (v37(v35, 1, v15) == 1)
  {
    (*(v8 + 64))(v10, v8);
    v78 = *(v8 + 184);
    v79 = v8 + 184;
    v76 = *(v8 + 72);
    v77 = v8 + 72;
    v75 = *(swift_getAssociatedConformanceWitness(v8, v10, v84, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
    v73 = *(v75 + 8);
    v74 = v75 + 8;
    v38 = (v16 + 8);
    v68 = (v72 + 2);
    v69 = v8 + 80;
    v67 = (v72 + 1);
    v65 = v16;
    v71 = v28;
    v72 = (v16 + 32);
    v39 = v24;
    v70 = (v16 + 8);
    while (1)
    {
      v78(v39, v10, v8);
      v76(v10, v8);
      v40 = v84;
      v41 = v73(v20, v28, v84, v75);
      v42 = v10;
      v43 = *v38;
      (*v38)(v28, v40);
      if (v41)
      {
        break;
      }

      v83 = *(v5 + *(v82 + 36));
      v44 = (*(v8 + 80))(v85, v20, v42, v8);
      v45 = v80;
      v46 = v39;
      v47 = v20;
      v48 = v81;
      (*v68)(v80);
      (v44)(v85, 0);
      LOBYTE(v44) = v83(v45);
      v49 = v48;
      v20 = v47;
      v39 = v46;
      v38 = v70;
      v28 = v71;
      (*v67)(v45, v49);
      if ((v44 & 1) == 0)
      {
        break;
      }

      v50 = v84;
      v43(v39, v84);
      (*v72)(v39, v20, v50);
      v10 = v42;
    }

    v61 = v84;
    v43(v20, v84);
    v62 = v65;
    v63 = v66;
    (*(v65 + 32))(v66, v39, v61);
    return (*(v62 + 56))(v63, 0, 1, v61);
  }

  else
  {
    v51 = v83;
    v52 = v84;
    v82 = *(v16 + 32);
    (v82)(v83, v35, v84);
    (*(v8 + 64))(v10, v8);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v10, v52, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
    v54 = (*(*(AssociatedConformanceWitness + 8) + 8))(v51, v28, v52);
    v55 = v10;
    v56 = *(v16 + 8);
    v56(v28, v52);
    if (v54)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v57 = v83;
    (*(v79 + 32))(v83, v55);
    v58 = v84;
    v56(v57, v84);
    v59 = v66;
    (v82)(v66, v28, v58);
    return (*(v16 + 56))(v59, 0, 1, v58);
  }
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance <> LazyPrefixWhileSequence<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = type metadata accessor for LazyPrefixWhileSequence<>.Index(0, *(a2 + 16), *(v6 + 8), a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v13 - v10;
  (*(v8 + 32))(&v13 - v10, a1, v7);
  LazyPrefixWhileSequence<>.index(before:)(v11, a2, v6, a1);
  return (*(v8 + 8))(v11, v7);
}

Swift::Void __swiftcall _prespecialize()()
{
  canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>(0);
  canonical specialized generic type metadata accessor for _ContiguousArrayStorage<AnyHashable>();
  canonical specialized generic type metadata accessor for _ContiguousArrayStorage<[String : Swift.AnyObject]>();
  canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Int64>();

  canonical specialized generic type metadata accessor for _ContiguousArrayStorage<String>(0);
}

void Array.__specialize_append(_:)(uint64_t a1, uint64_t a2)
{
  Array.__specialize_append(_:)(a1, a2);
}

{
  (*(*(*(a2 + 16) - 8) + 8))(a1);
  __break(1u);
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = a2;
  v5 = *v2;
  v6 = specialized static Hasher._hash(seed:_:)(*(*v2 + 40), a2);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == v3)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    v3 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v2);
    v13 = *v2;
    *v2 = 0x8000000000000000;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v3, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = v3;
  return result;
}

{
  v5 = *v2;
  v6 = specialized static Hasher._hash(seed:_:)(*(*v2 + 40), a2);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v2);
    v12 = *v2;
    *v2 = 0x8000000000000000;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  v8 = _swift_stdlib_Hashing_parameters ^ *(*v3 + 40);
  v22 = 0u;
  v23 = 0u;
  v21[0] = 0;
  v21[1] = v8 ^ 0x736F6D6570736575;
  v21[2] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL;
  v21[3] = v8 ^ 0x6C7967656E657261;
  v21[4] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x7465646279746573;
  String.hash(into:)(v21, a2, a3);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = v13[1];
      if (*v13 == a2 && v14 == a3)
      {
        break;
      }

      v16 = (~v14 & 0x6000000000000000) == 0 && (a3 & 0x6000000000000000) == 0x6000000000000000;
      if (!v16 && (_stringCompareInternal(_:_:expecting:)(*v13, v14, a2, a3, 0) & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    a3;
    v17 = (*(v7 + 48) + 16 * v11);
    v18 = v17[1];
    *a1 = *v17;
    a1[1] = v18;
    v18;
    return 0;
  }

  else
  {
LABEL_14:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v3);
    v21[0] = *v3;
    *v3 = 0x8000000000000000;
    a3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v21[0];
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  __swift_project_boxed_opaque_existential_0Tm(a2, v6);
  (*(v7 + 8))(v32, v6, v7);
  v8 = v33;
  v9 = v34;
  __swift_project_boxed_opaque_existential_0Tm(v32, v33);
  v10 = (*(v9 + 40))(v5, v8, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  v11 = v4 + 56;
  v27 = v4;
  v12 = -1 << *(v4 + 32);
  v13 = v10 & ~v12;
  if ((*(v4 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (1)
    {
      outlined init with copy of AnyHashable(*(v27 + 48) + 40 * v13, v32);
      v15 = v33;
      v16 = v34;
      __swift_project_boxed_opaque_existential_0Tm(v32, v33);
      (*(v16 + 8))(v29, v15, v16);
      v17 = v30;
      v18 = v31;
      __swift_project_boxed_opaque_existential_0Tm(v29, v30);
      v19 = *(a2 + 24);
      v20 = *(a2 + 32);
      __swift_project_boxed_opaque_existential_0Tm(a2, v19);
      (*(v20 + 8))(v28, v19, v20);
      v21 = (*(v18 + 16))(v28, v17, v18);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      outlined destroy of AnyHashable(v32);
      if (v21)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    outlined destroy of AnyHashable(a2);
    outlined init with copy of AnyHashable(*(v27 + 48) + 40 * v13, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v25);
    outlined init with copy of AnyHashable(a2, v32);
    v29[0] = *v25;
    *v25 = 0x8000000000000000;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v32, v13, isUniquelyReferenced_nonNull_native);
    *v25 = v29[0];
    v23 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v23;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  __swift_project_boxed_opaque_existential_0Tm(a2, v6);
  (*(v7 + 8))(v32, v6, v7);
  v8 = v33;
  v9 = v34;
  __swift_project_boxed_opaque_existential_0Tm(v32, v33);
  v10 = (*(v9 + 40))(v5, v8, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  v11 = v4 + 56;
  v27 = v4;
  v12 = -1 << *(v4 + 32);
  v13 = v10 & ~v12;
  if ((*(v4 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (1)
    {
      outlined init with copy of AnyHashable(*(v27 + 48) + 40 * v13, v32);
      v15 = v33;
      v16 = v34;
      __swift_project_boxed_opaque_existential_0Tm(v32, v33);
      (*(v16 + 8))(v29, v15, v16);
      v17 = v30;
      v18 = v31;
      __swift_project_boxed_opaque_existential_0Tm(v29, v30);
      v19 = *(a2 + 24);
      v20 = *(a2 + 32);
      __swift_project_boxed_opaque_existential_0Tm(a2, v19);
      (*(v20 + 8))(v28, v19, v20);
      v21 = (*(v18 + 16))(v28, v17, v18);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      outlined destroy of AnyHashable(v32);
      if (v21)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    outlined destroy of AnyHashable(a2);
    outlined init with copy of AnyHashable(*(v27 + 48) + 40 * v13, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v25);
    outlined init with copy of AnyHashable(a2, v32);
    v29[0] = *v25;
    *v25 = 0x8000000000000000;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v32, v13, isUniquelyReferenced_nonNull_native);
    *v25 = v29[0];
    v23 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v23;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t Set._Variant.insert(_:)(uint64_t a1, id *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1;
  v7 = *(a3 + 16);
  v8 = *(v7 - 1);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v43 - v13;
  v15 = *v3;
  if ((*v3 & 0xC000000000000001) != 0)
  {
    v46 = v6;
    v16 = _bridgeAnythingToObjectiveC<A>(_:)(v5, v7);
    if (v15 < 0)
    {
      v17 = v15;
    }

    else
    {
      v17 = (v15 & 0xFFFFFFFFFFFFFF8);
    }

    v15;
    v18 = [v17 member_];
    swift_unknownObjectRelease(v16);
    if (v18)
    {
      (*(v8 + 8))(v5, v7);
      v15;
      _forceBridgeFromObjectiveC<A>(_:_:)(v18, v7, v46, v19);
      swift_unknownObjectRelease(v18);
      return 0;
    }

    v45 = v3;
    result = [v17 count];
    v34 = v46;
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v35 = *(a3 + 24);
    v36 = _NativeSet.init(_:capacity:)(v17, result + 1, v7, v35);
    v52 = v36;
    (*(v8 + 16))(v11, v5, v7);
    v38 = v36[2];
    if (v36[3] <= v38)
    {
      type metadata accessor for _NativeSet(0, v7, v35, v37);
      _NativeSet.resize(capacity:)(&v38->isa + 1);
      v36 = v52;
    }

    _NativeSet._unsafeInsertNew(_:)(v11, v36, v7);
    v15;
    *v45 = v36;
    (*(v8 + 32))(v34, v5, v7);
    return 1;
  }

  v45 = v3;
  v21 = *(v15 + 40);
  v22 = *(*(a3 + 24) + 32);
  v51 = *(a3 + 24);
  v23 = v22(v21, v7);
  v49 = v15 + 56;
  v50 = v15;
  v24 = -1 << *(v15 + 32);
  v25 = v23 & ~v24;
  if (((*(v15 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
  {
    v26 = *(v8 + 16);
    v33 = v8;
LABEL_17:
    v39 = v45;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v45);
    v26(v14, v5, v7);
    v52 = *v39;
    *v39 = 0x8000000000000000;
    v42 = type metadata accessor for _NativeSet(0, v7, v51, v41);
    _NativeSet.insertNew(_:at:isUnique:)(v14, v25, isUniquelyReferenced_nonNull_native, v42);
    *v39 = v52;
    (*(v33 + 32))(v6, v5, v7);
    return 1;
  }

  v46 = v6;
  v47 = ~v24;
  v26 = *(v8 + 16);
  v48 = *(v8 + 72);
  v27 = (v8 + 8);
  v43 = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v44 = v8;
  while (1)
  {
    v28 = v48 * v25;
    v29 = v26;
    v26(v14, (*(v50 + 48) + v48 * v25), v7);
    v30 = v5;
    v31 = (*(*(v51 + 8) + 8))(v14, v5, v7);
    v32 = *v27;
    (*v27)(v14, v7);
    if (v31)
    {
      break;
    }

    v25 = (v25 + 1) & v47;
    v5 = v30;
    v26 = v29;
    if (((*(v49 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
      v6 = v46;
      v33 = v44;
      goto LABEL_17;
    }
  }

  v32(v30, v7);
  v29(v46, (*(v50 + 48) + v28), v7);
  return 0;
}

uint64_t specialized Set._Variant.remove(_:)(unint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = _swift_stdlib_Hashing_parameters ^ *(*v2 + 40);
  v20 = 0u;
  v21 = 0u;
  v19[0] = 0;
  v19[1] = v6 ^ 0x736F6D6570736575;
  v19[2] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL;
  v19[3] = v6 ^ 0x6C7967656E657261;
  v19[4] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x7465646279746573;
  String.hash(into:)(v19, a1, a2);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = v11[1];
    if (*v11 == a1 && v12 == a2)
    {
      break;
    }

    v14 = (~v12 & 0x6000000000000000) == 0 && (a2 & 0x6000000000000000) == 0x6000000000000000;
    if (!v14 && (_stringCompareInternal(_:_:expecting:)(*v11, v12, a1, a2, 0) & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v2);
  v16 = *v2;
  v19[0] = *v2;
  *v2 = 0x8000000000000000;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeSet.copy()();
    v16 = v19[0];
  }

  v17 = *(*(v16 + 48) + 16 * v9);
  specialized _NativeSet._delete(at:)(v9);
  *v2 = v19[0];
  return v17;
}

unint64_t specialized Set._Variant.remove(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  (*(v7 + 8))(v34, v6, v7);
  v8 = v35;
  v9 = v36;
  __swift_project_boxed_opaque_existential_0Tm(v34, v35);
  v10 = (*(v9 + 40))(v5, v8, v9);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v34);
  v12 = v4 + 56;
  v29 = v4;
  v13 = -1 << *(v4 + 32);
  v14 = v10 & ~v13;
  if ((*(v4 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (1)
    {
      outlined init with copy of AnyHashable(*(v29 + 48) + 40 * v14, v34);
      v16 = v35;
      v17 = v36;
      __swift_project_boxed_opaque_existential_0Tm(v34, v35);
      (*(v17 + 8))(v31, v16, v17);
      v18 = v32;
      v19 = v33;
      __swift_project_boxed_opaque_existential_0Tm(v31, v32);
      v20 = a1[3];
      v21 = a1[4];
      __swift_project_boxed_opaque_existential_0Tm(a1, v20);
      (*(v21 + 8))(v30, v20, v21);
      v22 = (*(v19 + 16))(v30, v18, v19);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      result = outlined destroy of AnyHashable(v34);
      if (v22)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v27);
    v24 = *v27;
    v34[0] = *v27;
    *v27 = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeSet.copy()();
      v24 = v34[0];
    }

    v25 = *(v24 + 48) + 40 * v14;
    v26 = *(v25 + 16);
    *a2 = *v25;
    *(a2 + 16) = v26;
    *(a2 + 32) = *(v25 + 32);
    result = specialized _NativeSet._delete(at:)(v14);
    *v27 = v34[0];
  }

  else
  {
LABEL_5:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void *specialized Set._Variant.remove(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  (*(v7 + 8))(&v54, v6, v7);
  v8 = *(&v55 + 1);
  v9 = v56;
  __swift_project_boxed_opaque_existential_0Tm(&v54, *(&v55 + 1));
  v10 = (*(v9 + 40))(v5, v8, v9);
  result = __swift_destroy_boxed_opaque_existential_1Tm(&v54);
  v12 = v4 + 56;
  v49 = v4;
  v13 = -1 << *(v4 + 32);
  v14 = v10 & ~v13;
  if (((*(v4 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_5:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v15 = ~v13;
  while (1)
  {
    outlined init with copy of AnyHashable(*(v49 + 48) + 40 * v14, &v54);
    v16 = *(&v55 + 1);
    v17 = v56;
    __swift_project_boxed_opaque_existential_0Tm(&v54, *(&v55 + 1));
    (*(v17 + 8))(v51, v16, v17);
    v18 = v52;
    v19 = v53;
    __swift_project_boxed_opaque_existential_0Tm(v51, v52);
    v20 = a1[3];
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_0Tm(a1, v20);
    (*(v21 + 8))(v50, v20, v21);
    v22 = (*(v19 + 16))(v50, v18, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    result = outlined destroy of AnyHashable(&v54);
    if (v22)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v47);
  v24 = *v47;
  v51[0] = *v47;
  *v47 = 0x8000000000000000;
  if (isUniquelyReferenced_nonNull_native)
  {
    v25 = v24;
LABEL_8:
    v26 = *(v25 + 48) + 40 * v14;
    v27 = *(v26 + 16);
    *a2 = *v26;
    *(a2 + 16) = v27;
    *(a2 + 32) = *(v26 + 32);
    result = specialized _NativeSet._delete(at:)(v14);
    *v47 = v51[0];
    return result;
  }

  v28 = *(v24 + 36);
  v29 = *(v24 + 40);
  v30 = *(v24 + 32);
  LOBYTE(v54) = 0;
  v31 = _ss11_SetStorageC8allocate5scale3age4seedAByxGs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_Tt2g5(v30, v28, v29, 0);
  v25 = v31;
  if (!*(v24 + 16))
  {
LABEL_24:
    v24;
    v51[0] = v25;
    goto LABEL_8;
  }

  result = v31 + 7;
  v32 = v24 + 56;
  v33 = ((1 << *(v25 + 32)) + 63) >> 6;
  if (v25 != v24 || result >= v32 + 8 * v33)
  {
    result = memmove(result, (v24 + 56), 8 * v33);
  }

  v34 = 0;
  *(v25 + 16) = *(v24 + 16);
  v35 = 1 << *(v24 + 32);
  v36 = *(v24 + 56);
  v37 = -1;
  if (v35 < 64)
  {
    v37 = ~(-1 << v35);
  }

  v38 = v37 & v36;
  v39 = (v35 + 63) >> 6;
  if ((v37 & v36) != 0)
  {
    do
    {
      v40 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
LABEL_22:
      v43 = 40 * (v40 | (v34 << 6));
      result = outlined init with copy of AnyHashable(*(v24 + 48) + v43, &v54);
      v44 = *(v25 + 48) + v43;
      v45 = v54;
      v46 = v55;
      *(v44 + 32) = v56;
      *v44 = v45;
      *(v44 + 16) = v46;
    }

    while (v38);
  }

  v41 = v34;
  while (1)
  {
    v34 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v34 >= v39)
    {
      goto LABEL_24;
    }

    v42 = *(v32 + 8 * v34);
    ++v41;
    if (v42)
    {
      v40 = __clz(__rbit64(v42));
      v38 = (v42 - 1) & v42;
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

void Set._Variant.remove(_:)(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 16);
  v33 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if ((*v3 & 0xC000000000000001) != 0)
  {
    if (v10 < 0)
    {
      v11 = *v3;
    }

    else
    {
      v11 = (v10 & 0xFFFFFFFFFFFFFF8);
    }

    *v3;
    v12 = _bridgeAnythingToObjectiveC<A>(_:)(a1, v7);
    v13 = [v11 member_];
    swift_unknownObjectRelease(v12);
    if (v13)
    {
      swift_unknownObjectRelease(v13);
      Set._Variant._migrateToNative(_:removing:)(v11, a1, a2, a3);
      v10;
      v14 = *(v33 + 56);

      v14(a3, 0, 1, v7);
    }

    else
    {
      (*(v33 + 56))(a3, 1, 1, v7);

      v10;
    }
  }

  else
  {
    v31 = v3;
    v32 = a3;
    v15 = *(v10 + 40);
    v16 = *(a2 + 24);
    v17 = *(v16 + 32);
    v36 = a1;
    v37 = v16;
    v18 = v17(v15, v7);
    v19 = -1 << *(v10 + 32);
    v20 = v18 & ~v19;
    v35 = v10 + 56;
    if ((*(v10 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      v34 = ~v19;
      v21 = *(v33 + 16);
      v22 = *(v33 + 72);
      v23 = (v33 + 8);
      while (1)
      {
        v21(v9, *(v10 + 48) + v22 * v20, v7);
        v24 = (*(*(v37 + 8) + 8))(v9, v36, v7);
        (*v23)(v9, v7);
        if (v24)
        {
          break;
        }

        v20 = (v20 + 1) & v34;
        if (((*(v35 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v25 = v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v31);
      v28 = *v25;
      v38 = *v25;
      *v25 = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        type metadata accessor for _NativeSet(0, v7, v37, v27);
        _NativeSet.copy()();
        v28 = v38;
      }

      v29 = v32;
      (*(v33 + 32))(v32, *(v28 + 48) + v22 * v20, v7);
      type metadata accessor for _NativeSet(0, v7, v37, v30);
      _NativeSet._delete(at:)(v20);
      *v31 = v28;
      (*(v33 + 56))(v29, 0, 1, v7);
    }

    else
    {
LABEL_13:
      (*(v33 + 56))(v32, 1, 1, v7);
    }
  }
}

void specialized _print<A>(_:separator:terminator:to:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, void *a5, unint64_t *a6)
{
  v46._countAndFlagsBits = a4;
  v46._object = a5;
  v7 = *(a1 + 16);
  if (v7)
  {
    outlined init with copy of Any(a1 + 32, v47);
    v19 = *a6;
    v20 = a6[1];
    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = *a6 & 0xFFFFFFFFFFFFLL;
    }

    if (v21 || (v19 & ~v20 & 0x2000000000000000) != 0)
    {
      if ((v20 & 0x2000000000000000) != 0 && (v22 = specialized _SmallString.init(_:appending:)(v19, a6[1], 0, 0xE000000000000000), (v24 & 1) == 0))
      {
        v25 = v22;
        v26 = v23;
        v20;
        0xE000000000000000;
        *a6 = v25;
        a6[1] = v26;
      }

      else
      {
        _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v11, v12, v13, v14, v15, v16, v17, v18);
        0xE000000000000000;
      }
    }

    else
    {
      a6[1];
      *a6 = 0;
      a6[1] = 0xE000000000000000;
    }

    _print_unlocked<A, B>(_:_:)(v47, a6, qword_1EEEAC6F8, &type metadata for String, &protocol witness table for String);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    v27 = v7 - 1;
    if (v27)
    {
      v28 = a1 + 64;
      while (1)
      {
        a3;
        outlined init with copy of Any(v28, v47);
        v38 = *a6;
        v39 = a6[1];
        v40 = HIBYTE(v39) & 0xF;
        if ((v39 & 0x2000000000000000) == 0)
        {
          v40 = *a6 & 0xFFFFFFFFFFFFLL;
        }

        if (!v40 && (v38 & ~v39 & 0x2000000000000000) == 0)
        {
          a6[1];
          *a6 = a2;
          a6[1] = a3;
          goto LABEL_16;
        }

        if ((v39 & 0x2000000000000000) == 0)
        {
          break;
        }

        if ((a3 & 0x2000000000000000) == 0)
        {
          goto LABEL_14;
        }

        v41 = specialized _SmallString.init(_:appending:)(v38, a6[1], a2, a3);
        v29 = HIBYTE(a3) & 0xF;
        if ((v43 & 1) == 0)
        {
          v44 = v41;
          v45 = v42;
          v39;
          a3;
          *a6 = v44;
          a6[1] = v45;
          goto LABEL_16;
        }

LABEL_15:
        _StringGuts.append(_:)(a2, a3, 0, v29, v30, v31, v32, v33, v34, v35, v36, v37);
        a3;
LABEL_16:
        _print_unlocked<A, B>(_:_:)(v47, a6, qword_1EEEAC6F8, &type metadata for String, &protocol witness table for String);
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        v28 += 32;
        if (!--v27)
        {
          goto LABEL_12;
        }
      }

      v29 = HIBYTE(a3) & 0xF;
      if ((a3 & 0x2000000000000000) != 0)
      {
        goto LABEL_15;
      }

LABEL_14:
      v29 = a2 & 0xFFFFFFFFFFFFLL;
      goto LABEL_15;
    }
  }

LABEL_12:
  String.write(_:)(v46);
}

void print(_:separator:terminator:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t *, uint64_t *, Class *, void *, _UNKNOWN **), void (*a7)(uint64_t *, uint64_t, Class *, ValueMetadata *, _UNKNOWN **))
{
  v7 = a5;
  v8 = a4;
  v10 = a2;
  v12 = _playgroundPrintHook;
  if (!_playgroundPrintHook)
  {
    specialized _print<A>(_:separator:terminator:to:)(a1, a2, a3, a4, a5, a6, a7);
    return;
  }

  v13 = qword_1EA79EC28;
  v14 = 0xE000000000000000;
  v71 = 0;
  v72 = 0xE000000000000000;
  qword_1EA79EC28;
  _swift_stdlib_flockfile_stdout();
  v23 = *(a1 + 16);
  if (v23)
  {
    v63 = v8;
    v64 = v7;
    v65 = v13;
    v66 = v12;
    v24 = 0;
    v25 = a1 + 32;
    v26 = v23 - 1;
    v27 = 0xE000000000000000;
    v67 = v10;
    while (1)
    {
      outlined init with copy of Any(v25, v70);
      v36 = v72;
      v37 = HIBYTE(v72) & 0xF;
      if ((v72 & 0x2000000000000000) == 0)
      {
        v37 = v71 & 0xFFFFFFFFFFFFLL;
      }

      if (v37 || (v71 & ~v72 & 0x2000000000000000) != 0)
      {
        v38 = v27 & 0x2000000000000000;
        if ((v72 & 0x2000000000000000) != 0)
        {
          if (v38)
          {
            v39 = specialized _SmallString.init(_:appending:)(v71, v72, v24, v27);
            if ((v41 & 1) == 0)
            {
              v48 = v39;
              v49 = v40;
              v36;
              v71 = v48;
              v72 = v49;
              v44 = v27;
              v10 = v67;
              if ((v27 & 0xF00000000000000) == 0)
              {
                goto LABEL_25;
              }

              goto LABEL_19;
            }
          }
        }

        if (v38)
        {
          v42 = HIBYTE(v27) & 0xF;
        }

        else
        {
          v42 = v24 & 0xFFFFFFFFFFFFLL;
        }

        _StringGuts.append(_:)(v24, v27, 0, v42, v28, v29, v30, v31, v32, v33, v34, v35);
        v10 = v67;
      }

      else
      {
        v27;
        v36;
        v71 = v24;
        v72 = v27;
        v38 = v27 & 0x2000000000000000;
      }

      if (v38)
      {
        v43 = HIBYTE(v27) & 0xF;
      }

      else
      {
        v43 = v24 & 0xFFFFFFFFFFFFLL;
      }

      v44 = v27;
      if (!v43)
      {
LABEL_25:
        v50 = v27;
        goto LABEL_29;
      }

LABEL_19:
      v27;
      if ((v44 & 0x1000000000000000) != 0)
      {
        v24 = specialized static String._copying(_:)(v24, v27);
        v44 = v51;
        v27;
        v45 = v44;
        if ((v44 & 0x2000000000000000) == 0)
        {
LABEL_21:
          if ((v24 & 0x1000000000000000) != 0)
          {
            v46 = ((v44 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v47 = v24 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v46 = _StringObject.sharedUTF8.getter(v24, v45);
            if (!v46)
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v47 = v52;
          }

          goto LABEL_28;
        }
      }

      else
      {
        v45 = v27;
        if ((v44 & 0x2000000000000000) == 0)
        {
          goto LABEL_21;
        }
      }

      v47 = HIBYTE(v44) & 0xF;
      v69[0] = v24;
      v69[1] = v44 & 0xFFFFFFFFFFFFFFLL;
      v46 = v69;
LABEL_28:
      _swift_stdlib_fwrite_stdout(v46, 1uLL, v47);
      v27;
      v50 = v45;
LABEL_29:
      v50;
      a6(v70, &v71, qword_1EEEAC6F8, &unk_1EEEBBFD0, &protocol witness table for _TeeStream<A, B>);
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      if (!v26)
      {
        v53 = v71;
        v14 = v72;
        v13 = v65;
        v12 = v66;
        v8 = v63;
        v7 = v64;
        goto LABEL_36;
      }

      a3;
      --v26;
      v25 += 32;
      v24 = v10;
      v27 = a3;
    }
  }

  v53 = 0;
LABEL_36:
  v54 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v54 = v53 & 0xFFFFFFFFFFFFLL;
  }

  if (!v54 && (v53 & ~v14 & 0x2000000000000000) == 0)
  {
    v7;
    v14;
    v71 = v8;
    v72 = v7;
    goto LABEL_48;
  }

  if ((v14 & 0x2000000000000000) != 0)
  {
    if ((v7 & 0x2000000000000000) != 0)
    {
      v56 = specialized _SmallString.init(_:appending:)(v53, v14, v8, v7);
      if ((v58 & 1) == 0)
      {
        v61 = v56;
        v62 = v57;
        v14;
        v71 = v61;
        v72 = v62;
        goto LABEL_48;
      }

      goto LABEL_46;
    }
  }

  else if ((v7 & 0x2000000000000000) != 0)
  {
LABEL_46:
    v55 = HIBYTE(v7) & 0xF;
    goto LABEL_47;
  }

  v55 = v8 & 0xFFFFFFFFFFFFLL;
LABEL_47:
  _StringGuts.append(_:)(v8, v7, 0, v55, v15, v16, v17, v18, v19, v20, v21, v22);
LABEL_48:
  v59._countAndFlagsBits = v8;
  v59._object = v7;
  _Stdout.write(_:)(v59);
  _swift_stdlib_funlockfile_stdout();
  v60 = v72;
  v12(v71, v72);
  v60;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed String) -> ())?(v12, v13);
}

void specialized _debugPrint<A>(_:separator:terminator:to:)(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t *a6)
{
  v6 = a6;
  v127 = *(a1 + 16);
  if (v127)
  {
    v7 = 0;
    v8 = 0;
    v126 = a1 + 32;
    v9 = 0xE000000000000000;
    while (1)
    {
      outlined init with copy of Any(v126 + 32 * v7, v132);
      v10 = *v6;
      v11 = v6[1];
      v12 = HIBYTE(v11) & 0xF;
      v13 = *v6 & 0xFFFFFFFFFFFFLL;
      if ((v11 & 0x2000000000000000) != 0)
      {
        v14 = HIBYTE(v11) & 0xF;
      }

      else
      {
        v14 = *v6 & 0xFFFFFFFFFFFFLL;
      }

      if (!v14 && (v10 & ~v11 & 0x2000000000000000) == 0)
      {
        v6[1];
        *v6 = v8;
        v6[1] = v9;
        goto LABEL_121;
      }

      v15 = (v9 & 0x2000000000000000) == 0;
      v16 = HIBYTE(v9) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        break;
      }

      if ((v9 & 0x2000000000000000) == 0)
      {
        v17 = v8 & 0xFFFFFFFFFFFFLL;
        v15 = 1;
        goto LABEL_13;
      }

      v50 = v12 + v16;
      if (v12 + v16 >= 0x10)
      {
        v15 = 0;
        v17 = v8 & 0xFFFFFFFFFFFFLL;
        v18 = HIBYTE(v9) & 0xF;
        goto LABEL_14;
      }

      v75 = v7;
      if (v16)
      {
        v76 = 0;
        v77 = 0;
        v78 = 8 * v12;
        v79 = 8 * v16;
        v80 = v6[1];
        do
        {
          v81 = v9 >> (v76 & 0x38);
          if (v77 < 8)
          {
            v81 = v8 >> v76;
          }

          v82 = (v81 << (v78 & 0x38)) | ((-255 << (v78 & 0x38)) - 1) & v80;
          v83 = (v81 << v78) | ((-255 << v78) - 1) & v10;
          if (v12 <= 7)
          {
            v10 = v83;
          }

          else
          {
            v80 = v82;
          }

          ++v12;
          v78 += 8;
          v76 += 8;
          ++v77;
        }

        while (v79 != v76);
      }

      else
      {
        v80 = v6[1];
      }

      v6[1];
      v9;
      v92 = 0xE000000000000000;
      if (v10 & 0x8080808080808080 | v80 & 0x80808080808080)
      {
        v92 = 0xA000000000000000;
      }

      *v6 = v10;
      v6[1] = v92 & 0xFF00000000000000 | (v50 << 56) | v80 & 0xFFFFFFFFFFFFFFLL;
      v7 = v75;
LABEL_121:
      ++v7;
      _debugPrint_unlocked<A, B>(_:_:)(v132, v6, qword_1EEEAC6F8, &type metadata for String, &protocol witness table for String);
      __swift_destroy_boxed_opaque_existential_1Tm(v132);
      if (v7 == v127)
      {
        goto LABEL_144;
      }

      v9 = a3;
      a3;
      v8 = a2;
    }

    v17 = v8 & 0xFFFFFFFFFFFFLL;
    v18 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
LABEL_13:
      v18 = v17;
    }

LABEL_14:
    __n = HIBYTE(v9) & 0xF;
    v123 = v17;
    v128 = v15;
    if ((v9 & 0x1000000000000000) != 0)
    {
      v20 = v18;
      swift_bridgeObjectRetain_n(v9, 2);
      v104._rawBits = 1;
      v105._rawBits = (v18 << 16) | 1;
      v106._rawBits = _StringGuts.validateScalarRange(_:)(v104, v105, v8, v9)._rawBits;
      if (v106._rawBits < 0x10000)
      {
        v106._rawBits |= 3;
      }

      v18 = String.UTF8View.distance(from:to:)(v106, v107);
      v9;
      if ((v11 & 0x1000000000000000) == 0)
      {
LABEL_16:
        v21 = __OFADD__(v14, v18);
        v22 = v14 + v18;
        if (v21)
        {
          goto LABEL_150;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v9;
      v20 = v18;
      if ((v11 & 0x1000000000000000) == 0)
      {
        goto LABEL_16;
      }
    }

    v108 = String.UTF8View._foreignCount()();
    v22 = v108 + v18;
    if (__OFADD__(v108, v18))
    {
LABEL_150:
      __break(1u);
LABEL_151:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_17:
    v129 = v7;
    v23 = v10 & ~v11;
    if ((v23 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v11 & 0xFFFFFFFFFFFFFFFLL))
    {
      v24 = _StringGuts.nativeUnusedCapacity.getter(v10, v11);
      if (v25)
      {
        goto LABEL_153;
      }

      if (v22 > 15)
      {
        goto LABEL_28;
      }

      if ((v11 & 0x2000000000000000) == 0)
      {
        if (v24 < v18)
        {
          goto LABEL_23;
        }

LABEL_28:
        v28 = v23 & 0x2000000000000000;
        v29 = _StringGuts.nativeUnusedCapacity.getter(v10, v11);
        if ((v30 & 1) != 0 || v29 < v18)
        {
          v31 = v20;
          if (v28)
          {
            swift_isUniquelyReferenced_nonNull_native(v11 & 0xFFFFFFFFFFFFFFFLL);
          }

          v32 = 2 * _StringGuts.nativeCapacity.getter(v10, v11);
          if (v33)
          {
            v32 = 0;
          }

          if (v32 > v22)
          {
            v22 = v32;
          }
        }

        else
        {
          v31 = v20;
          if (v28)
          {
            v6 = a6;
            if (swift_isUniquelyReferenced_nonNull_native(v11 & 0xFFFFFFFFFFFFFFFLL))
            {
              goto LABEL_80;
            }

            goto LABEL_37;
          }
        }

        v6 = a6;
LABEL_37:
        v34 = _StringGuts.uniqueNativeCapacity.getter();
        if (v35)
        {
          v36 = v6[1];
          if ((v36 & 0x1000000000000000) != 0)
          {
            v37 = String.UTF8View._foreignCount()();
          }

          else if ((v36 & 0x2000000000000000) != 0)
          {
            v37 = HIBYTE(v36) & 0xF;
          }

          else
          {
            v37 = *v6 & 0xFFFFFFFFFFFFLL;
          }
        }

        else
        {
          v37 = 2 * v34;
        }

        if (v37 <= v22)
        {
          v37 = v22;
        }

        v51 = v6[1];
        if ((v51 & 0x1000000000000000) != 0)
        {
          _StringGuts._foreignGrow(_:)(v37);
        }

        else
        {
          v52 = *v6;
          if ((v51 & 0x2000000000000000) != 0)
          {
            v61 = HIBYTE(v51) & 0xF;
            __src = *v6;
            v131 = v51 & 0xFFFFFFFFFFFFFFLL;
            v62 = v61 | 0xC000000000000000;
            if ((v51 & 0x4000000000000000) == 0)
            {
              v62 = HIBYTE(v51) & 0xF;
            }

            v60 = v62 | 0x3000000000000000;
            v63 = _allocateStringStorage(codeUnitCapacity:)(v37);
            v59 = v63;
            *(v63 + 16) = v64;
            *(v63 + 24) = v60;
            if (v64 < 0)
            {
              *((v63 + (v64 & 0xFFFFFFFFFFFFLL) + 39) & 0xFFFFFFFFFFFFFFF8) = 0;
              v60 = *(v63 + 24);
            }

            v65 = (v63 + 32);
            *(v59 + 32 + (v60 & 0xFFFFFFFFFFFFLL)) = 0;
            if (&__src < v59 + 32 + v61 && v65 < &__src + v61)
            {
              goto LABEL_151;
            }

            memcpy(v65, &__src, HIBYTE(v51) & 0xF);
          }

          else
          {
            if ((v52 & 0x1000000000000000) != 0)
            {
              v53 = ((v51 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v54 = v52 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v111 = v37;
              v53 = _StringObject.sharedUTF8.getter(*v6, v6[1]);
              v37 = v111;
              v54 = v112;
            }

            v55 = v54 | 0xC000000000000000;
            if (v52 >= 0)
            {
              v55 = v54;
            }

            v56 = v55 | 0x3000000000000000;
            v57 = _allocateStringStorage(codeUnitCapacity:)(v37);
            v59 = v57;
            *(v57 + 16) = v58;
            *(v57 + 24) = v56;
            if (v58 < 0)
            {
              *((v57 + (v58 & 0xFFFFFFFFFFFFLL) + 39) & 0xFFFFFFFFFFFFFFF8) = 0;
              v56 = *(v57 + 24);
            }

            *(v57 + 32 + (v56 & 0xFFFFFFFFFFFFLL)) = 0;
            specialized UnsafeMutablePointer.initialize(from:count:)(v53, v54, (v57 + 32));
            v60 = *(v59 + 24);
          }

          v51;
          *v6 = v60;
          v6[1] = v59;
        }

LABEL_80:
        if ((v9 & 0x1000000000000000) != 0)
        {
          _StringGuts._foreignAppendInPlace(_:)(v8, v9, 0, v31);
          swift_bridgeObjectRelease_n(v9, 2);
LABEL_120:
          v7 = v129;
          goto LABEL_121;
        }

        if (!v128)
        {
          __src = v8;
          v131 = v9 & 0xFFFFFFFFFFFFFFLL;
          v9;
          v84 = v6[1] & 0xFFFFFFFFFFFFFFFLL;
          v85 = v84 + 32;
          v86 = (v84 + 32 + (*(v84 + 0x18) & 0xFFFFFFFFFFFFLL));
          if (&__src < &v86[__n] && v86 < &__src + __n)
          {
            goto LABEL_151;
          }

          memcpy(v86, &__src, __n);
          v87 = *(v84 + 24);
          v88 = (v87 & 0xFFFFFFFFFFFFLL) + __n;
          v89 = v87 > -1 || (v9 & 0x4000000000000000) == 0;
          v90 = v88 | 0xC000000000000000;
          if (v89)
          {
            v90 = v88;
          }

          *(v84 + 24) = v90 | 0x3000000000000000;
          *(v85 + (v90 & 0xFFFFFFFFFFFFLL)) = 0;
          v91 = *(v84 + 16);
          if (v91 < 0)
          {
            v93 = ((v85 + (v91 & 0xFFFFFFFFFFFFLL) + 7) & 0x7FFFFFFFFFFFFFF8);
            v94 = *v93;
            *v93 = 0;
            v9;
            v94;
          }

          else
          {
            v9;
          }

          *v6 = *(v84 + 24);
          goto LABEL_120;
        }

        if ((v8 & 0x1000000000000000) != 0)
        {
          v66 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if (!v123)
          {
LABEL_85:
            v9;
            v67 = v6[1] & 0xFFFFFFFFFFFFFFFLL;
            v68 = v67 + 32;
            specialized UnsafeMutablePointer.initialize(from:count:)(v66, v123, (v67 + 32 + (*(v67 + 0x18) & 0xFFFFFFFFFFFFLL)));
            v69 = *(v67 + 16);
            v70 = *(v67 + 24);
            v71 = (v70 & 0xFFFFFFFFFFFFLL) + v123;
            if (((v70 & v8 & 0x8000000000000000) != 0) != v21)
            {
              v71 |= 0xC000000000000000;
            }

            v72 = v71 | 0x3000000000000000;
            *(v67 + 24) = v71 | 0x3000000000000000;
            *(v68 + (v71 & 0xFFFFFFFFFFFFLL)) = 0;
            if (v69 < 0)
            {
              v73 = ((v68 + (v69 & 0xFFFFFFFFFFFFLL) + 7) & 0x7FFFFFFFFFFFFFF8);
              v74 = *v73;
              *v73 = 0;
              v74;
              v72 = *(v67 + 24);
            }

            *v6 = v72;
            v9;
            goto LABEL_120;
          }
        }

        else
        {
          v113 = _StringObject.sharedUTF8.getter(v8, v9);
          if (v114 < v123)
          {
LABEL_152:
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v66 = v113;
          if (!v123)
          {
            goto LABEL_85;
          }
        }

        if (!v66)
        {
          goto LABEL_152;
        }

        goto LABEL_85;
      }
    }

    else
    {
      if (v22 > 15)
      {
        goto LABEL_28;
      }

      if ((v11 & 0x2000000000000000) == 0)
      {
LABEL_23:
        if ((v11 & 0x1000000000000000) != 0)
        {
          v10 = _StringGuts._foreignConvertedToSmall()(v10, v11);
          v27 = v103;
        }

        else
        {
          if ((v10 & 0x1000000000000000) != 0)
          {
            v26 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v26 = _StringObject.sharedUTF8.getter(v10, v11);
            v13 = v115;
          }

          closure #1 in _StringGuts._convertedToSmall()(v26, v13, &__src, v19);
          v10 = __src;
          v27 = v131;
        }

LABEL_44:
        v9;
        if (v128)
        {
          if ((v9 & 0x1000000000000000) != 0)
          {
            v8 = _StringGuts._foreignConvertedToSmall()(v8, v9);
            v39 = v116;
            v9;
          }

          else
          {
            v109 = v123;
            if ((v8 & 0x1000000000000000) != 0)
            {
              v110 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v110 = _StringObject.sharedUTF8.getter(v8, v9);
            }

            closure #1 in _StringGuts._convertedToSmall()(v110, v109, &__src, v38);
            v9;
            v8 = __src;
            v39 = v131;
          }
        }

        else
        {
          v9;
          v39 = v9;
        }

        v40 = HIBYTE(v27) & 0xF;
        v41 = HIBYTE(v39) & 0xF;
        v42 = v41 + v40;
        if (v41 + v40 > 0xF)
        {
LABEL_153:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v9;
        if (v41)
        {
          v43 = 0;
          v44 = 0;
          v45 = 8 * v40;
          do
          {
            v46 = v39 >> (v43 & 0x38);
            if (v44 < 8)
            {
              v46 = v8 >> v43;
            }

            v47 = (v46 << (v45 & 0x38)) | ((-255 << (v45 & 0x38)) - 1) & v27;
            v48 = (v46 << v45) | ((-255 << v45) - 1) & v10;
            if (v40 <= 7)
            {
              v10 = v48;
            }

            else
            {
              v27 = v47;
            }

            ++v40;
            v45 += 8;
            v43 += 8;
            ++v44;
          }

          while (8 * v41 != v43);
        }

        v9;
        v11;
        v49 = 0xE000000000000000;
        if (v10 & 0x8080808080808080 | v27 & 0x80808080808080)
        {
          v49 = 0xA000000000000000;
        }

        v6 = a6;
        *a6 = v10;
        a6[1] = v49 & 0xFF00000000000000 | (v42 << 56) | v27 & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_120;
      }
    }

    v27 = v11;
    goto LABEL_44;
  }

  0xE000000000000000;
LABEL_144:
  v117 = v6[1];
  v118 = HIBYTE(v117) & 0xF;
  if ((v117 & 0x2000000000000000) == 0)
  {
    v118 = *v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v118 || (*v6 & ~v117 & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(a4, a5, v95, v96, v97, v98, v99, v100, v101, v102);
  }

  else
  {
    a5;
    v117;
    *v6 = a4;
    v6[1] = a5;
  }
}

void specialized _print<A>(_:separator:terminator:to:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(uint64_t *, uint64_t, Class *, ValueMetadata *, _UNKNOWN **))
{
  v23._countAndFlagsBits = a4;
  v23._object = a5;
  _swift_stdlib_flockfile_stdout();
  v12 = *(a1 + 16);
  if (v12)
  {
    outlined init with copy of Any(a1 + 32, v25);
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    _Stdout.write(_:)(v13);
    a7(v25, a6, qword_1EEEAC6F8, &type metadata for _Stdout, &protocol witness table for _Stdout);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v14 = v12 - 1;
    if (v14)
    {
      if ((a3 & 0x2000000000000000) != 0)
      {
        v15 = HIBYTE(a3) & 0xF;
      }

      else
      {
        v15 = a2 & 0xFFFFFFFFFFFFLL;
      }

      v16 = a1 + 64;
      do
      {
        outlined init with copy of Any(v16, v25);
        if (!v15)
        {
          goto LABEL_10;
        }

        a3;
        v19 = a3;
        v20 = a2;
        if ((a3 & 0x1000000000000000) != 0)
        {
          v20 = specialized static String._copying(_:)(a2, a3);
          v19 = v21;
          a3;
          if ((v19 & 0x2000000000000000) == 0)
          {
LABEL_14:
            if ((v20 & 0x1000000000000000) != 0)
            {
              v18 = ((v19 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v17 = v20 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v18 = _StringObject.sharedUTF8.getter(v20, v19);
              if (!v18)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

              v17 = v22;
            }

            goto LABEL_9;
          }
        }

        else if ((a3 & 0x2000000000000000) == 0)
        {
          goto LABEL_14;
        }

        v17 = HIBYTE(v19) & 0xF;
        v24[0] = v20;
        v24[1] = v19 & 0xFFFFFFFFFFFFFFLL;
        v18 = v24;
LABEL_9:
        _swift_stdlib_fwrite_stdout(v18, 1uLL, v17);
        v19;
LABEL_10:
        a7(v25, a6, qword_1EEEAC6F8, &type metadata for _Stdout, &protocol witness table for _Stdout);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        v16 += 32;
        --v14;
      }

      while (v14);
    }
  }

  _Stdout.write(_:)(v23);
  _swift_stdlib_funlockfile_stdout();
}

uint64_t _print<A>(_:separator:terminator:to:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t *, uint64_t, Class *, uint64_t, uint64_t))
{
  (*(a8 + 8))(a7, a8);
  v15 = *(a1 + 16);
  v16 = *(a8 + 24);
  if (v15)
  {
    outlined init with copy of Any(a1 + 32, v22);
    v16(0, 0xE000000000000000, a7, a8);
    0xE000000000000000;
    a9(v22, a6, qword_1EEEAC6F8, a7, a8);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v17 = v15 - 1;
    if (v17)
    {
      v18 = a1 + 64;
      do
      {
        a3;
        outlined init with copy of Any(v18, v22);
        v16(a2, a3, a7, a8);
        a3;
        a9(v22, a6, qword_1EEEAC6F8, a7, a8);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        v18 += 32;
        --v17;
      }

      while (v17);
    }
  }

  v16(a4, a5, a7, a8);
  return (*(a8 + 16))(a7, a8);
}

Swift::UInt64 __swiftcall SystemRandomNumberGenerator.next()()
{
  __buf = 0;
  swift_stdlib_random(&__buf, 8uLL);
  return __buf;
}

uint64_t protocol witness for RandomNumberGenerator.next() in conformance SystemRandomNumberGenerator()
{
  __buf = 0;
  swift_stdlib_random(&__buf, 8uLL);
  return __buf;
}

uint64_t Range.init(uncheckedBounds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a2;
  v53 = a5;
  swift_getTupleTypeMetadata2(0, a3, a3, "lower upper ", 0);
  v9 = v8;
  v10 = *(v8 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v49 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v48 = &v44 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v52 = &v44 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v51 = &v44 - v22;
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v44 - v24;
  v26 = *(a3 - 1);
  v27 = *(v26 + 32);
  v27(&v44 - v24, a1, a3);
  v28 = *(v9 + 48);
  v27(&v25[v28], v50, a3);
  if (((*(a4 + 24))(v25, &v25[v28], a3, a4) & 1) == 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v47 = a4;
  v45 = *(v10 + 16);
  v29 = v51;
  v45(v51, v25, v9);
  v50 = *(v9 + 48);
  v46 = *(v10 + 32);
  v44 = v27;
  v30 = v26;
  v31 = v52;
  v46();
  v32 = *(v9 + 48);
  v33 = v48;
  v34 = v29;
  v35 = v44;
  v44(v48, v34, a3);
  v35(&v33[*(v9 + 48)], &v31[v32], a3);
  v36 = v35;
  v37 = v49;
  v45(v49, v33, v9);
  v38 = *(v9 + 48);
  v36(v53, v37, a3);
  v39 = *(v30 + 8);
  v39(&v37[v38], a3);
  (v46)(v37, v33, v9);
  v40 = *(v9 + 48);
  v42 = type metadata accessor for Range(0, a3, v47, v41);
  v36(v53 + *(v42 + 36), &v37[v40], a3);
  v39(v37, a3);
  v39(v52, a3);
  return (v39)(&v51[v50], a3);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance <> ClosedRange<A>@<X0>(unsigned __int16 *a1@<X0>, int *a2@<X2>, void (*a3)(uint64_t)@<X3>, uint64_t a4@<X8>, uint64_t a5@<X1>)
{
  v9 = *(a1 - 1);
  v13 = *(a5 - 16);
  (*(v9 + 16))(a4, v5, a1);
  v14 = vextq_s8(v13, v13, 8uLL);
  WitnessTable = swift_getWitnessTable(a2, a1, &v14);
  type metadata accessor for IndexingIterator(0, a1, WitnessTable, v11);
  a3(a1);
  return (*(v9 + 8))(v5, a1);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance <> ClosedRange<A>(unsigned __int16 *a1, uint64_t a2, int *a3)
{
  v6 = vextq_s8(*(a2 - 16), *(a2 - 16), 8uLL);
  WitnessTable = swift_getWitnessTable(a3, a1, &v6);
  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t Range<>._customContainsEquatableElement(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a2 + 16);
  v8 = *(a3 + 8);
  if ((*(v8 + 24))(v4, a1, v7, v8))
  {
    v9 = (*(v8 + 16))(a1, v4 + *(a2 + 36), v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

__objc2_class **protocol witness for Sequence._copyToContiguousArray() in conformance <> ClosedRange<A>(unsigned __int16 *a1, uint64_t a2, int *a3)
{
  v8 = vextq_s8(*(a2 - 16), *(a2 - 16), 8uLL);
  WitnessTable = swift_getWitnessTable(a3, a1, &v8);
  v6 = specialized Collection._copyToContiguousArray()(v3, a1, WitnessTable);
  (*(*(a1 - 1) + 8))(v3, a1);
  return v6;
}

uint64_t Range<>.index(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v66 = a4;
  v72 = a5;
  v73 = a1;
  v9 = *(a2 + 16);
  v74 = a3;
  swift_getAssociatedTypeWitness(0, a3, v9, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v11 = v10;
  v70 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10, v12);
  v69 = &v59 - v13;
  v67 = *(*(swift_getAssociatedConformanceWitness(a3, v9, v11, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  v71 = v11;
  swift_getAssociatedTypeWitness(0, v67, v11, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v65 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v64 = &v59 - v16;
  swift_getTupleTypeMetadata2(0, v9, v9, "lower upper ", 0);
  v62 = *(v17 - 8);
  v63 = v17;
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v60 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = &v59 - v23;
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v28 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v32 = &v59 - v31;
  v68 = a2;
  v61 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v30, v33);
  v35 = &v59 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v36;
  v38 = *(v36 + 16);
  v38(v32, v6, v9);
  v38(v28, v6 + *(a2 + 36), v9);
  if (((*(v74[1] + 3))(v32, v28, v9) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v39 = *(v37 + 32);
  v39(v24, v32, v9);
  v40 = v63;
  v41 = v28;
  v42 = v9;
  v39(&v24[*(v63 + 48)], v41, v9);
  v43 = v62;
  v44 = v60;
  (*(v62 + 16))(v60, v24, v40);
  v59 = *(v40 + 48);
  v39(v35, v44, v42);
  v45 = *(v37 + 8);
  v45(&v44[v59], v42);
  (*(v43 + 32))(v44, v24, v40);
  v46 = *(v40 + 48);
  v47 = v68;
  v39(&v35[*(v68 + 36)], &v44[v46], v42);
  v48 = v44;
  v49 = v42;
  v45(v48, v42);
  v50 = v74;
  v75[0] = v74;
  v75[1] = v66;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> Range<A>, v47, v75);
  specialized Collection._failEarlyRangeCheck(_:bounds:)(v73, v35, v47, WitnessTable);
  (*(v61 + 8))(v35, v47);
  v52 = v67;
  v53 = v71;
  v54 = v65;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v67, v71, v65, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v56 = v64;
  (*(AssociatedConformanceWitness + 8))(&qword_1806729C0, 512, v54, AssociatedConformanceWitness);
  v57 = v69;
  (v52[3])(v56, v53, v52);
  (v50[6])(v57, v49, v50);
  return (*(v70 + 8))(v57, v53);
}

uint64_t Range<>.index(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a2;
  v25 = a4;
  v6 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, a3, v6, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v8 = v7;
  v24 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v23 - v10;
  v12 = *(*(swift_getAssociatedConformanceWitness(a3, v6, v8, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v12, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v23 - v16;
  v18 = *(a3 + 8);
  v19 = *(v18 + 40);
  v28 = a1;
  v20 = v27;
  if ((v19(a1) & 1) == 0 || ((*(v18 + 24))(v28, v20 + *(v26 + 36), v6, v18) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v8, v14, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&unk_18071E0B0, 257, v14, AssociatedConformanceWitness);
  (*(v12 + 24))(v17, v8, v12);
  (*(a3 + 48))(v11, v6, a3);
  return (*(v24 + 8))(v11, v8);
}

uint64_t Range<>.index(_:offsetBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27[2] = a1;
  v27[0] = a3;
  v10 = *(a3 + 16);
  swift_getAssociatedTypeWitness(0, a4, v10, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v12 = v11;
  v13 = *(v11 - 8);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = v27 - v16;
  v28 = a2;
  v18 = *(a5 + 8);
  v19 = *(v18 + 88);
  v22 = lazy protocol witness table accessor for type Int and conformance Int(v15, v20, v21);
  v23 = v18;
  v24 = v27[1];
  v19(&v28, &type metadata for Int, v22, v12, v23);
  (*(a4 + 48))(v17, v10, a4);
  (*(v13 + 8))(v17, v12);
  v25 = *(a4 + 8);
  if (((*(v25 + 32))(a6, v24, v10, v25) & 1) == 0 || (result = (*(v25 + 24))(a6, v24 + *(v27[0] + 36), v10, v25), (result & 1) == 0))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t Range<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return (*(*(a2 - 8) + 16))(a3, a1, a2);
}

{
  if ((Range.contains(_:)(a1, a2) & 1) == 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = *(*(*(a2 + 16) - 8) + 16);

  return v6(a3, a1);
}

uint64_t Range<>._customIndexOfEquatableElement(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = *(a2 + 16);
  v10 = *(a3 + 8);
  if ((*(v10 + 24))(v5, a1, v9, v10) & 1) != 0 && ((*(v10 + 16))(a1, v5 + *(a2 + 36), v9, v10))
  {
    v11 = *(v9 - 8);
    (*(v11 + 16))(a4, a1, v9);
    v12 = 0;
  }

  else
  {
    v11 = *(v9 - 8);
    v12 = 1;
  }

  (*(v11 + 56))(a4, v12, 1, v9);
  v15 = type metadata accessor for Optional(0, v9, v13, v14);
  v16 = *(*(v15 - 8) + 56);

  return v16(a4, 0, 1, v15);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance <> Range<A>(void *a1, uint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc(0x28, 0xCCB6uLL);
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = Range<>.subscript.read(v6, a2, a3);
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

void (*Range<>.subscript.read(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  if ((Range.contains(_:)(a2, a3) & 1) == 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

uint64_t protocol witness for Collection.index(after:) in conformance <> Range<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v67 = a4;
  v68 = a1;
  v62 = a3;
  v7 = *(a2 + 16);
  v69 = *(a3 - 8);
  swift_getAssociatedTypeWitness(0, v69, v7, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v9 = v8;
  v65 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8, v10);
  v64 = &v54 - v11;
  v61 = *(*(swift_getAssociatedConformanceWitness(v69, v7, v9, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  v66 = v9;
  swift_getAssociatedTypeWitness(0, v61, v9, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v60 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v59 = &v54 - v14;
  swift_getTupleTypeMetadata2(0, v7, v7, "lower upper ", 0);
  v57 = *(v15 - 8);
  v58 = v15;
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v55 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = &v54 - v21;
  v24 = MEMORY[0x1EEE9AC00](v20, v23);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v24, v27);
  v30 = &v54 - v29;
  v63 = a2;
  v56 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v28, v31);
  v33 = &v54 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v34;
  v36 = *(v34 + 16);
  v36(v30, v6, v7);
  v36(v26, v6 + *(a2 + 36), v7);
  if (((*(v69[1] + 3))(v30, v26, v7) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v37 = *(v35 + 32);
  v38 = v30;
  v39 = v7;
  v37(v22, v38, v7);
  v40 = v58;
  v37(&v22[*(v58 + 48)], v26, v7);
  v41 = v57;
  v42 = v55;
  (*(v57 + 16))(v55, v22, v40);
  v43 = *(v40 + 48);
  v37(v33, v42, v39);
  v54 = *(v35 + 8);
  v54(&v42[v43], v39);
  (*(v41 + 32))(v42, v22, v40);
  v44 = v63;
  v37(&v33[*(v63 + 36)], &v42[*(v40 + 48)], v39);
  v45 = v42;
  v46 = v39;
  v54(v45, v39);
  Collection._failEarlyRangeCheck(_:bounds:)(v68);
  (*(v56 + 8))(v33, v44);
  v47 = v60;
  v48 = v61;
  v49 = v66;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v61, v66, v60, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v51 = v59;
  (*(AssociatedConformanceWitness + 8))(&qword_1806729C0, 512, v47, AssociatedConformanceWitness);
  v52 = v64;
  (v48[3])(v51, v49, v48);
  (v69[6])(v52, v46);
  return (*(v65 + 8))(v52, v49);
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance <> Range<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v5 = *(a2 + 16);
  v68 = *(a3 - 8);
  swift_getAssociatedTypeWitness(0, v68, v5, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v7 = v6;
  v64 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6, v8);
  v63 = &v53 - v9;
  v60 = *(*(swift_getAssociatedConformanceWitness(v68, v5, v7, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  v65 = v7;
  swift_getAssociatedTypeWitness(0, v60, v7, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v59 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v58 = &v53 - v12;
  swift_getTupleTypeMetadata2(0, v5, v5, "lower upper ", 0);
  v14 = v13;
  v54 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v53 - v21;
  v55 = *(a2 - 8);
  v24 = MEMORY[0x1EEE9AC00](v20, v23);
  v53 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v5 - 1);
  v28 = MEMORY[0x1EEE9AC00](v24, v27);
  v30 = &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v28, v31);
  v34 = &v53 - v33;
  MEMORY[0x1EEE9AC00](v32, v35);
  v56 = &v53 - v36;
  v57 = v26;
  v37 = *(v26 + 32);
  v66 = a1;
  v37();
  Range<>.startIndex.getter(a2, v34);
  v62 = a2;
  Range<>.endIndex.getter(a2, v30);
  if (((*(v68[1] + 3))(v34, v30, v5) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (v37)(v22, v34, v5);
  (v37)(&v22[*(v14 + 48)], v30, v5);
  v38 = v54;
  (*(v54 + 16))(v18, v22, v14);
  v39 = *(v14 + 48);
  v40 = v53;
  (v37)(v53, v18, v5);
  v67 = v37;
  v41 = v22;
  v42 = *(v57 + 8);
  v42(&v18[v39], v5);
  (*(v38 + 32))(v18, v41, v14);
  v43 = v62;
  (v67)(&v40[*(v62 + 36)], &v18[*(v14 + 48)], v5);
  v42(v18, v5);
  v44 = v42;
  v45 = v56;
  Collection._failEarlyRangeCheck(_:bounds:)(v56);
  (*(v55 + 8))(v40, v43);
  v46 = v59;
  v47 = v60;
  v48 = v65;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v60, v65, v59, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v50 = v58;
  (*(AssociatedConformanceWitness + 8))(&qword_1806729C0, 512, v46, AssociatedConformanceWitness);
  v51 = v63;
  (v47[3])(v50, v48, v47);
  (v68[6])(v51, v5);
  (*(v64 + 8))(v51, v48);
  return v44(v45, v5);
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance <> Range<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 32))(v9, a1, v6);
  Range<>.index(before:)(v9, a2, v5, a1);
  return (*(v7 + 8))(v9, v6);
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance <> ClosedRange<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int16 *a4@<X3>, int *a5@<X5>, uint64_t a6@<X8>, uint64_t a7@<X4>)
{
  v14 = vextq_s8(*(a7 - 16), *(a7 - 16), 8uLL);
  WitnessTable = swift_getWitnessTable(a5, a4, &v14);
  return RandomAccessCollection.index(_:offsetBy:limitedBy:)(a1, a2, a3, a4, WitnessTable, a6);
}

uint64_t Range<>.init(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v53 = a1;
  v57 = a4;
  swift_getTupleTypeMetadata2(0, a2, a2, "lower upper ", 0);
  v7 = *(v6 - 8);
  v55 = v6;
  v56 = v7;
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v54 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v58 = &v49 - v12;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v14 = v13;
  v52 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v49 - v16;
  v18 = *(*(swift_getAssociatedConformanceWitness(a3, a2, v14, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v18, v14, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v20 = v19;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = &v49 - v23;
  v50 = *(a2 - 1);
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v28 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v29);
  v31 = &v49 - v30;
  v51 = *(a3 + 8);
  v33 = type metadata accessor for ClosedRange(0, a2, v51, v32);
  v49 = *(v33 + 36);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v18, v14, v20, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_1806729C0, 512, v20, AssociatedConformanceWitness);
  (*(v18 + 24))(v24, v14, v18);
  v35 = v53;
  (*(a3 + 48))(v17, a2, a3);
  (*(v52 + 8))(v17, v14);
  v36 = v50;
  (*(v50 + 16))(v28, v35, a2);
  (*(*(v33 - 8) + 8))(v35, v33);
  v37 = *(v36 + 32);
  v38 = v58;
  v37(v58, v28, a2);
  v39 = v55;
  v37(&v38[*(v55 + 48)], v31, a2);
  v40 = v56;
  v41 = v54;
  (*(v56 + 16))(v54, v38, v39);
  v42 = *(v39 + 48);
  v43 = v57;
  v37(v57, v41, a2);
  v44 = *(v36 + 8);
  v44(&v41[v42], a2);
  (*(v40 + 32))(v41, v58, v39);
  v45 = *(v39 + 48);
  v47 = type metadata accessor for Range(0, a2, v51, v46);
  v37(&v43[*(v47 + 36)], &v41[v45], a2);
  return (v44)(v41, a2);
}

uint64_t ClosedRange.clamped(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v5 = a2;
  v52 = a3;
  v7 = *(a2 + 16);
  swift_getTupleTypeMetadata2(0, v7, v7, "lower upper ", 0);
  v9 = *(v8 - 8);
  v50 = v8;
  v51 = v9;
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v49 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v48 = &v45 - v15;
  v16 = *(v7 - 1);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v47 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v45 - v21;
  v23 = *(v5 + 24);
  v45 = *(v23 + 40);
  v24 = v45(a1, v4, v7, v23);
  v53 = v22;
  v54 = v5;
  if (v24)
  {
    v25 = v16;
    v46 = *(v16 + 16);
    v46(v22, a1, v7);
    v26 = *(v23 + 16);
  }

  else
  {
    v27 = *(v5 + 36);
    v26 = *(v23 + 16);
    v28 = v26(a1 + v27, v4, v7, v23);
    v25 = v16;
    v29 = *(v16 + 16);
    v46 = v29;
    if (v28)
    {
      v30 = a1 + v27;
      v31 = v53;
    }

    else
    {
      v31 = v53;
      v30 = v4;
    }

    v29(v31, v30, v7);
    v5 = v54;
  }

  v32 = *(v5 + 36);
  if (v26(a1 + v32, v4 + v32, v7, v23))
  {
    v33 = a1 + v32;
LABEL_12:
    v34 = v47;
    v35 = v47;
    goto LABEL_13;
  }

  if ((v45(a1, v4 + v32, v7, v23) & 1) == 0)
  {
    v33 = v4 + v32;
    goto LABEL_12;
  }

  v34 = v47;
  v35 = v47;
  v33 = a1;
LABEL_13:
  v46(v35, v33, v7);
  v36 = v25;
  v37 = *(v25 + 32);
  v38 = v48;
  v37(v48, v53, v7);
  v39 = v50;
  v37(&v38[*(v50 + 48)], v34, v7);
  v40 = v51;
  v41 = v49;
  (*(v51 + 16))(v49, v38, v39);
  v53 = *(v39 + 48);
  v42 = v52;
  v37(v52, v41, v7);
  v43 = *(v36 + 8);
  v43(&v53[v41], v7);
  (*(v40 + 32))(v41, v38, v39);
  v37(&v42[*(v54 + 36)], &v41[*(v39 + 48)], v7);
  return (v43)(v41, v7);
}

uint64_t specialized Range.description.getter(unint64_t a1, uint64_t a2)
{
  v5 = _StringGuts.init(_initialCapacity:)(7);
  v7 = v5;
  v8 = v6;
  v130 = v5;
  v131 = v6;
  v9 = HIBYTE(v6) & 0xF;
  v10 = v5 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v11 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11 && (v5 & ~v6 & 0x2000000000000000) == 0)
  {
    v6;
    v19 = 0xE000000000000000;
    v130 = 0;
    goto LABEL_63;
  }

  if ((v6 & 0x2000000000000000) != 0)
  {
    v6;
    v2 = 0xE000000000000000;
    0xE000000000000000;
    v18 = 0xA000000000000000;
    if (!(v8 & 0x80808080808080 | v7 & 0x8080808080808080))
    {
      v18 = 0xE000000000000000;
    }

    v19 = v18 & 0xFF00000000000000 | (v9 << 56) | v8 & 0xFFFFFFFFFFFFFFLL;
    goto LABEL_62;
  }

  0xE000000000000000;
  v13 = v10;
  if ((v8 & 0x1000000000000000) != 0)
  {
    v13 = String.UTF8View._foreignCount()();
    if ((v7 & 0x2000000000000000) == 0)
    {
      goto LABEL_21;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
    goto LABEL_21;
  }

  if (swift_isUniquelyReferenced_nonNull_native(v8 & 0xFFFFFFFFFFFFFFFLL))
  {
    v14 = _StringGuts.nativeUnusedCapacity.getter(v7, v8);
    if (v15)
    {
      goto LABEL_188;
    }

    if (v13 > 15 || (v14 & 0x8000000000000000) == 0)
    {
      v16 = _StringGuts.nativeUnusedCapacity.getter(v7, v8);
      if ((v17 & 1) != 0 || (v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      goto LABEL_25;
    }

LABEL_27:
    if ((v8 & 0x1000000000000000) != 0)
    {
      v7 = _StringGuts._foreignConvertedToSmall()(v7, v8);
      v23 = v28;
      goto LABEL_42;
    }

    if ((v7 & 0x1000000000000000) != 0)
    {
      v22 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
      goto LABEL_30;
    }

    goto LABEL_185;
  }

LABEL_21:
  if (v13 <= 15)
  {
    goto LABEL_27;
  }

  v20 = _StringGuts.nativeUnusedCapacity.getter(v7, v8);
  if ((v21 & 1) != 0 || (v20 & 0x8000000000000000) != 0)
  {
    if ((v7 & 0x2000000000000000) == 0)
    {
LABEL_33:
      v24 = _StringGuts.nativeCapacity.getter(v7, v8);
      if (v25)
      {
        v26 = 0;
      }

      else
      {
        v26 = v24;
      }

      if (v26 + 0x4000000000000000 < 0)
      {
        goto LABEL_184;
      }

      v27 = 2 * v26;
      if (v27 > v13)
      {
        v13 = v27;
      }

      goto LABEL_39;
    }

LABEL_32:
    swift_isUniquelyReferenced_nonNull_native(v8 & 0xFFFFFFFFFFFFFFFLL);
    goto LABEL_33;
  }

  if ((v7 & 0x2000000000000000) != 0)
  {
LABEL_25:
    if (swift_isUniquelyReferenced_nonNull_native(v8 & 0xFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_40;
    }
  }

LABEL_39:
  _StringGuts.grow(_:)(v13);
LABEL_40:
  v129 = 0uLL;
  closure #1 in _StringGuts.append(_:)(&v129, 0, &v130, 1);
  swift_bridgeObjectRelease_n(0xE000000000000000, 2);
  while (1)
  {
    *&v129 = a1;
    _print_unlocked<A, B>(_:_:)(&v129, &v130, &type metadata for Int, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    a1 = v130;
    v8 = v131;
    v46 = HIBYTE(v131) & 0xF;
    v47 = v130 & 0xFFFFFFFFFFFFLL;
    if ((v131 & 0x2000000000000000) != 0)
    {
      v48 = HIBYTE(v131) & 0xF;
    }

    else
    {
      v48 = v130 & 0xFFFFFFFFFFFFLL;
    }

    if (!v48 && (v130 & ~v131 & 0x2000000000000000) == 0)
    {
      v131;
      v130 = 3943982;
      v131 = 0xE300000000000000;
      goto LABEL_127;
    }

    if ((v131 & 0x2000000000000000) != 0 && v46 <= 0xC)
    {
      v49 = 8 * HIBYTE(v131);
      v50 = (-255 << (v49 & 0x38)) - 1;
      v51 = 46 << (v49 & 0x38);
      v52 = v46 + 1;
      if (v46 >= 8)
      {
        v54 = v50 & v131 | v51;
        v53 = 8 * (v52 & 7);
      }

      else
      {
        a1 = v50 & v130 | v51;
        if (v46 != 7)
        {
          a1 = ((-255 << (8 * (v52 & 7u))) - 1) & a1 | (46 << (8 * (v52 & 7u)));
          if (v46 < 6)
          {
            a1 = ((-255 << ((v49 + 16) & 0x38)) - 1) & a1 | (60 << ((v49 + 16) & 0x38));
            v71 = v131;
            goto LABEL_102;
          }

          v70 = 0;
          v69 = v131;
LABEL_101:
          v71 = ((-255 << v70) - 1) & v69 | (60 << v70);
LABEL_102:
          v131;
          0xE300000000000000;
          v72 = 0xA000000000000000;
          if (!(a1 & 0x8080808080808080 | v71 & 0x80808080808080))
          {
            v72 = 0xE000000000000000;
          }

          v73 = (v72 & 0xFF00000000000000 | (v46 << 56) | v71 & 0xFFFFFFFFFFFFFFLL) + 0x300000000000000;
          goto LABEL_126;
        }

        v53 = 0;
        v54 = v131;
      }

      v69 = ((-255 << v53) - 1) & v54 | (46 << v53);
      v70 = (v49 + 16) & 0x38;
      goto LABEL_101;
    }

    0xE300000000000000;
    if ((v8 & 0x1000000000000000) != 0)
    {
      v112 = String.UTF8View._foreignCount()();
      v7 = v112 + 3;
      if (__OFADD__(v112, 3))
      {
LABEL_166:
        __break(1u);
        goto LABEL_167;
      }
    }

    else
    {
      v56 = __OFADD__(v48, 3);
      v7 = v48 + 3;
      if (v56)
      {
        goto LABEL_166;
      }
    }

    v57 = a1 & ~v8;
    if ((v57 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v8 & 0xFFFFFFFFFFFFFFFLL))
    {
      v58 = _StringGuts.nativeUnusedCapacity.getter(a1, v8);
      if (v59)
      {
        goto LABEL_188;
      }

      if (v7 <= 15)
      {
        if ((v8 & 0x2000000000000000) != 0)
        {
          goto LABEL_106;
        }

        if (v58 < 3)
        {
          goto LABEL_82;
        }
      }
    }

    else if (v7 <= 15)
    {
      if ((v8 & 0x2000000000000000) != 0)
      {
LABEL_106:
        v61 = v8;
      }

      else
      {
LABEL_82:
        if ((v8 & 0x1000000000000000) != 0)
        {
          a1 = _StringGuts._foreignConvertedToSmall()(a1, v8);
          v61 = v111;
        }

        else
        {
          if ((a1 & 0x1000000000000000) != 0)
          {
            v60 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v60 = _StringObject.sharedUTF8.getter(a1, v8);
            v47 = v122;
          }

          closure #1 in _StringGuts._convertedToSmall()(v60, v47, &v129, v55);
          v61 = *(&v129 + 1);
          a1 = v129;
        }
      }

      v74 = 3943982;
      v75 = 0xE300000000000000;
      0xE300000000000000;
      v76._rawBits = 1;
      v77._rawBits = 196609;
      v78._rawBits = _StringGuts.validateScalarRange(_:)(v76, v77, 0x3C2E2EuLL, 0xE300000000000000)._rawBits;
      if (v78._rawBits < 0x10000)
      {
        v78._rawBits |= 3;
      }

      if (v78._rawBits >> 16 || (v79._rawBits & 0xFFFFFFFFFFFF0000) != 0x30000)
      {
        v74 = specialized static String._copying(_:)(v78._rawBits, v79, 0x3C2E2EuLL, 0xE300000000000000);
        v75 = v81;
        0xE300000000000000;
      }

      if ((v75 & 0x2000000000000000) != 0)
      {
        v75;
      }

      else if ((v75 & 0x1000000000000000) != 0)
      {
        v74 = _StringGuts._foreignConvertedToSmall()(v74, v75);
        v128 = v127;
        v75;
        v75 = v128;
      }

      else
      {
        if ((v74 & 0x1000000000000000) != 0)
        {
          v118 = ((v75 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v119 = v74 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v118 = _StringObject.sharedUTF8.getter(v74, v75);
        }

        closure #1 in _StringGuts._convertedToSmall()(v118, v119, &v129, v80);
        v75;
        v75 = *(&v129 + 1);
        v74 = v129;
      }

      v82 = HIBYTE(v61) & 0xF;
      v83 = HIBYTE(v75) & 0xF;
      v84 = v83 + v82;
      if (v83 + v82 > 0xF)
      {
        goto LABEL_188;
      }

      0xE300000000000000;
      if (v83)
      {
        v85 = 0;
        v86 = 0;
        v87 = 8 * v82;
        do
        {
          v88 = v75 >> (v85 & 0x38);
          if (v86 < 8)
          {
            v88 = v74 >> v85;
          }

          v89 = (v88 << (v87 & 0x38)) | ((-255 << (v87 & 0x38)) - 1) & v61;
          v90 = (v88 << v87) | ((-255 << v87) - 1) & a1;
          if (v82 <= 7)
          {
            a1 = v90;
          }

          else
          {
            v61 = v89;
          }

          ++v82;
          v87 += 8;
          v85 += 8;
          ++v86;
        }

        while (8 * v83 != v85);
      }

      v8;
      0xE300000000000000;
      v91 = 0xA000000000000000;
      if (!(a1 & 0x8080808080808080 | v61 & 0x80808080808080))
      {
        v91 = 0xE000000000000000;
      }

      v73 = v91 & 0xFF00000000000000 | (v84 << 56) | v61 & 0xFFFFFFFFFFFFFFLL;
LABEL_126:
      v130 = a1;
      v131 = v73;
      goto LABEL_127;
    }

    v62 = v57 & 0x2000000000000000;
    v63 = _StringGuts.nativeUnusedCapacity.getter(a1, v8);
    if ((v64 & 1) == 0 && v63 > 2)
    {
      if (!v62 || !swift_isUniquelyReferenced_nonNull_native(v8 & 0xFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_97;
      }

      goto LABEL_98;
    }

    if (v62)
    {
      swift_isUniquelyReferenced_nonNull_native(v8 & 0xFFFFFFFFFFFFFFFLL);
    }

    v65 = _StringGuts.nativeCapacity.getter(a1, v8);
    v67 = (v66 & 1) != 0 ? 0 : v65;
    if (v67 + 0x4000000000000000 >= 0)
    {
      break;
    }

    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    v22 = _StringObject.sharedUTF8.getter(v7, v8);
    v10 = v120;
LABEL_30:
    closure #1 in _StringGuts._convertedToSmall()(v22, v10, &v129, v12);
    v23 = *(&v129 + 1);
    v7 = v129;
LABEL_42:
    v29 = 0xE000000000000000;
    0xE000000000000000;
    v30._rawBits = 1;
    v31._rawBits = 1;
    v32._rawBits = _StringGuts.validateScalarRange(_:)(v30, v31, 0, 0xE000000000000000)._rawBits;
    if (v32._rawBits < 0x10000)
    {
      v32._rawBits |= 3;
    }

    if (v32._rawBits >> 16 || v33._rawBits >= 0x10000)
    {
      v35 = specialized static String._copying(_:)(v32._rawBits, v33, 0, 0xE000000000000000);
      v29 = v36;
      0xE000000000000000;
    }

    else
    {
      v35 = 0;
    }

    if ((v29 & 0x2000000000000000) != 0)
    {
      v29;
    }

    else if ((v29 & 0x1000000000000000) != 0)
    {
      v35 = _StringGuts._foreignConvertedToSmall()(v35, v29);
      v124 = v123;
      v29;
      v29 = v124;
    }

    else
    {
      if ((v35 & 0x1000000000000000) != 0)
      {
        v114 = ((v29 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v115 = v35 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v114 = _StringObject.sharedUTF8.getter(v35, v29);
      }

      closure #1 in _StringGuts._convertedToSmall()(v114, v115, &v129, v34);
      v29;
      v29 = *(&v129 + 1);
      v35 = v129;
    }

    v37 = HIBYTE(v23) & 0xF;
    v2 = HIBYTE(v29) & 0xF;
    v38 = v2 + v37;
    if (v2 + v37 > 0xF)
    {
      goto LABEL_188;
    }

    0xE000000000000000;
    if (v2)
    {
      v39 = 0;
      v40 = 0;
      v41 = 8 * v37;
      do
      {
        v42 = v29 >> (v39 & 0x38);
        if (v40 < 8)
        {
          v42 = v35 >> v39;
        }

        v43 = (v42 << (v41 & 0x38)) | ((-255 << (v41 & 0x38)) - 1) & v23;
        v44 = (v42 << v41) | ((-255 << v41) - 1) & v7;
        if (v37 <= 7)
        {
          v7 = v44;
        }

        else
        {
          v23 = v43;
        }

        ++v37;
        v41 += 8;
        v39 += 8;
        ++v40;
      }

      while (8 * v2 != v39);
    }

    v8;
    0xE000000000000000;
    v45 = 0xA000000000000000;
    if (!(v7 & 0x8080808080808080 | v23 & 0x80808080808080))
    {
      v45 = 0xE000000000000000;
    }

    v19 = v45 & 0xFF00000000000000 | (v38 << 56) | v23 & 0xFFFFFFFFFFFFFFLL;
LABEL_62:
    v130 = v7;
LABEL_63:
    v131 = v19;
  }

  v68 = 2 * v67;
  if (v68 > v7)
  {
    v7 = v68;
  }

LABEL_97:
  _StringGuts.grow(_:)(v7);
LABEL_98:
  v129 = xmmword_18071DCA0;
  closure #1 in _StringGuts.append(_:)(&v129, 3uLL, &v130, 1);
  swift_bridgeObjectRelease_n(0xE300000000000000, 2);
LABEL_127:
  *&v129 = a2;
  _print_unlocked<A, B>(_:_:)(&v129, &v130, &type metadata for Int, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v8 = v130;
  v2 = v131;
  a1 = v130 & 0xFFFFFFFFFFFFLL;
  if ((v131 & 0x2000000000000000) != 0)
  {
    v92 = HIBYTE(v131) & 0xF;
  }

  else
  {
    v92 = v130 & 0xFFFFFFFFFFFFLL;
  }

  if (v92 || (v130 & ~v131 & 0x2000000000000000) != 0)
  {
    if ((v131 & 0x2000000000000000) == 0)
    {
      0xE000000000000000;
      v94 = a1;
      if ((v2 & 0x1000000000000000) == 0)
      {
        if ((v8 & 0x2000000000000000) != 0)
        {
          goto LABEL_135;
        }

LABEL_168:
        if (v94 > 15)
        {
LABEL_169:
          _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v94, 0);
          v129 = 0uLL;
          closure #1 in _StringGuts.append(_:)(&v129, 0, &v130, 1);
          swift_bridgeObjectRelease_n(0xE000000000000000, 2);
          return v130;
        }

LABEL_139:
        if ((v2 & 0x1000000000000000) != 0)
        {
          v98 = _StringGuts._foreignConvertedToSmall()(v8, v2);
          v99 = v100;
        }

        else
        {
          if ((v8 & 0x1000000000000000) != 0)
          {
            v97 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v97 = _StringObject.sharedUTF8.getter(v8, v2);
            a1 = v121;
          }

          closure #1 in _StringGuts._convertedToSmall()(v97, a1, &v129, v93);
          v99 = *(&v129 + 1);
          v98 = v129;
        }

        v101 = 0xE000000000000000;
        0xE000000000000000;
        v102._rawBits = 1;
        v103._rawBits = 1;
        v104._rawBits = _StringGuts.validateScalarRange(_:)(v102, v103, 0, 0xE000000000000000)._rawBits;
        if (v104._rawBits < 0x10000)
        {
          v104._rawBits |= 3;
        }

        if (v104._rawBits >> 16 || v105._rawBits >= 0x10000)
        {
          v107 = specialized static String._copying(_:)(v104._rawBits, v105, 0, 0xE000000000000000);
          v101 = v108;
          0xE000000000000000;
        }

        else
        {
          v107 = 0;
        }

        if ((v101 & 0x2000000000000000) != 0)
        {
          v101;
        }

        else if ((v101 & 0x1000000000000000) != 0)
        {
          v107 = _StringGuts._foreignConvertedToSmall()(v107, v101);
          v126 = v125;
          v101;
          v101 = v126;
        }

        else
        {
          if ((v107 & 0x1000000000000000) != 0)
          {
            v116 = ((v101 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v117 = v107 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v116 = _StringObject.sharedUTF8.getter(v107, v101);
          }

          closure #1 in _StringGuts._convertedToSmall()(v116, v117, &v129, v106);
          v101;
          v101 = *(&v129 + 1);
          v107 = v129;
        }

        v109 = specialized _SmallString.init(_:appending:)(v98, v99, v107, v101);
        if ((v110 & 1) == 0)
        {
          v8 = v109;
          v2;
          swift_bridgeObjectRelease_n(0xE000000000000000, 2);
          return v8;
        }

LABEL_188:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_167:
      v94 = String.UTF8View._foreignCount()();
      if ((v8 & 0x2000000000000000) == 0)
      {
        goto LABEL_168;
      }

LABEL_135:
      if (!swift_isUniquelyReferenced_nonNull_native(v2 & 0xFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_168;
      }

      v95 = _StringGuts.nativeUnusedCapacity.getter(v8, v2);
      if ((v96 & 1) == 0)
      {
        if (v94 > 15 || (v95 & 0x8000000000000000) == 0)
        {
          goto LABEL_169;
        }

        goto LABEL_139;
      }

      goto LABEL_188;
    }

    v131;
    0xE000000000000000;
  }

  else
  {
    v131;
    return 0;
  }

  return v8;
}

unint64_t ClosedRange.description.getter(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v24 = _StringGuts.init(_initialCapacity:)(7);
  v25 = v6;
  v7 = *(a1 + 16);
  _print_unlocked<A, B>(_:_:)(v2, &v24, v7, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v16 = v25;
  v17 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v17 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v17 || (v24 & ~v25 & 0x2000000000000000) != 0)
  {
    if ((v25 & 0x2000000000000000) != 0 && (v18 = specialized _SmallString.init(_:appending:)(v24, v25, a2, 0xE300000000000000), (v20 & 1) == 0))
    {
      v21 = v18;
      v22 = v19;
      v16;
      v24 = v21;
      v25 = v22;
    }

    else
    {
      _StringGuts.append(_:)(a2, 0xE300000000000000, 0, 3, v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  else
  {
    v25;
    v24 = a2;
    v25 = 0xE300000000000000;
  }

  _print_unlocked<A, B>(_:_:)(v4 + *(a1 + 36), &v24, v7, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  return v24;
}

unint64_t Range.debugDescription.getter(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v254 = a1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v246 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _StringGuts.init(_initialCapacity:)(8);
  v10 = v8;
  v11 = v9;
  v257 = v8;
  v258 = v9;
  v12 = HIBYTE(v9) & 0xF;
  v13 = v8 & 0xFFFFFFFFFFFFLL;
  if ((v9 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v9) & 0xF;
  }

  else
  {
    v14 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v14 || (v8 & ~v9 & 0x2000000000000000) != 0)
  {
    if ((v9 & 0x2000000000000000) == 0 || v12 > 9)
    {
      0xE600000000000000;
      if ((v11 & 0x1000000000000000) != 0)
      {
        goto LABEL_180;
      }

      v22 = __OFADD__(v14, 6);
      v23 = v14 + 6;
      if (!v22)
      {
        goto LABEL_13;
      }

LABEL_182:
      __break(1u);
      goto LABEL_183;
    }

    v15 = 8 * HIBYTE(v9);
    v16 = (-255 << (v15 & 0x38)) - 1;
    v17 = 82 << (v15 & 0x38);
    v18 = v12 + 1;
    if (v12 >= 8)
    {
      v20 = v16 & v9 | v17;
      v19 = 8 * (v18 & 7);
    }

    else
    {
      v10 = v16 & v8 | v17;
      if (v12 != 7)
      {
        v10 = ((-255 << (8 * (v18 & 7u))) - 1) & v10 | (97 << (8 * (v18 & 7u)));
        if (v12 < 6)
        {
          v10 = ((-255 << ((v15 + 16) & 0x38)) - 1) & v10 | (110 << ((v15 + 16) & 0x38));
          if (v12 != 5)
          {
            v10 = ((-255 << ((v15 + 24) & 0x38)) - 1) & v10 | (103 << ((v15 + 24) & 0x38));
            if (v12 < 4)
            {
              v10 = ((0xFFFFFF0100000000 << (8 * v12)) - 1) & v10 | (0x6500000000 << (8 * v12));
              if (v12 != 3)
              {
                v10 = ((-255 << ((v15 + 40) & 0x38)) - 1) & v10 | (40 << ((v15 + 40) & 0x38));
                v38 = v9;
                goto LABEL_31;
              }

              v37 = 0;
              v36 = v9;
LABEL_30:
              v38 = ((-255 << v37) - 1) & v36 | (40 << v37);
LABEL_31:
              v9;
              0xE600000000000000;
              v39 = 0xA000000000000000;
              if (!(v10 & 0x8080808080808080 | v38 & 0x80808080808080))
              {
                v39 = 0xE000000000000000;
              }

              v29 = (v39 & 0xFF00000000000000 | (v12 << 56) | v38 & 0xFFFFFFFFFFFFFFLL) + 0x600000000000000;
              goto LABEL_46;
            }

            v35 = 0;
            v34 = v9;
LABEL_29:
            v36 = ((-255 << v35) - 1) & v34 | (101 << v35);
            v37 = (v15 + 40) & 0x38;
            goto LABEL_30;
          }

          v33 = 0;
          v32 = v9;
LABEL_28:
          v34 = ((-255 << v33) - 1) & v32 | (103 << v33);
          v35 = v15 & 0x38 ^ 0x20;
          goto LABEL_29;
        }

        v31 = 0;
        v30 = v9;
LABEL_27:
        v32 = ((-255 << v31) - 1) & v30 | (110 << v31);
        v33 = (v15 + 24) & 0x38;
        goto LABEL_28;
      }

      v19 = 0;
      v20 = v9;
    }

    v30 = ((-255 << v19) - 1) & v20 | (97 << v19);
    v31 = (v15 + 16) & 0x38;
    goto LABEL_27;
  }

  v10 = 0x2865676E6152;
  v9;
  v29 = 0xE600000000000000;
LABEL_46:
  v257 = v10;
  v258 = v29;
  while (1)
  {
    v51 = *(v5 + 16);
    v255 = v3;
    v251 = v51;
    v252 = v5 + 16;
    v51(v7, v3, v4);
    *&v256 = 0;
    *(&v256 + 1) = 0xE000000000000000;
    _debugPrint_unlocked<A, B>(_:_:)(v7, &v256, v4, &type metadata for String, &protocol witness table for String);
    v53 = *(v5 + 8);
    v52 = v5 + 8;
    v253 = v7;
    v250 = v53;
    v53(v7, v4);
    v11 = *(&v256 + 1);
    v7 = v256;
    v54 = HIBYTE(v29) & 0xF;
    v3 = v10 & 0xFFFFFFFFFFFFLL;
    if ((v29 & 0x2000000000000000) != 0)
    {
      v55 = HIBYTE(v29) & 0xF;
    }

    else
    {
      v55 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (!v55 && (v10 & ~v29 & 0x2000000000000000) == 0)
    {
      v29;
      v257 = v7;
      v258 = v11;
      goto LABEL_117;
    }

    v56 = (*(&v256 + 1) & 0x2000000000000000) == 0;
    v57 = HIBYTE(*(&v256 + 1)) & 0xFLL;
    if ((v29 & 0x2000000000000000) != 0)
    {
      if ((*(&v256 + 1) & 0x2000000000000000) == 0)
      {
        v248 = v4;
        v58 = v256 & 0xFFFFFFFFFFFFLL;
        v56 = 1;
LABEL_57:
        v4 = v58;
        goto LABEL_58;
      }

      v84 = v54 + v57;
      if (v54 + v57 < 0x10)
      {
        if (v57)
        {
          v96 = 0;
          v97 = 0;
          v98 = 8 * v54;
          v99 = v29;
          v3 = v255;
          do
          {
            v100 = *(&v256 + 1) >> (v96 & 0x38);
            if (v97 < 8)
            {
              v100 = v256 >> v96;
            }

            v101 = (v100 << (v98 & 0x38)) | ((-255 << (v98 & 0x38)) - 1) & v99;
            v102 = (v100 << v98) | ((-255 << v98) - 1) & v10;
            if (v54 <= 7)
            {
              v10 = v102;
            }

            else
            {
              v99 = v101;
            }

            ++v54;
            v98 += 8;
            v96 += 8;
            ++v97;
          }

          while (8 * v57 != v96);
        }

        else
        {
          v99 = v29;
          v3 = v255;
        }

        v29;
        v11;
        v103 = 0xA000000000000000;
        if (!(v10 & 0x8080808080808080 | v99 & 0x80808080808080))
        {
          v103 = 0xE000000000000000;
        }

        v257 = v10;
        v258 = v103 & 0xFF00000000000000 | (v84 << 56) | v99 & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_140;
      }

      v248 = v4;
      v56 = 0;
      v58 = v256 & 0xFFFFFFFFFFFFLL;
      v4 = HIBYTE(*(&v256 + 1)) & 0xFLL;
    }

    else
    {
      v248 = v4;
      v58 = v256 & 0xFFFFFFFFFFFFLL;
      v4 = HIBYTE(*(&v256 + 1)) & 0xFLL;
      if ((*(&v256 + 1) & 0x2000000000000000) == 0)
      {
        goto LABEL_57;
      }
    }

LABEL_58:
    v247 = v56;
    v246 = v58;
    v249 = v52;
    if ((*(&v256 + 1) & 0x1000000000000000) != 0)
    {
      swift_bridgeObjectRetain_n(*(&v256 + 1), 2);
      v124._rawBits = 1;
      v125._rawBits = (v4 << 16) | 1;
      v126._rawBits = _StringGuts.validateScalarRange(_:)(v124, v125, v7, v11)._rawBits;
      if (v126._rawBits < 0x10000)
      {
        v126._rawBits |= 3;
      }

      v5 = String.UTF8View.distance(from:to:)(v126, v127);
      v11;
      if ((v29 & 0x1000000000000000) == 0)
      {
LABEL_60:
        v22 = __OFADD__(v55, v5);
        v13 = v55 + v5;
        if (!v22)
        {
          break;
        }

        goto LABEL_179;
      }
    }

    else
    {
      *(&v256 + 1);
      v5 = v4;
      if ((v29 & 0x1000000000000000) == 0)
      {
        goto LABEL_60;
      }
    }

    v128 = String.UTF8View._foreignCount()();
    v13 = v128 + v5;
    if (!__OFADD__(v128, v5))
    {
      break;
    }

LABEL_179:
    __break(1u);
LABEL_180:
    v129 = String.UTF8View._foreignCount()();
    v23 = v129 + 6;
    if (__OFADD__(v129, 6))
    {
      goto LABEL_182;
    }

LABEL_13:
    if ((v10 & ~v11 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v11 & 0xFFFFFFFFFFFFFFFLL))
    {
      v24 = _StringGuts.nativeUnusedCapacity.getter(v10, v11);
      if (v25)
      {
        goto LABEL_311;
      }

      if (v23 <= 15)
      {
        if ((v11 & 0x2000000000000000) != 0)
        {
          goto LABEL_35;
        }

        if (v24 < 6)
        {
          goto LABEL_19;
        }
      }

LABEL_24:
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v23, 6);
      v256 = xmmword_18071DCB0;
      closure #1 in _StringGuts.append(_:)(&v256, 6uLL, &v257, 1);
      swift_bridgeObjectRelease_n(0xE600000000000000, 2);
      v10 = v257;
      v29 = v258;
    }

    else
    {
      if (v23 > 15)
      {
        goto LABEL_24;
      }

      if ((v11 & 0x2000000000000000) != 0)
      {
LABEL_35:
        v27 = v3;
        v28 = v11;
        goto LABEL_36;
      }

LABEL_19:
      if ((v11 & 0x1000000000000000) != 0)
      {
        v27 = v3;
        v10 = _StringGuts._foreignConvertedToSmall()(v10, v11);
        v28 = v123;
      }

      else
      {
        if ((v10 & 0x1000000000000000) != 0)
        {
          v26 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v26 = _StringObject.sharedUTF8.getter(v10, v11);
          v13 = v237;
        }

        v27 = v3;
        closure #1 in _StringGuts._convertedToSmall()(v26, v13, &v256, v21);
        v28 = *(&v256 + 1);
        v10 = v256;
      }

LABEL_36:
      v40 = 0x2865676E6152;
      v41 = 0xE600000000000000;
      0xE600000000000000;
      v42._rawBits = 1;
      v43._rawBits = 393217;
      v44._rawBits = _StringGuts.validateScalarRange(_:)(v42, v43, 0x2865676E6152uLL, 0xE600000000000000)._rawBits;
      if (v44._rawBits < 0x10000)
      {
        v44._rawBits |= 3;
      }

      if (v44._rawBits >> 16 || (v45._rawBits & 0xFFFFFFFFFFFF0000) != 0x60000)
      {
        v40 = specialized static String._copying(_:)(v44._rawBits, v45, 0x2865676E6152uLL, 0xE600000000000000);
        v41 = v47;
        0xE600000000000000;
      }

      if ((v41 & 0x2000000000000000) != 0)
      {
        v41;
      }

      else if ((v41 & 0x1000000000000000) != 0)
      {
        v40 = _StringGuts._foreignConvertedToSmall()(v40, v41);
        v245 = v244;
        v41;
        v41 = v245;
      }

      else
      {
        if ((v40 & 0x1000000000000000) != 0)
        {
          v228 = ((v41 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v229 = v40 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v228 = _StringObject.sharedUTF8.getter(v40, v41);
        }

        closure #1 in _StringGuts._convertedToSmall()(v228, v229, &v256, v46);
        v41;
        v41 = *(&v256 + 1);
        v40 = v256;
      }

      v48 = specialized _SmallString.init(_:appending:)(v10, v28, v40, v41);
      if (v50)
      {
        goto LABEL_311;
      }

      v10 = v48;
      v29 = v49;
      v11;
      swift_bridgeObjectRelease_n(0xE600000000000000, 2);
      v257 = v10;
      v258 = v29;
      v3 = v27;
    }
  }

  v60 = v10 & ~v29;
  if ((v60 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v29 & 0xFFFFFFFFFFFFFFFLL))
  {
    if (v13 <= 15)
    {
      if ((v29 & 0x2000000000000000) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_88;
    }

LABEL_72:
    v65 = v60 & 0x2000000000000000;
    v66 = _StringGuts.nativeUnusedCapacity.getter(v10, v29);
    if (v67)
    {
      v3 = v255;
      if (v65)
      {
LABEL_74:
        swift_isUniquelyReferenced_nonNull_native(v29 & 0xFFFFFFFFFFFFFFFLL);
      }
    }

    else
    {
      v3 = v255;
      if (v66 >= v5)
      {
        if (v65 && swift_isUniquelyReferenced_nonNull_native(v29 & 0xFFFFFFFFFFFFFFFLL))
        {
LABEL_82:
          if ((v11 & 0x1000000000000000) != 0)
          {
            _StringGuts._foreignAppendInPlace(_:)(v7, v11, 0, v4);
          }

          else
          {
            if (v247)
            {
              v4 = v248;
              if ((v7 & 0x1000000000000000) != 0)
              {
                v73 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
                v74 = v246;
                v75 = v246;
              }

              else
              {
                v231 = _StringObject.sharedUTF8.getter(v7, v11);
                if (v232 < v246)
                {
                  goto LABEL_307;
                }

                v73 = v231;
                v75 = v232;
                v3 = v255;
                v74 = v246;
              }

              v76 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v74, v73, v75);
              closure #1 in _StringGuts.append(_:)(v76, v77, &v257, v7 < 0);
              swift_bridgeObjectRelease_n(v11, 2);
              goto LABEL_140;
            }

            *&v256 = v7;
            *(&v256 + 1) = v11 & 0xFFFFFFFFFFFFFFLL;
            closure #1 in _StringGuts.append(_:)(&v256, HIBYTE(v11) & 0xF, &v257, (v11 & 0x4000000000000000) != 0);
          }

          swift_bridgeObjectRelease_n(v11, 2);
          v4 = v248;
          goto LABEL_140;
        }

LABEL_81:
        _StringGuts.grow(_:)(v13);
        goto LABEL_82;
      }

      if (v65)
      {
        goto LABEL_74;
      }
    }

    v68 = _StringGuts.nativeCapacity.getter(v10, v29);
    if (v70)
    {
      v71 = 0;
    }

    else
    {
      v71 = v68;
    }

    if (v71 + 0x4000000000000000 < 0)
    {
      __break(1u);
      goto LABEL_295;
    }

    v72 = 2 * v71;
    if (v72 > v13)
    {
      v13 = v72;
    }

    goto LABEL_81;
  }

  v61 = _StringGuts.nativeUnusedCapacity.getter(v10, v29);
  if (v62)
  {
    goto LABEL_311;
  }

  if (v13 > 15)
  {
    goto LABEL_72;
  }

  if ((v29 & 0x2000000000000000) != 0)
  {
LABEL_88:
    v64 = v29;
    goto LABEL_89;
  }

  if (v61 >= v5)
  {
    goto LABEL_72;
  }

LABEL_67:
  if ((v29 & 0x1000000000000000) != 0)
  {
    v10 = _StringGuts._foreignConvertedToSmall()(v10, v29);
    v64 = v122;
  }

  else
  {
    if ((v10 & 0x1000000000000000) != 0)
    {
      v63 = ((v29 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v63 = _StringObject.sharedUTF8.getter(v10, v29);
      v3 = v235;
    }

    closure #1 in _StringGuts._convertedToSmall()(v63, v3, &v256, v59);
    v64 = *(&v256 + 1);
    v10 = v256;
  }

LABEL_89:
  v11;
  v78._rawBits = 1;
  v79._rawBits = (v4 << 16) | 1;
  v80._rawBits = _StringGuts.validateScalarRange(_:)(v78, v79, v7, v11)._rawBits;
  if (v80._rawBits < 0x10000)
  {
    v80._rawBits |= 3;
  }

  if (v80._rawBits >> 16 || v81._rawBits >> 16 != v4)
  {
    v7 = specialized static String._copying(_:)(v80._rawBits, v81, v7, v11);
    v83 = v85;
    v11;
  }

  else
  {
    v83 = v11;
  }

  v4 = v248;
  if ((v83 & 0x2000000000000000) != 0)
  {
    v83;
  }

  else if ((v83 & 0x1000000000000000) != 0)
  {
    v7 = _StringGuts._foreignConvertedToSmall()(v7, v83);
    v239 = v238;
    v83;
    v83 = v239;
  }

  else
  {
    if ((v7 & 0x1000000000000000) != 0)
    {
      v222 = ((v83 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v223 = v7 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v222 = _StringObject.sharedUTF8.getter(v7, v83);
    }

    closure #1 in _StringGuts._convertedToSmall()(v222, v223, &v256, v82);
    v83;
    v83 = *(&v256 + 1);
    v7 = v256;
  }

  v86 = HIBYTE(v64) & 0xF;
  v87 = HIBYTE(v83) & 0xF;
  v88 = v87 + v86;
  if (v87 + v86 > 0xF)
  {
    goto LABEL_311;
  }

  v11;
  if (v87)
  {
    v89 = 0;
    v90 = 0;
    v91 = 8 * v86;
    do
    {
      v92 = v83 >> (v89 & 0x38);
      if (v90 < 8)
      {
        v92 = v7 >> v89;
      }

      v93 = (v92 << (v91 & 0x38)) | ((-255 << (v91 & 0x38)) - 1) & v64;
      v94 = (v92 << v91) | ((-255 << v91) - 1) & v10;
      if (v86 <= 7)
      {
        v10 = v94;
      }

      else
      {
        v64 = v93;
      }

      ++v86;
      v91 += 8;
      v89 += 8;
      ++v90;
    }

    while (8 * v87 != v89);
  }

  v29;
  v11;
  v95 = 0xA000000000000000;
  if (!(v10 & 0x8080808080808080 | v64 & 0x80808080808080))
  {
    v95 = 0xE000000000000000;
  }

  v257 = v10;
  v258 = v95 & 0xFF00000000000000 | (v88 << 56) | v64 & 0xFFFFFFFFFFFFFFLL;
LABEL_117:
  v3 = v255;
LABEL_140:
  v11 = v257;
  v10 = v258;
  v104 = HIBYTE(v258) & 0xF;
  v13 = v257 & 0xFFFFFFFFFFFFLL;
  if ((v258 & 0x2000000000000000) != 0)
  {
    v105 = HIBYTE(v258) & 0xF;
  }

  else
  {
    v105 = v257 & 0xFFFFFFFFFFFFLL;
  }

  if (!v105 && (v257 & ~v258 & 0x2000000000000000) == 0)
  {
    v258;
    v11 = 0;
    v112 = 0xE000000000000000;
    goto LABEL_186;
  }

  if ((v258 & 0x2000000000000000) == 0)
  {
    0xE000000000000000;
    v107 = v11 & 0xFFFFFFFFFFFFLL;
    if ((v10 & 0x1000000000000000) == 0)
    {
      if ((v11 & 0x2000000000000000) != 0)
      {
        goto LABEL_148;
      }

LABEL_184:
      if (v107 > 15)
      {
LABEL_185:
        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v107, 0);
        v256 = 0uLL;
        closure #1 in _StringGuts.append(_:)(&v256, 0, &v257, 1);
        swift_bridgeObjectRelease_n(0xE000000000000000, 2);
        v11 = v257;
        v112 = v258;
        goto LABEL_186;
      }

LABEL_152:
      if ((v10 & 0x1000000000000000) != 0)
      {
        v65 = _StringGuts._foreignConvertedToSmall()(v11, v10);
        v3 = v113;
      }

      else
      {
        if ((v11 & 0x1000000000000000) != 0)
        {
          v110 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v110 = _StringObject.sharedUTF8.getter(v11, v10);
          v13 = v230;
        }

        closure #1 in _StringGuts._convertedToSmall()(v110, v13, &v256, v106);
        v3 = *(&v256 + 1);
        v65 = v256;
      }

      0xE000000000000000;
      v114._rawBits = 1;
      v115._rawBits = 1;
      v116._rawBits = _StringGuts.validateScalarRange(_:)(v114, v115, 0, 0xE000000000000000)._rawBits;
      if (v116._rawBits < 0x10000)
      {
        v116._rawBits |= 3;
      }

      v57 = Substring.description.getter(v116._rawBits, v117, 0, 0xE000000000000000);
      v13 = v118;
      0xE000000000000000;
      if ((v13 & 0x2000000000000000) != 0)
      {
        v13;
LABEL_165:
        v119 = specialized _SmallString.init(_:appending:)(v65, v3, v57, v13);
        if ((v121 & 1) == 0)
        {
          v11 = v119;
          v112 = v120;
          v10;
          swift_bridgeObjectRelease_n(0xE000000000000000, 2);
          v3 = v255;
          goto LABEL_186;
        }

LABEL_311:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_295:
      if ((v13 & 0x1000000000000000) != 0)
      {
        v57 = _StringGuts._foreignConvertedToSmall()(v57, v13);
        v243 = v242;
        v13;
        v13 = v243;
      }

      else
      {
        if ((v57 & 0x1000000000000000) != 0)
        {
          v226 = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v227 = v57 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v226 = _StringObject.sharedUTF8.getter(v57, v13);
        }

        closure #1 in _StringGuts._convertedToSmall()(v226, v227, &v256, v69);
        v13;
        v13 = *(&v256 + 1);
        v57 = v256;
      }

      goto LABEL_165;
    }

LABEL_183:
    v107 = String.UTF8View._foreignCount()();
    if ((v11 & 0x2000000000000000) == 0)
    {
      goto LABEL_184;
    }

LABEL_148:
    if (!swift_isUniquelyReferenced_nonNull_native(v10 & 0xFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_184;
    }

    v108 = _StringGuts.nativeUnusedCapacity.getter(v11, v10);
    if ((v109 & 1) == 0)
    {
      if (v107 > 15 || (v108 & 0x8000000000000000) == 0)
      {
        goto LABEL_185;
      }

      goto LABEL_152;
    }

    goto LABEL_311;
  }

  v258;
  0xE000000000000000;
  v111 = 0xA000000000000000;
  if (!(v10 & 0x80808080808080 | v11 & 0x8080808080808080))
  {
    v111 = 0xE000000000000000;
  }

  v112 = v111 & 0xFF00000000000000 | (v104 << 56) | v10 & 0xFFFFFFFFFFFFFFLL;
LABEL_186:
  v130 = _StringGuts.init(_initialCapacity:)(6);
  v140 = v130;
  v257 = v130;
  v258 = v131;
  v141 = HIBYTE(v131) & 0xF;
  v142 = v130 & 0xFFFFFFFFFFFFLL;
  if ((v131 & 0x2000000000000000) != 0)
  {
    v142 = HIBYTE(v131) & 0xF;
  }

  if (!v142 && (v130 & ~v131 & 0x2000000000000000) == 0)
  {
    v140 = 3943982;
    v131;
    v149 = 0xE300000000000000;
    goto LABEL_203;
  }

  if ((v131 & 0x2000000000000000) == 0 || v141 > 0xC)
  {
    _StringGuts.append(_:)(3943982, 0xE300000000000000, 0, 3, v132, v133, v134, v135, v136, v137, v138, v139);
    0xE300000000000000;
    v140 = v257;
    v149 = v258;
    goto LABEL_204;
  }

  v143 = 8 * HIBYTE(v131);
  v144 = (-255 << (v143 & 0x38)) - 1;
  v145 = 46 << (v143 & 0x38);
  v146 = v141 + 1;
  if (v141 >= 8)
  {
    v148 = v144 & v131 | v145;
    v147 = 8 * (v146 & 7);
LABEL_197:
    v150 = ((-255 << v147) - 1) & v148 | (46 << v147);
    v151 = (v143 + 16) & 0x38;
    goto LABEL_198;
  }

  v140 = v144 & v130 | v145;
  if (v141 == 7)
  {
    v147 = 0;
    v148 = v131;
    goto LABEL_197;
  }

  v140 = ((-255 << (8 * (v146 & 7u))) - 1) & v140 | (46 << (8 * (v146 & 7u)));
  if (v141 >= 6)
  {
    v151 = 0;
    v150 = v131;
LABEL_198:
    v152 = ((-255 << v151) - 1) & v150 | (60 << v151);
    goto LABEL_199;
  }

  v140 = ((-255 << ((v143 + 16) & 0x38)) - 1) & v140 | (60 << ((v143 + 16) & 0x38));
  v152 = v131;
LABEL_199:
  v131;
  0xE300000000000000;
  v153 = 0xA000000000000000;
  if (!(v140 & 0x8080808080808080 | v152 & 0x80808080808080))
  {
    v153 = 0xE000000000000000;
  }

  v149 = (v153 & 0xFF00000000000000 | (v141 << 56) | v152 & 0xFFFFFFFFFFFFFFLL) + 0x300000000000000;
LABEL_203:
  v257 = v140;
  v258 = v149;
LABEL_204:
  v154 = v253;
  v251(v253, v3 + *(v254 + 36), v4);
  *&v256 = 0;
  *(&v256 + 1) = 0xE000000000000000;
  _debugPrint_unlocked<A, B>(_:_:)(v154, &v256, v4, &type metadata for String, &protocol witness table for String);
  v250(v154, v4);
  v155 = *(&v256 + 1);
  v156 = v256;
  v157 = HIBYTE(v149) & 0xF;
  v158 = v140 & 0xFFFFFFFFFFFFLL;
  if ((v149 & 0x2000000000000000) != 0)
  {
    v159 = HIBYTE(v149) & 0xF;
  }

  else
  {
    v159 = v140 & 0xFFFFFFFFFFFFLL;
  }

  if (!v159 && (v140 & ~v149 & 0x2000000000000000) == 0)
  {
    v149;
    v257 = v156;
    v258 = v155;
    goto LABEL_275;
  }

  v254 = v11;
  v255 = v112;
  v160 = (*(&v256 + 1) & 0x2000000000000000) == 0;
  v161 = HIBYTE(*(&v256 + 1)) & 0xFLL;
  if ((v149 & 0x2000000000000000) != 0)
  {
    if ((*(&v256 + 1) & 0x2000000000000000) == 0)
    {
      v162 = v256 & 0xFFFFFFFFFFFFLL;
      v160 = 1;
      goto LABEL_214;
    }

    v182 = v157 + v161;
    if (v157 + v161 < 0x10)
    {
      if (v161)
      {
        v194 = 0;
        v195 = 0;
        v196 = 8 * v157;
        v197 = 8 * v161;
        v198 = v149;
        v11 = v254;
        do
        {
          v199 = *(&v256 + 1) >> (v194 & 0x38);
          if (v195 < 8)
          {
            v199 = v256 >> v194;
          }

          v200 = (v199 << (v196 & 0x38)) | ((-255 << (v196 & 0x38)) - 1) & v198;
          v201 = (v199 << v196) | ((-255 << v196) - 1) & v140;
          if (v157 <= 7)
          {
            v140 = v201;
          }

          else
          {
            v198 = v200;
          }

          ++v157;
          v196 += 8;
          v194 += 8;
          ++v195;
        }

        while (v197 != v194);
      }

      else
      {
        v198 = v149;
        v11 = v254;
      }

      v149;
      v155;
      v202 = 0xA000000000000000;
      if (!(v140 & 0x8080808080808080 | v198 & 0x80808080808080))
      {
        v202 = 0xE000000000000000;
      }

      v257 = v140;
      v258 = v202 & 0xFF00000000000000 | (v182 << 56) | v198 & 0xFFFFFFFFFFFFFFLL;
LABEL_274:
      v112 = v255;
      goto LABEL_275;
    }

    v160 = 0;
    v163 = HIBYTE(*(&v256 + 1)) & 0xFLL;
    v253 = v256 & 0xFFFFFFFFFFFFLL;
    if ((*(&v256 + 1) & 0x1000000000000000) != 0)
    {
      goto LABEL_244;
    }

LABEL_216:
    *(&v256 + 1);
    v165 = v163;
    if ((v149 & 0x1000000000000000) == 0)
    {
      goto LABEL_217;
    }

LABEL_247:
    v187 = String.UTF8View._foreignCount()();
    v166 = v187 + v165;
    if (__OFADD__(v187, v165))
    {
      goto LABEL_249;
    }

LABEL_218:
    if ((v140 & ~v149 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v149 & 0xFFFFFFFFFFFFFFFLL))
    {
      v167 = _StringGuts.nativeUnusedCapacity.getter(v140, v149);
      if (v168)
      {
        goto LABEL_311;
      }

      if (v166 <= 15)
      {
        if ((v149 & 0x2000000000000000) == 0)
        {
          if (v167 < v165)
          {
LABEL_224:
            if ((v149 & 0x1000000000000000) == 0)
            {
              v11 = v254;
              if ((v140 & 0x1000000000000000) != 0)
              {
                v169 = ((v149 & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v169 = _StringObject.sharedUTF8.getter(v140, v149);
                v158 = v236;
              }

              closure #1 in _StringGuts._convertedToSmall()(v169, v158, &v256, v164);
              v170 = *(&v256 + 1);
              v140 = v256;
              goto LABEL_237;
            }

            v140 = _StringGuts._foreignConvertedToSmall()(v140, v149);
            v170 = v221;
LABEL_236:
            v11 = v254;
LABEL_237:
            v155;
            v176._rawBits = 1;
            v177._rawBits = (v163 << 16) | 1;
            v178._rawBits = _StringGuts.validateScalarRange(_:)(v176, v177, v156, v155)._rawBits;
            if (v178._rawBits < 0x10000)
            {
              v178._rawBits |= 3;
            }

            if (v178._rawBits >> 16 || v179._rawBits >> 16 != v163)
            {
              v156 = specialized static String._copying(_:)(v178._rawBits, v179, v156, v155);
              v181 = v188;
              v155;
            }

            else
            {
              v181 = v155;
            }

            if ((v181 & 0x2000000000000000) != 0)
            {
              v181;
            }

            else if ((v181 & 0x1000000000000000) != 0)
            {
              v156 = _StringGuts._foreignConvertedToSmall()(v156, v181);
              v241 = v240;
              v181;
              v181 = v241;
              v11 = v254;
            }

            else
            {
              if ((v156 & 0x1000000000000000) != 0)
              {
                v224 = ((v181 & 0xFFFFFFFFFFFFFFFLL) + 32);
                v225 = v156 & 0xFFFFFFFFFFFFLL;
              }

              else
              {
                v224 = _StringObject.sharedUTF8.getter(v156, v181);
              }

              closure #1 in _StringGuts._convertedToSmall()(v224, v225, &v256, v180);
              v181;
              v181 = *(&v256 + 1);
              v156 = v256;
            }

            v189 = specialized _SmallString.init(_:appending:)(v140, v170, v156, v181);
            if (v191)
            {
              goto LABEL_311;
            }

            v192 = v189;
            v193 = v190;
            v149;
            swift_bridgeObjectRelease_n(v155, 2);
            v257 = v192;
            v258 = v193;
            goto LABEL_274;
          }

          goto LABEL_229;
        }

LABEL_235:
        v170 = v149;
        goto LABEL_236;
      }
    }

    else if (v166 <= 15)
    {
      if ((v149 & 0x2000000000000000) == 0)
      {
        goto LABEL_224;
      }

      goto LABEL_235;
    }

LABEL_229:
    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v166, v165);
    if ((v155 & 0x1000000000000000) != 0)
    {
      goto LABEL_250;
    }

    v112 = v255;
    if (!v160)
    {
      *&v256 = v156;
      *(&v256 + 1) = v155 & 0xFFFFFFFFFFFFFFLL;
      closure #1 in _StringGuts.append(_:)(&v256, HIBYTE(v155) & 0xF, &v257, (v155 & 0x4000000000000000) != 0);
      swift_bridgeObjectRelease_n(v155, 2);
      v11 = v254;
      goto LABEL_275;
    }

    if ((v156 & 0x1000000000000000) != 0)
    {
      v171 = (v155 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v172 = v253;
      v11 = v254;
      v173 = v253;
LABEL_233:
      v174 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v172, v171, v173);
      closure #1 in _StringGuts.append(_:)(v174, v175, &v257, v156 < 0);
      swift_bridgeObjectRelease_n(v155, 2);
      goto LABEL_275;
    }

    v233 = _StringObject.sharedUTF8.getter(v156, v155);
    if (v234 >= v253)
    {
      v171 = v233;
      v173 = v234;
      v11 = v254;
      v112 = v255;
      v172 = v253;
      goto LABEL_233;
    }

LABEL_307:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v162 = v256 & 0xFFFFFFFFFFFFLL;
  v163 = HIBYTE(*(&v256 + 1)) & 0xFLL;
  if ((*(&v256 + 1) & 0x2000000000000000) == 0)
  {
LABEL_214:
    v163 = v162;
  }

  v253 = v162;
  if ((*(&v256 + 1) & 0x1000000000000000) == 0)
  {
    goto LABEL_216;
  }

LABEL_244:
  swift_bridgeObjectRetain_n(*(&v256 + 1), 2);
  v183._rawBits = 1;
  v184._rawBits = (v163 << 16) | 1;
  v185._rawBits = _StringGuts.validateScalarRange(_:)(v183, v184, v156, v155)._rawBits;
  if (v185._rawBits < 0x10000)
  {
    v185._rawBits |= 3;
  }

  v165 = String.UTF8View.distance(from:to:)(v185, v186);
  v155;
  if ((v149 & 0x1000000000000000) != 0)
  {
    goto LABEL_247;
  }

LABEL_217:
  v22 = __OFADD__(v159, v165);
  v166 = v159 + v165;
  if (!v22)
  {
    goto LABEL_218;
  }

LABEL_249:
  __break(1u);
LABEL_250:
  _StringGuts._foreignAppendInPlace(_:)(v156, v155, 0, v163);
  swift_bridgeObjectRelease_n(v155, 2);
  v11 = v254;
  v112 = v255;
LABEL_275:
  v203 = v258;
  v204 = HIBYTE(v258) & 0xF;
  if ((v258 & 0x2000000000000000) == 0)
  {
    v204 = v257 & 0xFFFFFFFFFFFFLL;
  }

  if (v204 || (v257 & ~v258 & 0x2000000000000000) != 0)
  {
    if ((v258 & 0x2000000000000000) != 0 && (v205 = specialized _SmallString.init(_:appending:)(v257, v258, 0x29uLL, 0xE100000000000000), (v207 & 1) == 0))
    {
      v218 = v205;
      v217 = v206;
      v203;
      0xE100000000000000;
      v216 = v218;
    }

    else
    {
      0xE100000000000000;
      _StringGuts.append(_:)(41, 0xE100000000000000, 0, 1, v208, v209, v210, v211, v212, v213, v214, v215);
      swift_bridgeObjectRelease_n(0xE100000000000000, 2);
      v216 = v257;
      v217 = v258;
    }
  }

  else
  {
    v258;
    v217 = 0xE100000000000000;
    v216 = 41;
  }

  v219 = specialized static String.+ infix(_:_:)(v11, v112, v216, v217);
  v112;
  v217;
  return v219;
}

uint64_t ClosedRange.customMirror.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a1 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1, a2);
  v36 = &v37[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v37[-1] - v11;
  (*(v7 + 16))(&v37[-1] - v11, v4, a1);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, _ss23_ContiguousArrayStorageCySS_yptGMR);
  v14 = swift_allocObject(v13, 0x80, 7uLL);
  *(v14 + 1) = xmmword_18071DBE0;
  v14[4] = 0x756F427265776F6CLL;
  v14[5] = 0xEA0000000000646ELL;
  v15 = *(a1 + 16);
  v14[9] = v15;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v14 + 6);
  v17 = *(*(v15 - 8) + 16);
  v17(boxed_opaque_existential_0Tm, v4, v15);
  v14[10] = 0x756F427265707075;
  v14[11] = 0xEA0000000000646ELL;
  v18 = *(a1 + 36);
  v14[15] = v15;
  v19 = __swift_allocate_boxed_opaque_existential_0Tm(v14 + 12);
  v17(v19, v4 + v18, v15);
  v37[0] = 0;
  v37[1] = 0;
  v20 = static Mirror._superclassIterator<A>(_:_:)(v12, v37, a1);
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMd, _ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMR);
  v24 = swift_allocObject(v23, 0x48, 7uLL);
  v24[6] = v14;
  v24[7] = closure #1 in Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:);
  v24[8] = 0;
  v25 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v26 = swift_allocObject(v25, 0x18, 7uLL);
  v26[2] = 0;
  v27 = v14[2];
  v28 = swift_allocObject(v25, 0x18, 7uLL);
  v28[2] = v27;
  v24[2] = v26;
  v24[3] = &protocol witness table for _IndexBox<A>;
  v24[4] = v28;
  v24[5] = &protocol witness table for _IndexBox<A>;
  v29 = v36;
  (*(v7 + 32))(v36, v12, a1);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v37, v29, a1, v30, 6uLL, v31, v32, v33, v36);
  v35 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }

  *a3 = a1;
  *(a3 + 8) = v24;
  *(a3 + 16) = 9;
  *(a3 + 24) = v20;
  *(a3 + 32) = v22;
  *(a3 + 40) = v35;
  return result;
}

uint64_t ClosedRange<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(a2 + 16);
  v5(a1, v6);
  return (v5)(a1, v6, a3);
}

Swift::Int ClosedRange<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  v9 = 0u;
  v10 = 0u;
  v6 = 0;
  v7 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v8 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  v3 = *(a2 + 24);
  v4 = *(a1 + 16);
  v3(&v6, v4, a2);
  v3(&v6, v4, a2);
  return Hasher._finalize()();
}

uint64_t ClosedRange<>.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, Class *, uint64_t)@<X4>, char *a6@<X8>)
{
  v155 = a5;
  v156 = a3;
  v159 = a4;
  v154 = a6;
  swift_getTupleTypeMetadata2(0, a2, a2, "lower upper ", 0);
  v158 = v8;
  v153 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v149 - v15;
  v157 = *(a2 - 1);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v149 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v149 - v22;
  v25 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v25);
  v26 = v165;
  (*(v24 + 32))(v162, v25, v24);
  if (v26)
  {
LABEL_68:
    v44 = a1;
    return __swift_destroy_boxed_opaque_existential_1Tm(v44);
  }

  v150 = v16;
  v151 = v12;
  v27 = v158;
  v152 = v20;
  v165 = a1;
  v28 = v163;
  v29 = v164;
  __swift_mutable_project_boxed_opaque_existential_1(v162, v163);
  v30 = v159;
  (*(v29 + 176))(a2, a2, v159, v28, v29);
  v31 = a2;
  v32 = v163;
  v33 = v164;
  __swift_mutable_project_boxed_opaque_existential_1(v162, v163);
  v34 = v152;
  (*(v33 + 176))(v31, v31, v30, v32, v33);
  v35 = v156;
  if (((*(v156 + 24))(v23, v34, v31, v156) & 1) == 0)
  {
    swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
    v159 = v45;
    v46 = v165[3];
    v47 = v165[4];
    __swift_project_boxed_opaque_existential_0Tm(v165, v46);
    v158 = (*(v47 + 8))(v46, v47);
    v48 = _StringGuts.init(_initialCapacity:)(72);
    v58 = v49;
    v160 = v48;
    v161 = v49;
    v59 = HIBYTE(v49) & 0xF;
    if ((v49 & 0x2000000000000000) == 0)
    {
      v59 = v48 & 0xFFFFFFFFFFFFLL;
    }

    if (v59 || (v48 & ~v49 & 0x2000000000000000) != 0)
    {
      v60 = v23;
      if ((0x800000018066C240 & 0x2000000000000000 & v49) != 0 && (v61 = specialized _SmallString.init(_:appending:)(v48, v49, 0xD000000000000012, 0x800000018066C240 | 0x8000000000000000), (v63 & 1) == 0))
      {
        v65 = v61;
        v66 = v62;
        v58;
        0x800000018066C240 | 0x8000000000000000;
        v160 = v65;
        v161 = v66;
      }

      else
      {
        if ((0x800000018066C240 & 0x2000000000000000) != 0)
        {
          v64 = (0x800000018066C240 >> 56) & 0xF;
        }

        else
        {
          v64 = 18;
        }

        _StringGuts.append(_:)(0xD000000000000012, 0x800000018066C240 | 0x8000000000000000, 0, v64, v50, v51, v52, v53, v54, v55, v56, v57);
        0x800000018066C240 | 0x8000000000000000;
      }

      v23 = v60;
      v35 = v156;
    }

    else
    {
      v49;
      v160 = 0xD000000000000012;
      v161 = 0x800000018066C240 | 0x8000000000000000;
    }

    v67 = v155(0, v31, v35);
    TypeName = swift_getTypeName(v67, 0);
    if (v69 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v70 = TypeName;
    v71 = v69;
    v72 = validateUTF8(_:)(TypeName, v69);
    if ((v72 & 0x8000000000000000) != 0)
    {
      v76 = repairUTF8(_:firstKnownBrokenRange:)(v70, v71, v73, v74);
    }

    else
    {
      v76 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v70, v71, v72 & 1, v75);
    }

    v86 = v77;
    v87 = v161;
    v88 = HIBYTE(v161) & 0xF;
    if ((v161 & 0x2000000000000000) == 0)
    {
      v88 = v160 & 0xFFFFFFFFFFFFLL;
    }

    if (!v88 && (v160 & ~v161 & 0x2000000000000000) == 0)
    {
      v89 = v23;
      v111 = v76;
      v161;
      v99 = v111;
      v160 = v111;
      v161 = v86;
      goto LABEL_30;
    }

    v89 = v23;
    if ((v161 & 0x2000000000000000) != 0)
    {
      if ((v77 & 0x2000000000000000) != 0)
      {
        v107 = v76;
        v108 = specialized _SmallString.init(_:appending:)(v160, v161, v76, v77);
        if ((v110 & 1) == 0)
        {
          v147 = v109;
          v148 = v108;
          v87;
          v86;
          v160 = v148;
          v161 = v147;
          v86 = v147;
          v99 = v148;
          goto LABEL_30;
        }

        v90 = HIBYTE(v86) & 0xF;
        v76 = v107;
        goto LABEL_29;
      }
    }

    else if ((v77 & 0x2000000000000000) != 0)
    {
      v90 = HIBYTE(v77) & 0xF;
LABEL_29:
      _StringGuts.append(_:)(v76, v86, 0, v90, v78, v79, v80, v81, v82, v83, v84, v85);
      v86;
      v99 = v160;
      v86 = v161;
LABEL_30:
      v100 = HIBYTE(v86) & 0xF;
      if ((v86 & 0x2000000000000000) == 0)
      {
        v100 = v99 & 0xFFFFFFFFFFFFLL;
      }

      if (v100 || (v99 & ~v86 & 0x2000000000000000) != 0)
      {
        if ((0x800000018066C770 & 0x2000000000000000 & v86) != 0 && (v101 = specialized _SmallString.init(_:appending:)(v99, v86, 0xD000000000000014, 0x800000018066C770 | 0x8000000000000000), (v103 & 1) == 0))
        {
          v105 = v101;
          v106 = v102;
          v86;
          0x800000018066C770 | 0x8000000000000000;
          v160 = v105;
          v161 = v106;
        }

        else
        {
          if ((0x800000018066C770 & 0x2000000000000000) != 0)
          {
            v104 = (0x800000018066C770 >> 56) & 0xF;
          }

          else
          {
            v104 = 20;
          }

          _StringGuts.append(_:)(0xD000000000000014, 0x800000018066C770 | 0x8000000000000000, 0, v104, v91, v92, v93, v94, v95, v96, v97, v98);
          0x800000018066C770 | 0x8000000000000000;
        }
      }

      else
      {
        v86;
        v160 = 0xD000000000000014;
        v161 = 0x800000018066C770 | 0x8000000000000000;
      }

      _print_unlocked<A, B>(_:_:)(v89, &v160, v31, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      v112 = *(v157 + 8);
      v112(v89, v31);
      v121 = v161;
      v122 = HIBYTE(v161) & 0xF;
      if ((v161 & 0x2000000000000000) == 0)
      {
        v122 = v160 & 0xFFFFFFFFFFFFLL;
      }

      if (v122 || (v160 & ~v161 & 0x2000000000000000) != 0)
      {
        if ((0x800000018066C790 & 0x2000000000000000 & v161) != 0 && (v123 = specialized _SmallString.init(_:appending:)(v160, v161, 0xD00000000000001BLL, 0x800000018066C790 | 0x8000000000000000), (v125 & 1) == 0))
        {
          v127 = v123;
          v128 = v124;
          v121;
          0x800000018066C790 | 0x8000000000000000;
          v160 = v127;
          v161 = v128;
        }

        else
        {
          if ((0x800000018066C790 & 0x2000000000000000) != 0)
          {
            v126 = (0x800000018066C790 >> 56) & 0xF;
          }

          else
          {
            v126 = 27;
          }

          _StringGuts.append(_:)(0xD00000000000001BLL, 0x800000018066C790 | 0x8000000000000000, 0, v126, v113, v114, v115, v116, v117, v118, v119, v120);
          0x800000018066C790 | 0x8000000000000000;
        }
      }

      else
      {
        v161;
        v160 = 0xD00000000000001BLL;
        v161 = 0x800000018066C790 | 0x8000000000000000;
      }

      v129 = v152;
      _print_unlocked<A, B>(_:_:)(v152, &v160, v31, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      v112(v129, v31);
      v138 = v161;
      v139 = HIBYTE(v161) & 0xF;
      if ((v161 & 0x2000000000000000) == 0)
      {
        v139 = v160 & 0xFFFFFFFFFFFFLL;
      }

      v140 = v159;
      if (v139 || (v160 & ~v161 & 0x2000000000000000) != 0)
      {
        if ((v161 & 0x2000000000000000) != 0 && (v141 = specialized _SmallString.init(_:appending:)(v160, v161, 0x29uLL, 0xE100000000000000), (v143 & 1) == 0))
        {
          v145 = v141;
          v144 = v142;
          v138;
          0xE100000000000000;
        }

        else
        {
          _StringGuts.append(_:)(41, 0xE100000000000000, 0, 1, v130, v131, v132, v133, v134, v135, v136, v137);
          0xE100000000000000;
          v145 = v160;
          v144 = v161;
        }
      }

      else
      {
        v161;
        v144 = 0xE100000000000000;
        v145 = 41;
      }

      *v140 = v158;
      *(v140 + 8) = v145;
      *(v140 + 16) = v144;
      *(v140 + 24) = 0;
      *(v140 + 72) = 3;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1Tm(v162);
      a1 = v165;
      goto LABEL_68;
    }

    v90 = v76 & 0xFFFFFFFFFFFFLL;
    goto LABEL_29;
  }

  v36 = v157;
  v159 = 0;
  v37 = *(v157 + 32);
  v38 = v150;
  v37(v150, v23, v31);
  v37(&v38[*(v27 + 48)], v34, v31);
  v39 = v153;
  v40 = v151;
  (*(v153 + 16))(v151, v38, v27);
  v152 = *(v27 + 48);
  v37(v154, v40, v31);
  v41 = *(v36 + 8);
  v41(&v40[v152], v31);
  (*(v39 + 32))(v40, v38, v27);
  v42 = *(v27 + 48);
  v43 = v155(0, v31, v156);
  v37(&v154[*(v43 + 36)], &v40[v42], v31);
  v41(v40, v31);
  __swift_destroy_boxed_opaque_existential_1Tm(v162);
  v44 = v165;
  return __swift_destroy_boxed_opaque_existential_1Tm(v44);
}

uint64_t PartialRangeUpTo.relative<A>(to:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v35 = a2;
  v37 = a4;
  v6 = *(a1 + 16);
  swift_getTupleTypeMetadata2(0, v6, v6, "lower upper ", 0);
  v8 = v7;
  v34 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v34 - v15;
  v17 = *(v6 - 1);
  v19 = MEMORY[0x1EEE9AC00](v14, v18);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v34 - v23;
  (*(a3 + 64))(v35, a3);
  (*(v17 + 16))(v21, v36, v6);
  v25 = *(a1 + 24);
  if (((*(v25 + 24))(v24, v21, v6, v25) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v26 = *(v17 + 32);
  v26(v16, v24, v6);
  v26(&v16[*(v8 + 48)], v21, v6);
  v36 = v25;
  v27 = v34;
  (*(v34 + 16))(v12, v16, v8);
  v28 = *(v8 + 48);
  v26(v37, v12, v6);
  v29 = *(v17 + 8);
  v29(&v12[v28], v6);
  (*(v27 + 32))(v12, v16, v8);
  v30 = *(v8 + 48);
  v32 = type metadata accessor for Range(0, v6, v36, v31);
  v26(&v37[*(v32 + 36)], &v12[v30], v6);
  return (v29)(v12, v6);
}

uint64_t protocol witness for RangeExpression.relative<A>(to:) in conformance PartialRangeUpTo<A>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v35 = a1;
  v37 = a4;
  v6 = *(a3 + 16);
  swift_getTupleTypeMetadata2(0, v6, v6, "lower upper ", 0);
  v8 = v7;
  v34 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v34 - v15;
  v17 = *(v6 - 1);
  v19 = MEMORY[0x1EEE9AC00](v14, v18);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v34 - v23;
  (*(a2 + 64))(v35, a2);
  (*(v17 + 16))(v21, v36, v6);
  v25 = *(a3 + 24);
  if (((*(v25 + 24))(v24, v21, v6, v25) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v26 = *(v17 + 32);
  v26(v16, v24, v6);
  v26(&v16[*(v8 + 48)], v21, v6);
  v36 = v25;
  v27 = v34;
  (*(v34 + 16))(v12, v16, v8);
  v28 = *(v8 + 48);
  v26(v37, v12, v6);
  v29 = *(v17 + 8);
  v29(&v12[v28], v6);
  (*(v27 + 32))(v12, v16, v8);
  v30 = *(v8 + 48);
  v32 = type metadata accessor for Range(0, v6, v36, v31);
  v26(&v37[*(v32 + 36)], &v12[v30], v6);
  return (v29)(v12, v6);
}

uint64_t PartialRangeThrough.relative<A>(to:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v38 = a4;
  v7 = *(a1 + 16);
  swift_getTupleTypeMetadata2(0, v7, v7, "lower upper ", 0);
  v35 = v8;
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v36 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v35 - v15;
  v17 = *(v7 - 1);
  v19 = MEMORY[0x1EEE9AC00](v14, v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v35 - v23;
  (*(a3 + 64))(a2, a3);
  (*(a3 + 184))(v37, a2, a3);
  v25 = *(a1 + 24);
  if (((*(v25 + 24))(v24, v21, v7, v25) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v26 = *(v17 + 32);
  v26(v16, v24, v7);
  v37 = v25;
  v27 = v35;
  v26(&v16[*(v35 + 48)], v21, v7);
  v28 = v36;
  (*(v9 + 16))(v36, v16, v27);
  v29 = *(v27 + 48);
  v26(v38, v28, v7);
  v30 = *(v17 + 8);
  v30(&v28[v29], v7);
  (*(v9 + 32))(v28, v16, v27);
  v31 = *(v27 + 48);
  v33 = type metadata accessor for Range(0, v7, v37, v32);
  v26(&v38[*(v33 + 36)], &v28[v31], v7);
  return (v30)(v28, v7);
}

uint64_t protocol witness for RangeExpression.relative<A>(to:) in conformance PartialRangeThrough<A>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v38 = a4;
  v7 = *(a3 + 16);
  swift_getTupleTypeMetadata2(0, v7, v7, "lower upper ", 0);
  v35 = v8;
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v36 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v35 - v15;
  v17 = *(v7 - 1);
  v19 = MEMORY[0x1EEE9AC00](v14, v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v35 - v23;
  (*(a2 + 64))(a1, a2);
  (*(a2 + 184))(v37, a1, a2);
  v25 = *(a3 + 24);
  if (((*(v25 + 24))(v24, v21, v7, v25) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v26 = *(v17 + 32);
  v26(v16, v24, v7);
  v37 = v25;
  v27 = v35;
  v26(&v16[*(v35 + 48)], v21, v7);
  v28 = v36;
  (*(v9 + 16))(v36, v16, v27);
  v29 = *(v27 + 48);
  v26(v38, v28, v7);
  v30 = *(v17 + 8);
  v30(&v28[v29], v7);
  (*(v9 + 32))(v28, v16, v27);
  v31 = *(v27 + 48);
  v33 = type metadata accessor for Range(0, v7, v37, v32);
  v26(&v38[*(v33 + 36)], &v28[v31], v7);
  return (v30)(v28, v7);
}

uint64_t PartialRangeUpTo<>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v21 = a3;
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v18[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v9[3];
  v13 = v9[4];
  __swift_project_boxed_opaque_existential_0Tm(v9, v12);
  (*(v13 + 32))(v18, v12, v13);
  if (!v4)
  {
    v14 = v19;
    v15 = v20;
    __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    (*(v15 + 176))(a2, a2, v21, v14, v15);
    (*(v8 + 32))(a4, v11, a2);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

{
  return PartialRangeFrom<>.init(from:)(a1, a2, a3, a4);
}

uint64_t PartialRangeUpTo<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  (*(v7 + 32))(v11, v6, v7);
  v8 = v12;
  v9 = v13;
  __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
  (*(v9 + 160))(v3, *(a2 + 16), a3, v8, v9);
  return __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

{
  return PartialRangeFrom<>.encode(to:)(a1, a2, a3);
}

uint64_t PartialRangeFrom.relative<A>(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v36[1] = a1;
  v37 = a3;
  v38 = a5;
  v8 = *(a2 + 16);
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v10 = v9;
  v36[0] = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = v36 - v17;
  v19 = *(v8 - 1);
  v21 = MEMORY[0x1EEE9AC00](v16, v20);
  v23 = v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = v36 - v25;
  (*(v19 + 16))(v36 - v25, v5, v8);
  (*(a4 + 72))(v37, a4);
  v27 = *(a2 + 24);
  if (((*(v27 + 24))(v26, v23, v8, v27) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v28 = *(v19 + 32);
  v28(v18, v26, v8);
  v28(&v18[*(v10 + 48)], v23, v8);
  v37 = v27;
  v29 = v36[0];
  (*(v36[0] + 16))(v14, v18, v10);
  v30 = *(v10 + 48);
  v28(v38, v14, v8);
  v31 = *(v19 + 8);
  v31(&v14[v30], v8);
  (*(v29 + 32))(v14, v18, v10);
  v32 = *(v10 + 48);
  v34 = type metadata accessor for Range(0, v8, v37, v33);
  v28(&v38[*(v34 + 36)], &v14[v32], v8);
  return (v31)(v14, v8);
}

uint64_t protocol witness for RangeExpression.relative<A>(to:) in conformance PartialRangeFrom<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v36[1] = a1;
  v37 = a2;
  v38 = a5;
  v8 = *(a4 + 16);
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v10 = v9;
  v36[0] = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = v36 - v17;
  v19 = *(v8 - 1);
  v21 = MEMORY[0x1EEE9AC00](v16, v20);
  v23 = v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = v36 - v25;
  (*(v19 + 16))(v36 - v25, v5, v8);
  (*(a3 + 72))(v37, a3);
  v27 = *(a4 + 24);
  if (((*(v27 + 24))(v26, v23, v8, v27) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v28 = *(v19 + 32);
  v28(v18, v26, v8);
  v28(&v18[*(v10 + 48)], v23, v8);
  v37 = v27;
  v29 = v36[0];
  (*(v36[0] + 16))(v14, v18, v10);
  v30 = *(v10 + 48);
  v28(v38, v14, v8);
  v31 = *(v19 + 8);
  v31(&v14[v30], v8);
  (*(v29 + 32))(v14, v18, v10);
  v32 = *(v10 + 48);
  v34 = type metadata accessor for Range(0, v8, v37, v33);
  v28(&v38[*(v34 + 36)], &v14[v32], v8);
  return (v31)(v14, v8);
}

uint64_t PartialRangeFrom<>.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v24 = *(a1 + 24);
  swift_getAssociatedTypeWitness(0, v24, v4, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v6 = v5;
  v26 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5, v7);
  v25 = &v23 - v8;
  v9 = *(*(swift_getAssociatedConformanceWitness(v24, v4, v6, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v9, v6, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v11 = v10;
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v23 - v14;
  v16 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v13, v17);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(a2, v2, v4);
  (*(v16 + 56))(a2, 0, 1, v4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v9, v6, v11, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_1806729C0, 512, v11, AssociatedConformanceWitness);
  v21 = v25;
  (*(v9 + 24))(v15, v6, v9);
  (v24[6])(v21, v4);
  (*(v26 + 8))(v21, v6);
  return (*(v16 + 40))(v2, v19, v4);
}

uint64_t Collection.subscript.getter@<X0>(Class *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v61 = a3;
  swift_getAssociatedTypeWitness(255, a2, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  swift_getTupleTypeMetadata2(0, v7, v7, "lower upper ", 0);
  v60 = v8;
  v58 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v59 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v55 = &v51 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a2, a1, v7, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v16 = type metadata accessor for Range(0, v7, AssociatedConformanceWitness, v15);
  v56 = *(v16 - 8);
  v57 = v16;
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v51 - v19;
  v63 = *(v7 - 1);
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v62 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v27 = &v51 - v26;
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = &v51 - v29;
  v54 = type metadata accessor for PartialRangeFrom(0, v7, AssociatedConformanceWitness, v31);
  v32 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v33);
  v35 = &v51 - v34;
  v36 = *(a2 + 64);
  v64 = a1;
  v65 = v3;
  v66 = a2;
  v36(a1, a2);
  if (((*(*(AssociatedConformanceWitness + 8) + 8))(v30, v30, v7) & 1) == 0 || (v37 = v63, v53 = *(v63 + 32), v53(v35, v30, v7), (*(v37 + 16))(v27, v35, v7), v38 = v62, (*(v66 + 72))(v64, v66), ((*(AssociatedConformanceWitness + 24))(v27, v38, v7, AssociatedConformanceWitness) & 1) == 0))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v32 + 8))(v35, v54);
  v39 = v20;
  v52 = v20;
  v40 = v55;
  v41 = v53;
  v53(v55, v27, v7);
  v42 = v60;
  v41(&v40[*(v60 + 48)], v38, v7);
  v44 = v58;
  v43 = v59;
  (*(v58 + 16))(v59, v40, v42);
  v45 = *(v42 + 48);
  v41(v39, v43, v7);
  v46 = *(v63 + 8);
  v46(&v43[v45], v7);
  (*(v44 + 32))(v43, v40, v42);
  v47 = *(v42 + 48);
  v48 = v57;
  v49 = v52;
  v41(&v52[*(v57 + 36)], &v43[v47], v7);
  v46(v43, v7);
  (*(v66 + 88))(v49, v64);
  return (*(v56 + 8))(v49, v48);
}

uint64_t specialized MutableCollection.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  (*(v5 + 72))(v8, a2, v5);
  v6 = v8[0];
  if (v8[0] < a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8[0] = a1;
  v8[1] = v6;
  return (*(v5 + 88))(v8, a2, v5);
}

{
  v5 = *(a3 + 8);
  (*(v5 + 64))(v7, a2, v5);
  if (v7[0] > a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7[1] = a1;
  return (*(v5 + 88))(v7, a2, v5);
}

uint64_t MutableCollection.subscript.getter(uint64_t a1, Class *a2, const char *a3, uint64_t a4, swift *a5)
{
  v9 = *(a4 + 8);
  swift_getAssociatedTypeWitness(255, v9, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v10, &protocol requirements base descriptor for RangeExpression, associated conformance descriptor for RangeExpression.RangeExpression.Bound: Comparable);
  v14 = type metadata accessor for Range(0, v11, AssociatedConformanceWitness, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v20 - v17;
  (*(a5 + 3))(v5, a2, v9, a3, a5);
  (*(v9 + 88))(v18, a2, v9);
  return (*(v15 + 8))(v18, v14);
}

uint64_t key path setter for MutableCollection.subscript<A>(_:) : <A><A1>AAA1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 32);
  v7 = *(a3 + a4 - 24);
  v8 = *(a3 + a4 - 16);
  v9 = *(a3 + a4 - 8);
  swift_getAssociatedTypeWitness(0, *(v8 + 8), v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v16 - v12;
  (*(v14 + 16))(&v16 - v12, a1);
  return specialized MutableCollection.subscript.setter(v13, a3, v6, v7, v8, v9);
}

uint64_t MutableCollection.subscript.setter(uint64_t a1, uint64_t a2, Class *a3, const char *a4, uint64_t a5, swift *a6)
{
  specialized MutableCollection.subscript.setter(a1, a2, a3, a4, a5, a6);
  v8 = *(*(a4 - 1) + 8);

  return v8(a2, a4);
}

void (*MutableCollection.subscript.modify(void *a1, uint64_t a2, Class *a3, const char *a4, uint64_t a5, swift *a6))(uint64_t a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v11 = swift_coroFrameAlloc(0x80, 0xC48FuLL);
  }

  else
  {
    v11 = malloc(0x80uLL);
  }

  v12 = v11;
  *a1 = v11;
  v11[3] = a6;
  v11[4] = v34;
  v11[1] = a4;
  v11[2] = a5;
  *v11 = a3;
  v13 = *(a5 + 8);
  v11[5] = v13;
  swift_getAssociatedTypeWitness(255, v13, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v15 = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a6, a4, v14, &protocol requirements base descriptor for RangeExpression, associated conformance descriptor for RangeExpression.RangeExpression.Bound: Comparable);
  v32 = type metadata accessor for Range(0, v15, AssociatedConformanceWitness, v17);
  v18 = *(v32 - 8);
  v19 = *(v18 + 64);
  if (swift_coroFrameAlloc)
  {
    v20 = swift_coroFrameAlloc(v19, 0xC48FuLL);
  }

  else
  {
    v20 = malloc(v19);
  }

  v21 = v20;
  v12[6] = v20;
  swift_getAssociatedTypeWitness(0, v13, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v12[7] = v22;
  v23 = *(v22 - 8);
  v12[8] = v23;
  v24 = *(v23 + 64);
  v33 = a6;
  if (swift_coroFrameAlloc)
  {
    v12[9] = swift_coroFrameAlloc(v24, 0xC48FuLL);
    v25 = swift_coroFrameAlloc(v24, 0xC48FuLL);
  }

  else
  {
    v12[9] = malloc(v24);
    v25 = malloc(v24);
  }

  v12[10] = v25;
  v26 = *(a4 - 1);
  v27 = v26;
  v12[11] = v26;
  v28 = *(v26 + 64);
  if (swift_coroFrameAlloc)
  {
    v12[12] = swift_coroFrameAlloc(v28, 0xC48FuLL);
    v29 = swift_coroFrameAlloc(v28, 0xC48FuLL);
  }

  else
  {
    v12[12] = malloc(v28);
    v29 = malloc(v28);
  }

  v12[13] = v29;
  (*(v27 + 16))();
  v30 = *(v33 + 3);
  v12[14] = v30;
  v12[15] = (v33 + 24) & 0xFFFFFFFFFFFFLL | 0x25A2000000000000;
  v30(v34, a3, v13, a4);
  (*(v13 + 88))(v21, a3, v13);
  (*(v18 + 8))(v21, v32);
  return MutableCollection.subscript.modify;
}

void MutableCollection.subscript.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v20 = *(*a1 + 96);
  v21 = *(*a1 + 104);
  v4 = *(*a1 + 80);
  v3 = *(*a1 + 88);
  v5 = *(*a1 + 72);
  if (a2)
  {
    v6 = v2[8];
    v7 = v2[6];
    v8 = v2[4];
    v16 = v2[5];
    v17 = v2[3];
    v9 = v2[1];
    v18 = v2[2];
    v19 = v2[7];
    v15 = *v2;
    v10 = *(*a1 + 80);
    v11 = *(*a1 + 112);
    (*(v6 + 16))(v5, v10);
    (*(v3 + 32))(v20, v21, v9);
    v11(v8, v15, v16, v9, v17);
    (*(v3 + 8))(v20, v9);
    v4 = v10;
    (*(v18 + 40))(v5, v7, v15);
    (*(v6 + 8))(v10, v19);
  }

  else
  {
    v7 = v2[6];
    v13 = v2[1];
    v12 = v2[2];
    v14 = *v2;
    (*(*a1 + 112))(v2[4], *v2, v2[5], v13, v2[3]);
    (*(v3 + 8))(v21, v13);
    (*(v12 + 40))(v4, v7, v14, v12);
  }

  free(v21);
  free(v20);
  free(v4);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t MutableCollection.subscript.getter@<X0>(Class *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v57 = a3;
  v5 = *(a2 + 8);
  swift_getAssociatedTypeWitness(255, v5, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  swift_getTupleTypeMetadata2(0, v7, v7, "lower upper ", 0);
  v56 = v8;
  v54 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v55 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v51 = &v49 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, a1, v7, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v16 = type metadata accessor for Range(0, v7, AssociatedConformanceWitness, v15);
  v52 = *(v16 - 8);
  v53 = v16;
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v50 = &v49 - v19;
  v59 = *(v7 - 1);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v58 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v26 = &v49 - v25;
  MEMORY[0x1EEE9AC00](v24, v27);
  v29 = &v49 - v28;
  v31 = type metadata accessor for PartialRangeFrom(0, v7, AssociatedConformanceWitness, v30);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v49 - v34;
  v36 = *(v5 + 64);
  v61 = a1;
  v62 = v3;
  v60 = v5;
  v36(a1, v5);
  if (((*(*(AssociatedConformanceWitness + 8) + 8))(v29, v29, v7) & 1) == 0 || (v49 = v31, v37 = v59, v38 = *(v59 + 32), v38(v35, v29, v7), (*(v37 + 16))(v26, v35, v7), v39 = v58, (*(v60 + 72))(v61), ((*(AssociatedConformanceWitness + 24))(v26, v39, v7, AssociatedConformanceWitness) & 1) == 0))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v32 + 8))(v35, v49);
  v40 = v51;
  v38(v51, v26, v7);
  v41 = v56;
  v38(&v40[*(v56 + 48)], v39, v7);
  v43 = v54;
  v42 = v55;
  (*(v54 + 16))(v55, v40, v41);
  v58 = *(v41 + 48);
  v44 = v50;
  v38(v50, v42, v7);
  v45 = *(v59 + 8);
  v45(&v58[v42], v7);
  (*(v43 + 32))(v42, v40, v41);
  v46 = *(v41 + 48);
  v47 = v53;
  v38(&v44[*(v53 + 36)], &v42[v46], v7);
  v45(v42, v7);
  (*(v60 + 88))(v44, v61);
  return (*(v52 + 8))(v44, v47);
}

void (*MutableCollection.subscript.modify(void *a1, uint64_t a2, uint64_t a3, Class *a4, uint64_t a5))(uint64_t *a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc(0x38, 0x4A43uLL);
  }

  else
  {
    v9 = malloc(0x38uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a5;
  v9[2] = v5;
  *v9 = a4;
  swift_getAssociatedTypeWitness(0, *(a5 + 8), a4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v10[3] = v11;
  v12 = *(v11 - 8);
  v10[4] = v12;
  v13 = *(v12 + 64);
  if (swift_coroFrameAlloc)
  {
    v10[5] = swift_coroFrameAlloc(v13, 0x4A43uLL);
    v14 = swift_coroFrameAlloc(v13, 0x4A43uLL);
  }

  else
  {
    v10[5] = malloc(v13);
    v14 = malloc(v13);
  }

  v10[6] = v14;
  MutableCollection.subscript.getter(a4, a5, v14);
  return MutableCollection.subscript.modify;
}

void MutableCollection.subscript.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  if (a2)
  {
    v5 = *(v2 + 24);
    v6 = *(v2 + 32);
    v7 = *(v2 + 8);
    v8 = *v2;
    (*(v6 + 16))(*(*a1 + 40), v4, v5);
    specialized MutableCollection.subscript.setter(v3, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    specialized MutableCollection.subscript.setter(*(*a1 + 48), *v2, *(v2 + 8));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Range.overlaps(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 36);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(v8 + 24);
  if (v9(a1 + v6, v3, v7, v8) & 1) != 0 || (v10 = *(a2 + 36), (v9(v3 + v10, a1, v7, v8)) || (v11 = *(v8 + 8), v12 = *(v11 + 8), (v12(v3, v3 + v10, v7, v11)))
  {
    v13 = 0;
  }

  else
  {
    v13 = v12(a1, a1 + v6, v7, v11) ^ 1;
  }

  return v13 & 1;
}

Swift::Void __swiftcall RangeReplaceableCollection.reserveCapacity(_:)(Swift::Int a1)
{
  _swift_displayCrashMessage();
}

{
  _swift_displayCrashMessage();
}

uint64_t RangeReplaceableCollection.init(repeating:count:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a1;
  swift_getAssociatedTypeWitness(255, *(a4[1] + 8), a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10 = v9;
  v13 = type metadata accessor for Repeated(0, v9, v11, v12);
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v30 - v20;
  v22 = a4[3];
  v30 = a5;
  v22(a3, a4);
  if (a2)
  {
    v23 = v31;
    if (a2 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    *v18 = a2;
    (*(*(v10 - 8) + 32))(&v18[*(v13 + 28)], v23, v10);
    (*(v14 + 32))(v21, v18, v13);
    v24 = a4[9];
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Repeated<A>, v13, v25);
    return v24(v21, v13, WitnessTable, a3, a4);
  }

  else
  {
    v28 = *(*(v10 - 8) + 8);
    v29 = v31;

    return v28(v29, v10);
  }
}

uint64_t RangeReplaceableCollection.append(_:)(uint64_t a1, Class *a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness(0, v6, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v14 - v11;
  (*(v6 + 72))(a2, v6);
  (*(a3 + 80))(a1, v12, a2, a3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t specialized RangeReplaceableCollection.append<A>(contentsOf:)(uint64_t a1, Class *a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v15 - v10;
  (*(a3 + 32))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v7, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v13 = *(AssociatedConformanceWitness + 16);
  v13(&v16, v7, AssociatedConformanceWitness);
  if ((v16 & 0x100) == 0)
  {
    do
    {
      if (HIBYTE(*v3))
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      *v3 |= (v16 + 1) << (-(__clz(*v3) & 0x18) & 0x18);
      v13(&v16, v7, AssociatedConformanceWitness);
    }

    while (BYTE1(v16) != 1);
  }

  return (*(v8 + 8))(v11, v7);
}

{
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v17 - v10;
  (*(a3 + 32))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v7, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v13 = *(AssociatedConformanceWitness + 16);
  v13(&v18, v7, AssociatedConformanceWitness);
  if ((v18 & 0x100000000) == 0)
  {
    do
    {
      v14._rawBits = *(v3 + 8);
      v15._rawBits = v14._rawBits;
      specialized Substring.UnicodeScalarView.replaceSubrange<A>(_:with:)(v14, v15);
      v13(&v18, v7, AssociatedConformanceWitness);
    }

    while (BYTE4(v18) != 1);
  }

  return (*(v8 + 8))(v11, v7);
}