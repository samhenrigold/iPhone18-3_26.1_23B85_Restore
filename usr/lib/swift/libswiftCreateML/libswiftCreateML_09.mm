uint64_t specialized FeatureMatrixBuilder.fillArray(from:size:column:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v83 = v3;
  *&v81 = v4;
  v84 = a3;
  v85 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLMultiArray>);
  v73 = *(v79 - 8);
  v5 = *(v73 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v74 = &v58;
  v78 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Double>>);
  v77 = *(v78 - 8);
  v8 = *(v77 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v75 = &v58;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v72 = &v58;
  v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Float>>);
  v69 = *(v70 - 8);
  v13 = *(v69 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v71 = &v58;
  v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Int32>>);
  v66 = *(v67 - 8);
  v16 = *(v66 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v68 = &v58;
  v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v63 = *(v64 - 8);
  v19 = *(v63 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v65 = &v58;
  v62 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
  v22 = *(v62 - 8);
  v23 = *(v22 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v61 = &v58;
  v80 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int]>);
  v60 = *(v80 - 8);
  v26 = *(v60 + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v76 = a1;
  v29 = AnyColumn.wrappedElementType.getter(&demangling cache variable for type metadata for Column<[Int]>);
  v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
  v82 = v29;
  if (swift_dynamicCastMetatype(v29, v30))
  {
    AnyColumn.assumingType<A>(_:)(v30, v30);
    specialized FeatureMatrixBuilder.fillArray<A>(from:size:column:)(&v58, v85, v84);
    v31 = &v58;
    v32 = v80;
    v33 = v60;
    return (*(v33 + 8))(v31, v32);
  }

  v35 = v61;
  v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  if (swift_dynamicCastMetatype(v82, v36))
  {
    AnyColumn.assumingType<A>(_:)(v36, v36);
    specialized FeatureMatrixBuilder.fillArray<A>(from:size:column:)(v35, v85, v84);
    return (*(v22 + 8))(v35, v62);
  }

  else
  {
    v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
    if (swift_dynamicCastMetatype(v82, v37))
    {
      v38 = v65;
      AnyColumn.assumingType<A>(_:)(v37, v37);
      specialized FeatureMatrixBuilder.fillArray<A>(from:size:column:)(v38, v85, v84);
      v31 = v38;
      v32 = v64;
      v33 = v63;
      return (*(v33 + 8))(v31, v32);
    }

    v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>);
    if (swift_dynamicCastMetatype(v82, v39))
    {
      v40 = v68;
      AnyColumn.assumingType<A>(_:)(v39, v39);
      specialized FeatureMatrixBuilder.fillArray(from:size:column:)(v40, v85, v84);
      v31 = v40;
      v32 = v67;
      v33 = v66;
      return (*(v33 + 8))(v31, v32);
    }

    v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
    if (swift_dynamicCastMetatype(v82, v41))
    {
      v42 = v71;
      AnyColumn.assumingType<A>(_:)(v41, v41);
      specialized FeatureMatrixBuilder.fillArray<A>(from:size:column:)(v42, v85, v84);
      v31 = v42;
      v32 = v70;
      v33 = v69;
      return (*(v33 + 8))(v31, v32);
    }

    v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
    if (swift_dynamicCastMetatype(v82, v43))
    {
      v44 = v72;
      AnyColumn.assumingType<A>(_:)(v43, v43);
      specialized FeatureMatrixBuilder.fillArray<A>(from:size:column:)(v44, v85, v84);
      v31 = v44;
      v32 = v78;
      v33 = v77;
      return (*(v33 + 8))(v31, v32);
    }

    v80 = v43;
    v45 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
    if (swift_dynamicCastMetatype(v82, v45))
    {
      v46 = v74;
      AnyColumn.assumingType<A>(_:)(v45, v45);
      v47 = v75;
      Column.mapNonNil<A>(_:)(closure #1 in FeatureMatrixBuilder.fillArray(from:size:column:), 0, v79, v80);
      specialized FeatureMatrixBuilder.fillArray<A>(from:size:column:)(v47, v85, v84);
      (*(v77 + 8))(v47, v78);
      v31 = v46;
      v32 = v79;
      v33 = v73;
      return (*(v33 + 8))(v31, v32);
    }

    *&v59 = 0;
    *(&v59 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    v48._object = "g-point values for feature '" + 0x8000000000000000;
    v48._countAndFlagsBits = 0xD000000000000031;
    String.append(_:)(v48);
    v49 = AnyColumn.name.getter();
    v51 = v50;
    v48._countAndFlagsBits = v49;
    v48._object = v50;
    String.append(_:)(v48);
    v51;
    v48._countAndFlagsBits = 0x6720747562202C27;
    v48._object = 0xEB0000000020746FLL;
    String.append(_:)(v48);
    v52 = AnyColumn.wrappedElementType.getter(0x6720747562202C27);
    v53 = _typeName(_:qualified:)(v52, 0);
    v55 = v54;
    v48._countAndFlagsBits = v53;
    v48._object = v54;
    String.append(_:)(v48);
    v55;
    v48._countAndFlagsBits = 46;
    v48._object = 0xE100000000000000;
    String.append(_:)(v48);
    v81 = v59;
    v56 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v56, 0, 0);
    *v57 = v81;
    *(v57 + 16) = 0;
    *(v57 + 32) = 0;
    *(v57 + 48) = 0;
    return swift_willThrow();
  }
}

{
  v83 = v3;
  *&v81 = v4;
  v84 = a3;
  v85 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLMultiArray>);
  v73 = *(v79 - 8);
  v5 = *(v73 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v74 = &v58;
  v78 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Double>>);
  v77 = *(v78 - 8);
  v8 = *(v77 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v75 = &v58;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v72 = &v58;
  v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Float>>);
  v69 = *(v70 - 8);
  v13 = *(v69 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v71 = &v58;
  v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Int32>>);
  v66 = *(v67 - 8);
  v16 = *(v66 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v68 = &v58;
  v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v63 = *(v64 - 8);
  v19 = *(v63 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v65 = &v58;
  v62 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
  v22 = *(v62 - 8);
  v23 = *(v22 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v61 = &v58;
  v80 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int]>);
  v60 = *(v80 - 8);
  v26 = *(v60 + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v76 = a1;
  v29 = AnyColumn.wrappedElementType.getter(&demangling cache variable for type metadata for Column<[Int]>);
  v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
  v82 = v29;
  if (swift_dynamicCastMetatype(v29, v30))
  {
    AnyColumn.assumingType<A>(_:)(v30, v30);
    specialized FeatureMatrixBuilder.fillArray<A>(from:size:column:)(&v58, v85, v84);
    v31 = &v58;
    v32 = v80;
    v33 = v60;
    return (*(v33 + 8))(v31, v32);
  }

  v35 = v61;
  v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  if (swift_dynamicCastMetatype(v82, v36))
  {
    AnyColumn.assumingType<A>(_:)(v36, v36);
    specialized FeatureMatrixBuilder.fillArray<A>(from:size:column:)(v35, v85, v84);
    return (*(v22 + 8))(v35, v62);
  }

  else
  {
    v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
    if (swift_dynamicCastMetatype(v82, v37))
    {
      v38 = v65;
      AnyColumn.assumingType<A>(_:)(v37, v37);
      specialized FeatureMatrixBuilder.fillArray<A>(from:size:column:)(v38, v85, v84);
      v31 = v38;
      v32 = v64;
      v33 = v63;
      return (*(v33 + 8))(v31, v32);
    }

    v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>);
    if (swift_dynamicCastMetatype(v82, v39))
    {
      v40 = v68;
      AnyColumn.assumingType<A>(_:)(v39, v39);
      specialized FeatureMatrixBuilder.fillArray(from:size:column:)(v40, v85, v84);
      v31 = v40;
      v32 = v67;
      v33 = v66;
      return (*(v33 + 8))(v31, v32);
    }

    v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
    if (swift_dynamicCastMetatype(v82, v41))
    {
      v42 = v71;
      AnyColumn.assumingType<A>(_:)(v41, v41);
      specialized FeatureMatrixBuilder.fillArray<A>(from:size:column:)(v42, v85, v84);
      v31 = v42;
      v32 = v70;
      v33 = v69;
      return (*(v33 + 8))(v31, v32);
    }

    v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
    if (swift_dynamicCastMetatype(v82, v43))
    {
      v44 = v72;
      AnyColumn.assumingType<A>(_:)(v43, v43);
      specialized FeatureMatrixBuilder.fillArray<A>(from:size:column:)(v44, v85, v84);
      v31 = v44;
      v32 = v78;
      v33 = v77;
      return (*(v33 + 8))(v31, v32);
    }

    v80 = v43;
    v45 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
    if (swift_dynamicCastMetatype(v82, v45))
    {
      v46 = v74;
      AnyColumn.assumingType<A>(_:)(v45, v45);
      v47 = v75;
      Column.mapNonNil<A>(_:)(closure #1 in FeatureMatrixBuilder.fillArray(from:size:column:), 0, v79, v80);
      specialized FeatureMatrixBuilder.fillArray<A>(from:size:column:)(v47, v85, v84);
      (*(v77 + 8))(v47, v78);
      v31 = v46;
      v32 = v79;
      v33 = v73;
      return (*(v33 + 8))(v31, v32);
    }

    *&v59 = 0;
    *(&v59 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    v48._object = "g-point values for feature '" + 0x8000000000000000;
    v48._countAndFlagsBits = 0xD000000000000031;
    String.append(_:)(v48);
    v49 = AnyColumn.name.getter();
    v51 = v50;
    v48._countAndFlagsBits = v49;
    v48._object = v50;
    String.append(_:)(v48);
    v51;
    v48._countAndFlagsBits = 0x6720747562202C27;
    v48._object = 0xEB0000000020746FLL;
    String.append(_:)(v48);
    v52 = AnyColumn.wrappedElementType.getter(0x6720747562202C27);
    v53 = _typeName(_:qualified:)(v52, 0);
    v55 = v54;
    v48._countAndFlagsBits = v53;
    v48._object = v54;
    String.append(_:)(v48);
    v55;
    v48._countAndFlagsBits = 46;
    v48._object = 0xE100000000000000;
    String.append(_:)(v48);
    v81 = v59;
    v56 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v56, 0, 0);
    *v57 = v81;
    *(v57 + 16) = 0;
    *(v57 + 32) = 0;
    *(v57 + 48) = 0;
    return swift_willThrow();
  }
}

{
  v54 = v3;
  v53 = v4;
  v50 = a3;
  v5 = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v56 = &v46;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>);
  v62 = *(v9 - 8);
  v10 = *(v62 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Int32>>);
  v57 = a1;
  result = Column.count.getter(v58);
  v52 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v14 = 0;
    v63 = v9;
    v64 = &v46;
    *&v59 = a2;
    while (1)
    {
      v15 = v56;
      v61 = v14;
      Column.subscript.getter(v14, v58);
      if (__swift_getEnumTagSinglePayload(v15, 1, v9) == 1)
      {
        v16 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Int32> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Int32>, &protocol conformance descriptor for MLShapedArray<A>);
        MLShapedArrayProtocol.init(arrayLiteral:)(_swiftEmptyArrayStorage, v9, v16);
        v17 = v56;
        if (__swift_getEnumTagSinglePayload(v56, 1, v9) != 1)
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v17, &demangling cache variable for type metadata for MLShapedArray<Int32>?);
        }
      }

      else
      {
        (*(v62 + 32))(v64, v15, v9);
      }

      v18 = MLShapedArray.shape.getter(v9);
      if (*(v18 + 16) != 1)
      {
        break;
      }

      v19 = *(v18 + 32);
      v18;
      v20 = v19 == v59;
      v5 = v59;
      if (!v20)
      {
        goto LABEL_18;
      }

      if (v59 < 0)
      {
        BUG();
      }

      v51 = v61 + 1;
      if (v59)
      {
        v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
        v49 = v53 + *(v21 + 44);
        v22 = 0;
        do
        {
          v23 = v22 + v50;
          if (__OFADD__(v22, v50))
          {
            BUG();
          }

          v48 = v22 + 1;
          v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
          v25 = swift_allocObject(v24, 40, 7);
          v25[2] = 1;
          v25[3] = 2;
          v25[4] = v22;
          v26 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Int32> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Int32>, &protocol conformance descriptor for MLShapedArray<A>);
          MLShapedArrayProtocol.subscript.getter(v25, v63, v26);
          v25;
          v60 = SLODWORD(v47[0]);
          v27 = specialized DenseMatrix.subscript.modify(v47, v61, v23);
          *v28 = v60;
          (v27)(v47, 0);
          v22 = v48;
          v5 = v59;
        }

        while (v59 != v48);
      }

      v9 = v63;
      (*(v62 + 8))(v64, v63);
      result = v51;
      v14 = v51;
      if (v51 == v52)
      {
        return result;
      }
    }

    v18;
LABEL_18:
    *&v47[0] = 0;
    *(&v47[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    v29._object = " elements at row " + 0x8000000000000000;
    v29._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v29);
    v55 = v5;
    v30 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v32 = v31;
    v29._countAndFlagsBits = v30;
    v29._object = v31;
    String.append(_:)(v29);
    v32;
    v29._countAndFlagsBits = 0x656620726F66205DLL;
    v29._object = 0xEF27206572757461;
    String.append(_:)(v29);
    v33 = Column.name.getter(v58);
    v35 = v34;
    v29._countAndFlagsBits = v33;
    v29._object = v34;
    String.append(_:)(v29);
    v35;
    v29._object = "arrays with shape [" + 0x8000000000000000;
    v29._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v29);
    v36 = MLShapedArray.shape.getter(v63);
    v37 = v36;
    v38 = Array.description.getter(v36, &type metadata for Int);
    v40 = v39;
    v29._countAndFlagsBits = v38;
    v29._object = v39;
    String.append(_:)(v29);
    v37;
    v40;
    v29._countAndFlagsBits = 0x20776F7220746120;
    v29._object = 0xE800000000000000;
    String.append(_:)(v29);
    v55 = v61;
    v41 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v43 = v42;
    v29._countAndFlagsBits = v41;
    v29._object = v42;
    String.append(_:)(v29);
    v43;
    v29._countAndFlagsBits = 46;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);
    v59 = v47[0];
    v44 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v44, 0, 0);
    *v45 = v59;
    *(v45 + 16) = 0;
    *(v45 + 32) = 0;
    *(v45 + 48) = 0;
    swift_willThrow();
    return (*(v62 + 8))(v64, v63);
  }

  return result;
}

{
  v54 = v3;
  v53 = v4;
  v50 = a3;
  v5 = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v56 = v46;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>);
  v61 = *(v9 - 8);
  v10 = *(v61 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Int32>>);
  v57 = a1;
  result = Column.count.getter(v58);
  v52 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v14 = 0;
    v62 = v9;
    v63 = v46;
    *&v59 = a2;
    while (1)
    {
      v15 = v56;
      v60 = v14;
      Column.subscript.getter(v14, v58);
      if (__swift_getEnumTagSinglePayload(v15, 1, v9) == 1)
      {
        v16 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Int32> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Int32>, &protocol conformance descriptor for MLShapedArray<A>);
        MLShapedArrayProtocol.init(arrayLiteral:)(_swiftEmptyArrayStorage, v9, v16);
        v17 = v56;
        if (__swift_getEnumTagSinglePayload(v56, 1, v9) != 1)
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v17, &demangling cache variable for type metadata for MLShapedArray<Int32>?);
        }
      }

      else
      {
        (*(v61 + 32))(v63, v15, v9);
      }

      v18 = MLShapedArray.shape.getter(v9);
      if (*(v18 + 16) != 1)
      {
        break;
      }

      v19 = *(v18 + 32);
      v18;
      v20 = v19 == v59;
      v5 = v59;
      if (!v20)
      {
        goto LABEL_18;
      }

      if (v59 < 0)
      {
        BUG();
      }

      v51 = v60 + 1;
      if (v59)
      {
        v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
        v49 = v53 + *(v21 + 44);
        v22 = 0;
        do
        {
          v23 = v22 + v50;
          if (__OFADD__(v22, v50))
          {
            BUG();
          }

          v47 = v22 + 1;
          v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
          v25 = swift_allocObject(v24, 40, 7);
          v25[2] = 1;
          v25[3] = 2;
          v25[4] = v22;
          v26 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Int32> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Int32>, &protocol conformance descriptor for MLShapedArray<A>);
          MLShapedArrayProtocol.subscript.getter(v25, v62, v26);
          v25;
          v48 = SLODWORD(v46[0]);
          v27 = specialized DenseMatrix.subscript.modify(v46, v60, v23);
          *v28 = v48;
          (v27)(v46, 0);
          v22 = v47;
          v5 = v59;
        }

        while (v59 != v47);
      }

      v9 = v62;
      (*(v61 + 8))(v63, v62);
      result = v51;
      v14 = v51;
      if (v51 == v52)
      {
        return result;
      }
    }

    v18;
LABEL_18:
    *&v46[0] = 0;
    *(&v46[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    v29._object = " elements at row " + 0x8000000000000000;
    v29._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v29);
    v55 = v5;
    v30 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v32 = v31;
    v29._countAndFlagsBits = v30;
    v29._object = v31;
    String.append(_:)(v29);
    v32;
    v29._countAndFlagsBits = 0x656620726F66205DLL;
    v29._object = 0xEF27206572757461;
    String.append(_:)(v29);
    v33 = Column.name.getter(v58);
    v35 = v34;
    v29._countAndFlagsBits = v33;
    v29._object = v34;
    String.append(_:)(v29);
    v35;
    v29._object = "arrays with shape [" + 0x8000000000000000;
    v29._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v29);
    v36 = MLShapedArray.shape.getter(v62);
    v37 = v36;
    v38 = Array.description.getter(v36, &type metadata for Int);
    v40 = v39;
    v29._countAndFlagsBits = v38;
    v29._object = v39;
    String.append(_:)(v29);
    v37;
    v40;
    v29._countAndFlagsBits = 0x20776F7220746120;
    v29._object = 0xE800000000000000;
    String.append(_:)(v29);
    v55 = v60;
    v41 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v43 = v42;
    v29._countAndFlagsBits = v41;
    v29._object = v42;
    String.append(_:)(v29);
    v43;
    v29._countAndFlagsBits = 46;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);
    v59 = v46[0];
    v44 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v44, 0, 0);
    *v45 = v59;
    *(v45 + 16) = 0;
    *(v45 + 32) = 0;
    *(v45 + 48) = 0;
    swift_willThrow();
    return (*(v61 + 8))(v63, v62);
  }

  return result;
}

uint64_t specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(uint64_t a1, unint64_t a2)
{
  v13 = v2;
  v10 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int8>);
  v11 = a1;
  result = Column.count.getter(v12);
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v4 = result;
    v13 += *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>) + 44);
    for (i = 0; i != v4; ++i)
    {
      Column.subscript.getter(i, v12);
      v6 = 0.0;
      if (!BYTE1(v9[0]))
      {
        v6 = SLOBYTE(v9[0]);
      }

      v14 = v6;
      v7 = specialized DenseMatrix.subscript.modify(v9, i, v10);
      *v8 = v14;
      result = (v7)(v9, 0);
    }
  }

  return result;
}

{
  v13 = v2;
  v10 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int16>);
  v11 = a1;
  result = Column.count.getter(v12);
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v4 = result;
    v13 += *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>) + 44);
    for (i = 0; i != v4; ++i)
    {
      Column.subscript.getter(i, v12);
      v6 = 0.0;
      if (!BYTE2(v9[0]))
      {
        v6 = SLOWORD(v9[0]);
      }

      v14 = v6;
      v7 = specialized DenseMatrix.subscript.modify(v9, i, v10);
      *v8 = v14;
      result = (v7)(v9, 0);
    }
  }

  return result;
}

{
  v13 = v2;
  v10 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int32>);
  v11 = a1;
  result = Column.count.getter(v12);
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v4 = result;
    v13 += *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>) + 44);
    for (i = 0; i != v4; ++i)
    {
      Column.subscript.getter(i, v12);
      v6 = 0.0;
      if (!BYTE4(v9[0]))
      {
        v6 = SLODWORD(v9[0]);
      }

      v14 = v6;
      v7 = specialized DenseMatrix.subscript.modify(v9, i, v10);
      *v8 = v14;
      result = (v7)(v9, 0);
    }
  }

  return result;
}

{
  v14 = v2;
  v11 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int8>);
  v12 = a1;
  result = Column.count.getter(v13);
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v4 = result;
    v14 += *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>) + 44);
    for (i = 0; i != v4; ++i)
    {
      Column.subscript.getter(i, v13);
      v6 = 0.0;
      if (!BYTE1(v9[0]))
      {
        v6 = SLOBYTE(v9[0]);
      }

      v10 = v6;
      v7 = specialized DenseMatrix.subscript.modify(v9, i, v11);
      *v8 = v10;
      result = (v7)(v9, 0);
    }
  }

  return result;
}

{
  v14 = v2;
  v11 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int16>);
  v12 = a1;
  result = Column.count.getter(v13);
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v4 = result;
    v14 += *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>) + 44);
    for (i = 0; i != v4; ++i)
    {
      Column.subscript.getter(i, v13);
      v6 = 0.0;
      if (!BYTE2(v9[0]))
      {
        v6 = SLOWORD(v9[0]);
      }

      v10 = v6;
      v7 = specialized DenseMatrix.subscript.modify(v9, i, v11);
      *v8 = v10;
      result = (v7)(v9, 0);
    }
  }

  return result;
}

{
  v14 = v2;
  v11 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int32>);
  v12 = a1;
  result = Column.count.getter(v13);
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v4 = result;
    v14 += *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>) + 44);
    for (i = 0; i != v4; ++i)
    {
      Column.subscript.getter(i, v13);
      v6 = 0.0;
      if (!BYTE4(v9[0]))
      {
        v6 = SLODWORD(v9[0]);
      }

      v10 = v6;
      v7 = specialized DenseMatrix.subscript.modify(v9, i, v11);
      *v8 = v10;
      result = (v7)(v9, 0);
    }
  }

  return result;
}

{
  v13 = v2;
  v10 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Float>);
  v11 = a1;
  result = Column.count.getter(v12);
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v4 = result;
    v13 += *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>) + 44);
    for (i = 0; i != v4; ++i)
    {
      Column.subscript.getter(i, v12);
      v6 = 0;
      if (!BYTE4(v9[0]))
      {
        v6 = v9[0];
      }

      v14 = v6;
      v7 = specialized DenseMatrix.subscript.modify(v9, i, v10);
      *v8 = v14;
      result = (v7)(v9, 0);
    }
  }

  return result;
}

{
  v14 = v2;
  v11 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v12 = a1;
  result = Column.count.getter(v13);
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v4 = result;
    v14 += *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>) + 44);
    for (i = 0; i != v4; ++i)
    {
      Column.subscript.getter(i, v13);
      v6 = 0.0;
      if (!v10)
      {
        v6 = *&v9;
      }

      v15 = v6;
      v7 = specialized DenseMatrix.subscript.modify(&v9, i, v11);
      *v8 = v15;
      result = (v7)(&v9, 0);
    }
  }

  return result;
}

{
  v14 = v2;
  v11 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Float>);
  v12 = a1;
  result = Column.count.getter(v13);
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v4 = result;
    v14 += *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>) + 44);
    for (i = 0; i != v4; ++i)
    {
      Column.subscript.getter(i, v13);
      v6 = 0.0;
      if (!BYTE4(v9[0]))
      {
        v6 = *v9;
      }

      v10 = v6;
      v7 = specialized DenseMatrix.subscript.modify(v9, i, v11);
      *v8 = v10;
      result = (v7)(v9, 0);
    }
  }

  return result;
}

{
  v15 = v2;
  v12 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v13 = a1;
  result = Column.count.getter(v14);
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v4 = result;
    v15 += *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>) + 44);
    for (i = 0; i != v4; ++i)
    {
      Column.subscript.getter(i, v14);
      v6 = 0;
      if (!v10)
      {
        v6 = v9;
      }

      v11 = v6;
      v7 = specialized DenseMatrix.subscript.modify(&v9, i, v12);
      *v8 = v11;
      result = (v7)(&v9, 0);
    }
  }

  return result;
}

uint64_t specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v15 = v3;
  v12 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledName(a3);
  v13 = a1;
  result = Column.count.getter(v14);
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v5 = result;
    v15 += *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>) + 44);
    for (i = 0; i != v5; ++i)
    {
      Column.subscript.getter(i, v14);
      v7 = 0.0;
      if (!v11)
      {
        v7 = v10;
      }

      v16 = v7;
      v8 = specialized DenseMatrix.subscript.modify(&v10, i, v12);
      *v9 = v16;
      result = (v8)(&v10, 0);
    }
  }

  return result;
}

{
  v16 = v3;
  v13 = a2;
  v15 = __swift_instantiateConcreteTypeFromMangledName(a3);
  v14 = a1;
  result = Column.count.getter(v15);
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v5 = result;
    v16 += *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>) + 44);
    for (i = 0; i != v5; ++i)
    {
      Column.subscript.getter(i, v15);
      v7 = 0.0;
      if (!v11)
      {
        v7 = v10;
      }

      v12 = v7;
      v8 = specialized DenseMatrix.subscript.modify(&v10, i, v13);
      *v9 = v12;
      result = (v8)(&v10, 0);
    }
  }

  return result;
}

uint64_t specialized FeatureMatrixBuilder.fillInteger(from:column:)(uint64_t a1, unint64_t a2, float a3)
{
  v14 = v3;
  v11 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<NSNumber>);
  v12 = a1;
  result = Column.count.getter(v13);
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v5 = result;
    v14 += *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>) + 44);
    for (i = 0; i != v5; ++i)
    {
      Column.subscript.getter(i, v13);
      v7 = v10[0];
      if (v10[0])
      {
        [v10[0] floatValue];
        v15 = a3;
      }

      else
      {
        v15 = 0.0;
      }

      v8 = specialized DenseMatrix.subscript.modify(v10, i, v11);
      a3 = v15;
      *v9 = v15;
      result = (v8)(v10, 0);
    }
  }

  return result;
}

{
  v15 = v3;
  v12 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<NSNumber>);
  v13 = a1;
  result = Column.count.getter(v14);
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v5 = result;
    v15 += *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>) + 44);
    for (i = 0; i != v5; ++i)
    {
      Column.subscript.getter(i, v14);
      v7 = v11[0];
      if (v11[0])
      {
        [v11[0] floatValue];
        *&v16 = a3;

        v8 = *&v16;
      }

      else
      {
        v8 = 0.0;
      }

      v16 = v8;
      v9 = specialized DenseMatrix.subscript.modify(v11, i, v12);
      a3 = *&v16;
      *v10 = v16;
      result = (v9)(v11, 0);
    }
  }

  return result;
}

