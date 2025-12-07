uint64_t AnyClassificationMetrics.init(_:_:)(uint64_t a1, uint64_t a2)
{
  v46 = v2;
  v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v42 = *(v39 - 8);
  v3 = *(v42 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v41 = &v36;
  v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<Int>>);
  v6 = *(*(v38 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v40 = &v36;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v49 = &v36;
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v45 = *(v11 - 8);
  v12 = *(v45 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v15 = *(*(v43 - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v44 = &v36;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v50 = &v36;
  v47 = a1;
  v20 = AnyColumn.wrappedElementType.getter(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v48 = a2;
  v21 = AnyColumn.wrappedElementType.getter(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  if (swift_dynamicCastMetatype(v20, &type metadata for String) && swift_dynamicCastMetatype(v21, &type metadata for String))
  {
    AnyColumn.assumingType<A>(_:)(&type metadata for String, &type metadata for String);
    v36 = 0;
    v37 = 0xE000000000000000;
    v49 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
    OptionalColumnProtocol.filled(with:)(&v36, v11, v49);
    v22 = *(v45 + 8);
    v22(&v36, v11);
    AnyColumn.assumingType<A>(_:)(&type metadata for String, &type metadata for String);
    v36 = 0;
    v37 = 0xE000000000000000;
    v23 = v44;
    OptionalColumnProtocol.filled(with:)(&v36, v11, v49);
    v22(&v36, v11);
    v24 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<String>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<String>>, &protocol conformance descriptor for FilledColumn<A>);
    v25 = v46;
    ClassificationMetrics.init<A, B>(_:_:)(v50, v23, &type metadata for String, v43, v43, &protocol witness table for String, v24, v24);
    v26 = 0;
  }

  else
  {
    if (!swift_dynamicCastMetatype(v20, &type metadata for Int) || !swift_dynamicCastMetatype(v21, &type metadata for Int))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000027, ("sificationMetrics.swift" + 0x8000000000000000), "CreateML/AnyClassificationMetrics.swift", 39, 2, 74, 0);
      BUG();
    }

    v27 = v41;
    AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
    v36 = 0;
    v50 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
    v28 = v39;
    OptionalColumnProtocol.filled(with:)(&v36, v39, v50);
    v29 = *(v42 + 8);
    v29(v27, v28);
    AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
    v36 = 0;
    v30 = v40;
    OptionalColumnProtocol.filled(with:)(&v36, v28, v50);
    v29(v27, v28);
    v31 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<Int>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<Int>>, &protocol conformance descriptor for FilledColumn<A>);
    v25 = v46;
    ClassificationMetrics.init<A, B>(_:_:)(v49, v30, &type metadata for Int, v38, v38, &protocol witness table for Int, v31, v31);
    v26 = 1;
  }

  v32 = type metadata accessor for AnyColumn(0);
  v33 = *(*(v32 - 8) + 8);
  v33(v48, v32);
  v33(v47, v32);
  v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  return swift_storeEnumTagMultiPayload(v25, v34, v26);
}

uint64_t AnyClassificationMetrics.stringLabels.getter()
{
  v45 = v0;
  v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<Int>);
  v42 = *(v43 - 8);
  v1 = *(v42 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v41 = v36;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  v10 = *(*(v9 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  outlined init with copy of Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>(v45, v36);
  if (swift_getEnumCaseMultiPayload(v36, v9) == 1)
  {
    v13 = v41;
    v14 = v43;
    (*(v42 + 32))(v41, v36, v43);
    v15 = ClassificationMetrics.labels.getter(v14);
    v16 = *(v15 + 16);
    if (v16)
    {
      v44 = _swiftEmptyArrayStorage;
      v37 = v16;
      v17 = v15;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
      v18 = v44;
      v19 = specialized _NativeSet.startIndex.getter(v17);
      v21 = v20;
      v23 = v22;
      v38 = v17;
      do
      {
        if (v19 < 0 || v19 >= 1 << *(v17 + 32))
        {
          BUG();
        }

        v24 = *(v17 + 8 * (v19 >> 6) + 56);
        if (!_bittest64(&v24, v19))
        {
          BUG();
        }

        if (*(v17 + 36) != v21)
        {
          BUG();
        }

        v45 = v21;
        v36[1] = *(*(v17 + 48) + 8 * v19);
        v25 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v44 = v18;
        v27 = v18[2];
        v28 = v18[3];
        if (v28 >> 1 <= v27)
        {
          v39 = v25;
          v40 = v26;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v28 >= 2, v27 + 1, 1);
          v26 = v40;
          v25 = v39;
          v18 = v44;
        }

        v18[2] = v27 + 1;
        v29 = 2 * v27;
        v18[v29 + 4] = v25;
        v18[v29 + 5] = v26;
        v17 = v38;
        v30 = specialized _NativeSet.index(after:)(v19, v45, v23 & 1, v38);
        v19 = v30;
        v21 = v31;
        v23 = v32;
        v33 = v37-- == 1;
        v13 = v41;
      }

      while (!v33);
      outlined consume of Set<Int>.Index._Variant(v30, v31, v32);
      v17;
      v14 = v43;
    }

    else
    {
      v15;
      v18 = _swiftEmptyArrayStorage;
    }

    v34 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v18);
    (*(v42 + 8))(v13, v14);
  }

  else
  {
    (*(v5 + 32))(v36, v36, v4);
    v34 = ClassificationMetrics.labels.getter(v4);
    (*(v5 + 8))(v36, v4);
  }

  return v34;
}

uint64_t AnyClassificationMetrics.labelCount.getter()
{
  v22 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<Int>);
  v23 = *(v1 - 8);
  v2 = *(v23 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v24 = &v21;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v25 = &v21;
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  outlined init with copy of Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>(v22, &v21);
  if (swift_getEnumCaseMultiPayload(&v21, v10) == 1)
  {
    v14 = v24;
    v15 = v23;
    (*(v23 + 32))(v24, &v21, v1);
    v16 = ClassificationMetrics.labels.getter(v1);
    v17 = *(v16 + 16);
    v16;
    (*(v15 + 8))(v14, v1);
  }

  else
  {
    v18 = v25;
    (*(v6 + 32))(v25, &v21, v5);
    v19 = ClassificationMetrics.labels.getter(v5);
    v17 = *(v19 + 16);
    v19;
    (*(v6 + 8))(v18, v5);
  }

  return v17;
}

uint64_t AnyClassificationMetrics.exampleCount.getter()
{
  v20 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<Int>);
  v21 = *(v1 - 8);
  v2 = *(v21 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v22 = &v19;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v23 = &v19;
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  outlined init with copy of Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>(v20, &v19);
  if (swift_getEnumCaseMultiPayload(&v19, v10) == 1)
  {
    v14 = v22;
    v15 = v21;
    (*(v21 + 32))(v22, &v19, v1);
    v16 = ClassificationMetrics.exampleCount.getter(v1);
    (*(v15 + 8))(v14, v1);
  }

  else
  {
    v17 = v23;
    (*(v6 + 32))(v23, &v19, v5);
    v16 = ClassificationMetrics.exampleCount.getter(v5);
    (*(v6 + 8))(v17, v5);
  }

  return v16;
}

double AnyClassificationMetrics.accuracy.getter()
{
  v22 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<Int>);
  v19 = *(v1 - 8);
  v2 = *(v19 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v20 = &v18;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v21 = &v18;
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  outlined init with copy of Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>(v22, &v18);
  if (swift_getEnumCaseMultiPayload(&v18, v10) == 1)
  {
    v14 = v20;
    v15 = v19;
    (*(v19 + 32))(v20, &v18, v1);
    v22 = ClassificationMetrics.accuracy.getter(v1);
    (*(v15 + 8))(v14, v1);
  }

  else
  {
    v16 = v21;
    (*(v6 + 32))(v21, &v18, v5);
    v22 = ClassificationMetrics.accuracy.getter(v5);
    (*(v6 + 8))(v16, v5);
  }

  return *&v22;
}

uint64_t outlined init with copy of Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t AnyClassificationMetrics.makeConfusionMatrix()()
{
  v19 = v1;
  v23 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<Int>);
  v20 = *(v2 - 8);
  v3 = *(v20 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v21 = &v19;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v22 = &v19;
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  v12 = *(*(v11 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  outlined init with copy of Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>(v19, &v19);
  if (swift_getEnumCaseMultiPayload(&v19, v11) == 1)
  {
    v15 = v21;
    v16 = v20;
    (*(v20 + 32))(v21, &v19, v2);
    ClassificationMetrics.makeConfusionMatrix<>()(v2, &protocol witness table for Int, &protocol witness table for Int, &protocol witness table for Int);
    return (*(v16 + 8))(v15, v2);
  }

  else
  {
    v18 = v22;
    (*(v7 + 32))(v22, &v19, v6);
    ClassificationMetrics.makeConfusionMatrix<>()(v6, &protocol witness table for String, &protocol witness table for String, &protocol witness table for String);
    return (*(v7 + 8))(v18, v6);
  }
}

uint64_t outlined consume of Set<Int>.Index._Variant(char a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  return result;
}

uint64_t destroy for MLObjectDetector.PersistentParameters(uint64_t a1)
{
  outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
  v1 = *(a1 + 24);
  if (v1 != -1)
  {
    outlined consume of Result<_DataTable, Error>(*(a1 + 16), v1);
  }

  *(a1 + 40);
  return *(a1 + 56);
}

uint64_t initializeWithCopy for MLObjectDetector.PersistentParameters(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  outlined copy of Result<_DataTable, Error>(*a2, v3);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = (a2 + 16);
  v5 = *(a2 + 24);
  if (v5 == -1)
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 16) = *v4;
  }

  else
  {
    v6 = *v4;
    outlined copy of Result<_DataTable, Error>(*v4, v5);
    *(a1 + 16) = v6;
    *(a1 + 24) = v5 & 1;
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 66) = *(a2 + 66);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t assignWithCopy for MLObjectDetector.PersistentParameters(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Result<_DataTable, Error>(*a2, v5);
  v6 = *a1;
  *a1 = v4;
  v7 = *(a1 + 8);
  *(a1 + 8) = v5;
  outlined consume of Result<_DataTable, Error>(v6, v7);
  v8 = (a1 + 16);
  v9 = (a2 + 16);
  v10 = *(a2 + 24);
  if (*(a1 + 24) == 0xFF)
  {
    if (v10 == -1)
    {
      *(a1 + 24) = *(a2 + 24);
      *v8 = *v9;
    }

    else
    {
      v14 = *v9;
      outlined copy of Result<_DataTable, Error>(*v9, v10);
      *(a1 + 16) = v14;
      *(a1 + 24) = v10 & 1;
    }
  }

  else if (v10 == -1)
  {
    outlined destroy of MLDataTable(a1 + 16);
    *v8 = *v9;
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v11 = *v9;
    outlined copy of Result<_DataTable, Error>(*v9, v10);
    v12 = *(a1 + 16);
    *(a1 + 16) = v11;
    v13 = *(a1 + 24);
    *(a1 + 24) = v10 & 1;
    outlined consume of Result<_DataTable, Error>(v12, v13);
  }

  *(a1 + 32) = *(a2 + 32);
  v15 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  v15;
  *(a1 + 48) = *(a2 + 48);
  v16 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);

  v16;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 66) = *(a2 + 66);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  return a1;
}

uint64_t assignWithTake for MLObjectDetector.PersistentParameters(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  outlined consume of Result<_DataTable, Error>(v5, v6);
  v7 = (a1 + 16);
  v8 = (a2 + 16);
  v9 = *(a1 + 24);
  if (v9 == -1)
  {
    *(a1 + 24) = *(a2 + 24);
    *v7 = *v8;
  }

  else
  {
    v10 = *(a2 + 24);
    if (v10 == -1)
    {
      outlined destroy of MLDataTable(a1 + 16);
      *v7 = *v8;
      *(a1 + 24) = *(a2 + 24);
    }

    else
    {
      v11 = *(a1 + 16);
      *(a1 + 16) = *v8;
      *(a1 + 24) = v10 & 1;
      outlined consume of Result<_DataTable, Error>(v11, v9);
    }
  }

  *(a1 + 32) = *(a2 + 32);
  v12 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  v12;
  *(a1 + 48) = *(a2 + 48);
  v13 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  v13;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 66) = *(a2 + 66);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLObjectDetector.PersistentParameters(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 129))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*(a1 + 40) & 0xFFFFFFFF00000001) != 0 ? -1 : *(a1 + 40) >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLObjectDetector.PersistentParameters(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 120) = 0;
    *(a1 + 104) = 0;
    *(a1 + 88) = 0;
    *(a1 + 72) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 128) = 0;
    if (a3 < 0)
    {
      *(a1 + 129) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 129) = 0;
    }

    if (a2)
    {
      *(a1 + 40) = 2 * (a2 - 1);
    }
  }
}

uint64_t MLObjectDetector.PersistentParameters.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLObjectDetector.ModelParameters.ValidationData(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = alloca(v4);
  v8 = alloca(v4);
  v28 = &v19;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v24 = *(v1 + 72);
  v11 = *(v1 + 80);
  v23 = *(v1 + 88);
  v31 = *(v1 + 96);
  v12 = *(v1 + 104);
  v29 = *(v1 + 112);
  v22 = *(v1 + 120);
  v30 = *(v1 + 128);
  v32 = v10;
  v25 = v9;
  if (v10 == -1)
  {
    swift_storeEnumTagMultiPayload(v28, v3, 4);
  }

  else
  {
    v19 = v9;
    v20 = v10 & 1;
    strcpy(v21, "imagefilename");
    HIWORD(v21[1]) = -4864;
    v22 = 0x697461746F6E6E61;
    v23 = 0xEA00000000006E6FLL;
    swift_storeEnumTagMultiPayload(&v19, v3, 2);
    outlined init with take of MLObjectDetector.ModelParameters.ValidationData(&v19, v28);
  }

  v26 = v12;
  v27 = v29;
  v13 = type metadata accessor for MLObjectDetector.ModelParameters(0);
  v14 = v13[5];
  v15 = v13[6];
  *(v2 + v13[7]) = 13;
  *(v2 + v13[8]) = 13;
  *(v2 + v13[9]) = 0;
  v16 = v13[10];
  v29 = v2 + v16;
  *(v2 + v16 + 16) = 0;
  *(v2 + v16) = 0;
  v17 = v28;
  outlined init with copy of MLObjectDetector.ModelParameters.ValidationData(v28, v2);
  *(v2 + v14) = v24;
  *(v2 + v14 + 8) = v11 & 1;
  *(v2 + v15) = v23;
  *(v2 + v15 + 8) = v31 & 1;
  MLObjectDetector.ModelParameters.gridSize.setter(v26, v27);
  v21[1] = &type metadata for MLObjectDetector.ModelParameters.ModelAlgorithmType;
  v19 = v22;
  v20 = v30 & 1;
  outlined copy of MLDataTable?(v25, v32);
  outlined assign with take of Any?(&v19, v29);
  return outlined destroy of MLActivityClassifier.ModelParameters(v17, type metadata accessor for MLObjectDetector.ModelParameters.ValidationData);
}

uint64_t MLObjectDetector.PersistentParameters.init(trainingData:validationData:imageColumnName:annotationColumnName:annotationType:modelParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 *a7, uint64_t a8)
{
  v55 = a3;
  __dst = v8;
  v62 = a6;
  v56 = a5;
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *a2;
  v13 = *(a2 + 8);
  v74 = *a7;
  v75 = *(a7 + 2);
  v14 = v11 & 1;
  v70 = v11 & 1;
  v57 = v10;
  v61 = v11;
  outlined copy of Result<_DataTable, Error>(v10, v11);
  v58 = v12;
  outlined copy of MLDataTable?(v12, v13);
  outlined consume of MLDataTable?(0, 255);
  v15 = type metadata accessor for MLObjectDetector.ModelParameters(0);
  v16 = v15[5];
  v17 = *(a8 + v16);
  v18 = *(a8 + v16 + 8);
  v71 = v18;
  v19 = v15[6];
  v20 = *(a8 + v19 + 8);
  v72 = v20;
  v21 = *(a8 + v15[7]);
  v22 = *(a8 + v19);
  if (v21 <= -9.223372036854778e18)
  {
    BUG();
  }

  if (v21 >= 9.223372036854776e18)
  {
    BUG();
  }

  v23 = v15[8];
  v24 = *(a8 + v23);
  if (v24 <= -9.223372036854778e18)
  {
    BUG();
  }

  if (v24 >= 9.223372036854776e18)
  {
    BUG();
  }

  v66 = *(a8 + v23);
  v65 = v21;
  v68 = v20;
  v67 = v18;
  v60 = v22;
  v64 = v13;
  outlined init with copy of Any?(a8 + v15[10], v51);
  v59 = v17;
  v69 = v14;
  if (!v52)
  {

    outlined destroy of Any?(v51);
    goto LABEL_9;
  }

  if (!swift_dynamicCast(&v33, v51, &type metadata for Any + 8, &type metadata for MLObjectDetector.ModelParameters.ModelAlgorithmType, 6))
  {
LABEL_9:
    v25 = 1;
    v63 = 0;
    goto LABEL_10;
  }

  v63 = v33;
  v25 = v34;
LABEL_10:
  v26 = v65;
  *&v27 = v66;
  v65 = v27;
  *&v66 = v26;
  outlined destroy of MLActivityClassifier.ModelParameters(a8, type metadata accessor for MLObjectDetector.ModelParameters);
  __src[0] = v57;
  LOBYTE(__src[1]) = v69;
  __src[2] = v58;
  LOBYTE(__src[3]) = v64;
  __src[4] = v55;
  __src[5] = a4;
  v54 = a4;
  __src[6] = v56;
  __src[7] = v62;
  LOWORD(__src[8]) = v74;
  BYTE2(__src[8]) = v75;
  __src[9] = v59;
  LOBYTE(__src[10]) = v67;
  __src[11] = v60;
  LOBYTE(__src[12]) = v68;
  v73 = v25 & 1;
  __src[13] = v26;
  *&__src[14] = v27;
  __src[15] = v63;
  LOBYTE(__src[16]) = v25 & 1;
  outlined retain of MLObjectDetector.PersistentParameters(__src);
  a4;
  v28 = v62;
  v62;
  v29 = v58;
  LOBYTE(v27) = v64;
  outlined consume of MLDataTable?(v58, v64);
  v30 = v57;
  outlined consume of Result<_DataTable, Error>(v57, v61);
  memcpy(__dst, __src, 0x81uLL);
  v33 = v30;
  v34 = v70;
  v35 = v29;
  v36 = LOBYTE(v27);
  v37 = v55;
  v38 = v54;
  v39 = v56;
  v40 = v28;
  v41 = v74;
  v42 = v75;
  v43 = v59;
  v44 = v71;
  v45 = v60;
  v46 = v72;
  v47 = v66;
  v48 = v65;
  v49 = v63;
  v50 = v73;
  return outlined release of MLObjectDetector.PersistentParameters(&v33);
}

NSURL *MLObjectDetector.PersistentParameters.init(sessionDirectory:)(uint64_t a1)
{
  v88 = v2;
  v77 = v1;
  v3 = type metadata accessor for URL(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v89 = &v76;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v94 = &v76;
  v10 = alloca(v5);
  v11 = alloca(v5);
  URL.appendingPathComponent(_:)(0xD000000000000010, ("ObjectDetectorMetrics." + 0x8000000000000000));
  v12 = v88;
  v13 = Data.init(contentsOf:options:)(&v76, 0);
  v88 = v12;
  if (v12)
  {
    v15 = *(v4 + 8);
    v15(a1, v3);
    v15(&v76, v3);
    v16 = 0;
    v17 = -1;
    v18 = 0;
    goto LABEL_24;
  }

  v95 = a1;
  v19 = *(v4 + 8);
  v20 = v14;
  v21 = v13;
  v90 = v19;
  v19(&v76, v3);
  v22 = objc_opt_self(NSPropertyListSerialization);
  v92 = v21;
  v91 = v20;
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v132 = 0;
  v24 = [v22 propertyListWithData:isa options:0 format:0 error:&v132];
  v25 = v24;

  v26 = v132;
  v27 = v3;
  if (!v25)
  {
    v34 = v26;
    _convertNSErrorToError(_:)(v26);

    swift_willThrow();
    outlined consume of Data._Representation(v92, v91);
    v16 = 0;
    v90(v95, v3);
LABEL_23:
    v17 = -1;
    v18 = 0;
    goto LABEL_24;
  }

  _bridgeAnyObjectToAny(_:)(v25);
  swift_unknownObjectRelease(v25);
  outlined init with copy of Any(v149, &v132);
  v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  v98 = &type metadata for Any + 8;
  if (!swift_dynamicCast(__src, &v132, &type metadata for Any + 8, v28, 6))
  {
    v35 = v27;
    v36 = "parameters.plist" + 0x8000000000000000;
    v37 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v37, 0, 0);
    v39 = 0xD000000000000037;
LABEL_22:
    *v38 = v39;
    *(v38 + 8) = v36;
    v16 = 0;
    *(v38 + 16) = 0;
    *(v38 + 32) = 0;
    *(v38 + 48) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v92, v91);
    v90(v95, v35);
    __swift_destroy_boxed_opaque_existential_1Tm(v149);
    goto LABEL_23;
  }

  v86 = v28;
  v29 = *&__src[0];
  specialized Dictionary.subscript.getter(0x6C6F436567616D69, 0xEF656D614E6E6D75, *&__src[0]);
  if (!*(&v133 + 1))
  {
    v35 = v27;
LABEL_18:
    v29;
    outlined destroy of Any?(&v132);
LABEL_21:
    v36 = "labeled_directories" + 0x8000000000000000;
    v40 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v40, 0, 0);
    v39 = 0xD00000000000003FLL;
    goto LABEL_22;
  }

  v105 = v29;
  if (!swift_dynamicCast(__src, &v132, v98, &type metadata for String, 6))
  {
    v35 = v27;
LABEL_20:
    v105;
    goto LABEL_21;
  }

  v93 = v27;
  v30 = *(&__src[0] + 1);
  v78 = *&__src[0];
  LOBYTE(v29) = v105;
  specialized Dictionary.subscript.getter(0xD000000000000014, ("oth String or both Int." + 0x8000000000000000), v105);
  if (!*(&v133 + 1))
  {
    v35 = v93;
    v30;
    goto LABEL_18;
  }

  v99 = v30;
  if (!swift_dynamicCast(__src, &v132, v98, &type metadata for String, 6))
  {
    v35 = v93;
    v99;
    goto LABEL_20;
  }

  v31 = *(&__src[0] + 1);
  v79 = *&__src[0];
  v32 = v99;

  v33 = v105;
  specialized Dictionary.subscript.getter(0x697461746F6E6E61, 0xEE00657079546E6FLL, v105);
  v97 = v31;
  if (!*(&v133 + 1))
  {
    v32;
    v31;
    v33;
    outlined destroy of Any?(&v132);
LABEL_29:
    v42 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v42, 0, 0);
    *v43 = 0xD000000000000044;
    *(v43 + 8) = "featureExtractorType" + 0x8000000000000000;
    v16 = 0;
    *(v43 + 16) = 0;
    *(v43 + 32) = 0;
    *(v43 + 48) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v92, v91);
    v44 = v95;
    v45 = v93;
LABEL_30:
    v90(v44, v45);
    __swift_destroy_boxed_opaque_existential_1Tm(v149);
    v18 = 1;
