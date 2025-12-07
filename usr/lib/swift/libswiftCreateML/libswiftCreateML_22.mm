uint64_t sub_1701A2(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    result = 0;
    if ((*(a1 + 8) & 0xFFFFFFFF00000001) == 0)
    {
      return (*(a1 + 8) >> 1) + 1;
    }
  }

  else
  {
    v5 = type metadata accessor for BaseTreeClassifier(0);
    return __swift_getEnumTagSinglePayload(*(a3 + 32) + a1, a2, v5);
  }

  return result;
}

uint64_t sub_17022A(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + 8) = 2 * (a2 - 1);
  }

  else
  {
    v5 = type metadata accessor for BaseTreeClassifier(0);
    return __swift_storeEnumTagSinglePayload(*(a4 + 32) + a1, a2, a2, v5);
  }

  return result;
}

uint64_t type metadata accessor for AnyTreeClassifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for AnyTreeClassifier;
  if (!type metadata singleton initialization cache for AnyTreeClassifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for AnyTreeClassifier);
  }

  return result;
}

uint64_t type metadata completion function for AnyTreeClassifier(uint64_t a1)
{
  v3[0] = &unk_3439A8;
  v3[1] = &value witness table for Builtin.BridgeObject + 64;
  v3[2] = &unk_3439C0;
  v3[3] = &unk_3439D8;
  result = type metadata accessor for BaseTreeClassifier(319);
  if (v2 <= 0x3F)
  {
    v3[4] = *(result - 8) + 64;
    swift_initStructMetadata(a1, 256, 5, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t AnyTreeClassifier.init(labels:annotationColumnName:featureColumnNames:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a5;
  v8 = a1;
  v9 = v5;
  v48 = type metadata accessor for BoostedTreeConfiguration(0);
  v49 = *(v48 - 8);
  v10 = *(v49 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v51 = &v41;
  *v9 = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[5] = a4;
  v9[6] = 0xD000000000000013;
  v50 = v9;
  v9[7] = "raining samples." + 0x8000000000000000;
  v13 = *(a1 + 16);
  if (v13)
  {
    v54[0] = _swiftEmptyArrayStorage;

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    v14 = v54[0];
    v15 = specialized _NativeSet.startIndex.getter(a1);
    v17 = v16;
    v19 = v18;
    v46 = a1;
    do
    {
      if (v15 < 0 || v15 >= 1 << *(v8 + 32))
      {
        BUG();
      }

      v20 = *(v8 + 8 * (v15 >> 6) + 56);
      if (!_bittest64(&v20, v15))
      {
        BUG();
      }

      if (*(v8 + 36) != v17)
      {
        BUG();
      }

      v44 = v17;
      v43 = v13;
      v21 = *(v8 + 48);
      v22 = *(v21 + 16 * v15 + 8);
      v23 = *(v21 + 16 * v15);
      if (!v22)
      {
        v23 = 0;
      }

      v45 = v23;
      v24 = v22;
      if (!v22)
      {
        v24 = 0xE000000000000000;
      }

      v54[0] = v14;
      v25 = v14[2];
      v26 = v14[3];
      v42 = v14;
      v47 = v26;
      v27 = v26 >> 1;
      v52 = v25 + 1;

      v28 = v27 <= v25;
      v14 = v42;
      if (v28)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v47 >= 2, v52, 1);
        v14 = v54[0];
      }

      v14[2] = v52;
      v29 = 2 * v25;
      v14[v29 + 4] = v45;
      v14[v29 + 5] = v24;
      v8 = v46;
      v30 = specialized _NativeSet.index(after:)(v15, v44, v19 & 1, v46);
      v15 = v30;
      v17 = v31;
      v19 = v32;
      v13 = v43 - 1;
    }

    while (v43 != 1);
    outlined consume of [MLDataValue : MLDataValue].Index._Variant(v30, v31, v32);
    v8;
  }

  else
  {

    a1;
    v14 = _swiftEmptyArrayStorage;
  }

  v33 = v53;
  v54[0] = v14;

  specialized MutableCollection<>.sort(by:)(v54, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));
  v14;
  v34 = v50;
  v50[3] = v54[0];
  *(v34 + 32) = 1;
  v35 = v51;
  v36 = v33;
  v37 = v48;
  v38 = v33;
  v39 = v49;
  (*(v49 + 16))(v51, v36, v48);
  type metadata accessor for AnyTreeClassifier(0);
  BaseTreeClassifier.init(configuration:)(v35);
  return (*(v39 + 8))(v38, v37);
}

{
  v38 = a5;
  v8 = v5;
  v39 = type metadata accessor for BoostedTreeConfiguration(0);
  v40 = *(v39 - 8);
  v9 = *(v40 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v42 = &v35;
  *v8 = a2;
  v12 = a1;
  v8[1] = a3;
  v41 = v8;
  v8[2] = a4;
  v13 = *(a1 + 16);
  v43 = a4;
  if (v13)
  {
    v46[0] = _swiftEmptyArrayStorage;

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    v14 = v46[0];
    v15 = specialized _NativeSet.startIndex.getter(a1);
    v17 = v16;
    v19 = v18;
    v37 = a1;
    do
    {
      if (v15 < 0 || v15 >= 1 << *(v12 + 32))
      {
        BUG();
      }

      v20 = *(v12 + 8 * (v15 >> 6) + 56);
      if (!_bittest64(&v20, v15))
      {
        BUG();
      }

      if (*(v12 + 36) != v17)
      {
        BUG();
      }

      v21 = *(v12 + 48);
      v22 = *(v21 + 16 * v15 + 8) == 0;
      v36 = v13;
      if (v22)
      {
        v23 = *(v21 + 16 * v15);
      }

      else
      {
        v23 = 0;
      }

      v46[0] = v14;
      v24 = v14[2];
      v25 = v14[3];
      if (v25 >> 1 <= v24)
      {
        v44 = v17;
        v45 = v23;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v25 >= 2, v24 + 1, 1);
        v23 = v45;
        LODWORD(v17) = v44;
        v14 = v46[0];
      }

      v14[2] = v24 + 1;
      v14[v24 + 4] = v23;
      v12 = v37;
      v26 = specialized _NativeSet.index(after:)(v15, v17, v19 & 1, v37);
      v15 = v26;
      v17 = v27;
      v19 = v28;
      v13 = v36 - 1;
    }

    while (v36 != 1);
    outlined consume of [MLDataValue : MLDataValue].Index._Variant(v26, v27, v28);
    v12;
  }

  else
  {

    a1;
    v14 = _swiftEmptyArrayStorage;
  }

  v46[0] = v14;

  specialized MutableCollection<>.sort(by:)(v46, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));
  v14;
  v29 = v41;
  v41[3] = v46[0];
  *(v29 + 32) = 0;
  v29[5] = v43;
  v29[6] = 0xD000000000000013;
  v29[7] = "raining samples." + 0x8000000000000000;
  v30 = v42;
  v31 = v38;
  v32 = v39;
  v33 = v40;
  (*(v40 + 16))(v42, v38, v39);
  type metadata accessor for AnyTreeClassifier(0);
  BaseTreeClassifier.init(configuration:)(v30);
  return (*(v33 + 8))(v31, v32);
}

uint64_t AnyTreeClassifier.makeTransformer()()
{
  v2 = v0;
  v13 = type metadata accessor for BaseTreeClassifierModel(0);
  v14 = *(v13 - 8);
  v3 = *(v14 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v17 = *v1;
  v6 = v1[1];
  v7 = v1[3];
  v18 = *(v1 + 32);
  v15 = v7;
  v8 = *(v7 + 16);
  type metadata accessor for AnyTreeClassifier(0);

  v16 = &v12;
  BaseTreeClassifier.makeTransformer(classCount:featureCount:)(v8, 0);
  *v2 = v17;
  *(v2 + 8) = v6;
  v9 = type metadata accessor for AnyTreeClassifierModel(0);
  *(v2 + 32) = 0;
  *(v2 + 16) = 0;
  (*(v14 + 32))(v2 + *(v9 + 24), v16, v13);
  v10 = *(v9 + 28);
  *(v2 + v10) = v15;
  *(v2 + v10 + 8) = v18 & 1;
}

uint64_t AnyTreeClassifier.update(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = v4;
  v5[5] = a4;
  v5[4] = a3;
  v5[3] = a2;
  v5[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Float>);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v5[9] = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?);
  v5[10] = swift_task_alloc((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AnyColumn(0);
  v5[11] = v9;
  v10 = *(v9 - 8);
  v5[12] = v10;
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5[13] = swift_task_alloc(v11);
  v5[14] = swift_task_alloc(v11);
  return swift_task_switch(AnyTreeClassifier.update(_:with:eventHandler:), 0, 0);
}

uint64_t AnyTreeClassifier.update(_:with:eventHandler:)()
{
  v1 = *(v0 + 16);
  v2 = v1[2];
  if (v2)
  {
    v23 = v1[3];
    v25 = v1[4];
  }

  else
  {
    v9 = *(v0 + 24);
    v10 = *(*(v0 + 48) + 16);
    v11 = swift_task_alloc(32);
    *(v11 + 16) = v9;

    ML16ColumnDescriptorVsAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_8CreateML16ColumnDescriptorVsAE_pTg5(partial apply for closure #1 in FeatureVectorizer.fitted(to:), v11, v10);
    v10;
    v11;
    v1[2] = ML16ColumnDescriptorVsAE_pTg5;
    v23 = 0xD000000000000013;
    v1[3] = 0xD000000000000013;
    v25 = "raining samples." + 0x8000000000000000;
    v1[4] = "raining samples." + 0x8000000000000000;
    v1 = *(v0 + 16);
    v2 = ML16ColumnDescriptorVsAE_pTg5;
  }

  v3 = type metadata accessor for AnyTreeClassifierModel(0);
  v4 = *(v3 + 28);
  v27 = *(v1 + v4);
  if (*(v27 + 16))
  {
    v35 = *(v1 + v4 + 8);
  }

  else
  {
    v31 = v2;
    v20 = v3;
    v33 = *(v0 + 112);
    v36 = *(v0 + 88);
    v12 = *(v0 + 80);
    DataFrame.subscript.getter(**(v0 + 48), *(*(v0 + 48) + 8));
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v36);
    v13 = static Labels.collected(from:_:)(v33, v12);
    v34 = *(v0 + 112);
    v37 = *(v0 + 96);
    v14 = *(v0 + 88);
    LOBYTE(v12) = v16;
    v22 = v13;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 80), &demangling cache variable for type metadata for AnyColumn?);
    (*(v37 + 8))(v34, v14);
    v27;
    *(v1 + v4) = v22;
    v35 = v12;
    *(v1 + v4 + 8) = v12 & 1;
    v27 = v22;
    v3 = v20;
    v2 = v31;
  }

  specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(*(v0 + 24), 0, v2, v23, v25);
  v5 = *(v0 + 104);
  v18 = *(v0 + 96);
  v19 = *(v0 + 88);
  v29 = *(v0 + 72);
  v24 = *(v0 + 64);
  v26 = *(v0 + 56);
  v32 = *(v0 + 40);
  v21 = *(v0 + 32);
  v17 = *(v0 + 16);
  DataFrame.subscript.getter(**(v0 + 48), *(*(v0 + 48) + 8));
  v28 = Labels.encodeAnnotations(_:)(v5, v27, v35 & 1);
  (*(v18 + 8))(v5, v19);
  type metadata accessor for AnyTreeClassifier(0);
  BaseTreeClassifier.update(_:features:annotations:eventHandler:)(v17 + *(v3 + 24), v29, v28, v21, v32);
  (*(v24 + 8))(v29, v26);
  v28;
  v6 = *(v0 + 104);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  *(v0 + 112);
  v6;
  v8;
  v7;
  return (*(v0 + 8))();
}

uint64_t AnyTreeClassifier.init(trainingLabelsColumn:validationLabelsColumn:annotationColumnName:featureColumnNames:configuration:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v85 = a3;
  v9 = v6;
  v91 = a2;
  v82 = v7;
  v84 = a6;
  v90 = a1;
  v78 = type metadata accessor for BoostedTreeConfiguration(0);
  v79 = *(v78 - 8);
  v11 = *(v79 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v70 = &v69;
  v83 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v74 = *(v83 - 8);
  v14 = *(v74 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v73 = &v69;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<Int>>) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v93 = &v69;
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?) - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v75 = &v69;
  v23 = alloca(v20);
  v24 = alloca(v20);
  v72 = &v69;
  v25 = type metadata accessor for AnyColumn(0);
  v95 = *(v25 - 8);
  v26 = *(v95 + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v87 = &v69;
  v29 = alloca(v26);
  v30 = alloca(v26);
  v92 = &v69;
  v80 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v86 = *(v80 - 8);
  v31 = *(v86 + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v81 = &v69;
  v34 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>) - 8) + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v96 = &v69;
  *v9 = v85;
  v76 = a4;
  v9[1] = a4;
  v9[2] = a5;
  v9[5] = a5;
  v9[6] = 0xD000000000000013;
  v85 = v9;
  v9[7] = "raining samples." + 0x8000000000000000;
  v77 = a5;

  v37 = AnyColumn.wrappedElementType.getter(a5);
  v71 = swift_dynamicCastMetatype(v37, &type metadata for String);
  v94 = v25;
  if (!v71)
  {
    v44 = v73;
    if (!swift_dynamicCastMetatype(v37, &type metadata for Int))
    {
      v57 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v57, 0, 0);
      *v58 = 0xD000000000000025;
      *(v58 + 8) = "start time column" + 0x8000000000000000;
      *(v58 + 16) = 0;
      *(v58 + 32) = 0;
      *(v58 + 48) = 1;
      swift_willThrow();
      (*(v79 + 8))(v84, v78);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v91, &demangling cache variable for type metadata for AnyColumn?);
      (*(v95 + 8))(v90, v94);
      swift_bridgeObjectRelease_n(v77, 2);
      return v76;
    }

    v45 = v44;
    AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
    v88 = 0;
    v46 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
    v47 = v83;
    v96 = v46;
    OptionalColumnProtocol.filled(with:)(&v88, v83, v46);
    v92 = *(v74 + 8);
    (v92)(v45, v47);
    v48 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_11TabularData12FilledColumnVyAD0E0VySiGGTt0g5();
    v49 = v75;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v91, v75, &demangling cache variable for type metadata for AnyColumn?);
    v50 = v94;
    if (__swift_getEnumTagSinglePayload(v49, 1, v94) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v49, &demangling cache variable for type metadata for AnyColumn?);
    }

    else
    {
      (*(v95 + 32))(v87, v49, v50);
      AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
      v88 = 0;
      v60 = v83;
      OptionalColumnProtocol.filled(with:)(&v88, v83, v96);
      (v92)(v45, v60);
      v61 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_11TabularData12FilledColumnVyAD0E0VySiGGTt0g5();
      v48 = specialized Set.union<A>(_:)(v61, v48);
      (*(v95 + 8))(v87, v94);
    }

    v62 = specialized _copyCollectionToContiguousArray<A>(_:)(v48);
    v48;
    v88 = v62;
    v63 = v82;
    specialized MutableCollection<>.sort(by:)(&v88);
    if (!v63)
    {
      v96 = 0;
      v56 = v48;
      goto LABEL_14;
    }

LABEL_15:

    BUG();
  }

  v38 = v81;
  AnyColumn.assumingType<A>(_:)(&type metadata for String, &type metadata for String);
  v88 = 0;
  v89 = 0xE000000000000000;
  v39 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  v40 = v80;
  v93 = v39;
  OptionalColumnProtocol.filled(with:)(&v88, v80, v39);
  v86 = *(v86 + 8);
  (v86)(v38, v40);
  v41 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_11TabularData12FilledColumnVyAD0E0VySSGGTt0g5();
  v42 = v72;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v91, v72, &demangling cache variable for type metadata for AnyColumn?);
  v43 = v94;
  if (__swift_getEnumTagSinglePayload(v42, 1, v94) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v42, &demangling cache variable for type metadata for AnyColumn?);
  }

  else
  {
    (*(v95 + 32))(v92, v42, v43);
    v51 = v81;
    AnyColumn.assumingType<A>(_:)(&type metadata for String, &type metadata for String);
    v88 = 0;
    v89 = 0xE000000000000000;
    v52 = v80;
    OptionalColumnProtocol.filled(with:)(&v88, v80, v93);
    (v86)(v51, v52);
    v53 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_11TabularData12FilledColumnVyAD0E0VySSGGTt0g5();
    v41 = specialized Set.union<A>(_:)(v53, v41);
    (*(v95 + 8))(v92, v94);
  }

  v54 = specialized _copyCollectionToContiguousArray<A>(_:)(v41);
  v41;
  v88 = v54;
  v55 = v82;
  specialized MutableCollection<>.sort(by:)(&v88);
  if (v55)
  {
    goto LABEL_15;
  }

  v96 = 0;
  v56 = v41;
LABEL_14:
  v56;
  v64 = v71 == 0;
  v65 = v85;
  v85[3] = v88;
  *(v65 + 32) = !v64;
  v66 = v70;
  v67 = v78;
  v68 = v79;
  (*(v79 + 16))(v70, v84, v78);
  type metadata accessor for AnyTreeClassifier(0);
  BaseTreeClassifier.init(configuration:)(v66);
  (*(v68 + 8))(v84, v67);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v91, &demangling cache variable for type metadata for AnyColumn?);
  return (*(v95 + 8))(v90, v94);
}

uint64_t AnyTreeClassifier.fitted(to:validateOn:eventHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v101 = v5;
  v80 = a4;
  v81 = a3;
  v73 = a2;
  v74 = v4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v72 = v70;
  v92 = type metadata accessor for DataFrame(0);
  v90 = *(v92 - 8);
  v10 = *(v90 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v82 = v70;
  v76 = type metadata accessor for BaseTreeClassifierModel(0);
  v75 = *(v76 - 8);
  v13 = *(v75 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v83 = v70;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v85 = v70;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v84 = v70;
  v78 = type metadata accessor for AnyColumn(0);
  v89 = *(v78 - 8);
  v20 = *(v89 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v79 = v70;
  v93 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Float>);
  v23 = *(v93 - 8);
  v24 = *(v23 + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v94 = v70;
  v27 = alloca(v24);
  v28 = alloca(v24);
  v99 = v70;
  v29 = v6[5];
  v88 = v6[6];
  v77 = v6;
  v98 = v6[7];
  v100 = a1;
  v71 = a1;

  v30 = v101;
  ML16ColumnDescriptorVsAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_8CreateML16ColumnDescriptorVsAE_pTg5(closure #1 in FeatureVectorizer.fitted(to:)partial apply, v70, v29);
  result = v29;
  v101 = v30;
  if (!v30)
  {
    v95 = v23;
    v33 = v98;

    v34 = v101;
    specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(v100, 0, ML16ColumnDescriptorVsAE_pTg5, v88, v33);
    v101 = v34;
    if (v34)
    {
      v33;
      v35 = ML16ColumnDescriptorVsAE_pTg5;
      return v35;
    }

    v96 = ML16ColumnDescriptorVsAE_pTg5;
    v91 = v77[3];
    v36 = *(v77 + 32);
    v37 = v77[1];
    v38 = v79;
    v87 = *v77;
    v86 = v37;
    DataFrame.subscript.getter(v87, v37);
    v39 = v91;
    v97 = v36;
    v100 = Labels.encodeAnnotations(_:)(v38, v91, v36);
    v89 = *(v89 + 8);
    (v89)(v38, v78);
    v40 = v72;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v73, v72, &demangling cache variable for type metadata for DataFrame?);
    v41 = v92;
    if (__swift_getEnumTagSinglePayload(v40, 1, v92) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v40, &demangling cache variable for type metadata for DataFrame?);
      v42 = *(v39 + 16);
      type metadata accessor for AnyTreeClassifier(0);
      v43 = v99;
      v44 = v101;
      BaseTreeClassifier.fitted(features:annotations:classCount:eventHandler:)(v99, v100, v42, v81, v80);
      (*(v95 + 8))(v43, v93);
      v101 = v44;
      if (v44)
      {
        v98;
        v96;
        v35 = v100;
        return v35;
      }

      v100;
      v53 = v83;
    }

    else
    {
      v45 = v82;
      v46 = v40;
      v47 = v90;
      (*(v90 + 32))(v82, v46, v41);
      v48 = v45;
      v49 = v45;
      v50 = v96;
      v51 = v98;
      v52 = v101;
      specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(v49, 0, v96, v88, v98);
      v101 = v52;
      if (v52)
      {
        v51;
        v50;
        v100;
        (*(v47 + 8))(v48, v92);
        return (*(v95 + 8))(v99, v93);
      }

      v54 = v79;
      DataFrame.subscript.getter(v87, v86);
      v55 = v91;
      v56 = Labels.encodeAnnotations(_:)(v54, v91, v97);
      (v89)(v54, v78);
      v57 = *(v55 + 16);
      type metadata accessor for AnyTreeClassifier(0);
      v58 = v100;
      v59 = v101;
      BaseTreeClassifier.fitted(trainingFeatures:trainingAnnotations:validationFeatures:validationAnnotations:classCount:eventHandler:)(v99, v100, v94, v56, v57, v81, v80);
      v101 = v59;
      v60 = v82;
      if (v59)
      {
        v98;
        v96;
        v56;
        v58;
        v61 = *(v95 + 8);
        v62 = v93;
        v61(v94, v93);
        (*(v90 + 8))(v60, v92);
        return (v61)(v99, v62);
      }

      v56;
      v58;
      v63 = *(v95 + 8);
      v64 = v93;
      v63(v94, v93);
      (*(v90 + 8))(v60, v92);
      v63(v99, v64);
      v53 = v85;
    }

    v65 = *(v75 + 32);
    v66 = v76;
    v65(v84, v53, v76);
    v67 = type metadata accessor for AnyTreeClassifierModel(0);
    v68 = v74;
    v65(v74 + *(v67 + 24), v84, v66);
    *v68 = v87;
    v68[1] = v86;
    v68[2] = v96;
    v68[3] = v88;
    v68[4] = v98;
    v69 = *(v67 + 28);
    *(v68 + v69) = v91;
    *(v68 + v69 + 8) = v97;
  }

  return result;
}

uint64_t AnyTreeClassifier.encode(_:to:)(uint64_t a1, uint64_t a2)
{
  v16 = v2;
  v3 = *(a1 + 32);
  v15 = a1;
  v13 = *(a1 + 16);
  v14 = v3;
  v4 = *(a2 + 24);
  v17 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer?);
  v6 = lazy protocol witness table accessor for type FeatureVectorizer<Float>.Transformer? and conformance <A> A?();
  result = dispatch thunk of EstimatorEncoder.encode<A>(_:)(&v13, v5, v6, v4, v17, v7, v13, *(&v13 + 1), v14);
  if (!v2)
  {
    v9 = *(type metadata accessor for AnyTreeClassifierModel(0) + 24) + v15;
    v17 = *(a2 + 24);
    v16 = *(a2 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a2, v17);
    v10 = type metadata accessor for BaseTreeClassifierModel(0);
    v11 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type BaseTreeClassifierModel and conformance BaseTreeClassifierModel, &type metadata accessor for BaseTreeClassifierModel, &protocol conformance descriptor for BaseTreeClassifierModel);
    return dispatch thunk of EstimatorEncoder.encode<A>(_:)(v9, v10, v11, v17, v16, v12, v13, *(&v13 + 1), v14);
  }

  return result;
}

uint64_t AnyTreeClassifier.decode(from:)(uint64_t a1)
{
  v29 = v2;
  v22 = v3;
  v21 = v1;
  v26 = type metadata accessor for BaseTreeClassifierModel(0);
  v23 = *(v26 - 8);
  v4 = *(v23 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v27 = v20;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer);
  v8 = *(a1 + 24);
  v30 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v8);
  v9 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FeatureVectorizer<Float>.Transformer and conformance FeatureVectorizer<A>.Transformer, &demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer, &protocol conformance descriptor for FeatureVectorizer<A>.Transformer);
  v10 = v29;
  result = dispatch thunk of EstimatorDecoder.decode<A>(_:)(v7, v7, v9, v8, v30);
  if (!v10)
  {
    v29 = v20[1];
    v24 = v20[2];
    v30 = v20[3];
    v12 = *(a1 + 24);
    v28 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v12);
    v13 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type BaseTreeClassifierModel and conformance BaseTreeClassifierModel, &type metadata accessor for BaseTreeClassifierModel, &protocol conformance descriptor for BaseTreeClassifierModel);
    dispatch thunk of EstimatorDecoder.decode<A>(_:)(v26, v26, v13, v12, v28);
    v14 = v22;
    v28 = *v22;
    v25 = v22[1];
    v15 = type metadata accessor for AnyTreeClassifierModel(0);
    v16 = v21;
    (*(v23 + 32))(v21 + *(v15 + 24), v27, v26);
    v17 = v14[3];
    v18 = *(v14 + 32);
    *v16 = v28;
    v16[1] = v25;
    v16[2] = v29;
    v16[3] = v24;
    v16[4] = v30;
    v19 = *(v15 + 28);
    *(v16 + v19) = v17;
    *(v16 + v19 + 8) = v18;
  }

  return result;
}

uint64_t protocol witness for UpdatableSupervisedTabularEstimator.update(_:with:eventHandler:) in conformance AnyTreeClassifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc(128);
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = protocol witness for SupervisedEstimator.fitted<A, B>(to:validateOn:eventHandler:) in conformance MLImageClassifier.Classifier;
  return AnyTreeClassifier.update(_:with:eventHandler:)(a1, a2, a3, a4);
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 >= v2)
  {
    if (v2 < 0)
    {
      BUG();
    }

    if (v2)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
    }
  }

  else
  {
    if (v2 < -1)
    {
      BUG();
    }

    v93 = v2;
    v83 = v3;
    if (v2 > 1)
    {
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)(v2 / 2, &type metadata for String);
      *(v4 + 16) = v2 / 2;
      v89 = v4;
      v5 = (v4 + 32);
LABEL_10:
      v88 = v5;
      v6 = *a1;
      v84 = *a1 + 8;
      v86 = *a1 - 16;
      v7 = _swiftEmptyArrayStorage;
      v8 = 0;
      v9 = v2;
      v94 = *a1;
      while (1)
      {
        v10 = v8 + 1;
        v11 = v9;
        v96 = v8;
        if (v8 + 1 >= v9)
        {
          goto LABEL_34;
        }

        v12 = 16 * v8;
        v13 = *(v6 + 16 * v8);
        v14 = *(v6 + 16 * v8 + 8);
        if (__PAIR128__(v14 ^ *(v6 + 16 * v10 + 8), v13 ^ *(v6 + 16 * v10)) == 0)
        {
          break;
        }

        v17 = v8 + 1;
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)(*(v6 + 16 * v10), *(v6 + 16 * v10 + 8), v13, v14, 1);
        v10 = v17;
        v6 = v94;
        v19 = v11;
        v16 = v18;
        v15 = v96 + 2;
        if (v96 + 2 < v19)
        {
          goto LABEL_16;
        }

LABEL_25:
        v10 = v15;
        v28 = (v16 & 1) == 0;
        v11 = v93;
        if (v28)
        {
          goto LABEL_34;
        }

LABEL_26:
        if (v15 < v96)
        {
          BUG();
        }

        if (v15 > v96)
        {
          v29 = &v86[16 * v15];
          v30 = (v6 + v12);
          v31 = v15;
          v32 = v96;
          do
          {
            if (v32 != --v31)
            {
              if (!v6)
              {
                BUG();
              }

              v33 = *v30;
              *v30 = *v29;
              *v29 = v33;
            }

            ++v32;
            v29 -= 16;
            ++v30;
          }

          while (v32 < v31);
        }

LABEL_33:
        v10 = v15;
LABEL_34:
        if (v10 >= v11)
        {
          v34 = v96;
        }

        else
        {
          v34 = v96;
          if (__OFSUB__(v10, v96))
          {
            BUG();
          }

          if (v10 - v96 < v83)
          {
            v35 = (v83 + v96);
            if (__OFADD__(v83, v96))
            {
              BUG();
            }

            if (v35 >= v11)
            {
              v35 = v11;
            }

            if (v35 < v96)
            {
              BUG();
            }

            if (v10 != v35)
            {
              v100 = v7;
              v36 = (v6 + 16 * v10);
              __dst = v35;
              do
              {
                v37 = *(v6 + 16 * v10);
                v38 = *(v6 + 16 * v10 + 8);
                v39 = v34;
                v40 = v36;
                do
                {
                  v41 = *(v40 - 2);
                  v42 = *(v40 - 1);
                  if (v37 == v41 && v38 == v42)
                  {
                    break;
                  }

                  v43 = v10;
                  if ((_stringCompareWithSmolCheck(_:_:expecting:)(v37, v38, v41, v42, 1) & 1) == 0)
                  {
                    v6 = v94;
                    v10 = v43;
                    break;
                  }

                  v6 = v94;
                  if (!v94)
                  {
                    BUG();
                  }

                  v10 = v43;
                  v37 = *v40;
                  v38 = v40[1];
                  *v40 = *(v40 - 1);
                  *(v40 - 2) = v37;
                  *(v40 - 1) = v38;
                  ++v39;
                  v40 -= 2;
                }

                while (v43 != v39);
                ++v10;
                v36 += 2;
                v34 = v96;
              }

              while (v10 != __dst);
              v10 = __dst;
              v7 = v100;
            }
          }
        }

        if (v10 < v34)
        {
          BUG();
        }

        v87 = v10;
        if (!swift_isUniquelyReferenced_nonNull_native(v7))
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
        }

        v44 = *(v7 + 2);
        v45 = v44 + 1;
        v6 = v94;
        v8 = v87;
        if (*(v7 + 3) >> 1 <= v44)
        {
          v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v7 + 3) >= 2uLL, v44 + 1, 1, v7);
          v8 = v87;
          v6 = v94;
          v7 = v76;
        }

        *(v7 + 2) = v45;
        v46 = 16 * v44;
        *&v7[v46 + 32] = v34;
        *&v7[v46 + 40] = v8;
        if (v44)
        {
          v47 = v7 + 32;
          v101 = v7;
          v82 = v7 + 32;
          while (1)
          {
            v48 = v45 - 1;
            if (v45 >= 4)
            {
              v53 = 16 * v45;
              v54 = *&v47[16 * v45 - 56];
              v50 = __OFSUB__(v54, *&v47[16 * v45 - 64]);
              v55 = v54 - *&v47[16 * v45 - 64];
              if (v50)
              {
                BUG();
              }

              v56 = *&v47[v53 - 40];
              v50 = __OFSUB__(v56, *&v47[v53 - 48]);
              v51 = v56 - *&v47[v53 - 48];
              v52 = v50;
              if (v50)
              {
                BUG();
              }

              v57 = *&v7[v53 + 8];
              v50 = __OFSUB__(v57, *&v7[16 * v45]);
              v58 = v57 - *&v7[16 * v45];
              if (v50)
              {
                BUG();
              }

              v50 = __OFADD__(v51, v58);
              v59 = v51 + v58;
              if (v50)
              {
                BUG();
              }

              if (v59 >= v55)
              {
                v68 = *&v47[16 * v48 + 8];
                v50 = __OFSUB__(v68, *&v47[16 * v48]);
                v69 = v68 - *&v47[16 * v48];
                if (v50)
                {
                  BUG();
                }

                if (v51 < v69)
                {
LABEL_84:
                  v48 = v45 - 2;
                  goto LABEL_85;
                }

                goto LABEL_85;
              }
            }

            else
            {
              if (v45 != 3)
              {
                if (v45 < 2)
                {
                  BUG();
                }

                v65 = *&v7[16 * v45 + 8];
                v50 = __OFSUB__(v65, *&v7[16 * v45]);
                v61 = v65 - *&v7[16 * v45];
                v62 = v50;
LABEL_78:
                if (v62)
                {
                  BUG();
                }

                v66 = *&v47[16 * v48 + 8];
                v50 = __OFSUB__(v66, *&v47[16 * v48]);
                v67 = v66 - *&v47[16 * v48];
                if (v50)
                {
                  BUG();
                }

                if (v67 < v61)
                {
                  v7 = v101;
                  goto LABEL_94;
                }

                goto LABEL_85;
              }

              v49 = *(v7 + 5);
              v50 = __OFSUB__(v49, *(v7 + 4));
              v51 = v49 - *(v7 + 4);
              v52 = v50;
            }

            if (v52)
            {
              BUG();
            }

            v60 = *&v7[16 * v45 + 8];
            v50 = __OFSUB__(v60, *&v7[16 * v45]);
            v61 = v60 - *&v7[16 * v45];
            v62 = v50;
            if (v50)
            {
              BUG();
            }

            v63 = *&v47[16 * v48 + 8];
            v50 = __OFSUB__(v63, *&v47[16 * v48]);
            v64 = v63 - *&v47[16 * v48];
            if (v50)
            {
              BUG();
            }

            if (__OFADD__(v64, v61))
            {
              BUG();
            }

            if (v64 + v61 < v51)
            {
              goto LABEL_78;
            }

            if (v51 < v64)
            {
              goto LABEL_84;
            }

LABEL_85:
            if (v48 - 1 >= v45)
            {
              BUG();
            }

            if (!v6)
            {
              BUG();
            }

            v70 = 16 * (v48 - 1);
            v97 = v48;
            v71 = *&v47[v70];
            v72 = *&v47[16 * v48 + 8];
            __dsta = &v47[16 * v48];
            specialized _merge<A>(low:mid:high:buffer:by:)((v6 + 16 * v71), (v6 + 16 * *__dsta), v6 + 16 * v72, v88);
            if (v1)
            {
              goto LABEL_108;
            }

            if (v72 < v71)
            {
              BUG();
            }

            v73 = &v47[v70];
            v74 = *(v101 + 2);
            if (v97 > v74)
            {
              BUG();
            }

            *v73 = v71;
            *(v73 + 1) = v72;
            if (v97 >= v74)
            {
              BUG();
            }

            v45 = v74 - 1;
            memmove(__dsta, __dsta + 16, 16 * (v74 - 1 - v97));
            v7 = v101;
            *(v101 + 2) = v74 - 1;
            v75 = v74 <= 2;
            v6 = v94;
            v8 = v87;
            v47 = v82;
            if (v75)
            {
              goto LABEL_94;
            }
          }
        }

        v45 = 1;