uint64_t specialized FeatureMatrixBuilder.fillArray<A>(from:size:column:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = v4;
  v30 = a3;
  v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int]>);
  v34 = a1;
  result = Column.count.getter(v35);
  v31 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v33 = v3;
    v7 = 0;
    while (1)
    {
      Column.subscript.getter(v7, v35);
      v8 = *&v29[0];
      if (!*&v29[0])
      {
        v8 = _swiftEmptyArrayStorage;
      }

      v38 = v7;
      v39 = v8;
      v9 = v8[2];
      if (v9 != a2)
      {
        break;
      }

      if (a2)
      {
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
        v10 = 0;
        do
        {
          v11 = v10 + v30;
          if (__OFADD__(v10, v30))
          {
            BUG();
          }

          v36[0] = v39[v10++ + 4];
          v12 = specialized DenseMatrix.subscript.modify(v29, v38, v11);
          *v13 = v36[0];
          (v12)(v29, 0);
        }

        while (a2 != v10);
      }

      v7 = v38 + 1;
      result = v39;
      if (v7 == v31)
      {
        return result;
      }
    }

    *&v29[0] = 0;
    *v36 = v9;
    *(&v29[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(81);
    v14._object = "ues for feature '" + 0x8000000000000000;
    v14._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v14);
    v37 = a2;
    v15 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v17 = v16;
    v14._countAndFlagsBits = v15;
    v14._object = v16;
    String.append(_:)(v14);
    v17;
    v14._object = "Expected arrays with " + 0x8000000000000000;
    v14._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v14);
    v18 = Column.name.getter(v35);
    v20 = v19;
    v14._countAndFlagsBits = v18;
    v14._object = v19;
    String.append(_:)(v14);
    v20;
    v14._countAndFlagsBits = 0x6720747562202C27;
    v14._object = 0xEB0000000020746FLL;
    String.append(_:)(v14);
    v39;
    v37 = *v36;
    v21 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v23 = v22;
    v14._countAndFlagsBits = v21;
    v14._object = v22;
    String.append(_:)(v14);
    v23;
    v14._object = " elements for feature '" + 0x8000000000000000;
    v14._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v14);
    v37 = v38;
    v24 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v26 = v25;
    v14._countAndFlagsBits = v24;
    v14._object = v25;
    String.append(_:)(v14);
    v26;
    v14._countAndFlagsBits = 46;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    *v36 = v29[0];
    v27 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v27, 0, 0);
    *v28 = *v36;
    *(v28 + 16) = 0;
    *(v28 + 32) = 0;
    *(v28 + 48) = 0;
    return swift_willThrow();
  }

  return result;
}

{
  v32 = v4;
  v30 = a3;
  v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int]>);
  v34 = a1;
  result = Column.count.getter(v35);
  v31 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v33 = v3;
    v7 = 0;
    while (1)
    {
      Column.subscript.getter(v7, v35);
      v8 = *&v29[0];
      if (!*&v29[0])
      {
        v8 = _swiftEmptyArrayStorage;
      }

      v38 = v7;
      v39 = v8;
      v9 = v8[2];
      if (*&v9 != a2)
      {
        break;
      }

      if (a2)
      {
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
        v10 = 0;
        do
        {
          v11 = v10 + v30;
          if (__OFADD__(v10, v30))
          {
            BUG();
          }

          v36[0] = *&v39[v10++ + 4];
          v12 = specialized DenseMatrix.subscript.modify(v29, v38, v11);
          *v13 = v36[0];
          (v12)(v29, 0);
        }

        while (a2 != v10);
      }

      v7 = v38 + 1;
      result = v39;
      if (v7 == v31)
      {
        return result;
      }
    }

    *&v29[0] = 0;
    v36[0] = v9;
    *(&v29[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(81);
    v14._object = "ues for feature '" + 0x8000000000000000;
    v14._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v14);
    v37 = a2;
    v15 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v17 = v16;
    v14._countAndFlagsBits = v15;
    v14._object = v16;
    String.append(_:)(v14);
    v17;
    v14._object = "Expected arrays with " + 0x8000000000000000;
    v14._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v14);
    v18 = Column.name.getter(v35);
    v20 = v19;
    v14._countAndFlagsBits = v18;
    v14._object = v19;
    String.append(_:)(v14);
    v20;
    v14._countAndFlagsBits = 0x6720747562202C27;
    v14._object = 0xEB0000000020746FLL;
    String.append(_:)(v14);
    v39;
    v37 = *&v36[0];
    v21 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v23 = v22;
    v14._countAndFlagsBits = v21;
    v14._object = v22;
    String.append(_:)(v14);
    v23;
    v14._object = " elements for feature '" + 0x8000000000000000;
    v14._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v14);
    v37 = v38;
    v24 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v26 = v25;
    v14._countAndFlagsBits = v24;
    v14._object = v25;
    String.append(_:)(v14);
    v26;
    v14._countAndFlagsBits = 46;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    *v36 = v29[0];
    v27 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v27, 0, 0);
    *v28 = *v36;
    *(v28 + 16) = 0;
    *(v28 + 32) = 0;
    *(v28 + 48) = 0;
    return swift_willThrow();
  }

  return result;
}

{
  v32 = v4;
  v30 = a3;
  v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
  v34 = a1;
  result = Column.count.getter(v35);
  v31 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v33 = v3;
    v7 = 0;
    while (1)
    {
      Column.subscript.getter(v7, v35);
      v8 = *&v29[0];
      if (!*&v29[0])
      {
        v8 = _swiftEmptyArrayStorage;
      }

      v38 = v7;
      v39 = v8;
      v9 = v8[2];
      if (v9 != a2)
      {
        break;
      }

      if (a2)
      {
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
        v10 = 0;
        do
        {
          v11 = v10 + v30;
          if (__OFADD__(v10, v30))
          {
            BUG();
          }

          LODWORD(v36) = *(v39 + v10++ + 8);
          v12 = specialized DenseMatrix.subscript.modify(v29, v38, v11);
          *v13 = v36;
          (v12)(v29, 0);
        }

        while (a2 != v10);
      }

      v7 = v38 + 1;
      result = v39;
      if (v7 == v31)
      {
        return result;
      }
    }

    *&v29[0] = 0;
    *&v36 = v9;
    *(&v29[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(81);
    v14._object = "ues for feature '" + 0x8000000000000000;
    v14._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v14);
    v37 = a2;
    v15 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v17 = v16;
    v14._countAndFlagsBits = v15;
    v14._object = v16;
    String.append(_:)(v14);
    v17;
    v14._object = "Expected arrays with " + 0x8000000000000000;
    v14._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v14);
    v18 = Column.name.getter(v35);
    v20 = v19;
    v14._countAndFlagsBits = v18;
    v14._object = v19;
    String.append(_:)(v14);
    v20;
    v14._countAndFlagsBits = 0x6720747562202C27;
    v14._object = 0xEB0000000020746FLL;
    String.append(_:)(v14);
    v39;
    v37 = v36;
    v21 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v23 = v22;
    v14._countAndFlagsBits = v21;
    v14._object = v22;
    String.append(_:)(v14);
    v23;
    v14._object = " elements for feature '" + 0x8000000000000000;
    v14._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v14);
    v37 = v38;
    v24 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v26 = v25;
    v14._countAndFlagsBits = v24;
    v14._object = v25;
    String.append(_:)(v14);
    v26;
    v14._countAndFlagsBits = 46;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v36 = v29[0];
    v27 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v27, 0, 0);
    *v28 = v36;
    *(v28 + 16) = 0;
    *(v28 + 32) = 0;
    *(v28 + 48) = 0;
    return swift_willThrow();
  }

  return result;
}

{
  v33 = v4;
  v31 = a3;
  v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v35 = a1;
  result = Column.count.getter(v36);
  v32 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v34 = v3;
    v7 = 0;
    while (1)
    {
      Column.subscript.getter(v7, v36);
      v8 = *&v30[0];
      if (!*&v30[0])
      {
        v8 = _swiftEmptyArrayStorage;
      }

      v39 = v7;
      v40 = v8;
      v9 = v8[2];
      if (v9 != a2)
      {
        break;
      }

      if (a2)
      {
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
        v10 = 0;
        do
        {
          v11 = v10 + v31;
          if (__OFADD__(v10, v31))
          {
            BUG();
          }

          v12 = *&v40[v10 + 4];
          v37[0] = v12;
          ++v10;
          v13 = specialized DenseMatrix.subscript.modify(v30, v39, v11);
          *v14 = v37[0];
          (v13)(v30, 0);
        }

        while (a2 != v10);
      }

      v7 = v39 + 1;
      result = v40;
      if (v7 == v32)
      {
        return result;
      }
    }

    *&v30[0] = 0;
    *v37 = v9;
    *(&v30[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(81);
    v15._object = "ues for feature '" + 0x8000000000000000;
    v15._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v15);
    v38 = a2;
    v16 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v18 = v17;
    v15._countAndFlagsBits = v16;
    v15._object = v17;
    String.append(_:)(v15);
    v18;
    v15._object = "Expected arrays with " + 0x8000000000000000;
    v15._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v15);
    v19 = Column.name.getter(v36);
    v21 = v20;
    v15._countAndFlagsBits = v19;
    v15._object = v20;
    String.append(_:)(v15);
    v21;
    v15._countAndFlagsBits = 0x6720747562202C27;
    v15._object = 0xEB0000000020746FLL;
    String.append(_:)(v15);
    v40;
    v38 = *v37;
    v22 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v24 = v23;
    v15._countAndFlagsBits = v22;
    v15._object = v23;
    String.append(_:)(v15);
    v24;
    v15._object = " elements for feature '" + 0x8000000000000000;
    v15._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v15);
    v38 = v39;
    v25 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v27 = v26;
    v15._countAndFlagsBits = v25;
    v15._object = v26;
    String.append(_:)(v15);
    v27;
    v15._countAndFlagsBits = 46;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    *v37 = v30[0];
    v28 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v28, 0, 0);
    *v29 = *v37;
    *(v29 + 16) = 0;
    *(v29 + 32) = 0;
    *(v29 + 48) = 0;
    return swift_willThrow();
  }

  return result;
}

{
  v32 = v4;
  v30 = a3;
  v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
  v34 = a1;
  result = Column.count.getter(v35);
  v31 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v33 = v3;
    v7 = 0;
    while (1)
    {
      Column.subscript.getter(v7, v35);
      v8 = *&v29[0];
      if (!*&v29[0])
      {
        v8 = _swiftEmptyArrayStorage;
      }

      v38 = v7;
      v39 = v8;
      v9 = *(v8 + 2);
      if (v9 != a2)
      {
        break;
      }

      if (a2)
      {
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
        v10 = 0;
        do
        {
          v11 = v10 + v30;
          if (__OFADD__(v10, v30))
          {
            BUG();
          }

          *&v36 = v39[v10++ + 8];
          v12 = specialized DenseMatrix.subscript.modify(v29, v38, v11);
          *v13 = v36;
          (v12)(v29, 0);
        }

        while (a2 != v10);
      }

      v7 = v38 + 1;
      result = v39;
      if (v7 == v31)
      {
        return result;
      }
    }

    *&v29[0] = 0;
    *&v36 = v9;
    *(&v29[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(81);
    v14._object = "ues for feature '" + 0x8000000000000000;
    v14._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v14);
    v37 = a2;
    v15 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v17 = v16;
    v14._countAndFlagsBits = v15;
    v14._object = v16;
    String.append(_:)(v14);
    v17;
    v14._object = "Expected arrays with " + 0x8000000000000000;
    v14._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v14);
    v18 = Column.name.getter(v35);
    v20 = v19;
    v14._countAndFlagsBits = v18;
    v14._object = v19;
    String.append(_:)(v14);
    v20;
    v14._countAndFlagsBits = 0x6720747562202C27;
    v14._object = 0xEB0000000020746FLL;
    String.append(_:)(v14);
    v39;
    v37 = v36;
    v21 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v23 = v22;
    v14._countAndFlagsBits = v21;
    v14._object = v22;
    String.append(_:)(v14);
    v23;
    v14._object = " elements for feature '" + 0x8000000000000000;
    v14._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v14);
    v37 = v38;
    v24 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v26 = v25;
    v14._countAndFlagsBits = v24;
    v14._object = v25;
    String.append(_:)(v14);
    v26;
    v14._countAndFlagsBits = 46;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v36 = v29[0];
    v27 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v27, 0, 0);
    *v28 = v36;
    *(v28 + 16) = 0;
    *(v28 + 32) = 0;
    *(v28 + 48) = 0;
    return swift_willThrow();
  }

  return result;
}

{
  v32 = v4;
  v30 = a3;
  v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v34 = a1;
  result = Column.count.getter(v35);
  v31 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v33 = v3;
    v7 = 0;
    while (1)
    {
      Column.subscript.getter(v7, v35);
      v8 = *&v29[0];
      if (!*&v29[0])
      {
        v8 = _swiftEmptyArrayStorage;
      }

      v38 = v7;
      v39 = v8;
      v9 = v8[2];
      if (v9 != a2)
      {
        break;
      }

      if (a2)
      {
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
        v10 = 0;
        do
        {
          v11 = v10 + v30;
          if (__OFADD__(v10, v30))
          {
            BUG();
          }

          *&v36 = v39[v10++ + 4];
          v12 = specialized DenseMatrix.subscript.modify(v29, v38, v11);
          *v13 = v36;
          (v12)(v29, 0);
        }

        while (a2 != v10);
      }

      v7 = v38 + 1;
      result = v39;
      if (v7 == v31)
      {
        return result;
      }
    }

    *&v29[0] = 0;
    *&v36 = v9;
    *(&v29[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(81);
    v14._object = "ues for feature '" + 0x8000000000000000;
    v14._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v14);
    v37 = a2;
    v15 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v17 = v16;
    v14._countAndFlagsBits = v15;
    v14._object = v16;
    String.append(_:)(v14);
    v17;
    v14._object = "Expected arrays with " + 0x8000000000000000;
    v14._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v14);
    v18 = Column.name.getter(v35);
    v20 = v19;
    v14._countAndFlagsBits = v18;
    v14._object = v19;
    String.append(_:)(v14);
    v20;
    v14._countAndFlagsBits = 0x6720747562202C27;
    v14._object = 0xEB0000000020746FLL;
    String.append(_:)(v14);
    v39;
    v37 = v36;
    v21 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v23 = v22;
    v14._countAndFlagsBits = v21;
    v14._object = v22;
    String.append(_:)(v14);
    v23;
    v14._object = " elements for feature '" + 0x8000000000000000;
    v14._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v14);
    v37 = v38;
    v24 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v26 = v25;
    v14._countAndFlagsBits = v24;
    v14._object = v25;
    String.append(_:)(v14);
    v26;
    v14._countAndFlagsBits = 46;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v36 = v29[0];
    v27 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v27, 0, 0);
    *v28 = v36;
    *(v28 + 16) = 0;
    *(v28 + 32) = 0;
    *(v28 + 48) = 0;
    return swift_willThrow();
  }

  return result;
}

{
  v54 = v3;
  v53 = v4;
  v50 = a3;
  v5 = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v56 = &v46;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v62 = *(v9 - 8);
  v10 = *(v62 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Float>>);
  v57 = a1;
  result = Column.count.getter(v58);
  v52 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v14 = 0;
    v63 = v9;
    v64 = &v46;
    *&v59 = a2;
    while (1)
    {
      v15 = v56;
      v61 = v14;
      Column.subscript.getter(v14, v58);
      if (__swift_getEnumTagSinglePayload(v15, 1, v9) == 1)
      {
        v16 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Float> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Float>, &protocol conformance descriptor for MLShapedArray<A>);
        MLShapedArrayProtocol.init(arrayLiteral:)(_swiftEmptyArrayStorage, v9, v16);
        v17 = v56;
        if (__swift_getEnumTagSinglePayload(v56, 1, v9) != 1)
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v17, &demangling cache variable for type metadata for MLShapedArray<Float>?);
        }
      }

      else
      {
        (*(v62 + 32))(v64, v15, v9);
      }

      v18 = MLShapedArray.shape.getter(v9);
      if (*(v18 + 16) != 1)
      {
        break;
      }

      v19 = *(v18 + 32);
      v18;
      v20 = v19 == v59;
      v5 = v59;
      if (!v20)
      {
        goto LABEL_18;
      }

      if (v59 < 0)
      {
        BUG();
      }

      v51 = v61 + 1;
      if (v59)
      {
        v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
        v49 = v53 + *(v21 + 44);
        v22 = 0;
        do
        {
          v23 = v22 + v50;
          if (__OFADD__(v22, v50))
          {
            BUG();
          }

          v48 = v22 + 1;
          v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
          v25 = swift_allocObject(v24, 40, 7);
          v25[2] = 1;
          v25[3] = 2;
          v25[4] = v22;
          v26 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Float> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Float>, &protocol conformance descriptor for MLShapedArray<A>);
          MLShapedArrayProtocol.subscript.getter(v25, v63, v26);
          v25;
          v60 = v47[0];
          v27 = specialized DenseMatrix.subscript.modify(v47, v61, v23);
          *v28 = v60;
          (v27)(v47, 0);
          v22 = v48;
          v5 = v59;
        }

        while (v59 != v48);
      }

      v9 = v63;
      (*(v62 + 8))(v64, v63);
      result = v51;
      v14 = v51;
      if (v51 == v52)
      {
        return result;
      }
    }

    v18;
LABEL_18:
    *&v47[0] = 0;
    *(&v47[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    v29._object = " elements at row " + 0x8000000000000000;
    v29._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v29);
    v55 = v5;
    v30 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v32 = v31;
    v29._countAndFlagsBits = v30;
    v29._object = v31;
    String.append(_:)(v29);
    v32;
    v29._countAndFlagsBits = 0x656620726F66205DLL;
    v29._object = 0xEF27206572757461;
    String.append(_:)(v29);
    v33 = Column.name.getter(v58);
    v35 = v34;
    v29._countAndFlagsBits = v33;
    v29._object = v34;
    String.append(_:)(v29);
    v35;
    v29._object = "arrays with shape [" + 0x8000000000000000;
    v29._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v29);
    v36 = MLShapedArray.shape.getter(v63);
    v37 = v36;
    v38 = Array.description.getter(v36, &type metadata for Int);
    v40 = v39;
    v29._countAndFlagsBits = v38;
    v29._object = v39;
    String.append(_:)(v29);
    v37;
    v40;
    v29._countAndFlagsBits = 0x20776F7220746120;
    v29._object = 0xE800000000000000;
    String.append(_:)(v29);
    v55 = v61;
    v41 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v43 = v42;
    v29._countAndFlagsBits = v41;
    v29._object = v42;
    String.append(_:)(v29);
    v43;
    v29._countAndFlagsBits = 46;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);
    v59 = v47[0];
    v44 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v44, 0, 0);
    *v45 = v59;
    *(v45 + 16) = 0;
    *(v45 + 32) = 0;
    *(v45 + 48) = 0;
    swift_willThrow();
    return (*(v62 + 8))(v64, v63);
  }

  return result;
}

{
  v55 = v3;
  v54 = v4;
  v51 = a3;
  v5 = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v57 = &v47;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
  v63 = *(v9 - 8);
  v10 = *(v63 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Double>>);
  v58 = a1;
  result = Column.count.getter(v59);
  v53 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v14 = 0;
    v64 = v9;
    v65 = &v47;
    *&v60 = a2;
    while (1)
    {
      v15 = v57;
      v62 = v14;
      Column.subscript.getter(v14, v59);
      if (__swift_getEnumTagSinglePayload(v15, 1, v9) == 1)
      {
        v16 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Double> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Double>, &protocol conformance descriptor for MLShapedArray<A>);
        MLShapedArrayProtocol.init(arrayLiteral:)(_swiftEmptyArrayStorage, v9, v16);
        v17 = v57;
        if (__swift_getEnumTagSinglePayload(v57, 1, v9) != 1)
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v17, &demangling cache variable for type metadata for MLShapedArray<Double>?);
        }
      }

      else
      {
        (*(v63 + 32))(v65, v15, v9);
      }

      v18 = MLShapedArray.shape.getter(v9);
      if (*(v18 + 16) != 1)
      {
        break;
      }

      v19 = *(v18 + 32);
      v18;
      v20 = v19 == v60;
      v5 = v60;
      if (!v20)
      {
        goto LABEL_18;
      }

      if (v60 < 0)
      {
        BUG();
      }

      v52 = v62 + 1;
      if (v60)
      {
        v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
        v50 = v54 + *(v21 + 44);
        v22 = 0;
        do
        {
          v23 = v22 + v51;
          if (__OFADD__(v22, v51))
          {
            BUG();
          }

          v49 = v22 + 1;
          v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
          v25 = swift_allocObject(v24, 40, 7);
          v25[2] = 1;
          v25[3] = 2;
          v25[4] = v22;
          v26 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Double> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Double>, &protocol conformance descriptor for MLShapedArray<A>);
          MLShapedArrayProtocol.subscript.getter(v25, v64, v26);
          v25;
          v27 = *v48;
          v61 = v27;
          v28 = specialized DenseMatrix.subscript.modify(v48, v62, v23);
          *v29 = v61;
          (v28)(v48, 0);
          v22 = v49;
          v5 = v60;
        }

        while (v60 != v49);
      }

      v9 = v64;
      (*(v63 + 8))(v65, v64);
      result = v52;
      v14 = v52;
      if (v52 == v53)
      {
        return result;
      }
    }

    v18;
LABEL_18:
    *&v48[0] = 0;
    *(&v48[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    v30._object = " elements at row " + 0x8000000000000000;
    v30._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v30);
    v56 = v5;
    v31 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v33 = v32;
    v30._countAndFlagsBits = v31;
    v30._object = v32;
    String.append(_:)(v30);
    v33;
    v30._countAndFlagsBits = 0x656620726F66205DLL;
    v30._object = 0xEF27206572757461;
    String.append(_:)(v30);
    v34 = Column.name.getter(v59);
    v36 = v35;
    v30._countAndFlagsBits = v34;
    v30._object = v35;
    String.append(_:)(v30);
    v36;
    v30._object = "arrays with shape [" + 0x8000000000000000;
    v30._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v30);
    v37 = MLShapedArray.shape.getter(v64);
    v38 = v37;
    v39 = Array.description.getter(v37, &type metadata for Int);
    v41 = v40;
    v30._countAndFlagsBits = v39;
    v30._object = v40;
    String.append(_:)(v30);
    v38;
    v41;
    v30._countAndFlagsBits = 0x20776F7220746120;
    v30._object = 0xE800000000000000;
    String.append(_:)(v30);
    v56 = v62;
    v42 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v44 = v43;
    v30._countAndFlagsBits = v42;
    v30._object = v43;
    String.append(_:)(v30);
    v44;
    v30._countAndFlagsBits = 46;
    v30._object = 0xE100000000000000;
    String.append(_:)(v30);
    v60 = v48[0];
    v45 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v45, 0, 0);
    *v46 = v60;
    *(v46 + 16) = 0;
    *(v46 + 32) = 0;
    *(v46 + 48) = 0;
    swift_willThrow();
    return (*(v63 + 8))(v65, v64);
  }

  return result;
}

{
  v54 = v3;
  v53 = v4;
  v50 = a3;
  v5 = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v56 = v46;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v61 = *(v9 - 8);
  v10 = *(v61 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Float>>);
  v57 = a1;
  result = Column.count.getter(v58);
  v52 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v14 = 0;
    v62 = v9;
    v63 = v46;
    *&v59 = a2;
    while (1)
    {
      v15 = v56;
      v60 = v14;
      Column.subscript.getter(v14, v58);
      if (__swift_getEnumTagSinglePayload(v15, 1, v9) == 1)
      {
        v16 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Float> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Float>, &protocol conformance descriptor for MLShapedArray<A>);
        MLShapedArrayProtocol.init(arrayLiteral:)(_swiftEmptyArrayStorage, v9, v16);
        v17 = v56;
        if (__swift_getEnumTagSinglePayload(v56, 1, v9) != 1)
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v17, &demangling cache variable for type metadata for MLShapedArray<Float>?);
        }
      }

      else
      {
        (*(v61 + 32))(v63, v15, v9);
      }

      v18 = MLShapedArray.shape.getter(v9);
      if (*(v18 + 16) != 1)
      {
        break;
      }

      v19 = *(v18 + 32);
      v18;
      v20 = v19 == v59;
      v5 = v59;
      if (!v20)
      {
        goto LABEL_18;
      }

      if (v59 < 0)
      {
        BUG();
      }

      v51 = v60 + 1;
      if (v59)
      {
        v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
        v49 = v53 + *(v21 + 44);
        v22 = 0;
        do
        {
          v23 = v22 + v50;
          if (__OFADD__(v22, v50))
          {
            BUG();
          }

          v47 = v22 + 1;
          v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
          v25 = swift_allocObject(v24, 40, 7);
          v25[2] = 1;
          v25[3] = 2;
          v25[4] = v22;
          v26 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Float> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Float>, &protocol conformance descriptor for MLShapedArray<A>);
          MLShapedArrayProtocol.subscript.getter(v25, v62, v26);
          v25;
          v48 = *v46;
          v27 = specialized DenseMatrix.subscript.modify(v46, v60, v23);
          *v28 = v48;
          (v27)(v46, 0);
          v22 = v47;
          v5 = v59;
        }

        while (v59 != v47);
      }

      v9 = v62;
      (*(v61 + 8))(v63, v62);
      result = v51;
      v14 = v51;
      if (v51 == v52)
      {
        return result;
      }
    }

    v18;
LABEL_18:
    *&v46[0] = 0;
    *(&v46[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    v29._object = " elements at row " + 0x8000000000000000;
    v29._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v29);
    v55 = v5;
    v30 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v32 = v31;
    v29._countAndFlagsBits = v30;
    v29._object = v31;
    String.append(_:)(v29);
    v32;
    v29._countAndFlagsBits = 0x656620726F66205DLL;
    v29._object = 0xEF27206572757461;
    String.append(_:)(v29);
    v33 = Column.name.getter(v58);
    v35 = v34;
    v29._countAndFlagsBits = v33;
    v29._object = v34;
    String.append(_:)(v29);
    v35;
    v29._object = "arrays with shape [" + 0x8000000000000000;
    v29._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v29);
    v36 = MLShapedArray.shape.getter(v62);
    v37 = v36;
    v38 = Array.description.getter(v36, &type metadata for Int);
    v40 = v39;
    v29._countAndFlagsBits = v38;
    v29._object = v39;
    String.append(_:)(v29);
    v37;
    v40;
    v29._countAndFlagsBits = 0x20776F7220746120;
    v29._object = 0xE800000000000000;
    String.append(_:)(v29);
    v55 = v60;
    v41 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v43 = v42;
    v29._countAndFlagsBits = v41;
    v29._object = v42;
    String.append(_:)(v29);
    v43;
    v29._countAndFlagsBits = 46;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);
    v59 = v46[0];
    v44 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v44, 0, 0);
    *v45 = v59;
    *(v45 + 16) = 0;
    *(v45 + 32) = 0;
    *(v45 + 48) = 0;
    swift_willThrow();
    return (*(v61 + 8))(v63, v62);
  }

  return result;
}

{
  v54 = v3;
  v53 = v4;
  v50 = a3;
  v5 = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v56 = v46;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
  v61 = *(v9 - 8);
  v10 = *(v61 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Double>>);
  v57 = a1;
  result = Column.count.getter(v58);
  v52 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v14 = 0;
    v62 = v9;
    v63 = v46;
    *&v59 = a2;
    while (1)
    {
      v15 = v56;
      v60 = v14;
      Column.subscript.getter(v14, v58);
      if (__swift_getEnumTagSinglePayload(v15, 1, v9) == 1)
      {
        v16 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Double> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Double>, &protocol conformance descriptor for MLShapedArray<A>);
        MLShapedArrayProtocol.init(arrayLiteral:)(_swiftEmptyArrayStorage, v9, v16);
        v17 = v56;
        if (__swift_getEnumTagSinglePayload(v56, 1, v9) != 1)
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v17, &demangling cache variable for type metadata for MLShapedArray<Double>?);
        }
      }

      else
      {
        (*(v61 + 32))(v63, v15, v9);
      }

      v18 = MLShapedArray.shape.getter(v9);
      if (*(v18 + 16) != 1)
      {
        break;
      }

      v19 = *(v18 + 32);
      v18;
      v20 = v19 == v59;
      v5 = v59;
      if (!v20)
      {
        goto LABEL_18;
      }

      if (v59 < 0)
      {
        BUG();
      }

      v51 = v60 + 1;
      if (v59)
      {
        v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
        v49 = v53 + *(v21 + 44);
        v22 = 0;
        do
        {
          v23 = v22 + v50;
          if (__OFADD__(v22, v50))
          {
            BUG();
          }

          v47 = v22 + 1;
          v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
          v25 = swift_allocObject(v24, 40, 7);
          v25[2] = 1;
          v25[3] = 2;
          v25[4] = v22;
          v26 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Double> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Double>, &protocol conformance descriptor for MLShapedArray<A>);
          MLShapedArrayProtocol.subscript.getter(v25, v62, v26);
          v25;
          v48 = *&v46[0];
          v27 = specialized DenseMatrix.subscript.modify(v46, v60, v23);
          *v28 = v48;
          (v27)(v46, 0);
          v22 = v47;
          v5 = v59;
        }

        while (v59 != v47);
      }

      v9 = v62;
      (*(v61 + 8))(v63, v62);
      result = v51;
      v14 = v51;
      if (v51 == v52)
      {
        return result;
      }
    }

    v18;