LABEL_31:
    v17 = -1;
    goto LABEL_24;
  }

  if (!swift_dynamicCast(__src, &v132, v98, v86, 6) || (MLObjectDetector.AnnotationType.init(dictionary:)(*&__src[0]), v132 == 2))
  {
    v99;
    v97;
    v105;
    goto LABEL_29;
  }

  v82 = v132;
  v83 = BYTE2(v132);
  specialized Dictionary.subscript.getter(0x7A69536863746162, 0xE900000000000065, v105);
  if (*(&v133 + 1))
  {
    v46 = swift_dynamicCast(__src, &v132, v98, &type metadata for Int, 6);
    if (v46)
    {
      v84 = *&__src[0];
    }

    else
    {
      v84 = 0;
    }

    v48 = v105;
    v47 = v46 ^ 1;
  }

  else
  {
    outlined destroy of Any?(&v132);
    v47 = 1;
    v84 = 0;
    v48 = v105;
  }

  v100 = v47;
  v102 = v47;
  specialized Dictionary.subscript.getter(0x617265744978616DLL, 0xED0000736E6F6974, v48);
  if (*(&v133 + 1))
  {
    v49 = swift_dynamicCast(__src, &v132, v98, &type metadata for Int, 6);
    v50 = v99;
    if (v49)
    {
      v85 = *&__src[0];
    }

    else
    {
      v85 = 0;
    }

    v52 = v105;
    v51 = v49 ^ 1;
  }

  else
  {
    outlined destroy of Any?(&v132);
    v51 = 1;
    v85 = 0;
    v52 = v105;
    v50 = v99;
  }

  v101 = v51;
  v103 = v51;
  if (*(v52 + 16) && (v53 = specialized __RawDictionaryStorage.find<A>(_:)(0x7464695764697267, 0xE900000000000068), (v54 & 1) != 0))
  {
    outlined init with copy of Any(*(v52 + 56) + 32 * v53, __src);
  }

  else
  {
    memset(__src, 0, 32);
  }

  __dst[1] = __src[1];
  __dst[0] = __src[0];
  if (*(&__src[1] + 1))
  {
    outlined init with take of Any(__dst, &v132);
  }

  else
  {
    *(&v133 + 1) = &type metadata for Int;
    *&v132 = 13;
    outlined destroy of Any?(__dst);
  }

  v55 = v50;
  if (!swift_dynamicCast(__src, &v132, v98, &type metadata for Int, 6))
  {
    goto LABEL_63;
  }

  v80 = *&__src[0];
  v56 = v105;
  if (*(v105 + 16))
  {
    v57 = specialized __RawDictionaryStorage.find<A>(_:)(0x6769654864697267, 0xEA00000000007468);
    if (v58)
    {
      outlined init with copy of Any(*(v56 + 56) + 32 * v57, &v132);
    }

    else
    {
      v133 = 0;
      v132 = 0;
    }
  }

  else
  {
    v133 = 0;
    v132 = 0;
  }

  __src[1] = v133;
  __src[0] = v132;
  if (*(&v133 + 1))
  {
    outlined init with take of Any(__src, &v147);
  }

  else
  {
    v148 = &type metadata for Int;
    *&v147 = 13;
    outlined destroy of Any?(__src);
  }

  if (!swift_dynamicCast(&v107, &v147, v98, &type metadata for Int, 6))
  {
LABEL_63:
    v60 = v93;
    v55;
    v97;
    v105;
    v61 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v61, 0, 0);
    *v62 = 0xD00000000000003ELL;
    *(v62 + 8) = "lid annotation type." + 0x8000000000000000;
    v16 = 0;
    *(v62 + 16) = 0;
    *(v62 + 32) = 0;
    *(v62 + 48) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v92, v91);
    v44 = v95;
    v45 = v60;
    goto LABEL_30;
  }

  v81 = v107;
  URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
  v18 = 1;
  LOBYTE(__src[0]) = 1;
  *(&__src[0] + 1) = 44;
  __src[1] = 0xE100000000000000;
  *&__src[2] = 0xE000000000000000;
  *(&__src[2] + 1) = 92;
  *&__src[3] = 0xE100000000000000;
  BYTE8(__src[3]) = 1;
  *&__src[4] = 34;
  *(&__src[4] + 1) = 0xE100000000000000;
  LOBYTE(__src[5]) = 1;
  *(&__src[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
  *&__src[6] = 10;
  *(&__src[6] + 1) = 0xE100000000000000;
  __src[7] = 0;
  LOBYTE(__src[8]) = 1;
  *(&__src[8] + 1) = 0;
  LOBYTE(__dst[0]) = 1;
  LOBYTE(v132) = 1;
  *(&v132 + 1) = 44;
  v133 = 0xE100000000000000;
  v134 = 0xE000000000000000;
  v135 = 92;
  v136 = 0xE100000000000000;
  v137 = 1;
  v138 = 34;
  v139 = 0xE100000000000000;
  v140 = 1;
  v141 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
  v142 = 10;
  v143 = 0xE100000000000000;
  v144 = 0;
  v145 = 1;
  v146 = 0;
  outlined retain of MLDataTable.ParsingOptions(__src);
  outlined release of MLDataTable.ParsingOptions(&v132);
  memcpy(__dst, __src, sizeof(__dst));
  v59 = v88;
  MLDataTable.init(contentsOf:options:)(v94, __dst);
  if (v59)
  {
    v16 = 0;
    outlined consume of Data._Representation(v92, v91);
    v99;
    v97;
    v105;
    v90(v95, v93);
    __swift_destroy_boxed_opaque_existential_1Tm(v149);
    goto LABEL_31;
  }

  LOBYTE(v106) = v130;
  v87 = v129;
  v96 = v130;
  outlined copy of Result<_DataTable, Error>(v129, v130);
  v63 = v89;
  v88 = 0;
  URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
  LOBYTE(v116[0]) = 1;
  *(&v116[0] + 1) = 44;
  v116[1] = 0xE100000000000000;
  *&v116[2] = 0xE000000000000000;
  *(&v116[2] + 1) = 92;
  *&v116[3] = 0xE100000000000000;
  BYTE8(v116[3]) = 1;
  *&v116[4] = 34;
  *(&v116[4] + 1) = 0xE100000000000000;
  LOBYTE(v116[5]) = 1;
  *(&v116[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
  *&v116[6] = 10;
  *(&v116[6] + 1) = 0xE100000000000000;
  v116[7] = 0;
  LOBYTE(v116[8]) = 1;
  *(&v116[8] + 1) = 0;
  LOBYTE(v115[0]) = 1;
  LOBYTE(v117[0]) = 1;
  v117[1] = 44;
  v117[2] = 0xE100000000000000;
  v117[3] = 0;
  v117[4] = 0xE000000000000000;
  v117[5] = 92;
  v117[6] = 0xE100000000000000;
  v118 = 1;
  v119 = 34;
  v120 = 0xE100000000000000;
  v121 = 1;
  v122 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
  v123 = 10;
  v124 = 0xE100000000000000;
  v125 = 0;
  v126 = 1;
  v127 = 0;
  outlined retain of MLDataTable.ParsingOptions(v116);
  outlined release of MLDataTable.ParsingOptions(v117);
  memcpy(v115, v116, sizeof(v115));
  v64 = v88;
  MLDataTable.init(contentsOf:options:)(v63, v115);
  if (v64)
  {
    v65 = 0;
    v64;
    v17 = -1;
  }

  else
  {
    v65 = v112[0];
    v17 = v112[1];
  }

  v94 = v65;
  LODWORD(v89) = v17;
  outlined copy of MLDataTable?(v65, v17);
  outlined consume of MLDataTable?(0, 255);
  v66 = v105;
  specialized Dictionary.subscript.getter(0x687469726F676C61, 0xE90000000000006DLL, v105);
  v66;
  if (v115[3])
  {
    v88 = 0;
    if (swift_dynamicCast(v112, v115, v98, v86, 6))
    {
      MLObjectDetector.ModelParameters.ModelAlgorithmType.init(dictionary:)(v112[0]);
      if (!v114)
      {
        v70 = ((v83 << 16) | v82) >> 8;
        LODWORD(v105) = ((v83 << 16) | v82) >> 16;
        v71 = v82 & 1;
        LOBYTE(v70) = BYTE1(v82) & 1;
        LODWORD(v86) = v70;
        v72 = v113;
        v98 = v112[17];
        outlined consume of Data._Representation(v92, v91);
        v90(v95, v93);
        __swift_destroy_boxed_opaque_existential_1Tm(v149);
        v112[0] = v87;
        LOBYTE(v112[1]) = v96;
        v112[2] = v94;
        LOBYTE(v112[3]) = v89;
        v112[4] = v78;
        v112[5] = v99;
        v112[6] = v79;
        v73 = v97;
        v112[7] = v97;
        LOBYTE(v112[8]) = v71;
        BYTE1(v112[8]) = v86;
        BYTE2(v112[8]) = v105;
        v112[9] = v84;
        LOBYTE(v112[10]) = v100;
        v112[11] = v85;
        LOBYTE(v112[12]) = v101;
        v104 = v72 & 1;
        v112[13] = v80;
        v112[14] = v81;
        v112[15] = v98;
        LOBYTE(v112[16]) = v72 & 1;
        outlined retain of MLObjectDetector.PersistentParameters(v112);
        v99;
        v73;
        v74 = v94;
        outlined consume of MLDataTable?(v94, v89);
        v75 = v87;
        outlined consume of Result<_DataTable, Error>(v87, v96);
        memcpy(v77, v112, 0x81uLL);
        v115[0] = v75;
        LOBYTE(v115[1]) = v106;
        *(&v115[1] + 1) = *v111;
        HIDWORD(v115[1]) = *&v111[3];
        v115[2] = v74;
        LOBYTE(v115[3]) = v89;
        *(&v115[3] + 1) = *v110;
        HIDWORD(v115[3]) = *&v110[3];
        v115[4] = v78;
        v115[5] = v99;
        v115[6] = v79;
        v115[7] = v97;
        LOBYTE(v115[8]) = v71;
        BYTE1(v115[8]) = v86;
        BYTE2(v115[8]) = v105;
        *(&v115[8] + 3) = *&v109[7];
        HIBYTE(v115[8]) = v109[11];
        v115[9] = v84;
        LOBYTE(v115[10]) = v102;
        *(&v115[10] + 1) = *v109;
        HIDWORD(v115[10]) = *&v109[3];
        v115[11] = v85;
        LOBYTE(v115[12]) = v103;
        *(&v115[12] + 1) = *v108;
        HIDWORD(v115[12]) = *&v108[3];
        v115[13] = v80;
        v115[14] = v81;
        v115[15] = v98;
        LOBYTE(v115[16]) = v104;
        outlined release of MLObjectDetector.PersistentParameters(v115);
        return __stack_chk_guard;
      }

      v99;
      v97;
      outlined consume of MLDataTable?(v94, v89);
      v67 = v87;
      outlined consume of Result<_DataTable, Error>(v87, v96);
    }

    else
    {
      outlined consume of MLDataTable?(v94, v89);
      v67 = v87;
      outlined consume of Result<_DataTable, Error>(v87, v96);
      v99;
      v97;
    }
  }

  else
  {
    outlined consume of MLDataTable?(v94, v89);
    v67 = v87;
    outlined consume of Result<_DataTable, Error>(v87, v96);
    v99;
    v97;
    outlined destroy of Any?(v115);
  }

  v68 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v68, 0, 0);
  *v69 = 0xD000000000000023;
  *(v69 + 8) = "contains an invalid grid size." + 0x8000000000000000;
  *(v69 + 16) = 0;
  *(v69 + 32) = 0;
  *(v69 + 48) = 0;
  swift_willThrow();
  outlined consume of Data._Representation(v92, v91);
  v90(v95, v93);
  __swift_destroy_boxed_opaque_existential_1Tm(v149);
  outlined consume of Result<_DataTable, Error>(v67, v106);
  v18 = 1;
  v16 = v94;
LABEL_24:
  outlined consume of MLDataTable?(v16, v17);
  if (v18)
  {
    v97;
    v99;
  }

  return __stack_chk_guard;
}

uint64_t MLObjectDetector.AnnotationType.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  if (!*(a1 + 16))
  {
    goto LABEL_31;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(1684957547, 0xE400000000000000);
  if ((v4 & 1) == 0)
  {
    goto LABEL_31;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v3, v21);
  if (!swift_dynamicCast(&v24, v21, &type metadata for Any + 8, &type metadata for String, 6))
  {
    goto LABEL_31;
  }

  v5 = v25;
  if (v24 ^ 0x676E69646E756F62 | v25 ^ 0xEC000000786F625FLL)
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)(v24, v25, 0x676E69646E756F62, 0xEC000000786F625FLL, 0);
    v5;
    if ((v6 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v25;
  }

  specialized Dictionary.subscript.getter(0x7374696E75, 0xE500000000000000, a1);
  if (!v22)
  {
    goto LABEL_16;
  }

  if (!swift_dynamicCast(&v24, v21, &type metadata for Any + 8, &type metadata for String, 6))
  {
    goto LABEL_31;
  }

  v7 = v25;
  if (v24 ^ 0x6C65786970 | v25 ^ 0xE500000000000000 && (v8 = v24, (_stringCompareWithSmolCheck(_:_:expecting:)(0x6C65786970, 0xE500000000000000, v24, v25, 0) & 1) == 0))
  {
    if (v8 ^ 0x7A696C616D726F6ELL | v7 ^ 0xEA00000000006465)
    {
      LODWORD(v8) = _stringCompareWithSmolCheck(_:_:expecting:)(0x7A696C616D726F6ELL, 0xEA00000000006465, v8, v7, 0);
      v7;
      v11 = (v8 & 1) == 0;
      LOBYTE(v8) = 1;
      if (v11)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v7;
      LOBYTE(v8) = 1;
    }
  }

  else
  {
    v7;
    LODWORD(v8) = 0;
  }

  specialized Dictionary.subscript.getter(0x6E696769726FLL, 0xE600000000000000, a1);
  if (!v22)
  {
LABEL_16:
    a1;
LABEL_17:
    outlined destroy of Any?(v21);
    goto LABEL_32;
  }

  if (!swift_dynamicCast(&v24, v21, &type metadata for Any + 8, &type metadata for String, 6))
  {
    goto LABEL_31;
  }

  v23 = v8;
  v9 = v24;
  v10 = v25;
  if (!(v24 ^ 0x7466656C5F706F74 | v25 ^ 0xE800000000000000))
  {
    v25;
    v26 = 0;
    goto LABEL_27;
  }

  v26 = 0;
  if (_stringCompareWithSmolCheck(_:_:expecting:)(0x7466656C5F706F74, 0xE800000000000000, v24, v25, 0))
  {
    v10;
    goto LABEL_27;
  }

  if (!(v9 ^ 0x6C5F6D6F74746F62 | v10 ^ 0xEB00000000746665))
  {
    v10;
    v26 = 256;
    goto LABEL_27;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)(0x6C5F6D6F74746F62, 0xEB00000000746665, v9, v10, 0);
  v10;
  v26 = 256;
  if ((v12 & 1) == 0)
  {
LABEL_31:
    a1;
    goto LABEL_32;
  }

LABEL_27:
  specialized Dictionary.subscript.getter(0x726F68636E61, 0xE600000000000000, a1);
  a1;
  if (!v22)
  {
    goto LABEL_17;
  }

  if (swift_dynamicCast(&v24, v21, &type metadata for Any + 8, &type metadata for String, 6))
  {
    v13 = v24;
    v14 = v25;
    if (!(v24 ^ 0x7265746E6563 | v25 ^ 0xE600000000000000))
    {
      v25;
      v15 = 0;
      v16 = v23;
LABEL_39:
      v17 = v16 | v26 | (v15 << 16);
      goto LABEL_33;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)(0x7265746E6563, 0xE600000000000000, v24, v25, 0);
    v16 = v23;
    if (v19)
    {
      v14;
      v15 = 0;
      goto LABEL_39;
    }

    if (!(v13 ^ 0x7466656C5F706F74 | v14 ^ 0xE800000000000000) || (_stringCompareWithSmolCheck(_:_:expecting:)(0x7466656C5F706F74, 0xE800000000000000, v13, v14, 0) & 1) != 0)
    {
      v14;
      v15 = 1;
      goto LABEL_39;
    }

    if (!(v13 ^ 0x6C5F6D6F74746F62 | v14 ^ 0xEB00000000746665))
    {
      v14;
      v15 = 2;
      goto LABEL_39;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)(0x6C5F6D6F74746F62, 0xEB00000000746665, v13, v14, 0);
    v14;
    v15 = 2;
    if (v20)
    {
      goto LABEL_39;
    }
  }

LABEL_32:
  v17 = 2;
LABEL_33:
  *v2 = v17;
  result = HIWORD(v17);
  *(v2 + 2) = result;
  return result;
}

char MLObjectDetector.ModelParameters.ModelAlgorithmType.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  if (!*(a1 + 16))
  {
    goto LABEL_14;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(0x687469726F676C61, 0xE90000000000006DLL);
  if ((v4 & 1) == 0)
  {
    goto LABEL_14;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v3, v14);
  if (!swift_dynamicCast(&v16, v14, &type metadata for Any + 8, &type metadata for String, 6))
  {
    goto LABEL_14;
  }

  v5 = v16;
  v6 = v17;
  if (v16 ^ 0x2D74656E6B726164 | v17 ^ 0xEC0000006F6C6F79 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x2D74656E6B726164, 0xEC0000006F6C6F79, v16, v17, 0) & 1) == 0)
  {
    v10 = &aTransferlearni[-32] | 0x8000000000000000;
    if (!(v5 ^ 0xD000000000000010 | v10 ^ v6))
    {
      v6;
      goto LABEL_11;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000010, v10, v5, v6, 0);
    v6;
    if (v11)
    {
LABEL_11:
      specialized Dictionary.subscript.getter(0x6E6F697369766572, 0xE800000000000000, a1);
      if (v15)
      {
        if (swift_dynamicCast(&v16, v14, &type metadata for Any + 8, &type metadata for Int, 6))
        {
          v8 = v16;
          goto LABEL_19;
        }
      }

      else
      {
        outlined destroy of Any?(v14);
      }

      v8 = 1;
LABEL_19:
      specialized Dictionary.subscript.getter(0xD000000000000014, ("transferLearning" + 0x8000000000000000), a1);
      a1;
      if (v15)
      {
        if (swift_dynamicCast(&v16, v14, &type metadata for Any + 8, &type metadata for String, 6))
        {
          v12 = v17;
          if (!(v16 ^ 0x72507463656A626FLL | v17 ^ 0xEB00000000746E69))
          {
            v17;
            v7 = 0;
            goto LABEL_7;
          }

          v7 = 0;
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)(0x72507463656A626FLL, 0xEB00000000746E69, v16, v17, 0);
          v12;
          result = 0;
          if (v13)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        outlined destroy of Any?(v14);
      }

LABEL_15:
      result = 1;
      v8 = 0;
      v7 = 0;
      goto LABEL_16;
    }

LABEL_14:
    a1;
    goto LABEL_15;
  }

  v6;
  a1;
  v7 = 1;
  v8 = 0;
LABEL_7:
  result = 0;
LABEL_16:
  *v2 = v8;
  *(v2 + 8) = v7;
  *(v2 + 9) = result;
  return result;
}

NSURL *MLObjectDetector.PersistentParameters.save(toSessionDirectory:)(uint64_t a1)
{
  v40 = v1;
  v49 = a1;
  v53 = type metadata accessor for URL(0);
  v48 = *(v53 - 8);
  v3 = *(v48 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v46 = &v35;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v44 = &v35;
  v8 = alloca(v3);
  v9 = alloca(v3);
  v41 = &v35;
  v45 = *v2;
  v56 = *(v2 + 8);
  v47 = *(v2 + 16);
  v57 = *(v2 + 24);
  v39 = *(v2 + 32);
  v10 = *(v2 + 40);
  v38 = *(v2 + 48);
  v11 = *(v2 + 56);
  v54 = *(v2 + 64);
  v55 = *(v2 + 66);
  v43 = *(v2 + 72);
  v42 = *(v2 + 88);
  LOBYTE(v52) = *(v2 + 96);
  LOBYTE(v50) = *(v2 + 128);
  LOBYTE(v51) = *(v2 + 80);
  v37 = *(v2 + 104);
  v36 = *(v2 + 112);
  v35 = *(v2 + 120);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  inited = swift_initStackObject(v12, v62);
  *(inited + 16) = 6;
  *(inited + 24) = 12;
  *(inited + 32) = 0x6C6F436567616D69;
  *(inited + 40) = 0xEF656D614E6E6D75;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v39;
  *(inited + 56) = v10;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = "oth String or both Int." + 0x8000000000000000;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v38;
  *(inited + 104) = v11;
  strcpy((inited + 128), "annotationType");
  *(inited + 143) = -18;
  LOWORD(v60) = v54;
  BYTE2(v60) = v55;

  v14 = MLObjectDetector.AnnotationType.dictionary.getter();
  v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  *(inited + 168) = v15;
  *(inited + 144) = v14;
  *(inited + 176) = 0x7464695764697267;
  *(inited + 184) = 0xE900000000000068;
  *(inited + 216) = &type metadata for Int;
  *(inited + 192) = v37;
  *(inited + 224) = 0x6769654864697267;
  *(inited + 232) = 0xEA00000000007468;
  *(inited + 264) = &type metadata for Int;
  *(inited + 240) = v36;
  *(inited + 272) = 0x687469726F676C61;
  *(inited + 280) = 0xE90000000000006DLL;
  *&v60 = v35;
  BYTE8(v60) = v50;
  v16 = MLObjectDetector.ModelParameters.ModelAlgorithmType.dictionary.getter();
  *(inited + 312) = v15;
  *(inited + 288) = v16;
  v17 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  if (!v51)
  {
    v61 = &type metadata for Int;
    *&v60 = v43;
    outlined init with take of Any(&v60, v59);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v17);
    v58 = v17;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v59, 0x7A69536863746162, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
    v17 = v58;
  }

  if ((v52 & 1) == 0)
  {
    v61 = &type metadata for Int;
    *&v60 = v42;
    outlined init with take of Any(&v60, v59);
    v19 = swift_isUniquelyReferenced_nonNull_native(v17);
    v58 = v17;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v59, 0x617265744978616DLL, 0xED0000736E6F6974, v19);
    LOBYTE(v17) = v58;
  }

  v20 = objc_opt_self(NSPropertyListSerialization);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v17;
  *&v60 = 0;
  v22 = [v20 dataWithPropertyList:isa format:200 options:0 error:&v60];
  v23 = v22;

  v24 = v60;
  if (v23)
  {
    v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)(v23);
    v52 = v26;

    v27 = v41;
    URL.appendingPathComponent(_:)(0xD000000000000010, ("ObjectDetectorMetrics." + 0x8000000000000000));
    v28 = v52;
    v29 = v40;
    Data.write(to:options:)(v27, 0, v25, v52);
    if (v29)
    {
      (*(v48 + 8))(v27, v53);
      outlined consume of Data._Representation(v25, v28);
    }

    else
    {
      v51 = v25;
      v31 = *(v48 + 8);
      v31(v27, v53);
      *&v60 = v45;
      BYTE8(v60) = v56 & 1;
      outlined copy of Result<_DataTable, Error>(v45, v56);
      v32 = v44;
      URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
      MLDataTable.write(to:)(v32);
      v31(v32, v53);
      outlined consume of Result<_DataTable, Error>(v60, SBYTE8(v60));
      if (v57 == -1)
      {
        outlined consume of Data._Representation(v51, v52);
      }

      else
      {
        v50 = v31;
        *&v60 = v47;
        BYTE8(v60) = v57 & 1;
        outlined copy of MLDataTable?(v47, v57);
        v33 = v46;
        URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
        MLDataTable.write(to:)(v33);
        outlined consume of Data._Representation(v51, v52);
        v50(v33, v53);
        outlined consume of Result<_DataTable, Error>(v60, SBYTE8(v60));
      }
    }
  }

  else
  {
    v30 = v24;
    _convertNSErrorToError(_:)(v24);

    swift_willThrow();
  }

  return __stack_chk_guard;
}

