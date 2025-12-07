uint64_t AnyColumn.convertedToStrings()()
{
  v59 = v0;
  v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v53 = *(v54 - 8);
  v2 = *(v53 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v55 = &v43;
  v60 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Float>);
  v5 = *(v60 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v52 = &v43;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v57 = &v43;
  v14 = v1;
  v15 = AnyColumn.wrappedElementType.getter(&demangling cache variable for type metadata for Column<Int>);
  if (swift_dynamicCastMetatype(v15, &type metadata for String))
  {
    return AnyColumn.assumingType<A>(_:)(&type metadata for String, &type metadata for String);
  }

  v56 = v10;
  v17 = v60;
  v49 = v5;
  v58 = v14;
  if (swift_dynamicCastMetatype(v15, &type metadata for Int))
  {
    v18 = v57;
    AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
    Column.mapNonNil<A>(_:)(specialized thunk for @escaping @callee_guaranteed (@unowned Int) -> (@owned String), 0, v9, &type metadata for String);
    v19 = v18;
    v20 = v9;
    v21 = v56;
    return (*(v21 + 8))(v19, v20);
  }

  if (swift_dynamicCastMetatype(v15, &type metadata for Float))
  {
    v22 = v52;
    AnyColumn.assumingType<A>(_:)(&type metadata for Float, &type metadata for Float);
    Column.mapNonNil<A>(_:)(closure #1 in AnyColumn.convertedToStrings(), 0, v17, &type metadata for String);
    v19 = v22;
    v20 = v17;
    v21 = v49;
    return (*(v21 + 8))(v19, v20);
  }

  if (swift_dynamicCastMetatype(v15, &type metadata for Double))
  {
    v23 = v55;
    AnyColumn.assumingType<A>(_:)(&type metadata for Double, &type metadata for Double);
    v24 = v54;
    Column.mapNonNil<A>(_:)(closure #2 in AnyColumn.convertedToStrings(), 0, v54, &type metadata for String);
    v19 = v23;
    v20 = v24;
    v21 = v53;
    return (*(v21 + 8))(v19, v20);
  }

  v55 = AnyColumn.name.getter();
  v56 = v25;
  v26 = type metadata accessor for AnyColumn(0);
  v27 = lazy protocol witness table accessor for type AnyColumn and conformance AnyColumn();
  v28 = dispatch thunk of Collection.count.getter(v26, v27);
  if (v28)
  {
    v29 = v28;
    v51 = _swiftEmptyArrayStorage;
    v30 = 0;
    if (v28 > 0)
    {
      v30 = v28;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
    v60 = v51;
    v57 = v27;
    dispatch thunk of Collection.startIndex.getter(v26, v27);
    v52 = v29;
    if (v29 < 0)
    {
      BUG();
    }

    v54 = &type metadata for Any + 8;
    v53 = v26;
    v31 = v57;
    do
    {
      v32 = dispatch thunk of Collection.subscript.read(&v47, v50, v26, v31);
      outlined init with copy of Any?(v33, v46);
      v32(&v47, 0);
      outlined init with copy of Any?(v46, &v47);
      if (v48)
      {
        outlined init with take of Any(&v47, v44);
        outlined init with copy of Any(v44, v45);
        v34 = String.init<A>(describing:)(v45, v54);
        v36 = v35;
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
      }

      else
      {
        v34 = 0;
        v36 = 0;
      }

      outlined destroy of Any?(v46);
      v37 = v60;
      v51 = v60;
      v38 = *(v60 + 16);
      if (*(v60 + 24) >> 1 <= v38)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(*(v60 + 24) >= 2uLL, v38 + 1, 1);
        v37 = v51;
      }

      v37[2] = v38 + 1;
      v39 = 2 * v38;
      v37[v39 + 4] = v34;
      v60 = v37;
      v37[v39 + 5] = v36;
      v26 = v53;
      v31 = v57;
      dispatch thunk of Collection.formIndex(after:)(v50, v53, v57);
      v52 = (v52 - 1);
    }

    while (v52);
    v40 = v60;
  }

  else
  {
    v40 = _swiftEmptyArrayStorage;
  }

  *&v47 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String?]);
  v42 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String?] and conformance [A], &demangling cache variable for type metadata for [String?], &protocol conformance descriptor for [A]);
  return Column.init<A>(name:contents:)(v55, v56, &v47, &type metadata for String, v41, v42);
}

uint64_t AnyColumn.convertedToFloatArrays()()
{
  v60 = v0;
  v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v58 = *(v61 - 8);
  v1 = *(v58 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v59 = v47;
  v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int]>);
  v55 = *(v56 - 8);
  v4 = *(v55 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v57 = v47;
  v53 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int64]>);
  v52 = *(v53 - 8);
  v7 = *(v52 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v54 = v47;
  v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int32]>);
  v51 = *(v49 - 8);
  v10 = *(v51 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v50 = v47;
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int8]>);
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v17 = AnyColumn.wrappedElementType.getter(&demangling cache variable for type metadata for Column<[Int8]>);
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int8]);
  v62 = v17;
  if (swift_dynamicCastMetatype(v17, v18))
  {
    AnyColumn.assumingType<A>(_:)(v18, v18);
    v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
    v20 = v60;
    Column.mapNonNil<A>(_:)(closure #1 in AnyColumn.convertedToFloatArrays(), 0, v13, v19);
    v21 = v47;
    v22 = v13;
    v23 = v48;
LABEL_3:
    (*(v23 + 8))(v21, v22);
    v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
    v25 = v20;
    return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
  }

  v26 = v50;
  v27 = v49;
  v28 = v60;
  v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int32]);
  if (swift_dynamicCastMetatype(v62, v29))
  {
    AnyColumn.assumingType<A>(_:)(v29, v29);
    v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
    Column.mapNonNil<A>(_:)(closure #2 in AnyColumn.convertedToFloatArrays(), 0, v27, v30);
    (*(v51 + 8))(v26, v27);
    v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
    v25 = v28;
    return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
  }

  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int64]);
  v33 = v28;
  if (swift_dynamicCastMetatype(v62, v32))
  {
    v34 = v54;
    AnyColumn.assumingType<A>(_:)(v32, v32);
    v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
    v20 = v33;
    v36 = v53;
    Column.mapNonNil<A>(_:)(closure #3 in AnyColumn.convertedToFloatArrays(), 0, v53, v35);
    v21 = v34;
    v22 = v36;
    v23 = v52;
    goto LABEL_3;
  }

  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
  if (swift_dynamicCastMetatype(v62, v37))
  {
    v20 = v28;
    v38 = v57;
    AnyColumn.assumingType<A>(_:)(v37, v37);
    v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
    v40 = v56;
    Column.mapNonNil<A>(_:)(closure #4 in AnyColumn.convertedToFloatArrays(), 0, v56, v39);
    v21 = v38;
    v22 = v40;
    v23 = v55;
    goto LABEL_3;
  }

  v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  if (swift_dynamicCastMetatype(v62, v41))
  {
    AnyColumn.assumingType<A>(_:)(v41, v41);
    v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
    v43 = v28;
    v44 = 0;
  }

  else
  {
    v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
    if (swift_dynamicCastMetatype(v62, v45))
    {
      v46 = v59;
      AnyColumn.assumingType<A>(_:)(v45, v45);
      v20 = v33;
      Column.mapNonNil<A>(_:)(closure #5 in AnyColumn.convertedToFloatArrays(), 0, v61, v41);
      v21 = v46;
      v22 = v61;
      v23 = v58;
      goto LABEL_3;
    }

    v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
    v43 = v28;
    v44 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v43, v44, 1, v42);
}

uint64_t Column<A>.parseAsJSONArrays()(uint64_t *a1, uint64_t a2)
{
  v30 = a2;
  v23 = v2;
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Any]>);
  v28 = *(v22 - 8);
  v4 = *(v28 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v25 = &v21;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v24 = &v21;
  v9 = alloca(v4);
  v10 = alloca(v4);
  v11 = __swift_instantiateConcreteTypeFromMangledName(a1);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any]);
  v13 = v30;
  v30 = v12;
  result = Column.map<A>(_:)(v13, 0, v11, v12);
  if (!v3)
  {
    v29 = Column.name.getter(v11);
    v27 = v15;
    v16 = v25;
    v26 = &v21;
    v17 = v22;
    (*(v28 + 16))(v25, &v21, v22);
    v18 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[Any]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[Any]>, &protocol conformance descriptor for Column<A>);
    v19 = v24;
    Column.init<A>(name:contents:)(v29, v27, v16, v30, v17, v18);
    Column.eraseToAnyColumn()(v17);
    v20 = *(v28 + 8);
    v20(v19, v17);
    return (v20)(v26, v17);
  }

  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@unowned Int) -> (@owned String)()
{
  v1 = v0;
  result = implicit closure #1 in AnyColumn.convertedToStrings()();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t closure #1 in AnyColumn.convertedToStrings()(float *a1)
{
  v2 = v1;
  result = Float.description.getter(*a1);
  *v2 = result;
  v2[1] = v4;
  return result;
}

uint64_t closure #2 in AnyColumn.convertedToStrings()(double *a1)
{
  v2 = v1;
  result = Double.description.getter(*a1);
  *v2 = result;
  v2[1] = v4;
  return result;
}

uint64_t closure #1 in AnyColumn.convertedToDoubles()(uint64_t *a1, uint64_t *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int8>);
  result = Column.count.getter(v7);
  *a2 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v3 = result;
    v4 = *a1;
    for (i = 0; i != v3; ++i)
    {
      result = Column.subscript.getter(i, v7);
      v6 = NAN;
      if (!v9)
      {
        result = v8;
        v6 = result;
      }

      *(v4 + 8 * i) = v6;
    }
  }

  return result;
}

uint64_t closure #2 in AnyColumn.convertedToDoubles()(uint64_t *a1, uint64_t *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int32>);
  result = Column.count.getter(v7);
  *a2 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v3 = result;
    v4 = *a1;
    for (i = 0; i != v3; ++i)
    {
      result = Column.subscript.getter(i, v7);
      v6 = NAN;
      if (!v9)
      {
        v6 = v8;
      }

      *(v4 + 8 * i) = v6;
    }
  }

  return result;
}

uint64_t closure #3 in AnyColumn.convertedToDoubles()(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledName(a4);
  result = Column.count.getter(v9);
  *a2 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v5 = result;
    v6 = *a1;
    for (i = 0; i != v5; ++i)
    {
      result = Column.subscript.getter(i, v9);
      v8 = NAN;
      if (!v11)
      {
        v8 = v10;
      }

      *(v6 + 8 * i) = v8;
    }
  }

  return result;
}

uint64_t closure #5 in AnyColumn.convertedToDoubles()(uint64_t *a1, uint64_t *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Float>);
  result = Column.count.getter(v7);
  *a2 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v3 = result;
    v4 = *a1;
    for (i = 0; i != v3; ++i)
    {
      result = Column.subscript.getter(i, v7);
      v6 = NAN;
      if (!v9)
      {
        v6 = v8;
      }

      *(v4 + 8 * i) = v6;
    }
  }

  return result;
}

uint64_t closure #6 in AnyColumn.convertedToDoubles()(uint64_t *a1, uint64_t *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  result = Column.count.getter(v7);
  *a2 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v3 = result;
    v4 = *a1;
    for (i = 0; i != v3; ++i)
    {
      result = Column.subscript.getter(i, v7);
      v6 = 0x7FF8000000000000;
      if (!v9)
      {
        v6 = v8;
      }

      *(v4 + 8 * i) = v6;
    }
  }

  return result;
}

uint64_t closure #1 in AnyColumn.convertedToFloats()(uint64_t *a1, uint64_t *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int8>);
  result = Column.count.getter(v7);
  *a2 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v3 = result;
    v4 = *a1;
    for (i = 0; i != v3; ++i)
    {
      result = Column.subscript.getter(i, v7);
      v6 = NAN;
      if (!v9)
      {
        result = v8;
        v6 = result;
      }

      *(v4 + 4 * i) = v6;
    }
  }

  return result;
}

uint64_t closure #2 in AnyColumn.convertedToFloats()(uint64_t *a1, uint64_t *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int32>);
  result = Column.count.getter(v7);
  *a2 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v3 = result;
    v4 = *a1;
    for (i = 0; i != v3; ++i)
    {
      result = Column.subscript.getter(i, v7);
      v6 = NAN;
      if (!v9)
      {
        v6 = v8;
      }

      *(v4 + 4 * i) = v6;
    }
  }

  return result;
}

uint64_t closure #3 in AnyColumn.convertedToFloats()(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledName(a4);
  result = Column.count.getter(v9);
  *a2 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v5 = result;
    v6 = *a1;
    for (i = 0; i != v5; ++i)
    {
      result = Column.subscript.getter(i, v9);
      v8 = NAN;
      if (!v11)
      {
        v8 = v10;
      }

      *(v6 + 4 * i) = v8;
    }
  }

  return result;
}

uint64_t closure #5 in AnyColumn.convertedToFloats()(uint64_t *a1, uint64_t *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Float>);
  result = Column.count.getter(v7);
  *a2 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v3 = result;
    v4 = *a1;
    for (i = 0; i != v3; ++i)
    {
      result = Column.subscript.getter(i, v7);
      v6 = 2143289344;
      if (!v9)
      {
        v6 = v8;
      }

      *(v4 + 4 * i) = v6;
    }
  }

  return result;
}

uint64_t closure #6 in AnyColumn.convertedToFloats()(uint64_t *a1, uint64_t *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  result = Column.count.getter(v7);
  *a2 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v3 = result;
    v4 = *a1;
    for (i = 0; i != v3; ++i)
    {
      result = Column.subscript.getter(i, v7);
      v6 = NAN;
      if (!v9)
      {
        v6 = v8;
      }

      *(v4 + 4 * i) = v6;
    }
  }

  return result;
}

void *closure #1 in AnyColumn.convertedToFloatArrays()(uint64_t *a1)
{
  v2 = *(*a1 + 16);
  if (v2)
  {
    v8 = result;
    v3 = 0;
    v9 = *a1;
    v10 = *(*a1 + 16);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = v2;
    v5 = v9;
    v6 = _swiftEmptyArrayStorage[2];
    do
    {
      v7 = *(v5 + v3 + 32);
      if (_swiftEmptyArrayStorage[3] >> 1 <= v6)
      {
        v11 = *(v5 + v3 + 32);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v6 + 1, 1);
        v7 = v11;
        v4 = v10;
        v5 = v9;
      }

      ++v3;
      _swiftEmptyArrayStorage[2] = v6 + 1;
      *(&_swiftEmptyArrayStorage[4] + v6++) = v7;
    }

    while (v4 != v3);
    result = v8;
  }

  *result = _swiftEmptyArrayStorage;
  return result;
}

void *closure #2 in AnyColumn.convertedToFloatArrays()(uint64_t *a1)
{
  v2 = *(*a1 + 16);
  if (v2)
  {
    v8 = result;
    v3 = 0;
    v9 = *a1;
    v10 = *(*a1 + 16);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = v2;
    v5 = v9;
    v6 = _swiftEmptyArrayStorage[2];
    do
    {
      v7 = *(v5 + 4 * v3 + 32);
      if (_swiftEmptyArrayStorage[3] >> 1 <= v6)
      {
        v11 = *(v5 + 4 * v3 + 32);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v6 + 1, 1);
        v7 = v11;
        v4 = v10;
        v5 = v9;
      }

      ++v3;
      _swiftEmptyArrayStorage[2] = v6 + 1;
      *(&_swiftEmptyArrayStorage[4] + v6++) = v7;
    }

    while (v4 != v3);
    result = v8;
  }

  *result = _swiftEmptyArrayStorage;
  return result;
}

void *closure #3 in AnyColumn.convertedToFloatArrays()(uint64_t *a1)
{
  v2 = *(*a1 + 16);
  if (v2)
  {
    v8 = result;
    v3 = 0;
    v10 = *a1;
    v11 = *(*a1 + 16);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = v2;
    v5 = v10;
    v6 = _swiftEmptyArrayStorage[2];
    do
    {
      v7 = *(v5 + 8 * v3 + 32);
      if (_swiftEmptyArrayStorage[3] >> 1 <= v6)
      {
        v9 = *(v5 + 8 * v3 + 32);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v6 + 1, 1);
        LODWORD(v7) = v9;
        v4 = v11;
        v5 = v10;
      }

      ++v3;
      _swiftEmptyArrayStorage[2] = v6 + 1;
      *(&_swiftEmptyArrayStorage[4] + v6++) = v7;
    }

    while (v4 != v3);
    result = v8;
  }

  *result = _swiftEmptyArrayStorage;
  return result;
}

{
  return closure #4 in AnyColumn.convertedToFloatArrays()(a1);
}

void *closure #5 in AnyColumn.convertedToFloatArrays()(uint64_t *a1)
{
  v2 = *(*a1 + 16);
  if (v2)
  {
    v9 = result;
    v3 = 0;
    v10 = *a1;
    v11 = *(*a1 + 16);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = v2;
    v5 = v10;
    v6 = _swiftEmptyArrayStorage[2];
    do
    {
      v7 = *(v5 + 8 * v3 + 32);
      if (_swiftEmptyArrayStorage[3] >> 1 <= v6)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v6 + 1, 1);
        v4 = v11;
        v5 = v10;
      }

      ++v3;
      v8 = v7;
      _swiftEmptyArrayStorage[2] = v6 + 1;
      *(&_swiftEmptyArrayStorage[4] + v6++) = v8;
    }

    while (v4 != v3);
    result = v9;
  }

  *result = _swiftEmptyArrayStorage;
  return result;
}

void *closure #1 in AnyColumn.convertedToDoubleArrays()(uint64_t *a1)
{
  v2 = *(*a1 + 16);
  if (v2)
  {
    v8 = result;
    v3 = 0;
    v9 = *a1;
    v10 = *(*a1 + 16);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = v2;
    v5 = v9;
    v6 = _swiftEmptyArrayStorage[2];
    do
    {
      v7 = *(v5 + v3 + 32);
      if (_swiftEmptyArrayStorage[3] >> 1 <= v6)
      {
        v11 = *(v5 + v3 + 32);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v6 + 1, 1);
        v7 = v11;
        v4 = v10;
        v5 = v9;
      }

      ++v3;
      _swiftEmptyArrayStorage[2] = v6 + 1;
      *&_swiftEmptyArrayStorage[v6++ + 4] = v7;
    }

    while (v4 != v3);
    result = v8;
  }

  *result = _swiftEmptyArrayStorage;
  return result;
}

void *closure #2 in AnyColumn.convertedToDoubleArrays()(uint64_t *a1)
{
  v2 = *(*a1 + 16);
  if (v2)
  {
    v8 = result;
    v3 = 0;
    v9 = *a1;
    v10 = *(*a1 + 16);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = v2;
    v5 = v9;
    v6 = _swiftEmptyArrayStorage[2];
    do
    {
      v7 = *(v5 + 4 * v3 + 32);
      if (_swiftEmptyArrayStorage[3] >> 1 <= v6)
      {
        v11 = *(v5 + 4 * v3 + 32);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v6 + 1, 1);
        v7 = v11;
        v4 = v10;
        v5 = v9;
      }

      ++v3;
      _swiftEmptyArrayStorage[2] = v6 + 1;
      *&_swiftEmptyArrayStorage[v6++ + 4] = v7;
    }

    while (v4 != v3);
    result = v8;
  }

  *result = _swiftEmptyArrayStorage;
  return result;
}

void *closure #3 in AnyColumn.convertedToDoubleArrays()(uint64_t *a1)
{
  v2 = *(*a1 + 16);
  if (v2)
  {
    v8 = result;
    v3 = 0;
    v10 = *a1;
    v11 = *(*a1 + 16);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = v2;
    v5 = v10;
    v6 = _swiftEmptyArrayStorage[2];
    do
    {
      v7 = *(v5 + 8 * v3 + 32);
      if (_swiftEmptyArrayStorage[3] >> 1 <= v6)
      {
        v9 = *(v5 + 8 * v3 + 32);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v6 + 1, 1);
        LODWORD(v7) = v9;
        v4 = v11;
        v5 = v10;
      }

      ++v3;
      _swiftEmptyArrayStorage[2] = v6 + 1;
      *&_swiftEmptyArrayStorage[v6++ + 4] = v7;
    }

    while (v4 != v3);
    result = v8;
  }

  *result = _swiftEmptyArrayStorage;
  return result;
}

{
  return closure #4 in AnyColumn.convertedToDoubleArrays()(a1);
}

void *closure #5 in AnyColumn.convertedToDoubleArrays()(uint64_t *a1)
{
  v2 = *(*a1 + 16);
  if (v2)
  {
    v8 = result;
    v3 = 0;
    v9 = *a1;
    v10 = *(*a1 + 16);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = v2;
    v5 = v9;
    v6 = _swiftEmptyArrayStorage[2];
    do
    {
      v7 = *(v5 + 4 * v3 + 32);
      if (_swiftEmptyArrayStorage[3] >> 1 <= v6)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v6 + 1, 1);
        v4 = v10;
        v5 = v9;
      }

      ++v3;
      _swiftEmptyArrayStorage[2] = v6 + 1;
      *&_swiftEmptyArrayStorage[v6++ + 4] = v7;
    }

    while (v4 != v3);
    result = v8;
  }

  *result = _swiftEmptyArrayStorage;
  return result;
}

NSURL *closure #1 in Column<A>.parseAsJSONArrays()(uint64_t *a1)
{
  v21 = v2;
  v22 = v1;
  v3 = type metadata accessor for String.Encoding(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = a1[1];
  if (v7 && (v8 = *a1, v23 = *(v3 - 8), static String.Encoding.utf8.getter(), v9 = String.data(using:allowLossyConversion:)(&v21, 0, v8, v7), v11 = v10, (*(v23 + 8))(&v21, v3), HIBYTE(v11) < 0xFF))
  {
    v13 = objc_opt_self(NSJSONSerialization);
    v23 = v9;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v24[0] = 0;
    v15 = [v13 JSONObjectWithData:isa options:0 error:v24];
    v16 = v15;

    v17 = v24[0];
    if (v16)
    {
      v24[0];
      _bridgeAnyObjectToAny(_:)(v16);
      outlined consume of Data?(v23, v11);
      swift_unknownObjectRelease(v16);
      v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any]);
      v19 = v22;
      if (!swift_dynamicCast(v22, v24, &type metadata for Any + 8, v18, 6))
      {
        *v19 = 0;
      }
    }

    else
    {
      v20 = v24[0];
      _convertNSErrorToError(_:)(v17);

      swift_willThrow();
      outlined consume of Data?(v23, v11);
    }
  }

  else
  {
    *v22 = 0;
  }

  return __stack_chk_guard;
}

{
  v2 = a1[1];
  if (HIBYTE(v2) < 0xFF)
  {
    v12 = v1;
    v3 = *a1;
    v4 = objc_opt_self(NSJSONSerialization);
    outlined copy of Data._Representation(v3, v2);
    v13 = v3;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v14[0] = 0;
    v6 = [v4 JSONObjectWithData:isa options:0 error:v14];
    v7 = v6;

    v8 = v14[0];
    if (v7)
    {
      v14[0];
      _bridgeAnyObjectToAny(_:)(v7);
      outlined consume of Data?(v13, v2);
      swift_unknownObjectRelease(v7);
      v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any]);
      if (!swift_dynamicCast(v12, v14, &type metadata for Any + 8, v9, 6))
      {
        *v12 = 0;
      }
    }

    else
    {
      v10 = v14[0];
      _convertNSErrorToError(_:)(v8);

      swift_willThrow();
      outlined consume of Data?(v13, v2);
    }
  }

  else
  {
    *v1 = 0;
  }

  return __stack_chk_guard;
}

void *_sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5Tm(uint64_t a1, void (*a2)(void *, uint64_t *), uint64_t a3, uint64_t a4)
{
  if (a1 < 0)
  {
    BUG();
  }

  v5 = a2;
  if (a1)
  {
    v6 = static Array._allocateBufferUninitialized(minimumCapacity:)(a1, a4);
    v5 = a2;
    v7 = v6;
    *(v6 + 16) = a1;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = 0;
  v11 = v7 + 4;
  v10[0] = v7 + 4;
  v10[1] = a1;
  v5(v10, &v9);
  if (v4)
  {
    if (v9 > a1)
    {
      BUG();
    }

    if (!v10[0])
    {
      BUG();
    }

    if (v11 != v10[0])
    {
      BUG();
    }

    v7[2] = v9;
    v7;
  }

  else
  {
    if (v9 > a1)
    {
      BUG();
    }

    if (!v10[0])
    {
      BUG();
    }

    if (v11 != v10[0])
    {
      BUG();
    }

    v7[2] = v9;
  }

  return v7;
}

unint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  result = HIBYTE(a2);
  if (HIBYTE(a2) <= 0xFE)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return result;
}

uint64_t MLObjectDetector.write(toFile:metadata:)(Swift::String string, const void *a2)
{
  v11[9] = v2;
  v13 = v3;
  v12 = a2;
  v4 = type metadata accessor for URL(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v14 = &v10;
  result = static _ValidationUtilities.validateWriteLocation(atPath:defaultName:)(string, 0x65447463656A624FLL, 0xEE00726F74636574);
  if (!v2)
  {
    qmemcpy(v11, v12, 0x48uLL);
    _Model.write(to:metadata:)(v14, v11);
    return (*(v5 + 8))(v14, v4);
  }

  return result;
}

_BYTE *assignWithCopy for MLLinearRegressor.ModelParameters.ValidationData(_BYTE *__dst, _BYTE *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLLinearRegressor.ModelParameters.ValidationData(__dst);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload == 2)
  {
    v7 = type metadata accessor for DataFrame(0);
    (*(*(v7 - 8) + 16))(__dst, __src, v7);
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v5 = *__src;
    v6 = __src[8];
    outlined copy of Result<_DataTable, Error>(*__src, v6);
    *__dst = v5;
    __dst[8] = v6;
    swift_storeEnumTagMultiPayload(__dst, a3, 1);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLLinearRegressor.ModelParameters.ValidationData;
  if (!type metadata singleton initialization cache for MLLinearRegressor.ModelParameters.ValidationData)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLLinearRegressor.ModelParameters.ValidationData);
  }

  return result;
}

void *assignWithTake for MLLinearRegressor.ModelParameters.ValidationData(void *__dst, void *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLLinearRegressor.ModelParameters.ValidationData(__dst);
  if (swift_getEnumCaseMultiPayload(__src, a3) == 2)
  {
    v4 = type metadata accessor for DataFrame(0);
    (*(*(v4 - 8) + 32))(__dst, __src, v4);
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata completion function for MLLinearRegressor.ModelParameters.ValidationData(uint64_t a1)
{
  v5[0] = &unk_3473E0;
  v5[1] = &unk_3473F8;
  result = type metadata accessor for DataFrame(319);
  if (v4 <= 0x3F)
  {
    v5[2] = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 3, v5, v2, v3);
    return 0;
  }

  return result;
}

uint64_t MLLinearRegressor.ModelParameters.ValidationData.asTable()(__m128 a1)
{
  v3 = v1;
  v4 = type metadata accessor for DataFrame(0);
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v29 = &v25;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v28 = &v25;
  v10 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  outlined init with copy of MLLinearRegressor.ModelParameters.ValidationData(v2, &v25);
  result = swift_getEnumCaseMultiPayload(&v25, v10);
  switch(result)
  {
    case 0:
      *v3 = 0;
      *(v3 + 8) = -1;
      break;
    case 1:
      result = v25;
      v15 = v26;
      goto LABEL_7;
    case 2:
      v16 = v28;
      v17 = v27;
      (*(v27 + 32))(v28, &v25, v4);
      v18 = v29;
      *a1.i64 = (*(v17 + 16))(v29, v16, v4);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v18, 1, a1);
      (*(v17 + 8))(v16, v4);
      result = v30;
      v15 = v31;
LABEL_7:
      *v3 = result;
      *(v3 + 8) = v15;
      break;
    case 3:
      v19 = v3;
      empty = tc_v1_sframe_create_empty(0);
      if (!empty)
      {
        BUG();
      }

      v21 = empty;
      v22 = type metadata accessor for CMLTable();
      v23 = swift_allocObject(v22, 24, 7);
      *(v23 + 16) = v21;
      v24 = type metadata accessor for _DataTable();
      swift_allocObject(v24, 40, 7);
      result = _DataTable.init(impl:)(v23);
      *v19 = result;
      *(v19 + 8) = 0;
      break;
  }

  return result;
}

uint64_t MLLinearRegressor.ModelParameters.ValidationData.generateDataFrames(trainingData:)(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t *, uint64_t, uint64_t))
{
  v56 = a3;
  v55 = a2;
  v54 = a1;
  v4 = type metadata accessor for DataFrame(0);
  v57 = *(v4 - 8);
  v5 = *(v57 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v53 = &v44;
  v47 = type metadata accessor for DataFrame.Slice(0);
  v46 = *(v47 - 8);
  v8 = *(v46 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v49 = &v44;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v52 = &v44;
  v13 = alloca(v8);
  v14 = alloca(v8);
  v50 = &v44;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame.Slice?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v48 = &v44;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v51 = &v44;
  v20 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  outlined init with copy of MLLinearRegressor.ModelParameters.ValidationData(v3, &v44);
  switch(swift_getEnumCaseMultiPayload(&v44, v20))
  {
    case 0u:
      v57 = v4;
      v24 = v51;
      v25 = v50;
      DataFrame.randomSplit(strategy:)(v51, v50, &v44);
      v26 = v46;
      v27 = v52;
      v28 = v25;
      v29 = v47;
      v56 = *(v46 + 16);
      v56(v52, v28, v47);
      DataFrame.init(_:)(v27);
      v30 = v48;
      outlined init with copy of DataFrame.Slice?(v24, v48);
      v31 = v29;
      if (__swift_getEnumTagSinglePayload(v30, 1, v29) == 1)
      {
        __swift_storeEnumTagSinglePayload(v55, 1, 1, v57);
        (*(v26 + 8))(v50, v29);
      }

      else
      {
        v41 = v52;
        (*(v26 + 32))(v52, v30, v31);
        v42 = v49;
        v56(v49, v41, v31);
        DataFrame.init(_:)(v42);
        v43 = *(v26 + 8);
        v43(v41, v31);
        __swift_storeEnumTagSinglePayload(v55, 0, 1, v57);
        v43(v50, v31);
      }

      return outlined destroy of DataFrame.Slice?(v51);
    case 1u:
      v36 = v44;
      v37 = v45;
      (*(v57 + 16))(v54, v56, v4);
      v44 = v36;
      v45 = v37;
      v38 = v55;
      DataFrame.init(_:)(&v44);
      v34 = v38;
      goto LABEL_10;
    case 2u:
      v32 = *(v57 + 32);
      v32(v53, &v44, v4);
      if (DataFrameProtocol.isEmpty.getter(v4, &protocol witness table for DataFrame))
      {
        v33 = v57;
        (*(v57 + 8))(v53, v4);
        (*(v33 + 16))(v54, v56, v4);
LABEL_7:
        v34 = v55;
        v35 = 1;
      }

      else
      {
        (*(v57 + 16))(v54, v56, v4);
        v39 = v55;
        v32(v55, v53, v4);
        v34 = v39;
LABEL_10:
        v35 = 0;
      }

      return __swift_storeEnumTagSinglePayload(v34, v35, 1, v4);
    case 3u:
      (*(v57 + 16))(v54, v56, v4);
      goto LABEL_7;
  }
}

uint64_t MLFewShotSoundClassifier.ModelParameters.lossParameters.getter()
{
  v2 = *(v1 + 32);
  *result = *(v1 + 24);
  *(result + 8) = v2;
  return result;
}

float *MLFewShotSoundClassifier.ModelParameters.LossParameters.init(gamma:epsilon:alpha:)(float a1, float a2, float a3)
{
  *result = a1;
  result[1] = a2;
  result[2] = a3;
  return result;
}

uint64_t (*MLFewShotSoundClassifier.ModelParameters.learningRate.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return MLFewShotSoundClassifier.ModelParameters.learningRate.modify;
}

uint64_t MLFewShotSoundClassifier.ModelParameters.learningRate.modify(_DWORD *a1)
{
  result = *a1;
  *(*a1 + 8) = a1[2];
  return result;
}

uint64_t (*MLFewShotSoundClassifier.ModelParameters.batchSize.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 16);
  return MLFewShotSoundClassifier.ModelParameters.batchSize.modify;
}

uint64_t MLFewShotSoundClassifier.ModelParameters.batchSize.modify(uint64_t *a1)
{
  result = *a1;
  *(a1[1] + 16) = *a1;
  return result;
}

uint64_t (*MLFewShotSoundClassifier.ModelParameters.lossParamters.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v2 = *(v1 + 32);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 16) = v2;
  return MLFewShotSoundClassifier.ModelParameters.lossParamters.modify;
}

uint64_t key path getter for MLFewShotSoundClassifier.ModelParameters.lossParamters : MLFewShotSoundClassifier.ModelParameters(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = v4;
  result = a4(a1, a2, a3);
  *v5 = v7;
  *(v5 + 8) = v8;
  return result;
}

uint64_t key path setter for MLFewShotSoundClassifier.ModelParameters.lossParamters : MLFewShotSoundClassifier.ModelParameters(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a1 + 2);
  v7 = *a1;
  v8 = v5;
  return a5(&v7, a2, a3, a4);
}

void MLFewShotSoundClassifier.ModelParameters.lossParameters.setter(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(v1 + 24) = *a1;
  *(v1 + 32) = v2;
}

uint64_t (*MLFewShotSoundClassifier.ModelParameters.lossParameters.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v2 = *(v1 + 32);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 16) = v2;
  return MLFewShotSoundClassifier.ModelParameters.lossParameters.modify;
}

uint64_t MLFewShotSoundClassifier.ModelParameters.lossParameters.modify(uint64_t *a1)
{
  result = *a1;
  v2 = *(a1 + 4);
  *(result + 24) = a1[1];
  *(result + 32) = v2;
  return result;
}

uint64_t MLFewShotSoundClassifier.ModelParameters.hallucinator.getter()
{
  v2 = v0;
  v3 = v1 + *(type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0) + 32);
  v4 = type metadata accessor for URL(0);
  return (*(*(v4 - 8) + 16))(v2, v3, v4);
}

