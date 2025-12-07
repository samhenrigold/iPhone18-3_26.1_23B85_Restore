id outlined bridged method (mbbnn) of @objc NSBundle.url(forResource:withExtension:)(uint64_t a1, char a2, uint64_t a3, char a4, void *a5)
{
  v7 = String._bridgeToObjectiveC()();
  a2;
  v8 = String._bridgeToObjectiveC()();
  a4;
  v9 = [a5 URLForResource:v7 withExtension:v8];
  v10 = v9;

  return v10;
}

uint64_t *outlined release of BlobsFile(uint64_t *a1)
{
  v1 = a1[10];
  outlined consume of Data._Representation(*a1, a1[1]);
  v1;
  return a1;
}

uint64_t type metadata accessor for MLModel()
{
  result = lazy cache variable for type metadata for MLModel;
  if (!lazy cache variable for type metadata for MLModel)
  {
    v1 = objc_opt_self(MLModel);
    result = swift_getObjCClassMetadata(v1);
    lazy cache variable for type metadata for MLModel = result;
  }

  return result;
}

uint64_t outlined destroy of MLHandActionClassifier.GraphCNNModel(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static BatchNorm.loadLayer(from:layerName:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v67[1] = v6;
  v67[2] = v5;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v67[0] = v67;
  v12 = *(*(type metadata accessor for Tensor(0) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v68 = v67;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v71 = v67;
  v17 = alloca(v12);
  v18 = alloca(v12);
  v69 = v67;
  v19 = alloca(v12);
  v20 = alloca(v12);
  v70 = v67;
  v80 = a2;
  v78 = a2;
  v79 = a3;

  v21._countAndFlagsBits = 0x74657366666F2ELL;
  v21._object = 0xE700000000000000;
  String.append(_:)(v21);
  v22 = v79;
  v76 = *&a1;
  v23 = specialized Dictionary.subscript.getter(v78, v79, a1);
  v22;
  if (!v23)
  {
    v78 = 0;
    v79 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);
    v55 = v79;

    v55;
    v78 = v80;
    v79 = a3;
    v56._object = ", but coreml has " + 0x8000000000000000;
    v56._countAndFlagsBits = 0xD000000000000025;
LABEL_21:
    String.append(_:)(v56);
    v63 = v78;
    v64 = v79;
    v65 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v65, 0, 0);
    *v66 = v63;
    *(v66 + 8) = v64;
    *(v66 + 16) = 0;
    *(v66 + 32) = 0;
    *(v66 + 48) = 2;
    return swift_willThrow();
  }

  v77 = v23;
  v78 = v80;
  v79 = a3;

  v24._countAndFlagsBits = 0x656C6163732ELL;
  v24._object = 0xE600000000000000;
  String.append(_:)(v24);
  v25 = v79;
  v26 = specialized Dictionary.subscript.getter(v78, v79, *&v76);
  v25;
  v75 = v26;
  if (!v26)
  {
    v77;
    v78 = 0;
    v79 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);
    v57 = v79;

    v57;
    v78 = v80;
    v79 = a3;
    v56._object = "d in state dictionary" + 0x8000000000000000;
    v58 = 0xD000000000000024;
LABEL_20:
    v56._countAndFlagsBits = v58;
    goto LABEL_21;
  }

  v78 = v80;
  v79 = a3;

  v27._countAndFlagsBits = 0x676E696E6E75722ELL;
  v27._object = 0xEC0000006E61654DLL;
  String.append(_:)(v27);
  v28 = v79;
  v29 = specialized Dictionary.subscript.getter(v78, v79, *&v76);
  v28;
  if (!v29)
  {
    v75;
    v77;
    v78 = 0;
    v79 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v59 = v79;

    v59;
    v78 = v80;
    v79 = a3;
    v56._object = " in state dictionary" + 0x8000000000000000;
    v58 = 0xD00000000000002ALL;
    goto LABEL_20;
  }

  v74 = v29;
  v78 = 0;
  v79 = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  v30 = v79;

  v30;
  v78 = v80;
  v79 = a3;
  v31._object = " found in state dictionary" + 0x8000000000000000;
  v31._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v31);
  v32 = v79;
  v33 = specialized Dictionary.subscript.getter(v78, v79, *&v76);
  v32;
  if (!v33)
  {
    v74;
    v75;
    v77;
    v78 = 0;
    v79 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);
    v60 = v79;

    v60;
    v78 = v80;
    v79 = a3;
    v56._object = ".runningVariance" + 0x8000000000000000;
    v56._countAndFlagsBits = 0xD00000000000002ELL;
    goto LABEL_21;
  }

  v73 = v33;
  v78 = v80;
  v79 = a3;

  v34._countAndFlagsBits = 0x75746E656D6F6D2ELL;
  v34._object = 0xE90000000000006DLL;
  String.append(_:)(v34);
  v35 = v79;
  v36 = *&v76;
  v37 = specialized Dictionary.subscript.getter(v78, v79, *&v76);
  v35;
  v38 = v37;
  v39 = v37 == 0;
  v40 = v74;
  if (v39)
  {
LABEL_17:
    v73;
    v40;
    v75;
    v77;
    v78 = 0;
    v79 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);
    v61 = v79;

    v61;
    v78 = v80;
    v79 = a3;
    v56._object = " not found in state dictionary" + 0x8000000000000000;
    v58 = 0xD000000000000027;
    goto LABEL_20;
  }

  if (*(v38 + 16) != 1)
  {
    v38;
    goto LABEL_17;
  }

  v72 = v38;
  v78 = v80;
  v79 = a3;

  v41._countAndFlagsBits = 0x6E6F6C697370652ELL;
  v41._object = 0xE800000000000000;
  String.append(_:)(v41);
  v42 = v79;
  v43 = specialized Dictionary.subscript.getter(v78, v79, v36);
  v42;
  v44 = v73;
  if (!v43)
  {
LABEL_19:
    v72;
    v44;
    v74;
    v75;
    v77;
    v78 = 0;
    v79 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);
    v62 = v79;

    v62;
    v78 = v80;
    v79 = a3;
    v56._object = "und in state dictionary" + 0x8000000000000000;
    v58 = 0xD000000000000026;
    goto LABEL_20;
  }

  if (*(v43 + 16) != 1)
  {
    v43;
    goto LABEL_19;
  }

  if (!*(v72 + 16))
  {
    BUG();
  }

  v76 = *(v72 + 32);
  v45 = v76;
  v72;
  v46 = type metadata accessor for TensorShape(0);
  v47 = v67[0];
  __swift_storeEnumTagSinglePayload(v67[0], 1, 1, v46);
  v48 = v77;
  Array<A>.floatTensor(shape:)(v47, v77, v45, a5);
  v48;
  outlined destroy of TensorShape?(v47);
  v80 = v46;
  __swift_storeEnumTagSinglePayload(v47, 1, 1, v46);
  v49 = v75;
  Array<A>.floatTensor(shape:)(v47, v75, v45, a5);
  v49;
  outlined destroy of TensorShape?(v47);
  if (!*(v43 + 16))
  {
    BUG();
  }

  *&v45 = v76;
  LODWORD(v77) = LODWORD(v45);
  *&v45 = *(v43 + 32);
  LODWORD(v76) = LODWORD(v45);
  v43;
  v50 = v80;
  __swift_storeEnumTagSinglePayload(v47, 1, 1, v80);
  v51 = v74;
  Array<A>.floatTensor(shape:)(v47, v74, v45, a5);
  v51;
  outlined destroy of TensorShape?(v47);
  __swift_storeEnumTagSinglePayload(v47, 1, 1, v50);
  v52 = v68;
  v53 = v73;
  Array<A>.floatTensor(shape:)(v47, v73, v45, a5);
  v53;
  outlined destroy of TensorShape?(v47);
  return BatchNorm.init(momentum:offset:scale:epsilon:runningMean:runningVariance:)(v70, v69, v71, v52, *&v77, *&v76);
}

uint64_t MLImageClassifier.FeatureExtractor.init(type:)(uint64_t a1, uint64_t a2)
{
  v2[8] = a2;
  v2[7] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComposedTransformer<ImageScaler, MLModelImageFeatureExtractor>);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v2[11] = swift_task_alloc((*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
  v2[12] = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  v2[13] = v6;
  v2[14] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLImageClassifier.FeatureExtractor.init(type:), 0, 0);
}

uint64_t MLImageClassifier.FeatureExtractor.init(type:)()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 104);
  outlined init with copy of MLImageClassifier.FeatureExtractorType(*(v0 + 64), v1);
  if (swift_getEnumCaseMultiPayload(v1, v2) == 1)
  {
    outlined init with take of MLImageClassifier.CustomFeatureExtractor(*(v0 + 112), *(v0 + 96));
    v3 = swift_task_alloc(240);
    *(v0 + 120) = v3;
    *v3 = v0;
    v3[1] = MLImageClassifier.FeatureExtractor.init(type:);
    return MLImageClassifier.CustomFeatureExtractor.buildTransformer()(*(v0 + 88));
  }

  else
  {
    v5 = *(v0 + 112);
    v12 = *(v0 + 56);
    v6 = *(v0 + 64);
    if (*(v5 + 8))
    {
      v7 = 2;
    }

    else
    {
      v7 = *v5;
    }

    v8 = objc_allocWithZone(CIContext);
    v9 = [v8 init];
    *(v0 + 40) = type metadata accessor for ImageFeaturePrint(0);
    *(v0 + 48) = &protocol witness table for ImageFeaturePrint;
    __swift_allocate_boxed_opaque_existential_0((v0 + 16));
    ImageFeaturePrint.init(revision:cropAndScale:context:)(v7, 0, v9);
    outlined destroy of MLActivityClassifier.ModelParameters(v6, type metadata accessor for MLImageClassifier.FeatureExtractorType);
    outlined init with take of TabularRegressionTask((v0 + 16), v12);
    v10 = *(v0 + 88);
    v11 = *(v0 + 96);
    *(v0 + 112);
    v11;
    v10;
    return (*(v0 + 8))();
  }
}

{
  v2 = *(*v1 + 120);
  *(*v1 + 128) = v0;
  v2;
  if (v0)
  {
    v3 = MLImageClassifier.FeatureExtractor.init(type:);
  }

  else
  {
    v3 = MLImageClassifier.FeatureExtractor.init(type:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v9 = *(v0 + 96);
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  v10 = *(v0 + 64);
  v4[3] = v3;
  v4[4] = lazy protocol witness table accessor for type ComposedTransformer<ImageScaler, MLModelImageFeatureExtractor> and conformance ComposedTransformer<A, B>();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  (*(v2 + 32))(boxed_opaque_existential_0, v1, v3);
  outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  outlined destroy of MLActivityClassifier.ModelParameters(v9, type metadata accessor for MLImageClassifier.CustomFeatureExtractor);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  *(v0 + 112);
  v7;
  v6;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 88);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 64), type metadata accessor for MLImageClassifier.FeatureExtractorType);
  outlined destroy of MLActivityClassifier.ModelParameters(v2, type metadata accessor for MLImageClassifier.CustomFeatureExtractor);
  v1;
  v2;
  v3;
  return (*(v0 + 8))();
}

uint64_t lazy protocol witness table accessor for type ComposedTransformer<ImageScaler, MLModelImageFeatureExtractor> and conformance ComposedTransformer<A, B>()
{
  result = lazy protocol witness table cache variable for type ComposedTransformer<ImageScaler, MLModelImageFeatureExtractor> and conformance ComposedTransformer<A, B>;
  if (!lazy protocol witness table cache variable for type ComposedTransformer<ImageScaler, MLModelImageFeatureExtractor> and conformance ComposedTransformer<A, B>)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for ComposedTransformer<ImageScaler, MLModelImageFeatureExtractor>);
    result = swift_getWitnessTable(&protocol conformance descriptor for ComposedTransformer<A, B>, v1);
    lazy protocol witness table cache variable for type ComposedTransformer<ImageScaler, MLModelImageFeatureExtractor> and conformance ComposedTransformer<A, B> = result;
  }

  return result;
}

uint64_t initializeWithCopy for MLImageClassifier.FeatureExtractor(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  *(a1 + 24) = *(a2 + 24);
  (**(v2 - 8))(a1);
  return a1;
}

void __swift_assign_boxed_opaque_existential_1(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v2 = a1[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v7 = *(v2 - 8);
      if ((*(v7 + 82) & 2) != 0)
      {
        v8 = *a2;

        *a1 = v8;
      }

      else
      {
        (*(v7 + 24))(a1, a2, a1[3]);
      }
    }

    else
    {
      a1[3] = v3;
      a1[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v6 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v5 + 16))(a1, a2, v3);
        }
      }

      else
      {
        v11 = *(v3 - 8);
        v10 = v4;
        (*(v4 + 32))(v9, a1, v2);
        if ((v6 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v11 + 16))(a1, a2, v3);
        }

        (*(v10 + 8))(v9, v2);
      }
    }
  }
}

uint64_t __swift_memcpy40_8(uint64_t a1, __int128 *a2)
{
  result = a1;
  *(a1 + 32) = *(a2 + 4);
  v3 = *a2;
  *(a1 + 16) = a2[1];
  *a1 = v3;
  return result;
}

uint64_t assignWithTake for MLImageClassifier.FeatureExtractor(uint64_t a1, __int128 *a2)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *(a1 + 32) = *(a2 + 4);
  v2 = *a2;
  *(a1 + 16) = a2[1];
  *a1 = v2;
  return a1;
}

