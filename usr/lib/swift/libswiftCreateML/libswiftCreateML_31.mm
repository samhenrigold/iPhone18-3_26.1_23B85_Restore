uint64_t closure #1 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc(432);
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #1 in MLRandomForestRegressor.init(checkpoint:);
  return MLSupportVectorClassifier.Model.exportAsCoreMLModel()();
}

uint64_t closure #2 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v5 = type metadata accessor for AnyClassificationMetrics(0);
  v6 = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[3] = v6;
  v7 = swift_task_alloc(96);
  v3[4] = v7;
  *v7 = v3;
  v7[1] = closure #2 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:);
  return MLSupportVectorClassifier.Model.computeMetrics(on:)(v6, a3);
}

uint64_t closure #2 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)()
{
  v2 = *(*v1 + 32);
  *(*v1 + 40) = v0;
  v2;
  if (v0)
  {
    v3 = closure #2 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:);
  }

  else
  {
    v3 = closure #2 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  outlined init with take of MLClassifierMetrics(v2, v1, type metadata accessor for AnyClassificationMetrics);
  v3 = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload(v1, v3, 0);
  v2;
  return (*(v0 + 8))();
}

{
  *(v0 + 24);
  return (*(v0 + 8))();
}

uint64_t closure #3 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v5 = type metadata accessor for AnyClassificationMetrics(0);
  v6 = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[3] = v6;
  v7 = swift_task_alloc(96);
  v3[4] = v7;
  *v7 = v3;
  v7[1] = closure #3 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:);
  return MLSupportVectorClassifier.Model.computeMetrics(on:)(v6, a3);
}

uint64_t closure #3 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)()
{
  v2 = *(*v1 + 32);
  *(*v1 + 40) = v0;
  v2;
  if (v0)
  {
    v3 = closure #3 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:);
  }

  else
  {
    v3 = closure #3 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  return closure #2 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)();
}

{
  return closure #2 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)();
}

uint64_t MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a3;
  v15 = a2;
  v6 = *(*(type metadata accessor for DataFrame(0) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = *(a1 + 8);
  v11 = *a1;
  v12 = v9;
  DataFrame.init(_:)(&v11);
  outlined init with copy of MLSupportVectorClassifier.ModelParameters(a5, &v11);
  MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(&v11, v15, v14, v13, &v11);
  return outlined destroy of MLSupportVectorClassifier.ModelParameters(a5);
}

uint64_t closure #1 in MLSupportVectorClassifier.predictions(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a2;
  v3[2] = a1;
  return swift_task_switch(closure #1 in MLSupportVectorClassifier.predictions(from:), 0, 0);
}

uint64_t closure #1 in MLSupportVectorClassifier.predictions(from:)()
{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for MLSupportVectorClassifier(0);
  DataFrame.validateContainsColumns(_:context:)(*(v1 + *(v2 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
  if (v3)
  {
    return (*(v0 + 8))();
  }

  v5 = swift_task_alloc(80);
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLSupportVectorClassifier.predictions(from:);
  return MLSupportVectorClassifier.Model.predictions(from:)(*(v0 + 16), *(v0 + 24));
}

{
  v1 = *(*v0 + 40);
  v2 = *v0;
  v1;
  return (*(v2 + 8))();
}

uint64_t closure #1 in MLSupportVectorClassifier.predictions(from:)partial apply(uint64_t a1)
{
  v3 = *(type metadata accessor for DataFrame(0) - 8);
  v4 = ~*(v3 + 80) & (*(v3 + 80) + 16);
  v5 = v4 + *(v3 + 64);
  v6 = *(*(type metadata accessor for MLSupportVectorClassifier(0) - 8) + 80);
  v7 = swift_task_alloc(48);
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLSupportVectorClassifier.predictions(from:)(a1, v1 + v4, v1 + ((v6 + v5) & ~v6));
}

uint64_t closure #1 in MLSupportVectorClassifier.evaluation(on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a3;
  v3[9] = a2;
  v3[8] = a1;
  v4 = type metadata accessor for AnyClassificationMetrics(0);
  v3[11] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in MLSupportVectorClassifier.evaluation(on:), 0, 0);
}

uint64_t closure #1 in MLSupportVectorClassifier.evaluation(on:)()
{
  v1 = *(v0 + 80);
  v2 = type metadata accessor for MLSupportVectorClassifier(0);
  DataFrame.validateContainsColumns(_:context:)(*(v1 + *(v2 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
  if (v3 || (v4 = *(v0 + 80), v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>), inited = swift_initStackObject(v5, v0 + 16), inited[2] = 1, inited[3] = 2, v7 = *(v2 + 24), v8 = *(v4 + v7 + 8), inited[4] = *(v4 + v7), inited[5] = v8, , DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xE500000000000000, 0x6C6562614CLL)), swift_setDeallocating(inited), specialized _ContiguousArrayStorage.__deallocating_deinit(), v3))
  {
    v9 = *(v0 + 64);
    *v9 = v3;
    v10 = type metadata accessor for MLClassifierMetrics.Contents(0);
    swift_storeEnumTagMultiPayload(v9, v10, 2);
    *(v0 + 88);
    return (*(v0 + 8))();
  }

  else
  {
    v12 = swift_task_alloc(96);
    *(v0 + 96) = v12;
    *v12 = v0;
    v12[1] = closure #1 in MLSupportVectorClassifier.evaluation(on:);
    return MLSupportVectorClassifier.Model.computeMetrics(on:)(*(v0 + 88), *(v0 + 72));
  }
}

{
  v2 = *(*v1 + 96);
  *(*v1 + 104) = v0;
  v2;
  if (v0)
  {
    v3 = closure #1 in MLSupportVectorClassifier.evaluation(on:);
  }

  else
  {
    v3 = closure #1 in MLSupportVectorClassifier.evaluation(on:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 64);
  outlined init with take of MLClassifierMetrics(*(v0 + 88), v1, type metadata accessor for AnyClassificationMetrics);
  v2 = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload(v1, v2, 0);
  *(v0 + 88);
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 64);
  *v1 = *(v0 + 104);
  v2 = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload(v1, v2, 2);
  *(v0 + 88);
  return (*(v0 + 8))();
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for DataFrame(0);
  v2 = *(v1 - 8);
  v30 = *(v2 + 80);
  v3 = ~*(v2 + 80) & (v30 + 16);
  v4 = v3 + *(v2 + 64);
  v5 = type metadata accessor for MLSupportVectorClassifier(0);
  v6 = *(v5 - 8);
  v31 = *(v6 + 80);
  v7 = ~v31 & (v31 + v4);
  v32 = *(v6 + 64);
  v35 = v1;
  v8 = v1;
  v9 = v5;
  v34 = *(v2 + 8);
  v34(v0 + v3, v8);
  v10 = v7 + v0;
  *(v0 + v7 + 8);
  *(v0 + v7 + 16);
  v29 = v0;
  *(v0 + v7 + 32);
  v11 = v7 + v0 + *(type metadata accessor for MLSupportVectorClassifier.Model(0) + 24);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
  v13 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
  if (swift_getEnumCaseMultiPayload(v11, v12) == 1)
  {
    v13 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledName(v13);
  (*(*(v14 - 8) + 8))(v11, v14);

  *(v9[6] + v10 + 8);
  *(v9[7] + v10);
  v15 = v9[8];
  if (*(v15 + v10 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v10 + v15 + 8));
  }

  v16 = (v10 + v9[9]);
  v17 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v16, v17);
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *v16;
      break;
    case 1:
      v33 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v34(v16 + *(v33 + 20), v35);
      v34(v16 + *(v33 + 24), v35);
      break;
    case 0:
      v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v16, v19) == 1)
      {
        v20 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v20 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v21 = __swift_instantiateConcreteTypeFromMangledName(v20);
      (*(*(v21 - 8) + 8))(v16, v21);
      break;
  }

  v22 = (v9[10] + v10);
  v23 = swift_getEnumCaseMultiPayload(v22, v17);
  switch(v23)
  {
    case 2:
      *v22;
      break;
    case 1:
      v26 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v34(v22 + *(v26 + 20), v35);
      v34(v22 + *(v26 + 24), v35);
      break;
    case 0:
      v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v22, v24) == 1)
      {
        v25 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v25 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v27 = __swift_instantiateConcreteTypeFromMangledName(v25);
      (*(*(v27 - 8) + 8))(v22, v27);
      break;
  }

  return swift_deallocObject(v29, v32 + v7, v31 | v30 | 7);
}

uint64_t partial apply for closure #1 in MLSupportVectorClassifier.evaluation(on:)(uint64_t a1)
{
  v3 = *(type metadata accessor for DataFrame(0) - 8);
  v4 = ~*(v3 + 80) & (*(v3 + 80) + 16);
  v5 = v4 + *(v3 + 64);
  v6 = *(*(type metadata accessor for MLSupportVectorClassifier(0) - 8) + 80);
  v7 = swift_task_alloc(112);
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLSupportVectorClassifier.evaluation(on:)(a1, v1 + v4, v1 + ((v6 + v5) & ~v6));
}

uint64_t sub_21B429()
{
  v1 = type metadata accessor for MLSupportVectorClassifier.Model(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = ~*(v2 + 80) & (v3 + 16);
  v5 = v4 + *(v2 + 64);
  *(v0 + v4 + 8);
  *(v0 + v4 + 16);
  *(v0 + v4 + 32);
  v6 = v4 + v0 + *(v1 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
  v8 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
  if (swift_getEnumCaseMultiPayload(v6, v7) == 1)
  {
    v8 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledName(v8);
  (*(*(v9 - 8) + 8))(v6, v9);
  return swift_deallocObject(v0, v5, v3 | 7);
}

uint64_t partial apply for closure #1 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  type metadata accessor for MLSupportVectorClassifier.Model(0);
  v2 = swift_task_alloc(48);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(a1);
}

uint64_t sub_21B55B()
{
  v1 = v0;
  v2 = type metadata accessor for MLSupportVectorClassifier.Model(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = ~*(v3 + 80) & (v4 + 16);
  v6 = v5 + *(v3 + 64);
  v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v7 = *(v19 - 8);
  v17 = *(v7 + 80);
  v8 = ~v17 & (v17 + v6);
  v18 = *(v7 + 64);
  *(v1 + v5 + 8);
  *(v1 + v5 + 16);
  *(v1 + v5 + 32);
  v9 = v5 + v1 + *(v2 + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
  v11 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
  if (swift_getEnumCaseMultiPayload(v9, v10) == 1)
  {
    v11 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledName(v11);
  (*(*(v12 - 8) + 8))(v9, v12);
  v16 = v1;
  v13 = type metadata accessor for DataFrame(0);
  v20 = *(*(v13 - 8) + 8);
  v20(v1 + v8, v13);
  v14 = v1 + v8 + *(v19 + 48);
  if (!__swift_getEnumTagSinglePayload(v14, 1, v13))
  {
    v20(v14, v13);
  }

  return swift_deallocObject(v16, v18 + v8, v17 | v4 | 7);
}

uint64_t outlined init with take of (training: DataFrame, validation: DataFrame?)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t partial apply for closure #2 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  v3 = *(type metadata accessor for MLSupportVectorClassifier.Model(0) - 8);
  v4 = ~*(v3 + 80) & (*(v3 + 80) + 16);
  v5 = v4 + *(v3 + 64);
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?)) - 8) + 80);
  v7 = swift_task_alloc(48);
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #2 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(a1, v1 + v4, v1 + ((v6 + v5) & ~v6));
}

uint64_t sub_21B78E()
{
  v16 = type metadata accessor for MLSupportVectorClassifier.Model(0);
  v1 = *(v16 - 8);
  v2 = *(v1 + 80);
  v3 = ~*(v1 + 80) & (v2 + 16);
  v4 = v3 + *(v1 + 64);
  v12 = type metadata accessor for DataFrame(0);
  v5 = *(v12 - 8);
  v15 = *(v5 + 80);
  v14 = v5;
  v6 = (v15 + v4) & ~v15;
  v13 = v6 + *(v5 + 64);
  *(v0 + v3 + 8);
  *(v0 + v3 + 16);
  *(v0 + v3 + 32);
  v7 = v3 + v0 + *(v16 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
  v9 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
  if (swift_getEnumCaseMultiPayload(v7, v8) == 1)
  {
    v9 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledName(v9);
  (*(*(v10 - 8) + 8))(v7, v10);
  (*(v14 + 8))(v0 + v6, v12);
  return swift_deallocObject(v0, v13, v15 | v2 | 7);
}

uint64_t partial apply for closure #3 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  v3 = *(type metadata accessor for MLSupportVectorClassifier.Model(0) - 8);
  v4 = ~*(v3 + 80) & (*(v3 + 80) + 16);
  v5 = v4 + *(v3 + 64);
  v6 = *(*(type metadata accessor for DataFrame(0) - 8) + 80);
  v7 = swift_task_alloc(48);
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #3 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(a1, v1 + v4, v1 + ((v6 + v5) & ~v6));
}

void *initializeBufferWithCopyOfBuffer for MLSupportVectorClassifier(void *a1, void *a2, int *a3)
{
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) == 0)
  {
    *a1 = *a2;
    a1[1] = a2[1];
    a1[2] = a2[2];
    a1[3] = a2[3];
    a1[4] = a2[4];
    v5 = *(type metadata accessor for MLSupportVectorClassifier.Model(0) + 24);
    v61 = a1 + v5;
    v6 = a2 + v5;

    v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v6, v67);
    v8 = EnumCaseMultiPayload == 1;
    v9 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
    if (EnumCaseMultiPayload == 1)
    {
      v9 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
    }

    v10 = __swift_instantiateConcreteTypeFromMangledName(v9);
    (*(*(v10 - 8) + 16))(v61, v6, v10);
    swift_storeEnumTagMultiPayload(v61, v67, v8);
    v11 = a3[5];
    v12 = *(a2 + v11);
    *(a1 + v11) = v12;
    v13 = a3[6];
    *(a1 + v13) = *(a2 + v13);
    *(a1 + v13 + 8) = *(a2 + v13 + 8);
    *(a1 + a3[7]) = *(a2 + a3[7]);
    v14 = a3[8];
    v64 = a1 + v14;
    v68 = a2 + v14;
    v15 = (a2 + v14 + 8);
    v58 = a1;
    v16 = (a1 + v14 + 8);
    *(v16 - 1) = *(a2 + v14);
    v17 = *(a2 + v14 + 32);
    v12;

    if (v17)
    {
      *(v64 + 4) = v17;
      (**(v17 - 8))(v16, v15, v17);
    }

    else
    {
      v20 = *v15;
      v16[1] = v15[1];
      *v16 = v20;
    }

    *(v64 + 40) = *(v68 + 40);
    v64[56] = v68[56];
    v21 = a3;
    v22 = a3[9];
    v19 = v58;
    v23 = (v58 + v22);
    v24 = (a2 + v22);
    v69 = type metadata accessor for MLClassifierMetrics.Contents(0);
    v25 = swift_getEnumCaseMultiPayload(v24, v69);
    if (v25 == 2)
    {
      v31 = v23;
      v32 = *v24;
      swift_errorRetain(*v24);
      *v31 = v32;
      v23 = v31;
      v25 = 2;
    }

    else if (v25 == 1)
    {
      *v23 = *v24;
      v56 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v26 = *(v56 + 20);
      v57 = v23 + v26;
      v27 = type metadata accessor for DataFrame(0);
      v65 = v23;
      v28 = *(*(v27 - 8) + 16);
      v29 = v24 + v26;
      v19 = v58;
      v28(v57, v29, v27);
      v30 = v27;
      v21 = a3;
      v28(v65 + *(v56 + 24), v24 + *(v56 + 24), v30);
      v23 = v65;
    }

    else
    {
      v66 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v33 = swift_getEnumCaseMultiPayload(v24, v66);
      v34 = v33 == 1;
      v35 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v33 == 1)
      {
        v35 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v36 = __swift_instantiateConcreteTypeFromMangledName(v35);
      (*(*(v36 - 8) + 16))(v23, v24, v36);
      swift_storeEnumTagMultiPayload(v23, v66, v34);
      v21 = a3;
    }

    swift_storeEnumTagMultiPayload(v23, v69, v25);
    v37 = v21[10];
    v38 = (v19 + v37);
    v39 = (a2 + v37);
    v40 = swift_getEnumCaseMultiPayload(a2 + v37, v69);
    if (v40 == 2)
    {
      v45 = *v39;
      swift_errorRetain(*v39);
      *v38 = v45;
      v55 = 2;
    }

    else
    {
      if (v40 != 1)
      {
        v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v50 = swift_getEnumCaseMultiPayload(v39, v49);
        v51 = v50 == 1;
        v52 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v50 == 1)
        {
          v52 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v53 = __swift_instantiateConcreteTypeFromMangledName(v52);
        (*(*(v53 - 8) + 16))(v38, v39, v53);
        swift_storeEnumTagMultiPayload(v38, v49, v51);
        v47 = v38;
        v48 = v69;
        v46 = 0;
        goto LABEL_23;
      }

      *v38 = *v39;
      v60 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v41 = *(v60 + 20);
      v63 = v38 + v41;
      v42 = type metadata accessor for DataFrame(0);
      v43 = *(*(v42 - 8) + 16);
      v44 = v39 + v41;
      v19 = v58;
      v43(v63, v44, v42);
      v43(v38 + *(v60 + 24), v39 + *(v60 + 24), v42);
      v55 = 1;
    }

    v46 = v55;
    v47 = v38;
    v48 = v69;
LABEL_23:
    swift_storeEnumTagMultiPayload(v47, v48, v46);
    return v19;
  }

  v18 = *a2;
  *a1 = *a2;
  v19 = (v18 + ((v4 + 16) & ~v4));

  return v19;
}

uint64_t destroy for MLSupportVectorClassifier(void *a1, int *a2)
{
  a1[1];
  a1[2];
  a1[4];
  v4 = a1 + *(type metadata accessor for MLSupportVectorClassifier.Model(0) + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
  v6 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
  if (swift_getEnumCaseMultiPayload(v4, v5) == 1)
  {
    v6 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledName(v6);
  (*(*(v7 - 8) + 8))(v4, v7);

  *(a1 + a2[6] + 8);
  *(a1 + a2[7]);
  v8 = a2[8];
  if (*(a1 + v8 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v8 + 8));
  }

  v9 = (a1 + a2[9]);
  v10 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v9, v10);
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *v9;
      break;
    case 1:
      v30 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v14 = v9 + *(v30 + 20);
      v29 = v10;
      v15 = type metadata accessor for DataFrame(0);
      v16 = v14;
      v17 = *(*(v15 - 8) + 8);
      v17(v16, v15);
      v18 = v15;
      v10 = v29;
      v17(v9 + *(v30 + 24), v18);
      break;
    case 0:
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v9, v12) == 1)
      {
        v13 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v13 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v19 = __swift_instantiateConcreteTypeFromMangledName(v13);
      (*(*(v19 - 8) + 8))(v9, v19);
      break;
  }

  v20 = (a1 + a2[10]);
  result = swift_getEnumCaseMultiPayload(v20, v10);
  switch(result)
  {
    case 2:
      return *v20;
    case 1:
      v24 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v25 = v20 + *(v24 + 20);
      v26 = type metadata accessor for DataFrame(0);
      v27 = *(*(v26 - 8) + 8);
      v27(v25, v26);
      return (v27)(v20 + *(v24 + 24), v26);
    case 0:
      v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v20, v22) == 1)
      {
        v23 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v23 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v28 = __swift_instantiateConcreteTypeFromMangledName(v23);
      return (*(*(v28 - 8) + 8))(v20, v28);
  }

  return result;
}

void *initializeWithCopy for MLSupportVectorClassifier(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  v4 = *(type metadata accessor for MLSupportVectorClassifier.Model(0) + 24);
  v49 = a1 + v4;
  v5 = a2 + v4;

  v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v5, v56);
  v7 = EnumCaseMultiPayload == 1;
  v8 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
  if (EnumCaseMultiPayload == 1)
  {
    v8 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledName(v8);
  (*(*(v9 - 8) + 16))(v49, v5, v9);
  swift_storeEnumTagMultiPayload(v49, v56, v7);
  v10 = a3[5];
  v11 = *(a2 + v10);
  *(a1 + v10) = v11;
  v12 = a3[6];
  *(a1 + v12) = *(a2 + v12);
  *(a1 + v12 + 8) = *(a2 + v12 + 8);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v13 = a3[8];
  v53 = a1 + v13;
  v47 = a2 + v13;
  v14 = (a2 + v13 + 8);
  v50 = a1;
  v15 = (a1 + v13 + 8);
  *(a1 + v13) = *(a2 + v13);
  v16 = *(a2 + v13 + 32);
  v11;

  if (v16)
  {
    *(v53 + 4) = v16;
    (**(v16 - 8))(v15, v14, v16);
  }

  else
  {
    v17 = *v14;
    v15[1] = v14[1];
    *v15 = v17;
  }

  *(v53 + 40) = *(v47 + 40);
  v53[56] = v47[56];
  v18 = a3[9];
  v19 = (v50 + v18);
  v20 = (a2 + v18);
  v48 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v21 = swift_getEnumCaseMultiPayload(v20, v48);
  if (v21 == 2)
  {
    v26 = *v20;
    swift_errorRetain(*v20);
    *v19 = v26;
  }

  else if (v21 == 1)
  {
    *v19 = *v20;
    v54 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v22 = *(v54 + 20);
    v46 = v19 + v22;
    v23 = type metadata accessor for DataFrame(0);
    v24 = v20 + v22;
    v25 = *(*(v23 - 8) + 16);
    v25(v46, v24, v23);
    v25(v19 + *(v54 + 24), v20 + *(v54 + 24), v23);
  }

  else
  {
    v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v27 = swift_getEnumCaseMultiPayload(v20, v55);
    v28 = v27 == 1;
    v29 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v27 == 1)
    {
      v29 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v30 = __swift_instantiateConcreteTypeFromMangledName(v29);
    (*(*(v30 - 8) + 16))(v19, v20, v30);
    swift_storeEnumTagMultiPayload(v19, v55, v28);
  }

  swift_storeEnumTagMultiPayload(v19, v48, v21);
  v31 = a3[10];
  v32 = (v50 + v31);
  v33 = (a2 + v31);
  v34 = swift_getEnumCaseMultiPayload(a2 + v31, v48);
  if (v34 == 2)
  {
    v39 = *v33;
    swift_errorRetain(v39);
    *v32 = v39;
  }

  else if (v34 == 1)
  {
    *v32 = *v33;
    v52 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v35 = *(v52 + 20);
    v58 = v32 + v35;
    v36 = type metadata accessor for DataFrame(0);
    v37 = v33 + v35;
    v38 = *(*(v36 - 8) + 16);
    v38(v58, v37, v36);
    v38(v32 + *(v52 + 24), v33 + *(v52 + 24), v36);
  }

  else
  {
    v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v41 = swift_getEnumCaseMultiPayload(v33, v40);
    v59 = v33;
    v42 = v41 == 1;
    v43 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v41 == 1)
    {
      v43 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v44 = __swift_instantiateConcreteTypeFromMangledName(v43);
    (*(*(v44 - 8) + 16))(v32, v59, v44);
    swift_storeEnumTagMultiPayload(v32, v40, v42);
  }

  swift_storeEnumTagMultiPayload(v32, v48, v34);
  return v50;
}

void *assignWithCopy for MLSupportVectorClassifier(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  v4;
  v5 = a1[2];
  a1[2] = a2[2];

  v5;
  a1[3] = a2[3];
  v6 = a1[4];
  a1[4] = a2[4];

  v6;
  v7 = type metadata accessor for MLSupportVectorClassifier.Model(0);
  if (a1 != a2)
  {
    v8 = *(v7 + 24);
    v9 = a2 + v8;
    v69 = a2 + v8;
    v10 = a1 + v8;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, &demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
    v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v9, v11);
    v13 = EnumCaseMultiPayload == 1;
    v14 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
    if (EnumCaseMultiPayload == 1)
    {
      v14 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledName(v14);
    (*(*(v15 - 8) + 16))(v10, v69, v15);
    swift_storeEnumTagMultiPayload(v10, v11, v13);
  }

  v16 = a3[5];
  v17 = *(a2 + v16);
  v18 = *(a1 + v16);
  *(a1 + v16) = v17;
  v17;

  v19 = a3[6];
  *(a1 + v19) = *(a2 + v19);
  v20 = *(a1 + v19 + 8);
  *(a1 + v19 + 8) = *(a2 + v19 + 8);

  v20;
  v21 = a3[7];
  v22 = *(a1 + v21);
  *(a1 + v21) = *(a2 + v21);

  v22;
  v23 = a3[8];
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (a2 + v23 + 8);
  v27 = (a1 + v23 + 8);
  *(a1 + v23) = *(a2 + v23);
  v28 = *(a2 + v23 + 32);
  if (*(a1 + v23 + 32))
  {
    if (v28)
    {
      __swift_assign_boxed_opaque_existential_0((a1 + v23 + 8), v26);
      goto LABEL_12;
    }

    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v23 + 8));
  }

  else if (v28)
  {
    *(v24 + 4) = v28;
    (**(v28 - 8))(v27, v26);
    goto LABEL_12;
  }

  v29 = *v26;
  v27[1] = *(v26 + 1);
  *v27 = v29;
LABEL_12:
  *(v24 + 5) = *(v25 + 5);
  *(v24 + 6) = *(v25 + 6);
  v24[56] = v25[56];
  v30 = a2;
  if (a1 != a2)
  {
    v31 = a3[9];
    v32 = (a1 + v31);
    v33 = (a2 + v31);
    outlined destroy of MLActivityClassifier.ModelParameters(v32, type metadata accessor for MLClassifierMetrics.Contents);
    v34 = type metadata accessor for MLClassifierMetrics.Contents(0);
    v35 = swift_getEnumCaseMultiPayload(v33, v34);
    v59 = v35;
    if (v35 == 2)
    {
      v39 = *v33;
      swift_errorRetain(v39);
      *v32 = v39;
    }

    else if (v35 == 1)
    {
      *v32 = *v33;
      v64 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v61 = v34;
      v36 = *(v64 + 20);
      v57 = v32 + v36;
      v58 = type metadata accessor for DataFrame(0);
      v37 = *(*(v58 - 8) + 16);
      v38 = v33 + v36;
      v34 = v61;
      v37(v57, v38, v58);
      v37(v32 + *(v64 + 24), v33 + *(v64 + 24), v58);
      v30 = a2;
    }

    else
    {
      v62 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v40 = swift_getEnumCaseMultiPayload(v33, v62);
      v65 = v40 == 1;
      v41 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v40 == 1)
      {
        v41 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v42 = __swift_instantiateConcreteTypeFromMangledName(v41);
      (*(*(v42 - 8) + 16))(v32, v33, v42);
      swift_storeEnumTagMultiPayload(v32, v62, v65);
    }

    swift_storeEnumTagMultiPayload(v32, v34, v59);
    v43 = a3[10];
    v44 = (a1 + v43);
    v45 = (v30 + v43);
    outlined destroy of MLActivityClassifier.ModelParameters(a1 + v43, type metadata accessor for MLClassifierMetrics.Contents);
    v46 = swift_getEnumCaseMultiPayload(v45, v34);
    if (v46 == 2)
    {
      v51 = *v45;
      swift_errorRetain(v51);
      *v44 = v51;
    }

    else
    {
      v68 = v46;
      if (v46 == 1)
      {
        *v44 = *v45;
        v60 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
        v47 = *(v60 + 20);
        v66 = v44 + v47;
        v63 = v34;
        v48 = type metadata accessor for DataFrame(0);
        v71 = *(*(v48 - 8) + 16);
        v49 = v45 + v47;
        v46 = 1;
        v71(v66, v49, v48);
        v50 = v48;
        v34 = v63;
        v71(v44 + *(v60 + 24), v45 + *(v60 + 24), v50);
      }

      else
      {
        v72 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v52 = swift_getEnumCaseMultiPayload(v45, v72);
        v53 = v52 == 1;
        v54 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v52 == 1)
        {
          v54 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v55 = __swift_instantiateConcreteTypeFromMangledName(v54);
        (*(*(v55 - 8) + 16))(v44, v45, v55);
        swift_storeEnumTagMultiPayload(v44, v72, v53);
        v46 = v68;
      }
    }

    swift_storeEnumTagMultiPayload(v44, v34, v46);
  }

  return a1;
}

uint64_t initializeWithTake for MLSupportVectorClassifier(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(type metadata accessor for MLSupportVectorClassifier.Model(0) + 24);
  v5 = a1 + v4;
  v6 = a2 + v4;
  v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v6, v56);
  v8 = EnumCaseMultiPayload == 1;
  v9 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
  if (EnumCaseMultiPayload == 1)
  {
    v9 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledName(v9);
  (*(*(v10 - 8) + 32))(v5, v6, v10);
  v11 = v5;
  swift_storeEnumTagMultiPayload(v11, v56, v8);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v13 = a3[8];
  v14 = *(a2 + v13);
  v15 = *(a2 + v13 + 16);
  v16 = *(a2 + v13 + 32);
  *(a1 + v13 + 41) = *(a2 + v13 + 41);
  *(a1 + v13 + 32) = v16;
  *(a1 + v13 + 16) = v15;
  *(a1 + v13) = v14;
  v17 = a3[9];
  v57 = a1;
  v18 = (a1 + v17);
  v19 = (a2 + v17);
  v20 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v21 = swift_getEnumCaseMultiPayload(v19, v20);
  v58 = v20;
  if (v21 == 1)
  {
    *v18 = *v19;
    v55 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v31 = *(v55 + 20);
    v54 = &v18[v31];
    v32 = type metadata accessor for DataFrame(0);
    v33 = &v19[v31];
    v34 = *(*(v32 - 8) + 32);
    v34(v54, v33, v32);
    v35 = v32;
    v20 = v58;
    v34(&v18[*(v55 + 24)], &v19[*(v55 + 24)], v35);
    v30 = 1;
    v28 = v18;
    v29 = v58;
LABEL_9:
    swift_storeEnumTagMultiPayload(v28, v29, v30);
    goto LABEL_11;
  }

  if (!v21)
  {
    v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v23 = swift_getEnumCaseMultiPayload(v19, v22);
    v24 = v23 == 1;
    v25 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v23 == 1)
    {
      v25 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v26 = __swift_instantiateConcreteTypeFromMangledName(v25);
    (*(*(v26 - 8) + 32))(v18, v19, v26);
    v27 = v24;
    v20 = v58;
    swift_storeEnumTagMultiPayload(v18, v22, v27);
    v28 = v18;
    v29 = v58;
    v30 = 0;
    goto LABEL_9;
  }

  memcpy(v18, v19, *(*(v20 - 8) + 64));
LABEL_11:
  v36 = a3[10];
  v37 = v57;
  v38 = (v36 + v57);
  v39 = (v36 + a2);
  v40 = swift_getEnumCaseMultiPayload(v39, v20);
  if (v40 == 1)
  {
    *v38 = *v39;
    v60 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v49 = *(v60 + 20);
    v50 = type metadata accessor for DataFrame(0);
    v51 = *(*(v50 - 8) + 32);
    v51(&v38[v49], &v39[v49], v50);
    v52 = v50;
    v37 = v57;
    v51(&v38[*(v60 + 24)], &v39[*(v60 + 24)], v52);
    v48 = 1;
    v46 = v38;
    v47 = v58;
  }

  else
  {
    if (v40)
    {
      memcpy(v38, v39, *(*(v20 - 8) + 64));
      return v37;
    }

    v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v42 = swift_getEnumCaseMultiPayload(v39, v41);
    v43 = v42 == 1;
    v44 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v42 == 1)
    {
      v44 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v45 = __swift_instantiateConcreteTypeFromMangledName(v44);
    (*(*(v45 - 8) + 32))(v38, v39, v45);
    swift_storeEnumTagMultiPayload(v38, v41, v43);
    v46 = v38;
    v47 = v58;
    v48 = 0;
  }

  swift_storeEnumTagMultiPayload(v46, v47, v48);
  return v37;
}

void *assignWithTake for MLSupportVectorClassifier(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];
  v4;
  v5 = a1[2];
  a1[2] = a2[2];
  v5;
  a1[3] = a2[3];
  v6 = a1[4];
  a1[4] = a2[4];
  v6;
  v7 = type metadata accessor for MLSupportVectorClassifier.Model(0);
  if (a1 != a2)
  {
    v8 = *(v7 + 24);
    v9 = a2 + v8;
    v70 = a2 + v8;
    v10 = a1 + v8;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, &demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
    v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v9, v11);
    v13 = EnumCaseMultiPayload == 1;
    v14 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
    if (EnumCaseMultiPayload == 1)
    {
      v14 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledName(v14);
    (*(*(v15 - 8) + 32))(v10, v70, v15);
    swift_storeEnumTagMultiPayload(v10, v11, v13);
  }

  v16 = a3[5];
  v17 = *(a1 + v16);
  *(a1 + v16) = *(a2 + v16);

  v18 = a3[6];
  *(a1 + v18) = *(a2 + v18);
  v19 = *(a1 + v18 + 8);
  *(a1 + v18 + 8) = *(a2 + v18 + 8);
  v19;
  v20 = a3[7];
  v21 = *(a1 + v20);
  *(a1 + v20) = *(a2 + v20);
  v21;
  v22 = a3[8];
  v23 = a1 + v22;
  v24 = a2 + v22;
  v25 = (a2 + v22 + 8);
  v26 = (a1 + v22 + 8);
  *(a1 + v22) = *(a2 + v22);
  if (*(a1 + v22 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v22 + 8));
  }

  v27 = *v25;
  v26[1] = v25[1];
  *v26 = v27;
  *(v23 + 40) = *(v24 + 40);
  v23[56] = v24[56];
  v28 = a2;
  if (a1 == a2)
  {
    return a1;
  }

  v29 = a3[9];
  v30 = (a1 + v29);
  v31 = (a2 + v29);
  outlined destroy of MLActivityClassifier.ModelParameters(v30, type metadata accessor for MLClassifierMetrics.Contents);
  v69 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v32 = swift_getEnumCaseMultiPayload(v31, v69);
  if (v32 == 1)
  {
    *v30 = *v31;
    v66 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v41 = *(v66 + 20);
    v64 = v30 + v41;
    v42 = type metadata accessor for DataFrame(0);
    v43 = *(*(v42 - 8) + 32);
    v44 = v31 + v41;
    v45 = v42;
    v43(v64, v44);
    (v43)(v30 + *(v66 + 24), v31 + *(v66 + 24), v45);
    v28 = a2;
    v40 = 1;
    v37 = v30;
    v38 = v69;
    v39 = v69;
  }

  else
  {
    if (v32)
    {
      v46 = v31;
      v38 = v69;
      memcpy(v30, v46, *(*(v69 - 8) + 64));
      goto LABEL_16;
    }

    v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v33 = swift_getEnumCaseMultiPayload(v31, v65);
    v34 = v33 == 1;
    v35 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v33 == 1)
    {
      v35 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v36 = __swift_instantiateConcreteTypeFromMangledName(v35);
    (*(*(v36 - 8) + 32))(v30, v31, v36);
    swift_storeEnumTagMultiPayload(v30, v65, v34);
    v37 = v30;
    v38 = v69;
    v39 = v69;
    v40 = 0;
  }

  swift_storeEnumTagMultiPayload(v37, v39, v40);
LABEL_16:
  v47 = a3[10];
  v48 = a1 + v47;
  v49 = v28 + v47;
  outlined destroy of MLActivityClassifier.ModelParameters(a1 + v47, type metadata accessor for MLClassifierMetrics.Contents);
  v50 = swift_getEnumCaseMultiPayload(v49, v38);
  if (v50 == 1)
  {
    *v48 = *v49;
    v68 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v59 = *(v68 + 20);
    v72 = &v48[v59];
    v60 = type metadata accessor for DataFrame(0);
    v61 = &v49[v59];
    v62 = *(*(v60 - 8) + 32);
    v62(v72, v61, v60);
    v62(&v48[*(v68 + 24)], &v49[*(v68 + 24)], v60);
    v58 = 1;
    v56 = v48;
    v57 = v69;
  }

  else
  {
    if (v50)
    {
      memcpy(v48, v49, *(*(v38 - 8) + 64));
      return a1;
    }

    v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v52 = swift_getEnumCaseMultiPayload(v49, v51);
    v53 = v52 == 1;
    v54 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v52 == 1)
    {
      v54 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v55 = __swift_instantiateConcreteTypeFromMangledName(v54);
    (*(*(v55 - 8) + 32))(v48, v49, v55);
    swift_storeEnumTagMultiPayload(v48, v51, v53);
    v56 = v48;
    v57 = v69;
    v58 = 0;
  }

  swift_storeEnumTagMultiPayload(v56, v57, v58);
  return a1;
}

