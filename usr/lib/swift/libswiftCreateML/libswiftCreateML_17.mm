Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> TreeClassifierTrainingSessionDelegate.resume(from:)(Swift::OpaquePointer from)
{
  v96 = v1;
  v103 = v2;
  rawValue = from._rawValue;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyTreeClassifierModel?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v93 = &v84;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v91 = &v84;
  v8 = *(*(type metadata accessor for BoostedTreeConfiguration(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v95 = &v84;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyTreeClassifier?) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v92 = &v84;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v90 = &v84;
  v16 = alloca(v11);
  v17 = alloca(v11);
  v94 = &v84;
  v87 = type metadata accessor for AnyColumn(0);
  v88 = *(v87 - 8);
  v18 = *(v88 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v89 = &v84;
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v86 = &v84;
  v100 = type metadata accessor for MLCheckpoint(0);
  v24 = *(*(v100 - 8) + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v99 = &v84;
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?) - 8) + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v30 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v31 = *(*(v30 - 8) + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v34 = &v84;
  v35 = v103 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v103 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters, v85, 0, 0);
  v36 = v35;
  v37 = v30;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, &v84, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  if (__swift_getEnumTagSinglePayload(&v84, 1, v30) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v84, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
    BUG();
  }

  outlined init with take of MLClassifierMetrics(&v84, &v84, type metadata accessor for PersistentParametersForTreeBasedMethods);
  v38 = v86;
  specialized BidirectionalCollection.last.getter(rawValue);
  if (__swift_getEnumTagSinglePayload(v38, 1, v100) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v38, &demangling cache variable for type metadata for MLCheckpoint?);
    v39 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v39, 0, 0);
    *v40 = 0xD00000000000001DLL;
    *(v40 + 8) = "reated." + 0x8000000000000000;
    *(v40 + 16) = 0;
    *(v40 + 32) = 0;
    *(v40 + 48) = 0;
    swift_willThrow();
LABEL_17:
    outlined destroy of MLActivityClassifier.ModelParameters(v34, type metadata accessor for PersistentParametersForTreeBasedMethods);
    return;
  }

  v102 = &v84;
  v41 = 0xEB0000000064657ALL;
  v42 = v38;
  v43 = v99;
  outlined init with take of MLClassifierMetrics(v42, v99, type metadata accessor for MLCheckpoint);
  switch(*(v43 + *(v100 + 20)))
  {
    case 0:
      v44 = 0x696C616974696E69;
      break;
    case 1:
      v44 = 0x6974636172747865;
      goto LABEL_10;
    case 2:
      0;
      v45 = v103;
      goto LABEL_12;
    case 3:
      v44 = 0x697461756C617665;
LABEL_10:
      v41 = 0xEA0000000000676ELL;
      break;
    case 4:
      v41 = 0xEB00000000676E69;
      v44 = 0x636E657265666E69;
      break;
  }

  v45 = v103;
  v46 = _stringCompareWithSmolCheck(_:_:expecting:)(v44, v41, 0x676E696E69617274, 0xE800000000000000, 0);
  v41;
  if ((v46 & 1) == 0)
  {
    v70 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v70, 0, 0);
    *v71 = 0xD000000000000028;
    *(v71 + 8) = "" + 0x8000000000000000;
    *(v71 + 16) = 0;
    *(v71 + 32) = 0;
    *(v71 + 48) = 0;
    swift_willThrow();
    outlined destroy of MLActivityClassifier.ModelParameters(v99, type metadata accessor for MLCheckpoint);
    v34 = v102;
    goto LABEL_17;
  }

LABEL_12:
  v47 = v45 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingData;
  v98 = v37;
  swift_beginAccess(v45 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingData, v97, 33, 0);
  v48 = type metadata accessor for DataFrame(0);
  v49 = v102;
  (*(*(v48 - 8) + 24))(v47, v102, v48);
  swift_endAccess(v97);
  v50 = *(v37 + 20) + v49;
  v51 = v45 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationData;
  swift_beginAccess(v51, v97, 33, 0);
  outlined assign with copy of DataFrame?(v50, v51);
  swift_endAccess(v97);
  v52 = *(v98 + 24);
  v53 = *(v49 + v52);
  v54 = *(v49 + v52 + 8);
  swift_beginAccess(v47, v97, 32, 0);
  v55 = v89;
  v100 = v53;
  DataFrame.subscript.getter(v53, v54);
  swift_endAccess(v97);
  v56 = AnyColumn.wrappedElementType.getter(v97);
  (*(v88 + 8))(v55, v87);
  if (swift_dynamicCastMetatype(v56, &type metadata for String))
  {
    rawValue = specialized _setUpCast<A, B>(_:)(&_swiftEmptySetSingleton);
    v57 = *(v102 + *(v98 + 28));

    v58 = v95;
    BoostedTreeConfiguration.init()(v57);
    v59 = v94;
    AnyTreeClassifier.init(labels:annotationColumnName:featureColumnNames:configuration:)(rawValue, v100, v54, v57, v58);
    v60 = type metadata accessor for AnyTreeClassifier(0);
    __swift_storeEnumTagSinglePayload(v59, 0, 1, v60);
    v61 = v103 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier;
    swift_beginAccess(v103 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier, v97, 33, 0);
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v59, v61, &demangling cache variable for type metadata for AnyTreeClassifier?);
    swift_endAccess(v97);
    v62 = v90;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v61, v90, &demangling cache variable for type metadata for AnyTreeClassifier?);
    if (__swift_getEnumTagSinglePayload(v62, 1, v60) == 1)
    {
      BUG();
    }

    v63 = lazy protocol witness table accessor for type AnyTreeClassifier and conformance AnyTreeClassifier();
    v64 = v91;
    v65 = v99;
    v66 = v96;
    SupervisedTabularEstimator.read(from:)(v99, v60, v63);
    outlined destroy of MLActivityClassifier.ModelParameters(v65, type metadata accessor for MLCheckpoint);
    outlined destroy of MLActivityClassifier.ModelParameters(v102, type metadata accessor for PersistentParametersForTreeBasedMethods);
    outlined destroy of MLActivityClassifier.ModelParameters(v62, type metadata accessor for AnyTreeClassifier);
    if (!v66)
    {
      v67 = type metadata accessor for AnyTreeClassifierModel(0);
      __swift_storeEnumTagSinglePayload(v64, 0, 1, v67);
      v68 = v64;
      v69 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model + v103;
LABEL_23:
      swift_beginAccess(v69, v97, 33, 0);
      outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v68, v69, &demangling cache variable for type metadata for AnyTreeClassifierModel?);
      swift_endAccess(v97);
    }
  }

  else
  {
    v72 = v98;
    if (!swift_dynamicCastMetatype(v56, &type metadata for Int))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001ELL, ("essionDelegate.swift" + 0x8000000000000000), "CreateML/TreeClassifierTrainingSessionDelegate.swift", 52, 2, 142, 0);
      BUG();
    }

    rawValue = specialized _setUpCast<A, B>(_:)(&_swiftEmptySetSingleton);
    v73 = *(v102 + *(v72 + 28));

    v74 = v95;
    BoostedTreeConfiguration.init()(v73);
    v75 = v94;
    AnyTreeClassifier.init(labels:annotationColumnName:featureColumnNames:configuration:)(rawValue, v100, v54, v73, v74);
    v76 = type metadata accessor for AnyTreeClassifier(0);
    __swift_storeEnumTagSinglePayload(v75, 0, 1, v76);
    v77 = v103 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier;
    swift_beginAccess(v103 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier, v97, 33, 0);
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v75, v77, &demangling cache variable for type metadata for AnyTreeClassifier?);
    swift_endAccess(v97);
    v78 = v92;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v77, v92, &demangling cache variable for type metadata for AnyTreeClassifier?);
    if (__swift_getEnumTagSinglePayload(v78, 1, v76) == 1)
    {
      BUG();
    }

    v79 = lazy protocol witness table accessor for type AnyTreeClassifier and conformance AnyTreeClassifier();
    v80 = v93;
    v81 = v99;
    v82 = v96;
    SupervisedTabularEstimator.read(from:)(v99, v76, v79);
    outlined destroy of MLActivityClassifier.ModelParameters(v81, type metadata accessor for MLCheckpoint);
    outlined destroy of MLActivityClassifier.ModelParameters(v102, type metadata accessor for PersistentParametersForTreeBasedMethods);
    outlined destroy of MLActivityClassifier.ModelParameters(v78, type metadata accessor for AnyTreeClassifier);
    if (!v82)
    {
      v83 = type metadata accessor for AnyTreeClassifierModel(0);
      __swift_storeEnumTagSinglePayload(v80, 0, 1, v83);
      v69 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model + v103;
      v68 = v80;
      goto LABEL_23;
    }
  }
}

Swift::Int_optional __swiftcall TreeClassifierTrainingSessionDelegate.itemCount(phase:)(CreateML::MLPhase phase)
{
  if (*phase == 2)
  {
    v2 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_sessionParameters + v1;
    v3 = 0;
    v4.value = *(*(type metadata accessor for MLTrainingSessionParameters(0) + 28) + v2);
  }

  else
  {
    v3 = 1;
    v4.value = 0;
  }

  v4.is_nil = v3;
  return v4;
}

uint64_t TreeClassifierTrainingSessionDelegate.train(from:)(uint64_t a1)
{
  v2[20] = v1;
  v2[19] = a1;
  v3 = type metadata accessor for MetricsKey(0);
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v2[23] = swift_task_alloc((*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DataFrame(0);
  v2[24] = v5;
  v6 = *(v5 - 8);
  v2[25] = v6;
  v2[26] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyTreeClassifier?);
  v2[27] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  v2[28] = swift_task_alloc((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyTreeClassifierModel?);
  v2[29] = swift_task_alloc((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(TreeClassifierTrainingSessionDelegate.train(from:), 0, 0);
}

uint64_t TreeClassifierTrainingSessionDelegate.train(from:)()
{
  v1 = *(v0 + 232);
  v2 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model;
  *(v0 + 240) = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model;
  v3 = *(v0 + 160) + v2;
  swift_beginAccess(v3, v0 + 16, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v3, v1, &demangling cache variable for type metadata for AnyTreeClassifierModel?);
  v4 = type metadata accessor for AnyTreeClassifierModel(0);
  *(v0 + 248) = v4;
  LODWORD(v3) = __swift_getEnumTagSinglePayload(v1, 1, v4);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &demangling cache variable for type metadata for AnyTreeClassifierModel?);
  if (v3 == 1)
  {
    BUG();
  }

  v5 = *(v0 + 224);
  v6 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters + *(v0 + 160);
  swift_beginAccess(v6, v0 + 40, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v6, v5, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  v7 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  LODWORD(v6) = __swift_getEnumTagSinglePayload(v5, 1, v7);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v5, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  if (v6 == 1)
  {
    BUG();
  }

  v8 = *(v0 + 152);
  v9 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_sessionParameters + *(v0 + 160);
  v10 = type metadata accessor for MLTrainingSessionParameters(0);
  v11 = *(*(v10 + 20) + v9);
  *(v0 + 144) = __OFADD__(v11, v8);
  *(v0 + 136) = v11 + v8;
  if (__OFADD__(v11, v8))
  {
    BUG();
  }

  v12 = *(v9 + *(v10 + 28));
  *(v0 + 256) = v12;
  v13 = __OFSUB__(v12, v8);
  v14 = v12 - v8;
  if (v13)
  {
    BUG();
  }

  if (v11 < v14)
  {
    v14 = v11;
  }

  *(v0 + 264) = v14;
  v15 = type metadata accessor for EventCollector();
  swift_allocObject(v15, 32, 7);
  *(v0 + 272) = EventCollector.init()();
  if (v14 < 0)
  {
    BUG();
  }

  if (v14)
  {
    v16 = *(v0 + 160);
    v17 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier;
    *(v0 + 280) = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier;
    v18 = v16 + v17;
    v19 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingData;
    *(v0 + 288) = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingData;
    v20 = v19 + v16;
    swift_beginAccess(v18, v0 + 64, 0, 0);
    swift_beginAccess(v20, v0 + 88, 0, 0);
    *(v0 + 296) = 0;
    v21 = *(v0 + 216);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 280) + *(v0 + 160), v21, &demangling cache variable for type metadata for AnyTreeClassifier?);
    v22 = type metadata accessor for AnyTreeClassifier(0);
    if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
    {
      BUG();
    }

    v23 = *(v0 + 248);
    v24 = *(v0 + 160);
    v25 = v24 + *(v0 + 288);
    v26 = *(v0 + 240) + v24;
    (*(*(v0 + 200) + 16))(*(v0 + 208), v25, *(v0 + 192));
    swift_beginAccess(v26, v0 + 112, 33, 0);
    if (__swift_getEnumTagSinglePayload(v26, 1, v23) == 1)
    {
      BUG();
    }

    v27 = *(v0 + 272);
    v28 = *(v0 + 240) + *(v0 + 160);

    v29 = swift_task_alloc(128);
    *(v0 + 304) = v29;
    *v29 = v0;
    v29[1] = TreeClassifierTrainingSessionDelegate.train(from:);
    return AnyTreeClassifier.update(_:with:eventHandler:)(v28, *(v0 + 208), partial apply for closure #1 in TreeClassifierTrainingSessionDelegate.train(from:), v27);
  }

  else
  {
    v31 = *(v0 + 184);
    v51 = *(v0 + 168);
    v32 = *(v0 + 176);
    static MetricsKey.trainingAccuracy.getter();
    ML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5 = _s8CreateML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5(v31);
    v35 = v34;
    v36 = *(v32 + 8);
    v37 = v31;
    v36(v31, v51);
    v49 = v36;
    if ((v35 & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
      v37 = 3;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(3, isUniquelyReferenced_nonNull_native, *&ML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5);
    }

    v39 = *(v0 + 168);
    v40 = *(v0 + 184);
    static MetricsKey.trainingLoss.getter(v37);
    v52 = _s8CreateML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5(v40);
    v42 = v41;
    v49(v40, v39);
    if ((v42 & 1) == 0)
    {
      v43 = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, v43, *&v52);
    }

    v44 = *(v0 + 232);
    v48 = *(v0 + 224);
    v47 = *(v0 + 216);
    v46 = *(v0 + 208);
    v53 = *(v0 + 184);
    v45 = *(v0 + 136) >= *(v0 + 256);
    v50 = specialized _dictionaryUpCast<A, B, C, D>(_:)(_swiftEmptyDictionarySingleton);

    _swiftEmptyDictionarySingleton;
    v44;
    v48;
    v47;
    v46;
    v53;
    return (*(v0 + 8))(*(v0 + 264), v50, v45);
  }
}

{
  v3 = *(*v1 + 304);
  v2 = *v1;
  *(*v1 + 312) = v0;
  v3;
  if (v0)
  {
    v4 = TreeClassifierTrainingSessionDelegate.train(from:);
  }

  else
  {
    v5 = (v2 + 14);
    v10 = v2[27];
    v6 = v2[26];
    v7 = v2[24];
    v8 = v2[25];
    swift_endAccess(v5);

    (*(v8 + 8))(v6, v7);
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for AnyTreeClassifier);
    v4 = TreeClassifierTrainingSessionDelegate.train(from:);
  }

  return swift_task_switch(v4, 0, 0);
}

{
  v1 = *(v0 + 296) + 1;
  if (v1 == *(v0 + 264))
  {
    v2 = *(v0 + 184);
    v32 = *(v0 + 168);
    v3 = *(v0 + 176);
    static MetricsKey.trainingAccuracy.getter();
    ML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5 = _s8CreateML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5(v2);
    v6 = v5;
    v7 = v2;
    v8 = v32;
    v33 = *(v3 + 8);
    v33(v2, v8);
    if ((v6 & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
      v7 = 3;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(3, isUniquelyReferenced_nonNull_native, *&ML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5);
    }

    v20 = *(v0 + 168);
    v21 = *(v0 + 184);
    static MetricsKey.trainingLoss.getter(v7);
    v30 = _s8CreateML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5(v21);
    v23 = v22;
    v33(v21, v20);
    if ((v23 & 1) == 0)
    {
      v24 = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, v24, *&v30);
    }

    v25 = *(v0 + 232);
    v29 = *(v0 + 224);
    v28 = *(v0 + 216);
    v27 = *(v0 + 208);
    v31 = *(v0 + 184);
    v26 = *(v0 + 136) >= *(v0 + 256);
    v34 = specialized _dictionaryUpCast<A, B, C, D>(_:)(_swiftEmptyDictionarySingleton);

    _swiftEmptyDictionarySingleton;
    v25;
    v29;
    v28;
    v27;
    v31;
    return (*(v0 + 8))(*(v0 + 264), v34, v26);
  }

  else
  {
    *(v0 + 296) = v1;
    v9 = *(v0 + 216);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 280) + *(v0 + 160), v9, &demangling cache variable for type metadata for AnyTreeClassifier?);
    v10 = type metadata accessor for AnyTreeClassifier(0);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      BUG();
    }

    v11 = *(v0 + 248);
    v12 = *(v0 + 160);
    v13 = v12 + *(v0 + 288);
    v14 = *(v0 + 240) + v12;
    (*(*(v0 + 200) + 16))(*(v0 + 208), v13, *(v0 + 192));
    swift_beginAccess(v14, v0 + 112, 33, 0);
    if (__swift_getEnumTagSinglePayload(v14, 1, v11) == 1)
    {
      BUG();
    }

    v15 = *(v0 + 272);
    v16 = *(v0 + 240) + *(v0 + 160);

    v17 = swift_task_alloc(128);
    *(v0 + 304) = v17;
    *v17 = v0;
    v17[1] = TreeClassifierTrainingSessionDelegate.train(from:);
    return AnyTreeClassifier.update(_:with:eventHandler:)(v16, *(v0 + 208), partial apply for closure #1 in TreeClassifierTrainingSessionDelegate.train(from:), v15);
  }
}

{
  v1 = *(v0 + 272);
  v8 = *(v0 + 232);
  v7 = *(v0 + 224);
  v2 = *(v0 + 216);
  v3 = *(v0 + 208);
  v9 = *(v0 + 200);
  v6 = *(v0 + 184);
  v4 = *(v0 + 192);
  swift_endAccess(v0 + 112);
  v1;
  (*(v9 + 8))(v3, v4);
  outlined destroy of MLActivityClassifier.ModelParameters(v2, type metadata accessor for AnyTreeClassifier);
  v8;
  v7;
  v2;
  v3;
  v6;
  return (*(v0 + 8))();
}

uint64_t TreeClassifierTrainingSessionDelegate.evaluate(from:)()
{
  v1[26] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  v1[27] = swift_task_alloc((*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = (*(*(type metadata accessor for AnyColumn(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1[28] = swift_task_alloc(v3);
  v1[29] = swift_task_alloc(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyClassificationMetrics?);
  v1[30] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DataFrame(0);
  v1[31] = v5;
  v6 = *(v5 - 8);
  v1[32] = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1[33] = swift_task_alloc(v7);
  v1[34] = swift_task_alloc(v7);
  v1[35] = swift_task_alloc(v7);
  v1[36] = swift_task_alloc(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyTreeClassifierModel?);
  v1[37] = swift_task_alloc((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AnyTreeClassifierModel(0);
  v1[38] = v9;
  v1[39] = swift_task_alloc((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(TreeClassifierTrainingSessionDelegate.evaluate(from:), 0, 0);
}

{
  v1 = *(v0 + 304);
  v2 = *(v0 + 296);
  v3 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model + *(v0 + 208);
  swift_beginAccess(v3, v0 + 16, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v3, v2, &demangling cache variable for type metadata for AnyTreeClassifierModel?);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 296), &demangling cache variable for type metadata for AnyTreeClassifierModel?);
LABEL_5:
    v55 = 0;
    goto LABEL_6;
  }

  v4 = *(v0 + 208);
  outlined init with take of MLClassifierMetrics(*(v0 + 296), *(v0 + 312), type metadata accessor for AnyTreeClassifierModel);
  v5 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters + v4;
  swift_beginAccess(v5, v0 + 40, 0, 0);
  v6 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6))
  {
    outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 312), type metadata accessor for AnyTreeClassifierModel);
    goto LABEL_5;
  }

  v52 = *(v0 + 280);
  v46 = *(v0 + 256);
  v49 = *(v0 + 248);
  v12 = *(v6 + 24);
  v41 = *(v5 + v12);
  v13 = *(v5 + v12 + 8);
  v14 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingData + *(v0 + 208);
  swift_beginAccess(v14, v0 + 64, 0, 0);
  (*(v46 + 16))(v52, v14, v49);

  AnyTreeClassifierModel.applied(to:eventHandler:)(v52, 0, 0);
  v53 = *(v0 + 248);
  v32 = *(v0 + 240);
  v44 = v13;
  v35 = *(v0 + 232);
  v56 = *(v0 + 224);
  v30 = *(v0 + 208);
  v38 = *(v0 + 216);
  v47 = *(*(v0 + 256) + 8);
  (v47)(*(v0 + 280));
  DataFrame.subscript.getter(v41, v13);
  swift_beginAccess(v14, v0 + 88, 32, 0);
  DataFrame.subscript.getter(v41, v13);
  swift_endAccess(v0 + 88);
  AnyClassificationMetrics.init(_:_:)(v35, v56);
  v57 = type metadata accessor for AnyClassificationMetrics(0);
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v57);
  v15 = v30 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingMetrics;
  swift_beginAccess(v30 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingMetrics, v0 + 112, 33, 0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v32, v15, &demangling cache variable for type metadata for AnyClassificationMetrics?);
  swift_endAccess(v0 + 112);
  v16 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationData + v30;
  swift_beginAccess(OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationData + v30, v0 + 136, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v16, v38, &demangling cache variable for type metadata for DataFrame?);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38, 1, v53);
  v18 = *(v0 + 312);
  if (EnumTagSinglePayload == 1)
  {
    v19 = *(v0 + 288);
    v20 = *(v0 + 248);
    v50 = *(v0 + 240);
    v21 = *(v0 + 208);
    v42 = *(v0 + 216);
    v44;
    v47(v19, v20);
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for AnyTreeClassifierModel);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v42, &demangling cache variable for type metadata for DataFrame?);
    __swift_storeEnumTagSinglePayload(v50, 1, 1, v57);
    v22 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics + v21;
    v23 = v0 + 160;
    swift_beginAccess(v22, v0 + 160, 33, 0);
    v24 = v50;
    v25 = v22;
  }

  else
  {
    v26 = *(v0 + 272);
    (*(*(v0 + 256) + 32))(v26, *(v0 + 216), *(v0 + 248));
    AnyTreeClassifierModel.applied(to:eventHandler:)(v26, 0, 0);
    v29 = *(v0 + 312);
    v31 = *(v0 + 288);
    v54 = *(v0 + 272);
    v36 = *(v0 + 264);
    v33 = *(v0 + 248);
    v34 = *(v0 + 240);
    v37 = *(v0 + 232);
    v39 = *(v0 + 208);
    v27 = *(v0 + 224);
    DataFrame.subscript.getter(v41, v44);
    DataFrame.subscript.getter(v41, v44);
    v44;
    AnyClassificationMetrics.init(_:_:)(v37, v27);
    v47(v36, v33);
    v47(v54, v33);
    v47(v31, v33);
    outlined destroy of MLActivityClassifier.ModelParameters(v29, type metadata accessor for AnyTreeClassifierModel);
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v57);
    v28 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics + v39;
    v23 = v0 + 184;
    swift_beginAccess(OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics + v39, v0 + 184, 33, 0);
    v24 = v34;
    v25 = v28;
  }

  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v24, v25, &demangling cache variable for type metadata for AnyClassificationMetrics?);
  swift_endAccess(v23);
  v55 = 1;
LABEL_6:
  v7 = *(v0 + 296);
  v8 = *(v0 + 288);
  v9 = *(v0 + 280);
  v10 = *(v0 + 272);
  v43 = *(v0 + 264);
  v40 = *(v0 + 240);
  v48 = *(v0 + 232);
  v45 = *(v0 + 216);
  v51 = *(v0 + 224);
  *(v0 + 312);
  v7;
  v8;
  v9;
  v10;
  v43;
  v40;
  v48;
  v51;
  v45;
  return (*(v0 + 8))(v55, 1);
}

char TreeClassifierTrainingSessionDelegate.saveCheckpoint(to:phase:iteration:)(uint64_t a1, unsigned __int8 *a2)
{
  v32 = v2;
  v30 = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyTreeClassifier?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v28 = v25;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyTreeClassifierModel?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = type metadata accessor for AnyTreeClassifierModel(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v27 = v25;
  v31 = *a2;
  v29 = v3;
  v14 = v3 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model;
  swift_beginAccess(v3 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model, v25, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v14, v25, &demangling cache variable for type metadata for AnyTreeClassifierModel?);
  if (__swift_getEnumTagSinglePayload(v25, 1, v10) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v25, &demangling cache variable for type metadata for AnyTreeClassifierModel?);
    return 0;
  }

  v15 = 0xEB0000000064657ALL;
  v16 = v27;
  outlined init with take of MLClassifierMetrics(v25, v27, type metadata accessor for AnyTreeClassifierModel);
  switch(v31)
  {
    case 0:
      v17 = 0x696C616974696E69;
      break;
    case 1:
      v17 = 0x6974636172747865;
      goto LABEL_9;
    case 2:
      0;
      goto LABEL_11;
    case 3:
      v17 = 0x697461756C617665;
LABEL_9:
      v15 = 0xEA0000000000676ELL;
      break;
    case 4:
      v15 = 0xEB00000000676E69;
      v17 = 0x636E657265666E69;
      break;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)(v17, v15, 0x676E696E69617274, 0xE800000000000000, 0);
  v15;
  if ((v18 & 1) == 0)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for AnyTreeClassifierModel);
    return 0;
  }

LABEL_11:
  v19 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier + v29;
  swift_beginAccess(OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier + v29, v26, 0, 0);
  v20 = v28;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, v28, &demangling cache variable for type metadata for AnyTreeClassifier?);
  v21 = type metadata accessor for AnyTreeClassifier(0);
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    BUG();
  }

  v22 = lazy protocol witness table accessor for type AnyTreeClassifier and conformance AnyTreeClassifier();
  v23 = v32;
  SupervisedTabularEstimator.write(_:to:overwrite:)(v16, v30, 1, v21, v22);
  outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for AnyTreeClassifierModel);
  result = outlined destroy of MLActivityClassifier.ModelParameters(v20, type metadata accessor for AnyTreeClassifier);
  if (!v23)
  {
    return 1;
  }

  return result;
}

uint64_t TreeClassifierTrainingSessionDelegate.save(to:)(uint64_t a1)
{
  v16 = v1;
  v17 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters + v2;
  swift_beginAccess(v10, v15, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, &v14, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  if (__swift_getEnumTagSinglePayload(&v14, 1, v6) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v14, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
    v11 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v11, 0, 0);
    *v12 = 0xD000000000000031;
    *(v12 + 8) = "Selected features" + 0x8000000000000000;
    *(v12 + 16) = 0;
    *(v12 + 32) = 0;
    *(v12 + 48) = 2;
    return swift_willThrow();
  }

  else
  {
    outlined init with take of MLClassifierMetrics(&v14, &v14, type metadata accessor for PersistentParametersForTreeBasedMethods);
    PersistentParametersForTreeBasedMethods.save(toSessionDirectory:)(v17);
    return outlined destroy of MLActivityClassifier.ModelParameters(&v14, type metadata accessor for PersistentParametersForTreeBasedMethods);
  }
}

NSURL *TreeClassifierTrainingSessionDelegate.restore(from:phase:)(uint64_t a1)
{
  v36 = v1;
  v31 = v2;
  v30 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v33 = &v27;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v35 = &v27;
  v8 = type metadata accessor for URL(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v32 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v13 = *(*(v32 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v34 = &v27;
  v16 = alloca(v13);
  v17 = alloca(v13);
  (*(v9 + 16))(&v27, v30, v8);
  v18 = v36;
  result = PersistentParametersForTreeBasedMethods.init(sessionDirectory:)(&v27);
  if (!v18)
  {
    v36 = &v27;
    v20 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters + v31;
    swift_beginAccess(OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters + v31, v28, 0, 0);
    v21 = v35;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v20, v35, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
    v22 = v21;
    v23 = v32;
    if (__swift_getEnumTagSinglePayload(v22, 1, v32) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v35, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
      v24 = v33;
      outlined init with take of MLClassifierMetrics(v36, v33, type metadata accessor for PersistentParametersForTreeBasedMethods);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v23);
      swift_beginAccess(v20, v29, 33, 0);
      outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v24, v20, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
      return swift_endAccess(v29);
    }

    else
    {
      v25 = v34;
      outlined init with take of MLClassifierMetrics(v35, v34, type metadata accessor for PersistentParametersForTreeBasedMethods);
      v26 = v36;
      TreeClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:)(v36, v25);
      outlined destroy of MLActivityClassifier.ModelParameters(v25, type metadata accessor for PersistentParametersForTreeBasedMethods);
      return outlined destroy of MLActivityClassifier.ModelParameters(v26, type metadata accessor for PersistentParametersForTreeBasedMethods);
    }
  }

  return result;
}

uint64_t TreeClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:)(uint64_t a1, char *a2)
{
  v47 = v2;
  v4 = a1;
  v5 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v6 = *(v5 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = *&a2[v6];
  v46 = a2;
  v10 = *&a2[v6 + 8];
  v48 = a1;
  v49 = v5;
  if (v9 ^ v7 | v10 ^ v8 && (v11 = v7, v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v7, v8, v9, v10, 0), v5 = v49, v13 = v11, v4 = v48, (v12 & 1) == 0))
  {
    v42 = v9;
    v43 = v10;
    v48 = v8;
    v49 = v13;

    v20 = String.init<A>(_:)(&v42, &type metadata for String, &protocol witness table for String, &protocol witness table for String);
    v25 = v34;
    v35 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v47 = swift_allocError(&type metadata for MLCreateError, v35, 0, 0);
    v24 = 0xED00006E6D756C6FLL;
    v21 = 0x6320746567726154;
  }

  else
  {
    v14 = *(v4 + *(v5 + 28));

    v45 = v14;
    v15 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v14);
    v16 = *&v46[*(v5 + 28)];

    v44 = v16;
    v17 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v16);
    LOBYTE(v16) = v17;
    v18 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v15, v17);
    v15;
    v16;
    if (v18)
    {
      result = static BoostedTreeConfiguration.firstIncompatibility(_:_:)();
      if (!v37)
      {
        return result;
      }

      v20 = v40;
      v48 = v39;
      v21 = v36;
      v49 = v38;
      v22 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      v47 = swift_allocError(&type metadata for MLCreateError, v22, 0, 0);
      v24 = v37;
      v25 = v41;
    }

    else
    {
      v46 = "Classifier.swift" + 0x8000000000000000;

      v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
      v27 = lazy protocol witness table accessor for type [String] and conformance [A]();
      v49 = BidirectionalCollection<>.joined(separator:)(8236, 0xE200000000000000, v26, v27);
      v48 = v28;
      v45;

      v29 = BidirectionalCollection<>.joined(separator:)(8236, 0xE200000000000000, v26, v27);
      v31 = v30;
      v44;
      v42 = v29;
      v43 = v31;
      v20 = String.init<A>(_:)(&v42, &type metadata for String, &protocol witness table for String, &protocol witness table for String);
      v25 = v32;
      v33 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      v47 = swift_allocError(&type metadata for MLCreateError, v33, 0, 0);
      v24 = v46;
      v21 = 0xD000000000000011;
    }
  }

  *v23 = v21;
  *(v23 + 8) = v24;
  *(v23 + 16) = v49;
  *(v23 + 24) = v48;
  *(v23 + 32) = v20;
  *(v23 + 40) = v25;
  *(v23 + 48) = 3;
  return swift_willThrow();
}

char _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  result = 1;
  if (a1 == a2)
  {
    return result;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v31 = a2;
  v3 = 1 << *(a1 + 32);
  v4 = ~(-1 << v3);
  if (v3 >= 64)
  {
    v4 = -1;
  }

  v5 = *(a1 + 56) & v4;
  v32 = (v3 + 63) >> 6;
  v6 = 0;
  v28 = a1;
  while (1)
  {
    if (v5)
    {
      _BitScanForward64(&v7, v5);
      v30 = (v5 - 1) & v5;
      v29 = v6;
      v8 = v7 | (v6 << 6);
      goto LABEL_27;
    }

    v9 = v6 + 1;
    if (__OFADD__(1, v6))
    {
      BUG();
    }

    if (v9 >= v32)
    {
      return 1;
    }

    v10 = *(a1 + 8 * v9 + 56);
    if (!v10)
    {
      break;
    }

    v11 = v6 + 1;
LABEL_26:
    _BitScanForward64(&v13, v10);
    v30 = v10 & (v10 - 1);
    v8 = v13 | (v11 << 6);
    v29 = v11;
LABEL_27:
    v14 = *(a1 + 48);
    v15 = 16 * v8;
    v16 = *(v14 + v15);
    v17 = *(v14 + v15 + 8);
    v18 = v31;
    Hasher.init(_seed:)(*(v31 + 40));

    String.hash(into:)(v27, v16);
    v19 = Hasher._finalize()();
    v20 = ~(-1 << *(v18 + 32));
    v21 = v20 & v19;
    v22 = *(v18 + 8 * ((v20 & v19) >> 6) + 56);
    if (!_bittest64(&v22, v21))
    {
LABEL_35:
      v17;
      return 0;
    }

    v23 = *(v18 + 48);
    while (1)
    {
      v24 = *(v23 + 16 * v21);
      v25 = *(v23 + 16 * v21 + 8);
      if (v24 == v16 && v25 == v17)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)(v24, v25, v16, v17, 0))
      {
        break;
      }

      v21 = v20 & (v21 + 1);
      v26 = *(v31 + 8 * (v21 >> 6) + 56);
      if (!_bittest64(&v26, v21))
      {
        goto LABEL_35;
      }
    }

    v17;
    a1 = v28;
    v6 = v29;
    v5 = v30;
  }

  v11 = v6 + 2;
  if (v6 + 2 >= v32)
  {
    return 1;
  }

  v10 = *(a1 + 8 * v9 + 64);
  if (v10)
  {
    goto LABEL_26;
  }

  v11 = v6 + 3;
  if (v6 + 3 >= v32)
  {
    return 1;
  }

  v10 = *(a1 + 8 * v9 + 72);
  if (v10)
  {
    goto LABEL_26;
  }

  v11 = v6 + 4;
  if (v6 + 4 >= v32)
  {
    return 1;
  }

  v10 = *(a1 + 8 * v9 + 80);
  if (v10)
  {
    goto LABEL_26;
  }

  v11 = v6 + 5;
  if (v6 + 5 >= v32)
  {
    return 1;
  }

  v10 = *(a1 + 8 * v9 + 88);
  if (v10)
  {
    goto LABEL_26;
  }

  v11 = v6 + 6;
  if (v6 + 6 >= v32)
  {
    return 1;
  }

  v10 = *(a1 + 8 * v9 + 96);
  if (v10)
  {
    goto LABEL_26;
  }

  v12 = v6 + 7;
  result = 1;
  while (v12 < v32)
  {
    v10 = *(a1 + 8 * v12++ + 56);
    if (v10)
    {
      v11 = v12 - 1;
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t TreeClassifierTrainingSessionDelegate.deinit()
{
  outlined destroy of MLActivityClassifier.ModelParameters(v0 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  v1 = v0 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingData;
  v2 = type metadata accessor for DataFrame(0);
  (*(*(v2 - 8) + 8))(v1, v2);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationData, &demangling cache variable for type metadata for DataFrame?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier, &demangling cache variable for type metadata for AnyTreeClassifier?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model, &demangling cache variable for type metadata for AnyTreeClassifierModel?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingMetrics, &demangling cache variable for type metadata for AnyClassificationMetrics?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics, &demangling cache variable for type metadata for AnyClassificationMetrics?);
  return v0;
}

uint64_t type metadata accessor for TreeClassifierTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata singleton initialization cache for TreeClassifierTrainingSessionDelegate;
  if (!type metadata singleton initialization cache for TreeClassifierTrainingSessionDelegate)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for TreeClassifierTrainingSessionDelegate);
  }

  return result;
}

