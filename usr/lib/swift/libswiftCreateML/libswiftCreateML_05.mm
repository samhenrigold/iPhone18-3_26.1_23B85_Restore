uint64_t closure #1 in MLRandomForestRegressor.init(checkpoint:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc(288);
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #1 in MLRandomForestRegressor.init(checkpoint:);
  return ((&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel()))();
}

{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;
  v5;
  if (v1)
  {
    return (*(v6 + 8))();
  }

  *(v4 + 32) = a1;
  return swift_task_switch(closure #1 in MLRandomForestRegressor.init(checkpoint:), 0, 0);
}

void *static MLRandomForestRegressor.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = a2;
  v7 = type metadata accessor for DataFrame(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = *(a1 + 8);
  v19 = *a1;
  v20 = v12;
  outlined copy of Result<_DataTable, Error>(v19, v12);
  DataFrame.init(_:)(&v19);
  v13 = static MLRandomForestRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(&v19, v25, v24, v23, v22, v21);
  v14 = v7;
  if (v6)
  {
    return (*(v8 + 8))(&v19, v7);
  }

  v16 = v13;
  (*(v8 + 8))(&v19, v14);
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLRandomForestRegressor>);
  v18 = swift_allocObject(v17, *(v17 + 48), *(v17 + 52));
  return specialized MLJob.init(_:)(v18, v16);
}

uint64_t static MLRandomForestRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v7 = type metadata accessor for DataFrame(0);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = *(a1 + 8);
  v14 = *a1;
  v15 = v11;
  outlined copy of Result<_DataTable, Error>(v14, v11);
  DataFrame.init(_:)(&v14);
  v12 = static MLRandomForestRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(&v14, a2, v19, v18, v17, v16);
  (*(v20 + 8))(&v14, v7);
  return v12;
}

void *static MLRandomForestRegressor.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLRandomForestRegressor>);
  v2 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));

  return specialized MLJob.init(_:)(v2, a1);
}

void *static MLRandomForestRegressor.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = static MLRandomForestRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(a1, a2, a3, a4, a5, a6);
  if (!v6)
  {
    v8 = result;
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLRandomForestRegressor>);
    v10 = swift_allocObject(v9, *(v9 + 48), *(v9 + 52));
    return specialized MLJob.init(_:)(v10, v8);
  }

  return result;
}

uint64_t static MLRandomForestRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v68 = v6;
  v64 = a6;
  v59 = a5;
  v61 = a4;
  v62 = a3;
  v55 = a2;
  v66 = a1;
  v7 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v58 = v45;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v56 = v45;
  v12 = *(*(type metadata accessor for BoostedTreeConfiguration(0) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v57 = v45;
  v15 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v60 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v19 = *(*(v60 - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v67 = v45;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v63 = v45;
  v24 = alloca(v19);
  v25 = alloca(v19);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v59, &v53, &demangling cache variable for type metadata for Any?);
  if (!v54)
  {
    BUG();
  }

  v26 = (v45 + *(v60 + 48));
  v65 = v45;
  outlined init with take of Any(&v53, v45);
  v27 = v65;
  swift_dynamicCast(v45, v45, &type metadata for Any + 8, v15, 7);
  v28 = v68;
  MLRandomForestRegressor.ModelParameters.ValidationData.generateDataFrames(trainingData:)(v27, v26, v66);
  outlined destroy of MLActivityClassifier.ModelParameters(v45, type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData);
  if (!v28)
  {
    v29 = v63;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v27, v63, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v66 = 0;
    v30 = v60;
    v68 = v29 + *(v60 + 48);
    v31 = v27;
    v32 = v67;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v31, v67, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v33 = v32 + *(v30 + 48);
    outlined init with copy of MLRandomForestRegressor.ModelParameters(v59, v45);

    v34 = v62;

    v35 = v57;
    BoostedTreeConfiguration.init()(v34);
    BoostedTreeConfiguration.learningRate.setter(1.0);
    BoostedTreeConfiguration.parallelTreeCount.setter(10);
    BoostedTreeConfiguration.maximumDepth.setter(v46);
    BoostedTreeConfiguration.maximumIterations.setter(v47);
    BoostedTreeConfiguration.minimumLossReduction.setter(v48);
    BoostedTreeConfiguration.minimumChildWeight.setter(v49);
    BoostedTreeConfiguration.randomSeed.setter(v50);
    BoostedTreeConfiguration.rowSubsample.setter(v51);
    BoostedTreeConfiguration.columnSubsample.setter(v52);
    outlined destroy of MLRandomForestRegressor.ModelParameters(v45);
    v36 = v56;
    outlined init with copy of MLTrainingSessionParameters(v64, v56, type metadata accessor for MLTrainingSessionParameters);
    v27 = type metadata accessor for TreeRegressorTrainingSessionDelegate(0);
    swift_allocObject(v27, *(v27 + 48), *(v27 + 52));
    v37 = v66;
    v38 = TreeRegressorTrainingSessionDelegate.init(trainingData:validationData:targetColumn:featureColumns:configuration:sessionParameters:)(v63, v33, v55, v62, v61, v35, v36);
    if (v37)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v65, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
      v39 = type metadata accessor for DataFrame(0);
      (*(*(v39 - 8) + 8))(v67, v39);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v68, &demangling cache variable for type metadata for DataFrame?);
    }

    else
    {
      v40 = v38;
      v41 = type metadata accessor for DataFrame(0);
      (*(*(v41 - 8) + 8))(v67, v41);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v68, &demangling cache variable for type metadata for DataFrame?);
      *(&v45[1] + 1) = v27;
      v46 = &protocol witness table for TreeRegressorTrainingSessionDelegate;
      *&v45[0] = v40;
      v42 = v58;
      outlined init with copy of MLTrainingSessionParameters(v64, v58, type metadata accessor for MLTrainingSessionParameters);
      v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>);
      swift_allocObject(v43, *(v43 + 48), *(v43 + 52));

      v27 = specialized MLTrainingSession.init(delegate:parameters:modelType:)(v45, v42, 0);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v65, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    }
  }

  return v27;
}

uint64_t static MLRandomForestRegressor.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v2 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v12 = v11;
  v5 = alloca(v2);
  v6 = alloca(v2);
  outlined init with copy of MLTrainingSessionParameters(a1, v11, type metadata accessor for MLTrainingSessionParameters);
  v7 = type metadata accessor for TreeRegressorTrainingSessionDelegate(0);
  swift_allocObject(v7, *(v7 + 48), *(v7 + 52));
  result = TreeRegressorTrainingSessionDelegate.init(sessionParameters:)(v11);
  if (!v1)
  {
    v11[3] = v7;
    v11[4] = &protocol witness table for TreeRegressorTrainingSessionDelegate;
    v11[0] = result;
    v9 = v12;
    outlined init with copy of MLTrainingSessionParameters(a1, v12, type metadata accessor for MLTrainingSessionParameters);
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>);
    swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v11, v9, 0);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static MLRandomForestRegressor.resume(_:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v22 = a5;
  v23 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLRandomForestRegressor, Error>);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TaskPriority?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  if (a2)
  {
    v19 = a1;
    swift_storeEnumTagMultiPayload(&v19, v6, 1);
    swift_errorRetain(a1);
    v23(&v19);
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v19, &demangling cache variable for type metadata for Result<MLRandomForestRegressor, Error>);
  }

  else
  {
    outlined init with copy of TabularRegressionTask(direct field offset for MLTrainingSession.delegate + a3, v20);
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingSessionDelegate);
    v15 = type metadata accessor for TreeRegressorTrainingSessionDelegate(0);
    swift_dynamicCast(&v21, v20, v14, v15, 7);
    v16 = v21;
    v17 = type metadata accessor for TaskPriority(0);
    __swift_storeEnumTagSinglePayload(&v19, 1, 1, v17);
    v18 = swift_allocObject(&unk_38F7F0, 56, 7);
    *(v18 + 16) = 0;
    *(v18 + 32) = v16;
    *(v18 + 40) = v23;
    *(v18 + 48) = v22;

    _sScTss5NeverORs_rlE8priority9operationScTyxABGScPSg_xyYaYAcntcfCyt_Tt1g5(&v19, &async function pointer to partial apply for closure #1 in static MLRandomForestRegressor.handleResult(_:session:fulfill:), v18);
  }
}

uint64_t closure #1 in static MLRandomForestRegressor.handleResult(_:session:fulfill:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a6;
  v6[3] = a5;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLRandomForestRegressor, Error>);
  v6[5] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in static MLRandomForestRegressor.handleResult(_:session:fulfill:), 0, 0);
}

uint64_t closure #1 in static MLRandomForestRegressor.handleResult(_:session:fulfill:)()
{

  v1 = swift_task_alloc(80);
  v0[6] = v1;
  *v1 = v0;
  v1[1] = closure #1 in static MLRandomForestRegressor.handleResult(_:session:fulfill:);
  return ((&_ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLRandomForestRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_0636907E5F32D963700A018890EA71C7LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04Treeh8TrainingY8DelegateCTf1nc_nTu + _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLRandomForestRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_0636907E5F32D963700A018890EA71C7LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04Treeh8TrainingY8DelegateCTf1nc_nTu))(v0[5], v0[2]);
}

{
  *(*v0 + 48);
  return swift_task_switch(closure #1 in static MLRandomForestRegressor.handleResult(_:session:fulfill:), 0, 0);
}

{
  v1 = *(v0 + 40);
  (*(v0 + 24))(v1);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &demangling cache variable for type metadata for Result<MLRandomForestRegressor, Error>);
  v1;
  return (*(v0 + 8))();
}

uint64_t MLRandomForestRegressor.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2[37] = a2;
  v2[36] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TreeRegressorModel?);
  v2[38] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLRandomForestRegressor(0);
  v2[39] = v4;
  v2[40] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  v2[41] = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BoostedTreeConfiguration(0);
  v2[42] = v6;
  v7 = *(v6 - 8);
  v2[43] = v7;
  v2[44] = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  v2[45] = swift_task_alloc((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v2[46] = v9;
  v2[47] = swift_task_alloc((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLRandomForestRegressor.init(delegate:), 0, 0);
}

uint64_t MLRandomForestRegressor.init(delegate:)()
{
  v1 = v0[46];
  v2 = v0[45];
  v3 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters + v0[37];
  swift_beginAccess(v3, (v0 + 30), 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v3, v2, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    BUG();
  }

  v4 = v0[47];
  v5 = v0[46];
  v6 = v0[44];
  v18 = v0[43];
  v15 = v0[42];
  v16 = v0[41];
  v7 = v0[37];
  v14 = v0[38];
  outlined init with take of MLClassifierMetrics(v0[45], v4, type metadata accessor for PersistentParametersForTreeBasedMethods);
  (*(v18 + 16))(v6, v4 + v5[8], v15);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4 + v5[5], v16, &demangling cache variable for type metadata for DataFrame?);
  MLRandomForestRegressor.ModelParameters.init(configuration:validation:)(v6, v16);
  v8 = v5[6];
  v17 = *(v4 + v8);
  v19 = *(v4 + v8 + 8);
  v9 = *(v4 + v5[7]);
  v10 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model + v7;
  swift_beginAccess(v10, (v0 + 33), 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v14, &demangling cache variable for type metadata for TreeRegressorModel?);
  v11 = type metadata accessor for TreeRegressorModel(0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v11) == 1)
  {
    BUG();
  }

  outlined init with copy of MLRandomForestRegressor.ModelParameters((v0 + 2), (v0 + 16));

  v12 = swift_task_alloc(112);
  v0[48] = v12;
  *v12 = v0;
  v12[1] = MLRandomForestRegressor.init(delegate:);
  return MLRandomForestRegressor.init(_:targetColumn:featureColumns:parameters:)(v0[40], v0[38], v17, v19, v9, (v0 + 16));
}

{
  v2 = *(*v1 + 384);
  *(*v1 + 392) = v0;
  v2;
  if (v0)
  {
    v3 = MLRandomForestRegressor.init(delegate:);
  }

  else
  {
    v3 = MLRandomForestRegressor.init(delegate:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 296);
  outlined init with take of MLClassifierMetrics(*(v0 + 320), *(v0 + 288), type metadata accessor for MLRandomForestRegressor);
  v2 = *(v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics + 16);
  if (v2 == -1)
  {
    BUG();
  }

  v17 = *(v0 + 376);
  v16 = *(v0 + 312);
  v3 = *(v0 + 288);
  v4 = *(v0 + 296);
  v18 = *(v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics);
  v15 = *(v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics + 8);
  outlined copy of Result<_RegressorMetrics, Error>(v18, v15, v2);
  outlined destroy of MLRandomForestRegressor.ModelParameters(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(v17, type metadata accessor for PersistentParametersForTreeBasedMethods);
  v5 = *(v16 + 36);
  outlined consume of Result<_RegressorMetrics, Error>(*(v3 + v5), *(v3 + v5 + 8), *(v3 + v5 + 16));
  *(v3 + v5) = v18;
  *(v3 + v5 + 8) = v15;
  *(v3 + v5 + 16) = v2 & 1;
  v6 = *(v4 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 8);
  v7 = *(v4 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 16);
  v19 = *(v4 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics);
  outlined copy of MLRegressorMetrics?(v19, v6, v7);

  if (v7 != -1)
  {
    v8 = *(v0 + 288);
    v9 = *(*(v0 + 312) + 40);
    outlined consume of Result<_RegressorMetrics, Error>(*(v8 + v9), *(v8 + v9 + 8), *(v8 + v9 + 16));
    *(v8 + v9) = v19;
    *(v8 + v9 + 8) = v6;
    *(v8 + v9 + 16) = v7 & 1;
  }

  v10 = *(v0 + 360);
  v11 = *(v0 + 352);
  v12 = *(v0 + 328);
  v20 = *(v0 + 304);
  v13 = *(v0 + 320);
  *(v0 + 376);
  v10;
  v11;
  v12;
  v13;
  v20;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 376);
  v2 = *(v0 + 360);
  v3 = *(v0 + 352);
  v7 = *(v0 + 328);
  v6 = *(v0 + 320);
  v5 = *(v0 + 304);

  outlined destroy of MLRandomForestRegressor.ModelParameters(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for PersistentParametersForTreeBasedMethods);
  v1;
  v2;
  v3;
  v7;
  v6;
  v5;
  return (*(v0 + 8))();
}

uint64_t partial apply for closure #1 in MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  type metadata accessor for TreeRegressorModel(0);
  v2 = swift_task_alloc(48);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(a1);
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for TreeRegressorModel(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = ~*(v2 + 80) & (v3 + 16);
  v10 = *(v2 + 64);
  v5 = v4 + v0;
  *(v0 + v4 + 8);
  v6 = *(v0 + v4 + 16);
  if (v6)
  {
    v6;
    *(v5 + 32);
  }

  v7 = *(v1 + 24) + v5;
  v8 = type metadata accessor for BaseTreeRegressorModel(0);
  (*(*(v8 - 8) + 8))(v7, v8);
  return swift_deallocObject(v0, v10 + v4, v3 | 7);
}

uint64_t partial apply for closure #1 in MLRandomForestRegressor.init(checkpoint:)(uint64_t a1)
{
  type metadata accessor for TreeRegressorModel(0);
  v2 = swift_task_alloc(48);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLRandomForestRegressor.init(checkpoint:)(a1);
}

id sub_49AF5()
{
  v1 = v0;
  result = MLRandomForestRegressor.model.getter();
  *v1 = result;
  return result;
}

void *initializeBufferWithCopyOfBuffer for MLRandomForestRegressor(void *a1, void *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *v3 = *a2;
    v3 = (v7 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    a1[1] = a2[1];
    v6 = a2[2];

    if (v6)
    {
      a1[2] = v6;
      a1[3] = a2[3];
      a1[4] = a2[4];
    }

    else
    {
      a1[4] = a2[4];
      *(a1 + 1) = *(a2 + 1);
    }

    v8 = *(type metadata accessor for TreeRegressorModel(0) + 24);
    v9 = type metadata accessor for BaseTreeRegressorModel(0);
    (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
    v10 = a3[5];
    v11 = *(a2 + v10);
    *(v3 + v10) = v11;
    v12 = a3[6];
    *(v3 + v12) = *(a2 + v12);
    *(v3 + v12 + 8) = *(a2 + v12 + 8);
    *(v3 + a3[7]) = *(a2 + a3[7]);
    v26 = a3;
    v13 = a3[8];
    v14 = v3 + v13;
    v15 = (a2 + v13);
    v16 = *(a2 + v13 + 24);
    v11;

    if (v16)
    {
      *(v14 + 3) = v16;
      (**(v16 - 8))(v14, v15, v16);
    }

    else
    {
      v17 = *v15;
      *(v14 + 1) = v15[1];
      *v14 = v17;
    }

    *(v14 + 2) = v15[2];
    *(v14 + 3) = v15[3];
    *(v14 + 4) = v15[4];
    *(v14 + 5) = v15[5];
    *(v14 + 6) = v15[6];
    v18 = v26[9];
    v19 = *(a2 + v18);
    v20 = *(a2 + v18 + 8);
    v27 = *(a2 + v18 + 16);
    outlined copy of Result<_RegressorMetrics, Error>(v19, v20, v27);
    *(v3 + v18) = v19;
    *(v3 + v18 + 8) = v20;
    *(v3 + v18 + 16) = v27;
    v21 = v26[10];
    v22 = *(a2 + v21);
    v23 = *(a2 + v21 + 8);
    v24 = *(a2 + v21 + 16);
    outlined copy of Result<_RegressorMetrics, Error>(v22, v23, v24);
    *(v3 + v21) = v22;
    *(v3 + v21 + 8) = v23;
    *(v3 + v21 + 16) = v24;
  }

  return v3;
}

uint64_t destroy for MLRandomForestRegressor(void *a1, int *a2)
{
  a1[1];
  v3 = a1[2];
  if (v3)
  {
    v3;
    a1[4];
  }

  v4 = a1 + *(type metadata accessor for TreeRegressorModel(0) + 24);
  v5 = type metadata accessor for BaseTreeRegressorModel(0);
  (*(*(v5 - 8) + 8))(v4, v5);

  *(a1 + a2[6] + 8);
  *(a1 + a2[7]);
  v6 = a2[8];
  if (*(a1 + v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v6));
  }

  outlined consume of Result<_RegressorMetrics, Error>(*(a1 + a2[9]), *(a1 + a2[9] + 8), *(a1 + a2[9] + 16));
  return outlined consume of Result<_RegressorMetrics, Error>(*(a1 + a2[10]), *(a1 + a2[10] + 8), *(a1 + a2[10] + 16));
}

void *initializeWithCopy for MLRandomForestRegressor(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v5 = a2[2];

  if (v5)
  {
    a1[2] = v5;
    a1[3] = a2[3];
    a1[4] = a2[4];
  }

  else
  {
    a1[4] = a2[4];
    *(a1 + 1) = *(a2 + 1);
  }

  v6 = *(type metadata accessor for TreeRegressorModel(0) + 24);
  v7 = type metadata accessor for BaseTreeRegressorModel(0);
  (*(*(v7 - 8) + 16))(a1 + v6, a2 + v6, v7);
  v8 = a3[5];
  v9 = *(a2 + v8);
  *(a1 + v8) = v9;
  v10 = a3[6];
  *(a1 + v10) = *(a2 + v10);
  *(a1 + v10 + 8) = *(a2 + v10 + 8);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v24 = a3;
  v11 = a3[8];
  v12 = a1 + v11;
  v13 = (a2 + v11);
  v14 = *(a2 + v11 + 24);
  v9;

  if (v14)
  {
    *(v12 + 3) = v14;
    (**(v14 - 8))(v12, v13, v14);
  }

  else
  {
    v15 = *v13;
    *(v12 + 1) = v13[1];
    *v12 = v15;
  }

  *(v12 + 2) = v13[2];
  *(v12 + 3) = v13[3];
  *(v12 + 4) = v13[4];
  *(v12 + 5) = v13[5];
  *(v12 + 6) = v13[6];
  v16 = v24[9];
  v17 = *(a2 + v16);
  v18 = *(a2 + v16 + 8);
  v25 = *(a2 + v16 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v17, v18, v25);
  *(a1 + v16) = v17;
  *(a1 + v16 + 8) = v18;
  *(a1 + v16 + 16) = v25;
  v19 = v24[10];
  v20 = *(a2 + v19);
  v21 = *(a2 + v19 + 8);
  v22 = *(a2 + v19 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v20, v21, v22);
  *(a1 + v19) = v20;
  *(a1 + v19 + 8) = v21;
  *(a1 + v19 + 16) = v22;
  return a1;
}

void *assignWithCopy for MLRandomForestRegressor(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  v4;
  v5 = a1 + 2;
  v6 = a2 + 2;
  v7 = a1[2];
  v8 = a2[2];
  if (v7)
  {
    if (v8)
    {
      a1[2] = v8;

      v7;
      a1[3] = a2[3];
      v9 = a1[4];
      a1[4] = a2[4];

      v9;
    }

    else
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>((a1 + 2), &demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer);
      *v5 = *v6;
      a1[4] = a2[4];
    }
  }

  else if (v8)
  {
    a1[2] = v8;
    a1[3] = a2[3];
    a1[4] = a2[4];
  }

  else
  {
    a1[4] = a2[4];
    *v5 = *v6;
  }

  v10 = *(type metadata accessor for TreeRegressorModel(0) + 24);
  v11 = type metadata accessor for BaseTreeRegressorModel(0);
  (*(*(v11 - 8) + 24))(a1 + v10, a2 + v10, v11);
  v12 = a3[5];
  v13 = *(a2 + v12);
  v14 = *(a1 + v12);
  *(a1 + v12) = v13;
  v13;

  v15 = a3[6];
  *(a1 + v15) = *(a2 + v15);
  v16 = *(a1 + v15 + 8);
  *(a1 + v15 + 8) = *(a2 + v15 + 8);

  v16;
  v17 = a3[7];
  v18 = *(a1 + v17);
  *(a1 + v17) = *(a2 + v17);

  v18;
  v19 = a3[8];
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = *(a2 + v19 + 24);
  if (!*(a1 + v19 + 24))
  {
    if (v22)
    {
      *(v20 + 3) = v22;
      (**(v22 - 8))(v20, v21);
      goto LABEL_15;
    }

LABEL_14:
    v25 = *v21;
    *(v20 + 1) = *(v21 + 1);
    *v20 = v25;
    goto LABEL_15;
  }

  v24 = (a1 + v19);
  if (!v22)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    goto LABEL_14;
  }

  __swift_assign_boxed_opaque_existential_0(v24, (a2 + v19));
LABEL_15:
  *(v20 + 4) = *(v21 + 4);
  *(v20 + 5) = *(v21 + 5);
  *(v20 + 6) = *(v21 + 6);
  *(v20 + 7) = *(v21 + 7);
  *(v20 + 8) = *(v21 + 8);
  *(v20 + 9) = *(v21 + 9);
  *(v20 + 10) = *(v21 + 10);
  *(v20 + 11) = *(v21 + 11);
  *(v20 + 12) = *(v21 + 12);
  *(v20 + 13) = *(v21 + 13);
  v26 = a3[9];
  v27 = *(a2 + v26);
  v28 = *(a2 + v26 + 8);
  v40 = *(a2 + v26 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v27, v28, v40);
  v29 = *(a1 + v26);
  v30 = *(a1 + v26 + 8);
  *(a1 + v26) = v27;
  *(a1 + v26 + 8) = v28;
  v31 = *(a1 + v26 + 16);
  *(a1 + v26 + 16) = v40;
  outlined consume of Result<_RegressorMetrics, Error>(v29, v30, v31);
  v32 = a3[10];
  v33 = *(a2 + v32);
  v34 = *(a2 + v32 + 8);
  v35 = *(a2 + v32 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v33, v34, v35);
  v36 = *(a1 + v32);
  v37 = *(a1 + v32 + 8);
  *(a1 + v32) = v33;
  *(a1 + v32 + 8) = v34;
  v38 = *(a1 + v32 + 16);
  *(a1 + v32 + 16) = v35;
  outlined consume of Result<_RegressorMetrics, Error>(v36, v37, v38);
  return a1;
}

uint64_t initializeWithTake for MLRandomForestRegressor(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(type metadata accessor for TreeRegressorModel(0) + 24);
  v5 = type metadata accessor for BaseTreeRegressorModel(0);
  (*(*(v5 - 8) + 32))(a1 + v4, a2 + v4, v5);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  qmemcpy((a1 + a3[8]), (a2 + a3[8]), 0x70uLL);
  v6 = a3[9];
  *(a1 + v6 + 16) = *(a2 + v6 + 16);
  *(a1 + v6) = *(a2 + v6);
  v7 = a3[10];
  *(a1 + v7) = *(a2 + v7);
  *(a1 + v7 + 16) = *(a2 + v7 + 16);
  return a1;
}

void *assignWithTake for MLRandomForestRegressor(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v6 = a1[1];
  a1[1] = a2[1];
  v6;
  v7 = a1 + 2;
  v8 = a2 + 2;
  v9 = a1[2];
  if (v9)
  {
    v10 = a2[2];
    if (v10)
    {
      a1[2] = v10;
      v9;
      a1[3] = a2[3];
      v11 = a1[4];
      a1[4] = a2[4];
      v11;
    }

    else
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>((a1 + 2), &demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer);
      *v7 = *v8;
      a1[4] = a2[4];
    }
  }

  else
  {
    a1[4] = a2[4];
    *v7 = *v8;
  }

  v12 = *(type metadata accessor for TreeRegressorModel(0) + 24);
  v13 = type metadata accessor for BaseTreeRegressorModel(0);
  (*(*(v13 - 8) + 40))(a1 + v12, a2 + v12, v13);
  v14 = a3[5];
  v15 = *(a1 + v14);
  *(a1 + v14) = *(a2 + v14);

  v16 = a3[6];
  *(a1 + v16) = *(a2 + v16);
  v17 = *(a1 + v16 + 8);
  *(a1 + v16 + 8) = *(a2 + v16 + 8);
  v17;
  v18 = a3[7];
  v19 = *(a1 + v18);
  *(a1 + v18) = *(a2 + v18);
  v19;
  v20 = a3[8];
  v21 = (a1 + v20);
  if (*(a1 + v20 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v20));
  }

  v22 = *(a2 + v20);
  v21[1] = *(a2 + v20 + 16);
  *v21 = v22;
  *(a1 + v20 + 32) = *(a2 + v20 + 32);
  *(a1 + v20 + 48) = *(a2 + v20 + 48);
  *(a1 + v20 + 64) = *(a2 + v20 + 64);
  *(a1 + v20 + 72) = *(a2 + v20 + 72);
  *(a1 + v20 + 88) = *(a2 + v20 + 88);
  *(a1 + v20 + 104) = *(a2 + v20 + 104);
  v23 = a3[9];
  v24 = *(a2 + v23 + 16);
  v25 = *(a1 + v23);
  v26 = *(a1 + v23 + 8);
  *(a1 + v23) = *(a2 + v23);
  v27 = *(a1 + v23 + 16);
  *(a1 + v23 + 16) = v24;
  outlined consume of Result<_RegressorMetrics, Error>(v25, v26, v27);
  v28 = a3[10];
  v29 = *(a2 + v28 + 16);
  v30 = *(a1 + v28);
  v31 = *(a1 + v28 + 8);
  *(a1 + v28) = *(a2 + v28);
  v32 = *(a1 + v28 + 16);
  *(a1 + v28 + 16) = v29;
  outlined consume of Result<_RegressorMetrics, Error>(v30, v31, v32);
  return a1;
}

uint64_t sub_4A576(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = 0;
  v5 = type metadata accessor for TreeRegressorModel(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(a1, a2, v5);
  }

  if ((*(a1 + *(a3 + 20)) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + *(a3 + 20)) >> 1) + 1;
  }

  return v4;
}

