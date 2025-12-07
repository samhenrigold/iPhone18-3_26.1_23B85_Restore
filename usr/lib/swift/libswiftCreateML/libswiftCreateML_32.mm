void *specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = v2;
  if (v3 < v2)
  {
    v4 = *(a2 + 16);
  }

  if (!v4)
  {
    v8 = _swiftEmptyArrayStorage;
    v15 = _swiftEmptyArrayStorage[3] >> 1;
    if (!v2)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  v5 = a2;
  v32 = *(a2 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, String)>);
  v7 = v4;
  v8 = swift_allocObject(v6, 32 * v4 + 32, 7);
  v9 = a1;
  v10 = (_swift_stdlib_malloc_size(v8) - 32) / 32;
  v8[2] = v7;
  v8[3] = 2 * v10;
  v11 = v10 & 0x7FFFFFFFFFFFFFFFLL;
  v12 = *(a1 + 40);
  v13 = *(v5 + 32);
  v14 = *(v5 + 40);
  v8[4] = *(v9 + 32);
  v8[5] = v12;
  v8[6] = v13;
  v8[7] = v14;
  v27 = v7;
  if (v7 != 1)
  {
    v31 = v8;
    v29 = v11;
    v28 = v2;
    v16 = 2;
    for (i = 0; ; i += 4)
    {
      v18 = *(v9 + i * 4 + 56);
      v19 = *(v5 + i * 4 + 48);
      v20 = v5;
      v21 = *(v5 + i * 4 + 56);
      v31[i + 8] = *(v9 + i * 4 + 48);
      v31[i + 9] = v18;
      v31[i + 10] = v19;
      v31[i + 11] = v21;
      if (v27 == v16)
      {
        break;
      }

      v9 = a1;
      ++v16;
      v5 = v20;
    }

    v15 = v29 - v16;
    v2 = v28;
    v3 = v32;
    v8 = v31;
    if (v28 > v32)
    {
      goto LABEL_6;
    }

LABEL_14:

    goto LABEL_15;
  }

  v15 = v11 - 1;
  v3 = v32;
  if (v2 == 1)
  {
    goto LABEL_14;
  }

LABEL_6:

LABEL_8:
  if (v3 >= v2)
  {
    BUG();
  }

LABEL_15:
  v22 = v8[3];
  if (v22 >= 2)
  {
    v23 = v22 >> 1;
    v24 = __OFSUB__(v23, v15);
    v25 = v23 - v15;
    if (v24)
    {
      BUG();
    }

    v8[2] = v25;
  }

  return v8;
}

uint64_t outlined destroy of Tensor?(uint64_t a1, uint64_t *a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(a2);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void MLDecisionTreeClassifier.predictions(from:)(uint64_t a1)
{
  v20 = v2;
  v19 = v1;
  v5 = type metadata accessor for DataFrame(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v17 = &v15;
  v10 = *(type metadata accessor for MLDecisionTreeClassifier(0) + 28);
  v16 = v3;
  v11._rawValue = *(v3 + v10);
  v18 = a1;
  DataFrame.validateContainsColumns(_:context:)(v11, __PAIR128__(0xE700000000000000, 0x65727574616546));
  if (!v12)
  {
    v20 = v6;
    v13 = v17;
    v14 = v16;
    AnyTreeClassifierModel.applied(to:eventHandler:)(v18, 0, 0);
    DataFrame.subscript.getter(*v14, v14[1]);
    (*(v20 + 8))(v13, v5);
  }
}

uint64_t type metadata accessor for MLDecisionTreeClassifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLDecisionTreeClassifier;
  if (!type metadata singleton initialization cache for MLDecisionTreeClassifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLDecisionTreeClassifier);
  }

  return result;
}

uint64_t *MLDecisionTreeClassifier.predictions(from:)(uint64_t a1, __m128 a2)
{
  v15 = v3;
  v16 = v2;
  v17 = type metadata accessor for DataFrame(0);
  v18 = *(v17 - 8);
  v4 = *(v18 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *(*(type metadata accessor for AnyColumn(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = *(a1 + 8);
  v13 = *a1;
  v14 = v10;
  outlined copy of Result<_DataTable, Error>(v13, v10);
  DataFrame.init(_:)(&v13);
  v11 = v15;
  MLDecisionTreeClassifier.predictions(from:)(&v13);
  if (v11)
  {
    return (*(v18 + 8))(&v13, v17);
  }

  *a2.i64 = (*(v18 + 8))(&v13, v17);
  return MLUntypedColumn.init(_:convertArraysToShapedArrays:)(&v13, 1, a2);
}

uint64_t MLDecisionTreeClassifier.evaluation(on:)(uint64_t a1)
{
  v4 = v1;
  v5 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = type metadata accessor for MLDecisionTreeClassifier(0);
  v9 = *(v8 + 28);
  v28 = v2;
  v10._rawValue = *(v2 + v9);
  v27 = a1;
  DataFrame.validateContainsColumns(_:context:)(v10, __PAIR128__(0xE700000000000000, 0x65727574616546));
  if (v11)
  {
    goto LABEL_6;
  }

  v29 = &v25;
  v30 = v4;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v12, v26);
  inited[2] = 1;
  inited[3] = 2;
  v14 = *(v8 + 24);
  v15 = *(v28 + v14 + 8);
  inited[4] = *(v28 + v14);
  inited[5] = v15;

  v16 = v27;
  DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xE500000000000000, 0x6C6562614CLL));
  if (v11)
  {
    swift_setDeallocating(inited);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v4 = v30;
LABEL_6:
    *v4 = v11;
    v18 = type metadata accessor for MLClassifierMetrics.Contents(0);
    v19 = 2;
    v20 = v4;
    v21 = v18;
    return swift_storeEnumTagMultiPayload(v20, v21, v19);
  }

  swift_setDeallocating(inited);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v17 = v29;
  AnyTreeClassifierModel.computeMetrics(on:)(v16);
  v23 = v17;
  v24 = v30;
  outlined init with take of MLClassifierMetrics(v23, v30, type metadata accessor for AnyClassificationMetrics);
  v20 = v24;
  v21 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v19 = 0;
  return swift_storeEnumTagMultiPayload(v20, v21, v19);
}

{
  v11 = v1;
  v2 = type metadata accessor for DataFrame(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *(a1 + 8);
  v9 = *a1;
  v10 = v7;
  outlined copy of Result<_DataTable, Error>(v9, v7);
  DataFrame.init(_:)(&v9);
  MLDecisionTreeClassifier.evaluation(on:)(&v9);
  return (*(v3 + 8))(&v9, v2);
}

NSURL *MLDecisionTreeClassifier.write(to:metadata:)(uint64_t a1, const void *a2)
{
  v43 = v3;
  v48 = a2;
  v49 = a1;
  v4 = *(*(type metadata accessor for AnyTreeClassifierModel(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v45 = &v33;
  v46 = type metadata accessor for Model(0);
  v7 = *(v46 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v42 = &v33;
  v11 = type metadata accessor for URL(0);
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  qmemcpy(v41, v48, sizeof(v41));
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(v49, 0xD000000000000016, (" be Float or Double" + 0x8000000000000000), 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (!v2)
  {
    v44 = 0;
    v50 = &v33;
    v47 = v7;
    v48 = v11;
    v49 = v12;
    outlined init with copy of MLTrainingSessionParameters(v43, v45, type metadata accessor for AnyTreeClassifierModel);
    v17 = *&v41[8];
    if (*&v41[8])
    {
      v18 = *v41;
      v19 = *&v41[16];
      v20 = *&v41[24];
      v21 = *&v41[32];
      v22 = *&v41[48];
      v23 = *&v41[56];
      v24 = *&v41[64];
    }

    else
    {
      v25 = NSFullUserName();
      v26 = v25;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)(v26);
      v17 = v27;

      v20 = "RandomForestRegressor" + 0x8000000000000000;
      v35[0] = v18;
      v35[1] = v17;
      v35[2] = 0xD000000000000033;
      v35[3] = "RandomForestRegressor" + 0x8000000000000000;
      v36 = 0;
      v37 = 49;
      v38 = 0xE100000000000000;
      v39 = 0;
      *v40 = v18;
      *&v40[8] = v17;
      *&v40[16] = 0xD000000000000033;
      *&v40[24] = "RandomForestRegressor" + 0x8000000000000000;
      *&v40[32] = 0;
      *&v40[48] = 49;
      *&v40[56] = 0xE100000000000000;
      *&v40[64] = 0;
      outlined retain of MLModelMetadata(v35);
      outlined release of MLModelMetadata(v40);
      v23 = 0xE100000000000000;
      v22 = 49;
      v21 = 0;
      v19 = 0xD000000000000033;
      v24 = 0;
    }

    *v40 = v18;
    *&v40[8] = v17;
    *&v40[16] = v19;
    *&v40[24] = v20;
    *&v40[32] = v21;
    *&v40[48] = v22;
    *&v40[56] = v23;
    *&v40[64] = v24;
    qmemcpy(v34, v40, sizeof(v34));
    outlined retain of MLModelMetadata?(v41);
    v28 = v42;
    v29 = v45;
    v30 = v44;
    specialized CoreMLExportable.export(metadata:)(v34);
    v31 = v48;
    outlined release of MLModelMetadata(v40);
    outlined destroy of MLActivityClassifier.ModelParameters(v29, type metadata accessor for AnyTreeClassifierModel);
    if (v30)
    {
      return (*(v49 + 8))(v50, v31);
    }

    else
    {
      Model.write(to:)(v50);
      v32 = v49;
      (*(v47 + 8))(v28, v46);
      return (*(v32 + 8))(v50, v31);
    }
  }

  return result;
}

uint64_t MLDecisionTreeClassifier.write(toFile:metadata:)(uint64_t a1, uint64_t a2, const void *a3)
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
  MLDecisionTreeClassifier.write(to:metadata:)(v16, v16);
  return (*(v24 + 8))(v16, v10);
}

unint64_t MLDecisionTreeClassifier.debugDescription.getter()
{
  v1 = v0;
  v25._object = type metadata accessor for MLClassifierMetrics.Contents(0);
  v2 = *(*(v25._object - 1) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = type metadata accessor for MLDecisionTreeClassifier(0);
  v25._countAndFlagsBits = MLDecisionTreeClassifier.ModelParameters.description.getter();
  v7 = v6;
  v22._countAndFlagsBits = MLClassifierMetrics.description.getter();
  v22._object = v8;
  v9 = *(v5 + 40);
  v10 = v7;
  outlined init with copy of MLTrainingSessionParameters(v1 + v9, &v20, type metadata accessor for MLClassifierMetrics.Contents);
  LODWORD(v7) = swift_getEnumCaseMultiPayload(&v20, v25._object);
  outlined destroy of MLActivityClassifier.ModelParameters(&v20, type metadata accessor for MLClassifierMetrics.Contents);
  v25._object = MLClassifierMetrics.description.getter();
  v12 = v11;
  v23 = 0xD000000000000023;
  v24 = "DecisionTreeClassifier" + 0x8000000000000000;
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

NSAttributedString MLDecisionTreeClassifier.playgroundDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NSAttributedString();
  v3._countAndFlagsBits = MLDecisionTreeClassifier.debugDescription.getter();
  v3._object = v4;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v3).super.isa;
  v1[3].super.isa = v2;
  v1->super.isa = result.super.isa;
  return result;
}

void MLDecisionTreeClassifier.model.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLDecisionTreeClassifier(0) + 20);

  *(v1 + v2) = a1;
}

void (*MLDecisionTreeClassifier.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLDecisionTreeClassifier(0) + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v4;
  return MLActivityClassifier.model.modify;
}

uint64_t MLDecisionTreeClassifier.targetColumn.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLDecisionTreeClassifier(0) + 24));

  return v1;
}

uint64_t MLDecisionTreeClassifier.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for MLDecisionTreeClassifier(0) + 24);
  result = *(v2 + v3 + 8);
  *(v2 + v3) = a1;
  *(v2 + v3 + 8) = a2;
  return result;
}

uint64_t MLDecisionTreeClassifier.featureColumns.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLDecisionTreeClassifier(0) + 28);
  result = *(v1 + v2);
  *(v1 + v2) = a1;
  return result;
}

uint64_t MLDecisionTreeClassifier.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLDecisionTreeClassifier(0);
  return outlined init with copy of MLDecisionTreeClassifier.ModelParameters(v1 + *(v3 + 32), v2);
}

uint64_t MLDecisionTreeClassifier.trainingMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLDecisionTreeClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 36), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLDecisionTreeClassifier.validationMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLDecisionTreeClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 40), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t static MLDecisionTreeClassifier._defaultSessionParameters.getter()
{
  v1 = v0;
  if (one-time initialization token for _defaultSessionParameters != -1)
  {
    swift_once(&one-time initialization token for _defaultSessionParameters, one-time initialization function for _defaultSessionParameters);
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  v3 = __swift_project_value_buffer(v2, static MLDecisionTreeClassifier._defaultSessionParameters);
  return outlined init with copy of MLTrainingSessionParameters(v3, v1, type metadata accessor for MLTrainingSessionParameters);
}

uint64_t MLDecisionTreeClassifier.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a6;
  v6[6] = a5;
  v6[5] = a4;
  v6[4] = a3;
  v6[3] = a2;
  v6[2] = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v6[10] = swift_task_alloc((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLDecisionTreeClassifier.init(_:targetColumn:featureColumns:parameters:), 0, 0);
}

uint64_t MLDecisionTreeClassifier.init(_:targetColumn:featureColumns:parameters:)()
{
  v1 = *(v0 + 80);
  v13 = *(v0 + 72);
  v15 = *(v0 + 64);
  v11 = *(v0 + 48);
  v10 = *(v0 + 32);
  v2 = *(v0 + 16);
  v12 = type metadata accessor for MLDecisionTreeClassifier(0);
  *(v0 + 88) = v12;
  v3 = v12[9];
  *(v0 + 120) = v3;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v1);
  (*(v13 + 8))(v1, v15);
  *(v2 + v3) = 0;
  v14 = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload(v2 + v3, v14, 1);
  v4 = v12[10];
  *(v0 + 124) = v4;
  v5 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v6 = swift_allocError(&type metadata for MLCreateError, v5, 0, 0);
  *v7 = 0xD0000000000000C0;
  *(v7 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v7 + 16) = 0;
  *(v7 + 32) = 0;
  *(v7 + 48) = 0;
  *(v2 + v4) = v6;
  swift_storeEnumTagMultiPayload(v2 + v4, v14, 2);
  *(v2 + v12[7]) = v11;
  *(v2 + v12[6]) = v10;
  v8 = swift_task_alloc(288);
  *(v0 + 96) = v8;
  *v8 = v0;
  v8[1] = MLDecisionTreeClassifier.init(_:targetColumn:featureColumns:parameters:);
  return ((&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel()))();
}

{
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  *(v4 + *(v1 + 20)) = *(v0 + 112);
  outlined init with take of MLClassifierMetrics(v5, v4, type metadata accessor for AnyTreeClassifierModel);
  v6 = *(v1 + 32);
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  *(v4 + v6 + 48) = v3[3];
  *(v4 + v6 + 32) = v9;
  *(v4 + v6 + 16) = v8;
  *(v4 + v6) = v7;
  v2;
  return (*(v0 + 8))();
}

{
  v7 = *(v0 + 80);
  v8 = *(v0 + 48);
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v2 + *(v0 + 124);
  v5 = v2 + *(v0 + 120);
  outlined destroy of MLDecisionTreeClassifier.ModelParameters(*(v0 + 56));
  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for AnyTreeClassifierModel);
  v1;
  v8;
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v4, type metadata accessor for MLClassifierMetrics);
  v7;
  return (*(v0 + 8))();
}

uint64_t MLDecisionTreeClassifier.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  v5 = *(*v2 + 96);
  v4 = *v2;
  *(*v2 + 104) = v1;
  v5;
  if (v1)
  {
    v6 = MLDecisionTreeClassifier.init(_:targetColumn:featureColumns:parameters:);
  }

  else
  {
    *(v4 + 112) = a1;
    v6 = MLDecisionTreeClassifier.init(_:targetColumn:featureColumns:parameters:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t MLDecisionTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v216 = a4;
  _ = a3;
  v7 = v5;
  v207._countAndFlagsBits = a2;
  quantity = v6;
  v211 = a5;
  v207._object = a1;
  v8 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v189 = &v165;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v180 = &v165;
  v13 = *(*(type metadata accessor for MLClassifierMetrics(0) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v183 = &v165;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v181 = &v165;
  v178 = *(type metadata accessor for AnyTreeClassifierModel(0) - 8);
  v18 = *(v178 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v176 = &v165;
  v177 = v18;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v205 = &v165;
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v174 = &v165;
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?) - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v190 = &v165;
  v186 = type metadata accessor for AnyColumn(0);
  v29 = *(*(v186 - 8) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v191 = &v165;
  v32 = alloca(v29);
  v33 = alloca(v29);
  v197 = &v165;
  v34 = alloca(v29);
  v35 = alloca(v29);
  v184 = &v165;
  v36 = *(*(type metadata accessor for AnyTreeClassifier(0) - 8) + 64);
  v37 = alloca(v36);
  v38 = alloca(v36);
  v203 = &v165;
  v215 = type metadata accessor for DataFrame(0);
  v199 = *(v215 - 8);
  v39 = *(v199 + 64);
  v40 = alloca(v39);
  v41 = alloca(v39);
  v188 = &v165;
  v42 = alloca(v39);
  v43 = alloca(v39);
  v192 = &v165;
  v44 = alloca(v39);
  v45 = alloca(v39);
  v187 = &v165;
  v46 = alloca(v39);
  v47 = alloca(v39);
  v200 = &v165;
  v206 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  v48 = *(*(v206 - 8) + 64);
  v49 = alloca(v48);
  v50 = alloca(v48);
  v213 = &v165;
  v201 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v51 = *(*(v201 - 8) + 64);
  v52 = alloca(v51);
  v53 = alloca(v51);
  v182 = &v165;
  v54 = alloca(v51);
  v55 = alloca(v51);
  v179 = &v165;
  v56 = alloca(v51);
  v57 = alloca(v51);
  v185 = &v165;
  v58 = alloca(v51);
  v59 = alloca(v51);
  v202 = &v165;
  v60 = alloca(v51);
  v61 = alloca(v51);
  v173 = &v165;
  v62 = alloca(v51);
  v63 = alloca(v51);
  v214 = &v165;
  v209 = type metadata accessor for BoostedTreeConfiguration(0);
  v208 = *(v209 - 8);
  v64 = *(v208 + 64);
  v65 = alloca(v64);
  v66 = alloca(v64);
  v175 = &v165;
  v67 = alloca(v64);
  v68 = alloca(v64);
  v210 = &v165;
  v194 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v195 = *(v194 - 8);
  v69 = *(v195 + 64);
  v70 = alloca(v69);
  v71 = alloca(v69);
  v198 = type metadata accessor for MLDecisionTreeClassifier(0);
  v196 = *(v198 + 9);
  v72 = v7 + v196;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v165);
  (*(v195 + 8))(&v165, v194);
  v193 = v7;
  *(v7 + v196) = 0;
  v73 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v194 = v72;
  swift_storeEnumTagMultiPayload(v72, v73, 1);
  v74 = *(v198 + 10);
  v75 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v76 = swift_allocError(&type metadata for MLCreateError, v75, 0, 0);
  *v77 = 0xD0000000000000C0;
  *(v77 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v77 + 16) = 0;
  *(v77 + 32) = 0;
  *(v77 + 48) = 0;
  *(v193 + v74) = v76;
  v195 = v7 + v74;
  v196 = v73;
  swift_storeEnumTagMultiPayload(v7 + v74, v73, 2);
  v78 = v211;
  v79 = v211;
  outlined init with copy of MLDecisionTreeClassifier.ModelParameters(v211, v167);
  BoostedTreeConfiguration.init()(v79);
  BoostedTreeConfiguration.maximumIterations.setter(1);
  BoostedTreeConfiguration.learningRate.setter(1.0);
  BoostedTreeConfiguration.maximumDepth.setter(v167[0]);
  BoostedTreeConfiguration.minimumLossReduction.setter(v168);
  BoostedTreeConfiguration.minimumChildWeight.setter(v169);
  BoostedTreeConfiguration.randomSeed.setter(v170);
  outlined destroy of MLDecisionTreeClassifier.ModelParameters(v167);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v78 + 8, &v171, &demangling cache variable for type metadata for Any?);
  if (!v172)
  {
    BUG();
  }

  v80 = v214;
  v81 = (v214 + *(v201 + 48));
  outlined init with take of Any(&v171, v167);
  swift_dynamicCast(v213, v167, &type metadata for Any + 8, v206, 7);
  v82 = v80;
  object = v207._object;
  v84 = quantity;
  MLDecisionTreeClassifier.ModelParameters.ValidationData.generateDataFrames(trainingData:)(v82, v81, v207._object);
  if (v84)
  {
    _;
    v216;
    outlined destroy of MLDecisionTreeClassifier.ModelParameters(v211);
    (*(v199 + 8))(object, v215);
    outlined destroy of MLActivityClassifier.ModelParameters(v213, type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData);
LABEL_4:
    (*(v208 + 8))(v210, v209);
LABEL_6:
    outlined destroy of MLActivityClassifier.ModelParameters(v194, type metadata accessor for MLClassifierMetrics);
    return outlined destroy of MLActivityClassifier.ModelParameters(v195, type metadata accessor for MLClassifierMetrics);
  }

  quantity = v81;
  outlined destroy of MLActivityClassifier.ModelParameters(v213, type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData);
  v85 = v216;
  v86 = static _FeatureUtilities.selectFeaturesFromTrainingData(trainingData:targetColumn:featureColumns:)(v214, v207._countAndFlagsBits, _, v216);
  v213 = 0;
  v87 = v215;
  v206 = v86;
  v85;
  v89 = v173;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v214, v173, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v90 = v89 + *(v201 + 48);
  if (__swift_getEnumTagSinglePayload(v90, 1, v87) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v90, &demangling cache variable for type metadata for DataFrame?);
    v216 = *(v199 + 8);
    v216(v89, v87);
  }

  else
  {
    v103 = v90;
    v104 = v199;
    (*(v199 + 32))(v200, v103, v87);
    v216 = *(v104 + 8);
    v216(v89, v87);
    v105 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
    inited = swift_initStackObject(v105, v166);
    inited[2] = 1;
    inited[3] = 2;
    inited[4] = v207._countAndFlagsBits;
    inited[5] = _;

    DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xEE00726569666973, 0x73616C4365657254));
    if (v107)
    {
      swift_setDeallocating(inited);
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      _;
      v206;
      outlined destroy of MLDecisionTreeClassifier.ModelParameters(v211);
      v108 = v216;
      v216(v207._object, v87);
      v108(v200, v87);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v214, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
      (*(v208 + 8))(v210, v209);
      goto LABEL_6;
    }

    swift_setDeallocating(inited);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v117 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any.Type>);
    v118 = swift_allocObject(v117, 48, 7);
    v118[2] = 2;
    v118[3] = 4;
    v118[4] = &type metadata for String;
    v118[5] = &type metadata for Int;
    v119._countAndFlagsBits = v207._countAndFlagsBits;
    v119._object = _;
    DataFrame.validateColumnTypes(_:_:context:)(v119, v118, __PAIR128__(0xEE00726569666973, 0x73616C4365657254));
    if (v120)
    {
      _;
      v206;
      v118;
      outlined destroy of MLDecisionTreeClassifier.ModelParameters(v211);
      v121 = v215;
      v122 = v216;
      v216(v207._object, v215);
      v122(v200, v121);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v214, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
      goto LABEL_4;
    }

    v213 = 0;
    v216(v200, v215);
    v118;
  }

  v91 = _;
  v92 = v214;
  v93 = v202;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v214, v202, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  DataFrame.subscript.getter(v207._countAndFlagsBits, v91);
  v94 = v93;
  v95 = v215;
  v96 = v216;
  v216(v94, v215);
  v97 = v92;
  v98 = v185;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v97, v185, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v99 = v174;
  outlined init with take of DataFrame?(v98 + *(v201 + 48), v174);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v99, 1, v95);
  v101 = v96;
  if (EnumTagSinglePayload == 1)
  {
    v96(v98, v215);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v99, &demangling cache variable for type metadata for DataFrame?);
    __swift_storeEnumTagSinglePayload(v190, 1, 1, v186);
    v102 = _;
  }

  else
  {
    v109 = v190;
    v102 = _;
    v110 = v101;
    DataFrame.subscript.getter(v207._countAndFlagsBits, _);
    v111 = v99;
    v112 = v215;
    v110(v111, v215);
    __swift_storeEnumTagSinglePayload(v109, 0, 1, v186);
    v110(v185, v112);
  }

  v202 = (v202 + *(v201 + 48));
  v113 = v175;
  (*(v208 + 16))(v175, v210, v209);

  v114 = v206;

  v115 = v213;
  AnyTreeClassifier.init(trainingLabelsColumn:validationLabelsColumn:annotationColumnName:featureColumnNames:configuration:)(v184, v190, v207._countAndFlagsBits, v102, v114, v113);
  if (v115)
  {
    v102;
    v114;
    outlined destroy of MLDecisionTreeClassifier.ModelParameters(v211);
    v216(v207._object, v215);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v214, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (*(v208 + 8))(v210, v209);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v202, &demangling cache variable for type metadata for DataFrame?);
    goto LABEL_6;
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v202, &demangling cache variable for type metadata for DataFrame?);
  AnyTreeClassifier.fitted(to:validateOn:eventHandler:)(v214, quantity, 0, 0);
  v116 = v215;
  v213 = 0;
  if (!AnalyticsReporter.init()())
  {
    v123 = v214;
    v124 = v179;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v214, v179, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v125 = v124 + *(v201 + 48);
    quantity = DataFrame.shape.getter(v123);
    v216(v124, v116);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_decisionTreeClassifier, __PAIR128__(("vectorized_features" + 0x8000000000000000), 0xD000000000000015), quantity);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v125, &demangling cache variable for type metadata for DataFrame?);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_decisionTreeClassifier, __PAIR128__(("Number of Annotations" + 0x8000000000000000), 0xD000000000000010), *(v203[3] + 16));
  }

  v126 = v198;
  v127 = *(v198 + 6);
  v128 = v193;
  *(v193 + v127) = v207._countAndFlagsBits;
  *(v128 + v127 + 8) = _;
  quantity = v128 + v126[8];
  outlined init with copy of MLDecisionTreeClassifier.ModelParameters(v211, quantity);
  *(v128 + v126[7]) = v206;
  v129 = v176;
  outlined init with copy of MLTrainingSessionParameters(v205, v176, type metadata accessor for AnyTreeClassifierModel);
  v130 = *(v178 + 80);
  v131 = ~*(v178 + 80) & (v130 + 16);
  v132 = swift_allocObject(&unk_393EB8, v131 + v177, v130 | 7);
  outlined init with take of MLClassifierMetrics(v129, v132 + v131, type metadata accessor for AnyTreeClassifierModel);
  v133 = v213;
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLDecisionTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:), v132);
  if (v133)
  {
    v213 = v133;

    outlined destroy of MLDecisionTreeClassifier.ModelParameters(v211);
    v216(v207._object, v215);
    outlined destroy of MLActivityClassifier.ModelParameters(v205, type metadata accessor for AnyTreeClassifierModel);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v214, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (*(v208 + 8))(v210, v209);
    outlined destroy of MLActivityClassifier.ModelParameters(v203, type metadata accessor for AnyTreeClassifier);
    v206;
    _;
LABEL_25:
    outlined destroy of MLDecisionTreeClassifier.ModelParameters(quantity);
    goto LABEL_6;
  }

  v135 = v134;

  v136 = *(v198 + 5);
  v198 = v135;
  *(v128 + v136) = v135;
  outlined init with copy of MLTrainingSessionParameters(v205, v128, type metadata accessor for AnyTreeClassifierModel);
  AnyTreeClassifierModel.applied(to:eventHandler:)(v214, 0, 0);
  v213 = 0;
  v137 = *v128;
  v138 = v128[1];
  DataFrame.subscript.getter(v137, v138);
  v139 = v191;
  v207._countAndFlagsBits = v137;
  v140 = v137;
  v202 = v138;
  v141 = v214;
  DataFrame.subscript.getter(v140, v138);
  v142 = v180;
  AnyClassificationMetrics.init(_:_:)(v197, v139);
  v143 = v215;
  v144 = v216;
  v216(v187, v215);
  v145 = v142;
  v146 = v181;
  outlined init with take of MLClassifierMetrics(v145, v181, type metadata accessor for AnyClassificationMetrics);
  swift_storeEnumTagMultiPayload(v146, v196, 0);
  outlined assign with take of MLClassifierMetrics(v146, v194);
  v147 = v141;
  v148 = v182;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v147, v182, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v149 = v148 + *(v201 + 48);
  if (__swift_getEnumTagSinglePayload(v149, 1, v143) == 1)
  {
    outlined destroy of MLDecisionTreeClassifier.ModelParameters(v211);
    v150 = v215;
    v144(v207._object, v215);
    outlined destroy of MLActivityClassifier.ModelParameters(v205, type metadata accessor for AnyTreeClassifierModel);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v214, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (*(v208 + 8))(v210, v209);
    outlined destroy of MLActivityClassifier.ModelParameters(v203, type metadata accessor for AnyTreeClassifier);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v149, &demangling cache variable for type metadata for DataFrame?);
    return (v144)(v148, v150);
  }

  else
  {
    v151 = v148;
    v152 = v192;
    v153 = v149;
    v154 = v215;
    (*(v199 + 32))(v192, v153, v215);
    v216 = v144;
    v144(v151, v154);
    v155 = v213;
    AnyTreeClassifierModel.applied(to:eventHandler:)(v152, 0, 0);
    if (v155)
    {
      v213 = v155;
      outlined destroy of MLDecisionTreeClassifier.ModelParameters(v211);
      v156 = v215;
      v157 = v216;
      v216(v207._object, v215);
      v157(v192, v156);
      v158 = v193;
      outlined destroy of MLActivityClassifier.ModelParameters(v205, type metadata accessor for AnyTreeClassifierModel);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v214, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
      (*(v208 + 8))(v210, v209);
      outlined destroy of MLActivityClassifier.ModelParameters(v203, type metadata accessor for AnyTreeClassifier);
      outlined destroy of MLActivityClassifier.ModelParameters(v158, type metadata accessor for AnyTreeClassifierModel);
      v206;
      _;

      goto LABEL_25;
    }

    countAndFlagsBits = v207._countAndFlagsBits;
    v160 = v202;
    DataFrame.subscript.getter(v207._countAndFlagsBits, v202);
    v161 = v192;
    DataFrame.subscript.getter(countAndFlagsBits, v160);
    AnyClassificationMetrics.init(_:_:)(v197, v191);
    v162 = v215;
    v163 = v216;
    v216(v188, v215);
    outlined destroy of MLDecisionTreeClassifier.ModelParameters(v211);
    v163(v207._object, v162);
    v163(v161, v162);
    outlined destroy of MLActivityClassifier.ModelParameters(v205, type metadata accessor for AnyTreeClassifierModel);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v214, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (*(v208 + 8))(v210, v209);
    v164 = v183;
    outlined init with take of MLClassifierMetrics(v189, v183, type metadata accessor for AnyClassificationMetrics);
    swift_storeEnumTagMultiPayload(v164, v196, 0);
    outlined destroy of MLActivityClassifier.ModelParameters(v203, type metadata accessor for AnyTreeClassifier);
    return outlined assign with take of MLClassifierMetrics(v164, v195);
  }
}

uint64_t closure #1 in MLDecisionTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc(288);
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #1 in MLDecisionTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:);
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
  return swift_task_switch(closure #1 in MLDecisionTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:), 0, 0);
}

uint64_t MLDecisionTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
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
  outlined init with copy of MLDecisionTreeClassifier.ModelParameters(a5, &v11);
  MLDecisionTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(&v11, v15, v14, v13, &v11);
  return outlined destroy of MLDecisionTreeClassifier.ModelParameters(a5);
}