uint64_t getEnumTagSinglePayload for MLImageClassifier.FeatureExtractor(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*(a1 + 24) & 0xFFFFFFFF00000001) != 0 ? -1 : *(a1 + 24) >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLImageClassifier.FeatureExtractor(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 8) = 0;
    *(a1 + 24) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 40) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 40) = 0;
    }

    if (a2)
    {
      *(a1 + 24) = 2 * (a2 - 1);
    }
  }
}

void *static CosineSimilarity.buildItemStatistics(ratings:count:)(void *a1, uint64_t a2)
{
  ML14ItemStatisticsVySdG_Tt1g5 = _sSa9repeating5countSayxGx_SitcfC8CreateML14ItemStatisticsVySdG_Tt1g5(0, a2, 0.0);
  v14 = a1[3];
  v15 = a1[4];
  v16[0] = a1[5];
  outlined retain of [Int](&v14);
  outlined retain of [Int](&v15);
  outlined retain of ContiguousArray<Double>(v16);
  _s13LinearAlgebra12SparseMatrixV15IndexedSequenceV8IteratorV4baseAGyx__GACyxG_tcfCSd_Tt0g5(a1);
  while (1)
  {
    specialized SparseMatrix.IndexedSequence.Iterator.next()();
    if (v5)
    {
      break;
    }

    v6 = v3;
    v7 = v4;
    if (!swift_isUniquelyReferenced_nonNull_native(ML14ItemStatisticsVySdG_Tt1g5))
    {
      ML14ItemStatisticsVySdG_Tt1g5 = specialized _ArrayBuffer._consumeAndCreateNew()(ML14ItemStatisticsVySdG_Tt1g5);
    }

    if (v6 < 0)
    {
      BUG();
    }

    if (v6 >= ML14ItemStatisticsVySdG_Tt1g5[2])
    {
      BUG();
    }

    v8 = 2 * v6;
    *&ML14ItemStatisticsVySdG_Tt1g5[v8 + 5] = v7 * v7 + *&ML14ItemStatisticsVySdG_Tt1g5[v8 + 5];
    v9 = ML14ItemStatisticsVySdG_Tt1g5[v8 + 4];
    v10 = __OFADD__(1, v9);
    v11 = v9 + 1;
    if (v10)
    {
      BUG();
    }

    ML14ItemStatisticsVySdG_Tt1g5[v8 + 4] = v11;
  }

  v13[3] = v13[7];
  v13[2] = v13[6];
  v13[1] = v13[5];
  v13[0] = v13[4];
  outlined release of SparseMatrix<Double>.MajorCollection(v13);
  return ML14ItemStatisticsVySdG_Tt1g5;
}

__m128 static CosineSimilarityPredictor.finalizePrediction(_:userRatingCount:)(uint64_t a1, __m128 a2)
{
  v2 = 0;
  if (a1)
  {
    *a2.i64 = *a2.i64 / a1;
    return a2;
  }

  return v2;
}

uint64_t _sScTss5NeverORs_rlE8priority9operationScTyxABGScPSg_xyYaYAcntcfCyt_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v4 = type metadata accessor for TaskPriority(0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v4) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1, &demangling cache variable for type metadata for TaskPriority?);
    v5 = 7168;
  }

  else
  {
    v6 = TaskPriority.rawValue.getter();
    (*(*(v4 - 8) + 8))(a1, v4);
    v5 = v6 | 0x1C00;
  }

  v7 = *(a3 + 16);
  if (v7)
  {
    v8 = *(a3 + 24);
    ObjectType = swift_getObjectType(*(a3 + 16));
    swift_unknownObjectRetain(v7);
    v10 = dispatch thunk of Actor.unownedExecutor.getter(ObjectType, v8);
    v12 = v11;
    swift_unknownObjectRelease(v7);
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = swift_allocObject(&unk_395740, 32, 7);
  *(v13 + 16) = v20;
  *(v13 + 24) = a3;
  if (v10 | v12)
  {
    v15 = &v17;
    v17 = 0;
    v18 = v10;
    v19 = v12;
  }

  else
  {
    v15 = 0;
  }

  return swift_task_create(v5, v15, &type metadata for () + 8, &_sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATu, v13, v14, v17, *(&v17 + 1), v18, v19);
}

uint64_t MLImageClassifier.init(_:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a2;
  v3[2] = a1;
  v4 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  v3[5] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  v3[6] = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v3[9] = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLImageClassifier.init(_:parameters:), 0, 0);
}

uint64_t MLImageClassifier.init(_:parameters:)()
{
  v1 = *(v0 + 72);
  v17 = *(v0 + 64);
  v19 = *(v0 + 56);
  v12 = *(v0 + 48);
  v11 = *(v0 + 40);
  v13 = *(v0 + 32);
  v2 = *(v0 + 16);
  v14 = *(v0 + 24);
  v15 = type metadata accessor for MLImageClassifier(0);
  v16 = v15[6];
  *(v0 + 104) = v16;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v1);
  (*(v17 + 8))(v1, v19);
  *(v2 + v16) = 0;
  v18 = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload(v2 + v16, v18, 1);
  v3 = v15[7];
  *(v0 + 108) = v3;
  v4 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v5 = swift_allocError(&type metadata for MLCreateError, v4, 0, 0);
  *v6 = 0xD0000000000000C0;
  *(v6 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v6 + 16) = 0;
  *(v6 + 32) = 0;
  *(v6 + 48) = 0;
  *(v2 + v3) = v5;
  swift_storeEnumTagMultiPayload(v3 + v2, v18, 2);
  v7 = v15[8];
  *(v0 + 112) = v7;
  outlined init with copy of MLTrainingSessionParameters(v14, v2 + v7, type metadata accessor for MLImageClassifier.Model);
  outlined init with copy of MLImageClassifier.ModelParameters(v13, v2 + 8);
  MLImageClassifier.ModelParameters.algorithm.getter();
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (featureExtractor: MLImageClassifier.FeatureExtractorType, classifier: MLImageClassifier.ModelParameters.ClassifierType));
  *(v12 + *(v8 + 48));
  outlined init with take of MLClassifierMetrics(v12, v11, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  v9 = swift_task_alloc(448);
  *(v0 + 80) = v9;
  *v9 = v0;
  v9[1] = MLImageClassifier.init(_:parameters:);
  return MLImageClassifier.Model.exportAsCompiledMLModel(featureExtractorType:)(*(v0 + 40));
}

{
  v1 = *(v0 + 96);
  v7 = *(v0 + 72);
  v6 = *(v0 + 48);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  outlined destroy of MLImageClassifier.ModelParameters(*(v0 + 32));
  outlined destroy of MLActivityClassifier.ModelParameters(v4, type metadata accessor for MLImageClassifier.Model);
  outlined destroy of MLActivityClassifier.ModelParameters(v2, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  *v3 = v1;
  v7;
  v6;
  v2;
  return (*(v0 + 8))();
}

{
  v8 = *(v0 + 72);
  v7 = *(v0 + 48);
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v10 = *(v0 + 24);
  v9 = v2 + 8;
  v3 = v2 + *(v0 + 112);
  v4 = v2 + *(v0 + 108);
  v5 = v2 + *(v0 + 104);
  outlined destroy of MLImageClassifier.ModelParameters(*(v0 + 32));
  outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLImageClassifier.Model);
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  outlined destroy of MLImageClassifier.ModelParameters(v9);
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v4, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLImageClassifier.Model);
  v8;
  v7;
  v1;
  return (*(v0 + 8))();
}