uint64_t sub_4A5F0(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = type metadata accessor for TreeRegressorModel(0);
  if (*(*(v6 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(a1, a2, a2, v6);
  }

  result = *(a4 + 20);
  *(a1 + result) = 2 * (a2 - 1);
  return result;
}

uint64_t type metadata completion function for MLRandomForestRegressor(uint64_t a1)
{
  result = type metadata accessor for TreeRegressorModel(319);
  if (v2 <= 0x3F)
  {
    v3[0] = *(result - 8) + 64;
    v3[1] = &value witness table for Builtin.UnknownObject + 64;
    v3[2] = &unk_33E338;
    v3[3] = &value witness table for Builtin.BridgeObject + 64;
    v3[4] = &unk_33E350;
    v3[5] = &unk_33E368;
    v3[6] = &unk_33E368;
    swift_initStructMetadata(a1, 256, 7, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t sub_4A6DD()
{
  swift_unknownObjectRelease(*(v0 + 16));

  return swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in static MLRandomForestRegressor.handleResult(_:session:fulfill:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v5 = v1[6];
  v6 = swift_task_alloc(64);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return closure #1 in static MLRandomForestRegressor.handleResult(_:session:fulfill:)(a1, v3, v4, v8, v9, v5);
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF10Algorithms23ChunksOfCountCollectionVySaySdGG_SSs5NeverOTg5128_s8CreateML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    BUG();
  }

  v7 = *(a1 + 16) / a2 + (*(a1 + 16) % a2 != 0);
  if (!v7)
  {
    a4;
    return _swiftEmptyArrayStorage;
  }

  v36 = *(a1 + 16);
  v8 = 0;
  if (v7 > 0)
  {
    v8 = v7;
  }

  v28 = v8;
  v35 = v7;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
  if ((a3 | v35) < 0)
  {
    BUG();
  }

  v30 = a4 + 32;
  v9 = 0;
  v10 = 0;
  v11 = v36;
  v29 = a2;
  do
  {
    if (v9 == v28)
    {
      BUG();
    }

    if (v10 == v11)
    {
      BUG();
    }

    if (v10 > v11)
    {
      BUG();
    }

    v12 = v11 - a3;
    if (v11 < a3)
    {
      BUG();
    }

    if (v10 >= a3)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000010, ("ityClassifier+Training.swift" + 0x8000000000000000), "CreateML/MLActivityClassifier+Training.swift", 44, 2, 630, 0);
      BUG();
    }

    v13 = v10;
    if (v10 + 1 < a3)
    {
      v14 = v10;
      v15 = v10;
      do
      {
        if (v15 < v10 || v15 >= a3)
        {
          BUG();
        }

        v16 = *(a1 + 8 * v14++ + 40);
        v13 = v14;
        if (v16 <= *(a1 + 8 * v15 + 32))
        {
          v13 = v15;
        }

        v15 = v13;
      }

      while (a3 - 1 != v14);
    }

    v17 = __OFSUB__(v13, v10);
    v18 = v13 - v10;
    if (v17)
    {
      BUG();
    }

    if (v18 < 0)
    {
      BUG();
    }

    if (v18 >= *(a4 + 16))
    {
      BUG();
    }

    v34 = v12;
    v33 = v9;
    v19 = 16 * v18;
    v26 = *(v30 + v19);
    v20 = _swiftEmptyArrayStorage[2];
    v31 = _swiftEmptyArrayStorage[3];
    v32 = v20 + 1;
    v27 = *(v30 + v19 + 8);

    if (v31 >> 1 <= v20)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v31 >= 2, v32, 1);
    }

    v21 = 2 * v20;
    _swiftEmptyArrayStorage[2] = v32;
    _swiftEmptyArrayStorage[v21 + 4] = v26;
    _swiftEmptyArrayStorage[v21 + 5] = v27;
    if (v29 <= 0)
    {
      v11 = v36;
      v22 = v36;
      v23 = v35;
      v24 = v33;
      if (v34 > v29 && v34 <= 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v11 = v36;
      v22 = v36;
      v23 = v35;
      v24 = v33;
      if (v34 < v29)
      {
        goto LABEL_29;
      }
    }

    v22 = v29 + a3;
    if (__OFADD__(v29, a3))
    {
      BUG();
    }

LABEL_29:
    if (v22 < a3)
    {
      BUG();
    }

    v9 = v24 + 1;
    v10 = a3;
    a3 = v22;
  }

  while (v9 != v23);
  a4;
  return _swiftEmptyArrayStorage;
}

uint64_t specialized Collection.count.getter(uint64_t a1)
{
  v1 = CMLSequence.size.getter();
  return specialized RandomAccessCollection<>.distance(from:to:)(0, v1, CMLSequence.size.getter);
}

{
  v1 = CMLSequence.size.getter();
  return specialized RandomAccessCollection<>.distance(from:to:)(0, v1);
}

{
  return specialized Collection.count.getter(a1);
}

{

  v1 = CMLSequence.size.getter();
  v2 = specialized RandomAccessCollection<>.distance(from:to:)(0, v1, CMLSequence.size.getter);

  v3 = CMLSequence.size.getter();
  v4 = specialized RandomAccessCollection<>.distance(from:to:)(0, v3, CMLSequence.size.getter);

  if (v4 < 0)
  {
    BUG();
  }

  v5 = CMLSequence.size.getter();
  v6 = specialized RandomAccessCollection<>.distance(from:to:)(0, v5, CMLSequence.size.getter);

  if (v2 < 0 || v6 < v2)
  {
    BUG();
  }

  return v2;
}

{
  return specialized Collection.count.getter(a1);
}

Swift::Int specialized Collection.count.getter(uint64_t a1, char a2)
{
  outlined copy of Result<_DataTable, Error>(a1, a2);
  v2 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(a1, a2 & 1);
  return specialized RandomAccessCollection<>.distance(from:to:)(0, v2, a1, a2 & 1);
}

char specialized Sequence.contains(where:)(uint64_t (*a1)(unint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;

  v6 = CMLSequence.size.getter();
  if (specialized RandomAccessCollection<>.distance(from:to:)(0, v6, CMLSequence.size.getter))
  {
    v7 = 0;
    v27 = a3;
    while (1)
    {
      CMLSequence.value(at:)(v7);
      if (v4)
      {
        swift_unexpectedError(v4, "CreateML/SequenceType.swift", 27, 1, 76);
        BUG();
      }

      v26 = v7;
      v8 = CMLFeatureValue.stringValue()();
      countAndFlagsBits = v8._countAndFlagsBits;
      if (v9)
      {
        v9;

        v24 = 0;
        v25 = 0xE000000000000000;
        _StringGuts.grow(_:)(37);
        v25;
        v24 = 0xD000000000000022;
        v25 = "able.ColumnNames.swift" + 0x8000000000000000;
        v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        object = v20._object;
        String.append(_:)(v20);
        object;
        v22._countAndFlagsBits = 46;
        v22._object = 0xE100000000000000;
        String.append(_:)(v22);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v24, v25, "CreateML/MLDataTable.ColumnNames.swift", 38, 2, 17, 0);
        BUG();
      }

      v10 = v8._object;

      v11 = CMLSequence.size.getter();
      v12 = specialized RandomAccessCollection<>.distance(from:to:)(0, v11, CMLSequence.size.getter);

      if (v26 >= v12)
      {
        BUG();
      }

      v13 = v26;
      v24 = countAndFlagsBits;
      v25 = v10;
      v14 = a1(&v24);
      countAndFlagsBits = 0;
      v15 = v14;
      v10;
      if (v15)
      {
        break;
      }

      v7 = v13 + 1;

      v16 = CMLSequence.size.getter();
      v17 = specialized RandomAccessCollection<>.distance(from:to:)(0, v16, CMLSequence.size.getter);

      v18 = v7 == v17;
      v4 = countAndFlagsBits;
      if (v18)
      {
        goto LABEL_8;
      }
    }

    return 1;
  }

  else
  {
LABEL_8:

    return 0;
  }
}

uint64_t *MLActivityClassifier.predictions(from:perWindowPrediction:)(uint64_t a1, int a2)
{
  v54 = v2;
  v49 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v42 = *(v43 - 8);
  v4 = *(v42 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v44 = &v37;
  v51 = type metadata accessor for DataFrame(0);
  v7 = *(v51 - 8);
  v8 = v7[8];
  v9 = alloca(v8);
  v10 = alloca(v8);
  v47 = &v37;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v53 = &v37;
  v13 = *(type metadata accessor for MLActivityClassifier(0) + 36);
  v45 = v3;
  v14._rawValue = *(v3 + v13);
  v46 = a1;
  DataFrame.validateContainsColumns(_:context:)(v14, __PAIR128__(0xEC00000061746164, 0x2065727574616546));
  if (!v16)
  {
    v17 = *(v14._rawValue + 2);
    v52 = v7;
    if (v17)
    {

      rawValue = v14._rawValue;
      v18 = (v14._rawValue + 40);
      while (1)
      {
        v54 = 0;
        v50 = v17;
        v19 = *(v18 - 1);
        v7 = *v18;
        v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any.Type>);
        v21 = swift_allocObject(v20, 40, 7);
        v21[2] = 1;
        v21[3] = 2;
        v21[4] = &type metadata for Double;

        v22._countAndFlagsBits = v19;
        v22._object = v7;
        DataFrame.validateColumnTypes(_:_:context:)(v22, v21, __PAIR128__(0xEC00000061746164, 0x2065727574616546));
        if (v23)
        {
          break;
        }

        v7;
        v21;
        v18 += 2;
        v17 = v50 - 1;
        if (v50 == &dword_0 + 1)
        {
          v54 = 0;
          rawValue;
          v7 = v52;
          goto LABEL_8;
        }
      }

      v7;
      rawValue;
      v21;
    }

    else
    {
      v54 = 0;
LABEL_8:
      v24 = v53;
      v50 = v7[2];
      (v50)(v53, v46, v51);
      v25._countAndFlagsBits = 0x5F6E6F6973736573;
      v25._object = 0xEA00000000006469;
      v26 = DataFrame.indexOfColumn(_:)(v25);
      v27 = v47;
      if (v26.is_nil)
      {
        v28 = DataFrame.shape.getter(0x5F6E6F6973736573);
        if (v28 < 0)
        {
          BUG();
        }

        v40 = v28;
        v41 = 0;
        v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Repeated<Int>);
        v30 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Repeated<Int> and conformance Repeated<A>, &demangling cache variable for type metadata for Repeated<Int>, &protocol conformance descriptor for Repeated<A>);
        v31 = v44;
        Column.init<A>(name:contents:)(0x5F6E6F6973736573, 0xEA00000000006469, &v40, &type metadata for Int, v29, v30);
        v24 = v53;
        DataFrame.append<A>(column:)(v31, &type metadata for Int);
        (*(v42 + 8))(v31, v43);
        v7 = v52;
        v27 = v47;
      }

      v32 = v7;
      v7 = v51;
      *v15.i64 = (v50)(v27, v24, v51);
      v33 = v54;
      MLDataTable.init(_:convertArraysToShapedArrays:)(v27, 0, v15);
      if (v33)
      {
        (v32[1])(v53, v7);
      }

      else
      {
        v34 = v40;
        v35 = v41;
        v38 = v40;
        v39 = v41;
        v7 = MLActivityClassifier.activityClassifierPrediction(from:perWindowPrediction:)(&v38, v49);
        outlined consume of Result<_DataTable, Error>(v34, v35);
        (v52[1])(v53, v51);
      }
    }
  }

  return v7;
}

uint64_t *MLActivityClassifier.activityClassifierPrediction(from:perWindowPrediction:)(uint64_t a1, int a2)
{
  v206 = v2;
  v216 = v3;
  v199 = a2;
  v180 = type metadata accessor for DataFrame.Rows(0);
  v181 = *(v180 - 8);
  v4 = *(v181 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v182 = &v163;
  v197 = type metadata accessor for TensorShape(0);
  v178 = *(v197 - 8);
  v7 = *(v178 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v179 = &v163;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v211 = &v163;
  v165 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v12 = *(*(v165 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v166 = &v163;
  v213 = type metadata accessor for Tensor(0);
  v219 = *(v213 - 8);
  v15 = v219[8];
  v16 = alloca(v15);
  v17 = alloca(v15);
  v190 = &v163;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v191 = &v163;
  v20 = alloca(v15);
  v21 = alloca(v15);
  v192 = &v163;
  v167 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (LSTM.State?, Tensor));
  v22 = *(*(v167 - 8) + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v196 = &v163;
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LSTM.State?) - 8) + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v168 = &v163;
  v169 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (LSTM.State, Tensor));
  v28 = *(*(v169 - 8) + 64);
  v29 = alloca(v28);
  v30 = alloca(v28);
  v193 = &v163;
  *&v212 = type metadata accessor for WeightedDataSample(0);
  v31 = *(*(v212 - 8) + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v194 = &v163;
  v34 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for WeightedDataSample?) - 8) + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v164 = &v163;
  v173 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>, WeightedDataSample>.Iterator);
  v37 = *(*(v173 - 8) + 64);
  v38 = alloca(v37);
  v39 = alloca(v37);
  v200 = &v163;
  v40 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v41 = alloca(v40);
  v42 = alloca(v40);
  v184 = &v163;
  v43 = alloca(v40);
  v44 = alloca(v40);
  v185 = &v163;
  v45 = alloca(v40);
  v46 = alloca(v40);
  v172 = &v163;
  v47 = alloca(v40);
  v48 = alloca(v40);
  v170 = &v163;
  v49 = alloca(v40);
  v50 = alloca(v40);
  v171 = &v163;
  v51 = alloca(v40);
  v52 = alloca(v40);
  v217 = &v163;
  v175 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[WeightedDataSample], WeightedDataSample>.PrefetchMode);
  v176 = *(v175 - 8);
  v53 = *(v176 + 64);
  v54 = alloca(v53);
  v55 = alloca(v53);
  v174 = &v163;
  v204 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[WeightedDataSample], WeightedDataSample>);
  v202 = *(v204 - 8);
  v56 = *(v202 + 64);
  v57 = alloca(v56);
  v58 = alloca(v56);
  v205 = &v163;
  v207 = type metadata accessor for DataFrame(0);
  v203 = *(v207 - 8);
  v59 = *(v203 + 64);
  v60 = alloca(v59);
  v61 = alloca(v59);
  v210 = &v163;
  v62 = alloca(v59);
  v63 = alloca(v59);
  v208 = &v163;
  v183 = type metadata accessor for MLActivityClassifier.DataBatcher(0);
  v64 = *(*(v183 - 8) + 64);
  v65 = alloca(v64);
  v66 = alloca(v64);
  v218 = &v163;
  v67 = *(*(type metadata accessor for MLActivityClassifier.Configuration(0) - 8) + 64);
  v68 = alloca(v67);
  v69 = alloca(v67);
  v220 = &v163;
  v70 = type metadata accessor for MLActivityClassifier.Model(0);
  v71 = *(*(v70 - 8) + 64);
  v72 = alloca(v71);
  v73 = alloca(v71);
  v74 = *a1;
  v75 = *(a1 + 8);
  outlined init with copy of MLTrainingSessionParameters(v216, &v163, type metadata accessor for MLActivityClassifier.Model);
  v195 = v70;
  v76 = *(v70 + 64);
  v216 = &v163;
  outlined init with copy of MLTrainingSessionParameters(&v163 + v76, v220, type metadata accessor for MLActivityClassifier.Configuration);
  *&v186 = v74;
  BYTE8(v186) = v75;
  outlined copy of Result<_DataTable, Error>(v74, v75);
  outlined copy of Result<_DataTable, Error>(v74, v75);
  outlined copy of Result<_DataTable, Error>(v74, v75);
  v77 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v186, SBYTE8(v186));
  v78 = specialized RandomAccessCollection<>.distance(from:to:)(0, v77, v74, v75);
  outlined consume of Result<_DataTable, Error>(v74, v75);
  v177 = v78;
  v220[3] = v78;
  *&v186 = v74;
  BYTE8(v186) = v75;
  v215 = v74;
  v222 = v75;
  outlined copy of Result<_DataTable, Error>(v74, v75);
  ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n = v208;
  DataFrame.init(_:)(&v186);
  v221 = v220[8];
  v80 = v220[9];
  v201 = v220[6];
  v81 = v220[7];
  v209 = v220[4];
  v82 = v220[5];

  v83 = v206;
  MLActivityClassifier.DataBatcher.init(input:sessionIdColumn:labelColumn:featureColumns:windowSize:sortSessions:mode:)(ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n, v221, v80, v201, v81, v82, v209, 0, 1);
  if (v83)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v220, type metadata accessor for MLActivityClassifier.Configuration);
    outlined consume of Result<_DataTable, Error>(v215, v222);
    v84 = type metadata accessor for MLActivityClassifier.Model;
    v85 = v216;
LABEL_3:
    outlined destroy of MLActivityClassifier.ModelParameters(v85, v84);
    return ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n;
  }

  v86 = *(v216 + *(v195 + 60));
  v87 = MLActivityClassifier.DataBatcher.asWeightedSamples(with:classLabels:labels:)(v220, v86);
  v221 = 0;
  v198 = v86;
  v214 = v87;
  v206 = v87;
  v89 = type metadata accessor for ShuffleSampler(0);
  v90 = v220[1];
  LODWORD(v86) = *(v220 + 16);

  v91 = ShuffleSampler.__allocating_init(seed:)(v90, v86);
  v188 = v89;
  v189 = &protocol witness table for ShuffleSampler;
  *&v186 = v91;
  v92 = v174;
  (*(v176 + 104))(v174, enum case for Dataset.PrefetchMode.serial<A, B>(_:), v175);
  v208 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [WeightedDataSample]);
  v209 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [WeightedDataSample] and conformance [A], &demangling cache variable for type metadata for [WeightedDataSample], &protocol conformance descriptor for [A]);
  v93 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type WeightedDataSample and conformance WeightedDataSample, type metadata accessor for WeightedDataSample, &protocol conformance descriptor for WeightedDataSample);
  v94 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type WeightedDataSample and conformance WeightedDataSample, type metadata accessor for WeightedDataSample, &protocol conformance descriptor for WeightedDataSample);
  Dataset.init<>(samples:batchSize:batchSampler:dropsLastPartialBatch:prefetchMode:transform:)(&v214, v177, &v186, 0, v92, 0, 0, v208, v212, v209, v93, v94);
  v206;
  __swift_storeEnumTagSinglePayload(v217, 1, 1, v213);
  v95 = v200;
  Dataset.makeIterator()(v204);
  v96 = *(v173 + 44);
  v209 = *(v95 + v96);
  v201 = *(v95 + v96 + 8);
  v208 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>.Iterator and conformance Batches<A>.Iterator, &demangling cache variable for type metadata for Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>.Iterator, &protocol conformance descriptor for Batches<A>.Iterator);
  while (1)
  {
    v97 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>.Iterator);
    dispatch thunk of IteratorProtocol.next()(v97, v208);
    v98 = v186;
    v99 = v164;
    if (v186)
    {
      v214 = v186;
      v209(&v214);
      v98;
      v100 = v99;
      v101 = 0;
    }

    else
    {
      v100 = v164;
      v101 = 1;
    }

    __swift_storeEnumTagSinglePayload(v100, v101, 1, v212);
    v102 = v207;
    v103 = v196;
    if (__swift_getEnumTagSinglePayload(v99, 1, v212) == 1)
    {
      break;
    }

    v104 = v99;
    v105 = v194;
    outlined init with take of WeightedDataSample(v104, v194);
    v106 = type metadata accessor for LSTM.State(0);
    v107 = v168;
    __swift_storeEnumTagSinglePayload(v168, 1, 1, v106);
    v108 = v103 + *(v167 + 48);
    outlined init with take of LSTM.State?(v107, v103);
    v109 = v108;
    v110 = v105;
    v111 = v105;
    v112 = v103;
    (v219[2])(v109, v111, v213);
    v113 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
    v114 = v193;
    Layer.callAsFunction(_:)(v112, v195, v113);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v112, &demangling cache variable for type metadata for (LSTM.State?, Tensor));
    v115 = v114 + *(v169 + 48);
    v116 = v166;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v110 + *(v212 + 20), v166, &demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
    v117 = v116 + *(v165 + 48);
    v206 = v219[4];
    v118 = v213;
    (v206)(v190, v116, v213);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v117, &demangling cache variable for type metadata for Tensor?);
    v119 = v170;
    __swift_storeEnumTagSinglePayload(v170, 1, 1, v118);
    v120 = v171;
    v121 = v115;
    v122 = v190;
    static MLActivityClassifier.Trainer.reshapeLabels(prediction:target:weights:)(v192, v191, v171, v121, v190, v119);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v119, &demangling cache variable for type metadata for Tensor?);
    v123 = v219[1];
    v123(v122, v118);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v120, &demangling cache variable for type metadata for Tensor?);
    v123(v191, v118);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v193, &demangling cache variable for type metadata for (LSTM.State, Tensor));
    outlined destroy of MLActivityClassifier.ModelParameters(v194, type metadata accessor for WeightedDataSample);
    v124 = v217;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v217, &demangling cache variable for type metadata for Tensor?);
    (v206)(v124, v192, v118);
    __swift_storeEnumTagSinglePayload(v124, 0, 1, v118);
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v200, &demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>, WeightedDataSample>.Iterator);
  (*(v203 + 16))(v210, v218, v102);
  v125 = v172;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v217, v172, &demangling cache variable for type metadata for Tensor?);
  v126 = v213;
  if (__swift_getEnumTagSinglePayload(v125, 1, v213) == 1)
  {
    BUG();
  }

  Tensor.shape.getter(v125, 1, v127);
  *&v212 = v219[1];
  (v212)(v125, v126);
  v128 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v129 = swift_allocObject(v128, 64, 7);
  v129[2] = 4;
  v129[3] = 8;
  v130 = v182;
  DataFrame.rows.getter(v128, 64, v131, v132);
  v133 = DataFrame.Rows.count.getter();
  (*(v181 + 8))(v130, v180);
  v129[4] = v133;
  v129[5] = *(v218 + *(v183 + 40));
  v129[6] = 1;
  v219 = *(v198 + 2);
  v129[7] = v219;
  v134 = v179;
  TensorShape.init(_:)(v129);
  v135 = TensorShape.dimensions.getter();
  v136 = TensorShape.dimensions.getter();
  LOBYTE(v130) = v136;
  v137 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1gq5(v135, v136);
  v135;
  v130;
  ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n = *(v178 + 8);
  v138 = v197;
  (ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n)(v134, v197);
  (ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n)(v211, v138);
  if (!v137)
  {
    v148 = v184;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v217, v184, &demangling cache variable for type metadata for Tensor?);
    v149 = v213;
    if (__swift_getEnumTagSinglePayload(v148, 1, v213) == 1)
    {
      BUG();
    }

    Tensor.shape.getter(v148, 1, v150);
    (v212)(v148, v149);
    *&v186 = 0;
    *(&v186 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(33);
    SBYTE8(v186);
    *&v186 = 0xD00000000000001FLL;
    *(&v186 + 1) = "aining checkpoint." + 0x8000000000000000;
    v151 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type TensorShape and conformance TensorShape, &type metadata accessor for TensorShape, &protocol conformance descriptor for TensorShape);
    v152 = v197;
    v153._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(v197, v151);
    object = v153._object;
    String.append(_:)(v153);
    object;
    v212 = v186;
    v155 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v155, 0, 0);
    *v156 = v212;
    *(v156 + 16) = 0;
    *(v156 + 32) = 0;
    *(v156 + 48) = 0;
    (ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n)(v211, v152);
    swift_willThrow();
    outlined consume of Result<_DataTable, Error>(v215, v222);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v217, &demangling cache variable for type metadata for Tensor?);
    (*(v202 + 8))(v205, v204);
    outlined destroy of MLActivityClassifier.ModelParameters(v220, type metadata accessor for MLActivityClassifier.Configuration);
    outlined destroy of MLActivityClassifier.ModelParameters(v216, type metadata accessor for MLActivityClassifier.Model);
    (*(v203 + 8))(v210, v207);
    v84 = type metadata accessor for MLActivityClassifier.DataBatcher;
    v85 = v218;
    goto LABEL_3;
  }

  v139 = v185;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v217, v185, &demangling cache variable for type metadata for Tensor?);
  v140 = v213;
  if (__swift_getEnumTagSinglePayload(v139, 1, v213) == 1)
  {
    BUG();
  }

  v141 = Tensor.scalars<A>(as:)(&type metadata for Double, &type metadata for Double, &protocol witness table for Double);
  (v212)(v139, v140);
  v142 = v219;
  if (!v219)
  {
    BUG();
  }

  v143 = *(v141 + 16);
  v144 = specialized Array.index(_:offsetBy:limitedBy:)(0, v219, v143, v141);
  if ((v145 & 1) == 0)
  {
    v143 = v144;
  }

  v146 = v198;

  v147 = v221;
  ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF10Algorithms23ChunksOfCountCollectionVySaySdGG_SSs5NeverOTg5128_s8CreateML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n(v141, v142, v143, v146);
  v141;
  if (v199)
  {
    outlined consume of Result<_DataTable, Error>(v215, v222);
LABEL_27:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v217, &demangling cache variable for type metadata for Tensor?);
    (*(v202 + 8))(v205, v204);
    outlined destroy of MLActivityClassifier.ModelParameters(v220, type metadata accessor for MLActivityClassifier.Configuration);
    outlined destroy of MLActivityClassifier.ModelParameters(v216, type metadata accessor for MLActivityClassifier.Model);
    (*(v203 + 8))(v210, v207);
    outlined destroy of MLActivityClassifier.ModelParameters(v218, type metadata accessor for MLActivityClassifier.DataBatcher);
    return ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n;
  }

  v221 = v147;
  v214 = _swiftEmptyArrayStorage;
  *&v212 = ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n[2];
  if (!v212)
  {
    outlined consume of Result<_DataTable, Error>(v215, v222);
    ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n;
    ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n = _swiftEmptyArrayStorage;
    goto LABEL_27;
  }

  v219 = ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n;
  v157 = (ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n + 5);
  v158 = 0;
  while (1)
  {
    v159 = *(v157 - 1);
    ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n = *v157;
    *&v186 = v158;
    *(&v186 + 1) = v159;
    v187 = ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n;

    v160 = v221;
    closure #2 in MLActivityClassifier.activityClassifierPrediction(from:perWindowPrediction:)(&v186, v218, v210);
    v221 = v160;
    if (v160)
    {
      break;
    }

    ++v158;
    ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n;
    specialized Array.append<A>(contentsOf:)(v163);
    v157 += 2;
    if (v212 == v158)
    {
      v161 = v219;
      v219;
      outlined consume of Result<_DataTable, Error>(v215, v222);
      v161;
      ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n = v214;
      goto LABEL_27;
    }
  }

  v162 = v219;
  v219;
  ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n;
  v214;
  outlined consume of Result<_DataTable, Error>(v215, v222);
  v162;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v217, &demangling cache variable for type metadata for Tensor?);
  (*(v202 + 8))(v205, v204);
  outlined destroy of MLActivityClassifier.ModelParameters(v220, type metadata accessor for MLActivityClassifier.Configuration);
  outlined destroy of MLActivityClassifier.ModelParameters(v216, type metadata accessor for MLActivityClassifier.Model);
  (*(v203 + 8))(v210, v207);
  outlined destroy of MLActivityClassifier.ModelParameters(v218, type metadata accessor for MLActivityClassifier.DataBatcher);
  return ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n;
}

uint64_t *MLActivityClassifier.predictions(from:perWindowPrediction:)(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v6 = v5;
  v44 = a2;
  LOBYTE(a4) = *(a1 + 8);
  v7 = &v38;
  v42 = *a1;
  v38 = v42;
  v43 = a4;
  LOBYTE(v39) = a4;
  v8 = *(v5 + *(type metadata accessor for MLActivityClassifier(0) + 36));
  static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v38, 0x2065727574616546, 0xEC00000061746164, v8);
  if (!v4)
  {
    v37 = v6;
    v9 = v42;
    v38 = v42;
    v10 = v43;
    LOBYTE(v39) = v43;
    LOBYTE(v40) = 1;
    static _ValidationUtilities.validateTableTypes(table:columns:type:)(&v38, v8, &v40);
    v40 = v9;
    v41 = v10;
    if (v10)
    {
      outlined copy of Result<_DataTable, Error>(v9, 1);
      outlined copy of Result<_DataTable, Error>(v9, 1);
      v11 = tc_v1_flex_list_create(0);
      if (!v11)
      {
        BUG();
      }

      v12 = v11;
      v13 = type metadata accessor for CMLSequence();
      v14 = swift_allocObject(v13, 25, 7);
      *(v14 + 16) = v12;
      *(v14 + 24) = 1;
    }

    else
    {
      outlined copy of Result<_DataTable, Error>(v9, 0);
      outlined copy of Result<_DataTable, Error>(v9, 0);
      _DataTable.columnNames.getter();
      v14 = v35[1];
    }

    v38 = 0x5F6E6F6973736573;
    v39 = 0xEA00000000006469;
    v15 = alloca(24);
    v16 = alloca(32);
    v36 = &v38;
    v17 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v35, v14);
    v36 = 0;

    if (v17)
    {
      v18 = v43;
      v19 = v42;
      outlined consume of Result<_DataTable, Error>(v42, v43);
      v20 = v18;
    }

    else
    {
      v21 = v42;
      v38 = v42;
      LOBYTE(v39) = v43;
      v22 = v43;
      outlined copy of Result<_DataTable, Error>(v42, v43);
      v23 = MLDataTable.size.getter();
      outlined consume of Result<_DataTable, Error>(v38, v39);
      v24 = specialized RandomAccessCollection<>.distance(from:to:)(0, v23, v21, v22);
      outlined consume of Result<_DataTable, Error>(v21, v22);
      v38 = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5(0, v24);
      v25 = alloca(24);
      v26 = alloca(32);
      v36 = &v38;
      ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
      v29 = v28;
      v30 = ML14_UntypedColumnC_s5Error_pTt1g5;
      v38;
      MLDataTable.willMutate()();
      v38 = v30;
      LOBYTE(v39) = v29 & 1;
      MLDataTable.addImpl(newColumn:named:)(&v38, 0x5F6E6F6973736573, 0xEA00000000006469);
      if (v41)
      {
        outlined consume of Result<_DataTable, Error>(v30, v29);
        v20 = 1;
        v19 = v40;
      }

      else
      {
        v31 = v29;
        v19 = v40;
        outlined copy of Result<_DataTable, Error>(v40, 0);
        _DataTable.columnNamesDidChange()();
        outlined consume of Result<_DataTable, Error>(v19, 0);
        outlined consume of Result<_DataTable, Error>(v30, v31);
        v20 = 0;
      }
    }

    v32 = v44;
    v38 = v19;
    LOBYTE(v39) = v20;
    LODWORD(v42) = v20;
    outlined copy of Result<_DataTable, Error>(v19, v20);
    v7 = MLActivityClassifier.activityClassifierPrediction(from:perWindowPrediction:)(&v38, v32);
    v33 = v42;
    outlined consume of Result<_DataTable, Error>(v19, v42);
    outlined consume of Result<_DataTable, Error>(v19, v33);
  }

  return v7;
}

void *closure #2 in MLActivityClassifier.activityClassifierPrediction(from:perWindowPrediction:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v42 = v4;
  v33 = a3;
  v40 = a2;
  v43 = v3;
  v31 = type metadata accessor for DataFrame.Row(0);
  v32 = *(v31 - 8);
  v5 = *(v32 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v34 = type metadata accessor for DataFrame.Rows(0);
  v35 = *(v34 - 8);
  v8 = *(v35 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = *a1;
  v38 = a1[1];
  v12 = a1[2];
  v13 = type metadata accessor for MLActivityClassifier.DataBatcher(0);
  v14 = *(a2 + *(v13 + 40));
  if (!v14)
  {
    BUG();
  }

  if (__OFSUB__(-v11, 1) && v14 == -1)
  {
    BUG();
  }

  v39 = v12;
  v41 = v13;
  v15 = v11 % v14;
  v37 = v11 % v14;
  v36 = v11 / v14;
  v16 = v40;
  DataFrame.rows.getter(0, v40, v15, v14);
  DataFrame.Rows.subscript.getter(v36);
  (*(v35 + 8))(&v30, v34);
  v17 = *(v41 + 24);
  v18 = *(v16 + v17);
  v19 = *(v16 + v17 + 8);
  v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  DataFrame.Row.subscript.getter(v18, v19, v20);
  (*(v32 + 8))(&v30, v31);
  if (v30)
  {
    v21 = *(v30 + 16);
    v30;
    v22 = *(v41 + 36);
    v23 = *(v40 + v22) * v37;
    if (!is_mul_ok(*(v40 + v22), v37))
    {
      BUG();
    }

    v24 = __OFSUB__(v21, v23);
    v25 = v21 - v23;
    if (v24)
    {
      BUG();
    }

    if (v25 <= 0)
    {
      result = _swiftEmptyArrayStorage;
    }

    else
    {
      v26 = v39;

      result = _sSa9repeating5countSayxGx_SitcfCSS_Tt1g5(v38, v26, v25);
    }

    *v43 = result;
  }

  else
  {
    v28 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v28, 0, 0);
    v29._countAndFlagsBits = 0x6C6562616CLL;
    v29._object = 0xE500000000000000;
    static MLCreateError.featureNotFound(feature:)(v29);
    return swift_willThrow();
  }

  return result;
}

uint64_t specialized RandomAccessCollection<>.distance(from:to:)(uint64_t a1, uint64_t a2)
{
  return specialized RandomAccessCollection<>.distance(from:to:)(a1, a2, CMLDictionary.size.getter);
}

{
  v2 = CMLSequence.size.getter();
  if (a1 < 0 || v2 < a1)
  {
    BUG();
  }

  v3 = CMLSequence.size.getter();
  if (a2 < 0 || v3 < a2)
  {
    BUG();
  }

  return a2 - a1;
}

{
  return specialized RandomAccessCollection<>.distance(from:to:)(a1, a2, CMLSequence.size.getter);
}

Swift::Int specialized RandomAccessCollection<>.distance(from:to:)(Swift::Int a1, Swift::Int a2, uint64_t a3, char a4)
{
  v11 = a4 & 1;
  outlined copy of Result<_DataTable, Error>(a3, a4);
  v6 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(a3, v11);
  if (a1 < 0 || v6 < a1)
  {
    BUG();
  }

  v10 = a3;
  outlined copy of Result<_DataTable, Error>(a3, a4);
  v7 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v10, a4 & 1);
  if (a2 < 0 || v7 < a2)
  {
    BUG();
  }

  return a2 - a1;
}

uint64_t specialized RandomAccessCollection<>.distance(from:to:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = (a3)();
  if (a1 < 0 || v4 < a1)
  {
    BUG();
  }

  v5 = a3(a1);
  if (a2 < 0 || v5 < a2)
  {
    BUG();
  }

  return a2 - a1;
}

uint64_t specialized RandomAccessCollection<>.distance(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized RandomAccessCollection<>.distance(from:to:)(a1, a2, a3);
}

{

  v3 = CMLSequence.size.getter();
  v4 = specialized RandomAccessCollection<>.distance(from:to:)(0, v3, CMLSequence.size.getter);

  if (a1 < 0 || v4 < a1)
  {
    BUG();
  }

  v5 = CMLSequence.size.getter();
  v6 = specialized RandomAccessCollection<>.distance(from:to:)(0, v5, CMLSequence.size.getter);

  if (a2 < 0 || v6 < a2)
  {
    BUG();
  }

  return a2 - a1;
}

{
  return specialized RandomAccessCollection<>.distance(from:to:)(a1, a2, a3);
}

char specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (__PAIR128__(a4 ^ a2, a3 ^ a1) == 0)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)(a1, a2, a3, a4, 0);
  }
}

BOOL _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1gq5(void *a1, void *a2)
{
  v2 = a1[2];
  if (v2 != a2[2])
  {
    return 0;
  }

  result = 1;
  if (!v2 || a1 == a2)
  {
    return result;
  }

  if (a1[4] != a2[4])
  {
    return 0;
  }

  if (v2 == 1)
  {
    return result;
  }

  if (a1[5] != a2[5])
  {
    return 0;
  }

  if (v2 != 2)
  {
    v4 = 0;
    do
    {
      if (v2 - 2 == v4)
      {
        BUG();
      }

      if (v4 + 2 >= v2)
      {
        BUG();
      }

      result = a1[v4 + 6] == a2[v4 + 6];
      if (a1[v4 + 6] != a2[v4 + 6])
      {
        break;
      }
    }

    while (v2 - 3 != v4++);
  }

  return result;
}

uint64_t specialized closure #1 in MLUntypedColumn.init<A>(_:)(uint64_t *a1, void *a2)
{
  v4 = v2;
  result = specialized closure #1 in MLUntypedColumn.init<A>(_:)(*a1);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *v4 = result;
  }

  return result;
}

{
  v4 = v2;
  result = specialized closure #1 in MLUntypedColumn.init<A>(_:)(*a1);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *v4 = result;
  }

  return result;
}