LABEL_18:
    *&v46[0] = 0;
    *(&v46[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    v29._object = " elements at row " + 0x8000000000000000;
    v29._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v29);
    v55 = v5;
    v30 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v32 = v31;
    v29._countAndFlagsBits = v30;
    v29._object = v31;
    String.append(_:)(v29);
    v32;
    v29._countAndFlagsBits = 0x656620726F66205DLL;
    v29._object = 0xEF27206572757461;
    String.append(_:)(v29);
    v33 = Column.name.getter(v58);
    v35 = v34;
    v29._countAndFlagsBits = v33;
    v29._object = v34;
    String.append(_:)(v29);
    v35;
    v29._object = "arrays with shape [" + 0x8000000000000000;
    v29._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v29);
    v36 = MLShapedArray.shape.getter(v62);
    v37 = v36;
    v38 = Array.description.getter(v36, &type metadata for Int);
    v40 = v39;
    v29._countAndFlagsBits = v38;
    v29._object = v39;
    String.append(_:)(v29);
    v37;
    v40;
    v29._countAndFlagsBits = 0x20776F7220746120;
    v29._object = 0xE800000000000000;
    String.append(_:)(v29);
    v55 = v60;
    v41 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v43 = v42;
    v29._countAndFlagsBits = v41;
    v29._object = v42;
    String.append(_:)(v29);
    v43;
    v29._countAndFlagsBits = 46;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);
    v59 = v46[0];
    v44 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v44, 0, 0);
    *v45 = v59;
    *(v45 + 16) = 0;
    *(v45 + 32) = 0;
    *(v45 + 48) = 0;
    swift_willThrow();
    return (*(v61 + 8))(v63, v62);
  }

  return result;
}

uint64_t specialized FeatureMatrixBuilder.fillDictionary<A>(from:descriptors:column:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  v29 = a4;
  v43 = v4;
  v30 = v5;
  v28 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Int]>);
  result = Column.count.getter(v7);
  v31 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v38 = *(a2 + 16);
    v32 = (a2 + 56);
    v9 = 0;
    v39 = a2;
    v33 = a1;
    v34 = v7;
    while (1)
    {
      v37 = v9;
      Column.subscript.getter(v9, v7);
      v42 = *&v35[0];
      if (!*&v35[0])
      {
        v42 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Int, &protocol witness table for String);
      }

      if (v38)
      {
        break;
      }

      result = v42;
LABEL_19:
      v9 = v37 + 1;
      if (v37 + 1 == v31)
      {
        return result;
      }
    }

    v10 = 0;
    v11 = v32;
    v12 = v43;
    while (1)
    {
      v36 = v10;
      v43 = v12;
      v40 = *(v11 - 3);
      v13 = *(v11 - 2);
      v41 = *(v11 - 1);
      v27 = v11;
      LOBYTE(v16) = *v11;
      v14 = v42;
      v15 = *(v42 + 16);

      v16 = v16;
      v44 = v16;
      if (v15)
      {

        outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v41, v16);
        v17 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v13);
        if (v18)
        {
          v19 = *(*(v14 + 56) + 8 * v17);
          v13;
          v26 = &type metadata for Int;
          *&v25 = v19;
          outlined init with take of Any(&v25, v35);
          v20 = v43;
          v21 = v36;
          v22 = v41;
          v16 = v44;
          goto LABEL_14;
        }

        v13;
        v20 = v43;
        v22 = v41;
        v16 = v44;
      }

      else
      {
        v23 = v41;
        outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v41, v16);
        v20 = v43;
        v22 = v23;
      }

      memset(v35, 0, sizeof(v35));
      v21 = v36;
LABEL_14:
      if (__OFADD__(v21, v28))
      {
        BUG();
      }

      v24 = v22;
      v29(v35, v40, v13, v22, v16, v37, v21 + v28);
      v12 = v20;
      if (v20)
      {
        v43 = v20;
        v13;
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v24, v44);
        v42;
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v35, &demangling cache variable for type metadata for Any?);
        return v39;
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v35, &demangling cache variable for type metadata for Any?);
      v13;
      outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v24, v44);
      v11 = v27 + 32;
      v10 = v21 + 1;
      if (v38 == v10)
      {
        v43 = 0;
        v42;
        result = v39;
        v7 = v34;
        goto LABEL_19;
      }
    }
  }

  return result;
}

{
  v29 = a4;
  v43 = v4;
  v30 = v5;
  v28 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : UInt8]>);
  result = Column.count.getter(v7);
  v31 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v38 = *(a2 + 16);
    v32 = (a2 + 56);
    v9 = 0;
    v39 = a2;
    v33 = a1;
    v34 = v7;
    while (1)
    {
      v37 = v9;
      Column.subscript.getter(v9, v7);
      v42 = *&v35[0];
      if (!*&v35[0])
      {
        v42 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for UInt8, &protocol witness table for String);
      }

      if (v38)
      {
        break;
      }

      result = v42;
LABEL_19:
      v9 = v37 + 1;
      if (v37 + 1 == v31)
      {
        return result;
      }
    }

    v10 = 0;
    v11 = v32;
    v12 = v43;
    while (1)
    {
      v36 = v10;
      v43 = v12;
      v40 = *(v11 - 3);
      v13 = *(v11 - 2);
      v41 = *(v11 - 1);
      v27 = v11;
      LOBYTE(v16) = *v11;
      v14 = v42;
      v15 = *(v42 + 16);

      v16 = v16;
      v44 = v16;
      if (v15)
      {

        outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v41, v16);
        v17 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v13);
        if (v18)
        {
          v19 = *(*(v14 + 56) + v17);
          v13;
          v26 = &type metadata for UInt8;
          v25[0] = v19;
          outlined init with take of Any(v25, v35);
          v20 = v43;
          v21 = v36;
          v22 = v41;
          v16 = v44;
          goto LABEL_14;
        }

        v13;
        v20 = v43;
        v22 = v41;
        v16 = v44;
      }

      else
      {
        v23 = v41;
        outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v41, v16);
        v20 = v43;
        v22 = v23;
      }

      memset(v35, 0, sizeof(v35));
      v21 = v36;
LABEL_14:
      if (__OFADD__(v21, v28))
      {
        BUG();
      }

      v24 = v22;
      v29(v35, v40, v13, v22, v16, v37, v21 + v28);
      v12 = v20;
      if (v20)
      {
        v43 = v20;
        v13;
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v24, v44);
        v42;
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v35, &demangling cache variable for type metadata for Any?);
        return v39;
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v35, &demangling cache variable for type metadata for Any?);
      v13;
      outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v24, v44);
      v11 = v27 + 32;
      v10 = v21 + 1;
      if (v38 == v10)
      {
        v43 = 0;
        v42;
        result = v39;
        v7 = v34;
        goto LABEL_19;
      }
    }
  }

  return result;
}

{
  v29 = a4;
  v43 = v4;
  v30 = v5;
  v28 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Int32]>);
  result = Column.count.getter(v7);
  v31 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v38 = *(a2 + 16);
    v32 = (a2 + 56);
    v9 = 0;
    v39 = a2;
    v33 = a1;
    v34 = v7;
    while (1)
    {
      v37 = v9;
      Column.subscript.getter(v9, v7);
      v42 = *&v35[0];
      if (!*&v35[0])
      {
        v42 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Int32, &protocol witness table for String);
      }

      if (v38)
      {
        break;
      }

      result = v42;
LABEL_19:
      v9 = v37 + 1;
      if (v37 + 1 == v31)
      {
        return result;
      }
    }

    v10 = 0;
    v11 = v32;
    v12 = v43;
    while (1)
    {
      v36 = v10;
      v43 = v12;
      v40 = *(v11 - 3);
      v13 = *(v11 - 2);
      v41 = *(v11 - 1);
      v27 = v11;
      LOBYTE(v16) = *v11;
      v14 = v42;
      v15 = *(v42 + 16);

      v16 = v16;
      v44 = v16;
      if (v15)
      {

        outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v41, v16);
        v17 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v13);
        if (v18)
        {
          v19 = *(*(v14 + 56) + 4 * v17);
          v13;
          v26 = &type metadata for Int32;
          v25[0] = v19;
          outlined init with take of Any(v25, v35);
          v20 = v43;
          v21 = v36;
          v22 = v41;
          v16 = v44;
          goto LABEL_14;
        }

        v13;
        v20 = v43;
        v22 = v41;
        v16 = v44;
      }

      else
      {
        v23 = v41;
        outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v41, v16);
        v20 = v43;
        v22 = v23;
      }

      memset(v35, 0, sizeof(v35));
      v21 = v36;
LABEL_14:
      if (__OFADD__(v21, v28))
      {
        BUG();
      }

      v24 = v22;
      v29(v35, v40, v13, v22, v16, v37, v21 + v28);
      v12 = v20;
      if (v20)
      {
        v43 = v20;
        v13;
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v24, v44);
        v42;
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v35, &demangling cache variable for type metadata for Any?);
        return v39;
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v35, &demangling cache variable for type metadata for Any?);
      v13;
      outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v24, v44);
      v11 = v27 + 32;
      v10 = v21 + 1;
      if (v38 == v10)
      {
        v43 = 0;
        v42;
        result = v39;
        v7 = v34;
        goto LABEL_19;
      }
    }
  }

  return result;
}

{
  v34 = a4;
  v49 = v4;
  v35 = v5;
  v33 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Any?]>);
  result = Column.count.getter(v7);
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v9 = result;
    v44 = *(a2 + 16);
    v36 = (a2 + 56);
    v10 = 0;
    v45 = a2;
    v37 = a1;
    v38 = v7;
    v39 = result;
    while (1)
    {
      v43 = v10;
      Column.subscript.getter(v10, v7);
      v50 = *&v40[0];
      if (!*&v40[0])
      {
        v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
        v50 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v11, &protocol witness table for String);
      }

      if (v44)
      {
        break;
      }

      result = v50;
LABEL_21:
      v10 = v43 + 1;
      if (v43 + 1 == v9)
      {
        return result;
      }
    }

    v47 = 0;
    v12 = v36;
    while (1)
    {
      v13 = *(v12 - 3);
      v14 = *(v12 - 2);
      v15 = *(v12 - 1);
      v16 = v50;
      v17 = *(v50 + 16) == 0;
      v31 = v12;
      v18 = *v12;
      v48 = v15;
      v46 = v18;
      v30 = v13;
      if (v17)
      {
        break;
      }

      v32 = v14;
      swift_bridgeObjectRetain_n(v14, 2);
      outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v15, v18);
      v19 = v32;
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v32);
      if (v21)
      {
        outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v16 + 56) + 32 * v20, &v41, &demangling cache variable for type metadata for Any?);
      }

      else
      {
        v41 = 0;
        *&v42 = 0;
        *(&v42 + 1) = 2;
      }

      v19;
      v23 = v48;
      if (*(&v42 + 1) == 2)
      {
        goto LABEL_14;
      }

      v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
      v24 = swift_allocObject(&unk_3902C0, 48, 7);
      *&v28 = v24;
      v25 = v42;
      *(v24 + 16) = v41;
      *(v24 + 32) = v25;
      outlined init with take of Any(&v28, v40);
LABEL_16:
      v26 = v46;
      if (__OFADD__(v47, v33))
      {
        BUG();
      }

      v27 = v49;
      v34(v40, v30, v19, v23, v46, v43, v47 + v33);
      v49 = v27;
      if (v27)
      {
        v19;
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v48, v26);
        v50;
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v40, &demangling cache variable for type metadata for Any?);
        return v45;
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v40, &demangling cache variable for type metadata for Any?);
      v19;
      outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v48, v26);
      v12 = v31 + 32;
      if (v44 == ++v47)
      {
        v50;
        result = v45;
        v7 = v38;
        v9 = v39;
        goto LABEL_21;
      }
    }

    v41 = 0;
    *&v42 = 0;
    *(&v42 + 1) = 2;
    v22 = v14;

    outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v15, v18);
    v23 = v15;
    v19 = v22;
LABEL_14:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v41, &demangling cache variable for type metadata for Any??);
    memset(v40, 0, sizeof(v40));
    goto LABEL_16;
  }

  return result;
}

uint64_t specialized FeatureMatrixBuilder.fillDictionary<A>(from:descriptors:column:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *, _BYTE *, uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  v32 = a4;
  v47 = v4;
  v33 = v5;
  v31 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Double]>);
  result = Column.count.getter(v7);
  v35 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v41 = *(a2 + 16);
    v36 = (a2 + 56);
    v9 = 0;
    v42 = a2;
    v37 = a1;
    v38 = v7;
    while (1)
    {
      v40 = v9;
      Column.subscript.getter(v9, v7);
      v10 = *&v30[0];
      if (!*&v30[0])
      {
        v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Double, &protocol witness table for String);
      }

      if (v41)
      {
        break;
      }

      result = v10;
LABEL_19:
      v9 = v40 + 1;
      if (v40 + 1 == v35)
      {
        return result;
      }
    }

    v45 = v10;

    v43 = 0;
    v11 = v36;
    v12 = v47;
    while (1)
    {
      v47 = v12;
      v46 = *(v11 - 3);
      v13 = *(v11 - 1);
      LOBYTE(v15) = *v11;
      v14 = *(v45 + 16);
      v44 = *(v11 - 2);

      v15 = v15;
      v48 = v15;
      if (v14)
      {
        v16 = v44;

        v39 = v13;
        outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v13, v15);
        v17 = v45;
        v18 = specialized __RawDictionaryStorage.find<A>(_:)(v46, v16);
        if (v19)
        {
          v34 = *(*(v17 + 56) + 8 * v18);
          v20 = v44;
          v44;
          v29 = &type metadata for Double;
          *&v28 = v34;
          outlined init with take of Any(&v28, v30);
          v21 = v47;
          v22 = v39;
          v15 = v48;
          v23 = v20;
          goto LABEL_14;
        }

        v24 = v44;
        v44;
        v21 = v47;
        v22 = v39;
        v15 = v48;
        v23 = v24;
      }

      else
      {
        outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v13, v15);
        v21 = v47;
        v22 = v13;
        v23 = v44;
      }

      memset(v30, 0, sizeof(v30));
LABEL_14:
      v25 = v46;
      if (__OFADD__(v43, v31))
      {
        BUG();
      }

      v46 = v11;
      v26 = v23;
      v27 = v22;
      v32(v30, v25, v23, v22, v15, v40, v43 + v31);
      v12 = v21;
      if (v21)
      {
        v47 = v21;
        v26;
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v27, v48);
        v45;
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, &demangling cache variable for type metadata for Any?);
        return v42;
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, &demangling cache variable for type metadata for Any?);
      v26;
      outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v27, v48);
      v11 = v46 + 32;
      if (v41 == ++v43)
      {
        v47 = 0;
        v45;
        result = v42;
        v7 = v38;
        goto LABEL_19;
      }
    }
  }

  return result;
}

{
  v32 = a4;
  v47 = v4;
  v33 = v5;
  v31 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Float]>);
  result = Column.count.getter(v7);
  v34 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v40 = *(a2 + 16);
    v35 = (a2 + 56);
    v9 = 0;
    v41 = a2;
    v36 = a1;
    v37 = v7;
    while (1)
    {
      v39 = v9;
      Column.subscript.getter(v9, v7);
      v10 = *&v30[0];
      if (!*&v30[0])
      {
        v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Float, &protocol witness table for String);
      }

      if (v40)
      {
        break;
      }

      result = v10;
LABEL_19:
      v9 = v39 + 1;
      if (v39 + 1 == v34)
      {
        return result;
      }
    }

    v45 = v10;

    v43 = 0;
    v11 = v35;
    v12 = v47;
    while (1)
    {
      v47 = v12;
      v46 = *(v11 - 3);
      v13 = *(v11 - 1);
      LOBYTE(v15) = *v11;
      v14 = *(v45 + 16);
      v44 = *(v11 - 2);

      v15 = v15;
      v48 = v15;
      if (v14)
      {
        v16 = v44;

        v38 = v13;
        outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v13, v15);
        v17 = v45;
        v18 = specialized __RawDictionaryStorage.find<A>(_:)(v46, v16);
        if (v19)
        {
          v42 = *(*(v17 + 56) + 4 * v18);
          v20 = v44;
          v44;
          v29 = &type metadata for Float;
          v28[0] = v42;
          outlined init with take of Any(v28, v30);
          v21 = v47;
          v22 = v38;
          v15 = v48;
          v23 = v20;
          goto LABEL_14;
        }

        v24 = v44;
        v44;
        v21 = v47;
        v22 = v38;
        v15 = v48;
        v23 = v24;
      }

      else
      {
        outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v13, v15);
        v21 = v47;
        v22 = v13;
        v23 = v44;
      }

      memset(v30, 0, sizeof(v30));
LABEL_14:
      v25 = v46;
      if (__OFADD__(v43, v31))
      {
        BUG();
      }

      v46 = v11;
      v26 = v23;
      v27 = v22;
      v32(v30, v25, v23, v22, v15, v39, v43 + v31);
      v12 = v21;
      if (v21)
      {
        v47 = v21;
        v26;
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v27, v48);
        v45;
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, &demangling cache variable for type metadata for Any?);
        return v41;
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, &demangling cache variable for type metadata for Any?);
      v26;
      outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v27, v48);
      v11 = v46 + 32;
      if (v40 == ++v43)
      {
        v47 = 0;
        v45;
        result = v41;
        v7 = v37;
        goto LABEL_19;
      }
    }
  }

  return result;
}

uint64_t specialized FeatureMatrixBuilder.fill(_:descriptor:row:column:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, unint64_t a7)
{
  v107 = v7;
  v103._object = v8;
  *&v104 = a6;
  v108 = a4;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1, &v100, &demangling cache variable for type metadata for Any?);
  if (!*(&v101 + 1))
  {
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v100, &demangling cache variable for type metadata for Any?);
  }

  outlined init with take of Any(&v100, v95);
  switch(a5)
  {
    case 0u:
    case 1u:
    case 2u:
    case 3u:
      specialized FeatureMatrixBuilder.fillArray(_:descriptor:size:row:column:)(v95, a2, a3, v108, a5, v108, v104, a7, &demangling cache variable for type metadata for FeatureMatrixBuilder<Float>, specialized FeatureMatrixBuilder.fillArray<A>(_:descriptor:size:row:column:), specialized FeatureMatrixBuilder.fillArray<A>(_:descriptor:size:row:column:), specialized FeatureMatrixBuilder.fillArray<A>(_:descriptor:size:row:column:));
      return __swift_destroy_boxed_opaque_existential_1Tm(v95);
    case 4u:
      outlined init with copy of Any(v95, &v100);
      v35 = v108;

      if (!swift_dynamicCast(&v97, &v100, &type metadata for Any + 8, &type metadata for String, 6))
      {
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v35, 4);
        v43 = a2;
        v44 = a3;
        *&v100 = 0;
        *(&v100 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(62);
        v45._object = "', but got shape " + 0x8000000000000000;
        v45._countAndFlagsBits = 0xD000000000000024;
        goto LABEL_34;
      }

      v105 = *(&v97 + 1);
      v94 = *(v35 + 16);
      if (v94)
      {
        v103._countAndFlagsBits = v97;
        v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
        v103._object = v103._object + *(v36 + 44);
        v37 = (v108 + 40);
        v38 = 0;
        do
        {
          v39 = v38 + a7;
          if (__OFADD__(v38, a7))
          {
            BUG();
          }

          v40 = 1065353216;
          if (v103._countAndFlagsBits ^ *(v37 - 1) | v105 ^ *v37)
          {
            v40 = 1065353216;
            if ((_stringCompareWithSmolCheck(_:_:expecting:)(*(v37 - 1), *v37, v103._countAndFlagsBits, v105, 0) & 1) == 0)
            {
              v40 = 0;
            }
          }

          LODWORD(v106) = v40;
          ++v38;
          v41 = specialized DenseMatrix.subscript.modify(&v100, v104, v39);
          *v42 = v106;
          (v41)(&v100, 0);
          v37 += 2;
        }

        while (v94 != v38);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v95);
      outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v108, 4);
      return v105;
    case 5u:
      outlined init with copy of Any(v95, &v100);
      v12 = v108;

      v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
      if (!swift_dynamicCast(&v97, &v100, &type metadata for Any + 8, v13, 6))
      {
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v12, 5);
        v43 = a2;
        v44 = a3;
        *&v100 = 0;
        *(&v100 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(66);
        v45._object = "values for feature '" + 0x8000000000000000;
        v45._countAndFlagsBits = 0xD000000000000028;
        goto LABEL_34;
      }

      v14 = v97;
      v91 = *(v12 + 16);
      if (v91)
      {
        v15 = (v12 + 56);
        v106 = 0;
        v93 = v97;
        while (1)
        {
          v16 = *(v15 - 3);
          v17 = *(v15 - 2);
          v18 = *(v15 - 1);
          v19 = *(v14 + 16) == 0;
          v90 = v15;
          v20 = *v15;
          v103._countAndFlagsBits = v16;
          v105 = v17;
          LODWORD(v94) = v20;
          if (v19)
          {
            v101 = 0;
            v100 = 0;

            outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v18, v20);
            v27 = v18;
          }

          else
          {
            v21 = v17;
            v22 = v16;
            swift_bridgeObjectRetain_n(v21, 2);
            v92 = v18;
            outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v18, v20);
            v23 = v22;
            v24 = v105;
            v25 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v105);
            if (v26)
            {
              outlined init with copy of Any(*(v14 + 56) + 32 * v25, &v100);
            }

            else
            {
              v101 = 0;
              v100 = 0;
            }

            v24;
            v27 = v92;
          }

          if (__OFADD__(v106, a7))
          {
            BUG();
          }

          v28 = v105;
          v29 = v107;
          specialized FeatureMatrixBuilder.fill(_:descriptor:row:column:)(&v100, v103._countAndFlagsBits, v105, v27, v94, v104, v106 + a7);
          v28;
          v107 = v29;
          if (v29)
          {
            break;
          }

          outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v27, v94);
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v100, &demangling cache variable for type metadata for Any?);
          v15 = v90 + 32;
          v106 = (v106 + 1);
          v14 = v93;
          if (v91 == v106)
          {
            v93;
            LOBYTE(v12) = v108;
            goto LABEL_42;
          }
        }

        v93;
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v27, v94);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v100, &demangling cache variable for type metadata for Any?);
        v70 = v108;
      }

      else
      {
        v97;
LABEL_42:
        v70 = v12;
      }

      outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v70, 5);
      goto LABEL_52;
    case 6u:
      if (v108)
      {
        outlined init with copy of Any(v95, v89);
        v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for BinaryInteger);
        if (!swift_dynamicCast(&v97, v89, &type metadata for Any + 8, v30, 6))
        {
          v98 = 0;
          v97 = 0;
          v99 = 0;
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v97, &demangling cache variable for type metadata for BinaryInteger?);
          outlined init with copy of Any(v95, v89);
          v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for BinaryFloatingPoint);
          if (!swift_dynamicCast(&v97, v89, &type metadata for Any + 8, v31, 6))
          {
            v32 = 0.0;
            v98 = 0;
            v97 = 0;
            v99 = 0;
            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v97, &demangling cache variable for type metadata for BinaryFloatingPoint?);
            outlined init with copy of Any(v95, &v100);
            v33 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
            if (swift_dynamicCast(&v97, &v100, &type metadata for Any + 8, v33, 6))
            {
              v34 = v97;
              [v97 floatValue];
              goto LABEL_51;
            }

LABEL_54:
            v43 = a2;
            v44 = a3;
            *&v100 = 0;
            *(&v100 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(63);
            v45._object = "sessionDirectory" + 0x8000000000000000;
            v45._countAndFlagsBits = 0xD000000000000025;
LABEL_34:
            String.append(_:)(v45);

            v46._countAndFlagsBits = v43;
            v46._object = v44;
            String.append(_:)(v46);
            v44;
            v46._countAndFlagsBits = 0x6720747562202C27;
            v46._object = 0xEB0000000020746FLL;
            String.append(_:)(v46);
            v47 = v96;
            v48 = __swift_project_boxed_opaque_existential_0Tm(v95, v96);
            DynamicType = swift_getDynamicType(v48, v47, 1);
            v50 = _typeName(_:qualified:)(DynamicType, 0);
            LOBYTE(v47) = v51;
            v46._countAndFlagsBits = v50;
            v46._object = v51;
            String.append(_:)(v46);
            v47;
            v46._countAndFlagsBits = 0x20776F7220746120;
            v46._object = 0xE800000000000000;
            String.append(_:)(v46);
            *&v97 = v104;
            v52 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
            LOBYTE(v47) = v53;
            v46._countAndFlagsBits = v52;
            v46._object = v53;
            String.append(_:)(v46);
            v47;
            v46._countAndFlagsBits = 46;
            v46._object = 0xE100000000000000;
            String.append(_:)(v46);
            v104 = v100;
            v54 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
            swift_allocError(&type metadata for MLCreateError, v54, 0, 0);
            *v55 = v104;
            *(v55 + 16) = 0;
            *(v55 + 32) = 0;
            *(v55 + 48) = 0;
            swift_willThrow();
            v56 = v95;
            return __swift_destroy_boxed_opaque_existential_1Tm(v56);
          }

          goto LABEL_44;
        }
      }

      else
      {
        outlined init with copy of Any(v95, v89);
        v57 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for BinaryInteger);
        if (!swift_dynamicCast(&v97, v89, &type metadata for Any + 8, v57, 6))
        {
          v98 = 0;
          v97 = 0;
          v99 = 0;
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v97, &demangling cache variable for type metadata for BinaryInteger?);
          outlined init with copy of Any(v95, v89);
          v71 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for BinaryFloatingPoint);
          if (!swift_dynamicCast(&v97, v89, &type metadata for Any + 8, v71, 6))
          {
            v98 = 0;
            v97 = 0;
            v99 = 0;
            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v97, &demangling cache variable for type metadata for BinaryFloatingPoint?);
            outlined init with copy of Any(v95, &v100);
            v83 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
            if (swift_dynamicCast(&v97, &v100, &type metadata for Any + 8, v83, 6))
            {
              v34 = v97;
              v32 = [v97 integerValue];
LABEL_51:
              *&v106 = v32;
              __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
              v84 = specialized DenseMatrix.subscript.modify(&v100, v104, a7);
              *v85 = v106;
              (v84)(&v100, 0);

LABEL_52:
              v81 = v95;
              return __swift_destroy_boxed_opaque_existential_1Tm(v81);
            }

            goto LABEL_54;
          }