uint64_t MLImageClassifier.init(_:parameters:)(uint64_t a1)
{
  v5 = *(*v2 + 80);
  v4 = *v2;
  *(*v2 + 88) = v1;
  v5;
  if (v1)
  {
    v6 = MLImageClassifier.init(_:parameters:);
  }

  else
  {
    *(v4 + 96) = a1;
    v6 = MLImageClassifier.init(_:parameters:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t MLImageClassifier.init(checkpoint:)(uint64_t a1)
{
  v129 = v2;
  v134 = a1;
  v3 = v1;
  v128 = v1;
  v111 = *(type metadata accessor for MLImageClassifier.FeatureExtractorType(0) - 8);
  v4 = *(v111 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v117 = v100;
  v108 = v4;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v127 = v100;
  v112 = *(type metadata accessor for MLImageClassifier.Model(0) - 8);
  v9 = *(v112 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v110 = v100;
  v109 = v9;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v130 = v100;
  v102 = type metadata accessor for MLImageClassifier.Classifier(0);
  v14 = *(*(v102 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v125 = v100;
  v103 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  v17 = *(*(v103 - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v113 = v100;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v105 = v100;
  v22 = alloca(v17);
  v23 = alloca(v17);
  v104 = v100;
  v106 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v24 = *(*(v106 - 8) + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v107 = v100;
  v27 = alloca(v24);
  v28 = alloca(v24);
  v122 = v100;
  v126 = type metadata accessor for MLImageClassifier.PersistentParameters(0);
  v29 = *(*(v126 - 1) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v121 = v100;
  v120 = type metadata accessor for URL(0);
  v133 = *(v120 - 8);
  v32 = *(v133 + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v123 = v100;
  v35 = alloca(v32);
  v36 = alloca(v32);
  v124 = v100;
  v37 = alloca(v32);
  v38 = alloca(v32);
  v131 = v100;
  v39 = alloca(v32);
  v40 = alloca(v32);
  v132 = v100;
  v135 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v118 = *(v135 - 1);
  v41 = *(v118 + 64);
  v42 = alloca(v41);
  v43 = alloca(v41);
  v44 = type metadata accessor for MLImageClassifier(0);
  v119 = *(v44 + 24);
  v45 = v119 + v3;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v100);
  (*(v118 + 8))(v100, v135);
  v46 = v128;
  *(v128 + v119) = 0;
  v135 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v118 = v45;
  swift_storeEnumTagMultiPayload(v45, v135, 1);
  v114 = v44;
  v47 = *(v44 + 28);
  v48 = v47 + v46;
  v49 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v50 = swift_allocError(&type metadata for MLCreateError, v49, 0, 0);
  *v51 = 0xD0000000000000C0;
  *(v51 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v51 + 16) = 0;
  *(v51 + 32) = 0;
  *(v51 + 48) = 0;
  *(v128 + v47) = v50;
  v119 = v48;
  swift_storeEnumTagMultiPayload(v48, v135, 2);
  switch(*(v134 + *(type metadata accessor for MLCheckpoint(0) + 20)))
  {
    case 0:
      v52 = 0x696C616974696E69;
      v53 = 0xEB0000000064657ALL;
      break;
    case 1:
      v52 = 0x6974636172747865;
      goto LABEL_7;
    case 2:
      v54 = 0xE800000000000000;
      0;
      goto LABEL_9;
    case 3:
      v52 = 0x697461756C617665;
LABEL_7:
      v53 = 0xEA0000000000676ELL;
      break;
    case 4:
      v53 = 0xEB00000000676E69;
      v52 = 0x636E657265666E69;
      break;
    case 5:
      JUMPOUT(0x2C525CLL);
  }

  v55 = _stringCompareWithSmolCheck(_:_:expecting:)(v52, v53, 0x676E696E69617274, 0xE800000000000000, 0);
  v54 = v53;
  v53;
  if ((v55 & 1) == 0)
  {
    swift_allocError(&type metadata for MLCreateError, v49, 0, 0);
    *v64 = 0xD00000000000003CLL;
    *(v64 + 8) = "nd in state dictionary" + 0x8000000000000000;
    *(v64 + 16) = 0;
    *(v64 + 32) = 0;
    *(v64 + 48) = 0;
    swift_willThrow();
    outlined destroy of MLActivityClassifier.ModelParameters(v134, type metadata accessor for MLCheckpoint);
    goto LABEL_19;
  }

LABEL_9:
  v56 = v132;
  URL.deletingLastPathComponent()(v54);
  v57 = v124;
  URL.appendingPathComponent(_:)(0x6C65646F6DLL, 0xE500000000000000);
  URL.appendingPathExtension(_:)(6777712, 0xE300000000000000);
  v58 = v133;
  v59 = v120;
  v135 = *(v133 + 8);
  v135(v57, v120);
  v60 = v123;
  (*(v58 + 16))(v123, v56, v59);
  v61 = v121;
  v62 = v129;
  MLImageClassifier.PersistentParameters.init(sessionDirectory:)(v60);
  if (v62)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v134, type metadata accessor for MLCheckpoint);
    v63 = v135;
    v135(v131, v59);
    v63(v132, v59);
LABEL_19:
    outlined destroy of MLActivityClassifier.ModelParameters(v118, type metadata accessor for MLClassifierMetrics);
    return outlined destroy of MLActivityClassifier.ModelParameters(v119, type metadata accessor for MLClassifierMetrics);
  }

  v65 = v126;
  outlined init with copy of MLTrainingSessionParameters(v61 + v126[5], v122, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  v124 = *(v61 + v65[8]);
  v115 = *(v61 + v65[9]);
  v66 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (featureExtractor: MLImageClassifier.FeatureExtractorType, classifier: MLImageClassifier.ModelParameters.ClassifierType));
  v133 = 0;
  v116 = v66;
  v67 = *(v66 + 48);
  v68 = v104;
  outlined init with copy of MLTrainingSessionParameters(v61 + v65[6], v104, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  v69 = *(v61 + v65[7]);
  v70 = 0;
  if (v69 != 2)
  {
    v70 = v69;
  }

  *(v68 + v67) = v70;
  v71 = v128;
  v129 = v128 + 8;
  v126 = (v128 + 24);
  v123 = (v128 + 56);
  *(v128 + 72) = 0;
  *(v71 + 56) = 0;
  *(v71 + 40) = 0;
  *(v71 + 24) = 0;
  *(v71 + 8) = v124;
  *(v71 + 16) = v115;
  v72 = v107;
  outlined init with copy of MLTrainingSessionParameters(v122, v107, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  v101 = v106;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v100);
  outlined init with take of MLClassifierMetrics(v72, boxed_opaque_existential_0, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  outlined copy of MLImageClassifier.ModelParameters.ClassifierType?(v69);
  outlined assign with take of Any?(v100, v126);
  v74 = v105;
  outlined init with copy of MLTrainingSessionParameters(v68, v105, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  v101 = v103;
  v75 = __swift_allocate_boxed_opaque_existential_0(v100);
  outlined init with take of MLClassifierMetrics(v74, v75, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  outlined assign with take of Any?(v100, v123);
  v76 = v129;
  outlined destroy of MLActivityClassifier.ModelParameters(v68, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  outlined destroy of MLActivityClassifier.ModelParameters(v122, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  outlined init with copy of MLImageClassifier.ModelParameters(v76, v100);
  MLImageClassifier.Classifier.init(labels:parameters:)(&_swiftEmptySetSingleton, v100);
  v77 = lazy protocol witness table accessor for type MLImageClassifier.Classifier and conformance MLImageClassifier.Classifier();
  v78 = v131;
  v79 = v133;
  UpdatableSupervisedEstimator.readWithOptimizer(from:)(v131, v102, v77);
  if (v79)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v134, type metadata accessor for MLCheckpoint);
    v80 = v132;
LABEL_18:
    outlined destroy of MLActivityClassifier.ModelParameters(v125, type metadata accessor for MLImageClassifier.Classifier);
    outlined destroy of MLActivityClassifier.ModelParameters(v121, type metadata accessor for MLImageClassifier.PersistentParameters);
    v92 = v78;
    v93 = v120;
    v94 = v135;
    v135(v92, v120);
    v94(v80, v93);
    outlined destroy of MLImageClassifier.ModelParameters(v129);
    goto LABEL_19;
  }

  v81 = v113;
  MLImageClassifier.ModelParameters.algorithm.getter();
  *(v81 + *(v116 + 48));
  v82 = v81;
  v83 = v127;
  outlined init with take of MLClassifierMetrics(v82, v127, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  v133 = 0;
  v84 = v110;
  outlined init with copy of MLTrainingSessionParameters(v130, v110, type metadata accessor for MLImageClassifier.Model);
  outlined init with copy of MLTrainingSessionParameters(v83, v117, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  v85 = *(v112 + 80);
  v86 = ~*(v112 + 80) & (v85 + 16);
  v87 = *(v111 + 80);
  v88 = ~v87 & (v86 + v87 + v109);
  v89 = swift_allocObject(&unk_3956F0, v88 + v108, v87 | v85 | 7);
  outlined init with take of MLClassifierMetrics(v84, v89 + v86, type metadata accessor for MLImageClassifier.Model);
  outlined init with take of MLClassifierMetrics(v117, v89 + v88, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  v90 = v133;
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLImageClassifier.init(checkpoint:), v89);
  if (v90)
  {

    outlined destroy of MLActivityClassifier.ModelParameters(v134, type metadata accessor for MLCheckpoint);
    outlined destroy of MLActivityClassifier.ModelParameters(v127, type metadata accessor for MLImageClassifier.FeatureExtractorType);
    outlined destroy of MLActivityClassifier.ModelParameters(v130, type metadata accessor for MLImageClassifier.Model);
    v80 = v132;
    v78 = v131;
    goto LABEL_18;
  }

  v96 = v91;

  outlined destroy of MLActivityClassifier.ModelParameters(v134, type metadata accessor for MLCheckpoint);
  outlined destroy of MLActivityClassifier.ModelParameters(v127, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  outlined destroy of MLActivityClassifier.ModelParameters(v125, type metadata accessor for MLImageClassifier.Classifier);
  outlined destroy of MLActivityClassifier.ModelParameters(v121, type metadata accessor for MLImageClassifier.PersistentParameters);
  v97 = v120;
  v98 = v135;
  v135(v131, v120);
  v98(v132, v97);
  v99 = v128;
  *v128 = v96;
  return outlined init with take of MLClassifierMetrics(v130, v99 + *(v114 + 32), type metadata accessor for MLImageClassifier.Model);
}

uint64_t lazy protocol witness table accessor for type MLImageClassifier.Classifier and conformance MLImageClassifier.Classifier()
{
  result = lazy protocol witness table cache variable for type MLImageClassifier.Classifier and conformance MLImageClassifier.Classifier;
  if (!lazy protocol witness table cache variable for type MLImageClassifier.Classifier and conformance MLImageClassifier.Classifier)
  {
    v1 = type metadata accessor for MLImageClassifier.Classifier(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for MLImageClassifier.Classifier, v1);
    lazy protocol witness table cache variable for type MLImageClassifier.Classifier and conformance MLImageClassifier.Classifier = result;
  }

  return result;
}

uint64_t closure #1 in MLImageClassifier.init(checkpoint:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc(448);
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = closure #1 in MLRandomForestRegressor.init(checkpoint:);
  return MLImageClassifier.Model.exportAsCompiledMLModel(featureExtractorType:)(a3);
}

uint64_t sub_2C530E()
{
  v1 = *(type metadata accessor for MLImageClassifier.Model(0) - 8);
  v2 = *(v1 + 80);
  v3 = ~*(v1 + 80) & (v2 + 16);
  v4 = v3 + *(v1 + 64);
  v5 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  v6 = *(v5 - 8);
  v15 = *(v6 + 80);
  v7 = ~v15 & (v15 + v4);
  v16 = *(v6 + 64);
  v8 = v0 + v3;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v10 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
  if (swift_getEnumCaseMultiPayload(v8, v9) == 1)
  {
    v10 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledName(v10);
  (*(*(v11 - 8) + 8))(v8, v11);
  if (swift_getEnumCaseMultiPayload(v7 + v0, v5) == 1)
  {
    v12 = type metadata accessor for URL(0);
    (*(*(v12 - 8) + 8))(v7 + v0, v12);
    v13 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
    *(v7 + v0 + *(v13 + 20) + 8);
  }

  return swift_deallocObject(v0, v16 + v7, v15 | v2 | 7);
}

uint64_t partial apply for closure #1 in MLImageClassifier.init(checkpoint:)(uint64_t a1)
{
  v3 = *(type metadata accessor for MLImageClassifier.Model(0) - 8);
  v4 = ~*(v3 + 80) & (*(v3 + 80) + 16);
  v5 = v4 + *(v3 + 64);
  v6 = *(*(type metadata accessor for MLImageClassifier.FeatureExtractorType(0) - 8) + 80);
  v7 = swift_task_alloc(48);
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLImageClassifier.init(checkpoint:)(a1, v1 + v4, v1 + ((v6 + v5) & ~v6));
}

uint64_t *static MLImageClassifier.train(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = static MLImageClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(a1, a2, a3);
  if (!v3)
  {
    v5 = result;
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLImageClassifier>);
    v7 = swift_allocObject(v6, *(v6 + 48), *(v6 + 52));
    return specialized MLJob.init(_:)(v7, v5);
  }

  return result;
}

uint64_t *static MLImageClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v17 = a2;
  v4 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = alloca(v4);
  v8 = alloca(v4);
  result = static _ImageUtilities.getImageURLsAndLabels(from:)(a1);
  if (!v3)
  {
    v10 = result;
    v18 = &v15;
    outlined init with copy of MLImageClassifier.ModelParameters(v17, v16);
    outlined init with copy of MLTrainingSessionParameters(v19, &v15, type metadata accessor for MLTrainingSessionParameters);
    v11 = type metadata accessor for ImageClassifierTrainingSessionDelegate(0);
    swift_allocObject(v11, *(v11 + 48), *(v11 + 52));
    v12 = ImageClassifierTrainingSessionDelegate.init(filesByLabel:modelParameters:sessionParameters:)(v10, v16, &v15);
    v16[3] = v11;
    v16[4] = &protocol witness table for ImageClassifierTrainingSessionDelegate;
    v16[0] = v12;
    v13 = v18;
    outlined init with copy of MLTrainingSessionParameters(v19, v18, type metadata accessor for MLTrainingSessionParameters);
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>);
    swift_allocObject(v14, *(v14 + 48), *(v14 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v16, v13, 12);
  }

  return result;
}

void *static MLImageClassifier.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLImageClassifier>);
  v2 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));

  return specialized MLJob.init(_:)(v2, a1);
}

uint64_t static MLImageClassifier.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v2 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v12 = v11;
  v5 = alloca(v2);
  v6 = alloca(v2);
  outlined init with copy of MLTrainingSessionParameters(a1, v11, type metadata accessor for MLTrainingSessionParameters);
  v7 = type metadata accessor for ImageClassifierTrainingSessionDelegate(0);
  swift_allocObject(v7, *(v7 + 48), *(v7 + 52));
  result = ImageClassifierTrainingSessionDelegate.init(sessionParameters:)(v11);
  if (!v1)
  {
    v11[3] = v7;
    v11[4] = &protocol witness table for ImageClassifierTrainingSessionDelegate;
    v11[0] = result;
    v9 = v12;
    outlined init with copy of MLTrainingSessionParameters(a1, v12, type metadata accessor for MLTrainingSessionParameters);
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>);
    swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v11, v9, 12);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static MLImageClassifier.resume(_:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v22 = a5;
  v23 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLImageClassifier, Error>);
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
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v19, &demangling cache variable for type metadata for Result<MLImageClassifier, Error>);
  }

  else
  {
    outlined init with copy of TabularRegressionTask(direct field offset for MLTrainingSession.delegate + a3, v20);
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingSessionDelegate);
    v15 = type metadata accessor for ImageClassifierTrainingSessionDelegate(0);
    swift_dynamicCast(&v21, v20, v14, v15, 7);
    v16 = v21;
    v17 = type metadata accessor for TaskPriority(0);
    __swift_storeEnumTagSinglePayload(&v19, 1, 1, v17);
    v18 = swift_allocObject(&unk_395718, 56, 7);
    *(v18 + 16) = 0;
    *(v18 + 32) = v16;
    *(v18 + 40) = v23;
    *(v18 + 48) = v22;

    _sScTss5NeverORs_rlE8priority9operationScTyxABGScPSg_xyYaYAcntcfCyt_Tt1g5(&v19, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in static MLImageClassifier.resume(_:), v18);
  }
}

uint64_t closure #1 in closure #1 in closure #1 in static MLImageClassifier.resume(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a6;
  v6[3] = a5;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLImageClassifier, Error>);
  v6[5] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in closure #1 in closure #1 in static MLImageClassifier.resume(_:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in static MLImageClassifier.resume(_:)()
{

  v1 = swift_task_alloc(80);
  v0[6] = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #1 in closure #1 in static MLImageClassifier.resume(_:);
  return ((&_ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC17MLImageClassifierV_Tt1g503_s8b4ML17fg43V6resumeyAA5MLJobCyACGAA17MLTrainingSessionm13ACGKFZyAG_ys6a6OyACs5D45_pGctXEfU_yALyytsAM_pGcfU_yyYacfU_ACyYaKXEfU_AC05Imageg8TrainingP8DelegateCTf1nc_nTu + _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC17MLImageClassifierV_Tt1g503_s8b4ML17fg43V6resumeyAA5MLJobCyACGAA17MLTrainingSessionm13ACGKFZyAG_ys6a6OyACs5D45_pGctXEfU_yALyytsAM_pGcfU_yyYacfU_ACyYaKXEfU_AC05Imageg8TrainingP8DelegateCTf1nc_nTu))(v0[5], v0[2]);
}

{
  *(*v0 + 48);
  return swift_task_switch(closure #1 in closure #1 in closure #1 in static MLImageClassifier.resume(_:), 0, 0);
}

{
  v1 = *(v0 + 40);
  (*(v0 + 24))(v1);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &demangling cache variable for type metadata for Result<MLImageClassifier, Error>);
  v1;
  return (*(v0 + 8))();
}

uint64_t sub_2C5A94()
{
  swift_unknownObjectRelease(*(v0 + 16));

  return swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static MLImageClassifier.resume(_:)(uint64_t a1)
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
  return closure #1 in closure #1 in closure #1 in static MLImageClassifier.resume(_:)(a1, v3, v4, v8, v9, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v3 = (a2 + *a2);
  v4 = swift_task_alloc(a2[1]);
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;
  return v3(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v2 = *v0;
  *(*v0 + 16);
  return (*(v2 + 8))();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = swift_task_alloc(32);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;
  return ((&_sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5Tu + _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5Tu))(a1, v3, v4);
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  return specialized SetAlgebra<>.init(arrayLiteral:)(a1);
}

{
  v2 = v1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(a1 + 8 * v4 + 32) & ~v6;
      if (v7)
      {
        v7 = *(a1 + 8 * v4 + 32);
      }

      v6 = v5 | v7;
      ++v4;
      v5 = v6;
    }

    while (v3 != v4);
  }

  else
  {
    v6 = 0;
  }

  result = a1;
  *v2 = v6;
  return result;
}

{
  return specialized SetAlgebra<>.init(arrayLiteral:)(a1);
}

uint64_t *specialized OptionSet.union(_:)(uint64_t a1, uint64_t a2)
{
  *result = a2 | a1;
  return result;
}

{
  return specialized OptionSet.union(_:)(a1, a2);
}

uint64_t *specialized OptionSet.symmetricDifference(_:)(uint64_t a1, uint64_t a2)
{
  *result = a2 ^ a1;
  return result;
}

{
  return specialized OptionSet.symmetricDifference(_:)(a1, a2);
}

uint64_t specialized OptionSet<>.remove(_:)(uint64_t a1)
{
  v3 = a1 & *v2;
  if (v3)
  {
    *v2 &= ~a1;
  }

  *result = v3;
  *(result + 8) = v3 == 0;
  return result;
}

{
  return specialized OptionSet<>.remove(_:)(a1);
}

uint64_t specialized OptionSet<>.update(with:)(uint64_t a1)
{
  v3 = *v2;
  *v2 |= a1;
  v4 = a1 & v3;
  *result = v4;
  *(result + 8) = v4 == 0;
  return result;
}

{
  return specialized OptionSet<>.update(with:)(a1);
}

void specialized OptionSet<>.formSymmetricDifference(_:)(uint64_t a1)
{
  *v1 ^= a1;
}

{
  specialized OptionSet<>.formSymmetricDifference(_:)(a1);
}

uint64_t *specialized SetAlgebra.subtracting(_:)(uint64_t a1, uint64_t a2)
{
  *result = a2 & ~a1;
  return result;
}

{
  return specialized SetAlgebra.subtracting(_:)(a1, a2);
}

BOOL specialized SetAlgebra.isDisjoint(with:)(uint64_t a1, uint64_t a2)
{
  return (a1 & a2) == 0;
}

{
  return specialized SetAlgebra.isDisjoint(with:)(a1, a2);
}

BOOL specialized SetAlgebra.isEmpty.getter(uint64_t a1)
{
  return a1 == 0;
}

{
  return specialized SetAlgebra.isEmpty.getter(a1);
}

void specialized SetAlgebra.subtract(_:)(uint64_t a1)
{
  *v1 &= ~a1;
}

{
  specialized SetAlgebra.subtract(_:)(a1);
}

uint64_t lazy protocol witness table accessor for type MLHandPoseClassifier.ImageAugmentationOptions and conformance MLHandPoseClassifier.ImageAugmentationOptions()
{
  result = lazy protocol witness table cache variable for type MLHandPoseClassifier.ImageAugmentationOptions and conformance MLHandPoseClassifier.ImageAugmentationOptions;
  if (!lazy protocol witness table cache variable for type MLHandPoseClassifier.ImageAugmentationOptions and conformance MLHandPoseClassifier.ImageAugmentationOptions)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLHandPoseClassifier.ImageAugmentationOptions, &type metadata for MLHandPoseClassifier.ImageAugmentationOptions);
    lazy protocol witness table cache variable for type MLHandPoseClassifier.ImageAugmentationOptions and conformance MLHandPoseClassifier.ImageAugmentationOptions = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLHandPoseClassifier.ImageAugmentationOptions and conformance MLHandPoseClassifier.ImageAugmentationOptions;
  if (!lazy protocol witness table cache variable for type MLHandPoseClassifier.ImageAugmentationOptions and conformance MLHandPoseClassifier.ImageAugmentationOptions)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLHandPoseClassifier.ImageAugmentationOptions, &type metadata for MLHandPoseClassifier.ImageAugmentationOptions);
    lazy protocol witness table cache variable for type MLHandPoseClassifier.ImageAugmentationOptions and conformance MLHandPoseClassifier.ImageAugmentationOptions = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLHandPoseClassifier.ImageAugmentationOptions and conformance MLHandPoseClassifier.ImageAugmentationOptions;
  if (!lazy protocol witness table cache variable for type MLHandPoseClassifier.ImageAugmentationOptions and conformance MLHandPoseClassifier.ImageAugmentationOptions)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLHandPoseClassifier.ImageAugmentationOptions, &type metadata for MLHandPoseClassifier.ImageAugmentationOptions);
    lazy protocol witness table cache variable for type MLHandPoseClassifier.ImageAugmentationOptions and conformance MLHandPoseClassifier.ImageAugmentationOptions = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLHandPoseClassifier.ImageAugmentationOptions and conformance MLHandPoseClassifier.ImageAugmentationOptions;
  if (!lazy protocol witness table cache variable for type MLHandPoseClassifier.ImageAugmentationOptions and conformance MLHandPoseClassifier.ImageAugmentationOptions)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLHandPoseClassifier.ImageAugmentationOptions, &type metadata for MLHandPoseClassifier.ImageAugmentationOptions);
    lazy protocol witness table cache variable for type MLHandPoseClassifier.ImageAugmentationOptions and conformance MLHandPoseClassifier.ImageAugmentationOptions = result;
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MLHandPoseClassifier.ImageAugmentationOptions(uint64_t *a1)
{
  v2 = v1;
  MLHandPoseClassifier.ImageAugmentationOptions.init(rawValue:)(*a1);
  result = v4;
  *v2 = v4;
  *(v2 + 8) = 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MLHandPoseClassifier.ImageAugmentationOptions(uint64_t a1)
{
  v2 = v1;
  result = MLHandPoseClassifier.ImageAugmentationOptions.rawValue.getter();
  *v2 = result;
  return result;
}

char MLUntypedColumn.subscript.getter(uint64_t a1, double a2)
{
  v4 = v2;
  if (*(v3 + 8))
  {
    v5 = 0;
    result = 6;
  }

  else
  {
    v7 = *v3;

    _UntypedColumn.valueAtIndex(index:)(a1, a2);
    outlined consume of Result<_DataTable, Error>(v7, 0);
    v5 = v8;
    result = v9;
  }

  *v4 = v5;
  *(v4 + 16) = result;
  return result;
}

uint64_t MLUntypedColumn.count.getter()
{
  if (*(v0 + 8))
  {
    return -1;
  }

  v2 = *v0;

  v3 = CMLColumn.size.getter();
  outlined consume of Result<_DataTable, Error>(v2, 0);
  return v3;
}

uint64_t MLUntypedColumn.dropDuplicates()()
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
    v13 = type metadata accessor for CMLColumn();
    v14 = swift_allocObject(v13, 24, 7);
    *(v14 + 16) = v12;
    v15 = v14;
    v16 = type metadata accessor for _UntypedColumn();
    v6 = swift_allocObject(v16, 24, 7);
    *(v6 + 16) = v15;
    result = outlined consume of Result<_DataTable, Error>(v3, 0);
  }

  *v2 = v6;
  *(v2 + 8) = v11;
  return result;
}

