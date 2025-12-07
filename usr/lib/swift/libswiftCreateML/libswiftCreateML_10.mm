void DenseMatrix.subscript.modifyspecialized (uint64_t a1)
{
  DenseMatrix.subscript.modifyspecialized (a1);
}

{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))(*a1 + 32, 0);
  v2(v1, 0);
  free(v1);
}

{
  DenseMatrix.subscript.modifyspecialized (a1);
}

{
  v1 = *a1;
  v2 = *(*a1 + 80);
  (*(*a1 + 88))(*a1 + 32, 0);
  v2(v1, 0);
  free(v1);
}

{
  DenseMatrix.subscript.modifyspecialized (a1);
}

{
  DenseMatrix.subscript.modifyspecialized (a1);
}

uint64_t (*specialized ContiguousArray.subscript.modify(uint64_t **a1, unint64_t a2))()
{
  *a1 = v2;
  v3 = *v2;
  if (!swift_isUniquelyReferenced_nonNull_native(*v2))
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  a1[1] = v3;
  if ((a2 & 0x8000000000000000) != 0)
  {
    BUG();
  }

  if (v3[2] <= a2)
  {
    BUG();
  }

  return ContiguousArray.subscript.modifyspecialized ;
}

{
  *a1 = v2;
  v3 = *v2;
  if (!swift_isUniquelyReferenced_nonNull_native(*v2))
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  a1[1] = v3;
  if ((a2 & 0x8000000000000000) != 0)
  {
    BUG();
  }

  if (v3[2] <= a2)
  {
    BUG();
  }

  return ContiguousArray.subscript.modifyspecialized ;
}

_OWORD *outlined init with take of Any(__int128 *a1, _OWORD *a2)
{
  result = a2;
  v3 = *a1;
  a2[1] = a1[1];
  *a2 = v3;
  return result;
}

void *ContiguousArray.subscript.modifyspecialized (void *a1)
{
  result = *a1;
  **a1 = a1[1];
  return result;
}

{
  return ContiguousArray.subscript.modifyspecialized (a1);
}

double specialized BinaryFloatingPoint.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, &associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v64 = *(AssociatedTypeWitness - 8);
  v4 = *(v64 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v66 = &v62;
  v68 = swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, &associated type descriptor for BinaryFloatingPoint.RawExponent);
  v67 = *(v68 - 8);
  v7 = *(v67 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v72 = &v62;
  v73 = *(a2 - 8);
  v10 = *(v73 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v74 = &v62;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v71 = &v62;
  v15 = alloca(v10);
  v16 = alloca(v10);
  v17 = dispatch thunk of static BinaryFloatingPoint.exponentBitCount.getter(a2, a3);
  v69 = a3;
  v18 = dispatch thunk of static BinaryFloatingPoint.significandBitCount.getter(a2, a3);
  if (v17 != 15)
  {
    if (v17 == 11)
    {
      if (v18 == 52)
      {
        v23 = v71;
        v24 = v70;
        v25 = v73;
        (*(v73 + 16))(v71, v70, a2);
        if (swift_dynamicCast(&v63, v23, a2, &type metadata for Double, 6))
        {
          (*(v25 + 8))(v24, a2);
          return *&v63;
        }

        else
        {
          v32 = v69;
          LOBYTE(v74) = dispatch thunk of FloatingPoint.sign.getter(a2, *(v69 + 16));
          dispatch thunk of BinaryFloatingPoint.exponentBitPattern.getter(a2, v32);
          v33 = v68;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v32, a2, v68, &protocol requirements base descriptor for BinaryFloatingPoint, &associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
          v35 = dispatch thunk of BinaryInteger._lowWord.getter(v33, *(AssociatedConformanceWitness + 8));
          (*(v67 + 8))(v72, v33);
          v36 = v70;
          v37 = v66;
          dispatch thunk of BinaryFloatingPoint.significandBitPattern.getter(a2, v32);
          (*(v73 + 8))(v36, a2);
          v38 = v32;
          v39 = AssociatedTypeWitness;
          v40 = swift_getAssociatedConformanceWitness(v38, a2, AssociatedTypeWitness, &protocol requirements base descriptor for BinaryFloatingPoint, &associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
          v41 = dispatch thunk of BinaryInteger._lowWord.getter(v39, *(v40 + 8));
          (*(v64 + 8))(v37, v39);
          *&result = v41 & 0xFFFFFFFFFFFFFLL | (v74 << 63) | ((v35 & 0x7FF) << 52);
        }

        return result;
      }
    }

    else if (v17 == 8 && v18 == 23)
    {
      v19 = v74;
      v20 = v70;
      v21 = v73;
      (*(v73 + 16))(v74, v70, a2);
      if (swift_dynamicCast(&v63, v19, a2, &type metadata for Float, 6))
      {
        (*(v21 + 8))(v20, a2);
        return *&v63;
      }

      else
      {
        v52 = v69;
        LOBYTE(v74) = dispatch thunk of FloatingPoint.sign.getter(a2, *(v69 + 16));
        dispatch thunk of BinaryFloatingPoint.exponentBitPattern.getter(a2, v52);
        v53 = v68;
        v54 = swift_getAssociatedConformanceWitness(v52, a2, v68, &protocol requirements base descriptor for BinaryFloatingPoint, &associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
        v55 = v72;
        v71 = dispatch thunk of BinaryInteger._lowWord.getter(v53, *(v54 + 8));
        (*(v67 + 8))(v55, v53);
        v56 = v20;
        v57 = v66;
        dispatch thunk of BinaryFloatingPoint.significandBitPattern.getter(a2, v52);
        (*(v73 + 8))(v56, a2);
        v58 = v52;
        v59 = AssociatedTypeWitness;
        v60 = swift_getAssociatedConformanceWitness(v58, a2, AssociatedTypeWitness, &protocol requirements base descriptor for BinaryFloatingPoint, &associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
        v61 = dispatch thunk of BinaryInteger._lowWord.getter(v59, *(v60 + 8));
        (*(v64 + 8))(v57, v59);
        return Float.init(sign:exponentBitPattern:significandBitPattern:)(v74 & 1, v71, v61);
      }
    }

LABEL_13:
    v30 = lazy protocol witness table accessor for type Double and conformance Double();
    v31 = v70;
    static BinaryFloatingPoint._convert<A>(from:)(&v63, v70, &type metadata for Double, a2, v30, v69);
    (*(v73 + 8))(v31, a2);
    return *&v63;
  }

  if (v18 != 63)
  {
    goto LABEL_13;
  }

  v27 = v70;
  v28 = v73;
  (*(v73 + 16))(&v62, v70, a2);
  if (swift_dynamicCast(&v63, &v62, a2, &type metadata for Float80, 6))
  {
    (*(v28 + 8))(v27, a2);
    return v63;
  }

  else
  {
    v42 = v69;
    LOBYTE(v74) = dispatch thunk of FloatingPoint.sign.getter(a2, *(v69 + 16));
    dispatch thunk of BinaryFloatingPoint.exponentBitPattern.getter(a2, v42);
    v43 = v68;
    v44 = swift_getAssociatedConformanceWitness(v42, a2, v68, &protocol requirements base descriptor for BinaryFloatingPoint, &associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
    v45 = v72;
    v71 = dispatch thunk of BinaryInteger._lowWord.getter(v43, *(v44 + 8));
    (*(v67 + 8))(v45, v43);
    v46 = v27;
    v47 = v66;
    dispatch thunk of BinaryFloatingPoint.significandBitPattern.getter(a2, v42);
    (*(v73 + 8))(v46, a2);
    v48 = v42;
    v49 = AssociatedTypeWitness;
    v50 = swift_getAssociatedConformanceWitness(v48, a2, AssociatedTypeWitness, &protocol requirements base descriptor for BinaryFloatingPoint, &associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
    v51 = dispatch thunk of BinaryInteger._lowWord.getter(v49, *(v50 + 8));
    (*(v64 + 8))(v47, v49);
    return Float80.init(sign:exponentBitPattern:significandBitPattern:)(v74 & 1, v71, v51);
  }
}

float specialized BinaryFloatingPoint.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, &associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v64 = *(AssociatedTypeWitness - 8);
  v4 = *(v64 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v66 = &v62;
  v68 = swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, &associated type descriptor for BinaryFloatingPoint.RawExponent);
  v67 = *(v68 - 8);
  v7 = *(v67 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v72 = &v62;
  v73 = *(a2 - 8);
  v10 = *(v73 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v74 = &v62;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v71 = &v62;
  v15 = alloca(v10);
  v16 = alloca(v10);
  v17 = dispatch thunk of static BinaryFloatingPoint.exponentBitCount.getter(a2, a3);
  v69 = a3;
  v18 = dispatch thunk of static BinaryFloatingPoint.significandBitCount.getter(a2, a3);
  if (v17 == 15)
  {
    if (v18 != 63)
    {
      goto LABEL_13;
    }

    v27 = v70;
    v28 = v73;
    (*(v73 + 16))(&v62, v70, a2);
    if (swift_dynamicCast(&v62, &v62, a2, &type metadata for Float80, 6))
    {
      (*(v28 + 8))(v27, a2);
      return v62;
    }

    else
    {
      v42 = v69;
      LOBYTE(v74) = dispatch thunk of FloatingPoint.sign.getter(a2, *(v69 + 16));
      dispatch thunk of BinaryFloatingPoint.exponentBitPattern.getter(a2, v42);
      v43 = v68;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v42, a2, v68, &protocol requirements base descriptor for BinaryFloatingPoint, &associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
      v45 = v72;
      v71 = dispatch thunk of BinaryInteger._lowWord.getter(v43, *(AssociatedConformanceWitness + 8));
      (*(v67 + 8))(v45, v43);
      v46 = v27;
      v47 = v66;
      dispatch thunk of BinaryFloatingPoint.significandBitPattern.getter(a2, v42);
      (*(v73 + 8))(v46, a2);
      v48 = v42;
      v49 = AssociatedTypeWitness;
      v50 = swift_getAssociatedConformanceWitness(v48, a2, AssociatedTypeWitness, &protocol requirements base descriptor for BinaryFloatingPoint, &associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
      v51 = dispatch thunk of BinaryInteger._lowWord.getter(v49, *(v50 + 8));
      (*(v64 + 8))(v47, v49);
      return Float80.init(sign:exponentBitPattern:significandBitPattern:)(v74 & 1, v71, v51);
    }
  }

  else
  {
    if (v17 != 11)
    {
      if (v17 == 8 && v18 == 23)
      {
        v19 = v74;
        v20 = v70;
        v21 = v73;
        (*(v73 + 16))(v74, v70, a2);
        if (swift_dynamicCast(&v62, v19, a2, &type metadata for Float, 6))
        {
          (*(v21 + 8))(v20, a2);
          return *&v62;
        }

        else
        {
          v52 = v69;
          LOBYTE(v74) = dispatch thunk of FloatingPoint.sign.getter(a2, *(v69 + 16));
          dispatch thunk of BinaryFloatingPoint.exponentBitPattern.getter(a2, v52);
          v53 = v68;
          v54 = swift_getAssociatedConformanceWitness(v52, a2, v68, &protocol requirements base descriptor for BinaryFloatingPoint, &associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
          v55 = v72;
          v71 = dispatch thunk of BinaryInteger._lowWord.getter(v53, *(v54 + 8));
          (*(v67 + 8))(v55, v53);
          v56 = v20;
          v57 = v66;
          dispatch thunk of BinaryFloatingPoint.significandBitPattern.getter(a2, v52);
          (*(v73 + 8))(v56, a2);
          v58 = v52;
          v59 = AssociatedTypeWitness;
          v60 = swift_getAssociatedConformanceWitness(v58, a2, AssociatedTypeWitness, &protocol requirements base descriptor for BinaryFloatingPoint, &associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
          v61 = dispatch thunk of BinaryInteger._lowWord.getter(v59, *(v60 + 8));
          (*(v64 + 8))(v57, v59);
          return Float.init(sign:exponentBitPattern:significandBitPattern:)(v74 & 1, v71, v61);
        }
      }

LABEL_13:
      v30 = lazy protocol witness table accessor for type Float and conformance Float();
      v31 = v70;
      static BinaryFloatingPoint._convert<A>(from:)(&v62, v70, &type metadata for Float, a2, v30, v69);
      (*(v73 + 8))(v31, a2);
      return *&v62;
    }

    if (v18 != 52)
    {
      goto LABEL_13;
    }

    v23 = v71;
    v24 = v70;
    v25 = v73;
    (*(v73 + 16))(v71, v70, a2);
    if (swift_dynamicCast(&v62, v23, a2, &type metadata for Double, 6))
    {
      (*(v25 + 8))(v24, a2);
      return *&v62;
    }

    else
    {
      v32 = v69;
      LOBYTE(v74) = dispatch thunk of FloatingPoint.sign.getter(a2, *(v69 + 16));
      dispatch thunk of BinaryFloatingPoint.exponentBitPattern.getter(a2, v32);
      v33 = v68;
      v34 = swift_getAssociatedConformanceWitness(v32, a2, v68, &protocol requirements base descriptor for BinaryFloatingPoint, &associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
      v35 = dispatch thunk of BinaryInteger._lowWord.getter(v33, *(v34 + 8));
      (*(v67 + 8))(v72, v33);
      v36 = v70;
      v37 = v66;
      dispatch thunk of BinaryFloatingPoint.significandBitPattern.getter(a2, v32);
      (*(v73 + 8))(v36, a2);
      v38 = v32;
      v39 = AssociatedTypeWitness;
      v40 = swift_getAssociatedConformanceWitness(v38, a2, AssociatedTypeWitness, &protocol requirements base descriptor for BinaryFloatingPoint, &associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
      v41 = dispatch thunk of BinaryInteger._lowWord.getter(v39, *(v40 + 8));
      (*(v64 + 8))(v37, v39);
      *&v26 = v41 & 0xFFFFFFFFFFFFFLL | (v74 << 63) | ((v35 & 0x7FF) << 52);
    }

    return v26;
  }
}

uint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for UInt32, &type metadata for UInt32);
    lazy protocol witness table cache variable for type UInt32 and conformance UInt32 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Double and conformance Double()
{
  result = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Double, &type metadata for Double);
    lazy protocol witness table cache variable for type Double and conformance Double = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Double, &type metadata for Double);
    lazy protocol witness table cache variable for type Double and conformance Double = result;
  }

  return result;
}

uint64_t sub_9B120()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  return swift_deallocObject(v0, 48, 7);
}

uint64_t lazy protocol witness table accessor for type UInt64 and conformance UInt64()
{
  result = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for UInt64, &type metadata for UInt64);
    lazy protocol witness table cache variable for type UInt64 and conformance UInt64 = result;
  }

  return result;
}

void *closure #1 in FeatureVectorizer.fitted(to:)partial apply(uint64_t *a1, void *a2)
{
  return partial apply for closure #1 in FeatureVectorizer.fitted(to:)(a1, a2);
}

{
  return partial apply for closure #1 in FeatureVectorizer.fitted(to:)(a1, a2);
}

{
  return partial apply for closure #1 in FeatureVectorizer.fitted(to:)(a1, a2);
}

uint64_t one-time initialization function for sessionParameters()
{
  v0 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_allocate_value_buffer(v0, static MLObjectDetector.__Defaults.sessionParameters);
  v1 = __swift_project_value_buffer(v0, static MLObjectDetector.__Defaults.sessionParameters);
  v2 = type metadata accessor for URL(0);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  result = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + result) = 10;
  *(v1 + v4) = 50;
  *(v1 + v5) = 1000;
  return result;
}

uint64_t static MLObjectDetector.__Defaults.sessionParameters.getter()
{
  v1 = v0;
  if (one-time initialization token for sessionParameters != -1)
  {
    swift_once(&one-time initialization token for sessionParameters, one-time initialization function for sessionParameters);
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  v3 = __swift_project_value_buffer(v2, static MLObjectDetector.__Defaults.sessionParameters);
  return outlined init with copy of MLTrainingSessionParameters(v3, v1);
}

uint64_t outlined init with copy of MLTrainingSessionParameters(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

NSString __swiftcall NSString.__allocating_init(string:)(Swift::String string)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_allocWithZone(ObjCClassFromMetadata);
  v3 = String._bridgeToObjectiveC()();
  string._object;
  v4 = [v2 initWithString:v3];

  return v4;
}

uint64_t MLDataTable.write(to:)(uint64_t a1)
{
  v40 = v1;
  v3 = type metadata accessor for URL(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v39 = &v35;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v38 = *v2;
  v43 = *(v2 + 8);
  v10 = v3;
  (*(v4 + 16))(&v35, a1);
  v11 = URL.isFileURL.getter();
  v42 = v10;
  if ((v11 & 1) == 0)
  {
    v41 = v4;
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any>);
    v13 = swift_allocObject(v12, 64, 7);
    *&v37 = 0;
    *(v13 + 16) = 1;
    v36 = v13;
    *(v13 + 24) = 2;
    *(&v37 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    v14._countAndFlagsBits = 0x27204C5255;
    v14._object = 0xE500000000000000;
    String.append(_:)(v14);
    v15 = lazy protocol witness table accessor for type URL and conformance URL();
    v16 = dispatch thunk of CustomStringConvertible.description.getter(v10, v15);
    v18 = v17;
    v14._countAndFlagsBits = v16;
    v14._object = v17;
    String.append(_:)(v14);
    v18;
    v14._object = "ary values for feature '" + 0x8000000000000000;
    v14._countAndFlagsBits = 0xD000000000000030;
    String.append(_:)(v14);
    if (one-time initialization token for tmpPath != -1)
    {
      swift_once(&one-time initialization token for tmpPath, one-time initialization function for tmpPath);
    }

    countAndFlagsBits = tmpPath._countAndFlagsBits;
    object = tmpPath._object;

    v21._countAndFlagsBits = countAndFlagsBits;
    v21._object = object;
    String.append(_:)(v21);
    object;
    v21._object = 0xE200000000000000;
    v21._countAndFlagsBits = 10030;
    String.append(_:)(v21);
    v22 = v37;
    v23 = v36;
    *(v36 + 56) = &type metadata for String;
    *(v23 + 32) = v22;
    print(_:separator:terminator:)(v23, 32, 0xE100000000000000, 10, 0xE100000000000000);
    v23;
    v24 = tmpPath._countAndFlagsBits;
    v25 = tmpPath._object;

    v26 = v39;
    URL.init(fileURLWithPath:)(v24, v25);
    v25;
    v27 = v42;
    v4 = v41;
    (*(v41 + 8))(&v35, v42);
    (*(v4 + 32))(&v35, v26, v27);
  }

  v28._countAndFlagsBits = 0x6C62615461746144;
  v28._object = 0xE900000000000065;
  URL.appendPathComponent(_:)(v28);
  v29 = v40;
  static _FileUtilities.prepareForWriting(to:isDirectory:)(&v35, 1);
  if (v29)
  {
    return (*(v4 + 8))(&v35, v42);
  }

  if (v43)
  {
    v30 = v38;
    swift_willThrow();
    swift_errorRetain(v30);
    return (*(v4 + 8))(&v35, v42);
  }

  v41 = v4;
  v32 = v38;
  v39 = *(v38 + 16);
  v33 = v38;

  v34._countAndFlagsBits = URL.path.getter(v33);
  v40 = v34._object;
  CMLTable.save(to:type:)(v34, 1);
  (*(v41 + 8))(&v35, v42);
  v40;
  return outlined consume of Result<_DataTable, Error>(v32, 0);
}

NSURL *MLDataTable.writeCSV(to:)(uint64_t a1, uint64_t a2)
{
  v10 = *v3;
  v4 = *(v3 + 8);
  if (URL.isFileURL.getter(a1, a2))
  {
    result = static _FileUtilities.prepareForWriting(to:isDirectory:)(a1, 0);
    if (!v2)
    {
      if (v4)
      {
        swift_willThrow();
        return swift_errorRetain(v10);
      }

      else
      {
        v8 = *(v10 + 16);
        outlined copy of Result<_DataTable, Error>(v10, 0);

        v9._countAndFlagsBits = URL.path.getter(v8);
        LOBYTE(v8) = v9._object;
        CMLTable.save(to:type:)(v9, 0);

        v8;
        return outlined consume of Result<_DataTable, Error>(v10, 0);
      }
    }
  }

  else
  {
    v6 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v6, 0, 0);
    *v7 = 0xD00000000000002CLL;
    *(v7 + 8) = " tmp directory '" + 0x8000000000000000;
    *(v7 + 16) = 0;
    *(v7 + 32) = 0;
    *(v7 + 48) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t MLDataTable.write(toDirectory:)(Swift::String string, void (*a2)(void *))
{
  v17 = a2;
  v20 = type metadata accessor for URL(0);
  v21 = *(v20 - 8);
  v3 = *(v21 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v19 = v15;
  v18 = *v2;
  v22 = *(v2 + 8);
  type metadata accessor for NSString();

  v6 = NSString.__allocating_init(string:)(string);
  v7 = [v6 stringByExpandingTildeInPath];
  v8 = v7;

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)(v8);
  v11 = v10;

  v12 = v9;
  v13 = v19;
  URL.init(fileURLWithPath:)(v12, v11);
  v11;
  v15[1] = v18;
  v16 = v22;
  v17(v13);
  return (*(v21 + 8))(v13, v20);
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL()
{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    v1 = type metadata accessor for URL(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for URL, v1);
    lazy protocol witness table cache variable for type URL and conformance URL = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    v1 = type metadata accessor for URL(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for URL, v1);
    lazy protocol witness table cache variable for type URL and conformance URL = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    v1 = type metadata accessor for URL(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for URL, v1);
    lazy protocol witness table cache variable for type URL and conformance URL = result;
  }

  return result;
}

void *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySo8NSNumberCGSaySo12MLMultiArrayCGG_Si5label_AL9embeddingts5NeverOTg505_sSo8f5CSo12gh42CSiADIgggdo_AB_ADtSi5label_AD9embeddingts5k128OIegnrzr_TR098_s8CreateML24MLFewShotSoundClassifierV5train33_E9D7D47DE11AB89722960D8AD055ABB6LLyyKFSi5label_So12bc15C9embeddingtM23A10C_AHtXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  v5 = specialized Array._getCount()(a1, a2, a3, a4);
  v8 = specialized Array._getCount()(a2, a2, v6, v7);
  if (v8 < v5)
  {
    v5 = v8;
  }

  v9 = 0;
  if (v5 > 0)
  {
    v9 = v5;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
  if (v5 < 0)
  {
    BUG();
  }

  v44 = v5;
  if (v5)
  {
    v39 = specialized Array._getCount()(a1);
    v37 = a1 & 0xC000000000000003;
    v38 = a2 & 0x4000000000000001;
    v50 = a1 & 0xFFFFFFFFFFFFF8;
    v10 = a2;
    if ((a2 & 1) == 0)
    {
      v10 = a2 & 0xFFFFFFFFFFFFF8;
    }

    v41 = v10;
    v43 = a2 & 0xC000000000000003;

    v11 = 0;
    do
    {
      if (v39 == v11)
      {
        BUG();
      }

      if (v37)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)(v11);
        v13 = a2 & 0xC000000000000003;
      }

      else
      {
        v13 = a2 & 0xC000000000000003;
        if (v11 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFF8)))
        {
          BUG();
        }

        v12 = *(v4 + 8 * v11 + 32);
      }

      if (v38)
      {
        v14 = _CocoaArrayWrapper.endIndex.getter(v41);
        v15 = a2 & 0xFFFFFFFFFFFFF8;
      }

      else
      {
        v15 = a2 & 0xFFFFFFFFFFFFF8;
        v14 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFF8));
      }

      if (v11 == v14)
      {

        BUG();
      }

      if (v13)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)(v11);
      }

      else
      {
        if (v11 >= *(v15 + 16))
        {
          BUG();
        }

        v16 = *(a2 + 8 * v11 + 32);
      }

      v48 = v16;
      v46 = [v12 integerValue];

      v17 = _swiftEmptyArrayStorage[2];
      if (_swiftEmptyArrayStorage[3] >> 1 <= v17)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v17 + 1, 1);
      }

      ++v11;
      _swiftEmptyArrayStorage[2] = v17 + 1;
      v18 = 2 * v17;
      _swiftEmptyArrayStorage[v18 + 4] = v46;
      _swiftEmptyArrayStorage[v18 + 5] = v48;
      v19 = v44;
      v4 = a1;
    }

    while (v44 != v11);
    v20 = a2;
    v21 = a2 & 0xFFFFFFFFFFFFF8;
    v22 = v50;
    v23 = a2 & 1;
  }

  else
  {
    v37 = a1 & 0xC000000000000003;
    v20 = a2;
    v38 = a2 & 0x4000000000000001;
    v43 = a2 & 0xC000000000000003;

    v21 = a2 & 0xFFFFFFFFFFFFF8;
    v23 = a2 & 1;
    v22 = v4 & 0xFFFFFFFFFFFFF8;
    v19 = 0;
  }

  v24 = v4;
  v51 = v22;
  if ((v4 & 1) == 0)
  {
    v24 = v22;
  }

  v40 = v24;
  if (!v23)
  {
    v20 = v21;
  }

  v42 = v20;
  while (1)
  {
    if ((v4 & 0x4000000000000001) != 0)
    {
      v25 = v19;
      v26 = _CocoaArrayWrapper.endIndex.getter(v40);
      v19 = v25;
      v27 = v51;
    }

    else
    {
      v27 = v51;
      v26 = *(v51 + 16);
    }

    if (v19 == v26)
    {
      a2;
      v4;
      return _swiftEmptyArrayStorage;
    }

    if (v37)
    {
      v28 = v19;
      v29 = specialized _ArrayBuffer._getElementSlowPath(_:)(v19);
    }

    else
    {
      if (v19 >= *(v27 + 16))
      {
        BUG();
      }

      v28 = v19;
      v29 = *(v4 + 8 * v19 + 32);
    }

    v47 = v29;
    v30 = v21;
    if (__OFADD__(1, v28))
    {
      BUG();
    }

    if (v38)
    {
      v31 = _CocoaArrayWrapper.endIndex.getter(v42);
      v30 = v21;
    }

    else
    {
      v31 = *(v21 + 16);
    }

    if (v28 == v31)
    {
      break;
    }

    if (v43)
    {
      v32 = specialized _ArrayBuffer._getElementSlowPath(_:)(v28);
    }

    else
    {
      if (v28 >= *(v30 + 16))
      {
        BUG();
      }

      v32 = *(a2 + 8 * v28 + 32);
    }

    v49 = v32;
    v45 = [v47 integerValue];

    v33 = _swiftEmptyArrayStorage[2];
    if (_swiftEmptyArrayStorage[3] >> 1 <= v33)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v33 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v33 + 1;
    v34 = 2 * v33;
    _swiftEmptyArrayStorage[v34 + 4] = v45;
    _swiftEmptyArrayStorage[v34 + 5] = v49;
    v19 = v28 + 1;
    v4 = a1;
  }

  a2;
  v4;

  return _swiftEmptyArrayStorage;
}

uint64_t MLFewShotSoundClassifier.trainingMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLFewShotSoundClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 20), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t type metadata accessor for MLFewShotSoundClassifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLFewShotSoundClassifier;
  if (!type metadata singleton initialization cache for MLFewShotSoundClassifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLFewShotSoundClassifier);
  }

  return result;
}

uint64_t MLFewShotSoundClassifier.validationMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLFewShotSoundClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 24), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLFewShotSoundClassifier.validationLoss.setter(double a1)
{
  result = *(type metadata accessor for MLFewShotSoundClassifier(0) + 28);
  *(v1 + result) = a1;
  return result;
}

void MLFewShotSoundClassifier.init(trainingData:modelParameters:)(uint64_t a1, uint64_t a2, double a3, __m128 a4, __m128 a5, __m128 a6)
{
  v130 = v7;
  v121 = a2;
  v120 = a1;
  v8 = v6;
  v126 = v6;
  v124 = type metadata accessor for MLFewShotSoundClassifier(0);
  v127 = v124[5];
  v9 = v8 + v127;
  v117 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v10 = *(v117 - 8);
  v118 = *(v10 + 64);
  v11 = alloca(v118);
  v12 = alloca(v118);
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v105);
  v129 = *(v10 + 8);
  (v129)(&v105, v117, a3, *a4.i64, *a5.i64, *a6.i64);
  v13 = v126;
  *(v126 + v127) = 0;
  v127 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v107 = v9;
  swift_storeEnumTagMultiPayload(v9, v127, 1);
  v122 = v124[6];
  v14 = v13 + v122;
  v15 = alloca(v118);
  v16 = alloca(v118);
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v105);
  v17 = v13;
  (v129)(&v105, v117);
  *(v13 + v122) = 0;
  v117 = v14;
  v18 = v121;
  swift_storeEnumTagMultiPayload(v14, v127, 1);
  *(v17 + v124[7]) = 0;
  outlined init with copy of MLTrainingSessionParameters(v18, v17, type metadata accessor for MLFewShotSoundClassifier.ModelParameters);
  if (_stdlib_isOSVersionAtLeastOrVariantVersionAtLeast(_:_:_:_:_:_:)(0xDuLL, 0, 0, 0x10uLL, 0, 0))
  {
    v19 = *(v18 + 8);
  }

  else
  {
    v19 = 1008981770;
  }

  LODWORD(v118) = v19;
  v20 = type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0);
  v21 = v120;
  v22 = v130;
  v23 = MLFewShotSoundClassifier.DataSource.extractFeatures(with:)((v18 + *(v20 + 32)));
  v24 = v22;
  if (!v22)
  {
    v130 = v20;
    v127 = 0;
    v26 = v124;
    v25 = v126;
    *(v126 + v124[12]) = v23;
    v27 = v23;
    *(v25 + v26[8]) = &outlined read-only object #0 of MLFewShotSoundClassifier.init(trainingData:modelParameters:);
    *(v25 + v26[9]) = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_Sis12Zip2SequenceVySaySSGSnySiGGTt0g5(&outlined read-only object #0 of MLFewShotSoundClassifier.init(trainingData:modelParameters:), 0, 2);
    v28 = [v27 trainingDataEmbeddings];
    v29 = v28;
    v30 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v29, v30);

    if (specialized Array._getCount()(v31))
    {
      if ((v31 & 0xC000000000000003) != 0)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)(0);
        v32 = v130;
      }

      else
      {
        v32 = v130;
        if (!*(&dword_10 + (v31 & 0xFFFFFFFFFFFFF8)))
        {
          BUG();
        }

        v33 = *(v31 + 32);
      }

      v31;
      v34 = [v33 shape];
      v35 = v34;

      v36 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
      v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v35, v36);
      (objc_release)(v35);
      if (specialized Array._getCount()(v31, v36, v37, v38) == 3)
      {
        v39 = type metadata accessor for URL(0);
        v130 = &v105;
        v128 = *(v39 - 8);
        v119 = *(v128 + 8);
        v40 = alloca(v119);
        v41 = alloca(v119);
        v125 = &v105;
        v42 = v121 + v32[9];
        v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
        v129 = &v105;
        v44 = *(*(v43 - 8) + 64);
        v45 = alloca(v44);
        v46 = alloca(v44);
        outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v42, &v105, &demangling cache variable for type metadata for URL?);
        if (__swift_getEnumTagSinglePayload(&v105, 1, v39) == 1)
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v105, &demangling cache variable for type metadata for URL?);
          v47 = type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0);
          v130 = &v105;
          v48 = *(*(v47 - 8) + 64);
          v49 = alloca(v48);
          v50 = alloca(v48);
          v122 = v47;
          if ((v31 & 0xC000000000000003) != 0)
          {
            v51 = specialized _ArrayBuffer._getElementSlowPath(_:)(1);
          }

          else
          {
            if (*(&dword_10 + (v31 & 0xFFFFFFFFFFFFF8)) <= 1uLL)
            {
              BUG();
            }

            v51 = *(v31 + 40);
          }

          v52 = v51;
          v31;
          v53 = [v52 integerValue];

          MLFewShotSoundClassifier.TemporalClassifier.init(outputs:inputChannels:)(2, v53);
          v128 = type metadata accessor for ComputeDevice(0);
          v129 = &v105;
          v125 = *(v128 - 1);
          v54 = *(v125 + 8);
          v55 = alloca(v54);
          v56 = alloca(v54);
          static ComputeDevice.cpu.getter();
          v57 = v126;
          v58 = lazy protocol witness table accessor for type MLFewShotSoundClassifier.TemporalClassifier and conformance MLFewShotSoundClassifier.TemporalClassifier();
          Layer.placed(on:)(&v105, v122, v58);
          (*(v125 + 1))(&v105, v128);
          outlined destroy of MLActivityClassifier.ModelParameters(&v105, type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier);
          v129 = v127;
          goto LABEL_16;
        }

        v76 = v125;
        v77 = v128;
        (*(v128 + 4))(v125, &v105, v39);
        v78 = type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0);
        v112 = &v105;
        v122 = v78;
        v79 = *(*(v78 - 8) + 64);
        v80 = alloca(v79);
        v81 = alloca(v79);
        v115 = &v105;
        v113 = &v105;
        v108 = v79;
        v82 = alloca(v79);
        v83 = alloca(v79);
        v110 = &v105;
        v114 = &v105;
        v84 = alloca(v119);
        v85 = alloca(v119);
        v86 = *(v77 + 16);
        v123 = &v105;
        v87 = v76;
        v88 = v86;
        v86(&v105, v87, v39);
        if ((v31 & 0xC000000000000003) != 0)
        {
          v89 = specialized _ArrayBuffer._getElementSlowPath(_:)(1);
        }

        else
        {
          if (*(&dword_10 + (v31 & 0xFFFFFFFFFFFFF8)) <= 1uLL)
          {
            BUG();
          }

          v89 = *(v31 + 40);
        }

        v90 = v89;
        v31;
        v109 = [v90 integerValue];

        v116 = &v105;
        v91 = alloca(v119);
        v92 = alloca(v119);
        v88(&v105, v123, v39);
        v93 = v127;
        v94 = Data.init(contentsOf:options:)(&v105, 0);
        if (v93)
        {
          v129 = v93;
          v96 = *(v128 + 1);
          v96(&v105, v39);
        }

        else
        {
          BlobsFile.init(data:)(v94, v95, *&v19, a4, a5, a6);
          v129 = 0;
          v96 = *(v128 + 1);
          v96(&v105, v39);
          v97 = alloca(v108);
          v98 = alloca(v108);
          v99 = v129;
          MLFewShotSoundClassifier.TemporalClassifier.init(inputChannels:blobsFile:)(v109, v106);
          v129 = v99;
          if (!v99)
          {
            v111 = v39;
            v96(v123, v39);
            v100 = v110;
            outlined init with take of MLFewShotSoundClassifier.TemporalClassifier(&v105, v110);
            v119 = type metadata accessor for ComputeDevice(0);
            v128 = &v105;
            v123 = *(v119 - 8);
            v101 = *(v123 + 8);
            v102 = alloca(v101);
            v103 = alloca(v101);
            static ComputeDevice.cpu.getter();
            v104 = lazy protocol witness table accessor for type MLFewShotSoundClassifier.TemporalClassifier and conformance MLFewShotSoundClassifier.TemporalClassifier();
            Layer.placed(on:)(&v105, v122, v104);
            (*(v123 + 1))(&v105, v119);
            outlined destroy of MLActivityClassifier.ModelParameters(v100, type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier);
            v96(v125, v111);
            v57 = v126;
            outlined init with take of MLFewShotSoundClassifier.TemporalClassifier(v115, v126 + v124[10]);
LABEL_16:
            v128 = (v57 + v124[10]);
            v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for GradientClippingMode?);
            v130 = &v105;
            v60 = *(*(v59 - 8) + 64);
            v61 = alloca(v60);
            v62 = alloca(v60);
            v105 = 1065353216;
            v63 = enum case for GradientClippingMode.byNorm(_:);
            v64 = type metadata accessor for GradientClippingMode(0);
            (*(*(v64 - 8) + 104))(&v105, v63, v64);
            __swift_storeEnumTagSinglePayload(&v105, 0, 1, v64);
            v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for RegularizationKind?);
            v125 = &v105;
            v66 = *(*(v65 - 8) + 64);
            v67 = alloca(v66);
            v68 = alloca(v66);
            v69 = type metadata accessor for RegularizationKind(0);
            __swift_storeEnumTagSinglePayload(&v105, 1, 1, v69);
            type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0);
            v70 = lazy protocol witness table accessor for type MLFewShotSoundClassifier.TemporalClassifier and conformance MLFewShotSoundClassifier.TemporalClassifier();
            Adam.init(for:learningRate:beta1:beta2:usesAMSGrad:epsilon:gradientClippingMode:regularizationKind:gradientScale:)(v128, 0, &v105, &v105, v122, v70, *&v118, 0.89999998, 0.99900001, 0.0000001, 1.0);
            v71 = v129;
            MLFewShotSoundClassifier.train()();
            if (!v71)
            {
              outlined destroy of MLActivityClassifier.ModelParameters(v121, type metadata accessor for MLFewShotSoundClassifier.ModelParameters);
              outlined destroy of MLActivityClassifier.ModelParameters(v120, type metadata accessor for MLFewShotSoundClassifier.DataSource);
              return;
            }

            outlined destroy of MLActivityClassifier.ModelParameters(v121, type metadata accessor for MLFewShotSoundClassifier.ModelParameters);
            v72 = outlined destroy of MLActivityClassifier.ModelParameters(v120, type metadata accessor for MLFewShotSoundClassifier.DataSource);
            LOBYTE(v72) = 1;
            v130 = v72;
            v25 = v126;
            goto LABEL_20;
          }
        }

        v96(v123, v39);
        outlined destroy of MLActivityClassifier.ModelParameters(v121, type metadata accessor for MLFewShotSoundClassifier.ModelParameters);
        outlined destroy of MLActivityClassifier.ModelParameters(v120, type metadata accessor for MLFewShotSoundClassifier.DataSource);
        v96(v125, v39);
        v130 = 0;
        v25 = v126;
        v24 = v127;
        goto LABEL_21;
      }

      v25 = v126;
    }

    v31;
    v73 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v130 = 0;
    swift_allocError(&type metadata for MLCreateError, v73, 0, 0);
    *v74 = 0xD000000000000038;
    *(v74 + 8) = "ly be written to a file URL." + 0x8000000000000000;
    *(v74 + 16) = 0;
    *(v74 + 32) = 0;
    *(v74 + 48) = 2;
    swift_willThrow();
    outlined destroy of MLActivityClassifier.ModelParameters(v121, type metadata accessor for MLFewShotSoundClassifier.ModelParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v120, type metadata accessor for MLFewShotSoundClassifier.DataSource);