uint64_t type metadata completion function for TreeClassifierTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata accessor for MLTrainingSessionParameters(319);
  if (v2 <= 0x3F)
  {
    v9[0] = *(result - 8) + 64;
    result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for PersistentParametersForTreeBasedMethods?, type metadata accessor for PersistentParametersForTreeBasedMethods);
    if (v3 <= 0x3F)
    {
      v9[1] = *(result - 8) + 64;
      result = type metadata accessor for DataFrame(319);
      if (v4 <= 0x3F)
      {
        v9[2] = *(result - 8) + 64;
        result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for DataFrame?, &type metadata accessor for DataFrame);
        if (v5 <= 0x3F)
        {
          v9[3] = *(result - 8) + 64;
          result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for AnyTreeClassifier?, type metadata accessor for AnyTreeClassifier);
          if (v6 <= 0x3F)
          {
            v9[4] = *(result - 8) + 64;
            result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for AnyTreeClassifierModel?, type metadata accessor for AnyTreeClassifierModel);
            if (v7 <= 0x3F)
            {
              v9[5] = *(result - 8) + 64;
              result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for AnyClassificationMetrics?, type metadata accessor for AnyClassificationMetrics);
              if (v8 <= 0x3F)
              {
                v10 = *(result - 8) + 64;
                v11 = v10;
                result = swift_updateClassMetadata2(a1, 256, 8, v9, a1 + 80);
                if (!result)
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for TrainingSessionDelegate.train(from:) in conformance TreeClassifierTrainingSessionDelegate(uint64_t a1)
{
  v2 = swift_task_alloc(320);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for TrainingSessionDelegate.train(from:) in conformance SoundClassifierTrainingSessionDelegate;
  return TreeClassifierTrainingSessionDelegate.train(from:)(a1);
}

uint64_t protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance TreeClassifierTrainingSessionDelegate()
{
  v1 = swift_task_alloc(320);
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance SoundClassifierTrainingSessionDelegate;
  return TreeClassifierTrainingSessionDelegate.evaluate(from:)();
}

uint64_t lazy protocol witness table accessor for type AnyTreeClassifier and conformance AnyTreeClassifier()
{
  result = lazy protocol witness table cache variable for type AnyTreeClassifier and conformance AnyTreeClassifier;
  if (!lazy protocol witness table cache variable for type AnyTreeClassifier and conformance AnyTreeClassifier)
  {
    v1 = type metadata accessor for AnyTreeClassifier(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for AnyTreeClassifier, v1);
    lazy protocol witness table cache variable for type AnyTreeClassifier and conformance AnyTreeClassifier = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyTreeClassifier and conformance AnyTreeClassifier;
  if (!lazy protocol witness table cache variable for type AnyTreeClassifier and conformance AnyTreeClassifier)
  {
    v1 = type metadata accessor for AnyTreeClassifier(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for AnyTreeClassifier, v1);
    lazy protocol witness table cache variable for type AnyTreeClassifier and conformance AnyTreeClassifier = result;
  }

  return result;
}

uint64_t outlined init with copy of PersistentParametersForTreeBasedMethods(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3(0);
  (*(*(v3 - 8) + 16))(a2, a1, v3);
  return a2;
}

uint64_t CMLModel.initialize(options:)(uint64_t a1)
{
  v10 = v2;
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v4 = empty;
  v5 = type metadata accessor for CMLParameters();
  inited = swift_initStackObject(v5, v9);
  *(inited + 16) = v4;
  type metadata accessor for CMLFeatureValue();

  v7 = CMLFeatureValue.__allocating_init(_:)(a1);
  if (v1)
  {
  }

  CMLParameters.add(key:featureValue:)(33, v7);
  CMLModel.callFunction(name:arguments:)(14, inited);

  swift_setDeallocating(inited);
  return tc_v1_release(*(inited + 16));
}

uint64_t CMLModel.addMetadata(_:)(uint64_t a1)
{
  v10 = v2;
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v4 = empty;
  v5 = type metadata accessor for CMLParameters();
  inited = swift_initStackObject(v5, v9);
  *(inited + 16) = v4;
  type metadata accessor for CMLFeatureValue();

  v7 = CMLFeatureValue.__allocating_init(_:)(a1);
  if (v1)
  {
  }

  CMLParameters.add(key:featureValue:)(32, v7);

  CMLModel.callFunction(name:arguments:)(7, inited);

  swift_setDeallocating(inited);
  return tc_v1_release(*(inited + 16));
}

uint64_t CMLModel.listFields()()
{
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v2 = empty;
  v3 = type metadata accessor for CMLParameters();
  inited = swift_initStackObject(v3, v6);
  *(inited + 16) = v2;
  CMLModel.callFunction(name:arguments:)(15, inited);
  if (v0)
  {
  }

  else
  {
    v2 = CMLVariant.featureValue()();

    swift_setDeallocating(inited);
    tc_v1_release(*(inited + 16));
  }

  return v2;
}

uint64_t CMLModel.getValue(field:)(uint64_t a1, uint64_t a2)
{
  v13 = v2;
  v14 = v3;
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v5 = empty;
  v6 = type metadata accessor for CMLParameters();
  inited = swift_initStackObject(v6, v12);
  *(inited + 16) = v5;
  type metadata accessor for CMLFeatureValue();

  v8 = v13;
  v9 = CMLFeatureValue.__allocating_init(_:)(a1, a2);
  if (v8)
  {
    swift_unexpectedError(v8, "CreateML/MLDataValueConvertible.swift", 37, 1, 170);
    BUG();
  }

  CMLParameters.add(key:featureValue:)(35, v9);

  v11 = CMLModel.callFunction(name:arguments:)(16, inited);
  swift_setDeallocating(inited);
  tc_v1_release(*(inited + 16));
  return v11;
}

uint64_t CMLModel.resume(training:validation:)(uint64_t a1, uint64_t a2)
{
  v12 = v3;
  v11 = a2;
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v5 = empty;
  v6 = type metadata accessor for CMLParameters();
  inited = swift_initStackObject(v6, v10);
  *(inited + 16) = v5;
  CMLParameters.add(key:table:)(4, a1);
  if (v2)
  {
  }

  v9 = v11;
  if (v11)
  {

    CMLParameters.add(key:table:)(3, v9);
  }

  CMLModel.callFunction(name:arguments:)(3, inited);

  swift_setDeallocating(inited);
  return tc_v1_release(*(inited + 16));
}

uint64_t CMLModel.resume(data:_:)(uint64_t a1, uint64_t a2)
{
  v11 = v3;
  v10 = a2;
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v5 = empty;
  v6 = type metadata accessor for CMLParameters();
  inited = swift_initStackObject(v6, v9);
  *(inited + 16) = v5;
  CMLParameters.add(key:table:)(4, a1);
  if (v2)
  {
  }

  CMLParameters.add(key:table:)(3, v10);
  CMLModel.callFunction(name:arguments:)(3, inited);

  swift_setDeallocating(inited);
  return tc_v1_release(*(inited + 16));
}

uint64_t CMLModel.evaluate(table:)(uint64_t *a1)
{
  v13 = v1;
  v14 = v2;
  v3 = *a1;
  v4 = *(a1 + 8);
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v6 = empty;
  v7 = type metadata accessor for CMLParameters();
  inited = swift_initStackObject(v7, v12);
  *(inited + 16) = v6;
  if (v4)
  {
    swift_willThrow();
    swift_errorRetain(v3);
LABEL_7:

    return v6;
  }

  v6 = *(v3 + 16);

  v9 = v13;
  CMLParameters.add(key:table:)(4, v6);
  if (v9)
  {

    goto LABEL_7;
  }

  type metadata accessor for CMLFeatureValue();
  v10 = CMLFeatureValue.__allocating_init(_:)(0x74726F706572, 0xE600000000000000);
  CMLParameters.add(key:featureValue:)(29, v10);

  v6 = CMLModel.callFunction(name:arguments:)(13, inited);
  swift_setDeallocating(inited);
  tc_v1_release(*(inited + 16));
  return v6;
}

uint64_t CMLModel.save(to:)()
{
  v14 = v1;
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v3 = empty;
  v4 = type metadata accessor for CMLParameters();
  inited = swift_initStackObject(v4, v12);
  *(inited + 16) = v3;
  v5 = URL.path.getter(v4);
  v7 = v6;
  type metadata accessor for CMLFeatureValue();

  v8 = CMLFeatureValue.__allocating_init(_:)(v5, v7);
  if (v0)
  {
    swift_unexpectedError(v0, "CreateML/MLDataValueConvertible.swift", 37, 1, 170);
    BUG();
  }

  v9 = v8;
  v7;
  v10 = inited;
  CMLParameters.add(key:featureValue:)(8, v9);

  CMLModel.callFunction(name:arguments:)(6, v10);

  swift_setDeallocating(v10);
  return tc_v1_release(*(v10 + 16));
}

uint64_t CMLModel.export(to:)(uint64_t a1)
{
  v33 = v1;
  v37 = a1;
  v31 = v2;
  v32 = *v2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for URL(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v35 = v30;
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v12 = empty;
  v13 = type metadata accessor for CMLParameters();
  inited = swift_initStackObject(v13, v30);
  *(inited + 16) = v12;
  outlined init with copy of URL?(v37, v30);
  if (__swift_getEnumTagSinglePayload(v30, 1, v6) == 1)
  {
    outlined destroy of URL?(v30);
    type metadata accessor for CMLFeatureValue();
    v14 = v33;
    v15 = CMLFeatureValue.__allocating_init(_:)(0, 0xE000000000000000);
    if (!v14)
    {
      v16 = inited;
      CMLParameters.add(key:featureValue:)(27, v15);
      goto LABEL_7;
    }

    v29 = v14;
LABEL_13:
    swift_unexpectedError(v29, "CreateML/MLDataValueConvertible.swift", 37, 1, 170);
    BUG();
  }

  v17 = v35;
  v34 = v6;
  v37 = v7;
  (*(v7 + 32))(v35, v30, v6);
  v18 = URL.path.getter(v17);
  v20 = v19;
  type metadata accessor for CMLFeatureValue();

  v21 = v33;
  v22 = CMLFeatureValue.__allocating_init(_:)(v18, v20);
  if (v21)
  {
    v29 = v21;
    goto LABEL_13;
  }

  v23 = v22;
  v20;
  v24 = inited;
  CMLParameters.add(key:featureValue:)(27, v23);
  (*(v37 + 8))(v35, v34);
  v16 = v24;
LABEL_7:

  v25 = CMLModel.callFunction(name:arguments:)(8, v16);
  v26 = specialized handling<A, B>(_:_:)(*(v25 + 16));
  if (!v26)
  {
    BUG();
  }

  v27 = inited;
  swift_setDeallocating(inited);
  tc_v1_release(*(v27 + 16));
  result = swift_allocObject(v32, 24, 7);
  *(result + 16) = v26;
  return result;
}

uint64_t CMLModel.compile()()
{
  v1[19] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v1[20] = swift_task_alloc((*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UUID(0);
  v1[21] = v3;
  v4 = *(v3 - 8);
  v1[22] = v4;
  v1[23] = swift_task_alloc((*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL(0);
  v1[24] = v5;
  v6 = *(v5 - 8);
  v1[25] = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1[26] = swift_task_alloc(v7);
  v1[27] = swift_task_alloc(v7);
  v1[28] = swift_task_alloc(v7);
  return swift_task_switch(CMLModel.compile(), 0, 0);
}

{
  v1 = objc_opt_self(NSFileManager);
  v2 = [v1 defaultManager];
  v3 = v2;
  *(v0 + 232) = v3;
  NSFileManager.createTemporaryModelDirectory()();
  if (v4)
  {

    v14 = *(v0 + 216);
    v15 = *(v0 + 208);
    v16 = *(v0 + 160);
    v17 = *(v0 + 184);
    *(v0 + 224);
    v14;
    v15;
    v17;
    v16;
    return (*(v0 + 8))();
  }

  else
  {
    v33 = *(v0 + 216);
    v32 = *(v0 + 208);
    v27 = *(v0 + 200);
    v30 = *(v0 + 192);
    v5 = *(v0 + 184);
    v28 = *(v0 + 176);
    v29 = *(v0 + 168);
    v26 = *(v0 + 160);
    NSFileManager.temporaryModelDirectory.getter();
    UUID.init()();
    v6 = UUID.uuidString.getter();
    v8 = v7;
    (*(v28 + 8))(v5, v29);
    URL.appendingPathComponent(_:)(v6, v8);
    v8;
    URL.appendingPathExtension(_:)(0x6C65646F6D6C6DLL, 0xE700000000000000);
    v9 = *(v27 + 8);
    *(v0 + 240) = v9;
    v9(v32, v30);
    (*(v27 + 16))(v26, v33, v30);
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v30);
    CMLModel.export(to:)(v26);
    v10 = *(v0 + 160);
    v11 = *(v0 + 216);

    outlined destroy of URL?(v10);
    v12 = Data.init(contentsOf:options:)(v11, 0);
    *(v0 + 248) = v12;
    *(v0 + 256) = v13;
    v19 = v12;
    v20 = v13;
    type metadata accessor for MLModelAsset();
    outlined copy of Data._Representation(v19, v20);
    v21 = @nonobjc MLModelAsset.__allocating_init(specification:)(v19, v20);
    *(v0 + 264) = v21;
    v22 = v21;
    v31 = objc_opt_self(MLModel);
    v23 = objc_allocWithZone(MLModelConfiguration);
    v24 = [v23 init];
    *(v0 + 272) = v24;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = CMLModel.compile();
    v25 = swift_continuation_init(v0 + 16, 1);
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for UnsafeContinuation<MLModel, Error>);
    *(v0 + 112) = v25;
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned MLModel?, @unowned NSError?) -> () with result type MLModel;
    *(v0 + 104) = &block_descriptor_5;
    [v31 loadModelAsset:v22 configuration:v24 completionHandler:v0 + 80];
    return swift_continuation_await(v0 + 16);
  }
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = CMLModel.compile();
  }

  else
  {
    v2 = CMLModel.compile();
  }

  return swift_task_switch(v2, 0, 0);
}

{
  v10 = *(v0 + 272);
  v11 = *(v0 + 264);
  v9 = *(v0 + 240);
  v1 = *(v0 + 232);
  v8 = *(v0 + 224);
  v2 = *(v0 + 216);
  v7 = *(v0 + 208);
  v3 = *(v0 + 192);
  v5 = *(v0 + 160);
  v6 = *(v0 + 184);
  outlined consume of Data._Representation(*(v0 + 248), *(v0 + 256));

  v12 = *(v0 + 144);
  $defer #1 () in CMLModel.compile()(v1);

  v9(v2, v3);
  v9(v8, v3);
  v8;
  v2;
  v7;
  v6;
  v5;
  return (*(v0 + 8))(v12);
}

{
  v11 = *(v0 + 272);
  v12 = *(v0 + 264);
  v13 = *(v0 + 256);
  v1 = *(v0 + 248);
  v9 = *(v0 + 240);
  v2 = *(v0 + 232);
  v14 = *(v0 + 224);
  v10 = *(v0 + 192);
  v3 = *(v0 + 216);
  swift_willThrow();
  outlined consume of Data._Representation(v1, v13);

  $defer #1 () in CMLModel.compile()(v2);
  v9(v3, v10);
  v9(v14, v10);
  v4 = *(v0 + 216);
  v5 = *(v0 + 208);
  v6 = *(v0 + 160);
  v7 = *(v0 + 184);
  *(v0 + 224);
  v4;
  v5;
  v7;
  v6;
  return (*(v0 + 8))();
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

NSURL *$defer #1 () in CMLModel.compile()(id a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v2 = v1;
  v8 = 0;
  v3 = [a1 removeItemAtURL:v1 error:&v8];

  v4 = v8;
  if (v3)
  {
    return v8;
  }

  v6 = v8;
  v7 = _convertNSErrorToError(_:)(v4);

  swift_willThrow();
  v7;
  return __stack_chk_guard;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_SiSgs5NeverOTg5059_s11TabularData0B5FrameV8CreateMLEyAcD11MLDataTableVcfcSiSgR5XEfU_0K2ML0O6ColumnVySiGTf1cn_n(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    BUG();
  }

  if (a2 == a1)
  {
    outlined consume of Result<_DataTable, Error>(a3, a4);
  }

  else
  {
    v6 = 0;
    if (v5 > 0)
    {
      v6 = v5;
    }

    v26 = a1;
    v27 = v5;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v8 = v27;
    v9 = a2;
    if (a2 < a1 || v27 < 0)
    {
      BUG();
    }

    v10 = 0;
    v11 = a4;
    do
    {
      if (v10 >= v8)
      {
        BUG();
      }

      v12 = v10 + 1;
      if (__OFADD__(1, v10))
      {
        BUG();
      }

      v13 = a1 + v10;
      if (v11)
      {
        LOBYTE(v7) = 1;
        v14 = 0;
      }

      else
      {
        outlined copy of Result<_DataTable, Error>(a3, 0);
        _UntypedColumn.valueAtIndex(index:)(v13, a5);
        outlined consume of Result<_DataTable, Error>(a3, 0);
        v14 = v19;
        if (v21)
        {
          outlined consume of MLDataValue(v19, v20, v21);
          LOBYTE(v7) = 1;
          v14 = 0;
          v11 = a4;
          v9 = a2;
          a1 = v26;
          v8 = v27;
        }

        else
        {
          v11 = a4;
          v9 = a2;
          a1 = v26;
          v8 = v27;
          v7 = 0;
        }
      }

      v15 = _swiftEmptyArrayStorage[2];
      v16 = v15 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v15)
      {
        v23 = v7;
        v22 = v14;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v16, 1);
        v16 = v15 + 1;
        v14 = v22;
        v7 = v23;
        v8 = v27;
        a1 = v26;
        v9 = a2;
        v11 = a4;
      }

      _swiftEmptyArrayStorage[2] = v16;
      v17 = 2 * v15;
      _swiftEmptyArrayStorage[v17 + 4] = v14;
      LOBYTE(_swiftEmptyArrayStorage[v17 + 5]) = v7;
      if (v13 >= v9)
      {
        BUG();
      }

      v10 = v12;
    }

    while (v12 != v8);
    outlined consume of Result<_DataTable, Error>(a3, v11);
  }

  return _swiftEmptyArrayStorage;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_SdSgs5NeverOTg567_s11TabularData0B5FrameV8CreateMLEyAcD11MLDataTableVcfcSdSgSiXEfU0_0K2ML0O6ColumnVySdGTf1cn_n(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    BUG();
  }

  if (a2 == a1)
  {
    outlined consume of Result<_DataTable, Error>(a3, a4);
  }

  else
  {
    v6 = 0;
    if (v5 > 0)
    {
      v6 = v5;
    }

    v26 = a1;
    v27 = v5;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v8 = v27;
    v9 = a2;
    if (a2 < a1 || v27 < 0)
    {
      BUG();
    }

    v10 = 0;
    v11 = a4;
    do
    {
      if (v10 >= v8)
      {
        BUG();
      }

      v12 = v10 + 1;
      if (__OFADD__(1, v10))
      {
        BUG();
      }

      v13 = a1 + v10;
      if (v11)
      {
        LOBYTE(v7) = 1;
        v14 = 0;
      }

      else
      {
        outlined copy of Result<_DataTable, Error>(a3, 0);
        _UntypedColumn.valueAtIndex(index:)(v13, a5);
        outlined consume of Result<_DataTable, Error>(a3, 0);
        v14 = v19;
        if (v21 == 1)
        {
          v11 = a4;
          v9 = a2;
          a1 = v26;
          v8 = v27;
          v7 = 0;
        }

        else
        {
          outlined consume of MLDataValue(v19, v20, v21);
          LOBYTE(v7) = 1;
          v14 = 0;
          v11 = a4;
          v9 = a2;
          a1 = v26;
          v8 = v27;
        }
      }

      v15 = _swiftEmptyArrayStorage[2];
      v16 = v15 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v15)
      {
        v23 = v7;
        v22 = v14;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v16, 1);
        v16 = v15 + 1;
        v14 = v22;
        v7 = v23;
        v8 = v27;
        a1 = v26;
        v9 = a2;
        v11 = a4;
      }

      _swiftEmptyArrayStorage[2] = v16;
      v17 = 2 * v15;
      _swiftEmptyArrayStorage[v17 + 4] = v14;
      LOBYTE(_swiftEmptyArrayStorage[v17 + 5]) = v7;
      if (v13 >= v9)
      {
        BUG();
      }

      v10 = v12;
    }

    while (v12 != v8);
    outlined consume of Result<_DataTable, Error>(a3, v11);
  }

  return _swiftEmptyArrayStorage;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_SSSgs5NeverOTg567_s11TabularData0B5FrameV8CreateMLEyAcD11MLDataTableVcfcSSSgSiXEfU1_0K2ML0O6ColumnVySSGTf1cn_n(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    BUG();
  }

  if (a2 == a1)
  {
    outlined consume of Result<_DataTable, Error>(a3, a4);
  }

  else
  {
    v6 = 0;
    if (v5 > 0)
    {
      v6 = v5;
    }

    v26 = a1;
    v27 = v5;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = v27;
    v8 = a2;
    if (a2 < a1 || v27 < 0)
    {
      BUG();
    }

    v9 = 0;
    v10 = a4;
    do
    {
      if (v9 >= v7)
      {
        BUG();
      }

      v11 = v9 + 1;
      if (__OFADD__(1, v9))
      {
        BUG();
      }

      v12 = a1 + v9;
      if (v10)
      {
        v13 = 0;
        v14 = 0;
      }

      else
      {
        outlined copy of Result<_DataTable, Error>(a3, 0);
        _UntypedColumn.valueAtIndex(index:)(v12, a5);
        outlined consume of Result<_DataTable, Error>(a3, 0);
        v13 = v19;
        v14 = v20;
        if (v21 != 2)
        {
          outlined consume of MLDataValue(v19, v20, v21);
          v13 = 0;
          v14 = 0;
        }

        v10 = a4;
        v8 = a2;
        a1 = v26;
        v7 = v27;
      }

      v15 = _swiftEmptyArrayStorage[2];
      v16 = v15 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v15)
      {
        v22 = v13;
        v23 = v14;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v16, 1);
        v16 = v15 + 1;
        v14 = v23;
        v13 = v22;
        v7 = v27;
        a1 = v26;
        v8 = a2;
        v10 = a4;
      }

      _swiftEmptyArrayStorage[2] = v16;
      v17 = 2 * v15;
      _swiftEmptyArrayStorage[v17 + 4] = v13;
      _swiftEmptyArrayStorage[v17 + 5] = v14;
      if (v12 >= v8)
      {
        BUG();
      }

      v9 = v11;
    }

    while (v11 != v7);
    outlined consume of Result<_DataTable, Error>(a3, v10);
  }

  return _swiftEmptyArrayStorage;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_Say8CreateML11MLDataValueOGSgs5NeverOTg5025_s11TabularData0B5FrameV8d9MLEyAcD11f17TableVcfcSayAD0F5G12OGSgSiXEfU2_AG0F6ColumnVyAI12SequenceTypeVGTf1cn_n(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  v34 = a3;
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    BUG();
  }

  if (a2 == a1)
  {
    outlined consume of Result<_DataTable, Error>(v34, a4);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v40 = a4;
    v36 = _swiftEmptyArrayStorage;
    v37 = a2;
    v6 = 0;
    if (v5 > 0)
    {
      v6 = v5;
    }

    v38 = a1;
    v39 = v5;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = v39;
    v8 = v37;
    if (v37 < a1 || v39 < 0)
    {
      BUG();
    }

    v9 = v36;
    v10 = 0;
    v11 = v40;
    do
    {
      if (v10 >= v7)
      {
        BUG();
      }

      v12 = v10 + 1;
      if (__OFADD__(1, v10))
      {
        BUG();
      }

      v13 = a1 + v10;
      v28 = v13;
      if (v11)
      {
        v14 = 0;
      }

      else
      {
        v32 = v9;
        v15 = v34;
        outlined copy of Result<_DataTable, Error>(v34, 0);
        _UntypedColumn.valueAtIndex(index:)(v13, a5);
        outlined consume of Result<_DataTable, Error>(v15, 0);
        v16 = v29;
        if (v31 == 3)
        {
          v33 = v30;
          outlined copy of MLDataValue(v29, v30, 3u);
          v17 = CMLSequence.size.getter();
          if (CMLSequence.size.getter() < 0)
          {
            BUG();
          }

          v18 = CMLSequence.size.getter();
          if (v17 < 0 || v18 < v17)
          {
            BUG();
          }

          if (v17)
          {
            v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLDataValue>);
            v20 = swift_allocObject(v19, 24 * v17 + 32, 7);
            v21 = (_swift_stdlib_malloc_size(v20) - 32);
            v20[2] = v17;
            v20[3] = 2 * (v21 / 24);
            v35 = v20;

            v22 = specialized Sequence._copySequenceContents(initializing:)(&v29, (v20 + 4), v17, v16, a5);

            if (v22 != v17)
            {
              BUG();
            }

            v23 = v33;
            outlined consume of MLDataValue(v16, v33, 3);
            outlined consume of MLDataValue(v16, v23, 3);
            v14 = v35;
          }

          else
          {
            v24 = v33;
            outlined consume of MLDataValue(v16, v33, 3);
            outlined consume of MLDataValue(v16, v24, 3);
            v14 = _swiftEmptyArrayStorage;
          }
        }

        else
        {
          outlined consume of MLDataValue(v29, v30, v31);
          v14 = 0;
        }

        v11 = v40;
        v8 = v37;
        a1 = v38;
        v7 = v39;
        v9 = v32;
      }

      v36 = v9;
      v25 = v9[2];
      v26 = v9[3];
      if (v26 >> 1 <= v25)
      {
        v35 = v14;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26 >= 2, v25 + 1, 1);
        v14 = v35;
        v7 = v39;
        a1 = v38;
        v8 = v37;
        v11 = v40;
        v9 = v36;
      }

      v9[2] = v25 + 1;
      v9[v25 + 4] = v14;
      if (v28 >= v8)
      {
        BUG();
      }

      v10 = v12;
    }

    while (v12 != v7);
    outlined consume of Result<_DataTable, Error>(v34, v11);
  }

  return v9;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_Say8CreateML11MLDataValueO3key_AI5valuetGSgs5NeverOTg5025_s11TabularData0B5FrameV8d9MLEyAcD11f17TableVcfcSayAD0F5G26O3key_AH5valuetGSgSiXEfU3_AG0F6ColumnVyAI14DictionaryTypeVGTf1cn_n(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  v38 = a3;
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    BUG();
  }

  if (a2 == a1)
  {
    outlined consume of Result<_DataTable, Error>(v38, a4);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v45 = a4;
    v41 = _swiftEmptyArrayStorage;
    v42 = a2;
    v6 = 0;
    if (v5 > 0)
    {
      v6 = v5;
    }

    v43 = a1;
    v44 = v5;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = v44;
    v8 = v42;
    if (v42 < a1 || v44 < 0)
    {
      BUG();
    }

    v9 = v41;
    v10 = 0;
    v11 = v45;
    do
    {
      if (v10 >= v7)
      {
        BUG();
      }

      v12 = v10 + 1;
      if (__OFADD__(1, v10))
      {
        BUG();
      }

      v13 = a1 + v10;
      v28 = v13;
      if (v11)
      {
        v14 = 0;
      }

      else
      {
        v35 = v9;
        v15 = v38;
        outlined copy of Result<_DataTable, Error>(v38, 0);
        _UntypedColumn.valueAtIndex(index:)(v13, a5);
        outlined consume of Result<_DataTable, Error>(v15, 0);
        v16 = v31;
        v17 = v32;
        if (v33 == 4)
        {
          v18 = v31[2];
          if (v18)
          {
            v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(key: MLDataValue, value: MLDataValue)>);
            v20 = swift_allocObject(v19, 48 * v18 + 32, 7);
            v36 = v18;
            v21 = v20;
            v22 = (_swift_stdlib_malloc_size(v20) - 32);
            v21[2] = v36;
            v21[3] = 2 * (v22 / 48);
            v39 = v21;
            v40 = v21 + 4;
            v23 = v17;
            outlined copy of MLDataValue(v16, v17, 4u);

            v24 = v36;
            v40 = specialized Sequence._copySequenceContents(initializing:)(&v31, v40, v36, v16);
            v29 = v32;
            v30 = v33;
            v37 = v34;
            v31;
            outlined consume of [MLDataValue : MLDataValue].Index._Variant(v29, v30, v37);
            if (v40 != v24)
            {
              BUG();
            }

            outlined consume of MLDataValue(v16, v23, 4);
            outlined consume of MLDataValue(v16, v23, 4);
            v14 = v39;
          }

          else
          {
            outlined consume of MLDataValue(v31, v32, 4);
            v14 = _swiftEmptyArrayStorage;
          }
        }

        else
        {
          outlined consume of MLDataValue(v31, v32, v33);
          v14 = 0;
        }

        v11 = v45;
        v8 = v42;
        a1 = v43;
        v7 = v44;
        v9 = v35;
      }

      v41 = v9;
      v25 = v9[2];
      v26 = v9[3];
      if (v26 >> 1 <= v25)
      {
        v39 = v14;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26 >= 2, v25 + 1, 1);
        v14 = v39;
        v7 = v44;
        a1 = v43;
        v8 = v42;
        v11 = v45;
        v9 = v41;
      }

      v9[2] = v25 + 1;
      v9[v25 + 4] = v14;
      if (v28 >= v8)
      {
        BUG();
      }

      v10 = v12;
    }

    while (v12 != v7);
    outlined consume of Result<_DataTable, Error>(v38, v11);
  }

  return v9;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_So12MLMultiArrayCSgs5NeverOTg5059_s11TabularData0B5FrameV8CreateMLEyAcD11MLDataTableVcfcSo12dE11CSgSiXEfU4_0M2ML0Q6ColumnVyAM0Q5ValueO05MultiE4TypeVGTf1cn_n(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    BUG();
  }

  if (a2 == a1)
  {
    outlined consume of Result<_DataTable, Error>(a3, a4);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v6 = a2 - a1;
    specialized ContiguousArray.reserveCapacity(_:)(v6);
    if (a2 < a1 || v5 < 0)
    {
      BUG();
    }

    v7 = 0;
    v15 = v5;
    do
    {
      if (v7 >= v5)
      {
        BUG();
      }

      v8 = v7 + 1;
      if (__OFADD__(1, v7))
      {
        BUG();
      }

      v9 = a1 + v7;
      if ((a4 & 1) == 0)
      {
        outlined copy of Result<_DataTable, Error>(a3, 0);
        _UntypedColumn.valueAtIndex(index:)(v9, a5);
        outlined consume of Result<_DataTable, Error>(a3, 0);
        v6 = v12;
        if (v14 != 5)
        {
          outlined consume of MLDataValue(v12, v13, v14);
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v6);
      v10 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v10);
      v6 = v10;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v10);
      specialized ContiguousArray._endMutation()(v10);
      if (v9 >= a2)
      {
        BUG();
      }

      v7 = v8;
      v5 = v15;
    }

    while (v8 != v15);
    outlined consume of Result<_DataTable, Error>(a3, a4);
    return _swiftEmptyArrayStorage;
  }
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSypG_8CreateML11MLDataValueO_AItsAE_pTg5020_sSS3key_x5valuetSg8d4ML11fg5OAFs5c136_pIgnrrzo_SSAA_xABtAF_AFtsAG_pIegnrzr_lTRyp_TG503_s8c39ML15MLUntypedColumnVyAC11TabularData0D0l18SDySSxGGKclufcAA11ef34OAGSgKXEfU_AJ_AJti1_J22SgV8U_yp_Tg5Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1;
    v48 = v1;
    v46 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = specialized Dictionary.startIndex.getter(a1);
    v7 = v6;
    v47 = v3 + 64;
    v8 = v2 - 1;
    v40 = &type metadata for Any + 8;
    v39 = v3;
    while (1)
    {
      if (v5 < 0 || v5 >= 1 << *(v3 + 32))
      {
        BUG();
      }

      v9 = *(v47 + 8 * (v5 >> 6));
      if (!_bittest64(&v9, v5))
      {
        BUG();
      }

      if (v7 != *(v3 + 36))
      {
        BUG();
      }

      v36 = 1 << v5;
      v37 = v7;
      v45 = v4;
      v38 = v8;
      v10 = *(v3 + 48);
      v11 = v3;
      v12 = *(v10 + 16 * v5);
      v13 = *(v10 + 16 * v5 + 8);
      v35 = v5;
      outlined init with copy of Any(*(v11 + 56) + 32 * v5, v25);
      v24[0] = v12;
      v24[1] = v13;
      *&v28 = v12;
      *(&v28 + 1) = v13;
      outlined init with copy of Any(v25, v29);
      v30[2] = v29[1];
      v30[1] = v29[0];
      v30[0] = v28;
      swift_bridgeObjectRetain_n(v13, 2);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v24, &demangling cache variable for type metadata for (key: String, value: Any));
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, v21, &demangling cache variable for type metadata for (key: String, value: Any));
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v21, &v31, &demangling cache variable for type metadata for (key: String, value: Any)?);
      if (v31.i64[1])
      {
        v27[2] = v32[1];
        v27[1] = v32[0];
        v27[0] = v31;
        outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v27, &v31, &demangling cache variable for type metadata for (key: String, value: Any));
        v14 = v31;
        v41 = v31;
        LOBYTE(v42) = 2;
        outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v27, v22, &demangling cache variable for type metadata for (key: String, value: Any));
        v22[8];
        v26[3] = v40;
        v26[0] = swift_allocObject(&unk_391570, 48, 7);
        outlined init with take of Any(&v23, (v26[0] + 16));
        v15 = v48;
        MLDataValue.init(fromAny:)(v26, v14);
        v48 = v15;
        v4 = v45;
        if (v15)
        {
          outlined consume of MLDataValue(v41.i64[0], v41.i64[1], v42);
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v27, &demangling cache variable for type metadata for (key: String, value: Any));
          __swift_destroy_boxed_opaque_existential_1Tm(v32);
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v21, &demangling cache variable for type metadata for (key: String, value: Any)?);
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, &demangling cache variable for type metadata for (key: String, value: Any));

          return v4;
        }

        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v27, &demangling cache variable for type metadata for (key: String, value: Any));
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        v34 = v41;
        v50 = v42;
        v33 = v43;
        v49 = v44;
      }

      else
      {
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v31, &demangling cache variable for type metadata for (key: String, value: Any)?);
        v41 = 0;
        LOBYTE(v42) = 6;
        v43 = 0;
        v49 = 6;
        v44 = 6;
        v33 = 0;
        v50 = 6;
        v34 = 0;
        v4 = v45;
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v21, &demangling cache variable for type metadata for (key: String, value: Any)?);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, &demangling cache variable for type metadata for (key: String, value: Any));
      v46 = v4;
      v16 = v4[2];
      if (v4[3] >> 1 <= v16)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v4[3] >= 2uLL, v16 + 1, 1);
        v4 = v46;
      }

      v4[2] = v16 + 1;
      v17 = 6 * v16;
      *&v4[v17 + 4] = v34;
      LOBYTE(v4[v17 + 6]) = v50;
      *&v4[v17 + 7] = v33;
      LOBYTE(v4[v17 + 9]) = v49;
      v3 = v39;
      v18 = -1 << *(v39 + 32);
      if (v35 >= -v18)
      {
        BUG();
      }

      if ((v36 & *(v47 + 8 * (v5 >> 6))) == 0)
      {
        BUG();
      }

      if (v37 != *(v39 + 36))
      {
        BUG();
      }

      v19 = _HashTable.occupiedBucket(after:)(v35, v47, ~v18);
      v8 = v38 - 1;
      if (!v38)
      {
        return v4;
      }

      v5 = v19;
      v7 = *(v3 + 36);
    }
  }

  return _swiftEmptyArrayStorage;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSypSgG_8CreateML11MLDataValueO_AJtsAE_pTg5022_sSS3key_xSg5valuetSg8d4ML11fg5OAGs5c138_pIgnrrzo_SSAA_AbCtAG_AGtsAH_pIegnrzr_lTRyp_TG503_s8c39ML15MLUntypedColumnVyAC11TabularData0D0l20SDySSxSgGGKclufcAA11ef33OAHSgKXEfU_AK_AKtI31_AG5valuetsW8U_yp_Tg5Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a1;
  v45 = v1;
  v44 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v4 = _swiftEmptyArrayStorage;
  v5 = specialized Dictionary.startIndex.getter(a1);
  v7 = a1 + 64;
  v8 = v2 - 1;
  v42 = a1;
  v43 = a1 + 64;
  while (1)
  {
    if (v5 < 0 || v5 >= 1 << *(v3 + 32))
    {
      BUG();
    }

    v39 = v8;
    v9 = v5 >> 6;
    v10 = *(v7 + 8 * (v5 >> 6));
    if (!_bittest64(&v10, v5))
    {
      BUG();
    }

    if (v6 != *(v3 + 36))
    {
      BUG();
    }

    v40 = 1 << v5;
    v41 = v6;
    v46 = v4;
    v11 = *(v3 + 48);
    v12 = *(v11 + 16 * v5);
    v13 = v3;
    v14 = *(v11 + 16 * v5 + 8);
    v38 = v5;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v13 + 56) + 32 * v5, v28, &demangling cache variable for type metadata for Any?);
    v27[0] = v12;
    v27[1] = v14;
    *&v30 = v12;
    *(&v30 + 1) = v14;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v28, v31, &demangling cache variable for type metadata for Any?);
    v29[2] = v31[1];
    v29[1] = v31[0];
    v29[0] = v30;
    swift_bridgeObjectRetain_n(v14, 2);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v27, &demangling cache variable for type metadata for (key: String, value: Any?));
    v4 = v29;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v29, v26, &demangling cache variable for type metadata for (key: String, value: Any?));
    v15 = v45;
    specialized closure #1 in closure #1 in MLUntypedColumn.init<A>(_:)(&v34, &v36, v26);
    v45 = v15;
    if (v15)
    {
      break;
    }

    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v26, &demangling cache variable for type metadata for (key: String, value: Any?)?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v29, &demangling cache variable for type metadata for (key: String, value: Any?));
    v16 = v34;
    v17 = v35;
    v18 = v36;
    v19 = v37;
    v4 = v46;
    v44 = v46;
    v20 = v46[2];
    v21 = v46[3];
    v22 = v20 + 1;
    if (v21 >> 1 <= v20)
    {
      v46 = (v20 + 1);
      v47 = v37;
      v32 = v34;
      v33 = v36;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 >= 2, v22, 1);
      v22 = v46;
      v19 = v47;
      v18 = v33;
      v16 = v32;
      v4 = v44;
    }

    v4[2] = v22;
    v23 = 6 * v20;
    *&v4[v23 + 4] = v16;
    LOBYTE(v4[v23 + 6]) = v17;
    *&v4[v23 + 7] = v18;
    LOBYTE(v4[v23 + 9]) = v19;
    v3 = v42;
    v24 = -1 << *(v42 + 32);
    if (v38 >= -v24)
    {
      BUG();
    }

    v7 = v43;
    if ((v40 & *(v43 + 8 * v9)) == 0)
    {
      BUG();
    }

    if (v41 != *(v42 + 36))
    {
      BUG();
    }

    v5 = _HashTable.occupiedBucket(after:)(v38, v43, ~v24);
    v8 = v39 - 1;
    if (!v39)
    {
      return v4;
    }

    v6 = *(v3 + 36);
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v26, &demangling cache variable for type metadata for (key: String, value: Any?)?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v29, &demangling cache variable for type metadata for (key: String, value: Any?));

  return v4;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_8CreateML11MLDataValueO_AItsAE_pTg5020_sSS3key_x5valuetSg8d4ML11fg5OAFs5c136_pIgnrrzo_SSAA_xABtAF_AFtsAG_pIegnrzr_lTRSS_TG503_s8c39ML15MLUntypedColumnVyAC11TabularData0D0l18SDySSxGGKclufcAA11ef34OAGSgKXEfU_AJ_AJti1_J22SgV8U_SS_TG5Tf3nnnpf_nTf1cn_n(uint64_t a1, __m128 a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = a1;
  v43 = v2;
  v42 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v5 = _swiftEmptyArrayStorage;
  v6 = specialized Dictionary.startIndex.getter(a1);
  v8 = a1 + 64;
  v9 = v3 - 1;
  v34 = a1;
  v35 = a1 + 64;
  while (1)
  {
    if (v6 < 0 || v6 >= 1 << *(v4 + 32))
    {
      BUG();
    }

    v32 = v9;
    v10 = v6 >> 6;
    v11 = *(v8 + 8 * (v6 >> 6));
    v12 = 1 << v6;
    if (!_bittest64(&v11, v6))
    {
      BUG();
    }

    if (v7 != *(v4 + 36))
    {
      BUG();
    }

    v33 = v7;
    v41.i64[0] = v5;
    v31 = v6;
    v13 = 16 * v6;
    v14 = *(v4 + 48);
    v15 = *(v4 + 56);
    v16 = *(v14 + v13);
    v5 = *(v14 + v13 + 8);
    v17 = *(v15 + v13);
    v18 = *(v15 + v13 + 8);
    v37.i64[0] = v16;
    v37.i64[1] = v5;
    LOBYTE(v38) = 2;
    v29[3] = &type metadata for String;
    v29[0] = v17;
    v29[1] = v18;
    swift_bridgeObjectRetain_n(v5, 4);
    swift_bridgeObjectRetain_n(v18, 4);
    v19 = v43;
    MLDataValue.init(fromAny:)(v29, a2);
    v43 = v19;
    if (v19)
    {
      break;
    }

    swift_bridgeObjectRelease_n(v18, 2);
    swift_bridgeObjectRelease_n(v5, 3);
    v18;
    a2 = v37;
    v20 = v38;
    v21 = v39;
    v22 = v40;
    v5 = v41.i64[0];
    v42 = v41.i64[0];
    v23 = *(v41.i64[0] + 16);
    v24 = *(v41.i64[0] + 24);
    v25 = v23 + 1;
    if (v24 >> 1 <= v23)
    {
      v45 = v40;
      v44 = v38;
      v41 = v37;
      v30 = v39;
      v36 = v23 + 1;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24 >= 2, v25, 1);
      v25 = v36;
      v22 = v45;
      v21 = v30;
      v20 = v44;
      a2 = v41;
      v5 = v42;
    }

    v5[2] = v25;
    v26 = 6 * v23;
    *&v5[v26 + 4] = a2;
    LOBYTE(v5[v26 + 6]) = v20;
    *&v5[v26 + 7] = v21;
    LOBYTE(v5[v26 + 9]) = v22;
    v4 = v34;
    v27 = *(v34 + 32);
    if (v31 >= -(-1 << v27))
    {
      BUG();
    }

    if ((v12 & *(v35 + 8 * v10)) == 0)
    {
      BUG();
    }

    v8 = v35;
    if (v33 != *(v34 + 36))
    {
      BUG();
    }

    v6 = _HashTable.occupiedBucket(after:)(v31, v35, ~(-1 << v27));
    v9 = v32 - 1;
    if (!v32)
    {
      return v5;
    }

    v7 = *(v4 + 36);
  }

  outlined consume of MLDataValue(v37.i64[0], v37.i64[1], v38);
  swift_bridgeObjectRelease_n(v18, 2);
  swift_bridgeObjectRelease_n(v5, 3);

  v18;
  return v5;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSSfG_8CreateML11MLDataValueO_AItsAE_pTg5020_sSS3key_x5valuetSg8d4ML11fg5OAFs5c136_pIgnrrzo_SSAA_xABtAF_AFtsAG_pIegnrzr_lTRSf_TG503_s8c39ML15MLUntypedColumnVyAC11TabularData0D0l18SDySSxGGKclufcAA11ef34OAGSgKXEfU_AJ_AJti1_J22SgV8U_Sf_TG5Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a1;
  v43 = v1;
  v42 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v4 = _swiftEmptyArrayStorage;
  v5 = specialized Dictionary.startIndex.getter(a1);
  v7 = a1 + 64;
  v8 = v2 - 1;
  v35 = a1;
  v36 = a1 + 64;
  while (1)
  {
    if (v5 < 0 || v5 >= 1 << *(v3 + 32))
    {
      BUG();
    }

    v33 = v8;
    v9 = v5 >> 6;
    v10 = *(v7 + 8 * (v5 >> 6));
    v11 = 1 << v5;
    if (!_bittest64(&v10, v5))
    {
      BUG();
    }

    if (v6 != *(v3 + 36))
    {
      BUG();
    }

    v34 = v6;
    v12 = *(v3 + 48);
    v13 = *(v3 + 56);
    v14 = *(v12 + 16 * v5);
    v15 = *(v12 + 16 * v5 + 8);
    v32 = v5;
    v16 = *(v13 + 4 * v5);
    *&v38 = v14;
    *(&v38 + 1) = v15;
    LOBYTE(v39) = 2;
    v29 = &type metadata for Float;
    v28[0] = v16.i32[0];
    swift_bridgeObjectRetain_n(v15, 4);
    v17 = v43;
    MLDataValue.init(fromAny:)(v28, v16);
    v43 = v17;
    if (v17)
    {
      break;
    }

    swift_bridgeObjectRelease_n(v15, 3);
    v18 = v38;
    v19 = v39;
    v20 = v40;
    v21 = v41;
    v42 = v4;
    v22 = v4[2];
    v23 = v4[3];
    v24 = v22 + 1;
    if (v23 >> 1 <= v22)
    {
      v45 = v41;
      v44 = v39;
      v30 = v38;
      v31 = v40;
      v37 = v22 + 1;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v23 >= 2, v24, 1);
      v24 = v37;
      v21 = v45;
      v20 = v31;
      v19 = v44;
      v18 = v30;
      v4 = v42;
    }

    v4[2] = v24;
    v25 = 6 * v22;
    *&v4[v25 + 4] = v18;
    LOBYTE(v4[v25 + 6]) = v19;
    *&v4[v25 + 7] = v20;
    LOBYTE(v4[v25 + 9]) = v21;
    v3 = v35;
    v26 = *(v35 + 32);
    if (v32 >= -(-1 << v26))
    {
      BUG();
    }

    if ((v11 & *(v36 + 8 * v9)) == 0)
    {
      BUG();
    }

    v7 = v36;
    if (v34 != *(v35 + 36))
    {
      BUG();
    }

    v5 = _HashTable.occupiedBucket(after:)(v32, v36, ~(-1 << v26));
    v8 = v33 - 1;
    if (!v33)
    {
      return v4;
    }

    v6 = *(v3 + 36);
  }

  outlined consume of MLDataValue(v38, *(&v38 + 1), v39);

  swift_bridgeObjectRelease_n(v15, 3);
  return v4;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSSdG_8CreateML11MLDataValueO_AItsAE_pTg5020_sSS3key_x5valuetSg8d4ML11fg5OAFs5c136_pIgnrrzo_SSAA_xABtAF_AFtsAG_pIegnrzr_lTRSd_TG503_s8c39ML15MLUntypedColumnVyAC11TabularData0D0l18SDySSxGGKclufcAA11ef34OAGSgKXEfU_AJ_AJti1_J22SgV8U_Sd_TG5Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a1;
  v42 = v1;
  v41 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v4 = _swiftEmptyArrayStorage;
  v5 = specialized Dictionary.startIndex.getter(a1);
  v7 = a1 + 64;
  v8 = v2 - 1;
  v34 = a1;
  v35 = a1 + 64;
  while (1)
  {
    if (v5 < 0 || v5 >= 1 << *(v3 + 32))
    {
      BUG();
    }

    v32 = v8;
    v9 = v5 >> 6;
    v10 = *(v7 + 8 * (v5 >> 6));
    v11 = 1 << v5;
    if (!_bittest64(&v10, v5))
    {
      BUG();
    }

    if (v6 != *(v3 + 36))
    {
      BUG();
    }

    v33 = v6;
    v12 = *(v3 + 48);
    v13 = *(v3 + 56);
    v14 = *(v12 + 16 * v5);
    v15 = *(v12 + 16 * v5 + 8);
    v31 = v5;
    v16 = *(v13 + 8 * v5);
    *&v37 = v14;
    *(&v37 + 1) = v15;
    LOBYTE(v38) = 2;
    v28[3] = &type metadata for Double;
    v28[0] = v16.i64[0];
    swift_bridgeObjectRetain_n(v15, 4);
    v17 = v42;
    MLDataValue.init(fromAny:)(v28, v16);
    v42 = v17;
    if (v17)
    {
      break;
    }

    swift_bridgeObjectRelease_n(v15, 3);
    v18 = v37;
    v19 = v38;
    v20 = v39;
    v21 = v40;
    v41 = v4;
    v22 = v4[2];
    v23 = v4[3];
    v24 = v22 + 1;
    if (v23 >> 1 <= v22)
    {
      v44 = v40;
      v43 = v38;
      v29 = v37;
      v30 = v39;
      v36 = v22 + 1;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v23 >= 2, v24, 1);
      v24 = v36;
      v21 = v44;
      v20 = v30;
      v19 = v43;
      v18 = v29;
      v4 = v41;
    }

    v4[2] = v24;
    v25 = 6 * v22;
    *&v4[v25 + 4] = v18;
    LOBYTE(v4[v25 + 6]) = v19;
    *&v4[v25 + 7] = v20;
    LOBYTE(v4[v25 + 9]) = v21;
    v3 = v34;
    v26 = *(v34 + 32);
    if (v31 >= -(-1 << v26))
    {
      BUG();
    }

    if ((v11 & *(v35 + 8 * v9)) == 0)
    {
      BUG();
    }

    v7 = v35;
    if (v33 != *(v34 + 36))
    {
      BUG();
    }

    v5 = _HashTable.occupiedBucket(after:)(v31, v35, ~(-1 << v26));
    v8 = v32 - 1;
    if (!v32)
    {
      return v4;
    }

    v6 = *(v3 + 36);
  }

  outlined consume of MLDataValue(v37, *(&v37 + 1), v38);

  swift_bridgeObjectRelease_n(v15, 3);
  return v4;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSSiG_8CreateML11MLDataValueO_AItsAE_pTg5020_sSS3key_x5valuetSg8d4ML11fg5OAFs5c136_pIgnrrzo_SSAA_xABtAF_AFtsAG_pIegnrzr_lTRSi_TG503_s8c39ML15MLUntypedColumnVyAC11TabularData0D0l18SDySSxGGKclufcAA11ef34OAGSgKXEfU_AJ_AJti1_J22SgV8U_Si_TG5Tf3nnnpf_nTf1cn_n(uint64_t a1, __m128 a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = a1;
  v42 = v2;
  v41 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v5 = _swiftEmptyArrayStorage;
  v6 = specialized Dictionary.startIndex.getter(a1);
  v8 = a1 + 64;
  v9 = v3 - 1;
  v34 = a1;
  v35 = a1 + 64;
  while (1)
  {
    if (v6 < 0 || v6 >= 1 << *(v4 + 32))
    {
      BUG();
    }

    v32 = v9;
    v10 = v6 >> 6;
    v11 = *(v8 + 8 * (v6 >> 6));
    v12 = 1 << v6;
    if (!_bittest64(&v11, v6))
    {
      BUG();
    }

    if (v7 != *(v4 + 36))
    {
      BUG();
    }

    v33 = v7;
    v13 = *(v4 + 48);
    v14 = *(v4 + 56);
    v15 = *(v13 + 16 * v6);
    v16 = *(v13 + 16 * v6 + 8);
    v31 = v6;
    v17 = *(v14 + 8 * v6);
    v37.i64[0] = v15;
    v37.i64[1] = v16;
    LOBYTE(v38) = 2;
    v28[3] = &type metadata for Int;
    v28[0] = v17;
    swift_bridgeObjectRetain_n(v16, 4);
    v18 = v42;
    MLDataValue.init(fromAny:)(v28, a2);
    v42 = v18;
    if (v18)
    {
      break;
    }

    swift_bridgeObjectRelease_n(v16, 3);
    a2 = v37;
    v19 = v38;
    v20 = v39;
    v21 = v40;
    v41 = v5;
    v22 = v5[2];
    v23 = v5[3];
    v24 = v22 + 1;
    if (v23 >> 1 <= v22)
    {
      v44 = v40;
      v43 = v38;
      v29 = v37;
      v30 = v39;
      v36 = v22 + 1;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v23 >= 2, v24, 1);
      v24 = v36;
      v21 = v44;
      v20 = v30;
      v19 = v43;
      a2 = v29;
      v5 = v41;
    }

    v5[2] = v24;
    v25 = 6 * v22;
    *&v5[v25 + 4] = a2;
    LOBYTE(v5[v25 + 6]) = v19;
    *&v5[v25 + 7] = v20;
    LOBYTE(v5[v25 + 9]) = v21;
    v4 = v34;
    v26 = *(v34 + 32);
    if (v31 >= -(-1 << v26))
    {
      BUG();
    }

    if ((v12 & *(v35 + 8 * v10)) == 0)
    {
      BUG();
    }

    v8 = v35;
    if (v33 != *(v34 + 36))
    {
      BUG();
    }

    v6 = _HashTable.occupiedBucket(after:)(v31, v35, ~(-1 << v26));
    v9 = v32 - 1;
    if (!v32)
    {
      return v5;
    }

    v7 = *(v4 + 36);
  }

  outlined consume of MLDataValue(v37.i64[0], v37.i64[1], v38);

  swift_bridgeObjectRelease_n(v16, 3);
  return v5;
}