LABEL_94:
        v9 = v93;
        if (v8 >= v93)
        {
          goto LABEL_97;
        }
      }

      v15 = v8 + 2;
      if (v8 + 2 >= v9)
      {
        goto LABEL_33;
      }

      v16 = 0;
LABEL_16:
      v99 = v7;
      v20 = &v84[16 * v15];
      do
      {
        v21 = *(v20 - 1);
        v22 = *v20;
        v23 = 16 * v10;
        v24 = *(v6 + v23);
        v25 = *(v6 + v23 + 8);
        if (v21 == v24 && v22 == v25)
        {
          if (v16)
          {
            v7 = v99;
            v11 = v93;
            goto LABEL_26;
          }
        }

        else
        {
          v26 = _stringCompareWithSmolCheck(_:_:expecting:)(v21, v22, v24, v25, 1);
          v6 = v94;
          if ((v16 ^ v26))
          {
            goto LABEL_24;
          }
        }

        v27 = v15 + 1;
        v20 += 2;
        v10 = v15;
        v15 = v27;
      }

      while (v27 < v93);
      v15 = v27;
LABEL_24:
      v7 = v99;
      goto LABEL_25;
    }

    if (v2 == 1)
    {
      v89 = _swiftEmptyArrayStorage;
      v5 = &_swiftEmptyArrayStorage[4];
      goto LABEL_10;
    }

    v7 = _swiftEmptyArrayStorage;
    v88 = &_swiftEmptyArrayStorage[4];
    v45 = _swiftEmptyArrayStorage[2];
    v89 = _swiftEmptyArrayStorage;
LABEL_97:
    if (v45 < 2)
    {
LABEL_110:
      v7;
      v89[2] = 0;
      v89;
    }

    else
    {
      v77 = *a1;
      __dstb = *a1;
      while (1)
      {
        v101 = v7;
        if (!v77)
        {
          BUG();
        }

        v78 = 16 * (v45 - 1);
        v79 = *&v7[v78 + 40];
        v95 = *&v7[16 * v45];
        specialized _merge<A>(low:mid:high:buffer:by:)((v77 + 16 * v95), (v77 + 16 * *&v7[v78 + 32]), v77 + 16 * v79, v88);
        if (v1)
        {
          break;
        }

        if (v79 < v95)
        {
          BUG();
        }

        v98 = v79;
        if (!swift_isUniquelyReferenced_nonNull_native(v7))
        {
          v101 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
        }

        v80 = *(v101 + 2);
        if (v45 - 2 >= v80)
        {
          BUG();
        }

        *&v101[16 * v45] = v95;
        *&v101[16 * v45 + 8] = v98;
        v81 = v80 - v45;
        if (v80 < v45)
        {
          BUG();
        }

        v7 = v101;
        v45 = v80 - 1;
        memmove(&v101[v78 + 32], &v101[v78 + 48], 16 * v81);
        *(v101 + 2) = v80 - 1;
        v77 = __dstb;
        if (v80 <= 2)
        {
          goto LABEL_110;
        }
      }

LABEL_108:
      v101;
      v89[2] = 0;
      v89;
    }
  }
}

char specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a3 - a2;
  v9 = (a3 - a2) / 16;
  if (v7 / 16 >= v9)
  {
    v34 = (a3 - a2) / 16;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v9, a4);
    v10 = a4;
    v11 = &a4[16 * v34];
    if (v8 < 16 || v6 >= a2)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v21 = (v4 - 16);
      v22 = *(v11 - 2);
      v23 = *(v11 - 1);
      v24 = *(v5 - 2);
      v25 = *(v5 - 1);
      if (v22 == v24 && v23 == v25)
      {
        break;
      }

      v35 = v5;
      v26 = v4;
      v27 = v11;
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)(v22, v23, v24, v25, 1);
      v11 = v27;
      v4 = v26;
      v5 = v35;
      v10 = a4;
      if ((v28 & 1) == 0)
      {
        break;
      }

      v29 = v35 - 2;
      v5 = v35 - 2;
      if (v4 != v35)
      {
        goto LABEL_20;
      }

LABEL_21:
      if (v5 > v6)
      {
        v4 = v21;
        if (v11 > v10)
        {
          continue;
        }
      }

      goto LABEL_23;
    }

    v29 = (v11 - 16);
    v20 = v4 == v11;
    v11 -= 16;
    if (v20)
    {
      goto LABEL_21;
    }

LABEL_20:
    *v21 = *v29;
    goto LABEL_21;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v6, v7 / 16, a4);
  v10 = a4;
  v11 = &a4[16 * (v7 / 16)];
  if (v7 >= 16 && a2 < v4)
  {
    while (1)
    {
      v12 = *v5;
      v13 = v5[1];
      v14 = v10[1];
      if (*v5 == *v10 && v13 == v14)
      {
        break;
      }

      v15 = v10;
      v33 = v5;
      v16 = v4;
      v17 = v11;
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)(v12, v13, *v10, v14, 1);
      v11 = v17;
      v4 = v16;
      v5 = v33;
      v10 = v15;
      if ((v18 & 1) == 0)
      {
        break;
      }

      v19 = v33;
      v5 = v33 + 2;
      if (v6 != v33)
      {
        goto LABEL_9;
      }

LABEL_10:
      v6 += 16;
      if (v10 >= v11 || v5 >= v4)
      {
        goto LABEL_12;
      }
    }

    v19 = v10;
    v20 = v6 == v10;
    v10 += 2;
    if (v20)
    {
      goto LABEL_10;
    }

LABEL_9:
    *v6 = *v19;
    goto LABEL_10;
  }

LABEL_12:
  v5 = v6;
LABEL_23:
  v30 = v11 - v10;
  if (v5 != v10 || v5 >= &v10[2 * (v30 / 16)])
  {
    memmove(v5, v10, 16 * (v30 / 16));
  }

  return 1;
}

uint64_t specialized _NativeSet.index(after:)(unint64_t a1, int a2, char a3, uint64_t a4)
{
  return specialized _NativeSet.index(after:)(a1, a2, a3, a4);
}

{
  if (a3)
  {
    BUG();
  }

  result = 1 << *(a4 + 32);
  if ((a1 & 0x8000000000000000) != 0 || result <= a1)
  {
    BUG();
  }

  v6 = a1 >> 6;
  v7 = *(a4 + 8 * (a1 >> 6) + 56);
  v8 = a1 & 0x3F;
  if (!_bittest64(&v7, v8))
  {
    BUG();
  }

  if (*(a4 + 36) != a2)
  {
    BUG();
  }

  v9 = (-2 << v8) & v7;
  if (v9)
  {
    _BitScanForward64(&v10, v9);
    v11 = a1 & 0x7FFFFFFFFFFFFFC0;
    return v10 | v11;
  }

  v12 = v6 + 1;
  v13 = (result + 63) >> 6;
  if (v6 + 1 < v13)
  {
    v14 = *(a4 + 8 * v6 + 64);
    if (v14)
    {
LABEL_12:
      _BitScanForward64(&v10, v14);
      v11 = v12 << 6;
      return v10 | v11;
    }

    v12 = v6 + 2;
    if (v6 + 2 < v13)
    {
      v14 = *(a4 + 8 * v6 + 72);
      if (v14)
      {
        goto LABEL_12;
      }

      v12 = v6 + 3;
      if (v6 + 3 < v13)
      {
        v14 = *(a4 + 8 * v6 + 80);
        if (v14)
        {
          goto LABEL_12;
        }

        while (v6 + 4 < v13)
        {
          v14 = *(a4 + 8 * v6++ + 88);
          if (v14)
          {
            v12 = v6 + 3;
            goto LABEL_12;
          }
        }
      }
    }
  }

  return result;
}

{
  return specialized _NativeSet.index(after:)(a1, a2, a3, a4);
}

unint64_t specialized _NativeSet.startIndex.getter(uint64_t a1)
{
  return specialized _NativeSet.startIndex.getter(a1);
}

{
  v1 = *(a1 + 32);
  result = 1 << v1;
  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = 0;
LABEL_3:
    _BitScanForward64(&v5, v3);
    return v4 | v5;
  }

  v6 = v1 & 0x3F;
  if (v6 >= 7u)
  {
    v3 = *(a1 + 64);
    if (v3)
    {
      v4 = 64;
      goto LABEL_3;
    }

    if (v6 != 7)
    {
      v3 = *(a1 + 72);
      v4 = 128;
      if (v3)
      {
        goto LABEL_3;
      }

      v3 = *(a1 + 80);
      v4 = 192;
      if (v3)
      {
        goto LABEL_3;
      }

      v7 = 11;
      while (v7 - 7 < (result + 63) >> 6)
      {
        v3 = *(a1 + 8 * v7);
        v4 += 64;
        ++v7;
        if (v3)
        {
          goto LABEL_3;
        }
      }
    }
  }

  return result;
}

{
  return specialized _NativeSet.startIndex.getter(a1);
}

_BYTE *assignWithCopy for MLRandomForestRegressor.ModelParameters.ValidationData(_BYTE *__dst, _BYTE *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLRandomForestRegressor.ModelParameters.ValidationData(__dst);
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

uint64_t type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLRandomForestRegressor.ModelParameters.ValidationData;
  if (!type metadata singleton initialization cache for MLRandomForestRegressor.ModelParameters.ValidationData)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLRandomForestRegressor.ModelParameters.ValidationData);
  }

  return result;
}

void *assignWithTake for MLRandomForestRegressor.ModelParameters.ValidationData(void *__dst, void *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLRandomForestRegressor.ModelParameters.ValidationData(__dst);
  if (swift_getEnumCaseMultiPayload(__src, a3) == 2)
  {
    v4 = type metadata accessor for DataFrame(0);
    (*(*(v4 - 8) + 32))(__dst, __src, v4);
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata completion function for MLRandomForestRegressor.ModelParameters.ValidationData(uint64_t a1)
{
  v5[0] = &unk_343AC8;
  v5[1] = &unk_343AE0;
  result = type metadata accessor for DataFrame(319);
  if (v4 <= 0x3F)
  {
    v5[2] = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 3, v5, v2, v3);
    return 0;
  }

  return result;
}

uint64_t MLRandomForestRegressor.ModelParameters.ValidationData.generateDataFrames(trainingData:)(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t *, uint64_t, uint64_t))
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
  v20 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  outlined init with copy of MLRandomForestRegressor.ModelParameters.ValidationData(v3, &v44);
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

uint64_t MLRandomForestRegressor.ModelParameters.ValidationData.table.getter(__m128 a1)
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
  v10 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  outlined init with copy of MLRandomForestRegressor.ModelParameters.ValidationData(v2, &v25);
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

uint64_t outlined init with copy of MLRandomForestRegressor.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

void *initializeBufferWithCopyOfBuffer for MLActivityClassifier.DataBatcher(void *a1, void *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = type metadata accessor for DataFrame(0);
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    v7 = a3[5];
    *(a1 + v7) = *(a2 + v7);
    *(a1 + v7 + 8) = *(a2 + v7 + 8);
    v8 = a3[6];
    *(a1 + v8) = *(a2 + v8);
    *(a1 + v8 + 8) = *(a2 + v8 + 8);
    *(a1 + a3[7]) = *(a2 + a3[7]);
    *(a1 + a3[8]) = *(a2 + a3[8]);
    *(a1 + a3[9]) = *(a2 + a3[9]);
    *(a1 + a3[10]) = *(a2 + a3[10]);
    *(a1 + a3[11]) = *(a2 + a3[11]);
    *(a1 + a3[12]) = *(a2 + a3[12]);
  }

  return v3;
}

uint64_t destroy for MLActivityClassifier.DataBatcher(uint64_t a1, int *a2)
{
  v2 = type metadata accessor for DataFrame(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  *(a1 + a2[5] + 8);
  *(a1 + a2[6] + 8);
  return *(a1 + a2[7]);
}

uint64_t initializeWithCopy for MLActivityClassifier.DataBatcher(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = type metadata accessor for DataFrame(0);
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  v5 = a3[5];
  *(a1 + v5) = *(a2 + v5);
  *(a1 + v5 + 8) = *(a2 + v5 + 8);
  v6 = a3[6];
  *(a1 + v6) = *(a2 + v6);
  *(a1 + v6 + 8) = *(a2 + v6 + 8);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + a3[12]) = *(a2 + a3[12]);

  return a1;
}

uint64_t assignWithCopy for MLActivityClassifier.DataBatcher(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = type metadata accessor for DataFrame(0);
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  v5 = a3[5];
  *(a1 + v5) = *(a2 + v5);
  v6 = *(a1 + v5 + 8);
  *(a1 + v5 + 8) = *(a2 + v5 + 8);

  v6;
  v7 = a3[6];
  *(a1 + v7) = *(a2 + v7);
  v8 = *(a1 + v7 + 8);
  *(a1 + v7 + 8) = *(a2 + v7 + 8);

  v8;
  v9 = a3[7];
  v10 = *(a1 + v9);
  *(a1 + v9) = *(a2 + v9);

  v10;
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + a3[12]) = *(a2 + a3[12]);
  return a1;
}

uint64_t initializeWithTake for MLActivityClassifier.DataBatcher(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = type metadata accessor for DataFrame(0);
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + a3[12]) = *(a2 + a3[12]);
  return a1;
}

uint64_t assignWithTake for MLActivityClassifier.DataBatcher(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = type metadata accessor for DataFrame(0);
  (*(*(v5 - 8) + 40))(a1, a2, v5);
  v6 = a3[5];
  *(a1 + v6) = *(a2 + v6);
  v7 = *(a1 + v6 + 8);
  *(a1 + v6 + 8) = *(a2 + v6 + 8);
  v7;
  v8 = a3[6];
  *(a1 + v8) = *(a2 + v8);
  v9 = *(a1 + v8 + 8);
  *(a1 + v8 + 8) = *(a2 + v8 + 8);
  v9;
  v10 = a3[7];
  v11 = *(a1 + v10);
  *(a1 + v10) = *(a2 + v10);
  v11;
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + a3[12]) = *(a2 + a3[12]);
  return a1;
}

uint64_t sub_173D9A(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = 0;
  v5 = type metadata accessor for DataFrame(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(a1, a2, v5);
  }

  if ((*(a1 + *(a3 + 20) + 8) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + *(a3 + 20) + 8) >> 1) + 1;
  }

  return v4;
}

uint64_t sub_173E24(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = type metadata accessor for DataFrame(0);
  if (*(*(v6 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(a1, a2, a2, v6);
  }

  result = *(a4 + 20);
  *(a1 + result + 8) = 2 * (a2 - 1);
  return result;
}

uint64_t type metadata accessor for MLActivityClassifier.DataBatcher(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLActivityClassifier.DataBatcher;
  if (!type metadata singleton initialization cache for MLActivityClassifier.DataBatcher)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLActivityClassifier.DataBatcher);
  }

  return result;
}

uint64_t type metadata completion function for MLActivityClassifier.DataBatcher(uint64_t a1)
{
  result = type metadata accessor for DataFrame(319);
  if (v2 <= 0x3F)
  {
    v3[0] = *(result - 8) + 64;
    v3[1] = &unk_343B18;
    v3[2] = &unk_343B18;
    v3[3] = &value witness table for Builtin.BridgeObject + 64;
    v3[4] = &unk_343B30;
    v3[5] = &value witness table for Builtin.Int64 + 64;
    v3[6] = &value witness table for Builtin.Int64 + 64;
    v3[7] = &unk_343B48;
    v3[8] = &value witness table for Builtin.Int64 + 64;
    swift_initStructMetadata(a1, 256, 9, v3, a1 + 16);
    return 0;
  }

  return result;
}

void *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData6ColumnVySSG_AF0E5FrameV5SliceVSgs5NeverOTg5(void (*a1)(__int128 *), uint64_t a2)
{
  v45 = v2;
  v38 = a2;
  v39 = a1;
  v40 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame.Slice?) - 8);
  v4 = *(v40 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v46 = &v34;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v37 = &v34;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  *&v44 = &v34;
  v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<String>>);
  v13 = *(*(v42 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v51 = &v34;
  v47 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  v16 = dispatch thunk of Sequence.underestimatedCount.getter(v9, v47);
  v48 = _swiftEmptyArrayStorage;
  v17 = 0;
  if (v16 > 0)
  {
    v17 = v16;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
  v49 = v48;
  (*(v50 + 16))(v44, v3, v9);
  dispatch thunk of Sequence.makeIterator()(v9, v47);
  v36 = v16;
  if (v16 < 0)
  {
    BUG();
  }

  v41 = v9;
  if (v16)
  {
    v50 = v51 + *(v42 + 36);
    v18 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
    do
    {
      dispatch thunk of Collection.endIndex.getter(v9, v18);
      if (*v50 == v35[0])
      {
        BUG();
      }

      v47 = dispatch thunk of Collection.subscript.read(v35, v50, v9, v18);
      v44 = *v19;

      v47(v35, 0);
      dispatch thunk of Collection.formIndex(after:)(v50, v9, v18);
      v43 = v44;
      v20 = v45;
      v39(&v43);
      v45 = v20;
      if (v20)
      {
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v51, &demangling cache variable for type metadata for IndexingIterator<Column<String>>);

        SBYTE8(v43);
LABEL_22:
        BUG();
      }

      SBYTE8(v43);
      v21 = v49;
      v48 = v49;
      v22 = v49[2];
      if (v49[3] >> 1 <= v22)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v49[3] >= 2uLL, v22 + 1, 1);
        v21 = v48;
      }

      v21[2] = v22 + 1;
      v23 = *(v40 + 80);
      v49 = v21;
      outlined init with take of DataFrame.Slice?(v46, v21 + ((v23 + 32) & ~v23) + *(v40 + 72) * v22);
      v24 = v36-- == 1;
      v9 = v41;
    }

    while (!v24);
  }

  v46 = (v51 + *(v42 + 36));
  v25 = v9;
  v50 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  while (1)
  {
    v26 = v50;
    dispatch thunk of Collection.endIndex.getter(v25, v50);
    if (*v46 == v35[0])
    {
      break;
    }

    v47 = dispatch thunk of Collection.subscript.read(v35, v46, v25, v26);
    v44 = *v27;
    v28 = *(v27 + 1);

    v47(v35, 0);
    dispatch thunk of Collection.formIndex(after:)(v46, v25, v50);
    v43 = v44;
    v29 = v45;
    v39(&v43);
    v45 = v29;
    if (v29)
    {
      v28;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v51, &demangling cache variable for type metadata for IndexingIterator<Column<String>>);

      goto LABEL_22;
    }

    v28;
    v30 = v49;
    v48 = v49;
    v31 = v49[2];
    if (v49[3] >> 1 <= v31)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v49[3] >= 2uLL, v31 + 1, 1);
      v30 = v48;
    }

    v30[2] = v31 + 1;
    v32 = *(v40 + 80);
    v49 = v30;
    outlined init with take of DataFrame.Slice?(v37, v30 + ((v32 + 32) & ~v32) + *(v40 + 72) * v31);
    v25 = v41;
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v51, &demangling cache variable for type metadata for IndexingIterator<Column<String>>);
  return v49;
}

void *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF10Algorithms15UniquedSequenceVy11TabularData6ColumnVySiGSiSgG_AI0H5FrameV5SliceVSgs5NeverOTg5(void (*a1)(uint64_t *, Swift::UInt, uint64_t, void *), uint64_t a2)
{
  v57 = v2;
  v45 = a2;
  v46 = a1;
  v47 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame.Slice?) - 8);
  v4 = *(v47 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v54 = v42;
  v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v7 = *(v56 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<Int>>);
  v11 = *(*(v59 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v62 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for UniquedSequence<Column<Int>, Int?>.Iterator);
  v14 = *(*(v43 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v61 = v42;
  v55 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
  v58 = v55;
  v17 = v56;
  (*(v7 + 16))(v42, v3, v56);
  v60 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
  v18 = v62;
  dispatch thunk of Sequence.makeIterator()(v17, v60);
  v19 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for UniquedSequence<Column<Int>, Int?>) + 52);
  v20 = *(v3 + v19);
  v21 = *(v3 + v19 + 8);

  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Int?);
  v23 = lazy protocol witness table accessor for type Int? and conformance <A> A?();
  v24 = v20;
  v25 = v61;
  UniquedSequence.Iterator.init(base:projection:)(v18, v24, v21, v56, v22, v60, v23);
  v59 = v25 + *(v59 + 36);
  v26 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
  v62 = v26;
LABEL_2:
  v27 = v56;
  while (1)
  {
    v28 = v26;
    dispatch thunk of Collection.endIndex.getter(v27, v26);
    if (*v59 == v42[0])
    {
      break;
    }

    v29 = v59;
    v30 = v61;
    v31 = dispatch thunk of Collection.subscript.read(v42, v59, v27, v28);
    v33 = *v32;
    LOBYTE(v60) = *(v32 + 8);
    v31(v42, 0);
    dispatch thunk of Collection.formIndex(after:)(v29, v27, v62);
    v44 = v33;
    v50 = v33;
    v51 = v60;
    (*(v30 + *(v43 + 52)))(&v50);
    v34 = v52;
    v35 = specialized Set._Variant.insert(_:)(v42, v52, v53);
    v26 = v62;
    if (v35)
    {
      v48 = v44;
      v49 = v60;
      v37 = v57;
      v46(&v48, v34, v36, v62);
      v38 = v58;
      if (v37)
      {
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v61, &demangling cache variable for type metadata for UniquedSequence<Column<Int>, Int?>.Iterator);

        BUG();
      }

      v57 = 0;
      v55 = v58;
      v39 = v58[2];
      if (v58[3] >> 1 <= v39)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v58[3] >= 2uLL, v39 + 1, 1);
        v38 = v55;
      }

      v38[2] = v39 + 1;
      v40 = *(v47 + 80);
      v58 = v38;
      outlined init with take of DataFrame.Slice?(v54, v38 + ((v40 + 32) & ~v40) + *(v47 + 72) * v39);
      v26 = v62;
      goto LABEL_2;
    }
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v61, &demangling cache variable for type metadata for UniquedSequence<Column<Int>, Int?>.Iterator);
  return v58;
}

char *specialized Sequence.sorted(by:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  (*(v3 + 16))(&v10, a1, v2);
  v7 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
  v10 = dispatch thunk of Sequence._copyToContiguousArray()(v2, v7);
  specialized MutableCollection<>.sort(by:)(&v10);
  v8 = v10;
  if (v1)
  {
  }

  return v8;
}

uint64_t MLActivityClassifier.DataBatcher.init(input:sessionIdColumn:labelColumn:featureColumns:windowSize:sortSessions:mode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, char a8, char a9)
{
  v111 = a4;
  v12 = v9;
  v114 = a2;
  v112 = a6;
  v106 = a5;
  v94 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v93 = *(v94 - 8);
  v13 = *(v93 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v97 = &v91;
  v96 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v95 = *(v96 - 8);
  v16 = *(v95 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v98 = &v91;
  v103 = type metadata accessor for DataFrame(0);
  v100 = *(v103 - 8);
  v19 = *(v100 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v107 = &v91;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v92 = &v91;
  v105 = type metadata accessor for MLActivityClassifier.DataBatcher(0);
  v24 = v105[12];
  v102 = v12;
  *(v12 + v24) = 0;
  v99 = a1;
  v25 = DataFrame.columns.getter(0);
  v26 = v25;
  MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11TabularData9AnyColumnVG_SSs5NeverOTg504_s11d75Data0B5FrameV8CreateMLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n(v25);
  v101 = v10;
  v26;
  v104 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n);
  v28 = specialized Set._Variant.remove(_:)(v114, a3);
  v30 = v29;
  a3;
  if (!v30)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000018, ("f type String or Int." + 0x8000000000000000), "CreateML/MLActivityClassifier+Batching.swift", 44, 2, 52, 0);
    goto LABEL_33;
  }

  v31 = v105[5];
  v113 = v28;
  v32 = v102;
  *(v102 + v31) = v28;
  *(v32 + v31 + 8) = v30;
  v114 = v30;

  v33 = v106;
  v34 = specialized Set._Variant.remove(_:)(v111, v106);
  v36 = v35;
  v33;
  v37 = v32;
  v38 = v105;
  if (!v36)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000016, ("Session column not found" + 0x8000000000000000), "CreateML/MLActivityClassifier+Batching.swift", 44, 2, 56, 0);
LABEL_33:
    BUG();
  }

  v39 = v105[6];
  v106 = v34;
  *(v37 + v39) = v34;
  *(v37 + v39 + 8) = v36;
  v40 = v112;
  v111 = v36;
  if (v112)
  {
    *(v37 + v38[7]) = v112;
  }

  else
  {
    v41 = v104;
    swift_bridgeObjectRetain_n(v104, 2);

    v42 = specialized _copyCollectionToContiguousArray<A>(_:)(v41);
    v41;
    v109 = v42;
    v43 = v101;
    specialized MutableCollection<>.sort(by:)(&v109);
    v101 = v43;
    if (v43)
    {

      BUG();
    }

    v41;
    v40 = v109;
    v38 = v105;
    *(v37 + v105[7]) = v109;
  }

  *(v37 + v38[9]) = a7;
  v44 = *(v40 + 2);
  v45 = v40;
  v46 = v44 + 2;
  if (__OFADD__(2, v44))
  {
    BUG();
  }

  v112 = v44;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v45);
  if (!isUniquelyReferenced_nonNull_native || (v48 = v45, *(v45 + 3) >> 1 < v46))
  {
    if (v112 > v46)
    {
      v46 = v112;
    }

    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v46, 1, v45);
  }

  v112 = v45;
  v49 = *(v48 + 2);
  v108 = *(v48 + 3);
  v50 = v108 >> 1;
  v51 = v49 + 1;

  if (v50 <= v49)
  {
    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v108 >= 2, v49 + 1, 1, v48);
  }

  *(v48 + 2) = v51;
  v52 = 16 * v49;
  *&v48[v52 + 32] = v113;
  *&v48[v52 + 40] = v114;
  v108 = *(v48 + 3);
  v53 = v108 >> 1;
  v54 = v49 + 2;

  if (v53 < v54)
  {
    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v108 >= 2, v54, 1, v48);
  }

  *(v48 + 2) = v54;
  v55 = 16 * v51;
  *&v48[v55 + 32] = v106;
  v56 = v111;
  *&v48[v55 + 40] = v111;
  v114;
  v56;
  v109 = v48;
  v57 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v58 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
  v59 = v107;
  v108 = v57;
  v60 = v57;
  v61 = v99;
  DataFrame.selecting<A>(columnNames:)(&v109, v60, v58);
  v48;
  v62 = v92;
  v63 = v59;
  v64 = v112;
  v65 = v56;
  v66 = v114;
  v67 = v101;
  v68 = static MLActivityClassifier.DataBatcher.preprocess(_:_:_:_:_:_:)(v92, v63, v112, v106, v65, v113, v114, a7, a8);
  v113 = v67;
  if (v67)
  {
    v66;
    v69 = v111;
    v111;
    v70 = *(v100 + 8);
    v71 = v61;
    v72 = v64;
    v73 = v103;
    v70(v71, v103);
    v70(v107, v73);
    LOBYTE(v73) = v104;
    v72;
    v69;
    v114;
    return v73;
  }

  else
  {
    v75 = v100;
    v112 = v68;
    v76 = v107;
    v77 = v103;
    v107 = *(v100 + 8);
    (v107)(v76, v103);
    v66;
    v78 = v102;
    (*(v75 + 32))(v102, v62, v77);
    *(v78 + v105[8]) = v112;
    v79 = v97;
    LOBYTE(v78) = v111;
    DataFrame.subscript.getter(v106, v111, v108);
    v78;
    v80 = v98;
    v81 = v94;
    v82 = v113;
    Column.mapNonNil<A>(_:)(closure #1 in MLActivityClassifier.DataBatcher.init(input:sessionIdColumn:labelColumn:featureColumns:windowSize:sortSessions:mode:), 0, v94, &type metadata for Int);
    v113 = v82;
    (*(v93 + 8))(v79, v81);
    v83 = v96;
    Column<A>.max()(v96, &protocol witness table for Int);
    v84 = v83;
    v85 = 0;
    (*(v95 + 8))(v80, v84);
    if (!v110)
    {
      v85 = v109;
    }

    v86 = __OFADD__(a7, v85);
    v87 = &v85[a7];
    if (v86)
    {
      BUG();
    }

    v86 = __OFSUB__(v87, 1);
    v88 = v87 - 1;
    if (v86)
    {
      BUG();
    }

    if (!a7)
    {
      BUG();
    }

    if (!(v88 ^ 0x8000000000000000 | ~a7))
    {
      BUG();
    }

    (v107)(v99, v103);
    v104;
    v89 = v105;
    v90 = v102;
    *(v102 + v105[10]) = v88 / a7;
    result = v89[11];
    *(v90 + result) = a9 & 1;
  }

  return result;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t a1)
{
  v17 = closure #2 in static MLActivityClassifier.DataBatcher.preprocess(_:_:_:_:_:_:);
  v18 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v3 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
  result = dispatch thunk of MutableCollection.withContiguousMutableStorageIfAvailable<A>(_:)(partial apply for specialized closure #1 in MutableCollection<>.sort(by:), v16, &type metadata for () + 8, v2, v3);
  if (!v1 && v25)
  {
    v5 = specialized Sequence.sorted(by:)(a1);
    v28 = 0;
    v29 = v5;
    v6 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
    dispatch thunk of Collection.indices.getter(v2, v6);
    v7 = v25;
    v27 = v26;
    if (v25 != v26)
    {
      v8 = v29;
      if (v25 > v26)
      {
        BUG();
      }

      if (v25 >= v26)
      {
        BUG();
      }

      v9 = *(v29 + 2);
      if (!v9)
      {
        return v8;
      }

      v22 = v3;
      v21 = v2;
      v10 = 0;
      v11 = 0;
      if (v9 > 0)
      {
        v11 = v9;
      }

      v20 = v11;
      v12 = v29 + 40;
      v23 = v27 + ~v25;
      v24 = v9;
      while (1)
      {
        if (v20 == v10)
        {
          BUG();
        }

        v19 = v7 + v10;
        if (v10 >= *(v8 + 2))
        {
          BUG();
        }

        v13 = v7;
        v14 = *v12;
        v25 = *(v12 - 1);
        LOBYTE(v26) = v14;
        dispatch thunk of MutableCollection.subscript.setter(&v25, &v19, v21, v22);
        if (v23 == v10)
        {
          break;
        }

        v15 = v13 + v10 + 1;
        v8 = v29;
        if (v15 < v13 || v15 >= v27)
        {
          BUG();
        }

        v7 = v13;
        ++v10;
        v12 += 16;
        if (v24 == v10)
        {
          return v8;
        }
      }
    }

    LOBYTE(v8) = v29;
    return v8;
  }

  return result;
}

void *static MLActivityClassifier.DataBatcher.preprocess(_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v108 = v9;
  v105 = a6;
  v94 = a5;
  v100 = a1;
  v88 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v89 = *(v88 - 8);
  v13 = *(v89 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v90 = &v80;
  v87 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for UniquedSequence<Column<Int>, Int?>);
  v16 = *(*(v87 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v86 = &v80;
  v96 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of DataFrameProtocol.grouped(by:)>>.0);
  v95 = *(v96 - 8);
  v19 = *(v95 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v91 = &v80;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v93 = &v80;
  v102 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v101 = *(v102 - 8);
  v24 = *(v101 + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v104 = &v80;
  v98 = type metadata accessor for AnyColumn(0);
  v99 = *(v98 - 8);
  v27 = *(v99 + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v92 = &v80;
  v109._countAndFlagsBits = DataFrame.columns.getter(0);
  v30 = a3[2];
  if (!v30)
  {
    BUG();
  }

  v97 = a4;
  v31 = a3[4];
  v107 = a3;
  v32 = a3[5];

  v33._countAndFlagsBits = v31;
  v33._object = v32;
  v103 = a2;
  v34 = DataFrame.indexOfColumn(_:)(v33);
  value = v34.value;
  LOBYTE(v31) = v34.is_nil;
  v32;
  if (v31)
  {
    BUG();
  }

  countAndFlagsBits = v109._countAndFlagsBits;
  if (value < 0)
  {
    BUG();
  }

  if (value >= *(v109._countAndFlagsBits + 16))
  {
    BUG();
  }

  v85 = v30;
  v37 = v99;
  v82 = (*(v99 + 80) + 32) & ~*(v99 + 80);
  v38 = *(v99 + 16);
  v84 = *(v99 + 72);
  v39 = v92;
  v83 = v38;
  v38(v92, v82 + v109._countAndFlagsBits + v84 * value, v98);
  countAndFlagsBits;
  v40 = AnyColumn.wrappedElementType.getter(countAndFlagsBits);
  v99 = *(v37 + 8);
  (v99)(v39, v98);
  v41 = v107;

  v42 = (v41 + 5);
  v106 = v40;
  do
  {
    v109._countAndFlagsBits = *(v42 - 1);
    v43 = *v42;
    v44 = *v42;

    v45 = DataFrame.columns.getter(v44);
    v46._countAndFlagsBits = v109._countAndFlagsBits;
    v46._object = v43;
    v47 = DataFrame.indexOfColumn(_:)(v46);
    if (v47.is_nil)
    {
      BUG();
    }

    if (v47.value < 0)
    {
      BUG();
    }

    if (v47.value >= *(v45 + 16))
    {
      BUG();
    }

    v48 = v92;
    v109._countAndFlagsBits = v43;
    v49 = v98;
    v83(v92, v82 + v45 + v84 * v47.value, v98);
    v45;
    v50 = AnyColumn.wrappedElementType.getter(v45);
    (v99)(v48, v49);
    v109._countAndFlagsBits;
    if (v50 != v106)
    {
      v107;
      v67 = 0xD000000000000037;
      v68 = "Label column not found";
LABEL_20:
      v69 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v69, 0, 0);
      *v70 = v67;
      *(v70 + 8) = v68 | 0x8000000000000000;
      *(v70 + 16) = 0;
      *(v70 + 32) = 0;
      *(v70 + 48) = 0;
      return swift_willThrow();
    }

    v42 += 2;
    --v85;
  }

  while (v85);
  v51 = v106;
  v107;
  v52 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  v53 = v103;
  if (v51 == v52 || (v54 = v52, v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]), v51 == v55))
  {
    v71 = type metadata accessor for DataFrame(0);
    (*(*(v71 - 8) + 16))(v100, v53, v71);
    return v106;
  }

  if (v51 != &type metadata for Float && v51 != &type metadata for Double)
  {
    v67 = 0xD000000000000040;
    v68 = "pe in the training data";
    goto LABEL_20;
  }

  v109._countAndFlagsBits = v55;
  v56 = v104;
  DataFrame.subscript.getter(v105, a7, &type metadata for Int);
  if (a9)
  {
    v57 = v108;
    specialized MutableCollection<>.sort(by:)(v56);
    v108 = v57;
  }

  v58 = v106;
  if (swift_dynamicCastMetatype(v106, &type metadata for Double))
  {
    v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
    v60 = swift_allocObject(v59, 48, 7);
    v60[2] = 1;
    v60[3] = 2;
    v60[4] = v105;
    v60[5] = a7;
    v61 = type metadata accessor for DataFrame(0);

    DataFrameProtocol.grouped(by:)(v60, v61, &protocol witness table for DataFrame);
    v60;
    v62 = v86;
    (*(v101 + 16))(v86, v104, v102);
    v63 = *(v87 + 52);
    *(v62 + v63) = specialized closure #1 in Sequence<>.uniqued();
    *(v62 + v63 + 8) = 0;
    v64 = v93;
    v65 = v108;
    _s8CreateML20MLActivityClassifierV11DataBatcherV9aggregate6groups8groupIds12featureNames9labelName10windowSize_07TabularE00E5FrameVq0__q1_SaySSGSSSiq_mtK7ElementQy1_RszAL19RowGroupingProtocolR0_STR1_r2_lFZSiSg_SdAL0erV0PALE7grouped2byQrSSd_tFQOyAN_Qo_10Algorithms15UniquedSequenceVyAL6ColumnVySiGASGTt5t6g5(v93, v62, v107, v97, v94);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v62, &demangling cache variable for type metadata for UniquedSequence<Column<Int>, Int?>);
    (*(v95 + 8))(v64, v96);
    result = (*(v101 + 8))(v104, v102);
    if (v65)
    {
      return result;
    }

    return v54;
  }

  else
  {
    if (!swift_dynamicCastMetatype(v58, &type metadata for Float))
    {
      v80 = 0;
      v81 = 0xE000000000000000;
      _StringGuts.grow(_:)(23);
      v81;
      v80 = 0xD000000000000015;
      v81 = "ble], or [Float]" + 0x8000000000000000;
      v78._countAndFlagsBits = _typeName(_:qualified:)(v58, 0);
      object = v78._object;
      String.append(_:)(v78);
      object;
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v80, v81, "CreateML/MLActivityClassifier+Batching.swift", 44, 2, 204, 0);
      BUG();
    }

    v72 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
    v73 = swift_allocObject(v72, 48, 7);
    v73[2] = 1;
    v73[3] = 2;
    v73[4] = v105;
    v73[5] = a7;
    v74 = type metadata accessor for DataFrame(0);

    v75 = v91;
    DataFrameProtocol.grouped(by:)(v73, v74, &protocol witness table for DataFrame);
    v73;
    v76 = v90;
    DataFrame.subscript.getter(v105, a7, &type metadata for String);
    v77 = v108;
    _s8CreateML20MLActivityClassifierV11DataBatcherV9aggregate6groups8groupIds12featureNames9labelName10windowSize_07TabularE00E5FrameVq0__q1_SaySSGSSSiq_mtK7ElementQy1_RszAL19RowGroupingProtocolR0_STR1_r2_lFZSSSg_SfAL0erV0PALE7grouped2byQrSSd_tFQOyAN_Qo_AL6ColumnVySSGTt5t6g5(v75, v76, v107, v97, v94);
    (*(v89 + 8))(v76, v88);
    (*(v95 + 8))(v75, v96);
    result = (*(v101 + 8))(v104, v102);
    if (!v77)
    {
      return v109._countAndFlagsBits;
    }
  }

  return result;
}