LABEL_20:
    v24 = v127;
    goto LABEL_21;
  }

  v130 = 0;
  outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLFewShotSoundClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v21, type metadata accessor for MLFewShotSoundClassifier.DataSource);
  v25 = v126;
LABEL_21:
  outlined destroy of MLActivityClassifier.ModelParameters(v25, type metadata accessor for MLFewShotSoundClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v107, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v117, type metadata accessor for MLClassifierMetrics);
  v75 = v124;
  if (!v24)
  {
    *(v25 + v124[8]);
    *(v25 + v75[9]);
  }

  if (v130)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v25 + v75[10], type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v25 + v75[11], &demangling cache variable for type metadata for Adam<MLFewShotSoundClassifier.TemporalClassifier>);
  }

  if (!v24)
  {
  }
}

uint64_t MLFewShotSoundClassifier.train()()
{
  v201 = v0;
  v2 = _stdlib_isOSVersionAtLeastOrVariantVersionAtLeast(_:_:_:_:_:_:)(0xDuLL, 0, 0, 0x10uLL, 0, 0);
  v3 = 128;
  if (v2)
  {
    v3 = v1[2];
  }

  v204 = v3;
  v177 = *v1;
  v189 = type metadata accessor for MLFewShotSoundClassifier(0);
  v4 = *(v1 + v189[12]);
  v5 = [v4 trainingDataLabels];
  v200 = v1;
  v6 = v5;
  v166 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v6, v166);

  v165 = v4;
  v8 = [v4 trainingDataEmbeddings];
  v9 = v8;
  v167 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v9, v167);

  ML24MLFewShotSoundClassifierV5train33_E9D7D47DE11AB89722960D8AD055ABB6LLyyKFSi5label_So12bc15C9embeddingtM23A10C_AHtXEfU_Tf3nnnpf_nTf1cn_n = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySo8NSNumberCGSaySo12MLMultiArrayCGG_Si5label_AL9embeddingts5NeverOTg505_sSo8f5CSo12gh42CSiADIgggdo_AB_ADtSi5label_AD9embeddingts5k128OIegnrzr_TR098_s8CreateML24MLFewShotSoundClassifierV5train33_E9D7D47DE11AB89722960D8AD055ABB6LLyyKFSi5label_So12bc15C9embeddingtM23A10C_AHtXEfU_Tf3nnnpf_nTf1cn_n(v7, v10, v11, v12);
  v203 = v201;
  v10;
  v7;
  v178 = v144;
  v195 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[(label: Int, embedding: MLMultiArray)], DataSample<Tensor, Tensor>>);
  v190 = *(v195 - 8);
  v14 = *(v190 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v17 = type metadata accessor for ComputeDevice(0);
  v201 = v144;
  v202 = *(v17 - 8);
  v169 = *(v202 + 8);
  v18 = alloca(v169);
  v19 = alloca(v169);
  static ComputeDevice.cpu.getter();
  v196 = v144;
  specialized MLFewShotSoundClassifier.makeSoundDataset<A>(from:batchSize:device:)(ML24MLFewShotSoundClassifierV5train33_E9D7D47DE11AB89722960D8AD055ABB6LLyyKFSi5label_So12bc15C9embeddingtM23A10C_AHtXEfU_Tf3nnnpf_nTf1cn_n, v204, v144);
  v20 = *(v202 + 1);
  v168 = v17;
  v170 = v20;
  v20(v144, v17);
  ML24MLFewShotSoundClassifierV5train33_E9D7D47DE11AB89722960D8AD055ABB6LLyyKFSi5label_So12bc15C9embeddingtM23A10C_AHtXEfU_Tf3nnnpf_nTf1cn_n;
  v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLFewShotSoundClassifier.TemporalClassifier?);
  v179 = v144;
  v171 = *(*(v21 - 8) + 64);
  v22 = alloca(v171);
  v23 = alloca(v171);
  v198 = v144;
  v24 = v200 + *(type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0) + 36);
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v24, v144, &demangling cache variable for type metadata for URL?);
  v28 = type metadata accessor for URL(0);
  v29 = 1;
  LODWORD(v9) = __swift_getEnumTagSinglePayload(v144, 1, v28);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v144, &demangling cache variable for type metadata for URL?);
  v30 = v200;
  v31 = v189;
  if (v9 != 1)
  {
    outlined init with copy of MLTrainingSessionParameters(v200 + v189[10], v198, type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier);
    v29 = 0;
  }

  v32 = type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0);
  __swift_storeEnumTagSinglePayload(v198, v29, 1, v32);
  if (v177 <= 0)
  {
    BUG();
  }

  v188 = v32;
  v186 = *(v30 + v31[8]);
  v164 = *(v186 + 16);
  v175 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
  v180 = enum case for LearningPhase.training(_:);
  v181 = enum case for LearningPhase.inference(_:);
  v33 = 1;
  v176 = 1.797693134862316e308;
  v34 = v203;
  while (1)
  {
    swift_allocObject(v175, *(v175 + 48), *(v175 + 52));
    v194 = _MetricUtilities.ConfusionMatrixMeter.init(classCount:)(v164);
    if (v34)
    {
LABEL_32:
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v198, &demangling cache variable for type metadata for MLFewShotSoundClassifier.TemporalClassifier?);
      return (*(v190 + 8))(v196, v195);
    }

    v163 = v33;
    v203 = 0;
    v35 = type metadata accessor for LearningPhase(0);
    v204 = v205;
    v36 = *(v35 - 8);
    v161 = v36[8];
    v37 = alloca(v161);
    v38 = alloca(v161);
    v160 = v36[13];
    v160(v205, v180, v35);
    v39 = v200 + v31[10];
    v174 = lazy protocol witness table accessor for type MLFewShotSoundClassifier.TemporalClassifier and conformance MLFewShotSoundClassifier.TemporalClassifier();
    v193 = v39;
    Layer.prepare(for:)(v205, v188, v174);
    v40 = v36[1];
    v159 = v35;
    v162 = v40;
    v40(v205, v35);
    v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[(label: Int, embedding: MLMultiArray)]>>, DataSample<Tensor, Tensor>>>, DataSample<Tensor, Tensor>>.Iterator);
    v157 = v205;
    v42 = *(*(v41 - 8) + 64);
    v43 = alloca(v42);
    v44 = alloca(v42);
    Dataset.makeIterator()(v195);
    v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataSample<Tensor, Tensor>?);
    v158 = v205;
    v46 = *(*(v45 - 8) + 64);
    v47 = alloca(v46);
    v48 = alloca(v46);
    v173 = v205;
    v49 = *(v41 + 44);
    v155 = *&v205[v49];
    v172 = v205;
    v156 = *&v205[v49 + 8];
    v154 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[(label: Int, embedding: MLMultiArray)]>>, DataSample<Tensor, Tensor>>>.Iterator and conformance Batches<A>.Iterator, &demangling cache variable for type metadata for Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[(label: Int, embedding: MLMultiArray)]>>, DataSample<Tensor, Tensor>>>.Iterator, &protocol conformance descriptor for Batches<A>.Iterator);
    while (1)
    {
      v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[(label: Int, embedding: MLMultiArray)]>>, DataSample<Tensor, Tensor>>>.Iterator);
      dispatch thunk of IteratorProtocol.next()(v50, v154);
      v51 = v182;
      if (v182)
      {
        v144[0] = v182;
        v52 = v173;
        v155(v144);
        v53 = v52;
        v51;
        v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataSample<Tensor, Tensor>);
        v55 = v52;
        v56 = 0;
      }

      else
      {
        v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataSample<Tensor, Tensor>);
        v53 = v173;
        v55 = v173;
        v56 = 1;
      }

      __swift_storeEnumTagSinglePayload(v55, v56, 1, v54);
      v57 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataSample<Tensor, Tensor>);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v57);
      v192 = v57;
      if (EnumTagSinglePayload == 1)
      {
        break;
      }

      v187 = v205;
      v59 = *(v57 - 8);
      v60 = *(v59 + 64);
      v61 = alloca(v60);
      v62 = alloca(v60);
      v201 = v205;
      v183 = v59;
      (*(v59 + 32))(v205, v53, v57);
      v63 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (loss: Tensor, predictions: Tensor));
      v184 = v205;
      v191 = v63;
      v64 = *(*(v63 - 8) + 64);
      v65 = alloca(v64);
      v66 = alloca(v64);
      v204 = v205;
      v67 = type metadata accessor for Tensor(0);
      v144[1] = v205;
      v197 = *(v67 - 8);
      v68 = *(*&v197 + 64);
      v69 = alloca(v68);
      v70 = alloca(v68);
      v202 = v205;
      v144[2] = v205;
      v71 = alloca(v68);
      v72 = alloca(v68);
      v145 = v205;
      v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?);
      v146 = v205;
      v199 = *(*(v73 - 8) + 64);
      v74 = alloca(v199);
      v75 = alloca(v199);
      __swift_storeEnumTagSinglePayload(v205, 1, 1, v67);
      v148 = v205;
      v76 = *(v200 + 6);
      v77 = *(v200 + 28);
      v185 = v68;
      v78 = alloca(v68);
      v79 = alloca(v68);
      v80 = alloca(48);
      v81 = alloca(48);
      v206 = v201;
      v207 = v76;
      _mm_storel_ps(&v208, _mm_shuffle_ps(v77, v77, 225));
      retaddr = v205;
      v150 = valueWithGradient<A>(at:of:)(v205, v193, partial apply for closure #1 in MLFewShotSoundClassifier.performStep(on:), v205, v188, v174);
      v82 = *(*&v197 + 16);
      v152 = v205;
      v149 = v82;
      v82(v202, v205, v67);
      v151 = v205;
      v83 = alloca(v199);
      v84 = alloca(v199);
      v147 = v205;
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v205, v205, &demangling cache variable for type metadata for Tensor?);
      v85 = v67;
      if (__swift_getEnumTagSinglePayload(v205, 1, v67) == 1)
      {
        BUG();
      }

      v199 = &v204[*(v191 + 48)];
      v86 = v197;
      v191 = *(*&v197 + 8);
      (v191)(v152, v67);
      v87 = v145;
      (*(*&v86 + 32))(v145, v205, v85);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v147, &demangling cache variable for type metadata for Tensor?);
      v88 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLFewShotSoundClassifier.TemporalClassifier>);
      v89 = v150;
      Adam.update(_:with:)(v193, v150, v88);
      v89;
      v90 = v202;
      v91 = v85;
      v153 = v85;
      v149(v204, v202, v85);
      softmax(_:alongAxis:)(v87, -1);
      v92 = v85;
      v93 = v191;
      (v191)(v87, v92);
      v93(v90, v91);
      v202 = v205;
      v94 = alloca(v185);
      v95 = alloca(v185);
      v96 = v192;
      v97 = v201;
      DataSample.labels.getter(v192);
      _MetricUtilities.ConfusionMatrixMeter.add(predicted:target:)(v199, v205);
      (v191)(v205, v153);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v204, &demangling cache variable for type metadata for (loss: Tensor, predictions: Tensor));
      (*(v183 + 1))(v97, v96);
    }

    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v172, &demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[(label: Int, embedding: MLMultiArray)]>>, DataSample<Tensor, Tensor>>>, DataSample<Tensor, Tensor>>.Iterator);
    v98 = *(*(type metadata accessor for MLClassifierMetrics(0) - 8) + 64);
    v99 = alloca(v98);
    v100 = alloca(v98);
    v101 = v203;
    static _MetricUtilities.makeClassifierMetrics(confusionMeter:classLabels:supplementMissingClassLabels:)(v194, v186, 0);
    v203 = v101;
    if (v101)
    {

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v198, &demangling cache variable for type metadata for MLFewShotSoundClassifier.TemporalClassifier?);
      return (*(v190 + 8))(v196, v195);
    }

    v191 = v98;
    outlined assign with take of MLClassifierMetrics(v205, v200 + v189[5], type metadata accessor for MLClassifierMetrics);
    v102 = alloca(v161);
    v103 = alloca(v161);
    v104 = v159;
    v160(v205, v181, v159);
    Layer.prepare(for:)(v205, v188, v174);
    v162(v205, v104);
    v204 = v205;
    v201 = *(v192 - 8);
    v105 = *(v201 + 8);
    v106 = alloca(v105);
    v107 = alloca(v105);
    v108 = v165;
    v109 = [v165 validationDataEmbeddings];
    v110 = v109;
    v202 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v110, v167);

    v111 = [v108 validationDataLabels];
    v112 = v111;
    v113 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v112, v166);
    v199 = v113;

    v197 = COERCE_DOUBLE(v205);
    v114 = alloca(v169);
    v115 = alloca(v169);
    static ComputeDevice.cpu.getter();
    LOBYTE(v110) = v202;
    MLFewShotSoundClassifier.validationData(features:labels:device:)(v202, v113, v205);
    v110;
    v199;
    v170(v205, v168);
    v116 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (loss: Tensor, predictions: Tensor));
    v202 = v205;
    v117 = *(*(v116 - 8) + 64);
    v118 = alloca(v117);
    v119 = alloca(v117);
    v120 = &v205[*(v116 + 48)];
    MLFewShotSoundClassifier.performValidationStep(on:)(v205, v120, v205);
    Tensor.scalar<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
    v197 = *&v182;
    if (v176 >= *&v182)
    {
      v187 = v205;
      v199 = v205;
      v123 = v198;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v198, &demangling cache variable for type metadata for MLFewShotSoundClassifier.TemporalClassifier?);
      outlined init with copy of MLTrainingSessionParameters(v193, v123, type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier);
      __swift_storeEnumTagSinglePayload(v123, 0, 1, v188);
      v124 = *(v186 + 16);
      swift_allocObject(v175, *(v175 + 48), *(v175 + 52));
      v125 = v203;
      v126 = _MetricUtilities.ConfusionMatrixMeter.init(classCount:)(v124);
      v203 = v125;
      if (v125)
      {

        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v187, &demangling cache variable for type metadata for (loss: Tensor, predictions: Tensor));
        (*(v201 + 1))(v199, v192);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v123, &demangling cache variable for type metadata for MLFewShotSoundClassifier.TemporalClassifier?);
        return (*(v190 + 8))(v196, v195);
      }

      v127 = v126;
      v184 = type metadata accessor for Tensor(0);
      v183 = v205;
      v185 = *(v184 - 1);
      v128 = *(v185 + 64);
      v129 = alloca(v128);
      v130 = alloca(v128);
      DataSample.labels.getter(v192);
      _MetricUtilities.ConfusionMatrixMeter.add(predicted:target:)(v120, v205);
      (*(v185 + 8))(v205, v184);
      v131 = alloca(v191);
      v132 = alloca(v191);
      v133 = v203;
      static _MetricUtilities.makeClassifierMetrics(confusionMeter:classLabels:supplementMissingClassLabels:)(v127, v186, 0);

      v34 = v133;

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v187, &demangling cache variable for type metadata for (loss: Tensor, predictions: Tensor));
      (*(v201 + 1))(v199, v192);
      if (v133)
      {
        goto LABEL_32;
      }

      v201 = v205;
      v31 = v189;
      v121 = v200;
      outlined assign with take of MLClassifierMetrics(v205, v200 + v189[6], type metadata accessor for MLClassifierMetrics);
      v122 = v197;
      v176 = v197;
    }

    else
    {

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v205, &demangling cache variable for type metadata for (loss: Tensor, predictions: Tensor));
      (*(v201 + 1))(v205, v192);
      v34 = v203;
      v121 = v200;
      v31 = v189;
      v122 = v197;
    }

    v134 = v163;
    v135 = v163 == v177;
    *(v121 + v31[7]) = v122;
    if (v135)
    {
      break;
    }

    v136 = __OFADD__(1, v134);
    v33 = v134 + 1;
    if (v136)
    {
      BUG();
    }
  }

  v203 = v34;
  (*(v190 + 8))(v196, v195);
  v204 = v205;
  v138 = v188;
  v139 = *(*(v188 - 8) + 64);
  v140 = alloca(v139);
  v141 = alloca(v139);
  v142 = alloca(v171);
  v143 = alloca(v171);
  outlined init with take of MLFewShotSoundClassifier.TemporalClassifier?(v198, v205);
  if (__swift_getEnumTagSinglePayload(v205, 1, v138) == 1)
  {
    outlined init with copy of MLTrainingSessionParameters(v193, v205, type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier);
    if (__swift_getEnumTagSinglePayload(v205, 1, v138) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v205, &demangling cache variable for type metadata for MLFewShotSoundClassifier.TemporalClassifier?);
    }
  }

  else
  {
    outlined init with take of MLFewShotSoundClassifier.TemporalClassifier(v205, v205);
  }

  return outlined assign with take of MLClassifierMetrics(v205, v193, type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier);
}

uint64_t specialized MLFewShotSoundClassifier.makeSoundDataset<A>(from:batchSize:device:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = v4;
  v29 = a3;
  v25 = a2;
  v30 = a1;
  v26 = v3;
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[(label: Int, embedding: MLMultiArray)], DataSample<Tensor, Tensor>>.PrefetchMode);
  v27 = *(v32 - 8);
  v5 = *(v27 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v28 = v22;
  v8 = type metadata accessor for ComputeDevice(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v31 = v22;
  v33 = *(*(v33 + *(type metadata accessor for MLFewShotSoundClassifier(0) + 32)) + 16);
  v24 = a1;
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  (*(v9 + 16))(v22, v29, v8);
  v13 = *(v9 + 80);
  v14 = ~*(v9 + 80) & (v13 + 24);
  v15 = swift_allocObject(&unk_390308, v14 + v10, v13 | 7);
  *(v15 + 16) = v33;
  (*(v9 + 32))(v15 + v14, v31, v8);
  v16 = v28;
  (*(v27 + 104))(v28, enum case for Dataset.PrefetchMode.serial<A, B>(_:), v32);

  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [(label: Int, embedding: MLMultiArray)]);
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataSample<Tensor, Tensor>);
  v18 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [(label: Int, embedding: MLMultiArray)] and conformance [A], &demangling cache variable for type metadata for [(label: Int, embedding: MLMultiArray)], &protocol conformance descriptor for [A]);
  v19 = lazy protocol witness table accessor for type DataSample<Tensor, Tensor> and conformance <> DataSample<A, B>();
  v20 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type DataSample<Tensor, Tensor> and conformance DataSample<A, B>, &demangling cache variable for type metadata for DataSample<Tensor, Tensor>, &protocol conformance descriptor for DataSample<A, B>);
  return Dataset.init(samples:batchSize:batchSampler:dropsLastPartialBatch:prefetchMode:transform:)(&v24, v25, v22, 1, v16, partial apply for closure #1 in MLFewShotSoundClassifier.makeSoundDataset<A>(from:batchSize:device:), v15, v32, v17, v18, v19, v20);
}

uint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t a1, char a2, uint64_t a3)
{
  return specialized Array._checkSubscript(_:wasNativeTypeChecked:)(a1, a2, a3);
}

{
  if (a2)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      BUG();
    }

    result = 0xFFFFFFFFFFFFF8;
    if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFF8)) <= a1)
    {
      BUG();
    }
  }

  return result;
}

{
  return specialized Array._checkSubscript(_:wasNativeTypeChecked:)(a1, a2, a3);
}

{
  return specialized Array._checkSubscript(_:wasNativeTypeChecked:)(a1, a2, a3);
}

uint64_t specialized Array._getCount()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized Array._getCount()(a1);
}

{
  return specialized Array._getCount()(a1, a2, a3, a4);
}

uint64_t specialized Array._getCount()(uint64_t a1)
{
  if ((a1 & 0x4000000000000001) == 0)
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFF8));
  }

  v2 = a1 & 0xFFFFFFFFFFFFF8;
  if (a1)
  {
    v2 = a1;
  }

  return _CocoaArrayWrapper.endIndex.getter(v2);
}

uint64_t outlined init with take of MLFewShotSoundClassifier.TemporalClassifier(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t initializeBufferWithCopyOfBuffer for MLFewShotSoundClassifier(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    v13 = v12 + ((v4 + 16) & ~v4);
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 2);
    *(a1 + 16) = a2[2];
    *(a1 + 24) = a2[3];
    *(a1 + 32) = *(a2 + 8);
    v5 = type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0);
    v6 = *(v5 + 32);
    v7 = type metadata accessor for URL(0);
    __dst = *(*(v7 - 8) + 16);
    __dst(a1 + v6, a2 + v6, v7);
    v8 = *(v5 + 36);
    v9 = (a1 + v8);
    v10 = a2 + v8;
    if (__swift_getEnumTagSinglePayload(v10, 1, v7))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
      memcpy(v9, v10, *(*(v11 - 8) + 64));
    }

    else
    {
      __dst(v9, v10, v7);
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v7);
    }

    v14 = a3[5];
    v15 = a1;
    v16 = (a1 + v14);
    v17 = (a2 + v14);
    __dsta = type metadata accessor for MLClassifierMetrics.Contents(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v17, __dsta);
    if (EnumCaseMultiPayload == 2)
    {
      v23 = *v17;
      swift_errorRetain(*v17);
      *v16 = v23;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *v16 = *v17;
      v98 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v19 = *(v98 + 20);
      v101 = v16 + v19;
      v20 = type metadata accessor for DataFrame(0);
      v106 = v16;
      v21 = *(*(v20 - 8) + 16);
      v22 = v17 + v19;
      v15 = a1;
      v21(v101, v22, v20);
      v21(v106 + *(v98 + 24), v17 + *(v98 + 24), v20);
      v16 = v106;
    }

    else
    {
      v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v25 = swift_getEnumCaseMultiPayload(v17, v24);
      v26 = v25 == 1;
      v27 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v25 == 1)
      {
        v27 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v28 = __swift_instantiateConcreteTypeFromMangledName(v27);
      (*(*(v28 - 8) + 16))(v16, v17, v28);
      swift_storeEnumTagMultiPayload(v16, v24, v26);
      v15 = a1;
    }

    swift_storeEnumTagMultiPayload(v16, __dsta, EnumCaseMultiPayload);
    v29 = a3[6];
    v30 = (v15 + v29);
    v31 = (a2 + v29);
    v32 = swift_getEnumCaseMultiPayload(v31, __dsta);
    if (v32 == 2)
    {
      v37 = *v31;
      swift_errorRetain(*v31);
      *v30 = v37;
    }

    else if (v32 == 1)
    {
      *v30 = *v31;
      v107 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v33 = *(v107 + 20);
      v102 = v30 + v33;
      v34 = type metadata accessor for DataFrame(0);
      v35 = *(*(v34 - 8) + 16);
      v36 = v31 + v33;
      v15 = a1;
      v35(v102, v36, v34);
      v35(v30 + *(v107 + 24), v31 + *(v107 + 24), v34);
      v32 = 1;
    }

    else
    {
      v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v39 = swift_getEnumCaseMultiPayload(v31, v38);
      v40 = v39 == 1;
      v41 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v39 == 1)
      {
        v41 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v42 = __swift_instantiateConcreteTypeFromMangledName(v41);
      (*(*(v42 - 8) + 16))(v30, v31, v42);
      swift_storeEnumTagMultiPayload(v30, v38, v40);
      v15 = a1;
    }

    swift_storeEnumTagMultiPayload(v30, __dsta, v32);
    *(v15 + a3[7]) = *(a2 + a3[7]);
    *(v15 + a3[8]) = *(a2 + a3[8]);
    *(v15 + a3[9]) = *(a2 + a3[9]);
    v43 = a3[10];
    v44 = v15 + v43;
    v45 = a2 + v43;
    v46 = type metadata accessor for Conv2D(0);
    __dstd = *(*(v46 - 8) + 16);

    __dstd(v44, v45, v46);
    v47 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
    *(*(v47 + 20) + v44) = *&v45[*(v47 + 20)];
    __dste = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(0);
    v48 = __dste[5];
    v49 = v48 + v44;
    v103 = v48 + v44;
    v108 = &v45[v48];
    *(v48 + v44) = *&v45[v48];
    v50 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
    v51 = *(v50 + 20);
    v95 = v49 + v51;
    v52 = type metadata accessor for Conv1D(0);
    v53 = *(*(v52 - 8) + 16);
    v54 = &v108[v51];
    v55 = v52;
    v53(v95, v54);
    v56 = v53;
    *(*(v50 + 24) + v103) = *&v108[*(v50 + 24)];
    v57 = __dste[6];
    v109 = v44 + v57;
    v104 = &v45[v57];
    *(v57 + v44) = *&v45[v57];
    v58 = v55;
    v99 = v55;
    v59 = v55;
    v60 = v56;
    (v56)(v44 + v57 + *(v50 + 20), &v45[v57 + *(v50 + 20)], v59);
    *(*(v50 + 24) + v109) = *&v104[*(v50 + 24)];
    v61 = __dste[7];
    v110 = v44 + v61;
    v105 = &v45[v61];
    *(v61 + v44) = *&v45[v61];
    v60(v44 + v61 + *(v50 + 20), &v45[v61 + *(v50 + 20)], v58);
    v62 = v60;
    *(*(v50 + 24) + v110) = *&v105[*(v50 + 24)];
    v63 = __dste[8];
    v64 = v44 + v63;
    v65 = &v45[v63];
    *(v63 + v44) = *&v45[v63];
    v62(v44 + v63 + *(v50 + 20), &v45[v63 + *(v50 + 20)], v99);
    *(*(v50 + 24) + v64) = *&v65[*(v50 + 24)];
    v66 = *(type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0) + 20);
    v67 = v66 + v44;
    v68 = &v45[v66];
    v69 = type metadata accessor for Dense(0);
    v70 = *(*(v69 - 8) + 16);
    v70(v67, v68, v69);
    v71 = type metadata accessor for MLFewShotSoundClassifier.MLP(0);
    v70(*(v71 + 20) + v67, &v68[*(v71 + 20)], v69);
    v72 = a3[11];
    v73 = a1 + v72;
    v74 = a2 + v72;
    *(a1 + v72) = *(a2 + v72);
    v75 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLFewShotSoundClassifier.TemporalClassifier>);
    v76 = v75[12];
    __dstb = (v73 + v76);
    v77 = &v74[v76];
    v78 = type metadata accessor for GradientClippingMode(0);
    if (__swift_getEnumTagSinglePayload(v77, 1, v78))
    {
      v79 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for GradientClippingMode?);
      memcpy(__dstb, v77, *(*(v79 - 8) + 64));
    }

    else
    {
      (*(*(v78 - 8) + 16))(__dstb, v77, v78);
      __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v78);
    }

    v80 = v75[13];
    __dstc = (v73 + v80);
    v81 = &v74[v80];
    v82 = type metadata accessor for RegularizationKind(0);
    if (__swift_getEnumTagSinglePayload(v81, 1, v82))
    {
      v83 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for RegularizationKind?);
      memcpy(__dstc, v81, *(*(v83 - 8) + 64));
    }

    else
    {
      (*(*(v82 - 8) + 16))(__dstc, v81, v82);
      __swift_storeEnumTagSinglePayload(__dstc, 0, 1, v82);
    }

    *(v73 + v75[14]) = *&v74[v75[14]];
    *(v73 + v75[15]) = *&v74[v75[15]];
    v84 = v75[16];
    __dstf = (v73 + v84);
    v85 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLFewShotSoundClassifier.TemporalClassifier>);
    v86 = &v74[v84];
    v87 = *(*(v85 - 8) + 16);
    v87(__dstf, v86, v85);
    v87((v73 + v75[17]), &v74[v75[17]], v85);
    v88 = v75[18];
    v89 = (v88 + v73);
    v90 = &v74[v88];
    if (__swift_getEnumTagSinglePayload(v90, 1, v85))
    {
      v91 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLFewShotSoundClassifier.TemporalClassifier>?);
      memcpy(v89, v90, *(*(v91 - 8) + 64));
    }

    else
    {
      v87(v89, v90, v85);
      __swift_storeEnumTagSinglePayload(v89, 0, 1, v85);
    }

    v13 = a1;
    v92 = a3[12];
    v93 = *(a2 + v92);
    *(a1 + v92) = v93;
    v93;
  }

  return v13;
}

void destroy for MLFewShotSoundClassifier(uint64_t a1, int *a2)
{
  v2 = a1;
  v3 = type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0);
  v4 = a1 + *(v3 + 32);
  v5 = type metadata accessor for URL(0);
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v7 = a1 + *(v3 + 36);
  if (!__swift_getEnumTagSinglePayload(v7, 1, v5))
  {
    v6(v7, v5);
  }

  v8 = (a1 + a2[5]);
  v9 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v8, v9);
  v11 = a2;
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *v8;
      break;
    case 1:
      v52 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v14 = v8 + *(v52 + 20);
      v15 = type metadata accessor for DataFrame(0);
      v16 = *(*(v15 - 8) + 8);
      v17 = v14;
      v2 = a1;
      v16(v17, v15);
      v18 = v15;
      v11 = a2;
      v16(v8 + *(v52 + 24), v18);
      break;
    case 0:
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v8, v12) == 1)
      {
        v13 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v13 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v19 = __swift_instantiateConcreteTypeFromMangledName(v13);
      (*(*(v19 - 8) + 8))(v8, v19);
      break;
  }

  v20 = (v2 + v11[6]);
  v21 = swift_getEnumCaseMultiPayload(v20, v9);
  switch(v21)
  {
    case 2:
      *v20;
      break;
    case 1:
      v24 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v25 = v20 + *(v24 + 20);
      v26 = type metadata accessor for DataFrame(0);
      v27 = *(*(v26 - 8) + 8);
      v27(v25, v26);
      v28 = *(v24 + 24);
      v11 = a2;
      v29 = v26;
      v2 = a1;
      v27(v20 + v28, v29);
      break;
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

      v30 = __swift_instantiateConcreteTypeFromMangledName(v23);
      (*(*(v30 - 8) + 8))(v20, v30);
      break;
  }

  *(v2 + v11[8]);
  *(v2 + v11[9]);
  v31 = v2 + v11[10];
  v32 = type metadata accessor for Conv2D(0);
  (*(*(v32 - 8) + 8))(v31, v32);
  v53 = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(0);
  v33 = v31 + v53[5];
  v34 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v35 = v33 + *(v34 + 20);
  v36 = type metadata accessor for Conv1D(0);
  v37 = *(*(v36 - 8) + 8);
  v37(v35, v36);
  v37(v31 + v53[6] + *(v34 + 20), v36);
  v37(v31 + v53[7] + *(v34 + 20), v36);
  v37(v31 + v53[8] + *(v34 + 20), v36);
  v38 = v31 + *(type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0) + 20);
  v39 = type metadata accessor for Dense(0);
  v40 = *(*(v39 - 8) + 8);
  v40(v38, v39);
  v41 = type metadata accessor for MLFewShotSoundClassifier.MLP(0);
  v40(v38 + *(v41 + 20), v39);
  v42 = a1 + a2[11];
  v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLFewShotSoundClassifier.TemporalClassifier>);
  v44 = v42 + v43[12];
  v45 = type metadata accessor for GradientClippingMode(0);
  if (!__swift_getEnumTagSinglePayload(v44, 1, v45))
  {
    (*(*(v45 - 8) + 8))(v44, v45);
  }

  v46 = v42 + v43[13];
  v47 = type metadata accessor for RegularizationKind(0);
  if (!__swift_getEnumTagSinglePayload(v46, 1, v47))
  {
    (*(*(v47 - 8) + 8))(v46, v47);
  }

  v48 = v42 + v43[16];
  v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLFewShotSoundClassifier.TemporalClassifier>);
  v50 = *(*(v49 - 8) + 8);
  v50(v48, v49);
  v50(v42 + v43[17], v49);
  v51 = v42 + v43[18];
  if (!__swift_getEnumTagSinglePayload(v51, 1, v49))
  {
    v50(v51, v49);
  }
}

