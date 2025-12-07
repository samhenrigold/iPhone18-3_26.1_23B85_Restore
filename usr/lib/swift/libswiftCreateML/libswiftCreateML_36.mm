uint64_t initializeWithTake for MLBoostedTreeClassifier(uint64_t a1, uint64_t a2, int *a3)
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
  qmemcpy((a1 + a3[8]), (a2 + a3[8]), 0x70uLL);
  v47 = a3;
  v9 = a3[9];
  v10 = (v9 + a1);
  v11 = (a2 + v9);
  v12 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v11, v12);
  if (EnumCaseMultiPayload == 1)
  {
    *v10 = *v11;
    v45 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v21 = *(v45 + 20);
    v46 = &v10[v21];
    v51 = v12;
    v22 = type metadata accessor for DataFrame(0);
    v23 = &v11[v21];
    v24 = *(*(v22 - 8) + 32);
    v24(v46, v23, v22);
    v25 = v22;
    v12 = v51;
    v24(&v10[*(v45 + 24)], &v11[*(v45 + 24)], v25);
    v20 = 1;
    v18 = v10;
    v19 = v51;
LABEL_7:
    swift_storeEnumTagMultiPayload(v18, v19, v20);
    goto LABEL_9;
  }

  if (!EnumCaseMultiPayload)
  {
    v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v14 = swift_getEnumCaseMultiPayload(v11, v50);
    v15 = v14 == 1;
    v16 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v14 == 1)
    {
      v16 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledName(v16);
    (*(*(v17 - 8) + 32))(v10, v11, v17);
    swift_storeEnumTagMultiPayload(v10, v50, v15);
    v18 = v10;
    v19 = v12;
    v20 = 0;
    goto LABEL_7;
  }

  memcpy(v10, v11, *(*(v12 - 8) + 64));
LABEL_9:
  v26 = v47[10];
  v27 = (a1 + v26);
  v28 = (v26 + a2);
  v29 = swift_getEnumCaseMultiPayload(v28, v12);
  if (v29 == 1)
  {
    *v27 = *v28;
    v39 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v52 = v12;
    v40 = *(v39 + 20);
    v48 = &v27[v40];
    v41 = type metadata accessor for DataFrame(0);
    v42 = &v28[v40];
    v43 = *(*(v41 - 8) + 32);
    v43(v48, v42, v41);
    v43(&v27[*(v39 + 24)], &v28[*(v39 + 24)], v41);
    v38 = 1;
    v36 = v27;
    v37 = v52;
  }

  else
  {
    if (v29)
    {
      memcpy(v27, v28, *(*(v12 - 8) + 64));
      return a1;
    }

    v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v31 = swift_getEnumCaseMultiPayload(v28, v30);
    v32 = v12;
    v33 = v31 == 1;
    v34 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v31 == 1)
    {
      v34 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v35 = __swift_instantiateConcreteTypeFromMangledName(v34);
    (*(*(v35 - 8) + 32))(v27, v28, v35);
    swift_storeEnumTagMultiPayload(v27, v30, v33);
    v36 = v27;
    v37 = v32;
    v38 = 0;
  }

  swift_storeEnumTagMultiPayload(v36, v37, v38);
  return a1;
}

void *assignWithTake for MLBoostedTreeClassifier(void *a1, void *a2, int *a3)
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
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>((a1 + 2), &demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer);
      *v6 = *v7;
      a1[4] = a2[4];
    }
  }

  else
  {
    a1[4] = a2[4];
    *v6 = *v7;
  }

  v11 = type metadata accessor for AnyTreeClassifierModel(0);
  v12 = *(v11 + 24);
  v13 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v13 - 8) + 40))(a1 + v12, a2 + v12, v13);
  v14 = *(v11 + 28);
  v15 = *(a2 + v14 + 8);
  v16 = *(a1 + v14);
  *(a1 + v14) = *(a2 + v14);
  *(a1 + v14 + 8) = v15;
  v16;
  v17 = a3[5];
  v18 = *(a1 + v17);
  *(a1 + v17) = *(a2 + v17);

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
  if (*(a1 + v23 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v23));
  }

  v26 = *v25;
  *(v24 + 1) = *(v25 + 1);
  *v24 = v26;
  *(v24 + 2) = *(v25 + 2);
  *(v24 + 3) = *(v25 + 3);
  *(v24 + 8) = *(v25 + 8);
  *(v24 + 9) = *(v25 + 9);
  *(v24 + 10) = *(v25 + 10);
  v24[88] = v25[88];
  *(v24 + 6) = *(v25 + 6);
  if (a1 == a2)
  {
    return a1;
  }

  v27 = a3[9];
  v28 = a1 + v27;
  v29 = a2 + v27;
  outlined destroy of MLActivityClassifier.ModelParameters(v28, type metadata accessor for MLClassifierMetrics.Contents);
  v64 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v29, v64);
  if (EnumCaseMultiPayload == 1)
  {
    *v28 = *v29;
    v66 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v39 = *(v66 + 20);
    v60 = &v28[v39];
    v61 = type metadata accessor for DataFrame(0);
    v40 = &v29[v39];
    v41 = *(*(v61 - 8) + 32);
    v41(v60, v40, v61);
    v41(&v28[*(v66 + 24)], &v29[*(v66 + 24)], v61);
    v38 = 1;
    v35 = v28;
    v36 = v64;
    v37 = v64;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v42 = v29;
      v36 = v64;
      memcpy(v28, v42, *(*(v64 - 8) + 64));
      goto LABEL_17;
    }

    v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v31 = swift_getEnumCaseMultiPayload(v29, v65);
    v32 = v31 == 1;
    v33 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v31 == 1)
    {
      v33 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v34 = __swift_instantiateConcreteTypeFromMangledName(v33);
    (*(*(v34 - 8) + 32))(v28, v29, v34);
    swift_storeEnumTagMultiPayload(v28, v65, v32);
    v35 = v28;
    v36 = v64;
    v37 = v64;
    v38 = 0;
  }

  swift_storeEnumTagMultiPayload(v35, v37, v38);
LABEL_17:
  v43 = a3[10];
  v44 = a1 + v43;
  v45 = a2 + v43;
  outlined destroy of MLActivityClassifier.ModelParameters(a1 + v43, type metadata accessor for MLClassifierMetrics.Contents);
  v46 = swift_getEnumCaseMultiPayload(v45, v36);
  if (v46 == 1)
  {
    *v44 = *v45;
    v63 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v55 = *(v63 + 20);
    v67 = &v44[v55];
    v56 = type metadata accessor for DataFrame(0);
    v57 = &v45[v55];
    v58 = *(*(v56 - 8) + 32);
    v58(v67, v57, v56);
    v58(&v44[*(v63 + 24)], &v45[*(v63 + 24)], v56);
    v54 = 1;
    v52 = v44;
    v53 = v64;
  }

  else
  {
    if (v46)
    {
      memcpy(v44, v45, *(*(v36 - 8) + 64));
      return a1;
    }

    v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v48 = swift_getEnumCaseMultiPayload(v45, v47);
    v49 = v48 == 1;
    v50 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v48 == 1)
    {
      v50 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v51 = __swift_instantiateConcreteTypeFromMangledName(v50);
    (*(*(v51 - 8) + 32))(v44, v45, v51);
    swift_storeEnumTagMultiPayload(v44, v47, v49);
    v52 = v44;
    v53 = v64;
    v54 = 0;
  }

  swift_storeEnumTagMultiPayload(v52, v53, v54);
  return a1;
}

uint64_t sub_277AFE(uint64_t a1, unsigned int a2, uint64_t a3)
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

uint64_t sub_277B8B(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
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

uint64_t type metadata completion function for MLBoostedTreeClassifier(uint64_t a1)
{
  result = type metadata accessor for AnyTreeClassifierModel(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    v4[1] = &value witness table for Builtin.UnknownObject + 64;
    v4[2] = &unk_347E48;
    v4[3] = &value witness table for Builtin.BridgeObject + 64;
    v4[4] = &unk_347E60;
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

uint64_t sub_277CB0()
{
  swift_unknownObjectRelease(*(v0 + 16));

  return swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in static MLBoostedTreeClassifier.handleResult(_:session:fulfill:)(uint64_t a1)
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
  return closure #1 in static MLBoostedTreeClassifier.handleResult(_:session:fulfill:)(a1, v3, v4, v8, v9, v5);
}

void *specialized _ArrayProtocol.filter(_:)(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = a1;
  v4 = 0;
  v46 = type metadata accessor for URL(0);
  v43 = *(v46 - 8);
  v5 = *(v43 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v36 = &v30;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v32 = &v30;
  v10 = alloca(v5);
  v11 = alloca(v5);
  v45 = &v30;
  v34 = *(a1 + 16);
  v41 = _swiftEmptyArrayStorage;
  v40 = a1;
  v44 = a2;
LABEL_2:
  while (v4 != v34)
  {
    if (v4 >= *(v3 + 16))
    {
      BUG();
    }

    v12 = *(v43 + 16);
    v13 = *(v43 + 72);
    v33 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v35 = v13;
    v39 = v4 + 1;
    v38 = v12;
    v12(v45, v33 + v3 + v4 * v13, v46);
    if (v2[2])
    {
      v14 = v2[5];
      v15 = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, &protocol conformance descriptor for URL);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)(v14, v46, v15);
      v2 = v44;
      v31 = ~(-1 << *(v44 + 32));
      for (i = v31 & v16; ; i = v31 & (i + 1))
      {
        v18 = v2[(i >> 6) + 7];
        if (!_bittest64(&v18, i))
        {
          break;
        }

        v19 = v32;
        v20 = v46;
        v38(v32, v2[6] + v35 * i, v46);
        v21 = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, &protocol conformance descriptor for URL);
        LOBYTE(v37) = dispatch thunk of static Equatable.== infix(_:_:)(v19, v45, v20, v21);
        (*(v43 + 8))(v19, v20);
        if (v37)
        {
          v22 = *(v43 + 32);
          v22(v36, v45, v46);
          v23 = v41;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v41);
          v25 = v23;
          v42 = v23;
          if (!isUniquelyReferenced_nonNull_native)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1);
            v25 = v42;
          }

          v3 = v40;
          v2 = v44;
          v4 = v39;
          v26 = v25[2];
          v27 = v25[3];
          v28 = v26 + 1;
          if (v27 >> 1 <= v26)
          {
            v37 = v25[2];
            v38 = v22;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27 >= 2, v28, 1);
            v26 = v37;
            v22 = v38;
            v2 = v44;
            v25 = v42;
          }

          v25[2] = v28;
          v41 = v25;
          v22((v25 + v33 + v35 * v26), v36, v46);
          goto LABEL_2;
        }
      }
    }

    (*(v43 + 8))(v45, v46);
    v3 = v40;
    v4 = v39;
  }

  v2;
  v3;
  return v41;
}

uint64_t static _ImageUtilities.getImageURLsAndObjectAnnotations(from:imageColumnName:labelColumnName:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __m128 a6)
{
  v261 = v7;
  v260 = a5;
  v254._countAndFlagsBits = a4;
  named = a3;
  v252._countAndFlagsBits = a2;
  v268 = a1;
  v250 = v6;
  v264 = type metadata accessor for DataFrame(0);
  v262 = *(v264 - 8);
  v8 = *(v262 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v257 = &v223;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v259 = &v223;
  v13 = alloca(v8);
  v14 = alloca(v8);
  v267._countAndFlagsBits = &v223;
  v15 = type metadata accessor for MLObjectDetector.DataSource(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v267._object = type metadata accessor for URL(0);
  v19 = *(v267._object - 1);
  v20 = *(v19 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v247 = &v223;
  v23 = alloca(v20);
  v24 = alloca(v20);
  v256 = &v223;
  v25 = alloca(v20);
  v26 = alloca(v20);
  v27 = alloca(v20);
  v28 = alloca(v20);
  *&v265 = &v223;
  v29 = alloca(v20);
  v30 = alloca(v20);
  v266._countAndFlagsBits = &v223;
  v31 = alloca(v20);
  v32 = alloca(v20);
  v266._object = &v223;
  outlined init with copy of MLTrainingSessionParameters(v268, &v223, type metadata accessor for MLObjectDetector.DataSource);
  switch(swift_getEnumCaseMultiPayload(&v223, v15))
  {
    case 0u:
      v258 = &v223;
      (*(v19 + 32))(v265, &v223, v267._object, 0xE000000000000000);
      URL.resolvingSymlinksInPath()();
      countAndFlagsBits = v266._countAndFlagsBits;
      URL.resolvingSymlinksInPath()();
      v34 = v19;
      v35 = *(v19 + 8);
      object = v267._object;
      v37 = countAndFlagsBits;
      v38 = v35;
      v35(v265, v267._object);
      goto LABEL_8;
    case 1u:
      v58 = &v223 + *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL)) + 48);
      v263 = v19;
      v59 = *(v19 + 32);
      object = v267._object;
      v60 = v59;
      v59(v265, &v223, v267._object);
      v60(&v223, v58, object);
      URL.resolvingSymlinksInPath()();
      v37 = v266._countAndFlagsBits;
      URL.resolvingSymlinksInPath()();
      v34 = v263;
      v61 = *(v263 + 8);
      v258 = &v223;
      v38 = v61;
      v61(&v223, object);
      v38(v265, object);
LABEL_8:
      v62 = v261;
      v63 = static _FileUtilities.getReadableJsonFilesInDirectory(at:)(v37);
      v268 = v62;
      if (v62)
      {
        v38(v37, object);
        return (v38)(v266._object, object);
      }

      v65 = v63;
      v66 = *(v63 + 16);
      if (v66 >= 2)
      {
        *&v230 = 0;
        *(&v230 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(58);
        v67._object = "with object annotations." + 0x8000000000000000;
        v67._countAndFlagsBits = 0xD000000000000037;
        String.append(_:)(v67);
        v65;
        *&__src[0] = v66;
        v68 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v70 = v69;
        v67._countAndFlagsBits = v68;
        v67._object = v69;
        String.append(_:)(v67);
        v70;
        v67._countAndFlagsBits = 46;
        v67._object = 0xE100000000000000;
        String.append(_:)(v67);
        v265 = v230;
        v71 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v71, 0, 0);
        *v72 = v265;
        *(v72 + 16) = 0;
        *(v72 + 32) = 0;
        *(v72 + 48) = 0;
LABEL_26:
        swift_willThrow();
        v109 = v267._object;
        v38(v266._countAndFlagsBits, v267._object);
        return (v38)(v266._object, v109);
      }

      if (!v66)
      {
        v63;
        v107 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v107, 0, 0);
        *v108 = 0xD000000000000058;
        *(v108 + 8) = " specified data source." + 0x8000000000000000;
        *(v108 + 16) = 0;
        *(v108 + 32) = 0;
        *(v108 + 48) = 0;
        goto LABEL_26;
      }

      v95 = v34;
      v96 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v263 = v95;
      v261 = *(v95 + 16);
      v261(v256, v96 + v63, v267._object);
      v65;
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
      LOBYTE(v230) = 1;
      *(&v230 + 1) = 44;
      v231 = 0xE100000000000000;
      v232 = 0;
      v233 = 0xE000000000000000;
      v234 = 92;
      v235 = 0xE100000000000000;
      v236 = 1;
      v237 = 34;
      v238 = 0xE100000000000000;
      v239 = 1;
      v240 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
      v241 = 10;
      v242 = 0xE100000000000000;
      v243 = 0;
      v244 = 1;
      v245 = 0;
      outlined retain of MLDataTable.ParsingOptions(__src);
      outlined release of MLDataTable.ParsingOptions(&v230);
      memcpy(__dst, __src, sizeof(__dst));
      v97 = v268;
      MLDataTable.init(contentsOf:options:)(v256, __dst);
      if (v97)
      {
        v98 = *(v263 + 8);
        v99 = v267._object;
        v98(v266._countAndFlagsBits, v267._object);
        return (v98)(v266._object, v99);
      }

      v262 = v96;
      v110 = named;
      if (named)
      {
        v111._countAndFlagsBits = v252._countAndFlagsBits;
        v112 = 0;
        if (v252._countAndFlagsBits ^ 0x6C69666567616D69 | named ^ 0xED0000656D616E65 && (_stringCompareWithSmolCheck(_:_:expecting:)(v252._countAndFlagsBits, named, 0x6C69666567616D69, 0xED0000656D616E65, 0) & 1) == 0)
        {
          v268 = v97;
          MLDataTable.willMutate()();
          v111._object = v110;
          v113._countAndFlagsBits = 0x6C69666567616D69;
          v113._object = 0xED0000656D616E65;
          MLDataTable.renameImpl(named:to:)(v111, v113);
          if (!v270)
          {
            v114 = v269;
            outlined copy of Result<_DataTable, Error>(v269, 0);
            _DataTable.columnNamesDidChange()();
            outlined consume of Result<_DataTable, Error>(v114, 0);
          }

          v112 = v268;
        }
      }

      else
      {
        v116 = v270;
        __dst[0] = v269;
        LOBYTE(__dst[1]) = v270 & 1;
        LOBYTE(v252._object) = 2;
        v117 = v269;
        outlined copy of Result<_DataTable, Error>(v269, v270);
        v118 = static _ImageUtilities.findColumnWithNonDefaultName(from:directoryURL:columnType:defaultName:validateContentFunc:)(__dst, v266._object, &v252._object, 0x6C69666567616D69, 0xED0000656D616E65, partial apply for implicit closure #1 in static _ImageUtilities.getImageURLsAndObjectAnnotations(from:imageColumnName:labelColumnName:), 0);
        v268 = v119;
        v120 = v117;
        v121 = v118;
        outlined consume of Result<_DataTable, Error>(v120, v116);
        MLDataTable.willMutate()();
        v122._countAndFlagsBits = v121;
        v123 = v268;
        v122._object = v268;
        v124._countAndFlagsBits = 0x6C69666567616D69;
        v124._object = 0xED0000656D616E65;
        MLDataTable.renameImpl(named:to:)(v122, v124);
        if (!v270)
        {
          v125 = v269;
          outlined copy of Result<_DataTable, Error>(v269, 0);
          _DataTable.columnNamesDidChange()();
          outlined consume of Result<_DataTable, Error>(v125, 0);
        }

        v123;
        v112 = 0;
      }

      v126 = v260;
      if (v260)
      {
        v268 = v112;
        if (v254._countAndFlagsBits ^ 0x697461746F6E6E61 | v260 ^ 0xEA00000000006E6FLL)
        {
          if ((_stringCompareWithSmolCheck(_:_:expecting:)(v254._countAndFlagsBits, v260, 0x697461746F6E6E61, 0xEA00000000006E6FLL, 0) & 1) == 0)
          {
            MLDataTable.willMutate()();
            v127._countAndFlagsBits = v254._countAndFlagsBits;
            v127._object = v126;
            v128._countAndFlagsBits = 0x697461746F6E6E61;
            v128._object = 0xEA00000000006E6FLL;
            MLDataTable.renameImpl(named:to:)(v127, v128);
            if (!v270)
            {
              v129 = v269;
              outlined copy of Result<_DataTable, Error>(v269, 0);
              _DataTable.columnNamesDidChange()();
              outlined consume of Result<_DataTable, Error>(v129, 0);
            }
          }
        }
      }

      else
      {
        v135 = v269;
        v136 = v270;
        __dst[0] = v269;
        LOBYTE(__dst[1]) = v270 & 1;
        LOBYTE(v252._object) = 3;
        outlined copy of Result<_DataTable, Error>(v269, v270);
        v137 = static _ImageUtilities.findColumnWithNonDefaultName(from:directoryURL:columnType:defaultName:validateContentFunc:)(__dst, v266._object, &v252._object, 0x697461746F6E6E61, 0xEA00000000006E6FLL, partial apply for implicit closure #2 in static _ImageUtilities.getImageURLsAndObjectAnnotations(from:imageColumnName:labelColumnName:), 0);
        if (v112)
        {
          outlined consume of Result<_DataTable, Error>(v135, v136);
          goto LABEL_52;
        }

        v144 = v138;
        v268 = 0;
        v145 = v135;
        v146 = v137;
        outlined consume of Result<_DataTable, Error>(v145, v136);
        MLDataTable.willMutate()();
        v147._countAndFlagsBits = v146;
        v147._object = v144;
        v148._countAndFlagsBits = 0x697461746F6E6E61;
        v148._object = 0xEA00000000006E6FLL;
        MLDataTable.renameImpl(named:to:)(v147, v148);
        if (!v270)
        {
          v149 = v269;
          outlined copy of Result<_DataTable, Error>(v269, 0);
          _DataTable.columnNamesDidChange()();
          outlined consume of Result<_DataTable, Error>(v149, 0);
        }

        v144;
      }

      v150 = v269;
      v151 = v270;
      v259 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
      inited = swift_initStackObject(v259, &v223);
      *(inited + 16) = 1;
      *(inited + 24) = 2;
      strcpy((inited + 32), "imagefilename");
      *(inited + 46) = -4864;
      __dst[0] = v150;
      LOBYTE(v256) = v151 & 1;
      LOBYTE(__dst[1]) = v151 & 1;
      v267._countAndFlagsBits = v150;
      LODWORD(v264) = v151;
      outlined copy of Result<_DataTable, Error>(v150, v151);
      v153 = v268;
      static _ValidationUtilities.validateTableFormat(table:context:columns:)(__dst, 0x6C69466567616D49, 0xED0000656D614E65, inited);
      if (v153)
      {
        v154 = v267._countAndFlagsBits;
        v268 = v153;
        inited;
        outlined consume of Result<_DataTable, Error>(v154, v264);
        v157 = *(v263 + 8);
        v158 = v267._object;
        v157(v266._countAndFlagsBits, v267._object);
        v157(v266._object, v158);
        return outlined consume of Result<_DataTable, Error>(v269, v270);
      }

      v257 = inited;
      __dst[0] = v267._countAndFlagsBits;
      v155 = v256;
      LOBYTE(__dst[1]) = v256;
      v156 = swift_allocObject(v259, 48, 7);
      v156[2] = 1;
      v156[3] = 2;
      v156[4] = 0x697461746F6E6E61;
      v156[5] = 0xEA00000000006E6FLL;
      static _ValidationUtilities.validateTableFormat(table:context:columns:)(__dst, 0x697461746F6E6E41, 0xEA00000000006E6FLL, v156);
      swift_setDeallocating(v156);
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      outlined consume of Result<_DataTable, Error>(v267._countAndFlagsBits, v264);
      swift_setDeallocating(v257);
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      v248 = static _ImageUtilities.getImageURLs(at:)(v266._object);
      v268 = 0;
      __dst[0] = v267._countAndFlagsBits;
      LOBYTE(__dst[1]) = v155;
      v159._countAndFlagsBits = 0x6C69666567616D69;
      v159._object = 0xED0000656D616E65;
      MLDataTable.subscript.getter(v159);
      v160 = v252._object;
      if (v253)
      {
        outlined consume of Result<_DataTable, Error>(v252._object, 1);
        v271 = 6;
        v161 = 0;
        v255 = 0;
        v254._object = 0;
      }

      else
      {

        v161 = 0;
        _UntypedColumn.valueAtIndex(index:)(0, 0.0);
        outlined consume of Result<_DataTable, Error>(v160, 0);
        outlined consume of Result<_DataTable, Error>(v160, 0);
        v162 = __dst[1];
        v254._object = __dst[1];
        v255 = __dst[0];
        if (LOBYTE(__dst[2]) == 2)
        {
          v161 = __dst[0];

          v271 = 2;
          v163 = v162;
          goto LABEL_67;
        }

        v271 = __dst[2];
      }

      v163 = 0xE000000000000000;
LABEL_67:
      __dst[0] = v161;
      __dst[1] = v163;
      v252._object = &stru_20 + 15;
      v253 = 0xE100000000000000;
      v164 = v163;
      v260 = lazy protocol witness table accessor for type String and conformance String();
      v165 = StringProtocol.components<A>(separatedBy:)(&v252._object, &type metadata for String, &type metadata for String, v260, v260);
      v164;
      v252._countAndFlagsBits = *(v165 + 16);
      v165;
      v166 = v248;
      Kind = v248[1].Kind;
      if (Kind)
      {
        __dst[0] = _swiftEmptyArrayStorage;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, Kind, 0);
        v168 = __dst[0];
        v169 = v166 + v262;
        v262 = *(v263 + 72);
        v264 = v169;
        v267._countAndFlagsBits = Kind;
        v170 = Kind;
        v171 = v265;
        do
        {
          v257 = v170;
          v259 = v169;
          v172 = v169;
          v173 = v267._object;
          v261(v171, v172, v267._object);
          URL.resolvingSymlinksInPath()();
          named = URL.path.getter(v171);
          v254._countAndFlagsBits = v174;
          v175 = *(v263 + 8);
          (v175)(v258, v173);
          v256 = v175;
          (v175)(v171, v173);
          __dst[0] = v168;
          v176 = *(v168 + 16);
          if (*(v168 + 24) >> 1 <= v176)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(*(v168 + 24) >= 2uLL, v176 + 1, 1);
            v168 = __dst[0];
          }

          *(v168 + 16) = v176 + 1;
          v177 = 16 * v176;
          *(v168 + v177 + 32) = named;
          *(v168 + v177 + 40) = v254._countAndFlagsBits;
          v169 = v259 + v262;
          v170 = v257 - 1;
          v171 = v265;
        }

        while (v257 != (&dword_0 + 1));
        v259 = v168;
        v249 = _swiftEmptyArrayStorage;
        v178 = v267._countAndFlagsBits;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v267._countAndFlagsBits, 0);
        v179 = v249;
        v180 = v261;
        v181 = v264;
        do
        {
          v267._countAndFlagsBits = v178;
          v182 = v247;
          v264 = v181;
          v180(v247, v181, v267._object);
          v183 = URL.path.getter(v182);
          v185 = v184;
          __dst[0] = v183;
          __dst[1] = v184;
          v252._object = &stru_20 + 15;
          v253 = 0xE100000000000000;
          v186 = StringProtocol.components<A>(separatedBy:)(&v252._object, &type metadata for String, &type metadata for String, v260, v260);
          v185;
          v187 = *(v186 + 16);
          v188 = 2 * v187 + 1;
          v189 = v187 < v252._countAndFlagsBits;
          v190 = v187 - v252._countAndFlagsBits;
          v191 = 0;
          if (!v189)
          {
            v191 = v190;
          }

          __dst[0] = v186;
          __dst[1] = v186 + 32;
          __dst[2] = v191;
          __dst[3] = v188;
          v192 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ArraySlice<String>);
          v193 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type ArraySlice<String> and conformance ArraySlice<A>, &demangling cache variable for type metadata for ArraySlice<String>, &protocol conformance descriptor for ArraySlice<A>);
          v194 = BidirectionalCollection<>.joined(separator:)(47, 0xE100000000000000, v192, v193);
          *&v265 = v195;
          v186;
          (v256)(v247, v267._object);
          v249 = v179;
          v196 = v179[2];
          if (v179[3] >> 1 <= v196)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v179[3] >= 2uLL, v196 + 1, 1);
            v179 = v249;
          }

          v179[2] = v196 + 1;
          v197 = 2 * v196;
          v179[v197 + 4] = v194;
          v179[v197 + 5] = v265;
          v181 = v262 + v264;
          v178 = v267._countAndFlagsBits - 1;
          v180 = v261;
        }

        while (v267._countAndFlagsBits != 1);
        *&v265 = v179;
        v248;
        v198 = v259;
      }

      else
      {
        v248;
        v198 = _swiftEmptyArrayStorage;
        *&v265 = _swiftEmptyArrayStorage;
      }

      v199 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLUntypedColumn)>);
      v200 = swift_allocObject(v199, 96, 7);
      *(v200 + 16) = 2;
      *(v200 + 24) = 4;
      *(v200 + 32) = 0x7461506567616D69;
      *(v200 + 40) = 0xE900000000000068;
      __dst[0] = v198;
      v201 = alloca(24);
      v202 = alloca(32);
      v225 = __dst;
      *(v200 + 48) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
      *(v200 + 56) = v203 & 1;
      __dst[0];
      strcpy((v200 + 64), "imagefilename");
      *(v200 + 78) = -4864;
      __dst[0] = v265;
      v204 = alloca(24);
      v205 = alloca(32);
      v225 = __dst;
      *(v200 + 80) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
      *(v200 + 88) = v206 & 1;
      __dst[0];
      v207 = Dictionary.init(dictionaryLiteral:)(v200, &type metadata for String, &type metadata for MLUntypedColumn, &protocol witness table for String);
      v208 = v268;
      _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(v207);
      if (!v208)
      {
        v268 = 0;
        v209 = __dst[0];
        v210 = LOBYTE(__dst[1]);
        v211 = v269;
        v267._countAndFlagsBits = v269;
        v212 = v270;
        __dst[0] = 0x72656E6E69;
        __dst[1] = 0xE500000000000000;
        LODWORD(v264) = v270;
        outlined copy of Result<_DataTable, Error>(v269, v270);
        outlined copy of Result<_DataTable, Error>(v209, v210);
        v213 = specialized binaryDo<A, B, C>(_:_:_:)(v211, v212, v209, v210, &outlined read-only object #0 of static _ImageUtilities.getImageURLsAndObjectAnnotations(from:imageColumnName:labelColumnName:), __dst);
        LOBYTE(v211) = v214;
        *&v265 = v209;
        LODWORD(v261) = v210;
        outlined consume of Result<_DataTable, Error>(v209, v210);
        v215 = v267._countAndFlagsBits;
        LOBYTE(v210) = v264;
        outlined consume of Result<_DataTable, Error>(v267._countAndFlagsBits, v264);
        outlined consume of Result<_DataTable, Error>(v215, v210);
        v269 = v213;
        LOBYTE(v215) = v211;
        LOBYTE(v270) = v211 & 1;
        __dst[0] = v213;
        LOBYTE(__dst[1]) = v211 & 1;
        outlined copy of Result<_DataTable, Error>(v213, v211);
        outlined copy of Result<_DataTable, Error>(v213, v211);
        v216 = MLDataTable.size.getter();
        outlined consume of Result<_DataTable, Error>(__dst[0], __dst[1]);
        outlined consume of Result<_DataTable, Error>(v213, v215);
        if (v216)
        {
          outlined consume of Result<_DataTable, Error>(v265, v261);
          outlined consume of MLDataValue(v255, v254._object, v271);
          v217 = *(v263 + 8);
          v218 = v267._object;
          v217(v266._countAndFlagsBits, v267._object);
          v217(v266._object, v218);
          result = v269;
          v219 = v270;
          v220 = v250;
          *v250 = v269;
          *(v220 + 8) = v219;
          return result;
        }

        v221 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v221, 0, 0);
        *v222 = 0xD000000000000026;
        *(v222 + 8) = "llowing error state: " + 0x8000000000000000;
        *(v222 + 16) = 0;
        *(v222 + 32) = 0;
        *(v222 + 48) = 0;
        swift_willThrow();
        outlined consume of Result<_DataTable, Error>(v265, v261);
      }

      outlined consume of MLDataValue(v255, v254._object, v271);
LABEL_52:
      v139 = *(v263 + 8);
      v140 = v267._object;
      v139(v266._countAndFlagsBits, v267._object);
      v139(v266._object, v140);
      v47 = v269;
      v48 = v270;
      return outlined consume of Result<_DataTable, Error>(v47, v48);
    case 2u:
      v39 = v223;
      v40 = v226;
      v41 = v228;
      if (v224 == 1)
      {
        v267._object = v223;
        swift_errorRetain(v223);
        v41;
        v40;
        *&v230 = 0;
        *(&v230 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(87);
        v42._object = " required columns." + 0x8000000000000000;
        v42._countAndFlagsBits = 0xD000000000000055;
        String.append(_:)(v42);
        v43 = v267._object;
        *&__src[0] = v267._object;
        v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
        _print_unlocked<A, B>(_:_:)(__src, &v230, v44, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
        v265 = v230;
        v45 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v45, 0, 0);
        *v46 = v265;
        *(v46 + 16) = 0;
        *(v46 + 32) = 0;
        *(v46 + 48) = 0;
        swift_willThrow();
        outlined consume of Result<_DataTable, Error>(v43, 1);
        v47 = v43;
        v48 = 1;
        return outlined consume of Result<_DataTable, Error>(v47, v48);
      }

      *&v265 = v228;
      v73 = v225;
      v267._countAndFlagsBits = v227;
      outlined copy of Result<_DataTable, Error>(v223, 0);
      _DataTable.columnNames.getter();
      outlined consume of Result<_DataTable, Error>(v39, 0);
      v266._countAndFlagsBits = v73;
      *&v230 = v73;
      v266._object = v40;
      *(&v230 + 1) = v40;
      v74 = alloca(24);
      v75 = alloca(32);
      v225 = &v230;
      v76 = v261;
      LOBYTE(v73) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v223, *&__src[0]);
      v268 = v76;

      if ((v73 & 1) == 0 || (outlined copy of Result<_DataTable, Error>(v39, 0), _DataTable.columnNames.getter(), outlined consume of Result<_DataTable, Error>(v39, 0), *&v230 = v267._countAndFlagsBits, *(&v230 + 1) = v265, v77 = alloca(24), v78 = alloca(32), v225 = &v230, v79 = v268, v80 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v223, *&__src[0]), v268 = v79, , (v80 & 1) == 0))
      {
        v265;
        v266._object;
        v93 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v93, 0, 0);
        *v94 = 0xD000000000000022;
        *(v94 + 8) = "aining checkpoint." + 0x8000000000000000;
        *(v94 + 16) = 0;
        *(v94 + 32) = 0;
        *(v94 + 48) = 0;
        swift_willThrow();
        v47 = v39;
        v48 = 0;
        return outlined consume of Result<_DataTable, Error>(v47, v48);
      }

      v81 = v39;
      *&v230 = v39;
      BYTE8(v230) = 0;
      v82 = v266._countAndFlagsBits;
      v83 = v266._object;
      v267._object = v81;
      if (!(v266._countAndFlagsBits ^ 0x6C69666567616D69 | v266._object ^ 0xED0000656D616E65))
      {
        outlined copy of Result<_DataTable, Error>(v81, 0);
LABEL_16:
        v84 = v83;
        v85 = 0;
        v84;
        goto LABEL_45;
      }

      v115 = _stringCompareWithSmolCheck(_:_:expecting:)(v266._countAndFlagsBits, v266._object, 0x6C69666567616D69, 0xED0000656D616E65, 0);
      outlined copy of Result<_DataTable, Error>(v81, 0);
      if (v115)
      {
        v83;
        v85 = 0;
      }

      else
      {
        MLDataTable.willMutate()();
        v130._countAndFlagsBits = 0x7461506567616D69;
        v130._object = 0xE900000000000068;
        v131._countAndFlagsBits = v82;
        v131._object = v83;
        MLDataTable.renameImpl(named:to:)(v131, v130);
        if (!BYTE8(v230))
        {
          v141 = v230;
          outlined copy of Result<_DataTable, Error>(v230, 0);
          _DataTable.columnNamesDidChange()();
          outlined consume of Result<_DataTable, Error>(v141, 0);
          goto LABEL_16;
        }

        v83;
        v85 = 1;
      }