{
  v4 = v2;
  result = specialized closure #1 in MLUntypedColumn.init<A>(_:)(*a1);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *v4 = result;
  }

  return result;
}

{
  v4 = v2;
  result = specialized closure #1 in MLUntypedColumn.init<A>(_:)(*a1);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *v4 = result;
  }

  return result;
}

{
  v4 = v2;
  result = specialized closure #1 in MLUntypedColumn.init<A>(_:)(*a1);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *v4 = result;
  }

  return result;
}

uint64_t outlined init with take of WeightedDataSample(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for WeightedDataSample(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with take of LSTM.State?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LSTM.State?);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLImageClassifier.ModelParameters.ValidationData(uint64_t *__dst, uint64_t *__src, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *__src;
    *v3 = *__src;
    v3 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 1)
      {
        return memcpy(__dst, __src, *(v4 + 64));
      }

      v8 = type metadata accessor for MLImageClassifier.DataSource(0);
      v9 = swift_getEnumCaseMultiPayload(__src, v8);
      if (v9 == 2)
      {
        *__dst = *__src;

        v16 = 2;
      }

      else
      {
        if (v9 != 1)
        {
          v15 = type metadata accessor for URL(0);
          (*(*(v15 - 8) + 16))(__dst, __src, v15);
          v14 = v8;
          v13 = 0;
          goto LABEL_13;
        }

        v10 = type metadata accessor for URL(0);
        (*(*(v10 - 8) + 16))(__dst, __src, v10);
        v16 = 1;
      }

      v13 = v16;
      v14 = v8;
LABEL_13:
      swift_storeEnumTagMultiPayload(__dst, v14, v13);
      swift_storeEnumTagMultiPayload(__dst, a3, 1);
      return v3;
    }

    *__dst = *__src;

    swift_storeEnumTagMultiPayload(__dst, a3, 2);
  }

  return v3;
}

uint64_t destroy for MLImageClassifier.ModelParameters.ValidationData(void *a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  if (result == 2)
  {
    return *a1;
  }

  if (result != 1)
  {
    return result;
  }

  v3 = type metadata accessor for MLImageClassifier.DataSource(0);
  result = swift_getEnumCaseMultiPayload(a1, v3);
  if (result == 2)
  {
    return *a1;
  }

  if (result <= 1)
  {
    v4 = type metadata accessor for URL(0);
    return (*(*(v4 - 8) + 8))(a1, v4);
  }

  return result;
}

uint64_t *initializeWithCopy for MLImageClassifier.ModelParameters.ValidationData(uint64_t *__dst, uint64_t *__src, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return memcpy(__dst, __src, *(*(a3 - 8) + 64));
    }

    v5 = type metadata accessor for MLImageClassifier.DataSource(0);
    v6 = swift_getEnumCaseMultiPayload(__src, v5);
    if (v6 == 2)
    {
      *__dst = *__src;

      v12 = 2;
    }

    else
    {
      if (v6 != 1)
      {
        v11 = type metadata accessor for URL(0);
        (*(*(v11 - 8) + 16))(__dst, __src, v11);
        v10 = v5;
        v9 = 0;
        goto LABEL_11;
      }

      v7 = type metadata accessor for URL(0);
      (*(*(v7 - 8) + 16))(__dst, __src, v7);
      v12 = 1;
    }

    v9 = v12;
    v10 = v5;
LABEL_11:
    swift_storeEnumTagMultiPayload(__dst, v10, v9);
    swift_storeEnumTagMultiPayload(__dst, a3, 1);
    return __dst;
  }

  *__dst = *__src;

  swift_storeEnumTagMultiPayload(__dst, a3, 2);
  return __dst;
}

uint64_t *assignWithCopy for MLImageClassifier.ModelParameters.ValidationData(uint64_t *__dst, uint64_t *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLImageClassifier.ModelParameters.ValidationData(__dst, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return memcpy(__dst, __src, *(*(a3 - 8) + 64));
    }

    v5 = type metadata accessor for MLImageClassifier.DataSource(0);
    v6 = swift_getEnumCaseMultiPayload(__src, v5);
    if (v6 == 2)
    {
      *__dst = *__src;

      v12 = 2;
    }

    else
    {
      if (v6 != 1)
      {
        v11 = type metadata accessor for URL(0);
        (*(*(v11 - 8) + 16))(__dst, __src, v11);
        v10 = v5;
        v9 = 0;
        goto LABEL_12;
      }

      v7 = type metadata accessor for URL(0);
      (*(*(v7 - 8) + 16))(__dst, __src, v7);
      v12 = 1;
    }

    v9 = v12;
    v10 = v5;
LABEL_12:
    swift_storeEnumTagMultiPayload(__dst, v10, v9);
    swift_storeEnumTagMultiPayload(__dst, a3, 1);
    return __dst;
  }

  *__dst = *__src;

  swift_storeEnumTagMultiPayload(__dst, a3, 2);
  return __dst;
}

uint64_t type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLImageClassifier.ModelParameters.ValidationData;
  if (!type metadata singleton initialization cache for MLImageClassifier.ModelParameters.ValidationData)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLImageClassifier.ModelParameters.ValidationData);
  }

  return result;
}

void *initializeWithTake for MLImageClassifier.ModelParameters.ValidationData(void *__dst, void *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for MLImageClassifier.DataSource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v4);
  if (EnumCaseMultiPayload == 1)
  {
    v10 = type metadata accessor for URL(0);
    (*(*(v10 - 8) + 32))(__dst, __src, v10);
    v8 = 1;
    v7 = v4;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      memcpy(__dst, __src, *(*(v4 - 8) + 64));
      goto LABEL_9;
    }

    v6 = type metadata accessor for URL(0);
    (*(*(v6 - 8) + 32))(__dst, __src, v6);
    v7 = v4;
    v8 = 0;
  }

  swift_storeEnumTagMultiPayload(__dst, v7, v8);
LABEL_9:
  swift_storeEnumTagMultiPayload(__dst, a3, 1);
  return __dst;
}

void *assignWithTake for MLImageClassifier.ModelParameters.ValidationData(void *__dst, void *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLImageClassifier.ModelParameters.ValidationData(__dst, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for MLImageClassifier.DataSource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v4);
  if (EnumCaseMultiPayload == 1)
  {
    v10 = type metadata accessor for URL(0);
    (*(*(v10 - 8) + 32))(__dst, __src, v10);
    v8 = 1;
    v7 = v4;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      memcpy(__dst, __src, *(*(v4 - 8) + 64));
      goto LABEL_10;
    }

    v6 = type metadata accessor for URL(0);
    (*(*(v6 - 8) + 32))(__dst, __src, v6);
    v7 = v4;
    v8 = 0;
  }

  swift_storeEnumTagMultiPayload(__dst, v7, v8);
LABEL_10:
  swift_storeEnumTagMultiPayload(__dst, a3, 1);
  return __dst;
}

uint64_t type metadata completion function for MLImageClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  v5[0] = &unk_33E3B0;
  result = type metadata accessor for MLImageClassifier.DataSource(319);
  if (v4 <= 0x3F)
  {
    v5[1] = *(result - 8) + 64;
    v5[2] = &value witness table for Builtin.BridgeObject + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 3, v5, v2, v3);
    return 0;
  }

  return result;
}

Swift::tuple_training_OpaquePointer_validation_OpaquePointer __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLImageClassifier.ModelParameters.ValidationData.extractFilesByLabel(trainingFiles:)(Swift::OpaquePointer trainingFiles)
{
  v17 = v1;
  v3 = *(*(type metadata accessor for MLImageClassifier.DataSource(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v16 = &v16;
  v6 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  outlined init with copy of MLImageClassifier.ModelParameters.ValidationData(v2, &v16);
  switch(swift_getEnumCaseMultiPayload(&v16, v6))
  {
    case 0u:
    case 3u:

      v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [URL]);
      v11 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v10, &protocol witness table for String);
      goto LABEL_6;
    case 1u:
      rawValue = trainingFiles._rawValue;
      v13 = v16;
      outlined init with take of MLImageClassifier.DataSource(&v16, v16);
      v14 = v17;
      v11 = static _ImageUtilities.getImageURLsAndLabels(from:)(v13);
      outlined destroy of MLImageClassifier.ModelParameters.ValidationData(v13, type metadata accessor for MLImageClassifier.DataSource);
      if (!v14)
      {
      }

      break;
    case 2u:
      v11 = v16;

LABEL_6:
      rawValue = trainingFiles._rawValue;
      break;
  }

  result.training._rawValue = rawValue;
  result.validation._rawValue = v11;
  return result;
}

uint64_t outlined init with copy of MLImageClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with take of MLImageClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLImageClassifier.DataSource(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t outlined destroy of MLImageClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy8CreateML11MLDataValueOAHG_SS_Sdts5NeverOTg503_s8d4ML11fg38OACSSSdIgnnod_AC3key_AC5valuetSS_Sdts5H117OIegnrzr_TR03_s8a74ML6_ModelC19makeDetectorMetrics10onTrainingAA08MLObjecteF0VSb_tFSS_SdtAA11cD10O_AItXEfU_Tf3nnnpf_nTf1cn_nTm(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v3 = _swiftEmptyArrayStorage;
  v4 = specialized Dictionary.startIndex.getter(a1);
  v7 = a1 + 64;
  v8 = v1 - 1;
  v30 = a1 + 64;
  while (1)
  {
    if (v6)
    {
      BUG();
    }

    if (v4 < 0 || v4 >= 1 << *(v2 + 32))
    {
      BUG();
    }

    v9 = *(v7 + 8 * (v4 >> 6));
    v10 = 1 << v4;
    if (!_bittest64(&v9, v4))
    {
      BUG();
    }

    if (v5 != *(v2 + 36))
    {
      BUG();
    }

    v26 = v4 >> 6;
    v27 = v5;
    v23 = v3;
    v28 = v8;
    v24 = v4;
    v11 = 24 * v4;
    v12 = *(v2 + 48);
    v13 = *(v2 + 56);
    v14 = *(v12 + v11);
    v31 = *(v12 + v11 + 8);
    v32 = *(v12 + v11 + 16);
    v15 = *(v13 + v11);
    v16 = *(v13 + v11 + 8);
    v17 = *(v13 + v11 + 16);
    outlined copy of MLDataValue(v14, v31, v32);
    outlined copy of MLDataValue(v15, v16, v17);
    outlined copy of MLDataValue(v14, v31, v32);
    outlined copy of MLDataValue(v15, v16, v17);
    outlined copy of MLDataValue(v14, v31, v32);
    outlined copy of MLDataValue(v15, v16, v17);
    outlined consume of MLDataValue(v14, v31, v32);
    outlined consume of MLDataValue(v15, v16, v17);
    outlined consume of MLDataValue(v14, v31, v32);
    v25 = v15;
    outlined consume of MLDataValue(v15, v16, v17);
    if (v32 != 2)
    {
      BUG();
    }

    if (v17 != 1)
    {
      BUG();
    }

    outlined consume of MLDataValue(v14, v31, 2);
    outlined consume of MLDataValue(v15, v16, 1);
    v3 = v23;
    v18 = v23[2];
    v19 = v18 + 1;
    if (v23[3] >> 1 <= v18)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v23[3] >= 2uLL, v18 + 1, 1);
      v19 = v18 + 1;
      v3 = v23;
    }

    v3[2] = v19;
    v20 = 3 * v18;
    v3[v20 + 4] = v14;
    v3[v20 + 5] = v31;
    v3[v20 + 6] = v25;
    v2 = a1;
    v21 = -1 << *(a1 + 32);
    if (v24 >= -v21)
    {
      BUG();
    }

    v7 = v30;
    if ((v10 & *(v30 + 8 * v26)) == 0)
    {
      BUG();
    }

    if (v27 != *(a1 + 36))
    {
      BUG();
    }

    v4 = _HashTable.occupiedBucket(after:)(v24, v30, ~v21);
    v8 = v28 - 1;
    if (!v28)
    {
      break;
    }

    v5 = *(a1 + 36);
    v6 = 0;
  }

  return v3;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML16MLObjectDetectorV16ObjectAnnotationVG_SSs5NeverOTg503_s8d4ML16fg88V21makeAnnotatedFeatures18groundTruthObjects08detectedJ0SayAC0F18PredictionForLabelVGSays4AC16hI67VGG_AMtKFZSSAKcfu_33_5beb3c594ea6d4a9def05566b5b2e9caAKSSTf3nnnpk_nTf1cn_nTm(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = (a1 + 40);
    do
    {
      v6 = v1;
      v7 = *(v2 - 1);
      v3 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      v10 = v3 + 1;
      v8 = *v2;

      if (v9 >> 1 <= v3)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v9 >= 2, v10, 1);
      }

      _swiftEmptyArrayStorage[2] = v10;
      v4 = 2 * v3;
      _swiftEmptyArrayStorage[v4 + 4] = v7;
      _swiftEmptyArrayStorage[v4 + 5] = v8;
      v2 += 7;
      v1 = v6 - 1;
    }

    while (v6 != 1);
  }

  return _swiftEmptyArrayStorage;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSSdG_Sds5NeverOTg5194_s8CreateML16MLObjectDetectorV10evaluation2on15detectedObjectsAA0cD7MetricsVSaySayAC16ObjectAnnotationVGG_ALtKFZSdSS3key_Sd5valuet_tcfu1_33_02b57a39088027ce0a04a12694145150SSAM_SdANtSdTf3nnnpk_nTf1cn_nTm(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v24 = _swiftEmptyArrayStorage;
  v2 = specialized Dictionary.startIndex.getter(a1);
  v3 = a1;
  v4 = v2;
  v6 = v5;
  v7 = a1 + 64;
  v8 = v1 - 1;
  while (1)
  {
    if (v4 < 0 || v4 >= 1 << *(v3 + 32))
    {
      BUG();
    }

    v19 = v8;
    v9 = *(v7 + 8 * (v4 >> 6));
    if (!_bittest64(&v9, v4))
    {
      BUG();
    }

    if (v6 != *(v3 + 36))
    {
      BUG();
    }

    v10 = *(*(v3 + 56) + 8 * v4);
    v11 = v24;
    v22 = v24;
    v12 = v24[2];
    v13 = v24[3];
    v14 = v12 + 1;
    if (v13 >> 1 <= v12)
    {
      v21 = v24[2];
      v25 = v7;
      v20 = v6;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v13 >= 2, v14, 1);
      v12 = v21;
      v6 = v20;
      v7 = v25;
      v3 = a1;
      v11 = v22;
    }

    v11[2] = v14;
    v11[v12 + 4] = v10;
    v15 = *(v3 + 32);
    if (v4 >= -(-1 << v15))
    {
      BUG();
    }

    if (((1 << v4) & *(v7 + 8 * (v4 >> 6))) == 0)
    {
      BUG();
    }

    if (v6 != *(v3 + 36))
    {
      BUG();
    }

    v24 = v11;
    v16 = v7;
    v17 = _HashTable.occupiedBucket(after:)(v4, v7, ~(-1 << v15));
    --v8;
    if (!v19)
    {
      break;
    }

    v4 = v17;
    v3 = a1;
    v6 = *(a1 + 36);
    v7 = v16;
  }

  return v11;
}

uint64_t MLObjectDetector.evaluation(on:)()
{
  v2 = v1;
  v54 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<String, [MLObjectDetector.NormalizedAnnotation]>);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v53 = v35;
  v8 = *(type metadata accessor for MLObjectDetector(0) + 24);
  v9 = *(v1 + v8);
  v10 = *(v1 + v8 + 1);
  LOBYTE(v8) = *(v1 + v8 + 2);
  LOBYTE(v55) = v9;
  BYTE1(v55) = v10;
  BYTE2(v55) = v8;
  v11 = 0;
  v12 = MLObjectDetector.DataSource.gatherAnnotatedImages(annotationType:)(&v55);
  v52 = v4;
  v51 = v3;
  v13 = v12[2];
  if (v13)
  {
    v48 = v2;
    v47 = 0;
    v55 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    v56 = v55;
    v14 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v49 = v12;
    v44 = v12 + v14;
    v15 = 0;
    v45 = *(v52 + 16);
    v46 = *(v52 + 72);
    v16 = v51;
    v17 = v53;
    v43 = v13;
    do
    {
      v42 = v15;
      v45(v17, &v44[v15 * v46], v16);
      AnnotatedFeature.annotation.getter(v16);
      v50 = v39;
      v18 = *(v39 + 16);
      v19 = _swiftEmptyArrayStorage;
      if (v18)
      {
        v20 = (v50 + 56);
        v19 = _swiftEmptyArrayStorage;
        do
        {
          v40 = *(v20 - 3);
          v21 = *(v20 - 2);
          v37 = *(v20 - 1);
          v36 = *v20;
          v38 = _mm_mul_ps(v36, xmmword_33E3E0);
          v41 = v21;

          if (!swift_isUniquelyReferenced_nonNull_native(v19))
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
          }

          v22 = *(v19 + 2);
          if (*(v19 + 3) >> 1 <= v22)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v19 + 3) >= 2uLL, v22 + 1, 1, v19);
          }

          v23 = _mm_cvtps_pd(_mm_add_ps(v37, v38));
          v24 = _mm_cvtps_pd(*v36.f32);
          *(v19 + 2) = v22 + 1;
          v25 = 56 * v22;
          *&v19[v25 + 32] = v40;
          *&v19[v25 + 40] = v41;
          *&v19[v25 + 48] = v23;
          *&v19[v25 + 64] = v24;
          *&v19[v25 + 80] = 0x3FF0000000000000;
          v20 += 4;
          --v18;
        }

        while (v18);
      }

      v50;
      v17 = v53;
      v16 = v51;
      (*(v52 + 8))(v53, v51);
      v26 = v56;
      v55 = v56;
      v27 = v56[2];
      if (v56[3] >> 1 <= v27)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v56[3] >= 2uLL, v27 + 1, 1);
        v17 = v53;
        v26 = v55;
      }

      v15 = v42 + 1;
      v26[2] = v27 + 1;
      v56 = v26;
      v26[v27 + 4] = v19;
    }

    while (v15 != v43);
    v28 = v54;
    v11 = v47;
    v2 = v48;
    v12 = v49;
  }

  else
  {
    v56 = _swiftEmptyArrayStorage;
    v28 = v54;
  }

  v29 = alloca(24);
  v30 = alloca(32);
  v36.i64[0] = v2;
  MLComponents16AnnotatedFeatureVySSSay0D2ML16MLObjectDetectorV20NormalizedAnnotationVGGG_SayAK06ObjectL0VGsAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVySSSay0D2ML16MLObjectDetectorV20NormalizedAnnotationVGGG_SayAK06ObjectL0VGsAE_pTg5(partial apply for closure #2 in MLObjectDetector.evaluation(on:), v35, v12);
  if (v11)
  {
    v12;
    result = v56;
    *v28 = v11;
    *(v28 + 8) = 0;
    *(v28 + 24) = 0;
    *(v28 + 32) = 1;
  }

  else
  {
    v33 = MLComponents16AnnotatedFeatureVySSSay0D2ML16MLObjectDetectorV20NormalizedAnnotationVGGG_SayAK06ObjectL0VGsAE_pTg5;
    v12;
    v34 = v56;
    static MLObjectDetector.evaluation(on:detectedObjects:)(v56, v33);
    v34;
    return v33;
  }

  return result;
}

uint64_t *closure #2 in MLObjectDetector.evaluation(on:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v17 = a3;
  v15 = v4;
  v16 = a2;
  v18 = v3;
  v5 = type metadata accessor for URL(0);
  v19 = *(v5 - 8);
  v6 = *(v19 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<String, [MLObjectDetector.NormalizedAnnotation]>);
  AnnotatedFeature.feature.getter(v9);
  URL.init(fileURLWithPath:)(v13[1], v14);
  v14;
  v10 = MLObjectDetector.modelPredictions(from:)();
  if (v4)
  {
    (*(v19 + 8))(v13, v5);
    result = v17;
    *v17 = v4;
  }

  else
  {
    v12 = v10;
    (*(v19 + 8))(v13, v5);
    result = v18;
    *v18 = v12;
  }

  return result;
}

void *static MLObjectDetector.evaluation(on:detectedObjects:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  result = static MLObjectDetector.makeAnnotatedFeatures(groundTruthObjects:detectedObjects:)(a1, a2);
  v6 = v3;
  if (!v3)
  {
    v76 = result[2];
    v78 = v4;
    if (v76)
    {
      v77 = result + 4;
      v7 = _swiftEmptyDictionarySingleton;
      v101 = 0;
      v88 = 0;
      v8 = 0;
      v79 = result;
      do
      {
        if (v8 >= result[2])
        {
          BUG();
        }

        v84 = v7;
        v74 = v8;
        v9 = v77[4 * v8];
        v10 = v77[4 * v8 + 1];
        v11 = v77[4 * v8 + 2];
        v87 = v6;
        v12 = v77[4 * v8 + 3];

        v80 = v9;
        v82 = v10;
        v90 = v11;
        v98 = v12;
        v13 = static MLObjectDetector.evaluate(annotatedPredictionForLabel:)(v9, v10, v11, v12);
        v6 = v87;
        v14 = v13;
        v95 = v13[2];
        v7 = v84;
        if (v95)
        {
          v92 = v13;
          v75 = v13[4];

          _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v101, 0);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
          v102 = specialized __RawDictionaryStorage.find<A>(_:)(v90, v98);
          v17 = (v16 & 1) == 0;
          v18 = __OFADD__(_swiftEmptyDictionarySingleton[2], v17);
          v19 = _swiftEmptyDictionarySingleton[2] + v17;
          if (v18)
          {
            BUG();
          }

          v20 = v16;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [Double]>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v19))
          {
            v21 = v98;
            v22 = v98;
            v102 = specialized __RawDictionaryStorage.find<A>(_:)(v90, v98);
            LOBYTE(v24) = v24 & 1;
            if ((v20 & 1) != v24)
            {
              goto LABEL_71;
            }
          }

          else
          {
            v21 = v98;
          }

          if ((v20 & 1) == 0)
          {
            _swiftEmptyDictionarySingleton[(v102 >> 6) + 8] |= 1 << v102;
            v25 = _swiftEmptyDictionarySingleton[6];
            v26 = 16 * v102;
            *(v25 + v26) = v90;
            *(v25 + v26 + 8) = v21;
            *(_swiftEmptyDictionarySingleton[7] + 8 * v102) = _swiftEmptyArrayStorage;
            v27 = _swiftEmptyDictionarySingleton[2];

            v18 = __OFADD__(1, v27);
            v28 = v27 + 1;
            if (v18)
            {
              BUG();
            }

            _swiftEmptyDictionarySingleton[2] = v28;
          }

          v29 = _swiftEmptyDictionarySingleton[7];

          v30 = *(v29 + 8 * v102);
          v31 = swift_isUniquelyReferenced_nonNull_native(v30);
          *(v29 + 8 * v102) = v30;
          if (!v31)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30[2] + 1, 1, v30);
            *(v29 + 8 * v102) = v30;
          }

          v32 = v30[2];
          if (v30[3] >> 1 <= v32)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v30[3] >= 2uLL, v32 + 1, 1, v30);
            *(v29 + 8 * v102) = v30;
          }

          v30[2] = v32 + 1;
          v30[v32 + 4] = v75;
          v98;

          v33 = 0;
          v34 = v92;
          do
          {
            v35 = v34[v33 + 4];
            if ((v35 & 0xFFFFFFFFFFFFFLL) == 0 || (~v35 & 0x7FF0000000000000) != 0)
            {
              if (!swift_isUniquelyReferenced_nonNull_native(_swiftEmptyArrayStorage))
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, _swiftEmptyArrayStorage[2] + 1, 1);
              }

              v36 = _swiftEmptyArrayStorage[2];
              v37 = v36 + 1;
              if (_swiftEmptyArrayStorage[3] >> 1 <= v36)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v36 + 1, 1);
                v37 = v36 + 1;
              }

              _swiftEmptyArrayStorage[2] = v37;
              _swiftEmptyArrayStorage[v36 + 4] = v35;
              v34 = v92;
            }

            ++v33;
          }

          while (v95 != v33);
          v34;
          v38 = _swiftEmptyArrayStorage[2];
          v39 = 0.0;
          if (v38)
          {
            v40 = 0;
            v41 = v88;
            do
            {
              v39 = v39 + *&_swiftEmptyArrayStorage[v40++ + 4];
            }

            while (v38 != v40);
          }

          else
          {
            v41 = v88;
          }

          _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v41, 0);
          v42 = swift_isUniquelyReferenced_nonNull_native(v84);
          v96 = specialized __RawDictionaryStorage.find<A>(_:)(v90, v98);
          v44 = (v43 & 1) == 0;
          v18 = __OFADD__(v84[2], v44);
          v45 = v84[2] + v44;
          if (v18)
          {
            BUG();
          }

          v46 = v43;
          v47 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v42, v45);
          v48 = v84;
          if (v47)
          {
            v22 = v98;
            v96 = specialized __RawDictionaryStorage.find<A>(_:)(v90, v98);
            LOBYTE(v24) = v24 & 1;
            if ((v46 & 1) != v24)
            {
LABEL_71:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v22, v24, v23);
              BUG();
            }
          }

          if ((v46 & 1) == 0)
          {
            v84[(v96 >> 6) + 8] |= 1 << v96;
            v49 = v84[6];
            v50 = 16 * v96;
            *(v49 + v50) = v90;
            *(v49 + v50 + 8) = v98;
            *(v84[7] + 8 * v96) = _swiftEmptyArrayStorage;
            v51 = v84[2];

            v18 = __OFADD__(1, v51);
            v52 = v51 + 1;
            if (v18)
            {
              BUG();
            }

            v84[2] = v52;
            v48 = v84;
          }

          v85 = v48;

          v53 = v48[7];

          v54 = *(v53 + 8 * v96);
          v55 = swift_isUniquelyReferenced_nonNull_native(v54);
          *(v53 + 8 * v96) = v54;
          if (!v55)
          {
            v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54[2] + 1, 1, v54);
            *(v53 + 8 * v96) = v54;
          }

          v56 = v54[2];
          if (v54[3] >> 1 <= v56)
          {
            v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v54[3] >= 2uLL, v56 + 1, 1, v54);
            *(v53 + 8 * v96) = v54;
          }

          v54[2] = v56 + 1;
          *&v54[v56 + 4] = v39 / v38;
          swift_bridgeObjectRelease_n(v98, 2);
          v82;
          v80;
          v101 = specialized thunk for @callee_guaranteed () -> (@owned [Double]);
          v88 = specialized thunk for @callee_guaranteed () -> (@owned [Double]);
          v7 = v85;
          v6 = v87;
        }

        else
        {
          v98;
          v82;
          v9;
          v14;
        }

        v8 = v74 + 1;
        result = v79;
      }

      while (v74 + 1 != v76);
      v79;
      v57 = v88;
    }

    else
    {
      result;
      v101 = 0;
      v57 = 0;
      v7 = _swiftEmptyDictionarySingleton;
    }

    v89 = v57;
    v58 = specialized _NativeDictionary.mapValues<A>(_:)(_swiftEmptyDictionarySingleton);
    v86 = v7;
    v91 = specialized _NativeDictionary.mapValues<A>(_:)(v7);
    v81 = v58;
    ML16MLObjectDetectorV10evaluation2on15detectedObjectsAA0cD7MetricsVSaySayAC16ObjectAnnotationVGG_ALtKFZSdSS3key_Sd5valuet_tcfu1_33_02b57a39088027ce0a04a12694145150SSAM_SdANtSdTf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSSdG_Sds5NeverOTg5194_s8CreateML16MLObjectDetectorV10evaluation2on15detectedObjectsAA0cD7MetricsVSaySayAC16ObjectAnnotationVGG_ALtKFZSdSS3key_Sd5valuet_tcfu1_33_02b57a39088027ce0a04a12694145150SSAM_SdANtSdTf3nnnpk_nTf1cn_nTm(v58);
    v60 = ML16MLObjectDetectorV10evaluation2on15detectedObjectsAA0cD7MetricsVSaySayAC16ObjectAnnotationVGG_ALtKFZSdSS3key_Sd5valuet_tcfu1_33_02b57a39088027ce0a04a12694145150SSAM_SdANtSdTf3nnnpk_nTf1cn_nTm;
    v61 = ML16MLObjectDetectorV10evaluation2on15detectedObjectsAA0cD7MetricsVSaySayAC16ObjectAnnotationVGG_ALtKFZSdSS3key_Sd5valuet_tcfu1_33_02b57a39088027ce0a04a12694145150SSAM_SdANtSdTf3nnnpk_nTf1cn_nTm[2];
    v62 = _swiftEmptyArrayStorage;
    if (v61)
    {
      v63 = 0;
      v93 = ML16MLObjectDetectorV10evaluation2on15detectedObjectsAA0cD7MetricsVSaySayAC16ObjectAnnotationVGG_ALtKFZSdSS3key_Sd5valuet_tcfu1_33_02b57a39088027ce0a04a12694145150SSAM_SdANtSdTf3nnnpk_nTf1cn_nTm;
      v99 = ML16MLObjectDetectorV10evaluation2on15detectedObjectsAA0cD7MetricsVSaySayAC16ObjectAnnotationVGG_ALtKFZSdSS3key_Sd5valuet_tcfu1_33_02b57a39088027ce0a04a12694145150SSAM_SdANtSdTf3nnnpk_nTf1cn_nTm[2];
      do
      {
        v64 = v60[v63 + 4];
        if ((v64 & 0xFFFFFFFFFFFFFLL) == 0 || (~v64 & 0x7FF0000000000000) != 0)
        {
          if (!swift_isUniquelyReferenced_nonNull_native(_swiftEmptyArrayStorage))
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v65 = _swiftEmptyArrayStorage[2];
          v66 = v65 + 1;
          v60 = v93;
          v61 = v99;
          if (_swiftEmptyArrayStorage[3] >> 1 <= v65)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v66, 1);
            v61 = v99;
            v60 = v93;
          }

          _swiftEmptyArrayStorage[2] = v66;
          _swiftEmptyArrayStorage[v65 + 4] = v64;
          v62 = _swiftEmptyArrayStorage;
        }

        ++v63;
      }

      while (v61 != v63);
    }

    v60;
    v83 = specialized Sequence<>.mean()(_swiftEmptyArrayStorage);

    v67 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSSdG_Sds5NeverOTg5194_s8CreateML16MLObjectDetectorV10evaluation2on15detectedObjectsAA0cD7MetricsVSaySayAC16ObjectAnnotationVGG_ALtKFZSdSS3key_Sd5valuet_tcfu1_33_02b57a39088027ce0a04a12694145150SSAM_SdANtSdTf3nnnpk_nTf1cn_nTm(v91);
    v68 = v67;
    v69 = v67[2];
    if (v69)
    {
      v62 = _swiftEmptyArrayStorage;
      v70 = 0;
      v100 = v67;
      v94 = v67[2];
      do
      {
        v71 = v68[v70 + 4];
        if ((v71 & 0xFFFFFFFFFFFFFLL) == 0 || (~v71 & 0x7FF0000000000000) != 0)
        {
          if (!swift_isUniquelyReferenced_nonNull_native(v62))
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v62[2] + 1, 1);
          }

          v72 = v62[2];
          v73 = v62;
          v69 = v94;
          if (v62[3] >> 1 <= v72)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v62[3] >= 2uLL, v72 + 1, 1);
            v69 = v94;
            v73 = v62;
          }

          v73[2] = v72 + 1;
          v73[v72 + 4] = v71;
          v62 = v73;
          v68 = v100;
        }

        ++v70;
      }

      while (v69 != v70);
    }

    v86;
    v68;
    _swiftEmptyDictionarySingleton;
    v97 = specialized Sequence<>.mean()(v62);

    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v101, 0);
    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v89, 0);
    result = v78;
    *v78 = v91;
    *(v78 + 8) = v81;
    *(v78 + 16) = v97;
    *(v78 + 24) = v83;
    *(v78 + 32) = 0;
  }

  return result;
}