uint64_t initializeWithCopy for MLFewShotSoundClassifier(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0);
  v4 = *(v3 + 32);
  v5 = type metadata accessor for URL(0);
  __dst = *(*(v5 - 8) + 16);
  __dst(v4 + a1, a2 + v4, v5);
  v6 = *(v3 + 36);
  v7 = (v6 + a1);
  v8 = (a2 + v6);
  if (__swift_getEnumTagSinglePayload(v8, 1, v5))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(v7, v8, *(*(v9 - 8) + 64));
  }

  else
  {
    __dst(v7, v8, v5);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v5);
  }

  v10 = a3[5];
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  v13 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v12, v13);
  __dsta = v13;
  if (EnumCaseMultiPayload == 2)
  {
    v19 = *v12;
    swift_errorRetain(*v12);
    *v11 = v19;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    *v11 = *v12;
    v95 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v15 = *(v95 + 20);
    v97 = v11 + v15;
    v16 = type metadata accessor for DataFrame(0);
    v102 = v11;
    v17 = *(*(v16 - 8) + 16);
    v18 = v12 + v15;
    v13 = __dsta;
    v17(v97, v18, v16);
    v17(v102 + *(v95 + 24), v12 + *(v95 + 24), v16);
    v11 = v102;
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v21 = swift_getEnumCaseMultiPayload(v12, v20);
    v22 = v21 == 1;
    v23 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v21 == 1)
    {
      v23 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v24 = __swift_instantiateConcreteTypeFromMangledName(v23);
    (*(*(v24 - 8) + 16))(v11, v12, v24);
    swift_storeEnumTagMultiPayload(v11, v20, v22);
    v13 = __dsta;
  }

  swift_storeEnumTagMultiPayload(v11, v13, EnumCaseMultiPayload);
  v25 = a3[6];
  v26 = (a1 + v25);
  v27 = (a2 + v25);
  v28 = swift_getEnumCaseMultiPayload(v27, v13);
  if (v28 == 2)
  {
    v33 = *v27;
    swift_errorRetain(*v27);
    *v26 = v33;
  }

  else if (v28 == 1)
  {
    *v26 = *v27;
    v103 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v29 = *(v103 + 20);
    v98 = v26 + v29;
    v30 = type metadata accessor for DataFrame(0);
    v31 = *(*(v30 - 8) + 16);
    v32 = v27 + v29;
    v13 = __dsta;
    v31(v98, v32, v30);
    v31(v26 + *(v103 + 24), v27 + *(v103 + 24), v30);
    v28 = 1;
  }

  else
  {
    v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v35 = swift_getEnumCaseMultiPayload(v27, v34);
    v36 = v35 == 1;
    v37 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v35 == 1)
    {
      v37 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v38 = __swift_instantiateConcreteTypeFromMangledName(v37);
    (*(*(v38 - 8) + 16))(v26, v27, v38);
    swift_storeEnumTagMultiPayload(v26, v34, v36);
    v13 = __dsta;
  }

  swift_storeEnumTagMultiPayload(v26, v13, v28);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  v39 = a3[10];
  v40 = a1 + v39;
  v41 = a2 + v39;
  v42 = type metadata accessor for Conv2D(0);
  __dstd = *(*(v42 - 8) + 16);

  __dstd(v40, v41, v42);
  v43 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  *(*(v43 + 20) + v40) = *(*(v43 + 20) + v41);
  __dste = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(0);
  v44 = __dste[5];
  v45 = v44 + v40;
  v99 = v44 + v40;
  v104 = v41 + v44;
  *(v44 + v40) = *(v44 + v41);
  v46 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v47 = *(v46 + 20);
  v91 = v45 + v47;
  v48 = type metadata accessor for Conv1D(0);
  v49 = *(*(v48 - 8) + 16);
  v50 = v104 + v47;
  v51 = v48;
  v49(v91, v50);
  v52 = v49;
  *(*(v46 + 24) + v99) = *(*(v46 + 24) + v104);
  v53 = __dste[6];
  v105 = v40 + v53;
  v100 = v41 + v53;
  *(v53 + v40) = *(v53 + v41);
  v54 = v51;
  v96 = v51;
  v55 = v51;
  v56 = v52;
  (v52)(v40 + v53 + *(v46 + 20), v41 + v53 + *(v46 + 20), v55);
  *(*(v46 + 24) + v105) = *(*(v46 + 24) + v100);
  v57 = __dste[7];
  v106 = v40 + v57;
  v101 = v41 + v57;
  *(v57 + v40) = *(v57 + v41);
  v56(v40 + v57 + *(v46 + 20), v41 + v57 + *(v46 + 20), v54);
  v58 = v56;
  *(*(v46 + 24) + v106) = *(*(v46 + 24) + v101);
  v59 = __dste[8];
  v60 = v40 + v59;
  v61 = v41 + v59;
  *(v59 + v40) = *(v59 + v41);
  v58(v40 + v59 + *(v46 + 20), v41 + v59 + *(v46 + 20), v96);
  *(*(v46 + 24) + v60) = *(*(v46 + 24) + v61);
  v62 = *(type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0) + 20);
  v63 = v62 + v40;
  v64 = v62 + v41;
  v65 = type metadata accessor for Dense(0);
  v66 = *(*(v65 - 8) + 16);
  v66(v63, v64, v65);
  v67 = type metadata accessor for MLFewShotSoundClassifier.MLP(0);
  v66(*(v67 + 20) + v63, *(v67 + 20) + v64, v65);
  v68 = a3[11];
  v69 = a1 + v68;
  v70 = a2 + v68;
  *(a1 + v68) = *(a2 + v68);
  v71 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLFewShotSoundClassifier.TemporalClassifier>);
  v72 = v71[12];
  __dstb = (v69 + v72);
  v73 = (v70 + v72);
  v74 = type metadata accessor for GradientClippingMode(0);
  if (__swift_getEnumTagSinglePayload(v73, 1, v74))
  {
    v75 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for GradientClippingMode?);
    memcpy(__dstb, v73, *(*(v75 - 8) + 64));
  }

  else
  {
    (*(*(v74 - 8) + 16))(__dstb, v73, v74);
    __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v74);
  }

  v76 = v71[13];
  __dstc = (v69 + v76);
  v77 = (v70 + v76);
  v78 = type metadata accessor for RegularizationKind(0);
  if (__swift_getEnumTagSinglePayload(v77, 1, v78))
  {
    v79 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for RegularizationKind?);
    memcpy(__dstc, v77, *(*(v79 - 8) + 64));
  }

  else
  {
    (*(*(v78 - 8) + 16))(__dstc, v77, v78);
    __swift_storeEnumTagSinglePayload(__dstc, 0, 1, v78);
  }

  *(v69 + v71[14]) = *(v70 + v71[14]);
  *(v69 + v71[15]) = *(v70 + v71[15]);
  v80 = v71[16];
  __dstf = (v69 + v80);
  v81 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLFewShotSoundClassifier.TemporalClassifier>);
  v82 = v70 + v80;
  v83 = *(*(v81 - 8) + 16);
  v83(__dstf, v82, v81);
  v83((v69 + v71[17]), v70 + v71[17], v81);
  v84 = v71[18];
  v85 = (v84 + v69);
  v86 = (v84 + v70);
  if (__swift_getEnumTagSinglePayload(v86, 1, v81))
  {
    v87 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLFewShotSoundClassifier.TemporalClassifier>?);
    memcpy(v85, v86, *(*(v87 - 8) + 64));
  }

  else
  {
    v83(v85, v86, v81);
    __swift_storeEnumTagSinglePayload(v85, 0, 1, v81);
  }

  v88 = a3[12];
  v89 = *(a2 + v88);
  *(a1 + v88) = v89;
  v89;
  return a1;
}

uint64_t assignWithCopy for MLFewShotSoundClassifier(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  v3 = type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0);
  v4 = *(v3 + 32);
  v5 = type metadata accessor for URL(0);
  v119 = *(v5 - 8);
  __dst = *(v119 + 24);
  __dst(v4 + a1, a2 + v4, v5);
  v6 = *(v3 + 36);
  v7 = (v6 + a1);
  v8 = (a2 + v6);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v5);
  v10 = __swift_getEnumTagSinglePayload(v8, 1, v5);
  if (EnumTagSinglePayload)
  {
    if (!v10)
    {
      (*(v119 + 16))(v7, v8, v5);
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v5);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v119 + 8))(v7, v5, v11, __dst);
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(v7, v8, *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  __dst(v7, v8, v5);
LABEL_7:
  v13 = a1;
  v14 = a2;
  if (a1 != a2)
  {
    v15 = a3[5];
    v16 = (a1 + v15);
    v17 = (a2 + v15);
    outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for MLClassifierMetrics.Contents);
    __dsta = type metadata accessor for MLClassifierMetrics.Contents(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v17, __dsta);
    if (EnumCaseMultiPayload == 2)
    {
      v23 = *v17;
      swift_errorRetain(*v17);
      *v16 = v23;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *v16 = *v17;
      v120 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v19 = *(v120 + 20);
      v113 = v16 + v19;
      v20 = type metadata accessor for DataFrame(0);
      v21 = *(*(v20 - 8) + 16);
      v22 = v17 + v19;
      v13 = a1;
      v21(v113, v22, v20);
      v21(v16 + *(v120 + 24), v17 + *(v120 + 24), v20);
      EnumCaseMultiPayload = 1;
    }

    else
    {
      v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v25 = swift_getEnumCaseMultiPayload(v17, v24);
      v26 = v25 == 1;
      v27 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v25 == 1)
      {
        v27 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v28 = __swift_instantiateConcreteTypeFromMangledName(v27);
      (*(*(v28 - 8) + 16))(v16, v17, v28);
      swift_storeEnumTagMultiPayload(v16, v24, v26);
      v13 = a1;
    }

    swift_storeEnumTagMultiPayload(v16, __dsta, EnumCaseMultiPayload);
    v29 = a3[6];
    v30 = (v13 + v29);
    v31 = (a2 + v29);
    outlined destroy of MLActivityClassifier.ModelParameters(v30, type metadata accessor for MLClassifierMetrics.Contents);
    v32 = swift_getEnumCaseMultiPayload(v31, __dsta);
    if (v32 == 2)
    {
      v37 = *v31;
      swift_errorRetain(*v31);
      *v30 = v37;
    }

    else if (v32 == 1)
    {
      *v30 = *v31;
      v121 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v33 = *(v121 + 20);
      v114 = v30 + v33;
      v34 = type metadata accessor for DataFrame(0);
      v35 = *(*(v34 - 8) + 16);
      v36 = v31 + v33;
      v13 = a1;
      v35(v114, v36, v34);
      v35(v30 + *(v121 + 24), v31 + *(v121 + 24), v34);
      v32 = 1;
    }

    else
    {
      v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v39 = swift_getEnumCaseMultiPayload(v31, v38);
      v40 = v39 == 1;
      v41 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v39 == 1)
      {
        v41 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v42 = __swift_instantiateConcreteTypeFromMangledName(v41);
      (*(*(v42 - 8) + 16))(v30, v31, v42);
      swift_storeEnumTagMultiPayload(v30, v38, v40);
      v13 = a1;
    }

    swift_storeEnumTagMultiPayload(v30, __dsta, v32);
    v14 = a2;
  }

  *(v13 + a3[7]) = *(v14 + a3[7]);
  v43 = a3[8];
  v44 = v14;
  v45 = *(v13 + v43);
  *(v13 + v43) = *(v14 + v43);

  v45;
  v46 = a3[9];
  v47 = v44;
  v48 = *(v13 + v46);
  *(v13 + v46) = *(v44 + v46);

  v48;
  v49 = a3[10];
  v50 = v13 + v49;
  v51 = v47 + v49;
  v52 = type metadata accessor for Conv2D(0);
  (*(*(v52 - 8) + 24))(v50, v51, v52);
  v53 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  *(*(v53 + 20) + v50) = *(*(v53 + 20) + v51);
  __dstd = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(0);
  v54 = __dstd[5];
  v55 = v50 + v54;
  v115 = v50 + v54;
  v122 = v51 + v54;
  *(v54 + v50) = *(v54 + v51);
  *(v54 + v50 + 8) = *(v54 + v51 + 8);
  v56 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v57 = *(v56 + 20);
  v106 = v55 + v57;
  v58 = type metadata accessor for Conv1D(0);
  v59 = *(*(v58 - 8) + 24);
  v60 = v122 + v57;
  v61 = v58;
  v59(v106, v60);
  *(*(v56 + 24) + v115) = *(*(v56 + 24) + v122);
  v62 = __dstd[6];
  v123 = v50 + v62;
  v116 = v51 + v62;
  *(v62 + v50) = *(v62 + v51);
  *(v62 + v50 + 8) = *(v62 + v51 + 8);
  v111 = v61;
  (v59)(v50 + v62 + *(v56 + 20), v51 + v62 + *(v56 + 20), v61);
  *(*(v56 + 24) + v123) = *(*(v56 + 24) + v116);
  v63 = __dstd[7];
  v124 = v50 + v63;
  v117 = v51 + v63;
  *(v63 + v50) = *(v63 + v51);
  *(v63 + v50 + 8) = *(v63 + v51 + 8);
  (v59)(v50 + v63 + *(v56 + 20), v51 + v63 + *(v56 + 20), v61);
  v64 = v59;
  *(*(v56 + 24) + v124) = *(*(v56 + 24) + v117);
  v65 = __dstd[8];
  v66 = v50 + v65;
  v67 = v51 + v65;
  *(v65 + v50) = *(v65 + v51);
  *(v65 + v50 + 8) = *(v65 + v51 + 8);
  v64(v50 + v65 + *(v56 + 20), v51 + v65 + *(v56 + 20), v111);
  *(*(v56 + 24) + v66) = *(*(v56 + 24) + v67);
  v68 = *(type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0) + 20);
  v69 = v68 + v50;
  v70 = v68 + v51;
  v71 = type metadata accessor for Dense(0);
  v72 = *(*(v71 - 8) + 24);
  v72(v69, v70, v71);
  v73 = type metadata accessor for MLFewShotSoundClassifier.MLP(0);
  v72(*(v73 + 20) + v69, *(v73 + 20) + v70, v71);
  v74 = a3[11];
  v75 = (a1 + v74);
  v76 = a2 + v74;
  *v75 = *(a2 + v74);
  *(v75 + 1) = *(a2 + v74 + 4);
  *(v75 + 2) = *(a2 + v74 + 8);
  *(v75 + 3) = *(a2 + v74 + 12);
  v125 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLFewShotSoundClassifier.TemporalClassifier>);
  v77 = v125[12];
  __dstb = v75;
  v78 = &v75[v77];
  v112 = v76;
  v79 = (v76 + v77);
  v80 = type metadata accessor for GradientClippingMode(0);
  LODWORD(v69) = __swift_getEnumTagSinglePayload(v78, 1, v80);
  v81 = __swift_getEnumTagSinglePayload(v79, 1, v80);
  if (v69)
  {
    if (!v81)
    {
      (*(*(v80 - 8) + 16))(v78, v79, v80);
      __swift_storeEnumTagSinglePayload(v78, 0, 1, v80);
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v82 = *(v80 - 8);
  if (v81)
  {
    (*(v82 + 8))(v78, v80);
LABEL_28:
    v83 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for GradientClippingMode?);
    memcpy(v78, v79, *(*(v83 - 8) + 64));
    goto LABEL_29;
  }

  (*(v82 + 24))(v78, v79, v80);
LABEL_29:
  v84 = v125[13];
  v85 = &__dstb[v84];
  v86 = (v112 + v84);
  v87 = type metadata accessor for RegularizationKind(0);
  v88 = __swift_getEnumTagSinglePayload(v85, 1, v87);
  v89 = __swift_getEnumTagSinglePayload(v86, 1, v87);
  if (v88)
  {
    if (!v89)
    {
      (*(*(v87 - 8) + 16))(v85, v86, v87);
      __swift_storeEnumTagSinglePayload(v85, 0, 1, v87);
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v90 = *(v87 - 8);
  if (v89)
  {
    (*(v90 + 8))(v85, v87);
LABEL_34:
    v91 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for RegularizationKind?);
    memcpy(v85, v86, *(*(v91 - 8) + 64));
    goto LABEL_35;
  }

  (*(v90 + 24))(v85, v86, v87);
LABEL_35:
  *&__dstb[v125[14]] = *(v112 + v125[14]);
  *&__dstb[v125[15]] = *(v112 + v125[15]);
  v92 = v125[16];
  v93 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLFewShotSoundClassifier.TemporalClassifier>);
  v107 = *(v93 - 8);
  v94 = *(v107 + 24);
  v94(&__dstb[v92], v112 + v92, v93);
  v118 = v94;
  v94(&__dstb[v125[17]], v112 + v125[17], v93);
  v95 = v125[18];
  v96 = (v95 + v112);
  __dstc = &__dstb[v95];
  LODWORD(v94) = __swift_getEnumTagSinglePayload(__dstc, 1, v93);
  v97 = __swift_getEnumTagSinglePayload(v96, 1, v93);
  if (v94)
  {
    v99 = a1;
    if (!v97)
    {
      (*(v107 + 16))(__dstc, v96, v93);
      __swift_storeEnumTagSinglePayload(__dstc, 0, 1, v93);
      goto LABEL_46;
    }

    v100 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLFewShotSoundClassifier.TemporalClassifier>?) - 8) + 64);
    v101 = __dstc;
  }

  else
  {
    v99 = a1;
    if (!v97)
    {
      v118(__dstc, v96, v93);
      goto LABEL_46;
    }

    (*(v107 + 8))(__dstc, v93, v98, v118);
    v100 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLFewShotSoundClassifier.TemporalClassifier>?) - 8) + 64);
    v101 = __dstc;
  }

  memcpy(v101, v96, v100);
LABEL_46:
  v102 = a3[12];
  v103 = *(a2 + v102);
  v104 = *(v99 + v102);
  *(v99 + v102) = v103;
  v103;

  return v99;
}

uint64_t initializeWithTake for MLFewShotSoundClassifier(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0);
  v4 = *(v3 + 32);
  v5 = type metadata accessor for URL(0);
  __dst = *(*(v5 - 8) + 32);
  __dst(v4 + a1, a2 + v4, v5);
  v6 = *(v3 + 36);
  v7 = (v6 + a1);
  v8 = (a2 + v6);
  if (__swift_getEnumTagSinglePayload(v8, 1, v5))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(v7, v8, *(*(v9 - 8) + 64));
  }

  else
  {
    __dst(v7, v8, v5);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v5);
  }

  v10 = a3[5];
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  v13 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v12, v13);
  if (EnumCaseMultiPayload == 1)
  {
    *v11 = *v12;
    v100 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v23 = *(v100 + 20);
    __dstc = v13;
    v24 = type metadata accessor for DataFrame(0);
    v25 = *(*(v24 - 8) + 32);
    v25(&v11[v23], &v12[v23], v24);
    v26 = v24;
    v13 = __dstc;
    v25(&v11[*(v100 + 24)], &v12[*(v100 + 24)], v26);
    v22 = 1;
    v20 = v11;
    v21 = __dstc;
LABEL_10:
    swift_storeEnumTagMultiPayload(v20, v21, v22);
    goto LABEL_12;
  }

  if (!EnumCaseMultiPayload)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v16 = swift_getEnumCaseMultiPayload(v12, v15);
    v17 = v16 == 1;
    v18 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v16 == 1)
    {
      v18 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v19 = __swift_instantiateConcreteTypeFromMangledName(v18);
    (*(*(v19 - 8) + 32))(v11, v12, v19);
    swift_storeEnumTagMultiPayload(v11, v15, v17);
    v20 = v11;
    v21 = v13;
    v22 = 0;
    goto LABEL_10;
  }

  memcpy(v11, v12, *(*(v13 - 8) + 64));
LABEL_12:
  v27 = a3[6];
  v28 = (a1 + v27);
  v29 = (a2 + v27);
  v30 = swift_getEnumCaseMultiPayload(v29, v13);
  if (v30 == 1)
  {
    *v28 = *v29;
    v101 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v39 = *(v101 + 20);
    __dstd = v13;
    v40 = type metadata accessor for DataFrame(0);
    v41 = *(*(v40 - 8) + 32);
    v41(&v28[v39], &v29[v39], v40);
    v41(&v28[*(v101 + 24)], &v29[*(v101 + 24)], v40);
    v38 = 1;
    v36 = v28;
    v37 = __dstd;
LABEL_18:
    swift_storeEnumTagMultiPayload(v36, v37, v38);
    goto LABEL_20;
  }

  if (!v30)
  {
    v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v32 = swift_getEnumCaseMultiPayload(v29, v31);
    v33 = v32 == 1;
    v34 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v32 == 1)
    {
      v34 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v35 = __swift_instantiateConcreteTypeFromMangledName(v34);
    (*(*(v35 - 8) + 32))(v28, v29, v35);
    swift_storeEnumTagMultiPayload(v28, v31, v33);
    v36 = v28;
    v37 = v13;
    v38 = 0;
    goto LABEL_18;
  }

  memcpy(v28, v29, *(*(v13 - 8) + 64));
LABEL_20:
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  v42 = a3[10];
  v43 = a1 + v42;
  v44 = a2 + v42;
  v45 = type metadata accessor for Conv2D(0);
  (*(*(v45 - 8) + 32))(v43, v44, v45);
  v46 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  *(*(v46 + 20) + v43) = *(*(v46 + 20) + v44);
  __dste = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(0);
  v47 = __dste[5];
  v48 = v47 + v43;
  v97 = v47 + v43;
  v102 = v44 + v47;
  *(v47 + v43) = *(v47 + v44);
  v49 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v50 = *(v49 + 20);
  v92 = v48 + v50;
  v51 = type metadata accessor for Conv1D(0);
  v52 = *(*(v51 - 8) + 32);
  v53 = v102 + v50;
  v54 = v51;
  v52(v92, v53);
  v55 = v52;
  *(*(v49 + 24) + v97) = *(*(v49 + 24) + v102);
  v56 = __dste[6];
  v103 = v43 + v56;
  v98 = v44 + v56;
  *(v56 + v43) = *(v56 + v44);
  v57 = v54;
  v96 = v54;
  v58 = v54;
  v59 = v55;
  (v55)(v43 + v56 + *(v49 + 20), v44 + v56 + *(v49 + 20), v58);
  *(*(v49 + 24) + v103) = *(*(v49 + 24) + v98);
  v60 = __dste[7];
  v104 = v43 + v60;
  v99 = v44 + v60;
  *(v60 + v43) = *(v60 + v44);
  v59(v43 + v60 + *(v49 + 20), v44 + v60 + *(v49 + 20), v57);
  v61 = v59;
  *(*(v49 + 24) + v104) = *(*(v49 + 24) + v99);
  v62 = __dste[8];
  v63 = v43 + v62;
  v64 = v44 + v62;
  *(v62 + v43) = *(v62 + v44);
  v61(v43 + v62 + *(v49 + 20), v44 + v62 + *(v49 + 20), v96);
  *(*(v49 + 24) + v63) = *(*(v49 + 24) + v64);
  v65 = *(type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0) + 20);
  v66 = v65 + v43;
  v67 = v65 + v44;
  v68 = type metadata accessor for Dense(0);
  v69 = *(*(v68 - 8) + 32);
  v69(v66, v67, v68);
  v70 = type metadata accessor for MLFewShotSoundClassifier.MLP(0);
  v69(*(v70 + 20) + v66, *(v70 + 20) + v67, v68);
  v71 = a3[11];
  v72 = a1 + v71;
  v73 = a2 + v71;
  *(a1 + v71) = *(a2 + v71);
  v74 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLFewShotSoundClassifier.TemporalClassifier>);
  v75 = v74[12];
  __dsta = (v72 + v75);
  v76 = (v73 + v75);
  v77 = type metadata accessor for GradientClippingMode(0);
  if (__swift_getEnumTagSinglePayload(v76, 1, v77))
  {
    v78 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for GradientClippingMode?);
    memcpy(__dsta, v76, *(*(v78 - 8) + 64));
  }

  else
  {
    (*(*(v77 - 8) + 32))(__dsta, v76, v77);
    __swift_storeEnumTagSinglePayload(__dsta, 0, 1, v77);
  }

  v79 = v74[13];
  __dstb = (v72 + v79);
  v80 = (v73 + v79);
  v81 = type metadata accessor for RegularizationKind(0);
  if (__swift_getEnumTagSinglePayload(v80, 1, v81))
  {
    v82 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for RegularizationKind?);
    memcpy(__dstb, v80, *(*(v82 - 8) + 64));
  }

  else
  {
    (*(*(v81 - 8) + 32))(__dstb, v80, v81);
    __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v81);
  }

  *(v72 + v74[14]) = *(v73 + v74[14]);
  *(v72 + v74[15]) = *(v73 + v74[15]);
  v83 = v74[16];
  __dstf = (v72 + v83);
  v84 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLFewShotSoundClassifier.TemporalClassifier>);
  v85 = v73 + v83;
  v86 = *(*(v84 - 8) + 32);
  v86(__dstf, v85, v84);
  v86((v72 + v74[17]), v73 + v74[17], v84);
  v87 = v74[18];
  v88 = (v87 + v72);
  v89 = (v87 + v73);
  if (__swift_getEnumTagSinglePayload(v89, 1, v84))
  {
    v90 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLFewShotSoundClassifier.TemporalClassifier>?);
    memcpy(v88, v89, *(*(v90 - 8) + 64));
  }

  else
  {
    v86(v88, v89, v84);
    __swift_storeEnumTagSinglePayload(v88, 0, 1, v84);
  }

  result = a1;
  *(a1 + a3[12]) = *(a2 + a3[12]);
  return result;
}

uint64_t assignWithTake for MLFewShotSoundClassifier(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0);
  v4 = *(v3 + 32);
  v5 = type metadata accessor for URL(0);
  v125 = *(v5 - 8);
  __dst = *(v125 + 40);
  __dst(v4 + a1, a2 + v4, v5);
  v6 = *(v3 + 36);
  v7 = (v6 + a1);
  v8 = (a2 + v6);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v5);
  v10 = __swift_getEnumTagSinglePayload(v8, 1, v5);
  if (EnumTagSinglePayload)
  {
    if (!v10)
    {
      (*(v125 + 32))(v7, v8, v5);
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v5);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v125 + 8))(v7, v5, v11, __dst);
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(v7, v8, *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  __dst(v7, v8, v5);
LABEL_7:
  v13 = a1;
  v14 = a2;
  if (a1 == a2)
  {
    goto LABEL_24;
  }

  v15 = a3[5];
  v16 = (a1 + v15);
  v17 = (a2 + v15);
  outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for MLClassifierMetrics.Contents);
  v18 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v17, v18);
  __dsta = v18;
  if (EnumCaseMultiPayload == 1)
  {
    *v16 = *v17;
    v126 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v30 = *(v126 + 20);
    v118 = &v16[v30];
    v31 = type metadata accessor for DataFrame(0);
    v32 = *(*(v31 - 8) + 32);
    v33 = &v17[v30];
    v18 = __dsta;
    v32(v118, v33, v31);
    v34 = v31;
    v13 = a1;
    v32(&v16[*(v126 + 24)], &v17[*(v126 + 24)], v34);
    v14 = a2;
    v29 = 1;
    v27 = v16;
    v28 = __dsta;
LABEL_14:
    swift_storeEnumTagMultiPayload(v27, v28, v29);
    goto LABEL_16;
  }

  if (!EnumCaseMultiPayload)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v21 = swift_getEnumCaseMultiPayload(v17, v20);
    v22 = v21 == 1;
    v23 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v21 == 1)
    {
      v23 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v24 = __swift_instantiateConcreteTypeFromMangledName(v23);
    (*(*(v24 - 8) + 32))(v16, v17, v24);
    v25 = v20;
    v14 = a2;
    v26 = v22;
    v18 = __dsta;
    swift_storeEnumTagMultiPayload(v16, v25, v26);
    v27 = v16;
    v28 = __dsta;
    v29 = 0;
    goto LABEL_14;
  }

  memcpy(v16, v17, *(*(v18 - 8) + 64));
LABEL_16:
  v35 = a3[6];
  v36 = (v13 + v35);
  v37 = (v14 + v35);
  outlined destroy of MLActivityClassifier.ModelParameters(v36, type metadata accessor for MLClassifierMetrics.Contents);
  v38 = swift_getEnumCaseMultiPayload(v37, v18);
  if (v38 == 1)
  {
    *v36 = *v37;
    v127 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v48 = *(v127 + 20);
    v49 = type metadata accessor for DataFrame(0);
    v50 = *(*(v49 - 8) + 32);
    v50(&v36[v48], &v37[v48], v49);
    v51 = v49;
    v13 = a1;
    v50(&v36[*(v127 + 24)], &v37[*(v127 + 24)], v51);
    v14 = a2;
    v47 = 1;
    v45 = v36;
    v46 = __dsta;
LABEL_22:
    swift_storeEnumTagMultiPayload(v45, v46, v47);
    goto LABEL_24;
  }

  if (!v38)
  {
    v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v40 = swift_getEnumCaseMultiPayload(v37, v39);
    v41 = v40 == 1;
    v42 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v40 == 1)
    {
      v42 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v43 = __swift_instantiateConcreteTypeFromMangledName(v42);
    (*(*(v43 - 8) + 32))(v36, v37, v43);
    v44 = v39;
    v14 = a2;
    swift_storeEnumTagMultiPayload(v36, v44, v41);
    v45 = v36;
    v46 = __dsta;
    v47 = 0;
    goto LABEL_22;
  }

  memcpy(v36, v37, *(*(v18 - 8) + 64));
LABEL_24:
  *(v13 + a3[7]) = *(v14 + a3[7]);
  v52 = a3[8];
  v53 = *(v13 + v52);
  *(v13 + v52) = *(v14 + v52);
  v53;
  v54 = a3[9];
  v55 = *(v13 + v54);
  *(v13 + v54) = *(v14 + v54);
  v55;
  v56 = v13;
  v57 = a3[10];
  v58 = v56 + v57;
  v59 = v14 + v57;
  v60 = type metadata accessor for Conv2D(0);
  (*(*(v60 - 8) + 40))(v58, v59, v60);
  v61 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  *(*(v61 + 20) + v58) = *(*(v61 + 20) + v59);
  __dstd = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(0);
  v62 = __dstd[5];
  v63 = v58 + v62;
  v121 = v58 + v62;
  v128 = v59 + v62;
  *(v62 + v58) = *(v62 + v59);
  v64 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v65 = *(v64 + 20);
  v113 = v65 + v63;
  v66 = type metadata accessor for Conv1D(0);
  v67 = *(*(v66 - 8) + 40);
  v68 = v128 + v65;
  v69 = v66;
  v67(v113, v68);
  *(*(v64 + 24) + v121) = *(*(v64 + 24) + v128);
  v70 = __dstd[6];
  v129 = v58 + v70;
  v122 = v59 + v70;
  *(v70 + v58) = *(v70 + v59);
  v119 = v69;
  (v67)(v58 + v70 + *(v64 + 20), v59 + v70 + *(v64 + 20), v69);
  *(*(v64 + 24) + v129) = *(*(v64 + 24) + v122);
  v71 = __dstd[7];
  v130 = v58 + v71;
  v123 = v59 + v71;
  *(v71 + v58) = *(v71 + v59);
  (v67)(v58 + v71 + *(v64 + 20), v59 + v71 + *(v64 + 20), v69);
  v72 = v67;
  *(*(v64 + 24) + v130) = *(*(v64 + 24) + v123);
  v73 = __dstd[8];
  v74 = v58 + v73;
  v75 = v59 + v73;
  *(v73 + v58) = *(v73 + v59);
  v72(v58 + v73 + *(v64 + 20), v59 + v73 + *(v64 + 20), v119);
  *(*(v64 + 24) + v74) = *(*(v64 + 24) + v75);
  v76 = *(type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0) + 20);
  v77 = v76 + v58;
  v78 = v76 + v59;
  v79 = type metadata accessor for Dense(0);
  v80 = *(*(v79 - 8) + 40);
  v80(v77, v78, v79);
  v81 = type metadata accessor for MLFewShotSoundClassifier.MLP(0);
  v80(*(v81 + 20) + v77, *(v81 + 20) + v78, v79);
  v82 = a3[11];
  v83 = (a1 + v82);
  v84 = a2 + v82;
  *(a1 + v82) = *(a2 + v82);
  v131 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLFewShotSoundClassifier.TemporalClassifier>);
  v85 = v131[12];
  __dstb = v83;
  v86 = &v83[v85];
  v120 = v84;
  v87 = (v84 + v85);
  v88 = type metadata accessor for GradientClippingMode(0);
  LODWORD(v77) = __swift_getEnumTagSinglePayload(v86, 1, v88);
  v89 = __swift_getEnumTagSinglePayload(v87, 1, v88);
  if (v77)
  {
    if (!v89)
    {
      (*(*(v88 - 8) + 32))(v86, v87, v88);
      __swift_storeEnumTagSinglePayload(v86, 0, 1, v88);
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v90 = *(v88 - 8);
  if (v89)
  {
    (*(v90 + 8))(v86, v88);
LABEL_29:
    v91 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for GradientClippingMode?);
    memcpy(v86, v87, *(*(v91 - 8) + 64));
    goto LABEL_30;
  }

  (*(v90 + 40))(v86, v87, v88);
LABEL_30:
  v92 = v131[13];
  v93 = &__dstb[v92];
  v94 = (v120 + v92);
  v95 = type metadata accessor for RegularizationKind(0);
  v96 = __swift_getEnumTagSinglePayload(v93, 1, v95);
  v97 = __swift_getEnumTagSinglePayload(v94, 1, v95);
  if (v96)
  {
    if (!v97)
    {
      (*(*(v95 - 8) + 32))(v93, v94, v95);
      __swift_storeEnumTagSinglePayload(v93, 0, 1, v95);
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v98 = *(v95 - 8);
  if (v97)
  {
    (*(v98 + 8))(v93, v95);
LABEL_35:
    v99 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for RegularizationKind?);
    memcpy(v93, v94, *(*(v99 - 8) + 64));
    goto LABEL_36;
  }

  (*(v98 + 40))(v93, v94, v95);
LABEL_36:
  *&__dstb[v131[14]] = *(v120 + v131[14]);
  *&__dstb[v131[15]] = *(v120 + v131[15]);
  v100 = v131[16];
  v101 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLFewShotSoundClassifier.TemporalClassifier>);
  v114 = *(v101 - 8);
  v102 = *(v114 + 40);
  v102(&__dstb[v100], v120 + v100, v101);
  v124 = v102;
  v102(&__dstb[v131[17]], v120 + v131[17], v101);
  v103 = v131[18];
  v104 = (v103 + v120);
  __dstc = &__dstb[v103];
  LODWORD(v102) = __swift_getEnumTagSinglePayload(__dstc, 1, v101);
  v105 = __swift_getEnumTagSinglePayload(v104, 1, v101);
  if (v102)
  {
    v107 = a1;
    if (!v105)
    {
      (*(v114 + 32))(__dstc, v104, v101);
      __swift_storeEnumTagSinglePayload(__dstc, 0, 1, v101);
      goto LABEL_47;
    }

    v108 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLFewShotSoundClassifier.TemporalClassifier>?) - 8) + 64);
    v109 = __dstc;
  }

  else
  {
    v107 = a1;
    if (!v105)
    {
      v124(__dstc, v104, v101);
      goto LABEL_47;
    }

    (*(v114 + 8))(__dstc, v101, v106, v124);
    v108 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLFewShotSoundClassifier.TemporalClassifier>?) - 8) + 64);
    v109 = __dstc;
  }

  memcpy(v109, v104, v108);
LABEL_47:
  v110 = a3[12];
  v111 = *(v107 + v110);
  *(v107 + v110) = *(a2 + v110);

  return v107;
}

uint64_t sub_A072A(uint64_t a1, unsigned int a2, int *a3)
{
  v4 = a1;
  v5 = type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  v5 = type metadata accessor for MLClassifierMetrics(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v6 = a3[5];
LABEL_4:
    v4 = v6 + a1;
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v5 = type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0);
    if (*(*(v5 - 8) + 84) == a2)
    {
      v6 = a3[10];
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLFewShotSoundClassifier.TemporalClassifier>);
      v6 = a3[11];
    }

    goto LABEL_4;
  }

  result = 0;
  if ((*(a1 + a3[8]) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + a3[8]) >> 1) + 1;
  }

  return result;
}

