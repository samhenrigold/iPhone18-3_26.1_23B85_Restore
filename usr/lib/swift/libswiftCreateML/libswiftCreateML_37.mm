char static Labels.== infix(_:_:)(void *a1, char a2, void *a3, char a4)
{
  if (a2)
  {
    if (a4)
    {
      return _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(a1, a3);
    }

    return 0;
  }

  if (a4)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(a1, a3);
}

uint64_t initializeBufferWithCopyOfBuffer for Labels(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v2;

  return a1;
}

uint64_t *assignWithCopy for Labels(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a2 + 8);
  v3 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v2;

  v3;
  return a1;
}

uint64_t *assignWithTake for Labels(uint64_t *a1, uint64_t *a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4;
  return a1;
}

uint64_t MLWordTagger.prediction(from:)()
{
  v9[0] = 32;
  v9[1] = 0xE100000000000000;
  v1 = lazy protocol witness table accessor for type String and conformance String();
  v2 = StringProtocol.components<A>(separatedBy:)(v9, &type metadata for String, &type metadata for String, v1, v1);
  v3 = *v0;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v2;
  v5 = [v3 predictedLabelsForTokens:isa];
  v6 = v5;

  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v6, &type metadata for String);
  return v7;
}

{
  v1 = *v0;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v3 = [v1 predictedLabelsForTokens:isa];
  v4 = v3;

  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v4, &type metadata for String);
  return v5;
}

uint64_t specialized MLWordTagger.predictions<A>(from:)(uint64_t a1)
{
  v4 = v2;
  v56 = v3;
  v5 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnID<[Int]>) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v66 = &v52;
  v63 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int]>);
  v61 = *(v63 - 8);
  v9 = *(v61 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v67 = &v52;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v68 = &v52;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnID<[String]>) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v62 = *(v64 - 8);
  v17 = *(v62 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v70 = &v52;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v69 = &v52;

  v60 = v5;
  DataFrame.init()(a1);
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  ColumnID.init(_:_:)(1954047348, 0xE400000000000000, v22, v22);
  v65 = a1;
  v23 = *(a1 + 16);
  Column.init(_:capacity:)(&v52, v23, v22);
  ColumnID.init(_:_:)(0x6C6562616CLL, 0xE500000000000000, v22, v22);
  v58 = v22;
  Column.init(_:capacity:)(&v52, v23, v22);
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
  v25 = v66;
  ColumnID.init(_:_:)(0x736874676E656CLL, 0xE700000000000000, v24, v24);
  Column.init(_:capacity:)(v25, v23, v24);
  ColumnID.init(_:_:)(0x6E6F697461636F6CLL, 0xE900000000000073, v24, v24);
  v59 = v24;
  Column.init(_:capacity:)(v25, v23, v24);
  v57 = v23;
  if (v23)
  {
    v26 = (v65 + 40);
    while (1)
    {
      v52 = v26;
      v27 = *v26;

      v28 = MLWordTagger.predictTokensAndLabels(text:)();
      v66 = v4;
      if (v4)
      {
        break;
      }

      v32 = v29;
      v33 = v31;
      v34 = v28;
      v54 = v28;
      v55 = v30;
      v27;
      v71[0] = v32;
      v35 = v64;
      v53 = v32;
      Column.append(_:)(v71, v64);
      v71[0] = v34;
      Column.append(_:)(v71, v35);
      v71[0] = v33;
      v36 = v63;
      Column.append(_:)(v71, v63);
      LOBYTE(v34) = v55;
      v71[0] = v55;
      Column.append(_:)(v71, v36);
      v33;
      v34;
      v53;
      v54;
      v26 = v52 + 2;
      v37 = v57-- == 1;
      v4 = v66;
      if (v37)
      {
        goto LABEL_5;
      }
    }

    v65;
    v27;
    v47 = *(v61 + 8);
    v48 = v63;
    v47(v67, v63);
    v47(v68, v48);
    v49 = *(v62 + 8);
    v50 = v64;
    v49(v70, v64);
    v49(v69, v50);
    v51 = type metadata accessor for DataFrame(0);
    return (*(*(v51 - 8) + 8))(v60, v51);
  }

  else
  {
LABEL_5:
    v65;
    v38 = v58;
    DataFrame.append<A>(column:)(v69, v58);
    DataFrame.append<A>(column:)(v70, v38);
    v39 = v59;
    DataFrame.append<A>(column:)(v68, v59);
    v40 = v67;
    DataFrame.append<A>(column:)(v67, v39);
    v41 = *(v61 + 8);
    v42 = v40;
    v43 = v63;
    v41(v42, v63);
    v41(v68, v43);
    v44 = *(v62 + 8);
    v45 = v64;
    v44(v70, v64);
    return (v44)(v69, v45);
  }
}

uint64_t MLWordTagger.predictions<A>(from:)(uint64_t a1, uint64_t a2, void *a3)
{
  v74 = v4;
  v67 = v5;
  v76 = a3;
  v6 = v3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnID<[Int]>) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v75 = &v62;
  v77 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int]>);
  v71 = *(v77 - 8);
  v10 = *(v71 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v80 = &v62;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v79 = &v62;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnID<[String]>) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v78 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v72 = *(v78 - 8);
  v18 = *(v72 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v82 = &v62;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v81 = &v62;
  v23 = *(a2 - 8);
  v24 = *(v23 + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  (*(v23 + 16))(&v62, a1);
  v27 = Array.init<A>(_:)(&v62, &type metadata for String, a2, v76);
  v70 = v6;
  DataFrame.init()(&v62);
  v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  ColumnID.init(_:_:)(1954047348, 0xE400000000000000, v28, v28);
  v29 = *(v27 + 16);
  Column.init(_:capacity:)(&v62, v29, v28);
  ColumnID.init(_:_:)(0x6C6562616CLL, 0xE500000000000000, v28, v28);
  v68 = v28;
  Column.init(_:capacity:)(&v62, v29, v28);
  v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
  v31 = v75;
  ColumnID.init(_:_:)(0x736874676E656CLL, 0xE700000000000000, v30, v30);
  Column.init(_:capacity:)(v31, v29, v30);
  ColumnID.init(_:_:)(0x6E6F697461636F6CLL, 0xE900000000000073, v30, v30);
  v69 = v30;
  Column.init(_:capacity:)(v31, v29, v30);
  v32 = *(v27 + 16);
  v73 = v27;
  if (v32)
  {
    v33 = (v27 + 40);
    while (1)
    {
      v75 = v32;
      v34 = *v33;

      v35 = v74;
      v36 = MLWordTagger.predictTokensAndLabels(text:)();
      if (v35)
      {
        break;
      }

      v74 = 0;
      v40 = v34;
      v76 = v33;
      v41 = v36;
      v64 = v36;
      v42 = v37;
      v63 = v37;
      v65 = v38;
      v43 = v39;
      v66 = v39;
      v40;
      v83[0] = v42;
      v44 = v78;
      Column.append(_:)(v83, v78);
      v83[0] = v41;
      v45 = v76;
      Column.append(_:)(v83, v44);
      v83[0] = v43;
      v46 = v77;
      Column.append(_:)(v83, v77);
      LOBYTE(v43) = v65;
      v83[0] = v65;
      Column.append(_:)(v83, v46);
      v66;
      v43;
      v63;
      v64;
      v33 = v45 + 2;
      v32 = (v75 - 1);
      if (v75 == (&dword_0 + 1))
      {
        goto LABEL_5;
      }
    }

    v73;
    v34;
    v57 = *(v71 + 8);
    v58 = v77;
    v57(v80, v77);
    v57(v79, v58);
    v59 = *(v72 + 8);
    v60 = v78;
    v59(v82, v78);
    v59(v81, v60);
    v61 = type metadata accessor for DataFrame(0);
    return (*(*(v61 - 8) + 8))(v70, v61);
  }

  else
  {
LABEL_5:
    v73;
    v47 = v68;
    DataFrame.append<A>(column:)(v81, v68);
    DataFrame.append<A>(column:)(v82, v47);
    v48 = v79;
    v49 = v69;
    DataFrame.append<A>(column:)(v79, v69);
    v50 = v80;
    DataFrame.append<A>(column:)(v80, v49);
    v51 = *(v71 + 8);
    v52 = v50;
    v53 = v77;
    v51(v52, v77);
    v51(v48, v53);
    v54 = *(v72 + 8);
    v55 = v78;
    v54(v82, v78);
    return (v54)(v81, v55);
  }
}

unint64_t MLWordTagger.predictTokensAndLabels(text:)()
{
  v21[5] = v0;
  v2 = *v1;
  v3 = String._bridgeToObjectiveC()();
  v4 = NLPSequenceModelCopyPredictedTokensAndLabelsForText(v2, v3);

  if (!v4 || (v21[0] = 0, static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)(v4, v21, &type metadata for AnyHashable, &type metadata for Any + 8, &protocol witness table for AnyHashable), v4, (v5 = v21[0]) == 0))
  {
    v14 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v14, 0, 0);
    v7 = 0xD00000000000001DLL;
    v16 = "n the trained model.";
    goto LABEL_25;
  }

  v25 = 0x7272416C6562614CLL;
  v26 = 0xEA00000000007961;
  AnyHashable.init<A>(_:)(&v25, &type metadata for String, &protocol witness table for String);
  specialized Dictionary.subscript.getter(v21, v5);
  outlined destroy of AnyHashable(v21);
  if (!v24)
  {
    v5;
    outlined destroy of Any?(v23);
    v7 = 0xD000000000000024;
LABEL_15:
    v17 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v17, 0, 0);
    v16 = "No output returned for input.";
    goto LABEL_25;
  }

  v28 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v7 = 0xD000000000000024;
  if (!swift_dynamicCast(&v25, v23, &type metadata for Any + 8, v6, 6))
  {
    v28;
    goto LABEL_15;
  }

  v29 = v25;
  v25 = 0x7272416E656B6F54;
  v26 = 0xEA00000000007961;
  AnyHashable.init<A>(_:)(&v25, &type metadata for String, &protocol witness table for String);
  v8 = v28;
  specialized Dictionary.subscript.getter(v21, v28);
  outlined destroy of AnyHashable(v21);
  if (!v24)
  {
    v29;
    v8;
    outlined destroy of Any?(v23);
LABEL_18:
    v18 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v18, 0, 0);
    v16 = "ray from prediction.";
    goto LABEL_25;
  }

  if (!swift_dynamicCast(&v25, v23, &type metadata for Any + 8, v6, 6))
  {
    v29;
    v28;
    goto LABEL_18;
  }

  v27 = v25;
  v25 = 0xD000000000000017;
  v26 = "ray from prediction." + 0x8000000000000000;
  AnyHashable.init<A>(_:)(&v25, &type metadata for String, &protocol witness table for String);
  v9 = v28;
  specialized Dictionary.subscript.getter(v21, v28);
  outlined destroy of AnyHashable(v21);
  if (!v24)
  {
    v27;
    v29;
    v9;
    outlined destroy of Any?(v23);
LABEL_21:
    v19 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v19, 0, 0);
    v7 = 0xD00000000000002DLL;
    v16 = "TokenRangeLocationArray";
    goto LABEL_25;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
  if (!swift_dynamicCast(&v25, v23, &type metadata for Any + 8, v10, 6))
  {
    v27;
    v29;
    v28;
    goto LABEL_21;
  }

  v22 = v10;
  v11 = v25;
  v25 = 0xD000000000000015;
  v26 = "cation array from prediction." + 0x8000000000000000;
  AnyHashable.init<A>(_:)(&v25, &type metadata for String, &protocol witness table for String);
  v12 = v28;
  specialized Dictionary.subscript.getter(v21, v28);
  v12;
  outlined destroy of AnyHashable(v21);
  if (v24)
  {
    if (swift_dynamicCast(&v25, v23, &type metadata for Any + 8, v22, 6))
    {
      return v29;
    }

    v11;
    v27;
    v29;
  }

  else
  {
    v11;
    v27;
    v29;
    outlined destroy of Any?(v23);
  }

  v20 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v20, 0, 0);
  v7 = 0xD00000000000002BLL;
  v16 = "TokenRangeLengthArray";
LABEL_25:
  *v15 = v7;
  *(v15 + 8) = v16 | 0x8000000000000000;
  *(v15 + 16) = 0;
  *(v15 + 32) = 0;
  *(v15 + 48) = 0;
  return swift_willThrow();
}

uint64_t MLWordTagger.predictions(from:)(uint64_t a1, __m128 a2)
{
  v21 = v3;
  v22 = v4;
  v23 = v2;
  v5 = type metadata accessor for DataFrame(0);
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v24 = &v20;
  v9 = alloca(v6);
  v10 = alloca(v6);
  if (*(a1 + 8) || (v11 = *a1, outlined copy of Result<_DataTable, Error>(*a1, 0), _UntypedColumn.type.getter(), outlined consume of Result<_DataTable, Error>(v11, 0), v27 != 2))
  {
    v18 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v18, 0, 0);
    *v19 = 0xD00000000000002ALL;
    *(v19 + 8) = "logisticRegressor" + 0x8000000000000000;
    *(v19 + 16) = 0;
    *(v19 + 32) = 0;
    *(v19 + 48) = 1;
    return swift_willThrow();
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(v11, 0);
    MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v11, 0, *a2.i64);
    v13 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
    v25 = &v20;
    v14 = v21;
    specialized MLWordTagger.predictions<A>(from:)(MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5);
    result = v13;
    if (!v14)
    {
      v16 = v24;
      v17 = v25;
      *a2.i64 = (*(v26 + 16))(v24, v25, v5);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v16, 0, a2);
      return (*(v26 + 8))(v17, v5);
    }
  }

  return result;
}

void *MLWordTagger.predictionWithConfidence(from:)(uint64_t a1, uint64_t a2)
{
  v8[0] = 32;
  v8[1] = 0xE100000000000000;
  v3 = lazy protocol witness table accessor for type String and conformance String();
  v4 = StringProtocol.components<A>(separatedBy:)(v8, &type metadata for String, &type metadata for String, v3, v3);
  v5 = v4;
  v6 = MLWordTagger.predictionWithAllTagsAndConfidences(tokens:tags:)(v4, *(v2 + 8));
  v5;
  return v6;
}

void *MLWordTagger.predictionWithAllTagsAndConfidences(tokens:tags:)(uint64_t a1, uint64_t a2)
{
  v2 = NLModel.predictedLabelHypotheses(forTokens:maximumCount:)(a1, *(a2 + 16));
  v57 = *(v2 + 16);
  if (!v57)
  {
    v2;
    return _swiftEmptyArrayStorage;
  }

  v3 = *(v2 + 32);
  v4 = v3[2];
  v5 = *(a2 + 16);
  if (v5 < v4)
  {
    v66 = _swiftEmptyArrayStorage;
    goto LABEL_4;
  }

  v66 = _swiftEmptyArrayStorage;
  v9 = 1;
  v58 = v2;
  while (2)
  {
    v61 = v9;
    if (v4 == v5)
    {

      if (swift_isUniquelyReferenced_nonNull_native(v66))
      {
        v10 = v66;
      }

      else
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66[2] + 1, 1, v66);
      }

      v11 = v10[2];
      if (v10[3] >> 1 <= v11)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v10[3] >= 2uLL, v11 + 1, 1, v10);
      }

      v12 = v61;
      v10[2] = v11 + 1;
      v66 = v10;
      v10[v11 + 4] = v3;
      goto LABEL_80;
    }

    specialized _NativeDictionary.makeIterator()(v3);
    v13 = v55;
    v14 = v56;
    v15 = (v54 + 64) >> 6;
    v16 = 0.0;
    while (1)
    {
      if (v14)
      {
        v17 = v13;
        goto LABEL_38;
      }

      v18 = v13 + 1;
      if (__OFADD__(1, v13))
      {
        BUG();
      }

      if (v18 >= v15)
      {
        goto LABEL_39;
      }

      v14 = *(v53 + 8 * v18);
      if (v14)
      {
        v17 = v13 + 1;
        goto LABEL_38;
      }

      v17 = v13 + 2;
      if (v13 + 2 >= v15)
      {
        goto LABEL_39;
      }

      v14 = *(v53 + 8 * v18 + 8);
      if (!v14)
      {
        v17 = v13 + 3;
        if (v13 + 3 >= v15)
        {
          goto LABEL_39;
        }

        v14 = *(v53 + 8 * v18 + 16);
        if (!v14)
        {
          v17 = v13 + 4;
          if (v13 + 4 >= v15)
          {
            goto LABEL_39;
          }

          v14 = *(v53 + 8 * v18 + 24);
          if (!v14)
          {
            v17 = v13 + 5;
            if (v13 + 5 >= v15)
            {
              goto LABEL_39;
            }

            v14 = *(v53 + 8 * v18 + 32);
            if (!v14)
            {
              v17 = v13 + 6;
              if (v13 + 6 >= v15)
              {
                goto LABEL_39;
              }

              v14 = *(v53 + 8 * v18 + 40);
              if (!v14)
              {
                v17 = v13 + 7;
                if (v13 + 7 >= v15)
                {
                  goto LABEL_39;
                }

                v14 = *(v53 + 8 * v18 + 48);
                if (!v14)
                {
                  v17 = v13 + 8;
                  if (v13 + 8 >= v15)
                  {
                    goto LABEL_39;
                  }

                  v14 = *(v53 + 8 * v18 + 56);
                  if (!v14)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }

LABEL_38:
      _BitScanForward64(&v20, v14);
      v14 &= v14 - 1;
      v16 = v16 + *(*(v52 + 56) + ((v17 << 9) | (8 * v20)));
      v13 = v17;
    }

    v19 = v13 + 9;
    while (v19 < v15)
    {
      v14 = *(v53 + 8 * v19++);
      if (v14)
      {
        v17 = v19 - 1;
        goto LABEL_38;
      }
    }

LABEL_39:
    swift_bridgeObjectRetain_n(v3, 3);
    outlined consume of [String : [Double]].Iterator._Variant(v52);
    v21 = a2;
    v22 = *(a2 + 16) - v3[2];
    v3;
    v59 = (1.0 - v16) / v22;
    v23 = 1 << *(a2 + 32);
    v24 = ~(-1 << v23);
    if (v23 >= 64)
    {
      v24 = -1;
    }

    v25 = *(a2 + 56) & v24;
    v65 = (v23 + 63) >> 6;

    v26 = 0;
    while (2)
    {
      if (v25)
      {
LABEL_43:
        v27 = v26;
LABEL_58:
        _BitScanForward64(&v29, v25);
        v63 = v25 & (v25 - 1);
        v30 = *(v21 + 48);
        v62 = v27;
        v31 = (v27 << 10) | (16 * v29);
        v32 = *(v30 + v31);
        v33 = *(v30 + v31 + 8);
        v34 = v3[2];

        if (v34 && (, specialized __RawDictionaryStorage.find<A>(_:)(v32, v33), v36 = v35, v3, (v36 & 1) != 0))
        {
          v33;
          v26 = v62;
          v21 = a2;
          v25 = v63;
        }

        else
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v3);
          v60 = v32;
          v38 = specialized __RawDictionaryStorage.find<A>(_:)(v32, v33);
          v39 = (v37 & 1) == 0;
          v40 = __OFADD__(v3[2], v39);
          v41 = v3[2] + v39;
          if (v40)
          {
            BUG();
          }

          v68 = v37;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Double>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v41))
          {
            v38 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v33);
            LOBYTE(v42) = v42 & 1;
            LOBYTE(v43) = v68;
            v21 = a2;
            if ((v68 & 1) != v42)
            {
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v33, v42, v43);
              BUG();
            }

            v44 = v60;
          }

          else
          {
            v21 = a2;
            v44 = v60;
            LOBYTE(v43) = v68;
          }

          if (v43)
          {
            *(v3[7] + 8 * v38) = v59;
            v33;
          }

          else
          {
            v3[(v38 >> 6) + 8] |= 1 << v38;
            v45 = v3[6];
            v46 = 16 * v38;
            *(v45 + v46) = v44;
            *(v45 + v46 + 8) = v33;
            *(v3[7] + 8 * v38) = v59;
            v47 = v3[2];
            v40 = __OFADD__(1, v47);
            v48 = v47 + 1;
            if (v40)
            {
              BUG();
            }

            v3[2] = v48;
          }

          v26 = v62;
          v25 = v63;
        }

        continue;
      }

      break;
    }

    v28 = v26 + 1;
    if (__OFADD__(1, v26))
    {
      BUG();
    }

    if (v28 >= v65)
    {
      goto LABEL_75;
    }

    v25 = *(v21 + 8 * v28 + 56);
    if (v25)
    {
      v27 = v26 + 1;
      goto LABEL_58;
    }

    v27 = v26 + 2;
    if (v26 + 2 >= v65)
    {
      goto LABEL_75;
    }

    v25 = *(v21 + 8 * v28 + 64);
    if (v25)
    {
      goto LABEL_58;
    }

    v27 = v26 + 3;
    if (v26 + 3 >= v65)
    {
      goto LABEL_75;
    }

    v25 = *(v21 + 8 * v28 + 72);
    if (v25)
    {
      goto LABEL_58;
    }

    v27 = v26 + 4;
    if (v26 + 4 >= v65)
    {
      goto LABEL_75;
    }

    v25 = *(v21 + 8 * v28 + 80);
    if (v25)
    {
      goto LABEL_58;
    }

    v27 = v26 + 5;
    if (v26 + 5 >= v65)
    {
      goto LABEL_75;
    }

    v25 = *(v21 + 8 * v28 + 88);
    if (v25)
    {
      goto LABEL_58;
    }

    v27 = v26 + 6;
    if (v26 + 6 >= v65)
    {
      goto LABEL_75;
    }

    v25 = *(v21 + 8 * v28 + 96);
    if (v25)
    {
      goto LABEL_58;
    }

    v49 = v26 + 7;
    while (v49 < v65)
    {
      v25 = *(v21 + 8 * v49++ + 56);
      if (v25)
      {
        v26 = v49 - 1;
        goto LABEL_43;
      }
    }

LABEL_75:

    if (swift_isUniquelyReferenced_nonNull_native(v66))
    {
      v50 = v66;
    }

    else
    {
      v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66[2] + 1, 1, v66);
    }

    v51 = v50[2];
    if (v50[3] >> 1 <= v51)
    {
      v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v50[3] >= 2uLL, v51 + 1, 1, v50);
    }

    v50[2] = v51 + 1;
    v66 = v50;
    v50[v51 + 4] = v3;
    v3;
    v12 = v61;
LABEL_80:
    LOBYTE(v2) = v58;
    if (v12 != v57)
    {
      if (v12 >= *(v58 + 16))
      {
        BUG();
      }

      v3 = *(v58 + 8 * v12 + 32);
      v9 = v12 + 1;
      v4 = v3[2];
      v5 = *(a2 + 16);
      if (v5 < v4)
      {
LABEL_4:
        v2;
        v66;
        v6 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v6, 0, 0);
        *v7 = 0xD000000000000034;
        *(v7 + 8) = " elements must be Strings." + 0x8000000000000000;
        *(v7 + 16) = 0;
        *(v7 + 32) = 0;
        *(v7 + 48) = 0;
        return swift_willThrow();
      }

      continue;
    }

    break;
  }

  v58;
  return v66;
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.init(from:)(uint64_t a1)
{
  v70 = a1;
  v2 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v58 = &v58;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.Extent<Int>) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v59 = &v58;
  v62 = type metadata accessor for TensorShape(0);
  v72 = *(v62 - 8);
  v9 = *(v72 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v63 = &v58;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.WeightParameters?) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v68 = &v58;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v65 = &v58;
  v71 = type metadata accessor for Tensor(0);
  v76 = *(v71 - 8);
  v18 = *(v76 + 8);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v69 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  v21 = *(*(v69 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v67 = &v58;
  v24 = type metadata accessor for Conv1D(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  NeuralNetwork.Layer.ConvolutionParameters.init()();
  v29 = v70 + *(type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0) + 20);
  v60 = v24;
  v61 = v25;
  (*(v25 + 16))(&v58, v29, v24);
  Conv1D.weight.getter();
  v30 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  v31 = *(v76 + 1);
  v32 = v2;
  v66 = &v58;
  v33 = v71;
  v76 = v31;
  v31(&v58, v71);
  v34 = v67;
  NeuralNetwork.WeightParameters.init(_:updatable:)(v30, 0);
  NeuralNetwork.Layer.ConvolutionParameters.weights.setter(v34);
  v35 = v65;
  v75 = &v58;
  Conv1D.bias.getter();
  v36 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v33);
  v64 = v32;
  if (EnumTagSinglePayload == 1)
  {
    v38 = v35;
    outlined destroy of Tensor?(v35);
  }

  else
  {
    v39 = v35;
    v40 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
    v76(v39, v33);
    v41 = v68;
    NeuralNetwork.WeightParameters.init(_:updatable:)(v40, 0);
    v36 = 0;
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v69);
    v38 = v41;
    NeuralNetwork.Layer.ConvolutionParameters.bias.setter(v41);
  }

  v42 = v33;
  v43 = v66;
  Conv1D.weight.getter();
  v44 = v63;
  Tensor.shape.getter(v38, v36, v45);
  v76(v43, v42);
  v46 = TensorShape.subscript.getter(0);
  v72 = *(v72 + 8);
  v47 = v62;
  v48 = v62;
  (v72)(v44, v62);
  NeuralNetwork.Layer.ConvolutionParameters.outputChannelCount.setter(v46);
  Conv1D.weight.getter();
  Tensor.shape.getter(v46, v48, v49);
  v76(v43, v71);
  v50 = TensorShape.subscript.getter(1);
  (v72)(v44, v47);
  NeuralNetwork.Layer.ConvolutionParameters.kernelChannelCount.setter(v50);
  v51 = Conv1D.groupCount.getter();
  NeuralNetwork.Layer.ConvolutionParameters.groupCount.setter(v51);
  v73 = 1;
  v74 = Conv1D.kernelSize.getter(v51, v47, v52, &v73);
  v53 = v59;
  NeuralNetwork.Extent.init(height:width:)(&v73, &v74, &type metadata for Int, &protocol witness table for Int);
  NeuralNetwork.Layer.ConvolutionParameters.kernelSize.setter(v53);
  v73 = 1;
  v74 = Conv1D.stride.getter(v53, &v74, v54, &v73);
  NeuralNetwork.Extent.init(height:width:)(&v73, &v74, &type metadata for Int, &protocol witness table for Int);
  NeuralNetwork.Layer.ConvolutionParameters.strides.setter(v53);
  v73 = 1;
  v74 = Conv1D.dilation.getter();
  NeuralNetwork.Extent.init(height:width:)(&v73, &v74, &type metadata for Int, &protocol witness table for Int);
  NeuralNetwork.Layer.ConvolutionParameters.dilationFactor.setter(v53);
  v55 = v58;
  NeuralNetwork.ValidPaddingParameters.init()();
  LODWORD(v46) = enum case for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind.valid(_:);
  v56 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind(0);
  (*(*(v56 - 8) + 104))(v55, v46, v56);
  __swift_storeEnumTagSinglePayload(v55, 0, 1, v56);
  NeuralNetwork.Layer.ConvolutionParameters.padding.setter(v55);
  outlined destroy of MLFewShotSoundClassifier.CausalConv1D(v70, type metadata accessor for MLFewShotSoundClassifier.CausalConv1D);
  return (*(v61 + 8))(v75, v60);
}

{
  v69 = a1;
  v2 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v57 = &v57;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.Extent<Int>) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v58 = &v57;
  v61 = type metadata accessor for TensorShape(0);
  v72 = *(v61 - 8);
  v9 = *(v72 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v62 = &v57;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.WeightParameters?) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v66 = &v57;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v64 = &v57;
  v70 = type metadata accessor for Tensor(0);
  v74 = *(v70 - 8);
  v18 = v74[8];
  v19 = alloca(v18);
  v20 = alloca(v18);
  v67 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  v21 = *(*(v67 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v65 = &v57;
  v24 = type metadata accessor for Conv2D(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v73[1] = v2;
  NeuralNetwork.Layer.ConvolutionParameters.init()();
  v29 = v69;
  v59 = v24;
  v60 = v25;
  (*(v25 + 16))(&v57, v69, v24);
  Conv2D.weight.getter(&v57, v29);
  v30 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  v31 = v74[1];
  v63 = &v57;
  v32 = v64;
  v33 = v70;
  v71 = v31;
  v31(&v57, v70);
  v34 = v65;
  NeuralNetwork.WeightParameters.init(_:updatable:)(v30, 0);
  NeuralNetwork.Layer.ConvolutionParameters.weights.setter(v34);
  v74 = &v57;
  v35 = v33;
  Conv2D.bias.getter();
  v36 = 1;
  if (__swift_getEnumTagSinglePayload(v32, 1, v33) == 1)
  {
    v37 = v32;
    outlined destroy of Tensor?(v32);
  }

  else
  {
    v38 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
    v71(v32, v35);
    v39 = v66;
    NeuralNetwork.WeightParameters.init(_:updatable:)(v38, 0);
    v36 = 0;
    __swift_storeEnumTagSinglePayload(v39, 0, 1, v67);
    v37 = v39;
    NeuralNetwork.Layer.ConvolutionParameters.bias.setter(v39);
  }

  v40 = v63;
  Conv2D.weight.getter(v37, v36);
  v41 = v62;
  Tensor.shape.getter(v37, v36, v42);
  v71(v40, v35);
  v43 = TensorShape.subscript.getter(0);
  v72 = *(v72 + 8);
  v44 = v61;
  v45 = v61;
  (v72)(v41, v61);
  NeuralNetwork.Layer.ConvolutionParameters.outputChannelCount.setter(v43);
  Conv2D.weight.getter(v43, v45);
  Tensor.shape.getter(v43, v45, v46);
  v71(v40, v70);
  v47 = TensorShape.subscript.getter(1);
  (v72)(v41, v44);
  NeuralNetwork.Layer.ConvolutionParameters.kernelChannelCount.setter(v47);
  v48 = v74;
  v49 = Conv2D.groupCount.getter();
  NeuralNetwork.Layer.ConvolutionParameters.groupCount.setter(v49);
  v68 = Conv2D.kernelSize.getter();
  Conv2D.kernelSize.getter();
  v73[0] = v50;
  v51 = v58;
  NeuralNetwork.Extent.init(height:width:)(&v68, v73, &type metadata for Int, &protocol witness table for Int);
  NeuralNetwork.Layer.ConvolutionParameters.kernelSize.setter(v51);
  v68 = Conv2D.stride.getter();
  Conv2D.stride.getter();
  v73[0] = v52;
  NeuralNetwork.Extent.init(height:width:)(&v68, v73, &type metadata for Int, &protocol witness table for Int);
  NeuralNetwork.Layer.ConvolutionParameters.strides.setter(v51);
  v68 = Conv2D.dilation.getter();
  Conv2D.dilation.getter();
  v73[0] = v53;
  NeuralNetwork.Extent.init(height:width:)(&v68, v73, &type metadata for Int, &protocol witness table for Int);
  NeuralNetwork.Layer.ConvolutionParameters.dilationFactor.setter(v51);
  v54 = v57;
  NeuralNetwork.ValidPaddingParameters.init()();
  LODWORD(v47) = enum case for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind.valid(_:);
  v55 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind(0);
  (*(*(v55 - 8) + 104))(v54, v47, v55);
  __swift_storeEnumTagSinglePayload(v54, 0, 1, v55);
  NeuralNetwork.Layer.ConvolutionParameters.padding.setter(v54);
  outlined destroy of MLFewShotSoundClassifier.CausalConv1D(v69, type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D);
  return (*(v60 + 8))(v48, v59);
}

uint64_t outlined destroy of MLFewShotSoundClassifier.CausalConv1D(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL static MLObjectDetector.ModelParameters.ModelAlgorithmType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if ((v2 & 1) == 0)
    {
      return *a1 == *a2;
    }

    return 0;
  }

  result = 1;
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLObjectDetector.ModelParameters.ModelAlgorithmType(uint64_t a1, int a2)
{
  result = 0;
  if (a2)
  {
    if (*(a1 + 9))
    {
      return (*a1 + 1);
    }
  }

  return result;
}

void storeEnumTagSinglePayload for MLObjectDetector.ModelParameters.ModelAlgorithmType(uint64_t a1, int a2, int a3)
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

  *a1 = 0;
  *(a1 + 8) = 0;
  *a1 = a2 - 1;
  v3 = 1;
  if (a3)
  {
LABEL_6:
    *(a1 + 9) = v3;
  }
}

uint64_t getEnumTag for MLObjectDetector.ModelParameters.ModelAlgorithmType(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

char destructiveInjectEnumTag for MLObjectDetector.ModelParameters.ModelAlgorithmType(uint64_t a1, int a2)
{
  if (a2)
  {
    *a1 = (a2 - 1);
    result = 1;
  }

  else
  {
    result = 0;
  }

  *(a1 + 8) = result;
  return result;
}

void *MLImageClassifier.DataSource.stratifiedSplit(proportions:seed:)(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    BUG();
  }

  v4 = v3;
  v10 = a1;
  v5 = type metadata accessor for MersenneTwisterGenerator();
  swift_allocObject(v5, 136, 7);
  v9 = MersenneTwisterGenerator.init(seed:)(a2);
  v6 = static _ImageUtilities.getImageURLsAndLabels(from:)(v3);
  if (v2)
  {
  }

  else
  {
    v7 = v6;
    v4 = specialized stratifiedSplitGenerator<A>(proportions:generator:fileURLAndLabel:)(v10, &v9, v6);

    v7;
  }

  return v4;
}

void *MLImageClassifier.DataSource.stratifiedSplit<A>(proportions:generator:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = static _ImageUtilities.getImageURLsAndLabels(from:)(v5);
  if (!v4)
  {
    v8 = v7;
    v6 = stratifiedSplitGenerator<A>(proportions:generator:fileURLAndLabel:)(a1, a2, v7, a3, a4);
    v8;
  }

  return v6;
}

void *initializeBufferWithCopyOfBuffer for MLImageClassifier.DataSource(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) == 0)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;

      v13 = 2;
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        v11 = type metadata accessor for URL(0);
        (*(*(v11 - 8) + 16))(a1, a2, v11);
        v10 = a3;
        v9 = 0;
        goto LABEL_9;
      }

      v7 = type metadata accessor for URL(0);
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      v13 = 1;
    }

    v9 = v13;
    v10 = a3;