uint64_t type metadata accessor for MLFewShotSoundClassifier.ModelParameters(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLFewShotSoundClassifier.ModelParameters;
  if (!type metadata singleton initialization cache for MLFewShotSoundClassifier.ModelParameters)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLFewShotSoundClassifier.ModelParameters);
  }

  return result;
}

uint64_t MLFewShotSoundClassifier.ModelParameters.hallucinator.setter(uint64_t a1)
{
  v2 = v1 + *(type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0) + 32);
  v3 = type metadata accessor for URL(0);
  return (*(*(v3 - 8) + 40))(v2, a1, v3);
}

uint64_t MLFewShotSoundClassifier.ModelParameters.pretrainedModel.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0);
  return outlined init with copy of URL?(v1 + *(v3 + 36), v2);
}

uint64_t MLFewShotSoundClassifier.ModelParameters.init(maxIterations:batchSize:learningRate:lossParameters:hallucinator:pretrainedModel:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, float a6)
{
  v8 = v6;
  v16 = *(a3 + 2);
  *(v6 + 8) = 1008981770;
  *(v6 + 16) = 128;
  *(v6 + 24) = 0x33D6BF95461C4000;
  *(v6 + 32) = 0x40000000;
  v9 = type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0);
  v10 = v8 + *(v9 + 36);
  v11 = type metadata accessor for URL(0);
  v15 = *a3;
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  *v8 = a1;
  (*(*(v11 - 8) + 32))(v8 + *(v9 + 32), a4, v11);
  outlined assign with take of URL?(a5, v10);
  result = a2;
  *(v8 + 16) = a2;
  *(v8 + 8) = a6;
  *(v8 + 24) = v15;
  *(v8 + 32) = v16;
  return result;
}

uint64_t MLFewShotSoundClassifier.ModelParameters.init(maxIterations:hallucinator:pretrainedModel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 24) = 0x33D6BF95461C4000;
  *(v3 + 32) = 0x40000000;
  v5 = type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0);
  v6 = v4 + *(v5 + 36);
  v7 = type metadata accessor for URL(0);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  *v4 = a1;
  (*(*(v7 - 8) + 32))(v4 + *(v5 + 32), a2, v7);
  outlined assign with take of URL?(a3, v6);
  *(v4 + 8) = 1008981770;
  *(v4 + 16) = 128;
  *(v4 + 24) = 0x33D6BF95461C4000;
  result = 0x40000000;
  *(v4 + 32) = 0x40000000;
  return result;
}

uint64_t sub_254C54()
{
  v1 = v0;
  result = MLFewShotSoundClassifier.ModelParameters.batchSize.getter();
  *v1 = result;
  return result;
}

void *initializeBufferWithCopyOfBuffer for MLFewShotSoundClassifier.ModelParameters(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *v4 = *a2;
    v4 = (v15 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 2);
    *(a1 + 16) = a2[2];
    *(a1 + 24) = a2[3];
    *(a1 + 32) = *(a2 + 8);
    v7 = *(a3 + 32);
    v17 = (a1 + v7);
    v8 = type metadata accessor for URL(0);
    v9 = a2 + v7;
    v10 = *(*(v8 - 8) + 16);
    v10(v17, v9, v8);
    v11 = *(a3 + 36);
    v12 = (a1 + v11);
    v13 = a2 + v11;
    if (__swift_getEnumTagSinglePayload(v13, 1, v8))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
      memcpy(v12, v13, *(*(v14 - 8) + 64));
    }

    else
    {
      v10(v12, v13, v8);
      __swift_storeEnumTagSinglePayload(v12, 0, 1, v8);
    }
  }

  return v4;
}

uint64_t destroy for MLFewShotSoundClassifier.ModelParameters(uint64_t a1, uint64_t a2)
{
  v3 = a1 + *(a2 + 32);
  v4 = type metadata accessor for URL(0);
  v5 = v3;
  v6 = *(*(v4 - 8) + 8);
  v6(v5, v4);
  v7 = a1 + *(a2 + 36);
  result = __swift_getEnumTagSinglePayload(v7, 1, v4);
  if (!result)
  {
    return v6(v7, v4);
  }

  return result;
}

uint64_t initializeWithCopy for MLFewShotSoundClassifier.ModelParameters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a3 + 32);
  v14 = (a1 + v5);
  v6 = type metadata accessor for URL(0);
  v7 = (a2 + v5);
  v8 = *(*(v6 - 8) + 16);
  v8(v14, v7, v6);
  v9 = *(a3 + 36);
  v10 = (a1 + v9);
  v11 = (v9 + a2);
  if (__swift_getEnumTagSinglePayload(v11, 1, v6))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(v10, v11, *(*(v12 - 8) + 64));
  }

  else
  {
    v8(v10, v11, v6);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v6);
  }

  return a1;
}

uint64_t assignWithCopy for MLFewShotSoundClassifier.ModelParameters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a3 + 32);
  v5 = type metadata accessor for URL(0);
  v15 = *(v5 - 8);
  v14 = *(v15 + 24);
  v14(a1 + v4, a2 + v4, v5);
  v6 = *(a3 + 36);
  v7 = (v6 + a2);
  __dst = (a1 + v6);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1 + v6, 1, v5);
  v9 = __swift_getEnumTagSinglePayload(v7, 1, v5);
  if (EnumTagSinglePayload)
  {
    if (!v9)
    {
      (*(v15 + 16))(__dst, v7, v5);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v5);
      return a1;
    }

    v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
    v12 = __dst;
  }

  else
  {
    if (!v9)
    {
      v14(__dst, v7, v5);
      return a1;
    }

    (*(v15 + 8))(__dst, v5, v10, v14);
    v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
    v12 = __dst;
  }

  memcpy(v12, v7, v11);
  return a1;
}

uint64_t initializeWithTake for MLFewShotSoundClassifier.ModelParameters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a3 + 32);
  v14 = (a1 + v5);
  v6 = type metadata accessor for URL(0);
  v7 = (a2 + v5);
  v8 = *(*(v6 - 8) + 32);
  v8(v14, v7, v6);
  v9 = *(a3 + 36);
  v10 = (a1 + v9);
  v11 = (v9 + a2);
  if (__swift_getEnumTagSinglePayload(v11, 1, v6))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(v10, v11, *(*(v12 - 8) + 64));
  }

  else
  {
    v8(v10, v11, v6);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v6);
  }

  return a1;
}

uint64_t assignWithTake for MLFewShotSoundClassifier.ModelParameters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a3 + 32);
  v6 = type metadata accessor for URL(0);
  v15 = *(v6 - 8);
  v14 = *(v15 + 40);
  v14(a1 + v5, a2 + v5, v6);
  v7 = *(v3 + 36);
  v8 = (v7 + a2);
  __dst = (a1 + v7);
  LODWORD(v3) = __swift_getEnumTagSinglePayload(a1 + v7, 1, v6);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v6);
  if (v3)
  {
    if (!EnumTagSinglePayload)
    {
      (*(v15 + 32))(__dst, v8, v6);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v6);
      return a1;
    }

    v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
    v12 = __dst;
  }

  else
  {
    if (!EnumTagSinglePayload)
    {
      v14(__dst, v8, v6);
      return a1;
    }

    (*(v15 + 8))(__dst, v6, v10, v14);
    v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
    v12 = __dst;
  }

  memcpy(v12, v8, v11);
  return a1;
}

uint64_t sub_255299(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = type metadata accessor for URL(0);
  if (*(*(v4 - 8) + 84) == a2)
  {
    v5 = *(a3 + 32);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    v5 = *(a3 + 36);
  }

  return __swift_getEnumTagSinglePayload(v5 + a1, a2, v4);
}

