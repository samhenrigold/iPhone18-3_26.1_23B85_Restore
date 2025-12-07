uint64_t _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy10Foundation3URLVSSG7ElementRtzAoPRt_r0_lufCSayAOG_ASTt3g5TY3_()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 88), type metadata accessor for MLSoundClassifier.ModelParameters);
  v4;
  v3;
  v1;
  v2;
  return (*(v0 + 8))();
}

uint64_t specialized closure #3 in MLSoundClassifier.init<A, B>(training:validation:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a6;
  v6[6] = a5;
  v6[5] = a4;
  v6[4] = a3;
  v6[3] = a2;
  v6[2] = a1;
  v7 = *(type metadata accessor for TrainingTablePrinter(0) - 8);
  v6[8] = v7;
  v8 = *(v7 + 64);
  v6[9] = v8;
  v6[10] = swift_task_alloc((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized closure #3 in MLSoundClassifier.init<A, B>(training:validation:parameters:), 0, 0);
}

uint64_t specialized closure #3 in MLSoundClassifier.init<A, B>(training:validation:parameters:)()
{
  v1 = v0[10];
  v2 = v0[9];
  v3 = v0[8];
  v4 = v0[6];
  outlined init with copy of MLTrainingSessionParameters(v0[7], v1, type metadata accessor for TrainingTablePrinter);
  v5 = *(v3 + 80);
  v6 = ~*(v3 + 80) & (v5 + 24);
  v7 = swift_allocObject(&unk_394118, v6 + v2, v5 | 7);
  v0[11] = v7;
  *(v7 + 16) = v4;
  outlined init with take of MLClassifierMetrics(v1, v7 + v6, type metadata accessor for TrainingTablePrinter);

  v8 = swift_task_alloc(208);
  v0[12] = v8;
  *v8 = v0;
  v8[1] = specialized closure #3 in MLSoundClassifier.init<A, B>(training:validation:parameters:);
  return ((&async function pointer to specialized MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:) + async function pointer to specialized MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:)))(v0[2], v0[4], v0[5], partial apply for closure #2 in SoundClassifierTrainingSessionDelegate.train(from:), v7);
}

{
  v2 = *(*v1 + 96);
  v3 = *v1;
  *(v3 + 104) = v0;
  v2;

  if (v0)
  {
    return swift_task_switch(specialized closure #3 in MLSoundClassifier.init<A, B>(training:validation:parameters:), 0, 0);
  }

  *(v3 + 80);
  return (*(v3 + 8))();
}

{
  *(v0 + 80);
  return (*(v0 + 8))();
}

uint64_t specialized closure #4 in MLSoundClassifier.init<A, B>(training:validation:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[4] = a3;
  v5[3] = a2;
  v5[2] = a1;
  v6 = *(type metadata accessor for TrainingTablePrinter(0) - 8);
  v5[7] = v6;
  v7 = *(v6 + 64);
  v5[8] = v7;
  v5[9] = swift_task_alloc((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized closure #4 in MLSoundClassifier.init<A, B>(training:validation:parameters:), 0, 0);
}

uint64_t specialized closure #4 in MLSoundClassifier.init<A, B>(training:validation:parameters:)()
{
  v1 = v0[9];
  v2 = v0[8];
  v3 = v0[7];
  v4 = v0[5];
  outlined init with copy of MLTrainingSessionParameters(v0[6], v1, type metadata accessor for TrainingTablePrinter);
  v5 = *(v3 + 80);
  v6 = ~*(v3 + 80) & (v5 + 24);
  v7 = swift_allocObject(&unk_3940F0, v6 + v2, v5 | 7);
  v0[10] = v7;
  *(v7 + 16) = v4;
  outlined init with take of MLClassifierMetrics(v1, v7 + v6, type metadata accessor for TrainingTablePrinter);

  v8 = swift_task_alloc(208);
  v0[11] = v8;
  *v8 = v0;
  v8[1] = specialized closure #4 in MLSoundClassifier.init<A, B>(training:validation:parameters:);
  return ((&async function pointer to specialized MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:) + async function pointer to specialized MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:)))(v0[2], v0[4], partial apply for closure #1 in closure #4 in MLSoundClassifier.init<A, B>(training:validation:parameters:), v7);
}

{
  v2 = *(*v1 + 88);
  v3 = *v1;
  *(v3 + 96) = v0;
  v2;

  if (v0)
  {
    return swift_task_switch(specialized closure #4 in MLSoundClassifier.init<A, B>(training:validation:parameters:), 0, 0);
  }

  *(v3 + 72);
  return (*(v3 + 8))();
}

{
  *(v0 + 72);
  return (*(v0 + 8))();
}

uint64_t specialized MLSoundClassifier.evaluate<A>(on:)(uint64_t a1)
{
  v25 = v2;
  v26 = a1;
  v27 = v1;
  v4 = *(type metadata accessor for MLSoundClassifier(0) - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  outlined init with copy of MLTrainingSessionParameters(v3, &v22, type metadata accessor for MLSoundClassifier);
  v8 = *(v4 + 80);
  v9 = ~*(v4 + 80) & (v8 + 16);
  v10 = (v9 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject(&unk_394050, v10 + 8, v8 | 7);
  v12 = v11 + v9;
  v13 = v26;
  outlined init with take of MLClassifierMetrics(&v22, v12, type metadata accessor for MLSoundClassifier);
  *(v11 + v10) = v13;

  v14 = v25;
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for specialized closure #1 in MLSoundClassifier.evaluate<A>(on:), v11);
  v16 = v15;

  if (!v14)
  {
    MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm(v16, &demangling cache variable for type metadata for AnnotatedPrediction<ClassificationDistribution<String>, String>, &unk_346D40);
    v16;
    v24 = MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm;
    v23 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm(v13, &demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>, &unk_346D08);
    v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
    v20 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
    ClassificationMetrics.init<A, B>(_:_:)(&v24, &v23, &type metadata for String, v19, v19, &protocol witness table for String, v20, v20);
    return v21;
  }

  return result;
}

char static MLSoundClassifier.reportAnalytics(trainingExampleCount:classCount:parameters:)(Swift::Int quantity, Swift::Int a2, uint64_t a3)
{
  result = AnalyticsReporter.init()();
  if (result)
  {
    return result;
  }

  AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_soundClassifier, __PAIR128__((" training session" + 0x8000000000000000), 0xD000000000000011), quantity);
  AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_soundClassifier, __PAIR128__(("Number of Images" + 0x8000000000000000), 0xD000000000000011), a2);
  v5 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_soundClassifier, __PAIR128__(0xEE00736E6F697461, 0x726574492078614DLL), *(a3 + v5[5]));
  v6 = *(a3 + v5[6]);
  AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_soundClassifier, __PAIR128__(0xEE00726F74636146, 0x2070616C7265764FLL), v6);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a3 + v5[7], &v16, &demangling cache variable for type metadata for Any?);
  if (!v17)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v16, &demangling cache variable for type metadata for Any?);
    goto LABEL_6;
  }

  if (!swift_dynamicCast(&v18, &v16, &type metadata for Any + 8, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, 6))
  {
LABEL_6:
    v8 = 1;
    v7 = 1;
    v9 = 0;
    goto LABEL_7;
  }

  v7 = v18;
  v8 = v19;
  v9 = v20;
LABEL_7:
  v16._countAndFlagsBits = v7;
  LOBYTE(v16._object) = v8 & 1;

  v21 = MLSoundClassifier.ModelParameters.FeatureExtractorType.description.getter();
  v11 = v10;
  if (v9)
  {
    v9;
    v12 = 0xD000000000000015;
    v13 = "Feature Extractor: ";
  }

  else
  {
    0;
    v12 = 0xD000000000000012;
    v13 = "Multilayer Perceptron";
  }

  v16._countAndFlagsBits = v21;
  v16._object = v11;

  v14._countAndFlagsBits = v12;
  v14._object = (v13 | 0x8000000000000000);
  String.append(_:)(v14);
  v9;
  v11;
  v13;
  object = v16._object;
  AnalyticsReporter.reportParameterSettings(model:parameterName:parameterValue:)(CreateML_ModelType_soundClassifier, __PAIR128__(0xE90000000000006DLL, 0x687469726F676C41), v16);
  return object;
}

uint64_t MLSoundClassifier.init(checkpoint:)(uint64_t a1)
{
  v110 = v2;
  v111 = a1;
  v3 = v1;
  v95 = *(type metadata accessor for MLSoundClassifier.Model(0) - 8);
  v4 = *(v95 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v93 = &v84;
  v94 = v4;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v104 = &v84;
  v90 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v9 = *(*(v90 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v89 = &v84;
  v88 = type metadata accessor for MLSoundClassifier.Classifier(0);
  v12 = *(*(v88 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v105 = &v84;
  v15 = *(*(type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v91 = &v84;
  v92 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
  v18 = *(*(v92 - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v109 = &v84;
  v107 = type metadata accessor for URL(0);
  v100 = *(v107 - 8);
  v21 = *(v100 + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v101 = &v84;
  v24 = alloca(v21);
  v25 = alloca(v21);
  v102 = &v84;
  v26 = alloca(v21);
  v27 = alloca(v21);
  v108 = &v84;
  v28 = alloca(v21);
  v29 = alloca(v21);
  v113 = &v84;
  v112 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v97 = *(v112 - 1);
  v30 = *(v97 + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  v33 = type metadata accessor for TrainingTablePrinter(0);
  v106 = v3;
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v33);
  v34 = type metadata accessor for MLSoundClassifier(0);
  v98 = *(v34 + 32);
  v35 = v3 + v98;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v84);
  (*(v97 + 8))(&v84, v112);
  v36 = v106;
  *(v106 + v98) = 0;
  v112 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v97 = v35;
  swift_storeEnumTagMultiPayload(v35, v112, 1);
  v99 = v34;
  v37 = *(v34 + 36);
  v103 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v38 = swift_allocError(&type metadata for MLCreateError, v103, 0, 0);
  *v39 = 0xD0000000000000C0;
  *(v39 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v39 + 16) = 0;
  *(v39 + 32) = 0;
  *(v39 + 48) = 0;
  *(v36 + v37) = v38;
  v98 = v36 + v37;
  swift_storeEnumTagMultiPayload(v36 + v37, v112, 2);
  switch(*(v111 + *(type metadata accessor for MLCheckpoint(0) + 20)))
  {
    case 0:
      v40 = 0x696C616974696E69;
      v41 = 0xEB0000000064657ALL;
      break;
    case 1:
      v40 = 0x6974636172747865;
      goto LABEL_7;
    case 2:
      v42 = 0xE800000000000000;
      0;
      v43 = v113;
      goto LABEL_9;
    case 3:
      v40 = 0x697461756C617665;
LABEL_7:
      v41 = 0xEA0000000000676ELL;
      break;
    case 4:
      v41 = 0xEB00000000676E69;
      v40 = 0x636E657265666E69;
      break;
  }

  v44 = _stringCompareWithSmolCheck(_:_:expecting:)(v40, v41, 0x676E696E69617274, 0xE800000000000000, 0);
  v42 = v41;
  v41;
  v45 = (v44 & 1) == 0;
  v43 = v113;
  if (v45)
  {
    v113 = 0;
    swift_allocError(&type metadata for MLCreateError, v103, 0, 0);
    *v52 = 0xD00000000000003BLL;
    *(v52 + 8) = "s not contain string elements." + 0x8000000000000000;
    *(v52 + 16) = 0;
    *(v52 + 32) = 0;
    *(v52 + 48) = 0;
    swift_willThrow();
    outlined destroy of MLActivityClassifier.ModelParameters(v111, type metadata accessor for MLCheckpoint);
  }

  else
  {
LABEL_9:
    URL.deletingLastPathComponent()(v42);
    v46 = v102;
    URL.appendingPathComponent(_:)(0x6C65646F6DLL, 0xE500000000000000);
    URL.appendingPathExtension(_:)(6777712, 0xE300000000000000);
    v47 = v100;
    v48 = v107;
    v112 = *(v100 + 8);
    v112(v46, v107);
    v49 = v101;
    (*(v47 + 16))(v101, v43, v48);
    v50 = v110;
    MLSoundClassifier.PersistentParameters.init(sessionDirectory:)(v49);
    if (v50)
    {
      v113 = 0;
      outlined destroy of MLActivityClassifier.ModelParameters(v111, type metadata accessor for MLCheckpoint);
      v51 = v112;
      v112(v108, v48);
      v51(v43, v48);
    }

    else
    {
      v110 = 0;
      v53 = v106 + *(v99 + 28);
      v54 = v92;
      v55 = v109;
      v56 = v91;
      outlined init with copy of MLTrainingSessionParameters(v109 + *(v92 + 20), v91, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      v103 = *(v55 + v54[8]);
      v96 = *(v55 + v54[6]);
      v57 = v54[9];
      v100 = *(v55 + v57);
      LOBYTE(v101) = *(v55 + v57 + 8);
      v58 = *(v55 + v57 + 16);
      v59 = v90;
      v60 = *(v90 + 28);
      *(v60 + v53) = 0;
      *(v60 + v53 + 16) = 0;
      v61 = v59[8];
      *(v61 + v53) = 0;
      v102 = (v53 + v60);
      *(v61 + v53 + 8) = 1;
      *(v59[9] + v53) = 32;
      outlined init with copy of MLTrainingSessionParameters(v56, v53, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      *(v59[5] + v53) = v103;
      *(v59[6] + v53) = v96;
      v87 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
      v84 = v100;
      v85 = v101;
      v86 = v58;

      outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(&v84, v102, &demangling cache variable for type metadata for Any?);
      outlined destroy of MLActivityClassifier.ModelParameters(v56, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      v62 = v89;
      outlined init with copy of MLTrainingSessionParameters(v53, v89, type metadata accessor for MLSoundClassifier.ModelParameters);
      v63 = v105;
      MLSoundClassifier.Classifier.init(labels:parameters:)(&_swiftEmptySetSingleton, v62);
      v64 = lazy protocol witness table accessor for type MLSoundClassifier.Classifier and conformance MLSoundClassifier.Classifier();
      v65 = v104;
      v66 = v108;
      v67 = v110;
      UpdatableSupervisedEstimator.readWithOptimizer(from:)(v108, v88, v64);
      if (!v67)
      {
        v72 = v93;
        outlined init with copy of MLTrainingSessionParameters(v65, v93, type metadata accessor for MLSoundClassifier.Model);
        v73 = *(v95 + 80);
        v74 = ~*(v95 + 80) & (v73 + 16);
        v75 = swift_allocObject(&unk_393FF0, v74 + v94, v73 | 7);
        outlined init with take of MLClassifierMetrics(v72, v75 + v74, type metadata accessor for MLSoundClassifier.Model);
        specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLSoundClassifier.init(checkpoint:), v75);
        v110 = 0;
        v76 = v112;
        v79 = v78;

        outlined destroy of MLActivityClassifier.ModelParameters(v111, type metadata accessor for MLCheckpoint);
        outlined destroy of MLActivityClassifier.ModelParameters(v105, type metadata accessor for MLSoundClassifier.Classifier);
        outlined destroy of MLActivityClassifier.ModelParameters(v109, type metadata accessor for MLSoundClassifier.PersistentParameters);
        v80 = v107;
        v76(v108, v107);
        v76(v113, v80);
        v81 = v99;
        v82 = v106;
        *(v106 + *(v99 + 24)) = v79;
        return outlined init with take of MLClassifierMetrics(v104, v82 + *(v81 + 20), type metadata accessor for MLSoundClassifier.Model);
      }

      outlined destroy of MLActivityClassifier.ModelParameters(v111, type metadata accessor for MLCheckpoint);
      outlined destroy of MLActivityClassifier.ModelParameters(v63, type metadata accessor for MLSoundClassifier.Classifier);
      outlined destroy of MLActivityClassifier.ModelParameters(v109, type metadata accessor for MLSoundClassifier.PersistentParameters);
      v68 = v66;
      v69 = v107;
      v70 = v112;
      v112(v68, v107);
      v71 = v70(v113, v69);
      LOBYTE(v71) = 1;
      v113 = v71;
    }
  }

  v77 = v106;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v106, &demangling cache variable for type metadata for TrainingTablePrinter?);
  if (v113)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(*(v99 + 28) + v77, type metadata accessor for MLSoundClassifier.ModelParameters);
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v97, type metadata accessor for MLClassifierMetrics);
  return outlined destroy of MLActivityClassifier.ModelParameters(v98, type metadata accessor for MLClassifierMetrics);
}

uint64_t closure #1 in MLSoundClassifier.init(checkpoint:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc(288);
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #1 in MLRandomForestRegressor.init(checkpoint:);
  return ((&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel()))();
}

void *static MLSoundClassifier.train(trainingData:parameters:sessionParameters:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = MLSoundClassifier.DataSource.labeledSounds()();
  if (!v3)
  {
    v6 = v5;
    v4 = static MLSoundClassifier.train(trainingData:parameters:sessionParameters:)(v5, a2, a3);
    v6;
  }

  return v4;
}

void *static MLSoundClassifier.train(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MLSoundClassifier.DataSource(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v15 = a1;
  swift_storeEnumTagMultiPayload(&v15, v6, 2);

  static MLSoundClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(&v15, a2, a3);
  v11 = v10;
  result = outlined destroy of MLActivityClassifier.ModelParameters(&v15, type metadata accessor for MLSoundClassifier.DataSource);
  if (!v3)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLSoundClassifier>);
    v14 = swift_allocObject(v13, *(v13 + 48), *(v13 + 52));
    return specialized MLJob.init(_:)(v14, v11);
  }

  return result;
}

void static MLSoundClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = v3;
  v46 = a3;
  v48 = a1;
  v5 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v43 = &v34;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v47 = &v34;
  v10 = *(*(type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v51 = &v34;
  v13 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v14 = *(*(v13 - 1) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v17 = *(*(type metadata accessor for MLSoundClassifier.DataSource(0) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  MLSoundClassifier.ModelParameters.validate()();
  if (!v20)
  {
    v50 = &v34;
    v49 = &v34;
    MLSoundClassifier.ModelParameters.ValidationData.validate(modelParameters:)(a2);
    v45 = 0;
    v44 = MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.getter();
    outlined init with copy of MLTrainingSessionParameters(v48, v50, type metadata accessor for MLSoundClassifier.DataSource);
    outlined init with copy of MLTrainingSessionParameters(a2, v51, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    v21 = *(a2 + v13[5]);
    v48 = *(a2 + v13[6]);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a2 + v13[7], &v35, &demangling cache variable for type metadata for Any?);
    if (v38)
    {
      v22 = swift_dynamicCast(&v40, &v35, &type metadata for Any + 8, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, 6);
      v23 = v46;
      v24 = v47;
      if (v22)
      {
        v25 = v40;
        v26 = v41;
        v27 = v42;
      }

      else
      {
        v26 = 1;
        v25 = 1;
        v27 = 0;
      }
    }

    else
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v35, &demangling cache variable for type metadata for Any?);
      v26 = 1;
      v25 = 1;
      v27 = 0;
      v23 = v46;
      v24 = v47;
    }

    v28 = v49;
    v35 = v25;
    v36 = v26 & 1;
    v37 = v27;
    MLSoundClassifier.ModelParameters.init(validation:maxIterations:overlapFactor:algorithm:featureExtractionTimeWindowSize:)(v51, v21, &v35, *&v48, v44);
    outlined init with copy of MLTrainingSessionParameters(v23, v24, type metadata accessor for MLTrainingSessionParameters);
    v29 = type metadata accessor for SoundClassifierTrainingSessionDelegate(0);
    swift_allocObject(v29, *(v29 + 48), *(v29 + 52));
    v30 = v45;
    v31 = SoundClassifierTrainingSessionDelegate.init(trainingData:featureExtractionOnly:modelParameters:sessionParameters:)(v50, 0, v28, v24);
    if (!v30)
    {
      v38 = v29;
      v39 = &protocol witness table for SoundClassifierTrainingSessionDelegate;
      v35 = v31;
      v32 = v43;
      outlined init with copy of MLTrainingSessionParameters(v23, v43, type metadata accessor for MLTrainingSessionParameters);
      v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>);
      swift_allocObject(v33, *(v33 + 48), *(v33 + 52));
      specialized MLTrainingSession.init(delegate:parameters:modelType:)(&v35, v32, 19);
    }
  }
}

void *static MLSoundClassifier.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLSoundClassifier>);
  v2 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));

  return specialized MLJob.init(_:)(v2, a1);
}

void *static MLSoundClassifier.extractFeatures(trainingData:parameters:sessionParameters:)(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v13 = *(a2 + 32);
  v4 = *a2;
  v12[1] = a2[1];
  v12[0] = v4;
  v11 = *(a2 + 32);
  v5 = *a2;
  v10[1] = a2[1];
  v10[0] = v5;
  result = static MLSoundClassifier.makeFeatureExtractionSession(trainingData:parameters:sessionParameters:)(a1, v10, a3);
  if (!v3)
  {
    v7 = result;
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLSoundClassifier.DataSource>);
    v9 = swift_allocObject(v8, *(v8 + 48), *(v8 + 52));
    return specialized MLJob.init(_:)(v9, v7, v12);
  }

  return result;
}

uint64_t static MLSoundClassifier.makeFeatureExtractionSession(trainingData:parameters:sessionParameters:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v38 = v3;
  v45 = a3;
  v47 = a1;
  v4 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v44 = &v33;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v39 = &v33;
  v9 = *(*(type metadata accessor for MLSoundClassifier.DataSource(0) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v40 = &v33;
  v42 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  v12 = *(*(v42 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v15 = *(*(type metadata accessor for MLSoundClassifier.ModelParameters(0) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v41 = &v33;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v43 = *a2;
  v20 = *(a2 + 8);
  v21 = *(a2 + 24);
  v22 = *(a2 + 32);
  v23 = *(a2 + 16) == 0;
  v33 = 0;
  v34 = 256;
  if (v23)
  {
    v46 = v20;
  }

  else
  {
    v46 = 0.975;
  }

  swift_storeEnumTagMultiPayload(&v33, v42, 0);
  *(&v33 + 1) = v21;
  LOBYTE(v34) = v22;
  v35 = 0;
  MLSoundClassifier.ModelParameters.init(validation:maxIterations:overlapFactor:algorithm:featureExtractionTimeWindowSize:)(&v33, 25, &v33 + 1, v43, v46);
  v24 = v40;
  outlined init with copy of MLTrainingSessionParameters(v47, v40, type metadata accessor for MLSoundClassifier.DataSource);
  v47 = &v33;
  v25 = v41;
  outlined init with copy of MLTrainingSessionParameters(&v33, v41, type metadata accessor for MLSoundClassifier.ModelParameters);
  v26 = v39;
  outlined init with copy of MLTrainingSessionParameters(v45, v39, type metadata accessor for MLTrainingSessionParameters);
  v27 = type metadata accessor for SoundClassifierTrainingSessionDelegate(0);
  swift_allocObject(v27, *(v27 + 48), *(v27 + 52));
  v28 = v38;
  v29 = SoundClassifierTrainingSessionDelegate.init(trainingData:featureExtractionOnly:modelParameters:sessionParameters:)(v24, 1, v25, v26);
  if (v28)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v47, type metadata accessor for MLSoundClassifier.ModelParameters);
  }

  else
  {
    v36 = v27;
    v37 = &protocol witness table for SoundClassifierTrainingSessionDelegate;
    *(&v33 + 1) = v29;
    v30 = v44;
    outlined init with copy of MLTrainingSessionParameters(v45, v44, type metadata accessor for MLTrainingSessionParameters);
    v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier.DataSource>);
    swift_allocObject(v31, *(v31 + 48), *(v31 + 52));

    v27 = specialized MLTrainingSession.init(delegate:parameters:modelType:)(&v33 + 1, v30, 19);
    outlined destroy of MLActivityClassifier.ModelParameters(v47, type metadata accessor for MLSoundClassifier.ModelParameters);
  }

  return v27;
}

uint64_t closure #1 in closure #1 in static MLSoundClassifier.extractFeatures(trainingData:parameters:sessionParameters:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v32 = a6;
  v26 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLSoundClassifier.DataSource, Error>);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  if (a2)
  {
    v24[0] = a1;
    swift_storeEnumTagMultiPayload(v24, v8, 1);
    swift_errorRetain(a1);
    a5(v24);
  }

  else
  {
    v27 = v8;
    outlined init with copy of TabularRegressionTask(direct field offset for MLTrainingSession.delegate + a3, v24);
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingSessionDelegate);
    v13 = type metadata accessor for SoundClassifierTrainingSessionDelegate(0);
    swift_dynamicCast(&v25, v24, v12, v13, 7);
    v28 = v24;
    v14 = v25;
    v30 = v25;
    v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
    v29 = a5;
    v16 = v15[12];
    v31 = v15[16];
    v17 = v15[20];
    v18 = *(v14 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures);

    static SoundClassifierTrainingSessionDelegate.createDataFrame(from:)(v18);
    v18;
    *(v24 + v16) = 0x7365727574616566;
    *(&v24[1] + v16) = 0xE800000000000000;
    v19 = v31;
    *(v24 + v31) = 0x62614C7373616C63;
    *(&v24[1] + v19) = 0xEA00000000006C65;
    v20 = v26;
    *(&v24[4] + v17) = *(v26 + 32);
    v21 = *v20;
    *(&v24[2] + v17) = v20[1];
    *(v24 + v17) = v21;
    v22 = type metadata accessor for MLSoundClassifier.DataSource(0);
    swift_storeEnumTagMultiPayload(v24, v22, 4);
    swift_storeEnumTagMultiPayload(v24, v27, 0);
    v29(v24);
  }

  return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v24, &demangling cache variable for type metadata for Result<MLSoundClassifier.DataSource, Error>);
}

uint64_t static MLSoundClassifier.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v2 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v12 = v11;
  v5 = alloca(v2);
  v6 = alloca(v2);
  outlined init with copy of MLTrainingSessionParameters(a1, v11, type metadata accessor for MLTrainingSessionParameters);
  v7 = type metadata accessor for SoundClassifierTrainingSessionDelegate(0);
  swift_allocObject(v7, *(v7 + 48), *(v7 + 52));
  result = SoundClassifierTrainingSessionDelegate.init(sessionParameters:)(v11);
  if (!v1)
  {
    v11[3] = v7;
    v11[4] = &protocol witness table for SoundClassifierTrainingSessionDelegate;
    v11[0] = result;
    v9 = v12;
    outlined init with copy of MLTrainingSessionParameters(a1, v12, type metadata accessor for MLTrainingSessionParameters);
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>);
    swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v11, v9, 19);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static MLSoundClassifier.resume(_:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v22 = a5;
  v23 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLSoundClassifier, Error>);
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
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v19, &demangling cache variable for type metadata for Result<MLSoundClassifier, Error>);
  }

  else
  {
    outlined init with copy of TabularRegressionTask(direct field offset for MLTrainingSession.delegate + a3, v20);
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingSessionDelegate);
    v15 = type metadata accessor for SoundClassifierTrainingSessionDelegate(0);
    swift_dynamicCast(&v21, v20, v14, v15, 7);
    v16 = v21;
    v17 = type metadata accessor for TaskPriority(0);
    __swift_storeEnumTagSinglePayload(&v19, 1, 1, v17);
    v18 = swift_allocObject(&unk_394078, 56, 7);
    *(v18 + 16) = 0;
    *(v18 + 32) = v16;
    *(v18 + 40) = v23;
    *(v18 + 48) = v22;

    _sScTss5NeverORs_rlE8priority9operationScTyxABGScPSg_xyYaYAcntcfCyt_Tt1g5(&v19, &async function pointer to partial apply for closure #1 in static MLSoundClassifier.handleResult(_:session:fulfill:), v18);
  }
}

uint64_t closure #1 in static MLSoundClassifier.handleResult(_:session:fulfill:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a6;
  v6[3] = a5;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLSoundClassifier, Error>);
  v6[5] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in static MLSoundClassifier.handleResult(_:session:fulfill:), 0, 0);
}

uint64_t closure #1 in static MLSoundClassifier.handleResult(_:session:fulfill:)()
{

  v1 = swift_task_alloc(80);
  v0[6] = v1;
  *v1 = v0;
  v1[1] = closure #1 in static MLSoundClassifier.handleResult(_:session:fulfill:);
  return ((&_ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC17MLSoundClassifierV_Tt1g503_s8b4ML17fg80V12handleResult33_0936EF001B4864F81C630288B6304A87LL_7session7fulfillys0F0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC05Soundg8TrainingX8DelegateCTf1nc_nTu + _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC17MLSoundClassifierV_Tt1g503_s8b4ML17fg80V12handleResult33_0936EF001B4864F81C630288B6304A87LL_7session7fulfillys0F0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC05Soundg8TrainingX8DelegateCTf1nc_nTu))(v0[5], v0[2]);
}

{
  *(*v0 + 48);
  return swift_task_switch(closure #1 in static MLSoundClassifier.handleResult(_:session:fulfill:), 0, 0);
}

{
  v1 = *(v0 + 40);
  (*(v0 + 24))(v1);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &demangling cache variable for type metadata for Result<MLSoundClassifier, Error>);
  v1;
  return (*(v0 + 8))();
}

uint64_t MLSoundClassifier.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2[19] = a2;
  v2[18] = a1;
  v3 = type metadata accessor for MLClassifierMetrics(0);
  v2[20] = v3;
  v2[21] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLClassifierMetrics?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[22] = swift_task_alloc(v4);
  v2[23] = swift_task_alloc(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.Model?);
  v2[24] = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MLSoundClassifier(0);
  v2[25] = v6;
  v2[26] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  v2[27] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v2[28] = v8;
  v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[29] = swift_task_alloc(v9);
  v2[30] = swift_task_alloc(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
  v2[31] = swift_task_alloc((*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
  v2[32] = v11;
  v2[33] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLSoundClassifier.init(delegate:), 0, 0);
}

uint64_t MLSoundClassifier.init(delegate:)()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 248);
  v3 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters + *(v0 + 152);
  swift_beginAccess(v3, v0 + 48, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v3, v2, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    BUG();
  }

  v4 = *(v0 + 264);
  v5 = *(v0 + 256);
  v6 = *(v0 + 240);
  v7 = *(v0 + 224);
  v22 = *(v0 + 216);
  v17 = *(v0 + 152);
  v16 = *(v0 + 192);
  outlined init with take of MLClassifierMetrics(*(v0 + 248), v4, type metadata accessor for MLSoundClassifier.PersistentParameters);
  outlined init with copy of MLTrainingSessionParameters(v4 + v5[5], v22, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  v20 = *(v4 + v5[8]);
  v21 = *(v4 + v5[6]);
  v8 = v5[9];
  v18 = *(v4 + v8);
  v23 = *(v4 + v8 + 8);
  v9 = *(v4 + v8 + 16);
  v10 = v7[7];
  *(v6 + v10) = 0;
  *(v6 + v10 + 16) = 0;
  v11 = v7[8];
  *(v6 + v11) = 0;
  v19 = v6 + v10;
  *(v6 + v11 + 8) = 1;
  *(v6 + v7[9]) = 32;
  outlined init with copy of MLTrainingSessionParameters(v22, v6, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  *(v6 + v7[5]) = v20;
  *(v6 + v7[6]) = v21;
  *(v0 + 40) = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
  *(v0 + 16) = v18;
  *(v0 + 24) = v23;
  *(v0 + 32) = v9;

  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v0 + 16, v19, &demangling cache variable for type metadata for Any?);
  outlined destroy of MLActivityClassifier.ModelParameters(v22, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  v12 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model + v17;
  swift_beginAccess(OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model + v17, v0 + 72, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v12, v16, &demangling cache variable for type metadata for MLSoundClassifier.Model?);
  v13 = type metadata accessor for MLSoundClassifier.Model(0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v13) == 1)
  {
    BUG();
  }

  outlined init with copy of MLTrainingSessionParameters(*(v0 + 240), *(v0 + 232), type metadata accessor for MLSoundClassifier.ModelParameters);
  v14 = swift_task_alloc(112);
  *(v0 + 272) = v14;
  *v14 = v0;
  v14[1] = MLSoundClassifier.init(delegate:);
  return MLSoundClassifier.init(_:parameters:)(*(v0 + 208), *(v0 + 192), *(v0 + 232));
}

{
  v2 = *(*v1 + 272);
  *(*v1 + 280) = v0;
  v2;
  if (v0)
  {
    v3 = MLSoundClassifier.init(delegate:);
  }

  else
  {
    v3 = MLSoundClassifier.init(delegate:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 152);
  outlined init with take of MLClassifierMetrics(*(v0 + 208), *(v0 + 144), type metadata accessor for MLSoundClassifier);
  v4 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingMetrics + v3;
  swift_beginAccess(v4, v0 + 96, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4, v1, &demangling cache variable for type metadata for MLClassifierMetrics?);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    BUG();
  }

  v5 = *(v0 + 264);
  v6 = *(v0 + 200);
  v24 = *(v0 + 184);
  v21 = *(v0 + 176);
  v19 = *(v0 + 160);
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 240), type metadata accessor for MLSoundClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for MLSoundClassifier.PersistentParameters);
  outlined assign with take of MLClassifierMetrics(v24, v7 + *(v6 + 32));
  v9 = v8 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationMetrics;
  swift_beginAccess(v8 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationMetrics, v0 + 120, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v9, v21, &demangling cache variable for type metadata for MLClassifierMetrics?);

  if (__swift_getEnumTagSinglePayload(v21, 1, v19) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 176), &demangling cache variable for type metadata for MLClassifierMetrics?);
  }

  else
  {
    v10 = *(v0 + 200);
    v11 = *(v0 + 144);
    v12 = *(v0 + 168);
    outlined init with take of MLClassifierMetrics(*(v0 + 176), v12, type metadata accessor for MLClassifierMetrics);
    outlined assign with take of MLClassifierMetrics(v12, v11 + *(v10 + 36));
  }

  v13 = *(v0 + 248);
  v14 = *(v0 + 240);
  v15 = *(v0 + 232);
  v16 = *(v0 + 216);
  v18 = *(v0 + 208);
  v25 = *(v0 + 192);
  v23 = *(v0 + 184);
  v20 = *(v0 + 168);
  v22 = *(v0 + 176);
  *(v0 + 264);
  v13;
  v14;
  v15;
  v16;
  v18;
  v25;
  v23;
  v22;
  v20;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = *(v0 + 240);
  v4 = *(v0 + 232);
  v11 = *(v0 + 216);
  v10 = *(v0 + 208);
  v9 = *(v0 + 192);
  v8 = *(v0 + 184);
  v7 = *(v0 + 176);
  v6 = *(v0 + 168);

  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLSoundClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for MLSoundClassifier.PersistentParameters);
  v1;
  v2;
  v3;
  v4;
  v11;
  v10;
  v9;
  v8;
  v7;
  v6;
  return (*(v0 + 8))();
}

uint64_t MLSoundClassifier.evaluation(on:)()
{
  v13[2] = v1;
  v14 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v15 = v13;
  v7 = MLSoundClassifier.DataSource.labeledSounds()();
  v8 = v7;
  MLSoundClassifier.evaluate(on:)(v7);
  v8;
  v10 = v14;
  (*(v3 + 32))(v14, v15, v2);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  swift_storeEnumTagMultiPayload(v10, v11, 0);
  v12 = type metadata accessor for MLClassifierMetrics.Contents(0);
  return swift_storeEnumTagMultiPayload(v10, v12, 0);
}