LABEL_9:
    swift_storeEnumTagMultiPayload(a1, v10, v9);
    return v3;
  }

  v8 = *a2;
  *v3 = *a2;
  v3 = (v8 + ((v4 + 16) & ~v4));

  return v3;
}

uint64_t destroy for MLImageClassifier.DataSource(void *a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  if (result == 2)
  {
    return *a1;
  }

  if (result <= 1)
  {
    v3 = type metadata accessor for URL(0);
    return (*(*(v3 - 8) + 8))(a1, v3);
  }

  return result;
}

void *initializeWithCopy for MLImageClassifier.DataSource(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
  if (EnumCaseMultiPayload == 2)
  {
    *a1 = *a2;

    v10 = 2;
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      v8 = type metadata accessor for URL(0);
      (*(*(v8 - 8) + 16))(a1, a2, v8);
      v7 = a3;
      v6 = 0;
      goto LABEL_7;
    }

    v5 = type metadata accessor for URL(0);
    (*(*(v5 - 8) + 16))(a1, a2, v5);
    v10 = 1;
  }

  v6 = v10;
  v7 = a3;
LABEL_7:
  swift_storeEnumTagMultiPayload(a1, v7, v6);
  return a1;
}

void *assignWithCopy for MLImageClassifier.DataSource(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of MLImageClassifier.DataSource(a1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;

      v10 = 2;
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        v8 = type metadata accessor for URL(0);
        (*(*(v8 - 8) + 16))(a1, a2, v8);
        v7 = a3;
        v6 = 0;
        goto LABEL_8;
      }

      v5 = type metadata accessor for URL(0);
      (*(*(v5 - 8) + 16))(a1, a2, v5);
      v10 = 1;
    }

    v6 = v10;
    v7 = a3;
LABEL_8:
    swift_storeEnumTagMultiPayload(a1, v7, v6);
  }

  return a1;
}

uint64_t type metadata accessor for MLImageClassifier.DataSource(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLImageClassifier.DataSource;
  if (!type metadata singleton initialization cache for MLImageClassifier.DataSource)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLImageClassifier.DataSource);
  }

  return result;
}

void *initializeWithTake for MLImageClassifier.DataSource(void *__dst, void *__src, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for URL(0);
    (*(*(v8 - 8) + 32))(__dst, __src, v8);
    v7 = 1;
    v6 = a3;
    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    v5 = type metadata accessor for URL(0);
    (*(*(v5 - 8) + 32))(__dst, __src, v5);
    v6 = a3;
    v7 = 0;
LABEL_5:
    swift_storeEnumTagMultiPayload(__dst, v6, v7);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

void *assignWithTake for MLImageClassifier.DataSource(void *__dst, void *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLImageClassifier.DataSource(__dst);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for URL(0);
    (*(*(v8 - 8) + 32))(__dst, __src, v8);
    v7 = 1;
    v6 = a3;
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    v5 = type metadata accessor for URL(0);
    (*(*(v5 - 8) + 32))(__dst, __src, v5);
    v6 = a3;
    v7 = 0;
LABEL_6:
    swift_storeEnumTagMultiPayload(__dst, v6, v7);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata completion function for MLImageClassifier.DataSource(uint64_t a1)
{
  result = type metadata accessor for URL(319);
  if (v4 <= 0x3F)
  {
    v5[0] = *(result - 8) + 64;
    v5[1] = v5[0];
    v5[2] = &value witness table for Builtin.BridgeObject + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 3, v5, v2, v3);
    return 0;
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML22MLBoostedTreeRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML22ijk100V30trainWithRecommendedParameters12trainingData010validationK012targetColumn14featureColumnsSayACG07c5K00K5e24V_ALSgSSSaySSGSgtKFZAC05l6I0V010N21K0OALcASmcfu_AsLcfu0_AOXMtTf1ncn_nTm(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v21 = a3;
  v20 = v3;
  v4 = type metadata accessor for DataFrame(0);
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  outlined init with copy of DataFrame?(a1, &v18);
  if (__swift_getEnumTagSinglePayload(&v18, 1, v4) == 1)
  {
    v11 = v21(0);
    v12 = v20;
    v13 = 1;
    v14 = v11;
  }

  else
  {
    v15 = v19;
    (*(v19 + 32))(&v18, &v18, v4);
    v16 = v20;
    (*(v15 + 16))(v20, &v18, v4);
    v21 = v21(0);
    swift_storeEnumTagMultiPayload(v16, v21, 2);
    (*(v15 + 8))(&v18, v4);
    v12 = v16;
    v13 = 0;
    v14 = v21;
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
}

void *static MLLogisticRegressionClassifier.trainWithRecommendedParameters(trainingData:validationData:targetColumn:featureColumns:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = v5;
  v28 = a5;
  v29 = a4;
  v30 = a3;
  v33 = a2;
  v31 = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.ModelParameters.ValidationData?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = alloca(v10);
  v14 = alloca(v10);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML22MLBoostedTreeRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML22ijk100V30trainWithRecommendedParameters12trainingData010validationK012targetColumn14featureColumnsSayACG07c5K00K5e24V_ALSgSSSaySSGSgtKFZAC05l6I0V010N21K0OALcASmcfu_AsLcfu0_AOXMtTf1ncn_nTm(a2, v27, type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData);
  v32 = v5;
  if (__swift_getEnumTagSinglePayload(&v21, 1, v9) == 1)
  {
    swift_storeEnumTagMultiPayload(&v21, v9, 3);
    if (__swift_getEnumTagSinglePayload(&v21, 1, v9) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v21, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.ModelParameters.ValidationData?);
    }
  }

  else
  {
    outlined init with take of MLClassifierMetrics(&v21, &v21, type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData);
  }

  v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLLogisticRegressionClassifier.ModelParameters>);
  inited = swift_initStackObject(v15, v22);
  *(inited + 16) = 2;
  *(inited + 24) = 4;
  outlined init with copy of MLTrainingSessionParameters(&v21, &v21, type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData);
  MLLogisticRegressionClassifier.ModelParameters.init(validation:maxIterations:l1Penalty:l2Penalty:stepSize:convergenceThreshold:featureRescaling:)(&v21, 10, 1, 0.0, 0.01, 1.0, 0.01);
  outlined init with copy of MLTrainingSessionParameters(&v21, &v21, type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData);
  MLLogisticRegressionClassifier.ModelParameters.init(validation:maxIterations:l1Penalty:l2Penalty:stepSize:convergenceThreshold:featureRescaling:)(&v21, 10, 1, 0.01, 0.01, 1.0, 0.01);
  v33 = &v21;
  v17 = alloca(48);
  v18 = alloca(48);
  v23 = v31;
  v24 = v30;
  v25 = v29;
  v26 = v28;
  ML30MLLogisticRegressionClassifierV15ModelParametersVG_AHsAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML30MLLogisticRegressionClassifierV15ModelParametersVG_AHsAE_pTg5(partial apply for closure #1 in static MLLogisticRegressionClassifier.trainWithRecommendedParameters(trainingData:validationData:targetColumn:featureColumns:), &v21, inited);
  outlined destroy of MLActivityClassifier.ModelParameters(&v21, type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData);
  swift_setDeallocating(inited);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  return ML30MLLogisticRegressionClassifierV15ModelParametersVG_AHsAE_pTg5;
}

void *closure #1 in static MLLogisticRegressionClassifier.trainWithRecommendedParameters(trainingData:validationData:targetColumn:featureColumns:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, uint64_t), void *a6)
{
  v19 = a3;
  v21 = v6;
  v23 = a6;
  v20 = v7;
  v22 = a1;
  v10 = type metadata accessor for DataFrame(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  (*(v11 + 16))(&v17, a2, v10);
  outlined init with copy of MLLogisticRegressionClassifier.ModelParameters(v22, v18);

  v15 = v20;
  result = MLLogisticRegressionClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(&v17, v19, a4, a5, v18);
  if (v15)
  {
    result = v23;
    *v23 = v15;
  }

  return result;
}

uint64_t static MLSupportVectorClassifier.trainWithRecommendedParameters(trainingData:validationData:targetColumn:featureColumns:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v53 = v5;
  v41 = a5;
  v42 = a4;
  v43 = a3;
  v44 = a1;
  v45 = type metadata accessor for DataFrame(0);
  v47 = *(v45 - 8);
  v6 = *(v47 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v50 = &v35;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSupportVectorClassifier.ModelParameters.ValidationData?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = alloca(v13);
  v17 = alloca(v13);
  v46 = &v35;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v20 = v12;
  v21 = v53;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML22MLBoostedTreeRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML22ijk100V30trainWithRecommendedParameters12trainingData010validationK012targetColumn14featureColumnsSayACG07c5K00K5e24V_ALSgSSSaySSGSgtKFZAC05l6I0V010N21K0OALcASmcfu_AsLcfu0_AOXMtTf1ncn_nTm(a2, v40, type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData);
  v53 = v21;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v35, 1, v20);
  v48 = v20;
  if (EnumTagSinglePayload == 1)
  {
    swift_storeEnumTagMultiPayload(&v35, v20, 3);
    if (__swift_getEnumTagSinglePayload(&v35, 1, v20) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v35, &demangling cache variable for type metadata for MLSupportVectorClassifier.ModelParameters.ValidationData?);
    }
  }

  else
  {
    outlined init with take of MLClassifierMetrics(&v35, &v35, type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData);
  }

  v52 = &v35;
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLSupportVectorClassifier>);
  v24 = *(type metadata accessor for MLSupportVectorClassifier(0) - 8);
  v25 = *(v24 + 80);
  v26 = (v25 + 32) & ~*(v24 + 80);
  v27 = swift_allocObject(v23, v26 + *(v24 + 72), v25 | 7);
  *(v27 + 16) = 1;
  *(v27 + 24) = 2;
  v51 = v27;
  v49 = v26 + v27;
  (*(v47 + 16))(v50, v44, v45);
  v28 = v46;
  outlined init with copy of MLTrainingSessionParameters(&v35, v46, type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData);
  memset(v36, 0, sizeof(v36));
  v35 = 11;
  v37 = xmmword_33FD20;
  v38 = 1;
  outlined init with copy of MLTrainingSessionParameters(v28, &v35, type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData);
  v39[3] = v48;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v39);
  outlined init with take of MLClassifierMetrics(&v35, boxed_opaque_existential_0, type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData);
  v30 = v41;

  v31 = v42;

  outlined assign with take of Any?(v39, v36);
  outlined destroy of MLActivityClassifier.ModelParameters(v28, type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData);
  v32 = v53;
  MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(v50, v43, v31, v30, &v35);
  if (v32)
  {
    v33 = v51;
    *(v51 + 16) = 0;

    outlined destroy of MLActivityClassifier.ModelParameters(v52, type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData);
    return v33;
  }

  else
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v52, type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData);
    return v51;
  }
}

uint64_t static MLBoostedTreeClassifier.trainWithRecommendedParameters(trainingData:validationData:targetColumn:featureColumns:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v47 = a5;
  v48 = a4;
  v49 = a3;
  v51 = a1;
  v52 = type metadata accessor for DataFrame(0);
  v53 = *(v52 - 8);
  v6 = *(v53 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v57 = v36;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLBoostedTreeClassifier.ModelParameters.ValidationData?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v54 = v36;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v50 = v36;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v20 = v12;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML22MLBoostedTreeRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML22ijk100V30trainWithRecommendedParameters12trainingData010validationK012targetColumn14featureColumnsSayACG07c5K00K5e24V_ALSgSSSaySSGSgtKFZAC05l6I0V010N21K0OALcASmcfu_AsLcfu0_AOXMtTf1ncn_nTm(a2, v46, type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData);
  v55 = v5;
  v58 = v20;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v20);
  v60 = v36;
  if (EnumTagSinglePayload == 1)
  {
    v22 = v58;
    swift_storeEnumTagMultiPayload(v36, v58, 3);
    if (__swift_getEnumTagSinglePayload(v36, 1, v22) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, &demangling cache variable for type metadata for MLBoostedTreeClassifier.ModelParameters.ValidationData?);
    }
  }

  else
  {
    outlined init with take of MLClassifierMetrics(v36, v36, type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData);
  }

  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLBoostedTreeClassifier>);
  v24 = *(type metadata accessor for MLBoostedTreeClassifier(0) - 8);
  v25 = *(v24 + 80);
  v26 = (v25 + 32) & ~*(v24 + 80);
  v27 = swift_allocObject(v23, v26 + *(v24 + 72), v25 | 7);
  *(v27 + 16) = 1;
  *(v27 + 24) = 2;
  v59 = v27;
  v56 = v26 + v27;
  (*(v53 + 16))(v57, v51, v52);
  v28 = v50;
  outlined init with copy of MLTrainingSessionParameters(v60, v50, type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData);
  memset(v36, 0, sizeof(v36));
  v37 = 6;
  v38 = 10;
  v39 = _mm_loadh_ps(&qword_33D880);
  v40 = 42;
  v41 = 0x3FD3333333333333;
  v42 = 0;
  v43 = 1;
  v44 = xmmword_343970;
  v29 = v54;
  outlined init with copy of MLTrainingSessionParameters(v28, v54, type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData);
  v45[3] = v58;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v45);
  outlined init with take of MLClassifierMetrics(v29, boxed_opaque_existential_0, type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData);
  v31 = v47;

  v32 = v48;

  outlined assign with take of Any?(v45, v36);
  outlined destroy of MLActivityClassifier.ModelParameters(v28, type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData);
  v33 = v55;
  MLBoostedTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(v57, v49, v32, v31, v36);
  if (v33)
  {
    v34 = v59;
    *(v59 + 16) = 0;

    outlined destroy of MLActivityClassifier.ModelParameters(v60, type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData);
    return v34;
  }

  else
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v60, type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData);
    return v59;
  }
}

uint64_t static MLDecisionTreeClassifier.trainWithRecommendedParameters(trainingData:validationData:targetColumn:featureColumns:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, uint64_t))
{
  v53 = v5;
  v41 = a5;
  v42 = a4;
  v43 = a3;
  v44 = a1;
  v45 = type metadata accessor for DataFrame(0);
  v47 = *(v45 - 8);
  v6 = *(v47 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v50 = &v35;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLDecisionTreeClassifier.ModelParameters.ValidationData?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = alloca(v13);
  v17 = alloca(v13);
  v46 = &v35;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v20 = v12;
  v21 = v53;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML22MLBoostedTreeRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML22ijk100V30trainWithRecommendedParameters12trainingData010validationK012targetColumn14featureColumnsSayACG07c5K00K5e24V_ALSgSSSaySSGSgtKFZAC05l6I0V010N21K0OALcASmcfu_AsLcfu0_AOXMtTf1ncn_nTm(a2, v40, type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData);
  v53 = v21;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v35, 1, v20);
  v48 = v20;
  if (EnumTagSinglePayload == 1)
  {
    swift_storeEnumTagMultiPayload(&v35, v20, 3);
    if (__swift_getEnumTagSinglePayload(&v35, 1, v20) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v35, &demangling cache variable for type metadata for MLDecisionTreeClassifier.ModelParameters.ValidationData?);
    }
  }

  else
  {
    outlined init with take of MLClassifierMetrics(&v35, &v35, type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData);
  }

  v52 = &v35;
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLDecisionTreeClassifier>);
  v24 = *(type metadata accessor for MLDecisionTreeClassifier(0) - 8);
  v25 = *(v24 + 80);
  v26 = (v25 + 32) & ~*(v24 + 80);
  v27 = swift_allocObject(v23, v26 + *(v24 + 72), v25 | 7);
  *(v27 + 16) = 1;
  *(v27 + 24) = 2;
  v51 = v27;
  v49 = v26 + v27;
  (*(v47 + 16))(v50, v44, v45);
  v28 = v46;
  outlined init with copy of MLTrainingSessionParameters(&v35, v46, type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData);
  memset(v36, 0, sizeof(v36));
  v35 = 6;
  v37 = _mm_loadh_ps(&qword_33D880);
  v38 = 42;
  outlined init with copy of MLTrainingSessionParameters(v28, &v35, type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData);
  v39[3] = v48;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v39);
  outlined init with take of MLClassifierMetrics(&v35, boxed_opaque_existential_0, type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData);
  v30 = v41;

  v31 = v42;

  outlined assign with take of Any?(v39, v36);
  outlined destroy of MLActivityClassifier.ModelParameters(v28, type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData);
  v32 = v53;
  MLDecisionTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(v50, v43, v31, v30, &v35);
  if (v32)
  {
    v33 = v51;
    *(v51 + 16) = 0;

    outlined destroy of MLActivityClassifier.ModelParameters(v52, type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData);
    return v33;
  }

  else
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v52, type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData);
    return v51;
  }
}

uint64_t static MLRandomForestClassifier.trainWithRecommendedParameters(trainingData:validationData:targetColumn:featureColumns:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5)
{
  v44 = a5;
  v45 = a4;
  v46 = a3;
  v47 = a1;
  v49 = type metadata accessor for DataFrame(0);
  v50 = *(v49 - 8);
  v6 = *(v50 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v54 = v36;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLRandomForestClassifier.ModelParameters.ValidationData?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v51 = v36;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v48 = v36;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v20 = v12;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML22MLBoostedTreeRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML22ijk100V30trainWithRecommendedParameters12trainingData010validationK012targetColumn14featureColumnsSayACG07c5K00K5e24V_ALSgSSSaySSGSgtKFZAC05l6I0V010N21K0OALcASmcfu_AsLcfu0_AOXMtTf1ncn_nTm(a2, v43, type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData);
  v52 = v5;
  v55 = v20;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v20);
  v57 = v36;
  if (EnumTagSinglePayload == 1)
  {
    v22 = v55;
    swift_storeEnumTagMultiPayload(v36, v55, 3);
    if (__swift_getEnumTagSinglePayload(v36, 1, v22) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, &demangling cache variable for type metadata for MLRandomForestClassifier.ModelParameters.ValidationData?);
    }
  }

  else
  {
    outlined init with take of MLClassifierMetrics(v36, v36, type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData);
  }

  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLRandomForestClassifier>);
  v24 = *(type metadata accessor for MLRandomForestClassifier(0) - 8);
  v25 = *(v24 + 80);
  v26 = (v25 + 32) & ~*(v24 + 80);
  v27 = swift_allocObject(v23, v26 + *(v24 + 72), v25 | 7);
  *(v27 + 16) = 1;
  *(v27 + 24) = 2;
  v56 = v27;
  v53 = v26 + v27;
  (*(v50 + 16))(v54, v47, v49);
  v28 = v48;
  outlined init with copy of MLTrainingSessionParameters(v57, v48, type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData);
  memset(v36, 0, sizeof(v36));
  v37 = 6;
  v38 = 10;
  v39 = _mm_loadh_ps(&qword_33D880);
  v40 = 42;
  v41 = xmmword_33E240;
  v29 = v51;
  outlined init with copy of MLTrainingSessionParameters(v28, v51, type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData);
  v42[3] = v55;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v42);
  outlined init with take of MLClassifierMetrics(v29, boxed_opaque_existential_0, type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData);
  v31 = v44;

  v32 = v45;

  outlined assign with take of Any?(v42, v36);
  outlined destroy of MLActivityClassifier.ModelParameters(v28, type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData);
  v33 = v52;
  MLRandomForestClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(v54, v46, v32, v31, v36);
  if (v33)
  {
    v34 = v56;
    *(v56 + 16) = 0;

    outlined destroy of MLActivityClassifier.ModelParameters(v57, type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData);
    return v34;
  }

  else
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v57, type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData);
    return v56;
  }
}

void *static MLLinearRegressor.trainWithRecommendedParameters(trainingData:validationData:targetColumn:featureColumns:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = v5;
  v28 = a5;
  v29 = a4;
  v30 = a3;
  v33 = a2;
  v31 = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.ModelParameters.ValidationData?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = alloca(v10);
  v14 = alloca(v10);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML22MLBoostedTreeRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML22ijk100V30trainWithRecommendedParameters12trainingData010validationK012targetColumn14featureColumnsSayACG07c5K00K5e24V_ALSgSSSaySSGSgtKFZAC05l6I0V010N21K0OALcASmcfu_AsLcfu0_AOXMtTf1ncn_nTm(a2, v27, type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData);
  v32 = v5;
  if (__swift_getEnumTagSinglePayload(&v21, 1, v9) == 1)
  {
    swift_storeEnumTagMultiPayload(&v21, v9, 3);
    if (__swift_getEnumTagSinglePayload(&v21, 1, v9) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v21, &demangling cache variable for type metadata for MLLinearRegressor.ModelParameters.ValidationData?);
    }
  }

  else
  {
    outlined init with take of MLClassifierMetrics(&v21, &v21, type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData);
  }

  v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLLinearRegressor.ModelParameters>);
  inited = swift_initStackObject(v15, v22);
  *(inited + 16) = 2;
  *(inited + 24) = 4;
  outlined init with copy of MLTrainingSessionParameters(&v21, &v21, type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData);
  MLLinearRegressor.ModelParameters.init(validation:maxIterations:l1Penalty:l2Penalty:stepSize:convergenceThreshold:featureRescaling:)(&v21, 10, 1, 0.0, 0.01, 1.0, 0.01);
  outlined init with copy of MLTrainingSessionParameters(&v21, &v21, type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData);
  MLLinearRegressor.ModelParameters.init(validation:maxIterations:l1Penalty:l2Penalty:stepSize:convergenceThreshold:featureRescaling:)(&v21, 10, 1, 0.01, 0.01, 1.0, 0.01);
  v33 = &v21;
  v17 = alloca(48);
  v18 = alloca(48);
  v23 = v31;
  v24 = v30;
  v25 = v29;
  v26 = v28;
  ML17MLLinearRegressorV15ModelParametersVG_AHsAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML17MLLinearRegressorV15ModelParametersVG_AHsAE_pTg5(partial apply for closure #1 in static MLLinearRegressor.trainWithRecommendedParameters(trainingData:validationData:targetColumn:featureColumns:), &v21, inited);
  outlined destroy of MLActivityClassifier.ModelParameters(&v21, type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData);
  swift_setDeallocating(inited);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  return ML17MLLinearRegressorV15ModelParametersVG_AHsAE_pTg5;
}

void *closure #1 in static MLLinearRegressor.trainWithRecommendedParameters(trainingData:validationData:targetColumn:featureColumns:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5, void *a6)
{
  v19 = a3;
  v21 = v6;
  v23 = a6;
  v20 = v7;
  v22 = a1;
  v10 = type metadata accessor for DataFrame(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  (*(v11 + 16))(&v17, a2, v10);
  outlined init with copy of MLLinearRegressor.ModelParameters(v22, v18);

  v15 = v20;
  result = MLLinearRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(&v17, v19, a4, a5, v18);
  if (v15)
  {
    result = v23;
    *v23 = v15;
  }

  return result;
}

uint64_t static MLBoostedTreeRegressor.trainWithRecommendedParameters(trainingData:validationData:targetColumn:featureColumns:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v47 = a5;
  v48 = a4;
  v49 = a3;
  v51 = a1;
  v52 = type metadata accessor for DataFrame(0);
  v53 = *(v52 - 8);
  v6 = *(v53 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v57 = v36;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLBoostedTreeRegressor.ModelParameters.ValidationData?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v54 = v36;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v50 = v36;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v20 = v12;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML22MLBoostedTreeRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML22ijk100V30trainWithRecommendedParameters12trainingData010validationK012targetColumn14featureColumnsSayACG07c5K00K5e24V_ALSgSSSaySSGSgtKFZAC05l6I0V010N21K0OALcASmcfu_AsLcfu0_AOXMtTf1ncn_nTm(a2, v46, type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
  v55 = v5;
  v58 = v20;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v20);
  v60 = v36;
  if (EnumTagSinglePayload == 1)
  {
    v22 = v58;
    swift_storeEnumTagMultiPayload(v36, v58, 3);
    if (__swift_getEnumTagSinglePayload(v36, 1, v22) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, &demangling cache variable for type metadata for MLBoostedTreeRegressor.ModelParameters.ValidationData?);
    }
  }

  else
  {
    outlined init with take of MLClassifierMetrics(v36, v36, type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
  }

  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLBoostedTreeRegressor>);
  v24 = *(type metadata accessor for MLBoostedTreeRegressor(0) - 8);
  v25 = *(v24 + 80);
  v26 = (v25 + 32) & ~*(v24 + 80);
  v27 = swift_allocObject(v23, v26 + *(v24 + 72), v25 | 7);
  *(v27 + 16) = 1;
  *(v27 + 24) = 2;
  v59 = v27;
  v56 = v26 + v27;
  (*(v53 + 16))(v57, v51, v52);
  v28 = v50;
  outlined init with copy of MLTrainingSessionParameters(v60, v50, type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
  memset(v36, 0, sizeof(v36));
  v37 = 6;
  v38 = 10;
  v39 = _mm_loadh_ps(&qword_33D880);
  v40 = 42;
  v41 = 0x3FD3333333333333;
  v42 = 0;
  v43 = 1;
  v44 = xmmword_343970;
  v29 = v54;
  outlined init with copy of MLTrainingSessionParameters(v28, v54, type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
  v45[3] = v58;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v45);
  outlined init with take of MLClassifierMetrics(v29, boxed_opaque_existential_0, type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
  v31 = v47;

  v32 = v48;

  outlined assign with take of Any?(v45, v36);
  outlined destroy of MLActivityClassifier.ModelParameters(v28, type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
  v33 = v55;
  MLBoostedTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(v57, v49, v32, v31, v36);
  if (v33)
  {
    v34 = v59;
    *(v59 + 16) = 0;

    outlined destroy of MLActivityClassifier.ModelParameters(v60, type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
    return v34;
  }

  else
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v60, type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
    return v59;
  }
}

uint64_t static MLDecisionTreeRegressor.trainWithRecommendedParameters(trainingData:validationData:targetColumn:featureColumns:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Int a5)
{
  v55 = v5;
  v43 = a5;
  v44 = a4;
  v45 = a3;
  v46 = a1;
  v47 = type metadata accessor for DataFrame(0);
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v52 = v37;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLDecisionTreeRegressor.ModelParameters.ValidationData?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v50 = v37;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v48 = v37;
  v19 = alloca(v14);
  v20 = alloca(v14);
  v21 = v13;
  v22 = v55;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML22MLBoostedTreeRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML22ijk100V30trainWithRecommendedParameters12trainingData010validationK012targetColumn14featureColumnsSayACG07c5K00K5e24V_ALSgSSSaySSGSgtKFZAC05l6I0V010N21K0OALcASmcfu_AsLcfu0_AOXMtTf1ncn_nTm(a2, v42, type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
  v55 = v22;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v21);
  v49 = v21;
  if (EnumTagSinglePayload == 1)
  {
    swift_storeEnumTagMultiPayload(v37, v21, 3);
    if (__swift_getEnumTagSinglePayload(v37, 1, v21) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v37, &demangling cache variable for type metadata for MLDecisionTreeRegressor.ModelParameters.ValidationData?);
    }
  }

  else
  {
    outlined init with take of MLClassifierMetrics(v37, v37, type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
  }

  v54 = v37;
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLDecisionTreeRegressor>);
  v25 = *(type metadata accessor for MLDecisionTreeRegressor(0) - 8);
  v26 = *(v25 + 80);
  v27 = (v26 + 32) & ~*(v25 + 80);
  v28 = swift_allocObject(v24, v27 + *(v25 + 72), v26 | 7);
  *(v28 + 16) = 1;
  *(v28 + 24) = 2;
  v53 = v28;
  v51 = v27 + v28;
  (*(v6 + 16))(v52, v46, v47);
  v29 = v48;
  outlined init with copy of MLTrainingSessionParameters(v37, v48, type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
  memset(v37, 0, sizeof(v37));
  v38 = 6;
  v39 = _mm_loadh_ps(&qword_33D880);
  v40 = 42;
  v30 = v50;
  outlined init with copy of MLTrainingSessionParameters(v29, v50, type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
  v41[3] = v49;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v41);
  outlined init with take of MLClassifierMetrics(v30, boxed_opaque_existential_0, type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
  v32 = v43;

  v33 = v44;

  outlined assign with take of Any?(v41, v37);
  outlined destroy of MLActivityClassifier.ModelParameters(v29, type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
  v34 = v55;
  MLDecisionTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(v52, v45, v33, v32, v37);
  if (v34)
  {
    v35 = v53;
    *(v53 + 16) = 0;

    outlined destroy of MLActivityClassifier.ModelParameters(v54, type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
    return v35;
  }

  else
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v54, type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
    return v53;
  }
}

uint64_t static MLRandomForestRegressor.trainWithRecommendedParameters(trainingData:validationData:targetColumn:featureColumns:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v47 = a4;
  v48 = a3;
  v49 = a1;
  v51 = type metadata accessor for DataFrame(0);
  v52 = *(v51 - 8);
  v6 = *(v52 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v56 = v36;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLRandomForestRegressor.ModelParameters.ValidationData?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v53 = v36;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v50 = v36;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v20 = v12;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML22MLBoostedTreeRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML22ijk100V30trainWithRecommendedParameters12trainingData010validationK012targetColumn14featureColumnsSayACG07c5K00K5e24V_ALSgSSSaySSGSgtKFZAC05l6I0V010N21K0OALcASmcfu_AsLcfu0_AOXMtTf1ncn_nTm(a2, v45, type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData);
  v54 = v5;
  v57 = v20;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v20);
  v59 = v36;
  if (EnumTagSinglePayload == 1)
  {
    v22 = v57;
    swift_storeEnumTagMultiPayload(v36, v57, 3);
    if (__swift_getEnumTagSinglePayload(v36, 1, v22) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, &demangling cache variable for type metadata for MLRandomForestRegressor.ModelParameters.ValidationData?);
    }
  }

  else
  {
    outlined init with take of MLClassifierMetrics(v36, v36, type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData);
  }

  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLRandomForestRegressor>);
  v24 = *(type metadata accessor for MLRandomForestRegressor(0) - 8);
  v25 = *(v24 + 80);
  v26 = (v25 + 32) & ~*(v24 + 80);
  v27 = swift_allocObject(v23, v26 + *(v24 + 72), v25 | 7);
  *(v27 + 16) = 1;
  *(v27 + 24) = 2;
  v58 = v27;
  v55 = v26 + v27;
  (*(v52 + 16))(v56, v49, v51);
  v28 = v50;
  outlined init with copy of MLTrainingSessionParameters(v59, v50, type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData);
  memset(v36, 0, sizeof(v36));
  v42 = 0;
  v43 = 0;
  v37 = 6;
  v38 = 10;
  v39 = _mm_loadh_ps(&qword_33D880);
  v40 = 42;
  v41 = xmmword_33E240;
  v29 = v53;
  outlined init with copy of MLTrainingSessionParameters(v28, v53, type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData);
  v44[3] = v57;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v44);
  outlined init with take of MLClassifierMetrics(v29, boxed_opaque_existential_0, type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData);
  v31 = v46;

  v32 = v47;

  outlined assign with take of Any?(v44, v36);
  outlined destroy of MLActivityClassifier.ModelParameters(v28, type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData);
  v33 = v54;
  MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(v56, v48, v32, v31, v36);
  if (v33)
  {
    v34 = v58;
    *(v58 + 16) = 0;

    outlined destroy of MLActivityClassifier.ModelParameters(v59, type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData);
    return v34;
  }

  else
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v59, type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData);
    return v58;
  }
}

uint64_t MLHandPoseClassifier.DataSource.keypointsWithAnnotations()(__m128 a1)
{
  v82 = v2;
  v63 = v1;
  v69 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v68 = *(v69 - 8);
  v4 = *(v68 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v64 = &v62;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v75 = &v62;
  v83 = type metadata accessor for AnyColumn(0);
  v74 = *(v83 - 1);
  v10 = v74[8];
  v11 = alloca(v10);
  v12 = alloca(v10);
  v70 = &v62;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v79 = &v62;
  v15 = type metadata accessor for DataFrame(0);
  v84 = *(v15 - 8);
  v16 = *(v84 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v72 = &v62;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v85 = &v62;
  v21 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  outlined init with copy of MLHandPoseClassifier.DataSource(v3, &v62);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v62, v21);
  if (EnumCaseMultiPayload == 5)
  {
    v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
    v31 = v30[12];
    v66 = *(&v62 + v31);
    v81 = *(&v62 + v31 + 8);
    v32 = v30[16];
    v65 = *(&v62 + v32);
    v80 = *(&v62 + v32 + 8);
    v33 = v30[20];
    v34 = *(&v62 + v33);
    v76 = *(&v62 + v33 + 8);
    v73 = v15;
    (*(v84 + 32))(v85, &v62, v15);
    v35 = v79;
    v71 = v34;
    DataFrame.subscript.getter(v34, v76);
    v36 = AnyColumn.wrappedElementType.getter(v34);
    v37 = v74[1];
    (v37)(v35, v83);
    if (v36 == &type metadata for String)
    {
      v67 = v37;
      v41 = v64;
      v42 = v71;
      v43 = v76;
      DataFrame.subscript.getter(v71, v76, &type metadata for String);
      v44 = v82;
      Column<A>.parseAsJSONArrays()();
      if (v44)
      {
        v38 = v85;
        v44;
        (*(v68 + 8))(v41, v69);
        v45 = v75;
        __swift_storeEnumTagSinglePayload(v75, 1, 1, v83);
        outlined destroy of AnyColumn?(v45);
        v82 = 0;
      }

      else
      {
        v82 = 0;
        (*(v68 + 8))(v41, v69);
        v46 = v83;
        __swift_storeEnumTagSinglePayload(v75, 0, 1, v83);
        v47 = v70;
        v48 = v46;
        v49 = v74;
        (v74[4])(v70, v75, v48);
        v50 = v47;
        v51 = v83;
        (v49[2])(v79, v50, v83);

        v52 = v42;
        v38 = v85;
        DataFrame.subscript.setter(v79, v52, v43);
        (v67)(v70, v51);
      }
    }

    else
    {
      v38 = v85;
    }

    v53 = v72;
    v54 = v73;
    v55 = v84;
    *a1.i64 = (*(v84 + 16))(v72, v38, v73);
    v56 = v82;
    MLDataTable.init(_:convertArraysToShapedArrays:)(v53, 0, a1);
    if (v56)
    {
      (*(v55 + 8))(v38, v54);
      v76;
      v80;
      return v81;
    }

    v86 = v77;
    LOBYTE(v87) = v78;
    v57 = v71;
    v58 = v76;
    static MLHandPoseClassifier.reformatKeypointsDataTable(table:featureColumn:)(&v86, v71, v76);
    static _VideoUtilities.renameFeatureTableColumns(table:sessionIdColumn:featureColumn:labelColumn:)(&v86, v66, v81, v57, v58, v65, v80);
    (*(v84 + 8))(v85, v73);
    v81;
    v80;
    v58;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v26 = v63;
    v74 = v64;
    v85 = v65;
    v79 = v66;
    v83 = v67;
    v27 = v68;
    v28 = v69;
    v86 = v62;
    LOBYTE(v87) = v63 & 1;
    v84 = v62;
    outlined copy of Result<_DataTable, Error>(v62, v63);
    v72 = v27;
    v29 = v82;
    static MLHandPoseClassifier.reformatKeypointsDataTable(table:featureColumn:)(&v86, v27, v28);
    if (v29)
    {
      outlined consume of Result<_DataTable, Error>(v86, v87);
      v85;
      v83;
      v28;
      return outlined consume of Result<_DataTable, Error>(v84, v26);
    }

    v40 = v83;
    static _VideoUtilities.renameFeatureTableColumns(table:sessionIdColumn:featureColumn:labelColumn:)(&v86, v74, v85, v72, v28, v79, v83);
    v85;
    v40;
    v28;
    outlined consume of Result<_DataTable, Error>(v84, v26);
  }

  else
  {
    type metadata accessor for MLHandPoseClassifier.FeatureExtractor();
    v39 = v82;
    static MLHandPoseClassifier.FeatureExtractor.extractFeatures(from:startingSessionId:)(v3, 0, a1);
    if (v39)
    {
      return outlined destroy of MLHandPoseClassifier.DataSource(&v62);
    }

    v86 = v77;
    LOBYTE(v87) = v78;
    outlined destroy of MLHandPoseClassifier.DataSource(&v62);
  }

  result = v86;
  v60 = v87;
  v61 = v63;
  *v63 = v86;
  *(v61 + 8) = v60;
  return result;
}

uint64_t type metadata accessor for MLHandPoseClassifier.DataSource(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLHandPoseClassifier.DataSource;
  if (!type metadata singleton initialization cache for MLHandPoseClassifier.DataSource)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLHandPoseClassifier.DataSource);
  }

  return result;
}