uint64_t sub_21CF39(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for MLSupportVectorClassifier.Model(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v5 = type metadata accessor for MLClassifierMetrics(0);
    v4 = *(a3 + 36) + a1;
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  result = 0;
  if ((*(a1 + *(a3 + 20)) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + *(a3 + 20)) >> 1) + 1;
  }

  return result;
}

uint64_t sub_21CFC6(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = type metadata accessor for MLSupportVectorClassifier.Model(0);
  if (*(*(v7 - 8) + 84) != a3)
  {
    if (a3 == 0x7FFFFFFF)
    {
      result = *(a4 + 20);
      *(a1 + result) = 2 * (a2 - 1);
      return result;
    }

    v7 = type metadata accessor for MLClassifierMetrics(0);
    v6 = *(a4 + 36) + a1;
  }

  return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
}

uint64_t type metadata completion function for MLSupportVectorClassifier(uint64_t a1)
{
  result = type metadata accessor for MLSupportVectorClassifier.Model(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    v4[1] = &value witness table for Builtin.UnknownObject + 64;
    v4[2] = &unk_3465B0;
    v4[3] = &value witness table for Builtin.BridgeObject + 64;
    v4[4] = &unk_3465C8;
    result = type metadata accessor for MLClassifierMetrics.Contents(319);
    if (v3 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      v6 = v5;
      swift_initStructMetadata(a1, 256, 7, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

unint64_t MLImageClassifier.ModelParameters.ClassifierType.description.getter()
{
  result = 0xD000000000000015;
  if (!*v0)
  {
    return 0xD000000000000012;
  }

  return result;
}

BOOL static MLImageClassifier.ModelParameters.ClassifierType.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    return _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v2, v3);
  }

  else
  {
    if (v3)
    {
      return 0;
    }

    swift_bridgeObjectRelease_n(0, 2);
    return 1;
  }
}

void MLImageClassifier.ModelParameters.ClassifierType.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1)
  {
    Hasher._combine(_:)(1uLL);
    specialized Array<A>.hash(into:)(a1, v2);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int MLImageClassifier.ModelParameters.ClassifierType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)(0);
  if (v1)
  {
    Hasher._combine(_:)(1uLL);
    specialized Array<A>.hash(into:)(v3, v1);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLImageClassifier.ModelParameters.ClassifierType.validate()()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = 0xD000000000000033;
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = "ssifier\n\nParameters\n";
      if (*(v1 + 32) > 0)
      {
        if (v3 == 1)
        {
          return;
        }

        for (i = 5; ; ++i)
        {
          v6 = i - 4 + 1;
          if (__OFADD__(1, i - 4))
          {
            BUG();
          }

          if (*(v1 + 8 * i) <= 0)
          {
            break;
          }

          if (v6 == v3)
          {
            return;
          }
        }
      }
    }

    else
    {
      v2 = 0xD000000000000029;
      v4 = " positive integers.";
    }

    v7 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v7, 0, 0);
    *v8 = v2;
    *(v8 + 8) = v4 | 0x8000000000000000;
    *(v8 + 16) = 0;
    *(v8 + 32) = 0;
    *(v8 + 48) = 0;
    swift_willThrow();
  }
}

uint64_t lazy protocol witness table accessor for type MLImageClassifier.ModelParameters.ClassifierType and conformance MLImageClassifier.ModelParameters.ClassifierType()
{
  result = lazy protocol witness table cache variable for type MLImageClassifier.ModelParameters.ClassifierType and conformance MLImageClassifier.ModelParameters.ClassifierType;
  if (!lazy protocol witness table cache variable for type MLImageClassifier.ModelParameters.ClassifierType and conformance MLImageClassifier.ModelParameters.ClassifierType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLImageClassifier.ModelParameters.ClassifierType, &type metadata for MLImageClassifier.ModelParameters.ClassifierType);
    lazy protocol witness table cache variable for type MLImageClassifier.ModelParameters.ClassifierType and conformance MLImageClassifier.ModelParameters.ClassifierType = result;
  }

  return result;
}

uint64_t MLDataTable.stratifiedSplit(proportions:on:seed:)(__int128 *a1, uint64_t a2, void *a3, uint64_t a4, double a5)
{
  if (a4 < 0)
  {
    BUG();
  }

  v10 = *v5;
  v13 = *(v5 + 8);
  v11 = a3;
  v12 = a2;
  v7 = type metadata accessor for MersenneTwisterGenerator();
  swift_allocObject(v7, 136, 7);
  v9 = MersenneTwisterGenerator.init(seed:)(a4);
  specialized stratifiedSplitGenerator<A>(proportions:generator:dataTable:on:)(a1, &v9, v10, v13, a2, v11, a5);
}

uint64_t *MLDataTable.randomSplitBySequence(strategy:by:on:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v28 = a6;
  v33 = a2;
  v34 = a1;
  v37 = *a3;
  v36 = *(a3 + 8);
  v40 = *(a3 + 16);
  v39 = *(a3 + 17);
  v10 = *(v7 + 8);
  v31 = *v7;
  v11 = v10 & 1;
  v32 = v10 & 1;
  v35 = v31;
  v38 = v10;
  outlined copy of Result<_DataTable, Error>(v31, v10);
  v30 = a4;
  v12._countAndFlagsBits = a4;
  v29 = a5;
  v12._object = a5;
  MLDataTable.subscript.getter(v12);
  outlined consume of Result<_DataTable, Error>(v31, v32);
  v31 = v26;
  v32 = v27;
  MLUntypedColumn.dropDuplicates()();
  outlined consume of Result<_DataTable, Error>(v26, v27);
  if (v25)
  {
    outlined consume of Result<_DataTable, Error>(v24, 1);
    v13 = v36;
    if (v40)
    {
      v13 = 1;
    }

    v14 = v37;
    if (!((v37 == 0.0) | v39 & 1))
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = v34;
    *v34 = 0;
    *(v16 + 8) = -1;
    v17 = v33;
    v18 = v35;
    *v33 = v35;
    *(v17 + 8) = v11;
    return outlined copy of Result<_DataTable, Error>(v18, v38);
  }

  v13 = v36;

  v15 = CMLColumn.size.getter();
  outlined consume of Result<_DataTable, Error>(v24, 0);
  outlined consume of Result<_DataTable, Error>(v24, 0);
  if ((v39 & 1) == 0)
  {
    if (v40)
    {
      v13 = 1;
    }

    v14 = v37;
    if (v37 != 0.0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v15 < 50)
  {
    goto LABEL_12;
  }

  v14 = dbl_33FA70[v15 < 0xC8];
  v13 = 1;
LABEL_13:
  v31 = v35;
  v32 = v11;
  MLDataTable.randomSplitBySequence(proportion:by:on:seed:)(&v24, &v26, v30, v29, v28, a7, v14, v13);
  v20 = v25;
  v21 = v26;
  v22 = v27;
  v23 = v34;
  *v34 = v24;
  *(v23 + 8) = v20;
  result = v33;
  *v33 = v21;
  *(result + 8) = v22;
  return result;
}

uint64_t *MLDataTable.randomSplit(strategy:)(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v26 = a2;
  v27 = a1;
  v24 = *a3;
  v25 = *(a3 + 8);
  v28 = *(a3 + 16);
  v4 = *(a3 + 17);
  v5 = *v3;
  v6 = *(v3 + 8);
  v22 = v5;
  v23 = v6;
  outlined copy of Result<_DataTable, Error>(v5, v6);
  outlined copy of Result<_DataTable, Error>(v5, v6);
  v7 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v5, v6);
  v8 = specialized RandomAccessCollection<>.distance(from:to:)(0, v7, v5, v6);
  outlined consume of Result<_DataTable, Error>(v5, v6);
  if (v4 != 1)
  {
    v9 = v25;
    if (v28)
    {
      v9 = 1;
    }

    if (v24 != 0.0)
    {
      goto LABEL_8;
    }

LABEL_7:
    v10 = v27;
    *v27 = 0;
    *(v10 + 8) = -1;
    v11 = v26;
    *v26 = v5;
    *(v11 + 8) = v6;
    return outlined copy of Result<_DataTable, Error>(v5, v6);
  }

  if (v8 < 50)
  {
    goto LABEL_7;
  }

  v9 = 1;
LABEL_8:
  v20 = v5;
  v21 = v6;
  MLDataTable.randomSplit(by:seed:)(&v22, &v18, v9);
  v13 = v22;
  v14 = v18;
  v15 = v19;
  v16 = v23;
  outlined copy of Result<_DataTable, Error>(v22, v23);
  outlined copy of Result<_DataTable, Error>(v14, v15);
  outlined consume of Result<_DataTable, Error>(v14, v15);
  outlined consume of Result<_DataTable, Error>(v13, v16);
  v17 = v27;
  *v27 = v13;
  *(v17 + 8) = v16;
  result = v26;
  *v26 = v14;
  *(result + 8) = v15;
  return result;
}

uint64_t *specialized stratifiedSplitBySequenceGenerator<A>(proportions:generator:dataTable:by:on:)(__int128 *a1, uint64_t a2, void *a3, int a4, uint64_t a5, void *a6, double xmm0_8_0, Swift::String a7)
{
  v131 = a2;
  countAndFlagsBits = v9;
  v146 = a6;
  v132 = a1;
  LODWORD(v136) = a4;
  v137 = a3;
  v125 = v8;
  if (a4)
  {
    v145._countAndFlagsBits = v9;
    outlined copy of Result<_DataTable, Error>(a3, 1);
    v13 = tc_v1_flex_list_create(0);
    if (!v13)
    {
      BUG();
    }

    v14 = v13;
    v15 = type metadata accessor for CMLSequence();
    v16 = swift_allocObject(v15, 25, 7);
    *(v16 + 16) = v14;
    *(v16 + 24) = 1;
    outlined consume of Result<_DataTable, Error>(a3, 1);
    countAndFlagsBits = v145._countAndFlagsBits;
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(a3, 0);
    _DataTable.columnNames.getter();
    outlined consume of Result<_DataTable, Error>(a3, 0);
    v16 = v140;
  }

  v148._countAndFlagsBits = a5;
  v147._countAndFlagsBits = a5;
  object = v146;
  v148._object = v146;
  v18 = alloca(24);
  v19 = alloca(32);
  v122 = &v148;
  v20 = countAndFlagsBits;
  v21 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v121, v16);
  v145._countAndFlagsBits = v20;

  if ((v21 & 1) == 0)
  {
    v148._countAndFlagsBits = 0x2064696C61766E49;
    v148._object = 0xE800000000000000;
    v27._countAndFlagsBits = v147._countAndFlagsBits;
LABEL_27:
    v27._object = object;
    String.append(_:)(v27);
    v63._countAndFlagsBits = 46;
    v63._object = 0xE100000000000000;
    String.append(_:)(v63);
    v145 = v148;
    v64 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v64, 0, 0);
    *v65 = v145;
    *(v65 + 16) = 0;
    *(v65 + 32) = 0;
    *(v65 + 48) = 0;
    return swift_willThrow();
  }

  if (v136)
  {
    v22 = v137;
    outlined copy of Result<_DataTable, Error>(v137, 1);
    v23 = tc_v1_flex_list_create(0);
    if (!v23)
    {
      BUG();
    }

    v24 = v23;
    v25 = type metadata accessor for CMLSequence();
    v26 = swift_allocObject(v25, 25, 7);
    *(v26 + 16) = v24;
    *(v26 + 24) = 1;
    outlined consume of Result<_DataTable, Error>(v22, 1);
  }

  else
  {
    v28 = v137;
    outlined copy of Result<_DataTable, Error>(v137, 0);
    _DataTable.columnNames.getter();
    outlined consume of Result<_DataTable, Error>(v28, 0);
    v26 = v140;
  }

  object = a7._object;
  v148 = a7;
  v29 = alloca(24);
  v30 = alloca(32);
  v151 = &v148;
  v31 = v145._countAndFlagsBits;
  v32 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v150, v26);
  v145._countAndFlagsBits = v31;

  if ((v32 & 1) == 0)
  {
    v148._countAndFlagsBits = 0x2064696C61766E49;
    v148._object = 0xE800000000000000;
    v27._countAndFlagsBits = a7._countAndFlagsBits;
    goto LABEL_27;
  }

  v33 = v137;
  v140 = v137;
  v34 = v136;
  v35 = v136;
  v138 = v136;
  LOBYTE(v34) = v136 & 1;
  LOBYTE(v141) = v136 & 1;
  v148._countAndFlagsBits = v137;
  LOBYTE(v148._object) = v136 & 1;
  outlined copy of Result<_DataTable, Error>(v137, v136);
  outlined copy of Result<_DataTable, Error>(v33, v35);
  v36._countAndFlagsBits = v147._countAndFlagsBits;
  v36._object = v146;
  MLDataTable.subscript.getter(v36);
  outlined consume of Result<_DataTable, Error>(v148._countAndFlagsBits, v148._object);
  v123 = v142;
  v124 = v143;
  MLUntypedColumn.dropDuplicates()();
  outlined consume of Result<_DataTable, Error>(v123, v124);
  v142 = v148._countAndFlagsBits;
  v143 = v148._object;
  v37 = Array<A>.init(_:)(&v142, xmm0_8_0);
  outlined copy of Result<_DataTable, Error>(v33, v138);
  v38 = v146;

  LODWORD(v136) = v34;
  LODWORD(v147._object) = v34;
  v39 = v145._countAndFlagsBits;
  ML11MLDataValueOG_AHs5NeverOTg503_s8d81ML34stratifiedSplitBySequenceGenerator11proportions9generator9dataTable2by2onAA06f30K0VSaySdG_xzAIS2StKSGRzlFAA0N5G8OALXEfU_AF0F5TableVS2STf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML11MLDataValueOG_AHs5NeverOTg503_s8d81ML34stratifiedSplitBySequenceGenerator11proportions9generator9dataTable2by2onAA06f30K0VSaySdG_xzAIS2StKSGRzlFAA0N5G8OALXEfU_AF0F5TableVS2STf1cn_n(v37, v33, v34, v147._countAndFlagsBits, v38, a7._countAndFlagsBits, a7._object);
  v133 = v39;
  v40 = v37[2];

  v126 = v37;
  ML11MLDataValueO_Sis12Zip2SequenceVySayAGGSnySiGGTt0g5 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC8CreateML11MLDataValueO_Sis12Zip2SequenceVySayAGGSnySiGGTt0g5(v37, 0, v40);
  v42 = _sSa9repeating5countSayxGx_SitcfCSaySiG_Tt1g5(_swiftEmptyArrayStorage, v40);
  v142 = v33;
  v143 = v147._object;
  outlined copy of Result<_DataTable, Error>(v33, v138);
  v36._countAndFlagsBits = v147._countAndFlagsBits;
  v36._object = v146;
  MLDataTable.subscript.getter(v36);
  outlined consume of Result<_DataTable, Error>(v142, v143);
  v142 = v148._countAndFlagsBits;
  v143 = v148._object;
  v43 = Array<A>.init(_:)(&v142, xmm0_8_0);
  v130 = v43[2];
  v139 = v42;
  if (v130)
  {
    v144 = ML11MLDataValueO_Sis12Zip2SequenceVySayAGGSnySiGGTt0g5;
    v128 = v43;
    v44 = v43 + 6;
    v45 = 0;
    do
    {
      v147._object = v45;
      v46 = v144;
      if (!v144[2])
      {
        BUG();
      }

      v47 = *(v44 - 2);
      v48 = *(v44 - 1);
      v129 = v44;
      v49 = *v44;
      outlined copy of MLDataValue(v47, v48, *v44);
      outlined copy of MLDataValue(v47, v48, v49);
      *&v50 = v47;
      *(&v50 + 1) = v48;
      specialized __RawDictionaryStorage.find<A>(_:)(v50, v49, xmm0_8_0);
      if ((v52 & 1) == 0)
      {
        outlined consume of MLDataValue(v47, v48, v49);
        BUG();
      }

      v145._countAndFlagsBits = *(*(v46 + 56) + 8 * v51);
      outlined consume of MLDataValue(v47, v48, v49);
      v53 = v139;
      if (!swift_isUniquelyReferenced_nonNull_native(v139))
      {
        v53 = specialized _ArrayBuffer._consumeAndCreateNew()(v53);
      }

      if (v145._countAndFlagsBits < 0)
      {
        BUG();
      }

      if (v145._countAndFlagsBits >= v53[2])
      {
        BUG();
      }

      v134 = v47;
      LODWORD(v135) = v49;
      v54 = v53;
      v55 = v53[v145._countAndFlagsBits + 4];
      v56 = v145._countAndFlagsBits;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v55);
      *(v54 + 8 * v56 + 32) = v55;
      v139 = v54;
      if (!isUniquelyReferenced_nonNull_native)
      {
        v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55[2] + 1, 1, v55);
        *(v54 + 8 * v145._countAndFlagsBits + 32) = v55;
      }

      v58 = v134;
      v134 = v48;
      v59 = v55[2];
      v60 = v59 + 1;
      if (v55[3] >> 1 <= v59)
      {
        v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v55[3] >= 2uLL, v59 + 1, 1, v55);
        v60 = v59 + 1;
        v55 = v62;
        v139[v145._countAndFlagsBits + 4] = v62;
      }

      v61 = v147._object;
      v55[2] = v60;
      v55[v59 + 4] = v61;
      v45 = v61 + 1;
      outlined consume of MLDataValue(v58, v134, v135);
      v44 = v129 + 24;
    }

    while (v130 != v45);
    v144;
    LOBYTE(v43) = v128;
  }

  else
  {
    ML11MLDataValueO_Sis12Zip2SequenceVySayAGGSnySiGGTt0g5;
  }

  v43;
  v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLUntypedColumn)>);
  inited = swift_initStackObject(v67, v121);
  *(inited + 16) = 3;
  *(inited + 24) = 6;
  *(inited + 32) = 0x73656369646E69;
  *(inited + 40) = 0xE700000000000000;
  LOBYTE(v148._countAndFlagsBits) = v139;
  v69 = alloca(24);
  v70 = alloca(24);
  v151 = &v148;

  *(inited + 48) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(_s8CreateML15MLUntypedColumnVyACxcSTRzAA22MLDataValueConvertible7ElementRpzlufcAA08_UntypedD0CyKXEfU_SaySaySiGG_TG5TA_0);
  *(inited + 56) = v71 & 1;
  v148._countAndFlagsBits;
  *(inited + 64) = a7;
  LOBYTE(v148._countAndFlagsBits) = ML11MLDataValueOG_AHs5NeverOTg503_s8d81ML34stratifiedSplitBySequenceGenerator11proportions9generator9dataTable2by2onAA06f30K0VSaySdG_xzAIS2StKSGRzlFAA0N5G8OALXEfU_AF0F5TableVS2STf1cn_n;
  v72 = alloca(24);
  v73 = alloca(24);
  v151 = &v148;

  *(inited + 80) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(_s8CreateML15MLUntypedColumnVyACxcSTRzAA11MLDataValueO7ElementRtzlufcAA08_UntypedD0CyKXEfU_SayAEG_TG5TA_0);
  *(inited + 88) = v74 & 1;
  v148._countAndFlagsBits;
  *(inited + 96) = v147._countAndFlagsBits;
  *(inited + 104) = v146;
  v148._countAndFlagsBits = v126;
  v75 = alloca(24);
  v76 = alloca(24);
  v151 = &v148;

  *(inited + 112) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
  *(inited + 120) = v77 & 1;
  v148._countAndFlagsBits;
  v78 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for MLUntypedColumn, &protocol witness table for String);
  v79 = v133;
  _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(v78);
  if (v79)
  {
    v139;
    return outlined consume of Result<_DataTable, Error>(v140, v141);
  }

  v80 = v148._countAndFlagsBits;
  object_low = LOBYTE(v148._object);
  specialized stratifiedSplitGenerator<A>(proportions:generator:dataTable:on:)(v132, v131, v148._countAndFlagsBits, LOBYTE(v148._object), a7._countAndFlagsBits, a7._object, xmm0_8_0);
  LODWORD(v133) = object_low;
  v132 = v80;
  v145._countAndFlagsBits = 0;
  v144 = v148._countAndFlagsBits;
  LOBYTE(v131) = v148._object;
  v142 = v137;
  v143 = v136;
  outlined copy of Result<_DataTable, Error>(v137, v138);
  v82._countAndFlagsBits = v147._countAndFlagsBits;
  v82._object = v146;
  MLDataTable.subscript.getter(v82);
  outlined consume of Result<_DataTable, Error>(v142, v143);
  v83 = v148._countAndFlagsBits;
  v84 = v148._object;
  if (LOBYTE(v148._object))
  {
    v85 = -1;
  }

  else
  {

    v85 = CMLColumn.size.getter();
    outlined consume of Result<_DataTable, Error>(v83, 0);
  }

  outlined consume of Result<_DataTable, Error>(v83, v84);
  v147._object = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5(0, v85);
  v142 = v144;
  v143 = v131;
  LODWORD(v146) = v131;
  outlined copy of Result<_DataTable, Error>(v144, v131);
  v86._countAndFlagsBits = 0x73656369646E69;
  v86._object = 0xE700000000000000;
  MLDataTable.subscript.getter(v86);
  outlined consume of Result<_DataTable, Error>(v142, v143);
  v87 = v148._countAndFlagsBits;
  if (LOBYTE(v148._object) == 1)
  {
    outlined consume of Result<_DataTable, Error>(v148._countAndFlagsBits, 1);
LABEL_78:
    BUG();
  }

  v88 = CMLColumn.size.getter();
  outlined consume of Result<_DataTable, Error>(v87, 0);
  outlined consume of Result<_DataTable, Error>(v87, 0);
  v137 = v88;
  v89 = v145._countAndFlagsBits;
  if (v88 < 0)
  {
    goto LABEL_78;
  }

  v90 = v144;
  if (v88)
  {
    v147._countAndFlagsBits = 0;
    while (!v131)
    {
      v91 = *(v90 + 16);
      outlined copy of Result<_DataTable, Error>(v90, 0);

      v92 = specialized String.withCString<A>(_:)(partial apply for closure #1 in CMLTable.column(name:), v91, 0x73656369646E69, 0xE700000000000000);
      if (v89)
      {
        v89;

LABEL_74:
        v118 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        v119 = swift_allocError(&type metadata for MLCreateError, v118, 0, 0);
        *v120 = 0xD000000000000027;
        *(v120 + 8) = "aTable by sequence." + 0x8000000000000000;
        *(v120 + 16) = 0;
        *(v120 + 32) = 0;
        *(v120 + 48) = 1;
        outlined consume of Result<_DataTable, Error>(v144, v146);
        outlined consume of Result<_DataTable, Error>(v119, 1);
LABEL_75:
        BUG();
      }

      v93 = v92;

      outlined consume of Result<_DataTable, Error>(v90, 0);
      v94 = type metadata accessor for _UntypedColumn();
      v95 = swift_allocObject(v94, 24, 7);
      *(v95 + 16) = v93;

      _UntypedColumn.valueAtIndex(index:)(v147._countAndFlagsBits, xmm0_8_0);
      outlined consume of Result<_DataTable, Error>(v95, 0);
      outlined consume of Result<_DataTable, Error>(v95, 0);
      if (v149 != 3)
      {
        goto LABEL_75;
      }

      v136 = v148._object;
      v96 = v148._countAndFlagsBits;

      if (CMLSequence.size.getter())
      {
        v97 = 0;
        v130 = v96;
        while (1)
        {
          v98 = CMLSequence.value(at:)(v97);
          v145._countAndFlagsBits = v89;
          if (v89)
          {
            swift_unexpectedError(v145._countAndFlagsBits, "CreateML/SequenceType.swift", 27, 1, 36);
            BUG();
          }

          MLDataValue.init(_:)(v98, xmm0_8_0);
          v129 = v148._object;
          v99 = v148._countAndFlagsBits;
          v100 = v149;
          LODWORD(v134) = v149;
          outlined copy of MLDataValue(v148._countAndFlagsBits, v148._object, v149);
          v135 = v99;
          outlined consume of MLDataValue(v99, v129, v134);
          if (v97 >= CMLSequence.size.getter())
          {
            BUG();
          }

          if (v100)
          {
            BUG();
          }

          v101 = v144;
          outlined copy of Result<_DataTable, Error>(v144, 0);
          v102._countAndFlagsBits = 0x6F69746974726170;
          v102._object = 0xE90000000000006ELL;
          specialized MLDataTable.subscript.getter(v102, v101, v146);
          outlined consume of Result<_DataTable, Error>(v101, 0);
          v103 = v142;
          if (v143)
          {
            break;
          }

          v104 = v97;
          outlined copy of Result<_DataTable, Error>(v142, 0);
          _UntypedColumn.valueAtIndex(index:)(v147._countAndFlagsBits, xmm0_8_0);
          outlined consume of Result<_DataTable, Error>(v103, 0);
          v107 = v148._countAndFlagsBits;
          if (v149)
          {
            outlined consume of MLDataValue(v148._countAndFlagsBits, v148._object, v149);
            v105 = v103;
            v106 = 0;
            goto LABEL_50;
          }

          outlined consume of Result<_DataTable, Error>(v103, 0);
          v108 = v147._object;
          if (!swift_isUniquelyReferenced_nonNull_native(v147._object))
          {
LABEL_57:
            v108 = specialized _ArrayBuffer._consumeAndCreateNew()(v108);
          }

LABEL_52:
          if (v135 < 0)
          {
            BUG();
          }

          if (v135 >= v108[2])
          {
            BUG();
          }

          v147._object = v108;
          v108[v135 + 4] = v107;
          v97 = v104 + 1;
          v96 = v130;
          v109 = v104 + 1 == CMLSequence.size.getter();
          v89 = v145._countAndFlagsBits;
          if (v109)
          {
            goto LABEL_58;
          }
        }

        v104 = v97;
        v105 = v142;
        v106 = 1;
LABEL_50:
        outlined consume of Result<_DataTable, Error>(v105, v106);
        v108 = v147._object;
        v107 = 0;
        if (!swift_isUniquelyReferenced_nonNull_native(v147._object))
        {
          goto LABEL_57;
        }

        v107 = 0;
        goto LABEL_52;
      }

LABEL_58:
      v110 = v147._countAndFlagsBits + 1;

      outlined consume of MLDataValue(v96, v136, 3);
      v147._countAndFlagsBits = v110;
      v90 = v144;
      if (v110 == v137)
      {
        goto LABEL_59;
      }
    }

    swift_willThrow();
    outlined copy of Result<_DataTable, Error>(v90, 1);
    goto LABEL_74;
  }

LABEL_59:
  v145._countAndFlagsBits = v89;
  v139;
  LOBYTE(v148._countAndFlagsBits) = v147._object;
  v111 = alloca(24);
  v112 = alloca(32);
  v151 = &v148;
  ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  v115 = v114;
  v148._countAndFlagsBits;
  MLDataTable.willMutate()();
  v148._countAndFlagsBits = ML14_UntypedColumnC_s5Error_pTt1g5;
  LOBYTE(v148._object) = v115 & 1;
  LODWORD(v147._object) = v115;
  outlined copy of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, v115);
  MLDataTable.addImpl(newColumn:named:)(&v148, 0x6F69746974726170, 0xE90000000000006ELL);
  outlined consume of Result<_DataTable, Error>(v148._countAndFlagsBits, v148._object);
  v116 = v141;
  if (v141)
  {
    outlined consume of Result<_DataTable, Error>(v132, v133);
    outlined consume of Result<_DataTable, Error>(v144, v146);
    v117 = v140;
  }

  else
  {
    v117 = v140;
    outlined copy of Result<_DataTable, Error>(v140, 0);
    _DataTable.columnNamesDidChange()();
    outlined consume of Result<_DataTable, Error>(v117, 0);
    outlined consume of Result<_DataTable, Error>(v132, v133);
    outlined consume of Result<_DataTable, Error>(v144, v146);
  }

  outlined consume of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, v147._object);
  result = v125;
  *v125 = v117;
  *(result + 8) = v116;
  return result;
}

uint64_t *MLDataTable.stratifiedSplit<A>(proportions:on:generator:)(__int128 *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v9 = *(v7 + 8);
  v11 = *v7;
  v12 = v9;
  return stratifiedSplitGenerator<A>(proportions:generator:dataTable:on:)(a1, a4, &v11, a2, a3, a5, a7, a6);
}

uint64_t MLDataTable.randomSplit(by:seed:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  if (*(v3 + 8))
  {
    swift_errorRetain(*v3);
    *a1 = v4;
    *(a1 + 8) = 1;
    *a2 = v4;
    *(a2 + 8) = 1;
    return swift_errorRetain(v4);
  }

  else
  {

    v7 = CMLTable.split(fraction:seed:)(a3);
    v12 = v8;
    v9 = type metadata accessor for _DataTable();
    swift_allocObject(v9, 40, 7);
    v11 = _DataTable.init(impl:)(v7);
    swift_allocObject(v9, 40, 7);
    v10 = _DataTable.init(impl:)(v12);
    outlined consume of Result<_DataTable, Error>(v4, 0);
    *a1 = v11;
    result = 0;
    *(a1 + 8) = 0;
    *a2 = v10;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t MLDataTable.randomSplitBySequence(proportion:by:on:seed:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7, uint64_t a8)
{
  v42._object = a6;
  v42._countAndFlagsBits = a5;
  *v37 = a4;
  *v38 = a3;
  v41 = *&a7;
  v34 = a1;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Double>);
  inited = swift_initStackObject(v11, v27);
  *(inited + 16) = 2;
  *(inited + 24) = 4;
  v13 = *&v41;
  *(inited + 32) = v41;
  *(inited + 40) = 1.0 - v13;
  if (a8 < 0)
  {
    BUG();
  }

  v14 = inited;
  v41 = a2;
  v15 = type metadata accessor for MersenneTwisterGenerator();
  swift_allocObject(v15, 136, 7);
  v32 = MersenneTwisterGenerator.init(seed:)(a8);
  specialized stratifiedSplitBySequenceGenerator<A>(proportions:generator:dataTable:by:on:)(v14, &v32, v9, v10, *v38, *v37, 1.0 - v13, v42);

  swift_setDeallocating(v14);
  v16 = v28;
  v17 = v29;
  v38[0] = v29;
  LOBYTE(v29) = v29 & 1;
  v18 = v29;
  outlined copy of Result<_DataTable, Error>(v28, v17);
  v19._countAndFlagsBits = 0x6F69746974726170;
  v19._object = 0xE90000000000006ELL;
  MLDataTable.subscript.getter(v19);
  outlined consume of Result<_DataTable, Error>(v28, v29);
  v39 = v35;
  v40 = v36;
  v30 = &type metadata for Int;
  v31 = &protocol witness table for Int;
  v28 = 0;
  static MLUntypedColumn.== infix(_:_:)(&v39, &v28);
  outlined consume of Result<_DataTable, Error>(v39, v40);
  __swift_destroy_boxed_opaque_existential_1Tm(&v28);
  v35 = v16;
  LOBYTE(v43) = v18;
  v36 = v18;
  v39 = v32;
  v40 = v33;
  LOBYTE(v14) = v38[0];
  outlined copy of Result<_DataTable, Error>(v16, v38[0]);
  MLDataTable.subscript.getter(&v39);
  outlined consume of Result<_DataTable, Error>(v39, v40);
  outlined consume of Result<_DataTable, Error>(v35, v36);
  v42._object = v28;
  LODWORD(v42._countAndFlagsBits) = v29;
  *v37 = v16;
  v28 = v16;
  LOBYTE(v29) = v18;
  outlined copy of Result<_DataTable, Error>(v16, v14);
  v19._countAndFlagsBits = 0x6F69746974726170;
  v19._object = 0xE90000000000006ELL;
  MLDataTable.subscript.getter(v19);
  outlined consume of Result<_DataTable, Error>(v28, v29);
  v39 = v35;
  v40 = v36;
  v30 = &type metadata for Int;
  v31 = &protocol witness table for Int;
  v28 = (&dword_0 + 1);
  static MLUntypedColumn.== infix(_:_:)(&v39, &v28);
  outlined consume of Result<_DataTable, Error>(v39, v40);
  __swift_destroy_boxed_opaque_existential_1Tm(&v28);
  v35 = *v37;
  v36 = v43;
  v39 = v32;
  v40 = v33;
  outlined copy of Result<_DataTable, Error>(*v37, v14);
  MLDataTable.subscript.getter(&v39);
  outlined consume of Result<_DataTable, Error>(v39, v40);
  outlined consume of Result<_DataTable, Error>(v35, v36);
  v20 = v28;
  v21 = v29;
  object = v42._object;
  v28 = v42._object;
  LOBYTE(v16) = v42._countAndFlagsBits;
  LOBYTE(v29) = v42._countAndFlagsBits;
  outlined copy of Result<_DataTable, Error>(v42._object, v42._countAndFlagsBits);
  outlined copy of Result<_DataTable, Error>(object, v16);
  v43 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v28, v29);
  v43 = specialized RandomAccessCollection<>.distance(from:to:)(0, v43, object, v16);
  outlined consume of Result<_DataTable, Error>(object, v16);
  v28 = v20;
  LOBYTE(v29) = v21;
  outlined copy of Result<_DataTable, Error>(v20, v21);
  outlined copy of Result<_DataTable, Error>(v20, v21);
  v23 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v28, v29);
  v24 = specialized RandomAccessCollection<>.distance(from:to:)(0, v23, v20, v21);
  outlined consume of Result<_DataTable, Error>(*v37, v38[0]);
  outlined consume of Result<_DataTable, Error>(v20, v21);
  v25 = v34;
  if (v43 >= v24)
  {
    *v34 = v20;
    *(v25 + 8) = v21;
    result = v41;
    *v41 = v42._object;
    *(result + 8) = v42._countAndFlagsBits;
  }

  else
  {
    *v34 = v42._object;
    *(v25 + 8) = v42._countAndFlagsBits;
    result = v41;
    *v41 = v20;
    *(result + 8) = v21;
  }

  return result;
}

uint64_t MLDataTable.stratifiedSplitBySequence(proportions:by:on:seed:)(__int128 *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, double a7)
{
  if (a6 < 0)
  {
    BUG();
  }

  v14 = *v7;
  v18 = *(v7 + 8);
  v13 = a4;
  v16 = a3;
  v17 = a2;
  v15 = a5;
  v9 = type metadata accessor for MersenneTwisterGenerator();
  swift_allocObject(v9, 136, 7);
  v12 = MersenneTwisterGenerator.init(seed:)(a6);
  v11._object = v15;
  v11._countAndFlagsBits = v13;
  specialized stratifiedSplitBySequenceGenerator<A>(proportions:generator:dataTable:by:on:)(a1, &v12, v14, v18, a2, v16, a7, v11);
}

uint64_t *MLDataTable.stratifiedSplitBySequence<A>(proportions:by:on:generator:)(__int128 *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, __int128 a7)
{
  v8 = *(v7 + 8);
  v10 = *v7;
  v11 = v8;
  return stratifiedSplitBySequenceGenerator<A>(proportions:generator:dataTable:by:on:)(a1, a6, &v10, a2, a3, a4, *&a7, a5, a7, *(&a7 + 1));
}