uint64_t sub_A07E8(uint64_t a1, unsigned int a2, int a3, int *a4)
{
  v6 = a1;
  v7 = type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0);
  if (*(*(v7 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
  }

  v7 = type metadata accessor for MLClassifierMetrics(0);
  if (*(*(v7 - 8) + 84) == a3)
  {
    v8 = a4[5];
LABEL_4:
    v6 = v8 + a1;
    return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
  }

  if (a3 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0);
    if (*(*(v7 - 8) + 84) == a3)
    {
      v8 = a4[10];
    }

    else
    {
      v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLFewShotSoundClassifier.TemporalClassifier>);
      v8 = a4[11];
    }

    goto LABEL_4;
  }

  result = a4[8];
  *(a1 + result) = 2 * (a2 - 1);
  return result;
}

uint64_t type metadata completion function for MLFewShotSoundClassifier(uint64_t a1)
{
  result = type metadata accessor for MLFewShotSoundClassifier.ModelParameters(319);
  if (v2 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = type metadata accessor for MLClassifierMetrics.Contents(319);
    if (v3 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      v8 = v7;
      v9 = &value witness table for Builtin.Int64 + 64;
      v10 = &value witness table for Builtin.BridgeObject + 64;
      v11 = &value witness table for Builtin.BridgeObject + 64;
      result = type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(319);
      if (v4 <= 0x3F)
      {
        v12 = *(result - 8) + 64;
        result = type metadata accessor for Adam<MLFewShotSoundClassifier.TemporalClassifier>(319);
        if (v5 <= 0x3F)
        {
          v13 = *(result - 8) + 64;
          v14 = &value witness table for Builtin.UnknownObject + 64;
          swift_initStructMetadata(a1, 256, 9, &v6, a1 + 16);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for Adam<MLFewShotSoundClassifier.TemporalClassifier>(uint64_t a1)
{
  result = lazy cache variable for type metadata for Adam<MLFewShotSoundClassifier.TemporalClassifier>;
  if (!lazy cache variable for type metadata for Adam<MLFewShotSoundClassifier.TemporalClassifier>)
  {
    v2 = type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(255);
    v3 = lazy protocol witness table accessor for type MLFewShotSoundClassifier.TemporalClassifier and conformance MLFewShotSoundClassifier.TemporalClassifier();
    result = type metadata accessor for Adam(a1, v2, v3);
    if (!v4)
    {
      lazy cache variable for type metadata for Adam<MLFewShotSoundClassifier.TemporalClassifier> = result;
    }
  }

  return result;
}

uint64_t outlined init with take of MLFewShotSoundClassifier.TemporalClassifier?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLFewShotSoundClassifier.TemporalClassifier?);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t outlined assign with take of MLClassifierMetrics(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3(0);
  (*(*(v3 - 8) + 40))(a2, a1, v3);
  return a2;
}

uint64_t sub_A0A51()
{
  v1 = type metadata accessor for ComputeDevice(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = ~*(v2 + 80) & (v3 + 24);
  v5 = v4 + v0;
  v6 = *(v2 + 64) + v4;
  (*(v2 + 8))(v5, v1);
  return swift_deallocObject(v0, v6, v3 | 7);
}

uint64_t MLImageClassifier.ModelParameters.algorithm.getter()
{
  v2 = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLImageClassifier.ModelParameters.ModelAlgorithmType?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  outlined init with copy of Any?(v1 + 48, v11);
  if (v12)
  {
    v6 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
    v7 = swift_dynamicCast(v11, v11, &type metadata for Any + 8, v6, 6);
    __swift_storeEnumTagSinglePayload(v11, v7 ^ 1u, 1, v6);
    if (__swift_getEnumTagSinglePayload(v11, 1, v6) != 1)
    {
      return outlined init with take of MLClassifierMetrics(v11, v2, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
    }
  }

  else
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v11, &demangling cache variable for type metadata for Any?);
    v6 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v6);
  }

  v9 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (featureExtractor: MLImageClassifier.FeatureExtractorType, classifier: MLImageClassifier.ModelParameters.ClassifierType)) + 48);
  *v2 = 1;
  *(v2 + 8) = 0;
  v10 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  swift_storeEnumTagMultiPayload(v2, v10, 0);
  *(v2 + v9) = 0;
  type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  result = __swift_getEnumTagSinglePayload(v11, 1, v6);
  if (result != 1)
  {
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v11, &demangling cache variable for type metadata for MLImageClassifier.ModelParameters.ModelAlgorithmType?);
  }

  return result;
}