uint64_t MLUntypedColumn.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *v2 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for closure #1 in MLUntypedColumn.init<A>(_:));
  *(v3 + 8) = v4 & 1;
  return (*(*(a2 - 8) + 8))(a1, a2);
}

{
  v3 = v2;
  *v2 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for closure #1 in MLUntypedColumn.init<A>(_:));
  *(v3 + 8) = v4 & 1;
  return (*(*(a2 - 8) + 8))(a1, a2);
}

uint64_t _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML20MLHandPoseClassifierV_s5Error_pTt1g5Tm(void (*a1)(uint64_t *), uint64_t a2, uint64_t *a3)
{
  v12 = v3;
  v11 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledName(a3);
  v5 = *(*(v4 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  a1(&v10);
  swift_storeEnumTagMultiPayload(v9, v4, 0);
  return outlined init with take of DataFrame?(v9, v12, v11);
}

char MLUntypedColumn.type.getter()
{
  v5 = HIBYTE(v0);
  v2 = v0;
  result = 6;
  if (!*(v1 + 8))
  {
    v4 = *v1;

    _UntypedColumn.type.getter();
    outlined consume of Result<_DataTable, Error>(v4, 0);
    result = v5;
  }

  *v2 = result;
  return result;
}

uint64_t MLUntypedColumn.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return MLUntypedColumn.map<A>(_:)(a1, a2, a3, a4, 1);
}

{
  v6 = swift_allocObject(&unk_395790, 48, 7);
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a1;
  v6[5] = a2;

  MLUntypedColumn.map<A>(skipUndefined:_:)(1, partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed MLDataValue) -> (@out A), v6, a3, a4);
}

uint64_t MLUntypedColumn.ints.getter()
{
  v4 = HIBYTE(result);
  v2 = result;
  if (*(v1 + 8) || (v3 = *v1, outlined copy of Result<_DataTable, Error>(v3, 0), _UntypedColumn.type.getter(), result = outlined consume of Result<_DataTable, Error>(v3, 0), v4))
  {
    *v2 = 0;
    *(v2 + 8) = -1;
  }

  else
  {
    *v2 = v3;
    *(v2 + 8) = 0;
    return outlined copy of Result<_DataTable, Error>(v3, 0);
  }

  return result;
}

uint64_t MLUntypedColumn.strings.getter()
{
  v4 = HIBYTE(result);
  v2 = result;
  if (*(v1 + 8) || (v3 = *v1, outlined copy of Result<_DataTable, Error>(v3, 0), _UntypedColumn.type.getter(), result = outlined consume of Result<_DataTable, Error>(v3, 0), v4 != 2))
  {
    *v2 = 0;
    *(v2 + 8) = -1;
  }

  else
  {
    *v2 = v3;
    *(v2 + 8) = 0;
    return outlined copy of Result<_DataTable, Error>(v3, 0);
  }

  return result;
}

uint64_t static MLUntypedColumn.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v5 = *a1;
  if (*(a1 + 8))
  {
    result = swift_errorRetain(*a1);
    v7 = 1;
  }

  else
  {
    v8 = *a2;
    if (*(a2 + 8))
    {
      result = swift_errorRetain(*a2);
      v7 = 1;
      v5 = v8;
    }

    else
    {
      v10 = *(*(v5 + 16) + 16);
      v16 = *(*(v8 + 16) + 16);
      outlined copy of Result<_DataTable, Error>(v8, 0);
      outlined copy of Result<_DataTable, Error>(v5, 0);
      v17 = specialized handling<A, B, C, D>(_:_:_:_:)(v10, a3, v16);
      if (!v17)
      {
        BUG();
      }

      v7 = 0;
      v11 = type metadata accessor for CMLColumn();
      v12 = swift_allocObject(v11, 24, 7);
      *(v12 + 16) = v17;
      v13 = type metadata accessor for _UntypedColumn();
      v14 = swift_allocObject(v13, 24, 7);
      *(v14 + 16) = v12;
      v15 = v14;
      outlined consume of Result<_DataTable, Error>(v8, 0);
      result = outlined consume of Result<_DataTable, Error>(v5, 0);
      v5 = v15;
    }
  }

  *v4 = v5;
  *(v4 + 8) = v7;
  return result;
}

uint64_t *static MLUntypedColumn.== infix(_:_:)(uint64_t a1, void *a2, int a3)
{
  v17 = v3;
  v4 = *a1;
  if (*(a1 + 8))
  {
    *&v15 = *a1;
    outlined copy of Result<_DataTable, Error>(v4, 1);
    swift_errorRetain(v4);
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v6 = _getErrorEmbeddedNSError<A>(_:)(&v15, v5, &protocol self-conformance witness table for Error);
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

    outlined consume of Result<_DataTable, Error>(v4, 1);
    v11 = 1;
  }

  else
  {
    v20 = a3;
    v18 = type metadata accessor for _UntypedColumn();
    v8 = a2[3];
    v9 = a2[4];
    __swift_project_boxed_opaque_existential_0Tm(a2, v8);
    v19 = *(v9 + 32);

    v19(v8, v9);
    v13 = v15;
    v14 = v16;
    v7 = static _UntypedColumn.performRightScalar(op:a:b:)(v20, v4, &v13, *&v15);
    outlined consume of MLDataValue(v13, *(&v13 + 1), v14);
    v11 = 0;
    outlined consume of Result<_DataTable, Error>(v4, 0);
  }

  result = v17;
  *v17 = v7;
  *(result + 8) = v11;
  return result;
}

uint64_t *static MLUntypedColumn.== infix(_:_:)(void *a1, uint64_t a2, int a3)
{
  v17 = v3;
  v4 = *a2;
  if (*(a2 + 8))
  {
    *&v15 = *a2;
    outlined copy of Result<_DataTable, Error>(v4, 1);
    swift_errorRetain(v4);
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v6 = _getErrorEmbeddedNSError<A>(_:)(&v15, v5, &protocol self-conformance witness table for Error);
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

    outlined consume of Result<_DataTable, Error>(v4, 1);
    v11 = 1;
  }

  else
  {
    v20 = a3;
    v18 = type metadata accessor for _UntypedColumn();
    v8 = a1[3];
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_0Tm(a1, v8);
    v19 = *(v9 + 32);

    v19(v8, v9);
    v13 = v15;
    v14 = v16;
    v7 = static _UntypedColumn.performLeftScalar(op:a:b:)(v20, &v13, v4, *&v15);
    outlined consume of MLDataValue(v13, *(&v13 + 1), v14);
    v11 = 0;
    outlined consume of Result<_DataTable, Error>(v4, 0);
  }

  result = v17;
  *v17 = v7;
  *(result + 8) = v11;
  return result;
}