uint64_t closure #1 in MLActivityClassifier.DataBatcher.init(input:sessionIdColumn:labelColumn:featureColumns:windowSize:sortSessions:mode:)(uint64_t a1)
{
  *result = *(*a1 + 16);
  *(result + 8) = 0;
  return result;
}

uint64_t _s8CreateML20MLActivityClassifierV11DataBatcherV9aggregate6groups8groupIds12featureNames9labelName10windowSize_07TabularE00E5FrameVq0__q1_SaySSGSSSiq_mtK7ElementQy1_RszAL19RowGroupingProtocolR0_STR1_r2_lFZSiSg_SdAL0erV0PALE7grouped2byQrSSd_tFQOyAN_Qo_10Algorithms15UniquedSequenceVyAL6ColumnVySiGASGTt5t6g5(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v175 = v6;
  v143 = a4;
  v170 = a3;
  v171 = a2;
  v135 = v5;
  v149 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<Double>>);
  v8 = *(*(v149 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v150 = &v131;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v134 = &v131;
  v169 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DiscontiguousColumnSlice<Double>);
  v166 = *(v169 - 8);
  v13 = *(v166 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v151 = &v131;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v168 = &v131;
  v145 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<String>>);
  v18 = *(*(v145 - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v153 = &v131;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v154 = &v131;
  v174 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DiscontiguousColumnSlice<String>);
  v155 = *(v174 - 1);
  v23 = *(v155 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v146 = &v131;
  v26 = alloca(v23);
  v27 = alloca(v23);
  v167 = &v131;
  v144 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame.Slice?) - 8);
  v28 = *(v144 + 64);
  v29 = alloca(v28);
  v30 = alloca(v28);
  v148 = &v131;
  v157 = type metadata accessor for DataFrame.Slice(0);
  v156 = *(v157 - 8);
  v31 = *(v156 + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v164 = &v131;
  v162 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v163 = *(v162 - 8);
  v34 = *(v163 + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v132 = &v131;
  v37 = alloca(v34);
  v38 = alloca(v34);
  v172 = &v131;
  v158 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v147 = *(v158 - 8);
  v39 = *(v147 + 64);
  v40 = alloca(v39);
  v41 = alloca(v39);
  v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of DataFrameProtocol.grouped(by:)>>.0);
  v161[0] = type metadata accessor for DataFrame(255);
  v161[1] = &protocol witness table for DataFrame;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2(v161, &opaque type descriptor for <<opaque return type of DataFrameProtocol.grouped(by:)>>, 1);
  v159 = a1;
  v44 = v42;
  v45 = v170;
  v46 = dispatch thunk of RowGroupingProtocol.count.getter(v44, OpaqueTypeConformance2);

  v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v165 = &v131;
  v133 = a5;
  v173 = v46;
  v136 = v47;
  Column.init(name:capacity:)(v143, a5, v46, v47);
  v152 = *(v45 + 16);
  v48 = v152;
  if (v152)
  {
    v161[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v152, 0);
    v49 = v161[0];
    v50 = (v45 + 40);
    do
    {
      v177 = v48;
      v176 = v50;
      v51 = *(v50 - 1);
      v52 = *v50;

      v53 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
      Column.init(name:capacity:)(v51, v52, v173, v53);
      v161[0] = v49;
      v54 = *(v49 + 2);
      if (*(v49 + 3) >> 1 <= v54)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(*(v49 + 3) >= 2uLL, v54 + 1, 1);
        v49 = v161[0];
      }

      *(v49 + 2) = v54 + 1;
      (*(v163 + 32))(&v49[((*(v163 + 80) + 32) & ~*(v163 + 80)) + *(v163 + 72) * v54], v172, v162);
      v50 = (v176 + 16);
      v48 = (v177 - 1);
    }

    while (v177 != (&dword_0 + 1));
    v173 = v49;
  }

  else
  {
    v173 = _swiftEmptyArrayStorage;
  }

  v55 = alloca(24);
  v56 = alloca(32);
  v133 = v159;
  v57 = v175;
  v58 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF10Algorithms15UniquedSequenceVy11TabularData6ColumnVySiGSiSgG_AI0H5FrameV5SliceVSgs5NeverOTg5(partial apply for specialized closure #2 in static MLActivityClassifier.DataBatcher.aggregate<A, B, C, D>(groups:groupIds:featureNames:labelName:windowSize:_:), &v131);
  v59 = v58;
  v159 = v57;
  v60 = v58[2];
  v61 = v174;
  if (v60)
  {
    v62 = v58 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
    v137 = v170 + 32;
    v63 = 0;
    v64 = v157;
    v65 = v148;
    v171 = v58;
    v139 = v60;
    v140 = v62;
    while (2)
    {
      if (v63 >= *(v59 + 16))
      {
        BUG();
      }

      outlined init with copy of DataFrame.Slice?(&v62[v63 * *(v144 + 72)], v65);
      if (__swift_getEnumTagSinglePayload(v65, 1, v64) == 1)
      {
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v65, &demangling cache variable for type metadata for DataFrame.Slice?);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000017, ("Unknown column type: " + 0x8000000000000000), "CreateML/MLActivityClassifier+Batching.swift", 44, 2, 110, 0);
        BUG();
      }

      v138 = v63 + 1;
      (*(v156 + 32))(v164, v65, v64);
      v66 = v167;
      DataFrame.Slice.subscript.getter(v143, v133, &type metadata for String);
      v172 = *(v155 + 16);
      (v172)(v146, v66, v61);
      v67 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type DiscontiguousColumnSlice<String> and conformance DiscontiguousColumnSlice<A>, &demangling cache variable for type metadata for DiscontiguousColumnSlice<String>, &protocol conformance descriptor for DiscontiguousColumnSlice<A>);
      v68 = v154;
      v175 = v67;
      dispatch thunk of Sequence.makeIterator()(v61, v67);
      v69 = v68;
      v176 = v68 + *(v145 + 36);
      v70 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type DiscontiguousColumnSlice<String> and conformance DiscontiguousColumnSlice<A>, &demangling cache variable for type metadata for DiscontiguousColumnSlice<String>, &protocol conformance descriptor for DiscontiguousColumnSlice<A>);
      while (1)
      {
        dispatch thunk of Collection.endIndex.getter(v61, v70);
        if (*v176 == v161[0])
        {
          break;
        }

        v177 = dispatch thunk of Collection.subscript.read(v161, v176, v61, v70);
        v72 = *(v71 + 8);

        (v177)(v161, 0);
        dispatch thunk of Collection.formIndex(after:)(v176, v174, v70);
        if (!v72)
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v154, &demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<String>>);
          v173;
          v171;
          v124 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v124, 0, 0);
          *v125 = 0xD000000000000038;
          *(v125 + 8) = "Unknown feature type: " + 0x8000000000000000;
          *(v125 + 16) = 0;
          *(v125 + 32) = 0;
          *(v125 + 48) = 0;
          swift_willThrow();
LABEL_55:
          (*(v155 + 8))(v167, v174);
          (*(v156 + 8))(v164, v157);
          return (*(v147 + 8))(v165, v158);
        }

        v72;
        v61 = v174;
        v69 = v154;
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v69, &demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<String>>);
      (v172)(v146, v167, v61);
      v73 = v153;
      dispatch thunk of Sequence.makeIterator()(v61, v175);
      v74 = (v73 + *(v145 + 36));
      v175 = _swiftEmptyArrayStorage;
      v177 = v74;
      while (1)
      {
        dispatch thunk of Collection.endIndex.getter(v174, v70);
        if (*v74 == v161[0])
        {
          break;
        }

        v75 = dispatch thunk of Collection.subscript.read(v161, v74, v174, v70);
        v172 = *v76;
        v176 = v76[1];

        v75(v161, 0);
        v74 = v177;
        dispatch thunk of Collection.formIndex(after:)(v177, v174, v70);
        if (v176)
        {
          v77 = v172;
          v160 = v70;
          v78 = v175;
          if (!swift_isUniquelyReferenced_nonNull_native(v175))
          {
            v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v78[2] + 1, 1, v78);
          }

          v79 = v78[2];
          v80 = v78[3];
          v81 = (v79 + 1);
          if (v80 >> 1 <= v79)
          {
            v175 = (v79 + 1);
            v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v80 >= 2, v79 + 1, 1, v78);
            v81 = v175;
            v82 = v77;
            v78 = v84;
          }

          else
          {
            v82 = v77;
          }

          v78[2] = v81;
          v83 = 2 * v79;
          v78[v83 + 4] = v82;
          v175 = v78;
          v78[v83 + 5] = v176;
          v70 = v160;
          v74 = v177;
        }
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v153, &demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<String>>);
      v85 = v175;
      v161[0] = v175;
      Column.append(_:)(v161, v158);
      v85;
      v61 = v174;
      v142 = DiscontiguousColumnSlice.count.getter(v174);
      if (v152)
      {

        v86 = 0;
        v87 = v166;
        v88 = v168;
        while (1)
        {
          v89 = *(v137 + 16 * v86);
          v90 = *(v137 + 16 * v86 + 8);
          v160 = v86;
          v141 = (v86 + 1);
          swift_bridgeObjectRetain_n(v90, 2);
          DataFrame.Slice.subscript.getter(v89, v90, &type metadata for Double);
          v172 = v90;
          v90;
          v91 = v169;
          v177 = *(v87 + 16);
          (v177)(v151, v88, v169);
          v92 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type DiscontiguousColumnSlice<Double> and conformance DiscontiguousColumnSlice<A>, &demangling cache variable for type metadata for DiscontiguousColumnSlice<Double>, &protocol conformance descriptor for DiscontiguousColumnSlice<A>);
          v93 = v134;
          v94 = v91;
          v175 = v92;
          dispatch thunk of Sequence.makeIterator()(v91, v92);
          v95 = v93;
          v176 = v93 + *(v149 + 36);
          v96 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type DiscontiguousColumnSlice<Double> and conformance DiscontiguousColumnSlice<A>, &demangling cache variable for type metadata for DiscontiguousColumnSlice<Double>, &protocol conformance descriptor for DiscontiguousColumnSlice<A>);
          v97 = v94;
          while (1)
          {
            dispatch thunk of Collection.endIndex.getter(v97, v96);
            if (*v176 == v161[0])
            {
              break;
            }

            v98 = v176;
            v99 = dispatch thunk of Collection.subscript.read(v161, v176, v97, v96);
            v101 = *(v100 + 8);
            v99(v161, 0);
            dispatch thunk of Collection.formIndex(after:)(v98, v169, v96);
            v102 = v101 == 0;
            v97 = v169;
            if (!v102)
            {
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v95, &demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<Double>>);
              v173;
              v171;
              v170;
              v172;
              v126 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
              swift_allocError(&type metadata for MLCreateError, v126, 0, 0);
              v128 = "Failed to look up group" + 0x8000000000000000;
              v129 = 0xD00000000000001ALL;
              goto LABEL_54;
            }
          }

          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v95, &demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<Double>>);
          (v177)(v151, v168, v97);
          v103 = v150;
          dispatch thunk of Sequence.makeIterator()(v97, v175);
          v175 = (v103 + *(v149 + 36));
          v177 = _swiftEmptyArrayStorage;
          v104 = v96;
LABEL_32:
          v105 = v150;
          v106 = v175;
          while (1)
          {
            dispatch thunk of Collection.endIndex.getter(v97, v104);
            if (*v106 == v161[0])
            {
              break;
            }

            v107 = dispatch thunk of Collection.subscript.read(v161, v106, v97, v104);
            v176 = *v108;
            v109 = *(v108 + 8);
            v107(v161, 0);
            dispatch thunk of Collection.formIndex(after:)(v106, v169, v104);
            v102 = v109 == 0;
            v97 = v169;
            if (v102)
            {
              v110 = v177;
              if (!swift_isUniquelyReferenced_nonNull_native(v177))
              {
                v110 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v110[2] + 1, 1, v110);
              }

              v111 = v110[2];
              v177 = v110;
              v112 = v176;
              if (v110[3] >> 1 <= v111)
              {
                v114 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v110[3] >= 2uLL, v111 + 1, 1, v177);
                v112 = v176;
                v177 = v114;
              }

              v113 = v177;
              v177[2] = v111 + 1;
              v113[v111 + 4] = v112;
              v97 = v169;
              goto LABEL_32;
            }
          }

          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v105, &demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<Double>>);
          v115 = v177;
          if (v177[2] != v142)
          {
            break;
          }

          v161[0] = v177;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v173);
          v61 = v174;
          if (isUniquelyReferenced_nonNull_native)
          {
            v117 = v173;
          }

          else
          {
            v117 = specialized _ArrayBuffer._consumeAndCreateNew()(v173);
          }

          if (v160 >= v117[2])
          {
            BUG();
          }

          v173 = v117;
          Column.append(_:)(v161, v162);
          v172;
          v88 = v168;
          v87 = v166;
          (*(v166 + 8))(v168, v97);
          v177;
          v86 = v141;
          if (v141 == v152)
          {
            v170;
            goto LABEL_47;
          }
        }

        v173;
        v171;
        v170;
        v172;
        v115;
        v130 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v130, 0, 0);
        v128 = "Feature values contain nil" + 0x8000000000000000;
        v129 = 0xD000000000000036;
LABEL_54:
        *v127 = v129;
        *(v127 + 8) = v128;
        *(v127 + 16) = 0;
        *(v127 + 32) = 0;
        *(v127 + 48) = 0;
        swift_willThrow();
        (*(v166 + 8))(v168, v97);
        goto LABEL_55;
      }

LABEL_47:
      (*(v155 + 8))(v167, v61);
      v64 = v157;
      (*(v156 + 8))(v164, v157);
      v63 = v138;
      v65 = v148;
      v59 = v171;
      v62 = v140;
      if (v138 != v139)
      {
        continue;
      }

      break;
    }
  }

  v59;
  DataFrame.init()(v59);
  DataFrame.append<A>(column:)(v165, v136);
  v118 = v173;
  v119 = v173[2];
  if (v119)
  {
    v120 = v173 + ((*(v163 + 80) + 32) & ~*(v163 + 80));
    v174 = *(v163 + 16);
    v176 = *(v163 + 72);
    v121 = v132;
    do
    {
      (v174)(v121, v120, v162);
      v122 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
      DataFrame.append<A>(column:)(v121, v122);
      (*(v163 + 8))(v121, v162);
      v120 += v176;
      --v119;
    }

    while (v119);
    v118 = v173;
  }

  v118;
  return (*(v147 + 8))(v165, v158);
}

uint64_t _s8CreateML20MLActivityClassifierV11DataBatcherV9aggregate6groups8groupIds12featureNames9labelName10windowSize_07TabularE00E5FrameVq0__q1_SaySSGSSSiq_mtK7ElementQy1_RszAL19RowGroupingProtocolR0_STR1_r2_lFZSSSg_SfAL0erV0PALE7grouped2byQrSSd_tFQOyAN_Qo_AL6ColumnVySSGTt5t6g5(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v175 = v6;
  v143 = a4;
  v170 = a3;
  v171 = a2;
  v135 = v5;
  v149 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<Float>>);
  v8 = *(*(v149 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v150 = &v131;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v134 = &v131;
  v169 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DiscontiguousColumnSlice<Float>);
  v166 = *(v169 - 8);
  v13 = *(v166 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v151 = &v131;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v168 = &v131;
  v145 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<String>>);
  v18 = *(*(v145 - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v153 = &v131;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v154 = &v131;
  v174 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DiscontiguousColumnSlice<String>);
  v155 = *(v174 - 1);
  v23 = *(v155 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v146 = &v131;
  v26 = alloca(v23);
  v27 = alloca(v23);
  v167 = &v131;
  v144 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame.Slice?) - 8);
  v28 = *(v144 + 64);
  v29 = alloca(v28);
  v30 = alloca(v28);
  v148 = &v131;
  v157 = type metadata accessor for DataFrame.Slice(0);
  v156 = *(v157 - 8);
  v31 = *(v156 + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v164 = &v131;
  v162 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
  v163 = *(v162 - 8);
  v34 = *(v163 + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v132 = &v131;
  v37 = alloca(v34);
  v38 = alloca(v34);
  v172 = &v131;
  v158 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v147 = *(v158 - 8);
  v39 = *(v147 + 64);
  v40 = alloca(v39);
  v41 = alloca(v39);
  v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of DataFrameProtocol.grouped(by:)>>.0);
  v161[0] = type metadata accessor for DataFrame(255);
  v161[1] = &protocol witness table for DataFrame;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2(v161, &opaque type descriptor for <<opaque return type of DataFrameProtocol.grouped(by:)>>, 1);
  v159 = a1;
  v44 = v42;
  v45 = v170;
  v46 = dispatch thunk of RowGroupingProtocol.count.getter(v44, OpaqueTypeConformance2);

  v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v165 = &v131;
  v133 = a5;
  v173 = v46;
  v136 = v47;
  Column.init(name:capacity:)(v143, a5, v46, v47);
  v152 = *(v45 + 16);
  v48 = v152;
  if (v152)
  {
    v161[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v152, 0);
    v49 = v161[0];
    v50 = (v45 + 40);
    do
    {
      v177 = v48;
      v176 = v50;
      v51 = *(v50 - 1);
      v52 = *v50;

      v53 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
      Column.init(name:capacity:)(v51, v52, v173, v53);
      v161[0] = v49;
      v54 = *(v49 + 2);
      if (*(v49 + 3) >> 1 <= v54)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(*(v49 + 3) >= 2uLL, v54 + 1, 1);
        v49 = v161[0];
      }

      *(v49 + 2) = v54 + 1;
      (*(v163 + 32))(&v49[((*(v163 + 80) + 32) & ~*(v163 + 80)) + *(v163 + 72) * v54], v172, v162);
      v50 = (v176 + 16);
      v48 = (v177 - 1);
    }

    while (v177 != (&dword_0 + 1));
    v173 = v49;
  }

  else
  {
    v173 = _swiftEmptyArrayStorage;
  }

  v55 = alloca(24);
  v56 = alloca(32);
  v133 = v159;
  v57 = v175;
  v58 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData6ColumnVySSG_AF0E5FrameV5SliceVSgs5NeverOTg5(partial apply for specialized closure #2 in static MLActivityClassifier.DataBatcher.aggregate<A, B, C, D>(groups:groupIds:featureNames:labelName:windowSize:_:), &v131);
  v59 = v58;
  v159 = v57;
  v60 = v58[2];
  v61 = v174;
  if (v60)
  {
    v62 = v58 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
    v137 = v170 + 32;
    v63 = 0;
    v64 = v157;
    v65 = v148;
    v171 = v58;
    v139 = v60;
    v140 = v62;
    while (2)
    {
      if (v63 >= *(v59 + 16))
      {
        BUG();
      }

      outlined init with copy of DataFrame.Slice?(&v62[v63 * *(v144 + 72)], v65);
      if (__swift_getEnumTagSinglePayload(v65, 1, v64) == 1)
      {
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v65, &demangling cache variable for type metadata for DataFrame.Slice?);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000017, ("Unknown column type: " + 0x8000000000000000), "CreateML/MLActivityClassifier+Batching.swift", 44, 2, 110, 0);
        BUG();
      }

      v138 = v63 + 1;
      (*(v156 + 32))(v164, v65, v64);
      v66 = v167;
      DataFrame.Slice.subscript.getter(v143, v133, &type metadata for String);
      v172 = *(v155 + 16);
      (v172)(v146, v66, v61);
      v67 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type DiscontiguousColumnSlice<String> and conformance DiscontiguousColumnSlice<A>, &demangling cache variable for type metadata for DiscontiguousColumnSlice<String>, &protocol conformance descriptor for DiscontiguousColumnSlice<A>);
      v68 = v154;
      v175 = v67;
      dispatch thunk of Sequence.makeIterator()(v61, v67);
      v69 = v68;
      v176 = v68 + *(v145 + 36);
      v70 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type DiscontiguousColumnSlice<String> and conformance DiscontiguousColumnSlice<A>, &demangling cache variable for type metadata for DiscontiguousColumnSlice<String>, &protocol conformance descriptor for DiscontiguousColumnSlice<A>);
      while (1)
      {
        dispatch thunk of Collection.endIndex.getter(v61, v70);
        if (*v176 == v161[0])
        {
          break;
        }

        v177 = dispatch thunk of Collection.subscript.read(v161, v176, v61, v70);
        v72 = *(v71 + 8);

        (v177)(v161, 0);
        dispatch thunk of Collection.formIndex(after:)(v176, v174, v70);
        if (!v72)
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v154, &demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<String>>);
          v173;
          v171;
          v124 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v124, 0, 0);
          *v125 = 0xD000000000000038;
          *(v125 + 8) = "Unknown feature type: " + 0x8000000000000000;
          *(v125 + 16) = 0;
          *(v125 + 32) = 0;
          *(v125 + 48) = 0;
          swift_willThrow();
LABEL_55:
          (*(v155 + 8))(v167, v174);
          (*(v156 + 8))(v164, v157);
          return (*(v147 + 8))(v165, v158);
        }

        v72;
        v61 = v174;
        v69 = v154;
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v69, &demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<String>>);
      (v172)(v146, v167, v61);
      v73 = v153;
      dispatch thunk of Sequence.makeIterator()(v61, v175);
      v74 = (v73 + *(v145 + 36));
      v175 = _swiftEmptyArrayStorage;
      v177 = v74;
      while (1)
      {
        dispatch thunk of Collection.endIndex.getter(v174, v70);
        if (*v74 == v161[0])
        {
          break;
        }

        v75 = dispatch thunk of Collection.subscript.read(v161, v74, v174, v70);
        v172 = *v76;
        v176 = v76[1];

        v75(v161, 0);
        v74 = v177;
        dispatch thunk of Collection.formIndex(after:)(v177, v174, v70);
        if (v176)
        {
          v77 = v172;
          v160 = v70;
          v78 = v175;
          if (!swift_isUniquelyReferenced_nonNull_native(v175))
          {
            v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v78[2] + 1, 1, v78);
          }

          v79 = v78[2];
          v80 = v78[3];
          v81 = (v79 + 1);
          if (v80 >> 1 <= v79)
          {
            v175 = (v79 + 1);
            v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v80 >= 2, v79 + 1, 1, v78);
            v81 = v175;
            v82 = v77;
            v78 = v84;
          }

          else
          {
            v82 = v77;
          }

          v78[2] = v81;
          v83 = 2 * v79;
          v78[v83 + 4] = v82;
          v175 = v78;
          v78[v83 + 5] = v176;
          v70 = v160;
          v74 = v177;
        }
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v153, &demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<String>>);
      v85 = v175;
      v161[0] = v175;
      Column.append(_:)(v161, v158);
      v85;
      v61 = v174;
      v142 = DiscontiguousColumnSlice.count.getter(v174);
      if (v152)
      {

        v86 = 0;
        v87 = v166;
        v88 = v168;
        while (1)
        {
          v89 = *(v137 + 16 * v86);
          v90 = *(v137 + 16 * v86 + 8);
          v160 = v86;
          v141 = (v86 + 1);
          swift_bridgeObjectRetain_n(v90, 2);
          DataFrame.Slice.subscript.getter(v89, v90, &type metadata for Float);
          v172 = v90;
          v90;
          v91 = v169;
          v177 = *(v87 + 16);
          (v177)(v151, v88, v169);
          v92 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type DiscontiguousColumnSlice<Float> and conformance DiscontiguousColumnSlice<A>, &demangling cache variable for type metadata for DiscontiguousColumnSlice<Float>, &protocol conformance descriptor for DiscontiguousColumnSlice<A>);
          v93 = v134;
          v94 = v91;
          v175 = v92;
          dispatch thunk of Sequence.makeIterator()(v91, v92);
          v95 = v93;
          v176 = v93 + *(v149 + 36);
          v96 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type DiscontiguousColumnSlice<Float> and conformance DiscontiguousColumnSlice<A>, &demangling cache variable for type metadata for DiscontiguousColumnSlice<Float>, &protocol conformance descriptor for DiscontiguousColumnSlice<A>);
          v97 = v94;
          while (1)
          {
            dispatch thunk of Collection.endIndex.getter(v97, v96);
            if (*v176 == v161[0])
            {
              break;
            }

            v98 = v176;
            v99 = dispatch thunk of Collection.subscript.read(v161, v176, v97, v96);
            v101 = *(v100 + 4);
            v99(v161, 0);
            dispatch thunk of Collection.formIndex(after:)(v98, v169, v96);
            v102 = v101 == 0;
            v97 = v169;
            if (!v102)
            {
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v95, &demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<Float>>);
              v173;
              v171;
              v170;
              v172;
              v126 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
              swift_allocError(&type metadata for MLCreateError, v126, 0, 0);
              v128 = "Failed to look up group" + 0x8000000000000000;
              v129 = 0xD00000000000001ALL;
              goto LABEL_54;
            }
          }

          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v95, &demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<Float>>);
          (v177)(v151, v168, v97);
          v103 = v150;
          dispatch thunk of Sequence.makeIterator()(v97, v175);
          v175 = (v103 + *(v149 + 36));
          v177 = _swiftEmptyArrayStorage;
          v104 = v96;
LABEL_32:
          v105 = v150;
          v106 = v175;
          while (1)
          {
            dispatch thunk of Collection.endIndex.getter(v97, v104);
            if (*v106 == v161[0])
            {
              break;
            }

            v107 = dispatch thunk of Collection.subscript.read(v161, v106, v97, v104);
            LODWORD(v176) = *v108;
            v109 = *(v108 + 4);
            v107(v161, 0);
            dispatch thunk of Collection.formIndex(after:)(v106, v169, v104);
            v102 = v109 == 0;
            v97 = v169;
            if (v102)
            {
              v110 = v177;
              if (!swift_isUniquelyReferenced_nonNull_native(v177))
              {
                v110 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v110[2] + 1, 1, v110);
              }

              v111 = v110[2];
              v177 = v110;
              v112 = v176;
              if (v110[3] >> 1 <= v111)
              {
                v114 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v110[3] >= 2uLL, v111 + 1, 1, v177);
                v112 = v176;
                v177 = v114;
              }

              v113 = v177;
              v177[2] = v111 + 1;
              *(v113 + v111 + 8) = v112;
              v97 = v169;
              goto LABEL_32;
            }
          }

          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v105, &demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<Float>>);
          v115 = v177;
          if (v177[2] != v142)
          {
            break;
          }

          v161[0] = v177;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v173);
          v61 = v174;
          if (isUniquelyReferenced_nonNull_native)
          {
            v117 = v173;
          }

          else
          {
            v117 = specialized _ArrayBuffer._consumeAndCreateNew()(v173);
          }

          if (v160 >= v117[2])
          {
            BUG();
          }

          v173 = v117;
          Column.append(_:)(v161, v162);
          v172;
          v88 = v168;
          v87 = v166;
          (*(v166 + 8))(v168, v97);
          v177;
          v86 = v141;
          if (v141 == v152)
          {
            v170;
            goto LABEL_47;
          }
        }

        v173;
        v171;
        v170;
        v172;
        v115;
        v130 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v130, 0, 0);
        v128 = "Feature values contain nil" + 0x8000000000000000;
        v129 = 0xD000000000000036;
LABEL_54:
        *v127 = v129;
        *(v127 + 8) = v128;
        *(v127 + 16) = 0;
        *(v127 + 32) = 0;
        *(v127 + 48) = 0;
        swift_willThrow();
        (*(v166 + 8))(v168, v97);
        goto LABEL_55;
      }

LABEL_47:
      (*(v155 + 8))(v167, v61);
      v64 = v157;
      (*(v156 + 8))(v164, v157);
      v63 = v138;
      v65 = v148;
      v59 = v171;
      v62 = v140;
      if (v138 != v139)
      {
        continue;
      }

      break;
    }
  }

  v59;
  DataFrame.init()(v59);
  DataFrame.append<A>(column:)(v165, v136);
  v118 = v173;
  v119 = v173[2];
  if (v119)
  {
    v120 = v173 + ((*(v163 + 80) + 32) & ~*(v163 + 80));
    v174 = *(v163 + 16);
    v176 = *(v163 + 72);
    v121 = v132;
    do
    {
      (v174)(v121, v120, v162);
      v122 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
      DataFrame.append<A>(column:)(v121, v122);
      (*(v163 + 8))(v121, v162);
      v120 += v176;
      --v119;
    }

    while (v119);
    v118 = v173;
  }

  v118;
  return (*(v147 + 8))(v165, v158);
}

uint64_t specialized closure #2 in static MLActivityClassifier.DataBatcher.aggregate<A, B, C, D>(groups:groupIds:featureNames:labelName:windowSize:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[3] = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any?>);
  v4 = swift_allocObject(v3, 64, 7);
  v4[2] = 1;
  v4[3] = 2;
  v4[7] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for String?);
  v4[4] = a1;
  v4[5] = a2;

  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of DataFrameProtocol.grouped(by:)>>.0);
  v8[0] = type metadata accessor for DataFrame(255);
  v8[1] = &protocol witness table for DataFrame;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2(v8, &opaque type descriptor for <<opaque return type of DataFrameProtocol.grouped(by:)>>, 1);
  dispatch thunk of RowGroupingProtocol.subscript.getter(v4, v5, OpaqueTypeConformance2);
  return v4;
}