uint64_t MLDecisionTreeClassifier.init(checkpoint:)(uint64_t a1)
{
  v76 = v2;
  v95 = a1;
  v3 = v1;
  v89 = v1;
  v86 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  v4 = *(*(v86 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v85 = v75;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v84 = v75;
  v9 = *(*(type metadata accessor for BoostedTreeConfiguration(0) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v77 = v75;
  v88 = type metadata accessor for AnyTreeClassifier(0);
  v12 = *(*(v88 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v79 = v75;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v93 = v75;
  v83 = *(type metadata accessor for AnyTreeClassifierModel(0) - 8);
  v17 = *(v83 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v80 = v75;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v82 = v75;
  v22 = alloca(v17);
  v23 = alloca(v17);
  v78 = v75;
  v81 = v17;
  v24 = alloca(v17);
  v25 = alloca(v17);
  v94 = v75;
  v92 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v90 = *(v92 - 8);
  v26 = *(v90 + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v29 = type metadata accessor for MLDecisionTreeClassifier(0);
  v91 = *(v29 + 36);
  v30 = v91 + v3;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v75);
  (*(v90 + 8))(v75, v92);
  v31 = v89;
  *(v89 + v91) = 0;
  v32 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v90 = v30;
  swift_storeEnumTagMultiPayload(v30, v32, 1);
  v87 = v29;
  v33 = *(v29 + 40);
  v92 = v33 + v31;
  v91 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v34 = swift_allocError(&type metadata for MLCreateError, v91, 0, 0);
  *v35 = 0xD0000000000000C0;
  *(v35 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v35 + 16) = 0;
  *(v35 + 32) = 0;
  *(v35 + 48) = 0;
  v36 = v92;
  *(v31 + v33) = v34;
  v37 = v95;
  swift_storeEnumTagMultiPayload(v36, v32, 2);
  switch(*(v37 + *(type metadata accessor for MLCheckpoint(0) + 20)))
  {
    case 0:
      v38 = 0x696C616974696E69;
      v39 = 0xEB0000000064657ALL;
      break;
    case 1:
      v38 = 0x6974636172747865;
      goto LABEL_7;
    case 2:
      0;
      v40 = v88;
      v41 = v93;
      goto LABEL_9;
    case 3:
      v38 = 0x697461756C617665;
LABEL_7:
      v39 = 0xEA0000000000676ELL;
      break;
    case 4:
      v39 = 0xEB00000000676E69;
      v38 = 0x636E657265666E69;
      break;
    case 5:
      JUMPOUT(0x230294);
  }

  v42 = _stringCompareWithSmolCheck(_:_:expecting:)(v38, v39, 0x676E696E69617274, 0xE800000000000000, 0);
  v39;
  v40 = v88;
  v41 = v93;
  if (v42)
  {
LABEL_9:
    v43 = specialized _setUpCast<A, B>(_:)(&_swiftEmptySetSingleton);
    v44 = v77;
    BoostedTreeConfiguration.init()(&_swiftEmptySetSingleton);
    v45 = v43;
    v46 = v44;
    AnyTreeClassifier.init(labels:annotationColumnName:featureColumnNames:configuration:)(v45, 0, 0xE000000000000000, _swiftEmptyArrayStorage, v44);
    v47 = lazy protocol witness table accessor for type AnyTreeClassifier and conformance AnyTreeClassifier();
    v48 = v78;
    v93 = v47;
    v49 = v76;
    UpdatableSupervisedTabularEstimator.readWithOptimizer(from:)(v95, v40, v47);
    outlined destroy of MLActivityClassifier.ModelParameters(v41, type metadata accessor for AnyTreeClassifier);
    if (v49)
    {
      v50 = specialized _setUpCast<A, B>(_:)(&_swiftEmptySetSingleton);
      BoostedTreeConfiguration.init()(&_swiftEmptySetSingleton);
      v51 = v46;
      v52 = v79;
      AnyTreeClassifier.init(labels:annotationColumnName:featureColumnNames:configuration:)(v50, 0, 0xE000000000000000, _swiftEmptyArrayStorage, v51);
      v53 = v80;
      UpdatableSupervisedTabularEstimator.readWithOptimizer(from:)(v95, v88, v93);
      outlined destroy of MLActivityClassifier.ModelParameters(v52, type metadata accessor for AnyTreeClassifier);
      v49;
      v55 = v53;
    }

    else
    {
      v55 = v48;
    }

    v56 = v94;
    outlined init with take of MLClassifierMetrics(v55, v94, type metadata accessor for AnyTreeClassifierModel);
    v57 = v56;
    v58 = v82;
    outlined init with copy of MLTrainingSessionParameters(v57, v82, type metadata accessor for AnyTreeClassifierModel);
    v59 = *(v83 + 80);
    v60 = ~*(v83 + 80) & (v59 + 16);
    v61 = swift_allocObject(&unk_393EE0, v60 + v81, v59 | 7);
    outlined init with take of MLClassifierMetrics(v58, v61 + v60, type metadata accessor for AnyTreeClassifierModel);
    specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLDecisionTreeClassifier.init(checkpoint:), v61);
    v63 = v62;

    v65 = v87;
    v66 = v89;
    *(v89 + *(v87 + 20)) = v63;
    outlined init with copy of MLTrainingSessionParameters(v94, v66, type metadata accessor for AnyTreeClassifierModel);
    v67 = v84;
    *v84 = 0;
    *(v67 + 16) = 256;
    swift_storeEnumTagMultiPayload(v67, v86, 0);
    v68 = v66 + *(v65 + 32) + 8;
    *(v68 + 16) = 0;
    *v68 = 0;
    *(v68 - 8) = 6;
    *(v68 + 32) = _mm_loadh_ps(&qword_33D880);
    *(v68 + 48) = 42;
    v69 = v85;
    outlined init with copy of MLTrainingSessionParameters(v67, v85, type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData);
    v75[3] = v86;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v75);
    outlined init with take of MLClassifierMetrics(v69, boxed_opaque_existential_0, type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData);
    outlined assign with take of Any?(v75, v68);
    outlined destroy of MLActivityClassifier.ModelParameters(v67, type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData);
    v71 = v87;
    v72 = *(v87 + 24);
    v73 = v89;
    *(v89 + v72) = 0;
    *(v73 + v72 + 8) = 0xE000000000000000;
    v74 = v73;
    outlined destroy of MLActivityClassifier.ModelParameters(v95, type metadata accessor for MLCheckpoint);
    outlined destroy of MLActivityClassifier.ModelParameters(v94, type metadata accessor for AnyTreeClassifierModel);
    result = *(v71 + 28);
    *(v74 + result) = _swiftEmptyArrayStorage;
  }

  else
  {
    swift_allocError(&type metadata for MLCreateError, v91, 0, 0);
    *v54 = 0xD00000000000004ELL;
    *(v54 + 8) = "sifier\n\nParameters\n" + 0x8000000000000000;
    *(v54 + 16) = 0;
    *(v54 + 32) = 0;
    *(v54 + 48) = 0;
    swift_willThrow();
    outlined destroy of MLActivityClassifier.ModelParameters(v95, type metadata accessor for MLCheckpoint);
    outlined destroy of MLActivityClassifier.ModelParameters(v90, type metadata accessor for MLClassifierMetrics);
    return outlined destroy of MLActivityClassifier.ModelParameters(v92, type metadata accessor for MLClassifierMetrics);
  }

  return result;
}

void *static MLDecisionTreeClassifier.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
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
  v13 = static MLDecisionTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(&v19, v25, v24, v23, v22, v21);
  v14 = v7;
  if (v6)
  {
    return (*(v8 + 8))(&v19, v7);
  }

  v16 = v13;
  (*(v8 + 8))(&v19, v14);
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLDecisionTreeClassifier>);
  v18 = swift_allocObject(v17, *(v17 + 48), *(v17 + 52));
  return specialized MLJob.init(_:)(v18, v16);
}

__int128 *static MLDecisionTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
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
  v12 = static MLDecisionTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(&v14, a2, v19, v18, v17, v16);
  (*(v20 + 8))(&v14, v7);
  return v12;
}

void *static MLDecisionTreeClassifier.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLDecisionTreeClassifier>);
  v2 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));

  return specialized MLJob.init(_:)(v2, a1);
}

__int128 *static MLDecisionTreeClassifier.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(void (*a1)(uint64_t *, uint64_t *, uint64_t), uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  result = static MLDecisionTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(a1, a2, a3, a4, a5, a6);
  if (!v6)
  {
    v8 = result;
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLDecisionTreeClassifier>);
    v10 = swift_allocObject(v9, *(v9 + 48), *(v9 + 52));
    return specialized MLJob.init(_:)(v10, v8);
  }

  return result;
}

__int128 *static MLDecisionTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(void (*a1)(uint64_t *, uint64_t *, uint64_t), uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v64 = v6;
  v60 = a6;
  v57 = a4;
  v58 = a3;
  v52 = a2;
  v51 = a1;
  v8 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v56 = &v43;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v53 = &v43;
  v13 = *(*(type metadata accessor for BoostedTreeConfiguration(0) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v54 = &v43;
  v16 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v63 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v20 = *(*(v63 - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v62 = &v43;
  v23 = alloca(v20);
  v24 = alloca(v20);
  v59 = &v43;
  v25 = alloca(v20);
  v26 = alloca(v20);
  v55 = a5;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a5 + 8, &v43, &demangling cache variable for type metadata for Any?);
  if (!v44)
  {
    BUG();
  }

  v27 = (&v43 + *(v63 + 48));
  v61 = &v43;
  outlined init with take of Any(&v43, &v45);
  v28 = v61;
  swift_dynamicCast(&v43, &v45, &type metadata for Any + 8, v16, 7);
  v29 = v64;
  MLDecisionTreeClassifier.ModelParameters.ValidationData.generateDataFrames(trainingData:)(v28, v27, v51);
  outlined destroy of MLActivityClassifier.ModelParameters(&v43, type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData);
  if (!v29)
  {
    v30 = v59;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v28, v59, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v31 = v63;
    v64 = v30 + *(v63 + 48);
    v32 = v28;
    v33 = v62;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v32, v62, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v63 = v33 + *(v31 + 48);
    outlined init with copy of MLDecisionTreeClassifier.ModelParameters(v55, &v45);

    v34 = v58;

    v35 = v54;
    BoostedTreeConfiguration.init()(v34);
    BoostedTreeConfiguration.maximumIterations.setter(1);
    BoostedTreeConfiguration.learningRate.setter(1.0);
    BoostedTreeConfiguration.maximumDepth.setter(v45);
    BoostedTreeConfiguration.minimumLossReduction.setter(v48);
    BoostedTreeConfiguration.minimumChildWeight.setter(v49);
    BoostedTreeConfiguration.randomSeed.setter(v50);
    outlined destroy of MLDecisionTreeClassifier.ModelParameters(&v45);
    v36 = v53;
    outlined init with copy of MLTrainingSessionParameters(v60, v53, type metadata accessor for MLTrainingSessionParameters);
    v37 = type metadata accessor for TreeClassifierTrainingSessionDelegate(0);
    swift_allocObject(v37, *(v37 + 48), *(v37 + 52));
    v38 = TreeClassifierTrainingSessionDelegate.init(trainingData:validationData:targetColumn:featureColumns:configuration:sessionParameters:)(v59, v63, v52, v58, v57, v35, v36);
    v39 = type metadata accessor for DataFrame(0);
    (*(*(v39 - 8) + 8))(v62, v39);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v64, &demangling cache variable for type metadata for DataFrame?);
    v46 = v37;
    v47 = &protocol witness table for TreeClassifierTrainingSessionDelegate;
    *&v45 = v38;
    v40 = v56;
    outlined init with copy of MLTrainingSessionParameters(v60, v56, type metadata accessor for MLTrainingSessionParameters);
    v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>);
    swift_allocObject(v41, *(v41 + 48), *(v41 + 52));

    v28 = specialized MLTrainingSession.init(delegate:parameters:modelType:)(&v45, v40, 3);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v61, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  }

  return v28;
}

uint64_t static MLDecisionTreeClassifier.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v2 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v12 = v11;
  v5 = alloca(v2);
  v6 = alloca(v2);
  outlined init with copy of MLTrainingSessionParameters(a1, v11, type metadata accessor for MLTrainingSessionParameters);
  v7 = type metadata accessor for TreeClassifierTrainingSessionDelegate(0);
  swift_allocObject(v7, *(v7 + 48), *(v7 + 52));
  result = TreeClassifierTrainingSessionDelegate.init(sessionParameters:)(v11);
  if (!v1)
  {
    v11[3] = v7;
    v11[4] = &protocol witness table for TreeClassifierTrainingSessionDelegate;
    v11[0] = result;
    v9 = v12;
    outlined init with copy of MLTrainingSessionParameters(a1, v12, type metadata accessor for MLTrainingSessionParameters);
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>);
    swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v11, v9, 3);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static MLDecisionTreeClassifier.resume(_:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v22 = a5;
  v23 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLDecisionTreeClassifier, Error>);
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
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v19, &demangling cache variable for type metadata for Result<MLDecisionTreeClassifier, Error>);
  }

  else
  {
    outlined init with copy of TabularRegressionTask(direct field offset for MLTrainingSession.delegate + a3, v20);
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingSessionDelegate);
    v15 = type metadata accessor for TreeClassifierTrainingSessionDelegate(0);
    swift_dynamicCast(&v21, v20, v14, v15, 7);
    v16 = v21;
    v17 = type metadata accessor for TaskPriority(0);
    __swift_storeEnumTagSinglePayload(&v19, 1, 1, v17);
    v18 = swift_allocObject(&unk_393F18, 56, 7);
    *(v18 + 16) = 0;
    *(v18 + 32) = v16;
    *(v18 + 40) = v23;
    *(v18 + 48) = v22;

    _sScTss5NeverORs_rlE8priority9operationScTyxABGScPSg_xyYaYAcntcfCyt_Tt1g5(&v19, &async function pointer to partial apply for closure #1 in static MLDecisionTreeClassifier.handleResult(_:session:fulfill:), v18);
  }
}

uint64_t closure #1 in static MLDecisionTreeClassifier.handleResult(_:session:fulfill:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a6;
  v6[3] = a5;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLDecisionTreeClassifier, Error>);
  v6[5] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in static MLDecisionTreeClassifier.handleResult(_:session:fulfill:), 0, 0);
}

uint64_t closure #1 in static MLDecisionTreeClassifier.handleResult(_:session:fulfill:)()
{

  v1 = swift_task_alloc(80);
  v0[6] = v1;
  *v1 = v0;
  v1[1] = closure #1 in static MLDecisionTreeClassifier.handleResult(_:session:fulfill:);
  return ((&_ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC24MLDecisionTreeClassifierV_Tt1g503_s8b4ML24fgh80V12handleResult33_7E17D1DEF38C9D8FEB24863D1630C03BLL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gH23TrainingSessionDelegateCTf1nc_nTu + _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC24MLDecisionTreeClassifierV_Tt1g503_s8b4ML24fgh80V12handleResult33_7E17D1DEF38C9D8FEB24863D1630C03BLL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gH23TrainingSessionDelegateCTf1nc_nTu))(v0[5], v0[2]);
}

{
  *(*v0 + 48);
  return swift_task_switch(closure #1 in static MLDecisionTreeClassifier.handleResult(_:session:fulfill:), 0, 0);
}

{
  v1 = *(v0 + 40);
  (*(v0 + 24))(v1);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &demangling cache variable for type metadata for Result<MLDecisionTreeClassifier, Error>);
  v1;
  return (*(v0 + 8))();
}

uint64_t MLDecisionTreeClassifier.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2[31] = a2;
  v2[30] = a1;
  v3 = type metadata accessor for AnyClassificationMetrics(0);
  v2[32] = v3;
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[33] = swift_task_alloc(v4);
  v2[34] = swift_task_alloc(v4);
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyClassificationMetrics?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[35] = swift_task_alloc(v5);
  v2[36] = swift_task_alloc(v5);
  v6 = type metadata accessor for MLClassifierMetrics(0);
  v2[37] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyTreeClassifierModel?);
  v2[38] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MLDecisionTreeClassifier(0);
  v2[39] = v8;
  v2[40] = swift_task_alloc((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  v2[41] = swift_task_alloc((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BoostedTreeConfiguration(0);
  v2[42] = v10;
  v11 = *(v10 - 8);
  v2[43] = v11;
  v2[44] = swift_task_alloc((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  v2[45] = swift_task_alloc((*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v2[46] = v13;
  v2[47] = swift_task_alloc((*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLDecisionTreeClassifier.init(delegate:), 0, 0);
}

uint64_t MLDecisionTreeClassifier.init(delegate:)()
{
  v1 = v0[46];
  v2 = v0[45];
  v3 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters + v0[31];
  swift_beginAccess(v3, (v0 + 18), 0, 0);
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
  v7 = v0[31];
  v14 = v0[38];
  outlined init with take of MLClassifierMetrics(v0[45], v4, type metadata accessor for PersistentParametersForTreeBasedMethods);
  (*(v18 + 16))(v6, v4 + v5[8], v15);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4 + v5[5], v16, &demangling cache variable for type metadata for DataFrame?);
  MLDecisionTreeClassifier.ModelParameters.init(configuration:validation:)(v6, v16);
  v8 = v5[6];
  v17 = *(v4 + v8);
  v19 = *(v4 + v8 + 8);
  v9 = *(v4 + v5[7]);
  v10 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model + v7;
  swift_beginAccess(v10, (v0 + 21), 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v14, &demangling cache variable for type metadata for AnyTreeClassifierModel?);
  v11 = type metadata accessor for AnyTreeClassifierModel(0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v11) == 1)
  {
    BUG();
  }

  outlined init with copy of MLDecisionTreeClassifier.ModelParameters((v0 + 2), (v0 + 10));

  v12 = swift_task_alloc(128);
  v0[48] = v12;
  *v12 = v0;
  v12[1] = MLDecisionTreeClassifier.init(delegate:);
  return MLDecisionTreeClassifier.init(_:targetColumn:featureColumns:parameters:)(v0[40], v0[38], v17, v19, v9, (v0 + 10));
}

{
  v2 = *(*v1 + 384);
  *(*v1 + 392) = v0;
  v2;
  if (v0)
  {
    v3 = MLDecisionTreeClassifier.init(delegate:);
  }

  else
  {
    v3 = MLDecisionTreeClassifier.init(delegate:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 288);
  v2 = *(v0 + 256);
  v3 = *(v0 + 248);
  outlined init with take of MLClassifierMetrics(*(v0 + 320), *(v0 + 240), type metadata accessor for MLDecisionTreeClassifier);
  v4 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingMetrics + v3;
  swift_beginAccess(v4, v0 + 192, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4, v1, &demangling cache variable for type metadata for AnyClassificationMetrics?);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    BUG();
  }

  v5 = *(v0 + 376);
  v22 = *(v0 + 312);
  v6 = *(v0 + 296);
  v7 = *(v0 + 288);
  v29 = *(v0 + 280);
  v26 = *(v0 + 256);
  v24 = *(v0 + 240);
  v8 = *(v0 + 248);
  outlined destroy of MLDecisionTreeClassifier.ModelParameters(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for PersistentParametersForTreeBasedMethods);
  outlined init with take of MLClassifierMetrics(v7, v6, type metadata accessor for AnyClassificationMetrics);
  v9 = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload(v6, v9, 0);
  outlined assign with take of MLClassifierMetrics(v6, v24 + *(v22 + 36));
  v10 = v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics;
  swift_beginAccess(v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics, v0 + 216, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v29, &demangling cache variable for type metadata for AnyClassificationMetrics?);

  if (__swift_getEnumTagSinglePayload(v29, 1, v26) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 280), &demangling cache variable for type metadata for AnyClassificationMetrics?);
  }

  else
  {
    v30 = *(v0 + 312);
    v11 = *(v0 + 272);
    v12 = *(v0 + 240);
    v27 = v9;
    v13 = *(v0 + 264);
    outlined init with take of MLClassifierMetrics(*(v0 + 280), v11, type metadata accessor for AnyClassificationMetrics);
    outlined init with take of MLClassifierMetrics(v11, v13, type metadata accessor for AnyClassificationMetrics);
    v14 = v12 + *(v30 + 40);
    outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for MLClassifierMetrics);
    outlined init with take of MLClassifierMetrics(v13, v14, type metadata accessor for AnyClassificationMetrics);
    swift_storeEnumTagMultiPayload(v14, v27, 0);
  }

  v15 = *(v0 + 360);
  v16 = *(v0 + 352);
  v17 = *(v0 + 328);
  v18 = *(v0 + 320);
  v20 = *(v0 + 304);
  v25 = *(v0 + 296);
  v23 = *(v0 + 288);
  v21 = *(v0 + 280);
  v28 = *(v0 + 264);
  v31 = *(v0 + 272);
  *(v0 + 376);
  v15;
  v16;
  v17;
  v18;
  v20;
  v25;
  v23;
  v21;
  v31;
  v28;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 376);
  v2 = *(v0 + 360);
  v3 = *(v0 + 352);
  v12 = *(v0 + 328);
  v11 = *(v0 + 320);
  v10 = *(v0 + 304);
  v9 = *(v0 + 296);
  v8 = *(v0 + 288);
  v7 = *(v0 + 280);
  v6 = *(v0 + 272);
  v5 = *(v0 + 264);

  outlined destroy of MLDecisionTreeClassifier.ModelParameters(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for PersistentParametersForTreeBasedMethods);
  v1;
  v2;
  v3;
  v12;
  v11;
  v10;
  v9;
  v8;
  v7;
  v6;
  v5;
  return (*(v0 + 8))();
}

uint64_t outlined init with take of DataFrame?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t partial apply for closure #1 in MLDecisionTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  type metadata accessor for AnyTreeClassifierModel(0);
  v2 = swift_task_alloc(48);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLDecisionTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(a1);
}

uint64_t partial apply for closure #1 in MLDecisionTreeClassifier.init(checkpoint:)(uint64_t a1)
{
  type metadata accessor for AnyTreeClassifierModel(0);
  v2 = swift_task_alloc(48);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLRandomForestClassifier.init(checkpoint:)(a1);
}

id sub_2316E2()
{
  v1 = v0;
  result = MLDecisionTreeClassifier.model.getter();
  *v1 = result;
  return result;
}

void *initializeBufferWithCopyOfBuffer for MLDecisionTreeClassifier(void *a1, void *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) == 0)
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

    v8 = type metadata accessor for AnyTreeClassifierModel(0);
    v9 = *(v8 + 24);
    v10 = type metadata accessor for BaseTreeClassifierModel(0);
    (*(*(v10 - 8) + 16))(a1 + v9, a2 + v9, v10);
    v11 = *(v8 + 28);
    v12 = *(a2 + v11 + 8);
    *(a1 + v11) = *(a2 + v11);
    *(a1 + v11 + 8) = v12;
    v13 = a3[5];
    v52 = *(a2 + v13);
    *(a1 + v13) = v52;
    v14 = a3[6];
    *(a1 + v14) = *(a2 + v14);
    *(a1 + v14 + 8) = *(a2 + v14 + 8);
    *(a1 + a3[7]) = *(a2 + a3[7]);
    v15 = a3[8];
    v62 = a1 + v15;
    v57 = a2 + v15;
    v16 = (a2 + v15 + 8);
    v59 = (a1 + v15 + 8);
    *(a1 + v15) = *(a2 + v15);
    v17 = *(a2 + v15 + 32);

    v52;

    if (v17)
    {
      *(v62 + 4) = v17;
      (**(v17 - 8))(v59, v16, v17);
    }

    else
    {
      v18 = *v16;
      v59[1] = v16[1];
      *v59 = v18;
    }

    *(v62 + 40) = *(v57 + 40);
    *(v62 + 7) = *(v57 + 7);
    v19 = a3[9];
    v20 = (a1 + v19);
    v21 = (a2 + v19);
    v58 = type metadata accessor for MLClassifierMetrics.Contents(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v21, v58);
    if (EnumCaseMultiPayload == 2)
    {
      v27 = v20;
      v28 = *v21;
      swift_errorRetain(*v21);
      *v27 = v28;
      v20 = v27;
      EnumCaseMultiPayload = 2;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *v20 = *v21;
      v53 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v60 = v20;
      v23 = v53[5];
      v51 = v60 + v23;
      v24 = type metadata accessor for DataFrame(0);
      v54 = *(*(v24 - 8) + 16);
      v25 = v21 + v23;
      v20 = v60;
      v54(v51, v25, v24);
      v26 = v24;
      EnumCaseMultiPayload = 1;
      v54(v60 + v53[6], v21 + v53[6], v26);
    }

    else
    {
      v63 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v29 = swift_getEnumCaseMultiPayload(v21, v63);
      v61 = v29 == 1;
      v30 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v29 == 1)
      {
        v30 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v31 = __swift_instantiateConcreteTypeFromMangledName(v30);
      (*(*(v31 - 8) + 16))(v20, v21, v31);
      swift_storeEnumTagMultiPayload(v20, v63, v61);
    }

    swift_storeEnumTagMultiPayload(v20, v58, EnumCaseMultiPayload);
    v32 = a3[10];
    v33 = (v4 + v32);
    v34 = (a2 + v32);
    v35 = swift_getEnumCaseMultiPayload(v34, v58);
    if (v35 == 2)
    {
      v40 = *v34;
      swift_errorRetain(v40);
      *v33 = v40;
      v50 = 2;
    }

    else
    {
      if (v35 != 1)
      {
        v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v45 = swift_getEnumCaseMultiPayload(v34, v44);
        v46 = v45 == 1;
        v47 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v45 == 1)
        {
          v47 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v48 = __swift_instantiateConcreteTypeFromMangledName(v47);
        (*(*(v48 - 8) + 16))(v33, v34, v48);
        swift_storeEnumTagMultiPayload(v33, v44, v46);
        v42 = v33;
        v43 = v58;
        v41 = 0;
        goto LABEL_24;
      }

      *v33 = *v34;
      v56 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v36 = *(v56 + 20);
      v64 = v33 + v36;
      v37 = type metadata accessor for DataFrame(0);
      v38 = v34 + v36;
      v39 = *(*(v37 - 8) + 16);
      v39(v64, v38, v37);
      v39(v33 + *(v56 + 24), v34 + *(v56 + 24), v37);
      v50 = 1;
    }

    v41 = v50;
    v42 = v33;
    v43 = v58;
LABEL_24:
    swift_storeEnumTagMultiPayload(v42, v43, v41);
    return v4;
  }

  v7 = *a2;
  *v4 = *a2;
  v4 = (v7 + ((v5 + 16) & ~v5));

  return v4;
}

uint64_t destroy for MLDecisionTreeClassifier(void *a1, int *a2)
{
  a1[1];
  v4 = a1[2];
  if (v4)
  {
    v4;
    a1[4];
  }

  v5 = type metadata accessor for AnyTreeClassifierModel(0);
  v6 = a1 + *(v5 + 24);
  v7 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v7 - 8) + 8))(v6, v7);
  *(a1 + *(v5 + 28));

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

void *initializeWithCopy for MLDecisionTreeClassifier(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v3 = a2[2];

  if (v3)
  {
    a1[2] = v3;
    a1[3] = a2[3];
    a1[4] = a2[4];
  }

  else
  {
    a1[4] = a2[4];
    *(a1 + 1) = *(a2 + 1);
  }

  v4 = type metadata accessor for AnyTreeClassifierModel(0);
  v5 = *(v4 + 24);
  v6 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v6 - 8) + 16))(a1 + v5, a2 + v5, v6);
  v7 = *(v4 + 28);
  v8 = *(a2 + v7 + 8);
  *(a1 + v7) = *(a2 + v7);
  *(a1 + v7 + 8) = v8;
  v9 = a3[5];
  v10 = *(a2 + v9);
  *(a1 + v9) = v10;
  v11 = a3[6];
  *(a1 + v11) = *(a2 + v11);
  *(a1 + v11 + 8) = *(a2 + v11 + 8);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v12 = a3[8];
  v54 = a1 + v12;
  v45 = a2 + v12;
  v13 = (a2 + v12 + 8);
  v47 = (a1 + v12 + 8);
  *(a1 + v12) = *(a2 + v12);
  v14 = *(a2 + v12 + 32);

  v10;

  if (v14)
  {
    *(v54 + 4) = v14;
    (**(v14 - 8))(v47, v13, v14);
  }

  else
  {
    v15 = *v13;
    v47[1] = v13[1];
    *v47 = v15;
  }

  *(v54 + 40) = *(v45 + 40);
  *(v54 + 7) = *(v45 + 7);
  v16 = a3[9];
  v17 = (a1 + v16);
  v18 = (a2 + v16);
  v46 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v18, v46);
  if (EnumCaseMultiPayload == 2)
  {
    v24 = *v18;
    swift_errorRetain(*v18);
    *v17 = v24;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    *v17 = *v18;
    v55 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v20 = *(v55 + 20);
    v48 = v17 + v20;
    v21 = type metadata accessor for DataFrame(0);
    v22 = v18 + v20;
    v23 = *(*(v21 - 8) + 16);
    v23(v48, v22, v21);
    v23(v17 + *(v55 + 24), v18 + *(v55 + 24), v21);
  }

  else
  {
    v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v25 = swift_getEnumCaseMultiPayload(v18, v56);
    v26 = v25 == 1;
    v27 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v25 == 1)
    {
      v27 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v28 = __swift_instantiateConcreteTypeFromMangledName(v27);
    (*(*(v28 - 8) + 16))(v17, v18, v28);
    swift_storeEnumTagMultiPayload(v17, v56, v26);
  }

  swift_storeEnumTagMultiPayload(v17, v46, EnumCaseMultiPayload);
  v29 = a3[10];
  v30 = (a1 + v29);
  v31 = (a2 + v29);
  v32 = swift_getEnumCaseMultiPayload(a2 + v29, v46);
  if (v32 == 2)
  {
    v37 = *v31;
    swift_errorRetain(v37);
    *v30 = v37;
  }

  else if (v32 == 1)
  {
    *v30 = *v31;
    v50 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v33 = *(v50 + 20);
    v52 = v30 + v33;
    v34 = type metadata accessor for DataFrame(0);
    v35 = v31 + v33;
    v36 = *(*(v34 - 8) + 16);
    v36(v52, v35, v34);
    v36(v30 + *(v50 + 24), v31 + *(v50 + 24), v34);
  }

  else
  {
    v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v39 = swift_getEnumCaseMultiPayload(v31, v38);
    v53 = v31;
    v40 = v39 == 1;
    v41 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v39 == 1)
    {
      v41 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v42 = __swift_instantiateConcreteTypeFromMangledName(v41);
    (*(*(v42 - 8) + 16))(v30, v53, v42);
    swift_storeEnumTagMultiPayload(v30, v38, v40);
  }

  swift_storeEnumTagMultiPayload(v30, v46, v32);
  return a1;
}

void *assignWithCopy for MLDecisionTreeClassifier(void *a1, void *a2, int *a3)
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
      v9 = a2;
      a1[3] = a2[3];
      v10 = a1[4];
      a1[4] = a2[4];

      v10;
      goto LABEL_9;
    }

    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>((a1 + 2), &demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer);
    *v5 = *v6;
    a1[4] = a2[4];
  }

  else
  {
    if (v8)
    {
      a1[2] = v8;
      v9 = a2;
      a1[3] = a2[3];
      a1[4] = a2[4];

      goto LABEL_9;
    }

    a1[4] = a2[4];
    *v5 = *v6;
  }

  v9 = a2;
LABEL_9:
  v11 = type metadata accessor for AnyTreeClassifierModel(0);
  v12 = *(v11 + 24);
  v13 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v13 - 8) + 24))(a1 + v12, &v9[v12], v13);
  v14 = *(v11 + 28);
  v15 = v9[v14 + 8];
  v16 = *(a1 + v14);
  *(a1 + v14) = *&v9[v14];
  *(a1 + v14 + 8) = v15;

  v16;
  v17 = a3[5];
  v18 = *&v9[v17];
  v19 = *(a1 + v17);
  *(a1 + v17) = v18;
  v18;

  v20 = a3[6];
  *(a1 + v20) = *&v9[v20];
  v21 = *(a1 + v20 + 8);
  *(a1 + v20 + 8) = *&v9[v20 + 8];

  v21;
  v22 = a3[7];
  v23 = *(a1 + v22);
  *(a1 + v22) = *&v9[v22];

  v23;
  v24 = a3[8];
  v25 = (a1 + v24);
  v26 = v9;
  v27 = &v9[v24];
  v28 = v26 + v24 + 8;
  v29 = (a1 + v24 + 8);
  *(a1 + v24) = *(v26 + v24);
  v30 = *(v26 + v24 + 32);
  if (*(a1 + v24 + 32))
  {
    if (v30)
    {
      __swift_assign_boxed_opaque_existential_0((a1 + v24 + 8), v28);
      goto LABEL_16;
    }

    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v24 + 8));
  }

  else if (v30)
  {
    v25[4] = v30;
    (**(v30 - 8))(v29, v28);
    goto LABEL_16;
  }

  v31 = *v28;
  v29[1] = *(v28 + 16);
  *v29 = v31;
LABEL_16:
  v25[5] = *(v27 + 5);
  v25[6] = *(v27 + 6);
  v25[7] = *(v27 + 7);
  v32 = a2;
  if (a1 != a2)
  {
    v33 = a3[9];
    v34 = (a1 + v33);
    v35 = (a2 + v33);
    outlined destroy of MLActivityClassifier.ModelParameters(v34, type metadata accessor for MLClassifierMetrics.Contents);
    v36 = type metadata accessor for MLClassifierMetrics.Contents(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v35, v36);
    v61 = EnumCaseMultiPayload;
    if (EnumCaseMultiPayload == 2)
    {
      v41 = *v35;
      swift_errorRetain(v41);
      *v34 = v41;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *v34 = *v35;
      v66 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v63 = v36;
      v38 = *(v66 + 20);
      v59 = v34 + v38;
      v60 = type metadata accessor for DataFrame(0);
      v39 = *(*(v60 - 8) + 16);
      v40 = v35 + v38;
      v36 = v63;
      v39(v59, v40, v60);
      v39(v34 + *(v66 + 24), v35 + *(v66 + 24), v60);
      v32 = a2;
    }

    else
    {
      v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v42 = swift_getEnumCaseMultiPayload(v35, v64);
      v67 = v42 == 1;
      v43 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v42 == 1)
      {
        v43 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v44 = __swift_instantiateConcreteTypeFromMangledName(v43);
      (*(*(v44 - 8) + 16))(v34, v35, v44);
      swift_storeEnumTagMultiPayload(v34, v64, v67);
    }

    swift_storeEnumTagMultiPayload(v34, v36, v61);
    v45 = a3[10];
    v46 = (a1 + v45);
    v47 = (v32 + v45);
    outlined destroy of MLActivityClassifier.ModelParameters(a1 + v45, type metadata accessor for MLClassifierMetrics.Contents);
    v48 = swift_getEnumCaseMultiPayload(v47, v36);
    if (v48 == 2)
    {
      v53 = *v47;
      swift_errorRetain(v53);
      *v46 = v53;
    }

    else
    {
      v70 = v48;
      if (v48 == 1)
      {
        *v46 = *v47;
        v62 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
        v49 = *(v62 + 20);
        v68 = v46 + v49;
        v65 = v36;
        v50 = type metadata accessor for DataFrame(0);
        v72 = *(*(v50 - 8) + 16);
        v51 = v47 + v49;
        v48 = 1;
        v72(v68, v51, v50);
        v52 = v50;
        v36 = v65;
        v72(v46 + *(v62 + 24), v47 + *(v62 + 24), v52);
      }

      else
      {
        v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v54 = swift_getEnumCaseMultiPayload(v47, v73);
        v55 = v54 == 1;
        v56 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v54 == 1)
        {
          v56 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v57 = __swift_instantiateConcreteTypeFromMangledName(v56);
        (*(*(v57 - 8) + 16))(v46, v47, v57);
        swift_storeEnumTagMultiPayload(v46, v73, v55);
        v48 = v70;
      }
    }

    swift_storeEnumTagMultiPayload(v46, v36, v48);
  }

  return a1;
}