uint64_t MLUntypedColumn.map<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v76 = a3;
  v70[1] = v3;
  v77 = a2;
  v6 = type metadata accessor for Optional(0, a2);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v71 = v70;
  v80 = *v4;
  LOBYTE(v79) = *(v4 + 8);
  *&v78[0] = 0;
  *(&v78[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(25);
  SBYTE8(v78[0]);
  *&v78[0] = 0xD000000000000016;
  *(&v78[0] + 1) = "==" + 0x8000000000000000;
  v11._countAndFlagsBits = _typeName(_:qualified:)(a1, 0);
  object = v11._object;
  String.append(_:)(v11);
  object;
  v13._countAndFlagsBits = 46;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v75 = v78[0];
  v14 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v15 = swift_allocError(&type metadata for MLCreateError, v14, 0, 0);
  *v16 = v75;
  *(v16 + 16) = 0;
  *(v16 + 32) = 0;
  *(v16 + 48) = 1;
  if (swift_dynamicCastMetatype(a1, &type metadata for Int))
  {
    v17 = v15;
    if (v79)
    {
LABEL_3:
      v18 = v80;
      *&v78[0] = v80;
      outlined copy of Result<_DataTable, Error>(v80, 1);
      swift_errorRetain(v18);
      v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
      v20 = _getErrorEmbeddedNSError<A>(_:)(v78, v19, &protocol self-conformance witness table for Error);
      if (v20)
      {
        v15 = v20;
        outlined consume of Result<_DataTable, Error>(v18, 1);
      }

      else
      {
        v15 = swift_allocError(v19, &protocol self-conformance witness table for Error, 0, 0);
        *v31 = v18;
      }

      v81 = 1;
      v32 = v17;
LABEL_28:
      v32;
      outlined consume of Result<_DataTable, Error>(v18, 1);
      v43 = v81;
      goto LABEL_32;
    }

    v25 = v80;
    v26 = *(*(v80 + 16) + 16);
    outlined copy of Result<_DataTable, Error>(v80, 0);
    v27 = specialized handling<A, B, C, D>(_:_:_:_:)(v26, 0, 0);
    v30 = v27;
    *&v79 = v15;
    if (!v27)
    {
      BUG();
    }

    goto LABEL_30;
  }

  v73 = v14;
  v21 = v79;
  v72 = v6;
  *&v75 = v7;
  if (swift_dynamicCastMetatype(a1, &type metadata for Double))
  {
    v22 = v15;
    if (v21)
    {
      v18 = v80;
      *&v78[0] = v80;
      outlined copy of Result<_DataTable, Error>(v80, 1);
      swift_errorRetain(v18);
      v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
      v24 = _getErrorEmbeddedNSError<A>(_:)(v78, v23, &protocol self-conformance witness table for Error);
      if (v24)
      {
        v15 = v24;
        outlined consume of Result<_DataTable, Error>(v18, 1);
      }

      else
      {
        v15 = swift_allocError(v23, &protocol self-conformance witness table for Error, 0, 0);
        *v42 = v18;
      }

      v81 = 1;
      v32 = v22;
      goto LABEL_28;
    }

    v25 = v80;
    v33 = *(*(v80 + 16) + 16);
    outlined copy of Result<_DataTable, Error>(v80, 0);
    v34 = specialized handling<A, B, C, D>(_:_:_:_:)(v33, 1, 0);
    v30 = v34;
    *&v79 = v15;
    if (!v34)
    {
      BUG();
    }

LABEL_30:
    v43 = 0;
    v44 = type metadata accessor for CMLColumn();
    v45 = swift_allocObject(v44, 24, 7);
    *(v45 + 16) = v30;
    v46 = type metadata accessor for _UntypedColumn();
    v15 = swift_allocObject(v46, 24, 7);
    *(v15 + 16) = v45;
    v79;
    v47 = v25;
LABEL_31:
    outlined consume of Result<_DataTable, Error>(v47, 0);
    goto LABEL_32;
  }

  v28 = v21;
  if (swift_dynamicCastMetatype(a1, &type metadata for String))
  {
    v17 = v15;
    if (v28)
    {
      goto LABEL_3;
    }

    v25 = v80;
    v29 = *(*(v80 + 16) + 16);
    outlined copy of Result<_DataTable, Error>(v80, 0);
    v30 = specialized handling<A, B, C, D>(_:_:_:_:)(v29, 2, 0);
    *&v79 = v15;
    if (!v30)
    {
      BUG();
    }

    goto LABEL_30;
  }

  if (!swift_dynamicCastMetatype(a1, &type metadata for MLDataValue.SequenceType))
  {
    v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
    if (!swift_dynamicCastMetatype(a1, v35))
    {
      v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
      if (!swift_dynamicCastMetatype(a1, v36))
      {
        v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
        if (!swift_dynamicCastMetatype(a1, v37))
        {
          v68 = swift_dynamicCastMetatype(a1, &type metadata for MLDataValue.DictionaryType);
          v43 = 1;
          if (!v68)
          {
            goto LABEL_32;
          }

          v17 = v15;
          if (v28)
          {
            goto LABEL_3;
          }

          v25 = v80;
          v69 = *(*(v80 + 16) + 16);
          outlined copy of Result<_DataTable, Error>(v80, 0);
          v30 = specialized handling<A, B, C, D>(_:_:_:_:)(v69, 5, 0);
          *&v79 = v15;
          if (!v30)
          {
            BUG();
          }

          goto LABEL_30;
        }
      }
    }
  }

  v38 = v15;
  v74 = a1;
  if ((v21 & 1) == 0)
  {
    v49 = v80;
    v50 = *(*(v80 + 16) + 16);
    outlined copy of Result<_DataTable, Error>(v80, 0);
    v51 = specialized handling<A, B, C, D>(_:_:_:_:)(v50, 4, 0);
    if (!v51)
    {
      BUG();
    }

    v53 = v38;
    v54 = v51;
    v55 = type metadata accessor for CMLColumn();
    v56 = swift_allocObject(v55, 24, 7);
    *(v56 + 16) = v54;
    v57 = type metadata accessor for _UntypedColumn();
    v15 = swift_allocObject(v57, 24, 7);
    *(v15 + 16) = v56;
    v53;
    outlined consume of Result<_DataTable, Error>(v49, 0);
    goto LABEL_39;
  }

  v39 = v80;
  *&v78[0] = v80;
  outlined copy of Result<_DataTable, Error>(v80, 1);
  swift_errorRetain(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
  v41 = _getErrorEmbeddedNSError<A>(_:)(v78, v40, &protocol self-conformance witness table for Error);
  if (v41)
  {
    v15 = v41;
    outlined consume of Result<_DataTable, Error>(v39, 1);
  }

  else
  {
    v15 = swift_allocError(v40, &protocol self-conformance witness table for Error, 0, 0);
    *v52 = v39;
  }

  v81 = 1;
  v38;
  outlined consume of Result<_DataTable, Error>(v39, 1);
  v43 = 1;
  if (!v81)
  {
LABEL_39:
    swift_retain_n(v15, 2);
    v58 = CMLColumn.size.getter();
    outlined consume of Result<_DataTable, Error>(v15, 0);
    if (v58 > 0)
    {

      _UntypedColumn.valueAtIndex(index:)(0, 0.0);
      outlined consume of Result<_DataTable, Error>(v15, 0);
      v59 = v71;
      v60 = v77;
      (*(v76 + 16))(v78, v77);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v59, 1, v60);
      (*(v75 + 8))(v59, v72);
      if (EnumTagSinglePayload == 1)
      {
        *&v78[0] = 0;
        *(&v78[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(60);
        v62._object = "Unable to map to type " + 0x8000000000000000;
        v62._countAndFlagsBits = 0xD000000000000039;
        String.append(_:)(v62);
        v63 = _typeName(_:qualified:)(v74, 0);
        v65 = v64;
        v62._countAndFlagsBits = v63;
        v62._object = v64;
        String.append(_:)(v62);
        v65;
        v62._countAndFlagsBits = 46;
        v62._object = 0xE100000000000000;
        String.append(_:)(v62);
        v79 = v78[0];
        v66 = swift_allocError(&type metadata for MLCreateError, v73, 0, 0);
        *v67 = v79;
        *(v67 + 16) = 0;
        *(v67 + 32) = 0;
        *(v67 + 48) = 1;
        outlined consume of Result<_DataTable, Error>(v15, 0);
        outlined consume of Result<_DataTable, Error>(v15, 0);
        v43 = 1;
        v15 = v66;
        goto LABEL_32;
      }
    }

    v43 = 0;
    v47 = v15;
    goto LABEL_31;
  }

LABEL_32:
  *&v78[0] = v15;
  BYTE8(v78[0]) = v43 & 1;
  return MLDataColumn.init(from:)(v78);
}

void *Array<A>.init(_:)(uint64_t a1, double a2)
{
  v2 = *a1;
  v3 = _swiftEmptyArrayStorage;
  v13 = *(a1 + 8);
  if (!v13)
  {
    outlined copy of Result<_DataTable, Error>(v2, 0);
    v4 = CMLColumn.size.getter();
    outlined consume of Result<_DataTable, Error>(v2, 0);
    v11 = v4;
    if (v4 < 0)
    {
      BUG();
    }

    if (v4)
    {
      v3 = _swiftEmptyArrayStorage;
      v5 = 0;
      v12 = v2;
      do
      {
        outlined copy of Result<_DataTable, Error>(v2, 0);
        _UntypedColumn.valueAtIndex(index:)(v5, a2);
        outlined consume of Result<_DataTable, Error>(v2, 0);
        if (!swift_isUniquelyReferenced_nonNull_native(v3))
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
        }

        v6 = v3[2];
        if (v3[3] >> 1 <= v6)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v3[3] >= 2uLL, v6 + 1, 1, v3);
        }

        ++v5;
        v3[2] = v6 + 1;
        v7 = 3 * v6;
        a2 = *&v9;
        *&v3[v7 + 4] = v9;
        LOBYTE(v3[v7 + 6]) = v10;
        v2 = v12;
      }

      while (v11 != v5);
    }
  }

  outlined consume of Result<_DataTable, Error>(v2, v13);
  return v3;
}

uint64_t MLUntypedColumn.sequences.getter()
{
  v4 = HIBYTE(result);
  v2 = result;
  if (*(v1 + 8) || (v3 = *v1, outlined copy of Result<_DataTable, Error>(v3, 0), _UntypedColumn.type.getter(), result = outlined consume of Result<_DataTable, Error>(v3, 0), v4 != 3))
  {
    *v2 = 0;
    *(v2 + 8) = -1;
  }

  else
  {
    *v2 = v3;
    *(v2 + 8) = 0;
    return outlined copy of Result<_DataTable, Error>(v3, 0);
  }

  return result;
}

uint64_t MLUntypedColumn.doubles.getter()
{
  v4 = HIBYTE(result);
  v2 = result;
  if (*(v1 + 8) || (v3 = *v1, outlined copy of Result<_DataTable, Error>(v3, 0), _UntypedColumn.type.getter(), result = outlined consume of Result<_DataTable, Error>(v3, 0), v4 != 1))
  {
    *v2 = 0;
    *(v2 + 8) = -1;
  }

  else
  {
    *v2 = v3;
    *(v2 + 8) = 0;
    return outlined copy of Result<_DataTable, Error>(v3, 0);
  }

  return result;
}

uint64_t MLUntypedColumn.dictionaries.getter()
{
  v4 = HIBYTE(result);
  v2 = result;
  if (*(v1 + 8) || (v3 = *v1, outlined copy of Result<_DataTable, Error>(v3, 0), _UntypedColumn.type.getter(), result = outlined consume of Result<_DataTable, Error>(v3, 0), v4 != 4))
  {
    *v2 = 0;
    *(v2 + 8) = -1;
  }

  else
  {
    *v2 = v3;
    *(v2 + 8) = 0;
    return outlined copy of Result<_DataTable, Error>(v3, 0);
  }

  return result;
}

uint64_t MLUntypedColumn.multiArrays.getter()
{
  v4 = HIBYTE(result);
  v2 = result;
  if (*(v1 + 8) || (v3 = *v1, outlined copy of Result<_DataTable, Error>(v3, 0), _UntypedColumn.type.getter(), result = outlined consume of Result<_DataTable, Error>(v3, 0), v4 != 5))
  {
    *v2 = 0;
    *(v2 + 8) = -1;
  }

  else
  {
    *v2 = v3;
    *(v2 + 8) = 0;
    return outlined copy of Result<_DataTable, Error>(v3, 0);
  }

  return result;
}

uint64_t MLUntypedColumn.error.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0;
  }

  v1 = *v0;
  swift_errorRetain(*v0);
  return v1;
}

uint64_t MLUntypedColumn.init(repeating:count:)(uint64_t a1, uint64_t a2)
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

uint64_t *MLUntypedColumn.init<A>(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a2;
  v12 = v4;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  type metadata accessor for _UntypedColumn();
  (*(v6 + 16))(&v12, a1, a3);
  v10 = _UntypedColumn.__allocating_init<A>(repeating:count:)(&v12, v14, a3, v13);
  (*(v6 + 8))(a1, a3);
  result = v12;
  *v12 = v10;
  *(result + 8) = 0;
  return result;
}

uint64_t MLUntypedColumn.init()()
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