uint64_t sub_2552FC(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = type metadata accessor for URL(0);
  if (*(*(v6 - 8) + 84) == a3)
  {
    v7 = *(a4 + 32);
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    v7 = *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(v7 + a1, a2, a2, v6);
}

uint64_t type metadata completion function for MLFewShotSoundClassifier.ModelParameters(uint64_t a1)
{
  v4[0] = &value witness table for Builtin.Int64 + 64;
  v4[1] = &value witness table for Builtin.Int32 + 64;
  v4[2] = &value witness table for Builtin.Int64 + 64;
  v4[3] = &unk_347478;
  result = type metadata accessor for URL(319);
  if (v2 <= 0x3F)
  {
    v4[4] = *(result - 8) + 64;
    result = type metadata accessor for URL?(319);
    if (v3 <= 0x3F)
    {
      v4[5] = *(result - 8) + 64;
      swift_initStructMetadata(a1, 256, 6, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t a1, uint64_t a2)
{
  result = a1;
  *(a1 + 8) = *(a2 + 8);
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for MLFewShotSoundClassifier.ModelParameters.LossParameters(uint64_t a1, int a2)
{
  result = 0;
  if (a2)
  {
    if (*(a1 + 12))
    {
      return (*a1 + 1);
    }
  }

  return result;
}

void storeEnumTagSinglePayload for MLFewShotSoundClassifier.ModelParameters.LossParameters(uint64_t a1, int a2, int a3)
{
  if (!a2)
  {
    if (!a3)
    {
      return;
    }

    v3 = 0;
    goto LABEL_6;
  }

  *(a1 + 8) = 0;
  *a1 = (a2 - 1);
  v3 = 1;
  if (a3)
  {
LABEL_6:
    *(a1 + 12) = v3;
  }
}

NSURL *MLActivityClassifier.Model.writeMLModel(to:metadata:)(uint64_t a1, uint64_t *a2)
{
  v22 = v2;
  v17 = v3;
  v16 = a2;
  v19 = type metadata accessor for Model(0);
  v18 = *(v19 - 8);
  v4 = *(v18 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v21 = &v15;
  v7 = type metadata accessor for URL(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = v22;
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(a1, 0xD000000000000012, ("Classifier.Classifier.swift" + 0x8000000000000000), 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (!v12)
  {
    v22 = &v15;
    v20 = v7;
    MLActivityClassifier.Model.asModelSpecification()();
    MLActivityClassifier.Model.addMetadata(to:_:)(v21, v16);
    Model.write(to:)(v22);
    v14 = v20;
    (*(v18 + 8))(v21, v19);
    return (*(v8 + 8))(v22, v14);
  }

  return result;
}

void *MLActivityClassifier.Model.asModelSpecification()()
{
  v79 = v1;
  v77 = v0;
  v58 = type metadata accessor for ModelKind(0);
  v57 = *(v58 - 8);
  v3 = *(v57 + 8);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v59 = &v55;
  v67 = type metadata accessor for FeatureType.ShapedArrayParameters.DataType(0);
  v80 = *(v67 - 8);
  v6 = *(v80 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v69 = &v55;
  v60 = type metadata accessor for FeatureType(0);
  v74 = *(v60 - 8);
  v9 = *(v74 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v65 = &v55;
  v64 = type metadata accessor for FeatureDescription(0);
  v12 = *(v64 - 8);
  v13 = *(v12 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v70 = &v55;
  v71 = type metadata accessor for NeuralNetworkClassifier.ClassLabels(0);
  v72 = *(v71 - 8);
  v16 = *(v72 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v73 = &v55;
  v19 = type metadata accessor for NeuralNetworkClassifier(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v68 = &v55;
  v78 = v2;
  v24 = v79;
  result = MLActivityClassifier.Model.asModelLayers()();
  if (!v24)
  {
    v62 = v19;
    v61 = v20;
    v66 = v12;
    NeuralNetworkClassifier.init(layers:preprocessors:)(result, _swiftEmptyArrayStorage);
    v26 = type metadata accessor for MLActivityClassifier.Model(0);
    v27 = *(v26 + 60);
    v28 = v26;
    v75 = v26;
    v79 = 0;
    v29 = v73;
    *v73 = *&v78[v27];
    (*(v72 + 104))(v29, enum case for NeuralNetworkClassifier.ClassLabels.string(_:), v71);

    NeuralNetworkClassifier.classLabels.setter(v29);
    Model.init()();
    Model.specificationVersion.setter(4);
    v30 = v78;
    v31 = *&v78[*(v28 + 64) + 40];
    v32 = alloca(24);
    v33 = alloca(32);
    v57 = v78;

    v34 = v79;
    v76 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_20MLModelSpecification18FeatureDescriptionVs5NeverOTg5(partial apply for closure #1 in MLActivityClassifier.Model.asModelSpecification(), &v55, v31);
    v79 = v34;
    v31;
    v35 = v80;
    v36 = *(v80 + 104);
    LODWORD(v71) = enum case for FeatureType.ShapedArrayParameters.DataType.double(_:);
    v73 = v36;
    (v36)(v69, enum case for FeatureType.ShapedArrayParameters.DataType.double(_:), v67);
    v72 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v37 = swift_allocObject(v72, 40, 7);
    v37[2] = 1;
    v37[3] = 2;
    v38 = *&v30[*(v75 + 32)];
    if (v38 + 0x4000000000000000 < 0)
    {
      BUG();
    }

    v75 = 2 * v38;
    v37[4] = 2 * v38;
    v39 = v65;
    v40 = v69;
    static FeatureType.shapedArray(dataType:shape:optional:)(v69, v37, 0);
    v37;
    v78 = *(v35 + 8);
    (v78)(v40, v67);
    FeatureDescription.init(name:type:description:)(0x6E496574617473, 0xE700000000000000, v39, 0xD000000000000010, ("o recognize motions." + 0x8000000000000000));
    v80 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
    v41 = v66;
    v63 = *(v66 + 72);
    v42 = *(v66 + 80);
    v43 = (v42 + 32) & ~*(v66 + 80);
    v42 |= 7uLL;
    v44 = swift_allocObject(v80, v43 + v63, v42);
    *(v44 + 16) = 1;
    *(v44 + 24) = 2;
    (*(v41 + 16))(v43 + v44, v70, v64);
    v56 = v76;
    specialized Array.append<A>(contentsOf:)(v44);
    Model.inputs.setter(v56);
    v45 = v63;
    v46 = swift_allocObject(v80, v43 + 3 * v63, v42);
    v80 = v46;
    *(v46 + 16) = 3;
    *(v46 + 24) = 6;
    v47 = v46 + v43;
    v76 = "labelProbabilityRaw" + 0x8000000000000000;
    v48 = v65;
    static FeatureType.dictionaryWithStringKeys(optional:)(0);
    FeatureDescription.init(name:type:description:)(0xD000000000000010, ("labelProbabilityRaw" + 0x8000000000000000), v48, 0xD000000000000021, ("LSTM state input" + 0x8000000000000000));
    FeatureType.StringParameters.init(optional:)(0);
    (*(v74 + 104))(v48, enum case for FeatureType.string(_:), v60);
    FeatureDescription.init(name:type:description:)(0x6C6562616CLL, 0xE500000000000000, v48, 0xD00000000000001DLL, ("ion probabilities" + 0x8000000000000000));
    v74 = v47 + 2 * v45;
    v49 = v69;
    v50 = v67;
    (v73)(v69, v71, v67);
    v51 = swift_allocObject(v72, 40, 7);
    LOBYTE(v42) = v51;
    v51[2] = 1;
    v51[3] = 2;
    v51[4] = v75;
    static FeatureType.shapedArray(dataType:shape:optional:)(v49, v51, 0);
    v42;
    (v78)(v49, v50);
    FeatureDescription.init(name:type:description:)(0x74754F6574617473, 0xE800000000000000, v48, 0xD000000000000011, ("Class label of top prediction" + 0x8000000000000000));
    Model.outputs.setter(v80);
    Model.predictedFeatureName.setter(0x6C6562616CLL, 0xE500000000000000);
    Model.predictedProbabilitiesName.setter(0xD000000000000010, v76);
    v52 = v59;
    v53 = v62;
    v54 = v61;
    (*(v61 + 16))(v59, v68, v62);
    (*(v57 + 13))(v52, enum case for ModelKind.neuralNetworkClassifier(_:), v58);
    Model.kind.setter(v52);
    (*(v66 + 8))(v70, v64);
    return (*(v54 + 8))(v68, v53);
  }

  return result;
}

uint64_t MLActivityClassifier.Model.addMetadata(to:_:)(uint64_t (*a1)(void *, void), uint64_t *a2)
{
  object = v2;
  v67 = a1;
  v3 = *a2;
  v4 = a2[1];
  v64 = a2[2];
  v5 = a2[3];
  v61 = a2[4];
  v69 = a2[5];
  v66 = a2[6];
  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = a2[7];
  v60 = a2[8];
  if (v6)
  {
  }

  else
  {
    v8 = NSFullUserName();
    v62 = v8;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(v62);
    v4 = v9;
  }

  Model.author.setter(v3, v4);
  v10 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v10 = v64 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {

    v11 = v64;
  }

  else
  {
    v5 = ("ActivityClassifier" + 0x8000000000000000);
    v11 = 0xD000000000000044;
  }

  Model.modelDescription.setter(v11, v5);
  v12 = HIBYTE(v7) & 0xF;
  v13 = v66;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v12 = v66 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
  }

  else
  {
    v7 = 0xE300000000000000;
    v13 = 3157553;
  }

  Model.versionString.setter(v13, v7);
  if (v69)
  {

    Model.license.setter(v61, v69);
  }

  v64 = *(type metadata accessor for MLActivityClassifier.Model(0) + 64);
  v63[0] = *&object[v64 + 40];

  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v15 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
  v16 = BidirectionalCollection<>.joined(separator:)(44, 0xE100000000000000, v14, v15);
  v18 = v17;
  v63[0];
  v69 = Model.metadata.modify(v63);
  v20 = v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v19);
  v68 = *v20;
  *v20 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, v18, 0x7365727574616566, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  *v20 = v68;
  v69(v63, 0);
  v22 = object;
  v23 = v64;
  v63[0] = *&object[v64];
  v24 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v66 = v25;
  v69 = Model.metadata.modify(v63);
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native(*v26);
  v68 = *v27;
  *v27 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, v66, 0x726574695F78616DLL, 0xEE00736E6F697461, v28);
  *v27 = v68;
  v69(v63, 0);
  v63[0] = *&v22[v23 + 32];
  v66 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v30 = v29;
  v69 = Model.metadata.modify(v63);
  v32 = v31;
  v33 = swift_isUniquelyReferenced_nonNull_native(*v31);
  v68 = *v32;
  *v32 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v66, v30, 0xD000000000000011, ("annotation_scale" + 0x8000000000000000), v33);
  *v32 = v68;
  v69(v63, 0);
  v34 = v64;
  v66 = *&object[v64 + 64];
  v35 = *&object[v64 + 72];

  v69 = Model.metadata.modify(v63);
  v37 = v36;
  v38 = swift_isUniquelyReferenced_nonNull_native(*v36);
  v68 = *v37;
  *v37 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v66, v35, 0x5F6E6F6973736573, 0xEA00000000006469, v38);
  *v37 = v68;
  v69(v63, 0);
  v69 = *&object[v34 + 48];
  v39 = *&object[v34 + 56];

  v40 = Model.metadata.modify(v63);
  v42 = v41;
  v43 = swift_isUniquelyReferenced_nonNull_native(*v41);
  v68 = *v42;
  *v42 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v69, v39, 0x746567726174, 0xE600000000000000, v43);
  *v42 = v68;
  v40(v63, 0);
  v44 = Model.metadata.modify(v63);
  v46 = v45;
  v47 = swift_isUniquelyReferenced_nonNull_native(*v45);
  v68 = *v46;
  *v46 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0xD000000000000013, ("ot found in Configuration" + 0x8000000000000000), 1701869940, 0xE400000000000000, v47);
  *v46 = v68;
  v44(v63, 0);
  v48 = Model.metadata.modify(v63);
  v50 = v49;
  v51 = swift_isUniquelyReferenced_nonNull_native(*v49);
  v68 = *v50;
  *v50 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(50, 0xE100000000000000, 0x6E6F6973726576, 0xE700000000000000, v51);
  *v50 = v68;
  v48(v63, 0);
  if (v60)
  {

    v52 = Model.metadata.modify(v63);
    specialized Dictionary._Variant.merge<A>(_:uniquingKeysWith:)(v60, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v53);
    v52(v63, 0);
  }

  v54 = getOSVersion()();
  countAndFlagsBits = v54._countAndFlagsBits;
  object = v54._object;
  v67 = Model.metadata.modify(v63);
  v57 = v56;
  v58 = swift_isUniquelyReferenced_nonNull_native(*v56);
  v68 = *v57;
  *v57 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(countAndFlagsBits, object, 0xD00000000000001ALL, ("Recommender Model" + 0x8000000000000000), v58);
  *v57 = v68;
  return v67(v63, 0);
}

void *MLActivityClassifier.Model.asModelLayers()()
{
  v68 = v0;
  v1 = *(*(type metadata accessor for NeuralNetwork.Layer.Kind(0) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v44 = &v43;
  v58 = type metadata accessor for NeuralNetwork.Layer.ReshapeParameters.ChannelLayout(0);
  v59 = *(v58 - 8);
  v4 = *(v59 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v45 = &v43;
  v54 = type metadata accessor for NeuralNetwork.Layer(0);
  v7 = *(v54 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v56 = &v43;
  v66 = type metadata accessor for NeuralNetwork.Layer.SliceParameters.Axis(0);
  v67 = *(v66 - 8);
  v11 = *(v67 + 8);
  v12 = alloca(v11);
  v13 = alloca(v11);
  object = &v43;
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<NeuralNetwork.Layer>);
  v15 = *(v7 + 72);
  v55 = v7;
  v16 = *(v7 + 80);
  v17 = (v16 + 32) & ~*(v7 + 80);
  v65 = v15;
  countAndFlagsBits = v14;
  v46 = v16 | 7;
  v18 = swift_allocObject(v14, v17 + 2 * v15, v16 | 7);
  *(v18 + 16) = 2;
  *(v18 + 24) = 4;
  v63 = v17;
  v47 = v18;
  v19 = v18 + v17;
  v62 = type metadata accessor for MLActivityClassifier.Model(0);
  v20 = *(v62 + 32);
  v21 = *(v68 + v20);
  v22 = *(v67 + 13);
  v23 = object;
  v60 = enum case for NeuralNetwork.Layer.SliceParameters.Axis.channel(_:);
  v49 = v22;
  v22(object, enum case for NeuralNetwork.Layer.SliceParameters.Axis.channel(_:), v66);
  v48 = v19;
  static NeuralNetwork.Layer.slice(name:inputName:outputName:startIndex:endIndex:stride:axis:)(0x6E496E6564646968, 0xE800000000000000, 0x6E496574617473, 0xE700000000000000, 0x6E496E6564646968, 0xE800000000000000, 0, v21, 1, v23);
  v24 = *(v67 + 1);
  v24(v23, v66);
  if (v21 + 0x4000000000000000 < 0)
  {
    BUG();
  }

  v67 = (2 * v65);
  v51 = v24;
  v25 = v68;
  v50 = v68 + v20;
  v52 = v21;
  v53 = 2 * v21;
  v26 = object;
  v27 = v66;
  v49(object, v60, v66);
  static NeuralNetwork.Layer.slice(name:inputName:outputName:startIndex:endIndex:stride:axis:)(0x6E496C6C6563, 0xE600000000000000, 0x6E496574617473, 0xE700000000000000, 0x6E496C6C6563, 0xE600000000000000, v52, v53, 1, v26);
  v51(v26, v27);
  v28 = v47;
  v57 = v47;
  v29 = *(v62 + 64);
  v30._rawValue = *(v25 + v29 + 40);
  if (*(v30._rawValue + 2) >= 2uLL)
  {

    v31 = v56;
    MLActivityClassifier.Model.buildFeaturesLayer(_:name:)(v30._rawValue, 0x7365727574616566, 0xE800000000000000);
    v30._rawValue;
    v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 3, 1, v28);
    v32[2] = 3;
    (*(v55 + 32))(&v67[v63 + v32], v31, v54);
    v57 = v32;
  }

  v33 = v63;
  v34 = swift_allocObject(countAndFlagsBits, v63 + 10 * v65, v46);
  v66 = v34;
  *(v34 + 16) = 10;
  *(v34 + 24) = 20;
  v35 = v34 + v33;
  v36 = MLActivityClassifier.Model.featuresName(_:whenMultiple:)(v30, __PAIR128__(0xE800000000000000, 0x7365727574616566));
  countAndFlagsBits = v36._countAndFlagsBits;
  object = v36._object;
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v38 = swift_allocObject(v37, 64, 7);
  v38[2] = 4;
  v38[3] = 8;
  v38[4] = 1;
  v38[5] = *(v30._rawValue + 2);
  v38[6] = 1;
  v38[7] = *(v68 + v29 + 32);
  v39 = v45;
  (*(v59 + 104))(v45, enum case for NeuralNetwork.Layer.ReshapeParameters.ChannelLayout.channelFirst(_:), v58);
  v40 = object;
  static NeuralNetwork.Layer.reshape(name:inputName:outputName:targetShape:targetChannelLayout:)(0x65706168736572, 0xE700000000000000, countAndFlagsBits, object, 0x65706168736572, 0xE700000000000000, v38, v39);
  v40;
  v38;
  (*(v59 + 8))(v39, v58);
  Conv2D.asModelLayer(name:inputName:inputSize:)(1986948963, 0xE400000000000000, 0x65706168736572, 0xE700000000000000);
  static NeuralNetwork.Layer.relu(name:inputName:outputName:)(0x31756C6572, 0xE500000000000000, 1986948963, 0xE400000000000000, 0x31756C6572, 0xE500000000000000);
  MLActivityClassifier.LSTMBlock.asModelLayer(name:inputNames:outputNames:)(1836348268, 0xE400000000000000, &outlined read-only object #0 of MLActivityClassifier.Model.asModelLayers(), &outlined read-only object #1 of MLActivityClassifier.Model.asModelLayers());
  v41 = v44;
  static NeuralNetwork.Layer.Kind.concatenate(alongSequenceAxis:)(0);
  NeuralNetwork.Layer.init(name:inputNames:outputNames:kind:)(0x74754F6574617473, 0xE800000000000000, &outlined read-only object #2 of MLActivityClassifier.Model.asModelLayers(), &outlined read-only object #3 of MLActivityClassifier.Model.asModelLayers(), v41);
  v63 = v35;
  Conv2D.asModelLayer(name:inputName:inputSize:)(0x3065736E6564, 0xE600000000000000, 1836348268, 0xE400000000000000);
  BatchNorm.asModelLayer(name:inputName:)(28258, 0xE200000000000000, 0x3065736E6564, 0xE600000000000000);
  static NeuralNetwork.Layer.relu(name:inputName:outputName:)(0x36756C6572, 0xE500000000000000, 28258, 0xE200000000000000, 0x36756C6572, 0xE500000000000000);
  Conv2D.asModelLayer(name:inputName:inputSize:)(0x3165736E6564, 0xE600000000000000, 0x36756C6572, 0xE500000000000000);
  static NeuralNetwork.Layer.softmax(name:inputName:outputName:)(0xD000000000000010, ("labelProbabilityRaw" + 0x8000000000000000), 0x3165736E6564, 0xE600000000000000, 0xD000000000000010, ("labelProbabilityRaw" + 0x8000000000000000));
  specialized Array.append<A>(contentsOf:)(v66);
  return v57;
}

uint64_t closure #1 in MLActivityClassifier.Model.asModelSpecification()(uint64_t *a1, uint64_t a2)
{
  v22 = a2;
  v21 = v2;
  v3 = type metadata accessor for FeatureType.ShapedArrayParameters.DataType(0);
  v4 = *(v3 - 8);
  v24 = v3;
  v5 = *(v4 + 64);
  v6 = v4;
  v7 = alloca(v5);
  v8 = alloca(v5);
  v9 = *(*(type metadata accessor for FeatureType(0) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v25 = &v19;
  v23 = *a1;
  v12 = a1[1];
  (*(v6 + 104))(&v19, enum case for FeatureType.ShapedArrayParameters.DataType.double(_:), v3);
  v13 = v6;
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v15 = swift_allocObject(v14, 40, 7);
  v15[2] = 1;
  v15[3] = 2;
  v15[4] = *(v22 + *(type metadata accessor for MLActivityClassifier.Model(0) + 64) + 32);

  static FeatureType.shapedArray(dataType:shape:optional:)(&v19, v15, 0);
  v15;
  (*(v13 + 8))(&v19, v24);
  v16 = v23;
  v19 = v23;
  v20 = v12;

  v17._countAndFlagsBits = 0x20776F646E697720;
  v17._object = 0xED00007475706E69;
  String.append(_:)(v17);
  return FeatureDescription.init(name:type:description:)(v16, v12, v25, v19, v20);
}

uint64_t MLActivityClassifier.Model.buildFeaturesLayer(_:name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[0] = v3;
  v5 = *(*(type metadata accessor for NeuralNetwork.Layer.Kind(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  v9 = swift_allocObject(v8, 48, 7);
  v9[2] = 1;
  v9[3] = 2;
  v9[4] = a2;
  v9[5] = a3;
  swift_bridgeObjectRetain_n(a3, 2);

  static NeuralNetwork.Layer.Kind.concatenate(alongSequenceAxis:)(0);
  return NeuralNetwork.Layer.init(name:inputNames:outputNames:kind:)(a2, a3, a1, v9, v11);
}

Swift::String __swiftcall MLActivityClassifier.Model.featuresName(_:whenMultiple:)(Swift::OpaquePointer _, Swift::String whenMultiple)
{
  object = whenMultiple._object;
  countAndFlagsBits = whenMultiple._countAndFlagsBits;
  if (*(_._rawValue + 2) == 1)
  {
    countAndFlagsBits = *(_._rawValue + 4);
    object = *(_._rawValue + 5);
  }

  result._countAndFlagsBits = countAndFlagsBits;
  result._object = object;
  return result;
}

uint64_t Conv2D.asModelLayer(name:inputName:inputSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a4;
  v67 = a3;
  v68 = a2;
  v69 = a1;
  v79 = v4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v63 = &v59;
  v81 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  v82 = *(v81 - 8);
  v9 = *(v82 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v62 = &v59;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v70 = &v59;
  v64 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters(0);
  v80 = *(v64 - 8);
  v14 = *(v80 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v65 = &v59;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v74 = &v59;
  v72 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.Extent<Int>);
  v73 = *(v72 - 8);
  v20 = *(v73 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v85 = &v59;
  v23 = alloca(v20);
  v24 = alloca(v20);
  v83 = &v59;
  v84 = type metadata accessor for TensorShape(0);
  v77 = *(v84 - 8);
  v25 = *(v77 + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v28 = type metadata accessor for Tensor(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  v78 = v5;
  v75 = Conv2D.filterCount.getter();
  Conv2D.weight.getter(0, a2);
  Tensor.shape.getter(0, a2, v33);
  v71 = v28;
  (*(v29 + 8))(&v59, v28);
  v76 = TensorShape.subscript.getter(1);
  (*(v77 + 8))(&v59, v84);
  v84 = Conv2D.groupCount.getter();
  v60 = Conv2D.kernelSize.getter();
  v61 = v34;
  NeuralNetwork.Extent.init(height:width:)(&v60, &v61, &type metadata for Int, &protocol witness table for Int);
  v60 = Conv2D.stride.getter();
  v61 = v35;
  NeuralNetwork.Extent.init(height:width:)(&v60, &v61, &type metadata for Int, &protocol witness table for Int);
  v36 = Conv2D.padding.getter();
  v37 = Conv2D.padding.getter();
  Conv2D.padding.getter();
  v39 = v38;
  Conv2D.padding.getter();
  v40 = v74;
  static NeuralNetwork.Layer.ConvolutionParameters.PaddingKind.valid(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)(v36, v37, v39, v41);
  v42 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind(0);
  __swift_storeEnumTagSinglePayload(v40, 0, 1, v42);
  v43 = v85;
  v44 = v83;
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(v69, v68, v67, v66, v69, v68, v75, v76, v84, v83, v85, v40);
  outlined destroy of NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?(v40, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v45 = *(v73 + 8);
  v46 = v72;
  v45(v43, v72);
  v45(v44, v46);
  v47 = v70;
  NeuralNetwork.Layer.kind.getter();
  v48 = v81;
  v49 = v82;
  LODWORD(v85) = (*(v82 + 88))(v47);
  if (v85 != enum case for NeuralNetwork.Layer.Kind.convolution(_:))
  {
    (*(v49 + 8))(v47, v48);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001ALL, ("ModelExport.swift" + 0x8000000000000000), "CreateML/MLActivityClassifier+MLModelExport.swift", 49, 2, 200, 0);
    BUG();
  }

  (*(v49 + 96))(v47, v48);
  v50 = v65;
  v51 = v47;
  v52 = v64;
  (*(v80 + 32))(v65, v51, v64);
  v53 = v63;
  v54 = v78;
  Conv2D.bias.getter();
  v55 = __swift_getEnumTagSinglePayload(v53, 1, v71) != 1;
  outlined destroy of NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?(v53, &demangling cache variable for type metadata for Tensor?);
  NeuralNetwork.Layer.loadConv2DFromNeuralNetworks(_:useBias:into:)(v54, v55, v50);
  v56 = v62;
  v57 = v80;
  (*(v80 + 16))(v62, v50, v52);
  (*(v82 + 104))(v56, v85, v81);
  NeuralNetwork.Layer.kind.setter(v56);
  return (*(v57 + 8))(v50, v52);
}

uint64_t MLActivityClassifier.LSTMBlock.asModelLayer(name:inputNames:outputNames:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v119 = v5;
  v94 = a4;
  v95 = a3;
  v96 = a2;
  v97 = a1;
  v98 = v4;
  v6 = *(*(type metadata accessor for NeuralNetwork.WeightParameters(0) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v109 = v93;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v120 = v93;
  v117 = type metadata accessor for Tensor(0);
  v112 = *(v117 - 8);
  v12 = *(v112 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v110 = v93;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v114 = v93;
  v17 = alloca(v12);
  v18 = alloca(v12);
  v111 = v93;
  v19 = type metadata accessor for NeuralNetwork.Layer.UnidirectionalLSTMParameters(0);
  v108 = *(v19 - 8);
  v20 = *(v108 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v118 = v93;
  v23 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v100 = v93;
  v28 = alloca(v25);
  v29 = alloca(v25);
  v30 = alloca(v25);
  v31 = alloca(v25);
  v32 = *(v119 + 8);
  v113 = *v119;
  static NeuralNetwork.Layer.Kind.unidirectionalLSTM(inputSize:outputSize:sequenceOutput:)(v32, v113, 0);
  v33 = *(v24 + 16);
  v99 = v93;
  v102 = v33;
  v33(v93, v93, v23);
  v34 = (*(v24 + 88))(v93, v23);
  if (v34 != enum case for NeuralNetwork.Layer.Kind.unidirectionalLSTM(_:))
  {
    (*(v24 + 8))(v93, v23);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001ALL, ("ModelExport.swift" + 0x8000000000000000), "CreateML/MLActivityClassifier+MLModelExport.swift", 49, 2, 220, 0);
    BUG();
  }

  v107 = v34;
  v105 = v23;
  v101 = v24;
  (*(v24 + 96))(v93, v23);
  v104 = v19;
  (*(v108 + 32))(v118, v93, v19);
  type metadata accessor for MLActivityClassifier.LSTMBlock(0);
  v35 = v120;
  LSTM.inputWeight.getter();
  v36 = v117;
  if (__swift_getEnumTagSinglePayload(v35, 1, v117) == 1)
  {
    BUG();
  }

  (*(v112 + 32))(v111, v35, v36);
  LSTM.recurrentWeight.getter();
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<TensorRangeExpression?>);
  v38 = swift_allocObject(v37, 72, 7);
  v38[2] = 1;
  v38[3] = 2;
  v115 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Range<Int>);
  v38[7] = v115;
  v39 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>, &demangling cache variable for type metadata for Range<Int>, &protocol conformance descriptor for <> Range<A>);
  v38[8] = v39;
  v40 = v113;
  if (v113 < 0)
  {
    BUG();
  }

  v116 = v39;
  v38[4] = 0;
  v38[5] = v40;
  v41 = v110;
  v120 = v37;
  Tensor.subscript.getter(v38);
  v38;
  v42 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  v119 = *(v112 + 8);
  (v119)(v41, v36);
  v43 = v109;
  NeuralNetwork.WeightParameters.init(_:updatable:)(v42, 0);
  v44 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.weights.modify(v93);
  NeuralNetwork.Layer.LSTMWeightParameters.inputGate.setter(v43);
  v44(v93, 0);
  v45 = swift_allocObject(v120, 72, 7);
  v46 = v113;
  v47 = v45;
  v45[2] = 1;
  v45[3] = 2;
  if (v46 + 0x4000000000000000 < 0)
  {
    BUG();
  }

  v48 = 2 * v46;
  v45[7] = v115;
  v45[8] = v116;
  if (2 * v46 < v46)
  {
    BUG();
  }

  v45[4] = v46;
  v45[5] = v48;
  v49 = v110;
  Tensor.subscript.getter(v45);
  v47;
  v50 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  (v119)(v49, v117);
  v51 = v109;
  NeuralNetwork.WeightParameters.init(_:updatable:)(v50, 0);
  v52 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.weights.modify(v93);
  NeuralNetwork.Layer.LSTMWeightParameters.forgetGate.setter(v51);
  v52(v93, 0);
  v53 = swift_allocObject(v120, 72, 7);
  v53[2] = 1;
  v53[3] = 2;
  v54 = 3 * v113;
  if (!is_mul_ok(3uLL, v113))
  {
    BUG();
  }

  v55 = v53;
  v53[7] = v115;
  v53[8] = v116;
  if (v54 < v48)
  {
    BUG();
  }

  v112 = v48;
  v53[4] = v48;
  v56 = v54;
  v53[5] = v54;
  v57 = v110;
  Tensor.subscript.getter(v53);
  v55;
  v58 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  (v119)(v57, v117);
  v59 = v109;
  NeuralNetwork.WeightParameters.init(_:updatable:)(v58, 0);
  v60 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.weights.modify(v93);
  NeuralNetwork.Layer.LSTMWeightParameters.blockInput.setter(v59);
  v61 = v120;
  v60(v93, 0);
  v62 = swift_allocObject(v61, 72, 7);
  v63 = v113;
  v64 = v62;
  v62[2] = 1;
  v62[3] = 2;
  if (v63 >> 61)
  {
    BUG();
  }

  v62[7] = v115;
  v62[8] = v116;
  if ((4 * v63) < v56)
  {
    BUG();
  }

  v65 = v56;
  v62[4] = v56;
  v62[5] = 4 * v63;
  v66 = v110;
  v103 = 4 * v63;
  v106 = v65;
  Tensor.subscript.getter(v62);
  v64;
  v67 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  (v119)(v66, v117);
  v68 = v109;
  NeuralNetwork.WeightParameters.init(_:updatable:)(v67, 0);
  v69 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.weights.modify(v93);
  NeuralNetwork.Layer.LSTMWeightParameters.outputGate.setter(v68);
  v69(v93, 0);
  v70 = swift_allocObject(v120, 72, 7);
  LOBYTE(v69) = v70;
  v70[2] = 1;
  v70[3] = 2;
  v70[7] = v115;
  v70[8] = v116;
  v70[4] = 0;
  v70[5] = v113;
  Tensor.subscript.getter(v70);
  v69;
  v71 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  (v119)(v66, v117);
  NeuralNetwork.WeightParameters.init(_:updatable:)(v71, 0);
  v72 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.weights.modify(v93);
  NeuralNetwork.Layer.LSTMWeightParameters.inputGateRecursion.setter(v68);
  v72(v93, 0);
  v73 = swift_allocObject(v120, 72, 7);
  LOBYTE(v71) = v73;
  v73[2] = 1;
  v73[3] = 2;
  v73[7] = v115;
  v73[8] = v116;
  v73[4] = v113;
  v73[5] = v112;
  Tensor.subscript.getter(v73);
  v71;
  v74 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  (v119)(v66, v117);
  NeuralNetwork.WeightParameters.init(_:updatable:)(v74, 0);
  v75 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.weights.modify(v93);
  NeuralNetwork.Layer.LSTMWeightParameters.forgetGateRecursion.setter(v68);
  v75(v93, 0);
  v76 = swift_allocObject(v120, 72, 7);
  LOBYTE(v74) = v76;
  v76[2] = 1;
  v76[3] = 2;
  v76[7] = v115;
  v76[8] = v116;
  v76[4] = v112;
  v76[5] = v106;
  Tensor.subscript.getter(v76);
  v74;
  v77 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  (v119)(v66, v117);
  NeuralNetwork.WeightParameters.init(_:updatable:)(v77, 0);
  v78 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.weights.modify(v93);
  NeuralNetwork.Layer.LSTMWeightParameters.blockInputRecursion.setter(v68);
  v78(v93, 0);
  v79 = swift_allocObject(v120, 72, 7);
  LOBYTE(v77) = v79;
  v79[2] = 1;
  v79[3] = 2;
  v79[7] = v115;
  v79[8] = v116;
  v79[4] = v106;
  v79[5] = v103;
  Tensor.subscript.getter(v79);
  v77;
  v80 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  (v119)(v66, v117);
  NeuralNetwork.WeightParameters.init(_:updatable:)(v80, 0);
  v81 = v118;
  v82 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.weights.modify(v93);
  NeuralNetwork.Layer.LSTMWeightParameters.outputGateRecursion.setter(v68);
  v82(v93, 0);
  v83 = v101;
  v120 = *(v101 + 8);
  v84 = v99;
  v85 = v105;
  (v120)(v99, v105);
  (*(v108 + 16))(v84, v81, v104);
  (*(v83 + 104))(v84, v107, v85);
  v86 = v100;
  v102(v100, v84, v85);
  v87 = v96;

  v88 = v95;

  v89 = v94;

  NeuralNetwork.Layer.init(name:inputNames:outputNames:kind:)(v97, v87, v88, v89, v86);
  v90 = v117;
  v91 = v119;
  (v119)(v114, v117);
  v91(v111, v90);
  (*(v108 + 8))(v118, v104);
  return (v120)(v84, v105);
}

uint64_t BatchNorm.asModelLayer(name:inputName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v48 = a3;
  v45 = a2;
  v46 = a1;
  v47 = v4;
  v64 = type metadata accessor for Tensor(0);
  v63 = *(v64 - 1);
  v6 = *(v63 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v51 = &v44;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.WeightParameters?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v50 = &v44;
  v58 = type metadata accessor for NeuralNetwork.Layer.BatchNormalizeParameters(0);
  v57 = *(v58 - 8);
  v12 = *(v57 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v62 = &v44;
  v15 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v49 = &v44;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v22 = alloca(v17);
  v23 = alloca(v17);
  v60 = v5;
  v24 = BatchNorm.featureCount.getter();
  static NeuralNetwork.Layer.Kind.batchNormalize(inputChannelCount:)(v24);
  v25 = *(v16 + 16);
  v59 = &v44;
  v52 = v25;
  v25(&v44, &v44, v15);
  v56 = (*(v16 + 88))(&v44, v15);
  if (v56 != enum case for NeuralNetwork.Layer.Kind.batchNormalize(_:))
  {
    (*(v16 + 8))(&v44, v15);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001ALL, ("ModelExport.swift" + 0x8000000000000000), "CreateML/MLActivityClassifier+MLModelExport.swift", 49, 2, 262, 0);
    BUG();
  }

  (*(v16 + 96))(&v44, v15);
  v53 = v16;
  (*(v57 + 32))(v62, &v44, v58);
  v26 = v51;
  v61 = v15;
  BatchNorm.scale.getter();
  v27 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  v55 = *(v63 + 8);
  v55(v26, v64);
  v28 = v50;
  NeuralNetwork.WeightParameters.init(_:updatable:)(v27, 0);
  v63 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v63);
  NeuralNetwork.Layer.BatchNormalizeParameters.scale.setter(v28);
  BatchNorm.offset.getter();
  v29 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  v55(v26, v64);
  NeuralNetwork.WeightParameters.init(_:updatable:)(v29, 0);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v63);
  NeuralNetwork.Layer.BatchNormalizeParameters.offset.setter(v28);
  BatchNorm.runningMean.getter();
  v30 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  v31 = v55;
  v55(v26, v64);
  NeuralNetwork.WeightParameters.init(_:updatable:)(v30, 0);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v63);
  NeuralNetwork.Layer.BatchNormalizeParameters.mean.setter(v28);
  BatchNorm.runningVariance.getter();
  v32 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  v31(v26, v64);
  NeuralNetwork.WeightParameters.init(_:updatable:)(v32, 0);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v63);
  v33 = v62;
  NeuralNetwork.Layer.BatchNormalizeParameters.variance.setter(v28);
  v34 = v53;
  v64 = *(v53 + 8);
  v35 = v59;
  v36 = v61;
  v64(v59, v61);
  (*(v57 + 16))(v35, v33, v58);
  (*(v34 + 104))(v35, v56, v36);
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  v38 = swift_allocObject(v37, 48, 7);
  v38[2] = 1;
  v38[3] = 2;
  v38[4] = v48;
  v38[5] = v54;
  v39 = swift_allocObject(v37, 48, 7);
  v39[2] = 1;
  v39[3] = 2;
  v40 = v46;
  v39[4] = v46;
  v41 = v45;
  v39[5] = v45;
  v42 = v49;
  v52(v49, v59, v61);
  swift_bridgeObjectRetain_n(v41, 2);

  NeuralNetwork.Layer.init(name:inputNames:outputNames:kind:)(v40, v41, v38, v39, v42);
  (*(v57 + 8))(v62, v58);
  return (v64)(v59, v61);
}

uint64_t outlined destroy of NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?(uint64_t a1, uint64_t *a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(a2);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Array<A>.floatTensor(shape:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v32 = a2;
  v31 = a1;
  v27[1] = v4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v28 = v27;
  v29 = type metadata accessor for ScalarType(0);
  v30 = *(v29 - 8);
  v8 = *(v30 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v14 = type metadata accessor for TensorShape(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  outlined init with copy of TensorShape?(v31, v27);
  if (__swift_getEnumTagSinglePayload(v27, 1, v14) == 1)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v20 = swift_allocObject(v19, 40, 7);
    v20[2] = 1;
    v20[3] = 2;
    v21 = v32;
    v20[4] = *(v32 + 16);
    TensorShape.init(_:)(v20);
    if (__swift_getEnumTagSinglePayload(v27, 1, v14) != 1)
    {
      outlined destroy of TensorShape?(v27);
    }
  }

  else
  {
    (*(v15 + 32))(v27, v27, v14, a3, a4);
    v21 = v32;
  }

  (*(v30 + 104))(v27, enum case for ScalarType.float32(_:), v29, a3, a4);
  v22 = type metadata accessor for ComputeDevice(0);
  v23 = v28;
  __swift_storeEnumTagSinglePayload(v28, 1, 1, v22);
  v24 = alloca(24);
  v25 = alloca(32);
  v28 = v21;
  return Tensor.init(unsafeUninitializedShape:scalarType:computeDevice:initializingWith:)(v27, v27, v23, _sSa8CreateMLSdRszlE11floatTensor5shape14NeuralNetworks0D0VAD0D5ShapeVSg_tFySwXEfU_TA_0);
}

void closure #1 in Array<A>.floatTensor(shape:)(float *a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) >> 60)
  {
    BUG();
  }

  closure #1 in closure #1 in Array<A>.floatTensor(shape:)((a3 + 32), a3 + 8 * *(a3 + 16) + 32, a1, a2);
}

void closure #1 in closure #1 in Array<A>.floatTensor(shape:)(const double *a1, uint64_t a2, float *a3, uint64_t a4)
{
  if (a3)
  {
    v4 = (a4 - a3) / 4;
  }

  else
  {
    v4 = 0;
  }

  if (!a1)
  {
    if (v4 >= 0)
    {
      BUG();
    }

LABEL_12:
    BUG();
  }

  v5 = (a2 - a1) / 8;
  if (v4 < v5)
  {
    v5 = v4;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (!a3)
  {
    BUG();
  }

  vDSP_vdpsp(a1, 1, a3, 1, v5);
}

uint64_t outlined init with copy of TensorShape?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined destroy of TensorShape?(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

void static BundleUtilities.getMLModelURL(at:)(Swift::String a1)
{
  if (one-time initialization token for bundle != -1)
  {
    swift_once(&one-time initialization token for bundle, one-time initialization function for bundle);
  }

  v1 = static BundleUtilities.bundle;
  v2 = outlined bridged method (mbgbnn) of @objc NSBundle.url(forResource:withExtension:)(a1._countAndFlagsBits, a1._object, 0x6C65646F6D6C6DLL, 0, v1);

  if (v2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)(v2);
  }

  else
  {
    *&v5 = 0xD000000000000015;
    *(&v5 + 1) = "BCE13BundleWitness" + 0x8000000000000000;
    String.append(_:)(a1);
    v3 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v3, 0, 0);
    *v4 = v5;
    *(v4 + 16) = 0;
    *(v4 + 32) = 0;
    *(v4 + 48) = 0;
    swift_willThrow();
  }
}

id one-time initialization function for bundle()
{
  type metadata accessor for BundleUtilities.BundleWitness();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self(NSBundle);
  v2 = [v1 bundleForClass:ObjCClassFromMetadata];
  result = v2;
  static BundleUtilities.bundle = result;
  return result;
}

id outlined bridged method (mbgbnn) of @objc NSBundle.url(forResource:withExtension:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  a4;
  v9 = [a5 URLForResource:v7 withExtension:v8];
  v10 = v9;

  return v10;
}

Swift::Void __swiftcall MLProgram.addClassifierSpecification(classLabels:probabilityTensorName:outputProbabilityName:outputLabelName:)(Swift::OpaquePointer classLabels, Swift::String probabilityTensorName, Swift::String outputProbabilityName, Swift::String outputLabelName)
{
  countAndFlagsBits = outputLabelName._countAndFlagsBits;
  object = outputProbabilityName._object;
  v190 = outputProbabilityName._countAndFlagsBits;
  v177 = probabilityTensorName._object;
  v178 = probabilityTensorName._countAndFlagsBits;
  rawValue = classLabels._rawValue;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLProgram.Block?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v171 = &v161;
  v182 = type metadata accessor for MLProgram.Argument.Binding(0);
  v168 = *(v182 - 8);
  v8 = *(v168 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v167 = &v161;
  v188 = type metadata accessor for MLProgram.Operation(0);
  v187 = *(v188 - 8);
  v11 = *(v187 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v189 = &v161;
  v163 = type metadata accessor for MLProgram.Value.Tensor(0);
  v164 = *(v163 - 8);
  v14 = *(v164 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v165 = &v161;
  v184 = type metadata accessor for MLProgram.ShapeDimension(0);
  v183 = *(v184 - 8);
  v17 = *(v183 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v185 = &v161;
  v203 = type metadata accessor for MLProgram.DataType(0);
  v211 = *(v203 - 8);
  v20 = v211[8];
  v21 = alloca(v20);
  v22 = alloca(v20);
  v194 = &v161;
  v179 = type metadata accessor for MLProgram.ValueType(0);
  v169 = *(v179 - 8);
  v23 = *(v169 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v166 = &v161;
  v26 = alloca(v23);
  v27 = alloca(v23);
  v180 = &v161;
  v28 = alloca(v23);
  v29 = alloca(v23);
  v181 = &v161;
  v30 = alloca(v23);
  v31 = alloca(v23);
  v186 = &v161;
  v196 = type metadata accessor for MLProgram.Value(0);
  v195 = *(v196 - 8);
  v32 = *(v195 + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v210 = &v161;
  v35 = alloca(v32);
  v36 = alloca(v32);
  v198 = &v161;
  v205 = type metadata accessor for MLProgram.Block(0);
  v199 = *(v205 - 8);
  v37 = *(v199 + 64);
  v38 = alloca(v37);
  v39 = alloca(v37);
  v212 = &v161;
  v40 = alloca(v37);
  v41 = alloca(v37);
  v204 = &v161;
  v42 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: String, value: MLProgram.Block)?) - 8) + 64);
  v43 = alloca(v42);
  v44 = alloca(v42);
  v208 = &v161;
  v45 = alloca(v42);
  v46 = alloca(v42);
  v209 = &v161;
  v47 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLProgram.Function?) - 8) + 64);
  v48 = alloca(v47);
  v49 = alloca(v47);
  v174 = &v161;
  v50 = alloca(v47);
  v51 = alloca(v47);
  v52 = type metadata accessor for MLProgram.Function(0);
  v53 = *(v52 - 8);
  v54 = *(v53 + 64);
  v55 = alloca(v54);
  v56 = alloca(v54);
  v170 = v4;
  MLProgram.mainFunction.getter();
  if (__swift_getEnumTagSinglePayload(&v161, 1, v52) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v161, &demangling cache variable for type metadata for MLProgram.Function?);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000020, ("Specification+Classifiers.swift" + 0x8000000000000000), "CreateML/MLModelSpecification+Classifiers.swift", 47, 2, 22, 0);
    goto LABEL_19;
  }

  v172 = v52;
  (*(v53 + 32))(&v161, &v161, v52);
  v57 = MLProgram.Function.blockSpecializations.getter();
  v58 = *(v57 + 16);
  v57;
  if (v58 != 1)
  {
LABEL_18:
    v201 = 0;
    v202 = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v155._object = "a main function." + 0x8000000000000000;
    v155._countAndFlagsBits = 0xD00000000000003BLL;
    String.append(_:)(v155);
    v156 = MLProgram.Function.blockSpecializations.getter();
    v157 = v156;
    v158 = Dictionary.Keys.description.getter(v156, &type metadata for String, v205, &protocol witness table for String);
    v160 = v159;
    v155._countAndFlagsBits = v158;
    v155._object = v159;
    String.append(_:)(v155);
    v157;
    v160;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v201, v202, "CreateML/MLModelSpecification+Classifiers.swift", 47, 2, 29, 0);
LABEL_19:
    BUG();
  }

  v173 = v53;
  v59 = MLProgram.Function.blockSpecializations.getter();
  v60 = v59;
  v61 = v209;
  specialized Collection.first.getter(v59);
  v60;
  v62 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: String, value: MLProgram.Block));
  if (__swift_getEnumTagSinglePayload(v61, 1, v62) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v61, &demangling cache variable for type metadata for (key: String, value: MLProgram.Block)?);
    goto LABEL_18;
  }

  v63 = *v61;
  v206 = v61[1];
  v64 = v61 + *(v62 + 48);
  v65 = v205;
  v192 = *(v199 + 8);
  v192(v64, v205);
  v200 = &v161;
  v66 = MLProgram.Function.blockSpecializations.getter();
  v67 = v66;
  v68 = v208;
  specialized Collection.first.getter(v66);
  v67;
  if (__swift_getEnumTagSinglePayload(v68, 1, v62) == 1)
  {
    v206;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v68, &demangling cache variable for type metadata for (key: String, value: MLProgram.Block)?);
    goto LABEL_18;
  }

  *(v68 + 8);
  v69 = *(v62 + 48) + v68;
  v70 = *(v199 + 32);
  v71 = v212;
  v70(v212, v69, v65);
  v70(v204, v71, v65);
  v175 = v63;
  v201 = v63;
  v202 = v206;
  v162[0] = 0x4C4D65726F43;
  v162[1] = 0xE600000000000000;
  v72 = lazy protocol witness table accessor for type String and conformance String();
  v73 = lazy protocol witness table accessor for type String and conformance String();
  if ((BidirectionalCollection<>.starts<A>(with:)(v162, &type metadata for String, &type metadata for String, v72, v73) & 1) == 0)
  {
    v192(v204, v205);
    v206;
    goto LABEL_18;
  }

  v74 = v211;
  v75 = v211[13];
  v76 = v194;
  LODWORD(v209) = enum case for MLProgram.DataType.string(_:);
  v77 = v203;
  v208 = v75;
  (v75)(v194, enum case for MLProgram.DataType.string(_:), v203);
  v78 = _swiftEmptyArrayStorage;
  static MLProgram.ValueType.tensor(dataType:shape:)(v76, _swiftEmptyArrayStorage);
  v176 = *(v74 + 8);
  v176(v76, v77);
  v79 = rawValue;
  v80 = rawValue[2];
  v81 = v185;
  *v185 = v80;
  (*(v183 + 104))(v81, enum case for MLProgram.ShapeDimension.constant(_:), v184);
  if (v80)
  {
    v201 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v80, 0);
    v78 = v201;
    v193 = enum case for MLProgram.Value.Tensor.strings(_:);
    v82 = v79 + 5;
    do
    {
      rawValue = v82;
      v212 = v80;
      v211 = v78;
      v83 = *(v82 - 1);
      v84 = *v82;
      v85 = v194;
      (v208)(v194, v209, v203);
      v86 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
      v87 = swift_allocObject(v86, 48, 7);
      v87[2] = 1;
      v87[3] = 2;
      v87[4] = v83;
      v87[5] = v84;
      v88 = v165;
      *v165 = v87;
      v89 = v163;
      v90 = v164;
      (*(v164 + 104))(v88, v193, v163);
      swift_bridgeObjectRetain_n(v84, 2);
      static MLProgram.Value.immediateTensor(dataType:shape:contents:)(v85, _swiftEmptyArrayStorage, v88);
      (*(v90 + 8))(v88, v89);
      v91 = v85;
      v78 = v211;
      v176(v91, v203);
      v84;
      v201 = v78;
      v92 = v78[2];
      if (v78[3] >> 1 <= v92)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v78[3] >= 2uLL, v92 + 1, 1);
        v78 = v201;
      }

      v78[2] = v92 + 1;
      (*(v195 + 32))(v78 + ((*(v195 + 80) + 32) & ~*(v195 + 80)) + *(v195 + 72) * v92, v210, v196);
      v80 = v212 - 1;
      v82 = rawValue + 2;
    }

    while (v212 != 1);
  }

  v201 = v78;
  v93 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLProgram.Value]);
  v94 = lazy protocol witness table accessor for type [MLProgram.Value] and conformance [A]();
  v95 = v78;
  v96 = v186;
  v97 = v185;
  static MLProgram.Value.immediateList<A>(type:length:contents:)(v186, v185, &v201, v93, v94);
  v95;
  (*(v183 + 8))(v97, v184);
  rawValue = *(v169 + 8);
  (rawValue)(v96, v179);
  v98 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLProgram.Argument)>);
  v99 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, MLProgram.Argument));
  v100 = *(v99 - 8);
  v212 = v99;
  v210 = *(v100 + 72);
  v101 = *(v100 + 80);
  v102 = (v101 + 32) & ~*(v100 + 80);
  v103 = swift_allocObject(v98, v102 + 2 * v210, v101 | 7);
  v211 = v103;
  *(v103 + 16) = 2;
  *(v103 + 24) = 4;
  v104 = v103 + v102;
  strcpy((v103 + v102), "probabilities");
  *(v103 + v102 + 14) = -4864;
  v105 = v167;
  *v167 = v178;
  *(v105 + 8) = v177;
  v106 = *(v168 + 104);
  v106(v105, enum case for MLProgram.Argument.Binding.name(_:), v182);

  MLProgram.Argument.init(binding:)(v105);
  v107 = v210;
  *(v210 + v104) = 0x73657373616C63;
  *(v107 + v104 + 8) = 0xE700000000000000;
  (*(v195 + 16))(v105, v198, v196);
  v106(v105, enum case for MLProgram.Argument.Binding.value(_:), v182);
  MLProgram.Argument.init(binding:)(v105);
  v108 = type metadata accessor for MLProgram.Argument(0);
  v210 = Dictionary.init(dictionaryLiteral:)(v211, &type metadata for String, v108, &protocol witness table for String);
  v109 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLProgram.NamedValueType>);
  v110 = *(type metadata accessor for MLProgram.NamedValueType(0) - 8);
  v212 = *(v110 + 72);
  v111 = swift_allocObject(v109, ((*(v110 + 80) + 32) & ~*(v110 + 80)) + 2 * v212, *(v110 + 80) | 7);
  v211 = v111;
  *(v111 + 16) = 2;
  *(v111 + 24) = 4;
  v112 = v194;
  v113 = v203;
  (v208)(v194, v209, v203);

  v114 = v181;
  static MLProgram.ValueType.tensor(dataType:shape:)(v112, _swiftEmptyArrayStorage);
  v115 = v176;
  v176(v112, v113);
  MLProgram.NamedValueType.init(name:type:)(countAndFlagsBits, outputLabelName._object, v114);
  v116 = v208;
  (v208)(v112, v209, v113);

  static MLProgram.ValueType.tensor(dataType:shape:)(v112, _swiftEmptyArrayStorage);
  v115(v112, v113);
  (v116)(v112, enum case for MLProgram.DataType.float64(_:), v113);
  v117 = v166;
  static MLProgram.ValueType.tensor(dataType:shape:)(v112, _swiftEmptyArrayStorage);
  v115(v112, v113);
  v118 = v181;
  v119 = v180;
  static MLProgram.ValueType.dictionary(keyType:valueType:)(v180, v117);
  v120 = v117;
  v121 = v179;
  v122 = rawValue;
  (rawValue)(v120, v179);
  v122(v119, v121);
  MLProgram.NamedValueType.init(name:type:)(v190, object, v118);
  v123 = v189;
  MLProgram.Operation.init(name:inputs:outputs:)(0x7966697373616C63, 0xE800000000000000, v210, v211);
  v124 = v204;
  v125 = MLProgram.Block.operations.modify(&v201);
  v127 = v126;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v128 = *(*v127 + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v128);
  v129 = *v127;
  *(v129 + 16) = v128 + 1;
  (*(v187 + 16))(v129 + ((*(v187 + 80) + 32) & ~*(v187 + 80)) + *(v187 + 72) * v128, v123, v188);
  v125(&v201, 0);
  v130 = v124;
  v131 = v177;

  v132 = MLProgram.Block.outputs.modify(&v201);
  v134 = v133;
  v135 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v133, v178, v131);
  v136 = *(*v134 + 16);
  if (v136 < v135)
  {
    BUG();
  }

  specialized Array.replaceSubrange<A>(_:with:)(v135, v136);
  v132(&v201, 0);

  v137 = MLProgram.Block.outputs.modify(&v201);
  v139 = v138;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v140 = *(*v139 + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v140);
  v141 = *v139;
  *(v141 + 16) = v140 + 1;
  v140 *= 16;
  *(v141 + v140 + 32) = countAndFlagsBits;
  *(v141 + v140 + 40) = outputLabelName._object;
  v137(&v201, 0);
  v142 = object;

  v143 = MLProgram.Block.outputs.modify(&v201);
  v145 = v144;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v146 = *(*v145 + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v146);
  v147 = *v145;
  *(v147 + 16) = v146 + 1;
  v146 *= 16;
  *(v147 + v146 + 32) = v190;
  *(v147 + v146 + 40) = v142;
  v143(&v201, 0);
  v148 = v171;
  v149 = v205;
  (*(v199 + 16))(v171, v130, v205);
  __swift_storeEnumTagSinglePayload(v148, 0, 1, v149);
  v150 = v200;
  v151 = MLProgram.Function.blockSpecializations.modify(&v201);
  specialized Dictionary.subscript.setter(v148, v175, v206);
  v151(&v201, 0);
  v152 = v174;
  v153 = v172;
  v154 = v173;
  (*(v173 + 16))(v174, v150, v172);
  __swift_storeEnumTagSinglePayload(v152, 0, 1, v153);
  MLProgram.mainFunction.setter(v152);
  (*(v187 + 8))(v189, v188);
  (*(v195 + 8))(v198, v196);
  v192(v204, v149);
  (*(v154 + 8))(v150, v153);
}

uint64_t lazy protocol witness table accessor for type [MLProgram.Value] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [MLProgram.Value] and conformance [A];
  if (!lazy protocol witness table cache variable for type [MLProgram.Value] and conformance [A])
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [MLProgram.Value]);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v1);
    lazy protocol witness table cache variable for type [MLProgram.Value] and conformance [A] = result;
  }

  return result;
}

unint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v26 = *(*a1 + 16);
  if (v26)
  {
    v5 = a2;
    v6 = 56;
    v7 = 0;
    while (v5 ^ *(v4 + v6 - 24) | a3 ^ *(v4 + v6 - 16))
    {
      v8 = v4;
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)(*(v4 + v6 - 24), *(v4 + v6 - 16), a2, a3, 0);
      v4 = v8;
      v5 = a2;
      if (v9)
      {
        break;
      }

      ++v7;
      v6 += 16;
      if (v26 == v7)
      {
        v7 = v26;
        goto LABEL_26;
      }
    }

    v10 = v7 + 1;
    if (__OFADD__(1, v7))
    {
      BUG();
    }

    if (v10 != v26)
    {
      do
      {
        v11 = *(v4 + 16);
        if (v10 >= v11)
        {
          BUG();
        }

        v12 = *(v4 + v6 - 8);
        v13 = *(v4 + v6);
        if (v12 != v5 || v13 != a3)
        {
          v27 = v4;
          v19 = *(v4 + v6 - 8);
          if (_stringCompareWithSmolCheck(_:_:expecting:)(v12, v13, v5, a3, 0))
          {
            v5 = a2;
            v4 = v27;
          }

          else
          {
            if (v10 == v7)
            {
              v5 = a2;
              v4 = v27;
            }

            else
            {
              if (v7 >= v11)
              {
                BUG();
              }

              v22 = *(v27 + 32 + 16 * v7);
              v21 = 2 * v7;
              v23 = *(v27 + 32 + 16 * v7 + 8);

              if (swift_isUniquelyReferenced_nonNull_native(v27))
              {
                v14 = v27;
              }

              else
              {
                v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
              }

              v15 = v14[v21 + 5];
              v14[v21 + 4] = v19;
              v14[v21 + 5] = v13;
              v16 = v14;
              v15;
              if (v10 >= *(v16 + 16))
              {
                BUG();
              }

              v17 = *(v16 + v6);
              *(v16 + v6 - 8) = v22;
              *(v16 + v6) = v23;
              v17;
              v4 = v16;
              *a1 = v16;
              v5 = a2;
            }

            ++v7;
          }
        }

        ++v10;
        v6 += 16;
      }

      while (v10 != *(v4 + 16));
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_26:
  a3;
  return v7;
}

_BYTE *assignWithCopy for MLBoostedTreeRegressor.ModelParameters.ValidationData(_BYTE *__dst, _BYTE *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLBoostedTreeRegressor.ModelParameters.ValidationData(__dst);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload == 2)
  {
    v7 = type metadata accessor for DataFrame(0);
    (*(*(v7 - 8) + 16))(__dst, __src, v7);
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v5 = *__src;
    v6 = __src[8];
    outlined copy of Result<_DataTable, Error>(*__src, v6);
    *__dst = v5;
    __dst[8] = v6;
    swift_storeEnumTagMultiPayload(__dst, a3, 1);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLBoostedTreeRegressor.ModelParameters.ValidationData;
  if (!type metadata singleton initialization cache for MLBoostedTreeRegressor.ModelParameters.ValidationData)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
  }

  return result;
}

void *assignWithTake for MLBoostedTreeRegressor.ModelParameters.ValidationData(void *__dst, void *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLBoostedTreeRegressor.ModelParameters.ValidationData(__dst);
  if (swift_getEnumCaseMultiPayload(__src, a3) == 2)
  {
    v4 = type metadata accessor for DataFrame(0);
    (*(*(v4 - 8) + 32))(__dst, __src, v4);
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata completion function for MLBoostedTreeRegressor.ModelParameters.ValidationData(uint64_t a1)
{
  v5[0] = &unk_3474E0;
  v5[1] = &unk_3474F8;
  result = type metadata accessor for DataFrame(319);
  if (v4 <= 0x3F)
  {
    v5[2] = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 3, v5, v2, v3);
    return 0;
  }

  return result;
}

uint64_t MLBoostedTreeRegressor.ModelParameters.ValidationData.table.getter(__m128 a1)
{
  v3 = v1;
  v4 = type metadata accessor for DataFrame(0);
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v29 = &v25;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v28 = &v25;
  v10 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  outlined init with copy of MLBoostedTreeRegressor.ModelParameters.ValidationData(v2, &v25);
  result = swift_getEnumCaseMultiPayload(&v25, v10);
  switch(result)
  {
    case 0:
      *v3 = 0;
      *(v3 + 8) = -1;
      break;
    case 1:
      result = v25;
      v15 = v26;
      goto LABEL_7;
    case 2:
      v16 = v28;
      v17 = v27;
      (*(v27 + 32))(v28, &v25, v4);
      v18 = v29;
      *a1.i64 = (*(v17 + 16))(v29, v16, v4);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v18, 1, a1);
      (*(v17 + 8))(v16, v4);
      result = v30;
      v15 = v31;
LABEL_7:
      *v3 = result;
      *(v3 + 8) = v15;
      break;
    case 3:
      v19 = v3;
      empty = tc_v1_sframe_create_empty(0);
      if (!empty)
      {
        BUG();
      }

      v21 = empty;
      v22 = type metadata accessor for CMLTable();
      v23 = swift_allocObject(v22, 24, 7);
      *(v23 + 16) = v21;
      v24 = type metadata accessor for _DataTable();
      swift_allocObject(v24, 40, 7);
      result = _DataTable.init(impl:)(v23);
      *v19 = result;
      *(v19 + 8) = 0;
      break;
  }

  return result;
}

