BOOL specialized Dataset.isEmpty.getter()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataSample<Tensor, Tensor>?) - 8) + 64);
  v1 = alloca(v0);
  v2 = alloca(v0);
  v20 = v19;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[(label: Int, keypoints: MLMultiArray)]>>, DataSample<Tensor, Tensor>>>, DataSample<Tensor, Tensor>>.Iterator);
  v4 = *(*(v3 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[(label: Int, keypoints: MLMultiArray)], DataSample<Tensor, Tensor>>);
  Dataset.makeIterator()(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[(label: Int, keypoints: MLMultiArray)]>>, DataSample<Tensor, Tensor>>>.Iterator);
  v9 = lazy protocol witness table accessor for type Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[(label: Int, keypoints: MLMultiArray)]>>, DataSample<Tensor, Tensor>>>.Iterator and conformance Batches<A>.Iterator();
  dispatch thunk of IteratorProtocol.next()(v8, v9);
  v10 = v19[0];
  if (v19[0])
  {
    v11 = *(v19 + *(v3 + 44));
    v19[1] = v19[0];
    v12 = v20;
    v11();
    v10;
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataSample<Tensor, Tensor>);
    v14 = v12;
    v15 = 0;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataSample<Tensor, Tensor>);
    v12 = v20;
    v14 = v20;
    v15 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v15, 1, v13);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[(label: Int, keypoints: MLMultiArray)]>>, DataSample<Tensor, Tensor>>>, DataSample<Tensor, Tensor>>.Iterator);
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataSample<Tensor, Tensor>);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v16);
  if (EnumTagSinglePayload != 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v12, &demangling cache variable for type metadata for DataSample<Tensor, Tensor>?);
  }

  return EnumTagSinglePayload == 1;
}

Swift::Void __swiftcall MLHandActionClassifier.GraphCNN.initDevice()()
{
  v40 = v0;
  v1 = type metadata accessor for Logger(0);
  v47 = *(v1 - 8);
  v2 = *(v47 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v45 = v39;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = type metadata accessor for ComputeDevice(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v49 = v39;
  v13 = alloca(v10);
  v14 = alloca(v10);
  static ComputeDevice.gpu.getter();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 1, v8);
  v42 = v9;
  if (EnumTagSinglePayload == 1)
  {
    static ComputeDevice.cpu.getter();
    if (__swift_getEnumTagSinglePayload(v39, 1, v8) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v39, &demangling cache variable for type metadata for ComputeDevice?);
    }
  }

  else
  {
    (*(v9 + 32))(v39, v39, v8);
  }

  v16 = v49;
  if (one-time initialization token for logger != -1)
  {
    swift_once(&one-time initialization token for logger, one-time initialization function for logger);
  }

  v17 = __swift_project_value_buffer(v1, static MLHandActionClassifier.logger);
  v18 = v45;
  v46 = v1;
  (*(v47 + 16))(v45, v17, v1);
  v19 = v16;
  v41 = v39;
  v48 = v8;
  v20 = v42;
  (*(v42 + 16))(v19, v39, v8);
  v21 = Logger.logObject.getter(v19, v39);
  v22 = static os_log_type_t.info.getter(v19);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc(12, -1);
    v43 = swift_slowAlloc(32, -1);
    v39[0] = v43;
    *v23 = 136315138;
    v24 = lazy protocol witness table accessor for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel(&lazy protocol witness table cache variable for type ComputeDevice and conformance ComputeDevice, &type metadata accessor for ComputeDevice, &protocol conformance descriptor for ComputeDevice);
    log = v21;
    v25 = v49;
    v26 = dispatch thunk of CustomStringConvertible.description.getter(v48, v24);
    v28 = v27;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v39);
    v28;
    v29 = v25;
    v30 = v48;
    v49 = *(v20 + 8);
    (v49)(v29, v48);
    v31 = log;
    _os_log_impl(&dword_0, log, v22, "Using %s to create model", v23, 0xCu);
    v32 = v43;
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    v32, -1, -1;
    v23, -1, -1;

    (*(v47 + 8))(v45, v46);
    v33 = v30;
  }

  else
  {
    v34 = *(v20 + 8);
    v35 = v49;
    v33 = v48;
    v49 = v34;
    (v34)(v35, v48);

    (*(v47 + 8))(v18, v46);
  }

  swift_beginAccess(OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model + v40, v39, 33, 0);
  v36 = type metadata accessor for MLHandActionClassifier.GraphCNNModel(0);
  v37 = lazy protocol witness table accessor for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel(&lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel);
  v38 = v41;
  Layer.place(on:)(v41, v36, v37);
  swift_endAccess(v39);
  (v49)(v38, v33);
}

uint64_t closure #1 in MLHandActionClassifier.GraphCNN.iterateTraining(trainingData:validationData:epochCount:)(uint64_t a1, uint64_t a2, uint64_t a3, Swift::Int a4, uint64_t a5, void *a6, double a7)
{
  v28 = a6;
  v31 = v7;
  v30 = a5;
  epoch = a4;
  v26 = a3;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[(label: Int, keypoints: MLMultiArray)], DataSample<Tensor, Tensor>>?) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v22 = v20;
  v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[(label: Int, keypoints: MLMultiArray)], DataSample<Tensor, Tensor>>);
  v11 = *(v29 - 8);
  v12 = *(v11 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v27 = a1;
  v15 = v31;
  result = MLHandActionClassifier.GraphCNN.train(_:)(a2);
  if (v15)
  {
    *v28 = v15;
  }

  else
  {
    v24 = v20;
    v31 = v11;
    v21 = &type metadata for Double;
    v20[0] = a7;
    v17 = result;
    specialized Dictionary.subscript.setter(v20, 0x676E696E69617274, 0xED000073736F6C5FLL);
    v25 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
    v21 = v25;
    *&v20[0] = v17;

    specialized Dictionary.subscript.setter(v20, 0xD000000000000012, ("oseClassifier.swift" + 0x8000000000000000));
    MLHandActionClassifier.GraphCNN.adjustLearningRate(epoch:)(epoch);
    v18 = v22;
    outlined init with copy of Dataset<[(label: Int, keypoints: MLMultiArray)], DataSample<Tensor, Tensor>>?(v30, v22);
    if (__swift_getEnumTagSinglePayload(v18, 1, v29) == 1)
    {

      return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for Dataset<[(label: Int, keypoints: MLMultiArray)], DataSample<Tensor, Tensor>>?);
    }

    else
    {
      v30 = v17;
      v19 = v24;
      (*(v31 + 32))(v24, v18, v29);
      v28 = MLHandActionClassifier.GraphCNN.evaluate(_:)(v19);
      v21 = &type metadata for Double;
      v20[0] = a7;
      specialized Dictionary.subscript.setter(v20, 0x69746164696C6176, 0xEF73736F6C5F6E6FLL);
      v21 = v25;
      *&v20[0] = v28;
      specialized Dictionary.subscript.setter(v20, 0xD000000000000014, ("ve training confusion matrix" + 0x8000000000000000));

      return (*(v31 + 8))(v19, v29);
    }
  }

  return result;
}

uint64_t MLHandActionClassifier.GraphCNN.train(_:)(uint64_t a1)
{
  v82 = v1;
  v86 = a1;
  v77 = type metadata accessor for MLHandActionClassifier.GraphCNNModel(0);
  v3 = *(*(v77 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v64 = &v60;
  v67 = type metadata accessor for Tensor(0);
  v68 = *(v67 - 8);
  v6 = *(v68 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v65 = &v60;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v75 = &v60;
  v11 = alloca(v6);
  v12 = alloca(v6);
  v81 = &v60;
  v78 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataSample<Tensor, Tensor>);
  v73 = *(v78 - 8);
  v13 = *(v73 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v76 = &v60;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataSample<Tensor, Tensor>?) - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v79 = &v60;
  v83 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[(label: Int, keypoints: MLMultiArray)]>>, DataSample<Tensor, Tensor>>>, DataSample<Tensor, Tensor>>.Iterator);
  v19 = *(*(v83 - 1) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v85 = &v60;
  v22 = type metadata accessor for LearningPhase(0);
  v23 = *(v22 - 8);
  v24 = v22;
  v87 = v22;
  v25 = *(v23 + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  (*(v23 + 104))(&v60, enum case for LearningPhase.training(_:), v24);
  v84 = v2;
  v28 = v2 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  swift_beginAccess(v2 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model, v62, 33, 0);
  v66 = lazy protocol witness table accessor for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel(&lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel);
  v74 = v28;
  Layer.prepare(for:)(&v60, v77, v66);
  swift_endAccess(v62);
  (*(v23 + 8))(&v60, v87);
  if (specialized Dataset.isEmpty.getter())
  {
    v29 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v29, 0, 0);
    *v30 = 0xD000000000000036;
    *(v30 + 8) = "must contain a '" + 0x8000000000000000;
    *(v30 + 16) = 0;
    *(v30 + 32) = 0;
    *(v30 + 48) = 1;
    return swift_willThrow();
  }

  else
  {
    v32 = v84;
    v33 = *(*(v84 + 16) + 16);
    v34 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
    swift_allocObject(v34, *(v34 + 48), *(v34 + 52));
    v35 = v82;
    result = _MetricUtilities.ConfusionMatrixMeter.init(classCount:)(v33);
    if (!v35)
    {
      v80 = result;
      v72 = 0;
      v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[(label: Int, keypoints: MLMultiArray)], DataSample<Tensor, Tensor>>);
      v37 = v85;
      Dataset.makeIterator()(v36);
      v38 = *(v83 + 11);
      v70 = *(v37 + v38);
      v71 = *(v37 + v38 + 8);
      v84 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_optimizer + v32;
      LODWORD(v87) = 0;
      v86 = 0;
      v69 = lazy protocol witness table accessor for type Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[(label: Int, keypoints: MLMultiArray)]>>, DataSample<Tensor, Tensor>>>.Iterator and conformance Batches<A>.Iterator();
      v39 = v78;
      while (1)
      {
        v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[(label: Int, keypoints: MLMultiArray)]>>, DataSample<Tensor, Tensor>>>.Iterator);
        dispatch thunk of IteratorProtocol.next()(v40, v69);
        v41 = v62[0];
        if (v62[0])
        {
          v61[0] = v62[0];
          v42 = v79;
          v70(v61);
          v43 = v42;
          v41;
          v44 = v42;
          v45 = 0;
        }

        else
        {
          v43 = v79;
          v44 = v79;
          v45 = 1;
        }

        __swift_storeEnumTagSinglePayload(v44, v45, 1, v39);
        v46 = v81;
        if (__swift_getEnumTagSinglePayload(v43, 1, v39) == 1)
        {
          break;
        }

        (*(v73 + 32))(v76, v43, v39);
        context = _objc_autoreleasePoolPush();
        DataSample.features.getter(v39);
        v47 = v46;
        v48 = v75;
        DataSample.labels.getter(v39);
        v49 = v48;
        v50 = v64;
        outlined init with copy of MLHandActionClassifier.GraphCNNModel(v74, v64);
        v83 = &v60;
        v51 = alloca(40);
        v52 = alloca(48);
        v61[1] = v47;
        v61[2] = v49;
        v62[0] = v80;
        v53 = v65;
        v82 = valueWithGradient<A>(at:of:)(v65, v50, partial apply for closure #1 in closure #1 in MLHandActionClassifier.GraphCNN.train(_:), &v60, v77, v66);
        outlined destroy of MLActivityClassifier.ModelParameters(v50, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
        swift_beginAccess(v84, v62, 33, 0);
        v54 = v74;
        swift_beginAccess(v74, v61, 33, 0);
        v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for SGD<MLHandActionClassifier.GraphCNNModel>);
        v56 = v54;
        LOBYTE(v54) = v82;
        SGD.update(_:with:)(v56, v82, v55);
        swift_endAccess(v61);
        swift_endAccess(v62);
        v54;
        Tensor.scalar<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
        if (__OFADD__(1, v86))
        {
          BUG();
        }

        ++v86;
        *&v87 = *&v87 + *v62;
        v57 = *(v68 + 8);
        v58 = v53;
        v59 = v67;
        v57(v58, v67);
        v57(v75, v59);
        v57(v81, v59);
        _objc_autoreleasePoolPop(context);
        v39 = v78;
        (*(v73 + 8))(v76, v78);
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v85, &demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[(label: Int, keypoints: MLMultiArray)]>>, DataSample<Tensor, Tensor>>>, DataSample<Tensor, Tensor>>.Iterator);
      return v80;
    }
  }

  return result;
}

Swift::Void __swiftcall MLHandActionClassifier.GraphCNN.adjustLearningRate(epoch:)(Swift::Int epoch)
{
  v2 = 0x3C23D70Au;
  for (i = 0; i != 3; ++i)
  {
    v4 = v2;
    if (*(&outlined read-only object #0 of one-time initialization function for adjustLearningRateSteps + i + 4) <= epoch)
    {
      *&v4 = *&v2 * 0.1;
      v2 = v4;
    }
  }

  v7 = v2;
  v5 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_optimizer;
  swift_beginAccess(OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_optimizer + v1, v6, 1, 0);
  *(v1 + v5) = v7;
}

uint64_t outlined init with copy of MLHandActionClassifier.GraphCNNModel(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLHandActionClassifier.GraphCNNModel(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t closure #1 in closure #1 in MLHandActionClassifier.GraphCNN.train(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v24 = a3;
  v27 = a1;
  v26 = v4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LossReduction?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = type metadata accessor for Tensor(0);
  v25 = *(v8 - 8);
  v9 = *(v25 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = type metadata accessor for MLHandActionClassifier.GraphCNNModel(0);
  v13 = lazy protocol witness table accessor for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel(&lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel);
  Layer.callAsFunction(_:)(a2, v12, v13);
  v14 = enum case for LossReduction.mean(_:);
  v15 = type metadata accessor for LossReduction(0);
  (*(*(v15 - 8) + 104))(v18, v14, v15);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v15);
  v16 = v24;
  softmaxCrossEntropy(logits:labels:labelSmoothing:axis:reduction:)(v18, v24, -1, v18, 0.0);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for LossReduction?);
  v20 = v23;
  v21 = v18;
  v22 = v16;
  withoutGradient<A>(_:)(partial apply for closure #1 in closure #1 in closure #1 in MLHandActionClassifier.GraphCNN.train(_:), v19, &type metadata for () + 8);
  return (*(v25 + 8))(v18, v8);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  result = a2;
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v4 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v10, 0, 0, 1, a1, a2);
  v5 = v10[0];
  if (v4)
  {
    v6 = v4;
    ObjectType = swift_getObjectType(v4);
    v10[0] = v6;
    v7 = *a3;
    if (*a3)
    {
      outlined init with copy of Any(v10, *a3);
      *a3 = v7 + 32;
    }
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v10[0] = a1;
    v10[1] = a2;
    v8 = *a3;
    if (*a3)
    {
      outlined init with copy of Any(v10, *a3);
      *a3 = v8 + 32;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return v5;
}

uint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      v9 = HIBYTE(a6) & 0xF;
      if (a2 != 0 && a3 - a2 > v9)
      {
        __src[0] = a5;
        __src[1] = a6 & 0xFFFFFFFFFFFFFFLL;
        memcpy(a2, __src, v9);
        *(a2 + v9) = 0;
        *a1 = a2;
        return 0;
      }
    }

LABEL_10:
    v8 = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v10;
    return v8;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_10;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    v7 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v7 = _StringObject.sharedUTF8.getter(a5, a6);
    if (!v7)
    {
      BUG();
    }
  }

  *a1 = v7;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v8 = a6 & 0xFFFFFFFFFFFFFFFLL;
  swift_unknownObjectRetain(v8);
  return v8;
}

char *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v2 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  if (!swift_isUniquelyReferenced_nonNull_native(v2))
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
  }

  v3 = *(v2 + 2);
  if (*(v2 + 3) >> 1 <= v3)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v2 + 3) >= 2uLL, v3 + 1, 1, v2);
  }

  *(v2 + 2) = v3 + 1;
  v2[v3 + 32] = 0;
  return v2;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    v2 = String.UTF8View._foreignCount()();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v2, 0);
  v4 = _StringGuts.copyUTF8(into:)((v3 + 4), v2, a1, a2);
  if (v5)
  {
    BUG();
  }

  if (v4 != v2)
  {
    BUG();
  }

  return v3;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2 <= a1)
  {
    v2 = a1;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<UInt8>);
  v4 = swift_allocObject(v3, v2 + 32, 7);
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t lazy protocol witness table accessor for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!*a1)
  {
    v5 = a2(255);
    result = swift_getWitnessTable(a3, v5);
    *a1 = result;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TrainingTablePrinter(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = type metadata accessor for Date(0);
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    v7 = *(a3 + 20);
    v8 = *(a2 + v7);
    *(v3 + v7) = v8;
    *(v3 + *(a3 + 24)) = *(a2 + *(a3 + 24));
    v8;
  }

  return v3;
}

uint64_t destroy for TrainingTablePrinter(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Date(0);
  (*(*(v2 - 8) + 8))(a1, v2);

  return *(a1 + *(a2 + 24));
}

uint64_t initializeWithCopy for TrainingTablePrinter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Date(0);
  (*(*(v5 - 8) + 16))(a1, a2, v5);
  v6 = *(a3 + 20);
  v7 = *(a2 + v6);
  *(a1 + v6) = v7;
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  v7;

  return a1;
}

uint64_t assignWithCopy for TrainingTablePrinter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Date(0);
  (*(*(v5 - 8) + 24))(a1, a2, v5);
  v6 = *(a3 + 20);
  v7 = *(a2 + v6);
  v8 = *(a1 + v6);
  *(a1 + v6) = v7;
  v7;

  v9 = *(a3 + 24);
  v10 = *(a1 + v9);
  *(a1 + v9) = *(a2 + v9);

  v10;
  return a1;
}

uint64_t initializeWithTake for TrainingTablePrinter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Date(0);
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t assignWithTake for TrainingTablePrinter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Date(0);
  (*(*(v5 - 8) + 40))(a1, a2, v5);
  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  *(a1 + v6) = *(a2 + v6);

  v8 = *(a3 + 24);
  v9 = *(a1 + v8);
  *(a1 + v8) = *(a2 + v8);
  v9;
  return a1;
}

