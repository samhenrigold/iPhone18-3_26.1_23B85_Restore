uint64_t outlined init with take of _TablePrinter(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for _TablePrinter(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

void partial apply for closure #1 in MLSoundClassifier.FeatureExtractor.extractFeatures()()
{
  v1 = *(type metadata accessor for _TablePrinter(0) - 8);
  v2 = ~*(v1 + 80) & (*(v1 + 80) + 48);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>) - 8);
  v6 = (*(v5 + 80) + v4 + 8) & ~*(v5 + 80);
  closure #1 in MLSoundClassifier.FeatureExtractor.extractFeatures()(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v0 + v2, *(v0 + v3), *(v0 + v4), v0 + v6, *(v0 + ((v6 + *(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void specialized trainWork #1 (_:annotatedFeature:) in MLSoundClassifier.FeatureExtractor.extractFeatures()(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, __int128 a7)
{
  v7 = a4 + 16;
  v8 = (a5 + 16);
  v9 = _objc_autoreleasePoolPush();
  closure #1 in trainWork #1 (_:annotatedFeature:) in MLSoundClassifier.FeatureExtractor.extractFeatures()(a2, a1, a3, v7, v8, a6);
  _objc_autoreleasePoolPop(v9);
}

uint64_t MLHandPoseClassifier.ModelParameters.init(validation:batchSize:maximumIterations:augmentationOptions:algorithm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = v4;
  v7 = *a4;
  outlined init with take of MLClassifierMetrics(a1, v4, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
  v8 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  *(v6 + v8[5]) = a2;
  *(v6 + v8[6]) = a3;
  result = v8[7];
  *(v6 + result) = v7;
  return result;
}

char MLHandPoseClassifier.ModelParameters.ValidationData.extractAnnotations(trainingData:)(uint64_t *a1, uint64_t *a2, __m128 a3)
{
  v60 = v3;
  v57 = v4;
  v59 = a2;
  v58 = a1;
  v5 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v53 = &v46;
  v9 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = v60;
  LOBYTE(v14) = MLHandPoseClassifier.DataSource.imagesWithAnnotations()(a3);
  if (v13)
  {
    return v14;
  }

  *&v52 = v5;
  v15 = v54;
  v62 = BYTE8(v54);
  outlined init with copy of MLHandPoseClassifier.ModelParameters.ValidationData(v57, &v46);
  v60 = &v46;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v46, v9);
  if (!EnumCaseMultiPayload)
  {
    v57 = 0;
    v52 = *v60;
    v61 = *(v60 + 16);
    LOBYTE(v53) = *(v60 + 17);
    v23 = v15;
    *&v54 = v15;
    v24 = v62;
    BYTE8(v54) = v62;
    LODWORD(v60) = v62;
    outlined copy of Result<_DataTable, Error>(v23, v62);
    v25 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v54, SBYTE8(v54));
    if (v25 > 0)
    {
      v50 = v23;
      v51 = v24;
      v54 = v52;
      v55 = v61;
      v56 = v53 & 1;
      MLDataTable.randomSplitBySequence(strategy:by:on:)(&v46, &v48, &v54, 0x7461506567616D69, 0xE900000000000068, 0x6C6562616CLL, 0xE500000000000000);
      outlined consume of Result<_DataTable, Error>(v23, v60);
      v14 = v46;
      v26 = v47;
      v27 = v49;
      v28 = v58;
      *v58 = v48;
      *(v28 + 8) = v27;
      v29 = v59;
      *v59 = v14;
      *(v29 + 8) = v26;
      return v14;
    }

LABEL_11:
    outlined consume of Result<_DataTable, Error>(v23, v60);
    v34 = v58;
    *v58 = 0;
    LOBYTE(v14) = -1;
    *(v34 + 8) = -1;
    v35 = v59;
    *v59 = 0;
    *(v35 + 8) = -1;
    return v14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v57 = 0;
    v23 = v15;
    *&v54 = v15;
    v30 = v62;
    BYTE8(v54) = v62;
    LODWORD(v60) = v62;
    outlined copy of Result<_DataTable, Error>(v23, v62);
    MLDataTable.size.getter();
    v32 = v31;
    outlined consume of Result<_DataTable, Error>(v54, SBYTE8(v54));
    if (v32)
    {
      v33 = v58;
      *v58 = v23;
      *(v33 + 8) = v30;
      v14 = v59;
      *v59 = 0;
      *(v14 + 8) = -1;
      return v14;
    }

    goto LABEL_11;
  }

  v17 = swift_getEnumCaseMultiPayload(v60, v52);
  v18 = v15;
  if (v17 == 5)
  {
    outlined consume of Result<_DataTable, Error>(v15, v62);
    v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
    v37 = v60;
    *(v60 + v36[12] + 8);
    *(v37 + v36[16] + 8);
    *(v37 + v36[20] + 8);
    v38 = type metadata accessor for DataFrame(0);
    (*(*(v38 - 8) + 8))(v37, v38);
  }

  else
  {
    v19 = v62;
    if (v17 != 3)
    {
      v41 = v53;
      outlined init with take of MLClassifierMetrics(v60, v53, type metadata accessor for MLHandPoseClassifier.DataSource);
      MLHandPoseClassifier.DataSource.imagesWithAnnotations()(a3);
      outlined destroy of MLHandPoseClassifier.ModelParameters.ValidationData(v41, type metadata accessor for MLHandPoseClassifier.DataSource);
      v42 = v58;
      v14 = v54;
      v43 = BYTE8(v54);
      *v58 = v18;
      *(v42 + 8) = v19;
      v44 = v59;
      *v59 = v14;
      *(v44 + 8) = v43;
      return v14;
    }

    outlined consume of Result<_DataTable, Error>(v18, v62);
    v20 = v60[3];
    v21 = v60[5];
    v22 = v60[7];
    outlined consume of Result<_DataTable, Error>(*v60, *(v60 + 2));
    v22;
    v21;
    v20;
  }

  v39 = v59;
  v40 = v58;
  *v58 = 0;
  LOBYTE(v14) = -1;
  *(v40 + 8) = -1;
  *v39 = 0;
  *(v39 + 8) = -1;
  return v14;
}

uint64_t MLHandPoseClassifier.ModelParameters.batchSize.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLHandPoseClassifier.ModelParameters(0) + 20);
  *(v1 + result) = a1;
  return result;
}

uint64_t MLHandPoseClassifier.ModelParameters.maximumIterations.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLHandPoseClassifier.ModelParameters(0) + 24);
  *(v1 + result) = a1;
  return result;
}

uint64_t MLHandPoseClassifier.ModelParameters.augmentationOptions.getter()
{
  v2 = v0;
  result = *(v1 + *(type metadata accessor for MLHandPoseClassifier.ModelParameters(0) + 28));
  *v2 = result;
  return result;
}

uint64_t MLHandPoseClassifier.ModelParameters.augmentationOptions.setter(uint64_t *a1)
{
  v2 = *a1;
  result = *(type metadata accessor for MLHandPoseClassifier.ModelParameters(0) + 28);
  *(v1 + result) = v2;
  return result;
}

Swift::Int MLHandPoseClassifier.ModelParameters.ModelAlgorithmType.hashValue.getter()
{
  Hasher.init(_seed:)(0);
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

unint64_t MLHandPoseClassifier.ModelParameters.description.getter()
{
  _StringGuts.grow(_:)(23);
  0;
  v1 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  object = v2._object;
  String.append(_:)(v2);
  object;
  v4._countAndFlagsBits = 10;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  strcpy(&v11, "Batch Size: ");
  BYTE5(v11._object) = 0;
  HIWORD(v11._object) = -5120;
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v6 = v5._object;
  String.append(_:)(v5);
  v6;
  v4._countAndFlagsBits = 10;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  String.append(_:)(v11);
  v11._object;
  _StringGuts.grow(_:)(25);
  0;
  v11._countAndFlagsBits = 0xD000000000000016;
  v11._object = "Target Frame Rate: " + 0x8000000000000000;
  v7 = "Model Algorithm: GCN\n" + 0x8000000000000000;
  v8._countAndFlagsBits = 0;
  if (*(v0 + *(v1 + 28)) == 1)
  {
    v8._countAndFlagsBits = 0xD000000000000011;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  v8._object = v7;
  String.append(_:)(v8);
  v7;
  v9._countAndFlagsBits = 10;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  String.append(_:)(v11);
  v11._object;
  v9._object = "Augmentation Options: " + 0x8000000000000000;
  v9._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v9);
  return 0xD000000000000014;
}

uint64_t outlined init with copy of MLHandPoseClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined assign with take of MLHandPoseClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 40))(a2, a1, v2);
  return a2;
}

unint64_t MLHandPoseClassifier.ModelParameters.playgroundDescription.getter()
{
  v1 = v0;
  result = MLHandPoseClassifier.ModelParameters.description.getter();
  v1[3] = &type metadata for String;
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t lazy protocol witness table accessor for type MLHandPoseClassifier.ModelParameters.ModelAlgorithmType and conformance MLHandPoseClassifier.ModelParameters.ModelAlgorithmType()
{
  result = lazy protocol witness table cache variable for type MLHandPoseClassifier.ModelParameters.ModelAlgorithmType and conformance MLHandPoseClassifier.ModelParameters.ModelAlgorithmType;
  if (!lazy protocol witness table cache variable for type MLHandPoseClassifier.ModelParameters.ModelAlgorithmType and conformance MLHandPoseClassifier.ModelParameters.ModelAlgorithmType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLHandPoseClassifier.ModelParameters.ModelAlgorithmType, &type metadata for MLHandPoseClassifier.ModelParameters.ModelAlgorithmType);
    lazy protocol witness table cache variable for type MLHandPoseClassifier.ModelParameters.ModelAlgorithmType and conformance MLHandPoseClassifier.ModelParameters.ModelAlgorithmType = result;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for MLHandPoseClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  v4 = __dst;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *__src;
    *v4 = *__src;
    v4 = (v14 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(__src, v7) == 1)
    {
      v8 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(__src, v8))
      {
        case 0u:
          v31 = type metadata accessor for URL(0);
          v34 = *(*(v31 - 8) + 16);
          v34(__dst, __src, v31);
          v32 = v8;
          v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
          v34(&__dst[v9[12]], &__src[v9[12]], v31);
          v10 = v9[16];
          *&__dst[v10] = *&__src[v10];
          *&__dst[v10 + 8] = *&__src[v10 + 8];
          v11 = v9[20];
          *&__dst[v11] = *&__src[v11];
          *&__dst[v11 + 8] = *&__src[v11 + 8];

          v12 = v32;
          v13 = 0;
          goto LABEL_15;
        case 1u:
          v18 = type metadata accessor for URL(0);
          (*(*(v18 - 8) + 16))(__dst, __src, v18);
          v30 = 1;
          goto LABEL_11;
        case 2u:
          v16 = type metadata accessor for URL(0);
          (*(*(v16 - 8) + 16))(__dst, __src, v16);
          v30 = 2;
LABEL_11:
          v13 = v30;
          v12 = v8;
          goto LABEL_15;
        case 3u:
          v33 = v8;
          v17 = *__src;
          v36 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v36);
          *__dst = v17;
          __dst[8] = v36;
          *(__dst + 2) = *(__src + 2);
          *(__dst + 3) = *(__src + 3);
          *(__dst + 4) = *(__src + 4);
          *(__dst + 5) = *(__src + 5);
          *(__dst + 6) = *(__src + 6);
          *(__dst + 7) = *(__src + 7);

          v29 = 3;
          goto LABEL_14;
        case 4u:
          v33 = v8;
          v15 = *__src;
          v35 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v35);
          *__dst = v15;
          __dst[8] = v35;
          *(__dst + 2) = *(__src + 2);
          *(__dst + 3) = *(__src + 3);
          *(__dst + 4) = *(__src + 4);
          *(__dst + 5) = *(__src + 5);

          v29 = 4;
          goto LABEL_14;
        case 5u:
          v19 = type metadata accessor for DataFrame(0);
          (*(*(v19 - 8) + 16))(__dst, __src, v19);
          v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v21 = v20[12];
          *&__dst[v21] = *&__src[v21];
          *&__dst[v21 + 8] = *&__src[v21 + 8];
          v22 = v20[16];
          *&__dst[v22] = *&__src[v22];
          *&__dst[v22 + 8] = *&__src[v22 + 8];
          v23 = v20[20];
          *&__dst[v23] = *&__src[v23];
          v33 = v8;
          *&__dst[v23 + 8] = *&__src[v23 + 8];

          v29 = 5;
          goto LABEL_14;
        case 6u:
          v24 = type metadata accessor for DataFrame(0);
          (*(*(v24 - 8) + 16))(__dst, __src, v24);
          v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
          v26 = *(v25 + 48);
          *&__dst[v26] = *&__src[v26];
          *&__dst[v26 + 8] = *&__src[v26 + 8];
          v27 = *(v25 + 64);
          *&__dst[v27] = *&__src[v27];
          v33 = v8;
          *&__dst[v27 + 8] = *&__src[v27 + 8];

          v29 = 6;
LABEL_14:
          v13 = v29;
          v12 = v33;
LABEL_15:
          swift_storeEnumTagMultiPayload(__dst, v12, v13);
          swift_storeEnumTagMultiPayload(__dst, v7, 1);
          break;
        case 7u:
          JUMPOUT(0x138140);
      }
    }

    else
    {
      memcpy(__dst, __src, *(*(v7 - 8) + 64));
    }

    *&__dst[a3[5]] = *&__src[a3[5]];
    *&__dst[a3[6]] = *&__src[a3[6]];
    *&__dst[a3[7]] = *&__src[a3[7]];
  }

  return v4;
}

uint64_t destroy for MLHandPoseClassifier.ModelParameters(uint64_t a1)
{
  v1 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  result = swift_getEnumCaseMultiPayload(a1, v1);
  if (result == 1)
  {
    v3 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
    result = swift_getEnumCaseMultiPayload(a1, v3);
    switch(result)
    {
      case 0:
        v5 = type metadata accessor for URL(0);
        v6 = *(*(v5 - 8) + 8);
        v6(a1, v5);
        v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v6(a1 + v7[12], v5);
        *(a1 + v7[16] + 8);
        v8 = v7[20];
        goto LABEL_10;
      case 1:
      case 2:
        v4 = type metadata accessor for URL(0);
        return (*(*(v4 - 8) + 8))(a1, v4);
      case 3:
        outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
        *(a1 + 24);
        *(a1 + 40);
        return *(a1 + 56);
      case 4:
        outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
        *(a1 + 24);
        return *(a1 + 40);
      case 5:
        v9 = type metadata accessor for DataFrame(0);
        (*(*(v9 - 8) + 8))(a1, v9);
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *(a1 + v10[12] + 8);
        *(a1 + v10[16] + 8);
        v8 = v10[20];
        goto LABEL_10;
      case 6:
        v11 = type metadata accessor for DataFrame(0);
        (*(*(v11 - 8) + 8))(a1, v11);
        v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        *(a1 + *(v12 + 48) + 8);
        v8 = *(v12 + 64);
LABEL_10:
        result = *(a1 + v8 + 8);
        break;
      default:
        return result;
    }
  }

  return result;
}

char *initializeWithCopy for MLHandPoseClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  v5 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(__src, v5) == 1)
  {
    v6 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(__src, v6))
    {
      case 0u:
        v28 = type metadata accessor for URL(0);
        v31 = *(*(v28 - 8) + 16);
        v31(__dst, __src, v28);
        v29 = v6;
        v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v31(&__dst[v7[12]], &__src[v7[12]], v28);
        v8 = v7[16];
        *&__dst[v8] = *&__src[v8];
        *&__dst[v8 + 8] = *&__src[v8 + 8];
        v9 = v7[20];
        *&__dst[v9] = *&__src[v9];
        *&__dst[v9 + 8] = *&__src[v9 + 8];

        v10 = v29;
        v11 = 0;
        goto LABEL_13;
      case 1u:
        v15 = type metadata accessor for URL(0);
        (*(*(v15 - 8) + 16))(__dst, __src, v15);
        v27 = 1;
        goto LABEL_9;
      case 2u:
        v13 = type metadata accessor for URL(0);
        (*(*(v13 - 8) + 16))(__dst, __src, v13);
        v27 = 2;
LABEL_9:
        v11 = v27;
        v10 = v6;
        goto LABEL_13;
      case 3u:
        v30 = v6;
        v14 = *__src;
        v33 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v33);
        *__dst = v14;
        __dst[8] = v33;
        *(__dst + 2) = *(__src + 2);
        *(__dst + 3) = *(__src + 3);
        *(__dst + 4) = *(__src + 4);
        *(__dst + 5) = *(__src + 5);
        *(__dst + 6) = *(__src + 6);
        *(__dst + 7) = *(__src + 7);

        v26 = 3;
        goto LABEL_12;
      case 4u:
        v30 = v6;
        v12 = *__src;
        v32 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v32);
        *__dst = v12;
        __dst[8] = v32;
        *(__dst + 2) = *(__src + 2);
        *(__dst + 3) = *(__src + 3);
        *(__dst + 4) = *(__src + 4);
        *(__dst + 5) = *(__src + 5);

        v26 = 4;
        goto LABEL_12;
      case 5u:
        v16 = type metadata accessor for DataFrame(0);
        (*(*(v16 - 8) + 16))(__dst, __src, v16);
        v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v18 = v17[12];
        *&__dst[v18] = *&__src[v18];
        *&__dst[v18 + 8] = *&__src[v18 + 8];
        v19 = v17[16];
        *&__dst[v19] = *&__src[v19];
        *&__dst[v19 + 8] = *&__src[v19 + 8];
        v20 = v17[20];
        *&__dst[v20] = *&__src[v20];
        v30 = v6;
        *&__dst[v20 + 8] = *&__src[v20 + 8];

        v26 = 5;
        goto LABEL_12;
      case 6u:
        v21 = type metadata accessor for DataFrame(0);
        (*(*(v21 - 8) + 16))(__dst, __src, v21);
        v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        v23 = *(v22 + 48);
        *&__dst[v23] = *&__src[v23];
        *&__dst[v23 + 8] = *&__src[v23 + 8];
        v24 = *(v22 + 64);
        *&__dst[v24] = *&__src[v24];
        v30 = v6;
        *&__dst[v24 + 8] = *&__src[v24 + 8];

        v26 = 6;
LABEL_12:
        v11 = v26;
        v10 = v30;
LABEL_13:
        swift_storeEnumTagMultiPayload(__dst, v10, v11);
        swift_storeEnumTagMultiPayload(__dst, v5, 1);
        break;
    }
  }

  else
  {
    memcpy(__dst, __src, *(*(v5 - 8) + 64));
  }

  *&__dst[a3[5]] = *&__src[a3[5]];
  *&__dst[a3[6]] = *&__src[a3[6]];
  *&__dst[a3[7]] = *&__src[a3[7]];
  return __dst;
}

char *assignWithCopy for MLHandPoseClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLHandPoseClassifier.ModelParameters.ValidationData(__dst, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
    v4 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(__src, v4) == 1)
    {
      v5 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v5);
      switch(EnumCaseMultiPayload)
      {
        case 0u:
          v21 = type metadata accessor for URL(0);
          v26 = *(*(v21 - 8) + 16);
          v26(__dst, __src, v21);
          v23 = v5;
          v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
          v26(&__dst[v8[12]], &__src[v8[12]], v21);
          v9 = v8[16];
          *&__dst[v9] = *&__src[v9];
          *&__dst[v9 + 8] = *&__src[v9 + 8];
          v10 = v8[20];
          *&__dst[v10] = *&__src[v10];
          goto LABEL_11;
        case 1u:
        case 2u:
          v6 = type metadata accessor for URL(0);
          (*(*(v6 - 8) + 16))(__dst, __src, v6);
          goto LABEL_14;
        case 3u:
          v24 = v5;
          v11 = *__src;
          v27 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v27);
          *__dst = v11;
          __dst[8] = v27;
          *(__dst + 2) = *(__src + 2);
          *(__dst + 3) = *(__src + 3);
          *(__dst + 4) = *(__src + 4);
          *(__dst + 5) = *(__src + 5);
          *(__dst + 6) = *(__src + 6);
          *(__dst + 7) = *(__src + 7);

          v5 = v24;

          goto LABEL_13;
        case 4u:
          v23 = v5;
          v7 = *__src;
          v25 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v25);
          *__dst = v7;
          __dst[8] = v25;
          *(__dst + 2) = *(__src + 2);
          *(__dst + 3) = *(__src + 3);
          *(__dst + 4) = *(__src + 4);
          *(__dst + 5) = *(__src + 5);
          goto LABEL_12;
        case 5u:
          v12 = type metadata accessor for DataFrame(0);
          (*(*(v12 - 8) + 16))(__dst, __src, v12);
          v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v14 = v13[12];
          *&__dst[v14] = *&__src[v14];
          *&__dst[v14 + 8] = *&__src[v14 + 8];
          v15 = v13[16];
          *&__dst[v15] = *&__src[v15];
          *&__dst[v15 + 8] = *&__src[v15 + 8];
          v16 = v13[20];
          *&__dst[v16] = *&__src[v16];
          v23 = v5;
          *&__dst[v16 + 8] = *&__src[v16 + 8];

          goto LABEL_12;
        case 6u:
          v17 = type metadata accessor for DataFrame(0);
          (*(*(v17 - 8) + 16))(__dst, __src, v17);
          v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
          v19 = *(v18 + 48);
          *&__dst[v19] = *&__src[v19];
          *&__dst[v19 + 8] = *&__src[v19 + 8];
          v10 = *(v18 + 64);
          *&__dst[v10] = *&__src[v10];
          v23 = v5;
LABEL_11:
          *&__dst[v10 + 8] = *&__src[v10 + 8];
LABEL_12:

          v5 = v23;
LABEL_13:

LABEL_14:
          swift_storeEnumTagMultiPayload(__dst, v5, EnumCaseMultiPayload);
          swift_storeEnumTagMultiPayload(__dst, v4, 1);
          break;
      }
    }

    else
    {
      memcpy(__dst, __src, *(*(v4 - 8) + 64));
    }
  }

  *&__dst[a3[5]] = *&__src[a3[5]];
  *&__dst[a3[6]] = *&__src[a3[6]];
  *&__dst[a3[7]] = *&__src[a3[7]];
  return __dst;
}

char *initializeWithTake for MLHandPoseClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  v5 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(__src, v5) == 1)
  {
    v6 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(__src, v6))
    {
      case 0u:
        v19 = type metadata accessor for URL(0);
        v20 = *(*(v19 - 8) + 32);
        v20(__dst, __src, v19);
        v18 = v6;
        v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v20(&__dst[v7[12]], &__src[v7[12]], v19);
        *&__dst[v7[16]] = *&__src[v7[16]];
        *&__dst[v7[20]] = *&__src[v7[20]];
        v8 = v18;
        v9 = 0;
        goto LABEL_11;
      case 1u:
        v11 = type metadata accessor for URL(0);
        (*(*(v11 - 8) + 32))(__dst, __src, v11);
        v17 = 1;
        goto LABEL_10;
      case 2u:
        v10 = type metadata accessor for URL(0);
        (*(*(v10 - 8) + 32))(__dst, __src, v10);
        v17 = 2;
        goto LABEL_10;
      case 5u:
        v12 = type metadata accessor for DataFrame(0);
        (*(*(v12 - 8) + 32))(__dst, __src, v12);
        v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *&__dst[v13[12]] = *&__src[v13[12]];
        *&__dst[v13[16]] = *&__src[v13[16]];
        *&__dst[v13[20]] = *&__src[v13[20]];
        v17 = 5;
        goto LABEL_10;
      case 6u:
        v14 = type metadata accessor for DataFrame(0);
        (*(*(v14 - 8) + 32))(__dst, __src, v14);
        v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        *&__dst[*(v15 + 48)] = *&__src[*(v15 + 48)];
        *&__dst[*(v15 + 64)] = *&__src[*(v15 + 64)];
        v17 = 6;
LABEL_10:
        v9 = v17;
        v8 = v6;
LABEL_11:
        swift_storeEnumTagMultiPayload(__dst, v8, v9);
        break;
      default:
        memcpy(__dst, __src, *(*(v6 - 8) + 64));
        break;
    }

    swift_storeEnumTagMultiPayload(__dst, v5, 1);
  }

  else
  {
    memcpy(__dst, __src, *(*(v5 - 8) + 64));
  }

  *&__dst[a3[5]] = *&__src[a3[5]];
  *&__dst[a3[6]] = *&__src[a3[6]];
  *&__dst[a3[7]] = *&__src[a3[7]];
  return __dst;
}

char *assignWithTake for MLHandPoseClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLHandPoseClassifier.ModelParameters.ValidationData(__dst, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
    v5 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(__src, v5) == 1)
    {
      v6 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(__src, v6))
      {
        case 0u:
          v19 = type metadata accessor for URL(0);
          v20 = *(*(v19 - 8) + 32);
          v20(__dst, __src, v19);
          v18 = v6;
          v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
          v20(&__dst[v7[12]], &__src[v7[12]], v19);
          *&__dst[v7[16]] = *&__src[v7[16]];
          *&__dst[v7[20]] = *&__src[v7[20]];
          v8 = v18;
          v9 = 0;
          goto LABEL_12;
        case 1u:
          v11 = type metadata accessor for URL(0);
          (*(*(v11 - 8) + 32))(__dst, __src, v11);
          v17 = 1;
          goto LABEL_11;
        case 2u:
          v10 = type metadata accessor for URL(0);
          (*(*(v10 - 8) + 32))(__dst, __src, v10);
          v17 = 2;
          goto LABEL_11;
        case 5u:
          v12 = type metadata accessor for DataFrame(0);
          (*(*(v12 - 8) + 32))(__dst, __src, v12);
          v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          *&__dst[v13[12]] = *&__src[v13[12]];
          *&__dst[v13[16]] = *&__src[v13[16]];
          *&__dst[v13[20]] = *&__src[v13[20]];
          v17 = 5;
          goto LABEL_11;
        case 6u:
          v14 = type metadata accessor for DataFrame(0);
          (*(*(v14 - 8) + 32))(__dst, __src, v14);
          v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
          *&__dst[*(v15 + 48)] = *&__src[*(v15 + 48)];
          *&__dst[*(v15 + 64)] = *&__src[*(v15 + 64)];
          v17 = 6;
LABEL_11:
          v9 = v17;
          v8 = v6;
LABEL_12:
          swift_storeEnumTagMultiPayload(__dst, v8, v9);
          break;
        default:
          memcpy(__dst, __src, *(*(v6 - 8) + 64));
          break;
      }

      swift_storeEnumTagMultiPayload(__dst, v5, 1);
    }

    else
    {
      memcpy(__dst, __src, *(*(v5 - 8) + 64));
    }
  }

  *&__dst[a3[5]] = *&__src[a3[5]];
  *&__dst[a3[6]] = *&__src[a3[6]];
  *&__dst[a3[7]] = *&__src[a3[7]];
  return __dst;
}

uint64_t type metadata completion function for MLHandPoseClassifier.ModelParameters(uint64_t a1)
{
  result = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(319);
  if (v2 <= 0x3F)
  {
    v3[0] = *(result - 8) + 64;
    v3[1] = &value witness table for Builtin.Int64 + 64;
    v3[2] = &value witness table for Builtin.Int64 + 64;
    v3[3] = &value witness table for Builtin.Int64 + 64;
    v3[4] = &value witness table for () + 64;
    swift_initStructMetadata(a1, 256, 5, v3, a1 + 16);
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for MLHandPoseClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *__src;
    *v3 = *__src;
    v3 = (v14 + ((v5 + 16) & ~v5));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
    {
      return memcpy(__dst, __src, *(v4 + 64));
    }

    v7 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(__src, v7))
    {
      case 0u:
        v34 = v7;
        v8 = type metadata accessor for URL(0);
        v33 = *(*(v8 - 8) + 16);
        v33(__dst, __src, v8);
        v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v33(&__dst[v9[12]], &__src[v9[12]], v8);
        v10 = v9[16];
        *&__dst[v10] = *&__src[v10];
        *&__dst[v10 + 8] = *&__src[v10 + 8];
        v11 = v9[20];
        *&__dst[v11] = *&__src[v11];
        *&__dst[v11 + 8] = *&__src[v11 + 8];

        v12 = v34;
        v13 = 0;
        goto LABEL_15;
      case 1u:
        v21 = type metadata accessor for URL(0);
        (*(*(v21 - 8) + 16))(__dst, __src, v21);
        v32 = 1;
        goto LABEL_14;
      case 2u:
        v18 = type metadata accessor for URL(0);
        (*(*(v18 - 8) + 16))(__dst, __src, v18);
        v32 = 2;
        goto LABEL_14;
      case 3u:
        v19 = *__src;
        v35 = v7;
        v20 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v20);
        *__dst = v19;
        __dst[8] = v20;
        *(__dst + 2) = *(__src + 2);
        *(__dst + 3) = *(__src + 3);
        *(__dst + 4) = *(__src + 4);
        *(__dst + 5) = *(__src + 5);
        *(__dst + 6) = *(__src + 6);
        *(__dst + 7) = *(__src + 7);

        v31 = 3;
        goto LABEL_10;
      case 4u:
        v16 = *__src;
        v35 = v7;
        v17 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v17);
        *__dst = v16;
        __dst[8] = v17;
        *(__dst + 2) = *(__src + 2);
        *(__dst + 3) = *(__src + 3);
        *(__dst + 4) = *(__src + 4);
        *(__dst + 5) = *(__src + 5);

        v31 = 4;
LABEL_10:
        v13 = v31;
        v12 = v35;
        goto LABEL_15;
      case 5u:
        v22 = type metadata accessor for DataFrame(0);
        (*(*(v22 - 8) + 16))(__dst, __src, v22);
        v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v24 = v23[12];
        *&__dst[v24] = *&__src[v24];
        *&__dst[v24 + 8] = *&__src[v24 + 8];
        v25 = v23[16];
        *&__dst[v25] = *&__src[v25];
        *&__dst[v25 + 8] = *&__src[v25 + 8];
        v26 = v23[20];
        *&__dst[v26] = *&__src[v26];
        *&__dst[v26 + 8] = *&__src[v26 + 8];

        v32 = 5;
        goto LABEL_14;
      case 6u:
        v27 = type metadata accessor for DataFrame(0);
        (*(*(v27 - 8) + 16))(__dst, __src, v27);
        v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        v29 = *(v28 + 48);
        *&__dst[v29] = *&__src[v29];
        *&__dst[v29 + 8] = *&__src[v29 + 8];
        v30 = *(v28 + 64);
        *&__dst[v30] = *&__src[v30];
        *&__dst[v30 + 8] = *&__src[v30 + 8];

        v32 = 6;
LABEL_14:
        v13 = v32;
        v12 = v7;
LABEL_15:
        swift_storeEnumTagMultiPayload(__dst, v12, v13);
        swift_storeEnumTagMultiPayload(__dst, a3, 1);
        break;
    }
  }

  return v3;
}

uint64_t destroy for MLHandPoseClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  if (result == 1)
  {
    v3 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
    result = swift_getEnumCaseMultiPayload(a1, v3);
    switch(result)
    {
      case 0:
        v5 = type metadata accessor for URL(0);
        v6 = *(*(v5 - 8) + 8);
        v6(a1, v5);
        v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v6(a1 + v7[12], v5);
        *(a1 + v7[16] + 8);
        v8 = v7[20];
        goto LABEL_10;
      case 1:
      case 2:
        v4 = type metadata accessor for URL(0);
        return (*(*(v4 - 8) + 8))(a1, v4);
      case 3:
        outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
        *(a1 + 24);
        *(a1 + 40);
        return *(a1 + 56);
      case 4:
        outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
        *(a1 + 24);
        return *(a1 + 40);
      case 5:
        v9 = type metadata accessor for DataFrame(0);
        (*(*(v9 - 8) + 8))(a1, v9);
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *(a1 + v10[12] + 8);
        *(a1 + v10[16] + 8);
        v8 = v10[20];
        goto LABEL_10;
      case 6:
        v11 = type metadata accessor for DataFrame(0);
        (*(*(v11 - 8) + 8))(a1, v11);
        v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        *(a1 + *(v12 + 48) + 8);
        v8 = *(v12 + 64);
LABEL_10:
        result = *(a1 + v8 + 8);
        break;
      default:
        return result;
    }
  }

  return result;
}

char *initializeWithCopy for MLHandPoseClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  switch(swift_getEnumCaseMultiPayload(__src, v4))
  {
    case 0u:
      v30 = v4;
      v5 = type metadata accessor for URL(0);
      v29 = *(*(v5 - 8) + 16);
      v29(__dst, __src, v5);
      v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
      v29(&__dst[v6[12]], &__src[v6[12]], v5);
      v7 = v6[16];
      *&__dst[v7] = *&__src[v7];
      *&__dst[v7 + 8] = *&__src[v7 + 8];
      v8 = v6[20];
      *&__dst[v8] = *&__src[v8];
      *&__dst[v8 + 8] = *&__src[v8 + 8];

      v9 = v30;
      v10 = 0;
      goto LABEL_13;
    case 1u:
      v17 = type metadata accessor for URL(0);
      (*(*(v17 - 8) + 16))(__dst, __src, v17);
      v28 = 1;
      goto LABEL_12;
    case 2u:
      v14 = type metadata accessor for URL(0);
      (*(*(v14 - 8) + 16))(__dst, __src, v14);
      v28 = 2;
      goto LABEL_12;
    case 3u:
      v15 = *__src;
      v31 = v4;
      v16 = __src[8];
      outlined copy of Result<_DataTable, Error>(*__src, v16);
      *__dst = v15;
      __dst[8] = v16;
      *(__dst + 2) = *(__src + 2);
      *(__dst + 3) = *(__src + 3);
      *(__dst + 4) = *(__src + 4);
      *(__dst + 5) = *(__src + 5);
      *(__dst + 6) = *(__src + 6);
      *(__dst + 7) = *(__src + 7);

      v27 = 3;
      goto LABEL_8;
    case 4u:
      v12 = *__src;
      v31 = v4;
      v13 = __src[8];
      outlined copy of Result<_DataTable, Error>(*__src, v13);
      *__dst = v12;
      __dst[8] = v13;
      *(__dst + 2) = *(__src + 2);
      *(__dst + 3) = *(__src + 3);
      *(__dst + 4) = *(__src + 4);
      *(__dst + 5) = *(__src + 5);

      v27 = 4;
LABEL_8:
      v10 = v27;
      v9 = v31;
      goto LABEL_13;
    case 5u:
      v18 = type metadata accessor for DataFrame(0);
      (*(*(v18 - 8) + 16))(__dst, __src, v18);
      v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      v20 = v19[12];
      *&__dst[v20] = *&__src[v20];
      *&__dst[v20 + 8] = *&__src[v20 + 8];
      v21 = v19[16];
      *&__dst[v21] = *&__src[v21];
      *&__dst[v21 + 8] = *&__src[v21 + 8];
      v22 = v19[20];
      *&__dst[v22] = *&__src[v22];
      *&__dst[v22 + 8] = *&__src[v22 + 8];

      v28 = 5;
      goto LABEL_12;
    case 6u:
      v23 = type metadata accessor for DataFrame(0);
      (*(*(v23 - 8) + 16))(__dst, __src, v23);
      v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
      v25 = *(v24 + 48);
      *&__dst[v25] = *&__src[v25];
      *&__dst[v25 + 8] = *&__src[v25 + 8];
      v26 = *(v24 + 64);
      *&__dst[v26] = *&__src[v26];
      *&__dst[v26 + 8] = *&__src[v26 + 8];

      v28 = 6;
LABEL_12:
      v10 = v28;
      v9 = v4;
LABEL_13:
      swift_storeEnumTagMultiPayload(__dst, v9, v10);
      swift_storeEnumTagMultiPayload(__dst, a3, 1);
      result = __dst;
      break;
  }

  return result;
}