void *MLSoundClassifier.evaluate(on:)(uint64_t a1)
{
  v20 = a1;
  v23 = v1;
  v5 = *(*(type metadata accessor for MLSoundClassifier.ModelParameters(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = *(type metadata accessor for MLSoundClassifier(0) + 28);
  v22 = v3;
  outlined init with copy of MLTrainingSessionParameters(v3 + v8, v17, type metadata accessor for MLSoundClassifier.ModelParameters);
  v9 = specialized Sequence.flatMap<A>(_:)(a1);
  v21 = v2;
  v10 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation3URLV_SayAFGTt0g5(v9);
  v11 = *(v10 + 16);
  v10;
  MLSoundClassifier.FeatureExtractor.Configuration.init(parameters:fileCount:)(v17, v11);
  v12 = v18;
  v13 = v19;
  type metadata accessor for MLSoundClassifier.FeatureExtractor();
  v18 = v12;
  v19 = v13;
  v14 = v21;
  result = static MLSoundClassifier.FeatureExtractor.extractFeatures(from:options:)(v20, v17);
  if (!v14)
  {
    v16 = result;
    specialized MLSoundClassifier.evaluate<A>(on:)(result);
    return v16;
  }

  return result;
}

uint64_t MLSoundClassifier.evaluation(on:)(uint64_t a1)
{
  v12 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  MLSoundClassifier.evaluate(on:)(a1);
  v7 = v12;
  (*(v3 + 32))(v12, &v11, v2);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  swift_storeEnumTagMultiPayload(v7, v8, 0);
  v9 = type metadata accessor for MLClassifierMetrics.Contents(0);
  return swift_storeEnumTagMultiPayload(v7, v9, 0);
}

uint64_t specialized closure #1 in MLSoundClassifier.evaluate<A>(on:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MLSoundClassifier(0);
  v3 = swift_task_alloc(352);
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = specialized closure #1 in MLSoundClassifier.evaluate<A>(on:);
  return ((&async function pointer to specialized Transformer.prediction<A, B>(from:eventHandler:) + async function pointer to specialized Transformer.prediction<A, B>(from:eventHandler:)))(a2, 0, 0);
}

uint64_t specialized closure #1 in MLSoundClassifier.evaluate<A>(on:)(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;
  v4;
  if (!v1)
  {
    v4 = a1;
  }

  return (*(v5 + 8))(v4);
}

{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;
  v5;
  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  return (*(v6 + 8))();
}

NSURL *MLSoundClassifier.write(to:metadata:)(uint64_t a1, const void *a2)
{
  v44 = v3;
  v49 = a2;
  v50 = a1;
  v4 = *(*(type metadata accessor for MLSoundClassifier.Model(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v46 = &v34;
  v47 = type metadata accessor for Model(0);
  v7 = *(v47 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v43 = &v34;
  v11 = type metadata accessor for URL(0);
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  qmemcpy(v42, v49, sizeof(v42));
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(v50, 0x616C43646E756F53, 0xEF72656966697373, 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (!v2)
  {
    v45 = 0;
    v51 = &v34;
    v48 = v7;
    v49 = v11;
    v50 = v12;
    v17 = type metadata accessor for MLSoundClassifier(0);
    outlined init with copy of MLTrainingSessionParameters(*(v17 + 20) + v44, v46, type metadata accessor for MLSoundClassifier.Model);
    v18 = *&v42[8];
    if (*&v42[8])
    {
      v19 = *v42;
      v20 = *&v42[16];
      v21 = *&v42[24];
      v22 = *&v42[32];
      v23 = *&v42[48];
      v24 = *&v42[56];
      v25 = *&v42[64];
    }

    else
    {
      v26 = NSFullUserName();
      v27 = v26;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)(v27);
      v18 = v28;

      v21 = "RandomForestRegressor" + 0x8000000000000000;
      v36[0] = v19;
      v36[1] = v18;
      v36[2] = 0xD000000000000033;
      v36[3] = "RandomForestRegressor" + 0x8000000000000000;
      v37 = 0;
      v38 = 49;
      v39 = 0xE100000000000000;
      v40 = 0;
      *v41 = v19;
      *&v41[8] = v18;
      *&v41[16] = 0xD000000000000033;
      *&v41[24] = "RandomForestRegressor" + 0x8000000000000000;
      *&v41[32] = 0;
      *&v41[48] = 49;
      *&v41[56] = 0xE100000000000000;
      *&v41[64] = 0;
      outlined retain of MLModelMetadata(v36);
      outlined release of MLModelMetadata(v41);
      v24 = 0xE100000000000000;
      v23 = 49;
      v22 = 0;
      v20 = 0xD000000000000033;
      v25 = 0;
    }

    *v41 = v19;
    *&v41[8] = v18;
    *&v41[16] = v20;
    *&v41[24] = v21;
    *&v41[32] = v22;
    *&v41[48] = v23;
    *&v41[56] = v24;
    *&v41[64] = v25;
    qmemcpy(v35, v41, sizeof(v35));
    outlined retain of MLModelMetadata?(v42);
    v29 = v43;
    v30 = v46;
    v31 = v45;
    specialized CoreMLExportable.export(metadata:)(v35);
    v32 = v49;
    outlined release of MLModelMetadata(v41);
    outlined destroy of MLActivityClassifier.ModelParameters(v30, type metadata accessor for MLSoundClassifier.Model);
    if (v31)
    {
      return (*(v50 + 8))(v51, v32);
    }

    else
    {
      Model.write(to:)(v51);
      v33 = v50;
      (*(v48 + 8))(v29, v47);
      return (*(v33 + 8))(v51, v32);
    }
  }

  return result;
}

uint64_t MLSoundClassifier.write(toFile:metadata:)(uint64_t a1, uint64_t a2, const void *a3)
{
  v17 = v3;
  v21 = a3;
  v19 = a2;
  v18 = a1;
  v22 = type metadata accessor for URL.DirectoryHint(0);
  v20 = *(v22 - 8);
  v4 = *(v20 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v23 = v16;
  v10 = type metadata accessor for URL(0);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  qmemcpy(v16, v21, sizeof(v16));
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v10);
  (*(v20 + 104))(v16, enum case for URL.DirectoryHint.inferFromPath(_:), v22);
  v14 = v19;

  URL.init(filePath:directoryHint:relativeTo:)(v18, v14, v16, v23);
  MLSoundClassifier.write(to:metadata:)(v16, v16);
  return (*(v24 + 8))(v16, v10);
}

void (__cdecl **MLSoundClassifier.predictions(from:)(uint64_t a1))(id)
{
  type metadata accessor for MLSoundClassifier(0);
  type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v1 = MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.getter();
  return MLSoundClassifier.predictions(from:overlapFactor:predictionTimeWindowSize:)(a1, v1, v1);
}

void (__cdecl **MLSoundClassifier.predictions(from:overlapFactor:predictionTimeWindowSize:)(uint64_t a1, double a2, double a3))(id)
{
  *&v112 = v3;
  v110 = a3;
  v105 = type metadata accessor for URL(0);
  v108 = *(v105 - 8);
  v88 = *(v108 + 64);
  v5 = alloca(v88);
  v6 = alloca(v88);
  v106 = &v82;
  v7 = type metadata accessor for MLSoundClassifier(0);
  v89 = *(v7 - 8);
  v109 = *(v89 + 64);
  v8 = alloca(v109);
  v9 = alloca(v109);
  v107 = &v82;
  v102 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v10 = *(*(v102 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v114 = type metadata accessor for MLSoundClassifier.FeatureExtractor();
  v13 = *(v7 + 28);
  v103 = v4;
  v14 = v4 + v13;
  outlined init with copy of MLTrainingSessionParameters(v14, &v82, type metadata accessor for MLSoundClassifier.ModelParameters);
  v15 = *(a1 + 16);
  MLSoundClassifier.FeatureExtractor.Configuration.init(parameters:fileCount:)(&v82, v15);
  v82 = v97;
  v83 = v98;
  v84 = v99;
  v85 = v100;
  v16 = v112;
  result = static MLSoundClassifier.FeatureExtractor.extractFeatures(from:options:)(a1, &v82);
  if (v16)
  {
    return result;
  }

  *&v112 = 0;
  v104 = v15;
  v111 = result;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v102 + 28) + v14, &v97, &demangling cache variable for type metadata for Any?);
  if (*(&v98 + 1))
  {
    v18 = swift_dynamicCast(&v82, &v97, &type metadata for Any + 8, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, 6);
    v19 = v105;
    v20 = v106;
    if (v18)
    {
      v21 = BYTE8(v82);
      v83;
      v22 = v108;
      v23 = v109;
      v24 = v110;
      if (!v21 && v110 != 0.975)
      {
        v111;
        *&v97 = 0;
        *(&v97 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(86);
        v25._object = ". The expected range is from " + 0x8000000000000000;
        v25._countAndFlagsBits = 0xD00000000000004BLL;
        String.append(_:)(v25);
        Double.write<A>(to:)(&v97, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
        v25._countAndFlagsBits = 0x73646E6F63657320;
        v25._object = 0xE90000000000002ELL;
        String.append(_:)(v25);
        v112 = v97;
        v26 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v26, 0, 0);
        *v27 = v112;
        *(v27 + 16) = 0;
        *(v27 + 32) = 0;
        *(v27 + 48) = 1;
        return swift_willThrow();
      }

      goto LABEL_10;
    }

    v22 = v108;
  }

  else
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v97, &demangling cache variable for type metadata for Any?);
    v19 = v105;
    v22 = v108;
    v20 = v106;
  }

  v23 = v109;
  v24 = v110;
LABEL_10:
  if (v24 < 0.5 || v24 > 15.0)
  {
    v111;
    *&v97 = 0;
    *(&v97 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(69);
    v78._object = "ires a training checkpoint." + 0x8000000000000000;
    v78._countAndFlagsBits = 0xD00000000000003DLL;
    String.append(_:)(v78);
    Double.write<A>(to:)(&v97, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v78._object = 0xE400000000000000;
    v78._countAndFlagsBits = 544175136;
    String.append(_:)(v78);
    Double.write<A>(to:)(&v97, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v112 = v97;
    v79 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v79, 0, 0);
    *v80 = v112;
    *(v80 + 16) = 0;
    *(v80 + 32) = 0;
    *(v80 + 48) = 0;
    return swift_willThrow();
  }

  if (v104)
  {
    v28 = *(v22 + 80);
    v93 = ~v28;
    v94 = a1 + ((v28 + 32) & ~v28);
    v109 = v23 + 7;
    v92 = v28;
    v95 = v28 + 8;
    v96 = *(v22 + 72);
    v101 = a1;

    v113 = _swiftEmptyArrayStorage;
    v29 = 0;
    v30 = 0;
    v31 = v103;
    v32 = v107;
    while (1)
    {
      v87 = v30;
      v33 = v94 + v30 * v96;
      outlined init with copy of MLTrainingSessionParameters(v31, v32, type metadata accessor for MLSoundClassifier);
      (*(v108 + 16))(v20, v33, v19);
      v34 = *(v89 + 80);
      v35 = ~*(v89 + 80) & (v34 + 16);
      v114 = (v109 + v35) & 0xFFFFFFFFFFFFFFF8;
      v36 = v93 & (v95 + v114);
      v37 = swift_allocObject(&unk_394018, v88 + v36, v92 | v34 | 7);
      outlined init with take of MLClassifierMetrics(v107, v37 + v35, type metadata accessor for MLSoundClassifier);
      *(v37 + v114) = v111;
      (*(v108 + 32))(v37 + v36, v106, v105);

      v38 = v112;
      specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLSoundClassifier.predictions(from:overlapFactor:predictionTimeWindowSize:), v37);
      if (v38)
      {
        break;
      }

      v40 = v39;

      MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm(v40, &demangling cache variable for type metadata for ClassificationDistribution<String>, &unk_346CB8);
      v42 = 0;
      v40;
      v43 = MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm;
      v44 = MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm[2];
      if (v44)
      {
        v90 = 0;
        v91 = MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm;
        v45 = MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm + 5;
        v46 = _swiftEmptyDictionarySingleton;
        do
        {
          v102 = v44;
          v47 = *(v45 - 1);
          v86 = v45;
          v48 = *v45;

          _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v29, 0);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v46);
          *&v97 = v46;
          v110 = v47;
          v50 = *&v47;
          *&v112 = v48;
          v51 = v46;
          v114 = specialized __RawDictionaryStorage.find<A>(_:)(v50, v48);
          v53 = (v52 & 1) == 0;
          v54 = __OFADD__(v51[2], v53);
          v55 = v51[2] + v53;
          if (v54)
          {
            BUG();
          }

          v56 = v52;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Int>);
          v57 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v55);
          v46 = v97;
          if (v57)
          {
            v58 = v112;
            v114 = specialized __RawDictionaryStorage.find<A>(_:)(*&v110, v112);
            LOBYTE(v60) = v60 & 1;
            if ((v56 & 1) != v60)
            {
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v58, v60, v59);
              BUG();
            }
          }

          v61 = v112;
          if (v56)
          {

            v62 = v114;
          }

          else
          {
            v62 = v114;
            v46[(v114 >> 6) + 8] |= 1 << v114;
            v63 = v46[6];
            v64 = 16 * v62;
            *(v63 + v64) = v110;
            *(v63 + v64 + 8) = v61;
            *(v46[7] + 8 * v62) = 0;
            v65 = v46[2];

            v54 = __OFADD__(1, v65);
            v66 = v65 + 1;
            if (v54)
            {
              BUG();
            }

            v46[2] = v66;
          }

          v67 = v46[7];

          v68 = *(v67 + 8 * v62);
          v54 = __OFADD__(1, v68);
          v69 = v68 + 1;
          if (v54)
          {
            BUG();
          }

          *(v67 + 8 * v62) = v69;
          v61;
          v45 = v86 + 2;
          v29 = specialized OptionSet<>.init();
          v44 = v102 - 1;
        }

        while (v102 != 1);
        v29 = specialized OptionSet<>.init();
        v42 = v90;
        v43 = v91;
      }

      else
      {
        v46 = _swiftEmptyDictionarySingleton;
      }

      v43;

      v70 = v42;
      v114 = specialized Sequence.max(by:)(v46);
      v72 = v71;
      v46;
      if (!v72)
      {
        BUG();
      }

      v46;
      v73 = swift_isUniquelyReferenced_nonNull_native(v113);
      *&v112 = v70;
      if (v73)
      {
        v74 = v113;
      }

      else
      {
        v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v113[2] + 1, 1, v113);
      }

      v75 = v74[2];
      v76 = v104;
      if (v74[3] >> 1 <= v75)
      {
        v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v74[3] >= 2uLL, v75 + 1, 1, v74);
        v76 = v104;
      }

      v31 = v103;
      v32 = v107;
      v30 = v87 + 1;
      v74[2] = v75 + 1;
      v77 = 2 * v75;
      v74[v77 + 4] = v114;
      v113 = v74;
      v74[v77 + 5] = v72;
      v19 = v105;
      v20 = v106;
      if (v30 == v76)
      {
        v111;
        v81 = v101;
        goto LABEL_41;
      }
    }

    v113;
    v101;
    v111;

    return _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v29, 0);
  }

  else
  {
    v113 = _swiftEmptyArrayStorage;
    v29 = 0;
    v81 = v111;
LABEL_41:
    v81;
    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v29, 0);
    return v113;
  }
}

uint64_t closure #1 in MLSoundClassifier.predictions(from:overlapFactor:predictionTimeWindowSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[4] = a3;
  v4[3] = a2;
  v4[2] = a1;
  v5 = type metadata accessor for MLSoundClassifier.Model(0);
  v4[6] = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in MLSoundClassifier.predictions(from:overlapFactor:predictionTimeWindowSize:), 0, 0);
}

uint64_t closure #1 in MLSoundClassifier.predictions(from:overlapFactor:predictionTimeWindowSize:)()
{
  v1 = v0[6];
  v2 = v0[5];
  v3 = v0[3];
  v4 = v0[4];
  v5 = type metadata accessor for MLSoundClassifier(0);
  outlined init with copy of MLTrainingSessionParameters(v3 + *(v5 + 20), v1, type metadata accessor for MLSoundClassifier.Model);
  v6 = specialized Dictionary.subscript.getter(v2, v4);
  v0[7] = v6;
  if (!v6)
  {
    BUG();
  }

  v7 = v6;
  v8 = swift_task_alloc(288);
  v0[8] = v8;
  *v8 = v0;
  v8[1] = closure #1 in MLSoundClassifier.predictions(from:overlapFactor:predictionTimeWindowSize:);
  return ((&async function pointer to specialized Transformer.applied<A>(to:eventHandler:) + async function pointer to specialized Transformer.applied<A>(to:eventHandler:)))(v7, 0, 0);
}

{
  v1 = *(v0 + 48);
  **(v0 + 16) = *(v0 + 80);
  v1;
  return (*(v0 + 8))();
}

{
  *(v0 + 48);
  return (*(v0 + 8))();
}

uint64_t closure #1 in MLSoundClassifier.predictions(from:overlapFactor:predictionTimeWindowSize:)(uint64_t a1)
{
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 64);
  v4 = *v2;
  v4[9] = v1;
  v6;
  v5;
  v7 = v4[6];
  if (v1)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v7, type metadata accessor for MLSoundClassifier.Model);
    v8 = closure #1 in MLSoundClassifier.predictions(from:overlapFactor:predictionTimeWindowSize:);
  }

  else
  {
    v4[10] = a1;
    outlined destroy of MLActivityClassifier.ModelParameters(v7, type metadata accessor for MLSoundClassifier.Model);
    v8 = closure #1 in MLSoundClassifier.predictions(from:overlapFactor:predictionTimeWindowSize:);
  }

  return swift_task_switch(v8, 0, 0);
}

unint64_t MLSoundClassifier.debugDescription.getter()
{
  v1 = v0;
  v25._object = type metadata accessor for MLClassifierMetrics.Contents(0);
  v2 = *(*(v25._object - 1) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = type metadata accessor for MLSoundClassifier(0);
  v25._countAndFlagsBits = MLSoundClassifier.ModelParameters.description.getter();
  v7 = v6;
  v22._countAndFlagsBits = MLClassifierMetrics.description.getter();
  v22._object = v8;
  v9 = *(v5 + 36);
  v10 = v7;
  outlined init with copy of MLTrainingSessionParameters(v1 + v9, &v20, type metadata accessor for MLClassifierMetrics.Contents);
  LODWORD(v7) = swift_getEnumCaseMultiPayload(&v20, v25._object);
  outlined destroy of MLActivityClassifier.ModelParameters(&v20, type metadata accessor for MLClassifierMetrics.Contents);
  v25._object = MLClassifierMetrics.description.getter();
  v12 = v11;
  v23 = 0xD00000000000001CLL;
  v24 = "odelType" + 0x8000000000000000;
  v13._countAndFlagsBits = v25._countAndFlagsBits;
  v25._countAndFlagsBits = v10;
  v13._object = v10;
  String.append(_:)(v13);
  v21._countAndFlagsBits = 0xD00000000000001ELL;
  v21._object = "ActivityClassifier\n\nParameters\n" + 0x8000000000000000;
  object = v22._object;
  String.append(_:)(v22);
  v15 = v21._object;
  String.append(_:)(v21);
  v15;
  if (v7 > 1)
  {
    v18 = object;
  }

  else
  {
    v21._countAndFlagsBits = 0xD000000000000020;
    v21._object = "\nPerformance on Training Data\n" + 0x8000000000000000;
    v16._countAndFlagsBits = v25._object;
    v16._object = v12;
    String.append(_:)(v16);
    v17 = v21._object;
    String.append(_:)(v21);
    object;
    v18 = v12;
    LOBYTE(v12) = v17;
  }

  v18;
  v12;
  v25._countAndFlagsBits;
  return v23;
}

NSAttributedString MLSoundClassifier.playgroundDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSAttributedString, NSAttributedString_ptr);
  v3._countAndFlagsBits = MLSoundClassifier.debugDescription.getter();
  v3._object = v4;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v3).super.isa;
  v1[3].super.isa = v2;
  v1->super.isa = result.super.isa;
  return result;
}

uint64_t closure #1 in static MLSoundClassifier.convertFeatures(_:)(uint64_t a1)
{
  v13 = a1;
  v12 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  (*(v3 + 16))(&v11, v13, v2);
  v13 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Float> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Float>, &protocol conformance descriptor for MLShapedArray<A>);
  v8 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Double> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Double>, &protocol conformance descriptor for MLShapedArray<A>);
  v9 = v12;
  MLShapedArrayProtocol.init<A>(converting:)(&v11, v7, v2, v13, v8);
  return __swift_storeEnumTagSinglePayload(v9, 0, 1, v7);
}

uint64_t closure #2 in static MLSoundClassifier.convertFeatures(_:)(void **a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Float> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Float>, &protocol conformance descriptor for MLShapedArray<A>);
  v6 = v3;
  MLShapedArrayProtocol.init(converting:)(v6, v4, v5);
  return __swift_storeEnumTagSinglePayload(v2, 0, 1, v4);
}

uint64_t closure #3 in static MLSoundClassifier.convertFeatures(_:)(uint64_t *a1)
{
  v2 = v1;
  v10 = *a1;
  v3 = v10;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v5 = swift_allocObject(v4, 40, 7);
  v5[2] = 1;
  v5[3] = 2;
  v5[4] = *(v3 + 16);

  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  v7 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);
  MLShapedArray.init<A>(scalars:shape:)(&v10, v5, &type metadata for Float, v6, &protocol witness table for Float, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  return __swift_storeEnumTagSinglePayload(v2, 0, 1, v8);
}

uint64_t closure #4 in static MLSoundClassifier.convertFeatures(_:)(uint64_t *a1)
{
  v16 = v1;
  v2 = *a1;
  v19 = *(*a1 + 16);
  if (v19)
  {
    v18 = _swiftEmptyArrayStorage;
    v3 = 0;
    v17 = v2;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
    v4 = v17;
    v5 = v19;
    v6 = _swiftEmptyArrayStorage;
    v7 = _swiftEmptyArrayStorage[2];
    do
    {
      v8 = *(v4 + 8 * v3 + 32);
      v18 = v6;
      if (v6[3] >> 1 <= v7)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v6[3] >= 2uLL, v7 + 1, 1);
        v4 = v17;
        v5 = v19;
        v6 = v18;
      }

      ++v3;
      v9 = v8;
      v6[2] = v7 + 1;
      *(v6 + v7++ + 8) = v9;
    }

    while (v5 != v3);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  v18 = v6;
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v11 = swift_allocObject(v10, 40, 7);
  v11[2] = 1;
  v11[3] = 2;
  v11[4] = v19;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  v13 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);
  MLShapedArray.init<A>(scalars:shape:)(&v18, v11, &type metadata for Float, v12, &protocol witness table for Float, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  return __swift_storeEnumTagSinglePayload(v16, 0, 1, v14);
}

uint64_t closure #5 in static MLSoundClassifier.convertFeatures(_:)(uint64_t *a1, float a2)
{
  v19 = v2;
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v23 = _swiftEmptyArrayStorage;
    v5 = v4;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v6 = _swiftEmptyArrayStorage;
    v20 = v3;
    v7 = v3 + 32;
    do
    {
      outlined init with copy of Any(v7, v18);
      v22 = static MLSoundClassifier.convertToFloat(_:)(v18, a2);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for Any?);
      v23 = v6;
      v8 = v6[2];
      v9 = v6[3];
      v10 = v8 + 1;
      if (v9 >> 1 <= v8)
      {
        v21 = v8 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v9 >= 2, v8 + 1, 1);
        v10 = v21;
        v6 = v23;
      }

      v6[2] = v10;
      a2 = v22;
      *(v6 + v8 + 8) = v22;
      v7 += 32;
      --v5;
    }

    while (v5);
    v3 = v20;
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  v18[0] = v6;
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v12 = swift_allocObject(v11, 40, 7);
  v12[2] = 1;
  v12[3] = 2;
  v12[4] = *(v3 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  v14 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);
  v15 = v19;
  MLShapedArray.init<A>(scalars:shape:)(v18, v12, &type metadata for Float, v13, &protocol witness table for Float, v14);
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  return __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
}

float static MLSoundClassifier.convertToFloat(_:)(uint64_t a1, float a2)
{
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1, v7, &demangling cache variable for type metadata for Any?);
  if (!v8)
  {
    goto LABEL_16;
  }

  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v7, v9, &demangling cache variable for type metadata for Any?);
  if (!swift_dynamicCast(v10, v9, &type metadata for Any + 8, &type metadata for Float, 0))
  {
    if (swift_dynamicCast(v10, v9, &type metadata for Any + 8, &type metadata for Double, 0))
    {
      v2 = *v10;
      goto LABEL_8;
    }

    if (swift_dynamicCast(v10, v9, &type metadata for Any + 8, &type metadata for Int, 0))
    {
      v2 = SLODWORD(v10[0]);
      goto LABEL_8;
    }

    v3 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    if (swift_dynamicCast(v10, v9, &type metadata for Any + 8, v3, 0))
    {
      v4 = v10[0];
      [v10[0] floatValue];
      v11 = a2;

      goto LABEL_9;
    }

    if (swift_dynamicCast(v10, v9, &type metadata for Any + 8, &type metadata for String, 0))
    {
      v5 = _sSfySfSgxcSyRzlufCSS_Tt0g5(v10[0], v10[1]);
      if ((v5 & 0x100000000) == 0)
      {
        v11 = *&v5;
        goto LABEL_9;
      }

      v2 = NAN;
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v9);
LABEL_16:
    v11 = NAN;
    goto LABEL_17;
  }

  v2 = *v10;
LABEL_8:
  v11 = v2;
LABEL_9:
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
LABEL_17:
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v7, &demangling cache variable for type metadata for Any?);
  return v11;
}

uint64_t closure #6 in static MLSoundClassifier.convertFeatures(_:)(uint64_t *a1)
{
  v15 = v1;
  v2 = *a1;
  v18 = *(*a1 + 16);
  if (v18)
  {
    v17 = _swiftEmptyArrayStorage;
    v3 = 0;
    v16 = v2;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    v4 = v16;
    v5 = v18;
    v6 = _swiftEmptyArrayStorage;
    v7 = _swiftEmptyArrayStorage[2];
    do
    {
      v8 = 2143289344;
      if (!*(v4 + 8 * v3 + 36))
      {
        v8 = *(v4 + 8 * v3 + 32);
      }

      v17 = v6;
      if (v6[3] >> 1 <= v7)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v6[3] >= 2uLL, v7 + 1, 1);
        v4 = v16;
        v5 = v18;
        v6 = v17;
      }

      ++v3;
      v6[2] = v7 + 1;
      *(v6 + v7++ + 8) = v8;
    }

    while (v5 != v3);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  v17 = v6;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v10 = swift_allocObject(v9, 40, 7);
  v10[2] = 1;
  v10[3] = 2;
  v10[4] = v18;
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  v12 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);
  MLShapedArray.init<A>(scalars:shape:)(&v17, v10, &type metadata for Float, v11, &protocol witness table for Float, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  return __swift_storeEnumTagSinglePayload(v15, 0, 1, v13);
}

uint64_t closure #7 in static MLSoundClassifier.convertFeatures(_:)(uint64_t *a1)
{
  v18 = v1;
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v20 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = _swiftEmptyArrayStorage[2];
    v6 = (v2 + 40);
    v19 = v3;
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v20 = v4;
      v9 = v4[3];
      v10 = v5 + 1;
      if (v9 >> 1 <= v5)
      {
        v21 = v8;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v9 >= 2, v10, 1);
        v8 = v21;
        v10 = v5 + 1;
        v4 = v20;
      }

      v11 = 2143289344;
      if ((v8 & 1) == 0)
      {
        v11 = LODWORD(v7);
      }

      v4[2] = v10;
      *(v4 + v5 + 8) = v11;
      v6 += 2;
      v5 = v10;
      --v3;
    }

    while (v3);
    v3 = v19;
  }

  v20 = v4;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v13 = swift_allocObject(v12, 40, 7);
  v13[2] = 1;
  v13[3] = 2;
  v13[4] = v3;
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  v15 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);
  MLShapedArray.init<A>(scalars:shape:)(&v20, v13, &type metadata for Float, v14, &protocol witness table for Float, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  return __swift_storeEnumTagSinglePayload(v18, 0, 1, v16);
}

uint64_t closure #8 in static MLSoundClassifier.convertFeatures(_:)(uint64_t *a1)
{
  v26 = v1;
  v2 = *a1;
  v27 = *(*a1 + 16);
  v3 = v27;
  if (v27)
  {
    v29 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v2 + 32;
    v25 = &type metadata for Any + 8;
    while (1)
    {
      v23 = v3;
      v24 = v5;
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v5, v20, &demangling cache variable for type metadata for Any?);
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v20, v21, &demangling cache variable for type metadata for Any?);
      v31 = 2143289344;
      if (v22)
      {
        break;
      }

LABEL_12:
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v21, &demangling cache variable for type metadata for Any?);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v20, &demangling cache variable for type metadata for Any?);
      v29 = v4;
      v8 = v4[2];
      v9 = v23;
      if (v4[3] >> 1 <= v8)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v4[3] >= 2uLL, v8 + 1, 1);
        v4 = v29;
      }

      v4[2] = v8 + 1;
      *(v4 + v8 + 8) = v31;
      v5 = v24 + 32;
      v3 = v9 - 1;
      if (!v3)
      {
        goto LABEL_24;
      }
    }

    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v21, v28, &demangling cache variable for type metadata for Any?);
    v6 = v25;
    if (swift_dynamicCast(v30, v28, v25, &type metadata for Float, 0))
    {
      v7 = *v30;
    }

    else if (swift_dynamicCast(v30, v28, v6, &type metadata for Double, 0))
    {
      v7 = *v30;
    }

    else if (swift_dynamicCast(v30, v28, v6, &type metadata for Int, 0))
    {
      v7 = SLODWORD(v30[0]);
    }

    else
    {
      v10 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
      if (swift_dynamicCast(v30, v28, v6, v10, 0))
      {
        v11 = v30[0];
        [v30[0] floatValue];
        v31 = 2143289344;

        goto LABEL_11;
      }

      if (!swift_dynamicCast(v30, v28, v6, &type metadata for String, 0))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        v31 = 2143289344;
        goto LABEL_12;
      }

      v12 = _sSfySfSgxcSyRzlufCSS_Tt0g5(v30[0], v30[1]);
      if ((v12 & 0x100000000) == 0)
      {
        v31 = v12;
        goto LABEL_11;
      }

      v7 = NAN;
    }

    v31 = LODWORD(v7);
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    goto LABEL_12;
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_24:
  v20[0] = v4;
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v14 = swift_allocObject(v13, 40, 7);
  v14[2] = 1;
  v14[3] = 2;
  v14[4] = v27;
  v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  v16 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);
  v17 = v26;
  MLShapedArray.init<A>(scalars:shape:)(v20, v14, &type metadata for Float, v15, &protocol witness table for Float, v16);
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  return __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
}

unint64_t _sSfySfSgxcSyRzlufCSS_Tt0g5(unint64_t a1, uint64_t a2)
{
  v15[0] = 0;
  v13[2] = v15;
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    _StringGuts._slowWithCString<A>(_:)(partial apply for closure #1 in closure #1 in Float.init<A>(_:), v13, a1, a2, &type metadata for Bool);
    a2;
    v7 = v14[0];
  }

  else
  {
    v3 = alloca(32);
    v4 = alloca(32);
    v13[0] = partial apply for closure #1 in closure #1 in Float.init<A>(_:);
    v13[1] = v13;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v14[0] = a1;
      v14[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v7 = (a1 > 0x20u || (v8 = 0x100003E01, !_bittest64(&v8, a1))) && (v9 = _swift_stdlib_strtof_clocale(v14, v15)) != 0 && *v9 == 0;
      a2;
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v6 = a1 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v5 = _StringObject.sharedUTF8.getter(a1, a2);
        v6 = v12;
      }

      v7 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5Sb_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRSb_TG5SRyAGGSbsAD_pIgyrzo_Tf1cn_n(v5, v6, _ss11_StringGutsV11withCStringyxxSPys4Int8VGKXEKlFxSRyAEGKXEfU_Sb_TG5TA_0);
      a2;
    }
  }

  v10 = 0;
  if (v7)
  {
    v10 = v15[0];
  }

  return (((v7 & 1) == 0) << 32) | v10;
}

uint64_t lazy protocol witness table accessor for type MLSoundClassifier.Classifier and conformance MLSoundClassifier.Classifier()
{
  result = lazy protocol witness table cache variable for type MLSoundClassifier.Classifier and conformance MLSoundClassifier.Classifier;
  if (!lazy protocol witness table cache variable for type MLSoundClassifier.Classifier and conformance MLSoundClassifier.Classifier)
  {
    v1 = type metadata accessor for MLSoundClassifier.Classifier(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for MLSoundClassifier.Classifier, v1);
    lazy protocol witness table cache variable for type MLSoundClassifier.Classifier and conformance MLSoundClassifier.Classifier = result;
  }

  return result;
}

uint64_t sub_244351()
{
  v1 = type metadata accessor for MLSoundClassifier.Model(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = ~*(v2 + 80) & (v3 + 16);
  v18 = *(v2 + 64);
  v5 = v4 + v0;
  v6 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v4 + v0, v6);
  if (EnumCaseMultiPayload == 2)
  {
LABEL_5:
    v10 = *v5;
LABEL_6:
    v10;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v4 + v0, v8))
    {
      case 0u:
      case 1u:
        v9 = type metadata accessor for URL(0);
        (*(*(v9 - 8) + 8))(v4 + v0, v9);
        break;
      case 2u:
        goto LABEL_5;
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v5, *(v5 + 8));
        *(v5 + 24);
        v10 = *(v5 + 40);
        goto LABEL_6;
      case 4u:
        v17 = type metadata accessor for DataFrame(0);
        (*(*(v17 - 8) + 8))(v4 + v0, v17);
        v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        *(v5 + *(v19 + 48) + 8);
        v10 = *(v5 + *(v19 + 64) + 8);
        goto LABEL_6;
      default:
        break;
    }
  }

  v11 = *(type metadata accessor for MLSoundClassifier.ModelParameters(0) + 28);
  if (*(v5 + v11 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v5 + v11));
  }

  v12 = *(v1 + 20) + v5;
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v14 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
  if (swift_getEnumCaseMultiPayload(v12, v13) == 1)
  {
    v14 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledName(v14);
  (*(*(v15 - 8) + 8))(v12, v15);
  return swift_deallocObject(v0, v18 + v4, v3 | 7);
}

uint64_t partial apply for closure #1 in MLSoundClassifier.init(checkpoint:)(uint64_t a1)
{
  type metadata accessor for MLSoundClassifier.Model(0);
  v2 = swift_task_alloc(48);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLSoundClassifier.init(checkpoint:)(a1);
}