uint64_t initializeWithTake for MLDecisionTreeClassifier(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v5 = type metadata accessor for AnyTreeClassifierModel(0);
  v6 = *(v5 + 24);
  v7 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  v8 = *(v5 + 28);
  *(a1 + v8 + 8) = *(a2 + v8 + 8);
  *(a1 + v8) = *(a2 + v8);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v9 = a3[8];
  v10 = *(a2 + v9);
  v11 = *(a2 + v9 + 16);
  v12 = *(a2 + v9 + 32);
  *(a1 + v9 + 48) = *(a2 + v9 + 48);
  *(a1 + v9 + 32) = v12;
  *(a1 + v9 + 16) = v11;
  *(a1 + v9) = v10;
  v51 = a3;
  v13 = a3[9];
  v14 = (v13 + a1);
  v15 = (a2 + v13);
  v16 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v15, v16);
  if (EnumCaseMultiPayload == 1)
  {
    *v14 = *v15;
    v49 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v25 = *(v49 + 20);
    v50 = &v14[v25];
    v55 = v16;
    v26 = type metadata accessor for DataFrame(0);
    v27 = &v15[v25];
    v28 = *(*(v26 - 8) + 32);
    v28(v50, v27, v26);
    v29 = v26;
    v16 = v55;
    v28(&v14[*(v49 + 24)], &v15[*(v49 + 24)], v29);
    v24 = 1;
    v22 = v14;
    v23 = v55;
LABEL_7:
    swift_storeEnumTagMultiPayload(v22, v23, v24);
    goto LABEL_9;
  }

  if (!EnumCaseMultiPayload)
  {
    v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v18 = swift_getEnumCaseMultiPayload(v15, v54);
    v19 = v18 == 1;
    v20 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v18 == 1)
    {
      v20 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v21 = __swift_instantiateConcreteTypeFromMangledName(v20);
    (*(*(v21 - 8) + 32))(v14, v15, v21);
    swift_storeEnumTagMultiPayload(v14, v54, v19);
    v22 = v14;
    v23 = v16;
    v24 = 0;
    goto LABEL_7;
  }

  memcpy(v14, v15, *(*(v16 - 8) + 64));
LABEL_9:
  v30 = v51[10];
  v31 = (a1 + v30);
  v32 = (v30 + a2);
  v33 = swift_getEnumCaseMultiPayload(v32, v16);
  if (v33 == 1)
  {
    *v31 = *v32;
    v43 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v56 = v16;
    v44 = *(v43 + 20);
    v52 = &v31[v44];
    v45 = type metadata accessor for DataFrame(0);
    v46 = &v32[v44];
    v47 = *(*(v45 - 8) + 32);
    v47(v52, v46, v45);
    v47(&v31[*(v43 + 24)], &v32[*(v43 + 24)], v45);
    v42 = 1;
    v40 = v31;
    v41 = v56;
  }

  else
  {
    if (v33)
    {
      memcpy(v31, v32, *(*(v16 - 8) + 64));
      return a1;
    }

    v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v35 = swift_getEnumCaseMultiPayload(v32, v34);
    v36 = v16;
    v37 = v35 == 1;
    v38 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v35 == 1)
    {
      v38 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v39 = __swift_instantiateConcreteTypeFromMangledName(v38);
    (*(*(v39 - 8) + 32))(v31, v32, v39);
    swift_storeEnumTagMultiPayload(v31, v34, v37);
    v40 = v31;
    v41 = v36;
    v42 = 0;
  }

  swift_storeEnumTagMultiPayload(v40, v41, v42);
  return a1;
}

void *assignWithTake for MLDecisionTreeClassifier(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];
  v4;
  v5 = a1 + 2;
  v6 = a2 + 2;
  v7 = a1[2];
  if (v7)
  {
    v8 = a2[2];
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

  else
  {
    a1[4] = a2[4];
    *v5 = *v6;
  }

  v10 = type metadata accessor for AnyTreeClassifierModel(0);
  v11 = *(v10 + 24);
  v12 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v12 - 8) + 40))(a1 + v11, a2 + v11, v12);
  v13 = *(v10 + 28);
  v14 = *(a2 + v13 + 8);
  v15 = *(a1 + v13);
  *(a1 + v13) = *(a2 + v13);
  *(a1 + v13 + 8) = v14;
  v15;
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
  *(v23 + 7) = *(v24 + 7);
  v28 = a2;
  if (a1 == a2)
  {
    return a1;
  }

  v29 = a3[9];
  v30 = (a1 + v29);
  v31 = (a2 + v29);
  outlined destroy of MLActivityClassifier.ModelParameters(v30, type metadata accessor for MLClassifierMetrics.Contents);
  v71 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v31, v71);
  if (EnumCaseMultiPayload == 1)
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
    v38 = v71;
    v39 = v71;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v46 = v31;
      v38 = v71;
      memcpy(v30, v46, *(*(v71 - 8) + 64));
      goto LABEL_17;
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
    v38 = v71;
    v39 = v71;
    v40 = 0;
  }

  swift_storeEnumTagMultiPayload(v37, v39, v40);
LABEL_17:
  v47 = a3[10];
  v48 = a1 + v47;
  v49 = v28 + v47;
  outlined destroy of MLActivityClassifier.ModelParameters(a1 + v47, type metadata accessor for MLClassifierMetrics.Contents);
  v50 = swift_getEnumCaseMultiPayload(v49, v38);
  if (v50 == 1)
  {
    *v48 = *v49;
    v70 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v59 = *(v70 + 20);
    v68 = &v48[v59];
    v60 = type metadata accessor for DataFrame(0);
    v61 = &v49[v59];
    v62 = *(*(v60 - 8) + 32);
    v62(v68, v61, v60);
    v62(&v48[*(v70 + 24)], &v49[*(v70 + 24)], v60);
    v58 = 1;
    v56 = v48;
    v57 = v71;
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
    v57 = v71;
    v58 = 0;
  }

  swift_storeEnumTagMultiPayload(v56, v57, v58);
  return a1;
}

uint64_t sub_232CDB(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for AnyTreeClassifierModel(0);
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

uint64_t sub_232D68(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = type metadata accessor for AnyTreeClassifierModel(0);
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

uint64_t type metadata completion function for MLDecisionTreeClassifier(uint64_t a1)
{
  result = type metadata accessor for AnyTreeClassifierModel(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    v4[1] = &value witness table for Builtin.UnknownObject + 64;
    v4[2] = &unk_346A40;
    v4[3] = &value witness table for Builtin.BridgeObject + 64;
    v4[4] = &unk_346A58;
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

uint64_t sub_232E8D()
{
  swift_unknownObjectRelease(*(v0 + 16));

  return swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in static MLDecisionTreeClassifier.handleResult(_:session:fulfill:)(uint64_t a1)
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
  return closure #1 in static MLDecisionTreeClassifier.handleResult(_:session:fulfill:)(a1, v3, v4, v8, v9, v5);
}

void *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy11TabularData6ColumnVy6CoreML13MLShapedArrayVySfGGAJySSGG_18CreateMLComponents16AnnotatedFeatureVyANSSGs5NeverOTg503_s6i4ML13kl13VySfGSgSSSg18m14MLComponents16opt21ADSSGIgngr_AE_AFtAJs5q43OIegnrzr_TR03_s8e75ML17MLSoundClassifierV10g64SourceO17annotatedFeaturesSay0A12MLComponents16gh4Vy04a4B013cD30tU36GSSGGSgyKFAnMSg_SSSgtXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v112 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>);
  v113 = *(v112 - 8);
  v1 = *(v113 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v115 = &v103;
  v4 = alloca(v1);
  v5 = alloca(v1);
  v116 = &v103;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v104 = &v103;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v103 = &v103;
  v11 = alloca(v6);
  v12 = alloca(v6);
  v128 = &v103;
  v13 = alloca(v6);
  v14 = alloca(v6);
  v106 = &v103;
  v15 = alloca(v6);
  v16 = alloca(v6);
  v114 = &v103;
  v17 = alloca(v6);
  v18 = alloca(v6);
  v120 = &v103;
  v111 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLShapedArray<Float>?, String?));
  v19 = *(*(v111 - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v105 = &v103;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v107 = &v103;
  v24 = alloca(v19);
  v25 = alloca(v19);
  v108 = &v103;
  v119 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  i = *(v119 - 8);
  v26 = *(i + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v118 = &v103;
  v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Float>>);
  v30 = *(v29 - 8);
  v123 = v29;
  v124 = v30;
  v31 = *(v30 + 8);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v121 = &v103;
  v133 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<Column<MLShapedArray<Float>>, Column<String>>);
  v34 = *(*(v133 - 8) + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  *&v130 = &v103;
  v117 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<Column<MLShapedArray<Float>>, Column<String>>.Iterator);
  v37 = *(*(v117 - 8) + 64);
  v38 = alloca(v37);
  v39 = alloca(v37);
  v132 = &v103;
  v109 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<MLShapedArray<Float>> and conformance Column<A>, &demangling cache variable for type metadata for Column<MLShapedArray<Float>>, &protocol conformance descriptor for Column<A>);
  v110 = a1;
  v40 = dispatch thunk of Sequence.underestimatedCount.getter(v29, v109);
  v122 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  v41 = v119;
  v42 = dispatch thunk of Sequence.underestimatedCount.getter(v119, v122);
  if (v42 < v40)
  {
    v40 = v42;
  }

  v131 = _swiftEmptyArrayStorage;
  v43 = 0;
  if (v40 > 0)
  {
    v43 = v40;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43, 0);
  v127 = v131;
  v44 = v130;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v110, v130, &demangling cache variable for type metadata for Zip2Sequence<Column<MLShapedArray<Float>>, Column<String>>);
  v45 = v44;
  v46 = v123;
  v124[4](v121, v45, v123);
  v47 = v46;
  v48 = v132;
  dispatch thunk of Sequence.makeIterator()(v47, v109);
  (*(i + 32))(v118, v130 + *(v133 + 52), v41);
  v124 = (v48 + *(v117 + 52));
  dispatch thunk of Sequence.makeIterator()(v41, v122);
  v121 = v40;
  if (v40 < 0)
  {
    BUG();
  }

  v49 = v48;
  if (v40)
  {
    v133 = v48 + *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<MLShapedArray<Float>>>) + 36);
    v50 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<MLShapedArray<Float>> and conformance Column<A>, &demangling cache variable for type metadata for Column<MLShapedArray<Float>>, &protocol conformance descriptor for Column<A>);
    v122 = v50;
    while (1)
    {
      v51 = v123;
      v52 = v50;
      dispatch thunk of Collection.endIndex.getter(v123, v50);
      if (*v133 == v125)
      {
        goto LABEL_33;
      }

      *&v130 = dispatch thunk of Collection.subscript.read(&v125, v133, v51, v52);
      v53 = v52;
      v54 = v103;
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v55, v103, &demangling cache variable for type metadata for MLShapedArray<Float>?);
      (v130)(&v125, 0);
      dispatch thunk of Collection.formIndex(after:)(v133, v51, v53);
      outlined init with take of DataFrame?(v54, v128, &demangling cache variable for type metadata for MLShapedArray<Float>?);
      v56 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<String>>) + 36);
      v57 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
      v58 = v124;
      v59 = v119;
      v60 = v57;
      dispatch thunk of Collection.endIndex.getter(v119, v57);
      if (*(v58 + v56) == v125)
      {
        break;
      }

      v61 = v58 + v56;
      i = v60;
      v118 = dispatch thunk of Collection.subscript.read(&v125, v61, v59, v60);
      *&v130 = *v62;
      v63 = v62[1];

      (v118)(&v125, 0);
      dispatch thunk of Collection.formIndex(after:)(v61, v59, i);
      v64 = *(v111 + 48);
      v65 = v105;
      outlined init with take of DataFrame?(v128, v105, &demangling cache variable for type metadata for MLShapedArray<Float>?);
      *(v65 + v64) = v130;
      *(v65 + v64 + 8) = v63;
      v66 = v104;
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v65, v104, &demangling cache variable for type metadata for MLShapedArray<Float>?);
      v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
      if (__swift_getEnumTagSinglePayload(v66, 1, v67) == 1)
      {
        BUG();
      }

      v68 = v130;
      if (!v63)
      {
        v68 = 0;
      }

      v69 = v63;
      if (!v63)
      {
        v69 = 0xE000000000000000;
      }

      v125 = v68;
      v126 = v69;

      v70 = v115;
      AnnotatedFeature.init(feature:annotation:)(v66, &v125, v67, &type metadata for String);
      outlined destroy of Any?(v65, &demangling cache variable for type metadata for (MLShapedArray<Float>?, String?));
      v71 = v70;
      v72 = v127;
      v131 = v127;
      v73 = v127[2];
      if (v127[3] >> 1 <= v73)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v127[3] >= 2uLL, v73 + 1, 1);
        v71 = v115;
        v72 = v131;
      }

      v72[2] = v73 + 1;
      v74 = *(v113 + 80);
      v127 = v72;
      (*(v113 + 32))(v72 + ((v74 + 32) & ~v74) + *(v113 + 72) * v73, v71, v112);
      v75 = v121 == (&dword_0 + 1);
      v121 = (v121 - 1);
      v49 = v132;
      v50 = v122;
      if (v75)
      {
        goto LABEL_18;
      }
    }

    outlined destroy of Any?(v128, &demangling cache variable for type metadata for MLShapedArray<Float>?);
LABEL_33:
    BUG();
  }

LABEL_18:
  v133 = v49 + *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<MLShapedArray<Float>>>) + 36);
  v76 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<MLShapedArray<Float>> and conformance Column<A>, &demangling cache variable for type metadata for Column<MLShapedArray<Float>>, &protocol conformance descriptor for Column<A>);
  v77 = v123;
  for (i = v76; ; v76 = i)
  {
    v78 = v77;
    v79 = v76;
    dispatch thunk of Collection.endIndex.getter(v77, v76);
    if (*v133 == v125)
    {
      break;
    }

    v80 = dispatch thunk of Collection.subscript.read(&v125, v133, v78, v79);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v81, v114, &demangling cache variable for type metadata for MLShapedArray<Float>?);
    v80(&v125, 0);
    dispatch thunk of Collection.formIndex(after:)(v133, v78, v79);
    outlined init with take of DataFrame?(v114, v120, &demangling cache variable for type metadata for MLShapedArray<Float>?);
    v82 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<String>>) + 36);
    v83 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
    v84 = v124;
    v85 = v119;
    dispatch thunk of Collection.endIndex.getter(v119, v83);
    if (*(v84 + v82) == v125)
    {
      outlined destroy of Any?(v120, &demangling cache variable for type metadata for MLShapedArray<Float>?);
      break;
    }

    v86 = v84 + v82;
    v128 = dispatch thunk of Collection.subscript.read(&v125, v86, v85, v83);
    v130 = *v87;

    (v128)(&v125, 0);
    dispatch thunk of Collection.formIndex(after:)(v86, v85, v83);
    v88 = v111;
    v89 = *(v111 + 48);
    v90 = v107;
    outlined init with take of DataFrame?(v120, v107, &demangling cache variable for type metadata for MLShapedArray<Float>?);
    *(v90 + v89) = v130;
    v91 = v108;
    outlined init with take of DataFrame?(v90, v108, &demangling cache variable for type metadata for (MLShapedArray<Float>?, String?));
    v92 = *(v88 + 48);
    v93 = *(v91 + v92);
    v94 = *(v91 + v92 + 8);
    v95 = v106;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v91, v106, &demangling cache variable for type metadata for MLShapedArray<Float>?);
    *&v130 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
    if (__swift_getEnumTagSinglePayload(v95, 1, v130) == 1)
    {
      BUG();
    }

    if (!v94)
    {
      v93 = 0;
    }

    v96 = v94;
    if (!v94)
    {
      v96 = 0xE000000000000000;
    }

    v125 = v93;
    v126 = v96;

    v97 = v116;
    AnnotatedFeature.init(feature:annotation:)(v95, &v125, v130, &type metadata for String);
    outlined destroy of Any?(v91, &demangling cache variable for type metadata for (MLShapedArray<Float>?, String?));
    v98 = v127;
    v131 = v127;
    v99 = v127[2];
    if (v127[3] >> 1 <= v99)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v127[3] >= 2uLL, v99 + 1, 1);
      v97 = v116;
      v98 = v131;
    }

    v98[2] = v99 + 1;
    v100 = *(v113 + 80);
    v127 = v98;
    (*(v113 + 32))(v98 + ((v100 + 32) & ~v100) + *(v113 + 72) * v99, v97, v112);
    v77 = v123;
  }

  v101 = v132;
  *(v132 + *(v117 + 56)) = 1;
  outlined destroy of Any?(v101, &demangling cache variable for type metadata for Zip2Sequence<Column<MLShapedArray<Float>>, Column<String>>.Iterator);
  return v127;
}

uint64_t specialized Collection.first.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v1 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  dispatch thunk of Collection.startIndex.getter(v0, v1);
  dispatch thunk of Collection.endIndex.getter(v0, v1);
  if (v7[0] == v6[0])
  {
    return 0;
  }

  v3 = dispatch thunk of Collection.subscript.read(v6, v7, v0, v1);
  v2 = *v4;

  v3(v6, 0);
  return v2;
}

{
  return specialized Collection.first.getter(&demangling cache variable for type metadata for Column<[Int]>, &lazy protocol witness table cache variable for type Column<[Int]> and conformance Column<A>);
}

{
  return specialized Collection.first.getter(&demangling cache variable for type metadata for Column<[Int32]>, &lazy protocol witness table cache variable for type Column<[Int32]> and conformance Column<A>);
}

{
  return specialized Collection.first.getter(&demangling cache variable for type metadata for Column<[UInt8]>, &lazy protocol witness table cache variable for type Column<[UInt8]> and conformance Column<A>);
}

{
  return specialized Collection.first.getter(&demangling cache variable for type metadata for Column<MLShapedArray<Int32>>, &lazy protocol witness table cache variable for type Column<MLShapedArray<Int32>> and conformance Column<A>, &demangling cache variable for type metadata for MLShapedArray<Int32>?);
}

{
  return specialized Collection.first.getter(&demangling cache variable for type metadata for Column<[Float]>, &lazy protocol witness table cache variable for type Column<[Float]> and conformance Column<A>);
}

{
  return specialized Collection.first.getter(&demangling cache variable for type metadata for Column<MLShapedArray<Float>>, &lazy protocol witness table cache variable for type Column<MLShapedArray<Float>> and conformance Column<A>, &demangling cache variable for type metadata for MLShapedArray<Float>?);
}

{
  return specialized Collection.first.getter(&demangling cache variable for type metadata for Column<[Double]>, &lazy protocol witness table cache variable for type Column<[Double]> and conformance Column<A>);
}

{
  return specialized Collection.first.getter(&demangling cache variable for type metadata for Column<MLShapedArray<Double>>, &lazy protocol witness table cache variable for type Column<MLShapedArray<Double>> and conformance Column<A>, &demangling cache variable for type metadata for MLShapedArray<Double>?);
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v5 = v4;
  if (v3)
  {
    (*(*(v4 - 8) + 16))(v2, ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)) + a1, v4);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v2, v6, 1, v5);
}

{
  v24 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: String, value: MLProgram.Block));
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v23 = &v23;
  v6 = specialized Dictionary.startIndex.getter(a1);
  v8 = v7;
  v10 = v9;
  v11 = specialized Dictionary.Keys.endIndex.getter(a1);
  if (v10 & 1) != 0 || (v13)
  {
    BUG();
  }

  if (v8 != v12)
  {
    BUG();
  }

  if (v6 == v11)
  {
    return __swift_storeEnumTagSinglePayload(v24, 1, 1, v2);
  }

  v25 = v2;
  v15 = *(v2 + 48);
  v16 = v23;
  v17 = v23 + v15;
  v18 = specialized Dictionary.subscript.getter(v17, v6, v8, 0, a1);
  *v16 = v18;
  v16[1] = v19;
  v20 = v24;
  *v24 = v18;
  v20[1] = v19;
  v21 = v20 + *(v25 + 48);
  v22 = type metadata accessor for MLProgram.Block(0);
  (*(*(v22 - 8) + 16))(v21, v17, v22);

  outlined destroy of Any?(v16, &demangling cache variable for type metadata for (key: String, value: MLProgram.Block));
  return __swift_storeEnumTagSinglePayload(v20, 0, 1, v25);
}

{
  v1 = specialized _NativeDictionary.startIndex.getter(a1);
  v3 = v2;
  v5 = v4;
  v6 = specialized Dictionary.Keys.endIndex.getter(a1);
  if (v5 & 1) != 0 || (v8)
  {
    BUG();
  }

  if (v3 != v7)
  {
    BUG();
  }

  if (v1 == v6)
  {
    return 0;
  }

  else
  {
    return specialized Dictionary.Keys.subscript.getter(v1, v3, 0, a1);
  }
}

{
  if (*(a1 + 16))
  {
    return *(a1 + 32);
  }

  else
  {
    return 0;
  }
}

{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = 0;
  v5 = type metadata accessor for FeatureDescription(0);
  v6 = v5;
  if (v3)
  {
    (*(*(v5 - 8) + 16))(v2, ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)) + a1, v5);
  }

  else
  {
    v4 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v2, v4, 1, v6);
}

{
  v24 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: String, value: Tensor));
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v23 = &v23;
  v6 = specialized Dictionary.startIndex.getter(a1);
  v8 = v7;
  v10 = v9;
  v11 = specialized Dictionary.Keys.endIndex.getter(a1);
  if (v10 & 1) != 0 || (v13)
  {
    BUG();
  }

  if (v8 != v12)
  {
    BUG();
  }

  if (v6 == v11)
  {
    return __swift_storeEnumTagSinglePayload(v24, 1, 1, v2);
  }

  v25 = v2;
  v15 = *(v2 + 48);
  v16 = v23;
  v17 = v23 + v15;
  v18 = specialized Dictionary.subscript.getter(v17, v6, v8, 0, a1);
  *v16 = v18;
  v16[1] = v19;
  v20 = v24;
  *v24 = v18;
  v20[1] = v19;
  v21 = v20 + *(v25 + 48);
  v22 = type metadata accessor for Tensor(0);
  (*(*(v22 - 8) + 16))(v21, v17, v22);

  outlined destroy of Any?(v16, &demangling cache variable for type metadata for (key: String, value: Tensor));
  return __swift_storeEnumTagSinglePayload(v20, 0, 1, v25);
}

_OWORD *specialized Collection.first.getter(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return outlined init with copy of Any(a1 + 32, result);
  }

  result[1] = 0;
  *result = 0;
  return result;
}

uint64_t specialized Collection.first.getter(uint64_t *a1, uint64_t *a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(a1);
  v3 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(a2, a1, &protocol conformance descriptor for Column<A>);
  dispatch thunk of Collection.startIndex.getter(v2, v3);
  dispatch thunk of Collection.endIndex.getter(v2, v3);
  if (v9[0] == v8[0])
  {
    return 2;
  }

  v5 = dispatch thunk of Collection.subscript.read(v8, v9, v2, v3);
  v4 = *v6;

  v5(v8, 0);
  return v4;
}

uint64_t specialized Collection.first.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v16 = a3;
  v17 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledName(a1);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(a2, a1, &protocol conformance descriptor for Column<A>);
  dispatch thunk of Collection.startIndex.getter(v4, v5);
  dispatch thunk of Collection.endIndex.getter(v4, v5);
  if (v15 == v14[0])
  {
    v6 = 1;
    v7 = v17;
    v8 = v16;
  }

  else
  {
    v9 = dispatch thunk of Collection.subscript.read(v14, &v15, v4, v5);
    v7 = v17;
    v10 = v16;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v11, v17, v16);
    v6 = 0;
    v9(v14, 0);
    v8 = v10;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledName(v8);
  return __swift_storeEnumTagSinglePayload(v7, v6, 1, v12);
}

id specialized Collection.first.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLMultiArray>);
  v1 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<MLMultiArray> and conformance Column<A>, &demangling cache variable for type metadata for Column<MLMultiArray>, &protocol conformance descriptor for Column<A>);
  dispatch thunk of Collection.startIndex.getter(v0, v1);
  dispatch thunk of Collection.endIndex.getter(v0, v1);
  if (v7[0] == v6[0])
  {
    return &dword_0 + 2;
  }

  v3 = dispatch thunk of Collection.subscript.read(v6, v7, v0, v1);
  v2 = *v4;
  *v4;
  v3(v6, 0);
  return v2;
}

Swift::OpaquePointer_optional __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLSoundClassifier.DataSource.annotatedFeatures()()
{
  v50 = v0;
  v51 = v1;
  v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<Column<MLShapedArray<Float>>, Column<String>>);
  v2 = *(*(v39 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v37 = v35;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v38 = *(v5 - 8);
  v6 = *(v38 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v48 = v35;
  v42 = type metadata accessor for AnyColumn(0);
  v41 = *(v42 - 8);
  v9 = *(v41 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v36 = v35;
  v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Float>>);
  v43 = *(v44 - 8);
  v12 = *(v43 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v40 = v35;
  v15 = type metadata accessor for MLSoundClassifier.DataSource(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v46 = type metadata accessor for DataFrame(0);
  v47 = *(v46 - 8);
  v19 = *(v47 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  outlined init with copy of MLSoundClassifier.DataSource(v51, v35);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v35, v15);
  if (EnumCaseMultiPayload == 3)
  {
    v49 = v5;
    v25 = v36;
    v26 = v37;
    v45 = v38;
    v51 = v39;
    DataFrame.init(_:)(v35);
  }

  else
  {
    if (EnumCaseMultiPayload != 4)
    {
      outlined destroy of MLSoundClassifier.DataSource(v35);
      MLComponents16AnnotatedFeatureVyANSSGs5NeverOTg503_s6i4ML13kl13VySfGSgSSSg18m14MLComponents16opt21ADSSGIgngr_AE_AFtAJs5q43OIegnrzr_TR03_s8e75ML17MLSoundClassifierV10g64SourceO17annotatedFeaturesSay0A12MLComponents16gh4Vy04a4B013cD30tU36GSSGGSgyKFAnMSg_SSSgtXEfU_Tf3nnnpf_nTf1cn_n = 0;
      goto LABEL_9;
    }

    v49 = v5;
    v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
    v24 = *(v23 + 48);
    v25 = *&v35[v24];
    v26 = *&v35[v24 + 8];
    v27 = *(v23 + 64);
    v45 = *&v35[v27];
    v51 = *&v35[v27 + 8];
    (*(v47 + 32))(v35, v35, v46);
  }

  v28 = v36;
  DataFrame.subscript.getter(v25, v26);
  v26;
  MLComponents16AnnotatedFeatureVyANSSGs5NeverOTg503_s6i4ML13kl13VySfGSgSSSg18m14MLComponents16opt21ADSSGIgngr_AE_AFtAJs5q43OIegnrzr_TR03_s8e75ML17MLSoundClassifierV10g64SourceO17annotatedFeaturesSay0A12MLComponents16gh4Vy04a4B013cD30tU36GSSGGSgyKFAnMSg_SSSgtXEfU_Tf3nnnpf_nTf1cn_n = v40;
  v30 = v50;
  static MLSoundClassifier.convertFeatures(_:)(v28);
  if (v30)
  {
    v51;
    (*(v41 + 8))(v28, v42);
    (*(v47 + 8))(v35, v46);
  }

  else
  {
    (*(v41 + 8))(v28, v42);
    v32 = v51;
    DataFrame.subscript.getter(v45, v51, &type metadata for String);
    v32;
    v50 = v35;
    v33 = v37;
    (*(v43 + 16))(v37, MLComponents16AnnotatedFeatureVyANSSGs5NeverOTg503_s6i4ML13kl13VySfGSgSSSg18m14MLComponents16opt21ADSSGIgngr_AE_AFtAJs5q43OIegnrzr_TR03_s8e75ML17MLSoundClassifierV10g64SourceO17annotatedFeaturesSay0A12MLComponents16gh4Vy04a4B013cD30tU36GSSGGSgyKFAnMSg_SSSgtXEfU_Tf3nnnpf_nTf1cn_n, v44);
    v34 = v38;
    (*(v38 + 16))(v33 + *(v39 + 52), v48, v49);
    MLComponents16AnnotatedFeatureVyANSSGs5NeverOTg503_s6i4ML13kl13VySfGSgSSSg18m14MLComponents16opt21ADSSGIgngr_AE_AFtAJs5q43OIegnrzr_TR03_s8e75ML17MLSoundClassifierV10g64SourceO17annotatedFeaturesSay0A12MLComponents16gh4Vy04a4B013cD30tU36GSSGGSgyKFAnMSg_SSSgtXEfU_Tf3nnnpf_nTf1cn_n = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy11TabularData6ColumnVy6CoreML13MLShapedArrayVySfGGAJySSGG_18CreateMLComponents16AnnotatedFeatureVyANSSGs5NeverOTg503_s6i4ML13kl13VySfGSgSSSg18m14MLComponents16opt21ADSSGIgngr_AE_AFtAJs5q43OIegnrzr_TR03_s8e75ML17MLSoundClassifierV10g64SourceO17annotatedFeaturesSay0A12MLComponents16gh4Vy04a4B013cD30tU36GSSGGSgyKFAnMSg_SSSgtXEfU_Tf3nnnpf_nTf1cn_n(v33);
    outlined destroy of Any?(v33, &demangling cache variable for type metadata for Zip2Sequence<Column<MLShapedArray<Float>>, Column<String>>);
    (*(v34 + 8))(v48, v49);
    (*(v43 + 8))(v40, v44);
    (*(v47 + 8))(v50, v46);
  }

LABEL_9:
  v31.value._rawValue = MLComponents16AnnotatedFeatureVyANSSGs5NeverOTg503_s6i4ML13kl13VySfGSgSSSg18m14MLComponents16opt21ADSSGIgngr_AE_AFtAJs5q43OIegnrzr_TR03_s8e75ML17MLSoundClassifierV10g64SourceO17annotatedFeaturesSay0A12MLComponents16gh4Vy04a4B013cD30tU36GSSGGSgyKFAnMSg_SSSgtXEfU_Tf3nnnpf_nTf1cn_n;
  return v31;
}

uint64_t static MLSoundClassifier.DataSource.reformatFeatures(dataFrame:featureColumn:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = v3;
  v56 = a3;
  *&v54 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLMultiArray>);
  v49 = *(v43 - 8);
  v4 = *(v49 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v46 = &v41;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v45 = &v41;
  v9 = alloca(v4);
  v10 = alloca(v4);
  v50 = &v41;
  v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Any?]>);
  v44 = *(v51 - 8);
  v11 = *(v44 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v52 = &v41;
  v14 = type metadata accessor for AnyColumn(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v53 = &v41;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v57 = a2;
  DataFrame.subscript.getter(a2, v56);
  v21 = AnyColumn.wrappedElementType.getter(a2);
  v22 = *(v15 + 8);
  v22(&v41, v14);
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any?]);
  if (swift_dynamicCastMetatype(v21, v23))
  {
    v24 = v56;
    DataFrame.subscript.getter(v57, v56, v23);
    v47 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
    v25 = v50;
    v26 = v55;
    Column.map<A>(_:)(closure #1 in static MLSoundClassifier.DataSource.reformatFeatures(dataFrame:featureColumn:), 0, v51, v47);
    v55 = v26;
    v27 = v46;
    v28 = v25;
    v29 = v43;
    (*(v49 + 16))(v46, v28, v43);
    v48 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<MLMultiArray> and conformance Column<A>, &demangling cache variable for type metadata for Column<MLMultiArray>, &protocol conformance descriptor for Column<A>);
    swift_bridgeObjectRetain_n(v24, 2);
    v30 = v45;
    Column.init<A>(name:contents:)(v57, v24, v27, v47, v29, v48);
    v31 = v53;
    Column.eraseToAnyColumn()(v29);
    v32 = *(v49 + 8);
    v32(v30, v29);
    DataFrame.subscript.setter(v31, v57, v56);
    v32(v50, v29);
    return (*(v44 + 8))(v52, v51);
  }

  else
  {
    *&v42 = 0;
    *(&v42 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    v34._object = "of labels missing files: " + 0x8000000000000000;
    v34._countAndFlagsBits = 0xD000000000000062;
    String.append(_:)(v34);
    v35 = v53;
    v34._countAndFlagsBits = v57;
    DataFrame.subscript.getter(v57, v56);
    v36 = AnyColumn.wrappedElementType.getter(v34._countAndFlagsBits);
    v22(v35, v14);
    v37 = _typeName(_:qualified:)(v36, 0);
    LOBYTE(v35) = v38;
    v34._countAndFlagsBits = v37;
    v34._object = v38;
    String.append(_:)(v34);
    v35;
    v34._countAndFlagsBits = 46;
    v34._object = 0xE100000000000000;
    String.append(_:)(v34);
    v54 = v42;
    v39 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v39, 0, 0);
    *v40 = v54;
    *(v40 + 16) = 0;
    *(v40 + 32) = 0;
    *(v40 + 48) = 0;
    return swift_willThrow();
  }
}

void *specialized stratifiedSplitGenerator<A>(proportions:generator:fileURLAndLabel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a2;
  v71 = a1;
  v76 = type metadata accessor for URL(0);
  v5 = *(v76 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);

  v88[0] = specialized _copyCollectionToContiguousArray<A>(_:)(a3);
  specialized MutableCollection<>.sort(by:)(v88);
  v80 = v3;
  if (v3)
  {

    BUG();
  }

  a3;
  v9 = v88[0];
  v73 = *(v88[0] + 16);
  if (v73)
  {
    v72 = v88[0] + 32;
    v10 = 0;
    v87 = _swiftEmptyArrayStorage;
    v75 = a3;
    v68 = &v63;
    v83 = v5;
    v77 = v88[0];
    while (1)
    {
      if (v10 >= *(v9 + 16))
      {
        BUG();
      }

      v74 = v10;
      v11 = 16 * v10;
      v12 = *(v72 + v11);
      v13 = *(v72 + v11 + 8);
      swift_bridgeObjectRetain_n(v13, 2);
      v79 = v12;
      v14 = specialized Dictionary.subscript.getter(v12, v13, a3);
      v85 = v13;
      v13;
      if (!v14)
      {
        BUG();
      }

      v81 = v14;
      v15 = specialized _copyCollectionToContiguousArray<A>(_:)(0, *(v14 + 16));
      v16 = v71;
      v17 = v80;
      v18 = specialized randomSplit<A>(indices:proportions:generator:)(v15, v71, v70);
      v80 = v17;
      if (v17)
      {
        break;
      }

      v84 = v18;

      v69 = *(v16 + 16);
      if (v69)
      {
        v19 = 0;
        v20 = v83;
        v21 = v87;
        v22 = v84;
        do
        {
          v23 = v21[2] <= v19;
          v24 = v21;
          v82 = v19;
          if (v23)
          {
            v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [URL]);
            v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v25, &protocol witness table for String);
            if (!swift_isUniquelyReferenced_nonNull_native(v24))
            {
              v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24[2] + 1, 1, v24);
            }

            v27 = v24[2];
            v19 = v82;
            if (v24[3] >> 1 <= v27)
            {
              v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v24[3] >= 2uLL, v27 + 1, 1, v24);
              v19 = v82;
              v24 = v60;
            }

            v22 = v84;
            v24[2] = v27 + 1;
            v24[v27 + 4] = v26;
            v20 = v83;
          }

          if (v19 >= v22[2])
          {
            BUG();
          }

          v28 = v22[v19 + 4];
          v29 = *(v28 + 16);
          v86 = _swiftEmptyArrayStorage;
          if (v29)
          {
            v87 = v24;
            v88[0] = _swiftEmptyArrayStorage;

            v65 = v29;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29, 0);
            v86 = v88[0];
            v66 = (*(v20 + 80) + 32) & ~*(v20 + 80);
            v67 = v66 + v81;
            v30 = 0;
            v31 = v76;
            v64 = v28;
            do
            {
              v32 = *(v28 + 8 * v30 + 32);
              if (v32 < 0)
              {
                BUG();
              }

              if (v32 >= *(v81 + 16))
              {
                BUG();
              }

              v78 = *(v20 + 72);
              v33 = v68;
              (*(v20 + 16))(v68, v67 + v78 * v32, v31);
              v34 = v86;
              v88[0] = v86;
              v35 = v20;
              v36 = v86[2];
              v37 = v86[3];
              v38 = v36 + 1;
              if (v37 >> 1 <= v36)
              {
                v86 = (v36 + 1);
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v37 >= 2, v38, 1);
                v38 = v86;
                v35 = v83;
                v31 = v76;
                v34 = v88[0];
              }

              ++v30;
              *(v34 + 16) = v38;
              v86 = v34;
              v39 = v34 + v66 + v78 * v36;
              v20 = v35;
              (*(v35 + 32))(v39, v33, v31);
              v28 = v64;
            }

            while (v65 != v30);
            v64;
            v24 = v87;
          }

          if (!swift_isUniquelyReferenced_nonNull_native(v24))
          {
            v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
          }

          if (v82 >= v24[2])
          {
            BUG();
          }

          v40 = v82;
          LOBYTE(v78) = swift_isUniquelyReferenced_nonNull_native(v24[v82 + 4]);
          v88[0] = v24[v40 + 4];
          v41 = v88[0];
          v87 = v24;
          v24[v40 + 4] = 0x8000000000000000;
          v43 = specialized __RawDictionaryStorage.find<A>(_:)(v79, v85);
          v44 = (v42 & 1) == 0;
          v45 = __OFADD__(*(v41 + 16), v44);
          v46 = *(v41 + 16) + v44;
          if (v45)
          {
            BUG();
          }

          v47 = v42;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [URL]>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v78, v46))
          {
            v48 = v85;
            v43 = specialized __RawDictionaryStorage.find<A>(_:)(v79, v85);
            LOBYTE(v50) = v50 & 1;
            if ((v47 & 1) != v50)
            {
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v48, v50, v49);
              BUG();
            }
          }

          v51 = v47;
          a3 = v75;
          v52 = v88[0];
          if (v51)
          {
            v53 = *(v88[0] + 56);
            *(v53 + 8 * v43);
            *(v53 + 8 * v43) = v86;
            v85;
          }

          else
          {
            *(v88[0] + 8 * (v43 >> 6) + 64) |= 1 << v43;
            v54 = v52[6];
            v55 = 16 * v43;
            *(v54 + v55) = v79;
            *(v54 + v55 + 8) = v85;
            *(v52[7] + 8 * v43) = v86;
            v56 = v52[2];
            v45 = __OFADD__(1, v56);
            v57 = v56 + 1;
            if (v45)
            {
              BUG();
            }

            v52[2] = v57;
          }

          v21 = v87;
          v58 = v82;
          v87[v82 + 4] = v52;
          v19 = v58 + 1;
          v20 = v83;
          v59 = v74;
          v22 = v84;
        }

        while (v19 != v69);
      }

      else
      {
        v21 = v87;
        v59 = v74;
        LOBYTE(v22) = v84;
      }

      v87 = v21;
      v61 = v22;
      v85;
      v81;
      v61;
      v10 = v59 + 1;
      v9 = v77;
      if (v59 + 1 == v73)
      {

        return v87;
      }
    }

    v87;

    v81;
    v85;
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }
}