uint64_t MLBoostedTreeRegressor.ModelParameters.ValidationData.generateDataFrames(trainingData:)(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t *, uint64_t, uint64_t))
{
  v56 = a3;
  v55 = a2;
  v54 = a1;
  v4 = type metadata accessor for DataFrame(0);
  v57 = *(v4 - 8);
  v5 = *(v57 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v53 = &v44;
  v47 = type metadata accessor for DataFrame.Slice(0);
  v46 = *(v47 - 8);
  v8 = *(v46 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v49 = &v44;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v52 = &v44;
  v13 = alloca(v8);
  v14 = alloca(v8);
  v50 = &v44;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame.Slice?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v48 = &v44;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v51 = &v44;
  v20 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  outlined init with copy of MLBoostedTreeRegressor.ModelParameters.ValidationData(v3, &v44);
  switch(swift_getEnumCaseMultiPayload(&v44, v20))
  {
    case 0u:
      v57 = v4;
      v24 = v51;
      v25 = v50;
      DataFrame.randomSplit(strategy:)(v51, v50, &v44);
      v26 = v46;
      v27 = v52;
      v28 = v25;
      v29 = v47;
      v56 = *(v46 + 16);
      v56(v52, v28, v47);
      DataFrame.init(_:)(v27);
      v30 = v48;
      outlined init with copy of DataFrame.Slice?(v24, v48);
      v31 = v29;
      if (__swift_getEnumTagSinglePayload(v30, 1, v29) == 1)
      {
        __swift_storeEnumTagSinglePayload(v55, 1, 1, v57);
        (*(v26 + 8))(v50, v29);
      }

      else
      {
        v41 = v52;
        (*(v26 + 32))(v52, v30, v31);
        v42 = v49;
        v56(v49, v41, v31);
        DataFrame.init(_:)(v42);
        v43 = *(v26 + 8);
        v43(v41, v31);
        __swift_storeEnumTagSinglePayload(v55, 0, 1, v57);
        v43(v50, v31);
      }

      return outlined destroy of DataFrame.Slice?(v51);
    case 1u:
      v36 = v44;
      v37 = v45;
      (*(v57 + 16))(v54, v56, v4);
      v44 = v36;
      v45 = v37;
      v38 = v55;
      DataFrame.init(_:)(&v44);
      v34 = v38;
      goto LABEL_10;
    case 2u:
      v32 = *(v57 + 32);
      v32(v53, &v44, v4);
      if (DataFrameProtocol.isEmpty.getter(v4, &protocol witness table for DataFrame))
      {
        v33 = v57;
        (*(v57 + 8))(v53, v4);
        (*(v33 + 16))(v54, v56, v4);
LABEL_7:
        v34 = v55;
        v35 = 1;
      }

      else
      {
        (*(v57 + 16))(v54, v56, v4);
        v39 = v55;
        v32(v55, v53, v4);
        v34 = v39;
LABEL_10:
        v35 = 0;
      }

      return __swift_storeEnumTagSinglePayload(v34, v35, 1, v4);
    case 3u:
      (*(v57 + 16))(v54, v56, v4);
      goto LABEL_7;
  }
}

char *initializeBufferWithCopyOfBuffer for MLTextClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *__src;
    *v3 = *__src;
    v3 = (v9 + ((v5 + 16) & ~v5));

    return v3;
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload(__src, a3))
    {
      case 1u:
        v7 = *__src;
        v8 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v8);
        *__dst = v7;
        __dst[8] = v8;
        *(__dst + 2) = *(__src + 2);
        *(__dst + 3) = *(__src + 3);
        *(__dst + 4) = *(__src + 4);
        *(__dst + 5) = *(__src + 5);

        swift_storeEnumTagMultiPayload(__dst, a3, 1);
        return v3;
      case 2u:
        v11 = type metadata accessor for DataFrame(0);
        (*(*(v11 - 8) + 16))(__dst, __src, v11);
        v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, textColumn: String, labelColumn: String));
        v13 = *(v12 + 48);
        *&__dst[v13] = *&__src[v13];
        *&__dst[v13 + 8] = *&__src[v13 + 8];
        v14 = *(v12 + 64);
        *&__dst[v14] = *&__src[v14];
        *&__dst[v14 + 8] = *&__src[v14 + 8];

        swift_storeEnumTagMultiPayload(__dst, a3, 2);
        return v3;
      case 3u:
        v10 = type metadata accessor for URL(0);
        (*(*(v10 - 8) + 16))(__dst, __src, v10);
        swift_storeEnumTagMultiPayload(__dst, a3, 3);
        return v3;
      case 4u:
        *__dst = *__src;

        swift_storeEnumTagMultiPayload(__dst, a3, 4);
        return v3;
      default:
        result = memcpy(__dst, __src, *(v4 + 64));
        break;
    }
  }

  return result;
}

uint64_t destroy for MLTextClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2) - 1;
  switch(result)
  {
    case 0:
      outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
      *(a1 + 24);
      result = *(a1 + 40);
      break;
    case 1:
      v4 = type metadata accessor for DataFrame(0);
      (*(*(v4 - 8) + 8))(a1, v4);
      v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, textColumn: String, labelColumn: String));
      *(a1 + *(v5 + 48) + 8);
      result = *(a1 + *(v5 + 64) + 8);
      break;
    case 2:
      v3 = type metadata accessor for URL(0);
      result = (*(*(v3 - 8) + 8))(a1, v3);
      break;
    case 3:
      result = *a1;
      break;
    default:
      return result;
  }

  return result;
}

char *initializeWithCopy for MLTextClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload(__src, a3))
  {
    case 1u:
      v4 = *__src;
      v5 = __src[8];
      outlined copy of Result<_DataTable, Error>(*__src, v5);
      *__dst = v4;
      __dst[8] = v5;
      *(__dst + 2) = *(__src + 2);
      *(__dst + 3) = *(__src + 3);
      *(__dst + 4) = *(__src + 4);
      *(__dst + 5) = *(__src + 5);

      swift_storeEnumTagMultiPayload(__dst, a3, 1);
      goto LABEL_6;
    case 2u:
      v7 = type metadata accessor for DataFrame(0);
      (*(*(v7 - 8) + 16))(__dst, __src, v7);
      v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, textColumn: String, labelColumn: String));
      v9 = *(v8 + 48);
      *&__dst[v9] = *&__src[v9];
      *&__dst[v9 + 8] = *&__src[v9 + 8];
      v10 = *(v8 + 64);
      *&__dst[v10] = *&__src[v10];
      *&__dst[v10 + 8] = *&__src[v10 + 8];

      swift_storeEnumTagMultiPayload(__dst, a3, 2);
      goto LABEL_6;
    case 3u:
      v6 = type metadata accessor for URL(0);
      (*(*(v6 - 8) + 16))(__dst, __src, v6);
      swift_storeEnumTagMultiPayload(__dst, a3, 3);
      goto LABEL_6;
    case 4u:
      *__dst = *__src;

      swift_storeEnumTagMultiPayload(__dst, a3, 4);
LABEL_6:
      result = __dst;
      break;
    default:
      result = memcpy(__dst, __src, *(*(a3 - 8) + 64));
      break;
  }

  return result;
}

char *assignWithCopy for MLTextClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLTextClassifier.ModelParameters.ValidationData);
  switch(swift_getEnumCaseMultiPayload(__src, a3))
  {
    case 1u:
      v4 = *__src;
      v5 = __src[8];
      outlined copy of Result<_DataTable, Error>(*__src, v5);
      *__dst = v4;
      __dst[8] = v5;
      *(__dst + 2) = *(__src + 2);
      *(__dst + 3) = *(__src + 3);
      *(__dst + 4) = *(__src + 4);
      *(__dst + 5) = *(__src + 5);

      swift_storeEnumTagMultiPayload(__dst, a3, 1);
      return __dst;
    case 2u:
      v7 = type metadata accessor for DataFrame(0);
      (*(*(v7 - 8) + 16))(__dst, __src, v7);
      v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, textColumn: String, labelColumn: String));
      v9 = *(v8 + 48);
      *&__dst[v9] = *&__src[v9];
      *&__dst[v9 + 8] = *&__src[v9 + 8];
      v10 = *(v8 + 64);
      *&__dst[v10] = *&__src[v10];
      *&__dst[v10 + 8] = *&__src[v10 + 8];

      swift_storeEnumTagMultiPayload(__dst, a3, 2);
      return __dst;
    case 3u:
      v6 = type metadata accessor for URL(0);
      (*(*(v6 - 8) + 16))(__dst, __src, v6);
      swift_storeEnumTagMultiPayload(__dst, a3, 3);
      return __dst;
    case 4u:
      *__dst = *__src;

      swift_storeEnumTagMultiPayload(__dst, a3, 4);
      return __dst;
    default:
      result = memcpy(__dst, __src, *(*(a3 - 8) + 64));
      break;
  }

  return result;
}

uint64_t type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLTextClassifier.ModelParameters.ValidationData;
  if (!type metadata singleton initialization cache for MLTextClassifier.ModelParameters.ValidationData)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLTextClassifier.ModelParameters.ValidationData);
  }

  return result;
}

char *initializeWithTake for MLTextClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload == 3)
  {
    v7 = type metadata accessor for URL(0);
    (*(*(v7 - 8) + 32))(__dst, __src, v7);
    swift_storeEnumTagMultiPayload(__dst, a3, 3);
    return __dst;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v5 = type metadata accessor for DataFrame(0);
    (*(*(v5 - 8) + 32))(__dst, __src, v5);
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, textColumn: String, labelColumn: String));
    *&__dst[*(v6 + 48)] = *&__src[*(v6 + 48)];
    *&__dst[*(v6 + 64)] = *&__src[*(v6 + 64)];
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

char *assignWithTake for MLTextClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLTextClassifier.ModelParameters.ValidationData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload == 3)
  {
    v7 = type metadata accessor for URL(0);
    (*(*(v7 - 8) + 32))(__dst, __src, v7);
    swift_storeEnumTagMultiPayload(__dst, a3, 3);
    return __dst;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v5 = type metadata accessor for DataFrame(0);
    (*(*(v5 - 8) + 32))(__dst, __src, v5);
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, textColumn: String, labelColumn: String));
    *&__dst[*(v6 + 48)] = *&__src[*(v6 + 48)];
    *&__dst[*(v6 + 64)] = *&__src[*(v6 + 64)];
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata completion function for MLTextClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  v7[0] = &unk_347530;
  v7[1] = &unk_347548;
  result = type metadata accessor for DataFrame(319);
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout3(v6, *(result - 8) + 64, &unk_347560, &unk_347560);
    v7[2] = v6;
    result = type metadata accessor for URL(319);
    if (v5 <= 0x3F)
    {
      v7[3] = *(result - 8) + 64;
      v7[4] = &value witness table for Builtin.BridgeObject + 64;
      swift_initEnumMetadataMultiPayload(a1, 256, 5, v7, v3, v4);
      return 0;
    }
  }

  return result;
}

uint64_t MLTextClassifier.ModelParameters.ValidationData.createValidationData(trainingData:textColumn:labelColumn:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, double a6)
{
  v102._countAndFlagsBits = a4;
  to = a3;
  v108 = v6;
  v101 = a2;
  v107 = v7;
  v110 = v8;
  v102._object = a5;
  v106 = a1;
  v9 = *(*(type metadata accessor for MLTextClassifier.DataSource(0) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v104 = &v92;
  v109._object = type metadata accessor for DataFrame(0);
  v12 = *(v109._object - 1);
  v13 = *(v12 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  _._object = &v92;
  v16 = alloca(v13);
  v17 = alloca(v13);
  _._countAndFlagsBits = &v92;
  v96 = type metadata accessor for DataFrame.Slice(0);
  v18 = *(v96 - 1);
  v19 = v18[8];
  v20 = alloca(v19);
  v21 = alloca(v19);
  v98 = &v92;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v99 = &v92;
  v24 = alloca(v19);
  v25 = alloca(v19);
  v109._countAndFlagsBits = &v92;
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame.Slice?) - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v97 = &v92;
  v29 = alloca(v26);
  v30 = alloca(v26);
  v105 = &v92;
  v31 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
  v32 = *(*(v31 - 8) + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  outlined init with copy of MLTextClassifier.ModelParameters.ValidationData(v110, &v92);
  switch(swift_getEnumCaseMultiPayload(&v92, v31))
  {
    case 0u:
      v110 = v18;
      v36 = v105;
      DataFrame.randomSplit(strategy:)(v105, v109._countAndFlagsBits, &v92);
      v37 = v97;
      outlined init with copy of DataFrame.Slice?(v36, v97);
      v38 = v96;
      if (__swift_getEnumTagSinglePayload(v37, 1, v96) == 1)
      {
        (v110)[1](v109._countAndFlagsBits, v38);
        outlined destroy of DataFrame.Slice?(v105);
        outlined destroy of DataFrame.Slice?(v37);
        goto LABEL_4;
      }

      (*(v12 + 8))(v106, v109._object);
      v70 = v37;
      v71 = v110;
      (v110[4])(v99, v70, v38);
      v72 = v38;
      v73 = v71[2];
      v74 = v98;
      v73(v98, v109._countAndFlagsBits, v72);
      DataFrame.init(_:)(v74);
      v73(v74, v99, v72);
      DataFrame.init(_:)(v74);
      v75 = v71[1];
      v75(v99, v72);
      v75(v109._countAndFlagsBits, v72);
      outlined destroy of DataFrame.Slice?(v105);
      v39 = v108;
      v40 = 0;
      return __swift_storeEnumTagSinglePayload(v39, v40, 1, v109._object);
    case 1u:
      v110 = v12;
      v48 = v93;
      v49 = v94;
      v105 = v95;
      _._object = v96;
      v50 = v97;
      LOBYTE(v93) = v93 & 1;
      v109._countAndFlagsBits = v92;
      LODWORD(v106) = v48;
      outlined copy of Result<_DataTable, Error>(v92, v48);
      countAndFlagsBits = _._countAndFlagsBits;
      DataFrame.init(_:)(&v92);
      v52 = countAndFlagsBits;
      v53 = v50;
      v54 = v105;
      v104 = v49;
      v55 = v49;
      object = _._object;
      v57 = v107;
      static MLTextClassifier.validateDataFrame(_:textColumn:labelColumn:)(v52, v55, v105, _._object, v53);
      if (v57)
      {
        (v110)[1](_._countAndFlagsBits, v109._object);
        outlined consume of Result<_DataTable, Error>(v109._countAndFlagsBits, v106);
        v53;
        v58 = v54;
        goto LABEL_14;
      }

      v79._countAndFlagsBits = v104;
      v79._object = v54;
      v80._countAndFlagsBits = v101;
      v80._object = to;
      v107 = v53;
      v81 = _._countAndFlagsBits;
      DataFrame.renameColumn(_:to:)(v79, v80);
      v54;
      v79._countAndFlagsBits = object;
      v82 = v107;
      v79._object = v107;
      DataFrame.renameColumn(_:to:)(v79, v102);
      outlined consume of Result<_DataTable, Error>(v109._countAndFlagsBits, v106);
      v82;
      v83 = v108;
      v84 = v109._object;
      (v110[4])(v108, v81, v109._object);
      v77 = v83;
      v78 = v84;
      goto LABEL_20;
    case 2u:
      v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, textColumn: String, labelColumn: String));
      v60 = *(v59 + 48);
      v109._countAndFlagsBits = *(&v92 + v60);
      v110 = *(&v92 + v60 + 8);
      v61 = *(v59 + 64);
      v62 = *(&v92 + v61);
      v106 = *(&v92 + v61 + 8);
      v63 = _._object;
      v105 = *(v12 + 32);
      (v105)(_._object, &v92, v109._object);
      v64 = v63;
      v65 = v106;
      _._countAndFlagsBits = v62;
      v66 = v107;
      static MLTextClassifier.validateDataFrame(_:textColumn:labelColumn:)(v64, v109._countAndFlagsBits, v110, v62, v106);
      if (!v66)
      {
        v85._countAndFlagsBits = v109._countAndFlagsBits;
        v86 = v110;
        v85._object = v110;
        v87._countAndFlagsBits = v101;
        v87._object = to;
        v88 = v65;
        v89 = _._object;
        DataFrame.renameColumn(_:to:)(v85, v87);
        v86;
        v85._countAndFlagsBits = _._countAndFlagsBits;
        v85._object = v88;
        DataFrame.renameColumn(_:to:)(v85, v102);
        v88;
        v90 = v108;
        v91 = v109._object;
        (v105)(v108, v89, v109._object);
        v77 = v90;
        v78 = v91;
        goto LABEL_20;
      }

      (*(v12 + 8))(_._object, v109._object);
      v110;
      v58 = v65;
LABEL_14:
      result = v58;
      break;
    case 3u:
      v41 = v101;
      v42 = to;
      v43 = v104;
      outlined init with take of MLTextClassifier.DataSource(&v92, v104);
      v44 = v107;
      v45 = static _TextUtilities.getTextLabeledDictionary(from:)(v43, a6);
      if (v44)
      {
        result = outlined destroy of MLActivityClassifier.ModelParameters(v104, type metadata accessor for MLTextClassifier.DataSource);
      }

      else
      {
        v76 = v45;
        specialized generateTextDataFrame<A>(_:textColumn:labelColumn:using:)(v45, v41, v42, v102._countAndFlagsBits, v102._object, v46);
        outlined destroy of MLActivityClassifier.ModelParameters(v104, type metadata accessor for MLTextClassifier.DataSource);
        v76;
        v77 = v108;
        v78 = v109._object;
LABEL_20:
        result = __swift_storeEnumTagSinglePayload(v77, 0, 1, v78);
      }

      break;
    case 4u:
      v67 = v92;
      v68 = v108;
      v69 = v107;
      specialized generateTextDataFrame<A>(_:textColumn:labelColumn:using:)(v92, v101, to, v102._countAndFlagsBits, v102._object, v35);
      if (!v69)
      {
        __swift_storeEnumTagSinglePayload(v68, 0, 1, v109._object);
      }

      v58 = v67;
      goto LABEL_14;
    case 5u:
LABEL_4:
      v39 = v108;
      v40 = 1;
      return __swift_storeEnumTagSinglePayload(v39, v40, 1, v109._object);
  }

  return result;
}

uint64_t MLTextClassifier.ModelParameters.ValidationData.init(_:textColumn:labelColumn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a5;
  v8 = *(a1 + 8);
  if (v8 == -1)
  {
    a3;
    v7;
    *v6 = 0;
    *(v6 + 16) = 256;
    v14 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
    return swift_storeEnumTagMultiPayload(v6, v14, 0);
  }

  else
  {
    v17 = *a1;
    v9 = *a1;
    v10 = *(a1 + 8);
    v11 = v8 & 1;
    outlined copy of Result<_DataTable, Error>(*a1, v10);
    v12 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v17, v11);
    if (v12)
    {
      *v6 = v9;
      *(v6 + 8) = v11;
      *(v6 + 16) = a2;
      *(v6 + 24) = a3;
      *(v6 + 32) = a4;
      *(v6 + 40) = a5;
      v13 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
      v16 = 1;
    }

    else
    {
      outlined consume of MLDataTable?(v9, v10);
      a3;
      a5;
      v13 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
      v16 = 5;
    }

    return swift_storeEnumTagMultiPayload(v6, v13, v16);
  }
}

uint64_t MLTextClassifier.ModelParameters.ValidationData.table.getter(__m128 a1)
{
  v43 = v1;
  v3 = *(*(type metadata accessor for MLTextClassifier.DataSource(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v40 = &v37;
  v6 = type metadata accessor for DataFrame(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v39 = &v37;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v38 = &v37;
  v13 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  outlined init with copy of MLTextClassifier.ModelParameters.ValidationData(v2, &v37);
  switch(swift_getEnumCaseMultiPayload(&v37, v13))
  {
    case 0u:
      result = v43;
      *v43 = 0;
      *(result + 8) = -1;
      return result;
    case 1u:
      v18 = v37;
      v19 = v38;
      v20 = v42;
      v40;
      v20;
      result = v43;
      *v43 = v18;
      *(result + 8) = v19;
      return result;
    case 2u:
      v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, textColumn: String, labelColumn: String));
      *(&v37 + *(v23 + 48) + 8);
      *(&v37 + *(v23 + 64) + 8);
      v24 = v38;
      (*(v7 + 32))(v38, &v37, v6);
      v25 = v39;
      *a1.i64 = (*(v7 + 16))(v39, v24, v6);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v25, 0, a1);
      (*(v7 + 8))(v24, v6);
      goto LABEL_10;
    case 3u:
      v26 = v40;
      outlined init with take of MLTextClassifier.DataSource(&v37, v40);
      v27 = static _TextUtilities.getTextLabeledDictionary(from:)(v26, *a1.i64);
      v22 = v27;
      specialized generateTextTable<A>(_:textColumn:labelColumn:using:)(v27, 1954047348, 0xE400000000000000, 0x6C6562616CLL, 0xE500000000000000, v28);
      outlined destroy of MLActivityClassifier.ModelParameters(v26, type metadata accessor for MLTextClassifier.DataSource);
      goto LABEL_9;
    case 4u:
      v22 = v37;
      specialized generateTextTable<A>(_:textColumn:labelColumn:using:)(v37, 1954047348, 0xE400000000000000, 0x6C6562616CLL, 0xE500000000000000, v17);
LABEL_9:
      v22;
LABEL_10:
      result = v41;
      v35 = v42;
      v36 = v43;
      *v43 = v41;
      *(v36 + 8) = v35;
      break;
    case 5u:
      empty = tc_v1_sframe_create_empty(0);
      if (!empty)
      {
        BUG();
      }

      v30 = empty;
      v31 = type metadata accessor for CMLTable();
      v32 = swift_allocObject(v31, 24, 7);
      *(v32 + 16) = v30;
      v33 = type metadata accessor for _DataTable();
      swift_allocObject(v33, 40, 7);
      result = _DataTable.init(impl:)(v32);
      v34 = v43;
      *v43 = result;
      *(v34 + 8) = 0;
      break;
  }

  return result;
}

uint64_t outlined init with copy of MLTextClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with take of MLTextClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLTextClassifier.DataSource(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t MLActionClassifier.ModelParameters.init(validation:batchSize:maximumIterations:predictionWindowSize:augmentationOptions:algorithm:targetFrameRate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, double a6)
{
  v9 = v6;
  v10 = *a5;
  outlined init with take of MLClassifierMetrics(a1, v6, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
  v11 = type metadata accessor for MLActionClassifier.ModelParameters(0);
  *(v9 + v11[5]) = a2;
  *(v9 + v11[6]) = a3;
  *(v9 + v11[7]) = a4;
  *(v9 + v11[8]) = v10;
  result = v11[10];
  *(v9 + result) = a6;
  return result;
}

char MLActionClassifier.ModelParameters.ValidationData.extractAnnotations(trainingData:)(uint64_t *a1, uint64_t *a2, __m128 a3)
{
  v54 = v3;
  v55 = v4;
  v52 = a2;
  v53 = a1;
  v5 = type metadata accessor for MLActionClassifier.DataSource(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v48 = &v41;
  v9 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = v54;
  LOBYTE(v14) = MLActionClassifier.DataSource.videosWithAnnotations()(a3);
  if (v13)
  {
    return v14;
  }

  *&v47 = v5;
  v15 = v49;
  v57 = BYTE8(v49);
  outlined init with copy of MLActionClassifier.ModelParameters.ValidationData(v55, &v41);
  v55 = &v41;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v41, v9);
  v54 = 0;
  if (!EnumCaseMultiPayload)
  {
    v47 = *v55;
    v56 = *(v55 + 16);
    LOBYTE(v48) = *(v55 + 17);
    *&v49 = v15;
    v22 = v57;
    BYTE8(v49) = v57;
    LODWORD(v55) = v57;
    outlined copy of Result<_DataTable, Error>(v15, v57);
    v23 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v49, SBYTE8(v49));
    if (v23 > 0)
    {
      v45 = v15;
      v46 = v22;
      v49 = v47;
      v50 = v56;
      v51 = v48 & 1;
      MLDataTable.randomSplitBySequence(strategy:by:on:)(&v41, &v43, &v49, 0x7461506F65646976, 0xE900000000000068, 0x6C6562616CLL, 0xE500000000000000);
      outlined consume of Result<_DataTable, Error>(v15, v55);
      v14 = v41;
      v24 = v42;
      v25 = v44;
      v26 = v53;
      *v53 = v43;
      *(v26 + 8) = v25;
      v27 = v52;
      *v52 = v14;
      *(v27 + 8) = v24;
      return v14;
    }

LABEL_10:
    outlined consume of Result<_DataTable, Error>(v15, v55);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 1)
  {
    *&v49 = v15;
    v28 = v57;
    BYTE8(v49) = v57;
    LODWORD(v55) = v57;
    outlined copy of Result<_DataTable, Error>(v15, v57);
    MLDataTable.size.getter();
    v30 = v29;
    outlined consume of Result<_DataTable, Error>(v49, SBYTE8(v49));
    if (v30)
    {
      v31 = v53;
      *v53 = v15;
      *(v31 + 8) = v28;
      v14 = v52;
      *v52 = 0;
      *(v14 + 8) = -1;
      return v14;
    }

    goto LABEL_10;
  }

  v17 = v15;
  v18 = v55;
  if (swift_getEnumCaseMultiPayload(v55, v47) == 3)
  {
    outlined consume of Result<_DataTable, Error>(v17, v57);
    v19 = *(v18 + 24);
    v20 = *(v18 + 40);
    v21 = *(v18 + 56);
    outlined consume of Result<_DataTable, Error>(*v18, *(v18 + 8));
    v21;
    v20;
    v19;
LABEL_11:
    v32 = v53;
    *v53 = 0;
    LOBYTE(v14) = -1;
    *(v32 + 8) = -1;
    v33 = v52;
    *v52 = 0;
    *(v33 + 8) = -1;
    return v14;
  }

  v34 = v18;
  v35 = v48;
  outlined init with take of MLClassifierMetrics(v34, v48, type metadata accessor for MLActionClassifier.DataSource);
  v36 = v54;
  MLActionClassifier.DataSource.videosWithAnnotations()(a3);
  outlined destroy of MLImageClassifier.ModelParameters.ValidationData(v35, type metadata accessor for MLActionClassifier.DataSource);
  if (v36)
  {
    LOBYTE(v14) = outlined consume of Result<_DataTable, Error>(v17, v57);
  }

  else
  {
    v14 = v49;
    v37 = BYTE8(v49);
    v38 = v53;
    *v53 = v17;
    *(v38 + 8) = v57;
    v39 = v52;
    *v52 = v14;
    *(v39 + 8) = v37;
  }

  return v14;
}

uint64_t MLActionClassifier.ModelParameters.batchSize.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLActionClassifier.ModelParameters(0) + 20);
  *(v1 + result) = a1;
  return result;
}

uint64_t MLActionClassifier.ModelParameters.maximumIterations.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLActionClassifier.ModelParameters(0) + 24);
  *(v1 + result) = a1;
  return result;
}

uint64_t MLActionClassifier.ModelParameters.predictionWindowSize.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLActionClassifier.ModelParameters(0) + 28);
  *(v1 + result) = a1;
  return result;
}

uint64_t MLActionClassifier.ModelParameters.augmentationOptions.getter()
{
  v2 = v0;
  result = *(v1 + *(type metadata accessor for MLActionClassifier.ModelParameters(0) + 32));
  *v2 = result;
  return result;
}

uint64_t MLActionClassifier.ModelParameters.augmentationOptions.setter(uint64_t *a1)
{
  v2 = *a1;
  result = *(type metadata accessor for MLActionClassifier.ModelParameters(0) + 32);
  *(v1 + result) = v2;
  return result;
}

uint64_t MLActionClassifier.ModelParameters.targetFrameRate.setter(double a1)
{
  result = *(type metadata accessor for MLActionClassifier.ModelParameters(0) + 40);
  *(v1 + result) = a1;
  return result;
}

Swift::Int MLActionClassifier.ModelParameters.ModelAlgorithmType.hashValue.getter()
{
  Hasher.init(_seed:)(0);
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

unint64_t MLActionClassifier.ModelParameters.description.getter()
{
  _StringGuts.grow(_:)(23);
  0;
  v1 = type metadata accessor for MLActionClassifier.ModelParameters(0);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  object = v2._object;
  String.append(_:)(v2);
  object;
  v4._countAndFlagsBits = 10;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  strcpy(&v15, "Batch Size: ");
  BYTE5(v15._object) = 0;
  HIWORD(v15._object) = -5120;
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v6 = v5._object;
  String.append(_:)(v5);
  v6;
  v4._countAndFlagsBits = 10;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  String.append(_:)(v15);
  v15._object;
  _StringGuts.grow(_:)(27);
  0;
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v8 = v7._object;
  String.append(_:)(v7);
  v8;
  v4._countAndFlagsBits = 10;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v4._countAndFlagsBits = 0xD000000000000018;
  v4._object = "Maximum Iterations: " + 0x8000000000000000;
  String.append(_:)(v4);
  ("Maximum Iterations: " + 0x8000000000000000);
  _StringGuts.grow(_:)(22);
  0;
  v15._countAndFlagsBits = 0xD000000000000013;
  v15._object = "Prediction Window Time: " + 0x8000000000000000;
  v9._countAndFlagsBits = Double.description.getter(*(v0 + *(v1 + 40)));
  v10 = v9._object;
  String.append(_:)(v9);
  v10;
  v4._countAndFlagsBits = 10;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v4._countAndFlagsBits = 0xD000000000000013;
  v11._object = "Prediction Window Time: " + 0x8000000000000000;
  String.append(_:)(v11);
  ("Prediction Window Time: " + 0x8000000000000000);
  _StringGuts.grow(_:)(25);
  0;
  v15._countAndFlagsBits = 0xD000000000000016;
  v15._object = "Target Frame Rate: " + 0x8000000000000000;
  v11._countAndFlagsBits = 0x746E6F7A69726F48;
  if (*(v0 + *(v1 + 32)) != 1)
  {
    v11._countAndFlagsBits = 0;
  }

  v12 = 0xEF70696C46206C61;
  if (*(v0 + *(v1 + 32)) != 1)
  {
    v12 = 0xE000000000000000;
  }

  v11._object = v12;
  String.append(_:)(v11);
  v12;
  v13._countAndFlagsBits = 10;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  String.append(_:)(v15);
  v15._object;
  v13._object = "ization for CoreML. Found: " + 0x8000000000000000;
  v13._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v13);
  return 0xD000000000000014;
}

uint64_t outlined init with copy of MLActionClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined assign with take of MLActionClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 40))(a2, a1, v2);
  return a2;
}