uint64_t sub_24456D()
{
  v1 = type metadata accessor for MLSoundClassifier(0);
  v2 = *(v1 - 1);
  v3 = *(v2 + 80);
  v4 = ~*(v2 + 80) & (v3 + 16);
  v59 = *(v2 + 64);
  v65 = type metadata accessor for URL(0);
  v5 = *(v65 - 8);
  v57 = *(v5 + 80);
  v66 = v5;
  v56 = *(v5 + 64);
  v58 = v4;
  v55 = v0;
  v6 = v4 + v0;
  v7 = type metadata accessor for TrainingTablePrinter(0);
  if (!__swift_getEnumTagSinglePayload(v6, 1, v7))
  {
    v8 = type metadata accessor for Date(0);
    (*(*(v8 - 8) + 8))(v6, v8);

    *(v6 + *(v7 + 24));
  }

  v64 = v6;
  v9 = v6 + v1[5];
  v10 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v9, v10);
  if (EnumCaseMultiPayload == 2)
  {
LABEL_7:
    v13 = *v9;
LABEL_8:
    v13;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v12 = type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v9, v12))
    {
      case 0u:
      case 1u:
        (*(v66 + 8))(v9, v65);
        break;
      case 2u:
        goto LABEL_7;
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v9, *(v9 + 8));
        *(v9 + 24);
        v13 = *(v9 + 40);
        goto LABEL_8;
      case 4u:
        v24 = type metadata accessor for DataFrame(0);
        (*(*(v24 - 8) + 8))(v9, v24);
        v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        *(v9 + *(v25 + 48) + 8);
        v13 = *(v9 + *(v25 + 64) + 8);
        goto LABEL_8;
      default:
        break;
    }
  }

  v14 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v15 = *(v14 + 28);
  if (*(v9 + v15 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v9 + v15));
  }

  v16 = *(type metadata accessor for MLSoundClassifier.Model(0) + 20) + v9;
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v18 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
  if (swift_getEnumCaseMultiPayload(v16, v17) == 1)
  {
    v18 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledName(v18);
  (*(*(v19 - 8) + 8))(v16, v19);

  v61 = v1;
  v20 = v64 + v1[7];
  v21 = swift_getEnumCaseMultiPayload(v20, v10);
  if (v21 == 2)
  {
    *v20;
    v22 = v64;
  }

  else
  {
    v22 = v64;
    if (v21 == 1)
    {
      v23 = type metadata accessor for MLSoundClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(v20, v23))
      {
        case 0u:
        case 1u:
          (*(v66 + 8))(v20, v65);
          break;
        case 2u:
          v29 = *v20;
          goto LABEL_23;
        case 3u:
          outlined consume of Result<_DataTable, Error>(*v20, *(v20 + 8));
          *(v20 + 24);
          v29 = *(v20 + 40);
          goto LABEL_23;
        case 4u:
          v26 = type metadata accessor for DataFrame(0);
          (*(*(v26 - 8) + 8))(v20, v26);
          v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
          *(v20 + *(v27 + 48) + 8);
          v28 = *(v27 + 64);
          v22 = v64;
          v29 = *(v20 + v28 + 8);
LABEL_23:
          v29;
          break;
        default:
          break;
      }
    }
  }

  v30 = *(v14 + 28);
  if (*(v20 + v30 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v30 + v20));
  }

  v31 = (v22 + v1[8]);
  v32 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v33 = swift_getEnumCaseMultiPayload(v31, v32);
  switch(v33)
  {
    case 2:
      *v31;
      break;
    case 1:
      v60 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v62 = v3;
      v36 = v31 + *(v60 + 20);
      v37 = type metadata accessor for DataFrame(0);
      v38 = *(*(v37 - 8) + 8);
      v39 = v36;
      v3 = v62;
      v38(v39, v37);
      v40 = v37;
      v22 = v64;
      v38(v31 + *(v60 + 24), v40);
      v1 = v61;
      break;
    case 0:
      v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v31, v34) == 1)
      {
        v35 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v35 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v41 = __swift_instantiateConcreteTypeFromMangledName(v35);
      (*(*(v41 - 8) + 8))(v31, v41);
      break;
  }

  v42 = (v1[9] + v22);
  v43 = swift_getEnumCaseMultiPayload(v42, v32);
  switch(v43)
  {
    case 2:
      *v42;
      break;
    case 1:
      v46 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v47 = v42 + *(v46 + 20);
      v63 = v3;
      v48 = type metadata accessor for DataFrame(0);
      v49 = *(*(v48 - 8) + 8);
      v49(v47, v48);
      v50 = v48;
      v3 = v63;
      v49(v42 + *(v46 + 24), v50);
      break;
    case 0:
      v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v42, v44) == 1)
      {
        v45 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v45 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v51 = __swift_instantiateConcreteTypeFromMangledName(v45);
      (*(*(v51 - 8) + 8))(v42, v51);
      break;
  }

  v52 = (v59 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v52 + v57 + 8) & ~v57;
  *(v55 + v52);
  (*(v66 + 8))(v55 + v53, v65);
  return swift_deallocObject(v55, v53 + v56, v57 | v3 | 7);
}

uint64_t partial apply for closure #1 in MLSoundClassifier.predictions(from:overlapFactor:predictionTimeWindowSize:)(uint64_t a1)
{
  v3 = *(type metadata accessor for MLSoundClassifier(0) - 8);
  v4 = ~*(v3 + 80) & (*(v3 + 80) + 16);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(*(type metadata accessor for URL(0) - 8) + 80);
  v7 = (v5 + v6 + 8) & ~v6;
  v8 = *(v1 + v5);
  v9 = swift_task_alloc(96);
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLSoundClassifier.predictions(from:overlapFactor:predictionTimeWindowSize:)(a1, v1 + v4, v8, v1 + v7);
}

id sub_244B37()
{
  v1 = v0;
  result = MLSoundClassifier.model.getter();
  *v1 = result;
  return result;
}

char *initializeBufferWithCopyOfBuffer for MLSoundClassifier(char *__dst, char *__src, int *a3)
{
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *__src;
    *__dst = *__src;
    v9 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = type metadata accessor for TrainingTablePrinter(0);
    v107 = a3;
    if (__swift_getEnumTagSinglePayload(__src, 1, v6))
    {
      v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingTablePrinter?);
      memcpy(__dst, __src, *(*(v7 - 8) + 64));
    }

    else
    {
      v10 = type metadata accessor for Date(0);
      (*(*(v10 - 8) + 16))(__dst, __src, v10);
      v11 = *(v6 + 20);
      v12 = *&__src[v11];
      *&__dst[v11] = v12;
      *&__dst[*(v6 + 24)] = *&__src[*(v6 + 24)];
      v12;

      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v6);
    }

    v13 = a3[5];
    v14 = &__dst[v13];
    v15 = &__src[v13];
    v16 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v15, v16);
    v115 = v16;
    if (EnumCaseMultiPayload == 2)
    {
      *v14 = *v15;

      swift_storeEnumTagMultiPayload(v14, v16, 2);
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v18 = type metadata accessor for MLSoundClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(v15, v18))
      {
        case 0u:
          v19 = type metadata accessor for URL(0);
          (*(*(v19 - 8) + 16))(v14, v15, v19);
          v20 = v14;
          v21 = v18;
          v22 = 0;
          goto LABEL_17;
        case 1u:
          v32 = type metadata accessor for URL(0);
          (*(*(v32 - 8) + 16))(v14, v15, v32);
          v103 = 1;
          goto LABEL_16;
        case 2u:
          *v14 = *v15;

          v103 = 2;
          goto LABEL_16;
        case 3u:
          v29 = *v15;
          v113 = v18;
          v30 = v15[8];
          outlined copy of Result<_DataTable, Error>(*v15, v30);
          *v14 = v29;
          v14[8] = v30;
          *(v14 + 2) = *(v15 + 2);
          *(v14 + 3) = *(v15 + 3);
          *(v14 + 4) = *(v15 + 4);
          *(v14 + 5) = *(v15 + 5);
          v31 = *(v15 + 4);
          *(v14 + 3) = *(v15 + 3);
          *(v14 + 4) = v31;
          v14[80] = v15[80];

          v16 = v115;

          v22 = 3;
          v20 = v14;
          v21 = v113;
          goto LABEL_17;
        case 4u:
          v23 = type metadata accessor for DataFrame(0);
          (*(*(v23 - 8) + 16))(v14, v15, v23);
          v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
          v25 = v24[12];
          *&v14[v25] = *&v15[v25];
          *&v14[v25 + 8] = *&v15[v25 + 8];
          v26 = v24[16];
          *&v14[v26] = *&v15[v26];
          *&v14[v26 + 8] = *&v15[v26 + 8];
          v27 = v24[20];
          v14[v27 + 32] = v15[v27 + 32];
          v28 = *&v15[v27];
          *&v14[v27 + 16] = *&v15[v27 + 16];
          *&v14[v27] = v28;

          v103 = 4;
LABEL_16:
          v22 = v103;
          v20 = v14;
          v21 = v18;
LABEL_17:
          swift_storeEnumTagMultiPayload(v20, v21, v22);
          swift_storeEnumTagMultiPayload(v14, v16, 1);
          break;
      }
    }

    else
    {
      memcpy(v14, v15, *(*(v16 - 8) + 64));
    }

    v33 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
    *&v14[v33[5]] = *&v15[v33[5]];
    *&v14[v33[6]] = *&v15[v33[6]];
    v34 = v33[7];
    v35 = &v14[v34];
    v36 = &v15[v34];
    v37 = *&v15[v34 + 24];
    v114 = __dst;
    if (v37)
    {
      *(v35 + 3) = v37;
      (**(v37 - 8))(v35, v36);
    }

    else
    {
      v38 = *v36;
      *(v35 + 1) = *(v36 + 1);
      *v35 = v38;
    }

    v39 = v33[8];
    v14[v39 + 8] = v15[v39 + 8];
    *&v14[v39] = *&v15[v39];
    *&v14[v33[9]] = *&v15[v33[9]];
    v40 = *(type metadata accessor for MLSoundClassifier.Model(0) + 20);
    v41 = &v14[v40];
    v42 = &v15[v40];
    v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    v44 = swift_getEnumCaseMultiPayload(v42, v43);
    v45 = v44 == 1;
    v46 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
    if (v44 == 1)
    {
      v46 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
    }

    v47 = __swift_instantiateConcreteTypeFromMangledName(v46);
    (*(*(v47 - 8) + 16))(v41, v42, v47);
    swift_storeEnumTagMultiPayload(v41, v43, v45);
    v48 = v107[6];
    v49 = *&__src[v48];
    v50 = v114;
    *&v114[v48] = v49;
    v51 = v107[7];
    v52 = &v114[v51];
    v53 = &__src[v51];
    v49;
    v54 = v115;
    v55 = swift_getEnumCaseMultiPayload(v53, v115);
    if (v55 == 2)
    {
      *v52 = *v53;

      swift_storeEnumTagMultiPayload(v52, v115, 2);
    }

    else if (v55 == 1)
    {
      v110 = type metadata accessor for MLSoundClassifier.DataSource(0);
      v105 = swift_getEnumCaseMultiPayload(v53, v110);
      switch(v105)
      {
        case 0u:
        case 1u:
          v56 = type metadata accessor for URL(0);
          (*(*(v56 - 8) + 16))(v52, v53, v56);
          goto LABEL_34;
        case 2u:
          *v52 = *v53;
          goto LABEL_33;
        case 3u:
          v63 = *v53;
          v64 = v53[8];
          outlined copy of Result<_DataTable, Error>(*v53, v64);
          *v52 = v63;
          v52[8] = v64;
          v54 = v115;
          *(v52 + 2) = *(v53 + 2);
          *(v52 + 3) = *(v53 + 3);
          *(v52 + 4) = *(v53 + 4);
          *(v52 + 5) = *(v53 + 5);
          v65 = *(v53 + 4);
          *(v52 + 3) = *(v53 + 3);
          *(v52 + 4) = v65;
          v52[80] = v53[80];
          goto LABEL_32;
        case 4u:
          v57 = type metadata accessor for DataFrame(0);
          (*(*(v57 - 8) + 16))(v52, v53, v57);
          v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
          v59 = v58[12];
          *&v52[v59] = *&v53[v59];
          *&v52[v59 + 8] = *&v53[v59 + 8];
          v60 = v58[16];
          *&v52[v60] = *&v53[v60];
          *&v52[v60 + 8] = *&v53[v60 + 8];
          v61 = v58[20];
          v52[v61 + 32] = v53[v61 + 32];
          v62 = *&v53[v61];
          *&v52[v61 + 16] = *&v53[v61 + 16];
          *&v52[v61] = v62;
LABEL_32:

          v50 = v114;
LABEL_33:

LABEL_34:
          swift_storeEnumTagMultiPayload(v52, v110, v105);
          swift_storeEnumTagMultiPayload(v52, v54, 1);
          break;
        case 5u:
          JUMPOUT(0x245390);
      }
    }

    else
    {
      memcpy(v52, v53, *(*(v115 - 8) + 64));
    }

    *&v52[v33[5]] = *&v53[v33[5]];
    *&v52[v33[6]] = *&v53[v33[6]];
    v66 = v33[7];
    v67 = &v52[v66];
    v68 = &v53[v66];
    v69 = *&v53[v66 + 24];
    if (v69)
    {
      *(v67 + 3) = v69;
      (**(v69 - 8))(v67, v68);
    }

    else
    {
      v70 = *v68;
      *(v67 + 1) = *(v68 + 1);
      *v67 = v70;
    }

    v71 = v33[8];
    v52[v71 + 8] = v53[v71 + 8];
    *&v52[v71] = *&v53[v71];
    *&v52[v33[9]] = *&v53[v33[9]];
    v72 = v107;
    v73 = v107[8];
    v74 = &v50[v73];
    v75 = &__src[v73];
    v116 = type metadata accessor for MLClassifierMetrics.Contents(0);
    v76 = swift_getEnumCaseMultiPayload(v75, v116);
    if (v76 == 2)
    {
      v81 = *v75;
      swift_errorRetain(*v75);
      *v74 = v81;
    }

    else if (v76 == 1)
    {
      *v74 = *v75;
      v106 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v77 = *(v106 + 20);
      v104 = v74 + v77;
      v78 = type metadata accessor for DataFrame(0);
      v111 = v74;
      v79 = *(*(v78 - 8) + 16);
      v80 = v75 + v77;
      v72 = v107;
      v79(v104, v80, v78);
      v79(v111 + *(v106 + 24), v75 + *(v106 + 24), v78);
      v74 = v111;
    }

    else
    {
      v112 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v82 = swift_getEnumCaseMultiPayload(v75, v112);
      v83 = v82 == 1;
      v84 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v82 == 1)
      {
        v84 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v85 = __swift_instantiateConcreteTypeFromMangledName(v84);
      (*(*(v85 - 8) + 16))(v74, v75, v85);
      swift_storeEnumTagMultiPayload(v74, v112, v83);
    }

    swift_storeEnumTagMultiPayload(v74, v116, v76);
    v86 = v72[9];
    v87 = &v114[v86];
    v88 = &__src[v86];
    v89 = swift_getEnumCaseMultiPayload(&__src[v86], v116);
    if (v89 == 2)
    {
      v96 = *v88;
      swift_errorRetain(*v88);
      *v87 = v96;
      v9 = v114;
      swift_storeEnumTagMultiPayload(v87, v116, 2);
    }

    else if (v89 == 1)
    {
      *v87 = *v88;
      v90 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v91 = *(v90 + 20);
      v109 = v87 + v91;
      v92 = type metadata accessor for DataFrame(0);
      v93 = v88 + v91;
      v94 = *(*(v92 - 8) + 16);
      v94(v109, v93, v92);
      v95 = *(v90 + 24);
      v9 = v114;
      v94(v87 + v95, v88 + v95, v92);
      swift_storeEnumTagMultiPayload(v87, v116, 1);
    }

    else
    {
      v97 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v98 = swift_getEnumCaseMultiPayload(v88, v97);
      v99 = v98 == 1;
      v100 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v98 == 1)
      {
        v100 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v101 = __swift_instantiateConcreteTypeFromMangledName(v100);
      (*(*(v101 - 8) + 16))(v87, v88, v101);
      swift_storeEnumTagMultiPayload(v87, v97, v99);
      swift_storeEnumTagMultiPayload(v87, v116, 0);
      return v114;
    }
  }

  return v9;
}

uint64_t destroy for MLSoundClassifier(uint64_t a1, int *a2)
{
  v2 = a2;
  v3 = a1;
  v4 = type metadata accessor for TrainingTablePrinter(0);
  if (!__swift_getEnumTagSinglePayload(a1, 1, v4))
  {
    v5 = type metadata accessor for Date(0);
    (*(*(v5 - 8) + 8))(a1, v5);

    *(a1 + *(v4 + 24));
  }

  v6 = a1 + a2[5];
  v7 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v6, v7);
  if (EnumCaseMultiPayload == 2)
  {
LABEL_7:
    v11 = *v6;
LABEL_8:
    v11;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v9 = type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v6, v9))
    {
      case 0u:
      case 1u:
        v10 = type metadata accessor for URL(0);
        (*(*(v10 - 8) + 8))(v6, v10);
        break;
      case 2u:
        goto LABEL_7;
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v6, *(v6 + 8));
        *(v6 + 24);
        v11 = *(v6 + 40);
        goto LABEL_8;
      case 4u:
        v43 = type metadata accessor for DataFrame(0);
        (*(*(v43 - 8) + 8))(v6, v43);
        v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        *(v6 + *(v44 + 48) + 8);
        v11 = *(v6 + *(v44 + 64) + 8);
        goto LABEL_8;
      default:
        break;
    }
  }

  v12 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v13 = *(v12 + 28);
  if (*(v6 + v13 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v6 + v13));
  }

  v14 = *(type metadata accessor for MLSoundClassifier.Model(0) + 20) + v6;
  v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v16 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
  if (swift_getEnumCaseMultiPayload(v14, v15) == 1)
  {
    v16 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledName(v16);
  (*(*(v17 - 8) + 8))(v14, v17);

  v18 = v3 + a2[7];
  v19 = swift_getEnumCaseMultiPayload(v18, v7);
  if (v19 == 2)
  {
LABEL_17:
    v22 = *v18;
LABEL_18:
    v22;
  }

  else if (v19 == 1)
  {
    v20 = type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v18, v20))
    {
      case 0u:
      case 1u:
        v21 = type metadata accessor for URL(0);
        (*(*(v21 - 8) + 8))(v18, v21);
        break;
      case 2u:
        goto LABEL_17;
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v18, *(v18 + 8));
        *(v18 + 24);
        v22 = *(v18 + 40);
        goto LABEL_18;
      case 4u:
        v45 = type metadata accessor for DataFrame(0);
        (*(*(v45 - 8) + 8))(v18, v45);
        v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        *(v18 + *(v46 + 48) + 8);
        v22 = *(v18 + *(v46 + 64) + 8);
        goto LABEL_18;
      default:
        break;
    }
  }

  v23 = *(v12 + 28);
  if (*(v18 + v23 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v23 + v18));
  }

  v24 = (v3 + a2[8]);
  v25 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v26 = swift_getEnumCaseMultiPayload(v24, v25);
  switch(v26)
  {
    case 2:
      *v24;
      break;
    case 1:
      v48 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v29 = v24 + *(v48 + 20);
      v30 = type metadata accessor for DataFrame(0);
      v47 = v3;
      v31 = *(*(v30 - 8) + 8);
      v32 = v29;
      v2 = a2;
      v31(v32, v30);
      v31(v24 + *(v48 + 24), v30);
      v3 = v47;
      break;
    case 0:
      v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v24, v27) == 1)
      {
        v28 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v28 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v33 = __swift_instantiateConcreteTypeFromMangledName(v28);
      (*(*(v33 - 8) + 8))(v24, v33);
      break;
  }

  v34 = (v2[9] + v3);
  result = swift_getEnumCaseMultiPayload(v34, v25);
  switch(result)
  {
    case 2:
      return *v34;
    case 1:
      v38 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v39 = v34 + *(v38 + 20);
      v40 = type metadata accessor for DataFrame(0);
      v41 = *(*(v40 - 8) + 8);
      v41(v39, v40);
      return (v41)(v34 + *(v38 + 24), v40);
    case 0:
      v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v34, v36) == 1)
      {
        v37 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v37 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v42 = __swift_instantiateConcreteTypeFromMangledName(v37);
      return (*(*(v42 - 8) + 8))(v34, v42);
  }

  return result;
}

char *initializeWithCopy for MLSoundClassifier(char *__dst, char *__src, int *a3)
{
  v3 = __src;
  v5 = type metadata accessor for TrainingTablePrinter(0);
  if (__swift_getEnumTagSinglePayload(__src, 1, v5))
  {
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingTablePrinter?);
    memcpy(__dst, __src, *(*(v6 - 8) + 64));
  }

  else
  {
    v7 = type metadata accessor for Date(0);
    (*(*(v7 - 8) + 16))(__dst, __src, v7);
    v8 = *(v5 + 20);
    v9 = *&__src[v8];
    *&__dst[v8] = v9;
    *&__dst[*(v5 + 24)] = *&__src[*(v5 + 24)];
    v9;
    v3 = __src;

    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v5);
  }

  v10 = a3[5];
  v107 = __dst;
  v11 = &__dst[v10];
  v12 = &v3[v10];
  v13 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v12, v13);
  v114 = v13;
  if (EnumCaseMultiPayload == 2)
  {
    *v11 = *v12;

    swift_storeEnumTagMultiPayload(v11, v13, 2);
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v15 = type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v12, v15))
    {
      case 0u:
        v16 = type metadata accessor for URL(0);
        (*(*(v16 - 8) + 16))(v11, v12, v16);
        v17 = v11;
        v18 = v15;
        v19 = 0;
        goto LABEL_15;
      case 1u:
        v29 = type metadata accessor for URL(0);
        (*(*(v29 - 8) + 16))(v11, v12, v29);
        v103 = 1;
        goto LABEL_14;
      case 2u:
        *v11 = *v12;

        v103 = 2;
        goto LABEL_14;
      case 3u:
        v26 = *v12;
        v27 = *(v12 + 8);
        outlined copy of Result<_DataTable, Error>(*v12, v27);
        *v11 = v26;
        v11[8] = v27;
        *(v11 + 2) = *(v12 + 16);
        *(v11 + 3) = *(v12 + 24);
        *(v11 + 4) = *(v12 + 32);
        *(v11 + 5) = *(v12 + 40);
        v28 = *(v12 + 64);
        *(v11 + 3) = *(v12 + 48);
        *(v11 + 4) = v28;
        v11[80] = *(v12 + 80);

        v13 = v114;

        v103 = 3;
        goto LABEL_14;
      case 4u:
        v20 = type metadata accessor for DataFrame(0);
        (*(*(v20 - 8) + 16))(v11, v12, v20);
        v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        v22 = v21[12];
        *&v11[v22] = *(v12 + v22);
        *&v11[v22 + 8] = *(v12 + v22 + 8);
        v23 = v21[16];
        *&v11[v23] = *(v12 + v23);
        *&v11[v23 + 8] = *(v12 + v23 + 8);
        v24 = v21[20];
        v11[v24 + 32] = *(v12 + v24 + 32);
        v25 = *(v12 + v24);
        *&v11[v24 + 16] = *(v12 + v24 + 16);
        *&v11[v24] = v25;

        v103 = 4;
LABEL_14:
        v19 = v103;
        v17 = v11;
        v18 = v15;
LABEL_15:
        swift_storeEnumTagMultiPayload(v17, v18, v19);
        swift_storeEnumTagMultiPayload(v11, v13, 1);
        break;
    }
  }

  else
  {
    memcpy(v11, v12, *(*(v13 - 8) + 64));
  }

  v30 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  *&v11[v30[5]] = *(v12 + v30[5]);
  *&v11[v30[6]] = *(v12 + v30[6]);
  v31 = v30[7];
  v32 = &v11[v31];
  v33 = (v12 + v31);
  v34 = *(v12 + v31 + 24);
  if (v34)
  {
    *(v32 + 3) = v34;
    (**(v34 - 8))(v32, v33);
  }

  else
  {
    v35 = *v33;
    *(v32 + 1) = v33[1];
    *v32 = v35;
  }

  v36 = v30[8];
  v11[v36 + 8] = *(v12 + v36 + 8);
  *&v11[v36] = *(v12 + v36);
  *&v11[v30[9]] = *(v12 + v30[9]);
  v37 = *(type metadata accessor for MLSoundClassifier.Model(0) + 20);
  v38 = &v11[v37];
  v39 = v37 + v12;
  v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v41 = swift_getEnumCaseMultiPayload(v39, v40);
  v42 = v41 == 1;
  v43 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
  if (v41 == 1)
  {
    v43 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
  }

  v44 = __swift_instantiateConcreteTypeFromMangledName(v43);
  (*(*(v44 - 8) + 16))(v38, v39, v44);
  swift_storeEnumTagMultiPayload(v38, v40, v42);
  v45 = a3[6];
  v46 = __src;
  v47 = *&__src[v45];
  *&v107[v45] = v47;
  v48 = a3[7];
  v49 = &v107[v48];
  v50 = &__src[v48];
  v47;
  v51 = v114;
  v52 = swift_getEnumCaseMultiPayload(v50, v114);
  if (v52 == 2)
  {
    *v49 = *v50;

    swift_storeEnumTagMultiPayload(v49, v114, 2);
  }

  else if (v52 == 1)
  {
    v108 = type metadata accessor for MLSoundClassifier.DataSource(0);
    v105 = swift_getEnumCaseMultiPayload(v50, v108);
    switch(v105)
    {
      case 0u:
      case 1u:
        v53 = type metadata accessor for URL(0);
        (*(*(v53 - 8) + 16))(v49, v50, v53);
        goto LABEL_32;
      case 2u:
        *v49 = *v50;
        goto LABEL_31;
      case 3u:
        v60 = *v50;
        v61 = v50[8];
        outlined copy of Result<_DataTable, Error>(*v50, v61);
        *v49 = v60;
        v49[8] = v61;
        v46 = __src;
        *(v49 + 2) = *(v50 + 2);
        *(v49 + 3) = *(v50 + 3);
        *(v49 + 4) = *(v50 + 4);
        *(v49 + 5) = *(v50 + 5);
        v62 = *(v50 + 4);
        *(v49 + 3) = *(v50 + 3);
        *(v49 + 4) = v62;
        v49[80] = v50[80];
        goto LABEL_30;
      case 4u:
        v54 = type metadata accessor for DataFrame(0);
        (*(*(v54 - 8) + 16))(v49, v50, v54);
        v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        v56 = v55[12];
        *&v49[v56] = *&v50[v56];
        *&v49[v56 + 8] = *&v50[v56 + 8];
        v57 = v55[16];
        *&v49[v57] = *&v50[v57];
        *&v49[v57 + 8] = *&v50[v57 + 8];
        v58 = v55[20];
        v49[v58 + 32] = v50[v58 + 32];
        v59 = *&v50[v58];
        *&v49[v58 + 16] = *&v50[v58 + 16];
        *&v49[v58] = v59;
LABEL_30:

        v51 = v114;
LABEL_31:

LABEL_32:
        swift_storeEnumTagMultiPayload(v49, v108, v105);
        swift_storeEnumTagMultiPayload(v49, v51, 1);
        break;
    }
  }

  else
  {
    memcpy(v49, v50, *(*(v114 - 8) + 64));
  }

  *&v49[v30[5]] = *&v50[v30[5]];
  *&v49[v30[6]] = *&v50[v30[6]];
  v63 = v30[7];
  v64 = &v49[v63];
  v65 = &v50[v63];
  v66 = *&v50[v63 + 24];
  if (v66)
  {
    *(v64 + 3) = v66;
    (**(v66 - 8))(v64, v65);
  }

  else
  {
    v67 = *v65;
    *(v64 + 1) = *(v65 + 1);
    *v64 = v67;
  }

  v68 = v30[8];
  v49[v68 + 8] = v50[v68 + 8];
  *&v49[v68] = *&v50[v68];
  *&v49[v30[9]] = *&v50[v30[9]];
  v69 = a3[8];
  v70 = v107;
  v71 = &v107[v69];
  v72 = &v46[v69];
  v115 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v73 = swift_getEnumCaseMultiPayload(v72, v115);
  if (v73 == 2)
  {
    v79 = *v72;
    swift_errorRetain(v79);
    *v71 = v79;
  }

  else if (v73 == 1)
  {
    *v71 = *v72;
    v109 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v74 = *(v109 + 20);
    v106 = v71 + v74;
    v75 = type metadata accessor for DataFrame(0);
    v76 = v72 + v74;
    v77 = *(*(v75 - 8) + 16);
    v77(v106, v76, v75);
    v78 = v75;
    v46 = __src;
    v77(v71 + *(v109 + 24), v72 + *(v109 + 24), v78);
    v70 = v107;
  }

  else
  {
    v110 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v80 = swift_getEnumCaseMultiPayload(v72, v110);
    v81 = v80 == 1;
    v82 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v80 == 1)
    {
      v82 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v83 = __swift_instantiateConcreteTypeFromMangledName(v82);
    (*(*(v83 - 8) + 16))(v71, v72, v83);
    swift_storeEnumTagMultiPayload(v71, v110, v81);
    v46 = __src;
  }

  swift_storeEnumTagMultiPayload(v71, v115, v73);
  v84 = a3[9];
  v85 = &v70[v84];
  v86 = &v46[v84];
  v87 = swift_getEnumCaseMultiPayload(v86, v115);
  if (v87 == 2)
  {
    v92 = *v86;
    swift_errorRetain(*v86);
    *v85 = v92;
    v104 = 2;
    goto LABEL_47;
  }

  if (v87 == 1)
  {
    *v85 = *v86;
    v112 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v88 = v86;
    v89 = *(v112 + 20);
    v90 = type metadata accessor for DataFrame(0);
    v91 = *(*(v90 - 8) + 16);
    v91(v85 + v89, v88 + v89, v90);
    v91(v85 + *(v112 + 24), v88 + *(v112 + 24), v90);
    v70 = v107;
    v104 = 1;
LABEL_47:
    v93 = v104;
    v94 = v85;
    v95 = v115;
    goto LABEL_51;
  }

  v96 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  v97 = swift_getEnumCaseMultiPayload(v86, v96);
  v98 = v86;
  v99 = v97 == 1;
  v100 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
  if (v97 == 1)
  {
    v100 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
  }

  v101 = __swift_instantiateConcreteTypeFromMangledName(v100);
  (*(*(v101 - 8) + 16))(v85, v98, v101);
  swift_storeEnumTagMultiPayload(v85, v96, v99);
  v94 = v85;
  v95 = v115;
  v93 = 0;
LABEL_51:
  swift_storeEnumTagMultiPayload(v94, v95, v93);
  return v70;
}

char *assignWithCopy for MLSoundClassifier(char *__dst, char *__src, int *a3)
{
  v4 = type metadata accessor for TrainingTablePrinter(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(__dst, 1, v4);
  v6 = __swift_getEnumTagSinglePayload(__src, 1, v4);
  if (EnumTagSinglePayload)
  {
    if (!v6)
    {
      v7 = type metadata accessor for Date(0);
      (*(*(v7 - 8) + 16))(__dst, __src, v7);
      v8 = *(v4 + 20);
      v9 = *&__src[v8];
      *&__dst[v8] = v9;
      *&__dst[*(v4 + 24)] = *&__src[*(v4 + 24)];
      v9;

      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v4);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v6)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for TrainingTablePrinter);
LABEL_6:
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingTablePrinter?);
    memcpy(__dst, __src, *(*(v10 - 8) + 64));
    goto LABEL_7;
  }

  v21 = type metadata accessor for Date(0);
  (*(*(v21 - 8) + 24))(__dst, __src, v21);
  v22 = *(v4 + 20);
  v23 = *&__src[v22];
  v24 = *&__dst[v22];
  *&__dst[v22] = v23;
  v23;

  v25 = *(v4 + 24);
  v26 = *&__dst[v25];
  *&__dst[v25] = *&__src[v25];

  v26;
LABEL_7:
  v11 = a3[5];
  v12 = &__dst[v11];
  v13 = &__src[v11];
  v120 = __dst;
  if (__dst != __src)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    v14 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v13, v14);
    if (EnumCaseMultiPayload == 2)
    {
      *v12 = *v13;

      swift_storeEnumTagMultiPayload(v12, v14, 2);
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v16 = type metadata accessor for MLSoundClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(v13, v16))
      {
        case 0u:
          v17 = type metadata accessor for URL(0);
          (*(*(v17 - 8) + 16))(v12, v13, v17);
          v18 = v12;
          v19 = v16;
          v20 = 0;
          goto LABEL_20;
        case 1u:
          v36 = type metadata accessor for URL(0);
          (*(*(v36 - 8) + 16))(v12, v13, v36);
          v111 = 1;
          goto LABEL_19;
        case 2u:
          *v12 = *v13;

          v111 = 2;
          goto LABEL_19;
        case 3u:
          v33 = *v13;
          v121 = v16;
          v34 = v13[8];
          outlined copy of Result<_DataTable, Error>(*v13, v34);
          *v12 = v33;
          v12[8] = v34;
          *(v12 + 2) = *(v13 + 2);
          *(v12 + 3) = *(v13 + 3);
          *(v12 + 4) = *(v13 + 4);
          *(v12 + 5) = *(v13 + 5);
          v35 = *(v13 + 4);
          *(v12 + 3) = *(v13 + 3);
          *(v12 + 4) = v35;
          v12[80] = v13[80];

          v20 = 3;
          v18 = v12;
          v19 = v121;
          goto LABEL_20;
        case 4u:
          v27 = type metadata accessor for DataFrame(0);
          (*(*(v27 - 8) + 16))(v12, v13, v27);
          v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
          v29 = v28[12];
          *&v12[v29] = *&v13[v29];
          *&v12[v29 + 8] = *&v13[v29 + 8];
          v30 = v28[16];
          *&v12[v30] = *&v13[v30];
          *&v12[v30 + 8] = *&v13[v30 + 8];
          v31 = v28[20];
          v12[v31 + 32] = v13[v31 + 32];
          v32 = *&v13[v31];
          *&v12[v31 + 16] = *&v13[v31 + 16];
          *&v12[v31] = v32;

          v111 = 4;
LABEL_19:
          v20 = v111;
          v18 = v12;
          v19 = v16;
LABEL_20:
          swift_storeEnumTagMultiPayload(v18, v19, v20);
          swift_storeEnumTagMultiPayload(v12, v14, 1);
          break;
      }
    }

    else
    {
      memcpy(v12, v13, *(*(v14 - 8) + 64));
    }
  }

  v37 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  *&v12[v37[5]] = *&v13[v37[5]];
  *&v12[v37[6]] = *&v13[v37[6]];
  v38 = v37[7];
  v39 = &v12[v38];
  v40 = &v13[v38];
  v41 = *&v13[v38 + 24];
  if (*&v12[v38 + 24])
  {
    if (v41)
    {
      __swift_assign_boxed_opaque_existential_0(&v12[v38], &v13[v38]);
      goto LABEL_28;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v12[v38]);
  }

  else if (v41)
  {
    *(v39 + 3) = v41;
    (**(v41 - 8))(v39, v40);
    goto LABEL_28;
  }

  v42 = *v40;
  *(v39 + 1) = *(v40 + 1);
  *v39 = v42;