LABEL_45:
      v132 = v265;
      if (v267._countAndFlagsBits ^ 0x697461746F6E6E61 | v265 ^ 0xEA00000000006E6FLL && (_stringCompareWithSmolCheck(_:_:expecting:)(v267._countAndFlagsBits, v265, 0x697461746F6E6E61, 0xEA00000000006E6FLL, 0) & 1) == 0)
      {
        MLDataTable.willMutate()();
        v133._countAndFlagsBits = v267._countAndFlagsBits;
        v133._object = v132;
        v134._countAndFlagsBits = 0x697461746F6E6E61;
        v134._object = 0xEA00000000006E6FLL;
        MLDataTable.renameImpl(named:to:)(v133, v134);
        if (BYTE8(v230))
        {
          outlined consume of Result<_DataTable, Error>(v267._object, 0);
          v132;
          v85 = 1;
        }

        else
        {
          v142 = v230;
          v85 = 0;
          outlined copy of Result<_DataTable, Error>(v230, 0);
          _DataTable.columnNamesDidChange()();
          outlined consume of Result<_DataTable, Error>(v142, 0);
          outlined consume of Result<_DataTable, Error>(v267._object, 0);
          v132;
        }
      }

      else
      {
        outlined consume of Result<_DataTable, Error>(v267._object, 0);
        v132;
      }

      result = v230;
      v143 = v250;
      *v250 = v230;
      *(v143 + 8) = v85;
      return result;
    case 3u:
      v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      v50 = *(v49 + 48);
      v51 = *(&v223 + v50);
      v52 = *(&v223 + v50 + 8);
      v53 = *(v49 + 64);
      v267._object = *(&v223 + v53);
      *&v265 = *(&v223 + v53 + 8);
      (*(v262 + 32))(v267._countAndFlagsBits, &v223, v264);
      v54._countAndFlagsBits = v51;
      v54._object = v52;
      v55 = DataFrame.indexOfColumn(_:)(v54);
      value = v55.value;
      is_nil = v55.is_nil;
      v52;
      if (is_nil)
      {
        v265;
LABEL_18:
        v91 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v91, 0, 0);
        *v92 = 0xD000000000000022;
        *(v92 + 8) = "aining checkpoint." + 0x8000000000000000;
        *(v92 + 16) = 0;
        *(v92 + 32) = 0;
        *(v92 + 48) = 0;
        swift_willThrow();
        return (*(v262 + 8))(v267._countAndFlagsBits, v264);
      }

      v86._countAndFlagsBits = v267._object;
      v87 = v265;
      v86._object = v265;
      v88 = DataFrame.indexOfColumn(_:)(v86);
      v89 = v88.value;
      v90 = v88.is_nil;
      v87;
      if (v90)
      {
        goto LABEL_18;
      }

      *&v265 = *(v262 + 16);
      v100 = v259;
      (v265)(v259, v267._countAndFlagsBits, v264);
      v101 = DataFrame.subscript.modify(&v230, value);
      AnyColumn.name.setter(0x7461506567616D69, 0xE900000000000068);
      v101(&v230, 0);
      v102 = DataFrame.subscript.modify(&v230, v89);
      AnyColumn.name.setter(0x697461746F6E6E61, 0xEA00000000006E6FLL);
      v103 = v100;
      v104 = v264;
      v102(&v230, 0);
      v105 = v257;
      *a6.i64 = (v265)(v257, v103, v104);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v105, 0, a6);
      v106 = *(v262 + 8);
      v106(v103, v104);
      return (v106)(v267._countAndFlagsBits, v104);
  }
}

uint64_t static _ImageUtilities.validateOneImageURL(from:)()
{
  URL._bridgeToObjectiveC()(v0);
  v2 = v1;
  v3 = 0;
  v4 = CGImageSourceCreateWithURL(v1, 0);

  if (v4)
  {
    v3 = 0;
    v5 = CGImageSourceCopyPropertiesAtIndex(v4, 0, 0);

    if (v5)
    {

      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

void *static _ImageUtilities.validateImageURLs(from:)(uint64_t a1)
{
  v49 = type metadata accessor for URL(0);
  v1 = *(v49 - 8);
  v2 = *(v1 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v44 = &v35;
  v5 = alloca(v2);
  v6 = alloca(v2);
  v7 = &v35;
  v8 = *(a1 + 16);
  if (!v8)
  {
    return _swiftEmptyArrayStorage;
  }

  v40 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v9 = a1 + v40;
  v42 = *(v1 + 16);
  v48 = *(v1 + 72);
  v38 = "es or has incorrect format." + 0x8000000000000000;
  v41 = a1;

  v50 = _swiftEmptyArrayStorage;
  v43 = v1;
  v39 = &v35;
  do
  {
    v47 = v8;
    v10 = v42(v7, v9, v49);
    URL._bridgeToObjectiveC()(v10);
    v12 = v11;
    v13 = CGImageSourceCreateWithURL(v11, 0);

    if (v13 && (v14 = CGImageSourceCopyPropertiesAtIndex(v13, 0, 0), v13, v14))
    {

      v42(v44, v7, v49);
      if (swift_isUniquelyReferenced_nonNull_native(v50))
      {
        v15 = v47;
        v16 = v50;
      }

      else
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50[2] + 1, 1, v50);
        v15 = v47;
      }

      v17 = v16[2];
      v18 = v48;
      if (v16[3] >> 1 <= v17)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v16[3] >= 2uLL, v17 + 1, 1, v16);
        v18 = v48;
        v16 = v33;
      }

      v16[2] = v17 + 1;
      v50 = v16;
      v19 = v16 + v40 + v18 * v17;
      v20 = v18;
      v21 = v43;
      (*(v43 + 32))(v19, v44, v49);
    }

    else
    {
      v45 = 0;
      v46 = 0xE000000000000000;
      v36 = v9;
      _StringGuts.grow(_:)(30);
      v22 = v46;
      v46;
      v45 = 0xD00000000000001BLL;
      v46 = v38;
      v23._countAndFlagsBits = URL.path.getter(v22);
      object = v23._object;
      String.append(_:)(v23);
      object;
      v25._countAndFlagsBits = 46;
      v25._object = 0xE100000000000000;
      v9 = v36;
      String.append(_:)(v25);
      v26 = v45;
      v37 = v45;
      v27 = v46;
      v51 = static os_log_type_t.info.getter(46);
      v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any>);
      v29 = swift_allocObject(v28, 64, 7);
      v29[2] = 1;
      v29[3] = 2;
      v29[7] = &type metadata for String;
      v29[4] = v26;
      v29[5] = v27;

      print(_:separator:terminator:)(v29, 32, 0xE100000000000000, 10, 0xE100000000000000);
      v29;
      type metadata accessor for OS_os_log();
      v30 = static OS_os_log.default.getter(0, 32);
      v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
      v32 = swift_allocObject(v31, 72, 7);
      v32[2] = 1;
      v32[3] = 2;
      v32[7] = &type metadata for String;
      v32[8] = lazy protocol witness table accessor for type String and conformance String();
      v32[4] = v37;
      v32[5] = v27;

      os_log(_:dso:log:type:_:)("%@\n");
      v27;
      v25._countAndFlagsBits = v30;
      v7 = v39;

      v32;
      v21 = v43;
      v15 = v47;
      v20 = v48;
    }

    (*(v21 + 8))(v7, v49);
    v9 += v20;
    v8 = v15 - 1;
  }

  while (v8);
  v41;
  return v50;
}

uint64_t *static _ImageUtilities.getImageURLsAndLabels(from:)(uint64_t a1)
{
  v97 = v1;
  v92 = type metadata accessor for UTType(0);
  v95 = *(v92 - 8);
  v2 = *(v95 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v96 = &v88;
  v5 = alloca(v2);
  v6 = alloca(v2);
  v94 = &v88;
  *&v91 = type metadata accessor for URL(0);
  v93 = *(v91 - 8);
  v7 = v93[8];
  v8 = alloca(v7);
  v9 = alloca(v7);
  v89 = &v88;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v12 = &v88;
  v13 = type metadata accessor for MLImageClassifier.DataSource(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  outlined init with copy of MLTrainingSessionParameters(a1, &v88, type metadata accessor for MLImageClassifier.DataSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v88, v13);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return v88;
    }

    v12 = v89;
    v18 = v89;
    v19 = v93;
    (v93[4])(v89, &v88, v91);
    v20 = v96;
    static UTType.image.getter(v18);
    v21 = v97;
    v22 = static _FileUtilities.collectFilesLabeledByFileName(at:type:)(v12, v20);
    if (v21)
    {
      v97 = v21;
      (*(v95 + 8))(v20, v92);
      v23 = v12;
      v24 = v91;
      return (*(v19 + 8))(v23, v24);
    }

    v30 = v22;
    v31 = v20;
  }

  else
  {
    v25 = v91;
    v19 = v93;
    (v93[4])(&v88, &v88, v91);
    v26 = v94;
    static UTType.image.getter(&v88);
    v27 = v97;
    v28 = static _FileUtilities.collectFilesLabeledByDirectoryName(at:type:)(&v88, v26);
    if (v27)
    {
      v97 = v27;
      (*(v95 + 8))(v94, v92);
      v23 = &v88;
      v24 = v25;
      return (*(v19 + 8))(v23, v24);
    }

    v30 = v28;
    v31 = v94;
  }

  (*(v95 + 8))(v31, v92);
  (*(v19 + 8))(v12, v91);

  v32 = specialized Sequence.flatMap<A>(_:)(v30);
  v95 = 0;
  v30;
  v33 = static _ImageUtilities.validateImageURLs(from:)(v32);
  v32;
  v34 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation3URLV_SayAFGTt0g5(v33);
  v35 = 1 << *(v30 + 32);
  v36 = ~(-1 << v35);
  if (v35 >= 64)
  {
    v36 = -1;
  }

  v96 = v34;
  v94 = v30;
  v37 = *(v30 + 64) & v36;
  v97 = (v35 + 63) >> 6;
  v38 = _swiftEmptyDictionarySingleton;
  *&v91 = 0;
  while (1)
  {
    if (v37)
    {
      v39 = v94;
      v40 = v91;
      goto LABEL_31;
    }

    v41 = v91 + 1;
    v39 = v94;
    if (__OFADD__(1, v91))
    {
      BUG();
    }

    if (v41 >= v97)
    {
      goto LABEL_36;
    }

    v37 = *&v94[8 * v41 + 64];
    if (v37)
    {
      v40 = v91 + 1;
      goto LABEL_31;
    }

    v42 = v91 + 2;
    if (v91 + 2 >= v97)
    {
      goto LABEL_36;
    }

    v37 = *&v94[8 * v41 + 72];
    if (!v37)
    {
      v42 = v91 + 3;
      if (v91 + 3 >= v97)
      {
        goto LABEL_36;
      }

      v37 = *&v94[8 * v41 + 80];
      if (!v37)
      {
        v42 = v91 + 4;
        if (v91 + 4 >= v97)
        {
          goto LABEL_36;
        }

        v37 = *&v94[8 * v41 + 88];
        if (!v37)
        {
          v42 = v91 + 5;
          if (v91 + 5 >= v97)
          {
            goto LABEL_36;
          }

          v37 = *&v94[8 * v41 + 96];
          if (!v37)
          {
            v42 = v91 + 6;
            if (v91 + 6 >= v97)
            {
              goto LABEL_36;
            }

            v37 = *&v94[8 * v41 + 104];
            if (!v37)
            {
              break;
            }
          }
        }
      }
    }

    v40 = v42;
LABEL_31:
    _BitScanForward64(&v43, v37);
    v92 = (v37 - 1) & v37;
    *&v91 = v40;
    v44 = v43 | (v40 << 6);
    v45 = *(*(v39 + 7) + 8 * v44);
    v44 *= 16;
    v46 = *(v39 + 6);
    v93 = *(v46 + v44);
    v47 = *(v46 + v44 + 8);
    v48 = v96;

    v49 = v95;
    v50 = specialized _ArrayProtocol.filter(_:)(v45, v48);
    v95 = v49;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v38);
    *&v90 = v38;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v50, v93, v47, isUniquelyReferenced_nonNull_native);
    v47;
    v37 = v92;
    v38 = v90;
  }

  v52 = v91 + 7;
  while (v52 < v97)
  {
    v37 = *&v94[8 * v52++ + 64];
    if (v37)
    {
      v40 = v52 - 1;
      goto LABEL_31;
    }
  }

LABEL_36:
  v96;

  v53 = v95;
  v54 = specialized _NativeDictionary.filter(_:)(v38);
  v97 = v53;
  v89 = v38;
  v38;
  v55 = 1 << *(v54 + 32);
  v56 = ~(-1 << v55);
  if (v55 >= 64)
  {
    v56 = -1;
  }

  v57 = v54[8] & v56;
  v96 = ((v55 + 63) >> 6);
  v94 = "tted text file " + 0x8000000000000000;
  v93 = v54;

  v58 = 0;
  while (2)
  {
    if (v57)
    {
      v59 = v58;
      v60 = v93;
LABEL_59:
      _BitScanForward64(&v63, v57);
      *&v91 = (v57 - 1) & v57;
      v64 = *(v60 + 48);
      v95 = v59;
      v65 = (v59 << 10) | (16 * v63);
      v66 = *(v64 + v65);
      v67 = *(v64 + v65 + 8);
      *&v90 = 0;
      *(&v90 + 1) = 0xE000000000000000;

      _StringGuts.grow(_:)(29);
      SBYTE8(v90);
      *&v90 = 0xD000000000000019;
      *(&v90 + 1) = v94;
      v68._countAndFlagsBits = v66;
      v68._object = v67;
      String.append(_:)(v68);
      v67;
      v68._countAndFlagsBits = 11815;
      v68._object = 0xE200000000000000;
      String.append(_:)(v68);
      v69 = *(&v90 + 1);
      v70 = v90;
      LOBYTE(v92) = static os_log_type_t.error.getter(11815);
      v71 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any>);
      v72 = swift_allocObject(v71, 64, 7);
      *(v72 + 16) = 1;
      *(v72 + 24) = 2;
      *(v72 + 56) = &type metadata for String;
      *(v72 + 32) = __PAIR128__(v69, v70);

      print(_:separator:terminator:)(v72, 32, 0xE100000000000000, 10, 0xE100000000000000);
      v72;
      type metadata accessor for OS_os_log();
      v73 = static OS_os_log.default.getter(0, 32);
      v74 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
      v75 = swift_allocObject(v74, 72, 7);
      *(v75 + 16) = 1;
      *(v75 + 24) = 2;
      *(v75 + 56) = &type metadata for String;
      *(v75 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v75 + 32) = __PAIR128__(v69, v70);

      os_log(_:dso:log:type:_:)("%@\n");
      LOBYTE(v68._countAndFlagsBits) = v69;
      v57 = v91;
      v68._countAndFlagsBits;

      v75;
      v58 = v95;
      continue;
    }

    break;
  }

  v61 = v58 + 1;
  v60 = v93;
  if (__OFADD__(1, v58))
  {
    BUG();
  }

  if (v61 >= v96)
  {
    goto LABEL_60;
  }

  v57 = v93[v61 + 8];
  if (v57)
  {
    v59 = v58 + 1;
    goto LABEL_59;
  }

  v59 = v58 + 2;
  if (v58 + 2 >= v96)
  {
    goto LABEL_60;
  }

  v57 = v93[v61 + 9];
  if (v57)
  {
    goto LABEL_59;
  }

  v59 = v58 + 3;
  if (v58 + 3 >= v96)
  {
    goto LABEL_60;
  }

  v57 = v93[v61 + 10];
  if (v57)
  {
    goto LABEL_59;
  }

  v59 = v58 + 4;
  if (v58 + 4 >= v96)
  {
    goto LABEL_60;
  }

  v57 = v93[v61 + 11];
  if (v57)
  {
    goto LABEL_59;
  }

  v59 = v58 + 5;
  if (v58 + 5 >= v96)
  {
    goto LABEL_60;
  }

  v57 = v93[v61 + 12];
  if (v57)
  {
    goto LABEL_59;
  }

  v59 = v58 + 6;
  if (v58 + 6 >= v96)
  {
    goto LABEL_60;
  }

  v57 = v93[v61 + 13];
  if (v57)
  {
    goto LABEL_59;
  }

  v62 = v58 + 7;
  while (v62 < v96)
  {
    v57 = v93[v62++ + 8];
    if (v57)
    {
      v59 = v62 - 1;
      goto LABEL_59;
    }
  }

LABEL_60:

  if (*(v60 + 16))
  {
    v89;
    *&v90 = 0;
    *(&v90 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(69);
    v76._object = "eature data sources." + 0x8000000000000000;
    v76._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v76);
    v77 = specialized Collection.first.getter(v60);
    if (!v78)
    {
      v77 = 0;
    }

    v79._object = 0xE000000000000000;
    if (v78)
    {
      v79._object = v78;
    }

    v79._countAndFlagsBits = v77;
    String.append(_:)(v79);
    v79._object;
    v80._object = "Missing data for label " + 0x8000000000000000;
    v80._countAndFlagsBits = 0xD000000000000029;
    String.append(_:)(v80);
    v81 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [URL]);
    v82 = Dictionary.Keys.description.getter(v60, &type metadata for String, v81, &protocol witness table for String);
    v84 = v83;
    v80._countAndFlagsBits = v82;
    v80._object = v83;
    String.append(_:)(v80);
    v84;
    v80._countAndFlagsBits = 46;
    v80._object = 0xE100000000000000;
    String.append(_:)(v80);
    v91 = v90;
    v85 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v86 = swift_allocError(&type metadata for MLCreateError, v85, 0, 0);
    *v87 = v91;
    *(v87 + 16) = 0;
    *(v87 + 32) = 0;
    *(v87 + 48) = 0;
    v97 = v86;
    swift_willThrow();
  }

  else
  {

    return v89;
  }
}

uint64_t *static _ImageUtilities.generateImageTable(_:)(uint64_t a1)
{
  v49 = v1;

  v51 = specialized _copyCollectionToContiguousArray<A>(_:)(a1);
  specialized MutableCollection<>.sort(by:)(&v51);
  if (v2)
  {

    BUG();
  }

  a1;
  v46 = *(v51 + 2);
  if (!v46)
  {

    v4 = _swiftEmptyArrayStorage;
    v56 = _swiftEmptyArrayStorage;
    goto LABEL_43;
  }

  v55 = a1;
  v54 = 0;
  v50 = v51;
  v47 = v51 + 32;
  v3 = 0;
  v4 = _swiftEmptyArrayStorage;
  v56 = _swiftEmptyArrayStorage;
  do
  {
    v53 = v4;
    v45 = v3;
    v5 = *&v47[16 * v3];
    v6 = *&v47[16 * v3 + 8];
    v7 = *(v55 + 16);

    v8 = _swiftEmptyArrayStorage;
    if (v7)
    {

      v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      v8 = _swiftEmptyArrayStorage;
      if (v10)
      {
        v8 = *(*(v55 + 56) + 8 * v9);
      }

      v6;
    }

    v11 = v54;
    ML15_VideoUtilitiesV08generateC5TableyAA06MLDataF0VSDySSSay10Foundation3URLVGGKFZSSAIcfu0_33_43697e1f61f7e10b647d882195ad8775AISSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation3URLVG_SSs5NeverOTg5148_s8CreateML15_VideoUtilitiesV08generateC5TableyAA06MLDataF0VSDySSSay10Foundation3URLVGGKFZSSAIcfu0_33_43697e1f61f7e10b647d882195ad8775AISSTf3nnnpk_nTf1cn_n(v8);
    v54 = v11;
    v8;
    v52 = ML15_VideoUtilitiesV08generateC5TableyAA06MLDataF0VSDySSSay10Foundation3URLVGGKFZSSAIcfu0_33_43697e1f61f7e10b647d882195ad8775AISSTf3nnnpk_nTf1cn_n;
    v13 = ML15_VideoUtilitiesV08generateC5TableyAA06MLDataF0VSDySSSay10Foundation3URLVGGKFZSSAIcfu0_33_43697e1f61f7e10b647d882195ad8775AISSTf3nnnpk_nTf1cn_n[2];
    if (!v13)
    {
      v6;
      v14 = _swiftEmptyArrayStorage;
LABEL_14:
      v18 = v56;
      goto LABEL_16;
    }

    v14 = static Array._allocateBufferUninitialized(minimumCapacity:)(v13, &type metadata for String);
    v14[2] = v13;
    v14[4] = v5;
    v14[5] = v6;
    if (v13 == 1)
    {
      goto LABEL_14;
    }

    v48 = v14;
    v15 = v14 + 6;
    v16 = v13 - 2;
    while (1)
    {
      *v15 = v5;
      v15[1] = v6;
      if (v16-- == 0)
      {
        break;
      }

      v15 += 2;
    }

    v18 = v56;
    v14 = v48;
LABEL_16:
    v19 = v14[2];
    v20 = v18[2];
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      BUG();
    }

    v22 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v18);
    v24 = v56;
    if (!isUniquelyReferenced_nonNull_native || v56[3] >> 1 < v21)
    {
      if (v20 > v21)
      {
        v21 = v20;
      }

      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v21, 1, v56);
    }

    v25 = v22;
    v26 = v22[2] == 0;
    v56 = v24;
    if (v26)
    {
      v4 = v53;
      if (v19)
      {
        BUG();
      }
    }

    else
    {
      v27 = v24[2];
      v4 = v53;
      if ((v24[3] >> 1) - v27 < v19)
      {
        BUG();
      }

      swift_arrayInitWithCopy(&v24[2 * v27 + 4], (v25 + 4), v19, &type metadata for String);
      if (v19)
      {
        v28 = __OFADD__(v56[2], v19);
        v29 = v56[2] + v19;
        if (v28)
        {
          BUG();
        }

        v56[2] = v29;
      }
    }

    v25;
    v30 = v52[2];
    v31 = v4[2];
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      BUG();
    }

    v33 = swift_isUniquelyReferenced_nonNull_native(v4);
    if (!v33 || v4[3] >> 1 < v32)
    {
      if (v31 > v32)
      {
        v32 = v31;
      }

      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v33, v32, 1, v4);
    }

    v34 = v52;
    if (v52[2])
    {
      v35 = v4[2];
      if ((v4[3] >> 1) - v35 < v30)
      {
        BUG();
      }

      swift_arrayInitWithCopy(&v4[2 * v35 + 4], (v52 + 4), v30, &type metadata for String);
      if (v30)
      {
        v28 = __OFADD__(v4[2], v30);
        v36 = v4[2] + v30;
        if (v28)
        {
          BUG();
        }

        v4[2] = v36;
      }
    }

    else if (v30)
    {
      BUG();
    }

    v3 = v45 + 1;
    v34;
  }

  while (v45 + 1 != v46);

LABEL_43:
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLDataValueConvertible)>);
  inited = swift_initStackObject(v37, v44);
  inited[2] = 2;
  inited[3] = 4;
  inited[4] = 0x6C6562616CLL;
  inited[5] = 0xE500000000000000;
  v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  inited[9] = v39;
  v40 = lazy protocol witness table accessor for type [String] and conformance <A> [A]();
  inited[10] = v40;
  inited[6] = v56;
  inited[11] = 0x7461506567616D69;
  inited[12] = 0xE900000000000068;
  inited[16] = v39;
  inited[17] = v40;
  inited[13] = v4;
  v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLDataValueConvertible);
  v42 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, v41, &protocol witness table for String);
  return MLDataTable.init(dictionary:)(v42);
}

void *static _ImageUtilities.getImageURLsAndAnnotations(from:)(void *a1, __m128 a2)
{
  *&v163 = v3;
  v171 = a1;
  v154 = v2;
  v170 = type metadata accessor for DataFrame(0);
  v164 = *(v170 - 8);
  v4 = *(v164 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v155 = &v134;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v167._countAndFlagsBits = &v134;
  v9 = type metadata accessor for UTType(0);
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v158 = &v134;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v159 = &v134;
  v169 = type metadata accessor for URL(0);
  v168 = *(v169 - 1);
  v16 = v168[8];
  v17 = alloca(v16);
  v18 = alloca(v16);
  v160 = &v134;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v167._object = &v134;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v162 = &v134;
  v23 = alloca(v16);
  v24 = alloca(v16);
  v166 = &v134;
  v25 = alloca(v16);
  v26 = alloca(v16);
  ML14_UntypedColumnC_s5Error_pTt1g5 = &v134;
  v27 = alloca(v16);
  v28 = alloca(v16);
  v161 = &v134;
  v29 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v30 = *(*(v29 - 8) + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  outlined init with copy of MLTrainingSessionParameters(v171, &v134, type metadata accessor for MLHandPoseClassifier.DataSource);
  switch(swift_getEnumCaseMultiPayload(&v134, v29))
  {
    case 0u:
      v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
      v34 = &v134 + v33[12];
      v35 = v33[16];
      v167._countAndFlagsBits = *(&v134 + v35);
      v171 = *(__src + v35);
      v36 = v33[20];
      v164 = *(&v134 + v36);
      v170 = *(__src + v36);
      v37 = v168;
      v38 = v168[4];
      v38(v166, &v134, v169);
      v39 = v162;
      v40 = v34;
      v41 = v169;
      v38(v162, v40, v169);
      (v37[2])(v167._object, v39, v41);
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
      LOBYTE(v136) = 1;
      v137 = 44;
      v138 = 0xE100000000000000;
      v139 = 0;
      v140 = 0xE000000000000000;
      v141 = 92;
      v142 = 0xE100000000000000;
      v143 = 1;
      v144 = 34;
      v145 = 0xE100000000000000;
      v146 = 1;
      v147 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
      v148 = 10;
      v149 = 0xE100000000000000;
      v150 = 0;
      v151 = 1;
      v152 = 0;
      outlined retain of MLDataTable.ParsingOptions(__src);
      outlined release of MLDataTable.ParsingOptions(&v136);
      memcpy(__dst, __src, sizeof(__dst));
      v42 = v163;
      MLDataTable.init(contentsOf:options:)(v167._object, __dst);
      v43 = v169;
      v44 = v37;
      v45 = v166;
      if (v42)
      {
        v46 = v44[1];
        v46(v162, v169);
        v170;
        v171;
        return (v46)(v45, v43);
      }

      *&v163 = 0;
      v172 = v156;
      LOBYTE(v173) = v157;
      v86._countAndFlagsBits = v167._countAndFlagsBits;
      v87 = v171;
      v86._object = v171;
      MLDataTable.subscript.getter(v86);
      object = *&__dst[0];
      v89 = BYTE8(__dst[0]);
      if (BYTE8(__dst[0]) || (outlined copy of Result<_DataTable, Error>(*&__dst[0], 0), v167._object = object, _UntypedColumn.type.getter(), object = v167._object, outlined consume of Result<_DataTable, Error>(v167._object, 0), v156 != 2))
      {
        outlined consume of Result<_DataTable, Error>(object, v89);
        v170;
        *&__dst[0] = 0;
        *(&__dst[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(26);
        SBYTE8(__dst[0]);
        *&__dst[0] = 0x206E6D756C6F43;
        *(&__dst[0] + 1) = 0xE700000000000000;
        v108._countAndFlagsBits = v167._countAndFlagsBits;
        v108._object = v87;
        String.append(_:)(v108);
        v87;
        v108._countAndFlagsBits = 0xD000000000000011;
        String.append(_:)(v108);
        v163 = __dst[0];
        v109 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v109, 0, 0);
        *v110 = v163;
        *(v110 + 16) = 0;
        *(v110 + 32) = 0;
        *(v110 + 48) = 0;
        swift_willThrow();
        v111 = v168[1];
        v112 = v162;
        v113 = v169;
LABEL_29:
        v111(v112, v113);
        v111(v166, v113);
        return outlined consume of Result<_DataTable, Error>(v172, v173);
      }

      outlined copy of Result<_DataTable, Error>(object, 0);
      _UntypedColumn.valueAtIndex(index:)(0, 0.0);
      v91 = *(&__dst[0] + 1);
      v90 = *&__dst[0];
      if (LOBYTE(__dst[1]) != 2)
      {
        outlined consume of MLDataValue(*&__dst[0], *(&__dst[0] + 1), __dst[1]);
        v90 = 0;
        v91 = 0xE000000000000000;
      }

      outlined consume of Result<_DataTable, Error>(v167._object, 0);
      *&__dst[0] = v90;
      *(&__dst[0] + 1) = v91;
      v92 = String.init<A>(_:)(__dst, &type metadata for String, &protocol witness table for String, &protocol witness table for String);
      v94 = v93;
      URL.init(fileURLWithPath:)(v92, v93);
      v94;
      v95 = objc_opt_self(NSFileManager);
      v96 = [v95 defaultManager];
      v97 = v96;
      URL.path.getter(v96);
      v99 = v98;
      v100 = String._bridgeToObjectiveC()();
      v99;
      v101 = [v97 fileExistsAtPath:v100];

      if (v101)
      {
        v102 = v171;
        v103 = v170;
        countAndFlagsBits = v167._countAndFlagsBits;
      }

      else
      {
        v119 = v167._object;
        outlined copy of Result<_DataTable, Error>(v167._object, 0);
        MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v119, 0, 0.0);
        v121 = alloca(24);
        v122 = alloca(32);
        *(&__src[0] + 1) = v166;
        v123 = v163;
        v124 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_SSs5NeverOTg5(partial apply for closure #1 in static _VideoUtilities.getVideoURLsAndAnnotations(from:), &v134, MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5);
        *&v163 = v123;
        MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
        *&__dst[0] = v124;
        v125 = alloca(24);
        v126 = alloca(24);
        *(&__src[0] + 1) = __dst;
        ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
        v128 = v127;
        __dst[0];
        v102 = v171;

        MLDataTable.willMutate()();
        *&__dst[0] = ML14_UntypedColumnC_s5Error_pTt1g5;
        BYTE8(__dst[0]) = v128 & 1;
        countAndFlagsBits = v167._countAndFlagsBits;
        MLDataTable.setColumnImpl(newColumn:named:)(__dst, v167._countAndFlagsBits, v102);
        v102;
        outlined consume of Result<_DataTable, Error>(*&__dst[0], SBYTE8(__dst[0]));
        if (!v173)
        {
          v129 = v172;
          outlined copy of Result<_DataTable, Error>(v172, 0);
          _DataTable.columnNamesDidChange()();
          outlined consume of Result<_DataTable, Error>(v129, 0);
        }

        v103 = v170;
      }

      v130 = v163;
      static _ImageUtilities.renameImageTableColumns(table:imageColumn:labelColumn:)(&v172, countAndFlagsBits, v102, v164, v103);
      v131 = v102;
      v113 = v169;
      v132 = v168;
      if (v130)
      {
        v131;
        v103;
        outlined consume of Result<_DataTable, Error>(v167._object, 0);
        v111 = v132[1];
        v111(v160, v113);
        v112 = v162;
        goto LABEL_29;
      }

      v131;
      v103;
      outlined consume of Result<_DataTable, Error>(v167._object, 0);
      v133 = v132[1];
      v133(v160, v113);
      v133(v162, v113);
      v133(v166, v113);
LABEL_15:
      result = v172;
      v75 = v173;
      v76 = v154;
      *v154 = v172;
      *(v76 + 8) = v75;
      return result;
    case 1u:
      v171 = v9;
      v170 = v10;
      v63 = ML14_UntypedColumnC_s5Error_pTt1g5;
      v54 = v169;
      v55 = v168;
      (v168[4])(ML14_UntypedColumnC_s5Error_pTt1g5, &v134, v169);
      v64 = v158;
      static UTType.image.getter();
      v65 = v163;
      v66 = static _FileUtilities.collectFilesLabeledByDirectoryName(at:type:)(v63, v64);
      if (v65)
      {
        (*(v170 + 8))(v158, v171);
        v59 = ML14_UntypedColumnC_s5Error_pTt1g5;
        return (v55[1])(v59, v54);
      }

      v105 = v66;
      (*(v170 + 8))(v158, v171);
      static _ImageUtilities.generateImageTable(_:)(v105);
      v105;
      v116 = v136;
      v117 = v137;
      v172 = v136;
      LOBYTE(v173) = v137 & 1;
      LOBYTE(v137) = v137 & 1;
      outlined copy of Result<_DataTable, Error>(v136, v117);
      static _ImageUtilities.validateImageInput(trainingData:imageColumn:labelColumn:)(&v136, 0x7461506567616D69, 0xE900000000000068, 0x6C6562616CLL, 0xE500000000000000);
      outlined consume of Result<_DataTable, Error>(v116, v117);
      v118 = ML14_UntypedColumnC_s5Error_pTt1g5;
      goto LABEL_31;
    case 2u:
      v171 = v9;
      v170 = v10;
      v53 = v161;
      v54 = v169;
      v55 = v168;
      (v168[4])(v161, &v134, v169);
      v56 = v159;
      static UTType.image.getter();
      v57 = v163;
      v58 = static _FileUtilities.collectFilesLabeledByFileName(at:type:)(v53, v56);
      if (v57)
      {
        (*(v170 + 8))(v159, v171);
        v59 = v161;
        return (v55[1])(v59, v54);
      }

      v85 = v58;
      (*(v170 + 8))(v159, v171);
      static _ImageUtilities.generateImageTable(_:)(v85);
      v85;
      v114 = v136;
      v115 = v137;
      v172 = v136;
      LOBYTE(v173) = v137 & 1;
      LOBYTE(v137) = v137 & 1;
      outlined copy of Result<_DataTable, Error>(v136, v115);
      static _ImageUtilities.validateImageInput(trainingData:imageColumn:labelColumn:)(&v136, 0x7461506567616D69, 0xE900000000000068, 0x6C6562616CLL, 0xE500000000000000);
      outlined consume of Result<_DataTable, Error>(v114, v115);
      v118 = v161;
LABEL_31:
      (v168[1])(v118, v169);
      goto LABEL_15;
    case 3u:
      v60 = __src[1];
      v61 = __src[2];
      v62 = __src[3];
      outlined consume of Result<_DataTable, Error>(v134, __src[0]);
      v62;
      v61;
      v60;
      goto LABEL_13;
    case 4u:
      v48 = __src[0];
      v171 = *(&__src[0] + 1);
      v168 = *(&__src[1] + 1);
      v49 = *&__src[1];
      v50 = *&__src[2];
      v172 = v134;
      LOBYTE(v173) = __src[0] & 1;
      v169 = v134;
      outlined copy of Result<_DataTable, Error>(v134, __src[0]);
      v51 = v171;
      v171 = v50;
      v52 = v163;
      static _ImageUtilities.renameImageTableColumns(table:imageColumn:labelColumn:)(&v172, v51, v49, v168, v50);
      if (!v52)
      {
        v49;
        v171;
        outlined consume of Result<_DataTable, Error>(v169, v48);
        goto LABEL_15;
      }

      v49;
      v171;
      outlined consume of Result<_DataTable, Error>(v169, v48);
      return outlined consume of Result<_DataTable, Error>(v172, v173);
    case 5u:
      v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *(__src + v67[12]);
      *(__src + v67[16]);
      *(__src + v67[20]);
      (*(v164 + 8))(&v134, v170);
LABEL_13:
      empty = tc_v1_sframe_create_empty(0);
      if (!empty)
      {
        BUG();
      }

      v69 = empty;
      v70 = type metadata accessor for CMLTable();
      v71 = swift_allocObject(v70, 24, 7);
      *(v71 + 16) = v69;
      v72 = type metadata accessor for _DataTable();
      swift_allocObject(v72, 40, 7);
      v172 = _DataTable.init(impl:)(v71);
      LOBYTE(v173) = 0;
      v73 = static os_log_type_t.info.getter(v71);
      v74._countAndFlagsBits = 0xD0000000000000A7;
      v74._object = "Skipped invalid image file " + 0x8000000000000000;
      log(_:type:)(v74, v73);
      goto LABEL_15;
    case 6u:
      v77 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
      v78 = *(v77 + 48);
      v168 = *(&v134 + v78);
      v169 = *(__src + v78);
      v79 = *(v77 + 64);
      v166 = *(&v134 + v79);
      v171 = *(__src + v79);
      v80 = v167._countAndFlagsBits;
      v81 = v170;
      v82 = v164;
      (*(v164 + 32))(v167._countAndFlagsBits, &v134, v170);
      v83 = v155;
      *a2.i64 = (*(v82 + 16))(v155, v80, v81);
      v84 = v163;
      MLDataTable.init(_:convertArraysToShapedArrays:)(v83, 0, a2);
      if (v84)
      {
        (*(v82 + 8))(v167._countAndFlagsBits, v170);
        v171;
        return v169;
      }

      v172 = v136;
      LOBYTE(v173) = v137;
      v106 = v169;
      v107 = v171;
      static _ImageUtilities.renameImageTableColumns(table:imageColumn:labelColumn:)(&v172, v168, v169, v166, v171);
      (*(v82 + 8))(v167._countAndFlagsBits, v170);
      v106;
      v107;
      goto LABEL_15;
  }
}

uint64_t static _ImageUtilities.validateImageInput(trainingData:imageColumn:labelColumn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = v5;
  v19 = a5;
  v20 = a4;
  v18 = a3;
  v6 = *a1;
  v7 = *(a1 + 8);
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v22, v13);
  inited[2] = 1;
  inited[3] = 2;
  v17 = a2;
  inited[4] = a2;
  inited[5] = v18;
  v21 = v6;
  v23 = v6;
  v24 = v7;

  v9 = v16;
  static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v23, 0x7461506567616D69, 0xE900000000000068, inited);
  if (v9)
  {
    return inited;
  }

  v23 = v21;
  v24 = v7;
  v10 = swift_initStackObject(v22, v14);
  v10[2] = 1;
  v10[3] = 2;
  v10[4] = v20;
  v10[5] = v19;

  static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v23, 0x6C6562616CLL, 0xE500000000000000, v10);
  swift_setDeallocating(v10);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  swift_setDeallocating(inited);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v23 = v21;
  v24 = v7;
  v11 = swift_initStackObject(v22, v15);
  v11[2] = 1;
  v11[3] = 2;
  v11[4] = v17;
  v11[5] = v18;
  v25 = 2;
  v26[0] = 2;

  static _ValidationUtilities.validateTableTypes(table:featureColumns:featureType:labelColumn:labelType:)(&v23, v11, &v25, v20, v19, v26);
  swift_setDeallocating(v11);
  return specialized _ContiguousArrayStorage.__deallocating_deinit();
}