unint64_t MLActionClassifier.ModelParameters.playgroundDescription.getter()
{
  v1 = v0;
  result = MLActionClassifier.ModelParameters.description.getter();
  v1[3] = &type metadata for String;
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t lazy protocol witness table accessor for type MLActionClassifier.ModelParameters.ModelAlgorithmType and conformance MLActionClassifier.ModelParameters.ModelAlgorithmType()
{
  result = lazy protocol witness table cache variable for type MLActionClassifier.ModelParameters.ModelAlgorithmType and conformance MLActionClassifier.ModelParameters.ModelAlgorithmType;
  if (!lazy protocol witness table cache variable for type MLActionClassifier.ModelParameters.ModelAlgorithmType and conformance MLActionClassifier.ModelParameters.ModelAlgorithmType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLActionClassifier.ModelParameters.ModelAlgorithmType, &type metadata for MLActionClassifier.ModelParameters.ModelAlgorithmType);
    lazy protocol witness table cache variable for type MLActionClassifier.ModelParameters.ModelAlgorithmType and conformance MLActionClassifier.ModelParameters.ModelAlgorithmType = result;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for MLActionClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  v4 = __dst;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v16 = *__src;
    *v4 = *__src;
    v4 = (v16 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(__src, v7) == 1)
    {
      v8 = type metadata accessor for MLActionClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(__src, v8))
      {
        case 0u:
          v35 = type metadata accessor for URL(0);
          v38 = *(*(v35 - 8) + 16);
          v38(__dst, __src, v35);
          v36 = v8;
          v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v38(&__dst[v9[12]], &__src[v9[12]], v35);
          v10 = v9[16];
          *&__dst[v10] = *&__src[v10];
          *&__dst[v10 + 8] = *&__src[v10 + 8];
          v11 = v9[20];
          *&__dst[v11] = *&__src[v11];
          *&__dst[v11 + 8] = *&__src[v11 + 8];
          v12 = v9[24];
          *&__dst[v12] = *&__src[v12];
          *&__dst[v12 + 8] = *&__src[v12 + 8];
          v13 = v9[28];
          *&__dst[v13] = *&__src[v13];
          *&__dst[v13 + 8] = *&__src[v13 + 8];

          v14 = v36;
          v15 = 0;
          goto LABEL_15;
        case 1u:
          v20 = type metadata accessor for URL(0);
          (*(*(v20 - 8) + 16))(__dst, __src, v20);
          v34 = 1;
          goto LABEL_11;
        case 2u:
          v18 = type metadata accessor for URL(0);
          (*(*(v18 - 8) + 16))(__dst, __src, v18);
          v34 = 2;
LABEL_11:
          v15 = v34;
          v14 = v8;
          goto LABEL_15;
        case 3u:
          v37 = v8;
          v19 = *__src;
          v40 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v40);
          *__dst = v19;
          __dst[8] = v40;
          *(__dst + 2) = *(__src + 2);
          *(__dst + 3) = *(__src + 3);
          *(__dst + 4) = *(__src + 4);
          *(__dst + 5) = *(__src + 5);
          *(__dst + 6) = *(__src + 6);
          *(__dst + 7) = *(__src + 7);

          v33 = 3;
          goto LABEL_14;
        case 4u:
          v37 = v8;
          v17 = *__src;
          v39 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v39);
          *__dst = v17;
          __dst[8] = v39;
          *(__dst + 2) = *(__src + 2);
          *(__dst + 3) = *(__src + 3);
          *(__dst + 4) = *(__src + 4);
          *(__dst + 5) = *(__src + 5);
          *(__dst + 6) = *(__src + 6);
          *(__dst + 7) = *(__src + 7);
          *(__dst + 8) = *(__src + 8);
          *(__dst + 9) = *(__src + 9);

          v33 = 4;
          goto LABEL_14;
        case 5u:
          v21 = type metadata accessor for DataFrame(0);
          (*(*(v21 - 8) + 16))(__dst, __src, v21);
          v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v23 = v22[12];
          *&__dst[v23] = *&__src[v23];
          *&__dst[v23 + 8] = *&__src[v23 + 8];
          v24 = v22[16];
          *&__dst[v24] = *&__src[v24];
          *&__dst[v24 + 8] = *&__src[v24 + 8];
          v25 = v22[20];
          *&__dst[v25] = *&__src[v25];
          v37 = v8;
          *&__dst[v25 + 8] = *&__src[v25 + 8];

          v33 = 5;
          goto LABEL_14;
        case 6u:
          v26 = type metadata accessor for DataFrame(0);
          (*(*(v26 - 8) + 16))(__dst, __src, v26);
          v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v28 = v27[12];
          *&__dst[v28] = *&__src[v28];
          *&__dst[v28 + 8] = *&__src[v28 + 8];
          v29 = v27[16];
          *&__dst[v29] = *&__src[v29];
          *&__dst[v29 + 8] = *&__src[v29 + 8];
          v30 = v27[20];
          *&__dst[v30] = *&__src[v30];
          *&__dst[v30 + 8] = *&__src[v30 + 8];
          v31 = v27[24];
          *&__dst[v31] = *&__src[v31];
          v37 = v8;
          *&__dst[v31 + 8] = *&__src[v31 + 8];

          v33 = 6;
LABEL_14:
          v15 = v33;
          v14 = v37;
LABEL_15:
          swift_storeEnumTagMultiPayload(__dst, v14, v15);
          swift_storeEnumTagMultiPayload(__dst, v7, 1);
          break;
        case 7u:
          JUMPOUT(0x25BC4CLL);
      }
    }

    else
    {
      memcpy(__dst, __src, *(*(v7 - 8) + 64));
    }

    *&__dst[a3[5]] = *&__src[a3[5]];
    *&__dst[a3[6]] = *&__src[a3[6]];
    *&__dst[a3[7]] = *&__src[a3[7]];
    *&__dst[a3[8]] = *&__src[a3[8]];
    *&__dst[a3[10]] = *&__src[a3[10]];
  }

  return v4;
}

uint64_t destroy for MLActionClassifier.ModelParameters(uint64_t a1)
{
  v1 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  result = swift_getEnumCaseMultiPayload(a1, v1);
  if (result == 1)
  {
    v3 = type metadata accessor for MLActionClassifier.DataSource(0);
    result = swift_getEnumCaseMultiPayload(a1, v3);
    switch(result)
    {
      case 0:
        v5 = type metadata accessor for URL(0);
        v6 = *(*(v5 - 8) + 8);
        v6(a1, v5);
        v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v6(a1 + v7[12], v5);
        *(a1 + v7[16] + 8);
        *(a1 + v7[20] + 8);
        *(a1 + v7[24] + 8);
        v8 = v7[28];
        goto LABEL_10;
      case 1:
      case 2:
        v4 = type metadata accessor for URL(0);
        return (*(*(v4 - 8) + 8))(a1, v4);
      case 3:
        outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
        *(a1 + 24);
        *(a1 + 40);
        return *(a1 + 56);
      case 4:
        outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
        *(a1 + 24);
        *(a1 + 40);
        *(a1 + 56);
        return *(a1 + 72);
      case 5:
        v9 = type metadata accessor for DataFrame(0);
        (*(*(v9 - 8) + 8))(a1, v9);
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *(a1 + v10[12] + 8);
        *(a1 + v10[16] + 8);
        v8 = v10[20];
        goto LABEL_10;
      case 6:
        v11 = type metadata accessor for DataFrame(0);
        (*(*(v11 - 8) + 8))(a1, v11);
        v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *(a1 + v12[12] + 8);
        *(a1 + v12[16] + 8);
        *(a1 + v12[20] + 8);
        v8 = v12[24];
LABEL_10:
        result = *(a1 + v8 + 8);
        break;
      default:
        return result;
    }
  }

  return result;
}

char *initializeWithCopy for MLActionClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  v5 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(__src, v5) == 1)
  {
    v6 = type metadata accessor for MLActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(__src, v6))
    {
      case 0u:
        v32 = type metadata accessor for URL(0);
        v35 = *(*(v32 - 8) + 16);
        v35(__dst, __src, v32);
        v33 = v6;
        v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v35(&__dst[v7[12]], &__src[v7[12]], v32);
        v8 = v7[16];
        *&__dst[v8] = *&__src[v8];
        *&__dst[v8 + 8] = *&__src[v8 + 8];
        v9 = v7[20];
        *&__dst[v9] = *&__src[v9];
        *&__dst[v9 + 8] = *&__src[v9 + 8];
        v10 = v7[24];
        *&__dst[v10] = *&__src[v10];
        *&__dst[v10 + 8] = *&__src[v10 + 8];
        v11 = v7[28];
        *&__dst[v11] = *&__src[v11];
        *&__dst[v11 + 8] = *&__src[v11 + 8];

        v12 = v33;
        v13 = 0;
        goto LABEL_13;
      case 1u:
        v17 = type metadata accessor for URL(0);
        (*(*(v17 - 8) + 16))(__dst, __src, v17);
        v31 = 1;
        goto LABEL_9;
      case 2u:
        v15 = type metadata accessor for URL(0);
        (*(*(v15 - 8) + 16))(__dst, __src, v15);
        v31 = 2;
LABEL_9:
        v13 = v31;
        v12 = v6;
        goto LABEL_13;
      case 3u:
        v34 = v6;
        v16 = *__src;
        v37 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v37);
        *__dst = v16;
        __dst[8] = v37;
        *(__dst + 2) = *(__src + 2);
        *(__dst + 3) = *(__src + 3);
        *(__dst + 4) = *(__src + 4);
        *(__dst + 5) = *(__src + 5);
        *(__dst + 6) = *(__src + 6);
        *(__dst + 7) = *(__src + 7);

        v30 = 3;
        goto LABEL_12;
      case 4u:
        v34 = v6;
        v14 = *__src;
        v36 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v36);
        *__dst = v14;
        __dst[8] = v36;
        *(__dst + 2) = *(__src + 2);
        *(__dst + 3) = *(__src + 3);
        *(__dst + 4) = *(__src + 4);
        *(__dst + 5) = *(__src + 5);
        *(__dst + 6) = *(__src + 6);
        *(__dst + 7) = *(__src + 7);
        *(__dst + 8) = *(__src + 8);
        *(__dst + 9) = *(__src + 9);

        v30 = 4;
        goto LABEL_12;
      case 5u:
        v18 = type metadata accessor for DataFrame(0);
        (*(*(v18 - 8) + 16))(__dst, __src, v18);
        v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v20 = v19[12];
        *&__dst[v20] = *&__src[v20];
        *&__dst[v20 + 8] = *&__src[v20 + 8];
        v21 = v19[16];
        *&__dst[v21] = *&__src[v21];
        *&__dst[v21 + 8] = *&__src[v21 + 8];
        v22 = v19[20];
        *&__dst[v22] = *&__src[v22];
        v34 = v6;
        *&__dst[v22 + 8] = *&__src[v22 + 8];

        v30 = 5;
        goto LABEL_12;
      case 6u:
        v23 = type metadata accessor for DataFrame(0);
        (*(*(v23 - 8) + 16))(__dst, __src, v23);
        v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v25 = v24[12];
        *&__dst[v25] = *&__src[v25];
        *&__dst[v25 + 8] = *&__src[v25 + 8];
        v26 = v24[16];
        *&__dst[v26] = *&__src[v26];
        *&__dst[v26 + 8] = *&__src[v26 + 8];
        v27 = v24[20];
        *&__dst[v27] = *&__src[v27];
        *&__dst[v27 + 8] = *&__src[v27 + 8];
        v28 = v24[24];
        *&__dst[v28] = *&__src[v28];
        v34 = v6;
        *&__dst[v28 + 8] = *&__src[v28 + 8];

        v30 = 6;
LABEL_12:
        v13 = v30;
        v12 = v34;
LABEL_13:
        swift_storeEnumTagMultiPayload(__dst, v12, v13);
        swift_storeEnumTagMultiPayload(__dst, v5, 1);
        break;
    }
  }

  else
  {
    memcpy(__dst, __src, *(*(v5 - 8) + 64));
  }

  *&__dst[a3[5]] = *&__src[a3[5]];
  *&__dst[a3[6]] = *&__src[a3[6]];
  *&__dst[a3[7]] = *&__src[a3[7]];
  *&__dst[a3[8]] = *&__src[a3[8]];
  *&__dst[a3[10]] = *&__src[a3[10]];
  return __dst;
}

char *assignWithCopy for MLActionClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLImageClassifier.ModelParameters.ValidationData(__dst, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
    v4 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(__src, v4) == 1)
    {
      v5 = type metadata accessor for MLActionClassifier.DataSource(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v5);
      switch(EnumCaseMultiPayload)
      {
        case 0u:
          v26 = type metadata accessor for URL(0);
          v31 = *(*(v26 - 8) + 16);
          v31(__dst, __src, v26);
          v28 = v5;
          v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v31(&__dst[v8[12]], &__src[v8[12]], v26);
          v9 = v8[16];
          *&__dst[v9] = *&__src[v9];
          *&__dst[v9 + 8] = *&__src[v9 + 8];
          v10 = v8[20];
          *&__dst[v10] = *&__src[v10];
          *&__dst[v10 + 8] = *&__src[v10 + 8];
          v11 = v8[24];
          *&__dst[v11] = *&__src[v11];
          *&__dst[v11 + 8] = *&__src[v11 + 8];
          v12 = v8[28];
          *&__dst[v12] = *&__src[v12];
          goto LABEL_11;
        case 1u:
        case 2u:
          v6 = type metadata accessor for URL(0);
          (*(*(v6 - 8) + 16))(__dst, __src, v6);
          goto LABEL_14;
        case 3u:
          v29 = v5;
          v13 = *__src;
          v32 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v32);
          *__dst = v13;
          __dst[8] = v32;
          *(__dst + 2) = *(__src + 2);
          *(__dst + 3) = *(__src + 3);
          *(__dst + 4) = *(__src + 4);
          *(__dst + 5) = *(__src + 5);
          *(__dst + 6) = *(__src + 6);
          *(__dst + 7) = *(__src + 7);

          v5 = v29;

          goto LABEL_13;
        case 4u:
          v27 = v5;
          v7 = *__src;
          v30 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v30);
          *__dst = v7;
          __dst[8] = v30;
          *(__dst + 2) = *(__src + 2);
          *(__dst + 3) = *(__src + 3);
          *(__dst + 4) = *(__src + 4);
          *(__dst + 5) = *(__src + 5);
          *(__dst + 6) = *(__src + 6);
          *(__dst + 7) = *(__src + 7);
          *(__dst + 8) = *(__src + 8);
          *(__dst + 9) = *(__src + 9);

          v5 = v27;

          goto LABEL_13;
        case 5u:
          v14 = type metadata accessor for DataFrame(0);
          (*(*(v14 - 8) + 16))(__dst, __src, v14);
          v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v16 = v15[12];
          *&__dst[v16] = *&__src[v16];
          *&__dst[v16 + 8] = *&__src[v16 + 8];
          v17 = v15[16];
          *&__dst[v17] = *&__src[v17];
          *&__dst[v17 + 8] = *&__src[v17 + 8];
          v18 = v15[20];
          *&__dst[v18] = *&__src[v18];
          v28 = v5;
          *&__dst[v18 + 8] = *&__src[v18 + 8];

          goto LABEL_12;
        case 6u:
          v19 = type metadata accessor for DataFrame(0);
          (*(*(v19 - 8) + 16))(__dst, __src, v19);
          v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v21 = v20[12];
          *&__dst[v21] = *&__src[v21];
          *&__dst[v21 + 8] = *&__src[v21 + 8];
          v22 = v20[16];
          *&__dst[v22] = *&__src[v22];
          *&__dst[v22 + 8] = *&__src[v22 + 8];
          v23 = v20[20];
          *&__dst[v23] = *&__src[v23];
          *&__dst[v23 + 8] = *&__src[v23 + 8];
          v12 = v20[24];
          *&__dst[v12] = *&__src[v12];
          v28 = v5;
LABEL_11:
          *&__dst[v12 + 8] = *&__src[v12 + 8];

LABEL_12:

          v5 = v28;
LABEL_13:

LABEL_14:
          swift_storeEnumTagMultiPayload(__dst, v5, EnumCaseMultiPayload);
          swift_storeEnumTagMultiPayload(__dst, v4, 1);
          break;
      }
    }

    else
    {
      memcpy(__dst, __src, *(*(v4 - 8) + 64));
    }
  }

  *&__dst[a3[5]] = *&__src[a3[5]];
  *&__dst[a3[6]] = *&__src[a3[6]];
  *&__dst[a3[7]] = *&__src[a3[7]];
  *&__dst[a3[8]] = *&__src[a3[8]];
  *&__dst[a3[10]] = *&__src[a3[10]];
  return __dst;
}

char *initializeWithTake for MLActionClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  v5 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(__src, v5) == 1)
  {
    v6 = type metadata accessor for MLActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(__src, v6))
    {
      case 0u:
        v19 = type metadata accessor for URL(0);
        v20 = *(*(v19 - 8) + 32);
        v20(__dst, __src, v19);
        v18 = v6;
        v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v20(&__dst[v7[12]], &__src[v7[12]], v19);
        *&__dst[v7[16]] = *&__src[v7[16]];
        *&__dst[v7[20]] = *&__src[v7[20]];
        *&__dst[v7[24]] = *&__src[v7[24]];
        *&__dst[v7[28]] = *&__src[v7[28]];
        v8 = v18;
        v9 = 0;
        goto LABEL_11;
      case 1u:
        v11 = type metadata accessor for URL(0);
        (*(*(v11 - 8) + 32))(__dst, __src, v11);
        v17 = 1;
        goto LABEL_10;
      case 2u:
        v10 = type metadata accessor for URL(0);
        (*(*(v10 - 8) + 32))(__dst, __src, v10);
        v17 = 2;
        goto LABEL_10;
      case 5u:
        v12 = type metadata accessor for DataFrame(0);
        (*(*(v12 - 8) + 32))(__dst, __src, v12);
        v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *&__dst[v13[12]] = *&__src[v13[12]];
        *&__dst[v13[16]] = *&__src[v13[16]];
        *&__dst[v13[20]] = *&__src[v13[20]];
        v17 = 5;
        goto LABEL_10;
      case 6u:
        v14 = type metadata accessor for DataFrame(0);
        (*(*(v14 - 8) + 32))(__dst, __src, v14);
        v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *&__dst[v15[12]] = *&__src[v15[12]];
        *&__dst[v15[16]] = *&__src[v15[16]];
        *&__dst[v15[20]] = *&__src[v15[20]];
        *&__dst[v15[24]] = *&__src[v15[24]];
        v17 = 6;
LABEL_10:
        v9 = v17;
        v8 = v6;
LABEL_11:
        swift_storeEnumTagMultiPayload(__dst, v8, v9);
        break;
      default:
        memcpy(__dst, __src, *(*(v6 - 8) + 64));
        break;
    }

    swift_storeEnumTagMultiPayload(__dst, v5, 1);
  }

  else
  {
    memcpy(__dst, __src, *(*(v5 - 8) + 64));
  }

  *&__dst[a3[5]] = *&__src[a3[5]];
  *&__dst[a3[6]] = *&__src[a3[6]];
  *&__dst[a3[7]] = *&__src[a3[7]];
  *&__dst[a3[8]] = *&__src[a3[8]];
  *&__dst[a3[10]] = *&__src[a3[10]];
  return __dst;
}

char *assignWithTake for MLActionClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLImageClassifier.ModelParameters.ValidationData(__dst, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
    v5 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(__src, v5) == 1)
    {
      v6 = type metadata accessor for MLActionClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(__src, v6))
      {
        case 0u:
          v19 = type metadata accessor for URL(0);
          v20 = *(*(v19 - 8) + 32);
          v20(__dst, __src, v19);
          v18 = v6;
          v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v20(&__dst[v7[12]], &__src[v7[12]], v19);
          *&__dst[v7[16]] = *&__src[v7[16]];
          *&__dst[v7[20]] = *&__src[v7[20]];
          *&__dst[v7[24]] = *&__src[v7[24]];
          *&__dst[v7[28]] = *&__src[v7[28]];
          v8 = v18;
          v9 = 0;
          goto LABEL_12;
        case 1u:
          v11 = type metadata accessor for URL(0);
          (*(*(v11 - 8) + 32))(__dst, __src, v11);
          v17 = 1;
          goto LABEL_11;
        case 2u:
          v10 = type metadata accessor for URL(0);
          (*(*(v10 - 8) + 32))(__dst, __src, v10);
          v17 = 2;
          goto LABEL_11;
        case 5u:
          v12 = type metadata accessor for DataFrame(0);
          (*(*(v12 - 8) + 32))(__dst, __src, v12);
          v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          *&__dst[v13[12]] = *&__src[v13[12]];
          *&__dst[v13[16]] = *&__src[v13[16]];
          *&__dst[v13[20]] = *&__src[v13[20]];
          v17 = 5;
          goto LABEL_11;
        case 6u:
          v14 = type metadata accessor for DataFrame(0);
          (*(*(v14 - 8) + 32))(__dst, __src, v14);
          v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          *&__dst[v15[12]] = *&__src[v15[12]];
          *&__dst[v15[16]] = *&__src[v15[16]];
          *&__dst[v15[20]] = *&__src[v15[20]];
          *&__dst[v15[24]] = *&__src[v15[24]];
          v17 = 6;
LABEL_11:
          v9 = v17;
          v8 = v6;
LABEL_12:
          swift_storeEnumTagMultiPayload(__dst, v8, v9);
          break;
        default:
          memcpy(__dst, __src, *(*(v6 - 8) + 64));
          break;
      }

      swift_storeEnumTagMultiPayload(__dst, v5, 1);
    }

    else
    {
      memcpy(__dst, __src, *(*(v5 - 8) + 64));
    }
  }

  *&__dst[a3[5]] = *&__src[a3[5]];
  *&__dst[a3[6]] = *&__src[a3[6]];
  *&__dst[a3[7]] = *&__src[a3[7]];
  *&__dst[a3[8]] = *&__src[a3[8]];
  *&__dst[a3[10]] = *&__src[a3[10]];
  return __dst;
}

uint64_t type metadata completion function for MLActionClassifier.ModelParameters(uint64_t a1)
{
  result = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(319);
  if (v2 <= 0x3F)
  {
    v3[0] = *(result - 8) + 64;
    v3[1] = &value witness table for Builtin.Int64 + 64;
    v3[2] = &value witness table for Builtin.Int64 + 64;
    v3[3] = &value witness table for Builtin.Int64 + 64;
    v3[4] = &value witness table for Builtin.Int64 + 64;
    v3[5] = &value witness table for () + 64;
    v3[6] = &value witness table for Builtin.Int64 + 64;
    swift_initStructMetadata(a1, 256, 7, v3, a1 + 16);
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for MLActionClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v16 = *__src;
    *v3 = *__src;
    v3 = (v16 + ((v5 + 16) & ~v5));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
    {
      return memcpy(__dst, __src, *(v4 + 64));
    }

    v7 = type metadata accessor for MLActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(__src, v7))
    {
      case 0u:
        v38 = v7;
        v8 = type metadata accessor for URL(0);
        v37 = *(*(v8 - 8) + 16);
        v37(__dst, __src, v8);
        v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v37(&__dst[v9[12]], &__src[v9[12]], v8);
        v10 = v9[16];
        *&__dst[v10] = *&__src[v10];
        *&__dst[v10 + 8] = *&__src[v10 + 8];
        v11 = v9[20];
        *&__dst[v11] = *&__src[v11];
        *&__dst[v11 + 8] = *&__src[v11 + 8];
        v12 = v9[24];
        *&__dst[v12] = *&__src[v12];
        *&__dst[v12 + 8] = *&__src[v12 + 8];
        v13 = v9[28];
        *&__dst[v13] = *&__src[v13];
        *&__dst[v13 + 8] = *&__src[v13 + 8];

        v14 = v38;
        v15 = 0;
        break;
      case 1u:
        v23 = type metadata accessor for URL(0);
        (*(*(v23 - 8) + 16))(__dst, __src, v23);
        v36 = 1;
        goto LABEL_12;
      case 2u:
        v20 = type metadata accessor for URL(0);
        (*(*(v20 - 8) + 16))(__dst, __src, v20);
        v36 = 2;
        goto LABEL_12;
      case 3u:
        v21 = *__src;
        v39 = v7;
        v22 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v22);
        *__dst = v21;
        __dst[8] = v22;
        *(__dst + 2) = *(__src + 2);
        *(__dst + 3) = *(__src + 3);
        *(__dst + 4) = *(__src + 4);
        *(__dst + 5) = *(__src + 5);
        *(__dst + 6) = *(__src + 6);
        *(__dst + 7) = *(__src + 7);

        v35 = 3;
        goto LABEL_14;
      case 4u:
        v18 = *__src;
        v39 = v7;
        v19 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v19);
        *__dst = v18;
        __dst[8] = v19;
        *(__dst + 2) = *(__src + 2);
        *(__dst + 3) = *(__src + 3);
        *(__dst + 4) = *(__src + 4);
        *(__dst + 5) = *(__src + 5);
        *(__dst + 6) = *(__src + 6);
        *(__dst + 7) = *(__src + 7);
        *(__dst + 8) = *(__src + 8);
        *(__dst + 9) = *(__src + 9);

        v35 = 4;
        goto LABEL_14;
      case 5u:
        v24 = type metadata accessor for DataFrame(0);
        (*(*(v24 - 8) + 16))(__dst, __src, v24);
        v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v26 = v25[12];
        *&__dst[v26] = *&__src[v26];
        *&__dst[v26 + 8] = *&__src[v26 + 8];
        v27 = v25[16];
        *&__dst[v27] = *&__src[v27];
        *&__dst[v27 + 8] = *&__src[v27 + 8];
        v28 = v25[20];
        *&__dst[v28] = *&__src[v28];
        *&__dst[v28 + 8] = *&__src[v28 + 8];

        v36 = 5;
LABEL_12:
        v15 = v36;
        v14 = v7;
        break;
      case 6u:
        v29 = type metadata accessor for DataFrame(0);
        (*(*(v29 - 8) + 16))(__dst, __src, v29);
        v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v31 = v30[12];
        *&__dst[v31] = *&__src[v31];
        *&__dst[v31 + 8] = *&__src[v31 + 8];
        v32 = v30[16];
        *&__dst[v32] = *&__src[v32];
        *&__dst[v32 + 8] = *&__src[v32 + 8];
        v33 = v30[20];
        *&__dst[v33] = *&__src[v33];
        v39 = v7;
        *&__dst[v33 + 8] = *&__src[v33 + 8];
        v34 = v30[24];
        *&__dst[v34] = *&__src[v34];
        *&__dst[v34 + 8] = *&__src[v34 + 8];

        v35 = 6;
LABEL_14:
        v15 = v35;
        v14 = v39;
        break;
    }

    swift_storeEnumTagMultiPayload(__dst, v14, v15);
    swift_storeEnumTagMultiPayload(__dst, a3, 1);
  }

  return v3;
}

uint64_t destroy for MLActionClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  if (result == 1)
  {
    v3 = type metadata accessor for MLActionClassifier.DataSource(0);
    result = swift_getEnumCaseMultiPayload(a1, v3);
    switch(result)
    {
      case 0:
        v5 = type metadata accessor for URL(0);
        v6 = *(*(v5 - 8) + 8);
        v6(a1, v5);
        v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v6(a1 + v7[12], v5);
        *(a1 + v7[16] + 8);
        *(a1 + v7[20] + 8);
        *(a1 + v7[24] + 8);
        v8 = v7[28];
        goto LABEL_10;
      case 1:
      case 2:
        v4 = type metadata accessor for URL(0);
        return (*(*(v4 - 8) + 8))(a1, v4);
      case 3:
        outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
        *(a1 + 24);
        *(a1 + 40);
        return *(a1 + 56);
      case 4:
        outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
        *(a1 + 24);
        *(a1 + 40);
        *(a1 + 56);
        return *(a1 + 72);
      case 5:
        v9 = type metadata accessor for DataFrame(0);
        (*(*(v9 - 8) + 8))(a1, v9);
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *(a1 + v10[12] + 8);
        *(a1 + v10[16] + 8);
        v8 = v10[20];
        goto LABEL_10;
      case 6:
        v11 = type metadata accessor for DataFrame(0);
        (*(*(v11 - 8) + 8))(a1, v11);
        v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *(a1 + v12[12] + 8);
        *(a1 + v12[16] + 8);
        *(a1 + v12[20] + 8);
        v8 = v12[24];
LABEL_10:
        result = *(a1 + v8 + 8);
        break;
      default:
        return result;
    }
  }

  return result;
}

char *initializeWithCopy for MLActionClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for MLActionClassifier.DataSource(0);
  switch(swift_getEnumCaseMultiPayload(__src, v4))
  {
    case 0u:
      v34 = v4;
      v5 = type metadata accessor for URL(0);
      v33 = *(*(v5 - 8) + 16);
      v33(__dst, __src, v5);
      v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v33(&__dst[v6[12]], &__src[v6[12]], v5);
      v7 = v6[16];
      *&__dst[v7] = *&__src[v7];
      *&__dst[v7 + 8] = *&__src[v7 + 8];
      v8 = v6[20];
      *&__dst[v8] = *&__src[v8];
      *&__dst[v8 + 8] = *&__src[v8 + 8];
      v9 = v6[24];
      *&__dst[v9] = *&__src[v9];
      *&__dst[v9 + 8] = *&__src[v9 + 8];
      v10 = v6[28];
      *&__dst[v10] = *&__src[v10];
      *&__dst[v10 + 8] = *&__src[v10 + 8];

      v11 = v34;
      v12 = 0;
      break;
    case 1u:
      v19 = type metadata accessor for URL(0);
      (*(*(v19 - 8) + 16))(__dst, __src, v19);
      v32 = 1;
      goto LABEL_10;
    case 2u:
      v16 = type metadata accessor for URL(0);
      (*(*(v16 - 8) + 16))(__dst, __src, v16);
      v32 = 2;
      goto LABEL_10;
    case 3u:
      v17 = *__src;
      v35 = v4;
      v18 = __src[8];
      outlined copy of Result<_DataTable, Error>(*__src, v18);
      *__dst = v17;
      __dst[8] = v18;
      *(__dst + 2) = *(__src + 2);
      *(__dst + 3) = *(__src + 3);
      *(__dst + 4) = *(__src + 4);
      *(__dst + 5) = *(__src + 5);
      *(__dst + 6) = *(__src + 6);
      *(__dst + 7) = *(__src + 7);

      v31 = 3;
      goto LABEL_12;
    case 4u:
      v14 = *__src;
      v35 = v4;
      v15 = __src[8];
      outlined copy of Result<_DataTable, Error>(*__src, v15);
      *__dst = v14;
      __dst[8] = v15;
      *(__dst + 2) = *(__src + 2);
      *(__dst + 3) = *(__src + 3);
      *(__dst + 4) = *(__src + 4);
      *(__dst + 5) = *(__src + 5);
      *(__dst + 6) = *(__src + 6);
      *(__dst + 7) = *(__src + 7);
      *(__dst + 8) = *(__src + 8);
      *(__dst + 9) = *(__src + 9);

      v31 = 4;
      goto LABEL_12;
    case 5u:
      v20 = type metadata accessor for DataFrame(0);
      (*(*(v20 - 8) + 16))(__dst, __src, v20);
      v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      v22 = v21[12];
      *&__dst[v22] = *&__src[v22];
      *&__dst[v22 + 8] = *&__src[v22 + 8];
      v23 = v21[16];
      *&__dst[v23] = *&__src[v23];
      *&__dst[v23 + 8] = *&__src[v23 + 8];
      v24 = v21[20];
      *&__dst[v24] = *&__src[v24];
      *&__dst[v24 + 8] = *&__src[v24 + 8];

      v32 = 5;
LABEL_10:
      v12 = v32;
      v11 = v4;
      break;
    case 6u:
      v25 = type metadata accessor for DataFrame(0);
      (*(*(v25 - 8) + 16))(__dst, __src, v25);
      v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v27 = v26[12];
      *&__dst[v27] = *&__src[v27];
      *&__dst[v27 + 8] = *&__src[v27 + 8];
      v28 = v26[16];
      *&__dst[v28] = *&__src[v28];
      *&__dst[v28 + 8] = *&__src[v28 + 8];
      v29 = v26[20];
      *&__dst[v29] = *&__src[v29];
      v35 = v4;
      *&__dst[v29 + 8] = *&__src[v29 + 8];
      v30 = v26[24];
      *&__dst[v30] = *&__src[v30];
      *&__dst[v30 + 8] = *&__src[v30 + 8];

      v31 = 6;
LABEL_12:
      v12 = v31;
      v11 = v35;
      break;
  }

  swift_storeEnumTagMultiPayload(__dst, v11, v12);
  swift_storeEnumTagMultiPayload(__dst, a3, 1);
  return __dst;
}

char *assignWithCopy for MLActionClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLImageClassifier.ModelParameters.ValidationData(__dst, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
    if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
    {
      return memcpy(__dst, __src, *(*(a3 - 8) + 64));
    }

    v4 = type metadata accessor for MLActionClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v4);
    switch(EnumCaseMultiPayload)
    {
      case 0u:
        v31 = v4;
        v29 = type metadata accessor for URL(0);
        v10 = *(*(v29 - 8) + 16);
        v10(__dst, __src, v29);
        v33 = EnumCaseMultiPayload;
        v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v10(&__dst[v11[12]], &__src[v11[12]], v29);
        v12 = v11[16];
        *&__dst[v12] = *&__src[v12];
        *&__dst[v12 + 8] = *&__src[v12 + 8];
        v13 = v11[20];
        *&__dst[v13] = *&__src[v13];
        *&__dst[v13 + 8] = *&__src[v13 + 8];
        v14 = v11[24];
        *&__dst[v14] = *&__src[v14];
        *&__dst[v14 + 8] = *&__src[v14 + 8];
        v15 = v11[28];
        *&__dst[v15] = *&__src[v15];
        *&__dst[v15 + 8] = *&__src[v15 + 8];

        goto LABEL_10;
      case 1u:
      case 2u:
        v6 = type metadata accessor for URL(0);
        (*(*(v6 - 8) + 16))(__dst, __src, v6);
        goto LABEL_14;
      case 3u:
        v31 = v4;
        v16 = *__src;
        v33 = EnumCaseMultiPayload;
        v17 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v17);
        *__dst = v16;
        __dst[8] = v17;
        *(__dst + 2) = *(__src + 2);
        *(__dst + 3) = *(__src + 3);
        *(__dst + 4) = *(__src + 4);
        *(__dst + 5) = *(__src + 5);
        *(__dst + 6) = *(__src + 6);
        *(__dst + 7) = *(__src + 7);
        goto LABEL_10;
      case 4u:
        v30 = v4;
        v8 = *__src;
        v32 = EnumCaseMultiPayload;
        v9 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v9);
        *__dst = v8;
        __dst[8] = v9;
        *(__dst + 2) = *(__src + 2);
        *(__dst + 3) = *(__src + 3);
        *(__dst + 4) = *(__src + 4);
        *(__dst + 5) = *(__src + 5);
        *(__dst + 6) = *(__src + 6);
        *(__dst + 7) = *(__src + 7);
        *(__dst + 8) = *(__src + 8);
        *(__dst + 9) = *(__src + 9);
        goto LABEL_12;
      case 5u:
        v18 = type metadata accessor for DataFrame(0);
        (*(*(v18 - 8) + 16))(__dst, __src, v18);
        v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v20 = v19[12];
        *&__dst[v20] = *&__src[v20];
        *&__dst[v20 + 8] = *&__src[v20 + 8];
        v21 = v19[16];
        *&__dst[v21] = *&__src[v21];
        v31 = v4;
        *&__dst[v21 + 8] = *&__src[v21 + 8];
        v22 = v19[20];
        *&__dst[v22] = *&__src[v22];
        v33 = EnumCaseMultiPayload;
        *&__dst[v22 + 8] = *&__src[v22 + 8];
LABEL_10:

        v4 = v31;

        EnumCaseMultiPayload = v33;
        break;
      case 6u:
        v23 = type metadata accessor for DataFrame(0);
        (*(*(v23 - 8) + 16))(__dst, __src, v23);
        v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v25 = v24[12];
        *&__dst[v25] = *&__src[v25];
        *&__dst[v25 + 8] = *&__src[v25 + 8];
        v26 = v24[16];
        *&__dst[v26] = *&__src[v26];
        v30 = v4;
        *&__dst[v26 + 8] = *&__src[v26 + 8];
        v27 = v24[20];
        *&__dst[v27] = *&__src[v27];
        v32 = EnumCaseMultiPayload;
        *&__dst[v27 + 8] = *&__src[v27 + 8];
        v28 = v24[24];
        *&__dst[v28] = *&__src[v28];
        *&__dst[v28 + 8] = *&__src[v28 + 8];