uint64_t outlined init with copy of MLHandPoseClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t MLHandPoseClassifier.DataSource.labeledMedia()(__m128 a1)
{
  v3 = static _ImageUtilities.getDataSourceSynopsisForHandPoseClassifier(from:)(v2, a1);
  v6 = v5;
  if (!v1)
  {
    v7 = v3;
    v4;
    v7;
  }

  return v6;
}

void *MLHandPoseClassifier.DataSource.imagesWithAnnotations()(__m128 a1)
{
  *&v155 = v2;
  v161 = v3;
  v147 = v1;
  v160 = type metadata accessor for DataFrame(0);
  v154 = *(v160 - 8);
  v4 = *(v154 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v144 = &v124;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v157._countAndFlagsBits = &v124;
  v9 = type metadata accessor for UTType(0);
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = alloca(v11);
  v13 = alloca(v11);
  ML14_UntypedColumnC_s5Error_pTt1g5 = &v124;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v148 = &v124;
  v158 = type metadata accessor for URL(0);
  v159 = *(v158 - 1);
  v16 = v159[8];
  v17 = alloca(v16);
  v18 = alloca(v16);
  v151 = &v124;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v157._object = &v124;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v153 = &v124;
  v23 = alloca(v16);
  v24 = alloca(v16);
  v156 = &v124;
  v25 = alloca(v16);
  v26 = alloca(v16);
  v149 = &v124;
  v27 = alloca(v16);
  v28 = alloca(v16);
  v150 = &v124;
  v29 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v30 = *(*(v29 - 8) + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  outlined init with copy of MLHandPoseClassifier.DataSource(v161, &v124);
  switch(swift_getEnumCaseMultiPayload(&v124, v29))
  {
    case 0u:
      v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
      v34 = &v124 + v33[12];
      v35 = v33[16];
      v157._countAndFlagsBits = *(&v124 + v35);
      v161 = *(__src + v35);
      v36 = v33[20];
      v154 = *(&v124 + v36);
      v160 = *(__src + v36);
      v37 = v159;
      v38 = v159[4];
      v38(v156, &v124, v158);
      v39 = v153;
      v40 = v34;
      v41 = v158;
      v38(v153, v40, v158);
      (v37[2])(v157._object, v39, v41);
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
      LOBYTE(v127) = 1;
      v128 = 44;
      v129 = 0xE100000000000000;
      v130 = 0;
      v131 = 0xE000000000000000;
      v132 = 92;
      v133 = 0xE100000000000000;
      v134 = 1;
      v135 = 34;
      v136 = 0xE100000000000000;
      v137 = 1;
      v138 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
      v139 = 10;
      v140 = 0xE100000000000000;
      v141 = 0;
      v142 = 1;
      v143 = 0;
      outlined retain of MLDataTable.ParsingOptions(__src);
      outlined release of MLDataTable.ParsingOptions(&v127);
      memcpy(__dst, __src, sizeof(__dst));
      v42 = v155;
      MLDataTable.init(contentsOf:options:)(v157._object, __dst);
      v43 = v158;
      v44 = v37;
      v45 = v156;
      if (v42)
      {
        v46 = v44[1];
        v46(v153, v158);
        v160;
        v161;
        return (v46)(v45, v43);
      }

      *&v155 = 0;
      v162 = v145;
      LOBYTE(v163) = v146;
      v79._countAndFlagsBits = v157._countAndFlagsBits;
      v80 = v161;
      v79._object = v161;
      MLDataTable.subscript.getter(v79);
      object = *&__dst[0];
      v82 = BYTE8(__dst[0]);
      if (BYTE8(__dst[0]) || (outlined copy of Result<_DataTable, Error>(*&__dst[0], 0), v157._object = object, _UntypedColumn.type.getter(), object = v157._object, outlined consume of Result<_DataTable, Error>(v157._object, 0), v145 != 2))
      {
        outlined consume of Result<_DataTable, Error>(object, v82);
        v160;
        *&__dst[0] = 0;
        *(&__dst[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(26);
        SBYTE8(__dst[0]);
        *&__dst[0] = 0x206E6D756C6F43;
        *(&__dst[0] + 1) = 0xE700000000000000;
        v101._countAndFlagsBits = v157._countAndFlagsBits;
        v101._object = v80;
        String.append(_:)(v101);
        v80;
        v101._countAndFlagsBits = 0xD000000000000011;
        String.append(_:)(v101);
        v155 = __dst[0];
        v102 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v102, 0, 0);
        *v103 = v155;
        *(v103 + 16) = 0;
        *(v103 + 32) = 0;
        *(v103 + 48) = 0;
        swift_willThrow();
        v104 = v159[1];
        v105 = v153;
        v106 = v158;
LABEL_28:
        v104(v105, v106);
        v104(v156, v106);
        return outlined consume of Result<_DataTable, Error>(v162, v163);
      }

      outlined copy of Result<_DataTable, Error>(object, 0);
      _UntypedColumn.valueAtIndex(index:)(0, 0.0);
      v84 = *(&__dst[0] + 1);
      v83 = *&__dst[0];
      if (LOBYTE(__dst[1]) != 2)
      {
        outlined consume of MLDataValue(*&__dst[0], *(&__dst[0] + 1), __dst[1]);
        v83 = 0;
        v84 = 0xE000000000000000;
      }

      outlined consume of Result<_DataTable, Error>(v157._object, 0);
      *&__dst[0] = v83;
      *(&__dst[0] + 1) = v84;
      v85 = String.init<A>(_:)(__dst, &type metadata for String, &protocol witness table for String, &protocol witness table for String);
      v87 = v86;
      URL.init(fileURLWithPath:)(v85, v86);
      v87;
      v88 = objc_opt_self(NSFileManager);
      v89 = [v88 defaultManager];
      v90 = v89;
      URL.path.getter(v89);
      v92 = v91;
      v93 = String._bridgeToObjectiveC()();
      v92;
      v94 = [v90 fileExistsAtPath:v93];

      if (v94)
      {
        v95 = v161;
        v96 = v160;
        countAndFlagsBits = v157._countAndFlagsBits;
      }

      else
      {
        v107 = v157._object;
        outlined copy of Result<_DataTable, Error>(v157._object, 0);
        MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v107, 0, 0.0);
        v109 = alloca(24);
        v110 = alloca(32);
        *(&__src[0] + 1) = v156;
        v111 = v155;
        v112 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_SSs5NeverOTg5(partial apply for closure #1 in static _VideoUtilities.getVideoURLsAndAnnotations(from:), &v124, MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5);
        *&v155 = v111;
        MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
        *&__dst[0] = v112;
        v113 = alloca(24);
        v114 = alloca(24);
        *(&__src[0] + 1) = __dst;
        ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
        v116 = v115;
        __dst[0];
        v95 = v161;

        MLDataTable.willMutate()();
        *&__dst[0] = ML14_UntypedColumnC_s5Error_pTt1g5;
        BYTE8(__dst[0]) = v116 & 1;
        countAndFlagsBits = v157._countAndFlagsBits;
        MLDataTable.setColumnImpl(newColumn:named:)(__dst, v157._countAndFlagsBits, v95);
        v95;
        outlined consume of Result<_DataTable, Error>(*&__dst[0], SBYTE8(__dst[0]));
        if (!v163)
        {
          v117 = v162;
          outlined copy of Result<_DataTable, Error>(v162, 0);
          _DataTable.columnNamesDidChange()();
          outlined consume of Result<_DataTable, Error>(v117, 0);
        }

        v96 = v160;
      }

      v118 = v155;
      static _ImageUtilities.renameImageTableColumns(table:imageColumn:labelColumn:)(&v162, countAndFlagsBits, v95, v154, v96);
      v119 = v95;
      v106 = v158;
      v120 = v159;
      if (v118)
      {
        v119;
        v96;
        outlined consume of Result<_DataTable, Error>(v157._object, 0);
        v104 = v120[1];
        v104(v151, v106);
        v105 = v153;
        goto LABEL_28;
      }

      v119;
      v96;
      outlined consume of Result<_DataTable, Error>(v157._object, 0);
      v121 = v120[1];
      v121(v151, v106);
      v121(v153, v106);
      v121(v156, v106);
LABEL_36:
      result = v162;
      v122 = v163;
      v123 = v147;
      *v147 = v162;
      *(v123 + 8) = v122;
      return result;
    case 1u:
      v160 = v9;
      v161 = v10;
      v63 = v149;
      v54 = v158;
      v55 = v159;
      (v159[4])(v149, &v124, v158);
      v64 = ML14_UntypedColumnC_s5Error_pTt1g5;
      static UTType.image.getter();
      v65 = v155;
      v66 = static _FileUtilities.collectFilesLabeledByDirectoryName(at:type:)(v63, v64);
      if (v65)
      {
        (*(v161 + 1))(ML14_UntypedColumnC_s5Error_pTt1g5, v160);
        v59 = v149;
        return (v55[1])(v59, v54);
      }

      v76 = v66;
      v77 = v149;
      v78 = ML14_UntypedColumnC_s5Error_pTt1g5;
      goto LABEL_25;
    case 2u:
      v160 = v9;
      v161 = v10;
      v53 = v150;
      v54 = v158;
      v55 = v159;
      (v159[4])(v150, &v124, v158);
      v56 = v148;
      static UTType.image.getter();
      v57 = v155;
      v58 = static _FileUtilities.collectFilesLabeledByFileName(at:type:)(v53, v56);
      if (v57)
      {
        (*(v161 + 1))(v148, v160);
        v59 = v150;
        return (v55[1])(v59, v54);
      }

      v76 = v58;
      v77 = v150;
      v78 = v148;
LABEL_25:
      (*(v161 + 1))(v78, v160);
      static _ImageUtilities.generateImageTable(_:)(v76);
      v76;
      v100 = v128;
      v162 = v127;
      LOBYTE(v163) = v128 & 1;
      LOBYTE(v128) = v128 & 1;
      outlined copy of Result<_DataTable, Error>(v127, v100);
      static _ImageUtilities.validateImageInput(trainingData:imageColumn:labelColumn:)(&v127, 0x7461506567616D69, 0xE900000000000068, 0x6C6562616CLL, 0xE500000000000000);
      outlined consume of Result<_DataTable, Error>(v127, v128);
      (v159[1])(v77, v54);
      goto LABEL_36;
    case 3u:
      v60 = __src[1];
      v61 = __src[2];
      v62 = __src[3];
      outlined consume of Result<_DataTable, Error>(v124, __src[0]);
      v62;
      v61;
      v60;
      return MLDataTable.init()();
    case 4u:
      v48 = __src[0];
      v161 = *(&__src[0] + 1);
      v159 = *(&__src[1] + 1);
      v49 = *&__src[1];
      v50 = *&__src[2];
      v162 = v124;
      LOBYTE(v163) = __src[0] & 1;
      v158 = v124;
      outlined copy of Result<_DataTable, Error>(v124, __src[0]);
      v51 = v161;
      v161 = v50;
      v52 = v155;
      static _ImageUtilities.renameImageTableColumns(table:imageColumn:labelColumn:)(&v162, v51, v49, v159, v50);
      if (!v52)
      {
        v49;
        v161;
        outlined consume of Result<_DataTable, Error>(v158, v48);
        goto LABEL_36;
      }

      v49;
      v161;
      outlined consume of Result<_DataTable, Error>(v158, v48);
      return outlined consume of Result<_DataTable, Error>(v162, v163);
    case 5u:
      v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *(__src + v67[12]);
      *(__src + v67[16]);
      *(__src + v67[20]);
      MLDataTable.init()();
      return (*(v154 + 8))(&v124, v160);
    case 6u:
      v68 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
      v69 = *(v68 + 48);
      v159 = *(&v124 + v69);
      v158 = *(__src + v69);
      v70 = *(v68 + 64);
      v156 = *(&v124 + v70);
      v161 = *(__src + v70);
      v71 = v157._countAndFlagsBits;
      v72 = v160;
      v73 = v154;
      (*(v154 + 32))(v157._countAndFlagsBits, &v124, v160);
      v74 = v144;
      *a1.i64 = (*(v73 + 16))(v144, v71, v72);
      v75 = v155;
      MLDataTable.init(_:convertArraysToShapedArrays:)(v74, 0, a1);
      if (v75)
      {
        (*(v73 + 8))(v157._countAndFlagsBits, v160);
        v161;
        return v158;
      }

      v162 = v127;
      LOBYTE(v163) = v128;
      v98 = v158;
      v99 = v161;
      static _ImageUtilities.renameImageTableColumns(table:imageColumn:labelColumn:)(&v162, v159, v158, v156, v161);
      (*(v73 + 8))(v157._countAndFlagsBits, v160);
      v98;
      v99;
      goto LABEL_36;
  }
}

uint64_t MLHandPoseClassifier.DataSource.extractKeypoints()(__m128 a1)
{
  v109 = v2;
  in = v3;
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
  v27 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = alloca(v28);
  v30 = alloca(v28);
  outlined init with copy of MLHandPoseClassifier.DataSource(in, &v82);
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
    in = *(&v82 + v40 + 8);
    v98 = v23;
    v42 = *(v23 + 32);
    v97 = v22;
    v90 = v42;
    v42(v105, &v82, v22);
    v43 = v101;
    v107._countAndFlagsBits = v41;
    DataFrame.subscript.getter(v41, in);
    v44 = AnyColumn.wrappedElementType.getter(v41);
    v45 = *(v100 + 8);
    v46 = v106;
    v45(v43, v106);
    if (v44 == &type metadata for String)
    {
      v103 = v45;
      v51 = v85;
      DataFrame.subscript.getter(v107._countAndFlagsBits, in, &type metadata for String);
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
        v74 = in;

        v75 = v43;
        countAndFlagsBits = v107._countAndFlagsBits;
        v49 = v74;
        DataFrame.subscript.setter(v75, v107._countAndFlagsBits, v74);
        v103(v93, v70);
        v58 = countAndFlagsBits;
        goto LABEL_18;
      }

      v49 = in;
      v53;
      (*(v91 + 8))(v51, v92);
      __swift_storeEnumTagSinglePayload(v52, 1, 1, v106);
      v54 = v52;
    }

    else
    {
      v47 = v107._countAndFlagsBits;
      DataFrame.subscript.getter(v107._countAndFlagsBits, in);
      v48 = AnyColumn.wrappedElementType.getter(v47);
      v45(v43, v46);
      if (v48 != &type metadata for Data)
      {
        v49 = in;
LABEL_17:
        v58 = v107._countAndFlagsBits;
LABEL_18:
        v59._countAndFlagsBits = v58;
        v59._object = v49;
        v60 = v105;
        DataFrame.flattenNestedArrays(in:shape:)(v59, &outlined read-only object #0 of MLHandPoseClassifier.DataSource.extractKeypoints());
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
      DataFrame.subscript.getter(v107._countAndFlagsBits, in, &type metadata for Data);
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
        v81 = in;

        v58 = v107._countAndFlagsBits;
        v49 = v81;
        DataFrame.subscript.setter(v101, v107._countAndFlagsBits, v81);
        v103(v96, v106);
        goto LABEL_18;
      }

      v49 = in;
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
    in = v85;
    v105 = v86;
    v32 = v87;
    v33 = v88;
    v34 = v89;
    v107._object = v82;
    LOBYTE(v108) = v83;
    v35 = v109;
    static MLHandPoseClassifier.reformatKeypointsDataTable(table:featureColumn:)(&v107._object, v88, v89);
    if (!v35)
    {
      static _VideoUtilities.renameFeatureTableColumns(table:sessionIdColumn:featureColumn:labelColumn:)(&v107._object, v106, in, v33, v34, v105, v32);
      v34;
      v32;
      in;
      object = v107._object;
      v66 = v108;
      v82 = v107._object;
      v83 = v108;
      outlined copy of Result<_DataTable, Error>(v107._object, v108);
      DataFrame.init(_:)(&v82);
      return outlined consume of Result<_DataTable, Error>(object, v66);
    }

    outlined consume of Result<_DataTable, Error>(v107._object, v108);
    in;
    v32;
    v36 = v34;
    return v36;
  }

  type metadata accessor for MLHandPoseClassifier.FeatureExtractor();
  v50 = v109;
  static MLHandPoseClassifier.FeatureExtractor.extractFeatures(from:startingSessionId:)(in, 0, a1);
  if (!v50)
  {
    v82 = v107._object;
    v83 = v108;
    DataFrame.init(_:)(&v82);
  }

  return outlined destroy of MLHandPoseClassifier.DataSource(&v82);
}

uint64_t MLHandPoseClassifier.DataSource.gatherAnnotatedFileNames()()
{
  v225._object = v1;
  _._countAndFlagsBits = v2;
  v215 = v0;
  v205 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v204 = *(v205 - 8);
  v3 = *(v204 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v206 = &v197;
  v203 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v202 = *(v203 - 8);
  v6 = *(v202 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v212 = &v197;
  v213 = type metadata accessor for CSVType(0);
  v210 = *(v213 - 8);
  v9 = *(v210 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v208 = &v197;
  v12 = *(*(type metadata accessor for CSVReadingOptions(0) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v207 = &v197;
  v15 = *(*(type metadata accessor for JSONReadingOptions(0) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v200 = &v197;
  v222._object = type metadata accessor for DataFrame(0);
  v220 = *(v222._object - 1);
  v18 = *(v220 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v225._countAndFlagsBits = &v197;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v223._object = &v197;
  v23 = alloca(v18);
  v24 = alloca(v18);
  v209 = &v197;
  v25 = alloca(v18);
  v26 = alloca(v18);
  v201 = &v197;
  v27 = alloca(v18);
  v28 = alloca(v18);
  v211 = &v197;
  v29 = type metadata accessor for UTType(0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v222._countAndFlagsBits = &v197;
  v34 = alloca(v31);
  v35 = alloca(v31);
  v217 = &v197;
  v224 = type metadata accessor for URL(0);
  v223._countAndFlagsBits = *(v224 - 1);
  v36 = *(v223._countAndFlagsBits + 64);
  v37 = alloca(v36);
  v38 = alloca(v36);
  v214 = &v197;
  v39 = alloca(v36);
  v40 = alloca(v36);
  v216 = &v197;
  v41 = alloca(v36);
  v42 = alloca(v36);
  v219._countAndFlagsBits = &v197;
  v43 = alloca(v36);
  v44 = alloca(v36);
  v221 = &v197;
  v45 = alloca(v36);
  v46 = alloca(v36);
  v218 = &v197;
  v47 = alloca(v36);
  v48 = alloca(v36);
  v219._object = &v197;
  v49 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v50 = *(*(v49 - 8) + 64);
  v51 = alloca(v50);
  v52 = alloca(v50);
  outlined init with copy of MLHandPoseClassifier.DataSource(_._countAndFlagsBits, &v197);
  switch(swift_getEnumCaseMultiPayload(&v197, v49))
  {
    case 0u:
      v53 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
      v54 = &v197 + v53[12];
      v55 = v53[16];
      v225._countAndFlagsBits = *(&v197 + v55);
      _._countAndFlagsBits = *(&v197 + v55 + 8);
      v56 = v53[20];
      v222._countAndFlagsBits = *(&v197 + v56);
      v223._object = *(&v197 + v56 + 8);
      v57 = *(v223._countAndFlagsBits + 32);
      v58 = v224;
      v57(v221, &v197, v224);
      countAndFlagsBits = v219._countAndFlagsBits;
      v57(v219._countAndFlagsBits, v54, v58);
      v60 = URL.pathExtension.getter();
      v62 = v61;
      if (!(v60 ^ 0x6E6F736A | v61 ^ 0xE400000000000000))
      {
        v61;
        v63 = v216;
LABEL_16:
        (*(v223._countAndFlagsBits + 16))(v63, countAndFlagsBits, v224);
        v102 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
        v103 = swift_allocObject(v102, 64, 7);
        v219._object = v103;
        v103[2] = 2;
        v103[3] = 4;
        v103[4] = v225._countAndFlagsBits;
        v103[5] = _._countAndFlagsBits;
        v103[6] = v222._countAndFlagsBits;
        v103[7] = v223._object;
        v104 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, JSONType)>);
        v217 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, JSONType));
        v105 = *(v217 - 1);
        v213 = *(v105 + 72);
        v106 = *(v105 + 80);
        v107 = (v106 + 32) & ~*(v105 + 80);
        v108 = swift_allocObject(v104, v107 + 2 * v213, v106 | 7);
        *(v108 + 16) = 2;
        *(v108 + 24) = 4;
        v109 = v108 + v107;
        v110 = v108 + v107 + *(v217 + 12);
        *(v108 + v107) = v225._countAndFlagsBits;
        *(v108 + v107 + 8) = _._countAndFlagsBits;
        LODWORD(v218) = enum case for JSONType.string(_:);
        v214 = type metadata accessor for JSONType(0);
        v111 = *(*(v214 - 1) + 104);
        v112 = v110;
        object = v223._object;
        v111(v112, v218, v214);
        v114 = v213;
        v115 = v109 + v213 + *(v217 + 12);
        *(v213 + v109) = v222._countAndFlagsBits;
        *(v114 + v109 + 8) = object;
        v116 = v214;
        v111(v115, v218, v214);
        swift_bridgeObjectRetain_n(_._countAndFlagsBits, 2);
        swift_bridgeObjectRetain_n(object, 2);
        v117 = v108;
        v118 = Dictionary.init(dictionaryLiteral:)(v108, &type metadata for String, v116, &protocol witness table for String);
        v119 = v200;
        JSONReadingOptions.init()(v117);
        v120 = v201;
        v121 = v225._object;
        DataFrame.init(contentsOfJSONFile:columns:types:options:)(v216, v219._object, v118, v119);
        v225._object = v121;
        if (v121)
        {
          v122 = *(v223._countAndFlagsBits + 8);
          v123 = v224;
          v122(v219._countAndFlagsBits, v224);
          v223._object;
          _._countAndFlagsBits;
          v124 = v221;
          v125 = v123;
          return (v122)(v124, v125);
        }

        v144 = v120;
        goto LABEL_33;
      }

      v101 = _stringCompareWithSmolCheck(_:_:expecting:)(v60, v61, 1852797802, 0xE400000000000000, 0);
      v62;
      v63 = v216;
      if (v101)
      {
        goto LABEL_16;
      }

      (*(v223._countAndFlagsBits + 16))(v214, countAndFlagsBits, v224);
      v145 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
      v146 = swift_allocObject(v145, 64, 7);
      v217 = v146;
      v146[2] = 2;
      v146[3] = 4;
      v146[4] = v225._countAndFlagsBits;
      v146[5] = _._countAndFlagsBits;
      v146[6] = v222._countAndFlagsBits;
      v146[7] = v223._object;
      v147 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, CSVType)>);
      v148 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, CSVType));
      v149 = *(v148 - 8);
      v219._object = *(v149 + 72);
      v150 = *(v149 + 80);
      v151 = (v150 + 32) & ~*(v149 + 80);
      v152 = swift_allocObject(v147, v151 + 2 * v219._object, v150 | 7);
      *(v152 + 16) = 2;
      *(v152 + 24) = 4;
      v153 = (v152 + v151);
      v154 = v152 + v151 + *(v148 + 48);
      *v153 = v225._countAndFlagsBits;
      v153[1] = _._countAndFlagsBits;
      LODWORD(v216) = enum case for CSVType.string(_:);
      v155 = *(v210 + 104);
      (v155)(v154, enum case for CSVType.string(_:), v213);
      v218 = v155;
      v156 = v219._object;
      v157 = v153 + v219._object + *(v148 + 48);
      *(v219._object + v153) = v222._countAndFlagsBits;
      v158 = v223._object;
      *(v153 + v156 + 8) = v223._object;
      v159 = v213;
      (v155)(v157, v216, v213);
      swift_bridgeObjectRetain_n(_._countAndFlagsBits, 2);
      swift_bridgeObjectRetain_n(v158, 2);
      v160 = Dictionary.init(dictionaryLiteral:)(v152, &type metadata for String, v159, &protocol witness table for String);
      v219._object = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 1 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
      v216 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 2 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
      v161 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 3 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
      v162 = v208;
      (v218)(v208, enum case for CSVType.double(_:), v159);
      v163 = v207;
      CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)(1, v219._object, v216, v161, v162, 1, 1, 0, 44, 0xE100000000000000, 92);
      v144 = v209;
      v164 = v225._object;
      DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)(v214, v217, 0, 0, 1, v160, v163);
      v225._object = v164;
      if (v164)
      {
        v122 = *(v223._countAndFlagsBits + 8);
        v165 = v224;
        v122(v219._countAndFlagsBits, v224);
        v223._object;
        _._countAndFlagsBits;
        v124 = v221;
        v125 = v165;
        return (v122)(v124, v125);
      }

LABEL_33:
      v166 = _._countAndFlagsBits;
      _._countAndFlagsBits = *(v220 + 32);
      (_._countAndFlagsBits)(v211, v144, v222._object);
      v167 = v206;
      DataFrame.subscript.getter(v225._countAndFlagsBits, v166, &type metadata for String);
      v198 = 0;
      v199 = 0xE000000000000000;
      v168 = lazy protocol witness table accessor for type Column<String> and conformance Column<A>();
      v169 = v205;
      OptionalColumnProtocol.filled(with:)(&v198, v205, v168);
      (*(v204 + 8))(v167, v169);
      v170 = alloca(24);
      v171 = alloca(32);
      v199 = v221;
      v172 = v225._object;
      v173 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData12FilledColumnVyAF0G0VySSGG_SSSgs5NeverOTg5(partial apply for closure #3 in MLObjectDetector.DataSource.gatherAnnotatedFileNames(), &v197);
      v225._object = v172;

      v174 = v173;
      v175 = v225._countAndFlagsBits;
      v176 = v211;
      DataFrame.subscript.setter(v174, v225._countAndFlagsBits, v166, &type metadata for String, &type metadata for String);
      v177._countAndFlagsBits = 0x7461506567616D69;
      v177._object = 0xE900000000000068;
      v178._countAndFlagsBits = v175;
      v178._object = v166;
      DataFrame.renameColumn(_:to:)(v178, v177);
      v166;
      v179._countAndFlagsBits = 0x6C6562616CLL;
      v179._object = 0xE500000000000000;
      v178._countAndFlagsBits = v222._countAndFlagsBits;
      LOBYTE(v175) = v223._object;
      v178._object = v223._object;
      v180 = v176;
      DataFrame.renameColumn(_:to:)(v178, v179);
      v175;
      (*(v202 + 8))(v212, v203);
      v181 = *(v223._countAndFlagsBits + 8);
      v182 = v224;
      v181(v219._countAndFlagsBits, v224);
      v183 = v215;
      v178._object = v180;
      v184 = v222._object;
      (_._countAndFlagsBits)(v215, v178._object, v222._object);
      __swift_storeEnumTagSinglePayload(v183, 0, 1, v184);
      return v181(v221, v182);
    case 1u:
      _._countAndFlagsBits = v29;
      v220 = v30;
      v83 = v218;
      v84 = v218;
      v85 = v224;
      v72 = v223._countAndFlagsBits;
      (*(v223._countAndFlagsBits + 32))(v218, &v197, v224);
      v86 = v222._countAndFlagsBits;
      static UTType.image.getter(v84);
      v87 = v225._object;
      v88 = static _FileUtilities.collectFilesLabeledByDirectoryName(at:type:)(v83, v86);
      v225._object = v87;
      if (v87)
      {
        (*(v220 + 8))(v222._countAndFlagsBits, _._countAndFlagsBits);
        v76 = v218;
        v77 = v85;
        return (*(v72 + 8))(v76, v77);
      }

      v136 = v88;
      (*(v220 + 8))(v222._countAndFlagsBits, _._countAndFlagsBits);
      v137 = v225._object;
      v138 = specialized _NativeDictionary.mapValues<A>(_:)(v136);
      v225._object = v137;
      v136;
      v133 = v215;
      _s11TabularData0B5FrameV8CreateMLE9expanding14keysColumnName06valueshI0ACSDySSSayxGG_S2StclufCSS_Tt3g5(v138, 0x6C6562616CLL, 0xE500000000000000, 0x7461506567616D69, 0xE900000000000068);
      v134 = v218;
      v135 = v85;
      goto LABEL_23;
    case 2u:
      _._countAndFlagsBits = v29;
      v70 = v219._object;
      v71 = v219._object;
      v72 = v223._countAndFlagsBits;
      (*(v223._countAndFlagsBits + 32))(v219._object, &v197, v224);
      v73 = v217;
      static UTType.image.getter(v71);
      v74 = v225._object;
      v75 = static _FileUtilities.collectFilesLabeledByFileName(at:type:)(v70, v73);
      v225._object = v74;
      if (v74)
      {
        (*(v30 + 8))(v217, _._countAndFlagsBits);
        v76 = v219._object;
        v77 = v224;
        return (*(v72 + 8))(v76, v77);
      }

      v130 = v75;
      (*(v30 + 8))(v217, _._countAndFlagsBits);
      v131 = v225._object;
      v132 = specialized _NativeDictionary.mapValues<A>(_:)(v130);
      v225._object = v131;
      v130;
      v133 = v215;
      _s11TabularData0B5FrameV8CreateMLE9expanding14keysColumnName06valueshI0ACSDySSSayxGG_S2StclufCSS_Tt3g5(v132, 0x6C6562616CLL, 0xE500000000000000, 0x7461506567616D69, 0xE900000000000068);
      v134 = v219._object;
      v135 = v224;
LABEL_23:
      (*(v72 + 8))(v134, v135);
      v81 = v133;
      v82 = 0;
LABEL_24:
      v139 = v222._object;
      return __swift_storeEnumTagSinglePayload(v81, v82, 1, v139);
    case 3u:
      v78 = v200;
      v79 = v202;
      v80 = v204;
      outlined consume of Result<_DataTable, Error>(v197, v198);
      v80;
      v79;
      v78;
      v81 = v215;
      v82 = 1;
      goto LABEL_24;
    case 4u:
      v64 = v198;
      _._countAndFlagsBits = v199;
      v65 = v200;
      v219._countAndFlagsBits = v201;
      v224 = v202;
      v198 = v197;
      LOBYTE(v199) = v64 & 1;
      v223._countAndFlagsBits = v197;
      LODWORD(v221) = v64;
      outlined copy of Result<_DataTable, Error>(v197, v64);
      DataFrame.init(_:)(&v198);
      v222._countAndFlagsBits = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any.Type>);
      v66 = swift_allocObject(v222._countAndFlagsBits, 40, 7);
      v66[2] = 1;
      v66[3] = 2;
      v66[4] = &type metadata for String;
      v67._countAndFlagsBits = _._countAndFlagsBits;
      v225._countAndFlagsBits = v65;
      v67._object = v65;
      DataFrame.validateColumnTypes(_:_:context:)(v67, v66, __PAIR128__(0xEF656D616E20656CLL, 0x6966206567616D49));
      v225._object = v68;
      if (v68)
      {
        v66;
        (*(v220 + 8))(v223._object, v222._object);
        outlined consume of Result<_DataTable, Error>(v223._countAndFlagsBits, v221);
        v69 = v224;
LABEL_20:
        v69;
        v100 = v225._countAndFlagsBits;
        return v100;
      }

      v66;
      v126 = swift_allocObject(v222._countAndFlagsBits, 40, 7);
      v126[2] = 1;
      v126[3] = 2;
      v126[4] = &type metadata for String;
      v127._countAndFlagsBits = v219._countAndFlagsBits;
      v128 = v224;
      v127._object = v224;
      DataFrame.validateColumnTypes(_:_:context:)(v127, v126, __PAIR128__(0xE500000000000000, 0x6C6562614CLL));
      v225._object = v129;
      if (v129)
      {
        v126;
        (*(v220 + 8))(v223._object, v222._object);
        outlined consume of Result<_DataTable, Error>(v223._countAndFlagsBits, v221);
        v69 = v128;
        goto LABEL_20;
      }

      v126;
      v185._countAndFlagsBits = 0x7461506567616D69;
      v185._object = 0xE900000000000068;
      v186._countAndFlagsBits = _._countAndFlagsBits;
      v187 = v225._countAndFlagsBits;
      v186._object = v225._countAndFlagsBits;
      v188 = v223._object;
      DataFrame.renameColumn(_:to:)(v186, v185);
      v187;
      v186._countAndFlagsBits = v219._countAndFlagsBits;
      v186._object = v128;
      v189._countAndFlagsBits = 0x6C6562616CLL;
      v189._object = 0xE500000000000000;
      DataFrame.renameColumn(_:to:)(v186, v189);
      outlined consume of Result<_DataTable, Error>(v223._countAndFlagsBits, v221);
      v128;
      v190 = v215;
      v191 = v222._object;
      (*(v220 + 32))(v215, v188, v222._object);
      goto LABEL_37;
    case 5u:
      v90 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *(&v197 + v90[12] + 8);
      *(&v197 + v90[16] + 8);
      *(&v197 + v90[20] + 8);
      v91 = v222._object;
      __swift_storeEnumTagSinglePayload(v215, 1, 1, v222._object);
      return (*(v220 + 8))(&v197, v91);
    case 6u:
      v92 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
      v93 = *(v92 + 48);
      v94 = *(&v197 + v93);
      _._countAndFlagsBits = *(&v197 + v93 + 8);
      v95 = *(v92 + 64);
      v223._countAndFlagsBits = *(&v197 + v95);
      v224 = *(&v197 + v95 + 8);
      v223._object = *(v220 + 32);
      (v223._object)(v225._countAndFlagsBits, &v197, v222._object);
      v221 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any.Type>);
      v96 = swift_allocObject(v221, 40, 7);
      v96[2] = 1;
      v96[3] = 2;
      v96[4] = &type metadata for String;
      v219._countAndFlagsBits = v94;
      v97._countAndFlagsBits = v94;
      v98 = _._countAndFlagsBits;
      v97._object = _._countAndFlagsBits;
      DataFrame.validateColumnTypes(_:_:context:)(v97, v96, __PAIR128__(0xEF656D616E20656CLL, 0x6966206567616D49));
      v225._object = v99;
      if (v99)
      {
        v96;
        (*(v220 + 8))(v225._countAndFlagsBits, v222._object);
        v98;
        v100 = v224;
        return v100;
      }

      v96;
      v140 = swift_allocObject(v221, 40, 7);
      v140[2] = 1;
      v140[3] = 2;
      v140[4] = &type metadata for String;
      v141._countAndFlagsBits = v223._countAndFlagsBits;
      v142 = v224;
      v141._object = v224;
      DataFrame.validateColumnTypes(_:_:context:)(v141, v140, __PAIR128__(0xE500000000000000, 0x6C6562614CLL));
      v225._object = v143;
      if (v143)
      {
        v140;
        (*(v220 + 8))(v225._countAndFlagsBits, v222._object);
        _._countAndFlagsBits;
        v100 = v142;
        return v100;
      }

      v140;
      v192._countAndFlagsBits = 0x7461506567616D69;
      v192._object = 0xE900000000000068;
      v193._countAndFlagsBits = v219._countAndFlagsBits;
      v194 = _._countAndFlagsBits;
      v193._object = _._countAndFlagsBits;
      v195 = v225._countAndFlagsBits;
      DataFrame.renameColumn(_:to:)(v193, v192);
      v194;
      v193._countAndFlagsBits = v223._countAndFlagsBits;
      v193._object = v142;
      v196._countAndFlagsBits = 0x6C6562616CLL;
      v196._object = 0xE500000000000000;
      DataFrame.renameColumn(_:to:)(v193, v196);
      v142;
      v190 = v215;
      v191 = v222._object;
      (v223._object)(v215, v195, v222._object);
LABEL_37:
      v81 = v190;
      v82 = 0;
      v139 = v191;
      return __swift_storeEnumTagSinglePayload(v81, v82, 1, v139);
  }
}

uint64_t MLHandPoseClassifier.DataSource.stratifiedSplit(proportions:seed:labelColumn:)(void *a1, uint64_t a2, uint64_t a3, void *a4, __m128 a5)
{
  v8 = v6;
  v34 = a4;
  v35._countAndFlagsBits = a3;
  v39 = a2;
  v35._object = a1;
  v36 = v5;
  v9 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  outlined init with copy of MLHandPoseClassifier.DataSource(v7, &v32);
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
    *a5.i64 = (*(*(v19 - 8) + 8))(&v32, v19);
LABEL_5:
    MLHandPoseClassifier.DataSource.keypointsWithAnnotations()(a5);
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
    specialized stratifiedSplitBySequenceGenerator<A>(proportions:generator:dataTable:by:on:)(v35._object, &v40, v25, v38, *v37, *v42, *a5.i64, v31);
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

  MLHandPoseClassifier.DataSource.imagesWithAnnotations()(a5);
  if (v6)
  {
    return outlined destroy of MLHandPoseClassifier.DataSource(&v32);
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
  return outlined destroy of MLHandPoseClassifier.DataSource(&v32);
}

void *_sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<String>);
    v28 = static _SetStorage.allocate(capacity:)(v2);
    v24 = *(a1 + 16);
    if (v24)
    {
      v25 = a1 + 32;
      v3 = 0;
      v26 = a1;
      do
      {
        if (v3 >= *(v1 + 16))
        {
          BUG();
        }

        v4 = *(v25 + 16 * v3);
        v5 = *(v25 + 16 * v3 + 8);
        Hasher.init(_seed:)(v28[5]);

        String.hash(into:)(v23, v4);
        v6 = Hasher._finalize()();
        v7 = v28;
        v8 = ~(-1 << *(v28 + 32));
        v9 = v8 & v6;
        v10 = (v8 & v6) >> 6;
        v11 = v28[v10 + 7];
        v12 = 1 << v9;
        if (_bittest64(&v11, v9))
        {
          v13 = v28[6];
          v14 = *(v13 + 16 * v9);
          v15 = *(v13 + 16 * v9 + 8);
          v16 = v4;
          if (v14 != v4 || v15 != v5)
          {
            v27 = v28[6];
            while ((_stringCompareWithSmolCheck(_:_:expecting:)(v14, v15, v16, v5, 0) & 1) == 0)
            {
              v9 = v8 & (v9 + 1);
              v10 = v9 >> 6;
              v7 = v28;
              v11 = v28[(v9 >> 6) + 7];
              v12 = 1 << v9;
              if (!_bittest64(&v11, v9))
              {
                goto LABEL_15;
              }

              v14 = *(v27 + 16 * v9);
              v15 = *(v27 + 16 * v9 + 8);
              v16 = v4;
              if (v14 == v4 && v15 == v5)
              {
                break;
              }
            }
          }

          v5;
        }

        else
        {
LABEL_15:
          v7[v10 + 7] = v11 | v12;
          v17 = v7[6];
          v18 = 16 * v9;
          *(v17 + v18) = v4;
          *(v17 + v18 + 8) = v5;
          v19 = v7[2];
          v20 = __OFADD__(1, v19);
          v21 = v19 + 1;
          if (v20)
          {
            BUG();
          }

          v7[2] = v21;
        }

        ++v3;
        v1 = v26;
      }

      while (v3 != v24);
    }
  }

  else
  {
    v28 = &_swiftEmptySetSingleton;
  }

  v1;
  return v28;
}