uint64_t MLHandActionClassifier.GraphCNN.writeMLPackage(to:metadata:)(uint64_t a1, const void *a2)
{
  v58 = v2;
  v78 = v3;
  v69 = a1;
  v77 = type metadata accessor for Model(0);
  v76 = *(v77 - 8);
  v4 = *(v76 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v75 = v55;
  v72 = type metadata accessor for URL(0);
  v73 = *(v72 - 8);
  v7 = *(v73 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v67 = v55;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v66 = v55;
  v12 = alloca(v7);
  v13 = alloca(v7);
  v65 = v55;
  v80 = type metadata accessor for Package(0);
  v79 = *(v80 - 8);
  v14 = *(v79 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v74 = v55;
  v70 = type metadata accessor for MLPackageWritingOptions(0);
  v71 = *(v70 - 8);
  v17 = *(v71 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v59 = v55;
  v60 = type metadata accessor for ScalarType(0);
  v61 = *(v60 - 8);
  v20 = *(v61 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v62 = v55;
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v63 = v55;
  v26 = *(*(type metadata accessor for TensorShape(0) - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v68 = v55;
  qmemcpy(v55, a2, sizeof(v55));
  v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Tensor)>);
  v30 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, Tensor)) - 8);
  v31 = *(v30 + 80);
  v32 = (v31 + 32) & ~*(v30 + 80);
  v33 = swift_allocObject(v29, v32 + *(v30 + 72), v31 | 7);
  v64 = v33;
  *(v33 + 16) = 1;
  *(v33 + 24) = 2;
  *(v33 + v32) = 0x7365736F70;
  *(v33 + v32 + 8) = 0xE500000000000000;
  v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v35 = swift_allocObject(v34, 56, 7);
  *(v35 + 16) = 3;
  *(v35 + 24) = 6;
  v36 = v78;
  v37 = v78 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  swift_beginAccess(v78 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model, v57, 0, 0);
  *(v35 + 32) = *(*(type metadata accessor for MLHandActionClassifier.GraphCNNModel(0) + 40) + v37);
  *(v35 + 40) = _mm_shuffle_epi32(_mm_loadu_si128((v36 + 24)), 78);
  TensorShape.init(_:)(v35);
  v38 = type metadata accessor for ComputeDevice(0);
  v39 = v63;
  __swift_storeEnumTagSinglePayload(v63, 1, 1, v38);
  v40 = v62;
  (*(v61 + 104))(v62, enum case for ScalarType.float32(_:), v60);
  Tensor.init(zeros:scalarType:on:)(v68, v40, v39);
  v41 = type metadata accessor for Tensor(0);
  v42 = Dictionary.init(dictionaryLiteral:)(v64, &type metadata for String, v41, &protocol witness table for String);
  v56[0] = v36;
  v43 = v36;

  v44 = v59;
  static MLPackageWritingOptions.default.getter(v43);
  v45 = lazy protocol witness table accessor for type MLHandActionClassifier.GraphCNN.MLPackageRepresentation and conformance MLHandActionClassifier.GraphCNN.MLPackageRepresentation();
  v46 = v58;
  Layer<>.writeMLPackage(withInput:output:to:options:)(v42, 0, v69, v44, &unk_393E38, v45);
  v42;
  (*(v71 + 8))(v44, v70);
  if (v46)
  {
  }

  v48 = v65;
  (*(v73 + 16))(v65, v69, v72);
  Package.init(url:)(v48);
  v49 = v66;
  Package.rootModelURL.getter();
  v50 = v75;
  Model.init(contentsOf:)(v49);
  v51 = v50;
  MLHandActionClassifier.GraphCNN.convertIntoClassifier(_:)(v50);
  v52 = v67;
  v53 = v51;
  v54 = v74;
  Package.setRootModel(_:)(v53);
  (*(v73 + 8))(v52, v72);
  qmemcpy(v56, v55, sizeof(v56));
  MLHandActionClassifier.GraphCNN.addMetadata(_:_:)(v54, v56);
  (*(v76 + 8))(v75, v77);
  return (*(v79 + 8))(v54, v80);
}

uint64_t MLHandActionClassifier.GraphCNN.MLPackageRepresentation.forward(_:)(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v57 = type metadata accessor for TensorShape(0);
  v58 = *(v57 - 8);
  v2 = *(v58 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v59 = v53;
  v5 = alloca(v2);
  v6 = alloca(v2);
  v64 = v53;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: String, value: Tensor)?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v63 = type metadata accessor for Tensor(0);
  v10 = *(v63 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v60 = v53;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v56 = v53;
  v16 = alloca(v11);
  v17 = alloca(v11);
  v18 = alloca(v11);
  v19 = alloca(v11);
  if (*(a1 + 16) != 1)
  {
    goto LABEL_6;
  }

  specialized Collection.first.getter(a1);
  a1;
  v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: String, value: Tensor));
  if (__swift_getEnumTagSinglePayload(v53, 1, v20) == 1)
  {
    outlined destroy of (key: String, value: Tensor)?(v53);
LABEL_6:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001FLL, ("PackageExport.swift" + 0x8000000000000000), "CreateML/MLHandActionClassifier+PackageExport.swift", 51, 2, 28, 0);
    goto LABEL_8;
  }

  v53[8];
  v21 = *(v20 + 48);
  v65 = v10;
  v22 = *(v10 + 32);
  v23 = v63;
  v22(v53, &v53[v21], v63);
  v22(v53, v53, v23);
  v66 = v53;
  Tensor.shape.getter(v53, v53, v24);
  v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v25 = swift_allocObject(v61, 56, 7);
  *(v25 + 16) = 3;
  *(v25 + 24) = 6;
  v26 = v67;
  v27 = v67 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  swift_beginAccess(v67 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model, v53, 0, 0);
  v62 = type metadata accessor for MLHandActionClassifier.GraphCNNModel(0);
  *(v25 + 32) = *(*(v62 + 40) + v27);
  *(v25 + 40) = _mm_shuffle_epi32(_mm_loadu_si128((v26 + 24)), 78);
  v28 = v59;
  TensorShape.init(_:)(v25);
  v29 = TensorShape.dimensions.getter();
  v30 = TensorShape.dimensions.getter();
  v31 = v30;
  LOBYTE(v22) = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1gq5(v29, v30);
  v29;
  v31;
  v32 = *(v58 + 8);
  v33 = v57;
  v32(v28, v57);
  v32(v64, v33);
  if ((v22 & 1) == 0)
  {
    v54 = 0;
    v55 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v55;
    v54 = 0xD00000000000001ALL;
    v55 = "There should be a single input." + 0x8000000000000000;
    v48 = swift_allocObject(v61, 56, 7);
    v49 = v48;
    *(v48 + 16) = 3;
    *(v48 + 24) = 6;
    *(v48 + 32) = *(v27 + *(v62 + 40));
    *(v48 + 40) = _mm_shuffle_epi32(_mm_loadu_si128((v67 + 24)), 78);
    v50._countAndFlagsBits = Array.description.getter(v48, &type metadata for Int);
    object = v50._object;
    String.append(_:)(v50);
    v49;
    object;
    v52._countAndFlagsBits = 46;
    v52._object = 0xE100000000000000;
    String.append(_:)(v52);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v54, v55, "CreateML/MLHandActionClassifier+PackageExport.swift", 51, 2, 31, 0);
LABEL_8:
    BUG();
  }

  v34 = v60;
  Tensor.expandingShape(at:)(&outlined read-only object #0 of MLHandActionClassifier.GraphCNN.MLPackageRepresentation.forward(_:));
  v35 = v56;
  MLHandActionClassifier.GraphCNN.callAsFunction(_:)(v34);
  v67 = *(v65 + 8);
  v36 = v63;
  (v67)(v34, v63);
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Tensor)>);
  v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, Tensor));
  v39 = *(v38 - 8);
  v40 = *(v39 + 80);
  v41 = (v40 + 32) & ~*(v39 + 80);
  v42 = swift_allocObject(v37, v41 + *(v39 + 72), v40 | 7);
  *(v42 + 16) = 1;
  *(v42 + 24) = 2;
  v43 = v42 + v41 + *(v38 + 48);
  *(v42 + v41) = 0xD000000000000010;
  *(v42 + v41 + 8) = "labelProbabilityRaw" + 0x8000000000000000;
  (*(v65 + 16))(v43, v35, v36);
  v44 = Dictionary.init(dictionaryLiteral:)(v42, &type metadata for String, v36, &protocol witness table for String);
  v45 = v35;
  v46 = v67;
  (v67)(v45, v36);
  v46(v66, v36);
  return v44;
}

uint64_t protocol witness for Layer.forward(_:) in conformance MLHandActionClassifier.GraphCNN.MLPackageRepresentation(uint64_t *a1)
{
  v3 = v1;
  result = MLHandActionClassifier.GraphCNN.MLPackageRepresentation.forward(_:)(*a1, *v2);
  *v3 = result;
  return result;
}

uint64_t MLHandActionClassifier.GraphCNN.convertIntoClassifier(_:)(uint64_t a1)
{
  v29 = v1;
  v38 = type metadata accessor for ModelKind(0);
  v37 = *(v38 - 8);
  v2 = *(v37 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v28 = &v27;
  v5 = alloca(v2);
  v6 = alloca(v2);
  v30 = &v27;
  v34 = type metadata accessor for MLProgram(0);
  v35 = *(v34 - 8);
  v7 = *(v35 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v36 = &v27;
  v40 = type metadata accessor for FeatureType(0);
  v31 = *(v40 - 8);
  v10 = *(v31 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v33 = a1;
  Model.predictedFeatureName.setter(0x6C6562616CLL, 0xE500000000000000);
  outputProbabilityName = "shape does not match." + 0x8000000000000000;
  Model.predictedProbabilitiesName.setter(0xD000000000000012, ("shape does not match." + 0x8000000000000000));
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
  v14 = *(type metadata accessor for FeatureDescription(0) - 8);
  v32 = *(v14 + 72);
  v15 = swift_allocObject(v13, ((*(v14 + 80) + 32) & ~*(v14 + 80)) + 2 * v32, *(v14 + 80) | 7);
  *(v15 + 16) = 2;
  *(v15 + 24) = 4;
  FeatureType.StringParameters.init(optional:)(0);
  (*(v31 + 104))(&v27, enum case for FeatureType.string(_:), v40);
  FeatureDescription.init(name:type:description:)(0x6C6562616CLL, 0xE500000000000000, &v27, 0, 0xE000000000000000);
  static FeatureType.dictionaryWithStringKeys(optional:)(0);
  v16 = v30;
  FeatureDescription.init(name:type:description:)(0xD000000000000012, outputProbabilityName, &v27, 0, 0xE000000000000000);
  v17 = v15;
  v18 = v38;
  Model.outputs.setter(v17);
  Model.kind.getter();
  v19 = v37;
  LODWORD(v40) = (*(v37 + 88))(v16, v18);
  if (v40 != enum case for ModelKind.mlProgram(_:))
  {
    (*(v19 + 8))(v16, v18);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000026, ("ityClassifier.Model.swift" + 0x8000000000000000), "CreateML/MLHandActionClassifier+PackageExport.swift", 51, 2, 69, 0);
    BUG();
  }

  (*(v19 + 96))(v16, v18);
  v20 = v36;
  (*(v35 + 32))(v36, v16, v34);
  v21._rawValue = *(v29 + 16);

  v41._countAndFlagsBits = 0x6C6562616CLL;
  v41._object = 0xE500000000000000;
  MLProgram.addClassifierSpecification(classLabels:probabilityTensorName:outputProbabilityName:outputLabelName:)(v21, __PAIR128__(("labelProbabilityRaw" + 0x8000000000000000), 0xD000000000000010), __PAIR128__(outputProbabilityName, 0xD000000000000012), v41);
  v21._rawValue;
  v22 = v28;
  v23 = v20;
  v24 = v34;
  v25 = v35;
  (*(v35 + 16))(v28, v23, v34);
  (*(v37 + 104))(v22, v40, v38);
  Model.kind.setter(v22);
  return (*(v25 + 8))(v36, v24);
}

uint64_t MLHandActionClassifier.GraphCNN.addMetadata(_:_:)(uint64_t a1, uint64_t *a2)
{
  v20 = a1;
  v25 = type metadata accessor for Package.ModelMetadata(0);
  v24 = *(v25 - 8);
  v2 = *(v24 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v22 = *a2;
  v5 = a2[1];
  v21 = a2[2];
  v6 = a2[3];
  v23 = a2[4];
  v26 = a2[5];
  v27 = *(a2 + 3);
  v7 = a2[8];
  Package.ModelMetadata.init()(0, a2);
  if (v5)
  {

    Package.ModelMetadata.author.setter(v22, v5);

    Package.ModelMetadata.description.setter(v21, v6);

    Package.ModelMetadata.version.setter(v27._countAndFlagsBits, v27._object);
    if (v26)
    {

      Package.ModelMetadata.license.setter(v23, v26);
    }

    if (v7)
    {

      Package.ModelMetadata.creatorDefined.setter(v7);
    }
  }

  else
  {
    v8 = NSFullUserName();
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)(v9);
    v12 = v11;

    Package.ModelMetadata.author.setter(v10, v12);
  }

  v27 = getOSVersion()();
  v26 = Package.ModelMetadata.creatorDefined.modify(v18);
  v14 = v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v13);
  v19 = *v14;
  *v14 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27._countAndFlagsBits, v27._object, 0xD00000000000001ALL, ("Recommender Model" + 0x8000000000000000), isUniquelyReferenced_nonNull_native);
  *v14 = v19;
  v26(v18, 0);
  Package.writeMetadata(_:)(&v17);
  return (*(v24 + 8))(&v17, v25);
}

uint64_t lazy protocol witness table accessor for type MLHandActionClassifier.GraphCNN.MLPackageRepresentation and conformance MLHandActionClassifier.GraphCNN.MLPackageRepresentation()
{
  result = lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNN.MLPackageRepresentation and conformance MLHandActionClassifier.GraphCNN.MLPackageRepresentation;
  if (!lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNN.MLPackageRepresentation and conformance MLHandActionClassifier.GraphCNN.MLPackageRepresentation)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLHandActionClassifier.GraphCNN.MLPackageRepresentation, &unk_393E38);
    lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNN.MLPackageRepresentation and conformance MLHandActionClassifier.GraphCNN.MLPackageRepresentation = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNN.MLPackageRepresentation and conformance MLHandActionClassifier.GraphCNN.MLPackageRepresentation;
  if (!lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNN.MLPackageRepresentation and conformance MLHandActionClassifier.GraphCNN.MLPackageRepresentation)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLHandActionClassifier.GraphCNN.MLPackageRepresentation, &unk_393E38);
    lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNN.MLPackageRepresentation and conformance MLHandActionClassifier.GraphCNN.MLPackageRepresentation = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNN.MLPackageRepresentation and conformance MLHandActionClassifier.GraphCNN.MLPackageRepresentation;
  if (!lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNN.MLPackageRepresentation and conformance MLHandActionClassifier.GraphCNN.MLPackageRepresentation)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLHandActionClassifier.GraphCNN.MLPackageRepresentation, &unk_393E38);
    lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNN.MLPackageRepresentation and conformance MLHandActionClassifier.GraphCNN.MLPackageRepresentation = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNN.MLPackageRepresentation and conformance MLHandActionClassifier.GraphCNN.MLPackageRepresentation;
  if (!lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNN.MLPackageRepresentation and conformance MLHandActionClassifier.GraphCNN.MLPackageRepresentation)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLHandActionClassifier.GraphCNN.MLPackageRepresentation, &unk_393E38);
    lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNN.MLPackageRepresentation and conformance MLHandActionClassifier.GraphCNN.MLPackageRepresentation = result;
  }

  return result;
}

uint64_t outlined destroy of (key: String, value: Tensor)?(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: String, value: Tensor)?);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t destroy for RecommenderTrainingData(void *a1)
{
  *a1;
  a1[1];
  a1[2];
  a1[3];
  a1[7];
  a1[8];
}

uint64_t initializeWithCopy for RecommenderTrainingData(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t *assignWithCopy for RecommenderTrainingData(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = *a2;

  v2;
  v3 = a1[1];
  a1[1] = a2[1];

  v3;
  v4 = a1[2];
  a1[2] = a2[2];

  v4;
  v5 = a1[3];
  a1[3] = a2[3];

  v5;
  a1[4] = a2[4];
  a1[5] = a2[5];
  *(a1 + 48) = *(a2 + 48);
  v6 = a1[7];
  a1[7] = a2[7];

  v6;
  v7 = a1[8];
  a1[8] = a2[8];

  v7;
  a1[9] = a2[9];

  return a1;
}

uint64_t assignWithTake for RecommenderTrainingData(uint64_t a1, uint64_t a2)
{
  *a1;
  v3 = *(a1 + 8);
  *a1 = *a2;
  v3;
  *(a1 + 16);
  v4 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56);
  v5 = *(a1 + 64);
  *(a1 + 56) = *(a2 + 56);
  v5;
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t getEnumTagSinglePayload for RecommenderTrainingData(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*a1 & 0xFFFFFFFF00000001) != 0 ? -1 : *a1 >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for RecommenderTrainingData(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 80) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 80) = 0;
    }

    if (a2)
    {
      *a1 = 2 * (a2 - 1);
    }
  }
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData6ColumnVySaySdGG_14NeuralNetworks6TensorVsAE_pTg5036_s8CreateML20MLActivityClassifierV11e88BatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_u12SSGAOSgtKF14g9Networks6I15VSaySdGSgKXEfU_SSTf1cn_n(uint64_t a1, uint64_t a2, void *a3)
{
  v73 = v3;
  v72 = a3;
  v63._countAndFlagsBits = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v53 = v50;
  v54 = type metadata accessor for ScalarType(0);
  v55 = *(v54 - 8);
  v7 = *(v55 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v56 = v50;
  v57 = type metadata accessor for TensorShape(0);
  v62 = *(v57 - 8);
  v10 = *(v62 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v71 = v50;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v58 = v50;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v64 = v50;
  v59 = type metadata accessor for Tensor(0);
  v60 = *(v59 - 8);
  v18 = *(v60 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v65 = v50;
  v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v22 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[Double]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[Double]>, &protocol conformance descriptor for Column<A>);
  v70 = v21;
  v23 = dispatch thunk of Collection.count.getter(v21, v22);
  if (v23)
  {
    v69 = _swiftEmptyArrayStorage;
    v24 = 0;
    if (v23 > 0)
    {
      v24 = v23;
    }

    v67 = v23;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
    v74 = v69;
    dispatch thunk of Collection.startIndex.getter(v70, v22);
    if (v67 < 0)
    {
      BUG();
    }

    v66 = v22;
    v68 = enum case for ScalarType.float32(_:);
    v25 = 0;
    v61 = a1;
    while (1)
    {
      v26 = __OFADD__(1, v25);
      v27 = v25 + 1;
      if (v26)
      {
        BUG();
      }

      v52 = v27;
      v28 = dispatch thunk of Collection.subscript.read(v50, &v63._object, v70, v66);
      v30 = *v29;

      v28(v50, 0);
      if (!v30)
      {
        break;
      }

      v31 = v64;
      v32 = v57;
      __swift_storeEnumTagSinglePayload(v64, 1, 1, v57);
      v33 = v31;
      v34 = v58;
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v33, v58, &demangling cache variable for type metadata for TensorShape?);
      if (__swift_getEnumTagSinglePayload(v34, 1, v32) == 1)
      {
        v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
        v36 = swift_allocObject(v35, 40, 7);
        v36[2] = 1;
        v36[3] = 2;
        v36[4] = *(v30 + 16);
        TensorShape.init(_:)(v36);
        if (__swift_getEnumTagSinglePayload(v34, 1, v32) != 1)
        {
          outlined destroy of Tensor?(v34, &demangling cache variable for type metadata for TensorShape?);
        }
      }

      else
      {
        (*(v62 + 32))(v71, v34, v32);
      }

      v37 = v56;
      (*(v55 + 104))(v56, v68, v54);
      v38 = type metadata accessor for ComputeDevice(0);
      v39 = v53;
      __swift_storeEnumTagSinglePayload(v53, 1, 1, v38);
      v40 = alloca(24);
      v41 = alloca(32);
      v51 = v30;
      v42 = v73;
      Tensor.init(unsafeUninitializedShape:scalarType:computeDevice:initializingWith:)(v71, v37, v39, partial apply for closure #1 in Array<A>.floatTensor(shape:));
      v73 = v42;
      outlined destroy of Tensor?(v64, &demangling cache variable for type metadata for TensorShape?);
      v30;
      v43 = v74;
      v69 = v74;
      v44 = v74[2];
      if (v74[3] >> 1 <= v44)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v74[3] >= 2uLL, v44 + 1, 1);
        v43 = v69;
      }

      v43[2] = v44 + 1;
      v45 = *(v60 + 80);
      v74 = v43;
      (*(v60 + 32))(v43 + ((v45 + 32) & ~v45) + *(v60 + 72) * v44, v65, v59);
      dispatch thunk of Collection.formIndex(after:)(&v63._object, v70, v66);
      v25 = v52;
      if (v52 == v67)
      {
        v72;
        return v74;
      }
    }

    v46 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v46, 0, 0);
    v47._countAndFlagsBits = v63._countAndFlagsBits;
    v48 = v72;
    v47._object = v72;
    static MLCreateError.featureNotFound(feature:)(v47);
    swift_willThrow();
    v48;
  }

  else
  {
    v72;
    return _swiftEmptyArrayStorage;
  }
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_14NeuralNetworks6TensorVs5NeverOTg50128_s8CreateML20MLActivityClassifierV11DataBatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_t12SSGAOSgtKF14d9Networks6F9VSiXEfU0_SaySayAIGGTf1cn_n(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v21 = a3;
  v23 = type metadata accessor for Tensor(0);
  v24 = *(v23 - 8);
  v5 = *(v24 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v27 = &v19;
  v22 = a2;
  v29 = a1;
  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    BUG();
  }

  if (!v8)
  {
    return _swiftEmptyArrayStorage;
  }

  v9 = a2 - a1;
  v30 = _swiftEmptyArrayStorage;
  v10 = 0;
  if (v8 > 0)
  {
    v10 = v8;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
  if (v8 < 0)
  {
    BUG();
  }

  v11 = v30;
  v25 = v29 - 1;
  v12 = 0;
  v26 = v9;
  do
  {
    if (v12 >= v9)
    {
      BUG();
    }

    v13 = v12 + 1;
    if (__OFADD__(1, v12))
    {
      BUG();
    }

    v19 = v12 + v29;
    closure #2 in MLActivityClassifier.DataBatcher.asWeightedSamples(with:classLabels:labels:)(&v19, v21);
    v20 = v4;
    if (v4)
    {

      BUG();
    }

    v30 = v11;
    v14 = v11[2];
    v15 = v11[3];
    v16 = v14 + 1;
    if (v15 >> 1 <= v14)
    {
      v28 = v14 + 1;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 >= 2, v14 + 1, 1);
      v16 = v28;
      v11 = v30;
    }

    v11[2] = v16;
    (*(v24 + 32))(v11 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v14, v27, v23);
    if (v22 < v29)
    {
      BUG();
    }

    if ((v12 + v25 + 1) >= v22)
    {
      BUG();
    }

    ++v12;
    v17 = v13 == v26;
    v9 = v26;
    v4 = v20;
  }

  while (!v17);
  return v11;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySaySiGG_14NeuralNetworks6TensorVs5NeverOTg50128_s8CreateML20MLActivityClassifierV11DataBatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_t12SSGAOSgtKF14d9Networks6F13VSaySiGXEfU2_SaySSGTf1cn_n(uint64_t a1, uint64_t a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v26 = &v15;
  v20 = type metadata accessor for Tensor(0);
  v21 = *(v20 - 8);
  v6 = *(v21 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v19 = a1;
  v9 = *(a1 + 16);
  if (v9)
  {
    v27 = a2;
    v25 = v2;
    v28 = _swiftEmptyArrayStorage;
    v10 = 0;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v11 = v28;
    v23 = type metadata accessor for ComputeDevice(0);
    v22 = v9;
    v24 = &v15;
    do
    {
      v16 = *(v19 + 8 * v10 + 32);
      v17 = *(v27 + 16);
      __swift_storeEnumTagSinglePayload(v26, 1, 1, v23);

      v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
      v12 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Int] and conformance [A], &demangling cache variable for type metadata for [Int], &protocol conformance descriptor for [A]);
      Tensor.init<A>(oneHotAtIndices:depth:onValue:offValue:on:)(&v16, v17, v26, v18, v12, 1.0, 0.0);
      v28 = v11;
      v13 = v11[2];
      if (v11[3] >> 1 <= v13)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v11[3] >= 2uLL, v13 + 1, 1);
        v11 = v28;
      }

      ++v10;
      v11[2] = v13 + 1;
      (*(v21 + 32))(v11 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v13, v24, v20);
    }

    while (v22 != v10);
    v27;
  }

  else
  {
    a2;
    return _swiftEmptyArrayStorage;
  }

  return v11;
}

uint64_t MLActivityClassifier.Trainer.train(on:validationData:eventHandler:)(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v222 = v5;
  v210 = v6;
  v199 = a4;
  v198 = a3;
  v183 = v4;
  v180 = type metadata accessor for Event(0);
  v181 = *(v180 - 8);
  v7 = *(v181 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v182 = &v173;
  v192 = type metadata accessor for MetricsKey(0);
  v184 = *(v192 - 8);
  v10 = *(v184 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v185 = &v173;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v186 = &v173;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v179 = &v173;
  v174 = type metadata accessor for WeightedDataSample(0);
  v18 = *(*(v174 - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v175 = &v173;
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for WeightedDataSample?) - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v189 = &v173;
  v177 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>, WeightedDataSample>.Iterator);
  v24 = *(*(v177 - 8) + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v202 = &v173;
  v206 = type metadata accessor for Tensor(0);
  v197 = *(v206 - 8);
  v27 = *(v197 + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v187 = &v173;
  v30 = alloca(v27);
  v31 = alloca(v27);
  v178 = &v173;
  v32 = alloca(v27);
  v33 = alloca(v27);
  v176 = &v173;
  v34 = alloca(v27);
  v35 = alloca(v27);
  v213 = &v173;
  v219 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[WeightedDataSample], WeightedDataSample>);
  v208 = *(v219 - 8);
  v36 = *(v208 + 64);
  v37 = alloca(v36);
  v38 = alloca(v36);
  v190 = &v173;
  v39 = alloca(v36);
  v40 = alloca(v36);
  v214 = &v173;
  v220 = COERCE_DOUBLE(type metadata accessor for LearningPhase(0));
  v207 = *(*&v220 - 8);
  v41 = *(v207 + 8);
  v42 = alloca(v41);
  v43 = alloca(v41);
  v211 = COERCE_DOUBLE(&v173);
  v44 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for RegularizationKind?) - 8) + 64);
  v45 = alloca(v44);
  v46 = alloca(v44);
  v204 = &v173;
  v47 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for GradientClippingMode?) - 8) + 64);
  v48 = alloca(v47);
  v49 = alloca(v47);
  v203 = &v173;
  v50 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>) - 8) + 64);
  v51 = alloca(v50);
  v52 = alloca(v50);
  v215 = &v173;
  v191 = type metadata accessor for MLActivityClassifier.Model(0);
  v53 = *(*(v191 - 8) + 64);
  v54 = alloca(v53);
  v55 = alloca(v53);
  v193 = &v173;
  v56 = alloca(v53);
  v57 = alloca(v53);
  v221 = &v173;
  v216 = type metadata accessor for DataFrame(0);
  v217 = *(v216 - 8);
  v58 = *(v217 + 64);
  v59 = alloca(v58);
  v60 = alloca(v58);
  v61 = alloca(v58);
  v62 = alloca(v58);
  v212 = &v173;
  v63 = v222;
  result = MLActivityClassifier.Trainer.validateData(_:_:)(a1, a2);
  if (!v63)
  {
    v201 = &v173;
    v188 = a2;
    v65 = v212;
    (*(v217 + 16))(v212, a1, v216);
    v66 = *(type metadata accessor for MLActivityClassifier.Trainer(0) + 20);
    v67 = v210;
    v209 = *(v210 + v66 + 48);
    v68._countAndFlagsBits = v209;
    v222 = 0;
    v195 = *(v210 + v66 + 56);
    v68._object = v195;
    DataFrame.convertNumericColumnsToFloat(except:)(v68);
    v68._countAndFlagsBits = v65;
    v69 = v195;
    v218 = MLActivityClassifier.Trainer.getClassLabels(_:_:)(v68._countAndFlagsBits);
    v194 = *(v67 + v66 + 8);
    v200 = *(v67 + v66 + 32);
    v70 = *(v67 + v66 + 40);
    v196 = v66;
    LOBYTE(v67) = *(v67 + v66 + 16);

    v71 = v69;

    v72 = v218;

    MLActivityClassifier.Model.init(windowSize:features:target:classLabels:randomSeed:)(v200, v70, v209, v71, v72, v194, v67);
    v73 = type metadata accessor for GradientClippingMode(0);
    v74 = v203;
    __swift_storeEnumTagSinglePayload(v203, 1, 1, v73);
    v75 = type metadata accessor for RegularizationKind(0);
    v76 = v204;
    __swift_storeEnumTagSinglePayload(v204, 1, 1, v75);
    v209 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
    v77 = v191;
    Adam.init(for:learningRate:beta1:beta2:usesAMSGrad:epsilon:gradientClippingMode:regularizationKind:gradientScale:)(v221, 0, v74, v76, v191, v209, 0.001, 0.89999998, 0.99900001, 0.0000000099999999, 1.0);
    v78 = *&v211;
    v79 = v220;
    v80 = v207;
    (*(v207 + 13))(COERCE_DOUBLE(*&v211), enum case for LearningPhase.training(_:), COERCE_DOUBLE(*&v220));
    Layer.prepare(for:)(v78, v77, v209);
    v68._countAndFlagsBits = v78;
    v81 = v218;
    (*(v80 + 1))(v68._countAndFlagsBits, COERCE_DOUBLE(*&v79));
    v82 = v212;
    v83 = v222;
    MLActivityClassifier.Trainer.makeDataset(_:_:using:for:)(v81, v212, v221, 0);
    if (v83)
    {
      v81;
      outlined destroy of Tensor?(v215, &demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
      v84 = v82;
LABEL_4:
      (*(v217 + 8))(v84, v216);
      v85 = v221;
      return outlined destroy of MLActivityClassifier.ModelParameters(v85, type metadata accessor for MLActivityClassifier.Model);
    }

    v86 = ClassificationMetricsContainer.init(classLabels:)(v81);
    v222 = 0;
    v87 = v86;
    v89 = v88;
    v90 = *(v191 + 72);
    v91 = v221;
    v204 = v221 + v90;
    v92 = *(v221 + v90);
    v93 = *(v221 + v90 + 8);
    v94 = *(v221 + v90 + 16);
    v220 = v95;
    outlined consume of ClassificationMetricsContainer?(v92, v93, v94);
    *&v91[v90] = v87;
    *&v91[v90 + 8] = v89;
    *&v91[v90 + 16] = v220;
    v96 = *(v210 + v196);
    if (v96 < 0)
    {
      BUG();
    }

    v97 = v222;
    if (!v96)
    {
      goto LABEL_34;
    }

    v209 = &v91[v90 + 8];
    v203 = 0;
    v200 = v96;
    while (2)
    {
      if (*v204)
      {
        v98 = v97;
        v222 = *(v204 + 2);
        v99 = *(v222 + 16);
        v100 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
        swift_allocObject(v100, *(v100 + 48), *(v100 + 52));
        v101 = _MetricUtilities.ConfusionMatrixMeter.init(classCount:)(v99);
        if (v98)
        {
          v168 = v221;
          v169 = v219;
          v170 = v215;
          v218;
          (*(v208 + 8))(v214, v169);
          outlined destroy of Tensor?(v170, &demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
          (*(v217 + 8))(v212, v216);
          v85 = v168;
          return outlined destroy of MLActivityClassifier.ModelParameters(v85, type metadata accessor for MLActivityClassifier.Model);
        }

        v102 = v101;
        v103 = v204;

        *v103 = v102;
        v104 = *(v222 + 16);
        swift_allocObject(v100, *(v100 + 48), *(v100 + 52));
        v105 = _MetricUtilities.ConfusionMatrixMeter.init(classCount:)(v104);
        v97 = 0;
        v106 = v105;
        v107 = v209;
        v92 = *v209;

        *v107 = v106;
        v108 = v219;
      }

      else
      {
        v108 = v219;
      }

      v222 = v97;
      v194 = (v203 + 1);
      static Tensor.zero.getter(v92);
      v109 = v202;
      Dataset.makeIterator()(v108);
      v110 = *(v177 + 44);
      v207 = *(v109 + v110);
      v211 = *(v109 + v110 + 8);
      v220 = COERCE_DOUBLE(lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>.Iterator and conformance Batches<A>.Iterator, &demangling cache variable for type metadata for Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>.Iterator, &protocol conformance descriptor for Batches<A>.Iterator));
      while (1)
      {
        v111 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>.Iterator);
        dispatch thunk of IteratorProtocol.next()(v111, *&v220);
        v112 = LOBYTE(v205);
        v113 = v174;
        if (v205 == 0.0)
        {
          v114 = v189;
          v115 = v189;
          v116 = 1;
        }

        else
        {
          v173 = v205;
          v114 = v189;
          (v207)(&v173);
          v112;
          v115 = v114;
          v116 = 0;
        }

        __swift_storeEnumTagSinglePayload(v115, v116, 1, v113);
        v97 = v222;
        if (__swift_getEnumTagSinglePayload(v114, 1, v113) == 1)
        {
          break;
        }

        v117 = v175;
        outlined init with take of WeightedDataSample(v114, v175);
        static Task<>.checkCancellation()();
        if (v97)
        {
          v218;
          outlined destroy of MLActivityClassifier.ModelParameters(v117, type metadata accessor for WeightedDataSample);
          outlined destroy of Tensor?(v202, &demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>, WeightedDataSample>.Iterator);
          (*(v197 + 8))(v213, v206);
          (*(v208 + 8))(v214, v219);
          outlined destroy of Tensor?(v215, &demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
          v84 = v212;
          goto LABEL_4;
        }

        v118 = v176;
        MLActivityClassifier.Trainer.update(_:using:on:)(v221, v215, v117);
        v222 = 0;
        static Tensor.+= infix(_:_:)(v213, v118);
        (*(v197 + 8))(v118, v206);
        outlined destroy of MLActivityClassifier.ModelParameters(v117, type metadata accessor for WeightedDataSample);
      }

      outlined destroy of Tensor?(v202, &demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>, WeightedDataSample>.Iterator);
      if (!*v204)
      {
        BUG();
      }

      v119 = v178;
      _MetricUtilities.ConfusionMatrixMeter.value(normalized:)(0);
      v120 = *(v218 + 2);
      v220 = static _MetricUtilities.top1Accuracy(confusionMatrix:classCount:)(v119, v120);
      v121 = *(v197 + 8);
      v122 = v119;
      v123 = v206;
      v121(v122, v206);
      if (!v198)
      {
        v138 = v213;
        goto LABEL_33;
      }

      v196 = v120;
      v207 = v121;
      v124 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(MetricsKey, Double)>);
      v125 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MetricsKey, Double));
      v126 = *(v125 - 8);
      v195 = v125;
      v211 = *(v126 + 72);
      v127 = *(v126 + 80);
      v128 = (v127 + 32) & ~*(v126 + 80);
      v129 = swift_allocObject(v124, v128 + 2 * *&v211, v127 | 7);
      *(v129 + 16) = 2;
      *(v129 + 24) = 4;
      v130 = v199;

      static MetricsKey.trainingLoss.getter(v130);
      Tensor.scalar<A>(as:)(&type metadata for Double, &type metadata for Double, &protocol witness table for Double);
      v131 = *&v211 + v129 + v128;
      v132 = v195[12];
      static MetricsKey.trainingAccuracy.getter();
      v133 = v220;
      *(v132 + v131) = v220;
      v134 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey, &type metadata accessor for MetricsKey, &protocol conformance descriptor for MetricsKey);
      v220 = COERCE_DOUBLE(Dictionary.init(dictionaryLiteral:)(v129, v192, &type metadata for Double, v134));
      v135 = v179;
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v188, v179, &demangling cache variable for type metadata for DataFrame?);
      v136 = v216;
      if (__swift_getEnumTagSinglePayload(v135, 1, v216) == 1)
      {
        outlined destroy of Tensor?(v135, &demangling cache variable for type metadata for DataFrame?);
        v137 = v210;
LABEL_27:
        v143 = *&v220;
LABEL_32:
        v158 = *v137;
        v159 = v137[1];

        v160 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v143);
        v143;
        v161 = v182;
        Event.init(origin:itemCount:totalItemCount:metrics:)(v158, v159, v203, v200, 0, v160);
        v162 = v199;
        v163 = v198;
        v198(v161);
        _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v163, v162);
        (*(v181 + 8))(v161, v180);
        v97 = v222;
        v123 = v206;
        v138 = v213;
        v121 = v207;