LABEL_12:

        v4 = v30;

        EnumCaseMultiPayload = v32;

        break;
    }

LABEL_14:
    swift_storeEnumTagMultiPayload(__dst, v4, EnumCaseMultiPayload);
    swift_storeEnumTagMultiPayload(__dst, a3, 1);
  }

  return __dst;
}

char *initializeWithTake for MLActionClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for MLActionClassifier.DataSource(0);
  switch(swift_getEnumCaseMultiPayload(__src, v4))
  {
    case 0u:
      v16 = type metadata accessor for URL(0);
      v17 = *(*(v16 - 8) + 32);
      v17(__dst, __src, v16);
      v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v17(&__dst[v5[12]], &__src[v5[12]], v16);
      *&__dst[v5[16]] = *&__src[v5[16]];
      *&__dst[v5[20]] = *&__src[v5[20]];
      *&__dst[v5[24]] = *&__src[v5[24]];
      *&__dst[v5[28]] = *&__src[v5[28]];
      v6 = v4;
      v7 = 0;
      goto LABEL_11;
    case 1u:
      v10 = type metadata accessor for URL(0);
      (*(*(v10 - 8) + 32))(__dst, __src, v10);
      v15 = 1;
      goto LABEL_10;
    case 2u:
      v9 = type metadata accessor for URL(0);
      (*(*(v9 - 8) + 32))(__dst, __src, v9);
      v15 = 2;
      goto LABEL_10;
    case 5u:
      v11 = type metadata accessor for DataFrame(0);
      (*(*(v11 - 8) + 32))(__dst, __src, v11);
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *&__dst[v12[12]] = *&__src[v12[12]];
      *&__dst[v12[16]] = *&__src[v12[16]];
      *&__dst[v12[20]] = *&__src[v12[20]];
      v15 = 5;
      goto LABEL_10;
    case 6u:
      v13 = type metadata accessor for DataFrame(0);
      (*(*(v13 - 8) + 32))(__dst, __src, v13);
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      *&__dst[v14[12]] = *&__src[v14[12]];
      *&__dst[v14[16]] = *&__src[v14[16]];
      *&__dst[v14[20]] = *&__src[v14[20]];
      *&__dst[v14[24]] = *&__src[v14[24]];
      v15 = 6;
LABEL_10:
      v7 = v15;
      v6 = v4;
LABEL_11:
      swift_storeEnumTagMultiPayload(__dst, v6, v7);
      break;
    default:
      memcpy(__dst, __src, *(*(v4 - 8) + 64));
      break;
  }

  swift_storeEnumTagMultiPayload(__dst, a3, 1);
  return __dst;
}

char *assignWithTake for MLActionClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLImageClassifier.ModelParameters.ValidationData(__dst, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
    if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
    {
      return memcpy(__dst, __src, *(*(a3 - 8) + 64));
    }

    v4 = type metadata accessor for MLActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(__src, v4))
    {
      case 0u:
        v16 = type metadata accessor for URL(0);
        v17 = *(*(v16 - 8) + 32);
        v17(__dst, __src, v16);
        v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v17(&__dst[v5[12]], &__src[v5[12]], v16);
        *&__dst[v5[16]] = *&__src[v5[16]];
        *&__dst[v5[20]] = *&__src[v5[20]];
        *&__dst[v5[24]] = *&__src[v5[24]];
        *&__dst[v5[28]] = *&__src[v5[28]];
        v6 = v4;
        v7 = 0;
        goto LABEL_12;
      case 1u:
        v10 = type metadata accessor for URL(0);
        (*(*(v10 - 8) + 32))(__dst, __src, v10);
        v15 = 1;
        goto LABEL_11;
      case 2u:
        v9 = type metadata accessor for URL(0);
        (*(*(v9 - 8) + 32))(__dst, __src, v9);
        v15 = 2;
        goto LABEL_11;
      case 5u:
        v11 = type metadata accessor for DataFrame(0);
        (*(*(v11 - 8) + 32))(__dst, __src, v11);
        v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *&__dst[v12[12]] = *&__src[v12[12]];
        *&__dst[v12[16]] = *&__src[v12[16]];
        *&__dst[v12[20]] = *&__src[v12[20]];
        v15 = 5;
        goto LABEL_11;
      case 6u:
        v13 = type metadata accessor for DataFrame(0);
        (*(*(v13 - 8) + 32))(__dst, __src, v13);
        v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *&__dst[v14[12]] = *&__src[v14[12]];
        *&__dst[v14[16]] = *&__src[v14[16]];
        *&__dst[v14[20]] = *&__src[v14[20]];
        *&__dst[v14[24]] = *&__src[v14[24]];
        v15 = 6;
LABEL_11:
        v7 = v15;
        v6 = v4;
LABEL_12:
        swift_storeEnumTagMultiPayload(__dst, v6, v7);
        break;
      default:
        memcpy(__dst, __src, *(*(v4 - 8) + 64));
        break;
    }

    swift_storeEnumTagMultiPayload(__dst, a3, 1);
  }

  return __dst;
}

uint64_t type metadata completion function for MLActionClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  v5[0] = &unk_3476E8;
  result = type metadata accessor for MLActionClassifier.DataSource(319);
  if (v4 <= 0x3F)
  {
    v5[1] = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 2, v5, v2, v3);
    return 0;
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8NSNumberCG_Sis5NeverOTg5093_s14NeuralNetworks6TensorV8CreateMLE_6deviceACSo12MLMultiArrayC_AA13ComputeDeviceVSgtcfcSiSo8D55Ccfu1_33_5bdac5b40c7411f20a64c1277f8fd44fALSiTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  if ((a1 & 0x4000000000000001) != 0)
  {
    v12 = a1 & 0xFFFFFFFFFFFFF8;
    if (a1)
    {
      v12 = a1;
    }

    v2 = _CocoaArrayWrapper.endIndex.getter(v12);
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFF8));
  }

  if (v2)
  {
    v3 = 0;
    if (v2 > 0)
    {
      v3 = v2;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    if (v2 < 0)
    {
      BUG();
    }

    v4 = 0;
    for (i = 0; i != v2; v4 = i)
    {
      if (__OFADD__(1, i++))
      {
        BUG();
      }

      if ((a1 & 0xC000000000000003) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)(v4);
      }

      else
      {
        v7 = *(a1 + 8 * v4 + 32);
      }

      v8 = v7;
      v13 = [v7 integerValue];

      v9 = _swiftEmptyArrayStorage[2];
      v10 = v9 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v9)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v9 + 1, 1);
        v10 = v9 + 1;
      }

      _swiftEmptyArrayStorage[2] = v10;
      _swiftEmptyArrayStorage[v9 + 4] = v13;
    }
  }

  return _swiftEmptyArrayStorage;
}

void Tensor.init(_:device:)(id a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *(*(type metadata accessor for ScalarType(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v29 = v27;
  v10 = *(*(type metadata accessor for TensorShape(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v30 = v27;
  v13 = [a1 dataType];
  v14 = v13;
  v33 = a2;
  v27[1] = v3;
  v28 = v27;
  if (v13 == &loc_10020)
  {
LABEL_5:
    v26 = 4;
    goto LABEL_6;
  }

  if (v13 != &loc_1003C + 4)
  {
    if (v13 != &loc_2001D + 3)
    {
      if (v13 == &loc_1000E + 2)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000041, ("i-array data type" + 0x8000000000000000), "CreateML/_CoreML+NeuralNetworks.swift", 37, 2, 63, 0);
      }

      else
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000021, ("+NeuralNetworks.swift" + 0x8000000000000000), "CreateML/_CoreML+NeuralNetworks.swift", 37, 2, 72, 0);
      }

      BUG();
    }

    goto LABEL_5;
  }

  v26 = 8;
LABEL_6:
  v34 = v26;
  v31 = a1;
  v15 = [a1 shape];
  v16 = v15;
  v17 = type metadata accessor for NSNumber();
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v16, v17);

  MLE_6deviceACSo12MLMultiArrayC_AA13ComputeDeviceVSgtcfcSiSo8D55Ccfu1_33_5bdac5b40c7411f20a64c1277f8fd44fALSiTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8NSNumberCG_Sis5NeverOTg5093_s14NeuralNetworks6TensorV8CreateMLE_6deviceACSo12MLMultiArrayC_AA13ComputeDeviceVSgtcfcSiSo8D55Ccfu1_33_5bdac5b40c7411f20a64c1277f8fd44fALSiTf3nnnpk_nTf1cn_n(v18);
  v18;
  v20 = v30;
  TensorShape.init(_:)(MLE_6deviceACSo12MLMultiArrayC_AA13ComputeDeviceVSgtcfcSiSo8D55Ccfu1_33_5bdac5b40c7411f20a64c1277f8fd44fALSiTf3nnnpk_nTf1cn_n);
  v21 = v29;
  MLMultiArrayDataType.dataType.getter(v14);
  v22 = v28;
  outlined init with copy of ComputeDevice?(v33, v28);
  v32 = v27;
  v23 = alloca(32);
  v24 = alloca(32);
  v25 = v31;
  v28 = v31;
  v29 = v34;
  Tensor.init(unsafeUninitializedShape:scalarType:computeDevice:initializingWith:)(v20, v21, v22, partial apply for closure #1 in Tensor.init(_:device:));
  outlined destroy of ComputeDevice?(v33);
}

uint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    v1 = objc_opt_self(NSNumber);
    result = swift_getObjCClassMetadata(v1);
    lazy cache variable for type metadata for NSNumber = result;
  }

  return result;
}

uint64_t MLMultiArrayDataType.dataType.getter(char *a1)
{
  v2 = v1;
  if (a1 == &loc_1000E + 2)
  {
    v3 = &enum case for ScalarType.float16(_:);
  }

  else if (a1 == &loc_2001D + 3)
  {
    v3 = &enum case for ScalarType.int32(_:);
  }

  else if (a1 == &loc_1003C + 4)
  {
    v3 = &enum case for ScalarType.float64(_:);
  }

  else
  {
    if (a1 != &loc_10020)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000021, ("+NeuralNetworks.swift" + 0x8000000000000000), "CreateML/_CoreML+NeuralNetworks.swift", 37, 2, 20, 0);
      BUG();
    }

    v3 = &enum case for ScalarType.float32(_:);
  }

  v4 = *v3;
  v5 = type metadata accessor for ScalarType(0);
  return (*(*(v5 - 8) + 104))(v2, v4, v5);
}

uint64_t outlined init with copy of ComputeDevice?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

size_t closure #1 in Tensor.init(_:device:)(void *__dst, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = a3;
  v6 = [v5 dataPointer];
  v8 = [v5 count];
  result = a4 * v8;
  if (!is_mul_ok(a4, v8))
  {
    BUG();
  }

  if (__dst)
  {
    return memmove(__dst, v6, result);
  }

  return result;
}

uint64_t outlined destroy of ComputeDevice?(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t MLDataTable.subscript.getter(Swift::String a1)
{
  v3 = v1;
  if (v2[8])
  {
    swift_willThrow();
    _StringGuts.grow(_:)(34);
    0;
    *&v12 = 0xD00000000000001FLL;
    *(&v12 + 1) = "ml.activityclassifier" + 0x8000000000000000;
    String.append(_:)(a1);
    v5._object = 0xE100000000000000;
    v5._countAndFlagsBits = 34;
    String.append(_:)(v5);
    v6 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    result = swift_allocError(&type metadata for MLCreateError, v6, 0, 0);
    *v8 = v12;
    *(v8 + 16) = 0;
    *(v8 + 32) = 0;
    *(v8 + 48) = 1;
    v9 = 1;
  }

  else
  {
    v4 = *(*v2 + 16);

    v10 = specialized String.withCString<A>(_:)(partial apply for closure #1 in CMLTable.column(name:), v4, a1._countAndFlagsBits, a1._object, type metadata accessor for CMLColumn, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));

    v9 = 0;
    v11 = type metadata accessor for _UntypedColumn();
    result = swift_allocObject(v11, 24, 7);
    *(result + 16) = v10;
  }

  *v3 = result;
  *(v3 + 8) = v9;
  return result;
}

Swift::Int MLDataTable.size.getter()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {

    v5 = CMLTable.rows()();
    if (v6)
    {
      v10 = 191;
    }

    else
    {
      v7 = v5;
      CMLTable.columns()();
      if (!v6)
      {
        outlined consume of Result<_DataTable, Error>(v1, 0);
        return v7;
      }

      v10 = 192;
    }

    swift_unexpectedError(v6, "CreateML/MLDataTable.swift", 26, 1, v10);
    BUG();
  }

  v11[0] = *v0;
  outlined copy of Result<_DataTable, Error>(v1, 1);
  swift_errorRetain(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
  v3 = _getErrorEmbeddedNSError<A>(_:)(v11, v2, &protocol self-conformance witness table for Error);
  if (v3)
  {
    v4 = v3;
    outlined consume of Result<_DataTable, Error>(v1, 1);
  }

  else
  {
    v4 = swift_allocError(v2, &protocol self-conformance witness table for Error, 0, 0);
    *v8 = v1;
  }

  outlined consume of Result<_DataTable, Error>(v1, 1);
  outlined consume of Result<_RegressorMetrics, Error>(v4, 1, 1);
  return 0;
}

uint64_t *MLDataTable.init(namedColumns:)(uint64_t a1)
{
  v3 = v1;
  result = _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(a1);
  if (!v2)
  {
    result = v5;
    *v3 = v5;
    *(v3 + 8) = v6;
  }

  return result;
}

uint64_t MLDataTable.init()()
{
  v1 = v0;
  empty = tc_v1_sframe_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v3 = empty;
  v4 = type metadata accessor for CMLTable();
  v5 = swift_allocObject(v4, 24, 7);
  *(v5 + 16) = v3;
  v6 = type metadata accessor for _DataTable();
  result = swift_allocObject(v6, 40, 7);
  *(result + 24) = 0;
  *(result + 16) = v5;
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

void *MLDataTable.subscript.getter(Swift::String a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v23 = v3;
  if (v4[8])
  {
    swift_willThrow();
    _StringGuts.grow(_:)(34);
    0;
    *&v21 = 0xD00000000000001FLL;
    *(&v21 + 1) = "Duplicate values for key: '" + 0x8000000000000000;
    String.append(_:)(a1);
    v7._countAndFlagsBits = 39;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    v8 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v9 = swift_allocError(&type metadata for MLCreateError, v8, 0, 0);
    *v10 = v21;
    *(v10 + 16) = 0;
    *(v10 + 32) = 0;
    *(v10 + 48) = 1;
    *&v21 = v9;
    BYTE8(v21) = 1;
    return MLDataColumn.init(from:)(&v21);
  }

  v6 = *(*v4 + 16);

  v12 = specialized String.withCString<A>(_:)(closure #1 in CMLTable.column(name:)partial apply, v6, a1._countAndFlagsBits, a1._object, type metadata accessor for CMLColumn, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));

  v13 = type metadata accessor for _UntypedColumn();
  v14 = swift_allocObject(v13, 24, 7);
  *(v14 + 16) = v12;
  v20 = v14;

  MLUntypedColumn.column<A>(type:)(a2, a2, v22);
  outlined consume of Result<_DataTable, Error>(v20, 0);
  v15 = BYTE8(v21);
  if (BYTE8(v21) == 0xFF)
  {
    _StringGuts.grow(_:)(49);
    0;
    strcpy(&v21, "Column named '");
    HIBYTE(v21) = -18;
    String.append(_:)(a1);
    v16._object = "DataTable has no column named '" + 0x8000000000000000;
    v16._countAndFlagsBits = 0xD000000000000021;
    String.append(_:)(v16);
    v17 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v18 = swift_allocError(&type metadata for MLCreateError, v17, 0, 0);
    *v19 = v21;
    *(v19 + 16) = 0;
    *(v19 + 32) = 0;
    *(v19 + 48) = 1;

    *&v21 = v18;
    BYTE8(v21) = 1;
    return MLDataColumn.init(from:)(&v21);
  }

  result = v23;
  *v23 = v21;
  *(result + 8) = v15 & 1;
  return result;
}

uint64_t MLDataTable.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a2;
  v5 = *a1;
  v6 = *(a1 + 8);
  MLDataTable.willMutate()();
  v9 = v5;
  v10 = v6;
  MLDataTable.setColumnImpl(newColumn:named:)(&v9, a2, a3);
  a3;
  result = outlined consume of Result<_DataTable, Error>(v9, v10);
  if (!*(v3 + 8))
  {
    v8 = *v3;
    outlined copy of Result<_DataTable, Error>(v8, 0);
    _DataTable.columnNamesDidChange()();
    return outlined consume of Result<_DataTable, Error>(v8, 0);
  }

  return result;
}

{
  v5 = *a1;
  v6 = *(a1 + 8);
  MLDataTable.willMutate()();
  v9 = v5;
  v10 = v6;
  MLDataTable.setColumnImpl(newColumn:named:)(&v9, a2, a3);
  a3;
  result = outlined consume of Result<_DataTable, Error>(v5, v6);
  if (!*(v3 + 8))
  {
    v8 = *v3;
    outlined copy of Result<_DataTable, Error>(v8, 0);
    _DataTable.columnNamesDidChange()();
    return outlined consume of Result<_DataTable, Error>(v8, 0);
  }

  return result;
}

uint64_t MLDataTable.subscript.getter(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *v2;
  v21 = *(v2 + 8);
  v16 = v1;
  v20 = v4;
  if (v21)
  {
    v6 = *v2;
    outlined copy of Result<_DataTable, Error>(v5, 1);
    v7 = tc_v1_flex_list_create(0);
    if (!v7)
    {
      BUG();
    }

    v8 = v7;
    v9 = type metadata accessor for CMLSequence();
    v10 = swift_allocObject(v9, 25, 7);
    *(v10 + 16) = v8;
    v19 = v10;
    *(v10 + 24) = 1;
    outlined consume of Result<_DataTable, Error>(v5, 1);
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(v5, 0);
    v6 = v5;
    _DataTable.columnNames.getter();
    outlined consume of Result<_DataTable, Error>(v5, 0);
    v19 = v17;
  }

  v11 = swift_allocObject(&unk_394480, 25, 7);
  *(v11 + 16) = v6;
  *(v11 + 24) = v21;
  v12 = swift_allocObject(&unk_3944A8, 25, 7);
  *(v12 + 16) = v3;
  *(v12 + 24) = v20 & 1;
  v13 = swift_allocObject(&unk_3944D0, 56, 7);
  v13[2] = partial apply for closure #2 in MLDataTable.subscript.getter;
  v13[3] = v12;
  v13[4] = v19;
  v13[5] = partial apply for closure #1 in MLDataTable.subscript.getter;
  v13[6] = v11;
  outlined copy of Result<_DataTable, Error>(v6, v21);
  outlined copy of Result<_DataTable, Error>(v3, v20);
  swift_retain_n(v19, 3);

  ML15MLUntypedColumnVs15LazyMapSequenceVyAE11MLDataTableV0I5NamesVSS_AGtGTt0B5 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_8CreateML15MLUntypedColumnVs15LazyMapSequenceVyAE11MLDataTableV0I5NamesVSS_AGtGTt0B5(v19, partial apply for specialized closure #1 in LazyMapSequence<>.map<A>(_:), v13);
  _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(ML15MLUntypedColumnVs15LazyMapSequenceVyAE11MLDataTableV0I5NamesVSS_AGtGTt0B5);

  v19;
  result = v17;
  *v16 = v17;
  *(v16 + 8) = v18;
  return result;
}

{
  v12 = v1;
  v3 = *a1;
  v5 = *(a1 + 8);
  v6 = *(v2 + 8);
  v10 = *v2;
  v4 = v10;
  v11 = v6;
  v8 = v3;
  v9 = v5;
  outlined copy of Result<_DataTable, Error>(v3, v5);
  outlined copy of Result<_DataTable, Error>(v10, v6);
  MLDataTable.subscript.getter(&v8);
  outlined consume of Result<_DataTable, Error>(v3, v5);
  return outlined consume of Result<_DataTable, Error>(v4, v6);
}

uint64_t MLDataTable.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44._countAndFlagsBits = a1;
  v41 = v3;
  v48 = 0;
  AssociatedConformanceWitness = *(a2 - 8);
  v6 = *(AssociatedConformanceWitness + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v47 = &v40;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v42 = *(AssociatedTypeWitness - 8);
  v9 = *(v42 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v50 = &v40;
  v43 = *v4;
  v54 = *(v4 + 8);
  empty = tc_v1_sframe_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v13 = empty;
  v14 = type metadata accessor for CMLTable();
  v15 = swift_allocObject(v14, 24, 7);
  *(v15 + 16) = v13;
  v16 = type metadata accessor for _DataTable();
  v17 = swift_allocObject(v16, 40, 7);
  *(v17 + 24) = 0;
  *(v17 + 16) = v15;
  v51 = v17;
  v52 = 0;
  (*(AssociatedConformanceWitness + 16))(v47, v44._countAndFlagsBits, a2);
  v18 = v50;
  dispatch thunk of Sequence.makeIterator()(a2, a3);
  v19 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, AssociatedTypeWitness, &protocol requirements base descriptor for Sequence, &associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v47 = "ml.activityclassifier" + 0x8000000000000000;
  v45 = v54;
  v20 = v18;
  v21 = v54;
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()(v19, AssociatedConformanceWitness);
    v22 = *(&v53 + 1);
    if (!*(&v53 + 1))
    {
      break;
    }

    v23 = v53;
    v44._countAndFlagsBits = v53;
    if (v21)
    {
      v24 = v43;
      swift_willThrow();
      outlined copy of Result<_DataTable, Error>(v24, 1);
      v48 = 0;
      goto LABEL_8;
    }

    v24 = v43;
    v25 = *(v43 + 16);
    outlined copy of Result<_DataTable, Error>(v43, 0);

    v26 = v23;
    v27 = v48;
    v28 = specialized String.withCString<A>(_:)(closure #1 in CMLTable.column(name:)partial apply, v25, v26, v22, type metadata accessor for CMLColumn, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
    if (v27)
    {
      v27;

      v48 = 0;
LABEL_8:
      *&v53 = 0;
      *(&v53 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(34);
      SBYTE8(v53);
      *&v53 = 0xD00000000000001FLL;
      *(&v53 + 1) = v47;
      v29._countAndFlagsBits = v44._countAndFlagsBits;
      v29._object = v22;
      String.append(_:)(v29);
      v29._countAndFlagsBits = 34;
      v29._object = 0xE100000000000000;
      String.append(_:)(v29);
      v44 = v53;
      v30 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      v31 = swift_allocError(&type metadata for MLCreateError, v30, 0, 0);
      *v32 = v44;
      *(v32 + 16) = 0;
      *(v32 + 32) = 0;
      *(v32 + 48) = 1;
      outlined consume of Result<_DataTable, Error>(v24, v45);
      outlined consume of Result<_DataTable, Error>(v31, 1);
      v22;
      v19 = AssociatedTypeWitness;
      v20 = v50;
      v21 = v54;
    }

    else
    {
      v33 = v28;
      v48 = 0;

      outlined consume of Result<_DataTable, Error>(v24, 0);
      v34 = type metadata accessor for _UntypedColumn();
      v35 = swift_allocObject(v34, 24, 7);
      *(v35 + 16) = v33;
      outlined copy of Result<_DataTable, Error>(v35, 0);
      MLDataTable.willMutate()();
      *&v53 = v35;
      BYTE8(v53) = 0;
      MLDataTable.setColumnImpl(newColumn:named:)(&v53, v44._countAndFlagsBits, v22);
      v22;
      outlined consume of Result<_DataTable, Error>(v35, 0);
      if (!v52)
      {
        v36 = v51;
        outlined copy of Result<_DataTable, Error>(v51, 0);
        _DataTable.columnNamesDidChange()();
        outlined consume of Result<_DataTable, Error>(v36, 0);
      }

      outlined consume of Result<_DataTable, Error>(v35, 0);
      v19 = AssociatedTypeWitness;
      v20 = v50;
      v21 = v54;
    }
  }

  (*(v42 + 8))(v20, v19);
  result = v51;
  v38 = v52;
  v39 = v41;
  *v41 = v51;
  *(v39 + 8) = v38;
  return result;
}

{
  v16 = a3;
  v19 = a2;
  v17 = a1;
  v5 = v3;
  v6 = *v4;
  v7 = *(v4 + 8);
  v14 = v6;
  LOBYTE(v15) = v7 & 1;
  outlined copy of Result<_DataTable, Error>(v6, v7);
  v8 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v6, v7);
  if (v8 < 0)
  {
    BUG();
  }

  v13[0] = 0;
  v13[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Range<Int>);
  v10 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  v18 = v5;
  dispatch thunk of RangeExpression.relative<A>(to:)(v13, v9, v10, v19, v16);
  v11 = v14;
  v19 = v15;
  v14 = v6;
  LOBYTE(v15) = v7 & 1;
  outlined copy of Result<_DataTable, Error>(v6, v7);
  MLDataTable.subscript.getter(v11, v19);
  return outlined consume of Result<_DataTable, Error>(v6, v7);
}

uint64_t MLDataTable.addColumn(_:named:)(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  MLDataTable.willMutate()();
  v9 = v5;
  v10 = v6;
  result = MLDataTable.addImpl(newColumn:named:)(&v9, a2, a3);
  if (!*(v3 + 8))
  {
    v8 = *v3;
    outlined copy of Result<_DataTable, Error>(v8, 0);
    _DataTable.columnNamesDidChange()();
    return outlined consume of Result<_DataTable, Error>(v8, 0);
  }

  return result;
}

void *_sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC8CreateML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5(uint64_t *a1)
{
  v2 = _swiftEmptyDictionarySingleton;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, 1, &v2);

  return v2;
}

void *_sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SdSaySS_SdtGTt0g5Tm(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t, void **))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledName(a2);
    v5 = static _DictionaryStorage.allocate(capacity:)(v4);
  }

  else
  {
    v5 = _swiftEmptyDictionarySingleton;
  }

  v7 = v5;

  a3(a1, 1, &v7);
  a1;
  return v7;
}

void *_sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_8CreateML15MLUntypedColumnVs15LazyMapSequenceVyAE11MLDataTableV0I5NamesVSS_AGtGTt0B5(uint64_t a1, void (*a2)(unint64_t *), uint64_t a3)
{
  v4 = specialized Collection.underestimatedCount.getter();
  if (v4)
  {
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, MLUntypedColumn>);
    v6 = static _DictionaryStorage.allocate(capacity:)(v5);
  }

  else
  {
    v6 = _swiftEmptyDictionarySingleton;
  }

  v8 = v6;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, a2, a3, 1, &v8);

  return v8;
}

void *_sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC8CreateML11MLDataValueO_Sis12Zip2SequenceVySayAGGSnySiGGTt0g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, void **))
{
  if (__OFSUB__(a3, a2))
  {
    BUG();
  }

  v7 = *(a1 + 16);
  if (a3 - a2 < v7)
  {
    v7 = a3 - a2;
  }

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledName(a4);
    v8 = static _DictionaryStorage.allocate(capacity:)(v7);
  }

  else
  {
    v8 = _swiftEmptyDictionarySingleton;
  }

  v10 = v8;

  a5(a1, a2, a3, 1, &v10);
  a1;
  return v10;
}

Swift::Void __swiftcall MLDataTable.renameColumn(named:to:)(Swift::String named, Swift::String to)
{
  object = to._object;
  countAndFlagsBits = to._countAndFlagsBits;
  MLDataTable.willMutate()();
  v5._countAndFlagsBits = countAndFlagsBits;
  v5._object = object;
  MLDataTable.renameImpl(named:to:)(named, v5);
  if (!*(v2 + 8))
  {
    v6 = *v2;
    outlined copy of Result<_DataTable, Error>(v6, 0);
    _DataTable.columnNamesDidChange()();
    outlined consume of Result<_DataTable, Error>(v6, 0);
  }
}

uint64_t specialized String.withCString<A>(_:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized String.withCString<A>(_:)(a1, a2, a3, a4, type metadata accessor for CMLVariant, _ss11_StringGutsV11withCStringyxxSPys4Int8VGKXEKlFxSRyAEGKXEfU_s13OpaquePointerV_TG5TA_0);
}

{
  return specialized String.withCString<A>(_:)(a1, a2, a3, a4, type metadata accessor for CMLColumn, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
}

{
  return specialized String.withCString<A>(_:)(a1, a2, a3, a4, type metadata accessor for CMLFeatureValue, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
}

{
  return specialized String.withCString<A>(_:)(a1, a2, a3, a4, type metadata accessor for CMLTable, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    _StringGuts._slowWithCString<A>(_:)(partial apply for closure #1 in CMLTable.removeColumn(name:), a3, a1, a2, &type metadata for () + 8);
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v4 = a1 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v3 = _StringObject.sharedUTF8.getter(a1, a2);
      v4 = v6;
    }

    _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5yt_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRyt_TG5SRyAGGytsAD_pIgyrzo_Tf1ncn_n038_ss11_StringGutsV11withCStringyxxSPys4F27VGKXEKlFxSRyAEGKXEfU_yt_Tg5SPyAGGxsAD_pRi_zRi0_zlyytIsgyrzo_Tf1nnc_n(v3, v4, partial apply for closure #1 in CMLTable.removeColumn(name:));
  }

  v7[0] = a1;
  v7[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  specialized handling<A, B, C>(_:_:_:)(*(a3 + 16), v7);
}

char specialized String.withCString<A>(_:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0 || !(a4 & 0x2000000000000000 | a3 & 0x1000000000000000))
  {
    result = _StringGuts._slowWithCString<A>(_:)(a1, a2, a3, a4, &type metadata for CMLFeatureValueType);
    if (!v4)
    {
      return v10;
    }
  }

  else
  {
    v5 = alloca(32);
    v6 = alloca(32);
    if ((a4 & 0x2000000000000000) != 0)
    {
      result = a1();
      if (!v4)
      {
        return HIBYTE(a2);
      }
    }

    else
    {
      if ((a3 & 0x1000000000000000) != 0)
      {
        v7 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v8 = a3 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v7 = _StringObject.sharedUTF8.getter(a3, a4);
      }

      return _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5Sb_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRSb_TG5SRyAGGSbsAD_pIgyrzo_Tf1cn_n(v7, v8, _ss11_StringGutsV11withCStringyxxSPys4Int8VGKXEKlFxSRyAEGKXEfU_Sb_TG5TA_0);
    }
  }

  return result;
}

uint64_t specialized String.withCString<A>(_:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t))
{
  if ((a4 & 0x1000000000000000) != 0 || !(a4 & 0x2000000000000000 | a3 & 0x1000000000000000))
  {
    v14 = a5(0);
    result = _StringGuts._slowWithCString<A>(_:)(a1, a2, a3, a4, v14);
    if (!v6)
    {
      return v18;
    }
  }

  else
  {
    v9 = alloca(32);
    v10 = alloca(32);
    if ((a4 & 0x2000000000000000) != 0)
    {
      result = a1();
      if (!v6)
      {
        return v19;
      }
    }

    else
    {
      if ((a3 & 0x1000000000000000) != 0)
      {
        v11 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v12 = a3 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = a6;
        v16 = _StringObject.sharedUTF8.getter(a3, a4);
        a6 = v15;
        v11 = v16;
        v12 = v17;
      }

      return _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v11, v12, a6);
    }
  }

  return result;
}

uint64_t (*specialized String.withCString<A>(_:)(uint64_t (*a1)(void, void, void), uint64_t a2, uint64_t a3, uint64_t a4))(void, void, void)
{
  if ((a4 & 0x1000000000000000) != 0 || !(a4 & 0x2000000000000000 | a3 & 0x1000000000000000))
  {
    result = _StringGuts._slowWithCString<A>(_:)(a1, a2, a3, a4, &type metadata for OpaquePointer);
    if (!v4)
    {
      return v11;
    }
  }

  else
  {
    v5 = alloca(32);
    v6 = alloca(32);
    v11 = a1;
    v12 = a2;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v10[0] = a3;
      v10[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      result = a1(v10, a1, a3);
      if (!v4)
      {
        return v12;
      }
    }

    else
    {
      if ((a3 & 0x1000000000000000) != 0)
      {
        v7 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v8 = a3 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v7 = _StringObject.sharedUTF8.getter(a3, a4);
      }

      return _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v7, v8, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
    }
  }

  return result;
}

uint64_t *MLDataTable.init(dictionary:)(uint64_t a1)
{
  v43 = v2;
  v35 = v1;
  empty = tc_v1_sframe_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v5 = empty;
  v44 = 0;
  v6 = type metadata accessor for CMLTable();
  v7 = swift_allocObject(v6, 24, 7);
  *(v7 + 16) = v5;
  v8 = type metadata accessor for _DataTable();
  v9 = swift_allocObject(v8, 40, 7);
  *(v9 + 24) = 0;
  *(v9 + 16) = v7;
  v10 = 1 << *(a1 + 32);
  v11 = ~(-1 << v10);
  if (v10 >= 64)
  {
    v11 = -1;
  }

  v12 = *(a1 + 64) & v11;
  v46 = (v10 + 63) >> 6;
  v36 = v46 - 1;
  v45 = v9;

  v13 = &v37;
  v42 = a1;
  while (1)
  {
    if (v12)
    {
      v14 = v44;
LABEL_7:
      _BitScanForward64(&v15, v12);
      v41 = (v12 - 1) & v12;
      v16 = v15 | (v14 << 6);
      v17 = *(a1 + 48);
      v18 = 40 * v16;
      v16 *= 16;
      v19 = *(v17 + v16 + 8);
      *&v37 = *(v17 + v16);
      *(&v37 + 1) = v19;
      outlined init with copy of TabularRegressionTask(*(a1 + 56) + v18, &v38);

      goto LABEL_17;
    }

    v14 = v44;
    v20 = v44 + 1;
    if (__OFADD__(1, v44))
    {
      BUG();
    }

    if (v20 < v46)
    {
      v12 = *(a1 + 8 * v20 + 64);
      if (v12)
      {
        v14 = v44 + 1;
        goto LABEL_7;
      }

      v21 = v44 + 2;
      if (v44 + 2 >= v46)
      {
        v14 = v44 + 1;
      }

      else
      {
        v12 = *(a1 + 8 * v20 + 72);
        if (v12)
        {
          goto LABEL_14;
        }

        v28 = v44 + 3;
        if (v44 + 3 >= v46)
        {
          goto LABEL_33;
        }

        v12 = *(a1 + 8 * v20 + 80);
        if (v12)
        {
          goto LABEL_22;
        }

        v21 = v44 + 4;
        if (v44 + 4 >= v46)
        {
          goto LABEL_34;
        }

        v12 = *(a1 + 8 * v20 + 88);
        if (v12)
        {
          goto LABEL_14;
        }

        v28 = v44 + 5;
        if (v44 + 5 >= v46)
        {
LABEL_33:
          v14 = v21;
        }

        else
        {
          v12 = *(a1 + 8 * v20 + 96);
          if (v12)
          {
LABEL_22:
            v14 = v28;
            goto LABEL_7;
          }

          v21 = v44 + 6;
          if (v44 + 6 >= v46)
          {
LABEL_34:
            v14 = v28;
            goto LABEL_16;
          }

          v12 = *(a1 + 8 * v20 + 104);
          if (v12)
          {
LABEL_14:
            v14 = v21;
            goto LABEL_7;
          }

          v29 = v44 + 7;
          while (v29 < v46)
          {
            v12 = *(a1 + 8 * v29++ + 64);
            if (v12)
            {
              v14 = v29 - 1;
              goto LABEL_7;
            }
          }

          v14 = v36;
        }
      }
    }

LABEL_16:
    v39 = 0;
    v38 = 0;
    v37 = 0;
    v40 = 0;
    v41 = 0;
LABEL_17:
    v33 = v40;
    v32[1] = v39;
    v32[0] = v38;
    v22 = *(&v37 + 1);
    if (!*(&v37 + 1))
    {
      v30 = v45;

      result = v35;
      *v35 = v30;
      *(result + 8) = 0;
      return result;
    }

    v44 = v14;
    v34 = v37;
    outlined init with take of TabularRegressionTask(v32, v13);
    v23 = *(&v38 + 1);
    v24 = v13;
    v25 = v39;
    __swift_project_boxed_opaque_existential_0Tm(v24, *(&v38 + 1));
    v26 = MLDataValueConvertible.featureColumn.getter(v23, v25);

    v27 = v43;
    CMLTable.addColumn(name:_:)(v34, v22, v26);
    v43 = v27;
    if (v27)
    {
      break;
    }

    v22;
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    a1 = v42;
    v13 = v24;
    v12 = v41;
  }

  v45;

  v22;
  return __swift_destroy_boxed_opaque_existential_1Tm(&v37);
}

uint64_t MLDataTable.append(contentsOf:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(v1 + 8))
  {
    swift_errorRetain(*v1);
    v4 = 1;
  }

  else
  {
    v5 = *a1;
    if (*(a1 + 8))
    {
      swift_errorRetain(*a1);
      v4 = 1;
      v3 = v5;
    }

    else
    {
      type metadata accessor for CMLTable();
      v6 = *(v3 + 16);
      v7 = *(v5 + 16);
      outlined copy of Result<_DataTable, Error>(v5, 0);
      outlined copy of Result<_DataTable, Error>(v3, 0);

      v8 = CMLTable.__allocating_init(concatenating:and:)(v6, v7);
      v9 = type metadata accessor for _DataTable();
      v10 = swift_allocObject(v9, 40, 7);
      *(v10 + 24) = 0;
      *(v10 + 16) = v8;
      v4 = 0;
      outlined consume of Result<_DataTable, Error>(v5, 0);
      outlined consume of Result<_DataTable, Error>(v3, 0);
      v3 = v10;
    }
  }

  result = outlined consume of Result<_DataTable, Error>(*v2, *(v2 + 8));
  *v2 = v3;
  *(v2 + 8) = v4;
  return result;
}