uint64_t specialized closure #2 in static MLActivityClassifier.DataBatcher.aggregate<A, B, C, D>(groups:groupIds:featureNames:labelName:windowSize:_:)(uint64_t a1, char a2, uint64_t a3)
{
  v8[3] = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any?>);
  v4 = swift_allocObject(v3, 64, 7);
  *(v4 + 16) = 1;
  *(v4 + 24) = 2;
  *(v4 + 56) = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Int?);
  *(v4 + 32) = a1;
  *(v4 + 40) = a2 & 1;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of DataFrameProtocol.grouped(by:)>>.0);
  v8[0] = type metadata accessor for DataFrame(255);
  v8[1] = &protocol witness table for DataFrame;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2(v8, &opaque type descriptor for <<opaque return type of DataFrameProtocol.grouped(by:)>>, 1);
  dispatch thunk of RowGroupingProtocol.subscript.getter(v4, v5, OpaqueTypeConformance2);
  return v4;
}

BOOL closure #2 in static MLActivityClassifier.DataBatcher.preprocess(_:_:_:_:_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    BUG();
  }

  if (*(a2 + 8))
  {
    BUG();
  }

  return *a1 < *a2;
}

uint64_t MLActivityClassifier.DataBatcher.generateBatch(startingAt:rowCount:seed:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + *(type metadata accessor for MLActivityClassifier.DataBatcher(0) + 32));
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  if (swift_dynamicCastMetatype(v4, v5))
  {
    return _s8CreateML20MLActivityClassifierV11DataBatcherV13generateBatch33_B38BBA08EC64E268F7AB3D1A029502D210startingAt8rowCount4seed_07TabularE00E5FrameVSi_S2ixmtKSjRzlFSd_Tt3g5(a1, a2, a3);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  if (!swift_dynamicCastMetatype(v4, v7))
  {
    _StringGuts.grow(_:)(24);
    0;
    v8._countAndFlagsBits = _typeName(_:qualified:)(v4, 0);
    object = v8._object;
    String.append(_:)(v8);
    object;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000016, ("ityClassifier+Batching.swift" + 0x8000000000000000), "CreateML/MLActivityClassifier+Batching.swift", 44, 2, 334, 0);
    BUG();
  }

  return _s8CreateML20MLActivityClassifierV11DataBatcherV13generateBatch33_B38BBA08EC64E268F7AB3D1A029502D210startingAt8rowCount4seed_07TabularE00E5FrameVSi_S2ixmtKSjRzlFSf_Tt3g5(a1, a2, a3);
}

uint64_t MLActivityClassifier.DataBatcher.generateNextBatch(rowCount:seed:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + *(type metadata accessor for MLActivityClassifier.DataBatcher(0) + 32));
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  if (swift_dynamicCastMetatype(v3, v4))
  {
    return _s8CreateML20MLActivityClassifierV11DataBatcherV17generateNextBatch33_B38BBA08EC64E268F7AB3D1A029502D28rowCount4seed_07TabularE00E5FrameVSi_SixmtKSjRzlFSd_Tt2g5(a1, a2);
  }

  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  if (!swift_dynamicCastMetatype(v3, v6))
  {
    _StringGuts.grow(_:)(24);
    0;
    v7._countAndFlagsBits = _typeName(_:qualified:)(v3, 0);
    object = v7._object;
    String.append(_:)(v7);
    object;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000016, ("ityClassifier+Batching.swift" + 0x8000000000000000), "CreateML/MLActivityClassifier+Batching.swift", 44, 2, 348, 0);
    BUG();
  }

  return _s8CreateML20MLActivityClassifierV11DataBatcherV17generateNextBatch33_B38BBA08EC64E268F7AB3D1A029502D28rowCount4seed_07TabularE00E5FrameVSi_SixmtKSjRzlFSf_Tt2g5(a1, a2);
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2)
{
  v4 = v3[1];
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 >= v4)
  {
    if (v4 < 0)
    {
      BUG();
    }

    if (v4)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1);
    }
  }

  else
  {
    if (v4 < -1)
    {
      BUG();
    }

    v99 = v4;
    v86 = v5;
    v88 = v3;
    if (v4 >= 2)
    {
      v6 = v4 / 2;
      v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Int?);
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)(v6, v7);
      *(v8 + 16) = v6;
      v101 = v8;
      v9 = (v8 + 32);
      goto LABEL_10;
    }

    if (v4 == 1)
    {
      v101 = _swiftEmptyArrayStorage;
      v9 = &_swiftEmptyArrayStorage[4];
LABEL_10:
      v90 = v9;
      v10 = *v3;
      v87 = *v3 + 40;
      v11 = _swiftEmptyArrayStorage;
      v12 = 0;
      v13 = v99;
      v98 = *v3;
      while (1)
      {
        v14 = v12;
        v15 = v12 + 1;
        v100 = v12;
        if (v12 + 1 < v13)
        {
          v103 = v11;
          v16 = 16 * v15;
          v17 = *(v10 + v16 + 8);
          v94 = *(v10 + v16);
          v95 = v17;
          v18 = 16 * v14;
          v19 = *(v10 + 16 * v14 + 8);
          v96 = *(v10 + 16 * v14);
          v97 = v19;
          LOBYTE(v102) = a1(&v94, &v96);
          if (v2)
          {
            goto LABEL_104;
          }

          v15 = v14 + 2;
          if (v14 + 2 < v99)
          {
            v20 = (v87 + 16 * v14);
            while (1)
            {
              v21 = v15;
              v22 = *v20;
              v94 = *(v20 - 1);
              v95 = v22;
              v23 = *(v20 - 16);
              v96 = *(v20 - 3);
              v97 = v23;
              v24 = a1(&v94, &v96);
              if ((v102 ^ v24))
              {
                break;
              }

              ++v15;
              v20 += 16;
              if (v21 + 1 >= v99)
              {
                v15 = v99;
                break;
              }
            }

            v14 = v100;
          }

          if (v102)
          {
            v10 = v98;
            if (v15 < v14)
            {
              BUG();
            }

            v11 = v103;
            if (v15 > v14)
            {
              v25 = 16 * v15 - 16;
              v26 = v15;
              v27 = v14;
              do
              {
                if (v27 != --v26)
                {
                  if (!v10)
                  {
                    BUG();
                  }

                  v28 = (v10 + v18);
                  v29 = *(v10 + v18);
                  v30 = *(v10 + v18 + 8);
                  if (v18 != v25 || v28 >= v10 + v25 + 16)
                  {
                    *v28 = *(v10 + v25);
                  }

                  *(v10 + v25) = v29;
                  *(v10 + v25 + 8) = v30 & 1;
                }

                ++v27;
                v25 -= 16;
                v18 += 16;
              }

              while (v27 < v26);
            }
          }

          else
          {
            v11 = v103;
            v10 = v98;
          }
        }

        if (v15 < v99)
        {
          if (__OFSUB__(v15, v14))
          {
            BUG();
          }

          if (v15 - v14 < v86)
          {
            v31 = (v86 + v14);
            if (__OFADD__(v86, v14))
            {
              BUG();
            }

            if (v31 >= v99)
            {
              v31 = v99;
            }

            if (v31 < v14)
            {
              BUG();
            }

            if (v15 != v31)
            {
              v103 = v11;
              v66 = (v10 + 16 * v15);
              __dsta = v31;
              do
              {
                v67 = v14;
                v102 = v66;
                v68 = v66;
                do
                {
                  v69 = v68[8];
                  v94 = *v68;
                  v95 = v69;
                  v70 = *(v68 - 8);
                  v96 = *(v68 - 2);
                  v97 = v70;
                  v71 = a1(&v94, &v96);
                  if (v2)
                  {
                    goto LABEL_104;
                  }

                  if ((v71 & 1) == 0)
                  {
                    break;
                  }

                  if (!v98)
                  {
                    BUG();
                  }

                  v72 = *v68;
                  v73 = v68[8];
                  *v68 = *(v68 - 1);
                  *(v68 - 2) = v72;
                  *(v68 - 8) = v73;
                  ++v67;
                  v68 -= 16;
                }

                while (v15 != v67);
                ++v15;
                v66 = v102 + 16;
                v14 = v100;
              }

              while (v15 != __dsta);
              v15 = __dsta;
              v11 = v103;
              v10 = v98;
            }
          }
        }

        if (v15 < v14)
        {
          BUG();
        }

        v32 = v11;
        v89 = v15;
        if (swift_isUniquelyReferenced_nonNull_native(v11))
        {
          v11 = v32;
        }

        else
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32);
        }

        v33 = *(v11 + 2);
        v34 = v33 + 1;
        if (*(v11 + 3) >> 1 <= v33)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v11 + 3) >= 2uLL, v33 + 1, 1, v11);
        }

        *(v11 + 2) = v34;
        v35 = 16 * v33;
        *&v11[v35 + 32] = v100;
        *&v11[v35 + 40] = v89;
        if (v33)
        {
          break;
        }

        v34 = 1;
LABEL_80:
        v13 = v99;
        v12 = v89;
        if (v89 >= v99)
        {
          goto LABEL_92;
        }
      }

      v36 = v11 + 32;
      v103 = v11;
      v102 = v11 + 32;
      while (1)
      {
        v37 = v34 - 1;
        if (v34 >= 4)
        {
          v42 = 16 * v34;
          v43 = *&v36[16 * v34 - 56];
          v39 = __OFSUB__(v43, *&v36[16 * v34 - 64]);
          v44 = v43 - *&v36[16 * v34 - 64];
          if (v39)
          {
            BUG();
          }

          v45 = *&v36[v42 - 40];
          v39 = __OFSUB__(v45, *&v36[v42 - 48]);
          v40 = v45 - *&v36[v42 - 48];
          v41 = v39;
          if (v39)
          {
            BUG();
          }

          v46 = *&v11[v42 + 8];
          v39 = __OFSUB__(v46, *&v11[16 * v34]);
          v47 = v46 - *&v11[16 * v34];
          if (v39)
          {
            BUG();
          }

          v39 = __OFADD__(v40, v47);
          v48 = v40 + v47;
          if (v39)
          {
            BUG();
          }

          if (v48 >= v44)
          {
            v57 = *&v36[16 * v37 + 8];
            v39 = __OFSUB__(v57, *&v36[16 * v37]);
            v58 = v57 - *&v36[16 * v37];
            if (v39)
            {
              BUG();
            }

            if (v40 < v58)
            {
LABEL_70:
              v37 = v34 - 2;
              goto LABEL_71;
            }

            goto LABEL_71;
          }
        }

        else
        {
          if (v34 != 3)
          {
            if (v34 < 2)
            {
              BUG();
            }

            v54 = *&v11[16 * v34 + 8];
            v39 = __OFSUB__(v54, *&v11[16 * v34]);
            v50 = v54 - *&v11[16 * v34];
            v51 = v39;
LABEL_64:
            if (v51)
            {
              BUG();
            }

            v55 = *&v36[16 * v37 + 8];
            v39 = __OFSUB__(v55, *&v36[16 * v37]);
            v56 = v55 - *&v36[16 * v37];
            if (v39)
            {
              BUG();
            }

            if (v56 < v50)
            {
              goto LABEL_80;
            }

            goto LABEL_71;
          }

          v38 = *(v11 + 5);
          v39 = __OFSUB__(v38, *(v11 + 4));
          v40 = v38 - *(v11 + 4);
          v41 = v39;
        }

        if (v41)
        {
          BUG();
        }

        v49 = *&v11[16 * v34 + 8];
        v39 = __OFSUB__(v49, *&v11[16 * v34]);
        v50 = v49 - *&v11[16 * v34];
        v51 = v39;
        if (v39)
        {
          BUG();
        }

        v52 = *&v36[16 * v37 + 8];
        v39 = __OFSUB__(v52, *&v36[16 * v37]);
        v53 = v52 - *&v36[16 * v37];
        if (v39)
        {
          BUG();
        }

        if (__OFADD__(v53, v50))
        {
          BUG();
        }

        if (v53 + v50 < v40)
        {
          goto LABEL_64;
        }

        if (v40 < v53)
        {
          goto LABEL_70;
        }

LABEL_71:
        if (v37 - 1 >= v34)
        {
          BUG();
        }

        if (!v10)
        {
          BUG();
        }

        v59 = 16 * (v37 - 1);
        v100 = v37;
        v60 = *&v36[v59];
        v61 = *&v36[16 * v37 + 8];
        __dst = &v36[16 * v37];
        specialized _merge<A>(low:mid:high:buffer:by:)((v10 + 16 * v60), (v10 + 16 * *__dst), v10 + 16 * v61, v90, a1);
        if (v2)
        {
          goto LABEL_104;
        }

        if (v61 < v60)
        {
          BUG();
        }

        v62 = &v102[v59];
        v63 = *(v103 + 2);
        v64 = v100;
        v65 = v100 < v63;
        if (v100 > v63)
        {
          BUG();
        }

        *v62 = v60;
        *(v62 + 1) = v61;
        if (!v65)
        {
          BUG();
        }

        v34 = v63 - 1;
        memmove(__dst, __dst + 16, 16 * (v63 - 1 - v64));
        v36 = v102;
        v11 = v103;
        *(v103 + 2) = v63 - 1;
        v65 = v63 <= 2;
        v10 = v98;
        if (v65)
        {
          goto LABEL_80;
        }
      }
    }

    v11 = _swiftEmptyArrayStorage;
    v90 = &_swiftEmptyArrayStorage[4];
    v34 = _swiftEmptyArrayStorage[2];
    v101 = _swiftEmptyArrayStorage;
LABEL_92:
    if (v34 < 2)
    {
LABEL_105:
      v11;
      v85 = v101;
      v101[2] = 0;
      v85;
    }

    else
    {
      v74 = *v88;
      v98 = *v88;
      while (1)
      {
        if (!v74)
        {
          BUG();
        }

        v75 = 16 * (v34 - 1);
        v76 = *&v11[16 * v34];
        v103 = v11;
        v77 = (v74 + 16 * *&v11[v75 + 32]);
        v102 = *&v11[v75 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((v74 + 16 * v76), v77, v74 + 16 * v102, v90, a1);
        if (v2)
        {
          break;
        }

        if (v102 < v76)
        {
          BUG();
        }

        v100 = v76;
        if (swift_isUniquelyReferenced_nonNull_native(v103))
        {
          v78 = v103;
        }

        else
        {
          v78 = specialized _ArrayBuffer._consumeAndCreateNew()(v103);
        }

        v79 = *(v78 + 2);
        if (v34 - 2 >= v79)
        {
          BUG();
        }

        *&v78[16 * v34] = v100;
        *&v78[16 * v34 + 8] = v102;
        v80 = v79 - v34;
        if (v79 < v34)
        {
          BUG();
        }

        v34 = v79 - 1;
        v81 = &v78[v75 + 32];
        v82 = &v78[v75 + 48];
        v83 = v78;
        memmove(v81, v82, 16 * v80);
        v11 = v83;
        *(v83 + 2) = v79 - 1;
        v74 = v98;
        if (v79 <= 2)
        {
          goto LABEL_105;
        }
      }

LABEL_104:
      v103;
      v84 = v101;
      v101[2] = 0;
      v84;
    }
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *))
{
  if (a3 != a2)
  {
    v6 = a3;
    v7 = a1;
    v15 = *v5;
    v8 = *v5 + 16 * a3;
LABEL_4:
    v16 = v8;
    while (1)
    {
      v9 = *(v8 + 8);
      v17 = *v8;
      v18 = v9;
      v10 = *(v8 - 8);
      v19 = *(v8 - 16);
      v20 = v10;
      v11 = a4(&v17, &v19);
      if (v4)
      {
        break;
      }

      if (v11)
      {
        if (!v15)
        {
          BUG();
        }

        v12 = *v8;
        v13 = *(v8 + 8);
        *v8 = *(v8 - 16);
        *(v8 - 16) = v12;
        *(v8 - 8) = v13;
        ++v7;
        v8 -= 16;
        if (v6 != v7)
        {
          continue;
        }
      }

      ++v6;
      v8 = v16 + 16;
      v7 = a1;
      if (v6 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

char specialized _merge<A>(low:mid:high:buffer:by:)(_BYTE *a1, char *a2, unint64_t a3, char *a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v44 = v5;
  v7 = a2;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  __dst = a1;
  if (v8 < v9)
  {
    v10 = a2 - a1;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 16, a4);
    v11 = a4;
    v12 = &a4[16 * v8];
    if (v10 >= 16 && v7 < a3)
    {
      v13 = v44;
      while (1)
      {
        v14 = v12;
        v15 = v7[8];
        v39 = *v7;
        v40 = v15;
        v16 = v11;
        v17 = v11[8];
        v41 = *v11;
        v42 = v17;
        v18 = a5(&v39, &v41);
        if (v13)
        {
          v32 = v14 - v11;
          if (__dst < v11 || __dst >= &v11[16 * (v32 / 16)] || __dst != v11)
          {
            memmove(__dst, v11, 16 * (v32 / 16));
          }

          return 1;
        }

        v19 = __dst;
        if ((v18 & 1) == 0)
        {
          break;
        }

        v20 = v7;
        v21 = __dst == v7;
        v7 += 16;
        if (!v21)
        {
          goto LABEL_9;
        }

LABEL_10:
        v22 = v19 + 16;
        v12 = v14;
        if (v11 >= v14)
        {
          v44 = 0;
          v7 = v22;
          goto LABEL_36;
        }

        __dst = v22;
        if (v7 >= a3)
        {
          v44 = 0;
          goto LABEL_13;
        }
      }

      v20 = v11;
      v11 += 16;
      if (__dst == v16)
      {
        goto LABEL_10;
      }

LABEL_9:
      *__dst = *v20;
      goto LABEL_10;
    }

LABEL_13:
    v7 = __dst;
LABEL_36:
    v34 = v12 - v11;
    if (v7 < v11 || v7 >= &v11[16 * (v34 / 16)] || v7 != v11)
    {
      memmove(v7, v11, 16 * (v34 / 16));
    }

    return 1;
  }

  v23 = (a3 - a2) / 16;
  v24 = a3 - a2;
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v9, a4);
  v11 = a4;
  v12 = &a4[16 * v23];
  if (v24 < 16 || __dst >= v7)
  {
    goto LABEL_36;
  }

  v25 = v44;
  v26 = a3;
  while (1)
  {
    v27 = *(v12 - 8);
    v39 = *(v12 - 2);
    v40 = v27;
    v28 = *(v7 - 8);
    v41 = *(v7 - 2);
    v42 = v28;
    v29 = a5(&v39, &v41);
    if (v25)
    {
      break;
    }

    v11 = a4;
    v30 = __dst;
    if ((v29 & 1) == 0)
    {
      v31 = v12 - 16;
      v21 = v26 == v12;
      v12 -= 16;
      if (v21)
      {
        goto LABEL_22;
      }

LABEL_21:
      *(v26 - 16) = *v31;
      goto LABEL_22;
    }

    v31 = v7 - 16;
    v21 = v26 == v7;
    v7 -= 16;
    if (!v21)
    {
      goto LABEL_21;
    }

LABEL_22:
    if (v7 > v30)
    {
      v26 -= 16;
      if (v12 > a4)
      {
        continue;
      }
    }

    v44 = 0;
    goto LABEL_36;
  }

  v33 = 16 * ((v12 - a4) / 16);
  if (v7 < a4 || v7 >= &a4[v33] || v7 != a4)
  {
    memmove(v7, a4, v33);
  }

  return 1;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v23 = v2;
  v5 = *v2;
  Hasher.init(_seed:)(*(*v2 + 40));

  String.hash(into:)(v21, a1);
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(v5 + 32));
  v8 = v7 & v6;
  v9 = *(v5 + 8 * ((v7 & v6) >> 6) + 56);
  if (_bittest64(&v9, v8))
  {
    v10 = *(v5 + 48);
    v11 = *(v10 + 16 * v8);
    v22 = v10;
    v12 = *(v10 + 16 * v8 + 8);
    if (a1 ^ v11 | a2 ^ v12)
    {
      v17 = a2;
      v18 = a1;
      while ((_stringCompareWithSmolCheck(_:_:expecting:)(v11, v12, v18, v17, 0) & 1) == 0)
      {
        v8 = v7 & (v8 + 1);
        v19 = *(v5 + 8 * (v8 >> 6) + 56);
        if (!_bittest64(&v19, v8))
        {
          goto LABEL_11;
        }

        v11 = *(v22 + 16 * v8);
        v12 = *(v22 + 16 * v8 + 8);
        if (!(a1 ^ v11 | a2 ^ v12))
        {
          break;
        }

        v18 = a1;
        v17 = a2;
      }
    }

    v5;
    v13 = v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v23);
    v15 = *v13;
    v21[0] = *v13;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeSet.copy()();
      v15 = v21[0];
    }

    v16 = *(*(v15 + 48) + 16 * v8);
    specialized _NativeSet._delete(at:)(v8);
    *v13 = v21[0];
  }

  else
  {
LABEL_11:
    v5;
    return 0;
  }

  return v16;
}

uint64_t specialized _NativeSet._delete(at:)(unint64_t a1)
{
  v2 = *v1;
  v3 = ~(-1 << *(v2 + 32));
  v4 = v3 & (a1 + 1);
  v5 = *(v2 + 8 * (v4 >> 6) + 56);
  if (_bittest64(&v5, v4))
  {
    v26 = a1;
    v25 = v2 + 56;

    v6 = _HashTable.previousHole(before:)(a1, v2 + 56, v3);
    if (((1 << (v3 & (a1 + 1))) & *(v2 + 8 * (v4 >> 6) + 56)) != 0)
    {
      v27 = v2;
      v23 = v3;
      v24 = v3 & (v6 + 1);
      do
      {
        v7 = *(v2 + 40);
        v8 = *(v2 + 48);
        v9 = 16 * v4;
        v10 = *(v8 + 16 * v4);
        v11 = *(v8 + 16 * v4 + 8);
        Hasher.init(_seed:)(v7);

        String.hash(into:)(v22, v10);
        v12 = Hasher._finalize()();
        v11;
        v13 = v23;
        v14 = v23 & v12;
        v15 = v26;
        if (v26 >= v24)
        {
          if (v14 < v24)
          {
            goto LABEL_9;
          }
        }

        else if (v14 >= v24)
        {
          goto LABEL_10;
        }

        if (v26 >= v14)
        {
LABEL_10:
          v2 = v27;
          v16 = *(v27 + 48);
          v17 = (v16 + 16 * v26);
          v15 = v4;
          if (v17 >= v16 + v9 + 16 || v26 != v4)
          {
            *v17 = *(v9 + v16);
            v15 = v4;
          }

          goto LABEL_12;
        }

LABEL_9:
        v2 = v27;
LABEL_12:
        v26 = v15;
        v4 = v13 & (v4 + 1);
        v18 = *(v25 + 8 * (v4 >> 6));
      }

      while (_bittest64(&v18, v4));
    }

    *(v2 + 8 * (v26 >> 6) + 56) &= (-1 << v26) - 1;
  }

  else
  {
    *(v2 + 56 + 8 * (a1 >> 6)) &= (-1 << a1) - 1;
  }

  v19 = *(v2 + 16);
  v20 = __OFSUB__(v19, 1);
  result = v19 - 1;
  if (v20)
  {
    BUG();
  }

  *(v2 + 16) = result;
  ++*(v2 + 36);
  return result;
}

uint64_t specialized closure #1 in Sequence<>.uniqued()(uint64_t *a1)
{
  v2 = v1;
  result = specialized closure #1 in Sequence<>.uniqued()(*a1);
  *v2 = result;
  *(v2 + 8) = v4 & 1;
  return result;
}

{
  v2 = v1;
  result = specialized closure #1 in Sequence<>.uniqued()(*a1);
  *v2 = result;
  v2[1] = v4;
  return result;
}

uint64_t lazy protocol witness table accessor for type Int? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Int? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Int? and conformance <A> A?)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for Int?);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v1);
    lazy protocol witness table cache variable for type Int? and conformance <A> A? = result;
  }

  return result;
}

uint64_t outlined init with take of DataFrame.Slice?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame.Slice?);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t lazy protocol witness table accessor for type MLActivityClassifier.DataBatcher.Mode and conformance MLActivityClassifier.DataBatcher.Mode()
{
  result = lazy protocol witness table cache variable for type MLActivityClassifier.DataBatcher.Mode and conformance MLActivityClassifier.DataBatcher.Mode;
  if (!lazy protocol witness table cache variable for type MLActivityClassifier.DataBatcher.Mode and conformance MLActivityClassifier.DataBatcher.Mode)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLActivityClassifier.DataBatcher.Mode, &type metadata for MLActivityClassifier.DataBatcher.Mode);
    lazy protocol witness table cache variable for type MLActivityClassifier.DataBatcher.Mode and conformance MLActivityClassifier.DataBatcher.Mode = result;
  }

  return result;
}

uint64_t specialized Sequence.first(where:)(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, uint64_t a3)
{
  return specialized Sequence.first(where:)(a1, a2, a3);
}

{
  v4 = a3;
  v13 = a1;
  v5 = a3 & 0xFFFFFFFFFFFFF8;
  if ((a3 & 0x4000000000000001) != 0)
  {
    if (a3)
    {
      v5 = a3;
    }

    v6 = _CocoaArrayWrapper.endIndex.getter(v5);
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFF8));
  }

  if (!v6)
  {
    return 0;
  }

  v14 = v6;

  v7 = 0;
  v15 = v4;
  while (1)
  {
    if ((v4 & 0xC000000000000003) != 0)
    {
      a2 = v4;
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)(v7);
    }

    else
    {
      v8 = *(v4 + 8 * v7 + 32);
    }

    if (__OFADD__(1, v7++))
    {
      BUG();
    }

    v12 = v8;
    v10 = v13(&v12, a2);
    if (v3)
    {
      v15;

      return v8;
    }

    if (v10)
    {
      break;
    }

    v4 = v15;
    if (v7 == v14)
    {
      v15;
      return 0;
    }
  }

  v15;
  return v8;
}

{
  return specialized Sequence.first(where:)(a1, a2, a3);
}

uint64_t specialized Sequence.first(where:)(uint64_t (*a1)(Swift::String *))
{
  v2 = v1;

  v3 = CMLSequence.size.getter();
  if (specialized RandomAccessCollection<>.distance(from:to:)(0, v3))
  {
    v4 = 0;
    while (1)
    {
      CMLSequence.value(at:)(v4);
      if (v2)
      {
        swift_unexpectedError(v2, "CreateML/SequenceType.swift", 27, 1, 76);
        BUG();
      }

      v17 = CMLFeatureValue.stringValue()();
      if (v5)
      {
        v5;

        v16._countAndFlagsBits = 0;
        v16._object = 0xE000000000000000;
        _StringGuts.grow(_:)(37);
        v16._object;
        v16._countAndFlagsBits = 0xD000000000000022;
        v16._object = "able.ColumnNames.swift" + 0x8000000000000000;
        v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        object = v12._object;
        String.append(_:)(v12);
        object;
        v14._countAndFlagsBits = 46;
        v14._object = 0xE100000000000000;
        String.append(_:)(v14);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v16._countAndFlagsBits, v16._object, "CreateML/MLDataTable.ColumnNames.swift", 38, 2, 17, 0);
        BUG();
      }

      v6 = CMLSequence.size.getter();
      v7 = specialized RandomAccessCollection<>.distance(from:to:)(0, v6);

      if (v4 >= v7)
      {
        BUG();
      }

      v16 = v17;
      if (a1(&v16))
      {
        break;
      }

      ++v4;
      SBYTE8(v17);

      v8 = CMLSequence.size.getter();
      v9 = specialized RandomAccessCollection<>.distance(from:to:)(0, v8);

      v10 = v4 == v9;
      v2 = 0;
      if (v10)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:

    return 0;
  }

  return v17;
}

