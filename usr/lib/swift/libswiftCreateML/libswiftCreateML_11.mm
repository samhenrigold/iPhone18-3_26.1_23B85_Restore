uint64_t closure #1 in MLRecommender.init(trainingData:userColumn:itemColumn:ratingColumn:parameters:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLModel, MLModel_ptr);
  v3 = swift_task_alloc(208);
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = closure #1 in MLRandomForestRegressor.init(checkpoint:);
  return static MLModel.compile(_:)(a2);
}

Swift::Bool static MLRecommender.reportAnalytics(trainingData:userColumn:itemColumn:ratingColumn:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = a4;
  v58 = a3;
  v56 = a2;
  v57 = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v49 = &v49;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v53 = &v49;
  v52 = type metadata accessor for AnyColumn(0);
  v18 = *(v52 - 8);
  v19 = *(v18 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v50 = &v49;
  v22 = alloca(v19);
  v23 = alloca(v19);
  result = AnalyticsReporter.init()();
  if (result)
  {
    return result;
  }

  v54 = &v49;
  v59 = a5;
  if (a7)
  {
    v25 = String.count.getter();
  }

  else
  {
    v25 = 0;
  }

  v26 = v58;
  v27 = v56;
  AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_iterSimilarityRecommender, __PAIR128__(("he upper strict-triangular." + 0x8000000000000000), 0xD000000000000011), v25);
  DataFrame.subscript.getter(v27, v26);
  v28 = AnyColumn.wrappedElementType.getter(v27);
  v51 = *(v18 + 8);
  v51(&v49, v52);
  if (swift_dynamicCastMetatype(v28, &type metadata for String))
  {
    v29 = v53;
    DataFrame.subscript.getter(v27, v58, &type metadata for String);
    v30 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSSSg_11TabularData6ColumnVySSGTt0g5(v29);
    v31 = v59;
    v32 = v55;
  }

  else
  {
    v33 = swift_dynamicCastMetatype(v28, &type metadata for Int);
    v31 = v59;
    v32 = v55;
    v34 = v54;
    if (!v33)
    {
      goto LABEL_10;
    }

    DataFrame.subscript.getter(v56, v58, &type metadata for Int);
    v30 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSiSg_11TabularData6ColumnVySiGTt0g5(v34);
  }

  v35 = *(v30 + 16);
  v30;
  AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_iterSimilarityRecommender, __PAIR128__(0xEF73726573552066, 0x6F207265626D754ELL), v35);
LABEL_10:
  v36 = v50;
  DataFrame.subscript.getter(v32, v31);
  v37 = AnyColumn.wrappedElementType.getter(v32);
  v51(v36, v52);
  if (swift_dynamicCastMetatype(v37, &type metadata for String))
  {
    v38 = v53;
    DataFrame.subscript.getter(v32, v59, &type metadata for String);
    v39 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSSSg_11TabularData6ColumnVySSGTt0g5(v38);
  }

  else
  {
    if (!swift_dynamicCastMetatype(v37, &type metadata for Int))
    {
      goto LABEL_15;
    }

    v40 = v54;
    DataFrame.subscript.getter(v55, v59, &type metadata for Int);
    v39 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSiSg_11TabularData6ColumnVySiGTt0g5(v40);
  }

  v41 = *(v39 + 16);
  v39;
  AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_iterSimilarityRecommender, __PAIR128__(0xEF736D6574492066, 0x6F207265626D754ELL), v41);
LABEL_15:
  AnalyticsReporter.reportParameterSettings(model:parameterName:parameterValue:)(CreateML_ModelType_iterSimilarityRecommender, __PAIR128__(0xEF65707954207974, 0x6972616C696D6953), __PAIR128__(0xEF79746972616C69, 0x6D6973206D657449));
  v42 = *(a8 + 8);
  AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_iterSimilarityRecommender, __PAIR128__(0xE900000000000064, 0x6C6F687365726854), v42);
  AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_iterSimilarityRecommender, __PAIR128__(0xE900000000000074, 0x6E756F432078614DLL), *(a8 + 16));
  v43 = type metadata accessor for MLRecommender.ModelParameters(0);
  v44 = v49;
  outlined init with copy of DataFrame?(a8 + v43[7], v49);
  v45 = type metadata accessor for DataFrame(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v44, 1, v45);
  outlined destroy of DataFrame?(v44);
  if (EnumTagSinglePayload == 1 && *(a8 + v43[8] + 8) == 0xFF)
  {
    v47 = 0x6569666963657053;
    v48 = 0xE900000000000064;
  }

  else
  {
    v47 = 0x6669636570736E55;
    v48 = 0xEB00000000646569;
  }

  AnalyticsReporter.reportParameterSettings(model:parameterName:parameterValue:)(CreateML_ModelType_iterSimilarityRecommender, __PAIR128__(0xED0000736D657449, 0x207473657261654ELL), __PAIR128__(v48, v47));
  return AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_iterSimilarityRecommender, __PAIR128__(("Number of Ratings" + 0x8000000000000000), 0xD000000000000019), *(a8 + v43[9]));
}

void *closure #1 in static MLRecommender.extractNearestItems(itemColumn:parameters:)(void *a1)
{
  v40 = a1;
  v35 = v1;
  v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v44 = *(v41 - 8);
  v2 = *(v44 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v43 = &v33;
  v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v36 = *(v42 - 8);
  v5 = *(v36 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = AnyColumn.name.getter();
  v10 = v9;
  DataFrame.subscript.getter(v8, v9, &type metadata for String);
  v10;
  v34[0] = 0;
  v34[1] = 0xE000000000000000;
  v11 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  v12 = v42;
  v13 = v41;
  v14 = v43;
  OptionalColumnProtocol.filled(with:)(v34, v41, v11);
  (*(v44 + 8))(v14, v13);
  v15 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<String>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<String>>, &protocol conformance descriptor for FilledColumn<A>);
  v16 = dispatch thunk of Collection.count.getter(v12, v15);
  if (v16)
  {
    v39 = _swiftEmptyArrayStorage;
    v17 = 0;
    if (v16 > 0)
    {
      v17 = v16;
    }

    v44 = v16;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
    v18 = v15;
    v19 = v39;
    v38 = &v33;
    v43 = v18;
    dispatch thunk of Collection.startIndex.getter(v12, v18);
    v20 = v44;
    if (v44 < 0)
    {
      BUG();
    }

    v21 = v43;
    v22 = v42;
    v23 = v38;
    do
    {
      v44 = v20;
      v24 = v23;
      v25 = dispatch thunk of Collection.subscript.read(v34, v37, v22, v21);
      v41 = *v26;
      v27 = v26[1];

      v25(v34, 0);
      v39 = v19;
      v28 = v19[2];
      v29 = v28 + 1;
      if (v19[3] >> 1 <= v28)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19[3] >= 2uLL, v28 + 1, 1);
        v29 = v28 + 1;
        v24 = v38;
        v19 = v39;
      }

      v40 = v19;
      v19[2] = v29;
      v30 = 3 * v28;
      v19[v30 + 4] = v41;
      v19[v30 + 5] = v27;
      LOBYTE(v19[v30 + 6]) = 0;
      v31 = v42;
      v21 = v43;
      dispatch thunk of Collection.formIndex(after:)(v37, v42, v43);
      v20 = v44 - 1;
      v22 = v31;
      v19 = v40;
      v23 = v24;
    }

    while (v44 != 1);
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
    v22 = v12;
    v23 = &v33;
  }

  (*(v36 + 8))(v23, v22);
  result = v35;
  *v35 = v19;
  return result;
}

void *closure #2 in static MLRecommender.extractNearestItems(itemColumn:parameters:)()
{
  v31 = v0;
  v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v40 = *(v38 - 1);
  v1 = *(v40 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v39 = &v29;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  DataFrame.subscript.getter(0x72616C696D6973, 0xE700000000000000, &type metadata for String);
  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  v8 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  v9 = v38;
  v10 = v39;
  OptionalColumnProtocol.filled(with:)(v30, v38, v8);
  (*(v40 + 8))(v10, v9);
  v11 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<String>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<String>>, &protocol conformance descriptor for FilledColumn<A>);
  v12 = dispatch thunk of Collection.count.getter(v4, v11);
  if (v12)
  {
    v37 = _swiftEmptyArrayStorage;
    v13 = 0;
    if (v12 > 0)
    {
      v13 = v12;
    }

    v40 = v12;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    v14 = v11;
    v15 = v37;
    v36 = &v29;
    v35 = v4;
    v34 = v14;
    dispatch thunk of Collection.startIndex.getter(v4, v14);
    v16 = v40;
    if (v40 < 0)
    {
      BUG();
    }

    v17 = v34;
    v18 = v35;
    v19 = v36;
    do
    {
      v40 = v16;
      v20 = v19;
      v21 = dispatch thunk of Collection.subscript.read(v30, v33, v18, v17);
      v39 = *v22;
      v23 = v22[1];

      v21(v30, 0);
      v37 = v15;
      v24 = v15[2];
      v25 = v24 + 1;
      if (v15[3] >> 1 <= v24)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15[3] >= 2uLL, v24 + 1, 1);
        v25 = v24 + 1;
        v20 = v36;
        v15 = v37;
      }

      v38 = v15;
      v15[2] = v25;
      v26 = 3 * v24;
      v15[v26 + 4] = v39;
      v15[v26 + 5] = v23;
      LOBYTE(v15[v26 + 6]) = 0;
      v27 = v35;
      v17 = v34;
      dispatch thunk of Collection.formIndex(after:)(v33, v35, v34);
      v16 = v40 - 1;
      v18 = v27;
      v15 = v38;
      v19 = v20;
    }

    while (v40 != 1);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
    v18 = v4;
    v19 = &v29;
  }

  (*(v32 + 8))(v19, v18);
  result = v31;
  *v31 = v15;
  return result;
}

void *closure #3 in static MLRecommender.extractNearestItems(itemColumn:parameters:)(uint64_t a1)
{
  v44 = a1;
  v38 = v1;
  v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v45 = *(v42 - 8);
  v2 = *(v45 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<Int>>);
  v39 = *(v43 - 8);
  v5 = *(v39 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v46 = v37;
  v8 = AnyColumn.name.getter();
  v10 = v9;
  DataFrame.subscript.getter(v8, v9, &type metadata for Int);
  v10;
  v37[0] = 0;
  v11 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
  v12 = v43;
  v13 = v42;
  OptionalColumnProtocol.filled(with:)(v37, v42, v11);
  (*(v45 + 8))(v37, v13);
  v14 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<Int>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<Int>>, &protocol conformance descriptor for FilledColumn<A>);
  v15 = dispatch thunk of Collection.count.getter(v12, v14);
  if (v15)
  {
    v16 = v15;
    v41 = _swiftEmptyArrayStorage;
    v17 = 0;
    if (v15 > 0)
    {
      v17 = v15;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
    v18 = v14;
    v19 = v41;
    v45 = v18;
    dispatch thunk of Collection.startIndex.getter(v12, v18);
    if (v16 < 0)
    {
      BUG();
    }

    v42 = v16;
    v20 = v45;
    v21 = v43;
    do
    {
      v22 = v20;
      v23 = v21;
      v24 = dispatch thunk of Collection.subscript.read(v37, v40, v21, v22);
      v26 = *v25;
      v24(v37, 0);
      v41 = v19;
      v27 = v23;
      v28 = v19[2];
      v29 = v19[3];
      v30 = v28 + 1;
      if (v29 >> 1 <= v28)
      {
        v44 = v26;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v29 >= 2, v30, 1);
        v26 = v44;
        v27 = v43;
        v19 = v41;
      }

      v19[2] = v30;
      v31 = 3 * v28;
      v19[v31 + 4] = v26;
      v19[v31 + 5] = 0;
      LOBYTE(v19[v31 + 6]) = 1;
      v32 = v46;
      v33 = v27;
      v20 = v45;
      dispatch thunk of Collection.formIndex(after:)(v40, v27, v45);
      v34 = v42-- == 1;
      v21 = v33;
    }

    while (!v34);
    v35 = v32;
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
    v35 = v46;
    v21 = v12;
  }

  (*(v39 + 8))(v35, v21);
  result = v38;
  *v38 = v19;
  return result;
}

void *closure #4 in static MLRecommender.extractNearestItems(itemColumn:parameters:)()
{
  v34 = v0;
  v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v41 = *(v39 - 8);
  v1 = *(v41 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<Int>>);
  v35 = *(v40 - 8);
  v4 = *(v35 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v42 = v33;
  DataFrame.subscript.getter(0x72616C696D6973, 0xE700000000000000, &type metadata for Int);
  v33[0] = 0;
  v7 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
  v8 = v39;
  OptionalColumnProtocol.filled(with:)(v33, v39, v7);
  v9 = v40;
  (*(v41 + 8))(v33, v8);
  v10 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<Int>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<Int>>, &protocol conformance descriptor for FilledColumn<A>);
  v11 = dispatch thunk of Collection.count.getter(v9, v10);
  if (v11)
  {
    v12 = v11;
    v38 = _swiftEmptyArrayStorage;
    v13 = 0;
    if (v11 > 0)
    {
      v13 = v11;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    v14 = v10;
    v15 = v38;
    v41 = v14;
    dispatch thunk of Collection.startIndex.getter(v9, v14);
    if (v12 < 0)
    {
      BUG();
    }

    v39 = v12;
    v16 = v41;
    v17 = v40;
    do
    {
      v18 = v16;
      v19 = v17;
      v20 = dispatch thunk of Collection.subscript.read(v33, v37, v17, v18);
      v22 = *v21;
      v20(v33, 0);
      v38 = v15;
      v23 = v19;
      v24 = v15[2];
      v25 = v15[3];
      v26 = v24 + 1;
      if (v25 >> 1 <= v24)
      {
        v36 = v22;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v25 >= 2, v26, 1);
        v22 = v36;
        v23 = v40;
        v15 = v38;
      }

      v15[2] = v26;
      v27 = 3 * v24;
      v15[v27 + 4] = v22;
      v15[v27 + 5] = 0;
      LOBYTE(v15[v27 + 6]) = 1;
      v28 = v42;
      v29 = v23;
      v16 = v41;
      dispatch thunk of Collection.formIndex(after:)(v37, v23, v41);
      v30 = v39-- == 1;
      v17 = v29;
    }

    while (!v30);
    v31 = v28;
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
    v31 = v42;
    v17 = v9;
  }

  (*(v35 + 8))(v31, v17);
  result = v34;
  *v34 = v15;
  return result;
}

uint64_t MLRecommender.init(trainingData:userColumn:itemColumn:ratingColumn:parameters:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8)
{
  v20 = a4;
  v21 = a3;
  v25 = v8;
  v23 = a2;
  v22 = a6;
  v24 = a5;
  v9 = *(*(type metadata accessor for MLRecommender.ModelParameters(0) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = *(*(type metadata accessor for DataFrame(0) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v15 = *(a1 + 8);
  v18 = *a1;
  v19 = v15;
  DataFrame.init(_:)(&v18);
  outlined init with copy of MLRecommender.ModelParameters(a8, v17);
  MLRecommender.init(trainingData:userColumn:itemColumn:ratingColumn:parameters:)(v17, v23, v21, v20, v24, v22, a7, v17);
  return outlined destroy of MLRecommender.ModelParameters(a8);
}

uint64_t *MLRecommender.recommendations(fromUsers:maxCount:restrictingToItems:excluding:excludingObserved:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, int a5, __m128 a6)
{
  v206._countAndFlagsBits = a3;
  v10 = v6;
  v197 = a2;
  ML13MLRecommenderV10IdentifierO_SayAHGTt0g5 = v7;
  LODWORD(v188) = a5;
  v176 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v175 = *(v176 - 8);
  v11 = *(v175 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v177 = &v163;
  v183 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v182 = *(v183 - 8);
  v14 = *(v182 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v165 = &v163;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v178 = &v163;
  v19 = alloca(v14);
  v20 = alloca(v14);
  v189 = &v163;
  v174 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v173 = *(v174 - 8);
  v21 = *(v173 + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v166 = &v163;
  v24 = alloca(v21);
  v25 = alloca(v21);
  v184 = &v163;
  v26 = type metadata accessor for DataFrame(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = alloca(v28);
  v30 = alloca(v28);
  v31 = alloca(v28);
  v32 = alloca(v28);
  if (!*(a1 + 16))
  {
    v38 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    result = swift_allocError(&type metadata for MLCreateError, v38, 0, 0);
    *v39 = 0xD000000000000050;
    *(v39 + 8) = "user identifiers." + 0x8000000000000000;
    *(v39 + 16) = 0;
    *(v39 + 32) = 0;
    *(v39 + 48) = 0;
    *v10 = result;
    *(v10 + 8) = 1;
    return result;
  }

  v168 = &v163;
  v196 = &v163;
  v167 = v26;
  v179 = v27;
  v181 = v10;
  v33 = *a4;
  v34 = *(a4 + 8);
  v35 = ML13MLRecommenderV10IdentifierO_SayAHGTt0g5;
  v36 = MLRecommender.mapUsers(_:)(a1);
  if (v35)
  {
    result = v181;
    *v181 = v35;
LABEL_4:
    *(result + 8) = 1;
    return result;
  }

  LOBYTE(v200) = v34;
  v190 = 0;
  v180 = v33;
  countAndFlagsBits = v206._countAndFlagsBits;
  if (v206._countAndFlagsBits)
  {
    v41 = v36;

    v42 = v190;
    v43 = MLRecommender.mapItems(_:)(countAndFlagsBits);
    if (v42)
    {
      swift_bridgeObjectRelease_n(v41, 2);
      result = v181;
      *v181 = v42;
      goto LABEL_4;
    }

    v190 = 0;
  }

  else
  {
    v41 = v36;

    v43 = _swiftEmptyArrayStorage;
  }

  ML13MLRecommenderV10IdentifierO_SayAHGTt0g5 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8CreateML13MLRecommenderV10IdentifierO_SayAHGTt0g5(v43);
  __src = v8;
  if (v200 == 0xFF)
  {
    v52 = _swiftEmptyArrayStorage;
    goto LABEL_38;
  }

  v199 = v41;
  v206._countAndFlagsBits = v8[20];
  v198 = v8[21];
  v44 = v180;
  v171 = v180;
  v45 = v200;
  LOBYTE(v200) = v200 & 1;
  v172 = v200;
  outlined copy of Result<_DataTable, Error>(v180, v45);
  outlined copy of Result<_DataTable, Error>(v44, v45);
  v46._countAndFlagsBits = v206._countAndFlagsBits;
  v46._object = v198;
  MLDataTable.subscript.getter(v46);
  outlined consume of Result<_DataTable, Error>(v171, v172);
  v195 = v202;
  BYTE6(v206._object) = v203;
  v206._countAndFlagsBits = v8[22];
  v198 = v8[23];
  v171 = v44;
  v172 = v200;
  outlined copy of Result<_DataTable, Error>(v44, v45);
  v46._countAndFlagsBits = v206._countAndFlagsBits;
  v46._object = v198;
  MLDataTable.subscript.getter(v46);
  outlined consume of Result<_DataTable, Error>(v171, v172);
  v193 = v202;
  LOBYTE(v192) = v203;
  v202 = v44;
  LOBYTE(v203) = v200;
  outlined copy of Result<_DataTable, Error>(v44, v45);
  outlined copy of Result<_DataTable, Error>(v44, v45);
  v47 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v202, v203);
  v185 = v45;
  outlined consume of MLDataTable?(v44, v45);
  v169 = v47;
  v48 = v47 == 0;
  if (v47 < 0)
  {
    BUG();
  }

  v186 = v192;
  v49 = BYTE6(v206._object);
  v187 = BYTE6(v206._object);
  v50 = ML13MLRecommenderV10IdentifierO_SayAHGTt0g5;
  if (v48)
  {
    v52 = _swiftEmptyArrayStorage;
LABEL_37:
    outlined consume of Result<_DataTable, Error>(v193, v186);
    outlined consume of Result<_DataTable, Error>(v195, v187);
    outlined consume of MLDataTable?(v180, v185);
    v41 = v199;
LABEL_38:
    v63 = __src;
    memcpy(__dst, __src, sizeof(__dst));
    v64 = v190;
    v65 = specialized RecommenderModel.recommend<A>(users:limit:allowedItems:excludedInteractions:omittingObservedInteractions:)(v41, v197, ML13MLRecommenderV10IdentifierO_SayAHGTt0g5, v52, v188, *a6.i64);
    v66 = v64;
    if (v64)
    {
      v52;
      swift_bridgeObjectRelease_n(v41, 2);
      result = ML13MLRecommenderV10IdentifierO_SayAHGTt0g5;
      v67 = v181;
    }

    else
    {
      v200 = v65;
      v199 = v41;
      v41;
      v68 = ML13MLRecommenderV10IdentifierO_SayAHGTt0g5;
      ML13MLRecommenderV10IdentifierO_SayAHGTt0g5;
      DataFrame.init()(v68);
      v198 = type metadata accessor for MLRecommender(0);
      v69 = v198[10];
      v192 = v63[20];
      v70 = v63[21];
      v71 = *(v63 + v69);
      v195 = v70;

      v193 = v52;
      if (v71)
      {
        ML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_ALs5NeverOTg503_s8d4ML13g136V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFAC10h5OAA14F59VyA2QGcfu0_33_7b0562fa90875ac3238718c5c70eced2AtQTf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_ALs5NeverOTg503_s8d4ML13g136V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFAC10h5OAA14F59VyA2QGcfu0_33_7b0562fa90875ac3238718c5c70eced2AtQTf3nnnpk_nTf1cn_nTm(v200);
        v73 = ML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_ALs5NeverOTg503_s8d4ML13g136V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFAC10h5OAA14F59VyA2QGcfu0_33_7b0562fa90875ac3238718c5c70eced2AtQTf3nnnpk_nTf1cn_nTm;
        v191 = 0;
        v74 = ML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_ALs5NeverOTg503_s8d4ML13g136V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFAC10h5OAA14F59VyA2QGcfu0_33_7b0562fa90875ac3238718c5c70eced2AtQTf3nnnpk_nTf1cn_nTm[2];
        if (v74)
        {
          v202 = _swiftEmptyArrayStorage;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v74, 0);
          v75 = v202;
          ML13MLRecommenderV10IdentifierO_SayAHGTt0g5 = v73;
          v76 = (v73 + 48);
          do
          {
            if (*v76 != 1)
            {
              BUG();
            }

            v77 = *(v76 - 2);
            v202 = v75;
            v78 = *(v75 + 2);
            v79 = *(v75 + 3);
            v80 = v78 + 1;
            if (v79 >> 1 <= v78)
            {
              v206._countAndFlagsBits = v78 + 1;
              v197 = v77;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v79 >= 2, v80, 1);
              v80 = v206._countAndFlagsBits;
              v77 = v197;
              v75 = v202;
            }

            *(v75 + 2) = v80;
            *&v75[8 * v78 + 32] = v77;
            v76 += 24;
            --v74;
          }

          while (v74);
          ML13MLRecommenderV10IdentifierO_SayAHGTt0g5;
        }

        else
        {
          ML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_ALs5NeverOTg503_s8d4ML13g136V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFAC10h5OAA14F59VyA2QGcfu0_33_7b0562fa90875ac3238718c5c70eced2AtQTf3nnnpk_nTf1cn_nTm;
          v75 = _swiftEmptyArrayStorage;
        }

        v202 = v75;
        v90 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
        v91 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Int] and conformance [A], &demangling cache variable for type metadata for [Int], &protocol conformance descriptor for [A]);
        v92 = v189;
        Column.init<A>(name:contents:)(v192, v195, &v202, &type metadata for Int, v90, v91);
        DataFrame.append<A>(column:)(v92, &type metadata for Int);
        v93 = v92;
        v94 = v183;
        v95 = v182;
      }

      else
      {
        v81 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_ALs5NeverOTg503_s8d4ML13g136V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFAC10h5OAA14F59VyA2QGcfu0_33_7b0562fa90875ac3238718c5c70eced2AtQTf3nnnpk_nTf1cn_nTm(v200);
        v82 = v81;
        v191 = 0;
        v83 = v81[2];
        if (v83)
        {
          v202 = _swiftEmptyArrayStorage;
          v188 = v83;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v83, 0);
          v84 = v202;
          v190 = v82;
          v85 = v82 + 6;
          do
          {
            if (*v85)
            {
              BUG();
            }

            v206._countAndFlagsBits = *(v85 - 2);
            v86 = *(v85 - 1);
            v202 = v84;
            v87 = *(v84 + 2);
            v189 = *(v84 + 3);
            v88 = v189 >> 1;
            ML13MLRecommenderV10IdentifierO_SayAHGTt0g5 = v87 + 1;
            v197 = v86;

            if (v88 <= v87)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v189 >= 2, ML13MLRecommenderV10IdentifierO_SayAHGTt0g5, 1);
              v84 = v202;
            }

            *(v84 + 2) = ML13MLRecommenderV10IdentifierO_SayAHGTt0g5;
            v89 = 16 * v87;
            *&v84[v89 + 32] = v206._countAndFlagsBits;
            *&v84[v89 + 40] = v197;
            v85 += 24;
            --v188;
          }

          while (v188);
          v190;
        }

        else
        {
          v81;
          v84 = _swiftEmptyArrayStorage;
        }

        v202 = v84;
        v96 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
        v97 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
        v98 = v184;
        Column.init<A>(name:contents:)(v192, v195, &v202, &type metadata for String, v96, v97);
        DataFrame.append<A>(column:)(v98, &type metadata for String);
        v93 = v98;
        v94 = v174;
        v95 = v173;
      }

      (*(v95 + 8))(v93, v94);
      v99 = *(__src + 22);
      v100 = *(__src + 23);
      v101 = *(__src + v198[11]);

      v184 = v100;
      v198 = v99;
      if (v101)
      {
        v102 = v191;
        ML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_ALs5NeverOTg503_s8d4ML13g136V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFAC10h5OAA14F58VyA2QGcfu2_32d1e1b7ed5e9e4cd3ca03cf5b44db102cAtQTf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_ALs5NeverOTg503_s8d4ML13g136V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFAC10h5OAA14F58VyA2QGcfu2_32d1e1b7ed5e9e4cd3ca03cf5b44db102cAtQTf3nnnpk_nTf1cn_nTm(v200);
        v104 = ML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_ALs5NeverOTg503_s8d4ML13g136V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFAC10h5OAA14F58VyA2QGcfu2_32d1e1b7ed5e9e4cd3ca03cf5b44db102cAtQTf3nnnpk_nTf1cn_nTm;
        __src = v102;
        v105 = ML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_ALs5NeverOTg503_s8d4ML13g136V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFAC10h5OAA14F58VyA2QGcfu2_32d1e1b7ed5e9e4cd3ca03cf5b44db102cAtQTf3nnnpk_nTf1cn_nTm[2];
        if (v105)
        {
          v202 = _swiftEmptyArrayStorage;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v105, 0);
          v106 = v202;
          ML13MLRecommenderV10IdentifierO_SayAHGTt0g5 = v104;
          v107 = (v104 + 48);
          do
          {
            if (*v107 != 1)
            {
              BUG();
            }

            v108 = *(v107 - 2);
            v202 = v106;
            v109 = *(v106 + 2);
            v110 = *(v106 + 3);
            v111 = v109 + 1;
            if (v110 >> 1 <= v109)
            {
              v206._countAndFlagsBits = v109 + 1;
              v197 = v108;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v110 >= 2, v111, 1);
              v111 = v206._countAndFlagsBits;
              v108 = v197;
              v106 = v202;
            }

            *(v106 + 2) = v111;
            *&v106[8 * v109 + 32] = v108;
            v107 += 24;
            --v105;
          }

          while (v105);
          ML13MLRecommenderV10IdentifierO_SayAHGTt0g5;
        }

        else
        {
          ML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_ALs5NeverOTg503_s8d4ML13g136V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFAC10h5OAA14F58VyA2QGcfu2_32d1e1b7ed5e9e4cd3ca03cf5b44db102cAtQTf3nnnpk_nTf1cn_nTm;
          v106 = _swiftEmptyArrayStorage;
        }

        v202 = v106;
        v122 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
        v123 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Int] and conformance [A], &demangling cache variable for type metadata for [Int], &protocol conformance descriptor for [A]);
        v124 = v178;
        Column.init<A>(name:contents:)(v198, v184, &v202, &type metadata for Int, v122, v123);
        DataFrame.append<A>(column:)(v124, &type metadata for Int);
        v125 = v124;
        v126 = v183;
        v127 = v182;
      }

      else
      {
        v112 = v191;
        v113 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_ALs5NeverOTg503_s8d4ML13g136V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFAC10h5OAA14F58VyA2QGcfu2_32d1e1b7ed5e9e4cd3ca03cf5b44db102cAtQTf3nnnpk_nTf1cn_nTm(v200);
        v114 = v113;
        __src = v112;
        v115 = v113[2];
        if (v115)
        {
          v202 = _swiftEmptyArrayStorage;
          v188 = v115;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v115, 0);
          v116 = v202;
          v178 = v114;
          v117 = v114 + 6;
          do
          {
            if (*v117)
            {
              BUG();
            }

            v206._countAndFlagsBits = *(v117 - 2);
            v118 = *(v117 - 1);
            v202 = v116;
            v119 = *(v116 + 2);
            v189 = *(v116 + 3);
            v120 = v189 >> 1;
            ML13MLRecommenderV10IdentifierO_SayAHGTt0g5 = v119 + 1;
            v197 = v118;

            if (v120 <= v119)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v189 >= 2, ML13MLRecommenderV10IdentifierO_SayAHGTt0g5, 1);
              v116 = v202;
            }

            *(v116 + 2) = ML13MLRecommenderV10IdentifierO_SayAHGTt0g5;
            v121 = 16 * v119;
            *&v116[v121 + 32] = v206._countAndFlagsBits;
            *&v116[v121 + 40] = v197;
            v117 += 24;
            --v188;
          }

          while (v188);
          v178;
        }

        else
        {
          v113;
          v116 = _swiftEmptyArrayStorage;
        }

        v202 = v116;
        v128 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
        v129 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
        v130 = v166;
        Column.init<A>(name:contents:)(v198, v184, &v202, &type metadata for String, v128, v129);
        DataFrame.append<A>(column:)(v130, &type metadata for String);
        v125 = v130;
        v126 = v174;
        v127 = v173;
      }

      (*(v127 + 8))(v125, v126);
      v131 = v200;
      v132 = __src;
      ML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_Sds5NeverOTg503_s8d4ML13g138V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFSdAA14f6VyAC10H57OASGcfu4_32ba0ef4f5a3599e9812b06a0e93fdc0a1ATSdTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_Sds5NeverOTg503_s8d4ML13g138V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFSdAA14f6VyAC10H57OASGcfu4_32ba0ef4f5a3599e9812b06a0e93fdc0a1ATSdTf3nnnpk_nTf1cn_n(v200);
      ML13MLRecommenderV10IdentifierO_SayAHGTt0g5 = v132;
      v202 = ML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_Sds5NeverOTg503_s8d4ML13g138V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFSdAA14f6VyAC10H57OASGcfu4_32ba0ef4f5a3599e9812b06a0e93fdc0a1ATSdTf3nnnpk_nTf1cn_n;
      v134 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
      v135 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Double] and conformance [A], &demangling cache variable for type metadata for [Double], &protocol conformance descriptor for [A]);
      v136 = v177;
      Column.init<A>(name:contents:)(0x65726F6373, 0xE500000000000000, &v202, &type metadata for Double, v134, v135);
      v137 = v196;
      DataFrame.append<A>(column:)(v136, &type metadata for Double);
      v138 = ML13MLRecommenderV10IdentifierO_SayAHGTt0g5;
      ML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_Sis5NeverOTg503_s8d4ML13g138V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFSiAA14f6VyAC10H58OASGcfu5_33_4d997128bfdac600b62536b5ddbe07b5ATSiTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_Sis5NeverOTg503_s8d4ML13g138V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFSiAA14f6VyAC10H58OASGcfu5_33_4d997128bfdac600b62536b5ddbe07b5ATSiTf3nnnpk_nTf1cn_n(v131);
      ML13MLRecommenderV10IdentifierO_SayAHGTt0g5 = v138;
      v131;
      v193;
      v199;
      v202 = ML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_Sis5NeverOTg503_s8d4ML13g138V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFSiAA14f6VyAC10H58OASGcfu5_33_4d997128bfdac600b62536b5ddbe07b5ATSiTf3nnnpk_nTf1cn_n;
      v140 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
      v141 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Int] and conformance [A], &demangling cache variable for type metadata for [Int], &protocol conformance descriptor for [A]);
      v142 = v165;
      Column.init<A>(name:contents:)(1802396018, 0xE400000000000000, &v202, &type metadata for Int, v140, v141);
      DataFrame.append<A>(column:)(v142, &type metadata for Int);
      v143 = v168;
      v144 = v137;
      v145 = v167;
      *a6.i64 = (*(v179 + 16))(v168, v144, v167);
      v67 = v181;
      v146 = ML13MLRecommenderV10IdentifierO_SayAHGTt0g5;
      MLDataTable.init(_:convertArraysToShapedArrays:)(v143, 0, a6);
      if (!v146)
      {
        (*(v182 + 8))(v142, v183);
        (*(v175 + 8))(v177, v176);
        return (*(v179 + 8))(v196, v145);
      }

      (*(v182 + 8))(v142, v183);
      (*(v175 + 8))(v177, v176);
      result = (*(v179 + 8))(v196, v145);
      v66 = v146;
    }

    *v67 = v66;
    *(v67 + 8) = 1;
    return result;
  }

  v51 = 0;
  v170 = type metadata accessor for MLRecommender(0);
  v52 = _swiftEmptyArrayStorage;
  HIBYTE(v206._object) = *(__src + *(v170 + 40));
  v201 = HIBYTE(v206._object) & 1;
  while (1)
  {
    if (HIBYTE(v206._object))
    {
      if (v49)
      {
        v147 = 0xD000000000000022;
      }

      else
      {
        v53 = v195;
        outlined copy of Result<_DataTable, Error>(v195, 0);
        _UntypedColumn.valueAtIndex(index:)(v51, *a6.i64);
        outlined consume of Result<_DataTable, Error>(v53, 0);
        v54 = v202;
        if (!v204)
        {
          v206._countAndFlagsBits = 0;
          goto LABEL_22;
        }

        v147 = 0xD000000000000022;
        outlined consume of MLDataValue(v202, v203, v204);
      }

      v52;
      v50;
      swift_bridgeObjectRelease_n(v199, 2);
      v148 = " or Int but it contains ";
      goto LABEL_93;
    }

    if (v49)
    {
      goto LABEL_84;
    }

    v55 = v195;
    outlined copy of Result<_DataTable, Error>(v195, 0);
    _UntypedColumn.valueAtIndex(index:)(v51, *a6.i64);
    outlined consume of Result<_DataTable, Error>(v55, 0);
    v54 = v202;
    if (v204 != 2)
    {
      outlined consume of MLDataValue(v202, v203, v204);
LABEL_84:
      v52;
      v50;
      swift_bridgeObjectRelease_n(v199, 2);
      v147 = 0xD000000000000021;
      v148 = "items identifiers.";
      goto LABEL_93;
    }

    v206._countAndFlagsBits = v203;
LABEL_22:
    v56 = *(__src + *(v170 + 44));
    v200 = v54;
    LOBYTE(v198) = v56;
    if (!v56)
    {
      break;
    }

    if (v192)
    {
      v149 = v50;
      v150 = v199;
      v199;
      v149;
      object_high = HIBYTE(v206._object);
      v152 = v54;
LABEL_90:
      outlined consume of MLRecommender.Identifier(v152, v206._countAndFlagsBits, object_high);
      v52;
      v150;
      v147 = 0xD000000000000023;
      v148 = " user identifiers.";
      goto LABEL_93;
    }

    v57 = v193;
    outlined copy of Result<_DataTable, Error>(v193, 0);
    _UntypedColumn.valueAtIndex(index:)(v51, *a6.i64);
    outlined consume of Result<_DataTable, Error>(v57, 0);
    v58 = v202;
    if (v204)
    {
      outlined consume of MLDataValue(v202, v203, v204);
      v158 = v50;
      v150 = v199;
      v199;
      v158;
      object_high = HIBYTE(v206._object);
      v152 = v200;
      goto LABEL_90;
    }

    v191 = 0;
LABEL_29:
    if (!swift_isUniquelyReferenced_nonNull_native(v52))
    {
      v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v52 + 2) + 1, 1, v52);
    }

    v60 = *(v52 + 2);
    v61 = v52;
    if (*(v52 + 3) >> 1 <= v60)
    {
      v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v52 + 3) >= 2uLL, v60 + 1, 1, v52);
    }

    ++v51;
    *(v61 + 2) = v60 + 1;
    v52 = v61;
    v62 = 48 * v60;
    *&v52[v62 + 32] = v200;
    *&v52[v62 + 40] = v206._countAndFlagsBits;
    v52[v62 + 48] = v201;
    *&v52[v62 + 56] = v58;
    *&v52[v62 + 64] = v191;
    v52[v62 + 72] = v198;
    v50 = ML13MLRecommenderV10IdentifierO_SayAHGTt0g5;
    v49 = BYTE6(v206._object);
    if (v169 == v51)
    {
      goto LABEL_37;
    }
  }

  if (v192)
  {
    v153 = v50;
    v154 = v199;
    v199;
    v155 = v153;
    v147 = 0xD000000000000022;
    v155;
    v156 = HIBYTE(v206._object);
    v157 = v54;
    goto LABEL_92;
  }

  v59 = v193;
  outlined copy of Result<_DataTable, Error>(v193, 0);
  _UntypedColumn.valueAtIndex(index:)(v51, *a6.i64);
  outlined consume of Result<_DataTable, Error>(v59, 0);
  v58 = v202;
  if (v204 == 2)
  {
    v191 = v203;
    goto LABEL_29;
  }

  outlined consume of MLDataValue(v202, v203, v204);
  v159 = v50;
  v154 = v199;
  v199;
  v160 = v159;
  v147 = 0xD000000000000022;
  v160;
  v156 = HIBYTE(v206._object);
  v157 = v200;