uint64_t MLObjectDetector.AnnotationType.dictionary.getter()
{
  v1 = 0xE800000000000000;
  v2 = 0x7466656C5F706F74;
  v13 = v0[2];
  v3 = 0x7466656C5F706F74;
  if (v0[1])
  {
    v3 = 0x6C5F6D6F74746F62;
    v1 = 0xEB00000000746665;
  }

  v4 = *v0 == 0;
  v5 = 0x6C65786970;
  if (!v4)
  {
    v5 = 0x7A696C616D726F6ELL;
  }

  v6 = 0xEA00000000006465;
  if (v4)
  {
    v6 = 0xE500000000000000;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  inited = swift_initStackObject(v7, v12);
  *(inited + 16) = 4;
  *(inited + 24) = 8;
  *(inited + 32) = 1684957547;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 48), "bounding_box");
  *(inited + 61) = 0;
  *(inited + 62) = -5120;
  *(inited + 80) = 0x7374696E75;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v5;
  *(inited + 104) = v6;
  *(inited + 128) = 0x6E696769726FLL;
  v9 = 0xE600000000000000;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v3;
  *(inited + 152) = v1;
  *(inited + 176) = 0x726F68636E61;
  v10 = v13;
  *(inited + 184) = 0xE600000000000000;
  if (v10)
  {
    if (v10 == 1)
    {
      v9 = 0xE800000000000000;
    }

    else
    {
      v2 = 0x6C5F6D6F74746F62;
      v9 = 0xEB00000000746665;
    }
  }

  else
  {
    v2 = 0x7265746E6563;
  }

  *(inited + 216) = &type metadata for String;
  *(inited + 192) = v2;
  *(inited + 200) = v9;
  return Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
}

uint64_t MLObjectDetector.ModelParameters.ModelAlgorithmType.dictionary.getter()
{
  v1 = *(v0 + 8);
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  if (v1 == 1)
  {
    inited = swift_initStackObject(v2, v6);
    *(inited + 16) = 1;
    *(inited + 24) = 2;
    *(inited + 32) = 0x687469726F676C61;
    *(inited + 40) = 0xE90000000000006DLL;
    *(inited + 72) = &type metadata for String;
    strcpy((inited + 48), "darknet-yolo");
    *(inited + 61) = 0;
    *(inited + 62) = -5120;
  }

  else
  {
    inited = swift_initStackObject(v2, v5);
    *(inited + 16) = 3;
    *(inited + 24) = 6;
    *(inited + 32) = 0x687469726F676C61;
    *(inited + 40) = 0xE90000000000006DLL;
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = 0xD000000000000010;
    *(inited + 56) = "annotationColumnName" + 0x8000000000000000;
    *(inited + 80) = 0xD000000000000014;
    *(inited + 88) = "transferLearning" + 0x8000000000000000;
    *(inited + 120) = &type metadata for String;
    *(inited + 96) = 0x72507463656A626FLL;
    *(inited + 104) = 0xEB00000000746E69;
    *(inited + 128) = 0x6E6F697369766572;
    *(inited + 136) = 0xE800000000000000;
    *(inited + 168) = &type metadata for Int;
    *(inited + 144) = 1;
  }

  return Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
}

uint64_t outlined init with take of MLObjectDetector.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLObjectDetector.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t specialized handling<A, B>(_:_:)(uint64_t a1)
{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_ft_flex_list);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_ft_flex_dict);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_ft_ndarray);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_sframe_column_names);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_ft_create_from_ndarray);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_ft_create_from_flex_dict);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_ft_create_from_flex_list);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_sarray_create_from_list);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_sarray_unique);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_sframe_text_summary);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_variant_flexible_type);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_variant_sframe);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_variant_sarray);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_variant_model);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_variant_parameters);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_sarray_drop_na);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_sarray_sum);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_sarray_min);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_sarray_max);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_sarray_mean);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_sarray_std);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_sarray_create_copy);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_sframe_unique);
}

{
  v69 = 0;
  v1 = tc_v1_ft_create_from_int64(a1, &v69);
  v2 = v69;
  if (v69)
  {
    v3 = tc_v1_error_message(v69);
    if (!v3)
    {
      BUG();
    }

    v52 = v2;
    v51 = v1;
    v67 = String.init(cString:)(v3);
    v53 = v4;
    v68 = v4;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v66 = static ErrorString.table;
    v65 = xmmword_3A3830;
    v5 = lazy protocol witness table accessor for type String and conformance String();
    v6 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v8 = v7;
    v53;
    v67 = v6;
    v54 = v8;
    v68 = v8;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v66 = static ErrorString.column;
    v65 = xmmword_3A3850;
    v9 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v11 = v10;
    v54;
    v67 = v9;
    v55 = v11;
    v68 = v11;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v66 = static ErrorString.tableMap;
    v65 = xmmword_3A3870;
    v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v14 = v13;
    v55;
    v67 = v12;
    v56 = v14;
    v68 = v14;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v66 = static ErrorString.columnMap;
    v65 = xmmword_3A3890;
    v15 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v17 = v16;
    v56;
    v67 = v15;
    v57 = v17;
    v68 = v17;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v66 = static ErrorString.drop;
    v65 = xmmword_3A38B0;
    v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v20 = v19;
    v57;
    v67 = v18;
    v58 = v20;
    v68 = v20;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v66 = static ErrorString.sequence;
    v65 = xmmword_3A38D0;
    v21 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v23 = v22;
    v58;
    v67 = v21;
    v68 = v23;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v66 = static ErrorString.double;
    v65 = xmmword_3A38F0;
    v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v26 = v25;
    v23;
    v67 = v24;
    v59 = v26;
    v68 = v26;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v66 = static ErrorString.integer;
    v65 = xmmword_3A3910;
    v27 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v29 = v28;
    v59;
    v67 = v27;
    v60 = v29;
    v68 = v29;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v66 = static ErrorString.error;
    v65 = xmmword_3A3930;
    v30 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v32 = v31;
    v60;
    v67 = v30;
    v61 = v32;
    v68 = v32;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v66 = static ErrorString.archive;
    v65 = xmmword_3A3950;
    v33 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v35 = v34;
    v61;
    v67 = v33;
    v62 = v35;
    v68 = v35;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v66 = static ErrorString.limit;
    v65 = xmmword_3A3970;
    v36 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v38 = v37;
    v62;
    v67 = v36;
    v63 = v38;
    v68 = v38;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v66 = static ErrorString.supportedStackTypes;
    v65 = xmmword_3A3990;
    v39 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v41 = v40;
    v63;
    v67 = v39;
    v64 = v41;
    v68 = v41;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v66 = static ErrorString.sortTypes;
    v65 = xmmword_3A39B0;
    v42 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v44 = v43;
    v64;
    type metadata accessor for OS_os_log();

    v45 = static OS_os_log.default.getter(v44, &v65);
    static os_log_type_t.error.getter();
    v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v47 = swift_allocObject(v46, 72, 7);
    v47[2] = 1;
    v47[3] = 2;
    v47[7] = &type metadata for String;
    v47[8] = lazy protocol witness table accessor for type String and conformance String();
    v47[4] = v42;
    v47[5] = v44;
    os_log(_:dso:log:type:_:)("%@ \n");

    v47;
    v48 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v48, 0, 0);
    *v49 = v42;
    *(v49 + 8) = v44;
    *(v49 + 16) = 0;
    *(v49 + 32) = 0;
    *(v49 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v52);
    return v51;
  }

  return v1;
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_ft_create_from_cstring);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_sframe_read_json);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_sframe_load);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_model_new);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_model_load);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_ft_string_data);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_model_name);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_ndarray_strides);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_ndarray_shape);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_sframe_num_rows);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_sframe_num_columns);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_ndarray_num_dimensions);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_ndarray_data);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_ft_int64);
}

uint64_t specialized handling<A, B>(_:_:)()
{
  v68 = 0;
  v0 = tc_v1_ft_create_from_double(&v68);
  v1 = v68;
  if (v68)
  {
    v2 = tc_v1_error_message(v68);
    if (!v2)
    {
      BUG();
    }

    v51 = v1;
    v50 = v0;
    v66 = String.init(cString:)(v2);
    v52 = v3;
    v67 = v3;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v65 = static ErrorString.table;
    v64 = xmmword_3A3830;
    v4 = lazy protocol witness table accessor for type String and conformance String();
    v5 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v7 = v6;
    v52;
    v66 = v5;
    v53 = v7;
    v67 = v7;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v65 = static ErrorString.column;
    v64 = xmmword_3A3850;
    v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v10 = v9;
    v53;
    v66 = v8;
    v54 = v10;
    v67 = v10;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v65 = static ErrorString.tableMap;
    v64 = xmmword_3A3870;
    v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v13 = v12;
    v54;
    v66 = v11;
    v55 = v13;
    v67 = v13;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v65 = static ErrorString.columnMap;
    v64 = xmmword_3A3890;
    v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v16 = v15;
    v55;
    v66 = v14;
    v56 = v16;
    v67 = v16;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v65 = static ErrorString.drop;
    v64 = xmmword_3A38B0;
    v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v19 = v18;
    v56;
    v66 = v17;
    v57 = v19;
    v67 = v19;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v65 = static ErrorString.sequence;
    v64 = xmmword_3A38D0;
    v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v22 = v21;
    v57;
    v66 = v20;
    v67 = v22;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v65 = static ErrorString.double;
    v64 = xmmword_3A38F0;
    v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v25 = v24;
    v22;
    v66 = v23;
    v58 = v25;
    v67 = v25;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v65 = static ErrorString.integer;
    v64 = xmmword_3A3910;
    v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v28 = v27;
    v58;
    v66 = v26;
    v59 = v28;
    v67 = v28;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v65 = static ErrorString.error;
    v64 = xmmword_3A3930;
    v29 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v31 = v30;
    v59;
    v66 = v29;
    v60 = v31;
    v67 = v31;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v65 = static ErrorString.archive;
    v64 = xmmword_3A3950;
    v32 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v34 = v33;
    v60;
    v66 = v32;
    v61 = v34;
    v67 = v34;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v65 = static ErrorString.limit;
    v64 = xmmword_3A3970;
    v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v37 = v36;
    v61;
    v66 = v35;
    v62 = v37;
    v67 = v37;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v65 = static ErrorString.supportedStackTypes;
    v64 = xmmword_3A3990;
    v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v40 = v39;
    v62;
    v66 = v38;
    v63 = v40;
    v67 = v40;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v65 = static ErrorString.sortTypes;
    v64 = xmmword_3A39B0;
    v41 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v43 = v42;
    v63;
    type metadata accessor for OS_os_log();

    v44 = static OS_os_log.default.getter(v43, &v64);
    static os_log_type_t.error.getter();
    v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v46 = swift_allocObject(v45, 72, 7);
    v46[2] = 1;
    v46[3] = 2;
    v46[7] = &type metadata for String;
    v46[8] = lazy protocol witness table accessor for type String and conformance String();
    v46[4] = v41;
    v46[5] = v43;
    os_log(_:dso:log:type:_:)("%@ \n");

    v46;
    v47 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v47, 0, 0);
    *v48 = v41;
    *(v48 + 8) = v43;
    *(v48 + 16) = 0;
    *(v48 + 32) = 0;
    *(v48 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v51);
    return v50;
  }

  return v0;
}

uint64_t specialized handling<A, B>(_:_:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t *))
{
  v70 = 0;
  v2 = a2(a1, &v70);
  v3 = v70;
  if (v70)
  {
    v4 = tc_v1_error_message(v70);
    if (!v4)
    {
      BUG();
    }

    v53 = v3;
    v52 = v2;
    v68 = String.init(cString:)(v4);
    v54 = v5;
    v69 = v5;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v67 = static ErrorString.table;
    v66 = xmmword_3A3830;
    v6 = lazy protocol witness table accessor for type String and conformance String();
    v7 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v9 = v8;
    v54;
    v68 = v7;
    v55 = v9;
    v69 = v9;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v67 = static ErrorString.column;
    v66 = xmmword_3A3850;
    v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v12 = v11;
    v55;
    v68 = v10;
    v56 = v12;
    v69 = v12;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v67 = static ErrorString.tableMap;
    v66 = xmmword_3A3870;
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v15 = v14;
    v56;
    v68 = v13;
    v57 = v15;
    v69 = v15;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v67 = static ErrorString.columnMap;
    v66 = xmmword_3A3890;
    v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v18 = v17;
    v57;
    v68 = v16;
    v58 = v18;
    v69 = v18;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v67 = static ErrorString.drop;
    v66 = xmmword_3A38B0;
    v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v21 = v20;
    v58;
    v68 = v19;
    v59 = v21;
    v69 = v21;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v67 = static ErrorString.sequence;
    v66 = xmmword_3A38D0;
    v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v24 = v23;
    v59;
    v68 = v22;
    v69 = v24;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v67 = static ErrorString.double;
    v66 = xmmword_3A38F0;
    v25 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v27 = v26;
    v24;
    v68 = v25;
    v60 = v27;
    v69 = v27;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v67 = static ErrorString.integer;
    v66 = xmmword_3A3910;
    v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v30 = v29;
    v60;
    v68 = v28;
    v61 = v30;
    v69 = v30;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v67 = static ErrorString.error;
    v66 = xmmword_3A3930;
    v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v33 = v32;
    v61;
    v68 = v31;
    v62 = v33;
    v69 = v33;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v67 = static ErrorString.archive;
    v66 = xmmword_3A3950;
    v34 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v36 = v35;
    v62;
    v68 = v34;
    v63 = v36;
    v69 = v36;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v67 = static ErrorString.limit;
    v66 = xmmword_3A3970;
    v37 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v39 = v38;
    v63;
    v68 = v37;
    v64 = v39;
    v69 = v39;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v67 = static ErrorString.supportedStackTypes;
    v66 = xmmword_3A3990;
    v40 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v42 = v41;
    v64;
    v68 = v40;
    v65 = v42;
    v69 = v42;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v67 = static ErrorString.sortTypes;
    v66 = xmmword_3A39B0;
    v43 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v45 = v44;
    v65;
    type metadata accessor for OS_os_log();

    v46 = static OS_os_log.default.getter(v45, &v66);
    static os_log_type_t.error.getter();
    v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v48 = swift_allocObject(v47, 72, 7);
    v48[2] = 1;
    v48[3] = 2;
    v48[7] = &type metadata for String;
    v48[8] = lazy protocol witness table accessor for type String and conformance String();
    v48[4] = v43;
    v48[5] = v45;
    os_log(_:dso:log:type:_:)("%@ \n");

    v48;
    v49 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v49, 0, 0);
    *v50 = v43;
    *(v50 + 8) = v45;
    *(v50 + 16) = 0;
    *(v50 + 32) = 0;
    *(v50 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v53);
    return v52;
  }

  return v2;
}

{
  v70 = 0;
  v2 = a2(a1, &v70);
  v3 = v70;
  if (v70)
  {
    v4 = tc_v1_error_message(v70);
    if (!v4)
    {
      BUG();
    }

    v53 = v3;
    v52 = v2;
    v68 = String.init(cString:)(v4);
    v54 = v5;
    v69 = v5;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v67 = static ErrorString.table;
    v66 = xmmword_3A3830;
    v6 = lazy protocol witness table accessor for type String and conformance String();
    v7 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v9 = v8;
    v54;
    v68 = v7;
    v55 = v9;
    v69 = v9;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v67 = static ErrorString.column;
    v66 = xmmword_3A3850;
    v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v12 = v11;
    v55;
    v68 = v10;
    v56 = v12;
    v69 = v12;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v67 = static ErrorString.tableMap;
    v66 = xmmword_3A3870;
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v15 = v14;
    v56;
    v68 = v13;
    v57 = v15;
    v69 = v15;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v67 = static ErrorString.columnMap;
    v66 = xmmword_3A3890;
    v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v18 = v17;
    v57;
    v68 = v16;
    v58 = v18;
    v69 = v18;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v67 = static ErrorString.drop;
    v66 = xmmword_3A38B0;
    v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v21 = v20;
    v58;
    v68 = v19;
    v59 = v21;
    v69 = v21;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v67 = static ErrorString.sequence;
    v66 = xmmword_3A38D0;
    v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v24 = v23;
    v59;
    v68 = v22;
    v69 = v24;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v67 = static ErrorString.double;
    v66 = xmmword_3A38F0;
    v25 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v27 = v26;
    v24;
    v68 = v25;
    v60 = v27;
    v69 = v27;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v67 = static ErrorString.integer;
    v66 = xmmword_3A3910;
    v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v30 = v29;
    v60;
    v68 = v28;
    v61 = v30;
    v69 = v30;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v67 = static ErrorString.error;
    v66 = xmmword_3A3930;
    v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v33 = v32;
    v61;
    v68 = v31;
    v62 = v33;
    v69 = v33;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v67 = static ErrorString.archive;
    v66 = xmmword_3A3950;
    v34 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v36 = v35;
    v62;
    v68 = v34;
    v63 = v36;
    v69 = v36;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v67 = static ErrorString.limit;
    v66 = xmmword_3A3970;
    v37 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v39 = v38;
    v63;
    v68 = v37;
    v64 = v39;
    v69 = v39;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v67 = static ErrorString.supportedStackTypes;
    v66 = xmmword_3A3990;
    v40 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v42 = v41;
    v64;
    v68 = v40;
    v65 = v42;
    v69 = v42;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v67 = static ErrorString.sortTypes;
    v66 = xmmword_3A39B0;
    v43 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v45 = v44;
    v65;
    type metadata accessor for OS_os_log();

    v46 = static OS_os_log.default.getter(v45, &v66);
    static os_log_type_t.error.getter();
    v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v48 = swift_allocObject(v47, 72, 7);
    v48[2] = 1;
    v48[3] = 2;
    v48[7] = &type metadata for String;
    v48[8] = lazy protocol witness table accessor for type String and conformance String();
    v48[4] = v43;
    v48[5] = v45;
    os_log(_:dso:log:type:_:)("%@ \n");

    v48;
    v49 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v49, 0, 0);
    *v50 = v43;
    *(v50 + 8) = v45;
    *(v50 + 16) = 0;
    *(v50 + 32) = 0;
    *(v50 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v53);
    return v52;
  }

  return v2;
}

NSURL *specialized handling<A, B>(_:_:)(uint64_t a1)
{
  v67 = 0;
  tc_v1_ft_double(a1, &v67);
  v1 = v67;
  if (v67)
  {
    v2 = tc_v1_error_message(v67);
    if (!v2)
    {
      BUG();
    }

    v50 = v1;
    v65 = String.init(cString:)(v2);
    v51 = v3;
    v66 = v3;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v64 = static ErrorString.table;
    v63 = xmmword_3A3830;
    v4 = lazy protocol witness table accessor for type String and conformance String();
    v5 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v64, &v63, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v7 = v6;
    v51;
    v65 = v5;
    v52 = v7;
    v66 = v7;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v64 = static ErrorString.column;
    v63 = xmmword_3A3850;
    v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v64, &v63, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v10 = v9;
    v52;
    v65 = v8;
    v53 = v10;
    v66 = v10;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v64 = static ErrorString.tableMap;
    v63 = xmmword_3A3870;
    v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v64, &v63, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v13 = v12;
    v53;
    v65 = v11;
    v54 = v13;
    v66 = v13;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v64 = static ErrorString.columnMap;
    v63 = xmmword_3A3890;
    v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v64, &v63, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v16 = v15;
    v54;
    v65 = v14;
    v55 = v16;
    v66 = v16;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v64 = static ErrorString.drop;
    v63 = xmmword_3A38B0;
    v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v64, &v63, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v19 = v18;
    v55;
    v65 = v17;
    v56 = v19;
    v66 = v19;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v64 = static ErrorString.sequence;
    v63 = xmmword_3A38D0;
    v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v64, &v63, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v22 = v21;
    v56;
    v65 = v20;
    v57 = v22;
    v66 = v22;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v64 = static ErrorString.double;
    v63 = xmmword_3A38F0;
    v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v64, &v63, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v25 = v24;
    v57;
    v65 = v23;
    v58 = v25;
    v66 = v25;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v64 = static ErrorString.integer;
    v63 = xmmword_3A3910;
    v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v64, &v63, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v28 = v27;
    v58;
    v65 = v26;
    v59 = v28;
    v66 = v28;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v64 = static ErrorString.error;
    v63 = xmmword_3A3930;
    v29 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v64, &v63, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v31 = v30;
    v59;
    v65 = v29;
    v60 = v31;
    v66 = v31;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v64 = static ErrorString.archive;
    v63 = xmmword_3A3950;
    v32 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v64, &v63, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v34 = v33;
    v60;
    v65 = v32;
    v61 = v34;
    v66 = v34;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v64 = static ErrorString.limit;
    v63 = xmmword_3A3970;
    v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v64, &v63, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v37 = v36;
    v61;
    v65 = v35;
    v62 = v37;
    v66 = v37;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v64 = static ErrorString.supportedStackTypes;
    v63 = xmmword_3A3990;
    v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v64, &v63, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v40 = v39;
    v62;
    v65 = v38;
    v66 = v40;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v64 = static ErrorString.sortTypes;
    v63 = xmmword_3A39B0;
    v41 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v64, &v63, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v43 = v42;
    v40;
    type metadata accessor for OS_os_log();

    v44 = static OS_os_log.default.getter(v43, &v63);
    static os_log_type_t.error.getter();
    v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v46 = swift_allocObject(v45, 72, 7);
    v46[2] = 1;
    v46[3] = 2;
    v46[7] = &type metadata for String;
    v46[8] = lazy protocol witness table accessor for type String and conformance String();
    v46[4] = v41;
    v46[5] = v43;
    os_log(_:dso:log:type:_:)("%@ \n");

    v46;
    v47 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v47, 0, 0);
    *v48 = v41;
    *(v48 + 8) = v43;
    *(v48 + 16) = 0;
    *(v48 + 32) = 0;
    *(v48 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v50);
  }

  return __stack_chk_guard;
}