uint64_t specialized LazyMapSequence.Iterator.next()()
{
  v1 = *v0;
  v2 = v0[3];
  v3 = v0[4];
  if (v3)
  {
LABEL_2:
    v4 = v2;
LABEL_3:
    _BitScanForward64(&v5, v3);
    v6 = (v4 << 10) | (16 * v5);
    v7 = *(v1 + 48);
    v8 = *(v1 + 56);
    v9 = *(v7 + v6);
    v10 = *(v7 + v6 + 8);
    v11 = *(v8 + v6);
    v12 = *(v8 + v6 + 8);
    v0[3] = v4;
    v0[4] = v3 & (v3 - 1);
    v21 = v0[5];
    v20[0] = v9;
    v20[1] = v10;
    v20[2] = v11;
    v20[3] = v12;

    v21(v20);
    v12;
    v10;
    return v20[4];
  }

  v14 = v2 + 1;
  if (__OFADD__(1, v2))
  {
    BUG();
  }

  v15 = (v0[2] + 64) >> 6;
  if (v14 >= v15)
  {
    v17 = v0[3];
  }

  else
  {
    v16 = v0[1];
    v3 = *(v16 + 8 * v14);
    if (v3)
    {
      v4 = v2 + 1;
      goto LABEL_3;
    }

    v17 = v2 + 2;
    if (v2 + 2 >= v15)
    {
      v17 = v2 + 1;
    }

    else
    {
      v3 = *(v16 + 8 * v14 + 8);
      if (v3)
      {
        v4 = v2 + 2;
        goto LABEL_3;
      }

      v4 = v2 + 3;
      if (v2 + 3 < v15)
      {
        v3 = *(v16 + 8 * v14 + 16);
        if (v3)
        {
          goto LABEL_3;
        }

        v18 = v2 + 4;
        v17 = v2 + 3;
        if (v2 + 4 < v15)
        {
          v3 = *(v16 + 8 * v14 + 24);
          if (v3)
          {
LABEL_18:
            v4 = v18;
            goto LABEL_3;
          }

          v4 = v2 + 5;
          v17 = v2 + 4;
          if (v2 + 5 < v15)
          {
            v3 = *(v16 + 8 * v14 + 32);
            if (v3)
            {
              goto LABEL_3;
            }

            v18 = v2 + 6;
            v17 = v2 + 5;
            if (v2 + 6 < v15)
            {
              v3 = *(v16 + 8 * v14 + 40);
              if (v3)
              {
                goto LABEL_18;
              }

              v4 = v2 + 7;
              v17 = v2 + 6;
              if (v2 + 7 < v15)
              {
                v3 = *(v16 + 8 * v14 + 48);
                if (v3)
                {
                  goto LABEL_3;
                }

                v17 = v15 - 1;
                v19 = v2 + 8;
                while (v19 < v15)
                {
                  v3 = *(v16 + 8 * v19++);
                  if (v3)
                  {
                    v2 = v19 - 1;
                    goto LABEL_2;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v0[3] = v17;
  v0[4] = 0;
  return 0;
}

{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  if (v6)
  {
    v24 = v1[2];
    v25 = v3;
    v23 = result;
LABEL_3:
    v7 = v5;
    goto LABEL_4;
  }

  v12 = v5 + 1;
  if (__OFADD__(1, v5))
  {
    BUG();
  }

  v13 = (v4 + 64) >> 6;
  if (v12 >= v13)
  {
    v14 = v1[3];
  }

  else
  {
    v6 = *(v3 + 8 * v12);
    if (v6)
    {
      v24 = v1[2];
      v25 = v3;
      v23 = result;
      v7 = v5 + 1;
LABEL_4:
      _BitScanForward64(&v8, v6);
      v9 = v6 & (v6 - 1);
      v10 = v8 | (v7 << 6);
      LOBYTE(v20) = *(*(v2 + 48) + v10);
      outlined init with copy of Any(*(v2 + 56) + 32 * v10, &v20 + 8);
      v11 = v22;
      result = v23;
      v3 = v25;
      v4 = v24;
      goto LABEL_11;
    }

    v14 = v5 + 2;
    if (v5 + 2 >= v13)
    {
      v14 = v5 + 1;
    }

    else
    {
      v6 = *(v3 + 8 * v12 + 8);
      if (v6)
      {
        v24 = v1[2];
        v25 = v3;
        v23 = result;
        v7 = v5 + 2;
        goto LABEL_4;
      }

      v7 = v5 + 3;
      if (v5 + 3 < v13)
      {
        v6 = *(v3 + 8 * v12 + 16);
        if (v6)
        {
LABEL_20:
          v24 = v1[2];
          v25 = v3;
          v23 = result;
          goto LABEL_4;
        }

        v16 = v5 + 4;
        v14 = v5 + 3;
        if (v5 + 4 < v13)
        {
          v6 = *(v3 + 8 * v12 + 24);
          if (v6)
          {
            v24 = v1[2];
            v25 = v3;
            v23 = result;
LABEL_24:
            v7 = v16;
            goto LABEL_4;
          }

          v7 = v5 + 5;
          v14 = v5 + 4;
          if (v5 + 5 < v13)
          {
            v6 = *(v3 + 8 * v12 + 32);
            if (v6)
            {
              goto LABEL_20;
            }

            v16 = v5 + 6;
            v14 = v5 + 5;
            if (v5 + 6 < v13)
            {
              v24 = v1[2];
              v23 = result;
              v25 = v3;
              v6 = *(v3 + 8 * v12 + 40);
              if (v6)
              {
                goto LABEL_24;
              }

              v7 = v5 + 7;
              v14 = v5 + 6;
              result = v23;
              v3 = v25;
              v4 = v24;
              if (v5 + 7 < v13)
              {
                v6 = *(v25 + 8 * v12 + 48);
                if (v6)
                {
                  goto LABEL_4;
                }

                v14 = v13 - 1;
                v17 = v5 + 8;
                while (v17 < v13)
                {
                  v6 = *(v25 + 8 * v17++);
                  if (v6)
                  {
                    v5 = v17 - 1;
                    goto LABEL_3;
                  }
                }

                result = v23;
                v3 = v25;
                v4 = v24;
              }
            }
          }
        }
      }
    }
  }

  v21 = 0;
  v22 = 0;
  v20 = 0;
  v11 = 0;
  v9 = 0;
  v7 = v14;
LABEL_11:
  *v1 = v2;
  v1[1] = v3;
  v1[2] = v4;
  v1[3] = v7;
  v1[4] = v9;
  if (v11)
  {
    v15 = v1[5];
    v18[1] = v21;
    v18[0] = v20;
    v19 = v11;
    v15(v18);
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for (key: MLProgress.Metric, value: Any));
  }

  else
  {
    *(result + 16) = 0;
    *result = 0;
    *(result + 32) = 0;
  }

  return result;
}

{
  v1 = *v0;
  v2 = v0[3];
  v3 = v0[4];
  if (v3)
  {
LABEL_2:
    v4 = v2;
LABEL_3:
    _BitScanForward64(&v5, v3);
    v6 = v5 | (v4 << 6);
    v7 = *(*(v1 + 56) + 8 * v6);
    v6 *= 16;
    v8 = *(v1 + 48);
    v9 = *(v8 + v6);
    v10 = *(v8 + v6 + 8);
    v0[3] = v4;
    v0[4] = v3 & (v3 - 1);
    v19 = v0[5];
    v18[0] = v9;
    v18[1] = v10;
    v18[2] = v7;

    v19(v18);
    v7;
    v10;
    return v18[3];
  }

  v12 = v2 + 1;
  if (__OFADD__(1, v2))
  {
    BUG();
  }

  v13 = (v0[2] + 64) >> 6;
  if (v12 >= v13)
  {
    v15 = v0[3];
  }

  else
  {
    v14 = v0[1];
    v3 = *(v14 + 8 * v12);
    if (v3)
    {
      v4 = v2 + 1;
      goto LABEL_3;
    }

    v15 = v2 + 2;
    if (v2 + 2 >= v13)
    {
      v15 = v2 + 1;
    }

    else
    {
      v3 = *(v14 + 8 * v12 + 8);
      if (v3)
      {
        v4 = v2 + 2;
        goto LABEL_3;
      }

      v4 = v2 + 3;
      if (v2 + 3 < v13)
      {
        v3 = *(v14 + 8 * v12 + 16);
        if (v3)
        {
          goto LABEL_3;
        }

        v16 = v2 + 4;
        v15 = v2 + 3;
        if (v2 + 4 < v13)
        {
          v3 = *(v14 + 8 * v12 + 24);
          if (v3)
          {
LABEL_18:
            v4 = v16;
            goto LABEL_3;
          }

          v4 = v2 + 5;
          v15 = v2 + 4;
          if (v2 + 5 < v13)
          {
            v3 = *(v14 + 8 * v12 + 32);
            if (v3)
            {
              goto LABEL_3;
            }

            v16 = v2 + 6;
            v15 = v2 + 5;
            if (v2 + 6 < v13)
            {
              v3 = *(v14 + 8 * v12 + 40);
              if (v3)
              {
                goto LABEL_18;
              }

              v4 = v2 + 7;
              v15 = v2 + 6;
              if (v2 + 7 < v13)
              {
                v3 = *(v14 + 8 * v12 + 48);
                if (v3)
                {
                  goto LABEL_3;
                }

                v15 = v13 - 1;
                v17 = v2 + 8;
                while (v17 < v13)
                {
                  v3 = *(v14 + 8 * v17++);
                  if (v3)
                  {
                    v2 = v17 - 1;
                    goto LABEL_2;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v0[3] = v15;
  v0[4] = 0;
  return 0;
}

uint64_t specialized Conv2D.getStatesDictionary<A, B>(_:layerName:optimizer:parameterKeyPathLookup:)(_BYTE *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t (*a7)(void, uint64_t), uint64_t (*a8)(_BYTE *, void, void), void (*a9)(void *, uint64_t *), uint64_t (*a10)(uint64_t), uint64_t *a11, uint64_t a12, uint64_t (*a13)(uint64_t *, uint64_t), uint64_t (*a14)(uint64_t *, uint64_t))
{
  v191 = a6;
  v196 = v14;
  v190 = v15;
  v174 = a5;
  v175 = a4;
  v193 = a3;
  v192._countAndFlagsBits = a2;
  v176 = a1;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Parameter?) - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v171 = v166;
  v179 = type metadata accessor for Parameter(0);
  v187 = *(v179 - 8);
  v19 = *(v187 + 8);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v180 = v166;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v184 = v166;
  v188 = type metadata accessor for TensorShape(0);
  v192._object = *(v188 - 8);
  v24 = *(v192._object + 8);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v178 = v166;
  v27 = alloca(v24);
  v28 = alloca(v24);
  *&v194 = v166;
  v29 = alloca(v24);
  v30 = alloca(v24);
  v195 = type metadata accessor for Tensor(0);
  v183 = *(v195 - 8);
  v31 = *(v183 + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v189 = v166;
  v34 = alloca(v31);
  v35 = alloca(v31);
  v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, [Double])>);
  inited = swift_initStackObject(v36, v166);
  *(inited + 16) = 2;
  *(inited + 24) = 4;
  *&v185[0] = a2;
  *(&v185[0] + 1) = v193;

  v38._countAndFlagsBits = 0x7468676965772ELL;
  v38._object = 0xE700000000000000;
  String.append(_:)(v38);
  *(inited + 32) = v185[0];
  Conv2D.weight.getter(0x7468676965772ELL, 0xE700000000000000);
  Tensor.shape.getter(0x7468676965772ELL, 0xE700000000000000, v39);
  v40 = TensorShape.contiguousSize.getter();
  v41 = *(v192._object + 1);
  v173 = v166;
  v177 = v41;
  v41(v166, v188);
  v170 = v166;
  v42 = v196;
  v43 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5(v40, v191, v169);
  v192._object = v42;
  v183 = *(v183 + 8);
  v172 = v166;
  (v183)(v166, v195);
  *(inited + 48) = v43;
  *&v185[0] = v192._countAndFlagsBits;
  *(&v185[0] + 1) = v193;

  v38._countAndFlagsBits = 0x2E7468676965772ELL;
  v38._object = 0xED00006570616873;
  String.append(_:)(v38);
  v181 = inited;
  *(inited + 56) = v185[0];
  v44 = v189;
  Conv2D.weight.getter(0x2E7468676965772ELL, 0xED00006570616873);
  Tensor.shape.getter(0x2E7468676965772ELL, 0xED00006570616873, v45);
  v38._countAndFlagsBits = v44;
  v46 = v188;
  (v183)(v38._countAndFlagsBits, v195);
  v47 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type TensorShape and conformance TensorShape, &type metadata accessor for TensorShape, &protocol conformance descriptor for TensorShape);
  v48 = dispatch thunk of Collection.count.getter(v46, v47);
  v196 = v47;
  if (v48)
  {
    v49 = v48;
    v186 = _swiftEmptyArrayStorage;
    v50 = 0;
    if (v48 > 0)
    {
      v50 = v48;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50, 0);
    v189 = v186;
    dispatch thunk of Collection.startIndex.getter(v46, v196);
    if (v49 < 0)
    {
      BUG();
    }

    v191 = v49;
    v51 = v196;
    v52 = v189;
    v53 = v188;
    do
    {
      v54 = v51;
      v55 = v53;
      v56 = dispatch thunk of Collection.subscript.read(v185, v182, v53, v54);
      v58 = *v57;
      v56(v185, 0);
      v186 = v52;
      v59 = v55;
      v60 = v52[2];
      v61 = v60 + 1;
      if (v52[3] >> 1 <= v60)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v52[3] >= 2uLL, v61, 1);
        v59 = v188;
        v52 = v186;
      }

      v52[2] = v61;
      *&v52[v60 + 4] = v58;
      v62 = v194;
      v63 = v59;
      v51 = v196;
      dispatch thunk of Collection.formIndex(after:)(v182, v59, v196);
      v64 = v191 == (&dword_0 + 1);
      v191 = (v191 - 1);
      v53 = v63;
    }

    while (!v64);
    v65 = v62;
  }

  else
  {
    v52 = _swiftEmptyArrayStorage;
    v65 = v194;
    v53 = v46;
  }

  v177(v65, v53);
  v66 = v181;
  *(v181 + 72) = v52;
  v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  *&v194 = Dictionary.init(dictionaryLiteral:)(v66, &type metadata for String, v67, &protocol witness table for String);
  v68 = v174;
  if (v174 && (v69 = v184, Conv2D.$weight.getter(), v70 = Parameter.id.getter(v66), v71 = *(v187 + 1), (v71)(v69, v179), (v189 = a7(v70, v68)) != 0))
  {
    v184 = v71;
  }

  else
  {
    v72 = v184;
    Conv2D.$weight.getter();
    v73 = a10(0);
    v74 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(a11, a10, a12);
    v75 = v176;
    v76 = Layer.parameterKeyPaths(recursively:)(1, v73, v74);
    v77 = alloca(32);
    v78 = alloca(32);
    v167 = v75;
    v168 = v72;
    object = v192._object;
    v80 = specialized Sequence.first(where:)(a14, v166, v76);
    v192._object = object;
    v76;
    v184 = *(v187 + 1);
    (v184)(v72, v179);
    v189 = v80;
    if (!v80)
    {
      v194;
      *&v185[0] = 0;
      *(&v185[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(58);
      v117._object = "zed in the observation" + 0x8000000000000000;
      v117._countAndFlagsBits = 0xD00000000000001BLL;
      String.append(_:)(v117);
      v117._countAndFlagsBits = v192._countAndFlagsBits;
      v117._object = v193;
      String.append(_:)(v117);
      v117._object = ".optimizer.velocity.shape" + 0x8000000000000000;
      v117._countAndFlagsBits = 0xD00000000000001DLL;
      String.append(_:)(v117);
      v194 = v185[0];
      v118 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v118, 0, 0);
      *v119 = v194;
      *(v119 + 16) = 0;
      *(v119 + 32) = 0;
      *(v119 + 48) = 2;
      return swift_willThrow();
    }
  }

  *&v185[0] = v192._countAndFlagsBits;
  *(&v185[0] + 1) = v193;

  v81._countAndFlagsBits = 0x7468676965772ELL;
  v81._object = 0xE700000000000000;
  String.append(_:)(v81);
  v82 = BYTE8(v185[0]);
  v83 = a8(v189, *&v185[0], *(&v185[0] + 1));
  v82;
  v84 = v194;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v194);
  *&v185[0] = v84;
  v86 = v192._object;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v83, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, v185);
  v192._object = *&v185[0];
  v87 = v171;
  Conv2D.$bias.getter();
  v88 = v179;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v87, 1, v179);
  v191 = v86;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v87, &demangling cache variable for type metadata for Parameter?);
LABEL_34:
    *&v185[0] = v192._countAndFlagsBits;
    *(&v185[0] + 1) = v193;

    v142._countAndFlagsBits = 0x736564697274732ELL;
    v142._object = 0xE800000000000000;
    String.append(_:)(v142);
    v195 = *(&v185[0] + 1);
    v196 = *&v185[0];
    *&v194 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Double>);
    v143 = swift_allocObject(v194, 48, 7);
    *(v143 + 16) = 2;
    *(v143 + 24) = 4;
    *(v143 + 32) = Conv2D.stride.getter();
    Conv2D.stride.getter();
    *(v143 + 40) = v144;
    v145 = v192._object;
    v146 = swift_isUniquelyReferenced_nonNull_native(v192._object);
    *&v185[0] = v145;
    LOBYTE(v145) = v195;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v143, v196, v195, v146);
    v145;
    v196 = *&v185[0];
    countAndFlagsBits = v192._countAndFlagsBits;
    *&v185[0] = v192._countAndFlagsBits;
    *(&v185[0] + 1) = v193;

    v142._countAndFlagsBits = 0x676E69646461702ELL;
    v142._object = 0xE800000000000000;
    String.append(_:)(v142);
    v148 = *(&v185[0] + 1);
    v195 = *&v185[0];
    v149 = swift_allocObject(v194, 48, 7);
    *(v149 + 16) = 2;
    *(v149 + 24) = 4;
    *(v149 + 32) = Conv2D.padding.getter();
    Conv2D.padding.getter();
    *(v149 + 40) = v150;
    v151 = v196;
    v152 = swift_isUniquelyReferenced_nonNull_native(v196);
    *&v185[0] = v151;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v149, v195, v148, v152);
    v148;
    v196 = *&v185[0];
    *&v185[0] = countAndFlagsBits;
    v153 = v193;
    *(&v185[0] + 1) = v193;

    v142._countAndFlagsBits = 0x6F6974616C69642ELL;
    v142._object = 0xEA0000000000736ELL;
    String.append(_:)(v142);
    v154 = *(&v185[0] + 1);
    v195 = *&v185[0];
    v155 = swift_allocObject(v194, 48, 7);
    *(v155 + 16) = 2;
    *(v155 + 24) = 4;
    *(v155 + 32) = Conv2D.dilation.getter();
    Conv2D.dilation.getter();
    *(v155 + 40) = v156;
    v157 = v196;
    v158 = swift_isUniquelyReferenced_nonNull_native(v196);
    *&v185[0] = v157;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v155, v195, v154, v158);
    v154;
    v196 = *&v185[0];
    *&v185[0] = v192._countAndFlagsBits;
    *(&v185[0] + 1) = v153;

    v142._object = 0xEB00000000746E75;
    v142._countAndFlagsBits = 0x6F4370756F72672ELL;
    String.append(_:)(v142);
    v159 = *(&v185[0] + 1);
    v195 = *&v185[0];
    v160 = swift_allocObject(v194, 40, 7);
    *(v160 + 16) = 1;
    *(v160 + 24) = 2;
    *(v160 + 32) = Conv2D.groupCount.getter();
    v161 = v196;
    v162 = swift_isUniquelyReferenced_nonNull_native(v196);
    *&v185[0] = v161;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v160, v195, v159, v162);

    v159;
    return *&v185[0];
  }

  (*(v187 + 4))(v180, v87, v88);
  *&v185[0] = v192._countAndFlagsBits;
  *(&v185[0] + 1) = v193;

  v90._countAndFlagsBits = 0x736169622ELL;
  v90._object = 0xE500000000000000;
  String.append(_:)(v90);
  v181 = *(&v185[0] + 1);
  *&v194 = *&v185[0];
  v91 = v172;
  Parameter.value.getter(0x736169622ELL);
  v92 = v173;
  Tensor.shape.getter(0x736169622ELL, 0xE500000000000000, v93);
  v94 = TensorShape.contiguousSize.getter();
  v177(v92, v188);
  v95 = alloca(24);
  v96 = alloca(32);
  v167 = v91;
  v97 = v191;
  v98 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5(v94, a9, v166);
  v187 = v97;
  (v183)(v91, v195);
  v99 = v192._object;
  v100 = swift_isUniquelyReferenced_nonNull_native(v192._object);
  *&v185[0] = v99;
  LOBYTE(v99) = v181;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v98, v194, v181, v100);
  v99;
  v192._object = *&v185[0];
  *&v185[0] = v192._countAndFlagsBits;
  *(&v185[0] + 1) = v193;

  v90._countAndFlagsBits = 0x68732E736169622ELL;
  v90._object = 0xEB00000000657061;
  String.append(_:)(v90);
  v183 = *(&v185[0] + 1);
  v181 = *&v185[0];
  Parameter.shape.getter();
  v101 = v196;
  v102 = dispatch thunk of Collection.count.getter(v188, v196);
  if (v102)
  {
    v186 = _swiftEmptyArrayStorage;
    v105 = 0;
    if (v102 > 0)
    {
      v105 = v102;
    }

    *&v194 = v102;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v105, 0);
    v191 = v186;
    v106 = v188;
    dispatch thunk of Collection.startIndex.getter(v188, v101);
    v107 = v194;
    if (v194 < 0)
    {
      BUG();
    }

    v108 = v196;
    v109 = v191;
    do
    {
      *&v194 = v107;
      v110 = dispatch thunk of Collection.subscript.read(v185, v182, v106, v108);
      v195 = *v111;
      v110(v185, 0);
      v186 = v109;
      v112 = v108;
      v113 = v109[2];
      v114 = v113 + 1;
      v115 = v109;
      if (v109[3] >> 1 <= v113)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v109[3] >= 2uLL, v114, 1);
        v112 = v196;
        v115 = v186;
      }

      v191 = v115;
      v116 = v195;
      v115[2] = v114;
      *&v115[v113 + 4] = v116;
      v108 = v112;
      dispatch thunk of Collection.formIndex(after:)(v182, v106, v112);
      v107 = v194 - 1;
      v104 = v182;
      v109 = v191;
    }

    while (v194 != 1);
  }

  else
  {
    v109 = _swiftEmptyArrayStorage;
  }

  (v177)(v178, v188, v103, v104);
  v121 = v192._object;
  v122 = swift_isUniquelyReferenced_nonNull_native(v192._object);
  *&v185[0] = v121;
  v123 = v183;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v109, v181, v183, v122);
  v123;
  *&v194 = *&v185[0];
  v124 = v174;
  v125 = v180;
  if (v174)
  {
    v126 = Parameter.id.getter(v123);
    v127 = a7(v126, v124);
    if (v127)
    {
      v128 = v127;
LABEL_33:
      *&v185[0] = v192._countAndFlagsBits;
      *(&v185[0] + 1) = v193;

      v136._countAndFlagsBits = 0x736169622ELL;
      v136._object = 0xE500000000000000;
      String.append(_:)(v136);
      v137 = BYTE8(v185[0]);
      v138 = a8(v128, *&v185[0], *(&v185[0] + 1));
      v137;
      v139 = v194;
      v140 = swift_isUniquelyReferenced_nonNull_native(v194);
      *&v185[0] = v139;
      v141 = v187;
      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v138, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v140, v185);
      v191 = v141;

      v192._object = *&v185[0];
      (v184)(v180, v179);
      goto LABEL_34;
    }
  }

  v129 = a10(0);
  v130 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(a11, a10, a12);
  v131 = v176;
  v132 = Layer.parameterKeyPaths(recursively:)(1, v129, v130);
  v133 = alloca(32);
  v134 = alloca(32);
  v167 = v131;
  v168 = v125;
  v135 = v187;
  v128 = specialized Sequence.first(where:)(a13, v166, v132);
  v132;
  if (v128)
  {
    v187 = v135;
    goto LABEL_33;
  }

  *&v185[0] = 0;
  *(&v185[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v163._object = "zed in the observation" + 0x8000000000000000;
  v163._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v163);
  v163._countAndFlagsBits = v192._countAndFlagsBits;
  v163._object = v193;
  String.append(_:)(v163);
  v163._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v163);
  v194 = v185[0];
  v164 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v164, 0, 0);
  *v165 = v194;
  *(v165 + 16) = 0;
  *(v165 + 32) = 0;
  *(v165 + 48) = 2;
  swift_willThrow();

  return (v184)(v180, v179);
}

uint64_t specialized LSTM.getStatesDictionary<A, B>(_:layerName:optimizer:parameterKeyPathLookup:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t), uint64_t (*a7)(uint64_t, void, void), uint64_t (*a8)(uint64_t), uint64_t *a9, uint64_t a10, uint64_t (*a11)(uint64_t *, uint64_t), uint64_t (*a12)(uint64_t *, uint64_t))
{
  v173 = a6;
  v196 = v12;
  v172 = a4;
  v195 = a3;
  v197._countAndFlagsBits = a2;
  v174 = a1;
  v166 = type metadata accessor for TensorShape(0);
  v167 = *(v166 - 8);
  v15 = *(v167 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v182 = &v154;
  v183 = type metadata accessor for Parameter(0);
  v184 = *(v183 - 8);
  v18 = *(v184 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v197._object = &v154;
  v178 = type metadata accessor for Tensor(0);
  v171 = *(v178 - 8);
  v21 = *(v171 + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v179 = &v154;
  v176 = type metadata accessor for LayerState(0);
  v177 = *(v176 - 8);
  v24 = *(v177 + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v185 = &v154;
  v200 = _swiftEmptyDictionarySingleton;
  v27 = type metadata accessor for LSTM(0);
  v181 = v13;
  v28 = Layer.namedParameterKeyPaths(recursively:)(1, v27, &protocol witness table for LSTM);
  v164 = *(v28 + 16);
  v170 = a5;
  if (v164)
  {
    v169 = v27;
    v165 = v28 + 32;
    v168 = "r key path for layer " + 0x8000000000000000;
    v29 = 0;
    object = v197._object;
    v175 = v28;
    do
    {
      if (v29 >= *(v28 + 16))
      {
        BUG();
      }

      v186 = v29;
      v31 = *(v165 + 24 * v29);
      v32 = *(v165 + 24 * v29 + 8);
      v33 = *(v165 + 24 * v29 + 16);
      swift_retain_n(v33, 2);

      swift_getAtKeyPath(v181, v33);
      v189 = v33;
      v34 = v33;

      v35 = v179;
      Parameter.value.getter(v34);
      v191[0] = v31;
      v36 = v31;
      v37 = object;
      v190 = v32;
      v38 = v32;
      v39 = v170;
      Dictionary<>.updateValue(tensor:forKey:prefix:)(v35, v36, v38, v197._countAndFlagsBits, v195);
      v163 = *(v171 + 8);
      v163(v35, v178);
      if (v39 && (v40 = Parameter.id.getter(v35), (v41 = v173(v40, v39)) != 0))
      {
        v42 = v41;
      }

      else
      {
        v43 = a8(0);
        v44 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(a9, a8, a10);
        v45 = v174;
        v46 = Layer.parameterKeyPaths(recursively:)(1, v43, v44);
        v47 = alloca(32);
        v48 = alloca(32);
        *(&v155 + 1) = v45;
        *&v156 = v37;
        v49 = v196;
        v50 = specialized Sequence.first(where:)(a12, &v154, v46);
        v196 = v49;
        v46;
        if (!v50)
        {
          v175;
          v200;
          v191[1] = 0;
          v191[2] = 0xE000000000000000;
          _StringGuts.grow(_:)(52);
          v141._countAndFlagsBits = 0xD000000000000025;
          String.append(_:)(v141);
          v141._countAndFlagsBits = v197._countAndFlagsBits;
          v141._object = v195;
          String.append(_:)(v141);
          v141._countAndFlagsBits = 0x74656D6172617020;
          v141._object = 0xEB00000000207265;
          String.append(_:)(v141);
          v141._countAndFlagsBits = v191[0];
          v142 = v190;
          v141._object = v190;
          String.append(_:)(v141);
          v201 = *&v191[1];
          v143 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          v144 = swift_allocError(&type metadata for MLCreateError, v143, 0, 0);
          *v145 = v201;
          *(v145 + 16) = 0;
          *(v145 + 32) = 0;
          *(v145 + 48) = 0;
          v142;
          v196 = v144;
          swift_willThrow();

          v146 = v197._object;
          v147 = v183;
          v148 = v184;
          return (*(v148 + 8))(v146, v147);
        }

        v42 = v50;
      }

      ++v186;
      v191[1] = v197._countAndFlagsBits;
      v191[2] = v195;

      v51._countAndFlagsBits = 46;
      v51._object = 0xE100000000000000;
      String.append(_:)(v51);
      v51._countAndFlagsBits = v191[0];
      v51._object = v190;
      String.append(_:)(v51);
      v52 = v191[2];
      v187 = v42;
      v53 = a7(v42, v191[1], v191[2]);
      v52;
      v54 = v200;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v200);
      v201._countAndFlagsBits = v54;
      v198 = v54;
      specialized LazyMapSequence.makeIterator()(v53, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0);
      v194 = v158;
      v193 = v157;
      v192 = v156;
      *&v191[1] = v155;
      v180 = v53;

      while (1)
      {
        v56 = specialized LazyMapSequence.Iterator.next()();
        if (!v57)
        {
          break;
        }

        v199 = v58;
        v188 = v56;
        v202 = v57;
        countAndFlagsBits = v201._countAndFlagsBits;
        v61 = specialized __RawDictionaryStorage.find<A>(_:)(v56, v57);
        v62 = (v60 & 1) == 0;
        v63 = __OFADD__(*(countAndFlagsBits + 16), v62);
        v64 = *(countAndFlagsBits + 16) + v62;
        if (v63)
        {
          BUG();
        }

        v65 = v60;
        if (*(countAndFlagsBits + 24) >= v64)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [Double]>);
            _NativeDictionary.copy()();
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v64, isUniquelyReferenced_nonNull_native);
          v66 = v202;
          v61 = specialized __RawDictionaryStorage.find<A>(_:)(v188, v202);
          LOBYTE(v68) = v68 & 1;
          if ((v65 & 1) != v68)
          {
LABEL_60:
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v66, v68, v67);
            BUG();
          }
        }

        v69 = v198;
        v201._countAndFlagsBits = v198;
        if (v65)
        {
          v70 = *(*(v198 + 56) + 8 * v61);

          v202;
          v199;
          v71 = v69[7];
          *(v71 + 8 * v61);
          *(v71 + 8 * v61) = v70;
          isUniquelyReferenced_nonNull_native = 1;
        }

        else
        {
          *(v198 + 8 * (v61 >> 6) + 64) |= 1 << v61;
          v72 = v69[6];
          v73 = 16 * v61;
          *(v72 + v73) = v188;
          *(v72 + v73 + 8) = v202;
          *(v69[7] + 8 * v61) = v199;
          v74 = v69[2];
          v63 = __OFADD__(1, v74);
          v75 = v74 + 1;
          if (v63)
          {
            BUG();
          }

          v69[2] = v75;
          isUniquelyReferenced_nonNull_native = 1;
        }
      }

      v180;
      outlined consume of [String : [Double]].Iterator._Variant(v191[1]);

      v200 = v201._countAndFlagsBits;
      v76._countAndFlagsBits = 0x6E65727275636572;
      v76._object = 0xEF74686769655774;
      v77 = v190;
      v78 = String.hasSuffix(_:)(v76);
      v77;
      if (v78)
      {
        v79 = v179;
        Parameter.value.getter(v77);
        Tensor.shape.getter(v77, 0xEF74686769655774, v80);
        v163(v79, v178);
        v81 = TensorShape.dimensions.getter();
        v82 = *(v81 + 16);
        v81;
        v83 = 0;
        v84 = 0x3FF0000000000000;
        if (v82 != 3)
        {
          v84 = 0;
        }

        v201._countAndFlagsBits = v84;
        LOBYTE(v83) = v82 == 3;
        v85 = TensorShape.subscript.getter(v83 + 1);
        v191[1] = v197._countAndFlagsBits;
        v86 = v195;
        v191[2] = v195;

        v87._countAndFlagsBits = 0x756F4374696E752ELL;
        v87._object = 0xEA0000000000746ELL;
        String.append(_:)(v87);
        v199 = v191[1];
        v88 = v191[2];
        v202 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Double>);
        v89 = swift_allocObject(v202, 40, 7);
        *(v89 + 16) = 1;
        *(v89 + 24) = 2;
        *(v89 + 32) = v85;
        v90 = v200;
        v91 = swift_isUniquelyReferenced_nonNull_native(v200);
        v191[1] = v90;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, v199, v88, v91);
        v88;
        v199 = v191[1];
        v191[1] = 0;
        v191[2] = 0xE000000000000000;
        _StringGuts.grow(_:)(18);
        LOBYTE(v89) = v191[2];

        v89;
        v191[1] = v197._countAndFlagsBits;
        v191[2] = v86;
        v87._countAndFlagsBits = 0xD000000000000010;
        v87._object = v168;
        String.append(_:)(v87);
        v92 = v191[1];
        v93 = v191[2];
        v94 = swift_allocObject(v202, 40, 7);
        v94[2] = 1;
        v94[3] = 2;
        v94[4] = v201._countAndFlagsBits;
        v95 = v199;
        v96 = swift_isUniquelyReferenced_nonNull_native(v199);
        v191[1] = v95;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v94, v92, v93, v96);

        v93;
        v201._countAndFlagsBits = v191[1];
        v200 = v191[1];
        (*(v167 + 8))(v182, v166);
        object = v197._object;
        (*(v184 + 8))(v197._object, v183);
      }

      else
      {
        object = v197._object;
        (*(v184 + 8))(v197._object, v183);
      }

      v29 = v186;
      v28 = v175;
    }

    while (v186 != v164);
    v175;
    v27 = v169;
  }

  else
  {
    v201._countAndFlagsBits = _swiftEmptyDictionarySingleton;
    v28;
  }

  v97 = Layer.namedLayerStateKeyPaths(recursively:)(1, v27, &protocol witness table for LSTM);
  v187 = v97[2];
  if (!v187)
  {
    v97;
    return v201._countAndFlagsBits;
  }

  v180 = v97 + 4;
  v98 = 0;
  v197._object = v97;
  while (1)
  {
    if (v98 >= v97[2])
    {
      BUG();
    }

    v190 = v98;
    v201._countAndFlagsBits = v180[3 * v98];
    v99 = v180[3 * v98 + 1];
    v100 = v180[3 * v98 + 2];
    swift_retain_n(v100, 2);

    swift_getAtKeyPath(v181, v100);
    v191[0] = v100;
    v101 = v100;

    v102 = v179;
    LayerState.value.getter(v101);
    v202 = v99;
    Dictionary<>.updateValue(tensor:forKey:prefix:)(v102, v201._countAndFlagsBits, v99, v197._countAndFlagsBits, v195);
    (*(v171 + 8))(v102, v178);
    v103 = v170;
    if (v170)
    {
      v104 = LayerState.id.getter();
      v105 = v173(v104, v103);
      if (v105)
      {
        v106 = v105;
        goto LABEL_36;
      }
    }

    v107 = LayerState.id.getter();
    v108 = a8(0);
    v109 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(a9, a8, a10);
    v110 = v174;
    v111 = Layer.parameterKeyPaths(recursively:)(1, v108, v109);
    v112 = alloca(28);
    v113 = alloca(32);
    *(&v155 + 1) = v110;
    LODWORD(v156) = v107;
    v114 = v196;
    v115 = specialized Sequence.first(where:)(a11, &v154, v111);
    v196 = v114;
    v116 = v111;
    v106 = v115;
    v116;
    if (!v106)
    {
      break;
    }

LABEL_36:
    v117 = v202;
    v118 = v201._countAndFlagsBits;
    ++v190;
    v191[1] = v197._countAndFlagsBits;
    v191[2] = v195;

    v119._countAndFlagsBits = 46;
    v119._object = 0xE100000000000000;
    String.append(_:)(v119);
    v119._countAndFlagsBits = v118;
    v119._object = v117;
    String.append(_:)(v119);
    v117;
    LOBYTE(v117) = v191[2];
    v186 = v106;
    v120 = a7(v106, v191[1], v191[2]);
    v117;
    v121 = v200;
    LOBYTE(v202) = swift_isUniquelyReferenced_nonNull_native(v200);
    v201._countAndFlagsBits = v121;
    v198 = v121;
    specialized LazyMapSequence.makeIterator()(v120, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0);
    v194 = v162;
    v193 = v161;
    v192 = v160;
    *&v191[1] = v159;
    v189 = v120;

    while (1)
    {
      v122 = specialized LazyMapSequence.Iterator.next()();
      if (!v123)
      {
        break;
      }

      v125 = v123;
      v199 = v124;
      v188 = v122;
      v126 = v201._countAndFlagsBits;
      v128 = specialized __RawDictionaryStorage.find<A>(_:)(v122, v123);
      v129 = (v127 & 1) == 0;
      v63 = __OFADD__(*(v126 + 16), v129);
      v130 = *(v126 + 16) + v129;
      if (v63)
      {
        BUG();
      }

      v131 = v127;
      if (*(v126 + 24) >= v130)
      {
        if ((v202 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [Double]>);
          _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v130, v202);
        v66 = v125;
        v128 = specialized __RawDictionaryStorage.find<A>(_:)(v188, v125);
        LOBYTE(v68) = v68 & 1;
        if ((v131 & 1) != v68)
        {
          goto LABEL_60;
        }
      }

      v132 = v198;
      v201._countAndFlagsBits = v198;
      if (v131)
      {
        v133 = *(*(v198 + 56) + 8 * v128);

        v125;
        v199;
        v134 = v132[7];
        *(v134 + 8 * v128);
        *(v134 + 8 * v128) = v133;
        LOBYTE(v202) = 1;
      }

      else
      {
        *(v198 + 8 * (v128 >> 6) + 64) |= 1 << v128;
        v135 = v132[6];
        v136 = 16 * v128;
        *(v135 + v136) = v188;
        *(v135 + v136 + 8) = v125;
        *(v132[7] + 8 * v128) = v199;
        v137 = v132[2];
        v63 = __OFADD__(1, v137);
        v138 = v137 + 1;
        if (v63)
        {
          BUG();
        }

        v132[2] = v138;
        LOBYTE(v202) = 1;
      }
    }

    v189;
    outlined consume of [String : [Double]].Iterator._Variant(v191[1]);

    v139 = v201._countAndFlagsBits;
    v200 = v201._countAndFlagsBits;
    (*(v177 + 8))(v185, v176);
    v98 = v190;
    v97 = v197._object;
    if (v190 == v187)
    {
      v197._object;
      return v139;
    }
  }

  v197._object;
  v200;
  v191[1] = 0;
  v191[2] = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  v149._countAndFlagsBits = 0xD000000000000025;
  String.append(_:)(v149);
  v149._countAndFlagsBits = v197._countAndFlagsBits;
  v149._object = v195;
  String.append(_:)(v149);
  v149._countAndFlagsBits = 0x74656D6172617020;
  v149._object = 0xEB00000000207265;
  String.append(_:)(v149);
  v149._countAndFlagsBits = v201._countAndFlagsBits;
  v150 = v202;
  v149._object = v202;
  String.append(_:)(v149);
  v201 = *&v191[1];
  v151 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v152 = swift_allocError(&type metadata for MLCreateError, v151, 0, 0);
  *v153 = v201;
  *(v153 + 16) = 0;
  *(v153 + 32) = 0;
  *(v153 + 48) = 0;
  v150;
  v196 = v152;
  swift_willThrow();

  v146 = v185;
  v147 = v176;
  v148 = v177;
  return (*(v148 + 8))(v146, v147);
}