char *assignWithCopy for MLHandPoseClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLHandPoseClassifier.ModelParameters.ValidationData(__dst, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
    if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
    {
      return memcpy(__dst, __src, *(*(a3 - 8) + 64));
    }

    v4 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v4);
    switch(EnumCaseMultiPayload)
    {
      case 0u:
        v28 = EnumCaseMultiPayload;
        v24 = type metadata accessor for URL(0);
        v10 = *(*(v24 - 8) + 16);
        v10(__dst, __src, v24);
        v26 = v4;
        v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v10(&__dst[v11[12]], &__src[v11[12]], v24);
        v12 = v11[16];
        *&__dst[v12] = *&__src[v12];
        *&__dst[v12 + 8] = *&__src[v12 + 8];
        v13 = v11[20];
        v4 = v26;
        *&__dst[v13] = *&__src[v13];
        goto LABEL_12;
      case 1u:
      case 2u:
        v6 = type metadata accessor for URL(0);
        (*(*(v6 - 8) + 16))(__dst, __src, v6);
        goto LABEL_15;
      case 3u:
        v29 = EnumCaseMultiPayload;
        v14 = *__src;
        v27 = v4;
        v15 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v15);
        *__dst = v14;
        __dst[8] = v15;
        *(__dst + 2) = *(__src + 2);
        *(__dst + 3) = *(__src + 3);
        *(__dst + 4) = *(__src + 4);
        *(__dst + 5) = *(__src + 5);
        *(__dst + 6) = *(__src + 6);
        *(__dst + 7) = *(__src + 7);
        goto LABEL_10;
      case 4u:
        v28 = EnumCaseMultiPayload;
        v8 = *__src;
        v25 = v4;
        v9 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v9);
        *__dst = v8;
        __dst[8] = v9;
        v4 = v25;
        *(__dst + 2) = *(__src + 2);
        *(__dst + 3) = *(__src + 3);
        *(__dst + 4) = *(__src + 4);
        *(__dst + 5) = *(__src + 5);
        goto LABEL_13;
      case 5u:
        v16 = type metadata accessor for DataFrame(0);
        (*(*(v16 - 8) + 16))(__dst, __src, v16);
        v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v18 = v17[12];
        *&__dst[v18] = *&__src[v18];
        *&__dst[v18 + 8] = *&__src[v18 + 8];
        v19 = v17[16];
        *&__dst[v19] = *&__src[v19];
        v29 = EnumCaseMultiPayload;
        *&__dst[v19 + 8] = *&__src[v19 + 8];
        v20 = v17[20];
        *&__dst[v20] = *&__src[v20];
        v27 = v4;
        *&__dst[v20 + 8] = *&__src[v20 + 8];
LABEL_10:

        EnumCaseMultiPayload = v29;

        v4 = v27;
        break;
      case 6u:
        v21 = type metadata accessor for DataFrame(0);
        (*(*(v21 - 8) + 16))(__dst, __src, v21);
        v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        v23 = *(v22 + 48);
        *&__dst[v23] = *&__src[v23];
        *&__dst[v23 + 8] = *&__src[v23 + 8];
        v13 = *(v22 + 64);
        *&__dst[v13] = *&__src[v13];
        v28 = EnumCaseMultiPayload;
LABEL_12:
        *&__dst[v13 + 8] = *&__src[v13 + 8];
LABEL_13:

        EnumCaseMultiPayload = v28;
        break;
    }

LABEL_15:
    swift_storeEnumTagMultiPayload(__dst, v4, EnumCaseMultiPayload);
    swift_storeEnumTagMultiPayload(__dst, a3, 1);
  }

  return __dst;
}

char *initializeWithTake for MLHandPoseClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  switch(swift_getEnumCaseMultiPayload(__src, v4))
  {
    case 0u:
      v16 = type metadata accessor for URL(0);
      v17 = *(*(v16 - 8) + 32);
      v17(__dst, __src, v16);
      v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
      v17(&__dst[v5[12]], &__src[v5[12]], v16);
      *&__dst[v5[16]] = *&__src[v5[16]];
      *&__dst[v5[20]] = *&__src[v5[20]];
      v6 = v4;
      v7 = 0;
      goto LABEL_11;
    case 1u:
      v10 = type metadata accessor for URL(0);
      (*(*(v10 - 8) + 32))(__dst, __src, v10);
      v15 = 1;
      goto LABEL_10;
    case 2u:
      v9 = type metadata accessor for URL(0);
      (*(*(v9 - 8) + 32))(__dst, __src, v9);
      v15 = 2;
      goto LABEL_10;
    case 5u:
      v11 = type metadata accessor for DataFrame(0);
      (*(*(v11 - 8) + 32))(__dst, __src, v11);
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *&__dst[v12[12]] = *&__src[v12[12]];
      *&__dst[v12[16]] = *&__src[v12[16]];
      *&__dst[v12[20]] = *&__src[v12[20]];
      v15 = 5;
      goto LABEL_10;
    case 6u:
      v13 = type metadata accessor for DataFrame(0);
      (*(*(v13 - 8) + 32))(__dst, __src, v13);
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
      *&__dst[*(v14 + 48)] = *&__src[*(v14 + 48)];
      *&__dst[*(v14 + 64)] = *&__src[*(v14 + 64)];
      v15 = 6;
LABEL_10:
      v7 = v15;
      v6 = v4;
LABEL_11:
      swift_storeEnumTagMultiPayload(__dst, v6, v7);
      break;
    default:
      memcpy(__dst, __src, *(*(v4 - 8) + 64));
      break;
  }

  swift_storeEnumTagMultiPayload(__dst, a3, 1);
  return __dst;
}

char *assignWithTake for MLHandPoseClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLHandPoseClassifier.ModelParameters.ValidationData(__dst, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
    if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
    {
      return memcpy(__dst, __src, *(*(a3 - 8) + 64));
    }

    v4 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(__src, v4))
    {
      case 0u:
        v16 = type metadata accessor for URL(0);
        v17 = *(*(v16 - 8) + 32);
        v17(__dst, __src, v16);
        v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v17(&__dst[v5[12]], &__src[v5[12]], v16);
        *&__dst[v5[16]] = *&__src[v5[16]];
        *&__dst[v5[20]] = *&__src[v5[20]];
        v6 = v4;
        v7 = 0;
        goto LABEL_12;
      case 1u:
        v10 = type metadata accessor for URL(0);
        (*(*(v10 - 8) + 32))(__dst, __src, v10);
        v15 = 1;
        goto LABEL_11;
      case 2u:
        v9 = type metadata accessor for URL(0);
        (*(*(v9 - 8) + 32))(__dst, __src, v9);
        v15 = 2;
        goto LABEL_11;
      case 5u:
        v11 = type metadata accessor for DataFrame(0);
        (*(*(v11 - 8) + 32))(__dst, __src, v11);
        v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *&__dst[v12[12]] = *&__src[v12[12]];
        *&__dst[v12[16]] = *&__src[v12[16]];
        *&__dst[v12[20]] = *&__src[v12[20]];
        v15 = 5;
        goto LABEL_11;
      case 6u:
        v13 = type metadata accessor for DataFrame(0);
        (*(*(v13 - 8) + 32))(__dst, __src, v13);
        v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        *&__dst[*(v14 + 48)] = *&__src[*(v14 + 48)];
        *&__dst[*(v14 + 64)] = *&__src[*(v14 + 64)];
        v15 = 6;
LABEL_11:
        v7 = v15;
        v6 = v4;
LABEL_12:
        swift_storeEnumTagMultiPayload(__dst, v6, v7);
        break;
      default:
        memcpy(__dst, __src, *(*(v4 - 8) + 64));
        break;
    }

    swift_storeEnumTagMultiPayload(__dst, a3, 1);
  }

  return __dst;
}

uint64_t type metadata completion function for MLHandPoseClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  v5[0] = &unk_342728;
  result = type metadata accessor for MLHandPoseClassifier.DataSource(319);
  if (v4 <= 0x3F)
  {
    v5[1] = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 2, v5, v2, v3);
    return 0;
  }

  return result;
}

uint64_t outlined destroy of MLHandPoseClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MLTrainingSessionParameters.init(sessionDirectory:reportInterval:checkpointInterval:iterations:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = v4;
  outlined init with copy of URL?(a1, v4);
  if (a3 < a2)
  {
    v6 = a3;
  }

  v8 = type metadata accessor for MLTrainingSessionParameters(0);
  v9 = v8[5];
  v12 = v8[6];
  v13 = v8[7];
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1, &demangling cache variable for type metadata for URL?);
  *(v7 + v9) = v6;
  *(v7 + v12) = a3;
  result = a4;
  *(v7 + v13) = a4;
  return result;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t type metadata accessor for MLTrainingSessionParameters(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLTrainingSessionParameters;
  if (!type metadata singleton initialization cache for MLTrainingSessionParameters)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLTrainingSessionParameters);
  }

  return result;
}

uint64_t MLTrainingSessionParameters.reportInterval.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLTrainingSessionParameters(0) + 20);
  *(v1 + result) = a1;
  return result;
}

uint64_t MLTrainingSessionParameters.checkpointInterval.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLTrainingSessionParameters(0) + 24);
  *(v1 + result) = a1;
  return result;
}

uint64_t MLTrainingSessionParameters.iterations.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLTrainingSessionParameters(0) + 28);
  *(v1 + result) = a1;
  return result;
}

uint64_t MLTrainingSession.date.getter()
{
  v2 = v0;
  v3 = *(*v1 + 112) + v1;
  swift_beginAccess(v3, v6, 0, 0);
  v4 = type metadata accessor for Date(0);
  return (*(*(v4 - 8) + 16))(v2, v3, v4);
}

char MLTrainingSession.phase.getter()
{
  v2 = v0;
  v3 = *v1;
  v4 = v1 + *(*v1 + 112);
  swift_beginAccess(v4, v8, 0, 0);
  result = *(*(type metadata accessor for MLTrainingSession.Metadata(0, *(v3 + 80), v5, v6) + 28) + v4);
  *v2 = result;
  return result;
}

char key path getter for MLTrainingSession.phase : <A>MLTrainingSession<A>()
{
  v3 = HIBYTE(v0);
  v1 = v0;
  MLTrainingSession.phase.getter();
  result = v3;
  *v1 = v3;
  return result;
}

uint64_t key path setter for MLTrainingSession.phase : <A>MLTrainingSession<A>(char *a1)
{
  v3[0] = HIBYTE(v1);
  v3[0] = *a1;
  return MLTrainingSession.phase.setter(v3);
}

uint64_t MLTrainingSession.phase.setter(char *a1)
{
  v2 = *v1;
  v3 = *a1;
  v4 = v1 + *(*v1 + 112);
  swift_beginAccess(v4, v8, 1, 0);
  result = *(type metadata accessor for MLTrainingSession.Metadata(0, *(v2 + 80), v5, v6) + 28);
  *(result + v4) = v3;
  return result;
}

uint64_t MLTrainingSession.iteration.getter()
{
  v1 = *v0;
  v2 = v0 + *(*v0 + 112);
  swift_beginAccess(v2, v6, 0, 0);
  return *(*(type metadata accessor for MLTrainingSession.Metadata(0, *(v1 + 80), v3, v4) + 32) + v2);
}

uint64_t MLTrainingSession.iteration.setter(uint64_t a1)
{
  v2 = *v1;
  v3 = v1 + *(*v1 + 112);
  swift_beginAccess(v3, v7, 1, 0);
  result = *(type metadata accessor for MLTrainingSession.Metadata(0, *(v2 + 80), v4, v5) + 32);
  *(result + v3) = a1;
  return result;
}

uint64_t MLTrainingSession.checkpoints.getter()
{
  v1 = *v0;
  v2 = v0 + *(*v0 + 112);
  swift_beginAccess(v2, v7, 0, 0);
  v5 = *(*(type metadata accessor for MLTrainingSession.Metadata(0, *(v1 + 80), v3, v4) + 44) + v2);

  return v5;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLTrainingSession.save()()
{
  v58 = v2;
  v56 = type metadata accessor for MLTrainingSession.Metadata(0, *(*v3 + 80), v0, v1);
  v60 = *(v56 - 8);
  v4 = *(v60 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v52 = v50;
  v61 = type metadata accessor for CodingUserInfoKey(0);
  v54 = *(v61 - 8);
  v7 = *(v54 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v53 = v50;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = type metadata accessor for URL(0);
  v57 = *(v16 - 8);
  v17 = *(v57 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v62 = v50;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v59 = v50;
  v55 = v3;
  outlined init with copy of MLTrainingSessionParameters(v3 + direct field offset for MLTrainingSession.parameters, v50, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v50, v50);
  if (__swift_getEnumTagSinglePayload(v50, 1, v16) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v50, &demangling cache variable for type metadata for URL?);
    return;
  }

  v22 = v59;
  (*(v57 + 32))(v59, v50, v16);
  URL.appendingPathComponent(_:)(0x696C702E6174656DLL, 0xEA00000000007473);
  v23 = type metadata accessor for PropertyListEncoder(0);
  swift_allocObject(v23, *(v23 + 48), *(v23 + 52));
  v63 = PropertyListEncoder.init()();
  v24 = v16;
  if (one-time initialization token for sessionDirectory != -1)
  {
    swift_once(&one-time initialization token for sessionDirectory, one-time initialization function for sessionDirectory);
  }

  v25 = v61;
  v26 = __swift_project_value_buffer(v61, static CodingUserInfoKey.sessionDirectory);
  v27 = v53;
  (*(v54 + 16))(v53, v26, v25);
  v51[3] = v24;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v51);
  v61 = v24;
  (*(v57 + 16))(boxed_opaque_existential_0, v22, v24);
  v29 = dispatch thunk of PropertyListEncoder.userInfo.modify(v50);
  specialized Dictionary.subscript.setter(v51, v27);
  v29(v50, 0);
  v30 = v55 + *(*v55 + 112);
  swift_beginAccess(v30, v51, 0, 0);
  v31 = v52;
  v32 = v30;
  v33 = v56;
  v34 = v60;
  (*(v60 + 16))(v52, v32, v56);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for MLTrainingSession<A>.Metadata, v33);
  v36 = v58;
  v37 = dispatch thunk of PropertyListEncoder.encode<A>(_:)(v31, v33, WitnessTable);
  if (v36)
  {

    (*(v34 + 8))(v31, v33);
  }

  else
  {
    v39 = v33;
    v40 = v37;
    v56 = v38;
    (*(v34 + 8))(v31, v39);
    v41 = v40;
    v42 = v40;
    v43 = v56;
    Data.write(to:options:)(v62, 0, v42, v56);
    v60 = v41;
    v47 = *(v55 + direct field offset for MLTrainingSession.delegate + 24);
    v58 = 0;
    v48 = *(v55 + direct field offset for MLTrainingSession.delegate + 32);
    __swift_project_boxed_opaque_existential_0Tm((v55 + direct field offset for MLTrainingSession.delegate), v47);
    v49 = v58;
    (*(*(v48 + 8) + 8))(v59, v47);
    if (!v49)
    {
      outlined consume of Data._Representation(v60, v43);

      v44 = *(v57 + 8);
      v45 = v62;
      goto LABEL_9;
    }

    outlined consume of Data._Representation(v60, v43);
  }

  v44 = *(v57 + 8);
  v45 = v62;
LABEL_9:
  v46 = v61;
  v44(v45, v61);
  v44(v59, v46);
}

char MLTrainingSession.Metadata.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 ^ 0x65746164 | a2 ^ 0xE400000000000000 && (_stringCompareWithSmolCheck(_:_:expecting:)(1702125924, 0xE400000000000000, a1, a2, 0) & 1) == 0)
  {
    if (a1 ^ 0x6573616870 | a2 ^ 0xE500000000000000 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x6573616870, 0xE500000000000000, a1, a2, 0) & 1) == 0)
    {
      if (a1 ^ 0x6F69746172657469 | a2 ^ 0xE90000000000006ELL && (_stringCompareWithSmolCheck(_:_:expecting:)(0x6F69746172657469, 0xE90000000000006ELL, a1, a2, 0) & 1) == 0)
      {
        if (a1 ^ 0x4C52556C65646F6DLL | a2 ^ 0xE800000000000000 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x4C52556C65646F6DLL, 0xE800000000000000, a1, a2, 0) & 1) == 0)
        {
          if (a1 ^ 0x7461447475706E69 | a2 ^ 0xEC0000004C525561 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x7461447475706E69, 0xEC0000004C525561, a1, a2, 0) & 1) == 0)
          {
            if (a1 ^ 0x696F706B63656863 | a2 ^ 0xEB0000000073746ELL)
            {
              v3 = _stringCompareWithSmolCheck(_:_:expecting:)(0x696F706B63656863, 0xEB0000000073746ELL, a1, a2, 0);
              a2;
              return 6 - (v3 & 1);
            }

            else
            {
              a2;
              return 5;
            }
          }

          else
          {
            a2;
            return 4;
          }
        }

        else
        {
          a2;
          return 3;
        }
      }

      else
      {
        a2;
        return 2;
      }
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

uint64_t MLTrainingSession.Metadata.CodingKeys.stringValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      result = 1702125924;
      break;
    case 1:
      result = 0x6573616870;
      break;
    case 2:
      result = 0x6F69746172657469;
      break;
    case 3:
      result = 0x4C52556C65646F6DLL;
      break;
    case 4:
      result = 0x7461447475706E69;
      break;
    case 5:
      result = 0x696F706B63656863;
      break;
  }

  return result;
}

uint64_t MLTrainingSession.Metadata.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = v4;
  v37 = v5;
  v36 = a2;
  v6 = type metadata accessor for MLTrainingSession.Metadata.CodingKeys(255, *(a2 + 16), a3, a4);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for MLTrainingSession<A>.Metadata.CodingKeys, v6);
  v38 = type metadata accessor for KeyedEncodingContainer(0, v6, WitnessTable);
  v45 = *(v38 - 8);
  v7 = *(v45 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v35 = &v30;
  v10 = a1[3];
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v10);
  dispatch thunk of Encoder.container<A>(keyedBy:)(v6, v6, WitnessTable, v10, v34);
  v39 = 0;
  v11 = type metadata accessor for Date(0);
  v12 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v13 = v38;
  v14 = v35;
  v15 = v32;
  KeyedEncodingContainer.encode<A>(_:forKey:)(v37, &v39, v38, v11, v12);
  if (v15)
  {
    v29 = v14;
  }

  else
  {
    v40 = *(v37 + v36[7]);
    v41 = 1;
    v16 = lazy protocol witness table accessor for type MLPhase and conformance MLPhase();
    v17 = v38;
    KeyedEncodingContainer.encode<A>(_:forKey:)(&v40, &v41, v38, &type metadata for MLPhase, v16);
    v19 = *(v37 + v36[8]);
    v42 = 2;
    KeyedEncodingContainer.encode(_:forKey:)(v19, &v42, v17);
    v20 = v37 + v36[9];
    v46[0] = 3;
    v21 = type metadata accessor for URL(0);
    v22 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v23 = v17;
    v24 = v22;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)(v20, v46, v23, v21, v22);
    v25 = v37 + v36[10];
    v43 = 4;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)(v25, &v43, v38, v21, v24);
    v31 = *(v37 + v36[11]);
    v44 = 5;
    v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLCheckpoint]);
    v27 = lazy protocol witness table accessor for type [MLCheckpoint] and conformance <A> [A](&lazy protocol witness table cache variable for type [MLCheckpoint] and conformance <A> [A], &lazy protocol witness table cache variable for type MLCheckpoint and conformance MLCheckpoint, &protocol conformance descriptor for MLCheckpoint, &protocol conformance descriptor for <A> [A]);
    v28 = v35;
    v13 = v38;
    KeyedEncodingContainer.encode<A>(_:forKey:)(&v31, &v44, v38, v26, v27);
    v29 = v28;
  }

  return (*(v45 + 8))(v29, v13);
}

uint64_t MLTrainingSession.Metadata.init(from:)(void *a1, uint64_t a2)
{
  v67 = v3;
  v66 = a1;
  v61 = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v58 = &v50;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v56 = &v50;
  v64 = type metadata accessor for Date(0);
  v53 = *(v64 - 8);
  v9 = *(v53 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v65 = &v50;
  v14 = type metadata accessor for MLTrainingSession.Metadata.CodingKeys(255, a2, v12, v13);
  v52 = v14;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for MLTrainingSession<A>.Metadata.CodingKeys, v14);
  v75 = type metadata accessor for KeyedDecodingContainer(0, v14, WitnessTable);
  v74 = *(v75 - 8);
  v15 = *(v74 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v76 = &v50;
  v20 = type metadata accessor for MLTrainingSession.Metadata(0, a2, v18, v19);
  v63 = *(v20 - 1);
  v21 = *(v63 + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  Date.init()(0);
  v54 = v20[7];
  *(&v50 + v54) = 0;
  v57 = v20[8];
  *(&v50 + v57) = 0;
  v24 = &v50 + v20[9];
  v25 = type metadata accessor for URL(0);
  v59 = v24;
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v25);
  v60 = &v50 + v20[10];
  v55 = v25;
  __swift_storeEnumTagSinglePayload(v60, 1, 1, v25);
  v62 = v20;
  v26 = v20[11];
  v73 = &v50;
  *(&v50 + v26) = _swiftEmptyArrayStorage;
  v27 = v26;
  v28 = v66[3];
  v29 = v66[4];
  __swift_project_boxed_opaque_existential_0Tm(v66, v28);
  v30 = v67;
  dispatch thunk of Decoder.container<A>(keyedBy:)(v52, v52, WitnessTable, v28, v29);
  if (v30)
  {
    v33 = v73;
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    return (*(v63 + 8))(v33, v62);
  }

  else
  {
    v31 = v53;
    v67 = v27;
    v68 = 0;
    v32 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedDecodingContainer.decode<A>(_:forKey:)(v64, &v68, v75, v64, v32);
    v34 = v73;
    (*(v31 + 40))(v73, v65, v64);
    v69 = 1;
    v35 = lazy protocol witness table accessor for type MLPhase and conformance MLPhase();
    v36 = v75;
    KeyedDecodingContainer.decode<A>(_:forKey:)(&type metadata for MLPhase, &v69, v75, &type metadata for MLPhase, v35);
    *(v34 + v54) = v77;
    v70 = 2;
    v37 = KeyedDecodingContainer.decode(_:forKey:)(&v70, v36);
    *(v34 + v57) = v37;
    v78[0] = 3;
    v38 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v39 = v36;
    v40 = v38;
    v41 = v56;
    v42 = v55;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(v55, v78, v39, v55, v38);
    outlined assign with take of URL?(v41, v59);
    v71 = 4;
    v43 = v58;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(v42, &v71, v75, v42, v40);
    outlined assign with take of URL?(v43, v60);
    v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLCheckpoint]);
    v72 = 5;
    v45 = lazy protocol witness table accessor for type [MLCheckpoint] and conformance <A> [A](&lazy protocol witness table cache variable for type [MLCheckpoint] and conformance <A> [A], &lazy protocol witness table cache variable for type MLCheckpoint and conformance MLCheckpoint, &protocol conformance descriptor for MLCheckpoint, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)(v44, &v72, v75, v44, v45);
    (*(v74 + 8))(v76, v75);
    v46 = v73;
    *(v73 + v67) = v50;
    v47 = v62;
    v48 = v63;
    (*(v63 + 16))(v61, v46, v62);
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    return (*(v48 + 8))(v46, v47);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLTrainingSession<A>.Metadata.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)(a1);
  MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

char protocol witness for CodingKey.init(stringValue:) in conformance MLTrainingSession<A>.Metadata.CodingKeys(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = MLTrainingSession.Metadata.CodingKeys.init(stringValue:)(a1, a2);
  *v3 = result;
  return result;
}

char protocol witness for CodingKey.init(intValue:) in conformance MLTrainingSession<A>.Metadata.CodingKeys()
{
  v1 = v0;
  result = MLTrainingSession.Metadata.CodingKeys.init(intValue:)();
  *v1 = result;
  return result;
}

NSURL *MLTrainingSession.removeCheckpoints(_:)(uint64_t (*a1)(void *), uint64_t a2)
{
  v64 = v2;
  v4 = v3;
  v51[1] = a2;
  v52 = a1;
  v66 = *v3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = v51;
  v9 = alloca(v5);
  v10 = alloca(v5);
  v57 = v51;
  v56 = type metadata accessor for MLCheckpoint(0);
  v53 = *(v56 - 8);
  v11 = *(v53 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v59 = v51;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v16 = v51;
  v17 = objc_allocWithZone(NSFileManager);
  v60 = [v17 init];
  v18 = *(*v4 + 112);
  v63 = v4;
  v19 = v4 + v18;
  swift_beginAccess(v19, v68, 1, 0);
  v22 = type metadata accessor for MLTrainingSession.Metadata(0, *(v66 + 80), v20, v21);
  v23 = v19;
  v61 = v22;
  v24 = *(v22 + 44);
  v25 = *(v24 + v19);
  v54 = *(v25 + 16);
  v58 = v19;
  if (v54)
  {
    v65 = _swiftEmptyArrayStorage;
    v26 = 0;
    v27 = type metadata accessor for MLCheckpoint;
    v55 = v51;
    v62 = v51;
    do
    {
      v28 = *(v23 + *(v61 + 44));
      if (v26 >= *(v28 + 16))
      {
        BUG();
      }

      v29 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v51[0] = *(v53 + 72);
      v66 = v26;
      outlined init with copy of MLTrainingSessionParameters(v29 + v26 * v51[0] + v28, v16, v27);
      v30 = v27;
      v31 = v52(v16);
      if (v31)
      {
        URL._bridgeToObjectiveC()(v31);
        v33 = v32;
        v67 = 0;
        v34 = [v60 removeItemAtURL:v32 error:&v67];

        v35 = v67;
        if (v34)
        {
          v67;
        }

        else
        {
          v41 = v67;
          v42 = _convertNSErrorToError(_:)(v35);

          swift_willThrow();
          v42;
          v64 = 0;
        }

        v8 = v62;
        v27 = v30;
        v37 = v66;
      }

      else
      {
        outlined init with copy of MLTrainingSessionParameters(v16, v59, v27);
        if (swift_isUniquelyReferenced_nonNull_native(v65))
        {
          v36 = v65;
        }

        else
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v65[2] + 1, 1, v65);
        }

        v37 = v66;
        v38 = v36[2];
        v39 = v36[3];
        v40 = v38 + 1;
        if (v39 >> 1 <= v38)
        {
          v66 = v38 + 1;
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v39 >= 2, v40, 1, v36);
          v40 = v66;
        }

        v36[2] = v40;
        v65 = v36;
        outlined init with take of MLCheckpoint(v59, v36 + v29 + v51[0] * v38);
        v8 = v62;
      }

      v26 = v37 + 1;
      v16 = v55;
      outlined destroy of MLActivityClassifier.ModelParameters(v55, v27);
      v23 = v58;
    }

    while (v54 != v26);
    v24 = *(v61 + 44);
    v25 = *(v58 + v24);
    v43 = v65;
  }

  else
  {
    v43 = _swiftEmptyArrayStorage;
  }

  *(v23 + v24) = v43;

  v25;
  v44 = v57;
  specialized BidirectionalCollection.last.getter(v43);
  v45 = v56;
  if (__swift_getEnumTagSinglePayload(v44, 1, v56) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v44, &demangling cache variable for type metadata for MLCheckpoint?);
    v43;
  }

  else
  {
    LOBYTE(v66) = *(v44 + *(v45 + 20));
    outlined destroy of MLActivityClassifier.ModelParameters(v44, type metadata accessor for MLCheckpoint);
    specialized BidirectionalCollection.last.getter(v43);
    v43;
    if (__swift_getEnumTagSinglePayload(v8, 1, v45) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8, &demangling cache variable for type metadata for MLCheckpoint?);
    }

    else
    {
      v46 = v8;
      v47 = *(v8 + *(v45 + 24));
      outlined destroy of MLActivityClassifier.ModelParameters(v46, type metadata accessor for MLCheckpoint);
      v48 = v61;
      v49 = v58;
      *(v58 + *(v61 + 28)) = v66;
      *(v49 + *(v48 + 32)) = v47;
    }
  }

  MLTrainingSession.save()();

  return __stack_chk_guard;
}

NSURL *MLTrainingSession.reuseExtractedFeatures(from:)(void *a1)
{
  v89 = v1;
  v91 = a1;
  v3 = *v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v84 = v77;
  v7 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v80 = v77;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v78 = v77;
  v90 = type metadata accessor for MLCheckpoint(0);
  v85 = *(v90 - 8);
  v13 = *(v85 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v86 = v77;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v18 = alloca(v13);
  v19 = alloca(v13);
  v87 = v77;
  v20 = v3[14];
  v79 = v2;
  v21 = v2 + v20;
  swift_beginAccess(v21, v95, 1, 0);
  v24 = type metadata accessor for MLTrainingSession.Metadata(0, v3[10], v22, v23);
  if (*(*(*(v24 + 44) + v21) + 16))
  {
    v25 = "reExtractor.swift" + 0x8000000000000000;
    v26 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v26, 0, 0);
    v28 = 0xD000000000000047;
    goto LABEL_21;
  }

  v82 = v21;
  v29 = v91 + *(*v91 + 112);
  v30 = v24;
  swift_beginAccess(v29, v94, 0, 0);
  v83 = v30;
  v31 = *(*(v30 + 44) + v29);
  v93 = v31;
  v32 = v31[2];
  if (!v32)
  {
    v40 = v31;

    v39 = 1;
    v32 = 0;
    v34 = v90;
    v38 = v89;
    goto LABEL_19;
  }

  v33 = v85;
  v88 = v31 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
  v91 = v31;

  v81 = &loc_308EF - 0x14FFFFFFFF9B9A86;
  v34 = v90;
  while (2)
  {
    if (v32 > v91[2])
    {
      BUG();
    }

    outlined init with copy of MLTrainingSessionParameters(v88 + --v32 * *(v33 + 72), v77, type metadata accessor for MLCheckpoint);
    switch(v77[v34[5]])
    {
      case 0:
        v35 = 0xEB0000000064657ALL;
        v36 = 0x696C616974696E69;
        goto LABEL_11;
      case 1:
        110;
        outlined destroy of MLActivityClassifier.ModelParameters(v77, type metadata accessor for MLCheckpoint);
        v39 = 0;
        goto LABEL_17;
      case 2:
        v35 = 0xE800000000000000;
        v36 = 0x676E696E69617274;
        goto LABEL_11;
      case 3:
        v35 = 0xEA0000000000676ELL;
        v36 = 0x697461756C617665;
        goto LABEL_11;
      case 4:
        v35 = v81;
        v36 = 0x636E657265666E69;
LABEL_11:
        v37 = _stringCompareWithSmolCheck(_:_:expecting:)(v36, v35, 0x6974636172747865, 0xEA0000000000676ELL, 0);
        v35;
        outlined destroy of MLActivityClassifier.ModelParameters(v77, type metadata accessor for MLCheckpoint);
        if ((v37 & 1) == 0)
        {
          v33 = v85;
          v34 = v90;
          v38 = v89;
          if (!v32)
          {
            v39 = 1;
            v32 = 0;
            goto LABEL_18;
          }

          continue;
        }

        v39 = 0;
        v34 = v90;
LABEL_17:
        v38 = v89;
LABEL_18:
        v40 = v91;
LABEL_19:
        v41 = alloca(24);
        v42 = alloca(32);
        v79 = &v93;
        v43 = v32;
        v44 = v78;
        _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5Tm(partial apply for specialized closure #1 in BidirectionalCollection.last(where:), v77, v43, v39, v92, type metadata accessor for MLCheckpoint);
        v89 = v38;
        v40;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v44, 1, v34);
        v46 = v84;
        if (EnumTagSinglePayload == 1)
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v44, &demangling cache variable for type metadata for MLCheckpoint?);
          v25 = "e create a new session." + 0x8000000000000000;
          v47 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v47, 0, 0);
          v28 = 0xD000000000000029;
LABEL_21:
          *v27 = v28;
          *(v27 + 8) = v25;
          *(v27 + 16) = 0;
          *(v27 + 32) = 0;
          *(v27 + 48) = 0;
          swift_willThrow();
        }

        else
        {
          v49 = v87;
          outlined init with take of MLCheckpoint(v44, v87);
          v50 = v80;
          outlined init with copy of MLTrainingSessionParameters(v79 + direct field offset for MLTrainingSession.parameters, v80, type metadata accessor for MLTrainingSessionParameters);
          outlined init with take of URL?(v50, v46);
          v91 = type metadata accessor for URL(0);
          if (__swift_getEnumTagSinglePayload(v46, 1, v91) == 1)
          {
            BUG();
          }

          v90 = *(v49 + v34[6]);
          v88 = *(v49 + v34[8]);
          v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
          v52 = v34;
          v53 = swift_allocObject(v51, 112, 7);
          v53[2] = 2;
          v53[3] = 4;
          v53[7] = &type metadata for String;
          v53[8] = lazy protocol witness table accessor for type String and conformance String();
          v53[4] = 0x6974636172747865;
          v53[5] = 0xEA0000000000676ELL;
          v53[12] = &type metadata for Int;
          v53[13] = &protocol witness table for Int;
          v53[9] = v90;

          v54 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v53);
          v56 = v55;
          v57 = v86;
          v58 = v84;
          URL.appendingPathComponent(_:)(v54, v55);
          v56;
          *(v57 + v52[5]) = 1;
          *(v57 + v52[6]) = v90;
          Date.init()(v56);
          (*(*(v91 - 1) + 8))(v58);
          *(v57 + v52[8]) = v88;
          v59 = objc_opt_self(NSFileManager);
          v60 = [v59 defaultManager];
          v88 = v60;
          URL._bridgeToObjectiveC()(v88);
          v62 = v61;
          URL._bridgeToObjectiveC()(v61);
          v64 = v63;
          v93 = 0;
          v65 = v88;
          LOBYTE(v91) = [v88 copyItemAtURL:v62 toURL:v63 error:&v93];

          v66 = v93;
          if (v91)
          {
            v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLCheckpoint>);
            v68 = *(v85 + 80);
            v69 = (v68 + 32) & ~*(v85 + 80);
            v70 = swift_allocObject(v67, v69 + *(v85 + 72), v68 | 7);
            *(v70 + 16) = 1;
            *(v70 + 24) = 2;
            v71 = v86;
            outlined init with copy of MLTrainingSessionParameters(v86, v70 + v69, type metadata accessor for MLCheckpoint);
            v66;
            outlined destroy of MLActivityClassifier.ModelParameters(v87, type metadata accessor for MLCheckpoint);
            v72 = v83;
            v73 = *(v83 + 44);
            v74 = v82;
            v75 = *(v82 + v73);
            *(v82 + v73) = v70;
            v75;
            *(v74 + *(v72 + 28)) = 1;
            outlined destroy of MLActivityClassifier.ModelParameters(v71, type metadata accessor for MLCheckpoint);
            *(v74 + *(v72 + 32)) = v90;
          }

          else
          {
            v76 = v93;
            _convertNSErrorToError(_:)(v66);

            swift_willThrow();
            outlined destroy of MLActivityClassifier.ModelParameters(v86, type metadata accessor for MLCheckpoint);
            outlined destroy of MLActivityClassifier.ModelParameters(v87, type metadata accessor for MLCheckpoint);
          }
        }

        return __stack_chk_guard;
    }
  }
}