LABEL_44:
          outlined init with take of TabularRegressionTask(&v97, &v100);
          v72 = *(&v101 + 1);
          v73 = v102;
          v74 = __swift_project_boxed_opaque_existential_0Tm(&v100, *(&v101 + 1));
          v75 = *(v72 - 8);
          v76 = *(v75 + 64);
          v77 = alloca(v76);
          v78 = alloca(v76);
          (*(v75 + 16))(&v88, v74, v72);
          LODWORD(v106) = specialized BinaryFloatingPoint.init<A>(_:)(&v88, v72, v73);
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
          v79 = specialized DenseMatrix.subscript.modify(&v97, v104, a7);
          *v80 = v106;
          (v79)(&v97, 0);
          __swift_destroy_boxed_opaque_existential_1Tm(v95);
          v81 = &v100;
          return __swift_destroy_boxed_opaque_existential_1Tm(v81);
        }
      }

      outlined init with take of TabularRegressionTask(&v97, &v100);
      v58 = *(&v101 + 1);
      v59 = v102;
      v60 = __swift_project_boxed_opaque_existential_0Tm(&v100, *(&v101 + 1));
      v106 = &v88;
      v61 = *(v58 - 8);
      v62 = *(v61 + 64);
      v63 = alloca(v62);
      v64 = alloca(v62);
      v105 = v61;
      (*(v61 + 16))(&v88, v60, v58);
      v108 = v59;
      if (dispatch thunk of BinaryInteger.bitWidth.getter(v58, v59) >= 65)
      {
        v65 = lazy protocol witness table accessor for type Float and conformance Float();
        v66 = lazy protocol witness table accessor for type UInt32 and conformance UInt32();
        static BinaryFloatingPoint<>._convert<A>(from:)(&v97, &v88, &type metadata for Float, v58, v65, v108, v66);
        (*(v105 + 8))(&v88, v58);
        v67 = *&v97;
LABEL_40:
        *&v108 = v67;
        goto LABEL_57;
      }

      v68 = v108;
      LOBYTE(v103._countAndFlagsBits) = dispatch thunk of static BinaryInteger.isSigned.getter(v58, v108);
      v69 = dispatch thunk of BinaryInteger._lowWord.getter(v58, v68);
      (*(v105 + 8))(&v88, v58);
      if (v103._countAndFlagsBits)
      {
        v67 = v69;
        goto LABEL_40;
      }

      if (v69 < 0)
      {
        v82 = ((v69 >> 1) | v69 & 1) + ((v69 >> 1) | v69 & 1);
      }

      else
      {
        v82 = v69;
      }

      *&v108 = v82;
LABEL_57:
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
      v86 = specialized DenseMatrix.subscript.modify(&v97, v104, a7);
      *v87 = v108;
      (v86)(&v97, 0);
      __swift_destroy_boxed_opaque_existential_1Tm(v95);
      v56 = &v100;
      return __swift_destroy_boxed_opaque_existential_1Tm(v56);
  }
}

uint64_t specialized FeatureMatrixBuilder.fill(_:descriptor:row:column:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, __m128d a7, unint64_t a8)
{
  v107 = v8;
  v103._object = v9;
  *&v104 = a6;
  *&v105.f64[0] = a4;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1, &v100, &demangling cache variable for type metadata for Any?);
  if (!*(&v101 + 1))
  {
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v100, &demangling cache variable for type metadata for Any?);
  }

  outlined init with take of Any(&v100, v95);
  switch(a5)
  {
    case 0u:
    case 1u:
    case 2u:
    case 3u:
      specialized FeatureMatrixBuilder.fillArray(_:descriptor:size:row:column:)(v95, a2, a3, *&v105.f64[0], a5, *&v105.f64[0], v104, a8, &demangling cache variable for type metadata for FeatureMatrixBuilder<Double>, specialized FeatureMatrixBuilder.fillArray<A>(_:descriptor:size:row:column:), specialized FeatureMatrixBuilder.fillArray<A>(_:descriptor:size:row:column:), specialized FeatureMatrixBuilder.fillArray<A>(_:descriptor:size:row:column:));
      return __swift_destroy_boxed_opaque_existential_1Tm(v95);
    case 4u:
      outlined init with copy of Any(v95, &v100);
      v36 = v105.f64[0];

      if (!swift_dynamicCast(&v97, &v100, &type metadata for Any + 8, &type metadata for String, 6))
      {
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(SLOBYTE(v36), 4);
        v44 = a2;
        v45 = a3;
        *&v100 = 0;
        *(&v100 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(62);
        v46._object = "', but got shape " + 0x8000000000000000;
        v46._countAndFlagsBits = 0xD000000000000024;
        goto LABEL_34;
      }

      v106 = *(&v97 + 1);
      v94 = *(*&v36 + 16);
      if (v94)
      {
        v103._countAndFlagsBits = v97;
        v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
        v103._object = v103._object + *(v37 + 44);
        v38 = (*&v105.f64[0] + 40);
        v39 = 0;
        do
        {
          v40 = v39 + a8;
          if (__OFADD__(v39, a8))
          {
            BUG();
          }

          *&v41 = 1.0;
          if (v103._countAndFlagsBits ^ *(v38 - 1) | v106 ^ *v38)
          {
            *&v41 = 1.0;
            if ((_stringCompareWithSmolCheck(_:_:expecting:)(*(v38 - 1), *v38, v103._countAndFlagsBits, v106, 0) & 1) == 0)
            {
              *&v41 = 0.0;
            }
          }

          v108 = *&v41;
          ++v39;
          v42 = specialized DenseMatrix.subscript.modify(&v100, v104, v40);
          *v43 = v108;
          (v42)(&v100, 0);
          v38 += 2;
        }

        while (v94 != v39);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v95);
      outlined consume of ColumnDescriptor.ColumnTypeDescriptor(SLOBYTE(v105.f64[0]), 4);
      return v106;
    case 5u:
      outlined init with copy of Any(v95, &v100);
      v13 = v105.f64[0];

      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
      if (!swift_dynamicCast(&v97, &v100, &type metadata for Any + 8, v14, 6))
      {
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(SLOBYTE(v13), 5);
        v44 = a2;
        v45 = a3;
        *&v100 = 0;
        *(&v100 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(66);
        v46._object = "values for feature '" + 0x8000000000000000;
        v46._countAndFlagsBits = 0xD000000000000028;
        goto LABEL_34;
      }

      v15 = v97;
      v91 = *(*&v13 + 16);
      if (v91)
      {
        v16 = (*&v13 + 56);
        v108 = 0.0;
        v93 = v97;
        while (1)
        {
          v17 = *(v16 - 3);
          v18 = *(v16 - 2);
          v19 = *(v16 - 1);
          v20 = *(v15 + 16) == 0;
          v90 = v16;
          v21 = *v16;
          v103._countAndFlagsBits = v17;
          v106 = v18;
          LODWORD(v94) = v21;
          if (v20)
          {
            a7 = 0;
            v101 = 0;
            v100 = 0;

            outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v19, v21);
            v28 = v19;
          }

          else
          {
            v22 = v18;
            v23 = v17;
            swift_bridgeObjectRetain_n(v22, 2);
            v92 = v19;
            outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v19, v21);
            v24 = v23;
            v25 = v106;
            v26 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v106);
            if (v27)
            {
              outlined init with copy of Any(*(v15 + 56) + 32 * v26, &v100);
            }

            else
            {
              a7 = 0;
              v101 = 0;
              v100 = 0;
            }

            v25;
            v28 = v92;
          }

          if (__OFADD__(*&v108, a8))
          {
            BUG();
          }

          v29 = v106;
          v30 = v107;
          specialized FeatureMatrixBuilder.fill(_:descriptor:row:column:)(&v100, v103._countAndFlagsBits, v106, v28, v94, v104, a7, *&v108 + a8);
          v29;
          v107 = v30;
          if (v30)
          {
            break;
          }

          outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v28, v94);
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v100, &demangling cache variable for type metadata for Any?);
          v16 = v90 + 32;
          ++*&v108;
          v15 = v93;
          if (v91 == *&v108)
          {
            v93;
            LOBYTE(v13) = LOBYTE(v105.f64[0]);
            goto LABEL_41;
          }
        }

        v93;
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v28, v94);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v100, &demangling cache variable for type metadata for Any?);
        v70 = LOBYTE(v105.f64[0]);
      }

      else
      {
        v97;
LABEL_41:
        v70 = LOBYTE(v13);
      }

      outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v70, 5);
      goto LABEL_53;
    case 6u:
      if (*&v105.f64[0])
      {
        outlined init with copy of Any(v95, v89);
        v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for BinaryInteger);
        if (!swift_dynamicCast(&v97, v89, &type metadata for Any + 8, v31, 6))
        {
          v98 = 0;
          v97 = 0;
          v99 = 0;
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v97, &demangling cache variable for type metadata for BinaryInteger?);
          outlined init with copy of Any(v95, v89);
          v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for BinaryFloatingPoint);
          if (!swift_dynamicCast(&v97, v89, &type metadata for Any + 8, v32, 6))
          {
            v98 = 0;
            v97 = 0;
            v99 = 0;
            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v97, &demangling cache variable for type metadata for BinaryFloatingPoint?);
            outlined init with copy of Any(v95, &v100);
            v33 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
            if (swift_dynamicCast(&v97, &v100, &type metadata for Any + 8, v33, 6))
            {
              v34 = v97;
              [v97 floatValue];
              v35 = 0.0;
              goto LABEL_52;
            }

LABEL_55:
            v44 = a2;
            v45 = a3;
            *&v100 = 0;
            *(&v100 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(63);
            v46._object = "sessionDirectory" + 0x8000000000000000;
            v46._countAndFlagsBits = 0xD000000000000025;
LABEL_34:
            String.append(_:)(v46);

            v47._countAndFlagsBits = v44;
            v47._object = v45;
            String.append(_:)(v47);
            v45;
            v47._countAndFlagsBits = 0x6720747562202C27;
            v47._object = 0xEB0000000020746FLL;
            String.append(_:)(v47);
            v48 = v96;
            v49 = __swift_project_boxed_opaque_existential_0Tm(v95, v96);
            DynamicType = swift_getDynamicType(v49, v48, 1);
            v51 = _typeName(_:qualified:)(DynamicType, 0);
            LOBYTE(v48) = v52;
            v47._countAndFlagsBits = v51;
            v47._object = v52;
            String.append(_:)(v47);
            v48;
            v47._countAndFlagsBits = 0x20776F7220746120;
            v47._object = 0xE800000000000000;
            String.append(_:)(v47);
            *&v97 = v104;
            v53 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
            LOBYTE(v48) = v54;
            v47._countAndFlagsBits = v53;
            v47._object = v54;
            String.append(_:)(v47);
            v48;
            v47._countAndFlagsBits = 46;
            v47._object = 0xE100000000000000;
            String.append(_:)(v47);
            v104 = v100;
            v55 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
            swift_allocError(&type metadata for MLCreateError, v55, 0, 0);
            *v56 = v104;
            *(v56 + 16) = 0;
            *(v56 + 32) = 0;
            *(v56 + 48) = 0;
            swift_willThrow();
            v57 = v95;
            return __swift_destroy_boxed_opaque_existential_1Tm(v57);
          }

          goto LABEL_43;
        }

LABEL_36:
        outlined init with take of TabularRegressionTask(&v97, &v100);
        v59 = *(&v101 + 1);
        v60 = v102;
        v61 = __swift_project_boxed_opaque_existential_0Tm(&v100, *(&v101 + 1));
        v108 = COERCE_DOUBLE(&v88);
        v62 = *(v59 - 8);
        v63 = *(v62 + 64);
        v64 = alloca(v63);
        v65 = alloca(v63);
        v106 = v62;
        (*(v62 + 16))(&v88, v61, v59, a7.f64[0]);
        *&v105.f64[0] = v60;
        if (dispatch thunk of BinaryInteger.bitWidth.getter(v59, v60) < 65)
        {
          v68 = *&v105.f64[0];
          LOBYTE(v103._countAndFlagsBits) = dispatch thunk of static BinaryInteger.isSigned.getter(v59, *&v105.f64[0]);
          v69 = dispatch thunk of BinaryInteger._lowWord.getter(v59, v68);
          (*(v106 + 8))(&v88, v59);
          if (v103._countAndFlagsBits)
          {
            a7.f64[0] = v69;
          }

          else
          {
            v82 = _mm_sub_pd(_mm_unpacklo_epi32(v69, xmmword_33D8B0), xmmword_33D8C0);
            a7 = _mm_hadd_pd(v82, v82);
          }
        }

        else
        {
          v66 = lazy protocol witness table accessor for type Double and conformance Double();
          v67 = lazy protocol witness table accessor for type UInt64 and conformance UInt64();
          static BinaryFloatingPoint<>._convert<A>(from:)(&v97, &v88, &type metadata for Double, v59, v66, *&v105.f64[0], v67);
          (*(v106 + 8))(&v88, v59);
          a7 = v97;
        }

        v105 = a7;
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
        v83 = specialized DenseMatrix.subscript.modify(&v97, v104, a8);
        *v84 = *&v105.f64[0];
        (v83)(&v97, 0);
        __swift_destroy_boxed_opaque_existential_1Tm(v95);
        v57 = &v100;
        return __swift_destroy_boxed_opaque_existential_1Tm(v57);
      }

      outlined init with copy of Any(v95, v89);
      v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for BinaryInteger);
      if (swift_dynamicCast(&v97, v89, &type metadata for Any + 8, v58, 6))
      {
        goto LABEL_36;
      }

      v98 = 0;
      v97 = 0;
      v99 = 0;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v97, &demangling cache variable for type metadata for BinaryInteger?);
      outlined init with copy of Any(v95, v89);
      v71 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for BinaryFloatingPoint);
      if (!swift_dynamicCast(&v97, v89, &type metadata for Any + 8, v71, 6))
      {
        v98 = 0;
        v97 = 0;
        v99 = 0;
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v97, &demangling cache variable for type metadata for BinaryFloatingPoint?);
        outlined init with copy of Any(v95, &v100);
        v85 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
        if (swift_dynamicCast(&v97, &v100, &type metadata for Any + 8, v85, 6))
        {
          v34 = v97;
          v35 = [v97 integerValue];
LABEL_52:
          v108 = v35;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
          v86 = specialized DenseMatrix.subscript.modify(&v100, v104, a8);
          *v87 = v108;
          (v86)(&v100, 0);

LABEL_53:
          v81 = v95;
          return __swift_destroy_boxed_opaque_existential_1Tm(v81);
        }

        goto LABEL_55;
      }

LABEL_43:
      outlined init with take of TabularRegressionTask(&v97, &v100);
      v72 = *(&v101 + 1);
      v73 = v102;
      v74 = __swift_project_boxed_opaque_existential_0Tm(&v100, *(&v101 + 1));
      v75 = *(v72 - 8);
      v76 = *(v75 + 64);
      v77 = alloca(v76);
      v78 = alloca(v76);
      (*(v75 + 16))(&v88, v74, v72);
      v108 = specialized BinaryFloatingPoint.init<A>(_:)(&v88, v72, v73);
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
      v79 = specialized DenseMatrix.subscript.modify(&v97, v104, a8);
      *v80 = v108;
      (v79)(&v97, 0);
      __swift_destroy_boxed_opaque_existential_1Tm(v95);
      v81 = &v100;
      return __swift_destroy_boxed_opaque_existential_1Tm(v81);
  }
}

void specialized FeatureMatrixBuilder.fillArray(_:descriptor:size:row:column:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, void *a7, uint64_t a8, uint64_t *a9, void (*a10)(uint64_t *, uint64_t, void, uint64_t, void, uint64_t, void *, uint64_t), void (*a11)(uint64_t *, uint64_t, void, uint64_t, void, uint64_t, void *, uint64_t), void (*a12)(uint64_t *, uint64_t, void, uint64_t, void, uint64_t, void *, uint64_t))
{
  v90 = v12;
  v91 = v13;
  v92 = a6;
  v95 = a5;
  v93 = a4;
  *&v89 = a3;
  v94._countAndFlagsBits = a2;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>?) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v78 = &v72;
  v88 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
  v87 = *(v88 - 8);
  v17 = *(v87 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v81 = &v72;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v80 = &v72;
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>?) - 8) + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v77 = &v72;
  v76 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v86 = *(v76 - 8);
  v25 = *(v86 + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v79 = &v72;
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>?) - 8) + 64);
  v29 = alloca(v28);
  v30 = alloca(v28);
  v75 = &v72;
  v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = alloca(v33);
  v35 = alloca(v33);
  v85 = &v72;
  v94._object = a1;
  outlined init with copy of Any(a1, v73);
  v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for any Collection<Self.Collection.Element == Int>);
  if (swift_dynamicCast(v74, v73, &type metadata for Any + 8, v36, 6))
  {
    outlined init with take of TabularRegressionTask(v74, &v82);
    v37 = v83;
    v94._object = v84;
    v38 = __swift_project_boxed_opaque_existential_0Tm(&v82, v83);
    v39 = __swift_instantiateConcreteTypeFromMangledName(a9);
    v40 = lazy protocol witness table accessor for type Int and conformance Int();
    FeatureMatrixBuilder.fillArray<A, B>(_:descriptor:size:row:column:)(v38, v94._countAndFlagsBits, v89, v93, v95, v92, a7, a8, v39, v37, &type metadata for Int, v94._object, v40);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(&v82);
    return;
  }

  outlined init with copy of Any(v94._object, v73);
  v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for any Collection<Self.Collection.Element == Float>);
  if (swift_dynamicCast(v74, v73, &type metadata for Any + 8, v41, 6))
  {
    outlined init with take of TabularRegressionTask(v74, &v82);
    v42 = v83;
    v94._object = v84;
    v43 = __swift_project_boxed_opaque_existential_0Tm(&v82, v83);
    v44 = __swift_instantiateConcreteTypeFromMangledName(a9);
    v45 = lazy protocol witness table accessor for type Float and conformance Float();
    v46 = &type metadata for Float;
LABEL_7:
    FeatureMatrixBuilder.fillArray<A, B>(_:descriptor:size:row:column:)(v43, v94._countAndFlagsBits, v89, v93, v95, v92, a7, a8, v44, v42, v46, v94._object, v45);
    goto LABEL_8;
  }

  outlined init with copy of Any(v94._object, v73);
  v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for any Collection<Self.Collection.Element == Double>);
  if (swift_dynamicCast(v74, v73, &type metadata for Any + 8, v47, 6))
  {
    outlined init with take of TabularRegressionTask(v74, &v82);
    v42 = v83;
    v94._object = v84;
    v43 = __swift_project_boxed_opaque_existential_0Tm(&v82, v83);
    v44 = __swift_instantiateConcreteTypeFromMangledName(a9);
    v45 = lazy protocol witness table accessor for type Double and conformance Double();
    v46 = &type metadata for Double;
    goto LABEL_7;
  }

  outlined init with copy of Any(v94._object, &v82);
  v48 = v75;
  if (swift_dynamicCast(v75, &v82, &type metadata for Any + 8, v31, 6))
  {
    __swift_storeEnumTagSinglePayload(v48, 0, 1, v31);
    v49 = v85;
    (*(v32 + 32))(v85, v48, v31);
    a10(v49, v94._countAndFlagsBits, v89, v93, v95, v92, a7, a8);
    (*(v32 + 8))(v85, v31);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v48, 1, 1, v31);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v48, &demangling cache variable for type metadata for MLShapedArray<Int32>?);
    outlined init with copy of Any(v94._object, &v82);
    v50 = v77;
    v51 = v76;
    if (swift_dynamicCast(v77, &v82, &type metadata for Any + 8, v76, 6))
    {
      __swift_storeEnumTagSinglePayload(v50, 0, 1, v51);
      v52 = v79;
      (*(v86 + 32))(v79, v50, v51);
      a11(v52, v94._countAndFlagsBits, v89, v93, v95, v92, a7, a8);
      (*(v86 + 8))(v52, v51);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v50, 1, 1, v51);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v50, &demangling cache variable for type metadata for MLShapedArray<Float>?);
      outlined init with copy of Any(v94._object, &v82);
      v53 = v78;
      v54 = v88;
      if (swift_dynamicCast(v78, &v82, &type metadata for Any + 8, v88, 6))
      {
        __swift_storeEnumTagSinglePayload(v53, 0, 1, v54);
        v55 = v80;
        v56 = v54;
        v57 = v87;
        (*(v87 + 32))(v80, v53, v56);
        a12(v55, v94._countAndFlagsBits, v89, v93, v95, v92, a7, a8);
        (*(v57 + 8))(v55, v88);
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v53, 1, 1, v54);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v53, &demangling cache variable for type metadata for MLShapedArray<Double>?);
        outlined init with copy of Any(v94._object, &v82);
        v58 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
        if (swift_dynamicCast(v74, &v82, &type metadata for Any + 8, v58, 6))
        {
          v59 = v74[0];
          v60 = v81;
          MLShapedArray.init(_:)(v59, &type metadata for Double, &protocol witness table for Double);
          a12(v60, v94._countAndFlagsBits, v89, v93, v95, v92, a7, a8);
          (*(v87 + 8))(v60, v88);
        }

        else
        {
          *&v82 = 0;
          *(&v82 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(75);
          v61._object = "g-point values for feature '" + 0x8000000000000000;
          v61._countAndFlagsBits = 0xD000000000000031;
          String.append(_:)(v61);
          v62 = v89;

          v61._countAndFlagsBits = v94._countAndFlagsBits;
          v61._object = v62;
          String.append(_:)(v61);
          v62;
          v61._countAndFlagsBits = 0x6720747562202C27;
          v61._object = 0xEB0000000020746FLL;
          String.append(_:)(v61);
          v63 = *(v94._object + 3);
          v64 = __swift_project_boxed_opaque_existential_0Tm(v94._object, v63);
          DynamicType = swift_getDynamicType(v64, v63, 1);
          v66 = _typeName(_:qualified:)(DynamicType, 0);
          LOBYTE(v63) = v67;
          v61._countAndFlagsBits = v66;
          v61._object = v67;
          String.append(_:)(v61);
          v63;
          v61._countAndFlagsBits = 0x20776F7220746120;
          v61._object = 0xE800000000000000;
          String.append(_:)(v61);
          v74[0] = a7;
          v68 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
          LOBYTE(v63) = v69;
          v61._countAndFlagsBits = v68;
          v61._object = v69;
          String.append(_:)(v61);
          v63;
          v61._countAndFlagsBits = 46;
          v61._object = 0xE100000000000000;
          String.append(_:)(v61);
          v89 = v82;
          v70 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v70, 0, 0);
          *v71 = v89;
          *(v71 + 16) = 0;
          *(v71 + 32) = 0;
          *(v71 + 48) = 0;
          swift_willThrow();
        }
      }
    }
  }
}

uint64_t specialized FeatureMatrixBuilder.fillArray<A>(_:descriptor:size:row:column:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, unint64_t a7, uint64_t a8)
{
  v43 = v8;
  v42 = v9;
  *&v44 = a3;
  v45._countAndFlagsBits = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  inited = swift_initStackObject(v38, v36);
  inited[2] = 1;
  inited[3] = 2;
  v45._object = a6;
  inited[4] = a6;
  v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>);
  v40 = a1;
  v12 = MLShapedArray.shape.getter(v41);
  LOBYTE(a6) = v12;
  v13 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(inited, v12);
  a6;
  result = swift_setDeallocating(inited);
  if (v13)
  {
    if (v45._object < 0)
    {
      BUG();
    }

    if (v45._object)
    {
      v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
      v42 += *(v15 + 44);
      v16 = 0;
      object = v45._object;
      do
      {
        if (__OFADD__(v16, a8))
        {
          BUG();
        }

        *&v44 = v16 + 1;
        v18 = swift_allocObject(v38, 40, 7);
        v18[2] = 1;
        v18[3] = 2;
        v18[4] = v16;
        v19 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Int32> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Int32>, &protocol conformance descriptor for MLShapedArray<A>);
        MLShapedArrayProtocol.subscript.getter(v18, v41, v19);
        v18;
        *&v45._countAndFlagsBits = SLODWORD(v37[0]);
        v20 = specialized DenseMatrix.subscript.modify(v37, a7, v16 + a8);
        *v21 = v45._countAndFlagsBits;
        (v20)(v37, 0);
        result = v44;
        v16 = v44;
      }

      while (object != v44);
    }
  }

  else
  {
    *&v37[0] = 0;
    *(&v37[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    v22._object = " elements at row " + 0x8000000000000000;
    v22._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v22);
    v39 = v45._object;
    v23 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v25 = v24;
    v22._countAndFlagsBits = v23;
    v22._object = v24;
    String.append(_:)(v22);
    v25;
    v22._countAndFlagsBits = 0x656620726F66205DLL;
    v22._object = 0xEF27206572757461;
    String.append(_:)(v22);
    v26 = v44;

    v22._countAndFlagsBits = v45._countAndFlagsBits;
    v22._object = v26;
    String.append(_:)(v22);
    v26;
    v22._object = "arrays with shape [" + 0x8000000000000000;
    v22._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v22);
    v27 = MLShapedArray.shape.getter(v41);
    v28 = v27;
    v29 = Array.description.getter(v27, &type metadata for Int);
    LOBYTE(v26) = v30;
    v22._countAndFlagsBits = v29;
    v22._object = v30;
    String.append(_:)(v22);
    v28;
    v26;
    v22._countAndFlagsBits = 0x20776F7220746120;
    v22._object = 0xE800000000000000;
    String.append(_:)(v22);
    v39 = a7;
    v31 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v33 = v32;
    v22._countAndFlagsBits = v31;
    v22._object = v32;
    String.append(_:)(v22);
    v33;
    v22._countAndFlagsBits = 46;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v44 = v37[0];
    v34 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v34, 0, 0);
    *v35 = v44;
    *(v35 + 16) = 0;
    *(v35 + 32) = 0;
    *(v35 + 48) = 0;
    return swift_willThrow();
  }

  return result;
}

{
  v43 = v8;
  v42 = v9;
  *&v44 = a3;
  v45._countAndFlagsBits = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  inited = swift_initStackObject(v38, v36);
  inited[2] = 1;
  inited[3] = 2;
  v45._object = a6;
  inited[4] = a6;
  v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>);
  v40 = a1;
  v12 = MLShapedArray.shape.getter(v41);
  LOBYTE(a6) = v12;
  v13 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(inited, v12);
  a6;
  result = swift_setDeallocating(inited);
  if (v13)
  {
    if (v45._object < 0)
    {
      BUG();
    }

    if (v45._object)
    {
      v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
      v42 += *(v15 + 44);
      v16 = 0;
      object = v45._object;
      do
      {
        if (__OFADD__(v16, a8))
        {
          BUG();
        }

        *&v44 = v16 + 1;
        v18 = swift_allocObject(v38, 40, 7);
        v18[2] = 1;
        v18[3] = 2;
        v18[4] = v16;
        v19 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Int32> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Int32>, &protocol conformance descriptor for MLShapedArray<A>);
        MLShapedArrayProtocol.subscript.getter(v18, v41, v19);
        v18;
        *&v45._countAndFlagsBits = SLODWORD(v37[0]);
        v20 = specialized DenseMatrix.subscript.modify(v37, a7, v16 + a8);
        *v21 = v45._countAndFlagsBits;
        (v20)(v37, 0);
        result = v44;
        v16 = v44;
      }

      while (object != v44);
    }
  }

  else
  {
    *&v37[0] = 0;
    *(&v37[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    v22._object = " elements at row " + 0x8000000000000000;
    v22._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v22);
    v39 = v45._object;
    v23 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v25 = v24;
    v22._countAndFlagsBits = v23;
    v22._object = v24;
    String.append(_:)(v22);
    v25;
    v22._countAndFlagsBits = 0x656620726F66205DLL;
    v22._object = 0xEF27206572757461;
    String.append(_:)(v22);
    v26 = v44;

    v22._countAndFlagsBits = v45._countAndFlagsBits;
    v22._object = v26;
    String.append(_:)(v22);
    v26;
    v22._object = "arrays with shape [" + 0x8000000000000000;
    v22._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v22);
    v27 = MLShapedArray.shape.getter(v41);
    v28 = v27;
    v29 = Array.description.getter(v27, &type metadata for Int);
    LOBYTE(v26) = v30;
    v22._countAndFlagsBits = v29;
    v22._object = v30;
    String.append(_:)(v22);
    v28;
    v26;
    v22._countAndFlagsBits = 0x20776F7220746120;
    v22._object = 0xE800000000000000;
    String.append(_:)(v22);
    v39 = a7;
    v31 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v33 = v32;
    v22._countAndFlagsBits = v31;
    v22._object = v32;
    String.append(_:)(v22);
    v33;
    v22._countAndFlagsBits = 46;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v44 = v37[0];
    v34 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v34, 0, 0);
    *v35 = v44;
    *(v35 + 16) = 0;
    *(v35 + 32) = 0;
    *(v35 + 48) = 0;
    return swift_willThrow();
  }

  return result;
}