uint64_t MLObjectDetector.evaluation(on:imageColumn:annotationColumn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v20 = a4;
  v29 = v6;
  v22 = v7;
  v24 = a5;
  v9 = *a1;
  v10 = *(a1 + 8);
  v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v25, v17);
  inited[2] = 1;
  inited[3] = 2;
  v21 = a2;
  inited[4] = a2;
  inited[5] = a3;
  v26 = v9;
  v27 = v9;
  LOBYTE(v9) = v10;
  v28 = v10;

  static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v27, 0x4C52556567616D49, 0xE800000000000000, inited);
  v23 = a3;
  v27 = v26;
  v28 = v10;
  v12 = swift_initStackObject(v25, v18);
  v12[2] = 1;
  v12[3] = 2;
  v13 = v20;
  v12[4] = v20;
  v12[5] = v24;

  static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v27, 0x697461746F6E6E41, 0xEA00000000006E6FLL, v12);
  swift_setDeallocating(v12);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  swift_setDeallocating(inited);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v27 = v26;
  v32 = v9;
  v28 = v9;
  v14 = swift_initStackObject(v25, v19);
  v14[2] = 1;
  v14[3] = 2;
  v14[4] = v21;
  v14[5] = v23;
  v30 = 2;
  v31 = 3;

  static _ValidationUtilities.validateTableTypes(table:featureColumns:featureType:labelColumn:labelType:)(&v27, v14, &v30, v13, v24, &v31);
  swift_setDeallocating(v14);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v27 = v26;
  v28 = v32;
  v15 = _Model.evaluation(from:)(&v27);
  static MLObjectDetector.extractMetrics(from:)(v15, v14, a6);
}

void *static MLObjectDetector.makeAnnotatedFeatures(groundTruthObjects:detectedObjects:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = a1;
  v38 = a2;

  v4 = _swiftEmptyArrayStorage;
  while (1)
  {
    v5 = specialized Zip2Sequence.Iterator.next()();
    if (!v5)
    {
      break;
    }

    v7 = v6;
    v46 = v5;
    ML16MLObjectDetectorV16ObjectAnnotationVG_SSs5NeverOTg503_s8d4ML16fg88V21makeAnnotatedFeatures18groundTruthObjects08detectedJ0SayAC0F18PredictionForLabelVGSays4AC16hI67VGG_AMtKFZSSAKcfu_33_5beb3c594ea6d4a9def05566b5b2e9caAKSSTf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML16MLObjectDetectorV16ObjectAnnotationVG_SSs5NeverOTg503_s8d4ML16fg88V21makeAnnotatedFeatures18groundTruthObjects08detectedJ0SayAC0F18PredictionForLabelVGSays4AC16hI67VGG_AMtKFZSSAKcfu_33_5beb3c594ea6d4a9def05566b5b2e9caAKSSTf3nnnpk_nTf1cn_nTm(v5);
    v9 = v3;
    v10 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(ML16MLObjectDetectorV16ObjectAnnotationVG_SSs5NeverOTg503_s8d4ML16fg88V21makeAnnotatedFeatures18groundTruthObjects08detectedJ0SayAC0F18PredictionForLabelVGSays4AC16hI67VGG_AMtKFZSSAKcfu_33_5beb3c594ea6d4a9def05566b5b2e9caAKSSTf3nnnpk_nTf1cn_nTm);
    v11 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML16MLObjectDetectorV16ObjectAnnotationVG_SSs5NeverOTg503_s8d4ML16fg88V21makeAnnotatedFeatures18groundTruthObjects08detectedJ0SayAC0F18PredictionForLabelVGSays4AC16hI67VGG_AMtKFZSSAKcfu_33_5beb3c594ea6d4a9def05566b5b2e9caAKSSTf3nnnpk_nTf1cn_nTm(v7);
    v12 = specialized Set.union<A>(_:)(v11, v10);
    v13 = 1 << *(v12 + 32);
    v14 = ~(-1 << v13);
    if (v13 >= 64)
    {
      v14 = -1;
    }

    v47 = v12;
    v15 = *(v12 + 56) & v14;
    v45 = (v13 + 63) >> 6;
    v16 = 0;
    v44 = v7;
    while (1)
    {
      v39 = v4;
      if (v15)
      {
        goto LABEL_22;
      }

      v17 = v16 + 1;
      if (__OFADD__(1, v16))
      {
        BUG();
      }

      if (v17 >= v45)
      {
        goto LABEL_38;
      }

      v15 = *(v47 + 8 * v17 + 56);
      if (v15)
      {
        ++v16;
        goto LABEL_22;
      }

      v18 = v16 + 2;
      if (v16 + 2 >= v45)
      {
        goto LABEL_38;
      }

      v15 = *(v47 + 8 * v17 + 64);
      if (!v15)
      {
        v18 = v16 + 3;
        if (v16 + 3 >= v45)
        {
          goto LABEL_38;
        }

        v15 = *(v47 + 8 * v17 + 72);
        if (!v15)
        {
          v18 = v16 + 4;
          if (v16 + 4 >= v45)
          {
            goto LABEL_38;
          }

          v15 = *(v47 + 8 * v17 + 80);
          if (!v15)
          {
            v18 = v16 + 5;
            if (v16 + 5 >= v45)
            {
              goto LABEL_38;
            }

            v15 = *(v47 + 8 * v17 + 88);
            if (!v15)
            {
              v18 = v16 + 6;
              if (v16 + 6 >= v45)
              {
                goto LABEL_38;
              }

              v15 = *(v47 + 8 * v17 + 96);
              if (!v15)
              {
                break;
              }
            }
          }
        }
      }

      v16 = v18;
LABEL_22:
      _BitScanForward64(&v19, v15);
      v20 = *(v47 + 48);
      v40 = v16;
      v21 = (v16 << 10) | (16 * v19);
      v22 = *(v20 + v21);
      v7 = *(v20 + v21 + 8);
      swift_bridgeObjectRetain_n(v7, 2);

      v23 = v9;
      v24 = specialized _ArrayProtocol.filter(_:)(v46, v22, v7);

      v25 = v24;
      v41 = v22;
      v42 = specialized _ArrayProtocol.filter(_:)(v44, v22, v7);
      v26 = v24[2];
      if (v26)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
        v27 = _swiftEmptyArrayStorage[2];
        v28 = 32 * v27 + 48;
        v43 = v25;
        v29 = (v25 + 8);
        do
        {
          v30 = v27;
          v31 = *(v29 - 1);
          v32 = *v29;
          ++v27;
          if (_swiftEmptyArrayStorage[3] >> 1 <= v30)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v27, 1);
          }

          _swiftEmptyArrayStorage[2] = v27;
          *(&_swiftEmptyArrayStorage[-2] + v28) = v31;
          *(_swiftEmptyArrayStorage + v28) = v32;
          v28 += 32;
          v29 = (v29 + 56);
          --v26;
        }

        while (v26);
        v43;
      }

      else
      {
        v24;
      }

      v4 = v39;
      if (!swift_isUniquelyReferenced_nonNull_native(v39))
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 16) + 1, 1, v39);
      }

      v33 = v4[2];
      if (v4[3] >> 1 <= v33)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v4[3] >= 2uLL, v33 + 1, 1, v4);
      }

      v15 &= v15 - 1;
      v4[2] = v33 + 1;
      v34 = 4 * v33;
      v4[v34 + 4] = v42;
      v4[v34 + 5] = _swiftEmptyArrayStorage;
      v4[v34 + 6] = v41;
      v4[v34 + 7] = v7;
      v9 = v23;
      LOBYTE(v7) = v44;
      v16 = v40;
    }

    v35 = v16 + 7;
    while (v35 < v45)
    {
      v15 = *(v47 + 8 * v35++ + 56);
      if (v15)
      {
        v16 = v35 - 1;
        goto LABEL_22;
      }
    }

LABEL_38:
    v46;

    v3 = v9;
    v7;
  }

  v37;
  v38;
  return v4;
}

void *specialized _ArrayProtocol.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + 80;
  v20 = -*(a1 + 16);
  v5 = 0;
  v27 = _swiftEmptyArrayStorage;
  v24 = a3;
LABEL_2:
  v6 = (v4 + 56 * v5);
  v7 = v5 + 1;
  while (v7 + v20 != 1)
  {
    if ((v7 - 1) >= *(a1 + 16))
    {
      BUG();
    }

    v8 = *(v6 - 6);
    v9 = *(v6 - 5);
    v18 = *(v6 - 2);
    v19 = *(v6 - 1);
    v21 = *v6;
    v25 = v7;
    if (!(a2 ^ v8 | a3 ^ v9))
    {
      v8 = a2;
      v10 = *(v6 - 5);
LABEL_9:
      v23 = v10;

      v12 = v27;
      v26 = v27;
      if (!swift_isUniquelyReferenced_nonNull_native(v27))
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27[2] + 1, 1);
        v12 = v27;
      }

      v4 = a1 + 80;
      v5 = v25;
      v13 = v12[2];
      v14 = v13 + 1;
      a3 = v24;
      v15 = v23;
      if (v12[3] >> 1 <= v13)
      {
        v28 = v12[2];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12[3] >= 2uLL, v14, 1);
        v13 = v28;
        v15 = v23;
        v5 = v25;
        a3 = v24;
        v12 = v26;
      }

      v12[2] = v14;
      v16 = 7 * v13;
      v12[v16 + 4] = v8;
      v12[v16 + 5] = v15;
      *&v12[v16 + 6] = v18;
      *&v12[v16 + 8] = v19;
      v27 = v12;
      v12[v16 + 10] = v21;
      goto LABEL_2;
    }

    ++v7;
    v6 += 7;
    v10 = v9;
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)(v8, v9, a2, a3, 0);
    a3 = v24;
    if (v11)
    {
      goto LABEL_9;
    }
  }

  a3;
  a1;
  return v27;
}

void *static MLObjectDetector.evaluate(annotatedPredictionForLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v32 = a2;
  v5 = specialized _copySequenceToContiguousArray<A>(_:)(0.5, 1.0, 0.05);
  v33 = a1;
  v6 = *(v5 + 16);
  if (*(a1 + 16))
  {
    if (v6)
    {
      v35 = v4;
      v7 = _swiftEmptyArrayStorage;
      v8 = 0;
      v36 = v5;
      v34 = v6;
      do
      {
        if (v8 >= *(v5 + 16))
        {
          BUG();
        }

        *&v37[0] = v7;
        v38 = *(v5 + 8 * v8 + 32);
        v9 = v33;

        v10 = v32;

        v11 = v31;

        MLObjectDetector.PrecisionRecallCurve.init(annotatedPredictionForLabel:iouThreshold:)(v9, v10, v38, v12, v11);
        v13 = *(v30 + 16);
        if (v13)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = *&v37[0];
          do
          {
            v19 = *(v30 + 8 * v15 + 32);
            v20 = _mm_cmple_sd(v17, v19);
            v17 = _mm_or_pd(_mm_andn_pd(v20, v14), _mm_and_pd(v19, v20));
            ++v15;
            *&v16 = *&v16 + v17.f64[0];
            v14 = v17;
          }

          while (v13 != v15);
        }

        else
        {
          v16 = 0;
          v18 = *&v37[0];
        }

        *v37 = v16;
        v38 = *(v29[4] + 16);
        outlined release of MLObjectDetector.PrecisionRecallCurve(v29);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v18);
        v22 = v34;
        if (!isUniquelyReferenced_nonNull_native)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1, v18);
        }

        v23 = *(v18 + 16);
        v24 = v18;
        v25 = v37[0];
        if (*(v18 + 24) >> 1 <= v23)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v18 + 24) >= 2uLL, v23 + 1, 1, v18);
          v25 = v37[0];
          v24 = v27;
        }

        v5 = v36;
        ++v8;
        v26 = v25 / SLODWORD(v38);
        v24[2] = v23 + 1;
        v7 = v24;
        *&v24[v23 + 4] = v26;
      }

      while (v8 != v22);
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }

    return v7;
  }

  else
  {

    return _sSa9repeating5countSayxGx_SitcfCSd_Tt1g5(v6, 0.0);
  }
}

void *specialized thunk for @callee_guaranteed () -> (@owned [Double])()
{
  *result = _swiftEmptyArrayStorage;
  return result;
}

{
  return specialized thunk for @callee_guaranteed () -> (@owned [Double])();
}

double specialized Sequence<>.mean()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return NAN;
  }

  v2 = 0.0;
  for (i = 0; i != v1; ++i)
  {
    v2 = v2 + *(a1 + 8 * i + 32);
  }

  return v2 / v1;
}

uint64_t closure #2 in static MLObjectDetector.evaluation(on:detectedObjects:)(void *a1)
{
  v2 = v1;
  v15 = *(*a1 + 16);
  if (v15)
  {
    v14 = *a1;

    v3 = v14;
    for (i = 0; i != v15; ++i)
    {
      v5 = *(v3 + 8 * i + 32);
      if (v5 << 12 == 0 || (~v5 & 0x7FF0000000000000) != 0)
      {
        v13 = *(v3 + 8 * i + 32);
        if (!swift_isUniquelyReferenced_nonNull_native(_swiftEmptyArrayStorage))
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v6 = _swiftEmptyArrayStorage[2];
        v7 = v6 + 1;
        v3 = v14;
        if (_swiftEmptyArrayStorage[3] >> 1 <= v6)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v6 + 1, 1);
          v7 = v6 + 1;
          v5 = v13;
          v3 = v14;
        }

        _swiftEmptyArrayStorage[2] = v7;
        _swiftEmptyArrayStorage[v6 + 4] = v5;
      }
    }

    v3;
  }

  v8 = _swiftEmptyArrayStorage[2];
  if (v8)
  {
    v9 = 0.0;
    for (j = 0; j != v8; ++j)
    {
      v9 = v9 + *&_swiftEmptyArrayStorage[j + 4];
    }

    v12 = v9 / v8;
  }

  else
  {

    v12 = NAN;
  }

  *v2 = v12;
  return result;
}

uint64_t MLObjectDetectorMetrics.init(averagePrecision:meanAveragePrecision:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *result = a1;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 32) = 0;
  return result;
}

uint64_t static MLObjectDetector.extractMetrics(from:)(uint64_t a1, uint64_t a2, double a3)
{
  v5 = v3;
  v6 = *(a1 + 16);
  if (tc_v1_variant_is_parameters(v6))
  {
    result = specialized handling<A, B>(_:_:)(v6);
    if (!v4)
    {
      v8 = result;
      if (!result)
      {
        BUG();
      }

      v9 = type metadata accessor for CMLParameters();
      *(swift_initStackObject(v9, v63) + 16) = v8;
      v10 = CMLParameters.featureValue(for:)(59);
      specialized handling<A, B>(_:_:)(*(v10 + 16));
      v66 = a3;

      v13 = CMLParameters.featureValue(for:)(60);
      specialized handling<A, B>(_:_:)(*(v13 + 16));
      v67 = a3;

      v80 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Double, &protocol witness table for String);
      v14 = CMLParameters.featureValue(for:)(57);
      v15 = specialized handling<A, B>(_:_:)(*(v14 + 16));
      v81 = v15;
      if (!v15)
      {
        BUG();
      }

      v69 = type metadata accessor for CMLDictionary();
      inited = swift_initStackObject(v69, v64);
      *(inited + 16) = v81;
      v77 = inited;
      v17 = CMLDictionary.size.getter();
      v76 = v17;
      if (v17 < 0)
      {
        BUG();
      }

      if (v17)
      {
        v18 = 0;
        do
        {
          v79 = v18;
          v19 = CMLDictionary.keyAndValue(at:)(v18);
          v81 = v20;
          v21 = v19;
          v22 = CMLFeatureValue.stringValue()();
          if (v23)
          {
            v23;
          }

          else
          {
            v78 = v22;
            v72 = v21;
            specialized handling<A, B>(_:_:)(*(v81 + 16));
            v73 = v24;
            v25 = v80;
            LOBYTE(v70) = swift_isUniquelyReferenced_nonNull_native(v80);
            v80 = v25;
            v75 = v25;
            v71 = specialized __RawDictionaryStorage.find<A>(_:)(v78._countAndFlagsBits, v78._object);
            LOBYTE(v74) = v26;
            v27 = (v26 & 1) == 0;
            v28 = __OFADD__(*(v80 + 16), v27);
            v29 = *(v80 + 16) + v27;
            if (v28)
            {
              BUG();
            }

            __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Double>);
            if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v70, v29))
            {
              countAndFlagsBits = v78._countAndFlagsBits;
              object = v78._object;
              v31 = specialized __RawDictionaryStorage.find<A>(_:)(v78._countAndFlagsBits, v78._object);
              LOBYTE(v32) = v32 & 1;
              LOBYTE(countAndFlagsBits) = v74;
              v34 = countAndFlagsBits;
              LOBYTE(v34) = v74 & 1;
              if ((v74 & 1) != v32)
              {
LABEL_49:
                KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, object, v32, v34);
                BUG();
              }

              v35 = v78._object;
            }

            else
            {
              v35 = v78._object;
              v31 = v71;
              LOBYTE(countAndFlagsBits) = v74;
            }

            v36 = v75;
            v80 = v75;
            if (countAndFlagsBits)
            {
              *(*(v75 + 56) + 8 * v31) = v73;

              v35;
            }

            else
            {
              *(v75 + 8 * (v31 >> 6) + 64) |= 1 << v31;
              v37 = v36[6];
              v38 = 16 * v31;
              *(v37 + v38) = v78._countAndFlagsBits;
              *(v37 + v38 + 8) = v35;
              *(v36[7] + 8 * v31) = v73;
              v39 = v36[2];
              v28 = __OFADD__(1, v39);
              v40 = v39 + 1;
              if (v28)
              {
                BUG();
              }

              v36[2] = v40;
            }
          }

          v18 = v79 + 1;
        }

        while (v76 != (v79 + 1));
      }

      v81 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Double, &protocol witness table for String);
      v41 = CMLParameters.featureValue(for:)(58);
      v79 = specialized handling<A, B>(_:_:)(*(v41 + 16));
      if (!v79)
      {
        BUG();
      }

      v42 = swift_initStackObject(v69, v65);
      *(v42 + 16) = v79;
      v78._countAndFlagsBits = v42;
      v43 = CMLDictionary.size.getter();
      v72 = v43;
      if (v43 < 0)
      {
        BUG();
      }

      if (v43)
      {
        v44 = 0;
        do
        {
          v78._object = v44;
          v45 = CMLDictionary.keyAndValue(at:)(v44);
          v79 = v46;
          v47 = v45;
          v48 = CMLFeatureValue.stringValue()();
          if (v49)
          {
            v49;
          }

          else
          {
            v76 = v48._object;
            v73 = v48._countAndFlagsBits;
            v74 = v47;
            specialized handling<A, B>(_:_:)(*(v79 + 16));
            v70 = v50;
            v51 = v81;
            LOBYTE(v69) = swift_isUniquelyReferenced_nonNull_native(v81);
            v81 = v51;
            v75 = v51;
            v68 = specialized __RawDictionaryStorage.find<A>(_:)(v73, v76);
            LOBYTE(v71) = v52;
            v53 = (v52 & 1) == 0;
            v28 = __OFADD__(*(v81 + 16), v53);
            v54 = *(v81 + 16) + v53;
            if (v28)
            {
              BUG();
            }

            __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Double>);
            if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v69, v54))
            {
              v56 = v73;
              object = v76;
              v55 = specialized __RawDictionaryStorage.find<A>(_:)(v73, v76);
              LOBYTE(v32) = v32 & 1;
              LOBYTE(v56) = v71;
              v34 = v56;
              LOBYTE(v34) = v71 & 1;
              if ((v71 & 1) != v32)
              {
                goto LABEL_49;
              }

              v57 = v76;
            }

            else
            {
              v57 = v76;
              v55 = v68;
              LOBYTE(v56) = v71;
            }

            v58 = v75;
            v81 = v75;
            if (v56)
            {
              *(*(v75 + 56) + 8 * v55) = v70;

              v57;
            }

            else
            {
              *(v75 + 8 * (v55 >> 6) + 64) |= 1 << v55;
              v59 = v58[6];
              v60 = 16 * v55;
              *(v59 + v60) = v73;
              *(v59 + v60 + 8) = v57;
              *(v58[7] + 8 * v55) = v70;
              v61 = v58[2];
              v28 = __OFADD__(1, v61);
              v62 = v61 + 1;
              if (v28)
              {
                BUG();
              }

              v58[2] = v62;
            }
          }

          v44 = v78._object + 1;
        }

        while (v72 != v78._object + 1);
      }

      *v5 = v80;
      result = v81;
      *(v5 + 8) = v81;
      *(v5 + 16) = v66;
      *(v5 + 24) = v67;
      *(v5 + 32) = 0;
    }
  }

  else
  {
    v11 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    result = swift_allocError(&type metadata for MLCreateError, v11, 0, 0);
    *v12 = 0xD000000000000026;
    *(v12 + 8) = "mean_average_precision_50" + 0x8000000000000000;
    *(v12 + 16) = 0;
    *(v12 + 32) = 0;
    *(v12 + 48) = 0;
    *v5 = result;
    *(v5 + 8) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = 1;
  }

  return result;
}

CGPoint *MLObjectDetector.PrecisionRecallCurve.init(annotatedPredictionForLabel:iouThreshold:)(uint64_t a1, uint64_t a2, CGFloat a3, uint64_t a4, uint64_t a5)
{
  v63.width = a3;
  v7 = *&a1;
  v58 = v5;
  v52 = _swiftEmptyArrayStorage;
  v53 = _swiftEmptyArrayStorage;
  *&v54 = _swiftEmptyArrayStorage;
  v8 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
  *(&v54 + 1) = _swiftEmptyArrayStorage;
  *&rect.origin.x = a1;
  swift_bridgeObjectRetain_n(a1, 2);
  specialized MutableCollection<>.sort(by:)(&rect);
  *&v59.x = a5;
  *&v69.x = a2;
  a1;
  x = rect.origin.x;
  v10 = *(*&rect.origin.x + 16);
  if (v10)
  {
    v66.origin.x = v7;
    *&rect.origin.x = _swiftEmptyArrayStorage;
    v64.width = x;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = rect.origin.x;
    v12 = *(*&rect.origin.x + 16);
    v13 = 32 * v12 + 48;
    v14 = (*&x + 64);
    do
    {
      v15 = v12;
      v16 = *(v14 - 1);
      v17 = *v14;
      rect.origin.x = v11;
      v18 = *(*&v11 + 24);
      ++v12;
      if (v18 >> 1 <= v15)
      {
        v66.size = v16;
        v65 = v17;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18 >= 2, v12, 1);
        v11 = rect.origin.x;
      }

      *(*&v11 + 16) = v12;
      *(*&v11 + v13 - 16) = v16;
      *(*&v11 + v13) = v17;
      v13 += 32;
      v14 = (v14 + 56);
      --v10;
    }

    while (v10);
    v8 = v11;

    LOBYTE(v7) = LOBYTE(v66.origin.x);
  }

  else
  {
  }

  v50.x = v8;

  SLOBYTE(v7);
  v50.y = v69.x;
  SLOBYTE(v59.x);
  width = v63.width;
  v19 = MLObjectDetector.PrecisionRecallCurve.buildMatchingIndices(sampleBoxes:referenceBoxes:setPrediction:)(*&v8, *&v69.x, 1);
  SLOBYTE(v8);
  SLOBYTE(v69.x);
  v52;
  v52 = v19;
  v69 = v50;
  v20 = *&v50.y;
  v21 = *(*&v50.y + 16);

  v22 = _sSa9repeating5countSayxGx_SitcfCSiSg_Tt1g5(0, 1, v21);
  v55 = *(*&v50.y + 16);
  if (!v55)
  {
    SLOBYTE(v50.y);
    SLOBYTE(v50.x);
    goto LABEL_34;
  }

  v23 = *(*&v50.x + 16);
  v61 = width;
  v56 = *&v50.y + 32;

  v68 = v50.x;
  v57 = (*&v50.x + 48);
  v24 = 0;
  v62 = *&v50.y;
  do
  {
    if (v24 >= *(v20 + 16))
    {
      BUG();
    }

    if (v23)
    {
      v60 = v22;
      v67 = v24;
      v69 = *(v56 + 32 * v24);
      v63 = *(v56 + 32 * v24 + 16);

      v70 = 0.0;
      v25 = v57;
      v26 = 0;
      v27 = 0;
      do
      {
        v28 = v25[-1];
        v29 = *v25;
        rect.origin = v69;
        rect.size = v63;
        v59 = v28;
        v48.origin = v28;
        v64 = v29;
        v48.size = v29;
        r2.size = v29;
        r2.origin = v28;
        r1.size = v63;
        r1.origin = v69;
        CGRectIntersection(&v47, r1, r2);
        v66 = v47;
        rect = v47;
        v30 = 0;
        if (!CGRectIsNull(v47))
        {
          rect = v66;
          v65.f64[0] = CGRectGetWidth(v66);
          rect = v66;
          v31.f64[1] = v66.origin.y;
          v31.f64[0] = CGRectGetHeight(v66) * v65.f64[0];
          v30 = _mm_and_pd(v31, xmmword_33E3F0);
        }

        v66.origin = v30;
        rect.origin = v69;
        rect.size = v63;
        v32.height = v69.y;
        r1a.size = v63;
        r1a.origin = v69;
        v32.width = CGRectGetWidth(r1a);
        v66.size = v32;
        rect.origin = v69;
        rect.size = v63;
        v32.height = v69.y;
        r1b.size = v63;
        r1b.origin = v69;
        v32.width = CGRectGetHeight(r1b);
        v65 = v32;
        rect.origin = v59;
        rect.size = v64;
        v32.height = v59.y;
        r1c.size = v64;
        r1c.origin = v59;
        v32.width = CGRectGetWidth(r1c);
        v49 = v32;
        rect.origin = v59;
        rect.size = v64;
        v32.height = v59.y;
        r1d.size = v64;
        r1d.origin = v59;
        v32.width = CGRectGetHeight(r1d);
        v33 = _mm_and_pd(_mm_mul_pd(_mm_unpacklo_pd(v65, v32), _mm_unpacklo_pd(v66.size, v49)), xmmword_33E3F0);
        v34 = _mm_hadd_pd(v33, v33).f64[0] - v66.origin.x;
        if (v34 <= 0.0)
        {
          v35 = 0.0;
        }

        else
        {
          v35 = v66.origin.x / v34;
        }

        if (v35 > v70)
        {
          v70 = v35;
          v27 = v26;
        }

        ++v26;
        v25 += 2;
      }

      while (v23 != v26);
      SLOBYTE(v68);
      if (v70 <= v61)
      {
        v22 = v60;
        v20 = v62;
        v24 = v67;
        goto LABEL_30;
      }

      v22 = v60;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v60);
      v20 = v62;
      if (!isUniquelyReferenced_nonNull_native)
      {
LABEL_32:
        v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
      }
    }

    else
    {
      if (v61 >= 0.0)
      {
        goto LABEL_30;
      }

      v67 = v24;
      v27 = 0;
      if (!swift_isUniquelyReferenced_nonNull_native(v22))
      {
        goto LABEL_32;
      }

      v27 = 0;
    }

    v24 = v67;
    if (v67 >= v22[2])
    {
      BUG();
    }

    v37 = 2 * v67;
    v22[v37 + 4] = v27;
    LOBYTE(v22[v37 + 5]) = 0;
LABEL_30:
    ++v24;
  }

  while (v24 != v55);
  SLOBYTE(v68);
  swift_bridgeObjectRelease_n(v20, 2);
  v69 = v50;
  v19 = v52;
LABEL_34:
  v53;
  v38 = width;
  v39 = v54;
  result = v58;
  *v58 = v69;
  result[1].x = v38;
  *&result[1].y = v19;
  *&result[2].x = v22;
  *&result[2].y = v39;
  return result;
}

void *MLObjectDetector.PrecisionRecallCurve.buildMatchingIndices(sampleBoxes:referenceBoxes:setPrediction:)(uint64_t a1, uint64_t a2, int a3)
{
  v66 = v3;
  v60 = a3;
  v61 = a2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Int?);
  v6 = static Array._allocateBufferUninitialized(minimumCapacity:)(v4, v5);
  v6[2] = v4;
  v7 = v6 + 4;
  v8 = v4;
  do
  {
    *v7 = 0;
    *(v7 + 8) = 1;
    v7 += 2;
    --v8;
  }

  while (v8);
  v9 = *(v61 + 16);
  v62 = *(v66 + 2);
  v54 = a1 + 32;
  v56 = a1;

  v55 = (v61 + 48);
  v10 = 0;
  v63 = v4;
  do
  {
    v65 = v10;
    if (!v9)
    {
      if (v62 >= 0.0)
      {
        goto LABEL_41;
      }

      v13 = 0.0;
      if (swift_isUniquelyReferenced_nonNull_native(v6))
      {
        v13 = 0.0;
        goto LABEL_21;
      }

LABEL_43:
      v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
      goto LABEL_21;
    }

    v68 = v6;
    v67 = *(v54 + 32 * v10);
    v57 = *(v54 + 32 * v10 + 16);

    v64 = 0.0;
    v11 = v55;
    v12 = 0.0;
    v13 = 0.0;
    do
    {
      v14 = v11[-1];
      v15 = *v11;
      rect.origin = v67;
      rect.size = v57;
      v53.origin = v14;
      v51.origin = v14;
      v53.size = v15;
      v51.size = v15;
      r2.size = v15;
      r2.origin = v14;
      r1.size = v57;
      r1.origin = v67;
      CGRectIntersection(&v44, r1, r2);
      v59 = v44;
      rect = v44;
      v16 = 0;
      if (!CGRectIsNull(v44))
      {
        rect = v59;
        v58.width = CGRectGetWidth(v59);
        rect = v59;
        v17.f64[1] = v59.origin.y;
        v17.f64[0] = CGRectGetHeight(v59) * v58.width;
        v16 = _mm_and_pd(v17, xmmword_33E3F0);
      }

      v59.origin = v16;
      rect.origin = v67;
      rect.size = v57;
      v18.height = v67.y;
      r1a.size = v57;
      r1a.origin = v67;
      v18.width = CGRectGetWidth(r1a);
      v59.size = v18;
      rect.origin = v67;
      rect.size = v57;
      v18.height = v67.y;
      r1b.size = v57;
      r1b.origin = v67;
      v18.width = CGRectGetHeight(r1b);
      v58 = v18;
      rect = v53;
      v18.height = v53.origin.y;
      v18.width = CGRectGetWidth(v53);
      v52 = v18;
      rect = v53;
      v18.height = v53.origin.y;
      v18.width = CGRectGetHeight(v53);
      v19 = _mm_and_pd(_mm_mul_pd(_mm_unpacklo_pd(v58, v18), _mm_unpacklo_pd(v59.size, v52)), xmmword_33E3F0);
      v20 = _mm_hadd_pd(v19, v19).f64[0] - v59.origin.x;
      if (v20 <= 0.0)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = v59.origin.x / v20;
      }

      if (v21 > v64)
      {
        v64 = v21;
        v13 = v12;
      }

      ++*&v12;
      v11 += 2;
    }

    while (v9 != *&v12);
    v61;
    v4 = v63;
    if (v64 <= v62)
    {
      v6 = v68;
      v10 = v65;
      goto LABEL_41;
    }

    v6 = v68;
    if (!swift_isUniquelyReferenced_nonNull_native(v68))
    {
      goto LABEL_43;
    }

LABEL_21:
    v10 = v65;
    if (v65 >= v6[2])
    {
      BUG();
    }

    v22 = 2 * v65;
    *&v6[v22 + 4] = v13;
    LOBYTE(v6[v22 + 5]) = 0;
    if (v60)
    {
      v68 = v6;
      v23 = *(v66 + 5);
      v24 = *(v23 + 2);
      if (!v24)
      {
        goto LABEL_30;
      }

      if (*(v23 + 4) != *&v13)
      {
        if (v24 != 1)
        {
          v25 = 5;
          do
          {
            v26 = v25 - 4 + 1;
            if (__OFADD__(1, v25 - 4))
            {
              BUG();
            }

            if (*&v23[v25] == *&v13)
            {
              goto LABEL_39;
            }

            ++v25;
          }

          while (v26 != v24);
        }

LABEL_30:
        if (!swift_isUniquelyReferenced_nonNull_native(*(v66 + 5)))
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24 + 1, 1, v23);
        }

        v27 = *(v23 + 2);
        v28 = *(v23 + 3);
        *&x = v27 + 1;
        if (v28 >> 1 <= v27)
        {
          *&v67.x = v27 + 1;
          v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28 >= 2, v27 + 1, 1, v23);
          x = v67.x;
          v23 = v37;
        }

        v23[2] = x;
        v23[v27 + 4] = v13;
        v30 = v66;
        *(v66 + 5) = v23;
        v67.x = v30[3];
        v31 = v68;

        SLOBYTE(v67.x);
        *(v30 + 3) = v31;
        v32 = *(v30 + 4);
        v33 = *(v30 + 6);
        v45 = *v30;
        v46 = v62;
        v47 = v31;
        v48 = v32;
        v49 = v23;
        v34 = v33;
        v50 = v33;
        v67.x = MLObjectDetector.PrecisionRecallCurve.precision.getter();
        if (swift_isUniquelyReferenced_nonNull_native(v34))
        {
          v4 = v63;
          v35 = v34;
        }

        else
        {
          v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34[2] + 1, 1, v34);
          v4 = v63;
        }

        v36 = v35[2];
        v10 = v65;
        if (v35[3] >> 1 <= v36)
        {
          v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35[3] >= 2uLL, v36 + 1, 1, v35);
          v10 = v65;
          v35 = v38;
        }

        v35[2] = v36 + 1;
        v35[v36 + 4] = *&v67.x;
        *(v66 + 6) = v35;
      }