uint64_t MLUntypedColumn.append(contentsOf:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(v2 + 8))
  {
    swift_errorRetain(v3);
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
      outlined copy of Result<_DataTable, Error>(*a1, 0);
      outlined copy of Result<_DataTable, Error>(v3, 0);
      v6 = _UntypedColumn.appending(contentsOf:)(v5);
      outlined consume of Result<_DataTable, Error>(v5, 0);
      outlined consume of Result<_DataTable, Error>(v3, 0);
      v3 = v6;
      v4 = 0;
    }
  }

  result = outlined consume of Result<_DataTable, Error>(*v2, *(v2 + 2));
  *v2 = v3;
  *(v2 + 8) = v4;
  return result;
}

uint64_t MLUntypedColumn.subscript.getter(uint64_t *a1)
{
  v3 = v1;
  v4 = *v2;
  if (*(v2 + 8))
  {
    result = swift_errorRetain(*v2);
    v6 = 1;
  }

  else
  {
    v7 = *a1;
    if (*(a1 + 8))
    {
      result = swift_errorRetain(*a1);
      v6 = 1;
      v4 = v7;
    }

    else
    {
      v8 = *(*(v4 + 16) + 16);
      v9 = *(*(v7 + 16) + 16);
      outlined copy of Result<_DataTable, Error>(*a1, 0);
      outlined copy of Result<_DataTable, Error>(v4, 0);
      v15 = specialized handling<A, B, C>(_:_:_:)(v8, v9);
      if (!v15)
      {
        BUG();
      }

      v6 = 0;
      v10 = type metadata accessor for CMLColumn();
      v11 = swift_allocObject(v10, 24, 7);
      *(v11 + 16) = v15;
      v12 = type metadata accessor for _UntypedColumn();
      v13 = swift_allocObject(v12, 24, 7);
      *(v13 + 16) = v11;
      v14 = v13;
      outlined consume of Result<_DataTable, Error>(v7, 0);
      result = outlined consume of Result<_DataTable, Error>(v4, 0);
      v4 = v14;
    }
  }

  *v3 = v4;
  *(v3 + 8) = v6;
  return result;
}

uint64_t MLUntypedColumn.materialize()()
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

uint64_t MLUntypedColumn.subscript.getter(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v16 = v2;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLUntypedColumn)>);
  inited = swift_initStackObject(v6, v11);
  *(inited + 16) = 1;
  *(inited + 24) = 2;
  *(inited + 32) = 7106403;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  outlined copy of Result<_DataTable, Error>(v4, v5);
  v8 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for MLUntypedColumn, &protocol witness table for String);
  _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(v8);
  v14 = v12;
  v15 = v13;
  MLDataTable.subscript.getter(a1, v17);
  outlined consume of Result<_DataTable, Error>(v14, v15);
  v14 = v12;
  v15 = v13;
  v9._countAndFlagsBits = 7106403;
  v9._object = 0xE300000000000000;
  MLDataTable.subscript.getter(v9);
  return outlined consume of Result<_DataTable, Error>(v14, v15);
}

uint64_t static MLUntypedColumn.== infix(_:_:)(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v4 = *a1;
  if (*(a1 + 8))
  {
    *&v12 = *a1;
    outlined copy of Result<_DataTable, Error>(v4, 1);
    swift_errorRetain(v4);
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v6 = _getErrorEmbeddedNSError<A>(_:)(&v12, v5, &protocol self-conformance witness table for Error);
    if (v6)
    {
      v7 = v6;
      outlined consume of Result<_DataTable, Error>(v4, 1);
    }

    else
    {
      v7 = swift_allocError(v5, &protocol self-conformance witness table for Error, 0, 0);
      *v9 = v4;
    }

    result = outlined consume of Result<_DataTable, Error>(v4, 1);
    v10 = 1;
  }

  else
  {
    v8 = *(a2 + 16);
    type metadata accessor for _UntypedColumn();
    v12 = *a2;
    v13 = v8;

    v7 = static _UntypedColumn.performRightScalar(op:a:b:)(4, v4, &v12, *&v12);
    v10 = 0;
    result = outlined consume of Result<_DataTable, Error>(v4, 0);
  }

  *v3 = v7;
  *(v3 + 8) = v10;
  return result;
}

void *MLUntypedColumn.column<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = v3;
  v6 = *v4;
  v19 = *(v4 + 8);
  v16 = v6;
  if (v19)
  {
    v7 = 6;
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(v6, 0);
    _UntypedColumn.type.getter();
    outlined consume of Result<_DataTable, Error>(v6, 0);
    v7 = v17;
  }

  (*(a3 + 8))(a2, a3);
  if (v7 == v17)
  {
    v8 = v16;
    v13 = v16;
    v9 = v19;
    v14 = v19;
    MLDataColumn.init(from:)(&v13);
    v10 = v17;
    v11 = v18;
    outlined copy of Result<_DataTable, Error>(v8, v9);
  }

  else
  {
    v10 = 0;
    v11 = -1;
  }

  result = v15;
  *v15 = v10;
  *(result + 8) = v11;
  return result;
}

BOOL MLUntypedColumn.isEmpty.getter()
{
  result = 1;
  if (!*(v0 + 8))
  {
    v2 = *v0;
    outlined copy of Result<_DataTable, Error>(*v0, 0);
    v3 = CMLColumn.size.getter();
    outlined consume of Result<_DataTable, Error>(v2, 0);
    return v3 <= 0;
  }

  return result;
}

void *closure #1 in MLUntypedColumn.init<A>(_:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v17 = a4;
  v14 = a3;
  v18 = v4;
  v15 = v5;
  v16 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  type metadata accessor for _UntypedColumn();
  v10 = (*(v6 + 16))(&v13, v16, a2);
  v11 = v15;
  result = _UntypedColumn.__allocating_init<A>(_:)(&v13, a2, v14, v10);
  if (v11)
  {
    result = v17;
    *v17 = v11;
  }

  else
  {
    *v18 = result;
  }

  return result;
}

void *closure #1 in MLUntypedColumn.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v13 = a4;
  v14 = a3;
  v18 = v5;
  v17 = a5;
  v15 = v6;
  v16 = a1;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  type metadata accessor for _UntypedColumn();
  (*(v7 + 16))(&v13, v16, a2);
  v11 = v15;
  result = _UntypedColumn.__allocating_init<A>(_:)(&v13, a2, v14, v13);
  if (v11)
  {
    result = v17;
    *v17 = v11;
  }

  else
  {
    *v18 = result;
  }

  return result;
}

void *partial apply for closure #1 in MLUntypedColumn.init<A>(_:)(void *a1)
{
  return closure #1 in MLUntypedColumn.init<A>(_:)(v1[5], v1[2], v1[3], v1[4], a1);
}

{
  return closure #1 in MLUntypedColumn.init<A>(_:)(*(v1 + 32), *(v1 + 16), *(v1 + 24), a1);
}

uint64_t MLUntypedColumn.init(_:)(uint64_t a1, uint64_t a2)
{
  return MLUntypedColumn.init(_:)(a1, a2, _UntypedColumn.init(_:));
}

{
  return MLUntypedColumn.init(_:)(a1, a2, _UntypedColumn.init(_:));
}

uint64_t MLUntypedColumn.init(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3;
  v6 = type metadata accessor for _UntypedColumn();
  swift_allocObject(v6, 24, 7);
  result = a3(a1, a2);
  *v5 = result;
  *(v5 + 8) = 0;
  return result;
}

uint64_t MLUntypedColumn.subscript.getter(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  if (*(v2 + 8))
  {
    result = swift_errorRetain(*v2);
    v6 = 1;
  }

  else
  {
    v7 = *a1;
    if (*(a1 + 8))
    {
      result = outlined copy of Result<_DataTable, Error>(*a1, 1);
      v6 = 1;
      v4 = v7;
    }

    else
    {
      v8 = *(*(v4 + 16) + 16);
      v9 = *(*(v7 + 16) + 16);
      outlined copy of Result<_DataTable, Error>(*a1, 0);
      outlined copy of Result<_DataTable, Error>(v4, 0);
      v15 = specialized handling<A, B, C>(_:_:_:)(v8, v9);
      if (!v15)
      {
        BUG();
      }

      v6 = 0;
      v10 = type metadata accessor for CMLColumn();
      v11 = swift_allocObject(v10, 24, 7);
      *(v11 + 16) = v15;
      v12 = type metadata accessor for _UntypedColumn();
      v13 = swift_allocObject(v12, 24, 7);
      *(v13 + 16) = v11;
      v14 = v13;
      outlined consume of Result<_DataTable, Error>(v7, 0);
      result = outlined consume of Result<_DataTable, Error>(v4, 0);
      v4 = v14;
    }
  }

  *v3 = v4;
  *(v3 + 8) = v6;
  return result;
}

uint64_t MLUntypedColumn.map<A>(skipUndefined:_:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a3;
  v20[1] = v5;
  LODWORD(v25) = a1;
  v26 = *v6;
  v9 = *(v6 + 8);
  v10 = swift_allocObject(&unk_395838, 48, 7);
  v24 = a4;
  v10[2] = a4;
  v11 = a5;
  v12 = v21;
  v10[3] = v11;
  v10[4] = a2;
  v10[5] = v12;
  if (v9)
  {
    v25 = v11;
    v22 = v26;
    outlined copy of Result<_DataTable, Error>(v26, 1);

    outlined copy of Result<_DataTable, Error>(v26, 1);
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v14 = _getErrorEmbeddedNSError<A>(_:)(&v22, v13, &protocol self-conformance witness table for Error);
    if (v14)
    {
      v15 = v14;
      outlined consume of Result<_DataTable, Error>(v26, 1);
    }

    else
    {
      v15 = swift_allocError(v13, &protocol self-conformance witness table for Error, 0, 0);
      *v18 = v26;
    }

    outlined consume of Result<_DataTable, Error>(v26, 1);

    v17 = 1;
  }

  else
  {
    v16 = v26;
    v20[0] = v26;

    outlined copy of Result<_DataTable, Error>(v26, 0);
    closure #2 in MLUntypedColumn.map<A>(skipUndefined:_:)(v20, partial apply for closure #1 in MLUntypedColumn.map<A>(skipUndefined:_:), v10, v25, v24, v11);
    outlined consume of Result<_DataTable, Error>(v16, 0);

    v15 = v22;
    v17 = 0;
  }

  v22 = v15;
  v23 = v17;
  return MLDataColumn.init(from:)(&v22);
}

uint64_t closure #1 in MLUntypedColumn.map<A>(skipUndefined:_:)(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v22 = a5;
  v21 = a3;
  v20 = a2;
  v23 = type metadata accessor for Optional(0, a4);
  v24 = *(v23 - 8);
  v7 = *(v24 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v26 = *(a4 - 8);
  v10 = *(v26 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v25 = v18;

  MLDataValue.init(_:)(a1, a6);
  v13 = v18[0];
  v14 = v19;
  v27 = v18[1];
  v20(v18);
  if (__swift_getEnumTagSinglePayload(v18, 1, a4) == 1)
  {
    (*(v24 + 8))(v18, v23);
    type metadata accessor for CMLFeatureValue();
    v15 = CMLFeatureValue.__allocating_init()();
    outlined consume of MLDataValue(v13, v27, v14);
  }

  else
  {
    v16 = v25;
    (*(v26 + 32))(v25, v18, a4);
    v15 = MLDataValueConvertible.featureValue.getter(a4, v22);
    outlined consume of MLDataValue(v13, v27, v14);
    (*(v26 + 8))(v16, a4);
  }

  return v15;
}

uint64_t closure #2 in MLUntypedColumn.map<A>(skipUndefined:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v9 = v6;
  (*(a6 + 8))(a5);
  result = _UntypedColumn.map(_:skipUndefined:outputType:)(a2, a3, a4, v11);
  *v9 = result;
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed MLDataValue) -> (@out A)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = v4;
  a2(a1);
  return __swift_storeEnumTagSinglePayload(v6, 0, 1, a4);
}

uint64_t MLUntypedColumn.copy()(uint64_t (*a1)(uint64_t))
{
  v3 = v1;
  v4 = *v2;
  if (*(v2 + 8))
  {
    v18[0] = *v2;
    outlined copy of Result<_DataTable, Error>(v4, 1);
    swift_errorRetain(v4);
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
    v9 = a1(v8);
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

uint64_t *MLUntypedColumn.fillMissing(with:)(uint64_t a1, double a2)
{
  v22 = v2;
  v4 = *v3;
  if (*(v3 + 8))
  {
    v20[0] = *v3;
    outlined copy of Result<_DataTable, Error>(v4, 1);
    swift_errorRetain(v4);
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v6 = _getErrorEmbeddedNSError<A>(_:)(v20, v5, &protocol self-conformance witness table for Error);
    if (v6)
    {
      v7 = v6;
      outlined consume of Result<_DataTable, Error>(v4, 1);
    }

    else
    {
      v7 = swift_allocError(v5, &protocol self-conformance witness table for Error, 0, 0);
      *v12 = v4;
    }

    outlined consume of Result<_DataTable, Error>(v4, 1);
    v13 = 1;
  }

  else
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 8);
    v20[0] = *a1;
    v20[1] = v9;
    v21 = v8;
    outlined copy of Result<_DataTable, Error>(v4, 0);
    outlined copy of MLDataValue(v20[0], v9, v8);
    v10 = MLDataValue.featureValue.getter(v20[0], v9, a2);
    outlined consume of MLDataValue(v20[0], v9, v21);
    v11 = specialized handling<A, B, C>(_:_:_:)(*(v4[2] + 16), *(v10 + 16));
    v15 = v11;
    if (!v11)
    {
      BUG();
    }

    v13 = 0;
    v16 = type metadata accessor for CMLColumn();
    v17 = swift_allocObject(v16, 24, 7);
    *(v17 + 16) = v15;
    v18 = v17;
    v19 = type metadata accessor for _UntypedColumn();
    v7 = swift_allocObject(v19, 24, 7);
    *(v7 + 16) = v18;

    outlined consume of Result<_DataTable, Error>(v4, 0);
  }

  result = v22;
  *v22 = v7;
  *(result + 8) = v13;
  return result;
}

