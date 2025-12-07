uint64_t *specialized MLDataColumn.map<A>(skipUndefined:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  v23 = v8;
  v12 = swift_allocObject(a6, 32, 7);
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  if (a5)
  {
    v22 = a4;
    outlined copy of Result<_DataTable, Error>(a4, 1);

    outlined copy of Result<_DataTable, Error>(a4, 1);
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v14 = _getErrorEmbeddedNSError<A>(_:)(&v22, v13, &protocol self-conformance witness table for Error);
    if (v14)
    {
      v15 = v14;
      outlined consume of Result<_DataTable, Error>(a4, 1);
    }

    else
    {
      v15 = swift_allocError(v13, &protocol self-conformance witness table for Error, 0, 0);
      *v20 = a4;
    }

    v19 = 1;
    v18 = a4;
  }

  else
  {

    outlined copy of Result<_DataTable, Error>(a4, 0);
    v16 = CMLColumn.apply(transform:type:skipUndefined:)(a7, v12, a8, 0);
    v17 = type metadata accessor for _UntypedColumn();
    v15 = swift_allocObject(v17, 24, 7);
    *(v15 + 16) = v16;
    v18 = a4;
    v19 = 0;
  }

  outlined consume of Result<_DataTable, Error>(v18, v19);

  result = v23;
  *v23 = v15;
  *(result + 8) = a5 & 1;
  return result;
}

uint64_t specialized closure #1 in MLDataColumn.map<A>(skipUndefined:_:)(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = a2;
  if (CMLFeatureValue.isUndefined.getter())
  {
    goto LABEL_6;
  }

  v22 = a3;
  v21 = a2;
  v5 = dynamic_cast_existential_1_unconditional(&type metadata for MLDataValue.DictionaryType, &type metadata for MLDataValue.DictionaryType, &protocol descriptor for FeatureValueConvertible);
  v7 = v6;
  v23 = *(v6 + 16);
  v25 = &v18;
  v24 = type metadata accessor for Optional(0, v5);
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);

  v23(a1, v5, v7);
  if (__swift_getEnumTagSinglePayload(&v18, 1, v5) == 1)
  {
    (*(v8 + 8))(&v18, v24);
    v19 = 0;
    v18 = 0;
    v20 = 0;
  }

  else
  {
    *(&v19 + 1) = v5;
    v20 = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v18);
    (*(*(v5 - 8) + 32))(boxed_opaque_existential_0, &v18, v5);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureValueConvertible?);
  v14 = swift_dynamicCast(v26, &v18, v13, &type metadata for MLDataValue.DictionaryType, 6);
  v4 = v21;
  if (!v14)
  {
LABEL_6:
    *v26 = 0;
  }

  v4(v26);
  v15 = BYTE8(v18);
  if (*(&v18 + 1))
  {
    v16 = specialized MLDataValueConvertible.featureValue.getter(v18, *(&v18 + 1));
    v15;
  }

  else
  {
    type metadata accessor for CMLFeatureValue();
    v16 = CMLFeatureValue.__allocating_init()();
  }

  v26[0];
  return v16;
}

uint64_t specialized closure #1 in MLDataColumn.map<A>(skipUndefined:_:)(uint64_t a1, void (*a2)(void))
{
  v2 = 0;
  if ((CMLFeatureValue.isUndefined.getter() & 1) == 0)
  {
    _s8CreateML22MLDataValueConvertiblePAAE12makeInstance07featureD0xSgAA010CMLFeatureD0C_tFZSS_Tt1g5(a1);
    v2 = v3;
  }

  a2();
  if (v10)
  {
    type metadata accessor for CMLFeatureValue();
    v4 = CMLFeatureValue.__allocating_init()();
  }

  else
  {
    v11 = &type metadata for Int;
    v12 = &protocol witness table for Int;
    v5 = __swift_project_boxed_opaque_existential_0Tm(&v9, &type metadata for Int);
    v6 = specialized handling<A, B>(_:_:)(*v5);
    if (!v6)
    {
      BUG();
    }

    v7 = type metadata accessor for CMLFeatureValue();
    swift_allocObject(v7, 25, 7);
    v4 = CMLFeatureValue.init(rawValue:ownsValue:)(v6, 1);
    __swift_destroy_boxed_opaque_existential_1Tm(&v9);
  }

  v2;
  return v4;
}

uint64_t specialized closure #1 in MLDataColumn.map<A>(_:)(uint64_t a1, void (*a2)(void *))
{
  v4[0] = a1;
  if (!a1)
  {
    BUG();
  }

  a2(v4);
  v4[0];
  return v3;
}

uint64_t specialized closure #1 in MLDataColumn.map<A>(_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *))
{
  v6 = a1;
  v7 = a2;
  if (!a2)
  {
    BUG();
  }

  a3(&v6);
  v7;
  return v5;
}

uint64_t static MLObjectDetectorMetrics.__evaluation(on:imageColumn:annotationColumn:predictionColumn:classes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v33 = v8;
  v31._countAndFlagsBits = a6;
  v28 = v7;
  v29 = type metadata accessor for DataFrame(0);
  v30 = *(v29 - 8);
  v11 = *(v30 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v14 = *(a1 + 8);
  v26 = *a1;
  v27 = v14;
  outlined copy of Result<_DataTable, Error>(v26, v14);
  DataFrame.init(_:)(&v26);
  v15._countAndFlagsBits = a4;
  v15._object = a5;
  if (_s11TabularData0B5FrameV14containsColumnySbSS_xmtlFSay8CreateML11MLDataValueOG_Tt0g5(v15))
  {
    v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLDataValue]);
    v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLObjectDetector.ObjectAnnotation]);
    v18 = v33;
    DataFrame.transformColumn<A, B>(_:_:)(a4, a5, specialized thunk for @callee_guaranteed (@guaranteed [MLDataValue]) -> (@owned [MLObjectDetector.ObjectAnnotation], @error @owned Error), 0, v16, v17);
    if (v18)
    {
      return (*(v30 + 8))(&v25, v29);
    }

    v33 = 0;
  }

  v32 = a4;
  v31._object = a5;
  countAndFlagsBits = v31._countAndFlagsBits;
  v20._countAndFlagsBits = v31._countAndFlagsBits;
  v20._object = a7;
  if ((_s11TabularData0B5FrameV14containsColumnySbSS_xmtlFSay8CreateML11MLDataValueOG_Tt0g5(v20) & 1) == 0)
  {
LABEL_7:
    static MLObjectDetectorMetrics.evaluation(on:annotationColumn:predictionColumn:)(&v25, v32, v31._object, countAndFlagsBits, a7);
    return (*(v30 + 8))(&v25, v29);
  }

  v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLDataValue]);
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLObjectDetector.ObjectAnnotation]);
  v23 = v33;
  DataFrame.transformColumn<A, B>(_:_:)(countAndFlagsBits, a7, specialized thunk for @callee_guaranteed (@guaranteed [MLDataValue]) -> (@owned [MLObjectDetector.ObjectAnnotation], @error @owned Error), 0, v21, v22);
  if (!v23)
  {
    v33 = 0;
    countAndFlagsBits = v31._countAndFlagsBits;
    goto LABEL_7;
  }

  return (*(v30 + 8))(&v25, v29);
}

uint64_t static MLObjectDetectorMetrics.evaluation(on:annotationColumn:predictionColumn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = v6;
  v51 = a5;
  v52 = a4;
  v55 = v5;
  v8 = type metadata accessor for AnyColumn(0);
  v59 = *(v8 - 8);
  v9 = *(v59 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v58 = v48;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v14 = v48;
  v15 = v8;
  v53 = a1;
  DataFrame.subscript.getter(a2, a3);
  v16 = lazy protocol witness table accessor for type AnyColumn and conformance AnyColumn();
  v17 = dispatch thunk of Collection.count.getter(v15, v16);
  v18 = v59;
  v19 = v17;
  v20 = _swiftEmptyArrayStorage;
  v65 = _swiftEmptyArrayStorage;
  v61 = v15;
  v57 = v16;
  if (v19)
  {
    v66 = _swiftEmptyArrayStorage;
    v21 = 0;
    if (v19 > 0)
    {
      v21 = v19;
    }

    v62 = v19;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
    v67 = v66;
    v68 = v48;
    dispatch thunk of Collection.startIndex.getter(v15, v16);
    if (v62 < 0)
    {
      BUG();
    }

    v22 = 0;
    v63 = (&type metadata for Any + 8);
    while (1)
    {
      v23 = __OFADD__(1, v22++);
      if (v23)
      {
        BUG();
      }

      v24 = dispatch thunk of Collection.subscript.read(v49, v64, v15, v16);
      outlined init with copy of Any?(v25, v48);
      v24(v49, 0);
      outlined init with copy of Any?(v48, v49);
      if (!v50)
      {
        break;
      }

      v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLObjectDetector.ObjectAnnotation]);
      if (!swift_dynamicCast(&v56, v49, v63, v26, 6))
      {
        goto LABEL_14;
      }

      v60 = v56;
      outlined destroy of Any?(v48);
      v27 = v67;
      v66 = v67;
      v28 = v67[2];
      if (v67[3] >> 1 <= v28)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v67[3] >= 2uLL, v28 + 1, 1);
        v27 = v66;
      }

      *(v27 + 16) = v28 + 1;
      v67 = v27;
      *(v27 + 8 * v28 + 32) = v60;
      v15 = v61;
      v16 = v57;
      dispatch thunk of Collection.formIndex(after:)(v64, v61, v57);
      if (v22 == v62)
      {
        v20 = v67;
        v18 = v59;
        v14 = v68;
        goto LABEL_15;
      }
    }

    outlined destroy of Any?(v49);
LABEL_14:
    v29 = v68;
    v30 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v30, 0, 0);
    *v31 = 0xD00000000000004CLL;
    *(v31 + 8) = "ce from prediction." + 0x8000000000000000;
    *(v31 + 16) = 0;
    *(v31 + 32) = 0;
    *(v31 + 48) = 0;
    swift_willThrow();
    outlined destroy of Any?(v48);

    return (*(v59 + 8))(v29, v61);
  }

  else
  {
LABEL_15:
    v67 = v20;
    v63 = *(v18 + 8);
    v63(v14, v15);
    v33 = v16;
    v34 = v58;
    DataFrame.subscript.getter(v52, v51);
    v35 = dispatch thunk of Collection.count.getter(v15, v33);
    if (v35)
    {
      v66 = _swiftEmptyArrayStorage;
      v36 = 0;
      if (v35 > 0)
      {
        v36 = v35;
      }

      v60 = v35;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36, 0);
      v65 = v66;
      dispatch thunk of Collection.startIndex.getter(v15, v33);
      if (v60 < 0)
      {
        BUG();
      }

      v37 = 0;
      v62 = &type metadata for Any + 8;
      while (1)
      {
        v23 = __OFADD__(1, v37++);
        if (v23)
        {
          BUG();
        }

        v38 = dispatch thunk of Collection.subscript.read(v49, v64, v15, v57);
        outlined init with copy of Any?(v39, v48);
        v38(v49, 0);
        outlined init with copy of Any?(v48, v49);
        if (!v50)
        {
          break;
        }

        v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLObjectDetector.ObjectAnnotation]);
        v41 = swift_dynamicCast(&v56, v49, v62, v40, 6);
        v42 = v65;
        if (!v41)
        {
          goto LABEL_28;
        }

        v68 = v56;
        outlined destroy of Any?(v48);
        v66 = v42;
        v43 = v42[2];
        if (v42[3] >> 1 <= v43)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v42[3] >= 2uLL, v43 + 1, 1);
          v42 = v66;
        }

        v42[2] = v43 + 1;
        v65 = v42;
        v42[v43 + 4] = v68;
        v34 = v58;
        v15 = v61;
        dispatch thunk of Collection.formIndex(after:)(v64, v61, v57);
        if (v37 == v60)
        {
          goto LABEL_26;
        }
      }

      outlined destroy of Any?(v49);
LABEL_28:
      v46 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v46, 0, 0);
      *v47 = 0xD00000000000004CLL;
      *(v47 + 8) = "ctDetector.ObjectAnnotation." + 0x8000000000000000;
      *(v47 + 16) = 0;
      *(v47 + 32) = 0;
      *(v47 + 48) = 0;
      swift_willThrow();
      outlined destroy of Any?(v48);
      v67;

      return (v63)(v58, v61);
    }

    else
    {
LABEL_26:
      v63(v34, v15);
      v44 = v67;
      v45 = v65;
      static MLObjectDetector.evaluation(on:detectedObjects:)(v67, v65);
      v44;
      return v45;
    }
  }
}

void *closure #1 in static MLObjectDetectorMetrics.convertToObjectAnnotationFrame(_:annotationColumn:predictionColumn:)(uint64_t a1, __m128i a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v25 = v2;
  v24 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v4 = _swiftEmptyArrayStorage;
  for (i = (a1 + 48); ; i += 24)
  {
    v21 = v3;
    if (*i != 4)
    {
      BUG();
    }

    v6 = *(i - 2);
    v7 = *(i - 1);
    v20 = v6;
    swift_bridgeObjectRetain_n(v6, 3);
    v8 = v25;
    MLObjectDetector.DecodableAnnotation.init(from:)(&v20, 3uLL, a2);
    v25 = v8;
    if (v8)
    {
      break;
    }

    outlined consume of MLDataValue(v6, v7, 4);
    outlined consume of MLDataValue(v6, v7, 4);
    a2 = _mm_cvtps_pd(v18);
    v9 = _mm_cvtps_pd(v19);
    v10 = v16;
    v11 = v17;
    v24 = v4;
    v12 = v4[2];
    v13 = v4[3];
    if (v13 >> 1 <= v12)
    {
      v23 = v17;
      v22 = v16;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v13 >= 2, v12 + 1, 1);
      v11 = v23;
      v10 = v22;
      v4 = v24;
    }

    v4[2] = v12 + 1;
    v14 = 7 * v12;
    v4[v14 + 4] = v10;
    v4[v14 + 5] = v11;
    *&v4[v14 + 6] = a2;
    *&v4[v14 + 8] = v9;
    v4[v14 + 10] = 0x3FF0000000000000;
    v3 = v21 - 1;
    if (v21 == 1)
    {
      return v4;
    }
  }

  outlined consume of MLDataValue(v6, v7, 4);
  outlined consume of MLDataValue(v6, v7, 4);

  return v4;
}

void *specialized thunk for @callee_guaranteed (@guaranteed [MLDataValue]) -> (@owned [MLObjectDetector.ObjectAnnotation], @error @owned Error)(uint64_t *a1, __m128i a2)
{
  v4 = v2;
  result = closure #1 in static MLObjectDetectorMetrics.convertToObjectAnnotationFrame(_:annotationColumn:predictionColumn:)(*a1, a2);
  if (!v3)
  {
    *v4 = result;
  }

  return result;
}

{
  v4 = v2;
  result = closure #2 in static MLObjectDetectorMetrics.convertToObjectAnnotationFrame(_:annotationColumn:predictionColumn:)(*a1, a2);
  if (!v3)
  {
    *v4 = result;
  }

  return result;
}

void *closure #2 in static MLObjectDetectorMetrics.convertToObjectAnnotationFrame(_:annotationColumn:predictionColumn:)(uint64_t a1, __m128i a2)
{
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v29 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  v6 = (a1 + 48);
  while (1)
  {
    v7 = *(v6 - 1);
    v8 = *v6;
    v30 = *(v6 - 2);
    v31 = v7;
    LOBYTE(v32) = v8;
    outlined copy of MLDataValue(v30, v7, v8);
    closure #1 in closure #2 in static MLObjectDetectorMetrics.convertToObjectAnnotationFrame(_:annotationColumn:predictionColumn:)(&v30, &v23, a2);
    if (v3)
    {
      break;
    }

    v24 = 0;
    outlined consume of MLDataValue(v30, v31, v32);
    v9 = v18;
    v10 = v19;
    a2 = v20;
    v11 = v21;
    v12 = v22;
    v29 = v5;
    v13 = v5[2];
    v14 = v5[3];
    v15 = v13 + 1;
    if (v14 >> 1 <= v13)
    {
      v26 = v19;
      v25 = v18;
      v27 = v22;
      v28 = v13 + 1;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v14 >= 2, v15, 1);
      v15 = v28;
      v12 = v27;
      v11 = v21;
      a2 = v20;
      v10 = v26;
      v9 = v25;
      v5 = v29;
    }

    v5[2] = v15;
    v16 = 7 * v13;
    v5[v16 + 4] = v9;
    v5[v16 + 5] = v10;
    *&v5[v16 + 6] = a2;
    *&v5[v16 + 8] = v11;
    v5[v16 + 10] = v12;
    v6 += 24;
    --v4;
    v3 = v24;
    if (!v4)
    {
      return v5;
    }
  }

  outlined consume of MLDataValue(v30, v31, v32);

  return v5;
}

uint64_t closure #1 in closure #2 in static MLObjectDetectorMetrics.convertToObjectAnnotationFrame(_:annotationColumn:predictionColumn:)(uint64_t a1, uint64_t *a2, __m128i a3)
{
  if (*(a1 + 16) != 4)
  {
    BUG();
  }

  v6 = *a1;
  if (!*(*a1 + 16))
  {
    goto LABEL_9;
  }

  v7 = v3;
  v30 = v4;
  v8 = *(a1 + 8);
  outlined copy of MLDataValue(v6, v8, 4u);

  *&v9 = 0x6E656469666E6F63;
  *(&v9 + 1) = 0xEA00000000006563;
  specialized __RawDictionaryStorage.find<A>(_:)(v9, 2, *a3.i64);
  if ((v11 & 1) == 0)
  {
    outlined consume of MLDataValue(v6, v8, 4);
    outlined consume of MLDataValue(v6, v8, 4);
LABEL_9:
    v17 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v18 = swift_allocError(&type metadata for MLCreateError, v17, 0, 0);
    *v19 = 0xD000000000000023;
    *(v19 + 8) = " the regressor metrics" + 0x8000000000000000;
    *(v19 + 16) = 0;
    *(v19 + 32) = 0;
    *(v19 + 48) = 0;
    result = swift_willThrow();
LABEL_19:
    *a2 = v18;
    return result;
  }

  v29 = v7;
  v31 = a2;
  v12 = v6[7];
  v13 = 24 * v10;
  v14 = *(v12 + v13);
  v15 = *(v12 + v13 + 16);
  v32 = *(v12 + v13 + 8);
  outlined copy of MLDataValue(v14, v32, v15);
  v16 = v8;
  outlined consume of MLDataValue(v6, v8, 4);
  if (!v15)
  {
    *a3.i64 = v14;
    goto LABEL_14;
  }

  if (v15 != 2)
  {
    if (v15 == 1)
    {
      v32 = v14;
LABEL_15:
      a2 = v31;
      v23 = v29;
      goto LABEL_18;
    }

    v16 = v32;
    outlined consume of MLDataValue(v14, v32, v15);
    a3 = 0x7FF8000000000000uLL;
LABEL_14:
    v32 = a3.i64[0];
    goto LABEL_15;
  }

  v16 = v32;
  v21 = _sSdySdSgxcSyRzlufCSS_Tt0g5(v14, v32);
  v23 = v29;
  if (v22)
  {
    a3 = 0x7FF8000000000000uLL;
    v32 = 0x7FF8000000000000;
  }

  else
  {
    v32 = v21;
  }

  a2 = v31;
LABEL_18:
  v24 = v30;
  v28 = v6;
  result = MLObjectDetector.DecodableAnnotation.init(from:)(&v28, v16, a3);
  v18 = v24;
  if (v24)
  {
    goto LABEL_19;
  }

  *v23 = v25;
  *(v23 + 16) = _mm_cvtps_pd(v26);
  *(v23 + 32) = _mm_cvtps_pd(v27);
  *(v23 + 48) = v32;
  return result;
}