uint64_t MLDataTable.addColumn<A>(_:named:)(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v4 = *a1;
  v5 = *(a1 + 8);
  MLDataTable.willMutate()();
  v8 = v4;
  v9 = v5;
  outlined copy of Result<_DataTable, Error>(v4, v5);
  MLDataTable.addImpl(newColumn:named:)(&v8, a2, v10);
  result = outlined consume of Result<_DataTable, Error>(v8, v9);
  if (!*(v3 + 8))
  {
    v7 = *v3;
    outlined copy of Result<_DataTable, Error>(v7, 0);
    _DataTable.columnNamesDidChange()();
    return outlined consume of Result<_DataTable, Error>(v7, 0);
  }

  return result;
}

uint64_t MLDataTable.columnTypes.getter()
{
  if (*(v0 + 8))
  {
    return Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for MLDataValue.ValueType, &protocol witness table for String);
  }

  v2 = *v0;
  v88 = *(v2 + 16);

  outlined copy of Result<_DataTable, Error>(v2, 0);
  v105 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for MLDataValue.ValueType, &protocol witness table for String);
  outlined copy of Result<_DataTable, Error>(v2, 0);
  _DataTable.columnNames.getter();
  v87 = v2;
  outlined consume of Result<_DataTable, Error>(v2, 0);

  v3 = CMLSequence.size.getter();
  v4 = specialized RandomAccessCollection<>.distance(from:to:)(0, v3);

  if (v4)
  {
    v5 = 0;
    while (2)
    {
      v89 = v5;
      CMLSequence.value(at:)(v5);
      v6 = CMLFeatureValue.stringValue()();
      if (v7)
      {
        v7;

        _StringGuts.grow(_:)(37);
        0;
        v84._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        object = v84._object;
        String.append(_:)(v84);
        object;
        v86._countAndFlagsBits = 46;
        v86._object = 0xE100000000000000;
        String.append(_:)(v86);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000022, ("able.ColumnNames.swift" + 0x8000000000000000), "CreateML/MLDataTable.ColumnNames.swift", 38, 2, 17, 0);
        BUG();
      }

      countAndFlagsBits = v6._countAndFlagsBits;
      v9 = v6._object;

      v10 = CMLSequence.size.getter();
      v11 = specialized RandomAccessCollection<>.distance(from:to:)(0, v10);

      if (v89 >= v11)
      {
        BUG();
      }

      v12 = specialized String.withCString<A>(_:)(partial apply for closure #1 in CMLTable.columnType(name:), v88, countAndFlagsBits, v9);
      isUnique = swift_isUniquelyReferenced_nonNull_native(v105);
      switch(v12)
      {
        case 0:
          v97 = v105;
          v13 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v9);
          v15 = (v14 & 1) == 0;
          v16 = __OFADD__(*(v105 + 16), v15);
          v17 = *(v105 + 16) + v15;
          if (v16)
          {
            BUG();
          }

          v106 = v14;
          v90 = v13;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, MLDataValue.ValueType>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v17))
          {
            v21 = countAndFlagsBits;
            v18 = v9;
            v19 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v9);
            LOBYTE(v20) = v20 & 1;
            LOBYTE(v21) = v106;
            v22 = v21;
            LOBYTE(v22) = v106 & 1;
            if ((v106 & 1) != v20)
            {
              goto LABEL_84;
            }
          }

          else
          {
            v19 = v90;
            LOBYTE(v21) = v106;
          }

          v59 = v97;
          v105 = v97;
          if (v21)
          {
            *(v97[7] + v19) = 0;
            goto LABEL_67;
          }

          v97[(v19 >> 6) + 8] |= 1 << v19;
          v70 = v97[6];
          v71 = 16 * v19;
          *(v70 + v71) = countAndFlagsBits;
          *(v70 + v71 + 8) = v9;
          *(v97[7] + v19) = 0;
          v72 = v97[2];
          v16 = __OFADD__(1, v72);
          v63 = v72 + 1;
          if (v16)
          {
            BUG();
          }

          goto LABEL_71;
        case 1:
          v101 = v105;
          v41 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v9);
          v43 = (v42 & 1) == 0;
          v16 = __OFADD__(*(v105 + 16), v43);
          v44 = *(v105 + 16) + v43;
          if (v16)
          {
            BUG();
          }

          v110 = v42;
          v94 = v41;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, MLDataValue.ValueType>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v44))
          {
            v46 = countAndFlagsBits;
            v18 = v9;
            v45 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v9);
            LOBYTE(v20) = v20 & 1;
            LOBYTE(v46) = v110;
            v22 = v46;
            LOBYTE(v22) = v110 & 1;
            if ((v110 & 1) != v20)
            {
              goto LABEL_84;
            }
          }

          else
          {
            v45 = v94;
            LOBYTE(v46) = v110;
          }

          v59 = v101;
          v105 = v101;
          if (v46)
          {
            *(v101[7] + v45) = 1;
            goto LABEL_67;
          }

          v101[(v45 >> 6) + 8] |= 1 << v45;
          v73 = v101[6];
          v74 = 16 * v45;
          *(v73 + v74) = countAndFlagsBits;
          *(v73 + v74 + 8) = v9;
          *(v101[7] + v45) = 1;
          v75 = v101[2];
          v16 = __OFADD__(1, v75);
          v63 = v75 + 1;
          if (v16)
          {
            BUG();
          }

          goto LABEL_71;
        case 2:
          v99 = v105;
          v29 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v9);
          v31 = (v30 & 1) == 0;
          v16 = __OFADD__(*(v105 + 16), v31);
          v32 = *(v105 + 16) + v31;
          if (v16)
          {
            BUG();
          }

          v108 = v30;
          v92 = v29;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, MLDataValue.ValueType>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v32))
          {
            v34 = countAndFlagsBits;
            v18 = v9;
            v33 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v9);
            LOBYTE(v20) = v20 & 1;
            LOBYTE(v34) = v108;
            v22 = v34;
            LOBYTE(v22) = v108 & 1;
            if ((v108 & 1) != v20)
            {
              goto LABEL_84;
            }
          }

          else
          {
            v33 = v92;
            LOBYTE(v34) = v108;
          }

          v59 = v99;
          v105 = v99;
          if (v34)
          {
            *(v99[7] + v33) = 2;
            goto LABEL_67;
          }

          v99[(v33 >> 6) + 8] |= 1 << v33;
          v64 = v99[6];
          v65 = 16 * v33;
          *(v64 + v65) = countAndFlagsBits;
          *(v64 + v65 + 8) = v9;
          *(v99[7] + v33) = 2;
          v66 = v99[2];
          v16 = __OFADD__(1, v66);
          v63 = v66 + 1;
          if (v16)
          {
            BUG();
          }

          goto LABEL_71;
        case 3:
          v100 = v105;
          v35 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v9);
          v37 = (v36 & 1) == 0;
          v16 = __OFADD__(*(v105 + 16), v37);
          v38 = *(v105 + 16) + v37;
          if (v16)
          {
            BUG();
          }

          v109 = v36;
          v93 = v35;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, MLDataValue.ValueType>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v38))
          {
            v40 = countAndFlagsBits;
            v18 = v9;
            v39 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v9);
            LOBYTE(v20) = v20 & 1;
            LOBYTE(v40) = v109;
            v22 = v40;
            LOBYTE(v22) = v109 & 1;
            if ((v109 & 1) != v20)
            {
              goto LABEL_84;
            }
          }

          else
          {
            v39 = v93;
            LOBYTE(v40) = v109;
          }

          v59 = v100;
          v105 = v100;
          if (v40)
          {
            *(v100[7] + v39) = 3;
            goto LABEL_67;
          }

          v100[(v39 >> 6) + 8] |= 1 << v39;
          v67 = v100[6];
          v68 = 16 * v39;
          *(v67 + v68) = countAndFlagsBits;
          *(v67 + v68 + 8) = v9;
          *(v100[7] + v39) = 3;
          v69 = v100[2];
          v16 = __OFADD__(1, v69);
          v63 = v69 + 1;
          if (v16)
          {
            BUG();
          }

          goto LABEL_71;
        case 4:
          v98 = v105;
          v23 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v9);
          v25 = (v24 & 1) == 0;
          v16 = __OFADD__(*(v105 + 16), v25);
          v26 = *(v105 + 16) + v25;
          if (v16)
          {
            BUG();
          }

          v107 = v24;
          v91 = v23;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, MLDataValue.ValueType>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v26))
          {
            v28 = countAndFlagsBits;
            v18 = v9;
            v27 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v9);
            LOBYTE(v20) = v20 & 1;
            LOBYTE(v28) = v107;
            v22 = v28;
            LOBYTE(v22) = v107 & 1;
            if ((v107 & 1) != v20)
            {
              goto LABEL_84;
            }
          }

          else
          {
            v27 = v91;
            LOBYTE(v28) = v107;
          }

          v59 = v98;
          v105 = v98;
          if (v28)
          {
            *(v98[7] + v27) = 4;
            goto LABEL_67;
          }

          v98[(v27 >> 6) + 8] |= 1 << v27;
          v60 = v98[6];
          v61 = 16 * v27;
          *(v60 + v61) = countAndFlagsBits;
          *(v60 + v61 + 8) = v9;
          *(v98[7] + v27) = 4;
          v62 = v98[2];
          v16 = __OFADD__(1, v62);
          v63 = v62 + 1;
          if (v16)
          {
            BUG();
          }

          goto LABEL_71;
        case 5:
          v102 = v105;
          v47 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v9);
          v49 = (v48 & 1) == 0;
          v16 = __OFADD__(*(v105 + 16), v49);
          v50 = *(v105 + 16) + v49;
          if (v16)
          {
            BUG();
          }

          v111 = v48;
          v95 = v47;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, MLDataValue.ValueType>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v50))
          {
            v52 = countAndFlagsBits;
            v18 = v9;
            v51 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v9);
            LOBYTE(v20) = v20 & 1;
            LOBYTE(v52) = v111;
            v22 = v52;
            LOBYTE(v22) = v111 & 1;
            if ((v111 & 1) != v20)
            {
              goto LABEL_84;
            }
          }

          else
          {
            v51 = v95;
            LOBYTE(v52) = v111;
          }

          v59 = v102;
          v105 = v102;
          if (v52)
          {
            *(v102[7] + v51) = 6;
            goto LABEL_67;
          }

          v102[(v51 >> 6) + 8] |= 1 << v51;
          v76 = v102[6];
          v77 = 16 * v51;
          *(v76 + v77) = countAndFlagsBits;
          *(v76 + v77 + 8) = v9;
          *(v102[7] + v51) = 6;
          v78 = v102[2];
          v16 = __OFADD__(1, v78);
          v63 = v78 + 1;
          if (v16)
          {
            BUG();
          }

          goto LABEL_71;
        case 6:
          v103 = v105;
          v53 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v9);
          v55 = (v54 & 1) == 0;
          v16 = __OFADD__(*(v105 + 16), v55);
          v56 = *(v105 + 16) + v55;
          if (v16)
          {
            BUG();
          }

          v112 = v54;
          v96 = v53;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, MLDataValue.ValueType>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v56))
          {
            v58 = countAndFlagsBits;
            v18 = v9;
            v57 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v9);
            LOBYTE(v20) = v20 & 1;
            LOBYTE(v58) = v112;
            v22 = v58;
            LOBYTE(v22) = v112 & 1;
            if ((v112 & 1) != v20)
            {
LABEL_84:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v18, v20, v22);
              BUG();
            }
          }

          else
          {
            v57 = v96;
            LOBYTE(v58) = v112;
          }

          v59 = v103;
          v105 = v103;
          if (v58)
          {
            *(v103[7] + v57) = 5;
LABEL_67:
            v9;
          }

          else
          {
            v103[(v57 >> 6) + 8] |= 1 << v57;
            v79 = v103[6];
            v80 = 16 * v57;
            *(v79 + v80) = countAndFlagsBits;
            *(v79 + v80 + 8) = v9;
            *(v103[7] + v57) = 5;
            v81 = v103[2];
            v16 = __OFADD__(1, v81);
            v63 = v81 + 1;
            if (v16)
            {
              BUG();
            }

LABEL_71:
            v59[2] = v63;
          }

          v5 = v89 + 1;

          v82 = CMLSequence.size.getter();
          v83 = specialized RandomAccessCollection<>.distance(from:to:)(0, v82);

          if (v89 + 1 == v83)
          {
            break;
          }

          continue;
      }

      break;
    }
  }

  outlined consume of Result<_DataTable, Error>(v87, 0);
  return v105;
}

uint64_t MLDataTable.subscript.getter(Swift::String a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(v4 + 8);
  outlined copy of Result<_DataTable, Error>(*v4, v6);
  MLDataTable.subscript.getter(a1);
  outlined consume of Result<_DataTable, Error>(v5, v6);
  MLUntypedColumn.column<A>(type:)(a2, a3, a4);
  return outlined consume of Result<_DataTable, Error>(v8, v9);
}

uint64_t MLDataTable.subscript.getter(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  if (*(v3 + 8))
  {
    v19[0] = *v3;
    outlined copy of Result<_DataTable, Error>(v5, 1);
    swift_errorRetain(v5);
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v7 = _getErrorEmbeddedNSError<A>(_:)(v19, v6, &protocol self-conformance witness table for Error);
    if (v7)
    {
      v8 = v7;
      outlined consume of Result<_DataTable, Error>(v5, 1);
    }

    else
    {
      v8 = swift_allocError(v6, &protocol self-conformance witness table for Error, 0, 0);
      *v11 = v5;
    }

    result = outlined consume of Result<_DataTable, Error>(v5, 1);
    v13 = 1;
  }

  else
  {
    v9 = *(*(v5 + 16) + 16);

    v10 = specialized handling<A, B, C, D, E>(_:_:_:_:_:)(v9, a1, 1, a2);
    v14 = v10;
    if (!v10)
    {
      BUG();
    }

    v13 = 0;
    v15 = type metadata accessor for CMLTable();
    v16 = swift_allocObject(v15, 24, 7);
    *(v16 + 16) = v14;
    v17 = v16;
    v18 = type metadata accessor for _DataTable();
    v8 = swift_allocObject(v18, 40, 7);
    *(v8 + 24) = 0;
    *(v8 + 16) = v17;
    result = outlined consume of Result<_DataTable, Error>(v5, 0);
  }

  *v4 = v8;
  *(v4 + 8) = v13;
  return result;
}

uint64_t _DataTable.columnNames.getter()
{
  v2 = v0;
  v3 = *(v1 + 24);
  if (!v3)
  {
    v4 = specialized handling<A, B>(_:_:)(*(*(v1 + 16) + 16));
    if (!v4)
    {
      BUG();
    }

    v5 = type metadata accessor for CMLSequence();
    v6 = swift_allocObject(v5, 25, 7);
    *(v6 + 16) = v4;
    *(v6 + 24) = 1;
    *(v1 + 24) = v6;

    v3 = *(v1 + 24);
    if (!v3)
    {
      BUG();
    }
  }

  *v2 = v3;
}

uint64_t _DataTable.columnIndexes.getter()
{
  if (!*(v0 + 32))
  {
    v26 = v0;
    _DataTable.columnNames.getter();

    v1 = CMLSequence.size.getter();
    v2 = specialized RandomAccessCollection<>.distance(from:to:)(0, v1);

    if (v2)
    {
      v3 = 0;
      do
      {
        CMLSequence.value(at:)(v3);
        v28 = CMLFeatureValue.stringValue()();
        if (v4)
        {
          v4;

          _StringGuts.grow(_:)(37);
          0;
          v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
          object = v23._object;
          String.append(_:)(v23);
          object;
          v25._countAndFlagsBits = 46;
          v25._object = 0xE100000000000000;
          String.append(_:)(v25);
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000022, ("able.ColumnNames.swift" + 0x8000000000000000), "CreateML/MLDataTable.ColumnNames.swift", 38, 2, 17, 0);
          BUG();
        }

        v5 = CMLSequence.size.getter();
        v6 = specialized RandomAccessCollection<>.distance(from:to:)(0, v5);

        if (v3 >= v6)
        {
          BUG();
        }

        v27 = v3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
        v9 = specialized __RawDictionaryStorage.find<A>(_:)(v28._countAndFlagsBits, v28._object);
        v10 = (v8 & 1) == 0;
        v11 = __OFADD__(_swiftEmptyDictionarySingleton[2], v10);
        v12 = _swiftEmptyDictionarySingleton[2] + v10;
        if (v11)
        {
          BUG();
        }

        v13 = v8;
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Int>);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v12))
        {
          v9 = specialized __RawDictionaryStorage.find<A>(_:)(v28._countAndFlagsBits, v28._object);
          LOBYTE(v15) = v15 & 1;
          if ((v13 & 1) != v15)
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v28._object, v15, v14);
            BUG();
          }
        }

        if (v13)
        {
          v16 = v27;
          *(_swiftEmptyDictionarySingleton[7] + 8 * v9) = v27;
          v28._object;
        }

        else
        {
          _swiftEmptyDictionarySingleton[(v9 >> 6) + 8] |= 1 << v9;
          *(_swiftEmptyDictionarySingleton[6] + 16 * v9) = v28;
          v16 = v27;
          *(_swiftEmptyDictionarySingleton[7] + 8 * v9) = v27;
          v17 = _swiftEmptyDictionarySingleton[2];
          v11 = __OFADD__(1, v17);
          v18 = v17 + 1;
          if (v11)
          {
            BUG();
          }

          _swiftEmptyDictionarySingleton[2] = v18;
        }

        v3 = v16 + 1;

        v19 = CMLSequence.size.getter();
        v20 = specialized RandomAccessCollection<>.distance(from:to:)(0, v19);
      }

      while (v3 != v20);
    }

    v21 = *(v26 + 32);
    *(v26 + 32) = _swiftEmptyDictionarySingleton;
    v21;
    if (!*(v26 + 32))
    {
      BUG();
    }
  }
}

uint64_t _DataTable.init(impl:)(uint64_t a1)
{
  result = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = a1;
  return result;
}

Swift::Void __swiftcall _DataTable.columnNamesDidChange()()
{
  *(v0 + 24) = 0;

  v1 = *(v0 + 32);
  *(v0 + 32) = 0;
  v1;
}

uint64_t _DataTable.deinit()
{

  *(v0 + 32);
  return v0;
}

uint64_t MLDataTable.error.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0;
  }

  v1 = *v0;
  swift_errorRetain(*v0);
  return v1;
}

void MLDataTable.willMutate()()
{
  if (!*(v0 + 8))
  {
    v1 = *v0;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v1);

    if (!isUniquelyReferenced_nonNull_native)
    {
      v55 = *v0;
      v53 = *(v0 + 8);
      outlined copy of Result<_DataTable, Error>(*v0, v53);
      empty = tc_v1_sframe_create_empty(0);
      if (!empty)
      {
        BUG();
      }

      v4 = empty;
      v5 = type metadata accessor for CMLTable();
      v6 = swift_allocObject(v5, 24, 7);
      *(v6 + 16) = v4;
      v7 = type metadata accessor for _DataTable();
      v8 = swift_allocObject(v7, 40, 7);
      *(v8 + 24) = 0;
      *(v8 + 16) = v6;
      v9 = *v0;
      v10 = *(v0 + 8);

      outlined consume of Result<_DataTable, Error>(v9, v10);
      *v0 = v8;
      *(v0 + 8) = 0;
      v50 = v0;
      if (v53)
      {
        outlined copy of Result<_DataTable, Error>(v55, 1);
        v11 = tc_v1_flex_list_create(0);
        if (!v11)
        {
          BUG();
        }

        v12 = v11;
        outlined consume of Result<_DataTable, Error>(v55, 1);
        v13 = type metadata accessor for CMLSequence();
        v14 = swift_allocObject(v13, 25, 7);
        *(v14 + 16) = v12;
        *(v14 + 24) = 1;
      }

      else
      {
        outlined copy of Result<_DataTable, Error>(v55, 0);
        _DataTable.columnNames.getter();
        outlined consume of Result<_DataTable, Error>(v55, 0);
      }

      v15 = CMLSequence.size.getter();
      v16 = specialized RandomAccessCollection<>.distance(from:to:)(0, v15);

      if (v16)
      {
        v57 = 0;
        v60 = v8;
        v17 = 0;
        while (1)
        {
          v56 = v17;
          CMLSequence.value(at:)(v17);
          v18 = CMLFeatureValue.stringValue()();
          object = v18._object;
          if (v19)
          {
            v19;

            *&v59 = 0;
            *(&v59 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(37);
            SBYTE8(v59);
            *&v59 = 0xD000000000000022;
            *(&v59 + 1) = "able.ColumnNames.swift" + 0x8000000000000000;
            v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
            v47 = v46._object;
            String.append(_:)(v46);
            v47;
            v48._countAndFlagsBits = 46;
            v48._object = 0xE100000000000000;
            String.append(_:)(v48);
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v59, *(&v59 + 1), "CreateML/MLDataTable.ColumnNames.swift", 38, 2, 17, 0);
            BUG();
          }

          countAndFlagsBits = v18._countAndFlagsBits;

          v21 = CMLSequence.size.getter();
          v22 = specialized RandomAccessCollection<>.distance(from:to:)(0, v21);

          if (v56 >= v22)
          {
            BUG();
          }

          if ((v53 & 1) == 0)
          {
            break;
          }

          swift_willThrow();
          outlined copy of Result<_DataTable, Error>(v55, 1);
          *&v59 = 0;
          *(&v59 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(34);
          SBYTE8(v59);
          *&v59 = 0xD00000000000001FLL;
          *(&v59 + 1) = "ml.activityclassifier" + 0x8000000000000000;
          String.append(_:)(__PAIR128__(object, countAndFlagsBits));
          v24._countAndFlagsBits = 34;
          v24._object = 0xE100000000000000;
          String.append(_:)(v24);
          v49 = v59;
          v25 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          v51 = swift_allocError(&type metadata for MLCreateError, v25, 0, 0);
          *v26 = v49;
          *(v26 + 16) = 0;
          *(v26 + 32) = 0;
          *(v26 + 48) = 1;
          outlined consume of Result<_DataTable, Error>(v55, v53);
          if (v57)
          {
            v58 = 1;
LABEL_17:
            v27 = v56;
            v28 = v60;
            *&v59 = v60;
            outlined copy of Result<_DataTable, Error>(v60, 1);
            swift_errorRetain(v28);
            v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
            v30 = v28;
            v31 = _getErrorEmbeddedNSError<A>(_:)(&v59, v29, &protocol self-conformance witness table for Error);
            if (v31)
            {
              v32 = v31;
              outlined consume of Result<_DataTable, Error>(v30, 1);
            }

            else
            {
              v32 = swift_allocError(v29, &protocol self-conformance witness table for Error, 0, 0);
              *v43 = v30;
            }

            outlined consume of Result<_DataTable, Error>(v30, 1);
            v38 = v32;
            v37 = v58;
            goto LABEL_24;
          }

          *&v59 = 0;
          *(&v59 + 1) = 0xE000000000000000;
          v33 = v60;
          outlined copy of Result<_DataTable, Error>(v60, 0);
          _StringGuts.grow(_:)(36);
          SBYTE8(v59);
          *&v59 = 0xD000000000000021;
          *(&v59 + 1) = "Can't represent value as Int32." + 0x8000000000000000;
          String.append(_:)(__PAIR128__(object, countAndFlagsBits));
          v34._countAndFlagsBits = 39;
          v34._object = 0xE100000000000000;
          String.append(_:)(v34);
          v52 = v59;
          v35 = swift_allocError(&type metadata for MLCreateError, v25, 0, 0);
          *v36 = v52;
          *(v36 + 16) = 0;
          *(v36 + 32) = 0;
          *(v36 + 48) = 1;
          swift_willThrow();
          outlined consume of Result<_DataTable, Error>(v33, 0);
          v37 = 1;
          v38 = v35;
          v27 = v56;
LABEL_24:
          outlined consume of Result<_DataTable, Error>(*v50, *(v50 + 8));
          object;
          outlined consume of Result<_DataTable, Error>(v51, v37);
          v60 = v38;
          *v50 = v38;
          *(v50 + 8) = 1;
          v57 = 1;
LABEL_25:
          v17 = v27 + 1;

          v44 = CMLSequence.size.getter();
          v45 = specialized RandomAccessCollection<>.distance(from:to:)(0, v44);

          if (v17 == v45)
          {
            goto LABEL_28;
          }
        }

        v23 = *(v55 + 16);
        outlined copy of Result<_DataTable, Error>(v55, 0);

        v39 = specialized String.withCString<A>(_:)(closure #1 in CMLTable.column(name:)partial apply, v23, countAndFlagsBits, object, type metadata accessor for CMLColumn, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));

        outlined consume of Result<_DataTable, Error>(v55, 0);
        v40 = type metadata accessor for _UntypedColumn();
        v41 = swift_allocObject(v40, 24, 7);
        v42 = v41;
        *(v41 + 16) = v39;
        if ((v57 & 1) == 0)
        {
          outlined copy of Result<_DataTable, Error>(v60, 0);
          outlined copy of Result<_DataTable, Error>(v42, 0);

          CMLTable.addColumn(name:_:)(countAndFlagsBits, object, v39);
          v57 = 0;
          outlined consume of Result<_DataTable, Error>(v42, 0);

          outlined consume of Result<_DataTable, Error>(v60, 0);
          object;
          outlined consume of Result<_DataTable, Error>(v42, 0);
          v27 = v56;
          goto LABEL_25;
        }

        v58 = 0;
        v51 = v41;
        goto LABEL_17;
      }

LABEL_28:

      _DataTable.columnNamesDidChange()();

      outlined consume of Result<_DataTable, Error>(v55, v53);
    }
  }
}

uint64_t MLDataTable.addImpl(newColumn:named:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *v3;
  if (*(v3 + 8))
  {
    *&v19 = *v3;
    outlined copy of Result<_DataTable, Error>(v4, 1);
    swift_errorRetain(v4);
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v6 = _getErrorEmbeddedNSError<A>(_:)(&v19, v5, &protocol self-conformance witness table for Error);
    if (v6)
    {
      v7 = v6;
      outlined consume of Result<_DataTable, Error>(v4, 1);
    }

    else
    {
      v7 = swift_allocError(v5, &protocol self-conformance witness table for Error, 0, 0);
      *v17 = v4;
    }

    LOBYTE(v16._object) = 1;
    v16._countAndFlagsBits = v4;
  }

  else
  {
    if (!*(a1 + 8))
    {
      v22 = a3;
      v12 = *a1;
      v20 = *(v4 + 16);
      v14 = *(v12 + 16);
      outlined copy of Result<_DataTable, Error>(v4, 0);
      outlined copy of Result<_DataTable, Error>(v12, 0);

      v15 = v22;
      v22 = v14;
      CMLTable.addColumn(name:_:)(a2, v15, v14);
      outlined consume of Result<_DataTable, Error>(v12, 0);

      return outlined consume of Result<_DataTable, Error>(v4, 0);
    }

    outlined copy of Result<_DataTable, Error>(v4, 0);
    _StringGuts.grow(_:)(36);
    0;
    *&v19 = 0xD000000000000021;
    *(&v19 + 1) = "Can't represent value as Int32." + 0x8000000000000000;
    v9._countAndFlagsBits = a2;
    v9._object = a3;
    String.append(_:)(v9);
    v9._countAndFlagsBits = 39;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    v21 = v19;
    v10 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v7 = swift_allocError(&type metadata for MLCreateError, v10, 0, 0);
    *v11 = v19;
    *(v11 + 16) = 0;
    *(v11 + 32) = 0;
    *(v11 + 48) = 1;
    swift_willThrow();
    v16._countAndFlagsBits = v4;
  }

  outlined consume of Result<_DataTable, Error>(v16._countAndFlagsBits, v16._object);
  result = outlined consume of Result<_DataTable, Error>(*v3, *(v3 + 8));
  *v3 = v7;
  *(v3 + 8) = 1;
  return result;
}

uint64_t *_s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(uint64_t a1)
{
  *&v40 = v2;
  v37 = v1;
  empty = tc_v1_sframe_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v4 = empty;
  v5 = type metadata accessor for CMLTable();
  v6 = swift_allocObject(v5, 24, 7);
  *(v6 + 16) = v4;
  v7 = type metadata accessor for _DataTable();
  v8 = swift_allocObject(v7, 40, 7);
  *(v8 + 24) = 0;
  *(v8 + 16) = v6;
  specialized _NativeDictionary.makeIterator()(a1);
  v9 = v28;
  v44 = v29;
  v41 = v31;
  v10 = v32;
  v43 = (v30 + 64) >> 6;
  v45 = a1;

  v39 = v8;
  for (i = v28; ; v9 = i)
  {
    if (v10)
    {
      v11 = v41;
      goto LABEL_22;
    }

    v12 = v41 + 1;
    if (__OFADD__(1, v41))
    {
      BUG();
    }

    if (v12 >= v43)
    {
      break;
    }

    v10 = *(v44 + 8 * v12);
    if (v10)
    {
      v11 = v41 + 1;
    }

    else
    {
      v13 = v41 + 2;
      if (v41 + 2 >= v43)
      {
        break;
      }

      v10 = *(v44 + 8 * v12 + 8);
      if (!v10)
      {
        v13 = v41 + 3;
        if (v41 + 3 >= v43)
        {
          break;
        }

        v10 = *(v44 + 8 * v12 + 16);
        if (!v10)
        {
          v13 = v41 + 4;
          if (v41 + 4 >= v43)
          {
            break;
          }

          v10 = *(v44 + 8 * v12 + 24);
          if (!v10)
          {
            v13 = v41 + 5;
            if (v41 + 5 >= v43)
            {
              break;
            }

            v10 = *(v44 + 8 * v12 + 32);
            if (!v10)
            {
              v13 = v41 + 6;
              if (v41 + 6 >= v43)
              {
                break;
              }

              v10 = *(v44 + 8 * v12 + 40);
              if (!v10)
              {
                v13 = v41 + 7;
                if (v41 + 7 >= v43)
                {
                  break;
                }

                v10 = *(v44 + 8 * v12 + 48);
                if (!v10)
                {
                  v21 = v41 + 8;
                  v22 = v45;
                  while (v21 < v43)
                  {
                    v10 = *(v44 + 8 * v21++);
                    if (v10)
                    {
                      v11 = v21 - 1;
                      goto LABEL_22;
                    }
                  }

                  goto LABEL_33;
                }
              }
            }
          }
        }
      }

      v11 = v13;
    }

LABEL_22:
    _BitScanForward64(&v14, v10);
    v15 = *(v9 + 56);
    v16 = (v11 << 10) | (16 * v14);
    v17 = *(v15 + v16);
    if (*(v15 + v16 + 8))
    {
      outlined copy of Result<_DataTable, Error>(*(v15 + v16), 1);

      *&v33 = 0;
      *(&v33 + 1) = 0xE000000000000000;
      v34 = v17;
      v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
      _print_unlocked<A, B>(_:_:)(&v34, &v33, v23, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      v40 = v33;
      v24 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      v25 = swift_allocError(&type metadata for MLCreateError, v24, 0, 0);
      *v26 = v40;
      *(v26 + 16) = 0;
      *(v26 + 32) = 0;
      *(v26 + 48) = 0;
      *&v40 = v25;
      swift_willThrow();
      outlined consume of Result<_DataTable, Error>(v17, 1);

      v45;
    }

    v36 = v10;
    v41 = v11;
    v18 = *(v9 + 48);
    v19 = *(v18 + v16 + 8);
    v35 = *(v18 + v16);
    v20 = *(v17 + 16);
    outlined copy of Result<_DataTable, Error>(v17, 0);
    v38 = v17;
    outlined copy of Result<_DataTable, Error>(v17, 0);

    CMLTable.addColumn(name:_:)(v35, v19, v20);
    if (v40)
    {
      v19;

      outlined consume of Result<_DataTable, Error>(v38, 0);
      outlined consume of Result<_DataTable, Error>(v38, 0);

      v45;
    }

    v10 = (v36 - 1) & v36;

    outlined consume of Result<_DataTable, Error>(v38, 0);
    outlined consume of Result<_DataTable, Error>(v38, 0);
    v19;
    v8 = v39;
  }

  v22 = v45;
LABEL_33:
  v22;

  result = v37;
  *v37 = v8;
  *(result + 8) = 0;
  return result;
}

uint64_t key path getter for MLDataTable.subscript(_:) : MLDataTable(uint64_t a1, Swift::String *a2)
{
  v3 = v2;
  v4 = *a1;
  v9 = *a2;
  v8 = *(a1 + 8);
  outlined copy of Result<_DataTable, Error>(*a1, v8);
  MLDataTable.subscript.getter(v9);
  outlined consume of Result<_DataTable, Error>(v4, v8);
  result = v6;
  *v3 = v6;
  *(v3 + 8) = v7;
  return result;
}

uint64_t key path setter for MLDataTable.subscript(_:) : MLDataTable(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = a2;
  v3 = *a3;
  v4 = a3[1];
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;

  outlined copy of Result<_DataTable, Error>(v7, v5);
  return MLDataTable.subscript.setter(&v7, v3, v4);
}

uint64_t MLDataTable.setColumnImpl(newColumn:named:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v5 = *a1;
  v31 = *(a1 + 8);
  v6 = *v3;
  LOBYTE(v28) = *(v3 + 8);
  v26 = v3;
  v29 = v5;
  if (v28)
  {
    outlined copy of Result<_DataTable, Error>(v6, 1);
    v7 = tc_v1_flex_list_create(0);
    if (!v7)
    {
      BUG();
    }

    v8 = v7;
    v9 = type metadata accessor for CMLSequence();
    v10 = swift_allocObject(v9, 25, 7);
    *(v10 + 16) = v8;
    *(v10 + 24) = 1;
    outlined consume of Result<_DataTable, Error>(v6, 1);
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(v6, 0);
    _DataTable.columnNames.getter();
    outlined consume of Result<_DataTable, Error>(v6, 0);
    v10 = v24;
  }

  v25[0] = v30;
  v27 = a3;
  v25[1] = a3;
  v11 = alloca(24);
  v12 = alloca(32);
  v24 = v25;
  v13 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v23, v10);

  v14 = v26;
  if (v13)
  {
    MLDataTable.removeImpl(_:)(v30, v27);
  }

  if (v28)
  {
    v25[0] = v6;
    swift_errorRetain(v6);
    outlined copy of Result<_DataTable, Error>(v6, 1);
    v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v16 = _getErrorEmbeddedNSError<A>(_:)(v25, v15, &protocol self-conformance witness table for Error);
    if (v16)
    {
      v17 = v16;
      outlined consume of Result<_DataTable, Error>(v6, 1);
    }

    else
    {
      v17 = swift_allocError(v15, &protocol self-conformance witness table for Error, 0, 0);
      *v21 = v6;
    }

    outlined consume of Result<_DataTable, Error>(v6, 1);
    result = outlined consume of Result<_DataTable, Error>(*v14, *(v14 + 8));
    *v14 = v17;
    *(v14 + 8) = 1;
  }

  else
  {
    if (v31)
    {
      outlined copy of Result<_DataTable, Error>(v6, 0);
    }

    else
    {
      v28 = *(v6 + 16);
      v18 = v29;
      v19 = *(v29 + 16);
      outlined copy of Result<_DataTable, Error>(v6, 0);
      outlined copy of Result<_DataTable, Error>(v18, 0);

      v20 = v30;
      v30 = v19;
      CMLTable.addColumn(name:_:)(v20, v27, v19);
      outlined consume of Result<_DataTable, Error>(v29, 0);
    }

    return outlined consume of Result<_DataTable, Error>(v6, 0);
  }

  return result;
}

void (*MLDataTable.subscript.modify(void *a1, uint64_t a2, void *a3))(uint64_t **a1, char a2)
{
  v5 = malloc(0x28uLL);
  *a1 = v5;
  v5[4] = v3;
  v5[3] = a3;
  v5[2] = a2;
  v6._countAndFlagsBits = a2;
  v6._object = a3;
  MLDataTable.subscript.getter(v6);
  return MLDataTable.subscript.modify;
}

void MLDataTable.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v14 = **a1;
  v4 = *(v2 + 8);

  v15 = v2[2];
  v5 = v2[4];
  if (a2)
  {
    v16 = v4;
    v6 = v14;
    outlined copy of Result<_DataTable, Error>(v14, v4);
    MLDataTable.willMutate()();
    v12 = v14;
    v13 = v4 & 1;
    MLDataTable.setColumnImpl(newColumn:named:)(&v12, v15, v3);
    v3;
    outlined consume of Result<_DataTable, Error>(v6, v16);
    if (!*(v5 + 8))
    {
      v7 = *v2[4];
      outlined copy of Result<_DataTable, Error>(v7, 0);
      _DataTable.columnNamesDidChange()();
      outlined consume of Result<_DataTable, Error>(v7, 0);
    }

    v8 = *v2;
    v9 = *(v2 + 2);
    goto LABEL_7;
  }

  MLDataTable.willMutate()();
  v10 = v14;
  v12 = v14;
  v13 = v4 & 1;
  MLDataTable.setColumnImpl(newColumn:named:)(&v12, v15, v3);
  v3;
  outlined consume of Result<_DataTable, Error>(v10, v4);
  if (!*(v5 + 8))
  {
    v11 = *v2[4];
    outlined copy of Result<_DataTable, Error>(v11, 0);
    _DataTable.columnNamesDidChange()();
    v8 = v11;
    LOBYTE(v9) = 0;
LABEL_7:
    outlined consume of Result<_DataTable, Error>(v8, v9);
  }

  free(v2);
}