{
  v67 = 0;
  tc_v1_sarray_materialize(a1, &v67);
  v1 = v67;
  if (v67)
  {
    v2 = tc_v1_error_message(v67);
    if (!v2)
    {
      BUG();
    }

    v50 = v1;
    v65 = String.init(cString:)(v2);
    v51 = v3;
    v66 = v3;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v64 = static ErrorString.table;
    v63 = xmmword_3A3830;
    v4 = lazy protocol witness table accessor for type String and conformance String();
    v5 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v64, &v63, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v7 = v6;
    v51;
    v65 = v5;
    v52 = v7;
    v66 = v7;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v64 = static ErrorString.column;
    v63 = xmmword_3A3850;
    v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v64, &v63, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v10 = v9;
    v52;
    v65 = v8;
    v53 = v10;
    v66 = v10;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v64 = static ErrorString.tableMap;
    v63 = xmmword_3A3870;
    v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v64, &v63, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v13 = v12;
    v53;
    v65 = v11;
    v54 = v13;
    v66 = v13;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v64 = static ErrorString.columnMap;
    v63 = xmmword_3A3890;
    v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v64, &v63, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v16 = v15;
    v54;
    v65 = v14;
    v55 = v16;
    v66 = v16;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v64 = static ErrorString.drop;
    v63 = xmmword_3A38B0;
    v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v64, &v63, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v19 = v18;
    v55;
    v65 = v17;
    v56 = v19;
    v66 = v19;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v64 = static ErrorString.sequence;
    v63 = xmmword_3A38D0;
    v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v64, &v63, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v22 = v21;
    v56;
    v65 = v20;
    v57 = v22;
    v66 = v22;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v64 = static ErrorString.double;
    v63 = xmmword_3A38F0;
    v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v64, &v63, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v25 = v24;
    v57;
    v65 = v23;
    v58 = v25;
    v66 = v25;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v64 = static ErrorString.integer;
    v63 = xmmword_3A3910;
    v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v64, &v63, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v28 = v27;
    v58;
    v65 = v26;
    v59 = v28;
    v66 = v28;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v64 = static ErrorString.error;
    v63 = xmmword_3A3930;
    v29 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v64, &v63, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v31 = v30;
    v59;
    v65 = v29;
    v60 = v31;
    v66 = v31;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v64 = static ErrorString.archive;
    v63 = xmmword_3A3950;
    v32 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v64, &v63, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v34 = v33;
    v60;
    v65 = v32;
    v61 = v34;
    v66 = v34;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v64 = static ErrorString.limit;
    v63 = xmmword_3A3970;
    v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v64, &v63, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v37 = v36;
    v61;
    v65 = v35;
    v62 = v37;
    v66 = v37;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v64 = static ErrorString.supportedStackTypes;
    v63 = xmmword_3A3990;
    v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v64, &v63, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v40 = v39;
    v62;
    v65 = v38;
    v66 = v40;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v64 = static ErrorString.sortTypes;
    v63 = xmmword_3A39B0;
    v41 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v64, &v63, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v43 = v42;
    v40;
    type metadata accessor for OS_os_log();

    v44 = static OS_os_log.default.getter(v43, &v63);
    static os_log_type_t.error.getter(v43);
    v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v46 = swift_allocObject(v45, 72, 7);
    v46[2] = 1;
    v46[3] = 2;
    v46[7] = &type metadata for String;
    v46[8] = lazy protocol witness table accessor for type String and conformance String();
    v46[4] = v41;
    v46[5] = v43;
    os_log(_:dso:log:type:_:)("%@ \n");

    v46;
    v47 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v47, 0, 0);
    *v48 = v41;
    *(v48 + 8) = v43;
    *(v48 + 16) = 0;
    *(v48 + 32) = 0;
    *(v48 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v50);
  }

  return __stack_chk_guard;
}

uint64_t specialized handling<A, B, C>(_:_:_:)(uint64_t a1, uint64_t a2)
{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_flex_list_extract_element);
}

{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_sframe_extract_row);
}

{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_sarray_extract_element);
}

{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_sarray_head);
}

{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_sarray_create_from_const);
}

{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_sarray_tail);
}

{
  v70 = 0;
  v2 = tc_v1_flex_list_add_element(a1, a2, &v70);
  v3 = v70;
  if (v70)
  {
    v4 = tc_v1_error_message(v70);
    if (!v4)
    {
      BUG();
    }

    v53 = v3;
    v52 = v2;
    v68 = String.init(cString:)(v4);
    v54 = v5;
    v69 = v5;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v67 = static ErrorString.table;
    v66 = xmmword_3A3830;
    v6 = lazy protocol witness table accessor for type String and conformance String();
    v7 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v9 = v8;
    v54;
    v68 = v7;
    v55 = v9;
    v69 = v9;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v67 = static ErrorString.column;
    v66 = xmmword_3A3850;
    v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v12 = v11;
    v55;
    v68 = v10;
    v56 = v12;
    v69 = v12;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v67 = static ErrorString.tableMap;
    v66 = xmmword_3A3870;
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v15 = v14;
    v56;
    v68 = v13;
    v57 = v15;
    v69 = v15;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v67 = static ErrorString.columnMap;
    v66 = xmmword_3A3890;
    v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v18 = v17;
    v57;
    v68 = v16;
    v58 = v18;
    v69 = v18;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v67 = static ErrorString.drop;
    v66 = xmmword_3A38B0;
    v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v21 = v20;
    v58;
    v68 = v19;
    v59 = v21;
    v69 = v21;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v67 = static ErrorString.sequence;
    v66 = xmmword_3A38D0;
    v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v24 = v23;
    v59;
    v68 = v22;
    v69 = v24;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v67 = static ErrorString.double;
    v66 = xmmword_3A38F0;
    v25 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v27 = v26;
    v24;
    v68 = v25;
    v60 = v27;
    v69 = v27;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v67 = static ErrorString.integer;
    v66 = xmmword_3A3910;
    v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v30 = v29;
    v60;
    v68 = v28;
    v61 = v30;
    v69 = v30;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v67 = static ErrorString.error;
    v66 = xmmword_3A3930;
    v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v33 = v32;
    v61;
    v68 = v31;
    v62 = v33;
    v69 = v33;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v67 = static ErrorString.archive;
    v66 = xmmword_3A3950;
    v34 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v36 = v35;
    v62;
    v68 = v34;
    v63 = v36;
    v69 = v36;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v67 = static ErrorString.limit;
    v66 = xmmword_3A3970;
    v37 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v39 = v38;
    v63;
    v68 = v37;
    v64 = v39;
    v69 = v39;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v67 = static ErrorString.supportedStackTypes;
    v66 = xmmword_3A3990;
    v40 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v42 = v41;
    v64;
    v68 = v40;
    v65 = v42;
    v69 = v42;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v67 = static ErrorString.sortTypes;
    v66 = xmmword_3A39B0;
    v43 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v45 = v44;
    v65;
    type metadata accessor for OS_os_log();

    v46 = static OS_os_log.default.getter(v45, &v66);
    static os_log_type_t.error.getter();
    v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v48 = swift_allocObject(v47, 72, 7);
    v48[2] = 1;
    v48[3] = 2;
    v48[7] = &type metadata for String;
    v48[8] = lazy protocol witness table accessor for type String and conformance String();
    v48[4] = v43;
    v48[5] = v45;
    os_log(_:dso:log:type:_:)("%@ \n");

    v48;
    v49 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v49, 0, 0);
    *v50 = v43;
    *(v50 + 8) = v45;
    *(v50 + 16) = 0;
    *(v50 + 32) = 0;
    *(v50 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v53);
    return v52;
  }

  return v2;
}

{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_sframe_extract_column_by_name);
}

{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_parameters_retrieve_flexible_type);
}

{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_parameters_retrieve_sframe);
}

{
  v69 = 0;
  v2 = tc_v1_flex_enum_list_add_element(a1, a2, &v69);
  v3 = v69;
  if (v69)
  {
    v4 = tc_v1_error_message(v69);
    if (!v4)
    {
      BUG();
    }

    v52 = v3;
    v51 = v2;
    v67 = String.init(cString:)(v4);
    v53 = v5;
    v68 = v5;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v66 = static ErrorString.table;
    v65 = xmmword_3A3830;
    v6 = lazy protocol witness table accessor for type String and conformance String();
    v7 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v9 = v8;
    v53;
    v67 = v7;
    v54 = v9;
    v68 = v9;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v66 = static ErrorString.column;
    v65 = xmmword_3A3850;
    v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v12 = v11;
    v54;
    v67 = v10;
    v55 = v12;
    v68 = v12;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v66 = static ErrorString.tableMap;
    v65 = xmmword_3A3870;
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v15 = v14;
    v55;
    v67 = v13;
    v56 = v15;
    v68 = v15;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v66 = static ErrorString.columnMap;
    v65 = xmmword_3A3890;
    v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v18 = v17;
    v56;
    v67 = v16;
    v57 = v18;
    v68 = v18;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v66 = static ErrorString.drop;
    v65 = xmmword_3A38B0;
    v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v21 = v20;
    v57;
    v67 = v19;
    v58 = v21;
    v68 = v21;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v66 = static ErrorString.sequence;
    v65 = xmmword_3A38D0;
    v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v24 = v23;
    v58;
    v67 = v22;
    v68 = v24;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v66 = static ErrorString.double;
    v65 = xmmword_3A38F0;
    v25 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v27 = v26;
    v24;
    v67 = v25;
    v59 = v27;
    v68 = v27;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v66 = static ErrorString.integer;
    v65 = xmmword_3A3910;
    v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v30 = v29;
    v59;
    v67 = v28;
    v60 = v30;
    v68 = v30;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v66 = static ErrorString.error;
    v65 = xmmword_3A3930;
    v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v33 = v32;
    v60;
    v67 = v31;
    v61 = v33;
    v68 = v33;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v66 = static ErrorString.archive;
    v65 = xmmword_3A3950;
    v34 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v36 = v35;
    v61;
    v67 = v34;
    v62 = v36;
    v68 = v36;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v66 = static ErrorString.limit;
    v65 = xmmword_3A3970;
    v37 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v39 = v38;
    v62;
    v67 = v37;
    v63 = v39;
    v68 = v39;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v66 = static ErrorString.supportedStackTypes;
    v65 = xmmword_3A3990;
    v40 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v42 = v41;
    v63;
    v67 = v40;
    v68 = v42;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v66 = static ErrorString.sortTypes;
    v65 = xmmword_3A39B0;
    v43 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v64 = v44;
    v42;
    type metadata accessor for OS_os_log();
    v45 = static OS_os_log.default.getter(0, &v65);
    static os_log_type_t.error.getter(0);
    v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v47 = swift_allocObject(v46, 72, 7);
    v47[2] = 1;
    v47[3] = 2;
    v47[7] = &type metadata for String;
    v47[8] = lazy protocol witness table accessor for type String and conformance String();
    v47[4] = v43;
    v47[5] = v64;

    os_log(_:dso:log:type:_:)("%@ \n");

    v47;
    v48 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v48, 0, 0);
    *v49 = v43;
    *(v49 + 8) = v64;
    *(v49 + 16) = 0;
    *(v49 + 32) = 0;
    *(v49 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v52);
    return v51;
  }

  return v2;
}

{
  v69 = 0;
  v2 = tc_v1_sarray_create_from_sequence(a1, a2, &v69);
  v3 = v69;
  if (v69)
  {
    v4 = tc_v1_error_message(v69);
    if (!v4)
    {
      BUG();
    }

    v52 = v3;
    v51 = v2;
    v67 = String.init(cString:)(v4);
    v53 = v5;
    v68 = v5;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v66 = static ErrorString.table;
    v65 = xmmword_3A3830;
    v6 = lazy protocol witness table accessor for type String and conformance String();
    v7 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v9 = v8;
    v53;
    v67 = v7;
    v54 = v9;
    v68 = v9;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v66 = static ErrorString.column;
    v65 = xmmword_3A3850;
    v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v12 = v11;
    v54;
    v67 = v10;
    v55 = v12;
    v68 = v12;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v66 = static ErrorString.tableMap;
    v65 = xmmword_3A3870;
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v15 = v14;
    v55;
    v67 = v13;
    v56 = v15;
    v68 = v15;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v66 = static ErrorString.columnMap;
    v65 = xmmword_3A3890;
    v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v18 = v17;
    v56;
    v67 = v16;
    v57 = v18;
    v68 = v18;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v66 = static ErrorString.drop;
    v65 = xmmword_3A38B0;
    v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v21 = v20;
    v57;
    v67 = v19;
    v58 = v21;
    v68 = v21;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v66 = static ErrorString.sequence;
    v65 = xmmword_3A38D0;
    v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v24 = v23;
    v58;
    v67 = v22;
    v68 = v24;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v66 = static ErrorString.double;
    v65 = xmmword_3A38F0;
    v25 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v27 = v26;
    v24;
    v67 = v25;
    v59 = v27;
    v68 = v27;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v66 = static ErrorString.integer;
    v65 = xmmword_3A3910;
    v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v30 = v29;
    v59;
    v67 = v28;
    v60 = v30;
    v68 = v30;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v66 = static ErrorString.error;
    v65 = xmmword_3A3930;
    v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v33 = v32;
    v60;
    v67 = v31;
    v61 = v33;
    v68 = v33;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v66 = static ErrorString.archive;
    v65 = xmmword_3A3950;
    v34 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v36 = v35;
    v61;
    v67 = v34;
    v62 = v36;
    v68 = v36;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v66 = static ErrorString.limit;
    v65 = xmmword_3A3970;
    v37 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v39 = v38;
    v62;
    v67 = v37;
    v63 = v39;
    v68 = v39;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v66 = static ErrorString.supportedStackTypes;
    v65 = xmmword_3A3990;
    v40 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v42 = v41;
    v63;
    v67 = v40;
    v68 = v42;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v66 = static ErrorString.sortTypes;
    v65 = xmmword_3A39B0;
    v43 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v64 = v44;
    v42;
    type metadata accessor for OS_os_log();
    v45 = static OS_os_log.default.getter(0, &v65);
    static os_log_type_t.error.getter(0);
    v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v47 = swift_allocObject(v46, 72, 7);
    v47[2] = 1;
    v47[3] = 2;
    v47[7] = &type metadata for String;
    v47[8] = lazy protocol witness table accessor for type String and conformance String();
    v47[4] = v43;
    v47[5] = v64;

    os_log(_:dso:log:type:_:)("%@ \n");

    v47;
    v48 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v48, 0, 0);
    *v49 = v43;
    *(v49 + 8) = v64;
    *(v49 + 16) = 0;
    *(v49 + 32) = 0;
    *(v49 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v52);
    return v51;
  }

  return v2;
}

{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_sframe_append);
}

{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_sarray_append);
}

{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_sarray_apply_mask);
}

{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_sarray_replace_na);
}

{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_plot_get_next_data);
}

{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_sframe_read_csv);
}

{
  v69 = 0;
  v2 = tc_v1_sframe_column_type(a1, a2, &v69);
  v3 = v69;
  if (v69)
  {
    v4 = tc_v1_error_message(v69);
    if (!v4)
    {
      BUG();
    }

    v52 = v3;
    v51 = v2;
    v67 = String.init(cString:)(v4);
    v53 = v5;
    v68 = v5;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v66 = static ErrorString.table;
    v65 = xmmword_3A3830;
    v6 = lazy protocol witness table accessor for type String and conformance String();
    v7 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v9 = v8;
    v53;
    v67 = v7;
    v54 = v9;
    v68 = v9;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v66 = static ErrorString.column;
    v65 = xmmword_3A3850;
    v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v12 = v11;
    v54;
    v67 = v10;
    v55 = v12;
    v68 = v12;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v66 = static ErrorString.tableMap;
    v65 = xmmword_3A3870;
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v15 = v14;
    v55;
    v67 = v13;
    v56 = v15;
    v68 = v15;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v66 = static ErrorString.columnMap;
    v65 = xmmword_3A3890;
    v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v18 = v17;
    v56;
    v67 = v16;
    v57 = v18;
    v68 = v18;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v66 = static ErrorString.drop;
    v65 = xmmword_3A38B0;
    v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v21 = v20;
    v57;
    v67 = v19;
    v58 = v21;
    v68 = v21;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v66 = static ErrorString.sequence;
    v65 = xmmword_3A38D0;
    v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v24 = v23;
    v58;
    v67 = v22;
    v68 = v24;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v66 = static ErrorString.double;
    v65 = xmmword_3A38F0;
    v25 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v27 = v26;
    v24;
    v67 = v25;
    v59 = v27;
    v68 = v27;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v66 = static ErrorString.integer;
    v65 = xmmword_3A3910;
    v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v30 = v29;
    v59;
    v67 = v28;
    v60 = v30;
    v68 = v30;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v66 = static ErrorString.error;
    v65 = xmmword_3A3930;
    v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v33 = v32;
    v60;
    v67 = v31;
    v61 = v33;
    v68 = v33;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v66 = static ErrorString.archive;
    v65 = xmmword_3A3950;
    v34 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v36 = v35;
    v61;
    v67 = v34;
    v62 = v36;
    v68 = v36;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v66 = static ErrorString.limit;
    v65 = xmmword_3A3970;
    v37 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v39 = v38;
    v62;
    v67 = v37;
    v63 = v39;
    v68 = v39;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v66 = static ErrorString.supportedStackTypes;
    v65 = xmmword_3A3990;
    v40 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v42 = v41;
    v63;
    v67 = v40;
    v68 = v42;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v66 = static ErrorString.sortTypes;
    v65 = xmmword_3A39B0;
    v43 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v64 = v44;
    v42;
    type metadata accessor for OS_os_log();
    v45 = static OS_os_log.default.getter(0, &v65);
    static os_log_type_t.error.getter();
    v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v47 = swift_allocObject(v46, 72, 7);
    v47[2] = 1;
    v47[3] = 2;
    v47[7] = &type metadata for String;
    v47[8] = lazy protocol witness table accessor for type String and conformance String();
    v47[4] = v43;
    v47[5] = v64;

    os_log(_:dso:log:type:_:)("%@ \n");

    v47;
    v48 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v48, 0, 0);
    *v49 = v43;
    *(v49 + 8) = v64;
    *(v49 + 16) = 0;
    *(v49 + 32) = 0;
    *(v49 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v52);
    return v51;
  }

  return v2;
}

{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_sframe_head);
}

{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_sframe_tail);
}

{
  v69 = 0;
  v2 = tc_v1_plot_finished_streaming(a1, a2, &v69);
  v3 = v69;
  if (v69)
  {
    v4 = tc_v1_error_message(v69);
    if (!v4)
    {
      BUG();
    }

    v51 = v3;
    v52 = v2;
    v67 = String.init(cString:)(v4);
    v53 = v5;
    v68 = v5;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v66 = static ErrorString.table;
    v65 = xmmword_3A3830;
    v6 = lazy protocol witness table accessor for type String and conformance String();
    v7 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v9 = v8;
    v53;
    v67 = v7;
    v54 = v9;
    v68 = v9;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v66 = static ErrorString.column;
    v65 = xmmword_3A3850;
    v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v12 = v11;
    v54;
    v67 = v10;
    v55 = v12;
    v68 = v12;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v66 = static ErrorString.tableMap;
    v65 = xmmword_3A3870;
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v15 = v14;
    v55;
    v67 = v13;
    v56 = v15;
    v68 = v15;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v66 = static ErrorString.columnMap;
    v65 = xmmword_3A3890;
    v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v18 = v17;
    v56;
    v67 = v16;
    v57 = v18;
    v68 = v18;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v66 = static ErrorString.drop;
    v65 = xmmword_3A38B0;
    v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v21 = v20;
    v57;
    v67 = v19;
    v58 = v21;
    v68 = v21;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v66 = static ErrorString.sequence;
    v65 = xmmword_3A38D0;
    v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v24 = v23;
    v58;
    v67 = v22;
    v68 = v24;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v66 = static ErrorString.double;
    v65 = xmmword_3A38F0;
    v25 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v27 = v26;
    v24;
    v67 = v25;
    v59 = v27;
    v68 = v27;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v66 = static ErrorString.integer;
    v65 = xmmword_3A3910;
    v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v30 = v29;
    v59;
    v67 = v28;
    v60 = v30;
    v68 = v30;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v66 = static ErrorString.error;
    v65 = xmmword_3A3930;
    v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v33 = v32;
    v60;
    v67 = v31;
    v61 = v33;
    v68 = v33;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v66 = static ErrorString.archive;
    v65 = xmmword_3A3950;
    v34 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v36 = v35;
    v61;
    v67 = v34;
    v62 = v36;
    v68 = v36;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v66 = static ErrorString.limit;
    v65 = xmmword_3A3970;
    v37 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v39 = v38;
    v62;
    v67 = v37;
    v63 = v39;
    v68 = v39;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v66 = static ErrorString.supportedStackTypes;
    v65 = xmmword_3A3990;
    v40 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v42 = v41;
    v63;
    v67 = v40;
    v68 = v42;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v66 = static ErrorString.sortTypes;
    v65 = xmmword_3A39B0;
    v43 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v64 = v44;
    v42;
    type metadata accessor for OS_os_log();
    v45 = static OS_os_log.default.getter(0, &v65);
    static os_log_type_t.error.getter(0);
    v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v47 = swift_allocObject(v46, 72, 7);
    v47[2] = 1;
    v47[3] = 2;
    v47[7] = &type metadata for String;
    v47[8] = lazy protocol witness table accessor for type String and conformance String();
    v47[4] = v43;
    v47[5] = v64;
    v2 = v64;

    os_log(_:dso:log:type:_:)("%@ \n");

    v47;
    v48 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v48, 0, 0);
    *v49 = v43;
    *(v49 + 8) = v64;
    *(v49 + 16) = 0;
    *(v49 + 32) = 0;
    *(v49 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v51);
    LOBYTE(v2) = v52;
  }

  return v2;
}

uint64_t specialized handling<A, B, C>(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t *))
{
  v71 = 0;
  v3 = a3(a1, a2, &v71);
  v4 = v71;
  if (v71)
  {
    v5 = tc_v1_error_message(v71);
    if (!v5)
    {
      BUG();
    }

    v54 = v4;
    v53 = v3;
    v69 = String.init(cString:)(v5);
    v55 = v6;
    v70 = v6;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v68 = static ErrorString.table;
    v67 = xmmword_3A3830;
    v7 = lazy protocol witness table accessor for type String and conformance String();
    v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v10 = v9;
    v55;
    v69 = v8;
    v56 = v10;
    v70 = v10;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v68 = static ErrorString.column;
    v67 = xmmword_3A3850;
    v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v13 = v12;
    v56;
    v69 = v11;
    v57 = v13;
    v70 = v13;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v68 = static ErrorString.tableMap;
    v67 = xmmword_3A3870;
    v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v16 = v15;
    v57;
    v69 = v14;
    v58 = v16;
    v70 = v16;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v68 = static ErrorString.columnMap;
    v67 = xmmword_3A3890;
    v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v19 = v18;
    v58;
    v69 = v17;
    v59 = v19;
    v70 = v19;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v68 = static ErrorString.drop;
    v67 = xmmword_3A38B0;
    v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v22 = v21;
    v59;
    v69 = v20;
    v60 = v22;
    v70 = v22;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v68 = static ErrorString.sequence;
    v67 = xmmword_3A38D0;
    v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v25 = v24;
    v60;
    v69 = v23;
    v70 = v25;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v68 = static ErrorString.double;
    v67 = xmmword_3A38F0;
    v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v28 = v27;
    v25;
    v69 = v26;
    v61 = v28;
    v70 = v28;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v68 = static ErrorString.integer;
    v67 = xmmword_3A3910;
    v29 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v31 = v30;
    v61;
    v69 = v29;
    v62 = v31;
    v70 = v31;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v68 = static ErrorString.error;
    v67 = xmmword_3A3930;
    v32 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v34 = v33;
    v62;
    v69 = v32;
    v63 = v34;
    v70 = v34;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v68 = static ErrorString.archive;
    v67 = xmmword_3A3950;
    v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v37 = v36;
    v63;
    v69 = v35;
    v64 = v37;
    v70 = v37;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v68 = static ErrorString.limit;
    v67 = xmmword_3A3970;
    v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v40 = v39;
    v64;
    v69 = v38;
    v65 = v40;
    v70 = v40;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v68 = static ErrorString.supportedStackTypes;
    v67 = xmmword_3A3990;
    v41 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v43 = v42;
    v65;
    v69 = v41;
    v66 = v43;
    v70 = v43;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v68 = static ErrorString.sortTypes;
    v67 = xmmword_3A39B0;
    v44 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v46 = v45;
    v66;
    type metadata accessor for OS_os_log();

    v47 = static OS_os_log.default.getter(v46, &v67);
    static os_log_type_t.error.getter();
    v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v49 = swift_allocObject(v48, 72, 7);
    v49[2] = 1;
    v49[3] = 2;
    v49[7] = &type metadata for String;
    v49[8] = lazy protocol witness table accessor for type String and conformance String();
    v49[4] = v44;
    v49[5] = v46;
    os_log(_:dso:log:type:_:)("%@ \n");

    v49;
    v50 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v50, 0, 0);
    *v51 = v44;
    *(v51 + 8) = v46;
    *(v51 + 16) = 0;
    *(v51 + 32) = 0;
    *(v51 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v54);
    return v53;
  }

  return v3;
}