uint64_t MLImageClassifier.ModelParameters.augmentationOptions.setter(uint64_t *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

uint64_t MLImageClassifier.ModelParameters.algorithm.setter(uint64_t a1)
{
  v4[3] = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  outlined init with take of MLClassifierMetrics(a1, boxed_opaque_existential_0, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  return outlined assign with take of Any?(v4, v1 + 48);
}

void (*MLImageClassifier.ModelParameters.algorithm.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = malloc(0x60uLL);
  *a1 = v2;
  v2[8] = v1;
  v3 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  v2[9] = v3;
  v4 = *(*(v3 - 8) + 64);
  v2[10] = malloc(v4);
  v2[11] = malloc(v4);
  MLImageClassifier.ModelParameters.algorithm.getter();
  return MLImageClassifier.ModelParameters.algorithm.modify;
}

void MLImageClassifier.ModelParameters.algorithm.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[11];
  v4 = (*a1)[10];
  if (a2)
  {
    v5 = v2[8];
    v6 = v2[9];
    outlined init with copy of MLTrainingSessionParameters(v2[11], v2[10], type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
    v2[3] = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2);
    outlined init with take of MLClassifierMetrics(v4, boxed_opaque_existential_0, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
    outlined assign with take of Any?(v2, v5 + 48);
    outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  }

  else
  {
    v8 = v2[8];
    v2[7] = v2[9];
    v9 = __swift_allocate_boxed_opaque_existential_0(v2 + 4);
    outlined init with take of MLClassifierMetrics(v3, v9, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
    outlined assign with take of Any?((v2 + 4), v8 + 48);
  }

  free(v3);
  free(v4);
  free(v2);
}

uint64_t MLImageClassifier.ModelParameters.validationData.getter()
{
  v1 = *(*(type metadata accessor for MLImageClassifier.DataSource(0) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = alloca(v5);
  v9 = alloca(v5);
  outlined init with copy of Any?(v0 + 16, &v16);
  if (!v17)
  {
    BUG();
  }

  outlined init with take of Any(&v16, v15);
  swift_dynamicCast(&v14, v15, &type metadata for Any + 8, v4, 7);
  outlined init with copy of MLTrainingSessionParameters(&v14, &v14, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v14, v4);
  v11 = EnumCaseMultiPayload;
  switch(EnumCaseMultiPayload)
  {
    case 0u:
      break;
    case 1u:
      outlined init with take of MLClassifierMetrics(&v14, &v14, type metadata accessor for MLImageClassifier.DataSource);
      v11 = static _ImageUtilities.getImageURLsAndLabels(from:)(&v14);
      outlined destroy of MLActivityClassifier.ModelParameters(&v14, type metadata accessor for MLImageClassifier.DataSource);
      break;
    case 2u:
      v11 = v14;
      break;
    case 3u:
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [URL]);
      v11 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v12, &protocol witness table for String);
      break;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(&v14, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  return v11;
}

uint64_t key path setter for MLImageClassifier.ModelParameters.validationData : MLImageClassifier.ModelParameters(uint64_t *a1)
{
  v1 = *a1;

  return MLImageClassifier.ModelParameters.validationData.setter(v1);
}

uint64_t MLImageClassifier.ModelParameters.validationData.setter(uint64_t a1)
{
  v16 = v1;
  v2 = 0;
  v3 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = alloca(v4);
  v8 = alloca(v4);
  if (a1)
  {
    if (*(a1 + 16))
    {
      *&v13 = a1;
      v9 = type metadata accessor for MLImageClassifier.DataSource(0);
      swift_storeEnumTagMultiPayload(&v13, v9, 2);
      v12 = 1;
    }

    else
    {
      a1;
      v12 = 3;
    }

    v2 = v12;
  }

  else
  {
    v13 = 0;
    v14 = 256;
  }

  swift_storeEnumTagMultiPayload(&v13, v3, v2);
  outlined init with take of MLClassifierMetrics(&v13, &v13, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  v15 = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v13);
  outlined init with take of MLClassifierMetrics(&v13, boxed_opaque_existential_0, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  return outlined assign with take of Any?(&v13, v16 + 16);
}

uint64_t MLImageClassifier.ModelParameters.validation.getter()
{
  v2 = v0;
  outlined init with copy of Any?(v1 + 16, &v6);
  if (!v7)
  {
    BUG();
  }

  outlined init with take of Any(&v6, v5);
  v3 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  return swift_dynamicCast(v2, v5, &type metadata for Any + 8, v3, 7);
}

uint64_t MLImageClassifier.ModelParameters.validation.setter(uint64_t a1)
{
  v4[3] = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  outlined init with take of MLClassifierMetrics(a1, boxed_opaque_existential_0, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  return outlined assign with take of Any?(v4, v1 + 16);
}

uint64_t (*MLImageClassifier.ModelParameters.validationData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = MLImageClassifier.ModelParameters.validationData.getter();
  return MLImageClassifier.ModelParameters.validationData.modify;
}

uint64_t MLImageClassifier.ModelParameters.validationData.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    return MLImageClassifier.ModelParameters.validationData.setter(*a1);
  }

  MLImageClassifier.ModelParameters.validationData.setter(v2);
  return v2;
}

uint64_t key path setter for MLImageClassifier.ModelParameters.algorithm : MLImageClassifier.ModelParameters(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void *))
{
  v13[0] = v6;
  v9 = *(*((a5)(0, a2, a3, a4) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  outlined init with copy of MLTrainingSessionParameters(a1, v13, a5);
  return a6(v13);
}

void (*MLImageClassifier.ModelParameters.validation.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = malloc(0xA0uLL);
  *a1 = v2;
  *(v2 + 16) = v1;
  v3 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  *(v2 + 17) = v3;
  v4 = *(*(v3 - 8) + 64);
  *(v2 + 18) = malloc(v4);
  v5 = malloc(v4);
  *(v2 + 19) = v5;
  outlined init with copy of Any?(v1 + 16, (v2 + 2));
  if (!*(v2 + 7))
  {
    BUG();
  }

  outlined init with take of Any(v2 + 2, v2);
  swift_dynamicCast(v5, v2, &type metadata for Any + 8, v3, 7);
  return MLImageClassifier.ModelParameters.validation.modify;
}

void MLImageClassifier.ModelParameters.validation.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[19];
  v4 = (*a1)[18];
  v5 = (*a1)[17];
  v6 = (*a1)[16] + 16;
  if (a2)
  {
    v10 = (*a1)[18];
    outlined init with copy of MLTrainingSessionParameters((*a1)[19], v4, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
    v2[11] = v5;
    v7 = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    outlined init with take of MLClassifierMetrics(v10, boxed_opaque_existential_0, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
    outlined assign with take of Any?((v2 + 8), v6);
    outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  }

  else
  {
    v2[15] = v5;
    v7 = v4;
    v9 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    outlined init with take of MLClassifierMetrics(v3, v9, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
    outlined assign with take of Any?((v2 + 12), v6);
  }

  free(v3);
  free(v7);
  free(v2);
}

uint64_t MLImageClassifier.ModelParameters.featureExtractor.getter()
{
  v1 = v0;
  v2 = *(*(type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  MLImageClassifier.ModelParameters.algorithm.getter();
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (featureExtractor: MLImageClassifier.FeatureExtractorType, classifier: MLImageClassifier.ModelParameters.ClassifierType));
  *&v7[*(v5 + 48)];
  return outlined init with take of MLClassifierMetrics(v7, v1, type metadata accessor for MLImageClassifier.FeatureExtractorType);
}

uint64_t MLImageClassifier.ModelParameters.featureExtractor.setter(uint64_t a1)
{
  v14 = a1;
  v15 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  v2 = *(*(v15 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = alloca(v2);
  v6 = alloca(v2);
  v16 = v12;
  MLImageClassifier.ModelParameters.algorithm.getter();
  v7 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (featureExtractor: MLImageClassifier.FeatureExtractorType, classifier: MLImageClassifier.ModelParameters.ClassifierType)) + 48);
  v8 = *&v12[v7];
  v9 = v14;
  outlined init with copy of MLTrainingSessionParameters(v14, v12, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  *&v12[v7] = v8;
  v13[3] = v15;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  outlined init with take of MLClassifierMetrics(v12, boxed_opaque_existential_0, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  outlined assign with take of Any?(v13, v1 + 48);
  outlined destroy of MLActivityClassifier.ModelParameters(v9, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  return outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for MLImageClassifier.FeatureExtractorType);
}

uint64_t (*MLImageClassifier.ModelParameters.featureExtractor.modify(void *a1))()
{
  *a1 = v1;
  v2 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  v3 = malloc(*(*(v2 - 8) + 64));
  a1[1] = v3;
  v4 = *(*(type metadata accessor for MLImageClassifier.FeatureExtractorType(0) - 8) + 64);
  a1[2] = malloc(v4);
  v5 = malloc(v4);
  a1[3] = v5;
  MLImageClassifier.ModelParameters.algorithm.getter();
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (featureExtractor: MLImageClassifier.FeatureExtractorType, classifier: MLImageClassifier.ModelParameters.ClassifierType));
  *&v3[*(v6 + 48)];
  outlined init with take of MLClassifierMetrics(v3, v5, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  return MLImageClassifier.ModelParameters.featureExtractor.modify;
}

void MLImageClassifier.ModelParameters.featureExtractor.modify(void *a1, char a2)
{
  v2 = a1[3];
  v3 = a1[2];
  v4 = a1[1];
  if (a2)
  {
    outlined init with copy of MLTrainingSessionParameters(a1[3], v3, type metadata accessor for MLImageClassifier.FeatureExtractorType);
    MLImageClassifier.ModelParameters.featureExtractor.setter(v3);
    outlined destroy of MLActivityClassifier.ModelParameters(v2, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  }

  else
  {
    MLImageClassifier.ModelParameters.featureExtractor.setter(a1[3]);
  }

  free(v2);
  free(v3);
  free(v4);
}

uint64_t MLImageClassifier.ModelParameters.init(validation:maxIterations:augmentation:algorithm:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v23 = a4;
  v28 = a2;
  v27 = a1;
  v6 = v4;
  v24 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  v7 = *(*(v24 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v25 = &v20;
  v10 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v14 = *a3;
  v26 = v6 + 48;
  *(v6 + 64) = 0;
  *(v6 + 48) = 0;
  *(v6 + 32) = 0;
  *(v6 + 16) = 0;
  *v6 = v28;
  *(v6 + 8) = v14;
  outlined init with copy of MLTrainingSessionParameters(a1, &v20, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  v22 = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
  outlined init with take of MLClassifierMetrics(&v20, boxed_opaque_existential_0, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  outlined assign with take of Any?(v21, v6 + 16);
  v16 = v23;
  v17 = v25;
  outlined init with copy of MLTrainingSessionParameters(v23, v25, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  v22 = v24;
  v18 = __swift_allocate_boxed_opaque_existential_0(v21);
  outlined init with take of MLClassifierMetrics(v17, v18, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  outlined assign with take of Any?(v21, v26);
  outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  return outlined destroy of MLActivityClassifier.ModelParameters(v27, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
}

uint64_t MLImageClassifier.ModelParameters.init(featureExtractor:validation:maxIterations:augmentationOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v27 = a4;
  v25 = a3;
  v24 = a2;
  v22 = a1;
  v5 = v4;
  v23 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  v6 = *(*(v23 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = *v27;
  v26 = v5 + 16;
  v27 = (v5 + 48);
  *(v5 + 64) = 0;
  *(v5 + 48) = 0;
  *(v5 + 32) = 0;
  *(v5 + 16) = 0;
  *v5 = v25;
  *(v5 + 8) = v13;
  outlined init with copy of MLTrainingSessionParameters(a2, v19, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  v21 = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  outlined init with take of MLClassifierMetrics(v19, boxed_opaque_existential_0, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  outlined assign with take of Any?(v20, v26);
  v15 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (featureExtractor: MLImageClassifier.FeatureExtractorType, classifier: MLImageClassifier.ModelParameters.ClassifierType)) + 48);
  v16 = v22;
  outlined init with copy of MLTrainingSessionParameters(v22, v19, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  *&v19[v15] = 0;
  v21 = v23;
  v17 = __swift_allocate_boxed_opaque_existential_0(v20);
  outlined init with take of MLClassifierMetrics(v19, v17, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  outlined assign with take of Any?(v20, v27);
  outlined destroy of MLActivityClassifier.ModelParameters(v24, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  return outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for MLImageClassifier.FeatureExtractorType);
}

uint64_t MLImageClassifier.ModelParameters.init(featureExtractor:validationData:maxIterations:augmentationOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v20 = a2;
  v19 = a1;
  v7 = v4;
  v8 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = *a4;
  v18 = v7 + 48;
  *(v7 + 64) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  *(v7 + 16) = 0;
  *v7 = a3;
  *(v7 + 8) = v12;
  MLImageClassifier.ModelParameters.validationData.setter(v20);
  v13 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (featureExtractor: MLImageClassifier.FeatureExtractorType, classifier: MLImageClassifier.ModelParameters.ClassifierType)) + 48);
  v14 = v19;
  outlined init with copy of MLTrainingSessionParameters(v19, v17, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  *(v17 + v13) = 0;
  v17[3] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  outlined init with take of MLClassifierMetrics(v17, boxed_opaque_existential_0, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  outlined assign with take of Any?(v17, v18);
  return outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for MLImageClassifier.FeatureExtractorType);
}

{
  v20 = a1;
  v7 = v4;
  v22 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  v8 = *(*(v22 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = *a4;
  *(v7 + 64) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  *(v7 + 16) = 0;
  *v7 = a3;
  *(v7 + 8) = v11;
  v21 = a2;
  v12 = static _ImageUtilities.getImageURLsAndLabels(from:)(a2);
  v13 = v7 + 48;
  MLImageClassifier.ModelParameters.validationData.setter(v12);
  v14 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (featureExtractor: MLImageClassifier.FeatureExtractorType, classifier: MLImageClassifier.ModelParameters.ClassifierType)) + 48);
  v15 = v20;
  outlined init with copy of MLTrainingSessionParameters(v20, v18, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  *&v18[v14] = 0;
  v19[3] = v22;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  outlined init with take of MLClassifierMetrics(v18, boxed_opaque_existential_0, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  outlined assign with take of Any?(v19, v13);
  outlined destroy of MLActivityClassifier.ModelParameters(v21, type metadata accessor for MLImageClassifier.DataSource);
  return outlined destroy of MLActivityClassifier.ModelParameters(v15, type metadata accessor for MLImageClassifier.FeatureExtractorType);
}

unint64_t MLImageClassifier.ModelParameters.description.getter()
{
  v1 = *(*(type metadata accessor for MLImageClassifier.FeatureExtractorType(0) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = *(*(type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v24 = v0;
  MLImageClassifier.ModelParameters.algorithm.getter();
  v7 = *&v20[*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (featureExtractor: MLImageClassifier.FeatureExtractorType, classifier: MLImageClassifier.ModelParameters.ClassifierType)) + 48)];
  outlined init with take of MLClassifierMetrics(v20, v20, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  v22 = 0;
  v23 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);
  v23;
  v22 = 0xD000000000000013;
  v23 = "ave MLMultiArray rank 3." + 0x8000000000000000;
  v8._countAndFlagsBits = MLImageClassifier.FeatureExtractorType.description.getter();
  object = v8._object;
  String.append(_:)(v8);
  object;
  v10._countAndFlagsBits = 10;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  strcpy(&v25, "Classifier: ");
  BYTE5(v25._object) = 0;
  HIWORD(v25._object) = -5120;
  if (v7)
  {
    v7;
    v11._countAndFlagsBits = 0xD000000000000015;
    v12 = "Feature Extractor: ";
  }

  else
  {
    v11._countAndFlagsBits = 0xD000000000000012;
    v12 = "Multilayer Perceptron";
  }

  v11._object = (v12 | 0x8000000000000000);
  String.append(_:)(v11);
  v12;
  v13._countAndFlagsBits = 10;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v14 = v25._object;
  String.append(_:)(v25);
  v14;
  outlined destroy of MLActivityClassifier.ModelParameters(v20, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  _StringGuts.grow(_:)(19);
  v25._object;
  v25._countAndFlagsBits = 0xD000000000000010;
  v25._object = "ansformer have different types." + 0x8000000000000000;
  v21 = *v24;
  v15 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v17 = v16;
  v13._countAndFlagsBits = v15;
  v13._object = v16;
  String.append(_:)(v13);
  v17;
  v13._countAndFlagsBits = 10;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v18 = v25._object;
  String.append(_:)(v25);
  v18;
  return v22;
}

unint64_t MLImageClassifier.ModelParameters.playgroundDescription.getter()
{
  v1 = v0;
  result = MLImageClassifier.ModelParameters.description.getter();
  v1[3] = &type metadata for String;
  *v1 = result;
  v1[1] = v3;
  return result;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLImageClassifier.ModelParameters.validate()()
{
  v1 = *(*(type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  MLImageClassifier.ModelParameters.algorithm.getter();
  MLImageClassifier.ModelParameters.ModelAlgorithmType.validate()();
  outlined destroy of MLActivityClassifier.ModelParameters(&v15, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  if (!v4)
  {
    v5 = *v0;
    if ((*v0 - 1) >= 0x7FFFFFFE)
    {
      *&v16 = 0;
      *(&v16 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(87);
      v6._object = "Logistic Regressor" + 0x8000000000000000;
      v6._countAndFlagsBits = 0xD000000000000048;
      String.append(_:)(v6);
      LODWORD(v17) = 0x7FFFFFFF;
      v7 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int32, &protocol witness table for Int32);
      v9 = v8;
      v6._countAndFlagsBits = v7;
      v6._object = v8;
      String.append(_:)(v6);
      v9;
      v6._countAndFlagsBits = 0x6F6720747562202CLL;
      v6._object = 0xEA00000000002074;
      String.append(_:)(v6);
      v17 = v5;
      v10 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
      v12 = v11;
      v6._countAndFlagsBits = v10;
      v6._object = v11;
      String.append(_:)(v6);
      v12;
      v6._countAndFlagsBits = 46;
      v6._object = 0xE100000000000000;
      String.append(_:)(v6);
      v15 = v16;
      v13 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v13, 0, 0);
      *v14 = v15;
      *(v14 + 16) = 0;
      *(v14 + 32) = 0;
      *(v14 + 48) = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_A2027(uint64_t a1)
{
  v2 = v1;
  result = MLImageClassifier.ModelParameters.validationData.getter();
  *v2 = result;
  return result;
}

uint64_t destroy for MLImageClassifier.ModelParameters(void *a1)
{
  if (a1[5])
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1 + 2);
  }

  if (a1[9])
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1 + 6);
  }

  return result;
}

uint64_t initializeWithCopy for MLImageClassifier.ModelParameters(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 16);
  v5 = (a2 + 16);
  v6 = *(a2 + 40);
  if (v6)
  {
    *(a1 + 40) = v6;
    (**(v6 - 8))(v4, v5);
  }

  else
  {
    v7 = *v5;
    v4[1] = v5[1];
    *v4 = v7;
  }

  v8 = (a1 + 48);
  v9 = *(a2 + 72);
  v10 = (a2 + 48);
  if (v9)
  {
    *(a1 + 72) = v9;
    (**(v9 - 8))(v8, v10);
  }

  else
  {
    v11 = *v10;
    *(a1 + 64) = v10[1];
    *v8 = v11;
  }

  return a1;
}

uint64_t assignWithCopy for MLImageClassifier.ModelParameters(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v2 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (v2)
    {
      __swift_assign_boxed_opaque_existential_0((a1 + 16), (a2 + 16));
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 16));
  }

  else if (v2)
  {
    *(a1 + 40) = v2;
    (**(v2 - 8))(a1 + 16, a2 + 16);
    goto LABEL_8;
  }

  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v3;
LABEL_8:
  v4 = *(a2 + 72);
  if (!*(a1 + 72))
  {
    if (v4)
    {
      *(a1 + 72) = v4;
      (**(v4 - 8))(a1 + 48, a2 + 48);
      return a1;
    }

LABEL_14:
    v5 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v5;
    return a1;
  }

  if (!v4)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 48));
    goto LABEL_14;
  }

  __swift_assign_boxed_opaque_existential_0((a1 + 48), (a2 + 48));
  return a1;
}

void *__swift_memcpy80_8(void *a1, const void *a2)
{
  result = a1;
  qmemcpy(a1, a2, 0x50uLL);
  return result;
}

uint64_t assignWithTake for MLImageClassifier.ModelParameters(uint64_t a1, _OWORD *a2)
{
  *a1 = *a2;
  if (*(a1 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 16));
  }

  v2 = a2[1];
  *(a1 + 32) = a2[2];
  *(a1 + 16) = v2;
  if (*(a1 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 48));
  }

  v3 = a2[3];
  *(a1 + 64) = a2[4];
  *(a1 + 48) = v3;
  return a1;
}

uint64_t getEnumTagSinglePayload for MLImageClassifier.ModelParameters(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
      v4 = v3 & 0xFFFFFFFF00000001;
      v5 = (v3 >> 1) - 1;
      v6 = -1;
      if (v5 >= 0)
      {
        v6 = v5;
      }

      v2 = v4 != 0 ? -1 : v6;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLImageClassifier.ModelParameters(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 72) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 80) = 0;
    }

    if (a2)
    {
      *(a1 + 40) = 2 * a2;
    }
  }
}

void *__swift_memcpy8_8(void *a1, void *a2)
{
  result = a1;
  *a1 = *a2;
  return result;
}

uint64_t MLHandActionClassifier.ModelParameters.init(validation:batchSize:maximumIterations:predictionWindowSize:augmentationOptions:algorithm:targetFrameRate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, double a6)
{
  v9 = v6;
  v10 = *a5;
  outlined init with take of MLClassifierMetrics(a1, v6, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
  v11 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *(v9 + v11[5]) = a2;
  *(v9 + v11[6]) = a3;
  *(v9 + v11[7]) = a4;
  *(v9 + v11[8]) = v10;
  result = v11[10];
  *(v9 + result) = a6;
  return result;
}

uint64_t outlined init with copy of MLHandActionClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined assign with take of MLHandActionClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 40))(a2, a1, v2);
  return a2;
}

uint64_t MLHandActionClassifier.ModelParameters.batchSize.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLHandActionClassifier.ModelParameters(0) + 20);
  *(v1 + result) = a1;
  return result;
}

uint64_t MLHandActionClassifier.ModelParameters.maximumIterations.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLHandActionClassifier.ModelParameters(0) + 24);
  *(v1 + result) = a1;
  return result;
}

uint64_t MLHandActionClassifier.ModelParameters.predictionWindowSize.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLHandActionClassifier.ModelParameters(0) + 28);
  *(v1 + result) = a1;
  return result;
}

uint64_t MLHandActionClassifier.ModelParameters.augmentationOptions.getter()
{
  v2 = v0;
  result = *(v1 + *(type metadata accessor for MLHandActionClassifier.ModelParameters(0) + 32));
  *v2 = result;
  return result;
}

uint64_t MLHandActionClassifier.ModelParameters.augmentationOptions.setter(uint64_t *a1)
{
  v2 = *a1;
  result = *(type metadata accessor for MLHandActionClassifier.ModelParameters(0) + 32);
  *(v1 + result) = v2;
  return result;
}

uint64_t MLHandActionClassifier.ModelParameters.targetFrameRate.setter(double a1)
{
  result = *(type metadata accessor for MLHandActionClassifier.ModelParameters(0) + 40);
  *(v1 + result) = a1;
  return result;
}

Swift::Int MLHandActionClassifier.ModelParameters.ModelAlgorithmType.hashValue.getter()
{
  Hasher.init(_seed:)(0);
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLHandActionClassifier.ModelParameters.ModelAlgorithmType(uint64_t a1)
{
  Hasher.init(_seed:)(a1);
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

char MLHandActionClassifier.ModelParameters.ValidationData.extractAnnotations(trainingData:)(uint64_t *a1, uint64_t *a2, __m128 a3)
{
  v60 = v3;
  v57 = v4;
  v59 = a2;
  v58 = a1;
  v5 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v53 = &v46;
  v9 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = v60;
  LOBYTE(v14) = MLHandActionClassifier.DataSource.videosWithAnnotations()(a3);
  if (v13)
  {
    return v14;
  }

  *&v52 = v5;
  v15 = v54;
  v62 = BYTE8(v54);
  outlined init with copy of MLHandActionClassifier.ModelParameters.ValidationData(v57, &v46);
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
      MLDataTable.randomSplitBySequence(strategy:by:on:)(&v46, &v48, &v54, 0x7461506F65646976, 0xE900000000000068, 0x6C6562616CLL, 0xE500000000000000);
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
      outlined init with take of MLClassifierMetrics(v60, v53, type metadata accessor for MLHandActionClassifier.DataSource);
      MLHandActionClassifier.DataSource.videosWithAnnotations()(a3);
      outlined destroy of MLHandActionClassifier.ModelParameters.ValidationData(v41, type metadata accessor for MLHandActionClassifier.DataSource);
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

unint64_t MLHandActionClassifier.ModelParameters.description.getter()
{
  _StringGuts.grow(_:)(23);
  0;
  v1 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  object = v2._object;
  String.append(_:)(v2);
  object;
  v4._countAndFlagsBits = 10;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  strcpy(&v15, "Batch Size: ");
  BYTE5(v15._object) = 0;
  HIWORD(v15._object) = -5120;
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v6 = v5._object;
  String.append(_:)(v5);
  v6;
  v4._countAndFlagsBits = 10;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  String.append(_:)(v15);
  v15._object;
  _StringGuts.grow(_:)(27);
  0;
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v8 = v7._object;
  String.append(_:)(v7);
  v8;
  v4._countAndFlagsBits = 10;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v4._countAndFlagsBits = 0xD000000000000018;
  v4._object = "Maximum Iterations: " + 0x8000000000000000;
  String.append(_:)(v4);
  ("Maximum Iterations: " + 0x8000000000000000);
  _StringGuts.grow(_:)(22);
  0;
  v15._countAndFlagsBits = 0xD000000000000013;
  v15._object = "Prediction Window Time: " + 0x8000000000000000;
  v9._countAndFlagsBits = Double.description.getter(*(v0 + *(v1 + 40)));
  v10 = v9._object;
  String.append(_:)(v9);
  v10;
  v4._countAndFlagsBits = 10;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v4._countAndFlagsBits = 0xD000000000000013;
  v12._object = "Prediction Window Time: " + 0x8000000000000000;
  String.append(_:)(v12);
  ("Prediction Window Time: " + 0x8000000000000000);
  _StringGuts.grow(_:)(25);
  0;
  v15._countAndFlagsBits = 0xD000000000000016;
  v15._object = "Target Frame Rate: " + 0x8000000000000000;
  v11 = "Model Algorithm: GCN\n" + 0x8000000000000000;
  v12._countAndFlagsBits = 0;
  if (*(v0 + *(v1 + 32)) == 1)
  {
    v12._countAndFlagsBits = 0xD000000000000011;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  v12._object = v11;
  String.append(_:)(v12);
  v11;
  v13._countAndFlagsBits = 10;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  String.append(_:)(v15);
  v15._object;
  v13._object = "Augmentation Options: " + 0x8000000000000000;
  v13._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v13);
  return 0xD000000000000014;
}

unint64_t MLHandActionClassifier.ModelParameters.playgroundDescription.getter()
{
  v1 = v0;
  result = MLHandActionClassifier.ModelParameters.description.getter();
  v1[3] = &type metadata for String;
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t lazy protocol witness table accessor for type MLHandActionClassifier.ModelParameters.ModelAlgorithmType and conformance MLHandActionClassifier.ModelParameters.ModelAlgorithmType()
{
  result = lazy protocol witness table cache variable for type MLHandActionClassifier.ModelParameters.ModelAlgorithmType and conformance MLHandActionClassifier.ModelParameters.ModelAlgorithmType;
  if (!lazy protocol witness table cache variable for type MLHandActionClassifier.ModelParameters.ModelAlgorithmType and conformance MLHandActionClassifier.ModelParameters.ModelAlgorithmType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLHandActionClassifier.ModelParameters.ModelAlgorithmType, &type metadata for MLHandActionClassifier.ModelParameters.ModelAlgorithmType);
    lazy protocol witness table cache variable for type MLHandActionClassifier.ModelParameters.ModelAlgorithmType and conformance MLHandActionClassifier.ModelParameters.ModelAlgorithmType = result;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for MLHandActionClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  v4 = __dst;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v16 = *__src;
    *v4 = *__src;
    v4 = (v16 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(__src, v7) == 1)
    {
      v8 = type metadata accessor for MLHandActionClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(__src, v8))
      {
        case 0u:
          v35 = type metadata accessor for URL(0);
          v38 = *(*(v35 - 8) + 16);
          v38(__dst, __src, v35);
          v36 = v8;
          v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v38(&__dst[v9[12]], &__src[v9[12]], v35);
          v10 = v9[16];
          *&__dst[v10] = *&__src[v10];
          *&__dst[v10 + 8] = *&__src[v10 + 8];
          v11 = v9[20];
          *&__dst[v11] = *&__src[v11];
          *&__dst[v11 + 8] = *&__src[v11 + 8];
          v12 = v9[24];
          *&__dst[v12] = *&__src[v12];
          *&__dst[v12 + 8] = *&__src[v12 + 8];
          v13 = v9[28];
          *&__dst[v13] = *&__src[v13];
          *&__dst[v13 + 8] = *&__src[v13 + 8];

          v14 = v36;
          v15 = 0;
          goto LABEL_15;
        case 1u:
          v20 = type metadata accessor for URL(0);
          (*(*(v20 - 8) + 16))(__dst, __src, v20);
          v34 = 1;
          goto LABEL_11;
        case 2u:
          v18 = type metadata accessor for URL(0);
          (*(*(v18 - 8) + 16))(__dst, __src, v18);
          v34 = 2;
LABEL_11:
          v15 = v34;
          v14 = v8;
          goto LABEL_15;
        case 3u:
          v37 = v8;
          v19 = *__src;
          v40 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v40);
          *__dst = v19;
          __dst[8] = v40;
          *(__dst + 2) = *(__src + 2);
          *(__dst + 3) = *(__src + 3);
          *(__dst + 4) = *(__src + 4);
          *(__dst + 5) = *(__src + 5);
          *(__dst + 6) = *(__src + 6);
          *(__dst + 7) = *(__src + 7);

          v33 = 3;
          goto LABEL_14;
        case 4u:
          v37 = v8;
          v17 = *__src;
          v39 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v39);
          *__dst = v17;
          __dst[8] = v39;
          *(__dst + 2) = *(__src + 2);
          *(__dst + 3) = *(__src + 3);
          *(__dst + 4) = *(__src + 4);
          *(__dst + 5) = *(__src + 5);
          *(__dst + 6) = *(__src + 6);
          *(__dst + 7) = *(__src + 7);
          *(__dst + 8) = *(__src + 8);
          *(__dst + 9) = *(__src + 9);

          v33 = 4;
          goto LABEL_14;
        case 5u:
          v21 = type metadata accessor for DataFrame(0);
          (*(*(v21 - 8) + 16))(__dst, __src, v21);
          v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v23 = v22[12];
          *&__dst[v23] = *&__src[v23];
          *&__dst[v23 + 8] = *&__src[v23 + 8];
          v24 = v22[16];
          *&__dst[v24] = *&__src[v24];
          *&__dst[v24 + 8] = *&__src[v24 + 8];
          v25 = v22[20];
          *&__dst[v25] = *&__src[v25];
          v37 = v8;
          *&__dst[v25 + 8] = *&__src[v25 + 8];

          v33 = 5;
          goto LABEL_14;
        case 6u:
          v26 = type metadata accessor for DataFrame(0);
          (*(*(v26 - 8) + 16))(__dst, __src, v26);
          v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v28 = v27[12];
          *&__dst[v28] = *&__src[v28];
          *&__dst[v28 + 8] = *&__src[v28 + 8];
          v29 = v27[16];
          *&__dst[v29] = *&__src[v29];
          *&__dst[v29 + 8] = *&__src[v29 + 8];
          v30 = v27[20];
          *&__dst[v30] = *&__src[v30];
          *&__dst[v30 + 8] = *&__src[v30 + 8];
          v31 = v27[24];
          *&__dst[v31] = *&__src[v31];
          v37 = v8;
          *&__dst[v31 + 8] = *&__src[v31 + 8];

          v33 = 6;
LABEL_14:
          v15 = v33;
          v14 = v37;
LABEL_15:
          swift_storeEnumTagMultiPayload(__dst, v14, v15);
          swift_storeEnumTagMultiPayload(__dst, v7, 1);
          break;
      }
    }

    else
    {
      memcpy(__dst, __src, *(*(v7 - 8) + 64));
    }

    *&__dst[a3[5]] = *&__src[a3[5]];
    *&__dst[a3[6]] = *&__src[a3[6]];
    *&__dst[a3[7]] = *&__src[a3[7]];
    *&__dst[a3[8]] = *&__src[a3[8]];
    *&__dst[a3[10]] = *&__src[a3[10]];
  }

  return v4;
}

uint64_t destroy for MLHandActionClassifier.ModelParameters(uint64_t a1)
{
  v1 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  result = swift_getEnumCaseMultiPayload(a1, v1);
  if (result == 1)
  {
    v3 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    result = swift_getEnumCaseMultiPayload(a1, v3);
    switch(result)
    {
      case 0:
        v5 = type metadata accessor for URL(0);
        v6 = *(*(v5 - 8) + 8);
        v6(a1, v5);
        v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v6(a1 + v7[12], v5);
        *(a1 + v7[16] + 8);
        *(a1 + v7[20] + 8);
        *(a1 + v7[24] + 8);
        v8 = v7[28];
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
        *(a1 + 40);
        *(a1 + 56);
        return *(a1 + 72);
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
        v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *(a1 + v12[12] + 8);
        *(a1 + v12[16] + 8);
        *(a1 + v12[20] + 8);
        v8 = v12[24];
LABEL_10:
        result = *(a1 + v8 + 8);
        break;
      default:
        return result;
    }
  }

  return result;
}

char *initializeWithCopy for MLHandActionClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  v5 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(__src, v5) == 1)
  {
    v6 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(__src, v6))
    {
      case 0u:
        v32 = type metadata accessor for URL(0);
        v35 = *(*(v32 - 8) + 16);
        v35(__dst, __src, v32);
        v33 = v6;
        v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v35(&__dst[v7[12]], &__src[v7[12]], v32);
        v8 = v7[16];
        *&__dst[v8] = *&__src[v8];
        *&__dst[v8 + 8] = *&__src[v8 + 8];
        v9 = v7[20];
        *&__dst[v9] = *&__src[v9];
        *&__dst[v9 + 8] = *&__src[v9 + 8];
        v10 = v7[24];
        *&__dst[v10] = *&__src[v10];
        *&__dst[v10 + 8] = *&__src[v10 + 8];
        v11 = v7[28];
        *&__dst[v11] = *&__src[v11];
        *&__dst[v11 + 8] = *&__src[v11 + 8];

        v12 = v33;
        v13 = 0;
        goto LABEL_13;
      case 1u:
        v17 = type metadata accessor for URL(0);
        (*(*(v17 - 8) + 16))(__dst, __src, v17);
        v31 = 1;
        goto LABEL_9;
      case 2u:
        v15 = type metadata accessor for URL(0);
        (*(*(v15 - 8) + 16))(__dst, __src, v15);
        v31 = 2;
LABEL_9:
        v13 = v31;
        v12 = v6;
        goto LABEL_13;
      case 3u:
        v34 = v6;
        v16 = *__src;
        v37 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v37);
        *__dst = v16;
        __dst[8] = v37;
        *(__dst + 2) = *(__src + 2);
        *(__dst + 3) = *(__src + 3);
        *(__dst + 4) = *(__src + 4);
        *(__dst + 5) = *(__src + 5);
        *(__dst + 6) = *(__src + 6);
        *(__dst + 7) = *(__src + 7);

        v30 = 3;
        goto LABEL_12;
      case 4u:
        v34 = v6;
        v14 = *__src;
        v36 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v36);
        *__dst = v14;
        __dst[8] = v36;
        *(__dst + 2) = *(__src + 2);
        *(__dst + 3) = *(__src + 3);
        *(__dst + 4) = *(__src + 4);
        *(__dst + 5) = *(__src + 5);
        *(__dst + 6) = *(__src + 6);
        *(__dst + 7) = *(__src + 7);
        *(__dst + 8) = *(__src + 8);
        *(__dst + 9) = *(__src + 9);

        v30 = 4;
        goto LABEL_12;
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
        v34 = v6;
        *&__dst[v22 + 8] = *&__src[v22 + 8];

        v30 = 5;
        goto LABEL_12;
      case 6u:
        v23 = type metadata accessor for DataFrame(0);
        (*(*(v23 - 8) + 16))(__dst, __src, v23);
        v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v25 = v24[12];
        *&__dst[v25] = *&__src[v25];
        *&__dst[v25 + 8] = *&__src[v25 + 8];
        v26 = v24[16];
        *&__dst[v26] = *&__src[v26];
        *&__dst[v26 + 8] = *&__src[v26 + 8];
        v27 = v24[20];
        *&__dst[v27] = *&__src[v27];
        *&__dst[v27 + 8] = *&__src[v27 + 8];
        v28 = v24[24];
        *&__dst[v28] = *&__src[v28];
        v34 = v6;
        *&__dst[v28 + 8] = *&__src[v28 + 8];

        v30 = 6;
LABEL_12:
        v13 = v30;
        v12 = v34;
LABEL_13:
        swift_storeEnumTagMultiPayload(__dst, v12, v13);
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
  *&__dst[a3[8]] = *&__src[a3[8]];
  *&__dst[a3[10]] = *&__src[a3[10]];
  return __dst;
}

char *assignWithCopy for MLHandActionClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLHandActionClassifier.ModelParameters.ValidationData(__dst, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
    v4 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(__src, v4) == 1)
    {
      v5 = type metadata accessor for MLHandActionClassifier.DataSource(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v5);
      switch(EnumCaseMultiPayload)
      {
        case 0u:
          v26 = type metadata accessor for URL(0);
          v31 = *(*(v26 - 8) + 16);
          v31(__dst, __src, v26);
          v28 = v5;
          v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v31(&__dst[v8[12]], &__src[v8[12]], v26);
          v9 = v8[16];
          *&__dst[v9] = *&__src[v9];
          *&__dst[v9 + 8] = *&__src[v9 + 8];
          v10 = v8[20];
          *&__dst[v10] = *&__src[v10];
          *&__dst[v10 + 8] = *&__src[v10 + 8];
          v11 = v8[24];
          *&__dst[v11] = *&__src[v11];
          *&__dst[v11 + 8] = *&__src[v11 + 8];
          v12 = v8[28];
          *&__dst[v12] = *&__src[v12];
          goto LABEL_11;
        case 1u:
        case 2u:
          v6 = type metadata accessor for URL(0);
          (*(*(v6 - 8) + 16))(__dst, __src, v6);
          goto LABEL_14;
        case 3u:
          v29 = v5;
          v13 = *__src;
          v32 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v32);
          *__dst = v13;
          __dst[8] = v32;
          *(__dst + 2) = *(__src + 2);
          *(__dst + 3) = *(__src + 3);
          *(__dst + 4) = *(__src + 4);
          *(__dst + 5) = *(__src + 5);
          *(__dst + 6) = *(__src + 6);
          *(__dst + 7) = *(__src + 7);

          v5 = v29;

          goto LABEL_13;
        case 4u:
          v27 = v5;
          v7 = *__src;
          v30 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v30);
          *__dst = v7;
          __dst[8] = v30;
          *(__dst + 2) = *(__src + 2);
          *(__dst + 3) = *(__src + 3);
          *(__dst + 4) = *(__src + 4);
          *(__dst + 5) = *(__src + 5);
          *(__dst + 6) = *(__src + 6);
          *(__dst + 7) = *(__src + 7);
          *(__dst + 8) = *(__src + 8);
          *(__dst + 9) = *(__src + 9);

          v5 = v27;

          goto LABEL_13;
        case 5u:
          v14 = type metadata accessor for DataFrame(0);
          (*(*(v14 - 8) + 16))(__dst, __src, v14);
          v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v16 = v15[12];
          *&__dst[v16] = *&__src[v16];
          *&__dst[v16 + 8] = *&__src[v16 + 8];
          v17 = v15[16];
          *&__dst[v17] = *&__src[v17];
          *&__dst[v17 + 8] = *&__src[v17 + 8];
          v18 = v15[20];
          *&__dst[v18] = *&__src[v18];
          v28 = v5;
          *&__dst[v18 + 8] = *&__src[v18 + 8];

          goto LABEL_12;
        case 6u:
          v19 = type metadata accessor for DataFrame(0);
          (*(*(v19 - 8) + 16))(__dst, __src, v19);
          v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v21 = v20[12];
          *&__dst[v21] = *&__src[v21];
          *&__dst[v21 + 8] = *&__src[v21 + 8];
          v22 = v20[16];
          *&__dst[v22] = *&__src[v22];
          *&__dst[v22 + 8] = *&__src[v22 + 8];
          v23 = v20[20];
          *&__dst[v23] = *&__src[v23];
          *&__dst[v23 + 8] = *&__src[v23 + 8];
          v12 = v20[24];
          *&__dst[v12] = *&__src[v12];
          v28 = v5;
LABEL_11:
          *&__dst[v12 + 8] = *&__src[v12 + 8];

LABEL_12:

          v5 = v28;
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
  *&__dst[a3[8]] = *&__src[a3[8]];
  *&__dst[a3[10]] = *&__src[a3[10]];
  return __dst;
}

char *initializeWithTake for MLHandActionClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  v5 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(__src, v5) == 1)
  {
    v6 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(__src, v6))
    {
      case 0u:
        v19 = type metadata accessor for URL(0);
        v20 = *(*(v19 - 8) + 32);
        v20(__dst, __src, v19);
        v18 = v6;
        v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v20(&__dst[v7[12]], &__src[v7[12]], v19);
        *&__dst[v7[16]] = *&__src[v7[16]];
        *&__dst[v7[20]] = *&__src[v7[20]];
        *&__dst[v7[24]] = *&__src[v7[24]];
        *&__dst[v7[28]] = *&__src[v7[28]];
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
        v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *&__dst[v15[12]] = *&__src[v15[12]];
        *&__dst[v15[16]] = *&__src[v15[16]];
        *&__dst[v15[20]] = *&__src[v15[20]];
        *&__dst[v15[24]] = *&__src[v15[24]];
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
  *&__dst[a3[8]] = *&__src[a3[8]];
  *&__dst[a3[10]] = *&__src[a3[10]];
  return __dst;
}

char *assignWithTake for MLHandActionClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLHandActionClassifier.ModelParameters.ValidationData(__dst, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
    v5 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(__src, v5) == 1)
    {
      v6 = type metadata accessor for MLHandActionClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(__src, v6))
      {
        case 0u:
          v19 = type metadata accessor for URL(0);
          v20 = *(*(v19 - 8) + 32);
          v20(__dst, __src, v19);
          v18 = v6;
          v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v20(&__dst[v7[12]], &__src[v7[12]], v19);
          *&__dst[v7[16]] = *&__src[v7[16]];
          *&__dst[v7[20]] = *&__src[v7[20]];
          *&__dst[v7[24]] = *&__src[v7[24]];
          *&__dst[v7[28]] = *&__src[v7[28]];
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
          v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          *&__dst[v15[12]] = *&__src[v15[12]];
          *&__dst[v15[16]] = *&__src[v15[16]];
          *&__dst[v15[20]] = *&__src[v15[20]];
          *&__dst[v15[24]] = *&__src[v15[24]];
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
  *&__dst[a3[8]] = *&__src[a3[8]];
  *&__dst[a3[10]] = *&__src[a3[10]];
  return __dst;
}

uint64_t type metadata completion function for MLHandActionClassifier.ModelParameters(uint64_t a1)
{
  result = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(319);
  if (v2 <= 0x3F)
  {
    v3[0] = *(result - 8) + 64;
    v3[1] = &value witness table for Builtin.Int64 + 64;
    v3[2] = &value witness table for Builtin.Int64 + 64;
    v3[3] = &value witness table for Builtin.Int64 + 64;
    v3[4] = &value witness table for Builtin.Int64 + 64;
    v3[5] = &value witness table for () + 64;
    v3[6] = &value witness table for Builtin.Int64 + 64;
    swift_initStructMetadata(a1, 256, 7, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLHandActionClassifier.ModelParameters.ModelAlgorithmType(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 1;
  v3 = 1;
  if (v2 >= 0x100)
  {
    v3 = 2 * (v2 >= &loc_10000) + 2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

uint64_t storeEnumTagSinglePayload for MLHandActionClassifier.ModelParameters.ModelAlgorithmType(_BYTE *a1, int a2, int a3)
{
  if (a3)
  {
    v3 = a3 + 1;
    LODWORD(result) = 1;
    if (v3 >= 0x100)
    {
      LODWORD(result) = 2 * (v3 >= &loc_10000) + 2;
    }
  }

  else
  {
    LODWORD(result) = 0;
  }

  result = result;
  if (a2)
  {
    switch(result)
    {
      case 0:
        return result;
      case 1:
        *a1 = a2;
        return result;
      case 2:
        *a1 = a2;
        return result;
      case 3:
        goto LABEL_16;
      case 4:
        *a1 = a2;
        return result;
    }
  }

  switch(result)
  {
    case 0:
      return result;
    case 1:
      *a1 = 0;
      break;
    case 2:
      *a1 = 0;
      break;
    case 3:
LABEL_16:
      BUG();
    case 4:
      *a1 = 0;
      break;
    case 5:
      JUMPOUT(0xA44A8);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for MLHandActionClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v16 = *__src;
    *v3 = *__src;
    v3 = (v16 + ((v5 + 16) & ~v5));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
    {
      return memcpy(__dst, __src, *(v4 + 64));
    }

    v7 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(__src, v7))
    {
      case 0u:
        v38 = v7;
        v8 = type metadata accessor for URL(0);
        v37 = *(*(v8 - 8) + 16);
        v37(__dst, __src, v8);
        v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v37(&__dst[v9[12]], &__src[v9[12]], v8);
        v10 = v9[16];
        *&__dst[v10] = *&__src[v10];
        *&__dst[v10 + 8] = *&__src[v10 + 8];
        v11 = v9[20];
        *&__dst[v11] = *&__src[v11];
        *&__dst[v11 + 8] = *&__src[v11 + 8];
        v12 = v9[24];
        *&__dst[v12] = *&__src[v12];
        *&__dst[v12 + 8] = *&__src[v12 + 8];
        v13 = v9[28];
        *&__dst[v13] = *&__src[v13];
        *&__dst[v13 + 8] = *&__src[v13 + 8];

        v14 = v38;
        v15 = 0;
        break;
      case 1u:
        v23 = type metadata accessor for URL(0);
        (*(*(v23 - 8) + 16))(__dst, __src, v23);
        v36 = 1;
        goto LABEL_12;
      case 2u:
        v20 = type metadata accessor for URL(0);
        (*(*(v20 - 8) + 16))(__dst, __src, v20);
        v36 = 2;
        goto LABEL_12;
      case 3u:
        v21 = *__src;
        v39 = v7;
        v22 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v22);
        *__dst = v21;
        __dst[8] = v22;
        *(__dst + 2) = *(__src + 2);
        *(__dst + 3) = *(__src + 3);
        *(__dst + 4) = *(__src + 4);
        *(__dst + 5) = *(__src + 5);
        *(__dst + 6) = *(__src + 6);
        *(__dst + 7) = *(__src + 7);

        v35 = 3;
        goto LABEL_14;
      case 4u:
        v18 = *__src;
        v39 = v7;
        v19 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v19);
        *__dst = v18;
        __dst[8] = v19;
        *(__dst + 2) = *(__src + 2);
        *(__dst + 3) = *(__src + 3);
        *(__dst + 4) = *(__src + 4);
        *(__dst + 5) = *(__src + 5);
        *(__dst + 6) = *(__src + 6);
        *(__dst + 7) = *(__src + 7);
        *(__dst + 8) = *(__src + 8);
        *(__dst + 9) = *(__src + 9);

        v35 = 4;
        goto LABEL_14;
      case 5u:
        v24 = type metadata accessor for DataFrame(0);
        (*(*(v24 - 8) + 16))(__dst, __src, v24);
        v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v26 = v25[12];
        *&__dst[v26] = *&__src[v26];
        *&__dst[v26 + 8] = *&__src[v26 + 8];
        v27 = v25[16];
        *&__dst[v27] = *&__src[v27];
        *&__dst[v27 + 8] = *&__src[v27 + 8];
        v28 = v25[20];
        *&__dst[v28] = *&__src[v28];
        *&__dst[v28 + 8] = *&__src[v28 + 8];

        v36 = 5;
LABEL_12:
        v15 = v36;
        v14 = v7;
        break;
      case 6u:
        v29 = type metadata accessor for DataFrame(0);
        (*(*(v29 - 8) + 16))(__dst, __src, v29);
        v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v31 = v30[12];
        *&__dst[v31] = *&__src[v31];
        *&__dst[v31 + 8] = *&__src[v31 + 8];
        v32 = v30[16];
        *&__dst[v32] = *&__src[v32];
        *&__dst[v32 + 8] = *&__src[v32 + 8];
        v33 = v30[20];
        *&__dst[v33] = *&__src[v33];
        v39 = v7;
        *&__dst[v33 + 8] = *&__src[v33 + 8];
        v34 = v30[24];
        *&__dst[v34] = *&__src[v34];
        *&__dst[v34 + 8] = *&__src[v34 + 8];

        v35 = 6;
LABEL_14:
        v15 = v35;
        v14 = v39;
        break;
    }

    swift_storeEnumTagMultiPayload(__dst, v14, v15);
    swift_storeEnumTagMultiPayload(__dst, a3, 1);
  }

  return v3;
}

uint64_t destroy for MLHandActionClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  if (result == 1)
  {
    v3 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    result = swift_getEnumCaseMultiPayload(a1, v3);
    switch(result)
    {
      case 0:
        v5 = type metadata accessor for URL(0);
        v6 = *(*(v5 - 8) + 8);
        v6(a1, v5);
        v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v6(a1 + v7[12], v5);
        *(a1 + v7[16] + 8);
        *(a1 + v7[20] + 8);
        *(a1 + v7[24] + 8);
        v8 = v7[28];
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
        *(a1 + 40);
        *(a1 + 56);
        return *(a1 + 72);
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
        v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *(a1 + v12[12] + 8);
        *(a1 + v12[16] + 8);
        *(a1 + v12[20] + 8);
        v8 = v12[24];
LABEL_10:
        result = *(a1 + v8 + 8);
        break;
      default:
        return result;
    }
  }

  return result;
}

char *initializeWithCopy for MLHandActionClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  switch(swift_getEnumCaseMultiPayload(__src, v4))
  {
    case 0u:
      v34 = v4;
      v5 = type metadata accessor for URL(0);
      v33 = *(*(v5 - 8) + 16);
      v33(__dst, __src, v5);
      v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v33(&__dst[v6[12]], &__src[v6[12]], v5);
      v7 = v6[16];
      *&__dst[v7] = *&__src[v7];
      *&__dst[v7 + 8] = *&__src[v7 + 8];
      v8 = v6[20];
      *&__dst[v8] = *&__src[v8];
      *&__dst[v8 + 8] = *&__src[v8 + 8];
      v9 = v6[24];
      *&__dst[v9] = *&__src[v9];
      *&__dst[v9 + 8] = *&__src[v9 + 8];
      v10 = v6[28];
      *&__dst[v10] = *&__src[v10];
      *&__dst[v10 + 8] = *&__src[v10 + 8];

      v11 = v34;
      v12 = 0;
      break;
    case 1u:
      v19 = type metadata accessor for URL(0);
      (*(*(v19 - 8) + 16))(__dst, __src, v19);
      v32 = 1;
      goto LABEL_10;
    case 2u:
      v16 = type metadata accessor for URL(0);
      (*(*(v16 - 8) + 16))(__dst, __src, v16);
      v32 = 2;
      goto LABEL_10;
    case 3u:
      v17 = *__src;
      v35 = v4;
      v18 = __src[8];
      outlined copy of Result<_DataTable, Error>(*__src, v18);
      *__dst = v17;
      __dst[8] = v18;
      *(__dst + 2) = *(__src + 2);
      *(__dst + 3) = *(__src + 3);
      *(__dst + 4) = *(__src + 4);
      *(__dst + 5) = *(__src + 5);
      *(__dst + 6) = *(__src + 6);
      *(__dst + 7) = *(__src + 7);

      v31 = 3;
      goto LABEL_12;
    case 4u:
      v14 = *__src;
      v35 = v4;
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
      *(__dst + 8) = *(__src + 8);
      *(__dst + 9) = *(__src + 9);

      v31 = 4;
      goto LABEL_12;
    case 5u:
      v20 = type metadata accessor for DataFrame(0);
      (*(*(v20 - 8) + 16))(__dst, __src, v20);
      v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      v22 = v21[12];
      *&__dst[v22] = *&__src[v22];
      *&__dst[v22 + 8] = *&__src[v22 + 8];
      v23 = v21[16];
      *&__dst[v23] = *&__src[v23];
      *&__dst[v23 + 8] = *&__src[v23 + 8];
      v24 = v21[20];
      *&__dst[v24] = *&__src[v24];
      *&__dst[v24 + 8] = *&__src[v24 + 8];

      v32 = 5;
LABEL_10:
      v12 = v32;
      v11 = v4;
      break;
    case 6u:
      v25 = type metadata accessor for DataFrame(0);
      (*(*(v25 - 8) + 16))(__dst, __src, v25);
      v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v27 = v26[12];
      *&__dst[v27] = *&__src[v27];
      *&__dst[v27 + 8] = *&__src[v27 + 8];
      v28 = v26[16];
      *&__dst[v28] = *&__src[v28];
      *&__dst[v28 + 8] = *&__src[v28 + 8];
      v29 = v26[20];
      *&__dst[v29] = *&__src[v29];
      v35 = v4;
      *&__dst[v29 + 8] = *&__src[v29 + 8];
      v30 = v26[24];
      *&__dst[v30] = *&__src[v30];
      *&__dst[v30 + 8] = *&__src[v30 + 8];

      v31 = 6;
LABEL_12:
      v12 = v31;
      v11 = v35;
      break;
  }

  swift_storeEnumTagMultiPayload(__dst, v11, v12);
  swift_storeEnumTagMultiPayload(__dst, a3, 1);
  return __dst;
}

char *assignWithCopy for MLHandActionClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLHandActionClassifier.ModelParameters.ValidationData(__dst, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
    if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
    {
      return memcpy(__dst, __src, *(*(a3 - 8) + 64));
    }

    v4 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v4);
    switch(EnumCaseMultiPayload)
    {
      case 0u:
        v31 = v4;
        v29 = type metadata accessor for URL(0);
        v10 = *(*(v29 - 8) + 16);
        v10(__dst, __src, v29);
        v33 = EnumCaseMultiPayload;
        v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v10(&__dst[v11[12]], &__src[v11[12]], v29);
        v12 = v11[16];
        *&__dst[v12] = *&__src[v12];
        *&__dst[v12 + 8] = *&__src[v12 + 8];
        v13 = v11[20];
        *&__dst[v13] = *&__src[v13];
        *&__dst[v13 + 8] = *&__src[v13 + 8];
        v14 = v11[24];
        *&__dst[v14] = *&__src[v14];
        *&__dst[v14 + 8] = *&__src[v14 + 8];
        v15 = v11[28];
        *&__dst[v15] = *&__src[v15];
        *&__dst[v15 + 8] = *&__src[v15 + 8];

        goto LABEL_10;
      case 1u:
      case 2u:
        v6 = type metadata accessor for URL(0);
        (*(*(v6 - 8) + 16))(__dst, __src, v6);
        goto LABEL_14;
      case 3u:
        v31 = v4;
        v16 = *__src;
        v33 = EnumCaseMultiPayload;
        v17 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v17);
        *__dst = v16;
        __dst[8] = v17;
        *(__dst + 2) = *(__src + 2);
        *(__dst + 3) = *(__src + 3);
        *(__dst + 4) = *(__src + 4);
        *(__dst + 5) = *(__src + 5);
        *(__dst + 6) = *(__src + 6);
        *(__dst + 7) = *(__src + 7);
        goto LABEL_10;
      case 4u:
        v30 = v4;
        v8 = *__src;
        v32 = EnumCaseMultiPayload;
        v9 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v9);
        *__dst = v8;
        __dst[8] = v9;
        *(__dst + 2) = *(__src + 2);
        *(__dst + 3) = *(__src + 3);
        *(__dst + 4) = *(__src + 4);
        *(__dst + 5) = *(__src + 5);
        *(__dst + 6) = *(__src + 6);
        *(__dst + 7) = *(__src + 7);
        *(__dst + 8) = *(__src + 8);
        *(__dst + 9) = *(__src + 9);
        goto LABEL_12;
      case 5u:
        v18 = type metadata accessor for DataFrame(0);
        (*(*(v18 - 8) + 16))(__dst, __src, v18);
        v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v20 = v19[12];
        *&__dst[v20] = *&__src[v20];
        *&__dst[v20 + 8] = *&__src[v20 + 8];
        v21 = v19[16];
        *&__dst[v21] = *&__src[v21];
        v31 = v4;
        *&__dst[v21 + 8] = *&__src[v21 + 8];
        v22 = v19[20];
        *&__dst[v22] = *&__src[v22];
        v33 = EnumCaseMultiPayload;
        *&__dst[v22 + 8] = *&__src[v22 + 8];
LABEL_10:

        v4 = v31;

        EnumCaseMultiPayload = v33;
        break;
      case 6u:
        v23 = type metadata accessor for DataFrame(0);
        (*(*(v23 - 8) + 16))(__dst, __src, v23);
        v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v25 = v24[12];
        *&__dst[v25] = *&__src[v25];
        *&__dst[v25 + 8] = *&__src[v25 + 8];
        v26 = v24[16];
        *&__dst[v26] = *&__src[v26];
        v30 = v4;
        *&__dst[v26 + 8] = *&__src[v26 + 8];
        v27 = v24[20];
        *&__dst[v27] = *&__src[v27];
        v32 = EnumCaseMultiPayload;
        *&__dst[v27 + 8] = *&__src[v27 + 8];
        v28 = v24[24];
        *&__dst[v28] = *&__src[v28];
        *&__dst[v28 + 8] = *&__src[v28 + 8];
LABEL_12:

        v4 = v30;

        EnumCaseMultiPayload = v32;

        break;
    }

LABEL_14:
    swift_storeEnumTagMultiPayload(__dst, v4, EnumCaseMultiPayload);
    swift_storeEnumTagMultiPayload(__dst, a3, 1);
  }

  return __dst;
}

char *initializeWithTake for MLHandActionClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  switch(swift_getEnumCaseMultiPayload(__src, v4))
  {
    case 0u:
      v16 = type metadata accessor for URL(0);
      v17 = *(*(v16 - 8) + 32);
      v17(__dst, __src, v16);
      v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v17(&__dst[v5[12]], &__src[v5[12]], v16);
      *&__dst[v5[16]] = *&__src[v5[16]];
      *&__dst[v5[20]] = *&__src[v5[20]];
      *&__dst[v5[24]] = *&__src[v5[24]];
      *&__dst[v5[28]] = *&__src[v5[28]];
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
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      *&__dst[v14[12]] = *&__src[v14[12]];
      *&__dst[v14[16]] = *&__src[v14[16]];
      *&__dst[v14[20]] = *&__src[v14[20]];
      *&__dst[v14[24]] = *&__src[v14[24]];
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

char *assignWithTake for MLHandActionClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLHandActionClassifier.ModelParameters.ValidationData(__dst, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
    if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
    {
      return memcpy(__dst, __src, *(*(a3 - 8) + 64));
    }

    v4 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(__src, v4))
    {
      case 0u:
        v16 = type metadata accessor for URL(0);
        v17 = *(*(v16 - 8) + 32);
        v17(__dst, __src, v16);
        v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v17(&__dst[v5[12]], &__src[v5[12]], v16);
        *&__dst[v5[16]] = *&__src[v5[16]];
        *&__dst[v5[20]] = *&__src[v5[20]];
        *&__dst[v5[24]] = *&__src[v5[24]];
        *&__dst[v5[28]] = *&__src[v5[28]];
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
        v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *&__dst[v14[12]] = *&__src[v14[12]];
        *&__dst[v14[16]] = *&__src[v14[16]];
        *&__dst[v14[20]] = *&__src[v14[20]];
        *&__dst[v14[24]] = *&__src[v14[24]];
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

uint64_t type metadata completion function for MLHandActionClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  v5[0] = &unk_33FA48;
  result = type metadata accessor for MLHandActionClassifier.DataSource(319);
  if (v4 <= 0x3F)
  {
    v5[1] = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 2, v5, v2, v3);
    return 0;
  }

  return result;
}

uint64_t outlined destroy of MLHandActionClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML13MLRecommenderV10IdentifierOG_Sis5NeverOTg503_s8d4ML13f83V16buildRecommender20MLModelSpecification014ItemSimilarityE13ConfigurationVyFSiAC10G53Ocfu_32e3399fa1d635680dd9b269b7350fcff2AISiTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  result = _swiftEmptyArrayStorage;
  v3 = (a1 + 48);
  do
  {
    if (*v3 != 1)
    {
      BUG();
    }

    v4 = *(v3 - 2);
    v7 = result;
    v5 = result[2];
    v6 = v5 + 1;
    if (result[3] >> 1 <= v5)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(result[3] >= 2uLL, v6, 1);
      v6 = v5 + 1;
      result = v7;
    }

    result[2] = v6;
    result[v5 + 4] = v4;
    v3 += 24;
    --v1;
  }

  while (v1);
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML13MLRecommenderV10IdentifierOG_SSs5NeverOTg503_s8d4ML13f83V16buildRecommender20MLModelSpecification014ItemSimilarityE13ConfigurationVyFSSAC10G55Ocfu0_33_249550f2622063ad651cac1eac78e882AISSTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  result = _swiftEmptyArrayStorage;
  v3 = (a1 + 48);
  do
  {
    v13 = result;
    v11 = v1;
    v4 = *(v3 - 2);
    v5 = *(v3 - 1);
    v6 = *v3;
    if (*v3)
    {
      v12 = 0;
      v7 = 0;
    }

    else
    {
      v8 = *(v3 - 2);
      outlined copy of MLRecommender.Identifier(v4, *(v3 - 1), 0);

      v4 = v8;
      v12 = v8;
      v7 = v5;
    }

    outlined consume of MLRecommender.Identifier(v4, v5, v6);
    if (!v7)
    {
      BUG();
    }

    result = v13;
    v9 = v13[2];
    if (v13[3] >> 1 <= v9)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v13[3] >= 2uLL, v9 + 1, 1);
      result = v13;
    }

    result[2] = v9 + 1;
    v10 = 2 * v9;
    result[v10 + 4] = v12;
    result[v10 + 5] = v7;
    v3 += 24;
    v1 = v11 - 1;
  }

  while (v11 != 1);
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySi_SdtG_20MLModelSpecification38ItemSimilarityRecommenderConfigurationV0F5ScoreVs5NeverOTg508_sSiSd20d15Specification38fghi4V0C5j7VIgyyr_m8_SdtAEs5k125OIegnrzr_TR047_s8CreateML13MLRecommenderV16buildRecommender20a16Specification014cd3E13f32VyFAG12SimilarItemsVSiXEfU_AG0H5gu4_S14V2U_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v16 = type metadata accessor for ItemSimilarityRecommenderConfiguration.ItemScore(0);
  v17 = *(v16 - 8);
  v2 = *(v17 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v19 = &v16;
  v5 = *(a1 + 16);
  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v18 = v1;
  v21 = _swiftEmptyArrayStorage;
  v6 = v5;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v7 = v21;
  v8 = (a1 + 40);
  v9 = v19;
  do
  {
    ItemSimilarityRecommenderConfiguration.ItemScore.init(itemID:similarityScore:)(*(v8 - 1), *v8);
    v21 = v7;
    v10 = v9;
    v11 = v7[2];
    v12 = v7[3];
    v13 = v11 + 1;
    if (v12 >> 1 <= v11)
    {
      v20 = v11 + 1;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 >= 2, v13, 1);
      v13 = v20;
      v10 = v19;
      v7 = v21;
    }

    v7[2] = v13;
    v14 = v7 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v11;
    v9 = v10;
    (*(v17 + 32))(v14, v10, v16);
    v8 += 2;
    --v6;
  }

  while (v6);
  return v7;
}

uint64_t MLRecommender.write(to:metadata:)(uint64_t a1, uint64_t *a2)
{
  v8 = a1;
  v2 = type metadata accessor for Model(0);
  v9 = *(v2 - 8);
  v3 = *(v9 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  MLRecommender.exportToCoreML(metadata:)(a2);
  Model.write(to:)(v8);
  return (*(v9 + 8))(&v7, v2);
}

uint64_t MLRecommender.exportToCoreML(metadata:)(uint64_t *a1)
{
  v1 = type metadata accessor for ModelKind(0);
  v31 = *(v1 - 8);
  v2 = *(v31 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v26 = *a1;
  v22 = a1[1];
  v29 = a1[2];
  v30 = a1[3];
  v24 = a1[4];
  v25 = a1[5];
  v27 = a1[6];
  v28 = a1[7];
  v23 = a1[8];
  Model.init()();
  Model.specificationVersion.setter(4);
  v5 = MLRecommender.buildInputs()();
  Model.inputs.setter(v5);
  v6 = MLRecommender.buildOutputs()();
  Model.outputs.setter(v6);
  MLRecommender.buildRecommender()(v6);
  (*(v31 + 104))(v20, enum case for ModelKind.itemSimilarityRecommender(_:), v1);
  v7 = v22;
  Model.kind.setter(v20);
  Model.modelDescription.setter(0xD000000000000021, ("Horizontally Flip" + 0x8000000000000000));
  if (v7)
  {
    v8 = v30;

    Model.modelDescription.setter(v29, v8);
    v9 = v28;

    Model.versionString.setter(v27, v9);

    Model.author.setter(v26, v7);
    v10 = v24;
    if (!v25)
    {
      v10 = 0;
    }

    v11 = 0xE000000000000000;
    if (v25)
    {
      v11 = v25;
    }

    Model.license.setter(v10, v11);
    if (v23)
    {
      v12 = v23;
    }

    else
    {
      v12 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for String, &protocol witness table for String);
    }

    Model.metadata.setter(v12);
  }

  v13 = getOSVersion()();
  countAndFlagsBits = v13._countAndFlagsBits;
  object = v13._object;
  v31 = Model.metadata.modify(v20);
  v17 = v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v16);
  v21 = *v17;
  *v17 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(countAndFlagsBits, object, 0xD00000000000001ALL, ("Recommender Model" + 0x8000000000000000), isUniquelyReferenced_nonNull_native);
  *v17 = v21;
  return (v31)(v20, 0);
}