LABEL_92:
  outlined consume of MLRecommender.Identifier(v157, v206._countAndFlagsBits, v156);
  v52;
  v154;
  v148 = " items identifiers.";
LABEL_93:
  v161 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v161, 0, 0);
  *v162 = v147;
  *(v162 + 8) = v148 | 0x8000000000000000;
  *(v162 + 16) = 0;
  *(v162 + 32) = 0;
  *(v162 + 48) = 0;
  swift_willThrow();
  outlined consume of MLDataTable?(v180, v185);
  outlined consume of Result<_DataTable, Error>(v195, v187);
  return outlined consume of Result<_DataTable, Error>(v193, v186);
}

void *MLRecommender.mapUsers(_:)(uint64_t a1)
{
  v3 = type metadata accessor for MLRecommender(0);
  v4 = *(a1 + 16);
  if (!*(v2 + *(v3 + 40)))
  {
    if (v4)
    {
      v31 = v1;
      v34 = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
      result = _swiftEmptyArrayStorage;
      v11 = a1 + 32;
      while (1)
      {
        v30 = v4;
        v32 = result;
        v33 = v11;
        outlined init with copy of TabularRegressionTask(v11, v23);
        v12 = v24;
        v13 = v25;
        __swift_project_boxed_opaque_existential_0Tm(v23, v24);
        (v13[1])(v12, v13);
        v14 = v27;
        if (v29 != 2)
        {
          break;
        }

        v26 = v28;
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        result = v32;
        v34 = v32;
        v15 = v32[2];
        v16 = v15 + 1;
        if (v32[3] >> 1 <= v15)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v32[3] >= 2uLL, v16, 1);
          result = v34;
        }

        result[2] = v16;
        v17 = 3 * v15;
        result[v17 + 4] = v14;
        result[v17 + 5] = v26;
        LOBYTE(result[v17 + 6]) = 0;
        v11 = (v33 + 5);
        v4 = v30 - 1;
        if (v30 == 1)
        {
          return result;
        }
      }

      outlined consume of MLDataValue(v27, v28, v29);
      v18 = "items identifiers." + 0x8000000000000000;
      v22 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v22, 0, 0);
      v21 = 0xD000000000000021;
      goto LABEL_19;
    }

    return _swiftEmptyArrayStorage;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v31 = v1;
  v34 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  result = _swiftEmptyArrayStorage;
  for (i = a1 + 32; ; i += 40)
  {
    v30 = v4;
    v32 = result;
    outlined init with copy of TabularRegressionTask(i, v23);
    v7 = v24;
    v33 = v25;
    __swift_project_boxed_opaque_existential_0Tm(v23, v24);
    v33[1](v7);
    if (v29)
    {
      break;
    }

    v33 = v27;
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    result = v32;
    v34 = v32;
    v8 = v32[2];
    v9 = v8 + 1;
    if (v32[3] >> 1 <= v8)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v32[3] >= 2uLL, v9, 1);
      result = v34;
    }

    result[2] = v9;
    v10 = 3 * v8;
    result[v10 + 4] = v33;
    result[v10 + 5] = 0;
    LOBYTE(result[v10 + 6]) = 1;
    v4 = v30 - 1;
    if (v30 == 1)
    {
      return result;
    }
  }

  outlined consume of MLDataValue(v27, v28, v29);
  v18 = " or Int but it contains " + 0x8000000000000000;
  v19 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v19, 0, 0);
  v21 = 0xD000000000000022;
LABEL_19:
  *v20 = v21;
  *(v20 + 8) = v18;
  *(v20 + 16) = 0;
  *(v20 + 32) = 0;
  *(v20 + 48) = 0;
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
}

void *MLRecommender.mapItems(_:)(uint64_t a1)
{
  v3 = type metadata accessor for MLRecommender(0);
  v4 = *(a1 + 16);
  if (!*(v2 + *(v3 + 44)))
  {
    if (v4)
    {
      v31 = v1;
      v34 = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
      result = _swiftEmptyArrayStorage;
      v11 = a1 + 32;
      while (1)
      {
        v30 = v4;
        v32 = result;
        v33 = v11;
        outlined init with copy of TabularRegressionTask(v11, v23);
        v12 = v24;
        v13 = v25;
        __swift_project_boxed_opaque_existential_0Tm(v23, v24);
        (v13[1])(v12, v13);
        v14 = v27;
        if (v29 != 2)
        {
          break;
        }

        v26 = v28;
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        result = v32;
        v34 = v32;
        v15 = v32[2];
        v16 = v15 + 1;
        if (v32[3] >> 1 <= v15)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v32[3] >= 2uLL, v16, 1);
          result = v34;
        }

        result[2] = v16;
        v17 = 3 * v15;
        result[v17 + 4] = v14;
        result[v17 + 5] = v26;
        LOBYTE(result[v17 + 6]) = 0;
        v11 = (v33 + 5);
        v4 = v30 - 1;
        if (v30 == 1)
        {
          return result;
        }
      }

      outlined consume of MLDataValue(v27, v28, v29);
      v18 = " item identifiers." + 0x8000000000000000;
      v22 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v22, 0, 0);
      v21 = 0xD000000000000021;
      goto LABEL_19;
    }

    return _swiftEmptyArrayStorage;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v31 = v1;
  v34 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  result = _swiftEmptyArrayStorage;
  for (i = a1 + 32; ; i += 40)
  {
    v30 = v4;
    v32 = result;
    outlined init with copy of TabularRegressionTask(i, v23);
    v7 = v24;
    v33 = v25;
    __swift_project_boxed_opaque_existential_0Tm(v23, v24);
    v33[1](v7);
    if (v29)
    {
      break;
    }

    v33 = v27;
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    result = v32;
    v34 = v32;
    v8 = v32[2];
    v9 = v8 + 1;
    if (v32[3] >> 1 <= v8)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v32[3] >= 2uLL, v9, 1);
      result = v34;
    }

    result[2] = v9;
    v10 = 3 * v8;
    result[v10 + 4] = v33;
    result[v10 + 5] = 0;
    LOBYTE(result[v10 + 6]) = 1;
    v4 = v30 - 1;
    if (v30 == 1)
    {
      return result;
    }
  }

  outlined consume of MLDataValue(v27, v28, v29);
  v18 = " recommendation." + 0x8000000000000000;
  v19 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v19, 0, 0);
  v21 = 0xD000000000000022;
LABEL_19:
  *v20 = v21;
  *(v20 + 8) = v18;
  *(v20 + 16) = 0;
  *(v20 + 32) = 0;
  *(v20 + 48) = 0;
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
}

void *specialized RecommenderModel.recommend<A>(users:limit:allowedItems:excludedInteractions:omittingObservedInteractions:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, double a6)
{
  v7 = a5;
  if (*(a4 + 16))
  {
    v61 = *(a4 + 16);

    v64 = a4;
    v9 = (a4 + 72);
    v78 = _swiftEmptyDictionarySingleton;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      v73 = v10;
      v77 = v11;
      v75 = *(v9 - 5);
      v76 = *(v9 - 4);
      LODWORD(v70) = *(v9 - 24);
      v13 = *(v9 - 2);
      v14 = *(v9 - 1);
      v72 = v9;
      v15 = *v9;
      outlined copy of MLRecommender.Identifier(v75, v76, v70);
      outlined copy of MLRecommender.Identifier(v13, v14, v15);
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v73, 0);
      v16 = swift_allocObject(&unk_390678, 32, 7);
      *(v16 + 16) = specialized implicit closure #1 in RecommenderModel.recommend<A>(users:limit:allowedItems:excludedInteractions:omittingObservedInteractions:);
      v71 = v16;
      *(v16 + 24) = 0;
      v74 = v13;
      v60 = v14;
      LODWORD(v73) = v15;
      outlined copy of MLRecommender.Identifier(v13, v14, v15);
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v77, v12);
      v17 = v78;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v78);
      v68[0] = v17;
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v75, v76, v70);
      LOBYTE(v77) = v20;
      v21 = (v20 & 1) == 0;
      v22 = __OFADD__(v17[2], v21);
      v23 = v17[2] + v21;
      if (v22)
      {
        BUG();
      }

      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<MLRecommender.Identifier, Set<MLRecommender.Identifier>>);
      v24 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v23);
      v25 = v68[0];
      v78 = v68[0];
      if (v24)
      {
        v26 = v76;
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v75, v76, v70);
        LOBYTE(v28) = v28 & 1;
        v29 = v77;
        if ((v77 & 1) != v28)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLRecommender.Identifier, v26, v28, v27);
          BUG();
        }

        v25 = v78;
      }

      else
      {
        v29 = v77;
      }

      v30 = v70;
      LODWORD(v77) = v70;
      if ((v29 & 1) == 0)
      {
        v31 = v77;
        v32 = (*(v71 + 16))(v25);
        v33 = v78;
        v78[(v19 >> 6) + 8] |= 1 << v19;
        v34 = v33[6];
        v35 = 24 * v19;
        v36 = v75;
        *(v34 + v35) = v75;
        v37 = v76;
        *(v34 + v35 + 8) = v76;
        *(v34 + v35 + 16) = v30;
        *(v33[7] + 8 * v19) = v32;
        v38 = v33[2];
        v22 = __OFADD__(1, v38);
        v39 = v38 + 1;
        if (v22)
        {
          BUG();
        }

        v33[2] = v39;
        outlined copy of MLRecommender.Identifier(v36, v37, v31);
      }

      v40 = v74;
      specialized Set._Variant.insert(_:)(v68, v74, v60, v73);
      outlined consume of MLRecommender.Identifier(v68[0], v68[1], v69);
      outlined consume of MLRecommender.Identifier(v75, v76, v77);
      outlined consume of MLRecommender.Identifier(v40, v60, v73);
      v9 = v72 + 48;
      v10 = specialized implicit closure #1 in RecommenderModel.recommend<A>(users:limit:allowedItems:excludedInteractions:omittingObservedInteractions:);
      v11 = thunk for @callee_guaranteed () -> (@owned [B])specialized partial apply;
      v12 = v71;
      --v61;
    }

    while (v61);
    v64;
    v72 = thunk for @callee_guaranteed () -> (@owned [B])specialized partial apply;
    v74 = specialized implicit closure #1 in RecommenderModel.recommend<A>(users:limit:allowedItems:excludedInteractions:omittingObservedInteractions:);
    v41 = a1;
    v42 = v78;
    v7 = a5;
  }

  else
  {
    v41 = a1;
    v42 = _swiftEmptyDictionarySingleton;
    v74 = 0;
    v72 = 0;
    v71 = 0;
  }

  v43 = _swiftEmptyArrayStorage;
  v68[0] = _swiftEmptyArrayStorage;
  if (*(v41 + 16))
  {
    v66 = *(v41 + 16);

    v44 = (v41 + 48);
    LODWORD(v77) = v7;
    v78 = v42;
    while (1)
    {
      v45 = *(v44 - 2);
      v46 = *(v44 - 1);
      v70 = v42[2];
      v73 = v44;
      v47 = *v44;
      outlined copy of MLRecommender.Identifier(v45, v46, *v44);
      v48 = &_swiftEmptySetSingleton;
      v49 = v46;
      v50 = v45;
      v51 = v47;
      if (v70)
      {
        v52 = specialized __RawDictionaryStorage.find<A>(_:)(v50, v49, v47);
        v48 = &_swiftEmptySetSingleton;
        if (v53)
        {
          v54 = *(v78[7] + 8 * v52);

          v48 = v54;
        }
      }

      LODWORD(v75) = v51;
      v55 = v49;
      v76 = v49;
      v56 = v48;
      v57 = specialized RecommenderModel.recommend(for:limit:allowedItems:disallowedItems:omittingObservedInteractions:)(v50, v55, v51, a2, a3, v48, a6, v77);
      v56;
      if (v6)
      {
        break;
      }

      specialized Array.append<A>(contentsOf:)(v57);
      outlined consume of MLRecommender.Identifier(v50, v76, v75);
      v44 = v73 + 24;
      v58 = v66-- == 1;
      v42 = v78;
      if (v58)
      {
        v78;
        a1;
        _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v74, 0);
        v43 = v68[0];
        goto LABEL_23;
      }
    }

    outlined consume of MLRecommender.Identifier(v50, v76, v75);
    a1;
    v43 = v68[0];
    v78;
    v43;
    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v74, 0);
    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v72, v71);
  }

  else
  {
    v42;
    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v74, 0);
LABEL_23:
    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v72, v71);
  }

  return v43;
}

uint64_t specialized RecommenderModel.recommend<A>(users:limit:allowedItems:excludedInteractions:omittingObservedInteractions:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5, double a6)
{
  v69 = a1;
  if (*(a4 + 16))
  {
    v70 = *(a4 + 16);

    v64 = a4;
    v8 = (a4 + 72);
    v9 = _swiftEmptyDictionarySingleton;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      v72 = v10;
      v73 = v11;
      i = v9;
      v75 = *(v8 - 5);
      v71 = *(v8 - 4);
      v78 = *(v8 - 24);
      v13 = *(v8 - 2);
      v14 = *(v8 - 1);
      v77 = v8;
      v15 = *v8;
      outlined copy of MLRecommender.Identifier(v75, v71, v78);
      outlined copy of MLRecommender.Identifier(v13, v14, v15);
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v72, 0);
      v16 = swift_allocObject(&unk_390650, 32, 7);
      *(v16 + 16) = specialized implicit closure #1 in RecommenderModel.recommend<A>(users:limit:allowedItems:excludedInteractions:omittingObservedInteractions:);
      v67 = v16;
      *(v16 + 24) = 0;
      v76 = v13;
      v68 = v14;
      LODWORD(v72) = v15;
      outlined copy of MLRecommender.Identifier(v13, v14, v15);
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v73, v12);
      v17 = i;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(i);
      v65[0] = v17;
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v75, v71, v78);
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(i[2], v21);
      v23 = i[2] + v21;
      if (v22)
      {
        BUG();
      }

      v24 = v19;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<MLRecommender.Identifier, Set<MLRecommender.Identifier>>);
      v25 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v23);
      v26 = v65[0];
      if (v25)
      {
        v27 = v71;
        v20 = specialized __RawDictionaryStorage.find<A>(_:)(v75, v71, v78);
        LOBYTE(v29) = v29 & 1;
        if ((v24 & 1) != v29)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLRecommender.Identifier, v27, v29, v28);
          BUG();
        }
      }

      v30 = v78;

      LODWORD(v73) = v30;
      if ((v24 & 1) == 0)
      {
        v31 = v73;
        v32 = (*(v67 + 16))(v26);
        v26[(v20 >> 6) + 8] |= 1 << v20;
        v33 = v26[6];
        v34 = 24 * v20;
        v35 = v75;
        *(v33 + v34) = v75;
        v36 = v71;
        *(v33 + v34 + 8) = v71;
        *(v33 + v34 + 16) = v78;
        *(v26[7] + 8 * v20) = v32;
        v37 = v26[2];
        v22 = __OFADD__(1, v37);
        v38 = v37 + 1;
        if (v22)
        {
          BUG();
        }

        v26[2] = v38;
        outlined copy of MLRecommender.Identifier(v35, v36, v31);
      }

      v39 = v76;
      i = v26;
      v40 = v68;
      specialized Set._Variant.insert(_:)(v65, v76, v68, v72);
      outlined consume of MLRecommender.Identifier(v65[0], v65[1], v66);
      outlined consume of MLRecommender.Identifier(v75, v71, v73);
      v9 = i;
      outlined consume of MLRecommender.Identifier(v39, v40, v72);
      v8 = v77 + 48;
      v10 = specialized implicit closure #1 in RecommenderModel.recommend<A>(users:limit:allowedItems:excludedInteractions:omittingObservedInteractions:);
      v11 = thunk for @callee_guaranteed () -> (@owned [B])specialized partial apply;
      v12 = v67;
      v70 = (v70 - 1);
    }

    while (v70);
    v64;
    v68 = thunk for @callee_guaranteed () -> (@owned [B])specialized partial apply;
    v70 = specialized implicit closure #1 in RecommenderModel.recommend<A>(users:limit:allowedItems:excludedInteractions:omittingObservedInteractions:);
  }

  else
  {
    v9 = _swiftEmptyDictionarySingleton;
    v70 = 0;
    v68 = 0;
    v67 = 0;
  }

  v65[0] = _swiftEmptyArrayStorage;
  v41 = -1 << *(v69 + 32);
  v42 = ~(-1 << -v41);
  if (-v41 >= 64)
  {
    v42 = -1;
  }

  v43 = *(v69 + 56) & v42;
  v77 = (v69 + 56);
  v76 = (63 - v41) >> 6;

  v44 = 0;
  for (i = v9; ; v9 = i)
  {
    if (v43)
    {
      v45 = v43;
      v46 = v44;
      goto LABEL_33;
    }

    v46 = v44 + 1;
    if (__OFADD__(1, v44))
    {
      BUG();
    }

    if (v46 >= v76)
    {
      goto LABEL_42;
    }

    v45 = *&v77[8 * v46];
    if (!v45)
    {
      break;
    }

LABEL_33:
    v73 = v43;
    v72 = v45;
    _BitScanForward64(&v48, v45);
    v71 = v46;
    v49 = v48 | (v46 << 6);
    v50 = *(v69 + 48);
    v49 *= 24;
    v51 = *(v50 + v49 + 8);
    v52 = v9[2];
    v53 = *(v50 + v49 + 16);
    v75 = *(v50 + v49);
    v78 = v53;
    outlined copy of MLRecommender.Identifier(v75, v51, v53);
    v54 = &_swiftEmptySetSingleton;
    if (v52)
    {
      v55 = specialized __RawDictionaryStorage.find<A>(_:)(v75, v51, v78);
      v54 = &_swiftEmptySetSingleton;
      if (v56)
      {
        v54 = *(v9[7] + 8 * v55);
      }
    }

    v57 = specialized RecommenderModel.recommend(for:limit:allowedItems:disallowedItems:omittingObservedInteractions:)(v75, v51, v78, a2, a3, v54, a6, a5);
    v58 = v51;
    v54;
    if (v6)
    {
      outlined consume of MLRecommender.Identifier(v75, v51, v78);
      outlined consume of [String : [Double]].Iterator._Variant(v69);
      v59 = v65[0];
      i;
      v59;
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v70, 0);
      return _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v68, v67);
    }

    v43 = v72 & (v72 - 1);
    specialized Array.append<A>(contentsOf:)(v57);
    outlined consume of MLRecommender.Identifier(v75, v58, v78);
    v44 = v71;
  }

  v47 = v44 + 2;
  if (v44 + 2 >= v76)
  {
    goto LABEL_42;
  }

  v45 = *&v77[8 * v46 + 8];
  if (v45)
  {
    goto LABEL_32;
  }

  v47 = v44 + 3;
  if (v44 + 3 >= v76)
  {
    goto LABEL_42;
  }

  v45 = *&v77[8 * v46 + 16];
  if (v45)
  {
    goto LABEL_32;
  }

  v47 = v44 + 4;
  if (v44 + 4 >= v76)
  {
    goto LABEL_42;
  }

  v45 = *&v77[8 * v46 + 24];
  if (v45)
  {
    goto LABEL_32;
  }

  v47 = v44 + 5;
  if (v44 + 5 >= v76)
  {
    goto LABEL_42;
  }

  v45 = *&v77[8 * v46 + 32];
  if (v45)
  {
    goto LABEL_32;
  }

  v47 = v44 + 6;
  if (v44 + 6 >= v76)
  {
    goto LABEL_42;
  }

  v45 = *&v77[8 * v46 + 40];
  if (v45)
  {
    goto LABEL_32;
  }

  v47 = v44 + 7;
  if (v44 + 7 >= v76)
  {
    goto LABEL_42;
  }

  v45 = *&v77[8 * v46 + 48];
  if (v45)
  {
LABEL_32:
    v46 = v47;
    goto LABEL_33;
  }

  while (1)
  {
    v46 = v47 + 1;
    if (v47 + 1 >= v76)
    {
      break;
    }

    v45 = *(v69 + 8 * v47++ + 64);
    if (v45)
    {
      goto LABEL_33;
    }
  }

LABEL_42:
  outlined consume of [String : [Double]].Iterator._Variant(v69);
  v9;
  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v70, 0);
  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v68, v67);
  return v65[0];
}

uint64_t MLRecommender.recommendations<A>(fromUsers:maxCount:restrictingToItems:excluding:excludingObserved:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, int a5, void *a6, __m128 xmm0_0, __int128 *a7, uint64_t a8)
{
  v39 = v9;
  v38 = a2;
  v47 = v10;
  v37 = v11;
  v44 = a5;
  v13 = *a1;
  v14 = *(a1 + 8);
  v42 = *a3;
  v49 = *(a3 + 8);
  v40 = *a4;
  v48 = *(a4 + 8);
  v35 = v13;
  v46 = v13;
  outlined copy of Result<_DataTable, Error>(v13, v14);
  v45 = a6;
  v43 = type metadata accessor for MLDataColumn(0, a6, a7, v15);
  v16 = MLDataColumn.count.getter();
  outlined consume of Result<_DataTable, Error>(v35, v14 & 1);
  if (v16 < 0)
  {
    BUG();
  }

  v41 = &v35;
  v35 = 0;
  v36 = v16;
  v17 = alloca(49);
  v18 = alloca(64);
  v19 = v45;
  v37 = v45;
  v38 = a7;
  v39 = a8;
  v40 = v46;
  LOBYTE(v41) = v14 & 1;
  v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Range<Int>);
  v21 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  v22 = v47;
  v23 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in MLRecommender.recommendations<A>(fromUsers:maxCount:restrictingToItems:excluding:excludingObserved:), &v35, v20, v19, &type metadata for Never, v21, &protocol witness table for Never, v34);
  v47 = v22;
  if (v49 == -1)
  {
    ML12MLIdentifier_ps5NeverOTg5 = 0;
    v28 = v45;
  }

  else
  {
    v24 = v42;
    v35 = v42;
    LOBYTE(v36) = v49 & 1;
    outlined copy of Result<_DataTable, Error>(v42, v49);
    v25 = MLDataColumn.count.getter();
    outlined consume of Result<_DataTable, Error>(v35, v36);
    if (v25 < 0)
    {
      BUG();
    }

    v46 = v50;
    v26 = alloca(49);
    v27 = alloca(64);
    v28 = v45;
    v50[2] = v45;
    v50[3] = a7;
    savedregs = a8;
    retaddr = v24;
    v29 = v47;
    ML12MLIdentifier_ps5NeverOTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_8CreateML12MLIdentifier_ps5NeverOTg5(partial apply for closure #2 in MLRecommender.recommendations<A>(fromUsers:maxCount:restrictingToItems:excluding:excludingObserved:), v50, 0, v25);
    v47 = v29;
  }

  v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLIdentifier);
  v32 = _arrayForceCast<A, B>(_:)(v23, v28, v31);
  v23;
  v35 = v40;
  LOBYTE(v36) = v48;
  MLRecommender.recommendations(fromUsers:maxCount:restrictingToItems:excluding:excludingObserved:)(v32, v38, ML12MLIdentifier_ps5NeverOTg5, &v35, v44, xmm0_0);
  v32;
  return ML12MLIdentifier_ps5NeverOTg5;
}

uint64_t closure #1 in MLRecommender.recommendations<A>(fromUsers:maxCount:restrictingToItems:excluding:excludingObserved:)(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, double a6)
{
  v8 = *a1;
  v12 = a3 & 1;
  outlined copy of Result<_DataTable, Error>(a2, a3);
  v10 = type metadata accessor for MLDataColumn(0, a4, a5, v9);
  MLDataColumn.subscript.getter(v8, v10, a6);
  return outlined consume of Result<_DataTable, Error>(a2, v12);
}

uint64_t closure #2 in MLRecommender.recommendations<A>(fromUsers:maxCount:restrictingToItems:excluding:excludingObserved:)(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v14 = *a1;
  v13 = a3 & 1;
  v7[3] = a4;
  v7[4] = a6;
  __swift_allocate_boxed_opaque_existential_0(v7);
  outlined copy of Result<_DataTable, Error>(a2, a3);
  v11 = type metadata accessor for MLDataColumn(0, a4, a5, v10);
  MLDataColumn.subscript.getter(v14, v11, a7);
  return outlined consume of Result<_DataTable, Error>(a2, v13);
}