uint64_t specialized SGD.getParametersDictionary()()
{
  v11 = *(v0 + 12);
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, [Double])>);
  inited = swift_initStackObject(v1, v10);
  *(inited + 16) = 3;
  *(inited + 24) = 6;
  strcpy((inited + 32), "learningRate");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Double>);
  v4 = swift_allocObject(v3, 40, 7);
  *(v4 + 16) = 1;
  *(v4 + 24) = 2;
  *(v4 + 32) = *v0;
  *(inited + 48) = v4;
  *(inited + 56) = 0x6D75746E656D6F6DLL;
  *(inited + 64) = 0xE800000000000000;
  v5 = swift_allocObject(v3, 40, 7);
  *(v5 + 16) = 1;
  v6 = *(v0 + 4);
  *(v5 + 24) = 2;
  *(v5 + 32) = v6;
  *(inited + 72) = v5;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = ".isBidirectional" + 0x8000000000000000;
  v7 = swift_allocObject(v3, 40, 7);
  *(v7 + 16) = 1;
  *(v7 + 24) = 2;
  *(v7 + 32) = v11;
  *(inited + 96) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  return Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, v8, &protocol witness table for String);
}

uint64_t specialized SGD.getStatesDictionary(for:name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a3;
  v71 = a2;
  v73 = a1;
  v65 = type metadata accessor for TensorShape(0);
  v69 = *(v65 - 8);
  v3 = *(v69 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v67 = v58;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v70 = v58;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = type metadata accessor for Tensor(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  v74 = _swiftEmptyArrayStorage;
  v72 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v16, &protocol witness table for String);
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for SGD<MLHandActionClassifier.GraphCNNModel>);
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLHandActionClassifier.GraphCNNModel>);
  OptimizerStateDictionary.subscript.getter(v73, v17);
  if (__swift_getEnumTagSinglePayload(v58, 1, v11) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v58, &demangling cache variable for type metadata for Tensor?);
    return v72;
  }

  else
  {
    v68 = v58;
    v63 = v11;
    v64 = v12;
    (*(v12 + 32))(v58, v58, v11);
    v60 = 0;
    v61 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);
    v19 = v61;
    v20 = v75;

    v19;
    v60 = v71;
    v61 = v20;
    v21._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v21);
    v73 = v60;
    v62 = v61;
    v22 = v70;
    v23 = v68;
    v25 = TensorShape.contiguousSize.getter();
    v26 = v65;
    v69 = *(v69 + 8);
    (v69)(v22, v65);
    v27 = alloca(24);
    v28 = alloca(32);
    v59 = v23;
    v29 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5(v25, closure #1 in Tensor.doubleArray()partial apply, v58);
    v30 = v26;
    v31 = v72;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v72);
    v60 = v31;
    LOBYTE(v31) = v62;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v73, v62, isUniquelyReferenced_nonNull_native);
    v31;
    v72 = v60;
    v60 = 0;
    v61 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);
    LOBYTE(v31) = v61;
    v33 = v75;

    LOBYTE(v21._countAndFlagsBits) = v31;
    v34 = v67;
    v21._countAndFlagsBits;
    v60 = v71;
    v61 = v33;
    v21._object = ".optimizer.velocity" + 0x8000000000000000;
    v21._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v21);
    v70 = v60;
    v73 = v61;
    v35 = v68;
    Tensor.shape.getter(0xD000000000000019, (".optimizer.velocity" + 0x8000000000000000), v36);
    v75 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type TensorShape and conformance TensorShape, &type metadata accessor for TensorShape, &protocol conformance descriptor for TensorShape);
    v37 = dispatch thunk of Collection.count.getter(v26, v75);
    if (v37)
    {
      v38 = v37;
      v66 = _swiftEmptyArrayStorage;
      v39 = 0;
      if (v37 > 0)
      {
        v39 = v37;
      }

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39, 0);
      v74 = v66;
      dispatch thunk of Collection.startIndex.getter(v26, v75);
      if (v38 < 0)
      {
        BUG();
      }

      v71 = v38;
      v40 = v74;
      v41 = v75;
      v42 = v26;
      do
      {
        v43 = v42;
        v44 = dispatch thunk of Collection.subscript.read(&v60, &v59, v42, v41);
        v74 = *v45;
        v44(&v60, 0);
        v66 = v40;
        v46 = v43;
        v47 = v40[2];
        v48 = v40[3];
        v49 = v67;
        if (v48 >> 1 <= v47)
        {
          v54 = v67;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v48 >= 2, v47 + 1, 1);
          v49 = v54;
          v46 = v65;
          v40 = v66;
        }

        v50 = v74;
        v40[2] = v47 + 1;
        *&v40[v47 + 4] = v50;
        v51 = v46;
        v52 = v75;
        dispatch thunk of Collection.formIndex(after:)(&v59, v46, v75);
        v53 = v71-- == 1;
        v42 = v51;
        v34 = v49;
        v41 = v52;
      }

      while (!v53);
      v74 = v40;
      v35 = v68;
      v30 = v42;
    }

    (v69)(v34, v30);
    v55 = v72;
    v56 = swift_isUniquelyReferenced_nonNull_native(v72);
    v60 = v55;
    LOBYTE(v55) = v73;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v74, v70, v73, v56);
    v55;
    v18 = v60;
    (*(v64 + 8))(v35, v63);
  }

  return v18;
}

BOOL specialized closure #1 in Layer.parameterKeyPath(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[2] = a3;
  v10[3] = a2;
  v3 = type metadata accessor for Parameter(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  swift_getAtKeyPath(a2, a1);
  v8 = Parameter.id.getter(a2);
  (*(v4 + 8))(v10, v3);
  return v8 == Parameter.id.getter(v10);
}

BOOL specialized closure #1 in Layer.parameterKeyPath(forParameterWithId:)(uint64_t a1, uint64_t a2, int a3)
{
  v11 = a3;
  v10[2] = a2;
  v3 = type metadata accessor for Parameter(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  swift_getAtKeyPath(a2, a1);
  v8 = Parameter.id.getter(a2);
  (*(v4 + 8))(v10, v3);
  return v8 == v11;
}

uint64_t MLHandActionClassifier.GraphCNN.getCheckpointStatesDictionary()()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for SGD<MLHandActionClassifier.GraphCNNModel>) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = v0 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_optimizer;
  swift_beginAccess(v0 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_optimizer, v9, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4, &v8, &demangling cache variable for type metadata for SGD<MLHandActionClassifier.GraphCNNModel>);
  v5 = MLHandActionClassifier.GraphCNN.trainableSublayers()();
  LOBYTE(v4) = v5;
  v6 = specialized _ModelCheckpoint<>.getCheckpointStatesDictionary<A>(optimizer:trainableSublayers:)(&v8, v5);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v8, &demangling cache variable for type metadata for SGD<MLHandActionClassifier.GraphCNNModel>);
  v4;
  return v6;
}

uint64_t specialized _ModelCheckpoint<>.getCheckpointStatesDictionary<A>(optimizer:trainableSublayers:)(uint64_t a1, uint64_t a2)
{
  v148 = v2;
  v4 = v3;
  v134 = a2;
  v143 = a1;
  v120 = 0;
  v133 = type metadata accessor for LSTM(0);
  v5 = *(v133 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v135 = &v104;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v117 = &v104;
  v129 = type metadata accessor for Dense(0);
  v130 = *(v129 - 8);
  v11 = *(v130 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v131 = &v104;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v116 = &v104;
  v125 = type metadata accessor for Conv2D(0);
  v126 = *(v125 - 8);
  v16 = *(v126 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v127 = &v104;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v115 = &v104;
  v21 = *(*(type metadata accessor for MLActivityClassifier.Model(0) - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v136 = &v104;
  v24 = alloca(v21);
  v25 = alloca(v21);
  v132 = &v104;
  v26 = alloca(v21);
  v27 = alloca(v21);
  v128 = &v104;
  v28 = alloca(v21);
  v29 = alloca(v21);
  v122 = &v104;
  v121 = type metadata accessor for BatchNorm(0);
  v30 = *(v121 - 8);
  v31 = *(v30 + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v124 = &v104;
  v34 = alloca(v31);
  v35 = alloca(v31);
  v113 = &v104;
  v145 = specialized _ModelCheckpoint<>.parameterKeyPathLookup.getter();
  v36 = specialized Adam.getParametersDictionary()();
  v37 = v148;
  v141 = v36;
  v112 = *(v134 + 16);
  v142 = OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model + v4;
  v38 = v134;

  swift_beginAccess(v142, v105, 0, 0);
  v114 = v38 + 32;
  v119 = v5;
  v123 = v30;
  while (1)
  {
    v39 = v112;
    if (v120 == v112)
    {
      v139 = 0;
      v138 = 0;
      v137 = 0;
    }

    else
    {
      if (v120 >= v112)
      {
        BUG();
      }

      v39 = v120 + 1;
      if (__OFADD__(1, v120))
      {
        BUG();
      }

      *&v137 = v120;
      outlined init with copy of TabularRegressionTask(v114 + 40 * v120, &v137 + 8);
    }

    v111[2] = v139;
    v111[1] = v138;
    v111[0] = v137;
    if (!v139)
    {
      v145;
      v134;
      return v141;
    }

    v148 = v37;
    v120 = v39;
    v40 = *&v111[0];
    outlined init with take of TabularRegressionTask((v111 + 8), v106);
    *&v137 = 0x5F726579616CLL;
    *(&v137 + 1) = 0xE600000000000000;
    v144 = v40;
    v41._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    LOBYTE(v40) = v41._object;
    String.append(_:)(v41);
    v40;
    v149 = *(&v137 + 1);
    v146 = v137;
    v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
    v147 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v42, &protocol witness table for String);
    outlined init with copy of TabularRegressionTask(v106, &v137);
    v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Layer);
    v44 = v113;
    v45 = v121;
    if (swift_dynamicCast(v113, &v137, v43, v121, 0))
    {
      v147;
      (*(v123 + 32))(v124, v44, v45);
      v46 = v122;
      outlined init with copy of MLTrainingSessionParameters(v142, v122, type metadata accessor for MLActivityClassifier.Model);
      v47 = v145;

      v48 = v148;
      v49 = specialized BatchNorm.getStatesDictionary<A, B>(_:layerName:optimizer:parameterKeyPathLookup:)(v46, v146, v149, v143, v47, closure #1 in Tensor.doubleArray()partial apply, specialized Dictionary.subscript.getter, specialized Adam.getStatesDictionary(for:name:), closure #1 in Tensor.doubleArray()partial apply, type metadata accessor for MLActivityClassifier.Model, &lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model, partial apply for specialized closure #1 in Layer.parameterKeyPath(for:));
      v148 = v48;
      v50 = v121;
      if (v48)
      {
        v149;
        swift_bridgeObjectRelease_n(v47, 2);
        outlined destroy of MLActivityClassifier.ModelParameters(v122, type metadata accessor for MLActivityClassifier.Model);
        (*(v123 + 8))(v124, v50);
        goto LABEL_44;
      }

      v147 = v49;
      v149;
      v47;
      outlined destroy of MLActivityClassifier.ModelParameters(v122, type metadata accessor for MLActivityClassifier.Model);
      (*(v123 + 8))(v124, v50);
      goto LABEL_11;
    }

    v52 = v115;
    v53 = v125;
    if (swift_dynamicCast(v115, &v137, v43, v125, 0))
    {
      v147;
      (*(v126 + 32))(v127, v52, v53);
      v54 = v128;
      outlined init with copy of MLTrainingSessionParameters(v142, v128, type metadata accessor for MLActivityClassifier.Model);
      v55 = v145;

      v56 = v54;
      v57 = v149;
      v58 = v148;
      v59 = specialized Conv2D.getStatesDictionary<A, B>(_:layerName:optimizer:parameterKeyPathLookup:)(v56, v146, v149, v143, v55, closure #1 in Tensor.doubleArray()partial apply, specialized Dictionary.subscript.getter, specialized Adam.getStatesDictionary(for:name:), closure #1 in Tensor.doubleArray()partial apply, type metadata accessor for MLActivityClassifier.Model, &lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model, closure #1 in Layer.parameterKeyPath(for:)specialized partial apply, closure #1 in Layer.parameterKeyPath(for:)specialized partial apply);
      v51 = v58;
      if (!v58)
      {
        v147 = v59;
        v55;
        v57;
        outlined destroy of MLActivityClassifier.ModelParameters(v128, type metadata accessor for MLActivityClassifier.Model);
        v60 = v127;
        v61 = v125;
        v62 = v126;
LABEL_18:
        (*(v62 + 8))(v60, v61);
        goto LABEL_19;
      }

      swift_bridgeObjectRelease_n(v55, 2);
      v57;
      outlined destroy of MLActivityClassifier.ModelParameters(v128, type metadata accessor for MLActivityClassifier.Model);
      v100 = v127;
      v101 = v125;
      v102 = v126;
      goto LABEL_43;
    }

    v63 = v116;
    v64 = v129;
    if (swift_dynamicCast(v116, &v137, v43, v129, 0))
    {
      v147;
      (*(v130 + 32))(v131, v63, v64);
      v65 = v132;
      outlined init with copy of MLTrainingSessionParameters(v142, v132, type metadata accessor for MLActivityClassifier.Model);
      v66 = v145;

      v67 = v148;
      v68 = specialized Dense.getStatesDictionary<A, B>(_:layerName:optimizer:parameterKeyPathLookup:)(v65, v146, v149, v143, v66, closure #1 in Tensor.doubleArray()partial apply, specialized Dictionary.subscript.getter, specialized Adam.getStatesDictionary(for:name:), closure #1 in Tensor.doubleArray()partial apply, type metadata accessor for MLActivityClassifier.Model, &lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model, closure #1 in Layer.parameterKeyPath(for:)specialized partial apply, closure #1 in Layer.parameterKeyPath(for:)specialized partial apply);
      v51 = v67;
      if (!v67)
      {
        v147 = v68;
        v66;
        v149;
        outlined destroy of MLActivityClassifier.ModelParameters(v132, type metadata accessor for MLActivityClassifier.Model);
        v60 = v131;
        v61 = v129;
        v62 = v130;
        goto LABEL_18;
      }

      swift_bridgeObjectRelease_n(v66, 2);
      v149;
      outlined destroy of MLActivityClassifier.ModelParameters(v132, type metadata accessor for MLActivityClassifier.Model);
      v100 = v131;
      v101 = v129;
      v102 = v130;
LABEL_43:
      (*(v102 + 8))(v100, v101);
      goto LABEL_44;
    }

    v90 = v117;
    v91 = v43;
    v92 = v133;
    if (swift_dynamicCast(v117, &v137, v91, v133, 0))
    {
      break;
    }

    v149;
LABEL_11:
    v51 = v148;
LABEL_19:
    v148 = v51;
    __swift_destroy_boxed_opaque_existential_1Tm(&v137);
    v69 = v141;
    LOBYTE(v149) = swift_isUniquelyReferenced_nonNull_native(v141);
    v144 = v69;
    specialized LazyMapSequence.makeIterator()(v147, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0);
    v140 = v110;
    v139 = v109;
    v138 = v108;
    v137 = v107;

    while (1)
    {
      v70 = specialized LazyMapSequence.Iterator.next()();
      if (!v71)
      {
        break;
      }

      v73 = v71;
      v146 = v72;
      v118 = v70;
      v74 = v141;
      v76 = specialized __RawDictionaryStorage.find<A>(_:)(v70, v71);
      v77 = (v75 & 1) == 0;
      v78 = __OFADD__(*(v74 + 16), v77);
      v79 = *(v74 + 16) + v77;
      if (v78)
      {
        BUG();
      }

      v80 = v75;
      if (*(v74 + 24) >= v79)
      {
        if ((v149 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [Double]>);
          _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v79, v149);
        v76 = specialized __RawDictionaryStorage.find<A>(_:)(v118, v73);
        LOBYTE(v82) = v82 & 1;
        if ((v80 & 1) != v82)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v73, v82, v81);
          BUG();
        }
      }

      v83 = v144;
      v141 = v144;
      if (v80)
      {
        v84 = *(*(v144 + 56) + 8 * v76);

        v73;
        v146;
        v85 = v83[7];
        *(v85 + 8 * v76);
        *(v85 + 8 * v76) = v84;
      }

      else
      {
        *(v144 + 8 * (v76 >> 6) + 64) |= 1 << v76;
        v86 = v83[6];
        v87 = 16 * v76;
        *(v86 + v87) = v118;
        *(v86 + v87 + 8) = v73;
        *(v83[7] + 8 * v76) = v146;
        v88 = v83[2];
        v78 = __OFADD__(1, v88);
        v89 = v88 + 1;
        if (v78)
        {
          BUG();
        }

        v83[2] = v89;
      }

      LOBYTE(v149) = 1;
      v5 = v119;
    }

    v147;
    outlined consume of [String : [Double]].Iterator._Variant(v137);

    __swift_destroy_boxed_opaque_existential_1Tm(v106);
    v37 = v148;
  }

  v147;
  (*(v5 + 32))(v135, v90, v92);
  v93 = v136;
  outlined init with copy of MLTrainingSessionParameters(v142, v136, type metadata accessor for MLActivityClassifier.Model);
  v94 = v145;

  v95 = v93;
  v96 = v149;
  v97 = v148;
  v98 = specialized LSTM.getStatesDictionary<A, B>(_:layerName:optimizer:parameterKeyPathLookup:)(v95, v146, v149, v143, v94, specialized Dictionary.subscript.getter, specialized Adam.getStatesDictionary(for:name:), type metadata accessor for MLActivityClassifier.Model, &lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model, partial apply for specialized closure #1 in Layer.parameterKeyPath(forParameterWithId:), closure #1 in Layer.parameterKeyPath(for:)specialized partial apply);
  v51 = v97;
  if (!v97)
  {
    v147 = v98;
    v94;
    v96;
    outlined destroy of MLActivityClassifier.ModelParameters(v136, type metadata accessor for MLActivityClassifier.Model);
    (*(v5 + 8))(v135, v133);
    goto LABEL_19;
  }

  swift_bridgeObjectRelease_n(v94, 2);
  v96;
  outlined destroy of MLActivityClassifier.ModelParameters(v136, type metadata accessor for MLActivityClassifier.Model);
  (*(v5 + 8))(v135, v133);
LABEL_44:
  __swift_destroy_boxed_opaque_existential_1Tm(v106);
  v99 = v141;
  v141;
  v134;
  __swift_destroy_boxed_opaque_existential_1Tm(&v137);
  return v99;
}

{
  v148 = v2;
  v4 = v3;
  v134 = a2;
  v143 = a1;
  v120 = 0;
  v133 = type metadata accessor for LSTM(0);
  v5 = *(v133 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v135 = &v104;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v117 = &v104;
  v129 = type metadata accessor for Dense(0);
  v130 = *(v129 - 8);
  v11 = *(v130 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v131 = &v104;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v116 = &v104;
  v125 = type metadata accessor for Conv2D(0);
  v126 = *(v125 - 8);
  v16 = *(v126 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v127 = &v104;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v115 = &v104;
  v21 = *(*(type metadata accessor for MLHandActionClassifier.GraphCNNModel(0) - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v136 = &v104;
  v24 = alloca(v21);
  v25 = alloca(v21);
  v132 = &v104;
  v26 = alloca(v21);
  v27 = alloca(v21);
  v128 = &v104;
  v28 = alloca(v21);
  v29 = alloca(v21);
  v122 = &v104;
  v121 = type metadata accessor for BatchNorm(0);
  v30 = *(v121 - 8);
  v31 = *(v30 + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v124 = &v104;
  v34 = alloca(v31);
  v35 = alloca(v31);
  v113 = &v104;
  v145 = specialized _ModelCheckpoint<>.parameterKeyPathLookup.getter();
  v36 = specialized SGD.getParametersDictionary()();
  v37 = v148;
  v141 = v36;
  v112 = *(v134 + 16);
  v142 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model + v4;
  v38 = v134;

  swift_beginAccess(v142, v105, 0, 0);
  v114 = v38 + 32;
  v119 = v5;
  v123 = v30;
  while (1)
  {
    v39 = v112;
    if (v120 == v112)
    {
      v139 = 0;
      v138 = 0;
      v137 = 0;
    }

    else
    {
      if (v120 >= v112)
      {
        BUG();
      }

      v39 = v120 + 1;
      if (__OFADD__(1, v120))
      {
        BUG();
      }

      *&v137 = v120;
      outlined init with copy of TabularRegressionTask(v114 + 40 * v120, &v137 + 8);
    }

    v111[2] = v139;
    v111[1] = v138;
    v111[0] = v137;
    if (!v139)
    {
      v145;
      v134;
      return v141;
    }

    v148 = v37;
    v120 = v39;
    v40 = *&v111[0];
    outlined init with take of TabularRegressionTask((v111 + 8), v106);
    *&v137 = 0x5F726579616CLL;
    *(&v137 + 1) = 0xE600000000000000;
    v144 = v40;
    v41._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    LOBYTE(v40) = v41._object;
    String.append(_:)(v41);
    v40;
    v149 = *(&v137 + 1);
    v146 = v137;
    v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
    v147 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v42, &protocol witness table for String);
    outlined init with copy of TabularRegressionTask(v106, &v137);
    v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Layer);
    v44 = v113;
    v45 = v121;
    if (swift_dynamicCast(v113, &v137, v43, v121, 0))
    {
      v147;
      (*(v123 + 32))(v124, v44, v45);
      v46 = v122;
      outlined init with copy of MLTrainingSessionParameters(v142, v122, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
      v47 = v145;

      v48 = v148;
      v49 = specialized BatchNorm.getStatesDictionary<A, B>(_:layerName:optimizer:parameterKeyPathLookup:)(v46, v146, v149, v143, v47, partial apply for closure #1 in Tensor.doubleArray(), specialized Dictionary.subscript.getter, specialized SGD.getStatesDictionary(for:name:), closure #1 in Tensor.doubleArray()partial apply, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel, closure #1 in Layer.parameterKeyPath(for:)specialized partial apply);
      v148 = v48;
      v50 = v121;
      if (v48)
      {
        v149;
        swift_bridgeObjectRelease_n(v47, 2);
        outlined destroy of MLActivityClassifier.ModelParameters(v122, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
        (*(v123 + 8))(v124, v50);
        goto LABEL_44;
      }

      v147 = v49;
      v149;
      v47;
      outlined destroy of MLActivityClassifier.ModelParameters(v122, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
      (*(v123 + 8))(v124, v50);
      goto LABEL_11;
    }

    v52 = v115;
    v53 = v125;
    if (swift_dynamicCast(v115, &v137, v43, v125, 0))
    {
      v147;
      (*(v126 + 32))(v127, v52, v53);
      v54 = v128;
      outlined init with copy of MLTrainingSessionParameters(v142, v128, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
      v55 = v145;

      v56 = v54;
      v57 = v149;
      v58 = v148;
      v59 = specialized Conv2D.getStatesDictionary<A, B>(_:layerName:optimizer:parameterKeyPathLookup:)(v56, v146, v149, v143, v55, closure #1 in Tensor.doubleArray()partial apply, specialized Dictionary.subscript.getter, specialized SGD.getStatesDictionary(for:name:), closure #1 in Tensor.doubleArray()partial apply, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel, closure #1 in Layer.parameterKeyPath(for:)specialized partial apply, closure #1 in Layer.parameterKeyPath(for:)specialized partial apply);
      v51 = v58;
      if (!v58)
      {
        v147 = v59;
        v55;
        v57;
        outlined destroy of MLActivityClassifier.ModelParameters(v128, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
        v60 = v127;
        v61 = v125;
        v62 = v126;
LABEL_18:
        (*(v62 + 8))(v60, v61);
        goto LABEL_19;
      }

      swift_bridgeObjectRelease_n(v55, 2);
      v57;
      outlined destroy of MLActivityClassifier.ModelParameters(v128, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
      v100 = v127;
      v101 = v125;
      v102 = v126;
      goto LABEL_43;
    }

    v63 = v116;
    v64 = v129;
    if (swift_dynamicCast(v116, &v137, v43, v129, 0))
    {
      v147;
      (*(v130 + 32))(v131, v63, v64);
      v65 = v132;
      outlined init with copy of MLTrainingSessionParameters(v142, v132, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
      v66 = v145;

      v67 = v148;
      v68 = specialized Dense.getStatesDictionary<A, B>(_:layerName:optimizer:parameterKeyPathLookup:)(v65, v146, v149, v143, v66, closure #1 in Tensor.doubleArray()partial apply, specialized Dictionary.subscript.getter, specialized SGD.getStatesDictionary(for:name:), closure #1 in Tensor.doubleArray()partial apply, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel, closure #1 in Layer.parameterKeyPath(for:)specialized partial apply, closure #1 in Layer.parameterKeyPath(for:)specialized partial apply);
      v51 = v67;
      if (!v67)
      {
        v147 = v68;
        v66;
        v149;
        outlined destroy of MLActivityClassifier.ModelParameters(v132, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
        v60 = v131;
        v61 = v129;
        v62 = v130;
        goto LABEL_18;
      }

      swift_bridgeObjectRelease_n(v66, 2);
      v149;
      outlined destroy of MLActivityClassifier.ModelParameters(v132, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
      v100 = v131;
      v101 = v129;
      v102 = v130;
LABEL_43:
      (*(v102 + 8))(v100, v101);
      goto LABEL_44;
    }

    v90 = v117;
    v91 = v43;
    v92 = v133;
    if (swift_dynamicCast(v117, &v137, v91, v133, 0))
    {
      break;
    }

    v149;
LABEL_11:
    v51 = v148;
LABEL_19:
    v148 = v51;
    __swift_destroy_boxed_opaque_existential_1Tm(&v137);
    v69 = v141;
    LOBYTE(v149) = swift_isUniquelyReferenced_nonNull_native(v141);
    v144 = v69;
    specialized LazyMapSequence.makeIterator()(v147, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0);
    v140 = v110;
    v139 = v109;
    v138 = v108;
    v137 = v107;

    while (1)
    {
      v70 = specialized LazyMapSequence.Iterator.next()();
      if (!v71)
      {
        break;
      }

      v73 = v71;
      v146 = v72;
      v118 = v70;
      v74 = v141;
      v76 = specialized __RawDictionaryStorage.find<A>(_:)(v70, v71);
      v77 = (v75 & 1) == 0;
      v78 = __OFADD__(*(v74 + 16), v77);
      v79 = *(v74 + 16) + v77;
      if (v78)
      {
        BUG();
      }

      v80 = v75;
      if (*(v74 + 24) >= v79)
      {
        if ((v149 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [Double]>);
          _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v79, v149);
        v76 = specialized __RawDictionaryStorage.find<A>(_:)(v118, v73);
        LOBYTE(v82) = v82 & 1;
        if ((v80 & 1) != v82)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v73, v82, v81);
          BUG();
        }
      }

      v83 = v144;
      v141 = v144;
      if (v80)
      {
        v84 = *(*(v144 + 56) + 8 * v76);

        v73;
        v146;
        v85 = v83[7];
        *(v85 + 8 * v76);
        *(v85 + 8 * v76) = v84;
      }

      else
      {
        *(v144 + 8 * (v76 >> 6) + 64) |= 1 << v76;
        v86 = v83[6];
        v87 = 16 * v76;
        *(v86 + v87) = v118;
        *(v86 + v87 + 8) = v73;
        *(v83[7] + 8 * v76) = v146;
        v88 = v83[2];
        v78 = __OFADD__(1, v88);
        v89 = v88 + 1;
        if (v78)
        {
          BUG();
        }

        v83[2] = v89;
      }

      LOBYTE(v149) = 1;
      v5 = v119;
    }

    v147;
    outlined consume of [String : [Double]].Iterator._Variant(v137);

    __swift_destroy_boxed_opaque_existential_1Tm(v106);
    v37 = v148;
  }

  v147;
  (*(v5 + 32))(v135, v90, v92);
  v93 = v136;
  outlined init with copy of MLTrainingSessionParameters(v142, v136, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
  v94 = v145;

  v95 = v93;
  v96 = v149;
  v97 = v148;
  v98 = specialized LSTM.getStatesDictionary<A, B>(_:layerName:optimizer:parameterKeyPathLookup:)(v95, v146, v149, v143, v94, specialized Dictionary.subscript.getter, specialized SGD.getStatesDictionary(for:name:), type metadata accessor for MLHandActionClassifier.GraphCNNModel, &lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel, partial apply for specialized closure #1 in Layer.parameterKeyPath(forParameterWithId:), closure #1 in Layer.parameterKeyPath(for:)specialized partial apply);
  v51 = v97;
  if (!v97)
  {
    v147 = v98;
    v94;
    v96;
    outlined destroy of MLActivityClassifier.ModelParameters(v136, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
    (*(v5 + 8))(v135, v133);
    goto LABEL_19;
  }

  swift_bridgeObjectRelease_n(v94, 2);
  v96;
  outlined destroy of MLActivityClassifier.ModelParameters(v136, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
  (*(v5 + 8))(v135, v133);
LABEL_44:
  __swift_destroy_boxed_opaque_existential_1Tm(v106);
  v99 = v141;
  v141;
  v134;
  __swift_destroy_boxed_opaque_existential_1Tm(&v137);
  return v99;
}

void *specialized _ModelCheckpoint<>.parameterKeyPathLookup.getter()
{
  v38 = type metadata accessor for Parameter(0);
  v39 = *(v38 - 8);
  v1 = *(v39 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v40 = &v34;
  v4 = type metadata accessor for MLActivityClassifier.Model(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model + v0;
  swift_beginAccess(v8, v35, 0, 0);
  v37 = v8;
  outlined init with copy of MLTrainingSessionParameters(v8, &v34, type metadata accessor for MLActivityClassifier.Model);
  v9 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
  v10 = Layer.parameterKeyPaths(recursively:)(1, v4, v9);
  v41 = &v34;
  outlined destroy of MLActivityClassifier.ModelParameters(&v34, type metadata accessor for MLActivityClassifier.Model);
  v42 = specialized Array._getCount()(v10, type metadata accessor for MLActivityClassifier.Model, v11, v12);
  v13 = _swiftEmptyDictionarySingleton;
  if (v42)
  {
    v14 = 0;
    v44 = v10;
    do
    {
      if ((v10 & 0xC000000000000003) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)(v14);
      }

      else
      {
        v15 = *(v10 + 8 * v14 + 32);
      }

      v16 = __OFADD__(1, v14);
      v17 = v14 + 1;
      if (v16)
      {
        BUG();
      }

      v36 = v17;
      v18 = v41;
      outlined init with copy of MLTrainingSessionParameters(v37, v41, type metadata accessor for MLActivityClassifier.Model);

      v19 = v15;
      v20 = v40;
      swift_getAtKeyPath(v18, v19);
      v43 = v19;

      outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLActivityClassifier.Model);
      LODWORD(v18) = Parameter.id.getter(v18);
      (*(v39 + 8))(v20, v38);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v13);
      v45 = v13;
      v46 = v18;
      v23 = specialized __RawDictionaryStorage.find<A>(_:)(v18);
      v24 = (v22 & 1) == 0;
      v16 = __OFADD__(v13[2], v24);
      v25 = v13[2] + v24;
      if (v16)
      {
        BUG();
      }

      v26 = v22;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<UInt32, WritableKeyPath<MLActivityClassifier.Model, Parameter>>);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v25))
      {
        v23 = specialized __RawDictionaryStorage.find<A>(_:)(v46);
        LOBYTE(v28) = v28 & 1;
        if ((v26 & 1) != v28)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for UInt32, v25, v28, v27);
          BUG();
        }
      }

      v10 = v44;
      v29 = v43;
      v13 = v45;
      if (v26)
      {
        v30 = v45[7];

        *(v30 + 8 * v23) = v29;
      }

      else
      {
        v45[(v23 >> 6) + 8] |= 1 << v23;
        *(v13[6] + 4 * v23) = v46;
        *(v13[7] + 8 * v23) = v29;
        v31 = v13[2];
        v16 = __OFADD__(1, v31);
        v32 = v31 + 1;
        if (v16)
        {
          BUG();
        }

        v13[2] = v32;
      }

      v14 = v36;
    }

    while (v36 != v42);
  }

  v10;
  return v13;
}

{
  v38 = type metadata accessor for Parameter(0);
  v39 = *(v38 - 8);
  v1 = *(v39 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v40 = &v34;
  v4 = type metadata accessor for MLHandActionClassifier.GraphCNNModel(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model + v0;
  swift_beginAccess(v8, v35, 0, 0);
  v37 = v8;
  outlined init with copy of MLTrainingSessionParameters(v8, &v34, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
  v9 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel);
  v10 = Layer.parameterKeyPaths(recursively:)(1, v4, v9);
  v41 = &v34;
  outlined destroy of MLActivityClassifier.ModelParameters(&v34, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
  v42 = specialized Array._getCount()(v10, type metadata accessor for MLHandActionClassifier.GraphCNNModel, v11, v12);
  v13 = _swiftEmptyDictionarySingleton;
  if (v42)
  {
    v14 = 0;
    v44 = v10;
    do
    {
      if ((v10 & 0xC000000000000003) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)(v14);
      }

      else
      {
        v15 = *(v10 + 8 * v14 + 32);
      }

      v16 = __OFADD__(1, v14);
      v17 = v14 + 1;
      if (v16)
      {
        BUG();
      }

      v36 = v17;
      v18 = v41;
      outlined init with copy of MLTrainingSessionParameters(v37, v41, type metadata accessor for MLHandActionClassifier.GraphCNNModel);

      v19 = v15;
      v20 = v40;
      swift_getAtKeyPath(v18, v19);
      v43 = v19;

      outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
      LODWORD(v18) = Parameter.id.getter(v18);
      (*(v39 + 8))(v20, v38);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v13);
      v45 = v13;
      v46 = v18;
      v23 = specialized __RawDictionaryStorage.find<A>(_:)(v18);
      v24 = (v22 & 1) == 0;
      v16 = __OFADD__(v13[2], v24);
      v25 = v13[2] + v24;
      if (v16)
      {
        BUG();
      }

      v26 = v22;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<UInt32, WritableKeyPath<MLHandActionClassifier.GraphCNNModel, Parameter>>);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v25))
      {
        v23 = specialized __RawDictionaryStorage.find<A>(_:)(v46);
        LOBYTE(v28) = v28 & 1;
        if ((v26 & 1) != v28)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for UInt32, v25, v28, v27);
          BUG();
        }
      }

      v10 = v44;
      v29 = v43;
      v13 = v45;
      if (v26)
      {
        v30 = v45[7];

        *(v30 + 8 * v23) = v29;
      }

      else
      {
        v45[(v23 >> 6) + 8] |= 1 << v23;
        *(v13[6] + 4 * v23) = v46;
        *(v13[7] + 8 * v23) = v29;
        v31 = v13[2];
        v16 = __OFADD__(1, v31);
        v32 = v31 + 1;
        if (v16)
        {
          BUG();
        }

        v13[2] = v32;
      }

      v14 = v36;
    }

    while (v36 != v42);
  }

  v10;
  return v13;
}

uint64_t specialized BatchNorm.getStatesDictionary<A, B>(_:layerName:optimizer:parameterKeyPathLookup:)(_BYTE *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t *), uint64_t (*a7)(void), uint64_t (*a8)(uint64_t, uint64_t, uint64_t), void (*a9)(void *, uint64_t *), uint64_t (*a10)(uint64_t), uint64_t *a11, uint64_t a12, uint64_t (*a13)(uint64_t *, uint64_t))
{
  v171 = a6;
  v211 = v13;
  v207 = v14;
  v172 = a5;
  v180 = a4;
  v203._countAndFlagsBits = a2;
  v183 = a1;
  v203._object = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (name: String, state: LayerState));
  v184 = *(v203._object - 1);
  v16 = *(v184 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v181 = v162;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v195 = v162;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v192 = v162;
  v182 = v162;
  v185 = 0;
  v186 = type metadata accessor for TensorShape(0);
  v173 = *(v186 - 8);
  v23 = *(v173 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v188 = v162;
  v26 = alloca(v23);
  v27 = alloca(v23);
  v174 = v162;
  v187 = type metadata accessor for Tensor(0);
  v175 = *(v187 - 8);
  v28 = *(v175 + 64);
  v29 = alloca(v28);
  v30 = alloca(v28);
  v189 = v162;
  v31 = alloca(v28);
  v32 = alloca(v28);
  v176 = v162;
  v210 = type metadata accessor for Parameter(0);
  v196 = *(v210 - 8);
  v33 = *(v196 + 64);
  v34 = alloca(v33);
  v35 = alloca(v33);
  v208 = v162;
  v204 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (name: String, parameter: Parameter));
  v212._countAndFlagsBits = *(v204 - 8);
  v36 = *(v212._countAndFlagsBits + 64);
  v37 = alloca(v36);
  v38 = alloca(v36);
  v177 = v162;
  v39 = alloca(v36);
  v40 = alloca(v36);
  v205 = v162;
  v41 = alloca(v36);
  v42 = alloca(v36);
  v190 = v162;
  v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, [Double])>);
  inited = swift_initStackObject(v43, v162);
  *(inited + 16) = 1;
  *(inited + 24) = 2;
  *&v197 = a2;
  v202 = a3;
  *(&v197 + 1) = a3;

  v45._countAndFlagsBits = 0x75746E656D6F6D2ELL;
  v45._object = 0xE90000000000006DLL;
  String.append(_:)(v45);
  *(inited + 32) = v197;
  v213 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Double>);
  v46 = swift_allocObject(v213, 40, 7);
  *(v46 + 16) = 1;
  *(v46 + 24) = 2;
  *(v46 + 32) = BatchNorm.momentum.getter();
  *(inited + 48) = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  v48 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, v47, &protocol witness table for String);
  *&v197 = v203._countAndFlagsBits;
  *(&v197 + 1) = v202;

  v45._countAndFlagsBits = 0x6E6F6C697370652ELL;
  v45._object = 0xE800000000000000;
  String.append(_:)(v45);
  v49 = *(&v197 + 1);
  v214._countAndFlagsBits = v197;
  v50 = swift_allocObject(v213, 40, 7);
  *(v50 + 16) = 1;
  *(v50 + 24) = 2;
  *(v50 + 32) = BatchNorm.epsilon.getter();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v48);
  *&v197 = v48;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v50, v214._countAndFlagsBits, v49, isUniquelyReferenced_nonNull_native);
  v49;
  v213 = v197;
  v52 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(name: String, parameter: Parameter)>);
  v191 = *(v212._countAndFlagsBits + 72);
  v53 = *(v212._countAndFlagsBits + 80);
  v54 = (v53 + 32) & ~*(v212._countAndFlagsBits + 80);
  v45._object = (v54 + 2 * v191);
  v45._countAndFlagsBits = v52;
  v55 = swift_allocObject(v52, v45._object, v53 | 7);
  *(v55 + 16) = 2;
  *(v55 + 24) = 4;
  v56 = v55 + v54;
  v57 = v204;
  *(v55 + v54) = 0x74657366666FLL;
  v193 = v55;
  *(v55 + v54 + 8) = 0xE600000000000000;
  v58 = v196;
  BatchNorm.$offset.getter();
  v59 = v191;
  *(v191 + v56) = 0x656C616373;
  v178 = v56;
  *(v59 + v56 + 8) = 0xE500000000000000;
  BatchNorm.$scale.getter(v45._countAndFlagsBits, v45._object);
  v179 = v190 + *(v57 + 48);
  v60 = 0;
  do
  {
    v61 = v190;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v178 + v191 * v60, v190, &demangling cache variable for type metadata for (name: String, parameter: Parameter));
    v214._countAndFlagsBits = *v61;
    v62 = v61[1];
    v63 = v205;
    v64 = v205 + *(v204 + 48);
    *v205 = v214._countAndFlagsBits;
    *(v63 + 8) = v62;
    v206 = *(v58 + 32);
    v206(v64, v179, v210);
    *&v197 = v203._countAndFlagsBits;
    *(&v197 + 1) = v202;

    v65._countAndFlagsBits = 46;
    v65._object = 0xE100000000000000;
    String.append(_:)(v65);
    v65._countAndFlagsBits = v214._countAndFlagsBits;
    v209 = v62;
    v65._object = v62;
    String.append(_:)(v65);
    v212._countAndFlagsBits = v197;
    v65._countAndFlagsBits = v63;
    v66 = *(&v197 + 1);
    v194 = *(&v197 + 1);
    v67 = v177;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v65._countAndFlagsBits, v177, &demangling cache variable for type metadata for (name: String, parameter: Parameter));
    *(v67 + 8);
    v65._object = (v67 + *(v204 + 48));
    v65._countAndFlagsBits = v208;
    v206(v208, v65._object, v210);
    LODWORD(v206) = Parameter.id.getter(v65._countAndFlagsBits);

    v68 = v176;
    Parameter.value.getter(v66);
    v69 = v174;
    Tensor.shape.getter(v66, v65._object, v70);
    v71 = TensorShape.contiguousSize.getter();
    v169 = *(v173 + 8);
    v169(v69, v186);
    v72 = alloca(24);
    v73 = alloca(32);
    v163 = v68;
    v74 = v211;
    v75 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5(v71, v171, v162);
    v211 = v74;
    v65._countAndFlagsBits = v68;
    v76 = v194;
    v170 = *(v175 + 8);
    v170(v65._countAndFlagsBits, v187);
    v77 = v213;
    v78 = swift_isUniquelyReferenced_nonNull_native(v213);
    *&v197 = v77;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v75, v212._countAndFlagsBits, v76, v78);
    v76;
    v213 = v197;
    if (v172 && (v79 = a7(v206)) != 0)
    {
      v80 = v79;
    }

    else
    {
      v81 = a10(0);
      v82 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(a11, a10, a12);
      v83 = v183;
      v84 = Layer.parameterKeyPaths(recursively:)(1, v81, v82);
      v85 = alloca(32);
      v86 = alloca(32);
      v163 = v83;
      v164 = v208;
      v87 = v211;
      v88 = v84;
      v80 = specialized Sequence.first(where:)(a13, v162, v84);
      v88;
      if (!v80)
      {

        v193;
        v76;
        *&v197 = 0;
        *(&v197 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(54);
        v158._object = "zed in the observation" + 0x8000000000000000;
        v158._countAndFlagsBits = 0xD00000000000001BLL;
        String.append(_:)(v158);
        v158._countAndFlagsBits = v203._countAndFlagsBits;
        v158._object = v202;
        String.append(_:)(v158);
        v158._countAndFlagsBits = 0x697373696D202C60;
        v158._object = 0xEC0000006020676ELL;
        String.append(_:)(v158);
        v158._countAndFlagsBits = v214._countAndFlagsBits;
        v159 = v209;
        v158._object = v209;
        String.append(_:)(v158);
        v159;
        v158._countAndFlagsBits = 0x61702079656B2060;
        v158._object = 0xEB000000002E6874;
        String.append(_:)(v158);
        v212 = v197;
        v160 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v160, 0, 0);
        *v161 = v212;
        *(v161 + 16) = 0;
        *(v161 + 32) = 0;
        *(v161 + 48) = 2;
        swift_willThrow();
        (*(v196 + 8))(v208, v210);
        return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v205, &demangling cache variable for type metadata for (name: String, parameter: Parameter));
      }

      v211 = v87;
    }

    v209;
    v206 = v80;
    v89 = a8(v80, v212._countAndFlagsBits, v76);
    v76;
    v90 = v213;
    v91 = swift_isUniquelyReferenced_nonNull_native(v213);
    v201 = v90;
    specialized LazyMapSequence.makeIterator()(v89, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0);
    v200 = v168;
    v199 = v167;
    v198 = v166;
    v197 = v165;
    v194 = v89;

    while (1)
    {
      v92 = specialized LazyMapSequence.Iterator.next()();
      if (!v93)
      {
        break;
      }

      v214._countAndFlagsBits = v94;
      v209 = v92;
      v212._countAndFlagsBits = v93;
      v95 = v213;
      v97 = specialized __RawDictionaryStorage.find<A>(_:)(v92, v93);
      v98 = (v96 & 1) == 0;
      v99 = __OFADD__(*(v95 + 16), v98);
      v100 = *(v95 + 16) + v98;
      if (v99)
      {
        BUG();
      }

      v101 = v96;
      if (*(v95 + 24) >= v100)
      {
        if ((v91 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [Double]>);
          _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v100, v91);
        countAndFlagsBits = v212._countAndFlagsBits;
        v97 = specialized __RawDictionaryStorage.find<A>(_:)(v209, v212._countAndFlagsBits);
        LOBYTE(v104) = v104 & 1;
        if ((v101 & 1) != v104)
        {
LABEL_42:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, countAndFlagsBits, v104, v103);
          BUG();
        }
      }

      v105 = v201;
      v213 = v201;
      if (v101)
      {
        v106 = *(*(v201 + 56) + 8 * v97);

        v212._countAndFlagsBits;
        v214._countAndFlagsBits;
        v107 = v105[7];
        *(v107 + 8 * v97);
        *(v107 + 8 * v97) = v106;
        v91 = 1;
      }

      else
      {
        *(v201 + 8 * (v97 >> 6) + 64) |= 1 << v97;
        v108 = v105[6];
        v109 = 16 * v97;
        *(v108 + v109) = v209;
        *(v108 + v109 + 8) = v212._countAndFlagsBits;
        *(v105[7] + 8 * v97) = v214._countAndFlagsBits;
        v110 = v105[2];
        v99 = __OFADD__(1, v110);
        v111 = v110 + 1;
        if (v99)
        {
          BUG();
        }

        v105[2] = v111;
        v91 = 1;
      }
    }

    v194;
    outlined consume of [String : [Double]].Iterator._Variant(v197);

    v58 = v196;
    (*(v196 + 8))(v208, v210);
    v112 = outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v205, &demangling cache variable for type metadata for (name: String, parameter: Parameter));
    v60 = 1;
    v113 = (v185 & 1) == 0;
    LOBYTE(v112) = 1;
    v185 = v112;
  }

  while (v113);
  swift_setDeallocating(v193);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v114 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(name: String, state: LayerState)>);
  v115 = *(v184 + 72);
  v116 = *(v184 + 80);
  v117 = (v116 + 32) & ~*(v184 + 80);
  v118 = v117 + 2 * v115;
  v119 = v114;
  v120 = swift_allocObject(v114, v118, v116 | 7);
  *(v120 + 16) = 2;
  *(v120 + 24) = 4;
  v121 = v120 + v117;
  *(v120 + v117) = 0x4D676E696E6E7572;
  v205 = v120;
  *(v120 + v117 + 8) = 0xEB000000006E6165;
  BatchNorm.$runningMean.getter(v119, v118);
  object = v203._object;
  *(v115 + v121) = 0x56676E696E6E7572;
  v208 = v115;
  v204 = v121;
  *(v115 + v121 + 8) = 0xEF65636E61697261;
  BatchNorm.$runningVariance.getter(v119, v118);
  v192 += object[12];
  v123 = 0;
  v124 = 0;
  v125 = v195;
  do
  {
    v209 = v123;
    v126 = v182;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v204 + v208 * v124, v182, &demangling cache variable for type metadata for (name: String, state: LayerState));
    v212._countAndFlagsBits = *v126;
    v127 = v126[1];
    v128 = v125 + *(v203._object + 12);
    *v125 = v212._countAndFlagsBits;
    v125[1] = v127;
    v129 = type metadata accessor for LayerState(0);
    v130 = *(v129 - 8);
    (*(v130 + 32))(v128, v192, v129);
    *&v197 = v203._countAndFlagsBits;
    *(&v197 + 1) = v202;

    v131._countAndFlagsBits = 46;
    v131._object = 0xE100000000000000;
    String.append(_:)(v131);
    v131._countAndFlagsBits = v212._countAndFlagsBits;
    v131._object = v127;
    String.append(_:)(v131);
    v127;
    v212._countAndFlagsBits = *(&v197 + 1);
    v214._countAndFlagsBits = v197;
    v132 = v181;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v195, v181, &demangling cache variable for type metadata for (name: String, state: LayerState));
    v131._countAndFlagsBits = *(v132 + 8);
    v131._countAndFlagsBits;
    v133 = v132 + *(v203._object + 12);
    LayerState.value.getter(v131._countAndFlagsBits);
    (*(v130 + 8))(v133, v129);
    Tensor.shape.getter(v133, v129, v134);
    v135 = TensorShape.dimensions.getter();
    v136 = *(v135 + 16);
    if (v136)
    {
      v137 = 0;
      v138 = 1;
      v139 = v211;
      do
      {
        v140 = v138;
        v138 *= *(v135 + 8 * v137 + 32);
        if (!is_mul_ok(*(v135 + 8 * v137 + 32), v140))
        {
          BUG();
        }

        ++v137;
      }

      while (v136 != v137);
    }

    else
    {
      v138 = 1;
      v139 = v211;
    }

    v135;
    v169(v188, v186);
    v141 = alloca(24);
    v142 = alloca(32);
    v143 = v189;
    v163 = v189;
    v210 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5(v138, a9, v162);
    v211 = v139;
    v170(v143, v187);
    v144 = v213;
    v145 = swift_isUniquelyReferenced_nonNull_native(v213);
    *&v197 = v144;
    v147 = specialized __RawDictionaryStorage.find<A>(_:)(v214._countAndFlagsBits, v212._countAndFlagsBits);
    v148 = (v146 & 1) == 0;
    v99 = __OFADD__(*(v144 + 16), v148);
    v149 = *(v144 + 16) + v148;
    if (v99)
    {
      BUG();
    }

    v150 = v146;
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [Double]>);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v145, v149))
    {
      countAndFlagsBits = v212._countAndFlagsBits;
      v147 = specialized __RawDictionaryStorage.find<A>(_:)(v214._countAndFlagsBits, v212._countAndFlagsBits);
      LOBYTE(v104) = v104 & 1;
      if ((v150 & 1) != v104)
      {
        goto LABEL_42;
      }
    }

    v151 = v197;
    v213 = v197;
    if (v150)
    {
      v152 = *(v197 + 56);
      *(v152 + 8 * v147);
      *(v152 + 8 * v147) = v210;
      v212._countAndFlagsBits;
    }

    else
    {
      *(v197 + 8 * (v147 >> 6) + 64) |= 1 << v147;
      v153 = v151[6];
      v154 = 16 * v147;
      *(v153 + v154) = v214._countAndFlagsBits;
      *(v153 + v154 + 8) = v212._countAndFlagsBits;
      *(v151[7] + 8 * v147) = v210;
      v155 = v151[2];
      v99 = __OFADD__(1, v155);
      v156 = v155 + 1;
      if (v99)
      {
        BUG();
      }

      v151[2] = v156;
    }

    v125 = v195;
    v123 = outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v195, &demangling cache variable for type metadata for (name: String, state: LayerState));
    v124 = 1;
    LOBYTE(v123) = 1;
  }

  while ((v209 & 1) == 0);
  swift_setDeallocating(v205);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  return v213;
}