uint64_t MLRecommender.write(toFile:metadata:)(uint64_t a1, uint64_t a2, const void *a3)
{
  v22[10] = v3;
  v30 = a3;
  v25 = a2;
  v23 = a1;
  v27 = type metadata accessor for Model(0);
  v28 = *(v27 - 8);
  v4 = *(v28 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v24 = &v21;
  v7 = type metadata accessor for URL.DirectoryHint(0);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v14 = type metadata accessor for URL(0);
  v29 = *(v14 - 1);
  v15 = *(v29 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  qmemcpy(v22, v30, 0x48uLL);
  v30 = v14;
  __swift_storeEnumTagSinglePayload(&v21, 1, 1, v14);
  (*(v26 + 104))(&v21, enum case for URL.DirectoryHint.inferFromPath(_:), v7);
  v18 = v25;

  URL.init(filePath:directoryHint:relativeTo:)(v23, v18, &v21, &v21);
  v19 = v24;
  MLRecommender.exportToCoreML(metadata:)(v22);
  Model.write(to:)(&v21);
  (*(v28 + 8))(v19, v27);
  return (*(v29 + 8))(&v21, v30);
}

uint64_t MLRecommender.buildInputs()()
{
  v38 = type metadata accessor for FeatureDescription(0);
  v37 = *(v38 - 8);
  v1 = *(v37 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v40 = &v37;
  v4 = alloca(v1);
  v5 = alloca(v1);
  v43 = &v37;
  v6 = alloca(v1);
  v7 = alloca(v1);
  v42 = &v37;
  v8 = alloca(v1);
  v9 = alloca(v1);
  v44 = &v37;
  v45 = type metadata accessor for FeatureType(0);
  v41 = *(v45 - 8);
  v10 = v41[8];
  v11 = alloca(v10);
  v12 = alloca(v10);
  v46 = &v37;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v15 = alloca(v10);
  v16 = alloca(v10);
  LOBYTE(v47) = *(v0 + *(type metadata accessor for MLRecommender(0) + 44));
  if (v47)
  {
    static FeatureType.dictionaryWithIntKeys(optional:)(0);
  }

  else
  {
    static FeatureType.dictionaryWithStringKeys(optional:)(0);
  }

  v17 = v41;
  v18 = v41[2];
  v39 = &v37;
  v19 = v45;
  v18(&v37, &v37, v45);
  FeatureDescription.init(name:type:description:)(0x736D657469, 0xE500000000000000, &v37, 0xD000000000000037, ("responding scores." + 0x8000000000000000));
  FeatureType.IntParameters.init(optional:)(0);
  (v17[13])(&v37, enum case for FeatureType.int(_:), v19);
  FeatureDescription.init(name:type:description:)(107, 0xE100000000000000, &v37, 0xD000000000000032, ("te the recommendations." + 0x8000000000000000));
  v20 = v46;
  if (v47)
  {
    static FeatureType.sequenceOfInt(optional:)(0);
  }

  else
  {
    static FeatureType.sequenceOfString(optional:)(0);
  }

  v21 = v20;
  FeatureType.isOptional.setter(1);
  v22 = v20;
  v23 = v45;
  v18(&v37, v22, v45);
  FeatureDescription.init(name:type:description:)(0x7463697274736572, 0xE800000000000000, &v37, 0xD00000000000003BLL, (" a recommendation." + 0x8000000000000000));
  v18(&v37, v21, v23);
  FeatureDescription.init(name:type:description:)(0x6564756C637865, 0xE700000000000000, &v37, 0xD000000000000063, ("o generate recommendations." + 0x8000000000000000));
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
  v25 = v37;
  v26 = *(v37 + 72);
  v27 = *(v37 + 80);
  v28 = (v27 + 32) & ~*(v37 + 80);
  v29 = swift_allocObject(v24, v28 + 4 * v26, v27 | 7);
  v47 = v29;
  *(v29 + 16) = 4;
  *(v29 + 24) = 8;
  v30 = v29 + v28;
  v31 = *(v25 + 16);
  v32 = v38;
  v31(v30, v44, v38);
  v31(v30 + v26, v42, v32);
  v31(v30 + 2 * v26, v43, v32);
  (*(v25 + 32))(v30 + 3 * v26, v40, v32);
  v33 = *(v25 + 8);
  v33(v43, v32);
  v34 = v41[1];
  v35 = v45;
  v34(v46, v45);
  v33(v42, v32);
  v33(v44, v32);
  v34(v39, v35);
  return v47;
}

uint64_t MLRecommender.buildOutputs()()
{
  v29 = type metadata accessor for FeatureDescription(0);
  v32 = *(v29 - 8);
  v1 = *(v32 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v33 = &v28;
  v4 = alloca(v1);
  v5 = alloca(v1);
  v34 = &v28;
  v35 = type metadata accessor for FeatureType(0);
  v6 = *(v35 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v36 = &v28;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v12 = alloca(v7);
  v13 = alloca(v7);
  v14 = *(v0 + *(type metadata accessor for MLRecommender(0) + 44));
  if (v14)
  {
    static FeatureType.sequenceOfInt(optional:)(0);
  }

  else
  {
    static FeatureType.sequenceOfString(optional:)(0);
  }

  v30 = v6;
  v15 = *(v6 + 16);
  v31 = &v28;
  v15(&v28, &v28, v35);
  FeatureDescription.init(name:type:description:)(0x6E656D6D6F636572, 0xEF736E6F69746164, &v28, 0xD000000000000044, ("com.apple.createml.version" + 0x8000000000000000));
  if (v14)
  {
    v16 = v36;
    static FeatureType.dictionaryWithIntKeys(optional:)(0);
  }

  else
  {
    v16 = v36;
    static FeatureType.dictionaryWithStringKeys(optional:)(0);
  }

  v15(&v28, v16, v35);
  FeatureDescription.init(name:type:description:)(0x7365726F6373, 0xE600000000000000, &v28, 0xD000000000000062, ("t to least relevant." + 0x8000000000000000));
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
  v18 = v32;
  v19 = *(v32 + 72);
  v20 = *(v32 + 80);
  v21 = (v20 + 32) & ~*(v32 + 80);
  v22 = swift_allocObject(v17, v21 + 2 * v19, v20 | 7);
  *(v22 + 16) = 2;
  *(v22 + 24) = 4;
  v23 = v22 + v21;
  v24 = v29;
  (*(v18 + 16))(v23, v34, v29);
  (*(v18 + 32))(v19 + v23, v33, v24);
  v25 = *(v30 + 8);
  v26 = v35;
  v25(v36, v35);
  (*(v18 + 8))(v34, v24);
  v25(v31, v26);
  return v22;
}

uint64_t MLRecommender.buildRecommender()(uint64_t a1)
{
  v12[0] = v1;
  ItemSimilarityRecommenderConfiguration.init()(a1);
  ItemSimilarityRecommenderConfiguration.itemInputFeatureName.setter(0x736D657469, 0xE500000000000000);
  ItemSimilarityRecommenderConfiguration.recommendationCountInputFeatureName.setter(107, 0xE100000000000000);
  ItemSimilarityRecommenderConfiguration.recommendedItemsOutputFeatureName.setter(0x6E656D6D6F636572, 0xEF736E6F69746164);
  ItemSimilarityRecommenderConfiguration.recommendedItemScoresOutputFeatureName.setter(0x7365726F6373, 0xE600000000000000);
  ItemSimilarityRecommenderConfiguration.itemInclusionInputFeatureName.setter(0x7463697274736572, 0xE800000000000000);
  ItemSimilarityRecommenderConfiguration.itemExclusionInputFeatureName.setter(0x6564756C637865, 0xE700000000000000);
  v3 = *(v2 + *(type metadata accessor for MLRecommender(0) + 44));
  v4 = *(v2 + 16);

  if (v3 == 1)
  {
    ML13MLRecommenderV10IdentifierOG_Sis5NeverOTg503_s8d4ML13f83V16buildRecommender20MLModelSpecification014ItemSimilarityE13ConfigurationVyFSiAC10G53Ocfu_32e3399fa1d635680dd9b269b7350fcff2AISiTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML13MLRecommenderV10IdentifierOG_Sis5NeverOTg503_s8d4ML13f83V16buildRecommender20MLModelSpecification014ItemSimilarityE13ConfigurationVyFSiAC10G53Ocfu_32e3399fa1d635680dd9b269b7350fcff2AISiTf3nnnpk_nTf1cn_n(v4);
    v4;
    ItemSimilarityRecommenderConfiguration.itemIntIDs.setter(ML13MLRecommenderV10IdentifierOG_Sis5NeverOTg503_s8d4ML13f83V16buildRecommender20MLModelSpecification014ItemSimilarityE13ConfigurationVyFSiAC10G53Ocfu_32e3399fa1d635680dd9b269b7350fcff2AISiTf3nnnpk_nTf1cn_n);
  }

  else
  {
    ML13MLRecommenderV10IdentifierOG_SSs5NeverOTg503_s8d4ML13f83V16buildRecommender20MLModelSpecification014ItemSimilarityE13ConfigurationVyFSSAC10G55Ocfu0_33_249550f2622063ad651cac1eac78e882AISSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML13MLRecommenderV10IdentifierOG_SSs5NeverOTg503_s8d4ML13f83V16buildRecommender20MLModelSpecification014ItemSimilarityE13ConfigurationVyFSSAC10G55Ocfu0_33_249550f2622063ad651cac1eac78e882AISSTf3nnnpk_nTf1cn_n(v4);
    v4;
    ItemSimilarityRecommenderConfiguration.itemStringIDs.setter(ML13MLRecommenderV10IdentifierOG_SSs5NeverOTg503_s8d4ML13f83V16buildRecommender20MLModelSpecification014ItemSimilarityE13ConfigurationVyFSSAC10G55Ocfu0_33_249550f2622063ad651cac1eac78e882AISSTf3nnnpk_nTf1cn_n);
  }

  v7 = *(v4 + 16);
  v8 = alloca(32);
  v9 = alloca(32);
  v12[2] = v2;
  v12[3] = v7;
  v10 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_20MLModelSpecification38ItemSimilarityRecommenderConfigurationV12SimilarItemsVs5NeverOTg5(partial apply for closure #1 in MLRecommender.buildRecommender(), v12, 0, v7);
  return ItemSimilarityRecommenderConfiguration.itemItemSimilarities.setter(v10);
}

uint64_t closure #1 in MLRecommender.buildRecommender()(uint64_t *a1, const void *a2, uint64_t a3, double a4, double a5)
{
  v12 = a3;
  v5 = *a1;
  ItemSimilarityRecommenderConfiguration.SimilarItems.init()();
  ItemSimilarityRecommenderConfiguration.SimilarItems.itemID.setter(v5);
  memcpy(__dst, a2, sizeof(__dst));
  v6 = specialized RecommenderModel.similarItems(itemIndex:count:)(v5, v12, a4, a5);
  v7 = v6;
  v8 = v13;
  ML13MLRecommenderV16buildRecommender20a16Specification014cd3E13f32VyFAG12SimilarItemsVSiXEfU_AG0H5gu4_S14V2U_Tf3nnnpf_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySi_SdtG_20MLModelSpecification38ItemSimilarityRecommenderConfigurationV0F5ScoreVs5NeverOTg508_sSiSd20d15Specification38fghi4V0C5j7VIgyyr_m8_SdtAEs5k125OIegnrzr_TR047_s8CreateML13MLRecommenderV16buildRecommender20a16Specification014cd3E13f32VyFAG12SimilarItemsVSiXEfU_AG0H5gu4_S14V2U_Tf3nnnpf_nTf1cn_n(v6);
  v13 = v8;
  v7;
  return ItemSimilarityRecommenderConfiguration.SimilarItems.similarItems.setter(ML13MLRecommenderV16buildRecommender20a16Specification014cd3E13f32VyFAG12SimilarItemsVSiXEfU_AG0H5gu4_S14V2U_Tf3nnnpf_nTf1cn_n);
}

uint64_t MLSplitStrategy.dictionary.getter()
{
  if (*(v0 + 17))
  {
    v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
    inited = swift_initStackObject(v1, v11);
    inited[2] = 1;
    inited[3] = 2;
    inited[4] = 1684957547;
    inited[5] = 0xE400000000000000;
    inited[9] = &type metadata for String;
    inited[6] = 0x6974616D6F747561;
    inited[7] = 0xE900000000000063;
    return Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  }

  else
  {
    v4 = v0[1];
    v16 = *v0;
    v5 = *(v0 + 16);
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
    v7 = swift_initStackObject(v6, v10);
    v7[2] = 2;
    v7[3] = 4;
    v7[4] = 1684957547;
    v7[5] = 0xE400000000000000;
    v7[9] = &type metadata for String;
    v7[6] = 0x6465786966;
    v7[7] = 0xE500000000000000;
    v7[10] = 0x6F69746172;
    v7[11] = 0xE500000000000000;
    v7[15] = &type metadata for Double;
    v7[12] = v16;
    v3 = Dictionary.init(dictionaryLiteral:)(v7, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
    if ((v5 & 1) == 0)
    {
      v13 = &type metadata for Int;
      *&v12 = v4;
      outlined init with take of Any(&v12, v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v3);
      v15 = v3;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, 1684366707, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
      return v15;
    }
  }

  return v3;
}

__int16 MLSplitStrategy.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(1684957547, 0xE400000000000000);
  if ((v4 & 1) == 0)
  {
    goto LABEL_16;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v3, v12);
  if (!swift_dynamicCast(&v14, v12, &type metadata for Any + 8, &type metadata for String, 6))
  {
    goto LABEL_16;
  }

  v5 = v14;
  v6 = v15;
  if (!(v14 ^ 0x6974616D6F747561 | v15 ^ 0xE900000000000063) || (_stringCompareWithSmolCheck(_:_:expecting:)(0x6974616D6F747561, 0xE900000000000063, v14, v15, 0) & 1) != 0)
  {
    v6;
    result = a1;
    *v2 = 0;
    *(v2 + 16) = 256;
LABEL_7:
    *(v2 + 18) = 0;
    return result;
  }

  if (v5 ^ 0x6465786966 | v6 ^ 0xE500000000000000)
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)(0x6465786966, 0xE500000000000000, v5, v6, 0);
    v6;
    if ((v8 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v6;
  }

  specialized Dictionary.subscript.getter(0x6F69746172, 0xE500000000000000, a1);
  if (!v13)
  {
    a1;
    result = outlined destroy of Any?(v12);
    goto LABEL_17;
  }

  if (swift_dynamicCast(&v14, v12, &type metadata for Any + 8, &type metadata for Double, 6))
  {
    v9 = v14;
    specialized Dictionary.subscript.getter(1684366707, 0xE400000000000000, a1);
    a1;
    if (v13)
    {
      v10 = swift_dynamicCast(&v14, v12, &type metadata for Any + 8, &type metadata for Int, 6);
      if (v10)
      {
        v11 = v14;
      }

      else
      {
        v11 = 0;
      }

      result = v10 ^ 1;
    }

    else
    {
      outlined destroy of Any?(v12);
      result = 1;
      v11 = 0;
    }

    *v2 = v9;
    *(v2 + 8) = v11;
    *(v2 + 16) = result;
    goto LABEL_7;
  }

LABEL_16:
  result = a1;
LABEL_17:
  *v2 = 0;
  *(v2 + 16) = 0;
  *(v2 + 18) = 1;
  return result;
}

Swift::tuple_ratio_Double_seed_Int __swiftcall MLSplitStrategy.resolve(count:)(Swift::Int count)
{
  if (*(v1 + 17))
  {
    v2 = 1;
    v3 = 0.0;
    if (count >= 50)
    {
      v3 = dbl_33FA70[count < 0xC8];
    }
  }

  else
  {
    if (*(v1 + 16))
    {
      v2 = 1;
    }

    else
    {
      v2 = *(v1 + 8);
    }

    v3 = *v1;
  }

  result.ratio = v3;
  result.seed = v2;
  return result;
}

uint64_t __swift_memcpy18_8(uint64_t a1, uint64_t a2)
{
  result = a1;
  *(a1 + 16) = *(a2 + 16);
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for MLSplitStrategy(uint64_t a1, int a2)
{
  result = 0;
  if (a2)
  {
    if (*(a1 + 18))
    {
      return (*a1 + 1);
    }
  }

  return result;
}

void storeEnumTagSinglePayload for MLSplitStrategy(uint64_t a1, int a2, int a3)
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

  *(a1 + 16) = 0;
  *a1 = 0;
  *a1 = a2 - 1;
  v3 = 1;
  if (a3)
  {
LABEL_6:
    *(a1 + 18) = v3;
  }
}

uint64_t getEnumTag for MLSplitStrategy(uint64_t a1)
{
  if (*(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

char destructiveInjectEnumTag for MLSplitStrategy(uint64_t a1, int a2)
{
  if (a2)
  {
    *(a1 + 8) = 0;
    *a1 = (a2 - 1);
    *(a1 + 16) = 0;
    result = 1;
  }

  else
  {
    result = 0;
  }

  *(a1 + 17) = result;
  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverOSay8CreateML13MLRecommenderV10IdentifierOGTg5(void (*a1)(void *), uint64_t a2)
{
  v18 = v2;
  v17 = a2;
  v16 = a1;
  v4 = type metadata accessor for DataFrame(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v19 = v15;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  outlined init with copy of DataFrame?(v3, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v4) == 1)
  {
    return 0;
  }

  v13 = v19;
  (*(v5 + 32))(v19, v15, v4);
  v14 = v18;
  v16(v13);
  if (v14)
  {
    (*(v5 + 8))(v19, v4);
    BUG();
  }

  (*(v5 + 8))(v19, v4);
  return v15[1];
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML11InteractionVG_Si_Sdts5NeverOTg503_s8d71ML16RecommenderModelV12similarItems9itemIndex5countSaySi_SdtGSi_SitFSi_q4AA11F44VXEfU1_AA13MLRecommenderV10IdentifierO_AMTG5AF0jK0VyAF0Y0V10IdentifierOARGTf1cn_n(uint64_t a1, uint64_t *a2, double a3, double a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v14 = *(a1 + 16);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v15 = a2[10];
    v16 = a2[11];
    v17 = *(v16 + 8);
    v5 = (a1 + 40);
    do
    {
      v13 = *(v5 - 1);
      v6.f64[0] = *v5;
      v12 = *v5;
      v17(v15, v16, *v5, a4);
      v7 = _swiftEmptyArrayStorage[2];
      v8 = v7 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v7)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v7 + 1, 1);
        v8 = v7 + 1;
      }

      a4 = fmin(a4, v12.f64[0]);
      v9 = _mm_cmplt_sd(v12, v6).f64[0];
      _swiftEmptyArrayStorage[2] = v8;
      v10 = 2 * v7;
      _swiftEmptyArrayStorage[v10 + 4] = v13;
      _swiftEmptyArrayStorage[v10 + 5] = ~*&v9 & *&a4 | *&v6.f64[0] & *&v9;
      v5 += 2;
      --v14;
    }

    while (v14);
  }

  outlined release of RecommenderModel<MLRecommender.Identifier, MLRecommender.Identifier>(a2);
  return _swiftEmptyArrayStorage;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySi_SitG_Sis5NeverOTg5080_s8CreateML16RecommenderModelV21buildNewUserSeedItems5count12ratingCountsySi_Sayp51GtFS2i_Sit_tcfu_33_39c69c9f4ee04694167b65f5fa330960p1_tP10Tf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  result = _swiftEmptyArrayStorage;
  v3 = (a1 + 32);
  do
  {
    v4 = *v3;
    v7 = result;
    v5 = result[2];
    v6 = v5 + 1;
    if (result[3] >> 1 <= v5)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(result[3] >= 2uLL, v6, 1);
      v6 = v5 + 1;
      result = v7;
    }

    result[2] = v6;
    result[v5 + 4] = v4;
    v3 += 2;
    --v1;
  }

  while (v1);
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML13MLRecommenderV10IdentifierO_AJSd5scoretG_Si_SiSdAKtsAE_pTg503_s8d148ML11RecommenderV21buildInteractionTable_12nearestItemsAA0e6LookupF0VAA0C12TrainingDataVyxq_G_Sayq__q_Sd5scoretGSgtKFSi_SiSdAKtq__q_SdAKt_tKXEfU_AA13f3V10G27O_AqA16CosineSimilarityVTG5AF0kvW0VyA2JGTf1cn_nTm(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *(a1 + 16);
  if (v4)
  {
    v35 = a2;
    v32 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = (a1 + 80);
    while (1)
    {
      v36 = v3;
      v25 = v4;
      v27 = v5;
      v7 = *(v6 - 6);
      v8 = *(v6 - 5);
      LODWORD(v34) = *(v6 - 8);
      v5 = *(v6 - 3);
      v9 = *(v6 - 2);
      LODWORD(v37) = *(v6 - 2);
      v26 = v6;
      v33 = *v6;
      outlined copy of MLRecommender.Identifier(v7, v8, v34);
      outlined copy of MLRecommender.Identifier(v5, v9, v37);
      v31 = v7;
      v19[0] = v7;
      v30 = v8;
      v19[1] = v8;
      v10 = v34;
      v20 = v34 & 1;
      v29 = v5;
      v21 = v5;
      v28 = v9;
      v22 = v9;
      v11 = v37;
      v23 = v37 & 1;
      v12 = v33;
      v24 = v33;
      v13 = v36;
      v14 = specialized closure #1 in Recommender.buildInteractionTable(_:nearestItems:)(v19, v35);
      v36 = v13;
      if (v13)
      {
        break;
      }

      v34 = v12;
      v33 = v15;
      v37 = v14;
      outlined consume of MLRecommender.Identifier(v31, v30, v10);
      outlined consume of MLRecommender.Identifier(v29, v28, v11);
      v5 = v27;
      v32 = v27;
      v16 = v27[2];
      if (v27[3] >> 1 <= v16)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27[3] >= 2uLL, v16 + 1, 1);
        v5 = v32;
      }

      v5[2] = v16 + 1;
      v17 = 3 * v16;
      v5[v17 + 4] = v37;
      v5[v17 + 5] = v33;
      v5[v17 + 6] = v34;
      v6 = v26 + 7;
      v4 = v25 - 1;
      v3 = v36;
      if (v25 == 1)
      {
        outlined release of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(v35);
        return v5;
      }
    }

    outlined consume of MLRecommender.Identifier(v31, v30, v10);
    outlined consume of MLRecommender.Identifier(v29, v28, v11);

    outlined release of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(v35);
  }

  else
  {
    outlined release of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(a2);
    return _swiftEmptyArrayStorage;
  }

  return v5;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF13LinearAlgebra12SparseMatrixV15MajorCollectionVySd_G_Sis5NeverOTg50127_s8CreateML21ItemSimilarityTrainerV03getC21CountThresholdForUser8itemInfo0K4ListSiSayAA0C10StatisticsVy0C5ScoreQzGG_qd__tSlRd__z5_Sdt7b56Rtd__lFS2i_Sdt_tcfu0_33_39c69c9f4ee04694167b65f5fa330960z4_SdtZ10Tf3nnnpk_nTf1cn_nTm(void *a1)
{
  v1 = a1[6];
  if (v1 < 0)
  {
    BUG();
  }

  v2 = a1[3];
  v3 = *(v2 + 16);
  if (v1 >= v3)
  {
    BUG();
  }

  if (v1 + 1 >= v3)
  {
    BUG();
  }

  v4 = *(v2 + 8 * v1 + 32);
  v5 = *(v2 + 8 * v1 + 40);
  v6 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    BUG();
  }

  if (v5 == v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v23 = v5;
  v22 = v4;
  v7 = a1[4];
  v8 = a1[5];
  v9 = 0;
  if (v6 > 0)
  {
    v9 = v5 - v4;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
  if (v6 < 0)
  {
    BUG();
  }

  result = _swiftEmptyArrayStorage;
  v11 = *(v8 + 16);
  v12 = *(v7 + 16);
  v13 = v22;
  v14 = v22;
  v15 = v23;
  v16 = v7;
  do
  {
    if (v15 == v14)
    {
      BUG();
    }

    if (v13 < 0)
    {
      BUG();
    }

    if (v14 >= v12)
    {
      BUG();
    }

    if (v14 >= v11)
    {
      BUG();
    }

    v17 = *(v16 + 4 * v14 + 32);
    v24 = result;
    v18 = result[2];
    if (result[3] >> 1 <= v18)
    {
      v19 = v16;
      v20 = v11;
      v21 = v12;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(result[3] >= 2uLL, v18 + 1, 1);
      v12 = v21;
      v11 = v20;
      v16 = v19;
      v15 = v23;
      v13 = v22;
      result = v24;
    }

    result[2] = v18 + 1;
    result[v18 + 4] = v17;
    ++v14;
  }

  while (v15 != v14);
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_ALs5NeverOTg503_s8d4ML13g136V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFAC10h5OAA14F59VyA2QGcfu0_33_7b0562fa90875ac3238718c5c70eced2AtQTf3nnnpk_nTf1cn_nTm(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = (a1 + 48);
    do
    {
      v8 = v1;
      v3 = *v2;
      v9 = *(v2 - 2);
      v10 = *(v2 - 1);
      outlined copy of MLRecommender.Identifier(v9, v10, *v2);
      v4 = _swiftEmptyArrayStorage[2];
      v5 = v4 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v4)
      {
        v11 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v5, 1);
        v4 = v11;
      }

      _swiftEmptyArrayStorage[2] = v5;
      v6 = 3 * v4;
      _swiftEmptyArrayStorage[v6 + 4] = v9;
      _swiftEmptyArrayStorage[v6 + 5] = v10;
      LOBYTE(_swiftEmptyArrayStorage[v6 + 6]) = v3 & 1;
      v2 += 16;
      v1 = v8 - 1;
    }

    while (v8 != 1);
  }

  return _swiftEmptyArrayStorage;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_ALs5NeverOTg503_s8d4ML13g136V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFAC10h5OAA14F58VyA2QGcfu2_32d1e1b7ed5e9e4cd3ca03cf5b44db102cAtQTf3nnnpk_nTf1cn_nTm(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = (a1 + 72);
    do
    {
      v8 = v1;
      v3 = *v2;
      v9 = *(v2 - 2);
      v10 = *(v2 - 1);
      outlined copy of MLRecommender.Identifier(v9, v10, *v2);
      v4 = _swiftEmptyArrayStorage[2];
      v5 = v4 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v4)
      {
        v11 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v5, 1);
        v4 = v11;
      }

      _swiftEmptyArrayStorage[2] = v5;
      v6 = 3 * v4;
      _swiftEmptyArrayStorage[v6 + 4] = v9;
      _swiftEmptyArrayStorage[v6 + 5] = v10;
      LOBYTE(_swiftEmptyArrayStorage[v6 + 6]) = v3 & 1;
      v2 += 16;
      v1 = v8 - 1;
    }

    while (v8 != 1);
  }

  return _swiftEmptyArrayStorage;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_Sds5NeverOTg503_s8d4ML13g138V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFSdAA14f6VyAC10H57OASGcfu4_32ba0ef4f5a3599e9812b06a0e93fdc0a1ATSdTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  result = _swiftEmptyArrayStorage;
  v3 = (a1 + 80);
  do
  {
    v4 = *v3;
    v7 = result;
    v5 = result[2];
    v6 = v5 + 1;
    if (result[3] >> 1 <= v5)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(result[3] >= 2uLL, v6, 1);
      v6 = v5 + 1;
      result = v7;
    }

    result[2] = v6;
    result[v5 + 4] = v4;
    v3 += 8;
    --v1;
  }

  while (v1);
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_Sis5NeverOTg503_s8d4ML13g138V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFSiAA14f6VyAC10H58OASGcfu5_33_4d997128bfdac600b62536b5ddbe07b5ATSiTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  result = _swiftEmptyArrayStorage;
  v3 = (a1 + 88);
  do
  {
    v4 = *v3;
    v7 = result;
    v5 = result[2];
    v6 = v5 + 1;
    if (result[3] >> 1 <= v5)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(result[3] >= 2uLL, v6, 1);
      v6 = v5 + 1;
      result = v7;
    }

    result[2] = v6;
    result[v5 + 4] = v4;
    v3 += 8;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(uint64_t *, uint64_t *), uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v57 = v8;
  v12 = a3;
  v40 = a2;
  v41 = a1;
  v47 = a5;
  v48 = *(a5 - 8);
  v13 = *(v48 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v49 = &v37;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a6 + 8), a3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v43 = *(AssociatedTypeWitness - 8);
  v16 = *(v43 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v44 = &v37;
  v59 = a4;
  v19 = *(*(a4 - 1) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v50 = &v37;
  v52 = swift_getAssociatedTypeWitness(0, a6, v12, &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v51 = *(v52 - 8);
  v22 = *(v51 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v56 = v9;
  v55 = a6;
  v25 = dispatch thunk of Collection.count.getter(v12, a6);
  if (!v25)
  {
    return static Array._allocateUninitialized(_:)(0, v59);
  }

  v26 = v59;
  v54 = v25;
  v53 = ContiguousArray.init()(v59);
  v45 = type metadata accessor for ContiguousArray(0, v26);
  ContiguousArray.reserveCapacity(_:)(v54);
  v58 = &v37;
  dispatch thunk of Collection.startIndex.getter(v12, v55);
  if (v54 < 0)
  {
    BUG();
  }

  v27 = 0;
  v46 = v12;
  while (1)
  {
    v28 = __OFADD__(1, v27);
    v29 = v27 + 1;
    if (v28)
    {
      BUG();
    }

    v39 = v29;
    v59 = dispatch thunk of Collection.subscript.read(v38, v58, v12, v55);
    v30 = v44;
    v31 = AssociatedTypeWitness;
    v32 = v43;
    (*(v43 + 16))(v44, v33, AssociatedTypeWitness);
    v59(v38, 0);
    v34 = v57;
    v41(v30, v49);
    if (v34)
    {
      break;
    }

    v57 = 0;
    (*(v32 + 8))(v30, v31);
    ContiguousArray.append(_:)(v50, v45);
    v12 = v46;
    dispatch thunk of Collection.formIndex(after:)(v58, v46, v55);
    v27 = v39;
    if (v39 == v54)
    {
      v35 = v58;
      _expectEnd<A>(of:is:)(v56, v58, v12, v55);
      (*(v51 + 8))(v35, v52);
      return v53;
    }
  }

  (*(v32 + 8))(v30, v31);
  (*(v51 + 8))(v58, v52);

  return (*(v48 + 32))(a8, v49, v47);
}

void *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay8CreateML13MLRecommenderV10IdentifierOGAMG_AL4user_AL4itemts5NeverOTg503_s8f4ML13h3V10i35OA3EIgggoo_AE_AEtAE4user_AE4itemts5L188OIegnrzr_TR03_s8a4ML13c126V8evaluate2on10userColumn04itemG006ratingG07cutoffs17excludingObservedAA0C7MetricsV11TabularData0O5FrameV_S3SSgSaySiGSbtKFAC10D23O0F0_AS0H0tAS_AStXEfU3_Tf3nnnpf_nTf1cn_n(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a1 + 16);
  v26 = v3;
  v27 = *(a2 + 16);
  if (v27 < v3)
  {
    v3 = *(a2 + 16);
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v35 = v3;
  if (v3)
  {

    v4 = 48;
    v5 = 0;
    do
    {
      if (v26 == v5)
      {
        BUG();
      }

      if (v27 == v5)
      {
        BUG();
      }

      v29 = v5;
      v6 = *(v2 + v4 - 16);
      v7 = *(v2 + v4 - 8);
      v8 = *(v2 + v4);
      v9 = *(a2 + v4 - 16);
      v32 = *(a2 + v4 - 8);
      v10 = *(a2 + v4);
      v38 = v8;
      v31 = v7;
      outlined copy of MLRecommender.Identifier(v6, v7, v8);
      v36 = v10;
      outlined copy of MLRecommender.Identifier(v9, v32, v10);
      v11 = _swiftEmptyArrayStorage[2];
      v12 = v11 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v11)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v12, 1);
        v12 = v11 + 1;
      }

      v5 = v29 + 1;
      _swiftEmptyArrayStorage[2] = v12;
      v13 = 6 * v11;
      _swiftEmptyArrayStorage[v13 + 4] = v6;
      _swiftEmptyArrayStorage[v13 + 5] = v31;
      LOBYTE(_swiftEmptyArrayStorage[v13 + 6]) = v38 & 1;
      _swiftEmptyArrayStorage[v13 + 7] = v9;
      _swiftEmptyArrayStorage[v13 + 8] = v32;
      LOBYTE(_swiftEmptyArrayStorage[v13 + 9]) = v36 & 1;
      v4 += 24;
      v14 = v35;
      v2 = a1;
    }

    while (v35 != v29 + 1);
  }

  else
  {

    v14 = 0;
  }

  v15 = 24 * v14 + 48;
  while (v26 != v14)
  {
    if (v26 <= v14)
    {
      BUG();
    }

    v16 = v14 + 1;
    if (__OFADD__(1, v14))
    {
      BUG();
    }

    if (v27 == v14)
    {
      break;
    }

    if (v27 <= v14)
    {
      BUG();
    }

    v17 = *(v2 + v15 - 16);
    v18 = *(v2 + v15 - 8);
    v19 = *(v2 + v15);
    v20 = *(a2 + v15 - 16);
    v33 = *(a2 + v15 - 8);
    v21 = *(a2 + v15);
    v39 = v19;
    v30 = v15;
    outlined copy of MLRecommender.Identifier(v17, v18, v19);
    v37 = v21;
    outlined copy of MLRecommender.Identifier(v20, v33, v21);
    v22 = _swiftEmptyArrayStorage[2];
    v23 = v22 + 1;
    if (_swiftEmptyArrayStorage[3] >> 1 <= v22)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v22 + 1, 1);
      v23 = v22 + 1;
    }

    _swiftEmptyArrayStorage[2] = v23;
    v24 = 6 * v22;
    _swiftEmptyArrayStorage[v24 + 4] = v17;
    _swiftEmptyArrayStorage[v24 + 5] = v18;
    LOBYTE(_swiftEmptyArrayStorage[v24 + 6]) = v39 & 1;
    _swiftEmptyArrayStorage[v24 + 7] = v20;
    _swiftEmptyArrayStorage[v24 + 8] = v33;
    LOBYTE(_swiftEmptyArrayStorage[v24 + 9]) = v37 & 1;
    v15 = v30 + 24;
    v14 = v16;
    v2 = a1;
  }

  a2;
  v2;
  return _swiftEmptyArrayStorage;
}

void *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML13MLRecommenderV10IdentifierO4user_AJ4itemtG_AJs5NeverOTg503_s8d99ML16RecommenderModelV7metrics8expected9predicted7cutoffsSayAA21RecommendationMetricsVyxGGqd___qd_0_p10SiGtSTRd__y19_0_x4user_q_4itemt7b48Rtd__xAM_q_ANtAORtd_0_r0_lFZxxAM_q_ANt_tcfu_AA13f3V10g36O_AUSayAuM_AuNtGs15LazyMapSequenceVyP24AA0I0VyA2UGGAuM_AuNtGTG5s7KeyPathCyAjK_AjLtAJGTf1cn_n(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v2 = *(a1 + 16);
  v38 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  v34 = a1;
  if (v2)
  {

    v4 = (a1 + 72);
    do
    {
      v31 = v3;
      v30 = v2;
      v5 = *(v4 - 5);
      v36 = *(v4 - 4);
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v39 = *(v4 - 24);
      LODWORD(v40) = *v4;
      v23[0] = v5;
      v23[1] = v36;
      v24 = v39;
      v25 = v6;
      v26 = v7;
      *&v35 = v7;
      v27 = v40;
      v32 = v5;
      outlined copy of MLRecommender.Identifier(v5, v36, v39);
      v33 = v6;
      v8 = v7;
      LOBYTE(v7) = v40;
      outlined copy of MLRecommender.Identifier(v6, v8, v40);
      v9 = v5;
      v10 = v36;
      outlined copy of MLRecommender.Identifier(v9, v36, v39);
      outlined copy of MLRecommender.Identifier(v6, v35, v7);
      swift_getAtKeyPath(v23, v37);
      v11 = v32;
      v12 = v10;
      LOBYTE(v10) = v39;
      outlined consume of MLRecommender.Identifier(v32, v12, v39);
      v13 = v6;
      v14 = v35;
      outlined consume of MLRecommender.Identifier(v13, v35, v40);
      v15 = v11;
      v3 = v31;
      outlined consume of MLRecommender.Identifier(v15, v36, v10);
      outlined consume of MLRecommender.Identifier(v33, v14, v40);
      v16 = v28;
      v17 = v29;
      v38 = v3;
      v18 = v3[2];
      v19 = v3[3];
      v20 = v18 + 1;
      if (v19 >> 1 <= v18)
      {
        v40 = v18 + 1;
        v35 = v28;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19 >= 2, v18 + 1, 1);
        v20 = v40;
        v16 = v35;
        v3 = v38;
      }

      v3[2] = v20;
      v21 = 3 * v18;
      *&v3[v21 + 4] = v16;
      LOBYTE(v3[v21 + 6]) = v17 & 1;
      v4 += 48;
      v2 = v30 - 1;
    }

    while (v30 != 1);
  }

  else
  {
  }

  v34;
  return v3;
}