uint64_t MLDataTable.init(_:convertArraysToShapedArrays:)(uint64_t a1, int a2, __m128 a3)
{
  *&v65 = v4;
  LODWORD(v61) = a2;
  v53 = v3;
  v60 = type metadata accessor for AnyColumn(0);
  v63 = *(v60 - 8);
  v6 = *(v63 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v49 = &v47;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v54 = &v47;
  empty = tc_v1_sframe_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v12 = empty;
  v13 = type metadata accessor for CMLTable();
  v14 = swift_allocObject(v13, 24, 7);
  *(v14 + 16) = v12;
  v15 = type metadata accessor for _DataTable();
  swift_allocObject(v15, 40, 7);
  v67 = _DataTable.init(impl:)(v14);
  LOBYTE(v68) = 0;
  v16 = DataFrame.columns.getter(v14);
  v17 = *(v16 + 16);
  v57 = a1;
  v58 = v16;
  if (!v17)
  {
LABEL_20:
    v42 = type metadata accessor for DataFrame(0);
    (*(*(v42 - 8) + 8))(v57, v42);
    v58;
    result = v67;
    v44 = v68;
    v45 = v53;
    *v53 = v67;
    *(v45 + 8) = v44;
    return result;
  }

  v18 = ((*(v63 + 80) + 32) & ~*(v63 + 80)) + v16;
  v52 = "Can't represent value as Int32." + 0x8000000000000000;
  v50 = *(v63 + 16);
  v51 = *(v63 + 72);
  v59 = v61;
  v19 = v54;
  while (1)
  {
    v61 = v17;
    v48 = v18;
    v20 = v60;
    v21 = v50;
    v50(v19, v18, v60);
    v22 = v49;
    *a3.i64 = v21(v49, v19, v20);
    v23 = v65;
    MLUntypedColumn.init(_:convertArraysToShapedArrays:)(v22, v59, a3);
    if (v23)
    {
      break;
    }

    *&v65 = 0;
    v62 = v66;
    v24 = BYTE8(v66);
    v25 = AnyColumn.name.getter();
    v64 = v26;
    MLDataTable.willMutate()();
    v27 = v67;
    v69 = v24;
    if (v68)
    {
      *&v66 = v67;
      outlined copy of Result<_DataTable, Error>(v67, 1);
      swift_errorRetain(v27);
      v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
      v29 = _getErrorEmbeddedNSError<A>(_:)(&v66, v28, &protocol self-conformance witness table for Error);
      if (v29)
      {
        v30 = v29;
        outlined consume of Result<_DataTable, Error>(v27, 1);
      }

      else
      {
        v30 = swift_allocError(v28, &protocol self-conformance witness table for Error, 0, 0);
        *v39 = v27;
      }

      v32 = v64;
      outlined consume of Result<_DataTable, Error>(v27, 1);
      goto LABEL_14;
    }

    if (v24)
    {
      *&v66 = 0;
      *(&v66 + 1) = 0xE000000000000000;

      _StringGuts.grow(_:)(36);
      SBYTE8(v66);
      *&v66 = 0xD000000000000021;
      *(&v66 + 1) = v52;
      v31._countAndFlagsBits = v25;
      v32 = v64;
      v31._object = v64;
      String.append(_:)(v31);
      v31._countAndFlagsBits = 39;
      v31._object = 0xE100000000000000;
      String.append(_:)(v31);
      v65 = v66;
      v33 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      v30 = swift_allocError(&type metadata for MLCreateError, v33, 0, 0);
      *v34 = v65;
      a3 = 0;
      *(v34 + 16) = 0;
      *(v34 + 32) = 0;
      *(v34 + 48) = 1;
      swift_willThrow();
      outlined consume of Result<_DataTable, Error>(v27, 0);
      *&v65 = 0;
LABEL_14:
      v35 = v62;
      goto LABEL_15;
    }

    v35 = v62;
    v36 = *(v62 + 16);
    v56 = v67;
    outlined copy of Result<_DataTable, Error>(v67, 0);
    outlined copy of Result<_DataTable, Error>(v35, 0);

    v37 = v25;
    v32 = v64;
    v55 = v36;
    v38 = v65;
    CMLTable.addColumn(name:_:)(v37, v64, v36);
    v30 = v38;
    if (!v38)
    {
      outlined consume of Result<_DataTable, Error>(v35, 0);

      outlined consume of Result<_DataTable, Error>(v56, 0);
      *&v65 = 0;
      if (!v68)
      {
        v41 = v67;
        outlined copy of Result<_DataTable, Error>(v67, 0);
        _DataTable.columnNamesDidChange()();
        outlined consume of Result<_DataTable, Error>(v41, 0);
      }

      goto LABEL_16;
    }

    outlined consume of Result<_DataTable, Error>(v35, 0);
    outlined consume of Result<_DataTable, Error>(v56, 0);
    *&v65 = 0;
LABEL_15:
    outlined consume of Result<_DataTable, Error>(v67, v68);
    v67 = v30;
    LOBYTE(v68) = 1;
LABEL_16:
    v40 = v69;
    v32;
    v19 = v54;
    (*(v63 + 8))(v54, v60);
    outlined consume of Result<_DataTable, Error>(v35, v40);
    v18 = v51 + v48;
    v17 = v61 - 1;
    if (v61 == 1)
    {
      goto LABEL_20;
    }
  }

  v46 = type metadata accessor for DataFrame(0);
  (*(*(v46 - 8) + 8))(v57, v46);
  (*(v63 + 8))(v19, v60);
  v58;
  return outlined consume of Result<_DataTable, Error>(v67, v68);
}

uint64_t DataFrame.init(_:)(uint64_t a1)
{
  v2 = a1;
  v3 = v1;
  v151 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLMultiArray>);
  v152 = *(v151 - 8);
  v4 = *(v152 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v169 = v150;
  v153 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[(MLDataValue, MLDataValue)]>);
  v154 = *(v153 - 8);
  v7 = *(v154 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v155 = v150;
  v156 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[MLDataValue]>);
  v157 = *(v156 - 8);
  v10 = *(v157 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v170 = v150;
  v158 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v159 = *(v158 - 8);
  v13 = *(v159 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v160 = v150;
  v161 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v162 = *(v161 - 8);
  v16 = *(v162 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v163 = v150;
  v164 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v165 = *(v164 - 8);
  v19 = *(v165 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v166 = v150;
  v22 = *a1;
  LOBYTE(v2) = *(a1 + 8);
  v171 = v3;
  DataFrame.init()(&demangling cache variable for type metadata for Column<Int>);
  v176 = v2;
  if (v2)
  {
    outlined copy of Result<_DataTable, Error>(v22, 1);
    v23 = tc_v1_flex_list_create(0);
    if (!v23)
    {
      BUG();
    }

    v24 = v23;
    outlined consume of Result<_DataTable, Error>(v22, 1);
    v25 = type metadata accessor for CMLSequence();
    v26 = swift_allocObject(v25, 25, 7);
    *(v26 + 16) = v24;
    *(v26 + 24) = 1;
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(v22, 0);
    _DataTable.columnNames.getter();
    outlined consume of Result<_DataTable, Error>(v22, 0);
    v26 = v175;
  }

  *&v175 = v22;
  BYTE8(v175) = v176;
  v179 = v22;
  v173 = v176;
  outlined copy of Result<_DataTable, Error>(v22, v176);
  v168 = MLDataTable.columnTypes.getter();
  outlined consume of Result<_DataTable, Error>(v175, SBYTE8(v175));
  swift_retain_n(v26, 2);
  v27 = CMLSequence.size.getter();
  v28 = specialized RandomAccessCollection<>.distance(from:to:)(0, v27);

  if (v28)
  {
    v29 = 0;
    v30 = 0;
    do
    {
      CMLSequence.value(at:)(v30);
      if (v29)
      {
        swift_unexpectedError(v29, "CreateML/SequenceType.swift", 27, 1, 76);
        BUG();
      }

      v31 = CMLFeatureValue.stringValue()();
      v174._countAndFlagsBits = v31._countAndFlagsBits;
      if (v29)
      {

        v29;
        *&v175 = 0;
        *(&v175 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(37);
        SBYTE8(v175);
        *&v175 = 0xD000000000000022;
        *(&v175 + 1) = "able.ColumnNames.swift" + 0x8000000000000000;
        v150[2] = v30;
        v147._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        object = v147._object;
        String.append(_:)(v147);
        object;
        v149._countAndFlagsBits = 46;
        v149._object = 0xE100000000000000;
        String.append(_:)(v149);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v175, *(&v175 + 1), "CreateML/MLDataTable.ColumnNames.swift", 38, 2, 17, 0);
        BUG();
      }

      v33 = v31._object;

      v34 = CMLSequence.size.getter();
      v35 = specialized RandomAccessCollection<>.distance(from:to:)(0, v34);

      if (v30 >= v35)
      {
        BUG();
      }

      v36 = v168;
      if (*(v168 + 16))
      {

        v37 = specialized __RawDictionaryStorage.find<A>(_:)(v174._countAndFlagsBits, v33);
        if (v38)
        {
          v39 = *(*(v36 + 56) + v37);
          v33;
          switch(v39)
          {
            case 0:
              if (v176)
              {
                v132 = v179;
                swift_willThrow();
                outlined copy of Result<_DataTable, Error>(v132, 1);
                outlined copy of Result<_DataTable, Error>(v132, 1);
                *&v175 = 0;
                *(&v175 + 1) = 0xE000000000000000;
                _StringGuts.grow(_:)(34);
                SBYTE8(v175);
                *&v175 = 0xD00000000000001FLL;
                *(&v175 + 1) = "ml.activityclassifier" + 0x8000000000000000;
                v133._countAndFlagsBits = v174._countAndFlagsBits;
                v133._object = v33;
                String.append(_:)(v133);
                v133._object = 0xE100000000000000;
                v133._countAndFlagsBits = 34;
                String.append(_:)(v133);
                v174 = v175;
                v134 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                v45 = swift_allocError(&type metadata for MLCreateError, v134, 0, 0);
                *v135 = v174;
                *(v135 + 16) = 0;
                *(v135 + 32) = 0;
                *(v135 + 48) = 1;
                outlined consume of Result<_DataTable, Error>(v179, v173);
                v43 = 1;
LABEL_58:
                outlined consume of Result<_DataTable, Error>(v45, v43);
                outlined consume of Result<_DataTable, Error>(v179, v176);
                BUG();
              }

              v40 = v179;
              v178 = *(v179 + 16);
              outlined copy of Result<_DataTable, Error>(v179, 0);
              v41 = v40;
              v42 = v178;
              outlined copy of Result<_DataTable, Error>(v41, 0);

              v177 = specialized String.withCString<A>(_:)(closure #1 in CMLTable.column(name:)partial apply, v42, v174._countAndFlagsBits, v33);
              v172 = 0;

              v43 = 0;
              v44 = type metadata accessor for _UntypedColumn();
              v45 = swift_allocObject(v44, 24, 7);
              *(v45 + 16) = v177;
              outlined consume of Result<_DataTable, Error>(v179, 0);
              outlined copy of Result<_DataTable, Error>(v45, 0);
              _UntypedColumn.type.getter();
              outlined consume of Result<_DataTable, Error>(v45, 0);
              if (v175)
              {
                v176 = 0;
                goto LABEL_58;
              }

              outlined consume of Result<_DataTable, Error>(v179, 0);
              v46 = v45;
              outlined copy of Result<_DataTable, Error>(v45, 0);
              v47 = CMLColumn.size.getter();
              v178 = v46;
              outlined consume of Result<_DataTable, Error>(v46, 0);
              if (v47 < 0)
              {
                BUG();
              }

              v48 = v178;
              outlined copy of Result<_DataTable, Error>(v178, 0);
              v49 = v48;
              v29 = v172;
              *&v175 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_SiSgs5NeverOTg5059_s11TabularData0B5FrameV8CreateMLEyAcD11MLDataTableVcfcSiSgR5XEfU_0K2ML0O6ColumnVySiGTf1cn_n(0, v47, v49, 0, v32);
              v177 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int?]);
              v50 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Int?] and conformance [A], &demangling cache variable for type metadata for [Int?], &protocol conformance descriptor for [A]);
              v51 = v166;
              Column.init<A>(name:contents:)(v174._countAndFlagsBits, v33, &v175, &type metadata for Int, v177, v50);
              DataFrame.append<A>(column:)(v51, &type metadata for Int);
              outlined consume of Result<_DataTable, Error>(v178, 0);
              v52 = v51;
              v53 = v164;
              v54 = v165;
LABEL_39:
              (*(v54 + 8))(v52, v53);
              break;
            case 1:
              if (v176)
              {
                v128 = v179;
                swift_willThrow();
                outlined copy of Result<_DataTable, Error>(v128, 1);
                outlined copy of Result<_DataTable, Error>(v128, 1);
                *&v175 = 0;
                *(&v175 + 1) = 0xE000000000000000;
                _StringGuts.grow(_:)(34);
                SBYTE8(v175);
                *&v175 = 0xD00000000000001FLL;
                *(&v175 + 1) = "ml.activityclassifier" + 0x8000000000000000;
                v129._countAndFlagsBits = v174._countAndFlagsBits;
                v129._object = v33;
                String.append(_:)(v129);
                v129._object = 0xE100000000000000;
                v129._countAndFlagsBits = 34;
                String.append(_:)(v129);
                v174 = v175;
                v130 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                v73 = swift_allocError(&type metadata for MLCreateError, v130, 0, 0);
                *v131 = v174;
                *(v131 + 16) = 0;
                *(v131 + 32) = 0;
                *(v131 + 48) = 1;
                outlined consume of Result<_DataTable, Error>(v179, v173);
                v71 = 1;
LABEL_55:
                outlined consume of Result<_DataTable, Error>(v73, v71);
                outlined consume of Result<_DataTable, Error>(v179, v176);
                BUG();
              }

              v68 = v179;
              v178 = *(v179 + 16);
              outlined copy of Result<_DataTable, Error>(v179, 0);
              v69 = v68;
              v70 = v178;
              outlined copy of Result<_DataTable, Error>(v69, 0);

              v177 = specialized String.withCString<A>(_:)(closure #1 in CMLTable.column(name:)partial apply, v70, v174._countAndFlagsBits, v33);
              v172 = 0;

              v71 = 0;
              v72 = type metadata accessor for _UntypedColumn();
              v73 = swift_allocObject(v72, 24, 7);
              *(v73 + 16) = v177;
              outlined consume of Result<_DataTable, Error>(v179, 0);
              outlined copy of Result<_DataTable, Error>(v73, 0);
              _UntypedColumn.type.getter();
              outlined consume of Result<_DataTable, Error>(v73, 0);
              if (v175 != 1)
              {
                v176 = 0;
                goto LABEL_55;
              }

              outlined consume of Result<_DataTable, Error>(v179, 0);
              v74 = v73;
              outlined copy of Result<_DataTable, Error>(v73, 0);
              v75 = CMLColumn.size.getter();
              v178 = v74;
              outlined consume of Result<_DataTable, Error>(v74, 0);
              if (v75 < 0)
              {
                BUG();
              }

              v76 = v178;
              outlined copy of Result<_DataTable, Error>(v178, 0);
              v77 = v76;
              v29 = v172;
              *&v175 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_SdSgs5NeverOTg567_s11TabularData0B5FrameV8CreateMLEyAcD11MLDataTableVcfcSdSgSiXEfU0_0K2ML0O6ColumnVySdGTf1cn_n(0, v75, v77, 0, v32);
              v177 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double?]);
              v78 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Double?] and conformance [A], &demangling cache variable for type metadata for [Double?], &protocol conformance descriptor for [A]);
              v79 = v163;
              Column.init<A>(name:contents:)(v174._countAndFlagsBits, v33, &v175, &type metadata for Double, v177, v78);
              DataFrame.append<A>(column:)(v79, &type metadata for Double);
              outlined consume of Result<_DataTable, Error>(v178, 0);
              v52 = v79;
              v53 = v161;
              v54 = v162;
              goto LABEL_39;
            case 2:
              if (v176)
              {
                v124 = v179;
                swift_willThrow();
                outlined copy of Result<_DataTable, Error>(v124, 1);
                outlined copy of Result<_DataTable, Error>(v124, 1);
                *&v175 = 0;
                *(&v175 + 1) = 0xE000000000000000;
                _StringGuts.grow(_:)(34);
                SBYTE8(v175);
                *&v175 = 0xD00000000000001FLL;
                *(&v175 + 1) = "ml.activityclassifier" + 0x8000000000000000;
                v125._countAndFlagsBits = v174._countAndFlagsBits;
                v125._object = v33;
                String.append(_:)(v125);
                v125._object = 0xE100000000000000;
                v125._countAndFlagsBits = 34;
                String.append(_:)(v125);
                v174 = v175;
                v126 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                v85 = swift_allocError(&type metadata for MLCreateError, v126, 0, 0);
                *v127 = v174;
                *(v127 + 16) = 0;
                *(v127 + 32) = 0;
                *(v127 + 48) = 1;
                outlined consume of Result<_DataTable, Error>(v179, v173);
                v83 = 1;
LABEL_52:
                outlined consume of Result<_DataTable, Error>(v85, v83);
                outlined consume of Result<_DataTable, Error>(v179, v176);
                BUG();
              }

              v80 = v179;
              v178 = *(v179 + 16);
              outlined copy of Result<_DataTable, Error>(v179, 0);
              v81 = v80;
              v82 = v178;
              outlined copy of Result<_DataTable, Error>(v81, 0);

              v177 = specialized String.withCString<A>(_:)(closure #1 in CMLTable.column(name:)partial apply, v82, v174._countAndFlagsBits, v33);
              v172 = 0;

              v83 = 0;
              v84 = type metadata accessor for _UntypedColumn();
              v85 = swift_allocObject(v84, 24, 7);
              *(v85 + 16) = v177;
              outlined consume of Result<_DataTable, Error>(v179, 0);
              outlined copy of Result<_DataTable, Error>(v85, 0);
              _UntypedColumn.type.getter();
              outlined consume of Result<_DataTable, Error>(v85, 0);
              if (v175 != 2)
              {
                v176 = 0;
                goto LABEL_52;
              }

              outlined consume of Result<_DataTable, Error>(v179, 0);
              v86 = v85;
              outlined copy of Result<_DataTable, Error>(v85, 0);
              v87 = CMLColumn.size.getter();
              v178 = v86;
              outlined consume of Result<_DataTable, Error>(v86, 0);
              if (v87 < 0)
              {
                BUG();
              }

              v88 = v178;
              outlined copy of Result<_DataTable, Error>(v178, 0);
              v89 = v88;
              v29 = v172;
              *&v175 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_SSSgs5NeverOTg567_s11TabularData0B5FrameV8CreateMLEyAcD11MLDataTableVcfcSSSgSiXEfU1_0K2ML0O6ColumnVySSGTf1cn_n(0, v87, v89, 0, v32);
              v177 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String?]);
              v90 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String?] and conformance [A], &demangling cache variable for type metadata for [String?], &protocol conformance descriptor for [A]);
              v91 = v160;
              Column.init<A>(name:contents:)(v174._countAndFlagsBits, v33, &v175, &type metadata for String, v177, v90);
              DataFrame.append<A>(column:)(v91, &type metadata for String);
              outlined consume of Result<_DataTable, Error>(v178, 0);
              v52 = v91;
              v53 = v158;
              v54 = v159;
              goto LABEL_39;
            case 3:
              if (v176)
              {
                v123 = v179;
                swift_willThrow();
                outlined copy of Result<_DataTable, Error>(v123, 1);
                outlined copy of Result<_DataTable, Error>(v123, 1);
                *&v175 = 0;
                *(&v175 + 1) = 0xE000000000000000;
                _StringGuts.grow(_:)(34);
                SBYTE8(v175);
                *&v175 = 0xD00000000000001FLL;
                *(&v175 + 1) = "ml.activityclassifier" + 0x8000000000000000;
                v144._countAndFlagsBits = v174._countAndFlagsBits;
                v144._object = v33;
                String.append(_:)(v144);
                v144._object = 0xE100000000000000;
                v144._countAndFlagsBits = 34;
                String.append(_:)(v144);
                v174 = v175;
                v145 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                v60 = swift_allocError(&type metadata for MLCreateError, v145, 0, 0);
                *v146 = v174;
                *(v146 + 16) = 0;
                *(v146 + 32) = 0;
                *(v146 + 48) = 1;
                outlined consume of Result<_DataTable, Error>(v179, v173);
                v58 = 1;
                goto LABEL_66;
              }

              v55 = v179;
              v178 = *(v179 + 16);
              outlined copy of Result<_DataTable, Error>(v179, 0);
              v56 = v55;
              v57 = v178;
              outlined copy of Result<_DataTable, Error>(v56, 0);

              v177 = specialized String.withCString<A>(_:)(closure #1 in CMLTable.column(name:)partial apply, v57, v174._countAndFlagsBits, v33);
              v172 = 0;

              v58 = 0;
              v59 = type metadata accessor for _UntypedColumn();
              v60 = swift_allocObject(v59, 24, 7);
              *(v60 + 16) = v177;
              outlined consume of Result<_DataTable, Error>(v179, 0);
              outlined copy of Result<_DataTable, Error>(v60, 0);
              _UntypedColumn.type.getter();
              outlined consume of Result<_DataTable, Error>(v60, 0);
              if (v175 != 3)
              {
                v176 = 0;
LABEL_66:
                outlined consume of Result<_DataTable, Error>(v60, v58);
                outlined consume of Result<_DataTable, Error>(v179, v176);
                BUG();
              }

              outlined consume of Result<_DataTable, Error>(v179, 0);
              v61 = v60;
              outlined copy of Result<_DataTable, Error>(v60, 0);
              v62 = CMLColumn.size.getter();
              v178 = v61;
              outlined consume of Result<_DataTable, Error>(v61, 0);
              if (v62 < 0)
              {
                BUG();
              }

              v63 = v178;
              outlined copy of Result<_DataTable, Error>(v178, 0);
              v64 = v63;
              v29 = v172;
              *&v175 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_Say8CreateML11MLDataValueOGSgs5NeverOTg5025_s11TabularData0B5FrameV8d9MLEyAcD11f17TableVcfcSayAD0F5G12OGSgSiXEfU2_AG0F6ColumnVyAI12SequenceTypeVGTf1cn_n(0, v62, v64, 0, v32);
              v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLDataValue]);
              v177 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [[MLDataValue]?]);
              v66 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [[MLDataValue]?] and conformance [A], &demangling cache variable for type metadata for [[MLDataValue]?], &protocol conformance descriptor for [A]);
              Column.init<A>(name:contents:)(v174._countAndFlagsBits, v33, &v175, v65, v177, v66);
              v67 = v170;
              DataFrame.append<A>(column:)(v170, v65);
              outlined consume of Result<_DataTable, Error>(v178, 0);
              v52 = v67;
              v53 = v156;
              v54 = v157;
              goto LABEL_39;
            case 4:
              if (v176)
              {
                v140 = v179;
                swift_willThrow();
                outlined copy of Result<_DataTable, Error>(v140, 1);
                outlined copy of Result<_DataTable, Error>(v140, 1);
                *&v175 = 0;
                *(&v175 + 1) = 0xE000000000000000;
                _StringGuts.grow(_:)(34);
                SBYTE8(v175);
                *&v175 = 0xD00000000000001FLL;
                *(&v175 + 1) = "ml.activityclassifier" + 0x8000000000000000;
                v141._countAndFlagsBits = v174._countAndFlagsBits;
                v141._object = v33;
                String.append(_:)(v141);
                v141._object = 0xE100000000000000;
                v141._countAndFlagsBits = 34;
                String.append(_:)(v141);
                v174 = v175;
                v142 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                v97 = swift_allocError(&type metadata for MLCreateError, v142, 0, 0);
                *v143 = v174;
                *(v143 + 16) = 0;
                *(v143 + 32) = 0;
                *(v143 + 48) = 1;
                outlined consume of Result<_DataTable, Error>(v179, v173);
                v95 = 1;
LABEL_64:
                outlined consume of Result<_DataTable, Error>(v97, v95);
                outlined consume of Result<_DataTable, Error>(v179, v176);
                BUG();
              }

              v92 = v179;
              v178 = *(v179 + 16);
              outlined copy of Result<_DataTable, Error>(v179, 0);
              v93 = v92;
              v94 = v178;
              outlined copy of Result<_DataTable, Error>(v93, 0);

              v177 = specialized String.withCString<A>(_:)(closure #1 in CMLTable.column(name:)partial apply, v94, v174._countAndFlagsBits, v33);
              v167 = 0;
              v172 = v33;

              v95 = 0;
              v96 = type metadata accessor for _UntypedColumn();
              v97 = swift_allocObject(v96, 24, 7);
              *(v97 + 16) = v177;
              v98 = v179;
              outlined consume of Result<_DataTable, Error>(v179, 0);
              outlined copy of Result<_DataTable, Error>(v97, 0);
              _UntypedColumn.type.getter();
              outlined consume of Result<_DataTable, Error>(v97, 0);
              if (v175 != 4)
              {
                v176 = 0;
                goto LABEL_64;
              }

              outlined consume of Result<_DataTable, Error>(v98, 0);
              v99 = v97;
              outlined copy of Result<_DataTable, Error>(v97, 0);
              v100 = CMLColumn.size.getter();
              outlined consume of Result<_DataTable, Error>(v99, 0);
              if (v100 < 0)
              {
                BUG();
              }

              v178 = v99;
              outlined copy of Result<_DataTable, Error>(v99, 0);
              v29 = v167;
              ML11MLDataValueO3key_AI5valuetGSgs5NeverOTg5025_s11TabularData0B5FrameV8d9MLEyAcD11f17TableVcfcSayAD0F5G26O3key_AH5valuetGSgSiXEfU3_AG0F6ColumnVyAI14DictionaryTypeVGTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_Say8CreateML11MLDataValueO3key_AI5valuetGSgs5NeverOTg5025_s11TabularData0B5FrameV8d9MLEyAcD11f17TableVcfcSayAD0F5G26O3key_AH5valuetGSgSiXEfU3_AG0F6ColumnVyAI14DictionaryTypeVGTf1cn_n(0, v100, v99, 0, v32);
              v102 = ML11MLDataValueO3key_AI5valuetGSgs5NeverOTg5025_s11TabularData0B5FrameV8d9MLEyAcD11f17TableVcfcSayAD0F5G26O3key_AH5valuetGSgSiXEfU3_AG0F6ColumnVyAI14DictionaryTypeVGTf1cn_n;
              v103 = specialized _arrayForceCast<A, B>(_:)(ML11MLDataValueO3key_AI5valuetGSgs5NeverOTg5025_s11TabularData0B5FrameV8d9MLEyAcD11f17TableVcfcSayAD0F5G26O3key_AH5valuetGSgSiXEfU3_AG0F6ColumnVyAI14DictionaryTypeVGTf1cn_n);
              v102;
              *&v175 = v103;
              v104 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [(MLDataValue, MLDataValue)]);
              v177 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [[(MLDataValue, MLDataValue)]?]);
              v105 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [[(MLDataValue, MLDataValue)]?] and conformance [A], &demangling cache variable for type metadata for [[(MLDataValue, MLDataValue)]?], &protocol conformance descriptor for [A]);
              v106 = v155;
              Column.init<A>(name:contents:)(v174._countAndFlagsBits, v172, &v175, v104, v177, v105);
              DataFrame.append<A>(column:)(v106, v104);
              outlined consume of Result<_DataTable, Error>(v178, 0);
              v52 = v106;
              v53 = v153;
              v54 = v154;
              goto LABEL_39;
            case 5:
              if (v176)
              {
                v136 = v179;
                swift_willThrow();
                outlined copy of Result<_DataTable, Error>(v136, 1);
                outlined copy of Result<_DataTable, Error>(v136, 1);
                *&v175 = 0;
                *(&v175 + 1) = 0xE000000000000000;
                _StringGuts.grow(_:)(34);
                SBYTE8(v175);
                *&v175 = 0xD00000000000001FLL;
                *(&v175 + 1) = "ml.activityclassifier" + 0x8000000000000000;
                v137._countAndFlagsBits = v174._countAndFlagsBits;
                v137._object = v33;
                String.append(_:)(v137);
                v137._object = 0xE100000000000000;
                v137._countAndFlagsBits = 34;
                String.append(_:)(v137);
                v174 = v175;
                v138 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                v112 = swift_allocError(&type metadata for MLCreateError, v138, 0, 0);
                *v139 = v174;
                *(v139 + 16) = 0;
                *(v139 + 32) = 0;
                *(v139 + 48) = 1;
                outlined consume of Result<_DataTable, Error>(v179, v173);
                v110 = 1;
LABEL_61:
                outlined consume of Result<_DataTable, Error>(v112, v110);
                outlined consume of Result<_DataTable, Error>(v179, v176);
                BUG();
              }

              v107 = v179;
              v178 = *(v179 + 16);
              outlined copy of Result<_DataTable, Error>(v179, 0);
              v108 = v107;
              v109 = v178;
              outlined copy of Result<_DataTable, Error>(v108, 0);

              v177 = specialized String.withCString<A>(_:)(partial apply for closure #1 in CMLTable.column(name:), v109, v174._countAndFlagsBits, v33);
              v172 = 0;

              v110 = 0;
              v111 = type metadata accessor for _UntypedColumn();
              v112 = swift_allocObject(v111, 24, 7);
              *(v112 + 16) = v177;
              outlined consume of Result<_DataTable, Error>(v179, 0);
              outlined copy of Result<_DataTable, Error>(v112, 0);
              _UntypedColumn.type.getter();
              outlined consume of Result<_DataTable, Error>(v112, 0);
              if (v175 != 5)
              {
                v176 = 0;
                goto LABEL_61;
              }

              outlined consume of Result<_DataTable, Error>(v179, 0);
              v113 = v112;
              outlined copy of Result<_DataTable, Error>(v112, 0);
              v114 = CMLColumn.size.getter();
              v178 = v113;
              outlined consume of Result<_DataTable, Error>(v113, 0);
              if (v114 < 0)
              {
                BUG();
              }

              v115 = v178;
              outlined copy of Result<_DataTable, Error>(v178, 0);
              v116 = v115;
              v29 = v172;
              *&v175 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_So12MLMultiArrayCSgs5NeverOTg5059_s11TabularData0B5FrameV8CreateMLEyAcD11MLDataTableVcfcSo12dE11CSgSiXEfU4_0M2ML0Q6ColumnVyAM0Q5ValueO05MultiE4TypeVGTf1cn_n(0, v114, v116, 0, v32);
              v117 = type metadata accessor for MLMultiArray();
              v177 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLMultiArray?]);
              v118 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [MLMultiArray?] and conformance [A], &demangling cache variable for type metadata for [MLMultiArray?], &protocol conformance descriptor for [A]);
              Column.init<A>(name:contents:)(v174._countAndFlagsBits, v33, &v175, v117, v177, v118);
              v119 = v169;
              DataFrame.append<A>(column:)(v169, v117);
              outlined consume of Result<_DataTable, Error>(v178, 0);
              v52 = v119;
              v53 = v151;
              v54 = v152;
              goto LABEL_39;
            case 6:
              goto LABEL_17;
          }
        }

        else
        {
          swift_bridgeObjectRelease_n(v33, 2);
        }
      }

      else
      {
LABEL_17:
        v33;
      }

      ++v30;

      v120 = CMLSequence.size.getter();
      v121 = specialized RandomAccessCollection<>.distance(from:to:)(0, v120);
    }

    while (v30 != v121);
  }

  outlined consume of Result<_DataTable, Error>(v179, v173);
  v168;
}