uint64_t MLUntypedColumn.prefix(_:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = v2;
  if (a1 <= 0)
  {
    v9 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v8 = swift_allocError(&type metadata for MLCreateError, v9, 0, 0);
    result = 0xD00000000000002BLL;
    *v11 = 0xD00000000000002BLL;
    *(v11 + 8) = "Column initialized as invalid" + 0x8000000000000000;
    *(v11 + 16) = 0;
    *(v11 + 32) = 0;
    *(v11 + 48) = 0;
LABEL_9:
    v15 = 1;
    goto LABEL_10;
  }

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
      *v14 = v5;
    }

    result = outlined consume of Result<_DataTable, Error>(v5, 1);
    goto LABEL_9;
  }

  v12 = *(*(v5 + 16) + 16);
  outlined copy of Result<_DataTable, Error>(v5, 0);
  v13 = a2(v12, a1);
  v16 = v13;
  if (!v13)
  {
    BUG();
  }

  v15 = 0;
  v17 = type metadata accessor for CMLColumn();
  v18 = swift_allocObject(v17, 24, 7);
  *(v18 + 16) = v16;
  v19 = v18;
  v20 = type metadata accessor for _UntypedColumn();
  v8 = swift_allocObject(v20, 24, 7);
  *(v8 + 16) = v19;
  result = outlined consume of Result<_DataTable, Error>(v5, 0);
LABEL_10:
  *v4 = v8;
  *(v4 + 8) = v15;
  return result;
}

uint64_t MLUntypedColumn.sort(byIncreasingOrder:)(char a1)
{
  v3 = v1;
  v4 = *v2;
  if (*(v2 + 8))
  {
    v18[0] = *v2;
    outlined copy of Result<_DataTable, Error>(v4, 1);
    swift_errorRetain(v4);
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

uint64_t MLUntypedColumn.init(doubles:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *a1;
  if (*(a1 + 8))
  {
    v17[0] = *a1;
    swift_errorRetain(v4);
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v6 = _getErrorEmbeddedNSError<A>(_:)(v17, v5, &protocol self-conformance witness table for Error);
    if (v6)
    {
      v7 = v6;
      outlined consume of Result<_DataTable, Error>(v4, 1);
    }

    else
    {
      v7 = swift_allocError(v5, &protocol self-conformance witness table for Error, 0, 0);
      *v9 = v4;
    }

    result = outlined consume of Result<_DataTable, Error>(v4, 1);
    v11 = 1;
  }

  else
  {
    v8 = specialized handling<A, B, C, D>(_:_:_:_:)(*(*(v4 + 16) + 16), a2, 0);
    v12 = v8;
    if (!v8)
    {
      BUG();
    }

    v11 = 0;
    v13 = type metadata accessor for CMLColumn();
    v14 = swift_allocObject(v13, 24, 7);
    *(v14 + 16) = v12;
    v15 = v14;
    v16 = type metadata accessor for _UntypedColumn();
    v7 = swift_allocObject(v16, 24, 7);
    *(v7 + 16) = v15;
    result = outlined consume of Result<_DataTable, Error>(v4, 0);
  }

  *v3 = v7;
  *(v3 + 8) = v11;
  return result;
}

uint64_t MLUntypedColumn.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v16 = a2;
  v15 = v3;
  if (*(v4 + 8) || (v5 = *v4, outlined copy of Result<_DataTable, Error>(*v4, 0), v6 = CMLColumn.size.getter(), outlined consume of Result<_DataTable, Error>(v5, 0), v6 < 0))
  {
    BUG();
  }

  v12[0] = 0;
  v12[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Range<Int>);
  v8 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  dispatch thunk of RangeExpression.relative<A>(to:)(v12, v7, v8, v16, v17);
  v9 = v13;
  v10 = v14;
  v13 = v5;
  LOBYTE(v14) = 0;
  outlined copy of Result<_DataTable, Error>(v5, 0);
  MLUntypedColumn.subscript.getter(v9, v10);
  return outlined consume of Result<_DataTable, Error>(v5, 0);
}

uint64_t MLUntypedColumn.show()()
{
  v2 = v0;
  v3 = 0;
  if (!*(v1 + 8))
  {
    v4 = *v1;
    v5 = *(*(*v1 + 16) + 16);
    outlined copy of Result<_DataTable, Error>(*v1, 0);
    outlined copy of Result<_DataTable, Error>(v4, 0);

    v6 = specialized handling<A, B, C, D, E, F>(_:_:_:_:_:_:)(v5, "", "", "", 0);
    if (!v6)
    {
      BUG();
    }

    v7 = type metadata accessor for CMLPlot();
    v3 = swift_allocObject(v7, 24, 7);
    *(v3 + 16) = v6;
    outlined consume of Result<_DataTable, Error>(v4, 0);

    outlined consume of Result<_DataTable, Error>(v4, 0);
  }

  v2[3] = &type metadata for ML1DVisualization;
  result = lazy protocol witness table accessor for type ML1DVisualization and conformance ML1DVisualization();
  v2[4] = result;
  *v2 = v3;
  return result;
}

uint64_t MLUntypedColumn.customMirror.getter()
{
  v19[1] = v0;
  v21 = type metadata accessor for Mirror.AncestorRepresentation(0);
  v22 = *(v21 - 8);
  v2 = *(v22 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v20 = &v18;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Mirror.DisplayStyle?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  v11 = swift_allocObject(v10, 128, 7);
  *(v11 + 16) = 2;
  *(v11 + 24) = 4;
  *(v11 + 32) = 0x746E756F63;
  *(v11 + 40) = 0xE500000000000000;
  if (v9)
  {
    v12 = -1;
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(v8, 0);
    v12 = CMLColumn.size.getter();
    outlined consume of Result<_DataTable, Error>(v8, 0);
  }

  *(v11 + 72) = &type metadata for Int;
  *(v11 + 48) = v12;
  *(v11 + 80) = 1701869940;
  *(v11 + 88) = 0xE400000000000000;
  *(v11 + 120) = &type metadata for MLDataValue.ValueType;
  if (v9)
  {
    *(v11 + 96) = 6;
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(v8, 0);
    _UntypedColumn.type.getter();
    *(v11 + 96) = v23;
    outlined consume of Result<_DataTable, Error>(v8, 0);
  }

  v19[0] = &type metadata for MLUntypedColumn;
  v13 = enum case for Mirror.DisplayStyle.dictionary(_:);
  v14 = type metadata accessor for Mirror.DisplayStyle(0);
  (*(*(v14 - 8) + 104))(&v18, v13, v14);
  __swift_storeEnumTagSinglePayload(&v18, 0, 1, v14);
  v15 = v20;
  (*(v22 + 104))(v20, enum case for Mirror.AncestorRepresentation.suppressed(_:), v21);
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLUntypedColumn.Type);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)(v19, v11, &v18, v15, v16);
}

uint64_t MLUntypedColumn.description.getter()
{
  return MLUntypedColumn.description.getter();
}

{
  v1 = *v0;
  if (*(v0 + 8))
  {
    v5[0] = 0;
    v5[1] = 0xE000000000000000;
    v6[0] = v1;
    v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    _print_unlocked<A, B>(_:_:)(v6, v5, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    return v5[0];
  }

  else
  {

    v3 = _UntypedColumn.description.getter();
    outlined consume of Result<_DataTable, Error>(v1, 0);
  }

  return v3;
}

uint64_t MLUntypedColumn.playgroundDescription.getter()
{
  v2 = v0;
  v3 = *v1;
  if (*(v1 + 8))
  {
    v10 = 0;
    v11 = 0xE000000000000000;
    v12[0] = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    _print_unlocked<A, B>(_:_:)(v12, &v10, v4, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v5 = v10;
    v6 = v11;
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(*v1, 0);
    v5 = _UntypedColumn.description.getter();
    v6 = v7;
    outlined consume of Result<_DataTable, Error>(v3, 0);
  }

  objc_allocWithZone(NSAttributedString);
  v8 = @nonobjc NSAttributedString.init(string:attributes:)(v5, v6, 0);
  result = type metadata accessor for NSAttributedString();
  v2[3] = result;
  *v2 = v8;
  return result;
}

uint64_t specialized MLTrainingSession.resume(job:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a5;
  v17 = a2;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TaskPriority?) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = type metadata accessor for TaskPriority(0);
  __swift_storeEnumTagSinglePayload(&v15, 1, 1, v11);
  v12 = swift_allocObject(a4, 64, 7);
  *(v12 + 16) = 0;
  *(v12 + 32) = v5;
  *(v12 + 40) = a1;
  *(v12 + 48) = v17;
  *(v12 + 56) = a3;

  v13 = _sScTss5Error_pRs_rlE8detached8priority9operationScTyxsAA_pGScPSg_xyYaKYAcntFZyt_Tt1g5(&v15, v16, v12);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v15, &demangling cache variable for type metadata for TaskPriority?);
  return v13;
}

uint64_t specialized closure #1 in MLTrainingSession.resume(job:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5, a2);
}

{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5, a2);
}

{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5, a2);
}

{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5, a2);
}

{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5, a2);
}

{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5, a2);
}

{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5, a2);
}

{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5, a2);
}

{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5, a2);
}

{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5, a2);
}

{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5, a2);
}

{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5, a2);
}

{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5, a2);
}

{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5, a2);
}

{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5, a2);
}

{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5, a2);
}

{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5, a2);
}

uint64_t specialized closure #1 in MLTrainingSession.resume(job:completion:)()
{
  v2 = *(*v1 + 32);
  *(*v1 + 40) = v0;
  v2;
  if (v0)
  {
    v3 = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  }

  else
  {
    v3 = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 32);
  *(*v1 + 40) = v0;
  v2;
  if (v0)
  {
    v3 = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  }

  else
  {
    v3 = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  (*(v0 + 16))(0, 0);
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  swift_errorRetain(v1);
  v2(v1, 1);
  v1;
  v1;
  return (*(v0 + 8))();
}

{
  v2 = *(*v1 + 32);
  *(*v1 + 40) = v0;
  v2;
  if (v0)
  {
    v3 = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  }

  else
  {
    v3 = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  return specialized closure #1 in MLTrainingSession.resume(job:completion:)();
}

{
  return specialized closure #1 in MLTrainingSession.resume(job:completion:)();
}

{
  return specialized closure #1 in MLTrainingSession.resume(job:completion:)();
}

uint64_t specialized MLTrainingSession.resumeAsync(job:)(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

uint64_t specialized MLTrainingSession.resumeAsync(job:)()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v15 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v17 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v15);
    v18 = v4;
    v9 = *(v3 + *(v4 + 44));
    v16 = *(v17 + 24);

    v16(v9, v15, v17);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v18 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v18 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  v3;
  if (!v0)
  {
    return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
  }

  v5 = *(v2 + 56);
  *(v2 + 72);
  v5;
  return (*(v4 + 8))();
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v15 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v17 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v15);
    v18 = v4;
    v9 = *(v3 + *(v4 + 44));
    v16 = *(v17 + 24);

    v16(v9, v15, v17);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v18 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v18 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v15 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v17 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v15);
    v18 = v4;
    v9 = *(v3 + *(v4 + 44));
    v16 = *(v17 + 24);

    v16(v9, v15, v17);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v18 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v18 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v15 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v17 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v15);
    v18 = v4;
    v9 = *(v3 + *(v4 + 44));
    v16 = *(v17 + 24);

    v16(v9, v15, v17);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v18 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v18 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  v3;
  if (!v0)
  {
    return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
  }

  v5 = *(v2 + 56);
  *(v2 + 72);
  v5;
  return (*(v4 + 8))();
}