LABEL_28:
  v43 = v37[8];
  v12[v43 + 8] = v13[v43 + 8];
  *&v12[v43] = *&v13[v43];
  *&v12[v37[9]] = *&v13[v37[9]];
  v44 = type metadata accessor for MLSoundClassifier.Model(0);
  if (v120 != __src)
  {
    v45 = *(v44 + 20);
    v46 = &v13[v45];
    v47 = &v12[v45];
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v47, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    v49 = swift_getEnumCaseMultiPayload(v46, v48);
    v50 = v49 == 1;
    v51 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
    if (v49 == 1)
    {
      v51 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
    }

    v52 = __swift_instantiateConcreteTypeFromMangledName(v51);
    (*(*(v52 - 8) + 16))(v47, v46, v52);
    swift_storeEnumTagMultiPayload(v47, v48, v50);
  }

  v53 = a3[6];
  v54 = *&__src[v53];
  v55 = *&v120[v53];
  *&v120[v53] = v54;
  v54;

  v56 = a3[7];
  v57 = &v120[v56];
  v58 = &__src[v56];
  if (v120 != __src)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v57, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    v59 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
    v60 = swift_getEnumCaseMultiPayload(v58, v59);
    if (v60 == 2)
    {
      *v57 = *v58;

      swift_storeEnumTagMultiPayload(v57, v59, 2);
    }

    else if (v60 == 1)
    {
      v61 = type metadata accessor for MLSoundClassifier.DataSource(0);
      v112 = swift_getEnumCaseMultiPayload(v58, v61);
      switch(v112)
      {
        case 0u:
        case 1u:
          v62 = type metadata accessor for URL(0);
          (*(*(v62 - 8) + 16))(v57, v58, v62);
          goto LABEL_44;
        case 2u:
          *v57 = *v58;
          goto LABEL_43;
        case 3u:
          v116 = v61;
          v69 = *v58;
          v114 = v59;
          v70 = v58[8];
          outlined copy of Result<_DataTable, Error>(*v58, v70);
          *v57 = v69;
          v57[8] = v70;
          v59 = v114;
          *(v57 + 2) = *(v58 + 2);
          *(v57 + 3) = *(v58 + 3);
          *(v57 + 4) = *(v58 + 4);
          *(v57 + 5) = *(v58 + 5);
          v71 = *(v58 + 4);
          *(v57 + 3) = *(v58 + 3);
          *(v57 + 4) = v71;
          v57[80] = v58[80];
          goto LABEL_42;
        case 4u:
          v63 = type metadata accessor for DataFrame(0);
          (*(*(v63 - 8) + 16))(v57, v58, v63);
          v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
          v65 = v64[12];
          *&v57[v65] = *&v58[v65];
          *&v57[v65 + 8] = *&v58[v65 + 8];
          v66 = v64[16];
          *&v57[v66] = *&v58[v66];
          v116 = v61;
          *&v57[v66 + 8] = *&v58[v66 + 8];
          v67 = v64[20];
          v57[v67 + 32] = v58[v67 + 32];
          v68 = *&v58[v67];
          *&v57[v67 + 16] = *&v58[v67 + 16];
          *&v57[v67] = v68;
LABEL_42:

          v61 = v116;
LABEL_43:

LABEL_44:
          swift_storeEnumTagMultiPayload(v57, v61, v112);
          swift_storeEnumTagMultiPayload(v57, v59, 1);
          break;
      }
    }

    else
    {
      memcpy(v57, v58, *(*(v59 - 8) + 64));
    }
  }

  *&v57[v37[5]] = *&v58[v37[5]];
  *&v57[v37[6]] = *&v58[v37[6]];
  v72 = v37[7];
  v73 = &v57[v72];
  v74 = &v58[v72];
  v75 = *&v58[v72 + 24];
  if (*&v57[v72 + 24])
  {
    if (v75)
    {
      __swift_assign_boxed_opaque_existential_0(&v57[v72], &v58[v72]);
      goto LABEL_52;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v57[v72]);
  }

  else if (v75)
  {
    *(v73 + 3) = v75;
    (**(v75 - 8))(v73, v74);
    goto LABEL_52;
  }

  v76 = *v74;
  *(v73 + 1) = *(v74 + 1);
  *v73 = v76;
LABEL_52:
  v77 = v37[8];
  v57[v77 + 8] = v58[v77 + 8];
  *&v57[v77] = *&v58[v77];
  *&v57[v37[9]] = *&v58[v37[9]];
  result = v120;
  if (v120 != __src)
  {
    v79 = a3[8];
    v80 = &v120[v79];
    v81 = &__src[v79];
    outlined destroy of MLActivityClassifier.ModelParameters(v80, type metadata accessor for MLClassifierMetrics.Contents);
    v82 = type metadata accessor for MLClassifierMetrics.Contents(0);
    v83 = swift_getEnumCaseMultiPayload(v81, v82);
    v122 = v82;
    if (v83 == 2)
    {
      v88 = *v81;
      swift_errorRetain(*v81);
      *v80 = v88;
    }

    else if (v83 == 1)
    {
      *v80 = *v81;
      v113 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v84 = *(v113 + 20);
      v115 = v80 + v84;
      v85 = type metadata accessor for DataFrame(0);
      v86 = *(*(v85 - 8) + 16);
      v87 = v81 + v84;
      v82 = v122;
      v86(v115, v87, v85);
      v86(v80 + *(v113 + 24), v81 + *(v113 + 24), v85);
      v83 = 1;
    }

    else
    {
      v89 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v90 = swift_getEnumCaseMultiPayload(v81, v89);
      v91 = v90 == 1;
      v92 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v90 == 1)
      {
        v92 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v93 = __swift_instantiateConcreteTypeFromMangledName(v92);
      (*(*(v93 - 8) + 16))(v80, v81, v93);
      swift_storeEnumTagMultiPayload(v80, v89, v91);
      v82 = v122;
    }

    swift_storeEnumTagMultiPayload(v80, v82, v83);
    v94 = a3[9];
    v95 = &v120[v94];
    v96 = &__src[v94];
    outlined destroy of MLActivityClassifier.ModelParameters(&v120[v94], type metadata accessor for MLClassifierMetrics.Contents);
    v97 = swift_getEnumCaseMultiPayload(v96, v82);
    if (v97 == 2)
    {
      v104 = *v96;
      swift_errorRetain(*v96);
      *v95 = v104;
      v101 = 2;
      v102 = v95;
      v103 = v82;
    }

    else if (v97 == 1)
    {
      *v95 = *v96;
      v118 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v98 = *(v118 + 20);
      v99 = type metadata accessor for DataFrame(0);
      v100 = *(*(v99 - 8) + 16);
      v100(v95 + v98, v96 + v98, v99);
      v100(v95 + *(v118 + 24), v96 + *(v118 + 24), v99);
      v101 = 1;
      v102 = v95;
      v103 = v122;
    }

    else
    {
      v105 = v82;
      v106 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v107 = swift_getEnumCaseMultiPayload(v96, v106);
      v108 = v107 == 1;
      v109 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v107 == 1)
      {
        v109 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v110 = __swift_instantiateConcreteTypeFromMangledName(v109);
      (*(*(v110 - 8) + 16))(v95, v96, v110);
      swift_storeEnumTagMultiPayload(v95, v106, v108);
      v102 = v95;
      v103 = v105;
      v101 = 0;
    }

    swift_storeEnumTagMultiPayload(v102, v103, v101);
    return v120;
  }

  return result;
}

char *initializeWithTake for MLSoundClassifier(char *__dst, char *__src, int *a3)
{
  v3 = type metadata accessor for TrainingTablePrinter(0);
  if (__swift_getEnumTagSinglePayload(__src, 1, v3))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingTablePrinter?);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    v5 = type metadata accessor for Date(0);
    (*(*(v5 - 8) + 32))(__dst, __src, v5);
    *&__dst[*(v3 + 20)] = *&__src[*(v3 + 20)];
    *&__dst[*(v3 + 24)] = *&__src[*(v3 + 24)];
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v3);
  }

  v6 = a3[5];
  v7 = &__dst[v6];
  v8 = &__src[v6];
  v9 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  v98 = v9;
  if (swift_getEnumCaseMultiPayload(v8, v9) != 1)
  {
    memcpy(v7, v8, *(*(v9 - 8) + 64));
    goto LABEL_16;
  }

  v10 = type metadata accessor for MLSoundClassifier.DataSource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v8, v10);
  if (EnumCaseMultiPayload == 4)
  {
    v17 = type metadata accessor for DataFrame(0);
    (*(*(v17 - 8) + 32))(v7, v8, v17);
    v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
    *&v7[v18[12]] = *&v8[v18[12]];
    *&v7[v18[16]] = *&v8[v18[16]];
    v19 = v18[20];
    v20 = *&v8[v19 + 16];
    *&v7[v19] = *&v8[v19];
    *&v7[v19 + 16] = v20;
    v7[v19 + 32] = v8[v19 + 32];
    v89 = 4;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v16 = type metadata accessor for URL(0);
    (*(*(v16 - 8) + 32))(v7, v8, v16);
    v89 = 1;
LABEL_12:
    v15 = v89;
    v13 = v7;
    v14 = v10;
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    memcpy(v7, v8, *(*(v10 - 8) + 64));
    goto LABEL_15;
  }

  v12 = type metadata accessor for URL(0);
  (*(*(v12 - 8) + 32))(v7, v8, v12);
  v13 = v7;
  v14 = v10;
  v15 = 0;
LABEL_13:
  swift_storeEnumTagMultiPayload(v13, v14, v15);
LABEL_15:
  swift_storeEnumTagMultiPayload(v7, v9, 1);
LABEL_16:
  v21 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  *&v7[v21[5]] = *&v8[v21[5]];
  *&v7[v21[6]] = *&v8[v21[6]];
  v22 = v21[7];
  v23 = *&v8[v22];
  *&v7[v22 + 16] = *&v8[v22 + 16];
  *&v7[v22] = v23;
  v24 = v21[8];
  *&v7[v24] = *&v8[v24];
  v7[v24 + 8] = v8[v24 + 8];
  *&v7[v21[9]] = *&v8[v21[9]];
  v25 = *(type metadata accessor for MLSoundClassifier.Model(0) + 20);
  v26 = &v7[v25];
  v27 = &v8[v25];
  v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v29 = swift_getEnumCaseMultiPayload(v27, v28);
  v30 = v29 == 1;
  v31 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
  if (v29 == 1)
  {
    v31 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
  }

  v32 = __swift_instantiateConcreteTypeFromMangledName(v31);
  (*(*(v32 - 8) + 32))(v26, v27, v32);
  swift_storeEnumTagMultiPayload(v26, v28, v30);
  v33 = __dst;
  *&__dst[a3[6]] = *&__src[a3[6]];
  v34 = a3[7];
  v35 = &__dst[v34];
  v36 = &__src[v34];
  if (swift_getEnumCaseMultiPayload(v36, v98) != 1)
  {
    memcpy(v35, v36, *(*(v98 - 8) + 64));
    goto LABEL_30;
  }

  v37 = type metadata accessor for MLSoundClassifier.DataSource(0);
  v38 = swift_getEnumCaseMultiPayload(v36, v37);
  if (v38 == 4)
  {
    v44 = type metadata accessor for DataFrame(0);
    (*(*(v44 - 8) + 32))(v35, v36, v44);
    v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
    *&v35[v45[12]] = *&v36[v45[12]];
    *&v35[v45[16]] = *&v36[v45[16]];
    v46 = v45[20];
    v47 = *&v36[v46 + 16];
    *&v35[v46] = *&v36[v46];
    *&v35[v46 + 16] = v47;
    v35[v46 + 32] = v36[v46 + 32];
    v90 = 4;
    goto LABEL_26;
  }

  if (v38 == 1)
  {
    v43 = type metadata accessor for URL(0);
    (*(*(v43 - 8) + 32))(v35, v36, v43);
    v90 = 1;
LABEL_26:
    v42 = v90;
    v40 = v35;
    v41 = v37;
    goto LABEL_27;
  }

  if (v38)
  {
    memcpy(v35, v36, *(*(v37 - 8) + 64));
    goto LABEL_29;
  }

  v39 = type metadata accessor for URL(0);
  (*(*(v39 - 8) + 32))(v35, v36, v39);
  v40 = v35;
  v41 = v37;
  v42 = 0;
LABEL_27:
  swift_storeEnumTagMultiPayload(v40, v41, v42);
LABEL_29:
  swift_storeEnumTagMultiPayload(v35, v98, 1);
LABEL_30:
  *&v35[v21[5]] = *&v36[v21[5]];
  *&v35[v21[6]] = *&v36[v21[6]];
  v48 = v21[7];
  v49 = *&v36[v48];
  *&v35[v48 + 16] = *&v36[v48 + 16];
  *&v35[v48] = v49;
  v50 = v21[8];
  *&v35[v50] = *&v36[v50];
  v35[v50 + 8] = v36[v50 + 8];
  *&v35[v21[9]] = *&v36[v21[9]];
  v51 = a3[8];
  v52 = &__dst[v51];
  v53 = __src;
  v54 = &__src[v51];
  v55 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v56 = swift_getEnumCaseMultiPayload(v54, v55);
  v99 = v55;
  if (v56 == 1)
  {
    *v52 = *v54;
    v91 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v67 = *(v91 + 20);
    v92 = &v52[v67];
    v68 = type metadata accessor for DataFrame(0);
    v69 = *(*(v68 - 8) + 32);
    v70 = &v54[v67];
    v53 = __src;
    v69(v92, v70, v68);
    v71 = v68;
    v55 = v99;
    v69(&v52[*(v91 + 24)], &v54[*(v91 + 24)], v71);
    v33 = __dst;
    v66 = 1;
    v64 = v52;
    v65 = v99;
LABEL_36:
    swift_storeEnumTagMultiPayload(v64, v65, v66);
    goto LABEL_38;
  }

  if (!v56)
  {
    v57 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v58 = swift_getEnumCaseMultiPayload(v54, v57);
    v59 = v58 == 1;
    v60 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v58 == 1)
    {
      v60 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v61 = __swift_instantiateConcreteTypeFromMangledName(v60);
    (*(*(v61 - 8) + 32))(v52, v54, v61);
    v62 = v57;
    v53 = __src;
    v63 = v59;
    v33 = __dst;
    swift_storeEnumTagMultiPayload(v52, v62, v63);
    v64 = v52;
    v65 = v55;
    v66 = 0;
    goto LABEL_36;
  }

  memcpy(v52, v54, *(*(v55 - 8) + 64));
LABEL_38:
  v72 = a3[9];
  v73 = &v33[v72];
  v74 = &v53[v72];
  v75 = swift_getEnumCaseMultiPayload(v74, v55);
  if (v75 == 1)
  {
    *v73 = *v74;
    v95 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v84 = *(v95 + 20);
    v97 = &v73[v84];
    v85 = type metadata accessor for DataFrame(0);
    v86 = *(*(v85 - 8) + 32);
    v87 = &v74[v84];
    v33 = __dst;
    v86(v97, v87, v85);
    v86(&v73[*(v95 + 24)], &v74[*(v95 + 24)], v85);
    v83 = 1;
    v81 = v73;
    v82 = v99;
  }

  else
  {
    if (v75)
    {
      memcpy(v73, v74, *(*(v55 - 8) + 64));
      return v33;
    }

    v76 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v77 = swift_getEnumCaseMultiPayload(v74, v76);
    v78 = v77 == 1;
    v79 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v77 == 1)
    {
      v79 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v80 = __swift_instantiateConcreteTypeFromMangledName(v79);
    (*(*(v80 - 8) + 32))(v73, v74, v80);
    swift_storeEnumTagMultiPayload(v73, v76, v78);
    v81 = v73;
    v82 = v99;
    v83 = 0;
  }

  swift_storeEnumTagMultiPayload(v81, v82, v83);
  return v33;
}

char *assignWithTake for MLSoundClassifier(char *__dst, char *a2, int *a3)
{
  v4 = type metadata accessor for TrainingTablePrinter(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(__dst, 1, v4);
  v6 = __swift_getEnumTagSinglePayload(a2, 1, v4);
  if (EnumTagSinglePayload)
  {
    if (!v6)
    {
      v7 = type metadata accessor for Date(0);
      v8 = a2;
      (*(*(v7 - 8) + 32))(__dst, a2, v7);
      *&__dst[*(v4 + 20)] = *&a2[*(v4 + 20)];
      *&__dst[*(v4 + 24)] = *&a2[*(v4 + 24)];
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v4);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v6)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for TrainingTablePrinter);
LABEL_6:
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingTablePrinter?);
    v8 = a2;
    memcpy(__dst, a2, *(*(v9 - 8) + 64));
    goto LABEL_7;
  }

  v20 = type metadata accessor for Date(0);
  v8 = a2;
  (*(*(v20 - 8) + 40))(__dst, a2, v20);
  v21 = *(v4 + 20);
  v22 = *&__dst[v21];
  *&__dst[v21] = *&a2[v21];

  v23 = *(v4 + 24);
  v24 = *&__dst[v23];
  *&__dst[v23] = *&a2[v23];
  v24;
LABEL_7:
  v10 = a3[5];
  v11 = &__dst[v10];
  v12 = &v8[v10];
  if (__dst == v8)
  {
    goto LABEL_21;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  v13 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v12, v13) != 1)
  {
    memcpy(v11, v12, *(*(v13 - 8) + 64));
    goto LABEL_21;
  }

  v14 = type metadata accessor for MLSoundClassifier.DataSource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v12, v14);
  if (EnumCaseMultiPayload == 4)
  {
    v26 = type metadata accessor for DataFrame(0);
    (*(*(v26 - 8) + 32))(v11, v12, v26);
    v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
    *&v11[v27[12]] = *&v12[v27[12]];
    *&v11[v27[16]] = *&v12[v27[16]];
    v28 = v27[20];
    v29 = *&v12[v28 + 16];
    *&v11[v28] = *&v12[v28];
    *&v11[v28 + 16] = v29;
    v11[v28 + 32] = v12[v28 + 32];
    v111 = 4;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v25 = type metadata accessor for URL(0);
    (*(*(v25 - 8) + 32))(v11, v12, v25);
    v111 = 1;
LABEL_17:
    v19 = v111;
    v17 = v11;
    v18 = v14;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload)
  {
    memcpy(v11, v12, *(*(v14 - 8) + 64));
    goto LABEL_20;
  }

  v16 = type metadata accessor for URL(0);
  (*(*(v16 - 8) + 32))(v11, v12, v16);
  v17 = v11;
  v18 = v14;
  v19 = 0;
LABEL_18:
  swift_storeEnumTagMultiPayload(v17, v18, v19);
LABEL_20:
  swift_storeEnumTagMultiPayload(v11, v13, 1);
LABEL_21:
  v119 = __dst;
  v30 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  *&v11[v30[5]] = *&v12[v30[5]];
  *&v11[v30[6]] = *&v12[v30[6]];
  v31 = v30[7];
  v32 = &v11[v31];
  v33 = &v12[v31];
  if (*&v11[v31 + 24])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v11[v31]);
  }

  v34 = *v33;
  *(v32 + 1) = *(v33 + 1);
  *v32 = v34;
  v35 = v30[8];
  *&v11[v35] = *&v12[v35];
  v11[v35 + 8] = v12[v35 + 8];
  *&v11[v30[9]] = *&v12[v30[9]];
  v36 = type metadata accessor for MLSoundClassifier.Model(0);
  v37 = v119;
  if (v119 != a2)
  {
    v38 = *(v36 + 20);
    v39 = &v12[v38];
    v40 = &v11[v38];
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v40, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    v42 = swift_getEnumCaseMultiPayload(v39, v41);
    v43 = v42 == 1;
    v44 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
    if (v42 == 1)
    {
      v44 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
    }

    v45 = __swift_instantiateConcreteTypeFromMangledName(v44);
    (*(*(v45 - 8) + 32))(v40, v39, v45);
    v46 = v41;
    v37 = v119;
    swift_storeEnumTagMultiPayload(v40, v46, v43);
  }

  v47 = a3[6];
  v48 = *&v37[v47];
  *&v37[v47] = *&a2[v47];

  v49 = a3[7];
  v50 = &v37[v49];
  v51 = &a2[v49];
  if (v37 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v50, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    v52 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(v51, v52) != 1)
    {
      memcpy(v50, v51, *(*(v52 - 8) + 64));
      goto LABEL_40;
    }

    v53 = type metadata accessor for MLSoundClassifier.DataSource(0);
    v54 = swift_getEnumCaseMultiPayload(v51, v53);
    if (v54 == 4)
    {
      v60 = type metadata accessor for DataFrame(0);
      (*(*(v60 - 8) + 32))(v50, v51, v60);
      v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
      *&v50[v61[12]] = *&v51[v61[12]];
      *&v50[v61[16]] = *&v51[v61[16]];
      v62 = v61[20];
      v63 = *&v51[v62 + 16];
      *&v50[v62] = *&v51[v62];
      *&v50[v62 + 16] = v63;
      v50[v62 + 32] = v51[v62 + 32];
      v112 = 4;
    }

    else
    {
      if (v54 != 1)
      {
        if (v54)
        {
          memcpy(v50, v51, *(*(v53 - 8) + 64));
          goto LABEL_39;
        }

        v55 = type metadata accessor for URL(0);
        (*(*(v55 - 8) + 32))(v50, v51, v55);
        v56 = v50;
        v57 = v53;
        v58 = 0;
LABEL_37:
        swift_storeEnumTagMultiPayload(v56, v57, v58);
LABEL_39:
        swift_storeEnumTagMultiPayload(v50, v52, 1);
        goto LABEL_40;
      }

      v59 = type metadata accessor for URL(0);
      (*(*(v59 - 8) + 32))(v50, v51, v59);
      v112 = 1;
    }

    v58 = v112;
    v56 = v50;
    v57 = v53;
    goto LABEL_37;
  }

LABEL_40:
  *&v50[v30[5]] = *&v51[v30[5]];
  *&v50[v30[6]] = *&v51[v30[6]];
  v64 = v30[7];
  v65 = &v50[v64];
  v66 = &v51[v64];
  if (*&v50[v64 + 24])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v50[v64]);
  }

  v67 = *v66;
  *(v65 + 1) = *(v66 + 1);
  *v65 = v67;
  v68 = v30[8];
  *&v50[v68] = *&v51[v68];
  v50[v68 + 8] = v51[v68 + 8];
  *&v50[v30[9]] = *&v51[v30[9]];
  v69 = v119;
  v70 = a2;
  if (v119 == a2)
  {
    return v69;
  }

  v71 = a3[8];
  v72 = &v119[v71];
  v73 = &a2[v71];
  outlined destroy of MLActivityClassifier.ModelParameters(v72, type metadata accessor for MLClassifierMetrics.Contents);
  v74 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v75 = swift_getEnumCaseMultiPayload(v73, v74);
  if (v75 == 1)
  {
    *v72 = *v73;
    v113 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v86 = *(v113 + 20);
    v114 = &v72[v86];
    v115 = v74;
    v87 = type metadata accessor for DataFrame(0);
    v88 = *(*(v87 - 8) + 32);
    v89 = &v73[v86];
    v69 = v119;
    v88(v114, v89, v87);
    v90 = v87;
    v74 = v115;
    v88(&v72[*(v113 + 24)], &v73[*(v113 + 24)], v90);
    v70 = a2;
    v85 = 1;
    v83 = v72;
    v84 = v115;
  }

  else
  {
    if (v75)
    {
      memcpy(v72, v73, *(*(v74 - 8) + 64));
      goto LABEL_51;
    }

    v76 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v77 = swift_getEnumCaseMultiPayload(v73, v76);
    v78 = v77 == 1;
    v79 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v77 == 1)
    {
      v79 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v80 = __swift_instantiateConcreteTypeFromMangledName(v79);
    (*(*(v80 - 8) + 32))(v72, v73, v80);
    v81 = v76;
    v70 = a2;
    v82 = v78;
    v69 = v119;
    swift_storeEnumTagMultiPayload(v72, v81, v82);
    v83 = v72;
    v84 = v74;
    v85 = 0;
  }

  swift_storeEnumTagMultiPayload(v83, v84, v85);
LABEL_51:
  v91 = a3[9];
  v92 = &v69[v91];
  v93 = &v70[v91];
  outlined destroy of MLActivityClassifier.ModelParameters(&v69[v91], type metadata accessor for MLClassifierMetrics.Contents);
  v94 = swift_getEnumCaseMultiPayload(v93, v74);
  if (v94 == 1)
  {
    *v92 = *v93;
    __srca = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v106 = __srca[5];
    v118 = &v92[v106];
    v107 = type metadata accessor for DataFrame(0);
    v116 = v74;
    v108 = *(*(v107 - 8) + 32);
    v109 = &v93[v106];
    v69 = v119;
    v108(v118, v109, v107);
    v108(&v92[__srca[6]], &v93[__srca[6]], v107);
    v105 = 1;
    v103 = v92;
    v104 = v116;
  }

  else
  {
    if (v94)
    {
      memcpy(v92, v93, *(*(v74 - 8) + 64));
      return v69;
    }

    v95 = v74;
    v96 = v93;
    v97 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v98 = swift_getEnumCaseMultiPayload(v96, v97);
    v99 = v98 == 1;
    v100 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v98 == 1)
    {
      v100 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v101 = __swift_instantiateConcreteTypeFromMangledName(v100);
    (*(*(v101 - 8) + 32))(v92, v96, v101);
    v102 = v99;
    v69 = v119;
    swift_storeEnumTagMultiPayload(v92, v97, v102);
    v103 = v92;
    v104 = v95;
    v105 = 0;
  }

  swift_storeEnumTagMultiPayload(v103, v104, v105);
  return v69;
}

uint64_t sub_247825(uint64_t a1, unsigned int a2, int *a3)
{
  v4 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingTablePrinter?);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  v5 = type metadata accessor for MLSoundClassifier.Model(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v6 = a3[5];
LABEL_4:
    v4 = v6 + a1;
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v5 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
    if (*(*(v5 - 8) + 84) == a2)
    {
      v6 = a3[7];
    }

    else
    {
      v5 = type metadata accessor for MLClassifierMetrics(0);
      v6 = a3[8];
    }

    goto LABEL_4;
  }

  result = 0;
  if ((*(a1 + a3[6]) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + a3[6]) >> 1) + 1;
  }

  return result;
}

uint64_t sub_2478E3(uint64_t a1, unsigned int a2, int a3, int *a4)
{
  v6 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingTablePrinter?);
  if (*(*(v7 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
  }

  v7 = type metadata accessor for MLSoundClassifier.Model(0);
  if (*(*(v7 - 8) + 84) == a3)
  {
    v8 = a4[5];
LABEL_4:
    v6 = v8 + a1;
    return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
  }

  if (a3 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
    if (*(*(v7 - 8) + 84) == a3)
    {
      v8 = a4[7];
    }

    else
    {
      v7 = type metadata accessor for MLClassifierMetrics(0);
      v8 = a4[8];
    }

    goto LABEL_4;
  }

  result = a4[6];
  *(a1 + result) = 2 * (a2 - 1);
  return result;
}

uint64_t type metadata completion function for MLSoundClassifier(uint64_t a1)
{
  result = type metadata accessor for TrainingTablePrinter?(319);
  if (v2 <= 0x3F)
  {
    v6[0] = *(result - 8) + 64;
    result = type metadata accessor for MLSoundClassifier.Model(319);
    if (v3 <= 0x3F)
    {
      v6[1] = *(result - 8) + 64;
      v6[2] = &value witness table for Builtin.UnknownObject + 64;
      result = type metadata accessor for MLSoundClassifier.ModelParameters(319);
      if (v4 <= 0x3F)
      {
        v6[3] = *(result - 8) + 64;
        result = type metadata accessor for MLClassifierMetrics.Contents(319);
        if (v5 <= 0x3F)
        {
          v7 = *(result - 8) + 64;
          v8 = v7;
          swift_initStructMetadata(a1, 256, 6, v6, a1 + 16);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for TrainingTablePrinter?(uint64_t a1)
{
  result = lazy cache variable for type metadata for TrainingTablePrinter?;
  if (!lazy cache variable for type metadata for TrainingTablePrinter?)
  {
    v2 = type metadata accessor for TrainingTablePrinter(255);
    result = type metadata accessor for Optional(a1, v2);
    if (!v3)
    {
      lazy cache variable for type metadata for TrainingTablePrinter? = result;
    }
  }

  return result;
}

char _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5Sb_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRSb_TG5SRyAGGSbsAD_pIgyrzo_Tf1cn_n(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = HIWORD(v3);
  if (a1)
  {
    result = a3(a1, a2);
    if (!v4)
    {
      return HIBYTE(v6);
    }
  }

  else
  {
    result = a3(0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  return result;
}

BOOL closure #1 in closure #1 in Float.init<A>(_:)(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v4 = *a1;
  result = (v4 > 0x20 || (v5 = 0x100003E01, !_bittest64(&v5, v4))) && (v7 = _swift_stdlib_strtof_clocale(a1, a2)) != 0 && *v7 == 0;
  *v3 = result;
  return result;
}

char specialized closure #1 in _StringGuts.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3;
  result = a3(a1, a2);
  if (!v4)
  {
    result = v7;
    *v5 = v7;
  }

  return result;
}

uint64_t specialized closure #4 in MLSoundClassifier.init<A, B>(training:validation:parameters:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = *a3;
  v8 = swift_task_alloc(112);
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = protocol witness for SupervisedEstimator.fitted<A>(to:eventHandler:) in conformance MLImageClassifier.Classifier;
  return specialized closure #4 in MLSoundClassifier.init<A, B>(training:validation:parameters:)(a1, a2, v7, a4, a5);
}

uint64_t specialized closure #3 in MLSoundClassifier.init<A, B>(training:validation:parameters:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = *a3;
  v8 = *a4;
  v9 = swift_task_alloc(112);
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = protocol witness for SupervisedEstimator.fitted<A, B>(to:validateOn:eventHandler:) in conformance MLImageClassifier.Classifier;
  return specialized closure #3 in MLSoundClassifier.init<A, B>(training:validation:parameters:)(a1, a2, v7, v8, a5, a6);
}

uint64_t specialized closure #1 in MLSoundClassifier.evaluate<A>(on:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(v3 + 16) = a1;
  v4 = *a3;
  v5 = swift_task_alloc(32);
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = specialized closure #1 in MLSoundClassifier.evaluate<A>(on:);
  return specialized closure #1 in MLSoundClassifier.evaluate<A>(on:)(a2, v4);
}

uint64_t sub_247D0C()
{
  v1 = type metadata accessor for MLSoundClassifier(0);
  v2 = *(v1 - 1);
  v3 = *(v2 + 80);
  v53 = *(v2 + 64);
  v52 = ~*(v2 + 80) & (v3 + 16);
  v51 = v0;
  v4 = v52 + v0;
  v5 = type metadata accessor for TrainingTablePrinter(0);
  if (!__swift_getEnumTagSinglePayload(v52 + v0, 1, v5))
  {
    v6 = type metadata accessor for Date(0);
    (*(*(v6 - 8) + 8))(v4, v6);

    *(v4 + *(v5 + 24));
  }

  v55 = v52 + v0;
  v7 = v4 + v1[5];
  v8 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v7, v8);
  if (EnumCaseMultiPayload == 2)
  {
LABEL_7:
    v12 = *v7;
LABEL_8:
    v12;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v10 = type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v7, v10))
    {
      case 0u:
      case 1u:
        v11 = type metadata accessor for URL(0);
        (*(*(v11 - 8) + 8))(v7, v11);
        break;
      case 2u:
        goto LABEL_7;
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v7, *(v7 + 8));
        *(v7 + 24);
        v12 = *(v7 + 40);
        goto LABEL_8;
      case 4u:
        v23 = type metadata accessor for DataFrame(0);
        (*(*(v23 - 8) + 8))(v7, v23);
        v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        *(v7 + *(v24 + 48) + 8);
        v12 = *(v7 + *(v24 + 64) + 8);
        goto LABEL_8;
      default:
        break;
    }
  }

  v13 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v14 = *(v13 + 28);
  if (*(v7 + v14 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v7 + v14));
  }

  v15 = *(type metadata accessor for MLSoundClassifier.Model(0) + 20) + v7;
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v17 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
  if (swift_getEnumCaseMultiPayload(v15, v16) == 1)
  {
    v17 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledName(v17);
  (*(*(v18 - 8) + 8))(v15, v18);

  v56 = v1;
  v19 = v55 + v1[7];
  v20 = swift_getEnumCaseMultiPayload(v19, v8);
  if (v20 == 2)
  {
    *v19;
  }

  else if (v20 == 1)
  {
    v21 = type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v19, v21))
    {
      case 0u:
      case 1u:
        v22 = type metadata accessor for URL(0);
        (*(*(v22 - 8) + 8))(v19, v22);
        break;
      case 2u:
        v27 = *v19;
        goto LABEL_23;
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v19, *(v19 + 8));
        *(v19 + 24);
        v27 = *(v19 + 40);
        goto LABEL_23;
      case 4u:
        v25 = type metadata accessor for DataFrame(0);
        (*(*(v25 - 8) + 8))(v19, v25);
        v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        *(v19 + *(v26 + 48) + 8);
        v27 = *(v19 + *(v26 + 64) + 8);
LABEL_23:
        v27;
        break;
      default:
        break;
    }
  }

  v28 = *(v13 + 28);
  if (*(v19 + v28 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v28 + v19));
  }

  v29 = (v55 + v1[8]);
  v30 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v31 = swift_getEnumCaseMultiPayload(v29, v30);
  switch(v31)
  {
    case 2:
      *v29;
      break;
    case 1:
      v54 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v57 = v3;
      v34 = v29 + *(v54 + 20);
      v35 = type metadata accessor for DataFrame(0);
      v36 = *(*(v35 - 8) + 8);
      v37 = v34;
      v3 = v57;
      v36(v37, v35);
      v36(v29 + *(v54 + 24), v35);
      v1 = v56;
      break;
    case 0:
      v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v29, v32) == 1)
      {
        v33 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v33 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v38 = __swift_instantiateConcreteTypeFromMangledName(v33);
      (*(*(v38 - 8) + 8))(v29, v38);
      break;
  }

  v39 = (v1[9] + v55);
  v40 = swift_getEnumCaseMultiPayload(v39, v30);
  switch(v40)
  {
    case 2:
      *v39;
      break;
    case 1:
      v43 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v58 = v3;
      v44 = v39 + *(v43 + 20);
      v45 = type metadata accessor for DataFrame(0);
      v46 = *(*(v45 - 8) + 8);
      v47 = v44;
      v3 = v58;
      v46(v47, v45);
      v46(v39 + *(v43 + 24), v45);
      break;
    case 0:
      v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v39, v41) == 1)
      {
        v42 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v42 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v48 = __swift_instantiateConcreteTypeFromMangledName(v42);
      (*(*(v48 - 8) + 8))(v39, v48);
      break;
  }

  v49 = (v53 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v51 + v49);
  return swift_deallocObject(v51, v49 + 8, v3 | 7);
}