uint64_t DataFrame.randomSplit(strategy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = v3;
  v40 = a2;
  v41 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame.Slice, DataFrame.Slice));
  v5 = *(*(v42 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v37 = &v35;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v39 = &v35;
  v10 = alloca(v5);
  v11 = alloca(v5);
  v38 = &v35;
  v12 = type metadata accessor for DataFrame.Rows(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v43 = *a3;
  v36 = *(a3 + 8);
  v45 = *(a3 + 16);
  v17 = *(a3 + 17);
  DataFrame.rows.getter(0, a2, v18, v19);
  v20 = DataFrame.Rows.count.getter();
  (*(v13 + 8))(&v35, v12);
  if (v17 != 1)
  {
    v21 = v36;
    if (v45)
    {
      v21 = 1;
    }

    if (v43 != 0.0)
    {
      goto LABEL_8;
    }

LABEL_7:
    v22 = type metadata accessor for DataFrame.Slice(0);
    __swift_storeEnumTagSinglePayload(v41, 1, 1, v22);
    return specialized DataFrameProtocol.subscript.getter(0);
  }

  if (v20 < 50)
  {
    goto LABEL_7;
  }

  v43 = dbl_33FA70[v20 < 0xC8];
  v21 = 1;
LABEL_8:
  v24 = v38;
  v25 = v38 + *(v42 + 48);
  v26 = type metadata accessor for DataFrame(0);
  DataFrameProtocol.randomSplit(by:seed:)(v24, v25, v21, 0, v26, &protocol witness table for DataFrame, v43);
  v27 = v39;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v24, v39, &demangling cache variable for type metadata for (DataFrame.Slice, DataFrame.Slice));
  v28 = v27 + *(v42 + 48);
  v29 = type metadata accessor for DataFrame.Slice(0);
  v44 = *(v29 - 8);
  v30 = v41;
  v31 = v27;
  v32 = *(v44 + 32);
  v32(v41, v31, v29);
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
  v33 = v37;
  outlined init with take of (DataFrame.Slice, DataFrame.Slice)(v24, v37);
  v32(v40, v33 + *(v42 + 48), v29);
  v34 = *(v44 + 8);
  v34(v33, v29);
  return (v34)(v28, v29);
}

uint64_t *MLUntypedColumn.init(_:convertArraysToShapedArrays:)(uint64_t a1, int a2, __m128 a3)
{
  v604 = v4;
  v576 = a2;
  v519 = v3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v568 = &v512;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v551 = &v512;
  v584 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Int32>>);
  v534 = *(v584 - 8);
  v10 = *(v534 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v585 = &v512;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>?) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v569 = &v512;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v552 = &v512;
  v586 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Double>>);
  v535 = *(v586 - 8);
  v18 = *(v535 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v587 = &v512;
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>?) - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v570 = &v512;
  v24 = alloca(v21);
  v25 = alloca(v21);
  v553 = &v512;
  v588 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Float>>);
  v536 = *(v588 - 8);
  v26 = *(v536 + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v589 = &v512;
  v582 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLMultiArray>);
  v537 = *(v582 - 8);
  v29 = *(v537 + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v583 = &v512;
  v594 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[AnyHashable : Any?]>);
  v550 = *(v594 - 8);
  v32 = *(v550 + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v595 = &v512;
  v35 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Any]>) - 8) + 64);
  v36 = alloca(v35);
  v37 = alloca(v35);
  v538 = &v512;
  v38 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Any?]>) - 8) + 64);
  v39 = alloca(v38);
  v40 = alloca(v38);
  v533 = &v512;
  v41 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : String]>) - 8) + 64);
  v42 = alloca(v41);
  v43 = alloca(v41);
  v532 = &v512;
  v44 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Float]>) - 8) + 64);
  v45 = alloca(v44);
  v46 = alloca(v44);
  v531 = &v512;
  v47 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Double]>) - 8) + 64);
  v48 = alloca(v47);
  v49 = alloca(v47);
  v530 = &v512;
  v50 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Int]>) - 8) + 64);
  v51 = alloca(v50);
  v52 = alloca(v50);
  v529 = &v512;
  v53 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Any]>) - 8) + 64);
  v54 = alloca(v53);
  v55 = alloca(v53);
  v528 = &v512;
  v56 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Any?]>) - 8) + 64);
  v57 = alloca(v56);
  v58 = alloca(v56);
  v527 = &v512;
  v59 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>) - 8) + 64);
  v60 = alloca(v59);
  v61 = alloca(v59);
  v526 = &v512;
  v581 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
  v546 = *(v581 - 8);
  v62 = *(v546 + 64);
  v63 = alloca(v62);
  v64 = alloca(v62);
  v554 = &v512;
  v65 = alloca(v62);
  v66 = alloca(v62);
  v522 = &v512;
  v67 = alloca(v62);
  v68 = alloca(v62);
  v566 = &v512;
  v567 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v549 = *(v567 - 8);
  v69 = *(v549 + 64);
  v70 = alloca(v69);
  v71 = alloca(v69);
  v525 = &v512;
  v72 = alloca(v69);
  v73 = alloca(v69);
  v575 = &v512;
  v580 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v544 = *(v580 - 8);
  v74 = *(v544 + 64);
  v75 = alloca(v74);
  v76 = alloca(v74);
  v555 = &v512;
  v77 = alloca(v74);
  v78 = alloca(v74);
  v520 = &v512;
  v79 = alloca(v74);
  v80 = alloca(v74);
  v565 = &v512;
  v542 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
  v548 = *(v542 - 8);
  v81 = *(v548 + 64);
  v82 = alloca(v81);
  v83 = alloca(v81);
  v524 = &v512;
  v84 = alloca(v81);
  v85 = alloca(v81);
  v543 = &v512;
  v540 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int32]>);
  v547 = *(v540 - 8);
  v86 = *(v547 + 64);
  v87 = alloca(v86);
  v88 = alloca(v86);
  v574 = &v512;
  v593 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>);
  v597 = *(v593 - 8);
  v89 = *(v597 + 64);
  v90 = alloca(v89);
  v91 = alloca(v89);
  v556 = &v512;
  v92 = alloca(v89);
  v93 = alloca(v89);
  v541 = &v512;
  v94 = alloca(v89);
  v95 = alloca(v89);
  v562 = &v512;
  v563 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int]>);
  v545 = *(v563 - 8);
  v96 = *(v545 + 64);
  v97 = alloca(v96);
  v98 = alloca(v96);
  v523 = &v512;
  v99 = alloca(v96);
  v100 = alloca(v96);
  v521 = &v512;
  v101 = alloca(v96);
  v102 = alloca(v96);
  v564 = &v512;
  v103 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Date?) - 8) + 64);
  v104 = alloca(v103);
  v105 = alloca(v103);
  v579 = &v512;
  v106 = alloca(v103);
  v107 = alloca(v103);
  v596 = &v512;
  v591 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Date>);
  v592 = *(v591 - 8);
  v108 = *(v592 + 64);
  v109 = alloca(v108);
  v110 = alloca(v108);
  *&v571 = &v512;
  v598 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v573 = *(v598 - 8);
  v111 = *(v573 + 64);
  v112 = alloca(v111);
  v113 = alloca(v111);
  *&v606 = &v512;
  v603 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v605 = *(v603 - 8);
  v114 = v605[8];
  v115 = alloca(v114);
  v116 = alloca(v114);
  v609 = &v512;
  v607 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Float>));
  v117 = *(*&v607 - 8);
  v118 = *(v117 + 64);
  v119 = alloca(v118);
  v120 = alloca(v118);
  v590.i64[0] = &v512;
  v121 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v599 = *(v121 - 8);
  v122 = *(v599 + 64);
  v123 = alloca(v122);
  v124 = alloca(v122);
  v608 = a1;
  v125 = AnyColumn.wrappedElementType.getter(&demangling cache variable for type metadata for Column<Int>);
  if (swift_dynamicCastMetatype(v125, &type metadata for Int))
  {
    AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
    v126 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
    v127 = dispatch thunk of Collection.count.getter(v121, v126);
    *&v606 = &v512;
    if (v127)
    {
      v578[0] = _swiftEmptyArrayStorage;
      v128 = 0;
      if (v127 > 0)
      {
        v128 = v127;
      }

      v609 = v127;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v128, 0);
      v607 = *v578;
      dispatch thunk of Collection.startIndex.getter(v121, v126);
      v129 = v609;
      if (v609 < 0)
      {
        BUG();
      }

      v130 = v607;
      v603 = v126;
      do
      {
        v609 = v129;
        v131 = dispatch thunk of Collection.subscript.read(v600, v572, v121, v126);
        v133 = *(v132 + 8) == 0;
        v134 = *v132;
        if (!v133)
        {
          v134 = 0.0;
        }

        v607 = v134;
        v135 = 0;
        if (!v133)
        {
          v135 = 6;
        }

        v131(v600, 0);
        *v578 = v130;
        v136 = v121;
        v137 = *(*&v130 + 16);
        v138 = *(*&v130 + 24);
        v139 = v137 + 1;
        if (v138 >> 1 <= v137)
        {
          v605 = v136;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v138 >= 2, v139, 1);
          v136 = v605;
          v130 = *v578;
        }

        *(*&v130 + 16) = v139;
        v140 = 24 * v137;
        *(*&v130 + v140 + 32) = v607;
        *(*&v130 + v140 + 40) = 0;
        *(*&v130 + v140 + 48) = v135;
        v121 = v136;
        v126 = v603;
        dispatch thunk of Collection.formIndex(after:)(v572, v136, v603);
        v129 = v609 - 1;
      }

      while (v609 != 1);
    }

    else
    {
      v130 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
    }

    (*(v599 + 8))(v606, v121);
    *v600 = v130;
    v159 = alloca(24);
    v160 = alloca(32);
    v514 = v600;
    v161 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
LABEL_103:
    ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(v161);
    v274 = v273;
    v275 = v600[0];
LABEL_104:
    v275;
    v276 = type metadata accessor for AnyColumn(0);
    (*(*(v276 - 8) + 8))(v608, v276);