void *specialized RecommenderModel.recommend(for:limit:allowedItems:disallowedItems:omittingObservedInteractions:)(Swift::UInt a1, uint64_t a2, char a3, __int128 *a4, uint64_t a5, uint64_t a6, double a7, char a8)
{
  v52 = v8;
  v10 = v9;
  v51 = a6;
  v50 = a4;
  v45[0] = a1;
  v45[1] = a2;
  v46 = a3 & 1;
  v49 = v10;
  qmemcpy(v44, v10, sizeof(v44));
  v12 = specialized CategoricalLookupTable.index(of:)(a1, a2, a3 & 1, *&v44[0], *(&v44[0] + 1));
  v14 = v13;
  outlined retain of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(v44);
  v15 = v52;
  v16 = specialized Sequence.compactMap<A>(_:)(a5, v44);
  v52 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5(v16);
  outlined retain of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(v44);
  v17 = specialized Sequence.compactMap<A>(_:)(v51, v44);
  v18 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5(v17);
  LOBYTE(v51) = v14;
  v47 = v12;
  if (v14)
  {
    v19 = &_swiftEmptySetSingleton;
    v20 = v15;
  }

  else
  {
    v48 = v18;
    v35 = v44[3];
    v34 = v44[2];
    v36 = v44[4];
    v37 = v12;
    v40 = *(&v44[3] + 1);
    v41 = v44[4];
    outlined retain of [Int](&v40);
    outlined retain of [Int](&v41);
    outlined retain of ContiguousArray<Double>(&v41 + 8);
    v21 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF13LinearAlgebra12SparseMatrixV15MajorCollectionVySd_G_Sis5NeverOTg50127_s8CreateML21ItemSimilarityTrainerV03getC21CountThresholdForUser8itemInfo0K4ListSiSayAA0C10StatisticsVy0C5ScoreQzGG_qd__tSlRd__z5_Sdt7b56Rtd__lFS2i_Sdt_tcfu0_33_39c69c9f4ee04694167b65f5fa330960z4_SdtZ10Tf3nnnpk_nTf1cn_nTm(&v34);
    v20 = v15;
    outlined release of SparseMatrix<Double>.MajorCollection(&v34);
    v19 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5(v21);
    v18 = v48;
  }

  if (*(v52 + 16))
  {
    v22 = v20;
    v23 = specialized Sequence.filter(_:)(v52, v18, a8, v19);
  }

  else
  {
    v24 = v18;
    v52;
    v22 = v20;
    v23 = specialized Sequence.filter(_:)(0, *(*&v44[1] + 16), v24, a8, v19);
  }

  v25 = v23;
  v52 = v22;
  if (v51)
  {
    v26 = specialized RecommenderModel.scoreAll<A>(itemIndices:userScores:)(v23, _swiftEmptyArrayStorage);
  }

  else
  {
    v38[1] = v44[3];
    v38[0] = v44[2];
    v38[2] = v44[4];
    v39 = v47;
    v42 = *(&v44[3] + 1);
    v43 = v44[4];
    outlined retain of [Int](&v42);
    outlined retain of [Int](&v43);
    outlined retain of ContiguousArray<Double>(&v43 + 8);
    v26 = specialized RecommenderModel.scoreAll<A>(itemIndices:userScores:)(v25, v38);
    outlined release of SparseMatrix<Double>.MajorCollection(v38);
  }

  v27 = v26[2];
  if (v27 >= v50)
  {
    v27 = v50;
  }

  if (v50 < 0)
  {
    BUG();
  }

  if (v27 <= 0)
  {
    v29 = _swiftEmptyArrayStorage;
  }

  else
  {
    v28 = v52;
    v29 = specialized Sequence._minImplementation(count:sortedBy:)(v27, v25, v26);
    v52 = v28;
  }

  v26;
  v25;
  v50 = &v34;
  v30 = alloca(40);
  v31 = alloca(48);
  *&v35 = v45;
  *(&v35 + 1) = v49;
  *&v36 = v29;
  ML14RecommendationVyAG13MLRecommenderV10IdentifierOAMGs5NeverOTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_8CreateML14RecommendationVyAG13MLRecommenderV10IdentifierOAMGs5NeverOTg5(partial apply for specialized closure #2 in RecommenderModel.recommend(for:limit:allowedItems:disallowedItems:omittingObservedInteractions:), &v34, 0, v27);
  v29;
  return ML14RecommendationVyAG13MLRecommenderV10IdentifierOAMGs5NeverOTg5;
}

_BYTE *MLRecommender.evaluate(on:userColumn:itemColumn:ratingColumn:cutoffs:excludingObserved:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *_, uint64_t a8, char a9)
{
  v182._countAndFlagsBits = a4;
  to._object = a3;
  v163 = v9;
  v192._countAndFlagsBits = a2;
  to._countAndFlagsBits = v10;
  __src = v11;
  v179._countAndFlagsBits = a6;
  v181 = a5;
  v177 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v168 = *(v177 - 8);
  v12 = *(v168 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v166 = __dst;
  v186 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v171 = *(v186 - 8);
  v15 = *(v171 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v175 = __dst;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v179._object = __dst;
  v169 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v170 = *(v169 - 8);
  v20 = *(v170 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v167 = __dst;
  v184 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<Int>>);
  v172 = *(v184 - 8);
  v23 = *(v172 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v187 = __dst;
  v26 = alloca(v23);
  v27 = alloca(v23);
  v174 = __dst;
  v178 = type metadata accessor for AnyColumn(0);
  v161 = *(v178 - 8);
  v28 = *(v161 + 64);
  v29 = alloca(v28);
  v30 = alloca(v28);
  v162 = __dst;
  v173 = type metadata accessor for DataFrame(0);
  v31 = *(v173 - 8);
  v32 = *(v31 + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v182._object = __dst;
  v189 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v189, v158);
  inited[2] = 1;
  inited[3] = 2;
  inited[4] = v192._countAndFlagsBits;
  inited[5] = to._object;

  v185 = a1;
  DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xE400000000000000, 1919251285));
  if (v36)
  {
    goto LABEL_6;
  }

  v176 = v31;
  swift_setDeallocating(inited);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  inited = swift_initStackObject(v189, v159);
  inited[2] = 1;
  inited[3] = 2;
  inited[4] = v182._countAndFlagsBits;
  inited[5] = v181;

  DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xE400000000000000, 1835365449));
  if (v38)
  {
    goto LABEL_6;
  }

  swift_setDeallocating(inited);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  if (_)
  {
    inited = swift_initStackObject(v189, v160);
    inited[2] = 1;
    inited[3] = 2;
    inited[4] = v179._countAndFlagsBits;
    inited[5] = _;

    DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xE600000000000000, 0x676E69746152));
    countAndFlagsBits = v192._countAndFlagsBits;
    if (v40)
    {
LABEL_6:
      swift_setDeallocating(inited);
      return specialized _ContiguousArrayStorage.__deallocating_deinit();
    }

    v180 = 0;
    swift_setDeallocating(inited);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
  }

  else
  {
    v180 = 0;
    countAndFlagsBits = v192._countAndFlagsBits;
  }

  v42 = swift_allocObject(v189, 64, 7);
  v42[2] = 2;
  v42[3] = 4;
  v42[4] = countAndFlagsBits;
  object = to._object;
  v42[5] = to._object;
  v42[6] = v182._countAndFlagsBits;
  v42[7] = v181;

  DataFrame.selecting(columnNames:)(v42);
  v42;
  v44 = __src;
  v46._countAndFlagsBits = v192._countAndFlagsBits;
  v46._object = object;
  v47 = *(__src + 21);
  v192._countAndFlagsBits = *(__src + 20);
  v45._countAndFlagsBits = v192._countAndFlagsBits;
  v45._object = v47;
  DataFrame.renameColumn(_:to:)(v46, v45);
  v48._object = *(v44 + 23);
  v46._countAndFlagsBits = v182._countAndFlagsBits;
  v46._object = v181;
  v182._countAndFlagsBits = *(v44 + 22);
  v48._countAndFlagsBits = v182._countAndFlagsBits;
  v181 = v48._object;
  DataFrame.renameColumn(_:to:)(v46, v48);
  v49 = v44;
  if (_)
  {
    v50 = *(v44 + 25);
    if (v50)
    {
      to._countAndFlagsBits = v49[24];
      to._object = v47;
      v51 = v162;
      v52 = v179._countAndFlagsBits;
      DataFrame.subscript.getter(v179._countAndFlagsBits, _);
      DataFrame.append(column:)(v51);
      v53 = v51;
      v47 = to._object;
      (*(v161 + 8))(v53, v178);
      v54._countAndFlagsBits = v52;
      v54._object = _;
      v55._countAndFlagsBits = to._countAndFlagsBits;
      v55._object = v50;
      DataFrame.renameColumn(_:to:)(v54, v55);
      v49 = __src;
    }
  }

  v179._countAndFlagsBits = type metadata accessor for MLRecommender(0);
  LOBYTE(v178) = *(v49 + *(v179._countAndFlagsBits + 40));
  if (v178 == 1)
  {
    v56 = v167;
    DataFrame.subscript.getter(v192._countAndFlagsBits, v47, &type metadata for Int);
    v164 = 0;
    v57 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
    v58 = v174;
    v59 = v169;
    OptionalColumnProtocol.filled(with:)(&v164, v169, v57);
    v60 = v59;
    v61 = v58;
    (*(v170 + 8))(v56, v60);
    v62 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<Int>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<Int>>, &protocol conformance descriptor for FilledColumn<A>);
    v63 = v184;
    v64 = dispatch thunk of Collection.count.getter(v184, v62);
    if (v64)
    {
      v190 = _swiftEmptyArrayStorage;
      v66 = 0;
      if (v64 > 0)
      {
        v66 = v64;
      }

      v192._countAndFlagsBits = v64;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66, 0);
      v67 = v62;
      v68 = v190;
      to._countAndFlagsBits = v67;
      dispatch thunk of Collection.startIndex.getter(v63, v67);
      v69 = v192._countAndFlagsBits;
      if (v192._countAndFlagsBits < 0)
      {
        BUG();
      }

      v65 = to._countAndFlagsBits;
      v70 = v184;
      v71 = v174;
      do
      {
        v192._countAndFlagsBits = v69;
        v72 = v71;
        v73 = v70;
        v74 = dispatch thunk of Collection.subscript.read(&v164, v191, v70, v65);
        to._object = *v75;
        v74(&v164, 0);
        v190 = v68;
        v76 = v68[2];
        v77 = v73;
        if (v68[3] >> 1 <= v76)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v68[3] >= 2uLL, v76 + 1, 1);
          v77 = v184;
          v68 = v190;
        }

        v68[2] = v76 + 1;
        v78 = 3 * v76;
        v68[v78 + 4] = to._object;
        v68[v78 + 5] = 0;
        LOBYTE(v68[v78 + 6]) = 1;
        v79 = v77;
        v80 = to._countAndFlagsBits;
        dispatch thunk of Collection.formIndex(after:)(v191, v77, to._countAndFlagsBits);
        v69 = v192._countAndFlagsBits - 1;
        v70 = v79;
        v71 = v72;
        v65 = v80;
      }

      while (v192._countAndFlagsBits != 1);
      v189 = v68;
    }

    else
    {
      v189 = _swiftEmptyArrayStorage;
      v70 = v63;
      v71 = v61;
    }

    v99 = v71;
    v100 = v70;
    v101 = v172;
  }

  else
  {
    v81 = v166;
    DataFrame.subscript.getter(v192._countAndFlagsBits, v47, &type metadata for String);
    v164 = 0;
    v165 = 0xE000000000000000;
    v82 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
    v83 = v177;
    OptionalColumnProtocol.filled(with:)(&v164, v177, v82);
    (*(v168 + 8))(v81, v83);
    v84 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<String>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<String>>, &protocol conformance descriptor for FilledColumn<A>);
    v85 = v186;
    v86 = dispatch thunk of Collection.count.getter(v186, v84);
    if (v86)
    {
      v190 = _swiftEmptyArrayStorage;
      v87 = 0;
      if (v86 > 0)
      {
        v87 = v86;
      }

      v88 = v86;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v87, 0);
      v189 = v190;
      dispatch thunk of Collection.startIndex.getter(v85, v84);
      if (v88 < 0)
      {
        BUG();
      }

      v89 = v88;
      v90 = v84;
      v91 = v189;
      v70 = v186;
      to._countAndFlagsBits = v90;
      do
      {
        v192._countAndFlagsBits = v89;
        v92 = dispatch thunk of Collection.subscript.read(&v164, v191, v70, v90);
        to._object = *v93;
        v94 = *(v93 + 8);

        v92(&v164, 0);
        v190 = v91;
        v95 = v91[2];
        v96 = v95 + 1;
        if (v91[3] >> 1 <= v95)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v91[3] >= 2uLL, v95 + 1, 1);
          v96 = v95 + 1;
          v91 = v190;
        }

        v91[2] = v96;
        v97 = 3 * v95;
        v91[v97 + 4] = to._object;
        v91[v97 + 5] = v94;
        LOBYTE(v91[v97 + 6]) = 0;
        v98 = v186;
        v90 = to._countAndFlagsBits;
        dispatch thunk of Collection.formIndex(after:)(v191, v186, to._countAndFlagsBits);
        v89 = v192._countAndFlagsBits - 1;
        v70 = v98;
      }

      while (v192._countAndFlagsBits != 1);
      v189 = v91;
    }

    else
    {
      v189 = _swiftEmptyArrayStorage;
      v70 = v85;
    }

    v99 = v179._object;
    v100 = v70;
    v101 = v171;
  }

  (*(v101 + 8))(v99, v100, v70, v65);
  v102 = v177;
  v103 = v166;
  if (*(__src + *(v179._countAndFlagsBits + 44)) == 1)
  {
    v104 = v167;
    DataFrame.subscript.getter(v182._countAndFlagsBits, v181, &type metadata for Int);
    v164 = 0;
    v105 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
    v106 = v169;
    OptionalColumnProtocol.filled(with:)(&v164, v169, v105);
    (*(v170 + 8))(v104, v106);
    v107 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<Int>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<Int>>, &protocol conformance descriptor for FilledColumn<A>);
    v108 = v184;
    v109 = dispatch thunk of Collection.count.getter(v184, v107);
    if (v109)
    {
      v112 = v109;
      v190 = _swiftEmptyArrayStorage;
      v113 = 0;
      if (v109 > 0)
      {
        v113 = v109;
      }

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v113, 0);
      v114 = v107;
      v115 = v190;
      v186 = v114;
      dispatch thunk of Collection.startIndex.getter(v108, v114);
      v192._countAndFlagsBits = v112;
      if (v112 < 0)
      {
        BUG();
      }

      v116 = v186;
      v117 = v184;
      do
      {
        v118 = v116;
        v119 = v117;
        v120 = dispatch thunk of Collection.subscript.read(&v164, v191, v117, v118);
        v122 = *v121;
        v120(&v164, 0);
        v190 = v115;
        v123 = v119;
        v124 = v115[2];
        v125 = v124 + 1;
        if (v115[3] >> 1 <= v124)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v115[3] >= 2uLL, v125, 1);
          v123 = v184;
          v115 = v190;
        }

        v115[2] = v125;
        v126 = 3 * v124;
        v115[v126 + 4] = v122;
        v115[v126 + 5] = 0;
        LOBYTE(v115[v126 + 6]) = 1;
        v127 = v187;
        v128 = v123;
        v116 = v186;
        dispatch thunk of Collection.formIndex(after:)(v191, v123, v186);
        v129 = v192._countAndFlagsBits-- == 1;
        v117 = v128;
        v111 = v127;
      }

      while (!v129);
      v144 = v127;
    }

    else
    {
      v115 = _swiftEmptyArrayStorage;
      v144 = v187;
      v117 = v108;
    }

    v145 = v117;
    v146 = v172;
  }

  else
  {
    DataFrame.subscript.getter(v182._countAndFlagsBits, v181, &type metadata for String);
    v164 = 0;
    v165 = 0xE000000000000000;
    v130 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
    v131 = v175;
    OptionalColumnProtocol.filled(with:)(&v164, v102, v130);
    (*(v168 + 8))(v103, v102);
    v132 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<String>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<String>>, &protocol conformance descriptor for FilledColumn<A>);
    v133 = v186;
    v134 = dispatch thunk of Collection.count.getter(v186, v132);
    if (v134)
    {
      v190 = _swiftEmptyArrayStorage;
      v135 = 0;
      if (v134 > 0)
      {
        v135 = v134;
      }

      v192._countAndFlagsBits = v134;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v135, 0);
      to._object = v190;
      v187 = v132;
      dispatch thunk of Collection.startIndex.getter(v133, v132);
      v136 = v192._countAndFlagsBits;
      if (v192._countAndFlagsBits < 0)
      {
        BUG();
      }

      v137 = v187;
      v138 = to._object;
      v117 = v175;
      do
      {
        v192._countAndFlagsBits = v136;
        v139 = v117;
        v140 = dispatch thunk of Collection.subscript.read(&v164, v191, v133, v137);
        to._object = *v141;
        to._countAndFlagsBits = *(v141 + 8);

        v140(&v164, 0);
        v190 = v138;
        v142 = v138[2];
        if (v138[3] >> 1 <= v142)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v138[3] >= 2uLL, v142 + 1, 1);
          v138 = v190;
        }

        v138[2] = v142 + 1;
        v143 = 3 * v142;
        v138[v143 + 4] = to._object;
        v138[v143 + 5] = to._countAndFlagsBits;
        LOBYTE(v138[v143 + 6]) = 0;
        v133 = v186;
        v137 = v187;
        dispatch thunk of Collection.formIndex(after:)(v191, v186, v187);
        v136 = v192._countAndFlagsBits - 1;
        v117 = v139;
      }

      while (v192._countAndFlagsBits != 1);
      v115 = v138;
    }

    else
    {
      v115 = _swiftEmptyArrayStorage;
      v117 = v131;
    }

    v144 = v117;
    v145 = v133;
    v146 = v171;
  }

  (*(v146 + 8))(v144, v145, v117, v110, v111);
  v147 = __src;
  v148 = v189;

  ML13MLRecommenderV10IdentifierO_SayAHGTt0g5 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8CreateML13MLRecommenderV10IdentifierO_SayAHGTt0g5(v148);
  memcpy(__dst, v147, sizeof(__dst));
  v150 = *(a8 + 16);
  if (!v150)
  {
    BUG();
  }

  v151 = v180;
  v152 = specialized RecommenderModel.recommend<A>(users:limit:allowedItems:excludedInteractions:omittingObservedInteractions:)(ML13MLRecommenderV10IdentifierO_SayAHGTt0g5, *(a8 + 8 * v150 + 24), &_swiftEmptySetSingleton, _swiftEmptyArrayStorage, a9, v37);
  if (v151)
  {
    v189;
    v115;
    (*(v176 + 8))(v182._object, v173);
    return ML13MLRecommenderV10IdentifierO_SayAHGTt0g5;
  }

  else
  {
    v153 = v152;
    ML13MLRecommenderV10IdentifierO_SayAHGTt0g5;
    v154 = v189;
    ML13MLRecommenderV10IdentifierOGAMG_AL4user_AL4itemts5NeverOTg503_s8f4ML13h3V10i35OA3EIgggoo_AE_AEtAE4user_AE4itemts5L188OIegnrzr_TR03_s8a4ML13c126V8evaluate2on10userColumn04itemG006ratingG07cutoffs17excludingObservedAA0C7MetricsV11TabularData0O5FrameV_S3SSgSaySiGSbtKFAC10D23O0F0_AS0H0tAS_AStXEfU3_Tf3nnnpf_nTf1cn_n = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay8CreateML13MLRecommenderV10IdentifierOGAMG_AL4user_AL4itemts5NeverOTg503_s8f4ML13h3V10i35OA3EIgggoo_AE_AEtAE4user_AE4itemts5L188OIegnrzr_TR03_s8a4ML13c126V8evaluate2on10userColumn04itemG006ratingG07cutoffs17excludingObservedAA0C7MetricsV11TabularData0O5FrameV_S3SSgSaySiGSbtKFAC10D23O0F0_AS0H0tAS_AStXEfU3_Tf3nnnpf_nTf1cn_n(v189, v115);
    v180 = 0;
    v115;
    v154;
    ML16RecommenderModelV7metrics8expected9predicted7cutoffsSayAA21RecommendationMetricsVyxGGqd___qd_0_SaySiGtSTRd__STRd_0_x4user_q_4itemt7ElementRtd__xAM_q_ANtAORtd_0_r0_lFZAA13MLRecommenderV10IdentifierO_AUSayAuM_AuNtGs15LazyMapSequenceVySayAA0I0VyA2UGGAuM_AuNtGTt2g5 = _s8CreateML16RecommenderModelV7metrics8expected9predicted7cutoffsSayAA21RecommendationMetricsVyxGGqd___qd_0_SaySiGtSTRd__STRd_0_x4user_q_4itemt7ElementRtd__xAM_q_ANtAORtd_0_r0_lFZAA13MLRecommenderV10IdentifierO_AUSayAuM_AuNtGs15LazyMapSequenceVySayAA0I0VyA2UGGAuM_AuNtGTt2g5(ML13MLRecommenderV10IdentifierOGAMG_AL4user_AL4itemts5NeverOTg503_s8f4ML13h3V10i35OA3EIgggoo_AE_AEtAE4user_AE4itemts5L188OIegnrzr_TR03_s8a4ML13c126V8evaluate2on10userColumn04itemG006ratingG07cutoffs17excludingObservedAA0C7MetricsV11TabularData0O5FrameV_S3SSgSaySiGSbtKFAC10D23O0F0_AS0H0tAS_AStXEfU3_Tf3nnnpf_nTf1cn_n, v153, closure #6 in MLRecommender.evaluate(on:userColumn:itemColumn:ratingColumn:cutoffs:excludingObserved:), 0, a8);
    ML13MLRecommenderV10IdentifierOGAMG_AL4user_AL4itemts5NeverOTg503_s8f4ML13h3V10i35OA3EIgggoo_AE_AEtAE4user_AE4itemts5L188OIegnrzr_TR03_s8a4ML13c126V8evaluate2on10userColumn04itemG006ratingG07cutoffs17excludingObservedAA0C7MetricsV11TabularData0O5FrameV_S3SSgSaySiGSbtKFAC10D23O0F0_AS0H0tAS_AStXEfU3_Tf3nnnpf_nTf1cn_n;
    v153;
    (*(v176 + 8))(v182._object, v173);
    result = v163;
    *v163 = v178;
    *(result + 1) = ML16RecommenderModelV7metrics8expected9predicted7cutoffsSayAA21RecommendationMetricsVyxGGqd___qd_0_SaySiGtSTRd__STRd_0_x4user_q_4itemt7ElementRtd__xAM_q_ANtAORtd_0_r0_lFZAA13MLRecommenderV10IdentifierO_AUSayAuM_AuNtGs15LazyMapSequenceVySayAA0I0VyA2UGGAuM_AuNtGTt2g5;
    result[16] = a9 & 1;
    *(result + 3) = 0;
  }

  return result;
}

uint64_t MLRecommender.evaluation(on:userColumn:itemColumn:ratingColumn:cutoffs:excludingObserved:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *_, uint64_t a8, char a9)
{
  *v20 = a4;
  *v25 = a3;
  *v22 = a2;
  *v21 = a6;
  *v23 = a5;
  v10 = type metadata accessor for DataFrame(0);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v14 = *(a1 + 8);
  v18 = *a1;
  v19 = v14;
  outlined copy of Result<_DataTable, Error>(v18, v14);
  DataFrame.init(_:)(&v18);
  v15 = *v25;
  *v25 = v9;
  MLRecommender.evaluate(on:userColumn:itemColumn:ratingColumn:cutoffs:excludingObserved:)(v17, *v22, v15, *v20, *v23, *v21, _, a8, a9);
  return (*(v24 + 8))(v17, v10);
}

uint64_t closure #6 in MLRecommender.evaluate(on:userColumn:itemColumn:ratingColumn:cutoffs:excludingObserved:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 16);
  v7 = *(a1 + 40);
  *v1 = *a1;
  *(v1 + 8) = v3;
  *(v1 + 16) = v6;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  *(v1 + 40) = v7;
  outlined copy of MLRecommender.Identifier(v2, v3, v6);
  return outlined copy of MLRecommender.Identifier(v4, v5, v7);
}

void *_s8CreateML16RecommenderModelV7metrics8expected9predicted7cutoffsSayAA21RecommendationMetricsVyxGGqd___qd_0_SaySiGtSTRd__STRd_0_x4user_q_4itemt7ElementRtd__xAM_q_ANtAORtd_0_r0_lFZAA13MLRecommenderV10IdentifierO_AUSayAuM_AuNtGs15LazyMapSequenceVySayAA0I0VyA2UGGAuM_AuNtGTt2g5(uint64_t (*a1)(), uint64_t a2, void (*a3)(uint64_t *), unint64_t a4, uint64_t a5)
{
  v134 = a5;
  v142 = a4;
  v135 = a3;
  v136 = a2;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [(user: MLRecommender.Identifier, item: MLRecommender.Identifier)]);
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LazyMapSequence<[Recommendation<MLRecommender.Identifier, MLRecommender.Identifier>], (user: MLRecommender.Identifier, item: MLRecommender.Identifier)>);
  lazy protocol witness table accessor for type MLRecommender.Identifier and conformance MLRecommender.Identifier();
  lazy protocol witness table accessor for type MLRecommender.Identifier and conformance MLRecommender.Identifier();
  lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [(user: MLRecommender.Identifier, item: MLRecommender.Identifier)] and conformance [A], &demangling cache variable for type metadata for [(user: MLRecommender.Identifier, item: MLRecommender.Identifier)], &protocol conformance descriptor for [A]);
  lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type LazyMapSequence<[Recommendation<MLRecommender.Identifier, MLRecommender.Identifier>], (user: MLRecommender.Identifier, item: MLRecommender.Identifier)> and conformance LazyMapSequence<A, B>, &demangling cache variable for type metadata for LazyMapSequence<[Recommendation<MLRecommender.Identifier, MLRecommender.Identifier>], (user: MLRecommender.Identifier, item: MLRecommender.Identifier)>, &protocol conformance descriptor for LazyMapSequence<A, B>);
  KeyPath = swift_getKeyPath(&unk_33FCB0);

  ML13MLRecommenderV10IdentifierO4user_AJ4itemtG_AJs5NeverOTg503_s8d99ML16RecommenderModelV7metrics8expected9predicted7cutoffsSayAA21RecommendationMetricsVyxGGqd___qd_0_p10SiGtSTRd__y19_0_x4user_q_4itemt7b48Rtd__xAM_q_ANtAORtd_0_r0_lFZxxAM_q_ANt_tcfu_AA13f3V10g36O_AUSayAuM_AuNtGs15LazyMapSequenceVyP24AA0I0VyA2UGGAuM_AuNtGTG5s7KeyPathCyAjK_AjLtAJGTf1cn_n = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML13MLRecommenderV10IdentifierO4user_AJ4itemtG_AJs5NeverOTg503_s8d99ML16RecommenderModelV7metrics8expected9predicted7cutoffsSayAA21RecommendationMetricsVyxGGqd___qd_0_p10SiGtSTRd__y19_0_x4user_q_4itemt7b48Rtd__xAM_q_ANtAORtd_0_r0_lFZxxAM_q_ANt_tcfu_AA13f3V10g36O_AUSayAuM_AuNtGs15LazyMapSequenceVyP24AA0I0VyA2UGGAuM_AuNtGTG5s7KeyPathCyAjK_AjLtAJGTf1cn_n(a1, KeyPath);

  ML13MLRecommenderV10IdentifierO_SayAHGTt0g5 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8CreateML13MLRecommenderV10IdentifierO_SayAHGTt0g5(ML13MLRecommenderV10IdentifierO4user_AJ4itemtG_AJs5NeverOTg503_s8d99ML16RecommenderModelV7metrics8expected9predicted7cutoffsSayAA21RecommendationMetricsVyxGGqd___qd_0_p10SiGtSTRd__y19_0_x4user_q_4itemt7b48Rtd__xAM_q_ANtAORtd_0_r0_lFZxxAM_q_ANt_tcfu_AA13f3V10g36O_AUSayAuM_AuNtGs15LazyMapSequenceVyP24AA0I0VyA2UGGAuM_AuNtGTG5s7KeyPathCyAjK_AjLtAJGTf1cn_n);

  v8 = specialized _copyCollectionToContiguousArray<A>(_:)(ML13MLRecommenderV10IdentifierO_SayAHGTt0g5);
  ML13MLRecommenderV10IdentifierO_SayAHGTt0g5;
  v122[0] = v8;
  specialized MutableCollection<>.sort(by:)(v122, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));
  ML13MLRecommenderV10IdentifierO_SayAHGTt0g5;
  v9 = *(v134 + 16);
  v130 = v122[0];
  v10 = v9 * *(v122[0] + 16);
  if (!is_mul_ok(v9, *(v122[0] + 16)))
  {
    BUG();
  }

  v129 = v9;
  v137 = 0;
  if (v10 <= 0)
  {
    v10 = 0;
  }

  v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0, _swiftEmptyArrayStorage);
  v12 = *(a1 + 2);
  v13 = _swiftEmptyDictionarySingleton;
  v131 = 0;
  v14 = 0;
  v145 = _swiftEmptyDictionarySingleton;
  v141 = v11;
  if (v12)
  {
    v146 = v12;

    v137 = a1;
    v15 = a1 + 72;
    v151 = _swiftEmptyDictionarySingleton;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    do
    {
      v149 = v18;
      v154 = v17;
      v153 = *(v15 - 5);
      i = *(v15 - 4);
      v19 = *(v15 - 24);
      LODWORD(v143) = v19;
      v20 = *(v15 - 2);
      v21 = *(v15 - 1);
      v144 = v15;
      v22 = *v15;
      outlined copy of MLRecommender.Identifier(v153, i, v19);
      outlined copy of MLRecommender.Identifier(v20, v21, v22);
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v16, 0);
      v23 = swift_allocObject(&unk_390600, 32, 7);
      *(v23 + 16) = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
      v140 = v23;
      *(v23 + 24) = 0;
      v138 = v20;
      v139 = v21;
      LODWORD(v150) = v22;
      outlined copy of MLRecommender.Identifier(v20, v21, v22);
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v154, v149);
      v24 = v151;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v151);
      v122[0] = v24;
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v153, i, v143);
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(v24[2], v28);
      v30 = v24[2] + v28;
      if (v29)
      {
        BUG();
      }

      v31 = v26;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<MLRecommender.Identifier, [MLRecommender.Identifier]>);
      v32 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v30);
      v33 = v122[0];
      v151 = v122[0];
      if (v32)
      {
        v34 = i;
        v27 = specialized __RawDictionaryStorage.find<A>(_:)(v153, i, v143);
        LOBYTE(v36) = v36 & 1;
        v37 = v140;
        if ((v31 & 1) != v36)
        {
LABEL_64:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLRecommender.Identifier, v34, v36, v35);
          BUG();
        }

        v33 = v151;
      }

      else
      {
        v37 = v140;
      }

      LODWORD(v154) = v143;
      if ((v31 & 1) == 0)
      {
        v38 = v143;
        v39 = (*(v37 + 16))(v33);
        v33 = v151;
        v40 = 24 * v27;
        v151[(v27 >> 6) + 8] |= 1 << v27;
        v41 = v33[6];
        v42 = v153;
        *(v41 + v40) = v153;
        v43 = i;
        *(v41 + v40 + 8) = i;
        *(v41 + v40 + 16) = v38;
        *(v33[7] + 8 * v27) = v39;
        v44 = v33[2];
        v29 = __OFADD__(1, v44);
        v45 = v44 + 1;
        if (v29)
        {
          BUG();
        }

        v33[2] = v45;
        outlined copy of MLRecommender.Identifier(v42, v43, v154);
      }

      v46 = v33[7];

      v47 = *(v46 + 8 * v27);
      v48 = swift_isUniquelyReferenced_nonNull_native(v47);
      *(v46 + 8 * v27) = v47;
      if (!v48)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47[2] + 1, 1, v47);
        *(v46 + 8 * v27) = v47;
      }

      v49 = v47[2];
      if (v47[3] >> 1 <= v49)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v47[3] >= 2uLL, v49 + 1, 1, v47);
        *(v46 + 8 * v27) = v47;
      }

      v47[2] = v49 + 1;
      v50 = 3 * v49;
      v51 = v138;
      v47[v50 + 4] = v138;
      v52 = v139;
      v47[v50 + 5] = v139;
      v53 = v150;
      LOBYTE(v47[v50 + 6]) = v150 & 1;
      outlined consume of MLRecommender.Identifier(v153, i, v154);
      outlined consume of MLRecommender.Identifier(v51, v52, v53);
      v15 = v144 + 48;
      v16 = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
      v17 = partial apply for specialized thunk for @callee_guaranteed () -> (@owned [B]);
      v14 = v140;
      v18 = v140;
      --v146;
    }

    while (v146);
    v137;
    v131 = partial apply for specialized thunk for @callee_guaranteed () -> (@owned [B]);
    v137 = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
    v11 = v141;
    v13 = v151;
  }

  v54 = v136;
  v55 = *(v136 + 16);
  v151 = v13;
  v140 = v14;
  if (v55)
  {
    v56 = v55;

    v144 = (v56 - 1);
    v57 = (v54 + 88);
    v145 = _swiftEmptyDictionarySingleton;
    *&v143 = 0;
    v153 = 0;
    for (i = 0; ; i = v146)
    {
      v58 = v57[-4].i64[1];
      v59 = v57[-3].i64[0];
      v60 = v57[-2].u64[0];
      v154 = v60;
      v61 = v57[-2].i64[1];
      v62 = v57[-1].i64[1];
      v63 = v57->i64[0];
      v64 = v57[-3].i8[8];
      v150 = v57;
      v65 = v57[-1].i8[0];
      v147 = v64;
      v148 = v65;
      v149 = v58;
      v122[0] = v58;
      v122[1] = v59;
      v123 = v64;
      v124 = v60;
      v125 = v61;
      v126 = v65;
      v127 = v62;
      v128 = v63;
      outlined copy of MLRecommender.Identifier(v58, v59, v64);
      outlined copy of MLRecommender.Identifier(v60, v61, v65);
      v135(v122);
      outlined consume of MLRecommender.Identifier(v149, v59, v64);
      outlined consume of MLRecommender.Identifier(v154, v61, v65);
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v143, 0);
      LODWORD(v154) = v118;
      v66 = swift_allocObject(&unk_390628, 32, 7);
      *(v66 + 16) = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
      v146 = v66;
      *(v66 + 24) = 0;
      v149 = v119;
      v138 = v120;
      LODWORD(v139) = v121;
      outlined copy of MLRecommender.Identifier(v119, v120, v121);
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v153, i);
      v67 = v145;
      v68 = swift_isUniquelyReferenced_nonNull_native(v145);
      v122[0] = v67;
      i = v116;
      *&v143 = v117;
      v69 = v154;
      v153 = specialized __RawDictionaryStorage.find<A>(_:)(v116, v117, v154);
      v71 = (v70 & 1) == 0;
      v29 = __OFADD__(v67[2], v71);
      v72 = v67[2] + v71;
      if (v29)
      {
        BUG();
      }

      v73 = v70;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<MLRecommender.Identifier, [MLRecommender.Identifier]>);
      v74 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v68, v72);
      v75 = v122[0];
      if (v74)
      {
        v76 = i;
        v34 = v143;
        v153 = specialized __RawDictionaryStorage.find<A>(_:)(i, v143, v69);
        LOBYTE(v36) = v36 & 1;
        if ((v73 & 1) != v36)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v76 = i;
      }

      LODWORD(v154) = v69;
      if ((v73 & 1) == 0)
      {
        v77 = (*(v146 + 16))(v75);
        v78 = v153;
        v79 = 24 * v153;
        v75[(v153 >> 6) + 8] |= 1 << v153;
        v80 = v75[6];
        *(v80 + v79) = v76;
        v81 = v143;
        *(v80 + v79 + 8) = v143;
        *(v80 + v79 + 16) = v69;
        *(v75[7] + 8 * v78) = v77;
        v82 = v75[2];
        v29 = __OFADD__(1, v82);
        v83 = v82 + 1;
        if (v29)
        {
          BUG();
        }

        v75[2] = v83;
        outlined copy of MLRecommender.Identifier(v76, v81, v154);
      }

      v84 = v75[7];
      v145 = v75;

      v85 = v153;
      v86 = *(v84 + 8 * v153);
      v87 = swift_isUniquelyReferenced_nonNull_native(v86);
      *(v84 + 8 * v85) = v86;
      if (!v87)
      {
        v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v86[2] + 1, 1, v86);
        *(v84 + 8 * v153) = v86;
      }

      v88 = v86[2];
      if (v86[3] >> 1 <= v88)
      {
        v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v86[3] >= 2uLL, v88 + 1, 1, v86);
        *(v84 + 8 * v153) = v86;
      }

      v86[2] = v88 + 1;
      v89 = 3 * v88;
      v90 = v149;
      v86[v89 + 4] = v149;
      v91 = v138;
      v86[v89 + 5] = v138;
      v92 = v139;
      LOBYTE(v86[v89 + 6]) = v139 & 1;
      outlined consume of MLRecommender.Identifier(i, v143, v154);
      outlined consume of MLRecommender.Identifier(v90, v91, v92);
      if (!v144)
      {
        break;
      }

      --v144;
      v57 = v150 + 4;
      *&v143 = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
      v153 = thunk for @callee_guaranteed () -> (@owned [B])specialized partial apply;
    }

    v136;
    v132 = thunk for @callee_guaranteed () -> (@owned [B])specialized partial apply;
    v133 = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
    v11 = v141;
    v13 = v151;
  }

  else
  {
    v133 = 0;
    v132 = 0;
    v146 = 0;
  }

  v93 = v130;
  v136 = *(v130 + 16);
  if (v136)
  {
    v94 = 0;
    do
    {
      if (v94 >= *(v93 + 16))
      {
        BUG();
      }

      v141 = v11;
      v142 = v94;
      v95 = 24 * v94;
      v96 = *(v93 + v95 + 32);
      v97 = *(v93 + v95 + 40);
      v98 = *(v93 + v95 + 48);
      LOBYTE(v149) = v98 & 1;
      v99 = v13[2];
      v154 = v96;
      outlined copy of MLRecommender.Identifier(v96, v97, v98);
      v150 = _swiftEmptyArrayStorage;
      if (v99)
      {
        v100 = specialized __RawDictionaryStorage.find<A>(_:)(v154, v97, v149);
        v150 = _swiftEmptyArrayStorage;
        if (v101)
        {
          v150 = *(v151[7] + 8 * v100);
        }
      }

      v102 = v145;
      v103 = _swiftEmptyArrayStorage;
      if (v145[2])
      {
        v103 = _swiftEmptyArrayStorage;
        v104 = specialized __RawDictionaryStorage.find<A>(_:)(v154, v97, v149);
        if (v105)
        {
          v103 = *(v102[7] + 8 * v104);
        }
      }

      ML16RecommenderModelV15precisionRecall8expected9predicted7cutoffsSaySd0E0_Sd6recalltGSayq_G_AKSaySiGtFZAA13MLRecommenderV10IdentifierO_APTt2g5 = _s8CreateML16RecommenderModelV15precisionRecall8expected9predicted7cutoffsSaySd0E0_Sd6recalltGSayq_G_AKSaySiGtFZAA13MLRecommenderV10IdentifierO_APTt2g5(v150, v103, v134);
      v103;
      v107 = v98;
      v135 = ML16RecommenderModelV15precisionRecall8expected9predicted7cutoffsSaySd0E0_Sd6recalltGSayq_G_AKSaySiGtFZAA13MLRecommenderV10IdentifierO_APTt2g5;
      if (v129)
      {
        v11 = v141;
        v108 = v154;
        if (v129 > ML16RecommenderModelV15precisionRecall8expected9predicted7cutoffsSaySd0E0_Sd6recalltGSayq_G_AKSaySiGtFZAA13MLRecommenderV10IdentifierO_APTt2g5[2])
        {
          BUG();
        }

        v139 = v150[1].i64[0];
        v109 = (ML16RecommenderModelV15precisionRecall8expected9predicted7cutoffsSaySd0E0_Sd6recalltGSayq_G_AKSaySiGtFZAA13MLRecommenderV10IdentifierO_APTt2g5 + 4);
        v110 = 0;
        v144 = v97;
        LODWORD(v138) = v107;
        do
        {
          i = *(v134 + 8 * v110 + 32);
          v153 = v109;
          v143 = *v109;
          outlined copy of MLRecommender.Identifier(v108, v97, v107);
          outlined copy of MLRecommender.Identifier(v108, v97, v107);
          v111 = v11[2];
          v112 = v11;
          if (v11[3] >> 1 <= v111)
          {
            v112 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v11[3] >= 2uLL, v111 + 1, 1, v11);
          }

          ++v110;
          v112[2] = v111 + 1;
          v11 = v112;
          v113 = 7 * v111;
          v108 = v154;
          v11[v113 + 4] = v154;
          v97 = v144;
          v11[v113 + 5] = v144;
          LOBYTE(v11[v113 + 6]) = v149;
          v11[v113 + 7] = i;
          *&v11[v113 + 8] = v143;
          v11[v113 + 10] = v139;
          LOBYTE(v107) = v138;
          outlined consume of MLRecommender.Identifier(v108, v97, v138);
          v109 = (v153 + 16);
        }

        while (v129 != v110);
      }

      else
      {
        v11 = v141;
        v108 = v154;
      }

      v114 = v142 + 1;
      outlined consume of MLRecommender.Identifier(v108, v97, v107);
      v150;
      v135;
      v94 = v114;
      v93 = v130;
      v13 = v151;
    }

    while (v114 != v136);
  }

  v145;

  v13;
  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v137, 0);
  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v131, v140);
  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v133, 0);
  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v132, v146);
  return v11;
}