void *specialized randomSplit<A>(indices:proportions:generator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xD000000000000024;
  if (!*(a2 + 16))
  {
    v6 = "-zero proportion is required.";
    goto LABEL_16;
  }

  v58 = *(a2 + 16);
  v4 = COERCE_DOUBLE(specialized Sequence<>.min()(a2));
  if (v5)
  {
    BUG();
  }

  if (v4 < 0.0)
  {
    v3 = 0xD00000000000002ALL;
    v6 = "";
LABEL_16:
    v17 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v17, 0, 0);
    *v18 = v3;
    *(v18 + 8) = v6 | 0x8000000000000000;
    *(v18 + 16) = 0;
    *(v18 + 32) = 0;
    *(v18 + 48) = 0;
    return swift_willThrow();
  }

  v7 = COERCE_DOUBLE(specialized Sequence<>.max()(a2));
  if (v8)
  {
    BUG();
  }

  if (v7 <= 0.0)
  {
    v3 = 0xD00000000000002DLL;
    v6 = "e proportions are allowed.";
    goto LABEL_16;
  }

  v9 = 0;
  v54 = *(a1 + 16);
  v55 = specialized _copyCollectionToContiguousArray<A>(_:)(0, v54);
  specialized MutableCollection<>.shuffle<A>(using:)();
  v10 = 0.0;
  do
  {
    v10 = v10 + *(a2 + 8 * v9++ + 32);
  }

  while (v58 != v9);
  v11 = 0;
  v59 = v10;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58, 0);
  v12 = a2;
  v13 = v58;
  v14 = _swiftEmptyArrayStorage[2];
  do
  {
    v15 = *(v12 + 8 * v11 + 32);
    v16 = v14 + 1;
    if (_swiftEmptyArrayStorage[3] >> 1 <= v14)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v16, 1);
      v10 = v59;
      v16 = v14 + 1;
      v12 = a2;
      v13 = v58;
    }

    ++v11;
    _swiftEmptyArrayStorage[2] = v16;
    *&_swiftEmptyArrayStorage[v14 + 4] = v15 / v10;
    v14 = v16;
  }

  while (v13 != v11);
  v62 = v16;

  v20 = 0;
  v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
  v22 = v21[2];
  v23 = 8 * v22;
  v24 = &_swiftEmptyArrayStorage[4];
  do
  {
    if (v20 + v22)
    {
      v25 = *(&v21[v20 + 3] + v23);
    }

    else
    {
      v25 = 0;
    }

    v26 = *&v24[v20];
    v27 = v22 + v20 + 1;
    if (v21[3] >> 1 <= (v20 + v22))
    {
      v28 = v21[3] >= 2uLL;
      v29 = v21;
      v60 = v22;
      v66 = v23;
      v30 = v24;
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28, v22 + v20 + 1, 1, v29);
      v25 = *&v25.f64[0];
      v24 = v30;
      v23 = v66;
      v22 = v60;
      v16 = v62;
      v21 = v31;
    }

    v21[2] = v27;
    *(&v21[v20++ + 4] + v23) = v26 + v25.f64[0];
  }

  while (v16 != v20);
  _swiftEmptyArrayStorage;

  ML11randomSplit7indices11proportions9generatorSayi7SiGGAF_i15SdGxztKSGRzlFSiL6XEfU1_SaySiGTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySdG_Sis5NeverOTg5058_s8CreateML11randomSplit7indices11proportions9generatorSayi7SiGGAF_i15SdGxztKSGRzlFSiL6XEfU1_SaySiGTf1cn_n(v21, a1, v25);
  v21;
  v33 = 0;
  v34 = 0;
  v35 = _swiftEmptyArrayStorage;
  v61 = ML11randomSplit7indices11proportions9generatorSayi7SiGGAF_i15SdGxztKSGRzlFSiL6XEfU1_SaySiGTf1cn_n;
  do
  {
    if (v34 >= ML11randomSplit7indices11proportions9generatorSayi7SiGGAF_i15SdGxztKSGRzlFSiL6XEfU1_SaySiGTf1cn_n[2])
    {
      BUG();
    }

    v67 = v34;
    if (v33 >= ML11randomSplit7indices11proportions9generatorSayi7SiGGAF_i15SdGxztKSGRzlFSiL6XEfU1_SaySiGTf1cn_n[v34 + 4])
    {
      v36 = _swiftEmptyArrayStorage;
    }

    else
    {
      v63 = v35;
      v56 = v33;
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
      v37 = v33;
      v38 = v67;
      v35 = v63;
      v39 = v61;
      v40 = a1;
      v41 = v54;
      v42 = v55;
      do
      {
        if (v37 < 0)
        {
          BUG();
        }

        if (v33 >= v42[2])
        {
          BUG();
        }

        v43 = v42[v33 + 4];
        if (v43 >= v41)
        {
          BUG();
        }

        v44 = *(v40 + 8 * v43 + 32);
        v45 = v36[2];
        if (v36[3] >> 1 <= v45)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v36[3] >= 2uLL, v45 + 1, 1, v36);
          v37 = v56;
          v38 = v67;
          v35 = v63;
          v39 = v61;
          v42 = v55;
          v41 = v54;
          v40 = a1;
        }

        v36[2] = v45 + 1;
        v36[v45 + 4] = v44;
        ++v33;
      }

      while (v33 < v39[v38 + 4]);
    }

    v64 = v36;
    v46 = v35;
    if (swift_isUniquelyReferenced_nonNull_native(v35))
    {
      v35 = v46;
    }

    else
    {
      v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v46 + 16) + 1, 1, v46);
    }

    v47 = v35[2];
    v48 = v58;
    ML11randomSplit7indices11proportions9generatorSayi7SiGGAF_i15SdGxztKSGRzlFSiL6XEfU1_SaySiGTf1cn_n = v61;
    v49 = v67;
    v50 = v64;
    if (v35[3] >> 1 <= v47)
    {
      v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35[3] >= 2uLL, v47 + 1, 1, v35);
      v50 = v64;
      v49 = v67;
      ML11randomSplit7indices11proportions9generatorSayi7SiGGAF_i15SdGxztKSGRzlFSiL6XEfU1_SaySiGTf1cn_n = v61;
      v48 = v58;
      v35 = v51;
    }

    v34 = v49 + 1;
    v35[2] = v47 + 1;
    v35[v47 + 4] = v50;
  }

  while (v34 != v48);
  v52 = ML11randomSplit7indices11proportions9generatorSayi7SiGGAF_i15SdGxztKSGRzlFSiL6XEfU1_SaySiGTf1cn_n;
  v53 = v35;
  v52;

  return v53;
}

void *MLSoundClassifier.DataSource.labeledSounds()()
{
  *&v102 = v0;
  v110 = v1;
  v2 = type metadata accessor for UTType(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v106 = &v102;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v107 = &v102;
  v108 = type metadata accessor for URL(0);
  v109 = *(v108 - 8);
  v9 = v109[8];
  v10 = alloca(v9);
  v11 = alloca(v9);
  v104 = &v102;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v111 = &v102;
  v14 = type metadata accessor for MLSoundClassifier.DataSource(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  outlined init with copy of MLSoundClassifier.DataSource(v110, &v102);
  switch(swift_getEnumCaseMultiPayload(&v102, v14))
  {
    case 0u:
      v110 = v2;
      v18 = v111;
      (v109[4])(v111, &v102, v108);
      v19 = v107;
      static UTType.audio.getter();
      v20 = v102;
      v21 = static _FileUtilities.collectFilesLabeledByDirectoryName(at:type:)(v18, v19);
      v22 = v20;
      if (v20)
      {
        (*(v3 + 8))(v107, v110);
        v23 = v111;
        return (v109[1])(v23, v108);
      }

      v27 = v21;
      (*(v3 + 8))(v107, v110);
      v38 = v111;
      goto LABEL_13;
    case 1u:
      v110 = v2;
      v34 = v104;
      (v109[4])(v104, &v102, v108);
      v35 = v106;
      static UTType.audio.getter();
      v36 = v102;
      v37 = static _FileUtilities.collectFilesLabeledByFileName(at:type:)(v34, v35);
      v22 = v36;
      if (!v36)
      {
        v27 = v37;
        (*(v3 + 8))(v106, v110);
        v38 = v104;
LABEL_13:
        (v109[1])(v38, v108);
LABEL_14:
        v39 = 1 << *(v27 + 32);
        v40 = ~(-1 << v39);
        if (v39 >= 64)
        {
          v40 = -1;
        }

        v41 = v27[4] & v40;
        v105 = (v39 + 63) >> 6;
        v109 = _swiftEmptyDictionarySingleton;
        v42 = 0;
        v111 = v27;
        while (1)
        {
          *&v102 = v22;
          if (!v41)
          {
            v43 = v42 + 1;
            if (__OFADD__(1, v42))
            {
              BUG();
            }

            if (v43 >= v105)
            {
LABEL_45:

              v69 = v109;

              v70 = specialized _NativeDictionary.filter(_:)(v69);
              v69;
              v71 = 1 << *(v70 + 32);
              v72 = ~(-1 << v71);
              if (v71 >= 64)
              {
                v72 = -1;
              }

              v73 = v70[8] & v72;
              v111 = ((v71 + 63) >> 6);
              v104 = ("tted text file " + 0x8000000000000000);
              v107 = v70;

              v74 = 0;
              *&v102 = v22;
              while (1)
              {
                if (v73)
                {
                  v75 = v74;
                  v76 = v107;
                }

                else
                {
                  v77 = v74 + 1;
                  v76 = v107;
                  if (__OFADD__(1, v74))
                  {
                    BUG();
                  }

                  if (v77 >= v111)
                  {
LABEL_69:

                    if (*(v76 + 16))
                    {
                      v109;
                      *&v103 = 0;
                      *(&v103 + 1) = 0xE000000000000000;
                      _StringGuts.grow(_:)(69);
                      v91._object = "eature data sources." + 0x8000000000000000;
                      v91._countAndFlagsBits = 0xD000000000000017;
                      String.append(_:)(v91);
                      v92 = specialized Collection.first.getter(v76);
                      if (!v93)
                      {
                        v92 = 0;
                      }

                      v94._object = 0xE000000000000000;
                      if (v93)
                      {
                        v94._object = v93;
                      }

                      v94._countAndFlagsBits = v92;
                      String.append(_:)(v94);
                      v94._object;
                      v95._object = "Missing data for label " + 0x8000000000000000;
                      v95._countAndFlagsBits = 0xD000000000000029;
                      String.append(_:)(v95);
                      v96 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [URL]);
                      v97 = Dictionary.Keys.description.getter(v76, &type metadata for String, v96, &protocol witness table for String);
                      v99 = v98;
                      v95._countAndFlagsBits = v97;
                      v95._object = v98;
                      String.append(_:)(v95);
                      v99;
                      v95._countAndFlagsBits = 46;
                      v95._object = 0xE100000000000000;
                      String.append(_:)(v95);
                      v102 = v103;
                      v100 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                      swift_allocError(&type metadata for MLCreateError, v100, 0, 0);
                      *v101 = v102;
                      *(v101 + 16) = 0;
                      *(v101 + 32) = 0;
                      *(v101 + 48) = 0;
                      swift_willThrow();
                    }

                    else
                    {

                      return v109;
                    }
                  }

                  v73 = *(v107 + v77 + 8);
                  if (v73)
                  {
                    v75 = v74 + 1;
                  }

                  else
                  {
                    v75 = v74 + 2;
                    if (v74 + 2 >= v111)
                    {
                      goto LABEL_69;
                    }

                    v73 = *(v107 + v77 + 9);
                    if (!v73)
                    {
                      v75 = v74 + 3;
                      if (v74 + 3 >= v111)
                      {
                        goto LABEL_69;
                      }

                      v73 = *(v107 + v77 + 10);
                      if (!v73)
                      {
                        v75 = v74 + 4;
                        if (v74 + 4 >= v111)
                        {
                          goto LABEL_69;
                        }

                        v73 = *(v107 + v77 + 11);
                        if (!v73)
                        {
                          v75 = v74 + 5;
                          if (v74 + 5 >= v111)
                          {
                            goto LABEL_69;
                          }

                          v73 = *(v107 + v77 + 12);
                          if (!v73)
                          {
                            v75 = v74 + 6;
                            if (v74 + 6 >= v111)
                            {
                              goto LABEL_69;
                            }

                            v73 = *(v107 + v77 + 13);
                            if (!v73)
                            {
                              v78 = v74 + 7;
                              do
                              {
                                if (v78 >= v111)
                                {
                                  goto LABEL_69;
                                }

                                v73 = *(v107 + v78++ + 8);
                              }

                              while (!v73);
                              v75 = v78 - 1;
                            }
                          }
                        }
                      }
                    }
                  }
                }

                _BitScanForward64(&v79, v73);
                v110 = (v73 - 1) & v73;
                v80 = *(v76 + 48);
                v108 = v75;
                v81 = (v75 << 10) | (16 * v79);
                v82 = *(v80 + v81);
                v83 = *(v80 + v81 + 8);
                *&v103 = 0;
                *(&v103 + 1) = 0xE000000000000000;

                _StringGuts.grow(_:)(29);
                SBYTE8(v103);
                *&v103 = 0xD000000000000019;
                *(&v103 + 1) = v104;
                v84._countAndFlagsBits = v82;
                v84._object = v83;
                String.append(_:)(v84);
                v83;
                v84._countAndFlagsBits = 11815;
                v84._object = 0xE200000000000000;
                String.append(_:)(v84);
                v85 = v103;
                LOBYTE(v106) = static os_log_type_t.error.getter(11815);
                v86 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any>);
                v87 = swift_allocObject(v86, 64, 7);
                *(v87 + 16) = 1;
                *(v87 + 24) = 2;
                *(v87 + 56) = &type metadata for String;
                *(v87 + 32) = v85;

                print(_:separator:terminator:)(v87, 32, 0xE100000000000000, 10, 0xE100000000000000);
                v87;
                type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
                v88 = static OS_os_log.default.getter(0, &lazy cache variable for type metadata for OS_os_log);
                v89 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
                v90 = swift_allocObject(v89, 72, 7);
                *(v90 + 16) = 1;
                *(v90 + 24) = 2;
                *(v90 + 56) = &type metadata for String;
                *(v90 + 64) = lazy protocol witness table accessor for type String and conformance String();
                *(v90 + 32) = v85;

                os_log(_:dso:log:type:_:)("%@\n");
                SBYTE8(v85);
                v84._countAndFlagsBits = v88;
                v73 = v110;

                v90;
                v74 = v108;
              }
            }

            v41 = *(v27 + v43 + 8);
            if (v41)
            {
              ++v42;
            }

            else
            {
              v44 = (v42 + 2);
              if (v42 + 2 >= v105)
              {
                goto LABEL_45;
              }

              v41 = *(v27 + v43 + 9);
              if (v41)
              {
                goto LABEL_32;
              }

              v44 = (v42 + 3);
              if (v42 + 3 >= v105)
              {
                goto LABEL_45;
              }

              v41 = *(v27 + v43 + 10);
              if (v41)
              {
                goto LABEL_32;
              }

              v44 = (v42 + 4);
              if (v42 + 4 >= v105)
              {
                goto LABEL_45;
              }

              v41 = *(v27 + v43 + 11);
              if (v41)
              {
                goto LABEL_32;
              }

              v44 = (v42 + 5);
              if (v42 + 5 >= v105)
              {
                goto LABEL_45;
              }

              v41 = *(v27 + v43 + 12);
              if (v41)
              {
                goto LABEL_32;
              }

              v44 = (v42 + 6);
              if (v42 + 6 >= v105)
              {
                goto LABEL_45;
              }

              v41 = *(v27 + v43 + 13);
              if (v41)
              {
LABEL_32:
                v42 = v44;
              }

              else
              {
                v68 = v42 + 7;
                do
                {
                  if (v68 >= v105)
                  {
                    goto LABEL_45;
                  }

                  v41 = *(v27 + v68++ + 8);
                }

                while (!v41);
                *&v102 = v22;
                v42 = v68 - 1;
              }
            }
          }

          v104 = v41;
          _BitScanForward64(&v45, v41);
          v107 = v42;
          v46 = v45 | (v42 << 6);
          v47 = *(*(v27 + 7) + 8 * v46);
          v46 *= 16;
          v48 = *(v27 + 6);
          v49 = *(v48 + v46);
          v50 = *(v48 + v46 + 8);

          v106 = static _AudioUtilities.validateAudioURLs(from:)(v47);
          v47;
          v51 = v109;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v109);
          *&v103 = v51;
          v108 = v49;
          v110 = v50;
          v54 = specialized __RawDictionaryStorage.find<A>(_:)(v49, v50);
          v55 = (v53 & 1) == 0;
          v56 = __OFADD__(v51[2], v55);
          v57 = v51[2] + v55;
          if (v56)
          {
            BUG();
          }

          v58 = v53;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [URL]>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v57))
          {
            v59 = v110;
            v54 = specialized __RawDictionaryStorage.find<A>(_:)(v108, v110);
            LOBYTE(v61) = v61 & 1;
            if ((v58 & 1) != v61)
            {
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v59, v61, v60);
              BUG();
            }
          }

          v27 = v111;
          v62 = v103;
          v109 = v103;
          if (v58)
          {
            v63 = *(v103 + 56);
            *(v63 + 8 * v54);
            *(v63 + 8 * v54) = v106;
            v110;
          }

          else
          {
            *(v103 + 8 * (v54 >> 6) + 64) |= 1 << v54;
            v64 = v62[6];
            v65 = 16 * v54;
            *(v64 + v65) = v108;
            *(v64 + v65 + 8) = v110;
            *(v62[7] + 8 * v54) = v106;
            v66 = v62[2];
            v56 = __OFADD__(1, v66);
            v67 = v66 + 1;
            if (v56)
            {
              BUG();
            }

            v62[2] = v67;
          }

          v41 = (v104 - 1) & v104;
          v22 = v102;
          v42 = v107;
        }
      }

      (*(v3 + 8))(v106, v110);
      v23 = v104;
      return (v109[1])(v23, v108);
    case 2u:
      v27 = v102;
      v22 = v102;
      goto LABEL_14;
    case 3u:
      v28 = *(&v103 + 1);
      v29 = v105;
      outlined consume of Result<_DataTable, Error>(v102, SBYTE8(v102));
      v29;
      v26 = v28;
      v28;
      goto LABEL_7;
    case 4u:
      v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
      *(&v102 + *(v24 + 48) + 8);
      *(&v102 + *(v24 + 64) + 8);
      v25 = type metadata accessor for DataFrame(0);
      v26 = &v102;
      (*(*(v25 - 8) + 8))(&v102, v25);
LABEL_7:
      v30 = static os_log_type_t.info.getter(v26);
      v31._countAndFlagsBits = 0xD000000000000044;
      v31._object = "equires a training checkpoint." + 0x8000000000000000;
      log(_:type:)(v31, v30);
      v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [URL]);
      return Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v32, &protocol witness table for String);
  }
}

uint64_t MLSoundClassifier.DataSource.validate(modelParameters:)(uint64_t a1)
{
  v37 = v1;
  v36 = a1;
  v44 = type metadata accessor for DataFrame(0);
  v38 = *(v44 - 8);
  v3 = *(v38 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = alloca(v3);
  v7 = alloca(v3);
  v45 = &v30;
  v8 = type metadata accessor for MLSoundClassifier.DataSource(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  outlined init with copy of MLSoundClassifier.DataSource(v2, &v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v30, v8);
  if (EnumCaseMultiPayload == 3)
  {
    v25 = v31;
    v46 = v32;
    v26 = v33;
    v39 = v34;
    v27 = v35;
    v43 = v36;
    v35 = v37;
    LOBYTE(v42) = v38;
    v41 = v34;
    LOBYTE(v31) = v31 & 1;
    v45 = v30;
    LODWORD(v47) = v25;
    outlined copy of Result<_DataTable, Error>(v30, v25);
    DataFrame.init(_:)(&v30);
    v28 = v37;
    MLSoundClassifier.DataSource.validateFeatures(dataFrame:featuresColumnName:labelsColumnName:)(&v30, v46, v26, v39, v27);
    if (v28)
    {
      (*(v38 + 8))(&v30, v44);
      outlined consume of Result<_DataTable, Error>(v45, v47);
      v27;
      v24 = v26;
      return v24;
    }

    (*(v38 + 8))(&v30, v44);
    v27;
    v26;
    v30 = v43;
    v31 = v35;
    LOBYTE(v32) = v42 & 1;
    v33 = v41;
    LOBYTE(v34) = v40 & 1;
    static MLSoundClassifier.validateFeatureExtractionParameters(featureExtractionParameters:parameters:)(&v30, v36);
    return outlined consume of Result<_DataTable, Error>(v45, v47);
  }

  else if (EnumCaseMultiPayload == 4)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
    v14 = v13[12];
    v47 = *(&v30 + v14);
    v15 = *(&v30 + v14 + 8);
    v16 = v13[16];
    v46 = *(&v30 + v16);
    v17 = *(&v30 + v16 + 8);
    v18 = v13[20];
    v42 = *(&v30 + v18);
    v43 = *(&v30 + v18 + 8);
    LOBYTE(v41) = *(&v32 + v18);
    v40 = *(&v33 + v18);
    LOBYTE(v39) = *(&v34 + v18);
    v19 = v45;
    v20 = v38;
    (*(v38 + 32))(v45, &v30, v44);
    v21 = v47;
    v47 = v15;
    v22 = v46;
    v46 = v17;
    v23 = v37;
    MLSoundClassifier.DataSource.validateFeatures(dataFrame:featuresColumnName:labelsColumnName:)(v19, v21, v15, v22, v17);
    if (v23)
    {
      (*(v20 + 8))(v19, v44);
      v47;
      v24 = v46;
      return v24;
    }

    v46;
    v47;
    v30 = v42;
    v31 = v43;
    LOBYTE(v32) = v41 & 1;
    v33 = v40;
    LOBYTE(v34) = v39 & 1;
    static MLSoundClassifier.validateFeatureExtractionParameters(featureExtractionParameters:parameters:)(&v30, v36);
    return (*(v20 + 8))(v45, v44);
  }

  else
  {
    return outlined destroy of MLSoundClassifier.DataSource(&v30);
  }
}

uint64_t MLSoundClassifier.DataSource.validateFeatures(dataFrame:featuresColumnName:labelsColumnName:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v46._object = v5;
  v45 = a5;
  v46._countAndFlagsBits = a4;
  v43 = a3;
  v44._countAndFlagsBits = a2;
  v49 = type metadata accessor for AnyColumn(0);
  v48 = *(v49 - 8);
  v6 = *(v48 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v44._object = &v42;
  v9 = type metadata accessor for DataFrame.Rows(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  *&v47 = a1;
  DataFrame.rows.getter(0, a2, v14, v15);
  v16 = specialized Collection.isEmpty.getter();
  (*(v10 + 8))(&v42, v9);
  if (v16)
  {
    v17 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v17, 0, 0);
    *v18 = 0xD000000000000020;
    *(v18 + 8) = "umn is not of string type." + 0x8000000000000000;
    *(v18 + 16) = 0;
    *(v18 + 32) = 0;
    *(v18 + 48) = 0;
    return swift_willThrow();
  }

  countAndFlagsBits = v44._countAndFlagsBits;
  v20._countAndFlagsBits = v44._countAndFlagsBits;
  v21 = v43;
  v20._object = v43;
  v22 = DataFrame.indexOfColumn(_:)(v20);
  if (v22.is_nil)
  {
    *&v42 = 0;
    *(&v42 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(50);
    SBYTE8(v42);
    *&v42 = 0xD00000000000002FLL;
    *(&v42 + 1) = "Classifier.DataSource.swift" + 0x8000000000000000;
    v23._countAndFlagsBits = countAndFlagsBits;
    v23._object = v21;
    String.append(_:)(v23);
    v23._countAndFlagsBits = 46;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    v47 = v42;
    v24 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v24, 0, 0);
    *v25 = v47;
    *(v25 + 16) = 0;
    *(v25 + 32) = 0;
    *(v25 + 48) = 0;
    return swift_willThrow();
  }

  value = v22.value;
  object = v44._object;
  DataFrame.subscript.getter(v22.value);
  v29 = AnyColumn.wrappedElementType.getter(value);
  if ((static MLSoundClassifier.DataSource.isNumericArray(_:)(v29) & 1) == 0)
  {
    v36 = " table does not contain column " + 0x8000000000000000;
    v37 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v37, 0, 0);
    v39 = 0xD000000000000040;
LABEL_10:
    *v38 = v39;
    *(v38 + 8) = v36;
    *(v38 + 16) = 0;
    *(v38 + 32) = 0;
    *(v38 + 48) = 0;
    goto LABEL_11;
  }

  v30 = v46._countAndFlagsBits;
  v31._countAndFlagsBits = v46._countAndFlagsBits;
  v32 = v45;
  v31._object = v45;
  if (DataFrame.indexOfColumn(_:)(v31).is_nil)
  {
    *&v42 = 0;
    *(&v42 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(50);
    SBYTE8(v42);
    *&v42 = 0xD00000000000002FLL;
    *(&v42 + 1) = "Classifier.DataSource.swift" + 0x8000000000000000;
    v33._countAndFlagsBits = v30;
    v33._object = v32;
    String.append(_:)(v33);
    v33._countAndFlagsBits = 46;
    v33._object = 0xE100000000000000;
    String.append(_:)(v33);
    v47 = v42;
    v34 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v34, 0, 0);
    *v35 = v47;
    *(v35 + 16) = 0;
    *(v35 + 32) = 0;
    *(v35 + 48) = 0;
LABEL_11:
    swift_willThrow();
    return (*(v48 + 8))(object, v49);
  }

  v40._countAndFlagsBits = v30;
  v40._object = v32;
  if ((_s11TabularData0B5FrameV14containsColumnySbSS_xmtlFSS_Tt0g5(v40) & 1) == 0)
  {
    v36 = "multiarray type." + 0x8000000000000000;
    v41 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v41, 0, 0);
    v39 = 0xD00000000000003ALL;
    goto LABEL_10;
  }

  return (*(v48 + 8))(object, v49);
}

uint64_t static MLSoundClassifier.DataSource.isNumericArray(_:)(uint64_t a1)
{
  LOBYTE(v1) = 1;
  if (__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>) != a1 && __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>) != a1 && type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr) != a1 && __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]) != a1 && __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]) != a1 && __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float?]) != a1 && __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double?]) != a1)
  {
    LOBYTE(v1) = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any?]) == a1;
  }

  return v1;
}

void *MLSoundClassifier.DataSource.stratifiedSplit(proportions:seed:)(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MLSoundClassifier.DataSource.labeledSounds()();
  if (!v2)
  {
    v9 = a1;
    if (a2 < 0)
    {
      BUG();
    }

    v5 = v4;
    v6 = type metadata accessor for MersenneTwisterGenerator();
    swift_allocObject(v6, 136, 7);
    v8 = MersenneTwisterGenerator.init(seed:)(a2);
    v3 = specialized stratifiedSplitGenerator<A>(proportions:generator:fileURLAndLabel:)(v9, &v8, v5);
    v5;
  }

  return v3;
}

void *MLSoundClassifier.DataSource.stratifiedSplit<A>(proportions:generator:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v6 = MLSoundClassifier.DataSource.labeledSounds()();
  if (!v4)
  {
    v7 = v6;
    v5 = stratifiedSplitGenerator<A>(proportions:generator:fileURLAndLabel:)(a1, a2, v6, a3, a4);
    v7;
  }

  return v5;
}

id closure #1 in static MLSoundClassifier.DataSource.reformatFeatures(dataFrame:featureColumn:)(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  if (*a1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>);
    v22 = v2;
    v6 = swift_allocObject(v5, 40, 7);
    v6[2] = 1;
    v6[3] = 3;
    v7 = *(v4 + 16);
    v8 = objc_allocWithZone(NSNumber);
    v21 = v7;
    v6[4] = [v8 initWithInteger:v7];
    objc_allocWithZone(MLMultiArray);
    v9 = @nonobjc MLMultiArray.init(shape:dataType:)(v6, 65600);
    if (v22)
    {
      swift_unexpectedError(v22, "CreateML/MLSoundClassifier.DataSource.swift", 43, 1, 341);
      BUG();
    }

    v19 = v3;
    v20 = v9;
    v17 = UnsafeMutableBufferPointer.init(_:)(v20, &type metadata for Double);
    v22 = 0;
    if (v21)
    {
      v10 = v4 + 32;
      v11 = 0;
      v18 = &type metadata for Any + 8;
      while (1)
      {
        outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v14, &demangling cache variable for type metadata for Any?);
        if (!v15)
        {
          break;
        }

        if (!swift_dynamicCast(&v16, v14, v18, &type metadata for Double, 6))
        {
          goto LABEL_9;
        }

        v12 = v16;
LABEL_10:
        *(v17 + 8 * v11++) = v12;
        v10 += 32;
        if (v21 == v11)
        {
          goto LABEL_11;
        }
      }

      outlined destroy of Any?(v14, &demangling cache variable for type metadata for Any?);
LABEL_9:
      v12 = 0;
      goto LABEL_10;
    }

LABEL_11:
    v3 = v19;
    result = v20;
  }

  else
  {
    result = 0;
  }

  *v3 = result;
  return result;
}

uint64_t type metadata accessor for MLSoundClassifier.DataSource(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLSoundClassifier.DataSource;
  if (!type metadata singleton initialization cache for MLSoundClassifier.DataSource)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLSoundClassifier.DataSource);
  }

  return result;
}