{
  v2 = *a1;
  v3 = **a1;
  v4 = *(*a1 + 8);
  v9 = (*a1)[6];
  v5 = v2[3];
  v6 = v2[2];
  v7 = v3;
  v8 = v4 & 1;

  if (a2)
  {
    outlined copy of Result<_DataTable, Error>(v3, v4);
    MLDataTable.subscript.setter(&v7, v6, v5);
    outlined consume of Result<_DataTable, Error>(*v2, *(v2 + 2));
  }

  else
  {
    MLDataTable.subscript.setter(&v7, v6, v5);
  }

  free(v2);
}

uint64_t key path getter for MLDataTable.subscript<A>(_:) : <A>MLDataTableA(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v13 = *(a2 + a3 - 16);
  v14 = *(a2 + a3 - 8);
  v6 = *a2;
  v7 = a2[1];
  v5 = *a1;
  v12 = *(a1 + 8);
  outlined copy of Result<_DataTable, Error>(*a1, v12);
  v8._countAndFlagsBits = v6;
  v8._object = v7;
  MLDataTable.subscript.getter(v8, v13, v14);
  outlined consume of Result<_DataTable, Error>(v5, v12);
  result = v10;
  *v4 = v10;
  *(v4 + 8) = v11;
  return result;
}

uint64_t key path setter for MLDataTable.subscript<A>(_:) : <A>MLDataTableA(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = a2;
  v3 = *a3;
  v4 = a3[1];
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;

  outlined copy of Result<_DataTable, Error>(v7, v5);
  return MLDataTable.subscript.setter(&v7, v3, v4);
}

void (*MLDataTable.subscript.modify(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  v7 = malloc(0x38uLL);
  *a1 = v7;
  v7[6] = v5;
  v7[5] = a5;
  v7[4] = a4;
  v7[3] = a3;
  v7[2] = a2;
  v8._countAndFlagsBits = a2;
  v8._object = a3;
  MLDataTable.subscript.getter(v8, a4, a5);
  return MLDataTable.subscript.modify;
}

uint64_t MLDataTable.removeImpl(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (*(v2 + 8))
  {
    v12[0] = *v2;
    outlined copy of Result<_DataTable, Error>(v3, 1);
    swift_errorRetain(v3);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v5 = _getErrorEmbeddedNSError<A>(_:)(v12, v4, &protocol self-conformance witness table for Error);
    if (v5)
    {
      v6 = v5;
      outlined consume of Result<_DataTable, Error>(v3, 1);
    }

    else
    {
      v6 = swift_allocError(v4, &protocol self-conformance witness table for Error, 0, 0);
      *v10 = v3;
    }

    outlined consume of Result<_DataTable, Error>(v3, 1);
    v9 = 1;
  }

  else
  {
    v7 = *(v3 + 16);
    outlined copy of Result<_DataTable, Error>(*v2, 0);

    v8 = v7;
    v6 = 0;
    specialized String.withCString<A>(_:)(a1, a2, v8);
    v9 = 0;
    outlined consume of Result<_DataTable, Error>(v3, 0);
  }

  return outlined consume of Result<(), Error>(v6, v9);
}

uint64_t MLDataTable.renameImpl(named:to:)(Swift::String named, Swift::String to)
{
  v3 = *v2;
  if (*(v2 + 8))
  {
    v11[0] = *v2;
    outlined copy of Result<_DataTable, Error>(v3, 1);
    swift_errorRetain(v3);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v5 = _getErrorEmbeddedNSError<A>(_:)(v11, v4, &protocol self-conformance witness table for Error);
    if (v5)
    {
      v6 = v5;
      outlined consume of Result<_DataTable, Error>(v3, 1);
    }

    else
    {
      v6 = swift_allocError(v4, &protocol self-conformance witness table for Error, 0, 0);
      *v10 = v3;
    }

    outlined consume of Result<_DataTable, Error>(v3, 1);
    goto LABEL_8;
  }

  countAndFlagsBits = to._countAndFlagsBits;
  v11[1] = *(v3 + 16);
  toa = to._object;

  v8._countAndFlagsBits = countAndFlagsBits;
  v8._object = toa;
  CMLTable.renameColumn(named:to:)(named, v8);
  result = outlined consume of Result<_DataTable, Error>(v3, 0);
  if (v6)
  {
LABEL_8:
    result = outlined consume of Result<_DataTable, Error>(*v2, *(v2 + 8));
    *v2 = v6;
    *(v2 + 8) = 1;
  }

  return result;
}

Swift::Void __swiftcall MLDataTable.removeColumn(named:)(Swift::String named)
{
  MLDataTable.willMutate()();
  MLDataTable.removeImpl(_:)(named._countAndFlagsBits, named._object);
  if (!*(v1 + 8))
  {
    v2 = *v1;
    outlined copy of Result<_DataTable, Error>(v2, 0);
    _DataTable.columnNamesDidChange()();
    outlined consume of Result<_DataTable, Error>(v2, 0);
  }
}

uint64_t MLDataTable.randomSample(by:seed:)(uint64_t a1, double a2)
{
  v4 = v2;
  v5 = *v3;
  if (*(v3 + 8))
  {
    v21[0] = *v3;
    outlined copy of Result<_DataTable, Error>(v5, 1);
    swift_errorRetain(v5);
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v7 = _getErrorEmbeddedNSError<A>(_:)(v21, v6, &protocol self-conformance witness table for Error);
    if (v7)
    {
      v8 = v7;
      outlined consume of Result<_DataTable, Error>(v5, 1);
    }

    else
    {
      v8 = swift_allocError(v6, &protocol self-conformance witness table for Error, 0, 0);
      *v13 = v5;
    }

    result = outlined consume of Result<_DataTable, Error>(v5, 1);
    v15 = 1;
  }

  else
  {
    if (a1 < 0)
    {
      BUG();
    }

    v10 = *(*(v5 + 16) + 16);
    v11 = *v3;
    *&v21[1] = a2;
    outlined copy of Result<_DataTable, Error>(v11, 0);
    v12 = specialized handling<A, B, C, D>(_:_:_:_:)(v10, a1);
    v16 = v12;
    if (!v12)
    {
      BUG();
    }

    v15 = 0;
    v17 = type metadata accessor for CMLTable();
    v18 = swift_allocObject(v17, 24, 7);
    *(v18 + 16) = v16;
    v19 = v18;
    v20 = type metadata accessor for _DataTable();
    v8 = swift_allocObject(v20, 40, 7);
    *(v8 + 24) = 0;
    *(v8 + 16) = v19;
    result = outlined consume of Result<_DataTable, Error>(v5, 0);
  }

  *v4 = v8;
  *(v4 + 8) = v15;
  return result;
}

uint64_t MLDataTable.exclude<A>(_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v13 = a3;
  v15 = v6;
  v14 = a2;
  v16 = a6;
  v11 = a1;
  v7 = type metadata accessor for Array(0, a4);

  swift_getWitnessTable(&protocol conformance descriptor for [A], v7);
  MLUntypedColumn.init<A>(_:)(&v11, v7);
  v11 = v9;
  v12 = v10;
  MLDataTable.filtered(isExcluding:values:in:)(v16, &v11, v14, v13);
  return outlined consume of Result<_DataTable, Error>(v11, v12);
}

char MLDataTable.filtered(isExcluding:values:in:)(unsigned __int8 a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v17 = v4;
  v6 = *v5;
  if (*(v5 + 8))
  {
    v19[0] = *v5;
    outlined copy of Result<_DataTable, Error>(v6, 1);
    swift_errorRetain(v6);
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v8 = _getErrorEmbeddedNSError<A>(_:)(v19, v7, &protocol self-conformance witness table for Error);
    if (v8)
    {
      v9 = v8;
      outlined consume of Result<_DataTable, Error>(v6, 1);
    }

    else
    {
      v9 = swift_allocError(v7, &protocol self-conformance witness table for Error, 0, 0);
      *v14 = v6;
    }

    outlined consume of Result<_DataTable, Error>(v6, 1);
    result = 1;
  }

  else
  {
    v18 = *a2;
    v11 = *(a2 + 8);
    v16 = v6;

    closure #1 in MLDataTable.filtered(isExcluding:values:in:)(&v16, v18, v11, a3, a4, a1);
    outlined consume of Result<_DataTable, Error>(v6, 0);
    v9 = v19[0];
    result = 0;
  }

  v15 = v17;
  *v17 = v9;
  *(v15 + 8) = result;
  return result;
}

uint64_t closure #1 in MLDataTable.filtered(isExcluding:values:in:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a3)
  {
    *&v22 = 0;
    *(&v22 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(85);
    v9._object = "el's set of labels." + 0x8000000000000000;
    v9._countAndFlagsBits = 0xD000000000000052;
    String.append(_:)(v9);
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    v23[0] = a2;
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    _print_unlocked<A, B>(_:_:)(v23, &v21, v10, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    object = v21._object;
    String.append(_:)(v21);
    object;
    v9._countAndFlagsBits = 39;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    v26 = v22;
    v12 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v12, 0, 0);
    *v13 = v26;
    *(v13 + 16) = 0;
    *(v13 + 32) = 0;
    *(v13 + 48) = 0;
    return swift_willThrow();
  }

  else
  {
    v25 = v6;
    *&v26 = *(*a1 + 16);
    v17 = *(a2 + 16);
    v24 = a4;
    v23[1] = v7;
    outlined copy of Result<_DataTable, Error>(a2, 0);

    v18 = CMLTable.filtered(_:columnName:isExcluding:)(v17, v24, a5, a6);
    if (v7)
    {

      return outlined consume of Result<_DataTable, Error>(a2, 0);
    }

    else
    {
      v19 = v18;
      outlined consume of Result<_DataTable, Error>(a2, 0);

      v20 = type metadata accessor for _DataTable();
      result = swift_allocObject(v20, 40, 7);
      *(result + 24) = 0;
      *(result + 16) = v19;
      *v25 = result;
    }
  }

  return result;
}

uint64_t MLDataTable.join(with:on:type:)(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v13 = v3;
  v14 = *a1;
  LOBYTE(v17) = *(a1 + 8);
  v5 = *v4;
  v6 = *(v4 + 8);
  switch(*a3)
  {
    case 0:
      v7 = 0x72656E6E69;
      goto LABEL_6;
    case 1:
      v7 = 0x726574756FLL;
      goto LABEL_6;
    case 2:
      v16[0] = 1952867692;
      v8 = 0xE400000000000000;
      goto LABEL_7;
    case 3:
      v7 = 0x7468676972;
LABEL_6:
      v16[0] = v7;
      v8 = 0xE500000000000000;
LABEL_7:
      v15 = v8;
      v16[1] = v8;

      outlined copy of Result<_DataTable, Error>(v5, v6);
      v9 = v17;
      outlined copy of Result<_DataTable, Error>(v14, v17);
      v17 = specialized binaryDo<A, B, C>(_:_:_:)(v5, v6, v14, v17, a2, v16);
      v11 = v10;
      outlined consume of Result<_DataTable, Error>(v14, v9);
      outlined consume of Result<_DataTable, Error>(v5, v6);
      v15;
      result = v13;
      *v13 = v17;
      *(v13 + 8) = v11 & 1;
      return result;
  }
}

uint64_t closure #1 in MLDataTable.join(with:on:type:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v63 = a4;
  v7 = v4;
  v8 = v5;
  v66 = *a1;
  v67 = *a2;
  v9 = tc_v1_flex_list_create(0);
  if (!v9)
  {
    BUG();
  }

  v10 = v9;
  v64 = v7;
  v11 = type metadata accessor for CMLSequence();
  inited = swift_initStackObject(v11, v57);
  v70 = inited;
  *(inited + 16) = v10;
  *(inited + 24) = 1;
  v13 = a3[2];
  if (v13)
  {
    v73 = type metadata accessor for CMLFeatureValue();

    object = a3;
    v14 = a3 + 5;
    while (1)
    {
      v72 = v13;
      v15 = *(v14 - 1);
      v16 = *v14;
      swift_bridgeObjectRetain_n(*v14, 2);
      v17 = CMLFeatureValue.__allocating_init(_:)(v15, v16);
      if (v5)
      {
        break;
      }

      v18 = v17;
      v16;
      CMLSequence.append(_:)(v18);

      v14 += 2;
      v13 = v72 - 1;
      if (v72 == (&dword_0 + 1))
      {
        object;
        goto LABEL_17;
      }
    }

    v49 = "CreateML/MLDataValueConvertible.swift";
    v50 = 37;
    v51 = 170;
    v52 = v5;
    goto LABEL_23;
  }

  _DataTable.columnNames.getter();
  v19 = v68;
  _DataTable.columnNames.getter();
  v65 = v68;
  swift_retain_n(v19, 2);
  v20 = CMLSequence.size.getter();
  v21 = specialized RandomAccessCollection<>.distance(from:to:)(0, v20);

  if (v21)
  {
    v22 = 0;
    v73 = v19;
    while (1)
    {
      CMLSequence.value(at:)(v22);
      if (v8)
      {
        break;
      }

      v72 = v22;
      v23 = CMLFeatureValue.stringValue()();
      object = v23._object;
      v8 = v24;
      if (v24)
      {
        v24;

        v68 = 0;
        v69 = 0xE000000000000000;
        _StringGuts.grow(_:)(37);
        v69;
        v68 = 0xD000000000000022;
        v69 = "able.ColumnNames.swift" + 0x8000000000000000;
        v61 = v72;
        v53._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v54 = v53._object;
        String.append(_:)(v53);
        v54;
        v55._countAndFlagsBits = 46;
        v55._object = 0xE100000000000000;
        String.append(_:)(v55);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v68, v69, "CreateML/MLDataTable.ColumnNames.swift", 38, 2, 17, 0);
        BUG();
      }

      countAndFlagsBits = v23._countAndFlagsBits;

      v26 = CMLSequence.size.getter();
      v27 = specialized RandomAccessCollection<>.distance(from:to:)(0, v26);

      if (v72 >= v27)
      {
        BUG();
      }

      v28 = v72;
      v62 = countAndFlagsBits;
      v68 = countAndFlagsBits;
      v29 = object;
      v69 = object;
      v30 = alloca(24);
      v31 = alloca(32);
      v58 = &v68;
      if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v56, v65))
      {
        type metadata accessor for CMLFeatureValue();

        v32 = CMLFeatureValue.__allocating_init(_:)(v62, v29);
        v29;
        CMLSequence.append(_:)(v32);

        v19 = v73;
        v28 = v72;
      }

      else
      {
        v29;
        v19 = v73;
      }

      v33 = CMLSequence.size.getter();
      v34 = v28 + 1;
      v35 = specialized RandomAccessCollection<>.distance(from:to:)(0, v33);

      v36 = v34 == v35;
      v22 = v34;
      if (v36)
      {
        goto LABEL_16;
      }
    }

    v49 = "CreateML/SequenceType.swift";
    v50 = 27;
    v51 = 76;
    v52 = v8;
LABEL_23:
    swift_unexpectedError(v52, v49, v50, 1, v51);
    BUG();
  }

LABEL_16:

  v19;
LABEL_17:
  v72 = &v56;
  v37 = *(v66 + 16);
  v38 = *(v67 + 16);
  object = *v63;
  v39 = *(v63 + 8);
  v40 = alloca(40);
  v41 = alloca(48);
  v58 = v37;
  v59 = v38;
  v60 = v70;
  v73 = v37;

  v42 = specialized String.withCString<A>(_:)(partial apply for closure #1 in CMLTable.init(joiningMultiple:and:columnNames:method:), &v56, object, v39);
  if (v8)
  {

    v39;
    swift_setDeallocating(v70);
    v43 = CMLFeatureValue.deinit();
    return swift_deallocClassInstance(v43, 25, 7);
  }

  else
  {
    v45 = v42;

    v39;

    v46 = type metadata accessor for CMLTable();
    v47 = swift_allocObject(v46, 24, 7);
    *(v47 + 16) = v45;
    v48 = type metadata accessor for _DataTable();
    result = swift_allocObject(v48, 40, 7);
    *(result + 24) = 0;
    *(result + 16) = v47;
    *v64 = result;
  }

  return result;
}

Swift::Int MLDataTable.JoinType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)(0);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t closure #1 in MLDataTable.subscript.getter(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = *a1;
  v7 = a1[1];
  *v3 = *a1;
  v3[1] = v7;

  outlined copy of Result<_DataTable, Error>(a2, a3);
  v8._countAndFlagsBits = v6;
  v8._object = v7;
  MLDataTable.subscript.getter(v8);
  return outlined consume of Result<_DataTable, Error>(a2, a3);
}

uint64_t closure #2 in MLDataTable.subscript.getter(uint64_t *a1, uint64_t a2, int a3)
{
  v14 = a3;
  v13 = a2;
  v4 = v3;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v12 = v3 + 2;
  v8 = *(a1 + 24);

  outlined copy of Result<_DataTable, Error>(v7, v8);
  outlined consume of Result<_DataTable, Error>(v7, v8);
  *v4 = v5;
  v4[1] = v6;

  outlined copy of Result<_DataTable, Error>(v7, v8);
  v6;
  v10 = v13;
  v11 = v14 & 1;
  outlined copy of Result<_DataTable, Error>(v13, v14);
  MLUntypedColumn.subscript.getter(&v10);
  outlined consume of Result<_DataTable, Error>(v10, v11);
  return outlined consume of Result<_DataTable, Error>(v7, v8);
}

uint64_t MLDataTable.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v22[1] = v4;
  v23 = a1;
  v6 = *v5;
  LOBYTE(v27) = *(v5 + 8);
  v25 = a3;
  v26 = v6;
  v24 = a2;
  if (v27)
  {
    outlined copy of Result<_DataTable, Error>(v6, 1);
    v7 = tc_v1_flex_list_create(0);
    if (!v7)
    {
      BUG();
    }

    v8 = v7;
    v9 = type metadata accessor for CMLSequence();
    v10 = swift_allocObject(v9, 25, 7);
    *(v10 + 16) = v8;
    *(v10 + 24) = 1;
    outlined consume of Result<_DataTable, Error>(v6, 1);
    v11 = _swiftEmptyDictionarySingleton;
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(v6, 0);
    _DataTable.columnNames.getter();
    outlined consume of Result<_DataTable, Error>(v6, 0);
    v10 = v29;
    outlined copy of Result<_DataTable, Error>(v6, 0);
    v11 = _DataTable.columnIndexes.getter();
    outlined consume of Result<_DataTable, Error>(v6, 0);
  }

  v12 = v28;
  v13 = swift_allocObject(&unk_3944F8, 64, 7);
  v14 = v25;
  v13[2] = v25;
  v13[3] = v12;
  v13[4] = v10;
  v13[5] = v11;
  v13[6] = v23;
  v13[7] = v24;
  if (v27)
  {
    v15 = v26;
    v29 = v26;
    outlined copy of Result<_DataTable, Error>(v26, 1);
    outlined copy of Result<_DataTable, Error>(v26, 1);
    v27 = v10;

    v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v17 = _getErrorEmbeddedNSError<A>(_:)(&v29, v16, &protocol self-conformance witness table for Error);
    if (v17)
    {
      v18 = v17;
      outlined consume of Result<_DataTable, Error>(v26, 1);
    }

    else
    {
      v18 = swift_allocError(v16, &protocol self-conformance witness table for Error, 0, 0);
      *v20 = v26;
    }

    outlined consume of Result<_DataTable, Error>(v15, 1);

    v19 = 1;
  }

  else
  {
    v22[0] = v26;
    outlined copy of Result<_DataTable, Error>(v26, 0);

    closure #2 in MLDataTable.map<A>(_:)(v22, partial apply for closure #1 in MLDataTable.map<A>(_:), v13, v14, v12);

    outlined consume of Result<_DataTable, Error>(v26, 0);

    v18 = v29;
    v19 = 0;
  }

  v29 = v18;
  v30 = v19;
  return MLDataColumn.init(from:)(&v29);
}

{
  v6 = swift_allocObject(&unk_394520, 48, 7);
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a1;
  v6[5] = a2;

  MLDataTable.map<A>(_:)(partial apply for closure #1 in MLDataTable.map<A>(_:), v6, a3, a4);
}

uint64_t closure #1 in MLDataTable.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a5;
  v23 = a4;
  v28 = type metadata accessor for Optional(0, a6);
  v29 = *(v28 - 8);
  v9 = *(v29 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v25 = v22;
  v26 = *(a6 - 8);
  v12 = *(v26 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v27 = v22;
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a1;
  v32 = a1;
  swift_retain_n(a1, 2);
  v30 = a2;

  v31 = a3;
  v15 = a6;
  v16 = v25;

  v23(v22);
  if (__swift_getEnumTagSinglePayload(v16, 1, v15) == 1)
  {
    (*(v29 + 8))(v16, v28);
    type metadata accessor for CMLFeatureValue();
    v17 = CMLFeatureValue.__allocating_init()();
    v32;
    v31;
  }

  else
  {
    v18 = v27;
    v19 = v16;
    v20 = v26;
    (*(v26 + 32))(v27, v19, v15);
    v17 = MLDataValueConvertible.featureValue.getter(v15, a7);
    v32;
    v31;

    (*(v20 + 8))(v18, v15);
  }

  return v17;
}

uint64_t closure #2 in MLDataTable.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = v5;
  (*(a5 + 8))(a4);
  result = CMLTable.apply(transform:type:)(a2, a3, 0x5060403020100uLL >> (8 * v12));
  if (!v6)
  {
    v8 = result;
    v9 = type metadata accessor for _UntypedColumn();
    result = swift_allocObject(v9, 24, 7);
    *(result + 16) = v8;
    *v11 = result;
  }

  return result;
}

uint64_t closure #1 in MLDataTable.map<A>(_:)(__int128 *a1, void (*a2)(__int128 *, void, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v7 = *(a1 + 2);
  v9 = *a1;
  v10 = v7;
  a2(&v9, a2, a3);
  return __swift_storeEnumTagSinglePayload(v6, 0, 1, a4);
}

uint64_t MLDataTable.dropMissing()()
{
  v2 = v0;
  v3 = *v1;
  if (*(v1 + 8))
  {
    v18[0] = *v1;
    outlined copy of Result<_DataTable, Error>(v3, 1);
    swift_errorRetain(v3);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v5 = _getErrorEmbeddedNSError<A>(_:)(v18, v4, &protocol self-conformance witness table for Error);
    if (v5)
    {
      v6 = v5;
      outlined consume of Result<_DataTable, Error>(v3, 1);
    }

    else
    {
      v6 = swift_allocError(v4, &protocol self-conformance witness table for Error, 0, 0);
      *v10 = v3;
    }

    result = outlined consume of Result<_DataTable, Error>(v3, 1);
    v12 = 1;
  }

  else
  {
    v7 = *(*(v3 + 16) + 16);
    outlined copy of Result<_DataTable, Error>(*v1, 0);
    v8 = tc_v1_flex_list_create(0);
    v9 = specialized handling<A, B, C, D>(_:_:_:_:)(v7, v8, "any");
    v13 = v9;
    if (!v9)
    {
      BUG();
    }

    v12 = 0;
    v14 = type metadata accessor for CMLTable();
    v15 = swift_allocObject(v14, 24, 7);
    *(v15 + 16) = v13;
    v16 = v15;
    v17 = type metadata accessor for _DataTable();
    v6 = swift_allocObject(v17, 40, 7);
    *(v6 + 24) = 0;
    *(v6 + 16) = v16;
    result = outlined consume of Result<_DataTable, Error>(v3, 0);
  }

  *v2 = v6;
  *(v2 + 8) = v12;
  return result;
}

uint64_t *MLDataTable.fillMissing(columnNamed:with:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v24 = v4;
  v6 = *v5;
  if (*(v5 + 8))
  {
    v22[0] = *v5;
    outlined copy of Result<_DataTable, Error>(v6, 1);
    swift_errorRetain(v6);
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v8 = _getErrorEmbeddedNSError<A>(_:)(v22, v7, &protocol self-conformance witness table for Error);
    if (v8)
    {
      v9 = v8;
      outlined consume of Result<_DataTable, Error>(v6, 1);
    }

    else
    {
      v9 = swift_allocError(v7, &protocol self-conformance witness table for Error, 0, 0);
      *v17 = v6;
    }

    outlined consume of Result<_DataTable, Error>(v6, 1);
    v20 = 1;
  }

  else
  {
    v10 = *(a3 + 16);
    v11 = *a3;
    v12 = *(a3 + 8);
    v27 = v6[2];
    v22[0] = v11;
    v23 = v10;
    v26 = a1;
    v25 = a2;
    outlined copy of Result<_DataTable, Error>(v6, 0);
    outlined copy of MLDataValue(v11, v12, v10);
    v13 = MLDataValue.featureValue.getter(v11, v12, a4);
    outlined consume of MLDataValue(v22[0], v12, v10);
    v14 = alloca(32);
    v15 = alloca(32);
    v22[0] = v27;
    v22[1] = v13;
    v16 = specialized String.withCString<A>(_:)(partial apply for closure #1 in CMLTable.fillMissing(columnNamed:with:), &v21, a1, a2, type metadata accessor for CMLTable, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));

    v19 = type metadata accessor for _DataTable();
    v9 = swift_allocObject(v19, 40, 7);
    *(v9 + 24) = 0;
    *(v9 + 16) = v16;
    v20 = 0;
    outlined consume of Result<_DataTable, Error>(v6, 0);
  }

  result = v24;
  *v24 = v9;
  *(result + 8) = v20;
  return result;
}

uint64_t MLDataTable.dropDuplicates()()
{
  v2 = v0;
  v3 = *v1;
  if (*(v1 + 8))
  {
    v17[0] = *v1;
    outlined copy of Result<_DataTable, Error>(v3, 1);
    swift_errorRetain(v3);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v5 = _getErrorEmbeddedNSError<A>(_:)(v17, v4, &protocol self-conformance witness table for Error);
    if (v5)
    {
      v6 = v5;
      outlined consume of Result<_DataTable, Error>(v3, 1);
    }

    else
    {
      v6 = swift_allocError(v4, &protocol self-conformance witness table for Error, 0, 0);
      *v9 = v3;
    }

    result = outlined consume of Result<_DataTable, Error>(v3, 1);
    v11 = 1;
  }

  else
  {
    v7 = *(*(v3 + 16) + 16);

    v8 = specialized handling<A, B>(_:_:)(v7);
    v12 = v8;
    if (!v8)
    {
      BUG();
    }

    v11 = 0;
    v13 = type metadata accessor for CMLTable();
    v14 = swift_allocObject(v13, 24, 7);
    *(v14 + 16) = v12;
    v15 = v14;
    v16 = type metadata accessor for _DataTable();
    v6 = swift_allocObject(v16, 40, 7);
    *(v6 + 24) = 0;
    *(v6 + 16) = v15;
    result = outlined consume of Result<_DataTable, Error>(v3, 0);
  }

  *v2 = v6;
  *(v2 + 8) = v11;
  return result;
}