{
  if ([*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
  {
    v1 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v1, 0, 0);
    *v2 = 0;
    *(v2 + 16) = 0;
    *(v2 + 32) = 0;
    *(v2 + 48) = 4;
    swift_willThrow();
    v3 = *(v0 + 56);
    *(v0 + 72);
    v3;
  }

  else
  {
    v4 = *(v0 + 56);
    *(v0 + 72);
    v4;
  }

  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v15 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v17 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v15);
    v18 = v4;
    v9 = *(v3 + *(v4 + 44));
    v16 = *(v17 + 24);

    v16(v9, v15, v17);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v18 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v18 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v15 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v17 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v15);
    v18 = v4;
    v9 = *(v3 + *(v4 + 44));
    v16 = *(v17 + 24);

    v16(v9, v15, v17);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v18 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v18 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v15 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v17 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v15);
    v18 = v4;
    v9 = *(v3 + *(v4 + 44));
    v16 = *(v17 + 24);

    v16(v9, v15, v17);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v18 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v18 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v15 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v17 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v15);
    v18 = v4;
    v9 = *(v3 + *(v4 + 44));
    v16 = *(v17 + 24);

    v16(v9, v15, v17);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v18 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v18 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v15 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v17 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v15);
    v18 = v4;
    v9 = *(v3 + *(v4 + 44));
    v16 = *(v17 + 24);

    v16(v9, v15, v17);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v18 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v18 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v15 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v17 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v15);
    v18 = v4;
    v9 = *(v3 + *(v4 + 44));
    v16 = *(v17 + 24);

    v16(v9, v15, v17);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v18 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v18 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v15 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v17 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v15);
    v18 = v4;
    v9 = *(v3 + *(v4 + 44));
    v16 = *(v17 + 24);

    v16(v9, v15, v17);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v18 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v18 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v15 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v17 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v15);
    v18 = v4;
    v9 = *(v3 + *(v4 + 44));
    v16 = *(v17 + 24);

    v16(v9, v15, v17);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v18 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v18 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier.DataSource>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v15 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v17 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v15);
    v18 = v4;
    v9 = *(v3 + *(v4 + 44));
    v16 = *(v17 + 24);

    v16(v9, v15, v17);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v18 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v18 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v15 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v17 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v15);
    v18 = v4;
    v9 = *(v3 + *(v4 + 44));
    v16 = *(v17 + 24);

    v16(v9, v15, v17);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v18 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v18 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v15 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v17 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v15);
    v18 = v4;
    v9 = *(v3 + *(v4 + 44));
    v16 = *(v17 + 24);

    v16(v9, v15, v17);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v18 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v18 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v15 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v17 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v15);
    v18 = v4;
    v9 = *(v3 + *(v4 + 44));
    v16 = *(v17 + 24);

    v16(v9, v15, v17);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v18 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v18 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v15 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v17 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v15);
    v18 = v4;
    v9 = *(v3 + *(v4 + 44));
    v16 = *(v17 + 24);

    v16(v9, v15, v17);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v18 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v18 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  return specialized MLTrainingSession.resumeAsync(job:)();
}

uint64_t _sScTss5Error_pRs_rlE8detached8priority9operationScTyxsAA_pGScPSg_xyYaKYAcntFZyt_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TaskPriority?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1, &v19, &demangling cache variable for type metadata for TaskPriority?);
  v7 = type metadata accessor for TaskPriority(0);
  if (__swift_getEnumTagSinglePayload(&v19, 1, v7) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v19, &demangling cache variable for type metadata for TaskPriority?);
    v9 = 4096;
  }

  else
  {
    v10 = TaskPriority.rawValue.getter();
    (*(*(v7 - 8) + 8))(&v19, v7);
    v9 = v10 | 0x1000;
  }

  v11 = *(a3 + 16);
  if (v11)
  {
    v12 = *(a3 + 24);
    ObjectType = swift_getObjectType(*(a3 + 16));
    swift_unknownObjectRetain(v11);
    v14 = dispatch thunk of Actor.unownedExecutor.getter(ObjectType, v12);
    v16 = v15;
    swift_unknownObjectRelease(v11);
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  if (v14 | v16)
  {
    v17 = &v19;
    v19 = 0;
    v20 = v14;
    v21 = v16;
  }

  else
  {
    v17 = 0;
  }

  return swift_task_create(v9, v17, &type metadata for () + 8, v22, a3, v8, v19, *(&v19 + 1), v20, v21);
}

uint64_t specialized MLTrainingSession.execute(job:)(uint64_t a1)
{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

uint64_t specialized MLTrainingSession.execute(job:)()
{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  v2 = *(*v1 + 112);
  *(v0 + 56) = v2;
  *(v0 + 64) = direct field offset for MLTrainingSession.delegate;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 56) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 56)))
        {
          case 0:
            v10 = *(v0 + 64);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>.Metadata);
            v11 = *(v9 + v10 + 24);
            v16 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v16 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v15 = swift_task_alloc(272);
            *(v0 + 72) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v14 = swift_task_alloc(272);
            *(v0 + 88) = v14;
            *v14 = v0;
            v14[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        105;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v16 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v16 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v16 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  v2 = *(*v1 + 112);
  *(v0 + 56) = v2;
  *(v0 + 64) = direct field offset for MLTrainingSession.delegate;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 56) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 56)))
        {
          case 0:
            v10 = *(v0 + 64);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>.Metadata);
            v11 = *(v9 + v10 + 24);
            v16 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v16 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v15 = swift_task_alloc(272);
            *(v0 + 72) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v14 = swift_task_alloc(272);
            *(v0 + 88) = v14;
            *v14 = v0;
            v14[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        105;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v16 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v16 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v16 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  v2 = *(*v1 + 112);
  *(v0 + 56) = v2;
  *(v0 + 64) = direct field offset for MLTrainingSession.delegate;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 56) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 56)))
        {
          case 0:
            v10 = *(v0 + 64);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>.Metadata);
            v11 = *(v9 + v10 + 24);
            v16 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v16 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v15 = swift_task_alloc(272);
            *(v0 + 72) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v14 = swift_task_alloc(272);
            *(v0 + 88) = v14;
            *v14 = v0;
            v14[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        105;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v16 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v16 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v16 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  v2 = *(*v1 + 112);
  *(v0 + 56) = v2;
  *(v0 + 64) = direct field offset for MLTrainingSession.delegate;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 56) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 56)))
        {
          case 0:
            v10 = *(v0 + 64);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>.Metadata);
            v11 = *(v9 + v10 + 24);
            v16 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v16 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v15 = swift_task_alloc(272);
            *(v0 + 72) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v14 = swift_task_alloc(272);
            *(v0 + 88) = v14;
            *v14 = v0;
            v14[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        105;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v16 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v16 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v16 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
  return (*(v0 + 8))();
}

{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  v2 = *(*v1 + 112);
  *(v0 + 56) = v2;
  *(v0 + 64) = direct field offset for MLTrainingSession.delegate;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 56) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 56)))
        {
          case 0:
            v10 = *(v0 + 64);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>.Metadata);
            v11 = *(v9 + v10 + 24);
            v16 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v16 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v15 = swift_task_alloc(272);
            *(v0 + 72) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v14 = swift_task_alloc(272);
            *(v0 + 88) = v14;
            *v14 = v0;
            v14[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        105;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v16 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v16 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v16 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  v2 = *(*v1 + 112);
  *(v0 + 56) = v2;
  *(v0 + 64) = direct field offset for MLTrainingSession.delegate;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 56) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 56)))
        {
          case 0:
            v10 = *(v0 + 64);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>.Metadata);
            v11 = *(v9 + v10 + 24);
            v16 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v16 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v15 = swift_task_alloc(272);
            *(v0 + 72) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v14 = swift_task_alloc(272);
            *(v0 + 88) = v14;
            *v14 = v0;
            v14[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        105;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v16 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v16 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v16 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  *(v0 + 56) = direct field offset for MLTrainingSession.delegate;
  v2 = *(*v1 + 112);
  *(v0 + 64) = v2;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 64) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 64)))
        {
          case 0:
            v10 = *(v0 + 56);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>.Metadata);
            v11 = *(v9 + v10 + 24);
            v16 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v16 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v15 = swift_task_alloc(272);
            *(v0 + 72) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v14 = swift_task_alloc(272);
            *(v0 + 88) = v14;
            *v14 = v0;
            v14[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        105;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v16 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v16 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v16 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  *(v0 + 56) = direct field offset for MLTrainingSession.delegate;
  v2 = *(*v1 + 112);
  *(v0 + 64) = v2;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 64) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 64)))
        {
          case 0:
            v10 = *(v0 + 56);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>.Metadata);
            v11 = *(v9 + v10 + 24);
            v16 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v16 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v15 = swift_task_alloc(272);
            *(v0 + 72) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v14 = swift_task_alloc(272);
            *(v0 + 88) = v14;
            *v14 = v0;
            v14[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        105;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v16 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v16 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v16 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  *(v0 + 56) = direct field offset for MLTrainingSession.delegate;
  v2 = *(*v1 + 112);
  *(v0 + 64) = v2;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 64) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 64)))
        {
          case 0:
            v10 = *(v0 + 56);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>.Metadata);
            v11 = *(v9 + v10 + 24);
            v16 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v16 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v15 = swift_task_alloc(272);
            *(v0 + 72) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v14 = swift_task_alloc(272);
            *(v0 + 88) = v14;
            *v14 = v0;
            v14[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        105;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v16 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v16 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v16 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  *(v0 + 56) = direct field offset for MLTrainingSession.delegate;
  v2 = *(*v1 + 112);
  *(v0 + 64) = v2;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 64) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 64)))
        {
          case 0:
            v10 = *(v0 + 56);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>.Metadata);
            v11 = *(v9 + v10 + 24);
            v16 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v16 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v15 = swift_task_alloc(272);
            *(v0 + 72) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v14 = swift_task_alloc(272);
            *(v0 + 88) = v14;
            *v14 = v0;
            v14[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        105;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v16 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v16 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v16 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  *(v0 + 56) = direct field offset for MLTrainingSession.delegate;
  v2 = *(*v1 + 112);
  *(v0 + 64) = v2;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 64) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 64)))
        {
          case 0:
            v10 = *(v0 + 56);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>.Metadata);
            v11 = *(v9 + v10 + 24);
            v16 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v16 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v15 = swift_task_alloc(272);
            *(v0 + 72) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v14 = swift_task_alloc(272);
            *(v0 + 88) = v14;
            *v14 = v0;
            v14[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        105;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v16 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v16 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v16 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  *(v0 + 56) = direct field offset for MLTrainingSession.delegate;
  v2 = *(*v1 + 112);
  *(v0 + 64) = v2;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 64) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 64)))
        {
          case 0:
            v10 = *(v0 + 56);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>.Metadata);
            v11 = *(v9 + v10 + 24);
            v16 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v16 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v15 = swift_task_alloc(272);
            *(v0 + 72) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v14 = swift_task_alloc(272);
            *(v0 + 88) = v14;
            *v14 = v0;
            v14[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        105;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v16 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v16 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v16 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  *(v0 + 56) = direct field offset for MLTrainingSession.delegate;
  v2 = *(*v1 + 112);
  *(v0 + 64) = v2;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 64) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier.DataSource>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 64)))
        {
          case 0:
            v10 = *(v0 + 56);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier.DataSource>.Metadata);
            v11 = *(v9 + v10 + 24);
            v16 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v16 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v15 = swift_task_alloc(272);
            *(v0 + 72) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v14 = swift_task_alloc(272);
            *(v0 + 88) = v14;
            *v14 = v0;
            v14[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        105;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier.DataSource>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v16 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier.DataSource>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier.DataSource>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v16 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier.DataSource>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier.DataSource>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v16 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier.DataSource>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  *(v0 + 56) = direct field offset for MLTrainingSession.delegate;
  v2 = *(*v1 + 112);
  *(v0 + 64) = v2;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 64) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 64)))
        {
          case 0:
            v10 = *(v0 + 56);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>.Metadata);
            v11 = *(v9 + v10 + 24);
            v16 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v16 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v15 = swift_task_alloc(272);
            *(v0 + 72) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v14 = swift_task_alloc(272);
            *(v0 + 88) = v14;
            *v14 = v0;
            v14[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        105;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v16 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v16 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v16 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  *(v0 + 56) = direct field offset for MLTrainingSession.delegate;
  v2 = *(*v1 + 112);
  *(v0 + 64) = v2;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 64) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 64)))
        {
          case 0:
            v10 = *(v0 + 56);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>.Metadata);
            v11 = *(v9 + v10 + 24);
            v16 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v16 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v15 = swift_task_alloc(272);
            *(v0 + 72) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v14 = swift_task_alloc(272);
            *(v0 + 88) = v14;
            *v14 = v0;
            v14[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        105;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v16 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v16 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v16 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  *(v0 + 56) = direct field offset for MLTrainingSession.delegate;
  v2 = *(*v1 + 112);
  *(v0 + 64) = v2;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 64) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 64)))
        {
          case 0:
            v10 = *(v0 + 56);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>.Metadata);
            v11 = *(v9 + v10 + 24);
            v16 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v16 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v15 = swift_task_alloc(272);
            *(v0 + 72) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v14 = swift_task_alloc(272);
            *(v0 + 88) = v14;
            *v14 = v0;
            v14[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        105;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v16 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v16 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v16 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  *(v0 + 56) = direct field offset for MLTrainingSession.delegate;
  v2 = *(*v1 + 112);
  *(v0 + 64) = v2;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 64) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 64)))
        {
          case 0:
            v10 = *(v0 + 56);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>.Metadata);
            v11 = *(v9 + v10 + 24);
            v16 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v16 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v15 = swift_task_alloc(272);
            *(v0 + 72) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v14 = swift_task_alloc(272);
            *(v0 + 88) = v14;
            *v14 = v0;
            v14[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        105;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v16 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v16 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        105;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v15 = *(v0 + 8);
        return v15();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v16 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>.Metadata);
        v9 = v16[3];
        v10 = v16[4];
        __swift_project_boxed_opaque_existential_0Tm(v16, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v15 = *(v0 + 8);
        return v15();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v13 = swift_task_alloc(272);
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v14 = swift_task_alloc(128);
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  return specialized MLTrainingSession.execute(job:)();
}

{
  return specialized MLTrainingSession.execute(job:)();
}

{
  return specialized MLTrainingSession.execute(job:)();
}