uint64_t outlined init with copy of MLSoundClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLSoundClassifier.DataSource(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

void *specialized _NativeDictionary.filter(_:)(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  v5 = 8 * v4;
  if ((v3 & 0x3Fu) <= 0xD || _stdlib_isOSVersionAtLeastOrVariantVersionAtLeast(_:_:_:_:_:_:)(0xCuLL, 3uLL, 0, 0xFuLL, 4uLL, 0) && swift_stdlib_isStackAllocationSafe(8 * v4, 8))
  {
    v11 = &v11;
    v6 = alloca(v5);
    v7 = alloca(v5);
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v4, &v11);
    v8 = specialized closure #1 in _NativeDictionary.filter(_:)(&v11, v4, a1);
    if (v1)
    {
      swift_willThrow();
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v9 = swift_slowAlloc(8 * v4, -1);
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v4, v9);
    v2 = specialized closure #1 in _NativeDictionary.filter(_:)(v9, v4, a1);
    v9, -1, -1;
  }

  return v2;
}

void *initializeBufferWithCopyOfBuffer for MLSoundClassifier.DataSource(uint64_t a1, uint64_t a2, uint64_t a3)
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
    switch(swift_getEnumCaseMultiPayload(a2, a3))
    {
      case 0u:
        v6 = type metadata accessor for URL(0);
        (*(*(v6 - 8) + 16))(a1, a2, v6);
        v7 = a3;
        v8 = 0;
        goto LABEL_10;
      case 1u:
        v19 = type metadata accessor for URL(0);
        (*(*(v19 - 8) + 16))(a1, a2, v19);
        v21 = 1;
        goto LABEL_9;
      case 2u:
        *a1 = *a2;

        v21 = 2;
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
        v18 = *(a2 + 64);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 64) = v18;
        *(a1 + 80) = *(a2 + 80);

        v21 = 3;
        goto LABEL_9;
      case 4u:
        v10 = type metadata accessor for DataFrame(0);
        (*(*(v10 - 8) + 16))(a1, a2, v10);
        v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        v12 = v11[12];
        *(a1 + v12) = *(a2 + v12);
        *(a1 + v12 + 8) = *(a2 + v12 + 8);
        v13 = v11[16];
        *(a1 + v13) = *(a2 + v13);
        *(a1 + v13 + 8) = *(a2 + v13 + 8);
        v14 = v11[20];
        *(a1 + v14 + 32) = *(a2 + v14 + 32);
        v15 = *(a2 + v14);
        *(a1 + v14 + 16) = *(a2 + v14 + 16);
        *(a1 + v14) = v15;

        v21 = 4;
LABEL_9:
        v8 = v21;
        v7 = a3;
LABEL_10:
        swift_storeEnumTagMultiPayload(a1, v7, v8);
        break;
      case 5u:
        JUMPOUT(0x23699CLL);
    }
  }

  return v3;
}

uint64_t destroy for MLSoundClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  switch(result)
  {
    case 0:
    case 1:
      v3 = type metadata accessor for URL(0);
      result = (*(*(v3 - 8) + 8))(a1, v3);
      break;
    case 2:
      result = *a1;
      break;
    case 3:
      outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
      *(a1 + 24);
      result = *(a1 + 40);
      break;
    case 4:
      v4 = type metadata accessor for DataFrame(0);
      (*(*(v4 - 8) + 8))(a1, v4);
      v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
      *(a1 + *(v5 + 48) + 8);
      result = *(a1 + *(v5 + 64) + 8);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t initializeWithCopy for MLSoundClassifier.DataSource(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload(a2, a3))
  {
    case 0u:
      v4 = type metadata accessor for URL(0);
      (*(*(v4 - 8) + 16))(a1, a2, v4);
      v5 = a3;
      v6 = 0;
      goto LABEL_8;
    case 1u:
      v16 = type metadata accessor for URL(0);
      (*(*(v16 - 8) + 16))(a1, a2, v16);
      v18 = 1;
      goto LABEL_7;
    case 2u:
      *a1 = *a2;

      v18 = 2;
      goto LABEL_7;
    case 3u:
      v13 = *a2;
      v14 = *(a2 + 8);
      outlined copy of Result<_DataTable, Error>(*a2, v14);
      *a1 = v13;
      *(a1 + 8) = v14;
      *(a1 + 16) = a2[2];
      *(a1 + 24) = a2[3];
      *(a1 + 32) = a2[4];
      *(a1 + 40) = a2[5];
      v15 = *(a2 + 4);
      *(a1 + 48) = *(a2 + 3);
      *(a1 + 64) = v15;
      *(a1 + 80) = *(a2 + 80);

      v18 = 3;
      goto LABEL_7;
    case 4u:
      v7 = type metadata accessor for DataFrame(0);
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
      v9 = v8[12];
      *(a1 + v9) = *(a2 + v9);
      *(a1 + v9 + 8) = *(a2 + v9 + 8);
      v10 = v8[16];
      *(a1 + v10) = *(a2 + v10);
      *(a1 + v10 + 8) = *(a2 + v10 + 8);
      v11 = v8[20];
      *(a1 + v11 + 32) = *(a2 + v11 + 32);
      v12 = *(a2 + v11);
      *(a1 + v11 + 16) = *(a2 + v11 + 16);
      *(a1 + v11) = v12;

      v18 = 4;
LABEL_7:
      v6 = v18;
      v5 = a3;
LABEL_8:
      swift_storeEnumTagMultiPayload(a1, v5, v6);
      return a1;
  }
}

uint64_t assignWithCopy for MLSoundClassifier.DataSource(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of MLSoundClassifier.DataSource(a1);
    switch(swift_getEnumCaseMultiPayload(a2, a3))
    {
      case 0u:
        v4 = type metadata accessor for URL(0);
        (*(*(v4 - 8) + 16))(a1, a2, v4);
        v5 = a3;
        v6 = 0;
        goto LABEL_9;
      case 1u:
        v16 = type metadata accessor for URL(0);
        (*(*(v16 - 8) + 16))(a1, a2, v16);
        v18 = 1;
        goto LABEL_8;
      case 2u:
        *a1 = *a2;

        v18 = 2;
        goto LABEL_8;
      case 3u:
        v13 = *a2;
        v14 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v14);
        *a1 = v13;
        *(a1 + 8) = v14;
        *(a1 + 16) = a2[2];
        *(a1 + 24) = a2[3];
        *(a1 + 32) = a2[4];
        *(a1 + 40) = a2[5];
        v15 = *(a2 + 4);
        *(a1 + 48) = *(a2 + 3);
        *(a1 + 64) = v15;
        *(a1 + 80) = *(a2 + 80);

        v18 = 3;
        goto LABEL_8;
      case 4u:
        v7 = type metadata accessor for DataFrame(0);
        (*(*(v7 - 8) + 16))(a1, a2, v7);
        v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        v9 = v8[12];
        *(a1 + v9) = *(a2 + v9);
        *(a1 + v9 + 8) = *(a2 + v9 + 8);
        v10 = v8[16];
        *(a1 + v10) = *(a2 + v10);
        *(a1 + v10 + 8) = *(a2 + v10 + 8);
        v11 = v8[20];
        *(a1 + v11 + 32) = *(a2 + v11 + 32);
        v12 = *(a2 + v11);
        *(a1 + v11 + 16) = *(a2 + v11 + 16);
        *(a1 + v11) = v12;

        v18 = 4;
LABEL_8:
        v6 = v18;
        v5 = a3;
LABEL_9:
        swift_storeEnumTagMultiPayload(a1, v5, v6);
        break;
    }
  }

  return a1;
}

uint64_t outlined destroy of MLSoundClassifier.DataSource(uint64_t a1)
{
  v1 = type metadata accessor for MLSoundClassifier.DataSource(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

_BYTE *initializeWithTake for MLSoundClassifier.DataSource(_BYTE *__dst, _BYTE *__src, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  switch(EnumCaseMultiPayload)
  {
    case 4:
      v9 = type metadata accessor for DataFrame(0);
      (*(*(v9 - 8) + 32))(__dst, __src, v9);
      v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
      *&__dst[v10[12]] = *&__src[v10[12]];
      *&__dst[v10[16]] = *&__src[v10[16]];
      v11 = v10[20];
      v12 = *&__src[v11 + 16];
      *&__dst[v11] = *&__src[v11];
      *&__dst[v11 + 16] = v12;
      __dst[v11 + 32] = __src[v11 + 32];
      v14 = 4;
      goto LABEL_7;
    case 1:
      v8 = type metadata accessor for URL(0);
      (*(*(v8 - 8) + 32))(__dst, __src, v8);
      v14 = 1;
LABEL_7:
      v7 = v14;
      v6 = a3;
      goto LABEL_8;
    case 0:
      v5 = type metadata accessor for URL(0);
      (*(*(v5 - 8) + 32))(__dst, __src, v5);
      v6 = a3;
      v7 = 0;
LABEL_8:
      swift_storeEnumTagMultiPayload(__dst, v6, v7);
      return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

_BYTE *assignWithTake for MLSoundClassifier.DataSource(_BYTE *__dst, _BYTE *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLSoundClassifier.DataSource(__dst);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  switch(EnumCaseMultiPayload)
  {
    case 4:
      v9 = type metadata accessor for DataFrame(0);
      (*(*(v9 - 8) + 32))(__dst, __src, v9);
      v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
      *&__dst[v10[12]] = *&__src[v10[12]];
      *&__dst[v10[16]] = *&__src[v10[16]];
      v11 = v10[20];
      v12 = *&__src[v11 + 16];
      *&__dst[v11] = *&__src[v11];
      *&__dst[v11 + 16] = v12;
      __dst[v11 + 32] = __src[v11 + 32];
      v14 = 4;
      goto LABEL_8;
    case 1:
      v8 = type metadata accessor for URL(0);
      (*(*(v8 - 8) + 32))(__dst, __src, v8);
      v14 = 1;
LABEL_8:
      v7 = v14;
      v6 = a3;
      goto LABEL_9;
    case 0:
      v5 = type metadata accessor for URL(0);
      (*(*(v5 - 8) + 32))(__dst, __src, v5);
      v6 = a3;
      v7 = 0;
LABEL_9:
      swift_storeEnumTagMultiPayload(__dst, v6, v7);
      return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata completion function for MLSoundClassifier.DataSource(uint64_t a1)
{
  v1 = type metadata accessor for URL(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v14[0] = *(v1 - 8) + 64;
    v14[1] = v14[0];
    v14[2] = &value witness table for Builtin.BridgeObject + 64;
    v14[3] = "Q";
    v4 = type metadata accessor for DataFrame(319);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      v10 = *(v4 - 8) + 64;
      v11 = &unk_346AB8;
      v12 = &unk_346AB8;
      v13 = &unk_346AD0;
      v2 = 0;
      swift_getTupleTypeLayout(v9, 0, 4);
      v14[4] = v9;
      swift_initEnumMetadataMultiPayload(a1, 256, 5, v14, v6, v7);
    }
  }

  return v2;
}

void *specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = 1 << *(a3 + 32);
  v5 = ~(-1 << v4);
  if (v4 >= 64)
  {
    v5 = -1;
  }

  v6 = *(a3 + 64) & v5;
  v7 = (v4 + 63) >> 6;
  v8 = 0;
  v9 = 0;
  while (v6)
  {
    _BitScanForward64(&v10, v6);
    v6 &= v6 - 1;
    v11 = v10 | (v9 << 6);
LABEL_20:
    if (!*(*(*(a3 + 56) + 8 * v11) + 16))
    {
      a1[v11 >> 6] |= 1 << v11;
      if (__OFADD__(1, v8++))
      {
        BUG();
      }
    }
  }

  v12 = v9 + 1;
  if (__OFADD__(1, v9))
  {
    BUG();
  }

  if (v12 >= v7)
  {
    return specialized _NativeDictionary.extractDictionary(using:count:)(a1, a2, v8, a3);
  }

  v13 = *(a3 + 8 * v12 + 64);
  if (v13)
  {
    v14 = v9 + 1;
LABEL_19:
    _BitScanForward64(&v15, v13);
    v6 = v13 & (v13 - 1);
    v11 = v15 | (v14 << 6);
    v9 = v14;
    goto LABEL_20;
  }

  v14 = v9 + 2;
  if (v9 + 2 >= v7)
  {
    return specialized _NativeDictionary.extractDictionary(using:count:)(a1, a2, v8, a3);
  }

  v13 = *(a3 + 8 * v12 + 72);
  if (v13)
  {
    goto LABEL_19;
  }

  v14 = v9 + 3;
  if (v9 + 3 >= v7)
  {
    return specialized _NativeDictionary.extractDictionary(using:count:)(a1, a2, v8, a3);
  }

  v13 = *(a3 + 8 * v12 + 80);
  if (v13)
  {
    goto LABEL_19;
  }

  v14 = v9 + 4;
  if (v9 + 4 >= v7)
  {
    return specialized _NativeDictionary.extractDictionary(using:count:)(a1, a2, v8, a3);
  }

  v13 = *(a3 + 8 * v12 + 88);
  if (v13)
  {
    goto LABEL_19;
  }

  while (v9 + 5 < v7)
  {
    v13 = *(a3 + 8 * v9++ + 104);
    if (v13)
    {
      v14 = v9 + 4;
      goto LABEL_19;
    }
  }

  return specialized _NativeDictionary.extractDictionary(using:count:)(a1, a2, v8, a3);
}

void *specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a1;
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) != a3)
  {
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, [URL]>);
    v6 = static _DictionaryStorage.allocate(capacity:)(v5);
    v40 = a2;
    if (a2 <= 0)
    {
      v7 = 0;
    }

    else
    {
      v7 = *v44;
    }

    v8 = 0;
    v39 = v4;
    while (1)
    {
      v41 = v5;
      if (v7)
      {
        _BitScanForward64(&v9, v7);
        v43 = (v7 - 1) & v7;
        v42 = v8;
        v10 = v9 | (v8 << 6);
      }

      else
      {
        v11 = __OFADD__(1, v8);
        v12 = v8 + 1;
        if (v11)
        {
          BUG();
        }

        if (v12 >= v40)
        {
          return v6;
        }

        i = v44[v12];
        if (i)
        {
          v14 = v12;
        }

        else
        {
          v14 = v12 + 1;
          if (v12 + 1 >= v40)
          {
            return v6;
          }

          i = v44[v12 + 1];
          if (!i)
          {
            v14 = v12 + 2;
            if (v12 + 2 >= v40)
            {
              return v6;
            }

            i = v44[v12 + 2];
            if (!i)
            {
              v14 = v12 + 3;
              if (v12 + 3 >= v40)
              {
                return v6;
              }

              for (i = v44[v12 + 3]; !i; i = v44[v14])
              {
                v11 = __OFADD__(1, v14++);
                if (v11)
                {
                  BUG();
                }

                if (v14 >= v40)
                {
                  return v6;
                }
              }
            }
          }
        }

        _BitScanForward64(&v15, i);
        v43 = i & (i - 1);
        v10 = v15 | (v14 << 6);
        v42 = v14;
      }

      v16 = *(v4 + 48);
      v17 = *(v4 + 56);
      v18 = *(v16 + 16 * v10);
      v19 = *(v16 + 16 * v10 + 8);
      v20 = *(v17 + 8 * v10);
      Hasher.init(_seed:)(*(v6 + 40));

      v37 = v20;

      v38 = v18;
      String.hash(into:)(v36, v18);
      v21 = Hasher._finalize()() & ~(-1 << *(v6 + 32));
      v22 = v21 >> 6;
      v23 = ~*(v6 + 8 * (v21 >> 6) + 64) >> v21 << v21;
      if (v23)
      {
        _BitScanForward64(&v24, v23);
        v25 = v24 | v21 & 0xFFFFFFFFFFFFFFC0;
        v26 = v41;
      }

      else
      {
        v27 = (63 - (-1 << *(v6 + 32))) >> 6;
        v28 = 0;
        v26 = v41;
        do
        {
          v29 = v22 + 1;
          if (v22 + 1 == v27 && (v28 & 1) != 0)
          {
            BUG();
          }

          v22 = 0;
          if (v29 != v27)
          {
            v22 = v29;
          }

          v28 |= v29 == v27;
          v30 = *(v6 + 8 * v22 + 64);
        }

        while (v30 == -1);
        v31 = ~v30;
        v32 = 64;
        if (v31)
        {
          _BitScanForward64(&v32, v31);
        }

        v25 = v32 + (v22 << 6);
      }

      *(v6 + 8 * (v25 >> 6) + 64) |= 1 << v25;
      v33 = *(v6 + 48);
      v34 = 16 * v25;
      *(v33 + v34) = v38;
      *(v33 + v34 + 8) = v19;
      *(*(v6 + 56) + 8 * v25) = v37;
      ++*(v6 + 16);
      v11 = __OFSUB__(v26, 1);
      v5 = v26 - 1;
      v8 = v42;
      if (v11)
      {
        BUG();
      }

      v4 = v39;
      v7 = v43;
      if (!v5)
      {
        return v6;
      }
    }
  }

  return v4;
}

uint64_t specialized Dictionary.Keys.subscript.getter(int64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
    BUG();
  }

  v5 = *(a4 + 8 * (a1 >> 6) + 64);
  if (!_bittest64(&v5, a1))
  {
    BUG();
  }

  if (*(a4 + 36) != a2)
  {
    BUG();
  }

  v6 = *(*(a4 + 48) + 16 * a1);

  return v6;
}

uint64_t outlined destroy of Any?(uint64_t a1, uint64_t *a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(a2);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySS4text_SS5labeltG_SSs5NeverOTg50111_s8CreateML16MLTextClassifierV10evaluation2on5usingAA19MLClassifierMetricsVx_So7NLModelCtSlRzSS4text_SS5labelt7B24RtzlFZS2SAK_SSALt_tXEfU_So0R0CTf1cn_n(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = (a1 + 56);
    do
    {
      v15 = v3;
      v14 = v2;
      v5 = *(v4 - 2);
      v6 = *v4;

      v18 = v6;

      v7 = String._bridgeToObjectiveC()();
      v8 = [a2 predictedLabelForString:v7];
      v9 = v8;

      if (v9)
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)(v9);
        v17 = v10;
        v18;
        v5;
      }

      else
      {
        v18;
        v5;
        v16 = 0;
        v17 = 0xE000000000000000;
      }

      v3 = v15;
      v11 = v15[2];
      if (v15[3] >> 1 <= v11)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15[3] >= 2uLL, v11 + 1, 1);
        v3 = v15;
      }

      v3[2] = v11 + 1;
      v12 = 2 * v11;
      v3[v12 + 4] = v16;
      v3[v12 + 5] = v17;
      v4 += 4;
      v2 = v14 - 1;
    }

    while (v14 != 1);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySS4text_SS5labeltG_SSs5NeverOTg50111_s8CreateML16MLTextClassifierV10evaluation2on5usingAA19MLClassifierMetricsVx_So7NLModelCtSlRzSS4text_SS5labelt7B80RtzlFZS2SAK_SSALt_tcfu_33_9884fbf80a26ee2659924377586aa6b9SSAK_SSALtSSTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = (a1 + 56);
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
      v2 += 4;
      v1 = v6 - 1;
    }

    while (v6 != 1);
  }

  return _swiftEmptyArrayStorage;
}

void *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy11TabularData6ColumnVySSGAKG_SS4text_SS5labelts5NeverOTg5043_sSSSgAAS2SIgggoo_AA_AAtSS4text_SS5labelts5k145OIegnrzr_TR095_s8CreateML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  i = *(v1 - 8);
  v2 = *(i + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v71 = &v56;
  v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<Column<String>, Column<String>>);
  v5 = *(*(v67 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v69 = &v56;
  v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<Column<String>, Column<String>>.Iterator);
  v8 = *(*(v58 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v62 = &v56;
  v11 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  v61 = v1;
  v66 = v11;
  v65 = dispatch thunk of Sequence.underestimatedCount.getter(v1, v11);
  v12 = dispatch thunk of Sequence.underestimatedCount.getter(v1, v11);
  v13 = v65;
  if (v12 < v65)
  {
    v13 = v12;
  }

  v65 = v13;
  v64 = _swiftEmptyArrayStorage;
  v14 = 0;
  if (v13 > 0)
  {
    v14 = v13;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
  v68 = v64;
  v15 = v69;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1, v69, &demangling cache variable for type metadata for Zip2Sequence<Column<String>, Column<String>>);
  i = *(i + 32);
  v16 = v15;
  v17 = v61;
  (i)(v71, v16, v61);
  v18 = v62;
  v19 = v66;
  dispatch thunk of Sequence.makeIterator()(v17, v66);
  (i)(v71, v69 + *(v67 + 52), v17);
  v67 = v18 + *(v58 + 52);
  dispatch thunk of Sequence.makeIterator()(v17, v19);
  if (v65 < 0)
  {
    BUG();
  }

  v20 = v18;
  if (v65)
  {
    v21 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<String>>) + 36);
    v69 = (v18 + v21);
    i = v67 + v21;
    v71 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
    v22 = v17;
    do
    {
      dispatch thunk of Collection.endIndex.getter(v22, v71);
      if (*v69 == v57[0])
      {
        BUG();
      }

      v23 = v61;
      v24 = dispatch thunk of Collection.subscript.read(v57, v69, v61, v71);
      v63 = *v25;
      v66 = v25[1];

      v24(v57, 0);
      v26 = v71;
      dispatch thunk of Collection.formIndex(after:)(v69, v23, v71);
      dispatch thunk of Collection.endIndex.getter(v23, v26);
      if (*i == v57[0])
      {
        v66;
        BUG();
      }

      v27 = v71;
      v29 = dispatch thunk of Collection.subscript.read(v57, i, v23, v71);
      v30 = v28[1];
      v31 = 0xE000000000000000;
      if (v30)
      {
        v30 = *v28;
        v31 = v28[1];
      }

      v60 = v31;
      v59 = v30;

      v29(v57, 0);
      dispatch thunk of Collection.formIndex(after:)(i, v61, v27);
      v32 = v66;
      v33 = v63;
      if (!v66)
      {
        v33 = 0;
        v32 = 0xE000000000000000;
      }

      v34 = v68;
      v64 = v68;
      v35 = v68[2];
      v36 = v68[3];
      v37 = v35 + 1;
      if (v36 >> 1 <= v35)
      {
        v68 = (v35 + 1);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v36 >= 2, v37, 1);
        v37 = v68;
        v34 = v64;
      }

      v34[2] = v37;
      v38 = 4 * v35;
      v34[v38 + 4] = v33;
      v34[v38 + 5] = v32;
      v34[v38 + 6] = v59;
      v68 = v34;
      v34[v38 + 7] = v60;
      v39 = v65-- == 1;
      v22 = v61;
      v20 = v62;
    }

    while (!v39);
  }

  else
  {
    v22 = v17;
  }

  v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<String>>);
  v69 = (v20 + *(v65 + 36));
  v40 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  for (i = v40; ; v40 = i)
  {
    v41 = v40;
    dispatch thunk of Collection.endIndex.getter(v22, v40);
    if (*v69 == v57[0])
    {
      break;
    }

    v71 = dispatch thunk of Collection.subscript.read(v57, v69, v22, v41);
    v63 = *v42;
    v66 = v42[1];

    (v71)(v57, 0);
    dispatch thunk of Collection.formIndex(after:)(v69, v22, v41);
    v71 = *(v65 + 36);
    v43 = v67;
    dispatch thunk of Collection.endIndex.getter(v22, v41);
    if (*(v43 + v71) == v57[0])
    {
      v66;
      break;
    }

    v71 += v43;
    v45 = dispatch thunk of Collection.subscript.read(v57, v71, v22, v41);
    v46 = v44[1];
    v47 = 0xE000000000000000;
    if (v46)
    {
      v46 = *v44;
      v47 = v44[1];
    }

    v60 = v47;
    v59 = v46;

    v45(v57, 0);
    dispatch thunk of Collection.formIndex(after:)(v71, v22, i);
    v48 = v66;
    v49 = v63;
    if (!v66)
    {
      v49 = 0;
      v48 = 0xE000000000000000;
    }

    v50 = v68;
    v64 = v68;
    v51 = v68[2];
    v52 = v68[3];
    if (v52 >> 1 <= v51)
    {
      v63 = v49;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v52 >= 2, v51 + 1, 1);
      v49 = v63;
      v50 = v64;
    }

    v50[2] = v51 + 1;
    v53 = 4 * v51;
    v50[v53 + 4] = v49;
    v50[v53 + 5] = v48;
    v50[v53 + 6] = v59;
    v68 = v50;
    v50[v53 + 7] = v60;
    v22 = v61;
  }

  v54 = v62;
  *(v62 + *(v58 + 56)) = 1;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v54, &demangling cache variable for type metadata for Zip2Sequence<Column<String>, Column<String>>.Iterator);
  return v68;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned Int) -> (@unowned Unmanaged<CFDictionaryRef>?)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);

  v5 = v4(a2, a3);

  return v5;
}

void thunk for @escaping @callee_guaranteed (@guaranteed CFStringRef?, @unowned UnsafeMutablePointer<Bool>?) -> ()(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);

  v5 = a2;
  v4(a2, a3);
}

char *_s8CreateML16MLTextClassifierV06createD016trainingExamples010validatingG015modelParametersSo7NLModelCx_q_AC05ModelJ0VtKSlRzSlR_SS4text_SS5labelt7ElementRtzSSAL_SSAMtANRt_r0_lFZSaySSAL_SSAMtG_AQTt2g5(uint64_t a1, char *a2, uint64_t a3)
{
  TrainedModelWithData = a2;
  v5 = static MLTextClassifier.buildOptions(_:)(a3);
  if (!v3)
  {
    v38 = v5;
    v6 = _swiftEmptyArrayStorage;
    v36 = _swiftEmptyArrayStorage;
    v31 = *(a1 + 16);
    if (v31)
    {
      aBlock = _swiftEmptyArrayStorage;
      v7 = v31;
      specialized ContiguousArray.reserveCapacity(_:)(v31);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSDictionary, NSDictionary_ptr);
      v8 = (a1 + 56);
      do
      {
        v40 = *(v8 - 3);
        v32 = *(v8 - 2);
        v34 = *(v8 - 1);
        v9 = *v8;
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(Any, Any)>);
        v11 = swift_allocObject(v10, 160, 7);
        v11[2] = 2;
        v11[3] = 4;
        v11[7] = &type metadata for String;
        v11[4] = 0x6C6562614CLL;
        v11[5] = 0xE500000000000000;
        v11[11] = &type metadata for String;
        v11[8] = v34;
        v11[9] = v9;
        v11[15] = &type metadata for String;
        v11[12] = 0x676E69727453;
        v11[13] = 0xE600000000000000;
        v11[19] = &type metadata for String;
        v11[16] = v40;
        v11[17] = v32;

        NSDictionary.init(dictionaryLiteral:)(v11);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v11);
        v12 = aBlock[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v12);
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v12);
        specialized ContiguousArray._endMutation()(v12);
        v8 += 4;
        --v7;
      }

      while (v7);
      v36 = aBlock;
      v6 = _swiftEmptyArrayStorage;
      TrainedModelWithData = a2;
    }

    v39 = *(TrainedModelWithData + 2);
    if (v39)
    {
      aBlock = _swiftEmptyArrayStorage;
      v13 = v39;
      specialized ContiguousArray.reserveCapacity(_:)(v39);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSDictionary, NSDictionary_ptr);
      v14 = (TrainedModelWithData + 56);
      do
      {
        v41 = *(v14 - 3);
        v33 = *(v14 - 2);
        v35 = *(v14 - 1);
        v15 = *v14;
        v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(Any, Any)>);
        v17 = swift_allocObject(v16, 160, 7);
        v17[2] = 2;
        v17[3] = 4;
        v17[7] = &type metadata for String;
        v17[4] = 0x6C6562614CLL;
        v17[5] = 0xE500000000000000;
        v17[11] = &type metadata for String;
        v17[8] = v35;
        v17[9] = v15;
        v17[15] = &type metadata for String;
        v17[12] = 0x676E69727453;
        v17[13] = 0xE600000000000000;
        v17[19] = &type metadata for String;
        v17[16] = v41;
        v17[17] = v33;

        NSDictionary.init(dictionaryLiteral:)(v17);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v17);
        v18 = aBlock[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v18);
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v18);
        specialized ContiguousArray._endMutation()(v18);
        v14 += 4;
        --v13;
      }

      while (v13);
      v6 = aBlock;
    }

    v48 = 0;
    v19 = v36;
    if ((((v36 & 0x4000000000000001) == 0) & swift_isUniquelyReferenced_nonNull_bridgeObject(v36)) == 0)
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v36);
    }

    v37 = v19;
    v20 = v19 & 0xFFFFFFFFFFFFF8;
    if ((((v6 & 0x4000000000000001) == 0) & swift_isUniquelyReferenced_nonNull_bridgeObject(v6)) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    }

    v46 = implicit closure #1 in closure #1 in closure #3 in static MLWordTagger.createWordTaggerModel<A, B>(trainingExamples:validatingExamples:modelParameters:);
    v47 = 0;
    aBlock = _NSConcreteStackBlock;
    v43 = 1107296256;
    v44 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned Int) -> (@unowned Unmanaged<CFDictionaryRef>?);
    v45 = &block_descriptor_8;
    v21 = _Block_copy(&aBlock);
    v46 = MLBoostedTreeRegressor.ModelParameters.maxDepth.modify;
    v47 = 0;
    v22 = v21;
    aBlock = _NSConcreteStackBlock;
    v43 = 1107296256;
    v44 = thunk for @escaping @callee_guaranteed (@guaranteed CFStringRef?, @unowned UnsafeMutablePointer<Bool>?) -> ();
    v45 = &block_descriptor_3;
    v30 = _Block_copy(&aBlock);
    TrainedModelWithData = NLPClassifierModelCreateTrainedModelWithData(v38, v31, v39, v20 + 32, (v6 & 0xFFFFFFFFFFFFF8) + 32);
    _Block_release(v30);
    _Block_release(v22);
    v37;
    v23 = v48;
    if (v48)
    {
      v24 = type metadata accessor for CFErrorRef(0);
      v25 = lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef();
      TrainedModelWithData = swift_allocError(v24, v25, 0, 0);
      *v26 = v23;
      swift_willThrow();
      v6;
    }

    else
    {
      if (!TrainedModelWithData)
      {
        TrainedModelWithData = "TextClassifier\n\nParameters\n" + 0x8000000000000000;
        v28 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v28, 0, 0);
        *v29 = 0xD00000000000002DLL;
        *(v29 + 8) = "TextClassifier\n\nParameters\n" + 0x8000000000000000;
        *(v29 + 16) = 0;
        *(v29 + 32) = 0;
        *(v29 + 48) = 0;
        swift_willThrow();
      }

      v6;
    }
  }

  return TrainedModelWithData;
}

void (*MLTextClassifier.model.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + 16);
  a1[2] = v3;
  *a1 = v3;
  v3;
  return MLWordTagger.model.modify;
}

uint64_t MLTextClassifier.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLTextClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 28), v2, type metadata accessor for MLTextClassifier.ModelParameters);
}

uint64_t type metadata accessor for MLTextClassifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLTextClassifier;
  if (!type metadata singleton initialization cache for MLTextClassifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLTextClassifier);
  }

  return result;
}

uint64_t MLTextClassifier.trainingMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLTextClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 32), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLTextClassifier.validationMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLTextClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 36), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLTextClassifier.init(trainingData:parameters:)(uint64_t a1, uint64_t a2, double a3)
{
  v12 = a2;
  v11 = v3;
  v5 = *(*(type metadata accessor for MLTextClassifier.ModelParameters(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = static _TextUtilities.getTextLabeledDictionary(from:)(a1, a3);
  if (v4)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLTextClassifier.ModelParameters);
    return outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLTextClassifier.DataSource);
  }

  else
  {
    v10 = v8;
    outlined init with copy of MLTrainingSessionParameters(v12, &v11, type metadata accessor for MLTextClassifier.ModelParameters);
    MLTextClassifier.init(trainingData:parameters:)(v10, &v11);
    outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLTextClassifier.ModelParameters);
    return outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLTextClassifier.DataSource);
  }
}