void *MLRecommender.getSimilarItems(fromItems:maxCount:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v98 = a2;
  v97 = v4;
  v7 = type metadata accessor for MLRecommender(0);
  v8 = *(a1 + 16);
  if (*(v6 + *(v7 + 44)))
  {
    if (v8)
    {
      __src = v6;
      v117 = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
      v9 = _swiftEmptyArrayStorage;
      v10 = a1 + 32;
      do
      {
        v119 = v8;
        v114 = v9;
        outlined init with copy of TabularRegressionTask(v10, &v99);
        v11 = v101;
        v12 = v102;
        __swift_project_boxed_opaque_existential_0Tm(&v99, v101);
        (*(v12 + 8))(v11, v12);
        v13 = v103;
        if (v105)
        {
          outlined consume of MLDataValue(v103, v104, v105);
          v13 = 0;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v99);
        v9 = v114;
        v117 = v114;
        v14 = v114[2];
        v15 = v114[3];
        v16 = v14 + 1;
        if (v15 >> 1 <= v14)
        {
          v116 = v14 + 1;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 >= 2, v16, 1);
          v16 = v116;
          v9 = v117;
        }

        v9[2] = v16;
        v9[v14 + 4] = v13;
        v10 += 40;
        v8 = (v119 - 1);
      }

      while (v119 != (&dword_0 + 1));
      v6 = __src;
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
      v16 = _swiftEmptyArrayStorage[2];
      if (!v16)
      {
        _swiftEmptyArrayStorage;
        v120 = _swiftEmptyArrayStorage;
        v26 = _swiftEmptyArrayStorage;
        v119 = _swiftEmptyArrayStorage;
        ML14_UntypedColumnC_s5Error_pTt1g5 = _swiftEmptyArrayStorage;
LABEL_45:
        v99 = ML14_UntypedColumnC_s5Error_pTt1g5;
        v41 = alloca(24);
        v42 = alloca(32);
        v93 = &v99;
        ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
        LOBYTE(__src) = v43;
        v99;
        v99 = v26;
        v44 = alloca(24);
        v45 = alloca(24);
        v123 = &v99;
        v46 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
        goto LABEL_73;
      }
    }

    v116 = v16;
    v114 = v9;
    memcpy(__dst, v6, sizeof(__dst));
    v25 = 0;
    v120 = _swiftEmptyArrayStorage;
    v26 = _swiftEmptyArrayStorage;
    v119 = _swiftEmptyArrayStorage;
    ML14_UntypedColumnC_s5Error_pTt1g5 = _swiftEmptyArrayStorage;
    do
    {
      if (v25 >= v114[2])
      {
        BUG();
      }

      v115 = v25;
      v106 = v114[v25 + 4];
      v27 = specialized RecommenderModel.similarItems(to:count:)(v106, a3, a4, 0, 1, v98);
      v107 = v27[2];
      if (v107)
      {
        v28 = v27 + 7;
        v29 = 0;
        v108 = v27;
        do
        {
          if (v29 >= v27[2])
          {
            BUG();
          }

          v112 = v29;
          v30 = *(v28 - 3);
          v31 = *(v28 - 2);
          v32 = *(v28 - 2);
          v113 = *v28;
          v109 = v31;
          outlined copy of MLRecommender.Identifier(v30, v31, v32);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(ML14_UntypedColumnC_s5Error_pTt1g5);
          v111 = v26;
          __src = v30;
          if (!isUniquelyReferenced_nonNull_native)
          {
            ML14_UntypedColumnC_s5Error_pTt1g5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, ML14_UntypedColumnC_s5Error_pTt1g5[2] + 1, 1, ML14_UntypedColumnC_s5Error_pTt1g5);
          }

          v34 = ML14_UntypedColumnC_s5Error_pTt1g5[2];
          if (ML14_UntypedColumnC_s5Error_pTt1g5[3] >> 1 <= v34)
          {
            ML14_UntypedColumnC_s5Error_pTt1g5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(ML14_UntypedColumnC_s5Error_pTt1g5[3] >= 2uLL, v34 + 1, 1, ML14_UntypedColumnC_s5Error_pTt1g5);
          }

          v35 = ML14_UntypedColumnC_s5Error_pTt1g5;
          ML14_UntypedColumnC_s5Error_pTt1g5[2] = v34 + 1;
          v35[v34 + 4] = v106;
          if ((v32 & 1) == 0)
          {
            outlined consume of MLRecommender.Identifier(__src, v109, 0);
            BUG();
          }

          v26 = v111;
          if (!swift_isUniquelyReferenced_nonNull_native(v111))
          {
            v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26);
          }

          v36 = v26[2];
          if (v26[3] >> 1 <= v36)
          {
            v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v26[3] >= 2uLL, v36 + 1, 1, v26);
          }

          v26[2] = v36 + 1;
          v26[v36 + 4] = __src;
          if (!swift_isUniquelyReferenced_nonNull_native(v120))
          {
            v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v120[2] + 1, 1, v120);
          }

          v37 = v120[2];
          if (v120[3] >> 1 <= v37)
          {
            v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v120[3] >= 2uLL, v37 + 1, 1, v120);
          }

          v38 = v120;
          v120[2] = v37 + 1;
          a3 = v113;
          *&v38[v37 + 4] = v113;
          if (!swift_isUniquelyReferenced_nonNull_native(v119))
          {
            v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v119[2] + 1, 1, v119);
          }

          v39 = v119[2];
          if (v119[3] >> 1 <= v39)
          {
            v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v119[3] >= 2uLL, v39 + 1, 1, v119);
          }

          v29 = (v112 + 1);
          v40 = v119;
          v119[2] = v39 + 1;
          v40[v39 + 4] = v29;
          v28 += 4;
          v27 = v108;
        }

        while (v107 != v29);
      }

      v25 = v115 + 1;
      v27;
    }

    while (v25 != v116);
    v114;
    goto LABEL_45;
  }

  if (v8)
  {
    __src = v6;
    v117 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v17 = _swiftEmptyArrayStorage;
    v18 = a1 + 32;
    do
    {
      v119 = v8;
      v115 = v17;
      outlined init with copy of TabularRegressionTask(v18, &v99);
      v19 = v101;
      v20 = v102;
      __swift_project_boxed_opaque_existential_0Tm(&v99, v101);
      (*(v20 + 8))(v19, v20);
      if (v105 == 2)
      {
        ML14_UntypedColumnC_s5Error_pTt1g5 = v104;
        v120 = v103;
      }

      else
      {
        outlined consume of MLDataValue(v103, v104, v105);
        v120 = 0;
        ML14_UntypedColumnC_s5Error_pTt1g5 = 0xE000000000000000;
      }

      v17 = v115;
      __swift_destroy_boxed_opaque_existential_1Tm(&v99);
      v117 = v17;
      v21 = v17[2];
      v22 = v17[3];
      v23 = v21 + 1;
      if (v22 >> 1 <= v21)
      {
        v110 = v21 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22 >= 2, v21 + 1, 1);
        v23 = v110;
        v17 = v117;
      }

      v17[2] = v23;
      v24 = 2 * v21;
      v17[v24 + 4] = v120;
      v17[v24 + 5] = ML14_UntypedColumnC_s5Error_pTt1g5;
      v18 += 40;
      v8 = (v119 - 1);
    }

    while (v119 != (&dword_0 + 1));
    v6 = __src;
    goto LABEL_47;
  }

  v17 = _swiftEmptyArrayStorage;
  v23 = _swiftEmptyArrayStorage[2];
  if (v23)
  {
LABEL_47:
    v110 = v23;
    v96 = v17 + 4;
    memcpy(v95, v6, sizeof(v95));
    v120 = _swiftEmptyArrayStorage;
    v47 = _swiftEmptyArrayStorage;
    v119 = _swiftEmptyArrayStorage;
    ML14_UntypedColumnC_s5Error_pTt1g5 = _swiftEmptyArrayStorage;
    v48 = 0;
    v115 = v17;
    do
    {
      if (v48 >= v17[2])
      {
        BUG();
      }

      v116 = v48;
      v49 = 2 * v48;
      v50 = v96[v49];
      v51 = v96[v49 + 1];
      swift_bridgeObjectRetain_n(v51, 2);
      v108 = v50;
      v52 = specialized RecommenderModel.similarItems(to:count:)(v50, a3, a4, v51, 0, v98);
      __src = v51;
      v51;
      v109 = v52[2];
      if (v109)
      {
        v53 = v52 + 7;
        v54 = 0;
        v114 = v52;
        do
        {
          if (v54 >= v52[2])
          {
            BUG();
          }

          v112 = v54;
          v111 = v47;
          v55 = *(v53 - 3);
          v56 = *(v53 - 2);
          v57 = *(v53 - 2);
          v113 = *v53;

          outlined copy of MLRecommender.Identifier(v55, v56, v57);
          v58 = swift_isUniquelyReferenced_nonNull_native(ML14_UntypedColumnC_s5Error_pTt1g5);
          v106 = v55;
          v107 = v56;
          if (!v58)
          {
            ML14_UntypedColumnC_s5Error_pTt1g5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, ML14_UntypedColumnC_s5Error_pTt1g5[2] + 1, 1, ML14_UntypedColumnC_s5Error_pTt1g5);
          }

          v59 = ML14_UntypedColumnC_s5Error_pTt1g5[2];
          if (ML14_UntypedColumnC_s5Error_pTt1g5[3] >> 1 <= v59)
          {
            ML14_UntypedColumnC_s5Error_pTt1g5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(ML14_UntypedColumnC_s5Error_pTt1g5[3] >= 2uLL, v59 + 1, 1, ML14_UntypedColumnC_s5Error_pTt1g5);
          }

          v60 = ML14_UntypedColumnC_s5Error_pTt1g5;
          ML14_UntypedColumnC_s5Error_pTt1g5[2] = v59 + 1;
          v61 = 2 * v59;
          v60[v61 + 4] = v108;
          v60[v61 + 5] = __src;
          if (v57)
          {
            BUG();
          }

          v47 = v111;
          if (!swift_isUniquelyReferenced_nonNull_native(v111))
          {
            v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47[2] + 1, 1, v47);
          }

          v62 = v47[2];
          if (v47[3] >> 1 <= v62)
          {
            v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v47[3] >= 2uLL, v62 + 1, 1, v47);
          }

          v47[2] = v62 + 1;
          v63 = 2 * v62;
          v47[v63 + 4] = v106;
          v47[v63 + 5] = v107;
          if (!swift_isUniquelyReferenced_nonNull_native(v120))
          {
            v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v120[2] + 1, 1, v120);
          }

          v64 = v120[2];
          if (v120[3] >> 1 <= v64)
          {
            v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v120[3] >= 2uLL, v64 + 1, 1, v120);
          }

          v65 = v120;
          v120[2] = v64 + 1;
          a3 = v113;
          *&v65[v64 + 4] = v113;
          if (!swift_isUniquelyReferenced_nonNull_native(v119))
          {
            v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v119[2] + 1, 1, v119);
          }

          v66 = v119[2];
          if (v119[3] >> 1 <= v66)
          {
            v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v119[3] >= 2uLL, v66 + 1, 1, v119);
          }

          v54 = (v112 + 1);
          v67 = v119;
          v119[2] = v66 + 1;
          v67[v66 + 4] = v54;
          v53 += 4;
          v52 = v114;
        }

        while (v109 != v54);
      }

      v68 = v116 + 1;
      __src;
      v52;
      v48 = v68;
      v69 = v68 == v110;
      v17 = v115;
    }

    while (!v69);
    v115;
    goto LABEL_72;
  }

  _swiftEmptyArrayStorage;
  v120 = _swiftEmptyArrayStorage;
  v47 = _swiftEmptyArrayStorage;
  v119 = _swiftEmptyArrayStorage;
  ML14_UntypedColumnC_s5Error_pTt1g5 = _swiftEmptyArrayStorage;
LABEL_72:
  v99 = ML14_UntypedColumnC_s5Error_pTt1g5;
  v70 = alloca(24);
  v71 = alloca(32);
  v93 = &v99;
  ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  LOBYTE(__src) = v72;
  v99;
  v99 = v47;
  v73 = alloca(24);
  v74 = alloca(24);
  v123 = &v99;
  v46 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
LABEL_73:
  v75 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(v46);
  v77 = v76;
  v99;
  LOBYTE(v113) = v77;
  v78 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLUntypedColumn)>);
  inited = swift_initStackObject(v78, v92);
  v112 = &v122;
  *(inited + 16) = 4;
  *(inited + 24) = 8;
  *(inited + 32) = 0x64695F6D657469;
  *(inited + 40) = 0xE700000000000000;
  v80 = ML14_UntypedColumnC_s5Error_pTt1g5;
  *(inited + 48) = ML14_UntypedColumnC_s5Error_pTt1g5;
  ML14_UntypedColumnC_s5Error_pTt1g5 = v80;
  v81 = __src;
  *(inited + 56) = __src & 1;
  *(inited + 64) = 0x72616C696D6973;
  *(inited + 72) = 0xE700000000000000;
  *(inited + 80) = v75;
  *(inited + 88) = v77 & 1;
  *(inited + 96) = 0x65726F6373;
  *(inited + 104) = 0xE500000000000000;
  LOBYTE(v99) = v120;
  v111 = v75;
  v82 = alloca(24);
  v83 = alloca(32);
  v123 = &v99;
  LODWORD(v120) = v81;
  outlined copy of Result<_DataTable, Error>(v80, v81);
  LODWORD(__src) = LOBYTE(v113);
  outlined copy of Result<_DataTable, Error>(v75, SLOBYTE(v113));
  *(inited + 112) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  *(inited + 120) = v84 & 1;
  v99;
  *(inited + 128) = 1802396018;
  *(inited + 136) = 0xE400000000000000;
  v99 = v119;
  v85 = alloca(24);
  v86 = alloca(24);
  v123 = &v99;
  *(inited + 144) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
  *(inited + 152) = v87 & 1;
  v99;
  v88 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for MLUntypedColumn, &protocol witness table for String);
  _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(v88);
  outlined consume of Result<_DataTable, Error>(v111, __src);
  result = outlined consume of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, v120);
  if (!v5)
  {
    result = v99;
    v90 = v100;
    v91 = v97;
    *v97 = v99;
    *(v91 + 8) = v90;
  }

  return result;
}

uint64_t MLRecommender.getSimilarItems<A>(fromItems:maxCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v37 = v7;
  v39 = a3;
  v36 = v6;
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(type metadata accessor for MLRecommender(0) + 44);
  v35 = v8;
  v13 = *(v8 + v12) == 0;
  v38 = a4;
  if (v13)
  {
    v33 = v10;
    v23 = v11;
    v24 = v11 & 1;
    outlined copy of Result<_DataTable, Error>(v10, v23);
    type metadata accessor for MLDataColumn(0, v39, a4, v25);
    v26 = MLDataColumn.count.getter();
    outlined consume of Result<_DataTable, Error>(v10, v24);
    if (v26 < 0)
    {
      BUG();
    }

    v27 = alloca(41);
    v28 = alloca(48);
    v34 = v39;
    v35 = v38;
    v36 = v10;
    LOBYTE(v37) = v24;
    v29 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_SSs5NeverOTg5(partial apply for closure #1 in MLRecommender.getSimilarItems<A>(fromItems:maxCount:), &v32, 0, v26);
    v21 = v29;
    v22 = specialized _arrayForceCast<A, B>(_:)(v29);
  }

  else
  {
    v33 = v10;
    v14 = v11;
    v15 = v11 & 1;
    outlined copy of Result<_DataTable, Error>(v10, v14);
    type metadata accessor for MLDataColumn(0, v39, a4, v16);
    v17 = MLDataColumn.count.getter();
    outlined consume of Result<_DataTable, Error>(v10, v15);
    if (v17 < 0)
    {
      BUG();
    }

    v18 = alloca(41);
    v19 = alloca(48);
    v34 = v39;
    v35 = v38;
    v36 = v10;
    LOBYTE(v37) = v15;
    v20 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_Sis5NeverOTg5(partial apply for closure #2 in MLRecommender.getSimilarItems<A>(fromItems:maxCount:), &v32, 0, v17);
    v21 = v20;
    v22 = specialized _arrayForceCast<A, B>(_:)(v20);
  }

  v30 = v22;
  v21;
  MLRecommender.getSimilarItems(fromItems:maxCount:)(v30, 10, a5, a6);
  return v30;
}

void *closure #1 in MLRecommender.getSimilarItems<A>(fromItems:maxCount:)(uint64_t *a1, void *a2, char a3, uint64_t a4, uint64_t a5, double a6)
{
  v22 = v6;
  v21 = a5;
  v19 = *(a4 - 8);
  v9 = *(v19 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v20 = *a1;
  v16 = a2;
  LOBYTE(v17) = a3 & 1;
  outlined copy of Result<_DataTable, Error>(a2, a3);
  v13 = type metadata accessor for MLDataColumn(0, a4, a5, v12);
  MLDataColumn.subscript.getter(v20, v13, a6);
  outlined consume of Result<_DataTable, Error>(v16, v17);
  (*(v21 + 32))(a4);
  (*(v19 + 8))(&v16, a4);
  v14 = v17;
  if (v18 != 2)
  {
    outlined consume of MLDataValue(v16, v17, v18);
    BUG();
  }

  result = v22;
  *v22 = v16;
  result[1] = v14;
  return result;
}

void *closure #2 in MLRecommender.getSimilarItems<A>(fromItems:maxCount:)(uint64_t *a1, void *a2, char a3, uint64_t a4, uint64_t a5, double a6)
{
  v21 = v6;
  v20 = a5;
  v18 = *(a4 - 8);
  v9 = *(v18 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v19 = *a1;
  v15 = a2;
  LOBYTE(v16) = a3 & 1;
  outlined copy of Result<_DataTable, Error>(a2, a3);
  v13 = type metadata accessor for MLDataColumn(0, a4, a5, v12);
  MLDataColumn.subscript.getter(v19, v13, a6);
  outlined consume of Result<_DataTable, Error>(v15, v16);
  (*(v20 + 32))(a4);
  (*(v18 + 8))(&v15, a4);
  if (v17)
  {
    outlined consume of MLDataValue(v15, v16, v17);
    BUG();
  }

  result = v21;
  *v21 = v15;
  return result;
}

void *specialized RecommenderModel.similarItems(to:count:)(Swift::UInt a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v8 = *(v6 + 24);
  if (!*(v8 + 16))
  {
    return _swiftEmptyArrayStorage;
  }

  v34 = *(v7 + 16);
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a4, a5 & 1);
  if ((v11 & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  v12 = specialized RecommenderModel.similarItems(itemIndex:count:)(*(*(v8 + 56) + 8 * v10), a6, a2, a3);
  v13 = v12[2];
  v33 = v12;
  if (v13)
  {
    v32 = *(v34 + 16);
    v14 = v12 + 5;
    v15 = _swiftEmptyArrayStorage;
    do
    {
      v16 = *(v14 - 1);
      if (v16 >= v32)
      {
        BUG();
      }

      v30 = *v14;
      v17 = 24 * v16;
      v18 = *(v34 + v17 + 32);
      v35 = v15;
      v19 = *(v34 + v17 + 40);
      v20 = *(v34 + v17 + 48);
      outlined copy of MLRecommender.Identifier(v18, v19, v20);
      v31 = v18;
      v21 = v18;
      v22 = v19;
      v15 = v35;
      outlined copy of MLRecommender.Identifier(v21, v22, v20);
      v29 = v13;
      if (!swift_isUniquelyReferenced_nonNull_native(v35))
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 16) + 1, 1, v35);
      }

      v23 = v15[2];
      v24 = v23 + 1;
      if (v15[3] >> 1 <= v23)
      {
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v15[3] >= 2uLL, v23 + 1, 1, v15);
        v24 = v23 + 1;
        v15 = v26;
      }

      v15[2] = v24;
      v25 = 4 * v23;
      v15[v25 + 4] = v31;
      v15[v25 + 5] = v22;
      LOBYTE(v15[v25 + 6]) = v20 & 1;
      v15[v25 + 7] = v30;
      outlined consume of MLRecommender.Identifier(v31, v22, v20);
      v14 += 2;
      v13 = v29 - 1;
    }

    while (v29 != 1);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  v33;
  v28 = specialized _arrayForceCast<A, B>(_:)(v15);
  v15;
  return v28;
}

uint64_t MLRecommender.ModelAlgorithmType.playgroundDescription.getter()
{
  v1 = v0;
  objc_allocWithZone(NSAttributedString);
  v2 = @nonobjc NSAttributedString.init(string:attributes:)(0x6D6973206D657449, 0xEF79746972616C69, 0);
  result = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSAttributedString, NSAttributedString_ptr);
  v1[3] = result;
  *v1 = v2;
  return result;
}

uint64_t MLRecommender.SimilarityType.description.getter()
{
  if (!*v0)
  {
    return 0x656E69736F63;
  }

  if (*v0 == 1)
  {
    return 0x6472616363616ALL;
  }

  return 0x6E6F7372616570;
}

uint64_t MLRecommender.SimilarityType.playgroundDescription.getter()
{
  v2 = v0;
  if (*v1)
  {
    v3 = 0xE700000000000000;
    if (*v1 == 1)
    {
      v4 = 0x6472616363616ALL;
    }

    else
    {
      v4 = 0x6E6F7372616570;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x656E69736F63;
  }

  objc_allocWithZone(NSAttributedString);
  v5 = @nonobjc NSAttributedString.init(string:attributes:)(v4, v3, 0);
  result = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSAttributedString, NSAttributedString_ptr);
  v2[3] = result;
  *v2 = v5;
  return result;
}

uint64_t Int.identifierValue.getter(uint64_t a1)
{
  *result = a1;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t String.identifierValue.getter(uint64_t a1, uint64_t a2)
{
  *v2 = a1;
  *(v2 + 8) = a2;
  *(v2 + 16) = 2;
}

void *_s8CreateML21ItemSimilarityTrainerV10similarity13configuration4data9itemCountACyxGxm_AA0cD13ConfigurationV13LinearAlgebra12SparseMatrixVySdGSitcfCAA07PearsonD0V_Ttt3g5Tm(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t (*a5)(__int128 *, uint64_t), double a6)
{
  v9 = v6;
  v26 = a2;
  v29 = a5;
  v27 = a1;
  v28 = a6;
  v24 = *(a3 + 3);
  v20 = *(a3 + 4);
  v25 = *(a3 + 5);
  v10 = a3[1];
  v11 = a3[2];
  v21 = *a3;
  v22 = v10;
  v23 = v11;
  outlined retain of [Int](&v24);
  outlined retain of [Int](&v20);
  outlined retain of ContiguousArray<Double>(&v25);
  v12 = v29(a3, a4);
  outlined release of [Int?](&v24);
  outlined release of [Int?](&v20);
  outlined release of _NativeDictionary<String?, Int>.Iterator(&v25);
  v13 = _s13LinearAlgebra29UpperStrictlyTriangularMatrixV8rowCount06columnH0ACyxGSi_SitcfCSd_Tt1g5(a4, a4);
  *v9 = v28;
  *(v9 + 8) = v27;
  *(v9 + 16) = v26;
  v14 = v22;
  v15 = v23;
  *(v9 + 24) = v21;
  *(v9 + 40) = v14;
  *(v9 + 56) = v15;
  *(v9 + 72) = v12;
  *(v9 + 80) = v13;
  *(v9 + 88) = v16;
  *(v9 + 96) = v17;
  *(v9 + 104) = v18;
  result = _swiftEmptyDictionarySingleton;
  *(v9 + 112) = _swiftEmptyDictionarySingleton;
  return result;
}

uint64_t _s13LinearAlgebra29UpperStrictlyTriangularMatrixV8rowCount06columnH0ACyxGSi_SitcfCSd_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = _s13LinearAlgebra29UpperStrictlyTriangularMatrixV8dataSizeyS2i_SitFZSd_Tt1g5(a1, a2);
  v24 = _ss15ContiguousArrayV9repeating5countAByxGx_SitcfCSd_Tt1g5(v2, 0.0);
  if (a1 < 0)
  {
    BUG();
  }

  if (a1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1, 0);
    v3 = a2 - 1;
    if (__OFSUB__(a2, 1))
    {
      BUG();
    }

    v4 = 0;
    v5 = a1;
    do
    {
      v6 = v4 * v3;
      if (!is_mul_ok(v4, v3))
      {
        BUG();
      }

      v7 = v4 - 1;
      v9 = v4 - 1;
      v10 = v4;
      v8 = (v4 - 1) * v4;
      if (!is_mul_ok(v9, v10))
      {
        BUG();
      }

      v11 = v8 / 2;
      v12 = __OFSUB__(v6, v11);
      v13 = v6 - v11;
      if (v12)
      {
        BUG();
      }

      v14 = v7 + 1;
      v12 = __OFSUB__(v13, v14);
      v15 = v13 - v14;
      if (v12)
      {
        BUG();
      }

      v16 = _swiftEmptyArrayStorage[2];
      if (_swiftEmptyArrayStorage[3] >> 1 <= v16)
      {
        v23 = v3;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v16 + 1, 1);
        v3 = v23;
        v5 = a1;
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      _swiftEmptyArrayStorage[v16 + 4] = v15;
      v4 = v14 + 1;
    }

    while (v14 + 1 != v5);
  }

  v17 = v24[2];
  if (swift_isUniquelyReferenced_nonNull_native(_swiftEmptyArrayStorage))
  {
    v18 = _swiftEmptyArrayStorage;
  }

  else
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
  }

  v19 = *(v18 + 2);
  v20 = a1;
  if (*(v18 + 3) >> 1 <= v19)
  {
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v18 + 3) >= 2uLL, v19 + 1, 1, v18);
    v20 = a1;
    v18 = v22;
  }

  *(v18 + 2) = v19 + 1;
  *&v18[8 * v19 + 32] = v17;
  return v20;
}