void *initializeBufferWithCopyOfBuffer for MLHandPoseClassifier.DataSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v12 = *a2;
    *v3 = *a2;
    v3 = (v12 + ((v4 + 16) & ~v4));
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload(a2, a3))
    {
      case 0u:
        v6 = type metadata accessor for URL(0);
        v30 = *(*(v6 - 8) + 16);
        v30(a1, a2, v6);
        v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v30(a1 + v7[12], a2 + v7[12], v6);
        v8 = v7[16];
        *(a1 + v8) = *(a2 + v8);
        *(a1 + v8 + 8) = *(a2 + v8 + 8);
        v9 = v7[20];
        *(a1 + v9) = *(a2 + v9);
        *(a1 + v9 + 8) = *(a2 + v9 + 8);

        v10 = a3;
        v11 = 0;
        goto LABEL_12;
      case 1u:
        v18 = type metadata accessor for URL(0);
        (*(*(v18 - 8) + 16))(a1, a2, v18);
        v29 = 1;
        goto LABEL_11;
      case 2u:
        v15 = type metadata accessor for URL(0);
        (*(*(v15 - 8) + 16))(a1, a2, v15);
        v29 = 2;
        goto LABEL_11;
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

        v29 = 3;
        goto LABEL_11;
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

        v29 = 4;
        goto LABEL_11;
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

        v29 = 5;
        goto LABEL_11;
      case 6u:
        v24 = type metadata accessor for DataFrame(0);
        (*(*(v24 - 8) + 16))(a1, a2, v24);
        v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        v26 = *(v25 + 48);
        *(a1 + v26) = *(a2 + v26);
        *(a1 + v26 + 8) = *(a2 + v26 + 8);
        v27 = *(v25 + 64);
        *(a1 + v27) = *(a2 + v27);
        *(a1 + v27 + 8) = *(a2 + v27 + 8);

        v29 = 6;
LABEL_11:
        v11 = v29;
        v10 = a3;
LABEL_12:
        swift_storeEnumTagMultiPayload(a1, v10, v11);
        break;
    }
  }

  return v3;
}

uint64_t destroy for MLHandPoseClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  switch(result)
  {
    case 0:
      v4 = type metadata accessor for URL(0);
      v5 = *(*(v4 - 8) + 8);
      v5(a1, v4);
      v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
      v5(a1 + v6[12], v4);
      *(a1 + v6[16] + 8);
      v7 = v6[20];
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
      return *(a1 + 40);
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
      v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
      *(a1 + *(v11 + 48) + 8);
      v7 = *(v11 + 64);
LABEL_8:
      result = *(a1 + v7 + 8);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t initializeWithCopy for MLHandPoseClassifier.DataSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload(a2, a3))
  {
    case 0u:
      v4 = type metadata accessor for URL(0);
      v27 = *(*(v4 - 8) + 16);
      v27(a1, a2, v4);
      v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
      v27(a1 + v5[12], a2 + v5[12], v4);
      v6 = v5[16];
      *(a1 + v6) = *(a2 + v6);
      *(a1 + v6 + 8) = *(a2 + v6 + 8);
      v7 = v5[20];
      *(a1 + v7) = *(a2 + v7);
      *(a1 + v7 + 8) = *(a2 + v7 + 8);

      v8 = a3;
      v9 = 0;
      goto LABEL_10;
    case 1u:
      v15 = type metadata accessor for URL(0);
      (*(*(v15 - 8) + 16))(a1, a2, v15);
      v26 = 1;
      goto LABEL_9;
    case 2u:
      v12 = type metadata accessor for URL(0);
      (*(*(v12 - 8) + 16))(a1, a2, v12);
      v26 = 2;
      goto LABEL_9;
    case 3u:
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

      v26 = 3;
      goto LABEL_9;
    case 4u:
      v10 = *a2;
      v11 = *(a2 + 8);
      outlined copy of Result<_DataTable, Error>(*a2, v11);
      *a1 = v10;
      *(a1 + 8) = v11;
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);

      v26 = 4;
      goto LABEL_9;
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

      v26 = 5;
      goto LABEL_9;
    case 6u:
      v21 = type metadata accessor for DataFrame(0);
      (*(*(v21 - 8) + 16))(a1, a2, v21);
      v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
      v23 = *(v22 + 48);
      *(a1 + v23) = *(a2 + v23);
      *(a1 + v23 + 8) = *(a2 + v23 + 8);
      v24 = *(v22 + 64);
      *(a1 + v24) = *(a2 + v24);
      *(a1 + v24 + 8) = *(a2 + v24 + 8);

      v26 = 6;
LABEL_9:
      v9 = v26;
      v8 = a3;
LABEL_10:
      swift_storeEnumTagMultiPayload(a1, v8, v9);
      return a1;
  }
}

uint64_t assignWithCopy for MLHandPoseClassifier.DataSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of MLHandPoseClassifier.DataSource(a1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
    switch(EnumCaseMultiPayload)
    {
      case 0u:
        v26 = EnumCaseMultiPayload;
        v8 = type metadata accessor for URL(0);
        v24 = *(*(v8 - 8) + 16);
        v24(a1, a2, v8);
        v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v10 = v8;
        EnumCaseMultiPayload = v26;
        v24(a1 + v9[12], a2 + v9[12], v10);
        v11 = v9[16];
        *(a1 + v11) = *(a2 + v11);
        *(a1 + v11 + 8) = *(a2 + v11 + 8);
        v12 = v9[20];
        goto LABEL_10;
      case 1u:
      case 2u:
        v5 = type metadata accessor for URL(0);
        (*(*(v5 - 8) + 16))(a1, a2, v5);
        goto LABEL_13;
      case 3u:
        v13 = *a2;
        v27 = EnumCaseMultiPayload;
        v14 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v14);
        *a1 = v13;
        *(a1 + 8) = v14;
        EnumCaseMultiPayload = v27;
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = *(a2 + 56);
        goto LABEL_8;
      case 4u:
        v6 = *a2;
        v25 = EnumCaseMultiPayload;
        v7 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v7);
        *a1 = v6;
        *(a1 + 8) = v7;
        EnumCaseMultiPayload = v25;
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        goto LABEL_11;
      case 5u:
        v15 = type metadata accessor for DataFrame(0);
        (*(*(v15 - 8) + 16))(a1, a2, v15);
        v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v17 = v16[12];
        *(a1 + v17) = *(a2 + v17);
        *(a1 + v17 + 8) = *(a2 + v17 + 8);
        v18 = v16[16];
        *(a1 + v18) = *(a2 + v18);
        *(a1 + v18 + 8) = *(a2 + v18 + 8);
        v19 = v16[20];
        *(a1 + v19) = *(a2 + v19);
        *(a1 + v19 + 8) = *(a2 + v19 + 8);
LABEL_8:

        break;
      case 6u:
        v20 = type metadata accessor for DataFrame(0);
        (*(*(v20 - 8) + 16))(a1, a2, v20);
        v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        v22 = *(v21 + 48);
        *(a1 + v22) = *(a2 + v22);
        *(a1 + v22 + 8) = *(a2 + v22 + 8);
        v12 = *(v21 + 64);
LABEL_10:
        *(a1 + v12) = *(a2 + v12);
        *(a1 + v12 + 8) = *(a2 + v12 + 8);
LABEL_11:

        break;
    }

LABEL_13:
    swift_storeEnumTagMultiPayload(a1, a3, EnumCaseMultiPayload);
  }

  return a1;
}

char *initializeWithTake for MLHandPoseClassifier.DataSource(char *__dst, char *__src, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload(__src, a3))
  {
    case 0u:
      v4 = type metadata accessor for URL(0);
      v16 = *(*(v4 - 8) + 32);
      v16(__dst, __src, v4);
      v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
      v16(&__dst[v5[12]], &__src[v5[12]], v4);
      *&__dst[v5[16]] = *&__src[v5[16]];
      *&__dst[v5[20]] = *&__src[v5[20]];
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
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
      *&__dst[*(v14 + 48)] = *&__src[*(v14 + 48)];
      *&__dst[*(v14 + 64)] = *&__src[*(v14 + 64)];
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

char *assignWithTake for MLHandPoseClassifier.DataSource(char *__dst, char *__src, uint64_t a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLHandPoseClassifier.DataSource(__dst);
    switch(swift_getEnumCaseMultiPayload(__src, a3))
    {
      case 0u:
        v4 = type metadata accessor for URL(0);
        v16 = *(*(v4 - 8) + 32);
        v16(__dst, __src, v4);
        v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v16(&__dst[v5[12]], &__src[v5[12]], v4);
        *&__dst[v5[16]] = *&__src[v5[16]];
        *&__dst[v5[20]] = *&__src[v5[20]];
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
        v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        *&__dst[*(v14 + 48)] = *&__src[*(v14 + 48)];
        *&__dst[*(v14 + 64)] = *&__src[*(v14 + 64)];
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

uint64_t type metadata completion function for MLHandPoseClassifier.DataSource(uint64_t a1)
{
  v1 = type metadata accessor for URL(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v4 = *(v1 - 8) + 64;
    v12 = v4;
    v13 = v4;
    v14 = &unk_3482A8;
    v15 = &unk_3482A8;
    swift_getTupleTypeLayout(v11, 0, 4);
    v18[0] = v11;
    v18[1] = v4;
    v18[2] = v4;
    v18[3] = &unk_3482C0;
    v18[4] = &unk_3482D8;
    v5 = type metadata accessor for DataFrame(319);
    v2 = v5;
    if (v6 <= 0x3F)
    {
      v12 = *(v5 - 8) + 64;
      v7 = v12;
      v13 = &unk_3482A8;
      v14 = &unk_3482A8;
      v15 = &unk_3482A8;
      v2 = 0;
      swift_getTupleTypeLayout(v16, 0, 4);
      v18[5] = v16;
      swift_getTupleTypeLayout3(v17, v7, &unk_3482A8, &unk_3482A8);
      v18[6] = v17;
      swift_initEnumMetadataMultiPayload(a1, 256, 7, v18, v8, v9);
    }
  }

  return v2;
}

uint64_t static MLLinearRegressor.ModelParameters.firstIncompatibility(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 32) == *(a2 + 32))
  {
    v4 = *(a1 + 40);
    if (v4 == *(a2 + 40))
    {
      v5 = *(a1 + 48);
      if (v5 == *(a2 + 48))
      {
        v6 = *(a1 + 56);
        if (v6 == *(a2 + 56))
        {
          v7 = *(a1 + 64);
          if (v7 == *(a2 + 64))
          {
            v8 = *(a1 + 72);
            v9 = *(a2 + 72);
            if (v8 == v9)
            {
              v15 = 0;
              v14 = 0;
              v11 = 0;
              v12 = 0;
              result = 0;
              v13 = 0;
            }

            else
            {
              result = 0x65736C6166;
              v11 = 0x65736C6166;
              if (v8)
              {
                v11 = 1702195828;
              }

              v12 = (v8 ^ 1u | 0xFFFFFFFFFFFFFFE4) << 56;
              if (v9)
              {
                result = 1702195828;
              }

              v13 = (v9 ^ 1u | 0xFFFFFFFFFFFFFFE4) << 56;
              v14 = 0xEF676E696C616373;
              v15 = 0x2065727574616546;
            }
          }

          else
          {
            v14 = "e at least one element" + 0x8000000000000000;
            v26 = *(a2 + 64);
            v11 = Double.description.getter(v7);
            v12 = v22;
            result = Double.description.getter(v26);
            v15 = 0xD000000000000015;
          }
        }

        else
        {
          v25 = *(a2 + 56);
          v11 = Double.description.getter(v6);
          v12 = v21;
          result = Double.description.getter(v25);
          v14 = 0xE900000000000065;
          v15 = 0x7A69732070657453;
        }
      }

      else
      {
        v14 = 0xEA00000000007974;
        v24 = *(a2 + 48);
        v11 = Double.description.getter(v5);
        v12 = v20;
        result = Double.description.getter(v24);
        v15 = 0x6C616E657020324CLL;
      }
    }

    else
    {
      v14 = 0xEA00000000007974;
      v15 = 0x6C616E657020314CLL;
      v23 = *(a2 + 40);
      v11 = Double.description.getter(v4);
      v12 = v19;
      result = Double.description.getter(v23);
    }
  }

  else
  {
    v16 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v18 = v17;
    v11 = v16;
    result = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v12 = v18;
    v14 = 0xEF736E6F69746172;
    v15 = 0x657469202E78614DLL;
  }

  *v3 = v15;
  v3[1] = v14;
  v3[2] = v11;
  v3[3] = v12;
  v3[4] = result;
  v3[5] = v13;
  return result;
}

uint64_t protocol witness for TrainingSessionDelegate.extractFeatures(from:) in conformance TreeClassifierTrainingSessionDelegate(uint64_t a1)
{
  v2 = swift_task_alloc(16);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for TrainingSessionDelegate.extractFeatures(from:) in conformance TreeClassifierTrainingSessionDelegate;
  return ((&_s8CreateML23TrainingSessionDelegatePAAE15extractFeatures4fromSi_Sb8finishedtSi_tYaKFAA014TreeClassifiercdE0C_Tt0g5Tu + _s8CreateML23TrainingSessionDelegatePAAE15extractFeatures4fromSi_Sb8finishedtSi_tYaKFAA014TreeClassifiercdE0C_Tt0g5Tu))(a1);
}

{
  return protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance SoundClassifierTrainingSessionDelegate(a1);
}

uint64_t protocol witness for TrainingSessionDelegate.extractFeatures(from:) in conformance MLStyleTransfer.TrainingSessionDelegate()
{
  v1 = swift_task_alloc(16);
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance SoundClassifierTrainingSessionDelegate;
  return _s8CreateML23TrainingSessionDelegatePAAE15extractFeatures4fromSi_Sb8finishedtSi_tYaKFAA013TreeRegressorcdE0C_Tt0g5();
}

uint64_t protocol witness for TrainingSessionDelegate.extractFeatures(from:) in conformance LogisticRegressionClassifierTrainingSessionDelegate(uint64_t a1)
{
  v2 = swift_task_alloc(16);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for TrainingSessionDelegate.extractFeatures(from:) in conformance TreeClassifierTrainingSessionDelegate;
  return ((&_s8CreateML23TrainingSessionDelegatePAAE15extractFeatures4fromSi_Sb8finishedtSi_tYaKFAA028LogisticRegressionClassifiercdE0C_Tt0g5Tu + _s8CreateML23TrainingSessionDelegatePAAE15extractFeatures4fromSi_Sb8finishedtSi_tYaKFAA028LogisticRegressionClassifiercdE0C_Tt0g5Tu))(a1);
}

uint64_t protocol witness for TrainingSessionDelegate.extractFeatures(from:) in conformance ActivityClassifierTrainingSessionDelegate()
{
  v1 = swift_task_alloc(16);
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for TrainingSessionDelegate.extractFeatures(from:) in conformance TreeClassifierTrainingSessionDelegate;
  return _s8CreateML23TrainingSessionDelegatePAAE15extractFeatures4fromSi_Sb8finishedtSi_tYaKFAA013TreeRegressorcdE0C_Tt0g5();
}

uint64_t protocol witness for TrainingSessionDelegate.extractFeatures(from:) in conformance LinearRegressorTrainingSessionDelegate(uint64_t a1)
{
  v2 = swift_task_alloc(16);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for TrainingSessionDelegate.extractFeatures(from:) in conformance TreeClassifierTrainingSessionDelegate;
  return ((&_s8CreateML23TrainingSessionDelegatePAAE15extractFeatures4fromSi_Sb8finishedtSi_tYaKFAA015LinearRegressorcdE0C_Tt0g5Tu + _s8CreateML23TrainingSessionDelegatePAAE15extractFeatures4fromSi_Sb8finishedtSi_tYaKFAA015LinearRegressorcdE0C_Tt0g5Tu))(a1);
}

uint64_t protocol witness for TrainingSessionDelegate.extractFeatures(from:) in conformance TreeRegressorTrainingSessionDelegate(uint64_t a1)
{
  v2 = swift_task_alloc(16);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for TrainingSessionDelegate.extractFeatures(from:) in conformance TreeClassifierTrainingSessionDelegate;
  return ((&_s8CreateML23TrainingSessionDelegatePAAE15extractFeatures4fromSi_Sb8finishedtSi_tYaKFAA013TreeRegressorcdE0C_Tt0g5Tu + _s8CreateML23TrainingSessionDelegatePAAE15extractFeatures4fromSi_Sb8finishedtSi_tYaKFAA013TreeRegressorcdE0C_Tt0g5Tu))(a1);
}

void MLLinearRegressor.predictions(from:)(uint64_t a1)
{
  v22 = v2;
  v20 = v1;
  v19 = type metadata accessor for DataFrame(0);
  v5 = *(v19 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v17 = &v15;
  v9 = type metadata accessor for MLLinearRegressor(0);
  v10 = *(v9 + 28);
  v16 = v3;
  v11._rawValue = *(v3 + v10);
  v18 = a1;
  DataFrame.validateContainsColumns(_:context:)(v11, __PAIR128__(0xE700000000000000, 0x65727574616546));
  if (!v12)
  {
    v21 = v9;
    v22 = v5;
    v13 = v17;
    v14 = v16;
    MLLinearRegressor.Model.applied(to:eventHandler:)(v18, 0, 0);
    DataFrame.subscript.getter(*(v14 + *(v21 + 24)), *(v14 + *(v21 + 24) + 8));
    (*(v22 + 8))(v13, v19);
  }
}

uint64_t type metadata accessor for MLLinearRegressor(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLLinearRegressor;
  if (!type metadata singleton initialization cache for MLLinearRegressor)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLLinearRegressor);
  }

  return result;
}

uint64_t *MLLinearRegressor.predictions(from:)(uint64_t a1, __m128 a2)
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
  MLLinearRegressor.predictions(from:)(&v13);
  if (v11)
  {
    return (*(v18 + 8))(&v13, v17);
  }

  *a2.i64 = (*(v18 + 8))(&v13, v17);
  return MLUntypedColumn.init(_:convertArraysToShapedArrays:)(&v13, 1, a2);
}

void MLLinearRegressor.evaluation(on:)(uint64_t a1)
{
  v33 = a1;
  v3 = v1;
  v4 = type metadata accessor for MLLinearRegressor(0);
  v30 = *(v4 - 8);
  v29 = *(v30 + 64);
  v5 = alloca(v29);
  v6 = alloca(v29);
  v34 = v25;
  v35 = type metadata accessor for DataFrame(0);
  v7 = *(v35 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v36 = v25;
  v28 = v4;
  v11 = *(v4 + 28);
  v27 = v2;
  DataFrame.validateContainsColumns(_:context:)(*(v2 + v11), __PAIR128__(0xE700000000000000, 0x65727574616546));
  if (!v12)
  {
    v32 = v7;
    v31 = v8;
    v37 = v3;
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
    inited = swift_initStackObject(v13, v26);
    inited[2] = 1;
    inited[3] = 2;
    v15 = *(v28 + 24);
    v16 = v27;
    v17 = *(v27 + v15 + 8);
    inited[4] = *(v27 + v15);
    inited[5] = v17;

    v18 = v33;
    DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xE500000000000000, 0x6C6562614CLL));
    swift_setDeallocating(inited);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    if (!v12)
    {
      v19 = v32;
      (*(v32 + 16))(v36, v18, v35);
      outlined init with copy of MLTrainingSessionParameters(v16, v34, type metadata accessor for MLLinearRegressor);
      v20 = *(v19 + 80);
      v21 = ~*(v19 + 80) & (v20 + 16);
      v22 = *(v30 + 80);
      v23 = ~v22 & (v21 + v22 + v31);
      v24 = swift_allocObject(&unk_394E00, v23 + v29, v22 | v20 | 7);
      (*(v19 + 32))(v24 + v21, v36, v35);
      outlined init with take of MLClassifierMetrics(v34, v24 + v23, type metadata accessor for MLLinearRegressor);
      specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLLinearRegressor.computeMetrics(on:), v24);

      return;
    }

    v3 = v37;
  }

  *v3 = v12;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
}