uint64_t MLTextClassifier.init(trainingData:parameters:)(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v15[1] = v2;
  v4 = *(*(type metadata accessor for MLTextClassifier.ModelParameters(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v16 = v15;
  v18 = type metadata accessor for DataFrame(0);
  v17 = *(v18 - 8);
  v7 = *(v17 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = alloca(v7);
  v11 = alloca(v7);
  specialized generateTextDataFrame<A>(_:textColumn:labelColumn:using:)(a1, 1954047348, 0xE400000000000000, 0x6C6562616CLL, 0xE500000000000000, v12);
  if (v3)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLTextClassifier.ModelParameters);
    return a1;
  }

  else
  {
    a1;
    (*(v17 + 16))(v15, v15, v18);
    v14 = v16;
    outlined init with copy of MLTrainingSessionParameters(v19, v16, type metadata accessor for MLTextClassifier.ModelParameters);
    MLTextClassifier.init(trainingData:textColumn:labelColumn:parameters:)(v15, 1954047348, 0xE400000000000000, 0x6C6562616CLL, 0xE500000000000000, v14);
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLTextClassifier.ModelParameters);
    return (*(v17 + 8))(v15, v18);
  }
}

uint64_t MLTextClassifier.init(trainingData:textColumn:labelColumn:parameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v166 = a4;
  v171 = a3;
  v8 = v6;
  v164 = a2;
  v165 = v7;
  v168 = a6;
  v175 = a5;
  v152 = type metadata accessor for DataFrame.Rows(0);
  v151 = *(v152 - 8);
  v9 = *(v151 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v153 = &v142;
  v149 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
  v12 = *(*(v149 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v148 = &v142;
  v15 = *(*(type metadata accessor for MLTextClassifier.FeatureExtractorType(0) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v150 = &v142;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v147 = &v142;
  v157 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<Column<String>, Column<String>>);
  v20 = *(*(v157 - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v158 = &v142;
  v169 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
  v23 = *(*(v169 - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v145 = &v142;
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v146 = &v142;
  v155 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v161 = *(v155 - 8);
  v29 = *(v161 + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  ML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n = &v142;
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>) - 8) + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v156 = &v142;
  v35 = type metadata accessor for DataFrame(0);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v38 = alloca(v37);
  v39 = alloca(v37);
  v162 = &v142;
  v40 = alloca(v37);
  v41 = alloca(v37);
  v170 = &v142;
  v167 = a1;
  v172 = v35;
  v173 = v36;
  (*(v36 + 16))(&v142, a1);
  v42 = type metadata accessor for MLTextClassifier(0);
  v43 = v8 + *(v42 + 28);
  outlined init with copy of MLTrainingSessionParameters(v168, v43, type metadata accessor for MLTextClassifier.ModelParameters);
  MLTextClassifier.ModelParameters.validateRevision()();
  v165 = v43;
  if (v44)
  {
    goto LABEL_5;
  }

  v163 = v42;
  v159 = v8;
  v45 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  v46 = *(v45 + 36);
  if (!*(v43 + v46 + 8) && *(v43 + v46) <= 0)
  {
    v54 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v54, 0, 0);
    *v55 = 0xD000000000000036;
    *(v55 + 8) = "bset of the training labels." + 0x8000000000000000;
    v51 = v173;
    *(v55 + 16) = 0;
    *(v55 + 32) = 0;
    *(v55 + 48) = 0;
    swift_willThrow();
    v49 = v172;
    v50 = v171;
    goto LABEL_6;
  }

  MLTextClassifier.ModelParameters.validateCustomEmbeddingURL()();
  if (v48)
  {
LABEL_5:
    v49 = v172;
    v50 = v171;
    v51 = v173;
LABEL_6:
    v50;
    v175;
    v52 = *(v51 + 8);
    v52(v167, v49);
    v52(v170, v49);
    outlined destroy of MLActivityClassifier.ModelParameters(v168, type metadata accessor for MLTextClassifier.ModelParameters);
    return outlined destroy of MLActivityClassifier.ModelParameters(v165, type metadata accessor for MLTextClassifier.ModelParameters);
  }

  static MLTextClassifier.validateDataFrame(_:textColumn:labelColumn:)(v170, v164, v171, v166, v175);
  v176 = 0;
  DataFrame.subscript.getter(v166, v175, &type metadata for String);
  *&v144[0] = 0;
  *(&v144[0] + 1) = 0xE000000000000000;
  v56 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  v57 = v155;
  v154 = v56;
  v58 = ML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n;
  OptionalColumnProtocol.filled(with:)(v144, v155, v56);
  v161 = *(v161 + 8);
  (v161)(v58, v57);
  v59 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_11TabularData12FilledColumnVyAD0E0VySSGGTt0g5();
  v60 = v45;
  v61 = v59;
  v159[1].super.isa = v59;
  v160 = v60;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v165 + *(v60 + 24), &v142, &demangling cache variable for type metadata for Any?);
  if (!v143)
  {
    BUG();
  }

  outlined init with take of Any(&v142, v144);

  v62 = v145;
  swift_dynamicCast(v145, v144, &type metadata for Any + 8, v169, 7);
  v63 = v146;
  v64 = v171;
  v65 = v176;
  MLTextClassifier.ModelParameters.ValidationData.createValidationData(trainingData:textColumn:labelColumn:)(v170, v164, v171, v166, v175, v47);
  v176 = v65;
  if (v65)
  {
    v61;
    v64;
    v175;
    v66 = *(v173 + 8);
    v67 = v172;
    v66(v167, v172);
    outlined destroy of MLActivityClassifier.ModelParameters(v62, type metadata accessor for MLTextClassifier.ModelParameters.ValidationData);
    v66(v170, v67);
    outlined destroy of MLActivityClassifier.ModelParameters(v168, type metadata accessor for MLTextClassifier.ModelParameters);
    v68 = v61;
LABEL_28:
    v68;
    return outlined destroy of MLActivityClassifier.ModelParameters(v165, type metadata accessor for MLTextClassifier.ModelParameters);
  }

  v169 = v61;
  outlined destroy of MLActivityClassifier.ModelParameters(v62, type metadata accessor for MLTextClassifier.ModelParameters.ValidationData);
  v69 = v63;
  v70 = v63;
  v71 = v172;
  if (__swift_getEnumTagSinglePayload(v69, 1, v172) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v70, &demangling cache variable for type metadata for DataFrame?);
    ML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n = _swiftEmptyArrayStorage;
    v72 = v175;
    v73 = v164;
    v74 = v158;
  }

  else
  {
    (*(v173 + 32))(v162, v70, v71);
    v75 = ML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n;
    DataFrame.subscript.getter(v166, v175, &type metadata for String);
    *&v144[0] = 0;
    *(&v144[0] + 1) = 0xE000000000000000;
    v76 = v155;
    OptionalColumnProtocol.filled(with:)(v144, v155, v154);
    (v161)(v75, v76);
    v77 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_11TabularData12FilledColumnVyAD0E0VySSGGTt0g5();
    LOBYTE(v76) = v77;
    v78 = v169;
    LOBYTE(v75) = specialized Set.isSubset(of:)(v169, v77);
    v76;
    if ((v75 & 1) == 0)
    {
      v78;
      v171;
      v175;
      v98 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v98, 0, 0);
      *v99 = 0xD00000000000003ELL;
      *(v99 + 8) = " table is empty." + 0x8000000000000000;
      *(v99 + 16) = 0;
      *(v99 + 32) = 0;
      *(v99 + 48) = 2;
      swift_willThrow();
      v100 = *(v173 + 8);
      v101 = v172;
      v100(v167, v172);
      v100(v162, v101);
      v100(v170, v101);
      outlined destroy of MLActivityClassifier.ModelParameters(v168, type metadata accessor for MLTextClassifier.ModelParameters);
      v68 = v78;
      goto LABEL_28;
    }

    v79 = v158;
    v80 = v164;
    v81 = v162;
    DataFrame.subscript.getter(v164, v171, &type metadata for String);
    DataFrame.subscript.getter(v166, v175, &type metadata for String);
    v74 = v79;
    v82 = v176;
    ML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy11TabularData6ColumnVySSGAKG_SS4text_SS5labelts5NeverOTg5043_sSSSgAAS2SIgggoo_AA_AAtSS4text_SS5labelts5k145OIegnrzr_TR095_s8CreateML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n(v79);
    v176 = v82;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v79, &demangling cache variable for type metadata for Zip2Sequence<Column<String>, Column<String>>);
    (*(v173 + 8))(v81, v172);
    v73 = v80;
    v72 = v175;
  }

  DataFrame.subscript.getter(v73, v171, &type metadata for String);
  DataFrame.subscript.getter(v166, v72, &type metadata for String);
  v83 = v176;
  v84 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy11TabularData6ColumnVySSGAKG_SS4text_SS5labelts5NeverOTg5043_sSSSgAAS2SIgggoo_AA_AAtSS4text_SS5labelts5k145OIegnrzr_TR095_s8CreateML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n(v74);
  v176 = v83;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v74, &demangling cache variable for type metadata for Zip2Sequence<Column<String>, Column<String>>);
  v171;
  v72;
  v85 = v165;
  v86 = v148;
  outlined init with copy of MLTrainingSessionParameters(v165, v148, type metadata accessor for MLTextClassifier.ModelAlgorithmType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v86, v149);
  v88 = v147;
  v175 = v84;
  if (EnumCaseMultiPayload != 2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v86, type metadata accessor for MLTextClassifier.ModelAlgorithmType);
    goto LABEL_26;
  }

  outlined init with take of MLTextClassifier.FeatureExtractorType(v86, v147);
  v89 = v176;
  ML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n(v84);
  v91 = *(v85 + *(v160 + 20));
  if (v91)
  {
    v176 = v89;
    v92 = v91;
  }

  else
  {
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NLLanguageRecognizer, NLLanguageRecognizer_ptr);
    v92 = static NLLanguageRecognizer.dominantLanguage(for:)(ML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n, &lazy cache variable for type metadata for NLLanguageRecognizer);
    v176 = v89;
    if (v89)
    {
      ML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n;
      v116 = v169;
      v169;
      v175;
      ML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n;
      v117 = *(v173 + 8);
      v118 = v172;
      v117(v167, v172);
      outlined destroy of MLActivityClassifier.ModelParameters(v88, type metadata accessor for MLTextClassifier.FeatureExtractorType);
      v117(v170, v118);
      outlined destroy of MLActivityClassifier.ModelParameters(v168, type metadata accessor for MLTextClassifier.ModelParameters);
      v68 = v116;
      goto LABEL_28;
    }
  }

  v171 = v92;
  ML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n;
  v93 = v150;
  outlined init with copy of MLTrainingSessionParameters(v88, v150, type metadata accessor for MLTextClassifier.FeatureExtractorType);
  v94 = NLModelEmbeddingType.init(_:)(v93);
  v95 = static String._unconditionallyBridgeFromObjectiveC(_:)(v94);
  v97 = v96;
  if (!(v95 ^ 0x6D6F74737543 | v96 ^ 0xE600000000000000))
  {
    v96;
LABEL_25:
    outlined destroy of MLActivityClassifier.ModelParameters(v88, type metadata accessor for MLTextClassifier.FeatureExtractorType);

    goto LABEL_26;
  }

  v102 = _stringCompareWithSmolCheck(_:_:expecting:)(v95, v96, 0x6D6F74737543, 0xE600000000000000, 0);
  v97;
  if (v102)
  {
    goto LABEL_25;
  }

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NLEmbedding, NLEmbedding_ptr);
  v126 = v171;
  v127 = v176;
  static NLEmbedding.requestIfNotPresent(embeddingType:language:)(v94, v171);
  v176 = v127;
  if (v127)
  {
    ML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n;
    v169;

    v175;
    v128 = *(v173 + 8);
    v129 = v172;
    v128(v167, v172);
    outlined destroy of MLActivityClassifier.ModelParameters(v88, type metadata accessor for MLTextClassifier.FeatureExtractorType);
    v128(v170, v129);
    outlined destroy of MLActivityClassifier.ModelParameters(v168, type metadata accessor for MLTextClassifier.ModelParameters);
    v68 = v169;
    goto LABEL_28;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v88, type metadata accessor for MLTextClassifier.FeatureExtractorType);

LABEL_26:
  v103 = v176;
  v104 = ML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n;

  ML16MLTextClassifierV06createD016trainingExamples010validatingG015modelParametersSo7NLModelCx_q_AC05ModelJ0VtKSlRzSlR_SS4text_SS5labelt7ElementRtzSSAL_SSAMtANRt_r0_lFZSaySSAL_SSAMtG_AQTt2g5 = _s8CreateML16MLTextClassifierV06createD016trainingExamples010validatingG015modelParametersSo7NLModelCx_q_AC05ModelJ0VtKSlRzSlR_SS4text_SS5labelt7ElementRtzSSAL_SSAMtANRt_r0_lFZSaySSAL_SSAMtG_AQTt2g5(v175, v104, v165);
  v106 = v172;
  ML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n = v104;
  if (v103)
  {
    v104;
    v107 = v169;
    v169;
    v108 = *(v173 + 8);
    v108(v167, v106);
    ML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n;
    v108(v170, v106);
    outlined destroy of MLActivityClassifier.ModelParameters(v168, type metadata accessor for MLTextClassifier.ModelParameters);
    v107;
    v68 = v175;
    goto LABEL_28;
  }

  v109 = ML16MLTextClassifierV06createD016trainingExamples010validatingG015modelParametersSo7NLModelCx_q_AC05ModelJ0VtKSlRzSlR_SS4text_SS5labelt7ElementRtzSSAL_SSAMtANRt_r0_lFZSaySSAL_SSAMtG_AQTt2g5;
  v104;
  v110 = v159;
  v159->super.isa = v109;
  v111 = v109;
  v112.super.isa = NLModel.asCoreML()().super.isa;
  if (v113)
  {
    v169;
    ML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n;

    v175;
    v114 = *(v173 + 8);
    v115 = v172;
    v114(v167, v172);
    v114(v170, v115);
    outlined destroy of MLActivityClassifier.ModelParameters(v168, type metadata accessor for MLTextClassifier.ModelParameters);
    v169;

    return outlined destroy of MLActivityClassifier.ModelParameters(v165, type metadata accessor for MLTextClassifier.ModelParameters);
  }

  v110[2].super.isa = v112.super.isa;
  v119 = v175;
  _s8CreateML16MLTextClassifierV10evaluation2on5usingAA19MLClassifierMetricsVx_So7NLModelCtSlRzSS4text_SS5labelt7ElementRtzlFZSaySSAK_SSALtG_Tt2g5(v175, v111);
  v119;
  v120 = ML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n[2] == 0;
  v176 = 0;
  if (v120)
  {

    ML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n;
    v130 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v131 = swift_allocError(&type metadata for MLCreateError, v130, 0, 0);
    *v132 = 0xD00000000000001CLL;
    *(v132 + 8) = "CreateML/MLClassifier.swift" + 0x8000000000000000;
    *(v132 + 16) = 0;
    *(v132 + 32) = 0;
    *(v132 + 48) = 2;
    v133 = (v110 + *(v163 + 36));
    *v133 = v131;
    v123 = v133;
    v122 = type metadata accessor for MLClassifierMetrics.Contents(0);
    swift_storeEnumTagMultiPayload(v133, v122, 2);
  }

  else
  {
    v121 = ML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n;
    v122 = v111;
    _s8CreateML16MLTextClassifierV10evaluation2on5usingAA19MLClassifierMetricsVx_So7NLModelCtSlRzSS4text_SS5labelt7ElementRtzlFZSaySSAK_SSALtG_Tt2g5(ML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n, v111);
    v121;
    v123 = v111;
  }

  v134 = v170;
  v135 = v153;
  DataFrame.rows.getter(v123, v122, v124, v125);
  v136 = DataFrame.Rows.count.getter();
  (*(v151 + 8))(v135, v152);
  v137 = *(v169 + 16);
  v169;
  v138 = v134;
  v139 = v168;
  static MLTextClassifier.reportAnalytics(trainingExampleCount:labelCount:algorithm:language:)(v136, v137, v168, *(v168 + *(v160 + 20)));
  v140 = *(v173 + 8);
  v141 = v172;
  v140(v167, v172);
  v140(v138, v141);
  return outlined destroy of MLActivityClassifier.ModelParameters(v139, type metadata accessor for MLTextClassifier.ModelParameters);
}

uint64_t static MLTextClassifier.validateDataFrame(_:textColumn:labelColumn:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v41._object = v5;
  v40 = a5;
  v41._countAndFlagsBits = a4;
  v43 = type metadata accessor for AnyColumn(0);
  v39._object = *(v43 - 8);
  v8 = *(v39._object + 8);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v42 = &v35;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v39._countAndFlagsBits = a2;
  v13._countAndFlagsBits = a2;
  v38 = a3;
  v13._object = a3;
  v44 = a1;
  v14 = DataFrame.indexOfColumn(_:)(v13);
  if (v14.is_nil)
  {
    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v15._object = " natural language classifier." + 0x8000000000000000;
    v15._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v15);
    v15._countAndFlagsBits = v39._countAndFlagsBits;
    v15._object = v38;
    String.append(_:)(v15);
    v16._object = "Text column name '" + 0x8000000000000000;
    v16._countAndFlagsBits = 0xD000000000000024;
LABEL_6:
    String.append(_:)(v16);
    v25 = v36;
    v26 = v37;
    v27 = static os_log_type_t.error.getter(0xD000000000000024);
    goto LABEL_10;
  }

  value = v14.value;
  DataFrame.subscript.getter(v14.value);
  v18 = AnyColumn.wrappedElementType.getter(value);
  v19 = *(v39._object + 1);
  v19(&v35, v43);
  if (!swift_dynamicCastMetatype(v18, &type metadata for String))
  {
    v26 = " in the data frame. " + 0x8000000000000000;
    v27 = static os_log_type_t.error.getter(v18);
    v25 = 0xD00000000000002DLL;
    goto LABEL_10;
  }

  countAndFlagsBits = v41._countAndFlagsBits;
  v21._countAndFlagsBits = v41._countAndFlagsBits;
  v22 = v40;
  v21._object = v40;
  v23 = DataFrame.indexOfColumn(_:)(v21);
  if (v23.is_nil)
  {
    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    v24._object = " not contain string elements." + 0x8000000000000000;
    v24._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v24);
    v24._countAndFlagsBits = countAndFlagsBits;
    v24._object = v22;
    String.append(_:)(v24);
    v16._object = "Text column name '" + 0x8000000000000000;
    v16._countAndFlagsBits = 0xD000000000000024;
    goto LABEL_6;
  }

  v28 = v23.value;
  v29 = v42;
  DataFrame.subscript.getter(v23.value);
  v30 = AnyColumn.wrappedElementType.getter(v28);
  v19(v29, v43);
  result = swift_dynamicCastMetatype(v30, &type metadata for String);
  if (result)
  {
    return result;
  }

  v26 = "Label column name '" + 0x8000000000000000;
  v27 = static os_log_type_t.error.getter(v30);
  v25 = 0xD00000000000002ELL;
LABEL_10:
  v32._countAndFlagsBits = v25;
  v32._object = v26;
  log(_:type:)(v32, v27);
  v33 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v33, 0, 0);
  *v34 = v25;
  *(v34 + 8) = v26;
  *(v34 + 16) = 0;
  *(v34 + 32) = 0;
  *(v34 + 48) = 1;
  return swift_willThrow();
}

uint64_t _s8CreateML16MLTextClassifierV10evaluation2on5usingAA19MLClassifierMetricsVx_So7NLModelCtSlRzSS4text_SS5labelt7ElementRtzlFZSaySSAK_SSALtG_Tt2g5(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = a2;
  ML16MLTextClassifierV10evaluation2on5usingAA19MLClassifierMetricsVx_So7NLModelCtSlRzSS4text_SS5labelt7B24RtzlFZS2SAK_SSALt_tXEfU_So0R0CTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySS4text_SS5labeltG_SSs5NeverOTg50111_s8CreateML16MLTextClassifierV10evaluation2on5usingAA19MLClassifierMetricsVx_So7NLModelCtSlRzSS4text_SS5labelt7B24RtzlFZS2SAK_SSALt_tXEfU_So0R0CTf1cn_n(a1, v4);
  ML16MLTextClassifierV10evaluation2on5usingAA19MLClassifierMetricsVx_So7NLModelCtSlRzSS4text_SS5labelt7B80RtzlFZS2SAK_SSALt_tcfu_33_9884fbf80a26ee2659924377586aa6b9SSAK_SSALtSSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySS4text_SS5labeltG_SSs5NeverOTg50111_s8CreateML16MLTextClassifierV10evaluation2on5usingAA19MLClassifierMetricsVx_So7NLModelCtSlRzSS4text_SS5labelt7B80RtzlFZS2SAK_SSALt_tcfu_33_9884fbf80a26ee2659924377586aa6b9SSAK_SSALtSSTf3nnnpk_nTf1cn_n(a1);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v6 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
  ClassificationMetrics.init<A, B>(_:_:)(&ML16MLTextClassifierV10evaluation2on5usingAA19MLClassifierMetricsVx_So7NLModelCtSlRzSS4text_SS5labelt7B24RtzlFZS2SAK_SSALt_tXEfU_So0R0CTf1cn_n, &ML16MLTextClassifierV10evaluation2on5usingAA19MLClassifierMetricsVx_So7NLModelCtSlRzSS4text_SS5labelt7B80RtzlFZS2SAK_SSALt_tcfu_33_9884fbf80a26ee2659924377586aa6b9SSAK_SSALtSSTf3nnnpk_nTf1cn_n, &type metadata for String, v5, v5, &protocol witness table for String, v6, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  swift_storeEnumTagMultiPayload(v3, v7, 0);
  v8 = type metadata accessor for MLClassifierMetrics.Contents(0);
  return swift_storeEnumTagMultiPayload(v3, v8, 0);
}

char static MLTextClassifier.reportAnalytics(trainingExampleCount:labelCount:algorithm:language:)(int a1, int a2, uint64_t a3, uint64_t a4)
{
  result = AnalyticsReporter.init()();
  if ((result & 1) == 0)
  {
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_textClassifier, __PAIR128__((" training session" + 0x8000000000000000), 0xD000000000000011), a1);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_textClassifier, __PAIR128__(("Number of Images" + 0x8000000000000000), 0xD000000000000011), a2);
    v6._countAndFlagsBits = MLTextClassifier.ModelAlgorithmType.description.getter();
    object = v6._object;
    AnalyticsReporter.reportParameterSettings(model:parameterName:parameterValue:)(CreateML_ModelType_textClassifier, __PAIR128__(0xE90000000000006DLL, 0x687469726F676C41), v6);
    object;
    if (a4)
    {
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)(a4);
      v10 = v9;
    }

    else
    {
      v10 = "formers Text Embedding" + 0x8000000000000000;
      v8 = 0xD000000000000014;
    }

    AnalyticsReporter.reportParameterSettings(model:parameterName:parameterValue:)(CreateML_ModelType_textClassifier, __PAIR128__(0xE800000000000000, 0x65676175676E614CLL), __PAIR128__(v10, v8));
    return v10;
  }

  return result;
}

uint64_t MLTextClassifier.init(trainingData:textColumn:labelColumn:parameters:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v18 = a4;
  v19 = a3;
  v22 = v6;
  v20 = a2;
  v21 = a5;
  v8 = *(*(type metadata accessor for MLTextClassifier.ModelParameters(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = *(*(type metadata accessor for DataFrame(0) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v14 = *(a1 + 8);
  v16 = *a1;
  v17 = v14;
  DataFrame.init(_:)(&v16);
  outlined init with copy of MLTrainingSessionParameters(a6, &v16, type metadata accessor for MLTextClassifier.ModelParameters);
  MLTextClassifier.init(trainingData:textColumn:labelColumn:parameters:)(&v16, v20, v19, v18, v21, &v16);
  return outlined destroy of MLActivityClassifier.ModelParameters(a6, type metadata accessor for MLTextClassifier.ModelParameters);
}

void *unpackLabeledTexts(_:)(uint64_t a1)
{
  v1 = a1;
  v2 = 1 << *(a1 + 32);
  v3 = ~(-1 << v2);
  if (v2 >= 64)
  {
    v3 = -1;
  }

  v4 = *(a1 + 64) & v3;
  v45 = (v2 + 63) >> 6;

  v5 = _swiftEmptyArrayStorage;
  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v4)
    {
LABEL_5:
      v8 = v6;
      goto LABEL_20;
    }

    v9 = v6 + 1;
    if (__OFADD__(1, v6))
    {
      BUG();
    }

    if (v9 >= v45)
    {
      goto LABEL_56;
    }

    v4 = *(v1 + 8 * v9 + 64);
    if (v4)
    {
      v8 = v6 + 1;
      goto LABEL_20;
    }

    v8 = v6 + 2;
    if (v6 + 2 >= v45)
    {
      goto LABEL_56;
    }

    v4 = *(v1 + 8 * v9 + 72);
    if (!v4)
    {
      v8 = v6 + 3;
      if (v6 + 3 >= v45)
      {
        goto LABEL_56;
      }

      v4 = *(v1 + 8 * v9 + 80);
      if (!v4)
      {
        v8 = v6 + 4;
        if (v6 + 4 >= v45)
        {
          goto LABEL_56;
        }

        v4 = *(v1 + 8 * v9 + 88);
        if (!v4)
        {
          v8 = v6 + 5;
          if (v6 + 5 >= v45)
          {
            goto LABEL_56;
          }

          v4 = *(v1 + 8 * v9 + 96);
          if (!v4)
          {
            v8 = v6 + 6;
            if (v6 + 6 >= v45)
            {
              goto LABEL_56;
            }

            v4 = *(v1 + 8 * v9 + 104);
            if (!v4)
            {
              break;
            }
          }
        }
      }
    }

LABEL_20:
    v40 = v7;
    v44 = v5;
    v41 = v4;
    _BitScanForward64(&v10, v4);
    v42 = v8;
    v11 = v10 | (v8 << 6);
    v12 = *(*(*(v1 + 56) + 8 * v11) + 16);
    v43 = *(*(v1 + 56) + 8 * v11);
    if (v12)
    {
      v13 = 16 * v11;
      v14 = *(v1 + 48);
      v15 = *(v14 + v13);
      v16 = *(v14 + v13 + 8);

      v17 = static Array._allocateBufferUninitialized(minimumCapacity:)(v12, &type metadata for String);
      v18 = v17;
      v17[2] = v12;
      v17[4] = v15;
      v17[5] = v16;
      if (v12 != 1)
      {
        v19 = v17 + 6;
        v20 = v12 - 2;
        while (1)
        {
          *v19 = v15;
          v19[1] = v16;
          if (v20-- == 0)
          {
            break;
          }

          v19 += 2;
        }
      }
    }

    else
    {

      v18 = _swiftEmptyArrayStorage;
    }

    v22 = v18[2];
    v23 = *(v44 + 16);
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      BUG();
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v44);
    v26 = v44;
    if (!isUniquelyReferenced_nonNull_native || *(v44 + 24) >> 1 < v24)
    {
      if (v23 > v24)
      {
        v24 = v23;
      }

      v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v24, 1, v44);
    }

    if (v18[2])
    {
      v27 = v26[2];
      if ((v26[3] >> 1) - v27 < v22)
      {
        BUG();
      }

      v5 = v26;
      swift_arrayInitWithCopy(&v26[2 * v27 + 4], (v18 + 4), v22, &type metadata for String);
      if (v22)
      {
        v28 = __OFADD__(v5[2], v22);
        v29 = v5[2] + v22;
        if (v28)
        {
          BUG();
        }

        v5[2] = v29;
      }
    }

    else
    {
      v5 = v26;
      if (v22)
      {
        BUG();
      }
    }

    v18;
    v30 = *(v43 + 16);
    v7 = v40;
    v31 = *(v40 + 16);
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      BUG();
    }

    v33 = swift_isUniquelyReferenced_nonNull_native(v40);
    if (!v33 || *(v40 + 24) >> 1 < v32)
    {
      if (v31 > v32)
      {
        v32 = v31;
      }

      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v33, v32, 1, v40);
    }

    v1 = a1;
    if (*(v43 + 16))
    {
      v34 = v7[2];
      if ((v7[3] >> 1) - v34 < v30)
      {
        BUG();
      }

      swift_arrayInitWithCopy(&v7[2 * v34 + 4], v43 + 32, v30, &type metadata for String);
      if (v30)
      {
        v28 = __OFADD__(v7[2], v30);
        v35 = v7[2] + v30;
        if (v28)
        {
          BUG();
        }

        v7[2] = v35;
      }
    }

    else if (v30)
    {
      BUG();
    }

    v4 = (v41 - 1) & v41;
    v43;
    v6 = v42;
  }

  v36 = v6 + 7;
  while (v36 < v45)
  {
    v4 = *(v1 + 8 * v36++ + 64);
    if (v4)
    {
      v6 = v36 - 1;
      goto LABEL_5;
    }
  }

LABEL_56:

  v37 = specialized _copySequenceToContiguousArray<A>(_:)(v7, v5);
  v5;
  v7;
  v38 = specialized _arrayForceCast<A, B>(_:)(v37);

  return v38;
}

uint64_t specialized generateTextDataFrame<A>(_:textColumn:labelColumn:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = unpackLabeledTexts(_:)(a1);
  specialized MutableCollection<>.shuffle<A>(using:)(a6, a2, v8);
  v9 = v42[2];
  if (v9)
  {
    v30 = a3;
    v10 = v42[2];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v11 = _swiftEmptyArrayStorage;
    v32 = v42;
    v12 = v42 + 5;
    v31 = v9;
    do
    {
      v33 = v11;
      v35 = *(v12 - 1);
      v43 = v11;
      v13 = v11[2];
      v38 = v11[3];
      v40 = v13 + 1;
      v37 = *v12;

      v11 = v33;
      if (v38 >> 1 <= v13)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v38 >= 2, v40, 1);
        v11 = v43;
      }

      v11[2] = v40;
      v14 = 2 * v13;
      v11[v14 + 4] = v35;
      v11[v14 + 5] = v37;
      v12 += 4;
      --v10;
    }

    while (v10);
    v34 = v11;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v15 = _swiftEmptyArrayStorage;
    v16 = v32 + 7;
    do
    {
      v41 = *(v16 - 1);
      v44 = v15;
      v17 = v15[2];
      v39 = v15[3];
      v18 = v15;
      v36 = *v16;

      v15 = v18;
      if (v39 >> 1 <= v17)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v39 >= 2, v17 + 1, 1);
        v15 = v44;
      }

      v15[2] = v17 + 1;
      v19 = 2 * v17;
      v15[v19 + 4] = v41;
      v15[v19 + 5] = v36;
      v16 += 4;
      --v31;
    }

    while (v31);
    v20 = v15;

    a3 = v30;
    v21 = v34;
  }

  else
  {

    v20 = _swiftEmptyArrayStorage;
    v21 = _swiftEmptyArrayStorage;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, [Any?])>);
  v23 = swift_allocObject(v22, 80, 7);
  v23[2] = 2;
  v23[3] = 4;
  v23[4] = a2;
  v23[5] = a3;

  v24 = specialized _arrayForceCast<A, B>(_:)(v21);
  v21;
  v23[6] = v24;
  v23[7] = a4;
  v23[8] = a5;

  v25 = specialized _arrayForceCast<A, B>(_:)(v20);
  v20;
  v23[9] = v25;
  return DataFrame.init(dictionaryLiteral:)(v23);
}

unint64_t MLTextClassifier.debugDescription.getter()
{
  v1 = v0;
  v25._object = type metadata accessor for MLClassifierMetrics.Contents(0);
  v2 = *(*(v25._object - 1) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = type metadata accessor for MLTextClassifier(0);
  v25._countAndFlagsBits = MLTextClassifier.ModelParameters.description.getter();
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
  v23 = 0xD00000000000001BLL;
  v24 = "subset of the training labels." + 0x8000000000000000;
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

NSAttributedString MLTextClassifier.playgroundDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSAttributedString, NSAttributedString_ptr);
  v3._countAndFlagsBits = MLTextClassifier.debugDescription.getter();
  v3._object = v4;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v3).super.isa;
  v1[3].super.isa = v2;
  v1->super.isa = result.super.isa;
  return result;
}

id sub_23A368()
{
  v1 = v0;
  result = MLTextClassifier.model.getter();
  *v1 = result;
  return result;
}

char *initializeBufferWithCopyOfBuffer for MLTextClassifier(char *a1, char **a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v11 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    *(a1 + 1) = a2[1];
    v5 = a2[2];
    *(a1 + 2) = v5;
    v6 = a3[7];
    v7 = &a1[v6];
    v8 = a2 + v6;
    v58 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
    v4;

    v5;
    if (swift_getEnumCaseMultiPayload(v8, v58) == 2)
    {
      v9 = type metadata accessor for URL(0);
      if (__swift_getEnumTagSinglePayload(v8, 4, v9))
      {
        v10 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
        memcpy(v7, v8, *(*(v10 - 8) + 64));
      }

      else
      {
        (*(*(v9 - 8) + 16))(v7, v8, v9);
        __swift_storeEnumTagSinglePayload(v7, 0, 4, v9);
      }

      v12 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLTextClassifier.FeatureExtractorType, revision: Int?)) + 48);
      v7[v12 + 8] = v8[v12 + 8];
      *&v7[v12] = *&v8[v12];
      swift_storeEnumTagMultiPayload(v7, v58, 2);
    }

    else
    {
      memcpy(v7, v8, *(*(v58 - 8) + 64));
    }

    v13 = type metadata accessor for MLTextClassifier.ModelParameters(0);
    v14 = v13[5];
    v15 = *&v8[v14];
    *&v7[v14] = v15;
    v16 = v13[6];
    v17 = &v7[v16];
    v59 = &v8[v16];
    v18 = *&v8[v16 + 24];
    v15;
    if (v18)
    {
      *(v17 + 3) = v18;
      (**(v18 - 8))(v17, v59, v18);
    }

    else
    {
      v19 = *v59;
      *(v17 + 1) = *(v59 + 1);
      *v17 = v19;
    }

    v20 = v13[7];
    *&v7[v20] = *&v8[v20];
    *&v7[v20 + 8] = *&v8[v20 + 8];
    v21 = v13[8];
    *&v7[v21] = *&v8[v21];
    *&v7[v21 + 8] = *&v8[v21 + 8];
    v22 = v13[9];
    v7[v22 + 8] = v8[v22 + 8];
    *&v7[v22] = *&v8[v22];
    v23 = a3[8];
    v24 = &a1[v23];
    v25 = (a2 + v23);
    v26 = type metadata accessor for MLClassifierMetrics.Contents(0);

    v60 = v26;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v25, v26);
    if (EnumCaseMultiPayload == 2)
    {
      v32 = *v25;
      swift_errorRetain(*v25);
      *v24 = v32;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *v24 = *v25;
      v52 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v28 = *(v52 + 20);
      v53 = &v24[v28];
      v29 = type metadata accessor for DataFrame(0);
      v30 = v25 + v28;
      v31 = *(*(v29 - 8) + 16);
      v31(v53, v30, v29);
      v31(&v24[*(v52 + 24)], v25 + *(v52 + 24), v29);
    }

    else
    {
      v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v34 = swift_getEnumCaseMultiPayload(v25, v33);
      v35 = v34 == 1;
      v36 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v34 == 1)
      {
        v36 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v37 = __swift_instantiateConcreteTypeFromMangledName(v36);
      (*(*(v37 - 8) + 16))(v24, v25, v37);
      swift_storeEnumTagMultiPayload(v24, v33, v35);
    }

    swift_storeEnumTagMultiPayload(v24, v60, EnumCaseMultiPayload);
    v38 = a3[9];
    v11 = a1;
    v39 = &a1[v38];
    v40 = (a2 + v38);
    v41 = swift_getEnumCaseMultiPayload(a2 + v38, v60);
    if (v41 == 2)
    {
      v45 = *v40;
      swift_errorRetain(*v40);
      *v39 = v45;
      swift_storeEnumTagMultiPayload(v39, v60, 2);
    }

    else if (v41 == 1)
    {
      *v39 = *v40;
      v56 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v42 = *(v56 + 20);
      v43 = type metadata accessor for DataFrame(0);
      v44 = *(*(v43 - 8) + 16);
      v44(&v39[v42], v40 + v42, v43);
      v44(&v39[*(v56 + 24)], v40 + *(v56 + 24), v43);
      v11 = a1;
      swift_storeEnumTagMultiPayload(v39, v60, 1);
    }

    else
    {
      v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v47 = swift_getEnumCaseMultiPayload(v40, v46);
      v48 = v47 == 1;
      v49 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v47 == 1)
      {
        v49 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v50 = __swift_instantiateConcreteTypeFromMangledName(v49);
      (*(*(v50 - 8) + 16))(v39, v40, v50);
      swift_storeEnumTagMultiPayload(v39, v46, v48);
      swift_storeEnumTagMultiPayload(v39, v60, 0);
      return a1;
    }
  }

  return v11;
}