LABEL_33:
        v92 = v138;
        v121(v138, v123);
        v203 = v194;
        v91 = v221;
        if (v194 != v200)
        {
          continue;
        }

LABEL_34:
        v218;
        v164.super.isa = MLActivityClassifier.Model.makeMLModel()().super.isa;
        if (v165)
        {
          (*(v208 + 8))(v214, v219);
          outlined destroy of Tensor?(v215, &demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
          (*(v217 + 8))(v212, v216);
        }

        else
        {
          isa = v164.super.isa;
          (*(v208 + 8))(v214, v219);
          outlined destroy of Tensor?(v215, &demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
          (*(v217 + 8))(v212, v216);
          v167 = *(v191 + 68);

          *&v91[v167] = isa;
          outlined init with copy of MLTrainingSessionParameters(v91, v183, type metadata accessor for MLActivityClassifier.Model);
        }

        v85 = v91;
        return outlined destroy of MLActivityClassifier.ModelParameters(v85, type metadata accessor for MLActivityClassifier.Model);
      }

      break;
    }

    v139 = v201;
    v140 = v135;
    v141 = v217;
    (*(v217 + 32))(v201, v140, v136);
    v142 = DataFrameProtocol.isEmpty.getter(v136, &protocol witness table for DataFrame);
    v137 = v210;
    if (v142)
    {
      (*(v141 + 8))(v139, v136);
      goto LABEL_27;
    }

    v144 = v221;
    v145 = v139;
    v146 = v193;
    outlined init with copy of MLTrainingSessionParameters(v221, v193, type metadata accessor for MLActivityClassifier.Model);
    v147 = v222;
    MLActivityClassifier.Trainer.makeDataset(_:_:using:for:)(v218, v145, v144, 1);
    if (!v147)
    {
      if (!*v204)
      {
        BUG();
      }

      v148 = v146;
      v149 = v190;
      MLActivityClassifier.Trainer.evaluate(model:using:classLabels:confussionMatrix:)(v148, v190, v218, v209);
      v211 = v133;
      v222 = 0;
      (*(v208 + 8))(v149, v219);
      outlined destroy of MLActivityClassifier.ModelParameters(v193, type metadata accessor for MLActivityClassifier.Model);
      v150 = v186;
      static MetricsKey.validationLoss.getter();
      v151 = v220;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*&v220);
      v205 = v151;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v150, isUniquelyReferenced_nonNull_native, v211);
      *&v153 = v205;
      v220 = *(v184 + 8);
      (*&v220)(v150, v192);
      v154 = v185;
      static MetricsKey.validationAccuracy.getter();
      if (!*v204)
      {
        BUG();
      }

      v155 = v187;
      _MetricUtilities.ConfusionMatrixMeter.value(normalized:)(0);
      v211 = static _MetricUtilities.top1Accuracy(confusionMatrix:classCount:)(v155, v196);
      v207(v155, v206);
      v156 = swift_isUniquelyReferenced_nonNull_native(v153);
      v205 = *&v153;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v154, v156, v211);
      v157 = v154;
      v143 = *&v205;
      (*&v220)(v157, v192);
      (*(v217 + 8))(v201, v216);
      v137 = v210;
      goto LABEL_32;
    }

    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v198, v199);
    v218;
    outlined destroy of MLActivityClassifier.ModelParameters(v146, type metadata accessor for MLActivityClassifier.Model);
    v171 = *(v217 + 8);
    v172 = v216;
    v171(v201, v216);
    SLOBYTE(v220);
    v207(v213, v206);
    (*(v208 + 8))(v214, v219);
    outlined destroy of Tensor?(v215, &demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
    v171(v212, v172);
    v85 = v221;
    return outlined destroy of MLActivityClassifier.ModelParameters(v85, type metadata accessor for MLActivityClassifier.Model);
  }

  return result;
}

uint64_t MLActivityClassifier.Trainer.init(checkpoint:configuration:)(uint64_t a1, uint64_t a2)
{
  ML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE03getD10Dictionary4fromSDySSSaySdGGAA11MLDataTableV_tKFZAA20MLActivityClassifierV7TrainerV0C9ContainerC_Tt0B5 = v3;
  v55 = a1;
  v5 = v2;
  v6 = *(*(type metadata accessor for MLActivityClassifier.Model(0) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v44 = &v29;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v43 = &v29;
  v53 = type metadata accessor for URL(0);
  v12 = *(v53 - 8);
  v13 = *(v12 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v50 = &v29;
  *v5 = 0xD00000000000001BLL;
  v5[1] = "missed_predicting_this" + 0x8000000000000000;
  v16 = type metadata accessor for MLActivityClassifier.Trainer(0);
  v17 = *(v16 + 24);
  *(v5 + v17) = 0;
  outlined init with copy of MLTrainingSessionParameters(a2, v5 + *(v16 + 20), type metadata accessor for MLActivityClassifier.Configuration);
  MLActivityClassifier.Trainer.initializeModel()();
  ML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE03getD10Dictionary4fromSDySSSaySdGGAA11MLDataTableV_tKFZAA20MLActivityClassifierV7TrainerV0C9ContainerC_Tt0B5 = v18;
  if (v18)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a2, type metadata accessor for MLActivityClassifier.Configuration);
    (*(v12 + 8))(v55, v53);
    return outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for MLActivityClassifier.Trainer);
  }

  else
  {
    v51 = a2;
    v52 = v12;
    v47 = *(v5 + v17);
    v48 = v5;
    if (!v47)
    {
      BUG();
    }

    v20 = v50;
    URL.appendingPathComponent(_:)(0x7461446C65646F6DLL, 0xE900000000000061);
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
    __dst[0] = 1;
    LOBYTE(v30[0]) = 1;
    v30[1] = 44;
    v30[2] = 0xE100000000000000;
    v30[3] = 0;
    v30[4] = 0xE000000000000000;
    v30[5] = 92;
    v30[6] = 0xE100000000000000;
    v31 = 1;
    v32 = 34;
    v33 = 0xE100000000000000;
    v34 = 1;
    v35 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
    v36 = 10;
    v37 = 0xE100000000000000;
    v38 = 0;
    v39 = 1;
    v40 = 0;
    outlined retain of MLDataTable.ParsingOptions(__src);
    outlined release of MLDataTable.ParsingOptions(v30);
    memcpy(__dst, __src, sizeof(__dst));
    v21 = ML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE03getD10Dictionary4fromSDySSSaySdGGAA11MLDataTableV_tKFZAA20MLActivityClassifierV7TrainerV0C9ContainerC_Tt0B5;
    MLDataTable.init(contentsOf:options:)(v20, __dst);
    if (v21)
    {
      outlined destroy of MLActivityClassifier.ModelParameters(v51, type metadata accessor for MLActivityClassifier.Configuration);
      (*(v52 + 8))(v55, v53);
      return outlined destroy of MLActivityClassifier.ModelParameters(v48, type metadata accessor for MLActivityClassifier.Trainer);
    }

    else
    {
      v22 = v45;
      v23 = v46;
      ML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE03getD10Dictionary4fromSDySSSaySdGGAA11MLDataTableV_tKFZAA20MLActivityClassifierV7TrainerV0C9ContainerC_Tt0B5 = _s8CreateML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE03getD10Dictionary4fromSDySSSaySdGGAA11MLDataTableV_tKFZAA20MLActivityClassifierV7TrainerV0C9ContainerC_Tt0B5(v45, v46, 0.0);
      v49 = v23;
      v50 = v22;
      v24 = v47 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model;
      swift_beginAccess(v47 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model, __dst, 0, 0);
      v25 = v24;
      v26 = v44;
      outlined init with copy of MLTrainingSessionParameters(v25, v44, type metadata accessor for MLActivityClassifier.Model);
      v27 = v43;
      v28 = ML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE03getD10Dictionary4fromSDySSSaySdGGAA11MLDataTableV_tKFZAA20MLActivityClassifierV7TrainerV0C9ContainerC_Tt0B5;
      _s14NeuralNetworks4AdamV8CreateMLE15createOptimizer3for20checkpointDictionaryACyxGx_SDySSSaySdGGtKFZAD20MLActivityClassifierV5ModelV_Tt2g5(v26, ML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE03getD10Dictionary4fromSDySSSaySdGGAA11MLDataTableV_tKFZAA20MLActivityClassifierV7TrainerV0C9ContainerC_Tt0B5);
      outlined destroy of MLActivityClassifier.ModelParameters(v26, type metadata accessor for MLActivityClassifier.Model);
      specialized _ModelCheckpoint<>.updateGraph<A>(from:optimizer:checkpointDictionary:)(v55, v27, v28);
      outlined consume of Result<_DataTable, Error>(v50, v49);
      v28;
      outlined destroy of MLActivityClassifier.ModelParameters(v51, type metadata accessor for MLActivityClassifier.Configuration);
      (*(v52 + 8))(v55, v53);
      return outlined destroy of Tensor?(v27, &demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
    }
  }
}

uint64_t *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs18EnumeratedSequenceVySay14NeuralNetworks6TensorVGG_8CreateML18WeightedDataSampleVs5NeverOTg506_sSi14f9Networks6h2V8i4ML18klm32VIgynr_Si6offset_AC7elementtAFs5N11OIegnrzr_TRSiAjOIgynr_Tf1cn_n(uint64_t a1, void (*a2)(uint64_t, char *), uint64_t a3)
{
  v28 = a3;
  v29 = a2;
  v3 = 0;
  v30 = *(type metadata accessor for WeightedDataSample(0) - 8);
  v4 = *(v30 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = &v26;
  v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (offset: Int, element: Tensor));
  v8 = *(*(v31 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v32 = &v26;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v33 = &v26;
  v35 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
  v13 = v35;
  v27 = *(a1 + 16);
  v34 = a1;

  while (v27 != v3)
  {
    v14 = type metadata accessor for Tensor(0);
    v15 = *(v14 - 8);
    v16 = v34 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + v3 * *(v15 + 72);
    v36 = v13;
    v17 = v31;
    v18 = v32;
    v19 = v32 + *(v31 + 48);
    *v32 = v3;
    (*(v15 + 16))(v19, v16, v14);
    v26 = v3;
    v20 = v33;
    outlined init with take of DataFrame?(v18, v33, &demangling cache variable for type metadata for (offset: Int, element: Tensor));
    v29(*v20, v20 + *(v17 + 48));
    v13 = v36;
    outlined destroy of Tensor?(v20, &demangling cache variable for type metadata for (offset: Int, element: Tensor));
    v35 = v13;
    v21 = v13[2];
    v22 = v13[3];
    v23 = v26;
    v24 = v7;
    if (v22 >> 1 <= v21)
    {
      v36 = v7;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22 >= 2, v21 + 1, 1);
      v24 = v36;
      v13 = v35;
    }

    v13[2] = v21 + 1;
    v7 = v24;
    outlined init with take of WeightedDataSample(v24, v13 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v21);
    v3 = v23 + 1;
  }

  v34;
  return v13;
}

uint64_t specialized Sequence.sorted(by:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v5 = specialized _copySequenceToContiguousArray<A>(_:)(a1, a2, a3);

  a1;
  v8[0] = v5;
  specialized MutableCollection<>.sort(by:)(v8);
  v6 = v8[0];
  if (v3)
  {
  }

  return v6;
}

uint64_t specialized Sequence.first(where:)(uint64_t a1, void *a2)
{
  v27 = a2;
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<String>>>);
  v7 = *(*(v28 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  (*(v3 + 16))(v20, v29, v2);
  v10 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<String>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<String>>, &protocol conformance descriptor for FilledColumn<A>);
  dispatch thunk of Sequence.makeIterator()(v2, v10);
  v25 = &v20[*(v28 + 36)];
  v11 = v2;
  v12 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<String>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<String>>, &protocol conformance descriptor for FilledColumn<A>);
  v23 = v27 + 7;
  v22 = v2;
  v26 = v20;
  for (i = v12; ; v12 = i)
  {
    v13 = v12;
    dispatch thunk of Collection.endIndex.getter(v11, v12);
    if (*v25 == v21[0])
    {
      break;
    }

    v28 = dispatch thunk of Collection.subscript.read(v21, v25, v11, v13);
    v29 = *v14;
    v15 = v14[1];

    (v28)(v21, 0);
    dispatch thunk of Collection.formIndex(after:)(v25, v11, i);
    v28 = v27[2];
    if (!v28)
    {
      goto LABEL_15;
    }

    if (v29 ^ v27[4] | v15 ^ v27[5] && (_stringCompareWithSmolCheck(_:_:expecting:)(v27[4], v27[5], v29, v15, 0) & 1) == 0)
    {
      if (v28 == 1)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v17 = 1;
      while (1)
      {
        if (__OFADD__(1, v17++))
        {
          BUG();
        }

        if (!(v29 ^ *(v16 - 1) | v15 ^ *v16) || (_stringCompareWithSmolCheck(_:_:expecting:)(*(v16 - 1), *v16, v29, v15, 0) & 1) != 0)
        {
          break;
        }

        v16 += 2;
        if (v17 == v28)
        {
          goto LABEL_15;
        }
      }
    }

    v15;
    v11 = v22;
  }

  v29 = 0;
LABEL_15:
  outlined destroy of Tensor?(v26, &demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<String>>>);
  v27;
  return v29;
}

uint64_t static MLActivityClassifier.Trainer.reshapeLabels(prediction:target:weights:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, void), void (*a6)(void, void))
{
  v67 = a6;
  v68 = a5;
  v71 = a3;
  v59 = a2;
  v60 = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v61 = &v57;
  v65 = type metadata accessor for TensorShape(0);
  v70 = *(v65 - 8);
  v9 = *(v70 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v63 = &v57;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v14 = type metadata accessor for Tensor(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v62 = &v57;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v66 = &v57;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v23 = &v57;
  v24 = alloca(v16);
  v25 = alloca(v16);
  v69 = &v57;
  Tensor.transposed(permutation:)(&outlined read-only object #0 of static MLActivityClassifier.Trainer.reshapeLabels(prediction:target:weights:));
  v26 = v68;
  v68 = *(v15 + 16);
  v68(&v57, v26, v14);
  v27 = v67;
  v28 = v71;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v67, v71, &demangling cache variable for type metadata for Tensor?);
  Tensor.shape.getter(v27, v28, v29);
  v30 = TensorShape.dimensions.getter();
  v31 = *(v30 + 16);
  v30;
  v32 = v65;
  v67 = *(v70 + 8);
  v67(&v57, v65);
  if (v31 == 3)
  {
    v33 = v66;
    Tensor.expandingShape(at:)(&outlined read-only object #1 of static MLActivityClassifier.Trainer.reshapeLabels(prediction:target:weights:));
    v70 = *(v15 + 8);
    (v70)(&v57, v14);
    v34 = *(v15 + 32);
    v34(&v57, v33, v14);
    if (!__swift_getEnumTagSinglePayload(v71, 1, v14))
    {
      v35 = v33;
      v36 = 1;
      v64 = &v57;
      v37 = v71;
      v68(v35, v71, v14);
      v38 = v63;
      Tensor.shape.getter(v35, v37, v39);
      (v70)(v35, v14);
      v40 = TensorShape.dimensions.getter();
      v41 = *(v40 + 16);
      v40;
      v67(v38, v65);
      if (v41 == 2)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v71, 1, v14);
        v43 = v61;
        v44 = v69;
        if (!EnumTagSinglePayload)
        {
          v45 = v66;
          v68(v66, v71, v14);
          v46 = v62;
          Tensor.expandingShape(at:)(&outlined read-only object #2 of static MLActivityClassifier.Trainer.reshapeLabels(prediction:target:weights:));
          (v70)(v45, v14);
          Tensor.expandingShape(at:)(&outlined read-only object #3 of static MLActivityClassifier.Trainer.reshapeLabels(prediction:target:weights:));
          v44 = v69;
          (v70)(v46, v14);
          v36 = 0;
        }

        __swift_storeEnumTagSinglePayload(v43, v36, 1, v14);
        outlined assign with take of Tensor?(v43, v71);
        v23 = v64;
        goto LABEL_11;
      }

      v23 = v64;
    }

    v44 = v69;
LABEL_11:
    v34(v60, v44, v14);
    return (v34)(v59, v23, v14);
  }

  v47 = v66;
  if (v31 != 2)
  {
    v57 = 0;
    v58 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    v50 = v58;
    v58;
    v57 = 0xD00000000000001ALL;
    v58 = "n the input data" + 0x8000000000000000;
    v51 = v63;
    Tensor.shape.getter(v50, v32, v52);
    v53 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type TensorShape and conformance TensorShape, &type metadata accessor for TensorShape, &protocol conformance descriptor for TensorShape);
    v54 = v65;
    v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(v65, v53);
    object = v55._object;
    String.append(_:)(v55);
    object;
    v67(v51, v54);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v57, v58, "CreateML/MLActivityClassifier+Training.swift", 44, 2, 360, 0);
    BUG();
  }

  v48 = v69;
  Tensor.reshaped(like:)(&v57);
  (*(v15 + 40))(v48, v47, v14);
  v34 = *(v15 + 32);
  v34(v60, v48, v14);
  return (v34)(v59, v23, v14);
}

void static MLCreateError.featureNotFound(feature:)(Swift::String a1)
{
  v2 = v1;
  _StringGuts.grow(_:)(49);
  0;
  *&v4 = 0x2065727574616546;
  *(&v4 + 1) = 0xEF206E6D756C6F63;
  String.append(_:)(a1);
  v3._object = " has an unsupported format: " + 0x8000000000000000;
  v3._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v3);
  *v2 = v4;
  *(v2 + 16) = 0;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
}

void *specialized Sequence.compactMap<A>(_:)(void (*a1)(void *), uint64_t a2)
{
  v31 = v2;
  i = v3;
  v28 = a2;
  v29 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<[String]>>);
  v9 = *(*(v35 - 1) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  (*(v5 + 16))(v25, i, v4);
  v12 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[String]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[String]>, &protocol conformance descriptor for Column<A>);
  dispatch thunk of Sequence.makeIterator()(v4, v12);
  v13 = v25;
  v14 = (v25 + *(v35 + 9));
  v15 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[String]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[String]>, &protocol conformance descriptor for Column<A>);
  v33 = _swiftEmptyArrayStorage;
  v30 = v4;
  v32 = v25;
  v35 = v14;
  for (i = v15; ; v15 = i)
  {
    dispatch thunk of Collection.endIndex.getter(v4, v15);
    if (*v14 == v25[0])
    {
      outlined destroy of Tensor?(v13, &demangling cache variable for type metadata for IndexingIterator<Column<[String]>>);
      return v33;
    }

    v27 = dispatch thunk of Collection.subscript.read(v25, v14, v4, i);
    v17 = *v16;

    v27(v25, 0);
    dispatch thunk of Collection.formIndex(after:)(v35, v4, i);
    v25[0] = v17;
    v18 = v31;
    v29(v25);
    if (v18)
    {
      break;
    }

    v31 = 0;
    v17;
    v19 = v26;
    if (v26)
    {
      v20 = v33;
      if (!swift_isUniquelyReferenced_nonNull_native(v33))
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
      }

      v21 = v20[2];
      v22 = v20;
      if (v20[3] >> 1 <= v21)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v20[3] >= 2uLL, v21 + 1, 1, v20);
      }

      v22[2] = v21 + 1;
      v33 = v22;
      v22[v21 + 4] = v19;
      v4 = v30;
      v13 = v32;
      v14 = v35;
    }

    else
    {
      v13 = v32;
      v14 = v35;
      v4 = v30;
    }
  }

  v17;
  outlined destroy of Tensor?(v32, &demangling cache variable for type metadata for IndexingIterator<Column<[String]>>);
  v23 = v33;
  v33;
  return v23;
}

{
  v50 = v2;
  v51 = v3;
  v41 = a2;
  v42 = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v43 = v39;
  v45 = type metadata accessor for Tensor(0);
  v47 = *(v45 - 8);
  v7 = *(v47 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v48 = v39;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v44 = v39;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  i = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<[Float]>>);
  v17 = *(*(i - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  (*(v13 + 16))(v39, v51, v12);
  v20 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[Float]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[Float]>, &protocol conformance descriptor for Column<A>);
  dispatch thunk of Sequence.makeIterator()(v12, v20);
  v21 = v39;
  v51 = (v39 + *(i + 36));
  v22 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[Float]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[Float]>, &protocol conformance descriptor for Column<A>);
  v23 = v12;
  v24 = v22;
  v53 = _swiftEmptyArrayStorage;
  v49 = v12;
  v46 = v39;
  for (i = v22; ; v24 = i)
  {
    v25 = v23;
    dispatch thunk of Collection.endIndex.getter(v23, v24);
    if (*v51 == v39[0])
    {
      outlined destroy of Tensor?(v21, &demangling cache variable for type metadata for IndexingIterator<Column<[Float]>>);
      return v53;
    }

    v40 = dispatch thunk of Collection.subscript.read(v39, v51, v25, v24);
    v27 = *v26;

    v40(v39, 0);
    dispatch thunk of Collection.formIndex(after:)(v51, v25, i);
    v39[0] = v27;
    v28 = v43;
    v29 = v50;
    v42(v39);
    v50 = v29;
    if (v29)
    {
      break;
    }

    v27;
    v30 = v45;
    v31 = v28;
    if (__swift_getEnumTagSinglePayload(v28, 1, v45) == 1)
    {
      outlined destroy of Tensor?(v28, &demangling cache variable for type metadata for Tensor?);
      v23 = v49;
    }

    else
    {
      v32 = *(v47 + 32);
      v33 = v44;
      v32(v44, v31, v30);
      v32(v48, v33, v30);
      v34 = v53;
      if (!swift_isUniquelyReferenced_nonNull_native(v53))
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34[2] + 1, 1, v34);
      }

      v35 = v34[2];
      v53 = v34;
      if (v34[3] >> 1 <= v35)
      {
        v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v34[3] >= 2uLL, v35 + 1, 1, v53);
      }

      v36 = v53;
      v53[2] = v35 + 1;
      v32((v36 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v35), v48, v45);
      v23 = v49;
    }

    v21 = v46;
  }

  v27;
  outlined destroy of Tensor?(v46, &demangling cache variable for type metadata for IndexingIterator<Column<[Float]>>);
  v37 = v53;
  v53;
  return v37;
}

void static MLCreateError.metricNotFound(metric:)(Swift::String a1)
{
  v2 = v1;
  _StringGuts.grow(_:)(36);
  0;
  *&v4 = 0x2063697274654DLL;
  *(&v4 + 1) = 0xE700000000000000;
  String.append(_:)(a1);
  v3._object = "Validation class " + 0x8000000000000000;
  v3._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v3);
  *v2 = v4;
  *(v2 + 16) = 0;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
}