uint64_t static _ImageUtilities.renameImageTableColumns(table:imageColumn:labelColumn:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v23._object = a5;
  named._countAndFlagsBits = a4;
  v7 = *a1;
  v24 = a1;
  v8 = *(a1 + 8);
  v20 = v7;
  v21 = v8;
  outlined copy of Result<_DataTable, Error>(v7, v8);
  v23._countAndFlagsBits = a2;
  named._object = a3;
  v9 = a3;
  countAndFlagsBits = named._countAndFlagsBits;
  static _ImageUtilities.validateImageInput(trainingData:imageColumn:labelColumn:)(&v20, a2, v9, named._countAndFlagsBits, v23._object);
  result = outlined consume of Result<_DataTable, Error>(v7, v8);
  if (!v5)
  {
    v12 = countAndFlagsBits;
    v13 = v24;
    MLDataTable.willMutate()();
    v14._countAndFlagsBits = 0x7461506567616D69;
    v14._object = 0xE900000000000068;
    v15._countAndFlagsBits = v23._countAndFlagsBits;
    v15._object = named._object;
    MLDataTable.renameImpl(named:to:)(v15, v14);
    if (!*(v13 + 8))
    {
      v16 = *v13;
      outlined copy of Result<_DataTable, Error>(*v13, 0);
      _DataTable.columnNamesDidChange()();
      outlined consume of Result<_DataTable, Error>(v16, 0);
    }

    MLDataTable.willMutate()();
    v17._countAndFlagsBits = 0x6C6562616CLL;
    v17._object = 0xE500000000000000;
    v18._countAndFlagsBits = v12;
    v18._object = v23._object;
    result = MLDataTable.renameImpl(named:to:)(v18, v17);
    if (!*(v13 + 8))
    {
      v19 = *v24;
      outlined copy of Result<_DataTable, Error>(*v24, 0);
      _DataTable.columnNamesDidChange()();
      return outlined consume of Result<_DataTable, Error>(v19, 0);
    }
  }

  return result;
}

uint64_t specialized StringProtocol.appending<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3;
  v8 = a4;

  v7 = String.init<A>(_:)(&v7, &type metadata for String, &protocol witness table for String, &protocol witness table for String);
  v8 = v4;
  String.append<A>(contentsOf:)(v6, &type metadata for String, &protocol witness table for String);
  return v7;
}

char static _ImageUtilities.validateAnnotationContent(from:directoryURL:)(uint64_t a1, double a2)
{
  result = 0;
  if (*(a1 + 16) != 3)
  {
    return result;
  }

  v3 = *a1;
  v4 = *(a1 + 8);

  v5 = CMLSequence.value(at:)(0);
  MLDataValue.init(_:)(v5, a2);
  outlined consume of MLDataValue(v3, v4, 3);
  if (v39 == 4)
  {
    if (v37[2])
    {

      *&v6 = 0x6C6562616CLL;
      *(&v6 + 1) = 0xE500000000000000;
      specialized __RawDictionaryStorage.find<A>(_:)(v6, 2, a2);
      v8 = v7;
      outlined consume of MLDataValue(v37, v38, 4);
      if (v8)
      {
        if (v37[2])
        {

          *&v9 = 0x616E6964726F6F63;
          *(&v9 + 1) = 0xEB00000000736574;
          specialized __RawDictionaryStorage.find<A>(_:)(v9, 2, a2);
          v11 = v10;
          outlined consume of MLDataValue(v37, v38, 4);
          if (v11)
          {
            if (v37[2])
            {

              *&v12 = 0x6C6562616CLL;
              *(&v12 + 1) = 0xE500000000000000;
              specialized __RawDictionaryStorage.find<A>(_:)(v12, 2, a2);
              if (v14)
              {
                v15 = v37[7];
                v16 = 24 * v13;
                v17 = *(v15 + v16);
                v18 = *(v15 + v16 + 8);
                v19 = *(v15 + v16 + 16);
                outlined copy of MLDataValue(v17, v18, *(v15 + v16 + 16));
                outlined consume of MLDataValue(v37, v38, 4);
                v20 = 56;
                if (!_bittest(&v20, v19))
                {
                  v21 = 67;
                  if (!_bittest(&v21, v19))
                  {
                    outlined consume of MLDataValue(v17, v18, 2);
                    if (v37[2])
                    {
                      *&v22 = 0x616E6964726F6F63;
                      *(&v22 + 1) = 0xEB00000000736574;
                      specialized __RawDictionaryStorage.find<A>(_:)(v22, 2, a2);
                      if (v24)
                      {
                        v25 = v37[7];
                        v26 = 24 * v23;
                        v27 = *(v25 + v26);
                        v28 = *(v25 + v26 + 8);
                        v29 = *(v25 + v26 + 16);
                        outlined copy of MLDataValue(v27, v28, *(v25 + v26 + 16));
                        outlined consume of MLDataValue(v37, v38, 4);
                        switch(v29)
                        {
                          case 0:
                          case 1:
                          case 6:
                            return 0;
                          case 2:
                            v36 = 2;
                            goto LABEL_27;
                          case 3:
                            v36 = 3;
                            goto LABEL_27;
                          case 4:
                            outlined consume of MLDataValue(v27, v28, 4);
                            return 1;
                          case 5:
                            v36 = 5;
LABEL_27:
                            v30 = v36;
                            v34 = v27;
                            v35 = v28;
                            break;
                        }

                        goto LABEL_21;
                      }
                    }
                  }

                  goto LABEL_19;
                }

                v32 = v17;
                v33 = v18;
                v31 = v19;
              }

              else
              {
                v31 = 4;
                v32 = v37;
                v33 = v38;
              }

              outlined consume of MLDataValue(v32, v33, v31);
            }
          }
        }
      }
    }

LABEL_19:
    v30 = 4;
    goto LABEL_20;
  }

  v30 = v39;
LABEL_20:
  v34 = v37;
  v35 = v38;
LABEL_21:
  outlined consume of MLDataValue(v34, v35, v30);
  return 0;
}

uint64_t static _ImageUtilities.findColumnWithNonDefaultName(from:directoryURL:columnType:defaultName:validateContentFunc:)(uint64_t a1, __int128 *a2, char *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v46[1] = v7;
  v42 = a6;
  v45 = a5;
  v46[0] = a4;
  v43 = a2;
  v8 = *a1;
  v9 = *(a1 + 8);
  v51 = *a3;
  *&v48 = v8;
  v52 = v9 & 1;
  BYTE8(v48) = v9 & 1;
  outlined copy of Result<_DataTable, Error>(v8, v9);
  v10 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v8, v9 & 1);
  if (v10 <= 0)
  {
    v15 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v15, 0, 0);
    *v16 = 0xD00000000000003BLL;
    *(v16 + 8) = "No readable image files in " + 0x8000000000000000;
    *(v16 + 16) = 0;
    *(v16 + 32) = 0;
    *(v16 + 48) = 1;
    return swift_willThrow();
  }

  v49 = v9;
  v44 = v8;
  if (v9)
  {
    outlined copy of Result<_DataTable, Error>(v8, 1);
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
    outlined consume of Result<_DataTable, Error>(v8, 1);
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(v8, 0);
    _DataTable.columnNames.getter();
    outlined consume of Result<_DataTable, Error>(v8, 0);
    v14 = v47;
  }

  v50 = &v41;
  *&v48 = v46[0];
  *(&v48 + 1) = v45;
  v17 = alloca(24);
  v18 = alloca(32);
  v43 = &v48;
  v19 = v46[1];
  v20 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v41, v14);

  if (v20)
  {

    return v46[0];
  }

  v46[1] = v19;
  v47 = 0;
  v22 = v44;
  *&v48 = v44;
  BYTE8(v48) = v52;
  v23 = v49;
  LODWORD(v50) = v49;
  outlined copy of Result<_DataTable, Error>(v44, v49);
  v24 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v48, SBYTE8(v48));
  v25 = v24 * 0.2;
  if (COERCE__INT64(fabs(v25)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    BUG();
  }

  if (v25 <= -9.223372036854778e18)
  {
    BUG();
  }

  if (v25 >= 9.223372036854776e18)
  {
    BUG();
  }

  v26 = v25;
  *&v48 = v22;
  BYTE8(v48) = v52;
  outlined copy of Result<_DataTable, Error>(v22, v50);
  v50 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v48, SBYTE8(v48));
  if (v50 >= 10)
  {
    if (v25 < 0xBuLL)
    {
      v26 = 10;
    }
  }

  else
  {
    if (v50 > v26)
    {
      v26 = v50;
    }

    if (v26 <= 0)
    {
LABEL_27:
      *&v48 = 0;
      *(&v48 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(166);
      v38._object = "Annotations file is empty." + 0x8000000000000000;
      v38._countAndFlagsBits = 0xD000000000000098;
      String.append(_:)(v38);
      v38._countAndFlagsBits = v46[0];
      v38._object = v45;
      String.append(_:)(v38);
      v38._countAndFlagsBits = 0x2E316567616D693ALL;
      v38._object = 0xEC0000002E67706ALL;
      String.append(_:)(v38);
      *&v46[1] = v48;
      v39 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v39, 0, 0);
      *v40 = *&v46[1];
      *(v40 + 16) = 0;
      *(v40 + 32) = 0;
      *(v40 + 48) = 1;
      return swift_willThrow();
    }
  }

  v50 = v26;
  while (1)
  {
    if (v23)
    {
      outlined copy of Result<_DataTable, Error>(v22, 1);
      v27 = tc_v1_flex_list_create(0);
      if (!v27)
      {
        BUG();
      }

      v28 = v27;
      v29 = type metadata accessor for CMLSequence();
      v30 = swift_allocObject(v29, 25, 7);
      *(v30 + 16) = v28;
      *(v30 + 24) = 1;
      outlined consume of Result<_DataTable, Error>(v22, 1);
    }

    else
    {
      outlined copy of Result<_DataTable, Error>(v22, 0);
      _DataTable.columnNames.getter();
      outlined consume of Result<_DataTable, Error>(v22, 0);
    }

    v31 = alloca(72);
    v32 = alloca(80);
    v43 = v22;
    LOBYTE(v44) = v52;
    v45 = &v47;
    LOBYTE(v46[0]) = v51;
    v46[1] = v42;
    v46[2] = a7;
    v47 = v22;
    v33 = v42;
    v34 = specialized Sequence.first(where:)(partial apply for closure #1 in static _ImageUtilities.findColumnWithNonDefaultName(from:directoryURL:columnType:defaultName:validateContentFunc:));
    v36 = v35;
    v46[1] = v33;

    v37 = v47 + 1;
    if (__OFADD__(1, v47))
    {
      BUG();
    }

    ++v47;
    v23 = v49;
    if (v36)
    {
      return v34;
    }

    v22 = v44;
    if (v37 >= v50)
    {
      goto LABEL_27;
    }
  }
}

uint64_t closure #1 in static _ImageUtilities.findColumnWithNonDefaultName(from:directoryURL:columnType:defaultName:validateContentFunc:)(uint64_t *a1, void *a2, int a3, uint64_t *a4, int a5, uint64_t (*a6)(void **, uint64_t), double xmm0_8_0, uint64_t a7, uint64_t a8)
{
  v37 = v9;
  LODWORD(v36) = a5;
  v33 = *a1;
  v10 = a1[1];
  v11 = *a4;
  v30 = a2;
  LOBYTE(v31) = a3 & 1;
  v35 = a3;
  outlined copy of Result<_DataTable, Error>(a2, a3);
  MLDataTable.Rows.subscript.getter(v11);
  outlined consume of Result<_DataTable, Error>(a2, v31);
  if (*(v26 + 16))
  {
    v34 = v25;

    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v10);
    if (v13)
    {
      v14 = *(*(v26 + 56) + 8 * v12);
      v10;

      v15 = CMLSequence.value(at:)(v14);
      if (!v37)
      {
        MLDataValue.init(_:)(v15, xmm0_8_0);
        v26;

        v27;
        v16 = v32;
        switch(v32)
        {
          case 0u:
            goto LABEL_19;
          case 1u:
            v24 = 1;
            goto LABEL_18;
          case 2u:
            outlined consume of MLDataValue(v30, v31, 2);
            v24 = 2;
            goto LABEL_18;
          case 3u:
            outlined consume of MLDataValue(v30, v31, 3);
            v24 = 3;
            goto LABEL_18;
          case 4u:
            outlined consume of MLDataValue(v30, v31, 4);
            v24 = 4;
            goto LABEL_18;
          case 5u:
            outlined consume of MLDataValue(v30, v31, 5);
            v24 = 5;
            goto LABEL_18;
          case 6u:
            v24 = 6;
LABEL_18:
            v16 = v24;
LABEL_19:
            if (v16 != v36)
            {
              return 0;
            }

            goto LABEL_9;
        }
      }

LABEL_25:
      swift_unexpectedError(v37, "CreateML/MLDataTable.Row.swift", 30, 1, 85);
      BUG();
    }

    v26;

    v10;
  }

  else
  {

    v26;
  }

  if (v36 != 7)
  {
    return 0;
  }

LABEL_9:
  v17 = *a4;
  v30 = a2;
  LOBYTE(v31) = v35 & 1;
  outlined copy of Result<_DataTable, Error>(a2, v35);
  MLDataTable.Rows.subscript.getter(v17);
  outlined consume of Result<_DataTable, Error>(a2, v35 & 1);
  v36 = v25;
  if (!*(v26 + 16))
  {

    v26;

    goto LABEL_24;
  }

  v18 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v10);
  if ((v19 & 1) == 0)
  {

    v26;

    v10;
LABEL_24:
    BUG();
  }

  v20 = *(*(v26 + 56) + 8 * v18);
  v10;

  v21 = CMLSequence.value(at:)(v20);
  if (v37)
  {
    goto LABEL_25;
  }

  MLDataValue.init(_:)(v21, xmm0_8_0);
  v26;

  v27;
  v22 = a6(&v30, a8);
  outlined consume of MLDataValue(v30, v31, v32);
  return v22;
}

ValueMetadata *static _ImageUtilities.getImageURLs(at:)(ValueMetadata *a1)
{
  *&v62 = v1;
  v58 = type metadata accessor for URL(0);
  v2 = *(v58 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v57 = &v50;
  v6 = type metadata accessor for UTType(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v56 = &v50;
  v55 = a1;
  v11 = v62;
  v12 = static _FileUtilities.getReadableSubdirectoriesOfDirectory(at:)();
  if (!v11)
  {
    v61 = v6;
    *&v62 = v7;
    v14 = v55;
    v59 = v2;
    v60 = 0;
    Kind = v12[1].Kind;
    if (Kind)
    {
      v16 = v12;
      v51 = objc_opt_self(NSFileManager);
      v17 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v54 = v16;
      v53 = v17;
      v18 = (v16 + v17);
      v52 = *(v59 + 16);
      v61 = *(v59 + 72);
      *&v62 = _swiftEmptyArrayStorage;
      v19 = v58;
      v20 = v57;
      while (1)
      {
        v55 = Kind;
        v56 = v18;
        v52(v20, v18, v19);
        v21 = [v51 defaultManager];
        v22 = v21;
        URL._bridgeToObjectiveC()(v22);
        v24 = v23;
        *&v63 = 0;
        v25 = [(NSURL *)v22 contentsOfDirectoryAtURL:v23 includingPropertiesForKeys:0 options:4 error:&v63];
        v26 = v25;

        v27 = v63;
        if (!v26)
        {
          break;
        }

        v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v26, v19);
        v27;
        (objc_release)(v26);
        v29 = *(v28 + 16);
        v30 = *(v62 + 16);
        v31 = v29 + v30;
        if (__OFADD__(v29, v30))
        {
          BUG();
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v62);
        v33 = v62;
        if (!isUniquelyReferenced_nonNull_native || *(v62 + 24) >> 1 < v31)
        {
          if (v30 > v31)
          {
            v31 = v30;
          }

          v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v31, 1, v62);
        }

        v19 = v58;
        v34 = *(v28 + 16) == 0;
        *&v62 = v33;
        if (v34)
        {
          if (v29)
          {
            BUG();
          }
        }

        else
        {
          v35 = v33[2];
          if ((v33[3] >> 1) - v35 < v29)
          {
            BUG();
          }

          swift_arrayInitWithCopy(v33 + v61 * v35 + v53, v53 + v28, v29, v58);
          if (v29)
          {
            v36 = __OFADD__(*(v62 + 16), v29);
            v37 = *(v62 + 16) + v29;
            if (v36)
            {
              BUG();
            }

            *(v62 + 16) = v37;
          }
        }

        v28;
        v20 = v57;
        (*(v59 + 8))(v57, v19);
        v18 = (v56 + v61);
        Kind = (v55 - 1);
        if (v55 == (&dword_0 + 1))
        {
          v54;
          return v62;
        }
      }

      v42 = v19;
      v43 = v63;
      _convertNSErrorToError(_:)(v27);

      swift_willThrow();
      (*(v59 + 8))(v57, v42);
      v62;
      a1 = v54;
      v54;
    }

    else
    {
      v38 = v12;
      v12;
      v39 = v56;
      static UTType.image.getter(v38);
      v40 = v60;
      v41 = static _FileUtilities.readableFiles(at:type:)(v14, v39);
      v60 = v40;
      a1 = v39;
      if (v40)
      {
        (*(v62 + 8))(v39, v61);
      }

      else
      {
        v44 = v41;
        (*(v62 + 8))(a1, v61);
        a1 = v44;
        if (!v44[1].Kind)
        {
          v44;
          *&v63 = 0;
          *(&v63 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(29);
          v45 = *(&v63 + 1);
          SBYTE8(v63);
          *&v63 = 0xD00000000000001BLL;
          *(&v63 + 1) = " specified data source" + 0x8000000000000000;
          v46._countAndFlagsBits = URL.path.getter(v45);
          object = v46._object;
          String.append(_:)(v46);
          object;
          v62 = v63;
          v48 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          a1 = &type metadata for MLCreateError;
          swift_allocError(&type metadata for MLCreateError, v48, 0, 0);
          *v49 = v62;
          *(v49 + 16) = 0;
          *(v49 + 32) = 0;
          *(v49 + 48) = 0;
          swift_willThrow();
        }
      }
    }
  }

  return a1;
}

uint64_t implicit closure #1 in static _ImageUtilities.getImageURLsAndObjectAnnotations(from:imageColumnName:labelColumnName:)(uint64_t a1)
{
  v1 = 0;
  v2 = type metadata accessor for URL(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  if (*(a1 + 16) == 2)
  {
    v7 = *a1;
    v8 = *(a1 + 8);
    v19 = v2;

    URL.appendingPathComponent(_:)(v7, v8);
    outlined consume of MLDataValue(v7, v8, 2);
    v9 = URL.path.getter(v7);
    v11 = v10;
    v18 = *(v3 + 8);
    v12 = v19;
    v18(&v17, v19);
    v13 = specialized StringProtocol.appending<A>(_:)(v9, v11, 0, 0xE000000000000000);
    v15 = v14;
    v11;
    URL.init(fileURLWithPath:)(v13, v15);
    v15;
    v1 = static _ImageUtilities.validateOneImageURL(from:)();
    v18(&v17, v12);
  }

  return v1;
}

char implicit closure #2 in static _ImageUtilities.getImageURLsAndObjectAnnotations(from:imageColumnName:labelColumnName:)(__int128 *a1)
{
  v1 = *(a1 + 16);
  v3 = *a1;
  v4 = v1;
  return static _ImageUtilities.validateAnnotationContent(from:directoryURL:)(&v3, *&v3);
}

void *static _ImageUtilities.getDataSourceSynopsisForHandPoseClassifier(from:)(void *a1, __m128 a2)
{
  v102 = type metadata accessor for URL(0);
  v122 = *(v102 - 1);
  v3 = *(v122 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = alloca(v3);
  v7 = alloca(v3);
  v119 = &v93;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DiscontiguousColumnSlice<Int>) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v114 = &v93;
  v97 = type metadata accessor for DataFrame.Slice(0);
  v98 = *(v97 - 1);
  v11 = *(v98 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v99 = &v93;
  v113 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v100 = *(v113 - 8);
  v14 = *(v100 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v101 = &v93;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = &v93;
  v104 = type metadata accessor for DataFrame(0);
  v105 = *(v104 - 1);
  v20 = *(v105 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v120 = &v93;
  v23 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v24 = *(*(v23 - 8) + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v27 = &v93;
  outlined init with copy of MLTrainingSessionParameters(a1, &v93, type metadata accessor for MLHandPoseClassifier.DataSource);
  if (swift_getEnumCaseMultiPayload(&v93, v23) != 3)
  {
    v57 = v123;
    static _ImageUtilities.getImageURLsAndAnnotations(from:)(a1, a2);
    v106 = v57;
    if (v57)
    {
      return outlined destroy of MLHandPoseClassifier.DataSource(&v93);
    }

    v121 = &v93;
    v58 = v115;
    v59 = v116;
    outlined copy of Result<_DataTable, Error>(v115, v116);
    v60._countAndFlagsBits = 0x6C6562616CLL;
    v60._object = 0xE500000000000000;
    specialized MLDataTable.subscript.getter(v60, v58, v59);
    outlined consume of Result<_DataTable, Error>(v58, v59);
    v61 = v107;
    LODWORD(v123) = v108;
    specialized MLDataColumn.dropDuplicates()(v107, v108);
    outlined consume of Result<_DataTable, Error>(v61, v123);
    MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v115, v116, *a2.i64);
    outlined copy of Result<_DataTable, Error>(v58, v59);
    v60._countAndFlagsBits = 0x7461506567616D69;
    v60._object = 0xE900000000000068;
    specialized MLDataTable.subscript.getter(v60, v58, v59);
    v104 = v58;
    LODWORD(v120) = v59;
    outlined consume of Result<_DataTable, Error>(v58, v59);
    v62 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v115, v116, *a2.i64);
    v63 = v62;
    v64 = v62[2];
    v95 = &v93;
    if (v64)
    {
      v115 = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64, 0);
      v65 = v115;
      v114 = v63;
      v66 = (v63 + 40);
      do
      {
        v113 = v66;
        v123 = v64;
        v67 = *(v66 - 1);
        v68 = *v66;

        URL.init(fileURLWithPath:)(v67, v68);
        v68;
        v115 = v65;
        v69 = v65[2];
        if (v65[3] >> 1 <= v69)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v65[3] >= 2, v69 + 1, 1);
          v65 = v115;
        }

        v65[2] = v69 + 1;
        (*(v122 + 32))(v65 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v69, v119, v102);
        v66 = (v113 + 16);
        v64 = v123 - 1;
      }

      while (v123 != 1);
      v96 = v65;
      v114;
      v27 = v95;
    }

    else
    {
      v62;
      v96 = _swiftEmptyArrayStorage;
    }

    v70 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
    v71 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5[2];
    LODWORD(v105) = v120;
    v93 = v71;
    if (v71)
    {
      v94 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 + 4;
      v72 = _swiftEmptyDictionarySingleton;
      v73 = 0;
      v74 = _swiftEmptyDictionarySingleton;
      do
      {
        if (v73 >= v70[2])
        {
          BUG();
        }

        v97 = v74;
        v98 = v73;
        v114 = v94[2 * v73];
        v120 = v94[2 * v73 + 1];
        v75 = v104;
        v115 = v104;
        v76 = v105;
        LOBYTE(v116) = v105;
        outlined copy of Result<_DataTable, Error>(v104, v105);

        v77._countAndFlagsBits = 0x6C6562616CLL;
        v77._object = 0xE500000000000000;
        v119 = v72;
        MLDataTable.subscript.getter(v77);
        outlined consume of Result<_DataTable, Error>(v115, v116);
        v111 = v109;
        LOBYTE(v112) = v110;
        v117 = &type metadata for String;
        v118 = &protocol witness table for String;
        v115 = v114;
        v116 = v120;

        static MLUntypedColumn.== infix(_:_:)(&v111, &v115);
        outlined consume of Result<_DataTable, Error>(v111, v112);
        __swift_destroy_boxed_opaque_existential_1Tm(&v115);
        v109 = v75;
        LOBYTE(v110) = v76;
        v111 = v107;
        LOBYTE(v112) = v108;
        outlined copy of Result<_DataTable, Error>(v75, v76);
        MLDataTable.subscript.getter(&v111);
        outlined consume of Result<_DataTable, Error>(v111, v112);
        outlined consume of Result<_DataTable, Error>(v109, v110);
        v78 = v115;
        v79 = v116;
        v80 = v120;

        outlined copy of Result<_DataTable, Error>(v78, v79);
        v123 = MLDataTable.size.getter();
        outlined consume of Result<_DataTable, Error>(v115, v116);
        v81 = v119;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v119);
        v115 = v81;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v123, v114, v80, isUniquelyReferenced_nonNull_native);
        v80;
        v119 = v115;
        outlined copy of Result<_DataTable, Error>(v78, v79);
        v77._countAndFlagsBits = 0x7461506567616D69;
        v77._object = 0xE900000000000068;
        specialized MLDataTable.subscript.getter(v77, v78, v79);
        v99 = v78;
        LODWORD(v100) = v79;
        outlined consume of Result<_DataTable, Error>(v78, v79);
        v83 = v107;
        LOBYTE(v79) = v108;
        specialized MLDataColumn.dropDuplicates()(v107, v108);
        outlined consume of Result<_DataTable, Error>(v83, v79);
        v84 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v115, v116, *a2.i64);
        v85 = v84;
        v86 = v84[2];
        if (v86)
        {
          v115 = _swiftEmptyArrayStorage;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v86, 0);
          v87 = v115;
          v101 = v85;
          v88 = v85 + 5;
          do
          {
            v123 = v86;
            v113 = *(v88 - 1);
            v89 = *v88;

            URL.init(fileURLWithPath:)(v113, v89);
            v89;
            v115 = v87;
            v90 = v87[2];
            if (v87[3] >> 1 <= v90)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v87[3] >= 2, v90 + 1, 1);
              v87 = v115;
            }

            v87[2] = v90 + 1;
            (*(v122 + 32))(v87 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v90, v121, v102);
            v88 += 2;
            v86 = v123 - 1;
          }

          while (v123 != 1);
          v101;
        }

        else
        {
          v84;
          v87 = _swiftEmptyArrayStorage;
        }

        v72 = v119;
        v73 = v98 + 1;
        v91 = v97;
        v92 = swift_isUniquelyReferenced_nonNull_native(v97);
        v115 = v91;
        LOBYTE(v91) = v120;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v87, v114, v120, v92);
        v91;
        outlined consume of Result<_DataTable, Error>(v99, v100);
        v74 = v115;
        v27 = v95;
        v70 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
      }

      while (v73 != v93);
    }

    MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
    outlined consume of Result<_DataTable, Error>(v104, v105);
    outlined destroy of MLHandPoseClassifier.DataSource(v27);
    return v96;
  }

  v28 = v96;
  v29 = v98;
  v30 = v100;
  outlined consume of Result<_DataTable, Error>(v93, v94);
  v30;
  v29;
  v28;
  result = MLHandPoseClassifier.DataSource.extractKeypoints()(a2);
  if (v2)
  {
    return result;
  }

  v106 = 0;
  v32 = v101;
  DataFrame.subscript.getter(0x6C6562616CLL, 0xE500000000000000, &type metadata for String);
  v115 = 0;
  v116 = 0xE000000000000000;
  v33 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  v34 = v113;
  OptionalColumnProtocol.filled(with:)(&v115, v113, v33);
  (*(v100 + 8))(v32, v34);
  v35 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_11TabularData12FilledColumnVyAD0E0VySSGGTt0g5();
  v36 = 1 << *(v35 + 32);
  v37 = ~(-1 << v36);
  if (v36 >= 64)
  {
    v37 = -1;
  }

  v122 = v35;
  v38 = *(v35 + 56) & v37;
  v121 = ((v36 + 63) >> 6);
  v39 = _swiftEmptyDictionarySingleton;
  v123 = 0;
  v40 = v99;
  while (1)
  {
    v119 = v39;
    if (v38)
    {
      v41 = v123;
      goto LABEL_23;
    }

    v42 = v123 + 1;
    if (__OFADD__(1, v123))
    {
      BUG();
    }

    if (v42 >= v121)
    {
      goto LABEL_37;
    }

    v38 = *(v122 + 8 * v42 + 56);
    if (v38)
    {
      v41 = v123 + 1;
      goto LABEL_23;
    }

    v43 = v123 + 2;
    if (v123 + 2 >= v121)
    {
      goto LABEL_37;
    }

    v38 = *(v122 + 8 * v42 + 64);
    if (!v38)
    {
      v43 = v123 + 3;
      if (v123 + 3 >= v121)
      {
        goto LABEL_37;
      }

      v38 = *(v122 + 8 * v42 + 72);
      if (!v38)
      {
        v43 = v123 + 4;
        if (v123 + 4 >= v121)
        {
          goto LABEL_37;
        }

        v38 = *(v122 + 8 * v42 + 80);
        if (!v38)
        {
          v43 = v123 + 5;
          if (v123 + 5 >= v121)
          {
            goto LABEL_37;
          }

          v38 = *(v122 + 8 * v42 + 88);
          if (!v38)
          {
            v43 = v123 + 6;
            if (v123 + 6 >= v121)
            {
              goto LABEL_37;
            }

            v38 = *(v122 + 8 * v42 + 96);
            if (!v38)
            {
              break;
            }
          }
        }
      }
    }

    v41 = v43;
LABEL_23:
    _BitScanForward64(&v44, v38);
    v113 = (v38 - 1) & v38;
    v45 = *(v122 + 48);
    v123 = v41;
    v46 = (v41 << 10) | (16 * v44);
    v102 = *(v45 + v46);
    v47 = *(v45 + v46 + 8);
    v48 = alloca(32);
    v49 = alloca(32);
    v95 = v102;
    v96 = v47;

    v50 = v106;
    DataFrame.filter<A>(on:_:_:)(0x6C6562616CLL, 0xE500000000000000, &type metadata for String, partial apply for closure #7 in MLActivityClassifier.DataSource.gatherDataFromAnnotations(directoryURL:annotationFileName:labelColumn:fileColumn:startTimeColumn:endTimeColumn:featureColumns:timeStampColumn:), &v93, &type metadata for String);
    v106 = v50;
    v51 = v114;
    DataFrame.Slice.subscript.getter(0x5F6E6F6973736573, 0xEA00000000006469, &type metadata for Int);
    v52 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSiSg_11TabularData24DiscontiguousColumnSliceVySiGTt0g5(v51);
    v53 = *(v52 + 16);
    v52;
    v54 = v119;
    v55 = swift_isUniquelyReferenced_nonNull_native(v119);
    v115 = v54;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v53, v102, v47, v55);
    v47;
    v39 = v115;
    (*(v98 + 8))(v40, v97);
    v38 = v113;
  }

  v56 = v123 + 7;
  while (v56 < v121)
  {
    v38 = *(v122 + 8 * v56++ + 56);
    if (v38)
    {
      v41 = v56 - 1;
      goto LABEL_23;
    }
  }