uint64_t static MLClassifierMetrics.__evaluation(on:labelColumn:predictionColumn:classes:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v238._object = a3;
  v233 = v7;
  v239._countAndFlagsBits = a2;
  v253 = v8;
  v241 = a6;
  v232._countAndFlagsBits = a5;
  v10 = a1;
  v11 = *(*(type metadata accessor for MLClassifierMetrics(0) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v227 = &v220;
  v14 = *a1;
  LOBYTE(v10) = *(a1 + 8);
  v252 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v252, v221);
  inited[2] = 1;
  inited[3] = 2;
  v231._countAndFlagsBits = a4;
  inited[4] = a4;
  inited[5] = v232._countAndFlagsBits;
  v248 = v14;
  *&v246 = v14;
  *&v244 = v10;
  BYTE8(v246) = v10;

  v16 = v253;
  static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v246, 0x6974636964657250, 0xEA00000000006E6FLL, inited);
  if (v16)
  {
    swift_setDeallocating(inited);
    return specialized _ContiguousArrayStorage.__deallocating_deinit();
  }

  *&v246 = v248;
  BYTE8(v246) = v244;
  v17 = v252;
  v18 = swift_initStackObject(v252, v222);
  v18[2] = 1;
  v18[3] = 2;
  v18[4] = v239._countAndFlagsBits;
  v18[5] = v238._object;

  static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v246, 0x6C6562614CLL, 0xE500000000000000, v18);
  swift_setDeallocating(v18);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  swift_setDeallocating(inited);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  *&v246 = v248;
  BYTE8(v246) = v244;
  v20 = swift_initStackObject(v17, v223);
  v20[2] = 1;
  v20[3] = 2;
  v20[4] = v239._countAndFlagsBits;
  v20[5] = v238._object;
  LOBYTE(v234._countAndFlagsBits) = 2;
  LOBYTE(countAndFlagsBits) = 4;

  static _ValidationUtilities.validateTableTypes(table:featureColumns:featureType:labelColumn:labelType:)(&v246, v20, &v234, v231._countAndFlagsBits, v232._countAndFlagsBits, &countAndFlagsBits);
  v21 = v248;
  swift_setDeallocating(v20);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  if (!*(v241 + 16))
  {
    v62 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v63 = swift_allocError(&type metadata for MLCreateError, v62, 0, 0);
    *v64 = 0xD000000000000019;
    *(v64 + 8) = "lumn is invalid: '" + 0x8000000000000000;
    *(v64 + 16) = 0;
    *(v64 + 32) = 0;
    *(v64 + 48) = 0;
    v65 = v233;
    *v233 = v63;
    v66 = type metadata accessor for MLClassifierMetrics.Contents(0);
    return swift_storeEnumTagMultiPayload(v65, v66, 2);
  }

  v239._object = *(v241 + 16);
  *&v246 = v21;
  BYTE8(v246) = v244;
  v22 = v244;
  outlined copy of Result<_DataTable, Error>(v21, v244);
  outlined copy of Result<_DataTable, Error>(v21, v22);
  v23._countAndFlagsBits = v239._countAndFlagsBits;
  v23._object = v238._object;
  MLDataTable.subscript.getter(v23);
  outlined consume of Result<_DataTable, Error>(v246, SBYTE8(v246));
  countAndFlagsBits = v234._countAndFlagsBits;
  object = v234._object;
  MLUntypedColumn.dropDuplicates()();
  outlined consume of Result<_DataTable, Error>(countAndFlagsBits, object);
  if (BYTE8(v246) || (v24 = v246, outlined copy of Result<_DataTable, Error>(v246, 0), v25 = CMLColumn.size.getter(), v236 = v24, outlined consume of Result<_DataTable, Error>(v24, 0), v250._object = v25, v25 < 0))
  {
    BUG();
  }

  if (v25)
  {
    v231._object = "el's set of labels." + 0x8000000000000000;
    v240 = v241 + 72;
    v238._countAndFlagsBits = 0xD000000000000052;
    v26 = 0;
    v27 = 0;
    while (1)
    {
      v28 = v236;
      outlined copy of Result<_DataTable, Error>(v236, 0);
      v250._countAndFlagsBits = v27;
      _UntypedColumn.valueAtIndex(index:)(v27, a7);
      outlined consume of Result<_DataTable, Error>(v28, 0);
      v29 = v246;
      if (v247 != 2)
      {
        outlined consume of MLDataValue(v246, *(&v246 + 1), v247);
        BUG();
      }

      if (v246 == *(v241 + 32) || (_stringCompareWithSmolCheck(_:_:expecting:)(*(v241 + 32), *(v241 + 40), v246, *(&v246 + 1), 0) & 1) != 0)
      {
        outlined consume of MLDataValue(v29, *(&v29 + 1), 2);
      }

      else
      {
        v253 = v26;
        v30 = v239._object;
        if (v239._object == &dword_0 + 1)
        {
          v248 = v21;
          goto LABEL_17;
        }

        if (v29 != *(v241 + 48) && (_stringCompareWithSmolCheck(_:_:expecting:)(*(v241 + 48), *(v241 + 56), v29, *(&v29 + 1), 0) & 1) == 0)
        {
          v248 = v21;
          if (v30 != &dword_0 + 2)
          {
            v47 = v240;
            v48 = (&dword_0 + 2);
            while (1)
            {
              v49 = __OFADD__(1, v48++);
              if (v49)
              {
                BUG();
              }

              if (v29 == *(v47 - 1) || (_stringCompareWithSmolCheck(_:_:expecting:)(*(v47 - 1), *v47, v29, *(&v29 + 1), 0) & 1) != 0)
              {
                break;
              }

              v47 += 2;
              v31 = v252;
              if (v48 == v239._object)
              {
                goto LABEL_18;
              }
            }

            outlined consume of MLDataValue(v29, *(&v29 + 1), 2);
            v26 = v253;
            v21 = v248;
            goto LABEL_13;
          }

LABEL_17:
          v31 = v252;
LABEL_18:
          v32 = swift_initStackObject(v31, v224);
          *(v32 + 16) = 1;
          *(v32 + 24) = 2;
          *(v32 + 32) = v29;
          v33 = type metadata accessor for _UntypedColumn();
          swift_allocObject(v33, 24, 7);
          v34 = v244;
          v35 = v248;
          LODWORD(v249) = v244;
          outlined copy of Result<_DataTable, Error>(v248, v244);

          v245 = v32;
          v36 = v253;
          v37 = specialized _UntypedColumn.init<A>(_:)(v32);
          v242 = v36;
          if (v36)
          {
            if (v34)
            {
              v38 = v35;
              v37 = v36;
              goto LABEL_25;
            }

            *&v246 = 0;
            *(&v246 + 1) = 0xE000000000000000;
            v38 = v35;
            outlined copy of Result<_DataTable, Error>(v35, 0);
            _StringGuts.grow(_:)(85);
            v40._countAndFlagsBits = v238._countAndFlagsBits;
            v40._object = v231._object;
            String.append(_:)(v40);
            v234._countAndFlagsBits = 0;
            v234._object = 0xE000000000000000;
            countAndFlagsBits = v36;
            v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
            _print_unlocked<A, B>(_:_:)(&countAndFlagsBits, &v234, v41, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
            v42 = v234._object;
            String.append(_:)(v234);
            v42;
            v40._countAndFlagsBits = 39;
            v40._object = 0xE100000000000000;
            String.append(_:)(v40);
            v244 = v246;
            v43 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
            v44 = swift_allocError(&type metadata for MLCreateError, v43, 0, 0);
            *v45 = v244;
            a7 = 0.0;
            *(v45 + 16) = 0;
            *(v45 + 32) = 0;
            *(v45 + 48) = 0;
            swift_willThrow();
            outlined consume of Result<_DataTable, Error>(v38, 0);
            outlined consume of Result<_DataTable, Error>(v242, 1);
            v46 = v245;
            LOBYTE(v46) = 1;
            *&v244 = v46;
LABEL_37:
            v26 = 0;
            goto LABEL_38;
          }

          v38 = v35;
          if (v34)
          {
LABEL_25:
            v253 = 0;
            v237 = v37;
            *&v246 = v38;
            swift_errorRetain(v38);
            outlined copy of Result<_DataTable, Error>(v38, 1);
            v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
            v248 = _getErrorEmbeddedNSError<A>(_:)(&v246, v39, &protocol self-conformance witness table for Error);
            if (v248)
            {
              outlined consume of Result<_DataTable, Error>(v38, 1);
            }

            else
            {
              v248 = swift_allocError(v39, &protocol self-conformance witness table for Error, 0, 0);
              *v57 = v38;
            }

            v56 = v249;
            v58 = v242 != 0;
            outlined consume of Result<_DataTable, Error>(v38, 1);
            outlined consume of Result<_DataTable, Error>(v237, v58);
            v59 = v245;
            LOBYTE(v59) = 1;
            *&v244 = v59;
            v26 = v253;
            v44 = v248;
          }

          else
          {
            v50 = *(v37 + 16);
            v51 = v37;
            outlined copy of Result<_DataTable, Error>(v38, 0);
            v237 = v51;
            outlined copy of Result<_DataTable, Error>(v51, 0);

            v52 = v242;
            v53 = CMLTable.filtered(_:columnName:isExcluding:)(v50, v239._countAndFlagsBits, v238._object, 1u);
            v26 = v52;
            if (v52)
            {

              v54 = v237;
              outlined consume of Result<_DataTable, Error>(v237, 0);
              outlined consume of Result<_DataTable, Error>(v38, 0);
              outlined consume of Result<_DataTable, Error>(v54, 0);
              v55 = v245;
              LOBYTE(v55) = 1;
              *&v244 = v55;
              v44 = v52;
              goto LABEL_37;
            }

            v60 = v53;
            *&v244 = 0;
            outlined consume of Result<_DataTable, Error>(v237, 0);

            v61 = type metadata accessor for _DataTable();
            swift_allocObject(v61, 40, 7);
            v44 = _DataTable.init(impl:)(v60);
            outlined consume of Result<_DataTable, Error>(v38, 0);
            outlined consume of Result<_DataTable, Error>(v237, 0);
            v245;
LABEL_38:
            v56 = v249;
          }

          outlined consume of Result<_DataTable, Error>(v38, v56);
          outlined consume of Result<_DataTable, Error>(v38, v56);
          v21 = v44;
          goto LABEL_13;
        }

        outlined consume of MLDataValue(v29, *(&v29 + 1), 2);
        v26 = v253;
      }

LABEL_13:
      v27 = v250._countAndFlagsBits + 1;
      if ((v250._countAndFlagsBits + 1) == v250._object)
      {
        goto LABEL_46;
      }
    }
  }

  v26 = 0;
LABEL_46:
  v253 = v26;
  *&v246 = v21;
  v67 = v244 & 1;
  BYTE8(v246) = v244 & 1;
  v68 = v244;
  outlined copy of Result<_DataTable, Error>(v21, v244);
  outlined copy of Result<_DataTable, Error>(v21, v68);
  v252 = MLDataTable.size.getter();
  v69 = v68;
  outlined consume of Result<_DataTable, Error>(v246, SBYTE8(v246));
  outlined consume of Result<_DataTable, Error>(v21, v68);
  if (!v252)
  {
    v140 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v141 = swift_allocError(&type metadata for MLCreateError, v140, 0, 0);
    *v142 = 0xD000000000000053;
    *(v142 + 8) = "CreateML/MLDataTable.swift" + 0x8000000000000000;
    *(v142 + 16) = 0;
    *(v142 + 32) = 0;
    *(v142 + 48) = 0;
    outlined consume of Result<_DataTable, Error>(v236, 0);
    outlined consume of Result<_DataTable, Error>(v21, v68);
    v143 = v233;
    *v233 = v141;
    v144 = type metadata accessor for MLClassifierMetrics.Contents(0);
    v145 = v143;
    goto LABEL_126;
  }

  *&v246 = v21;
  v251 = v67;
  BYTE8(v246) = v67;
  outlined copy of Result<_DataTable, Error>(v21, v68);
  v228 = (v241 + 72);
  v70 = 0;
  v71 = v253;
  v248 = v21;
  v243 = v69;
LABEL_48:
  while (2)
  {
    while (2)
    {
      while (2)
      {
        v252 = v70;
        if (v244)
        {
          v253 = v71;
          v234._countAndFlagsBits = v21;
          swift_errorRetain(v21);
          outlined copy of Result<_DataTable, Error>(v21, 1);
          outlined copy of Result<_DataTable, Error>(v21, 1);
          v72 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
          v73 = _getErrorEmbeddedNSError<A>(_:)(&v234, v72, &protocol self-conformance witness table for Error);
          if (v73)
          {
            v74 = v73;
            outlined consume of Result<_DataTable, Error>(v21, 1);
          }

          else
          {
            v74 = swift_allocError(v72, &protocol self-conformance witness table for Error, 0, 0);
            *v79 = v21;
          }

          outlined consume of Result<_DataTable, Error>(v21, 1);
          outlined consume of Result<_RegressorMetrics, Error>(v74, v237, 1);
          outlined consume of Result<_DataTable, Error>(v21, 1);
          v70 = v252;
          if (!v252)
          {
            v70 = 0;
LABEL_128:
            v247 = v70;
            outlined consume of Result<_DataTable, Error>(v246, SBYTE8(v246));
            v147 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
            swift_allocObject(v147, *(v147 + 48), *(v147 + 52));
            v148 = v253;
            v149 = _MetricUtilities.ConfusionMatrixMeter.init(classCount:)(v239._object);
            if (v148)
            {
              outlined consume of Result<_DataTable, Error>(v236, 0);
              return outlined consume of Result<_DataTable, Error>(v21, v243);
            }

            else
            {
              v242 = v149;
              v150 = v241;

              v151 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (offset: Int, element: String));
              v152 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v151, &protocol witness table for String);

              v153 = (v150 + 40);
              v154 = 0;
              v155 = 0;
              v253 = 0;
              do
              {
                v252 = v154;
                v250._countAndFlagsBits = v155 + 1;
                if (__OFADD__(1, v155))
                {
                  BUG();
                }

                v156 = *(v153 - 1);
                v245 = v153;
                v157 = *v153;
                v158 = v152[2];
                swift_bridgeObjectRetain_n(*v153, 2);
                if (v158)
                {

                  specialized __RawDictionaryStorage.find<A>(_:)(v156, v157);
                  v160 = v159;
                  v152;
                  if (v160)
                  {
                    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000017, ("ActivityClassifierPipeline" + 0x8000000000000000), "CreateML/MLActivityClassifier.Model.swift", 41, 2, 556, 0);
                    BUG();
                  }
                }

                v161 = v156;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v152);
                *&v246 = v152;
                v250._object = v161;
                *&v244 = v157;
                v163 = v152;
                v164 = specialized __RawDictionaryStorage.find<A>(_:)(v161, v157);
                LOBYTE(v249) = v165;
                v166 = (v165 & 1) == 0;
                v49 = __OFADD__(v163[2], v166);
                v167 = v163[2] + v166;
                if (v49)
                {
                  BUG();
                }

                __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, (offset: Int, element: String)>);
                if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v167))
                {
                  v168 = v250._object;
                  v169 = v244;
                  v164 = specialized __RawDictionaryStorage.find<A>(_:)(v250._object, v244);
                  LOBYTE(v170) = v170 & 1;
                  LOBYTE(v171) = v249;
                  if ((v249 & 1) != v170)
                  {
                    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v169, v170, v171);
                    BUG();
                  }
                }

                else
                {
                  v168 = v250._object;
                  LOBYTE(v171) = v249;
                }

                v152 = v246;
                if (v171)
                {
                  v172 = *(v246 + 56);
                  v173 = 24 * v164;
                  *(v172 + v173 + 16);
                  *(v172 + v173) = v252;
                  *(v172 + v173 + 8) = v168;
                  v174 = v244;
                  *(v172 + v173 + 16) = v244;
                  v174;
                  v175 = v251;
                }

                else
                {
                  *(v246 + 8 * (v164 >> 6) + 64) |= 1 << v164;
                  v176 = v152[6];
                  v177 = 24 * v164;
                  v178 = 16 * v164;
                  *(v176 + v178) = v168;
                  v179 = v244;
                  *(v176 + v178 + 8) = v244;
                  v180 = v152[7];
                  *(v180 + v177) = v252;
                  *(v180 + v177 + 8) = v168;
                  *(v180 + v177 + 16) = v179;
                  v181 = v152[2];
                  v49 = __OFADD__(1, v181);
                  v182 = v181 + 1;
                  if (v49)
                  {
                    BUG();
                  }

                  v152[2] = v182;
                  v175 = v251;
                  v174 = v244;
                }

                v174;
                v153 = (v245 + 16);
                v155 = v250._countAndFlagsBits;
                v154 = v250._countAndFlagsBits;
              }

              while (v250._countAndFlagsBits != v239._object);
              swift_bridgeObjectRelease_n(v241, 2);
              v250._object = v152;
              v234._countAndFlagsBits = v248;
              LOBYTE(v234._object) = v175;
              v183._countAndFlagsBits = v239._countAndFlagsBits;
              v183._object = v238._object;
              MLDataTable.subscript.getter(v183);
              v184 = v246;
              v185 = BYTE8(v246);
              specialized MLUntypedColumn.map<A>(skipUndefined:_:)(1, specialized implicit closure #2 in static MLClassifierMetrics.__evaluation(on:labelColumn:predictionColumn:classes:), 0, v246, SBYTE8(v246), &unk_392648, partial apply for specialized closure #1 in MLUntypedColumn.map<A>(skipUndefined:_:), 2);
              outlined consume of Result<_DataTable, Error>(v184, v185);
              *&v244 = v234._countAndFlagsBits;
              v186 = v234._object;
              v187 = swift_allocObject(&unk_3924E0, 24, 7);
              *(v187 + 16) = v250._object;
              v188 = swift_allocObject(&unk_392508, 32, 7);
              *(v188 + 16) = partial apply for closure #2 in static MLClassifierMetrics.__evaluation(on:labelColumn:predictionColumn:classes:);
              *(v188 + 24) = v187;

              v189 = v186;
              v190 = v186;
              v191 = v244;
              specialized MLDataColumn.map<A>(skipUndefined:_:)(1, partial apply for specialized closure #1 in MLDataColumn.map<A>(_:), v188, v244, v190, &unk_392620, partial apply for specialized closure #1 in MLDataColumn.map<A>(skipUndefined:_:), 0);

              outlined consume of Result<_DataTable, Error>(v191, v189);
              *&v244 = v246;
              LODWORD(v252) = BYTE8(v246);
              v234._countAndFlagsBits = v248;
              LOBYTE(v234._object) = v251;
              v183._countAndFlagsBits = v231._countAndFlagsBits;
              v183._object = v232._countAndFlagsBits;
              MLDataTable.subscript.getter(v183);
              v192 = v246;
              LOBYTE(v187) = BYTE8(v246);
              specialized MLUntypedColumn.map<A>(skipUndefined:_:)(1, specialized implicit closure #3 in static MLClassifierMetrics.__evaluation(on:labelColumn:predictionColumn:classes:), 0, v246, SBYTE8(v246), &unk_3925F8, partial apply for specialized closure #1 in MLUntypedColumn.map<A>(skipUndefined:_:), 4);
              outlined consume of Result<_DataTable, Error>(v192, v187);
              v193 = v234._countAndFlagsBits;
              LOBYTE(v192) = v234._object;
              v194 = swift_allocObject(&unk_392530, 32, 7);
              *(v194 + 16) = closure #3 in static MLClassifierMetrics.__evaluation(on:labelColumn:predictionColumn:classes:);
              *(v194 + 24) = 0;
              specialized MLDataColumn.map<A>(skipUndefined:_:)(1, partial apply for specialized closure #1 in MLDataColumn.map<A>(_:), v194, v193, v192, &unk_3925D0, partial apply for specialized closure #1 in MLDataColumn.map<A>(skipUndefined:_:), 2);

              outlined consume of Result<_DataTable, Error>(v193, v192);
              v195 = v246;
              LODWORD(v191) = BYTE8(v246);
              v196 = swift_allocObject(&unk_392558, 24, 7);
              *(v196 + 16) = v250._object;
              v197 = swift_allocObject(&unk_392580, 32, 7);
              *(v197 + 16) = partial apply for closure #4 in static MLClassifierMetrics.__evaluation(on:labelColumn:predictionColumn:classes:);
              *(v197 + 24) = v196;

              LODWORD(v238._object) = v191;
              v232._countAndFlagsBits = v195;
              specialized MLDataColumn.map<A>(skipUndefined:_:)(1, closure #1 in MLDataColumn.map<A>(_:)specialized partial apply, v197, v195, v191, &unk_392620, partial apply for specialized closure #1 in MLDataColumn.map<A>(skipUndefined:_:), 0);

              v198 = v246;
              v199 = BYTE8(v246);
              outlined copy of Result<_DataTable, Error>(v246, SBYTE8(v246));
              v239._countAndFlagsBits = v198;
              MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSi_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSi_Tt0B5(v198, v199, a7);
              v201 = v244;
              LOBYTE(v191) = v252;
              outlined copy of Result<_DataTable, Error>(v244, v252);
              v202 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSi_Tt0B5(v201, v191, a7);
              LOBYTE(v201) = v202;
              v203 = v242;
              _MetricUtilities.ConfusionMatrixMeter.add(predictedIds:targetIds:)(MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSi_Tt0B5, v202);
              MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSi_Tt0B5;
              v201;
              v204 = v227;
              v205 = v253;
              static _MetricUtilities.makeClassifierMetrics(confusionMeter:classLabels:supplementMissingClassLabels:)(v203, v241, 1);
              if (v205)
              {
                outlined consume of Result<_DataTable, Error>(v239._countAndFlagsBits, v199);
                outlined consume of Result<_DataTable, Error>(v232._countAndFlagsBits, v238._object);
                outlined consume of Result<_DataTable, Error>(v244, v252);

                outlined consume of Result<_DataTable, Error>(v236, 0);
                return outlined consume of Result<_DataTable, Error>(v248, v243);
              }

              else
              {
                outlined consume of Result<_DataTable, Error>(v248, v243);
                outlined consume of Result<_DataTable, Error>(v236, 0);
                outlined consume of Result<_DataTable, Error>(v239._countAndFlagsBits, v199);
                outlined consume of Result<_DataTable, Error>(v244, v252);
                outlined consume of Result<_DataTable, Error>(v232._countAndFlagsBits, v238._object);

                return outlined init with take of MLClassifierMetrics(v204, v233);
              }
            }
          }
        }

        else
        {
          outlined copy of Result<_DataTable, Error>(v21, 0);
          v75 = CMLTable.rows()();
          if (v76)
          {
            goto LABEL_164;
          }

          v77 = v75;
          v237 = CMLTable.columns()();
          v253 = v78;
          if (v78)
          {
LABEL_165:
            v216 = "CreateML/MLDataTable.swift";
            v217 = 26;
            v218 = 192;
            v219 = v253;
            goto LABEL_167;
          }

          outlined consume of Result<_DataTable, Error>(v21, 0);
          if (v70 == v77)
          {
            goto LABEL_128;
          }
        }

        MLDataTable.Rows.subscript.getter(v70);
        v250 = v234;
        v249 = v235;
        v80 = v246;
        LOBYTE(v245) = BYTE8(v246);
        if (BYTE8(v246))
        {
          v234._countAndFlagsBits = v246;
          swift_errorRetain(v246);
          outlined copy of Result<_DataTable, Error>(v80, 1);
          outlined copy of Result<_DataTable, Error>(v80, 1);
          v81 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
          v82 = _getErrorEmbeddedNSError<A>(_:)(&v234, v81, &protocol self-conformance witness table for Error);
          if (v82)
          {
            v83 = v82;
            outlined consume of Result<_DataTable, Error>(v80, 1);
          }

          else
          {
            v83 = swift_allocError(v81, &protocol self-conformance witness table for Error, 0, 0);
            *v87 = v80;
          }

          outlined consume of Result<_DataTable, Error>(v80, 1);
          outlined consume of Result<_RegressorMetrics, Error>(v83, v231._object, 1);
          v85 = 0;
          v21 = v248;
        }

        else
        {
          outlined copy of Result<_DataTable, Error>(v246, 0);
          v84 = CMLTable.rows()();
          if (v76)
          {
LABEL_164:
            v216 = "CreateML/MLDataTable.swift";
            v217 = 26;
            v218 = 191;
            v219 = v76;
            goto LABEL_167;
          }

          v85 = v84;
          v231._object = CMLTable.columns()();
          v253 = v86;
          if (v86)
          {
            goto LABEL_165;
          }
        }

        v88 = v250._object;
        outlined consume of Result<_DataTable, Error>(v80, v245);
        if (v252 >= v85)
        {
          BUG();
        }

        v70 = v252 + 1;
        if (!v88[2])
        {

          v88;

          v71 = v253;
          continue;
        }

        break;
      }

      ++v252;
      v89 = v232._countAndFlagsBits;

      v90 = v249;

      v91 = specialized __RawDictionaryStorage.find<A>(_:)(v231._countAndFlagsBits, v89);
      if ((v92 & 1) == 0)
      {
        v90;
        swift_bridgeObjectRelease_n(v88, 2);
        v250._countAndFlagsBits;
        v89;
        v71 = v253;
        v21 = v248;
        v70 = v252;
        continue;
      }

      break;
    }

    v93 = v89;
    v94 = *(v88[7] + 8 * v91);
    v93;

    v95 = v253;
    v96 = CMLSequence.value(at:)(v94);
    v71 = v95;
    if (v95)
    {
      v216 = "CreateML/MLDataTable.Row.swift";
      v217 = 30;
      v218 = 85;
      v219 = v95;
LABEL_167:
      swift_unexpectedError(v219, v216, v217, 1, v218);
      BUG();
    }

    v97 = v96;
    v98 = v90;
    v99 = CMLFeatureValue.type.getter();
    v21 = v248;
    switch(v99)
    {
      case 0:
        v100 = *(v97 + 16);

        specialized handling<A, B>(_:_:)(v100);
        v71 = 0;
        goto LABEL_118;
      case 1:
        v138 = *(v97 + 16);

        specialized handling<A, B>(_:_:)(v138);
        v71 = 0;
LABEL_118:
        swift_bridgeObjectRelease_n(v250._object, 2);
        v250._countAndFlagsBits;
        v249;
        v97;
        v70 = v252;
        continue;
      case 2:

        v128 = CMLFeatureValue.stringValue()();
        v130 = v129;
        if (v129)
        {
          v129;

          BUG();
        }

        v131 = v128._object;
        swift_bridgeObjectRelease_n(v250._object, 2);
        v250._countAndFlagsBits;
        v249;
        v97;
        v131;
        goto LABEL_122;
      case 3:
        v132 = *(v97 + 16);

        v133 = specialized handling<A, B>(_:_:)(v132);
        v253 = 0;
        v134 = v133;
        if (!v133)
        {
          BUG();
        }

        v135 = v249;

        v97;
        v136 = type metadata accessor for CMLSequence();
        v137 = swift_initStackObject(v136, v225);
        *(v137 + 16) = v134;
        *(v137 + 24) = 1;

        v135;
        swift_bridgeObjectRelease_n(v250._object, 2);
        v250._countAndFlagsBits;
        v71 = v253;
        v70 = v252;
        continue;
      case 4:
        v101 = *(v97 + 16);

        v102 = specialized handling<A, B>(_:_:)(v101);
        v253 = 0;
        v103 = v102;
        if (!v102)
        {
          BUG();
        }

        v104 = type metadata accessor for CMLDictionary();
        v105 = swift_allocObject(v104, 24, 7);
        *(v105 + 16) = v103;
        v226[0] = v105;
        v226[1] = closure #1 in MLDataValue.DictionaryType.init(from:);
        v226[2] = 0;
        v226[3] = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
        v226[4] = 0;
        v226[5] = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
        v226[6] = 0;
        ML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC8CreateML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5(v226);
        v250._object;

        v249;
        v97;
        v107 = ML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5;
        if (ML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5[2] == v239._object)
        {
          v108 = 1 << *(ML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5 + 32);
          v109 = ~(-1 << v108);
          if (v108 >= 64)
          {
            v109 = -1;
          }

          v110 = ML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5[8] & v109;
          v240 = (v108 + 63) >> 6;
          v111 = 0;
          v71 = v253;
          v238._countAndFlagsBits = ML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5;
          while (1)
          {
            while (1)
            {
LABEL_78:
              if (!v110)
              {
                v112 = v111 + 1;
                v21 = v248;
                if (__OFADD__(1, v111))
                {
                  BUG();
                }

                if (v112 >= v240)
                {
LABEL_123:

                  v250._object;

LABEL_124:

                  v70 = v252;
                  goto LABEL_48;
                }

                v110 = *(v107 + 8 * v112 + 64);
                if (v110)
                {
                  ++v111;
                }

                else
                {
                  v113 = v111 + 2;
                  if (v111 + 2 >= v240)
                  {
                    goto LABEL_123;
                  }

                  v110 = *(v107 + 8 * v112 + 72);
                  if (v110)
                  {
                    goto LABEL_93;
                  }

                  v113 = v111 + 3;
                  if (v111 + 3 >= v240)
                  {
                    goto LABEL_123;
                  }

                  v110 = *(v107 + 8 * v112 + 80);
                  if (v110)
                  {
                    goto LABEL_93;
                  }

                  v113 = v111 + 4;
                  if (v111 + 4 >= v240)
                  {
                    goto LABEL_123;
                  }

                  v110 = *(v107 + 8 * v112 + 88);
                  if (v110)
                  {
                    goto LABEL_93;
                  }

                  v113 = v111 + 5;
                  if (v111 + 5 >= v240)
                  {
                    goto LABEL_123;
                  }

                  v110 = *(v107 + 8 * v112 + 96);
                  if (v110)
                  {
                    goto LABEL_93;
                  }

                  v113 = v111 + 6;
                  if (v111 + 6 >= v240)
                  {
                    goto LABEL_123;
                  }

                  v110 = *(v107 + 8 * v112 + 104);
                  if (v110)
                  {
LABEL_93:
                    v111 = v113;
                  }

                  else
                  {
                    v127 = v111 + 7;
                    do
                    {
                      if (v127 >= v240)
                      {
                        goto LABEL_123;
                      }

                      v110 = *(v107 + 8 * v127++ + 64);
                    }

                    while (!v110);
                    v111 = v127 - 1;
                  }
                }
              }

              _BitScanForward64(&v114, v110);
              v110 &= v110 - 1;
              v115 = v114 | (v111 << 6);
              v116 = *(v107 + 48);
              if (*(v116 + 24 * v115 + 16) == 2)
              {
                v117 = *(v116 + 24 * v115);
                v118 = *(v116 + 24 * v115 + 8);
                v119 = *(v241 + 32);
                v120 = *(v241 + 40);
                if (__PAIR128__(v120 ^ v118, v117 ^ v119) != 0)
                {
                  v242 = v111;
                  v245 = v118;
                  v121 = _stringCompareWithSmolCheck(_:_:expecting:)(v119, v120, v117, v118, 0);
                  v122 = v245;
                  v111 = v242;
                  v107 = v238._countAndFlagsBits;
                  if ((v121 & 1) == 0)
                  {
                    break;
                  }
                }
              }
            }

            if (v239._object == &dword_0 + 1)
            {
              break;
            }

            v123 = *(v241 + 56);
            if (v117 ^ *(v241 + 48) | v123 ^ v245)
            {
              v124 = _stringCompareWithSmolCheck(_:_:expecting:)(*(v241 + 48), v123, v117, v245, 0);
              v122 = v245;
              v111 = v242;
              v107 = v238._countAndFlagsBits;
              if ((v124 & 1) == 0)
              {
                v253 = v71;
                if (v239._object == &dword_0 + 2)
                {
                  goto LABEL_147;
                }

                v125 = v228;
                v126 = (&dword_0 + 2);
                while (1)
                {
                  v49 = __OFADD__(1, v126++);
                  if (v49)
                  {
                    BUG();
                  }

                  if (!(v117 ^ *(v125 - 1) | *v125 ^ v122))
                  {
                    v71 = v253;
                    goto LABEL_78;
                  }

                  if (_stringCompareWithSmolCheck(_:_:expecting:)(*(v125 - 1), *v125, v117, v122, 0))
                  {
                    break;
                  }

                  v125 += 2;
                  v107 = v238._countAndFlagsBits;
                  v111 = v242;
                  v122 = v245;
                  if (v126 == v239._object)
                  {
                    goto LABEL_147;
                  }
                }

                v71 = v253;
                v107 = v238._countAndFlagsBits;
                v111 = v242;
              }
            }
          }

          v253 = v71;
LABEL_147:
          v247 = v252;
          v234._countAndFlagsBits = 0;
          v234._object = 0xE000000000000000;
          outlined copy of MLDataValue(v117, v122, 2u);
          _StringGuts.grow(_:)(93);
          v206._object = "bels in the model." + 0x8000000000000000;
          v206._countAndFlagsBits = 0xD00000000000002ALL;
          String.append(_:)(v206);
          v207 = v245;
          outlined copy of MLDataValue(v117, v245, 2u);
          v206._countAndFlagsBits = v117;
          v206._object = v207;
          String.append(_:)(v206);
          outlined consume of MLDataValue(v117, v207, 2);
          v206._object = "le has row(s) with label '" + 0x8000000000000000;
          v206._countAndFlagsBits = 0xD000000000000031;
          String.append(_:)(v206);
          v232 = v234;
          v208 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          v209 = swift_allocError(&type metadata for MLCreateError, v208, 0, 0);
          *v210 = v232;
          *(v210 + 16) = 0;
          *(v210 + 32) = 0;
          *(v210 + 48) = 0;
          outlined consume of MLDataValue(v117, v207, 2);

          v250._object;

          outlined consume of Result<_DataTable, Error>(v236, 0);
          outlined consume of Result<_DataTable, Error>(v248, v243);

          outlined consume of Result<_DataTable, Error>(v246, SBYTE8(v246));
          v211 = v233;
          *v233 = v209;
          v145 = v211;
          v146 = type metadata accessor for MLClassifierMetrics.Contents(0);
        }

        else
        {
          ML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5;
          v247 = v252;
          v212 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          v213 = swift_allocError(&type metadata for MLCreateError, v212, 0, 0);
          *v214 = 0xD000000000000072;
          *(v214 + 8) = "maximumSecondMoments" + 0x8000000000000000;
          *(v214 + 16) = 0;
          *(v214 + 32) = 0;
          *(v214 + 48) = 0;

          v250._object;

          outlined consume of Result<_DataTable, Error>(v236, 0);
          outlined consume of Result<_DataTable, Error>(v248, v243);
          outlined consume of Result<_DataTable, Error>(v246, SBYTE8(v246));
          v215 = v233;
          *v233 = v213;
          v144 = type metadata accessor for MLClassifierMetrics.Contents(0);
          v145 = v215;
LABEL_126:
          v146 = v144;
        }

        result = swift_storeEnumTagMultiPayload(v145, v146, 2);
        break;
      case 5:
        swift_bridgeObjectRelease_n(v250._object, 2);
        v250._countAndFlagsBits;
        v98;
        goto LABEL_124;
      case 6:
        v130 = 0;

        MLDataValue.MultiArrayType.init(from:)(v97);
        v139 = v234._countAndFlagsBits;
        if (!v234._countAndFlagsBits)
        {
          BUG();
        }

        swift_bridgeObjectRelease_n(v250._object, 2);
        v250._countAndFlagsBits;
        v249;

LABEL_122:
        v71 = v130;
        v70 = v252;
        continue;
    }

    return result;
  }
}

void *specialized implicit closure #2 in static MLClassifierMetrics.__evaluation(on:labelColumn:predictionColumn:classes:)(uint64_t a1)
{
  v2 = result;
  if (*(a1 + 16) == 2)
  {
    v3 = *a1;
    v4 = *(a1 + 8);
    result = outlined copy of MLDataValue(*a1, v4, 2u);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  *v2 = v3;
  v2[1] = v4;
  return result;
}

void *specialized implicit closure #3 in static MLClassifierMetrics.__evaluation(on:labelColumn:predictionColumn:classes:)(uint64_t a1)
{
  v2 = result;
  if (*(a1 + 16) == 4)
  {
    v3 = *a1;
    result = outlined copy of MLDataValue(*a1, *(a1 + 8), 4u);
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  return result;
}

void closure #3 in static MLClassifierMetrics.__evaluation(on:labelColumn:predictionColumn:classes:)(uint64_t *a1)
{
  v2 = v1;
  specialized Sequence.max(by:)(*a1);
  if (v7 == 255)
  {
    *v2 = 0;
  }

  else
  {
    v3 = v5;
    v4 = v6;
    outlined consume of MLDataValue(v8, v9, v10);
    if (v7 != 2)
    {
      outlined consume of MLDataValue(v5, v6, v7);
      v3 = 0;
      v4 = 0;
    }

    *v2 = v3;
    *(v2 + 8) = v4;
  }
}

uint64_t closure #2 in static MLClassifierMetrics.__evaluation(on:labelColumn:predictionColumn:classes:)(uint64_t *a1, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 16))
  {
    v4 = a1[1];
    v5 = *a1;

    v6 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v4);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 24 * v6);
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 ^ 1;
    result = v4;
  }

  else
  {
    v9 = 1;
    v8 = 0;
  }

  *v3 = v8;
  *(v3 + 8) = v9 & 1;
  return result;
}

uint64_t static MLRegressorMetrics.__evaluation(on:targetColumn:predictionColumn:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, double a6)
{
  v29._countAndFlagsBits = a4;
  v31 = a3;
  v23 = v6;
  v29._object = a5;
  v8 = *(a1 + 8);
  v26 = *a1;
  v9 = v8 & 1;
  v27 = v8 & 1;
  v30 = v26;
  v28 = v8;
  outlined copy of Result<_DataTable, Error>(v26, v8);
  v10._countAndFlagsBits = a2;
  v10._object = v31;
  MLDataTable.subscript.getter(v10);
  outlined consume of Result<_DataTable, Error>(v26, v27);
  v26 = v24;
  v27 = v25;
  MLUntypedColumn.init(doubles:)(&v26);
  v11 = v21;
  if (v22 || (outlined copy of Result<_DataTable, Error>(v21, 0), v31 = v21, _UntypedColumn.type.getter(), v11 = v31, outlined consume of Result<_DataTable, Error>(v31, 0), v24 != 1))
  {
    outlined consume of Result<_DataTable, Error>(v11, v22);
    v18 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v18, 0, 0);
    *v19 = 0xD00000000000002FLL;
    *(v19 + 8) = "Provided classes is empty" + 0x8000000000000000;
    *(v19 + 16) = 0;
    *(v19 + 32) = 0;
    *(v19 + 48) = 0;
    return swift_willThrow();
  }

  else
  {
    v26 = v30;
    v27 = v9;
    outlined copy of Result<_DataTable, Error>(v30, v28);
    MLDataTable.subscript.getter(v29);
    outlined consume of Result<_DataTable, Error>(v26, v27);
    v26 = v24;
    v27 = v25;
    MLUntypedColumn.init(doubles:)(&v26);
    outlined copy of Result<_DataTable, Error>(v21, 0);
    _UntypedColumn.type.getter();
    outlined consume of Result<_DataTable, Error>(v21, 0);
    v12 = v31;
    outlined copy of Result<_DataTable, Error>(v31, 0);
    MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSd_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSd_Tt0B5(v12, 0, a6);
    outlined copy of Result<_DataTable, Error>(v21, 0);
    v14 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSd_Tt0B5(v21, 0, a6);
    v29._object = COERCE_VOID_(static _MetricUtilities.rmse(target:prediction:)(MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSd_Tt0B5, v14));
    v30 = static _MetricUtilities.maximumError(target:prediction:)(MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSd_Tt0B5, v14);
    LOBYTE(v29._countAndFlagsBits) = v15;
    v14;
    MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSd_Tt0B5;
    if (v29._countAndFlagsBits)
    {
      v16 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v16, 0, 0);
      *v17 = 0xD000000000000046;
      *(v17 + 8) = "onverted to doubles" + 0x8000000000000000;
      *(v17 + 16) = 0;
      *(v17 + 32) = 0;
      *(v17 + 48) = 0;
      swift_willThrow();
      outlined consume of Result<_DataTable, Error>(v21, 0);
      return outlined consume of Result<_DataTable, Error>(v12, 0);
    }

    else
    {
      outlined consume of Result<_DataTable, Error>(v12, 0);
      outlined consume of Result<_DataTable, Error>(v21, 0);
      result = v23;
      *v23 = v30;
      *(v23 + 8) = v29._object;
      *(v23 + 16) = 0;
    }
  }

  return result;
}