uint64_t *MLTrainingSession.deinit()
{
  v1 = *v0;
  outlined destroy of MLActivityClassifier.ModelParameters(v0 + direct field offset for MLTrainingSession.parameters, type metadata accessor for MLTrainingSessionParameters);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + direct field offset for MLTrainingSession.delegate));
  v2 = v0 + *(*v0 + 112);
  v5 = type metadata accessor for MLTrainingSession.Metadata(0, *(v1 + 80), v3, v4);
  (*(*(v5 - 8) + 8))(v2, v5);
  return v0;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5Tm(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v8 = v6;
  if (a4)
  {
    v10 = (a6)(0, a2, a3, a4, a5);
    v11 = v8;
    v12 = 1;
  }

  else
  {
    a1();
    if (v7)
    {
      BUG();
    }

    v10 = a6(0);
    v11 = v8;
    v12 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
}

uint64_t specialized closure #1 in BidirectionalCollection.last(where:)(unint64_t *a1, uint64_t *a2)
{
  return specialized closure #1 in BidirectionalCollection.last(where:)(*a1, *a2);
}

{
  return specialized closure #1 in BidirectionalCollection.last(where:)(*a1, *a2);
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t sub_13BFF4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_13C000()
{
  v1 = v0;
  result = MLTrainingSession.iteration.getter();
  *v1 = result;
  return result;
}

char *initializeBufferWithCopyOfBuffer for MLTrainingSessionParameters(char *__dst, char *__src, int *a3)
{
  v3 = __dst;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *__src;
    *v3 = *__src;
    v3 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = type metadata accessor for URL(0);
    if (__swift_getEnumTagSinglePayload(__src, 1, v6))
    {
      v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
      memcpy(__dst, __src, *(*(v7 - 8) + 64));
    }

    else
    {
      (*(*(v6 - 8) + 16))(__dst, __src, v6);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v6);
    }

    *&__dst[a3[5]] = *&__src[a3[5]];
    *&__dst[a3[6]] = *&__src[a3[6]];
    *&__dst[a3[7]] = *&__src[a3[7]];
  }

  return v3;
}

char *initializeWithCopy for MLTrainingSessionParameters(char *__dst, char *__src, int *a3)
{
  v4 = type metadata accessor for URL(0);
  if (__swift_getEnumTagSinglePayload(__src, 1, v4))
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(__dst, __src, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(*(v4 - 8) + 16))(__dst, __src, v4);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v4);
  }

  *&__dst[a3[5]] = *&__src[a3[5]];
  *&__dst[a3[6]] = *&__src[a3[6]];
  *&__dst[a3[7]] = *&__src[a3[7]];
  return __dst;
}

char *assignWithCopy for MLTrainingSessionParameters(char *__dst, char *__src, int *a3)
{
  v3 = type metadata accessor for URL(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(__dst, 1, v3);
  v5 = __swift_getEnumTagSinglePayload(__src, 1, v3);
  if (!EnumTagSinglePayload)
  {
    v6 = *(v3 - 8);
    if (!v5)
    {
      (*(v6 + 24))(__dst, __src, v3);
      goto LABEL_7;
    }

    (*(v6 + 8))(__dst, v3);
    goto LABEL_6;
  }

  if (v5)
  {
LABEL_6:
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(__dst, __src, *(*(v7 - 8) + 64));
    goto LABEL_7;
  }

  (*(*(v3 - 8) + 16))(__dst, __src, v3);
  __swift_storeEnumTagSinglePayload(__dst, 0, 1, v3);
LABEL_7:
  *&__dst[a3[5]] = *&__src[a3[5]];
  *&__dst[a3[6]] = *&__src[a3[6]];
  *&__dst[a3[7]] = *&__src[a3[7]];
  return __dst;
}

char *initializeWithTake for MLTrainingSessionParameters(char *__dst, char *__src, int *a3)
{
  v4 = type metadata accessor for URL(0);
  if (__swift_getEnumTagSinglePayload(__src, 1, v4))
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(__dst, __src, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(*(v4 - 8) + 32))(__dst, __src, v4);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v4);
  }

  *&__dst[a3[5]] = *&__src[a3[5]];
  *&__dst[a3[6]] = *&__src[a3[6]];
  *&__dst[a3[7]] = *&__src[a3[7]];
  return __dst;
}

char *assignWithTake for MLTrainingSessionParameters(char *__dst, char *__src, int *a3)
{
  v3 = type metadata accessor for URL(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(__dst, 1, v3);
  v5 = __swift_getEnumTagSinglePayload(__src, 1, v3);
  if (!EnumTagSinglePayload)
  {
    v6 = *(v3 - 8);
    if (!v5)
    {
      (*(v6 + 40))(__dst, __src, v3);
      goto LABEL_7;
    }

    (*(v6 + 8))(__dst, v3);
    goto LABEL_6;
  }

  if (v5)
  {
LABEL_6:
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(__dst, __src, *(*(v7 - 8) + 64));
    goto LABEL_7;
  }

  (*(*(v3 - 8) + 32))(__dst, __src, v3);
  __swift_storeEnumTagSinglePayload(__dst, 0, 1, v3);
LABEL_7:
  *&__dst[a3[5]] = *&__src[a3[5]];
  *&__dst[a3[6]] = *&__src[a3[6]];
  *&__dst[a3[7]] = *&__src[a3[7]];
  return __dst;
}

uint64_t type metadata completion function for MLTrainingSessionParameters(uint64_t a1)
{
  result = type metadata accessor for URL?(319);
  if (v2 <= 0x3F)
  {
    v3[0] = *(result - 8) + 64;
    v3[1] = &value witness table for Builtin.Int64 + 64;
    v3[2] = &value witness table for Builtin.Int64 + 64;
    v3[3] = &value witness table for Builtin.Int64 + 64;
    swift_initStructMetadata(a1, 256, 4, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for MLTrainingSession(uint64_t a1)
{
  result = type metadata accessor for MLTrainingSessionParameters(319);
  if (v2 <= 0x3F)
  {
    v6[0] = *(result - 8) + 64;
    v6[1] = &unk_3427C8;
    v6[2] = &unk_3427E0;
    result = type metadata accessor for MLTrainingSession.Metadata(319, *(a1 + 80), v2, v3);
    if (v5 <= 0x3F)
    {
      v6[3] = *(result - 8) + 64;
      result = swift_initClassMetadata2(a1, 0, 4, v6, a1 + 88, v4);
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for MLTrainingSession.Metadata(uint64_t a1)
{
  v1 = type metadata accessor for Date(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v7[0] = *(v1 - 8) + 64;
    v7[1] = &unk_342820;
    v7[2] = &value witness table for Builtin.Int64 + 64;
    v4 = type metadata accessor for URL?(319);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      v8 = *(v4 - 8) + 64;
      v9 = v8;
      v10 = &value witness table for Builtin.BridgeObject + 64;
      v2 = 0;
      swift_initStructMetadata(a1, 0, 6, v7, a1 + 24);
    }
  }

  return v2;
}

void *initializeBufferWithCopyOfBuffer for MLTrainingSession.Metadata(void *a1, void *a2, int *a3)
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
    v6 = type metadata accessor for Date(0);
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    *(a1 + a3[7]) = *(a2 + a3[7]);
    *(a1 + a3[8]) = *(a2 + a3[8]);
    v7 = a3[9];
    __dst = a1 + v7;
    v8 = a2 + v7;
    v9 = type metadata accessor for URL(0);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9))
    {
      v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
      memcpy(__dst, v8, *(*(v10 - 8) + 64));
    }

    else
    {
      (*(*(v9 - 8) + 16))(__dst, v8, v9);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v9);
    }

    v12 = a3[10];
    __dsta = a1 + v12;
    v13 = a2 + v12;
    if (__swift_getEnumTagSinglePayload(v13, 1, v9))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
      memcpy(__dsta, v13, *(*(v14 - 8) + 64));
    }

    else
    {
      (*(*(v9 - 8) + 16))(__dsta, v13, v9);
      __swift_storeEnumTagSinglePayload(__dsta, 0, 1, v9);
    }

    *(a1 + a3[11]) = *(a2 + a3[11]);
  }

  return v3;
}

uint64_t destroy for MLTrainingSession.Metadata(uint64_t a1, int *a2)
{
  v2 = type metadata accessor for Date(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  v3 = a1 + a2[9];
  v4 = type metadata accessor for URL(0);
  if (!__swift_getEnumTagSinglePayload(v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v3, v4);
  }

  v5 = a1 + a2[10];
  if (!__swift_getEnumTagSinglePayload(v5, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v5, v4);
  }

  return *(a1 + a2[11]);
}

uint64_t initializeWithCopy for MLTrainingSession.Metadata(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = type metadata accessor for Date(0);
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v5 = a3[9];
  __dst = (a1 + v5);
  v6 = (a2 + v5);
  v7 = type metadata accessor for URL(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(__dst, v6, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(*(v7 - 8) + 16))(__dst, v6, v7);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v7);
  }

  __dsta = a3;
  v9 = a3[10];
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  if (__swift_getEnumTagSinglePayload(v11, 1, v7))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(v10, v11, *(*(v12 - 8) + 64));
  }

  else
  {
    (*(*(v7 - 8) + 16))(v10, v11, v7);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v7);
  }

  *(a1 + __dsta[11]) = *(a2 + __dsta[11]);

  return a1;
}

uint64_t assignWithCopy for MLTrainingSession.Metadata(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = type metadata accessor for Date(0);
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v23 = a3;
  v5 = a3[9];
  v6 = (v5 + a1);
  v7 = (a2 + v5);
  v8 = type metadata accessor for URL(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v8);
  v10 = __swift_getEnumTagSinglePayload(v7, 1, v8);
  if (EnumTagSinglePayload)
  {
    if (!v10)
    {
      (*(*(v8 - 8) + 16))(v6, v7, v8);
      __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v11 = *(v8 - 8);
  if (v10)
  {
    (*(v11 + 8))(v6, v8);
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(v6, v7, *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v11 + 24))(v6, v7, v8);
LABEL_7:
  v13 = v23[10];
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  v16 = __swift_getEnumTagSinglePayload(v14, 1, v8);
  v17 = __swift_getEnumTagSinglePayload(v15, 1, v8);
  if (!v16)
  {
    v18 = *(v8 - 8);
    if (!v17)
    {
      (*(v18 + 24))(v14, v15, v8);
      goto LABEL_13;
    }

    (*(v18 + 8))(v14, v8);
    goto LABEL_12;
  }

  if (v17)
  {
LABEL_12:
    v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(v14, v15, *(*(v19 - 8) + 64));
    goto LABEL_13;
  }

  (*(*(v8 - 8) + 16))(v14, v15, v8);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v8);
LABEL_13:
  v20 = v23[11];
  v21 = *(a1 + v20);
  *(a1 + v20) = *(a2 + v20);

  v21;
  return a1;
}

uint64_t initializeWithTake for MLTrainingSession.Metadata(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = type metadata accessor for Date(0);
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v5 = a3[9];
  __dst = (a1 + v5);
  v6 = (a2 + v5);
  v7 = type metadata accessor for URL(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(__dst, v6, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(*(v7 - 8) + 32))(__dst, v6, v7);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v7);
  }

  __dsta = a3;
  v9 = a3[10];
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  if (__swift_getEnumTagSinglePayload(v11, 1, v7))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(v10, v11, *(*(v12 - 8) + 64));
  }

  else
  {
    (*(*(v7 - 8) + 32))(v10, v11, v7);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v7);
  }

  *(a1 + __dsta[11]) = *(a2 + __dsta[11]);
  return a1;
}

char *assignWithTake for MLTrainingSession.Metadata(char *a1, uint64_t a2, int *a3)
{
  v5 = type metadata accessor for Date(0);
  (*(*(v5 - 8) + 40))(a1, a2, v5);
  a1[a3[7]] = *(a2 + a3[7]);
  *&a1[a3[8]] = *(a2 + a3[8]);
  v24 = a3;
  v6 = a3[9];
  v7 = &a1[v6];
  v8 = (a2 + v6);
  v9 = type metadata accessor for URL(0);
  __dst = v7;
  LODWORD(v7) = __swift_getEnumTagSinglePayload(v7, 1, v9);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v9);
  if (v7)
  {
    if (EnumTagSinglePayload)
    {
      v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
      v12 = __dst;
LABEL_6:
      memcpy(v12, v8, v11);
      goto LABEL_9;
    }

    (*(*(v9 - 8) + 32))(__dst, v8, v9);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v9);
  }

  else
  {
    v13 = *(v9 - 8);
    if (EnumTagSinglePayload)
    {
      (*(v13 + 8))(__dst, v9);
      v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
      v12 = __dst;
      goto LABEL_6;
    }

    (*(v13 + 40))(__dst, v8, v9);
  }

LABEL_9:
  v14 = v24[10];
  __dsta = a1;
  v15 = &a1[v14];
  v16 = (a2 + v14);
  v17 = __swift_getEnumTagSinglePayload(v15, 1, v9);
  v18 = __swift_getEnumTagSinglePayload(v16, 1, v9);
  if (!v17)
  {
    v19 = *(v9 - 8);
    if (!v18)
    {
      (*(v19 + 40))(v15, v16, v9);
      goto LABEL_15;
    }

    (*(v19 + 8))(v15, v9);
    goto LABEL_14;
  }

  if (v18)
  {
LABEL_14:
    v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(v15, v16, *(*(v20 - 8) + 64));
    goto LABEL_15;
  }

  (*(*(v9 - 8) + 32))(v15, v16, v9);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v9);
LABEL_15:
  v21 = v24[11];
  v22 = *&__dsta[v21];
  *&__dsta[v21] = *(a2 + v21);
  v22;
  return __dsta;
}

uint64_t sub_13CEC2(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for Date(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v4 = *(a3 + 36) + a1;
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  result = 0;
  if ((*(a1 + *(a3 + 44)) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + *(a3 + 44)) >> 1) + 1;
  }

  return result;
}

uint64_t sub_13CF55(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = type metadata accessor for Date(0);
  if (*(*(v7 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  if (*(*(v7 - 8) + 84) == a3)
  {
    v6 = *(a4 + 36) + a1;
    return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
  }

  result = *(a4 + 44);
  *(a1 + result) = 2 * (a2 - 1);
  return result;
}

uint64_t outlined assign with take of URL?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  (*(*(v2 - 8) + 40))(a2, a1, v2);
  return a2;
}

uint64_t lazy protocol witness table accessor for type [MLCheckpoint] and conformance <A> [A](uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!*a1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [MLCheckpoint]);
    lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(a2, type metadata accessor for MLCheckpoint, a3);
    result = swift_getWitnessTable(a4, v7);
    *a1 = result;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for MLTrainingSession.Metadata.CodingKeys(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  LODWORD(result) = 0;
  if (a3 >= 0xFB)
  {
    v4 = a3 + 5;
    LODWORD(result) = 1;
    if (v4 >= 0xFF00)
    {
      LODWORD(result) = 2 * (v4 >= 0xFFFF00) + 2;
    }
  }

  if (a2 > 0xFA)
  {
    v5 = a2 - 251;
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
          *a1 = a2 + 5;
        }

        break;
      case 5:
        JUMPOUT(0x13D174);
    }
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVySo7CIImageCSSGG_AJs5NeverOTg503_s8d87ML17MLImageClassifierV10evaluation2onAA19MLClassifierMetricsVx_tKSlRz0A12MLComponents16fg5VySo7h5CSSG7B59RtzlFAlMcfu_32ebed8ba5c9417264c39088de476e42ecAmLTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  specialized ContiguousArray.reserveCapacity(_:)(v1);
  v2 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<CIImage, String>) - 8);
  v3 = ((*(v2 + 80) + 32) & ~*(v2 + 80)) + a1;
  v7 = *(v2 + 72);
  do
  {
    KeyPath = swift_getKeyPath(&unk_342AF8);
    swift_getAtKeyPath(v3, KeyPath);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(KeyPath);
    v5 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v5);
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v5);
    specialized ContiguousArray._endMutation()(v5);
    v3 += v7;
    --v1;
  }

  while (v1);
  return _swiftEmptyArrayStorage;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVySo7CIImageCSSGG_SSs5NeverOTg503_s8d87ML17MLImageClassifierV10evaluation2onAA19MLClassifierMetricsVx_tKSlRz0A12MLComponents16fg5VySo7h5CSSG7B63RtzlFSSAMcfu0_33_7eec49b2e7313abe927b434220475ef8AMSSTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<CIImage, String>) - 8);
    v3 = ((*(v2 + 80) + 32) & ~*(v2 + 80)) + a1;
    v14 = *(v2 + 72);
    do
    {
      v13 = v1;
      KeyPath = swift_getKeyPath(&unk_342AC0);
      swift_getAtKeyPath(v3, KeyPath);

      v5 = v11;
      v6 = v12;
      v7 = _swiftEmptyArrayStorage[2];
      v8 = v7 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v7)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v8, 1);
        v6 = v12;
        v5 = v11;
      }

      _swiftEmptyArrayStorage[2] = v8;
      v9 = 2 * v7;
      _swiftEmptyArrayStorage[v9 + 4] = v5;
      _swiftEmptyArrayStorage[v9 + 5] = v6;
      v3 += v14;
      v1 = v13 - 1;
    }

    while (v13 != 1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t static MLImageClassifier._defaultSessionParameters.getter()
{
  v1 = v0;
  if (one-time initialization token for _defaultSessionParameters != -1)
  {
    swift_once(&one-time initialization token for _defaultSessionParameters, one-time initialization function for _defaultSessionParameters);
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  v3 = __swift_project_value_buffer(v2, static MLImageClassifier._defaultSessionParameters);
  return outlined init with copy of MLTrainingSessionParameters(v3, v1, type metadata accessor for MLTrainingSessionParameters);
}

void (*MLImageClassifier.model.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = *v1;
  a1[2] = *v1;
  *a1 = v3;
  v3;
  return MLImageClassifier.model.modify;
}

void MLImageClassifier.model.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2)
  {
    v5 = *a1;

    *v3 = v5;
  }

  else
  {

    *v3 = v2;
  }
}

uint64_t MLImageClassifier.trainingMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLImageClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 24), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t type metadata accessor for MLImageClassifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLImageClassifier;
  if (!type metadata singleton initialization cache for MLImageClassifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLImageClassifier);
  }

  return result;
}

uint64_t MLImageClassifier.validationMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLImageClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 28), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLImageClassifier.init(trainingData:parameters:)(uint64_t a1, uint64_t a2)
{
  v32 = v3;
  v30 = a2;
  v29 = a1;
  v4 = v2;
  v5 = type metadata accessor for MLImageClassifier(0);
  v6 = *(v5 - 8);
  v7 = v5;
  v35 = v5;
  v8 = *(v6 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v31 = v27;
  v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v33 = *(v34 - 8);
  v11 = *(v33 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v28 = *(v7 + 24);
  v14 = v4;
  v15 = v28 + v4;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v27);
  (*(v33 + 8))(v27, v34);
  *(v14 + v28) = 0;
  v33 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v34 = v15;
  swift_storeEnumTagMultiPayload(v15, v33, 1);
  v16 = *(v35 + 28);
  v17 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v18 = swift_allocError(&type metadata for MLCreateError, v17, 0, 0);
  *v19 = 0xD0000000000000C0;
  *(v19 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v19 + 16) = 0;
  *(v19 + 32) = 0;
  *(v19 + 48) = 0;
  *(v14 + v16) = v18;
  v35 = v14 + v16;
  v20 = v29;
  swift_storeEnumTagMultiPayload(v14 + v16, v33, 2);
  v21 = v32;
  v22 = static _ImageUtilities.getImageURLsAndLabels(from:)(v20);
  if (v21)
  {
    outlined destroy of MLImageClassifier.ModelParameters(v30);
    outlined destroy of MLActivityClassifier.ModelParameters(v20, type metadata accessor for MLImageClassifier.DataSource);
    outlined destroy of MLActivityClassifier.ModelParameters(v34, type metadata accessor for MLClassifierMetrics);
    return outlined destroy of MLActivityClassifier.ModelParameters(v35, type metadata accessor for MLClassifierMetrics);
  }

  else
  {
    v23 = v22;
    v32 = v14;
    v24 = v30;
    outlined init with copy of MLImageClassifier.ModelParameters(v30, v27);
    v25 = swift_allocObject(&unk_391D38, 104, 7);
    *(v25 + 16) = v23;
    qmemcpy((v25 + 24), v27, 0x50uLL);
    specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLImageClassifier.init(trainingData:parameters:), v25);

    outlined destroy of MLImageClassifier.ModelParameters(v24);
    outlined destroy of MLActivityClassifier.ModelParameters(v29, type metadata accessor for MLImageClassifier.DataSource);
    outlined destroy of MLActivityClassifier.ModelParameters(v34, type metadata accessor for MLClassifierMetrics);
    outlined destroy of MLActivityClassifier.ModelParameters(v35, type metadata accessor for MLClassifierMetrics);
    return outlined init with take of MLClassifierMetrics(v31, v32, type metadata accessor for MLImageClassifier);
  }
}

{
  v28 = a2;
  v27 = a1;
  v4 = v2;
  v33 = v2;
  v5 = type metadata accessor for MLImageClassifier(0);
  v6 = *(v5 - 8);
  v7 = v5;
  v34 = v5;
  v8 = *(v6 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v32 = &v25;
  v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v31 = *(v30 - 8);
  v11 = *(v31 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v14 = *(v7 + 24);
  v15 = v14 + v4;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  v29 = v15;
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v25);
  (*(v31 + 8))(&v25, v30);
  v16 = v33;
  *(v33 + v14) = 0;
  v17 = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload(v15, v17, 1);
  v18 = *(v34 + 28);
  v34 = v18 + v16;
  v19 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v20 = swift_allocError(&type metadata for MLCreateError, v19, 0, 0);
  *v21 = 0xD0000000000000C0;
  *(v21 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v21 + 16) = 0;
  *(v21 + 32) = 0;
  *(v21 + 48) = 0;
  *(v33 + v18) = v20;
  swift_storeEnumTagMultiPayload(v18 + v16, v17, 2);
  v22 = v28;
  outlined init with copy of MLImageClassifier.ModelParameters(v28, v26);
  v23 = swift_allocObject(&unk_391D60, 104, 7);
  *(v23 + 16) = v27;
  qmemcpy((v23 + 24), v26, 0x50uLL);
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLImageClassifier.init(trainingData:parameters:), v23);
  outlined destroy of MLImageClassifier.ModelParameters(v22);

  outlined destroy of MLActivityClassifier.ModelParameters(v29, type metadata accessor for MLClassifierMetrics);
  result = outlined destroy of MLActivityClassifier.ModelParameters(v34, type metadata accessor for MLClassifierMetrics);
  if (!v3)
  {
    return outlined init with take of MLClassifierMetrics(v32, v33, type metadata accessor for MLImageClassifier);
  }

  return result;
}

uint64_t closure #1 in MLImageClassifier.init(trainingData:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a3;
  v3[13] = a2;
  v3[12] = a1;
  return swift_task_switch(closure #1 in MLImageClassifier.init(trainingData:parameters:), 0, 0);
}

{
  v3[14] = a3;
  v3[13] = a2;
  v3[12] = a1;
  return swift_task_switch(closure #1 in MLImageClassifier.init(trainingData:parameters:), 0, 0);
}

uint64_t closure #1 in MLImageClassifier.init(trainingData:parameters:)()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = specialized Sequence.flatMap<A>(_:)(v1);
  outlined init with copy of MLImageClassifier.ModelParameters(v2, (v0 + 2));

  v4 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSSay10Foundation3URLVG_GTt0g5(v1);
  v5 = swift_task_alloc(560);
  v0[15] = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLImageClassifier.init(trainingData:parameters:);
  return MLImageClassifier.init(trainingData:parameters:classNames:)(v0[12], v3, (v0 + 2), v4);
}