uint64_t sub_2AF09A(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = 0;
  v5 = type metadata accessor for Date(0);
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

uint64_t sub_2AF123(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = type metadata accessor for Date(0);
  if (*(*(v6 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(a1, a2, a2, v6);
  }

  result = *(a4 + 20);
  *(a1 + result) = 2 * (a2 - 1);
  return result;
}

uint64_t type metadata completion function for TrainingTablePrinter(uint64_t a1)
{
  result = type metadata accessor for Date(319);
  if (v2 <= 0x3F)
  {
    v3[0] = *(result - 8) + 64;
    v3[1] = &value witness table for Builtin.UnknownObject + 64;
    v3[2] = &value witness table for Builtin.BridgeObject + 64;
    swift_initStructMetadata(a1, 256, 3, v3, a1 + 16);
    return 0;
  }

  return result;
}

Swift::Void __swiftcall TrainingTablePrinter.beginTable()()
{
  v18 = v0;
  v17 = type metadata accessor for TrainingTablePrinter(0);
  static os_log_type_t.info.getter(0);
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v2 = swift_allocObject(v1, 72, 7);
  v2[2] = 1;
  v2[3] = 2;
  v2[7] = &type metadata for Int;
  v2[8] = &protocol witness table for Int;
  v2[4] = 0;
  os_log(_:dso:log:type:_:)("event: %lu");
  v2;
  static os_log_type_t.info.getter(v2);
  v3 = swift_allocObject(v1, 152, 7);
  v3[2] = 3;
  v3[3] = 6;
  v3[7] = &type metadata for Int;
  v3[8] = &protocol witness table for Int;
  v3[4] = 1;
  v3[12] = &type metadata for Int;
  v3[13] = &protocol witness table for Int;
  v3[9] = 0;
  v3[17] = &type metadata for String;
  v4 = lazy protocol witness table accessor for type String and conformance String();
  v3[18] = v4;
  v3[14] = 0x6F69746172657449;
  v3[15] = 0xE90000000000006ELL;
  os_log(_:dso:log:type:_:)("event: %lu, column: %lu, value: %{public}s");
  v3;
  static os_log_type_t.info.getter(v3);
  v5 = swift_allocObject(v1, 152, 7);
  LOBYTE(v2) = v5;
  *(v5 + 16) = 3;
  *(v5 + 24) = 6;
  *(v5 + 56) = &type metadata for Int;
  *(v5 + 64) = &protocol witness table for Int;
  *(v5 + 32) = 1;
  *(v5 + 96) = &type metadata for Int;
  *(v5 + 104) = &protocol witness table for Int;
  *(v5 + 72) = 1;
  *(v5 + 136) = &type metadata for String;
  v16 = v4;
  *(v5 + 144) = v4;
  strcpy((v5 + 112), "Elapsed Time");
  *(v5 + 125) = 0;
  *(v5 + 126) = -5120;
  os_log(_:dso:log:type:_:)("event: %lu, column: %lu, value: %{public}s");
  v2;
  v6 = *(v18 + *(v17 + 24));
  specialized EnumeratedSequence.makeIterator()(v6);
  v19 = v6;
  v7 = v6;
  swift_bridgeObjectRetain_n(v6, 2);
  while (1)
  {
    v8 = specialized EnumeratedSequence.Iterator.next()();
    if (!v10)
    {
      break;
    }

    v11 = v8;
    v12 = v9;
    v13 = v10;
    static os_log_type_t.info.getter(v7);
    v14 = swift_allocObject(v1, 152, 7);
    v14[2] = 3;
    v14[3] = 6;
    v14[7] = &type metadata for Int;
    v14[8] = &protocol witness table for Int;
    v14[4] = 1;
    if (v11 < 0)
    {
      BUG();
    }

    v14[12] = &type metadata for UInt64;
    v14[13] = &protocol witness table for UInt64;
    v14[9] = v11 + 2;
    v14[17] = &type metadata for String;
    v14[18] = v16;
    v14[14] = v12;
    v14[15] = v13;
    os_log(_:dso:log:type:_:)("event: %lu, column: %lu, value: %{public}s");
    v7 = v14;
    v14;
  }

  outlined consume of [String : [Double]].Iterator._Variant(v15);
  v19;
}

Swift::Void __swiftcall TrainingTablePrinter.print(iteration:metrics:)(Swift::Int iteration, Swift::OpaquePointer metrics)
{
  v58 = v2;
  rawValue = metrics._rawValue;
  v66 = iteration;
  v4 = type metadata accessor for MetricsKey(0);
  v56 = *(v4 - 8);
  v5 = *(v56 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v61 = &v50;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v62 = &v50;
  v10 = alloca(v5);
  v11 = alloca(v5);
  v59 = &v50;
  v12 = alloca(v5);
  v13 = alloca(v5);
  v60 = &v50;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (offset: Int, element: MetricsKey)?) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v54 = &v50;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v55 = &v50;
  v67 = type metadata accessor for TrainingTablePrinter(0);
  v63 = *(v2 + *(v67 + 20));
  LOBYTE(v64) = static os_log_type_t.info.getter(0);
  v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v20 = swift_allocObject(v19, 152, 7);
  v20[2] = 3;
  v20[3] = 6;
  v20[7] = &type metadata for Int;
  v20[8] = &protocol witness table for Int;
  v20[4] = 2;
  v20[12] = &type metadata for Int;
  v20[13] = &protocol witness table for Int;
  v20[9] = 0;
  v20[17] = &type metadata for Int;
  v20[18] = &protocol witness table for Int;
  v20[14] = v66;
  os_log(_:dso:log:type:_:)("event: %lu, column: %lu, value: %d");
  v20;
  LOBYTE(v66) = static os_log_type_t.info.getter(v20);
  v64 = v19;
  v21 = swift_allocObject(v19, 152, 7);
  *(v21 + 16) = 3;
  *(v21 + 24) = 6;
  *(v21 + 56) = &type metadata for Int;
  *(v21 + 64) = &protocol witness table for Int;
  *(v21 + 32) = 2;
  v22 = v62;
  *(v21 + 96) = &type metadata for Int;
  *(v21 + 104) = &protocol witness table for Int;
  *(v21 + 72) = 1;
  v23 = v58;
  *v3.i64 = Date.timeIntervalSinceNow.getter();
  *(v21 + 136) = &type metadata for Double;
  *(v21 + 144) = &protocol witness table for Double;
  _mm_storel_ps((v21 + 112), _mm_xor_ps(v3, xmmword_33DFE0));
  os_log(_:dso:log:type:_:)("event: %lu, column: %lu, value: %f");
  v21;
  specialized EnumeratedSequence.makeIterator()(*(v23 + *(v67 + 24)));

  for (i = v4; ; v35(v60, i))
  {
    v24 = v54;
    specialized EnumeratedSequence.Iterator.next()();
    v25 = v55;
    outlined init with take of (offset: Int, element: MetricsKey)?(v24, v55);
    v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (offset: Int, element: MetricsKey));
    if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
    {
      break;
    }

    v66 = *v25;
    v27 = v25 + *(v26 + 48);
    v28 = v60;
    v29 = v22;
    v30 = v56;
    (*(v56 + 32))(v60, v27, v4);
    v31 = *(v30 + 16);
    v32 = v59;
    v31(v59, v28, i);
    v31(v29, v32, i);
    v33 = i;
    v34 = v61;
    static MetricsKey.trainingLoss.getter(v29);
    v67 = lazy protocol witness table accessor for type MetricsKey and conformance MetricsKey();
    LOBYTE(v29) = dispatch thunk of static Equatable.== infix(_:_:)(v34, v29, v33, v67);
    v35 = *(v30 + 8);
    v35(v34, v33);
    if (v29)
    {
      v36 = v33;
      v37 = 0;
      v22 = v62;
    }

    else
    {
      static MetricsKey.trainingAccuracy.getter();
      v22 = v62;
      v36 = v33;
      v38 = v34;
      v39 = dispatch thunk of static Equatable.== infix(_:_:)(v34, v62, v33, v67);
      v35(v38, v33);
      v37 = 3;
      if ((v39 & 1) == 0)
      {
        v40 = v61;
        static MetricsKey.validationLoss.getter();
        v41 = dispatch thunk of static Equatable.== infix(_:_:)(v40, v22, v36, v67);
        v35(v40, v36);
        v37 = 4;
        if ((v41 & 1) == 0)
        {
          v47 = v61;
          static MetricsKey.validationAccuracy.getter();
          v48 = dispatch thunk of static Equatable.== infix(_:_:)(v47, v22, v36, v67);
          v35(v59, v36);
          v35(v47, v36);
          v35(v22, v36);
          v37 = 5;
          if ((v48 & 1) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_8;
        }
      }
    }

    v35(v59, v36);
    v35(v22, v36);
LABEL_8:
    v42 = rawValue;
    if (!rawValue[2] || (v43 = specialized __RawDictionaryStorage.find<A>(_:)(v37), (v44 & 1) == 0))
    {
      v51 = 0;
      v52 = 0xE000000000000000;
      _StringGuts.grow(_:)(32);
      v49._object = "gUtilities.swift" + 0x8000000000000000;
      v49._countAndFlagsBits = 0xD00000000000001DLL;
      String.append(_:)(v49);
      _print_unlocked<A, B>(_:_:)(v60, &v51, i, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      v49._countAndFlagsBits = 46;
      v49._object = 0xE100000000000000;
      String.append(_:)(v49);
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v51, v52, "CreateML/_LoggingUtilities.swift", 32, 2, 122, 0);
      BUG();
    }

    v67 = *(v42[7] + 8 * v43);
    static os_log_type_t.info.getter(v37);
    v45 = swift_allocObject(v64, 152, 7);
    v45[2] = 3;
    v45[3] = 6;
    v45[7] = &type metadata for Int;
    v45[8] = &protocol witness table for Int;
    v45[4] = 2;
    v46 = v66 + 2;
    if (__OFADD__(2, v66))
    {
      BUG();
    }

    v45[12] = &type metadata for Int;
    v45[13] = &protocol witness table for Int;
    v45[9] = v46;
    v45[17] = &type metadata for Double;
    v45[18] = &protocol witness table for Double;
    v45[14] = v67;
    os_log(_:dso:log:type:_:)("event: %lu, column: %lu, value: %f");
    v45;
LABEL_12:
    v4 = i;
  }

  outlined consume of [String : [Double]].Iterator._Variant(v53);
}

Swift::Void __swiftcall _TablePrinter.beginTable()()
{
  v1 = type metadata accessor for _TablePrinter(0);
  v20 = *(v0 + *(v1 + 24));
  static os_log_type_t.info.getter(0);
  v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v2 = swift_allocObject(v21, 72, 7);
  v3 = v2;
  v2[2] = 1;
  v2[3] = 2;
  v2[7] = &type metadata for Int;
  v2[8] = &protocol witness table for Int;
  v2[4] = 0;
  os_log(_:dso:log:type:_:)("event: %lu");
  v3;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v4, v18);
  *(inited + 16) = 3;
  *(inited + 24) = 6;
  strcpy((inited + 32), "Elapsed Time");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v6 = *(v1 + 28);
  v8 = *(v0 + v6 + 8);
  *&v19 = *(v0 + v6);
  v7 = v19;
  *(&v19 + 1) = v8;

  v9._countAndFlagsBits = 0x737365636F725020;
  v9._object = 0xEA00000000006465;
  String.append(_:)(v9);
  *(inited + 48) = v19;
  *&v19 = 0;
  *(&v19 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  SBYTE8(v19);
  *&v19 = 0xD000000000000010;
  *(&v19 + 1) = "mn: %lu, value: %d" + 0x8000000000000000;

  v9._countAndFlagsBits = v7;
  v9._object = v8;
  String.append(_:)(v9);
  v8;
  *(inited + 64) = v19;
  v23 = *(inited + 32);
  v10 = *(inited + 40);

  static os_log_type_t.info.getter(v10);
  v11 = v21;
  v12 = swift_allocObject(v21, 152, 7);
  v12[2] = 3;
  v12[3] = 6;
  v12[7] = &type metadata for Int;
  v12[8] = &protocol witness table for Int;
  v12[4] = 1;
  v12[12] = &type metadata for UInt64;
  v12[13] = &protocol witness table for UInt64;
  v12[9] = 0;
  v12[17] = &type metadata for String;
  v22 = lazy protocol witness table accessor for type String and conformance String();
  v12[18] = v22;
  v12[14] = v23;
  v12[15] = v10;

  os_log(_:dso:log:type:_:)("event: %lu, column: %lu, value: %{public}s");
  v10;
  v12;
  v23 = *(inited + 48);
  v13 = *(inited + 56);

  v24 = static os_log_type_t.info.getter(v13);
  v14 = swift_allocObject(v11, 152, 7);
  LOBYTE(v10) = v14;
  v14[2] = 3;
  v14[3] = 6;
  v14[7] = &type metadata for Int;
  v14[8] = &protocol witness table for Int;
  v14[4] = 1;
  v14[12] = &type metadata for UInt64;
  v14[13] = &protocol witness table for UInt64;
  v14[9] = 1;
  v14[17] = &type metadata for String;
  v14[18] = v22;
  v14[14] = v23;
  v14[15] = v13;

  os_log(_:dso:log:type:_:)("event: %lu, column: %lu, value: %{public}s");
  v13;
  v10;
  v15 = *(inited + 64);
  v16 = *(inited + 72);

  static os_log_type_t.info.getter(v16);
  v17 = swift_allocObject(v21, 152, 7);
  v17[2] = 3;
  v17[3] = 6;
  v17[7] = &type metadata for Int;
  v17[8] = &protocol witness table for Int;
  v17[4] = 1;
  v17[12] = &type metadata for UInt64;
  v17[13] = &protocol witness table for UInt64;
  v17[9] = 2;
  v17[17] = &type metadata for String;
  v17[18] = v22;
  v17[14] = v15;
  v17[15] = v16;

  os_log(_:dso:log:type:_:)("event: %lu, column: %lu, value: %{public}s");
  inited;
  v16;
  v17;
  swift_setDeallocating(inited);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
}

Swift::Void __swiftcall _TablePrinter.printRow(currentFileIndex:)(Swift::Int currentFileIndex)
{
  type metadata accessor for _TablePrinter(0);
  static os_log_type_t.info.getter(0);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v3 = swift_allocObject(v7, 152, 7);
  *(v3 + 16) = 3;
  *(v3 + 24) = 6;
  *(v3 + 56) = &type metadata for Int;
  *(v3 + 64) = &protocol witness table for Int;
  *(v3 + 32) = 2;
  *(v3 + 96) = &type metadata for Int;
  *(v3 + 104) = &protocol witness table for Int;
  *(v3 + 72) = 0;
  *v2.i64 = Date.timeIntervalSinceNow.getter();
  *(v3 + 136) = &type metadata for Double;
  *(v3 + 144) = &protocol witness table for Double;
  _mm_storel_ps((v3 + 112), _mm_xor_ps(v2, xmmword_33DFE0));
  os_log(_:dso:log:type:_:)("event: %lu, column: %lu, value: %f");
  v3;
  static os_log_type_t.info.getter(v3);
  v4 = swift_allocObject(v7, 152, 7);
  v4[2] = 3;
  v4[3] = 6;
  v4[7] = &type metadata for Int;
  v4[8] = &protocol witness table for Int;
  v4[4] = 2;
  v4[12] = &type metadata for Int;
  v4[13] = &protocol witness table for Int;
  v4[9] = 1;
  v4[17] = &type metadata for Int;
  v4[18] = &protocol witness table for Int;
  v4[14] = currentFileIndex;
  os_log(_:dso:log:type:_:)("event: %lu, column: %lu, value: %d");
  v4;
  static os_log_type_t.info.getter(v4);
  v5 = swift_allocObject(v7, 152, 7);
  v5[2] = 3;
  v5[3] = 6;
  v5[7] = &type metadata for Int;
  v5[8] = &protocol witness table for Int;
  v5[4] = 2;
  v5[12] = &type metadata for Int;
  v5[13] = &protocol witness table for Int;
  v5[9] = 2;
  v6 = *v1;
  v5[17] = &type metadata for Int;
  v5[18] = &protocol witness table for Int;
  v5[14] = v6;
  os_log(_:dso:log:type:_:)("event: %lu, column: %lu, value: %d");
  v5;
}

void *specialized EnumeratedSequence.makeIterator()(uint64_t a1)
{
  v2 = -(-1 << *(a1 + 32));
  v3 = ~(-1 << v2);
  if (v2 >= 64)
  {
    v3 = -1;
  }

  v4 = *(a1 + 64) & v3;
  v5 = ~(-1 << *(a1 + 32));
  *result = a1;
  result[1] = a1 + 64;
  result[2] = v5;
  result[3] = 0;
  result[4] = v4;
  result[5] = 0;
  return result;
}

uint64_t specialized EnumeratedSequence.Iterator.next()()
{
  v1 = v0[3];
  v2 = v0[4];
  if (!v2)
  {
    v5 = v1 + 1;
    if (__OFADD__(1, v1))
    {
      BUG();
    }

    v6 = (v0[2] + 64) >> 6;
    if (v5 >= v6)
    {
      v8 = v0[3];
    }

    else
    {
      v7 = v0[1];
      v2 = *(v7 + 8 * v5);
      if (v2)
      {
        v3 = v1 + 1;
        goto LABEL_3;
      }

      v8 = v1 + 2;
      if (v1 + 2 >= v6)
      {
        v8 = v1 + 1;
      }

      else
      {
        v2 = *(v7 + 8 * v5 + 8);
        if (v2)
        {
          v3 = v1 + 2;
          goto LABEL_3;
        }

        v3 = v1 + 3;
        if (v1 + 3 < v6)
        {
          v2 = *(v7 + 8 * v5 + 16);
          if (v2)
          {
            goto LABEL_3;
          }

          v10 = v1 + 4;
          v8 = v1 + 3;
          if (v1 + 4 < v6)
          {
            v2 = *(v7 + 8 * v5 + 24);
            if (v2)
            {
LABEL_20:
              v3 = v10;
              goto LABEL_3;
            }

            v3 = v1 + 5;
            v8 = v1 + 4;
            if (v1 + 5 < v6)
            {
              v2 = *(v7 + 8 * v5 + 32);
              if (v2)
              {
                goto LABEL_3;
              }

              v10 = v1 + 6;
              v8 = v1 + 5;
              if (v1 + 6 < v6)
              {
                v2 = *(v7 + 8 * v5 + 40);
                if (v2)
                {
                  goto LABEL_20;
                }

                v3 = v1 + 7;
                v8 = v1 + 6;
                if (v1 + 7 < v6)
                {
                  v2 = *(v7 + 8 * v5 + 48);
                  if (v2)
                  {
                    goto LABEL_3;
                  }

                  v8 = v6 - 1;
                  v11 = v1 + 8;
                  while (v11 < v6)
                  {
                    v2 = *(v7 + 8 * v11++);
                    if (v2)
                    {
                      v1 = v11 - 1;
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

    v0[3] = v8;
    v0[4] = 0;
    return 0;
  }

LABEL_2:
  v3 = v1;
LABEL_3:
  v0[3] = v3;
  v0[4] = v2 & (v2 - 1);
  v4 = v0[5];
  if (__OFADD__(1, v4))
  {
    BUG();
  }

  v0[5] = v4 + 1;

  return v4;
}

{
  v2 = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MetricsKey?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for MetricsKey(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v41 = &v39;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v42 = v2;
  v43 = v7;
  v44 = v12;
  v40 = v13;
  if (v15)
  {
    v16 = v14;
LABEL_3:
    _BitScanForward64(&v17, v15);
    v45 = v15 & (v15 - 1);
    v18 = v6;
    v19 = v11;
    (*(v7 + 16))(&v39, *(v11 + 56) + *(v7 + 72) * (v17 | (v16 << 6)), v6);
    v46 = v16;
    v20 = 0;
    goto LABEL_10;
  }

  v21 = v14 + 1;
  if (__OFADD__(1, v14))
  {
    BUG();
  }

  v22 = (v13 + 64) >> 6;
  if (v21 >= v22)
  {
    v45 = 0;
    v46 = v14;
    v20 = 1;
LABEL_9:
    v18 = v6;
    v19 = v11;
    goto LABEL_10;
  }

  v15 = *(v12 + 8 * v21);
  if (v15)
  {
    v16 = v14 + 1;
    goto LABEL_3;
  }

  v16 = v14 + 2;
  if (v14 + 2 >= v22)
  {
    v45 = 0;
    v20 = 1;
    v46 = v21;
    goto LABEL_9;
  }

  v15 = *(v12 + 8 * v21 + 8);
  if (v15)
  {
    goto LABEL_3;
  }

  v37 = v14 + 3;
  if (v14 + 3 >= v22)
  {
    goto LABEL_29;
  }

  v15 = *(v12 + 8 * v21 + 16);
  if (v15)
  {
LABEL_19:
    v16 = v37;
    goto LABEL_3;
  }

  v16 = v14 + 4;
  if (v14 + 4 >= v22)
  {
    v45 = 0;
    v20 = 1;
    v46 = v21 + 2;
    goto LABEL_9;
  }

  v15 = *(v12 + 8 * v21 + 24);
  if (v15)
  {
    goto LABEL_3;
  }

  v37 = v14 + 5;
  if (v14 + 5 >= v22)
  {
LABEL_29:
    v45 = 0;
    v20 = 1;
    v46 = v16;
    goto LABEL_9;
  }

  v15 = *(v12 + 8 * v21 + 32);
  if (v15)
  {
    goto LABEL_19;
  }

  if (v14 + 6 >= v22)
  {
    v45 = 0;
    v20 = 1;
    v46 = v21 + 4;
    v19 = v11;
    v18 = v6;
  }

  else
  {
    v18 = v6;
    v15 = *(v44 + 8 * v21 + 40);
    if (v15)
    {
      v16 = v14 + 6;
LABEL_28:
      v7 = v43;
      goto LABEL_3;
    }

    v16 = v14 + 7;
    if (v14 + 7 >= v22)
    {
      v45 = 0;
      v20 = 1;
      v46 = v21 + 5;
      v19 = v11;
    }

    else
    {
      v15 = *(v44 + 8 * v21 + 48);
      v7 = v43;
      if (v15)
      {
        goto LABEL_3;
      }

      v38 = v14 + 8;
      while (v38 < v22)
      {
        v15 = *(v44 + 8 * v38++);
        if (v15)
        {
          v16 = v38 - 1;
          goto LABEL_28;
        }
      }

      v20 = 1;
      v46 = v22 - 1;
      v19 = v11;
      v45 = 0;
    }
  }

LABEL_10:
  __swift_storeEnumTagSinglePayload(&v39, v20, 1, v18);
  *v1 = v19;
  v1[1] = v44;
  v1[2] = v40;
  v1[3] = v46;
  v1[4] = v45;
  if (__swift_getEnumTagSinglePayload(&v39, 1, v18) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v39, &demangling cache variable for type metadata for MetricsKey?);
    v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (offset: Int, element: MetricsKey));
    v24 = v42;
    v25 = 1;
    v26 = v23;
  }

  else
  {
    v27 = v18;
    v28 = *(v43 + 32);
    v29 = v41;
    v28(v41, &v39, v27);
    v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (offset: Int, element: MetricsKey));
    v30 = v27;
    v31 = v42;
    v32 = v42 + *(v44 + 48);
    v33 = v1[5];
    *v42 = v33;
    v28(v32, v29, v30);
    v34 = __OFADD__(1, v33);
    v35 = v33 + 1;
    if (v34)
    {
      BUG();
    }

    v1[5] = v35;
    v24 = v31;
    v25 = 0;
    v26 = v44;
  }

  return __swift_storeEnumTagSinglePayload(v24, v25, 1, v26);
}

{
  v2 = v0;
  *&v8 = *v1;
  BYTE8(v8) = *(v1 + 8);
  outlined copy of Result<_DataTable, Error>(*v1, SBYTE8(v8));
  v3 = MLDataTable.size.getter();
  result = outlined consume of Result<_DataTable, Error>(v8, SBYTE8(v8));
  v5 = *(v1 + 16);
  if (v5 == v3)
  {
    *(v2 + 16) = 0;
    *v2 = 0;
  }

  else
  {
    MLDataTable.Rows.subscript.getter(*(v1 + 16));
    *(v1 + 16) = specialized RandomAccessCollection<>.index(after:)(v5, *v1, *(v1 + 8));
    v6 = *(v1 + 24);
    *v2 = v6;
    *(v2 + 8) = v8;
    *(v2 + 24) = v9;
    v7 = __OFADD__(1, v6);
    result = v6 + 1;
    if (v7)
    {
      BUG();
    }

    *(v1 + 24) = result;
  }

  return result;
}

uint64_t specialized EnumeratedSequence.Iterator.next()(double a1)
{
  v3 = v1;
  result = CMLSequence.size.getter();
  v5 = *(v2 + 8);
  if (v5 == result)
  {
    *v3 = 0;
    *(v3 + 16) = 0;
    *(v3 + 24) = -1;
  }

  else
  {
    v6 = CMLSequence.value(at:)(*(v2 + 8));
    MLDataValue.init(_:)(v6, a1);
    v7 = CMLSequence.size.getter();
    if (v5 < 0 || v5 >= v7)
    {
      BUG();
    }

    *(v2 + 8) = v5 + 1;
    v8 = *(v2 + 16);
    *v3 = v8;
    *(v3 + 8) = v10;
    *(v3 + 24) = v11;
    v9 = __OFADD__(1, v8);
    result = v8 + 1;
    if (v9)
    {
      BUG();
    }

    *(v2 + 16) = result;
  }

  return result;
}

Swift::Void __swiftcall log(_:type:)(Swift::String _, os_log_type_t type)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any>);
  v3 = swift_allocObject(v2, 64, 7);
  v3[1]._countAndFlagsBits = 1;
  v3[1]._object = &dword_0 + 2;
  v3[3]._object = &type metadata for String;
  v3[2] = _;

  print(_:separator:terminator:)(v3, 32, 0xE100000000000000, 10, 0xE100000000000000);
  v3;
  type metadata accessor for OS_os_log();
  v4 = static OS_os_log.default.getter(0, 32);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v6 = swift_allocObject(v5, 72, 7);
  v6[1]._countAndFlagsBits = 1;
  v6[1]._object = &dword_0 + 2;
  v6[3]._object = &type metadata for String;
  v6[4]._countAndFlagsBits = lazy protocol witness table accessor for type String and conformance String();
  v6[2] = _;

  os_log(_:dso:log:type:_:)("%@\n");

  v6;
}

Swift::String __swiftcall getOSVersion()()
{
  v21 = objc_opt_self(NSProcessInfo);
  v0 = [v21 processInfo];
  v1 = v0;
  objc_msgSend_stret(&v22, v1, "operatingSystemVersion");
  countAndFlagsBits = v22._countAndFlagsBits;

  v22._countAndFlagsBits = countAndFlagsBits;
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  object = v3._object;
  v22 = v3;

  v5._countAndFlagsBits = 46;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  object;
  v6 = v22;
  v7 = [v21 processInfo];
  v8 = v7;
  objc_msgSend_stret(&v22, v8, "operatingSystemVersion");
  v9 = v22._object;

  v22._countAndFlagsBits = v9;
  v10 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v12 = v11;
  v22 = v6;

  v5._countAndFlagsBits = v10;
  v5._object = v12;
  String.append(_:)(v5);
  v6._object;
  v12;
  LOBYTE(v10) = v22._object;

  v5._countAndFlagsBits = 46;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v10;
  v13 = v22;
  v14 = [v21 processInfo];
  v15 = v14;
  objc_msgSend_stret(&v22, v15, "operatingSystemVersion");
  v16 = v23;

  v22._countAndFlagsBits = v16;
  v17 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v19 = v18;
  v22 = v13;

  v5._countAndFlagsBits = v17;
  v5._object = v19;
  String.append(_:)(v5);
  v13._object;
  v19;
  return v22;
}

uint64_t TrainingTablePrinter.print(_:)(uint64_t a1, __m128 a2)
{
  v31 = v2;
  v35 = a1;
  v36 = type metadata accessor for MetricsKey(0);
  v34 = *(v36 - 8);
  v3 = *(v34 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (offset: Int, element: MetricsKey)?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v30 = v28;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v37 = type metadata accessor for TrainingTablePrinter(0);
  v38 = *(v2 + *(v37 + 20));
  LOBYTE(v39) = static os_log_type_t.info.getter(0);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v12 = swift_allocObject(v11, 152, 7);
  v12[2] = 3;
  v12[3] = 6;
  v12[7] = &type metadata for Int;
  v12[8] = &protocol witness table for Int;
  v12[4] = 2;
  v12[12] = &type metadata for Int;
  v12[13] = &protocol witness table for Int;
  v12[9] = 0;
  v13 = Event.itemCount.getter(*a2.i64);
  v12[17] = &type metadata for Int;
  v12[18] = &protocol witness table for Int;
  v12[14] = v13;
  os_log(_:dso:log:type:_:)("event: %lu, column: %lu, value: %d");
  v12;
  v40 = static os_log_type_t.info.getter(v12);
  v39 = v11;
  v14 = swift_allocObject(v11, 152, 7);
  *(v14 + 16) = 3;
  *(v14 + 24) = 6;
  *(v14 + 56) = &type metadata for Int;
  *(v14 + 64) = &protocol witness table for Int;
  *(v14 + 32) = 2;
  *(v14 + 96) = &type metadata for Int;
  *(v14 + 104) = &protocol witness table for Int;
  *(v14 + 72) = 1;
  v15 = v31;
  *a2.i64 = Date.timeIntervalSinceNow.getter();
  *(v14 + 136) = &type metadata for Double;
  *(v14 + 144) = &protocol witness table for Double;
  _mm_storel_ps((v14 + 112), _mm_xor_ps(a2, xmmword_33DFE0));
  os_log(_:dso:log:type:_:)("event: %lu, column: %lu, value: %f");
  v14;
  specialized EnumeratedSequence.makeIterator()(*(v15 + *(v37 + 24)));

  while (1)
  {
    v16 = v30;
    specialized EnumeratedSequence.Iterator.next()();
    outlined init with take of (offset: Int, element: MetricsKey)?(v16, v28);
    v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (offset: Int, element: MetricsKey));
    if (__swift_getEnumTagSinglePayload(v28, 1, v17) == 1)
    {
      return outlined consume of [String : [Double]].Iterator._Variant(v28[1]);
    }

    v18 = v28[0];
    (*(v34 + 32))(v28, v28 + *(v17 + 48), v36);
    v19 = Event.metrics.getter();
    if (*(v19 + 16) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v28), (v21 & 1) != 0))
    {
      outlined init with copy of Any(*(v19 + 56) + 32 * v20, &v32);
    }

    else
    {
      v33 = 0;
      v32 = 0;
    }

    v19;
    if (!*(&v33 + 1))
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v32, &demangling cache variable for type metadata for Sendable?);
LABEL_14:
      *&v32 = 0;
      *(&v32 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(32);
      v27._object = "gUtilities.swift" + 0x8000000000000000;
      v27._countAndFlagsBits = 0xD00000000000001DLL;
      String.append(_:)(v27);
      _print_unlocked<A, B>(_:_:)(v28, &v32, v36, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      v27._countAndFlagsBits = 46;
      v27._object = 0xE100000000000000;
      String.append(_:)(v27);
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v32, *(&v32 + 1), "CreateML/_LoggingUtilities.swift", 32, 2, 103, 0);
      BUG();
    }

    v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Sendable);
    if (!swift_dynamicCast(&v29, &v32, v22, &type metadata for Double, 6))
    {
      goto LABEL_14;
    }

    v37 = v29;
    static os_log_type_t.info.getter(&v29);
    v23 = swift_allocObject(v39, 152, 7);
    v23[2] = 3;
    v23[3] = 6;
    v23[7] = &type metadata for Int;
    v23[8] = &protocol witness table for Int;
    v23[4] = 2;
    v24 = __OFADD__(2, v18);
    v25 = v18 + 2;
    if (v24)
    {
      BUG();
    }

    v23[12] = &type metadata for Int;
    v23[13] = &protocol witness table for Int;
    v23[9] = v25;
    v23[17] = &type metadata for Double;
    v23[18] = &protocol witness table for Double;
    v23[14] = v37;
    os_log(_:dso:log:type:_:)("event: %lu, column: %lu, value: %f");
    v23;
    (*(v34 + 8))(v28, v36);
  }
}

uint64_t outlined init with take of (offset: Int, element: MetricsKey)?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (offset: Int, element: MetricsKey)?);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t lazy protocol witness table accessor for type MetricsKey and conformance MetricsKey()
{
  result = lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey;
  if (!lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey)
  {
    v1 = type metadata accessor for MetricsKey(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for MetricsKey, v1);
    lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey = result;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for _TablePrinter(void *a1, char *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v11 = *a2;
    *v3 = *a2;
    v3 = (v11 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v6 = a3[5];
    v7 = type metadata accessor for Date(0);
    (*(*(v7 - 8) + 16))(a1 + v6, &a2[v6], v7);
    v8 = a3[6];
    v9 = *&a2[v8];
    *(v3 + v8) = v9;
    v10 = a3[7];
    *(v3 + v10) = *&a2[v10];
    *(v3 + v10 + 8) = *&a2[v10 + 8];
    v9;
  }

  return v3;
}

uint64_t destroy for _TablePrinter(uint64_t a1, int *a2)
{
  v2 = a1 + a2[5];
  v3 = type metadata accessor for Date(0);
  (*(*(v3 - 8) + 8))(v2, v3);

  return *(a1 + a2[7] + 8);
}

char *initializeWithCopy for _TablePrinter(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v5 = a3[5];
  v6 = type metadata accessor for Date(0);
  (*(*(v6 - 8) + 16))(&a1[v5], &a2[v5], v6);
  v7 = a3[6];
  v8 = *&a2[v7];
  *&a1[v7] = v8;
  v9 = a3[7];
  *&a1[v9] = *&a2[v9];
  *&a1[v9 + 8] = *&a2[v9 + 8];
  v8;

  return a1;
}

char *assignWithCopy for _TablePrinter(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v5 = a3[5];
  v6 = type metadata accessor for Date(0);
  (*(*(v6 - 8) + 24))(&a1[v5], &a2[v5], v6);
  v7 = a3[6];
  v8 = *&a2[v7];
  v9 = *&a1[v7];
  *&a1[v7] = v8;
  v8;

  v10 = a3[7];
  *&a1[v10] = *&a2[v10];
  v11 = *&a1[v10 + 8];
  *&a1[v10 + 8] = *&a2[v10 + 8];

  v11;
  return a1;
}

char *initializeWithTake for _TablePrinter(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v4 = a3[5];
  v5 = type metadata accessor for Date(0);
  (*(*(v5 - 8) + 32))(&a1[v4], &a2[v4], v5);
  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[a3[7]] = *&a2[a3[7]];
  return a1;
}

char *assignWithTake for _TablePrinter(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v5 = a3[5];
  v6 = type metadata accessor for Date(0);
  (*(*(v6 - 8) + 40))(&a1[v5], &a2[v5], v6);
  v7 = a3[6];
  v8 = *&a1[v7];
  *&a1[v7] = *&a2[v7];

  v9 = a3[7];
  *&a1[v9] = *&a2[v9];
  v10 = *&a1[v9 + 8];
  *&a1[v9 + 8] = *&a2[v9 + 8];
  v10;
  return a1;
}

uint64_t sub_2B148B(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = 0;
  v5 = type metadata accessor for Date(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(*(a3 + 20) + a1, a2, v5);
  }

  if ((*(a1 + *(a3 + 24)) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + *(a3 + 24)) >> 1) + 1;
  }

  return v4;
}

uint64_t sub_2B150D(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = type metadata accessor for Date(0);
  if (*(*(v6 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(*(a4 + 20) + a1, a2, a2, v6);
  }

  result = *(a4 + 24);
  *(a1 + result) = 2 * (a2 - 1);
  return result;
}

uint64_t type metadata completion function for _TablePrinter(uint64_t a1)
{
  v3[0] = &value witness table for Builtin.Int64 + 64;
  result = type metadata accessor for Date(319);
  if (v2 <= 0x3F)
  {
    v3[1] = *(result - 8) + 64;
    v3[2] = &value witness table for Builtin.UnknownObject + 64;
    v3[3] = &unk_348D58;
    swift_initStructMetadata(a1, 256, 4, v3, a1 + 16);
    return 0;
  }

  return result;
}

void *MLActionClassifier.DataSource.videosWithAnnotations()(__m128 a1)
{
  *&v162 = v2;
  *v173 = v3;
  v158 = v1;
  v168._object = type metadata accessor for DataFrame(0);
  v171._countAndFlagsBits = *(v168._object - 1);
  v4 = *(v171._countAndFlagsBits + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  ML14_UntypedColumnC_s5Error_pTt1g5 = __src;
  v7 = alloca(v4);
  v8 = alloca(v4);
  *v167 = __src;
  v9 = type metadata accessor for UTType(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  *v163 = __src;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v164._countAndFlagsBits = __src;
  *v169 = type metadata accessor for URL(0);
  named = *(*v169 - 8);
  v16 = *(named + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v160 = __src;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v164._object = __src;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v161 = __src;
  v23 = alloca(v16);
  v24 = alloca(v16);
  *v166 = __src;
  v25 = alloca(v16);
  v26 = alloca(v16);
  v168._countAndFlagsBits = __src;
  v27 = alloca(v16);
  v28 = alloca(v16);
  *v165 = __src;
  v29 = type metadata accessor for MLActionClassifier.DataSource(0);
  v30 = *(*(v29 - 8) + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  outlined init with copy of MLActionClassifier.DataSource(*v173, __src);
  switch(swift_getEnumCaseMultiPayload(__src, v29))
  {
    case 0u:
      v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v34 = __src + v33[12];
      v35 = v33[16];
      v168._countAndFlagsBits = *(__src + v35);
      *v173 = *(__src + v35 + 8);
      v36 = v33[20];
      *v165 = *(__src + v36);
      *v167 = *(__src + v36 + 8);
      v37 = v33[24];
      *v163 = *(__src + v37);
      v168._object = *(__src + v37 + 8);
      v38 = v33[28];
      v164._countAndFlagsBits = *(__src + v38);
      v171._countAndFlagsBits = *(__src + v38 + 8);
      v39 = *(named + 32);
      v40 = *v169;
      v39(*v166, __src, *v169);
      v41 = v161;
      v39(v161, v34, v40);
      object = v164._object;
      (*(named + 16))(v164._object, v41, v40);
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
      LOBYTE(v139) = 1;
      v140 = 44;
      v141 = 0xE100000000000000;
      v142 = 0;
      v143 = 0xE000000000000000;
      v144 = 92;
      v145 = 0xE100000000000000;
      v146 = 1;
      v147 = 34;
      v148 = 0xE100000000000000;
      v149 = 1;
      v150 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
      v151 = 10;
      v152 = 0xE100000000000000;
      v153 = 0;
      v154 = 1;
      v155 = 0;
      outlined retain of MLDataTable.ParsingOptions(__src);
      outlined release of MLDataTable.ParsingOptions(&v139);
      memcpy(__dst, __src, sizeof(__dst));
      v43 = v162;
      MLDataTable.init(contentsOf:options:)(object, __dst);
      v44 = *v169;
      v45 = *v166;
      if (v43)
      {
        v46 = *(named + 8);
        v46(v161, *v169);
        v167[0];
        v173[0];
        v168._object;
        v171._countAndFlagsBits;
        return v46(v45, v44);
      }

      v171._object = v156;
      LOBYTE(v172) = v157;
      v81._countAndFlagsBits = v168._countAndFlagsBits;
      v81._object = *v173;
      MLDataTable.subscript.getter(v81);
      v82 = *&__dst[0];
      v83 = BYTE8(__dst[0]);
      if (BYTE8(__dst[0]) || (outlined copy of Result<_DataTable, Error>(*&__dst[0], 0), v164._object = v82, _UntypedColumn.type.getter(), v82 = v164._object, outlined consume of Result<_DataTable, Error>(v164._object, 0), v156 != 2))
      {
        outlined consume of Result<_DataTable, Error>(v82, v83);
        v167[0];
        v168._object;
        v171._countAndFlagsBits;
        *&__dst[0] = 0;
        *(&__dst[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(26);
        SBYTE8(__dst[0]);
        *&__dst[0] = 0x206E6D756C6F43;
        *(&__dst[0] + 1) = 0xE700000000000000;
        v105._countAndFlagsBits = v168._countAndFlagsBits;
        v106 = v173[0];
        v105._object = *v173;
        String.append(_:)(v105);
        v106;
        v105._countAndFlagsBits = 0xD000000000000011;
        String.append(_:)(v105);
        v162 = __dst[0];
        v107 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v107, 0, 0);
        *v108 = v162;
        *(v108 + 16) = 0;
        *(v108 + 32) = 0;
        *(v108 + 48) = 0;
        swift_willThrow();
        v109 = *(named + 8);
        v110 = v161;
        v111 = *v169;
LABEL_27:
        v109(v110, v111);
        v109(*v166, v111);
        return outlined consume of Result<_DataTable, Error>(v171._object, v172);
      }

      *&v162 = 0;
      outlined copy of Result<_DataTable, Error>(v82, 0);
      _UntypedColumn.valueAtIndex(index:)(0, 0.0);
      v85 = *(&__dst[0] + 1);
      v84 = *&__dst[0];
      if (LOBYTE(__dst[1]) != 2)
      {
        outlined consume of MLDataValue(*&__dst[0], *(&__dst[0] + 1), __dst[1]);
        v84 = 0;
        v85 = 0xE000000000000000;
      }

      outlined consume of Result<_DataTable, Error>(v164._object, 0);
      *&__dst[0] = v84;
      *(&__dst[0] + 1) = v85;
      v86 = String.init<A>(_:)(__dst, &type metadata for String, &protocol witness table for String, &protocol witness table for String);
      v88 = v87;
      URL.init(fileURLWithPath:)(v86, v87);
      v88;
      v89 = objc_opt_self(NSFileManager);
      v90 = [v89 defaultManager];
      v91 = v90;
      URL.path.getter(v90);
      v93 = v92;
      v94 = String._bridgeToObjectiveC()();
      v93;
      v95 = [v91 fileExistsAtPath:v94];

      if (v95)
      {
        v96 = *v173;
        countAndFlagsBits = v171._countAndFlagsBits;
        v98 = v168._object;
        v99 = *v167;
        v100 = v168._countAndFlagsBits;
      }

      else
      {
        v115 = v164._object;
        outlined copy of Result<_DataTable, Error>(v164._object, 0);
        MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v115, 0, 0.0);
        v117 = alloca(24);
        v118 = alloca(32);
        *&__src[1] = *v166;
        v119 = v162;
        v120 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_SSs5NeverOTg5(partial apply for closure #1 in static _VideoUtilities.getVideoURLsAndAnnotations(from:), __src, MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5);
        *&v162 = v119;
        MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
        *&__dst[0] = v120;
        v121 = alloca(24);
        v122 = alloca(24);
        *&__src[1] = __dst;
        ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
        v124 = v123;
        __dst[0];
        v125 = *v173;

        MLDataTable.willMutate()();
        *&__dst[0] = ML14_UntypedColumnC_s5Error_pTt1g5;
        BYTE8(__dst[0]) = v124 & 1;
        v100 = v168._countAndFlagsBits;
        MLDataTable.setColumnImpl(newColumn:named:)(__dst, v168._countAndFlagsBits, v125);
        v125;
        outlined consume of Result<_DataTable, Error>(*&__dst[0], SBYTE8(__dst[0]));
        if (!v172)
        {
          v126 = v171._object;
          outlined copy of Result<_DataTable, Error>(v171._object, 0);
          _DataTable.columnNamesDidChange()();
          outlined consume of Result<_DataTable, Error>(v126, 0);
        }

        countAndFlagsBits = v171._countAndFlagsBits;
        v98 = v168._object;
        v99 = *v167;
        v96 = *v173;
      }

      v127 = v162;
      v136._object = countAndFlagsBits;
      v136._countAndFlagsBits = v164._countAndFlagsBits;
      static _VideoUtilities.renameVideoTableColumns(table:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(&v171._object, v100, v96, *v165, v99, *v163, v98, v136);
      v128 = v96;
      v129 = named;
      if (v127)
      {
        v128;
        v99;
        v98;
        v171._countAndFlagsBits;
        outlined consume of Result<_DataTable, Error>(v164._object, 0);
        v109 = *(v129 + 8);
        v111 = *v169;
        v109(v160, *v169);
        v110 = v161;
        goto LABEL_27;
      }

      v128;
      v99;
      v98;
      v171._countAndFlagsBits;
      outlined consume of Result<_DataTable, Error>(v164._object, 0);
      v130 = *(v129 + 8);
      v131 = *v169;
      v130(v160, *v169);
      v130(v161, v131);
      v130(*v166, v131);
LABEL_36:
      result = v171._object;
      v132 = v172;
      v133 = v158;
      *v158 = v171._object;
      *(v133 + 8) = v132;
      return result;
    case 1u:
      v171._countAndFlagsBits = v9;
      *v173 = v10;
      v65 = v168._countAndFlagsBits;
      v56 = *v169;
      v57 = named;
      (*(named + 32))(v168._countAndFlagsBits, __src, *v169);
      v66 = *v163;
      static UTType.movie.getter();
      v67 = v162;
      v68 = static _FileUtilities.collectFilesLabeledByDirectoryName(at:type:)(v65, v66);
      if (v67)
      {
        (*(*v173 + 8))(*v163, v171._countAndFlagsBits);
        v61 = v168._countAndFlagsBits;
        return (*(v57 + 8))(v61, v56);
      }

      v101 = v68;
      (*(*v173 + 8))(*v163, v171._countAndFlagsBits);
      static _VideoUtilities.generateVideoTable(_:)(v101);
      v101;
      v113 = v140;
      v171._object = v139;
      LOBYTE(v172) = v140 & 1;
      LOBYTE(v140) = v140 & 1;
      outlined copy of Result<_DataTable, Error>(v139, v113);
      static _VideoUtilities.validateVideoInput(trainingData:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(&v139, 0x7461506F65646976, 0xE900000000000068, 0x6C6562616CLL, 0xE500000000000000, 0, 0, 0, 0);
      outlined consume of Result<_DataTable, Error>(v139, v140);
      v114 = v168._countAndFlagsBits;
      goto LABEL_29;
    case 2u:
      v171._countAndFlagsBits = v9;
      *v173 = v10;
      v55 = *v165;
      v56 = *v169;
      v57 = named;
      (*(named + 32))(*v165, __src, *v169);
      v58 = v164._countAndFlagsBits;
      static UTType.movie.getter();
      v59 = v162;
      v60 = static _FileUtilities.collectFilesLabeledByFileName(at:type:)(v55, v58);
      if (v59)
      {
        (*(*v173 + 8))(v164._countAndFlagsBits, v171._countAndFlagsBits);
        v61 = *v165;
        return (*(v57 + 8))(v61, v56);
      }

      v80 = v60;
      (*(*v173 + 8))(v164._countAndFlagsBits, v171._countAndFlagsBits);
      static _VideoUtilities.generateVideoTable(_:)(v80);
      v80;
      v112 = v140;
      v171._object = v139;
      LOBYTE(v172) = v140 & 1;
      LOBYTE(v140) = v140 & 1;
      outlined copy of Result<_DataTable, Error>(v139, v112);
      static _VideoUtilities.validateVideoInput(trainingData:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(&v139, 0x7461506F65646976, 0xE900000000000068, 0x6C6562616CLL, 0xE500000000000000, 0, 0, 0, 0);
      outlined consume of Result<_DataTable, Error>(v139, v140);
      v114 = *v165;
LABEL_29:
      (*(named + 8))(v114, v56);
      goto LABEL_36;
    case 3u:
      v62 = BYTE8(__src[1]);
      v63 = BYTE8(__src[2]);
      v64 = BYTE8(__src[3]);
      outlined consume of Result<_DataTable, Error>(*&__src[0], SBYTE8(__src[0]));
      v64;
      v63;
      v62;
      return MLDataTable.init()();
    case 4u:
      *v167 = *(&__src[1] + 1);
      *v169 = *&__src[1];
      v48 = *(&__src[2] + 1);
      v168._object = *&__src[2];
      v49 = *(&__src[3] + 1);
      *v166 = *&__src[3];
      v50 = *(&__src[4] + 1);
      v171._countAndFlagsBits = *&__src[4];
      v171._object = *&__src[0];
      LOBYTE(v172) = BYTE8(__src[0]) & 1;
      *v173 = *&__src[0];
      LODWORD(named) = DWORD2(__src[0]);
      outlined copy of Result<_DataTable, Error>(*&__src[0], SBYTE8(__src[0]));
      v51 = v49;
      v52 = v167[0];
      v53 = *v169;
      *v169 = v48;
      v54 = v162;
      v134._object = v50;
      v134._countAndFlagsBits = v171._countAndFlagsBits;
      static _VideoUtilities.renameVideoTableColumns(table:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(&v171._object, v53, *v167, v168._object, v48, *v166, v51, v134);
      if (!v54)
      {
        v52;
        v169[0];
        v50;
        v51;
        outlined consume of Result<_DataTable, Error>(*v173, named);
        goto LABEL_36;
      }

      v52;
      v169[0];
      v50;
      v51;
      outlined consume of Result<_DataTable, Error>(*v173, named);
      return outlined consume of Result<_DataTable, Error>(v171._object, v172);
    case 5u:
      v69 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *(__src + v69[12] + 8);
      *(__src + v69[16] + 8);
      *(__src + v69[20] + 8);
      (*(v171._countAndFlagsBits + 8))(__src, v168._object);
      return MLDataTable.init()();
    case 6u:
      v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v71 = v70[12];
      v168._countAndFlagsBits = *(__src + v71);
      *v173 = *(__src + v71 + 8);
      v72 = v70[16];
      *v165 = *(__src + v72);
      *v166 = *(__src + v72 + 8);
      v73 = v70[20];
      *v163 = *(__src + v73);
      named = *(__src + v73 + 8);
      v74 = v70[24];
      v164._countAndFlagsBits = *(__src + v74);
      *v169 = *(__src + v74 + 8);
      v75 = *v167;
      v76 = v168._object;
      v77 = v171._countAndFlagsBits;
      (*(v171._countAndFlagsBits + 32))(*v167, __src, v168._object);
      v78 = ML14_UntypedColumnC_s5Error_pTt1g5;
      *a1.i64 = (*(v77 + 16))(ML14_UntypedColumnC_s5Error_pTt1g5, v75, v76);
      v79 = v162;
      MLDataTable.init(_:convertArraysToShapedArrays:)(v78, 0, a1);
      if (v79)
      {
        (*(v171._countAndFlagsBits + 8))(*v167, v168._object);
        v166[0];
        v173[0];
        named;
        return v169[0];
      }

      v171._object = v139;
      LOBYTE(v172) = v140;
      v102 = v166[0];
      v103 = v169[0];
      v135._object = *v169;
      v135._countAndFlagsBits = v164._countAndFlagsBits;
      v104 = named;
      static _VideoUtilities.renameVideoTableColumns(table:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(&v171._object, v168._countAndFlagsBits, *v173, *v165, *v166, *v163, named, v135);
      (*(v171._countAndFlagsBits + 8))(*v167, v168._object);
      v173[0];
      v102;
      v103;
      v104;
      goto LABEL_36;
  }
}

uint64_t type metadata accessor for MLActionClassifier.DataSource(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLActionClassifier.DataSource;
  if (!type metadata singleton initialization cache for MLActionClassifier.DataSource)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLActionClassifier.DataSource);
  }

  return result;
}

uint64_t outlined init with copy of MLActionClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLActionClassifier.DataSource(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t _s11TabularData0B5FrameV8CreateMLE9expanding14keysColumnName06valueshI0ACSDySSSayxGG_S2StclufCSS_Tt3g5(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4, uint64_t a5)
{
  v51 = a5;
  v52 = a4;
  v54 = a3;
  v53 = a2;
  v6 = a1;
  v46 = v5;
  v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v47 = *(v50 - 8);
  v7 = *(v47 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = alloca(v7);
  v11 = alloca(v7);
  v55[0] = _swiftEmptyArrayStorage;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v13 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
  v49 = &v41;
  Column.init<A>(name:contents:)(a2, v54, v55, &type metadata for String, v12, v13);
  v55[0] = _swiftEmptyArrayStorage;
  v54 = &v41;
  v53 = v12;
  v42 = v13;
  Column.init<A>(name:contents:)(v52, v51, v55, &type metadata for String, v12, v13);
  swift_bridgeObjectRetain_n(a1, 2);
  v14 = specialized _copyCollectionToContiguousArray<A>(_:)(a1);
  a1;
  v55[0] = v14;
  specialized MutableCollection<>.sort(by:)(v55);
  a1;
  v15 = v55[0];
  v43 = *(v55[0] + 2);
  if (v43)
  {
    v48 = v55[0];
    v45 = v55[0] + 32;
    v16 = 0;
    v44 = a1;
    do
    {
      v17 = *&v45[16 * v16];
      v18 = *&v45[16 * v16 + 8];
      v19 = *(v6 + 16);

      v20 = _swiftEmptyArrayStorage;
      if (v19)
      {

        v21 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
        v22 = _swiftEmptyArrayStorage;
        if (v23)
        {
          v22 = *(*(v6 + 56) + 8 * v21);
        }

        v18;
        v20 = v22;
      }

      v51 = v16;
      v52 = v20;
      v24 = *(v20 + 2);
      if (v24)
      {
        v25 = static Array._allocateBufferUninitialized(minimumCapacity:)(*(v20 + 2), &type metadata for String);
        v26 = v25;
        v25[2] = v24;
        v25[4] = v17;
        v25[5] = v18;
        if (v24 != 1)
        {
          v27 = v25;
          v28 = v25 + 6;
          v29 = v24 - 2;
          while (1)
          {
            *v28 = v17;
            v28[1] = v18;
            if (v29-- == 0)
            {
              break;
            }

            v28 += 2;
          }

          v26 = v27;
        }
      }

      else
      {
        v18;
        v26 = _swiftEmptyArrayStorage;
      }

      v16 = v51 + 1;
      v55[0] = v26;
      v31 = v53;
      v32 = v42;
      Column.append<A>(contentsOf:)(v55, v50, v53, v42);
      v26;
      v33 = v52;
      v55[0] = v52;
      Column.append<A>(contentsOf:)(v55, v50, v31, v32);
      v33;
      v6 = v44;
    }

    while (v16 != v43);
    v44;
    v34 = v48;
  }

  else
  {
    a1;
    v34 = v15;
  }

  DataFrame.init()(v34);
  v35 = v49;
  DataFrame.append<A>(column:)(v49, &type metadata for String);
  v36 = v54;
  DataFrame.append<A>(column:)(v54, &type metadata for String);
  v37 = *(v47 + 8);
  v38 = v36;
  v39 = v50;
  v37(v38, v50);
  return (v37)(v35, v39);
}

uint64_t MLActionClassifier.DataSource.keypointsWithAnnotations(targetFrameRate:)(__m128 a1)
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
  v21 = type metadata accessor for MLActionClassifier.DataSource(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  outlined init with copy of MLActionClassifier.DataSource(v3, &v63);
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
    static MLActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(&v87, v72, v82);
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
    static MLActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(&v87, v27, v28);
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
    type metadata accessor for MLActionClassifier.FeatureExtractor();
    v39 = v84;
    static MLActionClassifier.FeatureExtractor.extractFeatures(from:targetFrameRate:)(v3, v82);
    if (v39)
    {
      return outlined destroy of MLActionClassifier.DataSource(&v63);
    }

    v87 = v78;
    LOBYTE(v88) = v79;
    outlined destroy of MLActionClassifier.DataSource(&v63);
  }

  result = v87;
  v61 = v88;
  v62 = v64;
  *v64 = v87;
  *(v62 + 8) = v61;
  return result;
}

uint64_t MLActionClassifier.DataSource.extractKeypoints(targetFrameRate:)(double a1)
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
  v27 = type metadata accessor for MLActionClassifier.DataSource(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = alloca(v28);
  v30 = alloca(v28);
  outlined init with copy of MLActionClassifier.DataSource(in._object, &v82);
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
        DataFrame.flattenNestedArrays(in:shape:)(v59, &outlined read-only object #0 of MLActionClassifier.DataSource.extractKeypoints(targetFrameRate:));
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
    static MLActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(&v107, v88, v89);
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

  type metadata accessor for MLActionClassifier.FeatureExtractor();
  v50 = v109;
  static MLActionClassifier.FeatureExtractor.extractFeatures(from:targetFrameRate:)(in._object, in._countAndFlagsBits);
  if (!v50)
  {
    v82 = v107;
    v83 = v108;
    DataFrame.init(_:)(&v82);
  }

  return outlined destroy of MLActionClassifier.DataSource(&v82);
}

uint64_t MLActionClassifier.DataSource.gatherAnnotatedFileNames()()
{
  v96 = v1;
  v95 = v0;
  v103 = type metadata accessor for DataFrame(0);
  v98 = *(v103 - 1);
  v3 = *(v98 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v101 = &v91;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v104 = &v91;
  v105 = type metadata accessor for UTType(0);
  v8 = *(v105 - 1);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v102 = &v91;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v100 = &v91;
  v107 = type metadata accessor for URL(0);
  v108 = *(v107 - 1);
  v14 = v108[8];
  v15 = alloca(v14);
  v16 = alloca(v14);
  v97 = &v91;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v106 = &v91;
  v19 = alloca(v14);
  v20 = alloca(v14);
  v99 = &v91;
  v21 = alloca(v14);
  v22 = alloca(v14);
  v94 = &v91;
  v23 = type metadata accessor for MLActionClassifier.DataSource(0);
  v24 = *(*(v23 - 8) + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v93 = v2;
  outlined init with copy of MLActionClassifier.DataSource(v2, &v91);
  switch(swift_getEnumCaseMultiPayload(&v91, v23))
  {
    case 0u:
      v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v28 = &v91 + v27[12];
      v29 = v27[16];
      v101 = *(&v91 + v29);
      v105 = *(&v91 + v29 + 8);
      v30 = v27[20];
      v104 = *(&v91 + v30);
      v99 = *(&v91 + v30 + 8);
      v31 = v27[24];
      v98 = *(&v91 + v31);
      v100 = *(&v91 + v31 + 8);
      v32 = v27[28];
      v102 = *(&v91 + v32);
      v103 = *(&v91 + v32 + 8);
      v33 = v108[4];
      v34 = v107;
      v33(v106, &v91, v107);
      v35 = v97;
      v36 = v34;
      v37 = v105;
      v33(v97, v28, v36);
      LOBYTE(v33) = v100;
      v38 = v35;
      LOBYTE(v35) = v99;
      MLActionClassifier.DataSource.gatherAnnotatedFileNamesForDirectory(url:annotationFile:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(v106, v38, v101, v37, v104, v99, v98, v100, v102, v103);
      v35;
      v37;
      v33;
      v103;
      v39 = v108[1];
      v40 = v107;
      v39(v97, v107);
      return (v39)(v106, v40);
    case 1u:
      v62 = v99;
      (v108[4])(v99, &v91, v107);
      v63 = v102;
      static UTType.movie.getter();
      v64 = v96;
      v65 = static _FileUtilities.collectFilesLabeledByDirectoryName(at:type:)(v62, v63);
      if (v64)
      {
        (*(v8 + 8))(v102, v105);
        v57 = v99;
        return (v108[1])(v57, v107);
      }

      v84 = v65;
      (*(v8 + 8))(v102, v105);
      v85 = specialized _NativeDictionary.mapValues<A>(_:)(v84);
      v84;
      v82 = v95;
      _s11TabularData0B5FrameV8CreateMLE9expanding14keysColumnName06valueshI0ACSDySSSayxGG_S2StclufCSS_Tt3g5(v85, 0x6C6562616CLL, 0xE500000000000000, 0x7461506F65646976, 0xE900000000000068);
      v83 = v99;
      goto LABEL_20;
    case 2u:
      v53 = v94;
      (v108[4])(v94, &v91, v107);
      v54 = v100;
      static UTType.movie.getter();
      v55 = v96;
      v56 = static _FileUtilities.collectFilesLabeledByFileName(at:type:)(v53, v54);
      if (v55)
      {
        (*(v8 + 8))(v100, v105);
        v57 = v94;
        return (v108[1])(v57, v107);
      }

      v80 = v56;
      (*(v8 + 8))(v100, v105);
      v81 = specialized _NativeDictionary.mapValues<A>(_:)(v80);
      v80;
      v82 = v95;
      _s11TabularData0B5FrameV8CreateMLE9expanding14keysColumnName06valueshI0ACSDySSSayxGG_S2StclufCSS_Tt3g5(v81, 0x6C6562616CLL, 0xE500000000000000, 0x7461506F65646976, 0xE900000000000068);
      v83 = v94;
LABEL_20:
      (v108[1])(v83, v107);
      v88 = v82;
      v89 = v103;
      return __swift_storeEnumTagSinglePayload(v88, 0, 1, v89);
    case 3u:
      v58 = v94;
      v59 = v96;
      v60 = v98;
      outlined consume of Result<_DataTable, Error>(v91, v92);
      v60;
      v59;
      v58;
      v61 = v103;
      return __swift_storeEnumTagSinglePayload(v95, 1, 1, v61);
    case 4u:
      v42 = v92;
      v97 = v93;
      v99 = v94;
      v43 = v95;
      v44 = v96;
      v102 = v93;
      v108 = v98;
      v101 = v94;
      v107 = v100;
      LOBYTE(v92) = v92 & 1;
      v105 = v91;
      LODWORD(v100) = v42;
      outlined copy of Result<_DataTable, Error>(v91, v42);
      v45 = v104;
      DataFrame.init(_:)(&v91);
      v46 = v45;
      v47 = v99;
      v48 = v97;
      v94 = v43;
      v49 = v43;
      v106 = v44;
      v50 = v102;
      v51 = v96;
      static _VideoUtilities.validateVideoInput(dataFrame:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(v46, v97, v99, v49, v44, v102, v108, v101, v107);
      if (!v51)
      {
        static _VideoUtilities.renameVideoColumns(dataFrame:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(v104, v48, v47, v94, v106, v50, v108, v101, v107);
        outlined consume of Result<_DataTable, Error>(v105, v100);
        v106;
        v47;
        v108;
        v107;
        v86 = v95;
        v87 = v103;
        (*(v98 + 32))(v95, v104, v103);
        v88 = v86;
        v89 = v87;
        return __swift_storeEnumTagSinglePayload(v88, 0, 1, v89);
      }

      (*(v98 + 8))(v104, v103);
      outlined consume of Result<_DataTable, Error>(v105, v100);
      v106;
      v47;
      v108;
      v52 = v107;
      return v52;
    case 5u:
      v66 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *(&v91 + v66[12] + 8);
      *(&v91 + v66[16] + 8);
      *(&v91 + v66[20] + 8);
      v67 = v103;
      (*(v98 + 8))(&v91, v103);
      v61 = v67;
      return __swift_storeEnumTagSinglePayload(v95, 1, 1, v61);
    case 6u:
      v68 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v69 = v68[12];
      v97 = *(&v91 + v69);
      v107 = *(&v91 + v69 + 8);
      v70 = v68[16];
      v102 = *(&v91 + v70);
      v71 = *(&v91 + v70 + 8);
      v72 = v68[20];
      v99 = *(&v91 + v72);
      v108 = *(&v91 + v72 + 8);
      v73 = v68[24];
      v74 = *(&v91 + v73);
      v106 = *(&v91 + v73 + 8);
      v75 = v101;
      v76 = v103;
      v105 = *(v98 + 32);
      (v105)(v101, &v91, v103);
      v77 = v75;
      v78 = v99;
      v104 = v71;
      v79 = v96;
      v96 = v74;
      static _VideoUtilities.validateVideoInput(dataFrame:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(v77, v97, v107, v102, v71, v99, v108, v74, v106);
      if (v79)
      {
        (*(v98 + 8))(v101, v76);
        v107;
        v104;
        v106;
        v52 = v108;
        return v52;
      }

      else
      {
        static _VideoUtilities.renameVideoColumns(dataFrame:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(v101, v97, v107, v102, v104, v78, v108, v96, v106);
        v104;
        v107;
        v108;
        v106;
        v90 = v95;
        (v105)(v95, v101, v76);
        v88 = v90;
        v89 = v76;
        return __swift_storeEnumTagSinglePayload(v88, 0, 1, v89);
      }
  }
}

uint64_t MLActionClassifier.DataSource.gatherAnnotatedFileNamesForDirectory(url:annotationFile:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, void *a10)
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
  v125 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  v126 = v144;
  OptionalColumnProtocol.filled(with:)(v150, v144, v125);
  v127 = v126;
  v128 = v153;
  (*(v145 + 8))(v124, v127);
  v129 = alloca(24);
  v130 = alloca(32);
  v142 = v143;
  v131 = v172;
  v132 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData12FilledColumnVyAF0G0VySSGG_SSSgs5NeverOTg5(partial apply for closure #1 in MLActionClassifier.DataSource.gatherAnnotatedFileNamesForDirectory(url:annotationFile:videoColumn:labelColumn:startTimeColumn:endTimeColumn:), &v140);
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

uint64_t MLActionClassifier.DataSource.stratifiedSplit(proportions:seed:labelColumn:)(void *a1, uint64_t a2, uint64_t a3, void *a4, __m128 a5)
{
  v8 = v6;
  v34 = a4;
  v35._countAndFlagsBits = a3;
  v39 = a2;
  v35._object = a1;
  v36 = v5;
  v9 = type metadata accessor for MLActionClassifier.DataSource(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  outlined init with copy of MLActionClassifier.DataSource(v7, &v32);
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
    MLActionClassifier.DataSource.keypointsWithAnnotations(targetFrameRate:)(0x403E000000000000uLL);
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

  MLActionClassifier.DataSource.videosWithAnnotations()(a5);
  if (v6)
  {
    return outlined destroy of MLActionClassifier.DataSource(&v32);
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
  return outlined destroy of MLActionClassifier.DataSource(&v32);
}

uint64_t outlined destroy of MLActionClassifier.DataSource(uint64_t a1)
{
  v1 = type metadata accessor for MLActionClassifier.DataSource(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t assignWithCopy for MLActionClassifier.DataSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of MLActionClassifier.DataSource(a1);
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

char *assignWithTake for MLActionClassifier.DataSource(char *__dst, char *__src, uint64_t a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLActionClassifier.DataSource(__dst);
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

uint64_t type metadata completion function for MLActionClassifier.DataSource(uint64_t a1)
{
  v1 = type metadata accessor for URL(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v21 = a1;
    v4 = *(v1 - 8) + 64;
    v13 = v4;
    v14 = v4;
    v15 = &unk_348D80;
    v16 = &unk_348D80;
    v17 = &unk_348D98;
    v18 = &unk_348D98;
    swift_getTupleTypeLayout(v11, 0, 6);
    v20[0] = v11;
    v20[1] = v4;
    v20[2] = v4;
    v20[3] = &unk_348DB0;
    v20[4] = &unk_348DC8;
    v5 = type metadata accessor for DataFrame(319);
    v2 = v5;
    if (v6 <= 0x3F)
    {
      v13 = *(v5 - 8) + 64;
      v7 = v13;
      v14 = &unk_348D80;
      v15 = &unk_348D80;
      v16 = &unk_348D80;
      v2 = 0;
      swift_getTupleTypeLayout(v19, 0, 4);
      v20[5] = v19;
      v13 = v7;
      v14 = &unk_348D80;
      v15 = &unk_348D80;
      v16 = &unk_348D98;
      v17 = &unk_348D98;
      swift_getTupleTypeLayout(v12, 0, 5);
      v20[6] = v12;
      swift_initEnumMetadataMultiPayload(v21, 256, 7, v20, v8, v9);
    }
  }

  return v2;
}

uint64_t BlobMetadata.dataType.getter()
{
  v1 = *(v0 + 4);
  v2 = 0x2010003u >> (8 * v1);
  v3 = v1 < 4;
  result = 3;
  if (v3)
  {
    return v2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BlobMetadata(uint64_t a1, int a2)
{
  result = 0;
  if (a2)
  {
    if (*(a1 + 64))
    {
      return (*a1 + 1);
    }
  }

  return result;
}

void storeEnumTagSinglePayload for BlobMetadata(uint64_t a1, int a2, int a3)
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

  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *a1 = (a2 - 1);
  v3 = 1;
  if (a3)
  {
LABEL_6:
    *(a1 + 64) = v3;
  }
}

uint64_t type metadata accessor for MLTextClassifier.ModelParameters(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLTextClassifier.ModelParameters;
  if (!type metadata singleton initialization cache for MLTextClassifier.ModelParameters)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLTextClassifier.ModelParameters);
  }

  return result;
}

uint64_t MLTextClassifier.ModelParameters.init(validation:algorithm:language:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[0] = a3;
  v4 = v3;
  v5 = *(*(type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  v9 = v8[5];
  v10 = v8[6];
  *(v4 + v10 + 16) = 0;
  *(v4 + v10) = 0;
  *(v4 + v8[7]) = 0;
  *(v4 + v8[8]) = 0;
  v11 = v8[9];
  *(v4 + v11) = 0;
  *(v4 + v11 + 8) = 1;
  outlined init with copy of MLTrainingSessionParameters(a2, v4, type metadata accessor for MLTextClassifier.ModelAlgorithmType);
  *(v4 + v9) = v13[0];
  outlined init with copy of MLTrainingSessionParameters(a1, v13, type metadata accessor for MLTextClassifier.ModelParameters.ValidationData);
  MLTextClassifier.ModelParameters.validation.setter(v13);
  outlined destroy of MLActivityClassifier.ModelParameters(a2, type metadata accessor for MLTextClassifier.ModelAlgorithmType);
  return outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLTextClassifier.ModelParameters.ValidationData);
}

uint64_t MLTextClassifier.ModelParameters.validation.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  outlined init with copy of Any?(v1 + *(v3 + 24), &v7);
  if (!v8)
  {
    BUG();
  }

  outlined init with take of Any(&v7, v6);
  v4 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
  return swift_dynamicCast(v2, v6, &type metadata for Any + 8, v4, 7);
}

uint64_t MLTextClassifier.ModelParameters.init(validationData:algorithm:language:textColumnValidationData:labelColumnValidationData:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a4;
  v9 = v7;
  v10 = a2;
  v30 = a6;
  v34 = a5;
  v32 = *a1;
  v11 = *(a1 + 8);
  v12 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  v13 = v12[6];
  *(v9 + v13 + 16) = 0;
  *(v9 + v13) = 0;
  *(v9 + v12[7]) = 0;
  *(v9 + v12[8]) = 0;
  v14 = v12[9];
  *(v9 + v14) = 0;
  v31 = v9 + v13;
  *(v9 + v14 + 8) = 1;
  v35 = a2;
  if (v11 != -1)
  {
    v33 = a3;
    if (!v34)
    {
      v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any>);
      v16 = swift_allocObject(v15, 64, 7);
      v17 = v16;
      v16[2] = 1;
      v16[3] = 2;
      v16[7] = &type metadata for String;
      v16[4] = 0xD00000000000005CLL;
      v16[5] = "Missing event metric for key " + 0x8000000000000000;
      print(_:separator:terminator:)(v16, 32, 0xE100000000000000, 10, 0xE100000000000000);
      v18 = v17;
      v10 = v35;
      v18;
    }

    a3 = v33;
    if (!a7)
    {
      v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any>);
      v20 = swift_allocObject(v19, 64, 7);
      v21 = v20;
      v20[2] = 1;
      v20[3] = 2;
      v20[7] = &type metadata for String;
      v20[4] = 0xD00000000000005ELL;
      v20[5] = "ified, default to use 'text'" + 0x8000000000000000;
      print(_:separator:terminator:)(v20, 32, 0xE100000000000000, 10, 0xE100000000000000);
      v22 = v21;
      v10 = v35;
      v22;
    }
  }

  v23 = v12[5];
  outlined init with copy of MLTrainingSessionParameters(v10, v9, type metadata accessor for MLTextClassifier.ModelAlgorithmType);
  *(v9 + v23) = a3;
  v27 = v32;
  v28 = v11;
  v26[3] = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
  __swift_allocate_boxed_opaque_existential_0(v26);
  v24 = a3;
  MLTextClassifier.ModelParameters.ValidationData.init(_:textColumn:labelColumn:)(&v27, 1954047348, 0xE400000000000000, 0x6C6562616CLL, 0xE500000000000000);
  outlined assign with take of Any?(v26, v31);
  MLTextClassifier.ModelParameters.textColumnValidationData.setter(v29, v34);
  MLTextClassifier.ModelParameters.labelColumnValidationData.setter(v30, a7);

  return outlined destroy of MLActivityClassifier.ModelParameters(v35, type metadata accessor for MLTextClassifier.ModelAlgorithmType);
}

id MLTextClassifier.ModelParameters.description.getter()
{
  v1._countAndFlagsBits = MLTextClassifier.ModelAlgorithmType.description.getter();
  object = v1._object;
  v9 = 0xD000000000000010;
  v10 = "than the trained model." + 0x8000000000000000;
  String.append(_:)(v1);
  object;

  v3._countAndFlagsBits = 0x676175676E614C0ALL;
  v3._object = 0xEB00000000203A65;
  String.append(_:)(v3);
  ("than the trained model." + 0x8000000000000000);
  v9 = *(v0 + *(type metadata accessor for MLTextClassifier.ModelParameters(0) + 20));
  v9;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NLLanguage?);
  v9 = String.init<A>(describing:)(&v9, v4);
  v10 = v5;
  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v6 = v9;
  v7 = v10;
  v9 = 0xD000000000000010;
  v10 = "than the trained model." + 0x8000000000000000;

  v3._countAndFlagsBits = v6;
  v3._object = v7;
  String.append(_:)(v3);
  ("than the trained model." + 0x8000000000000000);
  v7;
  return v9;
}

void *MLTextClassifier.ModelParameters.language.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLTextClassifier.ModelParameters(0) + 20));
  v1;
  return v1;
}

void MLTextClassifier.ModelParameters.language.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLTextClassifier.ModelParameters(0) + 20);

  *(v1 + v2) = a1;
}

uint64_t key path setter for MLTextClassifier.ModelParameters.validation : MLTextClassifier.ModelParameters(uint64_t a1)
{
  v6[0] = v1;
  v2 = *(*(type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  outlined init with copy of MLTrainingSessionParameters(a1, v6, type metadata accessor for MLTextClassifier.ModelParameters.ValidationData);
  return MLTextClassifier.ModelParameters.validation.setter(v6);
}

uint64_t MLTextClassifier.ModelParameters.validation.setter(uint64_t a1)
{
  v2 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  v3 = *(v2 + 28);
  *(v1 + v3 + 8);
  *(v1 + v3) = 0;
  v6[3] = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v6);
  outlined init with take of MLClassifierMetrics(a1, boxed_opaque_existential_0, type metadata accessor for MLTextClassifier.ModelParameters.ValidationData);
  return outlined assign with take of Any?(v6, v1 + *(v2 + 24));
}

void (*MLTextClassifier.ModelParameters.validation.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = malloc(0x58uLL);
  *a1 = v2;
  *(v2 + 8) = v1;
  v3 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
  v4 = *(*(v3 - 8) + 64);
  *(v2 + 9) = malloc(v4);
  v5 = malloc(v4);
  *(v2 + 10) = v5;
  v6 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  outlined init with copy of Any?(v1 + *(v6 + 24), (v2 + 2));
  if (!*(v2 + 7))
  {
    BUG();
  }

  outlined init with take of Any(v2 + 2, v2);
  swift_dynamicCast(v5, v2, &type metadata for Any + 8, v3, 7);
  return MLTextClassifier.ModelParameters.validation.modify;
}

void MLTextClassifier.ModelParameters.validation.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  if (a2)
  {
    outlined init with copy of MLTrainingSessionParameters(*(*a1 + 80), v4, type metadata accessor for MLTextClassifier.ModelParameters.ValidationData);
    MLTextClassifier.ModelParameters.validation.setter(v4);
    outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLTextClassifier.ModelParameters.ValidationData);
  }

  else
  {
    MLTextClassifier.ModelParameters.validation.setter(*(*a1 + 80));
  }

  free(v3);
  free(v4);
  free(v2);
}

uint64_t MLTextClassifier.ModelParameters.maxIterations.setter(uint64_t a1, char a2)
{
  result = *(type metadata accessor for MLTextClassifier.ModelParameters(0) + 36);
  *(v2 + result) = a1;
  *(v2 + result + 8) = a2 & 1;
  return result;
}

uint64_t (*MLTextClassifier.ModelParameters.maxIterations.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v2 = *(type metadata accessor for MLTextClassifier.ModelParameters(0) + 36);
  *(a1 + 12) = v2;
  v3 = *(v1 + v2);
  LOBYTE(v2) = *(v1 + v2 + 8);
  *a1 = v3;
  *(a1 + 8) = v2;
  return MLTextClassifier.ModelParameters.maxIterations.modify;
}

uint64_t MLTextClassifier.ModelParameters.maxIterations.modify(uint64_t a1)
{
  result = *(a1 + 12);
  v2 = *(a1 + 16);
  v3 = *(a1 + 8);
  *(v2 + result) = *a1;
  *(v2 + result + 8) = v3;
  return result;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLTextClassifier.ModelParameters.validateRevision()()
{
  v1 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  outlined init with copy of MLTrainingSessionParameters(v0, &v18, type metadata accessor for MLTextClassifier.ModelAlgorithmType);
  if (swift_getEnumCaseMultiPayload(&v18, v1) > 1)
  {
    v11 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLTextClassifier.FeatureExtractorType, revision: Int?)) + 48);
    if (!*(&v18 + v11 + 8))
    {
      v12 = *(&v18 + v11);
      if (!NLPClassifierModelIsRevisionSupported(v12))
      {
        *&v19 = 0;
        *(&v19 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(29);
        SBYTE8(v19);
        *&v19 = 0x6E6F697369766552;
        *(&v19 + 1) = 0xE900000000000020;
        v20 = v12;
        v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        object = v13._object;
        String.append(_:)(v13);
        object;
        v15._object = "und in the model." + 0x8000000000000000;
        v15._countAndFlagsBits = 0xD000000000000012;
        String.append(_:)(v15);
        v21 = v19;
        v16 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v16, 0, 0);
        *v17 = v21;
        *(v17 + 16) = 0;
        *(v17 + 32) = 0;
        *(v17 + 48) = 0;
        swift_willThrow();
      }
    }

    outlined destroy of MLActivityClassifier.ModelParameters(&v18, type metadata accessor for MLTextClassifier.FeatureExtractorType);
  }

  else if (!v19)
  {
    v5 = v18;
    if (!NLPClassifierModelIsRevisionSupported(v18))
    {
      *&v19 = 0;
      *(&v19 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(29);
      SBYTE8(v19);
      *&v19 = 0x6E6F697369766552;
      *(&v19 + 1) = 0xE900000000000020;
      v20 = v5;
      v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
      v7 = v6._object;
      String.append(_:)(v6);
      v7;
      v8._object = "und in the model." + 0x8000000000000000;
      v8._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v8);
      v21 = v19;
      v9 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v9, 0, 0);
      *v10 = v21;
      *(v10 + 16) = 0;
      *(v10 + 32) = 0;
      *(v10 + 48) = 0;
      swift_willThrow();
    }
  }
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLTextClassifier.ModelParameters.validateCustomEmbeddingURL()()
{
  *&v32 = v0;
  v35 = v1;
  v36 = type metadata accessor for URL(0);
  v34 = *(v36 - 8);
  v2 = *(v34 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v33 = v30;
  v5 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = *(*(type metadata accessor for MLTextClassifier.FeatureExtractorType(0) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = alloca(v9);
  v13 = alloca(v9);
  outlined init with copy of MLTrainingSessionParameters(v35, v30, type metadata accessor for MLTextClassifier.ModelAlgorithmType);
  if (swift_getEnumCaseMultiPayload(v30, v5) != 2)
  {
    v16 = type metadata accessor for MLTextClassifier.ModelAlgorithmType;
    v15 = v30;
    goto LABEL_5;
  }

  outlined init with take of MLClassifierMetrics(v30, v30, type metadata accessor for MLTextClassifier.FeatureExtractorType);
  outlined init with copy of MLTrainingSessionParameters(v30, v30, type metadata accessor for MLTextClassifier.FeatureExtractorType);
  v14 = v36;
  if (__swift_getEnumTagSinglePayload(v30, 4, v36))
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v30, type metadata accessor for MLTextClassifier.FeatureExtractorType);
    v15 = v30;
    v16 = type metadata accessor for MLTextClassifier.FeatureExtractorType;
LABEL_5:
    outlined destroy of MLActivityClassifier.ModelParameters(v15, v16);
    return;
  }

  v35 = v30;
  (*(v34 + 32))(v33, v30, v14);
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v17, v30);
  inited[2] = 3;
  inited[3] = 6;
  inited[4] = 0x6C65646F6D6C6DLL;
  inited[5] = 0xE700000000000000;
  inited[6] = 0x636C65646F6D6C6DLL;
  inited[7] = 0xE800000000000000;
  inited[8] = 7627108;
  inited[9] = 0xE300000000000000;
  if (URL.isFileURL.getter(v17, v30))
  {
    *&v19 = URL.pathExtension.getter();
    v20 = BYTE8(v19);
    v21 = specialized Sequence<>.contains(_:)(v19, inited);
    v20;
    swift_setDeallocating(inited);
    v22 = v33;
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    if (v21)
    {
      (*(v34 + 8))(v22, v36);
      v16 = type metadata accessor for MLTextClassifier.FeatureExtractorType;
      v15 = v35;
      goto LABEL_5;
    }
  }

  else
  {
    swift_setDeallocating(inited);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
  }

  *&v31 = 0;
  *(&v31 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  v23._object = "cified, default to use 'label'" + 0x8000000000000000;
  v23._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v23);
  v24 = lazy protocol witness table accessor for type URL and conformance URL();
  v25 = dispatch thunk of CustomStringConvertible.description.getter(v36, v24);
  v27 = v26;
  v23._countAndFlagsBits = v25;
  v23._object = v26;
  String.append(_:)(v23);
  v27;
  v23._object = "The custom embedding " + 0x8000000000000000;
  v23._countAndFlagsBits = 0xD00000000000001DLL;
  String.append(_:)(v23);
  v32 = v31;
  v28 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v28, 0, 0);
  *v29 = v32;
  *(v29 + 16) = 0;
  *(v29 + 32) = 0;
  *(v29 + 48) = 0;
  swift_willThrow();
  (*(v34 + 8))(v33, v36);
  outlined destroy of MLActivityClassifier.ModelParameters(v35, type metadata accessor for MLTextClassifier.FeatureExtractorType);
}

id MLTextClassifier.ModelParameters.playgroundDescription.getter()
{
  v1 = v0;
  result = MLTextClassifier.ModelParameters.description.getter();
  v1[3] = &type metadata for String;
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t MLTextClassifier.ModelParameters.validationData.getter(__m128 a1)
{
  v2 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  outlined init with copy of Any?(v1 + *(v6 + 24), &v10);
  if (!v11)
  {
    BUG();
  }

  outlined init with take of Any(&v10, v9);
  swift_dynamicCast(&v8, v9, &type metadata for Any + 8, v2, 7);
  MLTextClassifier.ModelParameters.ValidationData.table.getter(a1);
  return outlined destroy of MLActivityClassifier.ModelParameters(&v8, type metadata accessor for MLTextClassifier.ModelParameters.ValidationData);
}

uint64_t key path getter for MLTextClassifier.ModelParameters.validationData : MLTextClassifier.ModelParameters(__m128 a1)
{
  v2 = v1;
  MLTextClassifier.ModelParameters.validationData.getter(a1);
  result = v4;
  *v2 = v4;
  *(v2 + 8) = v5;
  return result;
}

uint64_t key path setter for MLTextClassifier.ModelParameters.validationData : MLTextClassifier.ModelParameters(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  outlined copy of MLDataTable?(v3, v1);
  return MLTextClassifier.ModelParameters.validationData.setter(&v3);
}

uint64_t MLTextClassifier.ModelParameters.validationData.setter(uint64_t *a1)
{
  v2 = *(a1 + 8);
  v6 = *a1;
  v7 = v2;
  v5[3] = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
  __swift_allocate_boxed_opaque_existential_0(v5);
  MLTextClassifier.ModelParameters.ValidationData.init(_:textColumn:labelColumn:)(&v6, 1954047348, 0xE400000000000000, 0x6C6562616CLL, 0xE500000000000000);
  v3 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  return outlined assign with take of Any?(v5, v1 + *(v3 + 24));
}

void (*MLTextClassifier.ModelParameters.validationData.modify(void *a1, __m128 a2))(uint64_t *a1, char a2)
{
  v3 = malloc(0x38uLL);
  *a1 = v3;
  v3[6] = v2;
  MLTextClassifier.ModelParameters.validationData.getter(a2);
  return MLTextClassifier.ModelParameters.validationData.modify;
}

void MLTextClassifier.ModelParameters.validationData.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 48);
  v8 = v3;
  v9 = v4;
  *(v2 + 24) = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
  __swift_allocate_boxed_opaque_existential_0(v2);
  if (a2)
  {
    outlined copy of MLDataTable?(v3, v4);
    MLTextClassifier.ModelParameters.ValidationData.init(_:textColumn:labelColumn:)(&v8, 1954047348, 0xE400000000000000, 0x6C6562616CLL, 0xE500000000000000);
    v6 = type metadata accessor for MLTextClassifier.ModelParameters(0);
    outlined assign with take of Any?(v2, *(v6 + 24) + v5);
    outlined consume of MLDataTable?(*(v2 + 32), *(v2 + 40));
  }

  else
  {
    MLTextClassifier.ModelParameters.ValidationData.init(_:textColumn:labelColumn:)(&v8, 1954047348, 0xE400000000000000, 0x6C6562616CLL, 0xE500000000000000);
    v7 = type metadata accessor for MLTextClassifier.ModelParameters(0);
    outlined assign with take of Any?(v2, *(v7 + 24) + v5);
  }

  free(v2);
}

uint64_t MLTextClassifier.ModelParameters.textColumnValidationData.getter()
{
  v1 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  outlined init with copy of Any?(v0 + *(v5 + 24), &v12);
  if (!v13)
  {
    BUG();
  }

  outlined init with take of Any(&v12, &v10);
  swift_dynamicCast(&v10, &v10, &type metadata for Any + 8, v1, 7);
  if (swift_getEnumCaseMultiPayload(&v10, v1) == 1)
  {
    v6 = v10;
    v7 = v11;
    v8 = BYTE8(v10);
    SBYTE8(v12);
    outlined consume of Result<_DataTable, Error>(v6, v8);
  }

  else
  {
    outlined destroy of MLActivityClassifier.ModelParameters(&v10, type metadata accessor for MLTextClassifier.ModelParameters.ValidationData);
    v7 = *(v0 + *(v5 + 28));
  }

  return v7;
}

uint64_t MLTextClassifier.ModelParameters.textColumnValidationData.setter(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v25 = a1;
  v3 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = alloca(v4);
  v8 = alloca(v4);
  v27 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  v9 = *(v27 + 24);
  v24 = v2;
  outlined init with copy of Any?(v2 + v9, &v21);
  if (!v22)
  {
    BUG();
  }

  outlined init with take of Any(&v21, &v18);
  swift_dynamicCast(&v18, &v18, &type metadata for Any + 8, v3, 7);
  if (swift_getEnumCaseMultiPayload(&v18, v3) == 1)
  {
    v10 = v18;
    v28 = BYTE8(v18);
    v23 = v21;
    v20;
    v11 = *(v27 + 28);
    v12 = v24;
    *(v24 + v11 + 8);
    v13 = v25;
    if (!v26)
    {
      v13 = 1954047348;
    }

    v14 = 0xE400000000000000;
    if (v26)
    {
      v14 = v26;
    }

    *(v12 + v11) = 0;
    *&v18 = v10;
    BYTE8(v18) = v28;
    v19 = v13;
    v20 = v14;
    v21 = v23;
    swift_storeEnumTagMultiPayload(&v18, v3, 1);
    return MLTextClassifier.ModelParameters.validation.setter(&v18);
  }

  else
  {
    outlined destroy of MLActivityClassifier.ModelParameters(&v18, type metadata accessor for MLTextClassifier.ModelParameters.ValidationData);
    v16 = *(v27 + 28);
    v17 = v24;
    *(v24 + v16 + 8);
    *(v17 + v16) = v25;
    result = v26;
    *(v17 + v16 + 8) = v26;
  }

  return result;
}

uint64_t (*MLTextClassifier.ModelParameters.textColumnValidationData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = MLTextClassifier.ModelParameters.textColumnValidationData.getter();
  a1[1] = v2;
  return MLTextClassifier.ModelParameters.textColumnValidationData.modify;
}

uint64_t MLTextClassifier.ModelParameters.init(validationData:algorithm:language:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v6 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  v7 = v6[5];
  v8 = (v6[6] + v5);
  v20 = v8;
  v8[1] = 0;
  *v8 = 0;
  *(v5 + v6[7]) = 0;
  *(v5 + v6[8]) = 0;
  v9 = v6[9];
  *(v5 + v9) = 0;
  *(v5 + v9 + 8) = 1;
  v19 = a2;
  outlined init with copy of MLTrainingSessionParameters(a2, v5, type metadata accessor for MLTextClassifier.ModelAlgorithmType);
  *(v5 + v7) = a3;
  v21 = a3;
  v18 = a1;
  v10 = static _TextUtilities.getTextLabeledDictionary(from:)(a1, 0.0);
  LOBYTE(a3) = v10;
  specialized generateTextTable<A>(_:textColumn:labelColumn:using:)(v10, 1954047348, 0xE400000000000000, 0x6C6562616CLL, 0xE500000000000000, v11);
  a3;
  v13 = v15;
  v14 = v16;
  v17 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
  __swift_allocate_boxed_opaque_existential_0(&v15);
  MLTextClassifier.ModelParameters.ValidationData.init(_:textColumn:labelColumn:)(&v13, 1954047348, 0xE400000000000000, 0x6C6562616CLL, 0xE500000000000000);
  outlined assign with take of Any?(&v15, v20);
  MLTextClassifier.ModelParameters.textColumnValidationData.setter(1954047348, 0xE400000000000000);
  MLTextClassifier.ModelParameters.labelColumnValidationData.setter(0x6C6562616CLL, 0xE500000000000000);

  outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLTextClassifier.ModelAlgorithmType);
  return outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLTextClassifier.DataSource);
}

{
  v5 = v3;
  v6 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  v7 = v6[5];
  v8 = (v6[6] + v5);
  v18 = v8;
  v8[1] = 0;
  *v8 = 0;
  *(v5 + v6[7]) = 0;
  *(v5 + v6[8]) = 0;
  v9 = v6[9];
  *(v5 + v9) = 0;
  *(v5 + v9 + 8) = 1;
  v17 = a2;
  outlined init with copy of MLTrainingSessionParameters(a2, v5, type metadata accessor for MLTextClassifier.ModelAlgorithmType);
  *(v5 + v7) = a3;
  v19 = a3;
  specialized generateTextTable<A>(_:textColumn:labelColumn:using:)(a1, 1954047348, 0xE400000000000000, 0x6C6562616CLL, 0xE500000000000000, v10);
  a1;
  v12 = v14;
  v13 = v15;
  v16 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
  __swift_allocate_boxed_opaque_existential_0(&v14);
  MLTextClassifier.ModelParameters.ValidationData.init(_:textColumn:labelColumn:)(&v12, 1954047348, 0xE400000000000000, 0x6C6562616CLL, 0xE500000000000000);
  outlined assign with take of Any?(&v14, v18);
  MLTextClassifier.ModelParameters.textColumnValidationData.setter(1954047348, 0xE400000000000000);
  MLTextClassifier.ModelParameters.labelColumnValidationData.setter(0x6C6562616CLL, 0xE500000000000000);

  return outlined destroy of MLActivityClassifier.ModelParameters(v17, type metadata accessor for MLTextClassifier.ModelAlgorithmType);
}

uint64_t MLTextClassifier.ModelParameters.labelColumnValidationData.setter(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v24 = a1;
  v3 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = alloca(v4);
  v8 = alloca(v4);
  v26 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  v9 = *(v26 + 24);
  v23 = v2;
  outlined init with copy of Any?(v2 + v9, &v20);
  if (!v21)
  {
    BUG();
  }

  outlined init with take of Any(&v20, &v18);
  swift_dynamicCast(&v18, &v18, &type metadata for Any + 8, v3, 7);
  if (swift_getEnumCaseMultiPayload(&v18, v3) == 1)
  {
    v10 = v18;
    v27 = BYTE8(v18);
    v22 = v19;
    SBYTE8(v20);
    v11 = *(v26 + 32);
    v12 = v23;
    *(v23 + v11 + 8);
    v13 = v24;
    if (!v25)
    {
      v13 = 0x6C6562616CLL;
    }

    v14 = 0xE500000000000000;
    if (v25)
    {
      v14 = v25;
    }

    *(v12 + v11) = 0;
    *&v18 = v10;
    BYTE8(v18) = v27;
    v19 = v22;
    *&v20 = v13;
    *(&v20 + 1) = v14;
    swift_storeEnumTagMultiPayload(&v18, v3, 1);
    return MLTextClassifier.ModelParameters.validation.setter(&v18);
  }

  else
  {
    outlined destroy of MLActivityClassifier.ModelParameters(&v18, type metadata accessor for MLTextClassifier.ModelParameters.ValidationData);
    v16 = *(v26 + 32);
    v17 = v23;
    *(v23 + v16 + 8);
    *(v17 + v16) = v24;
    result = v25;
    *(v17 + v16 + 8) = v25;
  }

  return result;
}

uint64_t outlined assign with take of MLTextClassifier.ModelAlgorithmType(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
  (*(*(v2 - 8) + 40))(a2, a1, v2);
  return a2;
}

uint64_t MLTextClassifier.ModelParameters.labelColumnValidationData.getter()
{
  v1 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  outlined init with copy of Any?(v0 + *(v5 + 24), &v12);
  if (!v13)
  {
    BUG();
  }

  outlined init with take of Any(&v12, &v10);
  swift_dynamicCast(&v10, &v10, &type metadata for Any + 8, v1, 7);
  if (swift_getEnumCaseMultiPayload(&v10, v1) == 1)
  {
    v6 = v10;
    v7 = v12;
    v8 = BYTE8(v10);
    v11;
    outlined consume of Result<_DataTable, Error>(v6, v8);
  }

  else
  {
    outlined destroy of MLActivityClassifier.ModelParameters(&v10, type metadata accessor for MLTextClassifier.ModelParameters.ValidationData);
    v7 = *(v0 + *(v5 + 32));
  }

  return v7;
}

uint64_t (*MLTextClassifier.ModelParameters.labelColumnValidationData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = MLTextClassifier.ModelParameters.labelColumnValidationData.getter();
  a1[1] = v2;
  return MLTextClassifier.ModelParameters.labelColumnValidationData.modify;
}

uint64_t sub_2B6E7E()
{
  v1 = v0;
  result = MLTextClassifier.ModelParameters.maxIterations.getter();
  *v1 = result;
  *(v1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2B6EBC(uint64_t a1)
{
  v2 = v1;
  result = MLTextClassifier.ModelParameters.textColumnValidationData.getter();
  *v2 = result;
  v2[1] = v4;
  return result;
}

uint64_t sub_2B6EEC(uint64_t a1)
{
  v2 = v1;
  result = MLTextClassifier.ModelParameters.labelColumnValidationData.getter();
  *v2 = result;
  v2[1] = v4;
  return result;
}

char *initializeBufferWithCopyOfBuffer for MLTextClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  v3 = __dst;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *__src;
    *v3 = *__src;
    v3 = (v9 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
    if (swift_getEnumCaseMultiPayload(__src, v6) == 2)
    {
      v7 = type metadata accessor for URL(0);
      if (__swift_getEnumTagSinglePayload(__src, 4, v7))
      {
        v8 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
        memcpy(__dst, __src, *(*(v8 - 8) + 64));
      }

      else
      {
        (*(*(v7 - 8) + 16))(__dst, __src, v7);
        __swift_storeEnumTagSinglePayload(__dst, 0, 4, v7);
      }

      v10 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLTextClassifier.FeatureExtractorType, revision: Int?)) + 48);
      __dst[v10 + 8] = __src[v10 + 8];
      *&__dst[v10] = *&__src[v10];
      swift_storeEnumTagMultiPayload(__dst, v6, 2);
    }

    else
    {
      memcpy(__dst, __src, *(*(v6 - 8) + 64));
    }

    v11 = a3[5];
    v12 = *&__src[v11];
    *&v3[v11] = v12;
    v22 = a3;
    v13 = a3[6];
    v14 = &v3[v13];
    v15 = &__src[v13];
    v16 = *&__src[v13 + 24];
    v12;
    if (v16)
    {
      *(v14 + 3) = v16;
      (**(v16 - 8))(v14, v15, v16);
    }

    else
    {
      v17 = *v15;
      *(v14 + 1) = *(v15 + 1);
      *v14 = v17;
    }

    v18 = v22[7];
    *&v3[v18] = *&__src[v18];
    *&v3[v18 + 8] = *&__src[v18 + 8];
    v19 = v22[8];
    *&v3[v19] = *&__src[v19];
    *&v3[v19 + 8] = *&__src[v19 + 8];
    v20 = v22[9];
    v3[v20 + 8] = __src[v20 + 8];
    *&v3[v20] = *&__src[v20];
  }

  return v3;
}

uint64_t destroy for MLTextClassifier.ModelParameters(uint64_t a1, int *a2)
{
  v3 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
  if (swift_getEnumCaseMultiPayload(a1, v3) == 2)
  {
    v4 = type metadata accessor for URL(0);
    if (!__swift_getEnumTagSinglePayload(a1, 4, v4))
    {
      (*(*(v4 - 8) + 8))(a1, v4);
    }
  }

  v5 = a2[6];
  if (*(a1 + v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v5));
  }

  *(a1 + a2[7] + 8);
  return *(a1 + a2[8] + 8);
}

char *initializeWithCopy for MLTextClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  v4 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
  if (swift_getEnumCaseMultiPayload(__src, v4) == 2)
  {
    v5 = type metadata accessor for URL(0);
    if (__swift_getEnumTagSinglePayload(__src, 4, v5))
    {
      v6 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
      memcpy(__dst, __src, *(*(v6 - 8) + 64));
    }

    else
    {
      (*(*(v5 - 8) + 16))(__dst, __src, v5);
      __swift_storeEnumTagSinglePayload(__dst, 0, 4, v5);
    }

    v7 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLTextClassifier.FeatureExtractorType, revision: Int?)) + 48);
    __dst[v7 + 8] = __src[v7 + 8];
    *&__dst[v7] = *&__src[v7];
    swift_storeEnumTagMultiPayload(__dst, v4, 2);
  }

  else
  {
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  v8 = a3[5];
  v9 = *&__src[v8];
  *&__dst[v8] = v9;
  v10 = a3[6];
  v11 = &__dst[v10];
  v12 = &__src[v10];
  v13 = *&__src[v10 + 24];
  v9;
  if (v13)
  {
    *(v11 + 3) = v13;
    (**(v13 - 8))(v11, v12, v13);
  }

  else
  {
    v14 = *v12;
    *(v11 + 1) = *(v12 + 1);
    *v11 = v14;
  }

  v15 = a3[7];
  *&__dst[v15] = *&__src[v15];
  *&__dst[v15 + 8] = *&__src[v15 + 8];
  v16 = a3[8];
  *&__dst[v16] = *&__src[v16];
  *&__dst[v16 + 8] = *&__src[v16 + 8];
  v17 = a3[9];
  __dst[v17 + 8] = __src[v17 + 8];
  *&__dst[v17] = *&__src[v17];

  return __dst;
}

char *assignWithCopy for MLTextClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLTextClassifier.ModelAlgorithmType);
    v5 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
    if (swift_getEnumCaseMultiPayload(__src, v5) == 2)
    {
      v6 = type metadata accessor for URL(0);
      if (__swift_getEnumTagSinglePayload(__src, 4, v6))
      {
        v7 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
        memcpy(__dst, __src, *(*(v7 - 8) + 64));
      }

      else
      {
        (*(*(v6 - 8) + 16))(__dst, __src, v6);
        __swift_storeEnumTagSinglePayload(__dst, 0, 4, v6);
      }

      v8 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLTextClassifier.FeatureExtractorType, revision: Int?)) + 48);
      __dst[v8 + 8] = __src[v8 + 8];
      *&__dst[v8] = *&__src[v8];
      swift_storeEnumTagMultiPayload(__dst, v5, 2);
    }

    else
    {
      memcpy(__dst, __src, *(*(v5 - 8) + 64));
    }
  }

  v9 = a3[5];
  v10 = *&__dst[v9];
  v11 = *&__src[v9];
  *&__dst[v9] = v11;
  v11;

  v12 = a3[6];
  v13 = &__dst[v12];
  v14 = &__src[v12];
  v15 = *&__src[v12 + 24];
  if (!*&__dst[v12 + 24])
  {
    if (v15)
    {
      *(v13 + 3) = v15;
      (**(v15 - 8))(v13, v14);
      goto LABEL_15;
    }

LABEL_14:
    v16 = *v14;
    *(v13 + 1) = *(v14 + 1);
    *v13 = v16;
    goto LABEL_15;
  }

  if (!v15)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&__dst[v12]);
    goto LABEL_14;
  }

  __swift_assign_boxed_opaque_existential_0(&__dst[v12], &__src[v12]);