unint64_t specialized ItemSimilarityTrainer.train()()
{
  v1 = v0;
  v2 = *(*(v0 + 72) + 16);
  v3 = *(v0 + 8);
  v40 = *v0;
  v4 = type metadata accessor for InteractionTableBuilder();
  swift_initStackObject(v4, v24);
  v37 = InteractionTableBuilder.init(itemCount:maximumInteractionsPerItem:minimumInteractionScore:)(v2, v3, v40);
  v5 = *(v0 + 24);
  if (v5 < 0)
  {
    BUG();
  }

  if (v5)
  {
    v6 = 0;
    score = *(v0 + 24);
    do
    {
      *&v40 = v6 + 1;
      v7 = *(v1 + 40);
      v8 = *(v1 + 48);
      v9 = *(v1 + 56);
      v10 = *(v1 + 64);
      v25 = *(v1 + 24);
      v26 = v7;
      v27 = v8;
      v28 = v9;
      v29 = v10;
      v30 = v6;

      specialized ItemSimilarityTrainer.processUser<A>(userIndex:ratings:)(v6, &v25);
      outlined release of SparseMatrix<Double>.MajorCollection(&v25);
      v6 = *&v40;
    }

    while (*&score != *&v40);
  }

  v11 = *(v1 + 88);
  v12 = *(v1 + 96);
  v13 = *(v1 + 104);
  v32 = *(v1 + 80);
  v36 = v13;
  if (v11 >= 2 && v32 > 0)
  {
    v33 = *(v1 + 72);
    v35 = v33 + 32;
    v38 = v11;

    v14 = v38;
    v15 = 1;
    v16 = 0.0;
    v17 = 0;
    v34 = v12;
    do
    {
      if (*&v16 >= *(v12 + 16))
      {
        BUG();
      }

      v18 = *(v12 + 8 * *&v16 + 32);
      v19 = v15 + 1;
      v20 = v17;
      if (v15 + 1 == v14)
      {
        v20 = v17 + 1;
        if (__OFADD__(1, v17))
        {
          BUG();
        }

        v19 = v17 + 2;
        if (__OFADD__(1, v20))
        {
          BUG();
        }
      }

      if (v17 < 0)
      {
        BUG();
      }

      v21 = *(v33 + 16);
      if (v17 >= v21)
      {
        BUG();
      }

      if (v15 >= v21)
      {
        BUG();
      }

      v31 = v20;
      v40 = v16;
      score = v18 / sqrt(*(v35 + 32 * v17 + 24) * *(v35 + 32 * v15 + 24));
      InteractionTableBuilder.insert(_:_:score:)(v17, v15, score);
      InteractionTableBuilder.insert(_:_:score:)(v15, v17, score);
      v14 = v38;
      v12 = v34;
      if (v19 >= v38)
      {
        break;
      }

      *&v16 = *&v40 + 1;
      v17 = v31;
      v15 = v19;
    }

    while (v31 < v32);
  }

  else
  {
  }

  v36;

  v22 = InteractionTableBuilder.finalize()();

  return v22;
}

{
  v1 = v0;
  v2 = *(*(v0 + 9) + 16);
  v3 = *(v0 + 1);
  v41 = *v0;
  v4 = type metadata accessor for InteractionTableBuilder();
  swift_initStackObject(v4, v25);
  v39 = InteractionTableBuilder.init(itemCount:maximumInteractionsPerItem:minimumInteractionScore:)(v2, v3, v41);
  v5 = *(v0 + 3);
  if (v5 < 0)
  {
    BUG();
  }

  if (v5)
  {
    v6 = 0;
    score[0] = v0[3];
    do
    {
      *&v41 = v6 + 1;
      v7 = *(v1 + 40);
      v8 = *(v1 + 6);
      v9 = *(v1 + 7);
      v10 = *(v1 + 8);
      v26 = *(v1 + 3);
      v27 = v7;
      v28 = v8;
      v29 = v9;
      v30 = v10;
      v31 = v6;

      specialized ItemSimilarityTrainer.processUser<A>(userIndex:ratings:)(v6, &v26);
      outlined release of SparseMatrix<Double>.MajorCollection(&v26);
      v6 = *&v41;
    }

    while (*&score[0] != *&v41);
  }

  v11 = *(v1 + 11);
  v12 = *(v1 + 12);
  v13 = *(v1 + 13);
  v33 = *(v1 + 10);
  v37 = v13;
  if (v11 >= 2 && v33 > 0)
  {
    v34 = *(v1 + 9);
    v36 = v34 + 32;
    v40 = v11;

    v14 = v40;
    v15 = 1;
    v16 = 0.0;
    v17 = 0;
    v35 = v12;
    do
    {
      if (*&v16 >= *(v12 + 16))
      {
        BUG();
      }

      v18 = *(v12 + 8 * *&v16 + 32);
      v19 = v15 + 1;
      v20 = v17;
      if (v15 + 1 == v14)
      {
        v20 = v17 + 1;
        if (__OFADD__(1, v17))
        {
          BUG();
        }

        v19 = v17 + 2;
        if (__OFADD__(1, v20))
        {
          BUG();
        }
      }

      if (v17 < 0)
      {
        BUG();
      }

      v21 = *(v34 + 16);
      if (v17 >= v21)
      {
        BUG();
      }

      if (v15 >= v21)
      {
        BUG();
      }

      v32 = v20;
      v41 = v16;
      v22 = 0;
      if ((_mm_cvtsi128_si32(_mm_or_pd(_mm_cmpeq_pd(*(v36 + 16 * v15 + 8), 0), _mm_cmpeq_pd(*(v36 + 16 * v17 + 8), 0))) & 1) == 0)
      {
        *&v18 = *&v18 / (*(v36 + 16 * v17 + 8) + *(v36 + 16 * v15 + 8) - *&v18);
        v22 = v18;
      }

      *score = v22;
      InteractionTableBuilder.insert(_:_:score:)(v17, v15, *&v22);
      InteractionTableBuilder.insert(_:_:score:)(v15, v17, score[0]);
      v14 = v40;
      v12 = v35;
      if (v19 >= v40)
      {
        break;
      }

      *&v16 = *&v41 + 1;
      v17 = v32;
      v15 = v19;
    }

    while (v32 < v33);
  }

  else
  {
  }

  v37;

  v23 = InteractionTableBuilder.finalize()();

  return v23;
}

{
  v1 = v0;
  v2 = *(*(v0 + 9) + 16);
  v3 = *(v0 + 1);
  v41 = *v0;
  v4 = type metadata accessor for InteractionTableBuilder();
  swift_initStackObject(v4, v25);
  v39 = InteractionTableBuilder.init(itemCount:maximumInteractionsPerItem:minimumInteractionScore:)(v2, v3, v41);
  v5 = *(v0 + 3);
  if (v5 < 0)
  {
    BUG();
  }

  if (v5)
  {
    v6 = 0;
    score[0] = v0[3];
    do
    {
      *&v41 = v6 + 1;
      v7 = *(v1 + 40);
      v8 = *(v1 + 6);
      v9 = *(v1 + 7);
      v10 = *(v1 + 8);
      v26 = *(v1 + 3);
      v27 = v7;
      v28 = v8;
      v29 = v9;
      v30 = v10;
      v31 = v6;

      specialized ItemSimilarityTrainer.processUser<A>(userIndex:ratings:)(v6, &v26);
      outlined release of SparseMatrix<Double>.MajorCollection(&v26);
      v6 = *&v41;
    }

    while (*&score[0] != *&v41);
  }

  v11 = *(v1 + 11);
  v12 = *(v1 + 12);
  v13 = *(v1 + 13);
  v33 = *(v1 + 10);
  v37 = v13;
  if (v11 >= 2 && v33 > 0)
  {
    v34 = *(v1 + 9);
    v36 = v34 + 32;
    v40 = v11;

    v14 = v40;
    v15 = 1;
    v16 = 0.0;
    v17 = 0;
    v35 = v12;
    do
    {
      if (*&v16 >= *(v12 + 16))
      {
        BUG();
      }

      v18 = *(v12 + 8 * *&v16 + 32);
      v19 = v15 + 1;
      v20 = v17;
      if (v15 + 1 == v14)
      {
        v20 = v17 + 1;
        if (__OFADD__(1, v17))
        {
          BUG();
        }

        v19 = v17 + 2;
        if (__OFADD__(1, v20))
        {
          BUG();
        }
      }

      if (v17 < 0)
      {
        BUG();
      }

      v21 = *(v34 + 16);
      if (v17 >= v21)
      {
        BUG();
      }

      if (v15 >= v21)
      {
        BUG();
      }

      v32 = v20;
      v41 = v16;
      v22 = 0;
      if ((_mm_cvtsi128_si32(_mm_or_pd(_mm_cmpeq_pd(*(v36 + 16 * v15 + 8), 0), _mm_cmpeq_pd(*(v36 + 16 * v17 + 8), 0))) & 1) == 0)
      {
        *&v18 = *&v18 / sqrt(*(v36 + 16 * v17 + 8) * *(v36 + 16 * v15 + 8));
        v22 = v18;
      }

      *score = v22;
      InteractionTableBuilder.insert(_:_:score:)(v17, v15, *&v22);
      InteractionTableBuilder.insert(_:_:score:)(v15, v17, score[0]);
      v14 = v40;
      v12 = v35;
      if (v19 >= v40)
      {
        break;
      }

      *&v16 = *&v41 + 1;
      v17 = v32;
      v15 = v19;
    }

    while (v32 < v33);
  }

  else
  {
  }

  v37;

  v23 = InteractionTableBuilder.finalize()();

  return v23;
}

uint64_t specialized ItemSimilarityTrainer.processUser<A>(userIndex:ratings:)(uint64_t a1, void *a2)
{
  v3 = a2[6];
  if (v3 < 0)
  {
    BUG();
  }

  v4 = a2[3];
  v5 = *(v4 + 16);
  if (v3 >= v5)
  {
    BUG();
  }

  if (v3 + 1 >= v5)
  {
    BUG();
  }

  v6 = *(v4 + 8 * v3 + 32);
  result = *(v4 + 8 * v3 + 40);
  if (v6 != result)
  {
    v8 = result - v6;
    if (__OFSUB__(result, v6))
    {
      BUG();
    }

    v9 = v2;
    v55 = result;
    v56 = a2[4];
    v48 = a2[5];
    v10 = *(v2 + 2);
    v57 = a2;
    v60 = v6;
    if (v10 >= v8)
    {
      v59 = 0x7FFFFFFFFFFFFFFFLL;
      v50 = 0.0;
    }

    else
    {
      v59 = specialized Dictionary.subscript.getter(a1, *(v2 + 14));
      if (v11)
      {
        qmemcpy(v34, v2, sizeof(v34));
        LODWORD(v10) = v34[2];
        v59 = specialized ItemSimilarityTrainer.getItemCountThresholdForUser<A>(itemInfo:itemList:)(v34[9], v57);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*(v2 + 14));
        v35 = *(v2 + 14);
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v59, a1, isUniquelyReferenced_nonNull_native);
        a2 = v57;
        *(v2 + 14) = v35;
      }

      v6 = v60;
      v50 = 1.0 - v10 / v8;
    }

    v13 = v55;
    if (v55 < v6)
    {
      BUG();
    }

    v14 = *(v2 + 12);
    if (!swift_isUniquelyReferenced_nonNull_native(v14))
    {
      v14 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v14);
    }

    v15 = v56;
    v16 = a2;
    v17 = *(v48 + 16);
    v46 = *(v2 + 9);
    v54 = v46 + 32;
    v18 = *(v56 + 16);
    v40 = v13 - 1;
    result = v60;
    v19 = v60;
    v47 = v2;
    v43 = v17;
    v44 = v18;
    do
    {
      if (v19 >= v13)
      {
        BUG();
      }

      if (result < 0)
      {
        BUG();
      }

      if (v19 >= v18)
      {
        BUG();
      }

      if (v19 >= v17)
      {
        BUG();
      }

      v52 = v19 + 1;
      v20 = *(v15 + 4 * (v19 + 1) + 28);
      if (v20 < 0)
      {
        BUG();
      }

      if (*(v46 + 16) <= v20)
      {
        BUG();
      }

      v53 = 32 * v20;
      if (v59 >= *(v54 + 32 * v20))
      {
        v58 = v20;
        v21 = v52;
        v41 = *(v48 + 8 * v52 + 24);
        v42 = v16[3];
        v49 = v16[4];
        v61 = v16[5];
        outlined retain of SparseMatrix<Double>.MajorCollection(v16);
        if (v21 != v13)
        {
          v53 += v54;
          v22 = v19;
          v23 = v58;
          v24 = v61;
          v39 = v19;
          do
          {
            if (v52 <= v19 || (v25 = v22 + 1, v22 + 1 >= v13))
            {
              BUG();
            }

            if (v25 >= *(v49 + 16))
            {
              BUG();
            }

            if (v25 >= *(v24 + 16))
            {
              BUG();
            }

            v26 = *(v49 + 4 * v22 + 36);
            v36 = *(v24 + 8 * v22 + 40);
            if (v50 <= 0.0 || (v27 = COERCE_DOUBLE(specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v23, 0.0, 1.0, v17, v24)), v24 = v61, v23 = v58, v50 < v27))
            {
              v28 = *(v46 + 16);
              if (v28 <= v23)
              {
                BUG();
              }

              if (v26 < 0 || v28 <= v26)
              {
                BUG();
              }

              v45 = v14;
              if (*(v9 + 10) <= v23)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000012, ("gularMatrix.swift" + 0x8000000000000000), "LinearAlgebra/UpperStrictlyTriangularMatrix.swift", 49, 2, 61, 0);
                goto LABEL_73;
              }

              if (*(v9 + 11) <= v26)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000015, ("Row out of bounds." + 0x8000000000000000), "LinearAlgebra/UpperStrictlyTriangularMatrix.swift", 49, 2, 64, 0);
LABEL_73:
                BUG();
              }

              v37 = *(v53 + 16);
              v38 = *(v54 + 32 * v26 + 16);
              v29 = v9[13];
              v30 = 0.0;
              if (v23 < v26)
              {
                v31 = v45;
                v51 = v29;
                v32 = UpperStrictlyTriangularMatrix.dataIndex(_:_:)(v23, v26);
                if (v32 < 0)
                {
                  BUG();
                }

                if (v32 >= *(v31 + 2))
                {
                  BUG();
                }

                v30 = *&v31[8 * v32 + 32];
                v23 = v58;
              }

              v51 = v30;
              if (v23 >= v26)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000003BLL, ("Column out of bounds." + 0x8000000000000000), "LinearAlgebra/UpperStrictlyTriangularMatrix.swift", 49, 2, 52, 0);
                goto LABEL_73;
              }

              v17 = v26;
              v14 = v45;
              v33 = UpperStrictlyTriangularMatrix.dataIndex(_:_:)(v23, v26);
              if (!swift_isUniquelyReferenced_nonNull_native(v14))
              {
                v14 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v14);
              }

              v9 = v47;
              v13 = v55;
              v24 = v61;
              v23 = v58;
              if (v33 < 0)
              {
                BUG();
              }

              if (v33 >= *(v14 + 2))
              {
                BUG();
              }

              *&v14[8 * v33 + 32] = (v36 - v38) * (v41 - v37) + v51;
            }

            v22 = v25;
            v19 = v39;
          }

          while (v40 != v25);
        }

        v49;
        v42;
        v16 = v57;
        result = v60;
        v15 = v56;
        v17 = v43;
        v18 = v44;
      }

      v19 = v52;
    }

    while (v52 != v13);
    *(v9 + 12) = v14;
  }

  return result;
}

{
  v3 = a2[6];
  if (v3 < 0)
  {
    BUG();
  }

  v4 = v2;
  v5 = a2;
  v6 = a2[3];
  v7 = *(v6 + 16);
  if (v3 >= v7)
  {
    BUG();
  }

  if (v3 + 1 >= v7)
  {
    BUG();
  }

  v8 = *(v6 + 8 * v3 + 32);
  result = *(v6 + 8 * v3 + 40);
  if (v8 != result)
  {
    v10 = result - v8;
    if (__OFSUB__(result, v8))
    {
      BUG();
    }

    v56 = result;
    v57 = a2[4];
    v52 = a2[5];
    v11 = v4[2];
    v58 = a2;
    v61 = v8;
    if (v11 >= v10)
    {
      v60 = 0x7FFFFFFFFFFFFFFFLL;
      v54 = 0.0;
    }

    else
    {
      v60 = specialized Dictionary.subscript.getter(a1, v4[14]);
      if (v12)
      {
        qmemcpy(v39, v4, sizeof(v39));
        LODWORD(v11) = v39[2];
        v60 = specialized ItemSimilarityTrainer.getItemCountThresholdForUser<A>(itemInfo:itemList:)(v39[9], v58);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v4[14]);
        v40 = v4[14];
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v60, a1, isUniquelyReferenced_nonNull_native);
        v5 = v58;
        v4[14] = v40;
      }

      v8 = v61;
      v54 = 1.0 - v11 / v10;
    }

    v14 = v56;
    if (v56 < v8)
    {
      BUG();
    }

    v15 = v4[12];
    if (!swift_isUniquelyReferenced_nonNull_native(v15))
    {
      v15 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v15);
    }

    v16 = v57;
    v17 = *(v52 + 16);
    v50 = v4[9];
    v18 = v50 + 32;
    v19 = *(v57 + 16);
    v42 = v14 - 1;
    v20 = v61;
    v21 = v61;
    v51 = v4;
    v45 = v17;
    v46 = v50 + 32;
    v47 = v19;
    do
    {
      if (v21 >= v14)
      {
        BUG();
      }

      if (v20 < 0)
      {
        BUG();
      }

      if (v21 >= v19)
      {
        BUG();
      }

      if (v21 >= v17)
      {
        BUG();
      }

      v55 = v21 + 1;
      v22 = *(v16 + 4 * (v21 + 1) + 28);
      if (v22 < 0)
      {
        BUG();
      }

      if (*(v50 + 16) <= v22)
      {
        BUG();
      }

      v48 = *(v16 + 4 * (v21 + 1) + 28);
      v23 = 16 * v22;
      v24 = v60;
      if (v60 >= *(v18 + v23))
      {
        v49 = v21;
        v25 = v55;
        v43 = *(v52 + 8 * v55 + 24);
        v44 = v5[3];
        v59 = v5[4];
        v62 = v5[5];
        outlined retain of SparseMatrix<Double>.MajorCollection(v5);
        if (v25 != v14)
        {
          v28 = v49;
          v29 = v49;
          v26 = v15;
          v27 = v59;
          v30 = v62;
          while (1)
          {
            if (v55 <= v28 || (v31 = v29 + 1, v29 + 1 >= v14))
            {
              BUG();
            }

            if (v31 >= *(v27 + 16))
            {
              BUG();
            }

            if (v31 >= *(v30 + 16))
            {
              BUG();
            }

            v41 = v29 + 1;
            v32 = *(v27 + 4 * v29 + 36);
            v53 = *(v30 + 8 * v29 + 40);
            if (v54 > 0.0 && (v33 = v26, v34 = COERCE_DOUBLE(specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v30, 0.0, 1.0, v24, v31)), v26 = v33, v54 >= v34))
            {
              v30 = v62;
            }

            else
            {
              v35 = *(v50 + 16);
              if (v35 <= v32 || v32 < 0 || v35 <= v48)
              {
                BUG();
              }

              if (v4[10] <= v48)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000012, ("gularMatrix.swift" + 0x8000000000000000), "LinearAlgebra/UpperStrictlyTriangularMatrix.swift", 49, 2, 61, 0);
                goto LABEL_73;
              }

              if (v4[11] <= v32)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000015, ("Row out of bounds." + 0x8000000000000000), "LinearAlgebra/UpperStrictlyTriangularMatrix.swift", 49, 2, 64, 0);
                goto LABEL_73;
              }

              if (v48 >= v32)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000003BLL, ("Column out of bounds." + 0x8000000000000000), "LinearAlgebra/UpperStrictlyTriangularMatrix.swift", 49, 2, 52, 0);
LABEL_73:
                BUG();
              }

              v36 = v26;
              v37 = UpperStrictlyTriangularMatrix.dataIndex(_:_:)(v48, v32);
              if (v37 < 0)
              {
                BUG();
              }

              if (v37 >= *(v36 + 16))
              {
                BUG();
              }

              v53 = v53 * v43 + *(v36 + 8 * v37 + 32);
              v24 = v32;
              v38 = UpperStrictlyTriangularMatrix.dataIndex(_:_:)(v48, v32);
              if (swift_isUniquelyReferenced_nonNull_native(v36))
              {
                v4 = v51;
                v14 = v56;
                v26 = v36;
              }

              else
              {
                v26 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v36);
                v4 = v51;
                v14 = v56;
              }

              v27 = v59;
              v30 = v62;
              if (v38 < 0)
              {
                BUG();
              }

              if (v38 >= *(v26 + 2))
              {
                BUG();
              }

              *&v26[8 * v38 + 32] = v53;
            }

            v29 = v41;
            v28 = v49;
            if (v42 == v41)
            {
              goto LABEL_47;
            }
          }
        }

        v26 = v15;
        LOBYTE(v27) = v59;
LABEL_47:
        v15 = v26;

        v27;
        v44;
        v5 = v58;
        v20 = v61;
        v16 = v57;
        v17 = v45;
        v18 = v46;
        v19 = v47;
      }

      result = v55;
      v21 = v55;
    }

    while (v55 != v14);
    v4[12] = v15;
  }

  return result;
}

char *specialized ItemSimilarityTrainer.processUser<A>(userIndex:ratings:)(uint64_t a1, void *a2)
{
  v59 = v2;
  v3 = a2[6];
  if (v3 < 0)
  {
    BUG();
  }

  v4 = a2[3];
  v5 = *(v4 + 16);
  if (v3 >= v5)
  {
    BUG();
  }

  if (v3 + 1 >= v5)
  {
    BUG();
  }

  v6 = *(v4 + 8 * v3 + 32);
  result = *(v4 + 8 * v3 + 40);
  if (v6 != result)
  {
    v8 = (result - v6);
    if (__OFSUB__(result, v6))
    {
      BUG();
    }

    v56 = result;
    v57 = a2[4];
    v62 = a2;
    v51 = a2[5];
    v9 = v59;
    v10 = v59[2];
    v61 = v6;
    if (v10 >= v8)
    {
      v60 = 0x7FFFFFFFFFFFFFFFLL;
      v54 = 0.0;
    }

    else
    {
      v60 = specialized Dictionary.subscript.getter(a1, v59[14]);
      if (v11)
      {
        qmemcpy(v39, v59, sizeof(v39));
        LODWORD(v10) = v39[2];
        v60 = specialized ItemSimilarityTrainer.getItemCountThresholdForUser<A>(itemInfo:itemList:)(v39[9], v62);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v9[14]);
        v40 = v9[14];
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v60, a1, isUniquelyReferenced_nonNull_native);
        v9[14] = v40;
      }

      v6 = v61;
      v54 = 1.0 - v10 / v8;
    }

    v13 = v56;
    if (v56 < v6)
    {
      BUG();
    }

    v14 = v9[12];
    if (!swift_isUniquelyReferenced_nonNull_native(v14))
    {
      v14 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v14);
    }

    v15 = v62;
    v16 = v57;
    v17 = v59[9];
    v18 = *(v51 + 16);
    v19 = v17 + 32;
    v20 = *(v57 + 16);
    v43 = v13 - 1;
    v21 = v61;
    v22 = v61;
    v45 = v17;
    v47 = v18;
    v48 = v17 + 32;
    v49 = v20;
    do
    {
      if (v22 >= v13)
      {
        BUG();
      }

      if (v21 < 0)
      {
        BUG();
      }

      if (v22 >= v20)
      {
        BUG();
      }

      if (v22 >= v18)
      {
        BUG();
      }

      v55 = v22 + 1;
      v23 = *(v16 + 4 * (v22 + 1) + 28);
      if (v23 < 0)
      {
        BUG();
      }

      if (*(v17 + 16) <= v23)
      {
        BUG();
      }

      v24 = v60;
      if (v60 >= *(v19 + 16 * v23))
      {
        v58 = *(v16 + 4 * (v22 + 1) + 28);
        v25 = v55;
        v41 = *(v51 + 8 * v55 + 24);
        v46 = v15[3];
        v53 = v15[4];
        v63 = v15[5];
        outlined retain of SparseMatrix<Double>.MajorCollection(v15);
        if (v25 != v13)
        {
          v26 = v22;
          v27 = v58;
          v28 = v63;
          v42 = v22;
          do
          {
            if (v55 <= v22 || (v29 = v26 + 1, (v26 + 1) >= v13))
            {
              BUG();
            }

            if (v29 >= *(v53 + 16))
            {
              BUG();
            }

            if (v29 >= *(v28 + 16))
            {
              BUG();
            }

            v30 = *(v53 + 4 * v26 + 36);
            v31 = *(v28 + 8 * v26 + 40);
            if (v54 <= 0.0 || (v52 = *(v28 + 8 * v26 + 40), v32 = COERCE_DOUBLE(specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v27, 0.0, 1.0, v24, v28)), v31 = v52, v28 = v63, v27 = v58, v54 < v32))
            {
              v33 = *(v17 + 16);
              if (v33 <= v30 || v30 < 0 || v33 <= v27)
              {
                BUG();
              }

              v50 = v14;
              if (v59[10] <= v27)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000012, ("gularMatrix.swift" + 0x8000000000000000), "LinearAlgebra/UpperStrictlyTriangularMatrix.swift", 49, 2, 61, 0);
                goto LABEL_74;
              }

              if (v59[11] <= v30)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000015, ("Row out of bounds." + 0x8000000000000000), "LinearAlgebra/UpperStrictlyTriangularMatrix.swift", 49, 2, 64, 0);
LABEL_74:
                BUG();
              }

              v34 = v59[13];
              v35 = 0.0;
              if (v27 < v30)
              {
                v52 = v31;
                v36 = v50;
                v44 = v34;
                v37 = UpperStrictlyTriangularMatrix.dataIndex(_:_:)(v27, v30);
                if (v37 < 0)
                {
                  BUG();
                }

                if (v37 >= *(v36 + 2))
                {
                  BUG();
                }

                v35 = *&v36[8 * v37 + 32];
                v17 = v45;
                v27 = v58;
                v31 = v52;
              }

              if ((_mm_cvtsi128_si32(_mm_or_pd(_mm_cmpeq_pd(v41, 0), _mm_cmpeq_pd(v31, 0))) & 1) == 0)
              {
                v35 = v35 + 1.0;
              }

              v52.f64[0] = v35;
              if (v27 >= v30)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000003BLL, ("Column out of bounds." + 0x8000000000000000), "LinearAlgebra/UpperStrictlyTriangularMatrix.swift", 49, 2, 52, 0);
                goto LABEL_74;
              }

              v24 = v30;
              v14 = v50;
              v38 = UpperStrictlyTriangularMatrix.dataIndex(_:_:)(v27, v30);
              if (!swift_isUniquelyReferenced_nonNull_native(v14))
              {
                v14 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v14);
              }

              v13 = v56;
              v28 = v63;
              v27 = v58;
              if (v38 < 0)
              {
                BUG();
              }

              if (v38 >= *(v14 + 2))
              {
                BUG();
              }

              *&v14[8 * v38 + 32] = v52.f64[0];
            }

            v26 = v29;
            v22 = v42;
          }

          while (v43 != v29);
        }

        v53;
        v46;
        v15 = v62;
        v21 = v61;
        v16 = v57;
        v18 = v47;
        v19 = v48;
        v20 = v49;
      }

      v22 = v55;
      result = v59;
    }

    while (v55 != v13);
    v59[12] = v14;
  }

  return result;
}

uint64_t specialized ItemSimilarityTrainer.getItemCountThresholdForUser<A>(itemInfo:itemList:)(void *a1, void *a2)
{
  ML21ItemSimilarityTrainerV03getC21CountThresholdForUser8itemInfo0K4ListSiSayAA0C10StatisticsVy0C5ScoreQzGG_qd__tSlRd__z5_Sdt7b56Rtd__lFS2i_Sdt_tcfu0_33_39c69c9f4ee04694167b65f5fa330960z4_SdtZ10Tf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF13LinearAlgebra12SparseMatrixV15MajorCollectionVySd_G_Sis5NeverOTg50127_s8CreateML21ItemSimilarityTrainerV03getC21CountThresholdForUser8itemInfo0K4ListSiSayAA0C10StatisticsVy0C5ScoreQzGG_qd__tSlRd__z5_Sdt7b56Rtd__lFS2i_Sdt_tcfu0_33_39c69c9f4ee04694167b65f5fa330960z4_SdtZ10Tf3nnnpk_nTf1cn_nTm(a2);
  v4 = *(v2 + 16);
  if (__OFADD__(1, v4))
  {
    BUG();
  }

  v5 = ML21ItemSimilarityTrainerV03getC21CountThresholdForUser8itemInfo0K4ListSiSayAA0C10StatisticsVy0C5ScoreQzGG_qd__tSlRd__z5_Sdt7b56Rtd__lFS2i_Sdt_tcfu0_33_39c69c9f4ee04694167b65f5fa330960z4_SdtZ10Tf3nnnpk_nTf1cn_nTm;

  v6 = specialized Collection.min(count:sortedBy:)(v4 + 1, v5, a1);
  v5;
  if (v4 < 0)
  {
    BUG();
  }

  if (v4 >= v6[2])
  {
    BUG();
  }

  v7 = v6[v4 + 4];
  v6;
  if (v7 < 0)
  {
    BUG();
  }

  if (v7 >= a1[2])
  {
    BUG();
  }

  return a1[4 * v7 + 4];
}

{
  ML21ItemSimilarityTrainerV03getC21CountThresholdForUser8itemInfo0K4ListSiSayAA0C10StatisticsVy0C5ScoreQzGG_qd__tSlRd__z5_Sdt7b56Rtd__lFS2i_Sdt_tcfu0_33_39c69c9f4ee04694167b65f5fa330960z4_SdtZ10Tf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF13LinearAlgebra12SparseMatrixV15MajorCollectionVySd_G_Sis5NeverOTg50127_s8CreateML21ItemSimilarityTrainerV03getC21CountThresholdForUser8itemInfo0K4ListSiSayAA0C10StatisticsVy0C5ScoreQzGG_qd__tSlRd__z5_Sdt7b56Rtd__lFS2i_Sdt_tcfu0_33_39c69c9f4ee04694167b65f5fa330960z4_SdtZ10Tf3nnnpk_nTf1cn_nTm(a2);
  v4 = *(v2 + 16);
  if (__OFADD__(1, v4))
  {
    BUG();
  }

  v5 = ML21ItemSimilarityTrainerV03getC21CountThresholdForUser8itemInfo0K4ListSiSayAA0C10StatisticsVy0C5ScoreQzGG_qd__tSlRd__z5_Sdt7b56Rtd__lFS2i_Sdt_tcfu0_33_39c69c9f4ee04694167b65f5fa330960z4_SdtZ10Tf3nnnpk_nTf1cn_nTm;

  v6 = specialized Collection.min(count:sortedBy:)(v4 + 1, v5, a1);
  v5;
  if (v4 < 0)
  {
    BUG();
  }

  if (v4 >= v6[2])
  {
    BUG();
  }

  v7 = v6[v4 + 4];
  v6;
  if (v7 < 0)
  {
    BUG();
  }

  if (v7 >= a1[2])
  {
    BUG();
  }

  return a1[2 * v7 + 4];
}