LABEL_39:
      v6 = v68;
    }

LABEL_41:
    ++v10;
  }

  while (v10 != v4);
  v56;
  return v6;
}

double MLObjectDetector.PrecisionRecallCurve.precision.getter()
{
  v1 = *(v0 + 24);
  v7 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = (v1 + 40);
    v4 = _swiftEmptyArrayStorage;
    v8 = v2;
    do
    {
      if (!*v3)
      {
        v9 = *(v3 - 1);
        if (!swift_isUniquelyReferenced_nonNull_native(v4))
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
        }

        v5 = v4[2];
        if (v4[3] >> 1 <= v5)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v4[3] >= 2uLL, v5 + 1, 1, v4);
        }

        v4[2] = v5 + 1;
        *&v4[v5 + 4] = v9;
      }

      v3 += 2;
      --v2;
    }

    while (v2);
    outlined release of [Int?](&v7);
    LODWORD(v2) = v8;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v9 = v4[2];
  v4;
  return v9 / v2;
}

uint64_t MLObjectDetectorMetrics.averagePrecision.getter()
{
  if (*(v0 + 32))
  {
    v1 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Double, &protocol witness table for String);
    Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Double, &protocol witness table for String);
  }

  else
  {
    v1 = *v0;
  }

  return v1;
}

uint64_t MLObjectDetectorMetrics.error.getter()
{
  if (*(v0 + 32) != 1)
  {
    return 0;
  }

  v1 = *v0;
  swift_errorRetain(*v0);
  return v1;
}

unint64_t MLObjectDetectorMetrics.description.getter()
{
  v1 = *v0;
  if (*(v0 + 32))
  {
    v57 = 0;
    v58 = 0xE000000000000000;
    v69._countAndFlagsBits = v1;
    v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    _print_unlocked<A, B>(_:_:)(&v69, &v57, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    return v57;
  }

  v67 = *(v0 + 8);
  v60 = *(v0 + 16);
  v61 = *(v0 + 24);
  v64 = v60;
  v65 = v61;
  v57 = 0xD000000000000023;
  v58 = "Empty ArraySlice" + 0x8000000000000000;
  v69._countAndFlagsBits = 0;
  v69._object = 0xE000000000000000;
  _StringGuts.grow(_:)(73);
  v4._object = "------------------\n" + 0x8000000000000000;
  v4._countAndFlagsBits = 0xD000000000000045;
  String.append(_:)(v4);
  v59 = v1;
  Double.write<A>(to:)(&v69, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v4._countAndFlagsBits = 2592;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  object = v69._object;
  String.append(_:)(v69);
  object;
  v69._countAndFlagsBits = 0;
  v69._object = 0xE000000000000000;
  _StringGuts.grow(_:)(75);
  v4._object = "er-Union Thresholds: " + 0x8000000000000000;
  v4._countAndFlagsBits = 0xD000000000000047;
  String.append(_:)(v4);
  v6 = v59;
  Double.write<A>(to:)(&v69, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v4._countAndFlagsBits = 2592;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  v7 = v69._object;
  String.append(_:)(v69);
  v7;
  v8 = 0;
  outlined copy of Result<MLObjectDetector.Metrics, Error>(v59, v67, v60, v61, 0);
  v67;
  v9 = 1 << *(v59 + 32);
  v10 = ~(-1 << v9);
  if (v9 >= 64)
  {
    v10 = -1;
  }

  v11 = *(v59 + 64) & v10;
  v66 = (v9 + 63) >> 6;
  v68 = "nion Threshold of 50%: " + 0x8000000000000000;
  while (1)
  {
    if (v11)
    {
LABEL_7:
      v12 = v8;
      goto LABEL_22;
    }

    v13 = (v8 + 1);
    if (__OFADD__(1, v8))
    {
      BUG();
    }

    if (v13 >= v66)
    {
      goto LABEL_31;
    }

    v11 = v6[v13 + 8];
    if (v11)
    {
      v12 = v8 + 1;
      goto LABEL_22;
    }

    v12 = v8 + 2;
    if ((v8 + 2) >= v66)
    {
      goto LABEL_31;
    }

    v11 = v6[v13 + 9];
    if (!v11)
    {
      v12 = v8 + 3;
      if ((v8 + 3) >= v66)
      {
        goto LABEL_31;
      }

      v11 = v6[v13 + 10];
      if (!v11)
      {
        v12 = v8 + 4;
        if ((v8 + 4) >= v66)
        {
          goto LABEL_31;
        }

        v11 = v6[v13 + 11];
        if (!v11)
        {
          v12 = v8 + 5;
          if ((v8 + 5) >= v66)
          {
            goto LABEL_31;
          }

          v11 = v6[v13 + 12];
          if (!v11)
          {
            v12 = v8 + 6;
            if ((v8 + 6) >= v66)
            {
              goto LABEL_31;
            }

            v11 = v6[v13 + 13];
            if (!v11)
            {
              break;
            }
          }
        }
      }
    }

LABEL_22:
    v65 = v11;
    _BitScanForward64(&v14, v11);
    v15 = v6[6];
    v64 = v12;
    v16 = (v12 << 10) | (16 * v14);
    v17 = *(v15 + v16);
    v18 = *(v15 + v16 + 8);
    v69._countAndFlagsBits = 0;
    v69._object = 0xE000000000000000;

    _StringGuts.grow(_:)(76);
    v19._countAndFlagsBits = 0xD000000000000043;
    v19._object = v68;
    String.append(_:)(v19);
    v19._countAndFlagsBits = v17;
    v19._object = v18;
    String.append(_:)(v19);
    v19._countAndFlagsBits = 2112032;
    v19._object = 0xE300000000000000;
    String.append(_:)(v19);
    v20 = v67;
    outlined copy of Result<MLObjectDetector.Metrics, Error>(v6, v67, v60, v61, 0);
    v20;
    v21 = 1;
    if (v6[2] && (v22 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18), (v23 & 1) != 0))
    {
      v24 = *(v6[7] + 8 * v22);
      v21 = 0;
    }

    else
    {
      v24 = 0;
    }

    v25 = v18;
    v26 = (v65 - 1) & v65;
    v25;
    v6 = v59;
    v59;
    v62 = v24;
    v63 = v21;
    v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Double?);
    v28._countAndFlagsBits = String.init<A>(describing:)(&v62, v27);
    v29 = v28._object;
    String.append(_:)(v28);
    v29;
    v30._countAndFlagsBits = 2592;
    v30._object = 0xE200000000000000;
    String.append(_:)(v30);
    v31 = v69._object;
    String.append(_:)(v69);
    v31;
    v11 = v26;
    v8 = v64;
  }

  v32 = (v8 + 7);
  while (v32 < v66)
  {
    v11 = v6[v32++ + 8];
    if (v11)
    {
      v8 = (v32 - 1);
      goto LABEL_7;
    }
  }

LABEL_31:

  v33 = 0;
  v34 = v67;
  outlined copy of Result<MLObjectDetector.Metrics, Error>(v6, v67, v60, v61, 0);
  v6;
  v35 = 1 << *(v34 + 32);
  v36 = ~(-1 << v35);
  if (v35 >= 64)
  {
    v36 = -1;
  }

  v37 = *(v34 + 64) & v36;
  v68 = ((v35 + 63) >> 6);
  v64 = "ion Thresholds for " + 0x8000000000000000;
  while (2)
  {
    if (v37)
    {
LABEL_35:
      v38 = v33;
      goto LABEL_50;
    }

    v39 = v33 + 1;
    if (__OFADD__(1, v33))
    {
      BUG();
    }

    if (v39 >= v68)
    {
      goto LABEL_59;
    }

    v37 = *(v67 + 8 * v39 + 64);
    if (v37)
    {
      v38 = v33 + 1;
LABEL_50:
      _BitScanForward64(&v40, v37);
      v41 = *(v67 + 48);
      v65 = v38;
      v42 = (v38 << 10) | (16 * v40);
      v43 = *(v41 + v42);
      v44 = *(v41 + v42 + 8);
      v69._countAndFlagsBits = 0;
      v69._object = 0xE000000000000000;

      _StringGuts.grow(_:)(78);
      v45._countAndFlagsBits = 0xD000000000000045;
      v45._object = v64;
      String.append(_:)(v45);
      v45._countAndFlagsBits = v43;
      v45._object = v44;
      String.append(_:)(v45);
      v45._countAndFlagsBits = 2112032;
      v45._object = 0xE300000000000000;
      String.append(_:)(v45);
      outlined copy of Result<MLObjectDetector.Metrics, Error>(v6, v67, v60, v61, 0);
      v6;
      v46 = v67;
      v47 = 1;
      if (*(v67 + 16) && (v48 = specialized __RawDictionaryStorage.find<A>(_:)(v43, v44), (v49 & 1) != 0))
      {
        v50 = *(*(v46 + 56) + 8 * v48);
        v47 = 0;
      }

      else
      {
        v50 = 0;
      }

      v37 &= v37 - 1;
      v44;
      v67;
      v62 = v50;
      v63 = v47;
      v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Double?);
      v52._countAndFlagsBits = String.init<A>(describing:)(&v62, v51);
      v53 = v52._object;
      String.append(_:)(v52);
      v53;
      v54._countAndFlagsBits = 2592;
      v54._object = 0xE200000000000000;
      String.append(_:)(v54);
      v55 = v69._object;
      String.append(_:)(v69);
      v55;
      v33 = v65;
      v6 = v59;
      continue;
    }

    break;
  }

  v38 = v33 + 2;
  if (v33 + 2 >= v68)
  {
    goto LABEL_59;
  }

  v37 = *(v67 + 8 * v39 + 72);
  if (v37)
  {
    goto LABEL_50;
  }

  v38 = v33 + 3;
  if (v33 + 3 >= v68)
  {
    goto LABEL_59;
  }

  v37 = *(v67 + 8 * v39 + 80);
  if (v37)
  {
    goto LABEL_50;
  }

  v38 = v33 + 4;
  if (v33 + 4 >= v68)
  {
    goto LABEL_59;
  }

  v37 = *(v67 + 8 * v39 + 88);
  if (v37)
  {
    goto LABEL_50;
  }

  v38 = v33 + 5;
  if (v33 + 5 >= v68)
  {
    goto LABEL_59;
  }

  v37 = *(v67 + 8 * v39 + 96);
  if (v37)
  {
    goto LABEL_50;
  }

  v38 = v33 + 6;
  if (v33 + 6 >= v68)
  {
    goto LABEL_59;
  }

  v37 = *(v67 + 8 * v39 + 104);
  if (v37)
  {
    goto LABEL_50;
  }

  v56 = v33 + 7;
  while (v56 < v68)
  {
    v37 = *(v67 + 8 * v56++ + 64);
    if (v37)
    {
      v33 = v56 - 1;
      goto LABEL_35;
    }
  }

LABEL_59:

  return v57;
}

unint64_t MLObjectDetectorMetrics.debugDescription.getter(double a1)
{
  v2 = *v1;
  if (*(v1 + 32))
  {
    v9[0] = 0;
    v9[1] = 0xE000000000000000;
    v11 = v2;
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    _print_unlocked<A, B>(_:_:)(&v11, v9, v3, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    return v9[0];
  }

  else
  {
    v5 = *(v1 + 24);
    v6 = *(v1 + 8);
    v7 = *(v1 + 16);
    outlined copy of Result<MLObjectDetector.Metrics, Error>(*v1, v6, v7, v5, 0);
    v6;
    v2;
    v9[0] = v2;
    v9[1] = v6;
    v9[2] = v7;
    v9[3] = v5;
    LOBYTE(v10) = 0;
    outlined copy of Result<MLObjectDetector.Metrics, Error>(v2, v6, v7, v5, 0);
    v4 = MLObjectDetectorMetrics.description.getter();
    outlined consume of Result<MLObjectDetector.Metrics, Error>(v2, v6, v7, v5, 0);
  }

  return v4;
}

unint64_t MLObjectDetectorMetrics.playgroundDescription.getter(double a1)
{
  v23 = v1;
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  if (*(v2 + 32))
  {
    v17 = 0;
    v18 = 0xE000000000000000;
    v22 = v3;
    outlined copy of Result<MLObjectDetector.Metrics, Error>(v3, v4, v5, v6, 1);
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    _print_unlocked<A, B>(_:_:)(&v22, &v17, v7, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v24 = v17;
    v8 = v18;
    v9 = v3;
    v10 = v4;
    v11 = v5;
    v12 = v6;
    v13 = 1;
  }

  else
  {
    outlined copy of Result<MLObjectDetector.Metrics, Error>(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), 0);
    v4;
    v3;
    v17 = v3;
    v18 = v4;
    v19 = v5;
    v20 = v6;
    v21 = 0;
    outlined copy of Result<MLObjectDetector.Metrics, Error>(v3, v4, v5, v6, 0);
    v24 = MLObjectDetectorMetrics.description.getter();
    v8 = v14;
    v9 = v3;
    v10 = v4;
    v11 = v5;
    v12 = v6;
    v13 = 0;
  }

  outlined consume of Result<MLObjectDetector.Metrics, Error>(v9, v10, v11, v12, v13);
  v15 = v23;
  v23[3] = &type metadata for String;
  result = v24;
  *v15 = v24;
  v15[1] = v8;
  return result;
}

uint64_t _Model.hasObjectDetectorValidationMetrics.getter(double a1)
{
  v4 = "Threshold of 50% for " + 0x8000000000000000;
  v1 = _Model.attributes.getter(a1);
  v2 = v1;
  specialized Dictionary.subscript.getter(0xD00000000000001CLL, ("Threshold of 50% for " + 0x8000000000000000), v1);
  v2;
  v3 = v15;
  outlined destroy of Any?(v14);
  LOBYTE(v4) = 1;
  if (!v3)
  {
    v5 = _Model.attributes.getter(a1);
    v6 = v5;
    specialized Dictionary.subscript.getter(0xD00000000000001FLL, ("validation_average_precision" + 0x8000000000000000), v5);
    v6;
    v7 = v15;
    outlined destroy of Any?(v14);
    if (!v7)
    {
      v8 = _Model.attributes.getter(a1);
      v9 = v8;
      specialized Dictionary.subscript.getter(0xD000000000000021, ("validation_average_precision_50" + 0x8000000000000000), v8);
      v9;
      v10 = v15;
      outlined destroy of Any?(v14);
      if (!v10)
      {
        v4 = "average_precision" + 0x8000000000000000;
        v11 = _Model.attributes.getter(a1);
        v12 = v11;
        specialized Dictionary.subscript.getter(0xD000000000000024, ("average_precision" + 0x8000000000000000), v11);
        v12;
        LOBYTE(v4) = v15 != 0;
        outlined destroy of Any?(v14);
      }
    }
  }

  return v4;
}

uint64_t _Model.makeDetectorMetrics(onTraining:)(char a1, double a2)
{
  v31 = v3;
  v24 = v2;
  v4 = 0x69746164696C6176;
  if (a1)
  {
    v4 = 0x676E696E69617274;
  }

  v5 = 0xEB000000005F6E6FLL;
  if (a1)
  {
    v5 = 0xE90000000000005FLL;
  }

  v29[0] = v4;
  v6 = v4;

  v7._countAndFlagsBits = 0xD000000000000011;
  v7._object = "average_precision_50" + 0x8000000000000000;
  String.append(_:)(v7);
  v28 = v29[0];
  v27 = v5;
  v34 = v6;

  v7._countAndFlagsBits = 0xD000000000000014;
  v7._object = "average_precision" + 0x8000000000000000;
  String.append(_:)(v7);
  v26 = v6;
  v25 = v5;

  v7._countAndFlagsBits = 0xD000000000000016;
  v7._object = "average_precision_50" + 0x8000000000000000;
  String.append(_:)(v7);
  v33 = v6;
  v29[0] = v6;
  v29[1] = v5;

  v7._countAndFlagsBits = 0xD000000000000019;
  v7._object = "mean_average_precision" + 0x8000000000000000;
  String.append(_:)(v7);
  v5;
  v8 = v6;
  v9 = _Model.attributes.getter(a2);
  LOBYTE(v6) = v9;
  specialized Dictionary.subscript.getter(v33, v5, v9);
  v5;
  v6;
  if (v30)
  {
    if (swift_dynamicCast(&v35, v29, &type metadata for Any + 8, &type metadata for MLDataValue, 6))
    {
      if (v37 == 1)
      {
        v34 = v35;
        goto LABEL_12;
      }

      outlined consume of MLDataValue(v35, v36, v37);
    }
  }

  else
  {
    outlined destroy of Any?(v29);
  }

  v34 = 0;
LABEL_12:
  v10 = _Model.attributes.getter(a2);
  v11 = v10;
  specialized Dictionary.subscript.getter(v8, v5, v10);
  v5;
  v11;
  if (v30)
  {
    if (swift_dynamicCast(&v35, v29, &type metadata for Any + 8, &type metadata for MLDataValue, 6))
    {
      if (v37 == 1)
      {
        v32 = v35;
        goto LABEL_19;
      }

      outlined consume of MLDataValue(v35, v36, v37);
    }
  }

  else
  {
    outlined destroy of Any?(v29);
  }

  v32 = 0;
LABEL_19:
  v33 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Double, &protocol witness table for String);
  v12 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Double, &protocol witness table for String);
  v13 = _Model.attributes.getter(a2);
  v14 = v13;
  specialized Dictionary.subscript.getter(v28, v27, v13);
  v27;
  v14;
  if (v30)
  {
    if (swift_dynamicCast(&v35, v29, &type metadata for Any + 8, &type metadata for MLDataValue, 6))
    {
      v15 = v35;
      v16 = v36;
      if (v37 == 4)
      {
        v33;
        ML11MLDataValueOAHG_SS_Sdts5NeverOTg503_s8d4ML11fg38OACSSSdIgnnod_AC3key_AC5valuetSS_Sdts5H117OIegnrzr_TR03_s8a74ML6_ModelC19makeDetectorMetrics10onTrainingAA08MLObjecteF0VSb_tFSS_SdtAA11cD10O_AItXEfU_Tf3nnnpf_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy8CreateML11MLDataValueOAHG_SS_Sdts5NeverOTg503_s8d4ML11fg38OACSSSdIgnnod_AC3key_AC5valuetSS_Sdts5H117OIegnrzr_TR03_s8a74ML6_ModelC19makeDetectorMetrics10onTrainingAA08MLObjecteF0VSb_tFSS_SdtAA11cD10O_AItXEfU_Tf3nnnpf_nTf1cn_nTm(v15);
        outlined consume of MLDataValue(v15, v16, 4);
        v33 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SdSaySS_SdtGTt0g5(ML11MLDataValueOAHG_SS_Sdts5NeverOTg503_s8d4ML11fg38OACSSSdIgnnod_AC3key_AC5valuetSS_Sdts5H117OIegnrzr_TR03_s8a74ML6_ModelC19makeDetectorMetrics10onTrainingAA08MLObjecteF0VSb_tFSS_SdtAA11cD10O_AItXEfU_Tf3nnnpf_nTf1cn_nTm);
      }

      else
      {
        outlined consume of MLDataValue(v35, v36, v37);
      }
    }
  }

  else
  {
    outlined destroy of Any?(v29);
  }

  v18 = _Model.attributes.getter(a2);
  v19 = v18;
  specialized Dictionary.subscript.getter(v26, v25, v18);
  v25;
  v19;
  if (v30)
  {
    if (swift_dynamicCast(&v35, v29, &type metadata for Any + 8, &type metadata for MLDataValue, 6))
    {
      v20 = v35;
      v21 = v36;
      if (v37 == 4)
      {
        v12;
        v22 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy8CreateML11MLDataValueOAHG_SS_Sdts5NeverOTg503_s8d4ML11fg38OACSSSdIgnnod_AC3key_AC5valuetSS_Sdts5H117OIegnrzr_TR03_s8a74ML6_ModelC19makeDetectorMetrics10onTrainingAA08MLObjecteF0VSb_tFSS_SdtAA11cD10O_AItXEfU_Tf3nnnpf_nTf1cn_nTm(v20);
        outlined consume of MLDataValue(v20, v21, 4);
        v12 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SdSaySS_SdtGTt0g5(v22);
      }

      else
      {
        outlined consume of MLDataValue(v35, v36, v37);
      }
    }
  }

  else
  {
    outlined destroy of Any?(v29);
  }

  result = v24;
  *v24 = v33;
  *(v24 + 8) = v12;
  *(v24 + 16) = v34;
  *(v24 + 24) = v32;
  *(v24 + 32) = 0;
  return result;
}

uint64_t outlined copy of Result<MLObjectDetector.Metrics, Error>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    return swift_errorRetain(a1);
  }
}

uint64_t outlined consume of Result<MLObjectDetector.Metrics, Error>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    return a1;
  }

  a1;
  return a2;
}