uint64_t specialized Dictionary<>.featureValue.getter(uint64_t a1)
{
  v31 = a1;
  v1 = tc_v1_flex_dict_create(0);
  if (!v1)
  {
    BUG();
  }

  v2 = v1;
  v3 = 0;
  v4 = type metadata accessor for CMLDictionary();
  inited = swift_initStackObject(v4, v25);
  *(inited + 16) = v2;
  v5 = 1 << *(v31 + 32);
  v6 = ~(-1 << v5);
  if (v5 >= 64)
  {
    v6 = -1;
  }

  v7 = *(v31 + 64) & v6;
  v30 = (v5 + 63) >> 6;

  while (1)
  {
    if (v7)
    {
      goto LABEL_21;
    }

    v8 = v3 + 1;
    if (__OFADD__(1, v3))
    {
      BUG();
    }

    if (v8 >= v30)
    {
      goto LABEL_27;
    }

    v7 = *(v31 + 8 * v8 + 64);
    if (v7)
    {
      ++v3;
      goto LABEL_21;
    }

    v9 = v3 + 2;
    if (v3 + 2 >= v30)
    {
      goto LABEL_27;
    }

    v7 = *(v31 + 8 * v8 + 72);
    if (!v7)
    {
      v9 = v3 + 3;
      if (v3 + 3 >= v30)
      {
        goto LABEL_27;
      }

      v7 = *(v31 + 8 * v8 + 80);
      if (!v7)
      {
        v9 = v3 + 4;
        if (v3 + 4 >= v30)
        {
          goto LABEL_27;
        }

        v7 = *(v31 + 8 * v8 + 88);
        if (!v7)
        {
          v9 = v3 + 5;
          if (v3 + 5 >= v30)
          {
            goto LABEL_27;
          }

          v7 = *(v31 + 8 * v8 + 96);
          if (!v7)
          {
            v9 = v3 + 6;
            if (v3 + 6 >= v30)
            {
              goto LABEL_27;
            }

            v7 = *(v31 + 8 * v8 + 104);
            if (!v7)
            {
              break;
            }
          }
        }
      }
    }

    v3 = v9;
LABEL_21:
    v10 = v7;
    _BitScanForward64(&v11, v7);
    v27 = v3;
    v12 = v11 | (v3 << 6);
    v13 = *(*(v31 + 56) + 8 * v12);
    v12 *= 16;
    v14 = *(v31 + 48);
    v15 = *(v14 + v12);
    v16 = *(v14 + v12 + 8);
    v26[3] = &type metadata for Double;
    v26[4] = &protocol witness table for Double;
    v26[0] = v13;
    v29 = *__swift_project_boxed_opaque_existential_0Tm(v26, &type metadata for Double);

    v17 = specialized handling<A, B>(_:_:)();
    if (!v17)
    {
      BUG();
    }

    v29 = (v10 - 1) & v10;
    v18 = type metadata accessor for CMLFeatureValue();
    swift_initStackObject(v18, v24);
    v19 = CMLFeatureValue.init(rawValue:ownsValue:)(v17, 1);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    CMLDictionary.add(key:value:)(v15, v16, v19);

    v16;
    v7 = v29;
    v3 = v27;
  }

  v20 = v3 + 7;
  while (v20 < v30)
  {
    v7 = *(v31 + 8 * v20++ + 64);
    if (v7)
    {
      v3 = v20 - 1;
      goto LABEL_21;
    }
  }

LABEL_27:

  type metadata accessor for CMLFeatureValue();
  v21 = inited;

  v22 = CMLFeatureValue.__allocating_init(_:)(v21);
  swift_setDeallocating(v21);
  tc_v1_release(*(v21 + 16));
  return v22;
}

uint64_t specialized closure #1 in MLUntypedColumn.init<A>(_:)(uint64_t a1)
{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(a1, specialized _UntypedColumn.init<A>(_:));
}

{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(a1, specialized _UntypedColumn.init<A>(_:));
}

{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(a1, specialized _UntypedColumn.init<A>(_:));
}

{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(a1, specialized _UntypedColumn.init<A>(_:));
}

{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(a1, specialized _UntypedColumn.init<A>(_:));
}

{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(a1, specialized _UntypedColumn.init<A>(_:));
}

{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(a1, specialized _UntypedColumn.init<A>(_:));
}

uint64_t specialized closure #1 in MLUntypedColumn.init<A>(_:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = type metadata accessor for _UntypedColumn();
  swift_allocObject(v2, 24, 7);

  return a2(a1);
}

uint64_t *specialized MLUntypedColumn.map<A>(skipUndefined:_:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  v24 = a1;
  v23 = v8;
  v12 = swift_allocObject(a6, 32, 7);
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  if (a5)
  {
    v22 = a4;
    outlined copy of Result<_DataTable, Error>(a4, 1);

    outlined copy of Result<_DataTable, Error>(a4, 1);
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v14 = _getErrorEmbeddedNSError<A>(_:)(&v22, v13, &protocol self-conformance witness table for Error);
    if (v14)
    {
      v15 = v14;
      outlined consume of Result<_DataTable, Error>(a4, 1);
    }

    else
    {
      v15 = swift_allocError(v13, &protocol self-conformance witness table for Error, 0, 0);
      *v20 = a4;
    }

    v19 = 1;
    v18 = a4;
  }

  else
  {

    outlined copy of Result<_DataTable, Error>(a4, 0);
    v16 = CMLColumn.apply(transform:type:skipUndefined:)(a7, v12, a8, v24);
    v17 = type metadata accessor for _UntypedColumn();
    v15 = swift_allocObject(v17, 24, 7);
    *(v15 + 16) = v16;
    v18 = a4;
    v19 = 0;
  }

  outlined consume of Result<_DataTable, Error>(v18, v19);

  result = v23;
  *v23 = v15;
  *(result + 8) = a5 & 1;
  return result;
}

uint64_t specialized closure #1 in MLUntypedColumn.map<A>(skipUndefined:_:)(uint64_t a1, void (*a2)(void *), double a3)
{

  MLDataValue.init(_:)(a1, a3);
  v3 = v10[0];
  v4 = v11;
  v15 = v10[1];
  a2(v10);
  v5 = v14;
  if (v14)
  {
    v12 = &type metadata for MLDataValue.MultiArrayType;
    v13 = &protocol witness table for MLDataValue.MultiArrayType;
    v10[0] = v14;
    __swift_project_boxed_opaque_existential_0Tm(v10, &type metadata for MLDataValue.MultiArrayType);
    v6 = v5;
    v7 = MLDataValue.MultiArrayType.featureValue.getter();
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    outlined consume of MLDataValue(v3, v15, v4);

    return v7;
  }

  else
  {
    type metadata accessor for CMLFeatureValue();
    v9 = CMLFeatureValue.__allocating_init()();
    outlined consume of MLDataValue(v3, v15, v4);
    return v9;
  }
}

{

  MLDataValue.init(_:)(a1, a3);
  v3 = v9[0];
  v4 = v10;
  v14 = v9[1];
  a2(v9);
  v5 = v13;
  if (v13)
  {
    v11 = &type metadata for MLDataValue.DictionaryType;
    v12 = &protocol witness table for MLDataValue.DictionaryType;
    v9[0] = v13;
    __swift_project_boxed_opaque_existential_0Tm(v9, &type metadata for MLDataValue.DictionaryType);

    v6 = MLDataValue.DictionaryType.featureValue.getter(v5, &type metadata for MLDataValue.DictionaryType);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    outlined consume of MLDataValue(v3, v14, v4);
    v5;
    return v6;
  }

  else
  {
    0;
    type metadata accessor for CMLFeatureValue();
    v8 = CMLFeatureValue.__allocating_init()();
    outlined consume of MLDataValue(v3, v14, v4);
    return v8;
  }
}

{

  MLDataValue.init(_:)(a1, a3);
  v3 = v9[0];
  v4 = v10;
  v13 = v9[1];
  a2(v9);
  v5 = v12;
  if (v12)
  {
    v6 = specialized MLDataValueConvertible.featureValue.getter(v11, v12);
    outlined consume of MLDataValue(v3, v13, v4);
    v5;
    return v6;
  }

  else
  {
    type metadata accessor for CMLFeatureValue();
    v8 = CMLFeatureValue.__allocating_init()();
    outlined consume of MLDataValue(v3, v13, v4);
    return v8;
  }
}

uint64_t specialized closure #1 in MLDataColumn.map<A>(_:)(uint64_t *a1, void (*a2)(void *))
{
  v3 = v2;
  result = specialized closure #1 in MLDataColumn.map<A>(_:)(*a1, a2);
  *v3 = result;
  v3[1] = v5;
  return result;
}

uint64_t specialized closure #1 in MLDataColumn.map<A>(_:)(uint64_t *a1, void (*a2)(uint64_t *))
{
  v3 = v2;
  result = specialized closure #1 in MLDataColumn.map<A>(_:)(*a1, a1[1], a2);
  *v3 = result;
  *(v3 + 8) = v5 & 1;
  return result;
}

uint64_t partial apply for specialized closure #1 in MLDataColumn.map<A>(_:)(uint64_t *a1)
{
  return specialized closure #1 in MLDataColumn.map<A>(_:)(a1, *(v1 + 16));
}

{
  return specialized closure #1 in MLDataColumn.map<A>(_:)(a1, *(v1 + 16));
}

uint64_t outlined init with take of MLClassifierMetrics(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLClassifierMetrics(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t partial apply for specialized closure #1 in MLUntypedColumn.map<A>(skipUndefined:_:)(uint64_t a1, double a2)
{
  return specialized closure #1 in MLUntypedColumn.map<A>(skipUndefined:_:)(a1, *(v2 + 16), a2);
}

{
  return specialized closure #1 in MLUntypedColumn.map<A>(skipUndefined:_:)(a1, *(v2 + 16), a2);
}

{
  return specialized closure #1 in MLUntypedColumn.map<A>(skipUndefined:_:)(a1, *(v2 + 16), a2);
}

uint64_t partial apply for specialized closure #1 in MLDataColumn.map<A>(skipUndefined:_:)(uint64_t a1)
{
  return specialized closure #1 in MLDataColumn.map<A>(skipUndefined:_:)(a1, *(v1 + 16), *(v1 + 24));
}

{
  return specialized closure #1 in MLDataColumn.map<A>(skipUndefined:_:)(a1, *(v1 + 16));
}

uint64_t dynamic_cast_existential_1_unconditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!swift_conformsToProtocol2(a2, a3))
  {
    BUG();
  }

  return a1;
}

void MLLinearRegressor.Model.export(internalMetadata:)()
{
  v109 = v1;
  v101 = v0;
  v89 = type metadata accessor for ModelKind(0);
  v88 = *(v89 - 8);
  v3 = *(v88 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v90 = &v81;
  v92 = type metadata accessor for FeatureType(0);
  v91 = *(v92 - 8);
  v6 = *(v91 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v93 = &v81;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Model?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v94 = &v81;
  v97 = type metadata accessor for Model(0);
  v98 = *(v97 - 8);
  v12 = *(v98 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v104 = &v81;
  v100 = type metadata accessor for URL.DirectoryHint(0);
  v83 = *(v100 - 8);
  v15 = *(v83 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v84 = &v81;
  v18 = type metadata accessor for UUID(0);
  v85 = *(v18 - 8);
  v19 = *(v85 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v86 = &v81;
  v102 = type metadata accessor for URL(0);
  v103 = *(v102 - 8);
  v22 = *(v103 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v87 = &v81;
  v25 = alloca(v22);
  v26 = alloca(v22);
  v107 = &v81;
  v27 = alloca(v22);
  v28 = alloca(v22);
  v106 = &v81;
  v29 = alloca(v22);
  v30 = alloca(v22);
  v31 = v2[2];
  if (!v31)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001CLL, ("ressorModel.swift" + 0x8000000000000000), "CreateML/MLLinearRegressor.Model+CoreML.swift", 45, 2, 10, 0);
    BUG();
  }

  v32 = v109;
  v33 = specialized FeatureVectorizer.Transformer.exportEncoders()(v2[2], v2[3], v2[4]);
  if (!v32)
  {
    v95 = v31;
    v99 = v2;
    v109 = v33;
    v105 = &v81;
    v34 = objc_opt_self(NSFileManager);
    v35 = [v34 defaultManager];
    v36 = v35;
    NSFileManager.createTemporaryModelDirectory()();
    if (v37)
    {
      v109;
    }

    else
    {

      v38 = [v34 defaultManager];
      v39 = v38;
      NSFileManager.temporaryModelDirectory.getter();

      v108 = 0;
      v40 = v86;
      UUID.init()();
      v41 = UUID.uuidString.getter();
      v43 = v42;
      v96 = v42;
      (*(v85 + 8))(v40, v18);
      v82[0] = v41;
      v82[1] = v43;
      v44 = v84;
      v45 = v100;
      v46 = v83;
      (*(v83 + 104))(v84, enum case for URL.DirectoryHint.inferFromPath(_:), v100);
      v47 = lazy protocol witness table accessor for type String and conformance String();
      v48 = v107;
      URL.appending<A>(component:directoryHint:)(v82, v44, &type metadata for String, v47);
      (*(v46 + 8))(v44, v45);
      v96;
      v49 = *(v103 + 8);
      v50 = v102;
      v49(v48, v102);
      v51 = v105;
      v52 = v106;
      URL.appendingPathExtension(_:)(0x6C65646F6D6C6D2ELL, 0xE800000000000000);
      v49(v52, v50);
      type metadata accessor for MLLinearRegressor.Model(0);
      v53 = v108;
      BaseLinearRegressorModel.export(to:)(v51);
      if (v53)
      {
        v49(v105, v102);
        v109;
      }

      else
      {
        v106 = v49;
        v54 = v87;
        (*(v103 + 16))(v87, v105, v102);
        Model.init(contentsOf:)(v54);
        v108 = 0;
        v55 = v94;
        specialized BidirectionalCollection.last.getter(v109);
        v56 = v97;
        if (__swift_getEnumTagSinglePayload(v55, 1, v97) == 1)
        {
          BUG();
        }

        v57 = Model.outputs.getter();
        v103 = *(v98 + 8);
        (v103)(v55, v56);
        Model.inputs.setter(v57);
        v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
        v59 = *(type metadata accessor for FeatureDescription(0) - 8);
        v60 = swift_allocObject(v58, ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72), *(v59 + 80) | 7);
        *(v60 + 16) = 1;
        *(v60 + 24) = 2;
        v61 = *v99;
        v107 = v99[1];

        v62 = v93;
        FeatureType.DoubleParameters.init(optional:)(0);
        (*(v91 + 104))(v62, enum case for FeatureType.double(_:), v92);
        v100 = v61;
        FeatureDescription.init(name:type:description:)(v61, v107, v62, 0, 0xE000000000000000);
        v63 = v104;
        Model.outputs.setter(v60);
        v64 = v107;

        Model.predictedFeatureName.setter(v61, v64);
        v65 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for String, &protocol witness table for String);
        Model.metadata.setter(v65);
        Model.init()();
        Model.specificationVersion.setter(1);
        v66 = v95;

        v67 = v108;
        ML16ColumnDescriptorVG_20MLModelSpecification18FeatureDescriptionVs5NeverOTg503_s8d50ML18TreeRegressorModelV6export16internalMetadata20h33Specification0E0VSDyS2SGz_tKFAF18jk5VAA16fG54Vcfu0_33_3fd57c9cf8bb5b882e179ce0f1f8c55eAmKTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML16ColumnDescriptorVG_20MLModelSpecification18FeatureDescriptionVs5NeverOTg503_s8d50ML18TreeRegressorModelV6export16internalMetadata20h33Specification0E0VSDyS2SGz_tKFAF18jk5VAA16fG54Vcfu0_33_3fd57c9cf8bb5b882e179ce0f1f8c55eAmKTf3nnnpk_nTf1cn_n(v66);
        v108 = v67;
        v66;
        Model.inputs.setter(ML16ColumnDescriptorVG_20MLModelSpecification18FeatureDescriptionVs5NeverOTg503_s8d50ML18TreeRegressorModelV6export16internalMetadata20h33Specification0E0VSDyS2SGz_tKFAF18jk5VAA16fG54Vcfu0_33_3fd57c9cf8bb5b882e179ce0f1f8c55eAmKTf3nnnpk_nTf1cn_n);
        v69 = v63;
        v70 = Model.outputs.getter();
        Model.outputs.setter(v70);
        v71 = v107;

        Model.predictedFeatureName.setter(v100, v71);
        v72 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Model>);
        v73 = *(v98 + 80);
        v74 = (v73 + 32) & ~*(v98 + 80);
        v75 = v98;
        v76 = swift_allocObject(v72, v74 + *(v98 + 72), v73 | 7);
        *(v76 + 16) = 1;
        *(v76 + 24) = 2;
        v77 = v69;
        v78 = v97;
        (*(v75 + 16))(v76 + v74, v77, v97);
        v82[0] = v109;
        specialized Array.append<A>(contentsOf:)(v76);
        v79 = v90;
        PipelineRegressorConfiguration.init(models:names:)(v82[0], _swiftEmptyArrayStorage);
        (*(v88 + 104))(v79, enum case for ModelKind.pipelineRegressor(_:), v89);
        Model.kind.setter(v79);
        (v103)(v104, v78);
        v80 = v105;
        $defer #1 () in TreeRegressorModel.export(internalMetadata:)();
        (v106)(v80, v102);
      }
    }
  }
}

void *_sSa9repeating5countSayxGx_SitcfCSf_Tt1g5(uint64_t a1, float a2)
{
  if (a1 < 0)
  {
    BUG();
  }

  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  result = static Array._allocateBufferUninitialized(minimumCapacity:)(a1, &type metadata for Float);
  result[2] = a1;
  v4 = 0;
  v5 = _mm_cvtepi8_epi64(770);
  v6 = _mm_cvtepi8_epi64(256);
  si128 = _mm_load_si128(&xmmword_33D700);
  v8 = _mm_xor_si128(_mm_shuffle_epi32((a1 - 1), 68), si128);
  do
  {
    v9 = _mm_shuffle_epi32(v4, 68);
    v10 = _mm_xor_si128(_mm_or_si128(v9, v6), si128);
    v11 = _mm_cmpgt_epi32(v10, v8);
    v12 = _mm_or_si128(_mm_shuffle_epi32(v11, 245), _mm_and_si128(_mm_shuffle_epi32(_mm_cmpeq_epi32(v10, v8), 245), v11));
    if (~_mm_cvtsi128_si32(v12))
    {
      *&result[v4 / 2 + 4] = a2;
    }

    if (_mm_extract_epi8(_mm_xor_si128(v12, -1), 8))
    {
      *(&result[v4 / 2 + 4] + 1) = a2;
    }

    v13 = _mm_xor_si128(_mm_or_si128(v9, v5), si128);
    v14 = _mm_cmpgt_epi32(v13, v8);
    v15 = _mm_xor_si128(_mm_or_si128(_mm_shuffle_epi32(v14, 245), _mm_and_si128(_mm_shuffle_epi32(_mm_cmpeq_epi32(v13, v8), 245), v14)), -1);
    if (_mm_extract_epi8(v15, 0))
    {
      *&result[v4 / 2 + 5] = a2;
    }

    if (_mm_extract_epi8(v15, 8))
    {
      *(&result[v4 / 2 + 5] + 1) = a2;
    }

    v4 += 4;
  }

  while (((a1 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v4);
  return result;
}

void *_sSa9repeating5countSayxGx_SitcfCSS_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    BUG();
  }

  if (a3)
  {
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)(a3, &type metadata for String);
    v5 = v4;
    v4[2] = a3;
    v4[4] = a1;
    v4[5] = a2;
    if (a3 != 1)
    {
      v6 = v4 + 6;
      v7 = a3 - 2;
      while (1)
      {
        *v6 = a1;
        v6[1] = a2;
        if (v7-- == 0)
        {
          break;
        }

        v6 += 2;
      }
    }
  }

  else
  {
    a2;
    return _swiftEmptyArrayStorage;
  }

  return v5;
}

void *_sSa9repeating5countSayxGx_SitcfCSd_Tt1g5(uint64_t a1, double a2)
{
  if (a1 < 0)
  {
    BUG();
  }

  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  result = static Array._allocateBufferUninitialized(minimumCapacity:)(a1, &type metadata for Double);
  result[2] = a1;
  v4 = 0;
  v5 = _mm_cvtepi8_epi64(256);
  si128 = _mm_load_si128(&xmmword_33D700);
  v7 = _mm_xor_si128(_mm_shuffle_epi32((a1 - 1), 68), si128);
  do
  {
    v8 = _mm_xor_si128(_mm_or_si128(_mm_shuffle_epi32(v4, 68), v5), si128);
    v9 = _mm_cmpgt_epi32(v8, v7);
    v10 = _mm_or_si128(_mm_shuffle_epi32(v9, 245), _mm_and_si128(_mm_shuffle_epi32(_mm_cmpeq_epi32(v8, v7), 245), v9));
    if (~_mm_cvtsi128_si32(v10))
    {
      *&result[v4 + 4] = a2;
    }

    if (_mm_extract_epi8(_mm_xor_si128(v10, -1), 8))
    {
      *&result[v4 + 5] = a2;
    }

    v4 += 2;
  }

  while (((a1 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
  return result;
}

uint64_t _sSa9repeating5countSayxGx_SitcfCSo8NSNumberC_Tt1g5(id a1, uint64_t a2)
{
  if (a2 < 0)
  {
    BUG();
  }

  if (a2)
  {
    v2 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    result = static Array._allocateBufferUninitialized(minimumCapacity:)(a2, v2);
    v4 = result & 0xFFFFFFFFFFFFF8;
    *(v4 + 16) = a2;
    *(v4 + 32) = a1;
    if (a2 != 1)
    {
      v6 = result;
      for (i = 0; ; ++i)
      {
        *(v4 + 8 * i + 40) = a1;
        if (a2 - 2 == i)
        {
          break;
        }

        a1;
      }

      a1;
      return v6;
    }
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

void *_sSa9repeating5countSayxGx_SitcfCSi_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    BUG();
  }

  if (!a2)
  {
    return _swiftEmptyArrayStorage;
  }

  result = static Array._allocateBufferUninitialized(minimumCapacity:)(a2, &type metadata for Int);
  result[2] = a2;
  v3 = 0;
  v4 = _mm_cvtepi8_epi64(256);
  si128 = _mm_load_si128(&xmmword_33D700);
  v6 = _mm_xor_si128(_mm_shuffle_epi32((a2 - 1), 68), si128);
  do
  {
    v7 = _mm_xor_si128(_mm_or_si128(_mm_shuffle_epi32(v3, 68), v4), si128);
    v8 = _mm_cmpgt_epi32(v7, v6);
    v9 = _mm_or_si128(_mm_shuffle_epi32(v8, 245), _mm_and_si128(_mm_shuffle_epi32(_mm_cmpeq_epi32(v7, v6), 245), v8));
    if (~_mm_cvtsi128_si32(v9))
    {
      result[v3 + 4] = a1;
    }

    if (_mm_extract_epi8(_mm_xor_si128(v9, -1), 8))
    {
      result[v3 + 5] = a1;
    }

    v3 += 2;
  }

  while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v3);
  return result;
}

void *_sSa9repeating5countSayxGx_SitcfC4HeapADVy8CreateML11InteractionVG_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    BUG();
  }

  if (a2)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Heap<Interaction>);
    v3 = static Array._allocateBufferUninitialized(minimumCapacity:)(a2, v2);
    *(v3 + 16) = a2;
    *(v3 + 32) = a1;
    if (a2 != 1)
    {
      for (i = 2; ; ++i)
      {
        *(v3 + 8 * i + 24) = a1;
        if (a2 == i)
        {
          break;
        }
      }
    }
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void *_sSa9repeating5countSayxGx_SitcfCSiSg_Tt1g5(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 < 0)
  {
    BUG();
  }

  if (!a3)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Int?);
  result = static Array._allocateBufferUninitialized(minimumCapacity:)(v3, v4);
  result[2] = v3;
  v6 = result + 4;
  do
  {
    *v6 = a1;
    *(v6 + 8) = a2 & 1;
    v6 += 2;
    --v3;
  }

  while (v3);
  return result;
}

void *_sSa9repeating5countSayxGx_SitcfC8CreateML14ItemStatisticsVySdG_Tt1g5(uint64_t a1, uint64_t a2, double a3)
{
  if (a2 < 0)
  {
    BUG();
  }

  if (!a2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ItemStatistics<Double>);
  result = static Array._allocateBufferUninitialized(minimumCapacity:)(a2, v4);
  result[2] = a2;
  v6 = (result + 4);
  do
  {
    *v6 = a1;
    v6[1] = a3;
    v6 += 2;
    --v3;
  }

  while (v3);
  return result;
}

void *_sSa9repeating5countSayxGx_SitcfC8CreateML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  if (a3 < 0)
  {
    BUG();
  }

  if (!a3)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ItemStatistics<PearsonSimilarity.ItemScore>);
  result = static Array._allocateBufferUninitialized(minimumCapacity:)(v5, v6);
  result[2] = v5;
  v8 = (result + 7);
  do
  {
    *(v8 - 3) = a1;
    *(v8 - 2) = a2;
    *(v8 - 1) = a4;
    *v8 = a5;
    v8 += 4;
    --v5;
  }

  while (v5);
  return result;
}

void *_sSa9repeating5countSayxGx_SitcfCSd_Sdt_Tt1g5(uint64_t a1, double a2, double a3)
{
  if (a1 < 0)
  {
    BUG();
  }

  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (Double, Double));
  result = static Array._allocateBufferUninitialized(minimumCapacity:)(a1, v4);
  result[2] = a1;
  v6 = (result + 4);
  do
  {
    *v6 = a2;
    v6[1] = a3;
    v6 += 2;
    --v3;
  }

  while (v3);
  return result;
}

void *_sSa9repeating5countSayxGx_SitcfCSaySfG_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 < 0)
  {
    BUG();
  }

  if (a2)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledName(a3);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)(a2, v3);
    *(v4 + 16) = a2;
    *(v4 + 32) = a1;
    if (a2 != 1)
    {
      for (i = 2; ; ++i)
      {
        *(v4 + 8 * i + 24) = a1;
        if (a2 == i)
        {
          break;
        }
      }
    }
  }

  else
  {
    a1;
    return _swiftEmptyArrayStorage;
  }

  return v4;
}