void *specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v12 = a1;
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v14 = _swiftEmptyArrayStorage;
  v2 = 0;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v3 = _swiftEmptyArrayStorage;
  v13 = v1;
  do
  {
    v4 = *(v12 + 8 * v2 + 32);
    v10 = v4;
    swift_bridgeObjectRetain_n(v4, 2);
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [(key: MLDataValue, value: MLDataValue)]?);
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [(MLDataValue, MLDataValue)]?);
    swift_dynamicCast(&v9, &v10, v5, v6, 7);
    v11 = v9;
    v4;
    v14 = v3;
    v7 = v3[2];
    if (v3[3] >> 1 <= v7)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v3[3] >= 2uLL, v7 + 1, 1);
      v3 = v14;
    }

    ++v2;
    v3[2] = v7 + 1;
    v3[v7 + 4] = v11;
  }

  while (v13 != v2);
  return v3;
}

{
  v11 = a1;
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v14 = _swiftEmptyArrayStorage;
  v2 = 0;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v3 = _swiftEmptyArrayStorage;
  v12 = v1;
  do
  {
    v4 = *(v11 + 8 * v2 + 32);
    v14 = v3;
    v5 = v3[2];
    v6 = v3[3];
    if (v6 >> 1 <= v5)
    {
      v13 = v4;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v6 >= 2, v5 + 1, 1);
      v4 = v13;
      v3 = v14;
    }

    ++v2;
    v9 = &type metadata for Double;
    v10 = &protocol witness table for Double;
    *&v8 = v4;
    v3[2] = v5 + 1;
    outlined init with take of TabularRegressionTask(&v8, &v3[5 * v5 + 4]);
  }

  while (v12 != v2);
  return v3;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v14 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = _swiftEmptyArrayStorage;
  v3 = (a1 + 32);
  do
  {
    v12 = *v3;
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (Double, Double));
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (precision: Double, recall: Double));
    swift_dynamicCast(&v11, &v12, v4, v5, 7);
    v6 = v11;
    v14 = v2;
    v7 = v2[2];
    v8 = v2[3];
    v9 = v7 + 1;
    if (v8 >> 1 <= v7)
    {
      v13 = v11;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v8 >= 2, v7 + 1, 1);
      v9 = v7 + 1;
      v6 = v13;
      v2 = v14;
    }

    v2[2] = v9;
    *&v2[2 * v7 + 4] = v6;
    ++v3;
    --v1;
  }

  while (v1);
  return v2;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v23 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  result = _swiftEmptyArrayStorage;
  v3 = (a1 + 56);
  do
  {
    v21 = result;
    v20 = v1;
    v4 = *(v3 - 3);
    v5 = *(v3 - 2);
    v6 = *v3;
    v7 = *(v3 - 8);
    v17[0] = v4;
    v17[1] = v5;
    v18 = v7;
    v19 = v6;
    outlined copy of MLRecommender.Identifier(v4, v5, v7);
    outlined copy of MLRecommender.Identifier(v4, v5, v7);
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLRecommender.Identifier, score: Double));
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (item: MLRecommender.Identifier, score: Double));
    swift_dynamicCast(&v13, v17, v8, v9, 7);
    v16 = v13;
    v10 = v14;
    v22 = v15;
    outlined consume of MLRecommender.Identifier(v4, v5, v7);
    result = v21;
    v23 = v21;
    v11 = v21[2];
    if (v21[3] >> 1 <= v11)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21[3] >= 2uLL, v11 + 1, 1);
      result = v23;
    }

    result[2] = v11 + 1;
    v12 = 4 * v11;
    *&result[v12 + 4] = v16;
    LOBYTE(result[v12 + 6]) = v10 & 1;
    result[v12 + 7] = v22;
    v3 += 4;
    v1 = v20 - 1;
  }

  while (v20 != 1);
  return result;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v14 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = _swiftEmptyArrayStorage;
  v3 = (a1 + 40);
  do
  {
    *&v11 = *(v3 - 1);
    v4 = *v3;
    v14 = v2;
    v5 = v2[2];
    v12 = v2[3];
    v6 = v12 >> 1;
    v13 = v5 + 1;
    *(&v11 + 1) = v4;

    if (v6 <= v5)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 >= 2, v13, 1);
      v2 = v14;
    }

    v9 = &type metadata for String;
    v10 = &protocol witness table for String;
    v8 = v11;
    v2[2] = v13;
    outlined init with take of TabularRegressionTask(&v8, &v2[5 * v5 + 4]);
    v3 += 2;
    --v1;
  }

  while (v1);
  return v2;
}

{
  v12 = a1;
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v14 = _swiftEmptyArrayStorage;
  v2 = 0;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v3 = _swiftEmptyArrayStorage;
  v13 = v1;
  do
  {
    v4 = *(v12 + 8 * v2 + 32);
    v14 = v3;
    v5 = v3[2];
    v6 = v3[3];
    if (v6 >> 1 <= v5)
    {
      v7 = v4;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v6 >= 2, v5 + 1, 1);
      v4 = v7;
      v3 = v14;
    }

    ++v2;
    v10 = &type metadata for Int;
    v11 = &protocol witness table for Int;
    *&v9 = v4;
    v3[2] = v5 + 1;
    outlined init with take of TabularRegressionTask(&v9, &v3[5 * v5 + 4]);
  }

  while (v13 != v2);
  return v3;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v17 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = _swiftEmptyArrayStorage;
  v3 = (a1 + 48);
  do
  {
    v13 = v1;
    v4 = *(v3 - 1);
    v5 = *v3;
    v12[0] = *(v3 - 2);
    v12[1] = v4;
    v12[2] = v5;
    swift_bridgeObjectRetain_n(v4, 2);
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, Double));
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (text: String, distance: Double));
    swift_dynamicCast(v11, v12, v6, v7, 7);
    v14 = v11[0];
    v15 = v11[1];
    v16 = v11[2];
    v4;
    v17 = v2;
    v8 = v2[2];
    if (v2[3] >> 1 <= v8)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v2[3] >= 2uLL, v8 + 1, 1);
      v2 = v17;
    }

    v2[2] = v8 + 1;
    v9 = 3 * v8;
    v2[v9 + 4] = v14;
    v2[v9 + 5] = v15;
    v2[v9 + 6] = v16;
    v3 += 3;
    v1 = v13 - 1;
  }

  while (v13 != 1);
  return v2;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v19 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = _swiftEmptyArrayStorage;
  v3 = (a1 + 56);
  do
  {
    v14 = v1;
    v4 = *(v3 - 2);
    v5 = *(v3 - 1);
    v6 = *v3;
    v13[0] = *(v3 - 3);
    v13[1] = v4;
    v13[2] = v5;
    v13[3] = v6;
    swift_bridgeObjectRetain_n(v4, 2);
    swift_bridgeObjectRetain_n(v6, 2);
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, String));
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (text: String, label: String));
    swift_dynamicCast(v12, v13, v7, v8, 7);
    v15 = v12[0];
    v16 = v12[1];
    v17 = v12[2];
    v18 = v12[3];
    v6;
    v4;
    v19 = v2;
    v9 = v2[2];
    if (v2[3] >> 1 <= v9)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v2[3] >= 2uLL, v9 + 1, 1);
      v2 = v19;
    }

    v2[2] = v9 + 1;
    v10 = 4 * v9;
    v2[v10 + 4] = v15;
    v2[v10 + 5] = v16;
    v2[v10 + 6] = v17;
    v2[v10 + 7] = v18;
    v3 += 4;
    v1 = v14 - 1;
  }

  while (v14 != 1);
  return v2;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v13 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = _swiftEmptyArrayStorage;
  v3 = (a1 + 40);
  do
  {
    v4 = *v3;
    v12[0] = *(v3 - 1);
    v12[1] = v4;

    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
    swift_dynamicCast(v11, v12, &type metadata for String, v5, 7);
    v13 = v2;
    v6 = v2[2];
    v7 = v6 + 1;
    if (v2[3] >> 1 <= v6)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v2[3] >= 2uLL, v6 + 1, 1);
      v7 = v6 + 1;
      v2 = v13;
    }

    v2[2] = v7;
    v8 = 4 * v6;
    v9 = v11[0];
    *&v2[v8 + 6] = v11[1];
    *&v2[v8 + 4] = v9;
    v3 += 2;
    --v1;
  }

  while (v1);
  return v2;
}

void *specialized Sequence.compactMap<A>(_:)(uint64_t a1, uint64_t *a2)
{
  v2 = -(-1 << *(a1 + 32));
  v3 = ~(-1 << v2);
  if (v2 >= 64)
  {
    v3 = -1;
  }

  v4 = *(a1 + 56) & v3;
  v26 = a1 + 56;
  v25 = (63 - (-1 << *(a1 + 32))) >> 6;

  v27 = _swiftEmptyArrayStorage;
  v5 = 0;
  while (1)
  {
    v6 = v5;
    if (v4)
    {
      v7 = v4;
      goto LABEL_25;
    }

    v8 = v5 + 1;
    if (__OFADD__(1, v5))
    {
      BUG();
    }

    if (v8 >= v25)
    {
      goto LABEL_33;
    }

    v7 = *(v26 + 8 * v8);
    if (v7)
    {
      ++v5;
      goto LABEL_25;
    }

    v5 += 2;
    if (v6 + 2 >= v25)
    {
      goto LABEL_33;
    }

    v7 = *(v26 + 8 * v8 + 8);
    if (!v7)
    {
      v5 = v6 + 3;
      if (v6 + 3 >= v25)
      {
        goto LABEL_33;
      }

      v7 = *(v26 + 8 * v8 + 16);
      if (!v7)
      {
        v5 = v6 + 4;
        if (v6 + 4 >= v25)
        {
          goto LABEL_33;
        }

        v7 = *(v26 + 8 * v8 + 24);
        if (!v7)
        {
          v5 = v6 + 5;
          if (v6 + 5 >= v25)
          {
            goto LABEL_33;
          }

          v7 = *(v26 + 8 * v8 + 32);
          if (!v7)
          {
            v5 = v6 + 6;
            if (v6 + 6 >= v25)
            {
              goto LABEL_33;
            }

            v7 = *(v26 + 8 * v8 + 40);
            if (!v7)
            {
              break;
            }
          }
        }
      }
    }

LABEL_25:
    v4 = v7 & (v7 - 1);
    v10 = a2[3];
    if (*(v10 + 16))
    {
      v22 = v7 & (v7 - 1);
      _BitScanForward64(&v11, v7);
      v24 = v5;
      v12 = v11 | (v5 << 6);
      v13 = *(a1 + 48);
      v12 *= 24;
      v14 = *(v13 + v12);
      v15 = *(v13 + v12 + 8);
      v16 = *(v13 + v12 + 16);
      outlined copy of MLRecommender.Identifier(v14, v15, v16);
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15, v16);
      if (v18)
      {
        v19 = *(*(v10 + 56) + 8 * v17);
        outlined consume of MLRecommender.Identifier(v14, v15, v16);
        if (!swift_isUniquelyReferenced_nonNull_native(v27))
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27[2] + 1, 1, v27);
        }

        v5 = v24;
        v20 = v27[2];
        if (v27[3] >> 1 <= v20)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v27[3] >= 2uLL, v20 + 1, 1, v27);
        }

        v27[2] = v20 + 1;
        v27[v20 + 4] = v19;
        v4 = v22;
      }

      else
      {
        outlined consume of MLRecommender.Identifier(v14, v15, v16);
        v5 = v24;
        v4 = v22;
      }
    }
  }

  v9 = v6 + 7;
  if (v6 + 7 >= v25)
  {
    goto LABEL_33;
  }

  v7 = *(v26 + 8 * v8 + 48);
  if (v7)
  {
    v5 = v8 + 6;
    goto LABEL_25;
  }

  while (1)
  {
    v5 = v9 + 1;
    if (v9 + 1 >= v25)
    {
      break;
    }

    v7 = *(a1 + 8 * v9++ + 64);
    if (v7)
    {
      goto LABEL_25;
    }
  }

LABEL_33:
  outlined consume of [String : [Double]].Iterator._Variant(a1);
  outlined release of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(a2);
  return v27;
}

{
  v2 = a2;
  v13 = *(a1 + 16);
  if (!v13)
  {
    v3 = _swiftEmptyArrayStorage;
    goto LABEL_22;
  }

  v14 = a1 + 32;

  v3 = _swiftEmptyArrayStorage;
  for (i = 0; i != v13; ++i)
  {
    v15 = v3;
    v12 = *(v2 + 16);
    if (!v12)
    {
      goto LABEL_14;
    }

    v4 = *(v14 + 16 * i);
    v5 = *(v14 + 16 * i + 8);
    if (*(v14 + 16 * i) - *(a2 + 2) != 0 && (_stringCompareWithSmolCheck(_:_:expecting:)(a2[4], a2[5], *(v14 + 16 * i), *(v14 + 16 * i + 8), 0) & 1) == 0)
    {
      v7 = a2 + 7;
      v8 = 1;
      while (v12 != v8)
      {
        v6 = v8;
        if (v4 ^ *(v7 - 1) | v5 ^ *v7)
        {
          v9 = _stringCompareWithSmolCheck(_:_:expecting:)(*(v7 - 1), *v7, v4, v5, 0);
          v8 = v6 + 1;
          v7 += 2;
          if ((v9 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_7;
      }

LABEL_14:
      v3 = v15;
      v6 = 0;
      if (swift_isUniquelyReferenced_nonNull_native(v15))
      {
        v6 = 0;
        goto LABEL_16;
      }

LABEL_20:
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
      goto LABEL_16;
    }

    v6 = 0;
LABEL_7:
    v3 = v15;
    if (!swift_isUniquelyReferenced_nonNull_native(v15))
    {
      goto LABEL_20;
    }

LABEL_16:
    v10 = v3[2];
    if (v3[3] >> 1 <= v10)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v3[3] >= 2uLL, v10 + 1, 1, v3);
    }

    v3[2] = v10 + 1;
    v3[v10 + 4] = v6;
    v2 = a2;
  }

  a2;
  LOBYTE(v2) = a1;
LABEL_22:
  v2;
  return v3;
}

void *specialized RecommenderModel.similarItems(itemIndex:count:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = v4[13];
  if (!v5)
  {
    BUG();
  }

  v7 = v4[12];
  if (v7 <= a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = InteractionLookupTable.interactionsFor(_:)(a1, v7, v5, v4[14]);
  v12 = v11;
  v13 = __OFSUB__(v10 >> 1, v11);
  v14 = (v10 >> 1) - v11;
  if (v13)
  {
    BUG();
  }

  v15 = v9;
  v16 = v10;
  if (v14 <= a2)
  {
    v20 = v8;
    swift_unknownObjectRetain(v8);
    v23 = v20;
    v22 = specialized ArraySlice._copyToContiguousArray()(v20, v15, v12, v16);
    specialized MutableCollection<>.sort(by:)(&v22, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));
    v18 = v22;
    v17 = v23;
  }

  else
  {
    v17 = v8;
    v18 = specialized Collection.min(count:sortedBy:)(a2, v8, v9, v12, v10);
  }

  outlined retain of RecommenderModel<MLRecommender.Identifier, MLRecommender.Identifier>(v4);
  ML11InteractionVG_Si_Sdts5NeverOTg503_s8d71ML16RecommenderModelV12similarItems9itemIndex5countSaySi_SdtGSi_SitFSi_q4AA11F44VXEfU1_AA13MLRecommenderV10IdentifierO_AMTG5AF0jK0VyAF0Y0V10IdentifierOARGTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML11InteractionVG_Si_Sdts5NeverOTg503_s8d71ML16RecommenderModelV12similarItems9itemIndex5countSaySi_SdtGSi_SitFSi_q4AA11F44VXEfU1_AA13MLRecommenderV10IdentifierO_AMTG5AF0jK0VyAF0Y0V10IdentifierOARGTf1cn_n(v18, v4, a3, a4);
  v18;
  swift_unknownObjectRelease(v17);
  return ML11InteractionVG_Si_Sdts5NeverOTg503_s8d71ML16RecommenderModelV12similarItems9itemIndex5countSaySi_SdtGSi_SitFSi_q4AA11F44VXEfU1_AA13MLRecommenderV10IdentifierO_AMTG5AF0jK0VyAF0Y0V10IdentifierOARGTf1cn_n;
}

void (*MLRecommender.model.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + 152);
  a1[2] = v3;
  *a1 = v3;
  v3;
  return MLRecommender.model.modify;
}

void MLRecommender.model.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2)
  {
    v5 = *a1;

    *(v3 + 152) = v5;
  }

  else
  {

    *(v3 + 152) = v2;
  }
}

uint64_t MLRecommender.userIdentifierColumn.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t MLRecommender.userIdentifierColumn.setter(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 168);
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return result;
}

uint64_t MLRecommender.itemIdentifierColumn.getter()
{
  v1 = *(v0 + 176);

  return v1;
}

uint64_t MLRecommender.itemIdentifierColumn.setter(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 184);
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return result;
}

uint64_t MLRecommender.ratingColumn.getter()
{
  v1 = *(v0 + 192);

  return v1;
}

uint64_t MLRecommender.ratingColumn.setter(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 200);
  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
  return result;
}

uint64_t MLRecommender.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLRecommender(0);
  return outlined init with copy of MLRecommender.ModelParameters(v1 + *(v3 + 36), v2);
}

uint64_t type metadata accessor for MLRecommender(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLRecommender;
  if (!type metadata singleton initialization cache for MLRecommender)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLRecommender);
  }

  return result;
}

uint64_t outlined init with copy of MLRecommender.ModelParameters(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLRecommender.ModelParameters(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t MLRecommender.init(trainingData:userColumn:itemColumn:ratingColumn:parameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, _BYTE *a8)
{
  v189._countAndFlagsBits = a4;
  __dst = v8;
  *&v202 = v9;
  v192._countAndFlagsBits = a6;
  v205 = a5;
  v184 = type metadata accessor for Model(0);
  v180 = *(v184 - 8);
  v11 = *(v180 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v183 = &v172;
  v181 = v11;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v187._object = &v172;
  v203 = type metadata accessor for DataFrame(0);
  v204 = *(v203 - 8);
  v16 = *(v204 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v195 = &v172;
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v190 = &v172;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v199 = &v172;
  v200 = type metadata accessor for AnyColumn(0);
  v194 = *(v200 - 8);
  v24 = *(v194 + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v189._object = &v172;
  v27 = alloca(v24);
  v28 = alloca(v24);
  v198 = &v172;
  v208 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v208, v176);
  inited[2] = 1;
  inited[3] = 2;
  v187._countAndFlagsBits = a2;
  inited[4] = a2;
  inited[5] = a3;

  v206 = a1;
  DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xE400000000000000, 1919251285));
  if (v30)
  {
    swift_setDeallocating(inited);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    a3;
    v205;
    a7;
    outlined destroy of MLRecommender.ModelParameters(a8);
    return (*(v204 + 8))(v206, v203);
  }

  v207 = a3;
  swift_setDeallocating(inited);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v32 = swift_initStackObject(v208, v177);
  v32[2] = 1;
  v32[3] = 2;
  v32[4] = v189._countAndFlagsBits;
  v33 = v205;
  v32[5] = v205;

  DataFrame.validateContainsColumns(_:context:)(v32, __PAIR128__(0xE400000000000000, 1835365449));
  *&v202 = v34;
  if (v34)
  {
    swift_setDeallocating(v32);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v207;
    v33;
    a7;
    outlined destroy of MLRecommender.ModelParameters(a8);
    v35 = v206;
    return (*(v204 + 8))(v35, v203);
  }

  v36 = v208;
  swift_setDeallocating(v32);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v37 = v207;
  if (a7)
  {
    v38 = swift_initStackObject(v36, v178);
    v38[2] = 1;
    v38[3] = 2;
    v38[4] = v192._countAndFlagsBits;
    v38[5] = a7;

    v39 = v206;
    DataFrame.validateContainsColumns(_:context:)(v38, __PAIR128__(0xE600000000000000, 0x676E69746152));
    *&v202 = v40;
    if (v40)
    {
      swift_setDeallocating(v38);
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      v207;
      v205;
      a7;
      outlined destroy of MLRecommender.ModelParameters(a8);
      v35 = v39;
      return (*(v204 + 8))(v35, v203);
    }

    swift_setDeallocating(v38);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    countAndFlagsBits = v192._countAndFlagsBits;
    v37 = v207;
  }

  else
  {
    countAndFlagsBits = v192._countAndFlagsBits;
  }

  v42 = v187._countAndFlagsBits;
  v43 = __dst;
  *(__dst + 20) = v187._countAndFlagsBits;
  v43[21] = v37;
  v43[22] = v189._countAndFlagsBits;
  v43[23] = v205;
  v43[24] = countAndFlagsBits;
  v43[25] = a7;
  v44 = v37;
  v192._object = type metadata accessor for MLRecommender(0);
  v185 = v43 + *(v192._object + 9);
  outlined init with copy of MLRecommender.ModelParameters(a8, v185);

  v45 = v198;
  DataFrame.subscript.getter(v42, v44);
  v46 = v45;
  v47 = static MLRecommender.extractIdentifiers(from:)();
  v49 = v48;
  v208 = *(v194 + 8);
  (v208)(v46, v200);
  v197 = v49;
  if (!v49)
  {
    v205;
    a7;
    *v179 = 0;
    *&v179[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(82);
    v62._countAndFlagsBits = 0x6C6F632072657355;
    v62._object = 0xED000027206E6D75;
    String.append(_:)(v62);
    v63 = v187._countAndFlagsBits;
    v62._countAndFlagsBits = v187._countAndFlagsBits;
    v62._object = v207;
    String.append(_:)(v62);
    v62._object = " list if not given." + 0x8000000000000000;
    v62._countAndFlagsBits = 0xD000000000000040;
    String.append(_:)(v62);
    v64 = v207;
    DataFrame.subscript.getter(v63, v207);
    v64;
    v65 = AnyColumn.wrappedElementType.getter(v64);
    (v208)(v46, v200);
    v66 = _typeName(_:qualified:)(v65, 0);
    LOBYTE(v65) = v67;
    v62._countAndFlagsBits = v66;
    v62._object = v67;
    String.append(_:)(v62);
    v65;
    v62._countAndFlagsBits = 46;
    v62._object = 0xE100000000000000;
    String.append(_:)(v62);
    v202 = *v179;
    v68 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v68, 0, 0);
    *v69 = v202;
    *(v69 + 16) = 0;
    *(v69 + 32) = 0;
    *(v69 + 48) = 1;
    swift_willThrow();
    outlined destroy of MLRecommender.ModelParameters(a8);
    (*(v204 + 8))(v206, v203);
    a7;
    v205;
    v70 = v64;
LABEL_18:
    v70;
    return outlined destroy of MLRecommender.ModelParameters(v185);
  }

  *(v43 + *(v192._object + 10)) = v47 & 1;
  v50 = v205;
  v51 = v46;
  DataFrame.subscript.getter(v189._countAndFlagsBits, v205);
  v194 = static MLRecommender.extractIdentifiers(from:)();
  v53 = v52;
  (v208)(v51, v200);
  v193 = v53;
  v54 = v189._countAndFlagsBits;
  if (!v53)
  {
    v71 = v189._countAndFlagsBits;
    v207;
    a7;
    v197;
    *v179 = 0;
    *&v179[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(82);
    v72._countAndFlagsBits = 0x6C6F63206D657449;
    v72._object = 0xED000027206E6D75;
    String.append(_:)(v72);
    v72._countAndFlagsBits = v71;
    v72._object = v50;
    String.append(_:)(v72);
    v72._object = " list if not given." + 0x8000000000000000;
    v72._countAndFlagsBits = 0xD000000000000040;
    String.append(_:)(v72);
    v73 = v198;
    DataFrame.subscript.getter(v71, v50);
    v50;
    v74 = AnyColumn.wrappedElementType.getter(v50);
    (v208)(v73, v200);
    v75 = _typeName(_:qualified:)(v74, 0);
    LOBYTE(v74) = v76;
    v72._countAndFlagsBits = v75;
    v72._object = v76;
    String.append(_:)(v72);
    v74;
    v72._countAndFlagsBits = 46;
    v72._object = 0xE100000000000000;
    String.append(_:)(v72);
    v202 = *v179;
    v77 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v77, 0, 0);
    *v78 = v202;
    *(v78 + 16) = 0;
    *(v78 + 32) = 0;
    *(v78 + 48) = 1;
    swift_willThrow();
    outlined destroy of MLRecommender.ModelParameters(a8);
    (*(v204 + 8))(v206, v203);
    a7;
    v79 = v50;
LABEL_17:
    v79;
    v70 = v207;
    goto LABEL_18;
  }

  *(v43 + *(v192._object + 11)) = v194 & 1;
  object = v189._object;
  v56 = v206;
  DataFrame.subscript.getter(v54, v50);
  v57 = v202;
  v58 = static MLRecommender.extractNearestItems(itemColumn:parameters:)(v199, object, a8);
  *&v202 = v57;
  if (v57)
  {
    v60 = v207;
    v207;
    v61 = v205;
    v205;
    a7;
    v193;
    v197;
    outlined destroy of MLRecommender.ModelParameters(a8);
    (*(v204 + 8))(v206, v203);
    (v208)(object, v200);
    a7;
    v61;
    v60;
    return outlined destroy of MLRecommender.ModelParameters(v185);
  }

  v80 = v56;
  v196 = v58;
  v201 = v59;
  v81 = v200;
  (v208)(object, v200);
  if (a7)
  {

    v82 = v198;
    DataFrame.subscript.getter(v192._countAndFlagsBits, a7);
    *&v83 = AnyColumn.extractDoubles(fillValue:)(0.0);
    v84 = v83;
    (v208)(v82, v81, *(&v83 + 1));
    v191 = v84;
    if (!v84)
    {
      v207;
      v205;
      a7;
      v193;
      v197;
      v196;
      v201;
      *v179 = 0;
      *&v179[8] = 0xE000000000000000;
      _StringGuts.grow(_:)(92);
      v114._countAndFlagsBits = 0x6320676E69746152;
      v114._object = 0xEF27206E6D756C6FLL;
      v115 = v80;
      String.append(_:)(v114);
      v116 = v192._countAndFlagsBits;
      v114._countAndFlagsBits = v192._countAndFlagsBits;
      v114._object = a7;
      String.append(_:)(v114);
      v114._object = "at, or Int but it contains " + 0x8000000000000000;
      v114._countAndFlagsBits = 0xD000000000000048;
      String.append(_:)(v114);
      DataFrame.subscript.getter(v116, a7);
      a7;
      v117 = AnyColumn.wrappedElementType.getter(a7);
      (v208)(v82, v200);
      v118 = _typeName(_:qualified:)(v117, 0);
      v120 = v119;
      v114._countAndFlagsBits = v118;
      v114._object = v119;
      String.append(_:)(v114);
      v120;
      v114._countAndFlagsBits = 46;
      v114._object = 0xE100000000000000;
      String.append(_:)(v114);
      v202 = *v179;
      v121 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v121, 0, 0);
      *v122 = v202;
      *(v122 + 16) = 0;
      *(v122 + 32) = 0;
      *(v122 + 48) = 1;
      swift_willThrow();
      outlined destroy of MLRecommender.ModelParameters(a8);
      (*(v204 + 8))(v115, v203);
LABEL_43:
      outlined destroy of DataFrame?(v199);
      a7;
      v79 = v205;
      goto LABEL_17;
    }

    a7;
    v85 = v199;
    v81 = v200;
  }

  else
  {
    v191 = _sSa9repeating5countSayxGx_SitcfCSd_Tt1g5(*(v197 + 16), 1.0);
    v85 = v199;
  }

  v86 = v190;
  outlined init with copy of DataFrame?(v85, v190);
  v87 = v203;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v86, 1, v203);
  v89 = v195;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of DataFrame?(v86);
    v90 = 0;
    goto LABEL_28;
  }

  (*(v204 + 32))(v195, v86, v87);
  v91 = v89;
  v92 = v198;
  DataFrame.subscript.getter(0x65726F6373, 0xE500000000000000);
  *&v93 = AnyColumn.extractDoubles(fillValue:)(0.0);
  v94 = v92;
  v90 = v93;
  (v208)(v94, v81, *(&v93 + 1));
  if (!v90)
  {
    v191;
    v207;
    v205;
    a7;
    v193;
    v197;
    v196;
    v201;
    v125 = v198;
    *v179 = 0;
    *&v179[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(94);
    v126._object = "but it contains " + 0x8000000000000000;
    v126._countAndFlagsBits = 0xD00000000000005BLL;
    String.append(_:)(v126);
    DataFrame.subscript.getter(0x65726F6373, 0xE500000000000000);
    v127 = AnyColumn.wrappedElementType.getter(0x65726F6373);
    (v208)(v125, v81);
    v128 = _typeName(_:qualified:)(v127, 0);
    v130 = v129;
    v126._countAndFlagsBits = v128;
    v126._object = v129;
    String.append(_:)(v126);
    v130;
    v126._countAndFlagsBits = 46;
    v126._object = 0xE100000000000000;
    String.append(_:)(v126);
    v202 = *v179;
    v131 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v131, 0, 0);
    *v132 = v202;
    *(v132 + 16) = 0;
    *(v132 + 32) = 0;
    *(v132 + 48) = 1;
    swift_willThrow();
    outlined destroy of MLRecommender.ModelParameters(a8);
    v133 = *(v204 + 8);
    v134 = v203;
    v133(v206, v203);
    v133(v195, v134);
    goto LABEL_43;
  }

  (*(v204 + 8))(v91, v203);
LABEL_28:
  v95 = v201;
  v96 = v196;
  if (!v196)
  {
    v123 = v90;
LABEL_45:
    v123;
    v124 = v95;
    goto LABEL_46;
  }

  if (!v201)
  {
    v196;
    v124 = v90;
LABEL_46:
    v124;
    v201 = 0;
    goto LABEL_49;
  }

  if (!v90)
  {
    v123 = v196;
    goto LABEL_45;
  }

  v97 = *(v90 + 16);
  v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v97, 0, _swiftEmptyArrayStorage);
  v186 = v90;
  if (v97)
  {
    if (v97 > *(v96 + 16))
    {
      BUG();
    }

    v182 = v97;
    if (v97 > *(v95 + 16))
    {
      BUG();
    }

    v99 = 6;
    v100 = 0;
    v101 = v98;
    do
    {
      v102 = *(v196 + 8 * v99 - 16);
      v103 = *(v196 + 8 * v99 - 8);
      v104 = *(v196 + 8 * v99);
      v105 = *(v95 + 8 * v99 - 16);
      v192._object = *(v95 + 8 * v99 - 8);
      v106 = *(v95 + 8 * v99);
      v194 = v100;
      v208 = *(v186 + 8 * v100 + 32);
      v195 = v102;
      v190 = v103;
      LODWORD(v189._object) = v104;
      outlined copy of MLRecommender.Identifier(v102, v103, v104);
      v198 = v105;
      v107 = v105;
      v108 = v192._object;
      LODWORD(v200) = v106;
      outlined copy of MLRecommender.Identifier(v107, v192._object, v106);
      v109 = *(v101 + 16);
      v110 = v109 + 1;
      v111 = v101;
      if (*(v101 + 24) >> 1 <= v109)
      {
        v113 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v101 + 24) >= 2uLL, v109 + 1, 1, v101);
        v110 = v109 + 1;
        v111 = v113;
      }

      v100 = v194 + 1;
      v111[2] = v110;
      v112 = 7 * v109;
      v111[v112 + 4] = v195;
      v111[v112 + 5] = v190;
      LOBYTE(v111[v112 + 6]) = v189._object & 1;
      v111[v112 + 7] = v198;
      v111[v112 + 8] = v108;
      LOBYTE(v111[v112 + 9]) = v200 & 1;
      v111[v112 + 10] = v208;
      v99 += 3;
      v101 = v111;
      v95 = v201;
    }

    while (v182 != v100);
  }

  else
  {
    v101 = v98;
  }

  v201 = v101;
  v186;
  v95;
  v196;