{
  v43 = v8;
  v42 = v9;
  *&v44 = a3;
  v45._countAndFlagsBits = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  inited = swift_initStackObject(v38, v36);
  inited[2] = 1;
  inited[3] = 2;
  v45._object = a6;
  inited[4] = a6;
  v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v40 = a1;
  v12 = MLShapedArray.shape.getter(v41);
  LOBYTE(a6) = v12;
  v13 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(inited, v12);
  a6;
  result = swift_setDeallocating(inited);
  if (v13)
  {
    if (v45._object < 0)
    {
      BUG();
    }

    if (v45._object)
    {
      v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
      v42 += *(v15 + 44);
      v16 = 0;
      object = v45._object;
      do
      {
        if (__OFADD__(v16, a8))
        {
          BUG();
        }

        *&v44 = v16 + 1;
        v18 = swift_allocObject(v38, 40, 7);
        v18[2] = 1;
        v18[3] = 2;
        v18[4] = v16;
        v19 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Float> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Float>, &protocol conformance descriptor for MLShapedArray<A>);
        MLShapedArrayProtocol.subscript.getter(v18, v41, v19);
        v18;
        LODWORD(v45._countAndFlagsBits) = v37[0];
        v20 = specialized DenseMatrix.subscript.modify(v37, a7, v16 + a8);
        *v21 = v45._countAndFlagsBits;
        (v20)(v37, 0);
        result = v44;
        v16 = v44;
      }

      while (object != v44);
    }
  }

  else
  {
    *&v37[0] = 0;
    *(&v37[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    v22._object = " elements at row " + 0x8000000000000000;
    v22._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v22);
    v39 = v45._object;
    v23 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v25 = v24;
    v22._countAndFlagsBits = v23;
    v22._object = v24;
    String.append(_:)(v22);
    v25;
    v22._countAndFlagsBits = 0x656620726F66205DLL;
    v22._object = 0xEF27206572757461;
    String.append(_:)(v22);
    v26 = v44;

    v22._countAndFlagsBits = v45._countAndFlagsBits;
    v22._object = v26;
    String.append(_:)(v22);
    v26;
    v22._object = "arrays with shape [" + 0x8000000000000000;
    v22._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v22);
    v27 = MLShapedArray.shape.getter(v41);
    v28 = v27;
    v29 = Array.description.getter(v27, &type metadata for Int);
    LOBYTE(v26) = v30;
    v22._countAndFlagsBits = v29;
    v22._object = v30;
    String.append(_:)(v22);
    v28;
    v26;
    v22._countAndFlagsBits = 0x20776F7220746120;
    v22._object = 0xE800000000000000;
    String.append(_:)(v22);
    v39 = a7;
    v31 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v33 = v32;
    v22._countAndFlagsBits = v31;
    v22._object = v32;
    String.append(_:)(v22);
    v33;
    v22._countAndFlagsBits = 46;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v44 = v37[0];
    v34 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v34, 0, 0);
    *v35 = v44;
    *(v35 + 16) = 0;
    *(v35 + 32) = 0;
    *(v35 + 48) = 0;
    return swift_willThrow();
  }

  return result;
}

{
  v44 = v8;
  v43 = v9;
  *&v45 = a3;
  v46._countAndFlagsBits = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  inited = swift_initStackObject(v39, v37);
  inited[2] = 1;
  inited[3] = 2;
  v46._object = a6;
  inited[4] = a6;
  v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
  v41 = a1;
  v12 = MLShapedArray.shape.getter(v42);
  LOBYTE(a6) = v12;
  v13 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(inited, v12);
  a6;
  result = swift_setDeallocating(inited);
  if (v13)
  {
    if (v46._object < 0)
    {
      BUG();
    }

    if (v46._object)
    {
      v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
      v43 += *(v15 + 44);
      v16 = 0;
      object = v46._object;
      do
      {
        if (__OFADD__(v16, a8))
        {
          BUG();
        }

        *&v45 = v16 + 1;
        v18 = swift_allocObject(v39, 40, 7);
        v18[2] = 1;
        v18[3] = 2;
        v18[4] = v16;
        v19 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Double> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Double>, &protocol conformance descriptor for MLShapedArray<A>);
        MLShapedArrayProtocol.subscript.getter(v18, v42, v19);
        v18;
        v20 = *v38;
        *&v46._countAndFlagsBits = v20;
        v21 = specialized DenseMatrix.subscript.modify(v38, a7, v16 + a8);
        *v22 = v46._countAndFlagsBits;
        (v21)(v38, 0);
        result = v45;
        v16 = v45;
      }

      while (object != v45);
    }
  }

  else
  {
    *&v38[0] = 0;
    *(&v38[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    v23._object = " elements at row " + 0x8000000000000000;
    v23._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v23);
    v40 = v46._object;
    v24 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v26 = v25;
    v23._countAndFlagsBits = v24;
    v23._object = v25;
    String.append(_:)(v23);
    v26;
    v23._countAndFlagsBits = 0x656620726F66205DLL;
    v23._object = 0xEF27206572757461;
    String.append(_:)(v23);
    v27 = v45;

    v23._countAndFlagsBits = v46._countAndFlagsBits;
    v23._object = v27;
    String.append(_:)(v23);
    v27;
    v23._object = "arrays with shape [" + 0x8000000000000000;
    v23._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v23);
    v28 = MLShapedArray.shape.getter(v42);
    v29 = v28;
    v30 = Array.description.getter(v28, &type metadata for Int);
    LOBYTE(v27) = v31;
    v23._countAndFlagsBits = v30;
    v23._object = v31;
    String.append(_:)(v23);
    v29;
    v27;
    v23._countAndFlagsBits = 0x20776F7220746120;
    v23._object = 0xE800000000000000;
    String.append(_:)(v23);
    v40 = a7;
    v32 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v34 = v33;
    v23._countAndFlagsBits = v32;
    v23._object = v33;
    String.append(_:)(v23);
    v34;
    v23._countAndFlagsBits = 46;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    v45 = v38[0];
    v35 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v35, 0, 0);
    *v36 = v45;
    *(v36 + 16) = 0;
    *(v36 + 32) = 0;
    *(v36 + 48) = 0;
    return swift_willThrow();
  }

  return result;
}

{
  v43 = v8;
  v42 = v9;
  *&v44 = a3;
  v45._countAndFlagsBits = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  inited = swift_initStackObject(v38, v36);
  inited[2] = 1;
  inited[3] = 2;
  v45._object = a6;
  inited[4] = a6;
  v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v40 = a1;
  v12 = MLShapedArray.shape.getter(v41);
  LOBYTE(a6) = v12;
  v13 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(inited, v12);
  a6;
  result = swift_setDeallocating(inited);
  if (v13)
  {
    if (v45._object < 0)
    {
      BUG();
    }

    if (v45._object)
    {
      v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
      v42 += *(v15 + 44);
      v16 = 0;
      object = v45._object;
      do
      {
        if (__OFADD__(v16, a8))
        {
          BUG();
        }

        *&v44 = v16 + 1;
        v18 = swift_allocObject(v38, 40, 7);
        v18[2] = 1;
        v18[3] = 2;
        v18[4] = v16;
        v19 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Float> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Float>, &protocol conformance descriptor for MLShapedArray<A>);
        MLShapedArrayProtocol.subscript.getter(v18, v41, v19);
        v18;
        *&v45._countAndFlagsBits = *v37;
        v20 = specialized DenseMatrix.subscript.modify(v37, a7, v16 + a8);
        *v21 = v45._countAndFlagsBits;
        (v20)(v37, 0);
        result = v44;
        v16 = v44;
      }

      while (object != v44);
    }
  }

  else
  {
    *&v37[0] = 0;
    *(&v37[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    v22._object = " elements at row " + 0x8000000000000000;
    v22._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v22);
    v39 = v45._object;
    v23 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v25 = v24;
    v22._countAndFlagsBits = v23;
    v22._object = v24;
    String.append(_:)(v22);
    v25;
    v22._countAndFlagsBits = 0x656620726F66205DLL;
    v22._object = 0xEF27206572757461;
    String.append(_:)(v22);
    v26 = v44;

    v22._countAndFlagsBits = v45._countAndFlagsBits;
    v22._object = v26;
    String.append(_:)(v22);
    v26;
    v22._object = "arrays with shape [" + 0x8000000000000000;
    v22._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v22);
    v27 = MLShapedArray.shape.getter(v41);
    v28 = v27;
    v29 = Array.description.getter(v27, &type metadata for Int);
    LOBYTE(v26) = v30;
    v22._countAndFlagsBits = v29;
    v22._object = v30;
    String.append(_:)(v22);
    v28;
    v26;
    v22._countAndFlagsBits = 0x20776F7220746120;
    v22._object = 0xE800000000000000;
    String.append(_:)(v22);
    v39 = a7;
    v31 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v33 = v32;
    v22._countAndFlagsBits = v31;
    v22._object = v32;
    String.append(_:)(v22);
    v33;
    v22._countAndFlagsBits = 46;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v44 = v37[0];
    v34 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v34, 0, 0);
    *v35 = v44;
    *(v35 + 16) = 0;
    *(v35 + 32) = 0;
    *(v35 + 48) = 0;
    return swift_willThrow();
  }

  return result;
}

{
  v43 = v8;
  v42 = v9;
  *&v44 = a3;
  v45._countAndFlagsBits = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  inited = swift_initStackObject(v38, v36);
  inited[2] = 1;
  inited[3] = 2;
  v45._object = a6;
  inited[4] = a6;
  v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
  v40 = a1;
  v12 = MLShapedArray.shape.getter(v41);
  LOBYTE(a6) = v12;
  v13 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(inited, v12);
  a6;
  result = swift_setDeallocating(inited);
  if (v13)
  {
    if (v45._object < 0)
    {
      BUG();
    }

    if (v45._object)
    {
      v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
      v42 += *(v15 + 44);
      v16 = 0;
      object = v45._object;
      do
      {
        if (__OFADD__(v16, a8))
        {
          BUG();
        }

        *&v44 = v16 + 1;
        v18 = swift_allocObject(v38, 40, 7);
        v18[2] = 1;
        v18[3] = 2;
        v18[4] = v16;
        v19 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Double> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Double>, &protocol conformance descriptor for MLShapedArray<A>);
        MLShapedArrayProtocol.subscript.getter(v18, v41, v19);
        v18;
        v45._countAndFlagsBits = *&v37[0];
        v20 = specialized DenseMatrix.subscript.modify(v37, a7, v16 + a8);
        *v21 = v45._countAndFlagsBits;
        (v20)(v37, 0);
        result = v44;
        v16 = v44;
      }

      while (object != v44);
    }
  }

  else
  {
    *&v37[0] = 0;
    *(&v37[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    v22._object = " elements at row " + 0x8000000000000000;
    v22._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v22);
    v39 = v45._object;
    v23 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v25 = v24;
    v22._countAndFlagsBits = v23;
    v22._object = v24;
    String.append(_:)(v22);
    v25;
    v22._countAndFlagsBits = 0x656620726F66205DLL;
    v22._object = 0xEF27206572757461;
    String.append(_:)(v22);
    v26 = v44;

    v22._countAndFlagsBits = v45._countAndFlagsBits;
    v22._object = v26;
    String.append(_:)(v22);
    v26;
    v22._object = "arrays with shape [" + 0x8000000000000000;
    v22._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v22);
    v27 = MLShapedArray.shape.getter(v41);
    v28 = v27;
    v29 = Array.description.getter(v27, &type metadata for Int);
    LOBYTE(v26) = v30;
    v22._countAndFlagsBits = v29;
    v22._object = v30;
    String.append(_:)(v22);
    v28;
    v26;
    v22._countAndFlagsBits = 0x20776F7220746120;
    v22._object = 0xE800000000000000;
    String.append(_:)(v22);
    v39 = a7;
    v31 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v33 = v32;
    v22._countAndFlagsBits = v31;
    v22._object = v32;
    String.append(_:)(v22);
    v33;
    v22._countAndFlagsBits = 46;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v44 = v37[0];
    v34 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v34, 0, 0);
    *v35 = v44;
    *(v35 + 16) = 0;
    *(v35 + 32) = 0;
    *(v35 + 48) = 0;
    return swift_willThrow();
  }

  return result;
}

void specialized UnsafeMutablePointer.assign(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    BUG();
  }

  if (a2)
  {
    v3 = _mm_cvtepi8_epi64(256);
    v4 = 0;
    si128 = _mm_load_si128(&xmmword_33D700);
    v6 = _mm_xor_si128(_mm_shuffle_epi32((a2 - 1), 68), si128);
    v7 = _mm_cvtepi8_epi64(514);
    do
    {
      v8 = _mm_xor_si128(v3, si128);
      v9 = _mm_cmpgt_epi32(v8, v6);
      v10 = _mm_or_si128(_mm_shuffle_epi32(v9, 245), _mm_and_si128(_mm_shuffle_epi32(_mm_cmpeq_epi32(v8, v6), 245), v9));
      if (~_mm_cvtsi128_si32(v10))
      {
        *(a3 + 8 * v4) = a1;
      }

      if (_mm_extract_epi8(_mm_xor_si128(v10, -1), 8))
      {
        *(a3 + 8 * v4 + 8) = a1;
      }

      v4 += 2;
      v3 = _mm_add_epi64(v3, v7);
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
  }
}

char specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v29 = v3;
  v5 = *v3;
  Hasher.init(_seed:)(*(*v3 + 40));

  String.hash(into:)(v28, a2);
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(v5 + 32));
  v8 = v7 & v6;
  v9 = *(v5 + 8 * ((v7 & v6) >> 6) + 56);
  v10 = _bittest64(&v9, v8);
  v31 = a2;
  if (!v10)
  {
    v13 = a3;
    goto LABEL_5;
  }

  v11 = *(v5 + 48);
  v12 = *(v11 + 16 * v8);
  v30 = v11;
  if (a2 ^ v12 | a3 ^ *(v11 + 16 * v8 + 8))
  {
    v13 = a3;
    if (_stringCompareWithSmolCheck(_:_:expecting:)(v12, *(v11 + 16 * v8 + 8), a2, a3, 0))
    {
      goto LABEL_7;
    }

    v8 = v7 & (v8 + 1);
    v25 = *(v5 + 8 * (v8 >> 6) + 56);
    if (_bittest64(&v25, v8))
    {
      v26 = v30;
      while (v31 ^ *(v26 + 16 * v8) | v13 ^ *(v26 + 16 * v8 + 8) && (_stringCompareWithSmolCheck(_:_:expecting:)(*(v26 + 16 * v8), *(v26 + 16 * v8 + 8), v31, v13, 0) & 1) == 0)
      {
        v8 = v7 & (v8 + 1);
        v27 = *(v5 + 8 * (v8 >> 6) + 56);
        if (!_bittest64(&v27, v8))
        {
          goto LABEL_5;
        }
      }

      goto LABEL_7;
    }

LABEL_5:
    v5;
    v14 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v29);
    v28[0] = *v14;

    v16 = isUniquelyReferenced_nonNull_native;
    v17 = v31;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v31, v13, v8, v16);
    *v14 = v28[0];
    v18 = v32;
    *v32 = v17;
    v18[1] = v13;
    return 1;
  }

  LOBYTE(v13) = a3;
LABEL_7:
  v13;
  v5;
  v20 = *(v5 + 48);
  v21 = 16 * v8;
  v22 = *(v20 + v21);
  v23 = *(v20 + v21 + 8);
  v24 = v32;
  *v32 = v22;
  v24[1] = v23;

  return 0;
}

{
  v4 = v3;
  v31 = a1;
  v6 = *v3;
  Hasher.init(_seed:)(*(*v3 + 40));
  v32 = a2;
  v30 = a3;
  if (a3)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)(v28, a2);
    a3;
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v7 = Hasher._finalize()();
  v8 = ~(-1 << *(v6 + 32));
  v9 = v8 & v7;
  v10 = *(v6 + 8 * ((v8 & v7) >> 6) + 56);
  v11 = v6;
  v12 = v31;
  if (!_bittest64(&v10, v9))
  {
    v6;
    v20 = v12;
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v4);
    v28[0] = *v4;
    v22 = v30;

    v23 = isUniquelyReferenced_nonNull_native;
    v24 = v32;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v32, v22, v9, v23);
    *v4 = v28[0];
    *v20 = v24;
    v20[1] = v22;
    return 1;
  }

  v29 = v4;
  v13 = *(v6 + 48);
  v14 = v32;
  v15 = v30;
  while (1)
  {
    v16 = *(v13 + 16 * v9 + 8);
    if (v16)
    {
      break;
    }

    if (!v15)
    {
      goto LABEL_17;
    }

LABEL_12:
    v9 = v8 & (v9 + 1);
    v19 = *(v11 + 8 * (v9 >> 6) + 56);
    if (!_bittest64(&v19, v9))
    {
      v11;
      v20 = v31;
      v4 = v29;
      goto LABEL_15;
    }
  }

  if (!v15)
  {
    goto LABEL_12;
  }

  if (v14 ^ *(v13 + 16 * v9) | v15 ^ v16)
  {
    v17 = v11;
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)(*(v13 + 16 * v9), v16, v32, v15, 0);
    v15 = v30;
    v11 = v17;
    v14 = v32;
    if ((v18 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v26 = v11;
  v15;
  v11 = v26;
LABEL_17:
  v27 = v11;
  v11;
  *v31 = *(*(v27 + 48) + 16 * v9);

  return 0;
}

char specialized Set._Variant.insert(_:)(uint64_t a1, Swift::UInt a2, char a3)
{
  v4 = v3;
  v6 = a2;
  v7 = *v3;
  Hasher.init(_seed:)(*(*v3 + 40));
  if (a3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a2);
  }

  v8 = Hasher._finalize()();
  v9 = ~(-1 << *(v7 + 32));
  v10 = v9 & v8;
  v11 = *(v7 + 8 * ((v9 & v8) >> 6) + 56);
  if (_bittest64(&v11, v10))
  {
    v12 = *(v7 + 48);
    do
    {
      v13 = *(v12 + 16 * v10);
      v14 = *(v12 + 16 * v10 + 8);
      if (v14)
      {
        if (a3)
        {
          result = 0;
          v6 = v13;
          goto LABEL_13;
        }
      }

      else if ((a3 & 1) == 0 && v13 == v6)
      {
        result = 0;
        goto LABEL_13;
      }

      v10 = v9 & (v10 + 1);
      v15 = *(v7 + 8 * (v10 >> 6) + 56);
    }

    while (_bittest64(&v15, v10));
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v4);
  v18 = *v4;
  specialized _NativeSet.insertNew(_:at:isUnique:)(v6, a3 & 1, v10, isUniquelyReferenced_nonNull_native);
  *v4 = v18;
  result = 1;
  v14 = a3;
LABEL_13:
  *a1 = v6;
  *(a1 + 8) = v14 & 1;
  return result;
}

char specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = static Hasher._hash(seed:_:)(*(v4 + 40));
  v6 = ~(-1 << *(v4 + 32));
  v7 = v6 & v5;
  v8 = *(v4 + 8 * ((v6 & v5) >> 6) + 56);
  if (_bittest64(&v8, v7))
  {
    while (*(*(v4 + 48) + 8 * v7) != a2)
    {
      v7 = v6 & (v7 + 1);
      v9 = *(v4 + 8 * (v7 >> 6) + 56);
      if (!_bittest64(&v9, v7))
      {
        goto LABEL_4;
      }
    }

    result = 0;
  }

  else
  {
LABEL_4:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v3);
    v12 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v7, isUniquelyReferenced_nonNull_native);
    *v3 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

char specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t *a2)
{
  v39 = a2;
  v34 = a1;
  v3 = type metadata accessor for URL(0);
  v38 = *(v3 - 8);
  v4 = *(v38 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v36 = &v29;
  v35 = v2;
  v7 = *v2;
  v8 = *(*v2 + 40);
  v9 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);

  v40 = v3;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)(v8, v3, v9);
  v11 = v7;
  v31 = ~(-1 << *(v7 + 32));
  v12 = v31 & v10;
  v13 = *(v7 + 8 * ((v31 & v10) >> 6) + 56);
  if (_bittest64(&v13, v12))
  {
    v14 = v38;
    v37 = *(v38 + 16);
    v32 = *(v38 + 72);
    v33 = v11;
    v15 = v40;
    while (1)
    {
      v16 = v12 * v32;
      v17 = v36;
      v37(v36, v12 * v32 + *(v11 + 48), v15);
      v18 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      isUniquelyReferenced_nonNull_native = dispatch thunk of static Equatable.== infix(_:_:)(v17, v39, v15, v18);
      v19 = v14;
      v20 = *(v14 + 8);
      v20(v36, v15);
      if (isUniquelyReferenced_nonNull_native)
      {
        break;
      }

      v12 = v31 & (v12 + 1);
      v11 = v33;
      v21 = *(v33 + 8 * (v12 >> 6) + 56);
      v14 = v19;
      if (!_bittest64(&v21, v12))
      {
        v33;
        v22 = v35;
        v23 = v37;
        goto LABEL_7;
      }
    }

    v27 = v33;
    v33;
    v28 = v40;
    v20(v39, v40);
    v37(v34, *(v27 + 48) + v16, v28);
    return 0;
  }

  else
  {
    v7;
    v23 = *(v38 + 16);
    v22 = v35;
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v22);
    v24 = v36;
    v25 = v39;
    v23(v36, v39, v40);
    v30 = *v22;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v24, v12, isUniquelyReferenced_nonNull_native);
    *v22 = v30;
    (*(v38 + 32))(v34, v25, v40);
    return 1;
  }
}

char specialized Set._Variant.insert(_:)(uint64_t *a1, Swift::UInt a2, uint64_t a3, int a4)
{
  v34 = a1;
  v33 = v4;
  v7 = *v4;
  Hasher.init(_seed:)(*(*v4 + 40));
  v37 = a4;
  v36 = a3;
  v35 = a2;
  if (a4)
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(a2);
  }

  else
  {
    Hasher._combine(_:)(0);

    String.hash(into:)(v32, a2);
  }

  v8 = Hasher._finalize()();
  v9 = ~(-1 << *(v7 + 32));
  v10 = v9 & v8;
  v11 = *(v7 + 8 * ((v9 & v8) >> 6) + 56);
  if (!_bittest64(&v11, v10))
  {
    v13 = v36;
    v14 = v35;
    v15 = v37;
LABEL_16:
    v20 = v13;
    v21 = v14;
    v7;
    v22 = v33;
    LOBYTE(v36) = swift_isUniquelyReferenced_nonNull_native(*v33);
    v32[0] = *v22;
    outlined copy of MLRecommender.Identifier(v21, v20, v15);
    specialized _NativeSet.insertNew(_:at:isUnique:)(v21, v20, v15 & 1, v10, v36);
    *v22 = v32[0];
    v23 = v34;
    *v34 = v21;
    v23[1] = v20;
    *(v23 + 16) = v15 & 1;
    return 1;
  }

  v12 = *(v7 + 48);
  v13 = v36;
  v14 = v35;
  v15 = v37;
  while (1)
  {
    v16 = 24 * v10;
    v17 = *(v12 + 24 * v10);
    if (!*(v12 + 24 * v10 + 16))
    {
      break;
    }

    if ((v15 & 1) != 0 && v17 == v14)
    {
      v7;
      goto LABEL_18;
    }

LABEL_13:
    v10 = v9 & (v10 + 1);
    v19 = *(v7 + 8 * (v10 >> 6) + 56);
    if (!_bittest64(&v19, v10))
    {
      goto LABEL_16;
    }
  }

  if (v15)
  {
    goto LABEL_13;
  }

  if (v14 ^ v17 | v13 ^ *(v12 + v16 + 8))
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)(v17, *(v12 + v16 + 8), v14, v13, 0);
    v15 = v37;
    v14 = v35;
    v13 = v36;
    if ((v18 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v25 = v13;
  v26 = v14;
  v7;
  outlined consume of MLRecommender.Identifier(v26, v25, 0);
LABEL_18:
  v27 = *(v7 + 48);
  v28 = *(v27 + 24 * v10);
  v29 = *(v27 + v16 + 8);
  v30 = *(v27 + v16 + 16);
  v31 = v34;
  *v34 = v28;
  v31[1] = v29;
  *(v31 + 16) = v30;
  outlined copy of MLRecommender.Identifier(v28, v29, v30);
  return 0;
}

char specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  v30 = a1;
  v29 = v2;
  v3 = *v2;
  v4 = *(*v2 + 40);
  v32 = a2;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(a2);
  v7 = v6;
  Hasher.init(_seed:)(v4);

  v8 = v3;
  String.hash(into:)(v28, v5);
  v9 = Hasher._finalize()();
  v7;
  v10 = ~(-1 << *(v8 + 32));
  v11 = v10 & v9;
  v12 = *(v8 + 8 * (v11 >> 6) + 56);
  if (_bittest64(&v12, v11))
  {
    v31 = v8;
    while (1)
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)(*(*(v8 + 48) + 8 * v11));
      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)(v32);
      v18 = v17;
      if (!(v16 ^ v13 | v17 ^ v15))
      {
        break;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)(v13, v15, v16, v17, 0);
      v15;
      v18;
      if (v19)
      {
        goto LABEL_8;
      }

      v11 = v10 & (v11 + 1);
      v8 = v31;
      v20 = *(v31 + 8 * (v11 >> 6) + 56);
      if (!_bittest64(&v20, v11))
      {
        goto LABEL_6;
      }
    }

    v15;
    v18;