void (*MLActivityClassifier.DataBatcher.asWeightedSamples(with:classLabels:labels:)(uint64_t a1, void (*a2)(uint64_t *, uint64_t)))(uint64_t *, uint64_t)
{
  v115 = v2;
  v95 = a2;
  v108 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v106 = *(v108 - 8);
  v4 = *(v106 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v105 = &v86;
  v109 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
  v107 = *(v109 - 8);
  v7 = *(v107 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v104 = &v86;
  v99 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v100 = *(v99 - 8);
  v10 = *(v100 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v93 = &v86;
  v91 = type metadata accessor for AnyColumn(0);
  ML20MLActivityClassifierV11DataBatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_t12SSGAOSgtKF14d9Networks6F9VSiXEfU0_SaySayAIGGTf1cn_n = *(v91 - 8);
  v13 = *(ML20MLActivityClassifierV11DataBatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_t12SSGAOSgtKF14d9Networks6F9VSiXEfU0_SaySayAIGGTf1cn_n + 8);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v92 = &v86;
  v101 = type metadata accessor for DataFrame.Rows(0);
  v116._object = *(v101 - 8);
  v16 = *(v116._object + 8);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v94 = &v86;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v112 = type metadata accessor for DataFrame(0);
  v111 = *(v112 - 8);
  v21 = *(v111 + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v24 = &v86;
  v96 = a1;
  v110 = *(a1 + 40);
  v25 = v3;
  DataFrame.rows.getter(0, a2, v26, v27);
  v28 = DataFrame.Rows.count.getter();
  countAndFlagsBits = *(v116._object + 1);
  countAndFlagsBits(&v86, v101);
  v30 = timestampSeed()();
  v31 = 0;
  v32 = v28;
  v103 = v25;
  v33 = v115;
  MLActivityClassifier.DataBatcher.generateBatch(startingAt:rowCount:seed:)(0, v28, v30);
  if (!v33)
  {
    v97 = countAndFlagsBits;
    v116._object = 0;
    countAndFlagsBits = _swiftEmptyArrayStorage;
    v98 = _swiftEmptyArrayStorage;
    v35 = v110;
    v36 = *(v110 + 16);
    v115 = &v86;
    if (v36)
    {

      v37 = (v35 + 40);
      countAndFlagsBits = _swiftEmptyArrayStorage;
      while (1)
      {
        v89 = v36;
        v114 = countAndFlagsBits;
        v38 = *(v37 - 1);
        v90 = v37;
        v39 = *v37;

        v116._countAndFlagsBits = v38;
        v40._countAndFlagsBits = v38;
        v40._object = v39;
        v41 = v24;
        v42 = DataFrame.indexOfColumn(_:)(v40);
        countAndFlagsBits = ML20MLActivityClassifierV11DataBatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_t12SSGAOSgtKF14d9Networks6F9VSiXEfU0_SaySayAIGGTf1cn_n;
        if (v42.is_nil)
        {
          goto LABEL_16;
        }

        value = v42.value;
        v44 = DataFrame.columns.getter(v40._countAndFlagsBits);
        if (value < 0)
        {
          BUG();
        }

        v45 = v44;
        if (value >= *(v44 + 16))
        {
          BUG();
        }

        v46 = ((*(countAndFlagsBits + 80) + 32) & ~*(countAndFlagsBits + 80)) + v44 + *(countAndFlagsBits + 9) * value;
        v102 = v39;
        v47 = v92;
        countAndFlagsBits = v91;
        (*(ML20MLActivityClassifierV11DataBatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_t12SSGAOSgtKF14d9Networks6F9VSiXEfU0_SaySayAIGGTf1cn_n + 2))(v92, v46, v91);
        v45;
        v48 = AnyColumn.wrappedElementType.getter(v45);
        v49 = v47;
        v39 = v102;
        (*(ML20MLActivityClassifierV11DataBatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_t12SSGAOSgtKF14d9Networks6F9VSiXEfU0_SaySayAIGGTf1cn_n + 1))(v49, countAndFlagsBits);
        v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
        v41 = v115;
        if (v48 != v50)
        {
LABEL_16:
          v110;
          v55 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v55, 0, 0);
          v56._countAndFlagsBits = v116._countAndFlagsBits;
          v56._object = v39;
          static MLCreateError.featureNotFound(feature:)(v56);
          v39;
          swift_willThrow();
          (*(v111 + 8))(v41, v112);
          v57 = v114;
          goto LABEL_23;
        }

        v51 = v93;
        countAndFlagsBits = v116._countAndFlagsBits;
        DataFrame.subscript.getter(v116._countAndFlagsBits, v39, v50);

        object = v116._object;
        ML20MLActivityClassifierV11e88BatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_u12SSGAOSgtKF14g9Networks6I15VSaySdGSgKXEfU_SSTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData6ColumnVySaySdGG_14NeuralNetworks6TensorVsAE_pTg5036_s8CreateML20MLActivityClassifierV11e88BatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_u12SSGAOSgtKF14g9Networks6I15VSaySdGSgKXEfU_SSTf1cn_n(v51, countAndFlagsBits, v39);
        v116._object = object;
        if (object)
        {
          break;
        }

        v116._countAndFlagsBits = ML20MLActivityClassifierV11e88BatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_u12SSGAOSgtKF14g9Networks6I15VSaySdGSgKXEfU_SSTf1cn_n;
        v32 = v99;
        (*(v100 + 8))(v51, v99);
        v39;
        countAndFlagsBits = v114;
        if (!swift_isUniquelyReferenced_nonNull_native(v114))
        {
          v32 = *(countAndFlagsBits + 2) + 1;
          countAndFlagsBits = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 1, countAndFlagsBits);
        }

        v54 = *(countAndFlagsBits + 2);
        if (*(countAndFlagsBits + 3) >> 1 <= v54)
        {
          v32 = v54 + 1;
          countAndFlagsBits = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(countAndFlagsBits + 3) >= 2uLL, v54 + 1, 1, countAndFlagsBits);
        }

        *(countAndFlagsBits + 2) = v54 + 1;
        *(countAndFlagsBits + v54 + 4) = v116._countAndFlagsBits;
        v98 = countAndFlagsBits;
        v37 = v90 + 2;
        v36 = (v89 - 1);
        v24 = v115;
        if (v89 == (&dword_0 + 1))
        {
          v58 = v110;
          v31 = v110;
          v110;
          v59 = *(v58 + 16);
          goto LABEL_18;
        }
      }

      (*(v100 + 8))(v51, v99);
      v110;
      (*(v111 + 8))(v41, v112);
      v114;
      v39;
    }

    else
    {
      v59 = 0;
LABEL_18:
      if (v59 == *(countAndFlagsBits + 2))
      {
        v114 = countAndFlagsBits;
        v60 = v94;
        DataFrame.rows.getter(v31, v32, v34, v111);
        v61 = DataFrame.Rows.count.getter();
        v97(v60, v101);
        if (v61 < 0)
        {
          BUG();
        }

        v62 = v116._object;
        ML20MLActivityClassifierV11DataBatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_t12SSGAOSgtKF14d9Networks6F9VSiXEfU0_SaySayAIGGTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_14NeuralNetworks6TensorVs5NeverOTg50128_s8CreateML20MLActivityClassifierV11DataBatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_t12SSGAOSgtKF14d9Networks6F9VSiXEfU0_SaySayAIGGTf1cn_n(0, v61, &v98);
        v116._countAndFlagsBits = v62;
        v116._object = *(v96 + 48);
        v63 = *(v96 + 56);
        v87 = v116._object;
        v88 = v63;

        v64._countAndFlagsBits = 0x7468676965775FLL;
        v64._object = 0xE700000000000000;
        String.append(_:)(v64);
        v65 = v87;
        v66 = v88;
        v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
        v64._countAndFlagsBits = v65;
        v68 = v115;
        DataFrame.subscript.getter(v64._countAndFlagsBits, v66, v67);
        v66;
        v69 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
        v70 = v105;
        DataFrame.subscript.getter(v116._object, v63, v69);
        v116._object = &v86;
        v71 = alloca(32);
        v72 = alloca(32);
        countAndFlagsBits = v95;
        v88 = v95;
        v89 = v103;
        v73 = v116._countAndFlagsBits;
        v74 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #3 in MLActivityClassifier.DataBatcher.asWeightedSamples(with:classLabels:labels:), &v86);
        if (v73)
        {
          ML20MLActivityClassifierV11DataBatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_t12SSGAOSgtKF14d9Networks6F9VSiXEfU0_SaySayAIGGTf1cn_n;
          (*(v106 + 8))(v70, v108);
          (*(v107 + 8))(v104, v109);
          (*(v111 + 8))(v68, v112);
          v114;
        }

        else
        {
          v78 = v74;

          v116._countAndFlagsBits = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySaySiGG_14NeuralNetworks6TensorVs5NeverOTg50128_s8CreateML20MLActivityClassifierV11DataBatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_t12SSGAOSgtKF14d9Networks6F13VSaySiGXEfU2_SaySSGTf1cn_n(v78, countAndFlagsBits);
          v78;
          v79 = alloca(24);
          v80 = alloca(32);
          v88 = v103;
          v81 = v104;
          v82 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #5 in MLActivityClassifier.DataBatcher.asWeightedSamples(with:classLabels:labels:), &v86);
          v83 = v82;
          v102 = &v86;
          v84 = alloca(32);
          v85 = alloca(32);
          v88 = v116._countAndFlagsBits;
          v89 = v82;
          LOBYTE(v78) = ML20MLActivityClassifierV11DataBatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_t12SSGAOSgtKF14d9Networks6F9VSiXEfU0_SaySayAIGGTf1cn_n;
          countAndFlagsBits = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs18EnumeratedSequenceVySay14NeuralNetworks6TensorVGG_8CreateML18WeightedDataSampleVs5NeverOTg506_sSi14f9Networks6h2V8i4ML18klm32VIgynr_Si6offset_AC7elementtAFs5N11OIegnrzr_TRSiAjOIgynr_Tf1cn_n(ML20MLActivityClassifierV11DataBatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_t12SSGAOSgtKF14d9Networks6F9VSiXEfU0_SaySayAIGGTf1cn_n, partial apply for closure #6 in MLActivityClassifier.DataBatcher.asWeightedSamples(with:classLabels:labels:), &v86);
          v116._object = 0;
          v78;
          (*(v106 + 8))(v105, v108);
          (*(v107 + 8))(v81, v109);
          (*(v111 + 8))(v115, v112);
          v114;
          v83;
          v116._countAndFlagsBits;
        }
      }

      else
      {
        v75 = v111;
        v76 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v76, 0, 0);
        static MLCreateError.featureCountMismatch(expected:actual:)();
        swift_willThrow();
        (*(v75 + 8))(v115, v112);
        v57 = countAndFlagsBits;
LABEL_23:
        v57;
      }
    }
  }

  return countAndFlagsBits;
}

uint64_t MLActivityClassifier.Trainer.iterateTraining(using:validationSamples:)(uint64_t a1, uint64_t a2)
{
  v131 = a2;
  v134 = a1;
  v126 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[WeightedDataSample], WeightedDataSample>.PrefetchMode);
  v125 = *(v126 - 8);
  v4 = *(v125 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v124 = &v114;
  v144 = type metadata accessor for MLActivityClassifier.Model(0);
  v7 = *(*(v144 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v135 = &v114;
  v10 = type metadata accessor for MLActivityClassifier.Trainer(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v137 = &v114;
  v133 = type metadata accessor for WeightedDataSample(0);
  v14 = *(*(v133 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v139 = &v114;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for WeightedDataSample?) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v136 = &v114;
  v140 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>, WeightedDataSample>.Iterator);
  v20 = *(*(v140 - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v150 = COERCE_DOUBLE(&v114);
  v143 = type metadata accessor for Tensor(0);
  v146 = *(v143 - 8);
  v23 = *(v146 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v132 = &v114;
  v26 = alloca(v23);
  v27 = alloca(v23);
  v123 = &v114;
  v28 = alloca(v23);
  v29 = alloca(v23);
  v129 = &v114;
  v30 = alloca(v23);
  v31 = alloca(v23);
  v142 = &v114;
  v141 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[WeightedDataSample], WeightedDataSample>);
  v138 = *(v141 - 8);
  v32 = *(v138 + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v127 = &v114;
  v35 = alloca(v32);
  v36 = alloca(v32);
  v145 = &v114;
  v37 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActivityClassifier.Model?) - 8) + 64);
  v38 = alloca(v37);
  v39 = alloca(v37);
  v147 = &v114;
  v40 = alloca(v37);
  v41 = alloca(v37);
  v130 = v10;
  v42 = *(v10 + 24);
  v149 = v3;
  v43 = *(v3 + v42);
  if (v43)
  {
    v44 = OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model + v43;
    swift_beginAccess(v44, v117, 0, 0);
    outlined init with copy of MLTrainingSessionParameters(v44, &v114, type metadata accessor for MLActivityClassifier.Model);
    __swift_storeEnumTagSinglePayload(&v114, 0, 1, v144);
    outlined destroy of Tensor?(&v114, &demangling cache variable for type metadata for MLActivityClassifier.Model?);
    v45 = v149;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(&v114, 1, 1, v144);
    outlined destroy of Tensor?(&v114, &demangling cache variable for type metadata for MLActivityClassifier.Model?);
    v52 = v149;
    MLActivityClassifier.Trainer.initializeModel()();
    if (v2)
    {
      return v42;
    }

    v45 = v52;
  }

  v148 = v2;
  v46 = *(v45 + v42);
  if (!v46)
  {
    v113 = v147;
    __swift_storeEnumTagSinglePayload(v147, 1, 1, v144);
    outlined destroy of Tensor?(v113, &demangling cache variable for type metadata for MLActivityClassifier.Model?);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001CLL, ("ifier7Trainer14ModelContainer" + 0x8000000000000000), "CreateML/MLActivityClassifier+Training.swift", 44, 2, 226, 0);
    BUG();
  }

  v47 = v46 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model;
  swift_beginAccess(v46 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model, v116, 0, 0);
  v48 = v147;
  outlined init with copy of MLTrainingSessionParameters(v47, v147, type metadata accessor for MLActivityClassifier.Model);
  v49 = v144;
  __swift_storeEnumTagSinglePayload(v48, 0, 1, v144);
  outlined destroy of Tensor?(v48, &demangling cache variable for type metadata for MLActivityClassifier.Model?);
  v147 = v46;
  v42 = MLActivityClassifier.Trainer.ModelContainer.model.modify(v128);
  if (*(v50 + *(v49 + 72)))
  {
    ClassificationMetricsContainer.resetIteration()();
    if (v51)
    {
      (v42)(v128, 1);
      return v42;
    }

    (v42)(v128, 0);
  }

  else
  {
    (v42)(v128, 0);
    v51 = v148;
  }

  v53 = v149 + *(v130 + 20);
  specialized Sequence<>.makeDataset(configuration:)(v53, v134);
  if (!v51)
  {
    v148 = 0;
    static Tensor.zero.getter(v53);
    v54 = v150;
    Dataset.makeIterator()(v141);
    v55 = *(v140 + 44);
    v121 = *(*&v54 + v55);
    v122 = *(*&v54 + v55 + 8);
    v140 = v147 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model;
    v147 = (v147 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_optimizer);
    v134 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>.Iterator and conformance Batches<A>.Iterator, &demangling cache variable for type metadata for Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>.Iterator, &protocol conformance descriptor for Batches<A>.Iterator);
    v56 = v129;
    while (1)
    {
      v57 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>.Iterator);
      dispatch thunk of IteratorProtocol.next()(v57, v134);
      v58 = v128[0];
      if (v128[0])
      {
        v119[0] = v128[0];
        v59 = v136;
        v121(v119);
        v60 = v59;
        v56 = v129;
        v58;
        v61 = v59;
        v62 = 0;
      }

      else
      {
        v60 = v136;
        v61 = v136;
        v62 = 1;
      }

      v63 = v133;
      __swift_storeEnumTagSinglePayload(v61, v62, 1, v133);
      if (__swift_getEnumTagSinglePayload(v60, 1, v63) == 1)
      {
        break;
      }

      v42 = v139;
      outlined init with take of WeightedDataSample(v60, v139);
      v64 = v148;
      static Task<>.checkCancellation()();
      if (v64)
      {
        outlined destroy of MLActivityClassifier.ModelParameters(v42, type metadata accessor for WeightedDataSample);
        outlined destroy of Tensor?(*&v150, &demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>, WeightedDataSample>.Iterator);
        (*(v146 + 8))(v142, v143);
        (*(v138 + 8))(v145, v141);
        return v42;
      }

      v65 = v140;
      v148 = 0;
      swift_beginAccess(v140, v128, 33, 0);
      v66 = v147;
      swift_beginAccess(v147, v119, 33, 0);
      v67 = v65;
      v42 = v139;
      v68 = v148;
      MLActivityClassifier.Trainer.update(_:using:on:)(v67, v66, v139);
      if (v68)
      {
        swift_endAccess(v119);
        swift_endAccess(v128);
        outlined destroy of MLActivityClassifier.ModelParameters(v42, type metadata accessor for WeightedDataSample);
        outlined destroy of Tensor?(*&v150, &demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>, WeightedDataSample>.Iterator);
        (*(v146 + 8))(v142, v143);
        (*(v138 + 8))(v145, v141);
        return v42;
      }

      v148 = 0;
      swift_endAccess(v119);
      swift_endAccess(v128);
      static Tensor.+= infix(_:_:)(v142, v56);
      (*(v146 + 8))(v56, v143);
      outlined destroy of MLActivityClassifier.ModelParameters(v42, type metadata accessor for WeightedDataSample);
    }

    outlined destroy of Tensor?(*&v150, &demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>, WeightedDataSample>.Iterator);
    v69 = v140;
    swift_beginAccess(v140, v119, 0, 0);
    v70 = v144;
    v71 = v123;
    if (!*(v69 + *(v144 + 72)))
    {
      BUG();
    }

    _MetricUtilities.ConfusionMatrixMeter.value(normalized:)(0);

    v72 = *(v70 + 72);
    v73 = v71;
    v74 = *(v69 + v72);
    if (!v74)
    {
      BUG();
    }

    v75 = v69;
    v76 = *(v69 + v72 + 8);
    v77 = *(v75 + v72 + 16);

    outlined copy of ClassificationMetricsContainer?(v74, v76, v77);
    v77;

    v78 = *(v77 + 16);
    v77;
    v150 = static _MetricUtilities.top1Accuracy(confusionMatrix:classCount:)(v73, v78);
    v139 = *(v146 + 8);
    v139(v73, v143);
    v79 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(MLProgress.Metric, Double)>);
    inited = swift_initStackObject(v79, v115);
    *(inited + 16) = 2;
    *(inited + 24) = 4;
    *(inited + 32) = 0;
    Tensor.scalar<A>(as:)(&type metadata for Double, &type metadata for Double, &protocol witness table for Double);
    *(inited + 48) = 3;
    v81 = *&v150;
    *(inited + 56) = v150;
    v82 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
    v42 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for MLProgress.Metric, &type metadata for Double, v82);
    if (v131)
    {
      v83 = v145;
      if (*(v131 + 16))
      {
        v84 = v137;
        outlined init with copy of MLTrainingSessionParameters(v149, v137, type metadata accessor for MLActivityClassifier.Trainer);
        v85 = v140;
        outlined init with copy of MLTrainingSessionParameters(v140, v135, type metadata accessor for MLActivityClassifier.Model);
        v86 = v144;
        v149 = *(v85 + *(v144 + 60));
        swift_beginAccess(v85, v118, 33, 0);
        v87 = *(v86 + 72);
        if (!*(v85 + v87))
        {
          BUG();
        }

        *&v150 = v85 + v87 + 8;
        v88 = *(v130 + 20);
        v120 = v131;
        v136 = *(v84 + v88 + 24);
        v89 = type metadata accessor for ShuffleSampler(0);
        v90 = v84;
        v91 = v89;
        v146 = *(v90 + v88 + 8);
        LODWORD(v88) = *(v90 + v88 + 16);

        v92 = ShuffleSampler.__allocating_init(seed:)(v146, v88);
        v128[3] = v91;
        v128[4] = &protocol witness table for ShuffleSampler;
        v128[0] = v92;
        v93 = v124;
        (*(v125 + 104))(v124, enum case for Dataset.PrefetchMode.serial<A, B>(_:), v126);
        v146 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [WeightedDataSample]);
        v147 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [WeightedDataSample] and conformance [A], &demangling cache variable for type metadata for [WeightedDataSample], &protocol conformance descriptor for [A]);
        v94 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type WeightedDataSample and conformance WeightedDataSample, type metadata accessor for WeightedDataSample, &protocol conformance descriptor for WeightedDataSample);
        v95 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type WeightedDataSample and conformance WeightedDataSample, type metadata accessor for WeightedDataSample, &protocol conformance descriptor for WeightedDataSample);
        v96 = v127;
        Dataset.init<>(samples:batchSize:batchSampler:dropsLastPartialBatch:prefetchMode:transform:)(&v120, v136, v128, 0, v93, 0, 0, v146, v133, v147, v94, v95);
        v97 = v135;
        v98 = v148;
        MLActivityClassifier.Trainer.evaluate(model:using:classLabels:confussionMatrix:)(v135, v96, v149, *&v150);
        if (v98)
        {
          v99 = *(v138 + 8);
          v100 = v141;
          v99(v96, v141);
          outlined destroy of MLActivityClassifier.ModelParameters(v137, type metadata accessor for MLActivityClassifier.Trainer);
          swift_endAccess(v118);
          v149;
          v42;
          v139(v142, v143);
          v99(v145, v100);
          outlined destroy of MLActivityClassifier.ModelParameters(v135, type metadata accessor for MLActivityClassifier.Model);
          return v42;
        }

        v148 = 0;
        v150 = *&v81;
        (*(v138 + 8))(v96, v141);
        outlined destroy of MLActivityClassifier.ModelParameters(v137, type metadata accessor for MLActivityClassifier.Trainer);
        swift_endAccess(v118);
        v149;
        outlined destroy of MLActivityClassifier.ModelParameters(v97, type metadata accessor for MLActivityClassifier.Model);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v42);
        v128[0] = v42;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(4, isUniquelyReferenced_nonNull_native, v150);
        v103 = v144;
        v104 = v140;
        if (!*(v140 + *(v144 + 72)))
        {
          BUG();
        }

        v149 = v128[0];

        _MetricUtilities.ConfusionMatrixMeter.value(normalized:)(0);

        v105 = *(v103 + 72);
        v106 = *(v104 + v105);
        if (!v106)
        {
          BUG();
        }

        v107 = *(v104 + v105 + 8);
        v108 = *(v104 + v105 + 16);
        outlined copy of ClassificationMetricsContainer?(v106, v107, v108);

        v109 = *(v108 + 16);
        v108;
        v110 = v132;
        v150 = static _MetricUtilities.top1Accuracy(confusionMatrix:classCount:)(v132, v109);
        v139(v110, v143);
        v111 = v149;
        v112 = swift_isUniquelyReferenced_nonNull_native(v149);
        v128[0] = v111;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(5, v112, v150);
        v42 = v128[0];
        v83 = v145;
      }
    }

    else
    {
      v83 = v145;
    }

    v139(v142, v143);
    (*(v138 + 8))(v83, v141);
  }

  return v42;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLActivityClassifier.Trainer.initializeModel()()
{
  v70 = v0;
  v72 = v1;
  v73 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v2 = *(*(v73 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v62 = &v56;
  v63 = type metadata accessor for MLActivityClassifier.Model(0);
  v5 = *(*(v63 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v60 = &v56;
  v8 = type metadata accessor for MLActivityClassifier.Trainer(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v69 = &v56;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v58 = &v56;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v68 = &v56;
  v17 = alloca(v12);
  v18 = alloca(v12);
  v19 = type metadata accessor for DataFrame(0);
  v66 = *(v19 - 8);
  v20 = *(v66 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v61 = v8;
  v23 = v72 + *(v8 + 20);
  v59 = v23 + *(v73 + 44);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v59, &v56, &demangling cache variable for type metadata for DataFrame?);
  v71 = v19;
  if (__swift_getEnumTagSinglePayload(&v56, 1, v19) == 1)
  {
    outlined destroy of Tensor?(&v56, &demangling cache variable for type metadata for DataFrame?);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000019, ("Failed to initalize training" + 0x8000000000000000), "CreateML/MLActivityClassifier+Training.swift", 44, 2, 195, 0);
    BUG();
  }

  v24 = v66;
  (*(v66 + 32))(&v56, &v56, v71);
  v25 = *(v73 + 48);
  v67 = v23;
  v26 = v68;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v23 + v25, v68, &demangling cache variable for type metadata for DataFrame?);
  v27 = v70;
  MLActivityClassifier.Trainer.validateData(_:_:)(&v56, v26);
  v73 = v27;
  v28 = v26;
  v29 = v71;
  v30 = &v56;
  if (v27)
  {
    goto LABEL_6;
  }

  v31._object = *(v67 + 56);
  v64 = *(v67 + 48);
  v31._countAndFlagsBits = v64;
  object = v31._object;
  DataFrame.convertNumericColumnsToFloat(except:)(v31);
  v32 = v29;
  v33 = v24;
  v34 = v59;
  outlined destroy of Tensor?(v59, &demangling cache variable for type metadata for DataFrame?);
  v70 = &v56;
  (*(v33 + 16))(v34, &v56, v32);
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v32);
  v35 = v69;
  outlined init with copy of MLTrainingSessionParameters(v72, v69, type metadata accessor for MLActivityClassifier.Trainer);
  v31._countAndFlagsBits = v34;
  v36 = v32;
  v37 = v58;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v31._countAndFlagsBits, v58, &demangling cache variable for type metadata for DataFrame?);
  if (__swift_getEnumTagSinglePayload(v37, 1, v36) == 1)
  {
    BUG();
  }

  v38 = MLActivityClassifier.Trainer.getClassLabels(_:_:)(v37);
  outlined destroy of MLActivityClassifier.ModelParameters(v35, type metadata accessor for MLActivityClassifier.Trainer);
  v69 = *(v33 + 8);
  v69(v37, v71);
  v39 = v62;
  outlined init with copy of MLTrainingSessionParameters(v67, v62, type metadata accessor for MLActivityClassifier.Configuration);

  v40 = v60;
  MLActivityClassifier.Model.init(classLabels:randomSeed:trainingConfiguration:)(v38, 0, 1u, v39);
  v41 = type metadata accessor for MLActivityClassifier.Trainer.ModelContainer(0);
  v42 = swift_allocObject(v41, *(v41 + 48), *(v41 + 52));
  MLActivityClassifier.Trainer.ModelContainer.init(model:)(v40);
  v43 = *(v61 + 24);
  v44 = v72;

  *(v44 + v43) = v42;
  v45 = v73;
  v46 = ClassificationMetricsContainer.init(classLabels:)(v38);
  if (v45)
  {
    v73 = v45;
    v28 = v68;
    v29 = v71;
    v30 = v70;
    v24 = v66;
LABEL_6:
    outlined destroy of Tensor?(v28, &demangling cache variable for type metadata for DataFrame?);
    (*(v24 + 8))(v30, v29);
    return;
  }

  v49 = v47;
  v50 = v48;
  v72 = v46;
  outlined destroy of Tensor?(v68, &demangling cache variable for type metadata for DataFrame?);
  v69(v70, v71);
  v51 = OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model + v42;
  swift_beginAccess(v51, v57, 1, 0);
  v52 = *(v63 + 72);
  v53 = *(v52 + v51);
  v54 = *(v52 + v51 + 8);
  v55 = *(v52 + v51 + 16);
  *(v52 + v51) = v72;
  *(v52 + v51 + 8) = v49;
  *(v52 + v51 + 16) = v50;
  outlined consume of ClassificationMetricsContainer?(v53, v54, v55);
}

uint64_t _s14NeuralNetworks4AdamV8CreateMLE15createOptimizer3for20checkpointDictionaryACyxGx_SDySSSaySdGGtKFZAD20MLActivityClassifierV5ModelV_Tt2g5(uint64_t a1, uint64_t a2)
{
  v31[0] = a1;
  v31[1] = v2;
  v3 = 0xEC00000065746152;
  v4 = 0x676E696E7261656CLL;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for RegularizationKind?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v32 = v31;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for GradientClippingMode?) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v34 = v31;
  v11 = specialized Dictionary.subscript.getter(0x676E696E7261656CLL, 0xEC00000065746152, a2);
  if (!v11)
  {
    goto LABEL_15;
  }

  if (*(v11 + 16) != 1)
  {
    goto LABEL_14;
  }

  v3 = 0xE500000000000000;
  v4 = 0x3161746562;
  v36 = *(v11 + 32);
  v11;
  v11 = specialized Dictionary.subscript.getter(0x3161746562, 0xE500000000000000, a2);
  if (v11)
  {
    if (*(v11 + 16) != 1)
    {
LABEL_14:
      v11;
      goto LABEL_15;
    }

    v4 = 0x3261746562;
    v37 = *(v11 + 32);
    v11;
    v11 = specialized Dictionary.subscript.getter(0x3261746562, 0xE500000000000000, a2);
    if (v11)
    {
      if (*(v11 + 16) == 1)
      {
        v12 = 0xEB00000000646172;
        v13 = 0x47534D4173657375;
        v38 = *(v11 + 32);
        v11;
        v14 = specialized Dictionary.subscript.getter(0x47534D4173657375, 0xEB00000000646172, a2);
        if (v14)
        {
          if (*(v14 + 16) != 1)
          {
            goto LABEL_17;
          }

          v12 = 0xE700000000000000;
          v13 = 0x6E6F6C69737065;
          v39[0] = *(v14 + 32);
          v14;
          v14 = specialized Dictionary.subscript.getter(0x6E6F6C69737065, 0xE700000000000000, a2);
          if (!v14)
          {
            goto LABEL_18;
          }

          if (*(v14 + 16) != 1)
          {
LABEL_17:
            v14;
            goto LABEL_18;
          }

          v12 = 0xED0000656C616353;
          v13 = 0x746E656964617267;
          v33 = *(v14 + 32);
          v14;
          v14 = specialized Dictionary.subscript.getter(0x746E656964617267, 0xED0000656C616353, a2);
          if (v14)
          {
            if (*(v14 + 16) == 1)
            {
              v15.f64[0] = 1.0;
              v16 = *&_mm_cmpeq_sd(v39[0], v15) & 1;
              v17 = *(v14 + 32);
              *v39 = v17;
              v14;
              v18 = v36;
              v35 = v18;
              v19 = v37;
              *&v37 = v19;
              v20 = v38;
              *&v38 = v20;
              v21 = v33;
              *&v36 = v21;
              v22 = type metadata accessor for GradientClippingMode(0);
              __swift_storeEnumTagSinglePayload(v34, 1, 1, v22);
              v23 = type metadata accessor for RegularizationKind(0);
              v24 = v32;
              __swift_storeEnumTagSinglePayload(v32, 1, 1, v23);
              v25 = type metadata accessor for MLActivityClassifier.Model(0);
              v26 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
              return Adam.init(for:learningRate:beta1:beta2:usesAMSGrad:epsilon:gradientClippingMode:regularizationKind:gradientScale:)(v31[0], v16, v34, v24, v25, v26, v35, *&v37, *&v38, *&v36, *v39);
            }

            goto LABEL_17;
          }
        }

LABEL_18:
        v30 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v30, 0, 0);
        v29._countAndFlagsBits = v13;
        v29._object = v12;
        goto LABEL_16;
      }

      goto LABEL_14;
    }
  }

LABEL_15:
  v28 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v28, 0, 0);
  v29._countAndFlagsBits = v4;
  v29._object = v3;
LABEL_16:
  static MLCreateError.checkoutDictionaryMissingOrInvalidValue(key:)(v29);
  return swift_willThrow();
}

uint64_t MLActivityClassifier.Trainer.validateData(_:_:)(uint64_t a1, void *a2)
{
  v92 = v2;
  v82._object = a2;
  v96 = a1;
  v86 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v85 = *(v86 - 8);
  v4 = *(v85 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v89 = &v76;
  v88 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v87 = *(v88 - 8);
  v7 = *(v87 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v90 = &v76;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v83 = &v76;
  v13 = type metadata accessor for DataFrame(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v100 = &v76;
  v94 = type metadata accessor for AnyColumn(0);
  v79 = *(v94 - 8);
  v18 = *(v79 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v80 = &v76;
  v84 = *(type metadata accessor for MLActivityClassifier.Trainer(0) + 20);
  v21 = *(v3 + v84 + 40);
  v22 = *(v21 + 16);
  v97 = v14;
  v98 = v13;
  if (!v22)
  {
LABEL_9:
    v29 = v83;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v82._object, v83, &demangling cache variable for type metadata for DataFrame?);
    if (__swift_getEnumTagSinglePayload(v29, 1, v13) == 1)
    {
      return outlined destroy of Tensor?(v29, &demangling cache variable for type metadata for DataFrame?);
    }

    (*(v14 + 32))(v100, v29, v13);
    v31 = *(v3 + v84 + 56);
    v32 = v96;
    v93 = *(v3 + v84 + 48);
    v94 = v31;
    v99 = MLActivityClassifier.Trainer.getClassLabels(_:_:)(v96);
    v33 = DataFrame.columns.getter(v32);
    v34 = *(v33 + 16);
    v35 = v33;
    v33;
    v36 = DataFrame.columns.getter(v35);
    v37 = *(v36 + 16);
    v38 = v36;
    v36;
    if (v34 == v37)
    {
      v39 = DataFrame.columns.getter(v38);
      v40 = v39;
      v41 = v92;
      MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11TabularData9AnyColumnVG_SSs5NeverOTg504_s11d75Data0B5FrameV8CreateMLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n(v39);
      v40;
      v43 = MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n;
      v44 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n);
      v45 = v100;
      v46 = DataFrame.columns.getter(v43);
      v47 = v46;
      v48 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11TabularData9AnyColumnVG_SSs5NeverOTg504_s11d75Data0B5FrameV8CreateMLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n(v46);
      v96 = v41;
      v47;
      v49 = specialized Set._isDisjoint<A>(with:)(v48, v44);
      v48;
      v44;
      if (v49)
      {
        v99;
        v50 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v50, 0, 0);
        *v51 = 0xD00000000000002CLL;
        *(v51 + 8) = " or [Float], found: " + 0x8000000000000000;
        *(v51 + 16) = 0;
        *(v51 + 32) = 0;
        *(v51 + 48) = 0;
        swift_willThrow();
        v52 = v45;
        return (*(v97 + 8))(v52, v98);
      }

      v67 = v89;
      DataFrame.subscript.getter(v93, v94, &type metadata for String);
      v77 = 0;
      v78 = 0xE000000000000000;
      v68 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
      v69 = v90;
      v70 = v86;
      OptionalColumnProtocol.filled(with:)(&v77, v86, v68);
      (*(v85 + 8))(v67, v70);
      v71 = specialized Sequence.first(where:)(v69, v99);
      v73 = v72;
      (*(v87 + 8))(v69, v88);
      if (!v73)
      {
LABEL_21:
        v52 = v100;
        return (*(v97 + 8))(v52, v98);
      }

      v74 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v74, 0, 0);
      v75._countAndFlagsBits = v71;
      v75._object = v73;
      static MLCreateError.validationClassNotFound(className:)(v75);
      v73;
    }

    else
    {
      v99;
      v55 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v55, 0, 0);
      *v56 = 0xD00000000000002CLL;
      *(v56 + 8) = " or [Float], found: " + 0x8000000000000000;
      *(v56 + 16) = 0;
      *(v56 + 32) = 0;
      *(v56 + 48) = 0;
    }

    swift_willThrow();
    goto LABEL_21;
  }

  v81 = v22;
  v91 = v3;

  v95 = v21;
  v23 = (v21 + 40);
  while (1)
  {
    v24 = *(v23 - 1);
    v25 = *v23;

    v26._countAndFlagsBits = v24;
    v26._object = v25;
    if (DataFrame.indexOfColumn(_:)(v26).is_nil)
    {
      v95;
      v53 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v53, 0, 0);
      v54._countAndFlagsBits = v24;
      v54._object = v25;
      static MLCreateError.featureNotFound(feature:)(v54);
      v25;
      return swift_willThrow();
    }

    v93 = v23;
    v27 = v80;
    v82._countAndFlagsBits = v24;
    v99 = v25;
    DataFrame.subscript.getter(v24, v25);
    v28 = AnyColumn.wrappedElementType.getter(v24);
    (*(v79 + 8))(v27, v94);
    if (v28 != __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]) && v28 != __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]) && v28 != __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any]) && v28 != &type metadata for Double && v28 != &type metadata for Float)
    {
      break;
    }

    v99;
    v23 = v93 + 2;
    if (!--v81)
    {
      v95;
      v14 = v97;
      v13 = v98;
      v3 = v91;
      goto LABEL_9;
    }
  }

  v95;
  v77 = 0;
  v78 = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  v57._object = "No training data provided" + 0x8000000000000000;
  v57._countAndFlagsBits = 0xD000000000000034;
  String.append(_:)(v57);
  v76 = v28;
  v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any.Type);
  v59 = String.init<A>(describing:)(&v76, v58);
  v61 = v60;
  v57._countAndFlagsBits = v59;
  v57._object = v60;
  String.append(_:)(v57);
  v61;
  v62 = v77;
  v63 = v78;
  v64 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v64, 0, 0);
  v57._countAndFlagsBits = v82._countAndFlagsBits;
  v65 = v99;
  v57._object = v99;
  v66._countAndFlagsBits = v62;
  v66._object = v63;
  static MLCreateError.featureFormatNotSupported(feature:message:)(v57, v66);
  v63;
  v65;
  return swift_willThrow();
}

Swift::Void __swiftcall DataFrame.convertNumericColumnsToFloat(except:)(Swift::String except)
{
  object = except._object;
  countAndFlagsBits = except._countAndFlagsBits;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>?) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v35 = &v32;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v43 = &v32;
  v44 = type metadata accessor for AnyColumn(0);
  v9 = *(v44 - 8);
  v10 = *(v9 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v36 = v1;
  v13 = DataFrame.columns.getter(0);
  v14 = v13;
  v15 = *(v13 + 16);
  if (v15)
  {
    v40 = v5;
    v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
    v16 = v9;
    v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v37 = v14;
    v18 = v17 + v14;
    v32 = *(v9 + 16);
    v33 = *(v9 + 72);
    v19 = v44;
    v42 = v16;
    while (1)
    {
      v32(&v32, v18, v19);
      v20 = AnyColumn.wrappedElementType.getter(&v32);
      if (v20 != v38)
      {
        v21 = AnyColumn.name.getter();
        v23 = v22;
        if (countAndFlagsBits ^ v21 | object ^ v22)
        {
          v24 = _stringCompareWithSmolCheck(_:_:expecting:)(v21, v22, countAndFlagsBits, object, 0);
          v23;
          v25 = (v24 & 1) == 0;
          v19 = v44;
          if (v25)
          {
            v26 = v35;
            AnyColumn.convertedToFloatArrays()();
            v27 = v40;
            if (__swift_getEnumTagSinglePayload(v26, 1, v40) == 1)
            {
              (*(v42 + 8))(&v32, v44);
              v28 = v26;
              v19 = v44;
              outlined destroy of Tensor?(v28, &demangling cache variable for type metadata for Column<[Float]>?);
              goto LABEL_8;
            }

            (*(v41 + 32))(v43, v26, v27);
            v29 = AnyColumn.name.getter();
            v31 = v30;
            DataFrame.replaceColumn<A>(_:with:)(v29, v30, v43, v38);
            v31;
            (*(v41 + 8))(v43, v40);
            v19 = v44;
          }
        }

        else
        {
          v22;
        }
      }

      (*(v42 + 8))(&v32, v19);
LABEL_8:
      v18 += v33;
      if (!--v15)
      {
        v37;
        return;
      }
    }
  }

  v13;
}

uint64_t MLActivityClassifier.Trainer.getClassLabels(_:_:)(uint64_t a1)
{
  v38 = a1;
  v32 = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<String>>);
  v2 = *(*(v37 - 1) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v35 = v29;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = alloca(v7);
  v11 = alloca(v7);
  v12 = *(type metadata accessor for MLActivityClassifier.Trainer(0) + 20);
  DataFrame.subscript.getter(*(v1 + v12 + 48), *(v1 + v12 + 56), &type metadata for String);
  v34 = v29;
  v33 = v6;
  (*(v6 + 16))(v29, v29, v5);
  v13 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  v14 = v35;
  v38 = v5;
  dispatch thunk of Sequence.makeIterator()(v5, v13);
  v37 = &v14[*(v37 + 9)];
  v15 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  v39 = _swiftEmptyArrayStorage;
  v31 = v15;
LABEL_2:
  v16 = v35;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter(v38, v15);
    if (*v37 == v30[0])
    {
      break;
    }

    v17 = dispatch thunk of Collection.subscript.read(v30, v37, v38, v15);
    v19 = *v18;
    v20 = v18[1];

    v17(v30, 0);
    v15 = v31;
    dispatch thunk of Collection.formIndex(after:)(v37, v38, v31);
    if (v20)
    {
      v36 = v19;
      if (!swift_isUniquelyReferenced_nonNull_native(v39))
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1, v39);
      }

      v21 = v39[2];
      v22 = v36;
      if (v39[3] >> 1 <= v21)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v39[3] >= 2uLL, v21 + 1, 1, v39);
        v22 = v36;
        v39 = v25;
      }

      v23 = v39;
      v39[2] = v21 + 1;
      v24 = 2 * v21;
      v23[v24 + 4] = v22;
      v23[v24 + 5] = v20;
      goto LABEL_2;
    }
  }

  outlined destroy of Tensor?(v16, &demangling cache variable for type metadata for IndexingIterator<Column<String>>);
  (*(v33 + 8))(v34, v38);
  v26 = v39;
  v27 = specialized Sequence.sorted(by:)(v39, specialized closure #1 in Sequence<>.uniqued(), 0);
  v26;
  return v27;
}