LABEL_37:

  (*(v105 + 8))(v120, v104);
  return _swiftEmptyArrayStorage;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance <A> [A])
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [String]);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v1);
    lazy protocol witness table cache variable for type [String] and conformance <A> [A] = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!*a1)
  {
    v3 = type metadata accessor for URL(255);
    result = swift_getWitnessTable(a2, v3);
    *a1 = result;
  }

  return result;
}

uint64_t outlined destroy of MLHandPoseClassifier.DataSource(uint64_t a1)
{
  v1 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

char *static PearsonSimilarity.buildItemStatistics(ratings:count:)(void *a1, uint64_t a2)
{
  v26 = a2;
  ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5 = _sSa9repeating5countSayxGx_SitcfC8CreateML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5(0, 0, a2, 0.0, 0.0);
  v22 = a1[3];
  v23 = a1[4];
  v24 = a1[5];
  outlined retain of [Int](&v22);
  outlined retain of [Int](&v23);
  outlined retain of ContiguousArray<Double>(&v24);
  _s13LinearAlgebra12SparseMatrixV15IndexedSequenceV8IteratorV4baseAGyx__GACyxG_tcfCSd_Tt0g5(a1);
  while (1)
  {
    specialized SparseMatrix.IndexedSequence.Iterator.next()();
    if (v5)
    {
      break;
    }

    if (v3 < 0)
    {
      BUG();
    }

    if (v3 >= *(ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5 + 2))
    {
      BUG();
    }

    v6 = 32 * v3;
    v7 = *&ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5[32 * v3 + 40];
    v8 = __OFADD__(1, v7);
    v9 = v7 + 1;
    if (v8)
    {
      BUG();
    }

    v10 = v4;
    v25 = *&ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5[v6 + 48];
    if (!swift_isUniquelyReferenced_nonNull_native(ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5))
    {
      ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5 = specialized _ArrayBuffer._consumeAndCreateNew()(ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5);
    }

    v11 = v10 - v25;
    v12 = (v10 - v25) / v9 + *&ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5[v6 + 48];
    *&ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5[v6 + 48] = v12;
    *&ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5[v6 + 56] = (v10 - v12) * v11 + *&ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5[v6 + 56];
    v13 = *&ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5[v6 + 40];
    v8 = __OFADD__(1, v13);
    v14 = v13 + 1;
    if (v8)
    {
      BUG();
    }

    v15 = &ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5[v6 + 32];
    *(v15 + 1) = v14;
    if (__OFADD__(1, *v15))
    {
      BUG();
    }

    ++*v15;
  }

  v21[3] = v21[7];
  v21[2] = v21[6];
  v21[1] = v21[5];
  v21[0] = v21[4];
  outlined release of SparseMatrix<Double>.MajorCollection(v21);
  v16 = v26;
  if (v26 < 0)
  {
    BUG();
  }

  if (v26)
  {
    if (*(ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5 + 2) < v26)
    {
      BUG();
    }

    if (!swift_isUniquelyReferenced_nonNull_native(ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5))
    {
      ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5 = specialized _ArrayBuffer._consumeAndCreateNew()(ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5);
    }

    v17 = (ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5 + 56);
    do
    {
      v18 = *(v17 - 2);
      v19 = v18 - 1;
      if (__OFSUB__(v18, 1))
      {
        BUG();
      }

      if (v19 < 2)
      {
        LODWORD(v19) = 1;
      }

      *v17 = v18 / v19 * *v17;
      v17 += 4;
      --v16;
    }

    while (v16);
  }

  return ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5;
}

void static PearsonSimilarityPredictor.updatePrediction(_:itemScore:neighborScore:)(double *a1, __m128d a2, double a3)
{
  a2.f64[0] = a2.f64[0] * a3;
  v3 = _mm_or_pd(_mm_and_pd(xmmword_33DFE0, a2), xmmword_345A50);
  v3.f64[0] = v3.f64[0] + a2.f64[0];
  *a1 = _mm_round_sd(a2, v3, 11).f64[0] + *a1;
}

double static PearsonSimilarityPredictor.finalizePrediction(_:userRatingCount:)(uint64_t a1, double a2)
{
  if (a1 > 0)
  {
    return a2 / a1;
  }

  else
  {
    return 0.0;
  }
}

uint64_t getEnumTagSinglePayload for PearsonSimilarity.ItemScore(uint64_t a1, int a2)
{
  result = 0;
  if (a2)
  {
    if (*(a1 + 24))
    {
      return (*a1 + 1);
    }
  }

  return result;
}

void storeEnumTagSinglePayload for PearsonSimilarity.ItemScore(uint64_t a1, int a2, int a3)
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

  *(a1 + 8) = 0;
  *a1 = (a2 - 1);
  v3 = 1;
  if (a3)
  {
LABEL_6:
    *(a1 + 24) = v3;
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for MLImageClassifier.PersistentParameters(uint64_t *a1, uint64_t *a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = (v4 + ((v3 + 16) & ~v3));

    return v6;
  }

  v6 = a1;
  v7 = a3[5];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v9, v10);
  if (EnumCaseMultiPayload == 2)
  {
    *v8 = *v9;

    v15 = 2;
    v16 = v8;
    v17 = v10;
LABEL_14:
    swift_storeEnumTagMultiPayload(v16, v17, v15);
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v29 = v10;
    v32 = type metadata accessor for MLImageClassifier.DataSource(0);
    v12 = swift_getEnumCaseMultiPayload(v9, v32);
    v13 = v8;
    v31 = v12;
    if (v12 == 2)
    {
      *v8 = *v9;
    }

    else
    {
      if (v12 != 1)
      {
        v18 = v32;
        v19 = type metadata accessor for URL(0);
        (*(*(v19 - 8) + 16))(v13, v9, v19);
        goto LABEL_13;
      }

      v14 = type metadata accessor for URL(0);
      (*(*(v14 - 8) + 16))(v8, v9, v14);
    }

    v18 = v32;
LABEL_13:
    swift_storeEnumTagMultiPayload(v13, v18, v31);
    v15 = 1;
    v16 = v13;
    v17 = v29;
    goto LABEL_14;
  }

  memcpy(v8, v9, *(*(v10 - 8) + 64));
LABEL_15:
  v20 = a3[6];
  v21 = v6 + v20;
  v22 = a2 + v20;
  v23 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  if (swift_getEnumCaseMultiPayload(v22, v23) == 1)
  {
    v24 = type metadata accessor for URL(0);
    (*(*(v24 - 8) + 16))(v21, v22, v24);
    v25 = *(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) + 20);
    *&v21[v25] = *&v22[v25];
    *&v21[v25 + 8] = *&v22[v25 + 8];

    swift_storeEnumTagMultiPayload(v21, v23, 1);
  }

  else
  {
    memcpy(v21, v22, *(*(v23 - 8) + 64));
  }

  v26 = a3[7];
  v27 = *(a2 + v26);
  if (v27 != 2)
  {
  }

  *(v6 + v26) = v27;
  *(v6 + a3[8]) = *(a2 + a3[8]);
  *(v6 + a3[9]) = *(a2 + a3[9]);
  return v6;
}

uint64_t destroy for MLImageClassifier.PersistentParameters(void *a1, int *a2)
{
  *a1;
  v2 = (a1 + a2[5]);
  v3 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v2, v3);
  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_7;
  }

  v5 = type metadata accessor for MLImageClassifier.DataSource(0);
  v6 = swift_getEnumCaseMultiPayload(v2, v5);
  if (v6 == 2)
  {
LABEL_6:
    *v2;
  }

  else if (v6 <= 1)
  {
    v7 = type metadata accessor for URL(0);
    (*(*(v7 - 8) + 8))(v2, v7);
  }

LABEL_7:
  v8 = a1 + a2[6];
  v9 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  if (swift_getEnumCaseMultiPayload(v8, v9) == 1)
  {
    v10 = type metadata accessor for URL(0);
    (*(*(v10 - 8) + 8))(v8, v10);
    v11 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
    *&v8[*(v11 + 20) + 8];
  }

  result = a2[7];
  v13 = *(a1 + result);
  if (v13 != 2)
  {
    return v13;
  }

  return result;
}

void *initializeWithCopy for MLImageClassifier.PersistentParameters(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v5 = a3[5];
  v6 = (a1 + v5);
  v7 = (a2 + v5);
  v8 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v7, v8);
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload != 1)
    {
      memcpy(v6, v7, *(*(v8 - 8) + 64));
      goto LABEL_13;
    }

    v27 = v8;
    v30 = type metadata accessor for MLImageClassifier.DataSource(0);
    v10 = swift_getEnumCaseMultiPayload(v7, v30);
    v11 = v6;
    v28 = v10;
    if (v10 == 2)
    {
      *v6 = *v7;
    }

    else
    {
      if (v10 != 1)
      {
        v16 = v30;
        v17 = type metadata accessor for URL(0);
        (*(*(v17 - 8) + 16))(v11, v7, v17);
        goto LABEL_11;
      }

      v12 = type metadata accessor for URL(0);
      (*(*(v12 - 8) + 16))(v6, v7, v12);
    }

    v16 = v30;
LABEL_11:
    swift_storeEnumTagMultiPayload(v11, v16, v28);
    v13 = 1;
    v14 = v11;
    v15 = v27;
    goto LABEL_12;
  }

  *v6 = *v7;

  v13 = 2;
  v14 = v6;
  v15 = v8;
LABEL_12:
  swift_storeEnumTagMultiPayload(v14, v15, v13);
LABEL_13:
  v18 = a3[6];
  v19 = a1 + v18;
  v20 = a2 + v18;
  v21 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  if (swift_getEnumCaseMultiPayload(v20, v21) == 1)
  {
    v22 = type metadata accessor for URL(0);
    (*(*(v22 - 8) + 16))(v19, v20, v22);
    v23 = *(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) + 20);
    *&v19[v23] = *&v20[v23];
    *&v19[v23 + 8] = *&v20[v23 + 8];

    swift_storeEnumTagMultiPayload(v19, v21, 1);
  }

  else
  {
    memcpy(v19, v20, *(*(v21 - 8) + 64));
  }

  v24 = a3[7];
  v25 = *(a2 + v24);
  if (v25 != 2)
  {
  }

  *(a1 + v24) = v25;
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t *assignWithCopy for MLImageClassifier.PersistentParameters(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *a1;
  *a1 = *a2;

  v5;
  v25 = a3;
  if (a1 != a2)
  {
    v6 = a3[5];
    v7 = (a1 + v6);
    v8 = (a2 + v6);
    outlined destroy of MLActivityClassifier.ModelParameters(v7, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
    v9 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v8, v9);
    if (EnumCaseMultiPayload == 2)
    {
      *v7 = *v8;

      swift_storeEnumTagMultiPayload(v7, v9, 2);
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v23 = type metadata accessor for MLImageClassifier.DataSource(0);
      v24 = swift_getEnumCaseMultiPayload(v8, v23);
      if (v24 == 2)
      {
        *v7 = *v8;
      }

      else
      {
        v11 = type metadata accessor for URL(0);
        (*(*(v11 - 8) + 16))(v7, v8, v11);
      }

      swift_storeEnumTagMultiPayload(v7, v23, v24);
      swift_storeEnumTagMultiPayload(v7, v9, 1);
    }

    else
    {
      memcpy(v7, v8, *(*(v9 - 8) + 64));
    }

    v12 = v25[6];
    v13 = a1 + v12;
    v14 = a2 + v12;
    outlined destroy of MLActivityClassifier.ModelParameters(v13, type metadata accessor for MLImageClassifier.FeatureExtractorType);
    v15 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
    if (swift_getEnumCaseMultiPayload(v14, v15) == 1)
    {
      v16 = type metadata accessor for URL(0);
      (*(*(v16 - 8) + 16))(v13, v14, v16);
      v17 = *(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) + 20);
      *&v13[v17] = *&v14[v17];
      *&v13[v17 + 8] = *&v14[v17 + 8];

      swift_storeEnumTagMultiPayload(v13, v15, 1);
    }

    else
    {
      memcpy(v13, v14, *(*(v15 - 8) + 64));
    }

    a3 = v25;
  }

  v18 = a3[7];
  v19 = (a1 + v18);
  v20 = *(a1 + v18);
  v21 = *(a2 + v18);
  if (v20 == 2)
  {
    if (v21 == 2)
    {
      *v19 = 2;
    }

    else
    {
      *v19 = v21;
    }
  }

  else if (v21 == 2)
  {
    outlined destroy of MLImageClassifier.ModelParameters.ClassifierType(a1 + v18);
    *v19 = *(a2 + v18);
  }

  else
  {
    *v19 = v21;

    v20;
  }

  *(a1 + v25[8]) = *(a2 + v25[8]);
  *(a1 + v25[9]) = *(a2 + v25[9]);
  return a1;
}

void *initializeWithTake for MLImageClassifier.PersistentParameters(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v5 = a3[5];
  v6 = a1 + v5;
  v7 = a2 + v5;
  v8 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v7, v8) != 1)
  {
    memcpy(v6, v7, *(*(v8 - 8) + 64));
    goto LABEL_10;
  }

  v23 = v8;
  v9 = type metadata accessor for MLImageClassifier.DataSource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v7, v9);
  if (EnumCaseMultiPayload == 1)
  {
    v15 = type metadata accessor for URL(0);
    (*(*(v15 - 8) + 32))(v6, v7, v15);
    v14 = 1;
    v12 = v6;
    v13 = v9;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      memcpy(v6, v7, *(*(v9 - 8) + 64));
      goto LABEL_9;
    }

    v11 = type metadata accessor for URL(0);
    (*(*(v11 - 8) + 32))(v6, v7, v11);
    v12 = v6;
    v13 = v9;
    v14 = 0;
  }

  swift_storeEnumTagMultiPayload(v12, v13, v14);
LABEL_9:
  swift_storeEnumTagMultiPayload(v6, v23, 1);
LABEL_10:
  v16 = a3[6];
  v17 = a1 + v16;
  v18 = a2 + v16;
  v19 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  if (swift_getEnumCaseMultiPayload(v18, v19) == 1)
  {
    v20 = type metadata accessor for URL(0);
    (*(*(v20 - 8) + 32))(v17, v18, v20);
    v21 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
    *&v17[*(v21 + 20)] = *&v18[*(v21 + 20)];
    swift_storeEnumTagMultiPayload(v17, v19, 1);
  }

  else
  {
    memcpy(v17, v18, *(*(v19 - 8) + 64));
  }

  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t *assignWithTake for MLImageClassifier.PersistentParameters(uint64_t *a1, uint64_t *a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;
  v6;
  if (a1 == a2)
  {
    goto LABEL_15;
  }

  v29 = a3;
  v7 = a3[5];
  v8 = a1 + v7;
  v9 = a2 + v7;
  outlined destroy of MLActivityClassifier.ModelParameters(v8, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  v10 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v9, v10) == 1)
  {
    v28 = type metadata accessor for MLImageClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v9, v28);
    if (EnumCaseMultiPayload == 1)
    {
      v16 = type metadata accessor for URL(0);
      (*(*(v16 - 8) + 32))(v8, v9, v16);
      v15 = 1;
      v13 = v8;
      v14 = v28;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        memcpy(v8, v9, *(*(v28 - 8) + 64));
        goto LABEL_10;
      }

      v12 = type metadata accessor for URL(0);
      (*(*(v12 - 8) + 32))(v8, v9, v12);
      v13 = v8;
      v14 = v28;
      v15 = 0;
    }

    swift_storeEnumTagMultiPayload(v13, v14, v15);
LABEL_10:
    swift_storeEnumTagMultiPayload(v8, v10, 1);
    goto LABEL_11;
  }

  memcpy(v8, v9, *(*(v10 - 8) + 64));
LABEL_11:
  v17 = v29[6];
  v18 = a1 + v17;
  v19 = a2 + v17;
  outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  v20 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  if (swift_getEnumCaseMultiPayload(v19, v20) == 1)
  {
    v21 = type metadata accessor for URL(0);
    (*(*(v21 - 8) + 32))(v18, v19, v21);
    v22 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
    *&v18[*(v22 + 20)] = *&v19[*(v22 + 20)];
    swift_storeEnumTagMultiPayload(v18, v20, 1);
  }

  else
  {
    memcpy(v18, v19, *(*(v20 - 8) + 64));
  }

  a3 = v29;
LABEL_15:
  v23 = a3[7];
  v24 = (a1 + v23);
  v25 = *(a1 + v23);
  v26 = *(a2 + v23);
  if (v25 != 2)
  {
    if (v26 != 2)
    {
      *v24 = v26;
      v25;
      goto LABEL_22;
    }

    outlined destroy of MLImageClassifier.ModelParameters.ClassifierType(a1 + v23);
    v26 = *(a2 + v23);
    goto LABEL_20;
  }

  if (v26 != 2)
  {
LABEL_20:
    *v24 = v26;
    goto LABEL_22;
  }

  *v24 = 2;
LABEL_22:
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t sub_27E726(void *a1, unsigned int a2, uint64_t a3)
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
    v5 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
    if (*(*(v5 - 8) + 84) == a2)
    {
      v6 = *(a3 + 20);
    }

    else
    {
      v5 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
      v6 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v6, a2, v5);
  }

  return result;
}

void sub_27E7C3(void *a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *a1 = 2 * (a2 - 1);
  }

  else
  {
    v6 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
    if (*(*(v6 - 8) + 84) == a3)
    {
      v7 = *(a4 + 20);
    }

    else
    {
      v6 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
      v7 = *(a4 + 24);
    }

    __swift_storeEnumTagSinglePayload(a1 + v7, a2, a2, v6);
  }
}

uint64_t type metadata accessor for MLImageClassifier.PersistentParameters(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLImageClassifier.PersistentParameters;
  if (!type metadata singleton initialization cache for MLImageClassifier.PersistentParameters)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLImageClassifier.PersistentParameters);
  }

  return result;
}