{
  v70 = 0;
  v3 = a3(a1, a2, &v70);
  v4 = v70;
  if (v70)
  {
    v5 = tc_v1_error_message(v70);
    if (!v5)
    {
      BUG();
    }

    v53 = v4;
    v52 = v3;
    v68 = String.init(cString:)(v5);
    v54 = v6;
    v69 = v6;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v67 = static ErrorString.table;
    v66 = xmmword_3A3830;
    v7 = lazy protocol witness table accessor for type String and conformance String();
    v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v10 = v9;
    v54;
    v68 = v8;
    v55 = v10;
    v69 = v10;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v67 = static ErrorString.column;
    v66 = xmmword_3A3850;
    v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v13 = v12;
    v55;
    v68 = v11;
    v56 = v13;
    v69 = v13;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v67 = static ErrorString.tableMap;
    v66 = xmmword_3A3870;
    v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v16 = v15;
    v56;
    v68 = v14;
    v57 = v16;
    v69 = v16;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v67 = static ErrorString.columnMap;
    v66 = xmmword_3A3890;
    v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v19 = v18;
    v57;
    v68 = v17;
    v58 = v19;
    v69 = v19;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v67 = static ErrorString.drop;
    v66 = xmmword_3A38B0;
    v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v22 = v21;
    v58;
    v68 = v20;
    v59 = v22;
    v69 = v22;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v67 = static ErrorString.sequence;
    v66 = xmmword_3A38D0;
    v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v25 = v24;
    v59;
    v68 = v23;
    v69 = v25;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v67 = static ErrorString.double;
    v66 = xmmword_3A38F0;
    v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v28 = v27;
    v25;
    v68 = v26;
    v60 = v28;
    v69 = v28;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v67 = static ErrorString.integer;
    v66 = xmmword_3A3910;
    v29 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v31 = v30;
    v60;
    v68 = v29;
    v61 = v31;
    v69 = v31;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v67 = static ErrorString.error;
    v66 = xmmword_3A3930;
    v32 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v34 = v33;
    v61;
    v68 = v32;
    v62 = v34;
    v69 = v34;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v67 = static ErrorString.archive;
    v66 = xmmword_3A3950;
    v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v37 = v36;
    v62;
    v68 = v35;
    v63 = v37;
    v69 = v37;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v67 = static ErrorString.limit;
    v66 = xmmword_3A3970;
    v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v40 = v39;
    v63;
    v68 = v38;
    v64 = v40;
    v69 = v40;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v67 = static ErrorString.supportedStackTypes;
    v66 = xmmword_3A3990;
    v41 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v43 = v42;
    v64;
    v68 = v41;
    v69 = v43;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v67 = static ErrorString.sortTypes;
    v66 = xmmword_3A39B0;
    v44 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v65 = v45;
    v43;
    type metadata accessor for OS_os_log();
    v46 = static OS_os_log.default.getter(0, &v66);
    static os_log_type_t.error.getter();
    v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v48 = swift_allocObject(v47, 72, 7);
    v48[2] = 1;
    v48[3] = 2;
    v48[7] = &type metadata for String;
    v48[8] = lazy protocol witness table accessor for type String and conformance String();
    v48[4] = v44;
    v48[5] = v65;

    os_log(_:dso:log:type:_:)("%@ \n");

    v48;
    v49 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v49, 0, 0);
    *v50 = v44;
    *(v50 + 8) = v65;
    *(v50 + 16) = 0;
    *(v50 + 32) = 0;
    *(v50 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v53);
    return v52;
  }

  return v3;
}

{
  v70 = 0;
  v3 = a3(a1, a2, &v70);
  v4 = v70;
  if (v70)
  {
    v5 = tc_v1_error_message(v70);
    if (!v5)
    {
      BUG();
    }

    v53 = v4;
    v52 = v3;
    v68 = String.init(cString:)(v5);
    v54 = v6;
    v69 = v6;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v67 = static ErrorString.table;
    v66 = xmmword_3A3830;
    v7 = lazy protocol witness table accessor for type String and conformance String();
    v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v10 = v9;
    v54;
    v68 = v8;
    v55 = v10;
    v69 = v10;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v67 = static ErrorString.column;
    v66 = xmmword_3A3850;
    v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v13 = v12;
    v55;
    v68 = v11;
    v56 = v13;
    v69 = v13;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v67 = static ErrorString.tableMap;
    v66 = xmmword_3A3870;
    v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v16 = v15;
    v56;
    v68 = v14;
    v57 = v16;
    v69 = v16;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v67 = static ErrorString.columnMap;
    v66 = xmmword_3A3890;
    v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v19 = v18;
    v57;
    v68 = v17;
    v58 = v19;
    v69 = v19;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v67 = static ErrorString.drop;
    v66 = xmmword_3A38B0;
    v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v22 = v21;
    v58;
    v68 = v20;
    v59 = v22;
    v69 = v22;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v67 = static ErrorString.sequence;
    v66 = xmmword_3A38D0;
    v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v25 = v24;
    v59;
    v68 = v23;
    v69 = v25;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v67 = static ErrorString.double;
    v66 = xmmword_3A38F0;
    v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v28 = v27;
    v25;
    v68 = v26;
    v60 = v28;
    v69 = v28;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v67 = static ErrorString.integer;
    v66 = xmmword_3A3910;
    v29 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v31 = v30;
    v60;
    v68 = v29;
    v61 = v31;
    v69 = v31;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v67 = static ErrorString.error;
    v66 = xmmword_3A3930;
    v32 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v34 = v33;
    v61;
    v68 = v32;
    v62 = v34;
    v69 = v34;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v67 = static ErrorString.archive;
    v66 = xmmword_3A3950;
    v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v37 = v36;
    v62;
    v68 = v35;
    v63 = v37;
    v69 = v37;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v67 = static ErrorString.limit;
    v66 = xmmword_3A3970;
    v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v40 = v39;
    v63;
    v68 = v38;
    v64 = v40;
    v69 = v40;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v67 = static ErrorString.supportedStackTypes;
    v66 = xmmword_3A3990;
    v41 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v43 = v42;
    v64;
    v68 = v41;
    v69 = v43;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v67 = static ErrorString.sortTypes;
    v66 = xmmword_3A39B0;
    v44 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v65 = v45;
    v43;
    type metadata accessor for OS_os_log();
    v46 = static OS_os_log.default.getter(0, &v66);
    static os_log_type_t.error.getter(0);
    v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v48 = swift_allocObject(v47, 72, 7);
    v48[2] = 1;
    v48[3] = 2;
    v48[7] = &type metadata for String;
    v48[8] = lazy protocol witness table accessor for type String and conformance String();
    v48[4] = v44;
    v48[5] = v65;

    os_log(_:dso:log:type:_:)("%@ \n");

    v48;
    v49 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v49, 0, 0);
    *v50 = v44;
    *(v50 + 8) = v65;
    *(v50 + 16) = 0;
    *(v50 + 32) = 0;
    *(v50 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v53);
    return v52;
  }

  return v3;
}

uint64_t specialized handling<A, B, C>(_:_:_:)(uint64_t a1, char a2)
{
  v69 = 0;
  v2 = tc_v1_sarray_sort(a1, a2 & 1, &v69);
  v3 = v69;
  if (v69)
  {
    v4 = tc_v1_error_message(v69);
    if (!v4)
    {
      BUG();
    }

    v51 = v3;
    v50 = v2;
    v67 = String.init(cString:)(v4);
    v53 = v5;
    v68 = v5;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v66 = static ErrorString.table;
    v65 = xmmword_3A3830;
    v6 = lazy protocol witness table accessor for type String and conformance String();
    v7 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v9 = v8;
    v53;
    v67 = v7;
    v54 = v9;
    v68 = v9;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v66 = static ErrorString.column;
    v65 = xmmword_3A3850;
    v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v12 = v11;
    v54;
    v67 = v10;
    v55 = v12;
    v68 = v12;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v66 = static ErrorString.tableMap;
    v65 = xmmword_3A3870;
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v15 = v14;
    v55;
    v67 = v13;
    v56 = v15;
    v68 = v15;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v66 = static ErrorString.columnMap;
    v65 = xmmword_3A3890;
    v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v18 = v17;
    v56;
    v67 = v16;
    v57 = v18;
    v68 = v18;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v66 = static ErrorString.drop;
    v65 = xmmword_3A38B0;
    v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v21 = v20;
    v57;
    v67 = v19;
    v58 = v21;
    v68 = v21;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v66 = static ErrorString.sequence;
    v65 = xmmword_3A38D0;
    v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v24 = v23;
    v58;
    v67 = v22;
    v68 = v24;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v66 = static ErrorString.double;
    v65 = xmmword_3A38F0;
    v25 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v27 = v26;
    v24;
    v67 = v25;
    v59 = v27;
    v68 = v27;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v66 = static ErrorString.integer;
    v65 = xmmword_3A3910;
    v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v30 = v29;
    v59;
    v67 = v28;
    v60 = v30;
    v68 = v30;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v66 = static ErrorString.error;
    v65 = xmmword_3A3930;
    v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v33 = v32;
    v60;
    v67 = v31;
    v61 = v33;
    v68 = v33;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v66 = static ErrorString.archive;
    v65 = xmmword_3A3950;
    v34 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v36 = v35;
    v61;
    v67 = v34;
    v62 = v36;
    v68 = v36;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v66 = static ErrorString.limit;
    v65 = xmmword_3A3970;
    v37 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v39 = v38;
    v62;
    v67 = v37;
    v63 = v39;
    v68 = v39;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v66 = static ErrorString.supportedStackTypes;
    v65 = xmmword_3A3990;
    v40 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v42 = v41;
    v63;
    v67 = v40;
    v68 = v42;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v66 = static ErrorString.sortTypes;
    v65 = xmmword_3A39B0;
    v52 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v64 = v43;
    v42;
    type metadata accessor for OS_os_log();
    v44 = static OS_os_log.default.getter(0, &v65);
    static os_log_type_t.error.getter(0);
    v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v46 = swift_allocObject(v45, 72, 7);
    v46[2] = 1;
    v46[3] = 2;
    v46[7] = &type metadata for String;
    v46[8] = lazy protocol witness table accessor for type String and conformance String();
    v46[4] = v52;
    v46[5] = v64;

    os_log(_:dso:log:type:_:)("%@ \n");

    v46;
    v47 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v47, 0, 0);
    *v48 = v52;
    *(v48 + 8) = v64;
    *(v48 + 16) = 0;
    *(v48 + 32) = 0;
    *(v48 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v51);
    return v50;
  }

  return v2;
}

NSURL *specialized handling<A, B, C>(_:_:_:)(uint64_t a1, uint64_t a2)
{
  v68 = 0;
  tc_v1_sframe_remove_column(a1, a2, &v68);
  v2 = v68;
  if (v68)
  {
    v3 = tc_v1_error_message(v68);
    if (!v3)
    {
      BUG();
    }

    v50 = v2;
    v66 = String.init(cString:)(v3);
    v51 = v4;
    v67 = v4;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v65 = static ErrorString.table;
    v64 = xmmword_3A3830;
    v5 = lazy protocol witness table accessor for type String and conformance String();
    v6 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v8 = v7;
    v51;
    v66 = v6;
    v52 = v8;
    v67 = v8;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v65 = static ErrorString.column;
    v64 = xmmword_3A3850;
    v9 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v11 = v10;
    v52;
    v66 = v9;
    v53 = v11;
    v67 = v11;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v65 = static ErrorString.tableMap;
    v64 = xmmword_3A3870;
    v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v14 = v13;
    v53;
    v66 = v12;
    v54 = v14;
    v67 = v14;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v65 = static ErrorString.columnMap;
    v64 = xmmword_3A3890;
    v15 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v17 = v16;
    v54;
    v66 = v15;
    v55 = v17;
    v67 = v17;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v65 = static ErrorString.drop;
    v64 = xmmword_3A38B0;
    v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v20 = v19;
    v55;
    v66 = v18;
    v56 = v20;
    v67 = v20;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v65 = static ErrorString.sequence;
    v64 = xmmword_3A38D0;
    v21 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v23 = v22;
    v56;
    v66 = v21;
    v57 = v23;
    v67 = v23;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v65 = static ErrorString.double;
    v64 = xmmword_3A38F0;
    v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v26 = v25;
    v57;
    v66 = v24;
    v58 = v26;
    v67 = v26;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v65 = static ErrorString.integer;
    v64 = xmmword_3A3910;
    v27 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v29 = v28;
    v58;
    v66 = v27;
    v59 = v29;
    v67 = v29;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v65 = static ErrorString.error;
    v64 = xmmword_3A3930;
    v30 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v32 = v31;
    v59;
    v66 = v30;
    v60 = v32;
    v67 = v32;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v65 = static ErrorString.archive;
    v64 = xmmword_3A3950;
    v33 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v35 = v34;
    v60;
    v66 = v33;
    v61 = v35;
    v67 = v35;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v65 = static ErrorString.limit;
    v64 = xmmword_3A3970;
    v36 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v38 = v37;
    v61;
    v66 = v36;
    v62 = v38;
    v67 = v38;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v65 = static ErrorString.supportedStackTypes;
    v64 = xmmword_3A3990;
    v39 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v41 = v40;
    v62;
    v66 = v39;
    v67 = v41;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v65 = static ErrorString.sortTypes;
    v64 = xmmword_3A39B0;
    v42 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v63 = v43;
    v41;
    type metadata accessor for OS_os_log();
    v44 = static OS_os_log.default.getter(0, &v64);
    static os_log_type_t.error.getter();
    v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v46 = swift_allocObject(v45, 72, 7);
    v46[2] = 1;
    v46[3] = 2;
    v46[7] = &type metadata for String;
    v46[8] = lazy protocol witness table accessor for type String and conformance String();
    v46[4] = v42;
    v46[5] = v63;

    os_log(_:dso:log:type:_:)("%@ \n");

    v46;
    v47 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v47, 0, 0);
    *v48 = v42;
    *(v48 + 8) = v63;
    *(v48 + 16) = 0;
    *(v48 + 32) = 0;
    *(v48 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v50);
  }

  return __stack_chk_guard;
}

uint64_t specialized handling<A, B, C, D>(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = 0;
  v3 = tc_v1_flex_dict_add_element(a1, a2, a3, &v71);
  v4 = v71;
  if (v71)
  {
    v5 = tc_v1_error_message(v71);
    if (!v5)
    {
      BUG();
    }

    v54 = v4;
    v53 = v3;
    v69 = String.init(cString:)(v5);
    v56 = v6;
    v70 = v6;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v68 = static ErrorString.table;
    v67 = xmmword_3A3830;
    v7 = lazy protocol witness table accessor for type String and conformance String();
    v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v10 = v9;
    v56;
    v69 = v8;
    v57 = v10;
    v70 = v10;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v68 = static ErrorString.column;
    v67 = xmmword_3A3850;
    v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v13 = v12;
    v57;
    v69 = v11;
    v58 = v13;
    v70 = v13;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v68 = static ErrorString.tableMap;
    v67 = xmmword_3A3870;
    v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v16 = v15;
    v58;
    v69 = v14;
    v59 = v16;
    v70 = v16;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v68 = static ErrorString.columnMap;
    v67 = xmmword_3A3890;
    v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v19 = v18;
    v59;
    v69 = v17;
    v60 = v19;
    v70 = v19;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v68 = static ErrorString.drop;
    v67 = xmmword_3A38B0;
    v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v22 = v21;
    v60;
    v69 = v20;
    v61 = v22;
    v70 = v22;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v68 = static ErrorString.sequence;
    v67 = xmmword_3A38D0;
    v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v25 = v24;
    v61;
    v69 = v23;
    v70 = v25;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v68 = static ErrorString.double;
    v67 = xmmword_3A38F0;
    v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v28 = v27;
    v25;
    v69 = v26;
    v62 = v28;
    v70 = v28;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v68 = static ErrorString.integer;
    v67 = xmmword_3A3910;
    v29 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v31 = v30;
    v62;
    v69 = v29;
    v63 = v31;
    v70 = v31;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v68 = static ErrorString.error;
    v67 = xmmword_3A3930;
    v32 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v34 = v33;
    v63;
    v69 = v32;
    v64 = v34;
    v70 = v34;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v68 = static ErrorString.archive;
    v67 = xmmword_3A3950;
    v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v37 = v36;
    v64;
    v69 = v35;
    v65 = v37;
    v70 = v37;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v68 = static ErrorString.limit;
    v67 = xmmword_3A3970;
    v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v40 = v39;
    v65;
    v69 = v38;
    v70 = v40;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v68 = static ErrorString.supportedStackTypes;
    v67 = xmmword_3A3990;
    v41 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v42 = v40;
    v44 = v43;
    v42;
    v69 = v41;
    v70 = v44;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v68 = static ErrorString.sortTypes;
    v67 = xmmword_3A39B0;
    v66 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v46 = v45;
    v55 = v45;
    v44;
    type metadata accessor for OS_os_log();

    v47 = static OS_os_log.default.getter(v46, &v67);
    static os_log_type_t.error.getter();
    v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v49 = swift_allocObject(v48, 72, 7);
    v49[2] = 1;
    v49[3] = 2;
    v49[7] = &type metadata for String;
    v49[8] = lazy protocol witness table accessor for type String and conformance String();
    v49[4] = v66;
    v49[5] = v55;
    os_log(_:dso:log:type:_:)("%@ \n");

    v49;
    v50 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v50, 0, 0);
    *v51 = v66;
    *(v51 + 8) = v55;
    *(v51 + 16) = 0;
    *(v51 + 32) = 0;
    *(v51 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v54);
    return v53;
  }

  return v3;
}

{
  return specialized handling<A, B, C, D>(_:_:_:_:)(a1, a2, a3, &tc_v1_binary_op_sf);
}

{
  return specialized handling<A, B, C, D>(_:_:_:_:)(a1, a2, a3, &tc_v1_binary_op_fs);
}

{
  return specialized handling<A, B, C, D>(_:_:_:_:)(a1, a2, a3, &tc_v1_binary_op_ss);
}

{
  return specialized handling<A, B, C, D>(_:_:_:_:)(a1, a2, a3, &tc_v1_sframe_replace_na);
}

{
  return specialized handling<A, B, C, D>(_:_:_:_:)(a1, a2, a3, &tc_v1_model_call_method);
}

{
  return specialized handling<A, B, C, D>(_:_:_:_:)(a1, a2, a3, &tc_v1_sframe_drop_na);
}

{
  return specialized handling<A, B, C, D>(_:_:_:_:)(a1, a2, a3, &tc_v1_sframe_unstack);
}

{
  return specialized handling<A, B, C, D>(_:_:_:_:)(a1, a2, a3, &tc_v1_sframe_group_by);
}

uint64_t specialized handling<A, B, C, D>(_:_:_:_:)(uint64_t a1, uint64_t a2, char a3)
{
  v71 = 0;
  v3 = tc_v1_sarray_to_type(a1, a2, a3 & 1, &v71);
  v4 = v71;
  if (v71)
  {
    v5 = tc_v1_error_message(v71);
    if (!v5)
    {
      BUG();
    }

    v54 = v4;
    v53 = v3;
    v69 = String.init(cString:)(v5);
    v55 = v6;
    v70 = v6;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v68 = static ErrorString.table;
    v67 = xmmword_3A3830;
    v7 = lazy protocol witness table accessor for type String and conformance String();
    v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v10 = v9;
    v55;
    v69 = v8;
    v56 = v10;
    v70 = v10;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v68 = static ErrorString.column;
    v67 = xmmword_3A3850;
    v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v13 = v12;
    v56;
    v69 = v11;
    v57 = v13;
    v70 = v13;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v68 = static ErrorString.tableMap;
    v67 = xmmword_3A3870;
    v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v16 = v15;
    v57;
    v69 = v14;
    v58 = v16;
    v70 = v16;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v68 = static ErrorString.columnMap;
    v67 = xmmword_3A3890;
    v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v19 = v18;
    v58;
    v69 = v17;
    v59 = v19;
    v70 = v19;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v68 = static ErrorString.drop;
    v67 = xmmword_3A38B0;
    v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v22 = v21;
    v59;
    v69 = v20;
    v60 = v22;
    v70 = v22;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v68 = static ErrorString.sequence;
    v67 = xmmword_3A38D0;
    v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v25 = v24;
    v60;
    v69 = v23;
    v70 = v25;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v68 = static ErrorString.double;
    v67 = xmmword_3A38F0;
    v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v28 = v27;
    v25;
    v69 = v26;
    v61 = v28;
    v70 = v28;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v68 = static ErrorString.integer;
    v67 = xmmword_3A3910;
    v29 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v31 = v30;
    v61;
    v69 = v29;
    v62 = v31;
    v70 = v31;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v68 = static ErrorString.error;
    v67 = xmmword_3A3930;
    v32 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v34 = v33;
    v62;
    v69 = v32;
    v63 = v34;
    v70 = v34;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v68 = static ErrorString.archive;
    v67 = xmmword_3A3950;
    v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v37 = v36;
    v63;
    v69 = v35;
    v64 = v37;
    v70 = v37;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v68 = static ErrorString.limit;
    v67 = xmmword_3A3970;
    v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v40 = v39;
    v64;
    v69 = v38;
    v65 = v40;
    v70 = v40;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v68 = static ErrorString.supportedStackTypes;
    v67 = xmmword_3A3990;
    v41 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v43 = v42;
    v65;
    v69 = v41;
    v66 = v43;
    v70 = v43;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v68 = static ErrorString.sortTypes;
    v67 = xmmword_3A39B0;
    v44 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v46 = v45;
    v66;
    type metadata accessor for OS_os_log();

    v47 = static OS_os_log.default.getter(v46, &v67);
    static os_log_type_t.error.getter(v46);
    v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v49 = swift_allocObject(v48, 72, 7);
    v49[2] = 1;
    v49[3] = 2;
    v49[7] = &type metadata for String;
    v49[8] = lazy protocol witness table accessor for type String and conformance String();
    v49[4] = v44;
    v49[5] = v46;
    os_log(_:dso:log:type:_:)("%@ \n");

    v49;
    v50 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v50, 0, 0);
    *v51 = v44;
    *(v51 + 8) = v46;
    *(v51 + 16) = 0;
    *(v51 + 32) = 0;
    *(v51 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v54);
    return v53;
  }

  return v3;
}