uint64_t MLActivityClassifier.Trainer.makeDataset(_:_:using:for:)(void (*a1)(uint64_t *, uint64_t), uint64_t a2, uint64_t a3, int a4)
{
  v73 = v5;
  LODWORD(v78) = a4;
  v65 = a3;
  v79 = a2;
  v74 = a1;
  v75 = v4;
  v68 = type metadata accessor for DataFrame.Rows(0);
  v67 = *(v68 - 8);
  v7 = *(v67 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v63 = v59;
  i = type metadata accessor for DataFrame(0);
  v77 = *(i - 8);
  v10 = *(v77 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v80 = v59;
  v13 = *(*(type metadata accessor for MLActivityClassifier.DataBatcher(0) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v81 = v59;
  v16 = (*(type metadata accessor for MLActivityClassifier.Trainer(0) + 20) + v6);
  v17 = v16[8];
  v66 = v6;
  v18 = v16[9];
  v19._countAndFlagsBits = v17;
  v19._object = v18;
  if (_s11TabularData0B5FrameV14containsColumnySbSS_xmtlFSi_Tt0g5(v19))
  {
    (*(v77 + 16))(v80, v79, i);
    v77 = v16[6];
    v71 = v17;
    v72 = v16[7];
    i = v16[4];
    v79 = v16[5];
    v20 = v78 & 1;

    v21 = v79;

    v22 = v73;
    result = MLActivityClassifier.DataBatcher.init(input:sessionIdColumn:labelColumn:featureColumns:windowSize:sortSessions:mode:)(v80, v71, v18, v77, v72, v21, i, 0, v20);
    if (!v22)
    {
      v24 = MLActivityClassifier.DataBatcher.asWeightedSamples(with:classLabels:labels:)(v16, v74);
      v25 = v24;
      specialized Sequence<>.makeDataset(configuration:)(v16, v24);
      v25;
      return outlined destroy of MLActivityClassifier.ModelParameters(v81, type metadata accessor for MLActivityClassifier.DataBatcher);
    }

    return result;
  }

  v64 = v16;
  v26 = type metadata accessor for MLActivityClassifier.Model(0);
  v27 = v65;
  v28 = *(v65 + *(v26 + 64) + 40);
  swift_bridgeObjectRetain_n(v28, 2);
  v81 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v28);
  v29 = v79;
  v30 = DataFrame.columns.getter(v28);
  v77 = *(v30 + 16);
  if (v77)
  {
    v69 = v28;
    v31 = 0;
    v32 = *(type metadata accessor for AnyColumn(0) - 8);
    v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v70 = v30;
    v71 = v33 + v30;
    v72 = *(v32 + 72);
    while (1)
    {
      v34 = AnyColumn.name.getter();
      v80 = v35;
      if (*(v81 + 2) && (v36 = *(v81 + 5), v78 = v34, Hasher.init(_seed:)(v36), String.hash(into:)(v59, v78), v37 = Hasher._finalize()(), v38 = v78, v39 = ~(-1 << v81[32]), v40 = v39 & v37, v41 = *&v81[8 * ((v39 & v37) >> 6) + 56], _bittest64(&v41, v40)))
      {
        v42 = *(v81 + 6);
        v43 = 16 * v40;
        v44 = *(v42 + 16 * v40);
        for (i = v42; ; v44 = *(i + 16 * v40))
        {
          v45 = *(v42 + v43 + 8);
          if (v44 == v38 && v45 == v80)
          {
            break;
          }

          v46 = _stringCompareWithSmolCheck(_:_:expecting:)(v44, v45, v38, v80, 0);
          v38 = v78;
          if (v46)
          {
            break;
          }

          v40 = v39 & (v40 + 1);
          v47 = *&v81[8 * (v40 >> 6) + 56];
          if (!_bittest64(&v47, v40))
          {
            goto LABEL_14;
          }

          v43 = 16 * v40;
          v42 = i;
        }

        v48 = v80;
        v80;
        if (AnyColumn.wrappedElementType.getter(v48) != &type metadata for Double && AnyColumn.wrappedElementType.getter(v48) != &type metadata for Float)
        {
          v81;
          v49 = v70;
          v70;
          v50 = v63;
          DataFrame.rows.getter(v49, v45, v51, v52);
          v80 = v59;
          v53 = alloca(40);
          v54 = alloca(48);
          v60 = v66;
          v55 = v69;
          v61 = v69;
          v62 = v74;
          v56 = v73;
          ML08WeightedE6SampleVsAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData0E5FrameV4RowsV_8CreateML08WeightedE6SampleVsAE_pTg5(partial apply for closure #2 in MLActivityClassifier.Trainer.makeDataset(_:_:using:for:), v59);
          if (v56)
          {
            v55;
            return (*(v67 + 8))(v50, v68);
          }

          else
          {
            v58 = ML08WeightedE6SampleVsAE_pTg5;
            (*(v67 + 8))(v50, v68);
            v55;
            specialized Sequence<>.makeDataset(configuration:)(v64, v58);
            return v58;
          }
        }
      }

      else
      {
LABEL_14:
        v80;
      }

      if (++v31 == v77)
      {
        v81;
        v70;
        v29 = v79;
        v27 = v65;
        LOBYTE(v28) = v69;
        goto LABEL_20;
      }
    }
  }

  v81;
  v30;
LABEL_20:
  v28;
  return MLActivityClassifier.Trainer.makeFlatDataset(_:_:using:)(v74, v29, v27);
}

uint64_t MLActivityClassifier.Trainer.update(_:using:on:)(char *a1, void (*a2)(uint64_t, uint64_t), _BYTE *a3)
{
  v108 = v4;
  v109 = a3;
  v110 = a2;
  v111 = a1;
  v89 = v3;
  v105 = type metadata accessor for TensorShape(0);
  v91 = *(v105 - 8);
  v5 = *(v91 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v94 = v83;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v101 = v83;
  v10 = alloca(v5);
  v11 = alloca(v5);
  v92 = v83;
  v12 = type metadata accessor for Tensor(0);
  v112 = v12;
  v107 = *(v12 - 8);
  v13 = *(v107 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v97 = v83;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v103 = v83;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v106 = v83;
  v20 = alloca(v13);
  v21 = alloca(v13);
  v98 = v83;
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v95 = v83;
  v25 = alloca(v22);
  v26 = alloca(v22);
  v93 = v83;
  v27 = alloca(v22);
  v28 = alloca(v22);
  v102 = v83;
  v29 = alloca(v22);
  v30 = alloca(v22);
  v90 = v83;
  v31 = alloca(v22);
  v32 = alloca(v22);
  v100 = v83;
  v33 = alloca(v22);
  v34 = alloca(v22);
  v35 = alloca(v22);
  v36 = alloca(v22);
  v37 = alloca(v22);
  v38 = alloca(v22);
  v104 = v83;
  __swift_storeEnumTagSinglePayload(v83, 1, 1, v12);
  __swift_storeEnumTagSinglePayload(v83, 1, 1, v12);
  __swift_storeEnumTagSinglePayload(v83, 1, 1, v12);
  v84 = v109;
  v85 = v104;
  v99 = v83;
  v86 = v83;
  v109 = v83;
  v87 = v83;
  v88 = v108;
  v39 = type metadata accessor for MLActivityClassifier.Model(0);
  v40 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
  v41 = v111;
  v42 = valueWithGradient<A>(at:of:)(v98, v111, partial apply for closure #1 in MLActivityClassifier.Trainer.update(_:using:on:), v83, v39, v40);
  v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
  Adam.update(_:with:)(v41, v42, v43);
  v42;
  v44 = v41;
  v45 = v104;
  v46 = *(v39 + 72);
  if (*&v44[v46])
  {
    v47 = *&v44[v46];
    v48 = v100;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v104, v100, &demangling cache variable for type metadata for Tensor?);
    if (__swift_getEnumTagSinglePayload(v48, 1, v112) == 1)
    {
      BUG();
    }

    v96 = v47;
    v108 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v49 = swift_allocObject(v108, 48, 7);
    v49[2] = 2;
    v49[3] = 4;
    v49[4] = -1;
    v50 = v90;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v45, v90, &demangling cache variable for type metadata for Tensor?);
    if (__swift_getEnumTagSinglePayload(v50, 1, v112) == 1)
    {
      BUG();
    }

    v52 = v92;
    Tensor.shape.getter(v50, 1, v51);
    v110 = *(v107 + 8);
    v110(v50, v112);
    v111 = specialized BidirectionalCollection.last.getter();
    v54 = v53;
    v55 = *(v91 + 8);
    (v55)(v52, v105);
    if (v54)
    {
      BUG();
    }

    v49[5] = v111;
    v56 = v101;
    TensorShape.init(_:)(v49);
    v57 = v100;
    Tensor.reshaped(to:)(v56);
    v111 = v55;
    (v55)(v56, v105);
    v58 = v112;
    v110(v57, v112);
    v59 = v99;
    v60 = v102;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v99, v102, &demangling cache variable for type metadata for Tensor?);
    if (__swift_getEnumTagSinglePayload(v60, 1, v58) == 1)
    {
      BUG();
    }

    v61 = swift_allocObject(v108, 48, 7);
    v61[2] = 2;
    v61[3] = 4;
    v61[4] = -1;
    v62 = v93;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v59, v93, &demangling cache variable for type metadata for Tensor?);
    if (__swift_getEnumTagSinglePayload(v62, 1, v58) == 1)
    {
      BUG();
    }

    v64 = v94;
    Tensor.shape.getter(v62, 1, v63);
    v110(v62, v58);
    v65 = specialized BidirectionalCollection.last.getter();
    v67 = v66;
    v68 = v64;
    v69 = v105;
    (v111)(v68, v105);
    if (v67)
    {
      BUG();
    }

    v61[5] = v65;
    v70 = v101;
    TensorShape.init(_:)(v61);
    v71 = v102;
    Tensor.reshaped(to:)(v70);
    (v111)(v70, v69);
    v72 = v112;
    v73 = v110;
    v110(v71, v112);
    v74 = 1;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v109, 1, v72);
    v76 = v95;
    if (!EnumTagSinglePayload)
    {
      v77 = v97;
      v78 = v112;
      (*(v107 + 16))(v97, v109, v112);
      Tensor.flattened()();
      v73(v77, v78);
      v74 = 0;
    }

    v79 = v112;
    __swift_storeEnumTagSinglePayload(v76, v74, 1, v112);
    v80 = v103;
    _MetricUtilities.ConfusionMatrixMeter.add(predicted:target:weights:)(v106, v103, v76);
    outlined destroy of Tensor?(v76, &demangling cache variable for type metadata for Tensor?);
    v81 = v110;
    v110(v80, v79);
    v81(v106, v79);
    v45 = v104;
  }

  (*(v107 + 32))(v89, v98, v112);
  outlined destroy of Tensor?(v109, &demangling cache variable for type metadata for Tensor?);
  outlined destroy of Tensor?(v99, &demangling cache variable for type metadata for Tensor?);
  return outlined destroy of Tensor?(v45, &demangling cache variable for type metadata for Tensor?);
}

uint64_t MLActivityClassifier.Trainer.evaluate(model:using:classLabels:confussionMatrix:)(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(char *, uint64_t *, uint64_t))
{
  v187 = v4;
  v163 = a4;
  v175 = a1;
  v164 = type metadata accessor for TensorShape(0);
  v165 = *(v164 - 8);
  v5 = *(v165 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v166 = &v152;
  v176 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (offset: Int, element: Tensor));
  v8 = *(*(v176 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v177 = &v152;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v162 = &v152;
  v154 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v13 = *(*(v154 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v155 = &v152;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v167 = &v152;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v183 = &v152;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v191 = &v152;
  v23 = alloca(v16);
  v24 = alloca(v16);
  v156 = &v152;
  v25 = alloca(v16);
  v26 = alloca(v16);
  v157 = &v152;
  v27 = alloca(v16);
  v28 = alloca(v16);
  v194 = &v152;
  v158 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (LSTM.State?, Tensor));
  v29 = *(*(v158 - 8) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v159 = &v152;
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LSTM.State?) - 8) + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v160 = &v152;
  v161 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (LSTM.State, Tensor));
  v35 = *(*(v161 - 8) + 64);
  v36 = alloca(v35);
  v37 = alloca(v35);
  v171 = &v152;
  v38 = type metadata accessor for WeightedDataSample(0);
  v39 = *(*(v38 - 8) + 64);
  v40 = alloca(v39);
  v41 = alloca(v39);
  v201 = &v152;
  v42 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for WeightedDataSample?) - 8) + 64);
  v43 = alloca(v42);
  v44 = alloca(v42);
  v180 = &v152;
  v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>, WeightedDataSample>.Iterator);
  v46 = *(*(v45 - 8) + 64);
  v47 = alloca(v46);
  v48 = alloca(v46);
  v203 = type metadata accessor for Tensor(0);
  v200 = *(v203 - 8);
  v49 = *(v200 + 64);
  v50 = alloca(v49);
  v51 = alloca(v49);
  v178 = &v152;
  v52 = alloca(v49);
  v53 = alloca(v49);
  v186 = &v152;
  v54 = alloca(v49);
  v55 = alloca(v49);
  v185 = &v152;
  v56 = alloca(v49);
  v57 = alloca(v49);
  v181 = &v152;
  v58 = alloca(v49);
  v59 = alloca(v49);
  v182 = &v152;
  v60 = alloca(v49);
  v61 = alloca(v49);
  v173 = &v152;
  v62 = alloca(v49);
  v63 = alloca(v49);
  v174 = &v152;
  v64 = alloca(v49);
  v65 = alloca(v49);
  v195 = &v152;
  v66 = alloca(v49);
  v67 = alloca(v49);
  v199 = &v152;
  v68 = alloca(v49);
  v69 = alloca(v49);
  v184 = &v152;
  v70 = alloca(v49);
  v71 = alloca(v49);
  v190 = &v152;
  static Tensor.zero.getter(0);
  v72 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[WeightedDataSample], WeightedDataSample>);
  Dataset.makeIterator()(v72);
  v73 = *(v45 + 44);
  v168 = *(&v152 + v73);
  v189 = &v152;
  v169 = *(&v152 + v73 + 8);
  v153 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>.Iterator and conformance Batches<A>.Iterator, &demangling cache variable for type metadata for Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>.Iterator, &protocol conformance descriptor for Batches<A>.Iterator);
  v197 = _swiftEmptyArrayStorage;
  v196 = _swiftEmptyArrayStorage;
  v202 = _swiftEmptyArrayStorage;
  for (i = v38; ; v38 = i)
  {
    v74 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>.Iterator);
    dispatch thunk of IteratorProtocol.next()(v74, v153);
    v75 = v170;
    if (v170)
    {
      v152 = v170;
      v76 = v180;
      v168(&v152);
      v77 = v75;
      v78 = v76;
      v77;
      v79 = v76;
      v80 = 0;
    }

    else
    {
      v78 = v180;
      v79 = v180;
      v80 = 1;
    }

    __swift_storeEnumTagSinglePayload(v79, v80, 1, v38);
    v81 = v200;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v78, 1, v38);
    v83 = v78;
    v84 = v201;
    if (EnumTagSinglePayload == 1)
    {
      break;
    }

    outlined init with take of WeightedDataSample(v83, v201);
    v85 = v187;
    static Task<>.checkCancellation()();
    v187 = v85;
    if (v85)
    {
      outlined destroy of MLActivityClassifier.ModelParameters(v84, type metadata accessor for WeightedDataSample);
      outlined destroy of Tensor?(v189, &demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>, WeightedDataSample>.Iterator);
      v196;
      (*(v81 + 8))(v190, v203);
      v197;
      return v202;
    }

    v86 = type metadata accessor for LSTM.State(0);
    v87 = v160;
    __swift_storeEnumTagSinglePayload(v160, 1, 1, v86);
    v88 = v159;
    v89 = v159 + *(v158 + 48);
    outlined init with take of DataFrame?(v87, v159, &demangling cache variable for type metadata for LSTM.State?);
    v198 = *(v81 + 16);
    v198(v89, v201, v203);
    v90 = type metadata accessor for MLActivityClassifier.Model(0);
    v91 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
    v92 = v171;
    Layer.callAsFunction(_:)(v88, v90, v91);
    outlined destroy of Tensor?(v88, &demangling cache variable for type metadata for (LSTM.State?, Tensor));
    v192 = v92 + *(v161 + 48);
    v93 = v201 + *(i + 20);
    v94 = v155;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v93, v155, &demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
    v95 = v154;
    v96 = v94 + *(v154 + 48);
    v193 = *(v200 + 32);
    v193(v195, v94, v203);
    outlined destroy of Tensor?(v96, &demangling cache variable for type metadata for Tensor?);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v93, v94, &demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
    v97 = v157;
    outlined init with take of DataFrame?(v94 + *(v95 + 48), v157, &demangling cache variable for type metadata for Tensor?);
    v98 = *(v200 + 8);
    v98(v94, v203);
    v99 = v184;
    v100 = v195;
    static MLActivityClassifier.Trainer.reshapeLabels(prediction:target:weights:)(v184, v199, v194, v192, v195, v97);
    v101 = v97;
    v102 = v98;
    outlined destroy of Tensor?(v101, &demangling cache variable for type metadata for Tensor?);
    v103 = v100;
    v104 = v203;
    v98(v103, v203);
    v198(v174, v99, v104);
    if (swift_isUniquelyReferenced_nonNull_native(v196))
    {
      v105 = v196;
    }

    else
    {
      v105 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v196[2] + 1, 1, v196);
    }

    v106 = v105[2];
    if (v105[3] >> 1 <= v106)
    {
      v105 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v105[3] >= 2uLL, v106 + 1, 1, v105);
    }

    v105[2] = v106 + 1;
    v107 = (*(v200 + 80) + 32) & ~*(v200 + 80);
    v196 = v105;
    v192 = *(v200 + 72);
    v108 = v203;
    v193((v105 + v107 + v192 * v106), v174, v203);
    v198(v173, v199, v108);
    if (swift_isUniquelyReferenced_nonNull_native(v197))
    {
      v109 = v197;
    }

    else
    {
      v109 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v197[2] + 1, 1, v197);
    }

    v110 = v109[2];
    v111 = v109[3];
    v188 = v102;
    if (v111 >> 1 <= v110)
    {
      v109 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v111 >= 2, v110 + 1, 1, v109);
    }

    v109[2] = v110 + 1;
    v197 = v109;
    v179 = v107;
    v112 = v109 + v107 + v192 * v110;
    v113 = v203;
    v114 = v193;
    v193(v112, v173, v203);
    v115 = v156;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v194, v156, &demangling cache variable for type metadata for Tensor?);
    if (__swift_getEnumTagSinglePayload(v115, 1, v113) == 1)
    {
      outlined destroy of Tensor?(v115, &demangling cache variable for type metadata for Tensor?);
      v116 = v188;
    }

    else
    {
      v117 = v182;
      v114(v182, v115, v113);
      v198(v181, v117, v113);
      if (!swift_isUniquelyReferenced_nonNull_native(v202))
      {
        v202 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v202[2] + 1, 1, v202);
      }

      v118 = v188;
      v119 = v179;
      v120 = v202[2];
      if (v202[3] >> 1 <= v120)
      {
        v202 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v202[3] >= 2uLL, v120 + 1, 1, v202);
      }

      v121 = v202;
      v202[2] = v120 + 1;
      v113 = v203;
      v193((v121 + v119 + v192 * v120), v181, v203);
      v118(v182, v113);
      v116 = v118;
    }

    v122 = v195;
    v123 = v194;
    static MLActivityClassifier.Trainer.weightedCrossEntropy(logits:labels:weights:axis:)(v184, v199, v194, -1);
    static Tensor.+= infix(_:_:)(v190, v122);
    v116(v122, v113);
    outlined destroy of Tensor?(v123, &demangling cache variable for type metadata for Tensor?);
    v116(v199, v113);
    v116(v184, v113);
    outlined destroy of Tensor?(v171, &demangling cache variable for type metadata for (LSTM.State, Tensor));
    outlined destroy of MLActivityClassifier.ModelParameters(v201, type metadata accessor for WeightedDataSample);
  }

  outlined destroy of Tensor?(v189, &demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>, WeightedDataSample>.Iterator);
  v124 = v196;
  v195 = v196[2];
  v125 = 0;
  while (v195 != v125)
  {
    if (v125 >= v124[2])
    {
      BUG();
    }

    v126 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v127 = v125 * *(v81 + 72);
    v128 = v162 + *(v176 + 48);
    v129 = *(v81 + 16);
    v201 = v125;
    v129(v128, (v124 + v126 + v127), v203);
    v130 = v177 + *(v176 + 48);
    *v177 = v201;
    v199 = v130;
    v131 = v128;
    v132 = v203;
    (*(v200 + 32))(v130, v131, v203);
    v133 = type metadata accessor for MLActivityClassifier.Model(0);
    if (v201 >= v197[2])
    {
      BUG();
    }

    v193 = *(*(v175 + *(v133 + 60)) + 16);
    v198 = v129;
    v129(v185, (v197 + v126 + v127), v132);
    v134 = v202[2];
    v135 = 1;
    if (v134)
    {
      if (v201 >= v134)
      {
        BUG();
      }

      v198(v191, (v202 + v126 + v127), v132);
      v135 = 0;
    }

    __swift_storeEnumTagSinglePayload(v191, v135, 1, v132);
    v198 = *v163;
    v194 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v136 = swift_allocObject(v194, 48, 7);
    v136[2] = 2;
    v136[3] = 4;
    v136[4] = -1;
    v137 = v193;
    v136[5] = v193;
    v138 = v166;
    TensorShape.init(_:)(v136);
    Tensor.reshaped(to:)(v138);
    v199 = *(v165 + 8);
    v139 = v164;
    (v199)(v138, v164);
    v140 = swift_allocObject(v194, 48, 7);
    v140[2] = 2;
    v140[3] = 4;
    v140[4] = -1;
    v140[5] = v137;
    TensorShape.init(_:)(v140);
    Tensor.reshaped(to:)(v138);
    (v199)(v138, v139);
    v141 = v167;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v191, v167, &demangling cache variable for type metadata for Tensor?);
    v142 = v203;
    if (__swift_getEnumTagSinglePayload(v141, 1, v203) == 1)
    {
      outlined destroy of Tensor?(v141, &demangling cache variable for type metadata for Tensor?);
      v143 = 1;
      v144 = v183;
    }

    else
    {
      v144 = v183;
      Tensor.flattened()();
      (*(v200 + 8))(v141, v142);
      v143 = 0;
    }

    v145 = v142;
    __swift_storeEnumTagSinglePayload(v144, v143, 1, v142);
    v146 = v178;
    _MetricUtilities.ConfusionMatrixMeter.add(predicted:target:weights:)(v186, v178, v144);
    outlined destroy of Tensor?(v144, &demangling cache variable for type metadata for Tensor?);
    v147 = v145;
    v148 = *(v200 + 8);
    v148(v146, v147);
    v148(v186, v147);
    outlined destroy of Tensor?(v191, &demangling cache variable for type metadata for Tensor?);
    v148(v185, v147);
    outlined destroy of Tensor?(v177, &demangling cache variable for type metadata for (offset: Int, element: Tensor));
    v125 = v201 + 1;
    v81 = v200;
    v124 = v196;
  }

  v124;
  v150 = v81;
  v151 = v190;
  Tensor.scalar<A>(as:)(&type metadata for Double, &type metadata for Double, &protocol witness table for Double);
  (*(v150 + 8))(v151, v203);
  v197;
  return v202;
}

uint64_t MLActivityClassifier.Trainer.ModelContainer.init(model:)(uint64_t a1)
{
  v39 = v1;
  v38 = a1;
  v30 = type metadata accessor for LearningPhase(0);
  v31 = *(v30 - 8);
  v2 = *(v31 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v32 = &v27;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for RegularizationKind?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v34 = &v27;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for GradientClippingMode?) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v33 = type metadata accessor for MLActivityClassifier.Model(0);
  v11 = *(*(v33 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v36 = &v27;
  v17 = v1 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model;
  v35 = v1 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model;
  outlined init with copy of MLTrainingSessionParameters(v38, v1 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model, type metadata accessor for MLActivityClassifier.Model);
  swift_beginAccess(v17, v28, 0, 0);
  outlined init with copy of MLTrainingSessionParameters(v17, &v27, type metadata accessor for MLActivityClassifier.Model);
  v18 = type metadata accessor for GradientClippingMode(0);
  __swift_storeEnumTagSinglePayload(&v27, 1, 1, v18);
  v19 = type metadata accessor for RegularizationKind(0);
  v20 = v34;
  __swift_storeEnumTagSinglePayload(v34, 1, 1, v19);
  v37 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
  v21 = v36;
  v22 = v33;
  Adam.init(for:learningRate:beta1:beta2:usesAMSGrad:epsilon:gradientClippingMode:regularizationKind:gradientScale:)(&v27, 0, &v27, v20, v33, v37, 0.001, 0.89999998, 0.99900001, 0.0000000099999999, 1.0);
  outlined destroy of MLActivityClassifier.ModelParameters(&v27, type metadata accessor for MLActivityClassifier.Model);
  outlined init with take of DataFrame?(v21, v39 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_optimizer, &demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
  v23 = v32;
  v24 = v30;
  v25 = v31;
  (*(v31 + 104))(v32, enum case for LearningPhase.training(_:), v30);
  swift_beginAccess(v35, v29, 33, 0);
  Layer.prepare(for:)(v23, v22, v37);
  swift_endAccess(v29);
  outlined destroy of MLActivityClassifier.ModelParameters(v38, type metadata accessor for MLActivityClassifier.Model);
  (*(v25 + 8))(v23, v24);
  return v39;
}

void *MLActivityClassifier.Trainer.ModelContainer.trainableSublayers()()
{
  v54 = type metadata accessor for LSTM(0);
  v63 = *(v54 - 8);
  v1 = *(v63 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v61 = &v41;
  v58 = type metadata accessor for Dense(0);
  v62 = *(v58 - 8);
  v4 = *(v62 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v59 = &v41;
  v55 = type metadata accessor for Conv2D(0);
  v60 = *(v55 - 8);
  v7 = *(v60 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v56 = &v41;
  v10 = type metadata accessor for BatchNorm(0);
  v57 = *(v10 - 8);
  v11 = *(v57 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v53 = &v41;
  v14 = type metadata accessor for MLActivityClassifier.Model(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v18 = OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model + v0;
  swift_beginAccess(v18, v43, 0, 0);
  outlined init with copy of MLTrainingSessionParameters(v18, &v41, type metadata accessor for MLActivityClassifier.Model);
  v19 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
  v20 = Layer.sublayers(recursively:)(1, v14, v19);
  outlined destroy of MLActivityClassifier.ModelParameters(&v41, type metadata accessor for MLActivityClassifier.Model);

  v65 = dispatch thunk of _AnySequenceBox._makeIterator()(v20);
  v64 = v20;
  v21 = v20;

  v67 = _swiftEmptyArrayStorage;
  v66 = v10;
  while (1)
  {
    dispatch thunk of _AnyIteratorBoxBase.next()(v21);
    if (!v46)
    {
      break;
    }

    outlined init with take of TabularRegressionTask(&v45, v47);
    outlined init with copy of TabularRegressionTask(v47, v44);
    v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Layer);
    v23 = v53;
    if (swift_dynamicCast(v53, v44, v22, v10, 0))
    {
      (*(v57 + 8))(v23, v10);
    }

    else
    {
      v24 = v56;
      v25 = v55;
      v26 = swift_dynamicCast(v56, v44, v22, v55, 0);
      v27 = v54;
      if (v26)
      {
        v28 = v24;
        v29 = v25;
        v30 = v60;
      }

      else
      {
        v31 = v59;
        v32 = v58;
        if (swift_dynamicCast(v59, v44, v22, v58, 0))
        {
          v28 = v31;
          v29 = v32;
          v30 = v62;
        }

        else
        {
          v33 = v61;
          if (!swift_dynamicCast(v61, v44, v22, v27, 0))
          {
            v36 = v48;
            v37 = v49;
            __swift_project_boxed_opaque_existential_0Tm(v47, v48);
            v38 = Layer.parameters(recursively:)(0, v36, v37);
            v39 = *(v38 + 16);
            v38;
            if (v39)
            {
              outlined init with copy of TabularRegressionTask(v47, &v50);
            }

            else
            {
              v51 = 0;
              v50 = 0;
              v52 = 0;
            }

            v10 = v66;
            __swift_destroy_boxed_opaque_existential_1Tm(v44);
            goto LABEL_13;
          }

          v28 = v33;
          v29 = v27;
          v30 = v63;
        }
      }

      (*(v30 + 8))(v28, v29);
      v10 = v66;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    outlined init with copy of TabularRegressionTask(v47, &v50);
LABEL_13:
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    if (*(&v51 + 1))
    {
      outlined init with take of TabularRegressionTask(&v50, v42);
      outlined init with take of TabularRegressionTask(v42, &v50);
      if (!swift_isUniquelyReferenced_nonNull_native(v67))
      {
        v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v67[2] + 1, 1, v67);
      }

      v34 = v67[2];
      if (v67[3] >> 1 <= v34)
      {
        v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v67[3] >= 2uLL, v34 + 1, 1, v67);
      }

      v35 = v67;
      v67[2] = v34 + 1;
      v21 = &v50;
      outlined init with take of TabularRegressionTask(&v50, &v35[5 * v34 + 4]);
    }

    else
    {
      v21 = &v50;
      outlined destroy of Tensor?(&v50, &demangling cache variable for type metadata for Layer?);
    }
  }

  return v67;
}

uint64_t MLActivityClassifier.Trainer.ModelContainer.getCheckpointStatesDictionary()()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = v0 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_optimizer;
  swift_beginAccess(v0 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_optimizer, v9, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4, &v8, &demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
  v5 = MLActivityClassifier.Trainer.ModelContainer.trainableSublayers()();
  LOBYTE(v4) = v5;
  v6 = specialized _ModelCheckpoint<>.getCheckpointStatesDictionary<A>(optimizer:trainableSublayers:)(&v8, v5);
  outlined destroy of Tensor?(&v8, &demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
  v4;
  return v6;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLActivityClassifier.Trainer.ModelContainer.compileModel()()
{
  v10 = type metadata accessor for MLActivityClassifier.Model(0);
  v1 = *(*(v10 - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model + v0;
  swift_beginAccess(OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model + v0, v9, 1, 0);
  outlined init with copy of MLTrainingSessionParameters(v4, v9, type metadata accessor for MLActivityClassifier.Model);
  v5.super.isa = MLActivityClassifier.Model.makeMLModel()().super.isa;
  outlined destroy of MLActivityClassifier.ModelParameters(v9, type metadata accessor for MLActivityClassifier.Model);
  if (!v6)
  {
    v7 = *(v10 + 68);
    v8 = *(v4 + v7);
    *(v4 + v7) = v5;
  }
}

uint64_t MLActivityClassifier.Trainer.ModelContainer.__deallocating_deinit()
{
  outlined destroy of MLActivityClassifier.ModelParameters(v0 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model, type metadata accessor for MLActivityClassifier.Model);
  outlined destroy of Tensor?(v0 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_optimizer, &demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
  return swift_deallocClassInstance(v0, *(*v0 + 48), *(*v0 + 52));
}

uint64_t type metadata completion function for MLActivityClassifier.Trainer.ModelContainer(uint64_t a1)
{
  result = type metadata accessor for MLActivityClassifier.Model(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    result = type metadata accessor for Adam<MLActivityClassifier.Model>(319);
    if (v3 <= 0x3F)
    {
      v4[1] = *(result - 8) + 64;
      result = swift_updateClassMetadata2(a1, 256, 2, v4, a1 + 80);
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for Adam<MLActivityClassifier.Model>(uint64_t a1)
{
  result = lazy cache variable for type metadata for Adam<MLActivityClassifier.Model>;
  if (!lazy cache variable for type metadata for Adam<MLActivityClassifier.Model>)
  {
    v2 = type metadata accessor for MLActivityClassifier.Model(255);
    v3 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
    result = type metadata accessor for Adam(a1, v2, v3);
    if (!v4)
    {
      lazy cache variable for type metadata for Adam<MLActivityClassifier.Model> = result;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for WeightedDataSample(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = type metadata accessor for Tensor(0);
    v7 = *(*(v6 - 8) + 16);
    v7(a1, a2, v6);
    v8 = *(a3 + 20);
    v9 = a1 + v8;
    v10 = a2 + v8;
    v7((a1 + v8), (a2 + v8), v6);
    v11 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?)) + 48);
    v12 = &v9[v11];
    v13 = &v10[v11];
    if (__swift_getEnumTagSinglePayload(v13, 1, v6))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?);
      memcpy(v12, v13, *(*(v14 - 8) + 64));
    }

    else
    {
      v7(v12, v13, v6);
      __swift_storeEnumTagSinglePayload(v12, 0, 1, v6);
    }
  }

  return v3;
}

uint64_t destroy for WeightedDataSample(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Tensor(0);
  v3 = *(*(v2 - 8) + 8);
  v3(a1, v2);
  v4 = a1 + *(a2 + 20);
  v3(v4, v2);
  v5 = v4 + *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?)) + 48);
  result = __swift_getEnumTagSinglePayload(v5, 1, v2);
  if (!result)
  {
    return (v3)(v5, v2);
  }

  return result;
}

char *initializeWithCopy for WeightedDataSample(char *a1, char *a2, uint64_t a3)
{
  v4 = type metadata accessor for Tensor(0);
  v5 = *(*(v4 - 8) + 16);
  v5(a1, a2, v4);
  v6 = *(a3 + 20);
  v7 = &a1[v6];
  v8 = &a2[v6];
  v5(&a1[v6], &a2[v6], v4);
  v9 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?)) + 48);
  v10 = &v7[v9];
  v11 = &v8[v9];
  if (__swift_getEnumTagSinglePayload(v11, 1, v4))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?);
    memcpy(v10, v11, *(*(v12 - 8) + 64));
  }

  else
  {
    v5(v10, v11, v4);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v4);
  }

  return a1;
}

char *assignWithCopy for WeightedDataSample(char *a1, char *a2, uint64_t a3)
{
  v4 = type metadata accessor for Tensor(0);
  v16 = *(v4 - 8);
  v5 = *(v16 + 24);
  v5(a1, a2, v4);
  v6 = *(a3 + 20);
  v7 = &a1[v6];
  v8 = &a2[v6];
  v5(&a1[v6], &a2[v6], v4);
  v9 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?)) + 48);
  v10 = &v7[v9];
  v11 = &v8[v9];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v4);
  v13 = __swift_getEnumTagSinglePayload(v11, 1, v4);
  if (!EnumTagSinglePayload)
  {
    if (!v13)
    {
      v5(v10, v11, v4);
      return a1;
    }

    (*(v16 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?);
    memcpy(v10, v11, *(*(v14 - 8) + 64));
    return a1;
  }

  (*(v16 + 16))(v10, v11, v4);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v4);
  return a1;
}

char *initializeWithTake for WeightedDataSample(char *a1, char *a2, uint64_t a3)
{
  v4 = type metadata accessor for Tensor(0);
  v5 = *(*(v4 - 8) + 32);
  v5(a1, a2, v4);
  v6 = *(a3 + 20);
  v7 = &a1[v6];
  v8 = &a2[v6];
  v5(&a1[v6], &a2[v6], v4);
  v9 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?)) + 48);
  v10 = &v7[v9];
  v11 = &v8[v9];
  if (__swift_getEnumTagSinglePayload(v11, 1, v4))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?);
    memcpy(v10, v11, *(*(v12 - 8) + 64));
  }

  else
  {
    v5(v10, v11, v4);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v4);
  }

  return a1;
}

char *assignWithTake for WeightedDataSample(char *a1, char *a2, uint64_t a3)
{
  v4 = type metadata accessor for Tensor(0);
  v16 = *(v4 - 8);
  v5 = *(v16 + 40);
  v5(a1, a2, v4);
  v6 = *(a3 + 20);
  v7 = &a1[v6];
  v8 = &a2[v6];
  v5(&a1[v6], &a2[v6], v4);
  v9 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?)) + 48);
  v10 = &v7[v9];
  v11 = &v8[v9];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v4);
  v13 = __swift_getEnumTagSinglePayload(v11, 1, v4);
  if (!EnumTagSinglePayload)
  {
    if (!v13)
    {
      v5(v10, v11, v4);
      return a1;
    }

    (*(v16 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?);
    memcpy(v10, v11, *(*(v14 - 8) + 64));
    return a1;
  }

  (*(v16 + 32))(v10, v11, v4);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v4);
  return a1;
}

uint64_t sub_227F48(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for Tensor(0);
  if (*(*(v5 - 8) + 84) != a2)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
    v4 = *(a3 + 20) + a1;
  }

  return __swift_getEnumTagSinglePayload(v4, a2, v5);
}

uint64_t sub_227FA5(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = type metadata accessor for Tensor(0);
  if (*(*(v7 - 8) + 84) != a3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
    v6 = *(a4 + 20) + a1;
  }

  return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
}

uint64_t type metadata completion function for WeightedDataSample(uint64_t a1)
{
  result = type metadata accessor for Tensor(319);
  if (v2 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    v6[0] = v3;
    result = type metadata accessor for Tensor?(319);
    if (v4 <= 0x3F)
    {
      swift_getTupleTypeLayout2(v5, v3);
      v6[1] = v5;
      swift_initStructMetadata(a1, 256, 2, v6, a1 + 16);
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for Tensor?(uint64_t a1)
{
  result = lazy cache variable for type metadata for Tensor?;
  if (!lazy cache variable for type metadata for Tensor?)
  {
    v2 = type metadata accessor for Tensor(255);
    result = type metadata accessor for Optional(a1, v2);
    if (!v3)
    {
      lazy cache variable for type metadata for Tensor? = result;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLActivityClassifier.Trainer(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    a1[1] = a2[1];
    v5 = *(a3 + 20);
    v6 = a1 + v5;
    v7 = a2 + v5;
    *(a1 + v5) = *(a2 + v5);
    *(a1 + v5 + 8) = *(a2 + v5 + 8);
    *(a1 + v5 + 16) = *(a2 + v5 + 16);
    *(a1 + v5 + 24) = *(a2 + v5 + 24);
    *(a1 + v5 + 40) = *(a2 + v5 + 40);
    *(a1 + v5 + 48) = *(a2 + v5 + 48);
    *(a1 + v5 + 56) = *(a2 + v5 + 56);
    *(a1 + v5 + 64) = *(a2 + v5 + 64);
    *(a1 + v5 + 72) = *(a2 + v5 + 72);
    v22 = type metadata accessor for MLActivityClassifier.Configuration(0);
    v8 = *(v22 + 44);
    v20 = v6;
    v9 = &v6[v8];
    v21 = v7;
    v10 = &v7[v8];
    v11 = type metadata accessor for DataFrame(0);

    if (__swift_getEnumTagSinglePayload(v10, 1, v11))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
      memcpy(v9, v10, *(*(v12 - 8) + 64));
    }

    else
    {
      (*(*(v11 - 8) + 16))(v9, v10, v11);
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
    }

    v14 = *(v22 + 48);
    v15 = &v20[v14];
    v16 = &v21[v14];
    if (__swift_getEnumTagSinglePayload(&v21[v14], 1, v11))
    {
      v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
      memcpy(v15, v16, *(*(v17 - 8) + 64));
    }

    else
    {
      (*(*(v11 - 8) + 16))(v15, v16, v11);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v11);
    }

    *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  }

  return v3;
}

uint64_t destroy for MLActivityClassifier.Trainer(uint64_t a1, uint64_t a2)
{
  *(a1 + 8);
  v2 = (a1 + *(a2 + 20));
  v2[5];
  v2[7];
  v2[9];
  v3 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v4 = v2 + *(v3 + 44);
  v5 = type metadata accessor for DataFrame(0);
  if (!__swift_getEnumTagSinglePayload(v4, 1, v5))
  {
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  v6 = v2 + *(v3 + 48);
  if (!__swift_getEnumTagSinglePayload(v6, 1, v5))
  {
    (*(*(v5 - 8) + 8))(v6, v5);
  }
}

void *initializeWithCopy for MLActivityClassifier.Trainer(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v3 = *(a3 + 20);
  v4 = a1 + v3;
  v5 = a2 + v3;
  *(a1 + v3) = *(a2 + v3);
  *(a1 + v3 + 8) = *(a2 + v3 + 8);
  *(a1 + v3 + 16) = *(a2 + v3 + 16);
  *(a1 + v3 + 24) = *(a2 + v3 + 24);
  *(a1 + v3 + 40) = *(a2 + v3 + 40);
  *(a1 + v3 + 48) = *(a2 + v3 + 48);
  *(a1 + v3 + 56) = *(a2 + v3 + 56);
  *(a1 + v3 + 64) = *(a2 + v3 + 64);
  *(a1 + v3 + 72) = *(a2 + v3 + 72);
  v19 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v6 = *(v19 + 44);
  v17 = v4;
  v7 = &v4[v6];
  v18 = v5;
  v8 = &v5[v6];
  v9 = type metadata accessor for DataFrame(0);

  if (__swift_getEnumTagSinglePayload(v8, 1, v9))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(v7, v8, *(*(v10 - 8) + 64));
  }

  else
  {
    (*(*(v9 - 8) + 16))(v7, v8, v9);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  }

  v11 = *(v19 + 48);
  v12 = &v17[v11];
  v13 = &v18[v11];
  if (__swift_getEnumTagSinglePayload(&v18[v11], 1, v9))
  {
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(v12, v13, *(*(v14 - 8) + 64));
  }

  else
  {
    (*(*(v9 - 8) + 16))(v12, v13, v9);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v9);
  }

  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));

  return a1;
}

void *assignWithCopy for MLActivityClassifier.Trainer(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1[1];
  a1[1] = a2[1];

  v5;
  v27 = a3;
  v6 = *(a3 + 20);
  v7 = a1 + v6;
  __src = a2 + v6;
  *(a1 + v6) = *(a2 + v6);
  *(a1 + v6 + 8) = *(a2 + v6 + 8);
  *(a1 + v6 + 16) = *(a2 + v6 + 16);
  *(a1 + v6 + 24) = *(a2 + v6 + 24);
  *(a1 + v6 + 32) = *(a2 + v6 + 32);
  v8 = *(a1 + v6 + 40);
  *(a1 + v6 + 40) = *(a2 + v6 + 40);

  v8;
  *(a1 + v6 + 48) = *(a2 + v6 + 48);
  v9 = *(a1 + v6 + 56);
  *(a1 + v6 + 56) = *(a2 + v6 + 56);

  v9;
  *(a1 + v6 + 64) = *(a2 + v6 + 64);
  v10 = *(a1 + v6 + 72);
  *(a1 + v6 + 72) = *(a2 + v6 + 72);

  v10;
  v28 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v11 = *(v28 + 44);
  v30 = v7;
  v12 = &v7[v11];
  v13 = &__src[v11];
  v14 = type metadata accessor for DataFrame(0);
  __dst = v12;
  LODWORD(v12) = __swift_getEnumTagSinglePayload(v12, 1, v14);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  if (v12)
  {
    if (EnumTagSinglePayload)
    {
      v16 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v17 = __dst;
LABEL_6:
      memcpy(v17, v13, v16);
      goto LABEL_9;
    }

    (*(*(v14 - 8) + 16))(__dst, v13, v14);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v14);
  }

  else
  {
    v18 = *(v14 - 8);
    if (EnumTagSinglePayload)
    {
      (*(v18 + 8))(__dst, v14);
      v16 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v17 = __dst;
      goto LABEL_6;
    }

    (*(v18 + 24))(__dst, v13, v14);
  }