LABEL_8:
    v25 = v30;
    v26 = v31;

    v26;
    v27 = *(*(v26 + 48) + 8 * v11);
    *v25 = v27;
    v27;
    return 0;
  }

  else
  {
LABEL_6:
    v8;
    v21 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v29);
    v28[0] = *v21;
    v23 = v32;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v23, v11, isUniquelyReferenced_nonNull_native);
    *v21 = v28[0];
    *v30 = v23;
    return 1;
  }
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 24);
  if (v4 <= a1)
  {
    v4 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<String>);
  v5 = static _SetStorage.resize(original:capacity:move:)(v3, v4, 1);
  if (!*(v3 + 16))
  {
    goto LABEL_40;
  }

  v42 = v1;
  v6 = 1 << *(v3 + 32);
  v44 = (v3 + 56);
  v7 = ~(-1 << v6);
  if (v6 >= 64)
  {
    v7 = -1;
  }

  v8 = *(v3 + 56) & v7;
  v41 = (v6 + 63) >> 6;
  v45 = v3;

  for (i = 0; ; i = v43)
  {
    if (v8)
    {
      _BitScanForward64(&v10, v8);
      v8 &= v8 - 1;
      v43 = i;
      v11 = v10 | (i << 6);
      goto LABEL_16;
    }

    v12 = __OFADD__(1, i);
    v13 = i + 1;
    if (v12)
    {
      BUG();
    }

    if (v13 >= v41)
    {
      break;
    }

    v14 = v44;
    j = v44[v13];
    if (j)
    {
      v16 = v13;
    }

    else
    {
      v16 = v13 + 1;
      if (v13 + 1 >= v41)
      {
        goto LABEL_34;
      }

      j = v44[v13 + 1];
      if (!j)
      {
        v16 = v13 + 2;
        if (v13 + 2 >= v41)
        {
LABEL_34:
          v35 = v45;

          goto LABEL_36;
        }

        for (j = v44[v13 + 2]; !j; j = v44[v16])
        {
          v12 = __OFADD__(1, v16++);
          if (v12)
          {
            BUG();
          }

          if (v16 >= v41)
          {
            goto LABEL_34;
          }
        }
      }
    }

    _BitScanForward64(&v17, j);
    v8 = j & (j - 1);
    v11 = v17 | (v16 << 6);
    v43 = v16;
LABEL_16:
    v18 = *(v45 + 48);
    v19 = 16 * v11;
    v20 = *(v18 + v19);
    v21 = *(v18 + v19 + 8);
    Hasher.init(_seed:)(*(v5 + 40));
    v39 = v20;
    v40 = v21;
    String.hash(into:)(v38, v20);
    v22 = Hasher._finalize()() & ~(-1 << *(v5 + 32));
    v23 = v22 >> 6;
    v24 = ~*(v5 + 8 * (v22 >> 6) + 56) >> v22 << v22;
    if (v24)
    {
      _BitScanForward64(&v25, v24);
      v26 = v25 | v22 & 0xFFFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = (63 - (-1 << *(v5 + 32))) >> 6;
      v28 = 0;
      do
      {
        v29 = v23 + 1;
        if (v23 + 1 == v27 && (v28 & 1) != 0)
        {
          BUG();
        }

        v23 = 0;
        if (v29 != v27)
        {
          v23 = v29;
        }

        v28 |= v29 == v27;
        v30 = *(v5 + 8 * v23 + 56);
      }

      while (v30 == -1);
      v31 = ~v30;
      v32 = 64;
      if (v31)
      {
        _BitScanForward64(&v32, v31);
      }

      v26 = v32 + (v23 << 6);
    }

    *(v5 + 8 * (v26 >> 6) + 56) |= 1 << v26;
    v33 = *(v5 + 48);
    v34 = 16 * v26;
    *(v33 + v34) = v39;
    *(v33 + v34 + 8) = v40;
    ++*(v5 + 16);
  }

  v35 = v45;

  v14 = v44;
LABEL_36:
  v36 = 1 << *(v35 + 32);
  v2 = v42;
  if (v36 > 63)
  {
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v36 + 63) >> 6, v14);
  }

  else
  {
    *v14 = -1 << (1 << *(v35 + 32));
  }

  *(v35 + 16) = 0;
LABEL_40:

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 24);
  if (v4 <= a1)
  {
    v4 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<Int?>);
  v5 = v4;
  v6 = v3;
  v7 = static _SetStorage.resize(original:capacity:move:)(v3, v5, 1);
  if (*(v6 + 16))
  {
    v8 = 1 << *(v6 + 32);
    v9 = ~(-1 << v8);
    if (v8 >= 64)
    {
      v9 = -1;
    }

    v10 = *(v6 + 56) & v9;
    v42 = (v6 + 56);
    v41 = (v8 + 63) >> 6;
    v11 = 0;
    v39 = v6;
    while (1)
    {
      if (v10)
      {
        _BitScanForward64(&v12, v10);
        v10 &= v10 - 1;
        v40 = v11;
        v13 = v12 | (v11 << 6);
      }

      else
      {
        v14 = __OFADD__(1, v11);
        v15 = v11 + 1;
        if (v14)
        {
          BUG();
        }

        if (v15 >= v41)
        {
LABEL_39:
          v37 = 1 << *(v6 + 32);
          if (v37 > 63)
          {
            specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v37 + 63) >> 6, v42);
          }

          else
          {
            *v42 = -1 << v37;
          }

          v2 = v1;
          *(v6 + 16) = 0;
          break;
        }

        i = v42[v15];
        if (i)
        {
          v17 = v15;
        }

        else
        {
          v17 = v15 + 1;
          if (v15 + 1 >= v41)
          {
            goto LABEL_39;
          }

          i = v42[v15 + 1];
          if (!i)
          {
            v17 = v15 + 2;
            if (v15 + 2 >= v41)
            {
              goto LABEL_39;
            }

            i = v42[v15 + 2];
            if (!i)
            {
              v17 = v15 + 3;
              if (v15 + 3 >= v41)
              {
                goto LABEL_39;
              }

              for (i = v42[v15 + 3]; !i; i = v42[v17])
              {
                v14 = __OFADD__(1, v17++);
                if (v14)
                {
                  BUG();
                }

                if (v17 >= v41)
                {
                  goto LABEL_39;
                }
              }
            }
          }
        }

        _BitScanForward64(&v18, i);
        v10 = i & (i - 1);
        v13 = v18 | (v17 << 6);
        v40 = v17;
      }

      v19 = *(v6 + 48);
      v20 = 16 * v13;
      v21 = *(v19 + v20);
      v22 = *(v19 + v20 + 8);
      Hasher.init(_seed:)(*(v7 + 40));
      v43 = v22;
      if (v22 == 1)
      {
        v23 = v21;
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        v23 = v21;
        Hasher._combine(_:)(v21);
      }

      v24 = Hasher._finalize()() & ~(-1 << *(v7 + 32));
      v25 = v24 >> 6;
      v26 = ~*(v7 + 8 * (v24 >> 6) + 56) >> v24 << v24;
      if (v26)
      {
        _BitScanForward64(&v27, v26);
        v28 = v27 | v24 & 0xFFFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = (63 - (-1 << *(v7 + 32))) >> 6;
        v30 = 0;
        do
        {
          v31 = v25 + 1;
          if (v25 + 1 == v29 && (v30 & 1) != 0)
          {
            BUG();
          }

          v25 = 0;
          if (v31 != v29)
          {
            v25 = v31;
          }

          v30 |= v31 == v29;
          v32 = *(v7 + 8 * v25 + 56);
        }

        while (v32 == -1);
        v33 = ~v32;
        v34 = 64;
        if (v33)
        {
          _BitScanForward64(&v34, v33);
        }

        v28 = v34 + (v25 << 6);
      }

      *(v7 + 8 * (v28 >> 6) + 56) |= 1 << v28;
      v35 = *(v7 + 48);
      v36 = 16 * v28;
      *(v35 + v36) = v23;
      *(v35 + v36 + 8) = v43;
      ++*(v7 + 16);
      v6 = v39;
      v11 = v40;
    }
  }

  *v2 = v7;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 24);
  if (v4 <= a1)
  {
    v4 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<String?>);
  v5 = static _SetStorage.resize(original:capacity:move:)(v3, v4, 1);
  if (!*(v3 + 16))
  {
    goto LABEL_28;
  }

  v19 = v1;
  v6 = 1 << *(v3 + 32);
  v20 = (v3 + 56);
  v7 = ~(-1 << v6);
  if (v6 >= 64)
  {
    v7 = -1;
  }

  v8 = *(v3 + 56) & v7;
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (1)
  {
    if (v8)
    {
      _BitScanForward64(&v11, v8);
      v8 &= v8 - 1;
      v12 = v11 | (v10 << 6);
      goto LABEL_23;
    }

    v13 = v10 + 1;
    if (__OFADD__(1, v10))
    {
      BUG();
    }

    if (v13 >= v9)
    {
      goto LABEL_24;
    }

    v14 = v20[v13];
    if (!v14)
    {
      break;
    }

    v15 = v10 + 1;
LABEL_22:
    _BitScanForward64(&v16, v14);
    v8 = v14 & (v14 - 1);
    v12 = v16 | (v15 << 6);
    v10 = v15;
LABEL_23:
    specialized _NativeSet._unsafeInsertNew(_:)(*(*(v3 + 48) + 16 * v12), *(*(v3 + 48) + 16 * v12 + 8), v5);
  }

  v15 = v10 + 2;
  if (v10 + 2 >= v9)
  {
    goto LABEL_24;
  }

  v14 = v20[v13 + 1];
  if (v14)
  {
    goto LABEL_22;
  }

  v15 = v10 + 3;
  if (v10 + 3 >= v9)
  {
    goto LABEL_24;
  }

  v14 = v20[v13 + 2];
  if (v14)
  {
    goto LABEL_22;
  }

  v15 = v10 + 4;
  if (v10 + 4 >= v9)
  {
    goto LABEL_24;
  }

  v14 = v20[v13 + 3];
  if (v14)
  {
    goto LABEL_22;
  }

  while (v10 + 5 < v9)
  {
    v14 = *(v3 + 8 * v10++ + 96);
    if (v14)
    {
      v15 = v10 + 4;
      goto LABEL_22;
    }
  }

LABEL_24:

  v17 = 1 << *(v3 + 32);
  if (v17 > 63)
  {
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v17 + 63) >> 6, v20);
  }

  else
  {
    *v20 = -1 << (1 << *(v3 + 32));
  }

  v2 = v19;
  *(v3 + 16) = 0;
LABEL_28:

  *v2 = v5;
  return result;
}

{
  v32 = v1;
  v2 = *v1;
  v3 = *(*v1 + 24);
  if (v3 <= a1)
  {
    v3 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<Int>);
  v4 = static _SetStorage.resize(original:capacity:move:)(v2, v3, 1);
  if (!*(v2 + 16))
  {

    v29 = v1;
    goto LABEL_41;
  }

  v5 = 1 << *(v2 + 32);
  v31 = -1 << v5;
  v6 = ~(-1 << v5);
  if (v5 >= 64)
  {
    v6 = -1;
  }

  v34 = (v2 + 56);
  v7 = *(v2 + 56) & v6;
  v30 = 1 << *(v2 + 32);
  v33 = (v5 + 63) >> 6;
  v8 = 0;
  while (1)
  {
    if (v7)
    {
      _BitScanForward64(&v9, v7);
      v7 &= v7 - 1;
      v10 = v9 | (v8 << 6);
      goto LABEL_18;
    }

    v11 = __OFADD__(1, v8);
    v12 = v8 + 1;
    if (v11)
    {
      BUG();
    }

    if (v12 >= v33)
    {
      break;
    }

    i = v34[v12];
    if (i)
    {
      v14 = v12;
    }

    else
    {
      v14 = v12 + 1;
      if (v12 + 1 >= v33)
      {
        break;
      }

      i = v34[v12 + 1];
      if (!i)
      {
        v14 = v12 + 2;
        if (v12 + 2 >= v33)
        {
          break;
        }

        i = v34[v12 + 2];
        if (!i)
        {
          v14 = v12 + 3;
          if (v12 + 3 >= v33)
          {
            break;
          }

          for (i = v34[v12 + 3]; !i; i = v34[v14])
          {
            v11 = __OFADD__(1, v14++);
            if (v11)
            {
              BUG();
            }

            if (v14 >= v33)
            {
              goto LABEL_36;
            }
          }
        }
      }
    }

    _BitScanForward64(&v15, i);
    v7 = i & (i - 1);
    v10 = v15 | (v14 << 6);
    v8 = v14;
LABEL_18:
    v16 = *(*(v2 + 48) + 8 * v10);
    v17 = static Hasher._hash(seed:_:)(*(v4 + 40)) & ~(-1 << *(v4 + 32));
    v18 = v17 >> 6;
    v19 = ~*(v4 + 8 * (v17 >> 6) + 56) >> v17 << v17;
    if (v19)
    {
      _BitScanForward64(&v20, v19);
      v21 = v20 | v17 & 0xFFFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = (63 - (-1 << *(v4 + 32))) >> 6;
      v23 = 0;
      do
      {
        v24 = v18 + 1;
        if (v18 + 1 == v22 && (v23 & 1) != 0)
        {
          BUG();
        }

        v18 = 0;
        if (v24 != v22)
        {
          v18 = v24;
        }

        v23 |= v24 == v22;
        v25 = *(v4 + 8 * v18 + 56);
      }

      while (v25 == -1);
      v26 = ~v25;
      v27 = 64;
      if (v26)
      {
        _BitScanForward64(&v27, v26);
      }

      v21 = v27 + (v18 << 6);
    }

    *(v4 + 8 * (v21 >> 6) + 56) |= 1 << v21;
    *(*(v4 + 48) + 8 * v21) = v16;
    ++*(v4 + 16);
  }

LABEL_36:
  if (v30 > 63)
  {
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v33, v34);
  }

  else
  {
    *v34 = v31;
  }

  v29 = v32;
  *(v2 + 16) = 0;

LABEL_41:
  *v29 = v4;
  return result;
}

{
  v2 = v1;
  v3 = a1;
  v43 = type metadata accessor for URL(0);
  v41 = *(v43 - 8);
  v4 = v41[8];
  v5 = alloca(v4);
  v6 = alloca(v4);
  v44 = &v39;
  v7 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v3 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<URL>);
  v8 = v7;
  v9 = static _SetStorage.resize(original:capacity:move:)(v7, v3, 1);
  if (*(v8 + 16))
  {
    v42 = v2;
    v10 = 1 << *(v8 + 32);
    v49 = (v8 + 56);
    v11 = ~(-1 << v10);
    if (v10 >= 64)
    {
      v11 = -1;
    }

    v12 = *(v8 + 56) & v11;
    v48 = (v10 + 63) >> 6;

    v13 = 0;
    v47 = v8;
    v14 = v43;
    while (1)
    {
      if (v12)
      {
        _BitScanForward64(&v15, v12);
        v46 = (v12 - 1) & v12;
        v45 = v13;
        v16 = v15 | (v13 << 6);
      }

      else
      {
        v17 = __OFADD__(1, v13);
        v18 = v13 + 1;
        if (v17)
        {
          BUG();
        }

        if (v18 >= v48)
        {
LABEL_36:

          v37 = 1 << *(v8 + 32);
          v2 = v42;
          if (v37 > 63)
          {
            specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v37 + 63) >> 6, v49);
          }

          else
          {
            *v49 = -1 << v37;
          }

          *(v8 + 16) = 0;
          break;
        }

        i = v49[v18];
        if (i)
        {
          v20 = v18;
        }

        else
        {
          v20 = v18 + 1;
          if (v18 + 1 >= v48)
          {
            goto LABEL_36;
          }

          i = v49[v18 + 1];
          if (!i)
          {
            v20 = v18 + 2;
            if (v18 + 2 >= v48)
            {
              goto LABEL_36;
            }

            i = v49[v18 + 2];
            if (!i)
            {
              v20 = v18 + 3;
              if (v18 + 3 >= v48)
              {
                goto LABEL_36;
              }

              for (i = v49[v18 + 3]; !i; i = v49[v20])
              {
                v17 = __OFADD__(1, v20++);
                if (v17)
                {
                  BUG();
                }

                if (v20 >= v48)
                {
                  goto LABEL_36;
                }
              }
            }
          }
        }

        _BitScanForward64(&v21, i);
        v46 = i & (i - 1);
        v16 = v21 | (v20 << 6);
        v45 = v20;
      }

      v22 = v41[9];
      v23 = *(v8 + 48) + v22 * v16;
      v40 = v41[4];
      v40(v44, v23, v14);
      v24 = *(v9 + 40);
      v25 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)(v24, v14, v25) & ~(-1 << *(v9 + 32));
      v27 = v26 >> 6;
      v28 = ~*(v9 + 8 * (v26 >> 6) + 56) >> v26 << v26;
      if (v28)
      {
        _BitScanForward64(&v29, v28);
        v30 = v29 | v26 & 0xFFFFFFFFFFFFFFC0;
        v8 = v47;
      }

      else
      {
        v31 = (63 - (-1 << *(v9 + 32))) >> 6;
        v32 = 0;
        v8 = v47;
        do
        {
          v33 = v27 + 1;
          if (v27 + 1 == v31 && (v32 & 1) != 0)
          {
            BUG();
          }

          v27 = 0;
          if (v33 != v31)
          {
            v27 = v33;
          }

          v32 |= v33 == v31;
          v34 = *(v9 + 8 * v27 + 56);
        }

        while (v34 == -1);
        v35 = ~v34;
        v36 = 64;
        if (v35)
        {
          _BitScanForward64(&v36, v35);
        }

        v30 = v36 + (v27 << 6);
      }

      *(v9 + 8 * (v30 >> 6) + 56) |= 1 << v30;
      v40((*(v9 + 48) + v30 * v22), v44, v43);
      ++*(v9 + 16);
      v13 = v45;
      v12 = v46;
    }
  }

  *v2 = v9;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 24);
  if (v4 <= a1)
  {
    v4 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<MLRecommender.Identifier>);
  v5 = v4;
  v6 = v3;
  v7 = static _SetStorage.resize(original:capacity:move:)(v3, v5, 1);
  if (*(v6 + 16))
  {
    v43 = v1;
    v8 = 1 << *(v6 + 32);
    v47 = (v6 + 56);
    v9 = ~(-1 << v8);
    if (v8 >= 64)
    {
      v9 = -1;
    }

    v10 = *(v6 + 56) & v9;
    v46 = (v8 + 63) >> 6;

    v11 = 0;
    v42 = v6;
    while (1)
    {
      if (v10)
      {
        _BitScanForward64(&v12, v10);
        v45 = (v10 - 1) & v10;
        v44 = v11;
        v13 = v12 | (v11 << 6);
      }

      else
      {
        v14 = __OFADD__(1, v11);
        v15 = v11 + 1;
        if (v14)
        {
          BUG();
        }

        if (v15 >= v46)
        {
LABEL_39:

          v38 = 1 << *(v6 + 32);
          v2 = v43;
          if (v38 > 63)
          {
            specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v38 + 63) >> 6, v47);
          }

          else
          {
            *v47 = -1 << (1 << *(v6 + 32));
          }

          *(v6 + 16) = 0;
          break;
        }

        i = v47[v15];
        if (i)
        {
          v17 = v15;
        }

        else
        {
          v17 = v15 + 1;
          if (v15 + 1 >= v46)
          {
            goto LABEL_39;
          }

          i = v47[v15 + 1];
          if (!i)
          {
            v17 = v15 + 2;
            if (v15 + 2 >= v46)
            {
              goto LABEL_39;
            }

            i = v47[v15 + 2];
            if (!i)
            {
              v17 = v15 + 3;
              if (v15 + 3 >= v46)
              {
                goto LABEL_39;
              }

              for (i = v47[v15 + 3]; !i; i = v47[v17])
              {
                v14 = __OFADD__(1, v17++);
                if (v14)
                {
                  BUG();
                }

                if (v17 >= v46)
                {
                  goto LABEL_39;
                }
              }
            }
          }
        }

        _BitScanForward64(&v18, i);
        v45 = i & (i - 1);
        v13 = v18 | (v17 << 6);
        v44 = v17;
      }

      v19 = *(v6 + 48);
      v20 = 24 * v13;
      v21 = *(v19 + v20);
      v22 = *(v19 + v20 + 8);
      v23 = *(v19 + v20 + 16);
      Hasher.init(_seed:)(*(v7 + 40));
      v48 = v23;
      v41 = v21;
      if (v23)
      {
        v24 = v22;
        Hasher._combine(_:)(1uLL);
        Hasher._combine(_:)(v21);
      }

      else
      {
        Hasher._combine(_:)(0);
        v24 = v22;
        String.hash(into:)(v40, v21);
      }

      v25 = Hasher._finalize()() & ~(-1 << *(v7 + 32));
      v26 = v25 >> 6;
      v27 = ~*(v7 + 8 * (v25 >> 6) + 56) >> v25 << v25;
      if (v27)
      {
        _BitScanForward64(&v28, v27);
        v29 = v28 | v25 & 0xFFFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = (63 - (-1 << *(v7 + 32))) >> 6;
        v31 = 0;
        do
        {
          v32 = v26 + 1;
          if (v26 + 1 == v30 && (v31 & 1) != 0)
          {
            BUG();
          }

          v26 = 0;
          if (v32 != v30)
          {
            v26 = v32;
          }

          v31 |= v32 == v30;
          v33 = *(v7 + 8 * v26 + 56);
        }

        while (v33 == -1);
        v34 = ~v33;
        v35 = 64;
        if (v34)
        {
          _BitScanForward64(&v35, v34);
        }

        v29 = v35 + (v26 << 6);
      }

      v36 = 24 * v29;
      *(v7 + 8 * (v29 >> 6) + 56) |= 1 << v29;
      v37 = *(v7 + 48);
      *(v37 + v36) = v41;
      *(v37 + v36 + 8) = v24;
      *(v37 + v36 + 16) = v48;
      ++*(v7 + 16);
      v6 = v42;
      v11 = v44;
      v10 = v45;
    }
  }

  *v2 = v7;
  return result;
}

uint64_t *specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v36 = v1;
  v2 = *v1;
  v3 = *(*v1 + 24);
  if (v3 <= a1)
  {
    v3 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<NSURLResourceKey>);
  v4 = static _SetStorage.resize(original:capacity:move:)(v2, v3, 1);
  if (*(v2 + 16))
  {
    v5 = 1 << *(v2 + 32);
    v41 = (v2 + 56);
    v6 = ~(-1 << v5);
    if (v5 >= 64)
    {
      v6 = -1;
    }

    v7 = *(v2 + 56) & v6;
    v40 = (v5 + 63) >> 6;

    v8 = 0;
    v38 = v2;
    while (1)
    {
      if (v7)
      {
        _BitScanForward64(&v9, v7);
        v39 = (v7 - 1) & v7;
        v37 = v8;
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
LABEL_36:

          v32 = 1 << *(v2 + 32);
          if (v32 > 63)
          {
            specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v32 + 63) >> 6, v41);
          }

          else
          {
            *v41 = -1 << v32;
          }

          *(v2 + 16) = 0;
          break;
        }

        i = v41[v12];
        if (i)
        {
          v14 = v12;
        }

        else
        {
          v14 = v12 + 1;
          if (v12 + 1 >= v40)
          {
            goto LABEL_36;
          }

          i = v41[v12 + 1];
          if (!i)
          {
            v14 = v12 + 2;
            if (v12 + 2 >= v40)
            {
              goto LABEL_36;
            }

            i = v41[v12 + 2];
            if (!i)
            {
              v14 = v12 + 3;
              if (v12 + 3 >= v40)
              {
                goto LABEL_36;
              }

              for (i = v41[v12 + 3]; !i; i = v41[v14])
              {
                v11 = __OFADD__(1, v14++);
                if (v11)
                {
                  BUG();
                }

                if (v14 >= v40)
                {
                  goto LABEL_36;
                }
              }
            }
          }
        }

        _BitScanForward64(&v15, i);
        v39 = i & (i - 1);
        v10 = v15 | (v14 << 6);
        v37 = v14;
      }

      v16 = *(v4 + 40);
      v35 = *(*(v2 + 48) + 8 * v10);
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)(v35);
      v19 = v18;
      Hasher.init(_seed:)(v16);
      String.hash(into:)(v34, v17);
      v20 = Hasher._finalize()();
      v19;
      v21 = v20 & ~(-1 << *(v4 + 32));
      v22 = v21 >> 6;
      v23 = ~*(v4 + 8 * (v21 >> 6) + 56) >> v21 << v21;
      if (v23)
      {
        _BitScanForward64(&v24, v23);
        v25 = v24 | v21 & 0xFFFFFFFFFFFFFFC0;
        v2 = v38;
        v7 = v39;
      }

      else
      {
        v26 = (63 - (-1 << *(v4 + 32))) >> 6;
        v27 = 0;
        v2 = v38;
        v7 = v39;
        do
        {
          v28 = v22 + 1;
          if (v22 + 1 == v26 && (v27 & 1) != 0)
          {
            BUG();
          }

          v22 = 0;
          if (v28 != v26)
          {
            v22 = v28;
          }

          v27 |= v28 == v26;
          v29 = *(v4 + 8 * v22 + 56);
        }

        while (v29 == -1);
        v30 = ~v29;
        v31 = 64;
        if (v30)
        {
          _BitScanForward64(&v31, v30);
        }

        v25 = v31 + (v22 << 6);
      }

      *(v4 + 8 * (v25 >> 6) + 56) |= 1 << v25;
      *(*(v4 + 48) + 8 * v25) = v35;
      ++*(v4 + 16);
      v8 = v37;
    }
  }

  result = v36;
  *v36 = v4;
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)(*(a3 + 40));
  if (a2)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)(v8, a1);
    a2;
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v4 = Hasher._finalize()();
  v5 = _HashTable.nextHole(atOrAfter:)(~(-1 << *(a3 + 32)) & v4, a3 + 56);
  *(a3 + 8 * (v5 >> 6) + 56) |= 1 << v5;
  v6 = *(a3 + 48);
  result = 16 * v5;
  *(v6 + result) = a1;
  *(v6 + result + 8) = a2;
  ++*(a3 + 16);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  v23 = v4;
  if ((a4 & (v8 > v7)) == 0)
  {
    v9 = v7 + 1;
    if (a4)
    {
      specialized _NativeSet.resize(capacity:)(v9);
    }

    else
    {
      if (v8 > v7)
      {
        specialized _NativeSet.copy()();
        goto LABEL_12;
      }

      specialized _NativeSet.copyAndResize(capacity:)(v9);
    }

    v10 = *v4;
    Hasher.init(_seed:)(*(*v4 + 40));
    String.hash(into:)(v22, a1);
    v11 = Hasher._finalize()();
    v12 = ~(-1 << *(v10 + 32));
    a3 = v12 & v11;
    v13 = *(v10 + 8 * ((v12 & v11) >> 6) + 56);
    if (_bittest64(&v13, a3))
    {
      v24 = v10;
      v14 = *(v10 + 48);
      do
      {
        if (!(a1 ^ *(v14 + 16 * a3) | a2 ^ *(v14 + 16 * a3 + 8)) || (_stringCompareWithSmolCheck(_:_:expecting:)(*(v14 + 16 * a3), *(v14 + 16 * a3 + 8), a1, a2, 0) & 1) != 0)
        {
          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String);
          BUG();
        }

        a3 = v12 & (a3 + 1);
        v15 = *(v24 + 8 * (a3 >> 6) + 56);
      }

      while (_bittest64(&v15, a3));
    }
  }

LABEL_12:
  result = *v23;
  *(result + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = *(result + 48);
  v18 = 16 * a3;
  *(v17 + v18) = a1;
  *(v17 + v18 + 8) = a2;
  v19 = *(result + 16);
  v20 = __OFADD__(1, v19);
  v21 = v19 + 1;
  if (v20)
  {
    BUG();
  }

  *(result + 16) = v21;
  return result;
}