CreateML::MLDataValue::MultiArrayType __swiftcall MLDataValue.MultiArrayType.init(_:)(MLMultiArray a1)
{
  isa = a1.super.isa;
  v3 = v1;
  result._contents.super.isa = [(objc_class *)a1.super.isa dataType];
  if (result._contents.super.isa != (&loc_1003C + 4))
  {
    v67 = v3;
    v5 = [(objc_class *)a1.super.isa shape];
    v6 = v5;
    v66 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v6, v66);

    objc_allocWithZone(MLMultiArray);
    v8 = @nonobjc MLMultiArray.init(shape:dataType:)(v7, 65600);
    v9 = v8;
    v10 = [(objc_class *)a1.super.isa strides];
    v11 = v66;
    v12 = v10;
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v12, v66);

    v14 = specialized Array._getCount()(v13);
    v69 = isa;
    v68 = v9;
    if (v14)
    {
      v76[0] = _swiftEmptyArrayStorage;
      v15 = 0;
      if (v14 > 0)
      {
        v15 = v14;
      }

      v73 = v14;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
      if (v73 < 0)
      {
        BUG();
      }

      v16 = v76[0];
      v17 = 0;
      v70 = v13;
      do
      {
        v18 = v16;
        if ((v13 & 0xC000000000000003) != 0)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)(v17);
        }

        else
        {
          v19 = *(v13 + 8 * v17 + 32);
        }

        v20 = v19;
        v21 = [v19 integerValue];

        v16 = v18;
        v76[0] = v18;
        v22 = v18[2];
        if (v16[3] >> 1 <= v22)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v16[3] >= 2uLL, v22 + 1, 1);
          v16 = v76[0];
        }

        ++v17;
        v16[2] = v22 + 1;
        v16[v22 + 4] = v21;
        v13 = v70;
      }

      while (v73 != v17);
      v64 = v16;
      v70;
      v23 = v69;
      v11 = v66;
      v24 = [v68 strides];
    }

    else
    {
      v23 = isa;
      v13;
      v64 = _swiftEmptyArrayStorage;
      v24 = [v9 strides];
    }

    v25 = v24;
    v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v25, v11);

    v27 = specialized Array._getCount()(v26);
    if (v27)
    {
      v28 = v27;
      v76[0] = _swiftEmptyArrayStorage;
      v29 = 0;
      if (v27 > 0)
      {
        v29 = v27;
      }

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29, 0);
      if (v28 < 0)
      {
        BUG();
      }

      v30 = v76[0];
      v31 = 0;
      v74 = v26;
      v71 = v28;
      do
      {
        v32 = v30;
        if ((v26 & 0xC000000000000003) != 0)
        {
          v33 = specialized _ArrayBuffer._getElementSlowPath(_:)(v31);
        }

        else
        {
          v33 = *(v26 + 8 * v31 + 32);
        }

        v34 = v33;
        v35 = [v33 integerValue];

        v30 = v32;
        v76[0] = v32;
        v36 = v32[2];
        if (v30[3] >> 1 <= v36)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v30[3] >= 2uLL, v36 + 1, 1);
          v30 = v76[0];
        }

        ++v31;
        v30[2] = v36 + 1;
        v30[v36 + 4] = v35;
        v26 = v74;
      }

      while (v71 != v31);
      v65 = v30;
      v74;
      v23 = v69;
      v11 = v66;
      v37 = [(objc_class *)v69 shape];
    }

    else
    {
      v26;
      v65 = _swiftEmptyArrayStorage;
      v37 = [(objc_class *)v23 shape];
    }

    v38 = v37;
    v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v38, v11);

    v40 = specialized Array._getCount()(v39);
    if (v40)
    {
      v41 = v40;
      v76[0] = _swiftEmptyArrayStorage;
      v42 = 0;
      if (v40 > 0)
      {
        v42 = v40;
      }

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42, 0);
      if (v41 < 0)
      {
        BUG();
      }

      v43 = v76[0];
      v44 = 0;
      v75 = v39;
      v72 = v41;
      do
      {
        if ((v39 & 0xC000000000000003) != 0)
        {
          v45 = specialized _ArrayBuffer._getElementSlowPath(_:)(v44);
        }

        else
        {
          v45 = *(v39 + 8 * v44 + 32);
        }

        v46 = v45;
        v47 = [v45 integerValue];

        v76[0] = v43;
        v48 = v43[2];
        if (v43[3] >> 1 <= v48)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v43[3] >= 2uLL, v48 + 1, 1);
          v43 = v76[0];
        }

        ++v44;
        v43[2] = v48 + 1;
        v43[v48 + 4] = v47;
        v39 = v75;
      }

      while (v72 != v44);
      v75;
      v23 = v69;
    }

    else
    {
      v39;
      v43 = _swiftEmptyArrayStorage;
    }

    v49 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v64, v65);
    v65;
    v64;
    if (v49)
    {
      v43;
      v50 = [(objc_class *)v23 count];
      if (v50 < 0)
      {
        BUG();
      }

      if (v50)
      {
        v51 = v50;
        for (i = 0; i != v51; ++i)
        {
          v53 = [(objc_class *)v69 objectAtIndexedSubscript:i];
          v54 = v53;
          [v68 setObject:v54 atIndexedSubscript:i];
        }

        v3 = v67;
        isa = v68;
        goto LABEL_55;
      }

      isa = v68;
    }

    else
    {
      if ([(objc_class *)v23 count]<= 0)
      {
        isa = v68;

        v63 = v43;
      }

      else
      {
        v55 = objc_allocWithZone(NSNumber);
        v56 = [v55 initWithInteger:0];
        v76[0] = _sSa9repeating5countSayxGx_SitcfCSo8NSNumberC_Tt1g5(v56, v43[2]);
        do
        {
          v57 = Array._bridgeToObjectiveC()().super.isa;
          v58 = [(objc_class *)v69 objectForKeyedSubscript:v57];
          v59 = v58;

          [v59 doubleValue];
          v60 = objc_allocWithZone(NSNumber);
          v61 = [v60 initWithDouble:?];
          v62 = Array._bridgeToObjectiveC()().super.isa;
          [v68 setObject:v61 forKeyedSubscript:v62];
        }

        while ((incrementIndex #1 (shape:index:) in MLDataValue.MultiArrayType.init(_:)(v43, v76) & 1) != 0);
        isa = v68;

        v43;
        v63 = v76[0];
      }

      result._contents.super.isa = v63;
    }

    v3 = v67;
  }

LABEL_55:
  *v3 = isa;
  return result;
}

BOOL _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  result = 1;
  if (!v2 || a1 == a2)
  {
    return result;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  if (v2 != 1)
  {
    v4 = 0;
    do
    {
      if (v4 + 1 >= v2)
      {
        BUG();
      }

      result = *(a1 + 8 * v4 + 40) == *(a2 + 8 * v4 + 40);
      if (*(a1 + 8 * v4 + 40) != *(a2 + 8 * v4 + 40))
      {
        break;
      }
    }

    while (v2 - 2 != v4++);
  }

  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(void *a1, void *a2)
{
  v3 = a1[2];
  if (v3 != a2[2])
  {
    return 0;
  }

  if (!v3 || a1 == a2)
  {
    goto LABEL_12;
  }

  v5 = a1[4];
  v6 = a2[4];
  v7 = a2[5];
  v15 = v3;
  if (__PAIR128__(v7 ^ a1[5], v6 ^ a1[4]) != 0)
  {
    v2 = 0;
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, a1[5], v6, v7, 0);
    v3 = v15;
    if ((v8 & 1) == 0)
    {
      return v2;
    }
  }

  if (v3 == 1)
  {
LABEL_12:
    LOBYTE(v2) = 1;
    return v2;
  }

  v9 = 1;
  v10 = 7;
  v2 = 0;
  while (1)
  {
    if (v9 >= v3)
    {
      BUG();
    }

    v11 = a2[v10 - 1];
    v12 = a2[v10];
    if (__PAIR128__(v12 ^ a1[v10], v11 ^ a1[v10 - 1]) != 0)
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)(a1[v10 - 1], a1[v10], v11, v12, 0);
      v3 = v15;
      if ((v13 & 1) == 0)
      {
        return v2;
      }
    }

    ++v9;
    v10 += 2;
    if (v3 == v9)
    {
      goto LABEL_12;
    }
  }
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CreateML16ColumnDescriptorV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 == *(a2 + 16))
  {
    if (!v4 || a1 == a2)
    {
LABEL_55:
      LOBYTE(v3) = 1;
    }

    else
    {
      v45 = *(a1 + 16);
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v50 = *(a1 + 48);
      v47 = a1;
      LOBYTE(v2) = *(a1 + 56);
      v8 = *(a2 + 32);
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = *(a2 + 56);
      if (!(v8 ^ v6 | v9 ^ v7) || (v3 = 0, v12 = v10, v13 = *(a1 + 40), v14 = v2, v15 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, v8, v9, 0), v2 = v14, LOBYTE(v7) = v13, v10 = v12, (v15 & 1) != 0))
      {
        v16 = 1;
LABEL_7:
        switch(v2)
        {
          case 0:
            if (v11)
            {
              return 0;
            }

            v3 = 0;
            v17 = v10;
            outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v10, 0);
            if (v50 == v17)
            {
              goto LABEL_50;
            }

            return v3;
          case 1:
            if (v11 != 1)
            {
              return 0;
            }

            v31 = v10;
            v44 = 1;
            goto LABEL_32;
          case 2:
            if (v11 != 2)
            {
              return 0;
            }

            v31 = v10;
            v44 = 2;
            goto LABEL_32;
          case 3:
            if (v11 != 3)
            {
              return 0;
            }

            v31 = v10;
            v44 = 3;
LABEL_32:
            v32 = v10;
            outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v31, v44);
            if (v50 != v32)
            {
              return 0;
            }

            goto LABEL_50;
          case 4:
            if (v11 != 4)
            {
              return 0;
            }

            v18 = v50[2];
            if (v18 != v10[2])
            {
              return 0;
            }

            if (!v18 || v50 == v10)
            {
              goto LABEL_50;
            }

            v19 = v50[4];
            v20 = v50[5];
            v21 = v10[4];
            v22 = v10[5];
            v48 = v10;
            if (v19 != v21 || v20 != v22)
            {
              v3 = 0;
              v23 = _stringCompareWithSmolCheck(_:_:expecting:)(v19, v20, v21, v22, 0);
              v10 = v48;
              if ((v23 & 1) == 0)
              {
                return v3;
              }
            }

            if (v18 == 1)
            {
              goto LABEL_50;
            }

            v24 = 7;
            v25 = 1;
            break;
          case 5:
            if (v11 != 5)
            {
              return 0;
            }

            v33 = v10;
            v49 = v7;

            outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v33, 5);
            v3 = v50;
            outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v50, 5);
            ML16ColumnDescriptorV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CreateML16ColumnDescriptorV_Tt1g5(v50, v33);
            v9;
            outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v33, 5);
            v49;
            outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v50, 5);
            if ((ML16ColumnDescriptorV_Tt1g5 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_50;
          case 6:
            switch(v50)
            {
              case 0uLL:
                v3 = 0;
                if (v11 == 6 && !v10)
                {
                  goto LABEL_46;
                }

                break;
              case 1uLL:
                v3 = 0;
                if (v11 == 6 && v10 == (&dword_0 + 1))
                {
                  outlined copy of ColumnDescriptor.ColumnTypeDescriptor(1, 6);
                  goto LABEL_50;
                }

                break;
              case 2uLL:
                v3 = 0;
                if (v11 == 6 && v10 == (&dword_0 + 2))
                {
                  outlined copy of ColumnDescriptor.ColumnTypeDescriptor(2, 6);
                  goto LABEL_50;
                }

                break;
              case 3uLL:
                v3 = 0;
                if (v11 == 6 && v10 == (&dword_0 + 3))
                {
LABEL_46:
                  outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v10, 6);
                  outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v50, 6);
                  goto LABEL_50;
                }

                break;
            }

            return v3;
        }

        while (1)
        {
          if (v25 >= v18)
          {
            BUG();
          }

          v26 = v50[v24 - 1];
          v27 = v50[v24];
          v28 = v10[v24 - 1];
          v29 = v10[v24];
          if (v26 != v28 || v27 != v29)
          {
            v3 = 0;
            v30 = _stringCompareWithSmolCheck(_:_:expecting:)(v26, v27, v28, v29, 0);
            v10 = v48;
            if ((v30 & 1) == 0)
            {
              break;
            }
          }

          ++v25;
          v24 += 2;
          if (v18 == v25)
          {
LABEL_50:
            if (v16 == v45)
            {
              goto LABEL_55;
            }

            if (v16 >= v45)
            {
              BUG();
            }

            v34 = v16 + 1;
            v35 = 32 * v16;
            v36 = *(v47 + v35 + 32);
            v7 = *(v47 + v35 + 40);
            v50 = *(v47 + v35 + 48);
            LOBYTE(v2) = *(v47 + v35 + 56);
            v37 = *(a2 + v35 + 32);
            v9 = *(a2 + v35 + 40);
            v10 = *(a2 + v35 + 48);
            v11 = *(a2 + v35 + 56);
            v16 = v34;
            if (!(v37 ^ v36 | v9 ^ v7))
            {
              goto LABEL_7;
            }

            v38 = v9;
            v39 = v10;
            v3 = v9;
            v40 = v7;
            v41 = v2;
            v42 = _stringCompareWithSmolCheck(_:_:expecting:)(v36, v7, v37, v38, 0);
            v2 = v41;
            LOBYTE(v7) = v40;
            LOBYTE(v9) = v3;
            v10 = v39;
            v16 = v34;
            if (v42)
            {
              goto LABEL_7;
            }

            return 0;
          }
        }
      }
    }
  }

  else
  {
    return 0;
  }

  return v3;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CreateML11MLDataValueO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3 == *(a2 + 16))
  {
    LOBYTE(v2) = 1;
    if (v3 && a1 != a2)
    {
      v4 = 48;
      v5 = *(a1 + 16);
      do
      {
        v6 = *(a1 + v4 - 16);
        v7 = *(a1 + v4 - 8);
        v8 = *(a1 + v4);
        v18 = v6;
        v19 = v7;
        LOBYTE(v20) = v8;
        if (v5-- == 0)
        {
          BUG();
        }

        v15 = v3;
        v11 = *(a2 + v4 - 8);
        v12 = *(a2 + v4);
        v21 = *(a2 + v4 - 16);
        v10 = v21;
        v22 = v11;
        LOBYTE(v23) = v12;
        outlined copy of MLDataValue(v6, v7, v8);
        outlined copy of MLDataValue(v10, v11, v12);
        LOBYTE(v13) = static MLDataValue.== infix(_:_:)(&v18, &v21);
        v2 = v13;
        outlined consume of MLDataValue(v21, v22, v23);
        outlined consume of MLDataValue(v18, v19, v20);
        if ((v2 & 1) == 0)
        {
          break;
        }

        v4 += 24;
        v3 = v5;
      }

      while (v15 != 1);
    }
  }

  else
  {
    return 0;
  }

  return v2;
}

char _sSasSQRzlE2eeoiySbSayxG_ABtFZ18CreateMLComponents16AnnotatedFeatureVy10Foundation3URLVSSG_Tt1g5(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v27 = &v24;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v9 = &v24;
  v10 = *(a1 + 16);
  v32 = a2;
  if (v10 != *(a2 + 16))
  {
    return 0;
  }

  result = 1;
  if (v10 && a1 != v32)
  {
    v12 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v13 = v12 + a1;
    v32 += v12;
    v14 = *(v30 + 16);
    v29 = *(v30 + 72);
    v15 = v10;
    v28 = v14;
    do
    {
      v24 = v10;
      v14(v9, v13, v3);
      v16 = v15 == 0;
      v17 = v15 - 1;
      if (v16)
      {
        BUG();
      }

      v26 = v17;
      v25 = v13;
      v18 = v9;
      v19 = v27;
      v20 = v32;
      v14(v27, v32, v3);
      v21 = lazy protocol witness table accessor for type AnnotatedFeature<URL, String> and conformance <> AnnotatedFeature<A, B>();
      v22 = v18;
      v31 = dispatch thunk of static Equatable.== infix(_:_:)(v18, v19, v3, v21);
      v23 = *(v30 + 8);
      v23(v19, v3);
      v23(v22, v3);
      result = v31;
      if ((v31 & 1) == 0)
      {
        break;
      }

      v32 = v29 + v20;
      v13 = v29 + v25;
      v15 = v26;
      v10 = v26;
      v9 = v22;
      v14 = v28;
    }

    while (v24 != 1);
  }

  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSo8NSNumberC_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  if ((a1 & 0x4000000000000001) != 0)
  {
    v25 = a1 & 0xFFFFFFFFFFFFF8;
    if (v4)
    {
      v25 = v4;
    }

    v4 = a1;
    v5 = _CocoaArrayWrapper.endIndex.getter(v25);
  }

  else
  {
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFF8));
  }

  v29 = v5;
  if ((a2 & 0x4000000000000001) != 0)
  {
    v26 = a2 & 0xFFFFFFFFFFFFF8;
    if (a2)
    {
      v26 = a2;
    }

    v6 = _CocoaArrayWrapper.endIndex.getter(v26);
    v5 = v29;
    v4 = a1;
  }

  else
  {
    v6 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFF8));
  }

  if (v5 == v6)
  {
    LOBYTE(v2) = 1;
    if (v5)
    {
      v7 = v4 & 0xFFFFFFFFFFFFF8;
      if (v4)
      {
        v7 = v4;
      }

      if ((v4 & 0x4000000000000001) == 0)
      {
        v7 = (v4 & 0xFFFFFFFFFFFFF8) + 32;
      }

      v8 = a2;
      if ((a2 & 1) == 0)
      {
        v8 = a2 & 0xFFFFFFFFFFFFF8;
      }

      if ((a2 & 0x4000000000000001) == 0)
      {
        v8 = (a2 & 0xFFFFFFFFFFFFF8) + 32;
      }

      if (v7 != v8)
      {
        if (v5 < 0)
        {
          BUG();
        }

        if ((v4 & 0xC000000000000003) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)(0);
        }

        else
        {
          v9 = *(v4 + 32);
        }

        v10 = v9;
        v27 = a2 & 0xFFFFFFFFFFFFF8;
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (a2 & 0xC000000000000003) == 0, a2);
        v28 = a2;
        if ((a2 & 0xC000000000000003) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)(0);
        }

        else
        {
          v11 = *(a2 + 32);
        }

        v12 = v11;
        v2 = 0;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
        v13 = static NSObject.== infix(_:_:)(v10, v12);

        v14 = v29;
        if (v13)
        {
          LOBYTE(v2) = 1;
          if (v29 != 1)
          {
            v15 = 5;
            do
            {
              v16 = v15 - 4;
              if (v15 - 4 >= v14)
              {
                BUG();
              }

              v17 = v16 + 1;
              if (__OFADD__(1, v16))
              {
                BUG();
              }

              if ((a1 & 0xC000000000000003) != 0)
              {
                v18 = specialized _ArrayBuffer._getElementSlowPath(_:)(v15 - 4);
              }

              else
              {
                v18 = *(a1 + 8 * v15);
              }

              v19 = v18;
              if ((v28 & 0xC000000000000003) != 0)
              {
                v20 = specialized _ArrayBuffer._getElementSlowPath(_:)(v15 - 4);
              }

              else
              {
                if (v16 >= *(v27 + 16))
                {
                  BUG();
                }

                v20 = *(v28 + 8 * v15);
              }

              v21 = v20;
              v22 = v19;
              v23 = static NSObject.== infix(_:_:)(v19, v20);

              v2 = v23;
              if ((v23 & 1) == 0)
              {
                break;
              }

              ++v15;
              v14 = v29;
            }

            while (v17 != v29);
          }
        }
      }
    }
  }

  else
  {
    return 0;
  }

  return v2;
}

id MLDataValue.MultiArrayType.dataValue.getter()
{
  v2 = *v1;
  *v0 = *v1;
  *(v0 + 8) = 0;
  *(v0 + 16) = 5;
  return v2;
}

CreateML::MLDataValue::MultiArrayType __swiftcall MLDataValue.MultiArrayType.init(shape:)(Swift::OpaquePointer shape)
{
  v3 = v1;
  v10 = *(shape._rawValue + 2);
  if (v10)
  {
    v9 = v1;
    specialized ContiguousArray.reserveCapacity(_:)(v10);
    v4 = 0;
    do
    {
      v5 = *(shape._rawValue + v4++ + 4);
      v6 = objc_allocWithZone(NSNumber);
      [v6 initWithInteger:v5];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v6);
      v7 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v7);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v7);
      specialized ContiguousArray._endMutation()(v7);
    }

    while (v10 != v4);
    shape._rawValue;
    v3 = v9;
  }

  else
  {
    shape._rawValue;
  }

  objc_allocWithZone(MLMultiArray);
  result._contents.super.isa = @nonobjc MLMultiArray.init(shape:dataType:)(_swiftEmptyArrayStorage, 65600);
  v3->_contents.super.isa = result._contents.super.isa;
  return result;
}

uint64_t incrementIndex #1 (shape:index:) in MLDataValue.MultiArrayType.init(_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if ((*a2 & 0x4000000000000001) != 0)
  {
    v22 = v2 & 0xFFFFFFFFFFFFF8;
    if (v2)
    {
      v22 = *a2;
    }

    v3 = _CocoaArrayWrapper.endIndex.getter(v22);
  }

  else
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFF8));
  }

  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    BUG();
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    LODWORD(v15) = 0;
  }

  else
  {
    v24 = *(a1 + 16);
    v23 = v5;
    do
    {
      if ((v2 & 0xC000000000000003) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)(v5);
      }

      else
      {
        if (v5 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFF8)))
        {
          BUG();
        }

        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = [v6 integerValue];

      v4 = __OFADD__(1, v8);
      v9 = v8 + 1;
      if (v4)
      {
        BUG();
      }

      v10 = objc_allocWithZone(NSNumber);
      v11 = [v10 initWithInteger:v9];
      if ((swift_isUniquelyReferenced_nonNull_bridgeObject(v2) & ((v2 & 0x4000000000000001) == 0)) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      }

      v12 = v2 & 0xFFFFFFFFFFFFF8;
      if (v5 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFF8)))
      {
        BUG();
      }

      v13 = *(&stru_20.cmd + 8 * v5 + (v2 & 0xFFFFFFFFFFFFF8));
      *(&stru_20.cmd + 8 * v5 + (v2 & 0xFFFFFFFFFFFFF8)) = v11;

      if ((v2 & 0xC000000000000003) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)(v5);
      }

      else
      {
        if (v5 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFF8)))
        {
          BUG();
        }

        v14 = *(v2 + 8 * v5 + 32);
      }

      v15 = v14;
      v16 = [v14 integerValue];

      if (v23 >= v24)
      {
        BUG();
      }

      LOBYTE(v15) = v16 < *(a1 + 8 * v5 + 32);
      if (v16 < *(a1 + 8 * v5 + 32))
      {
        break;
      }

      v17 = objc_allocWithZone(NSNumber);
      v18 = [v17 initWithInteger:0];
      if ((swift_isUniquelyReferenced_nonNull_bridgeObject(v2) & ((v2 & 0x4000000000000001) == 0)) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
        v12 = v2 & 0xFFFFFFFFFFFFF8;
      }

      if (v5 >= *(v12 + 16))
      {
        BUG();
      }

      v19 = *(v12 + 8 * v5 + 32);
      *(v12 + 8 * v5 + 32) = v18;
    }

    while (v5-- != 0);
    *a2 = v2;
  }

  return v15;
}

void MLDataValue.MultiArrayType.subscript.getter(uint64_t a1)
{
  v2 = [*v1 objectAtIndexedSubscript:a1];
  v3 = v2;
  [v3 doubleValue];
}

{
  v2 = *v1;
  v13 = *(a1 + 16);
  if (v13)
  {
    v12 = *v1;
    specialized ContiguousArray.reserveCapacity(_:)(v13);
    v4 = 0;
    do
    {
      v5 = *(a1 + 8 * v4++ + 32);
      v6 = objc_allocWithZone(NSNumber);
      [v6 initWithInteger:v5];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v6);
      v7 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v7);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v7);
      specialized ContiguousArray._endMutation()(v7);
    }

    while (v13 != v4);
    LOBYTE(v8) = _swiftEmptyArrayStorage;
    v2 = v12;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v8;
  v10 = [v2 objectForKeyedSubscript:isa];
  v11 = v10;

  [v11 doubleValue];
}

uint64_t static MLDataValue.MultiArrayType.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr);
  return static NSObject.== infix(_:_:)(v2, v3);
}

uint64_t MLDataValue.MultiArrayType.description.getter(SEL *a1)
{
  v2 = [*v1 *a1];
  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(v3);

  return v4;
}

void MLDataValue.MultiArrayType.init(from:)(uint64_t a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 16);
  if (v5 != 5)
  {
    outlined consume of MLDataValue(v4, *(a1 + 8), v5);
    v4 = 0;
  }

  *v3 = v4;
}

CreateML::MLDataValue::MultiArrayType __swiftcall MLDataValue.MultiArrayType.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>);
  v3 = swift_allocObject(v2, 40, 7);
  v3[2].super.super.isa = (&dword_0 + 1);
  v3[3].super.super.isa = (&dword_0 + 3);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v3[4].super.super.isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  objc_allocWithZone(MLMultiArray);
  v4 = @nonobjc MLMultiArray.init(shape:dataType:)(v3, &loc_10020);
  if (!v4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002ELL, ("CreateML/MultiArrayType.swift" + 0x8000000000000000), "CreateML/MultiArrayType.swift", 29, 2, 108, 0);
    BUG();
  }

  MLDataValue.MultiArrayType.init(_:)(v4);
  result._contents.super.isa = v6;
  *v1 = v6;
  return result;
}

void *MLDataValue.MultiArrayType.init(from:)(uint64_t a1)
{
  v2 = v1;
  v3 = swift_allocObject(&unk_3926C8, 24, 7);
  v4 = specialized handling<A, B>(_:_:)(*(a1 + 16));
  v25 = v2;
  if (!v4)
  {
    BUG();
  }

  v5 = type metadata accessor for CMLMultiArray();
  v6 = swift_allocObject(v5, 24, 7);
  *(v6 + 16) = v4;
  v26 = v3;
  *(v3 + 16) = v6;

  v7 = CMLMultiArray.data()();
  v8 = CMLMultiArray.dimensions()();
  if (v9)
  {
    swift_unexpectedError(v9, "CreateML/MultiArrayType.swift", 29, 1, 122);
    BUG();
  }

  v11 = v8;
  v12 = CMLMultiArray.shape()();
  v13 = CMLMultiArray.strides()();
  if (v11 < 0)
  {
    BUG();
  }

  v27 = v7;
  if (v11)
  {
    v28 = v13;
    specialized ContiguousArray.reserveCapacity(_:)(v11);
    v14 = 0;
    v29 = v11;
    do
    {
      v15 = v12;
      v16 = *(v12 + 8 * v14++);
      v17 = objc_allocWithZone(NSNumber);
      [v17 initWithUnsignedLongLong:v16];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v17);
      v18 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v18);
      v12 = v15;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v18);
      specialized ContiguousArray._endMutation()(v18);
    }

    while (v29 != v14);
    v30 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)(v29);
    v19 = 0;
    do
    {
      v20 = *(v28 + 8 * v19++);
      v21 = objc_allocWithZone(NSNumber);
      [v21 initWithLongLong:v20];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v21);
      v22 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v22);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v22);
      specialized ContiguousArray._endMutation()(v22);
    }

    while (v29 != v19);
  }

  objc_allocWithZone(MLMultiArray);

  v23 = @nonobjc MLMultiArray.init(dataPointer:shape:dataType:strides:deallocator:)(v27, _swiftEmptyArrayStorage, 65600, _swiftEmptyArrayStorage, partial apply for closure #3 in MLDataValue.MultiArrayType.init(from:), v26, v10);
  MLDataValue.MultiArrayType.init(_:)(v23);

  result = v30;
  *v25 = v30;
  return result;
}

uint64_t closure #3 in MLDataValue.MultiArrayType.init(from:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess(a2 + 16, v3, 1, 0);
  *(a2 + 16) = 0;
}

uint64_t MLDataValue.MultiArrayType.featureValue.getter()
{
  v1 = *v0;
  v34 = [v1 dataPointer];
  v2 = [v1 shape];
  v3 = v2;
  v4 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v3, v4);

  v6 = specialized Array._getCount()(v5);
  if (v6)
  {
    v7 = v6;
    v40 = _swiftEmptyArrayStorage;
    v8 = 0;
    if (v6 > 0)
    {
      v8 = v6;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    if (v7 < 0)
    {
      BUG();
    }

    v35 = v4;
    v38 = v1;
    v9 = v40;
    v10 = 0;
    v36 = v5;
    v37 = v7;
    do
    {
      v11 = v9;
      if ((v5 & 0xC000000000000003) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)(v10);
      }

      else
      {
        v12 = *(v5 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = [v12 unsignedLongLongValue];

      v9 = v11;
      v40 = v11;
      v15 = v11[2];
      if (v9[3] >> 1 <= v15)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v9[3] >= 2uLL, v15 + 1, 1);
        v9 = v40;
      }

      ++v10;
      v9[2] = v15 + 1;
      v9[v15 + 4] = v14;
      v5 = v36;
    }

    while (v37 != v10);
    v39 = v9;
    v36;
    v4 = v35;
    v16 = [v38 strides];
  }

  else
  {
    v5;
    v39 = _swiftEmptyArrayStorage;
    v16 = [v1 strides];
  }

  v17 = v16;
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v17, v4);

  v19 = specialized Array._getCount()(v18);
  if (v19)
  {
    v20 = v19;
    v40 = _swiftEmptyArrayStorage;
    v21 = 0;
    if (v19 > 0)
    {
      v21 = v19;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
    if (v20 < 0)
    {
      BUG();
    }

    v22 = v40;
    v23 = 0;
    v37 = v18;
    v38 = v20;
    do
    {
      if ((v18 & 0xC000000000000003) != 0)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)(v23);
      }

      else
      {
        v24 = *(v18 + 8 * v23 + 32);
      }

      v25 = v24;
      v36 = [v24 longLongValue];

      v40 = v22;
      v26 = v22[2];
      if (v22[3] >> 1 <= v26)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22[3] >= 2uLL, v26 + 1, 1);
        v22 = v40;
      }

      ++v23;
      v22[2] = v26 + 1;
      v22[v26 + 4] = v36;
      v18 = v37;
    }

    while (v38 != v23);
    v37;
  }

  else
  {
    v18;
    v22 = _swiftEmptyArrayStorage;
  }

  v27 = v39[2];
  swift_bridgeObjectRetain_n(v39, 2);

  v28 = specialized handling<A, B, C, D, E>(_:_:_:_:_:)(v27, (v39 + 4), (v22 + 4), v34);
  if (!v28)
  {
    BUG();
  }

  v29 = type metadata accessor for CMLMultiArray();
  inited = swift_initStackObject(v29, v33);
  *(inited + 16) = v28;
  swift_bridgeObjectRelease_n(v22, 2);
  swift_bridgeObjectRelease_n(v39, 3);
  type metadata accessor for CMLFeatureValue();

  v31 = CMLFeatureValue.__allocating_init(_:)(inited);

  return v31;
}

id @nonobjc MLMultiArray.init(shape:dataType:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  a1;
  v8 = 0;
  v4 = [v2 initWithShape:isa dataType:a2 error:&v8];

  v5 = v8;
  if (v4)
  {
    v8;
  }

  else
  {
    v6 = v8;
    _convertNSErrorToError(_:)(v5);

    swift_willThrow();
  }

  return v4;
}

void *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *__src, uint64_t a2, char *a3)
{
  result = (16 * a2);
  if (&__src[16 * a2] <= a3 || a3 != __src)
  {
    return memmove(a3, __src, result);
  }

  return result;
}

{
  result = (a2 << 6);
  if (&__src[64 * a2] <= a3 || a3 != __src)
  {
    return memmove(a3, __src, result);
  }

  return result;
}