LABEL_105:
    result = v519;
    *v519 = ML14_UntypedColumnC_s5Error_pTt1g5;
    *(result + 8) = v274 & 1;
    return result;
  }

  v599 = v117;
  v141 = *&v607;
  v142 = v608;
  v602 = v125;
  if (swift_dynamicCastMetatype(v125, &type metadata for Float))
  {
    AnyColumn.assumingType<A>(_:)(&type metadata for Float, &type metadata for Float);
    v143 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Float> and conformance Column<A>, &demangling cache variable for type metadata for Column<Float>, &protocol conformance descriptor for Column<A>);
    v144 = v141;
    v145 = dispatch thunk of Collection.count.getter(v141, v143);
    if (v145)
    {
      v578[0] = _swiftEmptyArrayStorage;
      v148 = 0;
      if (v145 > 0)
      {
        v148 = v145;
      }

      *&v606 = v145;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v148, 0);
      v149 = v578[0];
      v150 = v590.i64[0];
      dispatch thunk of Collection.startIndex.getter(v144, v143);
      v151 = v606;
      if (v606 < 0)
      {
        BUG();
      }

      v603 = v143;
      do
      {
        *&v606 = v151;
        v152 = dispatch thunk of Collection.subscript.read(v600, v572, v144, v143);
        LOBYTE(v609) = *(v153 + 4) != 0;
        v154 = 0.0;
        if (!v609)
        {
          v154 = *v153;
        }

        v152(v600, 0);
        v578[0] = v149;
        v155 = v149[2];
        v156 = v155 + 1;
        if (v149[3] >> 1 <= v155)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v149[3] >= 2uLL, v155 + 1, 1);
          v156 = v155 + 1;
          v150 = v590.i64[0];
          v149 = v578[0];
        }

        v157 = 5 * v609 + 1;
        v149[2] = v156;
        v158 = 3 * v155;
        *&v149[v158 + 4] = v154;
        v149[v158 + 5] = 0;
        LOBYTE(v149[v158 + 6]) = v157;
        v144 = *&v607;
        v143 = v603;
        dispatch thunk of Collection.formIndex(after:)(v572, *&v607, v603);
        v151 = v606 - 1;
        v147 = v572;
      }

      while (v606 != 1);
    }

    else
    {
      v149 = _swiftEmptyArrayStorage;
      v150 = v590.i64[0];
    }

    (*(v599 + 8))(v150, v144, v146, v147);
    *&v600[0] = v149;
    v183 = alloca(24);
    v184 = alloca(32);
    v514 = v600;
    v161 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
    goto LABEL_103;
  }

  v162 = v602;
  v163 = v142;
  if (swift_dynamicCastMetatype(v602, &type metadata for Double))
  {
    AnyColumn.assumingType<A>(_:)(&type metadata for Double, &type metadata for Double);
    v164 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Double> and conformance Column<A>, &demangling cache variable for type metadata for Column<Double>, &protocol conformance descriptor for Column<A>);
    v165 = v603;
    v166 = dispatch thunk of Collection.count.getter(v603, v164);
    if (v166)
    {
      v167 = v166;
      v578[0] = _swiftEmptyArrayStorage;
      v168 = 0;
      if (v166 > 0)
      {
        v168 = v166;
      }

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v168, 0);
      v169 = v164;
      *&v606 = v578[0];
      v170 = v165;
      v607 = *&v169;
      dispatch thunk of Collection.startIndex.getter(v165, v169);
      v598 = v167;
      if (v167 < 0)
      {
        BUG();
      }

      v171 = *&v607;
      do
      {
        v172 = dispatch thunk of Collection.subscript.read(v600, v572, v170, v171);
        if (*(v173 + 8))
        {
          v174 = 0;
        }

        else
        {
          v174 = *v173;
        }

        v175 = v606;
        v176 = *(v173 + 8) != 0;
        v172(v600, 0);
        v578[0] = v175;
        v177 = *(v175 + 16);
        v178 = *(v175 + 24);
        v179 = v177 + 1;
        if (v178 >> 1 <= v177)
        {
          LOBYTE(v606) = v176;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v178 >= 2, v177 + 1, 1);
          v179 = v177 + 1;
          v176 = v606;
          v175 = v578[0];
        }

        *(v175 + 16) = v179;
        v180 = 24 * v177;
        *(v175 + v180 + 32) = v174;
        *(v175 + v180 + 40) = 0;
        *&v606 = v175;
        *(v175 + v180 + 48) = 5 * v176 + 1;
        v181 = v609;
        v170 = v603;
        v171 = *&v607;
        dispatch thunk of Collection.formIndex(after:)(v572, v603, *&v607);
        v133 = v598-- == 1;
        v182 = v605;
      }

      while (!v133);
      v185 = v181;
      v165 = v170;
      v186 = v606;
    }

    else
    {
      v186 = _swiftEmptyArrayStorage;
      v182 = v605;
      v185 = v609;
    }

    (v182[1])(v185, v165);
    *&v600[0] = v186;
    v203 = alloca(24);
    v204 = alloca(32);
    v514 = v600;
    v161 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
    goto LABEL_103;
  }

  if (swift_dynamicCastMetatype(v162, &type metadata for String))
  {
    v187 = v606;
    AnyColumn.assumingType<A>(_:)(&type metadata for String, &type metadata for String);
    v188 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
    v189 = v598;
    v190 = dispatch thunk of Collection.count.getter(v598, v188);
    if (v190)
    {
      v578[0] = _swiftEmptyArrayStorage;
      v191 = 0;
      if (v190 > 0)
      {
        v191 = v190;
      }

      v609 = v190;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v191, 0);
      v607 = *v578;
      dispatch thunk of Collection.startIndex.getter(v189, v188);
      v192 = v609;
      if (v609 < 0)
      {
        BUG();
      }

      v605 = v188;
      do
      {
        v609 = v192;
        v194 = dispatch thunk of Collection.subscript.read(v600, v572, v189, v188);
        v195 = v193[1];
        v196 = v195;
        if (v195)
        {
          v196 = *v193;
        }

        v603 = v196;

        v194(v600, 0);
        v197 = v607;
        *v578 = v607;
        v198 = *(*&v607 + 16);
        v199 = *(*&v607 + 24);
        v200 = v198 + 1;
        if (v199 >> 1 <= v198)
        {
          *&v607 = v198 + 1;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v199 >= 2, v200, 1);
          v200 = *&v607;
          v197 = *v578;
        }

        *(*&v197 + 16) = v200;
        v201 = 24 * v198;
        *(*&v197 + v201 + 32) = v603;
        *(*&v197 + v201 + 40) = v195;
        v607 = v197;
        *(*&v197 + v201 + 48) = (4 * (v195 == 0)) | 2;
        v202 = v606;
        v189 = v598;
        v188 = v605;
        dispatch thunk of Collection.formIndex(after:)(v572, v598, v605);
        v192 = v609 - 1;
      }

      while (v609 != 1);
      v205 = v607;
      v187 = v202;
    }

    else
    {
      v205 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
    }

    (*(v573 + 8))(v187, v189);
    *v600 = v205;
    v226 = alloca(24);
    v227 = alloca(32);
    v514 = v600;
    v161 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
    goto LABEL_103;
  }

  v206 = type metadata accessor for Date(0);
  if (swift_dynamicCastMetatype(v162, v206))
  {
    v207 = v571;
    v605 = v206;
    AnyColumn.assumingType<A>(_:)(v206, v206);
    v208 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Date> and conformance Column<A>, &demangling cache variable for type metadata for Column<Date>, &protocol conformance descriptor for Column<A>);
    v209 = v591;
    v210 = dispatch thunk of Collection.count.getter(v591, v208);
    if (v210)
    {
      v578[0] = _swiftEmptyArrayStorage;
      v213 = 0;
      if (v210 > 0)
      {
        v213 = v210;
      }

      *&v606 = v210;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v213, 0);
      v609 = v578[0];
      v603 = v208;
      dispatch thunk of Collection.startIndex.getter(v209, v208);
      v212 = v606;
      if (v606 < 0)
      {
        BUG();
      }

      v214 = v603;
      do
      {
        *&v606 = v212;
        v215 = dispatch thunk of Collection.subscript.read(v600, v572, v209, v214);
        v216 = v596;
        outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v217, v596, &demangling cache variable for type metadata for Date?);
        v215(v600, 0);
        v218 = v579;
        outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v216, v579, &demangling cache variable for type metadata for Date?);
        v219 = v605;
        if (__swift_getEnumTagSinglePayload(v218, 1, v605) == 1)
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v218, &demangling cache variable for type metadata for Date?);
          v220 = 6;
          v607 = 0.0;
        }

        else
        {
          v607 = Date.timeIntervalSince1970.getter(v218);
          (*(*(v219 - 1) + 8))(v218, v219);
          v220 = 1;
        }

        v221 = v609;
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v216, &demangling cache variable for type metadata for Date?);
        v578[0] = v221;
        v222 = *(v221 + 16);
        if (*(v221 + 24) >> 1 <= v222)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(*(v221 + 24) >= 2uLL, v222 + 1, 1);
          v221 = v578[0];
        }

        *(v221 + 16) = v222 + 1;
        v223 = 24 * v222;
        *(v221 + v223 + 32) = v607;
        *(v221 + v223 + 40) = 0;
        v609 = v221;
        *(v221 + v223 + 48) = v220;
        v224 = v571;
        v209 = v591;
        v214 = v603;
        dispatch thunk of Collection.formIndex(after:)(v572, v591, v603);
        v212 = v606 - 1;
        v225 = v592;
      }

      while (v606 != 1);
      v228 = v609;
      v207 = v224;
    }

    else
    {
      v228 = _swiftEmptyArrayStorage;
      v225 = v592;
    }

    (*(v225 + 8))(v207, v209, v211, v212);
    *&v600[0] = v228;
    v270 = alloca(24);
    v271 = alloca(32);
    v514 = v600;
    v161 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
    goto LABEL_103;
  }

  v229 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
  if (!swift_dynamicCastMetatype(v162, v229))
  {
    v605 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int32]);
    v278 = swift_dynamicCastMetatype(v162, v605);
    v279 = v576;
    if (v278)
    {
      if (v576)
      {
        AnyColumn.assumingType<A>(_:)(v605, v605);
        v280 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[Int32]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[Int32]>, &protocol conformance descriptor for Column<A>);
        v281 = v540;
        v282 = v280;
        v283 = dispatch thunk of Collection.count.getter(v540, v280);
        if (v283)
        {
          v284 = v283;
          v578[0] = _swiftEmptyArrayStorage;
          v285 = 0;
          if (v283 > 0)
          {
            v285 = v283;
          }

          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v285, 0);
          *&v606 = v578[0];
          dispatch thunk of Collection.startIndex.getter(v281, v282);
          v607 = *&v284;
          if (v284 < 0)
          {
            BUG();
          }

          v603 = v282;
          do
          {
            v286 = dispatch thunk of Collection.subscript.read(v600, v572, v281, v282);
            v288 = *v287;

            v286(v600, 0);
            if (v288)
            {
              *&v600[0] = v288;
              v289 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
              v290 = swift_allocObject(v289, 40, 7);
              v290[2] = 1;
              v290[3] = 2;
              v290[4] = *(v288 + 16);
              v291 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Int32] and conformance [A], &demangling cache variable for type metadata for [Int32], &protocol conformance descriptor for [A]);

              v292 = v562;
              MLShapedArray.init<A>(scalars:shape:)(v600, v290, &type metadata for Int32, v605, &protocol witness table for Int32, v291);
              v609 = type metadata accessor for MLMultiArray();
              v293 = v541;
              v294 = v593;
              (*(v597 + 16))(v541, v292, v593);
              v295 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Int32> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Int32>, &protocol conformance descriptor for MLShapedArray<A>);
              v296 = MLMultiArray.init<A>(_:)(v293, v294, v295);
              MLDataValue.MultiArrayType.init(_:)(v296);
              (*(v597 + 8))(v292, v294);
              v288;
              v297 = *&v600[0];
              v298 = 5;
            }

            else
            {
              v298 = 6;
              v297 = 0;
            }

            v299 = v606;
            v578[0] = v606;
            v300 = *(v606 + 16);
            v301 = *(v606 + 24);
            if (v301 >> 1 <= v300)
            {
              *&v606 = v297;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v301 >= 2, v300 + 1, 1);
              v297 = v606;
              v299 = v578[0];
            }

            *(v299 + 16) = v300 + 1;
            v302 = 24 * v300;
            *(v299 + v302 + 32) = v297;
            *(v299 + v302 + 40) = 0;
            *&v606 = v299;
            *(v299 + v302 + 48) = v298;
            v303 = v574;
            v281 = v540;
            v282 = v603;
            dispatch thunk of Collection.formIndex(after:)(v572, v540, v603);
            --*&v607;
          }

          while (v607 != 0.0);
          v342 = v547;
        }

        else
        {
          *&v606 = _swiftEmptyArrayStorage;
          v342 = v547;
          v303 = v574;
        }

        (*(v342 + 8))(v303, v281);
        *&v600[0] = v606;
        v370 = alloca(24);
        v371 = alloca(32);
        v514 = v600;
        v161 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
        goto LABEL_103;
      }

      v304 = v523;
      goto LABEL_138;
    }

    v605 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
    if (swift_dynamicCastMetatype(v162, v605))
    {
      if (v279)
      {
        v308 = v543;
        AnyColumn.assumingType<A>(_:)(v605, v605);
        v309 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[Float]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[Float]>, &protocol conformance descriptor for Column<A>);
        v310 = v542;
        v609 = v309;
        v311 = dispatch thunk of Collection.count.getter(v542, v309);
        if (v311)
        {
          v578[0] = _swiftEmptyArrayStorage;
          v312 = 0;
          if (v311 > 0)
          {
            v312 = v311;
          }

          v313 = v311;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v312, 0);
          *&v606 = v578[0];
          dispatch thunk of Collection.startIndex.getter(v310, v609);
          if (v313 < 0)
          {
            BUG();
          }

          v314 = *&v313;
          do
          {
            v607 = v314;
            v315 = dispatch thunk of Collection.subscript.read(v600, v572, v310, v609);
            v317 = *v316;

            v315(v600, 0);
            if (v317)
            {
              *&v600[0] = v317;
              v318 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
              v319 = swift_allocObject(v318, 40, 7);
              v319[2] = 1;
              v319[3] = 2;
              v319[4] = *(v317 + 16);
              v320 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);

              v321 = v565;
              MLShapedArray.init<A>(scalars:shape:)(v600, v319, &type metadata for Float, v605, &protocol witness table for Float, v320);
              v603 = type metadata accessor for MLMultiArray();
              v322 = v520;
              v323 = v321;
              v324 = v580;
              v325 = v544;
              (*(v544 + 16))(v520, v323, v580);
              v326 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Float> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Float>, &protocol conformance descriptor for MLShapedArray<A>);
              v327 = MLMultiArray.init<A>(_:)(v322, v324, v326);
              MLDataValue.MultiArrayType.init(_:)(v327);
              (*(v325 + 8))(v565, v324);
              v317;
              v328 = *&v600[0];
              v329 = 5;
            }

            else
            {
              v329 = 6;
              v328 = 0;
            }

            v330 = v606;
            v578[0] = v606;
            v331 = *(v606 + 16);
            v332 = *(v606 + 24);
            if (v332 >> 1 <= v331)
            {
              *&v606 = v328;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v332 >= 2, v331 + 1, 1);
              v328 = v606;
              v330 = v578[0];
            }

            *(v330 + 16) = v331 + 1;
            v333 = 24 * v331;
            *(v330 + v333 + 32) = v328;
            *(v330 + v333 + 40) = 0;
            *&v606 = v330;
            *(v330 + v333 + 48) = v329;
            v334 = v543;
            v310 = v542;
            dispatch thunk of Collection.formIndex(after:)(v572, v542, v609);
            *&v314 = *&v607 - 1;
          }

          while (*&v607 != 1);
          v376 = v548;
        }

        else
        {
          *&v606 = _swiftEmptyArrayStorage;
          v376 = v548;
          v334 = v308;
        }

        (*(v376 + 8))(v334, v310);
        *&v600[0] = v606;
        v381 = alloca(24);
        v382 = alloca(32);
        v514 = v600;
        v161 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
        goto LABEL_103;
      }

      v372 = v524;
      AnyColumn.assumingType<A>(_:)(v605, v605);
      v335 = v604;
      _s8CreateML15MLUntypedColumnVyAC11TabularData0D0VySayxGGKclufCSf_Tt1g5(v372, a3);
      goto LABEL_139;
    }

    v605 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
    if (swift_dynamicCastMetatype(v162, v605))
    {
      if (v279)
      {
        AnyColumn.assumingType<A>(_:)(v605, v605);
        v343 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[Double]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[Double]>, &protocol conformance descriptor for Column<A>);
        v344 = v567;
        v345 = dispatch thunk of Collection.count.getter(v567, v343);
        if (v345)
        {
          v346 = v345;
          v578[0] = _swiftEmptyArrayStorage;
          v347 = 0;
          if (v345 > 0)
          {
            v347 = v345;
          }

          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v347, 0);
          *&v606 = v578[0];
          dispatch thunk of Collection.startIndex.getter(v344, v343);
          v607 = *&v346;
          if (v346 < 0)
          {
            BUG();
          }

          v348 = v343;
          v349 = v567;
          v603 = v343;
          do
          {
            v350 = dispatch thunk of Collection.subscript.read(v600, v572, v349, v348);
            v352 = *v351;

            v350(v600, 0);
            if (v352)
            {
              *&v600[0] = v352;
              v353 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
              v354 = swift_allocObject(v353, 40, 7);
              v354[2] = 1;
              v354[3] = 2;
              v354[4] = *(v352 + 16);
              v355 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Double] and conformance [A], &demangling cache variable for type metadata for [Double], &protocol conformance descriptor for [A]);

              v356 = v566;
              MLShapedArray.init<A>(scalars:shape:)(v600, v354, &type metadata for Double, v605, &protocol witness table for Double, v355);
              v609 = type metadata accessor for MLMultiArray();
              v357 = v522;
              v358 = v356;
              v359 = v581;
              v360 = v546;
              (*(v546 + 16))(v522, v358, v581);
              v361 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Double> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Double>, &protocol conformance descriptor for MLShapedArray<A>);
              v362 = MLMultiArray.init<A>(_:)(v357, v359, v361);
              MLDataValue.MultiArrayType.init(_:)(v362);
              (*(v360 + 8))(v566, v359);
              v352;
              v363 = *&v600[0];
              v364 = 5;
            }

            else
            {
              v364 = 6;
              v363 = 0;
            }

            v365 = v606;
            v578[0] = v606;
            v366 = *(v606 + 16);
            v367 = *(v606 + 24);
            if (v367 >> 1 <= v366)
            {
              *&v606 = v363;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v367 >= 2, v366 + 1, 1);
              v363 = v606;
              v365 = v578[0];
            }

            *(v365 + 16) = v366 + 1;
            v368 = 24 * v366;
            *(v365 + v368 + 32) = v363;
            *(v365 + v368 + 40) = 0;
            *&v606 = v365;
            *(v365 + v368 + 48) = v364;
            v369 = v575;
            v349 = v567;
            v348 = v603;
            dispatch thunk of Collection.formIndex(after:)(v572, v567, v603);
            --*&v607;
          }

          while (v607 != 0.0);
          v384 = v349;
          v385 = v549;
        }

        else
        {
          v384 = v344;
          *&v606 = _swiftEmptyArrayStorage;
          v385 = v549;
          v369 = v575;
        }

        (*(v385 + 8))(v369, v384);
        *&v600[0] = v606;
        v389 = alloca(24);
        v390 = alloca(32);
        v514 = v600;
        v161 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
        goto LABEL_103;
      }

      v383 = v525;
      AnyColumn.assumingType<A>(_:)(v605, v605);
      v335 = v604;
      _s8CreateML15MLUntypedColumnVyAC11TabularData0D0VySayxGGKclufCSd_Tt1g5(v383, a3);
      goto LABEL_139;
    }

    v377 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
    if (swift_dynamicCastMetatype(v162, v377))
    {
      v378 = v526;
      v379 = v608;
      AnyColumn.assumingType<A>(_:)(v377, v377);
      v380 = v604;
      _s8CreateML15MLUntypedColumnVyAC11TabularData0D0VySayxGGKclufCSS_Tt1g5(v378, a3);
      if (v380)
      {
        v336 = type metadata accessor for AnyColumn(0);
        v337 = *(v336 - 8);
        v338 = v379;
        return (*(v337 + 8))(v338, v336);
      }

      v339 = type metadata accessor for AnyColumn(0);
      v340 = *(v339 - 8);
      v341 = v379;
LABEL_143:
      (*(v340 + 8))(v341, v339);
      ML14_UntypedColumnC_s5Error_pTt1g5 = *&v600[0];
      v274 = BYTE8(v600[0]);
      goto LABEL_105;
    }

    v386 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any?]);
    if (swift_dynamicCastMetatype(v162, v386))
    {
      v387 = v527;
      AnyColumn.assumingType<A>(_:)(v386, v386);
      v388 = v604;
      _s8CreateML15MLUntypedColumnVyAC11TabularData0D0VySayxSgGGKclufCyp_Tt1g5(v387, a3);
    }

    else
    {
      v391 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any]);
      if (swift_dynamicCastMetatype(v602, v391))
      {
        v392 = v528;
        AnyColumn.assumingType<A>(_:)(v391, v391);
        v388 = v604;
        _s8CreateML15MLUntypedColumnVyAC11TabularData0D0VySayxGGKclufCyp_Tt1g5(v392, a3);
      }

      else
      {
        v393 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Int]);
        if (swift_dynamicCastMetatype(v602, v393))
        {
          v394 = v529;
          AnyColumn.assumingType<A>(_:)(v393, v393);
          v395 = &demangling cache variable for type metadata for Column<[String : Int]>;
          v396 = &lazy protocol witness table cache variable for type Column<[String : Int]> and conformance Column<A>;
          v397 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
          v398 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSSiG_8CreateML11MLDataValueO_AItsAE_pTg5020_sSS3key_x5valuetSg8d4ML11fg5OAFs5c136_pIgnrrzo_SSAA_xABtAF_AFtsAG_pIegnrzr_lTRSi_TG503_s8c39ML15MLUntypedColumnVyAC11TabularData0D0l18SDySSxGGKclufcAA11ef34OAGSgKXEfU_AJ_AJti1_J22SgV8U_Si_TG5Tf3nnnpf_nTf1cn_n;
        }

        else
        {
          v399 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Double]);
          if (swift_dynamicCastMetatype(v602, v399))
          {
            v394 = v530;
            AnyColumn.assumingType<A>(_:)(v399, v399);
            v395 = &demangling cache variable for type metadata for Column<[String : Double]>;
            v396 = &lazy protocol witness table cache variable for type Column<[String : Double]> and conformance Column<A>;
            v397 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
            v398 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSSdG_8CreateML11MLDataValueO_AItsAE_pTg5020_sSS3key_x5valuetSg8d4ML11fg5OAFs5c136_pIgnrrzo_SSAA_xABtAF_AFtsAG_pIegnrzr_lTRSd_TG503_s8c39ML15MLUntypedColumnVyAC11TabularData0D0l18SDySSxGGKclufcAA11ef34OAGSgKXEfU_AJ_AJti1_J22SgV8U_Sd_TG5Tf3nnnpf_nTf1cn_n;
          }

          else
          {
            v400 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Float]);
            if (swift_dynamicCastMetatype(v602, v400))
            {
              v394 = v531;
              AnyColumn.assumingType<A>(_:)(v400, v400);
              v395 = &demangling cache variable for type metadata for Column<[String : Float]>;
              v396 = &lazy protocol witness table cache variable for type Column<[String : Float]> and conformance Column<A>;
              v397 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
              v398 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSSfG_8CreateML11MLDataValueO_AItsAE_pTg5020_sSS3key_x5valuetSg8d4ML11fg5OAFs5c136_pIgnrrzo_SSAA_xABtAF_AFtsAG_pIegnrzr_lTRSf_TG503_s8c39ML15MLUntypedColumnVyAC11TabularData0D0l18SDySSxGGKclufcAA11ef34OAGSgKXEfU_AJ_AJti1_J22SgV8U_Sf_TG5Tf3nnnpf_nTf1cn_n;
            }

            else
            {
              v401 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : String]);
              if (swift_dynamicCastMetatype(v602, v401))
              {
                v394 = v532;
                AnyColumn.assumingType<A>(_:)(v401, v401);
                v395 = &demangling cache variable for type metadata for Column<[String : String]>;
                v396 = &lazy protocol witness table cache variable for type Column<[String : String]> and conformance Column<A>;
                v397 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
                v398 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_8CreateML11MLDataValueO_AItsAE_pTg5020_sSS3key_x5valuetSg8d4ML11fg5OAFs5c136_pIgnrrzo_SSAA_xABtAF_AFtsAG_pIegnrzr_lTRSS_TG503_s8c39ML15MLUntypedColumnVyAC11TabularData0D0l18SDySSxGGKclufcAA11ef34OAGSgKXEfU_AJ_AJti1_J22SgV8U_SS_TG5Tf3nnnpf_nTf1cn_n;
              }

              else
              {
                v402 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any?]);
                if (swift_dynamicCastMetatype(v602, v402))
                {
                  v394 = v533;
                  AnyColumn.assumingType<A>(_:)(v402, v402);
                  v395 = &demangling cache variable for type metadata for Column<[String : Any?]>;
                  v396 = &lazy protocol witness table cache variable for type Column<[String : Any?]> and conformance Column<A>;
                  v397 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
                  v398 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSypSgG_8CreateML11MLDataValueO_AJtsAE_pTg5022_sSS3key_xSg5valuetSg8d4ML11fg5OAGs5c138_pIgnrrzo_SSAA_AbCtAG_AGtsAH_pIegnrzr_lTRyp_TG503_s8c39ML15MLUntypedColumnVyAC11TabularData0D0l20SDySSxSgGGKclufcAA11ef33OAHSgKXEfU_AK_AKtI31_AG5valuetsW8U_yp_Tg5Tf3nnnpf_nTf1cn_n;
                }

                else
                {
                  v403 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
                  if (!swift_dynamicCastMetatype(v602, v403))
                  {
                    v404 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnyHashable : Any?]);
                    if (swift_dynamicCastMetatype(v602, v404))
                    {
                      AnyColumn.assumingType<A>(_:)(v404, v404);
                      v579 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[AnyHashable : Any?]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[AnyHashable : Any?]>, &protocol conformance descriptor for Column<A>);
                      v597 = dispatch thunk of Collection.count.getter(v594, v579);
                      if (v597)
                      {
                        v561 = _swiftEmptyArrayStorage;
                        v405 = 0;
                        v406 = v597;
                        if (v597 > 0)
                        {
                          v405 = v597;
                        }

                        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v405, 0);
                        v596 = v561;
                        dispatch thunk of Collection.startIndex.getter(v594, v579);
                        if (v406 < 0)
                        {
                          BUG();
                        }

                        v573 = 0;
                        do
                        {
                          if (__OFADD__(1, v573++))
                          {
                            BUG();
                          }

                          v408 = dispatch thunk of Collection.subscript.read(v600, v539, v594, v579);
                          v410 = *v409;

                          v408(v600, 0);
                          v609 = v410;
                          if (v410)
                          {
                            if (*(v609 + 16))
                            {
                              v411 = *(v609 + 16);
                              v577 = _swiftEmptyArrayStorage;
                              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v411, 0);
                              v605 = v577;
                              v412 = v609;
                              *&v606 = specialized Dictionary.startIndex.getter(v609);
                              v603 = v413;
                              *&v607 = v412 + 64;
                              v592 = v411 - 1;
                              while (1)
                              {
                                if (v606 < 0 || v606 >= 1 << *(v609 + 32))
                                {
                                  BUG();
                                }

                                v598 = v606 >> 6;
                                v414 = *(*&v607 + 8 * (v606 >> 6));
                                v599 = 1 << v606;
                                if (!_bittest64(&v414, v606))
                                {
                                  BUG();
                                }

                                if (*(v609 + 36) != v603)
                                {
                                  BUG();
                                }

                                v415 = v606;
                                v416 = v609;
                                outlined init with copy of AnyHashable(*(v609 + 48) + 40 * v606, v600);
                                outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v416 + 56) + 32 * v415, v601, &demangling cache variable for type metadata for Any?);
                                outlined init with copy of AnyHashable(v600, v578);
                                outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v601, &v578[5], &demangling cache variable for type metadata for Any?);
                                qmemcpy(v572, v578, sizeof(v572));
                                outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v600, &demangling cache variable for type metadata for (key: AnyHashable, value: Any?));
                                outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v572, v515, &demangling cache variable for type metadata for (key: AnyHashable, value: Any?));
                                outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v515, v518, &demangling cache variable for type metadata for (key: AnyHashable, value: Any?)?);
                                if (v518[3])
                                {
                                  qmemcpy(v516, v518, sizeof(v516));
                                  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v516, v518, &demangling cache variable for type metadata for (key: AnyHashable, value: Any?));
                                  if (v518[8])
                                  {
                                    outlined init with take of Any(&v518[5], v517);
                                    outlined destroy of AnyHashable(v518);
                                    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v516, v518, &demangling cache variable for type metadata for (key: AnyHashable, value: Any?));
                                    AnyHashable.base.getter();
                                    outlined destroy of AnyHashable(v518);
                                    v417 = v604;
                                    MLDataValue.init(fromAny:)(v513, a3);
                                    v604 = v417;
                                    if (v417)
                                    {
                                      __swift_destroy_boxed_opaque_existential_1Tm(v517);
LABEL_256:
                                      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v516, &demangling cache variable for type metadata for (key: AnyHashable, value: Any?));
                                      v441 = &demangling cache variable for type metadata for Any?;
                                      v442 = &v518[5];
LABEL_258:
                                      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v442, v441);
                                      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v515, &demangling cache variable for type metadata for (key: AnyHashable, value: Any?)?);
                                      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v572, &demangling cache variable for type metadata for (key: AnyHashable, value: Any?));

                                      v609;

                                      v443 = type metadata accessor for AnyColumn(0);
                                      (*(*(v443 - 8) + 8))(v608, v443);
                                      return (*(v550 + 8))(v595, v594);
                                    }

                                    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v518[5], &demangling cache variable for type metadata for Any?);
                                    outlined init with copy of Any(v517, v518);
                                    v418 = v604;
                                    MLDataValue.init(fromAny:)(v518, a3);
                                    v604 = v418;
                                    if (v418)
                                    {
                                      outlined consume of MLDataValue(v557, *(&v557 + 1), v558);
                                      __swift_destroy_boxed_opaque_existential_1Tm(v517);
                                      v441 = &demangling cache variable for type metadata for (key: AnyHashable, value: Any?);
                                      v442 = v516;
                                      goto LABEL_258;
                                    }

                                    __swift_destroy_boxed_opaque_existential_1Tm(v517);
                                    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v516, &demangling cache variable for type metadata for (key: AnyHashable, value: Any?));
                                    v590 = v559;
                                    v419 = v560;
                                  }

                                  else
                                  {
                                    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v518[5], &demangling cache variable for type metadata for Any?);
                                    outlined destroy of AnyHashable(v518);
                                    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v516, v518, &demangling cache variable for type metadata for (key: AnyHashable, value: Any?));
                                    AnyHashable.base.getter();
                                    outlined destroy of AnyHashable(v518);
                                    v420 = v604;
                                    MLDataValue.init(fromAny:)(v517, a3);
                                    v604 = v420;
                                    if (v420)
                                    {
                                      goto LABEL_256;
                                    }

                                    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v516, &demangling cache variable for type metadata for (key: AnyHashable, value: Any?));
                                    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v518[5], &demangling cache variable for type metadata for Any?);
                                    v559 = 0;
                                    v560 = 6;
                                    v590 = 0;
                                    v419 = 6;
                                  }
                                }

                                else
                                {
                                  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v518, &demangling cache variable for type metadata for (key: AnyHashable, value: Any?)?);
                                  v557 = 0;
                                  v419 = 6;
                                  LOBYTE(v558) = 6;
                                  v559 = 0;
                                  v560 = 6;
                                  v590 = 0;
                                }

                                outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v515, &demangling cache variable for type metadata for (key: AnyHashable, value: Any?)?);
                                outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v572, &demangling cache variable for type metadata for (key: AnyHashable, value: Any?));
                                v571 = v557;
                                LOBYTE(v591) = v558;
                                v577 = v605;
                                v421 = v605[2];
                                if (v605[3] >> 1 <= v421)
                                {
                                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v605[3] >= 2uLL, v421 + 1, 1);
                                  v605 = v577;
                                }

                                v422 = v605;
                                v605[2] = v421 + 1;
                                v423 = 6 * v421;
                                *&v422[v423 + 4] = v571;
                                LOBYTE(v422[v423 + 6]) = v591;
                                a3 = v590;
                                *&v422[v423 + 7] = v590;
                                LOBYTE(v422[v423 + 9]) = v419;
                                v424 = -1 << *(v609 + 32);
                                if (v606 >= -v424)
                                {
                                  BUG();
                                }

                                if ((v599 & *(*&v607 + 8 * v598)) == 0)
                                {
                                  BUG();
                                }

                                if (*(v609 + 36) != v603)
                                {
                                  BUG();
                                }

                                *&v606 = _HashTable.occupiedBucket(after:)(v606, *&v607, ~v424);
                                if (v592-- == 0)
                                {
                                  goto LABEL_233;
                                }

                                v603 = *(v609 + 36);
                              }
                            }

                            v605 = _swiftEmptyArrayStorage;
LABEL_233:
                            v427 = v605[2];
                            v428 = _swiftEmptyDictionarySingleton;
                            if (v427)
                            {
                              __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<MLDataValue, MLDataValue>);
                              v428 = static _DictionaryStorage.allocate(capacity:)(v427);
                            }

                            *&v600[0] = v428;
                            v429 = v605;

                            v430 = v604;
                            specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v429, 1, v600, *a3.i64);
                            v604 = v430;
                            if (v430)
                            {
                              swift_unexpectedError(v604, "Swift/Dictionary.swift", 22, 1, 489);
                              BUG();
                            }

                            v609;
                            v605;
                            v426 = *&v600[0];
                            LOBYTE(v606) = 4;
                          }

                          else
                          {
                            LOBYTE(v606) = 6;
                            v426 = 0;
                          }

                          v561 = v596;
                          v431 = v596[2];
                          if (v596[3] >> 1 <= v431)
                          {
                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v596[3] >= 2, v431 + 1, 1);
                            v596 = v561;
                          }

                          v432 = v596;
                          v596[2] = v431 + 1;
                          v433 = 24 * v431;
                          *(v432 + v433 + 32) = v426;
                          *(v432 + v433 + 40) = 0;
                          *(v432 + v433 + 48) = v606;
                          dispatch thunk of Collection.formIndex(after:)(v539, v594, v579);
                        }

                        while (v573 != v597);
                      }

                      else
                      {
                        v596 = _swiftEmptyArrayStorage;
                      }

                      (*(v550 + 8))(v595, v594);
                      *&v600[0] = v596;
                      v437 = alloca(24);
                      v438 = alloca(32);
                      v514 = v600;
                      v161 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
                      goto LABEL_103;
                    }

                    v603 = type metadata accessor for MLMultiArray();
                    if (swift_dynamicCastMetatype(v602, v603))
                    {
                      AnyColumn.assumingType<A>(_:)(v603, v603);
                      *&v606 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<MLMultiArray> and conformance Column<A>, &demangling cache variable for type metadata for Column<MLMultiArray>, &protocol conformance descriptor for Column<A>);
                      v603 = dispatch thunk of Collection.count.getter(v582, v606);
                      if (v603)
                      {
                        v578[0] = _swiftEmptyArrayStorage;
                        v434 = 0;
                        v435 = v603;
                        if (v603 > 0)
                        {
                          v434 = v603;
                        }

                        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v434, 0);
                        v436 = v578[0];
                        dispatch thunk of Collection.startIndex.getter(v582, v606);
                        if (v435 < 0)
                        {
                          BUG();
                        }

                        do
                        {
                          v471 = dispatch thunk of Collection.subscript.read(v600, v572, v582, v606);
                          v473 = *v472;
                          v474 = *v472;
                          v471(v600, 0);
                          if (v473)
                          {
                            MLDataValue.MultiArrayType.init(_:)(v474);
                            v607 = *v600;
                            LOBYTE(v609) = 5;
                          }

                          else
                          {
                            LOBYTE(v609) = 6;
                            v607 = 0.0;
                          }

                          v578[0] = v436;
                          v475 = v436[2];
                          if (v436[3] >> 1 <= v475)
                          {
                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v436[3] >= 2uLL, v475 + 1, 1);
                            v436 = v578[0];
                          }

                          v436[2] = v475 + 1;
                          v476 = 3 * v475;
                          *&v436[v476 + 4] = v607;
                          v436[v476 + 5] = 0;
                          LOBYTE(v436[v476 + 6]) = v609;
                          dispatch thunk of Collection.formIndex(after:)(v572, v582, v606);
                          --v603;
                        }

                        while (v603);
                      }

                      else
                      {
                        v436 = _swiftEmptyArrayStorage;
                      }

                      (*(v537 + 8))(v583, v582);
                      *&v600[0] = v436;
                      v477 = alloca(24);
                      v478 = alloca(32);
                      v514 = v600;
                      ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
                      v274 = v479;
                      v275 = v600[0];
                      goto LABEL_104;
                    }

                    if (swift_dynamicCastMetatype(v602, v580))
                    {
                      AnyColumn.assumingType<A>(_:)(v580, v580);
                      v609 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<MLShapedArray<Float>> and conformance Column<A>, &demangling cache variable for type metadata for Column<MLShapedArray<Float>>, &protocol conformance descriptor for Column<A>);
                      v605 = dispatch thunk of Collection.count.getter(v588, v609);
                      if (v605)
                      {
                        v578[0] = _swiftEmptyArrayStorage;
                        v439 = 0;
                        v440 = v605;
                        if (v605 > 0)
                        {
                          v439 = v605;
                        }

                        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v439, 0);
                        *&v606 = v578[0];
                        dispatch thunk of Collection.startIndex.getter(v588, v609);
                        if (v440 < 0)
                        {
                          BUG();
                        }

                        do
                        {
                          v480 = dispatch thunk of Collection.subscript.read(v600, v572, v588, v609);
                          v481 = v553;
                          outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v482, v553, &demangling cache variable for type metadata for MLShapedArray<Float>?);
                          v480(v600, 0);
                          v483 = v570;
                          outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v481, v570, &demangling cache variable for type metadata for MLShapedArray<Float>?);
                          if (__swift_getEnumTagSinglePayload(v483, 1, v580) == 1)
                          {
                            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v570, &demangling cache variable for type metadata for MLShapedArray<Float>?);
                            LOBYTE(v607) = 6;
                            v484 = 0;
                          }

                          else
                          {
                            v485 = v555;
                            v486 = v580;
                            v487 = v544;
                            (*(v544 + 32))(v555, v570, v580);
                            v488 = v565;
                            (*(v487 + 16))(v565, v485, v486);
                            v489 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Float> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Float>, &protocol conformance descriptor for MLShapedArray<A>);
                            v490 = MLMultiArray.init<A>(_:)(v488, v486, v489);
                            MLDataValue.MultiArrayType.init(_:)(v490);
                            v484 = *&v600[0];
                            (*(v487 + 8))(v555, v486);
                            LOBYTE(v607) = 5;
                          }

                          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v553, &demangling cache variable for type metadata for MLShapedArray<Float>?);
                          v578[0] = v606;
                          v491 = *(v606 + 16);
                          if (*(v606 + 24) >> 1 <= v491)
                          {
                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(*(v606 + 24) >= 2uLL, v491 + 1, 1);
                            *&v606 = v578[0];
                          }

                          v492 = v606;
                          *(v606 + 16) = v491 + 1;
                          v493 = 24 * v491;
                          *(v492 + v493 + 32) = v484;
                          *(v492 + v493 + 40) = 0;
                          *(v492 + v493 + 48) = LOBYTE(v607);
                          dispatch thunk of Collection.formIndex(after:)(v572, v588, v609);
                          v605 = (v605 - 1);
                        }

                        while (v605);
                      }

                      else
                      {
                        *&v606 = _swiftEmptyArrayStorage;
                      }

                      (*(v536 + 8))(v589, v588);
                      *&v600[0] = v606;
                      v494 = alloca(24);
                      v495 = alloca(32);
                      v514 = v600;
                      v161 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
                      goto LABEL_103;
                    }

                    if (swift_dynamicCastMetatype(v602, v581))
                    {
                      AnyColumn.assumingType<A>(_:)(v581, v581);
                      v609 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<MLShapedArray<Double>> and conformance Column<A>, &demangling cache variable for type metadata for Column<MLShapedArray<Double>>, &protocol conformance descriptor for Column<A>);
                      v605 = dispatch thunk of Collection.count.getter(v586, v609);
                      if (v605)
                      {
                        v578[0] = _swiftEmptyArrayStorage;
                        v444 = 0;
                        v445 = v605;
                        if (v605 > 0)
                        {
                          v444 = v605;
                        }

                        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v444, 0);
                        *&v606 = v578[0];
                        dispatch thunk of Collection.startIndex.getter(v586, v609);
                        if (v445 < 0)
                        {
                          BUG();
                        }

                        do
                        {
                          v496 = dispatch thunk of Collection.subscript.read(v600, v572, v586, v609);
                          v497 = v552;
                          outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v498, v552, &demangling cache variable for type metadata for MLShapedArray<Double>?);
                          v496(v600, 0);
                          v499 = v569;
                          outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v497, v569, &demangling cache variable for type metadata for MLShapedArray<Double>?);
                          if (__swift_getEnumTagSinglePayload(v499, 1, v581) == 1)
                          {
                            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v569, &demangling cache variable for type metadata for MLShapedArray<Double>?);
                            LOBYTE(v607) = 6;
                            v500 = 0;
                          }

                          else
                          {
                            v501 = v554;
                            v502 = v581;
                            v503 = v546;
                            (*(v546 + 32))(v554, v569, v581);
                            v504 = v566;
                            (*(v503 + 16))(v566, v501, v502);
                            v505 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Double> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Double>, &protocol conformance descriptor for MLShapedArray<A>);
                            v506 = MLMultiArray.init<A>(_:)(v504, v502, v505);
                            MLDataValue.MultiArrayType.init(_:)(v506);
                            v500 = *&v600[0];
                            (*(v503 + 8))(v554, v502);
                            LOBYTE(v607) = 5;
                          }

                          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v552, &demangling cache variable for type metadata for MLShapedArray<Double>?);
                          v578[0] = v606;
                          v507 = *(v606 + 16);
                          if (*(v606 + 24) >> 1 <= v507)
                          {
                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(*(v606 + 24) >= 2uLL, v507 + 1, 1);
                            *&v606 = v578[0];
                          }

                          v508 = v606;
                          *(v606 + 16) = v507 + 1;
                          v509 = 24 * v507;
                          *(v508 + v509 + 32) = v500;
                          *(v508 + v509 + 40) = 0;
                          *(v508 + v509 + 48) = LOBYTE(v607);
                          dispatch thunk of Collection.formIndex(after:)(v572, v586, v609);
                          v605 = (v605 - 1);
                        }

                        while (v605);
                      }

                      else
                      {
                        *&v606 = _swiftEmptyArrayStorage;
                      }

                      (*(v535 + 8))(v587, v586);
                      *&v600[0] = v606;
                      v510 = alloca(24);
                      v511 = alloca(32);
                      v514 = v600;
                      v161 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
                      goto LABEL_103;
                    }

                    v446 = v602;
                    if (swift_dynamicCastMetatype(v602, v593))
                    {
                      AnyColumn.assumingType<A>(_:)(v593, v593);
                      v609 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<MLShapedArray<Int32>> and conformance Column<A>, &demangling cache variable for type metadata for Column<MLShapedArray<Int32>>, &protocol conformance descriptor for Column<A>);
                      v605 = dispatch thunk of Collection.count.getter(v584, v609);
                      if (v605)
                      {
                        v578[0] = _swiftEmptyArrayStorage;
                        v447 = 0;
                        v448 = v605;
                        if (v605 > 0)
                        {
                          v447 = v605;
                        }

                        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v447, 0);
                        *&v606 = v578[0];
                        dispatch thunk of Collection.startIndex.getter(v584, v609);
                        if (v448 < 0)
                        {
                          BUG();
                        }

                        do
                        {
                          v449 = dispatch thunk of Collection.subscript.read(v600, v572, v584, v609);
                          v450 = v551;
                          outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v451, v551, &demangling cache variable for type metadata for MLShapedArray<Int32>?);
                          v449(v600, 0);
                          v452 = v568;
                          outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v450, v568, &demangling cache variable for type metadata for MLShapedArray<Int32>?);
                          if (__swift_getEnumTagSinglePayload(v452, 1, v593) == 1)
                          {
                            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v568, &demangling cache variable for type metadata for MLShapedArray<Int32>?);
                            LOBYTE(v607) = 6;
                            v453 = 0;
                          }

                          else
                          {
                            v454 = v556;
                            v455 = v593;
                            v456 = v597;
                            (*(v597 + 32))(v556, v568, v593);
                            v457 = v562;
                            (*(v456 + 16))(v562, v454, v455);
                            v458 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Int32> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Int32>, &protocol conformance descriptor for MLShapedArray<A>);
                            v459 = MLMultiArray.init<A>(_:)(v457, v455, v458);
                            MLDataValue.MultiArrayType.init(_:)(v459);
                            v453 = *&v600[0];
                            (*(v456 + 8))(v556, v455);
                            LOBYTE(v607) = 5;
                          }

                          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v551, &demangling cache variable for type metadata for MLShapedArray<Int32>?);
                          v578[0] = v606;
                          v460 = *(v606 + 16);
                          if (*(v606 + 24) >> 1 <= v460)
                          {
                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(*(v606 + 24) >= 2uLL, v460 + 1, 1);
                            *&v606 = v578[0];
                          }

                          v461 = v606;
                          *(v606 + 16) = v460 + 1;
                          v462 = 24 * v460;
                          *(v461 + v462 + 32) = v453;
                          *(v461 + v462 + 40) = 0;
                          *(v461 + v462 + 48) = LOBYTE(v607);
                          dispatch thunk of Collection.formIndex(after:)(v572, v584, v609);
                          v605 = (v605 - 1);
                        }

                        while (v605);
                      }

                      else
                      {
                        *&v606 = _swiftEmptyArrayStorage;
                      }

                      (*(v534 + 8))(v585, v584);
                      *&v600[0] = v606;
                      v469 = alloca(24);
                      v470 = alloca(32);
                      v514 = v600;
                      v161 = _s8CreateML15MLUntypedColumnVyACxcSTRzAA11MLDataValueO7ElementRtzlufcAA08_UntypedD0CyKXEfU_SayAEG_TG5TA_0;
                      goto LABEL_103;
                    }

                    *&v600[0] = 0xD000000000000016;
                    *(&v600[0] + 1) = "or Int labels, got " + 0x8000000000000000;
                    v463 = AnyColumn.wrappedElementType.getter(v446);
                    v464._countAndFlagsBits = _typeName(_:qualified:)(v463, 0);
                    object = v464._object;
                    String.append(_:)(v464);
                    object;
                    v466._countAndFlagsBits = 46;
                    v466._object = 0xE100000000000000;
                    String.append(_:)(v466);
                    v606 = v600[0];
                    v467 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                    swift_allocError(&type metadata for MLCreateError, v467, 0, 0);
                    *v468 = v606;
                    *(v468 + 16) = 0;
                    *(v468 + 32) = 0;
                    *(v468 + 48) = 1;
                    swift_willThrow();
                    goto LABEL_199;
                  }

                  v394 = v538;
                  AnyColumn.assumingType<A>(_:)(v403, v403);
                  v395 = &demangling cache variable for type metadata for Column<[String : Any]>;
                  v396 = &lazy protocol witness table cache variable for type Column<[String : Any]> and conformance Column<A>;
                  v397 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
                  v398 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSypG_8CreateML11MLDataValueO_AItsAE_pTg5020_sSS3key_x5valuetSg8d4ML11fg5OAFs5c136_pIgnrrzo_SSAA_xABtAF_AFtsAG_pIegnrzr_lTRyp_TG503_s8c39ML15MLUntypedColumnVyAC11TabularData0D0l18SDySSxGGKclufcAA11ef34OAGSgKXEfU_AJ_AJti1_J22SgV8U_yp_Tg5Tf3nnnpf_nTf1cn_n;
                }
              }
            }
          }
        }

        v388 = v604;
        _s8CreateML15MLUntypedColumnVyAC11TabularData0D0VySDySSxGGKclufCSi_Tt1g5Tm(v394, v395, v396, v397, v398, *a3.i64);
      }
    }

    if (!v388)
    {
      v339 = type metadata accessor for AnyColumn(0);
      v340 = *(v339 - 8);
      v341 = v608;
      goto LABEL_143;
    }