{
  v71 = 0;
  v3 = tc_v1_sframe_sort_single_column(a1, a2, a3 & 1, &v71);
  v4 = v71;
  if (v71)
  {
    v5 = tc_v1_error_message(v71);
    if (!v5)
    {
      BUG();
    }

    v54 = v4;
    v53 = v3;
    v69 = String.init(cString:)(v5);
    v55 = v6;
    v70 = v6;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v68 = static ErrorString.table;
    v67 = xmmword_3A3830;
    v7 = lazy protocol witness table accessor for type String and conformance String();
    v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v10 = v9;
    v55;
    v69 = v8;
    v56 = v10;
    v70 = v10;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v68 = static ErrorString.column;
    v67 = xmmword_3A3850;
    v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v13 = v12;
    v56;
    v69 = v11;
    v57 = v13;
    v70 = v13;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v68 = static ErrorString.tableMap;
    v67 = xmmword_3A3870;
    v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v16 = v15;
    v57;
    v69 = v14;
    v58 = v16;
    v70 = v16;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v68 = static ErrorString.columnMap;
    v67 = xmmword_3A3890;
    v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v19 = v18;
    v58;
    v69 = v17;
    v59 = v19;
    v70 = v19;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v68 = static ErrorString.drop;
    v67 = xmmword_3A38B0;
    v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v22 = v21;
    v59;
    v69 = v20;
    v60 = v22;
    v70 = v22;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v68 = static ErrorString.sequence;
    v67 = xmmword_3A38D0;
    v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v25 = v24;
    v60;
    v69 = v23;
    v70 = v25;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v68 = static ErrorString.double;
    v67 = xmmword_3A38F0;
    v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v28 = v27;
    v25;
    v69 = v26;
    v61 = v28;
    v70 = v28;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v68 = static ErrorString.integer;
    v67 = xmmword_3A3910;
    v29 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v31 = v30;
    v61;
    v69 = v29;
    v62 = v31;
    v70 = v31;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v68 = static ErrorString.error;
    v67 = xmmword_3A3930;
    v32 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v34 = v33;
    v62;
    v69 = v32;
    v63 = v34;
    v70 = v34;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v68 = static ErrorString.archive;
    v67 = xmmword_3A3950;
    v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v37 = v36;
    v63;
    v69 = v35;
    v64 = v37;
    v70 = v37;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v68 = static ErrorString.limit;
    v67 = xmmword_3A3970;
    v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v40 = v39;
    v64;
    v69 = v38;
    v65 = v40;
    v70 = v40;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v68 = static ErrorString.supportedStackTypes;
    v67 = xmmword_3A3990;
    v41 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v43 = v42;
    v65;
    v69 = v41;
    v66 = v43;
    v70 = v43;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v68 = static ErrorString.sortTypes;
    v67 = xmmword_3A39B0;
    v44 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v46 = v45;
    v66;
    type metadata accessor for OS_os_log();

    v47 = static OS_os_log.default.getter(v46, &v67);
    static os_log_type_t.error.getter(v46);
    v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v49 = swift_allocObject(v48, 72, 7);
    v49[2] = 1;
    v49[3] = 2;
    v49[7] = &type metadata for String;
    v49[8] = lazy protocol witness table accessor for type String and conformance String();
    v49[4] = v44;
    v49[5] = v46;
    os_log(_:dso:log:type:_:)("%@ \n");

    v49;
    v50 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v50, 0, 0);
    *v51 = v44;
    *(v51 + 8) = v46;
    *(v51 + 16) = 0;
    *(v51 + 32) = 0;
    *(v51 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v54);
    return v53;
  }

  return v3;
}

NSURL *specialized handling<A, B, C, D>(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized handling<A, B, C, D>(_:_:_:_:)(a1, a2, a3, &tc_v1_sframe_add_column);
  return __stack_chk_guard;
}

{
  specialized handling<A, B, C, D>(_:_:_:_:)(a1, a2, a3, &tc_v1_parameters_add_flexible_type);
  return __stack_chk_guard;
}

{
  specialized handling<A, B, C, D>(_:_:_:_:)(a1, a2, a3, &tc_v1_parameters_add_sarray);
  return __stack_chk_guard;
}

{
  specialized handling<A, B, C, D>(_:_:_:_:)(a1, a2, a3, &tc_v1_parameters_add_sframe);
  return __stack_chk_guard;
}

{
  specialized handling<A, B, C, D>(_:_:_:_:)(a1, a2, a3, &tc_v1_sframe_rename_column);
  return __stack_chk_guard;
}

NSURL *specialized handling<A, B, C, D>(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t *))
{
  v70 = 0;
  a4(a1, a2, a3, &v70);
  v4 = v70;
  if (v70)
  {
    v5 = tc_v1_error_message(v70);
    if (!v5)
    {
      BUG();
    }

    v53 = v4;
    v68 = String.init(cString:)(v5);
    v54 = v6;
    v69 = v6;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v67 = static ErrorString.table;
    v66 = xmmword_3A3830;
    v7 = lazy protocol witness table accessor for type String and conformance String();
    v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v10 = v9;
    v54;
    v68 = v8;
    v55 = v10;
    v69 = v10;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v67 = static ErrorString.column;
    v66 = xmmword_3A3850;
    v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v13 = v12;
    v55;
    v68 = v11;
    v56 = v13;
    v69 = v13;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v67 = static ErrorString.tableMap;
    v66 = xmmword_3A3870;
    v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v16 = v15;
    v56;
    v68 = v14;
    v57 = v16;
    v69 = v16;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v67 = static ErrorString.columnMap;
    v66 = xmmword_3A3890;
    v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v19 = v18;
    v57;
    v68 = v17;
    v58 = v19;
    v69 = v19;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v67 = static ErrorString.drop;
    v66 = xmmword_3A38B0;
    v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v22 = v21;
    v58;
    v68 = v20;
    v59 = v22;
    v69 = v22;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v67 = static ErrorString.sequence;
    v66 = xmmword_3A38D0;
    v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v25 = v24;
    v59;
    v68 = v23;
    v60 = v25;
    v69 = v25;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v67 = static ErrorString.double;
    v66 = xmmword_3A38F0;
    v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v28 = v27;
    v60;
    v68 = v26;
    v61 = v28;
    v69 = v28;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v67 = static ErrorString.integer;
    v66 = xmmword_3A3910;
    v29 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v31 = v30;
    v61;
    v68 = v29;
    v62 = v31;
    v69 = v31;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v67 = static ErrorString.error;
    v66 = xmmword_3A3930;
    v32 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v34 = v33;
    v62;
    v68 = v32;
    v63 = v34;
    v69 = v34;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v67 = static ErrorString.archive;
    v66 = xmmword_3A3950;
    v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v37 = v36;
    v63;
    v68 = v35;
    v64 = v37;
    v69 = v37;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v67 = static ErrorString.limit;
    v66 = xmmword_3A3970;
    v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v40 = v39;
    v64;
    v68 = v38;
    v65 = v40;
    v69 = v40;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v67 = static ErrorString.supportedStackTypes;
    v66 = xmmword_3A3990;
    v41 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v43 = v42;
    v65;
    v68 = v41;
    v69 = v43;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v67 = static ErrorString.sortTypes;
    v66 = xmmword_3A39B0;
    v44 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v46 = v45;
    v43;
    type metadata accessor for OS_os_log();

    v47 = static OS_os_log.default.getter(v46, &v66);
    static os_log_type_t.error.getter();
    v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v49 = swift_allocObject(v48, 72, 7);
    v49[2] = 1;
    v49[3] = 2;
    v49[7] = &type metadata for String;
    v49[8] = lazy protocol witness table accessor for type String and conformance String();
    v49[4] = v44;
    v49[5] = v46;
    os_log(_:dso:log:type:_:)("%@ \n");

    v49;
    v50 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v50, 0, 0);
    *v51 = v44;
    *(v51 + 8) = v46;
    *(v51 + 16) = 0;
    *(v51 + 32) = 0;
    *(v51 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v53);
  }

  return __stack_chk_guard;
}

uint64_t specialized handling<A, B, C, D>(_:_:_:_:)(uint64_t a1, uint64_t a2)
{
  v71 = 0;
  v2 = tc_v1_sframe_sample(a1, a2, &v71);
  v3 = v71;
  if (v71)
  {
    v4 = tc_v1_error_message(v71);
    if (!v4)
    {
      BUG();
    }

    v54 = v3;
    v53 = v2;
    v69 = String.init(cString:)(v4);
    v56 = v5;
    v70 = v5;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v68 = static ErrorString.table;
    v67 = xmmword_3A3830;
    v6 = lazy protocol witness table accessor for type String and conformance String();
    v7 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v9 = v8;
    v56;
    v69 = v7;
    v57 = v9;
    v70 = v9;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v68 = static ErrorString.column;
    v67 = xmmword_3A3850;
    v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v12 = v11;
    v57;
    v69 = v10;
    v58 = v12;
    v70 = v12;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v68 = static ErrorString.tableMap;
    v67 = xmmword_3A3870;
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v15 = v14;
    v58;
    v69 = v13;
    v59 = v15;
    v70 = v15;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v68 = static ErrorString.columnMap;
    v67 = xmmword_3A3890;
    v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v18 = v17;
    v59;
    v69 = v16;
    v60 = v18;
    v70 = v18;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v68 = static ErrorString.drop;
    v67 = xmmword_3A38B0;
    v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v21 = v20;
    v60;
    v69 = v19;
    v61 = v21;
    v70 = v21;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v68 = static ErrorString.sequence;
    v67 = xmmword_3A38D0;
    v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v24 = v23;
    v61;
    v69 = v22;
    v70 = v24;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v68 = static ErrorString.double;
    v67 = xmmword_3A38F0;
    v25 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v27 = v26;
    v24;
    v69 = v25;
    v62 = v27;
    v70 = v27;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v68 = static ErrorString.integer;
    v67 = xmmword_3A3910;
    v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v30 = v29;
    v62;
    v69 = v28;
    v63 = v30;
    v70 = v30;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v68 = static ErrorString.error;
    v67 = xmmword_3A3930;
    v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v33 = v32;
    v63;
    v69 = v31;
    v64 = v33;
    v70 = v33;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v68 = static ErrorString.archive;
    v67 = xmmword_3A3950;
    v34 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v36 = v35;
    v64;
    v69 = v34;
    v65 = v36;
    v70 = v36;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v68 = static ErrorString.limit;
    v67 = xmmword_3A3970;
    v37 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v39 = v38;
    v65;
    v69 = v37;
    v70 = v39;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v68 = static ErrorString.supportedStackTypes;
    v67 = xmmword_3A3990;
    v40 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v41 = v39;
    v43 = v42;
    v41;
    v69 = v40;
    v70 = v43;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v68 = static ErrorString.sortTypes;
    v67 = xmmword_3A39B0;
    v66 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v45 = v44;
    v55 = v44;
    v43;
    type metadata accessor for OS_os_log();
    v46 = v45;

    v47 = static OS_os_log.default.getter(v45, &v67);
    static os_log_type_t.error.getter(v46);
    v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v49 = swift_allocObject(v48, 72, 7);
    v49[2] = 1;
    v49[3] = 2;
    v49[7] = &type metadata for String;
    v49[8] = lazy protocol witness table accessor for type String and conformance String();
    v49[4] = v66;
    v49[5] = v55;
    os_log(_:dso:log:type:_:)("%@ \n");

    v49;
    v50 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v50, 0, 0);
    *v51 = v66;
    *(v51 + 8) = v55;
    *(v51 + 16) = 0;
    *(v51 + 32) = 0;
    *(v51 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v54);
    return v53;
  }

  return v2;
}

uint64_t specialized handling<A, B, C, D>(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t *))
{
  v72 = 0;
  v4 = a4(a1, a2, a3, &v72);
  v5 = v72;
  if (v72)
  {
    v6 = tc_v1_error_message(v72);
    if (!v6)
    {
      BUG();
    }

    v55 = v5;
    v54 = v4;
    v70 = String.init(cString:)(v6);
    v57 = v7;
    v71 = v7;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v69 = static ErrorString.table;
    v68 = xmmword_3A3830;
    v8 = lazy protocol witness table accessor for type String and conformance String();
    v9 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v11 = v10;
    v57;
    v70 = v9;
    v58 = v11;
    v71 = v11;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v69 = static ErrorString.column;
    v68 = xmmword_3A3850;
    v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v14 = v13;
    v58;
    v70 = v12;
    v59 = v14;
    v71 = v14;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v69 = static ErrorString.tableMap;
    v68 = xmmword_3A3870;
    v15 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v17 = v16;
    v59;
    v70 = v15;
    v60 = v17;
    v71 = v17;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v69 = static ErrorString.columnMap;
    v68 = xmmword_3A3890;
    v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v20 = v19;
    v60;
    v70 = v18;
    v61 = v20;
    v71 = v20;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v69 = static ErrorString.drop;
    v68 = xmmword_3A38B0;
    v21 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v23 = v22;
    v61;
    v70 = v21;
    v62 = v23;
    v71 = v23;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v69 = static ErrorString.sequence;
    v68 = xmmword_3A38D0;
    v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v26 = v25;
    v62;
    v70 = v24;
    v71 = v26;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v69 = static ErrorString.double;
    v68 = xmmword_3A38F0;
    v27 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v29 = v28;
    v26;
    v70 = v27;
    v63 = v29;
    v71 = v29;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v69 = static ErrorString.integer;
    v68 = xmmword_3A3910;
    v30 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v32 = v31;
    v63;
    v70 = v30;
    v64 = v32;
    v71 = v32;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v69 = static ErrorString.error;
    v68 = xmmword_3A3930;
    v33 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v35 = v34;
    v64;
    v70 = v33;
    v65 = v35;
    v71 = v35;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v69 = static ErrorString.archive;
    v68 = xmmword_3A3950;
    v36 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v38 = v37;
    v65;
    v70 = v36;
    v66 = v38;
    v71 = v38;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v69 = static ErrorString.limit;
    v68 = xmmword_3A3970;
    v39 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v41 = v40;
    v66;
    v70 = v39;
    v71 = v41;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v69 = static ErrorString.supportedStackTypes;
    v68 = xmmword_3A3990;
    v42 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v43 = v41;
    v45 = v44;
    v43;
    v70 = v42;
    v71 = v45;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v69 = static ErrorString.sortTypes;
    v68 = xmmword_3A39B0;
    v67 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v47 = v46;
    v56 = v46;
    v45;
    type metadata accessor for OS_os_log();

    v48 = static OS_os_log.default.getter(v47, &v68);
    static os_log_type_t.error.getter();
    v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v50 = swift_allocObject(v49, 72, 7);
    v50[2] = 1;
    v50[3] = 2;
    v50[7] = &type metadata for String;
    v50[8] = lazy protocol witness table accessor for type String and conformance String();
    v50[4] = v67;
    v50[5] = v56;
    os_log(_:dso:log:type:_:)("%@ \n");

    v50;
    v51 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v51, 0, 0);
    *v52 = v67;
    *(v52 + 8) = v56;
    *(v52 + 16) = 0;
    *(v52 + 32) = 0;
    *(v52 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v55);
    return v54;
  }

  return v4;
}

NSURL *specialized handling<A, B, C, D, E>(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = 0;
  tc_v1_flex_dict_extract_entry(a1, a2, a3, a4, &v70);
  v4 = v70;
  if (v70)
  {
    v5 = tc_v1_error_message(v70);
    if (!v5)
    {
      BUG();
    }

    v53 = v4;
    v68 = String.init(cString:)(v5);
    v54 = v6;
    v69 = v6;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v67 = static ErrorString.table;
    v66 = xmmword_3A3830;
    v7 = lazy protocol witness table accessor for type String and conformance String();
    v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v10 = v9;
    v54;
    v68 = v8;
    v55 = v10;
    v69 = v10;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v67 = static ErrorString.column;
    v66 = xmmword_3A3850;
    v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v13 = v12;
    v55;
    v68 = v11;
    v56 = v13;
    v69 = v13;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v67 = static ErrorString.tableMap;
    v66 = xmmword_3A3870;
    v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v16 = v15;
    v56;
    v68 = v14;
    v57 = v16;
    v69 = v16;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v67 = static ErrorString.columnMap;
    v66 = xmmword_3A3890;
    v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v19 = v18;
    v57;
    v68 = v17;
    v58 = v19;
    v69 = v19;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v67 = static ErrorString.drop;
    v66 = xmmword_3A38B0;
    v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v22 = v21;
    v58;
    v68 = v20;
    v59 = v22;
    v69 = v22;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v67 = static ErrorString.sequence;
    v66 = xmmword_3A38D0;
    v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v25 = v24;
    v59;
    v68 = v23;
    v60 = v25;
    v69 = v25;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v67 = static ErrorString.double;
    v66 = xmmword_3A38F0;
    v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v28 = v27;
    v60;
    v68 = v26;
    v61 = v28;
    v69 = v28;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v67 = static ErrorString.integer;
    v66 = xmmword_3A3910;
    v29 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v31 = v30;
    v61;
    v68 = v29;
    v62 = v31;
    v69 = v31;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v67 = static ErrorString.error;
    v66 = xmmword_3A3930;
    v32 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v34 = v33;
    v62;
    v68 = v32;
    v63 = v34;
    v69 = v34;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v67 = static ErrorString.archive;
    v66 = xmmword_3A3950;
    v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v37 = v36;
    v63;
    v68 = v35;
    v64 = v37;
    v69 = v37;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v67 = static ErrorString.limit;
    v66 = xmmword_3A3970;
    v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v40 = v39;
    v64;
    v68 = v38;
    v65 = v40;
    v69 = v40;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v67 = static ErrorString.supportedStackTypes;
    v66 = xmmword_3A3990;
    v41 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v43 = v42;
    v65;
    v68 = v41;
    v69 = v43;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v67 = static ErrorString.sortTypes;
    v66 = xmmword_3A39B0;
    v44 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v46 = v45;
    v43;
    type metadata accessor for OS_os_log();

    v47 = static OS_os_log.default.getter(v46, &v66);
    static os_log_type_t.error.getter();
    v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v49 = swift_allocObject(v48, 72, 7);
    v49[2] = 1;
    v49[3] = 2;
    v49[7] = &type metadata for String;
    v49[8] = lazy protocol witness table accessor for type String and conformance String();
    v49[4] = v44;
    v49[5] = v46;
    os_log(_:dso:log:type:_:)("%@ \n");

    v49;
    v50 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v50, 0, 0);
    *v51 = v44;
    *(v51 + 8) = v46;
    *(v51 + 16) = 0;
    *(v51 + 32) = 0;
    *(v51 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v53);
  }

  return __stack_chk_guard;
}

{
  specialized handling<A, B, C, D, E>(_:_:_:_:_:)(a1, a2, a3, a4, &tc_v1_sframe_export);
  return __stack_chk_guard;
}

{
  specialized handling<A, B, C, D, E>(_:_:_:_:_:)(a1, a2, a3, a4, &tc_v1_groupby_aggregator_add_simple_aggregator);
  return __stack_chk_guard;
}

{
  specialized handling<A, B, C, D, E>(_:_:_:_:_:)(a1, a2, a3, a4, &tc_v1_groupby_aggregator_add_argmax);
  return __stack_chk_guard;
}

{
  specialized handling<A, B, C, D, E>(_:_:_:_:_:)(a1, a2, a3, a4, &tc_v1_groupby_aggregator_add_argmin);
  return __stack_chk_guard;
}

{
  specialized handling<A, B, C, D, E>(_:_:_:_:_:)(a1, a2, a3, a4, &tc_v1_groupby_aggregator_add_concat_two_columns);
  return __stack_chk_guard;
}

uint64_t specialized handling<A, B, C, D, E>(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v72 = 0;
  v4 = tc_v1_ndarray_create_from_data(a1, a2, a3, a4, &v72);
  v5 = v72;
  if (v72)
  {
    v6 = tc_v1_error_message(v72);
    if (!v6)
    {
      BUG();
    }

    v55 = v5;
    v54 = v4;
    v70 = String.init(cString:)(v6);
    v56 = v7;
    v71 = v7;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v69 = static ErrorString.table;
    v68 = xmmword_3A3830;
    v8 = lazy protocol witness table accessor for type String and conformance String();
    v9 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v11 = v10;
    v56;
    v70 = v9;
    v57 = v11;
    v71 = v11;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v69 = static ErrorString.column;
    v68 = xmmword_3A3850;
    v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v14 = v13;
    v57;
    v70 = v12;
    v58 = v14;
    v71 = v14;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v69 = static ErrorString.tableMap;
    v68 = xmmword_3A3870;
    v15 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v17 = v16;
    v58;
    v70 = v15;
    v59 = v17;
    v71 = v17;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v69 = static ErrorString.columnMap;
    v68 = xmmword_3A3890;
    v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v20 = v19;
    v59;
    v70 = v18;
    v60 = v20;
    v71 = v20;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v69 = static ErrorString.drop;
    v68 = xmmword_3A38B0;
    v21 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v23 = v22;
    v60;
    v70 = v21;
    v61 = v23;
    v71 = v23;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v69 = static ErrorString.sequence;
    v68 = xmmword_3A38D0;
    v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v26 = v25;
    v61;
    v70 = v24;
    v71 = v26;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v69 = static ErrorString.double;
    v68 = xmmword_3A38F0;
    v27 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v29 = v28;
    v26;
    v70 = v27;
    v62 = v29;
    v71 = v29;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v69 = static ErrorString.integer;
    v68 = xmmword_3A3910;
    v30 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v32 = v31;
    v62;
    v70 = v30;
    v63 = v32;
    v71 = v32;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v69 = static ErrorString.error;
    v68 = xmmword_3A3930;
    v33 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v35 = v34;
    v63;
    v70 = v33;
    v64 = v35;
    v71 = v35;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v69 = static ErrorString.archive;
    v68 = xmmword_3A3950;
    v36 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v38 = v37;
    v64;
    v70 = v36;
    v65 = v38;
    v71 = v38;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v69 = static ErrorString.limit;
    v68 = xmmword_3A3970;
    v39 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v41 = v40;
    v65;
    v70 = v39;
    v66 = v41;
    v71 = v41;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v69 = static ErrorString.supportedStackTypes;
    v68 = xmmword_3A3990;
    v42 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v44 = v43;
    v66;
    v70 = v42;
    v67 = v44;
    v71 = v44;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v69 = static ErrorString.sortTypes;
    v68 = xmmword_3A39B0;
    v45 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v47 = v46;
    v67;
    type metadata accessor for OS_os_log();

    v48 = static OS_os_log.default.getter(v47, &v68);
    static os_log_type_t.error.getter();
    v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v50 = swift_allocObject(v49, 72, 7);
    v50[2] = 1;
    v50[3] = 2;
    v50[7] = &type metadata for String;
    v50[8] = lazy protocol witness table accessor for type String and conformance String();
    v50[4] = v45;
    v50[5] = v47;
    os_log(_:dso:log:type:_:)("%@ \n");

    v50;
    v51 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v51, 0, 0);
    *v52 = v45;
    *(v52 + 8) = v47;
    *(v52 + 16) = 0;
    *(v52 + 32) = 0;
    *(v52 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v55);
    return v54;
  }

  return v4;
}