LABEL_49:
  v135 = *(v197 + 16);
  v136 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v135, 0, _swiftEmptyArrayStorage);
  if (v135)
  {
    if (v135 > *(v193 + 16))
    {
      BUG();
    }

    if (v135 > v191[2])
    {
      BUG();
    }

    v137 = 6;
    v138 = 0;
    v196 = v135;
    do
    {
      v139 = *(v197 + 8 * v137 - 16);
      v140 = *(v197 + 8 * v137 - 8);
      v141 = *(v197 + 8 * v137);
      v142 = *(v193 + 8 * v137 - 16);
      v192._object = *(v193 + 8 * v137 - 8);
      v143 = *(v193 + 8 * v137);
      v194 = v138;
      v208 = v191[v138 + 4];
      v195 = v139;
      v190 = v140;
      LODWORD(v189._object) = v141;
      outlined copy of MLRecommender.Identifier(v139, v140, v141);
      v198 = v142;
      v144 = v142;
      v145 = v192._object;
      LODWORD(v200) = v143;
      outlined copy of MLRecommender.Identifier(v144, v192._object, v143);
      v146 = v136[2];
      v147 = v146 + 1;
      v148 = v136;
      if (v136[3] >> 1 <= v146)
      {
        v150 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v136[3] >= 2uLL, v146 + 1, 1, v136);
        v147 = v146 + 1;
        v148 = v150;
      }

      v138 = v194 + 1;
      v148[2] = v147;
      v149 = 7 * v146;
      v148[v149 + 4] = v195;
      v148[v149 + 5] = v190;
      LOBYTE(v148[v149 + 6]) = v189._object & 1;
      v148[v149 + 7] = v198;
      v148[v149 + 8] = v145;
      LOBYTE(v148[v149 + 9]) = v200 & 1;
      v148[v149 + 10] = v208;
      v137 += 3;
      v136 = v148;
    }

    while (v196 != v138);
  }

  v208 = v136;
  v193;
  v197;
  v191;
  v151 = *(v185 + 16);
  v152 = *(v185 + 8);
  if (*a8)
  {
    v153 = v202;
    if (*a8 == 1)
    {
      p_src = &__src;
      v155 = v208;
      v156 = v201;
      specialized Recommender.train(_:nearestItems:)(v208, v201, 50, v151, 4096, v152);
    }

    else
    {
      p_src = &v173;
      v155 = v208;
      v156 = v201;
      specialized Recommender.train(_:nearestItems:)(v208, v201, 50, v151, 4096, v152);
    }
  }

  else
  {
    p_src = &v175;
    v155 = v208;
    v156 = v201;
    v153 = v202;
    specialized Recommender.train(_:nearestItems:)(v208, v201, 50, v151, 4096, v152);
  }

  *&v202 = v153;
  if (v153)
  {
    v207;
    v157 = v205;
    v205;
    a7;
    v155;
    v156;
    outlined destroy of MLRecommender.ModelParameters(a8);
    (*(v204 + 8))(v206, v203);
    outlined destroy of DataFrame?(v199);
    a7;
    v79 = v157;
    goto LABEL_17;
  }

  v208;
  v201;
  v158 = __dst;
  memcpy(__dst, p_src, 0x98uLL);
  v159 = objc_allocWithZone(MLModel);
  v208 = [v159 init];
  v158[19] = v208;
  memset(v179, 0, 72);
  v160 = v187._object;
  MLRecommender.exportToCoreML(metadata:)(v179);
  v161 = v184;
  v162 = v180;
  (*(v180 + 16))(v183, v160, v184);
  v163 = *(v162 + 80);
  v164 = ~*(v162 + 80) & (v163 + 16);
  v165 = swift_allocObject(&unk_3905A8, v164 + v181, v163 | 7);
  (*(v162 + 32))(v165 + v164, v183, v161);
  v166 = v202;
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLRecommender.init(trainingData:userColumn:itemColumn:ratingColumn:parameters:), v165);
  *&v202 = v166;
  if (v166)
  {
    v207;
    v168 = v205;
    v205;
    a7;

    outlined destroy of MLRecommender.ModelParameters(a8);
    (*(v204 + 8))(v206, v203);
    (*(v162 + 8))(v187._object, v161);
    outlined destroy of DataFrame?(v199);
    memcpy(v179, __dst, sizeof(v179));
    outlined release of RecommenderModel<MLRecommender.Identifier, MLRecommender.Identifier>(v179);
    a7;
    v168;
    v207;

    return outlined destroy of MLRecommender.ModelParameters(v185);
  }

  v169 = v167;

  *(__dst + 19) = v169;
  v170 = v207;
  v171 = v205;
  static MLRecommender.reportAnalytics(trainingData:userColumn:itemColumn:ratingColumn:parameters:)(v206, v187._countAndFlagsBits, v207, v189._countAndFlagsBits, v205, v192._countAndFlagsBits, a7, a8);
  v170;
  v171;
  a7;
  outlined destroy of MLRecommender.ModelParameters(a8);
  (*(v204 + 8))(v206, v203);
  (*(v162 + 8))(v187._object, v184);
  return outlined destroy of DataFrame?(v199);
}

uint64_t static MLRecommender.extractIdentifiers(from:)()
{
  v60 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v59 = *(v60 - 8);
  v0 = *(v59 + 64);
  v1 = alloca(v0);
  v2 = alloca(v0);
  v65 = v57;
  v66 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<Int>>);
  v3 = *(v66 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v68 = v57;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v63 = *(v7 - 8);
  v8 = *(v63 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v62 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v58 = *(v62 - 8);
  v11 = *(v58 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v64 = v57;
  v14 = AnyColumn.wrappedElementType.getter(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  if (swift_dynamicCastMetatype(v14, &type metadata for String))
  {
    AnyColumn.assumingType<A>(_:)(&type metadata for String, &type metadata for String);
    v57[0] = 0;
    v57[1] = 0xE000000000000000;
    v15 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
    v16 = v64;
    OptionalColumnProtocol.filled(with:)(v57, v7, v15);
    (*(v63 + 8))(v57, v7);
    v17 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<String>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<String>>, &protocol conformance descriptor for FilledColumn<A>);
    v18 = v62;
    v19 = dispatch thunk of Collection.count.getter(v62, v17);
    v20 = v16;
    if (v19)
    {
      v67 = _swiftEmptyArrayStorage;
      v21 = 0;
      if (v19 > 0)
      {
        v21 = v19;
      }

      v22 = v19;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
      v65 = v67;
      v66 = v17;
      dispatch thunk of Collection.startIndex.getter(v18, v17);
      if (v22 < 0)
      {
        BUG();
      }

      v23 = v22;
      v24 = v66;
      v25 = v65;
      v20 = v64;
      do
      {
        v63 = v23;
        v26 = v20;
        v27 = dispatch thunk of Collection.subscript.read(v57, v61, v18, v24);
        v68 = *v28;
        v29 = v28[1];

        v27(v57, 0);
        v67 = v25;
        v30 = v25[2];
        v31 = v30 + 1;
        if (v25[3] >> 1 <= v30)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v25[3] >= 2uLL, v30 + 1, 1);
          v31 = v30 + 1;
          v26 = v64;
          v25 = v67;
        }

        v25[2] = v31;
        v32 = 3 * v30;
        v25[v32 + 4] = v68;
        v25[v32 + 5] = v29;
        LOBYTE(v25[v32 + 6]) = 0;
        v18 = v62;
        v24 = v66;
        dispatch thunk of Collection.formIndex(after:)(v61, v62, v66);
        v23 = v63 - 1;
        v20 = v26;
      }

      while (v63 != 1);
    }

    (*(v58 + 8))(v20, v18);
    return 0;
  }

  else
  {
    v33 = v65;
    v62 = v3;
    if (swift_dynamicCastMetatype(v14, &type metadata for Int))
    {
      v34 = v33;
      AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
      v57[0] = 0;
      v35 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
      v36 = v60;
      OptionalColumnProtocol.filled(with:)(v57, v60, v35);
      (*(v59 + 8))(v34, v36);
      v37 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<Int>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<Int>>, &protocol conformance descriptor for FilledColumn<A>);
      v38 = v66;
      v39 = dispatch thunk of Collection.count.getter(v66, v37);
      if (v39)
      {
        v40 = v39;
        v67 = _swiftEmptyArrayStorage;
        v41 = 0;
        if (v39 > 0)
        {
          v41 = v39;
        }

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41, 0);
        v65 = v67;
        v42 = v68;
        v64 = v37;
        dispatch thunk of Collection.startIndex.getter(v38, v37);
        v63 = v40;
        if (v40 < 0)
        {
          BUG();
        }

        v43 = v64;
        v44 = v65;
        v38 = v66;
        do
        {
          v45 = v38;
          v46 = dispatch thunk of Collection.subscript.read(v57, v61, v38, v43);
          v48 = *v47;
          v46(v57, 0);
          v67 = v44;
          v49 = v43;
          v50 = v44[2];
          v51 = v44[3];
          v52 = v45;
          v53 = v50 + 1;
          if (v51 >> 1 <= v50)
          {
            v68 = v48;
            v55 = v49;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v51 >= 2, v53, 1);
            v52 = v66;
            v48 = v68;
            v49 = v55;
            v44 = v67;
          }

          v44[2] = v53;
          v54 = 3 * v50;
          v44[v54 + 4] = v48;
          v44[v54 + 5] = 0;
          LOBYTE(v44[v54 + 6]) = 1;
          v38 = v52;
          v43 = v49;
          dispatch thunk of Collection.formIndex(after:)(v61, v52, v49);
          --v63;
        }

        while (v63);
      }

      else
      {
        v42 = v68;
      }

      (*(v62 + 8))(v42, v38);
      return 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t static MLRecommender.extractNearestItems(itemColumn:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = v3;
  *&v64 = a2;
  v59 = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v57 = &v51;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v53 = &v51;
  v10 = alloca(v5);
  v11 = alloca(v5);
  v12 = type metadata accessor for DataFrame(0);
  v63 = *(v12 - 8);
  v13 = *(v63 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v58 = &v51;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v56 = &v51;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v55 = &v51;
  v20 = type metadata accessor for MLRecommender.ModelParameters(0);
  v21 = *(v20 + 28);
  v54 = a3;
  outlined init with copy of DataFrame?(a3 + v21, &v51);
  v22 = 1;
  v60 = &v51;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v51, 1, v12);
  v52 = v12;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of DataFrame?(v60);
    v24 = *(v20 + 32);
    v25 = *(v54 + v24 + 8);
    v26 = v59;
    if (v25 != -1)
    {
      *&v62 = *(v54 + v24);
      BYTE8(v62) = v25 & 1;
      outlined copy of Result<_DataTable, Error>(v62, v25);
      DataFrame.init(_:)(&v62);
      v22 = 0;
    }
  }

  else
  {
    v27 = *(v63 + 32);
    v28 = v55;
    v27(v55, v60, v12);
    v29 = v59;
    v27(v59, v28, v12);
    v22 = 0;
    v26 = v29;
  }

  v30 = v52;
  __swift_storeEnumTagSinglePayload(v26, v22, 1, v52);
  v31 = v64;
  v32 = AnyColumn.wrappedElementType.getter(v26);
  if (swift_dynamicCastMetatype(v32, &type metadata for String))
  {
    v33 = alloca(24);
    v34 = alloca(32);
    v53 = v31;
    v35 = v61;
    *&v64 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverOSay8CreateML13MLRecommenderV10IdentifierOGTg5(partial apply for closure #1 in static MLRecommender.extractNearestItems(itemColumn:parameters:), &v51);
    v36 = v53;
    outlined init with copy of DataFrame?(v26, v53);
    if (__swift_getEnumTagSinglePayload(v36, 1, v30) != 1)
    {
      v37 = v56;
      v38 = v36;
      v39 = v63;
      (*(v63 + 32))(v56, v38, v30);
      closure #2 in static MLRecommender.extractNearestItems(itemColumn:parameters:)();
LABEL_13:
      if (v35)
      {
        (*(v39 + 8))(v37, v30);
        BUG();
      }

      (*(v39 + 8))(v37, v30);
    }
  }

  else
  {
    if (!swift_dynamicCastMetatype(v32, &type metadata for Int))
    {
      *&v62 = 0;
      *(&v62 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(88);
      v43._countAndFlagsBits = 0x6C6F63206D657449;
      v43._object = 0xED000027206E6D75;
      String.append(_:)(v43);
      v44 = AnyColumn.name.getter();
      v46 = v45;
      v43._countAndFlagsBits = v44;
      v43._object = v45;
      String.append(_:)(v43);
      v46;
      v43._object = "Max Similarity Iterations" + 0x8000000000000000;
      v43._countAndFlagsBits = 0xD000000000000049;
      String.append(_:)(v43);
      v64 = v62;
      v47 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v47, 0, 0);
      *v48 = v64;
      *(v48 + 16) = 0;
      *(v48 + 32) = 0;
      *(v48 + 48) = 1;
      swift_willThrow();
      return outlined destroy of DataFrame?(v26);
    }

    v40 = alloca(24);
    v41 = alloca(32);
    v53 = v64;
    v35 = v61;
    *&v64 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverOSay8CreateML13MLRecommenderV10IdentifierOGTg5(partial apply for closure #3 in static MLRecommender.extractNearestItems(itemColumn:parameters:), &v51);
    v42 = v57;
    outlined init with copy of DataFrame?(v26, v57);
    if (__swift_getEnumTagSinglePayload(v42, 1, v30) != 1)
    {
      v37 = v58;
      v50 = v42;
      v39 = v63;
      (*(v63 + 32))(v58, v50, v30);
      closure #4 in static MLRecommender.extractNearestItems(itemColumn:parameters:)();
      goto LABEL_13;
    }
  }

  return v64;
}

Swift::OpaquePointer_optional __swiftcall AnyColumn.extractDoubles(fillValue:)(Swift::Double fillValue)
{
  v54 = fillValue;
  v53 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v51 = *(v53 - 8);
  v1 = *(v51 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v59 = v50;
  v52 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Float>);
  v4 = *(v52 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v58 = v50;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v61 = *(v8 - 8);
  v9 = *(v61 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v57 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<Double>>));
  v12 = *(*(*&v57 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v55 = v50;
  v15 = AnyColumn.wrappedElementType.getter(&demangling cache variable for type metadata for FilledColumn<Column<Double>>);
  if (!swift_dynamicCastMetatype(v15, &type metadata for Double))
  {
    v55 = v4;
    if (swift_dynamicCastMetatype(v15, &type metadata for Float))
    {
      v20 = v58;
      AnyColumn.assumingType<A>(_:)(&type metadata for Float, &type metadata for Float);
      v21 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Float> and conformance Column<A>, &demangling cache variable for type metadata for Column<Float>, &protocol conformance descriptor for Column<A>);
      v22 = v52;
      v23 = dispatch thunk of Collection.count.getter(v52, v21);
      if (v23)
      {
        v24 = v23;
        v60 = _swiftEmptyArrayStorage;
        v25 = 0;
        if (v23 > 0)
        {
          v25 = v23;
        }

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
        v26 = v60;
        v59 = v21;
        dispatch thunk of Collection.startIndex.getter(v22, v21);
        if (v24 < 0)
        {
          BUG();
        }

        v27 = v59;
        do
        {
          v61 = v24;
          v28 = dispatch thunk of Collection.subscript.read(v50, v56, v22, v27);
          v30 = v54;
          if (!*(v29 + 4))
          {
            v30 = *v29;
          }

          v57 = v30;
          v28(v50, 0);
          v31 = v26;
          v60 = v26;
          v32 = v26[2];
          if (v26[3] >> 1 <= v32)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26[3] >= 2uLL, v32 + 1, 1);
            v31 = v60;
          }

          v31[2] = v32 + 1;
          v26 = v31;
          *&v31[v32 + 4] = v57;
          v33 = v58;
          v22 = v52;
          v27 = v59;
          dispatch thunk of Collection.formIndex(after:)(v56, v52, v59);
          v24 = v61 - 1;
        }

        while (v61 != 1);
        v19 = v26;
        v20 = v33;
      }

      else
      {
        v19 = _swiftEmptyArrayStorage;
      }

      v47 = v20;
      v48 = v22;
      v49 = v55;
    }

    else
    {
      if (!swift_dynamicCastMetatype(v15, &type metadata for Int))
      {
        v19 = 0;
        goto LABEL_33;
      }

      v34 = v59;
      AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
      v35 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
      v36 = v53;
      v37 = dispatch thunk of Collection.count.getter(v53, v35);
      if (v37)
      {
        v60 = _swiftEmptyArrayStorage;
        v38 = 0;
        if (v37 > 0)
        {
          v38 = v37;
        }

        v61 = v37;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38, 0);
        v19 = v60;
        v58 = v35;
        dispatch thunk of Collection.startIndex.getter(v36, v35);
        v39 = v61;
        if (v61 < 0)
        {
          BUG();
        }

        v40 = v58;
        do
        {
          v61 = v39;
          v41 = dispatch thunk of Collection.subscript.read(v50, v56, v36, v40);
          v43 = v54;
          if (!*(v42 + 8))
          {
            v43 = *v42;
          }

          v57 = v43;
          v41(v50, 0);
          v44 = v19;
          v60 = v19;
          v45 = v19[2];
          if (v19[3] >> 1 <= v45)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19[3] >= 2uLL, v45 + 1, 1);
            v44 = v60;
          }

          v44[2] = v45 + 1;
          v19 = v44;
          *&v44[v45 + 4] = v57;
          v46 = v59;
          v36 = v53;
          v40 = v58;
          dispatch thunk of Collection.formIndex(after:)(v56, v53, v58);
          v39 = v61 - 1;
        }

        while (v61 != 1);
        v34 = v46;
      }

      else
      {
        v19 = _swiftEmptyArrayStorage;
      }

      v47 = v34;
      v48 = v36;
      v49 = v51;
    }

    (*(v49 + 1))(v47, v48);
    goto LABEL_33;
  }

  AnyColumn.assumingType<A>(_:)(&type metadata for Double, &type metadata for Double);
  v50[0] = v54;
  v16 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Double> and conformance Column<A>, &demangling cache variable for type metadata for Column<Double>, &protocol conformance descriptor for Column<A>);
  OptionalColumnProtocol.filled(with:)(v50, v8, v16);
  (*(v61 + 8))(v50, v8);
  v17 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<Double>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<Double>>, &protocol conformance descriptor for FilledColumn<A>);
  v19 = dispatch thunk of Sequence._copyToContiguousArray()(*&v57, v17);
LABEL_33:
  v18.value._rawValue = v19;
  return v18;
}

uint64_t *specialized Recommender.train(_:nearestItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v59 = a4;
  __dst = v6;
  v61 = v7;
  v60 = a5;
  v57 = a6;

  _s8CreateML23RecommenderTrainingDataVyACyxq_GSayx4user_q_4itemSd6ratingtGcfCAA13MLRecommenderV10IdentifierO_ALTt0g5(a1, a2);
  v9 = specialized Recommender.buildInteractionTable(_:nearestItems:)(v49, a2, a6, a3, v59, v60, static CosineSimilarity.buildItemStatistics(ratings:count:), specialized ItemSimilarityTrainer.train());
  if (v7)
  {
    return outlined release of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(v49);
  }

  v13 = v10;
  v14 = v11;
  v61 = v9;
  v59 = a3;
  v60 = 0;
  outlined retain of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(v49);
  if (one-time initialization token for predictor != -1)
  {
    swift_once(&one-time initialization token for predictor, one-time initialization function for predictor);
  }

  qmemcpy(__src, v49, 0x50uLL);
  *&__src[17] = 0;
  *&__src[10] = static CosineSimilarity.predictor;
  __src[12] = v61;
  __src[13] = v13;
  __src[14] = v14;
  __src[15] = _swiftEmptyArrayStorage;
  __src[16] = _swiftEmptyArrayStorage;
  v61 = *(*&v49[1] + 16);
  v15 = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5(0, v61);
  v48[1] = v49[3];
  v48[2] = v49[4];
  v48[0] = v49[2];
  v51 = *(&v49[3] + 1);
  v52 = v49[4];
  outlined retain of [Int](&v51);
  outlined retain of [Int](&v52);
  outlined retain of ContiguousArray<Double>(&v52 + 8);
  v16 = v15;
  _s13LinearAlgebra12SparseMatrixV15IndexedSequenceV8IteratorV4baseAGyx__GACyxG_tcfCSd_Tt0g5(v48);
  v17 = v59;
  while (1)
  {
    specialized SparseMatrix.IndexedSequence.Iterator.next()();
    if (v19)
    {
      break;
    }

    v20 = v18;
    if (!swift_isUniquelyReferenced_nonNull_native(v16))
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
    }

    if (v20 < 0)
    {
      BUG();
    }

    if (v20 >= v16[2])
    {
      BUG();
    }

    v21 = v16[v20 + 4];
    v22 = __OFADD__(1, v21);
    v23 = v21 + 1;
    if (v22)
    {
      BUG();
    }

    v16[v20 + 4] = v23;
  }

  v47[3] = *&__src[25];
  v47[2] = *&__src[23];
  v47[1] = *&__src[21];
  v47[0] = *&__src[19];
  outlined release of SparseMatrix<Double>.MajorCollection(v47);
  specialized RecommenderModel.computeStatistics(ratingCounts:)(v16);
  outlined release of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(v49);
  v24 = v61;
  if (v61 >= v17)
  {
    v24 = v17;
  }

  __src[15];
  v25 = 0;
  if (v24 > 0)
  {
    v25 = v24;
  }

  v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0, _swiftEmptyArrayStorage);
  __src[15] = v26;
  if (v17 < 0)
  {
    BUG();
  }

  v57 = *&v16;
  v27 = v26;
  if (v24 <= 0)
  {
    v31 = __dst;
    v30 = v60;
    v29 = _swiftEmptyArrayStorage;
  }

  else
  {

    v28 = v60;
    v29 = specialized Sequence._maxImplementation(count:sortedBy:)(v24, 0, v16);
    v30 = v28;
    v16;
    v31 = __dst;
  }

  v32 = v29;
  ML16RecommenderModelV21buildNewUserSeedItems5count12ratingCountsySi_Sayp51GtFS2i_Sit_tcfu_33_39c69c9f4ee04694167b65f5fa330960p1_tP10Tf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySi_SitG_Sis5NeverOTg5080_s8CreateML16RecommenderModelV21buildNewUserSeedItems5count12ratingCountsySi_Sayp51GtFS2i_Sit_tcfu_33_39c69c9f4ee04694167b65f5fa330960p1_tP10Tf3nnnpk_nTf1cn_n(v29);
  v32;
  v34 = ML16RecommenderModelV21buildNewUserSeedItems5count12ratingCountsySi_Sayp51GtFS2i_Sit_tcfu_33_39c69c9f4ee04694167b65f5fa330960p1_tP10Tf3nnnpk_nTf1cn_n;
  v35 = ML16RecommenderModelV21buildNewUserSeedItems5count12ratingCountsySi_Sayp51GtFS2i_Sit_tcfu_33_39c69c9f4ee04694167b65f5fa330960p1_tP10Tf3nnnpk_nTf1cn_n[2];
  if (v35)
  {
    v59 = v30;
    v36 = *&__src[17];
    v37 = 1.0 / fmax(*&__src[18] - *&__src[17], 1.0);
    v38 = __src[16];
    v39 = 0;
    v40 = v27;
    do
    {
      v41 = *(v34 + 8 * v39 + 32);
      if (v41 < 0)
      {
        BUG();
      }

      if (v41 >= *(v38 + 16))
      {
        BUG();
      }

      v42 = *(v38 + 8 * v41 + 32);
      v43 = v40[2];
      v44 = v40[3];
      if (v44 >> 1 <= v43)
      {
        v61 = v34;
        v60 = v35;
        v53 = v36;
        v54 = v37;
        v55 = v38;
        v56 = v42;
        v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v44 >= 2, v43 + 1, 1, v40);
        v42 = v56;
        v38 = v55;
        v37 = v54;
        v36 = v53;
        v35 = v60;
        v34 = v61;
      }

      ++v39;
      v40[2] = v43 + 1;
      v45 = 2 * v43;
      v40[v45 + 4] = v41;
      *&v40[v45 + 5] = (v42 - v36) * v37;
    }

    while (v35 != v39);
    v46 = v40;
    v34;
    __src[15] = v46;
    v31 = __dst;
  }

  else
  {
    ML16RecommenderModelV21buildNewUserSeedItems5count12ratingCountsySi_Sayp51GtFS2i_Sit_tcfu_33_39c69c9f4ee04694167b65f5fa330960p1_tP10Tf3nnnpk_nTf1cn_n;
  }

  specialized MutableCollection<>.sort(by:)(&__src[15], specialized _ArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));
  SLOBYTE(v57);
  return memcpy(v31, __src, 0x98uLL);
}

{
  v59 = a4;
  __dst = v6;
  v61 = v7;
  v60 = a5;
  v57 = a6;

  _s8CreateML23RecommenderTrainingDataVyACyxq_GSayx4user_q_4itemSd6ratingtGcfCAA13MLRecommenderV10IdentifierO_ALTt0g5(a1, a2);
  v9 = specialized Recommender.buildInteractionTable(_:nearestItems:)(v49, a2, a6, a3, v59, v60, static JaccardSimilarity.buildItemStatistics(ratings:count:), specialized ItemSimilarityTrainer.train());
  if (v7)
  {
    return outlined release of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(v49);
  }

  v13 = v10;
  v14 = v11;
  v61 = v9;
  v59 = a3;
  v60 = 0;
  outlined retain of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(v49);
  if (one-time initialization token for predictor != -1)
  {
    swift_once(&one-time initialization token for predictor, one-time initialization function for predictor);
  }

  qmemcpy(__src, v49, 0x50uLL);
  *&__src[17] = 0;
  *&__src[10] = static JaccardSimilarity.predictor;
  __src[12] = v61;
  __src[13] = v13;
  __src[14] = v14;
  __src[15] = _swiftEmptyArrayStorage;
  __src[16] = _swiftEmptyArrayStorage;
  v61 = *(*&v49[1] + 16);
  v15 = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5(0, v61);
  v48[1] = v49[3];
  v48[2] = v49[4];
  v48[0] = v49[2];
  v51 = *(&v49[3] + 1);
  v52 = v49[4];
  outlined retain of [Int](&v51);
  outlined retain of [Int](&v52);
  outlined retain of ContiguousArray<Double>(&v52 + 8);
  v16 = v15;
  _s13LinearAlgebra12SparseMatrixV15IndexedSequenceV8IteratorV4baseAGyx__GACyxG_tcfCSd_Tt0g5(v48);
  v17 = v59;
  while (1)
  {
    specialized SparseMatrix.IndexedSequence.Iterator.next()();
    if (v19)
    {
      break;
    }

    v20 = v18;
    if (!swift_isUniquelyReferenced_nonNull_native(v16))
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
    }

    if (v20 < 0)
    {
      BUG();
    }

    if (v20 >= v16[2])
    {
      BUG();
    }

    v21 = v16[v20 + 4];
    v22 = __OFADD__(1, v21);
    v23 = v21 + 1;
    if (v22)
    {
      BUG();
    }

    v16[v20 + 4] = v23;
  }

  v47[3] = *&__src[25];
  v47[2] = *&__src[23];
  v47[1] = *&__src[21];
  v47[0] = *&__src[19];
  outlined release of SparseMatrix<Double>.MajorCollection(v47);
  specialized RecommenderModel.computeStatistics(ratingCounts:)(v16);
  outlined release of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(v49);
  v24 = v61;
  if (v61 >= v17)
  {
    v24 = v17;
  }

  __src[15];
  v25 = 0;
  if (v24 > 0)
  {
    v25 = v24;
  }

  v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0, _swiftEmptyArrayStorage);
  __src[15] = v26;
  if (v17 < 0)
  {
    BUG();
  }

  v57 = *&v16;
  v27 = v26;
  if (v24 <= 0)
  {
    v31 = __dst;
    v30 = v60;
    v29 = _swiftEmptyArrayStorage;
  }

  else
  {

    v28 = v60;
    v29 = specialized Sequence._maxImplementation(count:sortedBy:)(v24, 0, v16);
    v30 = v28;
    v16;
    v31 = __dst;
  }

  v32 = v29;
  ML16RecommenderModelV21buildNewUserSeedItems5count12ratingCountsySi_Sayp51GtFS2i_Sit_tcfu_33_39c69c9f4ee04694167b65f5fa330960p1_tP10Tf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySi_SitG_Sis5NeverOTg5080_s8CreateML16RecommenderModelV21buildNewUserSeedItems5count12ratingCountsySi_Sayp51GtFS2i_Sit_tcfu_33_39c69c9f4ee04694167b65f5fa330960p1_tP10Tf3nnnpk_nTf1cn_n(v29);
  v32;
  v34 = ML16RecommenderModelV21buildNewUserSeedItems5count12ratingCountsySi_Sayp51GtFS2i_Sit_tcfu_33_39c69c9f4ee04694167b65f5fa330960p1_tP10Tf3nnnpk_nTf1cn_n;
  v35 = ML16RecommenderModelV21buildNewUserSeedItems5count12ratingCountsySi_Sayp51GtFS2i_Sit_tcfu_33_39c69c9f4ee04694167b65f5fa330960p1_tP10Tf3nnnpk_nTf1cn_n[2];
  if (v35)
  {
    v59 = v30;
    v36 = *&__src[17];
    v37 = 1.0 / fmax(*&__src[18] - *&__src[17], 1.0);
    v38 = __src[16];
    v39 = 0;
    v40 = v27;
    do
    {
      v41 = *(v34 + 8 * v39 + 32);
      if (v41 < 0)
      {
        BUG();
      }

      if (v41 >= *(v38 + 16))
      {
        BUG();
      }

      v42 = *(v38 + 8 * v41 + 32);
      v43 = v40[2];
      v44 = v40[3];
      if (v44 >> 1 <= v43)
      {
        v61 = v34;
        v60 = v35;
        v53 = v36;
        v54 = v37;
        v55 = v38;
        v56 = v42;
        v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v44 >= 2, v43 + 1, 1, v40);
        v42 = v56;
        v38 = v55;
        v37 = v54;
        v36 = v53;
        v35 = v60;
        v34 = v61;
      }

      ++v39;
      v40[2] = v43 + 1;
      v45 = 2 * v43;
      v40[v45 + 4] = v41;
      *&v40[v45 + 5] = (v42 - v36) * v37;
    }

    while (v35 != v39);
    v46 = v40;
    v34;
    __src[15] = v46;
    v31 = __dst;
  }

  else
  {
    ML16RecommenderModelV21buildNewUserSeedItems5count12ratingCountsySi_Sayp51GtFS2i_Sit_tcfu_33_39c69c9f4ee04694167b65f5fa330960p1_tP10Tf3nnnpk_nTf1cn_n;
  }

  specialized MutableCollection<>.sort(by:)(&__src[15], specialized _ArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));
  SLOBYTE(v57);
  return memcpy(v31, __src, 0x98uLL);
}

{
  v59 = a4;
  __dst = v6;
  v61 = v7;
  v60 = a5;
  v57 = a6;

  _s8CreateML23RecommenderTrainingDataVyACyxq_GSayx4user_q_4itemSd6ratingtGcfCAA13MLRecommenderV10IdentifierO_ALTt0g5(a1, a2);
  v9 = specialized Recommender.buildInteractionTable(_:nearestItems:)(v49, a2, a6, a3, v59, v60, static PearsonSimilarity.buildItemStatistics(ratings:count:), specialized ItemSimilarityTrainer.train());
  if (v7)
  {
    return outlined release of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(v49);
  }

  v13 = v10;
  v14 = v11;
  v61 = v9;
  v59 = a3;
  v60 = 0;
  outlined retain of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(v49);
  if (one-time initialization token for predictor != -1)
  {
    swift_once(&one-time initialization token for predictor, one-time initialization function for predictor);
  }

  qmemcpy(__src, v49, 0x50uLL);
  *&__src[17] = 0;
  *&__src[10] = static PearsonSimilarity.predictor;
  __src[12] = v61;
  __src[13] = v13;
  __src[14] = v14;
  __src[15] = _swiftEmptyArrayStorage;
  __src[16] = _swiftEmptyArrayStorage;
  v61 = *(*&v49[1] + 16);
  v15 = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5(0, v61);
  v48[1] = v49[3];
  v48[2] = v49[4];
  v48[0] = v49[2];
  v51 = *(&v49[3] + 1);
  v52 = v49[4];
  outlined retain of [Int](&v51);
  outlined retain of [Int](&v52);
  outlined retain of ContiguousArray<Double>(&v52 + 8);
  v16 = v15;
  _s13LinearAlgebra12SparseMatrixV15IndexedSequenceV8IteratorV4baseAGyx__GACyxG_tcfCSd_Tt0g5(v48);
  v17 = v59;
  while (1)
  {
    specialized SparseMatrix.IndexedSequence.Iterator.next()();
    if (v19)
    {
      break;
    }

    v20 = v18;
    if (!swift_isUniquelyReferenced_nonNull_native(v16))
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
    }

    if (v20 < 0)
    {
      BUG();
    }

    if (v20 >= v16[2])
    {
      BUG();
    }

    v21 = v16[v20 + 4];
    v22 = __OFADD__(1, v21);
    v23 = v21 + 1;
    if (v22)
    {
      BUG();
    }

    v16[v20 + 4] = v23;
  }

  v47[3] = *&__src[25];
  v47[2] = *&__src[23];
  v47[1] = *&__src[21];
  v47[0] = *&__src[19];
  outlined release of SparseMatrix<Double>.MajorCollection(v47);
  specialized RecommenderModel.computeStatistics(ratingCounts:)(v16);
  outlined release of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(v49);
  v24 = v61;
  if (v61 >= v17)
  {
    v24 = v17;
  }

  __src[15];
  v25 = 0;
  if (v24 > 0)
  {
    v25 = v24;
  }

  v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0, _swiftEmptyArrayStorage);
  __src[15] = v26;
  if (v17 < 0)
  {
    BUG();
  }

  v57 = *&v16;
  v27 = v26;
  if (v24 <= 0)
  {
    v31 = __dst;
    v30 = v60;
    v29 = _swiftEmptyArrayStorage;
  }

  else
  {

    v28 = v60;
    v29 = specialized Sequence._maxImplementation(count:sortedBy:)(v24, 0, v16);
    v30 = v28;
    v16;
    v31 = __dst;
  }

  v32 = v29;
  ML16RecommenderModelV21buildNewUserSeedItems5count12ratingCountsySi_Sayp51GtFS2i_Sit_tcfu_33_39c69c9f4ee04694167b65f5fa330960p1_tP10Tf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySi_SitG_Sis5NeverOTg5080_s8CreateML16RecommenderModelV21buildNewUserSeedItems5count12ratingCountsySi_Sayp51GtFS2i_Sit_tcfu_33_39c69c9f4ee04694167b65f5fa330960p1_tP10Tf3nnnpk_nTf1cn_n(v29);
  v32;
  v34 = ML16RecommenderModelV21buildNewUserSeedItems5count12ratingCountsySi_Sayp51GtFS2i_Sit_tcfu_33_39c69c9f4ee04694167b65f5fa330960p1_tP10Tf3nnnpk_nTf1cn_n;
  v35 = ML16RecommenderModelV21buildNewUserSeedItems5count12ratingCountsySi_Sayp51GtFS2i_Sit_tcfu_33_39c69c9f4ee04694167b65f5fa330960p1_tP10Tf3nnnpk_nTf1cn_n[2];
  if (v35)
  {
    v59 = v30;
    v36 = *&__src[17];
    v37 = 1.0 / fmax(*&__src[18] - *&__src[17], 1.0);
    v38 = __src[16];
    v39 = 0;
    v40 = v27;
    do
    {
      v41 = *(v34 + 8 * v39 + 32);
      if (v41 < 0)
      {
        BUG();
      }

      if (v41 >= *(v38 + 16))
      {
        BUG();
      }

      v42 = *(v38 + 8 * v41 + 32);
      v43 = v40[2];
      v44 = v40[3];
      if (v44 >> 1 <= v43)
      {
        v61 = v34;
        v60 = v35;
        v53 = v36;
        v54 = v37;
        v55 = v38;
        v56 = v42;
        v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v44 >= 2, v43 + 1, 1, v40);
        v42 = v56;
        v38 = v55;
        v37 = v54;
        v36 = v53;
        v35 = v60;
        v34 = v61;
      }

      ++v39;
      v40[2] = v43 + 1;
      v45 = 2 * v43;
      v40[v45 + 4] = v41;
      *&v40[v45 + 5] = (v42 - v36) * v37;
    }

    while (v35 != v39);
    v46 = v40;
    v34;
    __src[15] = v46;
    v31 = __dst;
  }

  else
  {
    ML16RecommenderModelV21buildNewUserSeedItems5count12ratingCountsySi_Sayp51GtFS2i_Sit_tcfu_33_39c69c9f4ee04694167b65f5fa330960p1_tP10Tf3nnnpk_nTf1cn_n;
  }

  specialized MutableCollection<>.sort(by:)(&__src[15], specialized _ArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));
  SLOBYTE(v57);
  return memcpy(v31, __src, 0x98uLL);
}