{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  v27 = v4;
  if ((a4 & (v9 > v8)) != 0)
  {
    goto LABEL_21;
  }

  v10 = v8 + 1;
  v28 = a1;
  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v10);
  }

  else
  {
    if (v9 > v8)
    {
      specialized _NativeSet.copy()();
LABEL_20:
      a1 = v28;
      goto LABEL_21;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v10);
  }

  v11 = *v4;
  Hasher.init(_seed:)(*(*v4 + 40));
  if (a2)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)(v26, v28);
    a2;
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v12 = Hasher._finalize()();
  v13 = ~(-1 << *(v11 + 32));
  a3 = v13 & v12;
  v14 = *(v11 + 8 * ((v13 & v12) >> 6) + 56);
  if (!_bittest64(&v14, a3))
  {
    goto LABEL_20;
  }

  v15 = *(v11 + 48);
  a1 = v28;
  do
  {
    v16 = *(v15 + 16 * a3 + 8);
    if (v16)
    {
      if (a2)
      {
        if (!(a1 ^ *(v15 + 16 * a3) | a2 ^ v16) || (v17 = _stringCompareWithSmolCheck(_:_:expecting:)(*(v15 + 16 * a3), v16, a1, a2, 0), a1 = v28, (v17 & 1) != 0))
        {
LABEL_24:
          v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for String?);
          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v25);
          BUG();
        }
      }
    }

    else if (!a2)
    {
      goto LABEL_24;
    }

    a3 = v13 & (a3 + 1);
    v18 = *(v11 + 8 * (a3 >> 6) + 56);
  }

  while (_bittest64(&v18, a3));
LABEL_21:
  result = *v27;
  *(result + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v20 = *(result + 48);
  v21 = 16 * a3;
  *(v20 + v21) = a1;
  *(v20 + v21 + 8) = a2;
  v22 = *(result + 16);
  v23 = __OFADD__(1, v22);
  v24 = v22 + 1;
  if (v23)
  {
    BUG();
  }

  *(result + 16) = v24;
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::UInt a1, char a2, unint64_t a3, unsigned __int8 a4)
{
  v6 = *(*v4 + 16);
  v7 = *(*v4 + 24);
  if ((a4 & (v7 > v6)) != 0)
  {
    goto LABEL_20;
  }

  v22 = a1;
  v8 = v6 + 1;
  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
LABEL_19:
      a1 = v22;
      goto LABEL_20;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8);
  }

  v9 = *v4;
  Hasher.init(_seed:)(*(*v4 + 40));
  if (a2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v22);
  }

  v10 = Hasher._finalize()();
  v11 = ~(-1 << *(v9 + 32));
  a3 = v11 & v10;
  v12 = *(v9 + 8 * ((v11 & v10) >> 6) + 56);
  if (!_bittest64(&v12, a3))
  {
    goto LABEL_19;
  }

  v13 = *(v9 + 48);
  a1 = v22;
  do
  {
    if (*(v13 + 16 * a3 + 8))
    {
      if (a2)
      {
        goto LABEL_23;
      }
    }

    else if ((a2 & 1) == 0 && *(v13 + 16 * a3) == v22)
    {
LABEL_23:
      v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Int?);
      ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v21);
      BUG();
    }

    a3 = v11 & (a3 + 1);
    v14 = *(v9 + 8 * (a3 >> 6) + 56);
  }

  while (_bittest64(&v14, a3));
LABEL_20:
  result = *v4;
  *(result + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = *(result + 48);
  v17 = 16 * a3;
  *(v16 + v17) = a1;
  *(v16 + v17 + 8) = a2 & 1;
  v18 = *(result + 16);
  v19 = __OFADD__(1, v18);
  v20 = v18 + 1;
  if (v19)
  {
    BUG();
  }

  *(result + 16) = v20;
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if ((a3 & (v7 > v6)) == 0)
  {
    v8 = v6 + 1;
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v8);
    }

    else
    {
      if (v7 > v6)
      {
        specialized _NativeSet.copy()();
        goto LABEL_10;
      }

      specialized _NativeSet.copyAndResize(capacity:)(v8);
    }

    v9 = *v3;
    v10 = static Hasher._hash(seed:_:)(*(*v3 + 40));
    v11 = ~(-1 << *(v9 + 32));
    a2 = v11 & v10;
    v12 = *(v9 + 8 * ((v11 & v10) >> 6) + 56);
    if (_bittest64(&v12, a2))
    {
      do
      {
        if (*(*(v9 + 48) + 8 * a2) == a1)
        {
          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for Int);
          BUG();
        }

        a2 = v11 & (a2 + 1);
        v13 = *(v9 + 8 * (a2 >> 6) + 56);
      }

      while (_bittest64(&v13, a2));
    }
  }

LABEL_10:
  result = *v3;
  *(result + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(result + 48) + 8 * a2) = a1;
  v15 = *(result + 16);
  v16 = __OFADD__(1, v15);
  v17 = v15 + 1;
  if (v16)
  {
    BUG();
  }

  *(result + 16) = v17;
  return result;
}

{
  v30 = a1;
  v6 = type metadata accessor for URL(0);
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v29 = v3;
  if ((a3 & (v11 > v10)) == 0)
  {
    v12 = v10 + 1;
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v12);
    }

    else
    {
      if (v11 > v10)
      {
        specialized _NativeSet.copy()();
        goto LABEL_11;
      }

      specialized _NativeSet.copyAndResize(capacity:)(v12);
    }

    v13 = *v3;
    v14 = *(*v3 + 40);
    v15 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v16 = dispatch thunk of Hashable._rawHashValue(seed:)(v14, v6, v15);
    v26 = ~(-1 << *(v13 + 32));
    a2 = v26 & v16;
    v17 = *(v13 + 8 * ((v26 & v16) >> 6) + 56);
    if (_bittest64(&v17, a2))
    {
      v27 = *(v31 + 16);
      v28 = *(v31 + 72);
      do
      {
        v27(&v25, *(v13 + 48) + a2 * v28, v6);
        v18 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v19 = dispatch thunk of static Equatable.== infix(_:_:)(&v25, v30, v6, v18);
        (*(v31 + 8))(&v25, v6);
        if (v19)
        {
          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v6);
          BUG();
        }

        a2 = v26 & (a2 + 1);
        v20 = *(v13 + 8 * (a2 >> 6) + 56);
      }

      while (_bittest64(&v20, a2));
    }
  }

LABEL_11:
  v21 = *v29;
  *(v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  (*(v31 + 32))(*(v21 + 48) + *(v31 + 72) * a2, v30, v6);
  v22 = *(v21 + 16);
  v23 = __OFADD__(1, v22);
  result = v22 + 1;
  if (v23)
  {
    BUG();
  }

  *(v21 + 16) = result;
  return result;
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v34 = v3;
  if ((a3 & (v7 > v6)) == 0)
  {
    v8 = v6 + 1;
    v37 = a1;
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v8);
    }

    else
    {
      if (v7 > v6)
      {
        specialized _NativeSet.copy()();
LABEL_14:
        a1 = v37;
        goto LABEL_15;
      }

      specialized _NativeSet.copyAndResize(capacity:)(v8);
    }

    v9 = *v3;
    v10 = *(*v3 + 40);
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)(v37);
    v13 = v12;
    Hasher.init(_seed:)(v10);
    String.hash(into:)(v33, v11);
    v14 = Hasher._finalize()();
    v13;
    v35 = ~(-1 << *(v9 + 32));
    a2 = v35 & v14;
    v15 = *(v9 + 8 * (a2 >> 6) + 56);
    if (_bittest64(&v15, a2))
    {
      v36 = v9;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)(*(*(v9 + 48) + 8 * a2));
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)(v37);
      v21 = v20;
      if (v19 ^ v16 | v20 ^ v18)
      {
        for (i = v16; ; i = v25)
        {
          v23 = _stringCompareWithSmolCheck(_:_:expecting:)(i, v18, v19, v21, 0);
          v18;
          v21;
          if (v23)
          {
            break;
          }

          a2 = v35 & (a2 + 1);
          v24 = *(v36 + 8 * (a2 >> 6) + 56);
          a1 = v37;
          if (!_bittest64(&v24, a2))
          {
            goto LABEL_15;
          }

          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)(*(*(v36 + 48) + 8 * a2));
          v18 = v26;
          v19 = static String._unconditionallyBridgeFromObjectiveC(_:)(a1);
          v21 = v27;
          if (!(v19 ^ v25 | v27 ^ v18))
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
LABEL_18:
        v18;
        v21;
      }

      v32 = type metadata accessor for NSURLResourceKey(0);
      ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v32);
      BUG();
    }

    goto LABEL_14;
  }

LABEL_15:
  result = *v34;
  *(result + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(result + 48) + 8 * a2) = a1;
  v29 = *(result + 16);
  v30 = __OFADD__(1, v29);
  v31 = v29 + 1;
  if (v30)
  {
    BUG();
  }

  *(result + 16) = v31;
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::UInt a1, uint64_t a2, char a3, unint64_t a4, unsigned __int8 a5)
{
  v8 = a2;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  v29 = v5;
  if ((a5 & (v11 > v10)) == 0)
  {
    v12 = v10 + 1;
    v30 = a2;
    v31 = a1;
    if (a5)
    {
      specialized _NativeSet.resize(capacity:)(v12);
    }

    else
    {
      if (v11 > v10)
      {
        specialized _NativeSet.copy()();
LABEL_21:
        v8 = v30;
        a1 = v31;
        goto LABEL_22;
      }

      specialized _NativeSet.copyAndResize(capacity:)(v12);
    }

    v13 = *v5;
    Hasher.init(_seed:)(*(*v5 + 40));
    if (a3)
    {
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v31);
    }

    else
    {
      Hasher._combine(_:)(0);
      String.hash(into:)(v28, v31);
    }

    v14 = Hasher._finalize()();
    v15 = ~(-1 << *(v13 + 32));
    a4 = v15 & v14;
    v16 = *(v13 + 8 * ((v15 & v14) >> 6) + 56);
    if (_bittest64(&v16, a4))
    {
      v17 = *(v13 + 48);
      v8 = v30;
      a1 = v31;
      while (1)
      {
        v18 = *(v17 + 24 * a4);
        if (*(v17 + 24 * a4 + 16))
        {
          if ((a3 & 1) != 0 && v18 == a1)
          {
            goto LABEL_25;
          }
        }

        else if ((a3 & 1) == 0)
        {
          v19 = *(v17 + 24 * a4 + 8);
          if (!(a1 ^ v18 | v8 ^ v19) || (v20 = _stringCompareWithSmolCheck(_:_:expecting:)(v18, v19, a1, v8, 0), a1 = v31, v8 = v30, (v20 & 1) != 0))
          {
LABEL_25:
            ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLRecommender.Identifier);
            BUG();
          }
        }

        a4 = v15 & (a4 + 1);
        v21 = *(v13 + 8 * (a4 >> 6) + 56);
        if (!_bittest64(&v21, a4))
        {
          goto LABEL_22;
        }
      }
    }

    goto LABEL_21;
  }

LABEL_22:
  result = *v29;
  *(result + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v23 = *(result + 48);
  v24 = 24 * a4;
  *(v23 + v24) = a1;
  *(v23 + v24 + 8) = v8;
  *(v23 + v24 + 16) = a3 & 1;
  v25 = *(result + 16);
  v26 = __OFADD__(1, v25);
  v27 = v25 + 1;
  if (v26)
  {
    BUG();
  }

  *(result + 16) = v27;
  return result;
}

uint64_t *specialized _NativeSet.copy()()
{
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<String>);
  v23 = v0;
  v1 = *v0;
  v2 = static _SetStorage.copy(original:)(*v0);
  v3 = v2;
  if (!*(v1 + 16))
  {
    goto LABEL_25;
  }

  v4 = (v2 + 56);
  __src = (v1 + 56);
  v5 = ((1 << *(v2 + 32)) + 63) >> 6;
  if (v2 != v1 || v4 >= v1 + 8 * v5 + 56)
  {
    memmove(v4, __src, 8 * v5);
  }

  *(v3 + 16) = *(v1 + 16);
  v6 = 1 << *(v1 + 32);
  v7 = ~(-1 << v6);
  if (v6 >= 64)
  {
    v7 = -1;
  }

  v8 = *(v1 + 56) & v7;
  v9 = (v6 + 63) >> 6;
  v10 = 0;
  while (1)
  {
    if (v8)
    {
      _BitScanForward64(&v11, v8);
      v8 &= v8 - 1;
      v12 = v11 | (v10 << 6);
      goto LABEL_24;
    }

    v13 = v10 + 1;
    if (__OFADD__(1, v10))
    {
      BUG();
    }

    if (v13 >= v9)
    {
      goto LABEL_25;
    }

    v14 = *(__src + v13);
    if (!v14)
    {
      break;
    }

    v15 = v10 + 1;
LABEL_23:
    _BitScanForward64(&v16, v14);
    v8 = v14 & (v14 - 1);
    v12 = v16 | (v15 << 6);
    v10 = v15;
LABEL_24:
    v17 = *(v1 + 48);
    v18 = 16 * v12;
    v19 = *(v17 + v18);
    v20 = *(v17 + v18 + 8);
    v21 = *(v3 + 48);
    *(v21 + v18) = v19;
    *(v21 + v18 + 8) = v20;
  }

  v15 = v10 + 2;
  if (v10 + 2 >= v9)
  {
    goto LABEL_25;
  }

  v14 = *(__src + v13 + 1);
  if (v14)
  {
    goto LABEL_23;
  }

  v15 = v10 + 3;
  if (v10 + 3 >= v9)
  {
    goto LABEL_25;
  }

  v14 = *(__src + v13 + 2);
  if (v14)
  {
    goto LABEL_23;
  }

  v15 = v10 + 4;
  if (v10 + 4 >= v9)
  {
    goto LABEL_25;
  }

  v14 = *(__src + v13 + 3);
  if (v14)
  {
    goto LABEL_23;
  }

  while (v10 + 5 < v9)
  {
    v14 = *(v1 + 8 * v10++ + 96);
    if (v14)
    {
      v15 = v10 + 4;
      goto LABEL_23;
    }
  }

LABEL_25:

  result = v23;
  *v23 = v3;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<String?>);
  v18 = v0;
  v1 = *v0;
  v2 = static _SetStorage.copy(original:)(*v0);
  v3 = v2;
  if (!*(v1 + 16))
  {
    goto LABEL_25;
  }

  v4 = (v2 + 56);
  __src = (v1 + 56);
  v5 = ((1 << *(v2 + 32)) + 63) >> 6;
  if (v2 != v1 || v4 >= v1 + 8 * v5 + 56)
  {
    memmove(v4, __src, 8 * v5);
  }

  *(v3 + 16) = *(v1 + 16);
  v6 = 1 << *(v1 + 32);
  v7 = ~(-1 << v6);
  if (v6 >= 64)
  {
    v7 = -1;
  }

  v8 = *(v1 + 56) & v7;
  v9 = (v6 + 63) >> 6;
  v10 = 0;
  while (1)
  {
    if (v8)
    {
      _BitScanForward64(&v11, v8);
      v8 &= v8 - 1;
      v12 = v11 | (v10 << 6);
      goto LABEL_24;
    }

    v13 = v10 + 1;
    if (__OFADD__(1, v10))
    {
      BUG();
    }

    if (v13 >= v9)
    {
      goto LABEL_25;
    }

    v14 = *(__src + v13);
    if (!v14)
    {
      break;
    }

    v15 = v10 + 1;
LABEL_23:
    _BitScanForward64(&v16, v14);
    v8 = v14 & (v14 - 1);
    v12 = v16 | (v15 << 6);
    v10 = v15;
LABEL_24:
    *(*(v3 + 48) + 16 * v12) = *(*(v1 + 48) + 16 * v12);
  }

  v15 = v10 + 2;
  if (v10 + 2 >= v9)
  {
    goto LABEL_25;
  }

  v14 = *(__src + v13 + 1);
  if (v14)
  {
    goto LABEL_23;
  }

  v15 = v10 + 3;
  if (v10 + 3 >= v9)
  {
    goto LABEL_25;
  }

  v14 = *(__src + v13 + 2);
  if (v14)
  {
    goto LABEL_23;
  }

  v15 = v10 + 4;
  if (v10 + 4 >= v9)
  {
    goto LABEL_25;
  }

  v14 = *(__src + v13 + 3);
  if (v14)
  {
    goto LABEL_23;
  }

  while (v10 + 5 < v9)
  {
    v14 = *(v1 + 8 * v10++ + 96);
    if (v14)
    {
      v15 = v10 + 4;
      goto LABEL_23;
    }
  }

LABEL_25:

  result = v18;
  *v18 = v3;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<MLRecommender.Identifier>);
  v24 = v0;
  v1 = *v0;
  v2 = static _SetStorage.copy(original:)(*v0);
  v3 = v2;
  if (!*(v1 + 16))
  {
    goto LABEL_25;
  }

  v4 = (v2 + 56);
  __src = (v1 + 56);
  v5 = ((1 << *(v2 + 32)) + 63) >> 6;
  if (v2 != v1 || v4 >= v1 + 8 * v5 + 56)
  {
    memmove(v4, __src, 8 * v5);
  }

  *(v3 + 16) = *(v1 + 16);
  v6 = 1 << *(v1 + 32);
  v7 = ~(-1 << v6);
  if (v6 >= 64)
  {
    v7 = -1;
  }

  v8 = *(v1 + 56) & v7;
  v9 = (v6 + 63) >> 6;
  v10 = 0;
  while (1)
  {
    if (v8)
    {
      _BitScanForward64(&v11, v8);
      v8 &= v8 - 1;
      v12 = v11 | (v10 << 6);
      goto LABEL_24;
    }

    v13 = v10 + 1;
    if (__OFADD__(1, v10))
    {
      BUG();
    }

    if (v13 >= v9)
    {
      goto LABEL_25;
    }

    v14 = *(__src + v13);
    if (!v14)
    {
      break;
    }

    v15 = v10 + 1;
LABEL_23:
    _BitScanForward64(&v16, v14);
    v8 = v14 & (v14 - 1);
    v12 = v16 | (v15 << 6);
    v10 = v15;
LABEL_24:
    v17 = *(v1 + 48);
    v18 = 24 * v12;
    v19 = *(v17 + v18);
    v20 = *(v17 + v18 + 8);
    v21 = *(v3 + 48);
    v22 = *(v17 + v18 + 16);
    *(v21 + v18) = v19;
    *(v21 + v18 + 8) = v20;
    *(v21 + v18 + 16) = v22;
    outlined copy of MLRecommender.Identifier(v19, v20, v22);
  }

  v15 = v10 + 2;
  if (v10 + 2 >= v9)
  {
    goto LABEL_25;
  }

  v14 = *(__src + v13 + 1);
  if (v14)
  {
    goto LABEL_23;
  }

  v15 = v10 + 3;
  if (v10 + 3 >= v9)
  {
    goto LABEL_25;
  }

  v14 = *(__src + v13 + 2);
  if (v14)
  {
    goto LABEL_23;
  }

  v15 = v10 + 4;
  if (v10 + 4 >= v9)
  {
    goto LABEL_25;
  }

  v14 = *(__src + v13 + 3);
  if (v14)
  {
    goto LABEL_23;
  }

  while (v10 + 5 < v9)
  {
    v14 = *(v1 + 8 * v10++ + 96);
    if (v14)
    {
      v15 = v10 + 4;
      goto LABEL_23;
    }
  }

LABEL_25:

  result = v24;
  *v24 = v3;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<NSURLResourceKey>);
  v19 = v0;
  v1 = *v0;
  v2 = static _SetStorage.copy(original:)(*v0);
  v3 = v2;
  if (!*(v1 + 16))
  {
    goto LABEL_25;
  }

  v4 = (v2 + 56);
  __src = (v1 + 56);
  v5 = ((1 << *(v2 + 32)) + 63) >> 6;
  if (v2 != v1 || v4 >= v1 + 8 * v5 + 56)
  {
    memmove(v4, __src, 8 * v5);
  }

  *(v3 + 16) = *(v1 + 16);
  v6 = 1 << *(v1 + 32);
  v7 = ~(-1 << v6);
  if (v6 >= 64)
  {
    v7 = -1;
  }

  v8 = *(v1 + 56) & v7;
  v9 = (v6 + 63) >> 6;
  v10 = 0;
  while (1)
  {
    if (v8)
    {
      _BitScanForward64(&v11, v8);
      v8 &= v8 - 1;
      v12 = v11 | (v10 << 6);
      goto LABEL_24;
    }

    v13 = v10 + 1;
    if (__OFADD__(1, v10))
    {
      BUG();
    }

    if (v13 >= v9)
    {
      goto LABEL_25;
    }

    v14 = *(__src + v13);
    if (!v14)
    {
      break;
    }

    v15 = v10 + 1;
LABEL_23:
    _BitScanForward64(&v16, v14);
    v8 = v14 & (v14 - 1);
    v12 = v16 | (v15 << 6);
    v10 = v15;
LABEL_24:
    v17 = *(*(v1 + 48) + 8 * v12);
    *(*(v3 + 48) + 8 * v12) = v17;
    v17;
  }

  v15 = v10 + 2;
  if (v10 + 2 >= v9)
  {
    goto LABEL_25;
  }

  v14 = *(__src + v13 + 1);
  if (v14)
  {
    goto LABEL_23;
  }

  v15 = v10 + 3;
  if (v10 + 3 >= v9)
  {
    goto LABEL_25;
  }

  v14 = *(__src + v13 + 2);
  if (v14)
  {
    goto LABEL_23;
  }

  v15 = v10 + 4;
  if (v10 + 4 >= v9)
  {
    goto LABEL_25;
  }

  v14 = *(__src + v13 + 3);
  if (v14)
  {
    goto LABEL_23;
  }

  while (v10 + 5 < v9)
  {
    v14 = *(v1 + 8 * v10++ + 96);
    if (v14)
    {
      v15 = v10 + 4;
      goto LABEL_23;
    }
  }

LABEL_25:

  result = v19;
  *v19 = v3;
  return result;
}

uint64_t specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<Int?>);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)(*v0);
  v4 = v3;
  if (!*(v2 + 16))
  {
    goto LABEL_25;
  }

  v5 = (v3 + 56);
  v6 = v2 + 56;
  v7 = ((1 << *(v3 + 32)) + 63) >> 6;
  if (v3 != v2 || v5 >= v2 + 8 * v7 + 56)
  {
    memmove(v5, (v2 + 56), 8 * v7);
  }

  *(v4 + 16) = *(v2 + 16);
  v8 = 1 << *(v2 + 32);
  v9 = ~(-1 << v8);
  if (v8 >= 64)
  {
    v9 = -1;
  }

  v10 = *(v2 + 56) & v9;
  v11 = (v8 + 63) >> 6;
  v12 = 0;
  while (1)
  {
    if (v10)
    {
      _BitScanForward64(&v13, v10);
      v10 &= v10 - 1;
      v14 = v13 | (v12 << 6);
      goto LABEL_24;
    }

    v15 = v12 + 1;
    if (__OFADD__(1, v12))
    {
      BUG();
    }

    if (v15 >= v11)
    {
      goto LABEL_25;
    }

    v16 = *(v6 + 8 * v15);
    if (!v16)
    {
      break;
    }

    v17 = v12 + 1;
LABEL_23:
    _BitScanForward64(&v18, v16);
    v10 = v16 & (v16 - 1);
    v14 = v18 | (v17 << 6);
    v12 = v17;
LABEL_24:
    v19 = *(v2 + 48);
    v20 = 16 * v14;
    v21 = *(v19 + v20);
    LOBYTE(v19) = *(v19 + v20 + 8);
    v22 = *(v4 + 48);
    *(v22 + v20) = v21;
    *(v22 + v20 + 8) = v19;
  }

  v17 = v12 + 2;
  if (v12 + 2 >= v11)
  {
    goto LABEL_25;
  }

  v16 = *(v6 + 8 * v15 + 8);
  if (v16)
  {
    goto LABEL_23;
  }

  v17 = v12 + 3;
  if (v12 + 3 >= v11)
  {
    goto LABEL_25;
  }

  v16 = *(v6 + 8 * v15 + 16);
  if (v16)
  {
    goto LABEL_23;
  }

  v17 = v12 + 4;
  if (v12 + 4 >= v11)
  {
    goto LABEL_25;
  }

  v16 = *(v6 + 8 * v15 + 24);
  if (v16)
  {
    goto LABEL_23;
  }

  while (v12 + 5 < v11)
  {
    v16 = *(v2 + 8 * v12++ + 96);
    if (v16)
    {
      v17 = v12 + 4;
      goto LABEL_23;
    }
  }

LABEL_25:

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<Int>);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)(*v0);
  v4 = v3;
  if (!*(v2 + 16))
  {
    goto LABEL_25;
  }

  v5 = (v3 + 56);
  v6 = v2 + 56;
  v7 = ((1 << *(v3 + 32)) + 63) >> 6;
  if (v3 != v2 || v5 >= v2 + 8 * v7 + 56)
  {
    memmove(v5, (v2 + 56), 8 * v7);
  }

  *(v4 + 16) = *(v2 + 16);
  v8 = 1 << *(v2 + 32);
  v9 = ~(-1 << v8);
  if (v8 >= 64)
  {
    v9 = -1;
  }

  v10 = *(v2 + 56) & v9;
  v11 = (v8 + 63) >> 6;
  v12 = 0;
  while (1)
  {
    if (v10)
    {
      _BitScanForward64(&v13, v10);
      v10 &= v10 - 1;
      v14 = v13 | (v12 << 6);
      goto LABEL_24;
    }

    v15 = v12 + 1;
    if (__OFADD__(1, v12))
    {
      BUG();
    }

    if (v15 >= v11)
    {
      goto LABEL_25;
    }

    v16 = *(v6 + 8 * v15);
    if (!v16)
    {
      break;
    }

    v17 = v12 + 1;
LABEL_23:
    _BitScanForward64(&v18, v16);
    v10 = v16 & (v16 - 1);
    v14 = v18 | (v17 << 6);
    v12 = v17;
LABEL_24:
    *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
  }

  v17 = v12 + 2;
  if (v12 + 2 >= v11)
  {
    goto LABEL_25;
  }

  v16 = *(v6 + 8 * v15 + 8);
  if (v16)
  {
    goto LABEL_23;
  }

  v17 = v12 + 3;
  if (v12 + 3 >= v11)
  {
    goto LABEL_25;
  }

  v16 = *(v6 + 8 * v15 + 16);
  if (v16)
  {
    goto LABEL_23;
  }

  v17 = v12 + 4;
  if (v12 + 4 >= v11)
  {
    goto LABEL_25;
  }

  v16 = *(v6 + 8 * v15 + 24);
  if (v16)
  {
    goto LABEL_23;
  }

  while (v12 + 5 < v11)
  {
    v16 = *(v2 + 8 * v12++ + 96);
    if (v16)
    {
      v17 = v12 + 4;
      goto LABEL_23;
    }
  }