LABEL_15:
  v17 = a3[7];
  *&__dst[v17] = *&__src[v17];
  v18 = *&__dst[v17 + 8];
  *&__dst[v17 + 8] = *&__src[v17 + 8];

  v18;
  v19 = a3[8];
  *&__dst[v19] = *&__src[v19];
  v20 = *&__dst[v19 + 8];
  *&__dst[v19 + 8] = *&__src[v19 + 8];

  v20;
  v21 = a3[9];
  __dst[v21 + 8] = __src[v21 + 8];
  *&__dst[v21] = *&__src[v21];
  return __dst;
}

char *initializeWithTake for MLTextClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  v4 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
  if (swift_getEnumCaseMultiPayload(__src, v4) == 2)
  {
    v5 = type metadata accessor for URL(0);
    if (__swift_getEnumTagSinglePayload(__src, 4, v5))
    {
      v6 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
      memcpy(__dst, __src, *(*(v6 - 8) + 64));
    }

    else
    {
      (*(*(v5 - 8) + 32))(__dst, __src, v5);
      __swift_storeEnumTagSinglePayload(__dst, 0, 4, v5);
    }

    v7 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLTextClassifier.FeatureExtractorType, revision: Int?)) + 48);
    __dst[v7 + 8] = __src[v7 + 8];
    *&__dst[v7] = *&__src[v7];
    swift_storeEnumTagMultiPayload(__dst, v4, 2);
  }

  else
  {
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  *&__dst[a3[5]] = *&__src[a3[5]];
  v8 = a3[6];
  v9 = *&__src[v8];
  *&__dst[v8 + 16] = *&__src[v8 + 16];
  *&__dst[v8] = v9;
  *&__dst[a3[7]] = *&__src[a3[7]];
  *&__dst[a3[8]] = *&__src[a3[8]];
  v10 = a3[9];
  *&__dst[v10] = *&__src[v10];
  __dst[v10 + 8] = __src[v10 + 8];
  return __dst;
}