void *specialized Collection.min(count:sortedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a1 < 0)
  {
    BUG();
  }

  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
    BUG();
  }

  v9 = a1;
  if (v8 < a1)
  {
    v9 = (a5 >> 1) - a4;
  }

  if (v9 < v8 / 10)
  {
    return specialized Sequence._minImplementation(count:sortedBy:)(a1, a2, a3, a4, a5);
  }

  v16 = a3;
  swift_unknownObjectRetain(a2);
  v15 = specialized ArraySlice._copyToContiguousArray()(a2, v16, a4, a5);
  specialized MutableCollection<>.sort(by:)(&v15, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));
  if (v5)
  {
  }

  v11 = specialized Collection.prefix(_:)(v9, v15);
  return _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC8CreateML11InteractionV_s10ArraySliceVyAFGTt0g5(v11, v12, v13, v14);
}

void *specialized Collection.min(count:sortedBy:)(unint64_t a1, uint64_t a2, void *a3)
{
  v14 = v3;
  if ((a1 & 0x8000000000000000) != 0)
  {
    BUG();
  }

  if (a1)
  {
    v5 = *(a2 + 16);
    v6 = a1;
    if (v5 < a1)
    {
      v6 = *(a2 + 16);
    }

    if (v5 / 0xA <= a1)
    {
      v13 = a2;
      swift_bridgeObjectRetain_n(a3, 3);

      v7 = v14;
      specialized MutableCollection<>.sort(by:)(&v13, a3, specialized _ContiguousArrayBuffer._consumeAndCreateNew());
      if (v7)
      {
        swift_bridgeObjectRelease_n(a3, 3);
      }

      else
      {
        v8 = specialized Collection.prefix(_:)(v6, v13);
        v6 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSi_s10ArraySliceVySiGTt0g5(v8, v9, v10, v11);
        swift_bridgeObjectRelease_n(a3, 3);
      }
    }

    else
    {

      v6 = specialized Sequence._minImplementation(count:sortedBy:)(a1, a2, a3);
      a3;
    }
  }

  else
  {
    a3;
    return _swiftEmptyArrayStorage;
  }

  return v6;
}

{
  v14 = v3;
  if ((a1 & 0x8000000000000000) != 0)
  {
    BUG();
  }

  if (a1)
  {
    v5 = *(a2 + 16);
    v6 = a1;
    if (v5 < a1)
    {
      v6 = *(a2 + 16);
    }

    if (v5 / 0xA <= a1)
    {
      v13 = a2;
      swift_bridgeObjectRetain_n(a3, 3);

      v7 = v14;
      specialized MutableCollection<>.sort(by:)(&v13, a3, specialized _ContiguousArrayBuffer._consumeAndCreateNew());
      if (v7)
      {
        swift_bridgeObjectRelease_n(a3, 3);
      }

      else
      {
        v8 = specialized Collection.prefix(_:)(v6, v13);
        v6 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSi_s10ArraySliceVySiGTt0g5(v8, v9, v10, v11);
        swift_bridgeObjectRelease_n(a3, 3);
      }
    }

    else
    {

      v6 = specialized Sequence._minImplementation(count:sortedBy:)(a1, a2, a3);
      a3;
    }
  }

  else
  {
    a3;
    return _swiftEmptyArrayStorage;
  }

  return v6;
}

void *_s8CreateML22CategoricalLookupTableVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA13MLRecommenderV10IdentifierO_s15LazyMapSequenceVySayAJ4user_AJ4itemSd6ratingtGAJGTt0g5(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{

  ML13MLRecommenderV10IdentifierO_s15LazyMapSequenceVySayAH4user_AH4itemSd6ratingtGAHGTt0g5 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8CreateML13MLRecommenderV10IdentifierO_s15LazyMapSequenceVySayAH4user_AH4itemSd6ratingtGAHGTt0g5(a1, a2, a3);
  v5 = ML13MLRecommenderV10IdentifierO_s15LazyMapSequenceVySayAH4user_AH4itemSd6ratingtGAHGTt0g5;
  v6 = specialized _copyCollectionToContiguousArray<A>(_:)(ML13MLRecommenderV10IdentifierO_s15LazyMapSequenceVySayAH4user_AH4itemSd6ratingtGAHGTt0g5);
  v5;
  v10[0] = v6;

  specialized MutableCollection<>.sort(by:)(v10, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));

  v7 = v10[0];
  v8 = *(v10[0] + 16);

  _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC8CreateML13MLRecommenderV10IdentifierO_Sis12Zip2SequenceVySayAIGSnySiGGTt0g5(v7, 0, v8);

  a1;
  return v7;
}

uint64_t specialized CategoricalLookupTable.index(of:)(Swift::UInt a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, a3 & 1), (v7 & 1) != 0))
  {
    return *(*(a5 + 56) + 8 * v6);
  }

  else
  {
    return 0;
  }
}

uint64_t specialized SparseMatrix.IndexedSequence.Iterator.next()()
{
  v1 = *(v0 + 48);
  if (*(v0 + 16))
  {
    v2 = *(v0 + 8);
    if (v1 < v2)
    {
      v3 = *(v0 + 56);
      if (v3 < 0)
      {
        BUG();
      }

      v4 = *(v0 + 32);
      if (v3 >= *(v4 + 16))
      {
        BUG();
      }

      v5 = *(v4 + 4 * v3 + 32);
      specialized ContiguousArray.subscript.getter(*(v0 + 56), *(v0 + 40));
      v6 = v3 + 1;
      *(v0 + 56) = v6;
      if (v1 < -1)
      {
        BUG();
      }

      v7 = *(v0 + 24);
      v8 = v1 + 1;
      v9 = *(v7 + 16);
      if (v1 + 1 >= v9)
      {
        BUG();
      }

      if (v6 >= *(v7 + 8 * v1 + 40))
      {
        if (v8 < v2)
        {
          if (v1 + 2 >= v9)
          {
            BUG();
          }

          if (v6 >= *(v7 + 8 * v1 + 48))
          {
            if (v1 + 2 >= v2)
            {
              v8 = v1 + 2;
            }

            else
            {
              if (v1 + 3 >= v9)
              {
                BUG();
              }

              v8 = v1 + 2;
              if (v6 >= *(v7 + 8 * v1 + 56))
              {
                v10 = v1 + 4;
                while (v10 - 1 < v2)
                {
                  if (v10 >= v9)
                  {
                    BUG();
                  }

                  v11 = v10 + 1;
                  v12 = v6 < *(v7 + 8 * v10++ + 32);
                  if (v12)
                  {
                    v8 = v11 - 2;
                    goto LABEL_40;
                  }
                }

                v8 = v2;
              }
            }
          }
        }

LABEL_40:
        *(v0 + 48) = v8;
      }

      return v5;
    }

    return 0;
  }

  v13 = *v0;
  if (v1 >= *v0)
  {
    return 0;
  }

  v14 = *(v0 + 56);
  if (v14 < 0)
  {
    BUG();
  }

  if (v14 >= *(*(v0 + 32) + 16))
  {
    BUG();
  }

  specialized ContiguousArray.subscript.getter(*(v0 + 56), *(v0 + 40));
  v15 = v14 + 1;
  *(v0 + 56) = v15;
  if (v1 < -1)
  {
    BUG();
  }

  v16 = *(v0 + 24);
  v17 = v1 + 1;
  v18 = *(v16 + 16);
  if (v1 + 1 >= v18)
  {
    BUG();
  }

  if (v15 >= *(v16 + 8 * v1 + 40))
  {
    if (v17 < v13)
    {
      if (v1 + 2 >= v18)
      {
        BUG();
      }

      if (v15 >= *(v16 + 8 * v1 + 48))
      {
        if (v1 + 2 >= v13)
        {
          v17 = v1 + 2;
        }

        else
        {
          if (v1 + 3 >= v18)
          {
            BUG();
          }

          v17 = v1 + 2;
          if (v15 >= *(v16 + 8 * v1 + 56))
          {
            v19 = v1 + 4;
            while (v19 - 1 < v13)
            {
              if (v19 >= v18)
              {
                BUG();
              }

              v20 = v19 + 1;
              v12 = v15 < *(v16 + 8 * v19++ + 32);
              if (v12)
              {
                v17 = v20 - 2;
                goto LABEL_43;
              }
            }

            v17 = v13;
          }
        }
      }
    }

LABEL_43:
    *(v0 + 48) = v17;
  }

  return v1;
}

void *_s8CreateML16RecommenderModelV15precisionRecall8expected9predicted7cutoffsSaySd0E0_Sd6recalltGSayq_G_AKSaySiGtFZAA13MLRecommenderV10IdentifierO_APTt2g5(const __m128i *a1, uint64_t a2, uint64_t a3)
{
  v43 = *(a2 + 16);
  if (v43)
  {
    v4 = a2;
    v6 = *(a3 + 16);
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0, _swiftEmptyArrayStorage);
    v8 = v6;
    v50 = v7;
    v53 = a2;
    if (v6)
    {
      v54 = a1;
      v9 = v7[2];
      v10 = 2 * v9;
      v11 = 0;
      do
      {
        v12 = v9;
        v13 = *(a3 + 8 * v11 + 32);
        v14 = v7[3];
        ++v9;
        if (v14 >> 1 <= v12)
        {
          v51 = v8;
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v14 >= 2, v9, 1, v7);
        }

        v7[2] = v9;
        v7[v10 + 4] = v13;
        v7[v10 + 5] = v11++;
        v10 += 2;
      }

      while (v8 != v11);
      v50 = v7;
      v4 = v53;
      a1 = v54;
    }

    specialized MutableCollection<>.sort(by:)(&v50, specialized _ArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));
    v15 = 0;
    v16 = _sSa9repeating5countSayxGx_SitcfCSd_Sdt_Tt1g5(v8, 0.0, 0.0);
    v52 = a1;

    specialized MutableCollection<>.sort(by:)(&v52, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));
    v55 = v52;
    v44 = v50;
    if (v50[2])
    {
      v17 = v50[2];
      v54 = 0;
      v45 = v4 + 32;
      v18 = v50 + 5;
      v42 = _mm_loadh_ps(&qword_33D870);
      v19 = v17;
      do
      {
        v51 = v16;
        v20 = *(v18 - 1);
        v21 = v20;
        if (v43 < v20)
        {
          v21 = v43;
        }

        if (v20 < 0)
        {
          BUG();
        }

        v46.i64[0] = *(v18 - 1);
        v48 = v18;
        v49 = *v18;
        v22 = type metadata accessor for __ContiguousArrayStorageBase(0);
        swift_bridgeObjectRetain_n(v4, 2);
        swift_unknownObjectRetain_n(v4, 2);
        v23 = swift_dynamicCastClass(v4, v22);
        if (!v23)
        {
          v4;
          v23 = _swiftEmptyArrayStorage;
        }

        v24 = v23[2];

        if (v24 == v21)
        {
          v25 = v53;
          v26 = swift_dynamicCastClass(v53, v22);
          if (!v26)
          {
            v25;
            v26 = _swiftEmptyArrayStorage;
          }
        }

        else
        {
          v25 = v53;
          v53;
          v26 = _swiftEmptyArrayStorage;
          if (v46.i64[0])
          {
            v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLRecommender.Identifier>);
            v26 = swift_allocObject(v35, 24 * v21 + 32, 7);
            v36 = (_swift_stdlib_malloc_size(v26) - 32);
            v26[1].i64[0] = v21;
            v26[1].i64[1] = 2 * (v36 / 24);
            swift_arrayInitWithCopy(v26[2].i64, v45, v21, &type metadata for MLRecommender.Identifier);
          }
        }

        v47 = v19;
        v25;
        v52 = v26;
        v27 = v54;
        specialized MutableCollection<>.sort(by:)(&v52, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));
        v54 = v27;
        if (v27)
        {

          BUG();
        }

        v25;
        v28 = v55;
        ML16RecommenderModelV17intersectionCountySiSayq_G_AEtFZAA13MLRecommenderV10IdentifierO_AITt1g5 = _s8CreateML16RecommenderModelV17intersectionCountySiSayq_G_AEtFZAA13MLRecommenderV10IdentifierO_AITt1g5(v55, v52);

        v15.f64[0] = ML16RecommenderModelV17intersectionCountySiSayq_G_AEtFZAA13MLRecommenderV10IdentifierO_AITt1g5;
        v30 = _mm_unpacklo_epi64(_mm_loadl_epi64(&v46), _mm_loadl_epi64(v28 + 1));
        v31 = _mm_cmpeq_epi64(v30, 0);
        inserted = _mm_insert_epi64(v30, v21, 0);
        v15 = _mm_blendv_pd(_mm_div_pd(_mm_movedup_pd(v15), _mm_add_pd(_mm_sub_pd(_mm_or_si128(_mm_srli_epi64(inserted, 0x20u), xmmword_33FAC0), xmmword_33FAD0), _mm_or_si128(_mm_blend_epi16(inserted, 0, 204), xmmword_33FAB0))), v42, v31);
        v46 = v15;
        v16 = v51;
        if (!swift_isUniquelyReferenced_nonNull_native(v51))
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
        }

        v33 = v47;
        v34 = v48;
        v4 = v53;
        if (v49 < 0)
        {
          BUG();
        }

        if (v49 >= v16[2])
        {
          BUG();
        }

        *&v16[2 * v49 + 4] = v46;
        v18 = v34 + 2;
        v19 = v33 - 1;
      }

      while (v19);
    }

    v44;
    v37 = specialized _arrayForceCast<A, B>(_:)(v16);
    v16;
    return v37;
  }

  else
  {
    v39 = *(a3 + 16);
    if (!v39)
    {
      return _swiftEmptyArrayStorage;
    }

    v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (precision: Double, recall: Double));
    v41 = static Array._allocateBufferUninitialized(minimumCapacity:)(v39, v40);
    *(v41 + 16) = v39;
    __bzero(v41 + 32, 16 * v39);
    return v41;
  }
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v4 = *a1;
  swift_bridgeObjectRetain_n(a2, 2);
  if (!swift_isUniquelyReferenced_nonNull_native(v4))
  {
    v4 = a3(v4);
  }

  v5 = *(v4 + 16);
  v7[0] = v4 + 32;
  v7[1] = v5;

  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, a2);
  *a1 = v4;
  return swift_bridgeObjectRelease_n(a2, 3);
}

{
  v4 = *a1;
  swift_bridgeObjectRetain_n(a2, 2);
  if (!swift_isUniquelyReferenced_nonNull_native(v4))
  {
    v4 = a3(v4);
  }

  v5 = *(v4 + 16);
  v7[0] = v4 + 32;
  v7[1] = v5;

  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, a2);
  *a1 = v4;
  return swift_bridgeObjectRelease_n(a2, 3);
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  v4 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_native(*a1))
  {
    v4 = a2(v4);
  }

  result = a3();
  *a1 = v4;
  return result;
}

{
  v3 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_native(*a1))
  {
    v3 = a2(v3);
  }

  result = a3();
  *a1 = v3;
  return result;
}

uint64_t _s8CreateML16RecommenderModelV17intersectionCountySiSayq_G_AEtFZAA13MLRecommenderV10IdentifierO_AITt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a2 + 16);
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v29 = 0;
      v25 = a2;
      v23 = *(a1 + 16);
      v24 = *(a2 + 16);
      while (1)
      {
        if (v5 >= v2)
        {
          BUG();
        }

        if (v4 >= v3)
        {
          BUG();
        }

        v6 = *(a1 + 24 * v5 + 32);
        v7 = *(a1 + 24 * v5 + 40);
        v8 = *(a1 + 24 * v5 + 48);
        v9 = *(a2 + 24 * v4 + 32);
        v10 = *(a2 + 24 * v4 + 40);
        v11 = *(a2 + 24 * v4 + 48);
        v30 = v9;
        v28 = v10;
        if (v8)
        {
          if (v11)
          {
            v9 = *(a2 + 24 * v4 + 32);
            if (v6 < v30)
            {
              goto LABEL_13;
            }

LABEL_22:
            if (v9 < v6)
            {
              goto LABEL_32;
            }

            goto LABEL_34;
          }
        }

        else
        {
          if ((v11 & 1) == 0)
          {
            if (v6 != v9 || v7 != v10)
            {
              v17 = *(a1 + 24 * v5 + 40);
              v18 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, v9, v10, 0);
              v7 = v17;
              v10 = v28;
              v9 = v30;
              if ((v18 & 1) == 0)
              {
                v19 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v17, v30, v28, 1);
                v7 = v17;
                v10 = v28;
                v9 = v30;
                if (v19)
                {
LABEL_13:
                  v16 = __OFADD__(1, v5++);
                  a2 = v25;
                  if (v16)
                  {
                    BUG();
                  }

                  goto LABEL_37;
                }
              }
            }

            goto LABEL_28;
          }

          v26 = *(a1 + 24 * v5 + 40);

          v7 = v26;
        }

        v12 = v6;
        v27 = v5;
        v13 = v4;
        v14 = v6;
        v15 = v7;
        outlined consume of MLRecommender.Identifier(v12, v7, v8);
        v7 = v15;
        v6 = v14;
        v4 = v13;
        v5 = v27;
        v9 = v30;
        v10 = v28;
        if (v11 & ~v8)
        {
          goto LABEL_13;
        }

        if (v11)
        {
          if (v8)
          {
            goto LABEL_22;
          }

          goto LABEL_26;
        }

        if (v8)
        {

          v10 = v28;
          v9 = v30;
LABEL_26:
          outlined consume of MLRecommender.Identifier(v9, v10, v11);
          if (~v11 & v8)
          {
            goto LABEL_32;
          }

          goto LABEL_34;
        }

LABEL_28:
        if (v9 != v6 || v10 != v7)
        {
          v20 = v7;
          if (_stringCompareWithSmolCheck(_:_:expecting:)(v9, v10, v6, v7, 0) & 1) == 0 && (_stringCompareWithSmolCheck(_:_:expecting:)(v30, v28, v6, v20, 1))
          {
LABEL_32:
            v16 = __OFADD__(1, v4++);
            a2 = v25;
            if (v16)
            {
              BUG();
            }

            goto LABEL_37;
          }
        }

LABEL_34:
        if (__OFADD__(1, v29))
        {
          BUG();
        }

        v16 = __OFADD__(1, v5++);
        a2 = v25;
        if (v16)
        {
          BUG();
        }

        ++v29;
        v16 = __OFADD__(1, v4++);
        if (v16)
        {
          BUG();
        }

LABEL_37:
        v2 = v23;
        if (v5 != v23)
        {
          v3 = v24;
          if (v4 != v24)
          {
            continue;
          }
        }

        return v29;
      }
    }
  }

  return 0;
}

uint64_t specialized Collection.prefix(_:)(uint64_t a1, uint64_t a2)
{
  return specialized Collection.prefix(_:)(a1, a2);
}

{
  if (a1 < 0)
  {
    BUG();
  }

  v2 = *(a2 + 16);
  v3 = specialized Array.index(_:offsetBy:limitedBy:)(0, a1, v2);
  if (v4)
  {
    v3 = v2;
  }

  if (v3 < 0)
  {
    BUG();
  }

  if (v2 < v3)
  {
    BUG();
  }

  return a2;
}

{
  return specialized Collection.prefix(_:)(a1, a2);
}

uint64_t _s8CreateML23RecommenderTrainingDataVyACyxq_GSayx4user_q_4itemSd6ratingtGcfCAA13MLRecommenderV10IdentifierO_ALTt0g5(uint64_t a1, uint64_t a2)
{
  v31 = v2;
  lazy protocol witness table accessor for type MLRecommender.Identifier and conformance MLRecommender.Identifier();
  lazy protocol witness table accessor for type MLRecommender.Identifier and conformance MLRecommender.Identifier();
  KeyPath = swift_getKeyPath(&unk_33FCD0);

  ML22CategoricalLookupTableVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA13MLRecommenderV10IdentifierO_s15LazyMapSequenceVySayAJ4user_AJ4itemSd6ratingtGAJGTt0g5 = _s8CreateML22CategoricalLookupTableVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA13MLRecommenderV10IdentifierO_s15LazyMapSequenceVySayAJ4user_AJ4itemSd6ratingtGAJGTt0g5(a1, partial apply for specialized implicit closure #1 in RecommenderTrainingData.init(_:), KeyPath);
  v6 = v5;
  v23[0] = ML22CategoricalLookupTableVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA13MLRecommenderV10IdentifierO_s15LazyMapSequenceVySayAJ4user_AJ4itemSd6ratingtGAJGTt0g5;
  v23[1] = v5;
  v7 = swift_getKeyPath(&unk_33FCF0);
  v34 = a1;

  v8 = _s8CreateML22CategoricalLookupTableVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA13MLRecommenderV10IdentifierO_s15LazyMapSequenceVySayAJ4user_AJ4itemSd6ratingtGAJGTt0g5(a1, partial apply for specialized implicit closure #2 in RecommenderTrainingData.init(_:), v7);
  v10 = v9;
  v23[2] = v8;
  v23[3] = v9;
  v11 = ML22CategoricalLookupTableVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA13MLRecommenderV10IdentifierO_s15LazyMapSequenceVySayAJ4user_AJ4itemSd6ratingtGAJGTt0g5[2];

  v29 = v6;
  v6;
  ML22CategoricalLookupTableVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA13MLRecommenderV10IdentifierO_s15LazyMapSequenceVySayAJ4user_AJ4itemSd6ratingtGAJGTt0g5;
  v12 = v8[2];
  v30 = v10;
  v10;
  v8;
  v23[4] = v11;
  v23[5] = v12;
  LOBYTE(v23[6]) = 0;
  v23[7] = _sSa9repeating5countSayxGx_SitcfCSi_Tt1gq5(0, v11 + 1);
  v23[8] = _swiftEmptyArrayStorage;
  v23[9] = _swiftEmptyArrayStorage;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = (v34 + 80);
    do
    {
      if (!*(v29 + 16))
      {
        BUG();
      }

      v15 = *(v14 - 6);
      v16 = *(v14 - 5);
      v32 = *(v14 - 3);
      v33 = *(v14 - 2);
      LOBYTE(v36) = *(v14 - 8);
      v25 = *v14;
      v17 = *(v14 - 32);
      v35 = v17;
      outlined copy of MLRecommender.Identifier(v15, v16, v17);
      v36 = v36;
      outlined copy of MLRecommender.Identifier(v32, v33, v36);
      v24 = v16;
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16, v35);
      if ((v19 & 1) == 0)
      {
        BUG();
      }

      if (!*(v30 + 16))
      {
        BUG();
      }

      v27 = v15;
      v26 = v13;
      v28 = *(*(v29 + 56) + 8 * v18);
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v32, v33, v36);
      if ((v21 & 1) == 0)
      {
        BUG();
      }

      specialized SparseMatrix.subscript.setter(v28, *(*(v30 + 56) + 8 * v20), v25);
      outlined consume of MLRecommender.Identifier(v32, v33, v36);
      outlined consume of MLRecommender.Identifier(v27, v24, v35);
      v14 += 7;
      v13 = v26 - 1;
    }

    while (v26 != 1);
  }

  result = v34;
  qmemcpy(v31, v23, 0x50uLL);
  return result;
}

__int128 *specialized Recommender.buildInteractionTable(_:nearestItems:)(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(__int128 *, uint64_t), uint64_t (*a8)(void))
{
  v27 = a3;
  if (a2)
  {
    v10 = a2;
    outlined retain of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(a1);
    ML13MLRecommenderV10IdentifierO_AJSd5scoretG_Si_SiSdAKtsAE_pTg503_s8d148ML11RecommenderV21buildInteractionTable_12nearestItemsAA0e6LookupF0VAA0C12TrainingDataVyxq_G_Sayq__q_Sd5scoretGSgtKFSi_SiSdAKtq__q_SdAKt_tKXEfU_AA13f3V10G27O_AqA16CosineSimilarityVTG5AF0kvW0VyA2JGTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML13MLRecommenderV10IdentifierO_AJSd5scoretG_Si_SiSdAKtsAE_pTg503_s8d148ML11RecommenderV21buildInteractionTable_12nearestItemsAA0e6LookupF0VAA0C12TrainingDataVyxq_G_Sayq__q_Sd5scoretGSgtKFSi_SiSdAKtq__q_SdAKt_tKXEfU_AA13f3V10G27O_AqA16CosineSimilarityVTG5AF0kvW0VyA2JGTf1cn_nTm(a2, a1);
    if (!v8)
    {
      v12 = ML13MLRecommenderV10IdentifierO_AJSd5scoretG_Si_SiSdAKtsAE_pTg503_s8d148ML11RecommenderV21buildInteractionTable_12nearestItemsAA0e6LookupF0VAA0C12TrainingDataVyxq_G_Sayq__q_Sd5scoretGSgtKFSi_SiSdAKtq__q_SdAKt_tKXEfU_AA13f3V10G27O_AqA16CosineSimilarityVTG5AF0kvW0VyA2JGTf1cn_nTm;
      type metadata accessor for InteractionTableBuilder();
      v13 = v12;
      v10 = static InteractionTableBuilder.createFromItemInteractions(interactions:maximumInteractionsPerItem:minimumInteractionScore:)(v12, a5, v27);
      v13;
    }
  }

  else
  {
    v14 = *(a1 + 48);
    v15 = *(a1 + 64);
    v10 = v21;
    v21[0] = *(a1 + 32);
    v21[2] = v15;
    v21[1] = v14;
    v16 = *(a1 + 16);
    v23 = *(&v14 + 1);
    v24 = v15;
    v25 = *(v16 + 16);
    v26 = a7;
    outlined retain of [Int](&v23);
    outlined retain of [Int](&v24);
    outlined retain of ContiguousArray<Double>(&v24 + 8);
    _s8CreateML21ItemSimilarityTrainerV10similarity13configuration4data9itemCountACyxGxm_AA0cD13ConfigurationV13LinearAlgebra12SparseMatrixVySdGSitcfCAA07PearsonD0V_Ttt3g5Tm(a5, a6, v21, v25, v26, v27);
    v18 = a8();
    if (!v8)
    {
      v10 = v18;
    }

    qmemcpy(v20, v22, sizeof(v20));
    outlined release of ItemSimilarityTrainer<CosineSimilarity>(v20);
  }

  return v10;
}

unint64_t specialized RecommenderModel.computeStatistics(ratingCounts:)(uint64_t a1)
{
  v2 = *(*(v1 + 16) + 16);
  v3 = _sSa9repeating5countSayxGx_SitcfCSd_Tt1g5(v2, 0.0);
  *(v1 + 128);
  v4 = *(v1 + 32);
  v5 = *(v1 + 64);
  v15 = *(v1 + 48);
  v16 = v5;
  v14 = v4;
  v21 = *(&v15 + 1);
  v22 = *(&v5 + 1);
  v23[0] = v5;
  outlined retain of [Int](&v21);
  outlined retain of [Int](v23);
  outlined retain of ContiguousArray<Double>(&v22);
  _s13LinearAlgebra12SparseMatrixV15IndexedSequenceV8IteratorV4baseAGyx__GACyxG_tcfCSd_Tt0g5(&v14);
  if (!swift_isUniquelyReferenced_nonNull_native(v3))
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
  }

  if (!swift_isUniquelyReferenced_nonNull_native(v3))
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
  }

  while (1)
  {
    specialized SparseMatrix.IndexedSequence.Iterator.next()();
    if (v8)
    {
      break;
    }

    if (v6 < 0)
    {
      BUG();
    }

    if (v6 >= v3[2])
    {
      BUG();
    }

    *&v3[v6 + 4] = v7 + *&v3[v6 + 4];
  }

  *(v1 + 128) = v3;
  v13[3] = v20;
  v13[2] = v19;
  v13[1] = v18;
  v13[0] = v17;
  result = outlined release of SparseMatrix<Double>.MajorCollection(v13);
  *(v1 + 136) = xmmword_33FAE0;
  if (v2)
  {
    if (v2 > *(a1 + 16))
    {
      BUG();
    }

    v10 = INFINITY;
    v11 = -INFINITY;
    for (result = 0; result != v2; ++result)
    {
      if (result >= v3[2])
      {
        BUG();
      }

      v12 = *&v3[result + 4] / fmax(*(a1 + 8 * result + 32), 1.0);
      *&v3[result + 4] = v12;
      if (v10 > v12)
      {
        *(v1 + 136) = v12;
        v10 = v12;
      }

      if (v12 > v11)
      {
        *(v1 + 144) = v12;
        v11 = v12;
      }
    }

    *(v1 + 128) = v3;
  }

  return result;
}

uint64_t specialized closure #1 in Recommender.buildInteractionTable(_:nearestItems:)(uint64_t a1, uint64_t a2)
{
  v22 = *a1;
  v2 = *(a1 + 8);
  v24 = *(a1 + 16);
  v3 = *(a2 + 24);
  if (!*(v3 + 16) || (v4 = *(a1 + 24), v23 = *(a1 + 32), v25 = *(a1 + 40), v21 = *(a1 + 48), v5 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v2, v24), (v6 & 1) == 0))
  {
    *&v19 = 0;
    *(&v19 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v18 = v19;
    v10._object = "item identifiers." + 0x8000000000000000;
    v10._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v10);
    *&v19 = v22;
    *(&v19 + 1) = v2;
    v11 = v24;
LABEL_8:
    v20 = v11;
    _print_unlocked<A, B>(_:_:)(&v19, &v18, &type metadata for MLRecommender.Identifier, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v13._object = "Nearest items entry " + 0x8000000000000000;
    v13._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v13);
    v14 = *(&v18 + 1);
    v8 = v18;
    v15 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v15, 0, 0);
    *v16 = v8;
    *(v16 + 8) = v14;
    *(v16 + 16) = 0;
    *(v16 + 32) = 0;
    *(v16 + 48) = 0;
    swift_willThrow();
    return v8;
  }

  v7 = v4;
  if (!*(v3 + 16) || (v8 = *(*(v3 + 56) + 8 * v5), specialized __RawDictionaryStorage.find<A>(_:)(v7, v23, v25), (v9 & 1) == 0))
  {
    *&v19 = 0;
    *(&v19 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v18 = v19;
    v12._object = "item identifiers." + 0x8000000000000000;
    v12._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v12);
    *&v19 = v7;
    *(&v19 + 1) = v23;
    v11 = v25;
    goto LABEL_8;
  }

  return v8;
}