LABEL_25:

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v29 = type metadata accessor for URL(0);
  v31 = *(v29 - 8);
  v2 = *(v31 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v30 = &v29;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<URL>);
  v5 = *v0;
  v6 = static _SetStorage.copy(original:)(*v0);
  v7 = v6;
  if (!*(v5 + 16))
  {

    goto LABEL_28;
  }

  v36 = v0;
  v8 = (v6 + 56);
  v9 = *(v6 + 32);
  __src = (v5 + 56);
  v10 = ((1 << v9) + 63) >> 6;
  if (v6 != v5 || v8 >= v5 + 8 * v10 + 56)
  {
    memmove(v8, __src, 8 * v10);
  }

  v11 = *(v5 + 16);
  v37 = v7;
  *(v7 + 16) = v11;
  v12 = 1 << *(v5 + 32);
  v13 = ~(-1 << v12);
  if (v12 >= 64)
  {
    v13 = -1;
  }

  v33 = v5;
  v14 = *(v5 + 56) & v13;
  v34 = (v12 + 63) >> 6;
  v15 = 0;
  v16 = v31;
  v17 = v30;
  v18 = v29;
  while (1)
  {
    if (v14)
    {
      _BitScanForward64(&v19, v14);
      v14 &= v14 - 1;
      v32 = v15;
      v20 = v19 | (v15 << 6);
      v21 = v33;
      goto LABEL_25;
    }

    v22 = v15 + 1;
    v21 = v33;
    if (__OFADD__(1, v15))
    {
      BUG();
    }

    if (v22 >= v34)
    {
      goto LABEL_26;
    }

    v23 = *(__src + v22);
    if (!v23)
    {
      break;
    }

    v24 = v15 + 1;
LABEL_24:
    _BitScanForward64(&v26, v23);
    v14 = v23 & (v23 - 1);
    v20 = v26 | (v24 << 6);
    v32 = v24;
LABEL_25:
    v27 = *(v16 + 72) * v20;
    (*(v16 + 16))(v17, v27 + *(v21 + 48), v18);
    (*(v16 + 32))(*(v37 + 48) + v27, v17, v18);
    v15 = v32;
  }

  v24 = v15 + 2;
  if (v15 + 2 >= v34)
  {
    goto LABEL_26;
  }

  v23 = *(__src + v22 + 1);
  if (v23)
  {
    goto LABEL_24;
  }

  v24 = v15 + 3;
  if (v15 + 3 >= v34)
  {
    goto LABEL_26;
  }

  v23 = *(__src + v22 + 2);
  if (v23)
  {
    goto LABEL_24;
  }

  v24 = v15 + 4;
  if (v15 + 4 >= v34)
  {
    goto LABEL_26;
  }

  v23 = *(__src + v22 + 3);
  if (v23)
  {
    goto LABEL_24;
  }

  v25 = v15 + 12;
  while (v25 - 7 < v34)
  {
    v23 = *(v33 + 8 * v25++);
    if (v23)
    {
      v24 = v25 - 8;
      goto LABEL_24;
    }
  }

LABEL_26:

  v1 = v36;
  v7 = v37;
LABEL_28:
  *v1 = v7;
  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 24);
  if (v4 <= a1)
  {
    v4 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<String>);
  v5 = static _SetStorage.resize(original:capacity:move:)(v3, v4, 0);
  if (!*(v3 + 16))
  {

    goto LABEL_36;
  }

  v40 = v1;
  v6 = 1 << *(v3 + 32);
  v7 = ~(-1 << v6);
  if (v6 >= 64)
  {
    v7 = -1;
  }

  v8 = *(v3 + 56) & v7;
  v38 = (v6 + 63) >> 6;
  swift_retain_n(v3, 2);
  v9 = 0;
  v37 = v3;
  while (1)
  {
    if (v8)
    {
      _BitScanForward64(&v10, v8);
      v8 &= v8 - 1;
      v39 = v9;
      v11 = v10 | (v9 << 6);
      goto LABEL_16;
    }

    v12 = __OFADD__(1, v9);
    v13 = v9 + 1;
    if (v12)
    {
      BUG();
    }

    if (v13 >= v38)
    {
      break;
    }

    i = *(v3 + 8 * v13 + 56);
    if (i)
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 + 1;
      if (v13 + 1 >= v38)
      {
        break;
      }

      i = *(v3 + 8 * v13 + 64);
      if (!i)
      {
        v15 = v13 + 2;
        if (v13 + 2 >= v38)
        {
          break;
        }

        for (i = *(v3 + 8 * v13 + 72); !i; i = *(v3 + 8 * v15 + 56))
        {
          v12 = __OFADD__(1, v15++);
          if (v12)
          {
            BUG();
          }

          if (v15 >= v38)
          {
            goto LABEL_34;
          }
        }
      }
    }

    _BitScanForward64(&v16, i);
    v8 = i & (i - 1);
    v11 = v16 | (v15 << 6);
    v39 = v15;
LABEL_16:
    v17 = *(v3 + 48);
    v18 = 16 * v11;
    v19 = *(v17 + v18);
    v20 = *(v17 + v18 + 8);
    Hasher.init(_seed:)(*(v5 + 40));

    v36 = v19;
    String.hash(into:)(v35, v19);
    v21 = Hasher._finalize()() & ~(-1 << *(v5 + 32));
    v22 = v21 >> 6;
    v23 = ~*(v5 + 8 * (v21 >> 6) + 56) >> v21 << v21;
    if (v23)
    {
      _BitScanForward64(&v24, v23);
      v25 = v24 | v21 & 0xFFFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = (63 - (-1 << *(v5 + 32))) >> 6;
      v27 = 0;
      do
      {
        v28 = v22 + 1;
        if (v22 + 1 == v26 && (v27 & 1) != 0)
        {
          BUG();
        }

        v22 = 0;
        if (v28 != v26)
        {
          v22 = v28;
        }

        v27 |= v28 == v26;
        v29 = *(v5 + 8 * v22 + 56);
      }

      while (v29 == -1);
      v30 = ~v29;
      v31 = 64;
      if (v30)
      {
        _BitScanForward64(&v31, v30);
      }

      v25 = v31 + (v22 << 6);
    }

    *(v5 + 8 * (v25 >> 6) + 56) |= 1 << v25;
    v32 = *(v5 + 48);
    v33 = 16 * v25;
    *(v32 + v33) = v36;
    *(v32 + v33 + 8) = v20;
    ++*(v5 + 16);
    v3 = v37;
    v9 = v39;
  }

LABEL_34:
  result = v3;
  v2 = v40;
LABEL_36:
  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 24);
  if (v4 <= a1)
  {
    v4 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<Int?>);
  v5 = v3;
  v6 = static _SetStorage.resize(original:capacity:move:)(v3, v4, 0);
  if (!*(v5 + 16))
  {

    goto LABEL_41;
  }

  v7 = 1 << *(v5 + 32);
  v8 = ~(-1 << v7);
  if (v7 >= 64)
  {
    v8 = -1;
  }

  v9 = *(v5 + 56) & v8;
  v39 = (v7 + 63) >> 6;
  v10 = 0;
  v37 = v5;
  while (1)
  {
    if (v9)
    {
      _BitScanForward64(&v11, v9);
      v9 &= v9 - 1;
      v38 = v10;
      v12 = v11 | (v10 << 6);
      goto LABEL_18;
    }

    v13 = __OFADD__(1, v10);
    v14 = v10 + 1;
    if (v13)
    {
      BUG();
    }

    if (v14 >= v39)
    {
      break;
    }

    i = *(v5 + 8 * v14 + 56);
    if (i)
    {
      v16 = v14;
    }

    else
    {
      v16 = v14 + 1;
      if (v14 + 1 >= v39)
      {
        break;
      }

      i = *(v5 + 8 * v14 + 64);
      if (!i)
      {
        v16 = v14 + 2;
        if (v14 + 2 >= v39)
        {
          break;
        }

        i = *(v5 + 8 * v14 + 72);
        if (!i)
        {
          v16 = v14 + 3;
          if (v14 + 3 >= v39)
          {
            break;
          }

          for (i = *(v5 + 8 * v14 + 80); !i; i = *(v5 + 8 * v16 + 56))
          {
            v13 = __OFADD__(1, v16++);
            if (v13)
            {
              BUG();
            }

            if (v16 >= v39)
            {
              goto LABEL_39;
            }
          }
        }
      }
    }

    _BitScanForward64(&v17, i);
    v9 = i & (i - 1);
    v12 = v17 | (v16 << 6);
    v38 = v16;
LABEL_18:
    v18 = *(v5 + 48);
    v19 = 16 * v12;
    v20 = *(v18 + v19);
    v21 = *(v18 + v19 + 8);
    Hasher.init(_seed:)(*(v6 + 40));
    v40 = v21;
    if (v21 == 1)
    {
      v22 = v20;
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      v22 = v20;
      Hasher._combine(_:)(v20);
    }

    v23 = Hasher._finalize()() & ~(-1 << *(v6 + 32));
    v24 = v23 >> 6;
    v25 = ~*(v6 + 8 * (v23 >> 6) + 56) >> v23 << v23;
    if (v25)
    {
      _BitScanForward64(&v26, v25);
      v27 = v26 | v23 & 0xFFFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = (63 - (-1 << *(v6 + 32))) >> 6;
      v29 = 0;
      do
      {
        v30 = v24 + 1;
        if (v24 + 1 == v28 && (v29 & 1) != 0)
        {
          BUG();
        }

        v24 = 0;
        if (v30 != v28)
        {
          v24 = v30;
        }

        v29 |= v30 == v28;
        v31 = *(v6 + 8 * v24 + 56);
      }

      while (v31 == -1);
      v32 = ~v31;
      v33 = 64;
      if (v32)
      {
        _BitScanForward64(&v33, v32);
      }

      v27 = v33 + (v24 << 6);
    }

    *(v6 + 8 * (v27 >> 6) + 56) |= 1 << v27;
    v34 = *(v6 + 48);
    v35 = 16 * v27;
    *(v34 + v35) = v22;
    *(v34 + v35 + 8) = v40;
    ++*(v6 + 16);
    v5 = v37;
    v10 = v38;
  }

LABEL_39:

  v2 = v1;
LABEL_41:
  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 24);
  if (v4 <= a1)
  {
    v4 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<String?>);
  v21 = static _SetStorage.resize(original:capacity:move:)(v3, v4, 0);
  if (!*(v3 + 16))
  {
    goto LABEL_25;
  }

  v20 = v1;
  v5 = 1 << *(v3 + 32);
  v6 = ~(-1 << v5);
  if (v5 >= 64)
  {
    v6 = -1;
  }

  v7 = *(v3 + 56) & v6;
  v22 = (v5 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    if (v7)
    {
      _BitScanForward64(&v9, v7);
      v7 &= v7 - 1;
      v10 = v9 | (v8 << 6);
      goto LABEL_23;
    }

    v11 = v8 + 1;
    if (__OFADD__(1, v8))
    {
      BUG();
    }

    if (v11 >= v22)
    {
      goto LABEL_24;
    }

    v12 = *(v3 + 8 * v11 + 56);
    if (!v12)
    {
      break;
    }

    v13 = v8 + 1;
LABEL_22:
    _BitScanForward64(&v14, v12);
    v7 = v12 & (v12 - 1);
    v10 = v14 | (v13 << 6);
    v8 = v13;
LABEL_23:
    v15 = *(v3 + 48);
    v16 = 16 * v10;
    v17 = *(v15 + v16);
    v18 = *(v15 + v16 + 8);

    specialized _NativeSet._unsafeInsertNew(_:)(v17, v18, v21);
  }

  v13 = v8 + 2;
  if (v8 + 2 >= v22)
  {
    goto LABEL_24;
  }

  v12 = *(v3 + 8 * v11 + 64);
  if (v12)
  {
    goto LABEL_22;
  }

  v13 = v8 + 3;
  if (v8 + 3 >= v22)
  {
    goto LABEL_24;
  }

  v12 = *(v3 + 8 * v11 + 72);
  if (v12)
  {
    goto LABEL_22;
  }

  v13 = v8 + 4;
  if (v8 + 4 >= v22)
  {
    goto LABEL_24;
  }

  v12 = *(v3 + 8 * v11 + 80);
  if (v12)
  {
    goto LABEL_22;
  }

  while (v8 + 5 < v22)
  {
    v12 = *(v3 + 8 * v8++ + 96);
    if (v12)
    {
      v13 = v8 + 4;
      goto LABEL_22;
    }
  }

LABEL_24:

  v2 = v20;
LABEL_25:

  result = v21;
  *v2 = v21;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 24);
  if (v4 <= a1)
  {
    v4 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<Int>);
  v5 = static _SetStorage.resize(original:capacity:move:)(v3, v4, 0);
  if (!*(v3 + 16))
  {

    goto LABEL_38;
  }

  v31 = v1;
  v6 = 1 << *(v3 + 32);
  v7 = ~(-1 << v6);
  if (v6 >= 64)
  {
    v7 = -1;
  }

  v8 = *(v3 + 56) & v7;
  v30 = (v6 + 63) >> 6;
  v9 = 0;
  while (1)
  {
    if (v8)
    {
      _BitScanForward64(&v10, v8);
      v8 &= v8 - 1;
      v11 = v10 | (v9 << 6);
      goto LABEL_18;
    }

    v12 = __OFADD__(1, v9);
    v13 = v9 + 1;
    if (v12)
    {
      BUG();
    }

    if (v13 >= v30)
    {
      break;
    }

    i = *(v3 + 8 * v13 + 56);
    if (i)
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 + 1;
      if (v13 + 1 >= v30)
      {
        break;
      }

      i = *(v3 + 8 * v13 + 64);
      if (!i)
      {
        v15 = v13 + 2;
        if (v13 + 2 >= v30)
        {
          break;
        }

        i = *(v3 + 8 * v13 + 72);
        if (!i)
        {
          v15 = v13 + 3;
          if (v13 + 3 >= v30)
          {
            break;
          }

          for (i = *(v3 + 8 * v13 + 80); !i; i = *(v3 + 8 * v15 + 56))
          {
            v12 = __OFADD__(1, v15++);
            if (v12)
            {
              BUG();
            }

            if (v15 >= v30)
            {
              goto LABEL_36;
            }
          }
        }
      }
    }

    _BitScanForward64(&v16, i);
    v8 = i & (i - 1);
    v11 = v16 | (v15 << 6);
    v9 = v15;
LABEL_18:
    v17 = *(*(v3 + 48) + 8 * v11);
    v18 = static Hasher._hash(seed:_:)(*(v5 + 40)) & ~(-1 << *(v5 + 32));
    v19 = v18 >> 6;
    v20 = ~*(v5 + 8 * (v18 >> 6) + 56) >> v18 << v18;
    if (v20)
    {
      _BitScanForward64(&v21, v20);
      v22 = v21 | v18 & 0xFFFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = (63 - (-1 << *(v5 + 32))) >> 6;
      v24 = 0;
      do
      {
        v25 = v19 + 1;
        if (v19 + 1 == v23 && (v24 & 1) != 0)
        {
          BUG();
        }

        v19 = 0;
        if (v25 != v23)
        {
          v19 = v25;
        }

        v24 |= v25 == v23;
        v26 = *(v5 + 8 * v19 + 56);
      }

      while (v26 == -1);
      v27 = ~v26;
      v28 = 64;
      if (v27)
      {
        _BitScanForward64(&v28, v27);
      }

      v22 = v28 + (v19 << 6);
    }

    *(v5 + 8 * (v22 >> 6) + 56) |= 1 << v22;
    *(*(v5 + 48) + 8 * v22) = v17;
    ++*(v5 + 16);
  }

LABEL_36:

  v2 = v31;
LABEL_38:
  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = a1;
  v38 = type metadata accessor for URL(0);
  v39 = *(v38 - 8);
  v4 = *(v39 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v40 = &v37;
  v7 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v3 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<URL>);
  v8 = v7;
  v9 = static _SetStorage.resize(original:capacity:move:)(v7, v3, 0);
  if (!*(v7 + 16))
  {

    goto LABEL_38;
  }

  v45 = v2;
  v10 = 1 << *(v7 + 32);
  v11 = ~(-1 << v10);
  if (v10 >= 64)
  {
    v11 = -1;
  }

  v12 = *(v7 + 56) & v11;
  v44 = (v10 + 63) >> 6;

  v13 = 0;
  v43 = v7;
  while (1)
  {
    if (v12)
    {
      _BitScanForward64(&v14, v12);
      v42 = (v12 - 1) & v12;
      v41 = v13;
      v15 = v14 | (v13 << 6);
      goto LABEL_18;
    }

    v16 = __OFADD__(1, v13);
    v17 = v13 + 1;
    if (v16)
    {
      BUG();
    }

    if (v17 >= v44)
    {
      break;
    }

    i = *(v8 + 8 * v17 + 56);
    if (i)
    {
      v19 = v17;
    }

    else
    {
      v19 = v17 + 1;
      if (v17 + 1 >= v44)
      {
        break;
      }

      i = *(v8 + 8 * v17 + 64);
      if (!i)
      {
        v19 = v17 + 2;
        if (v17 + 2 >= v44)
        {
          break;
        }

        i = *(v8 + 8 * v17 + 72);
        if (!i)
        {
          v19 = v17 + 3;
          if (v17 + 3 >= v44)
          {
            break;
          }

          for (i = *(v8 + 8 * v17 + 80); !i; i = *(v8 + 8 * v19 + 56))
          {
            v16 = __OFADD__(1, v19++);
            if (v16)
            {
              BUG();
            }

            if (v19 >= v44)
            {
              goto LABEL_36;
            }
          }
        }
      }
    }

    _BitScanForward64(&v20, i);
    v42 = i & (i - 1);
    v15 = v20 | (v19 << 6);
    v41 = v19;
LABEL_18:
    v21 = *(v39 + 72);
    v22 = v38;
    (*(v39 + 16))(v40, *(v8 + 48) + v21 * v15, v38);
    v23 = *(v9 + 40);
    v24 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v25 = dispatch thunk of Hashable._rawHashValue(seed:)(v23, v22, v24) & ~(-1 << *(v9 + 32));
    v26 = v25 >> 6;
    v27 = ~*(v9 + 8 * (v25 >> 6) + 56) >> v25 << v25;
    if (v27)
    {
      _BitScanForward64(&v28, v27);
      v29 = v28 | v25 & 0xFFFFFFFFFFFFFFC0;
      v8 = v43;
    }

    else
    {
      v30 = (63 - (-1 << *(v9 + 32))) >> 6;
      v31 = 0;
      v8 = v43;
      do
      {
        v32 = v26 + 1;
        if (v26 + 1 == v30 && (v31 & 1) != 0)
        {
          BUG();
        }

        v26 = 0;
        if (v32 != v30)
        {
          v26 = v32;
        }

        v31 |= v32 == v30;
        v33 = *(v9 + 8 * v26 + 56);
      }

      while (v33 == -1);
      v34 = ~v33;
      v35 = 64;
      if (v34)
      {
        _BitScanForward64(&v35, v34);
      }

      v29 = v35 + (v26 << 6);
    }

    *(v9 + 8 * (v29 >> 6) + 56) |= 1 << v29;
    (*(v39 + 32))(*(v9 + 48) + v29 * v21, v40, v38);
    ++*(v9 + 16);
    v13 = v41;
    v12 = v42;
  }

LABEL_36:
  result = v8;
  v2 = v45;
LABEL_38:
  *v2 = v9;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 24);
  if (v4 <= a1)
  {
    v4 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<MLRecommender.Identifier>);
  v5 = static _SetStorage.resize(original:capacity:move:)(v3, v4, 0);
  if (!*(v3 + 16))
  {

    goto LABEL_41;
  }

  v45 = v1;
  v6 = 1 << *(v3 + 32);
  v7 = ~(-1 << v6);
  if (v6 >= 64)
  {
    v7 = -1;
  }

  v8 = *(v3 + 56) & v7;
  v44 = (v6 + 63) >> 6;

  v9 = 0;
  v42 = v3;
  while (1)
  {
    if (v8)
    {
      _BitScanForward64(&v10, v8);
      v11 = (v8 - 1) & v8;
      v43 = v9;
      v12 = v10 | (v9 << 6);
      goto LABEL_18;
    }

    v13 = __OFADD__(1, v9);
    v14 = v9 + 1;
    if (v13)
    {
      BUG();
    }

    if (v14 >= v44)
    {
      break;
    }

    i = *(v3 + 8 * v14 + 56);
    if (i)
    {
      v16 = v14;
    }

    else
    {
      v16 = v14 + 1;
      if (v14 + 1 >= v44)
      {
        break;
      }

      i = *(v3 + 8 * v14 + 64);
      if (!i)
      {
        v16 = v14 + 2;
        if (v14 + 2 >= v44)
        {
          break;
        }

        i = *(v3 + 8 * v14 + 72);
        if (!i)
        {
          v16 = v14 + 3;
          if (v14 + 3 >= v44)
          {
            break;
          }

          for (i = *(v3 + 8 * v14 + 80); !i; i = *(v3 + 8 * v16 + 56))
          {
            v13 = __OFADD__(1, v16++);
            if (v13)
            {
              BUG();
            }

            if (v16 >= v44)
            {
              goto LABEL_39;
            }
          }
        }
      }
    }

    _BitScanForward64(&v17, i);
    v11 = i & (i - 1);
    v12 = v17 | (v16 << 6);
    v43 = v16;
LABEL_18:
    v41 = v11;
    v18 = *(v3 + 48);
    v19 = 24 * v12;
    v20 = *(v18 + v19);
    v21 = *(v18 + v19 + 8);
    v22 = *(v18 + v19 + 16);
    Hasher.init(_seed:)(*(v5 + 40));
    v46 = v22;
    if (v22)
    {
      v23 = v21;
      Hasher._combine(_:)(1uLL);
      v24 = v20;
      Hasher._combine(_:)(v20);
    }

    else
    {
      Hasher._combine(_:)(0);

      v25 = v21;
      v24 = v20;
      v23 = v25;
      String.hash(into:)(v40, v20);
    }

    v26 = Hasher._finalize()() & ~(-1 << *(v5 + 32));
    v27 = v26 >> 6;
    v28 = ~*(v5 + 8 * (v26 >> 6) + 56) >> v26 << v26;
    if (v28)
    {
      _BitScanForward64(&v29, v28);
      v30 = v29 | v26 & 0xFFFFFFFFFFFFFFC0;
    }

    else
    {
      v31 = (63 - (-1 << *(v5 + 32))) >> 6;
      v32 = 0;
      do
      {
        v33 = v27 + 1;
        if (v27 + 1 == v31 && (v32 & 1) != 0)
        {
          BUG();
        }

        v27 = 0;
        if (v33 != v31)
        {
          v27 = v33;
        }

        v32 |= v33 == v31;
        v34 = *(v5 + 8 * v27 + 56);
      }

      while (v34 == -1);
      v35 = ~v34;
      v36 = 64;
      if (v35)
      {
        _BitScanForward64(&v36, v35);
      }

      v30 = v36 + (v27 << 6);
    }

    v37 = 24 * v30;
    *(v5 + 8 * (v30 >> 6) + 56) |= 1 << v30;
    v38 = *(v5 + 48);
    *(v38 + v37) = v24;
    *(v38 + v37 + 8) = v23;
    *(v38 + v37 + 16) = v46;
    ++*(v5 + 16);
    v3 = v42;
    v9 = v43;
    v8 = v41;
  }

LABEL_39:
  result = v3;
  v2 = v45;
LABEL_41:
  *v2 = v5;
  return result;
}

uint64_t *specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v36 = v1;
  v2 = *v1;
  v3 = *(*v1 + 24);
  if (v3 <= a1)
  {
    v3 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<NSURLResourceKey>);
  v4 = static _SetStorage.resize(original:capacity:move:)(v2, v3, 0);
  if (!*(v2 + 16))
  {

    goto LABEL_38;
  }

  v5 = 1 << *(v2 + 32);
  v6 = ~(-1 << v5);
  if (v5 >= 64)
  {
    v6 = -1;
  }

  v7 = *(v2 + 56) & v6;
  v40 = (v5 + 63) >> 6;

  v8 = 0;
  v39 = v2;
  while (1)
  {
    if (v7)
    {
      _BitScanForward64(&v9, v7);
      v38 = (v7 - 1) & v7;
      v37 = v8;
      v10 = v9 | (v8 << 6);
      goto LABEL_18;
    }

    v11 = __OFADD__(1, v8);
    v12 = v8 + 1;
    if (v11)
    {
      BUG();
    }

    if (v12 >= v40)
    {
      break;
    }

    i = *(v2 + 8 * v12 + 56);
    if (i)
    {
      v14 = v12;
    }

    else
    {
      v14 = v12 + 1;
      if (v12 + 1 >= v40)
      {
        break;
      }

      i = *(v2 + 8 * v12 + 64);
      if (!i)
      {
        v14 = v12 + 2;
        if (v12 + 2 >= v40)
        {
          break;
        }

        i = *(v2 + 8 * v12 + 72);
        if (!i)
        {
          v14 = v12 + 3;
          if (v12 + 3 >= v40)
          {
            break;
          }

          for (i = *(v2 + 8 * v12 + 80); !i; i = *(v2 + 8 * v14 + 56))
          {
            v11 = __OFADD__(1, v14++);
            if (v11)
            {
              BUG();
            }

            if (v14 >= v40)
            {
              goto LABEL_36;
            }
          }
        }
      }
    }

    _BitScanForward64(&v15, i);
    v38 = i & (i - 1);
    v10 = v15 | (v14 << 6);
    v37 = v14;
LABEL_18:
    v16 = *(*(v2 + 48) + 8 * v10);
    v17 = *(v4 + 40);
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)(v16);
    v20 = v19;
    Hasher.init(_seed:)(v17);
    v21 = v16;
    String.hash(into:)(v35, v18);
    v22 = Hasher._finalize()();
    v20;
    v23 = v22 & ~(-1 << *(v4 + 32));
    v24 = v23 >> 6;
    v25 = ~*(v4 + 8 * (v23 >> 6) + 56) >> v23 << v23;
    if (v25)
    {
      _BitScanForward64(&v26, v25);
      v27 = v26 | v23 & 0xFFFFFFFFFFFFFFC0;
      v2 = v39;
    }

    else
    {
      v28 = (63 - (-1 << *(v4 + 32))) >> 6;
      v29 = 0;
      v2 = v39;
      do
      {
        v30 = v24 + 1;
        if (v24 + 1 == v28 && (v29 & 1) != 0)
        {
          BUG();
        }

        v24 = 0;
        if (v30 != v28)
        {
          v24 = v30;
        }

        v29 |= v30 == v28;
        v31 = *(v4 + 8 * v24 + 56);
      }

      while (v31 == -1);
      v32 = ~v31;
      v33 = 64;
      if (v32)
      {
        _BitScanForward64(&v33, v32);
      }

      v27 = v33 + (v24 << 6);
    }

    *(v4 + 8 * (v27 >> 6) + 56) |= 1 << v27;
    *(*(v4 + 48) + 8 * v27) = v21;
    ++*(v4 + 16);
    v8 = v37;
    v7 = v38;
  }

LABEL_36:
  v2;
LABEL_38:
  result = v36;
  *v36 = v4;
  return result;
}

void (*specialized DenseMatrix.subscript.modify(uint64_t ***a1, unint64_t a2, unint64_t a3))(uint64_t a1)
{
  v4 = malloc(0x60uLL);
  *a1 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Float>);
  if (DenseMatrix.layout.getter(v5))
  {
    v6 = DenseMatrix.rowCount.getter(v5);
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

    v15 = DenseMatrix.subscript.modifyspecialized ;
    v16 = 11;
    v14 = 10;
  }

  else
  {
    v10 = DenseMatrix.columnCount.getter(v5);
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

    v15 = DenseMatrix.subscript.modifyspecialized ;
    v16 = 9;
    v14 = 8;
  }

  v4[v14] = DenseMatrix.storage.modify(v4, v5);
  v4[v16] = specialized ContiguousArray.subscript.modify(v4 + 4, v9);
  return v15;
}

{
  v4 = malloc(0x60uLL);
  *a1 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Double>);
  if (DenseMatrix.layout.getter(v5))
  {
    v6 = DenseMatrix.rowCount.getter(v5);
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

    v15 = DenseMatrix.subscript.modifyspecialized ;
    v16 = 11;
    v14 = 10;
  }

  else
  {
    v10 = DenseMatrix.columnCount.getter(v5);
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

    v15 = DenseMatrix.subscript.modifyspecialized ;
    v16 = 9;
    v14 = 8;
  }

  v4[v14] = DenseMatrix.storage.modify(v4, v5);
  v4[v16] = specialized ContiguousArray.subscript.modify(v4 + 4, v9);
  return v15;
}