LABEL_199:
    v336 = type metadata accessor for AnyColumn(0);
    v337 = *(v336 - 8);
    v338 = v608;
    return (*(v337 + 8))(v338, v336);
  }

  if ((v576 & 1) == 0)
  {
    v304 = v521;
LABEL_138:
    AnyColumn.assumingType<A>(_:)(v229, v229);
    v335 = v604;
    _s8CreateML15MLUntypedColumnVyAC11TabularData0D0VySayxGGKclufCSi_Tt1g5(v304, a3);
LABEL_139:
    if (v335)
    {
      v336 = type metadata accessor for AnyColumn(0);
      v337 = *(v336 - 8);
      v338 = v163;
      return (*(v337 + 8))(v338, v336);
    }

    v339 = type metadata accessor for AnyColumn(0);
    v340 = *(v339 - 8);
    v341 = v163;
    goto LABEL_143;
  }

  v230 = v229;
  v231 = v564;
  AnyColumn.assumingType<A>(_:)(v230, v230);
  *&v232 = COERCE_DOUBLE(lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[Int]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[Int]>, &protocol conformance descriptor for Column<A>));
  v233 = v563;
  v607 = *&v232;
  v234 = dispatch thunk of Collection.count.getter(v563, v232);
  if (!v234)
  {
    v373 = _swiftEmptyArrayStorage;
LABEL_161:
    (*(v545 + 8))(v231, v233);
    *&v600[0] = v373;
    v374 = alloca(24);
    v375 = alloca(32);
    v514 = v600;
    v161 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
    goto LABEL_103;
  }

  v578[0] = _swiftEmptyArrayStorage;
  v235 = 0;
  if (v234 > 0)
  {
    v235 = v234;
  }

  v598 = v234;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v235, 0);
  v603 = v578[0];
  dispatch thunk of Collection.startIndex.getter(v233, *&v607);
  if (v598 < 0)
  {
    BUG();
  }

  v236 = 0;
  while (1)
  {
    v605 = (v236 + 1);
    if (__OFADD__(1, v236))
    {
      BUG();
    }

    v237 = dispatch thunk of Collection.subscript.read(v600, v572, v233, *&v607);
    v239 = *v238;

    v237(v600, 0);
    if (!v239)
    {
      v258 = 6;
      v257 = 0;
      goto LABEL_90;
    }

    v240 = *(v239 + 16);
    v241 = _swiftEmptyArrayStorage;
    if (v240)
    {
      break;
    }

LABEL_88:
    v599 = v239;
    *&v600[0] = v241;
    v247 = v240;
    v248 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v249 = swift_allocObject(v248, 40, 7);
    v249[2] = 1;
    v249[3] = 2;
    v249[4] = v247;
    v250 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int32]);
    v251 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Int32] and conformance [A], &demangling cache variable for type metadata for [Int32], &protocol conformance descriptor for [A]);
    v252 = v562;
    MLShapedArray.init<A>(scalars:shape:)(v600, v249, &type metadata for Int32, v250, &protocol witness table for Int32, v251);
    type metadata accessor for MLMultiArray();
    v253 = v541;
    v254 = v593;
    (*(v597 + 16))(v541, v252, v593);
    v255 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Int32> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Int32>, &protocol conformance descriptor for MLShapedArray<A>);
    v256 = MLMultiArray.init<A>(_:)(v253, v254, v255);
    MLDataValue.MultiArrayType.init(_:)(v256);
    (*(v597 + 8))(v252, v254);
    v599;
    v257 = *&v600[0];
    v258 = 5;
LABEL_90:
    v259 = v603;
    v578[0] = v603;
    v260 = *(v603 + 16);
    v261 = *(v603 + 24);
    if (v261 >> 1 <= v260)
    {
      LOBYTE(v606) = v258;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v261 >= 2, v260 + 1, 1);
      v258 = v606;
      v259 = v578[0];
    }

    *(v259 + 16) = v260 + 1;
    v262 = 24 * v260;
    *(v259 + v262 + 32) = v257;
    *(v259 + v262 + 40) = 0;
    v603 = v259;
    *(v259 + v262 + 48) = v258;
    v231 = v564;
    v233 = v563;
    dispatch thunk of Collection.formIndex(after:)(v572, v563, *&v607);
    v236 = v605;
    if (v605 == v598)
    {
      v373 = v603;
      goto LABEL_161;
    }
  }

  *&v600[0] = _swiftEmptyArrayStorage;
  v590.i64[0] = v240;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v240, 0);
  v241 = *&v600[0];
  v242 = *(v239 + 32);
  v243 = v239;
  if ((v242 - 0x80000000) < 0xFFFFFFFF00000000)
  {
    goto LABEL_121;
  }

  v244 = *(*&v600[0] + 16);
  v245 = *(*&v600[0] + 24);
  v246 = v244 + 1;
  if (v245 >> 1 <= v244)
  {
    v599 = v239;
    v269 = v244;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v245 >= 2, v244 + 1, 1);
    v244 = v269;
    v243 = v599;
    v241 = *&v600[0];
  }

  v241[2] = v246;
  *(v241 + v244 + 8) = v242;
  v240 = v590.i64[0];
  if (v590.i64[0] == 1)
  {
LABEL_87:
    v239 = v243;
    goto LABEL_88;
  }

  v609 = 4 * v244 + 36;
  v263 = v244 + 2;
  v264 = v590.i64[0] - 1;
  v265 = 0;
  while (1)
  {
    v266 = v265 + 1;
    if (v265 + 1 >= v240)
    {
      BUG();
    }

    v267 = *(v243 + 8 * v265 + 40);
    if ((v267 - 0x80000000) < 0xFFFFFFFF00000000)
    {
      break;
    }

    *&v600[0] = v241;
    v268 = v241[3];
    *&v606 = v263 + v265;
    if (v268 >> 1 <= v265 + v244 + 1)
    {
      v599 = v243;
      *&v571 = v244;
      v591 = v263;
      v592 = v264;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v268 >= 2, v606, 1);
      v264 = v592;
      v263 = v591;
      v244 = v571;
      v240 = v590.i64[0];
      v243 = v599;
      v241 = *&v600[0];
    }

    v241[2] = v606;
    *(v241 + 4 * v265++ + v609) = v267;
    if (v264 == v266)
    {
      goto LABEL_87;
    }
  }

LABEL_121:
  v305 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v305, 0, 0);
  *v306 = 0xD00000000000001FLL;
  *(v306 + 8) = "Unsupported data type " + 0x8000000000000000;
  *(v306 + 16) = 0;
  *(v306 + 32) = 0;
  *(v306 + 48) = 1;
  swift_willThrow();

  v243;

  v307 = type metadata accessor for AnyColumn(0);
  (*(*(v307 - 8) + 8))(v608, v307);
  return (*(v545 + 8))(v564, v563);
}

uint64_t outlined init with take of (DataFrame.Slice, DataFrame.Slice)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame.Slice, DataFrame.Slice));
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t specialized DataFrameProtocol.subscript.getter(uint64_t a1)
{
  v17 = a1;
  v20 = v1;
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DefaultIndices<DataFrame.Rows>);
  v3 = *(*(v23 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v18 = &v17;
  v6 = type metadata accessor for DataFrame.Rows(0);
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = type metadata accessor for DataFrame(0);
  v19 = v2;
  v21 = v10;
  dispatch thunk of DataFrameProtocol.rows.getter(v10, &protocol witness table for DataFrame);
  (*(v22 + 16))(&v17, &v17, v6);
  v11 = v23;
  v12 = lazy protocol witness table accessor for type DataFrame.Rows and conformance DataFrame.Rows();
  dispatch thunk of Collection.startIndex.getter(v6, v12);
  v23 = *(v11 + 40);
  v13 = v18;
  dispatch thunk of Collection.endIndex.getter(v6, v12);
  v14 = v17;
  (*(v22 + 8))(&v17, v6);
  v15 = *(v13 + v23);
  if (v15 < v14)
  {
    BUG();
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v13, &demangling cache variable for type metadata for DefaultIndices<DataFrame.Rows>);
  return dispatch thunk of DataFrameProtocol.subscript.getter(v14, v15, v21, &protocol witness table for DataFrame);
}

uint64_t lazy protocol witness table accessor for type DataFrame.Rows and conformance DataFrame.Rows()
{
  result = lazy protocol witness table cache variable for type DataFrame.Rows and conformance DataFrame.Rows;
  if (!lazy protocol witness table cache variable for type DataFrame.Rows and conformance DataFrame.Rows)
  {
    v1 = type metadata accessor for DataFrame.Rows(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for DataFrame.Rows, v1);
    lazy protocol witness table cache variable for type DataFrame.Rows and conformance DataFrame.Rows = result;
  }

  return result;
}

uint64_t *_s8CreateML15MLUntypedColumnVyAC11TabularData0D0VySayxGGKclufCSi_Tt1g5(uint64_t a1, __m128 a2)
{
  v51 = v3;
  v42 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int]>);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[Int]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[Int]>, &protocol conformance descriptor for Column<A>);
  v6 = dispatch thunk of Collection.count.getter(v4, v5);
  v47 = a1;
  v48 = v4;
  if (v6)
  {
    v45 = _swiftEmptyArrayStorage;
    v7 = 0;
    if (v6 > 0)
    {
      v7 = v6;
    }

    v44 = v6;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v50 = v45;
    dispatch thunk of Collection.startIndex.getter(v4, v5);
    if (v44 < 0)
    {
      BUG();
    }

    v8 = 0;
    v41 = v5;
    while (1)
    {
      v9 = __OFADD__(1, v8);
      v10 = v8 + 1;
      if (v9)
      {
        BUG();
      }

      v40 = v10;
      v11 = dispatch thunk of Collection.subscript.read(v38, v43, v4, v5);
      v13 = *v12;

      v11(v38, 0);
      if (v13)
      {
        v14 = *(v13 + 16);
        if (v14)
        {
          v49 = _swiftEmptyArrayStorage;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
          v15 = v49;
          v16 = 0;
          v17 = v51;
          v46 = v13;
          v39 = v14;
          while (1)
          {
            v18 = *(v13 + 8 * v16 + 32);
            v38[3] = &type metadata for Int;
            v38[0] = v18;
            MLDataValue.init(fromAny:)(v38, a2);
            if (v17)
            {
              break;
            }

            a2 = v36;
            v19 = v37;
            v49 = v15;
            v20 = v15[2];
            v21 = v15[3];
            if (v21 >> 1 <= v20)
            {
              v52 = v37;
              v51 = 0;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 >= 2, v20 + 1, 1);
              v19 = v52;
              a2 = v36;
              v17 = v51;
              v15 = v49;
            }

            ++v16;
            v15[2] = v20 + 1;
            v22 = 3 * v20;
            *&v15[v22 + 4] = a2;
            LOBYTE(v15[v22 + 6]) = v19;
            v13 = v46;
            if (v39 == v16)
            {
              v51 = v17;
              goto LABEL_17;
            }
          }

          v51 = v17;

          v13;

          return (*(*(v48 - 8) + 8))(v47);
        }

        v15 = _swiftEmptyArrayStorage;
LABEL_17:
        _s8CreateML11MLDataValueO12SequenceTypeVyAExcSTRzAC7ElementRtzlufCSayACG_Tt1g5(v15, *a2.i64);
        v13;
        v24 = v38[0];
        v23 = 3;
      }

      else
      {
        v23 = 6;
        v24 = 0;
      }

      v25 = v50;
      v45 = v50;
      v26 = v50[2];
      v27 = v50[3];
      if (v27 >> 1 <= v26)
      {
        LOBYTE(v46) = v23;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27 >= 2, v26 + 1, 1);
        v23 = v46;
        v25 = v45;
      }

      v25[2] = v26 + 1;
      v28 = 3 * v26;
      v25[v28 + 4] = v24;
      v25[v28 + 5] = 0;
      v50 = v25;
      LOBYTE(v25[v28 + 6]) = v23;
      v4 = v48;
      v5 = v41;
      dispatch thunk of Collection.formIndex(after:)(v43, v48, v41);
      v8 = v40;
      if (v40 == v44)
      {
        v35 = v50;
        goto LABEL_24;
      }
    }
  }

  v35 = _swiftEmptyArrayStorage;
LABEL_24:
  v38[0] = v35;
  v30 = alloca(24);
  v31 = alloca(32);
  ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
  v34 = v33;
  v38[0];
  (*(*(v48 - 8) + 8))(v47);
  result = v42;
  *v42 = ML14_UntypedColumnC_s5Error_pTt1g5;
  *(result + 8) = v34 & 1;
  return result;
}

uint64_t *_s8CreateML15MLUntypedColumnVyAC11TabularData0D0VySayxGGKclufCSf_Tt1g5(uint64_t a1, __m128 a2)
{
  v51 = v3;
  v42 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[Float]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[Float]>, &protocol conformance descriptor for Column<A>);
  v6 = dispatch thunk of Collection.count.getter(v4, v5);
  v47 = a1;
  v48 = v4;
  if (v6)
  {
    v45 = _swiftEmptyArrayStorage;
    v7 = 0;
    if (v6 > 0)
    {
      v7 = v6;
    }

    v44 = v6;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v50 = v45;
    dispatch thunk of Collection.startIndex.getter(v4, v5);
    if (v44 < 0)
    {
      BUG();
    }

    v8 = 0;
    v41 = v5;
    while (1)
    {
      v9 = __OFADD__(1, v8);
      v10 = v8 + 1;
      if (v9)
      {
        BUG();
      }

      v40 = v10;
      v11 = dispatch thunk of Collection.subscript.read(v38, v43, v4, v5);
      v13 = *v12;

      v11(v38, 0);
      if (v13)
      {
        v14 = *(v13 + 16);
        if (v14)
        {
          v49 = _swiftEmptyArrayStorage;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
          v15 = v49;
          v16 = 0;
          v17 = v51;
          v46 = v13;
          v39 = v14;
          while (1)
          {
            v18 = *(v13 + 4 * v16 + 32);
            v38[3] = &type metadata for Float;
            LODWORD(v38[0]) = v18.i32[0];
            MLDataValue.init(fromAny:)(v38, v18);
            if (v17)
            {
              break;
            }

            a2 = v36;
            v19 = v37;
            v49 = v15;
            v20 = v15[2];
            v21 = v15[3];
            if (v21 >> 1 <= v20)
            {
              v52 = v37;
              v51 = 0;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 >= 2, v20 + 1, 1);
              v19 = v52;
              a2 = v36;
              v17 = v51;
              v15 = v49;
            }

            ++v16;
            v15[2] = v20 + 1;
            v22 = 3 * v20;
            *&v15[v22 + 4] = a2;
            LOBYTE(v15[v22 + 6]) = v19;
            v13 = v46;
            if (v39 == v16)
            {
              v51 = v17;
              goto LABEL_17;
            }
          }

          v51 = v17;

          v13;

          return (*(*(v48 - 8) + 8))(v47);
        }

        v15 = _swiftEmptyArrayStorage;
LABEL_17:
        _s8CreateML11MLDataValueO12SequenceTypeVyAExcSTRzAC7ElementRtzlufCSayACG_Tt1g5(v15, *a2.i64);
        v13;
        v24 = v38[0];
        v23 = 3;
      }

      else
      {
        v23 = 6;
        v24 = 0;
      }

      v25 = v50;
      v45 = v50;
      v26 = v50[2];
      v27 = v50[3];
      if (v27 >> 1 <= v26)
      {
        LOBYTE(v46) = v23;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27 >= 2, v26 + 1, 1);
        v23 = v46;
        v25 = v45;
      }

      v25[2] = v26 + 1;
      v28 = 3 * v26;
      v25[v28 + 4] = v24;
      v25[v28 + 5] = 0;
      v50 = v25;
      LOBYTE(v25[v28 + 6]) = v23;
      v4 = v48;
      v5 = v41;
      dispatch thunk of Collection.formIndex(after:)(v43, v48, v41);
      v8 = v40;
      if (v40 == v44)
      {
        v35 = v50;
        goto LABEL_24;
      }
    }
  }

  v35 = _swiftEmptyArrayStorage;
LABEL_24:
  v38[0] = v35;
  v30 = alloca(24);
  v31 = alloca(32);
  ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
  v34 = v33;
  v38[0];
  (*(*(v48 - 8) + 8))(v47);
  result = v42;
  *v42 = ML14_UntypedColumnC_s5Error_pTt1g5;
  *(result + 8) = v34 & 1;
  return result;
}

uint64_t *_s8CreateML15MLUntypedColumnVyAC11TabularData0D0VySayxGGKclufCSd_Tt1g5(uint64_t a1, __m128 a2)
{
  v51 = v3;
  v42 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[Double]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[Double]>, &protocol conformance descriptor for Column<A>);
  v6 = dispatch thunk of Collection.count.getter(v4, v5);
  v47 = a1;
  v48 = v4;
  if (v6)
  {
    v45 = _swiftEmptyArrayStorage;
    v7 = 0;
    if (v6 > 0)
    {
      v7 = v6;
    }

    v44 = v6;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v50 = v45;
    dispatch thunk of Collection.startIndex.getter(v4, v5);
    if (v44 < 0)
    {
      BUG();
    }

    v8 = 0;
    v41 = v5;
    while (1)
    {
      v9 = __OFADD__(1, v8);
      v10 = v8 + 1;
      if (v9)
      {
        BUG();
      }

      v40 = v10;
      v11 = dispatch thunk of Collection.subscript.read(v38, v43, v4, v5);
      v13 = *v12;

      v11(v38, 0);
      if (v13)
      {
        v14 = *(v13 + 16);
        if (v14)
        {
          v49 = _swiftEmptyArrayStorage;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
          v15 = v49;
          v16 = 0;
          v17 = v51;
          v46 = v13;
          v39 = v14;
          while (1)
          {
            v18 = *(v13 + 8 * v16 + 32);
            v38[3] = &type metadata for Double;
            v38[0] = v18.i64[0];
            MLDataValue.init(fromAny:)(v38, v18);
            if (v17)
            {
              break;
            }

            a2 = v36;
            v19 = v37;
            v49 = v15;
            v20 = v15[2];
            v21 = v15[3];
            if (v21 >> 1 <= v20)
            {
              v52 = v37;
              v51 = 0;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 >= 2, v20 + 1, 1);
              v19 = v52;
              a2 = v36;
              v17 = v51;
              v15 = v49;
            }

            ++v16;
            v15[2] = v20 + 1;
            v22 = 3 * v20;
            *&v15[v22 + 4] = a2;
            LOBYTE(v15[v22 + 6]) = v19;
            v13 = v46;
            if (v39 == v16)
            {
              v51 = v17;
              goto LABEL_17;
            }
          }

          v51 = v17;

          v13;

          return (*(*(v48 - 8) + 8))(v47);
        }

        v15 = _swiftEmptyArrayStorage;
LABEL_17:
        _s8CreateML11MLDataValueO12SequenceTypeVyAExcSTRzAC7ElementRtzlufCSayACG_Tt1g5(v15, *a2.i64);
        v13;
        v24 = v38[0];
        v23 = 3;
      }

      else
      {
        v23 = 6;
        v24 = 0;
      }

      v25 = v50;
      v45 = v50;
      v26 = v50[2];
      v27 = v50[3];
      if (v27 >> 1 <= v26)
      {
        LOBYTE(v46) = v23;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27 >= 2, v26 + 1, 1);
        v23 = v46;
        v25 = v45;
      }

      v25[2] = v26 + 1;
      v28 = 3 * v26;
      v25[v28 + 4] = v24;
      v25[v28 + 5] = 0;
      v50 = v25;
      LOBYTE(v25[v28 + 6]) = v23;
      v4 = v48;
      v5 = v41;
      dispatch thunk of Collection.formIndex(after:)(v43, v48, v41);
      v8 = v40;
      if (v40 == v44)
      {
        v35 = v50;
        goto LABEL_24;
      }
    }
  }

  v35 = _swiftEmptyArrayStorage;
LABEL_24:
  v38[0] = v35;
  v30 = alloca(24);
  v31 = alloca(32);
  ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
  v34 = v33;
  v38[0];
  (*(*(v48 - 8) + 8))(v47);
  result = v42;
  *v42 = ML14_UntypedColumnC_s5Error_pTt1g5;
  *(result + 8) = v34 & 1;
  return result;
}

uint64_t _s8CreateML15MLUntypedColumnVyAC11TabularData0D0VySayxGGKclufCSS_Tt1g5(uint64_t a1, __m128 a2)
{
  v49 = v3;
  v42 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[String]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[String]>, &protocol conformance descriptor for Column<A>);
  v6 = dispatch thunk of Collection.count.getter(v4, v5);
  v50 = a1;
  v51 = v4;
  if (v6)
  {
    v48 = _swiftEmptyArrayStorage;
    v7 = 0;
    if (v6 > 0)
    {
      v7 = v6;
    }

    v45 = v6;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v53 = v48;
    dispatch thunk of Collection.startIndex.getter(v4, v5);
    if (v45 < 0)
    {
      BUG();
    }

    v8 = 0;
    v41 = v5;
    while (1)
    {
      v9 = __OFADD__(1, v8);
      v10 = v8 + 1;
      if (v9)
      {
        BUG();
      }

      v40 = v10;
      v11 = dispatch thunk of Collection.subscript.read(v43, v44, v4, v5);
      v13 = *v12;

      v11(v43, 0);
      if (v13)
      {
        v14 = *(v13 + 16);
        if (v14)
        {
          v52 = _swiftEmptyArrayStorage;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
          v15 = v52;
          v46 = v13;
          v16 = (v13 + 40);
          while (1)
          {
            v17 = *(v16 - 1);
            v18 = *v16;
            v43[3] = &type metadata for String;
            v43[0] = v17;
            v43[1] = v18;
            swift_bridgeObjectRetain_n(v18, 2);
            v19 = v49;
            MLDataValue.init(fromAny:)(v43, a2);
            v49 = v19;
            if (v19)
            {
              break;
            }

            v18;
            a2 = v38;
            v20 = v39;
            v52 = v15;
            v21 = v15[2];
            v22 = v15[3];
            v23 = v21 + 1;
            if (v22 >> 1 <= v21)
            {
              v47 = v21 + 1;
              v54 = v39;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22 >= 2, v23, 1);
              v23 = v47;
              v20 = v54;
              a2 = v38;
              v15 = v52;
            }

            v15[2] = v23;
            v24 = 3 * v21;
            *&v15[v24 + 4] = a2;
            LOBYTE(v15[v24 + 6]) = v20;
            v16 += 2;
            if (!--v14)
            {
              LOBYTE(v13) = v46;
              goto LABEL_17;
            }
          }

          v46;

          v18;
          return (*(*(v51 - 8) + 8))(v50);
        }

        v15 = _swiftEmptyArrayStorage;
LABEL_17:
        _s8CreateML11MLDataValueO12SequenceTypeVyAExcSTRzAC7ElementRtzlufCSayACG_Tt1g5(v15, *a2.i64);
        v13;
        v26 = v43[0];
        v25 = 3;
      }

      else
      {
        v25 = 6;
        v26 = 0;
      }

      v27 = v53;
      v48 = v53;
      v28 = v53[2];
      v29 = v53[3];
      if (v29 >> 1 <= v28)
      {
        LOBYTE(v53) = v25;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v29 >= 2, v28 + 1, 1);
        v25 = v53;
        v27 = v48;
      }

      v27[2] = v28 + 1;
      v30 = 3 * v28;
      v27[v30 + 4] = v26;
      v27[v30 + 5] = 0;
      v53 = v27;
      LOBYTE(v27[v30 + 6]) = v25;
      v4 = v51;
      v5 = v41;
      dispatch thunk of Collection.formIndex(after:)(v44, v51, v41);
      v8 = v40;
      if (v40 == v45)
      {
        v37 = v53;
        goto LABEL_24;
      }
    }
  }

  v37 = _swiftEmptyArrayStorage;
LABEL_24:
  v43[0] = v37;
  v32 = alloca(24);
  v33 = alloca(32);
  ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
  v36 = v35;
  v43[0];
  (*(*(v51 - 8) + 8))(v50);
  result = v42;
  *v42 = ML14_UntypedColumnC_s5Error_pTt1g5;
  *(v42 + 8) = v36 & 1;
  return result;
}

uint64_t *_s8CreateML15MLUntypedColumnVyAC11TabularData0D0VySayxGGKclufCyp_Tt1g5(uint64_t a1, __m128 a2)
{
  v50 = v3;
  v44 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Any]>);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[Any]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[Any]>, &protocol conformance descriptor for Column<A>);
  v6 = dispatch thunk of Collection.count.getter(v4, v5);
  v51 = a1;
  v52 = v4;
  if (v6)
  {
    v49 = _swiftEmptyArrayStorage;
    v7 = 0;
    if (v6 > 0)
    {
      v7 = v6;
    }

    v46 = v6;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v54 = v49;
    dispatch thunk of Collection.startIndex.getter(v4, v5);
    if (v46 < 0)
    {
      BUG();
    }

    v8 = 0;
    v41 = &type metadata for Any + 8;
    v43 = v5;
    while (1)
    {
      v9 = __OFADD__(1, v8);
      v10 = v8 + 1;
      if (v9)
      {
        BUG();
      }

      v42 = v10;
      v11 = dispatch thunk of Collection.subscript.read(v40, v45, v4, v5);
      v13 = *v12;

      v11(v40, 0);
      if (v13)
      {
        v14 = *(v13 + 16);
        if (v14)
        {
          v53 = _swiftEmptyArrayStorage;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
          v15 = v53;
          v47 = v13;
          v16 = v13 + 32;
          while (1)
          {
            outlined init with copy of Any(v16, v40);
            v36[3] = v41;
            v36[0] = swift_allocObject(&unk_391570, 48, 7);
            outlined init with copy of Any(v40, v36[0] + 16);
            v17 = v50;
            MLDataValue.init(fromAny:)(v36, a2);
            if (v17)
            {
              break;
            }

            v50 = 0;
            __swift_destroy_boxed_opaque_existential_1Tm(v40);
            a2 = v38;
            v18 = v39;
            v53 = v15;
            v19 = v15[2];
            v20 = v15[3];
            v21 = v19 + 1;
            if (v20 >> 1 <= v19)
            {
              v48 = v19 + 1;
              v55 = v39;
              v37 = v38;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 >= 2, v21, 1);
              v21 = v48;
              v18 = v55;
              a2 = v37;
              v15 = v53;
            }

            v15[2] = v21;
            v22 = 3 * v19;
            *&v15[v22 + 4] = a2;
            LOBYTE(v15[v22 + 6]) = v18;
            v16 += 32;
            if (!--v14)
            {
              LOBYTE(v13) = v47;
              goto LABEL_17;
            }
          }

          __swift_destroy_boxed_opaque_existential_1Tm(v40);

          v47;

          return (*(*(v52 - 8) + 8))(v51);
        }

        v15 = _swiftEmptyArrayStorage;
LABEL_17:
        _s8CreateML11MLDataValueO12SequenceTypeVyAExcSTRzAC7ElementRtzlufCSayACG_Tt1g5(v15, *a2.i64);
        v13;
        v24 = *v40;
        v23 = 3;
      }

      else
      {
        v23 = 6;
        v24 = 0;
      }

      v25 = v54;
      v49 = v54;
      v26 = v54[2];
      v27 = v54[3];
      if (v27 >> 1 <= v26)
      {
        LOBYTE(v54) = v23;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27 >= 2, v26 + 1, 1);
        v23 = v54;
        v25 = v49;
      }

      v25[2] = v26 + 1;
      v28 = 3 * v26;
      v25[v28 + 4] = v24;
      v25[v28 + 5] = 0;
      v54 = v25;
      LOBYTE(v25[v28 + 6]) = v23;
      v4 = v52;
      v5 = v43;
      dispatch thunk of Collection.formIndex(after:)(v45, v52, v43);
      v8 = v42;
      if (v42 == v46)
      {
        v35 = v54;
        goto LABEL_24;
      }
    }
  }

  v35 = _swiftEmptyArrayStorage;
LABEL_24:
  *v40 = v35;
  v30 = alloca(24);
  v31 = alloca(32);
  v36[2] = v40;
  ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
  v34 = v33;
  v40[0];
  (*(*(v52 - 8) + 8))(v51);
  result = v44;
  *v44 = ML14_UntypedColumnC_s5Error_pTt1g5;
  *(result + 8) = v34 & 1;
  return result;
}

uint64_t *_s8CreateML15MLUntypedColumnVyAC11TabularData0D0VySayxSgGGKclufCyp_Tt1g5(uint64_t a1, __m128 a2)
{
  v36 = v3;
  v31 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Any?]>);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[Any?]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[Any?]>, &protocol conformance descriptor for Column<A>);
  v6 = dispatch thunk of Collection.count.getter(v4, v5);
  v37 = a1;
  v38 = v4;
  if (v6)
  {
    v35 = _swiftEmptyArrayStorage;
    v7 = 0;
    if (v6 > 0)
    {
      v7 = v6;
    }

    v34 = v6;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v5;
    v9 = v35;
    v33 = v8;
    dispatch thunk of Collection.startIndex.getter(v4, v8);
    if (v34 < 0)
    {
      BUG();
    }

    v10 = 0;
    while (1)
    {
      if (__OFADD__(1, v10++))
      {
        BUG();
      }

      v12 = dispatch thunk of Collection.subscript.read(v27, v32, v38, v33);
      v14 = *v13;

      *a2.i64 = v12(v27, 0);
      v15 = v36;
      specialized closure #1 in MLUntypedColumn.init<A>(_:)(v14, a2);
      if (v15)
      {
        break;
      }

      v36 = 0;
      v14;
      a2 = v29;
      v16 = v30;
      v35 = v9;
      v17 = v9[2];
      v18 = v9[3];
      v19 = v17 + 1;
      if (v18 >> 1 <= v17)
      {
        v39 = v30;
        v28 = v29;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18 >= 2, v19, 1);
        v16 = v39;
        a2 = v28;
        v9 = v35;
      }

      v9[2] = v19;
      v20 = 3 * v17;
      *&v9[v20 + 4] = a2;
      LOBYTE(v9[v20 + 6]) = v16;
      dispatch thunk of Collection.formIndex(after:)(v32, v38, v33);
      if (v10 == v34)
      {
        goto LABEL_13;
      }
    }

    v14;
    return (*(*(v38 - 8) + 8))(v37);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_13:
    v27[0] = v9;
    v21 = alloca(24);
    v22 = alloca(32);
    v27[2] = v27;
    ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
    v25 = v24;
    v27[0];
    (*(*(v38 - 8) + 8))(v37);
    result = v31;
    *v31 = ML14_UntypedColumnC_s5Error_pTt1g5;
    *(result + 8) = v25 & 1;
  }

  return result;
}

uint64_t *_s8CreateML15MLUntypedColumnVyAC11TabularData0D0VySDySSxGGKclufCSi_Tt1g5Tm(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void *), uint64_t (*a5)(uint64_t), double a6)
{
  v42 = a5;
  v44 = a4;
  v51 = v7;
  v43 = v6;
  v10 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledName(a2);
  v12 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(a3, a2, &protocol conformance descriptor for Column<A>);
  v13 = dispatch thunk of Collection.count.getter(v11, v12);
  v49 = v10;
  v50 = v11;
  if (v13)
  {
    v48 = _swiftEmptyArrayStorage;
    v14 = 0;
    if (v13 > 0)
    {
      v14 = v13;
    }

    v47 = v13;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v52 = v48;
    dispatch thunk of Collection.startIndex.getter(v11, v12);
    if (v47 < 0)
    {
      BUG();
    }

    v46 = v12;
    v15 = 0;
    while (1)
    {
      v16 = __OFADD__(1, v15);
      v17 = v15 + 1;
      if (v16)
      {
        BUG();
      }

      v41 = v17;
      v18 = dispatch thunk of Collection.subscript.read(v40, v45, v11, v46);
      v20 = *v19;

      v18(v40, 0);
      if (v20)
      {
        v21 = v51;
        v22 = v42(v20);
        if (v21)
        {

          v20;
          return (*(*(v50 - 8) + 8))(v49);
        }

        v23 = v22;
        v51 = 0;
        v24 = *(v22 + 16);
        v25 = _swiftEmptyDictionarySingleton;
        if (v24)
        {
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<MLDataValue, MLDataValue>);
          v25 = static _DictionaryStorage.allocate(capacity:)(v24);
        }

        v40[0] = v25;

        v26 = v51;
        specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v23, 1, v40, a6);
        v51 = v26;
        if (v26)
        {
          swift_unexpectedError(v51, "Swift/Dictionary.swift", 22, 1, 489);
          BUG();
        }

        v20;
        v23;
        v27 = v40[0];
        v28 = 4;
      }

      else
      {
        v28 = 6;
        v27 = 0;
      }

      v29 = v52;
      v48 = v52;
      v30 = v52[2];
      v31 = v52[3];
      if (v31 >> 1 <= v30)
      {
        v52 = v27;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v31 >= 2, v30 + 1, 1);
        v27 = v52;
        v29 = v48;
      }

      v29[2] = v30 + 1;
      v32 = 3 * v30;
      v29[v32 + 4] = v27;
      v29[v32 + 5] = 0;
      v52 = v29;
      LOBYTE(v29[v32 + 6]) = v28;
      v11 = v50;
      dispatch thunk of Collection.formIndex(after:)(v45, v50, v46);
      v15 = v41;
      if (v41 == v47)
      {
        v33 = v52;
        goto LABEL_19;
      }
    }
  }

  v33 = _swiftEmptyArrayStorage;
LABEL_19:
  v40[0] = v33;
  v34 = alloca(24);
  v35 = alloca(32);
  v40[2] = v40;
  ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(v44);
  v38 = v37;
  v40[0];
  (*(*(v50 - 8) + 8))(v49);
  result = v43;
  *v43 = ML14_UntypedColumnC_s5Error_pTt1g5;
  *(result + 8) = v38 & 1;
  return result;
}