uint64_t initializeWithCopy for MLObjectDetectorMetrics(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of Result<MLObjectDetector.Metrics, Error>(*a2, v3, v4, v5, v7);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t assignWithCopy for MLObjectDetectorMetrics(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v13 = *(a2 + 32);
  outlined copy of Result<MLObjectDetector.Metrics, Error>(*a2, v4, v5, v6, v13);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v11 = *(a1 + 32);
  *(a1 + 32) = v13;
  outlined consume of Result<MLObjectDetector.Metrics, Error>(v7, v8, v9, v10, v11);
  return a1;
}

uint64_t __swift_memcpy33_8(uint64_t a1, __int128 *a2)
{
  result = a1;
  *(a1 + 32) = *(a2 + 32);
  v3 = *a2;
  *(a1 + 16) = a2[1];
  *a1 = v3;
  return result;
}

uint64_t assignWithTake for MLObjectDetectorMetrics(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v8 = *(a1 + 32);
  *(a1 + 32) = v3;
  outlined consume of Result<MLObjectDetector.Metrics, Error>(v4, v5, v6, v7, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLObjectDetectorMetrics(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v2 = -1;
      if (*(a1 + 32) >= 2u)
      {
        v2 = *(a1 + 32) ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLObjectDetectorMetrics(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 - 255;
    *(a1 + 32) = 0;
    if (a3 >= 0xFF)
    {
      *(a1 + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(a1 + 33) = 0;
    }

    if (a2)
    {
      *(a1 + 32) = -a2;
    }
  }
}

uint64_t initializeWithCopy for MLObjectDetector.Metrics(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = a2[1];
  *(a1 + 16) = *(a2 + 1);

  return a1;
}

uint64_t *assignWithCopy for MLObjectDetector.Metrics(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = *a2;

  v2;
  v3 = a1[1];
  a1[1] = a2[1];

  v3;
  a1[2] = a2[2];
  a1[3] = a2[3];
  return a1;
}

uint64_t assignWithTake for MLObjectDetector.Metrics(uint64_t a1, _OWORD *a2)
{
  *a1;
  v3 = *(a1 + 8);
  *a1 = *a2;
  v3;
  *(a1 + 16) = a2[1];
  return a1;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

char specialized _merge<A>(low:mid:high:buffer:by:)(double *__src, double *a2, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a3 - v6);
  v10 = (a3 - v6) / 56;
  if (v8 / 56 >= v10)
  {
    v24 = (a3 - v6) / 56;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v6, v10, a4);
    v11 = &v4[7 * v24];
    if (v9 < 56 || v7 >= v6)
    {
      goto LABEL_19;
    }

    while (1)
    {
      v17 = v5 - 7;
      if (*(v11 - 1) <= *(v6 - 1))
      {
        break;
      }

      v18 = v6 - 7;
      v13 = v5 == v6;
      v6 -= 7;
      if (!v13)
      {
        goto LABEL_16;
      }

LABEL_17:
      if (v6 > v7)
      {
        v5 -= 7;
        if (v11 > v4)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    v18 = v11 - 7;
    v13 = v5 == v11;
    v11 -= 7;
    if (v13)
    {
      goto LABEL_17;
    }

LABEL_16:
    v19 = *v18;
    v20 = *(v18 + 1);
    v21 = *(v18 + 2);
    v17[6] = v18[6];
    *(v17 + 2) = v21;
    *(v17 + 1) = v20;
    *v17 = v19;
    goto LABEL_17;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v7, v8 / 56, a4);
  v11 = &v4[7 * (v8 / 56)];
  if (v8 >= 56 && v6 < v5)
  {
    while (v6[6] > v4[6])
    {
      v12 = v6;
      v13 = v7 == v6;
      v6 += 7;
      if (!v13)
      {
        goto LABEL_7;
      }

LABEL_8:
      v7 += 7;
      if (v4 >= v11 || v6 >= v5)
      {
        goto LABEL_10;
      }
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 7;
    if (v13)
    {
      goto LABEL_8;
    }

LABEL_7:
    v14 = *v12;
    v15 = *(v12 + 1);
    v16 = *(v12 + 2);
    v7[6] = v12[6];
    *(v7 + 2) = v16;
    *(v7 + 1) = v15;
    *v7 = v14;
    goto LABEL_8;
  }

LABEL_10:
  v6 = v7;
LABEL_19:
  v22 = 7 * ((v11 - v4) / 56);
  if (v6 != v4 || v6 >= &v4[v22])
  {
    memmove(v6, v4, v22 * 8);
  }

  return 1;
}

{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
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

    while (*(v5 - 1) > *(v11 - 1))
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
    while (v10[1] > v5[1])
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

void *specialized _NativeDictionary.mapValues<A>(_:)(uint64_t a1)
{
  v30 = v1;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, Double>);
  v3 = static _DictionaryStorage.copy(original:)(a1);
  v4 = 1 << *(a1 + 32);
  v5 = ~(-1 << v4);
  if (v4 >= 64)
  {
    v5 = -1;
  }

  v6 = v3;
  v32 = a1;
  v7 = *(a1 + 64) & v5;
  v31 = (v4 + 63) >> 6;
  v8 = 0;
  v29 = v3;
  while (1)
  {
    if (v7)
    {
      _BitScanForward64(&v9, v7);
      v28 = (v7 - 1) & v7;
      v27 = v8;
      v10 = v9 | (v8 << 6);
      goto LABEL_17;
    }

    v11 = v8 + 1;
    if (__OFADD__(1, v8))
    {
      BUG();
    }

    if (v11 >= v31)
    {
      return v6;
    }

    v12 = *(v32 + 8 * v11 + 64);
    if (!v12)
    {
      break;
    }

LABEL_16:
    _BitScanForward64(&v14, v12);
    v28 = v12 & (v12 - 1);
    v10 = v14 | (v11 << 6);
    v27 = v11;
LABEL_17:
    v15 = *(v32 + 48);
    v24[0] = *(*(v32 + 56) + 8 * v10);
    v16 = v24[0];
    v25 = *(v15 + 16 * v10);
    v17 = *(v15 + 16 * v10 + 8);

    v26 = v17;

    v18 = v30;
    closure #2 in static MLObjectDetector.evaluation(on:detectedObjects:)(v24);
    v16;
    v30 = v18;
    if (v18)
    {
      v26;
      v6 = v29;

      return v6;
    }

    v6 = v29;
    v29[(v10 >> 6) + 8] |= 1 << v10;
    v19 = v6[6];
    *(v19 + 16 * v10) = v25;
    *(v19 + 16 * v10 + 8) = v26;
    *(v6[7] + 8 * v10) = v24[1];
    v20 = v6[2];
    v21 = __OFADD__(1, v20);
    v22 = v20 + 1;
    if (v21)
    {
      BUG();
    }

    v6[2] = v22;
    v8 = v27;
    v7 = v28;
  }

  v13 = v8 + 2;
  if (v8 + 2 >= v31)
  {
    return v6;
  }

  v12 = *(v32 + 8 * v11 + 72);
  if (v12)
  {
    goto LABEL_15;
  }

  v13 = v8 + 3;
  if (v8 + 3 >= v31)
  {
    return v6;
  }

  v12 = *(v32 + 8 * v11 + 80);
  if (v12)
  {
    goto LABEL_15;
  }

  v13 = v8 + 4;
  if (v8 + 4 >= v31)
  {
    return v6;
  }

  v12 = *(v32 + 8 * v11 + 88);
  if (v12)
  {
LABEL_15:
    v11 = v13;
    goto LABEL_16;
  }

  while (v8 + 5 < v31)
  {
    v12 = *(v32 + 8 * v8++ + 104);
    if (v12)
    {
      v11 = v8 + 4;
      goto LABEL_16;
    }
  }

  return v6;
}

{
  v2 = 0;
  v27 = type metadata accessor for URL(0);
  v30 = *(v27 - 8);
  v3 = *(v30 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v28 = &v25;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<MLProgress.Metric, Any>);
  v6 = static _DictionaryStorage.copy(original:)(a1);
  v7 = 1 << *(a1 + 32);
  v8 = ~(-1 << v7);
  if (v7 >= 64)
  {
    v8 = -1;
  }

  v35 = a1;
  v9 = *(a1 + 64) & v8;
  v10 = v6;
  v34 = (v7 + 63) >> 6;
  v29 = v6;
  v11 = v28;
  while (1)
  {
    if (v9)
    {
      _BitScanForward64(&v12, v9);
      v32 = (v9 - 1) & v9;
      v31 = v2;
      v13 = v12 | (v2 << 6);
      goto LABEL_20;
    }

    v14 = v2 + 1;
    if (__OFADD__(1, v2))
    {
      BUG();
    }

    if (v14 >= v34)
    {
      return v10;
    }

    v15 = *(v35 + 8 * v14 + 64);
    if (!v15)
    {
      break;
    }

    v16 = v2 + 1;
LABEL_19:
    _BitScanForward64(&v17, v15);
    v32 = v15 & (v15 - 1);
    v13 = v17 | (v16 << 6);
    v31 = v16;
LABEL_20:
    v33 = *(v35 + 48);
    v18 = *(v30 + 16);
    v19 = v27;
    v18(v11, *(v35 + 56) + v13 * *(v30 + 72), v27);
    LOBYTE(v33) = *(v33 + v13);
    v26 = v19;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v25);
    v18(boxed_opaque_existential_0, v11, v19);
    (*(v30 + 8))(v11, v19);
    v10 = v29;
    v29[(v13 >> 6) + 8] |= 1 << v13;
    *(v10[6] + v13) = v33;
    outlined init with take of Any(&v25, (v10[7] + 32 * v13));
    v21 = v10[2];
    v22 = __OFADD__(1, v21);
    v23 = v21 + 1;
    if (v22)
    {
      BUG();
    }

    v10[2] = v23;
    v2 = v31;
    v9 = v32;
  }

  v16 = v2 + 2;
  if (v2 + 2 >= v34)
  {
    return v10;
  }

  v15 = *(v35 + 8 * v14 + 72);
  if (v15)
  {
    goto LABEL_19;
  }

  v16 = v2 + 3;
  if (v2 + 3 >= v34)
  {
    return v10;
  }

  v15 = *(v35 + 8 * v14 + 80);
  if (v15)
  {
    goto LABEL_19;
  }

  v16 = v2 + 4;
  if (v2 + 4 >= v34)
  {
    return v10;
  }

  v15 = *(v35 + 8 * v14 + 88);
  if (v15)
  {
    goto LABEL_19;
  }

  while (v2 + 5 < v34)
  {
    v15 = *(v35 + 8 * v2++ + 104);
    if (v15)
    {
      v16 = v2 + 4;
      goto LABEL_19;
    }
  }

  return v10;
}

{
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<MLProgress.Metric, Any>);
  v1 = static _DictionaryStorage.copy(original:)(a1);
  v2 = 1 << *(a1 + 32);
  v3 = ~(-1 << v2);
  if (v2 >= 64)
  {
    v3 = -1;
  }

  v4 = v1;
  v5 = *(a1 + 64) & v3;
  v21 = (v2 + 63) >> 6;
  v6 = 0;
  while (1)
  {
    if (v5)
    {
      _BitScanForward64(&v7, v5);
      v5 &= v5 - 1;
      v8 = v7 | (v6 << 6);
      goto LABEL_20;
    }

    v9 = v6 + 1;
    if (__OFADD__(1, v6))
    {
      BUG();
    }

    if (v9 >= v21)
    {
      return v4;
    }

    v10 = *(a1 + 8 * v9 + 64);
    if (!v10)
    {
      break;
    }

    v11 = v6 + 1;
LABEL_19:
    _BitScanForward64(&v12, v10);
    v5 = v10 & (v10 - 1);
    v8 = v12 | (v11 << 6);
    v6 = v11;
LABEL_20:
    v13 = *(*(a1 + 56) + 8 * v8);
    v14 = *(*(a1 + 48) + v8);
    v20 = &type metadata for Double;
    *&v19 = v13;
    v4[(v8 >> 6) + 8] |= 1 << v8;
    *(v4[6] + v8) = v14;
    outlined init with take of Any(&v19, (v4[7] + 32 * v8));
    v15 = v4[2];
    v16 = __OFADD__(1, v15);
    v17 = v15 + 1;
    if (v16)
    {
      BUG();
    }

    v4[2] = v17;
  }

  v11 = v6 + 2;
  if (v6 + 2 >= v21)
  {
    return v4;
  }

  v10 = *(a1 + 8 * v9 + 72);
  if (v10)
  {
    goto LABEL_19;
  }

  v11 = v6 + 3;
  if (v6 + 3 >= v21)
  {
    return v4;
  }

  v10 = *(a1 + 8 * v9 + 80);
  if (v10)
  {
    goto LABEL_19;
  }

  v11 = v6 + 4;
  if (v6 + 4 >= v21)
  {
    return v4;
  }

  v10 = *(a1 + 8 * v9 + 88);
  if (v10)
  {
    goto LABEL_19;
  }

  while (v6 + 5 < v21)
  {
    v10 = *(a1 + 8 * v6++ + 104);
    if (v10)
    {
      v11 = v6 + 4;
      goto LABEL_19;
    }
  }

  return v4;
}

{
  v2 = v1;
  v57 = 0;
  v54 = type metadata accessor for URL(0);
  v56 = *(v54 - 8);
  v3 = *(v56 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v55 = &v44;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, [CIImage]>);
  v6 = static _DictionaryStorage.copy(original:)(a1);
  v7 = a1;
  v8 = 1 << *(a1 + 32);
  v9 = v6;
  v10 = ~(-1 << v8);
  if (v8 >= 64)
  {
    v10 = -1;
  }

  v11 = v7[8] & v10;
  v61 = (v8 + 63) >> 6;
  v59 = v6;
  v52 = v7;
  while (1)
  {
    if (v11)
    {
      _BitScanForward64(&v12, v11);
      v13 = (v11 - 1) & v11;
      v14 = v57;
      v15 = v12 | (v57 << 6);
      goto LABEL_17;
    }

    v16 = v57;
    v17 = v57 + 1;
    if (__OFADD__(1, v57))
    {
      BUG();
    }

    if (v17 >= v61)
    {
      return v9;
    }

    v18 = v7[v17 + 8];
    if (!v18)
    {
      break;
    }

LABEL_16:
    _BitScanForward64(&v20, v18);
    v13 = v18 & (v18 - 1);
    v15 = v20 | (v17 << 6);
    v14 = v17;
LABEL_17:
    v48 = v13;
    v57 = v14;
    v21 = 16 * v15;
    v22 = v7[6];
    v23 = v7[7];
    v49 = v15;
    v24 = *(v23 + 8 * v15);
    v51 = *(v22 + v21);
    v50 = v21;
    v25 = *(v22 + v21 + 8);
    v26 = *(v24 + 16);
    if (v26)
    {
      v60 = _swiftEmptyArrayStorage;
      v27 = v25;
      v58 = v24;
      v28 = v26;

      v53 = v27;

      v46 = v28;
      specialized ContiguousArray.reserveCapacity(_:)(v28);
      v29 = v58 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
      v45 = *(v56 + 16);
      v47 = *(v56 + 72);
      while (1)
      {
        v30 = v55;
        v45(v55, v29, v54);
        static ImageReader.read(url:)(v30);
        if (v2)
        {
          break;
        }

        v31 = v55;
        (*(v56 + 8))(v55, v54);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v31);
        v44 = 0;
        v32 = v60[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v32);
        v33 = v32;
        v2 = v44;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v33);
        specialized ContiguousArray._endMutation()(v33);
        v29 += v47;
        if (!--v46)
        {
          v58;
          v34 = v60;
          v9 = v59;
          v7 = v52;
          v25 = v53;
          goto LABEL_23;
        }
      }

      (*(v56 + 8))(v55, v54);
      v58;
      v53;
      v42 = v59;

      v9 = v42;

      return v9;
    }

    v35 = v7;

    v7 = v35;
    v9 = v59;
    v34 = _swiftEmptyArrayStorage;
LABEL_23:
    v36 = v49;
    v9[(v49 >> 6) + 8] |= 1 << v49;
    v37 = v9[6];
    v38 = v50;
    *(v37 + v50) = v51;
    *(v37 + v38 + 8) = v25;
    *(v9[7] + 8 * v36) = v34;
    v39 = v9[2];
    v40 = __OFADD__(1, v39);
    v41 = v39 + 1;
    v11 = v48;
    if (v40)
    {
      BUG();
    }

    v9[2] = v41;
  }

  v19 = v57 + 2;
  if (v57 + 2 >= v61)
  {
    return v9;
  }

  v18 = v7[v17 + 9];
  if (v18)
  {
    goto LABEL_15;
  }

  v19 = v57 + 3;
  if (v57 + 3 >= v61)
  {
    return v9;
  }

  v18 = v7[v17 + 10];
  if (v18)
  {
    goto LABEL_15;
  }

  v19 = v57 + 4;
  if (v57 + 4 >= v61)
  {
    return v9;
  }

  v18 = v7[v17 + 11];
  if (v18)
  {
LABEL_15:
    v17 = v19;
    goto LABEL_16;
  }

  while (v16 + 5 < v61)
  {
    v18 = v7[v16++ + 13];
    if (v18)
    {
      v17 = v16 + 4;
      goto LABEL_16;
    }
  }

  return v9;
}

{
  v1 = a1;
  v2 = 0;
  v37 = type metadata accessor for URL(0);
  v38 = *(v37 - 8);
  v3 = *(v38 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, [URL]>);
  result = static _DictionaryStorage.copy(original:)(a1);
  v7 = 1 << *(a1 + 32);
  v8 = ~(-1 << v7);
  if (v7 >= 64)
  {
    v8 = -1;
  }

  v9 = v1[8] & v8;
  v50 = (v7 + 63) >> 6;
  v48 = v1;
  v47 = result;
  v39 = &v34;
  while (1)
  {
    if (v9)
    {
      _BitScanForward64(&v10, v9);
      v11 = (v9 - 1) & v9;
      v12 = v10 | (v2 << 6);
      goto LABEL_20;
    }

    v13 = v2 + 1;
    if (__OFADD__(1, v2))
    {
      BUG();
    }

    if (v13 >= v50)
    {
      return result;
    }

    v14 = v1[v13 + 8];
    if (!v14)
    {
      break;
    }

    v15 = v2 + 1;
LABEL_19:
    _BitScanForward64(&v16, v14);
    v11 = v14 & (v14 - 1);
    v12 = v16 | (v15 << 6);
    v2 = v15;
LABEL_20:
    v43 = v11;
    v17 = v1[6];
    v18 = v1[7];
    v40 = v12;
    v19 = *(v18 + 8 * v12);
    v42 = *(v17 + 16 * v12);
    v41 = 16 * v12;
    v20 = *(v17 + 16 * v12 + 8);
    v21 = *(v19 + 16);
    if (v21)
    {
      v44 = v2;
      v22 = v21;
      v49 = _swiftEmptyArrayStorage;

      v45 = v20;

      v36 = v22;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
      v23 = v49;
      v46 = v19;
      v24 = (v19 + 40);
      do
      {
        v35 = *(v24 - 1);
        v25 = *v24;

        URL.init(fileURLWithPath:)(v35, v25);
        v25;
        v49 = v23;
        v26 = v23[2];
        if (v23[3] >> 1 <= v26)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v23[3] >= 2uLL, v26 + 1, 1);
          v23 = v49;
        }

        v23[2] = v26 + 1;
        (*(v38 + 32))(v23 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v26, v39, v37);
        v24 += 2;
        --v36;
      }

      while (v36);
      v46;
      v1 = v48;
      v2 = v44;
      v27 = v45;
    }

    else
    {

      v27 = v20;
      v23 = _swiftEmptyArrayStorage;
    }

    v28 = v40;
    result = v47;
    v47[(v40 >> 6) + 8] |= 1 << v40;
    v29 = result[6];
    v30 = v41;
    *(v29 + v41) = v42;
    *(v29 + v30 + 8) = v27;
    *(result[7] + 8 * v28) = v23;
    v31 = result[2];
    v32 = __OFADD__(1, v31);
    v33 = v31 + 1;
    if (v32)
    {
      BUG();
    }

    result[2] = v33;
    v9 = v43;
  }

  v15 = v2 + 2;
  if (v2 + 2 >= v50)
  {
    return result;
  }

  v14 = v1[v13 + 9];
  if (v14)
  {
    goto LABEL_19;
  }

  v15 = v2 + 3;
  if (v2 + 3 >= v50)
  {
    return result;
  }

  v14 = v1[v13 + 10];
  if (v14)
  {
    goto LABEL_19;
  }

  v15 = v2 + 4;
  if (v2 + 4 >= v50)
  {
    return result;
  }

  v14 = v1[v13 + 11];
  if (v14)
  {
    goto LABEL_19;
  }

  while (v2 + 5 < v50)
  {
    v14 = v1[v2++ + 13];
    if (v14)
    {
      v15 = v2 + 4;
      goto LABEL_19;
    }
  }

  return result;
}

{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, [String]>);
  v2 = static _DictionaryStorage.copy(original:)(a1);
  v3 = 1 << *(a1 + 32);
  v4 = v2;
  v5 = ~(-1 << v3);
  if (v3 >= 64)
  {
    v5 = -1;
  }

  v6 = *(a1 + 64) & v5;
  v46 = (v3 + 63) >> 6;
  v7 = 0;
  v43 = v2;
  while (1)
  {
    if (v6)
    {
      _BitScanForward64(&v8, v6);
      v9 = (v6 - 1) & v6;
      v10 = v8 | (v7 << 6);
      goto LABEL_20;
    }

    v11 = v7 + 1;
    if (__OFADD__(1, v7))
    {
      BUG();
    }

    if (v11 >= v46)
    {
      return v4;
    }

    v12 = *(v1 + 8 * v11 + 64);
    if (!v12)
    {
      break;
    }

    v13 = v7 + 1;
LABEL_19:
    _BitScanForward64(&v14, v12);
    v9 = v12 & (v12 - 1);
    v10 = v14 | (v13 << 6);
    v7 = v13;
LABEL_20:
    v40 = v9;
    v15 = 16 * v10;
    v16 = *(v1 + 48);
    v37 = v10;
    v17 = *(*(v1 + 56) + 8 * v10);
    v39 = *(v16 + v15);
    v38 = v15;
    v18 = *(v16 + v15 + 8);
    if (*(v17 + 16))
    {
      v19 = v17;
      v20 = *(v17 + 16);

      v35 = v20;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
      v21 = 0;
      v22 = *(type metadata accessor for URL(0) - 8);
      v41 = v19;
      v23 = v19 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
      v36 = *(v22 + 72);
      do
      {
        v24 = URL.path.getter(v21);
        v26 = _swiftEmptyArrayStorage[2];
        v27 = v26 + 1;
        if (_swiftEmptyArrayStorage[3] >> 1 <= v26)
        {
          v21 = _swiftEmptyArrayStorage[3] >= 2uLL;
          v44 = v24;
          v45 = v25;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21, v27, 1);
          v25 = v45;
          v24 = v44;
        }

        _swiftEmptyArrayStorage[2] = v27;
        v28 = 2 * v26;
        _swiftEmptyArrayStorage[v28 + 4] = v24;
        _swiftEmptyArrayStorage[v28 + 5] = v25;
        v23 += v36;
        --v35;
      }

      while (v35);
      v41;
      v1 = a1;
      v4 = v43;
      v29 = v18;
    }

    else
    {

      v29 = v18;
    }

    v4[(v37 >> 6) + 8] |= 1 << v37;
    v30 = v4[6];
    *(v30 + v38) = v39;
    *(v30 + v38 + 8) = v29;
    *(v4[7] + 8 * v37) = _swiftEmptyArrayStorage;
    v31 = v4[2];
    v32 = __OFADD__(1, v31);
    v33 = v31 + 1;
    if (v32)
    {
      BUG();
    }

    v4[2] = v33;
    v6 = v40;
  }

  v13 = v7 + 2;
  if (v7 + 2 >= v46)
  {
    return v4;
  }

  v12 = *(v1 + 8 * v11 + 72);
  if (v12)
  {
    goto LABEL_19;
  }

  v13 = v7 + 3;
  if (v7 + 3 >= v46)
  {
    return v4;
  }

  v12 = *(v1 + 8 * v11 + 80);
  if (v12)
  {
    goto LABEL_19;
  }

  v13 = v7 + 4;
  if (v7 + 4 >= v46)
  {
    return v4;
  }

  v12 = *(v1 + 8 * v11 + 88);
  if (v12)
  {
    goto LABEL_19;
  }

  while (v7 + 5 < v46)
  {
    v12 = *(v1 + 8 * v7++ + 104);
    if (v12)
    {
      v13 = v7 + 4;
      goto LABEL_19;
    }
  }

  return v4;
}

{
  v49 = type metadata accessor for URL(0);
  v60 = *(v49 - 8);
  v1 = *(v60 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v50 = &v44;
  v4 = alloca(v1);
  v5 = alloca(v1);
  v59 = &v44;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, [String]>);
  v6 = static _DictionaryStorage.copy(original:)(a1);
  v7 = 0;
  v8 = 1 << *(a1 + 32);
  v9 = ~(-1 << v8);
  if (v8 >= 64)
  {
    v9 = -1;
  }

  v10 = v6;
  v11 = a1;
  v12 = *(a1 + 64) & v9;
  v64 = (v8 + 63) >> 6;
  v61 = a1;
  v58 = v6;
  while (1)
  {
    if (v12)
    {
      _BitScanForward64(&v13, v12);
      v12 &= v12 - 1;
      v14 = v13 | (v7 << 6);
      goto LABEL_20;
    }

    v15 = v7 + 1;
    if (__OFADD__(1, v7))
    {
      BUG();
    }

    if (v15 >= v64)
    {
      return v10;
    }

    v16 = *(v11 + 8 * v15 + 64);
    if (!v16)
    {
      break;
    }

    v17 = v7 + 1;
LABEL_19:
    _BitScanForward64(&v18, v16);
    v12 = v16 & (v16 - 1);
    v14 = v18 | (v17 << 6);
    v7 = v17;
LABEL_20:
    v19 = *(v11 + 48);
    v20 = *(v11 + 56);
    v51 = v14;
    v21 = *(v20 + 8 * v14);
    v53 = *(v19 + 16 * v14);
    v52 = 16 * v14;
    v22 = *(v19 + 16 * v14 + 8);
    v23 = *(v21 + 16);
    if (v23)
    {
      v55 = v12;
      v54 = v7;
      v63 = _swiftEmptyArrayStorage;

      v56 = v22;

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
      v62 = v63;
      v24 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v57 = v21;
      v25 = v21 + v24;
      v47 = *(v60 + 16);
      v48 = *(v60 + 72);
      do
      {
        v44 = v23;
        v26 = v59;
        v45 = v25;
        v27 = v49;
        v47(v59, v25, v49);
        v28 = v50;
        URL.absoluteURL.getter();
        v29 = URL.path.getter(v26);
        v46 = v30;
        v31 = *(v60 + 8);
        v31(v28, v27);
        v31(v59, v27);
        v63 = v62;
        v32 = v62[2];
        v33 = v62;
        if (v62[3] >> 1 <= v32)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v62[3] >= 2uLL, v32 + 1, 1);
          v33 = v63;
        }

        v62 = v33;
        v33[2] = v32 + 1;
        v34 = 2 * v32;
        v33[v34 + 4] = v29;
        v33[v34 + 5] = v46;
        v25 = v48 + v45;
        v23 = v44 - 1;
      }

      while (v44 != 1);
      v57;
      v11 = v61;
      v7 = v54;
      v10 = v58;
      v12 = v55;
      v22 = v56;
      v35 = v62;
    }

    else
    {
      v36 = v7;

      v7 = v36;
      v11 = v61;
      v35 = _swiftEmptyArrayStorage;
    }

    v37 = v51;
    v10[(v51 >> 6) + 8] |= 1 << v51;
    v38 = v10[6];
    v39 = v52;
    *(v38 + v52) = v53;
    *(v38 + v39 + 8) = v22;
    *(v10[7] + 8 * v37) = v35;
    v40 = v10[2];
    v41 = __OFADD__(1, v40);
    v42 = v40 + 1;
    if (v41)
    {
      BUG();
    }

    v10[2] = v42;
  }

  v17 = v7 + 2;
  if (v7 + 2 >= v64)
  {
    return v10;
  }

  v16 = *(v11 + 8 * v15 + 72);
  if (v16)
  {
    goto LABEL_19;
  }

  v17 = v7 + 3;
  if (v7 + 3 >= v64)
  {
    return v10;
  }

  v16 = *(v11 + 8 * v15 + 80);
  if (v16)
  {
    goto LABEL_19;
  }

  v17 = v7 + 4;
  if (v7 + 4 >= v64)
  {
    return v10;
  }

  v16 = *(v11 + 8 * v15 + 88);
  if (v16)
  {
    goto LABEL_19;
  }

  while (v7 + 5 < v64)
  {
    v16 = *(v11 + 8 * v7++ + 104);
    if (v16)
    {
      v17 = v7 + 4;
      goto LABEL_19;
    }
  }

  return v10;
}

uint64_t _sxRi_zRi0_zlySaySdGIsegr_SgWOe(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t *outlined release of MLObjectDetector.PrecisionRecallCurve(uint64_t *a1)
{
  v6 = *a1;
  v1 = a1[1];
  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  a1[6];
  v4;
  v3;
  v2;
  v1;
  v6;
  return a1;
}

uint64_t destroy for MLObjectDetector.AnnotatedPredictionForLabel(void *a1)
{
  *a1;
  a1[1];
  return a1[3];
}

uint64_t *initializeWithCopy for MLObjectDetector.AnnotatedPredictionForLabel(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];

  return a1;
}

uint64_t *assignWithCopy for MLObjectDetector.AnnotatedPredictionForLabel(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = *a2;

  v2;
  v3 = a1[1];
  a1[1] = a2[1];

  v3;
  a1[2] = a2[2];
  v4 = a1[3];
  a1[3] = a2[3];

  v4;
  return a1;
}

void *assignWithTake for MLObjectDetector.AnnotatedPredictionForLabel(void *a1, uint64_t a2)
{
  *a1;
  v3 = a1[1];
  *a1 = *a2;
  v3;
  a1[2] = *(a2 + 16);
  v4 = a1[3];
  a1[3] = *(a2 + 24);
  v4;
  return a1;
}

uint64_t getEnumTagSinglePayload for MLObjectDetector.Metrics(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

{
  return getEnumTagSinglePayload for MLObjectDetector.AnnotatedPredictionForLabel(a1, a2);
}

void storeEnumTagSinglePayload for MLObjectDetector.Metrics(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 32) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 32) = 0;
    }

    if (a2)
    {
      *a1 = 2 * (a2 - 1);
    }
  }
}

{
  storeEnumTagSinglePayload for MLObjectDetector.AnnotatedPredictionForLabel(a1, a2, a3);
}

uint64_t *initializeBufferWithCopyOfBuffer for PersistentParametersForTreeBasedMethods(uint64_t *a1, uint64_t *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = type metadata accessor for DataFrame(0);
    v16 = *(*(v6 - 8) + 16);
    v16(a1, a2, v6);
    v7 = a3[5];
    __dst = a1 + v7;
    v8 = a2 + v7;
    if (__swift_getEnumTagSinglePayload(v8, 1, v6))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
      memcpy(__dst, v8, *(*(v9 - 8) + 64));
    }

    else
    {
      v16(__dst, v8, v6);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v6);
    }

    v11 = a3[6];
    *(a1 + v11) = *(a2 + v11);
    *(a1 + v11 + 8) = *(a2 + v11 + 8);
    *(a1 + a3[7]) = *(a2 + a3[7]);
    v12 = a3[8];
    __dsta = a1 + v12;
    v13 = a2 + v12;
    v14 = type metadata accessor for BoostedTreeConfiguration(0);
    v17 = *(*(v14 - 8) + 16);

    v17(__dsta, v13, v14);
  }

  return v3;
}

uint64_t destroy for PersistentParametersForTreeBasedMethods(uint64_t a1, int *a2)
{
  v2 = type metadata accessor for DataFrame(0);
  v3 = *(*(v2 - 8) + 8);
  v3(a1, v2);
  v4 = a1 + a2[5];
  if (!__swift_getEnumTagSinglePayload(v4, 1, v2))
  {
    v3(v4, v2);
  }

  *(a1 + a2[6] + 8);
  *(a1 + a2[7]);
  v5 = a1 + a2[8];
  v6 = type metadata accessor for BoostedTreeConfiguration(0);
  return (*(*(v6 - 8) + 8))(v5, v6);
}

char *initializeWithCopy for PersistentParametersForTreeBasedMethods(char *a1, char *a2, int *a3)
{
  v4 = type metadata accessor for DataFrame(0);
  v13 = *(*(v4 - 8) + 16);
  v13(a1, a2, v4);
  v5 = a3[5];
  __dst = &a1[v5];
  v6 = &a2[v5];
  if (__swift_getEnumTagSinglePayload(v6, 1, v4))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(__dst, v6, *(*(v7 - 8) + 64));
  }

  else
  {
    v13(__dst, v6, v4);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v4);
  }

  v8 = a3[6];
  *&a1[v8] = *&a2[v8];
  *&a1[v8 + 8] = *&a2[v8 + 8];
  *&a1[a3[7]] = *&a2[a3[7]];
  v9 = a3[8];
  __dsta = &a1[v9];
  v10 = &a2[v9];
  v11 = type metadata accessor for BoostedTreeConfiguration(0);
  v14 = *(*(v11 - 8) + 16);

  v14(__dsta, v10, v11);
  return a1;
}

uint64_t assignWithCopy for PersistentParametersForTreeBasedMethods(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = type metadata accessor for DataFrame(0);
  v23 = *(v5 - 8);
  v22 = *(v23 + 24);
  v22(a1, a2, v5);
  v21 = a3;
  v6 = a3[5];
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  LODWORD(a3) = __swift_getEnumTagSinglePayload(v7, 1, v5);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v5);
  if (a3)
  {
    if (!EnumTagSinglePayload)
    {
      (*(v23 + 16))(v7, v8, v5);
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v5);
      goto LABEL_9;
    }

    v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  }

  else
  {
    if (!EnumTagSinglePayload)
    {
      v22(v7, v8, v5);
      goto LABEL_9;
    }

    (*(v23 + 8))(v7, v5, v10, v22);
    v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  }

  memcpy(v7, v8, v11);
LABEL_9:
  v12 = v21[6];
  *(a1 + v12) = *(a2 + v12);
  v13 = *(a1 + v12 + 8);
  *(a1 + v12 + 8) = *(a2 + v12 + 8);

  v13;
  v14 = v21[7];
  v15 = *(a1 + v14);
  *(a1 + v14) = *(a2 + v14);

  v15;
  v16 = v21[8];
  v17 = a1 + v16;
  v18 = v16 + a2;
  v19 = type metadata accessor for BoostedTreeConfiguration(0);
  (*(*(v19 - 8) + 24))(v17, v18, v19);
  return a1;
}

char *initializeWithTake for PersistentParametersForTreeBasedMethods(char *a1, char *a2, int *a3)
{
  v4 = type metadata accessor for DataFrame(0);
  v13 = *(*(v4 - 8) + 32);
  v13(a1, a2, v4);
  v5 = a3[5];
  __dst = &a1[v5];
  v6 = &a2[v5];
  if (__swift_getEnumTagSinglePayload(v6, 1, v4))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(__dst, v6, *(*(v7 - 8) + 64));
  }

  else
  {
    v13(__dst, v6, v4);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v4);
  }

  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[a3[7]] = *&a2[a3[7]];
  v8 = a3[8];
  v9 = &a1[v8];
  v10 = &a2[v8];
  v11 = type metadata accessor for BoostedTreeConfiguration(0);
  (*(*(v11 - 8) + 32))(v9, v10, v11);
  return a1;
}

uint64_t assignWithTake for PersistentParametersForTreeBasedMethods(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = type metadata accessor for DataFrame(0);
  v23 = *(v5 - 8);
  v22 = *(v23 + 40);
  v22(a1, a2, v5);
  v21 = a3;
  v6 = a3[5];
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  LODWORD(a3) = __swift_getEnumTagSinglePayload(v7, 1, v5);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v5);
  if (a3)
  {
    if (!EnumTagSinglePayload)
    {
      (*(v23 + 32))(v7, v8, v5);
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v5);
      goto LABEL_9;
    }

    v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  }

  else
  {
    if (!EnumTagSinglePayload)
    {
      v22(v7, v8, v5);
      goto LABEL_9;
    }

    (*(v23 + 8))(v7, v5, v10, v22);
    v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  }

  memcpy(v7, v8, v11);
LABEL_9:
  v12 = v21[6];
  *(a1 + v12) = *(a2 + v12);
  v13 = *(a1 + v12 + 8);
  *(a1 + v12 + 8) = *(a2 + v12 + 8);
  v13;
  v14 = v21[7];
  v15 = *(a1 + v14);
  *(a1 + v14) = *(a2 + v14);
  v15;
  v16 = v21[8];
  v17 = a1 + v16;
  v18 = v16 + a2;
  v19 = type metadata accessor for BoostedTreeConfiguration(0);
  (*(*(v19 - 8) + 40))(v17, v18, v19);
  return a1;
}

uint64_t sub_5320C(uint64_t a1, unsigned int a2, int *a3)
{
  v4 = a1;
  v5 = type metadata accessor for DataFrame(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v6 = a3[5];
LABEL_9:
    v4 = v6 + a1;
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v5 = type metadata accessor for BoostedTreeConfiguration(0);
    v6 = a3[8];
    goto LABEL_9;
  }

  result = 0;
  if ((*(a1 + a3[6] + 8) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + a3[6] + 8) >> 1) + 1;
  }

  return result;
}

uint64_t sub_532B5(uint64_t a1, unsigned int a2, int a3, int *a4)
{
  v6 = a1;
  v7 = type metadata accessor for DataFrame(0);
  if (*(*(v7 - 8) + 84) != a3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    if (*(*(v7 - 8) + 84) == a3)
    {
      v8 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        result = a4[6];
        *(a1 + result + 8) = 2 * (a2 - 1);
        return result;
      }

      v7 = type metadata accessor for BoostedTreeConfiguration(0);
      v8 = a4[8];
    }

    v6 = v8 + a1;
  }

  return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
}

uint64_t type metadata accessor for PersistentParametersForTreeBasedMethods(uint64_t a1)
{
  result = type metadata singleton initialization cache for PersistentParametersForTreeBasedMethods;
  if (!type metadata singleton initialization cache for PersistentParametersForTreeBasedMethods)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for PersistentParametersForTreeBasedMethods);
  }

  return result;
}

uint64_t type metadata completion function for PersistentParametersForTreeBasedMethods(uint64_t a1)
{
  result = type metadata accessor for DataFrame(319);
  if (v2 <= 0x3F)
  {
    v5[0] = *(result - 8) + 64;
    result = type metadata accessor for DataFrame?(319);
    if (v3 <= 0x3F)
    {
      v5[1] = *(result - 8) + 64;
      v5[2] = &unk_33E508;
      v5[3] = &value witness table for Builtin.BridgeObject + 64;
      result = type metadata accessor for BoostedTreeConfiguration(319);
      if (v4 <= 0x3F)
      {
        v5[4] = *(result - 8) + 64;
        swift_initStructMetadata(a1, 256, 5, v5, a1 + 16);
        return 0;
      }
    }
  }

  return result;
}