uint64_t type metadata completion function for MLImageClassifier.PersistentParameters(uint64_t a1)
{
  v4[0] = &value witness table for Builtin.BridgeObject + 64;
  result = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(319);
  if (v2 <= 0x3F)
  {
    v4[1] = *(result - 8) + 64;
    result = type metadata accessor for MLImageClassifier.FeatureExtractorType(319);
    if (v3 <= 0x3F)
    {
      v4[2] = *(result - 8) + 64;
      v4[3] = "\b";
      v4[4] = &value witness table for Builtin.Int64 + 64;
      v4[5] = &value witness table for Builtin.Int64 + 64;
      swift_initStructMetadata(a1, 256, 6, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

uint64_t MLImageClassifier.PersistentParameters.init(trainingData:modelParameters:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = *(*(type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = type metadata accessor for MLImageClassifier.PersistentParameters(0);
  v17 = v7[7];
  *(v3 + v17) = 2;
  *v3 = a1;
  outlined init with copy of Any?((a2 + 2), &v15);
  if (!v16)
  {
    BUG();
  }

  v8 = v3 + v7[5];
  outlined init with take of Any(&v15, v14);
  v9 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  swift_dynamicCast(v8, v14, &type metadata for Any + 8, v9, 7);
  MLImageClassifier.ModelParameters.algorithm.getter();
  v10 = *(v14 + *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (featureExtractor: MLImageClassifier.FeatureExtractorType, classifier: MLImageClassifier.ModelParameters.ClassifierType)) + 48));
  outlined init with take of MLClassifierMetrics(v14, v3 + v7[6], type metadata accessor for MLImageClassifier.FeatureExtractorType);
  v11 = v17;
  outlined consume of MLImageClassifier.ModelParameters.ClassifierType?(*(v3 + v17));
  *(v3 + v11) = v10;
  *(v3 + v7[8]) = *a2;
  v12 = a2[1];
  outlined destroy of MLImageClassifier.ModelParameters(a2);
  result = v7[9];
  *(v3 + result) = v12;
  return result;
}

NSURL *MLImageClassifier.PersistentParameters.init(sessionDirectory:)(uint64_t a1)
{
  v110 = v2;
  v3 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLImageClassifier.ModelParameters.ValidationData?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v88 = &v88;
  v94 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v7 = *(*(v94 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v90 = &v88;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLImageClassifier.FeatureExtractorType?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v97 = &v88;
  v98 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  v13 = *(*(v98 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v103 = &v88;
  v108 = type metadata accessor for URL(0);
  v96 = *(v108 - 8);
  v16 = *(v96 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v89 = &v88;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v102 = &v88;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v23 = type metadata accessor for MLImageClassifier.PersistentParameters(0);
  v24 = *(v23 + 28);
  v101 = v3;
  v93 = v24;
  *(v3 + v24) = (&dword_0 + 2);
  v111 = a1;
  URL.appendingPathComponent(_:)(0xD000000000000010, ("ObjectDetectorMetrics." + 0x8000000000000000));
  v25 = v110;
  v26 = Data.init(contentsOf:options:)(&v88, 0);
  if (!v25)
  {
    v30 = v27;
    v99 = v23;
    v100 = 0;
    v31 = v108;
    v32 = v26;
    v110 = *(v96 + 8);
    v110(&v88, v108);
    v33 = objc_opt_self(NSPropertyListSerialization);
    v106 = v32;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v105 = v30;
    v113[0] = 0;
    v35 = [v33 propertyListWithData:isa options:0 format:0 error:v113];
    v36 = v35;

    v37 = v113[0];
    v38 = v31;
    if (!v36)
    {
      v52 = v37;
      _convertNSErrorToError(_:)(v37);

      swift_willThrow();
      outlined consume of Data._Representation(v106, v105);
      v110(v111, v31);
      goto LABEL_30;
    }

    _bridgeAnyObjectToAny(_:)(v36);
    swift_unknownObjectRelease(v36);
    outlined init with copy of Any(v115, v113);
    v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
    v104 = &type metadata for Any + 8;
    if (!swift_dynamicCast(&v112, v113, &type metadata for Any + 8, v39, 6))
    {
      v53 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v53, 0, 0);
      *v54 = 0xD000000000000037;
      *(v54 + 8) = "parameters.plist" + 0x8000000000000000;
      *(v54 + 16) = 0;
      *(v54 + 32) = 0;
      *(v54 + 48) = 0;
      swift_willThrow();
      outlined consume of Data._Representation(v106, v105);
      v55 = v111;
      v56 = v38;
LABEL_29:
      v110(v55, v56);
      __swift_destroy_boxed_opaque_existential_1Tm(v115);
      goto LABEL_30;
    }

    v95 = v39;
    v40 = v112;
    specialized Dictionary.subscript.getter(0x73656C6966, 0xE500000000000000, v112);
    if (v114)
    {
      v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : [String]]);
      if (!swift_dynamicCast(&v112, v113, v104, v41, 6))
      {
        v58 = v40;
        v51 = v38;
LABEL_26:
        v58;
        goto LABEL_27;
      }

      v42 = v112;
      specialized Dictionary.subscript.getter(0xD000000000000014, ("Empty training input." + 0x8000000000000000), v40);
      if (v114)
      {
        v107 = v42;
        v109 = v40;
        if (!swift_dynamicCast(&v112, v113, v104, &type metadata for Int, 6))
        {
          v51 = v108;
LABEL_25:
          v107;
          v58 = v109;
          goto LABEL_26;
        }

        v91 = v112;
        v43 = v109;
        specialized Dictionary.subscript.getter(0x726574695F78616DLL, 0xEE00736E6F697461, v109);
        v44 = v108;
        if (v114)
        {
          if (swift_dynamicCast(&v112, v113, v104, &type metadata for Int, 6))
          {
            v45 = v112;
            v46 = v109;
            specialized Dictionary.subscript.getter(0xD000000000000011, ("logistic_regressor" + 0x8000000000000000), v109);
            if (!v114)
            {
              v51 = v44;
              v107;
              v46;
              _sypSgWOhTm_0(v113, &demangling cache variable for type metadata for Any?);
              v49 = v111;
              goto LABEL_28;
            }

            v92 = v45;
            v47 = v95;
            v48 = swift_dynamicCast(&v112, v113, v104, v95, 6);
            v49 = v111;
            if (!v48)
            {
              v51 = v44;
              v107;
              v109;
              goto LABEL_28;
            }

            v50 = v97;
            MLImageClassifier.FeatureExtractorType.init(dictionary:)(v112);
            if (__swift_getEnumTagSinglePayload(v50, 1, v98) == 1)
            {
              v51 = v44;
              v107;
              v109;
              _sypSgWOhTm_0(v50, &demangling cache variable for type metadata for MLImageClassifier.FeatureExtractorType?);
LABEL_28:
              v60 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
              swift_allocError(&type metadata for MLCreateError, v60, 0, 0);
              *v61 = 0xD000000000000034;
              *(v61 + 8) = "ad training parameters." + 0x8000000000000000;
              *(v61 + 16) = 0;
              *(v61 + 32) = 0;
              *(v61 + 48) = 0;
              swift_willThrow();
              outlined consume of Data._Representation(v106, v105);
              v55 = v49;
              v56 = v51;
              goto LABEL_29;
            }

            outlined init with take of MLClassifierMetrics(v50, v103, type metadata accessor for MLImageClassifier.FeatureExtractorType);
            v63 = v107;
            v64 = v100;
            v65 = specialized _NativeDictionary.mapValues<A>(_:)(v107);
            v100 = v64;
            v63;
            v66 = v101;
            v97 = v65;
            *v101 = v65;
            v67 = v99;
            *(v66 + *(v99 + 32)) = v92;
            v68 = v67;
            v98 = v66 + *(v67 + 24);
            outlined init with copy of MLTrainingSessionParameters(v103, v98, type metadata accessor for MLImageClassifier.FeatureExtractorType);
            *(v66 + *(v68 + 36)) = v91;
            specialized Dictionary.subscript.getter(0x6966697373616C63, 0xEF657079745F7265, v109);
            if (v114)
            {
              if (swift_dynamicCast(&v112, v113, v104, v47, 6))
              {
                MLImageClassifier.ModelParameters.ClassifierType.init(dictionary:)(v112);
                v69 = v113[0];
                v70 = v108;
                if (v113[0] != &dword_0 + 2)
                {
LABEL_42:
                  v71 = v101;
                  v72 = v93;
                  outlined consume of MLImageClassifier.ModelParameters.ClassifierType?(*(v101 + v93));
                  *(v71 + v72) = v69;
                  URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
                  v73 = v109;
                  specialized Dictionary.subscript.getter(0x69746164696C6176, 0xEA00000000006E6FLL, v109);
                  v73;
                  if (v114)
                  {
                    v74 = swift_dynamicCast(&v112, v113, v104, v95, 6);
                    v75 = v103;
                    if (v74)
                    {
                      v76 = v112;
                      v77 = v89;
                      (*(v96 + 16))(v89, v102, v70);
                      v78 = v76;
                      v79 = v88;
                      MLImageClassifier.ModelParameters.ValidationData.init(dictionary:tableFile:)(v78, v77);
                      if (__swift_getEnumTagSinglePayload(v79, 1, v94) != 1)
                      {
                        outlined consume of Data._Representation(v106, v105);
                        v85 = v79;
                        v86 = v110;
                        v110(v111, v70);
                        v86(v102, v70);
                        outlined destroy of MLActivityClassifier.ModelParameters(v103, type metadata accessor for MLImageClassifier.FeatureExtractorType);
                        __swift_destroy_boxed_opaque_existential_1Tm(v115);
                        v87 = v90;
                        outlined init with take of MLClassifierMetrics(v85, v90, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
                        outlined init with take of MLClassifierMetrics(v87, v101 + *(v99 + 20), type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
                        return __stack_chk_guard;
                      }

                      _sypSgWOhTm_0(v79, &demangling cache variable for type metadata for MLImageClassifier.ModelParameters.ValidationData?);
                      v80 = v70;
                      v81 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                      swift_allocError(&type metadata for MLCreateError, v81, 0, 0);
                      *v82 = 0xD000000000000037;
                      *(v82 + 8) = "ion Classification algorithm." + 0x8000000000000000;
                      *(v82 + 16) = 0;
                      *(v82 + 32) = 0;
                      *(v82 + 48) = 0;
                      swift_willThrow();
                      outlined consume of Data._Representation(v106, v105);
                      v83 = v110;
                      v110(v111, v80);
                      v83(v102, v80);
                      outlined destroy of MLActivityClassifier.ModelParameters(v103, type metadata accessor for MLImageClassifier.FeatureExtractorType);
                      __swift_destroy_boxed_opaque_existential_1Tm(v115);

                      outlined destroy of MLActivityClassifier.ModelParameters(v98, type metadata accessor for MLImageClassifier.FeatureExtractorType);
                      goto LABEL_30;
                    }

                    outlined consume of Data._Representation(v106, v105);
                    v84 = v110;
                    v110(v111, v70);
                  }

                  else
                  {
                    outlined consume of Data._Representation(v106, v105);
                    _sypSgWOhTm_0(v113, &demangling cache variable for type metadata for Any?);
                    v84 = v110;
                    v75 = v103;
                    v110(v111, v70);
                  }

                  v84(v102, v70);
                  outlined destroy of MLActivityClassifier.ModelParameters(v75, type metadata accessor for MLImageClassifier.FeatureExtractorType);
                  __swift_destroy_boxed_opaque_existential_1Tm(v115);
                  swift_storeEnumTagMultiPayload(v101 + *(v99 + 20), v94, 3);
                  return __stack_chk_guard;
                }

LABEL_41:
                v69 = 0;
                goto LABEL_42;
              }
            }

            else
            {
              _sypSgWOhTm_0(v113, &demangling cache variable for type metadata for Any?);
            }

            v70 = v108;
            goto LABEL_41;
          }

          v51 = v44;
          goto LABEL_25;
        }

        v51 = v108;
        v59 = v107;
      }

      else
      {
        v43 = v40;
        v51 = v108;
        v59 = v42;
      }

      v59;
      v57 = v43;
    }

    else
    {
      v57 = v40;
      v51 = v38;
    }

    v57;
    _sypSgWOhTm_0(v113, &demangling cache variable for type metadata for Any?);
LABEL_27:
    v49 = v111;
    goto LABEL_28;
  }

  v28 = *(v96 + 8);
  v29 = v108;
  v28(v111, v108);
  v28(&v88, v29);
LABEL_30:
  outlined consume of MLImageClassifier.ModelParameters.ClassifierType?(*(v101 + v93));
  return __stack_chk_guard;
}

uint64_t MLImageClassifier.FeatureExtractorType.init(dictionary:)(uint64_t a1)
{
  v3 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v56 = &v45;
  v45 = type metadata accessor for URL(0);
  v7 = *(v45 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v51 = &v45;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v46 = &v45;
  v57 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  v13 = *(*(v57 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = alloca(v13);
  v17 = alloca(v13);
  v18 = &v45;
  v19 = alloca(v13);
  v20 = alloca(v13);
  if (!*(a1 + 16))
  {
    goto LABEL_21;
  }

  v47 = &v45;
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(1684957547, 0xE400000000000000);
  if ((v22 & 1) == 0)
  {
    goto LABEL_21;
  }

  v48 = &v45;
  outlined init with copy of Any(*(a1 + 56) + 32 * v21, v49);
  v52 = &type metadata for Any + 8;
  if (!swift_dynamicCast(&v54, v49, &type metadata for Any + 8, &type metadata for String, 6))
  {
    goto LABEL_21;
  }

  v53 = v3;
  v23 = v54;
  v24 = v55;
  if (!(v54 ^ 0x697270656E656373 | v55 ^ 0xEA0000000000746ELL) || (_stringCompareWithSmolCheck(_:_:expecting:)(0x697270656E656373, 0xEA0000000000746ELL, v54, v55, 0) & 1) != 0)
  {
    v24;
    specialized Dictionary.subscript.getter(0x6E6F697369766572, 0xE800000000000000, a1);
    a1;
    v3 = v53;
    v25 = v57;
    if (v50)
    {
      v26 = swift_dynamicCast(&v54, v49, v52, &type metadata for Int, 6);
      if (v26)
      {
        v27 = v54;
      }

      else
      {
        v27 = 0;
      }

      v28 = v26 ^ 1;
    }

    else
    {
      _sypSgWOhTm_0(v49, &demangling cache variable for type metadata for Any?);
      v28 = 1;
      v27 = 0;
    }

    v45 = v27;
    LOBYTE(v46) = v28;
    swift_storeEnumTagMultiPayload(&v45, v25, 0);
    goto LABEL_15;
  }

  if (!(v23 ^ 0x6D6F74737563 | v24 ^ 0xE600000000000000))
  {
    v24;
    v3 = v53;
    v29 = v56;
    goto LABEL_17;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)(0x6D6F74737563, 0xE600000000000000, v23, v24, 0);
  v24;
  v34 = (v33 & 1) == 0;
  v3 = v53;
  v29 = v56;
  if (v34)
  {
LABEL_21:
    a1;
    v32 = 1;
    goto LABEL_22;
  }

LABEL_17:
  specialized Dictionary.subscript.getter(0x61705F6C65646F6DLL, 0xEA00000000006874, a1);
  if (!v50)
  {
    a1;
    _sypSgWOhTm_0(v49, &demangling cache variable for type metadata for Any?);
LABEL_26:
    v25 = v57;
    v32 = 1;
    return __swift_storeEnumTagSinglePayload(v3, v32, 1, v25);
  }

  if (!swift_dynamicCast(&v54, v49, v52, &type metadata for String, 6))
  {
    a1;
    goto LABEL_26;
  }

  v35 = v55;
  URL.init(string:)(v54, v55);
  v35;
  v32 = 1;
  v36 = v29;
  v37 = v45;
  if (__swift_getEnumTagSinglePayload(v36, 1, v45) == 1)
  {
    a1;
    _sypSgWOhTm_0(v56, &demangling cache variable for type metadata for URL?);
LABEL_22:
    v25 = v57;
    return __swift_storeEnumTagSinglePayload(v3, v32, 1, v25);
  }

  v39 = v46;
  v40 = v56;
  v56 = *(v7 + 32);
  (v56)(v46, v40, v37);
  (*(v7 + 16))(v51, v39, v37);
  specialized Dictionary.subscript.getter(0x74757074756FLL, 0xE600000000000000, a1);
  a1;
  (*(v7 + 8))(v39, v37);
  v41 = v37;
  if (!v50)
  {
    _sypSgWOhTm_0(v49, &demangling cache variable for type metadata for Any?);
    goto LABEL_31;
  }

  if (!swift_dynamicCast(&v54, v49, v52, &type metadata for String, 6))
  {
LABEL_31:
    v42 = 0;
    v43 = 0;
    goto LABEL_32;
  }

  v42 = v54;
  v43 = v55;
LABEL_32:
  v44 = *(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) + 20);
  v18 = v47;
  (v56)(v47, v51, v41);
  *(v18 + v44) = v42;
  *(v18 + v44 + 8) = v43;
  v25 = v57;
  swift_storeEnumTagMultiPayload(v18, v57, 1);
  v3 = v53;
LABEL_15:
  v30 = v18;
  v31 = v48;
  outlined init with take of MLClassifierMetrics(v30, v48, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  outlined init with take of MLClassifierMetrics(v31, v3, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  v32 = 0;
  return __swift_storeEnumTagSinglePayload(v3, v32, 1, v25);
}

uint64_t MLImageClassifier.ModelParameters.ClassifierType.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  if (!*(a1 + 16))
  {
    goto LABEL_13;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(1684957547, 0xE400000000000000);
  if ((v4 & 1) == 0)
  {
    goto LABEL_13;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v3, v14);
  if (!swift_dynamicCast(&v17, v14, &type metadata for Any + 8, &type metadata for String, 6))
  {
    goto LABEL_13;
  }

  v5 = v17;
  v6 = v18;
  if (v17 ^ 0xD000000000000011 | v18 ^ (&aLogisticregres_1[-32] | 0x8000000000000000))
  {
    v16 = v18;
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000011, &aLogisticregres_1[-32] | 0x8000000000000000, v17, v18, 0);
    v6 = v16;
    if ((v7 & 1) == 0)
    {
      v9 = &aMultilayerperc[-32] | 0x8000000000000000;
      if (!(v5 ^ 0xD000000000000014 | v9 ^ v16))
      {
        v16;
        goto LABEL_10;
      }

      v10 = v5;
      v11 = v16;
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000014, v9, v10, v16, 0);
      v11;
      if (v12)
      {
LABEL_10:
        specialized Dictionary.subscript.getter(0x7A6953726579616CLL, 0xEA00000000007365, a1);
        a1;
        if (v15)
        {
          v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
          if (swift_dynamicCast(&v17, v14, &type metadata for Any + 8, v13, 6))
          {
            result = v17;
            goto LABEL_15;
          }
        }

        else
        {
          _sypSgWOhTm_0(v14, &demangling cache variable for type metadata for Any?);
        }

LABEL_14:
        result = 2;
        goto LABEL_15;
      }

LABEL_13:
      a1;
      goto LABEL_14;
    }
  }

  v6;
  a1;
  result = 0;
LABEL_15:
  *v2 = result;
  return result;
}

uint64_t MLImageClassifier.ModelParameters.ValidationData.init(dictionary:tableFile:)(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = v2;
  v4 = type metadata accessor for URL(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v39 = &v37;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLImageClassifier.DataSource?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v38 = &v37;
  v12 = type metadata accessor for MLImageClassifier.DataSource(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v40 = &v37;
  v52 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v16 = *(*(v52 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v47 = &v37;
  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

  v19 = specialized __RawDictionaryStorage.find<A>(_:)(1684957547, 0xE400000000000000);
  if ((v20 & 1) == 0)
  {
    goto LABEL_9;
  }

  v51 = v3;
  outlined init with copy of Any(*(a1 + 56) + 32 * v19, &v41);
  v49 = &type metadata for Any + 8;
  if (!swift_dynamicCast(&v45, &v41, &type metadata for Any + 8, &type metadata for String, 6))
  {
    v3 = v51;
    goto LABEL_9;
  }

  v21 = v46;
  if (v45 ^ 0x656E6F6E | v46 ^ 0xE400000000000000)
  {
    v48 = v45;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)(1701736302, 0xE400000000000000, v45, v46, 0) & 1) == 0)
    {
      if (!(v48 ^ 0x756F735F61746164 | v21 ^ 0xEB00000000656372) || (_stringCompareWithSmolCheck(_:_:expecting:)(0x756F735F61746164, 0xEB00000000656372, v48, v21, 0) & 1) != 0)
      {
        v21;
        specialized Dictionary.subscript.getter(1635017060, 0xE400000000000000, a1);
        a1;
        if (v44)
        {
          v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
          if (swift_dynamicCast(&v45, &v41, v49, v27, 6))
          {
            v49 = v45;
            v28 = v39;
            (*(v5 + 16))(v39, v50, v4);
            v29 = v38;
            MLImageClassifier.DataSource.init(dictionary:tableFile:)(v49, v28);
            (*(v5 + 8))(v50, v4);
            v30 = v29;
            v22 = 1;
            if (__swift_getEnumTagSinglePayload(v30, 1, v12) == 1)
            {
              _sypSgWOhTm_0(v30, &demangling cache variable for type metadata for MLImageClassifier.DataSource?);
              v25 = 1;
              v3 = v51;
              goto LABEL_11;
            }

            v34 = v30;
            v35 = v40;
            outlined init with take of MLClassifierMetrics(v34, v40, type metadata accessor for MLImageClassifier.DataSource);
            v36 = v35;
            v24 = v47;
            outlined init with take of MLClassifierMetrics(v36, v47, type metadata accessor for MLImageClassifier.DataSource);
LABEL_29:
            v23 = v52;
            goto LABEL_7;
          }
        }

        else
        {
          _sypSgWOhTm_0(&v41, &demangling cache variable for type metadata for Any?);
        }

        v3 = v51;
        (*(v5 + 8))(v50, v4);
        goto LABEL_10;
      }

      if (!(v48 ^ 0x74696C7073 | v21 ^ 0xE500000000000000))
      {
        v21;
        v3 = v51;
        goto LABEL_24;
      }

      v31 = _stringCompareWithSmolCheck(_:_:expecting:)(0x74696C7073, 0xE500000000000000, v48, v21, 0);
      v21;
      v3 = v51;
      if (v31)
      {
LABEL_24:
        specialized Dictionary.subscript.getter(1635017060, 0xE400000000000000, a1);
        a1;
        if (v44)
        {
          v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
          if (swift_dynamicCast(&v45, &v41, v49, v32, 6))
          {
            MLSplitStrategy.init(dictionary:)(v45);
            (*(v5 + 8))(v50, v4);
            if (!v43)
            {
              v33 = v42;
              v24 = v47;
              *v47 = v41;
              *(v24 + 16) = v33;
              *(v24 + 17) = HIBYTE(v33) & 1;
              v22 = 0;
              goto LABEL_29;
            }

LABEL_10:
            v25 = 1;
LABEL_11:
            v23 = v52;
            return __swift_storeEnumTagSinglePayload(v3, v25, 1, v23);
          }
        }

        else
        {
          _sypSgWOhTm_0(&v41, &demangling cache variable for type metadata for Any?);
        }

        v23 = v52;
        (*(v5 + 8))(v50, v4);
        v25 = 1;
        return __swift_storeEnumTagSinglePayload(v3, v25, 1, v23);
      }

LABEL_9:
      (*(v5 + 8))(v50, v4);
      a1;
      goto LABEL_10;
    }
  }

  (*(v5 + 8))(v50, v4);
  a1;
  v21;
  v22 = 3;
  v23 = v52;
  v24 = v47;
LABEL_7:
  swift_storeEnumTagMultiPayload(v24, v23, v22);
  v3 = v51;
  outlined init with take of MLClassifierMetrics(v24, v51, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  v25 = 0;
  return __swift_storeEnumTagSinglePayload(v3, v25, 1, v23);
}

NSURL *MLImageClassifier.PersistentParameters.save(toSessionDirectory:)(uint64_t a1)
{
  v34 = a1;
  v39 = type metadata accessor for URL(0);
  v38 = *(v39 - 8);
  v3 = *(v38 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v33 = &v32;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  inited = swift_initStackObject(v6, v44);
  *(inited + 16) = 5;
  *(inited + 24) = 10;
  *(inited + 32) = 0x73656C6966;
  *(inited + 40) = 0xE500000000000000;
  v8 = *v2;
  v37 = v2;
  v9 = specialized _NativeDictionary.mapValues<A>(_:)(v8);
  v35 = v1;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : [String]]);
  *(inited + 48) = v9;
  *(inited + 80) = 0x69746164696C6176;
  *(inited + 88) = 0xEA00000000006E6FLL;
  v32 = type metadata accessor for MLImageClassifier.PersistentParameters(0);
  v10 = MLImageClassifier.ModelParameters.ValidationData.dictionary.getter();
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  *(inited + 120) = v11;
  *(inited + 96) = v10;
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = "logistic_regressor" + 0x8000000000000000;
  v12 = v32;
  v13 = MLImageClassifier.FeatureExtractorType.dictionary.getter();
  v36 = v11;
  *(inited + 168) = v11;
  *(inited + 144) = v13;
  strcpy((inited + 176), "max_iterations");
  *(inited + 191) = -18;
  v14 = v37;
  v15 = *(v37 + v12[8]);
  *(inited + 216) = &type metadata for Int;
  *(inited + 192) = v15;
  *(inited + 224) = 0xD000000000000014;
  *(inited + 232) = "Empty training input." + 0x8000000000000000;
  v16 = *(v14 + v12[9]);
  *(inited + 264) = &type metadata for Int;
  *(inited + 240) = v16;
  v17 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  v18 = *(v14 + v12[7]);
  if (v18 != 2)
  {
    *&v42 = *(v14 + v12[7]);
    outlined copy of MLImageClassifier.ModelParameters.ClassifierType?(v18);
    v19 = MLImageClassifier.ModelParameters.ClassifierType.dictionary.getter();
    v18;
    v43 = v36;
    *&v42 = v19;
    outlined init with take of Any(&v42, v41);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v17);
    v40 = v17;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v41, 0x6966697373616C63, 0xEF657079745F7265, isUniquelyReferenced_nonNull_native);
    LOBYTE(v17) = v40;
  }

  v21 = objc_opt_self(NSPropertyListSerialization);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v17;
  *&v42 = 0;
  v23 = [v21 dataWithPropertyList:isa format:200 options:0 error:&v42];
  v24 = v23;

  v25 = v42;
  if (v24)
  {
    v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)(v24);
    v28 = v27;

    v29 = v33;
    URL.appendingPathComponent(_:)(0xD000000000000010, ("ObjectDetectorMetrics." + 0x8000000000000000));
    Data.write(to:options:)(v29, 0, v26, v28);
    (*(v38 + 8))(v29, v39);
    outlined consume of Data._Representation(v26, v28);
  }

  else
  {
    v30 = v25;
    _convertNSErrorToError(_:)(v25);

    swift_willThrow();
  }

  return __stack_chk_guard;
}

uint64_t MLImageClassifier.ModelParameters.ValidationData.dictionary.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MLSoundClassifier.DataSource(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  *&v42 = &v33;
  v6 = *(*(type metadata accessor for MLImageClassifier.DataSource(0) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  outlined init with copy of MLTrainingSessionParameters(v1, &v33, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  switch(swift_getEnumCaseMultiPayload(&v33, v9))
  {
    case 0u:
      v13 = v34;
      v14 = v35;
      v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v42 = v33;
      inited = swift_initStackObject(v15, &v33);
      inited[2] = 2;
      inited[3] = 4;
      inited[4] = 1684957547;
      inited[5] = 0xE400000000000000;
      inited[9] = &type metadata for String;
      inited[6] = 0x74696C7073;
      inited[7] = 0xE500000000000000;
      inited[10] = 1635017060;
      inited[11] = 0xE400000000000000;
      v39 = v42;
      v40 = v13;
      v41 = v14;
      v17 = MLSplitStrategy.dictionary.getter();
      inited[15] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
      inited[12] = v17;
      v18 = &type metadata for Any + 8;
      v19 = inited;
      goto LABEL_5;
    case 1u:
      outlined init with take of MLClassifierMetrics(&v33, &v33, type metadata accessor for MLImageClassifier.DataSource);
      v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v30 = swift_initStackObject(v29, v37);
      v30[2] = 2;
      v30[3] = 4;
      v30[4] = 1684957547;
      v30[5] = 0xE400000000000000;
      v30[9] = &type metadata for String;
      v30[6] = 0x756F735F61746164;
      v30[7] = 0xEB00000000656372;
      v30[10] = 1635017060;
      v30[11] = 0xE400000000000000;
      v31 = MLImageClassifier.DataSource.dictionary.getter();
      v30[15] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
      v30[12] = v31;
      v24 = Dictionary.init(dictionaryLiteral:)(v30, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
      v26 = &v33;
      v25 = type metadata accessor for MLImageClassifier.DataSource;
      goto LABEL_7;
    case 2u:
      v20 = v42;
      *v42 = v33;
      swift_storeEnumTagMultiPayload(v20, v2, 2);
      v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v22 = swift_initStackObject(v21, v36);
      v22[2] = 2;
      v22[3] = 4;
      v22[4] = 1684957547;
      v22[5] = 0xE400000000000000;
      v22[9] = &type metadata for String;
      v22[6] = 0x756F735F61746164;
      v22[7] = 0xEB00000000656372;
      v22[10] = 1635017060;
      v22[11] = 0xE400000000000000;
      v23 = MLSoundClassifier.DataSource.dictionary.getter();
      v22[15] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
      v22[12] = v23;
      v24 = Dictionary.init(dictionaryLiteral:)(v22, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
      v25 = type metadata accessor for MLSoundClassifier.DataSource;
      v26 = v20;
LABEL_7:
      outlined destroy of MLActivityClassifier.ModelParameters(v26, v25);
      break;
    case 3u:
      v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v28 = swift_initStackObject(v27, v38);
      v28[2] = 1;
      v28[3] = 2;
      v28[4] = 1684957547;
      v28[5] = 0xE400000000000000;
      v28[9] = &type metadata for String;
      v28[6] = 1701736302;
      v28[7] = 0xE400000000000000;
      v18 = &type metadata for Any + 8;
      v19 = v28;
LABEL_5:
      v24 = Dictionary.init(dictionaryLiteral:)(v19, &type metadata for String, v18, &protocol witness table for String);
      break;
  }

  return v24;
}

void *MLImageClassifier.FeatureExtractorType.dictionary.getter()
{
  v27 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
  v1 = *(*(v27 - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  outlined init with copy of MLTrainingSessionParameters(v0, &v23, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  if (swift_getEnumCaseMultiPayload(&v23, v4) == 1)
  {
    outlined init with take of MLClassifierMetrics(&v23, &v23, type metadata accessor for MLImageClassifier.CustomFeatureExtractor);
    v25 = &type metadata for String;
    *&v24 = 0x6D6F74737563;
    *(&v24 + 1) = 0xE600000000000000;
    outlined init with take of Any(&v24, v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
    v28 = _swiftEmptyDictionarySingleton;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, 1684957547, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v9 = v28;
    v10 = type metadata accessor for URL(0);
    v25 = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v24);
    (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, &v23, v10);
    outlined init with take of Any(&v24, v26);
    v12 = swift_isUniquelyReferenced_nonNull_native(v9);
    v28 = v9;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, 0x61705F6C65646F6DLL, 0xEA00000000006874, v12);
    v13 = v28;
    v14 = *(v27 + 20);
    v15 = *(&v23 + v14 + 8);
    if (v15)
    {
      v16 = *(&v23 + v14);
      v25 = &type metadata for String;
      *&v24 = v16;
      *(&v24 + 1) = v15;
      outlined init with take of Any(&v24, v26);

      v17 = swift_isUniquelyReferenced_nonNull_native(v13);
      v28 = v13;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, 0x74757074756FLL, 0xE600000000000000, v17);
      v13 = v28;
    }

    outlined destroy of MLActivityClassifier.ModelParameters(&v23, type metadata accessor for MLImageClassifier.CustomFeatureExtractor);
  }

  else
  {
    v18 = v23;
    v19 = v24;
    v25 = &type metadata for String;
    *&v24 = 0x697270656E656373;
    *(&v24 + 1) = 0xEA0000000000746ELL;
    outlined init with take of Any(&v24, v26);
    v20 = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
    v28 = _swiftEmptyDictionarySingleton;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, 1684957547, 0xE400000000000000, v20);
    v13 = v28;
    if (!v19)
    {
      v25 = &type metadata for Int;
      *&v24 = v18;
      outlined init with take of Any(&v24, v26);
      v21 = swift_isUniquelyReferenced_nonNull_native(v13);
      v28 = v13;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, 0x6E6F697369766572, 0xE800000000000000, v21);
      return v28;
    }
  }

  return v13;
}

void *MLImageClassifier.ModelParameters.ClassifierType.dictionary.getter()
{
  v1 = *v0;
  if (*v0)
  {
    v11 = &type metadata for String;
    *&v10 = 0xD000000000000014;
    outlined init with take of Any(&v10, v12);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
    v13 = _swiftEmptyDictionarySingleton;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, 1684957547, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v3 = v13;
    v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
    *&v10 = v1;
    outlined init with take of Any(&v10, v12);
    v4 = swift_isUniquelyReferenced_nonNull_native(v3);
    v13 = v3;
    v5 = v4;
    v6 = 0x7A6953726579616CLL;
    v7 = 0xEA00000000007365;
  }

  else
  {
    v11 = &type metadata for String;
    *&v10 = 0xD000000000000011;
    *(&v10 + 1) = "multilayerPerceptron" + 0x8000000000000000;
    outlined init with take of Any(&v10, v12);
    v8 = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
    v13 = _swiftEmptyDictionarySingleton;
    v5 = v8;
    v6 = 1684957547;
    v7 = 0xE400000000000000;
  }

  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, v6, v7, v5);
  return v13;
}

uint64_t MLImageClassifier.DataSource.dictionary.getter()
{
  v1 = v0;
  v27 = type metadata accessor for URL(0);
  v2 = *(v27 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for MLImageClassifier.DataSource(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  outlined init with copy of MLTrainingSessionParameters(v1, &v23, type metadata accessor for MLImageClassifier.DataSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v23, v6);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v18 = v23;
      v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      inited = swift_initStackObject(v19, v24);
      *(inited + 16) = 2;
      *(inited + 24) = 4;
      *(inited + 32) = 1684957547;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 72) = &type metadata for String;
      strcpy((inited + 48), "files_by_label");
      *(inited + 63) = -18;
      *(inited + 80) = 0x73656C6966;
      *(inited + 88) = 0xE500000000000000;
      v21 = specialized _NativeDictionary.mapValues<A>(_:)(v18);
      v18;
      *(inited + 120) = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : [String]]);
      *(inited + 96) = v21;
      return Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
    }

    v11 = v27;
    v28 = v2;
    (*(v2 + 32))(&v23, &v23, v27);
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
    v13 = swift_initStackObject(v12, v25);
    v13[2] = 2;
    v13[3] = 4;
    v13[4] = 1684957547;
    v13[5] = 0xE400000000000000;
    v13[9] = &type metadata for String;
    v13[6] = 0x5F64656C6562616CLL;
    v14 = 0xED000073656C6966;
  }

  else
  {
    v11 = v27;
    v28 = v2;
    (*(v2 + 32))(&v23, &v23, v27);
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
    v13 = swift_initStackObject(v12, v26);
    v13[2] = 2;
    v13[3] = 4;
    v13[4] = 1684957547;
    v13[5] = 0xE400000000000000;
    v14 = "session_id_column" + 0x8000000000000000;
    v13[9] = &type metadata for String;
    v13[6] = 0xD000000000000013;
  }

  v13[7] = v14;
  v13[10] = 1752457584;
  v13[11] = 0xE400000000000000;
  v15 = URL.path.getter(v12);
  v13[15] = &type metadata for String;
  v13[12] = v15;
  v13[13] = v16;
  v17 = Dictionary.init(dictionaryLiteral:)(v13, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  (*(v28 + 8))(&v23, v11);
  return v17;
}

uint64_t MLImageClassifier.DataSource.init(dictionary:tableFile:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = v2;
  v5 = type metadata accessor for MLImageClassifier.DataSource(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  if (!*(a1 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(1684957547, 0xE400000000000000), (v10 & 1) == 0))
  {
    a1;
LABEL_27:
    v26 = type metadata accessor for URL(0);
    (*(*(v26 - 8) + 8))(v3, v26);
    v20 = 1;
    return __swift_storeEnumTagSinglePayload(v4, v20, 1, v5);
  }

  v33 = &v30;
  v37 = a2;
  outlined init with copy of Any(*(a1 + 56) + 32 * v9, v31);
  if (!swift_dynamicCast(&v34, v31, &type metadata for Any + 8, &type metadata for String, 6))
  {
    a1;
    goto LABEL_26;
  }

  v36 = v4;
  v11 = v34;
  v12 = v35;
  if (v34 ^ 0xD000000000000013 | v35 ^ (&aLabeledDirecto[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000013, &aLabeledDirecto[-32] | 0x8000000000000000, v34, v35, 0) & 1) == 0)
  {
    if (v11 ^ 0x5F64656C6562616CLL | v12 ^ 0xED000073656C6966 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x5F64656C6562616CLL, 0xED000073656C6966, v11, v12, 0) & 1) == 0)
    {
      if (v11 ^ 0x79625F73656C6966 | v12 ^ 0xEE006C6562616C5FLL)
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)(0x79625F73656C6966, 0xEE006C6562616C5FLL, v11, v12, 0);
        v12;
        if ((v21 & 1) == 0)
        {
          v28 = type metadata accessor for URL(0);
          (*(*(v28 - 8) + 8))(v37, v28);
          a1;
          v20 = 1;
          v4 = v36;
          return __swift_storeEnumTagSinglePayload(v4, v20, 1, v5);
        }
      }

      else
      {
        v12;
      }

      specialized Dictionary.subscript.getter(0x73656C6966, 0xE500000000000000, a1);
      a1;
      v4 = v36;
      if (v32)
      {
        v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : [String]]);
        if (!swift_dynamicCast(&v34, v31, &type metadata for Any + 8, v22, 6))
        {
          goto LABEL_26;
        }

        v23 = v34;
        v24 = specialized _NativeDictionary.mapValues<A>(_:)(v34);
        v23;
        v25 = type metadata accessor for URL(0);
        (*(*(v25 - 8) + 8))(v37, v25);
        v15 = v33;
        *v33 = v24;
        v4 = v36;
        v29 = 2;
        goto LABEL_17;
      }
    }

    else
    {
      v12;
      specialized Dictionary.subscript.getter(1752457584, 0xE400000000000000, a1);
      a1;
      v4 = v36;
      if (v32)
      {
        if (!swift_dynamicCast(&v34, v31, &type metadata for Any + 8, &type metadata for String, 6))
        {
          goto LABEL_26;
        }

        v18 = v35;
        v15 = v33;
        URL.init(fileURLWithPath:)(v34, v35);
        v18;
        v19 = type metadata accessor for URL(0);
        (*(*(v19 - 8) + 8))(v37, v19);
        v29 = 1;
LABEL_17:
        v16 = v29;
        goto LABEL_18;
      }
    }

    _sypSgWOhTm_0(v31, &demangling cache variable for type metadata for Any?);
    goto LABEL_26;
  }

  v12;
  specialized Dictionary.subscript.getter(1752457584, 0xE400000000000000, a1);
  a1;
  if (!v32)
  {
    _sypSgWOhTm_0(v31, &demangling cache variable for type metadata for Any?);
    v4 = v36;
    goto LABEL_26;
  }

  v13 = swift_dynamicCast(&v34, v31, &type metadata for Any + 8, &type metadata for String, 6);
  v4 = v36;
  if (!v13)
  {
LABEL_26:
    v3 = v37;
    goto LABEL_27;
  }

  v14 = v35;
  v15 = v33;
  URL.init(fileURLWithPath:)(v34, v35);
  v14;
  v16 = 0;
  v17 = type metadata accessor for URL(0);
  (*(*(v17 - 8) + 8))(v37, v17);
LABEL_18:
  swift_storeEnumTagMultiPayload(v15, v5, v16);
  outlined init with take of MLClassifierMetrics(v15, v4, type metadata accessor for MLImageClassifier.DataSource);
  v20 = 0;
  return __swift_storeEnumTagSinglePayload(v4, v20, 1, v5);
}

uint64_t outlined copy of MLImageClassifier.ModelParameters.ClassifierType?(uint64_t a1)
{
  if (a1 != 2)
  {
  }

  return result;
}

uint64_t outlined consume of MLImageClassifier.ModelParameters.ClassifierType?(uint64_t a1)
{
  if (a1 != 2)
  {
    return a1;
  }

  return result;
}

uint64_t _sypSgWOhTm_0(uint64_t a1, uint64_t *a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(a2);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLSupportVectorClassifier.Model(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
    a1[2] = a2[2];
    a1[3] = a2[3];
    a1[4] = a2[4];
    v5 = *(a3 + 24);
    v6 = a1 + v5;
    v7 = a2 + v5;

    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
    if (swift_getEnumCaseMultiPayload(v7, v8) == 1)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>);
      (*(*(v9 - 8) + 16))(v6, v7, v9);
      v10 = 1;
      v11 = v6;
      v12 = v8;
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>);
      (*(*(v14 - 8) + 16))(v6, v7, v14);
      v11 = v6;
      v12 = v8;
      v10 = 0;
    }

    swift_storeEnumTagMultiPayload(v11, v12, v10);
  }

  return v3;
}

uint64_t destroy for MLSupportVectorClassifier.Model(void *a1, uint64_t a2)
{
  a1[1];
  a1[2];
  a1[4];
  v2 = a1 + *(a2 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
  v4 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
  if (swift_getEnumCaseMultiPayload(v2, v3) == 1)
  {
    v4 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledName(v4);
  return (*(*(v5 - 8) + 8))(v2, v5);
}

void *initializeWithCopy for MLSupportVectorClassifier.Model(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  v4 = *(a3 + 24);
  v5 = a1 + v4;
  v6 = a2 + v4;

  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v6, v7);
  v9 = EnumCaseMultiPayload == 1;
  v10 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
  if (EnumCaseMultiPayload == 1)
  {
    v10 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledName(v10);
  (*(*(v11 - 8) + 16))(v5, v6, v11);
  swift_storeEnumTagMultiPayload(v5, v7, v9);
  return a1;
}

void *assignWithCopy for MLSupportVectorClassifier.Model(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1[1];
  a1[1] = a2[1];

  v5;
  v6 = a1[2];
  a1[2] = a2[2];

  v6;
  a1[3] = a2[3];
  v7 = a1[4];
  a1[4] = a2[4];

  v7;
  if (a1 != a2)
  {
    v8 = *(a3 + 24);
    v9 = a2 + v8;
    v10 = a1 + v8;
    outlined destroy of Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>(v10);
    v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v9, v11);
    v13 = EnumCaseMultiPayload == 1;
    v14 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
    if (EnumCaseMultiPayload == 1)
    {
      v14 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledName(v14);
    (*(*(v15 - 8) + 16))(v10, v9, v15);
    swift_storeEnumTagMultiPayload(v10, v11, v13);
  }

  return a1;
}

uint64_t outlined destroy of Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t initializeWithTake for MLSupportVectorClassifier.Model(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a3 + 24);
  v5 = a1 + v4;
  v6 = v4 + a2;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v6, v7);
  v9 = EnumCaseMultiPayload == 1;
  v10 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
  if (EnumCaseMultiPayload == 1)
  {
    v10 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledName(v10);
  (*(*(v11 - 8) + 32))(v5, v6, v11);
  swift_storeEnumTagMultiPayload(v5, v7, v9);
  return a1;
}

void *assignWithTake for MLSupportVectorClassifier.Model(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1[1];
  a1[1] = a2[1];
  v5;
  v6 = a1[2];
  a1[2] = a2[2];
  v6;
  a1[3] = a2[3];
  v7 = a1[4];
  a1[4] = a2[4];
  v7;
  if (a1 != a2)
  {
    v8 = *(a3 + 24);
    v9 = a2 + v8;
    v10 = a1 + v8;
    outlined destroy of Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>(v10);
    v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v9, v11);
    v13 = EnumCaseMultiPayload == 1;
    v14 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
    if (EnumCaseMultiPayload == 1)
    {
      v14 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledName(v14);
    (*(*(v15 - 8) + 32))(v10, v9, v15);
    swift_storeEnumTagMultiPayload(v10, v11, v13);
  }

  return a1;
}

uint64_t sub_2818FD(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
    return __swift_getEnumTagSinglePayload(*(a3 + 24) + a1, a2, v5);
  }

  return result;
}

uint64_t sub_28198A(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + 8) = 2 * (a2 - 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
    return __swift_storeEnumTagSinglePayload(*(a4 + 24) + a1, a2, a2, v5);
  }

  return result;
}

uint64_t type metadata accessor for MLSupportVectorClassifier.Model(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLSupportVectorClassifier.Model;
  if (!type metadata singleton initialization cache for MLSupportVectorClassifier.Model)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLSupportVectorClassifier.Model);
  }

  return result;
}

uint64_t type metadata completion function for MLSupportVectorClassifier.Model(uint64_t a1)
{
  v3[0] = &unk_347F38;
  v3[1] = &unk_347F50;
  result = type metadata accessor for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>(319);
  if (v2 <= 0x3F)
  {
    v3[2] = *(result - 8) + 64;
    swift_initStructMetadata(a1, 256, 3, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>(uint64_t a1)
{
  result = lazy cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>;
  if (!lazy cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>);
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>);
    result = type metadata accessor for Either(a1, v2, v3, v4);
    if (!v5)
    {
      lazy cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>> = result;
    }
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents26ClassificationDistributionVySSGG_SSSgs5NeverOTg503_s8d129ML25MLSupportVectorClassifierV5ModelV7applied2to12eventHandler11TabularData0L5FrameVAK_y0A12MLComponents5EventVYbcSgtYaKFSSSgAL26fG56VySSGcfu_32f90808cfe034de74f1d450820ef1a2faAsPTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<String>) - 8);
    v3 = ((*(v2 + 80) + 32) & ~*(v2 + 80)) + a1;
    v10 = *(v2 + 72);
    do
    {
      KeyPath = swift_getKeyPath(&unk_347FE8);
      swift_getAtKeyPath(v3, KeyPath);

      v5 = v9;
      v6 = _swiftEmptyArrayStorage[2];
      v7 = v6 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v6)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v6 + 1, 1);
        v7 = v6 + 1;
        v5 = v9;
      }

      _swiftEmptyArrayStorage[2] = v7;
      *&_swiftEmptyArrayStorage[2 * v6 + 4] = v5;
      v3 += v10;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents26ClassificationDistributionVySiGG_SiSgs5NeverOTg503_s8d129ML25MLSupportVectorClassifierV5ModelV7applied2to12eventHandler11TabularData0L5FrameVAK_y0A12MLComponents5EventVYbcSgtYaKFSiSgAL26fG57VySiGcfu0_32be6a1569bf578dffa8811060c9259ebeAsPTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<Int>) - 8);
    v3 = ((*(v2 + 80) + 32) & ~*(v2 + 80)) + a1;
    v11 = *(v2 + 72);
    do
    {
      v10 = v1;
      KeyPath = swift_getKeyPath(&unk_348020);
      swift_getAtKeyPath(v3, KeyPath);

      v5 = v12;
      v6 = _swiftEmptyArrayStorage[2];
      v7 = v6 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v6)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v7, 1);
        v7 = v6 + 1;
        v5 = v12;
      }

      _swiftEmptyArrayStorage[2] = v7;
      v8 = 2 * v6;
      _swiftEmptyArrayStorage[v8 + 4] = v5;
      LOBYTE(_swiftEmptyArrayStorage[v8 + 5]) = v13 & 1;
      v3 += v11;
      v1 = v10 - 1;
    }

    while (v10 != 1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t specialized FeatureVectorizer.Transformer.exportEncoders()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized FeatureVectorizer.Transformer.exportEncoders()(a1, a2, a3);
}