LABEL_9:
  v19 = *(v28 + 48);
  v20 = &__src[v19];
  v31 = &v30[v19];
  v21 = __swift_getEnumTagSinglePayload(v31, 1, v14);
  v22 = __swift_getEnumTagSinglePayload(v20, 1, v14);
  if (v21)
  {
    if (!v22)
    {
      (*(*(v14 - 8) + 16))(v31, v20, v14);
      __swift_storeEnumTagSinglePayload(v31, 0, 1, v14);
      goto LABEL_17;
    }

    v23 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
    v24 = v31;
  }

  else
  {
    v25 = *(v14 - 8);
    if (!v22)
    {
      (*(v25 + 24))(v31, v20, v14);
      goto LABEL_17;
    }

    (*(v25 + 8))(v31, v14);
    v23 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
    v24 = v31;
  }

  memcpy(v24, v20, v23);
LABEL_17:
  *(a1 + *(v27 + 24)) = *(a2 + *(v27 + 24));

  return a1;
}

_OWORD *initializeWithTake for MLActivityClassifier.Trainer(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a3 + 20);
  v4 = a1 + v3;
  v5 = a2 + v3;
  *(a1 + v3) = *(a2 + v3);
  *(a1 + v3 + 8) = *(a2 + v3 + 8);
  *(a1 + v3 + 16) = *(a2 + v3 + 16);
  *(a1 + v3 + 24) = *(a2 + v3 + 24);
  *(a1 + v3 + 40) = *(a2 + v3 + 40);
  *(a1 + v3 + 48) = *(a2 + v3 + 48);
  *(a1 + v3 + 64) = *(a2 + v3 + 64);
  v17 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v6 = *(v17 + 44);
  v16 = v4;
  __dst = &v4[v6];
  v7 = &v5[v6];
  v8 = type metadata accessor for DataFrame(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(__dst, v7, *(*(v9 - 8) + 64));
  }

  else
  {
    (*(*(v8 - 8) + 32))(__dst, v7, v8);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v8);
  }

  v10 = *(v17 + 48);
  v11 = &v16[v10];
  v12 = &v5[v10];
  if (__swift_getEnumTagSinglePayload(v12, 1, v8))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(v11, v12, *(*(v13 - 8) + 64));
  }

  else
  {
    (*(*(v8 - 8) + 32))(v11, v12, v8);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v8);
  }

  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

void *assignWithTake for MLActivityClassifier.Trainer(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1[1];
  a1[1] = a2[1];
  v5;
  v26 = a3;
  v6 = *(a3 + 20);
  __src = a2 + v6;
  *(a1 + v6) = *(a2 + v6);
  *(a1 + v6 + 8) = *(a2 + v6 + 8);
  *(a1 + v6 + 16) = *(a2 + v6 + 16);
  *(a1 + v6 + 24) = *(a2 + v6 + 24);
  v7 = *(a1 + v6 + 40);
  *(a1 + v6 + 40) = *(a2 + v6 + 40);
  v7;
  *(a1 + v6 + 48) = *(a2 + v6 + 48);
  v8 = *(a1 + v6 + 56);
  *(a1 + v6 + 56) = *(a2 + v6 + 56);
  v8;
  *(a1 + v6 + 64) = *(a2 + v6 + 64);
  v9 = *(a1 + v6 + 72);
  *(a1 + v6 + 72) = *(a2 + v6 + 72);
  v9;
  v27 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v10 = *(v27 + 44);
  v29 = a1 + v6;
  v11 = a1 + v6 + v10;
  v12 = a2 + v6 + v10;
  v13 = type metadata accessor for DataFrame(0);
  __dst = v11;
  LODWORD(v11) = __swift_getEnumTagSinglePayload(v11, 1, v13);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  if (v11)
  {
    if (EnumTagSinglePayload)
    {
      v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v16 = __dst;
LABEL_6:
      memcpy(v16, v12, v15);
      goto LABEL_9;
    }

    (*(*(v13 - 8) + 32))(__dst, v12, v13);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v13);
  }

  else
  {
    v17 = *(v13 - 8);
    if (EnumTagSinglePayload)
    {
      (*(v17 + 8))(__dst, v13);
      v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v16 = __dst;
      goto LABEL_6;
    }

    (*(v17 + 40))(__dst, v12, v13);
  }

LABEL_9:
  v18 = *(v27 + 48);
  v19 = &__src[v18];
  v30 = &v29[v18];
  v20 = __swift_getEnumTagSinglePayload(v30, 1, v13);
  v21 = __swift_getEnumTagSinglePayload(v19, 1, v13);
  if (v20)
  {
    if (!v21)
    {
      (*(*(v13 - 8) + 32))(v30, v19, v13);
      __swift_storeEnumTagSinglePayload(v30, 0, 1, v13);
      goto LABEL_17;
    }

    v22 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
    v23 = v30;
  }

  else
  {
    v24 = *(v13 - 8);
    if (!v21)
    {
      (*(v24 + 40))(v30, v19, v13);
      goto LABEL_17;
    }

    (*(v24 + 8))(v30, v13);
    v22 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
    v23 = v30;
  }

  memcpy(v23, v19, v22);
LABEL_17:
  *(a1 + *(v26 + 24)) = *(a2 + *(v26 + 24));

  return a1;
}

uint64_t sub_228C1C(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v5 = type metadata accessor for MLActivityClassifier.Configuration(0);
    return __swift_getEnumTagSinglePayload(*(a3 + 20) + a1, a2, v5);
  }

  return result;
}

uint64_t sub_228C95(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + 8) = 2 * (a2 - 1);
  }

  else
  {
    v5 = type metadata accessor for MLActivityClassifier.Configuration(0);
    return __swift_storeEnumTagSinglePayload(*(a4 + 20) + a1, a2, a2, v5);
  }

  return result;
}

uint64_t type metadata completion function for MLActivityClassifier.Trainer(uint64_t a1)
{
  v3[0] = &unk_346800;
  result = type metadata accessor for MLActivityClassifier.Configuration(319);
  if (v2 <= 0x3F)
  {
    v3[1] = *(result - 8) + 64;
    v3[2] = &unk_346818;
    swift_initStructMetadata(a1, 256, 3, v3, a1 + 16);
    return 0;
  }

  return result;
}

void static MLCreateError.featureFormatNotSupported(feature:message:)(Swift::String a1, Swift::String a2)
{
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v4 = v2;
  _StringGuts.grow(_:)(47);
  0;
  *&v6 = 0x2065727574616546;
  *(&v6 + 1) = 0xEF206E6D756C6F63;
  String.append(_:)(a1);
  v5._object = " was not found in the model" + 0x8000000000000000;
  v5._countAndFlagsBits = 0xD00000000000001CLL;
  String.append(_:)(v5);
  v5._countAndFlagsBits = countAndFlagsBits;
  v5._object = object;
  String.append(_:)(v5);
  *v4 = v6;
  *(v4 + 16) = 0;
  *(v4 + 32) = 0;
  *(v4 + 48) = 1;
}

void static MLCreateError.validationClassNotFound(className:)(Swift::String a1)
{
  v2 = v1;
  _StringGuts.grow(_:)(46);
  0;
  *&v4 = 0xD000000000000011;
  *(&v4 + 1) = "does not match training data" + 0x8000000000000000;
  String.append(_:)(a1);
  v3._object = "Validation class " + 0x8000000000000000;
  v3._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v3);
  *v2 = v4;
  *(v2 + 16) = 0;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
}

uint64_t static MLActivityClassifier.Trainer.weightedCrossEntropy(logits:labels:weights:axis:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v61 = a2;
  v6 = v4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v52 = &v51;
  v10 = type metadata accessor for Tensor(0);
  v59 = *(v10 - 8);
  v11 = *(v59 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v54 = &v51;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v60 = &v51;
  v16 = alloca(v11);
  v17 = alloca(v11);
  v57 = &v51;
  v18 = alloca(v11);
  v19 = alloca(v11);
  v65 = &v51;
  v20 = alloca(v11);
  v21 = alloca(v11);
  v55 = &v51;
  v22 = alloca(v11);
  v23 = alloca(v11);
  v56 = &v51;
  v24 = alloca(v11);
  v25 = alloca(v11);
  v26 = alloca(v11);
  v27 = alloca(v11);
  v64 = &v51;
  if (a4 < 0)
  {
    v28 = Tensor.rank.getter();
    v29 = __OFADD__(v28, a4);
    a4 += v28;
    if (v29)
    {
      BUG();
    }
  }

  v62 = v6;
  v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v58 = v10;
  v67 = v30;
  v31 = swift_allocObject(v30, 40, 7);
  v32 = v31;
  v31[2] = 1;
  v31[3] = 2;
  v31[4] = a4;
  Tensor.max(alongAxes:)(v31);
  v32;
  v33 = v64;
  static Tensor.- infix(_:_:)(a1, &v51);
  v66 = *(v59 + 8);
  v66(&v51, v58);
  exp(_:)(v33);
  v34 = swift_allocObject(v67, 40, 7);
  v35 = v34;
  v34[2] = 1;
  v34[3] = 2;
  v63 = a4;
  v34[4] = a4;
  v36 = v55;
  Tensor.sum(alongAxes:)(v34);
  v35;
  v37 = v36;
  v38 = v58;
  v39 = &v51;
  log(_:)(v37);
  v40 = v57;
  static Tensor.- infix(_:_:)(v64, v57);
  v41 = v66;
  v66(v40, v38);
  v42 = v65;
  static Tensor.- prefix(_:)(&v51);
  v41(&v51, v38);
  v43 = v52;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v53, v52, &demangling cache variable for type metadata for Tensor?);
  if (__swift_getEnumTagSinglePayload(v43, 1, v38) == 1)
  {
    outlined destroy of Tensor?(v43, &demangling cache variable for type metadata for Tensor?);
    static Tensor.* infix(_:_:)(v61, v42);
    v44 = swift_allocObject(v67, 40, 7);
    v44[2] = 1;
    v44[3] = 2;
    v44[4] = v63;
    Tensor.sum(alongAxes:)(v44);
    v44;
    v45 = v66;
    v66(v40, v38);
    Tensor.sum()();
  }

  else
  {
    v46 = v60;
    (*(v59 + 32))(v60, v43, v38);
    v47 = v54;
    static Tensor.* infix(_:_:)(v61, v46);
    static Tensor.* infix(_:_:)(v47, v65);
    v48 = v47;
    v45 = v66;
    v66(v48, v38);
    v49 = swift_allocObject(v67, 40, 7);
    v49[2] = 1;
    v49[3] = 2;
    v49[4] = v63;
    Tensor.sum(alongAxes:)(v49);
    v49;
    v45(v40, v38);
    Tensor.sum()();
    v45(&v51, v38);
    v39 = v60;
  }

  v45(v39, v38);
  v45(v65, v38);
  v45(v55, v38);
  v45(v56, v38);
  return (v45)(v64, v38);
}

uint64_t closure #1 in MLActivityClassifier.Trainer.update(_:using:on:)(uint64_t a1, void (*a2)(uint64_t *, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v75 = a5;
  v74 = a4;
  v63 = a3;
  v78 = a2;
  v76 = a1;
  v69 = v5;
  v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v6 = *(*(v65 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v66 = &v63;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v68 = &v63;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v64 = &v63;
  v14 = alloca(v9);
  v15 = alloca(v9);
  v67 = &v63;
  v16 = alloca(v9);
  v17 = alloca(v9);
  v70 = &v63;
  v18 = type metadata accessor for Tensor(0);
  v79 = *(v18 - 8);
  v19 = *(v79 + 8);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v72 = &v63;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v71 = &v63;
  v24 = alloca(v19);
  v25 = alloca(v19);
  v73 = &v63;
  v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (LSTM.State?, Tensor));
  v27 = *(*(v26 - 8) + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LSTM.State?) - 8) + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  v77 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (LSTM.State, Tensor));
  v33 = *(*(v77 - 1) + 64);
  v34 = alloca(v33);
  v35 = alloca(v33);
  v36 = type metadata accessor for LSTM.State(0);
  __swift_storeEnumTagSinglePayload(&v63, 1, 1, v36);
  v37 = &v63 + *(v26 + 48);
  outlined init with take of DataFrame?(&v63, &v63, &demangling cache variable for type metadata for LSTM.State?);
  (*(v79 + 2))(v37, v78, v18);
  v38 = type metadata accessor for MLActivityClassifier.Model(0);
  v39 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
  Layer.callAsFunction(_:)(&v63, v38, v39);
  outlined destroy of Tensor?(&v63, &demangling cache variable for type metadata for (LSTM.State?, Tensor));
  v40 = *(v77 + 12);
  v77 = &v63;
  v76 = &v63 + v40;
  v41 = v18;
  v42 = v78 + *(type metadata accessor for WeightedDataSample(0) + 20);
  v43 = v66;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v42, v66, &demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v44 = v65;
  v45 = v43 + *(v65 + 48);
  v78 = *(v79 + 4);
  v78(v72, v43, v41);
  outlined destroy of Tensor?(v45, &demangling cache variable for type metadata for Tensor?);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v42, v43, &demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v46 = v67;
  outlined init with take of DataFrame?(v43 + *(v44 + 48), v67, &demangling cache variable for type metadata for Tensor?);
  v47 = *(v79 + 1);
  v48 = v43;
  v49 = v41;
  v47(v48, v41);
  v50 = v74;
  v51 = v72;
  static MLActivityClassifier.Trainer.reshapeLabels(prediction:target:weights:)(v73, v71, v70, v76, v72, v46);
  outlined destroy of Tensor?(v46, &demangling cache variable for type metadata for Tensor?);
  v79 = v47;
  v47(v51, v49);
  v52 = v63;
  outlined destroy of Tensor?(v63, &demangling cache variable for type metadata for Tensor?);
  v53 = v49;
  v54 = v49;
  v55 = v78;
  v78(v52, v73, v53);
  __swift_storeEnumTagSinglePayload(v52, 0, 1, v54);
  outlined destroy of Tensor?(v50, &demangling cache variable for type metadata for Tensor?);
  v55(v50, v71, v54);
  __swift_storeEnumTagSinglePayload(v50, 0, 1, v54);
  v56 = v70;
  outlined assign with take of Tensor?(v70, v75);
  v57 = v64;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v52, v64, &demangling cache variable for type metadata for Tensor?);
  v58 = v57;
  v59 = v54;
  if (__swift_getEnumTagSinglePayload(v57, 1, v54) == 1)
  {
    BUG();
  }

  v60 = v68;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v74, v68, &demangling cache variable for type metadata for Tensor?);
  if (__swift_getEnumTagSinglePayload(v60, 1, v54) == 1)
  {
    BUG();
  }

  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v75, v56, &demangling cache variable for type metadata for Tensor?);
  static MLActivityClassifier.Trainer.weightedCrossEntropy(logits:labels:weights:axis:)(v58, v60, v56, -1);
  outlined destroy of Tensor?(v56, &demangling cache variable for type metadata for Tensor?);
  outlined destroy of Tensor?(v77, &demangling cache variable for type metadata for (LSTM.State, Tensor));
  v61 = v79;
  v79(v60, v59);
  return v61(v58, v59);
}

uint64_t MLActivityClassifier.Trainer.makeFlatDataset(_:_:using:)(void *a1, uint64_t a2, uint64_t a3)
{
  v224 = v4;
  v253 = v5;
  v266 = *&a3;
  v212 = a1;
  v225 = v3;
  v214 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v7 = *(*(v214 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v215 = &v199;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v216 = &v199;
  v217 = type metadata accessor for WeightedDataSample(0);
  v218 = *(v217 - 8);
  v12 = *(v218 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v248 = &v199;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v219 = &v199;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v256 = &v199;
  v241 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnSlice<String>);
  v242 = *(v241 - 8);
  v20 = *(v242 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v250 = &v199;
  v251 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v243 = *(v251 - 8);
  v23 = *(v243 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v252 = &v199;
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ScalarType?) - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v213 = &v199;
  v203 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<ColumnSlice<Float>>);
  v29 = *(*(v203 - 8) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v255 = &v199;
  v261 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnSlice<Float>);
  v229 = *(v261 - 8);
  v32 = *(v229 + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v204 = &v199;
  v35 = alloca(v32);
  v36 = alloca(v32);
  v230 = &v199;
  v231 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Float>);
  v205 = *(v231 - 8);
  v37 = *(v205 + 64);
  v38 = alloca(v37);
  v39 = alloca(v37);
  v232 = &v199;
  v40 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v41 = alloca(v40);
  v42 = alloca(v40);
  v247 = &v199;
  v207 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<ColumnSlice<Double>>);
  v43 = *(*(v207 - 8) + 64);
  v44 = alloca(v43);
  v45 = alloca(v43);
  v226 = &v199;
  v270 = type metadata accessor for Tensor(0);
  v268 = *(v270 - 8);
  v46 = *(v268 + 64);
  v47 = alloca(v46);
  v48 = alloca(v46);
  v249 = &v199;
  v49 = alloca(v46);
  v50 = alloca(v46);
  v239 = &v199;
  v51 = alloca(v46);
  v52 = alloca(v46);
  v240 = &v199;
  v53 = alloca(v46);
  v54 = alloca(v46);
  v259 = &v199;
  v55 = alloca(v46);
  v56 = alloca(v46);
  v206 = &v199;
  v57 = alloca(v46);
  v58 = alloca(v46);
  v234 = &v199;
  v59 = alloca(v46);
  v60 = alloca(v46);
  v209 = &v199;
  v262 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnSlice<Double>);
  v235 = *(v262 - 8);
  v61 = *(v235 + 64);
  v62 = alloca(v61);
  v63 = alloca(v61);
  v208 = &v199;
  v64 = alloca(v61);
  v65 = alloca(v61);
  v236 = &v199;
  v237 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v210 = *(v237 - 8);
  v66 = *(v210 + 64);
  v67 = alloca(v66);
  v68 = alloca(v66);
  v238 = &v199;
  v228 = type metadata accessor for AnyColumn(0);
  v201 = *(v228 - 8);
  v69 = *(v201 + 64);
  v70 = alloca(v69);
  v71 = alloca(v69);
  v258 = &v199;
  v271 = type metadata accessor for DataFrame.Rows(0);
  v269 = *(v271 - 1);
  v72 = v269[8];
  v73 = alloca(v72);
  v74 = alloca(v72);
  v75 = *(type metadata accessor for MLActivityClassifier.Model(0) + 64);
  v265 = *(a3 + v75 + 40);
  v76 = v265;

  v264 = a2;
  DataFrame.rows.getter(v76, a2, v77, v78);
  v79 = DataFrame.Rows.count.getter();
  (v269[1])(&v199, v271);
  v80 = *(*&v266 + v75 + 32);
  if (!v80)
  {
    BUG();
  }

  if (__OFSUB__(-v79, 1) && v80 == -1)
  {
    BUG();
  }

  v81 = v79 / v80;
  v82 = 0;
  if (v79 / v80 > 0)
  {
    v82 = v79 / v80;
  }

  v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v82, 0, _swiftEmptyArrayStorage);
  v220 = v79 / v80;
  if (v81 < 0)
  {
    BUG();
  }

  v260 = v83;
  if (v81)
  {
    v84 = 0;
    v221 = *(type metadata accessor for MLActivityClassifier.Trainer(0) + 20);
    v85 = *(v253 + v221 + 40);
    v233 = *(v85 + 16);
    v246 = v85;
    v202 = v85 + 32;
    v223 = (v265 + 40);
    v86 = v258;
    v222 = v80;
    while (1)
    {
      v257 = v84 * v80;
      if (!is_mul_ok(v84, v80))
      {
        BUG();
      }

      v87 = v84 + 1;
      if (!is_mul_ok(v87, v80))
      {
        BUG();
      }

      if ((v87 * v80) < v257)
      {
        BUG();
      }

      v245 = v87 * v80;
      v211 = v87;
      v88 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v270, &protocol witness table for String);
      if (v233)
      {

        v89 = 0;
        do
        {
          if (v89 >= *(v246 + 16))
          {
            BUG();
          }

          v267 = v88;
          v200 = v89;
          v90 = *(v202 + 16 * v89);
          v91 = *(v202 + 16 * v89 + 8);

          v263 = v90;
          DataFrame.subscript.getter(v90, v91);
          v92 = AnyColumn.wrappedElementType.getter(v90);
          v271 = *(v201 + 8);
          v271(v86, v228);
          v227 = v91;
          if (v92 == &type metadata for Double)
          {
            DataFrame.subscript.getter(v263, v91, &type metadata for Double);
            v123 = v236;
            Column.subscript.getter(v257, v245, v237);
            v124 = v123;
            v125 = v262;
            (*(v235 + 16))(v208, v124, v262);
            v126 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type ColumnSlice<Double> and conformance ColumnSlice<A>, &demangling cache variable for type metadata for ColumnSlice<Double>, &protocol conformance descriptor for ColumnSlice<A>);
            v127 = v226;
            dispatch thunk of Sequence.makeIterator()(v125, v126);
            v244 = (v127 + *(v207 + 36));
            v128 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type ColumnSlice<Double> and conformance ColumnSlice<A>, &demangling cache variable for type metadata for ColumnSlice<Double>, &protocol conformance descriptor for ColumnSlice<A>);
            v129 = v127;
            v130 = v125;
            v131 = v128;
            v271 = _swiftEmptyArrayStorage;
            while (1)
            {
              v132 = v131;
              dispatch thunk of Collection.endIndex.getter(v130, v131);
              v133 = v244;
              if (*v244 == v254[0])
              {
                break;
              }

              v134 = v262;
              v135 = dispatch thunk of Collection.subscript.read(v254, v244, v262, v132);
              v266 = *v136;
              LOBYTE(v269) = *(v136 + 8);
              v135(v254, 0);
              dispatch thunk of Collection.formIndex(after:)(v133, v134, v132);
              if (v269)
              {
                BUG();
              }

              if (!swift_isUniquelyReferenced_nonNull_native(v271))
              {
                v271 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v271 + 2) + 1, 1, v271);
              }

              v137 = *(v271 + 2);
              v130 = v262;
              if (*(v271 + 3) >> 1 <= v137)
              {
                v140 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v271 + 3) >= 2uLL, v137 + 1, 1, v271);
                v131 = v132;
                v130 = v262;
                v271 = v140;
              }

              else
              {
                v131 = v132;
              }

              v138 = v266;
              v139 = v271;
              *(v271 + 2) = v137 + 1;
              v139[v137 + 8] = v138;
              v129 = v226;
            }

            outlined destroy of Tensor?(v129, &demangling cache variable for type metadata for IndexingIterator<ColumnSlice<Double>>);
            v254[0] = v271;
            v141 = type metadata accessor for ComputeDevice(0);
            v142 = v247;
            __swift_storeEnumTagSinglePayload(v247, 1, 1, v141);
            v143 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
            v144 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);
            v145 = v209;
            Tensor.init<A>(_:on:)(v254, v142, v143, v144);
            v146 = v234;
            (*(v268 + 32))(v234, v145, v270);
            v147 = v267;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v267);
            v254[0] = v147;
            LOBYTE(v147) = v227;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v146, v263, v227, isUniquelyReferenced_nonNull_native);
            v147;
            v88 = v254[0];
            (*(v235 + 8))(v236, v262);
            v120 = v238;
            v121 = v237;
            v122 = v210;
          }

          else
          {
            v93 = v263;
            DataFrame.subscript.getter(v263, v91);
            v94 = AnyColumn.wrappedElementType.getter(v93);
            v271(v86, v228);
            if (v94 != &type metadata for Float)
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000023, ("count mismatch, expected " + 0x8000000000000000), "CreateML/MLActivityClassifier+Training.swift", 44, 2, 527, 0);
              BUG();
            }

            DataFrame.subscript.getter(v263, v91, &type metadata for Float);
            v95 = v230;
            Column.subscript.getter(v257, v245, v231);
            v96 = v95;
            v97 = v261;
            (*(v229 + 16))(v204, v96, v261);
            v98 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type ColumnSlice<Float> and conformance ColumnSlice<A>, &demangling cache variable for type metadata for ColumnSlice<Float>, &protocol conformance descriptor for ColumnSlice<A>);
            v99 = v255;
            dispatch thunk of Sequence.makeIterator()(v97, v98);
            v244 = (v99 + *(v203 + 36));
            v100 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type ColumnSlice<Float> and conformance ColumnSlice<A>, &demangling cache variable for type metadata for ColumnSlice<Float>, &protocol conformance descriptor for ColumnSlice<A>);
            v101 = v97;
            v102 = v100;
            v271 = _swiftEmptyArrayStorage;
            while (1)
            {
              v103 = v102;
              dispatch thunk of Collection.endIndex.getter(v101, v102);
              v104 = v244;
              if (*v244 == v254[0])
              {
                break;
              }

              v105 = v261;
              v106 = dispatch thunk of Collection.subscript.read(v254, v244, v261, v103);
              LODWORD(v266) = *v107;
              LOBYTE(v269) = *(v107 + 4);
              v106(v254, 0);
              dispatch thunk of Collection.formIndex(after:)(v104, v105, v103);
              if (v269)
              {
                BUG();
              }

              if (!swift_isUniquelyReferenced_nonNull_native(v271))
              {
                v271 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v271 + 2) + 1, 1, v271);
              }

              v108 = *(v271 + 2);
              v101 = v261;
              if (*(v271 + 3) >> 1 <= v108)
              {
                v110 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v271 + 3) >= 2uLL, v108 + 1, 1, v271);
                v102 = v103;
                v101 = v261;
                v271 = v110;
              }

              else
              {
                v102 = v103;
              }

              v109 = v271;
              *(v271 + 2) = v108 + 1;
              *(v109 + v108 + 8) = LODWORD(v266);
            }

            outlined destroy of Tensor?(v255, &demangling cache variable for type metadata for IndexingIterator<ColumnSlice<Float>>);
            v254[0] = v271;
            v111 = type metadata accessor for ComputeDevice(0);
            v112 = v247;
            __swift_storeEnumTagSinglePayload(v247, 1, 1, v111);
            v113 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
            v114 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);
            v115 = v206;
            Tensor.init<A>(_:on:)(v254, v112, v113, v114);
            v116 = v234;
            (*(v268 + 32))(v234, v115, v270);
            v117 = v267;
            v118 = swift_isUniquelyReferenced_nonNull_native(v267);
            v254[0] = v117;
            v119 = v116;
            LOBYTE(v116) = v227;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v119, v263, v227, v118);
            v116;
            v88 = v254[0];
            (*(v229 + 8))(v230, v261);
            v120 = v232;
            v121 = v231;
            v122 = v205;
          }

          (*(v122 + 8))(v120, v121);
          v89 = v200 + 1;
          v149 = v256;
          v86 = v258;
        }

        while (v200 + 1 != v233);
        v246;
      }

      else
      {
        v149 = v256;
      }

      v150 = _swiftEmptyArrayStorage;
      v271 = *(v265 + 16);
      v267 = v88;
      if (v271)
      {
        break;
      }

LABEL_56:
      v165 = type metadata accessor for ScalarType(0);
      v166 = v213;
      __swift_storeEnumTagSinglePayload(v213, 1, 1, v165);
      Tensor.init(stacking:alongAxis:scalarType:)(v150, 0, v166);
      DataFrame.subscript.getter(*(v253 + v221 + 48), *(v253 + v221 + 56), &type metadata for String);
      Column.subscript.getter(v257, v245, v251);
      v167 = specialized Collection<>.mostFrequent()();
      v169 = 0x3E656E6F6E3CLL;
      v170 = 0xE600000000000000;
      if ((v168 & 0xFFFFFFFFFFFFFFFDLL) != 0)
      {
        v169 = v167;
        v170 = v168;
      }

      *&v171 = v169;
      *(&v171 + 1) = v170;
      v172 = v212;
      v173 = specialized Collection<>.firstIndex(of:)(v171, v212);
      if (v174)
      {
        v265;
        v260;
        v196 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v196, 0, 0);
        v197._countAndFlagsBits = v169;
        v197._object = v170;
        static MLCreateError.validationClassNotFound(className:)(v197);
        v170;
        swift_willThrow();
        (*(v242 + 8))(v250, v241);
        (*(v243 + 8))(v252, v251);
        (*(v268 + 8))(v259, v270);
        v195 = v267;
        return v195;
      }

      v175 = v173;
      v170;
      v176 = v172[2];
      v177 = type metadata accessor for ComputeDevice(0);
      v178 = v247;
      __swift_storeEnumTagSinglePayload(v247, 1, 1, v177);
      Tensor.init(oneHotAtIndex:depth:onValue:offValue:on:)(v175, v176, v178, 1.0, 0.0);
      v179 = *(v268 + 16);
      v180 = v270;
      v179(v248, v259, v270);
      v181 = v219;
      __swift_storeEnumTagSinglePayload(v219, 1, 1, v180);
      v182 = v216;
      v179(v216, v249, v180);
      v183 = v214;
      outlined init with take of DataFrame?(v181, v182 + *(v214 + 48), &demangling cache variable for type metadata for Tensor?);
      v184 = v215;
      outlined init with take of DataFrame?(v182, v215, &demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
      v185 = v184 + *(v183 + 48);
      v186 = v248 + *(v217 + 20);
      (*(v268 + 32))(v186, v184, v270);
      outlined init with take of DataFrame?(v185, &v186[*(v183 + 48)], &demangling cache variable for type metadata for Tensor?);
      v187 = v260;
      v188 = v260[2];
      if (v260[3] >> 1 <= v188)
      {
        v187 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v260[3] >= 2uLL, v188 + 1, 1, v260);
      }

      v86 = v258;
      v189 = v267;
      v187[2] = v188 + 1;
      v190 = *(v218 + 80);
      v260 = v187;
      outlined init with take of WeightedDataSample(v248, v187 + ((v190 + 32) & ~v190) + *(v218 + 72) * v188);
      v191 = *(v268 + 8);
      v192 = v270;
      v191(v249, v270);
      (*(v242 + 8))(v250, v241);
      (*(v243 + 8))(v252, v251);
      v191(v259, v192);
      v189;
      v84 = v211;
      v80 = v222;
      if (v211 == v220)
      {
        goto LABEL_62;
      }
    }

    v151 = v223;
    v269 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (*(v88 + 16))
      {
        v152 = *v151;
        v153 = *(v151 - 1);

        v154 = v153;
        v149 = v256;
        v155 = specialized __RawDictionaryStorage.find<A>(_:)(v154, v152);
        v157 = 1;
        if (v156)
        {
          (*(v268 + 16))(v149, *(v267 + 56) + *(v268 + 72) * v155, v270);
          v157 = 0;
        }

        v158 = v270;
        __swift_storeEnumTagSinglePayload(v149, v157, 1, v270);
        v152;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v149, 1, v158);
        v88 = v267;
        if (EnumTagSinglePayload != 1)
        {
          v160 = *(v268 + 32);
          v161 = v270;
          v160(v240, v149, v270);
          v266 = *&v160;
          v160(v239, v240, v161);
          if (swift_isUniquelyReferenced_nonNull_native(v269))
          {
            v162 = v269;
          }

          else
          {
            v162 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v269[2] + 1, 1, v269);
          }

          v163 = v162[2];
          v88 = v267;
          if (v162[3] >> 1 <= v163)
          {
            v162 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v162[3] >= 2uLL, v163 + 1, 1, v162);
          }

          v162[2] = v163 + 1;
          v164 = *(v268 + 80);
          v269 = v162;
          (*&v266)(v162 + ((v164 + 32) & ~v164) + *(v268 + 72) * v163, v239, v270);
          v149 = v256;
          goto LABEL_53;
        }
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v149, 1, 1, v270);
      }

      outlined destroy of Tensor?(v149, &demangling cache variable for type metadata for Tensor?);
LABEL_53:
      v151 += 2;
      v271 = (v271 - 1);
      if (!v271)
      {
        v265;
        v150 = v269;
        goto LABEL_56;
      }
    }
  }

LABEL_62:
  v265;
  v193 = type metadata accessor for MLActivityClassifier.Trainer(0);
  v194 = v260;
  specialized Sequence<>.makeDataset(configuration:)(*(v193 + 20) + v253, v260);
  v195 = v194;
  return v195;
}