char *assignWithTake for MLTextClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLTextClassifier.ModelAlgorithmType);
    v5 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
    if (swift_getEnumCaseMultiPayload(__src, v5) == 2)
    {
      v6 = type metadata accessor for URL(0);
      if (__swift_getEnumTagSinglePayload(__src, 4, v6))
      {
        v7 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
        memcpy(__dst, __src, *(*(v7 - 8) + 64));
      }

      else
      {
        (*(*(v6 - 8) + 32))(__dst, __src, v6);
        __swift_storeEnumTagSinglePayload(__dst, 0, 4, v6);
      }

      v8 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLTextClassifier.FeatureExtractorType, revision: Int?)) + 48);
      __dst[v8 + 8] = __src[v8 + 8];
      *&__dst[v8] = *&__src[v8];
      swift_storeEnumTagMultiPayload(__dst, v5, 2);
    }

    else
    {
      memcpy(__dst, __src, *(*(v5 - 8) + 64));
    }
  }

  v9 = a3[5];
  v10 = *&__dst[v9];
  *&__dst[v9] = *&__src[v9];

  v11 = a3[6];
  v12 = &__dst[v11];
  if (*&__dst[v11 + 24])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&__dst[v11]);
  }

  v13 = *&__src[v11];
  *(v12 + 1) = *&__src[v11 + 16];
  *v12 = v13;
  v14 = a3[7];
  *&__dst[v14] = *&__src[v14];
  v15 = *&__dst[v14 + 8];
  *&__dst[v14 + 8] = *&__src[v14 + 8];
  v15;
  v16 = a3[8];
  *&__dst[v16] = *&__src[v16];
  v17 = *&__dst[v16 + 8];
  *&__dst[v16 + 8] = *&__src[v16 + 8];
  v17;
  v18 = a3[9];
  __dst[v18 + 8] = __src[v18 + 8];
  *&__dst[v18] = *&__src[v18];
  return __dst;
}

uint64_t sub_2B77B7(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = 0;
  v5 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(a1, a2, v5);
  }

  v7 = -1;
  if (((*(a1 + *(a3 + 20)) >> 1) - 1) >= 0)
  {
    v7 = (*(a1 + *(a3 + 20)) >> 1) - 1;
  }

  v8 = v7 + 1;
  if ((*(a1 + *(a3 + 20)) & 0xFFFFFFFF00000001) == 0)
  {
    return v8;
  }

  return v4;
}