uint64_t partial apply for specialized closure #1 in MLSoundClassifier.evaluate<A>(on:)(uint64_t a1)
{
  v3 = *(type metadata accessor for MLSoundClassifier(0) - 8);
  v4 = ~*(v3 + 80) & (*(v3 + 80) + 16);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = swift_task_alloc(32);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return ((&async function pointer to specialized closure #1 in MLSoundClassifier.evaluate<A>(on:) + async function pointer to specialized closure #1 in MLSoundClassifier.evaluate<A>(on:)))(a1, v1 + v4, v1 + v5);
}

uint64_t sub_2482A4()
{
  swift_unknownObjectRelease(*(v0 + 16));

  return swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in static MLSoundClassifier.handleResult(_:session:fulfill:)(uint64_t a1)
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
  return closure #1 in static MLSoundClassifier.handleResult(_:session:fulfill:)(a1, v3, v4, v8, v9, v5);
}

uint64_t sub_248363()
{
  v1 = v0;
  v2 = type metadata accessor for MLSoundClassifier.Classifier(0);
  v3 = *(v2 - 8);
  v30 = *(v3 + 80);
  v4 = ~*(v3 + 80) & (v30 + 16);
  v29 = *(v3 + 64);
  v28 = type metadata accessor for TrainingTablePrinter(0);
  v5 = *(v28 - 8);
  v6 = *(v5 + 80);
  v31 = *(v5 + 64);
  v27 = v1;
  v7 = v1 + v4;
  v8 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v1 + v4, v8);
  if (EnumCaseMultiPayload == 2)
  {
LABEL_5:
    v12 = *v7;
LABEL_6:
    v12;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v10 = type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v1 + v4, v10))
    {
      case 0u:
      case 1u:
        v11 = type metadata accessor for URL(0);
        (*(*(v11 - 8) + 8))(v1 + v4, v11);
        break;
      case 2u:
        goto LABEL_5;
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v7, *(v7 + 8));
        *(v7 + 24);
        v12 = *(v7 + 40);
        goto LABEL_6;
      case 4u:
        v25 = type metadata accessor for DataFrame(0);
        (*(*(v25 - 8) + 8))(v1 + v4, v25);
        v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        *(v7 + *(v26 + 48) + 8);
        v12 = *(v7 + *(v26 + 64) + 8);
        goto LABEL_6;
      default:
        break;
    }
  }

  v13 = *(type metadata accessor for MLSoundClassifier.ModelParameters(0) + 28);
  if (*(v7 + v13 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v7 + v13));
  }

  v14 = *(v2 + 20) + v7;
  v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v16 = &demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>;
  if (swift_getEnumCaseMultiPayload(v14, v15) == 1)
  {
    v16 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledName(v16);
  (*(*(v17 - 8) + 8))(v14, v17);
  v18 = v6 | v30 | 7;
  v19 = (v4 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v6 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v6;
  v32 = v21 + v31;
  *(v27 + v19);
  *(v27 + v20);

  v22 = v27 + v21;
  v23 = type metadata accessor for Date(0);
  (*(*(v23 - 8) + 8))(v22, v23);

  *(*(v28 + 24) + v22);
  return swift_deallocObject(v27, v32, v18);
}

uint64_t partial apply for specialized closure #3 in MLSoundClassifier.init<A, B>(training:validation:parameters:)(uint64_t a1)
{
  v12 = v1;
  v11 = v2;
  v3 = *(type metadata accessor for MLSoundClassifier.Classifier(0) - 8);
  v4 = ~*(v3 + 80) & (*(v3 + 80) + 16);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(*(type metadata accessor for TrainingTablePrinter(0) - 8) + 80);
  v13 = *(v12 + v7);
  v9 = swift_task_alloc(32);
  *(v11 + 16) = v9;
  *v9 = v11;
  v9[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return ((&async function pointer to specialized closure #3 in MLSoundClassifier.init<A, B>(training:validation:parameters:) + async function pointer to specialized closure #3 in MLSoundClassifier.init<A, B>(training:validation:parameters:)))(a1, v12 + v4, v12 + v5, v12 + v6, v13, v12 + ((v8 + v7 + 8) & ~v8));
}

uint64_t sub_2486A9()
{
  v28 = type metadata accessor for MLSoundClassifier.Classifier(0);
  v1 = *(v28 - 8);
  v2 = *(v1 + 80);
  v3 = ~*(v1 + 80) & (v2 + 16);
  v27 = *(v1 + 64);
  v26 = type metadata accessor for TrainingTablePrinter(0);
  v4 = *(v26 - 8);
  v5 = *(v4 + 80);
  v25 = *(v4 + 64);
  v6 = v3 + v0;
  v7 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v3 + v0, v7);
  if (EnumCaseMultiPayload == 2)
  {
LABEL_5:
    v11 = *v6;
LABEL_6:
    v11;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v9 = type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v3 + v0, v9))
    {
      case 0u:
      case 1u:
        v10 = type metadata accessor for URL(0);
        (*(*(v10 - 8) + 8))(v3 + v0, v10);
        break;
      case 2u:
        goto LABEL_5;
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v6, *(v6 + 8));
        *(v6 + 24);
        v11 = *(v6 + 40);
        goto LABEL_6;
      case 4u:
        v24 = type metadata accessor for DataFrame(0);
        (*(*(v24 - 8) + 8))(v3 + v0, v24);
        v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        *(v6 + *(v29 + 48) + 8);
        v11 = *(v6 + *(v29 + 64) + 8);
        goto LABEL_6;
      default:
        break;
    }
  }

  v12 = *(type metadata accessor for MLSoundClassifier.ModelParameters(0) + 28);
  if (*(v6 + v12 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v6 + v12));
  }

  v13 = *(v28 + 20) + v6;
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v15 = &demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>;
  if (swift_getEnumCaseMultiPayload(v13, v14) == 1)
  {
    v15 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledName(v15);
  (*(*(v16 - 8) + 8))(v13, v16);
  v17 = v5 | v2 | 7;
  v18 = (v3 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v5 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v5;
  v20 = v19 + v25;
  *(v0 + v18);

  v21 = v0 + v19;
  v22 = type metadata accessor for Date(0);
  (*(*(v22 - 8) + 8))(v21, v22);

  *(*(v26 + 24) + v21);
  return swift_deallocObject(v0, v20, v17);
}

uint64_t partial apply for specialized closure #4 in MLSoundClassifier.init<A, B>(training:validation:parameters:)(uint64_t a1)
{
  v10 = v1;
  v3 = *(type metadata accessor for MLSoundClassifier.Classifier(0) - 8);
  v4 = ~*(v3 + 80) & (*(v3 + 80) + 16);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(*(type metadata accessor for TrainingTablePrinter(0) - 8) + 80);
  v11 = *(v10 + v6);
  v8 = swift_task_alloc(32);
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return ((&async function pointer to specialized closure #4 in MLSoundClassifier.init<A, B>(training:validation:parameters:) + async function pointer to specialized closure #4 in MLSoundClassifier.init<A, B>(training:validation:parameters:)))(a1, v10 + v4, v10 + v5, v11, v10 + ((v7 + v6 + 8) & ~v7));
}

char _ss11_StringGutsV11withCStringyxxSPys4Int8VGKXEKlFxSRyAEGKXEfU_Sb_TG5TA_0()
{
  v3 = v0;
  result = (*(v2 + 16))();
  if (!v1)
  {
    result = v5;
    *v3 = v5;
  }

  return result;
}

void *MLWordEmbedding.ModelParameters.init(language:revision:)(uint64_t a1, uint64_t a2)
{
  *result = a1;
  result[1] = a2;
  return result;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLWordEmbedding.ModelParameters.validateRevision()()
{
  v21 = type metadata accessor for IndexSet(0);
  v20 = *(v21 - 8);
  v2 = *(v20 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = *v1;
  v19[0] = *(v1 + 8);
  v18 = v0;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = NLLanguageUndetermined;
    v5 = 0;
  }

  v7 = objc_opt_self(NLEmbedding);
  v5;
  v8 = [v7 supportedRevisionsForLanguage:v6];
  v9 = v8;

  static IndexSet._unconditionallyBridgeFromObjectiveC(_:)(v9);
  v10 = v19[0];
  if (!IndexSet.contains(_:)(v19[0]))
  {
    *&v16 = 0;
    *(&v16 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    SBYTE8(v16);
    *&v16 = 0x6E6F697369766552;
    *(&v16 + 1) = 0xE900000000000020;
    v17 = v10;
    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    object = v11._object;
    String.append(_:)(v11);
    object;
    v13._object = "und in the model." + 0x8000000000000000;
    v13._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v13);
    *v19 = v16;
    v14 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v14, 0, 0);
    *v15 = *v19;
    *(v15 + 16) = 0;
    *(v15 + 32) = 0;
    *(v15 + 48) = 0;
    swift_willThrow();
  }

  (*(v20 + 8))(&v16, v21);
}

uint64_t MLWordEmbedding.ModelParameters.description.getter()
{
  v8 = *v0;
  v8;
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NLLanguage?);
  v8 = String.init<A>(describing:)(&v8, v1);
  v9 = v2;
  v3._object = 0xE100000000000000;
  v3._countAndFlagsBits = 10;
  String.append(_:)(v3);
  v3._countAndFlagsBits = v8;
  v4 = v9;
  v8 = 0x65676175676E614CLL;
  v9 = 0xEA0000000000203ALL;
  v3._object = v4;
  String.append(_:)(v3);
  v4;
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v7._object = v5;
  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  String.append(_:)(v7);
  v7._object;
  v3._countAndFlagsBits = 0x6E6F697369766552;
  v3._object = 0xEA0000000000203ALL;
  String.append(_:)(v3);
  58;
  return v8;
}

id MLWordEmbedding.ModelParameters.language.getter()
{
  v1 = *v0;
  *v0;
  return v1;
}

uint64_t MLWordEmbedding.ModelParameters.debugDescription.getter()
{
  v1 = *v0;
  v2 = MLWordEmbedding.ModelParameters.description.getter();

  return v2;
}

void *MLWordEmbedding.ModelParameters.playgroundDescription.getter()
{
  v2 = v0;
  v3 = *v1;
  v4 = MLWordEmbedding.ModelParameters.description.getter();
  v6 = v5;

  result = &type metadata for String;
  v2[3] = &type metadata for String;
  *v2 = v4;
  v2[1] = v6;
  return result;
}

void *initializeBufferWithCopyOfBuffer for MLWordEmbedding.ModelParameters(void *a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  a1[1] = *(a2 + 8);
  v3;
  return a1;
}

uint64_t assignWithCopy for MLWordEmbedding.ModelParameters(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a2;
  *a1 = *a2;
  v4;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for MLWordEmbedding.ModelParameters(uint64_t a1, void *a2)
{
  v3 = *a1;
  *a1 = *a2;

  *(a1 + 8) = a2[1];
  return a1;
}

uint64_t getEnumTagSinglePayload for MLWordEmbedding.ModelParameters(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = -1;
      if (((*a1 >> 1) - 1) >= 0)
      {
        v3 = (*a1 >> 1) - 1;
      }

      v2 = (*a1 & 0xFFFFFFFF00000001) != 0 ? -1 : v3;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLWordEmbedding.ModelParameters(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 8) = 0;
    *a1 = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 16) = 0;
    }

    if (a2)
    {
      *a1 = 2 * a2;
    }
  }
}

char *initializeBufferWithCopyOfBuffer for MLSoundClassifier.Classifier(char *__dst, char *__src, uint64_t a3)
{
  v4 = __dst;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *__src;
    *v4 = *__src;
    v4 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v7);
    if (EnumCaseMultiPayload == 2)
    {
      *__dst = *__src;

      swift_storeEnumTagMultiPayload(__dst, v7, 2);
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v9 = type metadata accessor for MLSoundClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(__src, v9))
      {
        case 0u:
          v10 = type metadata accessor for URL(0);
          (*(*(v10 - 8) + 16))(__dst, __src, v10);
          v11 = v9;
          v12 = 0;
          goto LABEL_15;
        case 1u:
          v22 = type metadata accessor for URL(0);
          (*(*(v22 - 8) + 16))(__dst, __src, v22);
          v41 = 1;
          goto LABEL_14;
        case 2u:
          *__dst = *__src;

          v41 = 2;
LABEL_14:
          v12 = v41;
          v11 = v9;
          goto LABEL_15;
        case 3u:
          v43 = v9;
          v20 = *__src;
          v42 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v42);
          *__dst = v20;
          __dst[8] = v42;
          *(__dst + 2) = *(__src + 2);
          *(__dst + 3) = *(__src + 3);
          *(__dst + 4) = *(__src + 4);
          *(__dst + 5) = *(__src + 5);
          v21 = *(__src + 4);
          *(__dst + 3) = *(__src + 3);
          *(__dst + 4) = v21;
          __dst[80] = __src[80];

          v40 = 3;
          goto LABEL_12;
        case 4u:
          v14 = type metadata accessor for DataFrame(0);
          (*(*(v14 - 8) + 16))(__dst, __src, v14);
          v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
          v16 = v15[12];
          *&__dst[v16] = *&__src[v16];
          *&__dst[v16 + 8] = *&__src[v16 + 8];
          v17 = v15[16];
          *&__dst[v17] = *&__src[v17];
          v43 = v9;
          *&__dst[v17 + 8] = *&__src[v17 + 8];
          v18 = v15[20];
          __dst[v18 + 32] = __src[v18 + 32];
          v19 = *&__src[v18];
          *&__dst[v18 + 16] = *&__src[v18 + 16];
          *&__dst[v18] = v19;

          v40 = 4;
LABEL_12:
          v12 = v40;
          v11 = v43;
LABEL_15:
          swift_storeEnumTagMultiPayload(__dst, v11, v12);
          swift_storeEnumTagMultiPayload(__dst, v7, 1);
          break;
        case 5u:
          JUMPOUT(0x249378);
      }
    }

    else
    {
      memcpy(__dst, __src, *(*(v7 - 8) + 64));
    }

    v23 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
    *&__dst[v23[5]] = *&__src[v23[5]];
    *&__dst[v23[6]] = *&__src[v23[6]];
    v24 = v23[7];
    v25 = &__dst[v24];
    v26 = &__src[v24];
    v27 = *&__src[v24 + 24];
    if (v27)
    {
      *(v25 + 3) = v27;
      (**(v27 - 8))(v25, v26);
    }

    else
    {
      v28 = *v26;
      *(v25 + 1) = *(v26 + 1);
      *v25 = v28;
    }

    v29 = v23[8];
    v4[v29 + 8] = __src[v29 + 8];
    *&v4[v29] = *&__src[v29];
    *&v4[v23[9]] = *&__src[v23[9]];
    v30 = *(a3 + 20);
    v31 = &v4[v30];
    v32 = &__src[v30];
    v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    if (swift_getEnumCaseMultiPayload(v32, v33) == 1)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>);
      (*(*(v34 - 8) + 16))(v31, v32, v34);
      v35 = 1;
      v36 = v31;
      v37 = v33;
    }

    else
    {
      v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>);
      (*(*(v38 - 8) + 16))(v31, v32, v38);
      v36 = v31;
      v37 = v33;
      v35 = 0;
    }

    swift_storeEnumTagMultiPayload(v36, v37, v35);
  }

  return v4;
}

uint64_t destroy for MLSoundClassifier.Classifier(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a1, v3);
  if (EnumCaseMultiPayload == 2)
  {
LABEL_5:
    v7 = *a1;
LABEL_6:
    v7;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v5 = type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(a1, v5))
    {
      case 0u:
      case 1u:
        v6 = type metadata accessor for URL(0);
        (*(*(v6 - 8) + 8))(a1, v6);
        break;
      case 2u:
        goto LABEL_5;
      case 3u:
        outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
        *(a1 + 24);
        v7 = *(a1 + 40);
        goto LABEL_6;
      case 4u:
        v14 = type metadata accessor for DataFrame(0);
        (*(*(v14 - 8) + 8))(a1, v14);
        v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        *(a1 + *(v15 + 48) + 8);
        v7 = *(a1 + *(v15 + 64) + 8);
        goto LABEL_6;
      default:
        break;
    }
  }

  v8 = *(type metadata accessor for MLSoundClassifier.ModelParameters(0) + 28);
  if (*(a1 + v8 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v8));
  }

  v9 = *(a2 + 20) + a1;
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v11 = &demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>;
  if (swift_getEnumCaseMultiPayload(v9, v10) == 1)
  {
    v11 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledName(v11);
  return (*(*(v12 - 8) + 8))(v9, v12);
}

char *initializeWithCopy for MLSoundClassifier.Classifier(char *__dst, char *__src, uint64_t a3)
{
  v6 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v6);
  if (EnumCaseMultiPayload == 2)
  {
    *__dst = *__src;

    swift_storeEnumTagMultiPayload(__dst, v6, 2);
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(__src, v8))
    {
      case 0u:
        v9 = type metadata accessor for URL(0);
        (*(*(v9 - 8) + 16))(__dst, __src, v9);
        v10 = v8;
        v11 = 0;
        goto LABEL_13;
      case 1u:
        v20 = type metadata accessor for URL(0);
        (*(*(v20 - 8) + 16))(__dst, __src, v20);
        v38 = 1;
        goto LABEL_12;
      case 2u:
        *__dst = *__src;

        v38 = 2;
LABEL_12:
        v11 = v38;
        v10 = v8;
        goto LABEL_13;
      case 3u:
        v40 = v8;
        v18 = *__src;
        v39 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v39);
        *__dst = v18;
        __dst[8] = v39;
        *(__dst + 2) = *(__src + 2);
        *(__dst + 3) = *(__src + 3);
        *(__dst + 4) = *(__src + 4);
        *(__dst + 5) = *(__src + 5);
        v19 = *(__src + 4);
        *(__dst + 3) = *(__src + 3);
        *(__dst + 4) = v19;
        __dst[80] = __src[80];

        v37 = 3;
        goto LABEL_10;
      case 4u:
        v12 = type metadata accessor for DataFrame(0);
        (*(*(v12 - 8) + 16))(__dst, __src, v12);
        v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        v14 = v13[12];
        *&__dst[v14] = *&__src[v14];
        *&__dst[v14 + 8] = *&__src[v14 + 8];
        v15 = v13[16];
        *&__dst[v15] = *&__src[v15];
        v40 = v8;
        *&__dst[v15 + 8] = *&__src[v15 + 8];
        v16 = v13[20];
        __dst[v16 + 32] = __src[v16 + 32];
        v17 = *&__src[v16];
        *&__dst[v16 + 16] = *&__src[v16 + 16];
        *&__dst[v16] = v17;

        v37 = 4;
LABEL_10:
        v11 = v37;
        v10 = v40;
LABEL_13:
        swift_storeEnumTagMultiPayload(__dst, v10, v11);
        swift_storeEnumTagMultiPayload(__dst, v6, 1);
        break;
    }
  }

  else
  {
    memcpy(__dst, __src, *(*(v6 - 8) + 64));
  }

  v21 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  *&__dst[v21[5]] = *&__src[v21[5]];
  *&__dst[v21[6]] = *&__src[v21[6]];
  v22 = v21[7];
  v23 = &__dst[v22];
  v24 = &__src[v22];
  v25 = *&__src[v22 + 24];
  if (v25)
  {
    *(v23 + 3) = v25;
    (**(v25 - 8))(v23, v24);
  }

  else
  {
    v26 = *v24;
    *(v23 + 1) = *(v24 + 1);
    *v23 = v26;
  }

  v27 = v21[8];
  __dst[v27 + 8] = __src[v27 + 8];
  *&__dst[v27] = *&__src[v27];
  *&__dst[v21[9]] = *&__src[v21[9]];
  v28 = *(a3 + 20);
  v29 = &__dst[v28];
  v30 = &__src[v28];
  v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v32 = swift_getEnumCaseMultiPayload(v30, v31);
  v33 = v32 == 1;
  v34 = &demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>;
  if (v32 == 1)
  {
    v34 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>;
  }

  v35 = __swift_instantiateConcreteTypeFromMangledName(v34);
  (*(*(v35 - 8) + 16))(v29, v30, v35);
  swift_storeEnumTagMultiPayload(v29, v31, v33);
  return __dst;
}

char *assignWithCopy for MLSoundClassifier.Classifier(char *__dst, char *__src, uint64_t a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    v5 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v5);
    if (EnumCaseMultiPayload == 2)
    {
      *__dst = *__src;

      swift_storeEnumTagMultiPayload(__dst, v5, 2);
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v7 = type metadata accessor for MLSoundClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(__src, v7))
      {
        case 0u:
          v8 = type metadata accessor for URL(0);
          (*(*(v8 - 8) + 16))(__dst, __src, v8);
          v9 = v7;
          v10 = 0;
          goto LABEL_13;
        case 1u:
          v20 = type metadata accessor for URL(0);
          (*(*(v20 - 8) + 16))(__dst, __src, v20);
          v37 = 1;
          goto LABEL_12;
        case 2u:
          *__dst = *__src;

          v37 = 2;
          goto LABEL_12;
        case 3u:
          v17 = *__src;
          v39 = v7;
          v18 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v18);
          *__dst = v17;
          __dst[8] = v18;
          *(__dst + 2) = *(__src + 2);
          *(__dst + 3) = *(__src + 3);
          *(__dst + 4) = *(__src + 4);
          *(__dst + 5) = *(__src + 5);
          v19 = *(__src + 4);
          *(__dst + 3) = *(__src + 3);
          *(__dst + 4) = v19;
          __dst[80] = __src[80];

          v10 = 3;
          v9 = v39;
          goto LABEL_13;
        case 4u:
          v11 = type metadata accessor for DataFrame(0);
          (*(*(v11 - 8) + 16))(__dst, __src, v11);
          v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
          v13 = v12[12];
          *&__dst[v13] = *&__src[v13];
          *&__dst[v13 + 8] = *&__src[v13 + 8];
          v14 = v12[16];
          *&__dst[v14] = *&__src[v14];
          *&__dst[v14 + 8] = *&__src[v14 + 8];
          v15 = v12[20];
          __dst[v15 + 32] = __src[v15 + 32];
          v16 = *&__src[v15];
          *&__dst[v15 + 16] = *&__src[v15 + 16];
          *&__dst[v15] = v16;

          v37 = 4;
LABEL_12:
          v10 = v37;
          v9 = v7;
LABEL_13:
          swift_storeEnumTagMultiPayload(__dst, v9, v10);
          swift_storeEnumTagMultiPayload(__dst, v5, 1);
          break;
        case 5u:
          JUMPOUT(0x249B10);
      }
    }

    else
    {
      memcpy(__dst, __src, *(*(v5 - 8) + 64));
    }
  }

  v21 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  *&__dst[v21[5]] = *&__src[v21[5]];
  *&__dst[v21[6]] = *&__src[v21[6]];
  v22 = v21[7];
  v23 = &__dst[v22];
  v24 = &__src[v22];
  v25 = *&__src[v22 + 24];
  if (*&__dst[v22 + 24])
  {
    if (v25)
    {
      __swift_assign_boxed_opaque_existential_0(&__dst[v22], &__src[v22]);
      goto LABEL_21;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&__dst[v22]);
  }

  else if (v25)
  {
    *(v23 + 3) = v25;
    (**(v25 - 8))(v23, v24);
    goto LABEL_21;
  }

  v26 = *v24;
  *(v23 + 1) = *(v24 + 1);
  *v23 = v26;
LABEL_21:
  v27 = v21[8];
  __dst[v27 + 8] = __src[v27 + 8];
  *&__dst[v27] = *&__src[v27];
  *&__dst[v21[9]] = *&__src[v21[9]];
  if (__dst != __src)
  {
    v28 = *(a3 + 20);
    v29 = &__src[v28];
    v30 = &__dst[v28];
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    v32 = swift_getEnumCaseMultiPayload(v29, v31);
    v33 = v32 == 1;
    v34 = &demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>;
    if (v32 == 1)
    {
      v34 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>;
    }

    v35 = __swift_instantiateConcreteTypeFromMangledName(v34);
    (*(*(v35 - 8) + 16))(v30, v29, v35);
    swift_storeEnumTagMultiPayload(v30, v31, v33);
  }

  return __dst;
}

char *initializeWithTake for MLSoundClassifier.Classifier(char *__dst, char *__src, uint64_t a3)
{
  v6 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(__src, v6) != 1)
  {
    memcpy(__dst, __src, *(*(v6 - 8) + 64));
    goto LABEL_13;
  }

  v7 = type metadata accessor for MLSoundClassifier.DataSource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v7);
  if (EnumCaseMultiPayload == 4)
  {
    v13 = type metadata accessor for DataFrame(0);
    (*(*(v13 - 8) + 32))(__dst, __src, v13);
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
    *&__dst[v14[12]] = *&__src[v14[12]];
    *&__dst[v14[16]] = *&__src[v14[16]];
    v15 = v14[20];
    v16 = *&__src[v15 + 16];
    *&__dst[v15] = *&__src[v15];
    *&__dst[v15 + 16] = v16;
    __dst[v15 + 32] = __src[v15 + 32];
    v30 = 4;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v12 = type metadata accessor for URL(0);
    (*(*(v12 - 8) + 32))(__dst, __src, v12);
    v30 = 1;
LABEL_9:
    v11 = v30;
    v10 = v7;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload)
  {
    memcpy(__dst, __src, *(*(v7 - 8) + 64));
    goto LABEL_12;
  }

  v9 = type metadata accessor for URL(0);
  (*(*(v9 - 8) + 32))(__dst, __src, v9);
  v10 = v7;
  v11 = 0;
LABEL_10:
  swift_storeEnumTagMultiPayload(__dst, v10, v11);
LABEL_12:
  swift_storeEnumTagMultiPayload(__dst, v6, 1);
LABEL_13:
  v17 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  *&__dst[v17[5]] = *&__src[v17[5]];
  *&__dst[v17[6]] = *&__src[v17[6]];
  v18 = v17[7];
  v19 = *&__src[v18];
  *&__dst[v18 + 16] = *&__src[v18 + 16];
  *&__dst[v18] = v19;
  v20 = v17[8];
  *&__dst[v20] = *&__src[v20];
  __dst[v20 + 8] = __src[v20 + 8];
  *&__dst[v17[9]] = *&__src[v17[9]];
  v21 = *(a3 + 20);
  v22 = &__dst[v21];
  v23 = &__src[v21];
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v25 = swift_getEnumCaseMultiPayload(v23, v24);
  v26 = v25 == 1;
  v27 = &demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>;
  if (v25 == 1)
  {
    v27 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>;
  }

  v28 = __swift_instantiateConcreteTypeFromMangledName(v27);
  (*(*(v28 - 8) + 32))(v22, v23, v28);
  swift_storeEnumTagMultiPayload(v22, v24, v26);
  return __dst;
}

char *assignWithTake for MLSoundClassifier.Classifier(char *__dst, char *__src, uint64_t a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    v5 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(__src, v5) != 1)
    {
      memcpy(__dst, __src, *(*(v5 - 8) + 64));
      goto LABEL_14;
    }

    v6 = type metadata accessor for MLSoundClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v6);
    if (EnumCaseMultiPayload == 4)
    {
      v12 = type metadata accessor for DataFrame(0);
      (*(*(v12 - 8) + 32))(__dst, __src, v12);
      v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
      *&__dst[v13[12]] = *&__src[v13[12]];
      *&__dst[v13[16]] = *&__src[v13[16]];
      v14 = v13[20];
      v15 = *&__src[v14 + 16];
      *&__dst[v14] = *&__src[v14];
      *&__dst[v14 + 16] = v15;
      __dst[v14 + 32] = __src[v14 + 32];
      v31 = 4;
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload)
        {
          memcpy(__dst, __src, *(*(v6 - 8) + 64));
          goto LABEL_13;
        }

        v8 = type metadata accessor for URL(0);
        (*(*(v8 - 8) + 32))(__dst, __src, v8);
        v9 = v6;
        v10 = 0;
LABEL_11:
        swift_storeEnumTagMultiPayload(__dst, v9, v10);
LABEL_13:
        swift_storeEnumTagMultiPayload(__dst, v5, 1);
        goto LABEL_14;
      }

      v11 = type metadata accessor for URL(0);
      (*(*(v11 - 8) + 32))(__dst, __src, v11);
      v31 = 1;
    }

    v10 = v31;
    v9 = v6;
    goto LABEL_11;
  }

LABEL_14:
  v16 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  *&__dst[v16[5]] = *&__src[v16[5]];
  *&__dst[v16[6]] = *&__src[v16[6]];
  v17 = v16[7];
  v18 = &__dst[v17];
  v19 = &__src[v17];
  if (*&__dst[v17 + 24])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&__dst[v17]);
  }

  v20 = *v19;
  *(v18 + 1) = *(v19 + 1);
  *v18 = v20;
  v21 = v16[8];
  *&__dst[v21] = *&__src[v21];
  __dst[v21 + 8] = __src[v21 + 8];
  *&__dst[v16[9]] = *&__src[v16[9]];
  if (__dst != __src)
  {
    v22 = *(a3 + 20);
    v23 = &__src[v22];
    v24 = &__dst[v22];
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v24, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    v26 = swift_getEnumCaseMultiPayload(v23, v25);
    v27 = v26 == 1;
    v28 = &demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>;
    if (v26 == 1)
    {
      v28 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>;
    }

    v29 = __swift_instantiateConcreteTypeFromMangledName(v28);
    (*(*(v29 - 8) + 32))(v24, v23, v29);
    swift_storeEnumTagMultiPayload(v24, v25, v27);
  }

  return __dst;
}

uint64_t sub_249FA4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  if (*(*(v5 - 8) + 84) != a2)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    v4 = *(a3 + 20) + a1;
  }

  return __swift_getEnumTagSinglePayload(v4, a2, v5);
}

uint64_t sub_24A010(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  if (*(*(v7 - 8) + 84) != a3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    v6 = *(a4 + 20) + a1;
  }

  return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
}

uint64_t type metadata accessor for MLSoundClassifier.Classifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLSoundClassifier.Classifier;
  if (!type metadata singleton initialization cache for MLSoundClassifier.Classifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLSoundClassifier.Classifier);
  }

  return result;
}

uint64_t type metadata completion function for MLSoundClassifier.Classifier(uint64_t a1)
{
  result = type metadata accessor for MLSoundClassifier.ModelParameters(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    result = type metadata accessor for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(319);
    if (v3 <= 0x3F)
    {
      v4[1] = *(result - 8) + 64;
      swift_initStructMetadata(a1, 256, 2, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

uint64_t MLSoundClassifier.Classifier.init(labels:parameters:)(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v3 = v2;
  v41 = type metadata accessor for FullyConnectedNetworkConfiguration(0);
  v46 = *(v41 - 8);
  v4 = *(v46 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v47 = &v34;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v42 = &v34;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>.Configuration);
  v39 = *(v9 - 8);
  v10 = *(v39 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v40 = &v34;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v43 = v3;
  outlined init with copy of MLSoundClassifier.ModelParameters(a2, v3);
  v15 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v16 = *(v15 + 28);
  v45 = a2;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a2 + v16, v37, &demangling cache variable for type metadata for Any?);
  if (!v38)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v37, &demangling cache variable for type metadata for Any?);
LABEL_6:
    v47 = lazy protocol witness table accessor for type Float and conformance Float();
    LogisticRegressionClassifier.Configuration.init()(&type metadata for Float, &type metadata for String, &protocol witness table for Float, v47, &protocol witness table for String, &protocol witness table for String, &protocol witness table for String, &protocol witness table for String);
    v28 = v45;
    LogisticRegressionClassifier.Configuration.maximumIterations.setter(*(v45 + *(v15 + 20)), v9);
    v29 = v40;
    v30 = v9;
    v46 = v9;
    v31 = v39;
    (*(v39 + 16))(v40, &v34, v30);
    v32 = *(type metadata accessor for MLSoundClassifier.Classifier(0) + 20) + v43;
    LogisticRegressionClassifier.init(labels:configuration:)(v44, v29, &type metadata for Float, &type metadata for String, &protocol witness table for Float, v47, &protocol witness table for String, &protocol witness table for String, &protocol witness table for String, &protocol witness table for String);
    outlined destroy of MLActivityClassifier.ModelParameters(v28, type metadata accessor for MLSoundClassifier.ModelParameters);
    (*(v31 + 8))(&v34, v46);
    v26 = v32;
    v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    v25 = 0;
    return swift_storeEnumTagMultiPayload(v26, v27, v25);
  }

  if (!swift_dynamicCast(v35, v37, &type metadata for Any + 8, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, 6))
  {
    goto LABEL_6;
  }

  v17 = v36;
  if (!v36)
  {
    goto LABEL_6;
  }

  v18 = v36;

  v19 = v42;
  FullyConnectedNetworkConfiguration.init()(v18);
  FullyConnectedNetworkConfiguration.maximumIterations.setter(*(v45 + *(v15 + 20)));
  FullyConnectedNetworkConfiguration.hiddenUnitCounts.setter(v17);
  FullyConnectedNetworkConfiguration.batchSize.setter(32);
  v20 = v41;
  v21 = v46;
  (*(v46 + 16))(v47, v19, v41);
  v22 = *(type metadata accessor for MLSoundClassifier.Classifier(0) + 20) + v43;
  v23 = lazy protocol witness table accessor for type Float and conformance Float();
  FullyConnectedNetworkClassifier.init(labels:configuration:)(v44, v47, &type metadata for Float, &type metadata for String, &protocol witness table for Float, v23, &protocol witness table for String, &protocol witness table for String, &protocol witness table for String, &protocol witness table for String);
  v17;
  outlined destroy of MLActivityClassifier.ModelParameters(v45, type metadata accessor for MLSoundClassifier.ModelParameters);
  (*(v21 + 8))(v19, v20);
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v25 = 1;
  v26 = v22;
  v27 = v24;
  return swift_storeEnumTagMultiPayload(v26, v27, v25);
}

uint64_t MLSoundClassifier.Classifier.makeTransformer()()
{
  v34 = v0;
  v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>);
  v35 = *(v30 - 8);
  v2 = *(v35 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v31 = &v29;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>);
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v33 = &v29;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v10 = *(*(v9 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = type metadata accessor for MLSoundClassifier.Classifier(0);
  v14 = v1;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1 + *(v13 + 20), &v29, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  if (swift_getEnumCaseMultiPayload(&v29, v9) == 1)
  {
    v15 = v31;
    v16 = v30;
    (*(v35 + 32))(v31, &v29, v30);
    v17 = v34;
    outlined init with copy of MLSoundClassifier.ModelParameters(v14, v34);
    v18 = v17 + *(type metadata accessor for MLSoundClassifier.Model(0) + 20);
    FullyConnectedNetworkClassifier.makeTransformer()(v16);
    (*(v35 + 8))(v15, v16);
    v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    v20 = 1;
    v21 = v18;
    v22 = v19;
  }

  else
  {
    v23 = v33;
    v24 = v32;
    (*(v32 + 32))(v33, &v29, v5);
    v25 = v14;
    v26 = v34;
    outlined init with copy of MLSoundClassifier.ModelParameters(v25, v34);
    v27 = v26 + *(type metadata accessor for MLSoundClassifier.Model(0) + 20);
    LogisticRegressionClassifier.makeTransformer()(v5);
    (*(v24 + 8))(v23, v5);
    v21 = v27;
    v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    v20 = 0;
  }

  return swift_storeEnumTagMultiPayload(v21, v22, v20);
}

uint64_t MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[8] = v6;
  v7[7] = a6;
  v7[6] = a5;
  v7[5] = a4;
  v7[4] = a3;
  v7[3] = a2;
  v7[2] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
  v7[9] = v8;
  v9 = *(v8 - 8);
  v7[10] = v9;
  v7[11] = swift_task_alloc((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>);
  v7[12] = v10;
  v11 = *(v10 - 8);
  v7[13] = v11;
  v7[14] = swift_task_alloc((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
  v7[15] = v12;
  v13 = *(v12 - 8);
  v7[16] = v13;
  v7[17] = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>);
  v7[18] = v14;
  v15 = *(v14 - 8);
  v7[19] = v15;
  v7[20] = swift_task_alloc((*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v7[21] = v16;
  v7[22] = swift_task_alloc((*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:), 0, 0);
}

uint64_t MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:)()
{
  v1 = v0[22];
  v2 = v0[8];
  v3 = v0[21];
  v4 = type metadata accessor for MLSoundClassifier.Classifier(0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v2 + *(v4 + 20), v1, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v1, v3);
  v6 = v0[22];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[13] + 32))(v0[14], v6, v0[12]);
    v7 = swift_task_alloc(async function pointer to FullyConnectedNetworkClassifier.fitted<A>(to:eventHandler:)[1]);
    v0[25] = v7;
    *v7 = v0;
    v7[1] = MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:);
    return FullyConnectedNetworkClassifier.fitted<A>(to:eventHandler:)(v0[11], v0[3], v0[4], v0[5], v0[12], v0[6], v0[7]);
  }

  else
  {
    (*(v0[19] + 32))(v0[20], v6, v0[18]);
    v9 = swift_task_alloc(async function pointer to LogisticRegressionClassifier.fitted<A>(to:eventHandler:)[1]);
    v0[23] = v9;
    *v9 = v0;
    v9[1] = MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:);
    return LogisticRegressionClassifier.fitted<A>(to:eventHandler:)(v0[17], v0[3], v0[4], v0[5], v0[18], v0[6], v0[7]);
  }
}