{
  v213 = a2;
  v5 = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureDescription?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v186 = &v183;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v187 = &v183;
  v196 = type metadata accessor for FeatureVectorizerConfiguration.Input(0);
  v197 = *(v196 - 8);
  v11 = *(v197 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v198 = &v183;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v224 = &v183;
  v220 = type metadata accessor for FeatureDescription(0);
  v225 = *(v220 - 8);
  v16 = *(v225 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v199 = &v183;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v200 = &v183;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v211 = &v183;
  v204 = type metadata accessor for FeatureType.ShapedArrayParameters.DataType(0);
  v203 = *(v204 - 8);
  v23 = *(v203 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v188 = &v183;
  v26 = *(*(type metadata accessor for FeatureType(0) - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v189 = &v183;
  v192 = type metadata accessor for ModelKind(0);
  v191 = *(v192 - 8);
  v29 = *(v191 + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v193 = &v183;
  v227 = type metadata accessor for Model(0);
  v229 = *(v227 - 8);
  v32 = *(v229 + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v201 = &v183;
  v35 = alloca(v32);
  v36 = alloca(v32);
  v207 = &v183;
  v37 = alloca(v32);
  v38 = alloca(v32);
  v202 = &v183;
  v39 = alloca(v32);
  v40 = alloca(v32);
  v208 = &v183;
  v41 = alloca(v32);
  v42 = alloca(v32);
  Model.init()();
  v221 = &v183;
  Model.specificationVersion.setter(1);

  ML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n(a1);
  v190 = v3;
  a1;
  v44 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(ML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n);
  v218 = v44;

  v45 = a3;

  v46 = v213;
  v47 = specialized Set.contains(_:)(v213, v45, v44);
  v214 = v45;
  v212 = a1;
  if (v47)
  {
    v230 = v44;
    v214;
    v48 = 1;
    while (1)
    {
      v209 = v213;
      v210 = v214;

      v49._countAndFlagsBits = 95;
      v49._object = 0xE100000000000000;
      String.append(_:)(v49);
      v216 = v48;
      v50 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
      v52 = v51;
      v49._countAndFlagsBits = v50;
      v49._object = v51;
      String.append(_:)(v49);
      v52;
      v53 = __OFADD__(1, v48++);
      if (v53)
      {
        BUG();
      }

      v46 = v209;
      v45 = v210;

      v54 = specialized Set.contains(_:)(v46, v45, v230);
      v45;
      if ((v54 & 1) == 0)
      {
        break;
      }

      v45;
    }

    v5 = v212;
    LOBYTE(v44) = v230;
  }

  v44;

  v195 = v46;
  v194 = v45;
  specialized Set._Variant.insert(_:)(&v209, v46, v45);
  v210;
  v185 = *(v5 + 16);
  if (v185)
  {

    v228 = 0;
    v55 = 0;
    v205._object = _swiftEmptyArrayStorage;
    v219 = _swiftEmptyArrayStorage;
    do
    {
      v184 = v55;
      v56 = 32 * v55;
      v205._countAndFlagsBits = *(v5 + 32 * v55 + 32);
      v57 = *(v5 + 32 * v55 + 40);
      v58 = *(v5 + 32 * v55 + 48);
      v59 = *(v5 + v56 + 56);

      outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v58, v59);
      v60 = v57;
      v61 = v58;
      countAndFlagsBits = v205._countAndFlagsBits;
      ColumnDescriptor.featureDescription.getter(v205._countAndFlagsBits, v57, v61, v59);
      switch(v59)
      {
        case 0:
        case 1:
        case 2:
        case 3:
          FeatureVectorizerConfiguration.Input.init(name:size:)(countAndFlagsBits, v57, v61);
          outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v61, v59);
          if (__OFADD__(v61, v228))
          {
            BUG();
          }

          v228 += v61;
          (*(v225 + 16))(v199, v211, v220);
          v63 = Model.inputs.modify(&v209);
          v65 = v64;
          v66 = *v64;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v64);
          *v65 = v66;
          v230 = v63;
          if (!isUniquelyReferenced_nonNull_native)
          {
            v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v66 + 16) + 1, 1, v66);
            *v65 = v66;
          }

          v68 = *(v66 + 16);
          if (*(v66 + 24) >> 1 <= v68)
          {
            v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v66 + 24) >= 2uLL, v68 + 1, 1, v66);
            *v65 = v66;
          }

          *(v66 + 16) = v68 + 1;
          v69 = v225;
          v70 = v66 + ((*(v225 + 80) + 32) & ~*(v225 + 80)) + *(v225 + 72) * v68;
          v71 = v199;
          goto LABEL_16;
        case 4:
          v209 = 0x5F6465646F636E65;
          v210 = 0xE800000000000000;

          v217 = v61;
          outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v61, 4);
          v97._countAndFlagsBits = countAndFlagsBits;
          v97._object = v60;
          v222 = v60;
          String.append(_:)(v97);
          v222;
          v98 = v209;
          v99 = v210;
          v100 = v218;

          v226 = v100;
          LOBYTE(v100) = specialized Set.contains(_:)(v98, v99, v100);
          v99;
          if ((v100 & 1) == 0)
          {
            v230 = v98;
            v108 = v99;
            goto LABEL_60;
          }

          v101 = 1;
          v223 = v99;
          v206 = v98;
LABEL_36:
          v209 = v98;
          v210 = v99;

          v102._countAndFlagsBits = 95;
          v102._object = 0xE100000000000000;
          String.append(_:)(v102);
          v216 = v101;
          v103 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
          v105 = v104;
          v102._countAndFlagsBits = v103;
          v102._object = v104;
          String.append(_:)(v102);
          v105;
          v53 = __OFADD__(1, v101);
          v106 = v101 + 1;
          if (v53)
          {
            BUG();
          }

          v215 = v106;
          v107 = v209;
          v108 = v210;
          v83 = *(v226 + 16) == 0;
          v230 = v209;
          if (v83)
          {
            v119 = v223;
          }

          else
          {
            Hasher.init(_seed:)(*(v226 + 40));

            String.hash(into:)(&v209, v107);
            v109 = Hasher._finalize()();
            v110 = ~(-1 << *(v226 + 32));
            v111 = v110 & v109;
            v112 = *(v226 + 8 * ((v110 & v109) >> 6) + 56);
            if (_bittest64(&v112, v111))
            {
              v113 = v107;
              v114 = *(v226 + 48);
              do
              {
                if (!(v113 ^ *(v114 + 16 * v111) | v108 ^ *(v114 + 16 * v111 + 8)) || (v115 = _stringCompareWithSmolCheck(_:_:expecting:)(*(v114 + 16 * v111), *(v114 + 16 * v111 + 8), v113, v108, 0), v113 = v230, (v115 & 1) != 0))
                {
                  swift_bridgeObjectRelease_n(v108, 2);
                  v99 = v223;
                  v98 = v206;
                  v101 = v215;
                  goto LABEL_36;
                }

                v111 = v110 & (v111 + 1);
                v116 = *(v226 + 8 * (v111 >> 6) + 56);
              }

              while (_bittest64(&v116, v111));
            }

            v223;
            v119 = v108;
          }

          v119;
LABEL_60:

          specialized Set._Variant.insert(_:)(&v209, v230, v108);
          v210;
          v140 = v217;
          v141 = *(v217 + 16);

          FeatureVectorizerConfiguration.Input.init(name:size:)(v230, v108, v141);
          if (__OFADD__(v141, v228))
          {
            BUG();
          }

          v228 += v141;
          v142 = v208;
          specialized FeatureVectorizer.Transformer.makeOneHotEncoder(inputName:outputName:categories:)(v205._countAndFlagsBits, v222, v230, v108, v140);
          outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v140, 4);
          v108;
          (*(v229 + 16))(v202, v142, v227);
          v143 = v219;
          if (!swift_isUniquelyReferenced_nonNull_native(v219))
          {
            v143 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v143[2] + 1, 1, v143);
          }

          v144 = v143[2];
          v145 = v227;
          v146 = v229;
          if (v143[3] >> 1 <= v144)
          {
            v163 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v143[3] >= 2uLL, v144 + 1, 1, v143);
            v146 = v229;
            v145 = v227;
            v143 = v163;
          }

          v143[2] = v144 + 1;
          v147 = *(v146 + 80);
          v219 = v143;
          (*(v146 + 32))(v143 + ((v147 + 32) & ~v147) + *(v146 + 72) * v144, v202, v145);
          v148 = Model.outputs.getter();
          v149 = v148;
          v150 = v187;
          specialized Collection.first.getter(v148);
          v149;
          v151 = v220;
          if (__swift_getEnumTagSinglePayload(v150, 1, v220) == 1)
          {
            BUG();
          }

          v230 = Model.inputs.modify(&v209);
          v153 = v152;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v154 = *(*v153 + 16);
          specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v154);
          v155 = *v153;
          *(v155 + 16) = v154 + 1;
          (*(v225 + 32))(v155 + ((*(v225 + 80) + 32) & ~*(v225 + 80)) + *(v225 + 72) * v154, v150, v151);
          (v230)(&v209, 0);
          v222;
          outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v217, 4);
          v139 = v208;
          goto LABEL_67;
        case 5:
          v209 = 0x5F6465646F636E65;
          v210 = 0xE800000000000000;

          v217 = v61;
          outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v61, 5);
          v72._countAndFlagsBits = countAndFlagsBits;
          v72._object = v60;
          v222 = v60;
          String.append(_:)(v72);
          v222;
          v73 = v209;
          v74 = v210;
          v75 = v218;

          v230 = v75;
          LOBYTE(v75) = specialized Set.contains(_:)(v73, v74, v75);
          v74;
          if ((v75 & 1) == 0)
          {
            v117 = v73;
            goto LABEL_51;
          }

          v215 = 1;
          v223 = v74;
          v206 = v73;
          break;
        case 6:
          FeatureVectorizerConfiguration.Input.init(name:size:)(countAndFlagsBits, v57, 1);
          outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v61, 6);
          if (__OFADD__(1, v228))
          {
            BUG();
          }

          ++v228;
          (*(v225 + 16))(v200, v211, v220);
          v230 = Model.inputs.modify(&v209);
          v93 = v92;
          v94 = *v92;
          v95 = swift_isUniquelyReferenced_nonNull_native(*v92);
          *v93 = v94;
          if (!v95)
          {
            v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v94 + 16) + 1, 1, v94);
            *v93 = v94;
          }

          v96 = *(v94 + 16);
          if (*(v94 + 24) >> 1 <= v96)
          {
            v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v94 + 24) >= 2uLL, v96 + 1, 1, v94);
            *v93 = v94;
          }

          *(v94 + 16) = v96 + 1;
          v69 = v225;
          v70 = v94 + ((*(v225 + 80) + 32) & ~*(v225 + 80)) + *(v225 + 72) * v96;
          v71 = v200;
LABEL_16:
          (*(v69 + 32))(v70, v71, v220);
          (v230)(&v209, 0);
          goto LABEL_68;
      }

      while (1)
      {
        v209 = v73;
        v210 = v74;

        v76._countAndFlagsBits = 95;
        v76._object = 0xE100000000000000;
        String.append(_:)(v76);
        v77 = v215;
        v216 = v215;
        v78 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v80 = v79;
        v76._countAndFlagsBits = v78;
        v76._object = v79;
        String.append(_:)(v76);
        v80;
        v53 = __OFADD__(1, v77);
        v81 = v77 + 1;
        if (v53)
        {
          BUG();
        }

        v215 = v81;
        v82 = v209;
        v74 = v210;
        v83 = *(v230 + 16) == 0;
        v226 = v209;
        if (v83)
        {
          break;
        }

        Hasher.init(_seed:)(*(v230 + 40));

        String.hash(into:)(&v209, v82);
        v84 = Hasher._finalize()();
        v85 = ~(-1 << *(v230 + 32));
        v86 = v85 & v84;
        v87 = *(v230 + 8 * ((v85 & v84) >> 6) + 56);
        if (!_bittest64(&v87, v86))
        {
LABEL_47:
          v223;
          v118 = v74;
          goto LABEL_50;
        }

        v88 = v82;
        v89 = *(v230 + 48);
        while (v88 ^ *(v89 + 16 * v86) | v74 ^ *(v89 + 16 * v86 + 8))
        {
          v90 = _stringCompareWithSmolCheck(_:_:expecting:)(*(v89 + 16 * v86), *(v89 + 16 * v86 + 8), v88, v74, 0);
          v88 = v226;
          if (v90)
          {
            break;
          }

          v86 = v85 & (v86 + 1);
          v91 = *(v230 + 8 * (v86 >> 6) + 56);
          if (!_bittest64(&v91, v86))
          {
            goto LABEL_47;
          }
        }

        swift_bridgeObjectRelease_n(v74, 2);
        v74 = v223;
        v73 = v206;
      }

      v118 = v223;
LABEL_50:
      v118;
      v117 = v226;
LABEL_51:

      specialized Set._Variant.insert(_:)(&v209, v117, v74);
      v210;
      v120 = v217;
      v121 = *(v217 + 16);

      FeatureVectorizerConfiguration.Input.init(name:size:)(v117, v74, v121);
      if (__OFADD__(v121, v228))
      {
        BUG();
      }

      v122 = v121 + v228;
      v123 = v117;
      v124 = v207;
      specialized FeatureVectorizer.Transformer.makeDictionaryVectorizer(inputName:outputName:descriptors:)(v205._countAndFlagsBits, v222, v123, v74, v120);
      outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v120, 5);
      v74;
      (*(v229 + 16))(v201, v124, v227);
      v125 = v219;
      v126 = swift_isUniquelyReferenced_nonNull_native(v219);
      v228 = v122;
      if (!v126)
      {
        v125 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v125[2] + 1, 1, v125);
      }

      v127 = v125[2];
      v128 = v227;
      v129 = v229;
      if (v125[3] >> 1 <= v127)
      {
        v162 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v125[3] >= 2uLL, v127 + 1, 1, v125);
        v129 = v229;
        v128 = v227;
        v125 = v162;
      }

      v125[2] = v127 + 1;
      v130 = *(v129 + 80);
      v219 = v125;
      (*(v129 + 32))(v125 + ((v130 + 32) & ~v130) + *(v129 + 72) * v127, v201, v128);
      v131 = Model.outputs.getter();
      v132 = v131;
      v133 = v186;
      specialized Collection.first.getter(v131);
      v132;
      v134 = v220;
      if (__swift_getEnumTagSinglePayload(v133, 1, v220) == 1)
      {
        BUG();
      }

      v230 = Model.inputs.modify(&v209);
      v136 = v135;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v137 = *(*v136 + 16);
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v137);
      v138 = *v136;
      *(v138 + 16) = v137 + 1;
      (*(v225 + 32))(v138 + ((*(v225 + 80) + 32) & ~*(v225 + 80)) + *(v225 + 72) * v137, v133, v134);
      (v230)(&v209, 0);
      v222;
      outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v217, 5);
      v139 = v207;
LABEL_67:
      (*(v229 + 8))(v139, v227);
LABEL_68:
      (*(v197 + 16))(v198, v224, v196);
      object = v205._object;
      if (!swift_isUniquelyReferenced_nonNull_native(v205._object))
      {
        object = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, object[2] + 1, 1, object);
      }

      v157 = object[2];
      if (object[3] >> 1 <= v157)
      {
        object = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(object[3] >= 2uLL, v157 + 1, 1, object);
      }

      v55 = v184 + 1;
      object[2] = v157 + 1;
      v158 = v197;
      v159 = *(v197 + 80);
      v205._object = object;
      v160 = object + ((v159 + 32) & ~v159) + *(v197 + 72) * v157;
      v161 = v196;
      (*(v197 + 32))(v160, v198, v196);
      (*(v158 + 8))(v224, v161);
      (*(v225 + 8))(v211, v220);
      v5 = v212;
    }

    while (v55 != v185);
    v212;
    v164 = v205._object;
  }

  else
  {
    v164 = _swiftEmptyArrayStorage;
    v228 = 0;
    v219 = _swiftEmptyArrayStorage;
  }

  v218;
  v165 = v193;
  FeatureVectorizerConfiguration.init(inputs:)(v164);
  (*(v191 + 104))(v165, enum case for ModelKind.featureVectorizer(_:), v192);
  Model.kind.setter(v165);
  v166 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
  v167 = swift_allocObject(v166, ((*(v225 + 80) + 32) & ~*(v225 + 80)) + *(v225 + 72), *(v225 + 80) | 7);
  v224 = v167;
  *(v167 + 16) = 1;
  *(v167 + 24) = 2;
  v168 = v188;
  (*(v203 + 104))(v188, enum case for FeatureType.ShapedArrayParameters.DataType.double(_:), v204);
  v169 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v170 = swift_allocObject(v169, 40, 7);
  v171 = v170;
  v170[2] = 1;
  v170[3] = 2;
  v170[4] = v228;
  v172 = v189;
  static FeatureType.shapedArray(dataType:shape:optional:)(v168, v170, 0);
  v171;
  (*(v203 + 8))(v168, v204);
  FeatureDescription.init(name:type:description:)(v195, v194, v172, 0, 0xE000000000000000);
  v173 = v221;
  Model.outputs.setter(v224);
  v174 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Model>);
  v175 = *(v229 + 80);
  v176 = (v175 + 32) & ~*(v229 + 80);
  v177 = swift_allocObject(v174, v176 + *(v229 + 72), v175 | 7);
  *(v177 + 16) = 1;
  *(v177 + 24) = 2;
  v178 = v177 + v176;
  v179 = v227;
  v180 = v229;
  (*(v229 + 16))(v178, v173, v227);
  v209 = v219;
  specialized Array.append<A>(contentsOf:)(v177);
  v181 = v209;
  (*(v180 + 8))(v221, v179);
  return v181;
}

{
  return specialized FeatureVectorizer.Transformer.exportEncoders()(a1, a2, a3);
}

uint64_t specialized FeatureVectorizer.Transformer.makeOneHotEncoder(inputName:outputName:categories:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a3;
  v33 = a2;
  v34 = a1;
  v7 = v5;
  v35 = type metadata accessor for FeatureType(0);
  v36 = *(v35 - 8);
  v8 = *(v36 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v32 = v28;
  v41 = type metadata accessor for OneHotEncoderConfiguration.UnknownBehavior(0);
  v37 = *(v41 - 8);
  v11 = *(v37 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v39 = type metadata accessor for ModelKind(0);
  v40 = *(v39 - 8);
  v14 = *(v40 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  Model.init()();
  v38 = v7;
  Model.specificationVersion.setter(1);
  v29 = a5;

  specialized MutableCollection<>.sort(by:)(&v29);
  v17 = v29;
  (*(v37 + 104))(v28, enum case for OneHotEncoderConfiguration.UnknownBehavior.error(_:), v41);
  OneHotEncoderConfiguration.init(orderedCategories:sparseOutput:unknownBehavior:)(v17, 1, v28);
  (*(v40 + 104))(v28, enum case for ModelKind.oneHotEncoder(_:), v39);
  Model.kind.setter(v28);
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
  v39 = v18;
  v19 = *(type metadata accessor for FeatureDescription(0) - 8);
  v20 = *(v19 + 80);
  v21 = (v20 + 32) & ~*(v19 + 80);
  v40 = v21 + *(v19 + 72);
  v20 |= 7uLL;
  v22 = swift_allocObject(v18, v40, v20);
  *(v22 + 16) = 1;
  *(v22 + 24) = 2;
  v41 = v22 + v21;
  v23 = v33;

  v24 = v32;
  FeatureType.StringParameters.init(optional:)(0);
  (*(v36 + 104))(v24, enum case for FeatureType.string(_:), v35);
  FeatureDescription.init(name:type:description:)(v34, v23, v24, 0, 0xE000000000000000);
  Model.inputs.setter(v22);
  v25 = swift_allocObject(v39, v40, v20);
  *(v25 + 16) = 1;
  *(v25 + 24) = 2;
  v26 = v30;

  static FeatureType.dictionaryWithIntKeys(optional:)(0);
  FeatureDescription.init(name:type:description:)(v31, v26, v24, 0, 0xE000000000000000);
  return Model.outputs.setter(v25);
}

uint64_t specialized FeatureVectorizer.Transformer.makeDictionaryVectorizer(inputName:outputName:descriptors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a4;
  v30 = a3;
  v33 = a2;
  v32 = a1;
  v7 = v5;
  v8 = *(*(type metadata accessor for FeatureType(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v34 = &v28;
  v37 = type metadata accessor for ModelKind(0);
  v38 = *(v37 - 8);
  v11 = *(v38 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  Model.init()();
  v36 = v7;
  Model.specificationVersion.setter(1);
  ML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n(a5);
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v15 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
  DictionaryVectorizerConfiguration.init<A>(keys:)(&ML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n, v14, v15);
  (*(v38 + 104))(&v28, enum case for ModelKind.dictionaryVectorizer(_:), v37);
  Model.kind.setter(&v28);
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
  v37 = v16;
  v17 = *(type metadata accessor for FeatureDescription(0) - 8);
  v18 = *(v17 + 80);
  v19 = (v18 + 32) & ~*(v17 + 80);
  v38 = v19 + *(v17 + 72);
  v18 |= 7uLL;
  v20 = swift_allocObject(v16, v38, v18);
  *(v20 + 16) = 1;
  *(v20 + 24) = 2;
  v35 = v20 + v19;
  v21 = v33;

  v22 = v34;
  static FeatureType.dictionaryWithStringKeys(optional:)(0);
  v23 = v21;
  v24 = v22;
  FeatureDescription.init(name:type:description:)(v32, v23, v22, 0, 0xE000000000000000);
  Model.inputs.setter(v20);
  v25 = swift_allocObject(v37, v38, v18);
  *(v25 + 16) = 1;
  *(v25 + 24) = 2;
  v26 = v31;

  static FeatureType.dictionaryWithIntKeys(optional:)(0);
  FeatureDescription.init(name:type:description:)(v30, v26, v24, 0, 0xE000000000000000);
  return Model.outputs.setter(v25);
}

uint64_t MLSupportVectorClassifier.Model.exportAsCoreMLModel()()
{
  v1[47] = v0;
  v2 = type metadata accessor for Model(0);
  v1[48] = v2;
  v3 = *(v2 - 8);
  v1[49] = v3;
  v1[50] = swift_task_alloc((*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLSupportVectorClassifier.Model.exportAsCoreMLModel(), 0, 0);
}

{
  v1 = NSFullUserName();
  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(v2);
  v5 = v4;

  *(v0 + 88) = v3;
  *(v0 + 96) = v5;
  *(v0 + 104) = 0xD000000000000033;
  *(v0 + 112) = "RandomForestRegressor" + 0x8000000000000000;
  *(v0 + 120) = 0;
  *(v0 + 136) = 49;
  *(v0 + 144) = 0xE100000000000000;
  *(v0 + 152) = 0;
  *(v0 + 16) = v3;
  *(v0 + 24) = v5;
  *(v0 + 32) = 0xD000000000000033;
  *(v0 + 40) = "RandomForestRegressor" + 0x8000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 64) = 49;
  *(v0 + 72) = 0xE100000000000000;
  *(v0 + 80) = 0;
  outlined retain of MLModelMetadata((v0 + 88));
  outlined release of MLModelMetadata((v0 + 16));
  qmemcpy((v0 + 160), (v0 + 88), 0x48uLL);
  MLSupportVectorClassifier.Model.export(metadata:)((v0 + 160));
  qmemcpy((v0 + 304), (v0 + 160), 0x48uLL);
  outlined release of MLModelMetadata((v0 + 304));
  type metadata accessor for MLModel();
  v6 = swift_task_alloc(208);
  *(v0 + 408) = v6;
  *v6 = v0;
  v6[1] = MLSupportVectorClassifier.Model.exportAsCoreMLModel();
  return static MLModel.compile(_:)(*(v0 + 400));
}

{
  v1 = *(v0 + 400);
  (*(*(v0 + 392) + 8))(v1, *(v0 + 384));
  v1;
  return (*(v0 + 8))(*(v0 + 424));
}

{
  (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));
  *(v0 + 400);
  return (*(v0 + 8))();
}

uint64_t MLSupportVectorClassifier.Model.exportAsCoreMLModel()(uint64_t a1)
{
  v5 = *(*v2 + 408);
  v4 = *v2;
  *(*v2 + 416) = v1;
  v5;
  if (v1)
  {
    v6 = MLSupportVectorClassifier.Model.exportAsCoreMLModel();
  }

  else
  {
    *(v4 + 424) = a1;
    v6 = MLSupportVectorClassifier.Model.exportAsCoreMLModel();
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t MLSupportVectorClassifier.Model.computeMetrics(on:)(uint64_t a1, uint64_t a2)
{
  v3[4] = v2;
  v3[3] = a2;
  v3[2] = a1;
  v4 = (*(*(type metadata accessor for AnyColumn(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3[5] = swift_task_alloc(v4);
  v3[6] = swift_task_alloc(v4);
  v5 = type metadata accessor for DataFrame(0);
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v7 = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[9] = v7;
  v8 = swift_task_alloc(368);
  v3[10] = v8;
  *v8 = v3;
  v8[1] = MLSupportVectorClassifier.Model.computeMetrics(on:);
  return MLSupportVectorClassifier.Model.applied(to:eventHandler:)(v7, a2, 0, 0);
}

uint64_t MLSupportVectorClassifier.Model.computeMetrics(on:)()
{
  v2 = *(*v1 + 80);
  *(*v1 + 88) = v0;
  v2;
  if (v0)
  {
    v3 = MLSupportVectorClassifier.Model.computeMetrics(on:);
  }

  else
  {
    v3 = MLSupportVectorClassifier.Model.computeMetrics(on:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v8 = *(v0 + 72);
  v6 = *(v0 + 64);
  v7 = *(v0 + 56);
  v9 = *(v0 + 48);
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);
  v3 = *v2;
  v4 = v2[1];
  DataFrame.subscript.getter(*v2, v4);
  DataFrame.subscript.getter(v3, v4);
  AnyClassificationMetrics.init(_:_:)(v9, v1);
  (*(v6 + 8))(v8, v7);
  v8;
  v9;
  v1;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  *(v0 + 72);
  v2;
  v1;
  return (*(v0 + 8))();
}

uint64_t MLSupportVectorClassifier.Model.predictions(from:)(uint64_t a1, uint64_t a2)
{
  v3[3] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DataFrame(0);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = swift_task_alloc((*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[6] = v6;
  v7 = swift_task_alloc(368);
  v3[7] = v7;
  *v7 = v3;
  v7[1] = MLSupportVectorClassifier.Model.predictions(from:);
  return MLSupportVectorClassifier.Model.applied(to:eventHandler:)(v6, a2, 0, 0);
}

uint64_t MLSupportVectorClassifier.Model.predictions(from:)()
{
  v2 = *(*v1 + 56);
  *(*v1 + 64) = v0;
  v2;
  if (v0)
  {
    v3 = closure #1 in closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:);
  }

  else
  {
    v3 = MLSupportVectorClassifier.Model.predictions(from:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  v3 = *(v0 + 32);
  DataFrame.subscript.getter(**(v0 + 24), *(*(v0 + 24) + 8));
  (*(v2 + 8))(v1, v3);
  v1;
  return (*(v0 + 8))();
}

uint64_t MLSupportVectorClassifier.Model.export(metadata:)(uint64_t *a1)
{
  v3 = v1;
  v30 = *a1;
  v31 = a1[1];
  v34 = a1[2];
  v35 = a1[3];
  v39 = a1[4];
  object = a1[5];
  v32 = a1[6];
  v33 = a1[7];
  v41 = a1[8];
  v4 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for String, &protocol witness table for String);
  MLSupportVectorClassifier.Model.export(userInfo:)();
  if (v2)
  {
    return v4;
  }

  v36 = 0;
  v6 = v4;

  Model.modelDescription.setter(v34, v35);

  Model.versionString.setter(v32, v33);

  Model.author.setter(v30, v31);
  v7 = v39;
  if (!object)
  {
    v7 = 0;
  }

  v8 = 0xE000000000000000;
  if (object)
  {
    v8 = object;
  }

  v9 = v7;
  v10 = v3;
  Model.license.setter(v9, v8);
  if (v41)
  {
    v11 = v41;
  }

  else
  {
    v11 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for String, &protocol witness table for String);
  }

  Model.metadata.setter(v11);

  v12 = Model.metadata.modify(v28);
  v37 = v6;
  v13 = v12;
  v14 = v36;
  specialized Dictionary._Variant.merge<A>(_:uniquingKeysWith:)(v6, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v15);
  v41 = v14;
  v13(v28, 0);
  v16 = getOSVersion()();
  v38 = v10;
  countAndFlagsBits = v16._countAndFlagsBits;
  object = v16._object;
  v39 = Model.metadata.modify(v28);
  v19 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v18);
  v29 = *v19;
  *v19 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(countAndFlagsBits, object, 0xD00000000000001ALL, ("Recommender Model" + 0x8000000000000000), isUniquelyReferenced_nonNull_native);
  *v19 = v29;
  v39(v28, 0);
  v21 = Model.nestedModels.getter();
  LOBYTE(v13) = v21;
  v22 = v41;
  ML17MLImageClassifierV5f41V6export8metadata20featureExtractorType20dE92ADVAA0K8MetadataV_AC07FeatureiJ0OtKFSiAJcfu_32b63bdf5f6c975d31a36a8f37561ba444AJSiTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay20MLModelSpecification5ModelVG_Sis5NeverOTg5032_s8CreateML17MLImageClassifierV5f41V6export8metadata20featureExtractorType20dE92ADVAA0K8MetadataV_AC07FeatureiJ0OtKFSiAJcfu_32b63bdf5f6c975d31a36a8f37561ba444AJSiTf3nnnpk_nTf1cn_n(v21);
  v41 = v22;
  v37;
  v13;
  v24 = specialized Sequence<>.max()(ML17MLImageClassifierV5f41V6export8metadata20featureExtractorType20dE92ADVAA0K8MetadataV_AC07FeatureiJ0OtKFSiAJcfu_32b63bdf5f6c975d31a36a8f37561ba444AJSiTf3nnnpk_nTf1cn_n);
  v26 = v25;
  ML17MLImageClassifierV5f41V6export8metadata20featureExtractorType20dE92ADVAA0K8MetadataV_AC07FeatureiJ0OtKFSiAJcfu_32b63bdf5f6c975d31a36a8f37561ba444AJSiTf3nnnpk_nTf1cn_n;
  v27 = 1;
  if ((v26 & 1) == 0)
  {
    v27 = v24;
  }

  return Model.specificationVersion.setter(v27);
}

uint64_t specialized Transformer.applied<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = v3;
  v4[4] = a3;
  v4[3] = a2;
  v4[2] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Event(0);
  v4[9] = v7;
  v8 = *(v7 - 8);
  v4[10] = v8;
  v4[11] = swift_task_alloc((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<String>);
  v4[12] = v9;
  v10 = *(v9 - 8);
  v4[13] = v10;
  v4[14] = swift_task_alloc((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
  v4[15] = v11;
  v12 = *(v11 - 8);
  v4[16] = v12;
  v4[17] = swift_task_alloc((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized Transformer.applied<A>(to:eventHandler:), 0, 0);
}

{
  v4[5] = v3;
  v4[4] = a3;
  v4[3] = a2;
  v4[2] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Event(0);
  v4[9] = v7;
  v8 = *(v7 - 8);
  v4[10] = v8;
  v4[11] = swift_task_alloc((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<Int>);
  v4[12] = v9;
  v10 = *(v9 - 8);
  v4[13] = v10;
  v4[14] = swift_task_alloc((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
  v4[15] = v11;
  v12 = *(v11 - 8);
  v4[16] = v12;
  v4[17] = swift_task_alloc((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized Transformer.applied<A>(to:eventHandler:), 0, 0);
}

{
  v4[5] = v3;
  v4[4] = a3;
  v4[3] = a2;
  v4[2] = a1;
  v5 = type metadata accessor for MLSoundClassifier.Model(0);
  v4[6] = v5;
  v4[7] = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Event(0);
  v4[8] = v6;
  v7 = *(v6 - 8);
  v4[9] = v7;
  v4[10] = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
  v4[11] = v8;
  v9 = *(v8 - 8);
  v4[12] = v9;
  v4[13] = swift_task_alloc((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
  v4[14] = v10;
  v11 = *(v10 - 8);
  v4[15] = v11;
  v4[16] = swift_task_alloc((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v4[17] = v12;
  v4[18] = swift_task_alloc((*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<String>);
  v4[19] = v13;
  v14 = *(v13 - 8);
  v4[20] = v14;
  v4[21] = swift_task_alloc((*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v4[22] = v15;
  v16 = *(v15 - 8);
  v4[23] = v16;
  v4[24] = swift_task_alloc((*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized Transformer.applied<A>(to:eventHandler:), 0, 0);
}

uint64_t specialized Transformer.applied<A>(to:eventHandler:)()
{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 144) = v1;
  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0, _swiftEmptyArrayStorage);
  if (v1)
  {
    v3 = *(v0 + 128);
    v4 = *(v3 + 80);
    *(v0 + 200) = v4;
    v5 = *(v3 + 16);
    *(v0 + 152) = *(v3 + 72);
    *(v0 + 160) = v5;
    *(v0 + 176) = v2;
    *(v0 + 168) = 0;
    v6 = *(v0 + 136);
    v7 = *(v0 + 120);
    v8 = *(v0 + 16) + ((v4 + 32) & ~v4);

    v5(v6, v8, v7);
    static Task<>.checkCancellation()();
    v12 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type LinearSupportVectorClassifierModel<Double, String> and conformance LinearSupportVectorClassifierModel<A, B>, &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>, &protocol conformance descriptor for LinearSupportVectorClassifierModel<A, B>);
    v13 = swift_task_alloc(async function pointer to dispatch thunk of Transformer.applied(to:eventHandler:)[1]);
    *(v0 + 184) = v13;
    *v13 = v0;
    v13[1] = specialized Transformer.applied<A>(to:eventHandler:);
    return dispatch thunk of Transformer.applied(to:eventHandler:)(*(v0 + 112), *(v0 + 136), *(v0 + 24), *(v0 + 32), *(v0 + 48), v12);
  }

  else
  {
    v9 = *(v0 + 112);
    v10 = *(v0 + 64);
    v11 = *(v0 + 88);
    *(v0 + 136);
    v9;
    v11;
    v10;
    return (*(v0 + 8))();
  }
}

{
  v3 = *(*v1 + 184);
  v2 = *v1;
  *(*v1 + 192) = v0;
  v3;
  if (v0)
  {
    *(v2 + 176);
    v4 = specialized Transformer.applied<A>(to:eventHandler:);
  }

  else
  {
    v4 = specialized Transformer.applied<A>(to:eventHandler:);
  }

  return swift_task_switch(v4, 0, 0);
}

{
  v1 = *(v0 + 176);
  v2 = *(v1 + 2);
  if (*(v1 + 3) >> 1 <= v2)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v1 + 3) >= 2uLL, v2 + 1, 1, *(v0 + 176));
  }

  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v6 = *(v0 + 24);
  *(v1 + 2) = v2 + 1;
  (*(v5 + 32))(&v1[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v2], v3, v4);
  if (v6)
  {
    v31 = *(v0 + 144);
    v33 = *(v0 + 88);
    v37 = *(v0 + 80);
    v30 = *(v0 + 72);
    v7 = *(v0 + 64);
    v8 = *(v0 + 48);
    v32 = *(v0 + 24);
    v9 = *(v0 + 32);
    (*(*(v0 + 56) + 16))(v7, *(v0 + 40), v8);

    v34 = String.init<A>(describing:)(v7, v8);
    v35 = v10;
    v36 = *(v1 + 2);
    v11 = type metadata accessor for MetricsKey(0);
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Sendable);
    v13 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey, &type metadata accessor for MetricsKey, &protocol conformance descriptor for MetricsKey);
    v14 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v11, v12, v13);
    Event.init(origin:itemCount:totalItemCount:metrics:)(v34, v35, v36, v31, 0, v14);
    v32(v33);
    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v32, v9);
    (*(v37 + 8))(v33, v30);
  }

  v15 = *(v0 + 168) + 1;
  v16 = *(v0 + 144);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  if (v15 == v16)
  {
    *(v0 + 16);
    v17 = *(v0 + 112);
    v18 = *(v0 + 64);
    v19 = *(v0 + 88);
    *(v0 + 136);
    v17;
    v19;
    v18;
    v20 = *(v0 + 8);
    v21 = v1;
    return v20(v21);
  }

  v22 = *(v0 + 192);
  v23 = *(v0 + 168) + 1;
  *(v0 + 176) = v1;
  *(v0 + 168) = v23;
  (*(v0 + 160))(*(v0 + 136), *(v0 + 16) + ((*(v0 + 200) + 32) & ~*(v0 + 200)) + *(v0 + 152) * v23, *(v0 + 120));
  static Task<>.checkCancellation()();
  if (v22)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
    v1;
    v24 = *(v0 + 136);
    v25 = *(v0 + 112);
    v26 = *(v0 + 88);
    v38 = *(v0 + 64);
    *(v0 + 16);
    v24;
    v25;
    v26;
    v21 = v38;
    v38;
    v20 = *(v0 + 8);
    return v20(v21);
  }

  v28 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type LinearSupportVectorClassifierModel<Double, String> and conformance LinearSupportVectorClassifierModel<A, B>, &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>, &protocol conformance descriptor for LinearSupportVectorClassifierModel<A, B>);
  v29 = swift_task_alloc(async function pointer to dispatch thunk of Transformer.applied(to:eventHandler:)[1]);
  *(v0 + 184) = v29;
  *v29 = v0;
  v29[1] = specialized Transformer.applied<A>(to:eventHandler:);
  return dispatch thunk of Transformer.applied(to:eventHandler:)(*(v0 + 112), *(v0 + 136), *(v0 + 24), *(v0 + 32), *(v0 + 48), v28);
}

{
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  *(v0 + 16);
  v1;
  v2;
  v3;
  v4;
  return (*(v0 + 8))();
}

{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 144) = v1;
  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0, _swiftEmptyArrayStorage);
  if (v1)
  {
    v3 = *(v0 + 128);
    v4 = *(v3 + 80);
    *(v0 + 200) = v4;
    v5 = *(v3 + 16);
    *(v0 + 152) = *(v3 + 72);
    *(v0 + 160) = v5;
    *(v0 + 176) = v2;
    *(v0 + 168) = 0;
    v6 = *(v0 + 136);
    v7 = *(v0 + 120);
    v8 = *(v0 + 16) + ((v4 + 32) & ~v4);

    v5(v6, v8, v7);
    static Task<>.checkCancellation()();
    v12 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type LinearSupportVectorClassifierModel<Double, Int> and conformance LinearSupportVectorClassifierModel<A, B>, &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>, &protocol conformance descriptor for LinearSupportVectorClassifierModel<A, B>);
    v13 = swift_task_alloc(async function pointer to dispatch thunk of Transformer.applied(to:eventHandler:)[1]);
    *(v0 + 184) = v13;
    *v13 = v0;
    v13[1] = specialized Transformer.applied<A>(to:eventHandler:);
    return dispatch thunk of Transformer.applied(to:eventHandler:)(*(v0 + 112), *(v0 + 136), *(v0 + 24), *(v0 + 32), *(v0 + 48), v12);
  }

  else
  {
    v9 = *(v0 + 112);
    v10 = *(v0 + 64);
    v11 = *(v0 + 88);
    *(v0 + 136);
    v9;
    v11;
    v10;
    return (*(v0 + 8))();
  }
}

{
  v3 = *(*v1 + 184);
  v2 = *v1;
  *(*v1 + 192) = v0;
  v3;
  if (v0)
  {
    *(v2 + 176);
    v4 = specialized Transformer.applied<A>(to:eventHandler:);
  }

  else
  {
    v4 = specialized Transformer.applied<A>(to:eventHandler:);
  }

  return swift_task_switch(v4, 0, 0);
}

{
  v1 = *(v0 + 176);
  v2 = *(v1 + 2);
  if (*(v1 + 3) >> 1 <= v2)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v1 + 3) >= 2uLL, v2 + 1, 1, *(v0 + 176));
  }

  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v6 = *(v0 + 24);
  *(v1 + 2) = v2 + 1;
  (*(v5 + 32))(&v1[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v2], v3, v4);
  if (v6)
  {
    v31 = *(v0 + 144);
    v33 = *(v0 + 88);
    v37 = *(v0 + 80);
    v30 = *(v0 + 72);
    v7 = *(v0 + 64);
    v8 = *(v0 + 48);
    v32 = *(v0 + 24);
    v9 = *(v0 + 32);
    (*(*(v0 + 56) + 16))(v7, *(v0 + 40), v8);

    v34 = String.init<A>(describing:)(v7, v8);
    v35 = v10;
    v36 = *(v1 + 2);
    v11 = type metadata accessor for MetricsKey(0);
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Sendable);
    v13 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey, &type metadata accessor for MetricsKey, &protocol conformance descriptor for MetricsKey);
    v14 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v11, v12, v13);
    Event.init(origin:itemCount:totalItemCount:metrics:)(v34, v35, v36, v31, 0, v14);
    v32(v33);
    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v32, v9);
    (*(v37 + 8))(v33, v30);
  }

  v15 = *(v0 + 168) + 1;
  v16 = *(v0 + 144);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  if (v15 == v16)
  {
    *(v0 + 16);
    v17 = *(v0 + 112);
    v18 = *(v0 + 64);
    v19 = *(v0 + 88);
    *(v0 + 136);
    v17;
    v19;
    v18;
    v20 = *(v0 + 8);
    v21 = v1;
    return v20(v21);
  }

  v22 = *(v0 + 192);
  v23 = *(v0 + 168) + 1;
  *(v0 + 176) = v1;
  *(v0 + 168) = v23;
  (*(v0 + 160))(*(v0 + 136), *(v0 + 16) + ((*(v0 + 200) + 32) & ~*(v0 + 200)) + *(v0 + 152) * v23, *(v0 + 120));
  static Task<>.checkCancellation()();
  if (v22)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
    v1;
    v24 = *(v0 + 136);
    v25 = *(v0 + 112);
    v26 = *(v0 + 88);
    v38 = *(v0 + 64);
    *(v0 + 16);
    v24;
    v25;
    v26;
    v21 = v38;
    v38;
    v20 = *(v0 + 8);
    return v20(v21);
  }

  v28 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type LinearSupportVectorClassifierModel<Double, Int> and conformance LinearSupportVectorClassifierModel<A, B>, &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>, &protocol conformance descriptor for LinearSupportVectorClassifierModel<A, B>);
  v29 = swift_task_alloc(async function pointer to dispatch thunk of Transformer.applied(to:eventHandler:)[1]);
  *(v0 + 184) = v29;
  *v29 = v0;
  v29[1] = specialized Transformer.applied<A>(to:eventHandler:);
  return dispatch thunk of Transformer.applied(to:eventHandler:)(*(v0 + 112), *(v0 + 136), *(v0 + 24), *(v0 + 32), *(v0 + 48), v28);
}

{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 200) = v1;
  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0, _swiftEmptyArrayStorage);
  if (v1)
  {
    v3 = *(v0 + 184);
    v4 = *(v3 + 80);
    *(v0 + 272) = v4;
    v5 = *(v3 + 16);
    *(v0 + 208) = *(v3 + 72);
    *(v0 + 216) = v5;
    *(v0 + 232) = v2;
    *(v0 + 224) = 0;
    v6 = *(v0 + 192);
    v7 = *(v0 + 176);
    v8 = *(v0 + 16) + ((v4 + 32) & ~v4);

    v5(v6, v8, v7);
    static Task<>.checkCancellation()();
    v13 = *(v0 + 144);
    v14 = *(v0 + 136);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 40) + *(*(v0 + 48) + 20), v13, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v13, v14);
    v16 = *(v0 + 144);
    if (EnumCaseMultiPayload == 1)
    {
      (*(*(v0 + 96) + 32))(*(v0 + 104), v16, *(v0 + 88));
      v17 = swift_task_alloc(async function pointer to FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)[1]);
      *(v0 + 256) = v17;
      *v17 = v0;
      v17[1] = specialized Transformer.applied<A>(to:eventHandler:);
      return FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)(*(v0 + 168), *(v0 + 192), *(v0 + 24), *(v0 + 32), *(v0 + 88));
    }

    else
    {
      (*(*(v0 + 120) + 32))(*(v0 + 128), v16, *(v0 + 112));
      v18 = swift_task_alloc(async function pointer to LogisticRegressionClassifierModel.applied(to:eventHandler:)[1]);
      *(v0 + 240) = v18;
      *v18 = v0;
      v18[1] = specialized Transformer.applied<A>(to:eventHandler:);
      return LogisticRegressionClassifierModel.applied(to:eventHandler:)(*(v0 + 168), *(v0 + 192), *(v0 + 24), *(v0 + 32), *(v0 + 112));
    }
  }

  else
  {
    v9 = *(v0 + 168);
    v10 = *(v0 + 144);
    v11 = *(v0 + 128);
    v20 = *(v0 + 104);
    v21 = *(v0 + 56);
    v19 = *(v0 + 80);
    *(v0 + 192);
    v9;
    v10;
    v11;
    v20;
    v19;
    v21;
    return (*(v0 + 8))();
  }
}