uint64_t sub_2B7839(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
  if (*(*(v6 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(a1, a2, a2, v6);
  }

  result = *(a4 + 20);
  *(a1 + result) = 2 * a2;
  return result;
}

uint64_t type metadata completion function for MLTextClassifier.ModelParameters(uint64_t a1)
{
  result = type metadata accessor for MLTextClassifier.ModelAlgorithmType(319);
  if (v2 <= 0x3F)
  {
    v3[0] = *(result - 8) + 64;
    v3[1] = "\b";
    v3[2] = &unk_348ED0;
    v3[3] = &unk_348EE8;
    v3[4] = &unk_348EE8;
    v3[5] = &unk_348F00;
    swift_initStructMetadata(a1, 256, 6, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t MLHandActionClassifier.GraphCNN.compile()()
{
  v1[2] = v0;
  v2 = type metadata accessor for Model(0);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v1[5] = swift_task_alloc((*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLHandActionClassifier.GraphCNN.compile(), 0, 0);
}

{
  v4[12] = v0 | 0x1000000000000000;
  v4[11] = v1;
  memset(v4, 0, 72);
  MLHandActionClassifier.GraphCNN.export(metadata:)(v4);
  type metadata accessor for MLModel();
  v2 = swift_task_alloc(208);
  *(v1 + 48) = v2;
  *v2 = v1;
  v2[1] = MLHandActionClassifier.GraphCNN.compile();
  return static MLModel.compile(_:)(*(v1 + 40));
}

{
  v1 = *(v0 + 40);
  (*(*(v0 + 32) + 8))(v1, *(v0 + 24));
  v1;
  return (*(v0 + 8))(*(v0 + 64));
}

{
  v1 = *(v0 + 40);
  (*(*(v0 + 32) + 8))(v1, *(v0 + 24));
  v1;
  return (*(v0 + 8))();
}

uint64_t MLHandActionClassifier.GraphCNN.compile()(uint64_t a1)
{
  v5 = *(*v2 + 48);
  v4 = *v2;
  *(*v2 + 56) = v1;
  v5;
  if (v1)
  {
    v6 = MLHandActionClassifier.GraphCNN.compile();
  }

  else
  {
    *(v4 + 64) = a1;
    v6 = MLHandActionClassifier.GraphCNN.compile();
  }

  return swift_task_switch(v6, 0, 0);
}

void *MLHandActionClassifier.GraphCNN.trainableSublayers()()
{
  v49 = type metadata accessor for BatchNorm(0);
  v52 = *(v49 - 8);
  v1 = *(v52 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v50 = &v35;
  v46 = type metadata accessor for Dense(0);
  v51 = *(v46 - 8);
  v4 = *(v51 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v47 = &v35;
  v44 = type metadata accessor for Conv2D(0);
  v48 = *(v44 - 8);
  v7 = *(v48 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v45 = &v35;
  v10 = type metadata accessor for MLHandActionClassifier.GraphCNNModel(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v14 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model + v0;
  swift_beginAccess(v14, v37, 0, 0);
  outlined init with copy of MLTrainingSessionParameters(v14, &v35, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
  v15 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel);
  v16 = Layer.sublayers(recursively:)(1, v10, v15);
  outlined destroy of MLHandActionClassifier.GraphCNNModel(&v35, type metadata accessor for MLHandActionClassifier.GraphCNNModel);

  v57 = dispatch thunk of _AnySequenceBox._makeIterator()(v16);
  v53 = v16;
  v17 = v16;

  v58 = _swiftEmptyArrayStorage;
  while (1)
  {
    dispatch thunk of _AnyIteratorBoxBase.next()(v17);
    if (!v40)
    {
      break;
    }

    outlined init with take of TabularRegressionTask(&v39, v41);
    outlined init with copy of TabularRegressionTask(v41, v38);
    v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Layer);
    v19 = v45;
    v20 = v44;
    if (swift_dynamicCast(v45, v38, v18, v44, 0))
    {
      outlined init with copy of TabularRegressionTask(v41, &v54);
      v21 = v19;
      v22 = v20;
      v23 = v48;
    }

    else
    {
      v24 = v47;
      v25 = v46;
      if (!swift_dynamicCast(v47, v38, v18, v46, 0))
      {
        v26 = v50;
        v27 = v49;
        if (swift_dynamicCast(v50, v38, v18, v49, 0))
        {
          outlined init with copy of TabularRegressionTask(v41, &v54);
          (*(v52 + 8))(v26, v27);
        }

        else
        {
          v28 = v42;
          v29 = v43;
          __swift_project_boxed_opaque_existential_0Tm(v41, v42);
          v30 = Layer.parameters(recursively:)(0, v28, v29);
          v31 = *(v30 + 16);
          v30;
          if (v31)
          {
            outlined init with copy of TabularRegressionTask(v41, &v54);
          }

          else
          {
            v55 = 0;
            v54 = 0;
            v56 = 0;
          }
        }

        goto LABEL_13;
      }

      outlined init with copy of TabularRegressionTask(v41, &v54);
      v21 = v24;
      v22 = v25;
      v23 = v51;
    }

    (*(v23 + 8))(v21, v22);
LABEL_13:
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    if (*(&v55 + 1))
    {
      outlined init with take of TabularRegressionTask(&v54, v36);
      outlined init with take of TabularRegressionTask(v36, &v54);
      if (!swift_isUniquelyReferenced_nonNull_native(v58))
      {
        v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58[2] + 1, 1, v58);
      }

      v32 = v58[2];
      if (v58[3] >> 1 <= v32)
      {
        v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v58[3] >= 2uLL, v32 + 1, 1, v58);
      }

      v33 = v58;
      v58[2] = v32 + 1;
      v17 = &v54;
      outlined init with take of TabularRegressionTask(&v54, &v33[5 * v32 + 4]);
    }

    else
    {
      v17 = &v54;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v54, &demangling cache variable for type metadata for Layer?);
    }
  }

  return v58;
}

uint64_t MLHandActionClassifier.GraphCNN.export(metadata:)(uint64_t *a1)
{
  v112 = v2;
  v120 = v1;
  v83 = type metadata accessor for ModelKind(0);
  v84 = *(v83 - 8);
  v3 = *(v84 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v85 = &v80;
  v86 = type metadata accessor for NeuralNetworkClassifier.ClassLabels(0);
  v87 = *(v86 - 8);
  v6 = *(v87 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v89 = &v80;
  v91 = type metadata accessor for NeuralNetwork.ArrayShapeMapping(0);
  v92 = *(v91 - 8);
  v9 = *(v92 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v93 = &v80;
  v88 = type metadata accessor for NeuralNetworkClassifier(0);
  v113 = *(v88 - 8);
  v12 = *(v113 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v90 = &v80;
  v115 = type metadata accessor for FeatureType.ShapedArrayParameters.DataType(0);
  v114 = *(v115 - 8);
  v15 = *(v114 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v103 = &v80;
  v95 = type metadata accessor for FeatureType(0);
  v96 = *(v95 - 8);
  v18 = *(v96 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v121 = &v80;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v97 = &v80;
  v23 = alloca(v18);
  v24 = alloca(v18);
  v123 = &v80;
  v25 = type metadata accessor for LearningPhase(0);
  v124 = *(v25 - 1);
  v118 = v25;
  v26 = *(v124 + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v107 = *a1;
  v94 = a1[1];
  v110 = a1[2];
  v111 = a1[3];
  v105 = a1[4];
  v106 = a1[5];
  v108 = a1[6];
  v109 = a1[7];
  v104 = a1[8];
  v29 = v2 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  swift_beginAccess(v2 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model, &v116, 33, 0);
  v30 = type metadata accessor for MLHandActionClassifier.GraphCNNModel(0);
  v31 = *(v30 + 36);
  v119 = v30;
  *(v31 + v29) = 1;
  v122 = v29;
  v32 = v25;
  v33 = v124;
  (*(v124 + 104))(&v80, enum case for LearningPhase.inference(_:), v32);
  v34 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel);
  Layer.prepare(for:)(&v80, v30, v34);
  swift_endAccess(&v116);
  (*(v33 + 8))(&v80, v118);
  v118 = MLHandActionClassifier.GraphCNN.updatedCoreMLLayers()();
  Model.init()();
  Model.specificationVersion.setter(4);
  v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
  v98 = v35;
  v36 = *(type metadata accessor for FeatureDescription(0) - 8);
  v124 = *(v36 + 72);
  v37 = *(v36 + 80);
  v38 = (v37 + 32) & ~v37;
  v100 = v38;
  v99 = v37 | 7;
  v39 = swift_allocObject(v35, v38 + v124, v37 | 7);
  v101 = v39;
  *(v39 + 16) = 1;
  *(v39 + 24) = 2;
  v102 = v38 + v39;
  v40 = v103;
  (*(v114 + 104))(v103, enum case for FeatureType.ShapedArrayParameters.DataType.float32(_:), v115);
  v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v42 = swift_allocObject(v41, 56, 7);
  v42[2] = 3;
  v42[3] = 6;
  v43 = v119;
  v44 = v122;
  v42[4] = *(*(v119 + 40) + v122);
  v42[5] = 3;
  v42[6] = 21;
  static FeatureType.shapedArray(dataType:shape:optional:)(v40, v42, 0);
  v42;
  (*(v114 + 8))(v40, v115);
  v116 = 0;
  v117 = 0xE000000000000000;
  _StringGuts.grow(_:)(446);
  v48._object = 0xE200000000000000;
  v48._countAndFlagsBits = 8257;
  String.append(_:)(v48);
  v45 = *(v43 + 40);
  v46 = v43;
  v47 = *(v45 + v44) < 2;
  v48._countAndFlagsBits = 0x736F7020646E6168;
  if (*(v45 + v44) >= 2)
  {
    v48._countAndFlagsBits = 0xD000000000000016;
  }

  v49 = 0xE900000000000065;
  if (!v47)
  {
    v49 = "Most likely hand " + 0x8000000000000000;
  }

  v48._object = v49;
  String.append(_:)(v48);
  v49;
  v50._object = " channels, but coreml has " + 0x8000000000000000;
  v50._countAndFlagsBits = 0xD000000000000052;
  String.append(_:)(v50);
  v51 = v122;
  v81 = *(*(v46 + 40) + v122);
  v52 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v54 = v53;
  v50._countAndFlagsBits = v52;
  v50._object = v53;
  String.append(_:)(v50);
  v54;
  v50._countAndFlagsBits = 0x656D61726620;
  v56._object = 0xE600000000000000;
  String.append(_:)(v56);
  v55 = *(v46 + 40);
  v56._countAndFlagsBits = 115;
  if (*(v55 + v51) < 2)
  {
    v56._countAndFlagsBits = 0;
  }

  v56._object = (((*(v55 + v51) >= 2) | 0xFFFFFFFFFFFFFFE0) << 56);
  String.append(_:)(v56);
  0;
  v61._object = "o index time over " + 0x8000000000000000;
  v61._countAndFlagsBits = 0xD00000000000015ELL;
  String.append(_:)(v61);
  FeatureDescription.init(name:type:description:)(0x7365736F70, 0xE500000000000000, v123, v116, v117);
  Model.inputs.setter(v101);
  v57 = swift_allocObject(v98, v100 + 2 * v124, v99);
  v123 = v57;
  *(v57 + 16) = 2;
  *(v57 + 24) = 4;
  v58 = v97;
  static FeatureType.dictionaryWithStringKeys(optional:)(0);
  FeatureDescription.init(name:type:description:)(0xD000000000000012, ("shape does not match." + 0x8000000000000000), v58, 0xD000000000000039, ("ttlePIP, littleDIP, littleTip." + 0x8000000000000000));
  v59 = v121;
  FeatureType.StringParameters.init(optional:)(0);
  (*(v96 + 104))(v59, enum case for FeatureType.string(_:), v95);
  v116 = 0;
  v117 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);
  v117;
  v81 = 0xD000000000000011;
  v82 = "orresponding confidences." + 0x8000000000000000;
  v60 = *(v119 + 40);
  v61._countAndFlagsBits = 1702063984;
  if (*(v60 + v122) >= 2)
  {
    v61._countAndFlagsBits = 0x6E6F69746361;
  }

  v61._object = (((*(v60 + v122) >= 2) | 0xFFFFFFFFFFFFFFF2) << 57);
  String.append(_:)(v61);
  0;
  v62._countAndFlagsBits = 0x726F676574616320;
  v62._object = 0xEA00000000002E79;
  String.append(_:)(v62);
  FeatureDescription.init(name:type:description:)(0x6C6562616CLL, 0xE500000000000000, v121, v81, v82);
  Model.outputs.setter(v123);
  v63 = v94;
  Model.predictedFeatureName.setter(0x6C6562616CLL, 0xE500000000000000);
  v121 = "shape does not match." + 0x8000000000000000;
  Model.predictedProbabilitiesName.setter(0xD000000000000012, ("shape does not match." + 0x8000000000000000));
  if (v63)
  {
    v64 = v111;

    Model.modelDescription.setter(v110, v64);
    v65 = v109;

    Model.versionString.setter(v108, v65);

    Model.author.setter(v107, v63);
    v66 = v105;
    if (!v106)
    {
      v66 = 0;
    }

    v67 = 0xE000000000000000;
    if (v106)
    {
      v67 = v106;
    }

    Model.license.setter(v66, v67);
    if (v104)
    {
      v68 = v104;
    }

    else
    {
      v68 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for String, &protocol witness table for String);
    }

    Model.metadata.setter(v68);
  }

  v116 = *(v122 + *(v119 + 40));
  v69 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v124 = v70;
  v123 = Model.metadata.modify(&v116);
  v72 = v71;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v71);
  v80 = *v72;
  *v72 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v69, v124, 0xD000000000000016, ("Number of Labels" + 0x8000000000000000), isUniquelyReferenced_nonNull_native);
  *v72 = v80;
  (v123)(&v116, 0);
  v74 = v90;
  NeuralNetworkClassifier.init(layers:preprocessors:)(v118, _swiftEmptyArrayStorage);
  v75 = v93;
  (*(v92 + 104))(v93, enum case for NeuralNetwork.ArrayShapeMapping.exactArrayMapping(_:), v91);
  NeuralNetworkClassifier.arrayInputShapeMapping.setter(v75);
  NeuralNetworkClassifier.labelProbabilityLayerName.setter(0xD000000000000012, v121);
  v76 = v89;
  *v89 = *(v112 + 16);
  (*(v87 + 104))(v76, enum case for NeuralNetworkClassifier.ClassLabels.string(_:), v86);

  NeuralNetworkClassifier.classLabels.setter(v76);
  v77 = v85;
  v78 = v88;
  (*(v113 + 16))(v85, v74, v88);
  (*(v84 + 104))(v77, enum case for ModelKind.neuralNetworkClassifier(_:), v83);
  Model.kind.setter(v77);
  (*(v113 + 8))(v74, v78);
  result = *(v119 + 36);
  *(v122 + result) = 0;
  return result;
}

void *specialized _ModelCheckpoint<>.layerStateKeyPathLookup.getter()
{
  v38 = type metadata accessor for LayerState(0);
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
  v10 = Layer.layerStateKeyPaths(recursively:)(1, v4, v9);
  v41 = &v34;
  outlined destroy of MLHandActionClassifier.GraphCNNModel(&v34, type metadata accessor for MLActivityClassifier.Model);
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

      outlined destroy of MLHandActionClassifier.GraphCNNModel(v18, type metadata accessor for MLActivityClassifier.Model);
      LODWORD(v18) = LayerState.id.getter();
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
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<UInt32, WritableKeyPath<MLActivityClassifier.Model, LayerState>>);
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
  v38 = type metadata accessor for LayerState(0);
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
  v10 = Layer.layerStateKeyPaths(recursively:)(1, v4, v9);
  v41 = &v34;
  outlined destroy of MLHandActionClassifier.GraphCNNModel(&v34, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
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

      outlined destroy of MLHandActionClassifier.GraphCNNModel(v18, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
      LODWORD(v18) = LayerState.id.getter();
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
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<UInt32, WritableKeyPath<MLHandActionClassifier.GraphCNNModel, LayerState>>);
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

uint64_t NeuralNetwork.Layer.loadConv2DFromNeuralNetworks(_:useBias:into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a2;
  v47 = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.WeightParameters?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v40 = &v35;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v39 = &v35;
  v38 = type metadata accessor for Tensor(0);
  v10 = *(v38 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v41 = &v35;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v42 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  v16 = *(*(v42 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v45 = a3;
  v19 = NeuralNetwork.Layer.ConvolutionParameters.outputChannelCount.getter(0);
  if (v19 != Conv2D.filterCount.getter())
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(99);
    v28._object = "Cannot load convolution layer " + 0x8000000000000000;
    v28._countAndFlagsBits = 0xD00000000000003BLL;
    String.append(_:)(v28);
    v37 = Conv2D.filterCount.getter();
    v29 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v31 = v30;
    v28._countAndFlagsBits = v29;
    v28._object = v30;
    String.append(_:)(v28);
    v31;
    v28._object = "ral networks framework has " + 0x8000000000000000;
    v28._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v28);
    v37 = NeuralNetwork.Layer.ConvolutionParameters.outputChannelCount.getter(0xD00000000000001ALL);
    v32 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v34 = v33;
    v28._countAndFlagsBits = v32;
    v28._object = v33;
    String.append(_:)(v28);
    v34;
    v28._countAndFlagsBits = 0x6C656E6E61686320;
    v28._object = 0xEA00000000002E73;
    String.append(_:)(v28);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v35, v36, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 877, 0);
    BUG();
  }

  Conv2D.weight.getter(0, a2);
  v20 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  v43 = v10;
  v21 = *(v10 + 8);
  v22 = v38;
  v44 = v21;
  v21(&v35, v38);
  NeuralNetwork.WeightParameters.init(_:updatable:)(v20, 0);
  result = NeuralNetwork.Layer.ConvolutionParameters.weights.setter(&v35);
  if (v46)
  {
    v24 = v39;
    Conv2D.bias.getter();
    if (__swift_getEnumTagSinglePayload(v24, 1, v22) == 1)
    {
      return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v24, &demangling cache variable for type metadata for Tensor?);
    }

    else
    {
      v25 = v41;
      (*(v43 + 32))(v41, v24, v22);
      v26 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
      v27 = v40;
      NeuralNetwork.WeightParameters.init(_:updatable:)(v26, 0);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v42);
      NeuralNetwork.Layer.ConvolutionParameters.bias.setter(v27);
      return v44(v25, v22);
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel()()
{
  v420 = v0;
  v463 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Parameter?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v409 = &v383;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dense?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v388 = &v383;
  v441 = type metadata accessor for Dense(0);
  v442 = *(v441 - 8);
  v12 = *(v442 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v456 = &v383;
  v448 = type metadata accessor for NeuralNetwork.Layer.InnerProductParameters(0);
  v447 = *(v448 - 8);
  v15 = *(v447 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v459 = &v383;
  v402 = type metadata accessor for LayerState(0);
  v403 = *(v402 - 8);
  v18 = *(v403 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v404 = &v383;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v405 = &v383;
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for BatchNorm?) - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v401 = &v383;
  v451 = type metadata accessor for BatchNorm(0);
  v453 = *(v451 - 8);
  v26 = *(v453 + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v470 = &v383;
  v452 = type metadata accessor for NeuralNetwork.Layer.BatchNormalizeParameters(0);
  v450 = *(v452 - 8);
  v29 = *(v450 + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v457 = &v383;
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v411 = &v383;
  v35 = alloca(v32);
  v36 = alloca(v32);
  v398 = &v383;
  v37 = alloca(v32);
  v38 = alloca(v32);
  v440 = &v383;
  v39 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v40 = alloca(v39);
  v41 = alloca(v39);
  v454 = &v383;
  v390 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.Extent<Int>);
  v391 = *(v390 - 8);
  v42 = *(v391 + 64);
  v43 = alloca(v42);
  v44 = alloca(v42);
  v392 = &v383;
  v45 = alloca(v42);
  v46 = alloca(v42);
  v393 = &v383;
  v474 = type metadata accessor for TensorShape(0);
  v464 = *(v474 - 8);
  v47 = *(v464 + 64);
  v48 = alloca(v47);
  v49 = alloca(v47);
  v410 = &v383;
  v50 = alloca(v47);
  v51 = alloca(v47);
  v389 = &v383;
  v52 = alloca(v47);
  v53 = alloca(v47);
  v415 = &v383;
  v54 = alloca(v47);
  v55 = alloca(v47);
  v449 = &v383;
  v56 = alloca(v47);
  v57 = alloca(v47);
  v394 = &v383;
  v455 = type metadata accessor for Tensor(0);
  v423 = *(v455 - 8);
  v58 = *(v423 + 64);
  v59 = alloca(v58);
  v60 = alloca(v58);
  v412 = &v383;
  v61 = alloca(v58);
  v62 = alloca(v58);
  v399 = &v383;
  v63 = alloca(v58);
  v64 = alloca(v58);
  v406 = &v383;
  v65 = alloca(v58);
  v66 = alloca(v58);
  v400 = &v383;
  v437 = type metadata accessor for Parameter(0);
  v422 = *(v437 - 8);
  v67 = *(v422 + 64);
  v68 = alloca(v67);
  v69 = alloca(v67);
  v395 = &v383;
  v70 = alloca(v67);
  v71 = alloca(v67);
  v407 = &v383;
  v72 = alloca(v67);
  v73 = alloca(v67);
  v408 = &v383;
  v74 = alloca(v67);
  v75 = alloca(v67);
  v396 = &v383;
  v76 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Conv2D?) - 8) + 64);
  v77 = alloca(v76);
  v78 = alloca(v76);
  v397 = &v383;
  v426 = type metadata accessor for Conv2D(0);
  v427 = *(v426 - 8);
  v79 = *(v427 + 64);
  v80 = alloca(v79);
  v81 = alloca(v79);
  v436 = &v383;
  v424 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters(0);
  v425 = *(v424 - 8);
  v82 = *(v425 + 64);
  v83 = alloca(v82);
  v84 = alloca(v82);
  v435 = &v383;
  v385 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  v434 = *(v385 - 8);
  v85 = *(v434 + 64);
  v86 = alloca(v85);
  v87 = alloca(v85);
  v460 = &v383;
  v482 = type metadata accessor for NeuralNetwork.Layer(0);
  v483 = *(v482 - 8);
  v88 = *(v483 + 64);
  v89 = alloca(v88);
  v90 = alloca(v88);
  v487 = &v383;
  v439 = type metadata accessor for Logger(0);
  v433 = *(v439 - 8);
  v91 = *(v433 + 64);
  v92 = alloca(v91);
  v93 = alloca(v91);
  v414 = &v383;
  v94 = alloca(v91);
  v95 = alloca(v91);
  v485 = &v383;
  v481 = type metadata accessor for URL(0);
  v96 = *(v481 - 8);
  v97 = *(v96 + 64);
  v98 = alloca(v97);
  v99 = alloca(v97);
  v471 = &v383;
  v100 = alloca(v97);
  v101 = alloca(v97);
  v468 = &v383;
  v102 = alloca(v97);
  v103 = alloca(v97);
  v469 = &v383;
  v104 = alloca(v97);
  v105 = alloca(v97);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v107 = objc_opt_self(NSBundle);
  v108 = [v107 bundleForClass:ObjCClassFromMetadata];
  v109 = v108;
  v413._countAndFlagsBits = 0xD00000000000001ELL;
  v110 = outlined bridged method (mbbnn) of @objc NSBundle.url(forResource:withExtension:)(0xD00000000000001ELL, (" is not a valid CoreML model." + 0x8000000000000000), 0x73746867696577, 0, v109);

  if (!v110)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002ALL, ("+ModelExport.swift" + 0x8000000000000000), "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 554, 0);
    goto LABEL_117;
  }

  v111 = v469;
  static URL._unconditionallyBridgeFromObjectiveC(_:)(v110);

  (*(v96 + 32))(&v383, v111, v481);
  v112 = v96;
  if (one-time initialization token for logger != -1)
  {
    swift_once(&one-time initialization token for logger, one-time initialization function for logger);
  }

  v113 = v439;
  v114 = __swift_project_value_buffer(v439, static MLHandActionClassifier.logger);
  v115 = *(v433 + 16);
  v386 = v114;
  v387 = v115;
  v115(v485, v114, v113);
  v116 = *(v112 + 16);
  v117 = v468;
  v469 = &v383;
  v421 = v116;
  v116(v468, &v383, v481);
  v118 = Logger.logObject.getter(v117, &v383);
  v119 = v112;
  v120 = static os_log_type_t.info.getter(v117);
  if (os_log_type_enabled(v118, v120))
  {
    v121 = swift_slowAlloc(12, -1);
    v429 = v119;
    v122 = v121;
    v428 = swift_slowAlloc(32, -1);
    object = v428;
    *v122 = 136315138;
    v123 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    log = v118;
    v124 = v468;
    v125 = dispatch thunk of CustomStringConvertible.description.getter(v481, v123);
    v127 = v126;
    *(v122 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v126, &object);
    v127;
    v128 = *(v429 + 8);
    v128(v124, v481);
    v118 = log;
    _os_log_impl(&dword_0, log, v120, "Loading pre-trained model at %s", v122, 0xCu);
    v129 = v428;
    __swift_destroy_boxed_opaque_existential_1Tm(v428);
    v129, -1, -1;
    v130 = v122;
    v131 = v481;
    v130, -1, -1;
  }

  else
  {
    v128 = *(v119 + 8);
    v131 = v481;
    v128(v468, v481);
  }

  (*(v433 + 8))(v485, v439);
  v132 = v471;
  v133 = v469;
  v421(v471, v469, v131);
  v134 = v420;
  v135 = Data.init(contentsOf:options:)(v132, 0);
  if (v134)
  {
    v485 = v134;
    v128(v132, v131);
    v128(v133, v131);
    return;
  }

  BlobsFile.init(data:)(v135, v136, v2, v3, v4, v5);
  v485 = 0;
  v461 = v128;
  v128(v132, v131);
  v137 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, [String : Int])>);
  v138 = swift_allocObject(v137, 920, 7);
  v138[2] = 37;
  v138[3] = 74;
  v138[4] = 3485304;
  v138[5] = 0xE300000000000000;
  v138[6] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #0 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[7] = &unk_372E78;
  v138[8] = 0xE300000000000000;
  v138[9] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #1 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[10] = 120;
  v138[11] = 0xE100000000000000;
  v138[12] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #2 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[13] = 0x332E7475706E69;
  v138[14] = 0xE700000000000000;
  v138[15] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #3 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[16] = 0x352E7475706E69;
  v138[17] = 0xE700000000000000;
  v138[18] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #4 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[19] = 0x372E7475706E69;
  v138[20] = 0xE700000000000000;
  v138[21] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #5 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[22] = 0x382E7475706E69;
  v138[23] = 0xE700000000000000;
  v138[24] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #6 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[25] = 0x392E7475706E69;
  v138[26] = 0xE700000000000000;
  v138[27] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #7 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[28] = 0x32312E7475706E69;
  v138[29] = 0xE800000000000000;
  v138[30] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #8 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[31] = 0x34312E7475706E69;
  v138[32] = 0xE800000000000000;
  v138[33] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #9 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[34] = 0x35312E7475706E69;
  v138[35] = 0xE800000000000000;
  v138[36] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #10 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[37] = 0x36312E7475706E69;
  v138[38] = 0xE800000000000000;
  v138[39] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #11 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[40] = 0x39312E7475706E69;
  v138[41] = 0xE800000000000000;
  v138[42] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #12 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[43] = 0x31322E7475706E69;
  v138[44] = 0xE800000000000000;
  v138[45] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #13 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[46] = 0x32322E7475706E69;
  v138[47] = 0xE800000000000000;
  v138[48] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #14 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[49] = 0x33322E7475706E69;
  v138[50] = 0xE800000000000000;
  v138[51] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #15 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[52] = 0x36322E7475706E69;
  v138[53] = 0xE800000000000000;
  v138[54] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #16 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[55] = 0x38322E7475706E69;
  v138[56] = 0xE800000000000000;
  v138[57] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #17 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[58] = 0x39322E7475706E69;
  v138[59] = 0xE800000000000000;
  v138[60] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #18 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[61] = 0x30332E7475706E69;
  v138[62] = 0xE800000000000000;
  v138[63] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #19 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[64] = 0x33332E7475706E69;
  v138[65] = 0xE800000000000000;
  v138[66] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #20 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[67] = 0x35332E7475706E69;
  v138[68] = 0xE800000000000000;
  v138[69] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #21 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[70] = 0x36332E7475706E69;
  v138[71] = 0xE800000000000000;
  v138[72] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #22 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[73] = 0x39332E7475706E69;
  v138[74] = 0xE800000000000000;
  v138[75] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #23 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[76] = 0x31342E7475706E69;
  v138[77] = 0xE800000000000000;
  v138[78] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #24 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[79] = 0x32342E7475706E69;
  v138[80] = 0xE800000000000000;
  v138[81] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #25 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[82] = 0x33342E7475706E69;
  v138[83] = 0xE800000000000000;
  v138[84] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #26 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[85] = 0x36342E7475706E69;
  v138[86] = 0xE800000000000000;
  v138[87] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #27 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[88] = 0x38342E7475706E69;
  v138[89] = 0xE800000000000000;
  v138[90] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #28 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[91] = 0x39342E7475706E69;
  v138[92] = 0xE800000000000000;
  v138[93] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #29 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[94] = 0x30352E7475706E69;
  v138[95] = 0xE800000000000000;
  v138[96] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #30 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[97] = 0x6C61756469736572;
  v138[98] = 0xEA0000000000312ELL;
  v138[99] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #31 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[100] = 0x6C61756469736572;
  v138[101] = 0xEA0000000000322ELL;
  v138[102] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #32 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[103] = 0x6C61756469736572;
  v138[104] = 0xEA0000000000332ELL;
  v138[105] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #33 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[106] = 0x6C61756469736572;
  v138[107] = 0xEA0000000000342ELL;
  v138[108] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #34 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[109] = 0x6C61756469736572;
  v138[110] = 0xEA0000000000352ELL;
  v138[111] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #35 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[112] = 0x6C61756469736572;
  v138[113] = 0xE800000000000000;
  v138[114] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #36 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v139 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Int]);
  v473 = Dictionary.init(dictionaryLiteral:)(v138, &type metadata for String, v139, &protocol witness table for String);
  v140 = v463;
  v141 = MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:)(3uLL, 0x15uLL);
  v465 = MLHandActionClassifier.GraphCNN.coreMLTrainableLayerNames(from:)(v141);
  v471 = MLHandActionClassifier.GraphCNN.getCoreMLAndNeuralNetworksTrainableLayerMap(_:)(v465);
  v142 = MLHandActionClassifier.GraphCNN.trainableSublayers()();
  log = specialized _ModelCheckpoint<>.parameterKeyPathLookup.getter();
  v467 = specialized _ModelCheckpoint<>.layerStateKeyPathLookup.getter();
  v143 = v141[2];
  v472 = v142;
  v462 = v141;
  if (!v143)
  {
LABEL_75:
    outlined release of BlobsFile(v384);
    v473;
    v462;
    v467;
    log;
    v472;
    v471;
    v324 = v465;
    goto LABEL_82;
  }

  v463 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model + v140;
  v144 = v141 + ((*(v483 + 80) + 32) & ~*(v483 + 80));
  LODWORD(v421) = enum case for NeuralNetwork.Layer.Kind.innerProduct(_:);
  v418 = enum case for NeuralNetwork.Layer.Kind.convolution(_:);
  v419 = enum case for NeuralNetwork.Layer.Kind.batchNormalize(_:);
  v430 = v142 + 4;
  v428 = *(v483 + 16);
  v429 = *(v483 + 72);
  v145 = v487;
  v146 = v460;
  while (1)
  {
    v420 = v143;
    v468 = v144;
    (v428)(v145, v144, v482);
    NeuralNetwork.Layer.kind.getter();
    v147 = v146;
    v148 = v385;
    v149 = v146;
    v150 = v434;
    v151 = (*(v434 + 88))(v147, v385);
    if (v151 == v421)
    {
      break;
    }

    if (v151 == v418)
    {
      v168 = v460;
      (*(v434 + 96))(v460, v148);
      (*(v425 + 32))(v435, v168, v424);
      v169 = NeuralNetwork.Layer.name.getter();
      v171 = v170;
      v172 = v471;
      if (!v471[2] || (v173 = specialized __RawDictionaryStorage.find<A>(_:)(v169, v170), (v174 & 1) == 0))
      {
        v171;
        object = 0;
        v477 = 0xE000000000000000;
        _StringGuts.grow(_:)(67);
        v342._object = "etrained hand action model" + 0x8000000000000000;
        v342._countAndFlagsBits = 0xD000000000000032;
        String.append(_:)(v342);
        v343 = NeuralNetwork.Layer.name.getter();
        v345 = v344;
        v342._countAndFlagsBits = v343;
        v342._object = v344;
        String.append(_:)(v342);
        v345;
        v342._countAndFlagsBits = 0x65726F63206E6920;
        v342._object = 0xEF63657073206C6DLL;
        String.append(_:)(v342);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, object, v477, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 619, 0);
        goto LABEL_117;
      }

      v175 = *(*(v172 + 56) + 8 * v173);
      v171;
      v176 = v473;
      if (v175 < 0)
      {
        BUG();
      }

      if (v175 >= v472[2])
      {
        BUG();
      }

      outlined init with copy of TabularRegressionTask(&v430[5 * v175], &object);
      v177 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Layer);
      v178 = v397;
      v179 = v426;
      if (!swift_dynamicCast(v397, &object, v177, v426, 6))
      {
        __swift_storeEnumTagSinglePayload(v178, 1, 1, v179);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v178, &demangling cache variable for type metadata for Conv2D?);
        object = 0;
        v477 = 0xE000000000000000;
        _StringGuts.grow(_:)(80);
        v363._object = "layer state keypaths for " + 0x8000000000000000;
        v363._countAndFlagsBits = 0xD00000000000003FLL;
        String.append(_:)(v363);
        v364 = NeuralNetwork.Layer.name.getter();
        v366 = v365;
        v363._countAndFlagsBits = v364;
        v363._object = v365;
        String.append(_:)(v363);
        v366;
        v363._countAndFlagsBits = 0x65726F63206E6920;
        v363._object = 0xEF63657073206C6DLL;
        String.append(_:)(v363);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, object, v477, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 622, 0);
        goto LABEL_117;
      }

      __swift_storeEnumTagSinglePayload(v178, 0, 1, v179);
      (*(v427 + 32))(v436, v178, v179);
      v180 = NeuralNetwork.Layer.name.getter();
      v182 = v181;
      if (!*(v176 + 16) || (v183 = specialized __RawDictionaryStorage.find<A>(_:)(v180, v181), v185 = v437, (v184 & 1) == 0))
      {
        v333 = v182;
LABEL_98:
        v333;
        object = 0;
        v477 = 0xE000000000000000;
        _StringGuts.grow(_:)(57);
        v334._object = "ework layer to convolution for " + 0x8000000000000000;
        v334._countAndFlagsBits = v413._countAndFlagsBits;
        String.append(_:)(v334);
        v335 = NeuralNetwork.Layer.name.getter();
        v337 = v336;
        v334._countAndFlagsBits = v335;
        v334._object = v336;
        String.append(_:)(v334);
        v337;
        v334._object = "Cannot load innerProduct layer " + 0x8000000000000000;
        v334._countAndFlagsBits = 0xD000000000000019;
        String.append(_:)(v334);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, object, v477, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 628, 0);
        goto LABEL_117;
      }

      v186 = *(*(v176 + 56) + 8 * v183);

      v182;
      if (!*(v186 + 16) || (v187 = specialized __RawDictionaryStorage.find<A>(_:)(0x746867696577, 0xE600000000000000), (v188 & 1) == 0))
      {
        v333 = v186;
        goto LABEL_98;
      }

      v475 = *(*(v186 + 56) + 8 * v187);
      v186;
      v189 = v396;
      Conv2D.$weight.getter();
      v190 = Parameter.id.getter(v186);
      (*(v422 + 8))(v189, v185);
      v191 = log;
      if (!*(log + 2) || (v192 = specialized __RawDictionaryStorage.find<A>(_:)(v190), (v193 & 1) == 0))
      {
        object = 0;
        v477 = 0xE000000000000000;
        _StringGuts.grow(_:)(64);
        v338._object = " in from MIL Blob Storage" + 0x8000000000000000;
        v338._countAndFlagsBits = 0xD00000000000003DLL;
        String.append(_:)(v338);
        v339 = NeuralNetwork.Layer.name.getter();
        v341 = v340;
        v338._countAndFlagsBits = v339;
        v338._object = v340;
        String.append(_:)(v338);
        v341;
        v338._countAndFlagsBits = 46;
        v338._object = 0xE100000000000000;
        String.append(_:)(v338);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, object, v477, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 631, 0);
        goto LABEL_117;
      }

      v194 = *(*(v191 + 7) + 8 * v192);
      v195 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
      v196 = swift_allocObject(v195, 64, 7);
      v196[2] = 4;
      v196[3] = 8;
      v486 = v194;

      v196[4] = NeuralNetwork.Layer.ConvolutionParameters.outputChannelCount.getter(v194);
      v197 = NeuralNetwork.Layer.ConvolutionParameters.kernelChannelCount.getter();
      v484 = v196;
      v196[5] = v197;
      v198 = v393;
      NeuralNetwork.Layer.ConvolutionParameters.kernelSize.getter();
      v199 = v390;
      NeuralNetwork.Extent.height.getter(v390);
      v466 = *(v391 + 8);
      v466(v198, v199);
      v458 = v484 + 56;
      v200 = v392;
      NeuralNetwork.Layer.ConvolutionParameters.kernelSize.getter();
      NeuralNetwork.Extent.width.getter(v199);
      v466(v200, v199);
      v201 = v394;
      TensorShape.init(_:)(v484);
      v202 = v485;
      v203 = BlobsFile.floatBlob(at:)(v475);
      v485 = v202;
      if (v202)
      {

        outlined release of BlobsFile(v384);
        v467;
        log;
        v472;
        v471;
        v465;
        v473;
        (*(v464 + 8))(v201, v474);
        (*(v427 + 8))(v436, v426);
        v326 = v435;
        v327 = v424;
        v328 = v425;
        goto LABEL_81;
      }

      object = v203;
      v204 = type metadata accessor for ComputeDevice(0);
      v205 = v201;
      v206 = v454;
      __swift_storeEnumTagSinglePayload(v454, 1, 1, v204);
      v207 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
      v208 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);
      v209 = v400;
      Tensor.init<A>(shape:scalars:on:)(v205, &object, v206, v207, v208);
      swift_beginAccess(v463, &object, 33, 0);
      v210 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel);
      v211 = v440;
      Layer.updateValue<A>(_:for:)(v209, v486, v210, &protocol witness table for Parameter);
      swift_endAccess(&object);

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v211, &demangling cache variable for type metadata for Tensor?);
      (*(v423 + 8))(v209, v455);
      (*(v427 + 8))(v436, v426);
      v212 = v435;
      v213 = v424;
      v214 = v425;
    }

    else
    {
      v146 = v460;
      v145 = v487;
      if (v151 != v419)
      {
        (*(v483 + 8))(v487, v482);
        v165 = v146;
        v166 = v148;
        v167 = v434;
LABEL_73:
        (*(v167 + 8))(v165, v166);
        goto LABEL_74;
      }

      (*(v434 + 96))(v460, v148);
      (*(v450 + 32))(v457, v146, v452);
      v215 = NeuralNetwork.Layer.name.getter();
      v217 = v216;
      v218 = specialized Dictionary.subscript.getter(v215, v216, v471);
      v220 = v219;
      v217;
      if (v220)
      {
        object = 0;
        v477 = 0xE000000000000000;
        _StringGuts.grow(_:)(67);
        v371._object = "etrained hand action model" + 0x8000000000000000;
        v371._countAndFlagsBits = 0xD000000000000032;
        String.append(_:)(v371);
        v372 = NeuralNetwork.Layer.name.getter();
        v374 = v373;
        v371._countAndFlagsBits = v372;
        v371._object = v373;
        String.append(_:)(v371);
        v374;
        v371._countAndFlagsBits = 0x65726F63206E6920;
        v371._object = 0xEF63657073206C6DLL;
        String.append(_:)(v371);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, object, v477, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 641, 0);
        goto LABEL_117;
      }

      v221 = v451;
      if (v218 < 0)
      {
        BUG();
      }

      v222 = v470;
      if (v218 >= v472[2])
      {
        BUG();
      }

      outlined init with copy of TabularRegressionTask(&v430[5 * v218], &object);
      v223 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Layer);
      v224 = v401;
      if (!swift_dynamicCast(v401, &object, v223, v221, 6))
      {
        __swift_storeEnumTagSinglePayload(v224, 1, 1, v221);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v224, &demangling cache variable for type metadata for BatchNorm?);
        object = 0;
        v477 = 0xE000000000000000;
        _StringGuts.grow(_:)(88);
        v375._countAndFlagsBits = 0xD000000000000047;
        String.append(_:)(v375);
        v376 = NeuralNetwork.Layer.name.getter();
        v378 = v377;
        v375._countAndFlagsBits = v376;
        v375._object = v377;
        String.append(_:)(v375);
        v378;
        v375._countAndFlagsBits = 0x65726F63206E6920;
        v375._object = 0xEF63657073206C6DLL;
        String.append(_:)(v375);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, object, v477, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 644, 0);
        goto LABEL_117;
      }

      __swift_storeEnumTagSinglePayload(v224, 0, 1, v221);
      (*(v453 + 32))(v222, v224, v221);
      v225 = NeuralNetwork.Layer.name.getter();
      v227 = v226;
      v228 = specialized Dictionary.subscript.getter(v225, v226, v473);
      v227;
      if (!v228)
      {
        goto LABEL_106;
      }

      v229 = specialized Dictionary.subscript.getter(1851876717, 0xE400000000000000, v228);
      if (v230 & 1) != 0 || (v231 = v229, v232 = specialized Dictionary.subscript.getter(0x65636E6169726176, 0xE800000000000000, v228), (v233) || (v234 = v232, v486 = specialized Dictionary.subscript.getter(1635018082, 0xE400000000000000, v228), (v235))
      {
        v228;
LABEL_106:
        object = 0;
        v477 = 0xE000000000000000;
        _StringGuts.grow(_:)(55);
        v355._object = "layer to batchnorm for " + 0x8000000000000000;
        v355._countAndFlagsBits = 0xD00000000000001CLL;
        String.append(_:)(v355);
        v356 = NeuralNetwork.Layer.name.getter();
        v358 = v357;
        v355._countAndFlagsBits = v356;
        v355._object = v357;
        String.append(_:)(v355);
        v358;
        v355._object = "Cannot load innerProduct layer " + 0x8000000000000000;
        v355._countAndFlagsBits = 0xD000000000000019;
        String.append(_:)(v355);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, object, v477, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 653, 0);
        goto LABEL_117;
      }

      v466 = specialized Dictionary.subscript.getter(0x616D6D6167, 0xE500000000000000, v228);
      v237 = v236;
      v228;
      if (v237)
      {
        goto LABEL_106;
      }

      v238 = NeuralNetwork.Layer.BatchNormalizeParameters.inputChannelCount.getter();
      v239 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
      v240 = swift_allocObject(v239, 40, 7);
      v240[2] = 1;
      v240[3] = 2;
      v484 = v238;
      v240[4] = v238;
      v241 = v449;
      TensorShape.init(_:)(v240);
      v242 = v485;
      v243 = BlobsFile.floatBlob(at:)(v231);
      if (v242)
      {
        v485 = v242;
        outlined release of BlobsFile(v384);
        v467;
        log;
        v472;
        v471;
        v465;
        v473;
        (*(v464 + 8))(v241, v474);
        (*(v453 + 8))(v470, v451);
        v326 = v457;
        v327 = v452;
        v328 = v450;
        goto LABEL_81;
      }

      v475 = v243;
      v432 = BlobsFile.floatBlob(at:)(v234);
      v416 = BlobsFile.floatBlob(at:)(v486);
      v244 = v466;
      v245 = BlobsFile.floatBlob(at:)(v466);
      v485 = 0;
      v413._object = v245;
      v246 = v408;
      BatchNorm.$offset.getter();
      v247 = Parameter.id.getter(v244);
      v248 = v246;
      v249 = v437;
      v486 = *(v422 + 8);
      (v486)(v248, v437);
      v250 = v247;
      v251 = log;
      v252 = log;
      v431 = specialized Dictionary.subscript.getter(v247, log);
      if (!v431)
      {
        goto LABEL_112;
      }

      v253 = v407;
      BatchNorm.$scale.getter(v250, v252);
      v254 = Parameter.id.getter(v250);
      (v486)(v253, v249);
      v255 = specialized Dictionary.subscript.getter(v254, v251);
      if (!v255)
      {
        goto LABEL_111;
      }

      v417 = v255;
      v256 = v405;
      BatchNorm.$runningMean.getter(v254, v251);
      v257 = LayerState.id.getter();
      v258 = v256;
      v259 = v402;
      v486 = *(v403 + 8);
      (v486)(v258, v402);
      v260 = v467;
      v261 = v467;
      v446 = specialized Dictionary.subscript.getter(v257, v467);
      if (!v446)
      {
        goto LABEL_110;
      }

      v262 = v404;
      BatchNorm.$runningVariance.getter(v257, v261);
      v263 = LayerState.id.getter();
      (v486)(v262, v259);
      v438 = specialized Dictionary.subscript.getter(v263, v260);
      if (!v438)
      {

LABEL_110:

LABEL_111:

LABEL_112:
        object = 0;
        v477 = 0xE000000000000000;
        _StringGuts.grow(_:)(74);
        v367._object = "Cannot load batchnorm layer " + 0x8000000000000000;
        v367._countAndFlagsBits = 0xD000000000000039;
        String.append(_:)(v367);
        v368 = NeuralNetwork.Layer.name.getter();
        v370 = v369;
        v367._countAndFlagsBits = v368;
        v367._object = v369;
        String.append(_:)(v367);
        v370;
        v367._countAndFlagsBits = 0x65726F63206E6920;
        v367._object = 0xEF63657073206C6DLL;
        String.append(_:)(v367);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, object, v477, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 670, 0);