uint64_t MLLinearRegressor.evaluation(on:)(uint64_t a1)
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
  MLLinearRegressor.evaluation(on:)(&v9);
  return (*(v3 + 8))(&v9, v2);
}

NSURL *MLLinearRegressor.write(to:metadata:)(uint64_t a1, const void *a2)
{
  v43 = v3;
  v48 = a2;
  v49 = a1;
  v4 = *(*(type metadata accessor for MLLinearRegressor.Model(0) - 8) + 64);
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
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(v49, 0x65527261656E694CLL, 0xEF726F7373657267, 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (!v2)
  {
    v44 = 0;
    v50 = &v33;
    v47 = v7;
    v48 = v11;
    v49 = v12;
    outlined init with copy of MLTrainingSessionParameters(v43, v45, type metadata accessor for MLLinearRegressor.Model);
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
    outlined destroy of MLActivityClassifier.ModelParameters(v29, type metadata accessor for MLLinearRegressor.Model);
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

uint64_t MLLinearRegressor.write(toFile:metadata:)(uint64_t a1, uint64_t a2, const void *a3)
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
  MLLinearRegressor.write(to:metadata:)(v16, v16);
  return (*(v24 + 8))(v16, v10);
}

unint64_t MLLinearRegressor.description.getter()
{
  v1 = type metadata accessor for MLLinearRegressor(0);
  v20 = MLLinearRegressor.ModelParameters.description.getter();
  v3 = v2;
  v4 = *(v1 + 36);
  v15 = *(v0 + v4);
  v17 = *(v0 + v4 + 8);
  v19 = *(v0 + v4 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v15, v17, v19);
  v22 = MLRegressorMetrics.description.getter();
  v6 = v5;
  outlined consume of Result<_RegressorMetrics, Error>(v15, v17, v19);
  v7 = *(v1 + 40);
  LOBYTE(v1) = *(v0 + v7 + 16) & 1;
  v16 = *(v0 + v7);
  v18 = *(v0 + v7 + 8);
  outlined copy of Result<_RegressorMetrics, Error>(v16, v18, *(v0 + v7 + 16));
  v14._countAndFlagsBits = MLRegressorMetrics.description.getter();
  v14._object = v8;
  outlined consume of Result<_RegressorMetrics, Error>(v16, v18, v1);
  v9._countAndFlagsBits = v20;
  v21 = v3;
  v9._object = v3;
  String.append(_:)(v9);
  v9._countAndFlagsBits = v22;
  v9._object = v6;
  String.append(_:)(v9);
  v9._countAndFlagsBits = 0xD00000000000001ELL;
  v9._object = "ActivityClassifier\n\nParameters\n" + 0x8000000000000000;
  String.append(_:)(v9);
  ("ActivityClassifier\n\nParameters\n" + 0x8000000000000000);
  if (v1)
  {
    v10 = v6;
    object = v14._object;
  }

  else
  {
    String.append(_:)(v14);
    v12._countAndFlagsBits = 0xD000000000000020;
    object = ("\nPerformance on Training Data\n" + 0x8000000000000000);
    v12._object = "\nPerformance on Training Data\n" + 0x8000000000000000;
    String.append(_:)(v12);
    v6;
    v10 = v14._object;
  }

  v10;
  object;
  v21;
  return 0xD00000000000001CLL;
}

NSAttributedString MLLinearRegressor.playgroundDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSAttributedString, NSAttributedString_ptr);
  v3._countAndFlagsBits = MLLinearRegressor.description.getter();
  v3._object = v4;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v3).super.isa;
  v1[3].super.isa = v2;
  v1->super.isa = result.super.isa;
  return result;
}

uint64_t specialized CoreMLExportable.exportAsCoreMLModel()()
{
  v1[29] = v0;
  v2 = type metadata accessor for Model(0);
  v1[30] = v2;
  v3 = *(v2 - 8);
  v1[31] = v3;
  v1[32] = swift_task_alloc((*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized CoreMLExportable.exportAsCoreMLModel(), 0, 0);
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
  qmemcpy((v0 + 160), (v0 + 88), 0x48uLL);
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
  specialized CoreMLExportable.export(metadata:)((v0 + 160));
  outlined release of MLModelMetadata((v0 + 88));
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLModel, MLModel_ptr);
  v6 = swift_task_alloc(208);
  *(v0 + 264) = v6;
  *v6 = v0;
  v6[1] = specialized CoreMLExportable.exportAsCoreMLModel();
  return static MLModel.compile(_:)(*(v0 + 256));
}

{
  v1[29] = v0;
  v2 = type metadata accessor for Model(0);
  v1[30] = v2;
  v3 = *(v2 - 8);
  v1[31] = v3;
  v1[32] = swift_task_alloc((*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized CoreMLExportable.exportAsCoreMLModel(), 0, 0);
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
  qmemcpy((v0 + 160), (v0 + 88), 0x48uLL);
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
  specialized CoreMLExportable.export(metadata:)((v0 + 160));
  outlined release of MLModelMetadata((v0 + 88));
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLModel, MLModel_ptr);
  v6 = swift_task_alloc(208);
  *(v0 + 264) = v6;
  *v6 = v0;
  v6[1] = specialized CoreMLExportable.exportAsCoreMLModel();
  return static MLModel.compile(_:)(*(v0 + 256));
}

{
  v1[29] = v0;
  v2 = type metadata accessor for Model(0);
  v1[30] = v2;
  v3 = *(v2 - 8);
  v1[31] = v3;
  v1[32] = swift_task_alloc((*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized CoreMLExportable.exportAsCoreMLModel(), 0, 0);
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
  qmemcpy((v0 + 160), (v0 + 88), 0x48uLL);
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
  specialized CoreMLExportable.export(metadata:)((v0 + 160));
  outlined release of MLModelMetadata((v0 + 88));
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLModel, MLModel_ptr);
  v6 = swift_task_alloc(208);
  *(v0 + 264) = v6;
  *v6 = v0;
  v6[1] = specialized CoreMLExportable.exportAsCoreMLModel();
  return static MLModel.compile(_:)(*(v0 + 256));
}

{
  v1[29] = v0;
  v2 = type metadata accessor for Model(0);
  v1[30] = v2;
  v3 = *(v2 - 8);
  v1[31] = v3;
  v1[32] = swift_task_alloc((*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized CoreMLExportable.exportAsCoreMLModel(), 0, 0);
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
  qmemcpy((v0 + 160), (v0 + 88), 0x48uLL);
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
  specialized CoreMLExportable.export(metadata:)(v0 + 160);
  outlined release of MLModelMetadata((v0 + 88));
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLModel, MLModel_ptr);
  v6 = swift_task_alloc(208);
  *(v0 + 264) = v6;
  *v6 = v0;
  v6[1] = specialized CoreMLExportable.exportAsCoreMLModel();
  return static MLModel.compile(_:)(*(v0 + 256));
}

{
  v1[29] = v0;
  v2 = type metadata accessor for Model(0);
  v1[30] = v2;
  v3 = *(v2 - 8);
  v1[31] = v3;
  v1[32] = swift_task_alloc((*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized CoreMLExportable.exportAsCoreMLModel(), 0, 0);
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
  qmemcpy((v0 + 160), (v0 + 88), 0x48uLL);
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
  specialized CoreMLExportable.export(metadata:)((v0 + 160));
  outlined release of MLModelMetadata((v0 + 88));
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLModel, MLModel_ptr);
  v6 = swift_task_alloc(208);
  *(v0 + 264) = v6;
  *v6 = v0;
  v6[1] = specialized CoreMLExportable.exportAsCoreMLModel();
  return static MLModel.compile(_:)(*(v0 + 256));
}

{
  v1 = *(v0 + 256);
  (*(*(v0 + 248) + 8))(v1, *(v0 + 240));
  v1;
  return (*(v0 + 8))(*(v0 + 280));
}

{
  (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
  *(v0 + 256);
  return (*(v0 + 8))();
}

{
  return specialized CoreMLExportable.exportAsCoreMLModel()();
}

{
  return specialized CoreMLExportable.exportAsCoreMLModel()();
}

{
  return specialized CoreMLExportable.exportAsCoreMLModel()();
}

uint64_t specialized CoreMLExportable.exportAsCoreMLModel()(uint64_t a1)
{
  v5 = *(*v2 + 264);
  v4 = *v2;
  *(*v2 + 272) = v1;
  v5;
  if (v1)
  {
    v6 = specialized CoreMLExportable.exportAsCoreMLModel();
  }

  else
  {
    *(v4 + 280) = a1;
    v6 = specialized CoreMLExportable.exportAsCoreMLModel();
  }

  return swift_task_switch(v6, 0, 0);
}

{
  v5 = *(*v2 + 264);
  v4 = *v2;
  *(*v2 + 272) = v1;
  v5;
  if (v1)
  {
    v6 = specialized CoreMLExportable.exportAsCoreMLModel();
  }

  else
  {
    *(v4 + 280) = a1;
    v6 = specialized CoreMLExportable.exportAsCoreMLModel();
  }

  return swift_task_switch(v6, 0, 0);
}

{
  v5 = *(*v2 + 264);
  v4 = *v2;
  *(*v2 + 272) = v1;
  v5;
  if (v1)
  {
    v6 = specialized CoreMLExportable.exportAsCoreMLModel();
  }

  else
  {
    *(v4 + 280) = a1;
    v6 = specialized CoreMLExportable.exportAsCoreMLModel();
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t _s8CreateML18MLRegressorMetricsV4data20predictionColumnName5modelAC11TabularData0K5FrameV_SSxtYaKc0A12MLComponents0J11TransformerRzlufCAA17MLLinearRegressorV5ModelV_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a5;
  v5[11] = a4;
  v5[10] = a3;
  v5[9] = a2;
  v5[8] = a1;
  v6 = type metadata accessor for AnyColumn(0);
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v5[15] = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DataFrame(0);
  v5[16] = v8;
  v9 = *(v8 - 8);
  v5[17] = v9;
  v5[18] = swift_task_alloc((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  MLLinearRegressor.Model.applied(to:eventHandler:)(a2, 0, 0);
  v5[19] = 0;
  return swift_task_switch(_s8CreateML18MLRegressorMetricsV4data20predictionColumnName5modelAC11TabularData0K5FrameV_SSxtYaKc0A12MLComponents0J11TransformerRzlufCAA17MLLinearRegressorV5ModelV_Tt3g5TY0_, 0, 0);
}

uint64_t _s8CreateML18MLRegressorMetricsV4data20predictionColumnName5modelAC11TabularData0K5FrameV_SSxtYaKc0A12MLComponents0J11TransformerRzlufCAA17MLLinearRegressorV5ModelV_Tt3g5TY0_()
{
  v1 = v0[15];
  v2 = v0[14];
  v3 = v0[13];
  DataFrame.subscript.getter(v0[10], v0[11]);
  v4 = AnyColumn.convertedToDoubles()();
  v5 = *(v2 + 8);
  v5(v1, v3);
  v44 = v4;
  if (!v4)
  {
    v58 = v0[17];
    v45 = v0[16];
    v16 = v0[15];
    v42 = v0[13];
    v50 = v0[12];
    v17 = v0[11];
    v47 = v0[9];
    v53 = v5;
    v18 = v0[10];
    *&v38 = 0;
    *(&v38 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v19._object = "Expected a linear classifier." + 0x8000000000000000;
    v19._countAndFlagsBits = 0xD000000000000031;
    String.append(_:)(v19);
    DataFrame.subscript.getter(v18, v17);
    v17;
    v20 = AnyColumn.wrappedElementType.getter(v17);
    v53(v16, v42);
    v21 = _typeName(_:qualified:)(v20, 0);
    LOBYTE(v18) = v22;
    v19._countAndFlagsBits = v21;
    v19._object = v22;
    String.append(_:)(v19);
    v18;
    v19._countAndFlagsBits = 46;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    v23 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v23, 0, 0);
    *v24 = v38;
    *(v24 + 16) = 0;
    *(v24 + 32) = 0;
    *(v24 + 48) = 1;
    swift_willThrow();
    outlined destroy of MLActivityClassifier.ModelParameters(v50, type metadata accessor for MLLinearRegressor.Model);
    v25 = *(v58 + 8);
    v25(v47, v45);
LABEL_6:
    v34 = v0[18];
    v35 = v0[15];
    v25(v34, v0[16]);
    v34;
    v35;
    v15 = v0[1];
    return v15();
  }

  v6 = v0[15];
  v7 = v0[13];
  DataFrame.subscript.getter(v0[10], v0[11]);
  v8 = AnyColumn.convertedToDoubles()();
  v5(v6, v7);
  if (!v8)
  {
    v51 = v0[17];
    v48 = v0[16];
    v26 = v0[15];
    v54 = v0[13];
    v43 = v0[12];
    v27 = v0[11];
    v59 = v0[9];
    v56 = v0[10];

    *&v39 = 0;
    *(&v39 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v28._object = "Expected a linear classifier." + 0x8000000000000000;
    v28._countAndFlagsBits = 0xD000000000000031;
    String.append(_:)(v28);
    DataFrame.subscript.getter(v56, v27);
    v27;
    v29 = AnyColumn.wrappedElementType.getter(v27);
    v5(v26, v54);
    v30 = _typeName(_:qualified:)(v29, 0);
    LOBYTE(v27) = v31;
    v28._countAndFlagsBits = v30;
    v28._object = v31;
    String.append(_:)(v28);
    v27;
    v28._countAndFlagsBits = 46;
    v28._object = 0xE100000000000000;
    String.append(_:)(v28);
    v32 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v32, 0, 0);
    *v33 = v39;
    *(v33 + 16) = 0;
    *(v33 + 32) = 0;
    *(v33 + 48) = 1;
    swift_willThrow();
    outlined destroy of MLActivityClassifier.ModelParameters(v43, type metadata accessor for MLLinearRegressor.Model);
    v25 = *(v51 + 8);
    v25(v59, v48);
    goto LABEL_6;
  }

  v49 = v0[18];
  v52 = v0[17];
  v41 = v0[16];
  v57 = v0[15];
  v37 = v0[12];
  v46 = v0[8];
  v55 = v0[9];
  v0[11];
  v0[3] = v44;
  v0[4] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ContiguousArray<Double>);
  v10 = lazy protocol witness table accessor for type Double and conformance Double();
  v11 = v8;
  v12 = lazy protocol witness table accessor for type ContiguousArray<Double> and conformance ContiguousArray<A>();
  maximumAbsoluteError<A, B, C>(_:_:)((v0 + 3), (v0 + 4), &type metadata for Double, v9, v9, v10, v12, v12);
  v40 = v0[2];
  v0[6] = v44;
  v0[7] = v11;
  rootMeanSquaredError<A, B, C>(_:_:)((v0 + 6), (v0 + 7), &type metadata for Double, v9, v9, v10, v12, v12);
  outlined destroy of MLActivityClassifier.ModelParameters(v37, type metadata accessor for MLLinearRegressor.Model);
  v13 = *(v52 + 8);
  v13(v55, v41);
  v13(v49, v41);

  v14 = v0[5];
  *v46 = v40;
  *(v46 + 8) = v14;
  *(v46 + 16) = 0;
  v49;
  v57;
  v15 = v0[1];
  return v15();
}

uint64_t _s8CreateML18MLRegressorMetricsV4data20predictionColumnName5modelAC11TabularData0K5FrameV_SSxtYaKc0A12MLComponents0J11TransformerRzlufCAA17MLLinearRegressorV5ModelV_Tt3g5TY1_()
{
  v1 = *(v0 + 136);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 96), type metadata accessor for MLLinearRegressor.Model);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  (*(v1 + 8))(*(v0 + 72), *(v0 + 128));
  v2;
  v3;
  return (*(v0 + 8))();
}

uint64_t MLLinearRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), uint64_t a2, void *a3, char *a4, uint64_t a5)
{
  v132 = a4;
  v133 = a3;
  v7 = v5;
  v130 = a2;
  v120 = v6;
  v139 = a5;
  v137 = a1;
  v8 = type metadata accessor for MLLinearRegressor(0);
  v116 = *(v8 - 8);
  v124 = *(v116 + 64);
  v9 = alloca(v124);
  v10 = alloca(v124);
  v123 = &v101;
  v134 = type metadata accessor for DataFrame(0);
  v141 = *(v134 - 8);
  v11 = *(v141 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v127 = &v101;
  v126 = v11;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v125 = &v101;
  v115 = *(type metadata accessor for MLLinearRegressor.Model(0) - 8);
  v16 = *(v115 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v113 = &v101;
  v114 = v16;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v136 = &v101;
  v129 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearRegressor<Double>.Configuration);
  v122 = *(v129 - 1);
  v21 = *(v122 + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v128 = &v101;
  v24 = alloca(v21);
  v25 = alloca(v21);
  v110 = &v101;
  v111 = type metadata accessor for MLLinearRegressor.Regressor(0);
  v26 = *(*(v111 - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v135 = &v101;
  v121 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  v29 = *(*(v121 - 1) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v142 = &v101;
  v118 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v32 = *(*(v118 - 8) + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v117 = &v101;
  v35 = alloca(v32);
  v36 = alloca(v32);
  v140 = &v101;
  v37 = *(v8 + 36);
  *(v7 + v37 + 16) = 0;
  *(v7 + v37) = 0;
  v112 = v8;
  v38 = *(v8 + 40);
  v39 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v40 = swift_allocError(&type metadata for MLCreateError, v39, 0, 0);
  *v41 = 0xD0000000000000C0;
  *(v41 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v41 + 16) = 0;
  *(v41 + 32) = 0;
  *(v41 + 48) = 0;
  *(v7 + v38) = v40;
  *(v7 + v38 + 8) = 0;
  v119 = v38;
  *(v7 + v38 + 16) = 1;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v139, &v101, &demangling cache variable for type metadata for Any?);
  if (!v102)
  {
    BUG();
  }

  v138 = v7;
  v131 = v7 + v37;
  v42 = v140;
  v43 = (v140 + *(v118 + 48));
  outlined init with take of Any(&v101, &v108);
  swift_dynamicCast(v142, &v108, &type metadata for Any + 8, v121, 7);
  v44 = v137;
  v45 = v120;
  MLLinearRegressor.ModelParameters.ValidationData.generateDataFrames(trainingData:)(v42, v43, v137);
  if (v45)
  {
    v133;
    v132;
    outlined destroy of MLLinearRegressor.ModelParameters(v139);
    (*(v141 + 8))(v44, v134);
    outlined destroy of MLActivityClassifier.ModelParameters(v142, type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData);
LABEL_4:
    v46 = v138;
    v48 = v131;
LABEL_6:
    outlined consume of Result<_RegressorMetrics, Error>(*v48, *(v48 + 8), *(v48 + 16));
    return outlined consume of Result<_RegressorMetrics, Error>(*(v46 + v119), *(v46 + v119 + 8), *(v46 + v119 + 16));
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v142, type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData);
  v47 = v132;
  v50 = static _FeatureUtilities.selectFeaturesFromTrainingData(trainingData:targetColumn:featureColumns:)(v140, v130, v133, v132);
  v47;
  outlined init with copy of MLLinearRegressor.ModelParameters(v139, &v108);
  v51 = v135;
  *v135 = v130;
  *(v51 + 1) = v133;
  *(v51 + 2) = v50;
  outlined init with copy of MLLinearRegressor.ModelParameters(&v108, v51 + 24);
  v142 = 0;
  outlined init with copy of MLLinearRegressor.ModelParameters(&v108, &v101);
  v52 = lazy protocol witness table accessor for type Double and conformance Double();

  v132 = v50;

  v53 = v110;
  LinearRegressor.Configuration.init()(&type metadata for Double, &protocol witness table for Double, v52);
  v54 = v129;
  LinearRegressor.Configuration.maximumIterations.setter(v103, v129);
  LinearRegressor.Configuration.l1Penalty.setter(v54, v104);
  LinearRegressor.Configuration.l2Penalty.setter(v54, v105);
  LinearRegressor.Configuration.stepSize.setter(v54, v106);
  LinearRegressor.Configuration.convergenceThreshold.setter(v54, v107);
  outlined destroy of MLLinearRegressor.ModelParameters(&v101);
  v55 = v122;
  (*(v122 + 16))(v128, v53, v54);
  BaseLinearRegressor.init(configuration:)(v128);
  outlined destroy of MLLinearRegressor.ModelParameters(&v108);
  (*(v55 + 8))(v53, v54);
  v56 = v140;
  v57 = v140;
  v58 = v135;
  v59 = v142;
  MLLinearRegressor.Regressor.fitted(to:validateOn:eventHandler:)(v140, v43, 0, 0);
  if (v59)
  {
    v133;
    v132;
    outlined destroy of MLLinearRegressor.ModelParameters(v139);
    (*(v141 + 8))(v137, v134);
    outlined destroy of MLActivityClassifier.ModelParameters(v58, type metadata accessor for MLLinearRegressor.Regressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v56, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    goto LABEL_4;
  }

  v142 = 0;
  if (!AnalyticsReporter.init()())
  {
    v60 = DataFrame.shape.getter(v57);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_linearRegressor, __PAIR128__(("vectorized_features" + 0x8000000000000000), 0xD000000000000015), v60);
  }

  v61 = v112;
  v62 = v112[6];
  v63 = v138;
  *(v138 + v62) = v130;
  *(v63 + v62 + 8) = v133;
  v120 = v63 + v61[8];
  outlined init with copy of MLLinearRegressor.ModelParameters(v139, v120);
  *(v63 + v61[7]) = v132;
  v64 = v113;
  outlined init with copy of MLTrainingSessionParameters(v136, v113, type metadata accessor for MLLinearRegressor.Model);
  v65 = *(v115 + 80);
  v66 = ~*(v115 + 80) & (v65 + 16);
  v67 = swift_allocObject(&unk_394E28, v66 + v114, v65 | 7);
  outlined init with take of MLClassifierMetrics(v64, v67 + v66, type metadata accessor for MLLinearRegressor.Model);
  v68 = v142;
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLLinearRegressor.init(trainingData:targetColumn:featureColumns:parameters:), v67);
  v142 = v68;
  if (v68)
  {

    outlined destroy of MLLinearRegressor.ModelParameters(v139);
    (*(v141 + 8))(v137, v134);
    outlined destroy of MLActivityClassifier.ModelParameters(v136, type metadata accessor for MLLinearRegressor.Model);
    outlined destroy of MLActivityClassifier.ModelParameters(v135, type metadata accessor for MLLinearRegressor.Regressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v140, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v132;
    v133;
    v46 = v138;
    v48 = v131;
LABEL_16:
    outlined destroy of MLLinearRegressor.ModelParameters(v120);
    goto LABEL_6;
  }

  v70 = v69;

  v71 = v61[5];
  v121 = v70;
  v72 = v138;
  *(v138 + v71) = v70;
  outlined init with copy of MLTrainingSessionParameters(v136, v72, type metadata accessor for MLLinearRegressor.Model);
  v73 = v141;
  v128 = *(v141 + 16);
  (v128)(v125, v140, v134);
  outlined init with copy of MLTrainingSessionParameters(v72, v123, type metadata accessor for MLLinearRegressor);
  v74 = *(v73 + 80);
  v75 = ~*(v73 + 80) & (v74 + 16);
  v76 = *(v116 + 80);
  v77 = ~v76 & (v75 + v76 + v126);
  v78 = v76 | v74 | 7;
  v124 += v77;
  v79 = swift_allocObject(&unk_394E50, v124, v78);
  v130 = v75;
  v80 = v79 + v75;
  v81 = *(v141 + 32);
  v81(v80, v125, v134);
  outlined init with take of MLClassifierMetrics(v123, v77 + v79, type metadata accessor for MLLinearRegressor);
  v82 = v142;
  specialized blockAwait<A>(_:)(&closure #1 in MLLinearRegressor.computeMetrics(on:)partial apply, v79);
  v142 = v82;
  if (v82)
  {

    outlined destroy of MLLinearRegressor.ModelParameters(v139);
    (*(v141 + 8))(v137, v134);
LABEL_15:
    outlined destroy of MLActivityClassifier.ModelParameters(v136, type metadata accessor for MLLinearRegressor.Model);
    outlined destroy of MLActivityClassifier.ModelParameters(v135, type metadata accessor for MLLinearRegressor.Regressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v140, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v48 = v131;
    v46 = v138;
    outlined destroy of MLActivityClassifier.ModelParameters(v138, type metadata accessor for MLLinearRegressor.Model);
    v132;
    v133;

    goto LABEL_16;
  }

  v129 = v81;
  v122 = v78;
  v126 = v77;

  v83 = v109;
  v84 = v131;
  outlined consume of Result<_RegressorMetrics, Error>(*v131, *(v131 + 8), *(v131 + 16));
  *v84 = v108;
  *(v84 + 16) = v83;
  v85 = v117;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v140, v117, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v86 = v85 + *(v118 + 48);
  v87 = v134;
  if (__swift_getEnumTagSinglePayload(v86, 1, v134) == 1)
  {
    outlined destroy of MLLinearRegressor.ModelParameters(v139);
    v88 = v86;
    v89 = *(v141 + 8);
    v89(v137, v87);
    outlined destroy of MLActivityClassifier.ModelParameters(v136, type metadata accessor for MLLinearRegressor.Model);
    outlined destroy of MLActivityClassifier.ModelParameters(v135, type metadata accessor for MLLinearRegressor.Regressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v140, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v88, &demangling cache variable for type metadata for DataFrame?);
    return (v89)(v85, v87);
  }

  else
  {
    v90 = v127;
    (v129)(v127, v86, v87);
    v91 = v87;
    v141 = *(v141 + 8);
    (v141)(v85, v87);
    v92 = v125;
    (v128)(v125, v90, v91);
    v93 = v123;
    outlined init with copy of MLTrainingSessionParameters(v138, v123, type metadata accessor for MLLinearRegressor);
    v94 = swift_allocObject(&unk_394E78, v124, v122);
    (v129)(v94 + v130, v92, v91);
    outlined init with take of MLClassifierMetrics(v93, v94 + v126, type metadata accessor for MLLinearRegressor);
    v95 = v142;
    specialized blockAwait<A>(_:)(&closure #1 in MLLinearRegressor.computeMetrics(on:)partial apply, v94);
    v142 = v95;
    if (v95)
    {

      outlined destroy of MLLinearRegressor.ModelParameters(v139);
      v96 = v141;
      (v141)(v137, v91);
      v96(v127, v91);
      goto LABEL_15;
    }

    outlined destroy of MLLinearRegressor.ModelParameters(v139);
    v97 = v141;
    (v141)(v137, v91);
    v97(v127, v91);
    outlined destroy of MLActivityClassifier.ModelParameters(v136, type metadata accessor for MLLinearRegressor.Model);
    outlined destroy of MLActivityClassifier.ModelParameters(v135, type metadata accessor for MLLinearRegressor.Regressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v140, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v98 = v109;
    v99 = v119;
    v100 = v138;
    result = outlined consume of Result<_RegressorMetrics, Error>(*(v138 + v119), *(v138 + v119 + 8), *(v138 + v119 + 16));
    *(v100 + v99) = v108;
    *(v100 + v99 + 16) = v98;
  }

  return result;
}

uint64_t MLLinearRegressor.trainingMetrics.getter()
{
  v2 = v0;
  v3 = *(type metadata accessor for MLLinearRegressor(0) + 36);
  v4 = *(v1 + v3);
  v5 = *(v1 + v3 + 8);
  v6 = *(v1 + v3 + 16);
  *v2 = v4;
  *(v2 + 8) = v5;
  *(v2 + 16) = v6;
  return outlined copy of Result<_RegressorMetrics, Error>(v4, v5, v6);
}

uint64_t MLLinearRegressor.validationMetrics.getter()
{
  v2 = v0;
  v3 = *(type metadata accessor for MLLinearRegressor(0) + 40);
  v4 = *(v1 + v3);
  v5 = *(v1 + v3 + 8);
  v6 = *(v1 + v3 + 16);
  *v2 = v4;
  *(v2 + 8) = v5;
  *(v2 + 16) = v6;
  return outlined copy of Result<_RegressorMetrics, Error>(v4, v5, v6);
}

uint64_t MLLinearRegressor.targetColumn.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLLinearRegressor(0) + 24));

  return v1;
}

void MLLinearRegressor.model.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLLinearRegressor(0) + 20);

  *(v1 + v2) = a1;
}

void (*MLLinearRegressor.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLLinearRegressor(0) + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v4;
  return MLActivityClassifier.model.modify;
}

uint64_t MLLinearRegressor.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for MLLinearRegressor(0) + 24);
  result = *(v2 + v3 + 8);
  *(v2 + v3) = a1;
  *(v2 + v3 + 8) = a2;
  return result;
}

uint64_t MLLinearRegressor.featureColumns.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLLinearRegressor(0) + 28);
  result = *(v1 + v2);
  *(v1 + v2) = a1;
  return result;
}

uint64_t MLLinearRegressor.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLLinearRegressor(0);
  return outlined init with copy of MLLinearRegressor.ModelParameters(v1 + *(v3 + 32), v2);
}

uint64_t static MLLinearRegressor._defaultSessionParameters.getter()
{
  v1 = v0;
  if (one-time initialization token for _defaultSessionParameters != -1)
  {
    swift_once(&one-time initialization token for _defaultSessionParameters, one-time initialization function for _defaultSessionParameters);
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  v3 = __swift_project_value_buffer(v2, static MLLinearRegressor._defaultSessionParameters);
  return outlined init with copy of MLTrainingSessionParameters(v3, v1, type metadata accessor for MLTrainingSessionParameters);
}

uint64_t MLLinearRegressor.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a6;
  v6[6] = a5;
  v6[5] = a4;
  v6[4] = a3;
  v6[3] = a2;
  v6[2] = a1;
  return swift_task_switch(MLLinearRegressor.init(_:targetColumn:featureColumns:parameters:), 0, 0);
}

uint64_t MLLinearRegressor.init(_:targetColumn:featureColumns:parameters:)()
{
  v11 = *(v0 + 48);
  v10 = *(v0 + 32);
  v1 = *(v0 + 16);
  v12 = *(v0 + 24);
  v2 = type metadata accessor for MLLinearRegressor(0);
  *(v0 + 64) = v2;
  v3 = v2[9];
  *(v0 + 96) = v3;
  *(v1 + v3 + 16) = 0;
  *(v1 + v3) = 0;
  v4 = v2[10];
  *(v0 + 100) = v4;
  v5 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v6 = swift_allocError(&type metadata for MLCreateError, v5, 0, 0);
  *v7 = 0xD0000000000000C0;
  *(v7 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v7 + 16) = 0;
  *(v7 + 32) = 0;
  *(v7 + 48) = 0;
  *(v1 + v4) = v6;
  *(v1 + v4 + 8) = 0;
  *(v1 + v4 + 16) = 1;
  outlined init with copy of MLTrainingSessionParameters(v12, v1, type metadata accessor for MLLinearRegressor.Model);
  *(v1 + v2[7]) = v11;
  *(v1 + v2[6]) = v10;
  v8 = swift_task_alloc(288);
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = MLLinearRegressor.init(_:targetColumn:featureColumns:parameters:);
  return ((&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel()))();
}

{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 56);
  v4 = *(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 24), type metadata accessor for MLLinearRegressor.Model);
  *(v4 + *(v2 + 20)) = v1;
  qmemcpy((v4 + *(v2 + 32)), v3, 0x49uLL);
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 100);
  v2 = *(v0 + 96);
  v6 = *(v0 + 48);
  v7 = *(v0 + 40);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  outlined destroy of MLLinearRegressor.ModelParameters(*(v0 + 56));
  outlined destroy of MLActivityClassifier.ModelParameters(v4, type metadata accessor for MLLinearRegressor.Model);
  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLLinearRegressor.Model);
  v7;
  v6;
  outlined consume of Result<_RegressorMetrics, Error>(*(v3 + v2), *(v3 + v2 + 8), *(v3 + v2 + 16));
  outlined consume of Result<_RegressorMetrics, Error>(*(v3 + v1), *(v3 + v1 + 8), *(v3 + v1 + 16));
  return (*(v0 + 8))();
}

uint64_t MLLinearRegressor.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  v5 = *(*v2 + 72);
  v4 = *v2;
  *(*v2 + 80) = v1;
  v5;
  if (v1)
  {
    v6 = MLLinearRegressor.init(_:targetColumn:featureColumns:parameters:);
  }

  else
  {
    *(v4 + 88) = a1;
    v6 = MLLinearRegressor.init(_:targetColumn:featureColumns:parameters:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t closure #1 in MLLinearRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc(288);
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #1 in MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:);
  return ((&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel()))();
}

uint64_t closure #1 in MLLinearRegressor.computeMetrics(on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a2;
  v3[2] = a1;
  v4 = type metadata accessor for MLLinearRegressor.Model(0);
  v3[5] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DataFrame(0);
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v3[8] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in MLLinearRegressor.computeMetrics(on:), 0, 0);
}