{
  v2 = *(*v1 + 120);
  v3 = *v1;
  *(v3 + 128) = v0;
  v2;
  if (v0)
  {
    return swift_task_switch(closure #1 in MLImageClassifier.init(trainingData:parameters:), 0, 0);
  }

  else
  {
    return (*(v3 + 8))();
  }
}

{
  return (*(v0 + 8))();
}

{
  v1 = v0[13];
  v2 = v0[14];
  v3 = specialized Sequence.flatMap<A>(_:)(v1);
  outlined init with copy of MLImageClassifier.ModelParameters(v2, (v0 + 2));

  v4 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSSay10Foundation3URLVG_GTt0g5(v1);
  v5 = swift_task_alloc(560);
  v0[15] = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLImageClassifier.init(trainingData:parameters:);
  return MLImageClassifier.init(trainingData:parameters:classNames:)(v0[12], v3, (v0 + 2), v4);
}

{
  v2 = *(*v1 + 120);
  v3 = *v1;
  *(v3 + 128) = v0;
  v2;
  if (v0)
  {
    return swift_task_switch(closure #1 in MLImageClassifier.init(trainingData:parameters:), 0, 0);
  }

  else
  {
    return (*(v3 + 8))();
  }
}

{
  return closure #1 in MLImageClassifier.init(trainingData:parameters:)();
}

uint64_t MLImageClassifier.init(trainingData:parameters:classNames:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[28] = a4;
  v4[27] = a3;
  v4[26] = a2;
  v4[25] = a1;
  v5 = (*(*(type metadata accessor for MLClassifierMetrics(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4[29] = swift_task_alloc(v5);
  v4[30] = swift_task_alloc(v5);
  v6 = (*(*(type metadata accessor for MLImageClassifier.Model(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4[31] = swift_task_alloc(v6);
  v4[32] = swift_task_alloc(v6);
  v7 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v4[33] = v7;
  v8 = *(v7 - 8);
  v4[34] = v8;
  v9 = *(v8 + 64);
  v4[35] = v9;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4[36] = swift_task_alloc(v10);
  v4[37] = swift_task_alloc(v10);
  v11 = (*(*(type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4[38] = swift_task_alloc(v11);
  v4[39] = swift_task_alloc(v11);
  v12 = (*(*(type metadata accessor for MLImageClassifier.FeatureExtractorType(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4[40] = swift_task_alloc(v12);
  v4[41] = swift_task_alloc(v12);
  v13 = type metadata accessor for MLImageClassifier.Classifier(0);
  v4[42] = swift_task_alloc((*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v4[43] = v14;
  v15 = *(v14 - 8);
  v4[44] = v15;
  v4[45] = swift_task_alloc((*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLImageClassifier.init(trainingData:parameters:classNames:), 0, 0);
}

uint64_t MLImageClassifier.init(trainingData:parameters:classNames:)()
{
  v1 = *(v0 + 360);
  v31 = *(v0 + 352);
  v27 = *(v0 + 344);
  v2 = *(v0 + 200);
  v30 = *(v0 + 216);
  v33 = type metadata accessor for MLImageClassifier(0);
  *(v0 + 368) = v33;
  v3 = *(v33 + 24);
  *(v0 + 552) = v3;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v1);
  (*(v31 + 8))(v1, v27);
  *(v2 + v3) = 0;
  v4 = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload(v3 + v2, v4, 1);
  v5 = *(v33 + 28);
  *(v0 + 556) = v5;
  v6 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v7 = swift_allocError(&type metadata for MLCreateError, v6, 0, 0);
  *v8 = 0xD0000000000000C0;
  *(v8 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v8 + 16) = 0;
  *(v8 + 32) = 0;
  *(v8 + 48) = 0;
  *(v2 + v5) = v7;
  swift_storeEnumTagMultiPayload(v2 + v5, v4, 2);
  outlined init with copy of MLImageClassifier.ModelParameters(v30, v2 + 8);
  MLImageClassifier.ModelParameters.validate()();
  if (v9)
  {
    v10 = *(v0 + 224);
    v11 = *(v0 + 208);
    outlined destroy of MLImageClassifier.ModelParameters(*(v0 + 216));
    v10;
    v11;
    v12 = *(v0 + 200);
    v13 = v12 + *(v0 + 556);
    v14 = v12 + *(v0 + 552);
    outlined destroy of MLImageClassifier.ModelParameters(v12 + 8);
    outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for MLClassifierMetrics);
    outlined destroy of MLActivityClassifier.ModelParameters(v13, type metadata accessor for MLClassifierMetrics);
    v15 = *(v0 + 336);
    v16 = *(v0 + 328);
    v17 = *(v0 + 320);
    v18 = *(v0 + 312);
    v26 = *(v0 + 304);
    v25 = *(v0 + 296);
    v24 = *(v0 + 288);
    v29 = *(v0 + 256);
    v28 = *(v0 + 248);
    v34 = *(v0 + 232);
    v32 = *(v0 + 240);
    *(v0 + 360);
    v15;
    v16;
    v17;
    v18;
    v26;
    v25;
    v24;
    v29;
    v28;
    v32;
    v34;
    return (*(v0 + 8))();
  }

  else
  {
    v35 = *(v0 + 328);
    v20 = *(v0 + 224);
    v21 = *(v0 + 312);
    outlined init with copy of MLImageClassifier.ModelParameters(v2 + 8, v0 + 16);

    MLImageClassifier.Classifier.init(labels:parameters:)(v20, (v0 + 16));
    MLImageClassifier.ModelParameters.algorithm.getter();
    v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (featureExtractor: MLImageClassifier.FeatureExtractorType, classifier: MLImageClassifier.ModelParameters.ClassifierType));
    *(v0 + 376) = v22;
    *(v21 + *(v22 + 48));
    outlined init with take of MLClassifierMetrics(v21, v35, type metadata accessor for MLImageClassifier.FeatureExtractorType);
    v23 = swift_task_alloc(144);
    *(v0 + 384) = v23;
    *v23 = v0;
    v23[1] = MLImageClassifier.init(trainingData:parameters:classNames:);
    return MLImageClassifier.FeatureExtractor.init(type:)(v0 + 96, *(v0 + 328));
  }
}

{
  v3 = *(*v1 + 384);
  v2 = *v1;
  *(*v1 + 392) = v0;
  v3;
  if (v0)
  {
    v4 = *(v2 + 208);
    *(v2 + 224);
    v4;
    v5 = MLImageClassifier.init(trainingData:parameters:classNames:);
  }

  else
  {
    v5 = MLImageClassifier.init(trainingData:parameters:classNames:);
  }

  return swift_task_switch(v5, 0, 0);
}

{
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 216) + 16, v0 + 168, &demangling cache variable for type metadata for Any?);
  if (!*(v0 + 192))
  {
    BUG();
  }

  v24 = *(v0 + 392);
  v1 = *(v0 + 296);
  v25 = *(v0 + 288);
  v2 = *(v0 + 280);
  v32 = *(v0 + 272);
  v27 = *(v0 + 264);
  v29 = *(v0 + 208);
  v34 = *(v0 + 216);
  outlined init with take of Any((v0 + 168), (v0 + 136));
  swift_dynamicCast(v1, v0 + 136, &type metadata for Any + 8, v27, 7);
  v35 = *(v34 + 8);
  outlined init with copy of MLTrainingSessionParameters(v1, v25, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  v3 = *(v32 + 80);
  v4 = ~*(v32 + 80) & (v3 + 24);
  v5 = swift_allocObject(&unk_391D98, v4 + v2, v3 | 7);
  *(v5 + 16) = v29;
  outlined init with take of MLClassifierMetrics(v25, v5 + v4, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLImageClassifier.init(trainingData:parameters:classNames:), v5);
  *(v0 + 400) = v6;
  *(v0 + 408) = v7;
  if (v24)
  {
    v30 = *(v0 + 336);
    v8 = *(v0 + 296);
    v9 = *(v0 + 216);
    v10 = *(v0 + 224);

    v10;
    outlined destroy of MLImageClassifier.ModelParameters(v9);
    outlined destroy of MLActivityClassifier.ModelParameters(v8, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
    outlined destroy of MLImageClassifier.FeatureExtractor(v0 + 96);
    outlined destroy of MLActivityClassifier.ModelParameters(v30, type metadata accessor for MLImageClassifier.Classifier);
    v11 = *(v0 + 200);
    v12 = v11 + 8;
    v13 = v11 + *(v0 + 556);
    v14 = *(v0 + 552) + v11;
    outlined destroy of MLImageClassifier.ModelParameters(v12);
    outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for MLClassifierMetrics);
    outlined destroy of MLActivityClassifier.ModelParameters(v13, type metadata accessor for MLClassifierMetrics);
    v15 = *(v0 + 336);
    v16 = *(v0 + 328);
    v17 = *(v0 + 320);
    v18 = *(v0 + 312);
    v23 = *(v0 + 304);
    v22 = *(v0 + 296);
    v28 = *(v0 + 288);
    v36 = *(v0 + 256);
    v26 = *(v0 + 248);
    v31 = *(v0 + 232);
    v33 = *(v0 + 240);
    *(v0 + 360);
    v15;
    v16;
    v17;
    v18;
    v23;
    v22;
    v28;
    v36;
    v26;
    v33;
    v31;
    return (*(v0 + 8))();
  }

  else
  {
    v20 = v6;

    v21 = swift_task_alloc(416);
    *(v0 + 416) = v21;
    *v21 = v0;
    v21[1] = MLImageClassifier.init(trainingData:parameters:classNames:);
    return ((&_s8CreateML17MLImageClassifierV18applyAugmentations2to19augmentationOptions14upsampleFactorSay0A12MLComponents16AnnotatedFeatureVySo7CIImageCSSGGx_AC017ImageAugmentationI0VSitYaKSlRzAM7ElementRtzlFZAN_Tt2B5Tu + _s8CreateML17MLImageClassifierV18applyAugmentations2to19augmentationOptions14upsampleFactorSay0A12MLComponents16AnnotatedFeatureVySo7CIImageCSSGGx_AC017ImageAugmentationI0VSitYaKSlRzAM7ElementRtzlFZAN_Tt2B5Tu))(v20, v35, 1);
  }
}

{
  v1 = v0[27];
  v2 = v0[28];
  v3 = *(v0[53] + 16);
  v4 = *(v2 + 16);
  v2;
  static MLImageClassifier.reportAnalytics(trainingExampleCount:classCount:parameters:)(v3, v4, v1);
  v5 = swift_task_alloc(64);
  v0[55] = v5;
  *v5 = v0;
  v5[1] = MLImageClassifier.init(trainingData:parameters:classNames:);
  return ((&async function pointer to specialized MLImageClassifier.FeatureExtractor.extractFeatures<A>(from:) + async function pointer to specialized MLImageClassifier.FeatureExtractor.extractFeatures<A>(from:)))(v0[53]);
}

{
  v1 = *(v0[51] + 16);
  v0[58] = v1;
  if (v1)
  {
    v2 = swift_task_alloc(64);
    v0[61] = v2;
    *v2 = v0;
    v2[1] = MLImageClassifier.init(trainingData:parameters:classNames:);
    return ((&async function pointer to specialized MLImageClassifier.FeatureExtractor.extractFeatures<A>(from:) + async function pointer to specialized MLImageClassifier.FeatureExtractor.extractFeatures<A>(from:)))(v0[51]);
  }

  else
  {
    v4 = swift_task_alloc(208);
    v0[59] = v4;
    *v4 = v0;
    v4[1] = MLImageClassifier.init(trainingData:parameters:classNames:);
    return ((&async function pointer to specialized MLImageClassifier.Classifier.fitted<A>(to:eventHandler:) + async function pointer to specialized MLImageClassifier.Classifier.fitted<A>(to:eventHandler:)))(v0[32], v0[56], 0, 0);
  }
}

{
  v3 = *(*v1 + 472);
  v2 = *v1;
  *(*v1 + 480) = v0;
  v3;
  if (v0)
  {
    v4 = v2[51];
    v2[50];
    v4;
    v5 = MLImageClassifier.init(trainingData:parameters:classNames:);
  }

  else
  {
    v2[56];
    v5 = MLImageClassifier.init(trainingData:parameters:classNames:);
  }

  return swift_task_switch(v5, 0, 0);
}

{
  v5 = v0[47];
  v4 = v0[40];
  v1 = v0[38];
  outlined init with take of MLClassifierMetrics(v0[32], v0[25] + *(v0[46] + 32), type metadata accessor for MLImageClassifier.Model);
  MLImageClassifier.ModelParameters.algorithm.getter();
  *(v1 + *(v5 + 48));
  outlined init with take of MLClassifierMetrics(v1, v4, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  v2 = swift_task_alloc(448);
  v0[66] = v2;
  *v2 = v0;
  v2[1] = MLImageClassifier.init(trainingData:parameters:classNames:);
  return MLImageClassifier.Model.exportAsCompiledMLModel(featureExtractorType:)(v0[40]);
}

{
  v3 = *(*v1 + 512);
  v2 = *v1;
  *(*v1 + 520) = v0;
  v3;
  if (v0)
  {
    v4 = v2[51];
    v2[50];
    v4;
    v5 = MLImageClassifier.init(trainingData:parameters:classNames:);
  }

  else
  {
    v6 = v2[56];
    v2[62];
    v6;
    v5 = MLImageClassifier.init(trainingData:parameters:classNames:);
  }

  return swift_task_switch(v5, 0, 0);
}

{
  v5 = v0[47];
  v4 = v0[40];
  v1 = v0[38];
  outlined init with take of MLClassifierMetrics(v0[31], v0[25] + *(v0[46] + 32), type metadata accessor for MLImageClassifier.Model);
  MLImageClassifier.ModelParameters.algorithm.getter();
  *(v1 + *(v5 + 48));
  outlined init with take of MLClassifierMetrics(v1, v4, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  v2 = swift_task_alloc(448);
  v0[66] = v2;
  *v2 = v0;
  v2[1] = MLImageClassifier.init(trainingData:parameters:classNames:);
  return MLImageClassifier.Model.exportAsCompiledMLModel(featureExtractorType:)(v0[40]);
}

{
  v44 = v0 + 96;
  v47 = *(v0 + 544);
  v1 = *(v0 + 536);
  v2 = *(v0 + 400);
  v3 = *(v0 + 200);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 320), type metadata accessor for MLImageClassifier.FeatureExtractorType);
  *v3 = v1;
  specialized MLImageClassifier.evaluation<A>(on:)(v2);
  if (v47)
  {
    v4 = *(v0 + 536);
    v41 = *(v0 + 400);
    v5 = *(v0 + 336);
    v6 = *(v0 + 216);
    v7 = *(v0 + 296);
    *(v0 + 408);
    outlined destroy of MLImageClassifier.ModelParameters(v6);
    outlined destroy of MLActivityClassifier.ModelParameters(v7, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
    outlined destroy of MLImageClassifier.FeatureExtractor(v44);
    outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for MLImageClassifier.Classifier);
    v41;

    v8 = *(v0 + 200);
    v9 = v8 + *(v0 + 556);
    v10 = v8 + *(v0 + 552);
    outlined destroy of MLImageClassifier.ModelParameters(v8 + 8);
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLClassifierMetrics);
    outlined destroy of MLActivityClassifier.ModelParameters(v9, type metadata accessor for MLClassifierMetrics);
    outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 200) + *(*(v0 + 368) + 32), type metadata accessor for MLImageClassifier.Model);
    v11 = *(v0 + 336);
    v12 = *(v0 + 328);
    v13 = *(v0 + 320);
    v14 = *(v0 + 312);
    v32 = *(v0 + 304);
    v39 = *(v0 + 296);
    v37 = *(v0 + 288);
    v35 = *(v0 + 256);
    v33 = *(v0 + 248);
    v45 = *(v0 + 232);
    v42 = *(v0 + 240);
    *(v0 + 360);
    v11;
    v12;
    v13;
    v14;
    v32;
    v39;
    v37;
    v35;
    v33;
    v42;
    v45;
    v15 = *(v0 + 8);
  }

  else
  {
    v16 = *(v0 + 240);
    v17 = *(v0 + 464);
    v18 = *(v0 + 200) + *(v0 + 552);
    *(v0 + 400);
    outlined assign with take of MLClassifierMetrics(v16, v18);
    v19 = *(v0 + 408);
    if (v17)
    {
      specialized MLImageClassifier.evaluation<A>(on:)(v19);
      v48 = *(v0 + 408);
      v23 = *(v0 + 336);
      v24 = *(v0 + 296);
      v25 = *(v0 + 232);
      v26 = *(v0 + 200) + *(v0 + 556);
      outlined destroy of MLImageClassifier.ModelParameters(*(v0 + 216));
      outlined destroy of MLActivityClassifier.ModelParameters(v24, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
      outlined destroy of MLImageClassifier.FeatureExtractor(v44);
      outlined destroy of MLActivityClassifier.ModelParameters(v23, type metadata accessor for MLImageClassifier.Classifier);
      v48;
      outlined assign with take of MLClassifierMetrics(v25, v26);
    }

    else
    {
      v20 = *(v0 + 336);
      v21 = *(v0 + 216);
      v22 = *(v0 + 296);
      v19;
      outlined destroy of MLImageClassifier.ModelParameters(v21);
      outlined destroy of MLActivityClassifier.ModelParameters(v22, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
      outlined destroy of MLImageClassifier.FeatureExtractor(v44);
      outlined destroy of MLActivityClassifier.ModelParameters(v20, type metadata accessor for MLImageClassifier.Classifier);
    }

    v27 = *(v0 + 336);
    v28 = *(v0 + 328);
    v29 = *(v0 + 320);
    v30 = *(v0 + 312);
    v40 = *(v0 + 304);
    v38 = *(v0 + 296);
    v36 = *(v0 + 288);
    v34 = *(v0 + 256);
    v43 = *(v0 + 248);
    v46 = *(v0 + 232);
    v49 = *(v0 + 240);
    *(v0 + 360);
    v27;
    v28;
    v29;
    v30;
    v40;
    v38;
    v36;
    v34;
    v43;
    v49;
    v46;
    v15 = *(v0 + 8);
  }

  return v15();
}

{
  v1 = *(v0 + 336);
  outlined destroy of MLImageClassifier.ModelParameters(*(v0 + 216));
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for MLImageClassifier.Classifier);
  v2 = *(v0 + 200);
  v3 = v2 + *(v0 + 556);
  v4 = v2 + *(v0 + 552);
  outlined destroy of MLImageClassifier.ModelParameters(v2 + 8);
  outlined destroy of MLActivityClassifier.ModelParameters(v4, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLClassifierMetrics);
  v5 = *(v0 + 336);
  v6 = *(v0 + 328);
  v7 = *(v0 + 320);
  v8 = *(v0 + 312);
  v16 = *(v0 + 304);
  v15 = *(v0 + 296);
  v14 = *(v0 + 288);
  v13 = *(v0 + 256);
  v12 = *(v0 + 248);
  v10 = *(v0 + 232);
  v11 = *(v0 + 240);
  *(v0 + 360);
  v5;
  v6;
  v7;
  v8;
  v16;
  v15;
  v14;
  v13;
  v12;
  v11;
  v10;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 400);
  v2 = *(v0 + 336);
  v3 = *(v0 + 296);
  outlined destroy of MLImageClassifier.ModelParameters(*(v0 + 216));
  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  outlined destroy of MLImageClassifier.FeatureExtractor(v0 + 96);
  outlined destroy of MLActivityClassifier.ModelParameters(v2, type metadata accessor for MLImageClassifier.Classifier);
  v1;
  v4 = *(v0 + 200);
  v5 = v4 + *(v0 + 556);
  v6 = v4 + *(v0 + 552);
  outlined destroy of MLImageClassifier.ModelParameters(v4 + 8);
  outlined destroy of MLActivityClassifier.ModelParameters(v6, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for MLClassifierMetrics);
  v7 = *(v0 + 336);
  v8 = *(v0 + 328);
  v9 = *(v0 + 320);
  v10 = *(v0 + 312);
  v18 = *(v0 + 304);
  v17 = *(v0 + 296);
  v16 = *(v0 + 288);
  v15 = *(v0 + 256);
  v14 = *(v0 + 248);
  v12 = *(v0 + 232);
  v13 = *(v0 + 240);
  *(v0 + 360);
  v7;
  v8;
  v9;
  v10;
  v18;
  v17;
  v16;
  v15;
  v14;
  v13;
  v12;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 424);
  v2 = *(v0 + 336);
  v3 = *(v0 + 296);
  outlined destroy of MLImageClassifier.ModelParameters(*(v0 + 216));
  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  outlined destroy of MLImageClassifier.FeatureExtractor(v0 + 96);
  outlined destroy of MLActivityClassifier.ModelParameters(v2, type metadata accessor for MLImageClassifier.Classifier);
  v1;
  v4 = *(v0 + 200);
  v5 = v4 + *(v0 + 556);
  v6 = v4 + *(v0 + 552);
  outlined destroy of MLImageClassifier.ModelParameters(v4 + 8);
  outlined destroy of MLActivityClassifier.ModelParameters(v6, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for MLClassifierMetrics);
  v7 = *(v0 + 336);
  v8 = *(v0 + 328);
  v9 = *(v0 + 320);
  v10 = *(v0 + 312);
  v18 = *(v0 + 304);
  v17 = *(v0 + 296);
  v16 = *(v0 + 288);
  v15 = *(v0 + 256);
  v14 = *(v0 + 248);
  v12 = *(v0 + 232);
  v13 = *(v0 + 240);
  *(v0 + 360);
  v7;
  v8;
  v9;
  v10;
  v18;
  v17;
  v16;
  v15;
  v14;
  v13;
  v12;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 448);
  v2 = *(v0 + 336);
  v3 = *(v0 + 296);
  outlined destroy of MLImageClassifier.ModelParameters(*(v0 + 216));
  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  outlined destroy of MLImageClassifier.FeatureExtractor(v0 + 96);
  outlined destroy of MLActivityClassifier.ModelParameters(v2, type metadata accessor for MLImageClassifier.Classifier);
  v1;
  v4 = *(v0 + 200);
  v5 = v4 + *(v0 + 556);
  v6 = v4 + *(v0 + 552);
  outlined destroy of MLImageClassifier.ModelParameters(v4 + 8);
  outlined destroy of MLActivityClassifier.ModelParameters(v6, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for MLClassifierMetrics);
  v7 = *(v0 + 336);
  v8 = *(v0 + 328);
  v9 = *(v0 + 320);
  v10 = *(v0 + 312);
  v18 = *(v0 + 304);
  v17 = *(v0 + 296);
  v16 = *(v0 + 288);
  v15 = *(v0 + 256);
  v14 = *(v0 + 248);
  v12 = *(v0 + 232);
  v13 = *(v0 + 240);
  *(v0 + 360);
  v7;
  v8;
  v9;
  v10;
  v18;
  v17;
  v16;
  v15;
  v14;
  v13;
  v12;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 408);
  v2 = *(v0 + 336);
  v3 = *(v0 + 296);
  outlined destroy of MLImageClassifier.ModelParameters(*(v0 + 216));
  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  outlined destroy of MLImageClassifier.FeatureExtractor(v0 + 96);
  outlined destroy of MLActivityClassifier.ModelParameters(v2, type metadata accessor for MLImageClassifier.Classifier);
  v1;
  v4 = *(v0 + 200);
  v5 = v4 + *(v0 + 556);
  v6 = v4 + *(v0 + 552);
  outlined destroy of MLImageClassifier.ModelParameters(v4 + 8);
  outlined destroy of MLActivityClassifier.ModelParameters(v6, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for MLClassifierMetrics);
  v7 = *(v0 + 336);
  v8 = *(v0 + 328);
  v9 = *(v0 + 320);
  v10 = *(v0 + 312);
  v18 = *(v0 + 304);
  v17 = *(v0 + 296);
  v16 = *(v0 + 288);
  v15 = *(v0 + 256);
  v14 = *(v0 + 248);
  v12 = *(v0 + 232);
  v13 = *(v0 + 240);
  *(v0 + 360);
  v7;
  v8;
  v9;
  v10;
  v18;
  v17;
  v16;
  v15;
  v14;
  v13;
  v12;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 496);
  v19 = *(v0 + 448);
  v2 = *(v0 + 336);
  v3 = *(v0 + 296);
  outlined destroy of MLImageClassifier.ModelParameters(*(v0 + 216));
  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  outlined destroy of MLImageClassifier.FeatureExtractor(v0 + 96);
  outlined destroy of MLActivityClassifier.ModelParameters(v2, type metadata accessor for MLImageClassifier.Classifier);
  v1;
  v19;
  v4 = *(v0 + 200);
  v5 = v4 + *(v0 + 556);
  v6 = v4 + *(v0 + 552);
  outlined destroy of MLImageClassifier.ModelParameters(v4 + 8);
  outlined destroy of MLActivityClassifier.ModelParameters(v6, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for MLClassifierMetrics);
  v7 = *(v0 + 336);
  v8 = *(v0 + 328);
  v9 = *(v0 + 320);
  v10 = *(v0 + 312);
  v18 = *(v0 + 304);
  v17 = *(v0 + 296);
  v16 = *(v0 + 288);
  v15 = *(v0 + 256);
  v14 = *(v0 + 248);
  v12 = *(v0 + 232);
  v13 = *(v0 + 240);
  *(v0 + 360);
  v7;
  v8;
  v9;
  v10;
  v18;
  v17;
  v16;
  v15;
  v14;
  v13;
  v12;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 336);
  v2 = *(v0 + 320);
  v3 = *(v0 + 296);
  outlined destroy of MLImageClassifier.ModelParameters(*(v0 + 216));
  outlined destroy of MLActivityClassifier.ModelParameters(v2, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  outlined destroy of MLImageClassifier.FeatureExtractor(v0 + 96);
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for MLImageClassifier.Classifier);
  v4 = *(v0 + 200);
  v5 = v4 + *(v0 + 556);
  v6 = v4 + *(v0 + 552);
  outlined destroy of MLImageClassifier.ModelParameters(v4 + 8);
  outlined destroy of MLActivityClassifier.ModelParameters(v6, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 200) + *(*(v0 + 368) + 32), type metadata accessor for MLImageClassifier.Model);
  v7 = *(v0 + 336);
  v8 = *(v0 + 328);
  v9 = *(v0 + 320);
  v10 = *(v0 + 312);
  v18 = *(v0 + 304);
  v17 = *(v0 + 296);
  v16 = *(v0 + 288);
  v15 = *(v0 + 256);
  v14 = *(v0 + 248);
  v12 = *(v0 + 232);
  v13 = *(v0 + 240);
  *(v0 + 360);
  v7;
  v8;
  v9;
  v10;
  v18;
  v17;
  v16;
  v15;
  v14;
  v13;
  v12;
  return (*(v0 + 8))();
}

uint64_t MLImageClassifier.init(trainingData:parameters:classNames:)(uint64_t a1)
{
  v4 = *(*v2 + 416);
  v3 = *v2;
  v3[53] = a1;
  v3[54] = v1;
  v4;
  if (v1)
  {
    v5 = v3[28];
    v3[51];
    v5;
    v6 = MLImageClassifier.init(trainingData:parameters:classNames:);
  }

  else
  {
    v6 = MLImageClassifier.init(trainingData:parameters:classNames:);
  }

  return swift_task_switch(v6, 0, 0);
}

{
  v4 = *(*v2 + 440);
  v3 = *v2;
  v3[56] = a1;
  v3[57] = v1;
  v4;
  if (v1)
  {
    v5 = v3[51];
    v3[50];
    v5;
    v6 = MLImageClassifier.init(trainingData:parameters:classNames:);
  }

  else
  {
    v3[53];
    v6 = MLImageClassifier.init(trainingData:parameters:classNames:);
  }

  return swift_task_switch(v6, 0, 0);
}

{
  v4 = *(*v2 + 488);
  v5 = *v2;
  v5[62] = a1;
  v5[63] = v1;
  v4;
  if (v1)
  {
    v6 = v5[56];
    v5[50];
    v6;
    return swift_task_switch(MLImageClassifier.init(trainingData:parameters:classNames:), 0, 0);
  }

  else
  {
    v8 = swift_task_alloc(208);
    v5[64] = v8;
    *v8 = v5;
    v8[1] = MLImageClassifier.init(trainingData:parameters:classNames:);
    return ((&async function pointer to specialized MLImageClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:) + async function pointer to specialized MLImageClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:)))(v5[31], v5[56], a1, 0, 0);
  }
}

{
  v4 = *(*v2 + 528);
  v3 = *v2;
  v3[67] = a1;
  v3[68] = v1;
  v4;
  if (v1)
  {
    v5 = v3[51];
    v3[50];
    v5;
    v6 = MLImageClassifier.init(trainingData:parameters:classNames:);
  }

  else
  {
    v6 = MLImageClassifier.init(trainingData:parameters:classNames:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t closure #1 in MLImageClassifier.init(trainingData:parameters:classNames:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc(144);
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = closure #1 in MLImageClassifier.init(trainingData:parameters:classNames:);
  return static MLImageClassifier.collectImages(trainingData:validationData:)(a2, a3);
}

uint64_t closure #1 in MLImageClassifier.init(trainingData:parameters:classNames:)(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 24);
  v7 = *v3;
  v6;
  if (v2)
  {
    return (*(v7 + 8))(v6, a2);
  }

  *(v5 + 32) = a2;
  *(v5 + 40) = a1;
  return swift_task_switch(closure #1 in MLImageClassifier.init(trainingData:parameters:classNames:), 0, 0);
}

uint64_t static MLImageClassifier.collectImages(trainingData:validationData:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v2[2] = a1;
  v3 = type metadata accessor for MLImageClassifier.DataSource(0);
  v2[4] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v2[5] = v4;
  v2[6] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ImageReader(0);
  v2[7] = v5;
  v6 = *(v5 - 8);
  v2[8] = v6;
  v2[9] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(static MLImageClassifier.collectImages(trainingData:validationData:), 0, 0);
}

uint64_t static MLImageClassifier.collectImages(trainingData:validationData:)()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[5];
  ImageReader.init()();
  outlined init with copy of MLTrainingSessionParameters(v2, v1, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  switch(swift_getEnumCaseMultiPayload(v1, v3))
  {
    case 0u:
      v4 = v0[2];
      v5 = v0[6];
      v19 = *v5;
      v6 = *(v5 + 8);
      v7 = *(v5 + 16);
      v8 = *(v5 + 17);

      v9 = specialized Collection.randomSplit<A, B>(strategy:)(v19, v6, v7 | (v8 << 8), v4);
      v11 = v10;
      v4;
      break;
    case 1u:
      v13 = v0[4];
      outlined init with take of MLClassifierMetrics(v0[6], v13, type metadata accessor for MLImageClassifier.DataSource);

      v14 = static _ImageUtilities.getImageURLsAndLabels(from:)(v13);
      v15 = v14;
      v16 = v0[4];
      v9 = specialized Sequence.flatMap<A>(_:)(v14);
      v15;
      outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for MLImageClassifier.DataSource);
      goto LABEL_6;
    case 2u:
      v12 = *v0[6];

      v9 = specialized Sequence.flatMap<A>(_:)(v12);
      v12;
LABEL_6:
      v11 = v0[2];
      break;
    case 3u:
      v11 = v0[2];

      v9 = _swiftEmptyArrayStorage;
      break;
  }

  v0[11] = v11;
  v0[10] = v9;
  v17 = swift_task_alloc(272);
  v0[12] = v17;
  *v17 = v0;
  v17[1] = static MLImageClassifier.collectImages(trainingData:validationData:);
  return ((&async function pointer to specialized Transformer.applied<A, B>(to:eventHandler:) + async function pointer to specialized Transformer.applied<A, B>(to:eventHandler:)))(v11, 0, 0);
}

{
  v1 = *(v0 + 72);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  (*(*(v0 + 64) + 8))(v1, *(v0 + 56));
  v1;
  v3;
  v2;
  return (*(v0 + 8))(*(v0 + 104), *(v0 + 136));
}

{
  (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);
  *(v0 + 72);
  v2;
  v1;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 80);
  (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  v1;
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  *(v0 + 72);
  v3;
  v2;
  return (*(v0 + 8))();
}

uint64_t static MLImageClassifier.collectImages(trainingData:validationData:)(uint64_t a1)
{
  v3 = *(*v2 + 88);
  v4 = *(*v2 + 96);
  v5 = *v2;
  v5[13] = a1;
  v5[14] = v1;
  v4;
  v3;
  if (v1)
  {
    v5[10];
    return swift_task_switch(static MLImageClassifier.collectImages(trainingData:validationData:), 0, 0);
  }

  else
  {
    v7 = swift_task_alloc(272);
    v5[15] = v7;
    *v7 = v5;
    v7[1] = static MLImageClassifier.collectImages(trainingData:validationData:);
    return ((&async function pointer to specialized Transformer.applied<A, B>(to:eventHandler:) + async function pointer to specialized Transformer.applied<A, B>(to:eventHandler:)))(v5[10], 0, 0);
  }
}

{
  v5 = *(*v2 + 120);
  v4 = *v2;
  *(*v2 + 128) = v1;
  v5;
  if (v1)
  {
    v4[13];
    v6 = static MLImageClassifier.collectImages(trainingData:validationData:);
  }

  else
  {
    v4[10];
    v4[17] = a1;
    v6 = static MLImageClassifier.collectImages(trainingData:validationData:);
  }

  return swift_task_switch(v6, 0, 0);
}

char static MLImageClassifier.reportAnalytics(trainingExampleCount:classCount:parameters:)(int a1, int a2, void *a3)
{
  v12 = v3;
  v5 = *(*(type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  result = AnalyticsReporter.init()();
  if ((result & 1) == 0)
  {
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_imageClassifier, __PAIR128__(("ImageClassifier\n\nParameters\n" + 0x8000000000000000), 0xD000000000000010), a1);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_imageClassifier, __PAIR128__(("Number of Images" + 0x8000000000000000), 0xD000000000000011), a2);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_imageClassifier, __PAIR128__(0xEE00736E6F697461, 0x726574492078614DLL), *a3);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_imageClassifier, __PAIR128__(("Number of Classes" + 0x8000000000000000), 0xD000000000000014), a3[1]);
    MLImageClassifier.ModelParameters.algorithm.getter();
    v9 = MLImageClassifier.ModelParameters.ModelAlgorithmType.description.getter();
    v11 = v10;
    outlined destroy of MLActivityClassifier.ModelParameters(&v12, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
    AnalyticsReporter.reportParameterSettings(model:parameterName:parameterValue:)(CreateML_ModelType_imageClassifier, __PAIR128__(0xE90000000000006DLL, 0x687469726F676C41), __PAIR128__(v11, v9));
    return v11;
  }

  return result;
}

uint64_t specialized MLImageClassifier.evaluation<A>(on:)(uint64_t a1)
{
  v16 = v1;
  MLComponents16AnnotatedFeatureVySo7CIImageCSSGG_AJs5NeverOTg503_s8d87ML17MLImageClassifierV10evaluation2onAA19MLClassifierMetricsVx_tKSlRz0A12MLComponents16fg5VySo7h5CSSG7B59RtzlFAlMcfu_32ebed8ba5c9417264c39088de476e42ecAmLTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVySo7CIImageCSSGG_AJs5NeverOTg503_s8d87ML17MLImageClassifierV10evaluation2onAA19MLClassifierMetricsVx_tKSlRz0A12MLComponents16fg5VySo7h5CSSG7B59RtzlFAlMcfu_32ebed8ba5c9417264c39088de476e42ecAmLTf3nnnpk_nTf1cn_n(a1);
  v4 = MLComponents16AnnotatedFeatureVySo7CIImageCSSGG_AJs5NeverOTg503_s8d87ML17MLImageClassifierV10evaluation2onAA19MLClassifierMetricsVx_tKSlRz0A12MLComponents16fg5VySo7h5CSSG7B59RtzlFAlMcfu_32ebed8ba5c9417264c39088de476e42ecAmLTf3nnnpk_nTf1cn_n;
  v5 = MLImageClassifier.performRequests(_:)(MLComponents16AnnotatedFeatureVySo7CIImageCSSGG_AJs5NeverOTg503_s8d87ML17MLImageClassifierV10evaluation2onAA19MLClassifierMetricsVx_tKSlRz0A12MLComponents16fg5VySo7h5CSSG7B59RtzlFAlMcfu_32ebed8ba5c9417264c39088de476e42ecAmLTf3nnnpk_nTf1cn_n);
  result = v4;
  if (!v2)
  {
    MLComponents16AnnotatedFeatureVySo7CIImageCSSGG_SSs5NeverOTg503_s8d87ML17MLImageClassifierV10evaluation2onAA19MLClassifierMetricsVx_tKSlRz0A12MLComponents16fg5VySo7h5CSSG7B63RtzlFSSAMcfu0_33_7eec49b2e7313abe927b434220475ef8AMSSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVySo7CIImageCSSGG_SSs5NeverOTg503_s8d87ML17MLImageClassifierV10evaluation2onAA19MLClassifierMetricsVx_tKSlRz0A12MLComponents16fg5VySo7h5CSSG7B63RtzlFSSAMcfu0_33_7eec49b2e7313abe927b434220475ef8AMSSTf3nnnpk_nTf1cn_n(a1);

    v8 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(MLComponents16AnnotatedFeatureVySo7CIImageCSSGG_SSs5NeverOTg503_s8d87ML17MLImageClassifierV10evaluation2onAA19MLClassifierMetricsVx_tKSlRz0A12MLComponents16fg5VySo7h5CSSG7B63RtzlFSSAMcfu0_33_7eec49b2e7313abe927b434220475ef8AMSSTf3nnnpk_nTf1cn_n);
    v14 = v5;
    v15 = MLComponents16AnnotatedFeatureVySo7CIImageCSSGG_SSs5NeverOTg503_s8d87ML17MLImageClassifierV10evaluation2onAA19MLClassifierMetricsVx_tKSlRz0A12MLComponents16fg5VySo7h5CSSG7B63RtzlFSSAMcfu0_33_7eec49b2e7313abe927b434220475ef8AMSSTf3nnnpk_nTf1cn_n;
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
    v10 = lazy protocol witness table accessor for type [String] and conformance [A]();
    v11 = v16;
    ClassificationMetrics.init<A, B>(predicted:groundTruth:labels:)(&v14, &v15, v8, &type metadata for String, v9, v9, &protocol witness table for String, v10, v10);
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    swift_storeEnumTagMultiPayload(v11, v12, 0);
    v13 = type metadata accessor for MLClassifierMetrics.Contents(0);
    return swift_storeEnumTagMultiPayload(v11, v13, 0);
  }

  return result;
}

uint64_t MLImageClassifier.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2[43] = a2;
  v2[42] = a1;
  v3 = type metadata accessor for MLClassifierMetrics(0);
  v2[44] = v3;
  v2[45] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLClassifierMetrics?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[46] = swift_task_alloc(v4);
  v2[47] = swift_task_alloc(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLImageClassifier.Model?);
  v2[48] = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MLImageClassifier(0);
  v2[49] = v6;
  v2[50] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  v2[51] = v7;
  v8 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[52] = swift_task_alloc(v8);
  v2[53] = swift_task_alloc(v8);
  v9 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v2[54] = v9;
  v10 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[55] = swift_task_alloc(v10);
  v2[56] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLImageClassifier.PersistentParameters?);
  v2[57] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MLImageClassifier.PersistentParameters(0);
  v2[58] = v12;
  v2[59] = swift_task_alloc((*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLImageClassifier.init(delegate:), 0, 0);
}

uint64_t MLImageClassifier.init(delegate:)()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 456);
  v3 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_trainingParameters + *(v0 + 344);
  swift_beginAccess(v3, v0 + 240, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v3, v2, &demangling cache variable for type metadata for MLImageClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    BUG();
  }

  v18 = (v0 + 208);
  v21 = (v0 + 176);
  v4 = *(v0 + 472);
  v5 = *(v0 + 464);
  v6 = *(v0 + 448);
  v23 = *(v0 + 440);
  v22 = *(v0 + 432);
  v26 = *(v0 + 424);
  v20 = *(v0 + 416);
  v19 = *(v0 + 408);
  v17 = *(v0 + 344);
  v16 = *(v0 + 384);
  outlined init with take of MLClassifierMetrics(*(v0 + 456), v4, type metadata accessor for MLImageClassifier.PersistentParameters);
  outlined init with copy of MLTrainingSessionParameters(v4 + v5[5], v6, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  v24 = *(v4 + v5[8]);
  v25 = *(v4 + v5[9]);
  v7 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (featureExtractor: MLImageClassifier.FeatureExtractorType, classifier: MLImageClassifier.ModelParameters.ClassifierType)) + 48);
  outlined init with copy of MLTrainingSessionParameters(v4 + v5[6], v26, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  v8 = *(v4 + v5[7]);
  v9 = v8;
  if (v8 == 2)
  {
    v9 = 0;
  }

  *(v26 + v7) = v9;
  *(v0 + 80) = 0;
  *(v0 + 64) = 0;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = v24;
  *(v0 + 24) = v25;
  outlined init with copy of MLTrainingSessionParameters(v6, v23, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  *(v0 + 200) = v22;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
  outlined init with take of MLClassifierMetrics(v23, boxed_opaque_existential_0, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  outlined copy of MLImageClassifier.ModelParameters.ClassifierType?(v8);
  outlined assign with take of Any?(v21, v0 + 32);
  outlined init with copy of MLTrainingSessionParameters(v26, v20, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  *(v0 + 232) = v19;
  v11 = __swift_allocate_boxed_opaque_existential_0(v18);
  outlined init with take of MLClassifierMetrics(v20, v11, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  outlined assign with take of Any?(v18, v0 + 64);
  outlined destroy of MLActivityClassifier.ModelParameters(v26, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  outlined destroy of MLActivityClassifier.ModelParameters(v6, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  v12 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_model + v17;
  swift_beginAccess(OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_model + v17, v0 + 264, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v12, v16, &demangling cache variable for type metadata for MLImageClassifier.Model?);
  v13 = type metadata accessor for MLImageClassifier.Model(0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v13) == 1)
  {
    BUG();
  }

  outlined init with copy of MLImageClassifier.ModelParameters(v0 + 16, v0 + 96);
  v14 = swift_task_alloc(128);
  *(v0 + 480) = v14;
  *v14 = v0;
  v14[1] = MLImageClassifier.init(delegate:);
  return MLImageClassifier.init(_:parameters:)(*(v0 + 400), *(v0 + 384), v0 + 96);
}

{
  v2 = *(*v1 + 480);
  *(*v1 + 488) = v0;
  v2;
  if (v0)
  {
    v3 = MLImageClassifier.init(delegate:);
  }

  else
  {
    v3 = MLImageClassifier.init(delegate:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 376);
  v2 = *(v0 + 352);
  v3 = *(v0 + 344);
  outlined init with take of MLClassifierMetrics(*(v0 + 400), *(v0 + 336), type metadata accessor for MLImageClassifier);
  v4 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_trainingMetrics + v3;
  swift_beginAccess(v4, v0 + 288, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4, v1, &demangling cache variable for type metadata for MLClassifierMetrics?);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    BUG();
  }

  v5 = *(v0 + 472);
  v6 = *(v0 + 392);
  v25 = *(v0 + 376);
  v22 = *(v0 + 368);
  v20 = *(v0 + 352);
  v7 = *(v0 + 336);
  v8 = *(v0 + 344);
  outlined destroy of MLImageClassifier.ModelParameters(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for MLImageClassifier.PersistentParameters);
  outlined assign with take of MLClassifierMetrics(v25, v7 + *(v6 + 24));
  v9 = v8 + OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_validationMetrics;
  swift_beginAccess(v8 + OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_validationMetrics, v0 + 312, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v9, v22, &demangling cache variable for type metadata for MLClassifierMetrics?);

  if (__swift_getEnumTagSinglePayload(v22, 1, v20) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 368), &demangling cache variable for type metadata for MLClassifierMetrics?);
  }

  else
  {
    v10 = *(v0 + 392);
    v11 = *(v0 + 336);
    v12 = *(v0 + 360);
    outlined init with take of MLClassifierMetrics(*(v0 + 368), v12, type metadata accessor for MLClassifierMetrics);
    outlined assign with take of MLClassifierMetrics(v12, v11 + *(v10 + 28));
  }

  v13 = *(v0 + 456);
  v14 = *(v0 + 448);
  v15 = *(v0 + 440);
  v16 = *(v0 + 424);
  v19 = *(v0 + 416);
  v18 = *(v0 + 400);
  v26 = *(v0 + 384);
  v24 = *(v0 + 376);
  v21 = *(v0 + 360);
  v23 = *(v0 + 368);
  *(v0 + 472);
  v13;
  v14;
  v15;
  v16;
  v19;
  v18;
  v26;
  v24;
  v23;
  v21;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 472);
  v2 = *(v0 + 456);
  v3 = *(v0 + 448);
  v12 = *(v0 + 440);
  v11 = *(v0 + 424);
  v10 = *(v0 + 416);
  v9 = *(v0 + 400);
  v8 = *(v0 + 384);
  v7 = *(v0 + 376);
  v6 = *(v0 + 368);
  v5 = *(v0 + 360);

  outlined destroy of MLImageClassifier.ModelParameters(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for MLImageClassifier.PersistentParameters);
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

void *MLImageClassifier.debugDescription.getter()
{
  v1 = v0;
  v23._object = type metadata accessor for MLClassifierMetrics.Contents(0);
  v2 = *(*(v23._object - 1) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v23._countAndFlagsBits = MLImageClassifier.ModelParameters.description.getter();
  v6 = v5;
  v7 = type metadata accessor for MLImageClassifier(0);
  v20._countAndFlagsBits = MLClassifierMetrics.description.getter();
  v20._object = v8;
  v9 = *(v7 + 28);
  v10 = v6;
  outlined init with copy of MLTrainingSessionParameters(v1 + v9, &v19, type metadata accessor for MLClassifierMetrics.Contents);
  LODWORD(v23._object) = swift_getEnumCaseMultiPayload(&v19, v23._object);
  outlined destroy of MLActivityClassifier.ModelParameters(&v19, type metadata accessor for MLClassifierMetrics.Contents);
  v21._countAndFlagsBits = MLClassifierMetrics.description.getter();
  v12 = v11;
  v21._object = 0xD00000000000001CLL;
  v22 = "odelType" + 0x8000000000000000;
  v13._countAndFlagsBits = v23._countAndFlagsBits;
  v23._countAndFlagsBits = v10;
  v13._object = v10;
  String.append(_:)(v13);
  v19._countAndFlagsBits = 0xD00000000000001ELL;
  v19._object = "ActivityClassifier\n\nParameters\n" + 0x8000000000000000;
  object = v20._object;
  String.append(_:)(v20);
  LOBYTE(v1) = v19._object;
  String.append(_:)(v19);
  v1;
  if (LODWORD(v23._object) > 1)
  {
    v17 = object;
  }

  else
  {
    v19._countAndFlagsBits = 0xD000000000000020;
    v19._object = "\nPerformance on Training Data\n" + 0x8000000000000000;
    v15._countAndFlagsBits = v21._countAndFlagsBits;
    v15._object = v12;
    String.append(_:)(v15);
    v16 = v19._object;
    String.append(_:)(v19);
    object;
    v17 = v12;
    LOBYTE(v12) = v16;
  }

  v17;
  v12;
  v23._countAndFlagsBits;
  return v21._object;
}

NSAttributedString MLImageClassifier.playgroundDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NSAttributedString();
  v3._countAndFlagsBits = MLImageClassifier.debugDescription.getter();
  v3._object = v4;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v3).super.isa;
  v1[3].super.isa = v2;
  v1->super.isa = result.super.isa;
  return result;
}

void *key path getter for AnnotatedFeature.feature : AnnotatedFeature<CIImage, String>()
{
  v4 = v0;
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<CIImage, String>);
  AnnotatedFeature.feature.getter(v2);
  result = v4;
  *v1 = v4;
  return result;
}

uint64_t key path setter for AnnotatedFeature.feature : AnnotatedFeature<CIImage, String>(id *a1)
{
  v3[0] = *a1;
  v3[0];
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<CIImage, String>);
  return AnnotatedFeature.feature.setter(v3, v1);
}

uint64_t key path getter for AnnotatedFeature.annotation : AnnotatedFeature<CIImage, String>()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<CIImage, String>);
  result = AnnotatedFeature.annotation.getter(v2);
  *v1 = v4;
  return result;
}