LABEL_117:
        BUG();
      }

      v264 = v415;
      v486 = *(v464 + 16);
      (v486)(v415, v449, v474);
      v265 = v454;
      v266 = v406;
      if ((v484 & 0x8000000000000000) != 0)
      {
        BUG();
      }

      if (v475[2] < v484)
      {
        BUG();
      }

      object = v475;
      v477 = v475 + 4;
      v478 = 0;
      v475 = (2 * v484 + 1);
      v479 = v475;
      v466 = type metadata accessor for ComputeDevice(0);
      __swift_storeEnumTagSinglePayload(v265, 1, 1, v466);
      v267 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ArraySlice<Float>);
      v268 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type ArraySlice<Float> and conformance ArraySlice<A>, &demangling cache variable for type metadata for ArraySlice<Float>, &protocol conformance descriptor for ArraySlice<A>);
      v458 = v267;
      v444 = v268;
      Tensor.init<A>(shape:scalars:on:)(v264, &object, v265, v267, v268);
      swift_beginAccess(v463, &object, 33, 0);
      v269 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel);
      v270 = v440;
      v445 = v269;
      Layer.updateValue<A>(_:for:)(v266, v446, v269, &protocol witness table for LayerState);
      swift_endAccess(&object);
      v443 = *(v423 + 8);
      v443(v266, v455);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v270, &demangling cache variable for type metadata for Tensor?);
      v271 = v415;
      (v486)(v415, v449, v474);
      if (v432[2] < v484)
      {
        BUG();
      }

      object = v432;
      v477 = v432 + 4;
      v478 = 0;
      v479 = v475;
      v272 = v454;
      __swift_storeEnumTagSinglePayload(v454, 1, 1, v466);
      Tensor.init<A>(shape:scalars:on:)(v271, &object, v272, v458, v444);
      swift_beginAccess(v463, &object, 33, 0);
      v273 = v440;
      Layer.updateValue<A>(_:for:)(v266, v438, v445, &protocol witness table for LayerState);
      swift_endAccess(&object);
      v443(v266, v455);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v273, &demangling cache variable for type metadata for Tensor?);
      (v486)(v271, v449, v474);
      if (v416[2] < v484)
      {
        BUG();
      }

      object = v416;
      v477 = v416 + 4;
      v478 = 0;
      v479 = v475;
      v274 = v454;
      __swift_storeEnumTagSinglePayload(v454, 1, 1, v466);
      Tensor.init<A>(shape:scalars:on:)(v271, &object, v274, v458, v444);
      swift_beginAccess(v463, &object, 33, 0);
      v275 = v440;
      Layer.updateValue<A>(_:for:)(v266, v431, v445, &protocol witness table for Parameter);
      swift_endAccess(&object);
      v443(v266, v455);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v275, &demangling cache variable for type metadata for Tensor?);
      (v486)(v271, v449, v474);
      if (*(v413._object + 2) < v484)
      {
        BUG();
      }

      object = v413._object;
      v477 = v413._object + 32;
      v478 = 0;
      v479 = v475;
      v276 = v454;
      __swift_storeEnumTagSinglePayload(v454, 1, 1, v466);
      Tensor.init<A>(shape:scalars:on:)(v271, &object, v276, v458, v444);
      swift_beginAccess(v463, &object, 33, 0);
      v277 = v440;
      Layer.updateValue<A>(_:for:)(v266, v417, v445, &protocol witness table for Parameter);
      swift_endAccess(&object);

      v443(v266, v455);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v277, &demangling cache variable for type metadata for Tensor?);
      (*(v464 + 8))(v449, v474);
      (*(v453 + 8))(v470, v451);
      v212 = v457;
      v213 = v452;
      v214 = v450;
    }

LABEL_71:
    (*(v214 + 8))(v212, v213);
    v145 = v487;
    (*(v483 + 8))(v487, v482);
    v146 = v460;
LABEL_74:
    v144 = v468 + v429;
    v143 = (v420 - 1);
    if (v420 == (&dword_0 + 1))
    {
      goto LABEL_75;
    }
  }

  (*(v150 + 96))(v149, v148);
  (*(v447 + 32))(v459, v149, v448);
  v152 = NeuralNetwork.Layer.name.getter();
  v154 = v153;
  v155 = v471;
  if (!v471[2] || (v146 = v149, v156 = specialized __RawDictionaryStorage.find<A>(_:)(v152, v153), (v157 & 1) == 0))
  {
    v154;
    object = 0;
    v477 = 0xE000000000000000;
    _StringGuts.grow(_:)(67);
    v329._object = "etrained hand action model" + 0x8000000000000000;
    v329._countAndFlagsBits = 0xD000000000000032;
    String.append(_:)(v329);
    v330 = NeuralNetwork.Layer.name.getter();
    v332 = v331;
    v329._countAndFlagsBits = v330;
    v329._object = v331;
    String.append(_:)(v329);
    v332;
    v329._countAndFlagsBits = 0x65726F63206E6920;
    v329._object = 0xEF63657073206C6DLL;
    String.append(_:)(v329);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, object, v477, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 690, 0);
    goto LABEL_117;
  }

  v158 = *(*(v155 + 56) + 8 * v156);
  v154;
  if (v158 == v465[2] - 1)
  {
    v159 = v414;
    v160 = v386;
    v387(v414, v386, v439);
    v161 = Logger.logObject.getter(v159, v160);
    v162 = static os_log_type_t.info.getter(v159);
    if (os_log_type_enabled(v161, v162))
    {
      v163 = swift_slowAlloc(2, -1);
      *v163 = 0;
      _os_log_impl(&dword_0, v161, v162, "Skipping last innerProduct layer when loading the pretrained-model.", v163, 2u);
      v164 = v163;
      v146 = v460;
      v164, -1, -1;
    }

    (*(v433 + 8))(v414, v439);
    (*(v447 + 8))(v459, v448);
    v145 = v487;
    v165 = v487;
    v166 = v482;
    v167 = v483;
    goto LABEL_73;
  }

  v278 = v441;
  if (v158 < 0)
  {
    BUG();
  }

  if (v158 >= v472[2])
  {
    BUG();
  }

  outlined init with copy of TabularRegressionTask(&v430[5 * v158], &object);
  v279 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Layer);
  v280 = v388;
  if (!swift_dynamicCast(v388, &object, v279, v278, 6))
  {
    __swift_storeEnumTagSinglePayload(v280, 1, 1, v278);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v280, &demangling cache variable for type metadata for Dense?);
    object = 0;
    v477 = 0xE000000000000000;
    _StringGuts.grow(_:)(81);
    v359._object = "amework layer for " + 0x8000000000000000;
    v359._countAndFlagsBits = 0xD000000000000040;
    String.append(_:)(v359);
    v360 = NeuralNetwork.Layer.name.getter();
    v362 = v361;
    v359._countAndFlagsBits = v360;
    v359._object = v361;
    String.append(_:)(v359);
    v362;
    v359._countAndFlagsBits = 0x65726F63206E6920;
    v359._object = 0xEF63657073206C6DLL;
    String.append(_:)(v359);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, object, v477, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 698, 0);
    goto LABEL_117;
  }

  __swift_storeEnumTagSinglePayload(v280, 0, 1, v278);
  (*(v442 + 32))(v456, v280, v278);
  v281 = NeuralNetwork.Layer.name.getter();
  v283 = v282;
  v284 = v473;
  if (!*(v473 + 16) || (v285 = specialized __RawDictionaryStorage.find<A>(_:)(v281, v282), v287 = v437, (v286 & 1) == 0))
  {
    v346 = v283;
LABEL_103:
    v346;
    object = 0;
    v477 = 0xE000000000000000;
    _StringGuts.grow(_:)(58);
    v347._object = "nnerProduct for " + 0x8000000000000000;
    v347._countAndFlagsBits = 0xD00000000000001FLL;
    String.append(_:)(v347);
    v348 = NeuralNetwork.Layer.name.getter();
    v350 = v349;
    v347._countAndFlagsBits = v348;
    v347._object = v349;
    String.append(_:)(v347);
    v350;
    v347._object = "Cannot load innerProduct layer " + 0x8000000000000000;
    v347._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v347);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, object, v477, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 704, 0);
    goto LABEL_117;
  }

  v288 = *(*(v284 + 56) + 8 * v285);

  v283;
  if (!*(v288 + 16) || (v289 = specialized __RawDictionaryStorage.find<A>(_:)(0x746867696577, 0xE600000000000000), (v290 & 1) == 0))
  {
    v346 = v288;
    goto LABEL_103;
  }

  v486 = v288;
  v484 = *(*(v288 + 56) + 8 * v289);
  v291 = v395;
  Dense.$weight.getter();
  v292 = Parameter.id.getter(0x746867696577);
  v475 = *(v422 + 8);
  (v475)(v291, v287);
  v293 = log;
  if (!*(log + 2) || (v294 = specialized __RawDictionaryStorage.find<A>(_:)(v292), (v295 & 1) == 0))
  {
    object = 0;
    v477 = 0xE000000000000000;
    _StringGuts.grow(_:)(64);
    v351._object = " in from MIL Blob Storage" + 0x8000000000000000;
    v351._countAndFlagsBits = 0xD00000000000003DLL;
    String.append(_:)(v351);
    v352 = NeuralNetwork.Layer.name.getter();
    v354 = v353;
    v351._countAndFlagsBits = v352;
    v351._object = v353;
    String.append(_:)(v351);
    v354;
    v351._countAndFlagsBits = 46;
    v351._object = 0xE100000000000000;
    String.append(_:)(v351);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, object, v477, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 707, 0);
    goto LABEL_117;
  }

  v296 = *(*(v293 + 7) + 8 * v294);
  v466 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v297 = swift_allocObject(v466, 48, 7);
  v297[2] = 2;
  v297[3] = 4;

  v297[4] = NeuralNetwork.Layer.InnerProductParameters.outputChannelCount.getter(v296);
  v297[5] = NeuralNetwork.Layer.InnerProductParameters.inputChannelCount.getter();
  v298 = v389;
  TensorShape.init(_:)(v297);
  v299 = v485;
  v300 = BlobsFile.floatBlob(at:)(v484);
  v485 = v299;
  if (v299)
  {

    v486;
    outlined release of BlobsFile(v384);
    v467;
    log;
    v472;
    v471;
    v465;
    v473;
    v325 = v298;
    goto LABEL_80;
  }

  object = v300;
  v301 = type metadata accessor for ComputeDevice(0);
  v484 = v296;
  v302 = v454;
  v458 = v301;
  __swift_storeEnumTagSinglePayload(v454, 1, 1, v301);
  v303 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  v304 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);
  v305 = v399;
  v443 = v303;
  v444 = v304;
  Tensor.init<A>(shape:scalars:on:)(v298, &object, v302, v303, v304);
  swift_beginAccess(v463, &object, 33, 0);
  v306 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel);
  v307 = v398;
  v445 = v306;
  Layer.updateValue<A>(_:for:)(v305, v484, v306, &protocol witness table for Parameter);
  swift_endAccess(&object);
  v308 = *(v423 + 8);
  v308(v305, v455);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v307, &demangling cache variable for type metadata for Tensor?);
  v309 = v486;
  if (!*(v486 + 16) || (v310 = specialized __RawDictionaryStorage.find<A>(_:)(1935763810, 0xE400000000000000), (v311 & 1) == 0))
  {

    v309;
    goto LABEL_70;
  }

  v438 = v308;
  v446 = *(*(v309 + 56) + 8 * v310);
  v309;
  v312 = v409;
  Dense.$bias.getter();
  v313 = v437;
  if (__swift_getEnumTagSinglePayload(v312, 1, v437) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v312, &demangling cache variable for type metadata for Parameter?);
LABEL_116:
    object = 0;
    v477 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    v379._countAndFlagsBits = 0xD00000000000003BLL;
    String.append(_:)(v379);
    v380 = NeuralNetwork.Layer.name.getter();
    v382 = v381;
    v379._countAndFlagsBits = v380;
    v379._object = v381;
    String.append(_:)(v379);
    v382;
    v379._countAndFlagsBits = 46;
    v379._object = 0xE100000000000000;
    String.append(_:)(v379);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, object, v477, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 721, 0);
    goto LABEL_117;
  }

  v314 = Parameter.id.getter(v312);
  (v475)(v312, v313);
  v315 = log;
  v486 = specialized Dictionary.subscript.getter(v314, log);
  if (!v486)
  {
    goto LABEL_116;
  }

  v316 = v466;
  v317 = swift_allocObject(v466, 40, 7);
  v317[2] = 1;
  v317[3] = 2;
  v317[4] = NeuralNetwork.Layer.InnerProductParameters.outputChannelCount.getter(v316);
  v318 = v410;
  TensorShape.init(_:)(v317);
  v319 = v485;
  v320 = BlobsFile.floatBlob(at:)(v446);
  v485 = v319;
  if (!v319)
  {
    object = v320;
    v321 = v454;
    __swift_storeEnumTagSinglePayload(v454, 1, 1, v458);
    v322 = v412;
    Tensor.init<A>(shape:scalars:on:)(v318, &object, v321, v443, v444);
    swift_beginAccess(v463, &object, 33, 0);
    v323 = v411;
    Layer.updateValue<A>(_:for:)(v322, v486, v445, &protocol witness table for Parameter);
    swift_endAccess(&object);

    v438(v322, v455);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v323, &demangling cache variable for type metadata for Tensor?);
LABEL_70:
    (*(v442 + 8))(v456, v441);
    v212 = v459;
    v213 = v448;
    v214 = v447;
    goto LABEL_71;
  }

  outlined release of BlobsFile(v384);
  v467;
  v315;
  v472;
  v471;
  v465;
  v473;
  v325 = v318;
LABEL_80:
  (*(v464 + 8))(v325, v474);
  (*(v442 + 8))(v456, v441);
  v326 = v459;
  v327 = v448;
  v328 = v447;
LABEL_81:
  (*(v328 + 8))(v326, v327);
  (*(v483 + 8))(v487, v482);
  v324 = v462;
LABEL_82:
  v324;
  v461(v469, v481);
}

void *MLHandActionClassifier.GraphCNN.coreMLTrainableLayerNames(from:)(uint64_t a1)
{
  v1 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = &v25;
  v7 = type metadata accessor for NeuralNetwork.Layer(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = &v25;
  if (*(a1 + 16))
  {
    v27 = *(a1 + 16);
    v37 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v28 = *(v8 + 16);
    v26 = v8;
    v29 = *(v8 + 72);
    v34 = enum case for NeuralNetwork.Layer.Kind.innerProduct(_:);
    v35 = enum case for NeuralNetwork.Layer.Kind.convolution(_:);
    v36 = enum case for NeuralNetwork.Layer.Kind.batchNormalize(_:);
    v31 = a1;
    v13 = v1;
    v14 = v7;

    v15 = v37;
    v40 = _swiftEmptyArrayStorage;
    v30 = v13;
    v32 = v2;
    v25 = &v25;
    v33 = v14;
    while (1)
    {
      v37 = v15;
      v28(v12, v15, v14);
      NeuralNetwork.Layer.kind.getter();
      v16 = v32;
      v17 = (*(v32 + 88))(v6, v13);
      v18 = v12;
      if (v17 == v34)
      {
        break;
      }

      v20 = v40;
      if (v17 == v35 || v17 == v36)
      {
        v38 = NeuralNetwork.Layer.name.getter();
        v39 = v21;
        goto LABEL_8;
      }

LABEL_13:
      v14 = v33;
      v12 = v18;
      (*(v26 + 8))(v18, v33);
      v6 = v25;
      (*(v16 + 8))(v25, v13);
      v15 = v29 + v37;
      if (!--v27)
      {
        v31;
        return v40;
      }
    }

    v38 = NeuralNetwork.Layer.name.getter();
    v39 = v19;
    v20 = v40;
LABEL_8:
    if (!swift_isUniquelyReferenced_nonNull_native(v20))
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
    }

    v22 = v20[2];
    if (v20[3] >> 1 <= v22)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v20[3] >= 2uLL, v22 + 1, 1, v20);
    }

    v20[2] = v22 + 1;
    v23 = 2 * v22;
    v20[v23 + 4] = v38;
    v40 = v20;
    v20[v23 + 5] = v39;
    v13 = v30;
    v16 = v32;
    goto LABEL_13;
  }

  return _swiftEmptyArrayStorage;
}