unint64_t specialized Dense.getStatesDictionary<A, B>(_:layerName:optimizer:parameterKeyPathLookup:)(_BYTE *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t *), uint64_t (*a7)(void, uint64_t), uint64_t (*a8)(_BYTE *, void, void), void (*a9)(void *, uint64_t *), uint64_t (*a10)(uint64_t), uint64_t *a11, uint64_t a12, uint64_t (*a13)(uint64_t *, uint64_t), uint64_t (*a14)(uint64_t *, uint64_t))
{
  v174 = a6;
  v175 = v14;
  v176 = v15;
  v158 = a5;
  v159 = a4;
  v177 = a3;
  v171._countAndFlagsBits = a2;
  v160 = a1;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Parameter?) - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v155 = v149;
  v164 = type metadata accessor for Parameter(0);
  v171._object = *(v164 - 8);
  v19 = *(v171._object + 8);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v167 = v149;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v172 = v149;
  v170 = type metadata accessor for TensorShape(0);
  v178 = *(v170 - 8);
  v24 = *(v178 + 8);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v162 = v149;
  v27 = alloca(v24);
  v28 = alloca(v24);
  *&v179 = v149;
  v29 = alloca(v24);
  v30 = alloca(v24);
  v165 = type metadata accessor for Tensor(0);
  v168 = *(v165 - 8);
  v31 = *(v168 + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v173 = v149;
  v34 = alloca(v31);
  v35 = alloca(v31);
  v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, [Double])>);
  inited = swift_initStackObject(v36, v149);
  *(inited + 16) = 2;
  *(inited + 24) = 4;
  *&v163[0] = a2;
  *(&v163[0] + 1) = v177;

  v38._countAndFlagsBits = 0x7468676965772ELL;
  v38._object = 0xE700000000000000;
  String.append(_:)(v38);
  *(inited + 32) = v163[0];
  Dense.weight.getter(0x7468676965772ELL, 0xE700000000000000);
  Tensor.shape.getter(0x7468676965772ELL, 0xE700000000000000, v39);
  v40 = TensorShape.contiguousSize.getter();
  v41 = *(v178 + 1);
  v157 = v149;
  v161 = v41;
  v41(v149, v170);
  v153 = v149;
  v42 = v175;
  v43 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5(v40, v174, v152);
  v178 = v42;
  v168 = *(v168 + 8);
  v156 = v149;
  (v168)(v149, v165);
  *(inited + 48) = v43;
  *&v163[0] = v171._countAndFlagsBits;
  *(&v163[0] + 1) = v177;

  v38._countAndFlagsBits = 0x2E7468676965772ELL;
  v38._object = 0xED00006570616873;
  String.append(_:)(v38);
  v154 = inited;
  *(inited + 56) = v163[0];
  v44 = v173;
  Dense.weight.getter(0x2E7468676965772ELL, 0xED00006570616873);
  Tensor.shape.getter(0x2E7468676965772ELL, 0xED00006570616873, v45);
  v38._countAndFlagsBits = v44;
  v46 = v170;
  (v168)(v38._countAndFlagsBits, v165);
  v47 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type TensorShape and conformance TensorShape, &type metadata accessor for TensorShape, &protocol conformance descriptor for TensorShape);
  v48 = dispatch thunk of Collection.count.getter(v46, v47);
  v175 = v47;
  if (v48)
  {
    v49 = v48;
    v169 = _swiftEmptyArrayStorage;
    v50 = 0;
    if (v48 > 0)
    {
      v50 = v48;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50, 0);
    v173 = v169;
    dispatch thunk of Collection.startIndex.getter(v46, v175);
    if (v49 < 0)
    {
      BUG();
    }

    v174 = v49;
    v51 = v175;
    v52 = v173;
    v53 = v170;
    do
    {
      v54 = v51;
      v55 = v53;
      v56 = dispatch thunk of Collection.subscript.read(v163, v166, v53, v54);
      v58 = *v57;
      v56(v163, 0);
      v169 = v52;
      v59 = v55;
      v60 = v52[2];
      v61 = v60 + 1;
      if (v52[3] >> 1 <= v60)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v52[3] >= 2uLL, v61, 1);
        v59 = v170;
        v52 = v169;
      }

      v52[2] = v61;
      *&v52[v60 + 4] = v58;
      v62 = v179;
      v63 = v59;
      v51 = v175;
      dispatch thunk of Collection.formIndex(after:)(v166, v59, v175);
      v64 = v174 == (&dword_0 + 1);
      v174 = (v174 - 1);
      v53 = v63;
    }

    while (!v64);
    v65 = v62;
  }

  else
  {
    v52 = _swiftEmptyArrayStorage;
    v65 = v179;
    v53 = v46;
  }

  v161(v65, v53);
  v66 = v154;
  *(v154 + 72) = v52;
  v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  *&v179 = Dictionary.init(dictionaryLiteral:)(v66, &type metadata for String, v67, &protocol witness table for String);
  v68 = v158;
  if (v158 && (v69 = v172, Dense.$weight.getter(), v70 = Parameter.id.getter(v66), v71 = *(v171._object + 1), (v71)(v69, v164), (v72 = a7(v70, v68)) != 0))
  {
    v172 = v72;
    v173 = v71;
  }

  else
  {
    v73 = v172;
    Dense.$weight.getter();
    v74 = a10(0);
    v75 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(a11, a10, a12);
    v76 = v160;
    v77 = Layer.parameterKeyPaths(recursively:)(1, v74, v75);
    v78 = alloca(32);
    v79 = alloca(32);
    v150 = v76;
    v151 = v73;
    v80 = v73;
    v81 = v178;
    v82 = specialized Sequence.first(where:)(a14, v149, v77);
    v178 = v81;
    v77;
    v83 = *(v171._object + 1);
    (v83)(v80, v164);
    v172 = v82;
    if (!v82)
    {
      v179;
      *&v163[0] = 0;
      *(&v163[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(58);
      v122._object = "zed in the observation" + 0x8000000000000000;
      v122._countAndFlagsBits = 0xD00000000000001BLL;
      String.append(_:)(v122);
      v122._countAndFlagsBits = v171._countAndFlagsBits;
      v122._object = v177;
      String.append(_:)(v122);
      v122._object = ".optimizer.velocity.shape" + 0x8000000000000000;
      v92 = 0xD00000000000001DLL;
      v122._countAndFlagsBits = 0xD00000000000001DLL;
      String.append(_:)(v122);
      v179 = v163[0];
      v123 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v123, 0, 0);
      *v124 = v179;
      *(v124 + 16) = 0;
      *(v124 + 32) = 0;
      *(v124 + 48) = 2;
      swift_willThrow();
      return v92;
    }

    v173 = v83;
  }

  *&v163[0] = v171._countAndFlagsBits;
  *(&v163[0] + 1) = v177;

  v84._countAndFlagsBits = 0x7468676965772ELL;
  v84._object = 0xE700000000000000;
  String.append(_:)(v84);
  v85 = BYTE8(v163[0]);
  v86 = a8(v172, *&v163[0], *(&v163[0] + 1));
  v85;
  v87 = v179;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v179);
  *&v163[0] = v87;
  v89 = v178;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v86, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, v163);
  v174 = v89;
  *&v179 = *&v163[0];
  v90 = v155;
  Dense.$bias.getter();
  v91 = v164;
  if (__swift_getEnumTagSinglePayload(v90, 1, v164) == 1)
  {

    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v90, &demangling cache variable for type metadata for Parameter?);
    return v179;
  }

  else
  {
    (*(v171._object + 4))(v167, v90, v91);
    *&v163[0] = v171._countAndFlagsBits;
    *(&v163[0] + 1) = v177;

    v93._countAndFlagsBits = 0x736169622ELL;
    v93._object = 0xE500000000000000;
    String.append(_:)(v93);
    v171._object = *(&v163[0] + 1);
    v176 = *&v163[0];
    v94 = v156;
    Parameter.value.getter(0x736169622ELL);
    v95 = v157;
    Tensor.shape.getter(0x736169622ELL, 0xE500000000000000, v96);
    v97 = TensorShape.contiguousSize.getter();
    v161(v95, v170);
    v98 = alloca(24);
    v99 = alloca(32);
    v150 = v94;
    v100 = v174;
    v101 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5(v97, a9, v149);
    v178 = v100;
    (v168)(v94, v165);
    v102 = v179;
    v103 = swift_isUniquelyReferenced_nonNull_native(v179);
    *&v163[0] = v102;
    v104 = v167;
    LOBYTE(v102) = v171._object;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v101, v176, v171._object, v103);
    v102;
    v165 = *&v163[0];
    *&v163[0] = v171._countAndFlagsBits;
    *(&v163[0] + 1) = v177;

    v93._countAndFlagsBits = 0x68732E736169622ELL;
    v93._object = 0xEB00000000657061;
    String.append(_:)(v93);
    v171._object = *(&v163[0] + 1);
    v168 = *&v163[0];
    Parameter.shape.getter();
    v105 = v170;
    v106 = dispatch thunk of Collection.count.getter(v170, v175);
    if (v106)
    {
      v169 = _swiftEmptyArrayStorage;
      v109 = 0;
      if (v106 > 0)
      {
        v109 = v106;
      }

      v110 = v106;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v109, 0);
      *&v179 = v169;
      dispatch thunk of Collection.startIndex.getter(v105, v175);
      if (v110 < 0)
      {
        BUG();
      }

      v111 = v110;
      v112 = v175;
      v113 = v179;
      do
      {
        v174 = v111;
        v114 = dispatch thunk of Collection.subscript.read(v163, v166, v105, v112);
        v176 = *v115;
        v114(v163, 0);
        v169 = v113;
        v116 = v112;
        v117 = v113[2];
        v118 = v117 + 1;
        v119 = v113;
        if (v113[3] >> 1 <= v117)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v113[3] >= 2uLL, v118, 1);
          v116 = v175;
          v119 = v169;
        }

        *&v179 = v119;
        v120 = v176;
        v119[2] = v118;
        *&v119[v117 + 4] = v120;
        v112 = v116;
        dispatch thunk of Collection.formIndex(after:)(v166, v105, v116);
        v111 = (v174 - 1);
        v108 = v166;
        v113 = v179;
      }

      while (v174 != (&dword_0 + 1));
      v121 = v167;
    }

    else
    {
      v121 = v104;
      v113 = _swiftEmptyArrayStorage;
    }

    (v161)(v162, v170, v107, v108);
    v125 = v165;
    v126 = swift_isUniquelyReferenced_nonNull_native(v165);
    *&v163[0] = v125;
    object = v171._object;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v113, v168, v171._object, v126);
    v128 = object;
    object;
    *&v179 = *&v163[0];
    v129 = v158;
    if (v158 && (v130 = Parameter.id.getter(v128), (v131 = a7(v130, v129)) != 0))
    {
      v132 = v131;
    }

    else
    {
      v133 = a10(0);
      v134 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(a11, a10, a12);
      v135 = v160;
      v136 = Layer.parameterKeyPaths(recursively:)(1, v133, v134);
      v137 = alloca(32);
      v138 = alloca(32);
      v150 = v135;
      v151 = v121;
      v139 = v178;
      v132 = specialized Sequence.first(where:)(a13, v149, v136);
      v136;
      if (!v132)
      {

        *&v163[0] = 0;
        *(&v163[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(56);
        v145._object = "zed in the observation" + 0x8000000000000000;
        v92 = 0xD00000000000001BLL;
        v145._countAndFlagsBits = 0xD00000000000001BLL;
        String.append(_:)(v145);
        v145._countAndFlagsBits = v171._countAndFlagsBits;
        v145._object = v177;
        String.append(_:)(v145);
        v145._countAndFlagsBits = 0xD00000000000001BLL;
        String.append(_:)(v145);
        v179 = v163[0];
        v146 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v146, 0, 0);
        *v147 = v179;
        *(v147 + 16) = 0;
        *(v147 + 32) = 0;
        *(v147 + 48) = 2;
        swift_willThrow();

        (v173)(v167, v164);
        return v92;
      }

      v178 = v139;
    }

    *&v163[0] = v171._countAndFlagsBits;
    *(&v163[0] + 1) = v177;

    v140._countAndFlagsBits = 0x736169622ELL;
    v140._object = 0xE500000000000000;
    String.append(_:)(v140);
    v141 = BYTE8(v163[0]);
    v142 = a8(v132, *&v163[0], *(&v163[0] + 1));
    v141;
    v143 = v179;
    v144 = swift_isUniquelyReferenced_nonNull_native(v179);
    *&v163[0] = v143;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v142, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v144, v163);

    v92 = *&v163[0];
    (v173)(v167, v164);
  }

  return v92;
}

uint64_t specialized Adam.getParametersDictionary()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, [Double])>);
  inited = swift_initStackObject(v1, v14);
  *(inited + 16) = 6;
  *(inited + 24) = 12;
  strcpy((inited + 32), "learningRate");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Double>);
  v4 = swift_allocObject(v3, 40, 7);
  *(v4 + 16) = 1;
  *(v4 + 24) = 2;
  *(v4 + 32) = *v0;
  *(inited + 48) = v4;
  *(inited + 56) = 0x3161746562;
  *(inited + 64) = 0xE500000000000000;
  v5 = swift_allocObject(v3, 40, 7);
  *(v5 + 16) = 1;
  *(v5 + 24) = 2;
  *(v5 + 32) = v0[1];
  *(inited + 72) = v5;
  *(inited + 80) = 0x3261746562;
  *(inited + 88) = 0xE500000000000000;
  v6 = swift_allocObject(v3, 40, 7);
  *(v6 + 16) = 1;
  *(v6 + 24) = 2;
  *(v6 + 32) = v0[2];
  *(inited + 96) = v6;
  *(inited + 104) = 0x47534D4173657375;
  *(inited + 112) = 0xEB00000000646172;
  v7 = swift_allocObject(v3, 40, 7);
  v7[2] = 1;
  v7[3] = 2;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
  if (Adam.usesAMSGrad.getter(v8))
  {
    v9 = 0x3FF0000000000000;
  }

  else
  {
    v9 = 0;
  }

  v7[4] = v9;
  *(inited + 120) = v7;
  *(inited + 128) = 0x6E6F6C69737065;
  *(inited + 136) = 0xE700000000000000;
  v10 = swift_allocObject(v3, 40, 7);
  *(v10 + 16) = 1;
  *(v10 + 24) = 2;
  *(v10 + 32) = v0[3];
  *(inited + 144) = v10;
  strcpy((inited + 152), "gradientScale");
  *(inited + 166) = -4864;
  v11 = swift_allocObject(v3, 40, 7);
  *(v11 + 16) = 1;
  *(v11 + 24) = 2;
  *(v11 + 32) = *(v0 + *(v8 + 56));
  *(inited + 168) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  return Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, v12, &protocol witness table for String);
}

uint64_t specialized Adam.getStatesDictionary(for:name:)(uint64_t a1, uint64_t a2, void *a3)
{
  v52 = a3;
  v51 = a2;
  v50 = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLActivityClassifier.Model>?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v48 = &v39;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v47 = &v39;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v40 = &v39;
  v12 = alloca(v7);
  v13 = alloca(v7);
  v14 = type metadata accessor for Tensor(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v44 = &v39;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v42 = &v39;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v43 = &v39;
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  v53 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v23, &protocol witness table for String);
  v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
  v45 = v3;
  v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLActivityClassifier.Model>);
  OptimizerStateDictionary.subscript.getter(v50, v41);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v39, 1, v14);
  v49 = v15;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v39, &demangling cache variable for type metadata for Tensor?);
  }

  else
  {
    v25 = v43;
    (*(v15 + 32))(v43, &v39, v14);
    Dictionary<>.updateValue(tensor:forKey:prefix:)(v25, v51, v52, 0x6D6F4D7473726966, 0xEC00000073746E65);
    (*(v15 + 8))(v25, v14);
  }

  v26 = v40;
  v27 = v41;
  OptimizerStateDictionary.subscript.getter(v50, v41);
  if (__swift_getEnumTagSinglePayload(v26, 1, v14) == 1)
  {
    v28 = v14;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v26, &demangling cache variable for type metadata for Tensor?);
  }

  else
  {
    v29 = v42;
    v30 = v26;
    v31 = v49;
    (*(v49 + 32))(v42, v30, v14);
    Dictionary<>.updateValue(tensor:forKey:prefix:)(v29, v51, v52, 0x6F4D646E6F636573, 0xED000073746E656DLL);
    v32 = v29;
    v28 = v14;
    (*(v31 + 8))(v32, v14);
  }

  v33 = v48;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v46 + 72) + v45, v48, &demangling cache variable for type metadata for OptimizerStateDictionary<MLActivityClassifier.Model>?);
  if (__swift_getEnumTagSinglePayload(v33, 1, v27) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v33, &demangling cache variable for type metadata for OptimizerStateDictionary<MLActivityClassifier.Model>?);
    v34 = v47;
    __swift_storeEnumTagSinglePayload(v47, 1, 1, v28);
  }

  else
  {
    v34 = v47;
    OptimizerStateDictionary.subscript.getter(v50, v27);
    (*(*(v27 - 8) + 8))(v33, v27);
    if (__swift_getEnumTagSinglePayload(v34, 1, v28) != 1)
    {
      v35 = v44;
      v36 = v34;
      v37 = v49;
      (*(v49 + 32))(v44, v36, v28);
      Dictionary<>.updateValue(tensor:forKey:prefix:)(v35, v51, v52, 0xD000000000000014, ("usesNesterovMomentum" + 0x8000000000000000));
      (*(v37 + 8))(v35, v28);
      return v53;
    }
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v34, &demangling cache variable for type metadata for Tensor?);
  return v53;
}