uint64_t key path setter for AnnotatedFeature.annotation : AnnotatedFeature<CIImage, String>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v5[0] = v1;
  v5[1] = v2;

  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<CIImage, String>);
  return AnnotatedFeature.annotation.setter(v5, v3);
}

uint64_t partial apply for closure #1 in MLImageClassifier.init(trainingData:parameters:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = swift_task_alloc(144);
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in MLImageClassifier.init(trainingData:parameters:);
  return closure #1 in MLImageClassifier.init(trainingData:parameters:)(a1, v3, v1 + 24);
}

{
  v3 = *(v1 + 16);
  v4 = swift_task_alloc(144);
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLImageClassifier.init(trainingData:parameters:)(a1, v3, v1 + 24);
}

uint64_t objectdestroyTm_2()
{
  v0[2];
  if (v0[8])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);
  }

  if (v0[12])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  }

  return swift_deallocObject(v0, 104, 7);
}

id sub_14151E()
{
  v1 = v0;
  result = MLImageClassifier.model.getter();
  *v1 = result;
  return result;
}

char *initializeBufferWithCopyOfBuffer for MLImageClassifier(char *a1, char **a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = &v5[(v4 + 16) & ~v4];

    return a1;
  }

  *(a1 + 8) = *(a2 + 1);
  v7 = a2[6];
  v5;
  if (v7)
  {
    *(a1 + 6) = v7;
    (**(v7 - 1))(a1 + 24, a2 + 3, v7);
  }

  else
  {
    v8 = *(a2 + 3);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v8;
  }

  v9 = a1 + 56;
  v10 = a2 + 7;
  v11 = a2[10];
  if (v11)
  {
    *(a1 + 10) = v11;
    (**(v11 - 1))(v9, v10);
  }

  else
  {
    v12 = *v10;
    *(a1 + 72) = *(a2 + 9);
    *v9 = v12;
  }

  v13 = *(a3 + 24);
  v14 = &a1[v13];
  v15 = (a2 + v13);
  v16 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v15, v16);
  v67 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload == 2)
  {
    v26 = *v15;
    swift_errorRetain(v26);
    *v14 = v26;
    v23 = v14;
LABEL_16:
    v25 = a3;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v27 = swift_getEnumCaseMultiPayload(v15, v65);
    v70 = v27 == 1;
    v28 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v27 == 1)
    {
      v28 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v29 = __swift_instantiateConcreteTypeFromMangledName(v28);
    v30 = v15;
    v23 = v14;
    (*(*(v29 - 8) + 16))(v14, v30, v29);
    swift_storeEnumTagMultiPayload(v14, v65, v70);
    goto LABEL_16;
  }

  *v14 = *v15;
  v58 = v14;
  v61 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v69 = v16;
  v18 = *(v61 + 20);
  v57 = &v14[v18];
  v19 = type metadata accessor for DataFrame(0);
  v64 = *(*(v19 - 8) + 16);
  v20 = v15 + v18;
  v16 = v69;
  v64(v57, v20, v19);
  v21 = *(v61 + 24);
  v22 = v15 + v21;
  v23 = v58;
  v24 = v19;
  v25 = a3;
  v64(&v58[v21], v22, v24);
LABEL_17:
  swift_storeEnumTagMultiPayload(v23, v16, v67);
  v31 = *(v25 + 28);
  v68 = &a1[v31];
  v32 = (a2 + v31);
  v33 = swift_getEnumCaseMultiPayload(v32, v16);
  v66 = v33;
  if (v33 == 2)
  {
    v42 = *v32;
    swift_errorRetain(v42);
    *v68 = v42;
    v40 = v68;
  }

  else if (v33 == 1)
  {
    *v68 = *v32;
    v62 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v34 = *(v62 + 20);
    v59 = &v68[v34];
    v71 = v16;
    v35 = type metadata accessor for DataFrame(0);
    v36 = v32 + v34;
    v37 = *(*(v35 - 8) + 16);
    v37(v59, v36, v35);
    v38 = *(v62 + 24);
    v39 = v32 + v38;
    v40 = v68;
    v41 = v35;
    v16 = v71;
    v37(&v68[v38], v39, v41);
    v25 = a3;
  }

  else
  {
    v72 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v43 = swift_getEnumCaseMultiPayload(v32, v72);
    v63 = v43 == 1;
    v44 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v43 == 1)
    {
      v44 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v45 = __swift_instantiateConcreteTypeFromMangledName(v44);
    v46 = v32;
    v40 = v68;
    (*(*(v45 - 8) + 16))(v68, v46, v45);
    swift_storeEnumTagMultiPayload(v68, v72, v63);
  }

  swift_storeEnumTagMultiPayload(v40, v16, v66);
  v47 = *(v25 + 32);
  v48 = &a1[v47];
  v49 = a2 + v47;
  v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  if (swift_getEnumCaseMultiPayload(v49, v50) == 1)
  {
    v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
    (*(*(v51 - 8) + 16))(v48, v49, v51);
    v52 = 1;
    v53 = v48;
    v54 = v50;
  }

  else
  {
    v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
    (*(*(v55 - 8) + 16))(v48, v49, v55);
    v53 = v48;
    v54 = v50;
    v52 = 0;
  }

  swift_storeEnumTagMultiPayload(v53, v54, v52);
  return a1;
}

uint64_t destroy for MLImageClassifier(uint64_t a1, uint64_t a2)
{
  v2 = a2;

  if (*(a1 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 24));
  }

  if (*(a1 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 56));
  }

  v4 = (a1 + *(a2 + 24));
  v5 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v4, v5);
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *v4;
      break;
    case 1:
      v29 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v9 = v4 + *(v29 + 20);
      v10 = type metadata accessor for DataFrame(0);
      v27 = v5;
      v11 = *(*(v10 - 8) + 8);
      v12 = v9;
      v2 = a2;
      v11(v12, v10);
      v11(v4 + *(v29 + 24), v10);
      v5 = v27;
      break;
    case 0:
      v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v4, v7) == 1)
      {
        v8 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v8 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v13 = __swift_instantiateConcreteTypeFromMangledName(v8);
      (*(*(v13 - 8) + 8))(v4, v13);
      break;
  }

  v14 = (a1 + *(v2 + 28));
  v15 = swift_getEnumCaseMultiPayload(v14, v5);
  switch(v15)
  {
    case 2:
      *v14;
      break;
    case 1:
      v30 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v18 = v14 + *(v30 + 20);
      v19 = type metadata accessor for DataFrame(0);
      v28 = v2;
      v20 = *(*(v19 - 8) + 8);
      v20(v18, v19);
      v20(v14 + *(v30 + 24), v19);
      v2 = v28;
      break;
    case 0:
      v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v14, v16) == 1)
      {
        v17 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v17 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v21 = __swift_instantiateConcreteTypeFromMangledName(v17);
      (*(*(v21 - 8) + 8))(v14, v21);
      break;
  }

  v22 = *(v2 + 32) + a1;
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v24 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
  if (swift_getEnumCaseMultiPayload(v22, v23) == 1)
  {
    v24 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
  }

  v25 = __swift_instantiateConcreteTypeFromMangledName(v24);
  return (*(*(v25 - 8) + 8))(v22, v25);
}

uint64_t initializeWithCopy for MLImageClassifier(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a2 + 48);
  v5;
  if (v6)
  {
    *(a1 + 48) = v6;
    (**(v6 - 8))(a1 + 24, a2 + 24, v6);
  }

  else
  {
    v7 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v7;
  }

  v8 = (a1 + 56);
  v9 = (a2 + 56);
  v10 = *(a2 + 80);
  if (v10)
  {
    *(a1 + 80) = v10;
    (**(v10 - 8))(v8, v9);
  }

  else
  {
    v11 = *v9;
    *(a1 + 72) = *(a2 + 72);
    *v8 = v11;
  }

  v12 = a3[6];
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  v49 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v14, v49);
  v51 = a1;
  if (EnumCaseMultiPayload == 2)
  {
    v21 = *v14;
    swift_errorRetain(*v14);
    *v13 = v21;
    a1 = v51;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    *v13 = *v14;
    v52 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v16 = *(v52 + 20);
    v48 = v13 + v16;
    v17 = type metadata accessor for DataFrame(0);
    v56 = v13;
    v18 = *(*(v17 - 8) + 16);
    v19 = v14 + v16;
    EnumCaseMultiPayload = 1;
    v18(v48, v19, v17);
    v20 = v17;
    a1 = v51;
    v18(v56 + *(v52 + 24), v14 + *(v52 + 24), v20);
    v13 = v56;
  }

  else
  {
    v57 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v22 = swift_getEnumCaseMultiPayload(v14, v57);
    v54 = v22 == 1;
    v23 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v22 == 1)
    {
      v23 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v24 = __swift_instantiateConcreteTypeFromMangledName(v23);
    (*(*(v24 - 8) + 16))(v13, v14, v24);
    swift_storeEnumTagMultiPayload(v13, v57, v54);
  }

  swift_storeEnumTagMultiPayload(v13, v49, EnumCaseMultiPayload);
  v25 = a3[7];
  v26 = (a1 + v25);
  v27 = (a2 + v25);
  v28 = swift_getEnumCaseMultiPayload(v27, v49);
  if (v28 == 2)
  {
    v34 = *v27;
    swift_errorRetain(*v27);
    *v26 = v34;
  }

  else if (v28 == 1)
  {
    *v26 = *v27;
    v55 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v29 = *(v55 + 20);
    v53 = v26 + v29;
    v30 = type metadata accessor for DataFrame(0);
    v31 = v27 + v29;
    v32 = *(*(v30 - 8) + 16);
    v32(v53, v31, v30);
    v33 = v30;
    v28 = 1;
    v32(v26 + *(v55 + 24), v27 + *(v55 + 24), v33);
  }

  else
  {
    v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v35 = swift_getEnumCaseMultiPayload(v27, v58);
    v36 = v35 == 1;
    v37 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v35 == 1)
    {
      v37 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v38 = __swift_instantiateConcreteTypeFromMangledName(v37);
    (*(*(v38 - 8) + 16))(v26, v27, v38);
    swift_storeEnumTagMultiPayload(v26, v58, v36);
  }

  swift_storeEnumTagMultiPayload(v26, v49, v28);
  v39 = a3[8];
  v40 = v39 + v51;
  v41 = v39 + a2;
  v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v43 = swift_getEnumCaseMultiPayload(v41, v42);
  v44 = v43 == 1;
  v45 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
  if (v43 == 1)
  {
    v45 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
  }

  v46 = __swift_instantiateConcreteTypeFromMangledName(v45);
  (*(*(v46 - 8) + 16))(v40, v41, v46);
  swift_storeEnumTagMultiPayload(v40, v42, v44);
  return v51;
}

uint64_t assignWithCopy for MLImageClassifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v6;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v8 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if (v8)
    {
      __swift_assign_boxed_opaque_existential_0((a1 + 24), (a2 + 24));
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 24));
  }

  else if (v8)
  {
    *(a1 + 48) = v8;
    (**(v8 - 8))(a1 + 24, a2 + 24);
    goto LABEL_8;
  }

  v9 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v9;
LABEL_8:
  v10 = *(a2 + 80);
  if (*(a1 + 80))
  {
    if (v10)
    {
      __swift_assign_boxed_opaque_existential_0((a1 + 56), (a2 + 56));
      goto LABEL_15;
    }

    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 56));
  }

  else if (v10)
  {
    *(a1 + 80) = v10;
    (**(v10 - 8))(a1 + 56, a2 + 56);
    goto LABEL_15;
  }

  v11 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v11;
LABEL_15:
  if (a1 != a2)
  {
    v42 = a3;
    v12 = *(a3 + 24);
    v13 = (a1 + v12);
    v14 = (a2 + v12);
    outlined destroy of MLActivityClassifier.ModelParameters(v13, type metadata accessor for MLClassifierMetrics.Contents);
    v15 = type metadata accessor for MLClassifierMetrics.Contents(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v14, v15);
    v50 = v15;
    v52 = EnumCaseMultiPayload;
    if (EnumCaseMultiPayload == 2)
    {
      v19 = *v14;
      swift_errorRetain(*v14);
      *v13 = v19;
      v15 = v50;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *v13 = *v14;
      v47 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v17 = *(v47 + 20);
      v43 = v13 + v17;
      v45 = type metadata accessor for DataFrame(0);
      v54 = *(*(v45 - 8) + 16);
      v18 = v14 + v17;
      v15 = v50;
      v54(v43, v18, v45);
      v54(v13 + *(v47 + 24), v14 + *(v47 + 24), v45);
    }

    else
    {
      v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v20 = swift_getEnumCaseMultiPayload(v14, v55);
      v48 = v20 == 1;
      v21 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v20 == 1)
      {
        v21 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v22 = __swift_instantiateConcreteTypeFromMangledName(v21);
      (*(*(v22 - 8) + 16))(v13, v14, v22);
      swift_storeEnumTagMultiPayload(v13, v55, v48);
    }

    swift_storeEnumTagMultiPayload(v13, v15, v52);
    v23 = *(v42 + 28);
    v24 = (a1 + v23);
    v25 = (a2 + v23);
    outlined destroy of MLActivityClassifier.ModelParameters(v24, type metadata accessor for MLClassifierMetrics.Contents);
    v26 = swift_getEnumCaseMultiPayload(v25, v15);
    v53 = v26;
    if (v26 == 2)
    {
      v29 = *v25;
      swift_errorRetain(*v25);
      *v24 = v29;
      v15 = v50;
    }

    else if (v26 == 1)
    {
      *v24 = *v25;
      v49 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v27 = *(v49 + 20);
      v44 = v24 + v27;
      v46 = type metadata accessor for DataFrame(0);
      v56 = *(*(v46 - 8) + 16);
      v28 = v25 + v27;
      v15 = v50;
      v56(v44, v28, v46);
      v56(v24 + *(v49 + 24), v25 + *(v49 + 24), v46);
    }

    else
    {
      v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v30 = swift_getEnumCaseMultiPayload(v25, v51);
      v57 = v30 == 1;
      v31 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v30 == 1)
      {
        v31 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v32 = __swift_instantiateConcreteTypeFromMangledName(v31);
      (*(*(v32 - 8) + 16))(v24, v25, v32);
      swift_storeEnumTagMultiPayload(v24, v51, v57);
    }

    swift_storeEnumTagMultiPayload(v24, v15, v53);
    v33 = *(v42 + 32);
    v34 = a1 + v33;
    v35 = v33 + a2;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1 + v33, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    v37 = swift_getEnumCaseMultiPayload(v35, v36);
    v38 = v37 == 1;
    v39 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
    if (v37 == 1)
    {
      v39 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
    }

    v40 = __swift_instantiateConcreteTypeFromMangledName(v39);
    (*(*(v40 - 8) + 16))(v34, v35, v40);
    swift_storeEnumTagMultiPayload(v34, v36, v38);
  }

  return a1;
}

void *initializeWithTake for MLImageClassifier(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  qmemcpy(a1 + 1, a2 + 1, 0x50uLL);
  v4 = a3[6];
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v6, v7);
  v50 = v7;
  if (EnumCaseMultiPayload == 1)
  {
    *v5 = *v6;
    v52 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v17 = *(v52 + 20);
    v48 = &v5[v17];
    v18 = type metadata accessor for DataFrame(0);
    v45 = v5;
    v19 = *(*(v18 - 8) + 32);
    v19(v48, &v6[v17], v18);
    v20 = v18;
    v7 = v50;
    v19(&v45[*(v52 + 24)], &v6[*(v52 + 24)], v20);
    v16 = 1;
    v14 = v45;
    v15 = v50;
LABEL_7:
    swift_storeEnumTagMultiPayload(v14, v15, v16);
    goto LABEL_9;
  }

  if (!EnumCaseMultiPayload)
  {
    v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v9 = swift_getEnumCaseMultiPayload(v6, v51);
    v10 = v9 == 1;
    v11 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v9 == 1)
    {
      v11 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledName(v11);
    (*(*(v12 - 8) + 32))(v5, v6, v12);
    v13 = v10;
    v7 = v50;
    swift_storeEnumTagMultiPayload(v5, v51, v13);
    v14 = v5;
    v15 = v50;
    v16 = 0;
    goto LABEL_7;
  }

  memcpy(v5, v6, *(*(v7 - 8) + 64));
LABEL_9:
  v21 = a3[7];
  v22 = a1 + v21;
  v23 = a2 + v21;
  v24 = swift_getEnumCaseMultiPayload(v23, v7);
  if (v24 == 1)
  {
    *v22 = *v23;
    v54 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v32 = *(v54 + 20);
    v49 = &v22[v32];
    v33 = type metadata accessor for DataFrame(0);
    v34 = &v23[v32];
    v35 = *(*(v33 - 8) + 32);
    v35(v49, v34, v33);
    v35(&v22[*(v54 + 24)], &v23[*(v54 + 24)], v33);
    v31 = 1;
    v29 = v22;
    v30 = v50;
LABEL_15:
    swift_storeEnumTagMultiPayload(v29, v30, v31);
    goto LABEL_17;
  }

  if (!v24)
  {
    v53 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v25 = swift_getEnumCaseMultiPayload(v23, v53);
    v26 = v25 == 1;
    v27 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v25 == 1)
    {
      v27 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v28 = __swift_instantiateConcreteTypeFromMangledName(v27);
    (*(*(v28 - 8) + 32))(v22, v23, v28);
    swift_storeEnumTagMultiPayload(v22, v53, v26);
    v29 = v22;
    v30 = v50;
    v31 = 0;
    goto LABEL_15;
  }

  memcpy(v22, v23, *(*(v7 - 8) + 64));
LABEL_17:
  v36 = a3[8];
  v37 = a1 + v36;
  v38 = a2 + v36;
  v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v40 = swift_getEnumCaseMultiPayload(v38, v39);
  v41 = v40 == 1;
  v42 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
  if (v40 == 1)
  {
    v42 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
  }

  v43 = __swift_instantiateConcreteTypeFromMangledName(v42);
  (*(*(v43 - 8) + 32))(v37, v38, v43);
  swift_storeEnumTagMultiPayload(v37, v39, v41);
  return a1;
}

uint64_t assignWithTake for MLImageClassifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  if (*(a1 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 24));
  }

  v7 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v7;
  if (*(a1 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 56));
  }

  v8 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v8;
  if (a1 != a2)
  {
    v48 = a3;
    v9 = *(a3 + 24);
    v10 = (a1 + v9);
    v11 = (a2 + v9);
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLClassifierMetrics.Contents);
    v12 = type metadata accessor for MLClassifierMetrics.Contents(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v11, v12);
    v53 = v12;
    if (EnumCaseMultiPayload == 1)
    {
      *v10 = *v11;
      v49 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v22 = *(v49 + 20);
      v51 = &v10[v22];
      v47 = type metadata accessor for DataFrame(0);
      v55 = *(*(v47 - 8) + 32);
      v23 = &v11[v22];
      v12 = v53;
      v55(v51, v23, v47);
      v55(&v10[*(v49 + 24)], &v11[*(v49 + 24)], v47);
      v21 = 1;
      v19 = v10;
      v20 = v53;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        memcpy(v10, v11, *(*(v12 - 8) + 64));
LABEL_14:
        v24 = *(v48 + 28);
        v25 = (a1 + v24);
        v26 = (a2 + v24);
        outlined destroy of MLActivityClassifier.ModelParameters(v25, type metadata accessor for MLClassifierMetrics.Contents);
        v27 = swift_getEnumCaseMultiPayload(v26, v12);
        if (v27 == 1)
        {
          *v25 = *v26;
          v57 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v35 = *(v57 + 20);
          v50 = &v25[v35];
          v52 = type metadata accessor for DataFrame(0);
          v36 = &v26[v35];
          v37 = *(*(v52 - 8) + 32);
          v37(v50, v36, v52);
          v37(&v25[*(v57 + 24)], &v26[*(v57 + 24)], v52);
          v34 = 1;
          v32 = v25;
          v33 = v53;
        }

        else
        {
          if (v27)
          {
            memcpy(v25, v26, *(*(v12 - 8) + 64));
            goto LABEL_22;
          }

          v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
          v28 = swift_getEnumCaseMultiPayload(v26, v56);
          v29 = v28 == 1;
          v30 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
          if (v28 == 1)
          {
            v30 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
          }

          v31 = __swift_instantiateConcreteTypeFromMangledName(v30);
          (*(*(v31 - 8) + 32))(v25, v26, v31);
          swift_storeEnumTagMultiPayload(v25, v56, v29);
          v32 = v25;
          v33 = v53;
          v34 = 0;
        }

        swift_storeEnumTagMultiPayload(v32, v33, v34);
LABEL_22:
        v38 = *(v48 + 32);
        v39 = a1 + v38;
        v40 = v38 + a2;
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1 + v38, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
        v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
        v42 = swift_getEnumCaseMultiPayload(v40, v41);
        v43 = v42 == 1;
        v44 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
        if (v42 == 1)
        {
          v44 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
        }

        v45 = __swift_instantiateConcreteTypeFromMangledName(v44);
        (*(*(v45 - 8) + 32))(v39, v40, v45);
        swift_storeEnumTagMultiPayload(v39, v41, v43);
        return a1;
      }

      v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v14 = swift_getEnumCaseMultiPayload(v11, v54);
      v15 = v14 == 1;
      v16 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v14 == 1)
      {
        v16 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v17 = __swift_instantiateConcreteTypeFromMangledName(v16);
      (*(*(v17 - 8) + 32))(v10, v11, v17);
      v18 = v15;
      v12 = v53;
      swift_storeEnumTagMultiPayload(v10, v54, v18);
      v19 = v10;
      v20 = v53;
      v21 = 0;
    }

    swift_storeEnumTagMultiPayload(v19, v20, v21);
    goto LABEL_14;
  }

  return a1;
}

uint64_t sub_142859(void *a1, unsigned int a2, uint64_t a3)
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
    v5 = type metadata accessor for MLClassifierMetrics(0);
    if (*(*(v5 - 8) + 84) == a2)
    {
      v6 = *(a3 + 24);
    }

    else
    {
      v5 = type metadata accessor for MLImageClassifier.Model(0);
      v6 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v6, a2, v5);
  }

  return result;
}

void sub_1428F6(void *a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *a1 = 2 * (a2 - 1);
  }

  else
  {
    v6 = type metadata accessor for MLClassifierMetrics(0);
    if (*(*(v6 - 8) + 84) == a3)
    {
      v7 = *(a4 + 24);
    }

    else
    {
      v6 = type metadata accessor for MLImageClassifier.Model(0);
      v7 = *(a4 + 32);
    }

    __swift_storeEnumTagSinglePayload(a1 + v7, a2, a2, v6);
  }
}

uint64_t type metadata completion function for MLImageClassifier(uint64_t a1)
{
  v4[0] = &value witness table for Builtin.UnknownObject + 64;
  v4[1] = "P";
  result = type metadata accessor for MLClassifierMetrics.Contents(319);
  if (v2 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    v6 = v5;
    result = type metadata accessor for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>(319);
    if (v3 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      swift_initStructMetadata(a1, 256, 5, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

uint64_t sub_142A01()
{
  v1 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = ~*(v2 + 80) & (v3 + 24);
  v10 = *(v2 + 64);
  *(v0 + 16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v4 + v0, v1);
  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    return swift_deallocObject(v0, v10 + v4, v3 | 7);
  }

  v6 = type metadata accessor for MLImageClassifier.DataSource(0);
  v7 = swift_getEnumCaseMultiPayload(v4 + v0, v6);
  if (v7 == 2)
  {
LABEL_6:
    *(v4 + v0);
    return swift_deallocObject(v0, v10 + v4, v3 | 7);
  }

  if (v7 <= 1)
  {
    v8 = type metadata accessor for URL(0);
    (*(*(v8 - 8) + 8))(v4 + v0, v8);
  }

  return swift_deallocObject(v0, v10 + v4, v3 | 7);
}

uint64_t partial apply for closure #1 in MLImageClassifier.init(trainingData:parameters:classNames:)(uint64_t a1)
{
  v3 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v4 = *(v1 + 16);
  v5 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 24));
  v6 = swift_task_alloc(48);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLImageClassifier.init(trainingData:parameters:classNames:)(a1, v4, v5);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 80);
  if ((v4 & 0x20000) != 0)
  {
    v5 = swift_slowAlloc(*(v3 + 64), v4);
    *a2 = v5;
    return v5;
  }

  return v2;
}

uint64_t lazy protocol witness table accessor for type MLActionClassifier.VideoAugmentationOptions and conformance MLActionClassifier.VideoAugmentationOptions()
{
  result = lazy protocol witness table cache variable for type MLActionClassifier.VideoAugmentationOptions and conformance MLActionClassifier.VideoAugmentationOptions;
  if (!lazy protocol witness table cache variable for type MLActionClassifier.VideoAugmentationOptions and conformance MLActionClassifier.VideoAugmentationOptions)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLActionClassifier.VideoAugmentationOptions, &type metadata for MLActionClassifier.VideoAugmentationOptions);
    lazy protocol witness table cache variable for type MLActionClassifier.VideoAugmentationOptions and conformance MLActionClassifier.VideoAugmentationOptions = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLActionClassifier.VideoAugmentationOptions and conformance MLActionClassifier.VideoAugmentationOptions;
  if (!lazy protocol witness table cache variable for type MLActionClassifier.VideoAugmentationOptions and conformance MLActionClassifier.VideoAugmentationOptions)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLActionClassifier.VideoAugmentationOptions, &type metadata for MLActionClassifier.VideoAugmentationOptions);
    lazy protocol witness table cache variable for type MLActionClassifier.VideoAugmentationOptions and conformance MLActionClassifier.VideoAugmentationOptions = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLActionClassifier.VideoAugmentationOptions and conformance MLActionClassifier.VideoAugmentationOptions;
  if (!lazy protocol witness table cache variable for type MLActionClassifier.VideoAugmentationOptions and conformance MLActionClassifier.VideoAugmentationOptions)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLActionClassifier.VideoAugmentationOptions, &type metadata for MLActionClassifier.VideoAugmentationOptions);
    lazy protocol witness table cache variable for type MLActionClassifier.VideoAugmentationOptions and conformance MLActionClassifier.VideoAugmentationOptions = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLActionClassifier.VideoAugmentationOptions and conformance MLActionClassifier.VideoAugmentationOptions;
  if (!lazy protocol witness table cache variable for type MLActionClassifier.VideoAugmentationOptions and conformance MLActionClassifier.VideoAugmentationOptions)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLActionClassifier.VideoAugmentationOptions, &type metadata for MLActionClassifier.VideoAugmentationOptions);
    lazy protocol witness table cache variable for type MLActionClassifier.VideoAugmentationOptions and conformance MLActionClassifier.VideoAugmentationOptions = result;
  }

  return result;
}