NSURL *PersistentParametersForTreeBasedMethods.init(sessionDirectory:)(uint64_t a1)
{
  v135 = v2;
  v142 = a1;
  v3 = v1;
  v119 = type metadata accessor for CSVType(0);
  v124 = *(v119 - 8);
  v4 = *(v124 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v118 = &v105;
  v7 = *(*(type metadata accessor for CSVReadingOptions(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v106 = &v105;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v107 = &v105;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v121 = &v105;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v133 = &v105;
  v17 = type metadata accessor for DataFrame(0);
  v123 = *(v17 - 8);
  v18 = *(v123 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v120 = &v105;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v127 = &v105;
  v136 = type metadata accessor for URL(0);
  v23 = *(v136 - 8);
  v24 = *(v23 + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v117 = &v105;
  v27 = alloca(v24);
  v28 = alloca(v24);
  v122 = &v105;
  v29 = alloca(v24);
  v30 = alloca(v24);
  v108 = &v105;
  v31 = alloca(v24);
  v32 = alloca(v24);
  v132 = &v105;
  v33 = alloca(v24);
  v34 = alloca(v24);
  v131 = &v105;
  v35 = alloca(v24);
  v36 = alloca(v24);
  v128 = &v105;
  v37 = alloca(v24);
  v38 = alloca(v24);
  v125 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v39 = *(v125 + 20);
  v130 = v3;
  v116 = v3 + v39;
  v126 = v17;
  __swift_storeEnumTagSinglePayload(v3 + v39, 1, 1, v17);
  v40 = v142;
  URL.appendingPathComponent(_:)(0xD000000000000010, ("ObjectDetectorMetrics." + 0x8000000000000000));
  v41 = v135;
  v42 = Data.init(contentsOf:options:)(&v105, 0);
  v135 = v41;
  if (v41)
  {
    v44 = *(v23 + 8);
    v45 = v136;
    v44(v40, v136);
    v44(&v105, v45);
LABEL_48:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v116, &demangling cache variable for type metadata for DataFrame?);
    return __stack_chk_guard;
  }

  v46 = v43;
  v129 = v23;
  v47 = *(v23 + 8);
  v48 = v136;
  v49 = v42;
  v141 = v47;
  v47(&v105, v136);
  v50 = objc_opt_self(NSPropertyListSerialization);
  v134 = v49;
  v51.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v143 = v46;
  isa = v51.super.isa;
  v145[0] = 0;
  v53 = [v50 propertyListWithData:v51.super.isa options:0 format:0 error:v145];
  v54 = v53;

  v55 = v145[0];
  if (!v54)
  {
    v72 = v55;
    _convertNSErrorToError(_:)(v55);

    swift_willThrow();
    outlined consume of Data._Representation(v134, v143);
    v141(v142, v48);
    goto LABEL_48;
  }

  _bridgeAnyObjectToAny(_:)(v54);
  swift_unknownObjectRelease(v54);
  outlined init with copy of Any(v147, v145);
  v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  if (!swift_dynamicCast(v144, v145, &type metadata for Any + 8, v56, 6))
  {
    v73 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v73, 0, 0);
    *v74 = 0xD000000000000037;
    *(v74 + 8) = "parameters.plist" + 0x8000000000000000;
    *(v74 + 16) = 0;
    *(v74 + 32) = 0;
    *(v74 + 48) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v134, v143);
    v141(v142, v48);
LABEL_47:
    __swift_destroy_boxed_opaque_existential_1Tm(v147);
    goto LABEL_48;
  }

  v137 = &type metadata for Any + 8;
  v57 = v144[0];
  specialized Dictionary.subscript.getter(0x746567726174, 0xE600000000000000, v144[0]);
  v58 = v142;
  v59 = v143;
  if (!v146)
  {
    v57;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v145, &demangling cache variable for type metadata for Any?);
LABEL_34:
    v75 = v141;
LABEL_46:
    v80 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v80, 0, 0);
    *v81 = 0xD000000000000034;
    *(v81 + 8) = "ad training parameters." + 0x8000000000000000;
    *(v81 + 16) = 0;
    *(v81 + 32) = 0;
    *(v81 + 48) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v134, v59);
    v75(v58, v136);
    goto LABEL_47;
  }

  if (!swift_dynamicCast(v144, v145, v137, &type metadata for String, 6))
  {
    v57;
    goto LABEL_34;
  }

  v109 = v144[0];
  v60 = v144[1];
  specialized Dictionary.subscript.getter(0xD000000000000010, ("training parameters." + 0x8000000000000000), v57);
  if (!v146)
  {
LABEL_42:
    v76 = v60;
    goto LABEL_43;
  }

  v140 = v57;
  v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  if (!swift_dynamicCast(v144, v145, v137, v61, 6))
  {
LABEL_39:
    v77 = v60;
    goto LABEL_40;
  }

  v138 = v60;
  v62 = v144[0];
  LOBYTE(v57) = v140;
  specialized Dictionary.subscript.getter(0x617265744978616DLL, 0xED0000736E6F6974, v140);
  if (!v146)
  {
    v62;
    v76 = v138;
LABEL_43:
    v76;
    v79 = v57;
LABEL_44:
    v79;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v145, &demangling cache variable for type metadata for Any?);
    goto LABEL_45;
  }

  v139 = v62;
  if (!swift_dynamicCast(v144, v145, v137, &type metadata for Int, 6))
  {
    goto LABEL_36;
  }

  v110 = v144[0];
  LOBYTE(v57) = v140;
  specialized Dictionary.subscript.getter(0x687470654478616DLL, 0xE800000000000000, v140);
  LOBYTE(v60) = v138;
  if (!v146)
  {
    v139;
    goto LABEL_42;
  }

  if (!swift_dynamicCast(v144, v145, v137, &type metadata for Int, 6))
  {
LABEL_37:
    v78 = v139;
LABEL_38:
    v78;
    goto LABEL_39;
  }

  v63 = v144[0];
  v64 = v140;
  specialized Dictionary.subscript.getter(0xD000000000000010, ("selectedFeatures" + 0x8000000000000000), v140);
  if (!v146)
  {
    v139;
    v60;
    v79 = v64;
    goto LABEL_44;
  }

  if (!swift_dynamicCast(v144, v145, v137, &type metadata for Double, 6))
  {
    goto LABEL_37;
  }

  v111 = *v144;
  specialized Dictionary.subscript.getter(0x646C6968436E696DLL, 0xEE00746867696557, v140);
  v65 = v139;
  if (!v146)
  {
LABEL_51:
    v65;
    v83 = v60;
LABEL_52:
    v83;
    v79 = v140;
    goto LABEL_44;
  }

  if (!swift_dynamicCast(v144, v145, v137, &type metadata for Double, 6))
  {
    v78 = v65;
    goto LABEL_38;
  }

  v112 = *v144;
  specialized Dictionary.subscript.getter(0x65536D6F646E6172, 0xEA00000000006465, v140);
  if (!v146)
  {
    goto LABEL_51;
  }

  if (!swift_dynamicCast(v144, v145, v137, &type metadata for Int, 6))
  {
    goto LABEL_36;
  }

  v66 = v144[0];
  specialized Dictionary.subscript.getter(0x6173627553776F72, 0xEC000000656C706DLL, v140);
  if (!v146)
  {
LABEL_54:
    v139;
    v83 = v138;
    goto LABEL_52;
  }

  if (!swift_dynamicCast(v144, v145, v137, &type metadata for Double, 6))
  {
LABEL_36:
    v139;
    v77 = v138;
LABEL_40:
    v77;
    v140;
LABEL_45:
    v58 = v142;
    v75 = v141;
    v59 = v143;
    goto LABEL_46;
  }

  v113 = *v144;
  specialized Dictionary.subscript.getter(0x75536E6D756C6F63, 0xEF656C706D617362, v140);
  if (!v146)
  {
    goto LABEL_54;
  }

  if (!swift_dynamicCast(v144, v145, v137, &type metadata for Double, 6))
  {
    goto LABEL_36;
  }

  v114 = *v144;
  specialized Dictionary.subscript.getter(0x657A695370657473, 0xE800000000000000, v140);
  if (!v146)
  {
    goto LABEL_54;
  }

  if (!swift_dynamicCast(v144, v145, v137, &type metadata for Double, 6))
  {
    goto LABEL_36;
  }

  v115 = *v144;
  specialized Dictionary.subscript.getter(0xD000000000000013, ("minLossReduction" + 0x8000000000000000), v140);
  if (!v146)
  {
    goto LABEL_54;
  }

  if (!swift_dynamicCast(v144, v145, v137, &type metadata for Int, 6))
  {
    goto LABEL_36;
  }

  v67 = v144[0];
  v68 = v125;
  v69 = *(v125 + 24);
  v70 = v130;
  *(v130 + v69) = v109;
  *(v70 + v69 + 8) = v138;
  *(v70 + *(v68 + 28)) = v139;
  BoostedTreeConfiguration.init()(v144);
  BoostedTreeConfiguration.maximumIterations.setter(v110);
  BoostedTreeConfiguration.maximumDepth.setter(v63);
  BoostedTreeConfiguration.minimumLossReduction.setter(v111);
  BoostedTreeConfiguration.minimumChildWeight.setter(v112);
  BoostedTreeConfiguration.randomSeed.setter(v66);
  BoostedTreeConfiguration.rowSubsample.setter(v113);
  BoostedTreeConfiguration.columnSubsample.setter(v114);
  BoostedTreeConfiguration.learningRate.setter(v115);
  BoostedTreeConfiguration.earlyStoppingIterationCount.setter(v67, 0);
  v71 = v140;
  specialized Dictionary.subscript.getter(0xD000000000000011, ("earlyStoppingRounds" + 0x8000000000000000), v140);
  v71;
  if (v146)
  {
    if (swift_dynamicCast(v144, v145, v137, &type metadata for Int, 6))
    {
      BoostedTreeConfiguration.parallelTreeCount.setter(v144[0]);
    }
  }

  else
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v145, &demangling cache variable for type metadata for Any?);
  }

  v84 = v128;
  URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
  URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
  v85 = v132;
  v129 = *(v129 + 16);
  (v129)(v132, v84, v136);
  v86 = v135;
  DataFrame.init(contentsOfSFrameDirectory:columns:rows:)(v85, 0, 0, 0, 1);
  v132 = v86;
  if (v86)
  {
    (v129)(v117, v128, v136);
    v135 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11TabularData7CSVTypeOTt0gq5(_swiftEmptyArrayStorage);
    v133 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 1 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v87 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 2 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v88 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 3 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v89 = *(v124 + 104);
    v90 = v118;
    LODWORD(v124) = enum case for CSVType.double(_:);
    v127 = v89;
    (v89)(v118, enum case for CSVType.double(_:), v119);
    v91 = v106;
    CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)(1, v133, v87, v88, v90, 1, 1, 0, 44, 0xE100000000000000, 92);
    DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)(v117, 0, 0, 0, 1, v135, v91);
    v135 = 0;
    (*(v123 + 32))(v130, v120, v126);
    (v129)(v122, v131, v136);
    v130 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11TabularData7CSVTypeOTt0gq5(_swiftEmptyArrayStorage);
    v125 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 1 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v133 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 2 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v95 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 3 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v96 = v118;
    (v127)(v118, v124, v119);
    v97 = v107;
    CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)(1, v125, v133, v95, v96, 1, 1, 0, 44, 0xE100000000000000, 92);
    v98 = 0;
    v99 = v135;
    DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)(v122, 0, 0, 0, 1, v130, v97);
    outlined consume of Data._Representation(v134, v143);
    if (v99)
    {
      v132;
      v132 = v99;
      v98 = 1;
    }

    v132;
    v102 = v136;
    v103 = v141;
    v141(v142, v136);
    v103(v131, v102);
    v103(v128, v102);
    __swift_destroy_boxed_opaque_existential_1Tm(v147);
    v104 = v121;
    __swift_storeEnumTagSinglePayload(v121, v98, 1, v126);
    v133 = v104;
  }

  else
  {
    (*(v123 + 32))(v130, v127, v126);
    v92 = v108;
    (v129)(v108, v131, v136);
    v93 = 0;
    v94 = v132;
    DataFrame.init(contentsOfSFrameDirectory:columns:rows:)(v92, 0, 0, 0, 1);
    outlined consume of Data._Representation(v134, v143);
    if (v94)
    {
      v94;
      v93 = 1;
    }

    v100 = v136;
    v101 = v141;
    v141(v142, v136);
    v101(v131, v100);
    v101(v128, v100);
    __swift_destroy_boxed_opaque_existential_1Tm(v147);
    __swift_storeEnumTagSinglePayload(v133, v93, 1, v126);
  }

  outlined assign with take of DataFrame?(v133, v116);
  return __stack_chk_guard;
}

NSURL *PersistentParametersForTreeBasedMethods.save(toSessionDirectory:)(uint64_t a1)
{
  v76 = v1;
  v3 = v2;
  v68 = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v73 = &v61;
  v72 = type metadata accessor for CSVWritingOptions(0);
  v69 = *(v72 - 8);
  v7 = *(v69 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v67 = &v61;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v64 = &v61;
  v75 = type metadata accessor for URL(0);
  v78 = *(v75 - 8);
  v12 = *(v78 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v70 = &v61;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v65 = &v61;
  v17 = alloca(v12);
  v18 = alloca(v12);
  v62 = &v61;
  v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  inited = swift_initStackObject(v19, v82);
  *(inited + 16) = 11;
  *(inited + 24) = 22;
  *(inited + 32) = 0x746567726174;
  *(inited + 40) = 0xE600000000000000;
  v21 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v22 = *(v21 + 24);
  v23 = *(v2 + v22);
  v77 = *(v2 + v22 + 8);
  v24 = v77;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v23;
  *(inited + 56) = v24;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = "training parameters." + 0x8000000000000000;
  v25 = *(v2 + *(v21 + 28));
  v74 = v25;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  *(inited + 96) = v25;
  strcpy((inited + 128), "maxIterations");
  *(inited + 142) = -4864;
  v66 = v21;
  v63 = v3;

  v26 = v74;

  v27 = BoostedTreeConfiguration.maximumIterations.getter(v26);
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = v27;
  *(inited + 176) = 0x687470654478616DLL;
  *(inited + 184) = 0xE800000000000000;
  v28 = BoostedTreeConfiguration.maximumDepth.getter();
  *(inited + 216) = &type metadata for Int;
  *(inited + 192) = v28;
  *(inited + 224) = 0xD000000000000010;
  *(inited + 232) = "selectedFeatures" + 0x8000000000000000;
  v29 = BoostedTreeConfiguration.minimumLossReduction.getter();
  *(inited + 264) = &type metadata for Double;
  *(inited + 240) = v29;
  strcpy((inited + 272), "minChildWeight");
  *(inited + 287) = -18;
  v30 = BoostedTreeConfiguration.minimumChildWeight.getter();
  *(inited + 312) = &type metadata for Double;
  *(inited + 288) = v30;
  *(inited + 320) = 0x65536D6F646E6172;
  *(inited + 328) = 0xEA00000000006465;
  v31 = BoostedTreeConfiguration.randomSeed.getter();
  *(inited + 360) = &type metadata for Int;
  *(inited + 336) = v31;
  strcpy((inited + 368), "rowSubsample");
  *(inited + 381) = 0;
  *(inited + 382) = -5120;
  v32 = BoostedTreeConfiguration.rowSubsample.getter();
  *(inited + 408) = &type metadata for Double;
  *(inited + 384) = v32;
  *(inited + 416) = 0x75536E6D756C6F63;
  *(inited + 424) = 0xEF656C706D617362;
  v33 = BoostedTreeConfiguration.columnSubsample.getter();
  *(inited + 456) = &type metadata for Double;
  *(inited + 432) = v33;
  *(inited + 464) = 0x657A695370657473;
  *(inited + 472) = 0xE800000000000000;
  v34 = BoostedTreeConfiguration.learningRate.getter();
  *(inited + 504) = &type metadata for Double;
  *(inited + 480) = v34;
  *(inited + 512) = 0xD000000000000013;
  *(inited + 520) = "minLossReduction" + 0x8000000000000000;
  v35 = BoostedTreeConfiguration.earlyStoppingIterationCount.getter();
  *(inited + 552) = &type metadata for Int;
  if (v36)
  {
    v35 = 0;
  }

  *(inited + 528) = v35;
  v37 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  if (BoostedTreeConfiguration.parallelTreeCount.getter() != 1)
  {
    v38 = BoostedTreeConfiguration.parallelTreeCount.getter();
    v81[3] = &type metadata for Int;
    v81[0] = v38;
    outlined init with take of Any(v81, v80);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v37);
    v79 = v37;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v80, 0xD000000000000011, ("earlyStoppingRounds" + 0x8000000000000000), isUniquelyReferenced_nonNull_native);
    LOBYTE(v37) = v79;
  }

  v40 = objc_opt_self(NSPropertyListSerialization);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v37;
  v81[0] = 0;
  v42 = [v40 dataWithPropertyList:isa format:200 options:0 error:v81];
  v43 = v42;

  v44 = v81[0];
  if (v43)
  {
    v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)(v43);
    v46 = v43;
    v48 = v47;

    v49 = v62;
    URL.appendingPathComponent(_:)(0xD000000000000010, ("ObjectDetectorMetrics." + 0x8000000000000000));
    v50 = v76;
    Data.write(to:options:)(v49, 0, v45, v48);
    v77 = v50;
    if (v50)
    {
      (*(v78 + 8))(v49, v75);
      outlined consume of Data._Representation(v45, v48);
    }

    else
    {
      v71 = v45;
      v76 = v48;
      v74 = *(v78 + 8);
      v74(v49, v75);
      v52 = v65;
      URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
      v53 = v64;
      CSVWritingOptions.init(includesHeader:dateFormat:nilEncoding:trueEncoding:falseEncoding:newline:delimiter:)(1, 0, 0, 0, 0xE000000000000000, 1702195828, 0xE400000000000000, 0x65736C6166, 0xE500000000000000, 10, 0xE100000000000000, 44, 0xE100000000000000);
      v78 = type metadata accessor for DataFrame(0);
      v54 = v63;
      v55 = v77;
      DataFrameProtocol.writeCSV(to:options:)(v52, v53, v78, &protocol witness table for DataFrame);
      if (v55)
      {
        outlined consume of Data._Representation(v71, v76);
        (*(v69 + 8))(v53, v72);
        v74(v52, v75);
      }

      else
      {
        v77 = *(v69 + 8);
        v77(v53, v72);
        v74(v52, v75);
        v56 = *(v66 + 20) + v54;
        v57 = v73;
        outlined init with copy of (String, CSVType)(v56, v73, &demangling cache variable for type metadata for DataFrame?);
        if (__swift_getEnumTagSinglePayload(v57, 1, v78) == 1)
        {
          outlined consume of Data._Representation(v71, v76);
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v57, &demangling cache variable for type metadata for DataFrame?);
        }

        else
        {
          v58 = v70;
          URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
          v59 = v67;
          CSVWritingOptions.init(includesHeader:dateFormat:nilEncoding:trueEncoding:falseEncoding:newline:delimiter:)(1, 0, 0, 0, 0xE000000000000000, 1702195828, 0xE400000000000000, 0x65736C6166, 0xE500000000000000, 10, 0xE100000000000000, 44, 0xE100000000000000);
          DataFrameProtocol.writeCSV(to:options:)(v58, v59, v78, &protocol witness table for DataFrame);
          outlined consume of Data._Representation(v71, v76);
          v77(v59, v72);
          v74(v70, v75);
          (*(*(v78 - 8) + 8))(v73);
        }
      }
    }
  }

  else
  {
    v51 = v44;
    _convertNSErrorToError(_:)(v44);

    swift_willThrow();
  }

  return __stack_chk_guard;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11TabularData7CSVTypeOTt0gq5(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, CSVType));
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v30 = &v26;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, CSVType>);
    v7 = static _DictionaryStorage.allocate(capacity:)(v6);
    v8 = *(a1 + 16);
    if (v8)
    {
      v27 = v30 + *(v1 + 48);
      v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v29 = a1;
      v10 = a1 + v9;
      v28 = *(v2 + 72);

      do
      {
        v26 = v8;
        v11 = v30;
        outlined init with copy of (String, CSVType)(v10, v30, &demangling cache variable for type metadata for (String, CSVType));
        v12 = *v11;
        v13 = v11[1];
        *&v14 = *v11;
        *(&v14 + 1) = v13;
        v15 = specialized __RawDictionaryStorage.find<A>(_:)(v14);
        if (v16)
        {
          BUG();
        }

        v17 = v15;
        v7[(v15 >> 6) + 8] |= 1 << v15;
        v18 = v7[6];
        v19 = 16 * v17;
        *(v18 + v19) = v12;
        *(v18 + v19 + 8) = v13;
        v20 = v7[7];
        v21 = type metadata accessor for CSVType(0);
        (*(*(v21 - 8) + 32))(v20 + v17 * *(*(v21 - 8) + 72), v27, v21);
        v22 = v7[2];
        v23 = __OFADD__(1, v22);
        v24 = v22 + 1;
        if (v23)
        {
          BUG();
        }

        v7[2] = v24;
        v10 += v28;
        v8 = v26 - 1;
      }

      while (v26 != 1);

      LOBYTE(a1) = v29;
    }
  }

  else
  {
    v7 = _swiftEmptyDictionarySingleton;
  }

  a1;
  return v7;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(__int128 a1)
{
  Hasher.init(_seed:)(*(v1 + 40));
  String.hash(into:)(v4, a1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(__int128 a1, unint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  v4 = v3 & a2;
  v5 = *(v2 + 8 * ((v3 & a2) >> 6) + 64);
  if (_bittest64(&v5, v3 & a2))
  {
    v6 = *(v2 + 48);
    if (a1 != *(v6 + 16 * v4) && (_stringCompareWithSmolCheck(_:_:expecting:)(*(v6 + 16 * v4), *(v6 + 16 * v4 + 8), a1, *(&a1 + 1), 0) & 1) == 0)
    {
      v4 = v3 & (v4 + 1);
      v7 = *(v2 + 8 * (v4 >> 6) + 64);
      if (_bittest64(&v7, v4))
      {
        if (a1 != *(v6 + 16 * v4) && (_stringCompareWithSmolCheck(_:_:expecting:)(*(v6 + 16 * v4), *(v6 + 16 * v4 + 8), a1, *(&a1 + 1), 0) & 1) == 0)
        {
          v4 = v3 & (v4 + 1);
          v8 = *(v2 + 8 * (v4 >> 6) + 64);
          if (_bittest64(&v8, v4))
          {
            do
            {
              if (a1 == *(v6 + 16 * v4))
              {
                break;
              }

              if (_stringCompareWithSmolCheck(_:_:expecting:)(*(v6 + 16 * v4), *(v6 + 16 * v4 + 8), a1, *(&a1 + 1), 0))
              {
                break;
              }

              v4 = v3 & (v4 + 1);
              v9 = *(v2 + 8 * (v4 >> 6) + 64);
            }

            while (_bittest64(&v9, v4));
          }
        }
      }
    }
  }

  return v4;
}

uint64_t outlined init with copy of (String, CSVType)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledName(a3);
  (*(*(v3 - 8) + 16))(a2, a1, v3);
  return a2;
}

uint64_t MLStyleTransfer.init(model:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a2;
  v3[2] = a1;
  v4 = type metadata accessor for _Model();
  swift_allocObject(v4, 48, 7);

  v5 = swift_task_alloc(80);
  v3[5] = v5;
  *v5 = v3;
  v5[1] = MLStyleTransfer.init(model:parameters:);
  return _Model.init(impl:)(a2);
}

uint64_t MLStyleTransfer.init(model:parameters:)(uint64_t a1)
{
  v5 = *(*v2 + 40);
  v4 = *v2;
  *(*v2 + 48) = v1;
  v5;
  if (v1)
  {
    v6 = MLStyleTransfer.init(model:parameters:);
  }

  else
  {
    *(v4 + 56) = a1;
    v6 = MLStyleTransfer.init(model:parameters:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t MLStyleTransfer.init(model:parameters:)()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  *v3 = v1;
  v4 = type metadata accessor for MLStyleTransfer(0);
  outlined init with take of MLClassifierMetrics(v2, v3 + *(v4 + 20), type metadata accessor for MLStyleTransfer.ModelParameters);
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 32);

  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for MLStyleTransfer.ModelParameters);
  return (*(v0 + 8))();
}

uint64_t MLStyleTransfer.ModelParameters.init(algorithm:validation:maxIterations:textelDensity:styleStrength:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v8 = *a1;
  v9 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  *&v7[v9[6]] = 1;
  v7[v9[10]] = 0;
  *v7 = v8;
  outlined init with take of MLClassifierMetrics(a2, &v7[v9[5]], type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  *&v7[v9[7]] = a3;
  *&v7[v9[8]] = a4;
  result = v9[9];
  *&v7[result] = a5;
  return result;
}

uint64_t MLStyleTransfer.init(trainingData:parameters:)(uint64_t a1, uint64_t a2)
{
  v53 = v3;
  v52 = a2;
  v47 = a1;
  v36 = v2;
  v4 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v38 = *(v4 - 8);
  v37 = *(v38 + 64);
  v5 = alloca(v37);
  v6 = alloca(v37);
  v45 = &v36;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = alloca(v7);
  v11 = alloca(v7);
  v12 = type metadata accessor for URL(0);
  v49 = *(v12 - 8);
  v13 = *(v49 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v46 = &v36;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v44 = &v36;
  v39 = v13;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v50 = &v36;
  v48 = 4 * (*(v52 + *(v4 + 32)) / 4);
  __swift_storeEnumTagSinglePayload(&v36, 1, 1, v12);
  v20 = v47;
  v51 = v12;
  __swift_storeEnumTagSinglePayload(&v36, 1, 1, v12);
  v21 = v53;
  MLStyleTransfer.DataSource.preprocessDataSource(textelDensity:styleImageDestination:contentImagesDestination:)(v44, &v42, v48, &v36, &v36);
  v53 = v21;
  if (v21)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v52, type metadata accessor for MLStyleTransfer.ModelParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v20, type metadata accessor for MLStyleTransfer.DataSource);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v36, &demangling cache variable for type metadata for URL?);
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v36, &demangling cache variable for type metadata for URL?);
  }

  else
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v36, &demangling cache variable for type metadata for URL?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v36, &demangling cache variable for type metadata for URL?);
    v40 = v42;
    LODWORD(v48) = v43;
    v23 = v49;
    v41 = *(v49 + 32);
    v24 = v50;
    v25 = v51;
    v41(v50, v44, v51);
    (*(v23 + 16))(v46, v24, v25);
    outlined init with copy of MLTrainingSessionParameters(v52, v45, type metadata accessor for MLStyleTransfer.ModelParameters);
    v26 = *(v23 + 80);
    v27 = ~*(v23 + 80) & (v26 + 16);
    v28 = (v39 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = *(v38 + 80);
    v30 = ~v29 & (v29 + v28 + 9);
    v31 = swift_allocObject(&unk_38F9A8, v30 + v37, v29 | v26 | 7);
    v32 = (v31 + v27);
    v33 = v40;
    v41(v32, v46, v51);
    *(v31 + v28) = v33;
    v34 = v48;
    *(v31 + v28 + 8) = v48 & 1;
    LOBYTE(v28) = v34;
    outlined init with take of MLClassifierMetrics(v45, v31 + v30, type metadata accessor for MLStyleTransfer.ModelParameters);
    outlined copy of Result<_DataTable, Error>(v33, v28);
    v35 = v53;
    specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLStyleTransfer.init(trainingData:parameters:), v31);
    v53 = v35;

    outlined consume of Result<_DataTable, Error>(v33, v28);
    outlined destroy of MLActivityClassifier.ModelParameters(v52, type metadata accessor for MLStyleTransfer.ModelParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v47, type metadata accessor for MLStyleTransfer.DataSource);
    return (*(v49 + 8))(v50, v51);
  }
}

void MLStyleTransfer.DataSource.preprocessDataSource(textelDensity:styleImageDestination:contentImagesDestination:)(_BYTE *a1, void *a2, uint64_t a3, void *a4, void (*a5)(uint64_t *, uint64_t *, uint64_t))
{
  v41 = v5;
  v35 = v6;
  v36 = a5;
  v32 = a2;
  v33 = a1;
  v9 = *(*(type metadata accessor for MLStyleTransfer.DataSource(0) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v38 = &v32;
  v37 = type metadata accessor for URL(0);
  v12 = *(v37 - 8);
  v13 = *(v12 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = alloca(v13);
  v17 = alloca(v13);
  v18 = alloca(v13);
  v19 = alloca(v13);
  v40 = &v32;
  v20 = alloca(v13);
  v21 = alloca(v13);
  v39 = &v32;
  v34 = &v32;
  v22 = v41;
  MLStyleTransfer.DataSource.processImages(textelDensity:styleImageDestination:contentImagesDestination:)(&v32, &v32, a3, a4, v36);
  if (!v22)
  {
    v23 = *(v12 + 32);
    v41 = v12;
    v24 = v37;
    v23(v39, &v32, v37);
    v23(v40, v34, v24);
    v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
    v26 = v38;
    v27 = v38 + *(v25 + 48);
    v36 = *(v25 + 64);
    v35 = 0;
    v28 = *(v41 + 16);
    v28(v38, v39, v24);
    v28(v27, v40, v24);
    v29 = v36;
    *(v36 + v26) = 0;
    *(v29 + v26 + 8) = 0;
    MLStyleTransfer.DataSource.getStyleImageAndContentTable()(v33, v32);
    outlined destroy of MLActivityClassifier.ModelParameters(v38, type metadata accessor for MLStyleTransfer.DataSource);
    v30 = *(v41 + 8);
    v31 = v37;
    v30(v40, v37);
    v30(v39, v31);
  }
}

uint64_t closure #1 in MLStyleTransfer.init(trainingData:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 56) = a5;
  *(v5 + 25) = a4;
  *(v5 + 48) = a3;
  *(v5 + 40) = a2;
  *(v5 + 32) = a1;
  v6 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  *(v5 + 64) = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL(0);
  *(v5 + 72) = v7;
  v8 = *(v7 - 8);
  *(v5 + 80) = v8;
  *(v5 + 88) = swift_task_alloc((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in MLStyleTransfer.init(trainingData:parameters:), 0, 0);
}

uint64_t closure #1 in MLStyleTransfer.init(trainingData:parameters:)()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(v0 + 48);
  v4 = *(v0 + 25);
  (*(*(v0 + 80) + 16))(*(v0 + 88), *(v0 + 40), *(v0 + 72));
  *(v0 + 16) = v3;
  *(v0 + 24) = v4 & 1;
  outlined init with copy of MLTrainingSessionParameters(v2, v1, type metadata accessor for MLStyleTransfer.ModelParameters);
  outlined copy of Result<_DataTable, Error>(v3, v4);
  v5 = swift_task_alloc(96);
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLStyleTransfer.init(trainingData:parameters:);
  return MLStyleTransfer.init(styleImage:contentTable:parameters:)(*(v0 + 32), *(v0 + 88), v0 + 16, *(v0 + 64));
}

{
  v2 = *(*v1 + 96);
  v3 = *v1;
  *(v3 + 104) = v0;
  v2;
  if (v0)
  {
    return swift_task_switch(closure #1 in MLStyleTransfer.init(trainingData:parameters:), 0, 0);
  }

  v5 = *(v3 + 64);
  *(v3 + 88);
  v5;
  return (*(v3 + 8))();
}

{
  v1 = *(v0 + 64);
  *(v0 + 88);
  v1;
  return (*(v0 + 8))();
}

uint64_t sub_55ACA()
{
  v11 = v0;
  v12 = type metadata accessor for URL(0);
  v1 = *(v12 - 8);
  v2 = *(v1 + 80);
  v3 = ~*(v1 + 80) & (v2 + 16);
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v5 = *(v13 - 8);
  v9 = *(v5 + 80);
  v6 = ~v9 & (v4 + v9 + 9);
  v10 = *(v5 + 64);
  v14 = *(v1 + 8);
  v14(v11 + v3, v12);
  outlined consume of Result<_DataTable, Error>(*(v11 + v4), *(v11 + v4 + 8));
  v7 = v6 + v11 + *(v13 + 20);
  if (!__swift_getEnumTagSinglePayload(v7, 1, v12))
  {
    v14(v7, v12);
  }

  return swift_deallocObject(v11, v10 + v6, v9 | v2 | 7);
}

uint64_t partial apply for closure #1 in MLStyleTransfer.init(trainingData:parameters:)(uint64_t a1)
{
  v3 = *(type metadata accessor for URL(0) - 8);
  v4 = ~*(v3 + 80) & (*(v3 + 80) + 16);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters(0) - 8) + 80);
  v7 = (v5 + v6 + 9) & ~v6;
  v10 = *(v1 + v5);
  LOBYTE(v5) = *(v1 + v5 + 8);
  v8 = swift_task_alloc(112);
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLStyleTransfer.init(trainingData:parameters:)(a1, v1 + v4, v10, v5, v1 + v7);
}

uint64_t MLStyleTransfer.init(styleImage:contentTable:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a4;
  *(v4 + 24) = a2;
  *(v4 + 16) = a1;
  *(v4 + 40) = *a3;
  *(v4 + 84) = *(a3 + 8);
  return swift_task_switch(MLStyleTransfer.init(styleImage:contentTable:parameters:), 0, 0);
}

uint64_t MLStyleTransfer.init(styleImage:contentTable:parameters:)()
{
  v16 = v0 | 0x1000000000000000;
  v15 = v1;
  v14 = *(v1 + 84);
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(type metadata accessor for MLStyleTransfer(0) + 20);
  *(v1 + 80) = v6;
  outlined init with copy of MLTrainingSessionParameters(v3, v6 + v4, type metadata accessor for MLStyleTransfer.ModelParameters);
  v12 = v2;
  v13 = v14;
  v7 = static MLStyleTransfer.validateAndConvertParameters(_:styleImage:contentTable:)(v3, v5, &v12);
  *(v1 + 48) = v7;
  v8 = v7;
  v9 = type metadata accessor for _Model();
  swift_allocObject(v9, 48, 7);

  v10 = swift_task_alloc(112);
  *(v1 + 56) = v10;
  *v10 = v1;
  v10[1] = MLStyleTransfer.init(styleImage:contentTable:parameters:);
  return _Model.init(type:parameters:modelOptions:)(14, v8, 0);
}

{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  outlined destroy of MLActivityClassifier.ModelParameters(v2, type metadata accessor for MLStyleTransfer.ModelParameters);
  v3 = type metadata accessor for URL(0);
  (*(*(v3 - 8) + 8))(v1, v3);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 16) + *(v0 + 80), type metadata accessor for MLStyleTransfer.ModelParameters);
  return (*(v0 + 8))();
}

uint64_t MLStyleTransfer.init(styleImage:contentTable:parameters:)(uint64_t a1)
{
  v5 = *(*v2 + 56);
  v4 = *v2;
  *(*v2 + 64) = v1;
  v5;
  if (v1)
  {
    outlined consume of Result<_DataTable, Error>(*(v4 + 40), *(v4 + 84));
    v6 = MLStyleTransfer.init(styleImage:contentTable:parameters:);
  }

  else
  {
    *(v4 + 72) = a1;
    v6 = MLStyleTransfer.init(styleImage:contentTable:parameters:);
  }

  return swift_task_switch(v6, 0, 0);
}

{
  **(v1 + 16) = *(v1 + 72);
  v2 = AnalyticsReporter.init()();
  v3 = *(v1 + 84);
  if (v2)
  {
    outlined consume of Result<_DataTable, Error>(*(v1 + 40), v3);
  }

  else
  {
    v4 = *(v1 + 32);
    v11 = *(v1 + 40);
    v12 = v3 & 1;
    v5 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v11, v12);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_styleTransfer, __PAIR128__((" training session" + 0x8000000000000000), 0xD000000000000011), v5);
    v6 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_styleTransfer, __PAIR128__(0xEE00736E6F697461, 0x726574492078614DLL), *(v4 + v6[7]));
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_styleTransfer, __PAIR128__(0xEE00797469736E65, 0x44206C6574786554), *(v4 + v6[8]));
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_styleTransfer, __PAIR128__(0xEE006874676E6572, 0x745320656C797453), *(v4 + v6[9]));
  }

  v7 = *(v1 + 24);
  v8 = *(v1 + 32);

  outlined destroy of MLActivityClassifier.ModelParameters(v8, type metadata accessor for MLStyleTransfer.ModelParameters);
  v9 = type metadata accessor for URL(0);
  (*(*(v9 - 8) + 8))(v7, v9);
  return (*(v1 + 8))();
}