{
  result = (32 * a2);
  if (&__src[32 * a2] <= a3 || a3 != __src)
  {
    return memmove(a3, __src, result);
  }

  return result;
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(__src, a2, a3);
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &demangling cache variable for type metadata for Column<[Float]>);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &demangling cache variable for type metadata for Column<[Double]>);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for URL);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for WeightedDataSample);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for Tensor);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for MLProgram.Operation);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for FeatureDescription);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for NeuralNetwork.Layer);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for MLCheckpoint);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &demangling cache variable for type metadata for ClassificationDistribution<String>);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &demangling cache variable for type metadata for ClassificationDistribution<Int>);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &demangling cache variable for type metadata for MLShapedArray<Double>);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for Model);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for FeatureVectorizerConfiguration.Input);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &demangling cache variable for type metadata for AnnotatedFeature<String, [MLObjectDetector.NormalizedAnnotation]>);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &demangling cache variable for type metadata for AnnotatedPrediction<ClassificationDistribution<String>, String>);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &demangling cache variable for type metadata for AnnotatedFeature<CIImage, String>);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &demangling cache variable for type metadata for MLShapedArray<Float>);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for Event);
}

size_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *__src, uint64_t a2, char *a3)
{
  result = 24 * a2;
  if (&__src[24 * a2] <= a3 || a3 != __src)
  {
    return memmove(a3, __src, result);
  }

  return result;
}

{
  result = 56 * a2;
  if (&__src[56 * a2] <= a3 || a3 != __src)
  {
    return memmove(a3, __src, result);
  }

  return result;
}

{
  result = 40 * a2;
  if (&__src[40 * a2] <= a3 || a3 != __src)
  {
    return memmove(a3, __src, result);
  }

  return result;
}

{
  result = 48 * a2;
  if (&__src[48 * a2] <= a3 || a3 != __src)
  {
    return memmove(a3, __src, result);
  }

  return result;
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(__src, a2, a3);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(__src, a2, a3);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(__src, a2, a3);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(__src, a2, a3);
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledName(a4), a1 + a2 * *(*(result - 8) + 72) <= a3))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(a4);
    return swift_arrayInitWithTakeFrontToBack(a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {
    return swift_arrayInitWithTakeBackToFront(a3, a1, a2, result);
  }

  return result;
}

void *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *__src, size_t __len, char *__dst)
{
  result = __len;
  if (&__src[__len] <= __dst || __dst != __src)
  {
    return memmove(__dst, __src, __len);
  }

  return result;
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (result = a4(0), a1 + a2 * *(*(result - 8) + 72) <= a3))
  {
    v7 = a4(0);
    return swift_arrayInitWithTakeFrontToBack(a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {
    return swift_arrayInitWithTakeBackToFront(a3, a1, a2, result);
  }

  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<Int64>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<UInt64>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<Double?>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<Int?>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<MLDataValue>, &type metadata for MLDataValue);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<Interaction>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<(Int, Double)>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<MLRecommender.Identifier>, &type metadata for MLRecommender.Identifier);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<[(MLDataValue, MLDataValue)]?>, &demangling cache variable for type metadata for [(MLDataValue, MLDataValue)]?);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<[(key: MLDataValue, value: MLDataValue)]?>, &demangling cache variable for type metadata for [(key: MLDataValue, value: MLDataValue)]?);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<[MLDataValue]?>, &demangling cache variable for type metadata for [MLDataValue]?);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Double)>, &demangling cache variable for type metadata for (String, Double));
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<[Float]>, &demangling cache variable for type metadata for [Float]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<Column<[Float]>>, &demangling cache variable for type metadata for Column<[Float]>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<[Double]>, &demangling cache variable for type metadata for [Double]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<Column<[Double]>>, &demangling cache variable for type metadata for Column<[Double]>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<(MLDataValue, MLDataValue)>, &demangling cache variable for type metadata for (MLDataValue, MLDataValue));
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<URL>, &type metadata accessor for URL);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<(String, CSVType)>, &demangling cache variable for type metadata for (String, CSVType));
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<(String, JSONType)>, &demangling cache variable for type metadata for (String, JSONType));
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<DataFrame.Slice?>, &demangling cache variable for type metadata for DataFrame.Slice?);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<WeightedDataSample>, type metadata accessor for WeightedDataSample);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<Tensor>, &type metadata accessor for Tensor);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<MLProgram.Value>, &type metadata accessor for MLProgram.Value);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>, &type metadata accessor for FeatureDescription);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<NeuralNetwork.Layer>, &type metadata accessor for NeuralNetwork.Layer);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<Numeric>, &demangling cache variable for type metadata for Numeric);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<(label: Int, keypoints: MLMultiArray)>, &demangling cache variable for type metadata for (label: Int, keypoints: MLMultiArray));
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<(label: String, confidence: Double)>, &demangling cache variable for type metadata for (label: String, confidence: Double));
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<[(label: String, confidence: Double)]>, &demangling cache variable for type metadata for [(label: String, confidence: Double)]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<MLLinearRegressor>, type metadata accessor for MLLinearRegressor);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<ClassificationDistribution<String>>, &demangling cache variable for type metadata for ClassificationDistribution<String>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<ClassificationDistribution<Int>>, &demangling cache variable for type metadata for ClassificationDistribution<Int>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<AnnotatedFeature<MLShapedArray<Double>, Int>>, &demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Double>, Int>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<AnnotatedFeature<MLShapedArray<Double>, String>>, &demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Double>, String>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<MLLogisticRegressionClassifier>, type metadata accessor for MLLogisticRegressionClassifier);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<AnyColumn>, &type metadata accessor for AnyColumn);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<Column<[Any?]>>, &demangling cache variable for type metadata for Column<[Any?]>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<Column<String>>, &demangling cache variable for type metadata for Column<String>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<[MLObjectDetector.DecodableAnnotation]?>, &demangling cache variable for type metadata for [MLObjectDetector.DecodableAnnotation]?);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<[MLObjectDetector.ObjectAnnotation]>, &demangling cache variable for type metadata for [MLObjectDetector.ObjectAnnotation]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<[String : Any]>, &demangling cache variable for type metadata for [String : Any]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<[String]>, &demangling cache variable for type metadata for [String]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<(label: Int, embedding: MLMultiArray)>, &demangling cache variable for type metadata for (label: Int, embedding: MLMultiArray));
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<ItemSimilarityRecommenderConfiguration.SimilarItems>, &type metadata accessor for ItemSimilarityRecommenderConfiguration.SimilarItems);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<ItemSimilarityRecommenderConfiguration.ItemScore>, &type metadata accessor for ItemSimilarityRecommenderConfiguration.ItemScore);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<MLIdentifier>, &demangling cache variable for type metadata for MLIdentifier);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<(user: MLRecommender.Identifier, item: MLRecommender.Identifier)>, &demangling cache variable for type metadata for (user: MLRecommender.Identifier, item: MLRecommender.Identifier));
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<(text: String, distance: Double)>, &demangling cache variable for type metadata for (text: String, distance: Double));
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<AnnotatedFeature<MLShapedArray<Float>, String>>, &demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<AnnotatedFeature<URL, String>>, &demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<(predicted: String, label: String)>, &demangling cache variable for type metadata for (predicted: String, label: String));
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<[MLActionClassifier.Prediction]>, &demangling cache variable for type metadata for [MLActionClassifier.Prediction]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<[MLHandActionClassifier.Prediction]>, &demangling cache variable for type metadata for [MLHandActionClassifier.Prediction]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<(text: String, label: String)>, &demangling cache variable for type metadata for (text: String, label: String));
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<[String : Double]>, &demangling cache variable for type metadata for [String : Double]);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Int?>);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<MLRecommender.Identifier>, &type metadata for MLRecommender.Identifier);
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = a2;
  if (a3)
  {
    v8 = *(a4 + 3);
    if ((v8 >> 1) >= a2)
    {
      v6 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v8 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if (v9 > a2)
      {
        v6 = v9;
      }
    }
  }

  v10 = *(a4 + 2);
  if (v6 <= v10)
  {
    v6 = *(a4 + 2);
  }

  if (v6)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v12 = swift_allocObject(v11, 8 * v6 + 32, 7);
    v13 = (_swift_stdlib_malloc_size(v12) - 32);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v13 / 8);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (&v15[8 * v10] <= v14 || v12 != a4)
    {
      memmove(v14, v15, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v10);
  }

  return v12;
}