void *specialized Sequence.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v25 = a1;
  v24 = a1;
  while (1)
  {
    v7 = v24;
    if (v24 == a2)
    {
      break;
    }

    if (a2 < a1)
    {
      BUG();
    }

    if (v25 < a1)
    {
      BUG();
    }

    if (v24 >= a2)
    {
      BUG();
    }

    ++v24;
    if (*(a3 + 16) && (v8 = static Hasher._hash(seed:_:)(*(a3 + 40)), v9 = ~(-1 << *(a3 + 32)), v10 = v9 & v8, v11 = *(a3 + 8 * (v10 >> 6) + 56), _bittest64(&v11, v10)))
    {
      while (*(*(a3 + 48) + 8 * v10) != v7)
      {
        v10 = v9 & (v10 + 1);
        v12 = *(a3 + 8 * (v10 >> 6) + 56);
        if (!_bittest64(&v12, v10))
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      if ((a4 & 1) != 0 && *(a5 + 16) && (v13 = static Hasher._hash(seed:_:)(*(a5 + 40)), v14 = ~(-1 << *(a5 + 32)), v15 = v14 & v13, v16 = *(a5 + 8 * (v15 >> 6) + 56), _bittest64(&v16, v15)))
      {
        while (*(*(a5 + 48) + 8 * v15) != v7)
        {
          v15 = v14 & (v15 + 1);
          v17 = *(a5 + 8 * (v15 >> 6) + 56);
          if (!_bittest64(&v17, v15))
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
LABEL_15:
        if (!swift_isUniquelyReferenced_nonNull_native(_swiftEmptyArrayStorage))
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v18 = _swiftEmptyArrayStorage[2];
        v19 = v18 + 1;
        if (_swiftEmptyArrayStorage[3] >> 1 <= v18)
        {
          v26 = v18 + 1;
          v22 = _swiftEmptyArrayStorage[2];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v19, 1);
          v19 = v26;
          v18 = v22;
        }

        _swiftEmptyArrayStorage[2] = v19;
        _swiftEmptyArrayStorage[v18 + 4] = v7;
        v25 = v24;
      }
    }
  }

  a5;
  a3;
  return _swiftEmptyArrayStorage;
}

void *specialized Sequence.filter(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = -1 << *(a1 + 32);
  v6 = a2;
  v7 = ~(-1 << -v5);
  if (-v5 >= 64)
  {
    v7 = -1;
  }

  v8 = *(a1 + 56) & v7;
  v40 = a1 + 56;
  v39 = (63 - v5) >> 6;
  v37 = _swiftEmptyArrayStorage;
  v9 = 0;
  while (1)
  {
LABEL_4:
    if (v8)
    {
      v10 = v9;
      goto LABEL_25;
    }

    v11 = v9 + 1;
    if (__OFADD__(1, v9))
    {
      BUG();
    }

    if (v11 >= v39)
    {
      goto LABEL_43;
    }

    v8 = *(v40 + 8 * v11);
    if (v8)
    {
      v10 = v9 + 1;
      goto LABEL_25;
    }

    v10 = v9 + 2;
    if (v9 + 2 >= v39)
    {
      goto LABEL_43;
    }

    v8 = *(v40 + 8 * v11 + 8);
    if (!v8)
    {
      v10 = v9 + 3;
      if (v9 + 3 >= v39)
      {
        goto LABEL_43;
      }

      v8 = *(v40 + 8 * v11 + 16);
      if (!v8)
      {
        v10 = v9 + 4;
        if (v9 + 4 >= v39)
        {
          goto LABEL_43;
        }

        v8 = *(v40 + 8 * v11 + 24);
        if (!v8)
        {
          v10 = v9 + 5;
          if (v9 + 5 >= v39)
          {
            goto LABEL_43;
          }

          v8 = *(v40 + 8 * v11 + 32);
          if (!v8)
          {
            v10 = v9 + 6;
            if (v9 + 6 >= v39)
            {
              goto LABEL_43;
            }

            v8 = *(v40 + 8 * v11 + 40);
            if (!v8)
            {
              break;
            }
          }
        }
      }
    }

LABEL_25:
    _BitScanForward64(&v13, v8);
    v8 &= v8 - 1;
    v14 = *(*(a1 + 48) + ((v10 << 9) | (8 * v13)));
    if (!*(v6 + 16))
    {
      goto LABEL_31;
    }

    v15 = static Hasher._hash(seed:_:)(*(v6 + 40));
    v6 = a2;
    v16 = ~(-1 << *(a2 + 32));
    v17 = v16 & v15;
    v18 = *(a2 + 8 * (v17 >> 6) + 56);
    if (!_bittest64(&v18, v17))
    {
      goto LABEL_31;
    }

    v19 = *(a2 + 48);
    v9 = v10;
    if (*(v19 + 8 * v17) != v14)
    {
      while (1)
      {
        v17 = v16 & (v17 + 1);
        v20 = *(a2 + 8 * (v17 >> 6) + 56);
        if (!_bittest64(&v20, v17))
        {
          break;
        }

        if (*(v19 + 8 * v17) == v14)
        {
LABEL_37:
          v9 = v10;
          goto LABEL_4;
        }
      }

LABEL_31:
      if ((a3 & 1) == 0)
      {
        goto LABEL_38;
      }

      if (!*(a4 + 16))
      {
        goto LABEL_38;
      }

      v21 = static Hasher._hash(seed:_:)(*(a4 + 40));
      v6 = a2;
      v22 = ~(-1 << *(a4 + 32));
      v23 = v22 & v21;
      v24 = *(a4 + 8 * (v23 >> 6) + 56);
      if (!_bittest64(&v24, v23))
      {
        goto LABEL_38;
      }

      v25 = *(a4 + 48);
      v9 = v10;
      if (*(v25 + 8 * v23) != v14)
      {
        while (1)
        {
          v23 = v22 & (v23 + 1);
          v26 = *(a4 + 8 * (v23 >> 6) + 56);
          if (!_bittest64(&v26, v23))
          {
            break;
          }

          if (*(v25 + 8 * v23) == v14)
          {
            goto LABEL_37;
          }
        }

LABEL_38:
        v33 = v10;
        v27 = v37;
        v35 = v37;
        if (!swift_isUniquelyReferenced_nonNull_native(v37))
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37[2] + 1, 1);
          v27 = v37;
        }

        v28 = v27[2];
        v29 = v28 + 1;
        v6 = a2;
        v9 = v33;
        if (v27[3] >> 1 <= v28)
        {
          v38 = v28 + 1;
          v32 = v27[2];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27[3] >= 2uLL, v29, 1);
          v29 = v38;
          v28 = v32;
          v9 = v33;
          v6 = a2;
          v27 = v35;
        }

        v27[2] = v29;
        v37 = v27;
        v27[v28 + 4] = v14;
      }
    }
  }

  v12 = v9 + 7;
  if (v9 + 7 >= v39)
  {
    goto LABEL_43;
  }

  v8 = *(v40 + 8 * v11 + 48);
  if (v8)
  {
    v10 = v9 + 7;
    goto LABEL_25;
  }

  while (1)
  {
    v10 = v12 + 1;
    if (v12 + 1 >= v39)
    {
      break;
    }

    v8 = *(a1 + 8 * v12++ + 64);
    if (v8)
    {
      goto LABEL_25;
    }
  }

LABEL_43:
  v30 = v6;
  outlined consume of [String : [Double]].Iterator._Variant(a1);
  a4;
  v30;
  return v37;
}

void *specialized RecommenderModel.scoreAll<A>(itemIndices:userScores:)(uint64_t a1, void *a2)
{
  v4 = specialized RecommenderModel.score<A>(itemIndices:interactions:)(a1, a2);
  if (v4)
  {
    return v4;
  }

  v6 = *(v2 + 120);

  v5 = specialized RecommenderModel.score<A>(itemIndices:interactions:)(a1, v6);
  v6;
  if (!v5)
  {
    v26 = *(v2 + 136);
    v28 = *(v2 + 144);
    v7 = *(a1 + 16);
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0, _swiftEmptyArrayStorage);
    v9 = v7;
    v5 = v8;
    if (v9)
    {
      v29 = 1.0 / fmax(v28 - v26, 1.0);
      v25 = *(v2 + 128);
      v10 = *(v25 + 16);
      v27 = v9;

      v11 = v10;
      v12 = v27;
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = *(a1 + 8 * v13 + 32);
        if (v15 >= v11)
        {
          v17 = v5[2];
          v18 = v5[3];
          v19 = v18 >> 1;
          v20 = v17 + 1;
          v16 = 0.0;
        }

        else
        {
          if (v15 < 0)
          {
            BUG();
          }

          v16 = (*(v25 + 8 * v15 + 32) - v26) * v29;
          v17 = v5[2];
          v18 = v5[3];
          v19 = v18 >> 1;
          v20 = v17 + 1;
        }

        if (v19 <= v17)
        {
          v21 = v5;
          v22 = v14;
          v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v18 >= 2, v20, v14, v21);
          v14 = v22;
          v12 = v27;
          v5 = v23;
        }

        ++v13;
        v5[2] = v20;
        *&v5[v17 + 4] = v16;
      }

      while (v12 != v13);
      a1;
    }
  }

  return v5;
}

void *specialized RecommenderModel.scoreAll<A>(itemIndices:userScores:)(uint64_t a1, uint64_t a2)
{
  v4 = specialized RecommenderModel.score<A>(itemIndices:interactions:)(a1, a2);
  if (v4)
  {
    return v4;
  }

  v6 = *(v2 + 120);

  v5 = specialized RecommenderModel.score<A>(itemIndices:interactions:)(a1, v6);
  v6;
  if (!v5)
  {
    v26 = *(v2 + 136);
    v28 = *(v2 + 144);
    v7 = *(a1 + 16);
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0, _swiftEmptyArrayStorage);
    v9 = v7;
    v5 = v8;
    if (v9)
    {
      v29 = 1.0 / fmax(v28 - v26, 1.0);
      v25 = *(v2 + 128);
      v10 = *(v25 + 16);
      v27 = v9;

      v11 = v10;
      v12 = v27;
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = *(a1 + 8 * v13 + 32);
        if (v15 >= v11)
        {
          v17 = v5[2];
          v18 = v5[3];
          v19 = v18 >> 1;
          v20 = v17 + 1;
          v16 = 0.0;
        }

        else
        {
          if (v15 < 0)
          {
            BUG();
          }

          v16 = (*(v25 + 8 * v15 + 32) - v26) * v29;
          v17 = v5[2];
          v18 = v5[3];
          v19 = v18 >> 1;
          v20 = v17 + 1;
        }

        if (v19 <= v17)
        {
          v21 = v5;
          v22 = v14;
          v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v18 >= 2, v20, v14, v21);
          v14 = v22;
          v12 = v27;
          v5 = v23;
        }

        ++v13;
        v5[2] = v20;
        *&v5[v17 + 4] = v16;
      }

      while (v12 != v13);
      a1;
    }
  }

  return v5;
}

char specialized closure #2 in RecommenderModel.recommend(for:limit:allowedItems:disallowedItems:omittingObservedInteractions:)(unint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    BUG();
  }

  if (*(a6 + 16) <= a1)
  {
    BUG();
  }

  v8 = *(a6 + 16 * a1 + 32);
  if (v8 < 0)
  {
    BUG();
  }

  v9 = v6;
  v10 = *(a5 + 16);
  if (v8 >= *(v10 + 16))
  {
    BUG();
  }

  v14 = *(a6 + 16 * a1 + 40);
  v11 = *(v10 + 24 * v8 + 32);
  v15 = *(v10 + 24 * v8 + 40);
  v12 = *(v10 + 24 * v8 + 48);
  v17 = a4 & 1;
  v16 = a3;
  outlined copy of MLRecommender.Identifier(a2, a3, a4);
  outlined copy of MLRecommender.Identifier(v11, v15, v12);
  *v9 = a2;
  *(v9 + 8) = v16;
  *(v9 + 16) = v17;
  *(v9 + 24) = v11;
  *(v9 + 32) = v15;
  result = v12;
  *(v9 + 40) = v12;
  *(v9 + 48) = v14;
  *(v9 + 56) = a1 + 1;
  return result;
}

void *specialized RecommenderModel.score<A>(itemIndices:interactions:)(uint64_t a1, uint64_t a2)
{
  v46 = v2[13];
  if (!v46)
  {
    BUG();
  }

  v42 = v2[14];
  v47 = v2[12];
  v4 = _sSa9repeating5countSayxGx_SitcfCSd_Tt1g5(v47, 0.0);

  v48 = v4;
  if (!swift_isUniquelyReferenced_nonNull_native(v4))
  {
    v48 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }

  v5 = *(a2 + 16);
  v6 = v47;
  v7 = v42;
  if (!v5)
  {
    v48;
    v32 = a2;
LABEL_37:
    v32;
    return 0;
  }

  v8 = a2 + 32;
  v39 = v48 + 4;
  v9 = 0;
  v10 = 0;
  v40 = v2;
  v38 = a1;
  v41 = *(a2 + 16);
  do
  {
    v11 = *(v8 + 16 * v10);
    if (v11 < v6)
    {
      if (v11 < 0)
      {
        BUG();
      }

      v12 = *(v7 + 16);
      if (v11 >= v12)
      {
        BUG();
      }

      if (v11 + 1 >= v12)
      {
        BUG();
      }

      v13 = *(v7 + 8 * v11 + 32);
      v14 = *(v7 + 8 * v11 + 40);
      if (v14 < v13)
      {
        BUG();
      }

      if (v13 < 0)
      {
        BUG();
      }

      v15 = *(v46 + 16);
      if (v15 < v13 || v15 < v14)
      {
        BUG();
      }

      if (v14 != v13)
      {
        v16 = v14 - v13;
        if (v14 <= v13)
        {
          BUG();
        }

        v36 = v10;
        v43 = *(v8 + 16 * v10 + 8);
        v17 = v2[10];
        v45 = v2[11];
        v35 = *(v45 + 16);
        v37 = v9 + v14 - v13;

        v18 = (v46 + 40 + 16 * v13);
        do
        {
          v19 = *(v18 - 1);
          if (v19 < 0)
          {
            BUG();
          }

          if (v19 >= v48[2])
          {
            BUG();
          }

          v35(&v39[v19], v17, v45, v43, *v18);
          if (__OFADD__(1, v9++))
          {
            BUG();
          }

          v18 += 2;
          --v16;
        }

        while (v16);
        v46;
        v9 = v37;
        a1 = v38;
        v2 = v40;
        v6 = v47;
        v5 = v41;
        v7 = v42;
        v8 = a2 + 32;
        v10 = v36;
      }
    }

    ++v10;
  }

  while (v10 != v5);
  a2;
  if (v9 <= 0)
  {
    v32 = v48;
    goto LABEL_37;
  }

  v21 = *(a1 + 16);
  v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0, _swiftEmptyArrayStorage);
  v44 = v21;
  if (v21)
  {

    v23 = 0;
    v24 = v47;
    do
    {
      v25 = *(a1 + 8 * v23 + 32);
      if (v25 >= v24)
      {
        v27 = v22[2];
        v28 = v22[3];
        v29 = v28 >> 1;
        v30 = v27 + 1;
        v26 = 0.0;
      }

      else
      {
        if (v25 < 0)
        {
          BUG();
        }

        if (v25 >= v48[2])
        {
          BUG();
        }

        v26 = *&v39[v25];
        (*(v40[11] + 24))(v41, v26);
        v24 = v47;
        v27 = v22[2];
        v28 = v22[3];
        v29 = v28 >> 1;
        v30 = v27 + 1;
      }

      if (v29 <= v27)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28 >= 2, v30, 1, v22);
        v24 = v47;
        v22 = v31;
      }

      ++v23;
      v22[2] = v30;
      *&v22[v27 + 4] = v26;
    }

    while (v44 != v23);
    v48;
    v33 = a1;
  }

  else
  {
    v33 = v48;
  }

  v33;
  return v22;
}

void *specialized RecommenderModel.score<A>(itemIndices:interactions:)(uint64_t a1, void *a2)
{
  v50 = v2[13];
  if (!v50)
  {
    BUG();
  }

  v49 = v2[14];
  v60 = v2[12];
  v61 = _sSa9repeating5countSayxGx_SitcfCSd_Tt1g5(v60, 0.0);
  v3 = a2[6];
  if (v3 < 0)
  {
    BUG();
  }

  v48 = v2;
  v4 = a2[3];
  v5 = *(v4 + 16);
  if (v3 >= v5)
  {
    BUG();
  }

  v6 = a2[4];
  v59 = a2[5];
  v51 = a2[3];
  v52 = *(v4 + 8 * v3 + 32);
  outlined retain of SparseMatrix<Double>.MajorCollection(a2);
  if (!swift_isUniquelyReferenced_nonNull_native(v61))
  {
    v61 = specialized _ArrayBuffer._consumeAndCreateNew()(v61);
  }

  v7 = v60;
  v8 = v49;
  if (v3 + 1 >= v5)
  {
    BUG();
  }

  v9 = *(v51 + 8 * v3 + 40);
  if (v52 == v9)
  {

    v6;
    v51;
LABEL_43:
    v61;
    return 0;
  }

  v10 = *(v59 + 16);
  v11 = *(v6 + 16);
  v47 = v61 + 4;
  v12 = v50;
  v13 = 0;
  v14 = v52;
  v56 = v9;
  v44 = v6;
  v45 = v10;
  v46 = v11;
  do
  {
    if (v14 >= v11)
    {
      BUG();
    }

    v15 = v14;
    if (v14 >= v10)
    {
      BUG();
    }

    ++v14;
    if (__OFADD__(1, v15))
    {
      BUG();
    }

    v16 = *(v6 + 4 * v15 + 32);
    if (v7 > v16)
    {
      if (v16 < 0)
      {
        BUG();
      }

      v17 = *(v8 + 16);
      if (v17 <= v16)
      {
        BUG();
      }

      if (v16 + 1 >= v17)
      {
        BUG();
      }

      v18 = *(v8 + 8 * v16 + 32);
      v19 = *(v8 + 8 * v16 + 40);
      if (v19 < v18)
      {
        BUG();
      }

      if (v18 < 0)
      {
        BUG();
      }

      v20 = *(v12 + 16);
      if (v20 < v18 || v20 < v19)
      {
        BUG();
      }

      if (v19 != v18)
      {
        v21 = v19 - v18;
        if (v19 <= v18)
        {
          BUG();
        }

        v42 = v15 + 1;
        v53 = *(v59 + 8 * v15 + 32);
        v22 = v48[10];
        v23 = v48[11];
        v55 = *(v23 + 16);
        v43 = v13 + v19 - v18;

        v24 = (v50 + 40 + 16 * v18);
        do
        {
          v25 = *(v24 - 1);
          if (v25 < 0)
          {
            BUG();
          }

          if (v25 >= v61[2])
          {
            BUG();
          }

          v55(&v47[v25], v22, v23, v53, *v24);
          if (__OFADD__(1, v13++))
          {
            BUG();
          }

          v24 += 2;
          --v21;
        }

        while (v21);
        v12 = v50;
        v50;
        v13 = v43;
        v7 = v60;
        v9 = v56;
        v8 = v49;
        v6 = v44;
        v10 = v45;
        v11 = v46;
        v14 = v42;
      }
    }
  }

  while (v14 != v9);

  v6;
  v51;
  if (v13 <= 0)
  {
    goto LABEL_43;
  }

  v27 = *(a1 + 16);
  v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0, _swiftEmptyArrayStorage);
  if (v27)
  {
    v57 = v9 - v52;
    v54 = __OFSUB__(v9, v52);

    v29 = 0;
    v30 = a1;
    v31 = v60;
    do
    {
      v32 = *(v30 + 8 * v29 + 32);
      if (v32 >= v31)
      {
        v34 = v28[2];
        v35 = v28[3];
        v36 = v35 >> 1;
        v37 = v34 + 1;
        v33 = 0.0;
      }

      else
      {
        if (v32 < 0)
        {
          BUG();
        }

        if (v32 >= v61[2])
        {
          BUG();
        }

        if (v54)
        {
          BUG();
        }

        v33 = *&v47[v32];
        (*(v48[11] + 24))(v57, v33);
        v31 = v60;
        v30 = a1;
        v34 = v28[2];
        v35 = v28[3];
        v36 = v35 >> 1;
        v37 = v34 + 1;
      }

      if (v36 <= v34)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35 >= 2, v37, 1, v28);
        v31 = v60;
        v30 = a1;
        v28 = v38;
      }

      ++v29;
      v28[2] = v37;
      *&v28[v34 + 4] = v33;
    }

    while (v27 != v29);
    v39 = v30;
    v61;
    v40 = v39;
  }

  else
  {
    v40 = v61;
  }

  v40;
  return v28;
}

void specialized SparseMatrix.subscript.setter(Swift::Int a1, uint64_t a2, double a3)
{
  v22 = a3;
  v4 = a1;
  v5 = a2;
  if (*(v3 + 16))
  {
    v5 = a1;
    v4 = a2;
  }

  if (v4 < 0)
  {
    BUG();
  }

  v6 = *(v3 + 24);
  v7 = *(v6 + 16);
  if (v4 >= v7)
  {
    BUG();
  }

  if (v4 + 1 >= v7)
  {
    BUG();
  }

  v8 = *(v6 + 8 * v4 + 32);
  v9 = *(v6 + 8 * v4 + 40);
  if (v8 == v9)
  {
    if (a3 == 0.0)
    {
      return;
    }

    goto LABEL_21;
  }

  if (v8 > v9)
  {
    BUG();
  }

  if (v8 < 0)
  {
    BUG();
  }

  v10 = *(v3 + 32);
  v11 = *(v10 + 16);
  if (v11 < v8 || v11 < v9)
  {
    BUG();
  }

  if (v5 < 0xFFFFFFFF80000000)
  {
    BUG();
  }

  if (v5 > 0x7FFFFFFF)
  {
    BUG();
  }

  v23 = a3;
  v21 = v10 + 32;
  v12 = specialized Collection<>.firstIndex(of:)(v5, v10, v10 + 32, v8, 2 * v9 + 1);
  if (v13)
  {
    if (v23 != 0.0)
    {
      if (v8 >= v9)
      {
        BUG();
      }

      if (*(v21 + 4 * v8) > v5)
      {
        v14 = v8;
LABEL_20:
        v8 = v14;
LABEL_21:
        v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for SparseMatrix<Double>);
        v16 = v8;
LABEL_22:
        SparseMatrix.insert(index:major:minor:value:)(v16, v4, v5, &v22, v15);
        return;
      }

      v14 = v8 + 1;
      if (v8 + 1 != v9)
      {
        if (v8 + 1 >= v9)
        {
          BUG();
        }

        if (*(v21 + 4 * v8 + 4) > v5)
        {
          goto LABEL_20;
        }

        v14 = v8 + 2;
        if (v8 + 2 != v9)
        {
          if (v8 + 2 >= v9)
          {
            BUG();
          }

          if (*(v21 + 4 * v8 + 8) > v5)
          {
            goto LABEL_20;
          }

          v19 = v8 + 3;
          while (v19 != v9)
          {
            v14 = v8 + 3;
            if (v8 + 3 >= v9)
            {
              BUG();
            }

            if (*(v10 + 4 * v8 + 44) > v5)
            {
              goto LABEL_20;
            }

            v20 = __OFADD__(1, v14);
            v19 = v8 + 4;
            if (v20)
            {
              BUG();
            }

            ++v8;
          }
        }
      }

      v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for SparseMatrix<Double>);
      v16 = v9;
      goto LABEL_22;
    }
  }

  else
  {
    v17 = v12;
    if (v23 == 0.0)
    {
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for SparseMatrix<Double>);
      SparseMatrix.remove(index:major:)(v17, v4);
    }

    else
    {
      v18 = *(v3 + 40);
      if (!swift_isUniquelyReferenced_nonNull_native(v18))
      {
        v18 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v18);
      }

      if (v17 < 0)
      {
        BUG();
      }

      if (v17 >= *(v18 + 2))
      {
        BUG();
      }

      *&v18[8 * v17 + 32] = v23;
      *(v3 + 40) = v18;
    }
  }
}

uint64_t outlined destroy of MLRecommender.ModelParameters(uint64_t a1)
{
  v1 = type metadata accessor for MLRecommender.ModelParameters(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t specialized Array._makeUniqueAndReserveCapacityIfNotUnique()()
{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(uint64_t (*a1)(void, uint64_t, uint64_t, uint64_t))
{
  v2 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native(*v1);
  *v1 = v2;
  if (!result)
  {
    result = a1(0, *(v2 + 16) + 1, 1, v2);
    *v1 = result;
  }

  return result;
}

uint64_t (*specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t a1))(BOOL, uint64_t, uint64_t)
{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t (*specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t a1, uint64_t (*a2)(BOOL, uint64_t, uint64_t)))(BOOL, uint64_t, uint64_t)
{
  result = a2;
  if (*(*v2 + 24) >> 1 < a1 + 1)
  {
    result = a2(*(*v2 + 24) >= 2uLL, a1 + 1, 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_B727F()
{
  v1 = type metadata accessor for Model(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = ~*(v2 + 80) & (v3 + 16);
  v5 = v4 + v0;
  v6 = *(v2 + 64) + v4;
  (*(v2 + 8))(v5, v1);
  return swift_deallocObject(v0, v6, v3 | 7);
}

uint64_t partial apply for closure #1 in MLRecommender.init(trainingData:userColumn:itemColumn:ratingColumn:parameters:)(uint64_t a1)
{
  v3 = type metadata accessor for Model(0);
  v4 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 16));
  v5 = swift_task_alloc(48);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLRecommender.init(trainingData:userColumn:itemColumn:ratingColumn:parameters:)(a1, v4);
}

uint64_t *outlined release of RecommenderModel<MLRecommender.Identifier, MLRecommender.Identifier>(uint64_t *a1)
{
  v7 = *a1;
  v12 = a1[1];
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[7];
  v4 = a1[8];
  v9 = a1[12];
  v10 = a1[13];
  v11 = a1[14];
  v6 = a1[15];
  v8 = a1[16];

  v4;
  v3;
  v2;
  v1;
  v12;
  v7;
  outlined consume of InteractionLookupTable?(v9, v10, v11);
  v8;
  v6;
  return a1;
}

uint64_t outlined consume of InteractionLookupTable?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a3;
    a2;
    return v3;
  }

  return result;
}

uint64_t outlined consume of MLRecommender.Identifier(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return a2;
  }

  return result;
}

uint64_t specialized UnsafeMutableBufferPointer.swapAt(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    if (!a3)
    {
      BUG();
    }

    v3 = 16 * a1;
    v4 = 16 * a2;
    result = *(a3 + v3);
    v6 = *(a3 + v3 + 8);
    *(a3 + v3) = *(a3 + v4);
    *(a3 + v4) = result;
    *(a3 + v4 + 8) = v6;
  }

  return result;
}

uint64_t specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, void *a2)
{
  v3 = a2;
  v4 = a1[1];
  swift_bridgeObjectRetain_n(a2, 3);
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 >= v4)
  {
    if (v4 < 0)
    {
      BUG();
    }

    if (v4)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, a2);
      v8 = a2;
      goto LABEL_112;
    }

    v8 = a2;
LABEL_111:
    v3;
    goto LABEL_112;
  }

  if (v4 < -1)
  {
    BUG();
  }

  v85 = v4;
  v82 = v5;
  if (v4 > 1)
  {
    v6 = static Array._allocateBufferUninitialized(minimumCapacity:)(v4 / 2, &type metadata for Int);
    *(v6 + 16) = v4 / 2;
    v93 = v6;
    v7 = (v6 + 32);
    goto LABEL_10;
  }

  if (v4 == 1)
  {
    v93 = _swiftEmptyArrayStorage;
    v7 = &_swiftEmptyArrayStorage[4];
LABEL_10:
    v92 = v7;
    v94 = a2 + 4;
    v91 = *a1;
    v84 = *a1 - 8;
    v9 = _swiftEmptyArrayStorage;
    v10 = 0;
    v11 = v4;
    while (1)
    {
      v12 = v10;
      v13 = v10 + 1;
      v99 = v12;
      if (v13 >= v11)
      {
        v14 = v91;
      }

      else
      {
        v14 = v91;
        v15 = *(v91 + 8 * v12 + 8);
        if (v15 < 0)
        {
          BUG();
        }

        v16 = v3[2];
        if (v15 >= v16)
        {
          BUG();
        }

        v17 = *(v91 + 8 * v12);
        if (v17 >= v16)
        {
          BUG();
        }

        v18 = v94[2 * v15];
        v19 = v94[2 * v17];
        v13 = v12 + 2;
        if (v12 + 2 < v11)
        {
          v20 = v9;
          v21 = v94[2 * v15];
          while (1)
          {
            v22 = *(v91 + 8 * v13);
            if (v22 >= v16)
            {
              BUG();
            }

            if (v15 >= v16)
            {
              BUG();
            }

            v23 = v13;
            if (v18 < v19 == v94[2 * v22] >= v21)
            {
              break;
            }

            ++v13;
            v21 = v94[2 * v22];
            v15 = v22;
            if (v23 + 1 >= v11)
            {
              v13 = v11;
              v9 = v20;
              goto LABEL_24;
            }
          }

          v9 = v20;
LABEL_24:
          v12 = v99;
        }

        if (v18 < v19)
        {
          if (v13 < v12)
          {
            BUG();
          }

          if (v13 > v12)
          {
            v24 = v13 - 1;
            v25 = v12;
            do
            {
              if (v25 != v24)
              {
                if (!v91)
                {
                  swift_bridgeObjectRelease_n(v3, 3);
                  BUG();
                }

                v26 = *(v91 + 8 * v25);
                *(v91 + 8 * v25) = *(v91 + 8 * v24);
                *(v91 + 8 * v24) = v26;
              }

              v27 = ++v25 < v24--;
            }

            while (v27);
          }
        }
      }

      if (v13 < v11)
      {
        if (__OFSUB__(v13, v12))
        {
          BUG();
        }

        if (v13 - v12 < v82)
        {
          v28 = (v82 + v12);
          if (__OFADD__(v82, v12))
          {
            BUG();
          }

          if (v28 >= v11)
          {
            v28 = v11;
          }

          if (v28 < v12)
          {
            BUG();
          }

          if (v13 != v28)
          {
            v29 = v12;
            v30 = v84;
            v31 = v13;
            do
            {
              v32 = *(v14 + 8 * v31);
              v33 = v13;
              do
              {
                if (v32 < 0)
                {
                  BUG();
                }

                v34 = v3[2];
                if (v32 >= v34)
                {
                  BUG();
                }

                v35 = *(v30 + 8 * v13);
                if (v35 >= v34)
                {
                  BUG();
                }

                if (v94[2 * v32] >= v94[2 * v35])
                {
                  break;
                }

                if (!v14)
                {
                  swift_bridgeObjectRelease_n(v3, 3);
                  BUG();
                }

                *(v30 + 8 * v13 + 8) = v35;
                *(v30 + 8 * v13--) = v32;
              }

              while (v29 != v13);
              ++v31;
              v30 += 8;
              --v29;
              v13 = v33;
            }

            while (v31 != v28);
            v13 = v28;
            v12 = v99;
          }
        }
      }

      if (v13 < v12)
      {
        BUG();
      }

      v90 = v13;
      v36 = v9;
      if (swift_isUniquelyReferenced_nonNull_native(v9))
      {
        v9 = v36;
      }

      else
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
      }

      v37 = *(v9 + 2);
      v38 = v37 + 1;
      v10 = v90;
      v39 = v99;
      if (*(v9 + 3) >> 1 <= v37)
      {
        v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v9 + 3) >= 2uLL, v37 + 1, 1, v9);
        v39 = v99;
        v10 = v90;
        v9 = v70;
      }

      *(v9 + 2) = v38;
      v40 = 16 * v37;
      *&v9[v40 + 32] = v39;
      *&v9[v40 + 40] = v10;
      if (v37)
      {
        break;
      }

      v38 = 1;
      v3 = a2;