uint64_t _s8CreateML11MLDataValueO12SequenceTypeVyAExcSTRzAC7ElementRtzlufCSayACG_Tt1g5(uint64_t a1, double a2)
{
  v3 = a1;
  v4 = v2;
  v5 = tc_v1_flex_list_create(0);
  if (!v5)
  {
    BUG();
  }

  v6 = v5;
  v7 = type metadata accessor for CMLSequence();
  v8 = swift_allocObject(v7, 25, 7);
  *(v8 + 16) = v6;
  v28 = v8;
  *(v8 + 24) = 1;
  v9 = *(a1 + 16);
  if (v9)
  {
    v26 = v4;

    v27 = a1;
    v10 = (a1 + 48);
    do
    {
      v11 = *(v10 - 2);
      v12 = *(v10 - 1);
      v25 = *v10;
      v24 = v9;
      switch(*v10)
      {
        case 0:
          v13 = specialized handling<A, B>(_:_:)(v11);
          if (!v13)
          {
            BUG();
          }

          goto LABEL_11;
        case 1:
          a2 = *(v10 - 2);
          v13 = specialized handling<A, B>(_:_:)();
          if (!v13)
          {
            BUG();
          }

LABEL_11:
          v18 = type metadata accessor for CMLFeatureValue();
          swift_allocObject(v18, 25, 7);
          v19 = CMLFeatureValue.init(rawValue:ownsValue:)(v13, 1);
          goto LABEL_16;
        case 2:
          type metadata accessor for CMLFeatureValue();
          outlined copy of MLDataValue(v11, v12, 2u);
          swift_bridgeObjectRetain_n(v12, 2);
          v16 = CMLFeatureValue.__allocating_init(_:)(v11, v12);
          v17 = 2;
          v14 = v16;
          v15 = v12;
          goto LABEL_14;
        case 3:
          swift_retain_n(v11, 3);
          v14 = MLDataValue.SequenceType.featureValue.getter(a2);

          v15 = v12;
          v23 = 3;
          goto LABEL_13;
        case 4:
          swift_bridgeObjectRetain_n(v11, 3);
          v14 = MLDataValue.DictionaryType.featureValue.getter(v11, 3);
          v11;
          v15 = v12;
          v23 = 4;
          goto LABEL_13;
        case 5:
          v20 = v11;
          v21 = v20;
          v21;
          v14 = MLDataValue.MultiArrayType.featureValue.getter();

          v15 = v12;
          v23 = 5;
LABEL_13:
          v17 = v23;
LABEL_14:
          outlined consume of MLDataValue(v11, v15, v17);
          break;
        case 6:
          type metadata accessor for CMLFeatureValue();
          v19 = CMLFeatureValue.__allocating_init()();
LABEL_16:
          v14 = v19;
          break;
      }

      CMLSequence.append(_:)(v14);

      outlined consume of MLDataValue(v11, v12, v25);
      v10 += 24;
      --v9;
    }

    while (v24 != 1);
    v3 = v27;
    v27;
    v4 = v26;
  }

  v3;
  result = v28;
  *v4 = v28;
  return result;
}

uint64_t specialized closure #1 in MLUntypedColumn.init<A>(_:)(uint64_t a1, __m128 a2)
{
  if (!a1)
  {
    *result = 0;
    *(result + 16) = 6;
    return result;
  }

  v18 = result;
  v23 = v3;
  v4 = *(a1 + 16);
  if (v4)
  {
    v22 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = a1 + 32;
    v17 = &type metadata for Any + 8;
    while (1)
    {
      v21 = v5;
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v6, v12, &demangling cache variable for type metadata for Any?);
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v12, &v13, &demangling cache variable for type metadata for Any?);
      v16 = v4;
      if (v14)
      {
        outlined init with take of Any(&v13, v11);
        v14 = v17;
        *&v13 = swift_allocObject(&unk_391570, 48, 7);
        outlined init with copy of Any(v11, v13 + 16);
        v7 = v23;
        MLDataValue.init(fromAny:)(&v13, a2);
        v23 = v7;
        v5 = v21;
        if (v7)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v11);
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v12, &demangling cache variable for type metadata for Any?);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v11);
        v15 = v19;
        v24 = v20;
      }

      else
      {
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v13, &demangling cache variable for type metadata for Any?);
        v19 = 0;
        v20 = 6;
        v15 = 0;
        v24 = 6;
        v5 = v21;
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v12, &demangling cache variable for type metadata for Any?);
      v22 = v5;
      v8 = v5[2];
      if (v5[3] >> 1 <= v8)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v5[3] >= 2uLL, v8 + 1, 1);
        v5 = v22;
      }

      v5[2] = v8 + 1;
      v9 = 3 * v8;
      a2 = v15;
      *&v5[v9 + 4] = v15;
      LOBYTE(v5[v9 + 6]) = v24;
      v6 += 32;
      v4 = v16 - 1;
      if (v16 == 1)
      {
        goto LABEL_14;
      }
    }
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_14:
  _s8CreateML11MLDataValueO12SequenceTypeVyAExcSTRzAC7ElementRtzlufCSayACG_Tt1g5(v5, *a2.i64);
  result = v12[0];
  v10 = v18;
  *v18 = v12[0];
  v10[1] = 0;
  *(v10 + 16) = 3;
  return result;
}

char specialized closure #1 in closure #1 in MLUntypedColumn.init<A>(_:)(__m128 *a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a3, &v13, &demangling cache variable for type metadata for (key: String, value: Any?)?);
  if (v13.i64[1])
  {
    v4 = v13;
    v12 = v15;
    v11 = v14;
    v10 = v13;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v10, &v13, &demangling cache variable for type metadata for (key: String, value: Any?));
    v13.i8[8];
    if (*(&v15 + 1))
    {
      outlined init with take of Any(&v14, v9);
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v10, &v13, &demangling cache variable for type metadata for (key: String, value: Any?));
      v16 = v3;
      v5 = v13;
      *a1 = v13;
      a1[1].i8[0] = 2;
      v8[3] = &type metadata for Any + 8;
      v8[0] = swift_allocObject(&unk_391570, 48, 7);
      outlined init with copy of Any(v9, v8[0] + 16);
      v6 = v16;
      MLDataValue.init(fromAny:)(v8, v4);
      if (v6)
      {
        outlined consume of MLDataValue(v5.i64[0], v5.i64[1], 2);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v10, &demangling cache variable for type metadata for (key: String, value: Any?));
      return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v14, &demangling cache variable for type metadata for Any?);
    }

    else
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v14, &demangling cache variable for type metadata for Any?);
      v13 = v10;
      v15 = v12;
      v14 = v11;
      *a1 = v10;
      a1[1].i8[0] = 2;
      *a2 = 0;
      *(a2 + 16) = 6;
      return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v14, &demangling cache variable for type metadata for Any?);
    }
  }

  else
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v13, &demangling cache variable for type metadata for (key: String, value: Any?)?);
    *a1 = 0;
    result = 6;
    a1[1].i8[0] = 6;
    *a2 = 0;
    *(a2 + 16) = 6;
  }

  return result;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, int a2, void *a3, double a4)
{
  v42 = v4;
  v49 = a3;
  v51 = a2;
  v41 = *(a1 + 16);

  v48 = a1;
  v43 = (a1 + 72);
  v5 = 0;
  while (1)
  {
    if (v41 == v5)
    {
      return swift_bridgeObjectRelease_n(v48, 2);
    }

    if (v5 >= *(v48 + 16))
    {
      BUG();
    }

    v6 = *(v43 - 24);
    v53 = *v43;
    v7 = *(v43 - 1);
    v8 = *(v43 - 2);
    v9 = *(v43 - 5);
    v10 = *(v43 - 4);
    v52 = v6;
    v50 = v6;
    v40 = v5;
    outlined copy of MLDataValue(v9, v10, v6);
    v46 = v53;
    outlined copy of MLDataValue(v8, v7, v53);
    if (v50 == 0xFF)
    {
      return swift_bridgeObjectRelease_n(v48, 2);
    }

    v45 = v8;
    v44 = v7;
    v37[0] = v9;
    v37[1] = v10;
    v38 = v50;
    *&v11 = v9;
    v12 = *v49;
    v47 = v10;
    *(&v11 + 1) = v10;
    specialized __RawDictionaryStorage.find<A>(_:)(v11, v50, a4);
    v15 = v14;
    *&v11 = (v13 & 1) == 0;
    v16 = __OFADD__(v12[2], v11);
    v17 = v12[2] + v11;
    if (v16)
    {
      BUG();
    }

    v18 = v13;
    if (v12[3] >= v17)
    {
      if ((v51 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<MLDataValue, MLDataValue>);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, v51);
      *&v19 = v9;
      *(&v19 + 1) = v47;
      specialized __RawDictionaryStorage.find<A>(_:)(v19, v50, a4);
      v15 = v21;
      LOBYTE(v22) = v22 & 1;
      if ((v18 & 1) != v22)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLDataValue, v47, v22, v20);
        BUG();
      }
    }

    v23 = v9;
    if (v18)
    {
      break;
    }

    v24 = *v49;
    v24[(v15 >> 6) + 8] |= 1 << v15;
    v25 = v24[6];
    v26 = 24 * v15;
    *(v25 + v26) = v9;
    *(v25 + v26 + 8) = v47;
    *(v25 + v26 + 16) = v52;
    v27 = v24[7];
    *(v27 + v26) = v45;
    *(v27 + v26 + 8) = v44;
    *(v27 + v26 + 16) = v53;
    v28 = v24[2];
    v16 = __OFADD__(1, v28);
    v29 = v28 + 1;
    if (v16)
    {
      BUG();
    }

    v24[2] = v29;
    v43 += 48;
    v5 = v40 + 1;
    LOBYTE(v24) = 1;
    v51 = v24;
  }

  v31 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
  swift_willThrow();
  v39 = v31;
  swift_errorRetain(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
  if (swift_dynamicCast(&demangling cache variable for type metadata for Error, &v39, v32, &type metadata for _MergeError, 0))
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    v34._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
    v34._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v34);
    _print_unlocked<A, B>(_:_:)(v37, &v35, &type metadata for MLDataValue, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v34._countAndFlagsBits = 39;
    v34._object = 0xE100000000000000;
    String.append(_:)(v34);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v35, v36, "Swift/NativeDictionary.swift", 28, 2, 783, 0);
    BUG();
  }

  v33 = v48;
  v48;
  outlined consume of MLDataValue(v45, v44, v46);
  outlined consume of MLDataValue(v23, v47, v50);
  v33;
  return v39;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2, a1);
  return a2;
}

uint64_t outlined copy of MLDataValue(void *a1, uint64_t a2, unsigned __int8 a3)
{
  result = a3 - 2;
  switch(a3)
  {
    case 2u:
    case 4u:

      break;
    case 3u:

      break;
    case 5u:
      result = a1;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t Array<A>.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = *(*(a2 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = *a1;
  if (*(a1 + 8))
  {
    outlined consume of Result<_DataTable, Error>(*a1, 1);
    return static Array._allocateUninitialized(_:)(0, a2);
  }

  else
  {
    v19 = Array.init()(a2);
    v16 = v19;
    v17 = v8;
    v18 = 0;
    outlined copy of Result<_DataTable, Error>(v8, 0);
    v11 = type metadata accessor for MLDataColumn(0, a2, a3, v10);
    v12 = MLDataColumn.count.getter();
    outlined consume of Result<_DataTable, Error>(v8, 0);
    if (v12 < 0)
    {
      BUG();
    }

    if (v12)
    {
      v19 = v12;
      v13 = 0;
      v15 = v11;
      do
      {
        v17 = v8;
        v18 = 0;
        outlined copy of Result<_DataTable, Error>(v8, 0);
        MLDataColumn.subscript.getter(v13, v15, a4);
        outlined consume of Result<_DataTable, Error>(v8, 0);
        v14 = type metadata accessor for Array(0, a2);
        Array.append(_:)(&v15, v14);
        ++v13;
      }

      while (v19 != v13);
      outlined consume of Result<_DataTable, Error>(v8, 0);
      return v16;
    }

    else
    {
      outlined consume of Result<_DataTable, Error>(v8, 0);
      return v19;
    }
  }
}

uint64_t MLDataColumn.count.getter()
{
  if (*(v0 + 8))
  {
    return -1;
  }

  v2 = *v0;
  outlined copy of Result<_DataTable, Error>(*v0, 0);
  v3 = CMLColumn.size.getter();
  outlined consume of Result<_DataTable, Error>(v2, 0);
  return v3;
}

uint64_t MLDataColumn.init(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v17 = a2;
  v15 = v4;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  (*(v6 + 16))(&v13, a1);
  MLUntypedColumn.init<A>(repeating:count:)(&v13, v17, a3, v16);
  (*(v6 + 8))(a1, a3);
  result = v13;
  v11 = v14;
  v12 = v15;
  *v15 = v13;
  *(v12 + 8) = v11;
  return result;
}

uint64_t MLDataColumn.subscript.getter(uint64_t a1, uint64_t a2, double a3)
{
  v15 = v3;
  v5 = *(a2 + 16);
  v14 = type metadata accessor for Optional(0, v5);
  v13 = *(v14 - 8);
  v6 = *(v13 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = *(v4 + 8);
  v11 = *v4;
  v12 = v9;
  MLDataColumn.element(at:)(a1, a2, a3);
  if (__swift_getEnumTagSinglePayload(&v11, 1, v5) != 1)
  {
    return (*(*(v5 - 8) + 32))(v15, &v11, v5);
  }

  (*(*(a2 + 24) + 24))(v5);
  result = __swift_getEnumTagSinglePayload(&v11, 1, v5);
  if (result != 1)
  {
    return (*(v13 + 8))(&v11, v14);
  }

  return result;
}

uint64_t MLDataColumn.init(from:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  *result = *a1;
  *(result + 8) = v2;
  return result;
}

uint64_t MLDataColumn.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v17 = a4;
  v16 = v5;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  (*(v7 + 16))(&v14, a1);
  MLUntypedColumn.init<A>(_:)(&v14, a3);
  (*(v7 + 8))(a1, a3);
  result = v14;
  v12 = v15;
  v13 = v16;
  *v16 = v14;
  *(v13 + 8) = v12;
  return result;
}

uint64_t MLDataColumn.element(at:)(uint64_t a1, uint64_t a2, double a3)
{
  if (*(v3 + 8))
  {
    v5 = 0;
    v6 = 6;
  }

  else
  {
    v7 = *v3;
    outlined copy of Result<_DataTable, Error>(v7, 0);
    _UntypedColumn.valueAtIndex(index:)(a1, a3);
    outlined consume of Result<_DataTable, Error>(v7, 0);
    v5 = v10;
    v6 = v11;
  }

  v8 = *(a2 + 16);
  v10 = v5;
  v11 = v6;
  return (*(*(a2 + 24) + 16))(&v10, v8, *(a2 + 24));
}

uint64_t MLDataColumn.init<A>(column:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = *a1;
  v8 = *(a1 + 8);
  MLDataColumn.map<A>(to:)(a2, a2, a3, a5);
  outlined consume of Result<_DataTable, Error>(v7, v8);
  result = v10;
  *v6 = v10;
  *(v6 + 8) = v11;
  return result;
}

uint64_t MLDataColumn.map<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(v4 + 8);
  outlined copy of Result<_DataTable, Error>(*v4, v9);
  MLUntypedColumn.map<A>(to:)(a1, a3, a4);
  return outlined consume of Result<_DataTable, Error>(v8, v9);
}

BOOL MLDataColumn.isEmpty.getter()
{
  v1 = *v0;
  v4 = *(v0 + 8);
  outlined copy of Result<_DataTable, Error>(*v0, v4);
  v2 = MLDataColumn.count.getter();
  outlined consume of Result<_DataTable, Error>(v1, v4);
  return v2 <= 0;
}

uint64_t MLDataColumn.error.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0;
  }

  v1 = *v0;
  outlined copy of Result<_DataTable, Error>(*v0, 1);
  return v1;
}

uint64_t MLDataColumn.init(repeating:count:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a1 + 16);
  v7 = *a1;
  v8 = v4;
  v5 = type metadata accessor for _UntypedColumn();
  swift_allocObject(v5, 24, 7);
  result = _UntypedColumn.init(repeating:count:)(&v7, a2);
  *v3 = result;
  *(v3 + 8) = 0;
  return result;
}

uint64_t MLDataColumn.init()()
{
  v1 = v0;
  v2 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  result = swift_allocError(&type metadata for MLCreateError, v2, 0, 0);
  *v4 = 0xD00000000000001DLL;
  *(v4 + 8) = "id column named '" + 0x8000000000000000;
  *(v4 + 16) = 0;
  *(v4 + 32) = 0;
  *(v4 + 48) = 1;
  *v1 = result;
  *(v1 + 8) = 1;
  return result;
}

uint64_t MLDataColumn.append(contentsOf:)(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *v1;
  if (*(v2 + 8))
  {
    if (v4)
    {
      outlined copy of Result<_DataTable, Error>(*a1, 1);
    }

    else
    {
      outlined copy of Result<_DataTable, Error>(*a1, 0);
    }

    outlined copy of Result<_DataTable, Error>(v5, 1);
    v6 = 1;
  }

  else if (v4)
  {
    outlined copy of Result<_DataTable, Error>(*a1, 1);
    swift_errorRetain(v3);
    v6 = 1;
    v5 = v3;
  }

  else
  {
    v9 = *(a1 + 8);
    outlined copy of Result<_DataTable, Error>(v3, 0);
    outlined copy of Result<_DataTable, Error>(v5, 0);
    v7 = _UntypedColumn.appending(contentsOf:)(v3);
    outlined consume of Result<_DataTable, Error>(v5, 0);
    v5 = v7;
    v6 = 0;
    v4 = v9;
  }

  outlined consume of Result<_DataTable, Error>(*v2, *(v2 + 2));
  result = outlined consume of Result<_DataTable, Error>(v3, v4);
  *v2 = v5;
  *(v2 + 8) = v6;
  return result;
}

uint64_t MLDataColumn.subscript.getter(uint64_t a1)
{
  return MLDataColumn.subscript.getter(a1);
}

{
  v3 = v1;
  v4 = *(a1 + 8);
  v8 = *v2;
  v9 = *(v2 + 8);
  v10 = *a1;
  v11 = v4;
  outlined copy of Result<_DataTable, Error>(v8, v9);
  outlined copy of Result<_DataTable, Error>(v10, v4);
  MLUntypedColumn.subscript.getter(&v10);
  outlined consume of Result<_DataTable, Error>(v10, v11);
  outlined consume of Result<_DataTable, Error>(v8, v9);
  result = v6;
  *v3 = v6;
  *(v3 + 8) = v7;
  return result;
}

{
  return MLDataColumn.subscript.getter(a1);
}

char MLDataColumn.map<A>(skipUndefined:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a3;
  v26 = v6;
  v28 = a2;
  v32 = *v7;
  v11 = *(v7 + 8);
  v12 = swift_allocObject(&unk_391650, 64, 7);
  v13 = *(a4 + 16);
  v14 = *(a4 + 24);
  v12[2] = v13;
  v29 = a5;
  v12[3] = a5;
  v15 = v27;
  v12[4] = v14;
  v30 = a6;
  v12[5] = a6;
  v12[6] = v28;
  v12[7] = v15;
  if (v11)
  {
    v16 = v32;
    v31 = v32;
    outlined copy of Result<_DataTable, Error>(v32, 1);

    outlined copy of Result<_DataTable, Error>(v32, 1);
    v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v18 = _getErrorEmbeddedNSError<A>(_:)(&v31, v17, &protocol self-conformance witness table for Error);
    if (v18)
    {
      v19 = v18;
      outlined consume of Result<_DataTable, Error>(v16, 1);
    }

    else
    {
      v19 = swift_allocError(v17, &protocol self-conformance witness table for Error, 0, 0);
      *v23 = v16;
    }

    outlined consume of Result<_DataTable, Error>(v16, 1);

    result = 1;
  }

  else
  {
    v20 = v32;
    v25 = v32;
    v21 = v13;

    outlined copy of Result<_DataTable, Error>(v32, 0);
    closure #2 in MLDataColumn.map<A>(skipUndefined:_:)(&v25, partial apply for closure #1 in MLDataColumn.map<A>(skipUndefined:_:), v12, v21, v29, v14, v30);
    outlined consume of Result<_DataTable, Error>(v20, 0);

    v19 = v31;
    result = 0;
  }

  v24 = v26;
  *v26 = v19;
  *(v24 + 8) = result;
  return result;
}

uint64_t closure #1 in MLDataColumn.map<A>(skipUndefined:_:)(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double xmm0_8_0, uint64_t a7)
{
  v31 = a6;
  v26 = a3;
  v25 = a2;
  v28 = type metadata accessor for Optional(0, a5);
  v29 = *(v28 - 8);
  v10 = *(v29 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v27 = *(a5 - 8);
  v13 = *(v27 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v30 = &v23;
  v23 = type metadata accessor for Optional(0, a4);
  v24 = *(v23 - 8);
  v16 = *(v24 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  if (CMLFeatureValue.isUndefined.getter())
  {
    __swift_storeEnumTagSinglePayload(&v23, 1, 1, a4);
  }

  else
  {
    static MLDataValueConvertible.makeInstance(featureValue:)(a1, a4, v31, xmm0_8_0);
  }

  v25(&v23);
  if (__swift_getEnumTagSinglePayload(&v23, 1, a5) == 1)
  {
    (*(v29 + 8))(&v23, v28);
    type metadata accessor for CMLFeatureValue();
    v19 = CMLFeatureValue.__allocating_init()();
  }

  else
  {
    v20 = v30;
    v21 = v27;
    (*(v27 + 32))(v30, &v23, a5);
    v19 = MLDataValueConvertible.featureValue.getter(a5, a7);
    (*(v21 + 8))(v20, a5);
  }

  (*(v24 + 8))(&v23, v23);
  return v19;
}

uint64_t closure #2 in MLDataColumn.map<A>(skipUndefined:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v7;
  (*(a7 + 8))(a5, a7, a3, a4);
  result = _UntypedColumn.map(_:skipUndefined:outputType:)(a2, a3, 0, v11);
  *v10 = result;
  return result;
}

uint64_t MLDataColumn.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return MLDataColumn.map<A>(_:)(a1, a2, a3, a4, a5, &unk_391598, partial apply for closure #1 in MLDataColumn.map<A>(_:));
}

{
  return MLDataColumn.map<A>(_:)(a1, a2, a3, a4, a5, &unk_3915C0, partial apply for closure #1 in MLDataColumn.map<A>(_:));
}

uint64_t closure #1 in MLDataColumn.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a2;
  v5 = type metadata accessor for Optional(0, a4);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  (*(v6 + 16))(v11, a1, v5);
  if (__swift_getEnumTagSinglePayload(v11, 1, a4) == 1)
  {
    BUG();
  }

  (v11[0])(v11);
  return (*(*(a4 - 8) + 8))(v11, a4);
}

uint64_t MLDataColumn.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = swift_allocObject(a6, 64, 7);
  v10 = *(a3 + 24);
  v9[2] = *(a3 + 16);
  v9[3] = a4;
  v9[4] = v10;
  v9[5] = a5;
  v9[6] = a1;
  v9[7] = a2;

  MLDataColumn.map<A>(skipUndefined:_:)(1, a7, v9, a3, a4, a5);
}

uint64_t closure #1 in MLDataColumn.map<A>(_:)(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a5;
  v16 = a2;
  v7 = v5;
  v8 = type metadata accessor for Optional(0, a4);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  (*(v9 + 16))(&v14, a1, v8);
  if (__swift_getEnumTagSinglePayload(&v14, 1, a4) == 1)
  {
    BUG();
  }

  v16(&v14);
  (*(*(a4 - 8) + 8))(&v14, a4);
  return __swift_storeEnumTagSinglePayload(v7, 0, 1, v15);
}

char MLDataColumn.fillMissing(with:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  if (*(v3 + 8))
  {
    v12[0] = *v3;
    swift_errorRetain(v5);
    outlined copy of Result<_DataTable, Error>(v5, 1);
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v7 = _getErrorEmbeddedNSError<A>(_:)(v12, v6, &protocol self-conformance witness table for Error);
    if (v7)
    {
      v8 = v7;
      outlined consume of Result<_DataTable, Error>(v5, 1);
    }

    else
    {
      v8 = swift_allocError(v6, &protocol self-conformance witness table for Error, 0, 0);
      *v10 = v5;
    }

    outlined consume of Result<_DataTable, Error>(v5, 1);
    result = 1;
  }

  else
  {
    v11 = *v3;
    outlined copy of Result<_DataTable, Error>(v5, 0);
    closure #1 in MLDataColumn.fillMissing(with:)(&v11, a1, *(a2 + 16), *(a2 + 24));
    outlined consume of Result<_DataTable, Error>(v5, 0);
    v8 = v12[0];
    result = 0;
  }

  *v4 = v8;
  *(v4 + 8) = result;
  return result;
}

uint64_t *closure #1 in MLDataColumn.fillMissing(with:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = v4;
  v6 = *a1;
  v7 = MLDataValueConvertible.featureValue.getter(a3, a4);
  v8 = specialized handling<A, B, C>(_:_:_:)(*(*(v6 + 16) + 16), *(v7 + 16));
  if (v5)
  {
  }

  v10 = v8;
  if (!v8)
  {
    BUG();
  }

  v11 = type metadata accessor for CMLColumn();
  v12 = swift_allocObject(v11, 24, 7);
  *(v12 + 16) = v10;
  v13 = type metadata accessor for _UntypedColumn();
  v14 = swift_allocObject(v13, 24, 7);
  *(v14 + 16) = v12;

  result = v15;
  *v15 = v14;
  return result;
}

uint64_t MLDataColumn.prefix(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3;
  if (a1 <= 0)
  {
    v10 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v9 = swift_allocError(&type metadata for MLCreateError, v10, 0, 0);
    result = 0xD00000000000002BLL;
    *v12 = 0xD00000000000002BLL;
    *(v12 + 8) = "Column initialized as invalid" + 0x8000000000000000;
    *(v12 + 16) = 0;
    *(v12 + 32) = 0;
    *(v12 + 48) = 0;
LABEL_9:
    v17 = 1;
    goto LABEL_10;
  }

  v6 = *v4;
  if (*(v4 + 8))
  {
    v23[0] = *v4;
    swift_errorRetain(v6);
    outlined copy of Result<_DataTable, Error>(v6, 1);
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v8 = _getErrorEmbeddedNSError<A>(_:)(v23, v7, &protocol self-conformance witness table for Error);
    if (v8)
    {
      v9 = v8;
      outlined consume of Result<_DataTable, Error>(v6, 1);
    }

    else
    {
      v9 = swift_allocError(v7, &protocol self-conformance witness table for Error, 0, 0);
      *v16 = v6;
    }

    result = outlined consume of Result<_DataTable, Error>(v6, 1);
    goto LABEL_9;
  }

  v14 = *(*(v6 + 16) + 16);
  outlined copy of Result<_DataTable, Error>(v6, 0);
  v15 = a3(v14, a1);
  v18 = v15;
  if (!v15)
  {
    BUG();
  }

  v17 = 0;
  v19 = type metadata accessor for CMLColumn();
  v20 = swift_allocObject(v19, 24, 7);
  *(v20 + 16) = v18;
  v21 = v20;
  v22 = type metadata accessor for _UntypedColumn();
  v9 = swift_allocObject(v22, 24, 7);
  *(v9 + 16) = v21;
  result = outlined consume of Result<_DataTable, Error>(v6, 0);
LABEL_10:
  *v5 = v9;
  *(v5 + 8) = v17;
  return result;
}

uint64_t MLDataColumn.sort(byIncreasingOrder:)(char a1)
{
  v3 = v1;
  v4 = *v2;
  if (*(v2 + 8))
  {
    v18[0] = *v2;
    swift_errorRetain(v4);
    outlined copy of Result<_DataTable, Error>(v4, 1);
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v6 = _getErrorEmbeddedNSError<A>(_:)(v18, v5, &protocol self-conformance witness table for Error);
    if (v6)
    {
      v7 = v6;
      outlined consume of Result<_DataTable, Error>(v4, 1);
    }

    else
    {
      v7 = swift_allocError(v5, &protocol self-conformance witness table for Error, 0, 0);
      *v10 = v4;
    }

    result = outlined consume of Result<_DataTable, Error>(v4, 1);
    v12 = 1;
  }

  else
  {
    v8 = *(*(v4 + 16) + 16);
    outlined copy of Result<_DataTable, Error>(*v2, 0);
    v9 = specialized handling<A, B, C>(_:_:_:)(v8, a1);
    v13 = v9;
    if (!v9)
    {
      BUG();
    }

    v12 = 0;
    v14 = type metadata accessor for CMLColumn();
    v15 = swift_allocObject(v14, 24, 7);
    *(v15 + 16) = v13;
    v16 = v15;
    v17 = type metadata accessor for _UntypedColumn();
    v7 = swift_allocObject(v17, 24, 7);
    *(v7 + 16) = v16;
    result = outlined consume of Result<_DataTable, Error>(v4, 0);
  }

  *v3 = v7;
  *(v3 + 8) = v12;
  return result;
}

uint64_t MLDataColumn.dropDuplicates()(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = v2;
  v5 = *v3;
  if (*(v3 + 8))
  {
    v19[0] = *v3;
    swift_errorRetain(v5);
    outlined copy of Result<_DataTable, Error>(v5, 1);
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
    outlined copy of Result<_DataTable, Error>(*v3, 0);
    v10 = a2(v9);
    v14 = v10;
    if (!v10)
    {
      BUG();
    }

    v13 = 0;
    v15 = type metadata accessor for CMLColumn();
    v16 = swift_allocObject(v15, 24, 7);
    *(v16 + 16) = v14;
    v17 = v16;
    v18 = type metadata accessor for _UntypedColumn();
    v8 = swift_allocObject(v18, 24, 7);
    *(v8 + 16) = v17;
    result = outlined consume of Result<_DataTable, Error>(v5, 0);
  }

  *v4 = v8;
  *(v4 + 8) = v13;
  return result;
}

uint64_t MLDataColumn.materialize()()
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    swift_willThrow();
    return outlined copy of Result<_DataTable, Error>(v2, 1);
  }

  else
  {
    v4 = v0;
    outlined copy of Result<_DataTable, Error>(v2, 0);
    CMLColumn.materialize()();
    result = outlined consume of Result<_DataTable, Error>(v2, 0);
    if (!v5)
    {
      *v4 = v2;
      *(v4 + 8) = 0;
      return outlined copy of Result<_DataTable, Error>(v2, 0);
    }
  }

  return result;
}

uint64_t MLDataColumn.subscript.getter(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v8 = *v3;
  v9 = *(v3 + 8);
  outlined copy of Result<_DataTable, Error>(*v3, v9);
  MLUntypedColumn.subscript.getter(a1, a2);
  outlined consume of Result<_DataTable, Error>(v8, v9);
  result = v6;
  *v4 = v6;
  *(v4 + 8) = v7;
  return result;
}

uint64_t MLDataColumn.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v20 = a3;
  v18 = a1;
  v6 = v4;
  v7 = *v5;
  v8 = *(v5 + 8);
  v15 = v7;
  LOBYTE(v16) = v8 & 1;
  outlined copy of Result<_DataTable, Error>(v7, v8);
  v9 = MLDataColumn.count.getter();
  outlined consume of Result<_DataTable, Error>(v7, v8);
  if (v9 < 0)
  {
    BUG();
  }

  v14[0] = 0;
  v14[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Range<Int>);
  v11 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  v19 = v6;
  dispatch thunk of RangeExpression.relative<A>(to:)(v14, v10, v11, v20, v17);
  v12 = v15;
  v20 = v16;
  v15 = v7;
  LOBYTE(v16) = v8 & 1;
  outlined copy of Result<_DataTable, Error>(v7, v8);
  MLDataColumn.subscript.getter(v12, v20);
  return outlined consume of Result<_DataTable, Error>(v7, v8);
}

uint64_t MLDataColumn.show()(uint64_t a1)
{
  v3 = v1;
  v4 = 0;
  if (!*(v2 + 8))
  {
    v5 = *v2;
    v6 = *(*(*v2 + 16) + 16);
    outlined copy of Result<_DataTable, Error>(*v2, 0);
    outlined copy of Result<_DataTable, Error>(v5, 0);

    v7 = specialized handling<A, B, C, D, E, F>(_:_:_:_:_:_:)(v6, "", "", "", 0);
    if (!v7)
    {
      BUG();
    }

    v8 = type metadata accessor for CMLPlot();
    v4 = swift_allocObject(v8, 24, 7);
    *(v4 + 16) = v7;
    outlined consume of Result<_DataTable, Error>(v5, 0);

    outlined consume of Result<_DataTable, Error>(v5, 0);
  }

  v3[3] = &type metadata for ML1DVisualization;
  result = lazy protocol witness table accessor for type ML1DVisualization and conformance ML1DVisualization();
  v3[4] = result;
  *v3 = v4;
  return result;
}

uint64_t MLDataColumn<>.init<A>(column:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  return MLDataColumn<>.init<A>(column:)(a1, a2, a3, &type metadata for Int, &protocol witness table for Int);
}

{
  return MLDataColumn<>.init<A>(column:)(a1, a2, a3, &type metadata for Double, &protocol witness table for Double);
}

{
  return MLDataColumn<>.init<A>(column:)(a1, a2, a3, &type metadata for String, &protocol witness table for String);
}

{
  return MLDataColumn<>.init<A>(column:)(a1, a2, a3, &type metadata for MLDataValue.SequenceType, &protocol witness table for MLDataValue.SequenceType);
}

{
  return MLDataColumn<>.init<A>(column:)(a1, a2, a3, &demangling cache variable for type metadata for [Int], &lazy protocol witness table cache variable for type [Int] and conformance <A> [A]);
}

{
  return MLDataColumn<>.init<A>(column:)(a1, a2, a3, &demangling cache variable for type metadata for [Double], &lazy protocol witness table cache variable for type [Double] and conformance <A> [A]);
}