uint64_t destroy for MLTextClassifier(uint64_t a1, uint64_t a2)
{
  v2 = a2;

  *(a1 + 8);
  v4 = a1 + *(a2 + 28);
  v5 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
  if (swift_getEnumCaseMultiPayload(v4, v5) == 2)
  {
    v6 = type metadata accessor for URL(0);
    if (!__swift_getEnumTagSinglePayload(v4, 4, v6))
    {
      (*(*(v6 - 8) + 8))(v4, v6);
    }
  }

  v7 = type metadata accessor for MLTextClassifier.ModelParameters(0);

  v8 = v7[6];
  if (*(v4 + v8 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v4 + v8));
  }

  *(v4 + v7[7] + 8);
  *(v4 + v7[8] + 8);
  v9 = (a1 + *(a2 + 32));
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
      v15 = type metadata accessor for DataFrame(0);
      v16 = v14;
      v17 = *(*(v15 - 8) + 8);
      v17(v16, v15);
      v18 = v15;
      v2 = a2;
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

  v20 = (*(v2 + 36) + a1);
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

void *initializeWithCopy for MLTextClassifier(void *a1, uint64_t a2, int *a3)
{
  v3 = *a2;
  *a1 = *a2;
  a1[1] = *(a2 + 8);
  v4 = *(a2 + 16);
  a1[2] = v4;
  v5 = a3[7];
  v6 = a1 + v5;
  v7 = (a2 + v5);
  v63 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
  v3;

  v4;
  if (swift_getEnumCaseMultiPayload(v7, v63) == 2)
  {
    v8 = type metadata accessor for URL(0);
    if (__swift_getEnumTagSinglePayload(v7, 4, v8))
    {
      v9 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
      memcpy(v6, v7, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(*(v8 - 8) + 16))(v6, v7, v8);
      __swift_storeEnumTagSinglePayload(v6, 0, 4, v8);
    }

    v10 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLTextClassifier.FeatureExtractorType, revision: Int?)) + 48);
    v6[v10 + 8] = v7[v10 + 8];
    *&v6[v10] = *&v7[v10];
    swift_storeEnumTagMultiPayload(v6, v63, 2);
  }

  else
  {
    memcpy(v6, v7, *(*(v63 - 8) + 64));
  }

  v11 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  v12 = v11[5];
  v13 = *&v7[v12];
  *&v6[v12] = v13;
  v14 = v11[6];
  v15 = &v6[v14];
  v64 = &v7[v14];
  v16 = *&v7[v14 + 24];
  v13;
  if (v16)
  {
    *(v15 + 3) = v16;
    (**(v16 - 8))(v15, v64, v16);
  }

  else
  {
    v17 = *v64;
    *(v15 + 1) = *(v64 + 1);
    *v15 = v17;
  }

  v18 = v11[7];
  *&v6[v18] = *&v7[v18];
  *&v6[v18 + 8] = *&v7[v18 + 8];
  v19 = v11[8];
  *&v6[v19] = *&v7[v19];
  *&v6[v19 + 8] = *&v7[v19 + 8];
  v20 = v11[9];
  v6[v20 + 8] = v7[v20 + 8];
  *&v6[v20] = *&v7[v20];
  v21 = a3[8];
  v22 = (a1 + v21);
  v23 = (a2 + v21);
  v24 = type metadata accessor for MLClassifierMetrics.Contents(0);

  v65 = v24;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v23, v24);
  if (EnumCaseMultiPayload == 2)
  {
    v31 = *v23;
    swift_errorRetain(v31);
    *v22 = v31;
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      *v22 = *v23;
      v54 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v26 = *(v54 + 20);
      v55 = v22 + v26;
      v27 = type metadata accessor for DataFrame(0);
      v56 = v22;
      v28 = *(*(v27 - 8) + 16);
      v29 = v23 + v26;
      v30 = a1;
      v28(v55, v29, v27);
      v28(v56 + *(v54 + 24), v23 + *(v54 + 24), v27);
      v22 = v56;
      goto LABEL_18;
    }

    v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v33 = swift_getEnumCaseMultiPayload(v23, v32);
    v34 = v33 == 1;
    v35 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v33 == 1)
    {
      v35 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v36 = __swift_instantiateConcreteTypeFromMangledName(v35);
    (*(*(v36 - 8) + 16))(v22, v23, v36);
    swift_storeEnumTagMultiPayload(v22, v32, v34);
  }

  v30 = a1;
LABEL_18:
  swift_storeEnumTagMultiPayload(v22, v65, EnumCaseMultiPayload);
  v37 = a3[9];
  v38 = (v30 + v37);
  v39 = (v37 + a2);
  v40 = swift_getEnumCaseMultiPayload(v37 + a2, v65);
  if (v40 == 2)
  {
    v47 = *v39;
    swift_errorRetain(*v39);
    *v38 = v47;
  }

  else if (v40 == 1)
  {
    *v38 = *v39;
    v61 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v41 = v39;
    v42 = *(v61 + 20);
    v58 = v38 + v42;
    v43 = type metadata accessor for DataFrame(0);
    v44 = v41 + v42;
    v45 = *(*(v43 - 8) + 16);
    v45(v58, v44, v43);
    v46 = v43;
    v30 = a1;
    v45(v38 + *(v61 + 24), v41 + *(v61 + 24), v46);
  }

  else
  {
    v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v49 = swift_getEnumCaseMultiPayload(v39, v48);
    v62 = v39;
    v50 = v49 == 1;
    v51 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v49 == 1)
    {
      v51 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v52 = __swift_instantiateConcreteTypeFromMangledName(v51);
    (*(*(v52 - 8) + 16))(v38, v62, v52);
    swift_storeEnumTagMultiPayload(v38, v48, v50);
  }

  swift_storeEnumTagMultiPayload(v38, v65, v40);
  return v30;
}

uint64_t assignWithCopy for MLTextClassifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *a1;
  *a1 = *a2;
  v5;

  v7 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v7;
  v8 = *(a2 + 16);
  v9 = *(a1 + 16);
  *(a1 + 16) = v8;
  v8;

  v67 = a3;
  v10 = *(a3 + 28);
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  v66 = a1;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLTextClassifier.ModelAlgorithmType);
    v13 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
    if (swift_getEnumCaseMultiPayload(v12, v13) == 2)
    {
      v14 = type metadata accessor for URL(0);
      if (__swift_getEnumTagSinglePayload(v12, 4, v14))
      {
        v15 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
        memcpy(v11, v12, *(*(v15 - 8) + 64));
      }

      else
      {
        (*(*(v14 - 8) + 16))(v11, v12, v14);
        __swift_storeEnumTagSinglePayload(v11, 0, 4, v14);
      }

      v16 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLTextClassifier.FeatureExtractorType, revision: Int?)) + 48);
      v11[v16 + 8] = v12[v16 + 8];
      *&v11[v16] = *&v12[v16];
      swift_storeEnumTagMultiPayload(v11, v13, 2);
    }

    else
    {
      memcpy(v11, v12, *(*(v13 - 8) + 64));
    }
  }

  v17 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  v18 = v17[5];
  v19 = *&v11[v18];
  v20 = *&v12[v18];
  *&v11[v18] = v20;
  v20;

  v21 = v17[6];
  v22 = &v11[v21];
  v23 = &v12[v21];
  v24 = *&v12[v21 + 24];
  if (*&v11[v21 + 24])
  {
    if (v24)
    {
      __swift_assign_boxed_opaque_existential_0(&v11[v21], &v12[v21]);
      goto LABEL_15;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v11[v21]);
  }

  else if (v24)
  {
    *(v22 + 3) = v24;
    (**(v24 - 8))(v22, v23);
    goto LABEL_15;
  }

  v25 = *v23;
  *(v22 + 1) = *(v23 + 1);
  *v22 = v25;
LABEL_15:
  v26 = v17[7];
  *&v11[v26] = *&v12[v26];
  v27 = *&v11[v26 + 8];
  *&v11[v26 + 8] = *&v12[v26 + 8];

  v27;
  v28 = v17[8];
  *&v11[v28] = *&v12[v28];
  v29 = *&v11[v28 + 8];
  *&v11[v28 + 8] = *&v12[v28 + 8];

  v29;
  v30 = v17[9];
  v11[v30 + 8] = v12[v30 + 8];
  *&v11[v30] = *&v12[v30];
  result = v66;
  v32 = a2;
  if (v66 != a2)
  {
    v33 = *(v67 + 32);
    v34 = (v66 + v33);
    v35 = (a2 + v33);
    outlined destroy of MLActivityClassifier.ModelParameters(v34, type metadata accessor for MLClassifierMetrics.Contents);
    v65 = type metadata accessor for MLClassifierMetrics.Contents(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v35, v65);
    if (EnumCaseMultiPayload == 2)
    {
      v41 = *v35;
      swift_errorRetain(*v35);
      *v34 = v41;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *v34 = *v35;
      v63 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v37 = *(v63 + 20);
      v64 = v34 + v37;
      v38 = type metadata accessor for DataFrame(0);
      v39 = *(*(v38 - 8) + 16);
      v40 = v35 + v37;
      v32 = a2;
      v39(v64, v40, v38);
      v39(v34 + *(v63 + 24), v35 + *(v63 + 24), v38);
      EnumCaseMultiPayload = 1;
    }

    else
    {
      v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v43 = swift_getEnumCaseMultiPayload(v35, v42);
      v44 = v43 == 1;
      v45 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v43 == 1)
      {
        v45 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v46 = __swift_instantiateConcreteTypeFromMangledName(v45);
      (*(*(v46 - 8) + 16))(v34, v35, v46);
      swift_storeEnumTagMultiPayload(v34, v42, v44);
      v32 = a2;
    }

    swift_storeEnumTagMultiPayload(v34, v65, EnumCaseMultiPayload);
    v47 = *(v67 + 36);
    v48 = (v66 + v47);
    v49 = (v47 + v32);
    outlined destroy of MLActivityClassifier.ModelParameters(v66 + v47, type metadata accessor for MLClassifierMetrics.Contents);
    v50 = swift_getEnumCaseMultiPayload(v49, v65);
    if (v50 == 2)
    {
      v56 = *v49;
      swift_errorRetain(*v49);
      *v48 = v56;
    }

    else if (v50 == 1)
    {
      *v48 = *v49;
      v70 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v51 = v49;
      v52 = *(v70 + 20);
      v68 = v48 + v52;
      v53 = type metadata accessor for DataFrame(0);
      v54 = v51 + v52;
      v55 = *(*(v53 - 8) + 16);
      v55(v68, v54, v53);
      v55(v48 + *(v70 + 24), v51 + *(v70 + 24), v53);
    }

    else
    {
      v57 = v49;
      v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v59 = swift_getEnumCaseMultiPayload(v57, v58);
      v60 = v59 == 1;
      v61 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v59 == 1)
      {
        v61 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v62 = __swift_instantiateConcreteTypeFromMangledName(v61);
      (*(*(v62 - 8) + 16))(v48, v57, v62);
      swift_storeEnumTagMultiPayload(v48, v58, v60);
    }

    swift_storeEnumTagMultiPayload(v48, v65, v50);
    return v66;
  }

  return result;
}

void *initializeWithTake for MLTextClassifier(void *a1, void *a2, uint64_t a3)
{
  v3 = a3;
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  v5 = *(a3 + 28);
  v6 = a1 + v5;
  v7 = a2 + v5;
  v8 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
  v56 = v3;
  if (swift_getEnumCaseMultiPayload(v7, v8) == 2)
  {
    v9 = type metadata accessor for URL(0);
    if (__swift_getEnumTagSinglePayload(v7, 4, v9))
    {
      v10 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
      memcpy(v6, v7, *(*(v10 - 8) + 64));
    }

    else
    {
      (*(*(v9 - 8) + 32))(v6, v7, v9);
      __swift_storeEnumTagSinglePayload(v6, 0, 4, v9);
    }

    v11 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLTextClassifier.FeatureExtractorType, revision: Int?)) + 48);
    v6[v11 + 8] = v7[v11 + 8];
    *&v6[v11] = *&v7[v11];
    swift_storeEnumTagMultiPayload(v6, v8, 2);
    v3 = v56;
  }

  else
  {
    memcpy(v6, v7, *(*(v8 - 8) + 64));
  }

  v12 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  *&v6[v12[5]] = *&v7[v12[5]];
  v13 = v12[6];
  v14 = *&v7[v13];
  *&v6[v13 + 16] = *&v7[v13 + 16];
  *&v6[v13] = v14;
  *&v6[v12[7]] = *&v7[v12[7]];
  *&v6[v12[8]] = *&v7[v12[8]];
  v15 = v12[9];
  *&v6[v15] = *&v7[v15];
  v6[v15 + 8] = v7[v15 + 8];
  v16 = *(v3 + 32);
  v17 = a1;
  v18 = a1 + v16;
  v19 = a2 + v16;
  v55 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v19, v55);
  if (EnumCaseMultiPayload == 1)
  {
    *v18 = *v19;
    v59 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v30 = *(v59 + 20);
    v53 = &v18[v30];
    v31 = type metadata accessor for DataFrame(0);
    v32 = &v19[v30];
    v33 = *(*(v31 - 8) + 32);
    v33(v53, v32, v31);
    v34 = v31;
    v3 = v56;
    v33(&v18[*(v59 + 24)], &v19[*(v59 + 24)], v34);
    v17 = a1;
    v29 = 1;
    v26 = v18;
    v27 = v55;
    v28 = v55;
LABEL_13:
    swift_storeEnumTagMultiPayload(v26, v28, v29);
    goto LABEL_15;
  }

  if (!EnumCaseMultiPayload)
  {
    v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v21 = swift_getEnumCaseMultiPayload(v19, v58);
    v22 = v21 == 1;
    v23 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v21 == 1)
    {
      v23 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v24 = __swift_instantiateConcreteTypeFromMangledName(v23);
    (*(*(v24 - 8) + 32))(v18, v19, v24);
    v25 = v22;
    v3 = v56;
    swift_storeEnumTagMultiPayload(v18, v58, v25);
    v26 = v18;
    v27 = v55;
    v28 = v55;
    v29 = 0;
    goto LABEL_13;
  }

  v35 = v18;
  v27 = v55;
  memcpy(v35, v19, *(*(v55 - 8) + 64));
LABEL_15:
  v36 = *(v3 + 36);
  v37 = v17 + v36;
  v38 = a2 + v36;
  v39 = swift_getEnumCaseMultiPayload(v38, v27);
  if (v39 == 1)
  {
    *v37 = *v38;
    v57 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v48 = *(v57 + 20);
    v60 = &v37[v48];
    v49 = type metadata accessor for DataFrame(0);
    v50 = *(*(v49 - 8) + 32);
    v51 = &v38[v48];
    v17 = a1;
    v50(v60, v51, v49);
    v50(&v37[*(v57 + 24)], &v38[*(v57 + 24)], v49);
    v47 = 1;
    v45 = v37;
    v46 = v55;
  }

  else
  {
    if (v39)
    {
      memcpy(v37, v38, *(*(v27 - 8) + 64));
      return v17;
    }

    v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v41 = swift_getEnumCaseMultiPayload(v38, v40);
    v42 = v41 == 1;
    v43 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v41 == 1)
    {
      v43 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v44 = __swift_instantiateConcreteTypeFromMangledName(v43);
    (*(*(v44 - 8) + 32))(v37, v38, v44);
    swift_storeEnumTagMultiPayload(v37, v40, v42);
    v45 = v37;
    v46 = v55;
    v47 = 0;
  }

  swift_storeEnumTagMultiPayload(v45, v46, v47);
  return v17;
}

void **assignWithTake for MLTextClassifier(void **a1, void **a2, uint64_t a3)
{
  v5 = *a1;
  *a1 = *a2;

  v6 = a1[1];
  a1[1] = a2[1];
  v6;
  v7 = a1[2];
  a1[2] = a2[2];

  v68 = a3;
  v8 = *(a3 + 28);
  v9 = a1 + v8;
  v10 = a2 + v8;
  v65 = a1;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v9, type metadata accessor for MLTextClassifier.ModelAlgorithmType);
    v11 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
    if (swift_getEnumCaseMultiPayload(v10, v11) == 2)
    {
      v12 = type metadata accessor for URL(0);
      if (__swift_getEnumTagSinglePayload(v10, 4, v12))
      {
        v13 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
        memcpy(v9, v10, *(*(v13 - 8) + 64));
      }

      else
      {
        (*(*(v12 - 8) + 32))(v9, v10, v12);
        __swift_storeEnumTagSinglePayload(v9, 0, 4, v12);
      }

      v14 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLTextClassifier.FeatureExtractorType, revision: Int?)) + 48);
      v9[v14 + 8] = v10[v14 + 8];
      *&v9[v14] = *&v10[v14];
      swift_storeEnumTagMultiPayload(v9, v11, 2);
    }

    else
    {
      memcpy(v9, v10, *(*(v11 - 8) + 64));
    }
  }

  v15 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  v16 = v15[5];
  v17 = *&v9[v16];
  *&v9[v16] = *&v10[v16];

  v18 = v15[6];
  v19 = &v9[v18];
  v20 = &v10[v18];
  if (*&v9[v18 + 24])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v9[v18]);
  }

  v21 = *v20;
  *(v19 + 1) = *(v20 + 1);
  *v19 = v21;
  v22 = v15[7];
  *&v9[v22] = *&v10[v22];
  v23 = *&v9[v22 + 8];
  *&v9[v22 + 8] = *&v10[v22 + 8];
  v23;
  v24 = v15[8];
  *&v9[v24] = *&v10[v24];
  v25 = *&v9[v24 + 8];
  *&v9[v24 + 8] = *&v10[v24 + 8];
  v25;
  v26 = v15[9];
  v9[v26 + 8] = v10[v26 + 8];
  *&v9[v26] = *&v10[v26];
  v27 = v65;
  v28 = a2;
  if (v65 == a2)
  {
    return v27;
  }

  v29 = *(v68 + 32);
  v30 = v65 + v29;
  v31 = a2 + v29;
  outlined destroy of MLActivityClassifier.ModelParameters(v30, type metadata accessor for MLClassifierMetrics.Contents);
  v32 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v31, v32);
  v72 = v32;
  if (EnumCaseMultiPayload == 1)
  {
    *v30 = *v31;
    v67 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v42 = *(v67 + 20);
    v64 = &v30[v42];
    v43 = type metadata accessor for DataFrame(0);
    v44 = *(*(v43 - 8) + 32);
    v45 = &v31[v42];
    v27 = v65;
    v44(v64, v45, v43);
    v46 = v43;
    v32 = v72;
    v44(&v30[*(v67 + 24)], &v31[*(v67 + 24)], v46);
    v28 = a2;
    v41 = 1;
    v39 = v30;
    v40 = v72;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      memcpy(v30, v31, *(*(v32 - 8) + 64));
      goto LABEL_19;
    }

    v66 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v34 = swift_getEnumCaseMultiPayload(v31, v66);
    v35 = v34 == 1;
    v36 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v34 == 1)
    {
      v36 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v37 = __swift_instantiateConcreteTypeFromMangledName(v36);
    (*(*(v37 - 8) + 32))(v30, v31, v37);
    v38 = v35;
    v32 = v72;
    swift_storeEnumTagMultiPayload(v30, v66, v38);
    v39 = v30;
    v40 = v72;
    v41 = 0;
  }

  swift_storeEnumTagMultiPayload(v39, v40, v41);
LABEL_19:
  v47 = *(v68 + 36);
  v48 = v27 + v47;
  v49 = v28 + v47;
  outlined destroy of MLActivityClassifier.ModelParameters(v27 + v47, type metadata accessor for MLClassifierMetrics.Contents);
  v50 = swift_getEnumCaseMultiPayload(v49, v32);
  if (v50 == 1)
  {
    *v48 = *v49;
    v69 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v59 = *(v69 + 20);
    v71 = &v48[v59];
    v60 = type metadata accessor for DataFrame(0);
    v61 = *(*(v60 - 8) + 32);
    v62 = &v49[v59];
    v27 = v65;
    v61(v71, v62, v60);
    v61(&v48[*(v69 + 24)], &v49[*(v69 + 24)], v60);
    v58 = 1;
    v56 = v48;
    v57 = v72;
  }

  else
  {
    if (v50)
    {
      memcpy(v48, v49, *(*(v32 - 8) + 64));
      return v27;
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
    v57 = v72;
    v58 = 0;
  }

  swift_storeEnumTagMultiPayload(v56, v57, v58);
  return v27;
}

uint64_t sub_23BAE4(void *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    result = 0;
    if ((*a1 & 0xFFFFFFFF00000001) == 0)
    {
      return (*a1 >> 1) + 1;
    }
  }

  else
  {
    v5 = type metadata accessor for MLTextClassifier.ModelParameters(0);
    if (*(*(v5 - 8) + 84) == a2)
    {
      v6 = *(a3 + 28);
    }

    else
    {
      v5 = type metadata accessor for MLClassifierMetrics(0);
      v6 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v6, a2, v5);
  }

  return result;
}

void sub_23BB72(void *a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *a1 = 2 * (a2 - 1);
  }

  else
  {
    v6 = type metadata accessor for MLTextClassifier.ModelParameters(0);
    if (*(*(v6 - 8) + 84) == a3)
    {
      v7 = *(a4 + 28);
    }

    else
    {
      v6 = type metadata accessor for MLClassifierMetrics(0);
      v7 = *(a4 + 32);
    }

    __swift_storeEnumTagSinglePayload(a1 + v7, a2, a2, v6);
  }
}

uint64_t type metadata completion function for MLTextClassifier(uint64_t a1)
{
  v4[0] = &value witness table for Builtin.UnknownObject + 64;
  v4[1] = &value witness table for Builtin.BridgeObject + 64;
  v4[2] = &value witness table for Builtin.UnknownObject + 64;
  result = type metadata accessor for MLTextClassifier.ModelParameters(319);
  if (v2 <= 0x3F)
  {
    v4[3] = *(result - 8) + 64;
    result = type metadata accessor for MLClassifierMetrics.Contents(319);
    if (v3 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      v6 = v5;
      swift_initStructMetadata(a1, 256, 6, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

void specialized MutableCollection<>.shuffle<A>(using:)()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (v2 >= 2)
  {
    v12 = v2 - 2;
    v3 = 0;
    do
    {
      v4 = v2 * MersenneTwisterGenerator.next()();
      v5 = *(&v4 + 1);
      if (v2 > v4 && -v2 % v2 > v4)
      {
        do
        {
          v6 = v2 * MersenneTwisterGenerator.next()();
        }

        while (-v2 % v2 > v6);
        v5 = *(&v6 + 1);
      }

      v7 = __OFADD__(v3, v5);
      v8 = v3 + v5;
      if (v7)
      {
        BUG();
      }

      if (v3 != v8)
      {
        v9 = *(v1 + 2);
        if (v3 >= v9)
        {
          BUG();
        }

        if (v8 >= v9)
        {
          BUG();
        }

        v14 = *&v1[8 * v3 + 32];
        v13 = *&v1[8 * v8 + 32];
        if (!swift_isUniquelyReferenced_nonNull_native(v1))
        {
          v1 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v1);
        }

        v10 = *(v1 + 2);
        if (v3 >= v10)
        {
          BUG();
        }

        *&v1[8 * v3 + 32] = v13;
        if (v8 >= v10)
        {
          BUG();
        }

        *&v1[8 * v8 + 32] = v14;
        *v0 = v1;
      }

      --v2;
    }

    while (v3++ != v12);
  }
}

uint64_t lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef()
{
  result = lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef;
  if (!lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef)
  {
    v1 = type metadata accessor for CFErrorRef(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for CFErrorRef, v1);
    lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef = result;
  }

  return result;
}

uint64_t static MLSoundClassifier.createTablePrinter(hasValidation:)(int a1)
{
  v26 = a1;
  v22 = v1;
  v2 = type metadata accessor for MetricsKey(0);
  v24 = *(v2 - 8);
  v3 = *(v24 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v23 = &v20;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v25 = &v20;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MetricsKey)>);
  v9 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, MetricsKey)) - 8);
  v10 = *(v9 + 80);
  v11 = (v10 + 32) & ~*(v9 + 80);
  v12 = swift_allocObject(v8, v11 + *(v9 + 72), v10 | 7);
  *(v12 + 16) = 1;
  *(v12 + 24) = 2;
  *(v12 + v11) = 0xD000000000000011;
  *(v12 + v11 + 8) = "eature extractor should be " + 0x8000000000000000;
  static MetricsKey.trainingAccuracy.getter();
  v13 = Dictionary.init(dictionaryLiteral:)(v12, &type metadata for String, v2, &protocol witness table for String);
  if (v26)
  {
    v14 = v25;
    static MetricsKey.validationAccuracy.getter();
    v15 = v23;
    (*(v24 + 32))(v23, v14, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v13);
    v21 = v13;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, 0xD000000000000013, ("Validation Data\n" + 0x8000000000000000), isUniquelyReferenced_nonNull_native);
    v13 = v21;
  }

  v17 = type metadata accessor for TrainingTablePrinter(0);
  v18 = v22;
  *(v22 + *(v17 + 24)) = v13;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v18 + *(v17 + 20)) = OS_os_log.init(subsystem:category:)(0xD000000000000022, ("n" + 0x8000000000000000), 0x72705F656C626174, 0xED00007265746E69);
  return Date.init()(0xD000000000000022);
}

uint64_t static MLSoundClassifier.validateFeatureExtractionParameters(featureExtractionParameters:parameters:)(uint64_t a1, uint64_t a2)
{
  v20 = *a1;
  v22 = *(a1 + 8);
  v2 = *(a1 + 16);
  v21 = *(a1 + 24);
  v23 = *(a1 + 32);
  v3 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  if (v20 == *(a2 + *(v3 + 24)))
  {
    if (!_stdlib_isOSVersionAtLeastOrVariantVersionAtLeast(_:_:_:_:_:_:)(0xCuLL, 0, 0, 0xFuLL, 0, 0))
    {
      goto LABEL_6;
    }

    if (v2)
    {
      v22 = 0.975;
    }

    if (v22 == MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.getter())
    {
LABEL_6:
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v3 + 28) + a2, v15, &demangling cache variable for type metadata for Any?);
      if (v16)
      {
        if (swift_dynamicCast(&v17, v15, &type metadata for Any + 8, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, 6))
        {
          v4 = v17;
          v5 = v18;
          v6 = v19;
          goto LABEL_12;
        }
      }

      else
      {
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v15, &demangling cache variable for type metadata for Any?);
      }

      v5 = 1;
      v4 = 1;
      v6 = 0;
LABEL_12:
      if (v23)
      {
        if (((v21 == v4) & v5) != 0)
        {
          return v6;
        }
      }

      else if (!((v21 != v4) | v5 & 1))
      {
        return v6;
      }

      v11 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v11, 0, 0);
      *v12 = 0xD000000000000051;
      *(v12 + 8) = "del parameters: overlapFactor" + 0x8000000000000000;
      *(v12 + 16) = 0;
      *(v12 + 32) = 0;
      *(v12 + 48) = 0;
      swift_willThrow();
      return v6;
    }

    v7 = "feature extractor" + 0x8000000000000000;
    v14 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v14, 0, 0);
    v10 = 0xD00000000000005FLL;
  }

  else
  {
    v7 = " feature values." + 0x8000000000000000;
    v8 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v8, 0, 0);
    v10 = 0xD00000000000004DLL;
  }

  *v9 = v10;
  *(v9 + 8) = v7;
  *(v9 + 16) = 0;
  *(v9 + 32) = 0;
  *(v9 + 48) = 0;
  return swift_willThrow();
}

uint64_t static MLSoundClassifier.convertFeatures(_:)(uint64_t a1)
{
  v87 = v2;
  v85 = v1;
  v82 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Any?]>);
  v81 = *(v82 - 8);
  v3 = *(v81 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v83 = &v61;
  v79 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double?]>);
  v78 = *(v79 - 8);
  v6 = *(v78 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v80 = &v61;
  v76 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float?]>);
  v75 = *(v76 - 8);
  v9 = *(v75 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v77 = &v61;
  v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Any]>);
  v72 = *(v73 - 8);
  v12 = *(v72 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v74 = &v61;
  v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v69 = *(v70 - 8);
  v15 = *(v69 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v71 = &v61;
  v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
  v66 = *(v67 - 8);
  v18 = *(v66 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v68 = &v61;
  v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLMultiArray>);
  v63 = *(v64 - 8);
  v21 = *(v63 + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v65 = &v61;
  v62 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Double>>);
  v24 = *(v62 - 8);
  v25 = *(v24 + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v61 = &v61;
  v88 = a1;
  v28 = AnyColumn.wrappedElementType.getter(&demangling cache variable for type metadata for Column<MLShapedArray<Double>>);
  v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v30 = v28;
  if (swift_dynamicCastMetatype(v28, v29))
  {
    return AnyColumn.assumingType<A>(_:)(v29, v29);
  }

  v32 = v61;
  v84 = v24;
  v86 = v29;
  v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
  if (swift_dynamicCastMetatype(v30, v33))
  {
    AnyColumn.assumingType<A>(_:)(v33, v33);
    v34 = v62;
    Column.mapNonNil<A>(_:)(closure #1 in static MLSoundClassifier.convertFeatures(_:), 0, v62, v86);
    v35 = v32;
    v36 = v34;
    v37 = v84;
    return (*(v37 + 8))(v35, v36);
  }

  v38 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
  if (swift_dynamicCastMetatype(v30, v38))
  {
    v39 = v65;
    AnyColumn.assumingType<A>(_:)(v38, v38);
    v40 = v64;
    Column.mapNonNil<A>(_:)(closure #2 in static MLSoundClassifier.convertFeatures(_:), 0, v64, v86);
    v35 = v39;
    v36 = v40;
    v37 = v63;
    return (*(v37 + 8))(v35, v36);
  }

  v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  if (swift_dynamicCastMetatype(v30, v41))
  {
    v42 = v68;
    AnyColumn.assumingType<A>(_:)(v41, v41);
    v43 = v67;
    Column.mapNonNil<A>(_:)(closure #3 in static MLSoundClassifier.convertFeatures(_:), 0, v67, v86);
    v35 = v42;
    v36 = v43;
    v37 = v66;
    return (*(v37 + 8))(v35, v36);
  }

  v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  if (swift_dynamicCastMetatype(v30, v44))
  {
    v45 = v71;
    AnyColumn.assumingType<A>(_:)(v44, v44);
    v46 = v70;
    Column.mapNonNil<A>(_:)(closure #4 in static MLSoundClassifier.convertFeatures(_:), 0, v70, v86);
    v35 = v45;
    v36 = v46;
    v37 = v69;
    return (*(v37 + 8))(v35, v36);
  }

  v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any]);
  if (swift_dynamicCastMetatype(v30, v47))
  {
    v48 = v74;
    AnyColumn.assumingType<A>(_:)(v47, v47);
    v49 = v73;
    Column.mapNonNil<A>(_:)(partial apply for closure #5 in static MLSoundClassifier.convertFeatures(_:), 0, v73, v86);
    v35 = v48;
    v36 = v49;
    v37 = v72;
    return (*(v37 + 8))(v35, v36);
  }

  v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float?]);
  if (swift_dynamicCastMetatype(v30, v50))
  {
    v51 = v77;
    AnyColumn.assumingType<A>(_:)(v50, v50);
    v52 = v76;
    Column.mapNonNil<A>(_:)(closure #6 in static MLSoundClassifier.convertFeatures(_:), 0, v76, v86);
    v35 = v51;
    v36 = v52;
    v37 = v75;
    return (*(v37 + 8))(v35, v36);
  }

  v53 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double?]);
  if (swift_dynamicCastMetatype(v30, v53))
  {
    v54 = v80;
    AnyColumn.assumingType<A>(_:)(v53, v53);
    v55 = v79;
    Column.mapNonNil<A>(_:)(closure #7 in static MLSoundClassifier.convertFeatures(_:), 0, v79, v86);
    v35 = v54;
    v36 = v55;
    v37 = v78;
    return (*(v37 + 8))(v35, v36);
  }

  v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any?]);
  if (swift_dynamicCastMetatype(v30, v56))
  {
    v57 = v83;
    AnyColumn.assumingType<A>(_:)(v56, v56);
    v58 = v82;
    Column.mapNonNil<A>(_:)(partial apply for closure #8 in static MLSoundClassifier.convertFeatures(_:), 0, v82, v86);
    v35 = v57;
    v36 = v58;
    v37 = v81;
    return (*(v37 + 8))(v35, v36);
  }

  v59 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v59, 0, 0);
  *v60 = 0xD000000000000040;
  *(v60 + 8) = "Classifier.swift" + 0x8000000000000000;
  *(v60 + 16) = 0;
  *(v60 + 32) = 0;
  *(v60 + 48) = 0;
  return swift_willThrow();
}

uint64_t static MLSoundClassifier._defaultSessionParameters.getter()
{
  v1 = v0;
  if (one-time initialization token for _defaultSessionParameters != -1)
  {
    swift_once(&one-time initialization token for _defaultSessionParameters, one-time initialization function for _defaultSessionParameters);
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  v3 = __swift_project_value_buffer(v2, static MLSoundClassifier._defaultSessionParameters);
  return outlined init with copy of MLTrainingSessionParameters(v3, v1, type metadata accessor for MLTrainingSessionParameters);
}

uint64_t type metadata accessor for MLSoundClassifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLSoundClassifier;
  if (!type metadata singleton initialization cache for MLSoundClassifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLSoundClassifier);
  }

  return result;
}

void MLSoundClassifier.model.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLSoundClassifier(0) + 24);

  *(v1 + v2) = a1;
}

void (*MLSoundClassifier.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLSoundClassifier(0) + 24);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v4;
  return MLActivityClassifier.model.modify;
}

uint64_t MLSoundClassifier.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLSoundClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 28), v2, type metadata accessor for MLSoundClassifier.ModelParameters);
}