{
  v72 = 0;
  v4 = tc_v1_sframe_join_on_multiple_columns(a1, a2, a3, a4, &v72);
  v5 = v72;
  if (v72)
  {
    v6 = tc_v1_error_message(v72);
    if (!v6)
    {
      BUG();
    }

    v55 = v5;
    v54 = v4;
    v70 = String.init(cString:)(v6);
    v56 = v7;
    v71 = v7;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v69 = static ErrorString.table;
    v68 = xmmword_3A3830;
    v8 = lazy protocol witness table accessor for type String and conformance String();
    v9 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v11 = v10;
    v56;
    v70 = v9;
    v57 = v11;
    v71 = v11;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v69 = static ErrorString.column;
    v68 = xmmword_3A3850;
    v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v14 = v13;
    v57;
    v70 = v12;
    v58 = v14;
    v71 = v14;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v69 = static ErrorString.tableMap;
    v68 = xmmword_3A3870;
    v15 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v17 = v16;
    v58;
    v70 = v15;
    v59 = v17;
    v71 = v17;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v69 = static ErrorString.columnMap;
    v68 = xmmword_3A3890;
    v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v20 = v19;
    v59;
    v70 = v18;
    v60 = v20;
    v71 = v20;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v69 = static ErrorString.drop;
    v68 = xmmword_3A38B0;
    v21 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v23 = v22;
    v60;
    v70 = v21;
    v61 = v23;
    v71 = v23;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v69 = static ErrorString.sequence;
    v68 = xmmword_3A38D0;
    v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v26 = v25;
    v61;
    v70 = v24;
    v71 = v26;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v69 = static ErrorString.double;
    v68 = xmmword_3A38F0;
    v27 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v29 = v28;
    v26;
    v70 = v27;
    v62 = v29;
    v71 = v29;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v69 = static ErrorString.integer;
    v68 = xmmword_3A3910;
    v30 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v32 = v31;
    v62;
    v70 = v30;
    v63 = v32;
    v71 = v32;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v69 = static ErrorString.error;
    v68 = xmmword_3A3930;
    v33 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v35 = v34;
    v63;
    v70 = v33;
    v64 = v35;
    v71 = v35;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v69 = static ErrorString.archive;
    v68 = xmmword_3A3950;
    v36 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v38 = v37;
    v64;
    v70 = v36;
    v65 = v38;
    v71 = v38;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v69 = static ErrorString.limit;
    v68 = xmmword_3A3970;
    v39 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v41 = v40;
    v65;
    v70 = v39;
    v66 = v41;
    v71 = v41;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v69 = static ErrorString.supportedStackTypes;
    v68 = xmmword_3A3990;
    v42 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v44 = v43;
    v66;
    v70 = v42;
    v67 = v44;
    v71 = v44;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v69 = static ErrorString.sortTypes;
    v68 = xmmword_3A39B0;
    v45 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v47 = v46;
    v67;
    type metadata accessor for OS_os_log();

    v48 = static OS_os_log.default.getter(v47, &v68);
    static os_log_type_t.error.getter(v47);
    v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v50 = swift_allocObject(v49, 72, 7);
    v50[2] = 1;
    v50[3] = 2;
    v50[7] = &type metadata for String;
    v50[8] = lazy protocol witness table accessor for type String and conformance String();
    v50[4] = v45;
    v50[5] = v47;
    os_log(_:dso:log:type:_:)("%@ \n");

    v50;
    v51 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v51, 0, 0);
    *v52 = v45;
    *(v52 + 8) = v47;
    *(v52 + 16) = 0;
    *(v52 + 32) = 0;
    *(v52 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v55);
    return v54;
  }

  return v4;
}

{
  return specialized handling<A, B, C, D, E>(_:_:_:_:_:)(a1, a2, a3, a4, &tc_v1_sframe_filter_by);
}

{
  return specialized handling<A, B, C, D, E>(_:_:_:_:_:)(a1, a2, a3, a4, &tc_v1_sframe_stack_and_rename);
}

{
  v72 = 0;
  v4 = tc_v1_sframe_slice(a1, a2, a3, a4, &v72);
  v5 = v72;
  if (v72)
  {
    v6 = tc_v1_error_message(v72);
    if (!v6)
    {
      BUG();
    }

    v55 = v5;
    v54 = v4;
    v70 = String.init(cString:)(v6);
    v56 = v7;
    v71 = v7;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v69 = static ErrorString.table;
    v68 = xmmword_3A3830;
    v8 = lazy protocol witness table accessor for type String and conformance String();
    v9 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v11 = v10;
    v56;
    v70 = v9;
    v57 = v11;
    v71 = v11;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v69 = static ErrorString.column;
    v68 = xmmword_3A3850;
    v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v14 = v13;
    v57;
    v70 = v12;
    v58 = v14;
    v71 = v14;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v69 = static ErrorString.tableMap;
    v68 = xmmword_3A3870;
    v15 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v17 = v16;
    v58;
    v70 = v15;
    v59 = v17;
    v71 = v17;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v69 = static ErrorString.columnMap;
    v68 = xmmword_3A3890;
    v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v20 = v19;
    v59;
    v70 = v18;
    v60 = v20;
    v71 = v20;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v69 = static ErrorString.drop;
    v68 = xmmword_3A38B0;
    v21 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v23 = v22;
    v60;
    v70 = v21;
    v61 = v23;
    v71 = v23;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v69 = static ErrorString.sequence;
    v68 = xmmword_3A38D0;
    v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v26 = v25;
    v61;
    v70 = v24;
    v71 = v26;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v69 = static ErrorString.double;
    v68 = xmmword_3A38F0;
    v27 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v29 = v28;
    v26;
    v70 = v27;
    v62 = v29;
    v71 = v29;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v69 = static ErrorString.integer;
    v68 = xmmword_3A3910;
    v30 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v32 = v31;
    v62;
    v70 = v30;
    v63 = v32;
    v71 = v32;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v69 = static ErrorString.error;
    v68 = xmmword_3A3930;
    v33 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v35 = v34;
    v63;
    v70 = v33;
    v64 = v35;
    v71 = v35;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v69 = static ErrorString.archive;
    v68 = xmmword_3A3950;
    v36 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v38 = v37;
    v64;
    v70 = v36;
    v65 = v38;
    v71 = v38;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v69 = static ErrorString.limit;
    v68 = xmmword_3A3970;
    v39 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v41 = v40;
    v65;
    v70 = v39;
    v66 = v41;
    v71 = v41;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v69 = static ErrorString.supportedStackTypes;
    v68 = xmmword_3A3990;
    v42 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v44 = v43;
    v66;
    v70 = v42;
    v67 = v44;
    v71 = v44;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v69 = static ErrorString.sortTypes;
    v68 = xmmword_3A39B0;
    v45 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v47 = v46;
    v67;
    type metadata accessor for OS_os_log();

    v48 = static OS_os_log.default.getter(v47, &v68);
    static os_log_type_t.error.getter(v47);
    v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v50 = swift_allocObject(v49, 72, 7);
    v50[2] = 1;
    v50[3] = 2;
    v50[7] = &type metadata for String;
    v50[8] = lazy protocol witness table accessor for type String and conformance String();
    v50[4] = v45;
    v50[5] = v47;
    os_log(_:dso:log:type:_:)("%@ \n");

    v50;
    v51 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v51, 0, 0);
    *v52 = v45;
    *(v52 + 8) = v47;
    *(v52 + 16) = 0;
    *(v52 + 32) = 0;
    *(v52 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v55);
    return v54;
  }

  return v4;
}

{
  v71 = 0;
  LODWORD(v4) = tc_v1_plot_render_next_into_context(a1, a2, a3, a4, &v71);
  v5 = v71;
  if (v71)
  {
    v6 = tc_v1_error_message(v71);
    if (!v6)
    {
      BUG();
    }

    v53 = v5;
    v54 = v4;
    v69 = String.init(cString:)(v6);
    v55 = v7;
    v70 = v7;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v68 = static ErrorString.table;
    v67 = xmmword_3A3830;
    v8 = lazy protocol witness table accessor for type String and conformance String();
    v9 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v11 = v10;
    v55;
    v69 = v9;
    v56 = v11;
    v70 = v11;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v68 = static ErrorString.column;
    v67 = xmmword_3A3850;
    v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v14 = v13;
    v56;
    v69 = v12;
    v57 = v14;
    v70 = v14;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v68 = static ErrorString.tableMap;
    v67 = xmmword_3A3870;
    v15 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v17 = v16;
    v57;
    v69 = v15;
    v58 = v17;
    v70 = v17;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v68 = static ErrorString.columnMap;
    v67 = xmmword_3A3890;
    v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v20 = v19;
    v58;
    v69 = v18;
    v59 = v20;
    v70 = v20;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v68 = static ErrorString.drop;
    v67 = xmmword_3A38B0;
    v21 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v23 = v22;
    v59;
    v69 = v21;
    v60 = v23;
    v70 = v23;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v68 = static ErrorString.sequence;
    v67 = xmmword_3A38D0;
    v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v26 = v25;
    v60;
    v69 = v24;
    v70 = v26;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v68 = static ErrorString.double;
    v67 = xmmword_3A38F0;
    v27 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v29 = v28;
    v26;
    v69 = v27;
    v61 = v29;
    v70 = v29;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v68 = static ErrorString.integer;
    v67 = xmmword_3A3910;
    v30 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v32 = v31;
    v61;
    v69 = v30;
    v62 = v32;
    v70 = v32;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v68 = static ErrorString.error;
    v67 = xmmword_3A3930;
    v33 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v35 = v34;
    v62;
    v69 = v33;
    v63 = v35;
    v70 = v35;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v68 = static ErrorString.archive;
    v67 = xmmword_3A3950;
    v36 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v38 = v37;
    v63;
    v69 = v36;
    v64 = v38;
    v70 = v38;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v68 = static ErrorString.limit;
    v67 = xmmword_3A3970;
    v39 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v41 = v40;
    v64;
    v69 = v39;
    v65 = v41;
    v70 = v41;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v68 = static ErrorString.supportedStackTypes;
    v67 = xmmword_3A3990;
    v42 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v44 = v43;
    v65;
    v69 = v42;
    v66 = v44;
    v70 = v44;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v68 = static ErrorString.sortTypes;
    v67 = xmmword_3A39B0;
    v4 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v46 = v45;
    v66;
    type metadata accessor for OS_os_log();

    v47 = static OS_os_log.default.getter(v46, &v67);
    static os_log_type_t.error.getter(v46);
    v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v49 = swift_allocObject(v48, 72, 7);
    v49[2] = 1;
    v49[3] = 2;
    v49[7] = &type metadata for String;
    v49[8] = lazy protocol witness table accessor for type String and conformance String();
    v49[4] = v4;
    v49[5] = v46;
    os_log(_:dso:log:type:_:)("%@ \n");

    v49;
    v50 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v50, 0, 0);
    *v51 = v4;
    *(v51 + 8) = v46;
    *(v51 + 16) = 0;
    *(v51 + 32) = 0;
    *(v51 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v53);
    LOBYTE(v4) = v54;
  }

  return v4;
}

uint64_t specialized handling<A, B, C, D, E>(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, void, uint64_t *))
{
  v73 = 0;
  v5 = a5(a1, a2, a3, a4 & 1, &v73);
  v6 = v73;
  if (v73)
  {
    v7 = tc_v1_error_message(v73);
    if (!v7)
    {
      BUG();
    }

    v56 = v6;
    v55 = v5;
    v71 = String.init(cString:)(v7);
    v57 = v8;
    v72 = v8;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v70 = static ErrorString.table;
    v69 = xmmword_3A3830;
    v9 = lazy protocol witness table accessor for type String and conformance String();
    v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v12 = v11;
    v57;
    v71 = v10;
    v58 = v12;
    v72 = v12;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v70 = static ErrorString.column;
    v69 = xmmword_3A3850;
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v15 = v14;
    v58;
    v71 = v13;
    v59 = v15;
    v72 = v15;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v70 = static ErrorString.tableMap;
    v69 = xmmword_3A3870;
    v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v18 = v17;
    v59;
    v71 = v16;
    v60 = v18;
    v72 = v18;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v70 = static ErrorString.columnMap;
    v69 = xmmword_3A3890;
    v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v21 = v20;
    v60;
    v71 = v19;
    v61 = v21;
    v72 = v21;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v70 = static ErrorString.drop;
    v69 = xmmword_3A38B0;
    v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v24 = v23;
    v61;
    v71 = v22;
    v62 = v24;
    v72 = v24;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v70 = static ErrorString.sequence;
    v69 = xmmword_3A38D0;
    v25 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v27 = v26;
    v62;
    v71 = v25;
    v72 = v27;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v70 = static ErrorString.double;
    v69 = xmmword_3A38F0;
    v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v30 = v29;
    v27;
    v71 = v28;
    v63 = v30;
    v72 = v30;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v70 = static ErrorString.integer;
    v69 = xmmword_3A3910;
    v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v33 = v32;
    v63;
    v71 = v31;
    v64 = v33;
    v72 = v33;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v70 = static ErrorString.error;
    v69 = xmmword_3A3930;
    v34 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v36 = v35;
    v64;
    v71 = v34;
    v65 = v36;
    v72 = v36;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v70 = static ErrorString.archive;
    v69 = xmmword_3A3950;
    v37 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v39 = v38;
    v65;
    v71 = v37;
    v66 = v39;
    v72 = v39;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v70 = static ErrorString.limit;
    v69 = xmmword_3A3970;
    v40 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v42 = v41;
    v66;
    v71 = v40;
    v67 = v42;
    v72 = v42;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v70 = static ErrorString.supportedStackTypes;
    v69 = xmmword_3A3990;
    v43 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v45 = v44;
    v67;
    v71 = v43;
    v68 = v45;
    v72 = v45;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v70 = static ErrorString.sortTypes;
    v69 = xmmword_3A39B0;
    v46 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v48 = v47;
    v68;
    type metadata accessor for OS_os_log();

    v49 = static OS_os_log.default.getter(v48, &v69);
    static os_log_type_t.error.getter(v48);
    v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v51 = swift_allocObject(v50, 72, 7);
    v51[2] = 1;
    v51[3] = 2;
    v51[7] = &type metadata for String;
    v51[8] = lazy protocol witness table accessor for type String and conformance String();
    v51[4] = v46;
    v51[5] = v48;
    os_log(_:dso:log:type:_:)("%@ \n");

    v51;
    v52 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v52, 0, 0);
    *v53 = v46;
    *(v53 + 8) = v48;
    *(v53 + 16) = 0;
    *(v53 + 32) = 0;
    *(v53 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v56);
    return v55;
  }

  return v5;
}

NSURL *specialized handling<A, B, C, D, E>(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t *))
{
  v71 = 0;
  a5(a1, a2, a3, a4, &v71);
  v5 = v71;
  if (v71)
  {
    v6 = tc_v1_error_message(v71);
    if (!v6)
    {
      BUG();
    }

    v54 = v5;
    v69 = String.init(cString:)(v6);
    v55 = v7;
    v70 = v7;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v68 = static ErrorString.table;
    v67 = xmmword_3A3830;
    v8 = lazy protocol witness table accessor for type String and conformance String();
    v9 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v11 = v10;
    v55;
    v69 = v9;
    v56 = v11;
    v70 = v11;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v68 = static ErrorString.column;
    v67 = xmmword_3A3850;
    v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v14 = v13;
    v56;
    v69 = v12;
    v57 = v14;
    v70 = v14;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v68 = static ErrorString.tableMap;
    v67 = xmmword_3A3870;
    v15 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v17 = v16;
    v57;
    v69 = v15;
    v58 = v17;
    v70 = v17;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v68 = static ErrorString.columnMap;
    v67 = xmmword_3A3890;
    v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v20 = v19;
    v58;
    v69 = v18;
    v59 = v20;
    v70 = v20;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v68 = static ErrorString.drop;
    v67 = xmmword_3A38B0;
    v21 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v23 = v22;
    v59;
    v69 = v21;
    v60 = v23;
    v70 = v23;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v68 = static ErrorString.sequence;
    v67 = xmmword_3A38D0;
    v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v26 = v25;
    v60;
    v69 = v24;
    v61 = v26;
    v70 = v26;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v68 = static ErrorString.double;
    v67 = xmmword_3A38F0;
    v27 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v29 = v28;
    v61;
    v69 = v27;
    v62 = v29;
    v70 = v29;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v68 = static ErrorString.integer;
    v67 = xmmword_3A3910;
    v30 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v32 = v31;
    v62;
    v69 = v30;
    v63 = v32;
    v70 = v32;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v68 = static ErrorString.error;
    v67 = xmmword_3A3930;
    v33 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v35 = v34;
    v63;
    v69 = v33;
    v64 = v35;
    v70 = v35;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v68 = static ErrorString.archive;
    v67 = xmmword_3A3950;
    v36 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v38 = v37;
    v64;
    v69 = v36;
    v65 = v38;
    v70 = v38;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v68 = static ErrorString.limit;
    v67 = xmmword_3A3970;
    v39 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v41 = v40;
    v65;
    v69 = v39;
    v66 = v41;
    v70 = v41;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v68 = static ErrorString.supportedStackTypes;
    v67 = xmmword_3A3990;
    v42 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v44 = v43;
    v66;
    v69 = v42;
    v70 = v44;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v68 = static ErrorString.sortTypes;
    v67 = xmmword_3A39B0;
    v45 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v47 = v46;
    v44;
    type metadata accessor for OS_os_log();

    v48 = static OS_os_log.default.getter(v47, &v67);
    static os_log_type_t.error.getter(v47);
    v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v50 = swift_allocObject(v49, 72, 7);
    v50[2] = 1;
    v50[3] = 2;
    v50[7] = &type metadata for String;
    v50[8] = lazy protocol witness table accessor for type String and conformance String();
    v50[4] = v45;
    v50[5] = v47;
    os_log(_:dso:log:type:_:)("%@ \n");

    v50;
    v51 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v51, 0, 0);
    *v52 = v45;
    *(v52 + 8) = v47;
    *(v52 + 16) = 0;
    *(v52 + 32) = 0;
    *(v52 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v54);
  }

  return __stack_chk_guard;
}

uint64_t specialized handling<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v73 = 0;
  v6 = tc_v1_sarray_apply(a1, a2, a3, a4, a5, a6 & 1, &v73);
  v7 = v73;
  if (v73)
  {
    v8 = tc_v1_error_message(v73);
    if (!v8)
    {
      BUG();
    }

    v56 = v7;
    v55 = v6;
    v71 = String.init(cString:)(v8);
    v57 = v9;
    v72 = v9;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v70 = static ErrorString.table;
    v69 = xmmword_3A3830;
    v10 = lazy protocol witness table accessor for type String and conformance String();
    v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v10, v10, v10);
    v13 = v12;
    v57;
    v71 = v11;
    v58 = v13;
    v72 = v13;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v70 = static ErrorString.column;
    v69 = xmmword_3A3850;
    v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v10, v10, v10);
    v16 = v15;
    v58;
    v71 = v14;
    v59 = v16;
    v72 = v16;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v70 = static ErrorString.tableMap;
    v69 = xmmword_3A3870;
    v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v10, v10, v10);
    v19 = v18;
    v59;
    v71 = v17;
    v60 = v19;
    v72 = v19;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v70 = static ErrorString.columnMap;
    v69 = xmmword_3A3890;
    v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v10, v10, v10);
    v22 = v21;
    v60;
    v71 = v20;
    v61 = v22;
    v72 = v22;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v70 = static ErrorString.drop;
    v69 = xmmword_3A38B0;
    v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v10, v10, v10);
    v25 = v24;
    v61;
    v71 = v23;
    v62 = v25;
    v72 = v25;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v70 = static ErrorString.sequence;
    v69 = xmmword_3A38D0;
    v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v10, v10, v10);
    v28 = v27;
    v62;
    v71 = v26;
    v72 = v28;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v70 = static ErrorString.double;
    v69 = xmmword_3A38F0;
    v29 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v10, v10, v10);
    v31 = v30;
    v28;
    v71 = v29;
    v63 = v31;
    v72 = v31;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v70 = static ErrorString.integer;
    v69 = xmmword_3A3910;
    v32 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v10, v10, v10);
    v34 = v33;
    v63;
    v71 = v32;
    v64 = v34;
    v72 = v34;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v70 = static ErrorString.error;
    v69 = xmmword_3A3930;
    v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v10, v10, v10);
    v37 = v36;
    v64;
    v71 = v35;
    v65 = v37;
    v72 = v37;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v70 = static ErrorString.archive;
    v69 = xmmword_3A3950;
    v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v10, v10, v10);
    v40 = v39;
    v65;
    v71 = v38;
    v66 = v40;
    v72 = v40;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v70 = static ErrorString.limit;
    v69 = xmmword_3A3970;
    v41 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v10, v10, v10);
    v43 = v42;
    v66;
    v71 = v41;
    v67 = v43;
    v72 = v43;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v70 = static ErrorString.supportedStackTypes;
    v69 = xmmword_3A3990;
    v44 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v10, v10, v10);
    v46 = v45;
    v67;
    v71 = v44;
    v72 = v46;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v70 = static ErrorString.sortTypes;
    v69 = xmmword_3A39B0;
    v47 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v10, v10, v10);
    v68 = v48;
    v46;
    type metadata accessor for OS_os_log();
    v49 = static OS_os_log.default.getter(0, &v69);
    static os_log_type_t.error.getter();
    v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v51 = swift_allocObject(v50, 72, 7);
    v51[2] = 1;
    v51[3] = 2;
    v51[7] = &type metadata for String;
    v51[8] = lazy protocol witness table accessor for type String and conformance String();
    v51[4] = v47;
    v51[5] = v68;

    os_log(_:dso:log:type:_:)("%@ \n");

    v51;
    v52 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v52, 0, 0);
    *v53 = v47;
    *(v53 + 8) = v68;
    *(v53 + 16) = 0;
    *(v53 + 32) = 0;
    *(v53 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v56);
    return v55;
  }

  return v6;
}

uint64_t specialized handling<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return specialized handling<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:)(a1, a2, a3, a4, a5, a6, &tc_v1_plot_create_2d);
}

{
  return specialized handling<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:)(a1, a2, a3, a4, a5, a6, &tc_v1_sframe_unpack_detailed);
}

uint64_t specialized handling<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t *))
{
  v74 = 0;
  v7 = a7(a1, a2, a3, a4, a5, a6, &v74);
  v8 = v74;
  if (v74)
  {
    v9 = tc_v1_error_message(v74);
    if (!v9)
    {
      BUG();
    }

    v57 = v8;
    v56 = v7;
    v72 = String.init(cString:)(v9);
    v58 = v10;
    v73 = v10;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v71 = static ErrorString.table;
    v70 = xmmword_3A3830;
    v11 = lazy protocol witness table accessor for type String and conformance String();
    v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v11, v11, v11);
    v14 = v13;
    v58;
    v72 = v12;
    v59 = v14;
    v73 = v14;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v71 = static ErrorString.column;
    v70 = xmmword_3A3850;
    v15 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v11, v11, v11);
    v17 = v16;
    v59;
    v72 = v15;
    v60 = v17;
    v73 = v17;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v71 = static ErrorString.tableMap;
    v70 = xmmword_3A3870;
    v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v11, v11, v11);
    v20 = v19;
    v60;
    v72 = v18;
    v61 = v20;
    v73 = v20;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v71 = static ErrorString.columnMap;
    v70 = xmmword_3A3890;
    v21 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v11, v11, v11);
    v23 = v22;
    v61;
    v72 = v21;
    v62 = v23;
    v73 = v23;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v71 = static ErrorString.drop;
    v70 = xmmword_3A38B0;
    v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v11, v11, v11);
    v26 = v25;
    v62;
    v72 = v24;
    v63 = v26;
    v73 = v26;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v71 = static ErrorString.sequence;
    v70 = xmmword_3A38D0;
    v27 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v11, v11, v11);
    v29 = v28;
    v63;
    v72 = v27;
    v73 = v29;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v71 = static ErrorString.double;
    v70 = xmmword_3A38F0;
    v30 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v11, v11, v11);
    v32 = v31;
    v29;
    v72 = v30;
    v64 = v32;
    v73 = v32;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v71 = static ErrorString.integer;
    v70 = xmmword_3A3910;
    v33 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v11, v11, v11);
    v35 = v34;
    v64;
    v72 = v33;
    v65 = v35;
    v73 = v35;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v71 = static ErrorString.error;
    v70 = xmmword_3A3930;
    v36 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v11, v11, v11);
    v38 = v37;
    v65;
    v72 = v36;
    v66 = v38;
    v73 = v38;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v71 = static ErrorString.archive;
    v70 = xmmword_3A3950;
    v39 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v11, v11, v11);
    v41 = v40;
    v66;
    v72 = v39;
    v67 = v41;
    v73 = v41;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v71 = static ErrorString.limit;
    v70 = xmmword_3A3970;
    v42 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v11, v11, v11);
    v44 = v43;
    v67;
    v72 = v42;
    v68 = v44;
    v73 = v44;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v71 = static ErrorString.supportedStackTypes;
    v70 = xmmword_3A3990;
    v45 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v11, v11, v11);
    v47 = v46;
    v68;
    v72 = v45;
    v73 = v47;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v71 = static ErrorString.sortTypes;
    v70 = xmmword_3A39B0;
    v48 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v11, v11, v11);
    v69 = v49;
    v47;
    type metadata accessor for OS_os_log();
    v50 = static OS_os_log.default.getter(0, &v70);
    static os_log_type_t.error.getter(0);
    v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v52 = swift_allocObject(v51, 72, 7);
    v52[2] = 1;
    v52[3] = 2;
    v52[7] = &type metadata for String;
    v52[8] = lazy protocol witness table accessor for type String and conformance String();
    v52[4] = v48;
    v52[5] = v69;

    os_log(_:dso:log:type:_:)("%@ \n");

    v52;
    v53 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v53, 0, 0);
    *v54 = v48;
    *(v54 + 8) = v69;
    *(v54 + 16) = 0;
    *(v54 + 32) = 0;
    *(v54 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v57);
    return v56;
  }

  return v7;
}