{
  v2 = *(*v1 + 184);
  *(*v1 + 192) = v0;
  v2;
  if (v0)
  {
    v3 = MLImageClassifier.Classifier.fitted<A>(to:eventHandler:);
  }

  else
  {
    v3 = MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v11 = *(v0 + 128);
  v12 = *(v0 + 120);
  v10 = *(v0 + 176);
  v9 = *(v0 + 112);
  v8 = *(v0 + 88);
  v3 = *(v0 + 16);
  v4 = *(v0 + 64);
  (*(*(v0 + 152) + 8))(v1, *(v0 + 144));
  outlined init with copy of MLSoundClassifier.ModelParameters(v4, v3);
  v5 = v3 + *(type metadata accessor for MLSoundClassifier.Model(0) + 20);
  (*(v11 + 32))(v5, v2, v12);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  swift_storeEnumTagMultiPayload(v5, v6, 0);
  v10;
  v1;
  v2;
  v9;
  v8;
  return (*(v0 + 8))();
}

{
  v2 = *(*v1 + 200);
  *(*v1 + 208) = v0;
  v2;
  if (v0)
  {
    v3 = MLImageClassifier.Classifier.fitted<A>(to:eventHandler:);
  }

  else
  {
    v3 = MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v9 = *(v0 + 112);
  v1 = *(v0 + 88);
  v12 = *(v0 + 80);
  v2 = *(v0 + 72);
  v11 = *(v0 + 176);
  v10 = *(v0 + 160);
  v8 = *(v0 + 136);
  v3 = *(v0 + 16);
  v4 = *(v0 + 64);
  (*(*(v0 + 104) + 8))(v9, *(v0 + 96));
  outlined init with copy of MLSoundClassifier.ModelParameters(v4, v3);
  v5 = v3 + *(type metadata accessor for MLSoundClassifier.Model(0) + 20);
  (*(v12 + 32))(v5, v1, v2);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  swift_storeEnumTagMultiPayload(v5, v6, 1);
  v11;
  v10;
  v8;
  v9;
  v1;
  return (*(v0 + 8))();
}

uint64_t MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 88) = v7;
  *(v8 + 80) = a7;
  *(v8 + 64) = *&v20;
  *(v8 + 56) = a6;
  *(v8 + 48) = a5;
  *(v8 + 40) = a4;
  *(v8 + 32) = a3;
  *(v8 + 24) = a2;
  *(v8 + 16) = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
  *(v8 + 96) = v9;
  v10 = *(v9 - 8);
  *(v8 + 104) = v10;
  *(v8 + 112) = swift_task_alloc((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>);
  *(v8 + 120) = v11;
  v12 = *(v11 - 8);
  *(v8 + 128) = v12;
  *(v8 + 136) = swift_task_alloc((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
  *(v8 + 144) = v13;
  v14 = *(v13 - 8);
  *(v8 + 152) = v14;
  *(v8 + 160) = swift_task_alloc((*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>);
  *(v8 + 168) = v15;
  v16 = *(v15 - 8);
  *(v8 + 176) = v16;
  *(v8 + 184) = swift_task_alloc((*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  *(v8 + 192) = v17;
  *(v8 + 200) = swift_task_alloc((*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  retaddr = v19;
  return swift_task_switch(MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:), 0, 0);
}

uint64_t MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:)()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 88);
  v3 = *(v0 + 192);
  v4 = type metadata accessor for MLSoundClassifier.Classifier(0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v2 + *(v4 + 20), v1, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v1, v3);
  v6 = *(v0 + 200);
  if (EnumCaseMultiPayload == 1)
  {
    (*(*(v0 + 128) + 32))(*(v0 + 136), v6, *(v0 + 120));
    v7 = swift_task_alloc(async function pointer to FullyConnectedNetworkClassifier.fitted<A, B>(to:validateOn:eventHandler:)[1]);
    *(v0 + 224) = v7;
    *v7 = v0;
    v7[1] = MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:);
    *&v10 = *(v0 + 72);
    return FullyConnectedNetworkClassifier.fitted<A, B>(to:validateOn:eventHandler:)(*(v0 + 112), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 120));
  }

  else
  {
    (*(*(v0 + 176) + 32))(*(v0 + 184), v6, *(v0 + 168));
    v9 = swift_task_alloc(async function pointer to LogisticRegressionClassifier.fitted<A, B>(to:validateOn:eventHandler:)[1]);
    *(v0 + 208) = v9;
    *v9 = v0;
    v9[1] = MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:);
    *&v10 = *(v0 + 72);
    return LogisticRegressionClassifier.fitted<A, B>(to:validateOn:eventHandler:)(*(v0 + 160), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 168));
  }
}

{
  v2 = *(*v1 + 208);
  *(*v1 + 216) = v0;
  v2;
  if (v0)
  {
    v3 = MLImageClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:);
  }

  else
  {
    v3 = MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v11 = *(v0 + 152);
  v12 = *(v0 + 144);
  v10 = *(v0 + 200);
  v9 = *(v0 + 136);
  v8 = *(v0 + 112);
  v3 = *(v0 + 16);
  v4 = *(v0 + 88);
  (*(*(v0 + 176) + 8))(v1, *(v0 + 168));
  outlined init with copy of MLSoundClassifier.ModelParameters(v4, v3);
  v5 = v3 + *(type metadata accessor for MLSoundClassifier.Model(0) + 20);
  (*(v11 + 32))(v5, v2, v12);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  swift_storeEnumTagMultiPayload(v5, v6, 0);
  v10;
  v1;
  v2;
  v9;
  v8;
  return (*(v0 + 8))();
}

{
  v2 = *(*v1 + 224);
  *(*v1 + 232) = v0;
  v2;
  if (v0)
  {
    v3 = MLImageClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:);
  }

  else
  {
    v3 = MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v9 = *(v0 + 136);
  v1 = *(v0 + 112);
  v12 = *(v0 + 104);
  v2 = *(v0 + 96);
  v11 = *(v0 + 200);
  v10 = *(v0 + 184);
  v8 = *(v0 + 160);
  v3 = *(v0 + 16);
  v4 = *(v0 + 88);
  (*(*(v0 + 128) + 8))(v9, *(v0 + 120));
  outlined init with copy of MLSoundClassifier.ModelParameters(v4, v3);
  v5 = v3 + *(type metadata accessor for MLSoundClassifier.Model(0) + 20);
  (*(v12 + 32))(v5, v1, v2);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  swift_storeEnumTagMultiPayload(v5, v6, 1);
  v11;
  v10;
  v8;
  v9;
  v1;
  return (*(v0 + 8))();
}

uint64_t MLSoundClassifier.Classifier.encode(_:to:)(uint64_t a1, uint64_t a2)
{
  v52 = v2;
  v4 = v3;
  v53 = a2;
  v46 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
  v54 = *(v55 - 8);
  v5 = *(v54 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v48 = &v46;
  v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>);
  v60 = *(v59 - 8);
  v8 = *(v60 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v56 = &v46;
  v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
  v57 = *(v58 - 8);
  v11 = *(v57 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v49 = &v46;
  v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>);
  v62 = *(v61 - 8);
  v14 = *(v62 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v63 = &v46;
  v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v17 = *(*(v47 - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v50 = &v46;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v51 = &v46;
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>, Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>));
  v23 = *(*(v22 - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v26 = v4 + *(type metadata accessor for MLSoundClassifier.Classifier(0) + 20);
  v27 = v46 + *(type metadata accessor for MLSoundClassifier.Model(0) + 20);
  v28 = &v46 + *(v22 + 48);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v26, &v46, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v29 = v27;
  v30 = &v46;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v29, v28, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  if (swift_getEnumCaseMultiPayload(&v46, v47) != 1)
  {
    v39 = v51;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v46, v51, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    if (swift_getEnumCaseMultiPayload(v28, v40) != 1)
    {
      v41 = v39;
      v42 = v61;
      (*(v62 + 32))(v63, v41, v61);
      v43 = v49;
      (*(v57 + 32))(v49, v28, v58);
      LogisticRegressionClassifier.encode(_:to:)(v43, v53, v42);
      (*(v57 + 8))(v43, v58);
      (*(v62 + 8))(v63, v42);
      return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    }

    v45 = v39;
LABEL_9:
    (*(v62 + 8))(v45, v61);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002FLL, ("Classifier.Classifier.swift" + 0x8000000000000000), "CreateML/MLSoundClassifier.Classifier.swift", 43, 2, 91, 0);
    BUG();
  }

  v63 = &v46;
  v31 = v50;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v46, v50, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  if (swift_getEnumCaseMultiPayload(v28, v32) != 1)
  {
    v62 = v60;
    v61 = v59;
    v45 = v31;
    goto LABEL_9;
  }

  v33 = v59;
  (*(v60 + 32))(v56, v31, v59);
  v34 = v48;
  (*(v54 + 32))(v48, v28, v55);
  v35 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>, &demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>, &protocol conformance descriptor for FullyConnectedNetworkClassifier<A, B>);
  v36 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FullyConnectedNetworkClassifierModel<Float, String> and conformance FullyConnectedNetworkClassifierModel<A, B>, &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>, &protocol conformance descriptor for FullyConnectedNetworkClassifierModel<A, B>);
  v37 = v35;
  v38 = v56;
  SupervisedEstimator<>.encode(_:to:)(v34, v53, v33, v37, v36);
  (*(v54 + 8))(v34, v55);
  (*(v60 + 8))(v38, v33);
  v30 = v63;
  return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
}

uint64_t protocol witness for SupervisedEstimator.fitted<A>(to:eventHandler:) in conformance MLSoundClassifier.Classifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc(224);
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = protocol witness for SupervisedEstimator.fitted<A>(to:eventHandler:) in conformance MLImageClassifier.Classifier;
  retaddr = v13;
  return MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:)(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for SupervisedEstimator.fitted<A, B>(to:validateOn:eventHandler:) in conformance MLSoundClassifier.Classifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = swift_task_alloc(240);
  *(v6 + 16) = v8;
  *v8 = v6;
  v8[1] = protocol witness for SupervisedEstimator.fitted<A, B>(to:validateOn:eventHandler:) in conformance MLImageClassifier.Classifier;
  retaddr = v13;
  return MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:)(a1, a2, a3, a4, a5, a6, v14);
}