uint64_t MLActionClassifier.VideoAugmentationOptions.setOptions(in:)()
{
  if (*v0)
  {
    v5 = specialized handling<A, B>(_:_:)(1);
    if (!v5)
    {
      BUG();
    }

    v6 = type metadata accessor for CMLFeatureValue();
    swift_initStackObject(v6, v9);
    v7 = CMLFeatureValue.init(rawValue:ownsValue:)(v5, 1);
    CMLDictionary.add(key:value:)(0xD000000000000011, ("entationOptions.swift" + 0x8000000000000000), v7);
  }

  else
  {
    v1 = specialized handling<A, B>(_:_:)(0);
    if (!v1)
    {
      BUG();
    }

    v2 = type metadata accessor for CMLFeatureValue();
    swift_initStackObject(v2, v8);
    v3 = CMLFeatureValue.init(rawValue:ownsValue:)(v1, 1);
    CMLDictionary.add(key:value:)(0xD000000000000011, ("entationOptions.swift" + 0x8000000000000000), v3);
  }
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MLActionClassifier.VideoAugmentationOptions(uint64_t *a1)
{
  v2 = v1;
  MLActionClassifier.VideoAugmentationOptions.init(rawValue:)(*a1);
  result = v4;
  *v2 = v4;
  *(v2 + 8) = 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MLActionClassifier.VideoAugmentationOptions(uint64_t a1)
{
  v2 = v1;
  result = MLActionClassifier.VideoAugmentationOptions.rawValue.getter();
  *v2 = result;
  return result;
}

void *specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  v62 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: MetricsKey, value: Sendable));
  v1 = *(*(v62 - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v63 = v59;
  v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MetricsKey, Sendable));
  v4 = *(*(v64 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v65 = v59;
  v75 = type metadata accessor for MetricsKey(0);
  v66 = *(v75 - 8);
  v7 = *(v66 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v72 = v59;
  v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: MetricsKey, value: Double));
  v10 = *(*(v67 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v68 = v59;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v69 = v59;
  v74 = a1;
  v15 = *(a1 + 16);
  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<MetricsKey, Sendable>);
    v16 = static _DictionaryStorage.allocate(capacity:)(v15);
  }

  else
  {
    v16 = _swiftEmptyDictionarySingleton;
  }

  v76 = v16;
  v17 = -1 << *(v74 + 32);
  v78 = v74 + 64;
  v18 = ~(-1 << -v17);
  if (-v17 >= 64)
  {
    v18 = -1;
  }

  j = *(v74 + 64) & v18;
  v70 = v17;
  v77 = (63 - v17) >> 6;

  for (i = 0; ; i = v60)
  {
    if (j)
    {
      v21 = i;
      goto LABEL_23;
    }

    v22 = i + 1;
    if (__OFADD__(1, i))
    {
      BUG();
    }

    if (v22 >= v77)
    {
      break;
    }

    j = *(v78 + 8 * v22);
    if (j)
    {
      v21 = i + 1;
    }

    else
    {
      v21 = i + 2;
      if (i + 2 >= v77)
      {
        break;
      }

      j = *(v78 + 8 * v22 + 8);
      if (!j)
      {
        v21 = i + 3;
        if (i + 3 >= v77)
        {
          break;
        }

        j = *(v78 + 8 * v22 + 16);
        if (!j)
        {
          v21 = i + 4;
          if (i + 4 >= v77)
          {
            break;
          }

          j = *(v78 + 8 * v22 + 24);
          if (!j)
          {
            v21 = i + 5;
            if (i + 5 >= v77)
            {
              break;
            }

            j = *(v78 + 8 * v22 + 32);
            if (!j)
            {
              v21 = i + 6;
              if (i + 6 >= v77)
              {
                break;
              }

              j = *(v78 + 8 * v22 + 40);
              if (!j)
              {
                v21 = i + 7;
                if (i + 7 >= v77)
                {
                  break;
                }

                for (j = *(v78 + 8 * v22 + 48); !j; j = *(v78 + 8 * v21))
                {
                  if (__OFADD__(1, v21++))
                  {
                    BUG();
                  }

                  if (v21 >= v77)
                  {
                    goto LABEL_41;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_23:
    v73 = j;
    _BitScanForward64(&v23, j);
    v60 = v21;
    v24 = v23 | (v21 << 6);
    v25 = v66;
    v61 = *(v66 + 72);
    v26 = v74;
    v27 = v69;
    (*(v66 + 16))(v69, *(v74 + 48) + v24 * v61, v75);
    v28 = v67;
    *(v27 + *(v67 + 48)) = *(*(v26 + 56) + 8 * v24);
    v29 = v68;
    outlined init with take of (key: MetricsKey, value: Double)(v27, v68);
    v30 = *(v28 + 48);
    v31 = v63;
    v32 = (v63 + *(v62 + 48));
    v71 = *(v25 + 32);
    v71(v63, v29, v75);
    *&v59[0] = *(v29 + v30);
    v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Sendable);
    swift_dynamicCast(v32, v59, &type metadata for Double, v33, 7);
    v34 = v65;
    v35 = (v65 + *(v64 + 48));
    v36 = v31;
    v37 = v72;
    v38 = v71;
    v71(v65, v36, v75);
    outlined init with take of Any(v32, v35);
    v39 = v38;
    v40 = v75;
    v39(v37, v34, v75);
    outlined init with take of Any(v35, v59);
    v41 = v76;
    v42 = v76[5];
    v43 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey, &type metadata accessor for MetricsKey, &protocol conformance descriptor for MetricsKey);
    v44 = dispatch thunk of Hashable._rawHashValue(seed:)(v42, v40, v43) & ~(-1 << *(v41 + 32));
    v45 = v44 >> 6;
    v46 = ~v41[(v44 >> 6) + 8] >> v44 << v44;
    if (v46)
    {
      _BitScanForward64(&v46, v46);
      v47 = v46 | v44 & 0xFFFFFFFFFFFFFFC0;
      v48 = v73;
    }

    else
    {
      v49 = (63 - (-1 << *(v41 + 32))) >> 6;
      v50 = 0;
      v48 = v73;
      do
      {
        v51 = v45 + 1;
        if (v45 + 1 == v49 && (v50 & 1) != 0)
        {
          BUG();
        }

        v45 = 0;
        if (v51 != v49)
        {
          v45 = v51;
        }

        v50 |= v51 == v49;
        v52 = v76[v45 + 8];
      }

      while (v52 == -1);
      v53 = ~v52;
      v54 = 64;
      if (v53)
      {
        _BitScanForward64(&v54, v53);
      }

      v47 = v54 + (v45 << 6);
    }

    v55 = v76;
    v76[(v47 >> 6) + 8] |= 1 << v47;
    j = (v48 - 1) & v48;
    v71((v55[6] + v47 * v61), v72, v75);
    outlined init with take of Any(v59, (v55[7] + 32 * v47));
    ++v55[2];
  }

LABEL_41:
  v57 = v76;

  outlined consume of [String : [Double]].Iterator._Variant(v74);
  return v57;
}

{
  v40 = a1;
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<MLProgress.Metric, Any>);
    v2 = static _DictionaryStorage.allocate(capacity:)(v1);
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = -1 << *(v40 + 32);
  v42 = v40 + 64;
  v4 = ~(-1 << -v3);
  if (-v3 >= 64)
  {
    v4 = -1;
  }

  i = *(v40 + 64) & v4;
  v39 = v3;
  v41 = (63 - v3) >> 6;
  v34 = "validationRootMeanSquaredError" + 0x8000000000000000;
  v35 = "rror" + 0x8000000000000000;
  v36 = "stylizedImageURL" + 0x8000000000000000;
  v37 = "validationAccuracy" + 0x8000000000000000;
  v38 = "accuracy" + 0x8000000000000000;

  v6 = 0;
  v32 = &type metadata for Any + 8;
  v33 = 0x7FFFFFFFFFFFFFC0;
  while (1)
  {
    if (i)
    {
      v7 = v6;
      goto LABEL_23;
    }

    v8 = v6 + 1;
    if (__OFADD__(1, v6))
    {
      BUG();
    }

    if (v8 >= v41)
    {
      break;
    }

    i = *(v42 + 8 * v8);
    if (i)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = v6 + 2;
      if (v6 + 2 >= v41)
      {
        break;
      }

      i = *(v42 + 8 * v8 + 8);
      if (!i)
      {
        v7 = v6 + 3;
        if (v6 + 3 >= v41)
        {
          break;
        }

        i = *(v42 + 8 * v8 + 16);
        if (!i)
        {
          v7 = v6 + 4;
          if (v6 + 4 >= v41)
          {
            break;
          }

          i = *(v42 + 8 * v8 + 24);
          if (!i)
          {
            v7 = v6 + 5;
            if (v6 + 5 >= v41)
            {
              break;
            }

            i = *(v42 + 8 * v8 + 32);
            if (!i)
            {
              v7 = v6 + 6;
              if (v6 + 6 >= v41)
              {
                break;
              }

              i = *(v42 + 8 * v8 + 40);
              if (!i)
              {
                v7 = v6 + 7;
                if (v6 + 7 >= v41)
                {
                  break;
                }

                for (i = *(v42 + 8 * v8 + 48); !i; i = *(v42 + 8 * v7))
                {
                  if (__OFADD__(1, v7++))
                  {
                    BUG();
                  }

                  if (v7 >= v41)
                  {
                    goto LABEL_53;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_23:
    _BitScanForward64(&v9, i);
    v31 = v7;
    v10 = v9 | (v7 << 6);
    v11 = *(*(v40 + 56) + 8 * v10);
    LOBYTE(v29[0]) = *(*(v40 + 48) + v10);
    v30 = v11;
    swift_dynamicCast(v29 + 8, &v30, &type metadata for Double, v32, 7);
    v27[0] = v29[0];
    outlined init with take of Any((v29 + 8), v28);
    v12 = v27[0];
    outlined init with take of Any(v28, v29);
    Hasher.init(_seed:)(v2[5]);
    switch(v12)
    {
      case 0:
        v13 = 1936945004;
        v14 = 0;
        break;
      case 1:
        v13 = 0x4C746E65746E6F63;
        v14 = 111;
        break;
      case 2:
        v13 = 0x736F4C656C797473;
        v14 = 115;
        break;
      case 3:
        v13 = 0x7963617275636361;
        v14 = 0;
        break;
      case 4:
        v13 = 0x69746164696C6176;
        v14 = 111;
        break;
      case 5:
        v13 = 0xD000000000000012;
        v14 = v38;
        break;
      case 6:
        v13 = 0xD000000000000010;
        v14 = v37;
        break;
      case 7:
        v13 = 0xD000000000000014;
        v14 = v36;
        break;
      case 8:
        v13 = 0x456D756D6978616DLL;
        v14 = 114;
        break;
      case 9:
        v13 = 0xD00000000000001ELL;
        v14 = v35;
        break;
      case 10:
        v13 = 0xD000000000000016;
        v14 = v34;
        break;
    }

    String.hash(into:)(v27, v13);
    v14;
    v15 = Hasher._finalize()() & ~(-1 << *(v2 + 32));
    v16 = v15 >> 6;
    v17 = ~v2[(v15 >> 6) + 8] >> v15 << v15;
    if (v17)
    {
      _BitScanForward64(&v17, v17);
      v18 = v17 | v33 & v15;
    }

    else
    {
      v19 = (63 - (-1 << *(v2 + 32))) >> 6;
      v20 = 0;
      do
      {
        v21 = v16 + 1;
        if (v16 + 1 == v19 && (v20 & 1) != 0)
        {
          BUG();
        }

        v16 = 0;
        if (v21 != v19)
        {
          v16 = v21;
        }

        v20 |= v21 == v19;
        v22 = v2[v16 + 8];
      }

      while (v22 == -1);
      v23 = ~v22;
      v24 = 64;
      if (v23)
      {
        _BitScanForward64(&v24, v23);
      }

      v18 = v24 + (v16 << 6);
    }

    i &= i - 1;
    v2[(v18 >> 6) + 8] |= 1 << v18;
    *(v2[6] + v18) = v12;
    outlined init with take of Any(v29, (v2[7] + 32 * v18));
    ++v2[2];
    v6 = v31;
  }

LABEL_53:

  outlined consume of [String : [Double]].Iterator._Variant(v40);
  return v2;
}

{
  v42 = a1;
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<AnyHashable, Any>);
    v2 = static _DictionaryStorage.allocate(capacity:)(v1);
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = -1 << *(v42 + 32);
  v44 = v42 + 64;
  v4 = ~(-1 << -v3);
  if (-v3 >= 64)
  {
    v4 = -1;
  }

  j = *(v42 + 64) & v4;
  v41 = v3;
  v43 = (63 - v3) >> 6;

  for (i = 0; ; i = v40)
  {
    if (j)
    {
      v7 = i;
      goto LABEL_23;
    }

    v8 = i + 1;
    if (__OFADD__(1, i))
    {
      BUG();
    }

    if (v8 >= v43)
    {
      break;
    }

    j = *(v44 + 8 * v8);
    if (j)
    {
      v7 = i + 1;
    }

    else
    {
      v7 = i + 2;
      if (i + 2 >= v43)
      {
        break;
      }

      j = *(v44 + 8 * v8 + 8);
      if (!j)
      {
        v7 = i + 3;
        if (i + 3 >= v43)
        {
          break;
        }

        j = *(v44 + 8 * v8 + 16);
        if (!j)
        {
          v7 = i + 4;
          if (i + 4 >= v43)
          {
            break;
          }

          j = *(v44 + 8 * v8 + 24);
          if (!j)
          {
            v7 = i + 5;
            if (i + 5 >= v43)
            {
              break;
            }

            j = *(v44 + 8 * v8 + 32);
            if (!j)
            {
              v7 = i + 6;
              if (i + 6 >= v43)
              {
                break;
              }

              j = *(v44 + 8 * v8 + 40);
              if (!j)
              {
                v7 = i + 7;
                if (i + 7 >= v43)
                {
                  break;
                }

                for (j = *(v44 + 8 * v8 + 48); !j; j = *(v44 + 8 * v7))
                {
                  if (__OFADD__(1, v7++))
                  {
                    BUG();
                  }

                  if (v7 >= v43)
                  {
                    goto LABEL_41;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_23:
    _BitScanForward64(&v9, j);
    v40 = v7;
    v10 = v9 | (v7 << 6);
    v11 = *(v42 + 48);
    v12 = *(v11 + 16 * v10 + 8);
    *&v34 = *(v11 + 16 * v10);
    *(&v34 + 1) = v12;
    outlined init with copy of Any(*(v42 + 56) + 32 * v10, v35);
    v33[1] = v35[1];
    v33[0] = v35[0];
    *&v32[5] = v34;
    v28[0] = v34;

    swift_dynamicCast(&v36, v28, &type metadata for String, &type metadata for AnyHashable, 7);
    outlined init with take of Any(v33, v39);
    v29 = v36;
    v30 = v37;
    v31 = v38;
    outlined init with take of Any(v39, v32);
    v36 = v29;
    v37 = v30;
    v38 = v31;
    outlined init with take of Any(v32, v28);
    v13 = AnyHashable._rawHashValue(seed:)(v2[5]) & ~(-1 << *(v2 + 32));
    v14 = v13 >> 6;
    v15 = ~v2[(v13 >> 6) + 8] >> v13 << v13;
    if (v15)
    {
      _BitScanForward64(&v15, v15);
      v16 = v15 | v13 & 0xFFFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = (63 - (-1 << *(v2 + 32))) >> 6;
      v18 = 0;
      do
      {
        v19 = v14 + 1;
        if (v14 + 1 == v17 && (v18 & 1) != 0)
        {
          BUG();
        }

        v14 = 0;
        if (v19 != v17)
        {
          v14 = v19;
        }

        v18 |= v19 == v17;
        v20 = v2[v14 + 8];
      }

      while (v20 == -1);
      v21 = ~v20;
      v22 = 64;
      if (v21)
      {
        _BitScanForward64(&v22, v21);
      }

      v16 = v22 + (v14 << 6);
    }

    v2[(v16 >> 6) + 8] |= 1 << v16;
    j &= j - 1;
    v23 = v2[6];
    v24 = 40 * v16;
    *(v23 + v24 + 32) = v38;
    v25 = v36;
    *(v23 + v24 + 16) = v37;
    *(v23 + v24) = v25;
    outlined init with take of Any(v28, (v2[7] + 32 * v16));
    ++v2[2];
  }

LABEL_41:

  outlined consume of [String : [Double]].Iterator._Variant(v42);
  return v2;
}

{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, [NSNumber]>);
    v3 = static _DictionaryStorage.allocate(capacity:)(v2);
  }

  else
  {
    v3 = _swiftEmptyDictionarySingleton;
  }

  v4 = -1 << *(a1 + 32);
  v5 = ~(-1 << -v4);
  if (-v4 >= 64)
  {
    v5 = -1;
  }

  v6 = *(a1 + 64) & v5;
  v44 = a1 + 64;
  v39 = v4;
  v43 = (63 - v4) >> 6;

  v7 = 0;
  v38 = a1;
  while (1)
  {
    if (v6)
    {
      v8 = v7;
      goto LABEL_29;
    }

    v9 = v7 + 1;
    if (__OFADD__(1, v7))
    {
      BUG();
    }

    if (v9 >= v43)
    {
      goto LABEL_34;
    }

    v6 = *(v44 + 8 * v9);
    if (v6)
    {
      v8 = v7 + 1;
      goto LABEL_29;
    }

    v8 = v7 + 2;
    if (v7 + 2 >= v43)
    {
      goto LABEL_34;
    }

    v6 = *(v44 + 8 * v9 + 8);
    if (!v6)
    {
      v8 = v7 + 3;
      if (v7 + 3 >= v43)
      {
        goto LABEL_34;
      }

      v6 = *(v44 + 8 * v9 + 16);
      if (!v6)
      {
        v8 = v7 + 4;
        if (v7 + 4 >= v43)
        {
          goto LABEL_34;
        }

        v6 = *(v44 + 8 * v9 + 24);
        if (!v6)
        {
          v8 = v7 + 5;
          if (v7 + 5 >= v43)
          {
            goto LABEL_34;
          }

          v6 = *(v44 + 8 * v9 + 32);
          if (!v6)
          {
            v8 = v7 + 6;
            if (v7 + 6 >= v43)
            {
              goto LABEL_34;
            }

            v6 = *(v44 + 8 * v9 + 40);
            if (!v6)
            {
              v8 = v7 + 7;
              if (v7 + 7 >= v43)
              {
                goto LABEL_34;
              }

              v6 = *(v44 + 8 * v9 + 48);
              if (!v6)
              {
                break;
              }
            }
          }
        }
      }
    }

LABEL_29:
    v40 = v8;
    _BitScanForward64(&v11, v6);
    v42 = v6 & (v6 - 1);
    v12 = v11 | (v8 << 6);
    v13 = *(*(v1 + 56) + 8 * v12);
    v12 *= 16;
    v14 = *(v1 + 48);
    v15 = *(v14 + v12);
    v16 = *(v14 + v12 + 8);
    v36 = v13;

    v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
    v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [NSNumber]);
    v19 = v17;
    v20 = v15;
    swift_dynamicCast(&v35, &v36, v19, v18, 7);
    v41 = v35;
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
    v22 = v21;
    if (v23)
    {
      v24 = v3[6];
      v37 = v20;
      v25 = 16 * v21;
      *(v24 + 16 * v21 + 8);
      *(v24 + 16 * v22) = v37;
      *(v24 + v25 + 8) = v16;
      v26 = v3[7];
      *(v26 + 8 * v22);
      *(v26 + 8 * v22) = v41;
      v1 = v38;
      v7 = v40;
      v6 = v42;
    }

    else
    {
      v27 = v41;
      v28 = v40;
      if (v3[2] >= v3[3])
      {
        BUG();
      }

      v3[(v21 >> 6) + 8] |= 1 << v21;
      v29 = v3[6];
      v30 = 16 * v22;
      *(v29 + v30) = v20;
      *(v29 + v30 + 8) = v16;
      *(v3[7] + 8 * v22) = v27;
      v31 = v3[2];
      v32 = __OFADD__(1, v31);
      v33 = v31 + 1;
      if (v32)
      {
        BUG();
      }

      v3[2] = v33;
      v7 = v28;
      v6 = v42;
    }
  }

  v10 = v7 + 8;
  while (v10 < v43)
  {
    v6 = *(v1 + 8 * v10++ + 64);
    if (v6)
    {
      v8 = v10 - 1;
      goto LABEL_29;
    }
  }

LABEL_34:
  outlined consume of [String : [Double]].Iterator._Variant(v1);
  return v3;
}

char MLProgress.phase.setter(char *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

uint64_t MLProgress.metrics.setter(uint64_t a1)
{
  result = *(v1 + 40);
  *(v1 + 40) = a1;
  return result;
}

uint64_t MLProgress.init(phase:)(char *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  result = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v4);
  *v2 = 0;
  *(v2 + 8) = v3;
  *(v2 + 16) = 0;
  *(v2 + 32) = 1;
  *(v2 + 40) = result;
  return result;
}

void MLProgress.init(progress:)(id a1)
{
  v2 = a1;
  v3 = v1;
  v4 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v66 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v4);
  v5 = [a1 userInfo];
  v6 = v5;
  v59 = type metadata accessor for NSProgressUserInfoKey(0);
  v65 = &type metadata for Any + 8;
  v60 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type NSProgressUserInfoKey and conformance NSProgressUserInfoKey, type metadata accessor for NSProgressUserInfoKey, &protocol conformance descriptor for NSProgressUserInfoKey);
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(v6, v59, &type metadata for Any + 8, v60);

  if (one-time initialization token for elapsedTimeKey != -1)
  {
    swift_once(&one-time initialization token for elapsedTimeKey, one-time initialization function for elapsedTimeKey);
  }

  v8 = static MLProgress.elapsedTimeKey;
  specialized Dictionary.subscript.getter(v8, v7);

  v7;
  if (!*(&v63 + 1))
  {
    goto LABEL_18;
  }

  v9 = v65;
  if (!swift_dynamicCast(v55, &v62, v65, &type metadata for Double, 6))
  {
    goto LABEL_19;
  }

  v51 = *&v55[0];
  v10 = [a1 userInfo];
  v11 = v10;
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(v11, v59, v9, v60);

  if (one-time initialization token for phaseKey != -1)
  {
    swift_once(&one-time initialization token for phaseKey, one-time initialization function for phaseKey);
  }

  v13 = static MLProgress.phaseKey;
  specialized Dictionary.subscript.getter(v13, v12);

  v12;
  if (!*(&v63 + 1))
  {
    goto LABEL_18;
  }

  v14 = v65;
  if (!swift_dynamicCast(v55, &v62, v65, &type metadata for MLPhase, 6))
  {
LABEL_19:
    v66;

    goto LABEL_20;
  }

  v52 = LOBYTE(v55[0]);
  v15 = [a1 userInfo];
  v16 = v15;
  v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(v16, v59, v14, v60);

  if (one-time initialization token for itemCountKey != -1)
  {
    swift_once(&one-time initialization token for itemCountKey, one-time initialization function for itemCountKey);
  }

  v18 = static MLProgress.itemCountKey;
  specialized Dictionary.subscript.getter(v18, v17);

  v17;
  if (!*(&v63 + 1))
  {
LABEL_18:

    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v62, &demangling cache variable for type metadata for Any?);
    v66;
LABEL_20:
    *(v3 + 32) = 0;
    *(v3 + 16) = 0;
    *v3 = 0;
    return;
  }

  v19 = v65;
  if (!swift_dynamicCast(v55, &v62, v65, &type metadata for Int, 6))
  {
    goto LABEL_19;
  }

  v53 = *&v55[0];
  v20 = [a1 userInfo];
  v21 = v20;
  v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(v21, v59, v19, v60);

  if (one-time initialization token for totalItemCountKey != -1)
  {
    swift_once(&one-time initialization token for totalItemCountKey, one-time initialization function for totalItemCountKey);
  }

  v23 = static MLProgress.totalItemCountKey;
  specialized Dictionary.subscript.getter(v23, v22);

  v22;
  if (*(&v63 + 1))
  {
    v24 = swift_dynamicCast(v55, &v62, v65, &type metadata for Int, 6);
    if (v24)
    {
      v25 = *&v55[0];
    }

    else
    {
      v25 = 0;
    }

    v26 = v24 ^ 1;
  }

  else
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v62, &demangling cache variable for type metadata for Any?);
    v26 = 1;
    v25 = 0;
  }

  v67 = v26;
  v54 = v25;
  v27 = 0;
  v56 = v3;
  v61 = a1;
  do
  {
    v28 = *(&outlined read-only object #0 of static MLProgress.Metric.allCases.getter + v27 + 32);
    if (v28 != 6 || type metadata accessor for URL(0) == &type metadata for Double)
    {
      v29 = [v2 userInfo];
      v30 = v29;
      v31 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(v30, v59, v65, v60);

      switch(v28)
      {
        case 0:
          v32 = &static MLProgress.lossKey;
          if (one-time initialization token for lossKey != -1)
          {
            swift_once(&one-time initialization token for lossKey, one-time initialization function for lossKey);
            v32 = &static MLProgress.lossKey;
          }

          break;
        case 1:
          v32 = &static MLProgress.contentLossKey;
          if (one-time initialization token for contentLossKey != -1)
          {
            swift_once(&one-time initialization token for contentLossKey, one-time initialization function for contentLossKey);
            v32 = &static MLProgress.contentLossKey;
          }

          break;
        case 2:
          v32 = &static MLProgress.styleLossKey;
          if (one-time initialization token for styleLossKey != -1)
          {
            swift_once(&one-time initialization token for styleLossKey, one-time initialization function for styleLossKey);
            v32 = &static MLProgress.styleLossKey;
          }

          break;
        case 3:
          v32 = &static MLProgress.accuracyKey;
          if (one-time initialization token for accuracyKey != -1)
          {
            swift_once(&one-time initialization token for accuracyKey, one-time initialization function for accuracyKey);
            v32 = &static MLProgress.accuracyKey;
          }

          break;
        case 4:
          v32 = &static MLProgress.validationLossKey;
          if (one-time initialization token for validationLossKey != -1)
          {
            swift_once(&one-time initialization token for validationLossKey, one-time initialization function for validationLossKey);
            v32 = &static MLProgress.validationLossKey;
          }

          break;
        case 5:
          v32 = &static MLProgress.validationAccuracyKey;
          if (one-time initialization token for validationAccuracyKey != -1)
          {
            swift_once(&one-time initialization token for validationAccuracyKey, one-time initialization function for validationAccuracyKey);
            v32 = &static MLProgress.validationAccuracyKey;
          }

          break;
        case 6:
          v32 = &static MLProgress.stylizedImageKey;
          if (one-time initialization token for stylizedImageKey != -1)
          {
            swift_once(&one-time initialization token for stylizedImageKey, one-time initialization function for stylizedImageKey);
            v32 = &static MLProgress.stylizedImageKey;
          }

          break;
        case 7:
          v32 = &static MLProgress.rootMeanSquaredErrorKey;
          if (one-time initialization token for rootMeanSquaredErrorKey != -1)
          {
            swift_once(&one-time initialization token for rootMeanSquaredErrorKey, one-time initialization function for rootMeanSquaredErrorKey);
            v32 = &static MLProgress.rootMeanSquaredErrorKey;
          }

          break;
        case 8:
          v32 = &static MLProgress.maximumErrorKey;
          if (one-time initialization token for maximumErrorKey != -1)
          {
            swift_once(&one-time initialization token for maximumErrorKey, one-time initialization function for maximumErrorKey);
            v32 = &static MLProgress.maximumErrorKey;
          }

          break;
        case 9:
          v32 = &static MLProgress.validationRootMeanSquaredErrorKey;
          if (one-time initialization token for validationRootMeanSquaredErrorKey != -1)
          {
            swift_once(&one-time initialization token for validationRootMeanSquaredErrorKey, one-time initialization function for validationRootMeanSquaredErrorKey);
            v32 = &static MLProgress.validationRootMeanSquaredErrorKey;
          }

          break;
        case 10:
          v32 = &static MLProgress.validationMaximumErrorKey;
          if (one-time initialization token for validationMaximumErrorKey != -1)
          {
            swift_once(&one-time initialization token for validationMaximumErrorKey, one-time initialization function for validationMaximumErrorKey);
            v32 = &static MLProgress.validationMaximumErrorKey;
          }

          break;
      }

      v33 = *v32;
      v34 = v33;
      if (*(v31 + 16) && (v35 = specialized __RawDictionaryStorage.find<A>(_:)(v33), (v36 & 1) != 0))
      {
        outlined init with copy of Any(*(v31 + 56) + 32 * v35, &v62);
      }

      else
      {
        v63 = 0;
        v62 = 0;
      }

      v31;
      if (!*(&v63 + 1))
      {
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v62, &demangling cache variable for type metadata for Any?);
LABEL_61:
        v2 = v61;
        goto LABEL_62;
      }

      v64 = v28;
      if (!swift_dynamicCast(v55, &v62, v65, &type metadata for Double, 6))
      {
        goto LABEL_61;
      }

      *(&v63 + 1) = &type metadata for Double;
      *&v62 = *&v55[0];
      outlined init with take of Any(&v62, v55);
      v37 = v66;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v66);
      v58 = v37;
      v57 = v64;
      v39 = specialized __RawDictionaryStorage.find<A>(_:)(v64);
      v68 = v40;
      v41 = (v40 & 1) == 0;
      v42 = __OFADD__(*(v37 + 16), v41);
      v43 = *(v37 + 16) + v41;
      if (v42)
      {
        BUG();
      }

      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<MLProgress.Metric, Any>);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v43))
      {
        v39 = specialized __RawDictionaryStorage.find<A>(_:)(v57);
        LOBYTE(v44) = v44 & 1;
        LOBYTE(v45) = v68;
        v3 = v56;
        if ((v68 & 1) != v44)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLProgress.Metric, v43, v44, v45);
          BUG();
        }

        v2 = v61;
      }

      else
      {
        v3 = v56;
        v2 = v61;
        LOBYTE(v45) = v68;
      }

      v46 = v58;
      v66 = v58;
      if (v45)
      {
        v47 = (*(v58 + 56) + 32 * v39);
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        outlined init with take of Any(v55, v47);
      }

      else
      {
        *(v58 + 8 * (v39 >> 6) + 64) |= 1 << v39;
        *(*(v46 + 48) + v39) = v64;
        outlined init with take of Any(v55, (*(v46 + 56) + 32 * v39));
        v48 = *(v66 + 16);
        v42 = __OFADD__(1, v48);
        v49 = v48 + 1;
        if (v42)
        {
          BUG();
        }

        *(v66 + 16) = v49;
      }
    }

LABEL_62:
    ++v27;
  }

  while (v27 != 11);

  v50 = v67;
  *v3 = v51;
  *(v3 + 8) = v52;
  *(v3 + 16) = v53;
  *(v3 + 24) = v54;
  *(v3 + 32) = v50 & 1;
  *(v3 + 40) = v66;
}

CreateML::MLProgress::Metric_optional __swiftcall MLProgress.Metric.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MLProgress.Metric.init(rawValue:), rawValue);
  rawValue._object;
  result.value = CreateML_MLProgress_Metric_unknownDefault;
  if (v3 < 0xB)
  {
    result.value = v3;
  }

  v2->value = result.value;
  return result;
}

unint64_t MLProgress.Metric.rawValue.getter()
{
  switch(*v0)
  {
    case 0:
      result = 1936945004;
      break;
    case 1:
      result = 0x4C746E65746E6F63;
      break;
    case 2:
      result = 0x736F4C656C797473;
      break;
    case 3:
      result = 0x7963617275636361;
      break;
    case 4:
      result = 0x69746164696C6176;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x456D756D6978616DLL;
      break;
    case 9:
      result = 0xD00000000000001ELL;
      break;
    case 0xA:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MLProgress.Metric()
{
  v1 = v0;
  result = MLProgress.Metric.rawValue.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

CreateML::MLProgress::CodingKeys_optional __swiftcall MLProgress.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  if (stringValue._countAndFlagsBits ^ 0x5464657370616C65 | stringValue._object ^ 0xEB00000000656D69 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x5464657370616C65, 0xEB00000000656D69, stringValue._countAndFlagsBits, stringValue._object, 0) & 1) == 0)
  {
    if (stringValue._countAndFlagsBits ^ 0x6573616870 | stringValue._object ^ 0xE500000000000000 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x6573616870, 0xE500000000000000, stringValue._countAndFlagsBits, stringValue._object, 0) & 1) == 0)
    {
      if (stringValue._countAndFlagsBits ^ 0x6F72506573616870 | stringValue._object ^ 0xED00007373657267 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x6F72506573616870, 0xED00007373657267, stringValue._countAndFlagsBits, stringValue._object, 0) & 1) == 0)
      {
        if (stringValue._countAndFlagsBits ^ 0x7363697274656DLL | stringValue._object ^ 0xE700000000000000)
        {
          v2 = _stringCompareWithSmolCheck(_:_:expecting:)(0x7363697274656DLL, 0xE700000000000000, stringValue._countAndFlagsBits, stringValue._object, 0);
          stringValue._object;
          return (4 - (v2 & 1));
        }

        else
        {
          stringValue._object;
          return 3;
        }
      }

      else
      {
        stringValue._object;
        return 2;
      }
    }

    else
    {
      stringValue._object;
      return 1;
    }
  }

  else
  {
    stringValue._object;
    return 0;
  }
}

uint64_t MLProgress.CodingKeys.stringValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      result = 0x5464657370616C65;
      break;
    case 1:
      result = 0x6573616870;
      break;
    case 2:
      result = 0x6F72506573616870;
      break;
    case 3:
      result = 0x7363697274656DLL;
      break;
  }

  return result;
}

CreateML::MLProgress::CodingKeys_optional protocol witness for CodingKey.init(stringValue:) in conformance MLProgress.CodingKeys(Swift::String a1)
{
  v2 = v1;
  result.value = MLProgress.CodingKeys.init(stringValue:)(a1).value;
  v2->value = result.value;
  return result;
}

uint64_t MLProgress.init(from:)(void *a1, double a2)
{
  v22 = v3;
  v21 = v2;
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedDecodingContainer<MLProgress.CodingKeys>);
  v25 = *(v24 - 8);
  v4 = *(v25 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v7);
  v8 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v8);
  v9 = lazy protocol witness table accessor for type MLProgress.CodingKeys and conformance MLProgress.CodingKeys();
  v29 = &v20;
  v10 = v26;
  dispatch thunk of Decoder.container<A>(keyedBy:)(&type metadata for MLProgress.CodingKeys, &type metadata for MLProgress.CodingKeys, v9, v8, v23);
  if (v3 == 0.0)
  {
    v27 = 0;
    KeyedDecodingContainer.decode(_:forKey:)(&v27, v24);
    v22 = a2;
    v28 = 1;
    v11 = lazy protocol witness table accessor for type MLPhase and conformance MLPhase();
    v12 = v24;
    KeyedDecodingContainer.decode<A>(_:forKey:)(&type metadata for MLPhase, &v28, v24, &type metadata for MLPhase, v11);
    LOBYTE(v23) = v30;
    v14 = v12;
    v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLProgress.Metric : Double]);
    v31[0] = 3;
    v16 = lazy protocol witness table accessor for type [MLProgress.Metric : Double] and conformance <> [A : B](&lazy protocol witness table cache variable for type [MLProgress.Metric : Double] and conformance <> [A : B], lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric, &protocol witness table for Double, &protocol conformance descriptor for <> [A : B]);
    KeyedDecodingContainer.decode<A>(_:forKey:)(v15, v31, v14, v15, v16);
    LOBYTE(v15) = v20;
    v17 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v20);
    v15;
    (*(v25 + 8))(v29, v24);

    v26;
    v18 = v21;
    *v21 = v22;
    *(v18 + 8) = v23;
    *(v18 + 1) = 0;
    *(v18 + 32) = 1;
    *(v18 + 5) = v17;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v19 = v17;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v19 = v10;
  }

  return v19;
}

uint64_t MLProgress.encode(to:)(void *a1)
{
  v19 = v1;
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedEncodingContainer<MLProgress.CodingKeys>);
  v18 = *(v14 - 8);
  v3 = *(v18 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v15 = *v2;
  v24 = *(v2 + 8);
  v17 = *(v2 + 40);
  v6 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  v7 = lazy protocol witness table accessor for type MLProgress.CodingKeys and conformance MLProgress.CodingKeys();
  v8 = v14;
  dispatch thunk of Encoder.container<A>(keyedBy:)(&type metadata for MLProgress.CodingKeys, &type metadata for MLProgress.CodingKeys, v7, v6, v16);
  v20 = 0;
  KeyedEncodingContainer.encode(_:forKey:)(&v20, v14, v15);
  if (v1)
  {
    return (*(v18 + 8))(&v13, v14);
  }

  v21 = v24;
  v22 = 1;
  v10 = lazy protocol witness table accessor for type MLPhase and conformance MLPhase();
  KeyedEncodingContainer.encode<A>(_:forKey:)(&v21, &v22, v14, &type metadata for MLPhase, v10);
  v19 = specialized Dictionary.compactMapValues<A>(_:)(v17);
  v13 = v19;
  v23 = 3;
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLProgress.Metric : Double]);
  v12 = lazy protocol witness table accessor for type [MLProgress.Metric : Double] and conformance <> [A : B](&lazy protocol witness table cache variable for type [MLProgress.Metric : Double] and conformance <> [A : B], lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric, &protocol witness table for Double, &protocol conformance descriptor for <> [A : B]);
  KeyedEncodingContainer.encode<A>(_:forKey:)(&v13, &v23, v8, v11, v12);
  (*(v18 + 8))(&v13, v8);
  return v19;
}

NSString one-time initialization function for elapsedTimeKey()
{
  result = String._bridgeToObjectiveC()();
  static MLProgress.elapsedTimeKey = result;
  return result;
}

NSString one-time initialization function for phaseKey()
{
  result = String._bridgeToObjectiveC()();
  static MLProgress.phaseKey = result;
  return result;
}

NSString one-time initialization function for itemCountKey()
{
  result = String._bridgeToObjectiveC()();
  static MLProgress.itemCountKey = result;
  return result;
}

NSString one-time initialization function for totalItemCountKey()
{
  result = String._bridgeToObjectiveC()();
  static MLProgress.totalItemCountKey = result;
  return result;
}

NSString one-time initialization function for lossKey()
{
  result = String._bridgeToObjectiveC()();
  static MLProgress.lossKey = result;
  return result;
}

NSString one-time initialization function for contentLossKey()
{
  result = String._bridgeToObjectiveC()();
  static MLProgress.contentLossKey = result;
  return result;
}

NSString one-time initialization function for styleLossKey()
{
  result = String._bridgeToObjectiveC()();
  static MLProgress.styleLossKey = result;
  return result;
}

NSString one-time initialization function for accuracyKey()
{
  result = String._bridgeToObjectiveC()();
  static MLProgress.accuracyKey = result;
  return result;
}

NSString one-time initialization function for validationLossKey()
{
  result = String._bridgeToObjectiveC()();
  static MLProgress.validationLossKey = result;
  return result;
}

NSString one-time initialization function for validationAccuracyKey()
{
  result = String._bridgeToObjectiveC()();
  static MLProgress.validationAccuracyKey = result;
  return result;
}

NSString one-time initialization function for stylizedImageKey()
{
  result = String._bridgeToObjectiveC()();
  static MLProgress.stylizedImageKey = result;
  return result;
}

NSString one-time initialization function for rootMeanSquaredErrorKey()
{
  result = String._bridgeToObjectiveC()();
  static MLProgress.rootMeanSquaredErrorKey = result;
  return result;
}

NSString one-time initialization function for maximumErrorKey()
{
  result = String._bridgeToObjectiveC()();
  static MLProgress.maximumErrorKey = result;
  return result;
}

NSString one-time initialization function for validationRootMeanSquaredErrorKey()
{
  result = String._bridgeToObjectiveC()();
  static MLProgress.validationRootMeanSquaredErrorKey = result;
  return result;
}

NSString one-time initialization function for validationMaximumErrorKey()
{
  result = String._bridgeToObjectiveC()();
  static MLProgress.validationMaximumErrorKey = result;
  return result;
}

id static MLProgress.elapsedTimeKey.getter(void *a1, id *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once(a1, a3);
  }

  return *a2;
}

uint64_t lazy protocol witness table accessor for type MLProgress.CodingKeys and conformance MLProgress.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLProgress.CodingKeys and conformance MLProgress.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLProgress.CodingKeys and conformance MLProgress.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLProgress.CodingKeys, &type metadata for MLProgress.CodingKeys);
    lazy protocol witness table cache variable for type MLProgress.CodingKeys and conformance MLProgress.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLProgress.CodingKeys and conformance MLProgress.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLProgress.CodingKeys and conformance MLProgress.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLProgress.CodingKeys, &type metadata for MLProgress.CodingKeys);
    lazy protocol witness table cache variable for type MLProgress.CodingKeys and conformance MLProgress.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLProgress.CodingKeys and conformance MLProgress.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLProgress.CodingKeys and conformance MLProgress.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLProgress.CodingKeys, &type metadata for MLProgress.CodingKeys);
    lazy protocol witness table cache variable for type MLProgress.CodingKeys and conformance MLProgress.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLProgress.CodingKeys and conformance MLProgress.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLProgress.CodingKeys and conformance MLProgress.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLProgress.CodingKeys, &type metadata for MLProgress.CodingKeys);
    lazy protocol witness table cache variable for type MLProgress.CodingKeys and conformance MLProgress.CodingKeys = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [MLProgress.Metric] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [MLProgress.Metric] and conformance [A];
  if (!lazy protocol witness table cache variable for type [MLProgress.Metric] and conformance [A])
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [MLProgress.Metric]);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v1);
    lazy protocol witness table cache variable for type [MLProgress.Metric] and conformance [A] = result;
  }

  return result;
}

uint64_t initializeWithCopy for MLProgress(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithCopy for MLProgress(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v2 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  v2;
  return a1;
}

_OWORD *__swift_memcpy48_8(_OWORD *a1, __int128 *a2)
{
  result = a1;
  v3 = *a2;
  v4 = a2[1];
  a1[2] = a2[2];
  a1[1] = v4;
  *a1 = v3;
  return result;
}

uint64_t assignWithTake for MLProgress(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  v3;
  return a1;
}

uint64_t getEnumTagSinglePayload for MLProgress(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

void storeEnumTagSinglePayload for MLProgress(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 48) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 48) = 0;
    }

    if (a2)
    {
      *(a1 + 40) = 2 * (a2 - 1);
    }
  }
}