uint64_t specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a4;
  a1[1] = a5;

  return a2;
}

uint64_t specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;

  return a2;
}

void *specialized LazyMapSequence.makeIterator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized LazyMapSequence.makeIterator()(a1, a2, a3);
}

{
  v4 = -(-1 << *(a1 + 32));
  v5 = ~(-1 << v4);
  if (v4 >= 64)
  {
    v5 = -1;
  }

  v6 = *(a1 + 64) & v5;
  v7 = ~(-1 << *(a1 + 32));
  *result = a1;
  result[1] = a1 + 64;
  result[2] = v7;
  result[3] = 0;
  result[4] = v6;
  result[5] = a2;
  result[6] = a3;
  return result;
}

{
  return specialized LazyMapSequence.makeIterator()(a1, a2, a3);
}

BOOL specialized closure #1 in Layer.parameterKeyPath(forParameterWithId:)(uint64_t *a1, uint64_t a2, int a3)
{
  return specialized closure #1 in Layer.parameterKeyPath(forParameterWithId:)(*a1, a2, a3);
}

{
  return specialized closure #1 in Layer.parameterKeyPath(forParameterWithId:)(a1, a2, a3);
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)(uint64_t *a1)
{
  v2 = v1;
  result = specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(v6, *a1, a1[1], a1[2]);
  v4 = v6[0];
  *v2 = result;
  v2[1] = v5;
  v2[2] = v4;
  return result;
}

{
  v2 = v1;
  result = specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(&v6, *a1, a1[1], a1[2], a1[3]);
  v4 = v6;
  *v2 = result;
  *(v2 + 8) = v5;
  *(v2 + 16) = v4;
  return result;
}

BOOL partial apply for specialized closure #1 in Layer.parameterKeyPath(forParameterWithId:)(uint64_t *a1)
{
  return specialized closure #1 in Layer.parameterKeyPath(forParameterWithId:)(a1, *(v1 + 16), *(v1 + 24));
}

{
  return partial apply for specialized closure #1 in Layer.parameterKeyPath(forParameterWithId:)(a1);
}

uint64_t *closure #1 in Tensor.doubleArray()partial apply(uint64_t a1, uint64_t *a2)
{
  return partial apply for closure #1 in Tensor.doubleArray()(a1, a2);
}

{
  return partial apply for closure #1 in Tensor.doubleArray()(a1, a2);
}

char specialized Sequence<>.contains(_:)(__int128 a1, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    if (a1 == *(a2 + 2) || (_stringCompareWithSmolCheck(_:_:expecting:)(a2[4], a2[5], a1, *(&a1 + 1), 0) & 1) != 0)
    {
      return 1;
    }

    if (v2 != 1)
    {
      v5 = a2 + 7;
      v6 = 1;
      while (1)
      {
        if (__OFADD__(1, v6++))
        {
          BUG();
        }

        if (a1 == *(v5 - 1) || (_stringCompareWithSmolCheck(_:_:expecting:)(*(v5 - 1), *v5, a1, *(&a1 + 1), 0) & 1) != 0)
        {
          break;
        }

        v5 += 2;
        result = 0;
        if (v6 == v2)
        {
          return result;
        }
      }

      return 1;
    }
  }

  return 0;
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  result = 1;
  if (*(a2 + 32) == a1)
  {
    return result;
  }

  if (v2 == 1)
  {
    return 0;
  }

  v4 = 5;
  do
  {
    v5 = v4 - 4 + 1;
    if (__OFADD__(1, v4 - 4))
    {
      BUG();
    }

    result = *(a2 + 8 * v4) == a1;
    if (*(a2 + 8 * v4) == a1)
    {
      break;
    }

    ++v4;
  }

  while (v5 != v2);
  return result;
}

void *specialized Sequence.max(by:)(uint64_t a1)
{
  v2 = v1;

  v3 = specialized Dictionary.startIndex.getter(a1);
  if (v5)
  {
    BUG();
  }

  v6 = v4;
  if (*(a1 + 36) != v4)
  {
    BUG();
  }

  if (v3 == 1 << *(a1 + 32))
  {
    v7 = v3;
    a1;
    result = outlined consume of [MLDataValue : MLDataValue].Index._Variant(v7, v6, 0);
    *v2 = 0;
    *(v2 + 16) = 255;
    *(v2 + 24) = 0;
    *(v2 + 40) = 0;
  }

  else
  {
    v58 = v2;
    v68 = v3;
    specialized Dictionary.subscript.getter(&v52, v55, v3, v4, 0, a1);
    v69 = v6;
    v9 = v52;
    v74 = v53;
    v70 = a1;
    v10 = v55[0];
    v11 = v55[1];
    v12 = v56;
    v79 = v54;
    LODWORD(v75) = v54;
    outlined copy of MLDataValue(v52, v53, v54);
    v78 = v12;
    outlined copy of MLDataValue(v10, v11, v12);
    v73 = v9;
    outlined consume of MLDataValue(v9, v74, v75);
    v75 = v10;
    v13 = v10;
    v14 = v70;
    v72 = v11;
    outlined consume of MLDataValue(v13, v11, v12);
    v15 = v68;
    v16 = v69;
    *&v60 = COERCE_DOUBLE(specialized _NativeDictionary.index(after:)(v68, v69, 0, v14));
    v71 = v17;
    LOBYTE(v11) = v18;
    outlined consume of [MLDataValue : MLDataValue].Index._Variant(v15, v16, 0);
    if (v11)
    {
      BUG();
    }

    v69 = v14 + 64;
    v19 = v71;
    v20 = v71;
    v21 = v73;
    v22 = v79;
    v23 = v74;
LABEL_7:
    v77 = v78;
    v65 = v72;
    v76 = v22;
    v62 = v23;
    v63 = v21;
    v66 = v75;
    v57 = *&v75;
    v24 = v60;
    while (1)
    {
      v25 = 1 << *(v14 + 32);
      if (v19 != *(v14 + 36))
      {
        BUG();
      }

      v59 = v76;
      if (v24 == v25)
      {
        break;
      }

      if (v24 < 0 || v24 >= v25)
      {
        BUG();
      }

      v26 = 1 << v24;
      v61 = v20;
      if (v19 != v20 || (v27 = v24 >> 6, (v26 & *(v69 + 8 * (v24 >> 6))) == 0))
      {
        BUG();
      }

      v71 = v19;
      v28 = 24 * v24;
      v29 = *(v70 + 48);
      v30 = *(v70 + 56);
      v73 = *(v29 + 24 * v24);
      v31 = v73;
      v74 = *(v29 + 24 * v24 + 8);
      v64 = *&v24;
      v32 = *(v29 + 24 * v24 + 16);
      v75 = *(v30 + v28);
      v72 = *(v30 + v28 + 8);
      v78 = *(v30 + v28 + 16);
      LODWORD(v68) = v78;
      outlined copy of MLDataValue(v75, v72, v78);
      v79 = v32;
      v33 = v31;
      v34 = v74;
      outlined copy of MLDataValue(v33, v74, v32);
      outlined copy of MLDataValue(v75, v72, v68);
      outlined copy of MLDataValue(v73, v34, v32);
      v35 = v34;
      v36 = v75;
      v67 = v32;
      v37 = v32;
      v38 = *&v64;
      outlined consume of MLDataValue(v73, v35, v37);
      outlined consume of MLDataValue(v36, v72, v68);
      v39 = *(v70 + 32);
      if (v38 >= -(-1 << v39))
      {
        BUG();
      }

      if ((v26 & *(v69 + 8 * v27)) == 0)
      {
        BUG();
      }

      v40 = v70;
      if (*(v70 + 36) != v71)
      {
        BUG();
      }

      *&v60 = COERCE_DOUBLE(_HashTable.occupiedBucket(after:)(v38, v69, ~(-1 << v39)));
      v71 = *(v40 + 36);
      outlined consume of [MLDataValue : MLDataValue].Index._Variant(v38, v61, 0);
      v41 = v63;
      v42 = v62;
      v43 = v59;
      outlined copy of MLDataValue(v63, v62, v59);
      v44 = v77;
      outlined copy of MLDataValue(v66, v65, v77);
      outlined consume of MLDataValue(v41, v42, v43);
      v45 = v57;
      if (v44 != 1)
      {
        outlined consume of MLDataValue(v66, v65, v44);
        v45 = 0.0;
      }

      v64 = v45;
      LODWORD(v61) = v44;
      v46 = v73;
      v47 = v74;
      v48 = v67;
      outlined copy of MLDataValue(v73, v74, v67);
      v49 = v68;
      outlined copy of MLDataValue(v75, v72, v68);
      outlined consume of MLDataValue(v46, v47, v48);
      if (v49 == 1)
      {
        v50 = 1;
        v51 = v72;
        if (*&v75 > v64)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v51 = v72;
        outlined consume of MLDataValue(v75, v72, v49);
        if (v64 < 0.0)
        {
LABEL_25:
          outlined consume of MLDataValue(v63, v62, v59);
          outlined consume of MLDataValue(v66, v65, v61);
          v19 = v71;
          v20 = v71;
          v23 = v74;
          v14 = v70;
          v22 = v79;
          v21 = v73;
          goto LABEL_7;
        }

        v50 = v78;
      }

      outlined consume of MLDataValue(v73, v74, v67);
      outlined consume of MLDataValue(v75, v51, v50);
      v24 = v60;
      v19 = v71;
      v20 = v71;
      v14 = v70;
    }

    v14;
    outlined consume of [MLDataValue : MLDataValue].Index._Variant(v24, v20, 0);
    result = v58;
    *v58 = v63;
    result[1] = v62;
    result[2] = v59;
    result[3] = v66;
    result[4] = v65;
    *(result + 40) = v77;
  }

  return result;
}

uint64_t _s11TabularData0B5FrameV14containsColumnySbSS_xmtlFSS_Tt0g5(Swift::String a1)
{
  LODWORD(v1) = 0;
  v15 = type metadata accessor for AnyColumn(0);
  v2 = *(v15 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v16 = &v14;
  v6 = DataFrame.indexOfColumn(_:)(a1);
  if (!v6.is_nil)
  {
    value = v6.value;
    v8 = DataFrame.columns.getter(a1._countAndFlagsBits);
    if (value < 0)
    {
      BUG();
    }

    v1 = v8;
    if (value >= *(v8 + 16))
    {
      BUG();
    }

    v9 = v16;
    v10 = ((*(v2 + 80) + 32) & ~*(v2 + 80)) + v8 + *(v2 + 72) * value;
    v11 = v15;
    (*(v2 + 16))(v16, v10, v15);
    v1;
    v12 = AnyColumn.wrappedElementType.getter(v1);
    (*(v2 + 8))(v9, v11);
    LOBYTE(v1) = v12 == &type metadata for String;
  }

  return v1;
}

uint64_t _s11TabularData0B5FrameV14containsColumnySbSS_xmtlFSi_Tt0g5(Swift::String a1)
{
  LODWORD(v1) = 0;
  v15 = type metadata accessor for AnyColumn(0);
  v2 = *(v15 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v16 = &v14;
  v6 = DataFrame.indexOfColumn(_:)(a1);
  if (!v6.is_nil)
  {
    value = v6.value;
    v8 = DataFrame.columns.getter(a1._countAndFlagsBits);
    if (value < 0)
    {
      BUG();
    }

    v1 = v8;
    if (value >= *(v8 + 16))
    {
      BUG();
    }

    v9 = v16;
    v10 = ((*(v2 + 80) + 32) & ~*(v2 + 80)) + v8 + *(v2 + 72) * value;
    v11 = v15;
    (*(v2 + 16))(v16, v10, v15);
    v1;
    v12 = AnyColumn.wrappedElementType.getter(v1);
    (*(v2 + 8))(v9, v11);
    LOBYTE(v1) = v12 == &type metadata for Int;
  }

  return v1;
}

uint64_t _s11TabularData0B5FrameV14containsColumnySbSS_xmtlFSay8CreateML11MLDataValueOG_Tt0g5(Swift::String a1)
{
  LODWORD(v1) = 0;
  v15 = type metadata accessor for AnyColumn(0);
  v2 = *(v15 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v16 = &v14;
  v6 = DataFrame.indexOfColumn(_:)(a1);
  if (!v6.is_nil)
  {
    value = v6.value;
    v8 = DataFrame.columns.getter(a1._countAndFlagsBits);
    if (value < 0)
    {
      BUG();
    }

    v1 = v8;
    if (value >= *(v8 + 16))
    {
      BUG();
    }

    v9 = v16;
    v10 = ((*(v2 + 80) + 32) & ~*(v2 + 80)) + v8 + *(v2 + 72) * value;
    v11 = v15;
    (*(v2 + 16))(v16, v10, v15);
    v1;
    v12 = AnyColumn.wrappedElementType.getter(v1);
    (*(v2 + 8))(v9, v11);
    LOBYTE(v1) = v12 == __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLDataValue]);
  }

  return v1;
}

uint64_t specialized _UntypedColumn.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v4 = tc_v1_flex_list_create(0);
  if (!v4)
  {
    BUG();
  }

  v5 = v4;
  v26 = v3;
  v6 = type metadata accessor for CMLSequence();
  inited = swift_initStackObject(v6, v19);
  *(inited + 16) = v5;
  v25 = inited;
  *(inited + 24) = 1;
  if (a1)
  {
    v8 = 0;
    v9 = 0;
    v24 = a1;
    if (a1 > 0)
    {
      v9 = a1;
    }

    v23 = v9;
    do
    {
      if (v23 == v8)
      {
        BUG();
      }

      v21[3] = &type metadata for Int;
      v21[4] = &protocol witness table for Int;
      v21[0] = v22;
      v10 = __swift_project_boxed_opaque_existential_0Tm(v21, &type metadata for Int);
      v11 = specialized handling<A, B>(_:_:)(*v10);
      if (v2)
      {
        swift_unexpectedError(v2, "CreateML/MLDataValueConvertible.swift", 37, 1, 100);
        BUG();
      }

      v12 = v11;
      if (!v11)
      {
        BUG();
      }

      v13 = type metadata accessor for CMLFeatureValue();
      swift_initStackObject(v13, v20);
      v14 = CMLFeatureValue.init(rawValue:ownsValue:)(v12, 1);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      CMLSequence.append(_:)(v14);
      ++v8;
    }

    while (v24 != v8);
  }

  type metadata accessor for CMLColumn();
  v15 = CMLColumn.__allocating_init(_:type:)(v25, 0);
  v16 = v26;
  if (v2)
  {
    v17 = type metadata accessor for _UntypedColumn();
    swift_deallocPartialClassInstance(v16, v17, 24, 7);
  }

  else
  {
    *(v26 + 16) = v15;
  }

  return v16;
}

uint64_t specialized _UntypedColumn.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v33 = a3;
  v27 = a2;
  v6 = tc_v1_flex_list_create(0);
  if (!v6)
  {
    BUG();
  }

  v7 = v6;
  v32 = v4;
  v8 = type metadata accessor for CMLSequence();
  inited = swift_initStackObject(v8, v23);
  *(inited + 16) = v7;
  v31 = inited;
  *(inited + 24) = 1;
  if (a1)
  {
    v10 = 0;
    v29 = type metadata accessor for CMLFeatureValue();
    v11 = 0;
    v30 = a1;
    if (a1 > 0)
    {
      v11 = a1;
    }

    v28 = v11;
    do
    {
      if (v28 == v10)
      {
        BUG();
      }

      v26 = v10;
      v24[3] = &type metadata for String;
      v24[4] = &protocol witness table for String;
      v24[0] = v27;
      v25 = v5;
      v12 = v33;
      v24[1] = v33;
      v13 = __swift_project_boxed_opaque_existential_0Tm(v24, &type metadata for String);
      v14 = *v13;
      v15 = v13[1];
      swift_bridgeObjectRetain_n(v12, 2);

      v16 = v25;
      v17 = CMLFeatureValue.__allocating_init(_:)(v14, v15);
      v5 = v16;
      if (v16)
      {
        swift_unexpectedError(v16, "CreateML/MLDataValueConvertible.swift", 37, 1, 170);
        BUG();
      }

      v18 = v17;
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      CMLSequence.append(_:)(v18);
      v10 = v26 + 1;

      v33;
    }

    while (v30 != v10);
  }

  v33;
  type metadata accessor for CMLColumn();
  v19 = CMLColumn.__allocating_init(_:type:)(v31, 2);
  v20 = v32;
  if (v5)
  {
    v21 = type metadata accessor for _UntypedColumn();
    swift_deallocPartialClassInstance(v20, v21, 24, 7);
  }

  else
  {
    *(v32 + 16) = v19;
  }

  return v20;
}

uint64_t specialized _UntypedColumn.init<A>(_:)(uint64_t a1)
{
  v3 = tc_v1_flex_list_create(0);
  if (!v3)
  {
    BUG();
  }

  v4 = v3;
  v23 = v2;
  v5 = type metadata accessor for CMLSequence();
  inited = swift_initStackObject(v5, v17);
  *(inited + 16) = v4;
  v22 = inited;
  *(inited + 24) = 1;
  v21 = a1;
  v20 = *(a1 + 16);
  if (v20)
  {
    for (i = 0; i != v20; ++i)
    {
      v8 = *(v21 + 8 * i + 32);
      v19[3] = &type metadata for Double;
      v19[4] = &protocol witness table for Double;
      v19[0] = v8;
      __swift_project_boxed_opaque_existential_0Tm(v19, &type metadata for Double);
      v9 = specialized handling<A, B>(_:_:)();
      if (v1)
      {
        swift_unexpectedError(v1, "CreateML/MLDataValueConvertible.swift", 37, 1, 153);
        BUG();
      }

      v10 = v9;
      if (!v9)
      {
        BUG();
      }

      v11 = type metadata accessor for CMLFeatureValue();
      swift_initStackObject(v11, v18);
      v12 = CMLFeatureValue.init(rawValue:ownsValue:)(v10, 1);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      CMLSequence.append(_:)(v12);
    }
  }

  v21;
  type metadata accessor for CMLColumn();
  v13 = CMLColumn.__allocating_init(_:type:)(v22, 1);
  v14 = v23;
  if (v1)
  {
    v15 = type metadata accessor for _UntypedColumn();
    swift_deallocPartialClassInstance(v14, v15, 24, 7);
  }

  else
  {
    *(v23 + 16) = v13;
  }

  return v14;
}

{
  v3 = tc_v1_flex_list_create(0);
  if (!v3)
  {
    BUG();
  }

  v4 = v3;
  v24 = v2;
  v5 = type metadata accessor for CMLSequence();
  inited = swift_initStackObject(v5, v18);
  *(inited + 16) = v4;
  v23 = inited;
  *(inited + 24) = 1;
  v22 = a1;
  v21 = *(a1 + 16);
  if (v21)
  {
    for (i = 0; i != v21; ++i)
    {
      v8 = *(v22 + 8 * i + 32);
      v20[3] = &type metadata for Int;
      v20[4] = &protocol witness table for Int;
      v20[0] = v8;
      v9 = __swift_project_boxed_opaque_existential_0Tm(v20, &type metadata for Int);
      v10 = specialized handling<A, B>(_:_:)(*v9);
      if (v1)
      {
        swift_unexpectedError(v1, "CreateML/MLDataValueConvertible.swift", 37, 1, 100);
        BUG();
      }

      v11 = v10;
      if (!v10)
      {
        BUG();
      }

      v12 = type metadata accessor for CMLFeatureValue();
      swift_initStackObject(v12, v19);
      v13 = CMLFeatureValue.init(rawValue:ownsValue:)(v11, 1);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      CMLSequence.append(_:)(v13);
    }
  }

  v22;
  type metadata accessor for CMLColumn();
  v14 = CMLColumn.__allocating_init(_:type:)(v23, 0);
  v15 = v24;
  if (v1)
  {
    v16 = type metadata accessor for _UntypedColumn();
    swift_deallocPartialClassInstance(v15, v16, 24, 7);
  }

  else
  {
    *(v24 + 16) = v14;
  }

  return v15;
}

{
  v3 = v1;
  v4 = tc_v1_flex_list_create(0);
  if (!v4)
  {
    BUG();
  }

  v5 = v4;
  v31 = v2;
  v6 = type metadata accessor for CMLSequence();
  inited = swift_initStackObject(v6, v22);
  *(inited + 16) = v5;
  v30 = inited;
  *(inited + 24) = 1;
  v8 = *(a1 + 16);
  v29 = a1;
  if (v8)
  {
    v27 = type metadata accessor for CMLFeatureValue();
    v9 = (a1 + 40);
    do
    {
      v24 = v3;
      v25 = v8;
      v10 = *(v9 - 1);
      v26 = v9;
      v11 = *v9;
      v23[3] = &type metadata for String;
      v23[4] = &protocol witness table for String;
      v23[0] = v10;
      v23[1] = v11;
      v12 = __swift_project_boxed_opaque_existential_0Tm(v23, &type metadata for String);
      v13 = *v12;
      v14 = v12[1];
      v28 = v11;
      swift_bridgeObjectRetain_n(v11, 2);

      v15 = v24;
      v16 = CMLFeatureValue.__allocating_init(_:)(v13, v14);
      v3 = v15;
      if (v15)
      {
        swift_unexpectedError(v15, "CreateML/MLDataValueConvertible.swift", 37, 1, 170);
        BUG();
      }

      v17 = v16;
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      CMLSequence.append(_:)(v17);

      v28;
      v9 = v26 + 2;
      v8 = v25 - 1;
    }

    while (v25 != 1);
  }

  v29;
  type metadata accessor for CMLColumn();
  v18 = CMLColumn.__allocating_init(_:type:)(v30, 2);
  v19 = v31;
  if (v3)
  {
    v20 = type metadata accessor for _UntypedColumn();
    swift_deallocPartialClassInstance(v19, v20, 24, 7);
  }

  else
  {
    *(v31 + 16) = v18;
  }

  return v19;
}

{
  v44 = v2;
  v3 = a1;
  v4 = tc_v1_flex_list_create(0);
  if (!v4)
  {
    BUG();
  }

  v5 = v4;
  v37 = type metadata accessor for CMLSequence();
  inited = swift_initStackObject(v37, v30);
  *(inited + 16) = v5;
  v45 = inited;
  *(inited + 24) = 1;
  v38 = *(a1 + 16);
  if (v38)
  {
    v7 = 0;
    v42 = type metadata accessor for CMLFeatureValue();
    v39 = a1;
    while (1)
    {
      if (v7 >= *(v3 + 16))
      {
        BUG();
      }

      v36 = v7;
      v8 = *(v3 + 8 * v7 + 32);
      v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
      v33[3] = v9;
      v33[4] = lazy protocol witness table accessor for type [String : Double] and conformance <> [A : B](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A], &demangling cache variable for type metadata for [Int], &protocol witness table for Int, &protocol conformance descriptor for <A> [A]);
      v33[0] = v8;
      v10 = *__swift_project_boxed_opaque_existential_0Tm(v33, v9);
      v43 = v8;
      swift_bridgeObjectRetain_n(v8, 2);
      v11 = tc_v1_flex_list_create(0);
      if (!v11)
      {
        BUG();
      }

      v12 = v11;
      v13 = swift_initStackObject(v37, v31);
      *(v13 + 16) = v12;
      v40 = v13;
      *(v13 + 24) = 1;
      v35 = *(v10 + 16);
      if (v35)
      {
        break;
      }

LABEL_12:
      v20 = CMLFeatureValue.__allocating_init(_:)(v40);
      v3 = v39;
      if (v1)
      {
        v27 = "CreateML/SequenceType.swift";
        v28 = 27;
        v29 = 151;
        goto LABEL_22;
      }

      v21 = v20;
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      CMLSequence.append(_:)(v21);
      v7 = v36 + 1;

      v43;
      if (v7 == v38)
      {
        goto LABEL_14;
      }
    }

    v41 = v10;

    v14 = 0;
    while (1)
    {
      v15 = *(v41 + 8 * v14 + 32);
      v34[3] = &type metadata for Int;
      v34[4] = &protocol witness table for Int;
      v34[0] = v15;
      v16 = __swift_project_boxed_opaque_existential_0Tm(v34, &type metadata for Int);
      v17 = specialized handling<A, B>(_:_:)(*v16);
      if (v1)
      {
        break;
      }

      v18 = v17;
      if (!v17)
      {
        BUG();
      }

      swift_initStackObject(v42, v32);
      v19 = CMLFeatureValue.init(rawValue:ownsValue:)(v18, 1);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      CMLSequence.append(_:)(v19);
      ++v14;

      if (v35 == v14)
      {
        v41;
        goto LABEL_12;
      }
    }

    v27 = "CreateML/MLDataValueConvertible.swift";
    v28 = 37;
    v29 = 100;
LABEL_22:
    swift_unexpectedError(v1, v27, v28, 1, v29);
    BUG();
  }

LABEL_14:
  v3;
  type metadata accessor for CMLColumn();
  v22 = CMLColumn.__allocating_init(_:type:)(v45, 3);
  if (v1)
  {
    v25 = type metadata accessor for _UntypedColumn();
    v26 = v44;
    swift_deallocPartialClassInstance(v44, v25, 24, 7);
    return v26;
  }

  else
  {
    v23 = v44;
    *(v44 + 16) = v22;
    return v23;
  }
}

{
  v3 = a1;
  v4 = tc_v1_flex_list_create(0);
  if (!v4)
  {
    BUG();
  }

  v5 = v4;
  v26 = v1;
  v25 = v2;
  v6 = type metadata accessor for CMLSequence();
  inited = swift_initStackObject(v6, v20);
  *(inited + 16) = v5;
  v24 = inited;
  *(inited + 24) = 1;
  v22 = *(a1 + 16);
  if (v22)
  {
    v8 = 0;
    v23 = a1;
    while (1)
    {
      v9 = *(v3 + 8 * v8 + 32);
      v21[3] = &type metadata for MLDataValue.MultiArrayType;
      v21[4] = &protocol witness table for MLDataValue.MultiArrayType;
      v21[0] = v9;
      __swift_project_boxed_opaque_existential_0Tm(v21, &type metadata for MLDataValue.MultiArrayType);
      v10 = v9;
      v11 = v10;
      v12 = MLDataValue.MultiArrayType.featureValue.getter();
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      v13 = v26;
      CMLSequence.append(_:)(v12);
      v26 = v13;
      if (v13)
      {
        break;
      }

      ++v8;

      v3 = v23;
      if (v22 == v8)
      {
        goto LABEL_6;
      }
    }

    swift_setDeallocating(v24);
    v17 = CMLFeatureValue.deinit();
    swift_deallocClassInstance(v17, 25, 7);
    v23;

    v16 = v25;
  }

  else
  {
LABEL_6:
    v3;
    type metadata accessor for CMLColumn();
    v14 = v26;
    v15 = CMLColumn.__allocating_init(_:type:)(v24, 6);
    if (!v14)
    {
      v16 = v25;
      *(v25 + 16) = v15;
      return v16;
    }

    v16 = v25;
  }

  v18 = type metadata accessor for _UntypedColumn();
  swift_deallocPartialClassInstance(v16, v18, 24, 7);
  return v16;
}

{
  v3 = v1;
  v51 = v2;
  v4 = a1;
  v5 = tc_v1_flex_list_create(0);
  if (!v5)
  {
    BUG();
  }

  v6 = v5;
  v45 = type metadata accessor for CMLSequence();
  inited = swift_initStackObject(v45, v36);
  *(inited + 16) = v6;
  v52 = inited;
  *(inited + 24) = 1;
  v46 = *(a1 + 16);
  if (v46)
  {
    v8 = 0;
    v48 = type metadata accessor for CMLFeatureValue();
    v50 = a1;
    while (1)
    {
      if (v8 >= *(v4 + 16))
      {
        BUG();
      }

      v53 = v3;
      v9 = *(v4 + 8 * v8 + 32);
      v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
      v38[3] = v10;
      v38[4] = lazy protocol witness table accessor for type [String : Double] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], &demangling cache variable for type metadata for [String], &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
      v38[0] = v9;
      v11 = *__swift_project_boxed_opaque_existential_0Tm(v38, v10);
      v49 = v9;
      swift_bridgeObjectRetain_n(v9, 2);
      v12 = tc_v1_flex_list_create(0);
      if (!v12)
      {
        BUG();
      }

      v13 = v12;
      v43 = v8;
      v14 = swift_initStackObject(v45, v37);
      *(v14 + 16) = v13;
      v47 = v14;
      *(v14 + 24) = 1;
      v15 = *(v11 + 16);
      if (v15)
      {
        break;
      }

LABEL_11:
      v4 = v50;
      v25 = v53;
      v26 = CMLFeatureValue.__allocating_init(_:)(v47);
      v3 = v25;
      if (v25)
      {
        v33 = "CreateML/SequenceType.swift";
        v34 = 27;
        v35 = 151;
        goto LABEL_20;
      }

      v27 = v26;
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      CMLSequence.append(_:)(v27);
      v8 = v43 + 1;

      v49;
      if (v8 == v46)
      {
        goto LABEL_13;
      }
    }

    v44 = v11;
    v16 = (v11 + 40);
    while (1)
    {
      v40 = v15;
      v17 = *(v16 - 1);
      v41 = v16;
      v18 = *v16;
      v39[3] = &type metadata for String;
      v39[4] = &protocol witness table for String;
      v39[0] = v17;
      v39[1] = v18;
      v19 = __swift_project_boxed_opaque_existential_0Tm(v39, &type metadata for String);
      v20 = *v19;
      v21 = v19[1];
      v42 = v18;
      swift_bridgeObjectRetain_n(v18, 2);

      v22 = v53;
      v23 = CMLFeatureValue.__allocating_init(_:)(v20, v21);
      v3 = v22;
      if (v22)
      {
        break;
      }

      v24 = v23;
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      CMLSequence.append(_:)(v24);
      v53 = 0;

      v42;
      v16 = v41 + 2;
      v15 = v40 - 1;
      if (v40 == 1)
      {
        v44;
        goto LABEL_11;
      }
    }

    v33 = "CreateML/MLDataValueConvertible.swift";
    v34 = 37;
    v35 = 170;
LABEL_20:
    swift_unexpectedError(v3, v33, v34, 1, v35);
    BUG();
  }

LABEL_13:
  v4;
  type metadata accessor for CMLColumn();
  v28 = CMLColumn.__allocating_init(_:type:)(v52, 3);
  if (v3)
  {
    v31 = type metadata accessor for _UntypedColumn();
    v32 = v51;
    swift_deallocPartialClassInstance(v51, v31, 24, 7);
    return v32;
  }

  else
  {
    v29 = v51;
    *(v51 + 16) = v28;
    return v29;
  }
}

{
  v3 = v1;
  v28 = v2;
  v4 = tc_v1_flex_list_create(0);
  if (!v4)
  {
    BUG();
  }

  v5 = v4;
  v6 = type metadata accessor for CMLSequence();
  inited = swift_initStackObject(v6, v21);
  *(inited + 16) = v5;
  v27 = inited;
  *(inited + 24) = 1;
  v25 = *(a1 + 16);
  v30 = a1;
  if (v25)
  {
    v8 = a1;
    v29 = v1;
    v26 = lazy protocol witness table accessor for type [String : Double] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Double] and conformance <> [A : B], &demangling cache variable for type metadata for [String : Double], &protocol witness table for Double, &protocol conformance descriptor for <> [A : B]);

    v9 = 0;
    while (1)
    {
      v10 = *(v8 + 8 * v9 + 32);
      v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Double]);
      v24 = v26;
      v22[0] = v10;
      v11 = *__swift_project_boxed_opaque_existential_0Tm(v22, v23);
      swift_bridgeObjectRetain_n(v10, 2);
      v12 = specialized Dictionary<>.featureValue.getter(v11);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      v13 = v29;
      CMLSequence.append(_:)(v12);
      v29 = v13;
      if (v13)
      {
        break;
      }

      ++v9;

      v10;
      v8 = v30;
      if (v25 == v9)
      {
        v30;
        v14 = v28;
        v3 = v29;
        goto LABEL_8;
      }
    }

    swift_setDeallocating(v27);
    v17 = CMLFeatureValue.deinit();
    swift_deallocClassInstance(v17, 25, 7);
    v10;
    v16 = v30;
    v30;
    v14 = v28;
  }

  else
  {
    v14 = v28;
LABEL_8:
    type metadata accessor for CMLColumn();
    v15 = CMLColumn.__allocating_init(_:type:)(v27, 4);
    if (!v3)
    {
      v19 = v15;
      v30;
      *(v14 + 16) = v19;
      return v14;
    }

    v16 = v30;
  }

  v16;
  v18 = type metadata accessor for _UntypedColumn();
  swift_deallocPartialClassInstance(v14, v18, 24, 7);
  return v14;
}