uint64_t MLSoundClassifier.Classifier.update<A>(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[8] = v6;
  v7[7] = a6;
  v7[6] = a5;
  v7[5] = a4;
  v7[4] = a3;
  v7[3] = a2;
  v7[2] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
  v7[9] = v8;
  v9 = *(v8 - 8);
  v7[10] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7[11] = swift_task_alloc(v10);
  v7[12] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>);
  v7[13] = v11;
  v12 = *(v11 - 8);
  v7[14] = v12;
  v7[15] = swift_task_alloc((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
  v7[16] = v13;
  v14 = *(v13 - 8);
  v7[17] = v14;
  v15 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7[18] = swift_task_alloc(v15);
  v7[19] = swift_task_alloc(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>);
  v7[20] = v16;
  v17 = *(v16 - 8);
  v7[21] = v17;
  v7[22] = swift_task_alloc((*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v7[23] = v18;
  v19 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7[24] = swift_task_alloc(v19);
  v7[25] = swift_task_alloc(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>, Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>));
  v7[26] = v20;
  v7[27] = swift_task_alloc((*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLSoundClassifier.Classifier.update<A>(_:with:eventHandler:), 0, 0);
}

uint64_t MLSoundClassifier.Classifier.update<A>(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(v7 + 216);
  v34 = *(v7 + 208);
  v33 = *(v7 + 184);
  v9 = *(v7 + 16);
  v10 = *(v7 + 64);
  v11 = v10 + *(type metadata accessor for MLSoundClassifier.Classifier(0) + 20);
  v12 = *(type metadata accessor for MLSoundClassifier.Model(0) + 20);
  *(v7 + 288) = v12;
  v13 = v12 + v9;
  v14 = v8 + *(v34 + 48);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v11, v8, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v13, v14, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v8, v33);
  v16 = *(v7 + 216);
  if (EnumCaseMultiPayload == 1)
  {
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v16, *(v7 + 192), &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    *(v7 + 256) = v17;
    if (swift_getEnumCaseMultiPayload(v14, v17) == 1)
    {
      v18 = *(v7 + 96);
      v19 = *(v7 + 72);
      v20 = *(v7 + 80);
      (*(*(v7 + 112) + 32))(*(v7 + 120), *(v7 + 192), *(v7 + 104));
      v21 = *(v20 + 32);
      *(v7 + 264) = v21;
      v21(v18, v14, v19);
      v22 = swift_task_alloc(async function pointer to FullyConnectedNetworkClassifier.update<A>(_:with:eventHandler:)[1]);
      *(v7 + 272) = v22;
      *v22 = v7;
      v22[1] = MLSoundClassifier.Classifier.update<A>(_:with:eventHandler:);
      return FullyConnectedNetworkClassifier.update<A>(_:with:eventHandler:)(*(v7 + 96), *(v7 + 24), *(v7 + 32), *(v7 + 40), *(v7 + 104), *(v7 + 48), *(v7 + 56));
    }

    v25 = (v7 + 192);
    v26 = 104;
    v27 = 112;
    goto LABEL_7;
  }

  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v16, *(v7 + 200), &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  *(v7 + 224) = v24;
  if (swift_getEnumCaseMultiPayload(v14, v24) == 1)
  {
    v25 = (v7 + 200);
    v26 = 160;
    v27 = 168;
LABEL_7:
    (*(*(v7 + v27) + 8))(*v25, *(v7 + v26));
    return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002FLL, ("Classifier.Classifier.swift" + 0x8000000000000000), "CreateML/MLSoundClassifier.Classifier.swift", 43, 2, 135, 0);
  }

  v28 = *(v7 + 152);
  v29 = *(v7 + 128);
  v30 = *(v7 + 136);
  (*(*(v7 + 168) + 32))(*(v7 + 176), *(v7 + 200), *(v7 + 160));
  v31 = *(v30 + 32);
  *(v7 + 232) = v31;
  v31(v28, v14, v29);
  v32 = swift_task_alloc(async function pointer to LogisticRegressionClassifier.update<A>(_:with:eventHandler:)[1]);
  *(v7 + 240) = v32;
  *v32 = v7;
  v32[1] = MLSoundClassifier.Classifier.update<A>(_:with:eventHandler:);
  return LogisticRegressionClassifier.update<A>(_:with:eventHandler:)(*(v7 + 152), *(v7 + 24), *(v7 + 32), *(v7 + 40), *(v7 + 160), *(v7 + 48), *(v7 + 56));
}

uint64_t MLSoundClassifier.Classifier.update<A>(_:with:eventHandler:)()
{
  v2 = *(*v1 + 240);
  *(*v1 + 248) = v0;
  v2;
  if (v0)
  {
    v3 = MLImageClassifier.Classifier.update<A>(_:with:eventHandler:);
  }

  else
  {
    v3 = MLSoundClassifier.Classifier.update<A>(_:with:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v14 = *(v0 + 232);
  v12 = *(v0 + 224);
  v11 = *(v0 + 176);
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  v13 = *(v0 + 216);
  v9 = *(v0 + 200);
  v4 = *(v0 + 16) + *(v0 + 288);
  v10 = *(v0 + 192);
  v8 = *(v0 + 120);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  (*(*(v0 + 168) + 8))(v11, *(v0 + 160));
  v14(v2, v1, v3);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v14(v4, v2, v3);
  swift_storeEnumTagMultiPayload(v4, v12, 0);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v13, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v13;
  v9;
  v10;
  v11;
  v1;
  v2;
  v8;
  v7;
  v6;
  return (*(v0 + 8))();
}

{
  v2 = *(*v1 + 272);
  *(*v1 + 280) = v0;
  v2;
  if (v0)
  {
    v3 = MLImageClassifier.Classifier.update<A>(_:with:eventHandler:);
  }

  else
  {
    v3 = MLSoundClassifier.Classifier.update<A>(_:with:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v14 = *(v0 + 264);
  v12 = *(v0 + 256);
  v6 = *(v0 + 120);
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 88);
  v13 = *(v0 + 216);
  v9 = *(v0 + 200);
  v4 = *(v0 + 16) + *(v0 + 288);
  v11 = *(v0 + 192);
  v10 = *(v0 + 176);
  v8 = *(v0 + 152);
  v7 = *(v0 + 144);
  (*(*(v0 + 112) + 8))(v6, *(v0 + 104));
  v14(v3, v1, v2);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v14(v4, v3, v2);
  swift_storeEnumTagMultiPayload(v4, v12, 1);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v13, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v13;
  v9;
  v11;
  v10;
  v8;
  v7;
  v6;
  v1;
  v3;
  return (*(v0 + 8))();
}

uint64_t MLSoundClassifier.Classifier.encodeWithOptimizer(_:to:)(uint64_t a1, uint64_t a2)
{
  v49 = v2;
  v4 = v3;
  v50 = a2;
  v42 = a1;
  v52 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
  v51 = *(v52 - 8);
  v5 = *(v51 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v44 = &v42;
  v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>);
  v56 = *(v55 - 8);
  v8 = *(v56 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v45 = &v42;
  v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
  v53 = *(v54 - 8);
  v11 = *(v53 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v46 = &v42;
  v57 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>);
  v58 = *(v57 - 8);
  v14 = *(v58 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v59 = &v42;
  v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v17 = *(*(v43 - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v47 = &v42;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v48 = &v42;
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>, Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>));
  v23 = *(*(v22 - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v26 = v4 + *(type metadata accessor for MLSoundClassifier.Classifier(0) + 20);
  v27 = v42 + *(type metadata accessor for MLSoundClassifier.Model(0) + 20);
  v28 = &v42 + *(v22 + 48);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v26, &v42, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v29 = v27;
  v30 = &v42;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v29, v28, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  if (swift_getEnumCaseMultiPayload(&v42, v43) != 1)
  {
    v36 = v48;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v42, v48, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    if (swift_getEnumCaseMultiPayload(v28, v37) != 1)
    {
      v38 = v57;
      (*(v58 + 32))(v59, v36, v57);
      v39 = v46;
      (*(v53 + 32))(v46, v28, v54);
      LogisticRegressionClassifier.encodeWithOptimizer(_:to:)(v39, v50, v38);
      (*(v53 + 8))(v39, v54);
      (*(v58 + 8))(v59, v38);
      return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    }

    v41 = v36;
LABEL_9:
    (*(v58 + 8))(v41, v57);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002FLL, ("Classifier.Classifier.swift" + 0x8000000000000000), "CreateML/MLSoundClassifier.Classifier.swift", 43, 2, 146, 0);
    BUG();
  }

  v59 = &v42;
  v31 = v47;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v42, v47, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  if (swift_getEnumCaseMultiPayload(v28, v32) != 1)
  {
    v58 = v56;
    v57 = v55;
    v41 = v31;
    goto LABEL_9;
  }

  v33 = v45;
  v34 = v55;
  (*(v56 + 32))(v45, v31, v55);
  v35 = v44;
  (*(v51 + 32))(v44, v28, v52);
  FullyConnectedNetworkClassifier.encodeWithOptimizer(_:to:)(v35, v50, v34);
  (*(v51 + 8))(v35, v52);
  (*(v56 + 8))(v33, v34);
  v30 = v59;
  return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
}

uint64_t MLSoundClassifier.Classifier.decode(from:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), void (*a3)(uint64_t, uint64_t))
{
  v50 = a3;
  v51 = a2;
  v62 = v4;
  v63 = a1;
  v55 = v3;
  v57 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
  v56 = *(v57 - 8);
  v6 = *(v56 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v52 = &v50;
  v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>);
  v66 = *(v67 - 8);
  v9 = *(v66 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v68 = &v50;
  v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
  v60 = *(v59 - 8);
  v12 = *(v60 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v64 = &v50;
  v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v15 = *(*(v65 - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v61 = &v50;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v58 = &v50;
  v20 = *(*(type metadata accessor for MLSoundClassifier.ModelParameters(0) - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v53 = &v50;
  v23 = alloca(v20);
  v24 = alloca(v20);
  v54 = &v50;
  v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>);
  v69 = *(v70 - 8);
  v25 = *(v69 + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v71 = &v50;
  v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v29 = *(*(v28 - 8) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v32 = type metadata accessor for MLSoundClassifier.Classifier(0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v5 + *(v32 + 20), &v50, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  if (swift_getEnumCaseMultiPayload(&v50, v28) == 1)
  {
    v33 = v67;
    (*(v66 + 32))(v68, &v50, v67);
    v34 = v53;
    outlined init with copy of MLSoundClassifier.ModelParameters(v5, v53);
    v35 = v52;
    v36 = v62;
    v50(v63, v33);
    if (v36)
    {
      outlined destroy of MLActivityClassifier.ModelParameters(v34, type metadata accessor for MLSoundClassifier.ModelParameters);
      v37 = v68;
      v38 = v67;
      v39 = v66;
      return (*(v39 + 8))(v37, v38);
    }

    (*(v66 + 8))(v68, v67);
    v45 = v34;
    v46 = v61;
    (*(v56 + 32))(v61, v35, v57);
    swift_storeEnumTagMultiPayload(v46, v65, 1);
    v43 = v45;
  }

  else
  {
    v40 = v70;
    (*(v69 + 32))(v71, &v50, v70);
    v41 = v54;
    outlined init with copy of MLSoundClassifier.ModelParameters(v5, v54);
    v42 = v62;
    v51(v63, v40);
    v43 = v41;
    if (v42)
    {
      outlined destroy of MLActivityClassifier.ModelParameters(v41, type metadata accessor for MLSoundClassifier.ModelParameters);
      v37 = v71;
      v38 = v70;
      v39 = v69;
      return (*(v39 + 8))(v37, v38);
    }

    (*(v69 + 8))(v71, v70);
    v46 = v58;
    (*(v60 + 32))(v58, v64, v59);
    swift_storeEnumTagMultiPayload(v46, v65, 0);
  }

  v47 = v43;
  v48 = v55;
  outlined init with take of MLSoundClassifier.ModelParameters(v47, v55);
  v49 = type metadata accessor for MLSoundClassifier.Model(0);
  return outlined init with take of Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>(v46, v48 + *(v49 + 20));
}

uint64_t protocol witness for UpdatableSupervisedEstimator.update<A>(_:with:eventHandler:) in conformance MLSoundClassifier.Classifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc(304);
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = protocol witness for UpdatableSupervisedEstimator.update<A>(_:with:eventHandler:) in conformance MLSoundClassifier.Classifier;
  retaddr = v13;
  return MLSoundClassifier.Classifier.update<A>(_:with:eventHandler:)(a1, a2, a3, a4, a5, a6);
}

uint64_t outlined init with copy of MLSoundClassifier.ModelParameters(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with take of MLSoundClassifier.ModelParameters(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t lazy protocol witness table accessor for type MLHandActionClassifier.VideoAugmentationOptions and conformance MLHandActionClassifier.VideoAugmentationOptions()
{
  result = lazy protocol witness table cache variable for type MLHandActionClassifier.VideoAugmentationOptions and conformance MLHandActionClassifier.VideoAugmentationOptions;
  if (!lazy protocol witness table cache variable for type MLHandActionClassifier.VideoAugmentationOptions and conformance MLHandActionClassifier.VideoAugmentationOptions)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLHandActionClassifier.VideoAugmentationOptions, &type metadata for MLHandActionClassifier.VideoAugmentationOptions);
    lazy protocol witness table cache variable for type MLHandActionClassifier.VideoAugmentationOptions and conformance MLHandActionClassifier.VideoAugmentationOptions = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLHandActionClassifier.VideoAugmentationOptions and conformance MLHandActionClassifier.VideoAugmentationOptions;
  if (!lazy protocol witness table cache variable for type MLHandActionClassifier.VideoAugmentationOptions and conformance MLHandActionClassifier.VideoAugmentationOptions)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLHandActionClassifier.VideoAugmentationOptions, &type metadata for MLHandActionClassifier.VideoAugmentationOptions);
    lazy protocol witness table cache variable for type MLHandActionClassifier.VideoAugmentationOptions and conformance MLHandActionClassifier.VideoAugmentationOptions = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLHandActionClassifier.VideoAugmentationOptions and conformance MLHandActionClassifier.VideoAugmentationOptions;
  if (!lazy protocol witness table cache variable for type MLHandActionClassifier.VideoAugmentationOptions and conformance MLHandActionClassifier.VideoAugmentationOptions)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLHandActionClassifier.VideoAugmentationOptions, &type metadata for MLHandActionClassifier.VideoAugmentationOptions);
    lazy protocol witness table cache variable for type MLHandActionClassifier.VideoAugmentationOptions and conformance MLHandActionClassifier.VideoAugmentationOptions = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLHandActionClassifier.VideoAugmentationOptions and conformance MLHandActionClassifier.VideoAugmentationOptions;
  if (!lazy protocol witness table cache variable for type MLHandActionClassifier.VideoAugmentationOptions and conformance MLHandActionClassifier.VideoAugmentationOptions)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLHandActionClassifier.VideoAugmentationOptions, &type metadata for MLHandActionClassifier.VideoAugmentationOptions);
    lazy protocol witness table cache variable for type MLHandActionClassifier.VideoAugmentationOptions and conformance MLHandActionClassifier.VideoAugmentationOptions = result;
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MLHandActionClassifier.VideoAugmentationOptions(uint64_t *a1)
{
  v2 = v1;
  MLHandActionClassifier.VideoAugmentationOptions.init(rawValue:)(*a1);
  result = v4;
  *v2 = v4;
  *(v2 + 8) = 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MLHandActionClassifier.VideoAugmentationOptions(uint64_t a1)
{
  v2 = v1;
  result = MLHandActionClassifier.VideoAugmentationOptions.rawValue.getter();
  *v2 = result;
  return result;
}

uint64_t MLHandActionClassifier.DataSource.videosWithAnnotations()(__m128 a1)
{
  *&v164 = v2;
  *v174 = v3;
  v160 = v1;
  v169._object = type metadata accessor for DataFrame(0);
  v172._countAndFlagsBits = *(v169._object - 1);
  v4 = *(v172._countAndFlagsBits + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  ML14_UntypedColumnC_s5Error_pTt1g5 = __src;
  v7 = alloca(v4);
  v8 = alloca(v4);
  *(&v168 + 1) = __src;
  v9 = type metadata accessor for UTType(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  *v165 = __src;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v166._countAndFlagsBits = __src;
  v170 = type metadata accessor for URL(0);
  *v171 = *(v170 - 8);
  v16 = *(*v171 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v162 = __src;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v166._object = __src;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v163 = __src;
  v23 = alloca(v16);
  v24 = alloca(v16);
  *&v168 = __src;
  v25 = alloca(v16);
  v26 = alloca(v16);
  v169._countAndFlagsBits = __src;
  v27 = alloca(v16);
  v28 = alloca(v16);
  *v167 = __src;
  v29 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v30 = *(*(v29 - 8) + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  outlined init with copy of MLHandActionClassifier.DataSource(*v174, __src);
  switch(swift_getEnumCaseMultiPayload(__src, v29))
  {
    case 0u:
      v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v34 = __src + v33[12];
      v35 = v33[16];
      v169._countAndFlagsBits = *(__src + v35);
      *v174 = *(__src + v35 + 8);
      v36 = v33[20];
      *v167 = *(__src + v36);
      *(&v168 + 1) = *(__src + v36 + 8);
      v37 = v33[24];
      *v165 = *(__src + v37);
      v169._object = *(__src + v37 + 8);
      v38 = v33[28];
      v166._countAndFlagsBits = *(__src + v38);
      v172._countAndFlagsBits = *(__src + v38 + 8);
      v39 = *(*v171 + 32);
      v40 = v170;
      v39(v168, __src, v170);
      v41 = v163;
      v39(v163, v34, v40);
      object = v166._object;
      (*(*v171 + 16))(v166._object, v41, v40);
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
      LOBYTE(v141) = 1;
      v142 = 44;
      v143 = 0xE100000000000000;
      v144 = 0;
      v145 = 0xE000000000000000;
      v146 = 92;
      v147 = 0xE100000000000000;
      v148 = 1;
      v149 = 34;
      v150 = 0xE100000000000000;
      v151 = 1;
      v152 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
      v153 = 10;
      v154 = 0xE100000000000000;
      v155 = 0;
      v156 = 1;
      v157 = 0;
      outlined retain of MLDataTable.ParsingOptions(__src);
      outlined release of MLDataTable.ParsingOptions(&v141);
      memcpy(__dst, __src, sizeof(__dst));
      v43 = v164;
      MLDataTable.init(contentsOf:options:)(object, __dst);
      v44 = v170;
      v45 = v168;
      if (v43)
      {
        v46 = *(*v171 + 8);
        v46(v163, v170);
        SBYTE8(v168);
        v174[0];
        v169._object;
        v172._countAndFlagsBits;
        result = v46(v45, v44);
      }

      else
      {
        v172._object = v158;
        LOBYTE(v173) = v159;
        v82._countAndFlagsBits = v169._countAndFlagsBits;
        v82._object = *v174;
        MLDataTable.subscript.getter(v82);
        v83 = *&__dst[0];
        v84 = BYTE8(__dst[0]);
        if (BYTE8(__dst[0]) || (outlined copy of Result<_DataTable, Error>(*&__dst[0], 0), v166._object = v83, _UntypedColumn.type.getter(), v83 = v166._object, outlined consume of Result<_DataTable, Error>(v166._object, 0), v158 != 2))
        {
          outlined consume of Result<_DataTable, Error>(v83, v84);
          SBYTE8(v168);
          v169._object;
          v172._countAndFlagsBits;
          *&__dst[0] = 0;
          *(&__dst[0] + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(26);
          SBYTE8(__dst[0]);
          *&__dst[0] = 0x206E6D756C6F43;
          *(&__dst[0] + 1) = 0xE700000000000000;
          v106._countAndFlagsBits = v169._countAndFlagsBits;
          v107 = v174[0];
          v106._object = *v174;
          String.append(_:)(v106);
          v107;
          v106._countAndFlagsBits = 0xD000000000000011;
          String.append(_:)(v106);
          v164 = __dst[0];
          v108 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v108, 0, 0);
          *v109 = v164;
          *(v109 + 16) = 0;
          *(v109 + 32) = 0;
          *(v109 + 48) = 0;
          swift_willThrow();
          v110 = *(*v171 + 8);
          v111 = v163;
          v112 = v170;
        }

        else
        {
          *&v164 = 0;
          outlined copy of Result<_DataTable, Error>(v83, 0);
          _UntypedColumn.valueAtIndex(index:)(0, 0.0);
          v86 = *(&__dst[0] + 1);
          v85 = *&__dst[0];
          if (LOBYTE(__dst[1]) != 2)
          {
            outlined consume of MLDataValue(*&__dst[0], *(&__dst[0] + 1), __dst[1]);
            v85 = 0;
            v86 = 0xE000000000000000;
          }

          outlined consume of Result<_DataTable, Error>(v166._object, 0);
          *&__dst[0] = v85;
          *(&__dst[0] + 1) = v86;
          v87 = String.init<A>(_:)(__dst, &type metadata for String, &protocol witness table for String, &protocol witness table for String);
          v89 = v88;
          URL.init(fileURLWithPath:)(v87, v88);
          v89;
          v90 = objc_opt_self(NSFileManager);
          v91 = [v90 defaultManager];
          v92 = v91;
          URL.path.getter(v91);
          v94 = v93;
          v95 = String._bridgeToObjectiveC()();
          v94;
          v96 = [v92 fileExistsAtPath:v95];

          if (v96)
          {
            v97 = *v174;
            countAndFlagsBits = v172._countAndFlagsBits;
            v99 = v169._object;
            v100 = *(&v168 + 1);
            v101 = v169._countAndFlagsBits;
          }

          else
          {
            v117 = v166._object;
            outlined copy of Result<_DataTable, Error>(v166._object, 0);
            MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v117, 0, 0.0);
            v119 = alloca(24);
            v120 = alloca(32);
            *&__src[1] = v168;
            v121 = v164;
            v122 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_SSs5NeverOTg5(partial apply for closure #1 in static _VideoUtilities.getVideoURLsAndAnnotations(from:), __src, MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5);
            *&v164 = v121;
            MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
            *&__dst[0] = v122;
            v123 = alloca(24);
            v124 = alloca(24);
            *&__src[1] = __dst;
            ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
            v126 = v125;
            __dst[0];
            v127 = *v174;

            MLDataTable.willMutate()();
            *&__dst[0] = ML14_UntypedColumnC_s5Error_pTt1g5;
            BYTE8(__dst[0]) = v126 & 1;
            v101 = v169._countAndFlagsBits;
            MLDataTable.setColumnImpl(newColumn:named:)(__dst, v169._countAndFlagsBits, v127);
            v127;
            outlined consume of Result<_DataTable, Error>(*&__dst[0], SBYTE8(__dst[0]));
            if (!v173)
            {
              v128 = v172._object;
              outlined copy of Result<_DataTable, Error>(v172._object, 0);
              _DataTable.columnNamesDidChange()();
              outlined consume of Result<_DataTable, Error>(v128, 0);
            }

            countAndFlagsBits = v172._countAndFlagsBits;
            v99 = v169._object;
            v100 = *(&v168 + 1);
            v97 = *v174;
          }

          v129 = v164;
          v138._object = countAndFlagsBits;
          v138._countAndFlagsBits = v166._countAndFlagsBits;
          static _VideoUtilities.renameVideoTableColumns(table:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(&v172._object, v101, v97, *v167, v100, *v165, v99, v138);
          v130 = v97;
          v131 = *v171;
          if (!v129)
          {
            v130;
            v100;
            v99;
            v172._countAndFlagsBits;
            outlined consume of Result<_DataTable, Error>(v166._object, 0);
            v132 = *(v131 + 8);
            v133 = v170;
            v132(v162, v170);
            v132(v163, v133);
            v132(v168, v133);
            goto LABEL_34;
          }

          v130;
          v100;
          v99;
          v172._countAndFlagsBits;
          outlined consume of Result<_DataTable, Error>(v166._object, 0);
          v110 = *(v131 + 8);
          v112 = v170;
          v110(v162, v170);
          v111 = v163;
        }

        v110(v111, v112);
        v110(v168, v112);
        result = outlined consume of Result<_DataTable, Error>(v172._object, v173);
      }

      break;
    case 1u:
      v172._countAndFlagsBits = v9;
      *v174 = v10;
      v65 = v169._countAndFlagsBits;
      v57 = v170;
      v66 = *v171;
      (*(*v171 + 32))(v169._countAndFlagsBits, __src, v170);
      v67 = *v165;
      static UTType.movie.getter();
      v68 = v164;
      v69 = static _FileUtilities.collectFilesLabeledByDirectoryName(at:type:)(v65, v67);
      if (!v68)
      {
        v102 = v69;
        (*(*v174 + 8))(*v165, v172._countAndFlagsBits);
        static _VideoUtilities.generateVideoTable(_:)(v102);
        v102;
        v114 = v142;
        v172._object = v141;
        LOBYTE(v173) = v142 & 1;
        LOBYTE(v142) = v142 & 1;
        outlined copy of Result<_DataTable, Error>(v141, v114);
        static _VideoUtilities.validateVideoInput(trainingData:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(&v141, 0x7461506F65646976, 0xE900000000000068, 0x6C6562616CLL, 0xE500000000000000, 0, 0, 0, 0);
        v115 = v169._countAndFlagsBits;
        outlined consume of Result<_DataTable, Error>(v141, v142);
        v116 = v115;
        goto LABEL_27;
      }

      (*(*v174 + 8))(*v165, v172._countAndFlagsBits);
      result = (*(v66 + 8))(v169._countAndFlagsBits, v57);
      break;
    case 2u:
      v172._countAndFlagsBits = v9;
      *v174 = v10;
      v56 = *v167;
      v57 = v170;
      v58 = *v171;
      (*(*v171 + 32))(*v167, __src, v170);
      v59 = v166._countAndFlagsBits;
      static UTType.movie.getter();
      v60 = v164;
      v61 = static _FileUtilities.collectFilesLabeledByFileName(at:type:)(v56, v59);
      if (!v60)
      {
        v81 = v61;
        (*(*v174 + 8))(v166._countAndFlagsBits, v172._countAndFlagsBits);
        static _VideoUtilities.generateVideoTable(_:)(v81);
        v81;
        v113 = v142;
        v172._object = v141;
        LOBYTE(v173) = v142 & 1;
        LOBYTE(v142) = v142 & 1;
        outlined copy of Result<_DataTable, Error>(v141, v113);
        static _VideoUtilities.validateVideoInput(trainingData:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(&v141, 0x7461506F65646976, 0xE900000000000068, 0x6C6562616CLL, 0xE500000000000000, 0, 0, 0, 0);
        outlined consume of Result<_DataTable, Error>(v141, v142);
        v116 = *v167;
LABEL_27:
        (*(*v171 + 8))(v116, v57);
        goto LABEL_34;
      }

      (*(*v174 + 8))(v166._countAndFlagsBits, v172._countAndFlagsBits);
      result = (*(v58 + 8))(*v167, v57);
      break;
    case 3u:
      v62 = BYTE8(__src[1]);
      v63 = BYTE8(__src[2]);
      v64 = BYTE8(__src[3]);
      outlined consume of Result<_DataTable, Error>(*&__src[0], SBYTE8(__src[0]));
      v64;
      v63;
      v62;
      result = MLDataTable.init()();
      break;
    case 4u:
      v48 = *(&__src[1] + 1);
      v170 = *&__src[1];
      v49 = *(&__src[2] + 1);
      v169._object = *&__src[2];
      v168 = __src[3];
      v50 = *(&__src[4] + 1);
      v172._countAndFlagsBits = *&__src[4];
      v172._object = *&__src[0];
      LOBYTE(v173) = BYTE8(__src[0]) & 1;
      *v174 = *&__src[0];
      v171[0] = DWORD2(__src[0]);
      outlined copy of Result<_DataTable, Error>(*&__src[0], SBYTE8(__src[0]));
      v51 = v170;
      v52 = v48;
      v53 = v48;
      v170 = v49;
      v54 = v164;
      v136._object = v50;
      v136._countAndFlagsBits = v172._countAndFlagsBits;
      v55 = BYTE8(v168);
      static _VideoUtilities.renameVideoTableColumns(table:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(&v172._object, v51, v53, v169._object, v49, v168, *(&v168 + 1), v136);
      if (!v54)
      {
        v52;
        v170;
        v50;
        v55;
        outlined consume of Result<_DataTable, Error>(*v174, v171[0]);
        goto LABEL_34;
      }

      v52;
      v170;
      v50;
      v55;
      outlined consume of Result<_DataTable, Error>(*v174, v171[0]);
      result = outlined consume of Result<_DataTable, Error>(v172._object, v173);
      break;
    case 5u:
      v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *(__src + v70[12] + 8);
      *(__src + v70[16] + 8);
      *(__src + v70[20] + 8);
      MLDataTable.init()();
      result = (*(v172._countAndFlagsBits + 8))(__src, v169._object);
      break;
    case 6u:
      v71 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v72 = v71[12];
      v169._countAndFlagsBits = *(__src + v72);
      *v171 = *(__src + v72 + 8);
      v73 = v71[16];
      *v167 = *(__src + v73);
      *v174 = *(__src + v73 + 8);
      v74 = v71[20];
      *v165 = *(__src + v74);
      v170 = *(__src + v74 + 8);
      v75 = v71[24];
      v166._countAndFlagsBits = *(__src + v75);
      *&v168 = *(__src + v75 + 8);
      v76 = *(&v168 + 1);
      v77 = v169._object;
      v78 = v172._countAndFlagsBits;
      (*(v172._countAndFlagsBits + 32))(*(&v168 + 1), __src, v169._object);
      v79 = ML14_UntypedColumnC_s5Error_pTt1g5;
      *a1.i64 = (*(v78 + 16))(ML14_UntypedColumnC_s5Error_pTt1g5, v76, v77);
      v80 = v164;
      MLDataTable.init(_:convertArraysToShapedArrays:)(v79, 0, a1);
      if (v80)
      {
        (*(v172._countAndFlagsBits + 8))(*(&v168 + 1), v169._object);
        v174[0];
        v171[0];
        v170;
        result = v168;
      }

      else
      {
        v103 = *(&v168 + 1);
        v172._object = v141;
        LOBYTE(v173) = v142;
        v104 = v168;
        v137._object = v168;
        v137._countAndFlagsBits = v166._countAndFlagsBits;
        v105 = v170;
        static _VideoUtilities.renameVideoTableColumns(table:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(&v172._object, v169._countAndFlagsBits, *v171, *v167, *v174, *v165, v170, v137);
        (*(v172._countAndFlagsBits + 8))(v103, v169._object);
        v171[0];
        v174[0];
        v104;
        v105;
LABEL_34:
        result = v172._object;
        v134 = v173;
        v135 = v160;
        *v160 = v172._object;
        *(v135 + 8) = v134;
      }

      break;
  }

  return result;
}

uint64_t type metadata accessor for MLHandActionClassifier.DataSource(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLHandActionClassifier.DataSource;
  if (!type metadata singleton initialization cache for MLHandActionClassifier.DataSource)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLHandActionClassifier.DataSource);
  }

  return result;
}

uint64_t MLHandActionClassifier.DataSource.extractKeypoints(targetFrameRate:)(double a1)
{
  v109 = v2;
  in._object = v3;
  *&in._countAndFlagsBits = a1;
  v102 = v1;
  v95 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Data>);
  v94 = *(v95 - 8);
  v4 = *(v94 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v86 = &v82;
  v92 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v91 = *(v92 - 8);
  v7 = *(v91 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v85 = &v82;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v87 = &v82;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v84 = &v82;
  v106 = type metadata accessor for AnyColumn(0);
  v100 = *(v106 - 1);
  v15 = *(v100 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v96 = &v82;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v93 = &v82;
  v20 = alloca(v15);
  v21 = alloca(v15);
  v101 = &v82;
  v22 = type metadata accessor for DataFrame(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v105 = &v82;
  v27 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = alloca(v28);
  v30 = alloca(v28);
  outlined init with copy of MLHandActionClassifier.DataSource(in._object, &v82);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v82, v27);
  if (EnumCaseMultiPayload == 5)
  {
    v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
    v38 = v37[12];
    v89 = *(&v82 + v38);
    v104 = *(&v82 + v38 + 8);
    v39 = v37[16];
    v88 = *(&v82 + v39);
    v99 = *(&v82 + v39 + 8);
    v40 = v37[20];
    v41 = *(&v82 + v40);
    in._object = *(&v82 + v40 + 8);
    v98 = v23;
    v42 = *(v23 + 32);
    v97 = v22;
    v90 = v42;
    v42(v105, &v82, v22);
    v43 = v101;
    in._countAndFlagsBits = v41;
    DataFrame.subscript.getter(v41, in._object);
    v44 = AnyColumn.wrappedElementType.getter(v41);
    v45 = *(v100 + 8);
    v46 = v106;
    v45(v43, v106);
    if (v44 == &type metadata for String)
    {
      v103 = v45;
      v51 = v85;
      DataFrame.subscript.getter(in._countAndFlagsBits, in._object, &type metadata for String);
      v52 = v84;
      v53 = v109;
      Column<A>.parseAsJSONArrays()();
      if (!v53)
      {
        v109 = 0;
        (*(v91 + 8))(v51, v92);
        v68 = v52;
        v69 = v52;
        v70 = v106;
        __swift_storeEnumTagSinglePayload(v69, 0, 1, v106);
        v71 = v93;
        v72 = v68;
        v73 = v100;
        (*(v100 + 32))(v93, v72, v70);
        (*(v73 + 16))(v43, v71, v70);
        object = in._object;

        v75 = v43;
        countAndFlagsBits = in._countAndFlagsBits;
        v49 = object;
        DataFrame.subscript.setter(v75, in._countAndFlagsBits, object);
        v103(v93, v70);
        v58 = countAndFlagsBits;
        goto LABEL_18;
      }

      v49 = in._object;
      v53;
      (*(v91 + 8))(v51, v92);
      __swift_storeEnumTagSinglePayload(v52, 1, 1, v106);
      v54 = v52;
    }

    else
    {
      v47 = in._countAndFlagsBits;
      DataFrame.subscript.getter(in._countAndFlagsBits, in._object);
      v48 = AnyColumn.wrappedElementType.getter(v47);
      v45(v43, v46);
      if (v48 != &type metadata for Data)
      {
        v49 = in._object;
LABEL_17:
        v58 = in._countAndFlagsBits;
LABEL_18:
        v59._countAndFlagsBits = v58;
        v59._object = v49;
        v60 = v105;
        DataFrame.flattenNestedArrays(in:shape:)(v59, &outlined read-only object #0 of MLHandActionClassifier.DataSource.extractKeypoints(targetFrameRate:));
        if (v61)
        {
          (*(v98 + 8))(v60, v97);
          v104;
          v62 = v99;
        }

        else
        {
          v63 = v58;
          v64 = v99;
          static _VideoUtilities.renameFeatureColumns(dataFrame:sessionIdColumn:featureColumn:labelColumn:)(v60, v89, v104, v63, v49, v88, v99);
          v90(v102, v60, v97);
          v104;
          v62 = v64;
        }

        v62;
        v36 = v49;
        return v36;
      }

      v103 = v45;
      v55 = v86;
      DataFrame.subscript.getter(in._countAndFlagsBits, in._object, &type metadata for Data);
      v56 = v87;
      v57 = v109;
      Column<A>.parseAsJSONArrays()();
      if (!v57)
      {
        v109 = 0;
        (*(v94 + 8))(v55, v95);
        v77 = v106;
        __swift_storeEnumTagSinglePayload(v56, 0, 1, v106);
        v78 = v96;
        v79 = v56;
        v80 = v100;
        (*(v100 + 32))(v96, v79, v77);
        (*(v80 + 16))(v101, v78, v77);
        v81 = in._object;

        v58 = in._countAndFlagsBits;
        v49 = v81;
        DataFrame.subscript.setter(v101, in._countAndFlagsBits, v81);
        v103(v96, v106);
        goto LABEL_18;
      }

      v49 = in._object;
      v57;
      (*(v94 + 8))(v55, v95);
      __swift_storeEnumTagSinglePayload(v56, 1, 1, v106);
      v54 = v56;
    }

    outlined destroy of AnyColumn?(v54);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v106 = v84;
    in._object = v85;
    v105 = v86;
    v32 = v87;
    v33 = v88;
    v34 = v89;
    v107 = v82;
    LOBYTE(v108) = v83;
    v35 = v109;
    static MLHandActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(&v107, v88, v89);
    if (!v35)
    {
      static _VideoUtilities.renameFeatureTableColumns(table:sessionIdColumn:featureColumn:labelColumn:)(&v107, v106, in._object, v33, v34, v105, v32);
      v34;
      v32;
      in._object;
      v65 = v107;
      v66 = v108;
      v82 = v107;
      v83 = v108;
      outlined copy of Result<_DataTable, Error>(v107, v108);
      DataFrame.init(_:)(&v82);
      return outlined consume of Result<_DataTable, Error>(v65, v66);
    }

    outlined consume of Result<_DataTable, Error>(v107, v108);
    in._object;
    v32;
    v36 = v34;
    return v36;
  }

  type metadata accessor for MLHandActionClassifier.FeatureExtractor();
  v50 = v109;
  static MLHandActionClassifier.FeatureExtractor.extractFeatures(from:targetFrameRate:startingSessionId:)(in._object, 0, in._countAndFlagsBits);
  if (!v50)
  {
    v82 = v107;
    v83 = v108;
    DataFrame.init(_:)(&v82);
  }

  return outlined destroy of MLHandActionClassifier.DataSource(&v82);
}

uint64_t MLHandActionClassifier.DataSource.keypointsWithAnnotations(targetFrameRate:)(__m128 a1)
{
  v84 = v2;
  v82 = a1.i64[0];
  v64 = v1;
  v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v69 = *(v70 - 8);
  v4 = *(v69 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v65 = &v63;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v77 = &v63;
  v83 = type metadata accessor for AnyColumn(0);
  v76 = *(v83 - 1);
  v10 = v76[8];
  v11 = alloca(v10);
  v12 = alloca(v10);
  v71 = &v63;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v80 = &v63;
  v15 = type metadata accessor for DataFrame(0);
  v85 = *(v15 - 8);
  v16 = *(v85 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v73 = &v63;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v86 = &v63;
  v21 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  outlined init with copy of MLHandActionClassifier.DataSource(v3, &v63);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v63, v21);
  if (EnumCaseMultiPayload == 5)
  {
    v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
    v31 = v30[12];
    v67 = *(&v63 + v31);
    v81 = *(&v63 + v31 + 8);
    v32 = v30[16];
    v66 = *(&v63 + v32);
    v75 = *(&v63 + v32 + 8);
    v33 = v30[20];
    v34 = *(&v63 + v33);
    v82 = *(&v63 + v33 + 8);
    v74 = v15;
    (*(v85 + 32))(v86, &v63, v15);
    v35 = v80;
    v72 = v34;
    DataFrame.subscript.getter(v34, v82);
    v36 = AnyColumn.wrappedElementType.getter(v34);
    v37 = v76[1];
    (v37)(v35, v83);
    if (v36 == &type metadata for String)
    {
      v68 = v37;
      v41 = v65;
      v42 = v72;
      v43 = v82;
      DataFrame.subscript.getter(v72, v82, &type metadata for String);
      v44 = v84;
      Column<A>.parseAsJSONArrays()();
      if (v44)
      {
        v38 = v86;
        v44;
        (*(v69 + 8))(v41, v70);
        v45 = v77;
        __swift_storeEnumTagSinglePayload(v77, 1, 1, v83);
        outlined destroy of AnyColumn?(v45);
        v84 = 0;
      }

      else
      {
        v84 = 0;
        (*(v69 + 8))(v41, v70);
        v46 = v83;
        __swift_storeEnumTagSinglePayload(v77, 0, 1, v83);
        v47 = v71;
        v48 = v46;
        v49 = v76;
        (v76[4])(v71, v77, v48);
        v50 = v47;
        v51 = v83;
        (v49[2])(v80, v50, v83);

        v52 = v42;
        v38 = v86;
        DataFrame.subscript.setter(v80, v52, v43);
        (v68)(v71, v51);
      }
    }

    else
    {
      v38 = v86;
    }

    v53 = v73;
    v54 = v74;
    v55 = v85;
    *a1.i64 = (*(v85 + 16))(v73, v38, v74);
    v56 = v84;
    MLDataTable.init(_:convertArraysToShapedArrays:)(v53, 0, a1);
    if (v56)
    {
      (*(v55 + 8))(v38, v54);
      v82;
      v75;
      return v81;
    }

    v87 = v78;
    LOBYTE(v88) = v79;
    v57 = v72;
    v58 = v82;
    static MLHandActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(&v87, v72, v82);
    v60 = v57;
    LOBYTE(v57) = v75;
    static _VideoUtilities.renameFeatureTableColumns(table:sessionIdColumn:featureColumn:labelColumn:)(&v87, v67, v81, v60, v58, v66, v75);
    v84 = 0;
    (*(v85 + 8))(v86, v74);
    v81;
    v57;
    v58;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v26 = v64;
    v76 = v65;
    v86 = v66;
    v80 = v67;
    v83 = v68;
    v27 = v69;
    v28 = v70;
    v87 = v63;
    LOBYTE(v88) = v64 & 1;
    v85 = v63;
    outlined copy of Result<_DataTable, Error>(v63, v64);
    v73 = v27;
    v29 = v84;
    static MLHandActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(&v87, v27, v28);
    if (v29)
    {
      outlined consume of Result<_DataTable, Error>(v87, v88);
      v86;
      v83;
      v28;
      return outlined consume of Result<_DataTable, Error>(v85, v26);
    }

    v40 = v83;
    static _VideoUtilities.renameFeatureTableColumns(table:sessionIdColumn:featureColumn:labelColumn:)(&v87, v76, v86, v73, v28, v80, v83);
    v86;
    v40;
    v28;
    outlined consume of Result<_DataTable, Error>(v85, v26);
  }

  else
  {
    type metadata accessor for MLHandActionClassifier.FeatureExtractor();
    v39 = v84;
    static MLHandActionClassifier.FeatureExtractor.extractFeatures(from:targetFrameRate:startingSessionId:)(v3, 0, v82);
    if (v39)
    {
      return outlined destroy of MLHandActionClassifier.DataSource(&v63);
    }

    v87 = v78;
    LOBYTE(v88) = v79;
    outlined destroy of MLHandActionClassifier.DataSource(&v63);
  }

  result = v87;
  v61 = v88;
  v62 = v64;
  *v64 = v87;
  *(v62 + 8) = v61;
  return result;
}

uint64_t MLHandActionClassifier.DataSource.gatherAnnotatedFileNames()()
{
  v96 = v1;
  v94 = v0;
  v102 = type metadata accessor for DataFrame(0);
  v97 = *(v102 - 1);
  v3 = *(v97 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v100 = &v90;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v103 = &v90;
  v104 = type metadata accessor for UTType(0);
  v8 = *(v104 - 1);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v101 = &v90;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v99 = &v90;
  v106 = type metadata accessor for URL(0);
  v107 = *(v106 - 1);
  v14 = v107[8];
  v15 = alloca(v14);
  v16 = alloca(v14);
  v95 = &v90;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v105 = &v90;
  v19 = alloca(v14);
  v20 = alloca(v14);
  v98 = &v90;
  v21 = alloca(v14);
  v22 = alloca(v14);
  v93 = &v90;
  v23 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v24 = *(*(v23 - 8) + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v92 = v2;
  outlined init with copy of MLHandActionClassifier.DataSource(v2, &v90);
  switch(swift_getEnumCaseMultiPayload(&v90, v23))
  {
    case 0u:
      v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v28 = &v90 + v27[12];
      v29 = v27[16];
      v100 = *(&v90 + v29);
      v104 = *(&v90 + v29 + 8);
      v30 = v27[20];
      v103 = *(&v90 + v30);
      v98 = *(&v90 + v30 + 8);
      v31 = v27[24];
      v97 = *(&v90 + v31);
      v99 = *(&v90 + v31 + 8);
      v32 = v27[28];
      v101 = *(&v90 + v32);
      v102 = *(&v90 + v32 + 8);
      v33 = v107[4];
      v34 = v106;
      v33(v105, &v90, v106);
      v35 = v95;
      v36 = v34;
      v37 = v104;
      v33(v95, v28, v36);
      LOBYTE(v33) = v99;
      v38 = v35;
      LOBYTE(v35) = v98;
      MLHandActionClassifier.DataSource.gatherAnnotatedFileNamesForDirectory(url:annotationFile:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(v105, v38, v100, v37, v103, v98, v97, v99, v101, v102);
      v35;
      v37;
      v33;
      v102;
      v39 = v107[1];
      v40 = v106;
      v39(v95, v106);
      return (v39)(v105, v40);
    case 1u:
      v61 = v98;
      (v107[4])(v98, &v90, v106);
      v62 = v101;
      static UTType.movie.getter();
      v63 = v96;
      v64 = static _FileUtilities.collectFilesLabeledByDirectoryName(at:type:)(v61, v62);
      if (v63)
      {
        (*(v8 + 8))(v101, v104);
        v57 = v98;
        return (v107[1])(v57, v106);
      }

      v83 = v64;
      (*(v8 + 8))(v101, v104);
      v84 = specialized _NativeDictionary.mapValues<A>(_:)(v83);
      v83;
      v81 = v94;
      _s11TabularData0B5FrameV8CreateMLE9expanding14keysColumnName06valueshI0ACSDySSSayxGG_S2StclufCSS_Tt3g5(v84, 0x6C6562616CLL, 0xE500000000000000, 0x7461506F65646976, 0xE900000000000068);
      v82 = v98;
      goto LABEL_20;
    case 2u:
      v53 = v93;
      (v107[4])(v93, &v90, v106);
      v54 = v99;
      static UTType.movie.getter();
      v55 = v96;
      v56 = static _FileUtilities.collectFilesLabeledByFileName(at:type:)(v53, v54);
      if (v55)
      {
        (*(v8 + 8))(v99, v104);
        v57 = v93;
        return (v107[1])(v57, v106);
      }

      v79 = v56;
      (*(v8 + 8))(v99, v104);
      v80 = specialized _NativeDictionary.mapValues<A>(_:)(v79);
      v79;
      v81 = v94;
      _s11TabularData0B5FrameV8CreateMLE9expanding14keysColumnName06valueshI0ACSDySSSayxGG_S2StclufCSS_Tt3g5(v80, 0x6C6562616CLL, 0xE500000000000000, 0x7461506F65646976, 0xE900000000000068);
      v82 = v93;
LABEL_20:
      (v107[1])(v82, v106);
      v87 = v81;
      v88 = v102;
      return __swift_storeEnumTagSinglePayload(v87, 0, 1, v88);
    case 3u:
      v58 = v93;
      v59 = v95;
      v60 = v97;
      outlined consume of Result<_DataTable, Error>(v90, v91);
      v60;
      v59;
      v58;
      return __swift_storeEnumTagSinglePayload(v94, 1, 1, v102);
    case 4u:
      v42 = v91;
      v95 = v92;
      v98 = v93;
      v43 = v94;
      v44 = v92;
      v101 = v96;
      v107 = v97;
      v100 = v93;
      v106 = v99;
      LOBYTE(v91) = v91 & 1;
      v104 = v90;
      LODWORD(v99) = v42;
      outlined copy of Result<_DataTable, Error>(v90, v42);
      v45 = v103;
      DataFrame.init(_:)(&v90);
      v46 = v45;
      v47 = v98;
      v48 = v95;
      v93 = v43;
      v49 = v43;
      v105 = v44;
      v50 = v101;
      v51 = v96;
      static _VideoUtilities.validateVideoInput(dataFrame:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(v46, v95, v98, v49, v44, v101, v107, v100, v106);
      if (!v51)
      {
        static _VideoUtilities.renameVideoColumns(dataFrame:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(v103, v48, v47, v93, v105, v50, v107, v100, v106);
        outlined consume of Result<_DataTable, Error>(v104, v99);
        v105;
        v47;
        v107;
        v106;
        v85 = v94;
        v86 = v102;
        (*(v97 + 32))(v94, v103, v102);
        v87 = v85;
        v88 = v86;
        return __swift_storeEnumTagSinglePayload(v87, 0, 1, v88);
      }

      (*(v97 + 8))(v103, v102);
      outlined consume of Result<_DataTable, Error>(v104, v99);
      v105;
      v47;
      v107;
      v52 = v106;
      return v52;
    case 5u:
      v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *(&v90 + v65[12] + 8);
      *(&v90 + v65[16] + 8);
      *(&v90 + v65[20] + 8);
      v66 = v102;
      __swift_storeEnumTagSinglePayload(v94, 1, 1, v102);
      return (*(v97 + 8))(&v90, v66);
    case 6u:
      v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v68 = v67[12];
      v95 = *(&v90 + v68);
      v106 = *(&v90 + v68 + 8);
      v69 = v67[16];
      v101 = *(&v90 + v69);
      v70 = *(&v90 + v69 + 8);
      v71 = v67[20];
      v98 = *(&v90 + v71);
      v107 = *(&v90 + v71 + 8);
      v72 = v67[24];
      v73 = *(&v90 + v72);
      v105 = *(&v90 + v72 + 8);
      v74 = v100;
      v75 = v102;
      v104 = *(v97 + 32);
      (v104)(v100, &v90, v102);
      v76 = v74;
      v77 = v98;
      v103 = v70;
      v78 = v96;
      v96 = v73;
      static _VideoUtilities.validateVideoInput(dataFrame:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(v76, v95, v106, v101, v70, v98, v107, v73, v105);
      if (v78)
      {
        (*(v97 + 8))(v100, v75);
        v106;
        v103;
        v105;
        v52 = v107;
        return v52;
      }

      else
      {
        static _VideoUtilities.renameVideoColumns(dataFrame:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(v100, v95, v106, v101, v103, v77, v107, v96, v105);
        v103;
        v106;
        v107;
        v105;
        v89 = v94;
        (v104)(v94, v100, v75);
        v87 = v89;
        v88 = v75;
        return __swift_storeEnumTagSinglePayload(v87, 0, 1, v88);
      }
  }
}

uint64_t MLHandActionClassifier.DataSource.gatherAnnotatedFileNamesForDirectory(url:annotationFile:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, void *a10)
{
  v149 = v10;
  v172 = a2;
  v151 = v11;
  v143 = a1;
  v144 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v145 = *(v144 - 8);
  v16 = *(v145 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v146 = &v140;
  v155 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v154 = *(v155 - 8);
  v19 = *(v154 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v159 = &v140;
  v22 = *(*(type metadata accessor for CSVReadingOptions(0) - 8) + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v147 = &v140;
  v171 = type metadata accessor for CSVType(0);
  v162 = *(v171 - 8);
  v25 = *(v162 + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v156 = &v140;
  v28 = alloca(v25);
  v29 = alloca(v25);
  v169 = &v140;
  v30 = *(*(type metadata accessor for JSONReadingOptions(0) - 8) + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  v160 = &v140;
  v152 = type metadata accessor for URL(0);
  v164 = *(v152 - 8);
  v33 = v164[8];
  v34 = alloca(v33);
  v35 = alloca(v33);
  v166 = &v140;
  v36 = alloca(v33);
  v37 = alloca(v33);
  v140 = &v140;
  v142 = type metadata accessor for JSONType(0);
  v174 = *(v142 - 8);
  v38 = *(v174 + 64);
  v39 = alloca(v38);
  v40 = alloca(v38);
  v173 = &v140;
  v41 = alloca(v38);
  v42 = alloca(v38);
  v170 = &v140;
  v165 = type metadata accessor for DataFrame(0);
  v161 = *(v165 - 8);
  v43 = *(v161 + 64);
  v44 = alloca(v43);
  v45 = alloca(v43);
  v148 = &v140;
  v46 = alloca(v43);
  v47 = alloca(v43);
  v141 = &v140;
  v48 = alloca(v43);
  v49 = alloca(v43);
  v153 = &v140;
  v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  v51 = swift_allocObject(v50, 64, 7);
  v51[2] = 2;
  v51[3] = 4;
  v163 = a3;
  v51[4] = a3;
  v51[5] = a4;
  v158 = a5;
  v51[6] = a5;
  v52 = v51;
  v51[7] = a6;
  v157 = a6;

  if (a8)
  {

    v53 = 3;
    v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 3, 1, v52);
    v52[2] = 3;
    v52[8] = a7;
    v52[9] = a8;
  }

  else
  {
    v53 = 2;
  }

  v167 = a4;
  if (a10)
  {
    v168 = v52;
    v54 = v52[3];

    if (v54 >> 1 <= v53)
    {
      v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v54 >= 2, v53 + 1, 1, v168);
    }

    else
    {
      v52 = v168;
    }

    v52[2] = v53 + 1;
    v55 = 2 * v53;
    v52[v55 + 4] = a9;
    v52[v55 + 5] = a10;
  }

  v168 = v52;
  v56 = URL.pathExtension.getter();
  v58 = v57;
  if (!(v56 ^ 0x6E6F736A | v57 ^ 0xE400000000000000))
  {
    v57;
    goto LABEL_11;
  }

  v59 = _stringCompareWithSmolCheck(_:_:expecting:)(v56, v57, 1852797802, 0xE400000000000000, 0);
  v58;
  if (v59)
  {
LABEL_11:
    v60 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, JSONType)>);
    v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, JSONType));
    v62 = *(v61 - 8);
    v169 = v61;
    v171 = *(v62 + 72);
    v63 = *(v62 + 80);
    v64 = (v63 + 32) & ~*(v62 + 80);
    v65 = swift_allocObject(v60, v64 + 2 * v171, v63 | 7);
    *(v65 + 16) = 2;
    *(v65 + 24) = 4;
    v66 = v65 + v64;
    v67 = v65 + v64 + *(v61 + 48);
    *(v65 + v64) = v163;
    *(v65 + v64 + 8) = v167;
    LODWORD(v166) = enum case for JSONType.string(_:);
    v68 = *(v174 + 104);
    v69 = v142;
    v68(v67, enum case for JSONType.string(_:), v142);
    v70 = v171;
    v71 = v66 + v171 + *(v169 + 12);
    *(v171 + v66) = v158;
    *(v70 + v66 + 8) = v157;
    v171 = v68;
    v68(v71, v166, v69);

    v72 = Dictionary.init(dictionaryLiteral:)(v65, &type metadata for String, v69, &protocol witness table for String);
    if (a8)
    {
      v73 = v170;
      v74 = v72;
      (v171)(v170, enum case for JSONType.double(_:), v69);
      v75 = v173;
      (*(v174 + 32))(v173, v73, v69);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v74);
      v150[0] = v74;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v75, a7, a8, isUniquelyReferenced_nonNull_native);
      a8;
      v72 = v150[0];
      v77 = a10;
    }

    else
    {
      v77 = a10;
      v75 = v173;
    }

    v173 = v72;
    if (v77)
    {
      v78 = v170;
      (v171)(v170, enum case for JSONType.double(_:), v69);
      (*(v174 + 32))(v75, v78, v69);

      v79 = v173;
      v80 = swift_isUniquelyReferenced_nonNull_native(v173);
      v150[0] = v79;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v75, a9, v77, v80);
      v77;
      v173 = v150[0];
    }

    v81 = v140;
    (v164[2])(v140, v172, v152);
    v82 = v168;
    v83 = v168;

    v84 = v160;
    JSONReadingOptions.init()(v83);
    v85 = v141;
    v86 = v151;
    DataFrame.init(contentsOfJSONFile:columns:types:options:)(v81, v82, v173, v84);
    if (!v86)
    {
      v172 = 0;
      v87 = v161;
      v88 = v165;
      goto LABEL_27;
    }

    return v82;
  }

  v89 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, CSVType)>);
  v90 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, CSVType));
  v91 = *(v90 - 8);
  v92 = v90;
  v170 = v90;
  v174 = *(v91 + 72);
  v93 = *(v91 + 80);
  v94 = (v93 + 32) & ~*(v91 + 80);
  v95 = swift_allocObject(v89, v94 + 2 * v174, v93 | 7);
  *(v95 + 16) = 2;
  *(v95 + 24) = 4;
  v96 = v95 + v94;
  v97 = v95 + v94 + *(v92 + 48);
  *(v95 + v94) = v163;
  *(v95 + v94 + 8) = v167;
  LODWORD(v160) = enum case for CSVType.string(_:);
  v98 = *(v162 + 104);
  v99 = v171;
  (v98)(v97, enum case for CSVType.string(_:), v171);
  v100 = v174;
  v101 = v96 + v174 + *(v170 + 12);
  *(v174 + v96) = v158;
  *(v100 + v96 + 8) = v157;
  v102 = v99;
  v103 = v98;
  (v98)(v101, v160, v102);

  v104 = v102;

  v105 = Dictionary.init(dictionaryLiteral:)(v95, &type metadata for String, v102, &protocol witness table for String);
  v173 = v103;
  LODWORD(v170) = enum case for CSVType.double(_:);
  if (a8)
  {
    v106 = v169;
    v174 = v105;
    (v103)(v169, enum case for CSVType.double(_:), v104);
    v107 = v156;
    v108 = v162;
    (*(v162 + 32))(v156, v106, v104);

    v109 = v174;
    v110 = swift_isUniquelyReferenced_nonNull_native(v174);
    v150[0] = v109;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v107, a7, a8, v110);
    a8;
    v105 = v150[0];
    v111 = a10;
  }

  else
  {
    v111 = a10;
    v108 = v162;
  }

  v174 = v105;
  v112 = v169;
  if (v111)
  {
    v113 = v171;
    (v173)(v169, v170, v171);
    v114 = v108;
    v115 = v156;
    (*(v114 + 32))(v156, v112, v113);

    v116 = v174;
    v117 = swift_isUniquelyReferenced_nonNull_native(v174);
    v150[0] = v116;
    v118 = v115;
    v119 = v173;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v118, a9, v111, v117);
    v111;
    v174 = v150[0];
    v112 = v169;
  }

  else
  {
    v119 = v173;
  }

  (v164[2])(v166, v172, v152);
  v82 = v168;

  v172 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 1 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
  v164 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 2 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
  v120 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 3 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
  (v119)(v112, v170, v171);
  v121 = v147;
  CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)(1, v172, v164, v120, v112, 1, 1, 0, 44, 0xE100000000000000, 92);
  v85 = v148;
  v122 = v151;
  DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)(v166, v82, 0, 0, 1, v174, v121);
  if (v122)
  {
    return v82;
  }

  v172 = 0;
  v88 = v165;
  v87 = v161;
LABEL_27:
  v174 = *(v87 + 32);
  (v174)(v153, v85, v88);
  v124 = v146;
  DataFrame.subscript.getter(v163, v167, &type metadata for String);
  v150[0] = 0;
  v150[1] = 0xE000000000000000;
  v125 = lazy protocol witness table accessor for type Column<String> and conformance Column<A>();
  v126 = v144;
  OptionalColumnProtocol.filled(with:)(v150, v144, v125);
  v127 = v126;
  v128 = v153;
  (*(v145 + 8))(v124, v127);
  v129 = alloca(24);
  v130 = alloca(32);
  v142 = v143;
  v131 = v172;
  v132 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData12FilledColumnVyAF0G0VySSGG_SSSgs5NeverOTg5(partial apply for closure #1 in MLHandActionClassifier.DataSource.gatherAnnotatedFileNamesForDirectory(url:annotationFile:videoColumn:labelColumn:startTimeColumn:endTimeColumn:), &v140);
  v172 = v131;
  v168;
  v133 = v167;

  v134 = v132;
  v135 = v163;
  DataFrame.subscript.setter(v134, v163, v133, &type metadata for String, &type metadata for String);
  v136 = v172;
  static _VideoUtilities.renameVideoColumns(dataFrame:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(v128, v135, v133, v158, v157, a7, a8, a9, a10);
  (*(v154 + 8))(v159, v155);
  if (v136)
  {
    return (*(v161 + 8))(v128, v165);
  }

  v137 = v149;
  v138 = v128;
  v139 = v165;
  (v174)(v149, v138, v165);
  return __swift_storeEnumTagSinglePayload(v137, 0, 1, v139);
}

uint64_t MLHandActionClassifier.DataSource.stratifiedSplit(proportions:seed:labelColumn:)(void *a1, uint64_t a2, uint64_t a3, void *a4, __m128 a5)
{
  v8 = v6;
  v34 = a4;
  v35._countAndFlagsBits = a3;
  v39 = a2;
  v35._object = a1;
  v36 = v5;
  v9 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  outlined init with copy of MLHandActionClassifier.DataSource(v7, &v32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v32, v9);
  if (EnumCaseMultiPayload == 5)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
    v18 = v17[12];
    *v37 = *(&v32 + v18);
    *v42 = *(&v32 + v18 + 8);
    *(&v32 + v17[16] + 8);
    *(&v32 + v17[20] + 8);
    v19 = type metadata accessor for DataFrame(0);
    (*(*(v19 - 8) + 8))(&v32, v19);
LABEL_5:
    MLHandActionClassifier.DataSource.keypointsWithAnnotations(targetFrameRate:)(0x403E000000000000uLL);
    if (v8)
    {
      return v42[0];
    }

    v21 = v39;
    if (v39 < 0)
    {
      BUG();
    }

    v22 = v40;
    v33 = v40;
    LOBYTE(v38) = v41;
    v23 = type metadata accessor for MersenneTwisterGenerator();
    swift_allocObject(v23, 136, 7);
    v40 = MersenneTwisterGenerator.init(seed:)(v21);
    v24 = v38;
    v25 = v22;
    LOBYTE(v22) = v42[0];
    v31._object = v34;
    v31._countAndFlagsBits = v35._countAndFlagsBits;
    specialized stratifiedSplitBySequenceGenerator<A>(proportions:generator:dataTable:by:on:)(v35._object, &v40, v25, v38, *v37, *v42, 30.0, v31);
    v22;

    return outlined consume of Result<_DataTable, Error>(v33, v24);
  }

  if (EnumCaseMultiPayload == 3)
  {
    v38 = v32;
    *v37 = v34;
    *v42 = v35._countAndFlagsBits;
    v14 = v32;
    v15 = v33;
    v36;
    v16 = v14;
    v8 = v6;
    v16;
    outlined consume of Result<_DataTable, Error>(v38, v15);
    goto LABEL_5;
  }

  MLHandActionClassifier.DataSource.videosWithAnnotations()(a5);
  if (v6)
  {
    return outlined destroy of MLHandActionClassifier.DataSource(&v32);
  }

  v26 = v39;
  if (v39 < 0)
  {
    BUG();
  }

  *v42 = v40;
  v27 = v41;
  v28 = type metadata accessor for MersenneTwisterGenerator();
  swift_allocObject(v28, 136, 7);
  v40 = MersenneTwisterGenerator.init(seed:)(v26);
  v29 = v27;
  LODWORD(v39) = v27;
  v30 = *v42;
  specialized stratifiedSplitGenerator<A>(proportions:generator:dataTable:on:)(v35._object, &v40, *v42, v29, v35._countAndFlagsBits, v34, *a5.i64);

  outlined consume of Result<_DataTable, Error>(v30, v39);
  return outlined destroy of MLHandActionClassifier.DataSource(&v32);
}

void *initializeBufferWithCopyOfBuffer for MLHandActionClassifier.DataSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v4 + 16) & ~v4));
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload(a2, a3))
    {
      case 0u:
        v6 = type metadata accessor for URL(0);
        v34 = *(*(v6 - 8) + 16);
        v34(a1, a2, v6);
        v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v34(a1 + v7[12], a2 + v7[12], v6);
        v8 = v7[16];
        *(a1 + v8) = *(a2 + v8);
        *(a1 + v8 + 8) = *(a2 + v8 + 8);
        v9 = v7[20];
        *(a1 + v9) = *(a2 + v9);
        *(a1 + v9 + 8) = *(a2 + v9 + 8);
        v10 = v7[24];
        *(a1 + v10) = *(a2 + v10);
        *(a1 + v10 + 8) = *(a2 + v10 + 8);
        v11 = v7[28];
        *(a1 + v11) = *(a2 + v11);
        *(a1 + v11 + 8) = *(a2 + v11 + 8);

        v12 = a3;
        v13 = 0;
        goto LABEL_12;
      case 1u:
        v20 = type metadata accessor for URL(0);
        (*(*(v20 - 8) + 16))(a1, a2, v20);
        v33 = 1;
        goto LABEL_11;
      case 2u:
        v17 = type metadata accessor for URL(0);
        (*(*(v17 - 8) + 16))(a1, a2, v17);
        v33 = 2;
        goto LABEL_11;
      case 3u:
        v18 = *a2;
        v19 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v19);
        *a1 = v18;
        *(a1 + 8) = v19;
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = *(a2 + 56);

        v33 = 3;
        goto LABEL_11;
      case 4u:
        v15 = *a2;
        v16 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v16);
        *a1 = v15;
        *(a1 + 8) = v16;
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 72) = *(a2 + 72);

        v33 = 4;
        goto LABEL_11;
      case 5u:
        v21 = type metadata accessor for DataFrame(0);
        (*(*(v21 - 8) + 16))(a1, a2, v21);
        v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v23 = v22[12];
        *(a1 + v23) = *(a2 + v23);
        *(a1 + v23 + 8) = *(a2 + v23 + 8);
        v24 = v22[16];
        *(a1 + v24) = *(a2 + v24);
        *(a1 + v24 + 8) = *(a2 + v24 + 8);
        v25 = v22[20];
        *(a1 + v25) = *(a2 + v25);
        *(a1 + v25 + 8) = *(a2 + v25 + 8);

        v33 = 5;
        goto LABEL_11;
      case 6u:
        v26 = type metadata accessor for DataFrame(0);
        (*(*(v26 - 8) + 16))(a1, a2, v26);
        v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v28 = v27[12];
        *(a1 + v28) = *(a2 + v28);
        *(a1 + v28 + 8) = *(a2 + v28 + 8);
        v29 = v27[16];
        *(a1 + v29) = *(a2 + v29);
        *(a1 + v29 + 8) = *(a2 + v29 + 8);
        v30 = v27[20];
        *(a1 + v30) = *(a2 + v30);
        *(a1 + v30 + 8) = *(a2 + v30 + 8);
        v31 = v27[24];
        *(a1 + v31) = *(a2 + v31);
        *(a1 + v31 + 8) = *(a2 + v31 + 8);

        v33 = 6;
LABEL_11:
        v13 = v33;
        v12 = a3;
LABEL_12:
        swift_storeEnumTagMultiPayload(a1, v12, v13);
        break;
    }
  }

  return v3;
}

uint64_t destroy for MLHandActionClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  switch(result)
  {
    case 0:
      v4 = type metadata accessor for URL(0);
      v5 = *(*(v4 - 8) + 8);
      v5(a1, v4);
      v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v5(a1 + v6[12], v4);
      *(a1 + v6[16] + 8);
      *(a1 + v6[20] + 8);
      *(a1 + v6[24] + 8);
      v7 = v6[28];
      goto LABEL_8;
    case 1:
    case 2:
      v3 = type metadata accessor for URL(0);
      return (*(*(v3 - 8) + 8))(a1, v3);
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
      v8 = type metadata accessor for DataFrame(0);
      (*(*(v8 - 8) + 8))(a1, v8);
      v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *(a1 + v9[12] + 8);
      *(a1 + v9[16] + 8);
      v7 = v9[20];
      goto LABEL_8;
    case 6:
      v10 = type metadata accessor for DataFrame(0);
      (*(*(v10 - 8) + 8))(a1, v10);
      v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      *(a1 + v11[12] + 8);
      *(a1 + v11[16] + 8);
      *(a1 + v11[20] + 8);
      v7 = v11[24];
LABEL_8:
      result = *(a1 + v7 + 8);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t initializeWithCopy for MLHandActionClassifier.DataSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload(a2, a3))
  {
    case 0u:
      v4 = type metadata accessor for URL(0);
      v5 = *(*(v4 - 8) + 16);
      v5(a1, a2, v4);
      v32 = a3;
      v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v5(a1 + v6[12], a2 + v6[12], v4);
      v7 = v6[16];
      *(a1 + v7) = *(a2 + v7);
      *(a1 + v7 + 8) = *(a2 + v7 + 8);
      v8 = v6[20];
      *(a1 + v8) = *(a2 + v8);
      *(a1 + v8 + 8) = *(a2 + v8 + 8);
      v9 = v6[24];
      *(a1 + v9) = *(a2 + v9);
      *(a1 + v9 + 8) = *(a2 + v9 + 8);
      v10 = v6[28];
      *(a1 + v10) = *(a2 + v10);
      *(a1 + v10 + 8) = *(a2 + v10 + 8);

      v11 = v32;
      v12 = 0;
      goto LABEL_10;
    case 1u:
      v18 = type metadata accessor for URL(0);
      (*(*(v18 - 8) + 16))(a1, a2, v18);
      v31 = 1;
      goto LABEL_9;
    case 2u:
      v15 = type metadata accessor for URL(0);
      (*(*(v15 - 8) + 16))(a1, a2, v15);
      v31 = 2;
      goto LABEL_9;
    case 3u:
      v16 = *a2;
      v17 = *(a2 + 8);
      outlined copy of Result<_DataTable, Error>(*a2, v17);
      *a1 = v16;
      *(a1 + 8) = v17;
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);

      v31 = 3;
      goto LABEL_9;
    case 4u:
      v13 = *a2;
      v14 = *(a2 + 8);
      outlined copy of Result<_DataTable, Error>(*a2, v14);
      *a1 = v13;
      *(a1 + 8) = v14;
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);

      v31 = 4;
      goto LABEL_9;
    case 5u:
      v19 = type metadata accessor for DataFrame(0);
      (*(*(v19 - 8) + 16))(a1, a2, v19);
      v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      v21 = v20[12];
      *(a1 + v21) = *(a2 + v21);
      *(a1 + v21 + 8) = *(a2 + v21 + 8);
      v22 = v20[16];
      *(a1 + v22) = *(a2 + v22);
      *(a1 + v22 + 8) = *(a2 + v22 + 8);
      v23 = v20[20];
      *(a1 + v23) = *(a2 + v23);
      *(a1 + v23 + 8) = *(a2 + v23 + 8);

      v31 = 5;
      goto LABEL_9;
    case 6u:
      v24 = type metadata accessor for DataFrame(0);
      (*(*(v24 - 8) + 16))(a1, a2, v24);
      v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v26 = v25[12];
      *(a1 + v26) = *(a2 + v26);
      *(a1 + v26 + 8) = *(a2 + v26 + 8);
      v27 = v25[16];
      *(a1 + v27) = *(a2 + v27);
      *(a1 + v27 + 8) = *(a2 + v27 + 8);
      v28 = v25[20];
      *(a1 + v28) = *(a2 + v28);
      *(a1 + v28 + 8) = *(a2 + v28 + 8);
      v29 = v25[24];
      *(a1 + v29) = *(a2 + v29);
      *(a1 + v29 + 8) = *(a2 + v29 + 8);

      v31 = 6;
LABEL_9:
      v12 = v31;
      v11 = a3;
LABEL_10:
      swift_storeEnumTagMultiPayload(a1, v11, v12);
      return a1;
  }
}

uint64_t assignWithCopy for MLHandActionClassifier.DataSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of MLHandActionClassifier.DataSource(a1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
    switch(EnumCaseMultiPayload)
    {
      case 0u:
        v30 = EnumCaseMultiPayload;
        v8 = type metadata accessor for URL(0);
        v28 = *(*(v8 - 8) + 16);
        v28(a1, a2, v8);
        v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v28(a1 + v9[12], a2 + v9[12], v8);
        v10 = v9[16];
        *(a1 + v10) = *(a2 + v10);
        *(a1 + v10 + 8) = *(a2 + v10 + 8);
        v11 = v9[20];
        *(a1 + v11) = *(a2 + v11);
        *(a1 + v11 + 8) = *(a2 + v11 + 8);
        v12 = v9[24];
        *(a1 + v12) = *(a2 + v12);
        *(a1 + v12 + 8) = *(a2 + v12 + 8);
        v13 = v9[28];
        *(a1 + v13) = *(a2 + v13);
        *(a1 + v13 + 8) = *(a2 + v13 + 8);

        EnumCaseMultiPayload = v30;

        goto LABEL_12;
      case 1u:
      case 2u:
        v5 = type metadata accessor for URL(0);
        (*(*(v5 - 8) + 16))(a1, a2, v5);
        goto LABEL_13;
      case 3u:
        v14 = *a2;
        v31 = EnumCaseMultiPayload;
        v15 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v15);
        *a1 = v14;
        *(a1 + 8) = v15;
        EnumCaseMultiPayload = v31;
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = *(a2 + 56);
        goto LABEL_8;
      case 4u:
        v6 = *a2;
        v29 = EnumCaseMultiPayload;
        v7 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v7);
        *a1 = v6;
        *(a1 + 8) = v7;
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 72) = *(a2 + 72);
        goto LABEL_10;
      case 5u:
        v16 = type metadata accessor for DataFrame(0);
        (*(*(v16 - 8) + 16))(a1, a2, v16);
        v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v18 = v17[12];
        *(a1 + v18) = *(a2 + v18);
        *(a1 + v18 + 8) = *(a2 + v18 + 8);
        v19 = v17[16];
        *(a1 + v19) = *(a2 + v19);
        *(a1 + v19 + 8) = *(a2 + v19 + 8);
        v20 = v17[20];
        *(a1 + v20) = *(a2 + v20);
        *(a1 + v20 + 8) = *(a2 + v20 + 8);
LABEL_8:

        break;
      case 6u:
        v21 = type metadata accessor for DataFrame(0);
        (*(*(v21 - 8) + 16))(a1, a2, v21);
        v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v23 = v22[12];
        *(a1 + v23) = *(a2 + v23);
        *(a1 + v23 + 8) = *(a2 + v23 + 8);
        v24 = v22[16];
        *(a1 + v24) = *(a2 + v24);
        *(a1 + v24 + 8) = *(a2 + v24 + 8);
        v25 = v22[20];
        *(a1 + v25) = *(a2 + v25);
        v29 = EnumCaseMultiPayload;
        *(a1 + v25 + 8) = *(a2 + v25 + 8);
        v26 = v22[24];
        *(a1 + v26) = *(a2 + v26);
        *(a1 + v26 + 8) = *(a2 + v26 + 8);
LABEL_10:

        EnumCaseMultiPayload = v29;
        break;
    }

LABEL_12:

LABEL_13:
    swift_storeEnumTagMultiPayload(a1, a3, EnumCaseMultiPayload);
  }

  return a1;
}

char *initializeWithTake for MLHandActionClassifier.DataSource(char *__dst, char *__src, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload(__src, a3))
  {
    case 0u:
      v4 = type metadata accessor for URL(0);
      v16 = *(*(v4 - 8) + 32);
      v16(__dst, __src, v4);
      v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v16(&__dst[v5[12]], &__src[v5[12]], v4);
      *&__dst[v5[16]] = *&__src[v5[16]];
      *&__dst[v5[20]] = *&__src[v5[20]];
      *&__dst[v5[24]] = *&__src[v5[24]];
      *&__dst[v5[28]] = *&__src[v5[28]];
      v6 = a3;
      v7 = 0;
      goto LABEL_9;
    case 1u:
      v10 = type metadata accessor for URL(0);
      (*(*(v10 - 8) + 32))(__dst, __src, v10);
      v15 = 1;
      goto LABEL_8;
    case 2u:
      v9 = type metadata accessor for URL(0);
      (*(*(v9 - 8) + 32))(__dst, __src, v9);
      v15 = 2;
      goto LABEL_8;
    case 5u:
      v11 = type metadata accessor for DataFrame(0);
      (*(*(v11 - 8) + 32))(__dst, __src, v11);
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *&__dst[v12[12]] = *&__src[v12[12]];
      *&__dst[v12[16]] = *&__src[v12[16]];
      *&__dst[v12[20]] = *&__src[v12[20]];
      v15 = 5;
      goto LABEL_8;
    case 6u:
      v13 = type metadata accessor for DataFrame(0);
      (*(*(v13 - 8) + 32))(__dst, __src, v13);
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      *&__dst[v14[12]] = *&__src[v14[12]];
      *&__dst[v14[16]] = *&__src[v14[16]];
      *&__dst[v14[20]] = *&__src[v14[20]];
      *&__dst[v14[24]] = *&__src[v14[24]];
      v15 = 6;
LABEL_8:
      v7 = v15;
      v6 = a3;
LABEL_9:
      swift_storeEnumTagMultiPayload(__dst, v6, v7);
      result = __dst;
      break;
    default:
      result = memcpy(__dst, __src, *(*(a3 - 8) + 64));
      break;
  }

  return result;
}

char *assignWithTake for MLHandActionClassifier.DataSource(char *__dst, char *__src, uint64_t a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLHandActionClassifier.DataSource(__dst);
    switch(swift_getEnumCaseMultiPayload(__src, a3))
    {
      case 0u:
        v4 = type metadata accessor for URL(0);
        v16 = *(*(v4 - 8) + 32);
        v16(__dst, __src, v4);
        v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v16(&__dst[v5[12]], &__src[v5[12]], v4);
        *&__dst[v5[16]] = *&__src[v5[16]];
        *&__dst[v5[20]] = *&__src[v5[20]];
        *&__dst[v5[24]] = *&__src[v5[24]];
        *&__dst[v5[28]] = *&__src[v5[28]];
        v6 = a3;
        v7 = 0;
        goto LABEL_10;
      case 1u:
        v10 = type metadata accessor for URL(0);
        (*(*(v10 - 8) + 32))(__dst, __src, v10);
        v15 = 1;
        goto LABEL_9;
      case 2u:
        v9 = type metadata accessor for URL(0);
        (*(*(v9 - 8) + 32))(__dst, __src, v9);
        v15 = 2;
        goto LABEL_9;
      case 5u:
        v11 = type metadata accessor for DataFrame(0);
        (*(*(v11 - 8) + 32))(__dst, __src, v11);
        v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *&__dst[v12[12]] = *&__src[v12[12]];
        *&__dst[v12[16]] = *&__src[v12[16]];
        *&__dst[v12[20]] = *&__src[v12[20]];
        v15 = 5;
        goto LABEL_9;
      case 6u:
        v13 = type metadata accessor for DataFrame(0);
        (*(*(v13 - 8) + 32))(__dst, __src, v13);
        v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *&__dst[v14[12]] = *&__src[v14[12]];
        *&__dst[v14[16]] = *&__src[v14[16]];
        *&__dst[v14[20]] = *&__src[v14[20]];
        *&__dst[v14[24]] = *&__src[v14[24]];
        v15 = 6;
LABEL_9:
        v7 = v15;
        v6 = a3;
LABEL_10:
        swift_storeEnumTagMultiPayload(__dst, v6, v7);
        return __dst;
      default:
        return memcpy(__dst, __src, *(*(a3 - 8) + 64));
    }
  }

  return __dst;
}

uint64_t type metadata completion function for MLHandActionClassifier.DataSource(uint64_t a1)
{
  v1 = type metadata accessor for URL(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v21 = a1;
    v4 = *(v1 - 8) + 64;
    v13 = v4;
    v14 = v4;
    v15 = &unk_3471B0;
    v16 = &unk_3471B0;
    v17 = &unk_3471C8;
    v18 = &unk_3471C8;
    swift_getTupleTypeLayout(v11, 0, 6);
    v20[0] = v11;
    v20[1] = v4;
    v20[2] = v4;
    v20[3] = &unk_3471E0;
    v20[4] = &unk_3471F8;
    v5 = type metadata accessor for DataFrame(319);
    v2 = v5;
    if (v6 <= 0x3F)
    {
      v13 = *(v5 - 8) + 64;
      v7 = v13;
      v14 = &unk_3471B0;
      v15 = &unk_3471B0;
      v16 = &unk_3471B0;
      v2 = 0;
      swift_getTupleTypeLayout(v19, 0, 4);
      v20[5] = v19;
      v13 = v7;
      v14 = &unk_3471B0;
      v15 = &unk_3471B0;
      v16 = &unk_3471C8;
      v17 = &unk_3471C8;
      swift_getTupleTypeLayout(v12, 0, 5);
      v20[6] = v12;
      swift_initEnumMetadataMultiPayload(v21, 256, 7, v20, v8, v9);
    }
  }

  return v2;
}

uint64_t lazy protocol witness table accessor for type Column<String> and conformance Column<A>()
{
  result = lazy protocol witness table cache variable for type Column<String> and conformance Column<A>;
  if (!lazy protocol witness table cache variable for type Column<String> and conformance Column<A>)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for Column<String>);
    result = swift_getWitnessTable(&protocol conformance descriptor for Column<A>, v1);
    lazy protocol witness table cache variable for type Column<String> and conformance Column<A> = result;
  }

  return result;
}