uint64_t WeightedDataSample.init(features:labels:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v19 = a1;
  v20 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v5 = *(*(v4 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v23 = &v19;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v10 = type metadata accessor for Tensor(0);
  v11 = *(*(v10 - 8) + 32);
  v11(&v19, a2, v10);
  v12 = v11;
  v22 = v11;
  v13 = v4;
  outlined init with take of DataFrame?(v21, &v19 + *(v4 + 48), &demangling cache variable for type metadata for Tensor?);
  v14 = v20;
  v12(v20, v19, v10);
  v15 = v23;
  outlined init with take of DataFrame?(&v19, v23, &demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v16 = v15 + *(v13 + 48);
  v17 = (v14 + *(type metadata accessor for WeightedDataSample(0) + 20));
  v22(v17, v23, v10);
  return outlined init with take of DataFrame?(v16, v17 + *(v13 + 48), &demangling cache variable for type metadata for Tensor?);
}

uint64_t *closure #2 in MLActivityClassifier.Trainer.makeDataset(_:_:using:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v132 = a5;
  v136 = v6;
  v150 = a4;
  v151 = a3;
  v142 = a1;
  v147 = v5;
  v152 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v7 = *(*(v152 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v137 = &v126;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v138 = &v126;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v139 = &v126;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v144 = &v126;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ScalarType?) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v134 = &v126;
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v143 = &v126;
  v23 = type metadata accessor for Tensor(0);
  v157 = *(v23 - 1);
  v24 = *(v157 + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v148 = &v126;
  v27 = alloca(v24);
  v28 = alloca(v24);
  v145 = &v126;
  v29 = alloca(v24);
  v30 = alloca(v24);
  v131 = &v126;
  v31 = alloca(v24);
  v32 = alloca(v24);
  v154 = &v126;
  v33 = alloca(v24);
  v34 = alloca(v24);
  v153 = &v126;
  v35 = alloca(v24);
  v36 = alloca(v24);
  v129 = &v126;
  v158 = _swiftEmptyArrayStorage;
  v159._object = v23;
  v37 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v23, &protocol witness table for String);
  v38 = *(type metadata accessor for MLActivityClassifier.Trainer(0) + 20);
  v133 = a2;
  v135 = v38;
  v39 = *(a2 + v38 + 40);
  v40 = *(v39 + 16);
  v146 = 1;
  if (v40)
  {
    v130 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);

    v149 = v39;
    v41 = (v39 + 40);
    do
    {
      v140 = v40;
      v42 = *(v41 - 1);
      v43 = *v41;

      v159._countAndFlagsBits = v42;
      v160 = v43;
      v44 = v43;
      v45 = v130;
      DataFrame.Row.subscript.getter(v42, v44, v130);
      if (!v155)
      {
        v149;
        v100 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        v98 = swift_allocError(&type metadata for MLCreateError, v100, 0, 0);
        v101._countAndFlagsBits = v159._countAndFlagsBits;
        v102 = v160;
        v101._object = v160;
        static MLCreateError.featureNotFound(feature:)(v101);
        v102;
        swift_willThrow();
        v103 = v37;
        goto LABEL_41;
      }

      v141 = v41;
      v46 = type metadata accessor for ComputeDevice(0);
      v47 = v45;
      v48 = v143;
      __swift_storeEnumTagSinglePayload(v143, 1, 1, v46);
      v49 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);
      v50 = v129;
      Tensor.init<A>(_:on:)(&v155, v48, v47, v49);
      v128 = *(v157 + 32);
      v128(v153, v50, v159._object);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v37);
      v155 = v37;
      v53 = specialized __RawDictionaryStorage.find<A>(_:)(v159._countAndFlagsBits, v160);
      v54 = (v52 & 1) == 0;
      v55 = __OFADD__(v37[2], v54);
      v56 = v37[2] + v54;
      if (v55)
      {
        BUG();
      }

      v57 = v52;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Tensor>);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v56))
      {
        v53 = specialized __RawDictionaryStorage.find<A>(_:)(v159._countAndFlagsBits, v160);
        LOBYTE(v59) = v59 & 1;
        v60 = v153;
        v61 = v141;
        if ((v57 & 1) != v59)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v153, v59, v58);
          BUG();
        }

        v62 = v57;
        v63 = v140;
        countAndFlagsBits = v159._countAndFlagsBits;
      }

      else
      {
        v60 = v153;
        v63 = v140;
        v61 = v141;
        countAndFlagsBits = v159._countAndFlagsBits;
        v62 = v57;
      }

      v37 = v155;
      if (v62)
      {
        (*(v157 + 40))(v155[7] + v53 * *(v157 + 72), v60, v159._object);
        v160;
      }

      else
      {
        v155[(v53 >> 6) + 8] |= 1 << v53;
        v65 = v37[6];
        v66 = 16 * v53;
        *(v65 + v66) = countAndFlagsBits;
        *(v65 + v66 + 8) = v160;
        v128((v37[7] + v53 * *(v157 + 72)), v60, v159._object);
        v67 = v37[2];
        v55 = __OFADD__(1, v67);
        v68 = v67 + 1;
        if (v55)
        {
          BUG();
        }

        v37[2] = v68;
      }

      v41 = v61 + 2;
      v40 = v63 - 1;
    }

    while (v40);
    v160 = v37;
    v149;
  }

  else
  {
    v160 = v37;
  }

  v69 = *(v151 + 16);
  v70 = v150;
  if (v69 != v160[2])
  {
    v155 = 0;
    v156 = 0xE000000000000000;
    v87 = v160;
    _StringGuts.grow(_:)(56);
    v88._object = "smatch: expected " + 0x8000000000000000;
    v88._countAndFlagsBits = 0xD000000000000029;
    String.append(_:)(v88);
    v127 = v69;
    v89 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v91 = v90;
    v88._countAndFlagsBits = v89;
    v88._object = v90;
    String.append(_:)(v88);
    v91;
    v88._countAndFlagsBits = 0x756F662074756220;
    v88._object = 0xEB0000000020646ELL;
    String.append(_:)(v88);
    v127 = v87[2];
    v92 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v94 = v93;
    v88._countAndFlagsBits = v92;
    v88._object = v93;
    String.append(_:)(v88);
    v94;
    v95 = v155;
    v96 = v156;
    v97 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v98 = swift_allocError(&type metadata for MLCreateError, v97, 0, 0);
    v88._countAndFlagsBits = 0;
    v88._object = 0xE000000000000000;
    v99._countAndFlagsBits = v95;
    v99._object = v96;
    static MLCreateError.featureFormatNotSupported(feature:message:)(v88, v99);
    v96;
    swift_willThrow();
    goto LABEL_40;
  }

  if (!v69)
  {
    goto LABEL_34;
  }

  v71 = v151;

  v72 = (v71 + 40);
  v158 = _swiftEmptyArrayStorage;
  do
  {
    if (!v160[2])
    {
      v78 = v144;
      __swift_storeEnumTagSinglePayload(v144, 1, 1, v159._object);
LABEL_29:
      outlined destroy of Tensor?(v78, &demangling cache variable for type metadata for Tensor?);
      goto LABEL_30;
    }

    v159._countAndFlagsBits = v69;
    v73 = *v72;
    v74 = *(v72 - 1);

    v75 = specialized __RawDictionaryStorage.find<A>(_:)(v74, v73);
    v77 = 1;
    v78 = v144;
    if (v76)
    {
      (*(v157 + 16))(v144, v160[7] + *(v157 + 72) * v75, v159._object);
      v77 = 0;
    }

    object = v159._object;
    __swift_storeEnumTagSinglePayload(v78, v77, 1, v159._object);
    v73;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v78, 1, object);
    v70 = v150;
    v69 = v159._countAndFlagsBits;
    if (EnumTagSinglePayload == 1)
    {
      goto LABEL_29;
    }

    v81 = *(v157 + 32);
    v82 = v131;
    v83 = v78;
    v84 = v159._object;
    v81(v131, v83, v159._object);
    v153 = v81;
    v81(v145, v82, v84);
    if (!swift_isUniquelyReferenced_nonNull_native(v158))
    {
      v158 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v158[2] + 1, 1, v158);
    }

    v85 = v158[2];
    v70 = v150;
    if (v158[3] >> 1 <= v85)
    {
      v158 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v158[3] >= 2uLL, v85 + 1, 1, v158);
    }

    v86 = v158;
    v158[2] = v85 + 1;
    (v153)(v86 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v85, v145, v159._object);
    v69 = v159._countAndFlagsBits;
LABEL_30:
    v72 += 2;
    --v69;
  }

  while (v69);
  v151;
LABEL_34:
  v104 = type metadata accessor for ScalarType(0);
  v105 = v134;
  __swift_storeEnumTagSinglePayload(v134, 1, 1, v104);
  Tensor.init(stacking:alongAxis:scalarType:)(v158, 0, v105);
  DataFrame.Row.subscript.getter(*(v133 + v135 + 48), *(v133 + v135 + 56), &type metadata for String);
  v106 = v155;
  if (!v156)
  {
    v106 = 0;
  }

  v107 = 0xE000000000000000;
  if (v156)
  {
    v107 = v156;
  }

  *&v108 = v106;
  *(&v108 + 1) = v107;
  v109 = specialized Collection<>.firstIndex(of:)(v108, v70);
  if (v110)
  {
    v111 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v98 = swift_allocError(&type metadata for MLCreateError, v111, 0, 0);
    v112._countAndFlagsBits = v106;
    v112._object = v107;
    static MLCreateError.validationClassNotFound(className:)(v112);
    v107;
    swift_willThrow();
    (*(v157 + 8))(v154, v159._object);
LABEL_40:
    v103 = v160;
LABEL_41:
    v103;
    result = v132;
    *v132 = v98;
  }

  else
  {
    v114 = v70;
    v115 = v109;
    v107;
    v116 = v114[2];
    v117 = type metadata accessor for ComputeDevice(0);
    v118 = v143;
    __swift_storeEnumTagSinglePayload(v143, 1, 1, v117);
    Tensor.init(oneHotAtIndex:depth:onValue:offValue:on:)(v115, v116, v118, 1.0, 0.0);
    v119 = *(v157 + 32);
    v120 = v159._object;
    v119(v147, v154, v159._object);
    v159._countAndFlagsBits = v119;
    v121 = v139;
    __swift_storeEnumTagSinglePayload(v139, 1, 1, v120);
    v122 = v138;
    v119(v138, v148, v120);
    outlined init with take of DataFrame?(v121, v122 + *(v152 + 48), &demangling cache variable for type metadata for Tensor?);
    v123 = v137;
    outlined init with take of DataFrame?(v122, v137, &demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
    v124 = v123 + *(v152 + 48);
    v125 = v147 + *(type metadata accessor for WeightedDataSample(0) + 20);
    (v159._countAndFlagsBits)(v125, v123, v120);
    outlined init with take of DataFrame?(v124, v125 + *(v152 + 48), &demangling cache variable for type metadata for Tensor?);
    v160;
    result = v136;
    v146 = v136;
  }

  return result;
}

uint64_t MLActivityClassifier.DataBatcher.next()(uint64_t a1, uint64_t a2)
{
  v19 = v2;
  v4 = type metadata accessor for DataFrame.Rows(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = *(v3 + *(type metadata accessor for MLActivityClassifier.DataBatcher(0) + 48));
  v18[1] = v3;
  DataFrame.rows.getter(0, a2, v10, v11);
  v12 = DataFrame.Rows.count.getter();
  (*(v5 + 8))(v18, v4);
  if (v9 >= v12)
  {
    v15 = 1;
    v14 = v19;
  }

  else
  {
    v13 = timestampSeed()();
    v14 = v19;
    MLActivityClassifier.DataBatcher.generateNextBatch(rowCount:seed:)(1, v13);
    v15 = 0;
  }

  v16 = type metadata accessor for DataFrame(0);
  return __swift_storeEnumTagSinglePayload(v14, v15, 1, v16);
}

void *specialized Sequence._copyToContiguousArray()()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(v0);
  outlined destroy of MLActivityClassifier.ModelParameters(v0, type metadata accessor for MLActivityClassifier.DataBatcher);
  return v1;
}

uint64_t protocol witness for DataSampleProtocol.features.getter in conformance WeightedDataSample()
{
  v2 = v0;
  v3 = type metadata accessor for Tensor(0);
  return (*(*(v3 - 8) + 16))(v2, v1, v3);
}

uint64_t protocol witness for DataSampleProtocol.labels.getter in conformance WeightedDataSample(uint64_t a1)
{
  v13 = a1;
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v5 = *(*(v4 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = v3 + *(v4 + 48);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v2 + *(a1 + 20), v12, &demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v9 = &v12[*(v4 + 48)];
  v10 = type metadata accessor for Tensor(0);
  (*(*(v10 - 8) + 32))(v3, v12, v10);
  return outlined init with take of DataFrame?(v9, v8, &demangling cache variable for type metadata for Tensor?);
}

uint64_t WeightedDataSample.init<A>(collating:)(void (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v64 = a1;
  v47 = v3;
  v52 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v5 = *(*(v52 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v48 = v46;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v49 = v46;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v60 = v46;
  v13 = *(a3 + 8);
  v57 = type metadata accessor for LazySequence(0, a2, v13);
  v63 = *(v57 - 8);
  v14 = *(v63 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v51 = v46;
  v17 = type metadata accessor for Tensor(255);
  v62 = v17;
  v55 = v13;
  v59 = type metadata accessor for LazyMapSequence(0, a2, v17, v13);
  v18 = *(*(v59 - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v50 = *(v17 - 8);
  v21 = *(v50 + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v54 = v46;
  v24 = alloca(v21);
  v25 = alloca(v21);
  v53 = v46;
  v58 = a2;
  v65 = Sequence.allSatisfy(_:)(closure #1 in WeightedDataSample.init<A>(collating:), 0, a2, v13);
  v26 = v51;
  Sequence.lazy.getter(a2, v13);
  v27 = v57;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for LazySequence<A>, v57);
  LazySequenceProtocol.map<A>(_:)(specialized implicit closure #1 in WeightedDataSample.init<A>(collating:), 0, v27, v62, WitnessTable);
  v63 = *(v63 + 8);
  v28 = v27;
  (v63)(v26, v27);
  v46[1] = v61;
  v29 = v59;
  v30 = swift_getWitnessTable(&protocol conformance descriptor for <> LazyMapSequence<A, B>, v59);
  Tensor.init<A>(collating:)(v46, v29, v30);
  Sequence.lazy.getter(v58, v55);
  LazySequenceProtocol.map<A>(_:)(specialized implicit closure #2 in WeightedDataSample.init<A>(collating:), 0, v28, v62, WitnessTable);
  (v63)(v26, v28);
  v61 = v30;
  Tensor.init<A>(collating:)(v46, v59, v30);
  if (v65)
  {
    Sequence.lazy.getter(v58, v55);
    v31 = v57;
    LazySequenceProtocol.map<A>(_:)(closure #2 in WeightedDataSample.init<A>(collating:), 0, v57, v62, WitnessTable);
    (v63)(v26, v31);
    v32 = v60;
    Tensor.init<A>(collating:)(v46, v59, v61);
    v33 = 0;
  }

  else
  {
    v33 = 1;
    v32 = v60;
  }

  (*(*(v58 - 8) + 8))(v64);
  v34 = v32;
  v35 = v62;
  __swift_storeEnumTagSinglePayload(v34, v33, 1, v62);
  v36 = *(v50 + 32);
  v37 = v49;
  v36(v49, v54, v35);
  v38 = v36;
  v64 = v36;
  v39 = v52;
  outlined init with take of DataFrame?(v60, v37 + *(v52 + 48), &demangling cache variable for type metadata for Tensor?);
  v40 = v47;
  v38(v47, v53, v35);
  v41 = v37;
  v42 = v48;
  outlined init with take of DataFrame?(v41, v48, &demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v43 = *(v39 + 48) + v42;
  v44 = v40 + *(type metadata accessor for WeightedDataSample(0) + 20);
  v64(v44, v42, v35);
  return outlined init with take of DataFrame?(v43, v44 + *(v52 + 48), &demangling cache variable for type metadata for Tensor?);
}

uint64_t closure #1 in WeightedDataSample.init<A>(collating:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v2 = *(*(v1 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = type metadata accessor for WeightedDataSample(0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1 + *(v8 + 20), v11, &demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  outlined init with take of DataFrame?(&v11[*(v1 + 48)], v11, &demangling cache variable for type metadata for Tensor?);
  v9 = type metadata accessor for Tensor(0);
  (*(*(v9 - 8) + 8))(v11, v9);
  LOBYTE(v9) = __swift_getEnumTagSinglePayload(v11, 1, v9) != 1;
  outlined destroy of Tensor?(v11, &demangling cache variable for type metadata for Tensor?);
  return v9;
}

uint64_t specialized implicit closure #1 in WeightedDataSample.init<A>(collating:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Tensor(0);
  return (*(*(v3 - 8) + 16))(v2, a1, v3);
}

uint64_t specialized implicit closure #2 in WeightedDataSample.init<A>(collating:)(uint64_t a1)
{
  v11[0] = v1;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v4 = *(*(v3 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = type metadata accessor for WeightedDataSample(0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1 + *(v7 + 20), v11, &demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v8 = v11 + *(v3 + 48);
  v9 = type metadata accessor for Tensor(0);
  (*(*(v9 - 8) + 32))(v2, v11, v9);
  return outlined destroy of Tensor?(v8, &demangling cache variable for type metadata for Tensor?);
}

uint64_t closure #2 in WeightedDataSample.init<A>(collating:)(uint64_t a1)
{
  v13[0] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = type metadata accessor for WeightedDataSample(0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1 + *(v9 + 20), v13, &demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  outlined init with take of DataFrame?(v13 + *(v2 + 48), v13, &demangling cache variable for type metadata for Tensor?);
  v10 = type metadata accessor for Tensor(0);
  v11 = *(v10 - 8);
  (*(v11 + 8))(v13, v10);
  if (__swift_getEnumTagSinglePayload(v13, 1, v10) == 1)
  {
    BUG();
  }

  return (*(v11 + 32))(v13[0], v13, v10);
}

uint64_t static MLCreateError.featureCountMismatch(expected:actual:)()
{
  v1 = v0;
  _StringGuts.grow(_:)(46);
  0;
  *&v8 = 0xD000000000000021;
  *(&v8 + 1) = "were found in the input data" + 0x8000000000000000;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  object = v2._object;
  String.append(_:)(v2);
  object;
  v4._countAndFlagsBits = 0x6C6175746361202CLL;
  v4._object = 0xE900000000000020;
  String.append(_:)(v4);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v6 = v5._object;
  String.append(_:)(v5);
  result = v6;
  *v1 = v8;
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  *(v1 + 48) = 0;
  return result;
}

uint64_t closure #2 in MLActivityClassifier.DataBatcher.asWeightedSamples(with:classLabels:labels:)(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v40 = type metadata accessor for Tensor(0);
  v38 = *(v40 - 8);
  v6 = *(v38 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v37 = &v31;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ScalarType?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v34 = &v31;
  v12 = *a2;
  v13 = *(*a2 + 16);
  if (v13)
  {
    v35 = v3;
    v14 = *a1;
    v42 = _swiftEmptyArrayStorage;
    v39 = v12;

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    if (v14 < 0)
    {
      BUG();
    }

    v15 = v14;
    v32 = v13;
    v36 = v5;
    v16 = v42;
    v17 = 0;
    v18 = v40;
    v19 = v38;
    v33 = v14;
    do
    {
      v20 = *(v39 + 8 * v17 + 32);
      if (v15 >= *(v20 + 16))
      {
        BUG();
      }

      v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v31 = *(v19 + 72);
      (*(v19 + 16))(v37, v21 + v20 + v15 * v31, v18);
      v42 = v16;
      v22 = v18;
      v23 = v16[2];
      v24 = v16[3];
      v25 = v23 + 1;
      if (v24 >> 1 <= v23)
      {
        v41 = v23 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24 >= 2, v25, 1);
        v25 = v41;
        v22 = v40;
        v16 = v42;
      }

      ++v17;
      v16[2] = v25;
      v26 = v16 + v21 + v31 * v23;
      v18 = v22;
      v27 = v38;
      (*(v38 + 32))(v26, v37);
      v19 = v27;
      v15 = v33;
    }

    while (v32 != v17);
    v39;
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  v28 = type metadata accessor for ScalarType(0);
  v29 = v34;
  __swift_storeEnumTagSinglePayload(v34, 1, 1, v28);
  return Tensor.init(stacking:alongAxis:scalarType:)(v16, 0, v29);
}

void *closure #3 in MLActivityClassifier.DataBatcher.asWeightedSamples(with:classLabels:labels:)(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  if (*a1)
  {
    v11 = v3;

    v6 = specialized Sequence.compactMap<A>(_:)(v4, a2);
    v4;
    v7 = v6[2];
    if (v7 == *(a3 + *(type metadata accessor for MLActivityClassifier.DataBatcher(0) + 40)))
    {
      result = v11;
      *v11 = v6;
      return result;
    }

    v6;
  }

  v9 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v9, 0, 0);
  *v10 = 0xD00000000000002CLL;
  *(v10 + 8) = "found in the input data" + 0x8000000000000000;
  *(v10 + 16) = 0;
  *(v10 + 32) = 0;
  *(v10 + 48) = 0;
  return swift_willThrow();
}

uint64_t closure #5 in MLActivityClassifier.DataBatcher.asWeightedSamples(with:classLabels:labels:)(uint64_t *a1, uint64_t a2)
{
  v4 = v2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v21 = &v19;
  v8 = *a1;
  if (*a1 && (v22 = v3, v9 = v4, v10 = *(v8 + 16), v10 == *(a2 + *(type metadata accessor for MLActivityClassifier.DataBatcher(0) + 40))))
  {
    v20 = v8;
    v11 = type metadata accessor for ComputeDevice(0);
    v12 = v21;
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v11);

    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
    v14 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);
    Tensor.init<A>(_:on:)(&v20, v12, v13, v14);
    v15 = type metadata accessor for Tensor(0);
    return __swift_storeEnumTagSinglePayload(v9, 0, 1, v15);
  }

  else
  {
    v17 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v17, 0, 0);
    *v18 = 0xD000000000000027;
    *(v18 + 8) = "Unsupported target shape: " + 0x8000000000000000;
    *(v18 + 16) = 0;
    *(v18 + 32) = 0;
    *(v18 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t closure #6 in MLActivityClassifier.DataBatcher.asWeightedSamples(with:classLabels:labels:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a2;
  v7 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v31 = &v31;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v32 = &v31;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  if ((a1 & 0x8000000000000000) != 0)
  {
    BUG();
  }

  if (*(a3 + 16) <= a1)
  {
    BUG();
  }

  v34 = &v31;
  v36 = v7;
  v17 = type metadata accessor for Tensor(0);
  if (*(a4 + 16) <= a1)
  {
    BUG();
  }

  v18 = v17;
  v37 = v8;
  v35 = *(v17 - 8);
  v19 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v20 = *(v35 + 72) * a1;
  v21 = v20 + v19 + a3;
  v22 = v20 + v19 + a4;
  v23 = *(v35 + 16);
  v23(v36, v33, v18);
  v24 = v34;
  v23(v34, v22, v18);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v18);
  v25 = v32;
  v23(v32, v21, v18);
  v26 = v37;
  outlined init with take of DataFrame?(v24, v25 + *(v37 + 48), &demangling cache variable for type metadata for Tensor?);
  v27 = v31;
  outlined init with take of DataFrame?(v25, v31, &demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v28 = v27 + *(v26 + 48);
  v29 = v36 + *(type metadata accessor for WeightedDataSample(0) + 20);
  (*(v35 + 32))(v29, v27, v18);
  return outlined init with take of DataFrame?(v28, v29 + *(v37 + 48), &demangling cache variable for type metadata for Tensor?);
}

uint64_t specialized closure #1 in Sequence<>.uniqued()(uint64_t a1)
{

  return a1;
}

{
  return a1;
}

uint64_t specialized Set._isDisjoint<A>(with:)(uint64_t a1, void *a2)
{
  LOBYTE(v2) = 1;
  v21 = a2;
  if (!a2[2])
  {
    return v2;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return v2;
  }

  v19 = a1 + 32;
  v22 = a1;

  v4 = 0;
  v20 = v3;
  while (!v21[2])
  {
LABEL_12:
    if (++v4 == v3)
    {
      LOBYTE(v2) = 1;
      v15 = v22;
      goto LABEL_15;
    }
  }

  v18 = v4;
  v2 = *(v19 + 16 * v4);
  v5 = *(v19 + 16 * v4 + 8);
  v6 = v21;
  Hasher.init(_seed:)(v21[5]);

  String.hash(into:)(v17, v2);
  v7 = Hasher._finalize()();
  v8 = ~(-1 << *(v6 + 32));
  v9 = v8 & v7;
  v10 = v6[((v8 & v7) >> 6) + 7];
  if (!_bittest64(&v10, v9))
  {
LABEL_11:
    v5;
    v3 = v20;
    v4 = v18;
    goto LABEL_12;
  }

  v11 = v21[6];
  while (1)
  {
    v12 = *(v11 + 16 * v9);
    v13 = *(v11 + 16 * v9 + 8);
    if (v12 == v2 && v13 == v5)
    {
      break;
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)(v12, v13, v2, v5, 0))
    {
      break;
    }

    v9 = v8 & (v9 + 1);
    v14 = v21[(v9 >> 6) + 7];
    if (!_bittest64(&v14, v9))
    {
      goto LABEL_11;
    }
  }

  v22;
  LODWORD(v2) = 0;
  v15 = v5;
LABEL_15:
  v15;
  return v2;
}

void *specialized _copySequenceToContiguousArray<A>(_:)(unint64_t a1)
{
  v1 = 0;
  v105 = type metadata accessor for Date(0);
  v93 = *(v105 - 8);
  v2 = *(v93 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v106 = v88;
  v103 = type metadata accessor for DataFrame.Rows(0);
  v91 = *(v103 - 8);
  v5 = *(v91 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v97 = v88;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v96 = v88;
  v10 = alloca(v5);
  v11 = alloca(v5);
  v92 = v88;
  v108 = type metadata accessor for DataFrame(0);
  v12 = *(v108 - 8);
  v13 = *(v12 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v101 = v88;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v95 = v88;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v100 = v88;
  v20 = type metadata accessor for MLActivityClassifier.DataBatcher(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v24 = v88;
  v102 = v12;
  v25 = *(v12 + 80);
  v115 = _swiftEmptyArrayStorage;
  v99 = (v25 + 32) & ~v25;
  v114 = _swiftEmptyArrayStorage + v99;
  v26 = v88;
  outlined init with copy of MLTrainingSessionParameters(a1, v88, type metadata accessor for MLActivityClassifier.DataBatcher);
  v94 = v20;
  v104 = *(v20 + 48);
  v98 = v25 | 7;
  v109 = 0;
  v112 = v88;
  while (1)
  {
    v29 = *&v24[v104];
    v30 = v92;
    DataFrame.rows.getter(a1, v26, v27, v28);
    v31 = DataFrame.Rows.count.getter();
    v32 = *(v91 + 8);
    v32(v30, v103);
    v107 = v29;
    if (v29 >= v31)
    {
      break;
    }

    v110 = *&v32;
    v33 = v106;
    Date.init()(v30);
    v113 = Date.timeIntervalSince1970.getter(v30);
    v34 = *(v93 + 8);
    v34(v33, v105);
    v35 = v113 * 1000.0;
    if (COERCE__INT64(fabs(v113 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      BUG();
    }

    if (v35 <= -9.223372036854778e18)
    {
      BUG();
    }

    if (v35 >= 9.223372036854776e18)
    {
      BUG();
    }

    v36 = v112;
    v37 = *&v112[*(v94 + 32)];
    v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
    v39 = swift_dynamicCastMetatype(v37, v38);
    v111 = v1;
    if (v39)
    {
      v42 = v107 + 1;
      v113 = *&v34;
      v43 = v96;
      DataFrame.rows.getter(v37, v38, v40, v41);
      v44 = DataFrame.Rows.count.getter();
      (*&v110)(v43, v103);
      if (v44 < v42)
      {
        v42 = v44;
      }

      *(v36 + v104) = v42;
      v45 = v106;
      Date.init()(v43);
      v110 = Date.timeIntervalSince1970.getter(v43);
      (*&v113)(v45, v105);
      v46 = v110 * 1000.0;
      if (COERCE__INT64(fabs(v110 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        BUG();
      }

      if (v46 <= -9.223372036854778e18)
      {
        BUG();
      }

      if (v46 >= 9.223372036854776e18)
      {
        BUG();
      }

      v24 = v36;
      v47 = v101;
      v48 = v109;
      _s8CreateML20MLActivityClassifierV11DataBatcherV13generateBatch33_B38BBA08EC64E268F7AB3D1A029502D210startingAt8rowCount4seed_07TabularE00E5FrameVSi_S2ixmtKSjRzlFSd_Tt3g5(v107, 1, v46);
    }

    else
    {
      v49 = v34;
      v50 = v37;
      v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
      if (!swift_dynamicCastMetatype(v37, v51))
      {
        v89 = 0;
        v90 = 0xE000000000000000;
        _StringGuts.grow(_:)(24);
        v90;
        v89 = 0xD000000000000016;
        v90 = "ityClassifier+Batching.swift" + 0x8000000000000000;
        v86._countAndFlagsBits = _typeName(_:qualified:)(v37, 0);
        object = v86._object;
        String.append(_:)(v86);
        object;
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v89, v90, "CreateML/MLActivityClassifier+Batching.swift", 44, 2, 348, 0);
        BUG();
      }

      v54 = v107 + 1;
      v55 = v97;
      v56 = v112;
      DataFrame.rows.getter(v50, v51, v52, v53);
      v57 = DataFrame.Rows.count.getter();
      v58 = v55;
      v24 = v56;
      (*&v110)(v58, v103);
      if (v57 < v54)
      {
        v54 = v57;
      }

      *(v56 + v104) = v54;
      v59 = v106;
      Date.init()(v58);
      v113 = Date.timeIntervalSince1970.getter(v58);
      v49(v59, v105);
      v60 = v113 * 1000.0;
      if (COERCE__INT64(fabs(v113 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        BUG();
      }

      if (v60 <= -9.223372036854778e18)
      {
        BUG();
      }

      if (v60 >= 9.223372036854776e18)
      {
        BUG();
      }

      v47 = v101;
      v48 = v109;
      _s8CreateML20MLActivityClassifierV11DataBatcherV13generateBatch33_B38BBA08EC64E268F7AB3D1A029502D210startingAt8rowCount4seed_07TabularE00E5FrameVSi_S2ixmtKSjRzlFSf_Tt3g5(v107, 1, v60);
    }

    v61 = v48;
    if (v48)
    {
      v1 = v111;
      v61;
      break;
    }

    v109 = 0;
    v62 = v111;
    v63 = *(v102 + 32);
    v64 = v95;
    v65 = v47;
    v66 = v108;
    v63(v95, v65, v108);
    v63(v100, v64, v66);
    if (v62)
    {
      v67 = v115;
      v68 = v114;
      goto LABEL_38;
    }

    if ((v115[3] >> 1) + 0x4000000000000000 < 0)
    {
      BUG();
    }

    v69 = v115[3] & 0xFFFFFFFFFFFFFFFELL;
    if (v69 < 2)
    {
      v69 = 1;
    }

    v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<DataFrame>);
    v71 = *(v102 + 72);
    v72 = v99;
    v67 = swift_allocObject(v70, v99 + v69 * v71, v98);
    v73 = _swift_stdlib_malloc_size(v67);
    if (!v71)
    {
      BUG();
    }

    v74 = v73 - v72;
    v75 = v72;
    if (v74 == 0x8000000000000000 && v71 == -1)
    {
      BUG();
    }

    v76 = v74 / v71;
    v67[2] = v69;
    v67[3] = 2 * (v74 / v71);
    v114 = v67 + v75;
    v77 = v115;
    v78 = v115[3] >> 1;
    v79 = v78 * v71;
    if (v115[2])
    {
      v80 = v115 + v75;
      if (v67 < v115 || v114 >= v80 + v79)
      {
        swift_arrayInitWithTakeFrontToBack(v114, v80, v115[3] >> 1, v108);
LABEL_35:
        v77 = v115;
      }

      else if (v67 != v115)
      {
        swift_arrayInitWithTakeBackToFront(v114, v80, v115[3] >> 1, v108);
        goto LABEL_35;
      }

      v77[2] = 0;
    }

    v68 = v79 + v114;
    v62 = (v76 & 0x7FFFFFFFFFFFFFFFLL) - v78;

    v24 = v112;
LABEL_38:
    v81 = __OFSUB__(v62, 1);
    v1 = v62 - 1;
    if (v81)
    {
      BUG();
    }

    a1 = v68;
    v26 = v100;
    v63(v68, v100, v108);
    v114 = *(v102 + 72) + v68;
    v115 = v67;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v112, type metadata accessor for MLActivityClassifier.DataBatcher);
  result = v115;
  v83 = v115[3];
  if (v83 >= 2)
  {
    v84 = v83 >> 1;
    v81 = __OFSUB__(v84, v1);
    v85 = v84 - v1;
    if (v81)
    {
      BUG();
    }

    v115[2] = v85;
  }

  return result;
}

uint64_t outlined assign with take of Tensor?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?);
  (*(*(v2 - 8) + 40))(a2, a1, v2);
  return a2;
}

uint64_t outlined consume of ClassificationMetricsContainer?(uint64_t a1, uint64_t a2, char a3)
{
  if (a1)
  {

    return a3;
  }

  return result;
}

void *specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v35 = 0;

  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
  UniquedSequence.Iterator.init(base:projection:)(&v34, a2, a3, v4, &type metadata for String, v5, &protocol witness table for String);
  v6 = v30;
  v39 = v31;
  v44 = v32;
  v41 = v33;
  v38 = *(v29 + 16);
  v45 = _swiftEmptyArrayStorage;
  v47 = &_swiftEmptyArrayStorage[4];
  v43 = v29;
  v7 = v29 + 40;
  v46 = 0;
  v8 = v30;
  v40 = v29 + 40;
LABEL_2:
  v9 = (v7 + 16 * v6);
  while (v38 != v8)
  {
    if (v6 < 0)
    {
      BUG();
    }

    if (v8 >= *(v43 + 16))
    {
      BUG();
    }

    v42 = v8;
    v10 = *(v9 - 1);
    v11 = *v9;
    v29 = v10;
    v30 = v11;

    v39(&v29);
    v12 = specialized Set._Variant.insert(_:)(&v34, v36, v37);
    v35;
    if (v12)
    {
      v13 = v46;
      if (!v46)
      {
        v14 = v45;
        if ((v45[3] >> 1) + 0x4000000000000000 < 0)
        {
          BUG();
        }

        v15 = v45[3] & 0xFFFFFFFFFFFFFFFELL;
        if (v15 < 2)
        {
          v15 = 1;
        }

        v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
        v17 = swift_allocObject(v16, 16 * v15 + 32, 7);
        v18 = (_swift_stdlib_malloc_size(v17) - 32) / 16;
        v17[2] = v15;
        v17[3] = 2 * v18;
        v19 = v14[3] >> 1;
        v20 = 2 * v19;
        if (v14[2])
        {
          if (v17 + 4 >= &v14[v20 + 4] || v17 != v14)
          {
            v47 = v17;
            v46 = v18;
            memmove(v17 + 4, v14 + 4, v20 * 8);
            v17 = v47;
            v18 = v46;
          }

          v14[2] = 0;
        }

        v47 = &v17[v20 + 4];
        v21 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v19;

        v13 = v21;
        v45 = v17;
      }

      v22 = __OFSUB__(v13, 1);
      v23 = v13 - 1;
      if (v22)
      {
        BUG();
      }

      v46 = v23;
      v8 = v42 + 1;
      v24 = v47;
      *v47 = v10;
      v24[1] = v11;
      v47 = v24 + 2;
      v6 = v8;
      v7 = v40;
      goto LABEL_2;
    }

    v11;
    v9 += 2;
    v8 = v42 + 1;
  }

  v43;
  v41;
  result = v45;
  v26 = v45[3];
  if (v26 >= 2)
  {
    v27 = v26 >> 1;
    v22 = __OFSUB__(v27, v46);
    v28 = v27 - v46;
    if (v22)
    {
      BUG();
    }

    v45[2] = v28;
  }

  return result;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(double a1, double a2, double a3)
{
  *&v27 = a2;
  *&v28 = a3;
  v3 = specialized StrideTo.underestimatedCount.getter();
  v4 = v3;
  if (v3 <= 0)
  {
    if (v3 < 0)
    {
      BUG();
    }

    v9 = _swiftEmptyArrayStorage[3] >> 1;
    *(&v28 + 1) = _swiftEmptyArrayStorage;
    v8 = &_swiftEmptyArrayStorage[4];
    v12 = a3;
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Double>);
    v6 = swift_allocObject(v5, 8 * v4 + 32, 7);
    v7 = (_swift_stdlib_malloc_size(v6) - 32) / 8;
    v6[2] = v4;
    v6[3] = 2 * v7;
    *(&v28 + 1) = v6;
    v8 = v6 + 4;
    v9 = (v7 & 0x7FFFFFFFFFFFFFFFLL) - v4;
    v10 = 0;
    v11 = a1;
    v12 = *&v28;
    do
    {
      v13 = *&v27 >= v11;
      if (v12 > 0.0)
      {
        v13 = v11 >= *&v27;
      }

      if (v13)
      {
        BUG();
      }

      a1 = ++v10;
      *(&v27 + 1) = v11;
      fma(v26, v27, v28);
      v12 = *&v28;
      *v8++ = *(&v27 + 1);
      v11 = v10;
    }

    while (v4 != v10);
  }

  while (1)
  {
    v21 = *&v27 >= a1;
    if (v12 > 0.0)
    {
      v21 = a1 >= *&v27;
    }

    if (v21)
    {
      break;
    }

    v14 = __OFADD__(1, v4++);
    if (v14)
    {
      BUG();
    }

    *(&v27 + 1) = a1;
    a1 = v4;
    fma(v26, v27, v28);
    if (!v9)
    {
      *&v26 = v4;
      if ((*(*(&v28 + 1) + 24) >> 1) + 0x4000000000000000 < 0)
      {
        BUG();
      }

      *(&v26 + 1) = v4;
      v15 = *(*(&v28 + 1) + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v15 < 2)
      {
        v15 = 1;
      }

      v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Double>);
      v17 = swift_allocObject(v16, 8 * v15 + 32, 7);
      v18 = (_swift_stdlib_malloc_size(v17) - 32) / 8;
      v17[2] = v15;
      v17[3] = 2 * v18;
      v19 = *(*(&v28 + 1) + 24) >> 1;
      if (*(*(&v28 + 1) + 16))
      {
        v20 = v17 + 4;
        if (v17 != *(&v28 + 1) || v20 >= *(&v28 + 1) + 8 * v19 + 32)
        {
          memmove(v20, (*(&v28 + 1) + 32), 8 * v19);
        }

        *(*(&v28 + 1) + 16) = 0;
      }

      v8 = &v17[v19 + 4];
      v9 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v19;

      *(&v28 + 1) = v17;
    }

    v14 = __OFSUB__(v9--, 1);
    v12 = *&v28;
    if (v14)
    {
      BUG();
    }

    *v8++ = *(&v27 + 1);
  }

  result = *(&v28 + 1);
  v23 = *(*(&v28 + 1) + 24);
  if (v23 >= 2)
  {
    v24 = v23 >> 1;
    v14 = __OFSUB__(v24, v9);
    v25 = v24 - v9;
    if (v14)
    {
      BUG();
    }

    *(*(&v28 + 1) + 16) = v25;
  }

  return result;
}