uint64_t closure #1 in MLLinearRegressor.computeMetrics(on:)()
{
  v1 = v0[5];
  v2 = v0[4];
  (*(v0[7] + 16))(v0[8], v0[3], v0[6]);
  v3 = *(type metadata accessor for MLLinearRegressor(0) + 24);
  v4 = *(v2 + v3);
  v5 = *(v2 + v3 + 8);
  outlined init with copy of MLTrainingSessionParameters(v2, v1, type metadata accessor for MLLinearRegressor.Model);

  v6 = swift_task_alloc(160);
  v0[9] = v6;
  *v6 = v0;
  v6[1] = closure #1 in MLLinearRegressor.computeMetrics(on:);
  return ((&_s8CreateML18MLRegressorMetricsV4data20predictionColumnName5modelAC11TabularData0K5FrameV_SSxtYaKc0A12MLComponents0J11TransformerRzlufCAA17MLLinearRegressorV5ModelV_Tt3g5Tu + _s8CreateML18MLRegressorMetricsV4data20predictionColumnName5modelAC11TabularData0K5FrameV_SSxtYaKc0A12MLComponents0J11TransformerRzlufCAA17MLLinearRegressorV5ModelV_Tt3g5Tu))(v0[2], v0[8], v4, v5, v0[5]);
}

{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;
  v2;
  if (v0)
  {
    return swift_task_switch(closure #1 in MLLinearRegressor.computeMetrics(on:), 0, 0);
  }

  v5 = *(v3 + 40);
  *(v3 + 64);
  v5;
  return (*(v3 + 8))();
}

{
  v1 = *(v0 + 40);
  *(v0 + 64);
  v1;
  return (*(v0 + 8))();
}

uint64_t MLLinearRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t *a1, uint64_t a2, void *a3, char *a4, uint64_t a5)
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
  outlined init with copy of MLLinearRegressor.ModelParameters(a5, &v11);
  MLLinearRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(&v11, v15, v14, v13, &v11);
  return outlined destroy of MLLinearRegressor.ModelParameters(a5);
}

uint64_t MLLinearRegressor.init(checkpoint:)(uint64_t a1)
{
  v74 = v2;
  v90 = a1;
  v3 = v1;
  v81 = *(type metadata accessor for MLLinearRegressor.Model(0) - 8);
  v4 = *(v81 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v79 = v66;
  v80 = v4;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v89 = v66;
  v75 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearRegressor<Double>.Configuration);
  v76 = *(v75 - 8);
  v9 = *(v76 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v77 = v66;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v78 = v66;
  v83 = COERCE_DOUBLE(type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0));
  v14 = *(*(*&v83 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v84 = v66;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v87 = v66;
  v88 = type metadata accessor for MLLinearRegressor.Regressor(0);
  v19 = *(*(v88 - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v91 = v66;
  v22 = type metadata accessor for MLLinearRegressor(0);
  v23 = *(v22 + 36);
  *(v3 + v23 + 16) = 0;
  v73 = v23;
  *(v3 + v23) = 0;
  v86 = v22;
  v24 = *(v22 + 40);
  v25 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v26 = swift_allocError(&type metadata for MLCreateError, v25, 0, 0);
  *v27 = 0xD0000000000000C0;
  *(v27 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v27 + 16) = 0;
  *(v27 + 32) = 0;
  *(v27 + 48) = 0;
  *(v3 + v24) = v26;
  *(v3 + v24 + 8) = 0;
  v82 = v3;
  v85 = v24;
  *(v3 + v24 + 16) = 1;
  switch(*(v90 + *(type metadata accessor for MLCheckpoint(0) + 20)))
  {
    case 0:
      v28 = 0x696C616974696E69;
      v29 = 0xEB0000000064657ALL;
      break;
    case 1:
      v28 = 0x6974636172747865;
      goto LABEL_7;
    case 2:
      0;
      v30 = v87;
      goto LABEL_9;
    case 3:
      v28 = 0x697461756C617665;
LABEL_7:
      v29 = 0xEA0000000000676ELL;
      break;
    case 4:
      v29 = 0xEB00000000676E69;
      v28 = 0x636E657265666E69;
      break;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)(v28, v29, 0x676E696E69617274, 0xE800000000000000, 0);
  v29;
  v30 = v87;
  if (v31)
  {
LABEL_9:
    *v30 = 0;
    *(v30 + 16) = 256;
    v32 = v83;
    swift_storeEnumTagMultiPayload(v30, *&v83, 0);
    v68 = 0;
    v67 = 0;
    v69 = 10;
    v70 = _mm_loadh_ps(&qword_33FD10);
    v71 = xmmword_33FD20;
    v72 = 1;
    v33 = v84;
    outlined init with copy of MLTrainingSessionParameters(v30, v84, type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData);
    v66[3] = v32;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v66);
    outlined init with take of MLClassifierMetrics(v33, boxed_opaque_existential_0, type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData);
    outlined assign with take of Any?(v66, &v67);
    outlined destroy of MLActivityClassifier.ModelParameters(v87, type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData);
    v35 = v91;
    *v91 = 0.0;
    *(v35 + 8) = 0xE000000000000000;
    *(v35 + 16) = _swiftEmptyArrayStorage;
    outlined init with copy of MLLinearRegressor.ModelParameters(&v67, v35 + 24);
    outlined init with copy of MLLinearRegressor.ModelParameters(&v67, v66);
    v36 = lazy protocol witness table accessor for type Double and conformance Double();
    v37 = v78;
    LinearRegressor.Configuration.init()(&type metadata for Double, &protocol witness table for Double, v36);
    v38 = v75;
    LinearRegressor.Configuration.maximumIterations.setter(*&v66[4], v75);
    LinearRegressor.Configuration.l1Penalty.setter(v38, v66[5]);
    LinearRegressor.Configuration.l2Penalty.setter(v38, v66[6]);
    LinearRegressor.Configuration.stepSize.setter(v38, v66[7]);
    LinearRegressor.Configuration.convergenceThreshold.setter(v38, v66[8]);
    outlined destroy of MLLinearRegressor.ModelParameters(v66);
    v39 = v77;
    v40 = v76;
    (*(v76 + 16))(v77, v37, v38);
    BaseLinearRegressor.init(configuration:)(v39);
    outlined destroy of MLLinearRegressor.ModelParameters(&v67);
    (*(v40 + 8))(v37, v38);
    v41 = lazy protocol witness table accessor for type MLLinearRegressor.Regressor and conformance MLLinearRegressor.Regressor();
    v42 = v89;
    v43 = v90;
    v44 = v91;
    v45 = v74;
    UpdatableSupervisedTabularEstimator.readWithOptimizer(from:)(v90, v88, v41);
    if (!v45)
    {
      v49 = v79;
      outlined init with copy of MLTrainingSessionParameters(v42, v79, type metadata accessor for MLLinearRegressor.Model);
      v50 = *(v81 + 80);
      v51 = ~*(v81 + 80) & (v50 + 16);
      v52 = swift_allocObject(&unk_394EA0, v51 + v80, v50 | 7);
      outlined init with take of MLClassifierMetrics(v49, v52 + v51, type metadata accessor for MLLinearRegressor.Model);
      specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLLinearRegressor.init(checkpoint:), v52);
      v54 = v53;

      v56 = v82;
      *(v82 + v86[5]) = v54;
      outlined init with copy of MLTrainingSessionParameters(v89, v56, type metadata accessor for MLLinearRegressor.Model);
      v57 = v87;
      *v87 = 0;
      *(v57 + 16) = 256;
      v88 = 0;
      v58 = *&v83;
      swift_storeEnumTagMultiPayload(v57, *&v83, 0);
      v59 = v86[8];
      v85 = v56 + v59;
      *(v56 + v59 + 16) = 0;
      *(v56 + v59) = 0;
      v60 = _mm_loadh_ps(&qword_33FD10);
      *(v56 + v59 + 32) = 10;
      *(v56 + v59 + 40) = v60;
      *(v56 + v59 + 56) = xmmword_33FD20;
      *(v56 + v59 + 72) = 1;
      v61 = v84;
      outlined init with copy of MLTrainingSessionParameters(v57, v84, type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData);
      *(&v68 + 1) = v58;
      v62 = __swift_allocate_boxed_opaque_existential_0(&v67);
      outlined init with take of MLClassifierMetrics(v61, v62, type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData);
      outlined assign with take of Any?(&v67, v85);
      outlined destroy of MLActivityClassifier.ModelParameters(v57, type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData);
      v63 = v86;
      v64 = v86[6];
      *(v56 + v64) = 0;
      *(v56 + v64 + 8) = 0xE000000000000000;
      outlined destroy of MLActivityClassifier.ModelParameters(v90, type metadata accessor for MLCheckpoint);
      outlined destroy of MLActivityClassifier.ModelParameters(v89, type metadata accessor for MLLinearRegressor.Model);
      outlined destroy of MLActivityClassifier.ModelParameters(v91, type metadata accessor for MLLinearRegressor.Regressor);
      result = v63[7];
      *(v56 + result) = _swiftEmptyArrayStorage;
      return result;
    }

    outlined destroy of MLActivityClassifier.ModelParameters(v43, type metadata accessor for MLCheckpoint);
    v46 = type metadata accessor for MLLinearRegressor.Regressor;
    v47 = v44;
  }

  else
  {
    swift_allocError(&type metadata for MLCreateError, v25, 0, 0);
    *v48 = 0xD00000000000003BLL;
    *(v48 + 8) = "LinearRegressor\n\nParameters\n" + 0x8000000000000000;
    *(v48 + 16) = 0;
    *(v48 + 32) = 0;
    *(v48 + 48) = 0;
    swift_willThrow();
    v46 = type metadata accessor for MLCheckpoint;
    v47 = v90;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v47, v46);
  v55 = v82;
  outlined consume of Result<_RegressorMetrics, Error>(*(v82 + v73), *(v82 + v73 + 8), *(v82 + v73 + 16));
  return outlined consume of Result<_RegressorMetrics, Error>(*(v55 + v85), *(v55 + v85 + 8), *(v55 + v85 + 16));
}

uint64_t closure #1 in MLLinearRegressor.init(checkpoint:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc(288);
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #1 in MLRandomForestRegressor.init(checkpoint:);
  return ((&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel()))();
}

void *static MLLinearRegressor.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v13 = static MLLinearRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(&v19, v25, v24, v23, v22, v21);
  v14 = v7;
  if (v6)
  {
    return (*(v8 + 8))(&v19, v7);
  }

  v16 = v13;
  (*(v8 + 8))(&v19, v14);
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLLinearRegressor>);
  v18 = swift_allocObject(v17, *(v17 + 48), *(v17 + 52));
  return specialized MLJob.init(_:)(v18, v16);
}

__int128 *static MLLinearRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v12 = static MLLinearRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(&v14, a2, v19, v18, v17, v16);
  (*(v20 + 8))(&v14, v7);
  return v12;
}

void *static MLLinearRegressor.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLLinearRegressor>);
  v2 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));

  return specialized MLJob.init(_:)(v2, a1);
}

__int128 *static MLLinearRegressor.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = static MLLinearRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(a1, a2, a3, a4, a5, a6);
  if (!v6)
  {
    v8 = result;
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLLinearRegressor>);
    v10 = swift_allocObject(v9, *(v9 + 48), *(v9 + 52));
    return specialized MLJob.init(_:)(v10, v8);
  }

  return result;
}

__int128 *static MLLinearRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v62 = v6;
  v57 = a6;
  v49 = a4;
  v50 = a3;
  v51 = a2;
  v58 = a1;
  v8 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v54 = &v44;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v55 = &v44;
  v59 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  v13 = *(*(v59 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v17 = *(*(v16 - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v60 = &v44;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v56 = &v44;
  v22 = alloca(v17);
  v23 = alloca(v17);
  v61 = &v44;
  v52 = a5;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a5, &v44, &demangling cache variable for type metadata for Any?);
  if (!v45)
  {
    BUG();
  }

  v53 = v16;
  v24 = v61;
  v25 = (v61 + *(v16 + 48));
  v26 = &v46;
  outlined init with take of Any(&v44, &v46);
  swift_dynamicCast(&v44, &v46, &type metadata for Any + 8, v59, 7);
  v27 = v62;
  MLLinearRegressor.ModelParameters.ValidationData.generateDataFrames(trainingData:)(v24, v25, v58);
  outlined destroy of MLActivityClassifier.ModelParameters(&v44, type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData);
  if (!v27)
  {
    v28 = v61;
    v29 = v56;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v61, v56, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v30 = v53;
    v62 = v29 + *(v53 + 48);
    v31 = v28;
    v32 = v60;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v31, v60, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v33 = v32 + *(v30 + 48);
    outlined init with copy of MLLinearRegressor.ModelParameters(v52, &v46);
    outlined init with copy of MLTrainingSessionParameters(v57, v55, type metadata accessor for MLTrainingSessionParameters);
    v34 = type metadata accessor for LinearRegressorTrainingSessionDelegate(0);
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    v59 = v34;
    v58 = swift_allocObject(v34, v35, v36);
    v37 = v49;

    v38 = v50;

    v39 = LinearRegressorTrainingSessionDelegate.init(trainingData:validationData:targetColumn:featureColumns:parameters:sessionParameters:)(v56, v33, v51, v38, v37, &v46, v55);
    v40 = type metadata accessor for DataFrame(0);
    (*(*(v40 - 8) + 8))(v60, v40);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v62, &demangling cache variable for type metadata for DataFrame?);
    v47 = v59;
    v48 = &protocol witness table for LinearRegressorTrainingSessionDelegate;
    *&v46 = v39;
    v41 = v54;
    outlined init with copy of MLTrainingSessionParameters(v57, v54, type metadata accessor for MLTrainingSessionParameters);
    v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>);
    swift_allocObject(v42, *(v42 + 48), *(v42 + 52));

    v26 = specialized MLTrainingSession.init(delegate:parameters:modelType:)(&v46, v41, 6);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v61, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  }

  return v26;
}

uint64_t static MLLinearRegressor.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v2 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v12 = v11;
  v5 = alloca(v2);
  v6 = alloca(v2);
  outlined init with copy of MLTrainingSessionParameters(a1, v11, type metadata accessor for MLTrainingSessionParameters);
  v7 = type metadata accessor for LinearRegressorTrainingSessionDelegate(0);
  swift_allocObject(v7, *(v7 + 48), *(v7 + 52));
  result = LinearRegressorTrainingSessionDelegate.init(sessionParameters:)(v11);
  if (!v1)
  {
    v11[3] = v7;
    v11[4] = &protocol witness table for LinearRegressorTrainingSessionDelegate;
    v11[0] = result;
    v9 = v12;
    outlined init with copy of MLTrainingSessionParameters(a1, v12, type metadata accessor for MLTrainingSessionParameters);
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>);
    swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v11, v9, 6);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static MLLinearRegressor.resume(_:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v22 = a5;
  v23 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLLinearRegressor, Error>);
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
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v19, &demangling cache variable for type metadata for Result<MLLinearRegressor, Error>);
  }

  else
  {
    outlined init with copy of TabularRegressionTask(direct field offset for MLTrainingSession.delegate + a3, v20);
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingSessionDelegate);
    v15 = type metadata accessor for LinearRegressorTrainingSessionDelegate(0);
    swift_dynamicCast(&v21, v20, v14, v15, 7);
    v16 = v21;
    v17 = type metadata accessor for TaskPriority(0);
    __swift_storeEnumTagSinglePayload(&v19, 1, 1, v17);
    v18 = swift_allocObject(&unk_394ED8, 56, 7);
    *(v18 + 16) = 0;
    *(v18 + 32) = v16;
    *(v18 + 40) = v23;
    *(v18 + 48) = v22;

    _sScTss5NeverORs_rlE8priority9operationScTyxABGScPSg_xyYaYAcntcfCyt_Tt1g5(&v19, &async function pointer to partial apply for closure #1 in static MLLinearRegressor.handleResult(_:session:fulfill:), v18);
  }
}

uint64_t closure #1 in static MLLinearRegressor.handleResult(_:session:fulfill:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a6;
  v6[3] = a5;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLLinearRegressor, Error>);
  v6[5] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in static MLLinearRegressor.handleResult(_:session:fulfill:), 0, 0);
}

uint64_t closure #1 in static MLLinearRegressor.handleResult(_:session:fulfill:)()
{

  v1 = swift_task_alloc(80);
  v0[6] = v1;
  *v1 = v0;
  v1[1] = closure #1 in static MLLinearRegressor.handleResult(_:session:fulfill:);
  return ((&_ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC17MLLinearRegressorV_Tt1g503_s8b4ML17fg80V12handleResult33_002D25F40C350B487B72244DB0D467A6LL_7session7fulfillys0F0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC06Linearg8TrainingZ8DelegateCTf1nc_nTu + _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC17MLLinearRegressorV_Tt1g503_s8b4ML17fg80V12handleResult33_002D25F40C350B487B72244DB0D467A6LL_7session7fulfillys0F0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC06Linearg8TrainingZ8DelegateCTf1nc_nTu))(v0[5], v0[2]);
}

{
  *(*v0 + 48);
  return swift_task_switch(closure #1 in static MLLinearRegressor.handleResult(_:session:fulfill:), 0, 0);
}

{
  v1 = *(v0 + 40);
  (*(v0 + 24))(v1);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &demangling cache variable for type metadata for Result<MLLinearRegressor, Error>);
  v1;
  return (*(v0 + 8))();
}

uint64_t MLLinearRegressor.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2[29] = a2;
  v2[28] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.Model?);
  v2[30] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLLinearRegressor(0);
  v2[31] = v4;
  v2[32] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
  v2[33] = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MLLinearRegressor.PersistentParameters(0);
  v2[34] = v6;
  v2[35] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLLinearRegressor.init(delegate:), 0, 0);
}

uint64_t MLLinearRegressor.init(delegate:)()
{
  v1 = v0[34];
  v2 = v0[33];
  v3 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters + v0[29];
  swift_beginAccess(v3, (v0 + 22), 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v3, v2, &demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    BUG();
  }

  v4 = v0[35];
  v5 = v0[34];
  v6 = v0[29];
  v13 = v0[30];
  outlined init with take of MLClassifierMetrics(v0[33], v4, type metadata accessor for MLLinearRegressor.PersistentParameters);
  outlined init with copy of MLLinearRegressor.ModelParameters(v4 + v5[8], (v0 + 2));
  v7 = v5[6];
  v14 = *(v4 + v7);
  v15 = *(v4 + v7 + 8);
  v8 = *(v4 + v5[7]);
  v9 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model + v6;
  swift_beginAccess(v9, (v0 + 25), 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v9, v13, &demangling cache variable for type metadata for MLLinearRegressor.Model?);
  v10 = type metadata accessor for MLLinearRegressor.Model(0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v10) == 1)
  {
    BUG();
  }

  outlined init with copy of MLLinearRegressor.ModelParameters((v0 + 2), (v0 + 12));

  v11 = swift_task_alloc(112);
  v0[36] = v11;
  *v11 = v0;
  v11[1] = MLLinearRegressor.init(delegate:);
  return MLLinearRegressor.init(_:targetColumn:featureColumns:parameters:)(v0[32], v0[30], v14, v15, v8, (v0 + 12));
}

{
  v2 = *(*v1 + 288);
  *(*v1 + 296) = v0;
  v2;
  if (v0)
  {
    v3 = MLLinearRegressor.init(delegate:);
  }

  else
  {
    v3 = MLLinearRegressor.init(delegate:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 232);
  outlined init with take of MLClassifierMetrics(*(v0 + 256), *(v0 + 224), type metadata accessor for MLLinearRegressor);
  v2 = *(v1 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics + 16);
  if (v2 == -1)
  {
    BUG();
  }

  v16 = *(v0 + 280);
  v15 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v17 = *(v1 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics);
  v14 = *(v1 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics + 8);
  outlined copy of Result<_RegressorMetrics, Error>(v17, v14, v2);
  outlined destroy of MLLinearRegressor.ModelParameters(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for MLLinearRegressor.PersistentParameters);
  v5 = *(v15 + 36);
  outlined consume of Result<_RegressorMetrics, Error>(*(v3 + v5), *(v3 + v5 + 8), *(v3 + v5 + 16));
  *(v3 + v5) = v17;
  *(v3 + v5 + 8) = v14;
  *(v3 + v5 + 16) = v2 & 1;
  v6 = *(v4 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics + 8);
  v7 = *(v4 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics + 16);
  v18 = *(v4 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics);
  outlined copy of MLRegressorMetrics?(v18, v6, v7);

  if (v7 != -1)
  {
    v8 = *(v0 + 224);
    v9 = *(*(v0 + 248) + 40);
    outlined consume of Result<_RegressorMetrics, Error>(*(v8 + v9), *(v8 + v9 + 8), *(v8 + v9 + 16));
    *(v8 + v9) = v18;
    *(v8 + v9 + 8) = v6;
    *(v8 + v9 + 16) = v7 & 1;
  }

  v10 = *(v0 + 264);
  v11 = *(v0 + 240);
  v12 = *(v0 + 256);
  *(v0 + 280);
  v10;
  v12;
  v11;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v3 = *(v0 + 256);
  v5 = *(v0 + 240);

  outlined destroy of MLLinearRegressor.ModelParameters(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for MLLinearRegressor.PersistentParameters);
  v1;
  v2;
  v3;
  v5;
  return (*(v0 + 8))();
}

uint64_t partial apply for closure #1 in MLLinearRegressor.computeMetrics(on:)(uint64_t a1)
{
  v3 = *(type metadata accessor for DataFrame(0) - 8);
  v4 = ~*(v3 + 80) & (*(v3 + 80) + 16);
  v5 = v4 + *(v3 + 64);
  v6 = *(*(type metadata accessor for MLLinearRegressor(0) - 8) + 80);
  v7 = swift_task_alloc(96);
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLLinearRegressor.computeMetrics(on:)(a1, v1 + v4, v1 + ((v6 + v5) & ~v6));
}

uint64_t outlined copy of MLModelMetadata?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t partial apply for closure #1 in MLLinearRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  type metadata accessor for MLLinearRegressor.Model(0);
  v2 = swift_task_alloc(48);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLLinearRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(a1);
}

uint64_t objectdestroyTm_7()
{
  v1 = v0;
  v17 = type metadata accessor for DataFrame(0);
  v2 = *(v17 - 8);
  v14 = *(v2 + 80);
  v3 = ~*(v2 + 80) & (v14 + 16);
  v4 = v3 + *(v2 + 64);
  v5 = type metadata accessor for MLLinearRegressor(0);
  v6 = *(v5 - 1);
  v15 = *(v6 + 80);
  v7 = ~v15 & (v15 + v4);
  v16 = *(v6 + 64);
  (*(v2 + 8))(v1 + v3, v17);
  v8 = v1 + v7;
  *(v1 + v7 + 8);
  v9 = *(v1 + v7 + 16);
  if (v9)
  {
    v9;
    *(v8 + 32);
  }

  v10 = v8 + *(type metadata accessor for MLLinearRegressor.Model(0) + 24);
  v11 = type metadata accessor for BaseLinearRegressorModel(0);
  (*(*(v11 - 8) + 8))(v10, v11);

  *(v8 + v5[6] + 8);
  *(v8 + v5[7]);
  v12 = v5[8];
  if (*(v8 + v12 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v8 + v12));
  }

  outlined consume of Result<_RegressorMetrics, Error>(*(v8 + v5[9]), *(v8 + v5[9] + 8), *(v8 + v5[9] + 16));
  outlined consume of Result<_RegressorMetrics, Error>(*(v8 + v5[10]), *(v8 + v5[10] + 8), *(v8 + v5[10] + 16));
  return swift_deallocObject(v1, v16 + v7, v15 | v14 | 7);
}

uint64_t objectdestroy_3Tm()
{
  v1 = type metadata accessor for MLLinearRegressor.Model(0);
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
  v8 = type metadata accessor for BaseLinearRegressorModel(0);
  (*(*(v8 - 8) + 8))(v7, v8);
  return swift_deallocObject(v0, v10 + v4, v3 | 7);
}

uint64_t partial apply for closure #1 in MLLinearRegressor.init(checkpoint:)(uint64_t a1)
{
  type metadata accessor for MLLinearRegressor.Model(0);
  v2 = swift_task_alloc(48);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLLinearRegressor.init(checkpoint:)(a1);
}

id sub_296369()
{
  v1 = v0;
  result = MLLinearRegressor.model.getter();
  *v1 = result;
  return result;
}

void *initializeBufferWithCopyOfBuffer for MLLinearRegressor(void *a1, void *a2, int *a3)
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

    v8 = *(type metadata accessor for MLLinearRegressor.Model(0) + 24);
    v9 = type metadata accessor for BaseLinearRegressorModel(0);
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
    v15 = a2 + v13;
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
      *(v14 + 1) = *(v15 + 1);
      *v14 = v17;
    }

    *(v14 + 2) = *(v15 + 2);
    *(v14 + 3) = *(v15 + 3);
    *(v14 + 8) = *(v15 + 8);
    v14[72] = v15[72];
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

uint64_t destroy for MLLinearRegressor(void *a1, int *a2)
{
  a1[1];
  v3 = a1[2];
  if (v3)
  {
    v3;
    a1[4];
  }

  v4 = a1 + *(type metadata accessor for MLLinearRegressor.Model(0) + 24);
  v5 = type metadata accessor for BaseLinearRegressorModel(0);
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

void *initializeWithCopy for MLLinearRegressor(void *a1, void *a2, int *a3)
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

  v6 = *(type metadata accessor for MLLinearRegressor.Model(0) + 24);
  v7 = type metadata accessor for BaseLinearRegressorModel(0);
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
  v13 = a2 + v11;
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
    *(v12 + 1) = *(v13 + 1);
    *v12 = v15;
  }

  *(v12 + 2) = *(v13 + 2);
  *(v12 + 3) = *(v13 + 3);
  *(v12 + 8) = *(v13 + 8);
  v12[72] = v13[72];
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

void *assignWithCopy for MLLinearRegressor(void *a1, void *a2, int *a3)
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
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>((a1 + 2), &demangling cache variable for type metadata for FeatureVectorizer<Double>.Transformer);
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

  v10 = *(type metadata accessor for MLLinearRegressor.Model(0) + 24);
  v11 = type metadata accessor for BaseLinearRegressorModel(0);
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
  v20[72] = v21[72];
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

uint64_t initializeWithTake for MLLinearRegressor(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(type metadata accessor for MLLinearRegressor.Model(0) + 24);
  v5 = type metadata accessor for BaseLinearRegressorModel(0);
  (*(*(v5 - 8) + 32))(a1 + v4, a2 + v4, v5);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  qmemcpy((a1 + a3[8]), (a2 + a3[8]), 0x49uLL);
  v6 = a3[9];
  *(a1 + v6 + 16) = *(a2 + v6 + 16);
  *(a1 + v6) = *(a2 + v6);
  v7 = a3[10];
  *(a1 + v7) = *(a2 + v7);
  *(a1 + v7 + 16) = *(a2 + v7 + 16);
  return a1;
}

void *assignWithTake for MLLinearRegressor(void *a1, void *a2, int *a3)
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
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>((a1 + 2), &demangling cache variable for type metadata for FeatureVectorizer<Double>.Transformer);
      *v7 = *v8;
      a1[4] = a2[4];
    }
  }

  else
  {
    a1[4] = a2[4];
    *v7 = *v8;
  }

  v12 = *(type metadata accessor for MLLinearRegressor.Model(0) + 24);
  v13 = type metadata accessor for BaseLinearRegressorModel(0);
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
  *(a1 + v20 + 40) = *(a2 + v20 + 40);
  *(a1 + v20 + 56) = *(a2 + v20 + 56);
  *(a1 + v20 + 72) = *(a2 + v20 + 72);
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