uint64_t getEnumTagSinglePayload for MLProgress.Metric(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 < 0xF6)
    {
      goto LABEL_13;
    }

    v2 = a2 + 10;
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
      v5 = *a1 + (v4 << 8) - 11;
    }

    else
    {
LABEL_13:
      v6 = *a1;
      v7 = v6 - 11;
      v8 = v6 < 0xB;
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

uint64_t storeEnumTagSinglePayload for MLProgress.Metric(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  LODWORD(result) = 0;
  if (a3 >= 0xF6)
  {
    v4 = a3 + 10;
    LODWORD(result) = 1;
    if (v4 >= 0xFF00)
    {
      LODWORD(result) = 2 * (v4 >= 0xFFFF00) + 2;
    }
  }

  if (a2 > 0xF5)
  {
    v5 = a2 - 246;
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
          *a1 = a2 + 10;
        }

        break;
      case 5:
        JUMPOUT(0x145CF8);
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for MLProgress.CodingKeys(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  LODWORD(result) = 0;
  if (a3 >= 0xFD)
  {
    v4 = a3 + 3;
    LODWORD(result) = 1;
    if (v4 >= 0xFF00)
    {
      LODWORD(result) = 2 * (v4 >= 0xFFFF00) + 2;
    }
  }

  if (a2 > 0xFC)
  {
    v5 = a2 - 253;
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
          *a1 = a2 + 3;
        }

        break;
      case 5:
        JUMPOUT(0x145DD0);
    }
  }

  return result;
}

uint64_t outlined init with take of (key: MetricsKey, value: Double)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: MetricsKey, value: Double));
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8NSNumberCG_Sis5NeverOTg5074_s8CreateML24MLFewShotSoundClassifierV5write2toy10Foundation3URLV_tKFSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  if ((a1 & 0x4000000000000001) != 0)
  {
    v12 = a1 & 0xFFFFFFFFFFFFF8;
    if (a1)
    {
      v12 = a1;
    }

    v2 = _CocoaArrayWrapper.endIndex.getter(v12);
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFF8));
  }

  if (v2)
  {
    v3 = 0;
    if (v2 > 0)
    {
      v3 = v2;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    if (v2 < 0)
    {
      BUG();
    }

    v4 = 0;
    for (i = 0; i != v2; v4 = i)
    {
      if (__OFADD__(1, i++))
      {
        BUG();
      }

      if ((a1 & 0xC000000000000003) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)(v4);
      }

      else
      {
        v7 = *(a1 + 8 * v4 + 32);
      }

      v8 = v7;
      v13 = [v7 integerValue];

      v9 = _swiftEmptyArrayStorage[2];
      v10 = v9 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v9)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v9 + 1, 1);
        v10 = v9 + 1;
      }

      _swiftEmptyArrayStorage[2] = v10;
      _swiftEmptyArrayStorage[v9 + 4] = v13;
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t *MLFewShotSoundClassifier.TemporalClassifier.makeConvBlock(name:input:output:layer:)(unsigned __int128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a5;
  v61 = a4;
  v74 = a2;
  *&v73 = a1;
  v7 = *(*(type metadata accessor for NeuralNetwork.Border(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v79 = &v60;
  v10 = *(*(type metadata accessor for NeuralNetwork.Layer.PadParameters.Kind(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v76 = &v60;
  v63 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v13 = *(*(v63 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v69 = &v60;
  v68 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  v78 = *(v68 - 8);
  v16 = *(v78 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v70 = &v60;
  v72 = type metadata accessor for NeuralNetwork.Layer(0);
  v77 = *(v72 - 8);
  v19 = *(v77 + 8);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v62 = &v60;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v64 = &v60;
  v24 = alloca(v19);
  v25 = alloca(v19);
  v66 = &v60;
  v71 = a1;
  *(&v73 + 1) = *(&a1 + 1);

  v26._object = 0xE400000000000000;
  v26._countAndFlagsBits = 1684107359;
  String.append(_:)(v26);
  v75 = v71;
  v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  v28 = swift_allocObject(v27, 48, 7);
  v28[2] = 1;
  v28[3] = 2;
  v28[4] = v74;
  v28[5] = a3;
  v74 = v27;
  v29 = swift_allocObject(v27, 48, 7);
  *(v29 + 16) = 1;
  *(v29 + 24) = 2;
  v30 = v29;
  v67 = v29;
  v71 = v73;

  v26._countAndFlagsBits = 0x74756F5F6461705FLL;
  v26._object = 0xE800000000000000;
  String.append(_:)(v26);
  *(v30 + 32) = v71;
  v31 = v69;
  outlined init with copy of MLTrainingSessionParameters(a6, v69, type metadata accessor for MLFewShotSoundClassifier.CausalConv1D);
  v32 = v76;
  static NeuralNetwork.Layer.PadParameters.Kind.constant(value:)(0.0);
  v33 = v79;
  NeuralNetwork.Border.init(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)(0, 0, *v31, 0);
  v34 = v70;
  NeuralNetwork.Layer.PadParameters.init(kind:amount:)(v32, v33);
  outlined destroy of MLFewShotSoundClassifier.CausalConv1D(v31);
  v65 = *(v78 + 104);
  v65(v34, enum case for NeuralNetwork.Layer.Kind.pad(_:), v68);
  v35 = v66;
  NeuralNetwork.Layer.init(name:inputNames:outputNames:kind:)(v75, *(&v75 + 1), v28, v67, v34);
  v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
  v37 = v36[2];
  if (v36[3] >> 1 <= v37)
  {
    v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v36[3] >= 2, v37 + 1, 1, v36);
  }

  v79 = v36;
  v36[2] = v37 + 1;
  v76 = ((*(v77 + 80) + 32) & ~*(v77 + 80));
  v38 = *(v77 + 4);
  v78 = *(v77 + 9);
  v77 = v38;
  v38(v36 + v76 + v78 * v37, v35, v72);
  v39 = v73;
  v71 = v73;
  v40 = *(&v73 + 1);

  v41._countAndFlagsBits = 0x6431766E6F635FLL;
  v41._object = 0xE700000000000000;
  String.append(_:)(v41);
  v75 = v71;
  v42 = v74;
  v43 = swift_allocObject(v74, 48, 7);
  *(v43 + 16) = 1;
  *(v43 + 24) = 2;
  *&v71 = v39;
  *(&v71 + 1) = v40;

  v41._countAndFlagsBits = 0x74756F5F6461705FLL;
  v41._object = 0xE800000000000000;
  String.append(_:)(v41);
  *(v43 + 32) = v71;
  v44 = swift_allocObject(v42, 48, 7);
  *(v44 + 16) = 1;
  *(v44 + 24) = 2;
  *&v71 = v39;
  *(&v71 + 1) = v40;

  v41._countAndFlagsBits = 0x756F5F766E6F635FLL;
  v41._object = 0xE900000000000074;
  String.append(_:)(v41);
  *(v44 + 32) = v71;
  v45 = v69;
  outlined init with copy of MLTrainingSessionParameters(a6, v69, type metadata accessor for MLFewShotSoundClassifier.CausalConv1D);
  v46 = v70;
  NeuralNetwork.Layer.ConvolutionParameters.init(from:)(v45);
  v65(v46, enum case for NeuralNetwork.Layer.Kind.convolution(_:), v68);
  v47 = v64;
  v48 = v46;
  v49 = v79;
  NeuralNetwork.Layer.init(name:inputNames:outputNames:kind:)(v75, *(&v75 + 1), v43, v44, v48);
  v50 = v49[2];
  if (v49[3] >> 1 <= v50)
  {
    v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v49[3] >= 2, v50 + 1, 1, v49);
  }

  v79 = v49;
  v49[2] = v50 + 1;
  v77(&v76[v49 + v78 * v50], v47, v72);
  v53 = v73;
  v52 = v53 >> 64;
  v51 = v53;
  v71 = v73;

  v54._countAndFlagsBits = 0x746176697463615FLL;
  v54._object = 0xEB000000006E6F69;
  String.append(_:)(v54);
  v55 = v71;
  v71 = __PAIR128__(v52, v51);

  v54._countAndFlagsBits = 0x756F5F766E6F635FLL;
  v54._object = 0xE900000000000074;
  String.append(_:)(v54);
  LOBYTE(v51) = BYTE8(v71);
  v56 = v62;
  static NeuralNetwork.Layer.leakyRelu(name:inputName:outputName:negativeSlope:)(v55, *(&v55 + 1), v71, *(&v71 + 1), v61, v60, *(a6 + *(v63 + 24)));
  SBYTE8(v55);
  LOBYTE(v54._countAndFlagsBits) = v51;
  v57 = v79;
  v54._countAndFlagsBits;
  v58 = v57[2];
  if (v57[3] >> 1 <= v58)
  {
    v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v57[3] >= 2, v58 + 1, 1, v57);
  }

  v57[2] = v58 + 1;
  v77(&v76[v57 + v78 * v58], v56, v72);
  return v57;
}

uint64_t MLFewShotSoundClassifier.TemporalClassifier.largeMarginClassifierLayers(framewiseEmbeddingShape:)(uint64_t a1)
{
  v94 = v1;
  v103 = v2;
  v106 = a1;
  v3 = type metadata accessor for Dense(0);
  v95 = *(v3 - 8);
  v4 = *(v95 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v89 = &v78;
  v82 = type metadata accessor for NeuralNetwork.Layer.SliceParameters.Axis(0);
  v83 = *(v82 - 8);
  v7 = *(v83 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v84 = &v78;
  v79 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  v10 = *(*(v79 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v102 = &v78;
  v100 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  v80 = *(v100 - 8);
  v13 = *(v80 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v99 = &v78;
  v105 = type metadata accessor for NeuralNetwork.Layer(0);
  v107 = *(v105 - 8);
  v16 = *(v107 + 8);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v19 = alloca(v16);
  v20 = alloca(v16);
  v90 = &v78;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v91 = &v78;
  v23 = alloca(v16);
  v24 = alloca(v16);
  v92 = &v78;
  v25 = alloca(v16);
  v26 = alloca(v16);
  v93 = &v78;
  v27 = alloca(v16);
  v28 = alloca(v16);
  v101 = &v78;
  v29 = alloca(v16);
  v30 = alloca(v16);
  v87 = &v78;
  v31 = alloca(v16);
  v32 = alloca(v16);
  v88 = &v78;
  v33 = alloca(v16);
  v34 = alloca(v16);
  v81 = &v78;
  v35 = alloca(v16);
  v36 = alloca(v16);
  v37 = specialized BidirectionalCollection.last.getter(v106);
  if (v38)
  {
    v39 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v39, 0, 0);
    *v40 = 0xD00000000000002CLL;
    *(v40 + 8) = "framewiseEmbedding" + 0x8000000000000000;
    *(v40 + 16) = 0;
    *(v40 + 32) = 0;
    *(v40 + 48) = 2;
    swift_willThrow();
  }

  else
  {
    v96 = v37;
    v98 = v3;
    v97 = &v78;
    v85 = &v78;
    v86 = 0xD00000000000001ALL;
    static NeuralNetwork.Layer.expandDimensions(name:inputName:outputName:axes:)(0x646E61707865, 0xE600000000000000, 0xD000000000000012, ("fixedLengthEmbedding" + 0x8000000000000000), 0xD00000000000001ALL, ("ing shape must not be empty." + 0x8000000000000000), &outlined read-only object #0 of MLFewShotSoundClassifier.TemporalClassifier.largeMarginClassifierLayers(framewiseEmbeddingShape:));
    v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
    v42 = *(v41 + 2);
    v43 = *(v41 + 3);
    if (v43 >> 1 <= v42)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v43 >= 2, v42 + 1, 1, v41);
    }

    *(v41 + 2) = v42 + 1;
    v106 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v44 = *(v107 + 4);
    v104 = *(v107 + 9);
    v107 = v44;
    v44(&v41[v106 + v104 * v42], v85, v105);
    v45 = v81;
    static NeuralNetwork.Layer.transpose(name:inputName:outputName:axes:)(0x736F70736E617274, 0xE900000000000065, v86, ("ing shape must not be empty." + 0x8000000000000000), 0xD00000000000001CLL, ("validationMaximumError" + 0x8000000000000000), &outlined read-only object #1 of MLFewShotSoundClassifier.TemporalClassifier.largeMarginClassifierLayers(framewiseEmbeddingShape:));
    v46 = *(v41 + 2);
    if (*(v41 + 3) >> 1 <= v46)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v41 + 3) >= 2uLL, v46 + 1, 1, v41);
    }

    *(v41 + 2) = v46 + 1;
    v107(&v41[v106 + v104 * v46], v45, v105);
    v47 = v102;
    outlined init with copy of MLTrainingSessionParameters(v103, v102, type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D);
    v48 = v99;
    NeuralNetwork.Layer.ConvolutionParameters.init(from:)(v47);
    v102 = *(v80 + 104);
    (v102)(v48, enum case for NeuralNetwork.Layer.Kind.convolution(_:), v100);
    NeuralNetwork.Layer.init(name:inputNames:outputNames:kind:)(0xD000000000000010, ("expandedFramewiseEmbedding" + 0x8000000000000000), &outlined read-only object #2 of MLFewShotSoundClassifier.TemporalClassifier.largeMarginClassifierLayers(framewiseEmbeddingShape:), &outlined read-only object #3 of MLFewShotSoundClassifier.TemporalClassifier.largeMarginClassifierLayers(framewiseEmbeddingShape:), v48);
    v49 = *(v41 + 2);
    if (*(v41 + 3) >> 1 <= v49)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v41 + 3) >= 2uLL, v49 + 1, 1, v41);
    }

    *(v41 + 2) = v49 + 1;
    v107(&v41[v106 + v104 * v49], v88, v105);
    static NeuralNetwork.Layer.leakyRelu(name:inputName:outputName:negativeSlope:)(0xD000000000000019, ("featureReduction" + 0x8000000000000000), 0x64656375646572, 0xE700000000000000, 0xD000000000000010, ("featureReductionLeakyRelu" + 0x8000000000000000), *(v103 + *(v79 + 20)));
    v50 = *(v41 + 2);
    if (*(v41 + 3) >> 1 <= v50)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v41 + 3) >= 2uLL, v50 + 1, 1, v41);
    }

    *(v41 + 2) = v50 + 1;
    v107(&v41[v106 + v104 * v50], v87, v105);
    static NeuralNetwork.Layer.transpose(name:inputName:outputName:axes:)(0x736F70736E617274, 0xE900000000000065, 0xD000000000000010, ("featureReductionLeakyRelu" + 0x8000000000000000), 0x6E69646465626D65, 0xE900000000000067, &outlined read-only object #4 of MLFewShotSoundClassifier.TemporalClassifier.largeMarginClassifierLayers(framewiseEmbeddingShape:));
    v51 = *(v41 + 2);
    if (*(v41 + 3) >> 1 <= v51)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v41 + 3) >= 2uLL, v51 + 1, 1, v41);
    }

    *(v41 + 2) = v51 + 1;
    v107(&v41[v106 + v104 * v51], v101, v105);
    v78 = v41;
    v52 = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(0);
    v53 = v103;
    *&v54 = 12643;
    *(&v54 + 1) = 0xE200000000000000;
    v55 = MLFewShotSoundClassifier.TemporalClassifier.makeConvBlock(name:input:output:layer:)(v54, 0x6E69646465626D65, 0xE900000000000067, 12643, 0xE200000000000000, v103 + v52[5]);
    specialized Array.append<A>(contentsOf:)(v55);
    *&v54 = 12899;
    *(&v54 + 1) = 0xE200000000000000;
    v56 = MLFewShotSoundClassifier.TemporalClassifier.makeConvBlock(name:input:output:layer:)(v54, 12643, 0xE200000000000000, 12899, 0xE200000000000000, v53 + v52[6]);
    specialized Array.append<A>(contentsOf:)(v56);
    *&v54 = 13155;
    *(&v54 + 1) = 0xE200000000000000;
    v57 = MLFewShotSoundClassifier.TemporalClassifier.makeConvBlock(name:input:output:layer:)(v54, 12899, 0xE200000000000000, 13155, 0xE200000000000000, v53 + v52[7]);
    specialized Array.append<A>(contentsOf:)(v57);
    *&v54 = 13411;
    *(&v54 + 1) = 0xE200000000000000;
    v58 = MLFewShotSoundClassifier.TemporalClassifier.makeConvBlock(name:input:output:layer:)(v54, 13155, 0xE200000000000000, 13411, 0xE200000000000000, v53 + v52[8]);
    specialized Array.append<A>(contentsOf:)(v58);
    v59 = v96 - 1;
    if (__OFSUB__(v96, 1))
    {
      BUG();
    }

    v60 = v84;
    v61 = v82;
    v62 = v83;
    (*(v83 + 104))(v84, enum case for NeuralNetwork.Layer.SliceParameters.Axis.width(_:), v82);
    static NeuralNetwork.Layer.slice(name:inputName:outputName:startIndex:endIndex:stride:axis:)(0x6563696C73, 0xE500000000000000, 13411, 0xE200000000000000, 0x646563696C73, 0xE600000000000000, v59, v96, 1, v60);
    (*(v62 + 8))(v60, v61);
    v3 = v78;
    if (!swift_isUniquelyReferenced_nonNull_native(v78))
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1, v3);
    }

    v63 = v95;
    v64 = *(v3 + 16);
    if (*(v3 + 24) >> 1 <= v64)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v3 + 24) >= 2uLL, v64 + 1, 1, v3);
    }

    *(v3 + 16) = v64 + 1;
    v107((v3 + v106 + v104 * v64), v93, v105);
    v65 = *(type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0) + 20) + v103;
    v66 = *(v63 + 16);
    v67 = v89;
    v103 = v65;
    v101 = v66;
    (v66)(v89, v65, v98);
    v68 = v99;
    NeuralNetwork.Layer.InnerProductParameters.init(from:)(v67, v65);
    v69 = enum case for NeuralNetwork.Layer.Kind.innerProduct(_:);
    (v102)(v68, enum case for NeuralNetwork.Layer.Kind.innerProduct(_:), v100);
    NeuralNetwork.Layer.init(name:inputNames:outputNames:kind:)(12644, 0xE200000000000000, &outlined read-only object #5 of MLFewShotSoundClassifier.TemporalClassifier.largeMarginClassifierLayers(framewiseEmbeddingShape:), &outlined read-only object #6 of MLFewShotSoundClassifier.TemporalClassifier.largeMarginClassifierLayers(framewiseEmbeddingShape:), v68);
    v70 = *(v3 + 16);
    if (*(v3 + 24) >> 1 <= v70)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v3 + 24) >= 2uLL, v70 + 1, 1, v3);
    }

    *(v3 + 16) = v70 + 1;
    v107((v3 + v106 + v104 * v70), v92, v105);
    static NeuralNetwork.Layer.relu(name:inputName:outputName:)(0x756C65725F3164, 0xE700000000000000, 12644, 0xE200000000000000, 0x756C65725F3164, 0xE700000000000000);
    v71 = *(v3 + 16);
    if (*(v3 + 24) >> 1 <= v71)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v3 + 24) >= 2uLL, v71 + 1, 1, v3);
    }

    *(v3 + 16) = v71 + 1;
    v107((v3 + v106 + v104 * v71), v91, v105);
    v72 = *(type metadata accessor for MLFewShotSoundClassifier.MLP(0) + 20) + v103;
    v73 = v89;
    (v101)(v89, v72, v98);
    v74 = v99;
    NeuralNetwork.Layer.InnerProductParameters.init(from:)(v73, v72);
    (v102)(v74, v69, v100);
    NeuralNetwork.Layer.init(name:inputNames:outputNames:kind:)(12900, 0xE200000000000000, &outlined read-only object #7 of MLFewShotSoundClassifier.TemporalClassifier.largeMarginClassifierLayers(framewiseEmbeddingShape:), &outlined read-only object #8 of MLFewShotSoundClassifier.TemporalClassifier.largeMarginClassifierLayers(framewiseEmbeddingShape:), v74);
    v75 = *(v3 + 16);
    if (*(v3 + 24) >> 1 <= v75)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v3 + 24) >= 2uLL, v75 + 1, 1, v3);
    }

    *(v3 + 16) = v75 + 1;
    v107((v3 + v106 + v104 * v75), v90, v105);
    static NeuralNetwork.Layer.softmax(name:inputName:outputName:)(0x78616D74666F73, 0xE700000000000000, 12900, 0xE200000000000000, 0x62614C7373616C63, 0xEF73626F72506C65);
    v76 = *(v3 + 16);
    if (*(v3 + 24) >> 1 <= v76)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v3 + 24) >= 2uLL, v76 + 1, 1, v3);
    }

    *(v3 + 16) = v76 + 1;
    v107((v3 + v106 + v104 * v76), v97, v105);
  }

  return v3;
}

uint64_t MLFewShotSoundClassifier.TemporalClassifier.branchClassifier(input:classLabels:framewiseEmbeddingShape:exemplar:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v112 = v5;
  v101 = v6;
  v111 = a4;
  v107 = a3;
  v93 = a2;
  v106 = v4;
  v78 = type metadata accessor for ModelKind(0);
  v79 = *(v78 - 8);
  v7 = *(v79 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v80 = &v77;
  v82 = type metadata accessor for NeuralNetworkClassifier.ClassLabels(0);
  v83 = *(v82 - 8);
  v10 = *(v83 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v84 = &v77;
  v86 = type metadata accessor for NeuralNetwork.ArrayShapeMapping(0);
  v87 = *(v86 - 8);
  v13 = *(v87 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v88 = &v77;
  v94 = type metadata accessor for NeuralNetworkClassifier(0);
  v81 = *(v94 - 8);
  v16 = *(v81 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v85 = &v77;
  v100 = type metadata accessor for FeatureType.ShapedArrayParameters.DataType(0);
  v108 = *(v100 - 8);
  v19 = *(v108 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v91 = &v77;
  v89 = type metadata accessor for FeatureType(0);
  v90 = *(v89 - 8);
  v22 = *(v90 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v99 = &v77;
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork?) - 8) + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v102 = &v77;
  v110 = type metadata accessor for NeuralNetwork.Layer(0);
  v28 = *(v110 - 8);
  v29 = *(v28 + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v109 = &v77;
  v95 = type metadata accessor for NeuralNetwork(0);
  v96 = *(v95 - 8);
  v32 = *(v96 + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v97 = &v77;
  v35 = alloca(v32);
  v36 = alloca(v32);
  v111 = MLFewShotSoundClassifier.TemporalClassifier.cosineSimilarity(input:exemplar:)(a1, v111);
  v37 = v112;
  v38 = MLFewShotSoundClassifier.TemporalClassifier.largeMarginClassifierLayers(framewiseEmbeddingShape:)(v107);
  if (v37)
  {
    return v111;
  }

  v103 = a1;
  v101 = 0;
  v98 = &v77;
  NeuralNetwork.init(layers:preprocessors:)(v38, _swiftEmptyArrayStorage);
  v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<NeuralNetwork.Layer>);
  v41 = *(v28 + 72);
  v112 = v28;
  v42 = *(v28 + 80);
  v43 = (v42 + 32) & ~*(v28 + 80);
  v44 = swift_allocObject(v40, v43 + 2 * v41, v42 | 7);
  *(v44 + 16) = 2;
  *(v44 + 24) = 4;
  static NeuralNetwork.Layer.constant(name:outputName:shape:values:)(0x746E6174736E6F63, 0xED000073626F7250, 0x746E6174736E6F63, 0xED000073626F7250, &outlined read-only object #0 of MLFewShotSoundClassifier.TemporalClassifier.branchClassifier(input:classLabels:framewiseEmbeddingShape:exemplar:), &outlined read-only object #1 of MLFewShotSoundClassifier.TemporalClassifier.branchClassifier(input:classLabels:framewiseEmbeddingShape:exemplar:));
  v104 = v41;
  static NeuralNetwork.Layer.squeezeAll(name:inputName:outputName:)(0x657A6565757173, 0xE700000000000000, 0x746E6174736E6F63, 0xED000073626F7250, 0x62614C7373616C63, 0xEF73626F72506C65);
  v45 = v97;
  NeuralNetwork.init(layers:preprocessors:)(v44, _swiftEmptyArrayStorage);
  v46 = v102;
  v47 = v95;
  (*(v96 + 16))(v102, v45, v95);
  __swift_storeEnumTagSinglePayload(v46, 0, 1, v47);
  static NeuralNetwork.Layer.branch(name:inputName:ifBranch:elseBranch:)(0x68636E617262, 0xE600000000000000, 0x6C616E676973, 0xE600000000000000, v98, v46);
  outlined destroy of NeuralNetwork?(v46);
  v48 = v111;
  v49 = swift_isUniquelyReferenced_nonNull_native(v111) == 0;
  v50 = v48;
  if (v49)
  {
    v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 2) + 1, 1, v48);
  }

  v51 = *(v50 + 2);
  v52 = v50;
  v53 = *(v50 + 3);
  v54 = v110;
  v55 = v112;
  if (v53 >> 1 <= v51)
  {
    v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v53 >= 2, v51 + 1, 1, v52);
    v55 = v112;
    v54 = v110;
    v52 = v76;
  }

  v111 = v52;
  *(v52 + 2) = v51 + 1;
  (*(v55 + 32))(&v52[v43 + v104 * v51], v109, v54);
  Model.init()();
  Model.specificationVersion.setter(4);
  v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
  v109 = v56;
  v105 = type metadata accessor for FeatureDescription(0);
  v57 = *(v105 - 1);
  v58 = *(v57 + 72);
  v59 = *(v57 + 80);
  v60 = (v59 + 32) & ~*(v57 + 80);
  v102 = (v60 + 2 * v58);
  v104 = v60;
  v112 = v58;
  v110 = v59 | 7;
  v61 = swift_allocObject(v56, v102, v59 | 7);
  v92 = v61;
  *(v61 + 16) = 2;
  *(v61 + 24) = 4;
  (*(v57 + 16))(v61 + v60, v103, v105);
  LODWORD(v103) = enum case for FeatureType.ShapedArrayParameters.DataType.float32(_:);
  v105 = *(v108 + 104);
  v62 = v91;
  v63 = v100;
  (v105)(v91, enum case for FeatureType.ShapedArrayParameters.DataType.float32(_:), v100);
  static FeatureType.shapedArray(dataType:shape:optional:)(v62, v107, 0);
  v108 = *(v108 + 8);
  (v108)(v62, v63);
  FeatureDescription.init(name:type:description:)(0xD000000000000012, ("fixedLengthEmbedding" + 0x8000000000000000), v99, 0, 0xE000000000000000);
  Model.inputs.setter(v92);
  v64 = swift_allocObject(v109, v102, v110);
  v107 = v64;
  *(v64 + 16) = 2;
  *(v64 + 24) = 4;
  v65 = v62;
  (v105)(v62, v103, v100);
  v66 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v67 = swift_allocObject(v66, 56, 7);
  LOBYTE(v62) = v67;
  v67[2] = 3;
  v67[3] = 6;
  v67[4] = 1;
  v67[5] = 1;
  v67[6] = *(v93 + 16);
  v68 = v99;
  static FeatureType.shapedArray(dataType:shape:optional:)(v65, v67, 0);
  v62;
  (v108)(v65, v100);
  FeatureDescription.init(name:type:description:)(0x62614C7373616C63, 0xEF73626F72506C65, v68, 0, 0xE000000000000000);
  FeatureType.StringParameters.init(optional:)(0);
  (*(v90 + 104))(v68, enum case for FeatureType.string(_:), v89);
  FeatureDescription.init(name:type:description:)(0x62614C7373616C63, 0xEA00000000006C65, v68, 0, 0xE000000000000000);
  Model.outputs.setter(v107);
  Model.predictedFeatureName.setter(0x62614C7373616C63, 0xEA00000000006C65);
  Model.predictedProbabilitiesName.setter(0x62614C7373616C63, 0xEF73626F72506C65);
  v69 = v85;
  NeuralNetworkClassifier.init(layers:preprocessors:)(v111, _swiftEmptyArrayStorage);
  v70 = v88;
  (*(v87 + 104))(v88, enum case for NeuralNetwork.ArrayShapeMapping.exactArrayMapping(_:), v86);
  NeuralNetworkClassifier.arrayInputShapeMapping.setter(v70);
  NeuralNetworkClassifier.labelProbabilityLayerName.setter(0x62614C7373616C63, 0xEF73626F72506C65);
  v71 = v84;
  *v84 = v93;
  (*(v83 + 104))(v71, enum case for NeuralNetworkClassifier.ClassLabels.string(_:), v82);

  NeuralNetworkClassifier.classLabels.setter(v71);
  v72 = v80;
  v73 = v81;
  (*(v81 + 16))(v80, v69, v94);
  (*(v79 + 104))(v72, enum case for ModelKind.neuralNetworkClassifier(_:), v78);
  Model.kind.setter(v72);
  (*(v73 + 8))(v69, v94);
  v74 = *(v96 + 8);
  v75 = v95;
  v74(v97, v95);
  return (v74)(v98, v75);
}

char *MLFewShotSoundClassifier.TemporalClassifier.cosineSimilarity(input:exemplar:)(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v34 = type metadata accessor for NeuralNetwork.Layer(0);
  v35 = *(v34 - 8);
  v2 = *(v35 + 8);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v29 = &v27;
  v5 = alloca(v2);
  v6 = alloca(v2);
  v30 = &v27;
  v7 = alloca(v2);
  v8 = alloca(v2);
  v31 = &v27;
  v9 = alloca(v2);
  v10 = alloca(v2);
  v32 = &v27;
  v11 = alloca(v2);
  v12 = alloca(v2);
  v13 = FeatureDescription.name.getter();
  v15 = v14;
  v28 = &v27;
  static NeuralNetwork.Layer.expandDimensions(name:inputName:outputName:axes:)(0x6E49646E61707865, 0xEB00000000747570, v13, v14, 0x6E49646E61707865, 0xEB00000000747570, &outlined read-only object #0 of MLFewShotSoundClassifier.TemporalClassifier.cosineSimilarity(input:exemplar:));
  v15;
  v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
  v17 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v18 >> 1 <= v17)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v18 >= 2, v17 + 1, 1, v16);
  }

  *(v16 + 2) = v17 + 1;
  v19 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v20 = *(v35 + 4);
  v33 = *(v35 + 9);
  v35 = v20;
  v20(&v16[v33 * v17 + v19], v28, v34);
  static NeuralNetwork.Layer.constant(name:outputName:shape:values:)(0x72616C706D657865, 0xE800000000000000, 0x72616C706D657865, 0xE800000000000000, &outlined read-only object #1 of MLFewShotSoundClassifier.TemporalClassifier.cosineSimilarity(input:exemplar:), v27);
  v21 = *(v16 + 2);
  v22 = v21 + 1;
  if (*(v16 + 3) >> 1 <= v21)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v16 + 3) >= 2uLL, v22, 1, v16);
  }

  *(v16 + 2) = v22;
  v35(&v16[v33 * v21 + v19], v32, v34);
  static NeuralNetwork.Layer.constant(name:outputName:shape:values:)(0x6854656E69736F63, 0xEF646C6F68736572, 0x6854656E69736F63, 0xEF646C6F68736572, &outlined read-only object #2 of MLFewShotSoundClassifier.TemporalClassifier.cosineSimilarity(input:exemplar:), &outlined read-only object #3 of MLFewShotSoundClassifier.TemporalClassifier.cosineSimilarity(input:exemplar:));
  v23 = *(v16 + 2);
  if (*(v16 + 3) >> 1 <= v23)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v16 + 3) >= 2uLL, v23 + 1, 1, v16);
  }

  *(v16 + 2) = v23 + 1;
  v35(&v16[v33 * v23 + v19], v31, v34);
  static NeuralNetwork.Layer.cosineSimilarity(name:inputNames:outputName:)(0xD000000000000010, ("activatedReduced" + 0x8000000000000000), 0x72616C706D657865, 0xE800000000000000, 0x6E49646E61707865, 0xEB00000000747570, 0xD000000000000010, ("activatedReduced" + 0x8000000000000000));
  v24 = *(v16 + 2);
  if (*(v16 + 3) >> 1 <= v24)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v16 + 3) >= 2uLL, v24 + 1, 1, v16);
  }

  *(v16 + 2) = v24 + 1;
  v35(&v16[v33 * v24 + v19], v30, v34);
  static NeuralNetwork.Layer.broadcastableSubtract(name:inputNames:outputName:)(0x7463617274627573, 0xE800000000000000, 0xD000000000000010, ("activatedReduced" + 0x8000000000000000), 0x6854656E69736F63, 0xEF646C6F68736572, 0x6C616E676973, 0xE600000000000000);
  v25 = *(v16 + 2);
  if (*(v16 + 3) >> 1 <= v25)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v16 + 3) >= 2uLL, v25 + 1, 1, v16);
  }

  *(v16 + 2) = v25 + 1;
  v35(&v16[v19 + v33 * v25], v29, v34);
  return v16;
}