LABEL_91:
      v11 = v85;
      if (v10 >= v85)
      {
        goto LABEL_98;
      }
    }

    v41 = v9 + 32;
    v3 = a2;
    v97 = v9;
    v100 = v9 + 32;
    while (1)
    {
      v42 = v38 - 1;
      if (v38 >= 4)
      {
        v47 = 16 * v38;
        v48 = *&v41[16 * v38 - 56];
        v44 = __OFSUB__(v48, *&v41[16 * v38 - 64]);
        v49 = v48 - *&v41[16 * v38 - 64];
        if (v44)
        {
          BUG();
        }

        v50 = *&v41[v47 - 40];
        v44 = __OFSUB__(v50, *&v41[v47 - 48]);
        v45 = v50 - *&v41[v47 - 48];
        v46 = v44;
        if (v44)
        {
          BUG();
        }

        v51 = *&v9[v47 + 8];
        v44 = __OFSUB__(v51, *&v9[16 * v38]);
        v52 = v51 - *&v9[16 * v38];
        if (v44)
        {
          BUG();
        }

        v44 = __OFADD__(v45, v52);
        v53 = v45 + v52;
        if (v44)
        {
          BUG();
        }

        if (v53 >= v49)
        {
          v62 = *&v41[16 * v42 + 8];
          v44 = __OFSUB__(v62, *&v41[16 * v42]);
          v63 = v62 - *&v41[16 * v42];
          if (v44)
          {
            BUG();
          }

          if (v45 < v63)
          {
LABEL_81:
            v42 = v38 - 2;
            goto LABEL_82;
          }

          goto LABEL_82;
        }
      }

      else
      {
        if (v38 != 3)
        {
          if (v38 < 2)
          {
            BUG();
          }

          v59 = *&v9[16 * v38 + 8];
          v44 = __OFSUB__(v59, *&v9[16 * v38]);
          v55 = v59 - *&v9[16 * v38];
          v56 = v44;
LABEL_75:
          if (v56)
          {
            BUG();
          }

          v60 = *&v41[16 * v42 + 8];
          v44 = __OFSUB__(v60, *&v41[16 * v42]);
          v61 = v60 - *&v41[16 * v42];
          if (v44)
          {
            BUG();
          }

          if (v61 < v55)
          {
            goto LABEL_91;
          }

          goto LABEL_82;
        }

        v43 = *(v9 + 5);
        v44 = __OFSUB__(v43, *(v9 + 4));
        v45 = v43 - *(v9 + 4);
        v46 = v44;
      }

      if (v46)
      {
        BUG();
      }

      v54 = *&v9[16 * v38 + 8];
      v44 = __OFSUB__(v54, *&v9[16 * v38]);
      v55 = v54 - *&v9[16 * v38];
      v56 = v44;
      if (v44)
      {
        BUG();
      }

      v57 = *&v41[16 * v42 + 8];
      v44 = __OFSUB__(v57, *&v41[16 * v42]);
      v58 = v57 - *&v41[16 * v42];
      if (v44)
      {
        BUG();
      }

      if (__OFADD__(v58, v55))
      {
        BUG();
      }

      if (v58 + v55 < v45)
      {
        goto LABEL_75;
      }

      if (v45 < v58)
      {
        goto LABEL_81;
      }

LABEL_82:
      if (v42 - 1 >= v38)
      {
        BUG();
      }

      if (!v91)
      {
        swift_bridgeObjectRelease_n(v3, 3);
        BUG();
      }

      v64 = 16 * (v42 - 1);
      v80 = v42;
      v65 = &v41[16 * v42];
      v66 = *&v41[v64];
      v67 = *(v65 + 1);
      __dst = v65;
      v87 = (v91 + 8 * *v65);

      specialized _merge<A>(low:mid:high:buffer:by:)((v91 + 8 * v66), v87, (v91 + 8 * v67), v92, v3);
      if (v2)
      {
        v71 = v97;
        goto LABEL_95;
      }

      if (v67 < v66)
      {
        BUG();
      }

      v68 = &v100[v64];
      v69 = *(v97 + 2);
      if (v80 > v69)
      {
        BUG();
      }

      *v68 = v66;
      *(v68 + 1) = v67;
      if (v80 >= v69)
      {
        BUG();
      }

      v38 = v69 - 1;
      memmove(__dst, __dst + 16, 16 * (v69 - 1 - v80));
      v41 = v100;
      v9 = v97;
      *(v97 + 2) = v69 - 1;
      v27 = v69 <= 2;
      v3 = a2;
      v10 = v90;
      if (v27)
      {
        goto LABEL_91;
      }
    }
  }

  v9 = _swiftEmptyArrayStorage;
  v92 = &_swiftEmptyArrayStorage[4];
  v38 = _swiftEmptyArrayStorage[2];
  v93 = _swiftEmptyArrayStorage;
LABEL_98:
  if (v38 < 2)
  {
LABEL_110:
    v9;
    v8 = v93;
    v93[2] = 0;
    v3;
    goto LABEL_111;
  }

  v72 = *a1;
  v89 = *a1;
  while (1)
  {
    if (!v72)
    {
      swift_bridgeObjectRelease_n(v3, 3);
      BUG();
    }

    v73 = 16 * (v38 - 1);
    v98 = v9;
    v74 = *&v9[v73 + 40];
    v95 = *&v9[16 * v38];
    v101 = (v72 + 8 * v95);
    __src = (v72 + 8 * *&v9[v73 + 32]);
    v88 = (v72 + 8 * v74);

    specialized _merge<A>(low:mid:high:buffer:by:)(v101, __src, v88, v92, a2);
    if (v2)
    {
      break;
    }

    if (v74 < v95)
    {
      BUG();
    }

    v102 = v74;
    if (swift_isUniquelyReferenced_nonNull_native(v98))
    {
      v75 = v98;
    }

    else
    {
      v75 = specialized _ArrayBuffer._consumeAndCreateNew()(v98);
    }

    v76 = *(v75 + 2);
    if (v38 - 2 >= v76)
    {
      BUG();
    }

    *&v75[16 * v38] = v95;
    *&v75[16 * v38 + 8] = v102;
    v77 = v76 - v38;
    if (v76 < v38)
    {
      BUG();
    }

    v38 = v76 - 1;
    v78 = v75;
    memmove(&v75[v73 + 32], &v75[v73 + 48], 16 * v77);
    v9 = v78;
    *(v78 + 2) = v76 - 1;
    v27 = v76 <= 2;
    v3 = a2;
    v72 = v89;
    if (v27)
    {
      goto LABEL_110;
    }
  }

  v71 = v98;
  v3 = a2;
LABEL_95:
  v71;
  v8 = v93;
  v93[2] = 0;
  swift_bridgeObjectRelease_n(v3, 2);
LABEL_112:
  v8;
  return swift_bridgeObjectRelease_n(v3, 2);
}

{
  v3 = a2;
  v4 = a1[1];
  swift_bridgeObjectRetain_n(a2, 3);
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 >= v4)
  {
    if (v4 < 0)
    {
      BUG();
    }

    if (v4)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, a2);
      v8 = a2;
      goto LABEL_112;
    }

    v8 = a2;
LABEL_111:
    v3;
    goto LABEL_112;
  }

  if (v4 < -1)
  {
    BUG();
  }

  v85 = v4;
  v82 = v5;
  if (v4 > 1)
  {
    v6 = static Array._allocateBufferUninitialized(minimumCapacity:)(v4 / 2, &type metadata for Int);
    *(v6 + 16) = v4 / 2;
    v93 = v6;
    v7 = (v6 + 32);
    goto LABEL_10;
  }

  if (v4 == 1)
  {
    v93 = _swiftEmptyArrayStorage;
    v7 = &_swiftEmptyArrayStorage[4];
LABEL_10:
    v92 = v7;
    v94 = a2 + 4;
    v91 = *a1;
    v84 = *a1 - 8;
    v9 = _swiftEmptyArrayStorage;
    v10 = 0;
    v11 = v4;
    while (1)
    {
      v12 = v10;
      v13 = v10 + 1;
      v99 = v12;
      if (v13 >= v11)
      {
        v14 = v91;
      }

      else
      {
        v14 = v91;
        v15 = *(v91 + 8 * v12 + 8);
        if (v15 < 0)
        {
          BUG();
        }

        v16 = v3[2];
        if (v15 >= v16)
        {
          BUG();
        }

        v17 = *(v91 + 8 * v12);
        if (v17 >= v16)
        {
          BUG();
        }

        v18 = v94[4 * v15];
        v19 = v94[4 * v17];
        v13 = v12 + 2;
        if (v12 + 2 < v11)
        {
          v20 = v9;
          v21 = v94[4 * v15];
          while (1)
          {
            v22 = *(v91 + 8 * v13);
            if (v22 >= v16)
            {
              BUG();
            }

            if (v15 >= v16)
            {
              BUG();
            }

            v23 = v13;
            if (v18 < v19 == v94[4 * v22] >= v21)
            {
              break;
            }

            ++v13;
            v21 = v94[4 * v22];
            v15 = v22;
            if (v23 + 1 >= v11)
            {
              v13 = v11;
              v9 = v20;
              goto LABEL_24;
            }
          }

          v9 = v20;
LABEL_24:
          v12 = v99;
        }

        if (v18 < v19)
        {
          if (v13 < v12)
          {
            BUG();
          }

          if (v13 > v12)
          {
            v24 = v13 - 1;
            v25 = v12;
            do
            {
              if (v25 != v24)
              {
                if (!v91)
                {
                  swift_bridgeObjectRelease_n(v3, 3);
                  BUG();
                }

                v26 = *(v91 + 8 * v25);
                *(v91 + 8 * v25) = *(v91 + 8 * v24);
                *(v91 + 8 * v24) = v26;
              }

              v27 = ++v25 < v24--;
            }

            while (v27);
          }
        }
      }

      if (v13 < v11)
      {
        if (__OFSUB__(v13, v12))
        {
          BUG();
        }

        if (v13 - v12 < v82)
        {
          v28 = (v82 + v12);
          if (__OFADD__(v82, v12))
          {
            BUG();
          }

          if (v28 >= v11)
          {
            v28 = v11;
          }

          if (v28 < v12)
          {
            BUG();
          }

          if (v13 != v28)
          {
            v29 = v12;
            v30 = v84;
            v31 = v13;
            do
            {
              v32 = *(v14 + 8 * v31);
              v33 = v13;
              do
              {
                if (v32 < 0)
                {
                  BUG();
                }

                v34 = v3[2];
                if (v32 >= v34)
                {
                  BUG();
                }

                v35 = *(v30 + 8 * v13);
                if (v35 >= v34)
                {
                  BUG();
                }

                if (v94[4 * v32] >= v94[4 * v35])
                {
                  break;
                }

                if (!v14)
                {
                  swift_bridgeObjectRelease_n(v3, 3);
                  BUG();
                }

                *(v30 + 8 * v13 + 8) = v35;
                *(v30 + 8 * v13--) = v32;
              }

              while (v29 != v13);
              ++v31;
              v30 += 8;
              --v29;
              v13 = v33;
            }

            while (v31 != v28);
            v13 = v28;
            v12 = v99;
          }
        }
      }

      if (v13 < v12)
      {
        BUG();
      }

      v90 = v13;
      v36 = v9;
      if (swift_isUniquelyReferenced_nonNull_native(v9))
      {
        v9 = v36;
      }

      else
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
      }

      v37 = *(v9 + 2);
      v38 = v37 + 1;
      v10 = v90;
      v39 = v99;
      if (*(v9 + 3) >> 1 <= v37)
      {
        v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v9 + 3) >= 2uLL, v37 + 1, 1, v9);
        v39 = v99;
        v10 = v90;
        v9 = v70;
      }

      *(v9 + 2) = v38;
      v40 = 16 * v37;
      *&v9[v40 + 32] = v39;
      *&v9[v40 + 40] = v10;
      if (v37)
      {
        break;
      }

      v38 = 1;
      v3 = a2;
LABEL_91:
      v11 = v85;
      if (v10 >= v85)
      {
        goto LABEL_98;
      }
    }

    v41 = v9 + 32;
    v3 = a2;
    v97 = v9;
    v100 = v9 + 32;
    while (1)
    {
      v42 = v38 - 1;
      if (v38 >= 4)
      {
        v47 = 16 * v38;
        v48 = *&v41[16 * v38 - 56];
        v44 = __OFSUB__(v48, *&v41[16 * v38 - 64]);
        v49 = v48 - *&v41[16 * v38 - 64];
        if (v44)
        {
          BUG();
        }

        v50 = *&v41[v47 - 40];
        v44 = __OFSUB__(v50, *&v41[v47 - 48]);
        v45 = v50 - *&v41[v47 - 48];
        v46 = v44;
        if (v44)
        {
          BUG();
        }

        v51 = *&v9[v47 + 8];
        v44 = __OFSUB__(v51, *&v9[16 * v38]);
        v52 = v51 - *&v9[16 * v38];
        if (v44)
        {
          BUG();
        }

        v44 = __OFADD__(v45, v52);
        v53 = v45 + v52;
        if (v44)
        {
          BUG();
        }

        if (v53 >= v49)
        {
          v62 = *&v41[16 * v42 + 8];
          v44 = __OFSUB__(v62, *&v41[16 * v42]);
          v63 = v62 - *&v41[16 * v42];
          if (v44)
          {
            BUG();
          }

          if (v45 < v63)
          {
LABEL_81:
            v42 = v38 - 2;
            goto LABEL_82;
          }

          goto LABEL_82;
        }
      }

      else
      {
        if (v38 != 3)
        {
          if (v38 < 2)
          {
            BUG();
          }

          v59 = *&v9[16 * v38 + 8];
          v44 = __OFSUB__(v59, *&v9[16 * v38]);
          v55 = v59 - *&v9[16 * v38];
          v56 = v44;
LABEL_75:
          if (v56)
          {
            BUG();
          }

          v60 = *&v41[16 * v42 + 8];
          v44 = __OFSUB__(v60, *&v41[16 * v42]);
          v61 = v60 - *&v41[16 * v42];
          if (v44)
          {
            BUG();
          }

          if (v61 < v55)
          {
            goto LABEL_91;
          }

          goto LABEL_82;
        }

        v43 = *(v9 + 5);
        v44 = __OFSUB__(v43, *(v9 + 4));
        v45 = v43 - *(v9 + 4);
        v46 = v44;
      }

      if (v46)
      {
        BUG();
      }

      v54 = *&v9[16 * v38 + 8];
      v44 = __OFSUB__(v54, *&v9[16 * v38]);
      v55 = v54 - *&v9[16 * v38];
      v56 = v44;
      if (v44)
      {
        BUG();
      }

      v57 = *&v41[16 * v42 + 8];
      v44 = __OFSUB__(v57, *&v41[16 * v42]);
      v58 = v57 - *&v41[16 * v42];
      if (v44)
      {
        BUG();
      }

      if (__OFADD__(v58, v55))
      {
        BUG();
      }

      if (v58 + v55 < v45)
      {
        goto LABEL_75;
      }

      if (v45 < v58)
      {
        goto LABEL_81;
      }

LABEL_82:
      if (v42 - 1 >= v38)
      {
        BUG();
      }

      if (!v91)
      {
        swift_bridgeObjectRelease_n(v3, 3);
        BUG();
      }

      v64 = 16 * (v42 - 1);
      v80 = v42;
      v65 = &v41[16 * v42];
      v66 = *&v41[v64];
      v67 = *(v65 + 1);
      __dst = v65;
      v87 = (v91 + 8 * *v65);

      specialized _merge<A>(low:mid:high:buffer:by:)((v91 + 8 * v66), v87, (v91 + 8 * v67), v92, v3);
      if (v2)
      {
        v71 = v97;
        goto LABEL_95;
      }

      if (v67 < v66)
      {
        BUG();
      }

      v68 = &v100[v64];
      v69 = *(v97 + 2);
      if (v80 > v69)
      {
        BUG();
      }

      *v68 = v66;
      *(v68 + 1) = v67;
      if (v80 >= v69)
      {
        BUG();
      }

      v38 = v69 - 1;
      memmove(__dst, __dst + 16, 16 * (v69 - 1 - v80));
      v41 = v100;
      v9 = v97;
      *(v97 + 2) = v69 - 1;
      v27 = v69 <= 2;
      v3 = a2;
      v10 = v90;
      if (v27)
      {
        goto LABEL_91;
      }
    }
  }

  v9 = _swiftEmptyArrayStorage;
  v92 = &_swiftEmptyArrayStorage[4];
  v38 = _swiftEmptyArrayStorage[2];
  v93 = _swiftEmptyArrayStorage;
LABEL_98:
  if (v38 < 2)
  {
LABEL_110:
    v9;
    v8 = v93;
    v93[2] = 0;
    v3;
    goto LABEL_111;
  }

  v72 = *a1;
  v89 = *a1;
  while (1)
  {
    if (!v72)
    {
      swift_bridgeObjectRelease_n(v3, 3);
      BUG();
    }

    v73 = 16 * (v38 - 1);
    v98 = v9;
    v74 = *&v9[v73 + 40];
    v95 = *&v9[16 * v38];
    v101 = (v72 + 8 * v95);
    __src = (v72 + 8 * *&v9[v73 + 32]);
    v88 = (v72 + 8 * v74);

    specialized _merge<A>(low:mid:high:buffer:by:)(v101, __src, v88, v92, a2);
    if (v2)
    {
      break;
    }

    if (v74 < v95)
    {
      BUG();
    }

    v102 = v74;
    if (swift_isUniquelyReferenced_nonNull_native(v98))
    {
      v75 = v98;
    }

    else
    {
      v75 = specialized _ArrayBuffer._consumeAndCreateNew()(v98);
    }

    v76 = *(v75 + 2);
    if (v38 - 2 >= v76)
    {
      BUG();
    }

    *&v75[16 * v38] = v95;
    *&v75[16 * v38 + 8] = v102;
    v77 = v76 - v38;
    if (v76 < v38)
    {
      BUG();
    }

    v38 = v76 - 1;
    v78 = v75;
    memmove(&v75[v73 + 32], &v75[v73 + 48], 16 * v77);
    v9 = v78;
    *(v78 + 2) = v76 - 1;
    v27 = v76 <= 2;
    v3 = a2;
    v72 = v89;
    if (v27)
    {
      goto LABEL_110;
    }
  }

  v71 = v98;
  v3 = a2;
LABEL_95:
  v71;
  v8 = v93;
  v93[2] = 0;
  swift_bridgeObjectRelease_n(v3, 2);
LABEL_112:
  v8;
  return swift_bridgeObjectRelease_n(v3, 2);
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v5 = *a4;
    v6 = *a4 - 8;
    v7 = a3;
    do
    {
      v8 = *(v5 + 8 * v7);
      v9 = a3;
      do
      {
        if (v8 < 0)
        {
          BUG();
        }

        v10 = *(a5 + 16);
        if (v8 >= v10)
        {
          BUG();
        }

        v11 = *(v6 + 8 * v9);
        if (v11 >= v10)
        {
          BUG();
        }

        if (*(a5 + 32 + 16 * v8) >= *(a5 + 32 + 16 * v11))
        {
          break;
        }

        if (!v5)
        {
          BUG();
        }

        *(v6 + 8 * v9 + 8) = v11;
        *(v6 + 8 * v9--) = v8;
      }

      while (a1 != v9);
      ++v7;
      v6 += 8;
      --a1;
    }

    while (v7 != a2);
  }

  return a5;
}

{
  if (a3 != a2)
  {
    v5 = *a4;
    v6 = *a4 - 8;
    v7 = a3;
    do
    {
      v8 = *(v5 + 8 * v7);
      v9 = a3;
      do
      {
        if (v8 < 0)
        {
          BUG();
        }

        v10 = *(a5 + 16);
        if (v8 >= v10)
        {
          BUG();
        }

        v11 = *(v6 + 8 * v9);
        if (v11 >= v10)
        {
          BUG();
        }

        if (*(a5 + 32 + 32 * v8) >= *(a5 + 32 + 32 * v11))
        {
          break;
        }

        if (!v5)
        {
          BUG();
        }

        *(v6 + 8 * v9 + 8) = v11;
        *(v6 + 8 * v9--) = v8;
      }

      while (a1 != v9);
      ++v7;
      v6 += 8;
      --a1;
    }

    while (v7 != a2);
  }

  return a5;
}

char specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, char *a2, unint64_t *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = (a3 - v7);
  v11 = (a3 - v7) / 8;
  if (v9 / 8 < v11)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v8, (v9 / 8), a4);
    v12 = &v5[8 * (v9 / 8)];
    if (v9 >= 8 && v7 < v6)
    {
      v13 = a5;
      while (1)
      {
        v14 = *v7;
        if (*v7 < 0)
        {
          BUG();
        }

        v15 = *(a5 + 16);
        if (v14 >= v15)
        {
          BUG();
        }

        if (*v5 >= v15)
        {
          BUG();
        }

        if (*(a5 + 32 + 16 * v14) >= *(a5 + 32 + 16 * *v5))
        {
          break;
        }

        v16 = v8 == v7;
        v7 += 8;
        if (!v16)
        {
          goto LABEL_11;
        }

LABEL_12:
        v8 += 8;
        if (v5 >= v12 || v7 >= v6)
        {
          v7 = v8;
          goto LABEL_30;
        }
      }

      v14 = *v5;
      v16 = v8 == v5;
      v5 += 8;
      if (v16)
      {
        goto LABEL_12;
      }

LABEL_11:
      *v8 = v14;
      goto LABEL_12;
    }

    v7 = v8;
LABEL_29:
    v13 = a5;
    goto LABEL_30;
  }

  v22 = (a3 - v7) / 8;
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v7, v11, a4);
  v12 = &v5[8 * v22];
  if (v10 < 8 || v8 >= v7)
  {
    goto LABEL_29;
  }

  v13 = a5;
  do
  {
    v17 = *(v12 - 1);
    if (v17 < 0)
    {
      BUG();
    }

    v18 = *(a5 + 16);
    if (v17 >= v18)
    {
      BUG();
    }

    v19 = *(v7 - 1);
    if (v19 >= v18)
    {
      BUG();
    }

    if (*(a5 + 32 + 16 * v17) < *(a5 + 32 + 16 * v19))
    {
      v16 = v6 == v7;
      v7 -= 8;
      if (v16)
      {
        goto LABEL_25;
      }

LABEL_24:
      *(v6 - 1) = v19;
      goto LABEL_25;
    }

    v19 = *(v12 - 1);
    v16 = v6 == v12;
    v12 -= 8;
    if (!v16)
    {
      goto LABEL_24;
    }

LABEL_25:
    if (v7 <= v8)
    {
      break;
    }

    --v6;
  }

  while (v12 > v5);
LABEL_30:
  v20 = (v12 - v5) / 8;
  if (v7 != v5 || v7 >= &v5[8 * v20])
  {
    memmove(v7, v5, 8 * v20);
    v13 = a5;
  }

  v13;
  return 1;
}

{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = (a3 - v7);
  v11 = (a3 - v7) / 8;
  if (v9 / 8 < v11)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v8, (v9 / 8), a4);
    v12 = &v5[8 * (v9 / 8)];
    if (v9 >= 8 && v7 < v6)
    {
      v13 = a5;
      while (1)
      {
        v14 = *v7;
        if (*v7 < 0)
        {
          BUG();
        }

        v15 = *(a5 + 16);
        if (v14 >= v15)
        {
          BUG();
        }

        if (*v5 >= v15)
        {
          BUG();
        }

        if (*(a5 + 32 + 32 * v14) >= *(a5 + 32 + 32 * *v5))
        {
          break;
        }

        v16 = v8 == v7;
        v7 += 8;
        if (!v16)
        {
          goto LABEL_11;
        }

LABEL_12:
        v8 += 8;
        if (v5 >= v12 || v7 >= v6)
        {
          v7 = v8;
          goto LABEL_30;
        }
      }

      v14 = *v5;
      v16 = v8 == v5;
      v5 += 8;
      if (v16)
      {
        goto LABEL_12;
      }

LABEL_11:
      *v8 = v14;
      goto LABEL_12;
    }

    v7 = v8;
LABEL_29:
    v13 = a5;
    goto LABEL_30;
  }

  v22 = (a3 - v7) / 8;
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v7, v11, a4);
  v12 = &v5[8 * v22];
  if (v10 < 8 || v8 >= v7)
  {
    goto LABEL_29;
  }

  v13 = a5;
  do
  {
    v17 = *(v12 - 1);
    if (v17 < 0)
    {
      BUG();
    }

    v18 = *(a5 + 16);
    if (v17 >= v18)
    {
      BUG();
    }

    v19 = *(v7 - 1);
    if (v19 >= v18)
    {
      BUG();
    }

    if (*(a5 + 32 + 32 * v17) < *(a5 + 32 + 32 * v19))
    {
      v16 = v6 == v7;
      v7 -= 8;
      if (v16)
      {
        goto LABEL_25;
      }

LABEL_24:
      *(v6 - 1) = v19;
      goto LABEL_25;
    }

    v19 = *(v12 - 1);
    v16 = v6 == v12;
    v12 -= 8;
    if (!v16)
    {
      goto LABEL_24;
    }

LABEL_25:
    if (v7 <= v8)
    {
      break;
    }

    --v6;
  }

  while (v12 > v5);
LABEL_30:
  v20 = (v12 - v5) / 8;
  if (v7 != v5 || v7 >= &v5[8 * v20])
  {
    memmove(v7, v5, 8 * v20);
    v13 = a5;
  }

  v13;
  return 1;
}

char specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *a2, char *a3, char *a4)
{
  v4 = a3;
  v5 = a2;
  v6 = __dst;
  v7 = a2 - __dst;
  v8 = v7 / 16;
  v9 = (a3 - a2) / 16;
  if (v7 / 16 >= v9)
  {
    v19 = a3 - a2;
    v14 = (a3 - a2) / 16;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v9, a4);
    v10 = a4;
    v11 = &a4[16 * v14];
    if (v19 < 16 || v6 >= v5)
    {
      goto LABEL_19;
    }

    while (*(v11 - 2) < *(v5 - 2))
    {
      v15 = v5 - 16;
      v13 = v4 == v5;
      v5 -= 16;
      if (!v13)
      {
        goto LABEL_16;
      }

LABEL_17:
      if (v5 > v6)
      {
        v4 -= 16;
        if (v11 > a4)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    v15 = v11 - 16;
    v13 = v4 == v11;
    v11 -= 16;
    if (v13)
    {
      goto LABEL_17;
    }

LABEL_16:
    *(v4 - 1) = *v15;
    goto LABEL_17;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v6, v8, a4);
  v10 = a4;
  v11 = &a4[16 * v8];
  if (v7 >= 16 && v5 < v4)
  {
    while (*v5 < *v10)
    {
      v12 = v5;
      v13 = v6 == v5;
      v5 += 16;
      if (!v13)
      {
        goto LABEL_7;
      }

LABEL_8:
      v6 += 16;
      if (v10 >= v11 || v5 >= v4)
      {
        goto LABEL_10;
      }
    }

    v12 = v10;
    v13 = v6 == v10;
    v10 += 16;
    if (v13)
    {
      goto LABEL_8;
    }

LABEL_7:
    *v6 = *v12;
    goto LABEL_8;
  }

LABEL_10:
  v5 = v6;
LABEL_19:
  v16 = v11 - v10;
  if (v5 != v10 || v5 >= &v10[16 * (v16 / 16)])
  {
    memmove(v5, v10, 16 * (v16 / 16));
  }

  return 1;
}

char specialized _merge<A>(low:mid:high:buffer:by:)(double *__dst, double *a2, double *a3, double *a4)
{
  v4 = a3;
  v5 = a2;
  v6 = __dst;
  v7 = a2 - __dst;
  v8 = v7 / 16;
  v9 = (a3 - a2) / 16;
  if (v7 / 16 >= v9)
  {
    v19 = a3 - a2;
    v14 = (a3 - a2) / 16;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v9, a4);
    v10 = a4;
    v11 = &a4[2 * v14];
    if (v19 < 16 || v6 >= v5)
    {
      goto LABEL_19;
    }

    while (*(v11 - 1) > *(v5 - 1))
    {
      v15 = v5 - 2;
      v13 = v4 == v5;
      v5 -= 2;
      if (!v13)
      {
        goto LABEL_16;
      }

LABEL_17:
      if (v5 > v6)
      {
        v4 -= 2;
        if (v11 > a4)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    v15 = v11 - 2;
    v13 = v4 == v11;
    v11 -= 2;
    if (v13)
    {
      goto LABEL_17;
    }

LABEL_16:
    *(v4 - 1) = *v15;
    goto LABEL_17;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v6, v8, a4);
  v10 = a4;
  v11 = &a4[2 * v8];
  if (v7 >= 16 && v5 < v4)
  {
    while (v5[1] > v10[1])
    {
      v12 = v5;
      v13 = v6 == v5;
      v5 += 2;
      if (!v13)
      {
        goto LABEL_7;
      }

LABEL_8:
      v6 += 16;
      if (v10 >= v11 || v5 >= v4)
      {
        goto LABEL_10;
      }
    }

    v12 = v10;
    v13 = v6 == v10;
    v10 += 2;
    if (v13)
    {
      goto LABEL_8;
    }

LABEL_7:
    *v6 = *v12;
    goto LABEL_8;
  }

LABEL_10:
  v5 = v6;
LABEL_19:
  v16 = v11 - v10;
  if (v5 != v10 || v5 >= &v10[2 * (v16 / 16)])
  {
    memmove(v5, v10, 16 * (v16 / 16));
  }

  return 1;
}

char specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a2;
  v5 = a1;
  v6 = a2 - a1;
  v7 = a3 - a2;
  v8 = (a3 - a2) / 24;
  if ((a2 - a1) / 24 >= v8)
  {
    v23 = (a3 - a2) / 24;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v8, a4);
    v10 = a4;
    v11 = &a4[24 * v23];
    if (v7 < 24 || v5 >= a2)
    {
      goto LABEL_37;
    }

    v24 = a3;
    while (1)
    {
      v25 = v24 - 24;
      v26 = *(v11 - 3);
      v27 = *(v4 - 3);
      v28 = *(v4 - 8);
      if (*(v11 - 8))
      {
        if (((v26 < v27) & v28) != 0)
        {
          goto LABEL_25;
        }
      }

      else if (v28 & 1) != 0 || ((v31 = *(v11 - 2), v32 = *(v4 - 2), v26 != v27) || v31 != v32) && (v40 = v24 - 24, v42 = v24, v38 = *(v4 - 2), v33 = _stringCompareWithSmolCheck(_:_:expecting:)(v26, v31, v27, v32, 0), v25 = v40, v24 = v42, v10 = a4, (v33 & 1) == 0) && (v34 = _stringCompareWithSmolCheck(_:_:expecting:)(v26, v31, v27, v38, 1), v25 = v40, v24 = v42, v10 = a4, (v34))
      {
LABEL_25:
        v29 = v4 - 24;
        v17 = v24 == v4;
        v4 -= 24;
        if (v17)
        {
          goto LABEL_27;
        }

LABEL_26:
        v30 = *v29;
        *(v25 + 2) = *(v29 + 2);
        *v25 = v30;
        goto LABEL_27;
      }

      v29 = v11 - 24;
      v17 = v24 == v11;
      v11 -= 24;
      if (!v17)
      {
        goto LABEL_26;
      }

LABEL_27:
      if (v4 > v5)
      {
        v24 = v25;
        if (v11 > v10)
        {
          continue;
        }
      }

      goto LABEL_37;
    }
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, v6 / 24, a4);
  v10 = a4;
  v11 = &a4[24 * (v6 / 24)];
  if (v6 >= 24 && a2 < a3)
  {
    v12 = a3;
    v45 = &a4[24 * (v6 / 24)];
    do
    {
      v13 = *v4;
      v14 = *v10;
      v15 = v10[16];
      if (v4[16])
      {
        if (((v13 < v14) & v15) != 0)
        {
          goto LABEL_8;
        }
      }

      else if (v15 & 1) != 0 || ((v19 = *(v4 + 1), v20 = *(v10 + 1), v13 != v14) || v19 != v20) && (v39 = *(v4 + 1), v37 = *(v10 + 1), __srca = v10, v21 = _stringCompareWithSmolCheck(_:_:expecting:)(*v4, v19, v14, v20, 0), v12 = a3, v11 = v45, v10 = __srca, (v21 & 1) == 0) && (v22 = _stringCompareWithSmolCheck(_:_:expecting:)(v13, v39, v14, v37, 1), v12 = a3, v11 = v45, v10 = __srca, (v22))
      {
LABEL_8:
        v16 = v4;
        v17 = v5 == v4;
        v4 += 24;
        if (v17)
        {
          goto LABEL_10;
        }

LABEL_9:
        v18 = *v16;
        *(v5 + 2) = *(v16 + 2);
        *v5 = v18;
        goto LABEL_10;
      }

      v16 = v10;
      v17 = v5 == v10;
      v10 += 24;
      if (!v17)
      {
        goto LABEL_9;
      }

LABEL_10:
      v5 += 24;
    }

    while (v10 < v11 && v4 < v12);
  }

  v4 = v5;
LABEL_37:
  v35 = (v11 - v10) % 24;
  if (v4 != v10 || v4 >= &v11[-v35])
  {
    memmove(v4, v10, v11 - v10 - v35);
  }

  return 1;
}