{
  return MLDataColumn<>.init<A>(column:)(a1, a2, a3, &demangling cache variable for type metadata for [String], &lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
}

{
  return MLDataColumn<>.init<A>(column:)(a1, a2, a3, &type metadata for MLDataValue.DictionaryType, &protocol witness table for MLDataValue.DictionaryType);
}

uint64_t MLDataColumn<>.sum()()
{
  v1 = 0;
  if (!*(v0 + 8))
  {
    v2 = *v0;
    outlined copy of Result<_DataTable, Error>(*v0, 0);
    v3 = CMLColumn.sum()();
    if (CMLFeatureValue.isInt64.getter())
    {
      v1 = specialized handling<A, B>(_:_:)(*(v3 + 16));

      outlined consume of Result<_DataTable, Error>(v2, 0);
    }

    else
    {
      v1 = 0;
      outlined consume of Result<_DataTable, Error>(v2, 0);
    }
  }

  return v1;
}

uint64_t MLDataColumn<>.min()(uint64_t (*a1)(void))
{
  v2 = 0;
  if (!*(v1 + 8))
  {
    v3 = *v1;
    outlined copy of Result<_DataTable, Error>(*v1, 0);
    v4 = a1();
    if (CMLFeatureValue.isInt64.getter())
    {
      v2 = specialized handling<A, B>(_:_:)(*(v4 + 16));

      outlined consume of Result<_DataTable, Error>(v3, 0);
    }

    else
    {
      v2 = 0;
      outlined consume of Result<_DataTable, Error>(v3, 0);
    }
  }

  return v2;
}

uint64_t MLDataColumn<>.std()(double a1)
{
  return MLDataColumn<>.std()(CMLColumn.stdev(), a1);
}

{
  return MLDataColumn<>.std()(CMLColumn.stdev(), a1);
}

uint64_t MLDataColumn<>.mean()(double a1)
{
  return MLDataColumn<>.std()(CMLColumn.mean(), a1);
}

{
  return MLDataColumn<>.std()(CMLColumn.mean(), a1);
}

uint64_t MLDataColumn<>.min()(uint64_t (*a1)(void), double a2)
{
  v3 = 0;
  if (!*(v2 + 8))
  {
    v4 = *v2;
    outlined copy of Result<_DataTable, Error>(*v2, 0);
    v5 = a1();
    if (CMLFeatureValue.isDouble.getter())
    {
      specialized handling<A, B>(_:_:)(*(v5 + 16));

      outlined consume of Result<_DataTable, Error>(v4, 0);
      return *&a2;
    }

    else
    {
      v3 = 0;
      outlined consume of Result<_DataTable, Error>(v4, 0);
    }
  }

  return v3;
}

uint64_t MLDataColumn<>.std()(uint64_t (*a1)(void), double a2)
{
  v3 = 0;
  if (!*(v2 + 8))
  {
    v4 = *v2;
    outlined copy of Result<_DataTable, Error>(*v2, 0);
    v5 = a1();
    if (CMLFeatureValue.isDouble.getter())
    {
      specialized handling<A, B>(_:_:)(*(v5 + 16));

      outlined consume of Result<_DataTable, Error>(v4, 0);
      return *&a2;
    }

    else
    {
      v3 = 0;
      outlined consume of Result<_DataTable, Error>(v4, 0);
    }
  }

  return v3;
}

uint64_t MLDataColumn<>.stdev()(double a1)
{
  return MLDataColumn<>.stdev()(a1);
}

{
  v2 = 0;
  if (!*(v1 + 8))
  {
    v3 = *v1;
    outlined copy of Result<_DataTable, Error>(*v1, 0);
    v4 = CMLColumn.stdev()();
    if (CMLFeatureValue.isDouble.getter())
    {
      specialized handling<A, B>(_:_:)(*(v4 + 16));
      v6 = a1;

      outlined consume of Result<_DataTable, Error>(v3, 0);
      return *&a1;
    }

    else
    {
      v2 = 0;
      outlined consume of Result<_DataTable, Error>(v3, 0);
    }
  }

  return v2;
}

{
  return MLDataColumn<>.stdev()(a1);
}

uint64_t MLDataColumn<>.init<A>(column:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v17 = a3;
  v7 = v5;
  v18 = a2;
  v9 = *(a1 + 8);
  v15 = *a1;
  v16 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledName(a4);
  v11 = lazy protocol witness table accessor for type [String] and conformance <A> [A](a5, a4);
  MLDataColumn.init<A>(column:type:)(&v15, v10, v10, a2, v11);
  result = v13;
  *v7 = v13;
  *(v7 + 8) = v14;
  return result;
}

uint64_t MLDataColumn<>.init<A>(column:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = *(a1 + 8);
  v11 = *a1;
  v12 = v7;
  MLDataColumn.init<A>(column:type:)(&v11, a4, a4, a2, a5);
  result = v9;
  *v6 = v9;
  *(v6 + 8) = v10;
  return result;
}

uint64_t MLDataColumn.customMirror.getter(uint64_t a1)
{
  v28 = a1;
  v24 = v1;
  v25 = type metadata accessor for Mirror.AncestorRepresentation(0);
  v26 = *(v25 - 8);
  v3 = *(v26 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v27 = &v21;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Mirror.DisplayStyle?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v29 = &v21;
  v9 = *v2;
  v10 = *(v2 + 8);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  v12 = swift_allocObject(v11, 128, 7);
  v12[2] = 2;
  v12[3] = 4;
  v12[4] = 0x746E756F63;
  v12[5] = 0xE500000000000000;
  v22 = v9;
  v23 = v10;
  outlined copy of Result<_DataTable, Error>(v9, v10);
  v13 = MLDataColumn.count.getter();
  outlined consume of Result<_DataTable, Error>(v9, v10);
  v12[9] = &type metadata for Int;
  v12[6] = v13;
  v12[10] = 1701869940;
  v12[11] = 0xE400000000000000;
  v14 = v28;
  v15 = *(v28 + 16);
  v12[15] = swift_getMetatypeMetadata(v15);
  v12[12] = v15;
  v22 = v14;
  LODWORD(v15) = enum case for Mirror.DisplayStyle.dictionary(_:);
  v16 = type metadata accessor for Mirror.DisplayStyle(0);
  v17 = v29;
  (*(*(v16 - 8) + 104))(v29, v15, v16);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v16);
  v18 = v27;
  (*(v26 + 104))(v27, enum case for Mirror.AncestorRepresentation.suppressed(_:), v25);
  MetatypeMetadata = swift_getMetatypeMetadata(v14);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)(&v22, v12, v17, v18, MetatypeMetadata);
}

uint64_t MLDataColumn.description.getter(uint64_t a1, double a2)
{
  v26 = *(a1 + 16);
  v4 = *(*(v26 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v27 = &v23;
  v7 = *v2;
  if (*(v2 + 8))
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    v30._countAndFlagsBits = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    _print_unlocked<A, B>(_:_:)(&v30, &v28, v8, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    return v28;
  }

  else
  {
    v28 = 91;
    v29 = 0xE100000000000000;
    v30._countAndFlagsBits = v7;
    LOBYTE(v30._object) = 0;
    outlined copy of Result<_DataTable, Error>(v7, 0);
    outlined copy of Result<_DataTable, Error>(v7, 0);
    v10 = MLDataColumn.count.getter();
    outlined consume of Result<_DataTable, Error>(v7, 0);
    v11 = 10;
    if (v10 < 10)
    {
      v11 = v10;
    }

    v23 = v11;
    if (v10 < 0)
    {
      BUG();
    }

    if (v10)
    {
      v25 = v10;
      v12 = 0;
      v24 = v7;
      do
      {
        if (v12)
        {
          v13._countAndFlagsBits = 8236;
          v13._object = 0xE200000000000000;
          String.append(_:)(v13);
        }

        _UntypedColumn.type.getter();
        if (LOBYTE(v30._countAndFlagsBits) == 2)
        {
          v30._countAndFlagsBits = v7;
          LOBYTE(v30._object) = 0;
          outlined copy of Result<_DataTable, Error>(v7, 0);
          v14 = v27;
          MLDataColumn.subscript.getter(v12, a1, a2);
          outlined consume of Result<_DataTable, Error>(v7, 0);
          v15._countAndFlagsBits = String.init<A>(describing:)(v14, v26);
          LOBYTE(v14) = v15._object;
          v30._countAndFlagsBits = 34;
          v30._object = 0xE100000000000000;
          String.append(_:)(v15);
          v14;
          LOBYTE(v14) = v30._object;

          v16._countAndFlagsBits = 34;
          v16._object = 0xE100000000000000;
          v7 = v24;
          String.append(_:)(v16);
          v14;
          v17 = v30;
          object = v30._object;
        }

        else
        {
          v30._countAndFlagsBits = v7;
          LOBYTE(v30._object) = 0;
          outlined copy of Result<_DataTable, Error>(v7, 0);
          v19 = v27;
          MLDataColumn.subscript.getter(v12, a1, a2);
          outlined consume of Result<_DataTable, Error>(v7, 0);
          v20._countAndFlagsBits = String.init<A>(describing:)(v19, v26);
          object = v20._object;
          v17 = v20;
        }

        String.append(_:)(v17);
        ++v12;
        object;
      }

      while (v23 != v12);
      if (v25 >= 11)
      {
        v21._countAndFlagsBits = 0x2E2E2E202CLL;
        v21._object = 0xE500000000000000;
        String.append(_:)(v21);
      }
    }

    v22._countAndFlagsBits = 93;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    outlined consume of Result<_DataTable, Error>(v7, 0);
    return v28;
  }
}

uint64_t MLDataColumn.debugDescription.getter(uint64_t a1, double a2)
{
  v3 = *v2;
  v6 = *(v2 + 8);
  outlined copy of Result<_DataTable, Error>(*v2, v6);
  v4 = MLDataColumn.description.getter(a1, a2);
  outlined consume of Result<_DataTable, Error>(v3, v6);
  return v4;
}

uint64_t MLDataColumn.playgroundDescription.getter(uint64_t a1, double a2)
{
  v4 = v2;
  v5 = *v3;
  v11 = *(v3 + 8);
  outlined copy of Result<_DataTable, Error>(*v3, v11);
  v6 = MLDataColumn.description.getter(a1, a2);
  v8 = v7;
  outlined consume of Result<_DataTable, Error>(v5, v11);
  objc_allocWithZone(NSAttributedString);
  v9 = @nonobjc NSAttributedString.init(string:attributes:)(v6, v8, 0);
  result = type metadata accessor for NSAttributedString();
  v4[3] = result;
  *v4 = v9;
  return result;
}

uint64_t partial apply for closure #1 in MLDataColumn.map<A>(_:)(uint64_t a1)
{
  return partial apply for closure #1 in MLDataColumn.map<A>(_:)(a1, closure #1 in MLDataColumn.map<A>(_:));
}

{
  return partial apply for closure #1 in MLDataColumn.map<A>(_:)(a1, closure #1 in MLDataColumn.map<A>(_:));
}

uint64_t lazy protocol witness table accessor for type ML1DVisualization and conformance ML1DVisualization()
{
  result = lazy protocol witness table cache variable for type ML1DVisualization and conformance ML1DVisualization;
  if (!lazy protocol witness table cache variable for type ML1DVisualization and conformance ML1DVisualization)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ML1DVisualization, &type metadata for ML1DVisualization);
    lazy protocol witness table cache variable for type ML1DVisualization and conformance ML1DVisualization = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ML1DVisualization and conformance ML1DVisualization;
  if (!lazy protocol witness table cache variable for type ML1DVisualization and conformance ML1DVisualization)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ML1DVisualization, &type metadata for ML1DVisualization);
    lazy protocol witness table cache variable for type ML1DVisualization and conformance ML1DVisualization = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ML1DVisualization and conformance ML1DVisualization;
  if (!lazy protocol witness table cache variable for type ML1DVisualization and conformance ML1DVisualization)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ML1DVisualization, &type metadata for ML1DVisualization);
    lazy protocol witness table cache variable for type ML1DVisualization and conformance ML1DVisualization = result;
  }

  return result;
}

uint64_t specialized Sequence.allSatisfy(_:)(void (*a1)(void, void))
{
  v40 = a1;
  v1 = type metadata accessor for AnyColumn(0);
  v36 = *(v1 - 8);
  v2 = *(v36 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<AnyColumn, AnyColumn>);
  v5 = *(*(v39 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<AnyColumn, AnyColumn>.Iterator);
  v8 = *(*(v37 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v41 = v27;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v40, v27, &demangling cache variable for type metadata for Zip2Sequence<AnyColumn, AnyColumn>);
  v40 = *(v36 + 32);
  (v40)(v27, v27, v1);
  v38 = lazy protocol witness table accessor for type AnyColumn and conformance AnyColumn(&lazy protocol witness table cache variable for type AnyColumn and conformance AnyColumn, &protocol conformance descriptor for AnyColumn);
  dispatch thunk of Sequence.makeIterator()(v1, v38);
  (v40)(v27, v27 + *(v39 + 52), v1);
  v11 = v37;
  v12 = v41;
  v34 = v41 + *(v37 + 52);
  v36 = v1;
  dispatch thunk of Sequence.makeIterator()(v1, v38);
  v35 = *(v11 + 56);
  *(v12 + v35) = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<AnyColumn>);
  v13 = v12 + *(v37 + 36);
  v39 = lazy protocol witness table accessor for type AnyColumn and conformance AnyColumn(&lazy protocol witness table cache variable for type AnyColumn and conformance AnyColumn, &protocol conformance descriptor for AnyColumn);
  v38 = v13;
  while (1)
  {
    v14 = v41;
    v15 = v36;
    dispatch thunk of Collection.endIndex.getter(v36, v39);
    if (*v13 == v33[0])
    {
      break;
    }

    v16 = v39;
    v17 = v13;
    v18 = dispatch thunk of Collection.subscript.read(v33, v13, v15, v39);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &v31, &demangling cache variable for type metadata for Any?);
    v18(v33, 0);
    dispatch thunk of Collection.formIndex(after:)(v17, v15, v16);
    v30 = v32;
    v29 = v31;
    v13 = *(v37 + 36);
    v20 = v34;
    dispatch thunk of Collection.endIndex.getter(v15, v16);
    if (*&v20[v13] == v33[0])
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v29, &demangling cache variable for type metadata for Any?);
      v14 = v41;
      break;
    }

    v21 = &v20[v13];
    v22 = v39;
    v40 = dispatch thunk of Collection.subscript.read(v33, v21, v15, v39);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v23, &v31, &demangling cache variable for type metadata for Any?);
    v40(v33, 0);
    dispatch thunk of Collection.formIndex(after:)(v21, v15, v22);
    v28[1] = v32;
    v28[0] = v31;
    v27[0] = v29;
    v27[1] = v30;
    LOBYTE(v21) = closure #1 in HandPoseClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:)(v27, v28);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v27, &demangling cache variable for type metadata for (Any?, Any?));
    v24 = (v21 & 1) == 0;
    v13 = v38;
    if (v24)
    {
      v25 = v41;
      LODWORD(v13) = 0;
      goto LABEL_8;
    }
  }

  *(v14 + v35) = 1;
  v25 = v14;
  LOBYTE(v13) = 1;
LABEL_8:
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v25, &demangling cache variable for type metadata for Zip2Sequence<AnyColumn, AnyColumn>.Iterator);
  return v13;
}

uint64_t _s8CreateML11MLDataTableVyAA0C6ColumnVyxGSgSS_xmtcAA0C16ValueConvertibleRzluigSS_Tt1B5(Swift::String a1, uint64_t a2, char a3)
{
  v4 = v3;
  v11 = a3 & 1;
  outlined copy of Result<_DataTable, Error>(a2, a3);
  MLDataTable.subscript.getter(a1);
  outlined consume of Result<_DataTable, Error>(a2, v11);
  v5 = v8;
  if (v9 || (v6 = 0, outlined copy of Result<_DataTable, Error>(v8, 0), _UntypedColumn.type.getter(), result = outlined consume of Result<_DataTable, Error>(v8, 0), a2 != 2))
  {
    result = outlined consume of Result<_DataTable, Error>(v8, v9);
    v6 = -1;
    v5 = 0;
  }

  *v4 = v5;
  *(v4 + 8) = v6;
  return result;
}

uint64_t HandPoseClassifierTrainingSessionDelegate.init(sessionParameters:)(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
  v3 = type metadata accessor for MLHandPoseClassifier.PersistentParameters(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable;
  *(v1 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable) = 0;
  *(v1 + v4 + 8) = -1;
  *(v1 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
  *(v1 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceValidationRowCount) = 0;
  static MLHandPoseClassifier.buildFeatureTable(features:labels:sessionIds:imageFiles:)(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  static MLHandPoseClassifier.buildFeatureTable(features:labels:sessionIds:imageFiles:)(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  *(v1 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model) = 0;
  *(v1 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels) = 0;
  *(v1 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_metricsAttributesDictionary) = _swiftEmptyDictionarySingleton;
  outlined init with take of MLClassifierMetrics(a1, v1 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  return v1;
}

uint64_t HandPoseClassifierTrainingSessionDelegate.init(trainingData:modelParameters:sessionParameters:)(void *a1, uint64_t a2, uint64_t a3, __m128 a4)
{
  v172 = v4;
  v166 = a3;
  v162 = a2;
  v165 = a1;
  v143 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  v6 = *(*(v143 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v142 = v137;
  v153 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v152 = *(v153 - 8);
  v9 = *(v152 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v155 = v137;
  v139 = type metadata accessor for AnyColumn(0);
  v154 = *(v139 - 8);
  v12 = v154[8];
  v13 = alloca(v12);
  v14 = alloca(v12);
  v151 = v137;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v140 = v137;
  v169 = type metadata accessor for DataFrame(0);
  v168 = *(v169 - 8);
  v17 = v168[8];
  v18 = alloca(v17);
  v19 = alloca(v17);
  v141 = v137;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v170 = v137;
  v159 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v22 = *(*(v159 - 1) + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v161 = v137;
  v25 = alloca(v22);
  v26 = alloca(v22);
  v171 = v137;
  v160 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  v27 = *(*(v160 - 8) + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v167 = v137;
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?) - 8) + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  v33 = v5 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
  v158 = v5 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
  v34 = type metadata accessor for MLHandPoseClassifier.PersistentParameters(0);
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v34);
  v35 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable;
  *(v5 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable) = 0;
  *(v5 + v35 + 8) = -1;
  *(v5 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
  *(v5 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceValidationRowCount) = 0;
  v149 = v5 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures;
  static MLHandPoseClassifier.buildFeatureTable(features:labels:sessionIds:imageFiles:)(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  v144 = v5 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures;
  static MLHandPoseClassifier.buildFeatureTable(features:labels:sessionIds:imageFiles:)(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  *(v5 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model) = 0;
  v150 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels;
  *(v5 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels) = 0;
  v163 = v5;
  *(v5 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_metricsAttributesDictionary) = _swiftEmptyDictionarySingleton;
  outlined init with copy of MLTrainingSessionParameters(v165, v137, type metadata accessor for MLHandPoseClassifier.DataSource);
  v36 = v167;
  outlined init with copy of MLTrainingSessionParameters(v162, v167, type metadata accessor for MLHandPoseClassifier.ModelParameters);
  v37 = v34[6];
  v164 = v34[7];
  outlined init with copy of MLTrainingSessionParameters(v36, &v137[v34[5]], type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
  v38 = v160;
  v39 = v36;
  *&v137[v37] = *&v36[*(v160 + 20)];
  *&v137[v164] = *&v36[*(v38 + 24)];
  v40 = v159;
  *&v137[v34[8]] = *(v39 + *(v38 + 28));
  outlined destroy of MLActivityClassifier.ModelParameters.Validation(v39, type metadata accessor for MLHandPoseClassifier.ModelParameters);
  v160 = v34;
  v41 = v34;
  v42 = v171;
  __swift_storeEnumTagSinglePayload(v137, 0, 1, v41);
  v43 = v158;
  swift_beginAccess(v158, &v156, 33, 0);
  outlined assign with take of MLHandPoseClassifier.PersistentParameters?(v137, v43);
  v44 = v165;
  swift_endAccess(&v156);
  outlined init with copy of MLTrainingSessionParameters(v44, v42, type metadata accessor for MLHandPoseClassifier.DataSource);
  if (swift_getEnumCaseMultiPayload(v42, v40) != 3)
  {
    outlined destroy of MLActivityClassifier.ModelParameters.Validation(v42, type metadata accessor for MLHandPoseClassifier.DataSource);
    v57 = v161;
    outlined init with copy of MLTrainingSessionParameters(v44, v161, type metadata accessor for MLHandPoseClassifier.DataSource);
    if (swift_getEnumCaseMultiPayload(v57, v40) != 5)
    {
      outlined destroy of MLActivityClassifier.ModelParameters.Validation(v57, type metadata accessor for MLHandPoseClassifier.DataSource);
      v72 = v172;
      v73 = static _ImageUtilities.getDataSourceSynopsisForHandPoseClassifier(from:)(v44, a4);
      v172 = v72;
      if (v72)
      {
        v55 = 0;
LABEL_14:
        v82 = v166;
LABEL_15:
        outlined destroy of MLActivityClassifier.ModelParameters.Validation(v82, type metadata accessor for MLTrainingSessionParameters);
        outlined destroy of MLActivityClassifier.ModelParameters.Validation(v162, type metadata accessor for MLHandPoseClassifier.ModelParameters);
        outlined destroy of MLActivityClassifier.ModelParameters.Validation(v165, type metadata accessor for MLHandPoseClassifier.DataSource);
        if (v55)
        {
          v83 = v163;
LABEL_41:

          return v83;
        }

        goto LABEL_35;
      }

      v86 = v73;
      v87 = v74;
      v75;
      v86;
      MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = specialized _copyCollectionToContiguousArray<A>(_:)(v87);
      v87;
      goto LABEL_23;
    }

    v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
    v59 = v58[12];
    v146 = *&v57[v59];
    v171 = *&v57[v59 + 8];
    v60 = v58[16];
    v145 = *&v57[v60];
    v167 = *&v57[v60 + 8];
    v61 = v58[20];
    v62 = *&v57[v61];
    v63 = *&v57[v61 + 8];
    (v168[4])(v170, v57, v169);
    v64 = v140;
    v164 = v62;
    DataFrame.subscript.getter(v62, v63);
    v65 = AnyColumn.wrappedElementType.getter(v62);
    (v154[1])(v64, v139);
    if (v65 == &type metadata for String)
    {
      v84 = v164;
      DataFrame.subscript.getter(v164, v63, &type metadata for String);
      v85 = v172;
      Column<A>.parseAsJSONArrays()();
      v172 = v85;
      if (v85)
      {
        v63;
        v167;
        v171;
        outlined destroy of MLActivityClassifier.ModelParameters.Validation(v166, type metadata accessor for MLTrainingSessionParameters);
        outlined destroy of MLActivityClassifier.ModelParameters.Validation(v162, type metadata accessor for MLHandPoseClassifier.ModelParameters);
        outlined destroy of MLActivityClassifier.ModelParameters.Validation(v165, type metadata accessor for MLHandPoseClassifier.DataSource);
        (*(v152 + 8))(v155, v153);
        goto LABEL_34;
      }

      (*(v152 + 8))(v155, v153);

      v161 = v63;
      v118 = v170;
      DataFrame.subscript.setter(v151, v84, v63);
      v66 = v168;
      v67 = v171;
      v68 = v118;
    }

    else
    {
      v161 = v63;
      v66 = v168;
      v67 = v171;
      v68 = v170;
    }

    v69 = v141;
    v70 = v169;
    *a4.i64 = (v66[2])(v141, v68, v169);
    v71 = v172;
    MLDataTable.init(_:convertArraysToShapedArrays:)(v69, 0, a4);
    v172 = v71;
    if (v71)
    {
      v161;
      v167;
      v67;
      outlined destroy of MLActivityClassifier.ModelParameters.Validation(v166, type metadata accessor for MLTrainingSessionParameters);
      outlined destroy of MLActivityClassifier.ModelParameters.Validation(v162, type metadata accessor for MLHandPoseClassifier.ModelParameters);
      outlined destroy of MLActivityClassifier.ModelParameters.Validation(v165, type metadata accessor for MLHandPoseClassifier.DataSource);
      (v66[1])(v170, v70);
      goto LABEL_35;
    }

    v89 = v156;
    v90 = v157;
    v91 = v149;
    swift_beginAccess(v149, v138, 1, 0);
    v92 = *v91;
    *v91 = v89;
    v93 = *(v91 + 8);
    *(v91 + 8) = v90;
    outlined consume of Result<_DataTable, Error>(v92, v93);
    swift_beginAccess(v91, &v156, 33, 0);
    v94 = v164;
    v95 = v161;
    v96 = v172;
    static MLHandPoseClassifier.reformatKeypointsDataTable(table:featureColumn:)(v91, v164, v161);
    v172 = v96;
    if (v96)
    {
      swift_endAccess(&v156);
      v95;
      v167;
      v171;
      v97 = v166;
    }

    else
    {
      swift_endAccess(&v156);
      swift_beginAccess(v91, &v156, 33, 0);
      v120 = v171;
      v121 = v94;
      v122 = v172;
      v123 = v167;
      static _VideoUtilities.renameFeatureTableColumns(table:sessionIdColumn:featureColumn:labelColumn:)(v91, v146, v171, v121, v95, v145, v167);
      v172 = v122;
      if (!v122)
      {
        swift_endAccess(&v156);
        v95;
        v123;
        v120;
        swift_beginAccess(v91, &v156, 32, 0);
        v133._countAndFlagsBits = 0x6C6562616CLL;
        v133._object = 0xE500000000000000;
        specialized MLDataTable.subscript.getter(v133, *v91, *(v91 + 8));
        v134 = v147;
        v135 = v148;
        swift_endAccess(&v156);
        specialized MLDataColumn.dropDuplicates()(v134, v135);
        outlined consume of Result<_DataTable, Error>(v134, v135);
        MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v156, v157, *a4.i64);
        (v168[1])(v170, v169);
        goto LABEL_23;
      }

      v124 = v166;
      swift_endAccess(&v156);
      v95;
      v123;
      v120;
      v97 = v124;
    }

    outlined destroy of MLActivityClassifier.ModelParameters.Validation(v97, type metadata accessor for MLTrainingSessionParameters);
    outlined destroy of MLActivityClassifier.ModelParameters.Validation(v162, type metadata accessor for MLHandPoseClassifier.ModelParameters);
    outlined destroy of MLActivityClassifier.ModelParameters.Validation(v165, type metadata accessor for MLHandPoseClassifier.DataSource);
LABEL_34:
    (v168[1])(v170, v169);
    goto LABEL_35;
  }

  v45 = v42;
  v46 = *v42;
  v47 = *(v42 + 2);
  v154 = v45[2];
  v167 = v45[3];
  v161 = v45[4];
  v164 = v45[5];
  v170 = v45[6];
  v168 = v45[7];
  v48 = v149;
  swift_beginAccess(v149, v138, 1, 0);
  v169 = *v48;
  *v48 = v46;
  v49 = *(v48 + 8);
  *(v48 + 8) = v47 & 1;
  v171 = v46;
  v50 = v46;
  v51 = v47;
  outlined copy of Result<_DataTable, Error>(v50, v47);
  v52 = v168;
  outlined consume of Result<_DataTable, Error>(v169, v49);
  swift_beginAccess(v48, &v156, 33, 0);
  v53 = v170;
  v54 = v172;
  static MLHandPoseClassifier.reformatKeypointsDataTable(table:featureColumn:)(v48, v170, v52);
  v172 = v54;
  if (v54)
  {
    v55 = 0;
    swift_endAccess(&v156);
    v52;
    v164;
    v167;
    v56 = v51;
LABEL_13:
    outlined consume of Result<_DataTable, Error>(v171, v56);
    goto LABEL_14;
  }

  LODWORD(v169) = v51;
  swift_endAccess(&v156);
  swift_beginAccess(v48, &v156, 33, 0);
  v76 = v167;
  v77 = v53;
  v78 = v52;
  v79 = v52;
  v80 = v172;
  v81 = v164;
  static _VideoUtilities.renameFeatureTableColumns(table:sessionIdColumn:featureColumn:labelColumn:)(v48, v154, v167, v77, v79, v161, v164);
  v172 = v80;
  if (v80)
  {
    v55 = 0;
    swift_endAccess(&v156);
    v78;
    v81;
    v76;
    v56 = v169;
    goto LABEL_13;
  }

  swift_endAccess(&v156);
  v78;
  v81;
  v76;
  swift_beginAccess(v48, &v156, 32, 0);
  v98._countAndFlagsBits = 0x6C6562616CLL;
  v98._object = 0xE500000000000000;
  specialized MLDataTable.subscript.getter(v98, *v48, *(v48 + 8));
  v99 = v147;
  v100 = v148;
  swift_endAccess(&v156);
  specialized MLDataColumn.dropDuplicates()(v99, v100);
  outlined consume of Result<_DataTable, Error>(v99, v100);
  MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v156, v157, *a4.i64);
  outlined consume of Result<_DataTable, Error>(v171, v169);
LABEL_23:
  v83 = v163;
  v101 = *(v163 + v150);
  *(v163 + v150) = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
  v101;
  v102 = v158;
  v103 = v160;
  if (__swift_getEnumTagSinglePayload(v158, 1, v160))
  {
    v82 = v166;
LABEL_39:
    outlined init with copy of MLTrainingSessionParameters(v82, v83 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
    v126 = *(v83 + v150);
    if (v126)
    {
      v127 = type metadata accessor for MLHandActionClassifier.GraphCNN(0);
      swift_allocObject(v127, *(v127 + 48), *(v127 + 52));

      v128 = MLHandActionClassifier.GraphCNN.init(classLabels:export:numOfKeypoints:numOfKeypointsChannels:windowSize:)(v126, 0, 21, 3, 1);
      outlined destroy of MLActivityClassifier.ModelParameters.Validation(v82, type metadata accessor for MLTrainingSessionParameters);
      outlined destroy of MLActivityClassifier.ModelParameters.Validation(v162, type metadata accessor for MLHandPoseClassifier.ModelParameters);
      outlined destroy of MLActivityClassifier.ModelParameters.Validation(v165, type metadata accessor for MLHandPoseClassifier.DataSource);
      *(v83 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model) = v128;
      goto LABEL_41;
    }

    v130 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v131 = swift_allocError(&type metadata for MLCreateError, v130, 0, 0);
    *v132 = 0xD00000000000003DLL;
    *(v132 + 8) = "ng a feature checkpoint." + 0x8000000000000000;
    *(v132 + 16) = 0;
    *(v132 + 32) = 0;
    *(v132 + 48) = 0;
    v172 = v131;
    swift_willThrow();
    v55 = 1;
    goto LABEL_15;
  }

  v104 = *(v103 + 20) + v102;
  v105 = v142;
  outlined init with copy of MLTrainingSessionParameters(v104, v142, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v105, v143);
  v82 = v166;
  if (EnumCaseMultiPayload != 1)
  {
    v119 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData;
LABEL_38:
    outlined destroy of MLActivityClassifier.ModelParameters.Validation(v105, v119);
    goto LABEL_39;
  }

  if (swift_getEnumCaseMultiPayload(v105, v159) != 3)
  {
    v119 = type metadata accessor for MLHandPoseClassifier.DataSource;
    goto LABEL_38;
  }

  v107 = *v105;
  LODWORD(v158) = *(v105 + 8);
  v168 = *(v105 + 16);
  v171 = *(v105 + 24);
  v170 = *(v105 + 32);
  v159 = *(v105 + 40);
  v164 = *(v105 + 48);
  v167 = *(v105 + 56);
  v108 = v144;
  swift_beginAccess(v144, &v156, 1, 0);
  v109 = *v108;
  *v108 = v107;
  v110 = v158;
  v111 = *(v108 + 8);
  *(v108 + 8) = v158 & 1;
  v160 = v107;
  v112 = v107;
  v113 = v110;
  outlined copy of Result<_DataTable, Error>(v112, v110);
  v114 = v109;
  v115 = v164;
  outlined consume of Result<_DataTable, Error>(v114, v111);
  swift_beginAccess(v108, &v147, 33, 0);
  v116 = v167;
  v117 = v172;
  static MLHandPoseClassifier.reformatKeypointsDataTable(table:featureColumn:)(v108, v115, v167);
  v172 = v117;
  if (!v117)
  {
    swift_endAccess(&v147);
    swift_beginAccess(v108, &v147, 33, 0);
    v136 = v172;
    static _VideoUtilities.renameFeatureTableColumns(table:sessionIdColumn:featureColumn:labelColumn:)(v108, v168, v171, v115, v116, v170, v159);
    v172 = v136;
    v83 = v163;
    v82 = v166;
    if (v136)
    {
      swift_endAccess(&v147);
      v171;
      v159;
      v116;
      outlined consume of Result<_DataTable, Error>(v160, v158);
      outlined destroy of MLActivityClassifier.ModelParameters.Validation(v82, type metadata accessor for MLTrainingSessionParameters);
      outlined destroy of MLActivityClassifier.ModelParameters.Validation(v162, type metadata accessor for MLHandPoseClassifier.ModelParameters);
      outlined destroy of MLActivityClassifier.ModelParameters.Validation(v165, type metadata accessor for MLHandPoseClassifier.DataSource);
      goto LABEL_36;
    }

    swift_endAccess(&v147);
    v171;
    v159;
    v116;
    outlined consume of Result<_DataTable, Error>(v160, v158);
    goto LABEL_39;
  }

  swift_endAccess(&v147);
  v171;
  v159;
  v116;
  outlined consume of Result<_DataTable, Error>(v160, v113);
  outlined destroy of MLActivityClassifier.ModelParameters.Validation(v166, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of MLActivityClassifier.ModelParameters.Validation(v162, type metadata accessor for MLHandPoseClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters.Validation(v165, type metadata accessor for MLHandPoseClassifier.DataSource);
LABEL_35:
  v83 = v163;
LABEL_36:
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v83 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
  outlined consume of MLDataTable?(*(v83 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable), *(v83 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable + 8));
  outlined consume of Result<_DataTable, Error>(*(v83 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures), *(v83 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures + 8));
  outlined consume of Result<_DataTable, Error>(*(v83 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures), *(v83 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures + 8));

  *(v83 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels);
  *(v83 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_metricsAttributesDictionary);
  v125 = type metadata accessor for HandPoseClassifierTrainingSessionDelegate(0);
  swift_deallocPartialClassInstance(v83, v125, *(*v83 + 48), *(*v83 + 52));
  return v83;
}

char HandPoseClassifierTrainingSessionDelegate.populateSourceTable(parameters:)(uint64_t a1, __m128 a2)
{
  v4 = v3;
  type metadata accessor for MLHandPoseClassifier.PersistentParameters(0);
  result = MLHandPoseClassifier.ModelParameters.ValidationData.extractAnnotations(trainingData:)(&v28, &v26, a2);
  if (!v2)
  {
    v35 = v28;
    v6 = v26;
    v7 = v27;
    v38 = v29;
    v30 = 0;
    if (v29 == 0xFF)
    {
      if (v27 != -1)
      {
        v16 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable;
        swift_beginAccess(v4 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable, &v28, 1, 0);
        v37 = *(v4 + v16);
        *(v4 + v16) = v6;
        LODWORD(v36) = *(v4 + v16 + 8);
        *(v4 + v16 + 8) = v7;
        v17 = v7;
        outlined copy of Result<_DataTable, Error>(v6, v7);
        outlined consume of MLDataTable?(v37, v36);
        *(v4 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
LABEL_13:
        v31 = v6;
        v32 = v17 & 1;
        v25 = MLDataTable.size.getter();
        outlined consume of MLDataTable?(v35, v38);
        outlined consume of Result<_DataTable, Error>(v31, v32);
LABEL_16:
        result = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceValidationRowCount;
        *(v4 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceValidationRowCount) = v25;
        return result;
      }

      *(v4 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
    }

    else
    {
      v40 = v29;
      v36 = v26;
      LOBYTE(v37) = v27;
      if (v27 == -1)
      {
        v18 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable;
        v19 = v29;
        swift_beginAccess(v4 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable, &v28, 1, 0);
        v20 = *(v4 + v18);
        v21 = v35;
        *(v4 + v18) = v35;
        v39 = *(v4 + v18 + 8);
        *(v4 + v18 + 8) = v19;
        v12 = v21;
        outlined copy of MLDataTable?(v21, v19);
        outlined copy of Result<_DataTable, Error>(v12, v19);
        outlined consume of MLDataTable?(v20, v39);
      }

      else
      {
        v8 = v29 & 1;
        v9 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable;
        v10 = v29;
        swift_beginAccess(v4 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable, &v26, 1, 0);
        v34 = *(v4 + v9);
        v11 = v35;
        *(v4 + v9) = v35;
        v33 = *(v4 + v9 + 8);
        *(v4 + v9 + 8) = v8;
        v12 = v11;
        outlined copy of Result<_DataTable, Error>(v11, v10);
        outlined copy of MLDataTable?(v12, v10);
        v13 = v36;
        v39 = v37;
        outlined copy of MLDataTable?(v36, v37);
        outlined consume of MLDataTable?(v34, v33);
        v14 = HandPoseClassifierTrainingSessionDelegate.sourceTable.modify(&v28);
        if (*(v15 + 8) == 0xFF)
        {
          (v14)(&v28, 0);
        }

        else
        {
          v31 = v13;
          v34 = v14;
          v32 = v37 & 1;
          MLDataTable.append(contentsOf:)(&v31);
          (v34)(&v28, 0);
        }

        v22 = v13;
        v23 = v38;
        outlined consume of MLDataTable?(v12, v38);
        outlined consume of MLDataTable?(v22, v39);
        outlined copy of Result<_DataTable, Error>(v12, v23);
      }

      v31 = v12;
      v32 = v40 & 1;
      v24 = MLDataTable.size.getter();
      outlined consume of Result<_DataTable, Error>(v31, v32);
      *(v4 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTrainingRowCount) = v24;
      v17 = v37;
      if (v37 != 0xFF)
      {
        v6 = v36;
        goto LABEL_13;
      }
    }

    outlined consume of MLDataTable?(v35, v38);
    v25 = 0;
    goto LABEL_16;
  }

  return result;
}