uint64_t MLFewShotSoundClassifier.TemporalClassifier.soundPrintKCustomModel(input:fixedOutput:framewiseEmbeddingShape:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v33 = a2;
  v42 = a1;
  v41 = v3;
  v29 = type metadata accessor for ModelKind(0);
  v30 = *(v29 - 8);
  v4 = *(v30 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v31 = &v28;
  v34 = type metadata accessor for FeatureType.ShapedArrayParameters.DataType(0);
  v35 = *(v34 - 8);
  v7 = *(v35 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v36 = &v28;
  v10 = *(*(type metadata accessor for FeatureType(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v40 = &v28;
  Model.init()();
  Model.specificationVersion.setter(4);
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
  v38 = v13;
  v14 = type metadata accessor for FeatureDescription(0);
  v15 = *(v14 - 8);
  v39 = v14;
  v37 = *(v15 + 72);
  v16 = *(v15 + 80);
  v17 = (v16 + 32) & ~*(v15 + 80);
  v16 |= 7uLL;
  v18 = swift_allocObject(v13, v17 + v37, v16);
  *(v18 + 16) = 1;
  *(v18 + 24) = 2;
  v19 = *(v15 + 16);
  v19(v18 + v17, v42, v14);
  Model.inputs.setter(v18);
  v20 = swift_allocObject(v38, v17 + 2 * v37, v16);
  v42 = v20;
  *(v20 + 16) = 2;
  *(v20 + 24) = 4;
  v19(v20 + v17, v33, v39);
  v21 = v36;
  v22 = v34;
  v23 = v35;
  (*(v35 + 104))(v36, enum case for FeatureType.ShapedArrayParameters.DataType.float32(_:), v34);
  static FeatureType.shapedArray(dataType:shape:optional:)(v21, v32, 0);
  (*(v23 + 8))(v21, v22);
  FeatureDescription.init(name:type:description:)(0xD000000000000012, ("fixedLengthEmbedding" + 0x8000000000000000), v40, 0, 0xE000000000000000);
  Model.outputs.setter(v42);
  v24 = type metadata accessor for CustomModelConfiguration.ParameterValue(0);
  v25 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v24, &protocol witness table for String);
  v26 = v31;
  CustomModelConfiguration.init(className:parameters:)(0xD000000000000029, ("cosineSimilarity" + 0x8000000000000000), v25);
  (*(v30 + 104))(v26, enum case for ModelKind.custom(_:), v29);
  return Model.kind.setter(v26);
}

uint64_t MLFewShotSoundClassifier.TemporalClassifier.pipeline(classLabels:inferenceWindowSize:framewiseEmbeddingShape:exemplar:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v57 = v5;
  v60 = v6;
  v58 = a4;
  v61 = a3;
  v74 = a2;
  v59 = a1;
  v68 = v4;
  v65 = type metadata accessor for ModelKind(0);
  v64 = *(v65 - 8);
  v7 = *(v64 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v66 = &v57;
  v70 = type metadata accessor for Model(0);
  v71 = *(v70 - 8);
  v10 = *(v71 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v69 = &v57;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v75 = &v57;
  v62 = type metadata accessor for FeatureType.ShapedArrayParameters.DataType(0);
  v78 = *(v62 - 8);
  v15 = *(v78 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v18 = *(*(type metadata accessor for FeatureType(0) - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v76 = &v57;
  v72 = type metadata accessor for FeatureDescription(0);
  v73 = *(v72 - 8);
  v21 = *(v73 + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v67 = &v57;
  v24 = alloca(v21);
  v25 = alloca(v21);
  v77 = &v57;
  v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v27 = swift_allocObject(v26, 56, 7);
  v27[2] = 3;
  v27[3] = 6;
  v27[4] = 1;
  v27[5] = 1;
  v27[6] = v74;
  LODWORD(v74) = enum case for FeatureType.ShapedArrayParameters.DataType.float32(_:);
  v63 = *(v78 + 104);
  v28 = v62;
  v63(&v57, enum case for FeatureType.ShapedArrayParameters.DataType.float32(_:), v62);
  static FeatureType.shapedArray(dataType:shape:optional:)(&v57, v27, 0);
  v27;
  v78 = *(v78 + 8);
  (v78)(&v57, v28);
  v29 = v76;
  FeatureDescription.init(name:type:description:)(0x6F696475615F6474, 0xE800000000000000, v76, 0, 0xE000000000000000);
  v63(&v57, v74, v28);
  static FeatureType.shapedArray(dataType:shape:optional:)(&v57, &outlined read-only object #0 of MLFewShotSoundClassifier.TemporalClassifier.pipeline(classLabels:inferenceWindowSize:framewiseEmbeddingShape:exemplar:), 0);
  (v78)(&v57, v28);
  v30 = v67;
  FeatureDescription.init(name:type:description:)(0xD000000000000014, ("lid temporal dimension." + 0x8000000000000000), v29, 0, 0xE000000000000000);
  v31 = v61;
  MLFewShotSoundClassifier.TemporalClassifier.soundPrintKCustomModel(input:fixedOutput:framewiseEmbeddingShape:)(v77, v30, v61);
  v32 = v57;
  MLFewShotSoundClassifier.TemporalClassifier.branchClassifier(input:classLabels:framewiseEmbeddingShape:exemplar:)(v30, v59, v31, v58);
  if (v32)
  {
    (*(v71 + 8))(v75, v70);
    v33 = *(v73 + 8);
    v34 = v30;
  }

  else
  {
    Model.init()();
    v76 = 0;
    Model.specificationVersion.setter(4);
    v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
    v36 = *(v73 + 80);
    v37 = (v36 + 32) & ~*(v73 + 80);
    v38 = v73;
    v39 = swift_allocObject(v35, v37 + *(v73 + 72), v36 | 7);
    *(v39 + 16) = 1;
    *(v39 + 24) = 2;
    (*(v38 + 16))(v39 + v37, v77, v72);
    Model.inputs.setter(v39);
    v40 = Model.outputs.getter();
    Model.outputs.setter(v40);
    Model.predictedFeatureName.setter(0x62614C7373616C63, 0xEA00000000006C65);
    Model.predictedProbabilitiesName.setter(0x62614C7373616C63, 0xEF73626F72506C65);
    v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Model>);
    v42 = v71;
    v78 = *(v71 + 72);
    v43 = *(v71 + 80);
    v44 = (v43 + 32) & ~*(v71 + 80);
    v45 = swift_allocObject(v41, v44 + 2 * v78, v43 | 7);
    *(v45 + 16) = 2;
    *(v45 + 24) = 4;
    v46 = v45 + v44;
    v47 = *(v42 + 16);
    v48 = v70;
    v47(v46, v75, v70);
    v49 = v78 + v46;
    v50 = v69;
    v47(v49, v69, v48);
    v51 = v66;
    PipelineConfiguration.init(models:names:)(v45, _swiftEmptyArrayStorage);
    (*(v64 + 104))(v51, enum case for ModelKind.pipeline(_:), v65);
    Model.kind.setter(v51);
    v52 = *(v71 + 8);
    v53 = v50;
    v54 = v70;
    v52(v53, v70);
    v52(v75, v54);
    v33 = *(v73 + 8);
    v34 = v67;
  }

  v55 = v72;
  v33(v34, v72);
  return v33(v77, v55);
}

NSURL *MLFewShotSoundClassifier.write(to:)(uint64_t a1)
{
  v49 = v1;
  v50 = v2;
  v48 = a1;
  v42 = type metadata accessor for Model(0);
  v3 = *(v42 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v46 = v41;
  v7 = type metadata accessor for URL(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = v49;
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(v48, 0xD000000000000016, ("total_item_count" + 0x8000000000000000), 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (!v12)
  {
    v44 = 0;
    v43 = v3;
    v47 = v41;
    v48 = v7;
    v49 = v8;
    v14 = type metadata accessor for MLFewShotSoundClassifier(0);
    v15 = *(v50 + *(v14 + 48));
    v16 = [v15 trainingDataEmbeddings];
    v17 = v16;
    v18 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v17, v18);

    if (specialized Array._getCount()(v19, v18, v20, v21))
    {
      v45 = v14;
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v19 & 0xC000000000000003) == 0, v19);
      if ((v19 & 0xC000000000000003) != 0)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)(0);
      }

      else
      {
        v22 = *(v19 + 32);
      }

      v23 = v22;
      v19;
      v24 = [v23 shape];
      v25 = v24;

      v26 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
      v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v25, v26);

      v28 = [v15 exemplar];
      v29 = v28;
      v30 = v44;
      v31 = UnsafeBufferPointer.init(_:)(v29, &type metadata for Float);
      if (v30)
      {
        (*(v49 + 8))(v47, v48);
        return v27;
      }

      v44 = specialized _copyCollectionToContiguousArray<A>(_:)(v31, v32);
      v50 = *(v50 + *(v45 + 32));
      objc_msgSend_stret(v41, v15, "inferenceWindowSize");
      v35 = v41[0];
      ML24MLFewShotSoundClassifierV5write2toy10Foundation3URLV_tKFSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8NSNumberCG_Sis5NeverOTg5074_s8CreateML24MLFewShotSoundClassifierV5write2toy10Foundation3URLV_tKFSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_n(v27);
      v45 = 0;
      v27;
      v37 = v50;
      v50 = ML24MLFewShotSoundClassifierV5write2toy10Foundation3URLV_tKFSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_n;
      v38 = v45;
      MLFewShotSoundClassifier.TemporalClassifier.pipeline(classLabels:inferenceWindowSize:framewiseEmbeddingShape:exemplar:)(v37, v35, ML24MLFewShotSoundClassifierV5write2toy10Foundation3URLV_tKFSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_n, v44);
      if (!v38)
      {

        v50;
        v39 = v47;
        Model.write(to:)(v47);
        v40 = v48;
        (*(v43 + 8))(v46, v42);
        return (*(v49 + 8))(v39, v40);
      }

      v50;
    }

    else
    {
      v19;
      v33 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v33, 0, 0);
      *v34 = 0xD000000000000037;
      *(v34 + 8) = "FewShotSoundClassifier" + 0x8000000000000000;
      *(v34 + 16) = 0;
      *(v34 + 32) = 0;
      *(v34 + 48) = 2;
      swift_willThrow();
    }

    return (*(v49 + 8))(v47, v48);
  }

  return result;
}

uint64_t outlined destroy of NeuralNetwork?(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork?);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t outlined destroy of MLFewShotSoundClassifier.CausalConv1D(uint64_t a1)
{
  v1 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t MLImageClassifier.evaluation(on:)(uint64_t a1)
{
  v27 = v2;
  v28 = a1;
  v29 = v1;
  v3 = *(type metadata accessor for MLImageClassifier(0) - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *(type metadata accessor for MLImageClassifier.DataSource(0) - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v26 = v24;
  outlined init with copy of MLTrainingSessionParameters(a1, v24, type metadata accessor for MLImageClassifier.DataSource);
  outlined init with copy of MLTrainingSessionParameters(v27, v24, type metadata accessor for MLImageClassifier);
  v11 = *(v7 + 80);
  v12 = ~*(v7 + 80) & (v11 + 16);
  v13 = *(v3 + 80);
  v14 = ~v13 & (v12 + v13 + v8);
  v15 = swift_allocObject(&unk_391FB8, v14 + v4, v13 | v11 | 7);
  outlined init with take of MLClassifierMetrics(v26, v15 + v12, type metadata accessor for MLImageClassifier.DataSource);
  outlined init with take of MLClassifierMetrics(v24, v15 + v14, type metadata accessor for MLImageClassifier);
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLImageClassifier.evaluation(on:), v15);
  v17 = v16;

  v25 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [(predicted: String, label: String)]);
  v19 = lazy protocol witness table accessor for type [(predicted: String, label: String)] and conformance [A]();
  v20 = v29;
  ClassificationMetrics.init<A>(_:)(&v25, &type metadata for String, v18, &protocol witness table for String, v19);
  v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  swift_storeEnumTagMultiPayload(v20, v21, 0);
  v22 = type metadata accessor for MLClassifierMetrics.Contents(0);
  return swift_storeEnumTagMultiPayload(v20, v22, 0);
}

{
  v7[0] = v1;
  v2 = type metadata accessor for MLImageClassifier.DataSource(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v7[0] = a1;
  swift_storeEnumTagMultiPayload(v7, v2, 2);

  MLImageClassifier.evaluation(on:)(v7);
  return outlined destroy of MLImageClassifier.DataSource(v7);
}

uint64_t closure #1 in MLImageClassifier.evaluation(on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a2;
  v3[2] = a1;
  v4 = *(type metadata accessor for MLImageClassifier(0) - 8);
  v3[5] = v4;
  v5 = *(v4 + 64);
  v3[6] = v5;
  v3[7] = swift_task_alloc((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in MLImageClassifier.evaluation(on:), 0, 0);
}

uint64_t closure #1 in MLImageClassifier.evaluation(on:)()
{
  v1 = static _ImageUtilities.getImageURLsAndLabels(from:)(*(v0 + 24));
  v2 = v1;
  v3 = specialized _NativeDictionary.mapValues<A>(_:)(v1);
  v2;
  v13 = *(v0 + 56);
  v4 = *(v0 + 48);
  v5 = *(v0 + 40);
  outlined init with copy of MLTrainingSessionParameters(*(v0 + 32), v13, type metadata accessor for MLImageClassifier);
  v6 = *(v5 + 80);
  v7 = ~*(v5 + 80) & (v6 + 16);
  v8 = swift_allocObject(&unk_391FE0, v7 + v4, v6 | 7);
  outlined init with take of MLClassifierMetrics(v13, v8 + v7, type metadata accessor for MLImageClassifier);
  v9 = specialized _NativeDictionary.mapValues<A>(_:)(v3, partial apply for implicit closure #2 in implicit closure #1 in closure #1 in MLImageClassifier.evaluation(on:));

  v11 = *(v0 + 16);
  v14 = *(v0 + 56);
  v12 = specialized Sequence.flatMap<A>(_:)(v9);

  *v11 = v12;
  v14;
  return (*(v0 + 8))();
}

uint64_t sub_149183()
{
  v1 = type metadata accessor for MLImageClassifier.DataSource(0);
  v2 = *(v1 - 8);
  v35 = *(v2 + 80);
  v3 = ~*(v2 + 80) & (v35 + 16);
  v4 = v3 + *(v2 + 64);
  v39 = type metadata accessor for MLImageClassifier(0);
  v5 = *(v39 - 8);
  v36 = *(v5 + 80);
  v6 = ~v36 & (v36 + v4);
  v37 = *(v5 + 64);
  v38 = v0;
  v7 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v7, v1);
  if (EnumCaseMultiPayload == 2)
  {
    *v7;
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v9 = type metadata accessor for URL(0);
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  v10 = (v0 + v6);

  if (*(v0 + v6 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10 + 3);
  }

  v11 = v39;
  if (v10[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10 + 7);
  }

  v12 = (v10 + *(v39 + 24));
  v42 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v13 = swift_getEnumCaseMultiPayload(v12, v42);
  switch(v13)
  {
    case 2:
      *v12;
      break;
    case 1:
      v40 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v16 = v12 + *(v40 + 20);
      v17 = type metadata accessor for DataFrame(0);
      v18 = v16;
      v19 = *(*(v17 - 8) + 8);
      v19(v18, v17);
      v20 = v17;
      v11 = v39;
      v19(v12 + *(v40 + 24), v20);
      break;
    case 0:
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v12, v14) == 1)
      {
        v15 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v15 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v21 = __swift_instantiateConcreteTypeFromMangledName(v15);
      (*(*(v21 - 8) + 8))(v12, v21);
      break;
  }

  v22 = (v10 + *(v11 + 28));
  v23 = swift_getEnumCaseMultiPayload(v22, v42);
  switch(v23)
  {
    case 2:
      *v22;
      break;
    case 1:
      v41 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v26 = v22 + *(v41 + 20);
      v27 = type metadata accessor for DataFrame(0);
      v43 = *(*(v27 - 8) + 8);
      v28 = v26;
      v11 = v39;
      v43(v28, v27);
      v43(v22 + *(v41 + 24), v27);
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

      v29 = __swift_instantiateConcreteTypeFromMangledName(v25);
      (*(*(v29 - 8) + 8))(v22, v29);
      break;
  }

  v30 = v10 + *(v11 + 32);
  v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v32 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
  if (swift_getEnumCaseMultiPayload(v30, v31) == 1)
  {
    v32 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
  }

  v33 = __swift_instantiateConcreteTypeFromMangledName(v32);
  (*(*(v33 - 8) + 8))(v30, v33);
  return swift_deallocObject(v38, v37 + v6, v36 | v35 | 7);
}

uint64_t partial apply for closure #1 in MLImageClassifier.evaluation(on:)(uint64_t a1)
{
  v3 = *(type metadata accessor for MLImageClassifier.DataSource(0) - 8);
  v4 = ~*(v3 + 80) & (*(v3 + 80) + 16);
  v5 = v4 + *(v3 + 64);
  v6 = *(*(type metadata accessor for MLImageClassifier(0) - 8) + 80);
  v7 = swift_task_alloc(64);
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLImageClassifier.evaluation(on:)(a1, v1 + v4, v1 + ((v6 + v5) & ~v6));
}

uint64_t outlined destroy of MLImageClassifier.DataSource(uint64_t a1)
{
  v1 = type metadata accessor for MLImageClassifier.DataSource(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t sub_149926()
{
  v32 = type metadata accessor for MLImageClassifier(0);
  v1 = *(v32 - 1);
  v2 = *(v1 + 80);
  v3 = ~*(v1 + 80) & (v2 + 16);
  v29 = *(v1 + 64);
  v4 = (v3 + v0);

  v28 = v0;
  if (*(v0 + v3 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v4 + 3);
  }

  if (v4[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v4 + 7);
  }

  v5 = (v4 + v32[6]);
  v33 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v5, v33);
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *v5;
      break;
    case 1:
      v30 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v35 = v2;
      v9 = v5 + *(v30 + 20);
      v10 = type metadata accessor for DataFrame(0);
      v31 = *(*(v10 - 8) + 8);
      v11 = v9;
      v2 = v35;
      v31(v11, v10);
      v31(v5 + *(v30 + 24), v10);
      break;
    case 0:
      v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v5, v7) == 1)
      {
        v8 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v8 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v12 = __swift_instantiateConcreteTypeFromMangledName(v8);
      (*(*(v12 - 8) + 8))(v5, v12);
      break;
  }

  v13 = (v4 + v32[7]);
  v14 = swift_getEnumCaseMultiPayload(v13, v33);
  switch(v14)
  {
    case 2:
      *v13;
      break;
    case 1:
      v34 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v17 = v13 + *(v34 + 20);
      v36 = v2;
      v18 = type metadata accessor for DataFrame(0);
      v19 = v17;
      v20 = *(*(v18 - 8) + 8);
      v20(v19, v18);
      v21 = v18;
      v2 = v36;
      v20(v13 + *(v34 + 24), v21);
      break;
    case 0:
      v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v13, v15) == 1)
      {
        v16 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v16 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v22 = __swift_instantiateConcreteTypeFromMangledName(v16);
      (*(*(v22 - 8) + 8))(v13, v22);
      break;
  }

  v23 = v4 + v32[8];
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v25 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
  if (swift_getEnumCaseMultiPayload(v23, v24) == 1)
  {
    v25 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
  }

  v26 = __swift_instantiateConcreteTypeFromMangledName(v25);
  (*(*(v26 - 8) + 8))(v23, v26);
  return swift_deallocObject(v28, v29 + v3, v2 | 7);
}

void *specialized _NativeDictionary.mapValues<A>(_:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, [String]>);
  v4 = static _DictionaryStorage.copy(original:)(a1);
  v5 = 1 << *(a1 + 32);
  v6 = ~(-1 << v5);
  if (v5 >= 64)
  {
    v6 = -1;
  }

  v31 = a1;
  v7 = *(a1 + 64) & v6;
  v8 = v4;
  v30 = (v5 + 63) >> 6;
  v9 = 0;
  v29 = v4;
  while (1)
  {
    if (v7)
    {
      _BitScanForward64(&v10, v7);
      v28 = (v7 - 1) & v7;
      v27 = v9;
      v11 = v10 | (v9 << 6);
      goto LABEL_17;
    }

    v12 = v9 + 1;
    if (__OFADD__(1, v9))
    {
      BUG();
    }

    if (v12 >= v30)
    {
      return v8;
    }

    v13 = *(v31 + 8 * v12 + 64);
    if (!v13)
    {
      break;
    }

LABEL_16:
    _BitScanForward64(&v15, v13);
    v28 = v13 & (v13 - 1);
    v11 = v15 | (v12 << 6);
    v27 = v12;
LABEL_17:
    v16 = *(v31 + 48);
    v17 = *(*(v31 + 56) + 8 * v11);
    v24 = *(v16 + 16 * v11);
    v18 = *(v16 + 16 * v11 + 8);

    v25 = a2(v17);
    v17;
    if (v2)
    {
      v18;
      v8 = v29;

      return v8;
    }

    v8 = v29;
    v29[(v11 >> 6) + 8] |= 1 << v11;
    v19 = v29[6];
    *(v19 + 16 * v11) = v24;
    *(v19 + 16 * v11 + 8) = v18;
    *(v29[7] + 8 * v11) = v25;
    v20 = v29[2];
    v21 = __OFADD__(1, v20);
    v22 = v20 + 1;
    if (v21)
    {
      BUG();
    }

    v29[2] = v22;
    v9 = v27;
    v7 = v28;
  }

  v14 = v9 + 2;
  if (v9 + 2 >= v30)
  {
    return v8;
  }

  v13 = *(v31 + 8 * v12 + 72);
  if (v13)
  {
    goto LABEL_15;
  }

  v14 = v9 + 3;
  if (v9 + 3 >= v30)
  {
    return v8;
  }

  v13 = *(v31 + 8 * v12 + 80);
  if (v13)
  {
    goto LABEL_15;
  }

  v14 = v9 + 4;
  if (v9 + 4 >= v30)
  {
    return v8;
  }

  v13 = *(v31 + 8 * v12 + 88);
  if (v13)
  {
LABEL_15:
    v12 = v14;
    goto LABEL_16;
  }

  while (v9 + 5 < v30)
  {
    v13 = *(v31 + 8 * v9++ + 104);
    if (v13)
    {
      v12 = v9 + 4;
      goto LABEL_16;
    }
  }

  return v8;
}

void *initializeBufferWithCopyOfBuffer for MLLinearRegressor.Model(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
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

    v8 = *(a3 + 24);
    v9 = a1 + v8;
    v10 = a2 + v8;
    v11 = type metadata accessor for BaseLinearRegressorModel(0);
    (*(*(v11 - 8) + 16))(v9, v10, v11);
  }

  return v3;
}

uint64_t destroy for MLLinearRegressor.Model(void *a1, uint64_t a2)
{
  a1[1];
  v3 = a1[2];
  if (v3)
  {
    v3;
    a1[4];
  }

  v4 = a1 + *(a2 + 24);
  v5 = type metadata accessor for BaseLinearRegressorModel(0);
  return (*(*(v5 - 8) + 8))(v4, v5);
}

void *initializeWithCopy for MLLinearRegressor.Model(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = a2[2];

  if (v4)
  {
    a1[2] = v4;
    a1[3] = a2[3];
    a1[4] = a2[4];
  }

  else
  {
    a1[4] = a2[4];
    *(a1 + 1) = *(a2 + 1);
  }

  v5 = *(a3 + 24);
  v6 = a1 + v5;
  v7 = a2 + v5;
  v8 = type metadata accessor for BaseLinearRegressorModel(0);
  (*(*(v8 - 8) + 16))(v6, v7, v8);
  return a1;
}

void *assignWithCopy for MLLinearRegressor.Model(void *a1, void *a2, uint64_t a3)
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
      outlined destroy of FeatureVectorizer<Double>.Transformer((a1 + 2));
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

  v10 = *(a3 + 24);
  v11 = a1 + v10;
  v12 = a2 + v10;
  v13 = type metadata accessor for BaseLinearRegressorModel(0);
  (*(*(v13 - 8) + 24))(v11, v12, v13);
  return a1;
}

uint64_t initializeWithTake for MLLinearRegressor.Model(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a3 + 24);
  v4 = a1 + v3;
  v5 = v3 + a2;
  v6 = type metadata accessor for BaseLinearRegressorModel(0);
  (*(*(v6 - 8) + 32))(v4, v5, v6);
  return a1;
}

void *assignWithTake for MLLinearRegressor.Model(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1[1];
  a1[1] = a2[1];
  v5;
  v6 = a1 + 2;
  v7 = a2 + 2;
  v8 = a1[2];
  if (v8)
  {
    v9 = a2[2];
    if (v9)
    {
      a1[2] = v9;
      v8;
      a1[3] = a2[3];
      v10 = a1[4];
      a1[4] = a2[4];
      v10;
    }

    else
    {
      outlined destroy of FeatureVectorizer<Double>.Transformer((a1 + 2));
      *v6 = *v7;
      a1[4] = a2[4];
    }
  }

  else
  {
    a1[4] = a2[4];
    *v6 = *v7;
  }

  v11 = *(a3 + 24);
  v12 = a1 + v11;
  v13 = a2 + v11;
  v14 = type metadata accessor for BaseLinearRegressorModel(0);
  (*(*(v14 - 8) + 40))(v12, v13, v14);
  return a1;
}

uint64_t sub_14A217(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v5 = type metadata accessor for BaseLinearRegressorModel(0);
    return __swift_getEnumTagSinglePayload(*(a3 + 24) + a1, a2, v5);
  }

  return result;
}

uint64_t sub_14A29F(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + 8) = 2 * (a2 - 1);
  }

  else
  {
    v5 = type metadata accessor for BaseLinearRegressorModel(0);
    return __swift_storeEnumTagSinglePayload(*(a4 + 24) + a1, a2, a2, v5);
  }

  return result;
}

uint64_t type metadata accessor for MLLinearRegressor.Model(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLLinearRegressor.Model;
  if (!type metadata singleton initialization cache for MLLinearRegressor.Model)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLLinearRegressor.Model);
  }

  return result;
}

uint64_t type metadata completion function for MLLinearRegressor.Model(uint64_t a1)
{
  v3[0] = &unk_343058;
  v3[1] = &unk_343070;
  result = type metadata accessor for BaseLinearRegressorModel(319);
  if (v2 <= 0x3F)
  {
    v3[2] = *(result - 8) + 64;
    swift_initStructMetadata(a1, 256, 3, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t MLLinearRegressor.Model.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v32 = a2;
  v27 = v3;
  v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v31 = *(v26 - 8);
  v6 = *(v31 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v28 = &v25;
  v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Double>);
  v29 = *(v30 - 8);
  v9 = *(v29 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = v5[2];
  if (!v12)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001CLL, ("ressorModel.swift" + 0x8000000000000000), "CreateML/MLLinearRegressor.Model.swift", 38, 2, 25, 0);
    BUG();
  }

  result = specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(a1, 1, v12, v5[3], v5[4]);
  if (!v4)
  {
    v33 = 0;
    type metadata accessor for MLLinearRegressor.Model(0);
    v34 = &v25;
    v14 = BaseLinearRegressorModel.applied(features:eventHandler:)(&v25, v32, v36);
    v36 = *v5;
    v15 = v5[1];
    v35 = v14;

    v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ContiguousArray<Double>);
    v17 = lazy protocol witness table accessor for type ContiguousArray<Double> and conformance ContiguousArray<A>(&lazy protocol witness table cache variable for type ContiguousArray<Double> and conformance ContiguousArray<A>, &demangling cache variable for type metadata for ContiguousArray<Double>, &protocol conformance descriptor for ContiguousArray<A>);
    v18 = v28;
    Column.init<A>(name:contents:)(v36, v15, &v35, &type metadata for Double, v16, v17);
    v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<AnyColumn>);
    v20 = type metadata accessor for AnyColumn(0);
    v21 = swift_allocObject(v19, ((*(*(v20 - 8) + 80) + 32) & ~*(*(v20 - 8) + 80)) + *(*(v20 - 8) + 72), *(*(v20 - 8) + 80) | 7);
    *(v21 + 16) = 1;
    *(v21 + 24) = 2;
    v22 = v26;
    Column.eraseToAnyColumn()(v26);
    v35 = v21;
    v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnyColumn]);
    v24 = lazy protocol witness table accessor for type ContiguousArray<Double> and conformance ContiguousArray<A>(&lazy protocol witness table cache variable for type [AnyColumn] and conformance [A], &demangling cache variable for type metadata for [AnyColumn], &protocol conformance descriptor for [A]);
    DataFrame.init<A>(columns:)(&v35, v23, v24);
    (*(v31 + 8))(v18, v22);
    return (*(v29 + 8))(v34, v30);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MLLinearRegressor.Model and conformance MLLinearRegressor.Model()
{
  result = lazy protocol witness table cache variable for type MLLinearRegressor.Model and conformance MLLinearRegressor.Model;
  if (!lazy protocol witness table cache variable for type MLLinearRegressor.Model and conformance MLLinearRegressor.Model)
  {
    v1 = type metadata accessor for MLLinearRegressor.Model(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for MLLinearRegressor.Model, v1);
    lazy protocol witness table cache variable for type MLLinearRegressor.Model and conformance MLLinearRegressor.Model = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ContiguousArray<Double> and conformance ContiguousArray<A>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!*a1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstract(a2);
    result = swift_getWitnessTable(a3, v5);
    *a1 = result;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLActionClassifier.PersistentParameters(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v17 = *a2;
    *v4 = *a2;
    v4 = (v17 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = a3;
    v7 = type metadata accessor for MLActionClassifier.DataSource(0);
    v64 = v6;
    v69 = v7;
    switch(swift_getEnumCaseMultiPayload(a2, v7))
    {
      case 0u:
        v8 = type metadata accessor for URL(0);
        v9 = *(*(v8 - 8) + 16);
        v9(a1, a2, v8);
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v9(a1 + v10[12], a2 + v10[12], v8);
        v11 = v10[16];
        *(a1 + v11) = *(a2 + v11);
        *(a1 + v11 + 8) = *(a2 + v11 + 8);
        v12 = v10[20];
        *(a1 + v12) = *(a2 + v12);
        *(a1 + v12 + 8) = *(a2 + v12 + 8);
        v13 = v10[24];
        *(a1 + v13) = *(a2 + v13);
        *(a1 + v13 + 8) = *(a2 + v13 + 8);
        v14 = v10[28];
        *(a1 + v14) = *(a2 + v14);
        *(a1 + v14 + 8) = *(a2 + v14 + 8);

        v6 = v64;

        v15 = v69;
        v16 = 0;
        goto LABEL_13;
      case 1u:
        v24 = type metadata accessor for URL(0);
        (*(*(v24 - 8) + 16))(a1, a2, v24);
        v62 = 1;
        goto LABEL_9;
      case 2u:
        v20 = type metadata accessor for URL(0);
        (*(*(v20 - 8) + 16))(a1, a2, v20);
        v62 = 2;
LABEL_9:
        v16 = v62;
        v15 = v7;
        goto LABEL_13;
      case 3u:
        v21 = *a2;
        v22 = v6;
        v23 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v23);
        *a1 = v21;
        *(a1 + 8) = v23;
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = *(a2 + 56);

        v6 = v22;

        v61 = 3;
        goto LABEL_12;
      case 4u:
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
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 72) = *(a2 + 72);

        v6 = v64;

        v61 = 4;
        goto LABEL_12;
      case 5u:
        v25 = type metadata accessor for DataFrame(0);
        (*(*(v25 - 8) + 16))(a1, a2, v25);
        v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v27 = v26[12];
        *(a1 + v27) = *(a2 + v27);
        *(a1 + v27 + 8) = *(a2 + v27 + 8);
        v28 = v26[16];
        *(a1 + v28) = *(a2 + v28);
        *(a1 + v28 + 8) = *(a2 + v28 + 8);
        v29 = v26[20];
        *(a1 + v29) = *(a2 + v29);
        *(a1 + v29 + 8) = *(a2 + v29 + 8);

        v61 = 5;
        goto LABEL_12;
      case 6u:
        v30 = type metadata accessor for DataFrame(0);
        (*(*(v30 - 8) + 16))(a1, a2, v30);
        v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v32 = v31[12];
        *(a1 + v32) = *(a2 + v32);
        *(a1 + v32 + 8) = *(a2 + v32 + 8);
        v33 = v31[16];
        *(a1 + v33) = *(a2 + v33);
        *(a1 + v33 + 8) = *(a2 + v33 + 8);
        v34 = v31[20];
        *(a1 + v34) = *(a2 + v34);
        *(a1 + v34 + 8) = *(a2 + v34 + 8);
        v35 = v31[24];
        *(a1 + v35) = *(a2 + v35);
        *(a1 + v35 + 8) = *(a2 + v35 + 8);

        v61 = 6;
LABEL_12:
        v16 = v61;
        v15 = v69;
LABEL_13:
        swift_storeEnumTagMultiPayload(a1, v15, v16);
        v36 = v6[5];
        v37 = a1 + v36;
        v38 = a2 + v36;
        v39 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
        if (swift_getEnumCaseMultiPayload(v38, v39) != 1)
        {
          JUMPOUT(0x14AB5ALL);
        }

        v65 = v39;
        switch(swift_getEnumCaseMultiPayload(v38, v69))
        {
          case 0u:
            v66 = type metadata accessor for URL(0);
            v63 = *(*(v66 - 8) + 16);
            v63(v37, v38, v66);
            v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
            v63(v37 + v40[12], v38 + v40[12], v66);
            v41 = v40[16];
            *(v37 + v41) = *(v38 + v41);
            *(v37 + v41 + 8) = *(v38 + v41 + 8);
            v42 = v40[20];
            *(v37 + v42) = *(v38 + v42);
            *(v37 + v42 + 8) = *(v38 + v42 + 8);
            v43 = v40[24];
            *(v37 + v43) = *(v38 + v43);
            *(v37 + v43 + 8) = *(v38 + v43 + 8);
            v44 = v40[28];
            *(v37 + v44) = *(v38 + v44);
            *(v37 + v44 + 8) = *(v38 + v44 + 8);

            JUMPOUT(0x14AB55);
          case 1u:
            v48 = type metadata accessor for URL(0);
            (*(*(v48 - 8) + 16))(v37, v38, v48);
            swift_storeEnumTagMultiPayload(v37, v69, 1);
            break;
          case 2u:
            v46 = type metadata accessor for URL(0);
            (*(*(v46 - 8) + 16))(v37, v38, v46);
            swift_storeEnumTagMultiPayload(v37, v69, 2);
            break;
          case 3u:
            v68 = *v38;
            v47 = *(v38 + 8);
            outlined copy of Result<_DataTable, Error>(*v38, v47);
            *v37 = v68;
            *(v37 + 8) = v47;
            *(v37 + 16) = *(v38 + 16);
            *(v37 + 24) = *(v38 + 24);
            *(v37 + 32) = *(v38 + 32);
            *(v37 + 40) = *(v38 + 40);
            *(v37 + 48) = *(v38 + 48);
            *(v37 + 56) = *(v38 + 56);

            swift_storeEnumTagMultiPayload(v37, v69, 3);
            break;
          case 4u:
            v67 = *v38;
            v45 = *(v38 + 8);
            outlined copy of Result<_DataTable, Error>(*v38, v45);
            *v37 = v67;
            *(v37 + 8) = v45;
            *(v37 + 16) = *(v38 + 16);
            *(v37 + 24) = *(v38 + 24);
            *(v37 + 32) = *(v38 + 32);
            *(v37 + 40) = *(v38 + 40);
            *(v37 + 48) = *(v38 + 48);
            *(v37 + 56) = *(v38 + 56);
            *(v37 + 64) = *(v38 + 64);
            *(v37 + 72) = *(v38 + 72);

            JUMPOUT(0x14ABE7);
          case 5u:
            v49 = type metadata accessor for DataFrame(0);
            (*(*(v49 - 8) + 16))(v37, v38, v49);
            v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
            v51 = v50[12];
            *(v37 + v51) = *(v38 + v51);
            *(v37 + v51 + 8) = *(v38 + v51 + 8);
            v52 = v50[16];
            *(v37 + v52) = *(v38 + v52);
            *(v37 + v52 + 8) = *(v38 + v52 + 8);
            v53 = v50[20];
            *(v37 + v53) = *(v38 + v53);
            *(v37 + v53 + 8) = *(v38 + v53 + 8);

            swift_storeEnumTagMultiPayload(v37, v69, 5);
            break;
          case 6u:
            v54 = type metadata accessor for DataFrame(0);
            (*(*(v54 - 8) + 16))(v37, v38, v54);
            v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
            v56 = v55[12];
            *(v37 + v56) = *(v38 + v56);
            *(v37 + v56 + 8) = *(v38 + v56 + 8);
            v57 = v55[16];
            *(v37 + v57) = *(v38 + v57);
            *(v37 + v57 + 8) = *(v38 + v57 + 8);
            v58 = v55[20];
            *(v37 + v58) = *(v38 + v58);
            *(v37 + v58 + 8) = *(v38 + v58 + 8);
            v59 = v55[24];
            *(v37 + v59) = *(v38 + v59);
            *(v37 + v59 + 8) = *(v38 + v59 + 8);

            swift_storeEnumTagMultiPayload(v37, v69, 6);
            break;
          case 7u:
            JUMPOUT(0x14AE60);
        }

        swift_storeEnumTagMultiPayload(v37, v65, 1);
        *(a1 + v64[6]) = *(a2 + v64[6]);
        *(a1 + v64[7]) = *(a2 + v64[7]);
        *(a1 + v64[8]) = *(a2 + v64[8]);
        *(a1 + v64[9]) = *(a2 + v64[9]);
        *(a1 + v64[10]) = *(a2 + v64[10]);
        break;
    }
  }

  return v4;
}