uint64_t static MLStyleTransfer.validateAndConvertParameters(_:styleImage:contentTable:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v60 = v3;
  inited = a2;
  v58 = a1;
  v53 = type metadata accessor for _Model.Parameters(0);
  v5 = *(*(v53 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v52 = &v46;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v54 = &v46;
  v10 = *a3;
  v11 = *(a3 + 8);
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v13 = empty;
  v14 = type metadata accessor for CMLParameters();
  v59 = swift_allocObject(v14, 24, 7);
  *(v59 + 16) = v13;
  v50 = v10;
  v51 = v11 & 1;
  outlined copy of Result<_DataTable, Error>(v10, v11);
  v15._countAndFlagsBits = 0x55746E65746E6F63;
  v15._object = 0xEB00000000734C52;
  MLDataTable.subscript.getter(v15);
  outlined consume of Result<_DataTable, Error>(v50, v51);
  v16 = v48;
  if (v49)
  {
    v17 = v48;
    outlined consume of Result<_DataTable, Error>(v48, 1);
    v18 = v60;
  }

  else
  {
    v19 = *(v48 + 16);

    outlined consume of Result<_DataTable, Error>(v16, 0);
    v20 = v59;
    v21 = v60;
    CMLParameters.add(key:column:)(72, v19);
    v18 = v21;
    if (v21)
    {
LABEL_8:

      goto LABEL_10;
    }

    v17 = v19;
  }

  v22 = URL.path.getter(v17);
  v24 = v23;
  v25 = type metadata accessor for _UntypedColumn();
  swift_allocObject(v25, 24, 7);
  v26 = specialized _UntypedColumn.init<A>(repeating:count:)(v22, v24, 1);
  v27 = *(v26 + 16);

  v20 = v59;
  CMLParameters.add(key:column:)(71, v27);
  if (v18)
  {

    goto LABEL_8;
  }

  v60 = v26;

  v28 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v29 = v58;
  v30 = *&v58[*(v28 + 36)];
  static MLStyleTransfer.ModelParameters.verifyStyleStrengthParameter(value:)(v30);
  v55 = v30;
  v31 = *&v29[*(v28 + 32)];
  static MLStyleTransfer.ModelParameters.verifyTextelDensityParameter(value:)(v31);
  v56 = v31;
  v57 = v28;
  v33 = tc_v1_flex_dict_create(0);
  if (!v33)
  {
    BUG();
  }

  v34 = v33;
  v35 = type metadata accessor for CMLDictionary();
  inited = swift_initStackObject(v35, v47);
  *(inited + 16) = v34;
  v36 = *v58;
  v37 = 7237219;
  if (*v58)
  {
    v37 = 0x6574694C6E6E63;
  }

  v38 = v54;
  *v54 = v37;
  *(v38 + 8) = (v36 << 58) | 0xE300000000000000;
  v39 = v53;
  swift_storeEnumTagMultiPayload(v38, v53, 5);
  CMLDictionary.add(_:)(v38);
  outlined destroy of MLActivityClassifier.ModelParameters(v38, type metadata accessor for _Model.Parameters);
  v40 = v52;
  *v52 = *&v58[v57[7]];
  swift_storeEnumTagMultiPayload(v40, v39, 0);
  CMLDictionary.add(_:)(v40);
  outlined destroy of MLActivityClassifier.ModelParameters(v40, type metadata accessor for _Model.Parameters);
  *v40 = *&v58[v57[6]];
  swift_storeEnumTagMultiPayload(v40, v39, 1);
  CMLDictionary.add(_:)(v40);
  outlined destroy of MLActivityClassifier.ModelParameters(v40, type metadata accessor for _Model.Parameters);
  *v40 = 4 * (v56 / 4);
  swift_storeEnumTagMultiPayload(v40, v39, 21);
  CMLDictionary.add(_:)(v40);
  outlined destroy of MLActivityClassifier.ModelParameters(v40, type metadata accessor for _Model.Parameters);
  *v40 = v55;
  swift_storeEnumTagMultiPayload(v40, v39, 22);
  CMLDictionary.add(_:)(v40);
  outlined destroy of MLActivityClassifier.ModelParameters(v40, type metadata accessor for _Model.Parameters);
  v41 = v58[v57[10]];
  v42 = 1869903201;
  if (v58[v57[10]])
  {
    v42 = 7696483;
  }

  *v40 = v42;
  v40[1] = ((v41 ^ 1u) << 56) - 0x1D00000000000000;
  swift_storeEnumTagMultiPayload(v40, v39, 9);
  CMLDictionary.add(_:)(v40);
  outlined destroy of MLActivityClassifier.ModelParameters(v40, type metadata accessor for _Model.Parameters);
  type metadata accessor for CMLFeatureValue();
  v43 = inited;

  v44 = CMLFeatureValue.__allocating_init(_:)(v43);
  v20 = v59;
  CMLParameters.add(key:featureValue:)(47, v44);

  v45 = inited;
  swift_setDeallocating(inited);
  tc_v1_release(*(v45 + 16));
LABEL_10:

  return v20;
}

uint64_t MLStyleTransfer.init(checkpoint:)(uint64_t a1)
{
  v18 = v1;
  v3 = *(type metadata accessor for MLCheckpoint(0) - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  outlined init with copy of MLTrainingSessionParameters(a1, &v18, type metadata accessor for MLCheckpoint);
  v7 = *(v3 + 80);
  v8 = ~*(v3 + 80) & (v7 + 16);
  v9 = swift_allocObject(&unk_38F9D0, v8 + v4, v7 | 7);
  outlined init with take of MLClassifierMetrics(&v18, v9 + v8, type metadata accessor for MLCheckpoint);
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLStyleTransfer.init(checkpoint:), v9);
  if (v2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLCheckpoint);
  }

  else
  {
    v12 = v10;

    outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLCheckpoint);
    v13 = v18;
    *v18 = v12;
    v19 = *(type metadata accessor for MLStyleTransfer(0) + 20);
    v14 = v13 + v19;
    v15 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
    v16 = &v14[v15[5]];
    v17 = type metadata accessor for URL(0);
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
    *&v14[v15[6]] = 1;
    v14[v15[10]] = 0;
    *(v18 + v19) = 0;
    *&v14[v15[7]] = 500;
    *&v14[v15[8]] = 256;
    result = v15[9];
    *&v14[result] = 5;
  }

  return result;
}

uint64_t closure #1 in MLStyleTransfer.init(checkpoint:)(uint64_t a1, uint64_t a2)
{
  v2[6] = a2;
  v2[5] = a1;
  v3 = type metadata accessor for URL(0);
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in MLStyleTransfer.init(checkpoint:), 0, 0);
}

uint64_t closure #1 in MLStyleTransfer.init(checkpoint:)()
{
  (*(v0[8] + 16))(v0[9], v0[6], v0[7]);
  v2 = URL.absoluteString.getter();
  v3 = v1;
  if ((v1 & 0x1000000000000000) != 0 || !(v1 & 0x2000000000000000 | v2 & 0x1000000000000000))
  {
    _StringGuts._slowWithCString<A>(_:)(closure #1 in CMLModel.init(url:), 0, v2, v1, &type metadata for OpaquePointer);
LABEL_7:
    v3;
    goto LABEL_10;
  }

  v15 = v0 + 4;
  v4 = swift_task_alloc(32);
  *(v4 + 24) = 0;
  *(v4 + 16) = closure #1 in CMLModel.init(url:);
  if ((v3 & 0x2000000000000000) == 0)
  {
    if ((v2 & 0x1000000000000000) != 0)
    {
      v5 = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v6 = v2 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = _StringObject.sharedUTF8.getter(v2, v3);
      v6 = v14;
    }

    *v15 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v5, v6, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
    v4;
    goto LABEL_7;
  }

  v0[2] = v2;
  v0[3] = v3 & 0xFFFFFFFFFFFFFFLL;
  v7 = specialized handling<A, B>(_:_:)((v0 + 2));
  if (!v7)
  {
    BUG();
  }

  *v15 = v7;
  v3;
  v4;
LABEL_10:
  v8 = v0[4];
  (*(v0[8] + 8))(v0[9], v0[7]);
  v9 = type metadata accessor for CMLModel();
  v10 = swift_allocObject(v9, 24, 7);
  *(v10 + 16) = v8;
  v11 = type metadata accessor for _Model();
  swift_allocObject(v11, 48, 7);
  v12 = swift_task_alloc(80);
  v0[10] = v12;
  *v12 = v0;
  v12[1] = closure #1 in MLStyleTransfer.init(checkpoint:);
  return _Model.init(impl:)(v10);
}

{
  v1 = *(v0 + 72);
  **(v0 + 40) = *(v0 + 88);
  v1;
  return (*(v0 + 8))();
}

uint64_t closure #1 in MLStyleTransfer.init(checkpoint:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  v5;
  if (v1)
  {
    *(v4 + 72);
    return (*(v6 + 8))();
  }

  else
  {
    *(v4 + 88) = a1;
    return swift_task_switch(closure #1 in MLStyleTransfer.init(checkpoint:), 0, 0);
  }
}

uint64_t sub_56A30()
{
  v11 = v0;
  v1 = type metadata accessor for MLCheckpoint(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = ~*(v2 + 80) & (v3 + 16);
  v5 = v4 + v0;
  v6 = *(v2 + 64) + v4;
  v7 = type metadata accessor for URL(0);
  (*(*(v7 - 8) + 8))(v5, v7);
  v8 = v5 + *(v1 + 28);
  v9 = type metadata accessor for Date(0);
  (*(*(v9 - 8) + 8))(v8, v9);
  *(*(v1 + 32) + v5);
  return swift_deallocObject(v11, v6, v3 | 7);
}

uint64_t partial apply for closure #1 in MLStyleTransfer.init(checkpoint:)(uint64_t a1)
{
  v3 = type metadata accessor for MLCheckpoint(0);
  v4 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 16));
  v5 = swift_task_alloc(96);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLStyleTransfer.init(checkpoint:)(a1, v4);
}

void *static MLStyleTransfer.train(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = static MLStyleTransfer.makeTrainingSession(trainingData:parameters:sessionParameters:)(a1, a2, a3);
  if (!v3)
  {
    v5 = result;
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLStyleTransfer>);
    v7 = swift_allocObject(v6, *(v6 + 48), *(v6 + 52));
    return specialized MLJob.init(_:)(v7, v5);
  }

  return result;
}

uint64_t static MLStyleTransfer.makeTrainingSession(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = v3;
  v26 = a2;
  v24 = a1;
  v5 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v25 = &v21;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v10 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = *(*(type metadata accessor for MLStyleTransfer.DataSource(0) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  outlined init with copy of MLTrainingSessionParameters(v24, &v21, type metadata accessor for MLStyleTransfer.DataSource);
  outlined init with copy of MLTrainingSessionParameters(v26, &v21, type metadata accessor for MLStyleTransfer.ModelParameters);
  v26 = a3;
  outlined init with copy of MLTrainingSessionParameters(a3, &v21, type metadata accessor for MLTrainingSessionParameters);
  v16 = type metadata accessor for MLStyleTransfer.TrainingSessionDelegate(0);
  swift_allocObject(v16, *(v16 + 48), *(v16 + 52));
  v17 = v23;
  result = MLStyleTransfer.TrainingSessionDelegate.init(trainingData:modelParameters:sessionParameters:)(&v21, &v21, &v21);
  if (!v17)
  {
    v22[3] = v16;
    v22[4] = &protocol witness table for MLStyleTransfer.TrainingSessionDelegate;
    v22[0] = result;
    v19 = v25;
    outlined init with copy of MLTrainingSessionParameters(v26, v25, type metadata accessor for MLTrainingSessionParameters);
    v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>);
    swift_allocObject(v20, *(v20 + 48), *(v20 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v22, v19, 14);
  }

  return result;
}

void *static MLStyleTransfer.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLStyleTransfer>);
  v2 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));

  return specialized MLJob.init(_:)(v2, a1);
}

uint64_t static MLStyleTransfer.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v2 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v12 = v11;
  v5 = alloca(v2);
  v6 = alloca(v2);
  outlined init with copy of MLTrainingSessionParameters(a1, v11, type metadata accessor for MLTrainingSessionParameters);
  v7 = type metadata accessor for MLStyleTransfer.TrainingSessionDelegate(0);
  swift_allocObject(v7, *(v7 + 48), *(v7 + 52));
  result = MLStyleTransfer.TrainingSessionDelegate.init(sessionParameters:)(v11);
  if (!v1)
  {
    v11[3] = v7;
    v11[4] = &protocol witness table for MLStyleTransfer.TrainingSessionDelegate;
    v11[0] = result;
    v9 = v12;
    outlined init with copy of MLTrainingSessionParameters(a1, v12, type metadata accessor for MLTrainingSessionParameters);
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>);
    swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v11, v9, 14);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static MLStyleTransfer.resume(_:)(void *a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v52 = a5;
  v53 = a4;
  v54 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLStyleTransfer, Error>);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TaskPriority?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v50 = &v42;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v45 = &v42;
  v16 = type metadata accessor for MLStyleTransfer.PersistentParameters(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v20 = alloca(v17);
  v21 = alloca(v17);
  if (a2)
  {
    v22 = v54;
    v42 = v54;
    swift_storeEnumTagMultiPayload(&v42, v6, 1);
    swift_errorRetain(v22);
    v53(&v42);
    v23 = &v42;
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v23, &demangling cache variable for type metadata for Result<MLStyleTransfer, Error>);
  }

  v48 = *(v16 - 8);
  v47 = v17;
  v46 = &v42;
  v54 = &v42;
  outlined init with copy of TabularRegressionTask(direct field offset for MLTrainingSession.delegate + a3, v43);
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingSessionDelegate);
  v25 = type metadata accessor for MLStyleTransfer.TrainingSessionDelegate(0);
  if (!swift_dynamicCast(&v44, v43, v24, v25, 6))
  {
    v31 = v53;
    v30 = v54;
    goto LABEL_7;
  }

  v51 = v44;
  v26 = v44 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v44 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters, v43, 0, 0);
  v27 = v26;
  v28 = v45;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v27, v45, &demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v16);
  v30 = v54;
  if (EnumTagSinglePayload == 1)
  {

    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v28, &demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?);
    v31 = v53;
LABEL_7:
    v32 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v33 = swift_allocError(&type metadata for MLCreateError, v32, 0, 0);
    *v34 = 0xD000000000000021;
    *(v34 + 8) = "ults from vision request." + 0x8000000000000000;
    *(v34 + 16) = 0;
    *(v34 + 32) = 0;
    *(v34 + 48) = 0;
    *v30 = v33;
    swift_storeEnumTagMultiPayload(v30, v6, 1);
    v31(v30);
    v23 = v30;
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v23, &demangling cache variable for type metadata for Result<MLStyleTransfer, Error>);
  }

  v49 = &v42;
  outlined init with take of MLClassifierMetrics(v28, &v42, type metadata accessor for MLStyleTransfer.PersistentParameters);
  v36 = type metadata accessor for TaskPriority(0);
  __swift_storeEnumTagSinglePayload(v50, 1, 1, v36);
  v37 = v46;
  outlined init with copy of MLTrainingSessionParameters(&v42, v46, type metadata accessor for MLStyleTransfer.PersistentParameters);
  v38 = *(v48 + 80);
  v39 = ~*(v48 + 80) & (v38 + 40);
  v40 = (v47 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject(&unk_38FAC8, v40 + 16, v38 | 7);
  *(v41 + 16) = 0;
  *(v41 + 32) = v51;
  outlined init with take of MLClassifierMetrics(v37, v41 + v39, type metadata accessor for MLStyleTransfer.PersistentParameters);
  *(v41 + v40) = v53;
  *(v41 + v40 + 8) = v52;

  _sScTss5NeverORs_rlE8priority9operationScTyxABGScPSg_xyYaYAcntcfCyt_Tt1g5(v50, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:), v41);

  return outlined destroy of MLActivityClassifier.ModelParameters(v49, type metadata accessor for MLStyleTransfer.PersistentParameters);
}

uint64_t closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a7;
  v7[4] = a6;
  v7[3] = a5;
  v7[2] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLStyleTransfer, Error>);
  v7[6] = swift_task_alloc((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:)()
{
  v1 = swift_task_alloc(32);
  *(v0 + 56) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc(64);
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:);
  return ((&_ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC15MLStyleTransferV_Tt1g5Tu + _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC15MLStyleTransferV_Tt1g5Tu))(*(v0 + 48), &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:), v1);
}

{
  v1 = *(*v0 + 56);
  *(*v0 + 64);
  v1;
  return swift_task_switch(closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:), 0, 0);
}

{
  v1 = *(v0 + 48);
  (*(v0 + 32))(v1);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &demangling cache variable for type metadata for Result<MLStyleTransfer, Error>);
  v1;
  return (*(v0 + 8))();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a2;
  v3[2] = a1;
  v4 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v3[5] = v4;
  v3[6] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:)()
{
  v1 = v0[6];
  v2 = v0[5];
  v3 = v0[4];
  v10 = *(v0[3] + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model);
  v4 = type metadata accessor for MLStyleTransfer.PersistentParameters(0);
  v11 = *(v3 + v4[5]);
  outlined init with copy of MLTrainingSessionParameters(v3 + v4[6], &v1[v2[5]], type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  v5 = *(v3 + v4[7]);
  v6 = *(v3 + v4[8]);
  *&v1[v2[6]] = 1;
  v7 = v2[10];
  *v1 = v11;
  *&v1[v2[7]] = 500;
  *&v1[v2[8]] = v5;
  *&v1[v2[9]] = v6;
  v1[v7] = *(v3 + v4[9]);

  v8 = swift_task_alloc(64);
  v0[7] = v8;
  *v8 = v0;
  v8[1] = closure #1 in closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:);
  return MLStyleTransfer.init(model:parameters:)(v0[2], v10, v0[6]);
}

{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;
  v2;
  if (v0)
  {
    return swift_task_switch(closure #1 in closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:), 0, 0);
  }

  *(v3 + 48);
  return (*(v3 + 8))();
}

{
  *(v0 + 48);
  return (*(v0 + 8))();
}

CGImageRef_optional __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLStyleTransfer.stylize(image:)(CGImageRef image)
{
  v2 = type metadata accessor for VNImageOption(0);
  v3 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type VNImageOption and conformance VNImageOption, type metadata accessor for VNImageOption, &protocol conformance descriptor for VNImageOption);
  v4 = image;
  v5 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v2, &type metadata for Any + 8, v3);
  objc_allocWithZone(VNImageRequestHandler);
  v6 = @nonobjc VNImageRequestHandler.init(cgImage:options:)(v4, v5);
  v7 = MLStyleTransfer.stylize(using:)(v6);
  if (v1)
  {
  }

  else
  {
    v9 = v7;
    imageOut = 0;
    VTCreateCGImageFromCVPixelBuffer(v7, 0, &imageOut);

    return imageOut;
  }

  return result;
}

id MLStyleTransfer.stylize(using:)(id a1)
{
  v3 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for VNCoreMLModel, VNCoreMLModel_ptr);
  v4 = *(*v2 + 24);
  v5 = v3;
  v6 = @nonobjc VNCoreMLModel.__allocating_init(for:)(v4);
  if (v1)
  {
    return v5;
  }

  v7 = v6;
  v8 = objc_allocWithZone(VNCoreMLRequest);
  v9 = [v8 initWithModel:v7];
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>);
  v11 = swift_allocObject(v10, 40, 7);
  v28 = v7;
  LOBYTE(v7) = v11;
  v11[2] = 1;
  v11[3] = 3;
  v11[4] = v9;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for VNRequest, VNRequest_ptr);
  v29 = v9;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7;
  v31 = 0;
  LOBYTE(v9) = [a1 performRequests:isa error:&v31];

  v13 = v31;
  if (!v9)
  {
    v26 = v31;
    _convertNSErrorToError(_:)(v13);

    v25 = v28;
    v5 = v29;
    goto LABEL_10;
  }

  v14 = v29;
  v13;
  v30 = v14;
  v15 = outlined bridged method (ob) of @objc VNRequest.results.getter(v14);
  if (!v15 || (v18 = v15, v19 = specialized _arrayConditionalCast<A, B>(_:)(v15, "performRequests:error:", v16, v17), v18, !v19))
  {
    v23 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v23, 0, 0);
    *v24 = 0xD000000000000039;
    *(v24 + 8) = "textel density out of bounds [" + 0x8000000000000000;
    *(v24 + 16) = 0;
    *(v24 + 32) = 0;
    *(v24 + 48) = 0;
    v5 = v28;
    v25 = v30;
LABEL_10:
    swift_willThrow();

    return v5;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v19 & 0xC000000000000003) == 0, v19);
  if ((v19 & 0xC000000000000003) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)(0);
  }

  else
  {
    v20 = *(v19 + 32);
  }

  v21 = v20;
  v19;
  v22 = [v21 pixelBuffer];
  v5 = v22;

  return v5;
}

uint64_t MLStyleTransfer.getFullMetadata(_:)(uint64_t *a1)
{
  v2 = v1;
  v3 = a1[1];
  if (v3)
  {
    v26 = *a1;
    v4 = a1[8];
    type metadata accessor for MLStyleTransfer(0);
    v19[0] = v26;
    v19[1] = v3;
    v5 = *(a1 + 2);
    v6 = *(a1 + 3);
    v20 = *(a1 + 1);
    v21 = v5;
    v22 = v6;
    if (v4)
    {
      v23 = v4;
      outlined retain of MLModelMetadata(v19);
      v7 = MLStyleTransfer.ModelParameters.modelParametersDescription()();
      v25 = v3;
      v8 = v7;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v4);
      v24 = v4;
      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v8, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v24);
      v3 = v25;
      result = v24;
    }

    else
    {
      v23 = 0;
      outlined retain of MLModelMetadata(v19);
      result = MLStyleTransfer.ModelParameters.modelParametersDescription()();
    }

    *v2 = v26;
    *(v2 + 8) = v3;
    v17 = *(a1 + 2);
    v18 = *(a1 + 3);
    *(v2 + 16) = *(a1 + 1);
    *(v2 + 32) = v17;
    *(v2 + 48) = v18;
    *(v2 + 64) = result;
  }

  else
  {
    v11 = NSFullUserName();
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)(v12);
    v15 = v14;

    MLModelMetadata.init(author:shortDescription:license:version:additional:)(v13, v15, 0xD000000000000033, ("RandomForestRegressor" + 0x8000000000000000), 0, 0, 49, 0xE100000000000000, 0);
    type metadata accessor for MLStyleTransfer(0);
    v16 = MLStyleTransfer.ModelParameters.modelParametersDescription()();
    result = *(v2 + 64);
    *(v2 + 64) = v16;
  }

  return result;
}

uint64_t MLStyleTransfer.ModelParameters.modelParametersDescription()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, String)>);
  inited = swift_initStackObject(v1, v9);
  *(inited + 16) = 3;
  *(inited + 24) = 6;
  *(inited + 32) = 0x687469726F676C41;
  *(inited + 40) = 0xE90000000000006DLL;
  v3 = *v0;
  v4 = 7237219;
  if (*v0)
  {
    v4 = 0x6574694C6E6E63;
  }

  *(inited + 48) = v4;
  *(inited + 56) = (v3 << 58) | 0xE300000000000000;
  strcpy((inited + 64), "Textel Density");
  *(inited + 79) = -18;
  v5 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v10 = *&v0[*(v5 + 32)];
  *(inited + 80) = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  *(inited + 88) = v6;
  strcpy((inited + 96), "Style Strength");
  *(inited + 111) = -18;
  v10 = *&v0[*(v5 + 36)];
  *(inited + 112) = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  *(inited + 120) = v7;
  return Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for String, &protocol witness table for String);
}

uint64_t *MLStyleTransfer.write(to:metadata:)(uint64_t a1, uint64_t *a2)
{
  MLStyleTransfer.getFullMetadata(_:)(a2);
  _Model.write(to:metadata:)(a1, v4);
  qmemcpy(v3, v4, sizeof(v3));
  return outlined release of MLModelMetadata?(v3);
}

uint64_t *MLStyleTransfer.write(toFile:metadata:)(uint64_t a1, void *a2, uint64_t *a3)
{
  MLStyleTransfer.getFullMetadata(_:)(a3);
  _Model.write(toFile:metadata:)(a1, a2, v5);
  qmemcpy(v4, v5, sizeof(v4));
  return outlined release of MLModelMetadata?(v4);
}

uint64_t *static MLStyleTransfer.downloadAssets()()
{
  v1 = type metadata accessor for _Model();
  swift_allocObject(v1, 48, 7);
  result = _Model.init(type:)(0xEu);
  if (!v0)
  {

    CMLModel.requestStyleTransferAssets()();
  }

  return result;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> CMLModel.requestStyleTransferAssets()()
{
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v2 = empty;
  v3 = type metadata accessor for CMLParameters();
  inited = swift_initStackObject(v3, v5);
  *(inited + 16) = v2;
  CMLModel.callFunction(name:arguments:)(20, inited);
  if (!v0)
  {
  }

  swift_setDeallocating(inited);
  tc_v1_release(*(inited + 16));
}

void MLStyleTransfer.DataSource.processImages(textelDensity:styleImageDestination:contentImagesDestination:)(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void (*a5)(uint64_t *, uint64_t *, uint64_t))
{
  v123 = v5;
  v109 = v6;
  v114 = a5;
  imagesDictionary._rawValue = a4;
  v113 = a2;
  v98 = a1;
  v101 = type metadata accessor for UUID(0);
  v95 = *(v101 - 8);
  v8 = *(v95 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v96 = &v95;
  v115 = type metadata accessor for UTType(0);
  v11 = *(v115 - 8);
  v12 = v11[8];
  v13 = alloca(v12);
  v14 = alloca(v12);
  v105 = &v95;
  v120 = type metadata accessor for URL(0);
  v121 = *(v120 - 8);
  v15 = *(v121 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v110 = &v95;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v97 = &v95;
  v20 = alloca(v15);
  v21 = alloca(v15);
  v104 = &v95;
  v22 = alloca(v15);
  v23 = alloca(v15);
  v111 = &v95;
  v24 = alloca(v15);
  v25 = alloca(v15);
  v118 = &v95;
  v26 = alloca(v15);
  v27 = alloca(v15);
  v119 = &v95;
  v28 = alloca(v15);
  v29 = alloca(v15);
  v117 = &v95;
  v30 = *(*(type metadata accessor for MLStyleTransfer.DataSource(0) - 8) + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  v33 = v123;
  static MLStyleTransfer.ModelParameters.verifyTextelDensityParameter(value:)(a3);
  if (!v33)
  {
    v112 = v11;
    v106 = a3 / 4;
    v123 = 0;
    outlined init with copy of MLTrainingSessionParameters(v109, &v95, type metadata accessor for MLStyleTransfer.DataSource);
    v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
    v35 = &v95 + *(v34 + 48);
    v36 = *(v34 + 64);
    v109 = *(&v95 + v36);
    LOBYTE(v116) = *(&v95 + v36 + 8);
    v37 = *(v121 + 32);
    v38 = v117;
    v39 = v120;
    v37(v117, &v95, v120);
    v99 = v37;
    v37(v119, v35, v39);
    v40 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CIImage, CIImage_ptr);
    v41 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v42 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v39, v40, v41);
    v43 = v123;
    MLStyleTransfer.DataSource.getProcessedStyleImageURL(for:destination:)(v38, imagesDictionary._rawValue);
    if (v43)
    {
      v42;
      v44 = *(v121 + 8);
      v44(v119, v39);
      v44(v117, v39);
    }

    else
    {
      v45 = 4 * v106;
      v116 = v116;
      v46 = MLStyleTransfer.DataSource.processImage(sourceURL:textelDensity:processingOption:)(v117, 4 * v106, v109, v116);
      v106 = v45;
      v47 = v46;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v42);
      v108 = v42;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v47, v118, isUniquelyReferenced_nonNull_native);
      imagesDictionary._rawValue = v108;
      MLStyleTransfer.DataSource.getProcessedContentImagesDirectory(for:)(v114);
      v107 = v47;
      v49 = v105;
      static UTType.image.getter();
      v50 = static _FileUtilities.readableFiles(at:type:)(v119, v49);
      v123 = 0;
      v51 = v120;
      v52 = v117;
      (v112[1])(v49, v115);
      v53 = v50[2];
      if (v53)
      {
        v54 = (*(v121 + 80) + 32) & ~*(v121 + 80);
        v103 = v50;
        v55 = (v50 + v54);
        v56 = *(v121 + 16);
        v102 = *(v121 + 72);
        v57 = v101;
        v58 = v111;
        v114 = v56;
        while (1)
        {
          v105 = v53;
          v112 = v55;
          v56(v58, v55, v51);
          v59 = v96;
          UUID.init()();
          v60 = UUID.uuidString.getter();
          v62 = v61;
          (*(v95 + 8))(v59, v57);
          v63 = v97;
          URL.appendingPathComponent(_:)(v60, v62);
          v64 = v120;
          v62;
          URL.appendingPathExtension(_:)(6778480, 0xE300000000000000);
          v65 = v64;
          v66 = *(v121 + 8);
          v66(v63, v64);
          v67 = v123;
          v68 = MLStyleTransfer.DataSource.processImage(sourceURL:textelDensity:processingOption:)(v111, v106, v109, v116);
          v123 = v67;
          v69 = v104;
          if (v67)
          {
            break;
          }

          v70 = v68;
          v100 = v66;
          v71 = v110;
          v114(v110, v104, v65);
          v115 = v70;
          rawValue = imagesDictionary._rawValue;
          v73 = swift_isUniquelyReferenced_nonNull_native(imagesDictionary._rawValue);
          v108 = rawValue;
          v74 = specialized __RawDictionaryStorage.find<A>(_:)(v71);
          v124 = v75;
          v76 = (v75 & 1) == 0;
          v77 = __OFADD__(rawValue[2], v76);
          v78 = rawValue[2] + v76;
          if (v77)
          {
            BUG();
          }

          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<URL, CIImage>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v73, v78))
          {
            v79 = v110;
            v74 = specialized __RawDictionaryStorage.find<A>(_:)(v110);
            LOBYTE(v80) = v80 & 1;
            LOBYTE(v81) = v124;
            if ((v124 & 1) != v80)
            {
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v120, v78, v80, v81);
              BUG();
            }

            v82 = v115;
            v83 = v79;
          }

          else
          {
            v83 = v110;
            v82 = v115;
            LOBYTE(v81) = v124;
          }

          imagesDictionary._rawValue = v108;
          if (v81)
          {
            v84 = v108[7];

            *(v84 + 8 * v74) = v82;
            v85 = v110;
            v86 = v82;
          }

          else
          {
            v108[(v74 >> 6) + 8] |= 1 << v74;
            v114((*(imagesDictionary._rawValue + 6) + v102 * v74), v83, v120);
            v87 = imagesDictionary._rawValue;
            *(*(imagesDictionary._rawValue + 7) + 8 * v74) = v82;
            v88 = v87[2];
            v77 = __OFADD__(1, v88);
            v89 = v88 + 1;
            if (v77)
            {
              BUG();
            }

            v87[2] = v89;
            v86 = v115;
            v85 = v83;
          }

          v51 = v120;
          v90 = v100;
          v100(v85, v120);
          (objc_release)(v86);
          v90(v104, v51);
          v58 = v111;
          v90(v111, v51);
          v55 = (v112 + v102);
          v53 = (v105 - 1);
          v56 = v114;
          v57 = v101;
          if (v105 == (&dword_0 + 1))
          {
            v103;
            v91 = v117;
            goto LABEL_21;
          }
        }

        v66(v69, v64);
        v66(v111, v64);
        v103;
        v66(v113, v64);
        v66(v118, v64);
        imagesDictionary._rawValue;
        v66(v119, v64);
        v66(v117, v64);
      }

      else
      {
        v50;
        v91 = v52;
LABEL_21:
        v92 = imagesDictionary._rawValue;
        MLStyleTransfer.DataSource.saveImagesToDisk(imagesDictionary:)(imagesDictionary);

        v92;
        v94 = *(v121 + 8);
        if (v93)
        {
          v94(v113, v51);
          v94(v118, v51);
          v94(v119, v51);
          v94(v91, v51);
        }

        else
        {
          v94(v119, v51);
          v94(v91, v51);
          v99(v98, v118, v51);
        }
      }
    }
  }
}