{
  v6 = a2;
  if (a3)
  {
    v8 = *(a4 + 3);
    if ((v8 >> 1) >= a2)
    {
      v6 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v8 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if (v9 > a2)
      {
        v6 = v9;
      }
    }
  }

  v10 = *(a4 + 2);
  if (v6 <= v10)
  {
    v6 = *(a4 + 2);
  }

  if (v6)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v12 = swift_allocObject(v11, 16 * v6 + 32, 7);
    v13 = (_swift_stdlib_malloc_size(v12) - 32);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v13 / 16);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 16 * v10;
  if (a1)
  {
    if (&v15[v16] <= v14 || v12 != a4)
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v12;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, char a3, void *a4)
{
  v5 = a2;
  if (a3)
  {
    v6 = a4[3];
    if ((v6 >> 1) >= a2)
    {
      v5 = a4[3] >> 1;
    }

    else
    {
      if (((v6 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if (v7 > a2)
      {
        v5 = v7;
      }
    }
  }

  v8 = a4[2];
  if (v5 <= v8)
  {
    v5 = a4[2];
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String?>);
    v10 = swift_allocObject(v9, 16 * v5 + 32, 7);
    v11 = (_swift_stdlib_malloc_size(v10) - 32);
    v10[2] = v8;
    v10[3] = 2 * (v11 / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    v12 = 2 * v8;
    if (&a4[v12 + 4] <= v10 + 4 || v10 != a4)
    {
      memmove(v10 + 4, a4 + 4, v12 * 8);
    }

    a4[2] = 0;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for String?);
    swift_arrayInitWithCopy((v10 + 4), (a4 + 4), v8, v13);
  }

  return v10;
}

{
  v5 = a2;
  if (a3)
  {
    v6 = a4[3];
    if ((v6 >> 1) >= a2)
    {
      v5 = a4[3] >> 1;
    }

    else
    {
      if (((v6 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if (v7 > a2)
      {
        v5 = v7;
      }
    }
  }

  v8 = a4[2];
  if (v5 <= v8)
  {
    v5 = a4[2];
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<RecommendationMetrics<MLRecommender.Identifier>>);
    v10 = swift_allocObject(v9, 56 * v5 + 32, 7);
    v11 = (_swift_stdlib_malloc_size(v10) - 32);
    v10[2] = v8;
    v10[3] = 2 * (v11 / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    if (&a4[7 * v8 + 4] <= v10 + 4 || v10 != a4)
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for RecommendationMetrics<MLRecommender.Identifier>);
    swift_arrayInitWithCopy((v10 + 4), (a4 + 4), v8, v12);
  }

  return v10;
}

{
  v5 = a2;
  if (a3)
  {
    v6 = a4[3];
    if ((v6 >> 1) >= a2)
    {
      v5 = a4[3] >> 1;
    }

    else
    {
      if (((v6 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if (v7 > a2)
      {
        v5 = v7;
      }
    }
  }

  v8 = a4[2];
  if (v5 <= v8)
  {
    v5 = a4[2];
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(MLDataValue, Int)>);
    v10 = swift_allocObject(v9, 32 * v5 + 32, 7);
    v11 = (_swift_stdlib_malloc_size(v10) - 32);
    v10[2] = v8;
    v10[3] = 2 * (v11 / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    v12 = 4 * v8;
    if (&a4[v12 + 4] <= v10 + 4 || v10 != a4)
    {
      memmove(v10 + 4, a4 + 4, v12 * 8);
    }

    a4[2] = 0;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLDataValue, Int));
    swift_arrayInitWithCopy((v10 + 4), (a4 + 4), v8, v13);
  }

  return v10;
}

{
  v5 = a2;
  if (a3)
  {
    v6 = a4[3];
    if ((v6 >> 1) >= a2)
    {
      v5 = a4[3] >> 1;
    }

    else
    {
      if (((v6 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if (v7 > a2)
      {
        v5 = v7;
      }
    }
  }

  v8 = a4[2];
  if (v5 <= v8)
  {
    v5 = a4[2];
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(tokens: [String], labels: [String])>);
    v10 = swift_allocObject(v9, 16 * v5 + 32, 7);
    v11 = (_swift_stdlib_malloc_size(v10) - 32);
    v10[2] = v8;
    v10[3] = 2 * (v11 / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    v12 = 2 * v8;
    if (&a4[v12 + 4] <= v10 + 4 || v10 != a4)
    {
      memmove(v10 + 4, a4 + 4, v12 * 8);
    }

    a4[2] = 0;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (tokens: [String], labels: [String]));
    swift_arrayInitWithCopy((v10 + 4), (a4 + 4), v8, v13);
  }

  return v10;
}

{
  v5 = a2;
  if (a3)
  {
    v6 = a4[3];
    if ((v6 >> 1) >= a2)
    {
      v5 = a4[3] >> 1;
    }

    else
    {
      if (((v6 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if (v7 > a2)
      {
        v5 = v7;
      }
    }
  }

  v8 = a4[2];
  if (v5 <= v8)
  {
    v5 = a4[2];
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<NLLanguage>);
    v10 = swift_allocObject(v9, 8 * v5 + 32, 7);
    v11 = (_swift_stdlib_malloc_size(v10) - 32);
    v10[2] = v8;
    v10[3] = 2 * (v11 / 8);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    if (&a4[v8 + 4] <= v10 + 4 || v10 != a4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    v12 = type metadata accessor for NLLanguage(0);
    swift_arrayInitWithCopy((v10 + 4), (a4 + 4), v8, v12);
  }

  return v10;
}

{
  v5 = a2;
  if (a3)
  {
    v6 = a4[3];
    if ((v6 >> 1) >= a2)
    {
      v5 = a4[3] >> 1;
    }

    else
    {
      if (((v6 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if (v7 > a2)
      {
        v5 = v7;
      }
    }
  }

  v8 = a4[2];
  if (v5 <= v8)
  {
    v5 = a4[2];
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Recommendation<MLRecommender.Identifier, MLRecommender.Identifier>>);
    v10 = swift_allocObject(v9, (v5 << 6) | 0x20, 7);
    v11 = (_swift_stdlib_malloc_size(v10) - 32);
    v10[2] = v8;
    v10[3] = 2 * (v11 / 64);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    v12 = v8 << 6;
    if ((a4 + v12 + 32) <= v10 + 4 || v10 != a4)
    {
      memmove(v10 + 4, a4 + 4, v12);
    }

    a4[2] = 0;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Recommendation<MLRecommender.Identifier, MLRecommender.Identifier>);
    swift_arrayInitWithCopy((v10 + 4), (a4 + 4), v8, v13);
  }

  return v10;
}

{
  v5 = a2;
  if (a3)
  {
    v6 = a4[3];
    if ((v6 >> 1) >= a2)
    {
      v5 = a4[3] >> 1;
    }

    else
    {
      if (((v6 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if (v7 > a2)
      {
        v5 = v7;
      }
    }
  }

  v8 = a4[2];
  if (v5 <= v8)
  {
    v5 = a4[2];
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(item: MLRecommender.Identifier, score: Double)>);
    v10 = swift_allocObject(v9, 32 * v5 + 32, 7);
    v11 = (_swift_stdlib_malloc_size(v10) - 32);
    v10[2] = v8;
    v10[3] = 2 * (v11 / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    v12 = 4 * v8;
    if (&a4[v12 + 4] <= v10 + 4 || v10 != a4)
    {
      memmove(v10 + 4, a4 + 4, v12 * 8);
    }

    a4[2] = 0;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (item: MLRecommender.Identifier, score: Double));
    swift_arrayInitWithCopy((v10 + 4), (a4 + 4), v8, v13);
  }

  return v10;
}

{
  v5 = a2;
  if (a3)
  {
    v6 = a4[3];
    if ((v6 >> 1) >= a2)
    {
      v5 = a4[3] >> 1;
    }

    else
    {
      if (((v6 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if (v7 > a2)
      {
        v5 = v7;
      }
    }
  }

  v8 = a4[2];
  if (v5 <= v8)
  {
    v5 = a4[2];
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any?>);
    v10 = swift_allocObject(v9, 32 * v5 + 32, 7);
    v11 = (_swift_stdlib_malloc_size(v10) - 32);
    v10[2] = v8;
    v10[3] = 2 * (v11 / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    v12 = 4 * v8;
    if (&a4[v12 + 4] <= v10 + 4 || v10 != a4)
    {
      memmove(v10 + 4, a4 + 4, v12 * 8);
    }

    a4[2] = 0;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
    swift_arrayInitWithCopy((v10 + 4), (a4 + 4), v8, v13);
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = a2;
  v9 = a1;
  if (a3)
  {
    v10 = *(a4 + 24);
    if ((v10 >> 1) >= a2)
    {
      v8 = *(a4 + 24) >> 1;
    }

    else
    {
      if (((v10 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (v11 > a2)
      {
        v8 = v11;
      }
    }
  }

  v12 = *(a4 + 16);
  if (v8 <= v12)
  {
    v8 = *(a4 + 16);
  }

  if (v8)
  {
    v26 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v27 = a6;
    v13 = *(__swift_instantiateConcreteTypeFromMangledName(a6) - 8);
    v14 = *(v13 + 72);
    v15 = *(v13 + 80);
    v16 = (v15 + 32) & ~v15;
    v17 = swift_allocObject(v26, v16 + v14 * v8, v15 | 7);
    v18 = _swift_stdlib_malloc_size(v17);
    if (!v14)
    {
      BUG();
    }

    v19 = v18 - v16;
    if (__OFSUB__(-v19, 1) && v14 == -1)
    {
      BUG();
    }

    v17[2] = v12;
    v17[3] = 2 * (v19 / v14);
    a6 = v27;
    v9 = a1;
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledName(a6);
  v21 = *(*(v20 - 8) + 80);
  v22 = (v21 + 32) & ~v21;
  v23 = v17 + v22;
  v24 = a4 + v22;
  if (v9)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v24, v12, v23, a6);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy(v23, v24, v12, v20);
  }

  return v17;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v6 = a6;
  v7 = a4;
  v8 = a2;
  v9 = a1;
  if (a3)
  {
    v10 = *(a4 + 24);
    a4 = v10 >> 1;
    if ((v10 >> 1) >= a2)
    {
      v8 = *(v7 + 24) >> 1;
    }

    else
    {
      a3 = 0x4000000000000000;
      a4 += 0x4000000000000000;
      if (a4 < 0)
      {
        BUG();
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (v11 > a2)
      {
        v8 = v11;
      }
    }
  }

  v12 = *(v7 + 16);
  if (v8 <= v12)
  {
    v8 = *(v7 + 16);
  }

  if (v8)
  {
    v28 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v29 = v6;
    v13 = *(v6(0) - 8);
    v14 = *(v13 + 72);
    v15 = *(v13 + 80);
    v16 = (v15 + 32) & ~v15;
    v17 = v16 + v14 * v8;
    v18 = swift_allocObject(v28, v17, v15 | 7);
    v19 = _swift_stdlib_malloc_size(v18);
    if (!v14)
    {
      BUG();
    }

    v20 = v19 - v16;
    if (__OFSUB__(-v20, 1) && v14 == -1)
    {
      BUG();
    }

    v21 = v20 % v14;
    v18[2] = v12;
    v18[3] = 2 * (v20 / v14);
    v6 = v29;
    v9 = a1;
    v22 = (v29)(0, v17, v21, -v20);
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
    v22 = (a6)(0, a2, a3, a4);
  }

  v23 = *(*(v22 - 8) + 80);
  v24 = (v23 + 32) & ~v23;
  v25 = v18 + v24;
  v26 = v7 + v24;
  if (v9)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v26, v12, v25, v6);
    *(v7 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy(v25, v26, v12, v22);
  }

  return v18;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = a2;
  if (a3)
  {
    v8 = a4[3];
    if ((v8 >> 1) >= a2)
    {
      v7 = a4[3] >> 1;
    }

    else
    {
      if (((v8 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if (v9 > a2)
      {
        v7 = v9;
      }
    }
  }

  v10 = a4[2];
  if (v7 <= v10)
  {
    v7 = a4[2];
  }

  if (v7)
  {
    v11 = a6;
    v12 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v13 = swift_allocObject(v12, 8 * v7 + 32, 7);
    v14 = _swift_stdlib_malloc_size(v13);
    a6 = v11;
    v13[2] = v10;
    v13[3] = 2 * ((v14 - 32) / 8);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    if (&a4[v10 + 4] <= v13 + 4 || v13 != a4)
    {
      memmove(v13 + 4, a4 + 4, 8 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledName(a6);
    swift_arrayInitWithCopy((v13 + 4), (a4 + 4), v10, v15);
  }

  return v13;
}

{
  v7 = a2;
  if (a3)
  {
    v8 = a4[3];
    if ((v8 >> 1) >= a2)
    {
      v7 = a4[3] >> 1;
    }

    else
    {
      if (((v8 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if (v9 > a2)
      {
        v7 = v9;
      }
    }
  }

  v10 = a4[2];
  if (v7 <= v10)
  {
    v7 = a4[2];
  }

  if (v7)
  {
    v11 = a6;
    v12 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v13 = swift_allocObject(v12, 16 * v7 + 32, 7);
    v14 = _swift_stdlib_malloc_size(v13);
    a6 = v11;
    v13[2] = v10;
    v13[3] = 2 * ((v14 - 32) / 16);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    v15 = 2 * v10;
    if (&a4[v15 + 4] <= v13 + 4 || v13 != a4)
    {
      memmove(v13 + 4, a4 + 4, v15 * 8);
    }

    a4[2] = 0;
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledName(a6);
    swift_arrayInitWithCopy((v13 + 4), (a4 + 4), v10, v16);
  }

  return v13;
}

{
  v7 = a2;
  if (a3)
  {
    v8 = a4[3];
    if ((v8 >> 1) >= a2)
    {
      v7 = a4[3] >> 1;
    }

    else
    {
      if (((v8 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if (v9 > a2)
      {
        v7 = v9;
      }
    }
  }

  v10 = a4[2];
  if (v7 <= v10)
  {
    v7 = a4[2];
  }

  if (v7)
  {
    v11 = a6;
    v12 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v13 = swift_allocObject(v12, 40 * v7 + 32, 7);
    v14 = _swift_stdlib_malloc_size(v13);
    a6 = v11;
    v13[2] = v10;
    v13[3] = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    if (&a4[5 * v10 + 4] <= v13 + 4 || v13 != a4)
    {
      memmove(v13 + 4, a4 + 4, 40 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledName(a6);
    swift_arrayInitWithCopy((v13 + 4), (a4 + 4), v10, v15);
  }

  return v13;
}

{
  v7 = a2;
  if (a3)
  {
    v8 = a4[3];
    if ((v8 >> 1) >= a2)
    {
      v7 = a4[3] >> 1;
    }

    else
    {
      if (((v8 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if (v9 > a2)
      {
        v7 = v9;
      }
    }
  }

  v10 = a4[2];
  if (v7 <= v10)
  {
    v7 = a4[2];
  }

  if (v7)
  {
    v11 = a6;
    v12 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v13 = swift_allocObject(v12, 48 * v7 + 32, 7);
    v14 = _swift_stdlib_malloc_size(v13);
    a6 = v11;
    v13[2] = v10;
    v13[3] = 2 * ((v14 - 32) / 48);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    if (&a4[6 * v10 + 4] <= v13 + 4 || v13 != a4)
    {
      memmove(v13 + 4, a4 + 4, 48 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledName(a6);
    swift_arrayInitWithCopy((v13 + 4), (a4 + 4), v10, v15);
  }

  return v13;
}

{
  v7 = a2;
  if (a3)
  {
    v8 = a4[3];
    if ((v8 >> 1) >= a2)
    {
      v7 = a4[3] >> 1;
    }

    else
    {
      if (((v8 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if (v9 > a2)
      {
        v7 = v9;
      }
    }
  }

  v10 = a4[2];
  if (v7 <= v10)
  {
    v7 = a4[2];
  }

  if (v7)
  {
    v11 = a6;
    v12 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v13 = swift_allocObject(v12, 24 * v7 + 32, 7);
    v14 = _swift_stdlib_malloc_size(v13);
    a6 = v11;
    v13[2] = v10;
    v13[3] = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    if (&a4[3 * v10 + 4] <= v13 + 4 || v13 != a4)
    {
      memmove(v13 + 4, a4 + 4, 24 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledName(a6);
    swift_arrayInitWithCopy((v13 + 4), (a4 + 4), v10, v15);
  }

  return v13;
}

{
  v7 = a2;
  if (a3)
  {
    v8 = a4[3];
    if ((v8 >> 1) >= a2)
    {
      v7 = a4[3] >> 1;
    }

    else
    {
      if (((v8 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if (v9 > a2)
      {
        v7 = v9;
      }
    }
  }

  v10 = a4[2];
  if (v7 <= v10)
  {
    v7 = a4[2];
  }

  if (v7)
  {
    v11 = a6;
    v12 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v13 = swift_allocObject(v12, 32 * v7 + 32, 7);
    v14 = _swift_stdlib_malloc_size(v13);
    a6 = v11;
    v13[2] = v10;
    v13[3] = 2 * ((v14 - 32) / 32);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    v15 = 4 * v10;
    if (&a4[v15 + 4] <= v13 + 4 || v13 != a4)
    {
      memmove(v13 + 4, a4 + 4, v15 * 8);
    }

    a4[2] = 0;
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledName(a6);
    swift_arrayInitWithCopy((v13 + 4), (a4 + 4), v10, v16);
  }

  return v13;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t a6)
{
  v8 = a2;
  if (a3)
  {
    v10 = *(a4 + 3);
    if ((v10 >> 1) >= a2)
    {
      v8 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v10 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (v11 > a2)
      {
        v8 = v11;
      }
    }
  }

  v12 = *(a4 + 2);
  if (v8 <= v12)
  {
    v8 = *(a4 + 2);
  }

  if (v8)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v14 = swift_allocObject(v13, 24 * v8 + 32, 7);
    v15 = (_swift_stdlib_malloc_size(v14) - 32);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v15 / 24);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (a1)
  {
    if (&v17[24 * v12] <= v16 || v14 != a4)
    {
      memmove(v16, v17, 24 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy(v16, v17, v12, a6);
  }

  return v14;
}

uint64_t lazy protocol witness table accessor for type AnnotatedFeature<URL, String> and conformance <> AnnotatedFeature<A, B>()
{
  result = lazy protocol witness table cache variable for type AnnotatedFeature<URL, String> and conformance <> AnnotatedFeature<A, B>;
  if (!lazy protocol witness table cache variable for type AnnotatedFeature<URL, String> and conformance <> AnnotatedFeature<A, B>)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
    lazy protocol witness table accessor for type URL and conformance URL();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> AnnotatedFeature<A, B>, v1);
    lazy protocol witness table cache variable for type AnnotatedFeature<URL, String> and conformance <> AnnotatedFeature<A, B> = result;
  }

  return result;
}

void *ActionClassifierTrainingSessionDelegate.init(sessionParameters:)(uint64_t a1)
{
  v40 = v1;
  v3 = a1;
  v2[2] = 0xD000000000000017;
  v2[3] = "training_accuracy" + 0x8000000000000000;
  v4 = v2 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingParameters;
  v5 = type metadata accessor for MLActionClassifier.PersistentParameters(0);
  v31 = v4;
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTable;
  *(v2 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTable) = 0;
  v32 = v6;
  *(v2 + v6 + 8) = -1;
  *(v2 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
  *(v2 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceValidationRowCount) = 0;
  v33 = v2 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures;
  static MLActionClassifier.buildFeatureTable(features:labels:sessionIds:videoFiles:)(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  v34 = v2 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures;
  static MLActionClassifier.buildFeatureTable(features:labels:sessionIds:videoFiles:)(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v8 = empty;
  v9 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_args;
  v10 = type metadata accessor for CMLParameters();
  v11 = swift_allocObject(v10, 24, 7);
  *(v11 + 16) = v8;
  v35 = v9;
  *(v2 + v9) = v11;
  v36 = v2 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sessionParameters;
  outlined init with copy of MLTrainingSessionParameters(a1, v2 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  v12 = v2[2];
  v13 = v2[3];
  if ((v13 & 0x1000000000000000) != 0 || !(v13 & 0x2000000000000000 | v12 & 0x1000000000000000))
  {
    v27 = v2[3];

    _StringGuts._slowWithCString<A>(_:)(closure #1 in CMLModel.init(name:), 0, v12, v27, &type metadata for OpaquePointer);
    if (v40)
    {
      v27;
      goto LABEL_12;
    }

    v40 = 0;
    v27;
    v23 = v30;
    goto LABEL_16;
  }

  v38 = a1;
  v39 = v29;
  v14 = alloca(32);
  v15 = alloca(32);
  v31 = 0;
  v30 = closure #1 in CMLModel.init(name:);
  if ((v13 & 0x2000000000000000) != 0)
  {
    v29[0] = v12;
    v29[1] = v13 & 0xFFFFFFFFFFFFFFLL;

    v20 = v40;
    v21 = specialized handling<A, B>(_:_:)(v29);
    if (v20)
    {
      v13;
      goto LABEL_11;
    }

    v23 = v21;
    v3 = v38;
    if (!v21)
    {
      BUG();
    }

    v40 = 0;
    v13;
LABEL_16:
    v24 = type metadata accessor for CMLModel();
    v25 = swift_allocObject(v24, 24, 7);
    *(v25 + 16) = v23;
    outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLTrainingSessionParameters);
    *(v2 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_model) = v25;
    return v2;
  }

  if ((v12 & 0x1000000000000000) != 0)
  {
    v16 = (v13 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v17 = v12 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v16 = _StringObject.sharedUTF8.getter(v12, v13);
    v17 = v28;
  }

  v37 = v13;

  v18 = v40;
  v19 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v16, v17, closure #1 in _StringGuts.withCString<A>(_:)specialized partial apply);
  if (!v18)
  {
    v23 = v19;
    v40 = 0;
    v37;
    v3 = v38;
    goto LABEL_16;
  }

  v37;
LABEL_11:
  v3 = v38;
LABEL_12:
  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLTrainingSessionParameters);
  v2[3];
  outlined destroy of MLActivityClassifier.ModelParameters(v36, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v31, &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
  outlined consume of MLDataTable?(*(v2 + v32), *(v2 + v32 + 8));
  outlined consume of Result<_DataTable, Error>(*v33, *(v33 + 2));
  outlined consume of Result<_DataTable, Error>(*v34, *(v34 + 2));

  v22 = type metadata accessor for ActionClassifierTrainingSessionDelegate(0);
  swift_deallocPartialClassInstance(v2, v22, *(*v2 + 48), *(*v2 + 52));
  return v2;
}

void *ActionClassifierTrainingSessionDelegate.init(trainingData:modelParameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v154 = v3;
  v149 = a3;
  v148 = a2;
  v152 = a1;
  v132 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  v5 = *(*(v132 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v131 = v121;
  v137 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v136 = *(v137 - 8);
  v8 = *(v136 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v139 = v121;
  v128 = type metadata accessor for AnyColumn(0);
  v127 = *(v128 - 8);
  v11 = *(v127 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v135 = v121;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v129 = v121;
  v145 = type metadata accessor for DataFrame(0);
  v147 = *(v145 - 1);
  v16 = *(v147 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v130 = v121;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v142 = v121;
  v155 = type metadata accessor for MLActionClassifier.DataSource(0);
  v21 = *(*(v155 - 1) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v126 = v121;
  v24 = alloca(v21);
  v25 = alloca(v21);
  v158 = v121;
  v146 = type metadata accessor for MLActionClassifier.ModelParameters(0);
  v26 = *(*(v146 - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v150 = v121;
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?) - 8) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v157 = v121;
  v4[2] = 0xD000000000000017;
  v4[3] = "training_accuracy" + 0x8000000000000000;
  v32 = v4 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingParameters;
  v33 = type metadata accessor for MLActionClassifier.PersistentParameters(0);
  v153 = v32;
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v33);
  v34 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTable;
  *(v4 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTable) = 0;
  v124 = v34;
  *(v4 + v34 + 8) = -1;
  *(v4 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
  *(v4 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceValidationRowCount) = 0;
  v138 = v4 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures;
  static MLActionClassifier.buildFeatureTable(features:labels:sessionIds:videoFiles:)(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  v156 = v4;
  v134 = v4 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures;
  static MLActionClassifier.buildFeatureTable(features:labels:sessionIds:videoFiles:)(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v36 = empty;
  v37 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_args;
  v38 = type metadata accessor for CMLParameters();
  v39 = swift_allocObject(v38, 24, 7);
  *(v39 + 16) = v36;
  v125 = v37;
  *(v156 + v37) = v39;
  v40 = v157;
  outlined init with copy of MLTrainingSessionParameters(v152, v157, type metadata accessor for MLActionClassifier.DataSource);
  v41 = v150;
  outlined init with copy of MLTrainingSessionParameters(v148, v150, type metadata accessor for MLActionClassifier.ModelParameters);
  v42 = v33[6];
  v144 = v33[7];
  v143 = v33[8];
  v151 = v33[9];
  outlined init with copy of MLTrainingSessionParameters(v41, &v40[v33[5]], type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
  v43 = v146;
  *&v40[v42] = *&v41[*(v146 + 20)];
  *&v40[v143] = *&v41[v43[7]];
  *&v40[v144] = *&v41[v43[6]];
  *&v40[v33[10]] = *&v41[v43[8]];
  v146 = *&v41[v43[10]];
  outlined destroy of MLActivityClassifier.ModelParameters(v41, type metadata accessor for MLActionClassifier.ModelParameters);
  v44 = v146;
  *&v40[v151] = v146;
  v146 = v33;
  __swift_storeEnumTagSinglePayload(v40, 0, 1, v33);
  v45 = v153;
  swift_beginAccess(v153, &v140, 33, 0);
  outlined assign with take of MLActionClassifier.PersistentParameters?(v40, v45);
  swift_endAccess(&v140);
  v46 = v152;
  v47 = v158;
  outlined init with copy of MLTrainingSessionParameters(v152, v158, type metadata accessor for MLActionClassifier.DataSource);
  v48 = v155;
  if (swift_getEnumCaseMultiPayload(v47, v155) == 3)
  {
    v49 = *v47;
    v50 = *(v47 + 2);
    v145 = v47[2];
    v157 = v47[3];
    v143 = v47[4];
    v144 = v47[5];
    v150 = v47[6];
    v158 = v47[7];
    v51 = v138;
    swift_beginAccess(v138, v121, 1, 0);
    v52 = *v51;
    *v51 = v49;
    v53 = v50;
    v54 = v50 & 1;
    v55 = *(v51 + 8);
    *(v51 + 8) = v54;
    v151 = v49;
    outlined copy of Result<_DataTable, Error>(v49, v53);
    outlined consume of Result<_DataTable, Error>(v52, v55);
    swift_beginAccess(v51, &v140, 33, 0);
    v56 = v154;
    static MLActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(v51, v150, v158);
    if (v56)
    {
      v57 = 0;
      swift_endAccess(&v140);
      v157;
      v144;
      v158;
      v58 = v151;
LABEL_5:
      outlined consume of Result<_DataTable, Error>(v58, v53);
      outlined destroy of MLActivityClassifier.ModelParameters(v149, type metadata accessor for MLTrainingSessionParameters);
      outlined destroy of MLActivityClassifier.ModelParameters(v148, type metadata accessor for MLActionClassifier.ModelParameters);
      outlined destroy of MLActivityClassifier.ModelParameters(v152, type metadata accessor for MLActionClassifier.DataSource);
LABEL_6:
      v59 = v156;
LABEL_37:
      v77 = v153;
      goto LABEL_38;
    }

    LODWORD(v147) = v53;
    swift_endAccess(&v140);
    swift_beginAccess(v51, &v140, 33, 0);
    v75 = v144;
    static _VideoUtilities.renameFeatureTableColumns(table:sessionIdColumn:featureColumn:labelColumn:)(v51, v145, v157, v150, v158, v143, v144);
    v154 = 0;
    v59 = v156;
    swift_endAccess(&v140);
    v157;
    v75;
    v158;
    outlined consume of Result<_DataTable, Error>(v151, v147);
LABEL_18:
    v86 = v153;
    v87 = v146;
    if (__swift_getEnumTagSinglePayload(v153, 1, v146))
    {
      goto LABEL_27;
    }

    v88 = v86 + *(v87 + 20);
    v89 = v131;
    outlined init with copy of MLTrainingSessionParameters(v88, v131, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
    if (swift_getEnumCaseMultiPayload(v89, v132) == 1)
    {
      if (swift_getEnumCaseMultiPayload(v89, v155) == 3)
      {
        v90 = *v89;
        v91 = *(v89 + 8);
        v143 = *(v89 + 16);
        v157 = *(v89 + 24);
        v144 = *(v89 + 32);
        v158 = *(v89 + 40);
        v150 = *(v89 + 48);
        v155 = *(v89 + 56);
        v92 = v134;
        swift_beginAccess(v134, &v140, 1, 0);
        v151 = *v92;
        *v92 = v90;
        v93 = *(v92 + 8);
        *(v92 + 8) = v91 & 1;
        v146 = v90;
        v94 = v90;
        v95 = v91;
        outlined copy of Result<_DataTable, Error>(v94, v91);
        outlined consume of Result<_DataTable, Error>(v151, v93);
        swift_beginAccess(v92, v133, 33, 0);
        v96 = v150;
        v97 = v154;
        static MLActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(v92, v150, v155);
        if (v97)
        {
          v57 = 0;
          swift_endAccess(v133);
          v157;
          v158;
          v155;
          v53 = v95;
          v58 = v146;
          goto LABEL_5;
        }

        swift_endAccess(v133);
        swift_beginAccess(v92, v133, 33, 0);
        static _VideoUtilities.renameFeatureTableColumns(table:sessionIdColumn:featureColumn:labelColumn:)(v92, v143, v157, v96, v155, v144, v158);
        v154 = 0;
        swift_endAccess(v133);
        v157;
        v158;
        v155;
        outlined consume of Result<_DataTable, Error>(v146, v91);
        v59 = v156;
LABEL_27:
        outlined init with copy of MLTrainingSessionParameters(v149, v59 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
        v99 = v59[2];
        v100 = v59[3];
        if ((v100 & 0x1000000000000000) != 0 || !(v100 & 0x2000000000000000 | v99 & 0x1000000000000000))
        {

          v119 = v154;
          _StringGuts._slowWithCString<A>(_:)(closure #1 in CMLModel.init(name:), 0, v99, v100, &type metadata for OpaquePointer);
          if (v119)
          {
            v100;
            goto LABEL_36;
          }

          v100;
          v111 = v123;
        }

        else
        {
          v101 = alloca(32);
          v102 = alloca(32);
          v123 = 0;
          v122 = closure #1 in CMLModel.init(name:);
          v155 = v121;
          if ((v100 & 0x2000000000000000) != 0)
          {
            v133[0] = v99;
            v133[1] = v100 & 0xFFFFFFFFFFFFFFLL;

            v107 = v154;
            v108 = specialized handling<A, B>(_:_:)(v133);
            if (v107)
            {
LABEL_35:
              v100;
              v59 = v156;
LABEL_36:
              outlined destroy of MLActivityClassifier.ModelParameters(v149, type metadata accessor for MLTrainingSessionParameters);
              outlined destroy of MLActivityClassifier.ModelParameters(v148, type metadata accessor for MLActionClassifier.ModelParameters);
              outlined destroy of MLActivityClassifier.ModelParameters(v152, type metadata accessor for MLActionClassifier.DataSource);
              v57 = 1;
              goto LABEL_37;
            }

            v111 = v108;
            v59 = v156;
            if (!v108)
            {
              BUG();
            }

            v100;
          }

          else
          {
            if ((v99 & 0x1000000000000000) != 0)
            {
              v103 = (v100 & 0xFFFFFFFFFFFFFFFLL) + 32;
              v104 = v99 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v103 = _StringObject.sharedUTF8.getter(v99, v100);
              v104 = v120;
            }

            v105 = v154;
            v106 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v103, v104, closure #1 in _StringGuts.withCString<A>(_:)specialized partial apply);
            if (v105)
            {
              goto LABEL_35;
            }

            v111 = v106;
            v100;
            v59 = v156;
          }
        }

        v112 = type metadata accessor for CMLModel();
        v113 = swift_allocObject(v112, 24, 7);
        *(v113 + 16) = v111;
        outlined destroy of MLActivityClassifier.ModelParameters(v149, type metadata accessor for MLTrainingSessionParameters);
        outlined destroy of MLActivityClassifier.ModelParameters(v148, type metadata accessor for MLActionClassifier.ModelParameters);
        outlined destroy of MLActivityClassifier.ModelParameters(v152, type metadata accessor for MLActionClassifier.DataSource);
        *(v59 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_model) = v113;
        return v59;
      }

      v98 = type metadata accessor for MLActionClassifier.DataSource;
    }

    else
    {
      v98 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData;
    }

    outlined destroy of MLActivityClassifier.ModelParameters(v89, v98);
    goto LABEL_27;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v47, type metadata accessor for MLActionClassifier.DataSource);
  v60 = v46;
  v61 = v126;
  outlined init with copy of MLTrainingSessionParameters(v60, v126, type metadata accessor for MLActionClassifier.DataSource);
  if (swift_getEnumCaseMultiPayload(v61, v48) != 5)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v61, type metadata accessor for MLActionClassifier.DataSource);
    v59 = v156;
    goto LABEL_18;
  }

  v62 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
  v63 = v62[12];
  v143 = *(v61 + v63);
  v157 = *(v61 + v63 + 8);
  v64 = v62[16];
  v144 = *(v61 + v64);
  v150 = *(v61 + v64 + 8);
  v65 = v62[20];
  v66 = *(v61 + v65);
  v67 = *(v61 + v65 + 8);
  v68 = v142;
  (*(v147 + 32))(v142, v61, v145);
  v69 = v129;
  v151 = v66;
  v158 = v67;
  DataFrame.subscript.getter(v66, v67);
  v70 = AnyColumn.wrappedElementType.getter(v66);
  (*(v127 + 8))(v69, v128);
  v71 = v70 == &type metadata for String;
  v72 = v154;
  if (v71)
  {
    DataFrame.subscript.getter(v151, v158, &type metadata for String);
    Column<A>.parseAsJSONArrays()();
    v76 = v158;
    if (v72)
    {
      v158;
      v150;
      v157;
      outlined destroy of MLActivityClassifier.ModelParameters(v149, type metadata accessor for MLTrainingSessionParameters);
      outlined destroy of MLActivityClassifier.ModelParameters(v148, type metadata accessor for MLActionClassifier.ModelParameters);
      outlined destroy of MLActivityClassifier.ModelParameters(v152, type metadata accessor for MLActionClassifier.DataSource);
      (*(v136 + 8))(v139, v137);
      (*(v147 + 8))(v68, v145);
      v59 = v156;
      goto LABEL_15;
    }

    (*(v136 + 8))(v139, v137);

    DataFrame.subscript.setter(v135, v151, v76);
  }

  v73 = v130;
  v74 = v147;
  *v44.i64 = (*(v147 + 16))(v130, v68, v145);
  MLDataTable.init(_:convertArraysToShapedArrays:)(v73, 0, v44);
  v59 = v156;
  if (!v72)
  {
    v154 = 0;
    v78 = v140;
    v79 = v141;
    v80 = v138;
    swift_beginAccess(v138, v121, 1, 0);
    v81 = *v80;
    *v80 = v78;
    v82 = *(v80 + 8);
    *(v80 + 8) = v79;
    outlined consume of Result<_DataTable, Error>(v81, v82);
    swift_beginAccess(v80, &v140, 33, 0);
    v83 = v151;
    v84 = v158;
    v85 = v154;
    static MLActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(v80, v151, v158);
    if (v85)
    {
      v57 = 0;
      swift_endAccess(&v140);
      v84;
      v150;
      v157;
      outlined destroy of MLActivityClassifier.ModelParameters(v149, type metadata accessor for MLTrainingSessionParameters);
      outlined destroy of MLActivityClassifier.ModelParameters(v148, type metadata accessor for MLActionClassifier.ModelParameters);
      outlined destroy of MLActivityClassifier.ModelParameters(v152, type metadata accessor for MLActionClassifier.DataSource);
      (*(v147 + 8))(v142, v145);
      goto LABEL_6;
    }

    swift_endAccess(&v140);
    swift_beginAccess(v80, &v140, 33, 0);
    v114 = v83;
    v115 = v157;
    v116 = v84;
    v117 = v150;
    static _VideoUtilities.renameFeatureTableColumns(table:sessionIdColumn:featureColumn:labelColumn:)(v80, v143, v157, v114, v116, v144, v150);
    v154 = 0;
    v59 = v156;
    v118 = v145;
    swift_endAccess(&v140);
    v158;
    v117;
    v115;
    (*(v147 + 8))(v142, v118);
    goto LABEL_18;
  }

  v158;
  v150;
  v157;
  outlined destroy of MLActivityClassifier.ModelParameters(v149, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v148, type metadata accessor for MLActionClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v152, type metadata accessor for MLActionClassifier.DataSource);
  (*(v74 + 8))(v68, v145);
LABEL_15:
  v77 = v153;
  v57 = 0;
LABEL_38:
  v59[3];
  if (v57)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v59 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v77, &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
  outlined consume of MLDataTable?(*(v59 + v124), *(v59 + v124 + 8));
  outlined consume of Result<_DataTable, Error>(*v138, *(v138 + 8));
  outlined consume of Result<_DataTable, Error>(*v134, *(v134 + 8));

  v109 = type metadata accessor for ActionClassifierTrainingSessionDelegate(0);
  swift_deallocPartialClassInstance(v59, v109, *(*v59 + 48), *(*v59 + 52));
  return v59;
}

char ActionClassifierTrainingSessionDelegate.populateSourceTable(parameters:)(uint64_t a1, __m128 a2)
{
  v4 = v3;
  type metadata accessor for MLActionClassifier.PersistentParameters(0);
  result = MLActionClassifier.ModelParameters.ValidationData.extractAnnotations(trainingData:)(&v28, &v26, a2);
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
        v16 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTable;
        swift_beginAccess(v4 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTable, &v28, 1, 0);
        v37 = *(v4 + v16);
        *(v4 + v16) = v6;
        LODWORD(v36) = *(v4 + v16 + 8);
        *(v4 + v16 + 8) = v7;
        v17 = v7;
        outlined copy of Result<_DataTable, Error>(v6, v7);
        outlined consume of MLDataTable?(v37, v36);
        *(v4 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
LABEL_13:
        v31 = v6;
        v32 = v17 & 1;
        v25 = MLDataTable.size.getter();
        outlined consume of MLDataTable?(v35, v38);
        outlined consume of Result<_DataTable, Error>(v31, v32);
LABEL_16:
        result = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceValidationRowCount;
        *(v4 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceValidationRowCount) = v25;
        return result;
      }

      *(v4 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
    }

    else
    {
      v40 = v29;
      v36 = v26;
      LOBYTE(v37) = v27;
      if (v27 == -1)
      {
        v18 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTable;
        v19 = v29;
        swift_beginAccess(v4 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTable, &v28, 1, 0);
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
        v9 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTable;
        v10 = v29;
        swift_beginAccess(v4 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTable, &v26, 1, 0);
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
        v14 = ActionClassifierTrainingSessionDelegate.sourceTable.modify(&v28);
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
      *(v4 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTrainingRowCount) = v24;
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

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> ActionClassifierTrainingSessionDelegate.setUp()()
{
  v12 = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = type metadata accessor for MLActionClassifier.PersistentParameters(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = v0 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v0 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingParameters, v11, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v9, &v10, &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(&v10, 1, v5) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v10, &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
    BUG();
  }

  outlined init with take of MLClassifierMetrics(&v10, &v10, type metadata accessor for MLActionClassifier.PersistentParameters);
  ActionClassifierTrainingSessionDelegate.populateSourceTable(parameters:)(&v10, v1);
  outlined destroy of MLActivityClassifier.ModelParameters(&v10, type metadata accessor for MLActionClassifier.PersistentParameters);
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> ActionClassifierTrainingSessionDelegate.resume(from:)(Swift::OpaquePointer from)
{
  v200 = v1;
  v195 = v2;
  rawValue = from._rawValue;
  v184 = type metadata accessor for URL(0);
  v183 = *(v184 - 8);
  v4 = *(v183 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v185 = &v135;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v181 = &v135;
  v9 = alloca(v4);
  v10 = alloca(v4);
  v180 = &v135;
  v11 = alloca(v4);
  v12 = alloca(v4);
  v179 = &v135;
  v13 = alloca(v4);
  v14 = alloca(v4);
  v188 = &v135;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v177 = &v135;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v196 = &v135;
  v197 = type metadata accessor for MLCheckpoint(0);
  v178 = *(v197 - 8);
  v20 = *(v178 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v182 = &v135;
  v23 = alloca(v20);
  v24 = alloca(v20);
  v194 = &v135;
  v25 = alloca(v20);
  v26 = alloca(v20);
  v199 = &v135;
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?) - 8) + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v30 = type metadata accessor for MLActionClassifier.PersistentParameters(0);
  v31 = *(*(v30 - 8) + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v34 = v195 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v195 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingParameters, v173, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v34, &v135, &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(&v135, 1, v30) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v135, &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
    BUG();
  }

  outlined init with take of MLClassifierMetrics(&v135, &v135, type metadata accessor for MLActionClassifier.PersistentParameters);
  v35 = v196;
  specialized BidirectionalCollection.last.getter(rawValue);
  v36 = v35;
  v37 = v197;
  if (__swift_getEnumTagSinglePayload(v36, 1, v197) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v196, &demangling cache variable for type metadata for MLCheckpoint?);
    v38 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v38, 0, 0);
    *v39 = 0xD00000000000001DLL;
    *(v39 + 8) = "reated." + 0x8000000000000000;
    *(v39 + 16) = 0;
    *(v39 + 32) = 0;
    *(v39 + 48) = 0;
    swift_willThrow();
    v40 = &v135;
LABEL_48:
    outlined destroy of MLActivityClassifier.ModelParameters(v40, type metadata accessor for MLActionClassifier.PersistentParameters);
    return;
  }

  v198 = &v135;
  v41 = v37;
  v42 = 0xEB0000000064657ALL;
  v189 = 0x6974636172747865;
  v43 = 0x696C616974696E69;
  v44 = v199;
  outlined init with take of MLClassifierMetrics(v196, v199, type metadata accessor for MLCheckpoint);
  v196 = *(v41 + 20);
  v45 = *(v44 + v196);
  v46 = 110;
  v186 = 0xEA0000000000676ELL;
  switch(v45)
  {
    case 0:
      goto LABEL_8;
    case 1:
LABEL_10:
      v46;
      goto LABEL_14;
    case 2:
      v43 = 0x676E696E69617274;
      v42 = 0xE800000000000000;
      goto LABEL_8;
    case 3:
      v43 = 0x697461756C617665;
      v42 = 0xEA0000000000676ELL;
      goto LABEL_8;
    case 4:
      v43 = 0x636E657265666E69;
      v42 = &loc_308EF - 0x14FFFFFFFF9B9A86;
LABEL_8:
      v47 = _stringCompareWithSmolCheck(_:_:expecting:)(v43, v42, 0x6974636172747865, 0xEA0000000000676ELL, 0);
      v42;
      if ((v47 & 1) == 0)
      {
        v46 = 0;
        switch(*(v44 + v196))
        {
          case 0:
            JUMPOUT(0x18DDE9);
          case 1:
            v48 = 0x6974636172747865;
            goto LABEL_13;
          case 2:
            goto LABEL_10;
          case 3:
            v48 = 0x697461756C617665;
LABEL_13:
            v49 = _stringCompareWithSmolCheck(_:_:expecting:)(v48, 0xEA0000000000676ELL, 0x676E696E69617274, 0xE800000000000000, 0);
            110;
            if (v49)
            {
              goto LABEL_14;
            }

            v54 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
            swift_allocError(&type metadata for MLCreateError, v54, 0, 0);
            *v55 = 0xD00000000000003FLL;
            *(v55 + 8) = "not been properly initialized." + 0x8000000000000000;
            *(v55 + 16) = 0;
            *(v55 + 32) = 0;
            *(v55 + 48) = 0;
            swift_willThrow();
            v56 = v44;
            break;
          case 4:
            JUMPOUT(0x18DE09);
        }

        goto LABEL_47;
      }

LABEL_14:
      v50 = v198;
      v51 = v200;
      ActionClassifierTrainingSessionDelegate.populateSourceTable(parameters:)(v198, v3);
      if (v51)
      {
        outlined destroy of MLActivityClassifier.ModelParameters(v199, type metadata accessor for MLCheckpoint);
        v40 = v50;
        goto LABEL_48;
      }

      break;
  }

  v200 = 0;
  v52 = 0x676E696E69617274;
  switch(*(v199 + v196))
  {
    case 0:
      v53 = 0xEB0000000064657ALL;
      v52 = 0x696C616974696E69;
      goto LABEL_22;
    case 1:
      110;
      goto LABEL_32;
    case 2:
      v53 = 0xE800000000000000;
      goto LABEL_22;
    case 3:
      v52 = 0x697461756C617665;
      v53 = 0xEA0000000000676ELL;
LABEL_22:
      v57 = _stringCompareWithSmolCheck(_:_:expecting:)(v52, v53, 0x6974636172747865, 0xEA0000000000676ELL, 0);
      v53;
      if ((v57 & 1) == 0)
      {
        v155 = rawValue;
        v58 = *(rawValue + 16);
        v59 = 1;
        if (v58)
        {
          v60 = v58 - 1;
          v61 = v60 * *(v178 + 72) + ((*(v178 + 80) + 32) & ~*(v178 + 80)) + rawValue;
          rawValue = -*(v178 + 72);
          v188 = 0xEB00000000676E69;
          v62 = v182;
          outlined init with copy of MLTrainingSessionParameters(v61, v182, type metadata accessor for MLCheckpoint);
          switch(*(v62 + *(v197 + 20)))
          {
            case 0:
              v63 = 0xEB0000000064657ALL;
              v64 = 0x696C616974696E69;
              goto LABEL_29;
            case 1:
              110;
              outlined destroy of MLActivityClassifier.ModelParameters(v182, type metadata accessor for MLCheckpoint);
              goto LABEL_37;
            case 2:
              v63 = 0xE800000000000000;
              v64 = 0x676E696E69617274;
              goto LABEL_29;
            case 3:
              v63 = 0xEA0000000000676ELL;
              v64 = 0x697461756C617665;
              goto LABEL_29;
            case 4:
              v63 = v188;
              v64 = 0x636E657265666E69;
LABEL_29:
              v65 = _stringCompareWithSmolCheck(_:_:expecting:)(v64, v63, 0x6974636172747865, 0xEA0000000000676ELL, 0);
              v63;
              outlined destroy of MLActivityClassifier.ModelParameters(v182, type metadata accessor for MLCheckpoint);
              if ((v65 & 1) == 0)
              {
                JUMPOUT(0x18E115);
              }

LABEL_37:
              v59 = 0;
              break;
          }
        }

        else
        {
          v60 = 0;
        }

        v80 = alloca(24);
        v81 = alloca(32);
        v137 = &v155;
        v82 = v177;
        v83 = v200;
        _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(partial apply for specialized closure #1 in BidirectionalCollection.last(where:), &v135, v60, v59, v176);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v82, 1, v197);
        v200 = v83;
        if (EnumTagSinglePayload != 1)
        {
          outlined init with take of MLClassifierMetrics(v82, v194, type metadata accessor for MLCheckpoint);
          URL.appendingPathComponent(_:)(0x676E696E69617274, 0xE800000000000000);
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
          LOBYTE(v155) = 1;
          v156 = 44;
          v157 = 0xE100000000000000;
          v158 = 0;
          v159 = 0xE000000000000000;
          v160 = 92;
          v161 = 0xE100000000000000;
          v162 = 1;
          v163 = 34;
          v164 = 0xE100000000000000;
          v165 = 1;
          v166 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
          v167 = 10;
          v168 = 0xE100000000000000;
          v169 = 0;
          v170 = 1;
          v171 = 0;
          outlined retain of MLDataTable.ParsingOptions(__src);
          outlined release of MLDataTable.ParsingOptions(&v155);
          memcpy(__dst, __src, sizeof(__dst));
          v90 = v200;
          MLDataTable.init(contentsOf:options:)(v180, __dst);
          if (!v90)
          {
            v91 = v190;
            LOBYTE(v197) = v191;
            v200 = 0;
            v92 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures;
            v93 = v195;
            swift_beginAccess(v195 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures, v175, 1, 0);
            v94 = *(v93 + v92);
            *(v93 + v92) = v91;
            v95 = *(v93 + v92 + 8);
            *(v93 + v92 + 8) = v197;
            outlined consume of Result<_DataTable, Error>(v94, v95);
            URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEA00000000006E6FLL);
            LOBYTE(v153[0]) = 1;
            *(&v153[0] + 1) = 44;
            v153[1] = 0xE100000000000000;
            *&v153[2] = 0xE000000000000000;
            *(&v153[2] + 1) = 92;
            *&v153[3] = 0xE100000000000000;
            BYTE8(v153[3]) = 1;
            *&v153[4] = 34;
            *(&v153[4] + 1) = 0xE100000000000000;
            LOBYTE(v153[5]) = 1;
            *(&v153[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
            *&v153[6] = 10;
            *(&v153[6] + 1) = 0xE100000000000000;
            v153[7] = 0;
            LOBYTE(v153[8]) = 1;
            *(&v153[8] + 1) = 0;
            v136[0] = 1;
            v137 = (&stru_20 + 12);
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
            outlined retain of MLDataTable.ParsingOptions(v153);
            outlined release of MLDataTable.ParsingOptions(v136);
            memcpy(v154, v153, sizeof(v154));
            v96 = v200;
            MLDataTable.init(contentsOf:options:)(v181, v154);
            v73 = v96;
            if (!v96)
            {
              outlined destroy of MLActivityClassifier.ModelParameters(v194, type metadata accessor for MLCheckpoint);
              v99 = v192;
              LOBYTE(v197) = v193;
              v100 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures;
              v101 = v195;
              swift_beginAccess(v195 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures, v154, 1, 0);
              v102 = *(v101 + v100);
              *(v101 + v100) = v99;
              v103 = *(v101 + v100 + 8);
              *(v101 + v100 + 8) = v197;
              outlined consume of Result<_DataTable, Error>(v102, v103);
              v79 = v199;
              switch(*(v199 + v196))
              {
                case 0:
                  goto LABEL_41;
                case 1:
                  goto LABEL_54;
                case 2:
                  goto LABEL_50;
                case 3:
                  goto LABEL_53;
                case 4:
                  goto LABEL_51;
              }
            }
          }

          outlined destroy of MLActivityClassifier.ModelParameters(v194, type metadata accessor for MLCheckpoint);
          v56 = v199;
          goto LABEL_47;
        }

        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v82, &demangling cache variable for type metadata for MLCheckpoint?);
        v85 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures;
        v86 = v195;
        swift_beginAccess(v195 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures, &v155, 0, 0);
        v87 = *(v86 + v85 + 8);
        *&__src[0] = *(v86 + v85);
        BYTE8(__src[0]) = v87;
        outlined copy of Result<_DataTable, Error>(*&__src[0], v87);
        v88 = MLDataTable.size.getter();
        outlined consume of Result<_DataTable, Error>(*&__src[0], SBYTE8(__src[0]));
        if (v88)
        {
          v79 = v199;
          v73 = v200;
          switch(*(v199 + v196))
          {
            case 0:
              goto LABEL_41;
            case 1:
              goto LABEL_54;
            case 2:
              goto LABEL_50;
            case 3:
              goto LABEL_53;
            case 4:
              goto LABEL_51;
          }
        }

        v97 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v97, 0, 0);
        *v98 = 0xD000000000000028;
        *(v98 + 8) = "erly initialized." + 0x8000000000000000;
        *(v98 + 16) = 0;
        *(v98 + 32) = 0;
        *(v98 + 48) = 0;
        swift_willThrow();
LABEL_46:
        v56 = v199;
LABEL_47:
        outlined destroy of MLActivityClassifier.ModelParameters(v56, type metadata accessor for MLCheckpoint);
        v40 = v198;
        goto LABEL_48;
      }

LABEL_32:
      URL.appendingPathComponent(_:)(0x676E696E69617274, 0xE800000000000000);
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
      LOBYTE(v155) = 1;
      v156 = 44;
      v157 = 0xE100000000000000;
      v158 = 0;
      v159 = 0xE000000000000000;
      v160 = 92;
      v161 = 0xE100000000000000;
      v162 = 1;
      v163 = 34;
      v164 = 0xE100000000000000;
      v165 = 1;
      v166 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
      v167 = 10;
      v168 = 0xE100000000000000;
      v169 = 0;
      v170 = 1;
      v171 = 0;
      outlined retain of MLDataTable.ParsingOptions(__src);
      outlined release of MLDataTable.ParsingOptions(&v155);
      memcpy(__dst, __src, sizeof(__dst));
      v66 = v200;
      MLDataTable.init(contentsOf:options:)(v188, __dst);
      if (v66)
      {
        goto LABEL_46;
      }

      v67 = v190;
      LOBYTE(v197) = v191;
      v200 = 0;
      v68 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures;
      v69 = v195;
      swift_beginAccess(v195 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures, v175, 1, 0);
      v70 = *(v69 + v68);
      *(v69 + v68) = v67;
      v71 = *(v69 + v68 + 8);
      *(v69 + v68 + 8) = v197;
      outlined consume of Result<_DataTable, Error>(v70, v71);
      URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEA00000000006E6FLL);
      LOBYTE(v153[0]) = 1;
      *(&v153[0] + 1) = 44;
      v153[1] = 0xE100000000000000;
      *&v153[2] = 0xE000000000000000;
      *(&v153[2] + 1) = 92;
      *&v153[3] = 0xE100000000000000;
      BYTE8(v153[3]) = 1;
      *&v153[4] = 34;
      *(&v153[4] + 1) = 0xE100000000000000;
      LOBYTE(v153[5]) = 1;
      *(&v153[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
      *&v153[6] = 10;
      *(&v153[6] + 1) = 0xE100000000000000;
      v153[7] = 0;
      LOBYTE(v153[8]) = 1;
      *(&v153[8] + 1) = 0;
      v154[0] = 1;
      v136[0] = 1;
      v137 = (&stru_20 + 12);
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
      outlined retain of MLDataTable.ParsingOptions(v153);
      outlined release of MLDataTable.ParsingOptions(v136);
      memcpy(v154, v153, sizeof(v154));
      v72 = v200;
      MLDataTable.init(contentsOf:options:)(v179, v154);
      v73 = v72;
      if (v72)
      {
        goto LABEL_46;
      }

      break;
    case 4:
      JUMPOUT(0x18DF5FLL);
  }

  v74 = v192;
  LOBYTE(v197) = v193;
  v75 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures;
  v76 = v195;
  swift_beginAccess(v195 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures, v154, 1, 0);
  v77 = *(v76 + v75);
  *(v76 + v75) = v74;
  v78 = *(v76 + v75 + 8);
  *(v76 + v75 + 8) = v197;
  outlined consume of Result<_DataTable, Error>(v77, v78);
  v79 = v199;
  switch(*(v199 + v196))
  {
    case 0:
LABEL_41:
      v189 = 0x696C616974696E69;
      v89 = 0xEB0000000064657ALL;
      goto LABEL_52;
    case 1:
      goto LABEL_54;
    case 2:
LABEL_50:
      0;
      goto LABEL_55;
    case 3:
LABEL_53:
      v189 = 0x697461756C617665;
      goto LABEL_54;
    case 4:
LABEL_51:
      v189 = 0x636E657265666E69;
      v89 = 0xEB00000000676E69;
LABEL_52:
      v186 = v89;
LABEL_54:
      v104 = v186;
      v105 = v79;
      v106 = _stringCompareWithSmolCheck(_:_:expecting:)(v189, v186, 0x676E696E69617274, 0xE800000000000000, 0);
      v104;
      v107 = (v106 & 1) == 0;
      v79 = v105;
      if (v107)
      {
        goto LABEL_74;
      }

LABEL_55:
      v200 = v73;
      (*(v183 + 16))(v185, v79, v184);
      v109 = URL.absoluteString.getter();
      v110 = v108;
      if ((v108 & 0x1000000000000000) != 0 || !(v108 & 0x2000000000000000 | v109 & 0x1000000000000000))
      {
        v133 = v200;
        _StringGuts._slowWithCString<A>(_:)(closure #1 in CMLModel.init(url:), 0, v109, v108, &type metadata for OpaquePointer);
        v200 = v133;
        if (!v133)
        {
          goto LABEL_62;
        }

        v113 = v199;
        goto LABEL_64;
      }

      v111 = alloca(32);
      v112 = alloca(32);
      if ((v108 & 0x2000000000000000) == 0)
      {
        v113 = v199;
        if ((v109 & 0x1000000000000000) != 0)
        {
          v114 = (v108 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v115 = v109 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v114 = _StringObject.sharedUTF8.getter(v109, v108);
          v115 = v134;
        }

        v116 = v200;
        v117 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v114, v115, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
        v200 = v116;
        if (!v116)
        {
          __dst[0] = v117;
LABEL_62:
          v110;
          goto LABEL_67;
        }

LABEL_64:
        (*(v183 + 8))(v185, v184);
        v110;
        outlined destroy of MLActivityClassifier.ModelParameters(v113, type metadata accessor for MLCheckpoint);
        outlined destroy of MLActivityClassifier.ModelParameters(v198, type metadata accessor for MLActionClassifier.PersistentParameters);
        return;
      }

      *&__src[0] = v109;
      *(&__src[0] + 1) = v108 & 0xFFFFFFFFFFFFFFLL;
      v118 = v200;
      v119 = specialized handling<A, B>(_:_:)(__src);
      v200 = v118;
      v113 = v199;
      if (v118)
      {
        goto LABEL_64;
      }

      if (!v119)
      {
        BUG();
      }

      __dst[0] = v119;
      v110;
LABEL_67:
      v120 = __dst[0];
      (*(v183 + 8))(v185, v184);
      v121 = type metadata accessor for CMLModel();
      v122 = swift_allocObject(v121, 24, 7);
      *(v122 + 16) = v120;
      v123 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_model;
      v124 = v195;
      *(v195 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_model) = v122;

      v125 = *(v124 + v123);
      v126 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures;
      swift_beginAccess(OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures + v124, __src, 0, 0);
      v127 = *(v124 + v126);
      if (*(v124 + v126 + 8))
      {
        swift_willThrow();
        outlined copy of Result<_DataTable, Error>(v127, 1);
        outlined destroy of MLActivityClassifier.ModelParameters(v199, type metadata accessor for MLCheckpoint);
        outlined destroy of MLActivityClassifier.ModelParameters(v198, type metadata accessor for MLActionClassifier.PersistentParameters);
      }

      else
      {
        v196 = v125;
        v128 = *(v127 + 16);
        v129 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures;
        swift_beginAccess(OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures + v124, __dst, 0, 0);
        v130 = *(v124 + v129);
        if (!*(v124 + v129 + 8))
        {
          v131 = *(v130 + 16);

          v132 = v200;
          CMLModel.resume(data:_:)(v128, v131);
          if (!v132)
          {

            v79 = v199;
LABEL_74:
            v56 = v79;
            goto LABEL_47;
          }

          goto LABEL_46;
        }

        swift_willThrow();
        outlined copy of Result<_DataTable, Error>(v130, 1);
        outlined destroy of MLActivityClassifier.ModelParameters(v199, type metadata accessor for MLCheckpoint);
        outlined destroy of MLActivityClassifier.ModelParameters(v198, type metadata accessor for MLActionClassifier.PersistentParameters);
      }

      return;
  }
}

Swift::Int_optional __swiftcall ActionClassifierTrainingSessionDelegate.itemCount(phase:)(CreateML::MLPhase phase)
{
  switch(*phase)
  {
    case 0:
    case 3:
    case 4:
      v2 = 1;
      v3 = 0;
      break;
    case 1:
      v5 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTable;
      v6 = (OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTable + v1);
      v3 = 0;
      swift_beginAccess(OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTable + v1, v9, 0, 0);
      v7 = *(v1 + v5 + 8);
      if (v7 != -1)
      {
        v10 = *v6;
        v11 = v7 & 1;
        outlined copy of Result<_DataTable, Error>(v10, v7);
        v3 = MLDataTable.size.getter();
        outlined consume of Result<_DataTable, Error>(v10, v11);
      }

      v2 = 0;
      break;
    case 2:
      v4 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sessionParameters + v1;
      v2 = 0;
      v3 = *(*(type metadata accessor for MLTrainingSessionParameters(0) + 28) + v4);
      break;
  }

  v8.value = v3;
  v8.is_nil = v2;
  return v8;
}

Swift::tuple_Int_finished_Bool __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> ActionClassifierTrainingSessionDelegate.extractFeatures(from:)(Swift::Int from)
{
  v51 = v1;
  v48 = from;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for MLActionClassifier.PersistentParameters(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v50 = v36;
  v10 = v2 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v2 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingParameters, v36, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v36, &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
  v44 = v6;
  if (__swift_getEnumTagSinglePayload(v36, 1, v6) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
    BUG();
  }

  v11 = v50;
  outlined init with take of MLClassifierMetrics(v36, v50, type metadata accessor for MLActionClassifier.PersistentParameters);
  v12 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTable;
  swift_beginAccess(OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTable + v2, v37, 0, 0);
  v13 = *(v2 + v12 + 8);
  if (v13 == 0xFF)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLActionClassifier.PersistentParameters);
LABEL_11:
    v25.finished = 1;
    v25._0 = 1;
    return v25;
  }

  v14 = *(v2 + v12);
  v45 = v2;
  v40 = v14;
  v15 = v13;
  v16 = v13 & 1;
  v41 = v16;
  outlined copy of Result<_DataTable, Error>(v14, v15);
  outlined copy of Result<_DataTable, Error>(v14, v15);
  MLDataTable.size.getter();
  v43 = v17;
  outlined consume of Result<_DataTable, Error>(v40, v41);
  if (v43 <= 0)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v50, type metadata accessor for MLActionClassifier.PersistentParameters);
    outlined consume of MLDataTable?(v14, v15);
    goto LABEL_11;
  }

  v49 = v14;
  v52 = v15;
  v18 = *(v45 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTrainingRowCount);
  v19 = *(v45 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceValidationRowCount);
  v23 = __OFADD__(v18, v19);
  v20 = v18 + v19;
  if (v23)
  {
    BUG();
  }

  if (v20 <= v48)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v50, type metadata accessor for MLActionClassifier.PersistentParameters);
    outlined consume of MLDataTable?(v49, v52);
    v25.finished = 1;
    v25._0 = 0;
  }

  else
  {
    v39 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceValidationRowCount;
    v38 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTrainingRowCount;
    v21 = v45 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sessionParameters;
    v43 = v18;
    v22 = *(*(type metadata accessor for MLTrainingSessionParameters(0) + 20) + v21);
    v23 = __OFADD__(v48, v22);
    v24 = v48 + v22;
    if (v43 <= v48)
    {
      if (v23)
      {
        BUG();
      }
    }

    else
    {
      v20 = v43;
      if (v23)
      {
        BUG();
      }
    }

    if (v20 < v24)
    {
      v24 = v20;
    }

    if (v24 < v48)
    {
      BUG();
    }

    v46 = v49;
    v47 = v16;
    outlined copy of Result<_DataTable, Error>(v49, v52);
    MLDataTable.subscript.getter(v48, v24);
    outlined consume of Result<_DataTable, Error>(v46, v47);
    v26 = v40;
    v27 = v41;
    type metadata accessor for MLActionClassifier.FeatureExtractor();
    v42 = v26;
    v46 = v26;
    v47 = v27;
    v28 = *(v44 + 36);
    v44 = v24;
    v29 = v50;
    v30 = v51;
    static MLActionClassifier.FeatureExtractor.extractFeatures(from:targetFrameRate:)(&v46, *&v50[v28]);
    if (v30)
    {
      outlined destroy of MLActivityClassifier.ModelParameters(v29, type metadata accessor for MLActionClassifier.PersistentParameters);
      outlined consume of MLDataTable?(v49, v52);
      v25._0 = outlined consume of Result<_DataTable, Error>(v42, v27);
    }

    else
    {
      v31 = v27;
      v32 = v40;
      LOBYTE(v51) = v41;
      v46 = v40;
      v47 = v41 & 1;
      if (v43 <= v48)
      {
        v33 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures;
      }

      else
      {
        v33 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures;
      }

      swift_beginAccess(v45 + v33, &v40, 33, 0);
      MLDataTable.append(contentsOf:)(&v46);
      swift_endAccess(&v40);
      outlined consume of Result<_DataTable, Error>(v42, v31);
      outlined consume of MLDataTable?(v49, v52);
      outlined destroy of MLActivityClassifier.ModelParameters(v50, type metadata accessor for MLActionClassifier.PersistentParameters);
      outlined consume of Result<_DataTable, Error>(v32, v51);
      v25._0 = v44 - v48;
      if (__OFSUB__(v44, v48))
      {
        BUG();
      }

      v34 = *(v45 + v38);
      v23 = __OFADD__(*(v45 + v39), v34);
      v35 = *(v45 + v39) + v34;
      if (v23)
      {
        BUG();
      }

      v25.finished = v44 == v35;
    }
  }

  return v25;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> ActionClassifierTrainingSessionDelegate.transitionTo(phase:)(CreateML::MLPhase phase)
{
  v39 = v1;
  v38 = v2;
  v3 = type metadata accessor for MLActionClassifier.ModelParameters(0);
  v4 = *(*(v3 - 1) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v35 = &v27;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = type metadata accessor for MLActionClassifier.PersistentParameters(0);
  v11 = *(*(v10 - 1) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  if (*phase == 2)
  {
    v40 = &v27;
    v14 = v38 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingParameters;
    swift_beginAccess(v38 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingParameters, v28, 0, 0);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v14, &v27, &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
    if (__swift_getEnumTagSinglePayload(&v27, 1, v10) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v27, &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
      BUG();
    }

    v15 = v40;
    outlined init with take of MLClassifierMetrics(&v27, v40, type metadata accessor for MLActionClassifier.PersistentParameters);
    v16 = v35;
    outlined init with copy of MLTrainingSessionParameters(v15 + v10[5], v35, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
    v17 = *(v15 + v10[7]);
    v18 = *(v15 + v10[8]);
    v19 = *(v15 + v10[10]);
    v20 = *(v15 + v10[9]);
    *(v16 + v3[5]) = *(v15 + v10[6]);
    *(v16 + v3[6]) = v17;
    *(v16 + v3[7]) = v18;
    *(v16 + v3[8]) = v19;
    *(v16 + v3[10]) = v20;
    v21 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures;
    v22 = v38;
    swift_beginAccess(v38 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures, v29, 0, 0);
    v36 = *(v22 + v21);
    v23 = *(v22 + v21 + 8);
    v37 = v23;
    v33 = v36;
    v34 = v23;
    v24 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures;
    swift_beginAccess(v22 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures, v30, 0, 0);
    v25 = *(v22 + v24);
    LOBYTE(v24) = *(v22 + v24 + 8);
    v31 = v25;
    v32 = v24;
    outlined copy of Result<_DataTable, Error>(v36, v37);
    outlined copy of Result<_DataTable, Error>(v25, v24);
    v26 = v39;
    v39 = static MLActionClassifier.convertParameters(_:trainingFeatures:validationFeatures:)(v16, &v33, &v31);
    outlined consume of Result<_DataTable, Error>(v31, v32);
    outlined consume of Result<_DataTable, Error>(v33, v34);
    outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for MLActionClassifier.ModelParameters);
    if (v26)
    {
      outlined destroy of MLActivityClassifier.ModelParameters(v40, type metadata accessor for MLActionClassifier.PersistentParameters);
    }

    else
    {

      CMLModel.callFunction(name:arguments:)(0, v39);

      outlined destroy of MLActivityClassifier.ModelParameters(v40, type metadata accessor for MLActionClassifier.PersistentParameters);
    }
  }
}

Swift::tuple_Int_metrics_OpaquePointer_finished_Bool __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> ActionClassifierTrainingSessionDelegate.train(from:)(Swift::Int from)
{
  v4 = v1;
  v44 = v2;
  v5 = *&v2 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sessionParameters;
  v6 = type metadata accessor for MLTrainingSessionParameters(0);
  v7 = *(*(v6 + 20) + v5);
  if (__OFADD__(v7, from))
  {
    BUG();
  }

  v8 = *(v5 + *(v6 + 28));
  v9 = v8 - from;
  if (__OFSUB__(v8, from))
  {
    BUG();
  }

  if (v7 < v9)
  {
    v9 = v7;
  }

  if (v9 < 0)
  {
    BUG();
  }

  v39 = v8;
  v38 = v7 + from;
  v37 = v9;
  if (v9)
  {
    v42 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_model;
    v10 = v44;
    v43 = *(*&v44 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_args);
    while (1)
    {

      CMLModel.callFunction(name:arguments:)(1, v43);
      if (v1)
      {
        break;
      }

      --v9;
      v10 = v44;
      if (!v9)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v10 = v44;
LABEL_12:
    v42 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_model;
    v11 = *(*&v10 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_args);

    v4 = CMLModel.callFunction(name:arguments:)(2, v11);

    if (!v1)
    {

      CMLModel.getValue(field:)(0x676E696E69617274, 0xED000073736F6C5FLL);

      v21 = CMLVariant.featureValue()();

      specialized handling<A, B>(_:_:)(*(v21 + 16));
      v43 = v3;

      v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(MLProgress.Metric, Double)>);
      inited = swift_initStackObject(v24, v33);
      *(inited + 16) = 1;
      *(inited + 24) = 2;
      *(inited + 32) = 0;
      v26 = v43;
      *(inited + 40) = *&v43;
      v27 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
      *&v43 = COERCE_DOUBLE(Dictionary.init(dictionaryLiteral:)(inited, &type metadata for MLProgress.Metric, &type metadata for Double, v27));

      CMLModel.getValue(field:)(0xD000000000000011, ("rainingSessionDelegate" + 0x8000000000000000));

      v22 = CMLVariant.featureValue()();

      specialized handling<A, B>(_:_:)(*(v22 + 16));
      v41 = 0;
      v40 = *&v26;

      v28 = v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v43);
      v34[0] = v28;
      v30 = v40;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(3, isUniquelyReferenced_nonNull_native, v40);
      v43 = v34[0];
      v13 = v44;
      v14 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures;
      swift_beginAccess(*&v44 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures, v34, 0, 0);
      v15 = *(*&v13 + v14 + 8);
      v35 = *(*&v13 + v14);
      v36 = v15;
      outlined copy of Result<_DataTable, Error>(v35, v15);
      v16 = MLDataTable.size.getter();
      outlined consume of Result<_DataTable, Error>(v35, v36);
      if (v16 > 0)
      {

        v17 = v41;
        CMLModel.getValue(field:)(0xD000000000000013, ("should_apply_flip" + 0x8000000000000000));
        if (v17)
        {
          v17;
        }

        else
        {

          v23 = CMLVariant.featureValue()();

          specialized handling<A, B>(_:_:)(*(v23 + 16));
          v44 = v30;

          v31 = v43;
          v32 = swift_isUniquelyReferenced_nonNull_native(v43);
          v35 = v31;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(5, v32, v44);
          v43 = v35;
        }
      }

      v4 = v38 >= v39;
      v18 = v43;
      v10 = COERCE_DOUBLE(specialized _dictionaryUpCast<A, B, C, D>(_:)(v43));
      v18;
      v12 = v37;
    }
  }

  v19 = v10;
  v20 = v4;
  result.metrics = *&v19;
  result._0 = v12;
  result.finished = v20;
  return result;
}

Swift::tuple_Int_finished_Bool __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> ActionClassifierTrainingSessionDelegate.evaluate(from:)(Swift::Int from)
{
  v3 = *(v2 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_args);

  CMLModel.callFunction(name:arguments:)(4, v3);

  if (!v1)
  {
  }

  v4._0 = 1;
  v4.finished = 1;
  return v4;
}

uint64_t ActionClassifierTrainingSessionDelegate.saveCheckpoint(to:phase:iteration:)(uint64_t a1, unsigned __int8 *a2)
{
  v97 = v2;
  v93 = v3;
  v96 = a1;
  LODWORD(v3) = 0;
  v4 = type metadata accessor for URL(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = alloca(v6);
  v10 = alloca(v6);
  v11 = alloca(v6);
  v12 = alloca(v6);
  v13 = alloca(v6);
  v14 = alloca(v6);
  v15 = *a2;
  if (v15 == 2)
  {
    empty = tc_v1_parameters_create_empty(0);
    if (!empty)
    {
      BUG();
    }

    v21 = empty;
    v22 = type metadata accessor for CMLParameters();
    v98 = swift_allocObject(v22, 24, 7);
    *(v98 + 16) = v21;
    v23 = type metadata accessor for CMLFeatureValue();
    v24 = URL.path.getter(0);
    LODWORD(v3) = v23;
    v26 = CMLFeatureValue.__allocating_init(_:)(v24, v25);
    if (v97)
    {
      swift_setDeallocating(v98);
      tc_v1_release(v21);
      swift_deallocClassInstance(v98, 24, 7);
      return v3;
    }

    CMLParameters.add(key:featureValue:)(7, v26);

    v3 = *(v93 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_model);

    CMLModel.callFunction(name:arguments:)(6, v98);

    swift_setDeallocating(v98);
    tc_v1_release(*(v98 + 16));
    swift_deallocClassInstance(v98, 24, 7);

LABEL_15:
    LOBYTE(v3) = 1;
    return v3;
  }

  if (v15 != 1)
  {
    return v3;
  }

  v83 = __src;
  v98 = v4;
  v91 = __src;
  v84 = __src;
  v16 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures;
  v17 = v93;
  v85 = (v93 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures);
  swift_beginAccess(v93 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures, v64, 1, 0);
  v18 = *(v17 + v16 + 8);
  v66 = *(v17 + v16);
  LOBYTE(v67) = v18;
  outlined copy of Result<_DataTable, Error>(v66, v18);
  URL.appendingPathComponent(_:)(0x676E696E69617274, 0xE800000000000000);
  v3 = &v66;
  v19 = v97;
  MLDataTable.write(to:)(__src);
  if (!v19)
  {
    v97 = 0;
    v92 = *(v5 + 8);
    v92(__src, v98);
    outlined consume of Result<_DataTable, Error>(v66, v67);
    v27 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures;
    v28 = v93;
    v86 = (v93 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures);
    swift_beginAccess(v93 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures, v65, 1, 0);
    v29 = *(v28 + v27 + 8);
    v94 = *(v28 + v27);
    LOBYTE(v95) = v29;
    outlined copy of Result<_DataTable, Error>(v94, v29);
    v30 = v83;
    URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEA00000000006E6FLL);
    v3 = &v94;
    v31 = v97;
    MLDataTable.write(to:)(v30);
    if (v31)
    {
      v92(v30, v98);
      outlined consume of Result<_DataTable, Error>(v94, v95);
      return v3;
    }

    v92(v30, v98);
    outlined consume of Result<_DataTable, Error>(v94, v95);
    URL.appendingPathComponent(_:)(0x676E696E69617274, 0xE800000000000000);
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
    LOBYTE(v66) = 1;
    v67 = 44;
    v68 = 0xE100000000000000;
    v69 = 0;
    v70 = 0xE000000000000000;
    v71 = 92;
    v72 = 0xE100000000000000;
    v73 = 1;
    v74 = 34;
    v75 = 0xE100000000000000;
    v76 = 1;
    v77 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
    v78 = 10;
    v79 = 0xE100000000000000;
    v80 = 0;
    v81 = 1;
    v82 = 0;
    outlined retain of MLDataTable.ParsingOptions(__src);
    outlined release of MLDataTable.ParsingOptions(&v66);
    memcpy(__dst, __src, sizeof(__dst));
    MLDataTable.init(contentsOf:options:)(v91, __dst);
    v33 = v88;
    v34 = v85;
    v35 = *v85;
    *v85 = v87;
    v36 = *(v34 + 2);
    *(v34 + 8) = v33;
    outlined consume of Result<_DataTable, Error>(v35, v36);
    v37 = v84;
    URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEA00000000006E6FLL);
    v97 = 0;
    LOBYTE(v62[0]) = 1;
    *(&v62[0] + 1) = 44;
    v62[1] = 0xE100000000000000;
    v3 = v63;
    *&v62[2] = 0xE000000000000000;
    *(&v62[2] + 1) = 92;
    *&v62[3] = 0xE100000000000000;
    BYTE8(v62[3]) = 1;
    *&v62[4] = 34;
    *(&v62[4] + 1) = 0xE100000000000000;
    LOBYTE(v62[5]) = 1;
    *(&v62[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
    *&v62[6] = 10;
    *(&v62[6] + 1) = 0xE100000000000000;
    v62[7] = 0;
    LOBYTE(v62[8]) = 1;
    *(&v62[8] + 1) = 0;
    v63[0] = 1;
    v45[0] = 1;
    v46 = 44;
    v47 = 0xE100000000000000;
    v48 = 0;
    v49 = 0xE000000000000000;
    v50 = 92;
    v51 = 0xE100000000000000;
    v52 = 1;
    v53 = 34;
    v54 = 0xE100000000000000;
    v55 = 1;
    v56 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
    v57 = 10;
    v58 = 0xE100000000000000;
    v59 = 0;
    v60 = 1;
    v61 = 0;
    outlined retain of MLDataTable.ParsingOptions(v62);
    outlined release of MLDataTable.ParsingOptions(v45);
    memcpy(v63, v62, sizeof(v63));
    v38 = v97;
    MLDataTable.init(contentsOf:options:)(v37, v63);
    if (v38)
    {
      return v3;
    }

    v39 = v90;
    v40 = v86;
    v41 = *v86;
    *v86 = v89;
    v42 = *(v40 + 2);
    *(v40 + 8) = v39;
    outlined consume of Result<_DataTable, Error>(v41, v42);
    goto LABEL_15;
  }

  (*(v5 + 8))(__src, v98);
  outlined consume of Result<_DataTable, Error>(v66, v67);
  return v3;
}

uint64_t ActionClassifierTrainingSessionDelegate.save(to:)(uint64_t a1)
{
  v16 = v1;
  v17 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for MLActionClassifier.PersistentParameters(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingParameters + v2;
  swift_beginAccess(v10, v15, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, &v14, &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(&v14, 1, v6) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v14, &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
    v11 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v11, 0, 0);
    *v12 = 0xD000000000000030;
    *(v12 + 8) = "Feature Extractor" + 0x8000000000000000;
    *(v12 + 16) = 0;
    *(v12 + 32) = 0;
    *(v12 + 48) = 2;
    return swift_willThrow();
  }

  else
  {
    outlined init with take of MLClassifierMetrics(&v14, &v14, type metadata accessor for MLActionClassifier.PersistentParameters);
    MLActionClassifier.PersistentParameters.save(toSessionDirectory:)(v17);
    return outlined destroy of MLActivityClassifier.ModelParameters(&v14, type metadata accessor for MLActionClassifier.PersistentParameters);
  }
}

NSURL *ActionClassifierTrainingSessionDelegate.restore(from:phase:)(uint64_t a1)
{
  v36 = v1;
  v34 = v2;
  v30 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v32 = &v27;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v35 = &v27;
  v8 = type metadata accessor for URL(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v31 = type metadata accessor for MLActionClassifier.PersistentParameters(0);
  v13 = *(*(v31 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v33 = &v27;
  v16 = alloca(v13);
  v17 = alloca(v13);
  (*(v9 + 16))(&v27, v30, v8);
  v18 = v36;
  result = MLActionClassifier.PersistentParameters.init(sessionDirectory:)(&v27);
  if (!v18)
  {
    v36 = &v27;
    v20 = v34 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingParameters;
    swift_beginAccess(v34 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingParameters, v28, 0, 0);
    v21 = v35;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v20, v35, &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
    v22 = v21;
    v23 = v31;
    if (__swift_getEnumTagSinglePayload(v22, 1, v31) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v35, &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
      v24 = v32;
      outlined init with take of MLClassifierMetrics(v36, v32, type metadata accessor for MLActionClassifier.PersistentParameters);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v23);
      swift_beginAccess(v20, v29, 33, 0);
      outlined assign with take of MLActionClassifier.PersistentParameters?(v24, v20);
      return swift_endAccess(v29);
    }

    else
    {
      v25 = v33;
      outlined init with take of MLClassifierMetrics(v35, v33, type metadata accessor for MLActionClassifier.PersistentParameters);
      v26 = v36;
      ActionClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:)(v36, v25);
      outlined destroy of MLActivityClassifier.ModelParameters(v25, type metadata accessor for MLActionClassifier.PersistentParameters);
      return outlined destroy of MLActivityClassifier.ModelParameters(v26, type metadata accessor for MLActionClassifier.PersistentParameters);
    }
  }

  return result;
}

uint64_t ActionClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:)(uint64_t a1, uint64_t a2)
{
  v154 = v2;
  v137._object = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<AnyColumn, AnyColumn>);
  v3 = *(*(v137._object - 1) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v136 = &v134;
  v146._object = type metadata accessor for MLActionClassifier.DataSource(0);
  v6 = *(*(v146._object - 1) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v135 = &v134;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v142 = &v134;
  v11 = alloca(v6);
  v12 = alloca(v6);
  v139 = &v134;
  v13 = alloca(v6);
  v14 = alloca(v6);
  v141 = &v134;
  v155 = type metadata accessor for DataFrame(0);
  v153 = *(v155 - 8);
  v15 = v153[8];
  v16 = alloca(v15);
  v17 = alloca(v15);
  v147._countAndFlagsBits = &v134;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v150._countAndFlagsBits = &v134;
  v20 = alloca(v15);
  v21 = alloca(v15);
  v151 = &v134;
  v22 = alloca(v15);
  v23 = alloca(v15);
  v149 = &v134;
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v146._countAndFlagsBits = &v134;
  v27 = alloca(v24);
  v28 = alloca(v24);
  v152 = &v134;
  v29 = alloca(v24);
  v30 = alloca(v24);
  v31 = alloca(v24);
  v32 = alloca(v24);
  v33 = type metadata accessor for MLActionClassifier.PersistentParameters(0);
  v34 = v33[6];
  v35 = *(a2 + v34);
  if (*(a1 + v34) != v35)
  {
    v147._object = *(a1 + v34);
    v46 = lazy protocol witness table accessor for type Int and conformance Int();
    v154 = BinaryInteger.description.getter(&type metadata for Int, v46);
    v155 = v47;
    v147._object = v35;
    v48 = BinaryInteger.description.getter(&type metadata for Int, v46);
    v50 = v49;
    v51 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v51, 0, 0);
    *v52 = 0x6953206863746142;
    *(v52 + 8) = 0xEA0000000000657ALL;
LABEL_14:
    *(v52 + 16) = v154;
    *(v52 + 24) = v155;
    *(v52 + 32) = v48;
    *(v52 + 40) = v50;
    *(v52 + 48) = 3;
    return swift_willThrow();
  }

  v36 = v33[7];
  v37 = *(a2 + v36);
  if (*(a1 + v36) != v37)
  {
    v53 = "metricsAttributesDictionary" + 0x8000000000000000;
    v147._object = *(a1 + v36);
    v54 = lazy protocol witness table accessor for type Int and conformance Int();
    v154 = BinaryInteger.description.getter(&type metadata for Int, v54);
    v155 = v55;
    v147._object = v37;
    v48 = BinaryInteger.description.getter(&type metadata for Int, v54);
    v50 = v56;
    v57 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v57, 0, 0);
    v58 = 0xD000000000000012;
LABEL_13:
    *v52 = v58;
    *(v52 + 8) = v53;
    goto LABEL_14;
  }

  v38 = v33[8];
  v39 = *(a2 + v38);
  if (*(a1 + v38) != v39)
  {
    v53 = "Number of Labels" + 0x8000000000000000;
    v147._object = *(a1 + v38);
    v59 = lazy protocol witness table accessor for type Int and conformance Int();
    v154 = BinaryInteger.description.getter(&type metadata for Int, v59);
    v155 = v60;
    v147._object = v39;
    v48 = BinaryInteger.description.getter(&type metadata for Int, v59);
    v50 = v61;
    v62 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v62, 0, 0);
    v58 = 0xD000000000000016;
    goto LABEL_13;
  }

  v40 = v33[9];
  v41 = *(a1 + v40);
  if (v41 != *(a2 + v40))
  {
    v155 = *(a2 + v40);
    v154 = Double.description.getter(v41);
    v64 = v63;
    v65 = Double.description.getter(*&v155);
    v67 = v66;
    v68 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v68, 0, 0);
    *v69 = 0xD000000000000011;
    *(v69 + 8) = "lassification algorithm." + 0x8000000000000000;
    *(v69 + 16) = v154;
    *(v69 + 24) = v64;
    *(v69 + 32) = v65;
    *(v69 + 40) = v67;
    *(v69 + 48) = 3;
    return swift_willThrow();
  }

  v42 = v33[10];
  v43 = *(a2 + v42);
  if (*(a1 + v42) != v43)
  {
    v53 = "Maximum Iterations" + 0x8000000000000000;
    v147._object = *(a1 + v42);
    v70 = lazy protocol witness table accessor for type Int and conformance Int();
    v154 = BinaryInteger.description.getter(&type metadata for Int, v70);
    v155 = v71;
    v147._object = v43;
    v48 = BinaryInteger.description.getter(&type metadata for Int, v70);
    v50 = v72;
    v73 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v73, 0, 0);
    v58 = 0xD000000000000014;
    goto LABEL_13;
  }

  v140 = a2;
  v44 = v154;
  result = MLActionClassifier.DataSource.gatherAnnotatedFileNames()();
  if (!v44)
  {
    v154 = a1;
    v150._object = &v134;
    MLActionClassifier.DataSource.gatherAnnotatedFileNames()();
    v138 = &v134;
    v143 = 0;
    countAndFlagsBits = v152;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v150._object, v152, &demangling cache variable for type metadata for DataFrame?);
    v75 = v155;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(countAndFlagsBits, 1, v155);
    if (EnumTagSinglePayload != 1)
    {
      v77 = v149;
      v152 = v153[4];
      (v152)(v149, countAndFlagsBits, v75);
      countAndFlagsBits = v146._countAndFlagsBits;
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v138, v146._countAndFlagsBits, &demangling cache variable for type metadata for DataFrame?);
      if (__swift_getEnumTagSinglePayload(countAndFlagsBits, 1, v75) != 1)
      {
        v95 = v151;
        (v152)(v151, countAndFlagsBits, v75);
        if (DataFrame.shape.getter(v95) > 0 && DataFrame.shape.getter(v95) > 0)
        {
          v96 = v143;
          v97 = ActionClassifierTrainingSessionDelegate.pathsByLabel(for:)();
          if (!v96)
          {
            v98 = v97;
            v99 = ActionClassifierTrainingSessionDelegate.pathsByLabel(for:)();
            v100 = v99;
            LOBYTE(v154) = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SaySSGTt1g5(v98, v99);
            v98;
            v100;
            if ((v154 & 1) == 0)
            {
              v101 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
              swift_allocError(&type metadata for MLCreateError, v101, 0, 0);
              *v102 = 1;
              *(v102 + 8) = 0;
              *(v102 + 24) = 0;
              *(v102 + 40) = 0;
              *(v102 + 48) = 4;
              swift_willThrow();
            }
          }

          v103 = v153[1];
          v104 = v155;
          v103(v151, v155);
          v105 = v149;
          goto LABEL_46;
        }

        v124 = v153[1];
        v125 = v155;
        v124(v151, v155);
        v124(v77, v125);
LABEL_21:
        v78 = v141;
        outlined init with copy of MLTrainingSessionParameters(v154, v141, type metadata accessor for MLActionClassifier.DataSource);
        object = v146._object;
        if (swift_getEnumCaseMultiPayload(v78, v146._object) == 3)
        {
          v152 = *v78;
          LOBYTE(v151) = *(v78 + 8);
          v137._countAndFlagsBits = *(v78 + 16);
          v149 = *(v78 + 24);
          v146._countAndFlagsBits = *(v78 + 32);
          v80 = *(v78 + 40);
          *(v78 + 56);
          v78 = v139;
          outlined init with copy of MLTrainingSessionParameters(v140, v139, type metadata accessor for MLActionClassifier.DataSource);
          if (swift_getEnumCaseMultiPayload(v78, object) == 3)
          {
            v154 = *v78;
            LODWORD(v155) = *(v78 + 8);
            v147._countAndFlagsBits = *(v78 + 16);
            v146._object = *(v78 + 24);
            v150._countAndFlagsBits = *(v78 + 32);
            v141 = *(v78 + 40);
            *(v78 + 56);
            v144 = v152;
            v81 = v151;
            LOBYTE(v151) = v151 & 1;
            v145 = v151;
            LODWORD(v153) = v81;
            outlined copy of Result<_DataTable, Error>(v152, v81);
            v82._countAndFlagsBits = v146._countAndFlagsBits;
            v82._object = v80;
            MLDataTable.subscript.getter(v82);
            v80;
            outlined consume of Result<_DataTable, Error>(v144, v145);
            v144 = v147._object;
            v145 = v148;
            v142 = Array<A>.init(_:)(&v144, v41);
            v144 = v154;
            LOBYTE(v146._countAndFlagsBits) = v155 & 1;
            v145 = v155 & 1;
            outlined copy of Result<_DataTable, Error>(v154, v155);
            v82._countAndFlagsBits = v150._countAndFlagsBits;
            v83 = v141;
            v82._object = v141;
            MLDataTable.subscript.getter(v82);
            v83;
            outlined consume of Result<_DataTable, Error>(v144, v145);
            v144 = v147._object;
            v145 = v148;
            v84 = Array<A>.init(_:)(&v144, v41);
            v85 = v84;
            v86 = v142;
            ML11MLDataValueO_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CreateML11MLDataValueO_Tt1g5(v142, v84);
            v86;
            v85;
            if (ML11MLDataValueO_Tt1g5)
            {
              v144 = v152;
              v145 = v151;
              outlined copy of Result<_DataTable, Error>(v152, v153);
              v88._countAndFlagsBits = v137._countAndFlagsBits;
              v89 = v149;
              v88._object = v149;
              MLDataTable.subscript.getter(v88);
              v89;
              outlined consume of Result<_DataTable, Error>(v144, v145);
              v144 = v147._object;
              v145 = v148;
              v150._countAndFlagsBits = Array<A>.init(_:)(&v144, v41);
              v144 = v154;
              v145 = v146._countAndFlagsBits;
              LODWORD(v155) = v155;
              outlined copy of Result<_DataTable, Error>(v154, v155);
              v88._countAndFlagsBits = v147._countAndFlagsBits;
              v90 = v146._object;
              v88._object = v146._object;
              MLDataTable.subscript.getter(v88);
              v90;
              outlined consume of Result<_DataTable, Error>(v144, v145);
              v144 = v147._object;
              v145 = v148;
              v91 = Array<A>.init(_:)(&v144, v41);
              v92 = v91;
              v93 = v150._countAndFlagsBits;
              v94 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CreateML11MLDataValueO_Tt1g5(v150._countAndFlagsBits, v91);
              v93;
              v92;
              if (v94)
              {
                outlined consume of Result<_DataTable, Error>(v154, v155);
                outlined consume of Result<_DataTable, Error>(v152, v153);
                outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v134, &demangling cache variable for type metadata for DataFrame?);
                return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v150._object, &demangling cache variable for type metadata for DataFrame?);
              }

              v132 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
              swift_allocError(&type metadata for MLCreateError, v132, 0, 0);
              *v133 = 1;
              *(v133 + 8) = 0;
              *(v133 + 24) = 0;
              *(v133 + 40) = 0;
              *(v133 + 48) = 4;
              swift_willThrow();
              v129 = v154;
              v128 = v155;
            }

            else
            {
              v146._object;
              v149;
              v126 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
              swift_allocError(&type metadata for MLCreateError, v126, 0, 0);
              *v127 = 1;
              *(v127 + 8) = 0;
              *(v127 + 24) = 0;
              *(v127 + 40) = 0;
              *(v127 + 48) = 4;
              swift_willThrow();
              v128 = v155;
              v129 = v154;
            }

            outlined consume of Result<_DataTable, Error>(v129, v128);
            outlined consume of Result<_DataTable, Error>(v152, v153);
            goto LABEL_49;
          }

          outlined consume of Result<_DataTable, Error>(v152, v151);
          v80;
          v149;
        }

        outlined destroy of MLActivityClassifier.ModelParameters(v78, type metadata accessor for MLActionClassifier.DataSource);
        v106 = v142;
        outlined init with copy of MLTrainingSessionParameters(v154, v142, type metadata accessor for MLActionClassifier.DataSource);
        v107 = v146._object;
        if (swift_getEnumCaseMultiPayload(v106, v146._object) == 5)
        {
          v108 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v109 = v108[12];
          v149 = *(v106 + v109);
          v154 = *(v106 + v109 + 8);
          v110 = v108[16];
          v141 = *(v106 + v110);
          v152 = *(v106 + v110 + 8);
          *(v106 + v108[20] + 8);
          v151 = v153[4];
          v151(v150._countAndFlagsBits, v106, v155);
          v111 = v107;
          v112 = v135;
          outlined init with copy of MLTrainingSessionParameters(v140, v135, type metadata accessor for MLActionClassifier.DataSource);
          if (swift_getEnumCaseMultiPayload(v112, v111) == 5)
          {
            v113 = v108[12];
            v139 = *(v112 + v113);
            v146._object = *(v112 + v113 + 8);
            v114 = v108[16];
            v142 = *(v112 + v114);
            v146._countAndFlagsBits = *(v112 + v114 + 8);
            *(v112 + v108[20] + 8);
            v151(v147._countAndFlagsBits, v112, v155);
            v115 = v136;
            v116 = v152;
            DataFrame.subscript.getter(v141, v152);
            v116;
            v117 = v146._countAndFlagsBits;
            DataFrame.subscript.getter(v142, v146._countAndFlagsBits);
            v117;
            v118 = v143;
            v119 = specialized Sequence.allSatisfy(_:)(v115);
            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v115, &demangling cache variable for type metadata for Zip2Sequence<AnyColumn, AnyColumn>);
            if (v119)
            {
              v120 = v154;
              v152 = v118;
              DataFrame.subscript.getter(v149, v154);
              v120;
              v121 = v146._object;
              DataFrame.subscript.getter(v139, v146._object);
              v121;
              v122 = specialized Sequence.allSatisfy(_:)(v115);
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v115, &demangling cache variable for type metadata for Zip2Sequence<AnyColumn, AnyColumn>);
              if (v122)
              {
                goto LABEL_45;
              }
            }

            else
            {
              v146._object;
              v154;
            }

            v130 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
            swift_allocError(&type metadata for MLCreateError, v130, 0, 0);
            *v131 = 1;
            *(v131 + 8) = 0;
            *(v131 + 24) = 0;
            *(v131 + 40) = 0;
            *(v131 + 48) = 4;
            swift_willThrow();
LABEL_45:
            v103 = v153[1];
            v104 = v155;
            v103(v147._countAndFlagsBits, v155);
            v105 = v150._countAndFlagsBits;
LABEL_46:
            v103(v105, v104);
LABEL_49:
            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v134, &demangling cache variable for type metadata for DataFrame?);
            return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v150._object, &demangling cache variable for type metadata for DataFrame?);
          }

          v152;
          v154;
          (v153[1])(v150._countAndFlagsBits, v155);
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v134, &demangling cache variable for type metadata for DataFrame?);
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v150._object, &demangling cache variable for type metadata for DataFrame?);
          v123 = v112;
        }

        else
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v138, &demangling cache variable for type metadata for DataFrame?);
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v150._object, &demangling cache variable for type metadata for DataFrame?);
          v123 = v106;
        }

        return outlined destroy of MLActivityClassifier.ModelParameters(v123, type metadata accessor for MLActionClassifier.DataSource);
      }

      (v153[1])(v77, v75);
    }

    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(countAndFlagsBits, &demangling cache variable for type metadata for DataFrame?);
    goto LABEL_21;
  }

  return result;
}

void *ActionClassifierTrainingSessionDelegate.pathsByLabel(for:)()
{
  v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v49 = *(v50 - 8);
  v0 = *(v49 + 64);
  v1 = alloca(v0);
  v2 = alloca(v0);
  v51 = &v43;
  v3 = alloca(v0);
  v4 = alloca(v0);
  v5 = &v43;
  v6._countAndFlagsBits = 0x7461506F65646976;
  v6._object = 0xE900000000000068;
  if (_s11TabularData0B5FrameV14containsColumnySbSS_xmtlFSS_Tt0g5(v6))
  {
    DataFrame.subscript.getter(0x7461506F65646976, 0xE900000000000068, &type metadata for String);
    v7._countAndFlagsBits = 0x6C6562616CLL;
    v7._object = 0xE500000000000000;
    if (_s11TabularData0B5FrameV14containsColumnySbSS_xmtlFSS_Tt0g5(v7))
    {
      DataFrame.subscript.getter(0x6C6562616CLL, 0xE500000000000000, &type metadata for String);
      v8 = v50;
      v9 = Column.count.getter(v50);
      v45 = v9;
      if (v9 < 0)
      {
        BUG();
      }

      if (v9)
      {
        v48 = &v43;
        v54 = _swiftEmptyDictionarySingleton;
        v10 = 0;
        v11 = 0;
        do
        {
          Column.subscript.getter(v11, v8);
          if (v53)
          {
            v57 = v53;
            v56 = v52;
          }

          else
          {
            v56 = 0;
            v57 = 0xE000000000000000;
          }

          Column.subscript.getter(v11, v8);
          v44 = v11;
          if (v53)
          {
            v46 = v53;
            v47 = v52;
            _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v10, 0);
          }

          else
          {
            _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v10, 0);
            v47 = 0;
            v46 = 0xE000000000000000;
          }

          v12 = v54;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v54);
          v52 = v12;
          v55 = specialized __RawDictionaryStorage.find<A>(_:)(v56, v57);
          v15 = (v14 & 1) == 0;
          v16 = __OFADD__(v12[2], v15);
          v17 = v12[2] + v15;
          if (v16)
          {
            BUG();
          }

          v18 = v14;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [String]>);
          v19 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v17);
          v20 = v52;
          if (v19)
          {
            v21 = v57;
            v22 = v57;
            v55 = specialized __RawDictionaryStorage.find<A>(_:)(v56, v57);
            LOBYTE(v24) = v24 & 1;
            if ((v18 & 1) != v24)
            {
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v22, v24, v23);
              BUG();
            }
          }

          else
          {
            v21 = v57;
          }

          if ((v18 & 1) == 0)
          {
            v25 = v55;
            v20[(v55 >> 6) + 8] |= 1 << v55;
            v26 = v20[6];
            v27 = 16 * v25;
            *(v26 + v27) = v56;
            *(v26 + v27 + 8) = v21;
            *(v20[7] + 8 * v25) = _swiftEmptyArrayStorage;
            v28 = v20[2];

            v16 = __OFADD__(1, v28);
            v29 = v28 + 1;
            if (v16)
            {
              BUG();
            }

            v20[2] = v29;
          }

          v57 = v21;

          v30 = v20[7];

          v31 = v55;
          v32 = *(v30 + 8 * v55);
          v33 = swift_isUniquelyReferenced_nonNull_native(v32);
          v56 = v30;
          *(v30 + 8 * v31) = v32;
          v54 = v20;
          if (!v33)
          {
            v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32[2] + 1, 1, v32);
            *(v56 + 8 * v55) = v32;
          }

          v34 = v32[2];
          v35 = v57;
          if (v32[3] >> 1 <= v34)
          {
            v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v32[3] >= 2uLL, v34 + 1, 1, v32);
            *(v56 + 8 * v55) = v32;
          }

          v36 = v44 + 1;
          v32[2] = v34 + 1;
          v11 = v36;
          v37 = 2 * v34;
          v32[v37 + 4] = v47;
          v32[v37 + 5] = v46;
          v35;
          v10 = specialized thunk for @callee_guaranteed () -> (@owned [Double]);
          v8 = v50;
        }

        while (v45 != v11);
        v5 = v48;
        v41 = v54;
        v57 = specialized thunk for @callee_guaranteed () -> (@owned [Double]);
      }

      else
      {
        v41 = _swiftEmptyDictionarySingleton;
        v57 = 0;
      }

      v42 = *(v49 + 8);
      v42(v51, v8);
      v42(v5, v8);
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v57, 0);
    }

    else
    {
      v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
      v41 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v40, &protocol witness table for String);
      (*(v49 + 8))(&v43, v50);
    }

    return v41;
  }

  else
  {
    v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
    return Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v38, &protocol witness table for String);
  }
}

uint64_t ActionClassifierTrainingSessionDelegate.deinit()
{
  *(v0 + 24);
  outlined destroy of MLActivityClassifier.ModelParameters(v0 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingParameters, &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
  outlined consume of MLDataTable?(*(v0 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTable), *(v0 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTable + 8));
  outlined consume of Result<_DataTable, Error>(*(v0 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures), *(v0 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures + 8));
  outlined consume of Result<_DataTable, Error>(*(v0 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures), *(v0 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures + 8));

  return v0;
}

uint64_t type metadata accessor for ActionClassifierTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata singleton initialization cache for ActionClassifierTrainingSessionDelegate;
  if (!type metadata singleton initialization cache for ActionClassifierTrainingSessionDelegate)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for ActionClassifierTrainingSessionDelegate);
  }

  return result;
}

uint64_t type metadata completion function for ActionClassifierTrainingSessionDelegate(uint64_t a1)
{
  v4[0] = &unk_343CD8;
  result = type metadata accessor for MLTrainingSessionParameters(319);
  if (v2 <= 0x3F)
  {
    v4[1] = *(result - 8) + 64;
    result = type metadata accessor for MLActionClassifier.PersistentParameters?(319);
    if (v3 <= 0x3F)
    {
      v4[2] = *(result - 8) + 64;
      v4[3] = &unk_343CF0;
      v4[4] = &value witness table for Builtin.Int64 + 64;
      v4[5] = &value witness table for Builtin.Int64 + 64;
      v4[6] = &unk_343D08;
      v4[7] = &unk_343D08;
      v4[8] = &value witness table for Builtin.NativeObject + 64;
      v4[9] = &value witness table for Builtin.NativeObject + 64;
      result = swift_updateClassMetadata2(a1, 256, 10, v4, a1 + 80);
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for MLActionClassifier.PersistentParameters?(uint64_t a1)
{
  result = lazy cache variable for type metadata for MLActionClassifier.PersistentParameters?;
  if (!lazy cache variable for type metadata for MLActionClassifier.PersistentParameters?)
  {
    v2 = type metadata accessor for MLActionClassifier.PersistentParameters(255);
    result = type metadata accessor for Optional(a1, v2);
    if (!v3)
    {
      lazy cache variable for type metadata for MLActionClassifier.PersistentParameters? = result;
    }
  }

  return result;
}

uint64_t protocol witness for TrainingSessionDelegate.extractFeatures(from:) in conformance ActionClassifierTrainingSessionDelegate(Swift::Int a1)
{
  *&v2 = ActionClassifierTrainingSessionDelegate.extractFeatures(from:)(a1);
  if (v5)
  {
    return (*(v1 + 8))(v3, v4, *(&v2 + 1));
  }

  else
  {
    return (*(v1 + 8))(v2, BYTE8(v2));
  }
}

uint64_t protocol witness for TrainingSessionDelegate.train(from:) in conformance ActionClassifierTrainingSessionDelegate(Swift::Int a1)
{
  v7 = ActionClassifierTrainingSessionDelegate.train(from:)(a1);
  if (v5)
  {
    return (*(v1 + 8))(v3, v4, v7.metrics._rawValue, *&v7.finished);
  }

  else
  {
    return (*(v1 + 8))(v7._0, v7.metrics._rawValue, v7.finished);
  }
}

uint64_t protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance ActionClassifierTrainingSessionDelegate(Swift::Int a1)
{
  *&v2 = ActionClassifierTrainingSessionDelegate.evaluate(from:)(a1);
  if (!v5)
  {
    v3 = 1;
    v4 = 1;
  }

  return (*(v1 + 8))(v3, v4, *(&v2 + 1));
}

uint64_t outlined assign with take of MLActionClassifier.PersistentParameters?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
  (*(*(v2 - 8) + 40))(a2, a1, v2);
  return a2;
}

uint64_t closure #1 in _StringGuts.withCString<A>(_:)specialized partial apply(uint64_t a1, uint64_t a2)
{
  return partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:)(a1, a2);
}

{
  return partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:)(a1, a2);
}

{
  return partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:)(a1, a2);
}

{
  return partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:)(a1, a2);
}

{
  return partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:)(a1, a2);
}

unint64_t MLSoundClassifier.ModelParameters.FeatureExtractorType.description.getter()
{
  v1 = 0xD000000000000010;
  if (*(v0 + 8))
  {
    v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    object = v2._object;
    v1 = 0xD000000000000031;
  }

  else
  {
    v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    object = v2._object;
  }

  String.append(_:)(v2);
  object;
  return v1;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLSoundClassifier.ModelParameters.FeatureExtractorType.validate()()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (v1 == 1)
    {
      return;
    }

    _StringGuts.grow(_:)(58);
    v2._object = "vggish revision " + 0x8000000000000000;
    v2._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v2);
    v3 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v5 = v4;
    v2._countAndFlagsBits = v3;
    v2._object = v4;
    String.append(_:)(v2);
    v5;
    v2._object = "und in the model." + 0x8000000000000000;
    v2._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v2);
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  else
  {
    if (v1 == 1)
    {
      return;
    }

    _StringGuts.grow(_:)(45);
    0;
    v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    object = v8._object;
    String.append(_:)(v8);
    object;
    v10._object = "und in the model." + 0x8000000000000000;
    v10._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v10);
    v6 = 0xD000000000000019;
    v7 = "eature print revision " + 0x8000000000000000;
  }

  v11 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v11, 0, 0);
  *v12 = v6;
  *(v12 + 8) = v7;
  *(v12 + 16) = 0;
  *(v12 + 32) = 0;
  *(v12 + 48) = 0;
  swift_willThrow();
}

NSURL *MLGazetteer.write(to:metadata:)(uint64_t a1, const void *a2)
{
  v18 = v2;
  v15 = a2;
  v4 = type metadata accessor for URL(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v16 = *(v3 + 8);
  v9 = *(v3 + 24);
  v14 = &v13;
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(a1, 0x65657474657A6147, 0xE900000000000072, 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (!v2)
  {
    v17 = v4;
    v18 = v5;
    v13 = v9;
    v11 = v9;
    v12 = v14;
    static MLGazetteer.write(dictionary:parameters:to:metadata:)(v16, &v13, v14, v15);

    return (*(v18 + 8))(v12, v17);
  }

  return result;
}

NSURL *static MLGazetteer.write(dictionary:parameters:to:metadata:)(uint64_t a1, NSString **a2, uint64_t a3, const void *a4)
{
  v4 = *a2;
  qmemcpy(v16, a4, sizeof(v16));
  v5 = static _TextUtilities.optionsDictionary(from:)(v16);
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (v4)
  {
    v15 = v4;
  }

  else
  {
    v15 = NLLanguageUndetermined;
    v4 = 0;
  }

  v14 = objc_opt_self(NLGazetteer);
  v7 = v4;
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  v10 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v5);
  v5;
  v16[0] = 0;
  LOBYTE(v10) = outlined bridged method (mnnnbnnn) of @objc static NLGazetteer.writeMLModel(for:language:to:options:)(v6.super.isa, v15, v9, v10, v16, v14);

  v11 = v16[0];
  if (v10)
  {
    v16[0];
  }

  else
  {
    v13 = v16[0];
    _convertNSErrorToError(_:)(v11);

    swift_willThrow();
  }

  return __stack_chk_guard;
}

uint64_t MLGazetteer.write(toFile:metadata:)(Swift::String string, const void *a2)
{
  v15 = v2;
  v17 = a2;
  stringa = string._object;
  v4 = type metadata accessor for URL(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v14 = *v3;
  v18 = *(v3 + 2);
  v9 = *(v3 + 3);
  v19 = &v11;
  result = static _ValidationUtilities.validateWriteLocation(atPath:defaultName:)(string, 0x65657474657A6147, 0xE900000000000072);
  if (!v2)
  {
    v11 = v14;
    v12 = v18;
    v13 = v9;
    MLGazetteer.write(to:metadata:)(v19, v17);
    return (*(v5 + 8))(v19, v4);
  }

  return result;
}

uint64_t outlined bridged method (mnnnbnnn) of @objc static NLGazetteer.writeMLModel(for:language:to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = a4;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v7;
  LODWORD(a5) = [a6 writeGazetteerMLModelForDictionary:a1 language:a2 toURL:a3 options:isa error:a5];

  return a5;
}

id MLMultiArray.cast(to:)(char *a1)
{
  v4 = [v2 dataType];
  if (v4 == &loc_1003C + 4)
  {
    if (a1 == &loc_10020)
    {
      v17 = &v14;
      v9 = alloca(24);
      v10 = alloca(32);
      v16 = v2;
      v7 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
      v8 = partial apply for closure #2 in MLMultiArray.cast(to:);
LABEL_7:
      result = MLMultiArray.withUnsafeBytes<A>(_:)(v8, &v14, v7);
      if (!v1)
      {
        return v14;
      }

      return result;
    }
  }

  else if (v4 == &loc_10020 && a1 == &loc_1003C + 4)
  {
    v17 = &v14;
    v5 = alloca(24);
    v6 = alloca(32);
    v16 = v2;
    v7 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
    v8 = partial apply for closure #1 in MLMultiArray.cast(to:);
    goto LABEL_7;
  }

  if (v4 != a1)
  {
    v14 = 0;
    v15 = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v12._object = "CreateML/_CoreMLUtilities.swift" + 0x8000000000000000;
    v12._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v12);
    v16 = [v2 dataType];
    v13 = type metadata accessor for MLMultiArrayDataType(0);
    _print_unlocked<A, B>(_:_:)(&v16, &v14, v13, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v12._countAndFlagsBits = 0x60206F742060;
    v12._object = 0xE600000000000000;
    String.append(_:)(v12);
    v16 = a1;
    _print_unlocked<A, B>(_:_:)(&v16, &v14, v13, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v12._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v12);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v14, v15, "CreateML/_CoreMLUtilities.swift", 31, 2, 58, 0);
    BUG();
  }

  return v2;
}