uint64_t MLSoundClassifier.trainingMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLSoundClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 32), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLSoundClassifier.validationMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLSoundClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 36), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLSoundClassifier.init(_:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = swift_task_alloc((*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLSoundClassifier.init(_:parameters:), 0, 0);
}

uint64_t MLSoundClassifier.init(_:parameters:)()
{
  v1 = *(v0 + 56);
  v14 = *(v0 + 48);
  v16 = *(v0 + 40);
  v2 = *(v0 + 16);
  v11 = *(v0 + 24);
  v3 = type metadata accessor for TrainingTablePrinter(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v12 = type metadata accessor for MLSoundClassifier(0);
  *(v0 + 64) = v12;
  v13 = v12[8];
  *(v0 + 96) = v13;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v1);
  (*(v14 + 8))(v1, v16);
  *(v2 + v13) = 0;
  v15 = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload(v2 + v13, v15, 1);
  v4 = v12[9];
  *(v0 + 100) = v4;
  v5 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v6 = swift_allocError(&type metadata for MLCreateError, v5, 0, 0);
  *v7 = 0xD0000000000000C0;
  *(v7 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v7 + 16) = 0;
  *(v7 + 32) = 0;
  *(v7 + 48) = 0;
  *(v2 + v4) = v6;
  swift_storeEnumTagMultiPayload(v4 + v2, v15, 2);
  v8 = v12[5];
  *(v0 + 104) = v8;
  outlined init with copy of MLTrainingSessionParameters(v11, v8 + v2, type metadata accessor for MLSoundClassifier.Model);
  v9 = swift_task_alloc(288);
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = MLSoundClassifier.init(_:parameters:);
  return ((&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel()))();
}

{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v6 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 24), type metadata accessor for MLSoundClassifier.Model);
  *(v4 + *(v2 + 24)) = v1;
  outlined init with take of MLClassifierMetrics(v3, v4 + *(v2 + 28), type metadata accessor for MLSoundClassifier.ModelParameters);
  v6;
  return (*(v0 + 8))();
}

{
  v6 = *(v0 + 56);
  v1 = *(v0 + 16);
  v7 = *(v0 + 24);
  v2 = v1 + *(v0 + 104);
  v3 = v1 + *(v0 + 100);
  v4 = v1 + *(v0 + 96);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 32), type metadata accessor for MLSoundClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v7, type metadata accessor for MLSoundClassifier.Model);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &demangling cache variable for type metadata for TrainingTablePrinter?);
  outlined destroy of MLActivityClassifier.ModelParameters(v2, type metadata accessor for MLSoundClassifier.Model);
  outlined destroy of MLActivityClassifier.ModelParameters(v4, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLClassifierMetrics);
  v6;
  return (*(v0 + 8))();
}

uint64_t MLSoundClassifier.init(_:parameters:)(uint64_t a1)
{
  v5 = *(*v2 + 72);
  v4 = *v2;
  *(*v2 + 80) = v1;
  v5;
  if (v1)
  {
    v6 = MLSoundClassifier.init(_:parameters:);
  }

  else
  {
    *(v4 + 88) = a1;
    v6 = MLSoundClassifier.init(_:parameters:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t MLSoundClassifier.init(trainingData:parameters:)(uint64_t a1, uint64_t a2)
{
  v60 = v3;
  v59 = a2;
  v58 = a1;
  v4 = v2;
  v52 = *(type metadata accessor for MLSoundClassifier.ModelParameters(0) - 8);
  v51 = *(v52 + 64);
  v5 = alloca(v51);
  v6 = alloca(v51);
  v57 = &v48;
  v7 = type metadata accessor for MLSoundClassifier(0);
  v8 = *(v7 - 8);
  v9 = v7;
  v53 = v7;
  v10 = *(v8 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v50 = &v48;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v54 = &v48;
  v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v56 = *(v55 - 8);
  v15 = v56[8];
  v16 = alloca(v15);
  v17 = alloca(v15);
  v18 = type metadata accessor for TrainingTablePrinter(0);
  v61 = v4;
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v18);
  v19 = *(v9 + 32);
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v48);
  (v56[1])(&v48, v55);
  v20 = v61;
  *(v61 + v19) = 0;
  v49 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v55 = v4 + v19;
  swift_storeEnumTagMultiPayload(v4 + v19, v49, 1);
  v21 = (v20 + *(v53 + 36));
  v22 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v23 = swift_allocError(&type metadata for MLCreateError, v22, 0, 0);
  *v24 = 0xD0000000000000C0;
  *(v24 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v24 + 16) = 0;
  *(v24 + 32) = 0;
  *(v24 + 48) = 0;
  *v21 = v23;
  v25 = v20;
  v56 = v21;
  v26 = v21;
  v27 = v59;
  swift_storeEnumTagMultiPayload(v26, v49, 2);
  MLSoundClassifier.ModelParameters.validate()();
  if (v28)
  {
    goto LABEL_4;
  }

  MLSoundClassifier.ModelParameters.ValidationData.validate(modelParameters:)(v27);
  v29 = MLSoundClassifier.DataSource.annotatedFeatures()();
  if (v30)
  {
    v27 = v59;
LABEL_4:
    outlined destroy of MLActivityClassifier.ModelParameters(v27, type metadata accessor for MLSoundClassifier.ModelParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v58, type metadata accessor for MLSoundClassifier.DataSource);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v25, &demangling cache variable for type metadata for TrainingTablePrinter?);
    outlined destroy of MLActivityClassifier.ModelParameters(v55, type metadata accessor for MLClassifierMetrics);
    return outlined destroy of MLActivityClassifier.ModelParameters(v56, type metadata accessor for MLClassifierMetrics);
  }

  v32 = v29;
  if (v29)
  {
    v27 = v59;
    v33 = MLSoundClassifier.ModelParameters.ValidationData.splitFeatures(trainingData:)(v29);
    if (v34)
    {
      v32;
      goto LABEL_4;
    }

    v60 = *(&v33 + 1);
    v53 = v33;
    v32;
    outlined init with copy of MLTrainingSessionParameters(v27, v57, type metadata accessor for MLSoundClassifier.ModelParameters);
    v40 = *(v52 + 80);
    v41 = ~*(v52 + 80) & (v40 + 32);
    v42 = swift_allocObject(&unk_393FC8, v41 + v51, v40 | 7);
    *(v42 + 16) = v53;
    *(v42 + 24) = v60;
    outlined init with take of MLClassifierMetrics(v57, v42 + v41, type metadata accessor for MLSoundClassifier.ModelParameters);
    specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLSoundClassifier.init(trainingData:parameters:), v42);

    outlined destroy of MLActivityClassifier.ModelParameters(v27, type metadata accessor for MLSoundClassifier.ModelParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v58, type metadata accessor for MLSoundClassifier.DataSource);
  }

  else
  {
    v35 = MLSoundClassifier.DataSource.labeledSounds()();
    v36 = v35;
    v37 = specialized Sequence.flatMap<A>(_:)(v35);
    v36;
    v27 = v59;
    v38 = MLSoundClassifier.ModelParameters.ValidationData.splitFiles(trainingData:)(v37);
    v60 = *(&v38 + 1);
    v37;
    if (v39)
    {
      v25 = v61;
      goto LABEL_4;
    }

    outlined init with copy of MLTrainingSessionParameters(v27, v57, type metadata accessor for MLSoundClassifier.ModelParameters);
    v43 = *(v52 + 80);
    v44 = ~*(v52 + 80) & (v43 + 32);
    v45 = swift_allocObject(&unk_393FA0, v44 + v51, v43 | 7);
    *(v45 + 16) = v38;
    *(v45 + 24) = v60;
    outlined init with take of MLClassifierMetrics(v57, v45 + v44, type metadata accessor for MLSoundClassifier.ModelParameters);
    v46 = v50;
    specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #2 in MLSoundClassifier.init(trainingData:parameters:), v45);

    outlined destroy of MLActivityClassifier.ModelParameters(v27, type metadata accessor for MLSoundClassifier.ModelParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v58, type metadata accessor for MLSoundClassifier.DataSource);
    v54 = v46;
  }

  v47 = v61;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v61, &demangling cache variable for type metadata for TrainingTablePrinter?);
  outlined destroy of MLActivityClassifier.ModelParameters(v55, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v56, type metadata accessor for MLClassifierMetrics);
  return outlined init with take of MLClassifierMetrics(v54, v47, type metadata accessor for MLSoundClassifier);
}

{
  v13[0] = v3;
  v13[1] = v2;
  v5 = *(*(type metadata accessor for MLSoundClassifier.ModelParameters(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = type metadata accessor for MLSoundClassifier.DataSource(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v13[0] = a1;
  swift_storeEnumTagMultiPayload(v13, v8, 2);
  outlined init with copy of MLTrainingSessionParameters(a2, v13, type metadata accessor for MLSoundClassifier.ModelParameters);
  MLSoundClassifier.init(trainingData:parameters:)(v13, v13);
  return outlined destroy of MLActivityClassifier.ModelParameters(a2, type metadata accessor for MLSoundClassifier.ModelParameters);
}

uint64_t closure #1 in MLSoundClassifier.init(trainingData:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[4] = a3;
  v4[3] = a2;
  v4[2] = a1;
  v5 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v4[6] = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in MLSoundClassifier.init(trainingData:parameters:), 0, 0);
}

uint64_t closure #1 in MLSoundClassifier.init(trainingData:parameters:)()
{
  v1 = v0[4];
  if (!v1)
  {
    v1 = _swiftEmptyArrayStorage;
  }

  v4 = v1;
  outlined init with copy of MLTrainingSessionParameters(v0[5], v0[6], type metadata accessor for MLSoundClassifier.ModelParameters);

  v2 = swift_task_alloc(320);
  v0[7] = v2;
  *v2 = v0;
  v2[1] = closure #1 in MLSoundClassifier.init(trainingData:parameters:);
  return ((&_s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy04CoreB013MLShapedArrayVySfGSSG7ElementRtzApQRt_r0_lufCSayAPG_ATTt3g5Tu + _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy04CoreB013MLShapedArrayVySfGSSG7ElementRtzApQRt_r0_lufCSayAPG_ATTt3g5Tu))(v0[2], v0[3], v4, v0[6]);
}

{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;
  v2;
  if (v0)
  {
    return swift_task_switch(closure #1 in MLSoundClassifier.init(trainingData:parameters:), 0, 0);
  }

  *(v3 + 48);
  return (*(v3 + 8))();
}

{
  return closure #1 in closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:)();
}

uint64_t _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy04CoreB013MLShapedArrayVySfGSSG7ElementRtzApQRt_r0_lufCSayAPG_ATTt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[4] = a3;
  v4[3] = a2;
  v4[2] = a1;
  v5 = (*(*(type metadata accessor for MLClassifierMetrics(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4[6] = swift_task_alloc(v5);
  v4[7] = swift_task_alloc(v5);
  v6 = (*(*(type metadata accessor for MLSoundClassifier.Model(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4[8] = swift_task_alloc(v6);
  v4[9] = swift_task_alloc(v6);
  v7 = type metadata accessor for TrainingTablePrinter(0);
  v4[10] = v7;
  v8 = *(v7 - 8);
  v4[11] = v8;
  v9 = *(v8 + 64);
  v4[12] = v9;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4[13] = swift_task_alloc(v10);
  v4[14] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingTablePrinter?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4[15] = swift_task_alloc(v11);
  v4[16] = swift_task_alloc(v11);
  v4[17] = swift_task_alloc(v11);
  v4[18] = swift_task_alloc(v11);
  v12 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v4[19] = swift_task_alloc((*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for MLSoundClassifier.Classifier(0) - 8);
  v4[20] = v13;
  v14 = *(v13 + 64);
  v4[21] = v14;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4[22] = swift_task_alloc(v15);
  v4[23] = swift_task_alloc(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v4[24] = v16;
  v17 = *(v16 - 8);
  v4[25] = v17;
  v18 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4[26] = swift_task_alloc(v18);
  v4[27] = swift_task_alloc(v18);
  v4[28] = swift_task_alloc(v18);
  return swift_task_switch(_s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy04CoreB013MLShapedArrayVySfGSSG7ElementRtzApQRt_r0_lufCSayAPG_ATTt3g5TY0_, 0, 0);
}

uint64_t _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy04CoreB013MLShapedArrayVySfGSSG7ElementRtzApQRt_r0_lufCSayAPG_ATTt3g5TY0_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(v7 + 224);
  v90 = *(v7 + 200);
  v80 = *(v7 + 192);
  v77 = *(v7 + 16);
  __swift_storeEnumTagSinglePayload(v77, 1, 1, *(v7 + 80));
  v9 = type metadata accessor for MLSoundClassifier(0);
  *(v7 + 232) = v9;
  v86 = *(v9 + 32);
  *(v7 + 304) = v86;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v8);
  (*(v90 + 8))(v8, v80);
  *(v77 + v86) = 0;
  v10 = type metadata accessor for MLClassifierMetrics.Contents(0);
  *(v7 + 240) = v10;
  swift_storeEnumTagMultiPayload(v77 + v86, v10, 1);
  v81 = v9;
  v11 = *(v9 + 36);
  *(v7 + 308) = v11;
  v12 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v13 = swift_allocError(&type metadata for MLCreateError, v12, 0, 0);
  *v14 = 0xD0000000000000C0;
  *(v14 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v14 + 16) = 0;
  *(v14 + 32) = 0;
  *(v14 + 48) = 0;
  *(v77 + v11) = v13;
  swift_storeEnumTagMultiPayload(v77 + v11, v10, 2);
  MLSoundClassifier.ModelParameters.validate()();
  *(v7 + 248) = v15;
  if (v15)
  {
    v16 = *(v7 + 24);
    v17 = *(v7 + 32);
    outlined destroy of MLActivityClassifier.ModelParameters(*(v7 + 40), type metadata accessor for MLSoundClassifier.ModelParameters);
    v17;
    v16;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v7 + 16), &demangling cache variable for type metadata for TrainingTablePrinter?);
    if (!*(v7 + 248))
    {
      outlined destroy of MLActivityClassifier.ModelParameters(*(v7 + 16) + *(*(v7 + 232) + 28), type metadata accessor for MLSoundClassifier.ModelParameters);
    }

    v18 = *(v7 + 224);
    v19 = *(v7 + 216);
    v66 = *(v7 + 208);
    v65 = *(v7 + 184);
    v64 = *(v7 + 176);
    v63 = *(v7 + 152);
    v69 = *(v7 + 144);
    v72 = *(v7 + 136);
    v71 = *(v7 + 128);
    v78 = *(v7 + 120);
    v20 = *(v7 + 16);
    v21 = v20 + *(v7 + 308);
    v67 = *(v7 + 112);
    v75 = *(v7 + 104);
    v74 = *(v7 + 72);
    v87 = *(v7 + 64);
    v82 = *(v7 + 56);
    v91 = *(v7 + 48);
    outlined destroy of MLActivityClassifier.ModelParameters(v20 + *(v7 + 304), type metadata accessor for MLClassifierMetrics);
    outlined destroy of MLActivityClassifier.ModelParameters(v21, type metadata accessor for MLClassifierMetrics);
    v18;
    v19;
    v66;
    v65;
    v64;
    v63;
    v69;
    v72;
    v71;
    v78;
    v67;
    v75;
    v74;
    v87;
    v82;
    v91;
    v23 = *(v7 + 8);
    return v23(v22);
  }

  v25 = *(v7 + 152);
  v92 = *(v7 + 144);
  v83 = *(v7 + 80);
  v26 = *(v7 + 40);
  v88 = *(v7 + 16);
  v27 = *(v7 + 24);
  outlined init with copy of MLTrainingSessionParameters(v26, v88 + *(v81 + 28), type metadata accessor for MLSoundClassifier.ModelParameters);
  MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm(v27, &demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>, &unk_346D08);
  v29 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm);
  *(v7 + 256) = v29;
  outlined init with copy of MLTrainingSessionParameters(v26, v25, type metadata accessor for MLSoundClassifier.ModelParameters);

  MLSoundClassifier.Classifier.init(labels:parameters:)(v29, v25);
  v30 = type metadata accessor for EventCollector();
  swift_allocObject(v30, 32, 7);
  v79 = EventCollector.init()();
  *(v7 + 264) = v79;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v88, v92, &demangling cache variable for type metadata for TrainingTablePrinter?);
  LODWORD(v26) = __swift_getEnumTagSinglePayload(v92, 1, v83);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v92, &demangling cache variable for type metadata for TrainingTablePrinter?);
  if (v26 == 1)
  {
    v31 = *(v7 + 136);
    v32 = *(v7 + 128);
    v33 = *(v7 + 80);
    v34 = *(v7 + 16);
    static MLSoundClassifier.createTablePrinter(hasValidation:)(*(*(v7 + 32) + 16) != 0);
    __swift_storeEnumTagSinglePayload(v31, 0, 1, v33);
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v31, v34, &demangling cache variable for type metadata for TrainingTablePrinter?);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v34, v32, &demangling cache variable for type metadata for TrainingTablePrinter?);
    if (__swift_getEnumTagSinglePayload(v32, 1, v33) == 1)
    {
      BUG();
    }

    v35 = *(v7 + 128);
    TrainingTablePrinter.beginTable()();
    outlined destroy of MLActivityClassifier.ModelParameters(v35, type metadata accessor for TrainingTablePrinter);
  }

  v36 = *(v7 + 120);
  v37 = *(v7 + 80);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v7 + 16), v36, &demangling cache variable for type metadata for TrainingTablePrinter?);
  if (__swift_getEnumTagSinglePayload(v36, 1, v37) != 1)
  {
    v89 = *(v7 + 184);
    v38 = *(v7 + 176);
    v84 = *(v7 + 168);
    v93 = *(v7 + 160);
    v39 = *(v7 + 112);
    v40 = *(v7 + 32);
    v41 = *(v7 + 104);
    outlined init with take of MLClassifierMetrics(*(v7 + 120), v39, type metadata accessor for TrainingTablePrinter);
    v42 = *(v40 + 16);
    *(v7 + 272) = v42;
    outlined init with copy of MLTrainingSessionParameters(v89, v38, type metadata accessor for MLSoundClassifier.Classifier);
    outlined init with copy of MLTrainingSessionParameters(v39, v41, type metadata accessor for TrainingTablePrinter);
    v43 = *(v93 + 80);
    v44 = ~*(v93 + 80) & (v43 + 16);
    v45 = (v84 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
    v94 = *(v7 + 176);
    v85 = *(v7 + 104);
    v47 = *(v7 + 88);
    v48 = *(v7 + 96);
    if (v42)
    {
      v68 = *(v7 + 24);
      v76 = *(v7 + 32);
      v70 = v45;
      v49 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
      v50 = *(v47 + 80);
      v51 = ~v50 & (v49 + v50 + 8);
      v52 = swift_allocObject(&unk_3940A0, v51 + v48, v50 | v43 | 7);
      outlined init with take of MLClassifierMetrics(v94, v52 + v44, type metadata accessor for MLSoundClassifier.Classifier);
      *(v52 + v70) = v68;
      *(v52 + v46) = v76;
      *(v52 + v49) = v79;
      outlined init with take of MLClassifierMetrics(v85, v52 + v51, type metadata accessor for TrainingTablePrinter);

      specialized blockAwait<A>(_:)(&async function pointer to partial apply for specialized closure #3 in MLSoundClassifier.init<A, B>(training:validation:parameters:), v52);
      v53 = (v7 + 64);
    }

    else
    {
      v73 = *(v7 + 24);
      v54 = *(v47 + 80);
      v55 = ~v54 & (v46 + v54 + 8);
      v56 = swift_allocObject(&unk_3940C8, v55 + v48, v54 | v43 | 7);
      outlined init with take of MLClassifierMetrics(v94, v56 + v44, type metadata accessor for MLSoundClassifier.Classifier);
      *(v56 + v45) = v73;
      *(v56 + v46) = v79;
      outlined init with take of MLClassifierMetrics(v85, v56 + v55, type metadata accessor for TrainingTablePrinter);

      specialized blockAwait<A>(_:)(&async function pointer to partial apply for specialized closure #4 in MLSoundClassifier.init<A, B>(training:validation:parameters:), v56);
      v53 = (v7 + 72);
    }

    v57 = *v53;
    v58 = *(v7 + 16);

    outlined init with take of MLClassifierMetrics(v57, v58 + *(v81 + 20), type metadata accessor for MLSoundClassifier.Model);
    static os_log_type_t.info.getter(v57);
    v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v60 = swift_allocObject(v59, 72, 7);
    v61 = v60;
    v60[2] = 1;
    v60[3] = 2;
    v60[7] = &type metadata for Int;
    v60[8] = &protocol witness table for Int;
    v60[4] = 3;
    os_log(_:dso:log:type:_:)("event: %lu");
    v61;
    v62 = swift_task_alloc(288);
    *(v7 + 280) = v62;
    *v62 = v7;
    v22 = _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy04CoreB013MLShapedArrayVySfGSSG7ElementRtzApQRt_r0_lufCSayAPG_ATTt3g5TQ1_;
    v62[1] = _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy04CoreB013MLShapedArrayVySfGSSG7ElementRtzApQRt_r0_lufCSayAPG_ATTt3g5TQ1_;
    v23 = (&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel());
    return v23(v22);
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v7 + 120), &demangling cache variable for type metadata for TrainingTablePrinter?);
  return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000027, ("range [0.0, 1.0), but got " + 0x8000000000000000), "CreateML/MLSoundClassifier.swift", 32, 2, 229, 0);
}

uint64_t _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy04CoreB013MLShapedArrayVySfGSSG7ElementRtzApQRt_r0_lufCSayAPG_ATTt3g5TQ1_(uint64_t a1)
{
  v5 = *(*v2 + 280);
  v4 = *v2;
  *(*v2 + 288) = v1;
  v5;
  if (v1)
  {
    *(v4 + 256);
    v6 = _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy04CoreB013MLShapedArrayVySfGSSG7ElementRtzApQRt_r0_lufCSayAPG_ATTt3g5TY3_;
  }

  else
  {
    *(v4 + 296) = a1;
    v6 = _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy04CoreB013MLShapedArrayVySfGSSG7ElementRtzApQRt_r0_lufCSayAPG_ATTt3g5TY2_;
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy04CoreB013MLShapedArrayVySfGSSG7ElementRtzApQRt_r0_lufCSayAPG_ATTt3g5TY2_()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 24);
  *(*(v0 + 16) + *(*(v0 + 232) + 24)) = *(v0 + 296);
  specialized MLSoundClassifier.evaluate<A>(on:)(v2);
  if (v1)
  {
    v52 = *(v0 + 184);
    v56 = *(v0 + 112);
    v3 = *(v0 + 40);
    v4 = *(v0 + 256);
    v5 = *(v0 + 24);
    v6 = *(v0 + 32);

    v4;
    outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLSoundClassifier.ModelParameters);
    v6;
    v5;
    outlined destroy of MLActivityClassifier.ModelParameters(v56, type metadata accessor for TrainingTablePrinter);
    outlined destroy of MLActivityClassifier.ModelParameters(v52, type metadata accessor for MLSoundClassifier.Classifier);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 16), &demangling cache variable for type metadata for TrainingTablePrinter?);
    outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 16) + *(*(v0 + 232) + 20), type metadata accessor for MLSoundClassifier.Model);

    if (!*(v0 + 248))
    {
      outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 16) + *(*(v0 + 232) + 28), type metadata accessor for MLSoundClassifier.ModelParameters);
    }

    v7 = *(v0 + 224);
    v8 = *(v0 + 216);
    v49 = *(v0 + 208);
    v47 = *(v0 + 184);
    v45 = *(v0 + 176);
    v43 = *(v0 + 152);
    v41 = *(v0 + 144);
    v37 = *(v0 + 136);
    v33 = *(v0 + 128);
    v29 = *(v0 + 120);
    v9 = *(v0 + 16);
    v10 = v9 + *(v0 + 308);
    v39 = *(v0 + 112);
    v35 = *(v0 + 104);
    v31 = *(v0 + 72);
    v27 = *(v0 + 64);
    v57 = *(v0 + 56);
    v53 = *(v0 + 48);
    outlined destroy of MLActivityClassifier.ModelParameters(v9 + *(v0 + 304), type metadata accessor for MLClassifierMetrics);
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLClassifierMetrics);
    v7;
    v8;
    v49;
    v47;
    v45;
    v43;
    v41;
    v37;
    v33;
    v29;
    v39;
    v35;
    v31;
    v27;
    v57;
    v53;
    v11 = *(v0 + 8);
  }

  else
  {
    v12 = *(v0 + 240);
    v13 = *(v0 + 56);
    v14 = *(v0 + 272);
    v15 = *(v0 + 16) + *(v0 + 304);
    v54 = *(*(v0 + 200) + 32);
    v54(v13, *(v0 + 216), *(v0 + 192));
    v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    swift_storeEnumTagMultiPayload(v13, v58, 0);
    swift_storeEnumTagMultiPayload(v13, v12, 0);
    outlined assign with take of MLClassifierMetrics(v13, v15);
    if (v14)
    {
      specialized MLSoundClassifier.evaluate<A>(on:)(*(v0 + 32));
      v16 = *(v0 + 240);
      v17 = *(v0 + 48);
      v18 = *(v0 + 16) + *(v0 + 308);
      v54(v17, *(v0 + 208), *(v0 + 192));
      swift_storeEnumTagMultiPayload(v17, v58, 0);
      swift_storeEnumTagMultiPayload(v17, v16, 0);
      outlined assign with take of MLClassifierMetrics(v17, v18);
    }

    v19 = *(v0 + 256);
    v48 = *(v0 + 224);
    v46 = *(v0 + 216);
    v44 = *(v0 + 208);
    v50 = *(v0 + 184);
    v42 = *(v0 + 176);
    v40 = *(v0 + 152);
    v38 = *(v0 + 144);
    v36 = *(v0 + 136);
    v34 = *(v0 + 128);
    v32 = *(v0 + 120);
    v25 = *(v0 + 112);
    v30 = *(v0 + 104);
    v28 = *(v0 + 72);
    v59 = *(v0 + 64);
    v55 = *(v0 + 56);
    v51 = *(v0 + 48);
    v20 = *(v0 + 40);
    v21 = *(v0 + 24);
    v26 = *(v0 + 32);
    v22 = *(v21 + 16);
    v23 = *(v19 + 16);
    v19;
    static MLSoundClassifier.reportAnalytics(trainingExampleCount:classCount:parameters:)(v22, v23, v20);

    outlined destroy of MLActivityClassifier.ModelParameters(v20, type metadata accessor for MLSoundClassifier.ModelParameters);
    v26;
    v21;
    outlined destroy of MLActivityClassifier.ModelParameters(v25, type metadata accessor for TrainingTablePrinter);
    outlined destroy of MLActivityClassifier.ModelParameters(v50, type metadata accessor for MLSoundClassifier.Classifier);
    v48;
    v46;
    v44;
    v50;
    v42;
    v40;
    v38;
    v36;
    v34;
    v32;
    v25;
    v30;
    v28;
    v59;
    v55;
    v51;
    v11 = *(v0 + 8);
  }

  return v11();
}

uint64_t _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy04CoreB013MLShapedArrayVySfGSSG7ElementRtzApQRt_r0_lufCSayAPG_ATTt3g5TY3_()
{
  v24 = *(v0 + 184);
  v1 = *(v0 + 112);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);

  outlined destroy of MLActivityClassifier.ModelParameters(v2, type metadata accessor for MLSoundClassifier.ModelParameters);
  v4;
  v3;
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for TrainingTablePrinter);
  outlined destroy of MLActivityClassifier.ModelParameters(v24, type metadata accessor for MLSoundClassifier.Classifier);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 16), &demangling cache variable for type metadata for TrainingTablePrinter?);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 16) + *(*(v0 + 232) + 20), type metadata accessor for MLSoundClassifier.Model);
  if (!*(v0 + 248))
  {
    outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 16) + *(*(v0 + 232) + 28), type metadata accessor for MLSoundClassifier.ModelParameters);
  }

  v5 = *(v0 + 224);
  v6 = *(v0 + 216);
  v23 = *(v0 + 208);
  v22 = *(v0 + 184);
  v21 = *(v0 + 176);
  v20 = *(v0 + 152);
  v19 = *(v0 + 144);
  v17 = *(v0 + 136);
  v15 = *(v0 + 128);
  v13 = *(v0 + 120);
  v7 = *(v0 + 16);
  v8 = v7 + *(v0 + 308);
  v18 = *(v0 + 112);
  v16 = *(v0 + 104);
  v14 = *(v0 + 72);
  v12 = *(v0 + 64);
  v11 = *(v0 + 56);
  v10 = *(v0 + 48);
  outlined destroy of MLActivityClassifier.ModelParameters(v7 + *(v0 + 304), type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v8, type metadata accessor for MLClassifierMetrics);
  v5;
  v6;
  v23;
  v22;
  v21;
  v20;
  v19;
  v17;
  v15;
  v13;
  v18;
  v16;
  v14;
  v12;
  v11;
  v10;
  return (*(v0 + 8))();
}

uint64_t closure #2 in MLSoundClassifier.init(trainingData:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[4] = a3;
  v4[3] = a2;
  v4[2] = a1;
  v5 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v4[6] = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #2 in MLSoundClassifier.init(trainingData:parameters:), 0, 0);
}

uint64_t closure #2 in MLSoundClassifier.init(trainingData:parameters:)()
{
  v1 = v0[4];
  if (!v1)
  {
    v1 = _swiftEmptyArrayStorage;
  }

  v4 = v1;
  outlined init with copy of MLTrainingSessionParameters(v0[5], v0[6], type metadata accessor for MLSoundClassifier.ModelParameters);

  v2 = swift_task_alloc(128);
  v0[7] = v2;
  *v2 = v0;
  v2[1] = closure #1 in closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:);
  return ((&_s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy10Foundation3URLVSSG7ElementRtzAoPRt_r0_lufCSayAOG_ASTt3g5Tu + _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy10Foundation3URLVSSG7ElementRtzAoPRt_r0_lufCSayAOG_ASTt3g5Tu))(v0[2], v0[3], v4, v0[6]);
}

uint64_t partial apply for closure #2 in MLSoundClassifier.init(trainingData:parameters:)(uint64_t a1)
{
  v3 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 32));
  v7 = swift_task_alloc(80);
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #2 in MLSoundClassifier.init(trainingData:parameters:)(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = ~*(v2 + 80) & (v3 + 32);
  v14 = *(v2 + 64);
  *(v0 + 16);
  *(v0 + 24);
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
        v13 = type metadata accessor for DataFrame(0);
        (*(*(v13 - 8) + 8))(v4 + v0, v13);
        v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        *(v5 + *(v15 + 48) + 8);
        v10 = *(v5 + *(v15 + 64) + 8);
        goto LABEL_6;
      default:
        break;
    }
  }

  v11 = *(v1 + 28);
  if (*(v5 + v11 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v11 + v5));
  }

  return swift_deallocObject(v0, v14 + v4, v3 | 7);
}

uint64_t partial apply for closure #1 in MLSoundClassifier.init(trainingData:parameters:)(uint64_t a1)
{
  v3 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 32));
  v7 = swift_task_alloc(80);
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLSoundClassifier.init(trainingData:parameters:)(a1, v4, v5, v6);
}

uint64_t _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy10Foundation3URLVSSG7ElementRtzAoPRt_r0_lufCSayAOG_ASTt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v4[10] = a3;
  v4[9] = a2;
  v4[8] = a1;
  v5 = (*(*(type metadata accessor for MLSoundClassifier.ModelParameters(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4[12] = swift_task_alloc(v5);
  v4[13] = swift_task_alloc(v5);
  return swift_task_switch(_s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy10Foundation3URLVSSG7ElementRtzAoPRt_r0_lufCSayAOG_ASTt3g5TY0_, 0, 0);
}

uint64_t _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy10Foundation3URLVSSG7ElementRtzAoPRt_r0_lufCSayAOG_ASTt3g5TY0_()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  outlined init with copy of MLTrainingSessionParameters(*(v0 + 88), v1, type metadata accessor for MLSoundClassifier.ModelParameters);
  MLSoundClassifier.FeatureExtractor.Configuration.init(parameters:fileCount:)(v1, *(v2 + 16));
  v3 = type metadata accessor for MLSoundClassifier.FeatureExtractor();
  swift_allocObject(v3, 88, 7);

  specialized MLSoundClassifier.FeatureExtractor.init<A>(files:options:)(v2, (v0 + 16));
  v10 = MLSoundClassifier.FeatureExtractor.extractFeatures()();

  v4 = *(v0 + 80);
  swift_allocObject(v3, 88, 7);

  specialized MLSoundClassifier.FeatureExtractor.init<A>(files:options:)(v4, (v0 + 16));
  v5 = MLSoundClassifier.FeatureExtractor.extractFeatures()();
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);

  outlined init with copy of MLTrainingSessionParameters(v6, v7, type metadata accessor for MLSoundClassifier.ModelParameters);
  v8 = swift_task_alloc(320);
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy10Foundation3URLVSSG7ElementRtzAoPRt_r0_lufCSayAOG_ASTt3g5TQ1_;
  return ((&_s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy04CoreB013MLShapedArrayVySfGSSG7ElementRtzApQRt_r0_lufCSayAPG_ATTt3g5Tu + _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy04CoreB013MLShapedArrayVySfGSSG7ElementRtzApQRt_r0_lufCSayAPG_ATTt3g5Tu))(*(v0 + 64), v10, v5, *(v0 + 96));
}

uint64_t _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy10Foundation3URLVSSG7ElementRtzAoPRt_r0_lufCSayAOG_ASTt3g5TQ1_()
{
  v2 = *(*v1 + 112);
  *(*v1 + 120) = v0;
  v2;
  if (v0)
  {
    v3 = _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy10Foundation3URLVSSG7ElementRtzAoPRt_r0_lufCSayAOG_ASTt3g5TY3_;
  }

  else
  {
    v3 = _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy10Foundation3URLVSSG7ElementRtzAoPRt_r0_lufCSayAOG_ASTt3g5TY2_;
  }

  return swift_task_switch(v3, 0, 0);
}

uint64_t _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy10Foundation3URLVSSG7ElementRtzAoPRt_r0_lufCSayAOG_ASTt3g5TY2_()
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