uint64_t MLPhase.rawValue.getter()
{
  switch(*v0)
  {
    case 0:
      result = 0x696C616974696E69;
      break;
    case 1:
      result = 0x6974636172747865;
      break;
    case 2:
      result = 0x676E696E69617274;
      break;
    case 3:
      result = 0x697461756C617665;
      break;
    case 4:
      result = 0x636E657265666E69;
      break;
  }

  return result;
}

CreateML::MLPhase_optional __swiftcall MLPhase.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MLPhase.init(rawValue:), rawValue);
  rawValue._object;
  result.value = CreateML_MLPhase_unknownDefault;
  if (v3 < 5)
  {
    result.value = v3;
  }

  v2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MLPhase(uint64_t a1)
{
  v2 = v1;
  result = MLPhase.rawValue.getter();
  *v2 = result;
  v2[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for MLPhase(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 < 0xFC)
    {
      goto LABEL_13;
    }

    v2 = a2 + 4;
    v3 = 1;
    if (v2 >= 0xFF00)
    {
      v3 = 2 * (v2 >= 0xFFFF00) + 2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
    }

    else
    {
      v4 = v3 == 2 ? *(a1 + 1) : a1[1];
    }

    if (v4)
    {
      v5 = *a1 + (v4 << 8) - 5;
    }

    else
    {
LABEL_13:
      v6 = *a1;
      v7 = v6 - 5;
      v8 = v6 < 5;
      v5 = -1;
      if (!v8)
      {
        v5 = v7;
      }
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MLPhase(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  LODWORD(result) = 0;
  if (a3 >= 0xFC)
  {
    v4 = a3 + 4;
    LODWORD(result) = 1;
    if (v4 >= 0xFF00)
    {
      LODWORD(result) = 2 * (v4 >= 0xFFFF00) + 2;
    }
  }

  if (a2 > 0xFB)
  {
    v5 = a2 - 252;
    v6 = (v5 >> 8) + 1;
    *a1 = v5;
    result = result;
    switch(result)
    {
      case 0:
        return result;
      case 1:
        a1[1] = v6;
        break;
      case 2:
        *(a1 + 1) = v6;
        break;
      case 3:
LABEL_16:
        BUG();
      case 4:
        *(a1 + 1) = v6;
        break;
    }
  }

  else
  {
    result = result;
    switch(result)
    {
      case 0:
        goto LABEL_11;
      case 1:
        a1[1] = 0;
        goto LABEL_11;
      case 2:
        *(a1 + 1) = 0;
        goto LABEL_11;
      case 3:
        goto LABEL_16;
      case 4:
        *(a1 + 1) = 0;
LABEL_11:
        if (a2)
        {
          *a1 = a2 + 4;
        }

        break;
    }
  }

  return result;
}

Swift::Int MLBoundingBoxUnits.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)(0);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type MLBoundingBoxUnits and conformance MLBoundingBoxUnits()
{
  result = lazy protocol witness table cache variable for type MLBoundingBoxUnits and conformance MLBoundingBoxUnits;
  if (!lazy protocol witness table cache variable for type MLBoundingBoxUnits and conformance MLBoundingBoxUnits)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLBoundingBoxUnits, &type metadata for MLBoundingBoxUnits);
    lazy protocol witness table cache variable for type MLBoundingBoxUnits and conformance MLBoundingBoxUnits = result;
  }

  return result;
}

uint64_t Column<A>.parseAsJSONArrays()()
{
  return Column<A>.parseAsJSONArrays()(&demangling cache variable for type metadata for Column<String>, closure #1 in Column<A>.parseAsJSONArrays());
}

{
  return Column<A>.parseAsJSONArrays()(&demangling cache variable for type metadata for Column<Data>, closure #1 in Column<A>.parseAsJSONArrays());
}

void *AnyColumn.convertedToFloats()()
{
  v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v60 = *(v61 - 8);
  v0 = *(v60 + 64);
  v1 = alloca(v0);
  v2 = alloca(v0);
  v62 = v49;
  v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Float>);
  v57 = *(v58 - 8);
  v3 = *(v57 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v59 = v49;
  v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v55 = *(v56 - 8);
  v6 = *(v55 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v50 = v49;
  v53 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int64>);
  v54 = *(v53 - 8);
  v9 = *(v54 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v51 = v49;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int32>);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v52 = v49;
  v63 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int8>);
  v64 = *(v63 - 8);
  v17 = *(v64 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v20 = AnyColumn.wrappedElementType.getter(&demangling cache variable for type metadata for Column<Int8>);
  if (swift_dynamicCastMetatype(v20, &type metadata for Int8))
  {
    AnyColumn.assumingType<A>(_:)(&type metadata for Int8, &type metadata for Int8);
    v21 = AnyColumn.count.getter();
    v22 = alloca(24);
    v23 = alloca(32);
    v50 = v49;
    v24 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5Tm(v21, partial apply for closure #1 in AnyColumn.convertedToFloats(), v49, &type metadata for Float);
    v25 = v49;
    v26 = v63;
    v27 = v64;
  }

  else
  {
    v28 = v52;
    v64 = v12;
    v63 = v13;
    v29 = v51;
    v30 = v50;
    if (swift_dynamicCastMetatype(v20, &type metadata for Int32))
    {
      AnyColumn.assumingType<A>(_:)(&type metadata for Int32, &type metadata for Int32);
      v31 = AnyColumn.count.getter();
      v32 = alloca(24);
      v33 = alloca(32);
      v50 = v28;
      v24 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5Tm(v31, partial apply for closure #2 in AnyColumn.convertedToFloats(), v49, &type metadata for Float);
      v25 = v28;
      v26 = v64;
      v27 = v63;
    }

    else if (swift_dynamicCastMetatype(v20, &type metadata for Int64))
    {
      AnyColumn.assumingType<A>(_:)(&type metadata for Int64, &type metadata for Int64);
      v34 = AnyColumn.count.getter();
      v35 = alloca(24);
      v36 = alloca(32);
      v50 = v29;
      v24 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5Tm(v34, partial apply for closure #3 in AnyColumn.convertedToFloats(), v49, &type metadata for Float);
      v25 = v29;
      v26 = v53;
      v27 = v54;
    }

    else if (swift_dynamicCastMetatype(v20, &type metadata for Int))
    {
      AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
      v37 = AnyColumn.count.getter();
      v38 = alloca(24);
      v39 = alloca(32);
      v50 = v30;
      v24 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5Tm(v37, partial apply for closure #4 in AnyColumn.convertedToFloats(), v49, &type metadata for Float);
      v25 = v30;
      v26 = v56;
      v27 = v55;
    }

    else if (swift_dynamicCastMetatype(v20, &type metadata for Float))
    {
      v40 = v59;
      AnyColumn.assumingType<A>(_:)(&type metadata for Float, &type metadata for Float);
      v41 = AnyColumn.count.getter();
      v42 = alloca(24);
      v43 = alloca(32);
      v50 = v40;
      v24 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5Tm(v41, partial apply for closure #5 in AnyColumn.convertedToFloats(), v49, &type metadata for Float);
      v25 = v40;
      v26 = v58;
      v27 = v57;
    }

    else
    {
      if (!swift_dynamicCastMetatype(v20, &type metadata for Double))
      {
        return 0;
      }

      v44 = v62;
      AnyColumn.assumingType<A>(_:)(&type metadata for Double, &type metadata for Double);
      v45 = AnyColumn.count.getter();
      v46 = alloca(24);
      v47 = alloca(32);
      v50 = v44;
      v24 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5Tm(v45, partial apply for closure #6 in AnyColumn.convertedToFloats(), v49, &type metadata for Float);
      v25 = v44;
      v26 = v61;
      v27 = v60;
    }
  }

  (*(v27 + 8))(v25, v26);
  return v24;
}

void *AnyColumn.convertedToDoubles()()
{
  v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v60 = *(v61 - 8);
  v0 = *(v60 + 64);
  v1 = alloca(v0);
  v2 = alloca(v0);
  v62 = v49;
  v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Float>);
  v57 = *(v58 - 8);
  v3 = *(v57 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v59 = v49;
  v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v55 = *(v56 - 8);
  v6 = *(v55 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v50 = v49;
  v53 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int64>);
  v54 = *(v53 - 8);
  v9 = *(v54 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v51 = v49;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int32>);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v52 = v49;
  v63 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int8>);
  v64 = *(v63 - 8);
  v17 = *(v64 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v20 = AnyColumn.wrappedElementType.getter(&demangling cache variable for type metadata for Column<Int8>);
  if (swift_dynamicCastMetatype(v20, &type metadata for Int8))
  {
    AnyColumn.assumingType<A>(_:)(&type metadata for Int8, &type metadata for Int8);
    v21 = AnyColumn.count.getter();
    v22 = alloca(24);
    v23 = alloca(32);
    v50 = v49;
    v24 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5Tm(v21, partial apply for closure #1 in AnyColumn.convertedToDoubles(), v49, &type metadata for Double);
    v25 = v49;
    v26 = v63;
    v27 = v64;
  }

  else
  {
    v28 = v52;
    v64 = v12;
    v63 = v13;
    v29 = v51;
    v30 = v50;
    if (swift_dynamicCastMetatype(v20, &type metadata for Int32))
    {
      AnyColumn.assumingType<A>(_:)(&type metadata for Int32, &type metadata for Int32);
      v31 = AnyColumn.count.getter();
      v32 = alloca(24);
      v33 = alloca(32);
      v50 = v28;
      v24 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5Tm(v31, partial apply for closure #2 in AnyColumn.convertedToDoubles(), v49, &type metadata for Double);
      v25 = v28;
      v26 = v64;
      v27 = v63;
    }

    else if (swift_dynamicCastMetatype(v20, &type metadata for Int64))
    {
      AnyColumn.assumingType<A>(_:)(&type metadata for Int64, &type metadata for Int64);
      v34 = AnyColumn.count.getter();
      v35 = alloca(24);
      v36 = alloca(32);
      v50 = v29;
      v24 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5Tm(v34, partial apply for closure #3 in AnyColumn.convertedToDoubles(), v49, &type metadata for Double);
      v25 = v29;
      v26 = v53;
      v27 = v54;
    }

    else if (swift_dynamicCastMetatype(v20, &type metadata for Int))
    {
      AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
      v37 = AnyColumn.count.getter();
      v38 = alloca(24);
      v39 = alloca(32);
      v50 = v30;
      v24 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5Tm(v37, partial apply for closure #4 in AnyColumn.convertedToDoubles(), v49, &type metadata for Double);
      v25 = v30;
      v26 = v56;
      v27 = v55;
    }

    else if (swift_dynamicCastMetatype(v20, &type metadata for Float))
    {
      v40 = v59;
      AnyColumn.assumingType<A>(_:)(&type metadata for Float, &type metadata for Float);
      v41 = AnyColumn.count.getter();
      v42 = alloca(24);
      v43 = alloca(32);
      v50 = v40;
      v24 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5Tm(v41, partial apply for closure #5 in AnyColumn.convertedToDoubles(), v49, &type metadata for Double);
      v25 = v40;
      v26 = v58;
      v27 = v57;
    }

    else
    {
      if (!swift_dynamicCastMetatype(v20, &type metadata for Double))
      {
        return 0;
      }

      v44 = v62;
      AnyColumn.assumingType<A>(_:)(&type metadata for Double, &type metadata for Double);
      v45 = AnyColumn.count.getter();
      v46 = alloca(24);
      v47 = alloca(32);
      v50 = v44;
      v24 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5Tm(v45, partial apply for closure #6 in AnyColumn.convertedToDoubles(), v49, &type metadata for Double);
      v25 = v44;
      v26 = v61;
      v27 = v60;
    }
  }

  (*(v27 + 8))(v25, v26);
  return v24;
}

uint64_t AnyColumn.convertedToDoubleArrays()()
{
  v68 = v0;
  v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
  v64 = *(v65 - 8);
  v1 = *(v64 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v66 = v53;
  v62 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int]>);
  v61 = *(v62 - 8);
  v4 = *(v61 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v63 = v53;
  v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int64]>);
  v58 = *(v59 - 8);
  v7 = *(v58 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v60 = v53;
  v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int32]>);
  v57 = *(v55 - 8);
  v10 = *(v57 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v56 = v53;
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int8]>);
  v54 = *(v13 - 8);
  v14 = *(v54 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v17 = AnyColumn.wrappedElementType.getter(&demangling cache variable for type metadata for Column<[Int8]>);
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int8]);
  v67 = v17;
  if (swift_dynamicCastMetatype(v17, v18))
  {
    AnyColumn.assumingType<A>(_:)(v18, v18);
    v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
    v20 = v68;
    Column.mapNonNil<A>(_:)(closure #1 in AnyColumn.convertedToDoubleArrays(), 0, v13, v19);
    v21 = v53;
    v22 = v13;
    v23 = v54;
LABEL_3:
    (*(v23 + 8))(v21, v22);
    v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
    v25 = v20;
    return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
  }

  v26 = v56;
  v27 = v55;
  v28 = v68;
  v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int32]);
  if (swift_dynamicCastMetatype(v67, v29))
  {
    AnyColumn.assumingType<A>(_:)(v29, v29);
    v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
    Column.mapNonNil<A>(_:)(closure #2 in AnyColumn.convertedToDoubleArrays(), 0, v27, v30);
    (*(v57 + 8))(v26, v27);
    v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
    v25 = v28;
    return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
  }

  v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int64]);
  if (swift_dynamicCastMetatype(v67, v31))
  {
    v32 = v60;
    AnyColumn.assumingType<A>(_:)(v31, v31);
    v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
    v34 = v68;
    v35 = v59;
    Column.mapNonNil<A>(_:)(closure #3 in AnyColumn.convertedToDoubleArrays(), 0, v59, v33);
    v36 = v32;
    v37 = v35;
    v38 = v58;
LABEL_10:
    (*(v38 + 8))(v36, v37);
    v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
    v25 = v34;
    return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
  }

  v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
  if (swift_dynamicCastMetatype(v67, v39))
  {
    v34 = v68;
    v40 = v63;
    AnyColumn.assumingType<A>(_:)(v39, v39);
    v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
    v42 = v62;
    Column.mapNonNil<A>(_:)(closure #4 in AnyColumn.convertedToDoubleArrays(), 0, v62, v41);
    v36 = v40;
    v37 = v42;
    v38 = v61;
    goto LABEL_10;
  }

  v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  if (swift_dynamicCastMetatype(v67, v44))
  {
    v45 = v66;
    AnyColumn.assumingType<A>(_:)(v44, v44);
    v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
    v20 = v68;
    v47 = v65;
    Column.mapNonNil<A>(_:)(closure #5 in AnyColumn.convertedToDoubleArrays(), 0, v65, v46);
    v21 = v45;
    v22 = v47;
    v23 = v64;
    goto LABEL_3;
  }

  v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  if (swift_dynamicCastMetatype(v67, v48))
  {
    v49 = v68;
    AnyColumn.assumingType<A>(_:)(v48, v48);
    v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
    v51 = v49;
    v52 = 0;
  }

  else
  {
    v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
    v51 = v68;
    v52 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v51, v52, 1, v50);
}