uint64_t sub_296D8D(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = 0;
  v5 = type metadata accessor for MLLinearRegressor.Model(0);
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

uint64_t sub_296E07(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = type metadata accessor for MLLinearRegressor.Model(0);
  if (*(*(v6 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(a1, a2, a2, v6);
  }

  result = *(a4 + 20);
  *(a1 + result) = 2 * (a2 - 1);
  return result;
}

uint64_t type metadata completion function for MLLinearRegressor(uint64_t a1)
{
  result = type metadata accessor for MLLinearRegressor.Model(319);
  if (v2 <= 0x3F)
  {
    v3[0] = *(result - 8) + 64;
    v3[1] = &value witness table for Builtin.UnknownObject + 64;
    v3[2] = &unk_348498;
    v3[3] = &value witness table for Builtin.BridgeObject + 64;
    v3[4] = &unk_3484B0;
    v3[5] = &unk_3484C8;
    v3[6] = &unk_3484C8;
    swift_initStructMetadata(a1, 256, 7, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t sub_296EF4()
{
  swift_unknownObjectRelease(*(v0 + 16));

  return swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in static MLLinearRegressor.handleResult(_:session:fulfill:)(uint64_t a1)
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
  return closure #1 in static MLLinearRegressor.handleResult(_:session:fulfill:)(a1, v3, v4, v8, v9, v5);
}

uint64_t lazy protocol witness table accessor for type ContiguousArray<Double> and conformance ContiguousArray<A>()
{
  result = lazy protocol witness table cache variable for type ContiguousArray<Double> and conformance ContiguousArray<A>;
  if (!lazy protocol witness table cache variable for type ContiguousArray<Double> and conformance ContiguousArray<A>)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for ContiguousArray<Double>);
    result = swift_getWitnessTable(&protocol conformance descriptor for ContiguousArray<A>, v1);
    lazy protocol witness table cache variable for type ContiguousArray<Double> and conformance ContiguousArray<A> = result;
  }

  return result;
}

uint64_t ObjectDetectorTrainingSessionDelegate.init(sessionParameters:)(uint64_t a1)
{
  v35 = v1;
  *(v2 + 16) = 0xD000000000000011;
  *(v2 + 24) = "on type changed." + 0x8000000000000000;
  v3 = (v2 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_trainingParameters);
  _s8CreateML16MLObjectDetectorV20PersistentParametersVSgWOi0_(__src);
  v30 = v3;
  memcpy(v3, __src, 0x81uLL);
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v5 = empty;
  v6 = OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_args;
  v7 = type metadata accessor for CMLParameters();
  v8 = swift_allocObject(v7, 24, 7);
  *(v8 + 16) = v5;
  v31 = v6;
  *(v2 + v6) = v8;
  v9 = v2 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_sessionParameters;
  v34 = a1;
  outlined init with copy of MLTrainingSessionParameters(a1, v2 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  v10 = *(v2 + 16);
  v33 = v2;
  v11 = *(v2 + 24);
  v32 = v9;
  if ((v11 & 0x1000000000000000) != 0 || !(v11 & 0x2000000000000000 | v10 & 0x1000000000000000))
  {

    v26 = v35;
    _StringGuts._slowWithCString<A>(_:)(closure #1 in CMLModel.init(name:), 0, v10, v11, &type metadata for OpaquePointer);
    if (!v26)
    {
      v11;
      v22 = __dst[17];
      goto LABEL_14;
    }
  }

  else
  {
    v36 = __src;
    v12 = alloca(32);
    v13 = alloca(32);
    __src[3] = 0;
    __src[2] = closure #1 in CMLModel.init(name:);
    if ((v11 & 0x2000000000000000) == 0)
    {
      if ((v10 & 0x1000000000000000) != 0)
      {
        v14 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v15 = v10 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = _StringObject.sharedUTF8.getter(v10, v11);
        v15 = v27;
      }

      v16 = v35;
      v17 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v14, v15, closure #1 in _StringGuts.withCString<A>(_:)specialized partial apply);
      if (v16)
      {
        goto LABEL_10;
      }

      v22 = v17;
      v11;
LABEL_14:
      v23 = type metadata accessor for CMLModel();
      v24 = swift_allocObject(v23, 24, 7);
      *(v24 + 16) = v22;
      outlined destroy of MLActivityClassifier.ModelParameters(v34, type metadata accessor for MLTrainingSessionParameters);
      v20 = v33;
      *(v33 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_model) = v24;
      return v20;
    }

    __dst[0] = v10;
    __dst[1] = v11 & 0xFFFFFFFFFFFFFFLL;

    v18 = v35;
    v19 = specialized handling<A, B>(_:_:)(__dst);
    if (!v18)
    {
      v22 = v19;
      if (!v19)
      {
        BUG();
      }

      v11;
      goto LABEL_14;
    }
  }

LABEL_10:
  v11;
  outlined destroy of MLActivityClassifier.ModelParameters(v34, type metadata accessor for MLTrainingSessionParameters);
  v20 = v33;
  *(v33 + 24);
  outlined destroy of MLActivityClassifier.ModelParameters(v32, type metadata accessor for MLTrainingSessionParameters);
  memcpy(__dst, v30, 0x81uLL);
  outlined release of MLObjectDetector.PersistentParameters?(__dst);

  v21 = type metadata accessor for ObjectDetectorTrainingSessionDelegate(0);
  swift_deallocPartialClassInstance(v20, v21, *(*v20 + 48), *(*v20 + 52));
  return v20;
}

uint64_t ObjectDetectorTrainingSessionDelegate.init(trainingData:validationData:imageColumnName:annotationColumnName:annotationType:modelParameters:sessionParameters:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v56 = v9;
  v57 = a6;
  v54 = a5;
  v58 = a4;
  v55 = a3;
  v11 = *(*(type metadata accessor for MLObjectDetector.ModelParameters(0) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v46 = &v41;
  v48 = *a1;
  v62 = *(a1 + 8);
  v47 = *a2;
  v61 = *(a2 + 8);
  v59 = *a7;
  v60 = *(a7 + 2);
  *(v10 + 16) = 0xD000000000000011;
  *(v10 + 24) = "on type changed." + 0x8000000000000000;
  v14 = (v10 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_trainingParameters);
  _s8CreateML16MLObjectDetectorV20PersistentParametersVSgWOi0_(__src);
  memcpy(v14, __src, 0x81uLL);
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v16 = empty;
  v17 = OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_args;
  v18 = type metadata accessor for CMLParameters();
  v19 = swift_allocObject(v18, 24, 7);
  *(v19 + 16) = v16;
  v49 = v17;
  *(v10 + v17) = v19;
  v20 = v10;
  v45[0] = v48;
  LOBYTE(v45[1]) = v62 & 1;
  v52 = v47;
  v53 = v61;
  v50 = v59;
  v51 = v60;
  v21 = v46;
  outlined init with copy of MLTrainingSessionParameters(a8, v46, type metadata accessor for MLObjectDetector.ModelParameters);
  MLObjectDetector.PersistentParameters.init(trainingData:validationData:imageColumnName:annotationColumnName:annotationType:modelParameters:)(v45, &v52, v55, v58, v54, v57, &v50, v21);
  MLBoostedTreeRegressor.ModelParameters.maxDepth.modify();
  memcpy(__dst, v14, 0x81uLL);
  v54 = v14;
  memcpy(v14, v44, 0x81uLL);
  outlined release of MLObjectDetector.PersistentParameters?(__dst);
  v22 = v20 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_sessionParameters;
  outlined init with copy of MLTrainingSessionParameters(a9, v20 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  v23 = *(v20 + 16);
  v57 = v20;
  v24 = *(v20 + 24);
  v55 = v22;
  if ((v24 & 0x1000000000000000) != 0 || !(v24 & 0x2000000000000000 | v23 & 0x1000000000000000))
  {

    v39 = v56;
    _StringGuts._slowWithCString<A>(_:)(closure #1 in CMLModel.init(name:), 0, v23, v24, &type metadata for OpaquePointer);
    if (!v39)
    {
      v24;
      v35 = v52;
      goto LABEL_14;
    }
  }

  else
  {
    v58 = &v41;
    v25 = alloca(32);
    v26 = alloca(32);
    __src[2] = 0;
    __src[1] = closure #1 in CMLModel.init(name:);
    if ((v24 & 0x2000000000000000) == 0)
    {
      if ((v23 & 0x1000000000000000) != 0)
      {
        v27 = (v24 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v28 = v23 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = _StringObject.sharedUTF8.getter(v23, v24);
        v28 = v40;
      }

      v29 = v56;
      v30 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v27, v28, closure #1 in _StringGuts.withCString<A>(_:)specialized partial apply);
      if (v29)
      {
        goto LABEL_10;
      }

      v35 = v30;
      v24;
LABEL_14:
      v36 = type metadata accessor for CMLModel();
      v37 = swift_allocObject(v36, 24, 7);
      *(v37 + 16) = v35;
      outlined destroy of MLActivityClassifier.ModelParameters(a9, type metadata accessor for MLTrainingSessionParameters);
      outlined destroy of MLActivityClassifier.ModelParameters(a8, type metadata accessor for MLObjectDetector.ModelParameters);
      v33 = v57;
      *(v57 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_model) = v37;
      return v33;
    }

    v45[0] = v23;
    v45[1] = v24 & 0xFFFFFFFFFFFFFFLL;

    v31 = v56;
    v32 = specialized handling<A, B>(_:_:)(v45);
    if (!v31)
    {
      v35 = v32;
      if (!v32)
      {
        BUG();
      }

      v24;
      goto LABEL_14;
    }
  }

LABEL_10:
  v24;
  outlined destroy of MLActivityClassifier.ModelParameters(a9, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(a8, type metadata accessor for MLObjectDetector.ModelParameters);
  v33 = v57;
  *(v57 + 24);
  outlined destroy of MLActivityClassifier.ModelParameters(v55, type metadata accessor for MLTrainingSessionParameters);
  memcpy(v45, v54, 0x81uLL);
  outlined release of MLObjectDetector.PersistentParameters?(v45);

  v34 = type metadata accessor for ObjectDetectorTrainingSessionDelegate(0);
  swift_deallocPartialClassInstance(v33, v34, *(*v33 + 48), *(*v33 + 52));
  return v33;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> ObjectDetectorTrainingSessionDelegate.setUp()()
{
  v18 = v0;
  v2 = *(*(type metadata accessor for MLObjectDetector.ModelParameters(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  memcpy(__dst, (v1 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_trainingParameters), 0x81uLL);
  memcpy(__src, (v1 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_trainingParameters), 0x81uLL);
  if (_s8CreateML16MLObjectDetectorV20PersistentParametersVSgWOg(__src) == 1)
  {
    v5 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v5, 0, 0);
    *v6 = 0xD000000000000061;
    *(v6 + 8) = "tylized validation result" + 0x8000000000000000;
    *(v6 + 16) = 0;
    *(v6 + 32) = 0;
    *(v6 + 48) = 0;
    swift_willThrow();
  }

  else
  {
    v17[17] = v1;
    memcpy(v17, __src, 0x81uLL);
    memcpy(v14, __dst, 0x81uLL);
    memcpy(v13, __dst, 0x81uLL);
    outlined retain of MLObjectDetector.PersistentParameters(v13);
    outlined retain of MLObjectDetector.PersistentParameters(v14);
    MLObjectDetector.PersistentParameters.modelParameters.getter();
    memcpy(v12, v17, 0x81uLL);
    outlined release of MLObjectDetector.PersistentParameters(v12);
    LOWORD(v17[0]) = __src[8];
    BYTE2(v17[0]) = BYTE2(__src[8]);
    v7 = v18;
    v8 = static MLObjectDetector.validateAndConvertParameters(_:annotationType:imageColumn:annotationColumn:)(v12, v17, __src[4], __src[5], __src[6], __src[7]);
    if (v7)
    {
      outlined release of MLObjectDetector.PersistentParameters?(__dst);
      outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLObjectDetector.ModelParameters);
    }

    else
    {
      v9 = v8;
      outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLObjectDetector.ModelParameters);
      v17[0] = __src[0];
      LOBYTE(v17[1]) = __src[1];
      outlined copy of Result<_DataTable, Error>(__src[0], __src[1]);
      CMLParameters.setTraining(table:)(v17);
      v18 = v9;
      outlined consume of Result<_DataTable, Error>(v17[0], v17[1]);
      if (LOBYTE(__src[3]) != 0xFF)
      {
        v10 = __src[2];
        v17[0] = __src[2];
        v11 = __src[3];
        LOBYTE(v17[1]) = __src[3] & 1;
        outlined copy of Result<_DataTable, Error>(__src[2], __src[3]);
        CMLParameters.setValidation(table:)(v17);
        outlined consume of MLDataTable?(v10, v11);
      }

      CMLModel.callFunction(name:arguments:)(0, v18);

      outlined release of MLObjectDetector.PersistentParameters?(__dst);
    }
  }
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> ObjectDetectorTrainingSessionDelegate.resume(from:)(Swift::OpaquePointer from)
{
  v47 = v1;
  v48 = v2;
  v45 = type metadata accessor for URL(0);
  v43 = *(v45 - 8);
  v3 = *(v43 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v46 = v39;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = type metadata accessor for MLCheckpoint(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  specialized BidirectionalCollection.last.getter(from._rawValue);
  if (__swift_getEnumTagSinglePayload(v39, 1, v9) == 1)
  {
    outlined destroy of MLCheckpoint?(v39);
    v13 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v13, 0, 0);
    *v14 = 0xD00000000000001DLL;
    *(v14 + 8) = "reated." + 0x8000000000000000;
    *(v14 + 16) = 0;
    *(v14 + 32) = 0;
    *(v14 + 48) = 0;
    swift_willThrow();
    return;
  }

  outlined init with take of MLCheckpoint(v39, v39);
  memcpy(__dst, (v48 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_trainingParameters), 0x81uLL);
  memcpy(v40, (v48 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_trainingParameters), 0x81uLL);
  if (_s8CreateML16MLObjectDetectorV20PersistentParametersVSgWOg(v40) == 1)
  {
    v15 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v15, 0, 0);
    *v16 = 0xD000000000000061;
    *(v16 + 8) = "tylized validation result" + 0x8000000000000000;
    *(v16 + 16) = 0;
    *(v16 + 32) = 0;
    *(v16 + 48) = 0;
    swift_willThrow();
    outlined destroy of MLActivityClassifier.ModelParameters(v39, type metadata accessor for MLCheckpoint);
    return;
  }

  v49 = v39;
  v17 = v43;
  (*(v43 + 16))(v46, v39, v45);
  memcpy(v39, __dst, 0x81uLL);
  outlined retain of MLObjectDetector.PersistentParameters(v39);
  v19 = URL.absoluteString.getter();
  v20 = v18;
  if ((v18 & 0x1000000000000000) != 0 || !(v18 & 0x2000000000000000 | v19 & 0x1000000000000000))
  {
    v37 = v47;
    _StringGuts._slowWithCString<A>(_:)(closure #1 in CMLModel.init(url:), 0, v19, v18, &type metadata for OpaquePointer);
    if (!v37)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v21 = alloca(32);
  v22 = alloca(32);
  v39[3] = 0;
  v39[2] = closure #1 in CMLModel.init(url:);
  if ((v18 & 0x2000000000000000) == 0)
  {
    if ((v19 & 0x1000000000000000) != 0)
    {
      v23 = (v18 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v24 = v19 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = _StringObject.sharedUTF8.getter(v19, v18);
      v24 = v38;
    }

    v25 = v47;
    v26 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v23, v24, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
    if (!v25)
    {
      v44 = v26;
LABEL_12:
      v20;
      goto LABEL_18;
    }

LABEL_14:
    (*(v17 + 8))(v46, v45);
    v20;
    outlined destroy of MLActivityClassifier.ModelParameters(v49, type metadata accessor for MLCheckpoint);
LABEL_15:
    outlined release of MLObjectDetector.PersistentParameters?(__dst);
    return;
  }

  v42[0] = v19;
  v42[1] = v18 & 0xFFFFFFFFFFFFFFLL;
  v27 = v47;
  v28 = specialized handling<A, B>(_:_:)(v42);
  if (v27)
  {
    goto LABEL_14;
  }

  if (!v28)
  {
    BUG();
  }

  v44 = v28;
  v20;
LABEL_18:
  v29 = v44;
  (*(v17 + 8))(v46, v45);
  v30 = type metadata accessor for CMLModel();
  v31 = swift_allocObject(v30, 24, 7);
  *(v31 + 16) = v29;
  *(v48 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_model) = v31;

  v32 = v40[0];
  if (LOBYTE(v40[1]))
  {
    swift_willThrow();
    outlined copy of Result<_DataTable, Error>(v32, 1);
    outlined release of MLObjectDetector.PersistentParameters?(__dst);
    outlined destroy of MLActivityClassifier.ModelParameters(v49, type metadata accessor for MLCheckpoint);
    return;
  }

  v48 = *(v40[0] + 16);
  v33 = v40[3];
  if (LOBYTE(v40[3]) == 0xFF)
  {
    v35 = 0;
LABEL_25:

    v36 = v48;

    CMLModel.resume(training:validation:)(v36, v35);
    outlined destroy of MLActivityClassifier.ModelParameters(v49, type metadata accessor for MLCheckpoint);

    goto LABEL_15;
  }

  v34 = v40[2];
  if ((v40[3] & 1) == 0)
  {
    v35 = *(v40[2] + 16);

    goto LABEL_25;
  }

  swift_willThrow();
  outlined copy of MLDataTable?(v34, v33);
  outlined release of MLObjectDetector.PersistentParameters?(__dst);
  outlined destroy of MLActivityClassifier.ModelParameters(v49, type metadata accessor for MLCheckpoint);
}

Swift::Int_optional __swiftcall ObjectDetectorTrainingSessionDelegate.itemCount(phase:)(CreateML::MLPhase phase)
{
  switch(*phase)
  {
    case 0:
    case 3:
    case 4:
      v2 = 1;
      v3.value = 0;
      break;
    case 1:
      v3.value = 0;
      v2 = 0;
      break;
    case 2:
      v4 = OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_sessionParameters + v1;
      v2 = 0;
      v3.value = *(*(type metadata accessor for MLTrainingSessionParameters(0) + 28) + v4);
      break;
  }

  v3.is_nil = v2;
  return v3;
}

Swift::tuple_Int_metrics_OpaquePointer_finished_Bool __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> ObjectDetectorTrainingSessionDelegate.train(from:)(Swift::Int from)
{
  v4 = (v2 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_sessionParameters);
  v5 = type metadata accessor for MLTrainingSessionParameters(0);
  v6 = *(v4 + *(v5 + 20));
  if (__OFADD__(v6, from))
  {
    BUG();
  }

  v7 = *(v4 + *(v5 + 28));
  v8 = v7 - from;
  if (__OFSUB__(v7, from))
  {
    BUG();
  }

  if (v6 < v8)
  {
    v8 = v6;
  }

  if (v8 < 0)
  {
    BUG();
  }

  v25 = v1;
  v23 = v7;
  v22 = v6 + from;
  v21 = v8;
  if (v8)
  {
    v24 = OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_model;
    v20 = *(v2 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_args);
    inited = v8;
    while (1)
    {

      v10 = CMLModel.callFunction(name:arguments:)(1, v20);
      if (v25)
      {
        break;
      }

      v4 = v10;

      if (!--inited)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v4 = OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_model;
    inited = *(v2 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_args);

    v24 = CMLModel.callFunction(name:arguments:)(2, inited);
    LOBYTE(inited) = v25;

    if (!v25)
    {

      CMLModel.getValue(field:)(0x676E696E69617274, 0xED000073736F6C5FLL);

      v16 = CMLVariant.featureValue()();

      specialized handling<A, B>(_:_:)(*(v16 + 16));
      v25 = v3;

      v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(MLProgress.Metric, Double)>);
      inited = swift_initStackObject(v17, v19);
      *(inited + 16) = 1;
      *(inited + 24) = 2;
      *(inited + 32) = 0;
      *(inited + 40) = v25;
      v18 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
      v12 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for MLProgress.Metric, &type metadata for Double, v18);
      v13 = v12;
      LOBYTE(inited) = v22 >= v23;
      v4 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v12);
      v13;
      v11 = v21;
    }
  }

  v14 = v4;
  v15 = inited;
  result.metrics._rawValue = v14;
  result._0 = v11;
  result.finished = v15;
  return result;
}

Swift::tuple_Int_finished_Bool __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> ObjectDetectorTrainingSessionDelegate.evaluate(from:)(Swift::Int from)
{
  v3 = *(v2 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_args);

  CMLModel.callFunction(name:arguments:)(4, v3);

  if (!v1)
  {
  }

  v4._0 = 1;
  v4.finished = 1;
  return v4;
}

uint64_t ObjectDetectorTrainingSessionDelegate.saveCheckpoint(to:phase:iteration:)(uint64_t a1, unsigned __int8 *a2)
{
  v4 = 0xEB0000000064657ALL;
  v5 = *a2;
  v19 = v3;
  v18 = a1;
  switch(v5)
  {
    case 0:
      v6 = 0x696C616974696E69;
      break;
    case 1:
      v6 = 0x6974636172747865;
      goto LABEL_7;
    case 2:
      0;
      goto LABEL_9;
    case 3:
      v6 = 0x697461756C617665;
LABEL_7:
      v4 = 0xEA0000000000676ELL;
      break;
    case 4:
      v4 = 0xEB00000000676E69;
      v6 = 0x636E657265666E69;
      break;
  }

  v7 = 0;
  v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v4, 0x676E696E69617274, 0xE800000000000000, 0);
  v4;
  if (v8)
  {
LABEL_9:
    empty = tc_v1_parameters_create_empty(0);
    if (!empty)
    {
      BUG();
    }

    v10 = empty;
    v11 = type metadata accessor for CMLParameters();
    inited = swift_initStackObject(v11, v17);
    *(inited + 16) = v10;
    v7 = type metadata accessor for CMLFeatureValue();
    v13 = URL.path.getter(0);
    v15 = CMLFeatureValue.__allocating_init(_:)(v13, v14);
    if (v2)
    {
    }

    else
    {
      v7 = v15;
      CMLParameters.add(key:featureValue:)(7, v15);

      CMLModel.callFunction(name:arguments:)(6, inited);

      swift_setDeallocating(inited);
      tc_v1_release(*(inited + 16));

      LOBYTE(v7) = 1;
    }
  }

  return v7;
}

NSURL *ObjectDetectorTrainingSessionDelegate.save(to:)(uint64_t a1)
{
  memcpy(__dst, (OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_trainingParameters + v1), 0x81uLL);
  if (_s8CreateML16MLObjectDetectorV20PersistentParametersVSgWOg(__dst) == 1)
  {
    v2 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v2, 0, 0);
    *v3 = 0xD000000000000030;
    *(v3 + 8) = "Feature Extractor" + 0x8000000000000000;
    *(v3 + 16) = 0;
    *(v3 + 32) = 0;
    *(v3 + 48) = 2;
    return swift_willThrow();
  }

  else
  {
    memcpy(v5, __dst, sizeof(v5));
    return MLObjectDetector.PersistentParameters.save(toSessionDirectory:)(a1);
  }
}

NSURL *ObjectDetectorTrainingSessionDelegate.restore(from:phase:)(uint64_t a1, double a2)
{
  v4 = type metadata accessor for URL(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  (*(v5 + 16))(&v11, a1, v4);
  result = MLObjectDetector.PersistentParameters.init(sessionDirectory:)(&v11);
  if (!v2)
  {
    memcpy(__dst, __src, 0x81uLL);
    v10 = (OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_trainingParameters + v3);
    memcpy(v15, v10, 0x81uLL);
    memcpy(v14, v10, 0x81uLL);
    if (_s8CreateML16MLObjectDetectorV20PersistentParametersVSgWOg(v14) == 1)
    {
      memcpy(v17, __dst, 0x81uLL);
      MLBoostedTreeRegressor.ModelParameters.maxDepth.modify();
      memcpy(v16, v10, 0x81uLL);
      memcpy(v10, v17, 0x81uLL);
      return outlined release of MLObjectDetector.PersistentParameters?(v16);
    }

    else
    {
      memcpy(v17, __dst, 0x81uLL);
      memcpy(v12, v14, 0x81uLL);
      memcpy(v16, v15, 0x81uLL);
      outlined retain of MLObjectDetector.PersistentParameters(v16);
      ObjectDetectorTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:phase:)(v17, v12, a2);
      outlined release of MLObjectDetector.PersistentParameters?(v15);
      return outlined release of MLObjectDetector.PersistentParameters(__dst);
    }
  }

  return result;
}

uint64_t ObjectDetectorTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:phase:)(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a1 + 64) != *(a2 + 64) || ((*(a2 + 65) ^ *(a1 + 65)) & 1) != 0 || *(a1 + 66) != *(a2 + 66))
  {
    v6 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v6, 0, 0);
    *v7 = 0xD000000000000030;
    *(v7 + 8) = "iningSessionDelegate" + 0x8000000000000000;
    *(v7 + 16) = 0;
    *(v7 + 32) = 0;
    *(v7 + 48) = 0;
    return swift_willThrow();
  }

  v48 = *a1;
  v67 = *(a1 + 8);
  v53 = *(a1 + 32);
  v47 = *a2;
  v62 = *(a2 + 8);
  v44 = *(a2 + 32);
  v3 = *(a2 + 80);
  v4 = *(a2 + 96);
  v5 = *(a2 + 112);
  v45 = *(a1 + 40);
  v46 = *(a1 + 48);
  v49 = 0x7974706D65;
  if (*(a1 + 80))
  {
    if ((v3 & 1) == 0)
    {
      v60 = 0x7974706D65;
      v63 = 0xE500000000000000;
      goto LABEL_10;
    }
  }

  else if (v3 & 1 | (*(a1 + 72) != *(a2 + 72)))
  {
    v60 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v63 = v8;
    v9 = (v3 & 1) == 0;
    v10 = 0xE500000000000000;
    v11 = 0x7974706D65;
    if (!v9)
    {
LABEL_11:
      v13 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v13, 0, 0);
      *v14 = 0x6953206863746142;
      *(v14 + 8) = 0xEA0000000000657ALL;
      *(v14 + 16) = v60;
      *(v14 + 24) = v63;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
LABEL_24:
      *(v14 + 48) = 3;
      return swift_willThrow();
    }

LABEL_10:
    v11 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v10 = v12;
    goto LABEL_11;
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v16 = 0xE500000000000000;
    if (!(v4 & 1 | (*(a1 + 88) != *(a2 + 88))))
    {
      goto LABEL_19;
    }

    v15 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v55 = v17;
    if (v4)
    {
LABEL_18:
      v19 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v19, 0, 0);
      *v14 = 0x657449202E78614DLL;
      *(v14 + 8) = 0xEF736E6F69746172;
      *(v14 + 16) = v15;
      *(v14 + 24) = v55;
      *(v14 + 32) = v49;
      *(v14 + 40) = v16;
      goto LABEL_24;
    }

LABEL_17:
    v49 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v16 = v18;
    goto LABEL_18;
  }

  v15 = 0x7974706D65;
  v55 = 0xE500000000000000;
  if ((v4 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_19:
  if (*(a2 + 104) != *(a1 + 104))
  {
    *&v58 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    *(&v58 + 1) = v34;
    v35._object = 0xE200000000000000;
    v35._countAndFlagsBits = 8236;
    String.append(_:)(v35);
    v36 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v38 = v37;
    v35._countAndFlagsBits = v36;
    v35._object = v37;
    String.append(_:)(v35);
    v38;
    v51 = v58;
    *&v58 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    *(&v58 + 1) = v39;
    v35._countAndFlagsBits = 8236;
    v35._object = 0xE200000000000000;
    String.append(_:)(v35);
    v65 = v5;
    v40 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v42 = v41;
    v35._countAndFlagsBits = v40;
    v35._object = v41;
    String.append(_:)(v35);
    v42;
    v43 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v43, 0, 0);
    *v14 = 0x7A69532064697247;
    *(v14 + 8) = 0xE900000000000065;
    *(v14 + 16) = v51;
    *(v14 + 32) = v58;
    goto LABEL_24;
  }

  v56 = *(a2 + 56);
  v61 = *(a2 + 48);
  v20 = v67;
  v67 &= 1u;
  v52 = v20;
  v21 = v62;
  outlined copy of Result<_DataTable, Error>(v48, v20);
  v22._countAndFlagsBits = v53;
  v22._object = v45;
  MLDataTable.subscript.getter(v22);
  outlined consume of Result<_DataTable, Error>(v48, v67);
  v65 = v57;
  v66 = v59;
  v50 = Array<A>.init(_:)(&v65, a3);
  v65 = v47;
  v64 = v62 & 1;
  v66 = v64;
  v54 = v21;
  outlined copy of Result<_DataTable, Error>(v47, v21);
  MLDataTable.subscript.getter(v44);
  outlined consume of Result<_DataTable, Error>(v65, v66);
  v65 = v57;
  v66 = v59;
  v23 = Array<A>.init(_:)(&v65, a3);
  v24 = v23;
  ML11MLDataValueO_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CreateML11MLDataValueO_Tt1g5(v50, v23);
  v50;
  v24;
  if ((ML11MLDataValueO_Tt1g5 & 1) == 0 || (v65 = v48, v66 = v67, outlined copy of Result<_DataTable, Error>(v48, v52), MLDataTable.subscript.getter(v46), outlined consume of Result<_DataTable, Error>(v65, v66), v65 = v57, v66 = v59, v26 = Array<A>.init(_:)(&v65, a3), v65 = v47, v66 = v64, outlined copy of Result<_DataTable, Error>(v47, v54), v27._countAndFlagsBits = v61, v27._object = v56, MLDataTable.subscript.getter(v27), outlined consume of Result<_DataTable, Error>(v65, v66), v65 = v57, v66 = v59, v28 = Array<A>.init(_:)(&v65, a3), v29 = v28, v30 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CreateML11MLDataValueO_Tt1g5(v26, v28), v26, result = v29, (v30 & 1) == 0))
  {
    v32 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v32, 0, 0);
    *v33 = 1;
    *(v33 + 8) = 0;
    *(v33 + 24) = 0;
    *(v33 + 40) = 0;
    *(v33 + 48) = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t ObjectDetectorTrainingSessionDelegate.deinit()
{
  *(v0 + 24);
  outlined destroy of MLActivityClassifier.ModelParameters(v0 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  memcpy(__dst, (v0 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_trainingParameters), 0x81uLL);
  outlined release of MLObjectDetector.PersistentParameters?(__dst);

  return v0;
}

uint64_t type metadata accessor for ObjectDetectorTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata singleton initialization cache for ObjectDetectorTrainingSessionDelegate;
  if (!type metadata singleton initialization cache for ObjectDetectorTrainingSessionDelegate)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for ObjectDetectorTrainingSessionDelegate);
  }

  return result;
}

uint64_t type metadata completion function for ObjectDetectorTrainingSessionDelegate(uint64_t a1)
{
  v3[0] = &unk_348568;
  result = type metadata accessor for MLTrainingSessionParameters(319);
  if (v2 <= 0x3F)
  {
    v3[1] = *(result - 8) + 64;
    v3[2] = &unk_348580;
    v3[3] = &value witness table for Builtin.NativeObject + 64;
    v3[4] = &value witness table for Builtin.NativeObject + 64;
    result = swift_updateClassMetadata2(a1, 256, 5, v3, a1 + 80);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t protocol witness for TrainingSessionDelegate.train(from:) in conformance ObjectDetectorTrainingSessionDelegate(Swift::Int a1)
{
  v7 = ObjectDetectorTrainingSessionDelegate.train(from:)(a1);
  if (v5)
  {
    return (*(v1 + 8))(v3, v4, v7.metrics._rawValue, *&v7.finished);
  }

  else
  {
    return (*(v1 + 8))(v7._0, v7.metrics._rawValue, v7.finished);
  }
}

uint64_t protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance ObjectDetectorTrainingSessionDelegate(Swift::Int a1)
{
  *&v2 = ObjectDetectorTrainingSessionDelegate.evaluate(from:)(a1);
  if (!v5)
  {
    v3 = 1;
    v4 = 1;
  }

  return (*(v1 + 8))(v3, v4, *(&v2 + 1));
}

uint64_t outlined consume of MLObjectDetector.PersistentParameters?(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a6)
  {
    v8 = a6;
    outlined consume of Result<_DataTable, Error>(a1, a2);
    outlined consume of MLDataTable?(a3, a4);
    a8;
    return v8;
  }

  return result;
}

uint64_t outlined release of MLObjectDetector.PersistentParameters(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4 = *(a1 + 24);
  outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
  outlined consume of MLDataTable?(v1, v4);
  v3;
  v2;
  return a1;
}

uint64_t outlined destroy of MLCheckpoint?(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t outlined init with take of MLCheckpoint(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLCheckpoint(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t getEnumTagSinglePayload for ModelType(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 < 0xE5)
    {
      goto LABEL_13;
    }

    v2 = a2 + 27;
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
      v5 = *a1 + (v4 << 8) - 28;
    }

    else
    {
LABEL_13:
      v6 = *a1;
      v7 = v6 - 28;
      v8 = v6 < 0x1C;
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

uint64_t storeEnumTagSinglePayload for ModelType(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  LODWORD(result) = 0;
  if (a3 >= 0xE5)
  {
    v4 = a3 + 27;
    LODWORD(result) = 1;
    if (v4 >= 0xFF00)
    {
      LODWORD(result) = 2 * (v4 >= 0xFFFF00) + 2;
    }
  }

  if (a2 > 0xE4)
  {
    v5 = a2 - 229;
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
          *a1 = a2 + 27;
        }

        break;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModelType and conformance ModelType()
{
  result = lazy protocol witness table cache variable for type ModelType and conformance ModelType;
  if (!lazy protocol witness table cache variable for type ModelType and conformance ModelType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ModelType, &type metadata for ModelType);
    lazy protocol witness table cache variable for type ModelType and conformance ModelType = result;
  }

  return result;
}

unint64_t ModelType.description.getter(char a1)
{
  switch(a1)
  {
    case 0:
      result = 0xD000000000000015;
      break;
    case 1:
    case 3:
    case 20:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 4:
    case 25:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
    case 7:
      result = 0x65527261656E694CLL;
      break;
    case 8:
    case 9:
      result = 0xD00000000000001CLL;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0xD000000000000019;
      break;
    case 12:
      result = 0x616C436567616D49;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x617254656C797453;
      break;
    case 15:
      result = 0x73616C4374786554;
      break;
    case 16:
      result = 0x6767615464726F57;
      break;
    case 17:
      result = 0x65447463656A624FLL;
      break;
    case 18:
    case 23:
      result = 0xD000000000000012;
      break;
    case 19:
      result = 0x616C43646E756F53;
      break;
    case 21:
      result = 0xD000000000000015;
      break;
    case 22:
      result = 0xD000000000000010;
      break;
    case 24:
      result = 0xD000000000000015;
      break;
    case 26:
      result = 0x65657474657A6147;
      break;
    case 27:
      result = 0x65626D4564726F57;
      break;
  }

  return result;
}

unint64_t ModelType.nameKey.getter(char a1)
{
  switch(a1)
  {
    case 0:
      result = 0xD000000000000018;
      break;
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0xD00000000000001CLL;
      break;
    case 7:
      result = 0xD00000000000001FLL;
      break;
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 9:
      result = 0xD000000000000021;
      break;
    case 10:
      result = 0x6966697373616C63;
      break;
    case 11:
      result = 0x6D69735F6D657469;
      break;
    case 12:
    case 19:
      result = 0xD000000000000010;
      break;
    case 13:
    case 16:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0x72745F656C797473;
      break;
    case 15:
    case 23:
      result = 0xD000000000000014;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0xD000000000000013;
      break;
    case 20:
      result = 0xD000000000000019;
      break;
    case 21:
    case 22:
    case 24:
      result = 0xD000000000000017;
      break;
    case 25:
      result = 0xD000000000000016;
      break;
    case 26:
      result = 0x65657474657A6167;
      break;
    case 27:
      result = 0x626D655F64726F77;
      break;
  }

  return result;
}

CreateML::ModelType_optional __swiftcall ModelType.init(nameKey:)(Swift::String nameKey)
{
  v1 = nameKey._countAndFlagsBits ^ 0xD000000000000018;
  if (nameKey._countAndFlagsBits ^ 0xD000000000000018 | nameKey._object ^ (&aDecisionTreeRe[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000018, &aDecisionTreeRe[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
  {
    if (v1 | nameKey._object ^ (&aDecisionTreeCl[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000018, &aDecisionTreeCl[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
    {
      if (v1 | nameKey._object ^ (&aBoostedTreesRe[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000018, &aBoostedTreesRe[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
      {
        if (v1 | nameKey._object ^ (&aBoostedTreesCl[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000018, &aBoostedTreesCl[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
        {
          if (v1 | nameKey._object ^ (&aRandomForestRe[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000018, &aRandomForestRe[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
          {
            if (nameKey._object ^ (&aRandomForestCl[-32] | 0x8000000000000000) | v1 && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000018, &aRandomForestCl[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
            {
              if (nameKey._countAndFlagsBits ^ 0xD00000000000001CLL | nameKey._object ^ (&aRegressionLine[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD00000000000001CLL, &aRegressionLine[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
              {
                if (nameKey._countAndFlagsBits ^ 0xD00000000000001FLL | nameKey._object ^ (&aRegressionLine_0[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD00000000000001FLL, &aRegressionLine_0[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                {
                  if (nameKey._countAndFlagsBits ^ 0xD00000000000001ELL | nameKey._object ^ (&aClassifierLogi[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD00000000000001ELL, &aClassifierLogi[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                  {
                    if (nameKey._countAndFlagsBits ^ 0xD000000000000021 | nameKey._object ^ (&aClassifierLogi_0[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000021, &aClassifierLogi_0[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                    {
                      if (nameKey._countAndFlagsBits ^ 0x6966697373616C63 | nameKey._object ^ 0xEE006D76735F7265 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x6966697373616C63, 0xEE006D76735F7265, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                      {
                        if (nameKey._countAndFlagsBits ^ 0x6D69735F6D657469 | nameKey._object ^ 0xEF79746972616C69 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x6D69735F6D657469, 0xEF79746972616C69, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                        {
                          if (nameKey._countAndFlagsBits ^ 0xD000000000000010 | nameKey._object ^ (&aImageClassifie[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000010, &aImageClassifie[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                          {
                            if (nameKey._countAndFlagsBits ^ 0xD000000000000012 | nameKey._object ^ (&aDrawingClassif[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000012, &aDrawingClassif[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                            {
                              if (nameKey._countAndFlagsBits ^ 0x72745F656C797473 | nameKey._object ^ 0xEE00726566736E61 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x72745F656C797473, 0xEE00726566736E61, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                              {
                                if (nameKey._object ^ (&aNlpSequenceMod[-32] | 0x8000000000000000) | nameKey._countAndFlagsBits ^ 0xD000000000000012 && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000012, &aNlpSequenceMod[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                                {
                                  if (nameKey._countAndFlagsBits ^ 0xD000000000000014 | nameKey._object ^ (&aNlpClassifierM[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000014, &aNlpClassifierM[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                                  {
                                    if (nameKey._countAndFlagsBits ^ 0xD000000000000011 | nameKey._object ^ (&aObjectRecogniz[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000011, &aObjectRecogniz[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                                    {
                                      if (nameKey._countAndFlagsBits ^ 0xD000000000000013 | nameKey._object ^ (&aActivityClassi[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000013, &aActivityClassi[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                                      {
                                        if (nameKey._object ^ (&aSoundClassifie[-32] | 0x8000000000000000) | nameKey._countAndFlagsBits ^ 0xD000000000000010 && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000010, &aSoundClassifie[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                                        {
                                          if (nameKey._countAndFlagsBits ^ 0xD000000000000019 | nameKey._object ^ (&aFewShotSoundCl[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000019, &aFewShotSoundCl[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                                          {
                                            if (!(nameKey._countAndFlagsBits ^ 0xD000000000000017 | nameKey._object ^ (&aHumanActionRec[-32] | 0x8000000000000000)) || (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000017, &aHumanActionRec[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000017, &aHumanActionRec[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) != 0)
                                            {
                                              nameKey._object;
                                              return 22;
                                            }

                                            else if (nameKey._object ^ (&aHandPoseClassi[-32] | 0x8000000000000000) | nameKey._countAndFlagsBits ^ 0xD000000000000014 && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000014, &aHandPoseClassi[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                                            {
                                              if (nameKey._object ^ (&aHandGestureCla[-32] | 0x8000000000000000) | nameKey._countAndFlagsBits ^ 0xD000000000000017 && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000017, &aHandGestureCla[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                                              {
                                                if (nameKey._countAndFlagsBits ^ 0xD000000000000016 | nameKey._object ^ (&aHandActionClas[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000016, &aHandActionClas[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                                                {
                                                  if (nameKey._countAndFlagsBits ^ 0x65657474657A6167 | nameKey._object ^ 0xE900000000000072 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x65657474657A6167, 0xE900000000000072, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                                                  {
                                                    if (nameKey._countAndFlagsBits ^ 0x626D655F64726F77 | nameKey._object ^ 0xEE00676E69646465)
                                                    {
                                                      v3 = _stringCompareWithSmolCheck(_:_:expecting:)(0x626D655F64726F77, 0xEE00676E69646465, nameKey._countAndFlagsBits, nameKey._object, 0);
                                                      nameKey._object;
                                                      return (28 - (v3 & 1));
                                                    }

                                                    else
                                                    {
                                                      nameKey._object;
                                                      return 27;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    nameKey._object;
                                                    return 26;
                                                  }
                                                }

                                                else
                                                {
                                                  nameKey._object;
                                                  return 25;
                                                }
                                              }

                                              else
                                              {
                                                nameKey._object;
                                                return 24;
                                              }
                                            }

                                            else
                                            {
                                              nameKey._object;
                                              return 23;
                                            }
                                          }

                                          else
                                          {
                                            nameKey._object;
                                            return 20;
                                          }
                                        }

                                        else
                                        {
                                          nameKey._object;
                                          return 19;
                                        }
                                      }

                                      else
                                      {
                                        nameKey._object;
                                        return 18;
                                      }
                                    }

                                    else
                                    {
                                      nameKey._object;
                                      return 17;
                                    }
                                  }

                                  else
                                  {
                                    nameKey._object;
                                    return 15;
                                  }
                                }

                                else
                                {
                                  nameKey._object;
                                  return 16;
                                }
                              }

                              else
                              {
                                nameKey._object;
                                return 14;
                              }
                            }

                            else
                            {
                              nameKey._object;
                              return 13;
                            }
                          }

                          else
                          {
                            nameKey._object;
                            return 12;
                          }
                        }

                        else
                        {
                          nameKey._object;
                          return 11;
                        }
                      }

                      else
                      {
                        nameKey._object;
                        return 10;
                      }
                    }

                    else
                    {
                      nameKey._object;
                      return 9;
                    }
                  }

                  else
                  {
                    nameKey._object;
                    return 8;
                  }
                }

                else
                {
                  nameKey._object;
                  return 7;
                }
              }

              else
              {
                nameKey._object;
                return 6;
              }
            }

            else
            {
              nameKey._object;
              return 1;
            }
          }

          else
          {
            nameKey._object;
            return 0;
          }
        }

        else
        {
          nameKey._object;
          return 5;
        }
      }

      else
      {
        nameKey._object;
        return 4;
      }
    }

    else
    {
      nameKey._object;
      return 3;
    }
  }

  else
  {
    nameKey._object;
    return 2;
  }
}

uint64_t ModelType.playgroundDescription.getter(char a1)
{
  v2 = v1;
  v3 = ModelType.description.getter(a1);
  v5 = v4;
  objc_allocWithZone(NSAttributedString);
  v6 = @nonobjc NSAttributedString.init(string:attributes:)(v3, v5, 0);
  result = type metadata accessor for NSAttributedString();
  v2[3] = result;
  *v2 = v6;
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8NSNumberCG_Sis5NeverOTg5071_s8CreateML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm(uint64_t a1)
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

uint64_t ColumnDescriptor.ColumnTypeDescriptor.featureSize.getter(uint64_t a1, char a2)
{
  v2 = a1;
  switch(a2)
  {
    case 0:
    case 1:
    case 2:
    case 3:
      return v2;
    case 4:
      return *(a1 + 16);
    case 5:
      v4 = *(a1 + 16);
      if (v4)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
        v5 = (a1 + 56);
        do
        {
          v13 = v4;
          v6 = *(v5 - 2);
          v7 = *(v5 - 1);
          v8 = *v5;

          outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v7, v8);
          v14 = ColumnDescriptor.ColumnTypeDescriptor.featureSize.getter(v7, v8);
          v6;
          outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v7, v8);
          v9 = _swiftEmptyArrayStorage[2];
          v10 = v9 + 1;
          if (_swiftEmptyArrayStorage[3] >> 1 <= v9)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v9 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v10;
          _swiftEmptyArrayStorage[v9 + 4] = v14;
          v5 += 32;
          v4 = v13 - 1;
        }

        while (v13 != 1);
      }

      else
      {
        v10 = _swiftEmptyArrayStorage[2];
        if (!v10)
        {
          _swiftEmptyArrayStorage;
          return 0;
        }
      }

      v11 = 0;
      v2 = 0;
      do
      {
        v12 = __OFADD__(_swiftEmptyArrayStorage[v11 + 4], v2);
        v2 += _swiftEmptyArrayStorage[v11 + 4];
        if (v12)
        {
          BUG();
        }

        ++v11;
      }

      while (v10 != v11);
      _swiftEmptyArrayStorage;
      return v2;
    case 6:
      return 1;
  }
}

uint64_t ColumnDescriptor.featureDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v28 = a3;
  v29 = a2;
  v32 = a1;
  v33 = v4;
  v6 = type metadata accessor for FeatureType.ShapedArrayParameters.DataType(0);
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = type metadata accessor for FeatureType(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  switch(a4)
  {
    case 0:
      v15 = &enum case for FeatureType.ShapedArrayParameters.DataType.int32(_:);
      goto LABEL_7;
    case 1:
      v15 = &enum case for FeatureType.ShapedArrayParameters.DataType.float16(_:);
      goto LABEL_7;
    case 2:
      v15 = &enum case for FeatureType.ShapedArrayParameters.DataType.float32(_:);
      goto LABEL_7;
    case 3:
      v15 = &enum case for FeatureType.ShapedArrayParameters.DataType.double(_:);
LABEL_7:
      v18 = *v15;
      v31 = &v27;
      v30 = v6;
      v19 = v6;
      v20 = v27;
      (*(v27 + 104))(&v27, v18, v19);
      v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
      v22 = swift_allocObject(v21, 40, 7);
      v22[2] = 1;
      v22[3] = 2;
      v22[4] = v28;
      v16 = v29;

      v17 = v31;
      static FeatureType.shapedArray(dataType:shape:optional:)(&v27, v22, 0);
      v22;
      (*(v20 + 8))(&v27, v30);
      goto LABEL_8;
    case 4:
      v16 = v29;
      v17 = &v27;

      FeatureType.StringParameters.init(optional:)(0);
      (*(v11 + 104))(&v27, enum case for FeatureType.string(_:), v10);
LABEL_8:
      v23 = v32;
      v24 = v17;
      break;
    case 5:
      v16 = v29;

      static FeatureType.dictionaryWithStringKeys(optional:)(0);
      v23 = v32;
      v24 = &v27;
      break;
    case 6:
      v16 = v29;

      if (v28)
      {
        FeatureType.DoubleParameters.init(optional:)(0);
        v26 = &enum case for FeatureType.double(_:);
      }

      else
      {
        FeatureType.IntParameters.init(optional:)(0);
        v26 = &enum case for FeatureType.int(_:);
      }

      (*(v11 + 104))(&v27, *v26, v10);
      v24 = &v27;
      v23 = v32;
      break;
  }

  return FeatureDescription.init(name:type:description:)(v23, v16, v24, 0, 0xE000000000000000);
}

uint64_t ColumnDescriptor.init(_:)(uint64_t a1)
{
  *&v277 = v1;
  v265 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Any?]>);
  v264 = *(v265 - 8);
  v2 = *(v264 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v249 = v215;
  v5 = alloca(v2);
  v6 = alloca(v2);
  v266 = v215;
  v268 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Float]>);
  v267 = *(v268 - 8);
  v7 = *(v267 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v250 = v215;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v269 = v215;
  v271 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Double]>);
  v270 = *(v271 - 8);
  v12 = *(v270 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v251 = v215;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v272 = v215;
  v274 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Int32]>);
  v273 = *(v274 - 8);
  v17 = *(v273 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v252 = v215;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v275 = v215;
  v262 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : UInt8]>);
  v261 = *(v262 - 8);
  v22 = *(v261 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v248 = v215;
  v25 = alloca(v22);
  v26 = alloca(v22);
  v263 = v215;
  v259 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Int]>);
  v258 = *(v259 - 8);
  v27 = *(v258 + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v247 = v215;
  v30 = alloca(v27);
  v31 = alloca(v27);
  v260 = v215;
  v245 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLMultiArray>);
  v244 = *(v245 - 8);
  v32 = *(v244 + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v246 = v215;
  v35 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>??) - 8) + 64);
  v36 = alloca(v35);
  v37 = alloca(v35);
  v255 = v215;
  v241 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Double>>);
  v240 = *(v241 - 8);
  v38 = *(v240 + 64);
  v39 = alloca(v38);
  v40 = alloca(v38);
  v243 = v215;
  v242 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>?);
  v41 = *(*(v242 - 8) + 64);
  v42 = alloca(v41);
  v43 = alloca(v41);
  v257 = v215;
  v238 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v237 = *(v238 - 8);
  v44 = *(v237 + 64);
  v45 = alloca(v44);
  v46 = alloca(v44);
  v239 = v215;
  v47 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>??) - 8) + 64);
  v48 = alloca(v47);
  v49 = alloca(v47);
  v254 = v215;
  v234 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Float>>);
  v233 = *(v234 - 8);
  v50 = *(v233 + 64);
  v51 = alloca(v50);
  v52 = alloca(v50);
  v236 = v215;
  v235 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>?);
  v53 = *(*(v235 - 8) + 64);
  v54 = alloca(v53);
  v55 = alloca(v53);
  v256 = v215;
  v231 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
  v230 = *(v231 - 8);
  v56 = *(v230 + 64);
  v57 = alloca(v56);
  v58 = alloca(v56);
  v232 = v215;
  v59 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>??) - 8) + 64);
  v60 = alloca(v59);
  v61 = alloca(v59);
  v224 = v215;
  v227 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Int32>>);
  v226 = *(v227 - 8);
  v62 = *(v226 + 64);
  v63 = alloca(v62);
  v64 = alloca(v62);
  v229 = v215;
  v228 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>?);
  v65 = *(*(v228 - 8) + 64);
  v66 = alloca(v65);
  v67 = alloca(v65);
  v225 = v215;
  v222 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[UInt8]>);
  v221 = *(v222 - 8);
  v68 = *(v221 + 64);
  v69 = alloca(v68);
  v70 = alloca(v68);
  v223 = v215;
  v219 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int32]>);
  v218 = *(v219 - 8);
  v71 = *(v218 + 64);
  v72 = alloca(v71);
  v73 = alloca(v71);
  v220 = v215;
  v74 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int]>);
  v216 = *(v74 - 8);
  v75 = *(v216 + 64);
  v76 = alloca(v75);
  v77 = alloca(v75);
  v217 = v215;
  v78 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v79 = *(v78 - 8);
  v80 = *(v79 + 64);
  v81 = alloca(v80);
  v82 = alloca(v80);
  v253 = v215;
  v83 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>) - 8) + 64);
  v84 = alloca(v83);
  v85 = alloca(v83);
  v215[1] = v215;
  v215[0] = AnyColumn.name.getter();
  v278 = v86;
  v279 = a1;
  v87 = AnyColumn.wrappedElementType.getter(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  if (swift_dynamicCastMetatype(v87, &type metadata for Int) || swift_dynamicCastMetatype(v87, &type metadata for UInt8) || swift_dynamicCastMetatype(v87, &type metadata for Int32) || swift_dynamicCastMetatype(v87, &type metadata for Float) || swift_dynamicCastMetatype(v87, &type metadata for Double))
  {
LABEL_4:
    v88 = type metadata accessor for AnyColumn(0);
    (*(*(v88 - 8) + 8))(v279, v88);
    return v215[0];
  }

  if (swift_dynamicCastMetatype(v87, &type metadata for String))
  {
    AnyColumn.assumingType<A>(_:)(&type metadata for String, &type metadata for String);
    *&v276 = 0;
    *(&v276 + 1) = 0xE000000000000000;
    v90 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
    v91 = v253;
    OptionalColumnProtocol.filled(with:)(&v276, v78, v90);
    (*(v79 + 8))(v91, v78);
    v92 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_11TabularData12FilledColumnVyAD0E0VySSGGTt0g5();

    v93 = specialized _copyCollectionToContiguousArray<A>(_:)(v92);
    v92;
    *&v276 = v93;
    v94 = v277;
    specialized MutableCollection<>.sort(by:)(&v276);
    if (v94)
    {

      BUG();
    }

LABEL_10:
    v95 = type metadata accessor for AnyColumn(0);
    (*(*(v95 - 8) + 8))(v279, v95);
    v92;
    return v215[0];
  }

  v96 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
  if (swift_dynamicCastMetatype(v87, v96))
  {
    v97 = v217;
    AnyColumn.assumingType<A>(_:)(v96, v96);
    v98 = specialized Collection.first.getter();
    (*(v216 + 8))(v97, v74);
    if (v98)
    {
      if (v98 == 2)
      {
        BUG();
      }

      outlined consume of MLImageClassifier.ModelParameters.ClassifierType?(v98);
    }

    v103 = v279;
LABEL_20:
    v105 = type metadata accessor for AnyColumn(0);
    v106 = *(v105 - 8);
    v107 = v103;
LABEL_21:
    (*(v106 + 8))(v107, v105);
    return v215[0];
  }

  v99 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int32]);
  if (swift_dynamicCastMetatype(v87, v99))
  {
    v100 = v220;
    v101 = v99;
    v102 = v99;
    v103 = v279;
    AnyColumn.assumingType<A>(_:)(v101, v102);
    v104 = specialized Collection.first.getter();
    (*(v218 + 8))(v100, v219);
    if (v104)
    {
      if (v104 == 2)
      {
        BUG();
      }

      outlined consume of MLImageClassifier.ModelParameters.ClassifierType?(v104);
    }

    goto LABEL_20;
  }

  v108 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [UInt8]);
  if (swift_dynamicCastMetatype(v87, v108))
  {
    v109 = v223;
    AnyColumn.assumingType<A>(_:)(v108, v108);
    v110 = specialized Collection.first.getter();
    (*(v221 + 8))(v109, v222);
    if (v110)
    {
      if (v110 == 2)
      {
        BUG();
      }

      outlined consume of MLImageClassifier.ModelParameters.ClassifierType?(v110);
    }

    v105 = type metadata accessor for AnyColumn(0);
    v106 = *(v105 - 8);
    v107 = v279;
    goto LABEL_21;
  }

  v111 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>);
  if (swift_dynamicCastMetatype(v87, v111))
  {
    v112 = v229;
    AnyColumn.assumingType<A>(_:)(v111, v111);
    v113 = v224;
    specialized Collection.first.getter();
    (*(v226 + 8))(v112, v227);
    if (__swift_getEnumTagSinglePayload(v113, 1, v228) == 1)
    {
      BUG();
    }

    v114 = v225;
    outlined init with take of DataFrame?(v113, v225, &demangling cache variable for type metadata for MLShapedArray<Int32>?);
    if (__swift_getEnumTagSinglePayload(v114, 1, v111) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v114, &demangling cache variable for type metadata for MLShapedArray<Int32>?);
      v92 = _swiftEmptyArrayStorage;
    }

    else
    {
      v92 = MLShapedArray.shape.getter(v111);
      (*(*(v111 - 8) + 8))(v114, v111);
    }

    if (v92[2] < 2uLL)
    {
      goto LABEL_10;
    }

    v118 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v118, 0, 0);
    *v119 = 0xD000000000000031;
    *(v119 + 8) = " has a missing element." + 0x8000000000000000;
    *(v119 + 16) = 0;
    *(v119 + 32) = 0;
    *(v119 + 48) = 0;
    swift_willThrow();
    v120 = type metadata accessor for AnyColumn(0);
    (*(*(v120 - 8) + 8))(v279, v120);
    v278;
    v121 = v92;
    return v121;
  }

  v115 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  if (swift_dynamicCastMetatype(v87, v115))
  {
    v116 = v232;
    AnyColumn.assumingType<A>(_:)(v115, v115);
    v117 = specialized Collection.first.getter();
    (*(v230 + 8))(v116, v231);
    if (v117)
    {
      if (v117 == 2)
      {
        BUG();
      }

      outlined consume of MLImageClassifier.ModelParameters.ClassifierType?(v117);
    }

    goto LABEL_4;
  }

  v122 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  if (swift_dynamicCastMetatype(v87, v122))
  {
    v123 = v236;
    AnyColumn.assumingType<A>(_:)(v122, v122);
    v124 = v254;
    specialized Collection.first.getter();
    (*(v233 + 8))(v123, v234);
    if (__swift_getEnumTagSinglePayload(v124, 1, v235) == 1)
    {
      BUG();
    }

    v125 = v256;
    outlined init with take of DataFrame?(v254, v256, &demangling cache variable for type metadata for MLShapedArray<Float>?);
    if (__swift_getEnumTagSinglePayload(v125, 1, v122) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v256, &demangling cache variable for type metadata for MLShapedArray<Float>?);
      v126 = _swiftEmptyArrayStorage;
    }

    else
    {
      v130 = v256;
      v126 = MLShapedArray.shape.getter(v122);
      (*(*(v122 - 8) + 8))(v130, v122);
    }

    if (v126[2] >= 2uLL)
    {
LABEL_52:
      v131 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v131, 0, 0);
      *v132 = 0xD000000000000031;
      *(v132 + 8) = " has a missing element." + 0x8000000000000000;
      *(v132 + 16) = 0;
      *(v132 + 32) = 0;
      *(v132 + 48) = 0;
      swift_willThrow();
      v133 = type metadata accessor for AnyColumn(0);
      (*(*(v133 - 8) + 8))(v279, v133);
      v278;
      v121 = v126;
      return v121;
    }

LABEL_58:
    v138 = type metadata accessor for AnyColumn(0);
    (*(*(v138 - 8) + 8))(v279, v138);
    v126;
    return v215[0];
  }

  v127 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  if (swift_dynamicCastMetatype(v87, v127))
  {
    v128 = v239;
    AnyColumn.assumingType<A>(_:)(v127, v127);
    v129 = specialized Collection.first.getter();
    (*(v237 + 8))(v128, v238);
    if (v129)
    {
      if (v129 == 2)
      {
        BUG();
      }

      outlined consume of MLImageClassifier.ModelParameters.ClassifierType?(v129);
    }

    goto LABEL_4;
  }

  v134 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
  if (swift_dynamicCastMetatype(v87, v134))
  {
    v135 = v243;
    AnyColumn.assumingType<A>(_:)(v134, v134);
    v136 = v255;
    specialized Collection.first.getter();
    (*(v240 + 8))(v135, v241);
    if (__swift_getEnumTagSinglePayload(v136, 1, v242) == 1)
    {
      BUG();
    }

    v137 = v257;
    outlined init with take of DataFrame?(v255, v257, &demangling cache variable for type metadata for MLShapedArray<Double>?);
    if (__swift_getEnumTagSinglePayload(v137, 1, v134) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v257, &demangling cache variable for type metadata for MLShapedArray<Double>?);
      v126 = _swiftEmptyArrayStorage;
    }

    else
    {
      v151 = v257;
      v126 = MLShapedArray.shape.getter(v134);
      (*(*(v134 - 8) + 8))(v151, v134);
    }

    if (v126[2] >= 2uLL)
    {
      goto LABEL_52;
    }

    goto LABEL_58;
  }

  v139 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
  if (swift_dynamicCastMetatype(v87, v139))
  {
    v140 = v246;
    AnyColumn.assumingType<A>(_:)(v139, v139);
    v141 = specialized Collection.first.getter();
    (*(v244 + 8))(v140, v245);
    if (v141)
    {
      if (v141 == &dword_0 + 2)
      {
        BUG();
      }

      v142 = [v141 shape];
      v143 = v142;
      v144 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
      v145 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v143, v144);

      v146 = v277;
      ML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8NSNumberCG_Sis5NeverOTg5071_s8CreateML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm(v145);
      v145;
      if (ML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm[2] <= 1uLL)
      {
        ML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm;
        v169 = v141;
        ColumnDescriptor.ColumnTypeDescriptor.init(_:)(v169);
        if (!v146)
        {
          if (v170 == -1)
          {
            BUG();
          }

          v181 = type metadata accessor for AnyColumn(0);
          (*(*(v181 - 8) + 8))(v279, v181);
          outlined consume of MLMultiArray??(v141);
          return v215[0];
        }

        v171 = type metadata accessor for AnyColumn(0);
        (*(*(v171 - 8) + 8))(v279, v171);
      }

      else
      {
        v148 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v148, 0, 0);
        *v149 = 0xD000000000000031;
        *(v149 + 8) = " has a missing element." + 0x8000000000000000;
        *(v149 + 16) = 0;
        *(v149 + 32) = 0;
        *(v149 + 48) = 0;
        swift_willThrow();
        v150 = type metadata accessor for AnyColumn(0);
        (*(*(v150 - 8) + 8))(v279, v150);
        ML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm;
      }

      outlined consume of MLMultiArray??(v141);
      v121 = v278;
      return v121;
    }

    v278;
    *&v276 = 0;
    *(&v276 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(32);
    SBYTE8(v276);
    *&v276 = 0x206E6D756C6F43;
    *(&v276 + 1) = 0xE700000000000000;
    v160 = v279;
    v161._countAndFlagsBits = AnyColumn.name.getter();
    object = v161._object;
    String.append(_:)(v161);
    object;
    v163._object = "unsupported type " + 0x8000000000000000;
    v163._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v163);
    v277 = v276;
    v164 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v164, 0, 0);
    *v165 = v277;
    *(v165 + 16) = 0;
    *(v165 + 32) = 0;
    *(v165 + 48) = 1;
    swift_willThrow();
    v166 = type metadata accessor for AnyColumn(0);
    v167 = *(v166 - 8);
    v168 = v160;
    return (*(v167 + 8))(v168, v166);
  }

  v152 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Int]);
  if (!swift_dynamicCastMetatype(v87, v152))
  {
    v172 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : UInt8]);
    if (swift_dynamicCastMetatype(v87, v172))
    {
      v173 = v263;
      AnyColumn.assumingType<A>(_:)(v172, v172);
      v174 = v248;
      (*(v261 + 16))(v248, v173, v262);
      v175 = v277;
      _s8CreateML16ColumnDescriptorV0c4TypeD0OyAE11TabularData0C0VySDySSxGGKclufCs5UInt8V_Tt0g5(v174);
      if (v175)
      {
        v278;
        v176 = type metadata accessor for AnyColumn(0);
        (*(*(v176 - 8) + 8))(v279, v176);
        v157 = v263;
        v158 = v262;
        v159 = v261;
        return (*(v159 + 8))(v157, v158);
      }

      v187 = type metadata accessor for AnyColumn(0);
      (*(*(v187 - 8) + 8))(v279, v187);
      v178 = v263;
      v179 = v262;
      v180 = v261;
    }

    else
    {
      v182 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Int32]);
      if (swift_dynamicCastMetatype(v87, v182))
      {
        v183 = v275;
        AnyColumn.assumingType<A>(_:)(v182, v182);
        v184 = v252;
        (*(v273 + 16))(v252, v183, v274);
        v185 = v277;
        _s8CreateML16ColumnDescriptorV0c4TypeD0OyAE11TabularData0C0VySDySSxGGKclufCs5Int32V_Tt0g5(v184);
        if (v185)
        {
          v278;
          v186 = type metadata accessor for AnyColumn(0);
          (*(*(v186 - 8) + 8))(v279, v186);
          v157 = v275;
          v158 = v274;
          v159 = v273;
          return (*(v159 + 8))(v157, v158);
        }

        v193 = type metadata accessor for AnyColumn(0);
        (*(*(v193 - 8) + 8))(v279, v193);
        v178 = v275;
        v179 = v274;
        v180 = v273;
      }

      else
      {
        v188 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Double]);
        if (swift_dynamicCastMetatype(v87, v188))
        {
          v189 = v272;
          AnyColumn.assumingType<A>(_:)(v188, v188);
          v190 = v251;
          (*(v270 + 16))(v251, v189, v271);
          v191 = v277;
          _s8CreateML16ColumnDescriptorV0c4TypeD0OyAE11TabularData0C0VySDySSxGGKclufCSd_Tt0g5(v190);
          if (v191)
          {
            v278;
            v192 = type metadata accessor for AnyColumn(0);
            (*(*(v192 - 8) + 8))(v279, v192);
            v157 = v272;
            v158 = v271;
            v159 = v270;
            return (*(v159 + 8))(v157, v158);
          }

          v199 = type metadata accessor for AnyColumn(0);
          (*(*(v199 - 8) + 8))(v279, v199);
          v178 = v272;
          v179 = v271;
          v180 = v270;
        }

        else
        {
          v194 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Float]);
          if (swift_dynamicCastMetatype(v87, v194))
          {
            v195 = v269;
            AnyColumn.assumingType<A>(_:)(v194, v194);
            v196 = v250;
            (*(v267 + 16))(v250, v195, v268);
            v197 = v277;
            _s8CreateML16ColumnDescriptorV0c4TypeD0OyAE11TabularData0C0VySDySSxGGKclufCSf_Tt0g5(v196);
            if (v197)
            {
              v278;
              v198 = type metadata accessor for AnyColumn(0);
              (*(*(v198 - 8) + 8))(v279, v198);
              v157 = v269;
              v158 = v268;
              v159 = v267;
              return (*(v159 + 8))(v157, v158);
            }

            v205 = type metadata accessor for AnyColumn(0);
            (*(*(v205 - 8) + 8))(v279, v205);
            v178 = v269;
            v179 = v268;
            v180 = v267;
          }

          else
          {
            v200 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any?]);
            if (!swift_dynamicCastMetatype(v87, v200))
            {
              v278;
              *&v276 = 0;
              *(&v276 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(45);
              SBYTE8(v276);
              *&v276 = 0x206E6D756C6F43;
              *(&v276 + 1) = 0xE700000000000000;
              v206._countAndFlagsBits = AnyColumn.name.getter();
              v207 = v206._object;
              String.append(_:)(v206);
              v207;
              v208._object = "SupportVectorClassifier" + 0x8000000000000000;
              v208._countAndFlagsBits = 0xD000000000000021;
              String.append(_:)(v208);
              v209 = AnyColumn.wrappedElementType.getter(0xD000000000000021);
              v210._countAndFlagsBits = _typeName(_:qualified:)(v209, 0);
              v211 = v210._object;
              String.append(_:)(v210);
              v211;
              v208._countAndFlagsBits = 46;
              v208._object = 0xE100000000000000;
              String.append(_:)(v208);
              v277 = v276;
              v212 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
              swift_allocError(&type metadata for MLCreateError, v212, 0, 0);
              *v213 = v277;
              *(v213 + 16) = 0;
              *(v213 + 32) = 0;
              *(v213 + 48) = 1;
              swift_willThrow();
              v166 = type metadata accessor for AnyColumn(0);
              v167 = *(v166 - 8);
              v168 = v279;
              return (*(v167 + 8))(v168, v166);
            }

            v201 = v266;
            AnyColumn.assumingType<A>(_:)(v200, v200);
            v202 = v249;
            (*(v264 + 16))(v249, v201, v265);
            v203 = v277;
            _s8CreateML16ColumnDescriptorV0c4TypeD0OyAE11TabularData0C0VySDySSxSgGGKclufCyp_Tt0g5(v202);
            if (v203)
            {
              v278;
              v204 = type metadata accessor for AnyColumn(0);
              (*(*(v204 - 8) + 8))(v279, v204);
              v157 = v266;
              v158 = v265;
              v159 = v264;
              return (*(v159 + 8))(v157, v158);
            }

            v214 = type metadata accessor for AnyColumn(0);
            (*(*(v214 - 8) + 8))(v279, v214);
            v178 = v266;
            v179 = v265;
            v180 = v264;
          }
        }
      }
    }

LABEL_101:
    (*(v180 + 8))(v178, v179);
    return v215[0];
  }

  v153 = v260;
  AnyColumn.assumingType<A>(_:)(v152, v152);
  v154 = v247;
  (*(v258 + 16))(v247, v153, v259);
  v155 = v277;
  _s8CreateML16ColumnDescriptorV0c4TypeD0OyAE11TabularData0C0VySDySSxGGKclufCSi_Tt0g5(v154);
  if (!v155)
  {
    v177 = type metadata accessor for AnyColumn(0);
    (*(*(v177 - 8) + 8))(v279, v177);
    v178 = v260;
    v179 = v259;
    v180 = v258;
    goto LABEL_101;
  }

  v278;
  v156 = type metadata accessor for AnyColumn(0);
  (*(*(v156 - 8) + 8))(v279, v156);
  v157 = v260;
  v158 = v259;
  v159 = v258;
  return (*(v159 + 8))(v157, v158);
}