void *MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:)(unint64_t a1, unint64_t a2)
{
  v544 = v2;
  v518 = a2;
  v604 = a1;
  v522 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  v523 = *(v522 - 8);
  v3 = *(v523 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v521 = v517;
  v545 = type metadata accessor for NeuralNetwork.Layer.PoolParameters(0);
  v546 = *(v545 - 8);
  v6 = *(v546 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v547 = v517;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.Layer.PoolParameters.Padding?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v590 = v517;
  v596 = type metadata accessor for NeuralNetwork.Layer.PoolParameters.Kind(0);
  v592 = *(v596 - 8);
  v12 = *(v592 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v591 = v517;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v599 = v517;
  v601 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.Extent<Int>);
  v538 = *(v601 - 8);
  v18 = *(v538 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v602 = v517;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v603 = v517;
  v609 = type metadata accessor for NeuralNetwork.Layer(0);
  v608 = *(v609 - 8);
  v23 = v608[8];
  v24 = alloca(v23);
  v25 = alloca(v23);
  v520 = v517;
  v26 = alloca(v23);
  v27 = alloca(v23);
  v524 = v517;
  v28 = alloca(v23);
  v29 = alloca(v23);
  v548 = v517;
  v30 = alloca(v23);
  v31 = alloca(v23);
  v549 = v517;
  v32 = alloca(v23);
  v33 = alloca(v23);
  v525 = v517;
  v34 = alloca(v23);
  v35 = alloca(v23);
  v36 = alloca(v23);
  v37 = alloca(v23);
  v526 = v517;
  v38 = alloca(v23);
  v39 = alloca(v23);
  v551 = v517;
  v40 = alloca(v23);
  v41 = alloca(v23);
  v527 = v517;
  v42 = alloca(v23);
  v43 = alloca(v23);
  v528 = v517;
  v44 = alloca(v23);
  v45 = alloca(v23);
  v552 = v517;
  v46 = alloca(v23);
  v47 = alloca(v23);
  v553 = v517;
  v48 = alloca(v23);
  v49 = alloca(v23);
  v529 = v517;
  v50 = alloca(v23);
  v51 = alloca(v23);
  v583 = v517;
  v52 = alloca(v23);
  v53 = alloca(v23);
  v530 = v517;
  v54 = alloca(v23);
  v55 = alloca(v23);
  v554 = v517;
  v56 = alloca(v23);
  v57 = alloca(v23);
  v531 = v517;
  v58 = alloca(v23);
  v59 = alloca(v23);
  v532 = v517;
  v60 = alloca(v23);
  v61 = alloca(v23);
  v555 = v517;
  v62 = alloca(v23);
  v63 = alloca(v23);
  v556 = v517;
  v64 = alloca(v23);
  v65 = alloca(v23);
  v557 = v517;
  v66 = alloca(v23);
  v67 = alloca(v23);
  v558 = v517;
  v68 = alloca(v23);
  v69 = alloca(v23);
  v533 = v517;
  v70 = alloca(v23);
  v71 = alloca(v23);
  v534 = v517;
  v72 = alloca(v23);
  v73 = alloca(v23);
  v559 = v517;
  v74 = alloca(v23);
  v75 = alloca(v23);
  v560 = v517;
  v76 = alloca(v23);
  v77 = alloca(v23);
  v561 = v517;
  v78 = alloca(v23);
  v79 = alloca(v23);
  v584 = v517;
  v80 = alloca(v23);
  v81 = alloca(v23);
  v562 = v517;
  v82 = alloca(v23);
  v83 = alloca(v23);
  v563 = v517;
  v84 = alloca(v23);
  v85 = alloca(v23);
  v535 = v517;
  v86 = alloca(v23);
  v87 = alloca(v23);
  v564 = v517;
  v88 = alloca(v23);
  v89 = alloca(v23);
  v565 = v517;
  v90 = alloca(v23);
  v91 = alloca(v23);
  v566 = v517;
  v92 = alloca(v23);
  v93 = alloca(v23);
  v567 = v517;
  v94 = alloca(v23);
  v95 = alloca(v23);
  v585 = v517;
  v96 = alloca(v23);
  v97 = alloca(v23);
  v568 = v517;
  v98 = alloca(v23);
  v99 = alloca(v23);
  v569 = v517;
  v100 = alloca(v23);
  v101 = alloca(v23);
  v536 = v517;
  v102 = alloca(v23);
  v103 = alloca(v23);
  v570 = v517;
  v104 = alloca(v23);
  v105 = alloca(v23);
  v571 = v517;
  v106 = alloca(v23);
  v107 = alloca(v23);
  v572 = v517;
  v108 = alloca(v23);
  v109 = alloca(v23);
  v573 = v517;
  v110 = alloca(v23);
  v111 = alloca(v23);
  v586 = v517;
  v112 = alloca(v23);
  v113 = alloca(v23);
  v574 = v517;
  v114 = alloca(v23);
  v115 = alloca(v23);
  v575 = v517;
  v116 = alloca(v23);
  v117 = alloca(v23);
  v537 = v517;
  v118 = alloca(v23);
  v119 = alloca(v23);
  v576 = v517;
  v120 = alloca(v23);
  v121 = alloca(v23);
  v577 = v517;
  v122 = alloca(v23);
  v123 = alloca(v23);
  v578 = v517;
  v124 = alloca(v23);
  v125 = alloca(v23);
  v579 = v517;
  v126 = alloca(v23);
  v127 = alloca(v23);
  v587 = v517;
  v128 = alloca(v23);
  v129 = alloca(v23);
  v539 = v517;
  v130 = alloca(v23);
  v131 = alloca(v23);
  v580 = v517;
  v132 = alloca(v23);
  v133 = alloca(v23);
  v540 = v517;
  v134 = alloca(v23);
  v135 = alloca(v23);
  v588 = v517;
  v136 = alloca(v23);
  v137 = alloca(v23);
  v598 = v517;
  v138 = alloca(v23);
  v139 = alloca(v23);
  v593 = v517;
  v140 = alloca(v23);
  v141 = alloca(v23);
  v541 = v517;
  v142 = alloca(v23);
  v143 = alloca(v23);
  v594 = v517;
  v144 = alloca(v23);
  v145 = alloca(v23);
  v595 = v517;
  v146 = alloca(v23);
  v147 = alloca(v23);
  v542 = v517;
  v148 = alloca(v23);
  v149 = alloca(v23);
  v581 = v517;
  v150 = alloca(v23);
  v151 = alloca(v23);
  v600 = v517;
  v152 = alloca(v23);
  v153 = alloca(v23);
  v597 = v517;
  v154 = alloca(v23);
  v155 = alloca(v23);
  v519 = v517;
  v156 = alloca(v23);
  v157 = alloca(v23);
  v158 = alloca(v23);
  v159 = alloca(v23);
  v611 = _swiftEmptyArrayStorage;
  static NeuralNetwork.Layer.expandDimensions(name:inputName:outputName:axes:)(3288696, 0xE300000000000000, 0x7365736F70, 0xE500000000000000, 3288696, 0xE300000000000000, &outlined read-only object #0 of MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:));
  v160 = v611;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v611);
  v582 = v517;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v160 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v160[2] + 1, 1, v160);
  }

  v162 = v160[2];
  if (v160[3] >> 1 <= v162)
  {
    v160 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v160[3] >= 2uLL, v162 + 1, 1, v160);
  }

  v160[2] = v162 + 1;
  v606 = (*(v608 + 80) + 32) & ~*(v608 + 80);
  v163 = v608[4];
  v607 = v608[9];
  v608 = v163;
  (v163)(v160 + v606 + v607 * v162, v517, v609);
  v611 = v160;
  static NeuralNetwork.Layer.transpose(name:inputName:outputName:axes:)(&loc_332E78, 0xE300000000000000, 3288696, 0xE300000000000000, &loc_332E78, 0xE300000000000000, &outlined read-only object #1 of MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:));
  v164 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v164 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v164[2] + 1, 1, v164);
  }

  v165 = v164[2];
  if (v164[3] >> 1 <= v165)
  {
    v164 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v164[3] >= 2uLL, v165 + 1, 1, v164);
  }

  v164[2] = v165 + 1;
  (v608)(v164 + v606 + v607 * v165, v517, v609);
  v611 = v164;
  v550 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v166 = swift_allocObject(v550, 56, 7);
  v166[2] = 3;
  v166[3] = 6;
  v166[4] = 1;
  v167 = v544 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  swift_beginAccess(v544 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model, v517, 0, 0);
  v543 = type metadata accessor for MLHandActionClassifier.GraphCNNModel(0);
  v166[5] = *(*(v543 + 40) + v167);
  v166[6] = -1;
  v168 = v519;
  static NeuralNetwork.Layer.reshapeStatic(name:inputName:outputName:targetShape:)(&unk_343031, 0xE300000000000000, &loc_332E78, 0xE300000000000000, &unk_343031, 0xE300000000000000, v166);
  v166;
  v169 = v611;
  v170 = swift_isUniquelyReferenced_nonNull_native(v611);
  v589 = v167;
  if (!v170)
  {
    v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v169[2] + 1, 1, v169);
  }

  v171 = v169[2];
  if (v169[3] >> 1 <= v171)
  {
    v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v169[3] >= 2uLL, v171 + 1, 1, v169);
  }

  v169[2] = v171 + 1;
  (v608)(v169 + v606 + v607 * v171, v168, v609);
  v611 = v169;
  static NeuralNetwork.Layer.expandDimensions(name:inputName:outputName:axes:)(&unk_342E78, 0xE300000000000000, &unk_343031, 0xE300000000000000, &unk_342E78, 0xE300000000000000, &outlined read-only object #2 of MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:));
  v172 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v172 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v172[2] + 1, 1, v172);
  }

  v173 = v172[2];
  if (v172[3] >> 1 <= v173)
  {
    v172 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v172[3] >= 2uLL, v173 + 1, 1, v172);
  }

  v172[2] = v173 + 1;
  (v608)(v172 + v606 + v607 * v173, v597, v609);
  v611 = v172;
  static NeuralNetwork.Layer.transpose(name:inputName:outputName:axes:)(0x312E7475706E69, 0xE700000000000000, &unk_342E78, 0xE300000000000000, 0x312E7475706E69, 0xE700000000000000, &outlined read-only object #3 of MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:));
  v174 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v174 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v174[2] + 1, 1, v174);
  }

  v175 = v174[2];
  if (v174[3] >> 1 <= v175)
  {
    v174 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v174[3] >= 2uLL, v175 + 1, 1, v174);
  }

  v174[2] = v175 + 1;
  (v608)(v174 + v606 + v607 * v175, v600, v609);
  v176 = v518 * v604;
  if (!is_mul_ok(v518, v604))
  {
    BUG();
  }

  static NeuralNetwork.Layer.batchNormalize(name:inputName:outputName:inputChannelCount:)(3485304, 0xE300000000000000, 0x312E7475706E69, 0xE700000000000000, 3485304, 0xE300000000000000, v518 * v604);
  v177 = v174[2];
  if (v174[3] >> 1 <= v177)
  {
    v174 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v174[3] >= 2uLL, v177 + 1, 1, v174);
  }

  v174[2] = v177 + 1;
  (v608)(v174 + v606 + v607 * v177, v581, v609);
  v611 = v174;
  v178 = v542;
  static NeuralNetwork.Layer.transpose(name:inputName:outputName:axes:)(&unk_353231, 0xE300000000000000, 3485304, 0xE300000000000000, &unk_353231, 0xE300000000000000, &outlined read-only object #4 of MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:));
  v179 = v611;
  v180 = swift_isUniquelyReferenced_nonNull_native(v611);
  v604 = v176;
  if (!v180)
  {
    v179 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v179[2] + 1, 1, v179);
  }

  v181 = v179[2];
  if (v179[3] >> 1 <= v181)
  {
    v179 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v179[3] >= 2uLL, v181 + 1, 1, v179);
  }

  v179[2] = v181 + 1;
  (v608)(v179 + v606 + v607 * v181, v178, v609);
  v611 = v179;
  static NeuralNetwork.Layer.squeeze(name:inputName:outputName:axes:)(&unk_362E78, 0xE300000000000000, &unk_353231, 0xE300000000000000, &unk_362E78, 0xE300000000000000, &outlined read-only object #5 of MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:));
  v182 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v182 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v182[2] + 1, 1, v182);
  }

  v183 = v604;
  v184 = v182[2];
  if (v182[3] >> 1 <= v184)
  {
    v182 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v182[3] >= 2uLL, v184 + 1, 1, v182);
  }

  v182[2] = v184 + 1;
  (v608)(v182 + v606 + v607 * v184, v595, v609);
  static NeuralNetwork.Layer.innerProduct(name:inputName:outputName:inputChannelCount:outputChannelCount:)(&unk_372E78, 0xE300000000000000, &unk_362E78, 0xE300000000000000, &unk_372E78, 0xE300000000000000, v183, 704);
  v185 = v182[2];
  if (v182[3] >> 1 <= v185)
  {
    v182 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v182[3] >= 2uLL, v185 + 1, 1, v182);
  }

  v186 = v589;
  v182[2] = v185 + 1;
  (v608)(v182 + v606 + v607 * v185, v594, v609);
  v611 = v182;
  v187 = swift_allocObject(v550, 64, 7);
  v188 = v187;
  v187[2] = 4;
  v187[3] = 8;
  v187[4] = 1;
  v187[5] = *(v186 + *(v543 + 40));
  v187[6] = 44;
  v187[7] = 16;
  v189 = v541;
  static NeuralNetwork.Layer.reshapeStatic(name:inputName:outputName:targetShape:)(3486769, 0xE300000000000000, &unk_372E78, 0xE300000000000000, 3486769, 0xE300000000000000, v187);
  v188;
  v190 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v190 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v190[2] + 1, 1, v190);
  }

  v191 = v190[2];
  if (v190[3] >> 1 <= v191)
  {
    v190 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v190[3] >= 2uLL, v191 + 1, 1, v190);
  }

  v190[2] = v191 + 1;
  (v608)(v190 + v606 + v607 * v191, v189, v609);
  v611 = v190;
  static NeuralNetwork.Layer.transpose(name:inputName:outputName:axes:)(0x322E7475706E69, 0xE700000000000000, 3486769, 0xE300000000000000, 0x322E7475706E69, 0xE700000000000000, &outlined read-only object #6 of MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:));
  v192 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v192 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v192[2] + 1, 1, v192);
  }

  v193 = v192[2];
  if (v192[3] >> 1 <= v193)
  {
    v192 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v192[3] >= 2uLL, v193 + 1, 1, v192);
  }

  v192[2] = v193 + 1;
  (v608)(v192 + v606 + v607 * v193, v593, v609);
  static NeuralNetwork.Layer.batchNormalize(name:inputName:outputName:inputChannelCount:)(0x332E7475706E69, 0xE700000000000000, 0x322E7475706E69, 0xE700000000000000, 0x332E7475706E69, 0xE700000000000000, 16);
  v194 = v192[2];
  if (v192[3] >> 1 <= v194)
  {
    v192 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v192[3] >= 2uLL, v194 + 1, 1, v192);
  }

  v195 = v588;
  v192[2] = v194 + 1;
  (v608)(v192 + v606 + v607 * v194, v598, v609);
  static NeuralNetwork.Layer.relu(name:inputName:outputName:)(0x342E7475706E69, 0xE700000000000000, 0x332E7475706E69, 0xE700000000000000, 0x342E7475706E69, 0xE700000000000000);
  v196 = v192[2];
  if (v192[3] >> 1 <= v196)
  {
    v192 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v192[3] >= 2uLL, v196 + 1, 1, v192);
  }

  v192[2] = v196 + 1;
  (v608)(v192 + v606 + v607 * v196, v195, v609);
  v611 = v192;
  v610 = 1;
  v605 = 1;
  v197 = v603;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v198 = v599;
  NeuralNetwork.ValidPaddingParameters.init()();
  v199 = enum case for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind.valid(_:);
  v200 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind(0);
  v201 = *(*(v200 - 8) + 104);
  LODWORD(v597) = v199;
  v598 = v201;
  (v201)(v198, v199, v200);
  v600 = v200;
  __swift_storeEnumTagSinglePayload(v198, 0, 1, v200);
  v610 = 1;
  v605 = 1;
  v202 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v203 = v540;
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x352E7475706E69, 0xE700000000000000, 0x342E7475706E69, 0xE700000000000000, 0x352E7475706E69, 0xE700000000000000, 32, 16, 1, v197, v202, v198);
  v204 = *(v538 + 8);
  v205 = v202;
  v206 = v601;
  v204(v205, v601);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v198, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v604 = v204;
  v204(v197, v206);
  v207 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v207 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v207[2] + 1, 1, v207);
  }

  v208 = v207[2];
  if (v207[3] >> 1 <= v208)
  {
    v207 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v207[3] >= 2uLL, v208 + 1, 1, v207);
  }

  v207[2] = v208 + 1;
  (v608)(v207 + v606 + v607 * v208, v203, v609);
  v611 = v207;
  v209 = *(v592 + 104);
  v210 = v591;
  LODWORD(v595) = enum case for NeuralNetwork.Layer.PoolParameters.Kind.average(_:);
  v594 = v209;
  (v209)(v591, enum case for NeuralNetwork.Layer.PoolParameters.Kind.average(_:), v596);
  v610 = 1;
  v605 = 3;
  v211 = v603;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v212 = v590;
  static NeuralNetwork.Layer.PoolParameters.Padding.valid(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)(0, 0, 1, 1);
  v593 = type metadata accessor for NeuralNetwork.Layer.PoolParameters.Padding(0);
  __swift_storeEnumTagSinglePayload(v212, 0, 1, v593);
  v610 = 1;
  v605 = 1;
  v213 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  static NeuralNetwork.Layer.pool(name:inputName:outputName:kind:kernelSize:strides:padding:)(0x362E7475706E69, 0xE700000000000000, 0x352E7475706E69, 0xE700000000000000, 0x362E7475706E69, 0xE700000000000000, v210, v211, v213, v212);
  v214 = v213;
  v215 = v601;
  v216 = v604;
  (v604)(v214, v601);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v212, &demangling cache variable for type metadata for NeuralNetwork.Layer.PoolParameters.Padding?);
  v216(v211, v215);
  v592 = *(v592 + 8);
  (v592)(v210, v596);
  v217 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v217 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v217[2] + 1, 1, v217);
  }

  v218 = v217[2];
  if (v217[3] >> 1 <= v218)
  {
    v217 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v217[3] >= 2uLL, v218 + 1, 1, v217);
  }

  v217[2] = v218 + 1;
  (v608)(v217 + v606 + v607 * v218, v580, v609);
  v611 = v217;
  v610 = 9;
  v605 = 1;
  v219 = v603;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v220 = v599;
  static NeuralNetwork.Layer.ConvolutionParameters.PaddingKind.valid(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)(4, 4, 0, 0);
  __swift_storeEnumTagSinglePayload(v220, 0, 1, v600);
  v610 = 1;
  v605 = 1;
  v221 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v222 = v539;
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x372E7475706E69, 0xE700000000000000, 0x362E7475706E69, 0xE700000000000000, 0x372E7475706E69, 0xE700000000000000, 8, 32, 1, v219, v221, v220);
  v223 = v221;
  v224 = v601;
  v225 = v604;
  (v604)(v223, v601);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v220, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v225(v219, v224);
  v226 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v226 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v226[2] + 1, 1, v226);
  }

  v227 = v587;
  v228 = v226[2];
  if (v226[3] >> 1 <= v228)
  {
    v226 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v226[3] >= 2uLL, v228 + 1, 1, v226);
  }

  v226[2] = v228 + 1;
  (v608)(v226 + v606 + v607 * v228, v222, v609);
  static NeuralNetwork.Layer.batchNormalize(name:inputName:outputName:inputChannelCount:)(0x382E7475706E69, 0xE700000000000000, 0x372E7475706E69, 0xE700000000000000, 0x382E7475706E69, 0xE700000000000000, 8);
  v229 = v226[2];
  if (v226[3] >> 1 <= v229)
  {
    v226 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v226[3] >= 2uLL, v229 + 1, 1, v226);
  }

  v226[2] = v229 + 1;
  (v608)(v226 + v606 + v607 * v229, v227, v609);
  v611 = v226;
  v610 = 1;
  v605 = 1;
  v230 = v603;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v231 = v599;
  NeuralNetwork.ValidPaddingParameters.init()();
  v232 = v600;
  (v598)(v231, v597, v600);
  __swift_storeEnumTagSinglePayload(v231, 0, 1, v232);
  v610 = 1;
  v605 = 1;
  v233 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x392E7475706E69, 0xE700000000000000, 0x342E7475706E69, 0xE700000000000000, 0x392E7475706E69, 0xE700000000000000, 8, 16, 1, v230, v233, v231);
  v234 = v233;
  v235 = v601;
  v236 = v604;
  (v604)(v234, v601);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v231, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v236(v230, v235);
  v237 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v237 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v237[2] + 1, 1, v237);
  }

  v238 = v237[2];
  if (v237[3] >> 1 <= v238)
  {
    v237 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v237[3] >= 2uLL, v238 + 1, 1, v237);
  }

  v237[2] = v238 + 1;
  (v608)(v237 + v606 + v607 * v238, v579, v609);
  static NeuralNetwork.Layer.batchNormalize(name:inputName:outputName:inputChannelCount:)(0x6C61756469736572, 0xEA0000000000312ELL, 0x392E7475706E69, 0xE700000000000000, 0x6C61756469736572, 0xEA0000000000312ELL, 8);
  v239 = v237[2];
  if (v237[3] >> 1 <= v239)
  {
    v237 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v237[3] >= 2uLL, v239 + 1, 1, v237);
  }

  v237[2] = v239 + 1;
  (v608)(v237 + v606 + v607 * v239, v578, v609);
  v611 = v237;
  static NeuralNetwork.Layer.add(name:inputNames:outputName:)(0x30312E7475706E69, 0xE800000000000000, &outlined read-only object #7 of MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:), 0x30312E7475706E69, 0xE800000000000000);
  v240 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v240 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v240[2] + 1, 1, v240);
  }

  v241 = v240[2];
  if (v240[3] >> 1 <= v241)
  {
    v240 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v240[3] >= 2uLL, v241 + 1, 1, v240);
  }

  v240[2] = v241 + 1;
  (v608)(v240 + v606 + v607 * v241, v577, v609);
  static NeuralNetwork.Layer.relu(name:inputName:outputName:)(0x31312E7475706E69, 0xE800000000000000, 0x30312E7475706E69, 0xE800000000000000, 0x31312E7475706E69, 0xE800000000000000);
  v242 = v240[2];
  if (v240[3] >> 1 <= v242)
  {
    v240 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v240[3] >= 2uLL, v242 + 1, 1, v240);
  }

  v240[2] = v242 + 1;
  (v608)(v240 + v606 + v607 * v242, v576, v609);
  v611 = v240;
  v610 = 1;
  v605 = 1;
  v243 = v603;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v244 = v599;
  NeuralNetwork.ValidPaddingParameters.init()();
  v245 = v600;
  (v598)(v244, v597, v600);
  __swift_storeEnumTagSinglePayload(v244, 0, 1, v245);
  v610 = 1;
  v605 = 1;
  v246 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v247 = v537;
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x32312E7475706E69, 0xE800000000000000, 0x31312E7475706E69, 0xE800000000000000, 0x32312E7475706E69, 0xE800000000000000, 16, 8, 1, v243, v246, v244);
  v248 = v246;
  v249 = v601;
  v250 = v604;
  (v604)(v248, v601);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v244, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v250(v243, v249);
  v251 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v251 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v251[2] + 1, 1, v251);
  }

  v252 = v251[2];
  if (v251[3] >> 1 <= v252)
  {
    v251 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v251[3] >= 2uLL, v252 + 1, 1, v251);
  }

  v251[2] = v252 + 1;
  (v608)(v251 + v606 + v607 * v252, v247, v609);
  v611 = v251;
  v253 = v591;
  (v594)(v591, v595, v596);
  v610 = 1;
  v605 = 3;
  v254 = v603;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v255 = v590;
  static NeuralNetwork.Layer.PoolParameters.Padding.valid(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)(0, 0, 1, 1);
  __swift_storeEnumTagSinglePayload(v255, 0, 1, v593);
  v610 = 1;
  v605 = 1;
  v256 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  static NeuralNetwork.Layer.pool(name:inputName:outputName:kind:kernelSize:strides:padding:)(0x33312E7475706E69, 0xE800000000000000, 0x32312E7475706E69, 0xE800000000000000, 0x33312E7475706E69, 0xE800000000000000, v253, v254, v256, v255);
  v257 = v256;
  v258 = v601;
  v259 = v604;
  (v604)(v257, v601);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v255, &demangling cache variable for type metadata for NeuralNetwork.Layer.PoolParameters.Padding?);
  v259(v254, v258);
  (v592)(v253, v596);
  v260 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v260 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v260[2] + 1, 1, v260);
  }

  v261 = v260[2];
  if (v260[3] >> 1 <= v261)
  {
    v260 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v260[3] >= 2uLL, v261 + 1, 1, v260);
  }

  v260[2] = v261 + 1;
  (v608)(v260 + v606 + v607 * v261, v575, v609);
  v611 = v260;
  v610 = 9;
  v605 = 1;
  v262 = v603;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v263 = v599;
  static NeuralNetwork.Layer.ConvolutionParameters.PaddingKind.valid(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)(4, 4, 0, 0);
  __swift_storeEnumTagSinglePayload(v263, 0, 1, v600);
  v610 = 1;
  v605 = 1;
  v264 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x34312E7475706E69, 0xE800000000000000, 0x33312E7475706E69, 0xE800000000000000, 0x34312E7475706E69, 0xE800000000000000, 16, 16, 1, v262, v264, v263);
  v265 = v264;
  v266 = v601;
  v267 = v604;
  (v604)(v265, v601);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v263, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v267(v262, v266);
  v268 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v268 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v268[2] + 1, 1, v268);
  }

  v269 = v586;
  v270 = v268[2];
  if (v268[3] >> 1 <= v270)
  {
    v268 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v268[3] >= 2uLL, v270 + 1, 1, v268);
  }

  v268[2] = v270 + 1;
  (v608)(v268 + v606 + v607 * v270, v574, v609);
  static NeuralNetwork.Layer.batchNormalize(name:inputName:outputName:inputChannelCount:)(0x35312E7475706E69, 0xE800000000000000, 0x34312E7475706E69, 0xE800000000000000, 0x35312E7475706E69, 0xE800000000000000, 16);
  v271 = v268[2];
  if (v268[3] >> 1 <= v271)
  {
    v268 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v268[3] >= 2uLL, v271 + 1, 1, v268);
  }

  v268[2] = v271 + 1;
  (v608)(v268 + v606 + v607 * v271, v269, v609);
  v611 = v268;
  v610 = 1;
  v605 = 1;
  v272 = v603;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v273 = v599;
  NeuralNetwork.ValidPaddingParameters.init()();
  v274 = v600;
  (v598)(v273, v597, v600);
  __swift_storeEnumTagSinglePayload(v273, 0, 1, v274);
  v610 = 1;
  v605 = 1;
  v275 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x36312E7475706E69, 0xE800000000000000, 0x31312E7475706E69, 0xE800000000000000, 0x36312E7475706E69, 0xE800000000000000, 16, 8, 1, v272, v275, v273);
  v276 = v275;
  v277 = v601;
  v278 = v604;
  (v604)(v276, v601);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v273, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v278(v272, v277);
  v279 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v279 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v279[2] + 1, 1, v279);
  }

  v280 = v279[2];
  if (v279[3] >> 1 <= v280)
  {
    v279 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v279[3] >= 2uLL, v280 + 1, 1, v279);
  }

  v279[2] = v280 + 1;
  (v608)(v279 + v606 + v607 * v280, v573, v609);
  static NeuralNetwork.Layer.batchNormalize(name:inputName:outputName:inputChannelCount:)(0x6C61756469736572, 0xEA0000000000322ELL, 0x36312E7475706E69, 0xE800000000000000, 0x6C61756469736572, 0xEA0000000000322ELL, 16);
  v281 = v279[2];
  if (v279[3] >> 1 <= v281)
  {
    v279 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v279[3] >= 2uLL, v281 + 1, 1, v279);
  }

  v279[2] = v281 + 1;
  (v608)(v279 + v606 + v607 * v281, v572, v609);
  v611 = v279;
  static NeuralNetwork.Layer.add(name:inputNames:outputName:)(0x37312E7475706E69, 0xE800000000000000, &outlined read-only object #8 of MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:), 0x37312E7475706E69, 0xE800000000000000);
  v282 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v282 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v282[2] + 1, 1, v282);
  }

  v283 = v282[2];
  if (v282[3] >> 1 <= v283)
  {
    v282 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v282[3] >= 2uLL, v283 + 1, 1, v282);
  }

  v282[2] = v283 + 1;
  (v608)(v282 + v606 + v607 * v283, v571, v609);
  static NeuralNetwork.Layer.relu(name:inputName:outputName:)(0x38312E7475706E69, 0xE800000000000000, 0x37312E7475706E69, 0xE800000000000000, 0x38312E7475706E69, 0xE800000000000000);
  v284 = v282[2];
  if (v282[3] >> 1 <= v284)
  {
    v282 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v282[3] >= 2uLL, v284 + 1, 1, v282);
  }

  v282[2] = v284 + 1;
  (v608)(v282 + v606 + v607 * v284, v570, v609);
  v611 = v282;
  v610 = 1;
  v605 = 1;
  v285 = v603;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v286 = v599;
  NeuralNetwork.ValidPaddingParameters.init()();
  v287 = v600;
  (v598)(v286, v597, v600);
  __swift_storeEnumTagSinglePayload(v286, 0, 1, v287);
  v610 = 1;
  v605 = 1;
  v288 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v289 = v536;
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x39312E7475706E69, 0xE800000000000000, 0x38312E7475706E69, 0xE800000000000000, 0x39312E7475706E69, 0xE800000000000000, 32, 16, 1, v285, v288, v286);
  v290 = v288;
  v291 = v601;
  v292 = v604;
  (v604)(v290, v601);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v286, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v292(v285, v291);
  v293 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v293 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v293[2] + 1, 1, v293);
  }

  v294 = v293[2];
  if (v293[3] >> 1 <= v294)
  {
    v293 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v293[3] >= 2uLL, v294 + 1, 1, v293);
  }

  v293[2] = v294 + 1;
  (v608)(v293 + v606 + v607 * v294, v289, v609);
  v611 = v293;
  v295 = v591;
  (v594)(v591, v595, v596);
  v610 = 1;
  v605 = 3;
  v296 = v603;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v297 = v590;
  static NeuralNetwork.Layer.PoolParameters.Padding.valid(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)(0, 0, 1, 1);
  __swift_storeEnumTagSinglePayload(v297, 0, 1, v593);
  v610 = 1;
  v605 = 1;
  v298 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  static NeuralNetwork.Layer.pool(name:inputName:outputName:kind:kernelSize:strides:padding:)(0x30322E7475706E69, 0xE800000000000000, 0x39312E7475706E69, 0xE800000000000000, 0x30322E7475706E69, 0xE800000000000000, v295, v296, v298, v297);
  v299 = v298;
  v300 = v601;
  v301 = v604;
  (v604)(v299, v601);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v297, &demangling cache variable for type metadata for NeuralNetwork.Layer.PoolParameters.Padding?);
  v301(v296, v300);
  (v592)(v295, v596);
  v302 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v302 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v302[2] + 1, 1, v302);
  }

  v303 = v302[2];
  if (v302[3] >> 1 <= v303)
  {
    v302 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v302[3] >= 2uLL, v303 + 1, 1, v302);
  }

  v302[2] = v303 + 1;
  (v608)(v302 + v606 + v607 * v303, v569, v609);
  v611 = v302;
  v610 = 9;
  v605 = 1;
  v304 = v603;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v305 = v599;
  static NeuralNetwork.Layer.ConvolutionParameters.PaddingKind.valid(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)(4, 4, 0, 0);
  __swift_storeEnumTagSinglePayload(v305, 0, 1, v600);
  v610 = 1;
  v605 = 1;
  v306 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x31322E7475706E69, 0xE800000000000000, 0x30322E7475706E69, 0xE800000000000000, 0x31322E7475706E69, 0xE800000000000000, 32, 32, 1, v304, v306, v305);
  v307 = v306;
  v308 = v601;
  v309 = v604;
  (v604)(v307, v601);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v305, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v309(v304, v308);
  v310 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v310 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v310[2] + 1, 1, v310);
  }

  v311 = v585;
  v312 = v310[2];
  if (v310[3] >> 1 <= v312)
  {
    v310 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v310[3] >= 2uLL, v312 + 1, 1, v310);
  }

  v310[2] = v312 + 1;
  (v608)(v310 + v606 + v607 * v312, v568, v609);
  static NeuralNetwork.Layer.batchNormalize(name:inputName:outputName:inputChannelCount:)(0x32322E7475706E69, 0xE800000000000000, 0x31322E7475706E69, 0xE800000000000000, 0x32322E7475706E69, 0xE800000000000000, 32);
  v313 = v310[2];
  if (v310[3] >> 1 <= v313)
  {
    v310 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v310[3] >= 2uLL, v313 + 1, 1, v310);
  }

  v310[2] = v313 + 1;
  (v608)(v310 + v606 + v607 * v313, v311, v609);
  v611 = v310;
  v610 = 1;
  v605 = 1;
  v314 = v603;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v315 = v599;
  NeuralNetwork.ValidPaddingParameters.init()();
  v316 = v600;
  (v598)(v315, v597, v600);
  __swift_storeEnumTagSinglePayload(v315, 0, 1, v316);
  v610 = 1;
  v605 = 1;
  v317 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x33322E7475706E69, 0xE800000000000000, 0x38312E7475706E69, 0xE800000000000000, 0x33322E7475706E69, 0xE800000000000000, 32, 16, 1, v314, v317, v315);
  v318 = v317;
  v319 = v601;
  v320 = v604;
  (v604)(v318, v601);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v315, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v320(v314, v319);
  v321 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v321 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v321[2] + 1, 1, v321);
  }

  v322 = v321[2];
  if (v321[3] >> 1 <= v322)
  {
    v321 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v321[3] >= 2uLL, v322 + 1, 1, v321);
  }

  v321[2] = v322 + 1;
  (v608)(v321 + v606 + v607 * v322, v567, v609);
  static NeuralNetwork.Layer.batchNormalize(name:inputName:outputName:inputChannelCount:)(0x6C61756469736572, 0xEA0000000000332ELL, 0x33322E7475706E69, 0xE800000000000000, 0x6C61756469736572, 0xEA0000000000332ELL, 32);
  v323 = v321[2];
  if (v321[3] >> 1 <= v323)
  {
    v321 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v321[3] >= 2uLL, v323 + 1, 1, v321);
  }

  v321[2] = v323 + 1;
  (v608)(v321 + v606 + v607 * v323, v566, v609);
  v611 = v321;
  static NeuralNetwork.Layer.add(name:inputNames:outputName:)(0x34322E7475706E69, 0xE800000000000000, &outlined read-only object #9 of MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:), 0x34322E7475706E69, 0xE800000000000000);
  v324 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v324 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v324[2] + 1, 1, v324);
  }

  v325 = v324[2];
  if (v324[3] >> 1 <= v325)
  {
    v324 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v324[3] >= 2uLL, v325 + 1, 1, v324);
  }

  v324[2] = v325 + 1;
  (v608)(v324 + v606 + v607 * v325, v565, v609);
  static NeuralNetwork.Layer.relu(name:inputName:outputName:)(0x35322E7475706E69, 0xE800000000000000, 0x34322E7475706E69, 0xE800000000000000, 0x35322E7475706E69, 0xE800000000000000);
  v326 = v324[2];
  if (v324[3] >> 1 <= v326)
  {
    v324 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v324[3] >= 2uLL, v326 + 1, 1, v324);
  }

  v324[2] = v326 + 1;
  (v608)(v324 + v606 + v607 * v326, v564, v609);
  v611 = v324;
  v610 = 1;
  v605 = 1;
  v327 = v603;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v328 = v599;
  NeuralNetwork.ValidPaddingParameters.init()();
  v329 = v600;
  (v598)(v328, v597, v600);
  __swift_storeEnumTagSinglePayload(v328, 0, 1, v329);
  v610 = 1;
  v605 = 1;
  v330 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v331 = v535;
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x36322E7475706E69, 0xE800000000000000, 0x35322E7475706E69, 0xE800000000000000, 0x36322E7475706E69, 0xE800000000000000, 64, 32, 1, v327, v330, v328);
  v332 = v330;
  v333 = v601;
  v334 = v604;
  (v604)(v332, v601);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v328, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v334(v327, v333);
  v335 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v335 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v335[2] + 1, 1, v335);
  }

  v336 = v335[2];
  if (v335[3] >> 1 <= v336)
  {
    v335 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v335[3] >= 2uLL, v336 + 1, 1, v335);
  }

  v335[2] = v336 + 1;
  (v608)(v335 + v606 + v607 * v336, v331, v609);
  v611 = v335;
  v337 = v591;
  (v594)(v591, v595, v596);
  v610 = 1;
  v605 = 3;
  v338 = v603;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v339 = v590;
  static NeuralNetwork.Layer.PoolParameters.Padding.valid(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)(0, 0, 1, 1);
  __swift_storeEnumTagSinglePayload(v339, 0, 1, v593);
  v610 = 1;
  v605 = 1;
  v340 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  static NeuralNetwork.Layer.pool(name:inputName:outputName:kind:kernelSize:strides:padding:)(0x37322E7475706E69, 0xE800000000000000, 0x36322E7475706E69, 0xE800000000000000, 0x37322E7475706E69, 0xE800000000000000, v337, v338, v340, v339);
  v341 = v340;
  v342 = v601;
  v343 = v604;
  (v604)(v341, v601);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v339, &demangling cache variable for type metadata for NeuralNetwork.Layer.PoolParameters.Padding?);
  v343(v338, v342);
  (v592)(v337, v596);
  v344 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v344 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v344[2] + 1, 1, v344);
  }

  v345 = v344[2];
  if (v344[3] >> 1 <= v345)
  {
    v344 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v344[3] >= 2uLL, v345 + 1, 1, v344);
  }

  v344[2] = v345 + 1;
  (v608)(v344 + v606 + v607 * v345, v563, v609);
  v611 = v344;
  v610 = 9;
  v605 = 1;
  v346 = v603;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v610 = 2;
  v605 = 2;
  v347 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v348 = v599;
  static NeuralNetwork.Layer.ConvolutionParameters.PaddingKind.valid(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)(4, 4, 0, 0);
  __swift_storeEnumTagSinglePayload(v348, 0, 1, v600);
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x38322E7475706E69, 0xE800000000000000, 0x37322E7475706E69, 0xE800000000000000, 0x38322E7475706E69, 0xE800000000000000, 64, 64, 1, v346, v347, v348);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v348, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v349 = v347;
  v350 = v601;
  v351 = v604;
  (v604)(v349, v601);
  v351(v346, v350);
  v352 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v352 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v352[2] + 1, 1, v352);
  }

  v353 = v584;
  v354 = v352[2];
  if (v352[3] >> 1 <= v354)
  {
    v352 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v352[3] >= 2uLL, v354 + 1, 1, v352);
  }

  v352[2] = v354 + 1;
  (v608)(v352 + v606 + v607 * v354, v562, v609);
  static NeuralNetwork.Layer.batchNormalize(name:inputName:outputName:inputChannelCount:)(0x39322E7475706E69, 0xE800000000000000, 0x38322E7475706E69, 0xE800000000000000, 0x39322E7475706E69, 0xE800000000000000, 64);
  v355 = v352[2];
  if (v352[3] >> 1 <= v355)
  {
    v352 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v352[3] >= 2uLL, v355 + 1, 1, v352);
  }

  v352[2] = v355 + 1;
  (v608)(v352 + v606 + v607 * v355, v353, v609);
  v611 = v352;
  v610 = 1;
  v605 = 1;
  v356 = v603;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v610 = 2;
  v605 = 2;
  v357 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v358 = v599;
  NeuralNetwork.ValidPaddingParameters.init()();
  v359 = v600;
  (v598)(v358, v597, v600);
  __swift_storeEnumTagSinglePayload(v358, 0, 1, v359);
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x30332E7475706E69, 0xE800000000000000, 0x35322E7475706E69, 0xE800000000000000, 0x30332E7475706E69, 0xE800000000000000, 64, 32, 1, v356, v357, v358);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v358, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v360 = v357;
  v361 = v601;
  v362 = v604;
  (v604)(v360, v601);
  v362(v356, v361);
  v363 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v363 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v363[2] + 1, 1, v363);
  }

  v364 = v363[2];
  if (v363[3] >> 1 <= v364)
  {
    v363 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v363[3] >= 2uLL, v364 + 1, 1, v363);
  }

  v363[2] = v364 + 1;
  (v608)(v363 + v606 + v607 * v364, v561, v609);
  static NeuralNetwork.Layer.batchNormalize(name:inputName:outputName:inputChannelCount:)(0x6C61756469736572, 0xEA0000000000342ELL, 0x30332E7475706E69, 0xE800000000000000, 0x6C61756469736572, 0xEA0000000000342ELL, 64);
  v365 = v363[2];
  if (v363[3] >> 1 <= v365)
  {
    v363 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v363[3] >= 2uLL, v365 + 1, 1, v363);
  }

  v363[2] = v365 + 1;
  (v608)(v363 + v606 + v607 * v365, v560, v609);
  v611 = v363;
  static NeuralNetwork.Layer.add(name:inputNames:outputName:)(0x31332E7475706E69, 0xE800000000000000, &outlined read-only object #10 of MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:), 0x31332E7475706E69, 0xE800000000000000);
  v366 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v366 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v366[2] + 1, 1, v366);
  }

  v367 = v366[2];
  if (v366[3] >> 1 <= v367)
  {
    v366 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v366[3] >= 2uLL, v367 + 1, 1, v366);
  }

  v366[2] = v367 + 1;
  (v608)(v366 + v606 + v607 * v367, v559, v609);
  v368 = v534;
  static NeuralNetwork.Layer.relu(name:inputName:outputName:)(0x32332E7475706E69, 0xE800000000000000, 0x31332E7475706E69, 0xE800000000000000, 0x32332E7475706E69, 0xE800000000000000);
  v369 = v366[2];
  if (v366[3] >> 1 <= v369)
  {
    v366 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v366[3] >= 2uLL, v369 + 1, 1, v366);
  }

  v366[2] = v369 + 1;
  (v608)(v366 + v606 + v607 * v369, v368, v609);
  v611 = v366;
  v610 = 1;
  v605 = 1;
  v370 = v603;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v371 = v599;
  NeuralNetwork.ValidPaddingParameters.init()();
  v372 = v600;
  (v598)(v371, v597, v600);
  __swift_storeEnumTagSinglePayload(v371, 0, 1, v372);
  v610 = 1;
  v605 = 1;
  v373 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v374 = v533;
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x33332E7475706E69, 0xE800000000000000, 0x32332E7475706E69, 0xE800000000000000, 0x33332E7475706E69, 0xE800000000000000, 128, 64, 1, v370, v373, v371);
  v375 = v373;
  v376 = v601;
  v377 = v604;
  (v604)(v375, v601);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v371, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v377(v370, v376);
  v378 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v378 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v378[2] + 1, 1, v378);
  }

  v379 = v378[2];
  if (v378[3] >> 1 <= v379)
  {
    v378 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v378[3] >= 2uLL, v379 + 1, 1, v378);
  }

  v378[2] = v379 + 1;
  (v608)(v378 + v606 + v607 * v379, v374, v609);
  v611 = v378;
  v380 = v591;
  (v594)(v591, v595, v596);
  v610 = 1;
  v605 = 3;
  v381 = v603;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v382 = v590;
  static NeuralNetwork.Layer.PoolParameters.Padding.valid(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)(0, 0, 1, 1);
  __swift_storeEnumTagSinglePayload(v382, 0, 1, v593);
  v610 = 1;
  v605 = 1;
  v383 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  static NeuralNetwork.Layer.pool(name:inputName:outputName:kind:kernelSize:strides:padding:)(0x34332E7475706E69, 0xE800000000000000, 0x33332E7475706E69, 0xE800000000000000, 0x34332E7475706E69, 0xE800000000000000, v380, v381, v383, v382);
  v384 = v383;
  v385 = v601;
  v386 = v604;
  (v604)(v384, v601);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v382, &demangling cache variable for type metadata for NeuralNetwork.Layer.PoolParameters.Padding?);
  v386(v381, v385);
  (v592)(v380, v596);
  v387 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v387 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v387[2] + 1, 1, v387);
  }

  v388 = v387[2];
  if (v387[3] >> 1 <= v388)
  {
    v387 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v387[3] >= 2uLL, v388 + 1, 1, v387);
  }

  v387[2] = v388 + 1;
  (v608)(v387 + v606 + v607 * v388, v558, v609);
  v611 = v387;
  v610 = 9;
  v605 = 1;
  v389 = v603;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v390 = v599;
  static NeuralNetwork.Layer.ConvolutionParameters.PaddingKind.valid(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)(4, 4, 0, 0);
  __swift_storeEnumTagSinglePayload(v390, 0, 1, v600);
  v610 = 1;
  v605 = 1;
  v391 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x35332E7475706E69, 0xE800000000000000, 0x34332E7475706E69, 0xE800000000000000, 0x35332E7475706E69, 0xE800000000000000, 64, 128, 1, v389, v391, v390);
  v392 = v391;
  v393 = v601;
  v394 = v604;
  (v604)(v392, v601);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v390, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v394(v389, v393);
  v395 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v395 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v395[2] + 1, 1, v395);
  }

  v396 = v395[2];
  if (v395[3] >> 1 <= v396)
  {
    v395 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v395[3] >= 2uLL, v396 + 1, 1, v395);
  }

  v395[2] = v396 + 1;
  (v608)(v395 + v606 + v607 * v396, v557, v609);
  static NeuralNetwork.Layer.batchNormalize(name:inputName:outputName:inputChannelCount:)(0x36332E7475706E69, 0xE800000000000000, 0x35332E7475706E69, 0xE800000000000000, 0x36332E7475706E69, 0xE800000000000000, 64);
  v397 = v395[2];
  if (v395[3] >> 1 <= v397)
  {
    v395 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v395[3] >= 2uLL, v397 + 1, 1, v395);
  }

  v395[2] = v397 + 1;
  (v608)(v395 + v606 + v607 * v397, v556, v609);
  v611 = v395;
  static NeuralNetwork.Layer.add(name:inputNames:outputName:)(0x37332E7475706E69, 0xE800000000000000, &outlined read-only object #11 of MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:), 0x37332E7475706E69, 0xE800000000000000);
  v398 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v398 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v398[2] + 1, 1, v398);
  }

  v399 = v398[2];
  if (v398[3] >> 1 <= v399)
  {
    v398 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v398[3] >= 2uLL, v399 + 1, 1, v398);
  }

  v398[2] = v399 + 1;
  (v608)(v398 + v606 + v607 * v399, v555, v609);
  v400 = v532;
  static NeuralNetwork.Layer.relu(name:inputName:outputName:)(0x38332E7475706E69, 0xE800000000000000, 0x37332E7475706E69, 0xE800000000000000, 0x38332E7475706E69, 0xE800000000000000);
  v401 = v398[2];
  if (v398[3] >> 1 <= v401)
  {
    v398 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v398[3] >= 2uLL, v401 + 1, 1, v398);
  }

  v398[2] = v401 + 1;
  (v608)(v398 + v606 + v607 * v401, v400, v609);
  v611 = v398;
  v610 = 1;
  v605 = 1;
  v402 = v603;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v403 = v599;
  NeuralNetwork.ValidPaddingParameters.init()();
  v404 = v600;
  (v598)(v403, v597, v600);
  __swift_storeEnumTagSinglePayload(v403, 0, 1, v404);
  v610 = 1;
  v605 = 1;
  v405 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v406 = v531;
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x39332E7475706E69, 0xE800000000000000, 0x38332E7475706E69, 0xE800000000000000, 0x39332E7475706E69, 0xE800000000000000, 128, 64, 1, v402, v405, v403);
  v407 = v405;
  v408 = v601;
  v409 = v604;
  (v604)(v407, v601);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v403, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v409(v402, v408);
  v410 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v410 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v410[2] + 1, 1, v410);
  }

  v411 = v410[2];
  if (v410[3] >> 1 <= v411)
  {
    v410 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v410[3] >= 2uLL, v411 + 1, 1, v410);
  }

  v410[2] = v411 + 1;
  (v608)(v410 + v606 + v607 * v411, v406, v609);
  v611 = v410;
  v412 = v591;
  (v594)(v591, v595, v596);
  v610 = 1;
  v605 = 3;
  v413 = v603;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v414 = v590;
  static NeuralNetwork.Layer.PoolParameters.Padding.valid(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)(0, 0, 1, 1);
  __swift_storeEnumTagSinglePayload(v414, 0, 1, v593);
  v610 = 1;
  v605 = 1;
  v415 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  static NeuralNetwork.Layer.pool(name:inputName:outputName:kind:kernelSize:strides:padding:)(0x30342E7475706E69, 0xE800000000000000, 0x39332E7475706E69, 0xE800000000000000, 0x30342E7475706E69, 0xE800000000000000, v412, v413, v415, v414);
  v416 = v415;
  v417 = v601;
  v418 = v604;
  (v604)(v416, v601);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v414, &demangling cache variable for type metadata for NeuralNetwork.Layer.PoolParameters.Padding?);
  v418(v413, v417);
  (v592)(v412, v596);
  v419 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v419 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v419[2] + 1, 1, v419);
  }

  v420 = v419[2];
  if (v419[3] >> 1 <= v420)
  {
    v419 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v419[3] >= 2uLL, v420 + 1, 1, v419);
  }

  v419[2] = v420 + 1;
  (v608)(v419 + v606 + v607 * v420, v554, v609);
  v611 = v419;
  v610 = 9;
  v605 = 1;
  v421 = v603;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v610 = 2;
  v605 = 2;
  v422 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v423 = v599;
  static NeuralNetwork.Layer.ConvolutionParameters.PaddingKind.valid(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)(4, 4, 0, 0);
  __swift_storeEnumTagSinglePayload(v423, 0, 1, v600);
  v424 = v530;
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x31342E7475706E69, 0xE800000000000000, 0x30342E7475706E69, 0xE800000000000000, 0x31342E7475706E69, 0xE800000000000000, 128, 128, 1, v421, v422, v423);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v423, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v425 = v422;
  v426 = v601;
  v427 = v604;
  (v604)(v425, v601);
  v427(v421, v426);
  v428 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v428 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v428[2] + 1, 1, v428);
  }

  v429 = v583;
  v430 = v428[2];
  if (v428[3] >> 1 <= v430)
  {
    v428 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v428[3] >= 2uLL, v430 + 1, 1, v428);
  }

  v428[2] = v430 + 1;
  (v608)(v428 + v606 + v607 * v430, v424, v609);
  static NeuralNetwork.Layer.batchNormalize(name:inputName:outputName:inputChannelCount:)(0x32342E7475706E69, 0xE800000000000000, 0x31342E7475706E69, 0xE800000000000000, 0x32342E7475706E69, 0xE800000000000000, 128);
  v431 = v428[2];
  if (v428[3] >> 1 <= v431)
  {
    v428 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v428[3] >= 2uLL, v431 + 1, 1, v428);
  }

  v428[2] = v431 + 1;
  (v608)(v428 + v606 + v607 * v431, v429, v609);
  v611 = v428;
  v610 = 1;
  v605 = 1;
  v432 = v603;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v610 = 2;
  v605 = 2;
  v433 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v434 = v599;
  NeuralNetwork.ValidPaddingParameters.init()();
  v435 = v600;
  (v598)(v434, v597, v600);
  __swift_storeEnumTagSinglePayload(v434, 0, 1, v435);
  v436 = v529;
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x33342E7475706E69, 0xE800000000000000, 0x38332E7475706E69, 0xE800000000000000, 0x33342E7475706E69, 0xE800000000000000, 128, 64, 1, v432, v433, v434);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v434, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v437 = v433;
  v438 = v601;
  v439 = v604;
  (v604)(v437, v601);
  v439(v432, v438);
  v440 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v440 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v440[2] + 1, 1, v440);
  }

  v441 = v440[2];
  if (v440[3] >> 1 <= v441)
  {
    v440 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v440[3] >= 2uLL, v441 + 1, 1, v440);
  }

  v440[2] = v441 + 1;
  (v608)(v440 + v606 + v607 * v441, v436, v609);
  static NeuralNetwork.Layer.batchNormalize(name:inputName:outputName:inputChannelCount:)(0x6C61756469736572, 0xEA0000000000352ELL, 0x33342E7475706E69, 0xE800000000000000, 0x6C61756469736572, 0xEA0000000000352ELL, 128);
  v442 = v440[2];
  if (v440[3] >> 1 <= v442)
  {
    v440 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v440[3] >= 2uLL, v442 + 1, 1, v440);
  }

  v440[2] = v442 + 1;
  (v608)(v440 + v606 + v607 * v442, v553, v609);
  v611 = v440;
  static NeuralNetwork.Layer.add(name:inputNames:outputName:)(0x34342E7475706E69, 0xE800000000000000, &outlined read-only object #12 of MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:), 0x34342E7475706E69, 0xE800000000000000);
  v443 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v443 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v443[2] + 1, 1, v443);
  }

  v444 = v443[2];
  if (v443[3] >> 1 <= v444)
  {
    v443 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v443[3] >= 2uLL, v444 + 1, 1, v443);
  }

  v443[2] = v444 + 1;
  (v608)(v443 + v606 + v607 * v444, v552, v609);
  v445 = v528;
  static NeuralNetwork.Layer.relu(name:inputName:outputName:)(0x35342E7475706E69, 0xE800000000000000, 0x34342E7475706E69, 0xE800000000000000, 0x35342E7475706E69, 0xE800000000000000);
  v446 = v443[2];
  if (v443[3] >> 1 <= v446)
  {
    v443 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v443[3] >= 2uLL, v446 + 1, 1, v443);
  }

  v443[2] = v446 + 1;
  (v608)(v443 + v606 + v607 * v446, v445, v609);
  v611 = v443;
  v610 = 1;
  v605 = 1;
  v447 = v603;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v448 = v599;
  NeuralNetwork.ValidPaddingParameters.init()();
  v449 = v600;
  (v598)(v448, v597, v600);
  __swift_storeEnumTagSinglePayload(v448, 0, 1, v449);
  v610 = 1;
  v605 = 1;
  v450 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v451 = v527;
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x36342E7475706E69, 0xE800000000000000, 0x35342E7475706E69, 0xE800000000000000, 0x36342E7475706E69, 0xE800000000000000, 256, 128, 1, v447, v450, v448);
  v452 = v450;
  v453 = v601;
  v454 = v604;
  (v604)(v452, v601);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v448, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v454(v447, v453);
  v455 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v455 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v455[2] + 1, 1, v455);
  }

  v456 = v455[2];
  if (v455[3] >> 1 <= v456)
  {
    v455 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v455[3] >= 2uLL, v456 + 1, 1, v455);
  }

  v455[2] = v456 + 1;
  (v608)(v455 + v606 + v607 * v456, v451, v609);
  v611 = v455;
  v457 = v591;
  (v594)(v591, v595, v596);
  v610 = 1;
  v605 = 3;
  v458 = v603;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v459 = v590;
  static NeuralNetwork.Layer.PoolParameters.Padding.valid(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)(0, 0, 1, 1);
  __swift_storeEnumTagSinglePayload(v459, 0, 1, v593);
  v610 = 1;
  v605 = 1;
  v460 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  static NeuralNetwork.Layer.pool(name:inputName:outputName:kind:kernelSize:strides:padding:)(0x37342E7475706E69, 0xE800000000000000, 0x36342E7475706E69, 0xE800000000000000, 0x37342E7475706E69, 0xE800000000000000, v457, v458, v460, v459);
  v461 = v460;
  v462 = v601;
  v463 = v604;
  (v604)(v461, v601);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v459, &demangling cache variable for type metadata for NeuralNetwork.Layer.PoolParameters.Padding?);
  v463(v458, v462);
  (v592)(v457, v596);
  v464 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v464 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v464[2] + 1, 1, v464);
  }

  v465 = v464[2];
  if (v464[3] >> 1 <= v465)
  {
    v464 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v464[3] >= 2uLL, v465 + 1, 1, v464);
  }

  v464[2] = v465 + 1;
  (v608)(v464 + v606 + v607 * v465, v551, v609);
  v611 = v464;
  v610 = 9;
  v605 = 1;
  v466 = v603;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v467 = v599;
  static NeuralNetwork.Layer.ConvolutionParameters.PaddingKind.valid(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)(4, 4, 0, 0);
  __swift_storeEnumTagSinglePayload(v467, 0, 1, v600);
  v610 = 1;
  v605 = 1;
  v468 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v469 = v526;
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x38342E7475706E69, 0xE800000000000000, 0x37342E7475706E69, 0xE800000000000000, 0x38342E7475706E69, 0xE800000000000000, 256, 256, 1, v466, v468, v467);
  v470 = v468;
  v471 = v601;
  v472 = v604;
  (v604)(v470, v601);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v467, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v472(v466, v471);
  v473 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v473 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v473[2] + 1, 1, v473);
  }

  v474 = v582;
  v475 = v473[2];
  if (v473[3] >> 1 <= v475)
  {
    v473 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v473[3] >= 2uLL, v475 + 1, 1, v473);
  }

  v473[2] = v475 + 1;
  (v608)(v473 + v606 + v607 * v475, v469, v609);
  static NeuralNetwork.Layer.batchNormalize(name:inputName:outputName:inputChannelCount:)(0x39342E7475706E69, 0xE800000000000000, 0x38342E7475706E69, 0xE800000000000000, 0x39342E7475706E69, 0xE800000000000000, 256);
  v476 = v473[2];
  if (v473[3] >> 1 <= v476)
  {
    v473 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v473[3] >= 2uLL, v476 + 1, 1, v473);
  }

  v473[2] = v476 + 1;
  (v608)(v473 + v606 + v607 * v476, v474, v609);
  v611 = v473;
  v610 = 1;
  v605 = 1;
  v477 = v603;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v478 = v599;
  NeuralNetwork.ValidPaddingParameters.init()();
  v479 = v600;
  (v598)(v478, v597, v600);
  __swift_storeEnumTagSinglePayload(v478, 0, 1, v479);
  v610 = 1;
  v605 = 1;
  v480 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v481 = v525;
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x30352E7475706E69, 0xE800000000000000, 0x35342E7475706E69, 0xE800000000000000, 0x30352E7475706E69, 0xE800000000000000, 256, 128, 1, v477, v480, v478);
  v482 = v480;
  v483 = v601;
  v484 = v604;
  (v604)(v482, v601);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v478, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v484(v477, v483);
  v485 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v485 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v485[2] + 1, 1, v485);
  }

  v486 = v485[2];
  if (v485[3] >> 1 <= v486)
  {
    v485 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v485[3] >= 2uLL, v486 + 1, 1, v485);
  }

  v485[2] = v486 + 1;
  (v608)(v485 + v606 + v607 * v486, v481, v609);
  static NeuralNetwork.Layer.batchNormalize(name:inputName:outputName:inputChannelCount:)(0x6C61756469736572, 0xE800000000000000, 0x30352E7475706E69, 0xE800000000000000, 0x6C61756469736572, 0xE800000000000000, 256);
  v487 = v485[2];
  if (v485[3] >> 1 <= v487)
  {
    v485 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v485[3] >= 2uLL, v487 + 1, 1, v485);
  }

  v485[2] = v487 + 1;
  (v608)(v485 + v606 + v607 * v487, v549, v609);
  v611 = v485;
  static NeuralNetwork.Layer.add(name:inputNames:outputName:)(0x31352E7475706E69, 0xE800000000000000, &outlined read-only object #13 of MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:), 0x31352E7475706E69, 0xE800000000000000);
  v488 = v611;
  if (!swift_isUniquelyReferenced_nonNull_native(v611))
  {
    v488 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v488[2] + 1, 1, v488);
  }

  v489 = v488[2];
  if (v488[3] >> 1 <= v489)
  {
    v488 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v488[3] >= 2uLL, v489 + 1, 1, v488);
  }

  v488[2] = v489 + 1;
  (v608)(v488 + v606 + v607 * v489, v548, v609);
  v490 = v524;
  static NeuralNetwork.Layer.relu(name:inputName:outputName:)(0x32352E7475706E69, 0xE800000000000000, 0x31352E7475706E69, 0xE800000000000000, 0x32352E7475706E69, 0xE800000000000000);
  v611 = v488;
  v491 = v488[2];
  if (v488[3] >> 1 <= v491)
  {
    v611 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v488[3] >= 2uLL, v491 + 1, 1, v488);
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v491, v490);
  MLBoostedTreeRegressor.ModelParameters.maxDepth.modify();
  (v594)(v591, v595, v596);
  v610 = 0;
  v605 = 0;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v610 = 0;
  v605 = 0;
  v492 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v610, &v605, &type metadata for Int, &protocol witness table for Int);
  v493 = v590;
  NeuralNetwork.ValidPaddingParameters.init()();
  v494 = v593;
  (*(*(v593 - 1) + 104))(v493, enum case for NeuralNetwork.Layer.PoolParameters.Padding.valid(_:), v593);
  __swift_storeEnumTagSinglePayload(v493, 0, 1, v494);
  v495 = v547;
  NeuralNetwork.Layer.PoolParameters.init(kind:kernelSize:strides:padding:)(v591, v603, v492, v493);
  NeuralNetwork.Layer.PoolParameters.averageExcludesPadding.setter(1);
  v496 = v495;
  NeuralNetwork.Layer.PoolParameters.doesGlobalPooling.setter(1);
  v497 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  v498 = swift_allocObject(v497, 48, 7);
  v499 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS_Tt1g5(v498, 1);
  *v500 = 0x32352E7475706E69;
  v500[1] = 0xE800000000000000;
  v609 = specialized _finalizeUninitializedArray<A>(_:)(v499);
  v501 = swift_allocObject(v497, 48, 7);
  v502 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS_Tt1g5(v501, 1);
  *v503 = &unk_382E78;
  v503[1] = 0xE300000000000000;
  v504 = specialized _finalizeUninitializedArray<A>(_:)(v502);
  v505 = v521;
  (*(v546 + 16))(v521, v496, v545);
  (*(v523 + 104))(v505, enum case for NeuralNetwork.Layer.Kind.pool(_:), v522);
  v506 = v520;
  NeuralNetwork.Layer.init(name:inputNames:outputNames:kind:)(&unk_382E78, 0xE300000000000000, v609, v504, v505);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v507 = v611[2];
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v507);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v507, v506);
  MLBoostedTreeRegressor.ModelParameters.maxDepth.modify();
  v508 = swift_allocObject(v550, 48, 7);
  v509 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSi_Tt1g5(v508, 2);
  *v510 = 1;
  v510[1] = 256;
  v511 = specialized _finalizeUninitializedArray<A>(_:)(v509);
  LOBYTE(v507) = v511;
  static NeuralNetwork.Layer.reshapeStatic(name:inputName:outputName:targetShape:)(0x33352E7475706E69, 0xE800000000000000, &unk_382E78, 0xE300000000000000, 0x33352E7475706E69, 0xE800000000000000, v511);
  v507;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v512 = v611[2];
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v512);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v512, v506);
  MLBoostedTreeRegressor.ModelParameters.maxDepth.modify();
  v513 = specialized Collection.underestimatedCount.getter(*(v544 + 16));
  static NeuralNetwork.Layer.innerProduct(name:inputName:outputName:inputChannelCount:outputChannelCount:)(120, 0xE100000000000000, 0x33352E7475706E69, 0xE800000000000000, 120, 0xE100000000000000, 256, v513);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v514 = v611[2];
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v514);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v514, v506);
  MLBoostedTreeRegressor.ModelParameters.maxDepth.modify();
  static NeuralNetwork.Layer.softmaxND(name:inputName:outputName:axis:)(&unk_383433, 0xE300000000000000, 120, 0xE100000000000000, 0xD000000000000012, ("shape does not match." + 0x8000000000000000), 1);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v515 = v611[2];
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v515);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v515, v506);
  MLBoostedTreeRegressor.ModelParameters.maxDepth.modify();
  (*(v546 + 8))(v547, v545);
  return v611;
}