{
  v2 = *(*v1 + 240);
  *(*v1 + 248) = v0;
  v2;
  if (v0)
  {
    v3 = specialized Transformer.applied<A>(to:eventHandler:);
  }

  else
  {
    v3 = specialized Transformer.applied<A>(to:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 256);
  *(*v1 + 264) = v0;
  v2;
  if (v0)
  {
    v3 = specialized Transformer.applied<A>(to:eventHandler:);
  }

  else
  {
    v3 = specialized Transformer.applied<A>(to:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  v1 = *(v0 + 232);
  v40 = *(v0 + 248);
  v2 = *(v1 + 2);
  if (*(v1 + 3) >> 1 <= v2)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v1 + 3) >= 2uLL, v2 + 1, 1, v1);
  }

  v3 = *(v0 + 168);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  v6 = *(v0 + 24);
  *(v1 + 2) = v2 + 1;
  (*(v5 + 32))(&v1[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v2], v3, v4);
  if (v6)
  {
    v33 = *(v0 + 200);
    v34 = *(v0 + 80);
    v43 = *(v0 + 72);
    v46 = *(v0 + 64);
    v7 = *(v0 + 56);
    v8 = *(v0 + 48);
    v38 = *(v0 + 24);
    v9 = *(v0 + 32);
    outlined init with copy of MLSoundClassifier.Model(*(v0 + 40), v7);

    v35 = String.init<A>(describing:)(v7, v8);
    v36 = v10;
    v37 = *(v1 + 2);
    v11 = type metadata accessor for MetricsKey(0);
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Sendable);
    v13 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey, &type metadata accessor for MetricsKey, &protocol conformance descriptor for MetricsKey);
    v14 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v11, v12, v13);
    Event.init(origin:itemCount:totalItemCount:metrics:)(v35, v36, v37, v33, 0, v14);
    v38(v34);
    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v38, v9);
    (*(v43 + 8))(v34, v46);
  }

  v15 = *(v0 + 224) + 1;
  v16 = *(v0 + 200);
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
  if (v15 == v16)
  {
    *(v0 + 16);
    v17 = *(v0 + 168);
    v18 = *(v0 + 144);
    v19 = *(v0 + 128);
    v47 = *(v0 + 104);
    v41 = *(v0 + 56);
    v44 = *(v0 + 80);
    *(v0 + 192);
    v17;
    v18;
    v19;
    v47;
    v44;
    v41;
    v20 = *(v0 + 8);
    v21 = v1;
    return v20(v21);
  }

  v22 = *(v0 + 224) + 1;
  *(v0 + 232) = v1;
  *(v0 + 224) = v22;
  (*(v0 + 216))(*(v0 + 192), *(v0 + 16) + ((*(v0 + 272) + 32) & ~*(v0 + 272)) + *(v0 + 208) * v22, *(v0 + 176));
  static Task<>.checkCancellation()();
  if (v40)
  {
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    v1;
    v23 = *(v0 + 192);
    v24 = *(v0 + 168);
    v25 = *(v0 + 144);
    v39 = *(v0 + 128);
    v48 = *(v0 + 104);
    v45 = *(v0 + 80);
    v42 = *(v0 + 56);
    *(v0 + 16);
    v23;
    v24;
    v25;
    v39;
    v48;
    v45;
    v21 = v42;
    v42;
    v20 = *(v0 + 8);
    return v20(v21);
  }

  v27 = *(v0 + 144);
  v28 = *(v0 + 136);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 40) + *(*(v0 + 48) + 20), v27, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v27, v28);
  v30 = *(v0 + 144);
  if (EnumCaseMultiPayload == 1)
  {
    (*(*(v0 + 96) + 32))(*(v0 + 104), v30, *(v0 + 88));
    v31 = swift_task_alloc(async function pointer to FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)[1]);
    *(v0 + 256) = v31;
    *v31 = v0;
    v31[1] = specialized Transformer.applied<A>(to:eventHandler:);
    return FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)(*(v0 + 168), *(v0 + 192), *(v0 + 24), *(v0 + 32), *(v0 + 88));
  }

  else
  {
    (*(*(v0 + 120) + 32))(*(v0 + 128), v30, *(v0 + 112));
    v32 = swift_task_alloc(async function pointer to LogisticRegressionClassifierModel.applied(to:eventHandler:)[1]);
    *(v0 + 240) = v32;
    *v32 = v0;
    v32[1] = specialized Transformer.applied<A>(to:eventHandler:);
    return LogisticRegressionClassifierModel.applied(to:eventHandler:)(*(v0 + 168), *(v0 + 192), *(v0 + 24), *(v0 + 32), *(v0 + 112));
  }
}

{
  v1 = *(v0 + 232);
  v2 = *(v0 + 192);
  v3 = *(v0 + 184);
  v4 = *(v0 + 176);
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  v1;
  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 192);
  v6 = *(v0 + 168);
  v7 = *(v0 + 144);
  v8 = *(v0 + 128);
  v12 = *(v0 + 104);
  v11 = *(v0 + 80);
  v10 = *(v0 + 56);
  *(v0 + 16);
  v5;
  v6;
  v7;
  v8;
  v12;
  v11;
  v10;
  return (*(v0 + 8))();
}

{
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  v1 = *(v0 + 232);
  v40 = *(v0 + 264);
  v2 = *(v1 + 2);
  if (*(v1 + 3) >> 1 <= v2)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v1 + 3) >= 2uLL, v2 + 1, 1, v1);
  }

  v3 = *(v0 + 168);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  v6 = *(v0 + 24);
  *(v1 + 2) = v2 + 1;
  (*(v5 + 32))(&v1[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v2], v3, v4);
  if (v6)
  {
    v33 = *(v0 + 200);
    v34 = *(v0 + 80);
    v43 = *(v0 + 72);
    v46 = *(v0 + 64);
    v7 = *(v0 + 56);
    v8 = *(v0 + 48);
    v38 = *(v0 + 24);
    v9 = *(v0 + 32);
    outlined init with copy of MLSoundClassifier.Model(*(v0 + 40), v7);

    v35 = String.init<A>(describing:)(v7, v8);
    v36 = v10;
    v37 = *(v1 + 2);
    v11 = type metadata accessor for MetricsKey(0);
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Sendable);
    v13 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey, &type metadata accessor for MetricsKey, &protocol conformance descriptor for MetricsKey);
    v14 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v11, v12, v13);
    Event.init(origin:itemCount:totalItemCount:metrics:)(v35, v36, v37, v33, 0, v14);
    v38(v34);
    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v38, v9);
    (*(v43 + 8))(v34, v46);
  }

  v15 = *(v0 + 224) + 1;
  v16 = *(v0 + 200);
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
  if (v15 == v16)
  {
    *(v0 + 16);
    v17 = *(v0 + 168);
    v18 = *(v0 + 144);
    v19 = *(v0 + 128);
    v47 = *(v0 + 104);
    v41 = *(v0 + 56);
    v44 = *(v0 + 80);
    *(v0 + 192);
    v17;
    v18;
    v19;
    v47;
    v44;
    v41;
    v20 = *(v0 + 8);
    v21 = v1;
    return v20(v21);
  }

  v22 = *(v0 + 224) + 1;
  *(v0 + 232) = v1;
  *(v0 + 224) = v22;
  (*(v0 + 216))(*(v0 + 192), *(v0 + 16) + ((*(v0 + 272) + 32) & ~*(v0 + 272)) + *(v0 + 208) * v22, *(v0 + 176));
  static Task<>.checkCancellation()();
  if (v40)
  {
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    v1;
    v23 = *(v0 + 192);
    v24 = *(v0 + 168);
    v25 = *(v0 + 144);
    v39 = *(v0 + 128);
    v48 = *(v0 + 104);
    v45 = *(v0 + 80);
    v42 = *(v0 + 56);
    *(v0 + 16);
    v23;
    v24;
    v25;
    v39;
    v48;
    v45;
    v21 = v42;
    v42;
    v20 = *(v0 + 8);
    return v20(v21);
  }

  v27 = *(v0 + 144);
  v28 = *(v0 + 136);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 40) + *(*(v0 + 48) + 20), v27, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v27, v28);
  v30 = *(v0 + 144);
  if (EnumCaseMultiPayload == 1)
  {
    (*(*(v0 + 96) + 32))(*(v0 + 104), v30, *(v0 + 88));
    v31 = swift_task_alloc(async function pointer to FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)[1]);
    *(v0 + 256) = v31;
    *v31 = v0;
    v31[1] = specialized Transformer.applied<A>(to:eventHandler:);
    return FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)(*(v0 + 168), *(v0 + 192), *(v0 + 24), *(v0 + 32), *(v0 + 88));
  }

  else
  {
    (*(*(v0 + 120) + 32))(*(v0 + 128), v30, *(v0 + 112));
    v32 = swift_task_alloc(async function pointer to LogisticRegressionClassifierModel.applied(to:eventHandler:)[1]);
    *(v0 + 240) = v32;
    *v32 = v0;
    v32[1] = specialized Transformer.applied<A>(to:eventHandler:);
    return LogisticRegressionClassifierModel.applied(to:eventHandler:)(*(v0 + 168), *(v0 + 192), *(v0 + 24), *(v0 + 32), *(v0 + 112));
  }
}

{
  v1 = *(v0 + 232);
  v2 = *(v0 + 192);
  v3 = *(v0 + 184);
  v4 = *(v0 + 176);
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  v1;
  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 192);
  v6 = *(v0 + 168);
  v7 = *(v0 + 144);
  v8 = *(v0 + 128);
  v12 = *(v0 + 104);
  v11 = *(v0 + 80);
  v10 = *(v0 + 56);
  *(v0 + 16);
  v5;
  v6;
  v7;
  v8;
  v12;
  v11;
  v10;
  return (*(v0 + 8))();
}

{
  return specialized Transformer.applied<A>(to:eventHandler:)();
}

uint64_t MLSupportVectorClassifier.Model.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = v4;
  v5[10] = a4;
  v5[9] = a3;
  v5[8] = a2;
  v5[7] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<ClassificationDistribution<Int>>);
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v5[14] = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v5[15] = v8;
  v9 = *(v8 - 8);
  v5[16] = v9;
  v5[17] = swift_task_alloc((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>);
  v5[18] = v10;
  v11 = *(v10 - 8);
  v5[19] = v11;
  v5[20] = swift_task_alloc((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<ClassificationDistribution<String>>);
  v5[21] = v12;
  v13 = *(v12 - 8);
  v5[22] = v13;
  v5[23] = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v5[24] = v14;
  v15 = *(v14 - 8);
  v5[25] = v15;
  v5[26] = swift_task_alloc((*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>);
  v5[27] = v16;
  v17 = *(v16 - 8);
  v5[28] = v17;
  v5[29] = swift_task_alloc((*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
  v5[30] = v18;
  v5[31] = swift_task_alloc((*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AnyColumn(0);
  v5[32] = v19;
  v20 = *(v19 - 8);
  v5[33] = v20;
  v21 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5[34] = swift_task_alloc(v21);
  v5[35] = swift_task_alloc(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Double>);
  v5[36] = v22;
  v23 = *(v22 - 8);
  v5[37] = v23;
  v5[38] = swift_task_alloc((*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLSupportVectorClassifier.Model.applied(to:eventHandler:), 0, 0);
}

uint64_t MLSupportVectorClassifier.Model.applied(to:eventHandler:)()
{
  specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(v0[8], 0, *(v0[11] + 16), *(v0[11] + 24), *(v0[11] + 32));
  v1 = v0[31];
  v2 = v0[11];
  v3 = v0[30];
  v4 = static MLSupportVectorClassifier.Model.buildFeatures(from:)(v0[38]);
  v0[39] = v4;
  v5 = type metadata accessor for MLSupportVectorClassifier.Model(0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v2 + *(v5 + 24), v1, &demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v1, v3);
  v7 = v0[31];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[19] + 32))(v0[20], v7, v0[18]);
    v8 = &async function pointer to specialized Transformer.applied<A>(to:eventHandler:) + async function pointer to specialized Transformer.applied<A>(to:eventHandler:);
    v9 = swift_task_alloc(208);
    v0[43] = v9;
    *v9 = v0;
    v9[1] = MLSupportVectorClassifier.Model.applied(to:eventHandler:);
  }

  else
  {
    (*(v0[28] + 32))(v0[29], v7, v0[27]);
    v8 = &async function pointer to specialized Transformer.applied<A>(to:eventHandler:) + async function pointer to specialized Transformer.applied<A>(to:eventHandler:);
    v10 = swift_task_alloc(208);
    v0[40] = v10;
    *v10 = v0;
    v10[1] = MLSupportVectorClassifier.Model.applied(to:eventHandler:);
  }

  return (v8)(v4, v0[9], v0[10]);
}

{
  v39 = *(v0 + 336);
  v1 = *(v0 + 208);
  v41 = *(v0 + 200);
  v30 = *(v0 + 192);
  v2 = *(v0 + 88);
  v33 = *v2;
  v3 = v2[1];

  *(v0 + 40) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents26ClassificationDistributionVySSGG_SSSgs5NeverOTg503_s8d129ML25MLSupportVectorClassifierV5ModelV7applied2to12eventHandler11TabularData0L5FrameVAK_y0A12MLComponents5EventVYbcSgtYaKFSSSgAL26fG56VySSGcfu_32f90808cfe034de74f1d450820ef1a2faAsPTf3nnnpk_nTf1cn_n(v39);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String?]);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String?] and conformance [A], &demangling cache variable for type metadata for [String?], &protocol conformance descriptor for [A]);
  Column.init<A>(name:contents:)(v33, v3, v0 + 40, &type metadata for String, v4, v5);
  Column.eraseToAnyColumn()(v30);
  (*(v41 + 8))(v1, v30);

  v6._countAndFlagsBits = 0x6C696261626F7250;
  v6._object = 0xEB00000000797469;
  String.append(_:)(v6);
  v42 = v3;
  *(v0 + 48) = v39;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<String>);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [ClassificationDistribution<String>]);
  v9 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [ClassificationDistribution<String>] and conformance [A], &demangling cache variable for type metadata for [ClassificationDistribution<String>], &protocol conformance descriptor for [A]);
  Column.init<A>(name:contents:)(v33, v42, v0 + 48, v7, v8, v9);
  v26 = *(v0 + 232);
  v35 = *(v0 + 224);
  v28 = *(v0 + 216);
  v22 = *(v0 + 184);
  v10 = *(v0 + 176);
  v11 = *(v0 + 168);
  v24 = *(v0 + 304);
  v23 = *(v0 + 296);
  v25 = *(v0 + 288);
  v37 = *(v0 + 280);
  v27 = *(v0 + 272);
  v40 = *(v0 + 264);
  v38 = *(v0 + 256);
  v34 = *(v0 + 248);
  v32 = *(v0 + 208);
  v31 = *(v0 + 160);
  v29 = *(v0 + 136);
  v43 = *(v0 + 112);
  Column.eraseToAnyColumn()(v11);
  (*(v10 + 8))(v22, v11);
  (*(v35 + 8))(v26, v28);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<AnyColumn>);
  v36 = *(v40 + 72);
  v13 = *(v40 + 80);
  v14 = (v13 + 32) & ~v13;
  v15 = swift_allocObject(v12, v14 + 2 * v36, v13 | 7);
  *(v15 + 16) = 2;
  *(v15 + 24) = 4;
  v16 = v15 + v14;
  v17 = *(v40 + 16);
  v17(v16, v37, v38);
  v17(v36 + v16, v27, v38);
  *(v0 + 32) = v15;
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnyColumn]);
  v19 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [AnyColumn] and conformance [A], &demangling cache variable for type metadata for [AnyColumn], &protocol conformance descriptor for [A]);
  DataFrame.init<A>(columns:)(v0 + 32, v18, v19);
  v20 = *(v40 + 8);
  v20(v27, v38);
  v20(v37, v38);
  (*(v23 + 8))(v24, v25);
  v24;
  v37;
  v27;
  v34;
  v26;
  v32;
  v22;
  v31;
  v29;
  v43;
  return (*(v0 + 8))();
}

{
  v39 = *(v0 + 360);
  v1 = *(v0 + 136);
  v41 = *(v0 + 128);
  v30 = *(v0 + 120);
  v2 = *(v0 + 88);
  v33 = *v2;
  v3 = v2[1];

  *(v0 + 16) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents26ClassificationDistributionVySiGG_SiSgs5NeverOTg503_s8d129ML25MLSupportVectorClassifierV5ModelV7applied2to12eventHandler11TabularData0L5FrameVAK_y0A12MLComponents5EventVYbcSgtYaKFSiSgAL26fG57VySiGcfu0_32be6a1569bf578dffa8811060c9259ebeAsPTf3nnnpk_nTf1cn_n(v39);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int?]);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Int?] and conformance [A], &demangling cache variable for type metadata for [Int?], &protocol conformance descriptor for [A]);
  Column.init<A>(name:contents:)(v33, v3, v0 + 16, &type metadata for Int, v4, v5);
  Column.eraseToAnyColumn()(v30);
  (*(v41 + 8))(v1, v30);

  v6._countAndFlagsBits = 0x6C696261626F7250;
  v6._object = 0xEB00000000797469;
  String.append(_:)(v6);
  v42 = v3;
  *(v0 + 24) = v39;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<Int>);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [ClassificationDistribution<Int>]);
  v9 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [ClassificationDistribution<Int>] and conformance [A], &demangling cache variable for type metadata for [ClassificationDistribution<Int>], &protocol conformance descriptor for [A]);
  Column.init<A>(name:contents:)(v33, v42, v0 + 24, v7, v8, v9);
  v23 = *(v0 + 160);
  v35 = *(v0 + 152);
  v28 = *(v0 + 144);
  v29 = *(v0 + 112);
  v10 = *(v0 + 104);
  v11 = *(v0 + 96);
  v25 = *(v0 + 304);
  v24 = *(v0 + 296);
  v26 = *(v0 + 288);
  v37 = *(v0 + 280);
  v27 = *(v0 + 272);
  v40 = *(v0 + 264);
  v38 = *(v0 + 256);
  v22 = *(v0 + 248);
  v34 = *(v0 + 232);
  v32 = *(v0 + 208);
  v31 = *(v0 + 184);
  v43 = *(v0 + 136);
  Column.eraseToAnyColumn()(v11);
  (*(v10 + 8))(v29, v11);
  (*(v35 + 8))(v23, v28);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<AnyColumn>);
  v36 = *(v40 + 72);
  v13 = *(v40 + 80);
  v14 = (v13 + 32) & ~v13;
  v15 = swift_allocObject(v12, v14 + 2 * v36, v13 | 7);
  *(v15 + 16) = 2;
  *(v15 + 24) = 4;
  v16 = v15 + v14;
  v17 = *(v40 + 16);
  v17(v16, v37, v38);
  v17(v36 + v16, v27, v38);
  *(v0 + 32) = v15;
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnyColumn]);
  v19 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [AnyColumn] and conformance [A], &demangling cache variable for type metadata for [AnyColumn], &protocol conformance descriptor for [A]);
  DataFrame.init<A>(columns:)(v0 + 32, v18, v19);
  v20 = *(v40 + 8);
  v20(v27, v38);
  v20(v37, v38);
  (*(v24 + 8))(v25, v26);
  v25;
  v37;
  v27;
  v22;
  v34;
  v32;
  v31;
  v23;
  v43;
  v29;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 312);
  v2 = *(v0 + 304);
  v3 = *(v0 + 296);
  v4 = *(v0 + 288);
  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
  (*(v3 + 8))(v2, v4);
  v1;
  v5 = *(v0 + 280);
  v6 = *(v0 + 272);
  v7 = *(v0 + 248);
  v8 = *(v0 + 232);
  v14 = *(v0 + 208);
  v13 = *(v0 + 184);
  v12 = *(v0 + 160);
  v10 = *(v0 + 112);
  v11 = *(v0 + 136);
  *(v0 + 304);
  v5;
  v6;
  v7;
  v8;
  v14;
  v13;
  v12;
  v11;
  v10;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 312);
  v2 = *(v0 + 304);
  v3 = *(v0 + 296);
  v4 = *(v0 + 288);
  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  (*(v3 + 8))(v2, v4);
  v1;
  v5 = *(v0 + 280);
  v6 = *(v0 + 272);
  v7 = *(v0 + 248);
  v8 = *(v0 + 232);
  v14 = *(v0 + 208);
  v13 = *(v0 + 184);
  v12 = *(v0 + 160);
  v10 = *(v0 + 112);
  v11 = *(v0 + 136);
  *(v0 + 304);
  v5;
  v6;
  v7;
  v8;
  v14;
  v13;
  v12;
  v11;
  v10;
  return (*(v0 + 8))();
}

uint64_t MLSupportVectorClassifier.Model.applied(to:eventHandler:)(uint64_t a1)
{
  v5 = *(*v2 + 320);
  v4 = *v2;
  *(*v2 + 328) = v1;
  v5;
  if (v1)
  {
    v6 = MLSupportVectorClassifier.Model.applied(to:eventHandler:);
  }

  else
  {
    *(v4 + 312);
    *(v4 + 336) = a1;
    v6 = MLSupportVectorClassifier.Model.applied(to:eventHandler:);
  }

  return swift_task_switch(v6, 0, 0);
}