uint64_t specialized handling<A, B, C, D, E, F>(_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = 0;
  _1d = tc_v1_plot_create_1d(a1, a2, a3, a4, a5, &v72);
  v6 = v72;
  if (v72)
  {
    v7 = tc_v1_error_message(v72);
    if (!v7)
    {
      BUG();
    }

    v55 = v6;
    v54 = _1d;
    v70 = String.init(cString:)(v7);
    v56 = v8;
    v71 = v8;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v69 = static ErrorString.table;
    v68 = xmmword_3A3830;
    v9 = lazy protocol witness table accessor for type String and conformance String();
    v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v12 = v11;
    v56;
    v70 = v10;
    v57 = v12;
    v71 = v12;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v69 = static ErrorString.column;
    v68 = xmmword_3A3850;
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v15 = v14;
    v57;
    v70 = v13;
    v58 = v15;
    v71 = v15;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v69 = static ErrorString.tableMap;
    v68 = xmmword_3A3870;
    v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v18 = v17;
    v58;
    v70 = v16;
    v59 = v18;
    v71 = v18;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v69 = static ErrorString.columnMap;
    v68 = xmmword_3A3890;
    v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v21 = v20;
    v59;
    v70 = v19;
    v60 = v21;
    v71 = v21;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v69 = static ErrorString.drop;
    v68 = xmmword_3A38B0;
    v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v24 = v23;
    v60;
    v70 = v22;
    v61 = v24;
    v71 = v24;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v69 = static ErrorString.sequence;
    v68 = xmmword_3A38D0;
    v25 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v27 = v26;
    v61;
    v70 = v25;
    v71 = v27;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v69 = static ErrorString.double;
    v68 = xmmword_3A38F0;
    v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v30 = v29;
    v27;
    v70 = v28;
    v62 = v30;
    v71 = v30;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v69 = static ErrorString.integer;
    v68 = xmmword_3A3910;
    v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v33 = v32;
    v62;
    v70 = v31;
    v63 = v33;
    v71 = v33;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v69 = static ErrorString.error;
    v68 = xmmword_3A3930;
    v34 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v36 = v35;
    v63;
    v70 = v34;
    v64 = v36;
    v71 = v36;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v69 = static ErrorString.archive;
    v68 = xmmword_3A3950;
    v37 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v39 = v38;
    v64;
    v70 = v37;
    v65 = v39;
    v71 = v39;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v69 = static ErrorString.limit;
    v68 = xmmword_3A3970;
    v40 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v42 = v41;
    v65;
    v70 = v40;
    v66 = v42;
    v71 = v42;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v69 = static ErrorString.supportedStackTypes;
    v68 = xmmword_3A3990;
    v43 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v45 = v44;
    v66;
    v70 = v43;
    v71 = v45;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v69 = static ErrorString.sortTypes;
    v68 = xmmword_3A39B0;
    v46 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v67 = v47;
    v45;
    type metadata accessor for OS_os_log();
    v48 = static OS_os_log.default.getter(0, &v68);
    static os_log_type_t.error.getter(0);
    v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v50 = swift_allocObject(v49, 72, 7);
    v50[2] = 1;
    v50[3] = 2;
    v50[7] = &type metadata for String;
    v50[8] = lazy protocol witness table accessor for type String and conformance String();
    v50[4] = v46;
    v50[5] = v67;

    os_log(_:dso:log:type:_:)("%@ \n");

    v50;
    v51 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v51, 0, 0);
    *v52 = v46;
    *(v52 + 8) = v67;
    *(v52 + 16) = 0;
    *(v52 + 32) = 0;
    *(v52 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v55);
    return v54;
  }

  return _1d;
}

{
  v72 = 0;
  v5 = tc_v1_sframe_apply(a1, a2, a3, a4, a5, &v72);
  v6 = v72;
  if (v72)
  {
    v7 = tc_v1_error_message(v72);
    if (!v7)
    {
      BUG();
    }

    v55 = v6;
    v54 = v5;
    v70 = String.init(cString:)(v7);
    v56 = v8;
    v71 = v8;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v69 = static ErrorString.table;
    v68 = xmmword_3A3830;
    v9 = lazy protocol witness table accessor for type String and conformance String();
    v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v12 = v11;
    v56;
    v70 = v10;
    v57 = v12;
    v71 = v12;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v69 = static ErrorString.column;
    v68 = xmmword_3A3850;
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v15 = v14;
    v57;
    v70 = v13;
    v58 = v15;
    v71 = v15;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v69 = static ErrorString.tableMap;
    v68 = xmmword_3A3870;
    v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v18 = v17;
    v58;
    v70 = v16;
    v59 = v18;
    v71 = v18;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v69 = static ErrorString.columnMap;
    v68 = xmmword_3A3890;
    v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v21 = v20;
    v59;
    v70 = v19;
    v60 = v21;
    v71 = v21;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v69 = static ErrorString.drop;
    v68 = xmmword_3A38B0;
    v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v24 = v23;
    v60;
    v70 = v22;
    v61 = v24;
    v71 = v24;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v69 = static ErrorString.sequence;
    v68 = xmmword_3A38D0;
    v25 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v27 = v26;
    v61;
    v70 = v25;
    v71 = v27;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v69 = static ErrorString.double;
    v68 = xmmword_3A38F0;
    v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v30 = v29;
    v27;
    v70 = v28;
    v62 = v30;
    v71 = v30;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v69 = static ErrorString.integer;
    v68 = xmmword_3A3910;
    v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v33 = v32;
    v62;
    v70 = v31;
    v63 = v33;
    v71 = v33;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v69 = static ErrorString.error;
    v68 = xmmword_3A3930;
    v34 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v36 = v35;
    v63;
    v70 = v34;
    v64 = v36;
    v71 = v36;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v69 = static ErrorString.archive;
    v68 = xmmword_3A3950;
    v37 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v39 = v38;
    v64;
    v70 = v37;
    v65 = v39;
    v71 = v39;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v69 = static ErrorString.limit;
    v68 = xmmword_3A3970;
    v40 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v42 = v41;
    v65;
    v70 = v40;
    v66 = v42;
    v71 = v42;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v69 = static ErrorString.supportedStackTypes;
    v68 = xmmword_3A3990;
    v43 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v45 = v44;
    v66;
    v70 = v43;
    v71 = v45;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v69 = static ErrorString.sortTypes;
    v68 = xmmword_3A39B0;
    v46 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v67 = v47;
    v45;
    type metadata accessor for OS_os_log();
    v48 = static OS_os_log.default.getter(0, &v68);
    static os_log_type_t.error.getter(0);
    v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v50 = swift_allocObject(v49, 72, 7);
    v50[2] = 1;
    v50[3] = 2;
    v50[7] = &type metadata for String;
    v50[8] = lazy protocol witness table accessor for type String and conformance String();
    v50[4] = v46;
    v50[5] = v67;

    os_log(_:dso:log:type:_:)("%@ \n");

    v50;
    v51 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v51, 0, 0);
    *v52 = v46;
    *(v52 + 8) = v67;
    *(v52 + 16) = 0;
    *(v52 + 32) = 0;
    *(v52 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v55);
    return v54;
  }

  return v5;
}

{
  v72 = 0;
  v5 = tc_v1_sframe_pack_columns_vector(a1, a2, a3, a4, a5, &v72);
  v6 = v72;
  if (v72)
  {
    v7 = tc_v1_error_message(v72);
    if (!v7)
    {
      BUG();
    }

    v55 = v6;
    v54 = v5;
    v70 = String.init(cString:)(v7);
    v56 = v8;
    v71 = v8;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v69 = static ErrorString.table;
    v68 = xmmword_3A3830;
    v9 = lazy protocol witness table accessor for type String and conformance String();
    v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v12 = v11;
    v56;
    v70 = v10;
    v57 = v12;
    v71 = v12;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v69 = static ErrorString.column;
    v68 = xmmword_3A3850;
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v15 = v14;
    v57;
    v70 = v13;
    v58 = v15;
    v71 = v15;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v69 = static ErrorString.tableMap;
    v68 = xmmword_3A3870;
    v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v18 = v17;
    v58;
    v70 = v16;
    v59 = v18;
    v71 = v18;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v69 = static ErrorString.columnMap;
    v68 = xmmword_3A3890;
    v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v21 = v20;
    v59;
    v70 = v19;
    v60 = v21;
    v71 = v21;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v69 = static ErrorString.drop;
    v68 = xmmword_3A38B0;
    v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v24 = v23;
    v60;
    v70 = v22;
    v61 = v24;
    v71 = v24;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v69 = static ErrorString.sequence;
    v68 = xmmword_3A38D0;
    v25 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v27 = v26;
    v61;
    v70 = v25;
    v71 = v27;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v69 = static ErrorString.double;
    v68 = xmmword_3A38F0;
    v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v30 = v29;
    v27;
    v70 = v28;
    v62 = v30;
    v71 = v30;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v69 = static ErrorString.integer;
    v68 = xmmword_3A3910;
    v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v33 = v32;
    v62;
    v70 = v31;
    v63 = v33;
    v71 = v33;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v69 = static ErrorString.error;
    v68 = xmmword_3A3930;
    v34 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v36 = v35;
    v63;
    v70 = v34;
    v64 = v36;
    v71 = v36;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v69 = static ErrorString.archive;
    v68 = xmmword_3A3950;
    v37 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v39 = v38;
    v64;
    v70 = v37;
    v65 = v39;
    v71 = v39;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v69 = static ErrorString.limit;
    v68 = xmmword_3A3970;
    v40 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v42 = v41;
    v65;
    v70 = v40;
    v66 = v42;
    v71 = v42;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v69 = static ErrorString.supportedStackTypes;
    v68 = xmmword_3A3990;
    v43 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v45 = v44;
    v66;
    v70 = v43;
    v71 = v45;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v69 = static ErrorString.sortTypes;
    v68 = xmmword_3A39B0;
    v46 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v67 = v47;
    v45;
    type metadata accessor for OS_os_log();
    v48 = static OS_os_log.default.getter(0, &v68);
    static os_log_type_t.error.getter(0);
    v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v50 = swift_allocObject(v49, 72, 7);
    v50[2] = 1;
    v50[3] = 2;
    v50[7] = &type metadata for String;
    v50[8] = lazy protocol witness table accessor for type String and conformance String();
    v50[4] = v46;
    v50[5] = v67;

    os_log(_:dso:log:type:_:)("%@ \n");

    v50;
    v51 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v51, 0, 0);
    *v52 = v46;
    *(v52 + 8) = v67;
    *(v52 + 16) = 0;
    *(v52 + 32) = 0;
    *(v52 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v55);
    return v54;
  }

  return v5;
}

NSURL *specialized handling<A, B, C, D, E, F>(_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = 0;
  tc_v1_sframe_random_split(a1, a2, a3, a4, &v70);
  v4 = v70;
  if (v70)
  {
    v5 = tc_v1_error_message(v70);
    if (!v5)
    {
      BUG();
    }

    v52 = v4;
    v68 = String.init(cString:)(v5);
    v53 = v6;
    v69 = v6;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v67 = static ErrorString.table;
    v66 = xmmword_3A3830;
    v7 = lazy protocol witness table accessor for type String and conformance String();
    v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v10 = v9;
    v53;
    v68 = v8;
    v54 = v10;
    v69 = v10;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v67 = static ErrorString.column;
    v66 = xmmword_3A3850;
    v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v13 = v12;
    v54;
    v68 = v11;
    v55 = v13;
    v69 = v13;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v67 = static ErrorString.tableMap;
    v66 = xmmword_3A3870;
    v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v16 = v15;
    v55;
    v68 = v14;
    v56 = v16;
    v69 = v16;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v67 = static ErrorString.columnMap;
    v66 = xmmword_3A3890;
    v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v19 = v18;
    v56;
    v68 = v17;
    v57 = v19;
    v69 = v19;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v67 = static ErrorString.drop;
    v66 = xmmword_3A38B0;
    v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v22 = v21;
    v57;
    v68 = v20;
    v58 = v22;
    v69 = v22;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v67 = static ErrorString.sequence;
    v66 = xmmword_3A38D0;
    v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v25 = v24;
    v58;
    v68 = v23;
    v59 = v25;
    v69 = v25;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v67 = static ErrorString.double;
    v66 = xmmword_3A38F0;
    v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v28 = v27;
    v59;
    v68 = v26;
    v60 = v28;
    v69 = v28;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v67 = static ErrorString.integer;
    v66 = xmmword_3A3910;
    v29 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v31 = v30;
    v60;
    v68 = v29;
    v61 = v31;
    v69 = v31;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v67 = static ErrorString.error;
    v66 = xmmword_3A3930;
    v32 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v34 = v33;
    v61;
    v68 = v32;
    v62 = v34;
    v69 = v34;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v67 = static ErrorString.archive;
    v66 = xmmword_3A3950;
    v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v37 = v36;
    v62;
    v68 = v35;
    v63 = v37;
    v69 = v37;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v67 = static ErrorString.limit;
    v66 = xmmword_3A3970;
    v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v40 = v39;
    v63;
    v68 = v38;
    v64 = v40;
    v69 = v40;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v67 = static ErrorString.supportedStackTypes;
    v66 = xmmword_3A3990;
    v41 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v43 = v42;
    v64;
    v68 = v41;
    v69 = v43;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v67 = static ErrorString.sortTypes;
    v66 = xmmword_3A39B0;
    v44 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v65 = v45;
    v43;
    type metadata accessor for OS_os_log();
    v46 = static OS_os_log.default.getter(0, &v66);
    static os_log_type_t.error.getter();
    v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v48 = swift_allocObject(v47, 72, 7);
    v48[2] = 1;
    v48[3] = 2;
    v48[7] = &type metadata for String;
    v48[8] = lazy protocol witness table accessor for type String and conformance String();
    v48[4] = v44;
    v48[5] = v65;

    os_log(_:dso:log:type:_:)("%@ \n");

    v48;
    v49 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v49, 0, 0);
    *v50 = v44;
    *(v50 + 8) = v65;
    *(v50 + 16) = 0;
    *(v50 + 32) = 0;
    *(v50 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v52);
  }

  return __stack_chk_guard;
}

unint64_t one-time initialization function for table()
{
  *&static ErrorString.table = 0x656D61724653;
  *(&static ErrorString.table + 1) = 0xE600000000000000;
  *&xmmword_3A3830 = 0x6C62615461746144;
  result = 0xE900000000000065;
  *(&xmmword_3A3830 + 1) = 0xE900000000000065;
  return result;
}

unint64_t one-time initialization function for column()
{
  *&static ErrorString.column = 0x796172724153;
  *(&static ErrorString.column + 1) = 0xE600000000000000;
  *&xmmword_3A3850 = 0x756C6F4361746144;
  result = 0xEA00000000006E6DLL;
  *(&xmmword_3A3850 + 1) = 0xEA00000000006E6DLL;
  return result;
}

unint64_t one-time initialization function for tableMap()
{
  *&static ErrorString.tableMap = 0x6D617266735F6374;
  *(&static ErrorString.tableMap + 1) = 0xEF796C7070615F65;
  *&xmmword_3A3870 = 7364973;
  result = 0xE300000000000000;
  *(&xmmword_3A3870 + 1) = 0xE300000000000000;
  return result;
}

unint64_t one-time initialization function for columnMap()
{
  *&static ErrorString.columnMap = 0x61727261735F6374;
  *(&static ErrorString.columnMap + 1) = 0xEF796C7070615F79;
  *&xmmword_3A3890 = 7364973;
  result = 0xE300000000000000;
  *(&xmmword_3A3890 + 1) = 0xE300000000000000;
  return result;
}

unint64_t one-time initialization function for drop()
{
  *&static ErrorString.drop = 0x616E706F7264;
  *(&static ErrorString.drop + 1) = 0xE600000000000000;
  *&xmmword_3A38B0 = 0x7373694D706F7264;
  result = 0xEB00000000676E69;
  *(&xmmword_3A38B0 + 1) = 0xEB00000000676E69;
  return result;
}

unint64_t one-time initialization function for sequence()
{
  *&static ErrorString.sequence = 1953720684;
  *(&static ErrorString.sequence + 1) = 0xE400000000000000;
  strcpy(&xmmword_3A38D0, "SequenceType");
  result = 0xEC00000065707954;
  BYTE13(xmmword_3A38D0) = 0;
  HIWORD(xmmword_3A38D0) = -5120;
  return result;
}

unint64_t one-time initialization function for double()
{
  *&static ErrorString.double = 0x74616F6C66;
  *(&static ErrorString.double + 1) = 0xE500000000000000;
  *&xmmword_3A38F0 = 0x656C62756F44;
  result = 0xE600000000000000;
  *(&xmmword_3A38F0 + 1) = 0xE600000000000000;
  return result;
}

unint64_t one-time initialization function for integer()
{
  *&static ErrorString.integer = 0x656765746E692061;
  *(&static ErrorString.integer + 1) = 0xE900000000000072;
  *&xmmword_3A3910 = 0x746E49206E61;
  result = 0xE600000000000000;
  *(&xmmword_3A3910 + 1) = 0xE600000000000000;
  return result;
}

unint64_t one-time initialization function for error()
{
  *&static ErrorString.error = 0x203A726F727245;
  *(&static ErrorString.error + 1) = 0xE700000000000000;
  *&xmmword_3A3930 = 0;
  result = 0xE000000000000000;
  *(&xmmword_3A3930 + 1) = 0xE000000000000000;
  return result;
}

char *one-time initialization function for archive()
{
  strcpy(&static ErrorString.archive, "a Turi archive");
  HIBYTE(static ErrorString.archive) = -18;
  result = "Subset and Column Types" + 0x8000000000000000;
  *&xmmword_3A3950 = 0xD000000000000023;
  *(&xmmword_3A3950 + 1) = "Subset and Column Types" + 0x8000000000000000;
  return result;
}

char *one-time initialization function for limit()
{
  *&static ErrorString.limit = 0xD000000000000016;
  *(&static ErrorString.limit + 1) = "Type/array type." + 0x8000000000000000;
  result = "limit and column_types" + 0x8000000000000000;
  *&xmmword_3A3970 = 0xD000000000000017;
  *(&xmmword_3A3970 + 1) = "limit and column_types" + 0x8000000000000000;
  return result;
}

unint64_t one-time initialization function for supportedStackTypes()
{
  *&static ErrorString.supportedStackTypes = 0xD000000000000020;
  *(&static ErrorString.supportedStackTypes + 1) = "s of type Int, Double or String" + 0x8000000000000000;
  strcpy(&xmmword_3A3990, "type Sequence.");
  result = 0xEE002E65636E6575;
  HIBYTE(xmmword_3A3990) = -18;
  return result;
}

char *one-time initialization function for sortTypes()
{
  *&static ErrorString.sortTypes = 0xD000000000000034;
  *(&static ErrorString.sortTypes + 1) = "hm." + 0x8000000000000000;
  result = "ing', and 'datetime'" + 0x8000000000000000;
  *&xmmword_3A39B0 = 0xD00000000000001FLL;
  *(&xmmword_3A39B0 + 1) = "ing', and 'datetime'" + 0x8000000000000000;
  return result;
}

uint64_t __swift_memcpy24_8(uint64_t a1, uint64_t a2)
{
  result = a1;
  *(a1 + 16) = *(a2 + 16);
  *a1 = *a2;
  return result;
}

void *closure #1 in FeatureVectorizer.fitted(to:)(uint64_t *a1, uint64_t a2, void *a3)
{
  v13 = a3;
  v14 = v3;
  v5 = *(*(type metadata accessor for AnyColumn(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  DataFrame.subscript.getter(*a1, a1[1]);
  result = ColumnDescriptor.init(_:)(&v13);
  if (v4)
  {
    result = v13;
    *v13 = v4;
  }

  else
  {
    v12 = v14;
    *v14 = result;
    v12[1] = v9;
    v12[2] = v10;
    *(v12 + 24) = v11;
  }

  return result;
}

char FeatureVectorizer.Transformer.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 ^ 0xD000000000000011 | a2 ^ (&aColumndescript[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000011, &aColumndescript[-32] | 0x8000000000000000, a1, a2, 0) & 1) == 0)
  {
    if (a1 ^ 0xD000000000000016 | a2 ^ (&aVectorizedfeat[-32] | 0x8000000000000000))
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000016, &aVectorizedfeat[-32] | 0x8000000000000000, a1, a2, 0);
      a2;
      return 2 - (v3 & 1);
    }

    else
    {
      a2;
      return 1;
    }
  }

  else
  {
    a2;
    return 0;
  }
}

unint64_t FeatureVectorizer.Transformer.CodingKeys.stringValue.getter(char a1)
{
  result = 0xD000000000000016;
  if ((a1 & 1) == 0)
  {
    return 0xD000000000000011;
  }

  return result;
}

uint64_t FeatureVectorizer.Transformer.encode(to:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = v6;
  v23 = a4;
  v24 = a3;
  v26 = a2;
  v7 = type metadata accessor for FeatureVectorizer.Transformer.CodingKeys(255, a5, a6, a4);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for FeatureVectorizer<A>.Transformer.CodingKeys, v7);
  v20 = type metadata accessor for KeyedEncodingContainer(0, v7, WitnessTable);
  v25 = *(v20 - 8);
  v8 = *(v25 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v11);
  dispatch thunk of Encoder.container<A>(keyedBy:)(v7, v7, WitnessTable, v11, v22);
  v18 = v26;
  v27 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [ColumnDescriptor]);
  v13 = lazy protocol witness table accessor for type [ColumnDescriptor] and conformance <A> [A](&lazy protocol witness table cache variable for type [ColumnDescriptor] and conformance <A> [A], lazy protocol witness table accessor for type ColumnDescriptor and conformance ColumnDescriptor, &protocol conformance descriptor for <A> [A]);
  v14 = v20;
  v26 = &v18;
  v15 = v19;
  KeyedEncodingContainer.encode<A>(_:forKey:)(&v18, &v27, v20, v12, v13);
  if (v15)
  {
    return (*(v25 + 8))(v26, v14);
  }

  v17 = v25;
  v28[0] = 1;
  KeyedEncodingContainer.encode(_:forKey:)(v24, v23, v28, v14);
  return (*(v17 + 8))(v26, v14);
}