void *MLHandActionClassifier.GraphCNN.getCoreMLAndNeuralNetworksTrainableLayerMap(_:)(uint64_t a1)
{
  v1 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v23 = *(a1 + 16);
  if (v23)
  {

    v2 = (a1 + 40);
    v3 = 0;
    do
    {
      v24 = v3;
      v4 = *(v2 - 1);
      v22 = v2;
      v5 = *v2;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v1);
      v26 = v4;
      v25 = v5;
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
      v9 = (v7 & 1) == 0;
      v10 = __OFADD__(v1[2], v9);
      v11 = v1[2] + v9;
      if (v10)
      {
        BUG();
      }

      v12 = v7;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Int>);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v11))
      {
        v13 = v25;
        v8 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v25);
        LOBYTE(v15) = v15 & 1;
        if ((v12 & 1) != v15)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v25, v15, v14);
          BUG();
        }
      }

      else
      {
        v13 = v25;
      }

      if (v12)
      {
        v16 = v24;
        *(v1[7] + 8 * v8) = v24;
        v13;
      }

      else
      {
        v1[(v8 >> 6) + 8] |= 1 << v8;
        v17 = v1[6];
        v18 = 16 * v8;
        *(v17 + v18) = v26;
        *(v17 + v18 + 8) = v13;
        v16 = v24;
        *(v1[7] + 8 * v8) = v24;
        v19 = v1[2];
        v10 = __OFADD__(1, v19);
        v20 = v19 + 1;
        if (v10)
        {
          BUG();
        }

        v1[2] = v20;
      }

      v3 = v16 + 1;
      v2 = v22 + 2;
    }

    while (v23 != v3);
    a1;
  }

  return v1;
}

void *MLHandActionClassifier.GraphCNN.updatedCoreMLLayers()()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dense?) - 8) + 64);
  v1 = alloca(v0);
  v2 = alloca(v0);
  v116 = &v111;
  v143 = type metadata accessor for Dense(0);
  v123 = *(v143 - 8);
  v3 = *(v123 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v134 = type metadata accessor for NeuralNetwork.Layer.InnerProductParameters(0);
  v121 = *(v134 - 8);
  v6 = *(v121 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v122 = &v111;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for BatchNorm?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v118 = &v111;
  v130 = type metadata accessor for BatchNorm(0);
  v131 = *(v130 - 8);
  v12 = *(v131 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v141 = &v111;
  v140 = type metadata accessor for NeuralNetwork.Layer.BatchNormalizeParameters(0);
  v125 = *(v140 - 8);
  v15 = *(v125 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v142 = &v111;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Conv2D?) - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v117 = &v111;
  v128 = type metadata accessor for Conv2D(0);
  v129 = *(v128 - 8);
  v21 = *(v129 + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v138 = &v111;
  v137 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters(0);
  v126 = *(v137 - 8);
  v24 = *(v126 + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v127 = &v111;
  v152 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  v148 = *(v152 - 8);
  v27 = *(v148 + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v135 = &v111;
  v30 = alloca(v27);
  v31 = alloca(v27);
  v32 = type metadata accessor for NeuralNetwork.Layer(0);
  v111 = *(v32 - 8);
  v33 = *(v111 + 64);
  v34 = alloca(v33);
  v35 = alloca(v33);
  v113 = &v111;
  v36 = alloca(v33);
  v37 = alloca(v33);
  v112 = &v111;
  v38 = MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:)(3uLL, 0x15uLL);
  v139 = MLHandActionClassifier.GraphCNN.coreMLTrainableLayerNames(from:)(v38);
  v149 = MLHandActionClassifier.GraphCNN.getCoreMLAndNeuralNetworksTrainableLayerMap(_:)(v139);
  v39 = v38;
  v40 = MLHandActionClassifier.GraphCNN.trainableSublayers()();
  v114 = v38[2];
  if (v114)
  {
    v145 = enum case for NeuralNetwork.Layer.Kind.innerProduct(_:);
    v146 = enum case for NeuralNetwork.Layer.Kind.convolution(_:);
    v147 = enum case for NeuralNetwork.Layer.Kind.batchNormalize(_:);
    v136 = v40 + 4;
    v41 = 0;
    v124 = &v111;
    v115 = &v111;
    v144 = v32;
    v153 = v40;
    do
    {
      if (v41 >= v39[2])
      {
        BUG();
      }

      v154._object = v39;
      v42 = v111;
      v132 = (*(v111 + 80) + 32) & ~*(v111 + 80);
      v133 = v41 * *(v111 + 72);
      v43 = v39 + v132 + v133;
      v151 = v41;
      v44 = *(v111 + 16);
      v45 = v112;
      v44(v112, v43, v32);
      v154._countAndFlagsBits = NeuralNetwork.Layer.name.getter();
      v150 = v46;
      v47 = *(v42 + 8);
      v47(v45, v32);
      if (v151 >= *(v154._object + 2))
      {
        BUG();
      }

      v48 = v113;
      v44(v113, v43, v32);
      v49 = v115;
      NeuralNetwork.Layer.kind.getter();
      v47(v48, v32);
      v50 = v152;
      v51 = v148;
      v52 = (*(v148 + 88))(v49, v152);
      if (v52 == v145)
      {
        (*(v51 + 96))(v49, v50);
        (*(v121 + 32))(v122, v49, v134);
        v53 = v149;
        v54 = v150;
        if (!v149[2])
        {
          goto LABEL_63;
        }

        v55 = specialized __RawDictionaryStorage.find<A>(_:)(v154._countAndFlagsBits, v54);
        v57 = v124;
        v58 = v153;
        if ((v56 & 1) == 0)
        {
          v54;
LABEL_63:
          v119 = 0;
          v120 = 0xE000000000000000;
          _StringGuts.grow(_:)(80);
          v105._object = "sequence of hand poses" + 0x8000000000000000;
          v105._countAndFlagsBits = 0xD00000000000003FLL;
          String.append(_:)(v105);
          v105._countAndFlagsBits = v154._countAndFlagsBits;
          v105._object = v54;
          String.append(_:)(v105);
          v105._countAndFlagsBits = 0x65726F63206E6920;
          v105._object = 0xEF63657073206C6DLL;
          String.append(_:)(v105);
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v119, v120, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 770, 0);
          goto LABEL_71;
        }

        v59 = *(v53[7] + 8 * v55);
        v54;
        v60 = v116;
        if (v59 < 0)
        {
          BUG();
        }

        if (v59 >= v58[2])
        {
          BUG();
        }

        outlined init with copy of TabularRegressionTask(&v136[5 * v59], &v119);
        v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Layer);
        if (!swift_dynamicCast(v60, &v119, v61, v143, 6))
        {
          __swift_storeEnumTagSinglePayload(v60, 1, 1, v143);
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v60, &demangling cache variable for type metadata for Dense?);
          v119 = 0;
          v120 = 0xE000000000000000;
          _StringGuts.grow(_:)(81);
          v106._object = "amework layer for " + 0x8000000000000000;
          v106._countAndFlagsBits = 0xD000000000000040;
          String.append(_:)(v106);
          v106._countAndFlagsBits = v154._countAndFlagsBits;
          v106._object = v150;
          String.append(_:)(v106);
          v106._countAndFlagsBits = 0x65726F63206E6920;
          v106._object = 0xEF63657073206C6DLL;
          String.append(_:)(v106);
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v119, v120, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 773, 0);
          goto LABEL_71;
        }

        v150;
        v62 = v143;
        __swift_storeEnumTagSinglePayload(v60, 0, 1, v143);
        (*(v123 + 32))(v57, v60, v62);
        v63 = v139[2] - 1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v154._object);
        if (v59 == v63)
        {
          v65 = v134;
          if (!isUniquelyReferenced_nonNull_native)
          {
            v154._object = specialized _ArrayBuffer._consumeAndCreateNew()(v154._object);
          }

          object = v154._object;
          v67 = v152;
          if (v151 >= *(v154._object + 2))
          {
            BUG();
          }
        }

        else
        {
          v65 = v134;
          if (!isUniquelyReferenced_nonNull_native)
          {
            v154._object = specialized _ArrayBuffer._consumeAndCreateNew()(v154._object);
          }

          object = v154._object;
          v67 = v152;
          if (v151 >= *(v154._object + 2))
          {
            BUG();
          }
        }

        v154._object = object;
        v99 = v59 == v63;
        v100 = v122;
        NeuralNetwork.Layer.loadInnerProductFromNeuralNetworks(_:useBias:into:)(v57, v99, v122);
        v101 = v135;
        v102 = v121;
        (*(v121 + 16))(v135, v100, v65);
        (*(v148 + 104))(v101, v145, v67);
        if (v151 >= *(v154._object + 2))
        {
          BUG();
        }

        NeuralNetwork.Layer.kind.setter(v101);
        (*(v123 + 8))(v124, v143);
        (*(v102 + 8))(v100, v65);
        v39 = v154._object;
        v32 = v144;
      }

      else
      {
        v68 = v150;
        if (v52 == v146)
        {
          (*(v51 + 96))(v49, v50, v125);
          (*(v126 + 32))(v127, v49, v137);
          v69 = v149;
          if (!v149[2])
          {
            goto LABEL_66;
          }

          v70 = specialized __RawDictionaryStorage.find<A>(_:)(v154._countAndFlagsBits, v68);
          if ((v71 & 1) == 0)
          {
            v68;
LABEL_66:
            v119 = 0;
            v120 = 0xE000000000000000;
            _StringGuts.grow(_:)(79);
            v107._object = "ework layer to batchnorm for " + 0x8000000000000000;
            v107._countAndFlagsBits = 0xD00000000000003ELL;
            String.append(_:)(v107);
            v107._countAndFlagsBits = v154._countAndFlagsBits;
            v107._object = v68;
            String.append(_:)(v107);
            v107._countAndFlagsBits = 0x65726F63206E6920;
            v107._object = 0xEF63657073206C6DLL;
            String.append(_:)(v107);
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v119, v120, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 749, 0);
            goto LABEL_71;
          }

          v72 = *(v69[7] + 8 * v70);
          v68;
          v73 = v117;
          v74 = v135;
          if (v72 < 0)
          {
            BUG();
          }

          if (v72 >= v153[2])
          {
            BUG();
          }

          outlined init with copy of TabularRegressionTask(&v136[5 * v72], &v119);
          v75 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Layer);
          v76 = v128;
          if (!swift_dynamicCast(v73, &v119, v75, v128, 6))
          {
            __swift_storeEnumTagSinglePayload(v73, 1, 1, v76);
            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v73, &demangling cache variable for type metadata for Conv2D?);
            v119 = 0;
            v120 = 0xE000000000000000;
            _StringGuts.grow(_:)(80);
            v108._object = "layer state keypaths for " + 0x8000000000000000;
            v108._countAndFlagsBits = 0xD00000000000003FLL;
            String.append(_:)(v108);
            v108._countAndFlagsBits = v154._countAndFlagsBits;
            v108._object = v68;
            String.append(_:)(v108);
            v108._countAndFlagsBits = 0x65726F63206E6920;
            v108._object = 0xEF63657073206C6DLL;
            String.append(_:)(v108);
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v119, v120, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 752, 0);
            goto LABEL_71;
          }

          v68;
          __swift_storeEnumTagSinglePayload(v73, 0, 1, v76);
          (*(v129 + 32))(v138, v73, v76);
          v77 = v154._object;
          if (!swift_isUniquelyReferenced_nonNull_native(v154._object))
          {
            v77 = specialized _ArrayBuffer._consumeAndCreateNew()(v77);
          }

          v78 = v151;
          if (v151 >= v77[2])
          {
            BUG();
          }

          v79 = v127;
          v154._object = v77;
          NeuralNetwork.Layer.loadConv2DFromNeuralNetworks(_:useBias:into:)(v138, 0, v127);
          v80 = v74;
          v81 = v74;
          v82 = v51;
          v83 = v126;
          (*(v126 + 16))(v80, v79, v137);
          (*(v82 + 104))(v81, v146, v152);
          if (v78 >= *(v154._object + 2))
          {
            BUG();
          }

          NeuralNetwork.Layer.kind.setter(v81);
          (*(v129 + 8))(v138, v128);
          (*(v83 + 8))(v79, v137);
          v32 = v144;
          v39 = v154._object;
        }

        else
        {
          if (v52 != v147)
          {
            v150;
            (*(v148 + 8))(v49, v152);
            v32 = v144;
            LOBYTE(v40) = v153;
            v39 = v154._object;
            goto LABEL_44;
          }

          v84 = v125;
          (*(v148 + 96))(v49, v152);
          (*(v84 + 32))(v142, v49, v140);
          v85 = v149;
          v86 = v153;
          if (!v149[2])
          {
            goto LABEL_69;
          }

          v87 = specialized __RawDictionaryStorage.find<A>(_:)(v154._countAndFlagsBits, v68);
          if ((v88 & 1) == 0)
          {
            v68;
LABEL_69:
            v119 = 0;
            v120 = 0xE000000000000000;
            _StringGuts.grow(_:)(77);
            v109._object = "amework innerProduct layer for " + 0x8000000000000000;
            v109._countAndFlagsBits = 0xD00000000000003CLL;
            String.append(_:)(v109);
            v109._countAndFlagsBits = v154._countAndFlagsBits;
            v109._object = v68;
            String.append(_:)(v109);
            v109._countAndFlagsBits = 0x65726F63206E6920;
            v109._object = 0xEF63657073206C6DLL;
            String.append(_:)(v109);
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v119, v120, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 760, 0);
LABEL_71:
            BUG();
          }

          v89 = *(v85[7] + 8 * v87);
          v68;
          v90 = v118;
          if (v89 < 0)
          {
            BUG();
          }

          if (v89 >= v86[2])
          {
            BUG();
          }

          outlined init with copy of TabularRegressionTask(&v136[5 * v89], &v119);
          v91 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Layer);
          v92 = v130;
          if (!swift_dynamicCast(v90, &v119, v91, v130, 6))
          {
            __swift_storeEnumTagSinglePayload(v90, 1, 1, v92);
            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v90, &demangling cache variable for type metadata for BatchNorm?);
            v119 = 0;
            v120 = 0xE000000000000000;
            _StringGuts.grow(_:)(78);
            v110._object = "amework batchnorm layer for " + 0x8000000000000000;
            v110._countAndFlagsBits = 0xD00000000000003DLL;
            String.append(_:)(v110);
            v110._countAndFlagsBits = v154._countAndFlagsBits;
            v110._object = v150;
            String.append(_:)(v110);
            v110._countAndFlagsBits = 0x65726F63206E6920;
            v110._object = 0xEF63657073206C6DLL;
            String.append(_:)(v110);
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v119, v120, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 763, 0);
            goto LABEL_71;
          }

          v150;
          __swift_storeEnumTagSinglePayload(v90, 0, 1, v92);
          (*(v131 + 32))(v141, v90, v92);
          v93 = v154._object;
          if (!swift_isUniquelyReferenced_nonNull_native(v154._object))
          {
            v154._object = specialized _ArrayBuffer._consumeAndCreateNew()(v93);
          }

          v94 = v142;
          v95 = v154._object;
          v96 = v151;
          if (v151 >= *(v154._object + 2))
          {
            BUG();
          }

          NeuralNetwork.Layer.loadBatchNormFromNeuralNetworks(_:into:)(v141, v142);
          v97 = v135;
          v98 = v125;
          (*(v125 + 16))(v135, v94, v140);
          (*(v148 + 104))(v97, v147, v152);
          if (v96 >= v95[2])
          {
            BUG();
          }

          NeuralNetwork.Layer.kind.setter(v97);
          (*(v131 + 8))(v141, v130);
          (*(v98 + 8))(v94, v140);
          v32 = v144;
          v39 = v95;
        }
      }

      LOBYTE(v40) = v153;
LABEL_44:
      v41 = v151 + 1;
    }

    while (v114 != v151 + 1);
  }

  v103 = v40;
  v149;
  v139;
  v103;
  return v39;
}

uint64_t NeuralNetwork.Layer.loadBatchNormFromNeuralNetworks(_:into:)(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v16[1] = a1;
  v18 = type metadata accessor for Tensor(0);
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.WeightParameters?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  BatchNorm.scale.getter();
  v9 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  v16[0] = *(v2 + 8);
  (v16[0])(v16, v18);
  NeuralNetwork.WeightParameters.init(_:updatable:)(v9, 0);
  v17 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  NeuralNetwork.Layer.BatchNormalizeParameters.scale.setter(v16);
  BatchNorm.offset.getter();
  v10 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  (v16[0])(v16, v18);
  NeuralNetwork.WeightParameters.init(_:updatable:)(v10, 0);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  NeuralNetwork.Layer.BatchNormalizeParameters.offset.setter(v16);
  BatchNorm.runningMean.getter();
  v11 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  v12 = v18;
  v13 = v16[0];
  (v16[0])(v16, v18);
  NeuralNetwork.WeightParameters.init(_:updatable:)(v11, 0);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  NeuralNetwork.Layer.BatchNormalizeParameters.mean.setter(v16);
  BatchNorm.runningVariance.getter();
  v14 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  v13(v16, v12);
  NeuralNetwork.WeightParameters.init(_:updatable:)(v14, 0);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  return NeuralNetwork.Layer.BatchNormalizeParameters.variance.setter(v16);
}

uint64_t NeuralNetwork.Layer.loadInnerProductFromNeuralNetworks(_:useBias:into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a2;
  v47 = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.WeightParameters?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v40 = &v35;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v39 = &v35;
  v38 = type metadata accessor for Tensor(0);
  v10 = *(v38 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v41 = &v35;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v42 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  v16 = *(*(v42 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v45 = a3;
  v19 = NeuralNetwork.Layer.InnerProductParameters.outputChannelCount.getter(0);
  if (v19 != Dense.unitCount.getter())
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(86);
    v28._object = "amework convolution layer for " + 0x8000000000000000;
    v28._countAndFlagsBits = 0xD000000000000041;
    String.append(_:)(v28);
    v37 = Dense.unitCount.getter();
    v29 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v31 = v30;
    v28._countAndFlagsBits = v29;
    v28._object = v30;
    String.append(_:)(v28);
    v31;
    v28._object = "ks framework has " + 0x8000000000000000;
    v28._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v28);
    v37 = NeuralNetwork.Layer.InnerProductParameters.outputChannelCount.getter(0xD000000000000011);
    v32 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v34 = v33;
    v28._countAndFlagsBits = v32;
    v28._object = v33;
    String.append(_:)(v28);
    v34;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v35, v36, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 891, 0);
    BUG();
  }

  Dense.weight.getter(0, a2);
  v20 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  v43 = v10;
  v21 = *(v10 + 8);
  v22 = v38;
  v44 = v21;
  v21(&v35, v38);
  NeuralNetwork.WeightParameters.init(_:updatable:)(v20, 0);
  result = NeuralNetwork.Layer.InnerProductParameters.weights.setter(&v35);
  if (v46)
  {
    v24 = v39;
    Dense.bias.getter();
    if (__swift_getEnumTagSinglePayload(v24, 1, v22) == 1)
    {
      return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v24, &demangling cache variable for type metadata for Tensor?);
    }

    else
    {
      v25 = v41;
      (*(v43 + 32))(v41, v24, v22);
      v26 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
      v27 = v40;
      NeuralNetwork.WeightParameters.init(_:updatable:)(v26, 0);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v42);
      NeuralNetwork.Layer.InnerProductParameters.bias.setter(v27);
      return v44(v25, v22);
    }
  }

  return result;
}