{
  v5 = *(*v2 + 344);
  v4 = *v2;
  *(*v2 + 352) = v1;
  v5;
  if (v1)
  {
    v6 = MLSupportVectorClassifier.Model.applied(to:eventHandler:);
  }

  else
  {
    *(v4 + 312);
    *(v4 + 360) = a1;
    v6 = MLSupportVectorClassifier.Model.applied(to:eventHandler:);
  }

  return swift_task_switch(v6, 0, 0);
}

void *static MLSupportVectorClassifier.Model.buildFeatures(from:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v35 = &v28;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v37 = &v28;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Double>);
  v9 = DenseMatrix.rowCount.getter(v8);
  if (v9 <= 0)
  {
    v9 = 0;
  }

  v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0, _swiftEmptyArrayStorage);
  v32 = v8;
  v31 = a1;
  v11 = DenseMatrix.rowCount.getter(v8);
  v33 = v11;
  if (v11 < 0)
  {
    BUG();
  }

  if (v11)
  {
    v12 = 0;
    v13 = v37;
    v14 = 0;
    v36 = v1;
    v34 = v2;
    do
    {
      v38 = v14;
      v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
      v16 = swift_allocObject(v15, 40, 7);
      v16[2] = 1;
      v16[3] = 2;
      v17 = v12;
      v18 = v31;
      v16[4] = DenseMatrix.columnCount.getter(v32);
      v19 = alloca(32);
      v20 = alloca(32);
      v30 = v18;
      v29 = v17;
      v31 = v17;
      v21 = v38;
      MLShapedArray.init(unsafeUninitializedShape:initializingWith:)(v16, partial apply for closure #1 in static MLSupportVectorClassifier.Model.buildFeatures(from:), &v28, &type metadata for Double, &protocol witness table for Double);
      v38 = v21;
      v22 = v34;
      (*(v34 + 16))(v35, v13, v36);
      v23 = v10[2];
      if (v10[3] >> 1 <= v23)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v10[3] >= 2uLL, v23 + 1, 1, v10);
      }

      v24 = v29 + 1;
      v10[2] = v23 + 1;
      v12 = v24;
      v25 = v10 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v23;
      v26 = v36;
      (*(v22 + 32))(v25, v35, v36);
      v13 = v37;
      (*(v22 + 8))(v37, v26);
      v14 = v38;
    }

    while (v33 != v12);
  }

  return v10;
}

uint64_t key path getter for ClassificationDistribution.mostLikelyLabel : ClassificationDistribution<Int>()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<Int>);
  ClassificationDistribution.mostLikelyLabel.getter(v2);
  result = v4;
  *v1 = v4;
  *(v1 + 8) = v5;
  return result;
}

uint64_t closure #1 in static MLSupportVectorClassifier.Model.buildFeatures(from:)(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Double>);
  result = DenseMatrix.columnCount.getter(v5);
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v7 = a4;
    v15 = *a1;
    v8 = 0;
    v14 = result;
    do
    {
      v9 = v7;
      v10 = specialized DenseMatrix.subscript.read(v12, v7, v8);
      v13 = *v11;
      (v10)(v12, 0);
      v7 = v9;
      result = v14;
      *(v15 + 8 * v8++) = v13;
    }

    while (result != v8);
  }

  return result;
}

uint64_t protocol witness for Transformer.applied(to:eventHandler:) in conformance MLSupportVectorClassifier.Model(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc(368);
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = protocol witness for SupervisedEstimator.fitted<A, B>(to:validateOn:eventHandler:) in conformance MLImageClassifier.Classifier;
  return MLSupportVectorClassifier.Model.applied(to:eventHandler:)(a1, a2, a3, a4);
}

void MLSupportVectorClassifier.Model.export(userInfo:)()
{
  v150 = v1;
  v126 = v0;
  v127 = type metadata accessor for ModelKind(0);
  v128 = *(v127 - 8);
  v3 = *(v128 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v129 = &v112;
  v137 = type metadata accessor for FeatureType(0);
  v136 = *(v137 - 8);
  v6 = *(v136 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v135 = &v112;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Model?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v130 = &v112;
  v139 = type metadata accessor for Model(0);
  v133 = *(v139 - 8);
  v12 = *(v133 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v148 = &v112;
  v121 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>);
  v141 = *(v121 - 8);
  v15 = *(v141 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v122 = &v112;
  v123 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>);
  v149 = *(v123 - 8);
  v18 = *(v149 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v124 = &v112;
  v140 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
  v21 = *(*(v140 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v134 = &v112;
  v24 = alloca(v21);
  v25 = alloca(v21);
  v114 = &v112;
  v115 = type metadata accessor for URL.DirectoryHint(0);
  v146 = *(v115 - 8);
  v26 = *(v146 + 8);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v116 = &v112;
  v118 = type metadata accessor for UUID(0);
  v119 = *(v118 - 8);
  v29 = *(v119 + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v120 = &v112;
  v32 = type metadata accessor for URL(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v125 = &v112;
  v37 = alloca(v34);
  v38 = alloca(v34);
  v147 = &v112;
  v39 = alloca(v34);
  v40 = alloca(v34);
  v117 = &v112;
  v41 = alloca(v34);
  v42 = alloca(v34);
  v43 = v2;
  v44 = v2[2];
  v45 = v43[3];
  v144 = v43;
  v46 = v150;
  v47 = specialized FeatureVectorizer.Transformer.exportEncoders()(v44, v45, v43[4]);
  if (!v46)
  {
    v138 = v33;
    v131 = v44;
    v145 = v47;
    v142 = &v112;
    v143 = v32;
    v48 = objc_opt_self(NSFileManager);
    v49 = [v48 defaultManager];
    v50 = v49;
    NSFileManager.createTemporaryModelDirectory()();
    v150 = v51;
    if (v51)
    {
      v145;

      return;
    }

    v52 = [v48 defaultManager];
    v53 = v52;
    NSFileManager.temporaryModelDirectory.getter();

    v54 = v120;
    UUID.init()();
    v55 = UUID.uuidString.getter();
    v57 = v56;
    v132 = v56;
    (*(v119 + 8))(v54, v118);
    v113[0] = v55;
    v113[1] = v57;
    v58 = v116;
    v59 = v115;
    (*(v146 + 13))(v116, enum case for URL.DirectoryHint.inferFromPath(_:), v115);
    v60 = lazy protocol witness table accessor for type String and conformance String();
    v61 = v117;
    v62 = v147;
    URL.appending<A>(component:directoryHint:)(v113, v58, &type metadata for String, v60);
    (*(v146 + 1))(v58, v59);
    v132;
    v63 = *(v138 + 8);
    v64 = v143;
    v63(v62, v143);
    URL.appendingPathExtension(_:)(0x6C65646F6D6C6D2ELL, 0xE800000000000000);
    v146 = v63;
    v63(v61, v64);
    v147 = (v144 + *(type metadata accessor for MLSupportVectorClassifier.Model(0) + 24));
    v65 = v114;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v147, v114, &demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
    if (swift_getEnumCaseMultiPayload(v65, v140) == 1)
    {
      v66 = v122;
      v67 = v65;
      v68 = v121;
      (*(v141 + 32))(v122, v67, v121);
      v69 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type LinearSupportVectorClassifierModel<Double, Int> and conformance LinearSupportVectorClassifierModel<A, B>, &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>, &protocol conformance descriptor for LinearSupportVectorClassifierModel<A, B>);
      v70 = v142;
      v71 = v150;
      Transformer.export(to:)(v142, v68, v69);
      if (v71)
      {
        v145;
        v72 = v66;
        v73 = v68;
        v74 = v141;
LABEL_9:
        (*(v74 + 8))(v72, v73);
        v146(v70, v143);
        return;
      }

      v80 = v66;
      v81 = v68;
      v82 = v141;
    }

    else
    {
      v75 = v124;
      v76 = v65;
      v77 = v123;
      (*(v149 + 32))(v124, v76, v123);
      v78 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type LinearSupportVectorClassifierModel<Double, String> and conformance LinearSupportVectorClassifierModel<A, B>, &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>, &protocol conformance descriptor for LinearSupportVectorClassifierModel<A, B>);
      v70 = v142;
      v79 = v150;
      Transformer.export(to:)(v142, v77, v78);
      if (v79)
      {
        v145;
        v72 = v75;
        v73 = v77;
        v74 = v149;
        goto LABEL_9;
      }

      v80 = v75;
      v81 = v77;
      v82 = v149;
    }

    (*(v82 + 8))(v80, v81);
    v83 = v125;
    (*(v138 + 16))(v125, v142, v143);
    Model.init(contentsOf:)(v83);
    v150 = 0;
    v84 = v139;
    v85 = v130;
    specialized BidirectionalCollection.last.getter(v145);
    if (__swift_getEnumTagSinglePayload(v85, 1, v84) == 1)
    {
      BUG();
    }

    v86 = Model.outputs.getter();
    v141 = *(v133 + 8);
    (v141)(v85, v84);
    Model.inputs.setter(v86);
    v87 = *v144;
    v88 = v144[1];

    v144 = v87;
    Model.predictedFeatureName.setter(v87, v88);
    v89 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for String, &protocol witness table for String);
    Model.metadata.setter(v89);
    v90 = v134;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v147, v134, &demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
    LODWORD(v149) = swift_getEnumCaseMultiPayload(v90, v140);
    v91 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
    v92 = *(type metadata accessor for FeatureDescription(0) - 8);
    v93 = swift_allocObject(v91, ((*(v92 + 80) + 32) & ~*(v92 + 80)) + 2 * *(v92 + 72), *(v92 + 80) | 7);
    *(v93 + 16) = 2;
    *(v93 + 24) = 4;
    v140 = v93;
    v147 = v88;

    v94 = v135;
    if (v149 == 1)
    {
      FeatureType.IntParameters.init(optional:)(0);
      (*(v136 + 104))(v94, enum case for FeatureType.int(_:), v137);
      FeatureDescription.init(name:type:description:)(v144, v147, v94, 0, 0xE000000000000000);
      v149 = Model.predictedProbabilitiesName.getter();
      v96 = v95;
      static FeatureType.dictionaryWithIntKeys(optional:)(0);
    }

    else
    {
      FeatureType.StringParameters.init(optional:)(0);
      (*(v136 + 104))(v94, enum case for FeatureType.string(_:), v137);
      FeatureDescription.init(name:type:description:)(v144, v147, v94, 0, 0xE000000000000000);
      v149 = Model.predictedProbabilitiesName.getter();
      v96 = v97;
      static FeatureType.dictionaryWithStringKeys(optional:)(0);
    }

    FeatureDescription.init(name:type:description:)(v149, v96, v94, 0, 0xE000000000000000);
    Model.outputs.setter(v140);
    outlined destroy of Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>(v134);
    Model.init()();
    Model.specificationVersion.setter(1);
    v98 = v131;

    v99 = v150;
    ML16ColumnDescriptorVG_20MLModelSpecification18FeatureDescriptionVs5NeverOTg503_s8d50ML18TreeRegressorModelV6export16internalMetadata20h33Specification0E0VSDyS2SGz_tKFAF18jk5VAA16fG54Vcfu0_33_3fd57c9cf8bb5b882e179ce0f1f8c55eAmKTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML16ColumnDescriptorVG_20MLModelSpecification18FeatureDescriptionVs5NeverOTg503_s8d50ML18TreeRegressorModelV6export16internalMetadata20h33Specification0E0VSDyS2SGz_tKFAF18jk5VAA16fG54Vcfu0_33_3fd57c9cf8bb5b882e179ce0f1f8c55eAmKTf3nnnpk_nTf1cn_n(v98);
    v150 = v99;
    v98;
    Model.inputs.setter(ML16ColumnDescriptorVG_20MLModelSpecification18FeatureDescriptionVs5NeverOTg503_s8d50ML18TreeRegressorModelV6export16internalMetadata20h33Specification0E0VSDyS2SGz_tKFAF18jk5VAA16fG54Vcfu0_33_3fd57c9cf8bb5b882e179ce0f1f8c55eAmKTf3nnnpk_nTf1cn_n);
    v101 = Model.outputs.getter();
    Model.outputs.setter(v101);
    v102 = v147;

    Model.predictedFeatureName.setter(v144, v102);
    v103 = Model.predictedProbabilitiesName.getter();
    Model.predictedProbabilitiesName.setter(v103, v104);
    v105 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Model>);
    v106 = v133;
    v107 = *(v133 + 80);
    v108 = (v107 + 32) & ~*(v133 + 80);
    v109 = swift_allocObject(v105, v108 + *(v133 + 72), v107 | 7);
    *(v109 + 16) = 1;
    *(v109 + 24) = 2;
    (*(v106 + 16))(v109 + v108, v148, v139);
    v113[0] = v145;
    specialized Array.append<A>(contentsOf:)(v109);
    v110 = v129;
    PipelineClassifierConfiguration.init(models:names:)(v113[0], _swiftEmptyArrayStorage);
    (*(v128 + 104))(v110, enum case for ModelKind.pipelineClassifier(_:), v127);
    Model.kind.setter(v110);
    (v141)(v148, v139);
    v111 = v142;
    $defer #1 () in MLSupportVectorClassifier.Model.export(userInfo:)();
    v146(v111, v143);
  }
}

NSURL *$defer #1 () in MLSupportVectorClassifier.Model.export(userInfo:)()
{
  v0 = objc_opt_self(NSFileManager);
  v1 = [v0 defaultManager];
  v2 = v1;
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v10 = 0;
  v5 = [(NSURL *)v2 removeItemAtURL:v3 error:&v10];

  v6 = v10;
  if (v5)
  {
    return v10;
  }

  v8 = v10;
  v9 = _convertNSErrorToError(_:)(v6);

  swift_willThrow();
  v9;
  return __stack_chk_guard;
}

double specialized ContiguousArray.subscript.getter(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    BUG();
  }

  if (*(a2 + 16) <= a1)
  {
    BUG();
  }

  return *(a2 + 8 * a1 + 32);
}

void (*specialized DenseMatrix.subscript.read(double *a1, unint64_t a2, unint64_t a3))()
{
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Double>);
  v5 = DenseMatrix.layout.getter(v4);
  v14 = DenseMatrix.storage.getter(v4);
  if (v5)
  {
    v6 = DenseMatrix.rowCount.getter(v4);
    v8 = a3;
    v7 = v6 * a3;
    if (!is_mul_ok(v6, v8))
    {
      BUG();
    }

    v9 = v7 + a2;
    if (__OFADD__(v7, a2))
    {
      BUG();
    }
  }

  else
  {
    v10 = DenseMatrix.columnCount.getter(v4);
    v11 = v10 * a2;
    if (!is_mul_ok(v10, a2))
    {
      BUG();
    }

    v12 = __OFADD__(a3, v11);
    v9 = a3 + v11;
    if (v12)
    {
      BUG();
    }
  }

  *a1 = specialized ContiguousArray.subscript.getter(v9, v14);

  return MLBoostedTreeRegressor.ModelParameters.maxDepth.modify;
}

uint64_t outlined init with copy of MLSoundClassifier.Model(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLSoundClassifier.Model(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined copy of ColumnDescriptor.ColumnTypeDescriptor(uint64_t a1, char a2)
{
  if ((a2 & 0xFE) == 4)
  {
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData6ColumnVySSG_Sis5NeverOTg5047_s8CreateML6LabelsO17encodeAnnotationsySaySiG11d8Data9AnyF13VFSiSSSgXEfU_SDySSSiGTf1cn_n(uint64_t a1, uint64_t *a2)
{
  v23 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v3 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  v4 = dispatch thunk of Collection.count.getter(v2, v3);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v29 = _swiftEmptyArrayStorage;
  v5 = 0;
  if (v4 > 0)
  {
    v5 = v4;
  }

  v28 = v4;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v30 = v29;
  dispatch thunk of Collection.startIndex.getter(v2, v3);
  if (v28 < 0)
  {
    BUG();
  }

  v6 = 0;
  v24 = a1;
  v25 = v2;
  v26 = v3;
  do
  {
    v7 = __OFADD__(1, v6);
    v8 = v6 + 1;
    if (v7)
    {
      BUG();
    }

    v22 = v8;
    v9 = dispatch thunk of Collection.subscript.read(v21, v27, v2, v3);
    v11 = *v10;
    v12 = v10[1];

    v9(v21, 0);
    v13 = v12;
    if (!v12)
    {
      v13 = 0xE000000000000000;
    }

    v14 = *v23;
    if (!*(*v23 + 16))
    {

LABEL_21:
      v13;
      BUG();
    }

    if (!v12)
    {
      v11 = 0;
    }

    v15 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v13);
    if ((v16 & 1) == 0)
    {
      goto LABEL_21;
    }

    v17 = *(*(v14 + 56) + 8 * v15);
    v12;
    v13;
    v18 = v30;
    v29 = v30;
    v19 = v30[2];
    if (v30[3] >> 1 <= v19)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v30[3] >= 2uLL, v19 + 1, 1);
      v18 = v29;
    }

    v18[2] = v19 + 1;
    v30 = v18;
    v18[v19 + 4] = v17;
    v2 = v25;
    v3 = v26;
    dispatch thunk of Collection.formIndex(after:)(v27, v25, v26);
    v6 = v22;
  }

  while (v22 != v28);
  return v30;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData6ColumnVySiG_Sis5NeverOTg5047_s8CreateML6LabelsO17encodeAnnotationsySaySiG11d8Data9AnyF13VFS2iSgXEfU0_SDyS2iGTf1cn_n(uint64_t a1, uint64_t *a2)
{
  v21 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v3 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
  v4 = dispatch thunk of Collection.count.getter(v2, v3);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v27 = _swiftEmptyArrayStorage;
  v5 = 0;
  if (v4 > 0)
  {
    v5 = v4;
  }

  v26 = v4;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v28 = v27;
  v25 = v3;
  dispatch thunk of Collection.startIndex.getter(v2, v3);
  if (v26 < 0)
  {
    BUG();
  }

  v6 = 0;
  v22 = a1;
  v23 = v2;
  do
  {
    if (__OFADD__(1, v6++))
    {
      BUG();
    }

    v8 = dispatch thunk of Collection.subscript.read(v20, v24, v2, v25);
    v10 = *v9;
    v11 = *(v9 + 8);
    v8(v20, 0);
    v12 = *v21;
    if (!*(*v21 + 16))
    {
      BUG();
    }

    if (v11)
    {
      v10 = 0;
    }

    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
    if ((v14 & 1) == 0)
    {
      BUG();
    }

    v15 = *(*(v12 + 56) + 8 * v13);
    v16 = v28;
    v27 = v28;
    v17 = v28[2];
    v18 = v28[3];
    if (v18 >> 1 <= v17)
    {
      v28 = v15;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18 >= 2, v17 + 1, 1);
      v15 = v28;
      v16 = v27;
    }

    v16[2] = v17 + 1;
    v28 = v16;
    v16[v17 + 4] = v15;
    v2 = v23;
    dispatch thunk of Collection.formIndex(after:)(v24, v23, v25);
  }

  while (v6 != v26);
  return v28;
}

uint64_t specialized Set.union<A>(_:)(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v2 = -1 << *(a1 + 32);
  v3 = ~(-1 << -v2);
  if (-v2 >= 64)
  {
    v3 = -1;
  }

  v21 = a1 + 56;
  v19 = a1;
  v4 = *(a1 + 56) & v3;
  v18 = v2;
  v20 = (63 - v2) >> 6;
  for (i = 0; ; i = v6)
  {
    if (v4)
    {
      v6 = i;
      goto LABEL_25;
    }

    v7 = i + 1;
    if (__OFADD__(1, i))
    {
      BUG();
    }

    if (v7 >= v20)
    {
      goto LABEL_26;
    }

    v4 = *(v21 + 8 * v7);
    if (v4)
    {
      v6 = i + 1;
      goto LABEL_25;
    }

    v6 = i + 2;
    if (i + 2 >= v20)
    {
      goto LABEL_26;
    }

    v4 = *(v21 + 8 * v7 + 8);
    if (!v4)
    {
      v6 = i + 3;
      if (i + 3 >= v20)
      {
        goto LABEL_26;
      }

      v4 = *(v21 + 8 * v7 + 16);
      if (!v4)
      {
        v6 = i + 4;
        if (i + 4 >= v20)
        {
          goto LABEL_26;
        }

        v4 = *(v21 + 8 * v7 + 24);
        if (!v4)
        {
          v6 = i + 5;
          if (i + 5 >= v20)
          {
            goto LABEL_26;
          }

          v4 = *(v21 + 8 * v7 + 32);
          if (!v4)
          {
            v6 = i + 6;
            if (i + 6 >= v20)
            {
              goto LABEL_26;
            }

            v4 = *(v21 + 8 * v7 + 40);
            if (!v4)
            {
              break;
            }
          }
        }
      }
    }

LABEL_25:
    _BitScanForward64(&v9, v4);
    v4 &= v4 - 1;
    v10 = *(v19 + 48);
    v11 = (v6 << 10) | (16 * v9);
    v12 = *(v10 + v11);
    v13 = *(v10 + v11 + 8);

    specialized Set._Variant.insert(_:)(&v15, v12, v13);
    v16;
  }

  v8 = i + 7;
  if (i + 7 >= v20)
  {
    goto LABEL_26;
  }

  v4 = *(v21 + 8 * v7 + 48);
  if (v4)
  {
    v6 = i + 7;
    goto LABEL_25;
  }

  while (1)
  {
    v6 = v8 + 1;
    if (v8 + 1 >= v20)
    {
      break;
    }

    v4 = *(v19 + 8 * v8++ + 64);
    if (v4)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  outlined consume of [String : [Double]].Iterator._Variant(v19);
  return v17;
}

{
  v13 = a2;
  v2 = -1 << *(a1 + 32);
  v3 = ~(-1 << -v2);
  if (-v2 >= 64)
  {
    v3 = -1;
  }

  v15 = a1 + 56;
  v4 = *(a1 + 56) & v3;
  v14 = v2;
  v5 = (63 - v2) >> 6;
  for (i = 0; ; i = v7)
  {
    if (v4)
    {
      v7 = i;
      goto LABEL_25;
    }

    v8 = i + 1;
    if (__OFADD__(1, i))
    {
      BUG();
    }

    if (v8 >= v5)
    {
      goto LABEL_26;
    }

    v4 = *(v15 + 8 * v8);
    if (v4)
    {
      v7 = i + 1;
      goto LABEL_25;
    }

    v7 = i + 2;
    if (i + 2 >= v5)
    {
      goto LABEL_26;
    }

    v4 = *(v15 + 8 * v8 + 8);
    if (!v4)
    {
      v7 = i + 3;
      if (i + 3 >= v5)
      {
        goto LABEL_26;
      }

      v4 = *(v15 + 8 * v8 + 16);
      if (!v4)
      {
        v7 = i + 4;
        if (i + 4 >= v5)
        {
          goto LABEL_26;
        }

        v4 = *(v15 + 8 * v8 + 24);
        if (!v4)
        {
          v7 = i + 5;
          if (i + 5 >= v5)
          {
            goto LABEL_26;
          }

          v4 = *(v15 + 8 * v8 + 32);
          if (!v4)
          {
            v7 = i + 6;
            if (i + 6 >= v5)
            {
              goto LABEL_26;
            }

            v4 = *(v15 + 8 * v8 + 40);
            if (!v4)
            {
              break;
            }
          }
        }
      }
    }

LABEL_25:
    _BitScanForward64(&v10, v4);
    v4 &= v4 - 1;
    specialized Set._Variant.insert(_:)(&v12, *(*(a1 + 48) + ((v7 << 9) | (8 * v10))));
  }

  v9 = i + 7;
  if (i + 7 >= v5)
  {
    goto LABEL_26;
  }

  v4 = *(v15 + 8 * v8 + 48);
  if (v4)
  {
    v7 = i + 7;
    goto LABEL_25;
  }

  while (1)
  {
    v7 = v9 + 1;
    if (v9 + 1 >= v5)
    {
      break;
    }

    v4 = *(a1 + 8 * v9++ + 64);
    if (v4)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  outlined consume of [String : [Double]].Iterator._Variant(a1);
  return v13;
}

{
  v11 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v10 = a1;
    v3 = (a1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      specialized Set._Variant.insert(_:)(&v8, v4, v5);
      v9;
      v3 += 2;
      --v2;
    }

    while (v2);
    v10;
    return v11;
  }

  else
  {
    v6 = a2;
    a1;
  }

  return v6;
}

char *static Labels.collected(from:_:)(uint64_t a1, uint64_t a2)
{
  v57 = v2;
  v58 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v54 = *(v66 - 1);
  v3 = *(v54 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v60 = &v52;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<Int>>) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v69 = &v52;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v55 = &v52;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v67 = &v52;
  v64 = type metadata accessor for AnyColumn(0);
  v65 = *(v64 - 8);
  v14 = *(v65 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v61 = &v52;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v59 = &v52;
  v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v19 = *(v56 - 8);
  v20 = v19[8];
  v21 = alloca(v20);
  v22 = alloca(v20);
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>) - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v68 = &v52;
  v26 = AnyColumn.wrappedElementType.getter(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  if (!swift_dynamicCastMetatype(v26, &type metadata for String))
  {
    v33 = v60;
    if (!swift_dynamicCastMetatype(v26, &type metadata for Int))
    {
      v45 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v45, 0, 0);
      *v46 = 0xD000000000000025;
      *(v46 + 8) = "start time column" + 0x8000000000000000;
      *(v46 + 16) = 0;
      *(v46 + 32) = 0;
      *(v46 + 48) = 1;
      return swift_willThrow();
    }

    AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
    v62 = 0;
    v34 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
    v35 = v66;
    v67 = v34;
    OptionalColumnProtocol.filled(with:)(&v62, v66, v34);
    v68 = *(v54 + 8);
    (v68)(v33, v35);
    v36 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_11TabularData12FilledColumnVyAD0E0VySiGGTt0g5();
    v37 = v55;
    outlined init with copy of AnyColumn?(v58, v55);
    v38 = v64;
    if (__swift_getEnumTagSinglePayload(v37, 1, v64) == 1)
    {
      outlined destroy of AnyColumn?(v37);
    }

    else
    {
      (*(v65 + 32))(v61, v37, v38);
      AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
      v62 = 0;
      v48 = v66;
      OptionalColumnProtocol.filled(with:)(&v62, v66, v67);
      (v68)(v33, v48);
      v49 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_11TabularData12FilledColumnVyAD0E0VySiGGTt0g5();
      v36 = specialized Set.union<A>(_:)(v49, v36);
      (*(v65 + 8))(v61, v64);
    }

    v50 = specialized _copyCollectionToContiguousArray<A>(_:)(v36);
    v36;
    v62 = v50;
    v51 = v57;
    specialized MutableCollection<>.sort(by:)(&v62);
    if (!v51)
    {
      v44 = v36;
      goto LABEL_14;
    }

LABEL_15:

    BUG();
  }

  v69 = v19;
  AnyColumn.assumingType<A>(_:)(&type metadata for String, &type metadata for String);
  v62 = 0;
  v63 = 0xE000000000000000;
  v27 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  v28 = v56;
  v60 = v27;
  OptionalColumnProtocol.filled(with:)(&v62, v56, v27);
  v29 = v69[1];
  v69 = &v52;
  v66 = v29;
  (v29)(&v52, v28);
  v30 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_11TabularData12FilledColumnVyAD0E0VySSGGTt0g5();
  v31 = v67;
  outlined init with copy of AnyColumn?(v58, v67);
  v32 = v64;
  if (__swift_getEnumTagSinglePayload(v31, 1, v64) == 1)
  {
    outlined destroy of AnyColumn?(v67);
  }

  else
  {
    (*(v65 + 32))(v59, v67, v32);
    v39 = v69;
    AnyColumn.assumingType<A>(_:)(&type metadata for String, &type metadata for String);
    v62 = 0;
    v63 = 0xE000000000000000;
    v40 = v56;
    OptionalColumnProtocol.filled(with:)(&v62, v56, v60);
    (v66)(v39, v40);
    v41 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_11TabularData12FilledColumnVyAD0E0VySSGGTt0g5();
    v30 = specialized Set.union<A>(_:)(v41, v30);
    (*(v65 + 8))(v59, v64);
  }

  v42 = specialized _copyCollectionToContiguousArray<A>(_:)(v30);
  v30;
  v62 = v42;
  v43 = v57;
  specialized MutableCollection<>.sort(by:)(&v62);
  if (v43)
  {
    goto LABEL_15;
  }

  v44 = v30;
LABEL_14:
  v44;
  return v62;
}

uint64_t outlined init with copy of AnyColumn?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined destroy of AnyColumn?(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

void *Labels.encodeAnnotations(_:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v56 = *(v57 - 8);
  v5 = v56[8];
  v6 = alloca(v5);
  v7 = alloca(v5);
  v58 = &v52;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = alloca(v10);
  v12 = alloca(v10);
  v55 = a2;
  if ((a3 & 1) == 0)
  {
    v13 = _swiftEmptyDictionarySingleton;
    v61 = _swiftEmptyDictionarySingleton;
    v60 = *(a2 + 16);
    if (!v60)
    {
LABEL_25:
      v49 = v58;
      AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
      ML6LabelsO17encodeAnnotationsySaySiG11d8Data9AnyF13VFS2iSgXEfU0_SDyS2iGTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData6ColumnVySiG_Sis5NeverOTg5047_s8CreateML6LabelsO17encodeAnnotationsySaySiG11d8Data9AnyF13VFS2iSgXEfU0_SDyS2iGTf1cn_n(v49, &v61);
      v35 = v49;
      v36 = v57;
      v37 = v56;
      goto LABEL_26;
    }

    v59 = a1;

    v13 = _swiftEmptyDictionarySingleton;
    v38 = 0;
    while (1)
    {
      v63 = v38;
      v39 = *(v4 + 8 * v38 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v13);
      v64 = v13;
      v62 = v39;
      v42 = specialized __RawDictionaryStorage.find<A>(_:)(v39);
      v43 = (v41 & 1) == 0;
      v22 = __OFADD__(v13[2], v43);
      v44 = v13[2] + v43;
      if (v22)
      {
        BUG();
      }

      v45 = v41;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<Int, Int>);
      v25 = v44;
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v44))
      {
        v42 = specialized __RawDictionaryStorage.find<A>(_:)(v62);
        LOBYTE(v27) = v27 & 1;
        if ((v45 & 1) != v27)
        {
          break;
        }
      }

      v46 = v63;
      v13 = v64;
      if (v45)
      {
        *(v64[7] + 8 * v42) = v63;
      }

      else
      {
        v64[(v42 >> 6) + 8] |= 1 << v42;
        *(v13[6] + 8 * v42) = v62;
        *(v13[7] + 8 * v42) = v46;
        v47 = v13[2];
        v22 = __OFADD__(1, v47);
        v48 = v47 + 1;
        if (v22)
        {
          BUG();
        }

        v13[2] = v48;
      }

      v38 = v46 + 1;
      v4 = v55;
      if (v60 == v38)
      {
        v61 = v13;
        v55;
        goto LABEL_25;
      }
    }

    v51 = &type metadata for Int;
LABEL_33:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v51, v25, v27, v26);
    BUG();
  }

  v54 = &v52;
  v53 = v8;
  v58 = v9;
  v13 = _swiftEmptyDictionarySingleton;
  v61 = _swiftEmptyDictionarySingleton;
  v57 = *(a2 + 16);
  if (!v57)
  {
    goto LABEL_13;
  }

  v59 = a1;

  v14 = (a2 + 40);
  v13 = _swiftEmptyDictionarySingleton;
  v15 = 0;
  do
  {
    v62 = v15;
    v16 = *(v14 - 1);
    v56 = v14;
    v17 = *v14;

    v18 = swift_isUniquelyReferenced_nonNull_native(v13);
    v64 = v13;
    v60 = v16;
    v63 = v17;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v13[2], v21);
    v23 = v13[2] + v21;
    if (v22)
    {
      BUG();
    }

    v24 = v19;
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Int>);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v18, v23))
    {
      v25 = v63;
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v63);
      LOBYTE(v27) = v27 & 1;
      if ((v24 & 1) != v27)
      {
        v51 = &type metadata for String;
        goto LABEL_33;
      }
    }

    v13 = v64;
    if (v24)
    {
      v28 = v62;
      *(v64[7] + 8 * v20) = v62;
      v63;
    }

    else
    {
      v64[(v20 >> 6) + 8] |= 1 << v20;
      v29 = v13[6];
      v30 = 16 * v20;
      *(v29 + v30) = v60;
      *(v29 + v30 + 8) = v63;
      v28 = v62;
      *(v13[7] + 8 * v20) = v62;
      v31 = v13[2];
      v22 = __OFADD__(1, v31);
      v32 = v31 + 1;
      if (v22)
      {
        BUG();
      }

      v13[2] = v32;
    }

    v15 = v28 + 1;
    v14 = v56 + 2;
  }

  while (v57 != v15);
  v61 = v13;
  v55;
LABEL_13:
  v33 = v54;
  AnyColumn.convertedToStrings()();
  ML6LabelsO17encodeAnnotationsySaySiG11d8Data9AnyF13VFS2iSgXEfU0_SDyS2iGTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData6ColumnVySSG_Sis5NeverOTg5047_s8CreateML6LabelsO17encodeAnnotationsySaySiG11d8Data9AnyF13VFSiSSSgXEfU_SDySSSiGTf1cn_n(v33, &v61);
  v35 = v33;
  v36 = v53;
  v37 = v58;
LABEL_26:
  (v37[1])(v35, v36);
  v13;
  return ML6LabelsO17encodeAnnotationsySaySiG11d8Data9AnyF13VFS2iSgXEfU0_SDyS2iGTf1cn_n;
}