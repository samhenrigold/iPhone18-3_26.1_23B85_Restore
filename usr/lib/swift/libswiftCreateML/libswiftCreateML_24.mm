id closure #1 in MLMultiArray.cast(to:)(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = v3;
  if (a1)
  {
    v5 = a2 - a1;
    v15 = v5 / 4;
    v6 = [a3 shape];
  }

  else
  {
    v15 = 0;
    v6 = [a3 shape];
  }

  v7 = v6;
  v8 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v7, v8);

  objc_allocWithZone(MLMultiArray);
  result = @nonobjc MLMultiArray.init(shape:dataType:)(v9, 65600);
  if (!v4)
  {
    v11 = result;
    v12 = alloca(32);
    v13 = alloca(32);
    v16 = a1;
    v17 = v15;
    MLMultiArray.withUnsafeMutableBytes<A>(_:)(partial apply for closure #1 in closure #1 in MLMultiArray.cast(to:), &v14, &type metadata for () + 8);
    result = v14;
    *v14 = v11;
  }

  return result;
}

void closure #1 in closure #1 in MLMultiArray.cast(to:)(double *__C, uint64_t a2, uint64_t a3, const float *a4, int64_t a5)
{
  if (__C)
  {
    v5 = (a2 - __C) / 8;
  }

  else
  {
    v5 = 0;
  }

  if (v5 < a5)
  {
    a5 = v5;
  }

  if (a5 < 0)
  {
    BUG();
  }

  if (!a4)
  {
    BUG();
  }

  if (!__C)
  {
    BUG();
  }

  vDSP_vspdp(a4, 1, __C, 1, a5);
}

id closure #2 in MLMultiArray.cast(to:)(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = v3;
  if (a1)
  {
    v5 = a2 - a1;
    v15 = v5 / 8;
    v6 = [a3 shape];
  }

  else
  {
    v15 = 0;
    v6 = [a3 shape];
  }

  v7 = v6;
  v8 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v7, v8);

  objc_allocWithZone(MLMultiArray);
  result = @nonobjc MLMultiArray.init(shape:dataType:)(v9, &loc_10020);
  if (!v4)
  {
    v11 = result;
    v12 = alloca(32);
    v13 = alloca(32);
    v16 = a1;
    v17 = v15;
    MLMultiArray.withUnsafeMutableBytes<A>(_:)(partial apply for closure #1 in closure #2 in MLMultiArray.cast(to:), &v14, &type metadata for () + 8);
    result = v14;
    *v14 = v11;
  }

  return result;
}

void closure #1 in closure #2 in MLMultiArray.cast(to:)(float *__C, uint64_t a2, uint64_t a3, const double *a4, int64_t a5)
{
  if (__C)
  {
    v5 = (a2 - __C) / 4;
  }

  else
  {
    v5 = 0;
  }

  if (v5 < a5)
  {
    a5 = v5;
  }

  if (a5 < 0)
  {
    BUG();
  }

  if (!a4)
  {
    BUG();
  }

  if (!__C)
  {
    BUG();
  }

  vDSP_vdpsp(a4, 1, __C, 1, a5);
}

id @nonobjc MLModel.__allocating_init(contentsOf:)(uint64_t a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v2 = v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = 0;
  v4 = [ObjCClassFromMetadata modelWithContentsOfURL:v2 error:&v12];
  v5 = v4;

  v6 = v12;
  if (v5)
  {
    v7 = type metadata accessor for URL(0);
    v8 = *(*(v7 - 8) + 8);
    v6;
    v8(a1, v7);
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)(v6);

    swift_willThrow();
    v10 = type metadata accessor for URL(0);
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v5;
}

id key path getter for MLGazetteer.model : MLGazetteer()
{
  v1 = v0;
  result = MLGazetteer.model.getter();
  *v1 = result;
  return result;
}

void (*MLGazetteer.model.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + 16);
  a1[2] = v3;
  *a1 = v3;
  v3;
  return MLWordTagger.model.modify;
}

id MLGazetteer.modelParameters.getter()
{
  v2 = *(v1 + 24);
  *v0 = v2;
  return v2;
}

NSURL *MLGazetteer.init(dictionary:parameters:)(uint64_t a1, void **a2)
{
  v118 = v3;
  v103 = v2;
  v117 = type metadata accessor for UUID(0);
  isa = *(v117 - 1);
  v4 = *(isa + 8);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v115 = &v101;
  v106 = type metadata accessor for URL(0);
  v111 = *(v106 - 8);
  v7 = *(v111 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v102 = &v101;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v104 = &v101;
  v12 = alloca(v7);
  v13 = alloca(v7);
  v101 = &v101;
  v14 = alloca(v7);
  v15 = alloca(v7);
  v109 = &v101;
  v16 = alloca(v7);
  v17 = alloca(v7);
  v114 = &v101;
  v18 = alloca(v7);
  v19 = alloca(v7);
  v110 = &v101;
  v20 = alloca(v7);
  v21 = alloca(v7);
  v112 = &v101;
  v22 = *a2;
  v23 = objc_opt_self(NSFileManager);
  v105 = v22;
  v24 = v22;
  v113 = v24;

  v26 = [v23 defaultManager];
  v27 = v26;
  NSFileManager.createTemporaryModelDirectory()();
  if (v28)
  {

    swift_bridgeObjectRelease_n(a1, 2);
    v29 = v113;

    v30 = v29;
    goto LABEL_12;
  }

  v118 = 0;
  v108 = v27;
  NSFileManager.temporaryModelDirectory.getter();
  v31 = v115;
  UUID.init()();
  v32 = UUID.uuidString.getter();
  v116 = a1;
  v34 = v33;
  (*(isa + 1))(v31, v117);
  v119[0] = v32;
  v119[1] = v34;
  v35._countAndFlagsBits = 45;
  v35._object = 0xE100000000000000;
  String.append(_:)(v35);
  v35._countAndFlagsBits = 0x65657474657A6147;
  v35._object = 0xE900000000000072;
  String.append(_:)(v35);
  LOBYTE(v32) = v119[1];
  URL.appendingPathComponent(_:)(v119[0], v119[1]);
  v32;
  URL.appendingPathExtension(_:)(7627108, 0xE300000000000000);
  URL.appendingPathExtension(_:)(0x6C65646F6D6C6DLL, 0xE700000000000000);
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v36 = v113;
  v37 = v113;
  if (!v105)
  {
    v37 = NLLanguageUndetermined;
  }

  v38 = objc_opt_self(NLGazetteer);
  v117 = v36;
  URL._bridgeToObjectiveC()(v117);
  v40 = v39;
  v119[0] = 0;
  v41 = v38;
  v42 = isa;
  LOBYTE(v115) = [v41 writeGazetteerForDictionary:isa language:v37 toURL:v39 error:v119];

  v43 = v119[0];
  if (!v115)
  {
    v51 = v119[0];
    v116;
    v52 = v117;
    (objc_release)(v117);
    (objc_release)(v52);
    _convertNSErrorToError(_:)(v43);
    (objc_release)(v51);
    swift_willThrow();
    (objc_release)(v108);
    v53 = *(v111 + 8);
    v54 = v106;
    v53(v109, v106);
    v53(v114, v54);
    v53(v110, v54);
    v53(v112, v54);
    v116;
    goto LABEL_11;
  }

  v44 = v101;
  v45 = v106;
  isa = *(v111 + 16);
  (isa)(v101, v114, v106);
  objc_allocWithZone(NLGazetteer);
  v43;
  v46 = v118;
  v47 = @nonobjc NLGazetteer.init(contentsOf:)(v44);
  v118 = v46;
  v48 = v116;
  if (v46)
  {
    v116;

    v49 = v117;
    v50 = *(v111 + 8);
    v50(v109, v45);
    v50(v114, v45);
    v50(v110, v45);
    v50(v112, v45);
    v48;
LABEL_11:
    v30 = v113;
    goto LABEL_12;
  }

  v55 = v47;
  v120 = v105;
  memset(v119, 0, 72);
  v117 = v117;
  v56 = v55;
  v57 = v48;
  v58 = v48;
  v59 = v109;
  v60 = v118;
  static MLGazetteer.write(dictionary:parameters:to:metadata:)(v58, &v120, v109, v119);
  v118 = v60;
  if (v60)
  {
    v57;
    v61 = v59;
    v62 = v56;

    v63 = v117;
    v64 = v61;
    v65 = *(v111 + 8);
    v66 = v106;
    v65(v64, v106);
    v65(v114, v66);
    v65(v110, v66);
    v65(v112, v66);
    v116;

    goto LABEL_11;
  }

  v115 = v56;

  v68 = objc_opt_self(MLModel);
  URL._bridgeToObjectiveC()(v68);
  v70 = v69;
  v119[0] = 0;
  v71 = [(NSURL *)v68 compileModelAtURL:v69 error:v119];
  v72 = v71;

  v73 = v119[0];
  if (!v72)
  {
    v84 = v119[0];

    v116;
    v85 = v117;

    _convertNSErrorToError(_:)(v73);
    swift_willThrow();
    v86 = v109;
    $defer #1 () in MLGazetteer.init(dictionary:parameters:)();

    v87 = v86;
    v88 = *(v111 + 8);
    v89 = v106;
    v88(v87, v106);
    v88(v114, v89);
    v88(v110, v89);
    v88(v112, v89);
    v116;

    goto LABEL_11;
  }

  v74 = v104;
  static URL._unconditionallyBridgeFromObjectiveC(_:)(v72);
  v73;
  v75 = v72;
  v76 = v74;

  type metadata accessor for MLModel();
  v77 = v102;
  v78 = v106;
  (isa)(v102, v76, v106);
  v79 = v118;
  v80 = @nonobjc MLModel.__allocating_init(contentsOf:)(v77);
  v118 = v79;
  if (!v79)
  {
    v90 = v80;
    v91 = v116;
    v92 = *(v116 + 16);

    v113 = v90;
    v93 = specialized _copyCollectionToContiguousArray<A>(_:)(v91);
    v91;
    v94 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_s15FlattenSequenceVySaySaySSGGGTt0g5(v93);
    v95 = *(v94 + 16);
    v94;
    static MLGazetteer.reportAnalytics(termCount:labelCount:language:)(v92, v95, v105);

    v96 = *(v111 + 8);
    v96(v104, v78);
    v97 = v109;
    $defer #1 () in MLGazetteer.init(dictionary:parameters:)();

    v96(v97, v78);
    v96(v114, v78);
    v96(v110, v78);
    v96(v112, v78);
    v98 = v103;
    v99 = v115;
    *v103 = v115;
    v98[1] = v91;
    v100 = v113;
    v98[2] = v113;
    v98[3] = v105;

    v91;
    (objc_release)(v99);
    return __stack_chk_guard;
  }

  v81 = *(v111 + 8);
  v81(v76, v78);

  v116;
  v82 = v117;

  v83 = v109;
  $defer #1 () in MLGazetteer.init(dictionary:parameters:)();

  v81(v83, v78);
  v81(v114, v78);
  v81(v110, v78);
  v81(v112, v78);
  v116;

  v30 = v113;
LABEL_12:

  return __stack_chk_guard;
}

NSURL *$defer #1 () in MLGazetteer.init(dictionary:parameters:)()
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

char static MLGazetteer.reportAnalytics(termCount:labelCount:language:)(int a1, int a2, uint64_t a3)
{
  result = AnalyticsReporter.init()();
  if ((result & 1) == 0)
  {
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_gazetteer, __PAIR128__(0xEF736D7265542066, 0x6F207265626D754ELL), a1);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_gazetteer, __PAIR128__(("Number of Annotations" + 0x8000000000000000), 0xD000000000000010), a2);
    if (a3)
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
      v7 = v6;
    }

    else
    {
      v7 = "formers Text Embedding" + 0x8000000000000000;
      v5 = 0xD000000000000014;
    }

    AnalyticsReporter.reportParameterSettings(model:parameterName:parameterValue:)(CreateML_ModelType_gazetteer, __PAIR128__(0xE800000000000000, 0x65676175676E614CLL), __PAIR128__(v7, v5));
    return v7;
  }

  return result;
}

_OWORD *MLGazetteer.init(labeledData:textColumn:labelColumn:parameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, id *a6, double a7)
{
  v74._countAndFlagsBits = a4;
  v65 = v7;
  v73[0] = a2;
  v73[1] = a5;
  v10 = *a1;
  v11 = *(a1 + 8);
  v68 = *a6;
  outlined copy of Result<_DataTable, Error>(*a1, v11);
  v12._countAndFlagsBits = a2;
  v12._object = a3;
  MLDataTable.subscript.getter(v12);
  a3;
  outlined consume of Result<_DataTable, Error>(v10, v11);
  v73[0] = v69;
  HIBYTE(v74._object) = BYTE8(v69);
  *&v71 = v10;
  BYTE8(v71) = v11;
  outlined copy of Result<_DataTable, Error>(v10, v11);
  v12._countAndFlagsBits = v74._countAndFlagsBits;
  v12._object = v73[1];
  MLDataTable.subscript.getter(v12);
  v73[1];
  outlined consume of Result<_DataTable, Error>(v10, v11);
  v72 = v69;
  BYTE6(v74._object) = BYTE8(v69);
  *&v69 = v10;
  BYTE8(v69) = v11;
  outlined copy of Result<_DataTable, Error>(v10, v11);
  v13 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v10, v11);
  v14 = specialized RandomAccessCollection<>.distance(from:to:)(0, v13, v10, v11);
  outlined consume of Result<_DataTable, Error>(v10, v11);
  v64 = v14;
  if (v14 < 0)
  {
    BUG();
  }

  v15 = _swiftEmptyDictionarySingleton;
  if (v14)
  {
    v16 = 0;
    v17 = v72;
    while (1)
    {
      if (BYTE6(v74._object))
      {

        v15 = _swiftEmptyDictionarySingleton;
        v16 = 0;
        goto LABEL_29;
      }

      outlined copy of Result<_DataTable, Error>(v17, 0);
      _UntypedColumn.valueAtIndex(index:)(v16, a7);
      outlined consume of Result<_DataTable, Error>(v17, 0);
      v73[1] = *(&v69 + 1);
      if (v70 != 2)
      {
        break;
      }

      if (HIBYTE(v74._object))
      {

        outlined consume of MLDataValue(v69, v73[1], 2);
        v74._countAndFlagsBits = _swiftEmptyDictionarySingleton;
        _StringGuts.grow(_:)(32);
        0;
        strcpy(&v71, "Current text ");
        HIWORD(v71) = -4864;
        v59._countAndFlagsBits = MLDataValue.description.getter();
        object = v59._object;
        String.append(_:)(v59);
        object;
        outlined consume of MLDataValue(0, 0, 6);
        v61._countAndFlagsBits = 0xD000000000000011;
        String.append(_:)(v61);
        *&v73[1] = v71;
        v62 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v62, 0, 0);
        *v63 = v71;
        *(v63 + 16) = 0;
        *(v63 + 32) = 0;
        *(v63 + 48) = 1;
        swift_willThrow();
        v58 = v72;
        v57 = 0;
        goto LABEL_34;
      }

      v74._countAndFlagsBits = v69;
      v18 = v16;
      v19 = v15;
      outlined copy of Result<_DataTable, Error>(v73[0], 0);
      v67 = v18;
      _UntypedColumn.valueAtIndex(index:)(v18, a7);
      outlined consume of Result<_DataTable, Error>(v73[0], 0);
      v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
      v21 = swift_allocObject(v20, 48, 7);
      *(v21 + 16) = 1;
      *(v21 + 24) = 2;
      *(v21 + 32) = v69;
      v66 = v21;
      *&v69 = v21;
      countAndFlagsBits = v74._countAndFlagsBits;
      if (v15[2])
      {

        v23 = specialized __RawDictionaryStorage.find<A>(_:)(v74._countAndFlagsBits, v73[1]);
        if (v24)
        {
          v25 = *(v15[7] + 8 * v23);

          outlined consume of MLDataValue(v74._countAndFlagsBits, v73[1], 2);
          v26 = v25;
          v15 = v19;
          specialized Array.append<A>(contentsOf:)(v26);
          v66 = v69;
          v27 = v73[1];
          countAndFlagsBits = v74._countAndFlagsBits;
        }

        else
        {
          countAndFlagsBits = v74._countAndFlagsBits;
          outlined consume of MLDataValue(v74._countAndFlagsBits, v73[1], 2);
          v27 = v73[1];
        }
      }

      else
      {
        v27 = v73[1];
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v15);
      *&v71 = v15;
      v30 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v27);
      v31 = (v29 & 1) == 0;
      v32 = __OFADD__(v15[2], v31);
      v33 = v15[2] + v31;
      if (v32)
      {
        BUG();
      }

      v34 = v29;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [String]>);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v33))
      {
        v35 = v73[1];
        v30 = specialized __RawDictionaryStorage.find<A>(_:)(v74._countAndFlagsBits, v73[1]);
        LOBYTE(v37) = v37 & 1;
        if ((v34 & 1) != v37)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v73[1], v37, v36);
          BUG();
        }

        v38 = v34;
        v39 = v74._countAndFlagsBits;
      }

      else
      {
        v35 = v73[1];
        v39 = v74._countAndFlagsBits;
        v38 = v34;
      }

      v15 = v71;
      if (v38)
      {
        v40 = *(v71 + 56);
        v41 = *(v40 + 8 * v30);
        *(v40 + 8 * v30) = v66;
        v41;
        outlined consume of MLDataValue(v39, v35, 2);
        v17 = v72;
      }

      else
      {
        *(v71 + 8 * (v30 >> 6) + 64) |= 1 << v30;
        v42 = v15[6];
        v43 = 16 * v30;
        *(v42 + v43) = v39;
        *(v42 + v43 + 8) = v35;
        *(v15[7] + 8 * v30) = v66;
        v44 = v15[2];
        v32 = __OFADD__(1, v44);
        v45 = v44 + 1;
        v17 = v72;
        if (v32)
        {
          BUG();
        }

        v15[2] = v45;
      }

      v16 = v67 + 1;
      v46 = v73[0];
      if (v64 == v67 + 1)
      {
        goto LABEL_24;
      }
    }

    outlined consume of MLDataValue(v69, v73[1], v70);

LABEL_29:
    v74._countAndFlagsBits = v15;
    _StringGuts.grow(_:)(33);
    0;
    strcpy(&v71, "Current label ");
    HIBYTE(v71) = -18;
    if (BYTE6(v74._object))
    {
      v50 = 6;
      v51 = 0;
    }

    else
    {
      outlined copy of Result<_DataTable, Error>(v17, 0);
      _UntypedColumn.valueAtIndex(index:)(v16, a7);
      outlined consume of Result<_DataTable, Error>(v17, 0);
      v51 = 0xE000000000000000;
      v50 = v70;
    }

    v52._countAndFlagsBits = MLDataValue.description.getter();
    v53 = v52._object;
    String.append(_:)(v52);
    v53;
    outlined consume of MLDataValue(0, v51, v50);
    v54._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v54);
    *&v73[1] = v71;
    v55 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v55, 0, 0);
    *v56 = v71;
    *(v56 + 16) = 0;
    *(v56 + 32) = 0;
    *(v56 + 48) = 1;
    swift_willThrow();
    v57 = BYTE6(v74._object);
    v58 = v72;
LABEL_34:
    outlined consume of Result<_DataTable, Error>(v58, v57);
    outlined consume of Result<_DataTable, Error>(v73[0], SHIBYTE(v74._object));
    v48 = v74._countAndFlagsBits;
  }

  else
  {
    v46 = v73[0];
    v17 = v72;
LABEL_24:
    v47 = v46;
    *&v71 = v68;

    MLGazetteer.init(dictionary:parameters:)(v15, &v71);
    if (!v8)
    {
      outlined consume of Result<_DataTable, Error>(v17, SBYTE6(v74._object));
      outlined consume of Result<_DataTable, Error>(v47, SHIBYTE(v74._object));
      v15;
      result = v65;
      *v65 = v69;
      v65[1] = v70;
      return result;
    }

    outlined consume of Result<_DataTable, Error>(v17, SBYTE6(v74._object));
    outlined consume of Result<_DataTable, Error>(v47, SHIBYTE(v74._object));
    v48 = v15;
  }

  return v48;
}

unint64_t MLGazetteer.description.getter()
{
  v9 = *(v0 + 24);
  v1 = v9;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NLLanguage?);
  v9 = String.init<A>(describing:)(&v9, v3);
  v10 = v4;
  v5._countAndFlagsBits = 10;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v5._countAndFlagsBits = v9;
  v6 = v10;
  v9 = 0x65676175676E614CLL;
  v10 = 0xEA0000000000203ALL;
  v5._object = v6;
  String.append(_:)(v5);

  v6;
  v5._countAndFlagsBits = v9;
  v7 = v10;
  v9 = 0xD000000000000016;
  v10 = " is not a String." + 0x8000000000000000;
  v5._object = v7;
  String.append(_:)(v5);
  v7;
  return v9;
}

unint64_t MLGazetteer.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v8 = *(v0 + 24);
  v7 = v1;

  v4 = v3;
  v5 = MLGazetteer.description.getter();

  v2;
  return v5;
}

unint64_t MLGazetteer.playgroundDescription.getter()
{
  v12 = v0;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v10 = *(v1 + 24);
  v9 = v2;

  v5 = v4;
  v6 = MLGazetteer.description.getter();
  v11 = v7;

  v3;
  v12[3] = &type metadata for String;
  *v12 = v6;
  result = v11;
  v12[1] = v11;
  return result;
}

id @nonobjc NLGazetteer.init(contentsOf:)(uint64_t a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [v1 initWithContentsOfURL:v2 error:&v12];

  v5 = v12;
  v11 = v4;
  if (v4)
  {
    v6 = type metadata accessor for URL(0);
    v7 = *(*(v6 - 8) + 8);
    v5;
    v7(a1, v6);
  }

  else
  {
    v8 = v12;
    _convertNSErrorToError(_:)(v5);

    swift_willThrow();
    v9 = type metadata accessor for URL(0);
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v11;
}

void destroy for MLGazetteer(uint64_t a1)
{
  *(a1 + 8);
}

void *initializeWithCopy for MLGazetteer(void *a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  a1[1] = *(a2 + 8);
  v4 = *(a2 + 16);
  a1[2] = v4;
  v5 = *(a2 + 24);
  a1[3] = v5;
  v3;

  v4;
  v5;
  return a1;
}

uint64_t assignWithCopy for MLGazetteer(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *a1;
  *a1 = *a2;
  v3;

  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v5;
  v6 = *(a2 + 16);
  v7 = *(a1 + 16);
  *(a1 + 16) = v6;
  v6;

  v8 = *(a1 + 24);
  v9 = *(a2 + 24);
  *(a1 + 24) = v9;
  v9;

  return a1;
}

uint64_t assignWithTake for MLGazetteer(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  *a1 = *a2;
  v3;

  v4 = *(a1 + 24);
  *(a1 + 16) = a2[1];

  return a1;
}

Swift::Int MLBoundingBoxAnchor.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)(0);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type MLBoundingBoxAnchor and conformance MLBoundingBoxAnchor()
{
  result = lazy protocol witness table cache variable for type MLBoundingBoxAnchor and conformance MLBoundingBoxAnchor;
  if (!lazy protocol witness table cache variable for type MLBoundingBoxAnchor and conformance MLBoundingBoxAnchor)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLBoundingBoxAnchor, &type metadata for MLBoundingBoxAnchor);
    lazy protocol witness table cache variable for type MLBoundingBoxAnchor and conformance MLBoundingBoxAnchor = result;
  }

  return result;
}

unint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (*(a3 + 16))
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v6)
    {
      return outlined init with copy of Any(*(a3 + 56) + 32 * result, v4);
    }
  }

  v4[1] = 0;
  *v4 = 0;
  return result;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v5 & 1) != 0))
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

{
  return specialized Dictionary.subscript.getter(a1, a2, a3);
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);

  return v6;
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  swift_unknownObjectRetain(v6);
  return v6;
}

{
  v4 = v3;
  if (*(a3 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = type metadata accessor for Tensor(0);
    (*(*(v10 - 8) + 16))(v4, v9 + *(*(v10 - 8) + 72) * v8, v10);
    return __swift_storeEnumTagSinglePayload(v4, 0, 1, v10);
  }

  else
  {
    v12 = type metadata accessor for Tensor(0);
    return __swift_storeEnumTagSinglePayload(v4, 1, 1, v12);
  }
}

{
  return specialized Dictionary.subscript.getter(a1, a2, a3);
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  return specialized Dictionary.subscript.getter(a1, a2, specialized __RawDictionaryStorage.find<A>(_:), outlined init with copy of Any);
}

{
  return specialized Dictionary.subscript.getter(a1, a2);
}

{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(a2 + 56) + 8 * v2);

  return v4;
}

{
  return specialized Dictionary.subscript.getter(a1, a2, specialized __RawDictionaryStorage.find<A>(_:), outlined init with copy of Any);
}

{
  if (*(a2 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v3 & 1) != 0))
  {
    return *(*(a2 + 56) + 8 * v2);
  }

  else
  {
    return 0;
  }
}

{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(a2 + 56) + 8 * v2);

  return v4;
}

{
  return specialized Dictionary.subscript.getter(a1, a2);
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, _OWORD *))
{
  v5 = result;
  if (*(a2 + 16))
  {
    result = a3(a1);
    if (v7)
    {
      return a4(*(a2 + 56) + 32 * result, v5);
    }
  }

  v5[1] = 0;
  *v5 = 0;
  return result;
}

unint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 16))
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v4)
    {
      return outlined init with copy of Any(*(a2 + 56) + 32 * result, v3);
    }
  }

  v3[1] = 0;
  *v3 = 0;
  return result;
}

{
  v3 = result;
  if (*(a2 + 16))
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v4)
    {
      return outlined init with copy of Any(*(a2 + 56) + 32 * result, v3);
    }
  }

  v3[1] = 0;
  *v3 = 0;
  return result;
}

char MLDataTable.Row.subscript.getter(uint64_t a1, uint64_t a2, double a3)
{
  v5 = v3;
  v6 = *(v4 + 8);
  if (!*(v6 + 16))
  {
    goto LABEL_5;
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v8 & 1) == 0)
  {
    LOBYTE(v3) = a2;
LABEL_5:
    *v5 = 0;
    *(v5 + 16) = -1;
    return v3;
  }

  v9 = *(*(v6 + 56) + 8 * v7);
  a2;

  v10 = CMLSequence.value(at:)(v9);
  MLDataValue.init(_:)(v10, a3);

  LOBYTE(v3) = v13;
  *v5 = v12;
  *(v5 + 16) = v13;
  return v3;
}

uint64_t specialized RandomAccessCollection<>.index(after:)(uint64_t a1)
{
  v1 = CMLSequence.size.getter();
  if (a1 < 0 || v1 <= a1)
  {
    BUG();
  }

  return a1 + 1;
}

{
  return specialized RandomAccessCollection<>.index(after:)(a1);
}

{
  return specialized RandomAccessCollection<>.index(after:)(a1, CMLDictionary.size.getter);
}

{

  v1 = CMLSequence.size.getter();
  v2 = specialized RandomAccessCollection<>.distance(from:to:)(0, v1);

  if (a1 < 0 || v2 <= a1)
  {
    BUG();
  }

  return a1 + 1;
}

{
  return specialized RandomAccessCollection<>.index(after:)(a1, CMLSequence.size.getter);
}

Swift::Int specialized RandomAccessCollection<>.index(after:)(Swift::Int a1, uint64_t a2, char a3)
{
  v5 = a3 & 1;
  outlined copy of Result<_DataTable, Error>(a2, a3);
  v3 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(a2, v5);
  if (a1 < 0 || v3 <= a1)
  {
    BUG();
  }

  return a1 + 1;
}

uint64_t specialized RandomAccessCollection<>.index(after:)(uint64_t a1, uint64_t (__cdecl *a2)())
{
  v2 = a2();
  if (a1 < 0 || v2 <= a1)
  {
    BUG();
  }

  return a1 + 1;
}

uint64_t MLDataTable.Row.Values.description.getter(double a1)
{
  v2 = *v1;
  v62 = 91;
  v63 = 0xE100000000000000;

  v3 = CMLSequence.size.getter();
  v4 = specialized RandomAccessCollection<>.distance(from:to:)(0, v3);

  v5 = CMLSequence.size.getter();
  v6 = specialized RandomAccessCollection<>.distance(from:to:)(0, v5);

  if (v6 < 0)
  {
    BUG();
  }

  v7 = CMLSequence.size.getter();
  v8 = specialized RandomAccessCollection<>.distance(from:to:)(0, v7);
  v68 = v2;
  v2;
  if (v4 < 0 || v8 < v4)
  {
    BUG();
  }

  v9 = 10;
  if (v4 < 0xA)
  {
    v9 = v4;
  }

  if (v4)
  {
    v10 = 0;
    v58 = v9;
    while (2)
    {
      if (v10 != v9)
      {
        if (v10)
        {
          v11._countAndFlagsBits = 8236;
          v11._object = 0xE200000000000000;
          String.append(_:)(v11);
        }

        v12 = CMLSequence.value(at:)(v10);
        switch(CMLFeatureValue.type.getter())
        {
          case 0u:
            v13 = *(v12 + 16);

            v14 = COERCE_DOUBLE(specialized handling<A, B>(_:_:)(v13));

            v12;
            object = 0;
            v16 = 0;
            goto LABEL_41;
          case 1u:
            v40 = *(v12 + 16);

            specialized handling<A, B>(_:_:)(v40);
            v67 = a1;

            v12;
            a1 = v67;
            v14 = v67;
            v16 = 1;
            goto LABEL_40;
          case 2u:

            v35 = CMLFeatureValue.stringValue()();
            if (v36)
            {
              v36;

              BUG();
            }

            v14 = *&v35._countAndFlagsBits;
            object = v35._object;

            v12;
            v16 = 2;
            goto LABEL_41;
          case 3u:
            v37 = *(v12 + 16);

            v38 = specialized handling<A, B>(_:_:)(v37);
            if (!v38)
            {
              BUG();
            }

            v39 = type metadata accessor for CMLSequence();
            v14 = COERCE_DOUBLE(swift_allocObject(v39, 25, 7));
            *(*&v14 + 16) = v38;
            *(*&v14 + 24) = 1;

            v12;
            v16 = 3;
            goto LABEL_40;
          case 4u:
            v17 = *(v12 + 16);

            v18 = specialized handling<A, B>(_:_:)(v17);
            if (!v18)
            {
              BUG();
            }

            v60 = v12;
            v59 = v10;
            v61 = type metadata accessor for CMLDictionary();
            *&v19 = COERCE_DOUBLE(swift_initStackObject(v61, v56));
            *(v19 + 16) = v18;
            v64 = _swiftEmptyDictionarySingleton;
            swift_retain_n(v19, 2);
            v20 = 0;
            v65 = COERCE_DOUBLE(_swiftEmptyDictionarySingleton);
            v67 = *&v19;
            while (v20 != CMLDictionary.size.getter())
            {
              CMLDictionary.keyAndValue(at:)(v20);
              v22 = v21;
              v20 = specialized RandomAccessCollection<>.index(after:)(v20, CMLDictionary.size.getter);
              v23 = CMLFeatureValue.stringValue()();
              if (!v24)
              {
                v66 = v23;

                switch(CMLFeatureValue.type.getter())
                {
                  case 0u:
                    v25 = *(v22 + 16);

                    countAndFlagsBits = specialized handling<A, B>(_:_:)(v25);
                    JUMPOUT(0x194AFFLL);
                  case 1u:
                    v34 = *(v22 + 16);

                    specialized handling<A, B>(_:_:)(v34);
                    countAndFlagsBits = *&a1;
                    JUMPOUT(0x194C8FLL);
                  case 2u:

                    countAndFlagsBits = CMLFeatureValue.stringValue()()._countAndFlagsBits;
                    if (!v29)
                    {
                      JUMPOUT(0x194BEFLL);
                    }

                    v29;

                    BUG();
                  case 3u:
                    v30 = *(v22 + 16);

                    v31 = specialized handling<A, B>(_:_:)(v30);
                    if (v31)
                    {
                      v32 = type metadata accessor for CMLSequence();
                      v33 = swift_allocObject(v32, 25, 7);
                      *(v33 + 16) = v31;
                      countAndFlagsBits = v33;
                      JUMPOUT(0x194C54);
                    }

                    BUG();
                  case 4u:
                    v26 = *(v22 + 16);

                    v27 = specialized handling<A, B>(_:_:)(v26);
                    if (v27)
                    {
                      v28 = swift_allocObject(v61, 24, 7);
                      *(v28 + 16) = v27;
                      v57[0] = v28;
                      v57[1] = closure #1 in MLDataValue.DictionaryType.init(from:);
                      v57[2] = 0;
                      v57[3] = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
                      v57[4] = 0;
                      v57[5] = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
                      v57[6] = 0;
                      _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC8CreateML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5(v57);
                      JUMPOUT(0x194BB3);
                    }

                    BUG();
                  case 5u:
                    JUMPOUT(0x194CB0);
                  case 6u:
                    JUMPOUT(0x194CCDLL);
                }
              }

              v24;

              *&v19 = v67;
            }

            v60;
            v19;
            v16 = 4;
            object = 0;
            v10 = v59;
            v14 = v65;
            goto LABEL_41;
          case 5u:

            v16 = 6;
            v14 = 0.0;
            goto LABEL_40;
          case 6u:

            MLDataValue.MultiArrayType.init(from:)(v12);
            if (v69 == 0.0)
            {
              BUG();
            }

            v14 = v69;

            v16 = 5;
LABEL_40:
            object = 0;
LABEL_41:
            v69 = v14;
            v70 = object;
            LOBYTE(v71) = v16;
            v41 = MLDataValue.description.getter();
            v42 = v10 + 1;
            v44 = v43;
            outlined consume of MLDataValue(*&v69, v70, v71);
            v45._countAndFlagsBits = v41;
            v45._object = v44;
            String.append(_:)(v45);
            LOBYTE(v45._countAndFlagsBits) = v44;
            v10 = v42;
            v45._countAndFlagsBits;
            v9 = v58;
            if (v10 == v58)
            {
              goto LABEL_44;
            }

            continue;
        }
      }

      break;
    }

    BUG();
  }

LABEL_44:
  v46 = v68;

  v47 = CMLSequence.size.getter();
  v48 = specialized RandomAccessCollection<>.distance(from:to:)(0, v47);

  v49 = CMLSequence.size.getter();
  v50 = specialized RandomAccessCollection<>.distance(from:to:)(0, v49);

  if (v50 < 0)
  {
    BUG();
  }

  v51 = CMLSequence.size.getter();
  v52 = specialized RandomAccessCollection<>.distance(from:to:)(0, v51);
  v46;
  if (v48 < 0 || v52 < v48)
  {
    BUG();
  }

  if (v9 < v48)
  {
    v53._countAndFlagsBits = 0x2E2E2E202CLL;
    v53._object = 0xE500000000000000;
    String.append(_:)(v53);
  }

  v54._countAndFlagsBits = 93;
  v54._object = 0xE100000000000000;
  String.append(_:)(v54);
  return v62;
}

Swift::Int_optional __swiftcall MLDataTable.Row.index(forKey:)(Swift::String forKey)
{
  v2 = *(v1 + 8);
  if (*(v2 + 16))
  {

    v3 = specialized __RawDictionaryStorage.find<A>(_:)(forKey._countAndFlagsBits, forKey._object);
    if (v4)
    {
      v5 = *(*(v2 + 56) + 8 * v3);
      v6 = 0;
    }

    else
    {
      v6 = 1;
      v5 = 0;
    }

    forKey._object;
  }

  else
  {
    v6 = 1;
    v5 = 0;
  }

  v7.value = v5;
  v7.is_nil = v6;
  return v7;
}

uint64_t MLDataTable.Row.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v8 = *(v7 + 8);
  if (*(v8 + 16))
  {
    v16 = a5;
    v18 = v6;
    v17 = a4;
    v9 = *(v7 + 16);

    v19 = v9;

    v10 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v11)
    {
      v12 = *(*(v8 + 56) + 8 * v10);
      a2;

      v13 = CMLSequence.value(at:)(v12);
      MLDataValue.init(_:)(v13, a6);
      v8;

      v19;
      return (*(v16 + 16))(v15);
    }

    v8;

    a2;
    a4 = v17;
    v6 = v18;
  }

  return __swift_storeEnumTagSinglePayload(v6, 1, 1, a4);
}

uint64_t static MLDataTable.Row.== infix(_:_:)(uint64_t *a1, uint64_t *a2, double a3)
{
  v3 = *a1;
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[2];

  v7 = specialized Sequence<>.elementsEqual<A>(_:)(v5, v3);

  if (v7)
  {
    v10 = v4;
    v11[0] = v6;

    v8 = static MLDataTable.Row.Values.== infix(_:_:)(&v10, v11, a3);
  }

  else
  {
    return 0;
  }

  return v8;
}

uint64_t static MLDataTable.Row.Values.== infix(_:_:)(uint64_t *a1, uint64_t *a2, double a3)
{
  v3 = *a1;
  v39 = *a2;

  v4 = CMLSequence.size.getter();
  v5 = specialized RandomAccessCollection<>.distance(from:to:)(0, v4);

  v6 = CMLSequence.size.getter();
  v7 = specialized RandomAccessCollection<>.distance(from:to:)(0, v6);

  if (v7 < 0)
  {
    BUG();
  }

  v8 = CMLSequence.size.getter();
  v9 = specialized RandomAccessCollection<>.distance(from:to:)(0, v8);
  v3;
  if (v5 < 0 || v9 < v5)
  {
    BUG();
  }

  v44 = v3;

  v10 = CMLSequence.size.getter();
  v11 = specialized RandomAccessCollection<>.distance(from:to:)(0, v10);

  v12 = CMLSequence.size.getter();
  v13 = specialized RandomAccessCollection<>.distance(from:to:)(0, v12);

  if (v13 < 0)
  {
    BUG();
  }

  v14 = CMLSequence.size.getter();
  v15 = specialized RandomAccessCollection<>.distance(from:to:)(0, v14);
  v39;
  if (v11 < 0 || v15 < v11)
  {
    BUG();
  }

  if (v5 == v11)
  {

    v16 = CMLSequence.size.getter();
    if (specialized RandomAccessCollection<>.distance(from:to:)(0, v16))
    {
      v17 = 0;
      do
      {
        v33 = v17;
        v18 = CMLSequence.value(at:)(v17);
        v38 = 0;
        MLDataValue.init(_:)(v18, a3);
        v19 = v40;
        v20 = v41;
        v21 = v42;
        v22 = v42;
        outlined copy of MLDataValue(v40, v41, v42);
        v34 = v19;
        v37 = v20;
        v43 = v22;
        outlined consume of MLDataValue(v19, v20, v22);

        v23 = CMLSequence.size.getter();
        v24 = specialized RandomAccessCollection<>.distance(from:to:)(0, v23);

        if (v17 >= v24)
        {
          BUG();
        }

        v40 = v34;
        v41 = v37;
        v42 = v21;

        v25 = v38;
        v26 = CMLSequence.value(at:)(v17);
        if (v25)
        {
          swift_unexpectedError(v25, "CreateML/MLDataTable.Row.swift", 30, 1, 85);
          BUG();
        }

        MLDataValue.init(_:)(v26, a3);

        a3 = *&v31;
        v35 = v31;
        LOBYTE(v36) = v32;
        LOBYTE(v27) = static MLDataValue.== infix(_:_:)(&v40, &v35);
        LODWORD(v5) = v27;
        outlined consume of MLDataValue(v35, *(&v35 + 1), v36);
        outlined consume of MLDataValue(v34, v37, v43);
        if ((v5 & 1) == 0)
        {
          break;
        }

        v28 = CMLSequence.size.getter();
        v29 = specialized RandomAccessCollection<>.distance(from:to:)(0, v28);

        ++v17;
      }

      while (v33 + 1 != v29);
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  return v5;
}

uint64_t MLDataTable.Row.count.getter()
{
  v1 = *(v0 + 16);

  v2 = CMLSequence.size.getter();
  v3 = specialized RandomAccessCollection<>.distance(from:to:)(0, v2);

  v4 = CMLSequence.size.getter();
  v5 = specialized RandomAccessCollection<>.distance(from:to:)(0, v4);

  if (v5 < 0)
  {
    BUG();
  }

  v6 = CMLSequence.size.getter();
  v7 = specialized RandomAccessCollection<>.distance(from:to:)(0, v6);
  v1;
  if (v3 < 0 || v7 < v3)
  {
    BUG();
  }

  return v3;
}

BOOL MLDataTable.Row.isEmpty.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  swift_retain_n(v2, 2);
  v3 = CMLSequence.size.getter();
  v4 = specialized RandomAccessCollection<>.distance(from:to:)(0, v3);

  v5 = CMLSequence.size.getter();
  v6 = specialized RandomAccessCollection<>.distance(from:to:)(0, v5);

  if (v6 < 0)
  {
    BUG();
  }

  v7 = CMLSequence.size.getter();
  v8 = specialized RandomAccessCollection<>.distance(from:to:)(0, v7);
  v1;

  v2;
  if (v4 < 0 || v8 < v4)
  {
    BUG();
  }

  return v4 == 0;
}

uint64_t MLDataTable.Row.endIndex.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  swift_retain_n(v2, 2);
  v3 = CMLSequence.size.getter();
  v4 = specialized RandomAccessCollection<>.distance(from:to:)(0, v3);

  v5 = CMLSequence.size.getter();
  v6 = specialized RandomAccessCollection<>.distance(from:to:)(0, v5);

  if (v6 < 0)
  {
    BUG();
  }

  v7 = CMLSequence.size.getter();
  v8 = specialized RandomAccessCollection<>.distance(from:to:)(0, v7);
  v1;

  v2;
  if (v4 < 0 || v8 < v4)
  {
    BUG();
  }

  return v4;
}

Swift::Int __swiftcall MLDataTable.Row.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(1, after);
  v2 = after + 1;
  if (v1)
  {
    BUG();
  }

  return v2;
}

uint64_t MLDataTable.Row.subscript.getter(uint64_t a1, uint64_t a2, double a3)
{

  v3 = MLDataTable.ColumnNames.subscript.getter(a2);

  v4 = CMLSequence.value(at:)(a2);
  MLDataValue.init(_:)(v4, a3);

  return v3;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance MLDataTable.Row(uint64_t a1)
{
  v2 = v1;
  result = MLDataTable.Row.endIndex.getter();
  *v2 = result;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance MLDataTable.Row(void *a1, uint64_t *a2, double a3))(uint64_t a1)
{
  v3 = malloc(0x68uLL);
  *a1 = v3;
  v4 = MLDataTable.Row.subscript.getter((v3 + 2), *a2, a3);
  v3[10] = v5;
  *v3 = v4;
  v3[1] = v5;
  v3[5] = v4;
  v3[6] = v5;
  v6 = v3[2];
  v7 = v3[3];
  v3[11] = v6;
  v3[12] = v7;
  v8 = *(v3 + 8);
  *(v3 + 33) = v8;
  v3[7] = v6;
  v3[8] = v7;
  *(v3 + 72) = v8;

  outlined copy of MLDataValue(v6, v7, v8);
  return protocol witness for Collection.subscript.read in conformance MLDataTable.Row;
}

void protocol witness for Collection.subscript.read in conformance MLDataTable.Row(uint64_t a1)
{
  v1 = *a1;
  v6 = *(*a1 + 96);
  v7 = *(*a1 + 88);
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 72);
  v8 = *(*a1 + 33);
  *(*a1 + 48);
  outlined consume of MLDataValue(v3, v4, v5);
  v2;
  outlined consume of MLDataValue(v7, v6, v8);
  free(v1);
}

uint64_t protocol witness for Collection.index(_:offsetBy:) in conformance MLDataTable.Row(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  result = specialized Collection.index(_:offsetBy:)(*a1, a2);
  *v3 = result;
  return result;
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance MLDataTable.Row(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  result = specialized Collection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *v4 = result;
  *(v4 + 8) = v6 & 1;
  return result;
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance MLDataTable.Row(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  return protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance MLDataTable.Row(a1, a2, a3, a4, specialized Collection._failEarlyRangeCheck(_:bounds:));
}

{
  return protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance MLDataTable.Row(a1, a2, a3, a4, specialized Collection._failEarlyRangeCheck(_:bounds:));
}

Swift::Int protocol witness for Collection.index(after:) in conformance MLDataTable.Row(Swift::Int *a1)
{
  v2 = v1;
  result = MLDataTable.Row.index(after:)(*a1);
  *v2 = result;
  return result;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance MLDataTable.Row(uint64_t *a1)
{
  result = *a1 + 1;
  if (__OFADD__(1, *a1))
  {
    BUG();
  }

  *a1 = result;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance MLDataTable.Row()
{
  v2 = *(v1 + 16);
  *result = *v1;
  *(result + 16) = v2;
  *(result + 24) = 0;
  return result;
}

uint64_t MLDataTable.Row.description.getter()
{
  v1 = 0.0;
  swift_retain_n(*v0, 2);
  v2 = CMLSequence.size.getter();
  v3 = specialized RandomAccessCollection<>.distance(from:to:)(0, v2);

  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = MLDataTable.ColumnNames.subscript.getter(v4);
      v7 = v6;

      v8 = CMLSequence.size.getter();
      v9 = specialized RandomAccessCollection<>.distance(from:to:)(0, v8);

      if (v4 >= v9)
      {
        BUG();
      }

      v25._countAndFlagsBits = 34;
      v25._object = 0xE100000000000000;
      v10._countAndFlagsBits = v5;
      v10._object = v7;
      String.append(_:)(v10);
      v7;

      v10._countAndFlagsBits = 540680226;
      v10._object = 0xE400000000000000;
      String.append(_:)(v10);
      0;

      v24 = v4;
      v11 = CMLSequence.value(at:)(v4);
      MLDataValue.init(_:)(v11, v1);

      *&v1 = 34;
      v12 = MLDataValue.description.getter();
      v14 = v13;
      outlined consume of MLDataValue(&stru_20.cmd + 2, 0xE100000000000000, v26);

      v10._countAndFlagsBits = v12;
      v10._object = v14;
      String.append(_:)(v10);
      v14;
      0;
      String.append(_:)(v25);
      0;

      v15 = CMLSequence.size.getter();
      v16 = specialized RandomAccessCollection<>.distance(from:to:)(0, v15);

      v17 = __OFSUB__(v16, 1);
      v18 = v16 - 1;
      if (v17)
      {
        BUG();
      }

      if (v4 < v18)
      {
        v19._countAndFlagsBits = 8236;
        v19._object = 0xE200000000000000;
        String.append(_:)(v19);
      }

      ++v4;

      v20 = CMLSequence.size.getter();
      v21 = specialized RandomAccessCollection<>.distance(from:to:)(0, v20);
    }

    while (v24 + 1 != v21);
  }

  v22._countAndFlagsBits = 93;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  return 91;
}

uint64_t MLDataTable.Row.debugDescription.getter()
{
  v1 = *(v0 + 8);

  v2 = MLDataTable.Row.description.getter();

  v1;

  return v2;
}

uint64_t MLDataTable.Row.playgroundDescription.getter()
{
  v8 = v0;
  v2 = *(v1 + 8);

  v3 = MLDataTable.Row.description.getter();
  v5 = v4;

  v2;

  objc_allocWithZone(NSAttributedString);
  v6 = @nonobjc NSAttributedString.init(string:attributes:)(v3, v5, 0);
  result = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSAttributedString, NSAttributedString_ptr);
  v8[3] = result;
  *v8 = v6;
  return result;
}

uint64_t MLDataTable.Row.Values.endIndex.getter()
{

  v0 = CMLSequence.size.getter();
  v1 = specialized RandomAccessCollection<>.distance(from:to:)(0, v0);

  return v1;
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance MLDataTable.Row.Values(uint64_t *a1)
{
  v2 = v1;
  result = specialized RandomAccessCollection<>.index(before:)(*a1);
  *v2 = result;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.index(_:offsetBy:) in conformance MLDataTable.Row.Values(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  result = specialized RandomAccessCollection<>.index(_:offsetBy:)(*a1, a2);
  *v3 = result;
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance MLDataTable.Row.Values()
{
  v1 = v0;
  result = MLDataTable.Row.Values.endIndex.getter();
  *v1 = result;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance MLDataTable.Row.Values(uint64_t a1, uint64_t *a2, double a3))(uint64_t a1)
{
  v3 = CMLSequence.value(at:)(*a2);
  MLDataValue.init(_:)(v3, a3);
  return protocol witness for Collection.subscript.read in conformance MLDataValue.SequenceType;
}

uint64_t protocol witness for Collection.indices.getter in conformance MLDataTable.Row.Values()
{
  v1 = v0;
  result = specialized RandomAccessCollection<>.indices.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance MLDataTable.Row.Values(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *v4 = result;
  *(v4 + 8) = v6 & 1;
  return result;
}

{
  return protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance MLDataTable.Row.Values(a1, a2, a3);
}

uint64_t protocol witness for Collection.index(after:) in conformance MLDataTable.Row.Values(uint64_t *a1)
{
  v2 = v1;
  result = specialized RandomAccessCollection<>.index(after:)(*a1);
  *v2 = result;
  return result;
}

uint64_t MLDataTable.Row.Values.debugDescription.getter(double a1)
{

  v1 = MLDataTable.Row.Values.description.getter(a1);

  return v1;
}

uint64_t MLDataTable.Row.Values.playgroundDescription.getter(double a1)
{
  v2 = v1;

  v3 = MLDataTable.Row.Values.description.getter(a1);
  v5 = v4;

  objc_allocWithZone(NSAttributedString);
  v6 = @nonobjc NSAttributedString.init(string:attributes:)(v3, v5, 0);
  result = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSAttributedString, NSAttributedString_ptr);
  v2[3] = result;
  *v2 = v6;
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)(*(v2 + 40));
  String.hash(into:)(v5, a1);
  v3 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v3);
}

{
  Hasher.init(_seed:)(*(v2 + 40));
  if (a2)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)(v5, a1);
    a2;
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v3 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v3);
}

void specialized __RawDictionaryStorage.find<A>(_:)(__int128 a1, int a3, double xmm0_8_0)
{
  v11 = v3;
  v5 = a1;
  *&a1 = *(v3 + 40);
  v8 = v5;
  v9 = *(&a1 + 1);
  v10 = a3;
  Hasher.init(_seed:)(a1);
  MLDataValue.hash(into:)(v7);
  v6 = Hasher._finalize()();
  *&a1 = v5;
  specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a3, v6, xmm0_8_0);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = type metadata accessor for MetricsKey(0);
  v4 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey, &type metadata accessor for MetricsKey, &protocol conformance descriptor for MetricsKey);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)(v2, v3, v4);
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5, &type metadata accessor for MetricsKey, &lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey, &protocol conformance descriptor for MetricsKey);
}

{
  v2 = *(v1 + 40);
  v3 = type metadata accessor for CodingUserInfoKey(0);
  v4 = dispatch thunk of Hashable._rawHashValue(seed:)(v2, v3, &protocol witness table for CodingUserInfoKey);
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = static Hasher._hash(seed:_:)(*(v1 + 40));
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = *(v1 + 40);
  v3 = type metadata accessor for URL(0);
  v4 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)(v2, v3, v4);
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5, &type metadata accessor for URL, &lazy protocol witness table cache variable for type URL and conformance URL, &protocol conformance descriptor for URL);
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1);
}

{
  v2 = AnyHashable._rawHashValue(seed:)(*(v1 + 40));
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v9 = v1;
  v2 = *(v1 + 40);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(a1);
  v5 = v4;
  Hasher.init(_seed:)(v2);
  String.hash(into:)(v8, v3);
  v6 = Hasher._finalize()();
  v5;
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6);
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(char a1)
{
  Hasher.init(_seed:)(*(v1 + 40));
  specialized RawRepresentable<>.hash(into:)(v4, a1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(Swift::UInt a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)(*(v3 + 40));
  if (a3)
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(a1);
  }

  else
  {
    Hasher._combine(_:)(0);
    String.hash(into:)(v7, a1);
  }

  v5 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3 & 1, v5);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = ~(-1 << *(v3 + 32));
  v5 = v4 & a3;
  v6 = *(v3 + 8 * ((v4 & a3) >> 6) + 64);
  if (_bittest64(&v6, v4 & a3))
  {
    v9 = *(v3 + 48);
    v10 = *(v9 + 16 * v5);
    v11 = *(v9 + 16 * v5 + 8);
    if (a1 ^ v10 | a2 ^ v11)
    {
      v12 = a1;
      v16 = a2;
      v13 = a2;
      while ((_stringCompareWithSmolCheck(_:_:expecting:)(v10, v11, v12, v13, 0) & 1) == 0)
      {
        v5 = v4 & (v5 + 1);
        v14 = *(v3 + 8 * (v5 >> 6) + 64);
        if (!_bittest64(&v14, v5))
        {
          break;
        }

        v10 = *(v9 + 16 * v5);
        v11 = *(v9 + 16 * v5 + 8);
        v13 = v16;
        if (!(a1 ^ v10 | v16 ^ v11))
        {
          break;
        }

        v12 = a1;
      }
    }
  }

  return v5;
}

{
  v4 = ~(-1 << *(v3 + 32));
  v5 = v4 & a3;
  v6 = *(v3 + 8 * ((v4 & a3) >> 6) + 64);
  if (_bittest64(&v6, v4 & a3))
  {
    v9 = *(v3 + 48);
    v15 = ~(-1 << *(v3 + 32));
    do
    {
      v10 = *(v9 + 16 * v5 + 8);
      if (v10)
      {
        if (a2)
        {
          if (!(a1 ^ *(v9 + 16 * v5) | a2 ^ v10))
          {
            return v5;
          }

          v11 = a1;
          v12 = _stringCompareWithSmolCheck(_:_:expecting:)(*(v9 + 16 * v5), v10, a1, a2, 0);
          a1 = v11;
          v4 = v15;
          if (v12)
          {
            return v5;
          }
        }
      }

      else if (!a2)
      {
        return v5;
      }

      v5 = v4 & (v5 + 1);
      v13 = *(v3 + 8 * (v5 >> 6) + 64);
    }

    while (_bittest64(&v13, v5));
  }

  return v5;
}

void specialized __RawDictionaryStorage.find<A>(_:hashValue:)(__int128 a1, int a2, uint64_t a3, double a4)
{
  v5 = a2;
  v6 = ~(-1 << *(v4 + 32)) & a3;
  v7 = *(v4 + 8 * (v6 >> 6) + 64);
  if (_bittest64(&v7, v6))
  {
    v8 = a1;
    v29 = ~(-1 << *(v4 + 32));
    v28 = *(&a1 + 1);
    v32 = a2 == 6 && a1 == 0;
    v24 = *&a1;
    v9 = *(v4 + 48);
    v10 = *(v9 + 24 * v6);
    v30 = *(v9 + 24 * v6 + 8);
    v11 = *(v9 + 24 * v6 + 16);
    v25 = v8;
    v27 = v4;
    v26 = a2;
    switch(v11)
    {
      case 0:
LABEL_11:
        v33 = v6;
        v15 = v10;
        if (v5)
        {
          goto LABEL_32;
        }

        outlined consume of MLDataValue(v10, v30, 0);
        outlined consume of MLDataValue(v8, v28, 0);
        if (v10 != v8)
        {
          goto LABEL_33;
        }

        return;
      case 1:
LABEL_6:
        v33 = v6;
        if (v5 != 1)
        {
          v15 = v10;
          goto LABEL_32;
        }

        v31 = v10;
        outlined consume of MLDataValue(v10, v30, 1);
        outlined consume of MLDataValue(v8, v28, 1);
        a4 = *&v10;
        if (*&v10 != v24)
        {
          goto LABEL_17;
        }

        return;
      case 2:
LABEL_19:
        v33 = v6;
        if (v5 != 2)
        {
          v15 = v10;
          v10 = v30;
          goto LABEL_31;
        }

        if (!(v8 ^ v10 | v28 ^ v30))
        {
          outlined copy of MLDataValue(v8, v28, 2u);
          outlined copy of MLDataValue(v8, v28, 2u);
          outlined consume of MLDataValue(v8, v28, 2);
          v12 = v8;
          v13 = v28;
          v14 = 2;
          goto LABEL_5;
        }

        LOBYTE(v31) = _stringCompareWithSmolCheck(_:_:expecting:)(v10, v30, v8, v28, 0);
        outlined copy of MLDataValue(v8, v28, 2u);
        outlined copy of MLDataValue(v10, v30, 2u);
        outlined consume of MLDataValue(v10, v30, 2);
        outlined consume of MLDataValue(v8, v28, 2);
        if ((v31 & 1) == 0)
        {
          goto LABEL_33;
        }

        return;
      case 3:
LABEL_27:
        v33 = v6;
        if (v5 == 3)
        {
          v22 = v10;
          v23 = v8;
          v16 = v10;
          v17 = v30;
          outlined copy of MLDataValue(v10, v30, 3u);
          outlined copy of MLDataValue(v8, v28, 3u);
          outlined copy of MLDataValue(v10, v30, 3u);
          outlined copy of MLDataValue(v8, v28, 3u);
          outlined copy of MLDataValue(v10, v30, 3u);
          ML11MLDataValueO_AETt1g5 = static MLDataValue.SequenceType.== infix(_:_:)(&v22, &v23, a4);
          goto LABEL_16;
        }

        v15 = v10;
        swift_retain_n(v10, 2);
        goto LABEL_32;
      case 4:
LABEL_29:
        v33 = v6;
        if (v5 != 4)
        {
          v15 = v10;
LABEL_31:
          swift_bridgeObjectRetain_n(v10, 2);
          goto LABEL_32;
        }

        v16 = v10;
        v17 = v30;
        outlined copy of MLDataValue(v10, v30, 4u);
        outlined copy of MLDataValue(v8, v28, 4u);
        outlined copy of MLDataValue(v10, v30, 4u);
        outlined copy of MLDataValue(v8, v28, 4u);
        outlined copy of MLDataValue(v10, v30, 4u);
        ML11MLDataValueO_AETt1g5 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ8CreateML11MLDataValueO_AETt1g5(v10, v8);
LABEL_16:
        LOBYTE(v31) = ML11MLDataValueO_AETt1g5;
        sub_196DBC(v16, v17);
        break;
      case 5:
        while (2)
        {
          v33 = v6;
          if (v5 == 5)
          {
            v31 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr);
            outlined copy of MLDataValue(v10, v30, 5u);
            outlined copy of MLDataValue(v8, v28, 5u);
            outlined copy of MLDataValue(v10, v30, 5u);
            outlined copy of MLDataValue(v8, v28, 5u);
            outlined copy of MLDataValue(v10, v30, 5u);
            LOBYTE(v31) = static NSObject.== infix(_:_:)(v10, v8);
            sub_196DBC(v10, v30);
          }

          else
          {
            v15 = v10;
            v21 = v10;
            v21;
            v5 = v26;
LABEL_32:
            outlined copy of MLDataValue(v8, v28, v5);
            outlined consume of MLDataValue(v15, v30, v11);
            outlined consume of MLDataValue(v25, v28, v5);
            outlined consume of MLDataValue(v15, v30, v11);
LABEL_33:
            v4 = v27;
LABEL_17:
            v6 = v29 & (v33 + 1);
            v19 = *(v4 + 8 * (v6 >> 6) + 64);
            if (_bittest64(&v19, v6))
            {
              v20 = *(v4 + 48);
              v10 = *(v20 + 24 * v6);
              v30 = *(v20 + 24 * v6 + 8);
              v11 = *(v20 + 24 * v6 + 16);
              v8 = v25;
              v5 = v26;
              switch(v11)
              {
                case 0:
                  goto LABEL_11;
                case 1:
                  goto LABEL_6;
                case 2:
                  goto LABEL_19;
                case 3:
                  goto LABEL_27;
                case 4:
                  goto LABEL_29;
                case 5:
                  continue;
                case 6:
                  goto LABEL_34;
              }
            }
          }

          break;
        }

        break;
      case 6:
LABEL_34:
        v33 = v6;
        v15 = v10;
        if (!v32)
        {
          goto LABEL_32;
        }

        outlined consume of MLDataValue(v10, v30, 6);
        v12 = 0;
        v13 = 0;
        v14 = 6;
LABEL_5:
        outlined consume of MLDataValue(v12, v13, v14);
        return;
    }
  }
}

void sub_196DBC(void *a1, void *a2)
{
  outlined consume of MLDataValue(a1, a2, v5);
  outlined consume of MLDataValue(v6, v7, v5);
  outlined consume of MLDataValue(v6, v7, v5);
  outlined consume of MLDataValue(v2, v4, v5);
  outlined consume of MLDataValue(v2, v4, v5);
  if ((*(v3 - 64) & 1) == 0)
  {
    JUMPOUT(0x196E12);
  }

  JUMPOUT(0x196C42);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, unint64_t a2)
{
  v11 = ~(-1 << *(v2 + 32));
  v3 = v11 & a2;
  v4 = *(v2 + 8 * ((v11 & a2) >> 6) + 64);
  if (_bittest64(&v4, v11 & a2))
  {
    v5 = a1;
    v6 = 0xE400000000000000;
    v7 = 1936945004;
    v8 = 0xE400000000000000;
    switch(*(*(v2 + 48) + v3))
    {
      case 0:
        goto LABEL_14;
      case 1:
        v10 = 1936945004;
        v8 = 0xEB0000000073736FLL;
        v7 = 0x4C746E65746E6F63;
        switch(v5)
        {
          case 0:
            goto LABEL_24;
          case 1:
            goto LABEL_15;
          case 2:
            goto LABEL_29;
          case 3:
            goto LABEL_18;
          case 4:
            goto LABEL_19;
          case 5:
            goto LABEL_16;
          case 6:
            goto LABEL_21;
          case 7:
            goto LABEL_22;
          case 8:
            goto LABEL_20;
          case 9:
            goto LABEL_23;
          case 10:
            goto LABEL_17;
        }

      case 2:
        v10 = 1936945004;
        v8 = 0xE900000000000073;
        v7 = 0x736F4C656C797473;
        switch(v5)
        {
          case 0:
            goto LABEL_24;
          case 1:
            goto LABEL_15;
          case 2:
            goto LABEL_29;
          case 3:
            goto LABEL_18;
          case 4:
            goto LABEL_19;
          case 5:
            goto LABEL_16;
          case 6:
            goto LABEL_21;
          case 7:
            goto LABEL_22;
          case 8:
            goto LABEL_20;
          case 9:
            goto LABEL_23;
          case 10:
            goto LABEL_17;
        }

      case 3:
        v10 = 1936945004;
        v8 = 0xE800000000000000;
        v7 = 0x7963617275636361;
        switch(v5)
        {
          case 0:
            goto LABEL_24;
          case 1:
            goto LABEL_15;
          case 2:
            goto LABEL_29;
          case 3:
            goto LABEL_18;
          case 4:
            goto LABEL_19;
          case 5:
            goto LABEL_16;
          case 6:
            goto LABEL_21;
          case 7:
            goto LABEL_22;
          case 8:
            goto LABEL_20;
          case 9:
            goto LABEL_23;
          case 10:
            goto LABEL_17;
        }

      case 4:
        v10 = 1936945004;
        v8 = 0xEE0073736F4C6E6FLL;
        v7 = 0x69746164696C6176;
        switch(v5)
        {
          case 0:
            goto LABEL_24;
          case 1:
            goto LABEL_15;
          case 2:
            goto LABEL_29;
          case 3:
            goto LABEL_18;
          case 4:
            goto LABEL_19;
          case 5:
            goto LABEL_16;
          case 6:
            goto LABEL_21;
          case 7:
            goto LABEL_22;
          case 8:
            goto LABEL_20;
          case 9:
            goto LABEL_23;
          case 10:
            goto LABEL_17;
        }

      case 5:
        v7 = 0xD000000000000012;
        v10 = 1936945004;
        v8 = "accuracy" + 0x8000000000000000;
        switch(v5)
        {
          case 0:
            goto LABEL_24;
          case 1:
            goto LABEL_15;
          case 2:
            goto LABEL_29;
          case 3:
            goto LABEL_18;
          case 4:
            goto LABEL_19;
          case 5:
            goto LABEL_16;
          case 6:
            goto LABEL_21;
          case 7:
            goto LABEL_22;
          case 8:
            goto LABEL_20;
          case 9:
            goto LABEL_23;
          case 10:
            goto LABEL_17;
        }

      case 6:
        v10 = 1936945004;
        v8 = "validationAccuracy" + 0x8000000000000000;
        v7 = 0xD000000000000010;
        switch(v5)
        {
          case 0:
            goto LABEL_24;
          case 1:
            goto LABEL_15;
          case 2:
            goto LABEL_29;
          case 3:
            goto LABEL_18;
          case 4:
            goto LABEL_19;
          case 5:
            goto LABEL_16;
          case 6:
            goto LABEL_21;
          case 7:
            goto LABEL_22;
          case 8:
            goto LABEL_20;
          case 9:
            goto LABEL_23;
          case 10:
            goto LABEL_17;
        }

      case 7:
        v7 = 0xD000000000000014;
        v10 = 1936945004;
        v8 = "stylizedImageURL" + 0x8000000000000000;
        switch(v5)
        {
          case 0:
            goto LABEL_24;
          case 1:
            goto LABEL_15;
          case 2:
            goto LABEL_29;
          case 3:
            goto LABEL_18;
          case 4:
            goto LABEL_19;
          case 5:
            goto LABEL_16;
          case 6:
            goto LABEL_21;
          case 7:
            goto LABEL_22;
          case 8:
            goto LABEL_20;
          case 9:
            goto LABEL_23;
          case 10:
            goto LABEL_17;
        }

      case 8:
        v10 = 1936945004;
        v8 = 0xEC000000726F7272;
        v7 = 0x456D756D6978616DLL;
        switch(v5)
        {
          case 0:
            goto LABEL_24;
          case 1:
            goto LABEL_15;
          case 2:
            goto LABEL_29;
          case 3:
            goto LABEL_18;
          case 4:
            goto LABEL_19;
          case 5:
            goto LABEL_16;
          case 6:
            goto LABEL_21;
          case 7:
            goto LABEL_22;
          case 8:
            goto LABEL_20;
          case 9:
            goto LABEL_23;
          case 10:
            goto LABEL_17;
        }

      case 9:
        v7 = 0xD00000000000001ELL;
        v10 = 1936945004;
        v8 = "rror" + 0x8000000000000000;
        switch(v5)
        {
          case 0:
            break;
          case 1:
LABEL_15:
            v10 = 0x4C746E65746E6F63;
            v6 = 0xEB0000000073736FLL;
            break;
          case 2:
LABEL_29:
            JUMPOUT(0x1973EBLL);
          case 3:
LABEL_18:
            v10 = 0x7963617275636361;
            v6 = 0xE800000000000000;
            break;
          case 4:
LABEL_19:
            v10 = 0x69746164696C6176;
            v6 = 0xEE0073736F4C6E6FLL;
            break;
          case 5:
LABEL_16:
            v10 = 0xD000000000000012;
            v6 = "accuracy" + 0x8000000000000000;
            break;
          case 6:
LABEL_21:
            v10 = 0xD000000000000010;
            v6 = "validationAccuracy" + 0x8000000000000000;
            break;
          case 7:
LABEL_22:
            v10 = 0xD000000000000014;
            v6 = "stylizedImageURL" + 0x8000000000000000;
            break;
          case 8:
LABEL_20:
            v10 = 0x456D756D6978616DLL;
            v6 = 0xEC000000726F7272;
            break;
          case 9:
LABEL_23:
            v10 = 0xD00000000000001ELL;
            v6 = "rror" + 0x8000000000000000;
            break;
          case 10:
LABEL_17:
            v10 = 0xD000000000000016;
            v6 = "validationRootMeanSquaredError" + 0x8000000000000000;
            break;
        }

LABEL_24:
        if (v7 != v10 || v8 != v6)
        {
          _stringCompareWithSmolCheck(_:_:expecting:)(v7, v8, v10, v6, 0);
          JUMPOUT(0x19743ELL);
        }

        v8;
        v6;
        return v11 & a2;
      case 0xA:
        v7 = 0xD000000000000016;
        v8 = "validationRootMeanSquaredError" + 0x8000000000000000;
LABEL_14:
        v10 = 1936945004;
        switch(v5)
        {
          case 0:
            goto LABEL_24;
          case 1:
            goto LABEL_15;
          case 2:
            goto LABEL_29;
          case 3:
            goto LABEL_18;
          case 4:
            goto LABEL_19;
          case 5:
            goto LABEL_16;
          case 6:
            goto LABEL_21;
          case 7:
            goto LABEL_22;
          case 8:
            goto LABEL_20;
          case 9:
            goto LABEL_23;
          case 10:
            goto LABEL_17;
        }
    }
  }

  return v3;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(int a1, unint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  result = v3 & a2;
  v5 = *(v2 + 8 * ((v3 & a2) >> 6) + 64);
  if (_bittest64(&v5, v3 & a2))
  {
    v6 = *(v2 + 48);
    if (*(v6 + 4 * result) != a1)
    {
      result = v3 & (result + 1);
      v7 = *(v2 + 8 * (result >> 6) + 64);
      if (_bittest64(&v7, result))
      {
        do
        {
          if (*(v6 + 4 * result) == a1)
          {
            break;
          }

          result = v3 & (result + 1);
          v8 = *(v2 + 8 * (result >> 6) + 64);
        }

        while (_bittest64(&v8, result));
      }
    }
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v14 = a1;
  v4 = type metadata accessor for CodingUserInfoKey(0);
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = alloca(v6);
  v8 = alloca(v6);
  v15 = ~(-1 << *(v3 + 32));
  v9 = v15 & a2;
  v10 = *(v3 + 8 * ((v15 & a2) >> 6) + 64);
  if (_bittest64(&v10, v15 & a2))
  {
    v17 = v5[2];
    v16 = v5;
    v18 = v5[9];
    do
    {
      v17(&v14, *(v3 + 48) + v9 * v18, v4);
      v11 = dispatch thunk of static Equatable.== infix(_:_:)(&v14, v14, v4, &protocol witness table for CodingUserInfoKey);
      (v16[1])(&v14, v4);
      if (v11)
      {
        break;
      }

      v9 = v15 & (v9 + 1);
      v12 = *(v3 + 8 * (v9 >> 6) + 64);
    }

    while (_bittest64(&v12, v9));
  }

  return v9;
}

{
  v3 = ~(-1 << *(v2 + 32));
  result = v3 & a2;
  v5 = *(v2 + 8 * ((v3 & a2) >> 6) + 64);
  if (_bittest64(&v5, v3 & a2))
  {
    v6 = *(v2 + 48);
    if (*(v6 + 8 * result) != a1)
    {
      result = v3 & (result + 1);
      v7 = *(v2 + 8 * (result >> 6) + 64);
      if (_bittest64(&v7, result))
      {
        do
        {
          if (*(v6 + 8 * result) == a1)
          {
            break;
          }

          result = v3 & (result + 1);
          v8 = *(v2 + 8 * (result >> 6) + 64);
        }

        while (_bittest64(&v8, result));
      }
    }
  }

  return result;
}

{
  v3 = *(v2 + 32);
  v15 = a1;
  v4 = ~(-1 << v3);
  v5 = v4 & a2;
  v6 = *(v2 + 8 * ((v4 & a2) >> 6) + 64);
  if (_bittest64(&v6, v4 & a2))
  {
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v5, v14);
      v11 = static AnyHashable.== infix(_:_:)(v14, v15, v7, v8, v9, v10, v14[0], v14[1], v14[2], v14[3], v14[4]);
      outlined destroy of AnyHashable(v14);
      if (v11)
      {
        break;
      }

      v5 = v4 & (v5 + 1);
      v12 = *(v2 + 8 * (v5 >> 6) + 64);
    }

    while (_bittest64(&v12, v5));
  }

  return v5;
}

{
  v21 = ~(-1 << *(v2 + 32));
  v3 = v21 & a2;
  v4 = *(v2 + 8 * ((v21 & a2) >> 6) + 64);
  if (_bittest64(&v4, v21 & a2))
  {
    v22 = v2;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(*(*(v2 + 48) + 8 * v3));
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)(a1);
    v10 = v9;
    if (!(v8 ^ v5 | v9 ^ v7))
    {
LABEL_3:
      v7;
      v10;
      return v3;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v7, v8, v9, 0);
    v7;
    v10;
    if ((v11 & 1) == 0)
    {
      v3 = v21 & (v3 + 1);
      v12 = v22;
      v13 = *(v22 + 8 * (v3 >> 6) + 64);
      if (_bittest64(&v13, v3))
      {
        while (1)
        {
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)(*(*(v12 + 48) + 8 * v3));
          v7 = v15;
          v16 = static String._unconditionallyBridgeFromObjectiveC(_:)(a1);
          v10 = v17;
          if (!(v16 ^ v14 | v17 ^ v7))
          {
            break;
          }

          v18 = _stringCompareWithSmolCheck(_:_:expecting:)(v14, v7, v16, v17, 0);
          v7;
          v10;
          if ((v18 & 1) == 0)
          {
            v3 = v21 & (v3 + 1);
            v12 = v22;
            v19 = *(v22 + 8 * (v3 >> 6) + 64);
            if (_bittest64(&v19, v3))
            {
              continue;
            }
          }

          return v3;
        }

        goto LABEL_3;
      }
    }
  }

  return v3;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t), uint64_t *a4, uint64_t a5)
{
  v19 = a5;
  v20 = a4;
  v6 = v5;
  v22 = a1;
  v21 = a3;
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = alloca(v9);
  v11 = alloca(v9);
  v23 = ~(-1 << *(v6 + 32));
  v12 = v23 & a2;
  v13 = *(v6 + 8 * ((v23 & a2) >> 6) + 64);
  if (_bittest64(&v13, v23 & a2))
  {
    v25 = v8[2];
    v24 = v8;
    v26 = v8[9];
    do
    {
      v25(&v18, *(v6 + 48) + v12 * v26, v7);
      v14 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(v20, v21, v19);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)(&v18, v22, v7, v14);
      (v24[1])(&v18, v7);
      if (v15)
      {
        break;
      }

      v12 = v23 & (v12 + 1);
      v16 = *(v6 + 8 * (v12 >> 6) + 64);
    }

    while (_bittest64(&v16, v12));
  }

  return v12;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, char a3, unint64_t a4)
{
  v5 = ~(-1 << *(v4 + 32));
  v6 = v5 & a4;
  v7 = *(v4 + 8 * ((v5 & a4) >> 6) + 64);
  if (_bittest64(&v7, v5 & a4))
  {
    v8 = a2;
    v10 = *(v4 + 48);
    v17 = a3;
    do
    {
      v11 = *(v10 + 24 * v6);
      if (*(v10 + 24 * v6 + 16))
      {
        if ((a3 & 1) != 0 && v11 == a1)
        {
          return v6;
        }
      }

      else if ((a3 & 1) == 0)
      {
        v12 = *(v10 + 24 * v6 + 8);
        if (!(a1 ^ v11 | v8 ^ v12))
        {
          return v6;
        }

        v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v11, v12, a1, v8, 0);
        v8 = a2;
        a3 = v17;
        if (v13)
        {
          return v6;
        }
      }

      v6 = v5 & (v6 + 1);
      v14 = *(v4 + 8 * (v6 >> 6) + 64);
    }

    while (_bittest64(&v14, v6));
  }

  return v6;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 24);
  if (v6 <= a1)
  {
    v6 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, Double>);
  v7 = v6;
  v8 = v5;
  v47 = a2;
  v9 = static _DictionaryStorage.resize(original:capacity:move:)(v5, v7, a2);
  if (!*(v8 + 16))
  {
    goto LABEL_43;
  }

  v44 = v2;
  v10 = 1 << *(v8 + 32);
  v46 = (v8 + 64);
  v11 = ~(-1 << v10);
  if (v10 >= 64)
  {
    v11 = -1;
  }

  v12 = *(v8 + 64) & v11;
  v43 = (v10 + 63) >> 6;
  swift_retain_n(v8, 2);
  v13 = 0;
  for (i = v8; ; v8 = i)
  {
    if (v12)
    {
      _BitScanForward64(&v14, v12);
      v12 &= v12 - 1;
      v15 = v14 | (v13 << 6);
      goto LABEL_16;
    }

    v16 = __OFADD__(1, v13);
    v17 = v13 + 1;
    if (v16)
    {
      BUG();
    }

    if (v17 >= v43)
    {
      break;
    }

    v18 = v46;
    j = v46[v17];
    if (j)
    {
      v20 = v17;
    }

    else
    {
      v20 = v17 + 1;
      if (v17 + 1 >= v43)
      {
        goto LABEL_36;
      }

      j = v46[v17 + 1];
      if (!j)
      {
        v20 = v17 + 2;
        if (v17 + 2 >= v43)
        {
LABEL_36:
          v8;
          goto LABEL_38;
        }

        for (j = v46[v17 + 2]; !j; j = v46[v20])
        {
          v16 = __OFADD__(1, v20++);
          if (v16)
          {
            BUG();
          }

          if (v20 >= v43)
          {
            goto LABEL_36;
          }
        }
      }
    }

    _BitScanForward64(&v21, j);
    v12 = j & (j - 1);
    v15 = v21 | (v20 << 6);
    v13 = v20;
LABEL_16:
    v22 = *(v8 + 48);
    v23 = *(v8 + 56);
    v45 = *(v22 + 16 * v15);
    v24 = *(v22 + 16 * v15 + 8);
    v41 = *(v23 + 8 * v15);
    if ((v47 & 1) == 0)
    {
    }

    Hasher.init(_seed:)(*(v9 + 40));
    String.hash(into:)(v40, v45);
    v25 = Hasher._finalize()() & ~(-1 << *(v9 + 32));
    v26 = v25 >> 6;
    v27 = ~*(v9 + 8 * (v25 >> 6) + 64) >> v25 << v25;
    if (v27)
    {
      _BitScanForward64(&v28, v27);
      v29 = v28 | v25 & 0xFFFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = (63 - (-1 << *(v9 + 32))) >> 6;
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
        v33 = *(v9 + 8 * v26 + 64);
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

    *(v9 + 8 * (v29 >> 6) + 64) |= 1 << v29;
    v36 = *(v9 + 48);
    v37 = 16 * v29;
    *(v36 + v37) = v45;
    *(v36 + v37 + 8) = v24;
    *(*(v9 + 56) + 8 * v29) = v41;
    ++*(v9 + 16);
  }

  v8;
  v18 = v46;
LABEL_38:
  v3 = v44;
  if (v47)
  {
    v38 = 1 << *(v8 + 32);
    if (v38 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v38 + 63) >> 6, v18);
    }

    else
    {
      *v18 = -1 << (1 << *(v8 + 32));
    }

    *(v8 + 16) = 0;
  }

LABEL_43:

  *v3 = v9;
  return result;
}

{
  v45 = v2;
  v3 = *v2;
  v4 = *(*v2 + 24);
  if (v4 <= a1)
  {
    v4 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<MLDataValue, MLDataValue>);
  v47 = a2;
  v5 = static _DictionaryStorage.resize(original:capacity:move:)(v3, v4, a2);
  if (!*(v3 + 16))
  {

    v37 = v45;
    goto LABEL_53;
  }

  v6 = 1 << *(v3 + 32);
  v49 = (v3 + 64);
  v7 = ~(-1 << v6);
  if (v6 >= 64)
  {
    v7 = -1;
  }

  v8 = *(v3 + 64) & v7;
  v48 = (v6 + 63) >> 6;

  v9 = 0;
  v41 = v3;
  while (1)
  {
    if (v8)
    {
      _BitScanForward64(&v10, v8);
      v8 &= v8 - 1;
      v44 = v9;
      v11 = v10 | (v9 << 6);
      goto LABEL_18;
    }

    v12 = __OFADD__(1, v9);
    v13 = v9 + 1;
    if (v12)
    {
      BUG();
    }

    if (v13 >= v48)
    {
      break;
    }

    i = v49[v13];
    if (i)
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 + 1;
      if (v13 + 1 >= v48)
      {
        break;
      }

      i = v49[v13 + 1];
      if (!i)
      {
        v15 = v13 + 2;
        if (v13 + 2 >= v48)
        {
          break;
        }

        i = v49[v13 + 2];
        if (!i)
        {
          v15 = v13 + 3;
          if (v13 + 3 >= v48)
          {
            break;
          }

          for (i = v49[v13 + 3]; !i; i = v49[v15])
          {
            v12 = __OFADD__(1, v15++);
            if (v12)
            {
              BUG();
            }

            if (v15 >= v48)
            {
              goto LABEL_46;
            }
          }
        }
      }
    }

    _BitScanForward64(&v16, i);
    v8 = i & (i - 1);
    v11 = v16 | (v15 << 6);
    v44 = v15;
LABEL_18:
    v17 = 24 * v11;
    v18 = *(v3 + 48);
    v19 = *(v3 + 56);
    v20 = *(v18 + v17);
    v46 = *(v18 + v17 + 8);
    v50 = *(v18 + v17 + 16);
    v21 = v50;
    v42 = *(v19 + v17);
    v43 = *(v19 + v17 + 8);
    v51 = *(v19 + v17 + 16);
    if ((v47 & 1) == 0)
    {
      outlined copy of MLDataValue(v20, v46, v50);
      outlined copy of MLDataValue(v42, v43, v51);
    }

    Hasher.init(_seed:)(*(v5 + 40));
    switch(v21)
    {
      case 0:
        Hasher._combine(_:)(v20);
        goto LABEL_28;
      case 1:
        v22 = v20 & 0x7FFFFFFFFFFFFFFFLL;
        if ((v20 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v22 = v20;
        }

        Hasher._combine(_:)(v22);
        goto LABEL_28;
      case 2:
        String.hash(into:)(v40, v20);
        goto LABEL_28;
      case 3:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000026, ("t be used as dictionary key" + 0x8000000000000000), "CreateML/MLDataValue.swift", 26, 2, 381, 0);
        goto LABEL_60;
      case 4:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002BLL, ("t be used as dictionary key" + 0x8000000000000000), "CreateML/MLDataValue.swift", 26, 2, 383, 0);
        goto LABEL_60;
      case 5:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002BLL, ("CreateML/MLDataValue.swift" + 0x8000000000000000), "CreateML/MLDataValue.swift", 26, 2, 385, 0);
LABEL_60:
        BUG();
      case 6:
        Hasher._combine(_:)(1uLL);
LABEL_28:
        v23 = Hasher._finalize()() & ~(-1 << *(v5 + 32));
        v24 = v23 >> 6;
        v25 = ~*(v5 + 8 * (v23 >> 6) + 64) >> v23 << v23;
        if (v25)
        {
          _BitScanForward64(&v26, v25);
          v27 = v26 | v23 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v28 = (63 - (-1 << *(v5 + 32))) >> 6;
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
            v31 = *(v5 + 8 * v24 + 64);
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

        v34 = 24 * v27;
        *(v5 + 8 * (v27 >> 6) + 64) |= 1 << v27;
        v35 = *(v5 + 48);
        *(v35 + v34) = v20;
        *(v35 + v34 + 8) = v46;
        *(v35 + v34 + 16) = v50;
        v36 = *(v5 + 56);
        *(v36 + v34) = v42;
        *(v36 + v34 + 8) = v43;
        *(v36 + v34 + 16) = v51;
        ++*(v5 + 16);
        v3 = v41;
        v9 = v44;
        break;
    }
  }

LABEL_46:

  v37 = v45;
  if (v47)
  {
    v38 = 1 << *(v3 + 32);
    if (v38 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v38 + 63) >> 6, v49);
    }

    else
    {
      *v49 = -1 << v38;
    }

    *(v3 + 16) = 0;
  }

LABEL_53:
  *v37 = v5;
  return result;
}

{
  v42 = v2;
  v3 = *v2;
  v4 = *(*v2 + 24);
  if (v4 <= a1)
  {
    v4 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<MLDataValue, Int>);
  v44 = a2;
  v5 = static _DictionaryStorage.resize(original:capacity:move:)(v3, v4, a2);
  if (!*(v3 + 16))
  {

    v35 = v42;
    goto LABEL_53;
  }

  v6 = 1 << *(v3 + 32);
  v46 = (v3 + 64);
  v7 = ~(-1 << v6);
  if (v6 >= 64)
  {
    v7 = -1;
  }

  v8 = *(v3 + 64) & v7;
  v45 = (v6 + 63) >> 6;

  v9 = 0;
  v40 = v3;
  while (1)
  {
    if (v8)
    {
      _BitScanForward64(&v10, v8);
      v8 &= v8 - 1;
      v41 = v9;
      v11 = v10 | (v9 << 6);
      goto LABEL_18;
    }

    v12 = __OFADD__(1, v9);
    v13 = v9 + 1;
    if (v12)
    {
      BUG();
    }

    if (v13 >= v45)
    {
      break;
    }

    i = v46[v13];
    if (i)
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 + 1;
      if (v13 + 1 >= v45)
      {
        break;
      }

      i = v46[v13 + 1];
      if (!i)
      {
        v15 = v13 + 2;
        if (v13 + 2 >= v45)
        {
          break;
        }

        i = v46[v13 + 2];
        if (!i)
        {
          v15 = v13 + 3;
          if (v13 + 3 >= v45)
          {
            break;
          }

          for (i = v46[v13 + 3]; !i; i = v46[v15])
          {
            v12 = __OFADD__(1, v15++);
            if (v12)
            {
              BUG();
            }

            if (v15 >= v45)
            {
              goto LABEL_46;
            }
          }
        }
      }
    }

    _BitScanForward64(&v16, i);
    v8 = i & (i - 1);
    v11 = v16 | (v15 << 6);
    v41 = v15;
LABEL_18:
    v17 = *(v3 + 48);
    v18 = *(v3 + 56);
    v19 = *(v17 + 24 * v11);
    v43 = *(v17 + 24 * v11 + 8);
    v47 = *(v17 + 24 * v11 + 16);
    v20 = v47;
    v39 = *(v18 + 8 * v11);
    if ((v44 & 1) == 0)
    {
      outlined copy of MLDataValue(v19, v43, v47);
    }

    Hasher.init(_seed:)(*(v5 + 40));
    switch(v20)
    {
      case 0:
        Hasher._combine(_:)(v19);
        goto LABEL_28;
      case 1:
        v21 = v19 & 0x7FFFFFFFFFFFFFFFLL;
        if ((v19 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v21 = v19;
        }

        Hasher._combine(_:)(v21);
        goto LABEL_28;
      case 2:
        String.hash(into:)(v38, v19);
        goto LABEL_28;
      case 3:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000026, ("t be used as dictionary key" + 0x8000000000000000), "CreateML/MLDataValue.swift", 26, 2, 381, 0);
        goto LABEL_60;
      case 4:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002BLL, ("t be used as dictionary key" + 0x8000000000000000), "CreateML/MLDataValue.swift", 26, 2, 383, 0);
        goto LABEL_60;
      case 5:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002BLL, ("CreateML/MLDataValue.swift" + 0x8000000000000000), "CreateML/MLDataValue.swift", 26, 2, 385, 0);
LABEL_60:
        BUG();
      case 6:
        Hasher._combine(_:)(1uLL);
LABEL_28:
        v22 = Hasher._finalize()() & ~(-1 << *(v5 + 32));
        v23 = v22 >> 6;
        v24 = ~*(v5 + 8 * (v22 >> 6) + 64) >> v22 << v22;
        if (v24)
        {
          _BitScanForward64(&v25, v24);
          v26 = v25 | v22 & 0x7FFFFFFFFFFFFFC0;
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
            v30 = *(v5 + 8 * v23 + 64);
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

        *(v5 + 8 * (v26 >> 6) + 64) |= 1 << v26;
        v33 = *(v5 + 48);
        v34 = 24 * v26;
        *(v33 + v34) = v19;
        *(v33 + v34 + 8) = v43;
        *(v33 + v34 + 16) = v47;
        *(*(v5 + 56) + 8 * v26) = v39;
        ++*(v5 + 16);
        v3 = v40;
        v9 = v41;
        break;
    }
  }

LABEL_46:

  v35 = v42;
  if (v44)
  {
    v36 = 1 << *(v3 + 32);
    if (v36 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v36 + 63) >> 6, v46);
    }

    else
    {
      *v46 = -1 << v36;
    }

    *(v3 + 16) = 0;
  }

LABEL_53:
  *v35 = v5;
  return result;
}

{
  v44 = v2;
  v3 = *v2;
  v4 = *(*v2 + 24);
  if (v4 <= a1)
  {
    v4 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, MLUntypedColumn>);
  v45 = a2;
  v5 = static _DictionaryStorage.resize(original:capacity:move:)(v3, v4, a2);
  if (!*(v3 + 16))
  {

    v36 = v44;
    goto LABEL_45;
  }

  v6 = 1 << *(v3 + 32);
  v47 = (v3 + 64);
  v7 = ~(-1 << v6);
  if (v6 >= 64)
  {
    v7 = -1;
  }

  v8 = *(v3 + 64) & v7;
  v46 = (v6 + 63) >> 6;

  v9 = 0;
  v40 = v3;
  while (1)
  {
    if (v8)
    {
      _BitScanForward64(&v10, v8);
      v8 &= v8 - 1;
      v43 = v9;
      v11 = v10 | (v9 << 6);
      goto LABEL_18;
    }

    v12 = __OFADD__(1, v9);
    v13 = v9 + 1;
    if (v12)
    {
      BUG();
    }

    if (v13 >= v46)
    {
      break;
    }

    i = v47[v13];
    if (i)
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 + 1;
      if (v13 + 1 >= v46)
      {
        break;
      }

      i = v47[v13 + 1];
      if (!i)
      {
        v15 = v13 + 2;
        if (v13 + 2 >= v46)
        {
          break;
        }

        i = v47[v13 + 2];
        if (!i)
        {
          v15 = v13 + 3;
          if (v13 + 3 >= v46)
          {
            break;
          }

          for (i = v47[v13 + 3]; !i; i = v47[v15])
          {
            v12 = __OFADD__(1, v15++);
            if (v12)
            {
              BUG();
            }

            if (v15 >= v46)
            {
              goto LABEL_38;
            }
          }
        }
      }
    }

    _BitScanForward64(&v16, i);
    v8 = i & (i - 1);
    v11 = v16 | (v15 << 6);
    v43 = v15;
LABEL_18:
    v17 = *(v3 + 48);
    v18 = *(v3 + 56);
    v19 = 16 * v11;
    v41 = *(v17 + v19);
    v20 = *(v17 + v19 + 8);
    v42 = *(v18 + v19);
    v21 = *(v18 + v19 + 8);
    if ((v45 & 1) == 0)
    {

      outlined copy of Result<_DataTable, Error>(v42, v21);
    }

    Hasher.init(_seed:)(*(v5 + 40));
    String.hash(into:)(v39, v41);
    v22 = Hasher._finalize()() & ~(-1 << *(v5 + 32));
    v23 = v22 >> 6;
    v24 = ~*(v5 + 8 * (v22 >> 6) + 64) >> v22 << v22;
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
        v30 = *(v5 + 8 * v23 + 64);
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

    *(v5 + 8 * (v26 >> 6) + 64) |= 1 << v26;
    v33 = *(v5 + 48);
    v34 = 16 * v26;
    *(v33 + v34) = v41;
    *(v33 + v34 + 8) = v20;
    v35 = *(v5 + 56);
    *(v35 + v34) = v42;
    *(v35 + v34 + 8) = v21 & 1;
    ++*(v5 + 16);
    v3 = v40;
    v9 = v43;
  }

LABEL_38:

  v36 = v44;
  if (v45)
  {
    v37 = 1 << *(v3 + 32);
    if (v37 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v37 + 63) >> 6, v47);
    }

    else
    {
      *v47 = -1 << (1 << *(v3 + 32));
    }

    *(v3 + 16) = 0;
  }

LABEL_45:
  *v36 = v5;
  return result;
}

{
  v3 = v2;
  v4 = *v2;
  v5 = *(*v2 + 24);
  if (v5 <= a1)
  {
    v5 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, String>);
  v44 = a2;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)(v4, v5, a2);
  if (*(v4 + 16))
  {
    v41 = v2;
    v7 = 1 << *(v4 + 32);
    v47 = (v4 + 64);
    v8 = ~(-1 << v7);
    if (v7 >= 64)
    {
      v8 = -1;
    }

    v9 = *(v4 + 64) & v8;
    v45 = (v7 + 63) >> 6;
    v46 = v4;

    v10 = 0;
    while (1)
    {
      if (v9)
      {
        _BitScanForward64(&v11, v9);
        v9 &= v9 - 1;
        v12 = v11 | (v10 << 6);
      }

      else
      {
        v13 = __OFADD__(1, v10);
        v14 = v10 + 1;
        if (v13)
        {
          BUG();
        }

        if (v14 >= v45)
        {
LABEL_38:
          v36 = v46;

          v3 = v41;
          if (v44)
          {
            v37 = 1 << *(v36 + 32);
            if (v37 >= 64)
            {
              specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v37 + 63) >> 6, v47);
            }

            else
            {
              *v47 = -1 << (1 << *(v36 + 32));
            }

            *(v36 + 16) = 0;
          }

          break;
        }

        i = v47[v14];
        if (i)
        {
          v16 = v14;
        }

        else
        {
          v16 = v14 + 1;
          if (v14 + 1 >= v45)
          {
            goto LABEL_38;
          }

          i = v47[v14 + 1];
          if (!i)
          {
            v16 = v14 + 2;
            if (v14 + 2 >= v45)
            {
              goto LABEL_38;
            }

            i = v47[v14 + 2];
            if (!i)
            {
              v16 = v14 + 3;
              if (v14 + 3 >= v45)
              {
                goto LABEL_38;
              }

              for (i = v47[v14 + 3]; !i; i = v47[v16])
              {
                v13 = __OFADD__(1, v16++);
                if (v13)
                {
                  BUG();
                }

                if (v16 >= v45)
                {
                  goto LABEL_38;
                }
              }
            }
          }
        }

        _BitScanForward64(&v17, i);
        v9 = i & (i - 1);
        v12 = v17 | (v16 << 6);
        v10 = v16;
      }

      v18 = 16 * v12;
      v19 = *(v46 + 48);
      v20 = *(v46 + 56);
      v42 = *(v19 + v18);
      v21 = *(v19 + v18 + 8);
      v40 = *(v20 + v18);
      v43 = *(v20 + v18 + 8);
      if ((v44 & 1) == 0)
      {
      }

      Hasher.init(_seed:)(*(v6 + 40));
      String.hash(into:)(v39, v42);
      v22 = Hasher._finalize()() & ~(-1 << *(v6 + 32));
      v23 = v22 >> 6;
      v24 = ~*(v6 + 8 * (v22 >> 6) + 64) >> v22 << v22;
      if (v24)
      {
        _BitScanForward64(&v25, v24);
        v26 = v25 | v22 & 0xFFFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = (63 - (-1 << *(v6 + 32))) >> 6;
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
          v30 = *(v6 + 8 * v23 + 64);
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

      *(v6 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      v33 = *(v6 + 48);
      v34 = 16 * v26;
      *(v33 + v34) = v42;
      *(v33 + v34 + 8) = v21;
      v35 = *(v6 + 56);
      *(v35 + v34) = v40;
      *(v35 + v34 + 8) = v43;
      ++*(v6 + 16);
    }
  }

  *v3 = v6;
  return result;
}

{
  v3 = v2;
  v4 = *v2;
  v5 = *(*v2 + 24);
  if (v5 <= a1)
  {
    v5 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, Any>);
  v41 = a2;
  v6 = v4;
  v7 = static _DictionaryStorage.resize(original:capacity:move:)(v4, v5, a2);
  if (*(v6 + 16))
  {
    v39 = v2;
    v8 = 1 << *(v6 + 32);
    v44 = (v6 + 64);
    v9 = ~(-1 << v8);
    if (v8 >= 64)
    {
      v9 = -1;
    }

    v10 = *(v6 + 64) & v9;
    v42 = (v8 + 63) >> 6;
    v43 = v6;

    v11 = 0;
    while (1)
    {
      if (v10)
      {
        _BitScanForward64(&v12, v10);
        v10 &= v10 - 1;
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

        if (v15 >= v42)
        {
LABEL_39:
          v34 = v43;

          v3 = v39;
          if (v41)
          {
            v35 = 1 << *(v34 + 32);
            if (v35 >= 64)
            {
              specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v35 + 63) >> 6, v44);
            }

            else
            {
              *v44 = -1 << (1 << *(v34 + 32));
            }

            *(v34 + 16) = 0;
          }

          break;
        }

        i = v44[v15];
        if (i)
        {
          v17 = v15;
        }

        else
        {
          v17 = v15 + 1;
          if (v15 + 1 >= v42)
          {
            goto LABEL_39;
          }

          i = v44[v15 + 1];
          if (!i)
          {
            v17 = v15 + 2;
            if (v15 + 2 >= v42)
            {
              goto LABEL_39;
            }

            i = v44[v15 + 2];
            if (!i)
            {
              v17 = v15 + 3;
              if (v15 + 3 >= v42)
              {
                goto LABEL_39;
              }

              for (i = v44[v15 + 3]; !i; i = v44[v17])
              {
                v14 = __OFADD__(1, v17++);
                if (v14)
                {
                  BUG();
                }

                if (v17 >= v42)
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
        v11 = v17;
      }

      v19 = *(v43 + 48);
      v40 = *(v19 + 16 * v13);
      v20 = *(v19 + 16 * v13 + 8);
      v21 = (*(v43 + 56) + 32 * v13);
      if (v41)
      {
        outlined init with take of Any(v21, v38);
      }

      else
      {
        outlined init with copy of Any(v21, v38);
      }

      Hasher.init(_seed:)(*(v7 + 40));
      String.hash(into:)(v37, v40);
      v22 = Hasher._finalize()() & ~(-1 << *(v7 + 32));
      v23 = v22 >> 6;
      v24 = ~*(v7 + 8 * (v22 >> 6) + 64) >> v22 << v22;
      if (v24)
      {
        _BitScanForward64(&v24, v24);
        v25 = v24 | v22 & 0xFFFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = (63 - (-1 << *(v7 + 32))) >> 6;
        v27 = 0;
        do
        {
          v28 = v23 + 1;
          if (v23 + 1 == v26 && (v27 & 1) != 0)
          {
            BUG();
          }

          v23 = 0;
          if (v28 != v26)
          {
            v23 = v28;
          }

          v27 |= v28 == v26;
          v29 = *(v7 + 8 * v23 + 64);
        }

        while (v29 == -1);
        v30 = ~v29;
        v31 = 64;
        if (v30)
        {
          _BitScanForward64(&v31, v30);
        }

        v25 = v31 + (v23 << 6);
      }

      *(v7 + 8 * (v25 >> 6) + 64) |= 1 << v25;
      v32 = *(v7 + 48);
      v33 = 16 * v25;
      *(v32 + v33) = v40;
      *(v32 + v33 + 8) = v20;
      outlined init with take of Any(v38, (*(v7 + 56) + 32 * v25));
      ++*(v7 + 16);
    }
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 24);
  if (v6 <= a1)
  {
    v6 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<MLProgress.Metric, Any>);
  v7 = v6;
  v8 = v5;
  v47 = a2;
  v9 = static _DictionaryStorage.resize(original:capacity:move:)(v5, v7, a2);
  if (*(v8 + 16))
  {
    v44 = v2;
    v10 = 1 << *(v8 + 32);
    v46 = 0x8000000000000000;
    v49 = (v8 + 64);
    v11 = ~(-1 << v10);
    if (v10 >= 64)
    {
      v11 = -1;
    }

    v12 = *(v8 + 64) & v11;
    v48 = (v10 + 63) >> 6;
    v39 = "validationRootMeanSquaredError" + 0x8000000000000000;
    v40 = "rror" + 0x8000000000000000;
    v41 = "stylizedImageURL" + 0x8000000000000000;
    v42 = "validationAccuracy" + 0x8000000000000000;
    v43 = "accuracy" + 0x8000000000000000;

    v13 = 0;
    v46 -= 64;
    v45 = v8;
    while (1)
    {
      if (v12)
      {
        _BitScanForward64(&v14, v12);
        v12 &= v12 - 1;
        v15 = v14 | (v13 << 6);
      }

      else
      {
        v16 = __OFADD__(1, v13);
        v17 = v13 + 1;
        if (v16)
        {
          BUG();
        }

        if (v17 >= v48)
        {
LABEL_51:

          v3 = v44;
          if (v47)
          {
            v35 = 1 << *(v8 + 32);
            if (v35 >= 64)
            {
              specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v35 + 63) >> 6, v49);
            }

            else
            {
              *v49 = -1 << (1 << *(v8 + 32));
            }

            *(v8 + 16) = 0;
          }

          break;
        }

        i = v49[v17];
        if (i)
        {
          v19 = v17;
        }

        else
        {
          v19 = v17 + 1;
          if (v17 + 1 >= v48)
          {
            goto LABEL_51;
          }

          i = v49[v17 + 1];
          if (!i)
          {
            v19 = v17 + 2;
            if (v17 + 2 >= v48)
            {
              goto LABEL_51;
            }

            i = v49[v17 + 2];
            if (!i)
            {
              v19 = v17 + 3;
              if (v17 + 3 >= v48)
              {
                goto LABEL_51;
              }

              for (i = v49[v17 + 3]; !i; i = v49[v19])
              {
                v16 = __OFADD__(1, v19++);
                if (v16)
                {
                  BUG();
                }

                if (v19 >= v48)
                {
                  goto LABEL_51;
                }
              }
            }
          }
        }

        _BitScanForward64(&v20, i);
        v12 = i & (i - 1);
        v15 = v20 | (v19 << 6);
        v13 = v19;
      }

      v50 = *(*(v8 + 48) + v15);
      v21 = (*(v8 + 56) + 32 * v15);
      if (v47)
      {
        outlined init with take of Any(v21, v38);
      }

      else
      {
        outlined init with copy of Any(v21, v38);
      }

      v22 = v50;
      Hasher.init(_seed:)(*(v9 + 40));
      switch(v22)
      {
        case 0:
          v23 = 1936945004;
          v24 = 0;
          break;
        case 1:
          v23 = 0x4C746E65746E6F63;
          v24 = 111;
          break;
        case 2:
          v23 = 0x736F4C656C797473;
          v24 = 115;
          break;
        case 3:
          v23 = 0x7963617275636361;
          v24 = 0;
          break;
        case 4:
          v23 = 0x69746164696C6176;
          v24 = 111;
          break;
        case 5:
          v23 = 0xD000000000000012;
          v24 = v43;
          break;
        case 6:
          v23 = 0xD000000000000010;
          v24 = v42;
          break;
        case 7:
          v23 = 0xD000000000000014;
          v24 = v41;
          break;
        case 8:
          v23 = 0x456D756D6978616DLL;
          v24 = 114;
          break;
        case 9:
          v23 = 0xD00000000000001ELL;
          v24 = v40;
          break;
        case 10:
          v23 = 0xD000000000000016;
          v24 = v39;
          break;
      }

      String.hash(into:)(v37, v23);
      v24;
      v25 = Hasher._finalize()() & ~(-1 << *(v9 + 32));
      v26 = v25 >> 6;
      v27 = ~*(v9 + 8 * (v25 >> 6) + 64) >> v25 << v25;
      if (v27)
      {
        _BitScanForward64(&v27, v27);
        v28 = v27 | v46 & v25;
        v8 = v45;
      }

      else
      {
        v29 = (63 - (-1 << *(v9 + 32))) >> 6;
        v30 = 0;
        v8 = v45;
        do
        {
          v31 = v26 + 1;
          if (v26 + 1 == v29 && (v30 & 1) != 0)
          {
            BUG();
          }

          v26 = 0;
          if (v31 != v29)
          {
            v26 = v31;
          }

          v30 |= v31 == v29;
          v32 = *(v9 + 8 * v26 + 64);
        }

        while (v32 == -1);
        v33 = ~v32;
        v34 = 64;
        if (v33)
        {
          _BitScanForward64(&v34, v33);
        }

        v28 = v34 + (v26 << 6);
      }

      *(v9 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      *(*(v9 + 48) + v28) = v50;
      outlined init with take of Any(v38, (*(v9 + 56) + 32 * v28));
      ++*(v9 + 16);
    }
  }

  *v3 = v9;
  return result;
}

{
  v3 = v2;
  v5 = a1;
  v50 = type metadata accessor for URL(0);
  v51 = *(v50 - 8);
  v6 = *(v51 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v52 = &v40;
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v5 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<MLProgress.Metric, URL>);
  v10 = v9;
  v11 = static _DictionaryStorage.resize(original:capacity:move:)(v9, v5, a2);
  if (*(v10 + 16))
  {
    v49 = v3;
    v12 = 1 << *(v10 + 32);
    v57 = (v10 + 64);
    v13 = ~(-1 << v12);
    if (v12 >= 64)
    {
      v13 = -1;
    }

    v14 = *(v10 + 64) & v13;
    v56 = (v12 + 63) >> 6;
    v44 = "validationRootMeanSquaredError" + 0x8000000000000000;
    v45 = "rror" + 0x8000000000000000;
    v46 = "stylizedImageURL" + 0x8000000000000000;
    v47 = "validationAccuracy" + 0x8000000000000000;
    v48 = "accuracy" + 0x8000000000000000;

    v55 = a2;
    v42 = 16 * (a2 & 1) + 16;
    v15 = 0;
    v43 = 0x7FFFFFFFFFFFFFC0;
    v54 = v10;
    while (1)
    {
      if (v14)
      {
        _BitScanForward64(&v16, v14);
        v14 &= v14 - 1;
        v53 = v15;
        v17 = v16 | (v15 << 6);
      }

      else
      {
        v18 = __OFADD__(1, v15);
        v19 = v15 + 1;
        if (v18)
        {
          BUG();
        }

        if (v19 >= v56)
        {
LABEL_48:

          v3 = v49;
          if (v55)
          {
            v38 = 1 << *(v10 + 32);
            if (v38 >= 64)
            {
              specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v38 + 63) >> 6, v57);
            }

            else
            {
              *v57 = -1 << (1 << *(v10 + 32));
            }

            *(v10 + 16) = 0;
          }

          break;
        }

        i = v57[v19];
        if (i)
        {
          v21 = v19;
        }

        else
        {
          v21 = v19 + 1;
          if (v19 + 1 >= v56)
          {
            goto LABEL_48;
          }

          i = v57[v19 + 1];
          if (!i)
          {
            v21 = v19 + 2;
            if (v19 + 2 >= v56)
            {
              goto LABEL_48;
            }

            i = v57[v19 + 2];
            if (!i)
            {
              v21 = v19 + 3;
              if (v19 + 3 >= v56)
              {
                goto LABEL_48;
              }

              for (i = v57[v19 + 3]; !i; i = v57[v21])
              {
                v18 = __OFADD__(1, v21++);
                if (v18)
                {
                  BUG();
                }

                if (v21 >= v56)
                {
                  goto LABEL_48;
                }
              }
            }
          }
        }

        _BitScanForward64(&v22, i);
        v14 = i & (i - 1);
        v17 = v22 | (v21 << 6);
        v53 = v21;
      }

      v23 = *(*(v10 + 48) + v17);
      v24 = *(v51 + 72);
      (*(v51 + v42))(v52, *(v10 + 56) + v24 * v17, v50);
      Hasher.init(_seed:)(*(v11 + 40));
      v58 = v23;
      switch(v23)
      {
        case 0:
          v25 = 1936945004;
          v26 = 0;
          break;
        case 1:
          v25 = 0x4C746E65746E6F63;
          v26 = 111;
          break;
        case 2:
          v25 = 0x736F4C656C797473;
          v26 = 115;
          break;
        case 3:
          v25 = 0x7963617275636361;
          v26 = 0;
          break;
        case 4:
          v25 = 0x69746164696C6176;
          v26 = 111;
          break;
        case 5:
          v25 = 0xD000000000000012;
          v26 = v48;
          break;
        case 6:
          v25 = 0xD000000000000010;
          v26 = v47;
          break;
        case 7:
          v25 = 0xD000000000000014;
          v26 = v46;
          break;
        case 8:
          v25 = 0x456D756D6978616DLL;
          v26 = 114;
          break;
        case 9:
          v25 = 0xD00000000000001ELL;
          v26 = v45;
          break;
        case 10:
          v25 = 0xD000000000000016;
          v26 = v44;
          break;
      }

      String.hash(into:)(v41, v25);
      v26;
      v27 = Hasher._finalize()() & ~(-1 << *(v11 + 32));
      v28 = v27 >> 6;
      v29 = ~*(v11 + 8 * (v27 >> 6) + 64) >> v27 << v27;
      if (v29)
      {
        _BitScanForward64(&v30, v29);
        v31 = v30 | v43 & v27;
        v10 = v54;
      }

      else
      {
        v32 = (63 - (-1 << *(v11 + 32))) >> 6;
        v33 = 0;
        v10 = v54;
        do
        {
          v34 = v28 + 1;
          if (v28 + 1 == v32 && (v33 & 1) != 0)
          {
            BUG();
          }

          v28 = 0;
          if (v34 != v32)
          {
            v28 = v34;
          }

          v33 |= v34 == v32;
          v35 = *(v11 + 8 * v28 + 64);
        }

        while (v35 == -1);
        v36 = ~v35;
        v37 = 64;
        if (v36)
        {
          _BitScanForward64(&v37, v36);
        }

        v31 = v37 + (v28 << 6);
      }

      *(v11 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      *(*(v11 + 48) + v31) = v58;
      (*(v51 + 32))(*(v11 + 56) + v31 * v24, v52, v50);
      ++*(v11 + 16);
      v15 = v53;
    }
  }

  *v3 = v11;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 24);
  if (v6 <= a1)
  {
    v6 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<MLProgress.Metric, Double>);
  v7 = v6;
  v8 = v5;
  v9 = static _DictionaryStorage.resize(original:capacity:move:)(v5, v7, a2);
  if (*(v8 + 16))
  {
    v48 = a2;
    v45 = v2;
    v10 = 1 << *(v8 + 32);
    v47 = 0x8000000000000000;
    v50 = (v8 + 64);
    v11 = ~(-1 << v10);
    if (v10 >= 64)
    {
      v11 = -1;
    }

    v12 = *(v8 + 64) & v11;
    v49 = (v10 + 63) >> 6;
    v40 = "validationRootMeanSquaredError" + 0x8000000000000000;
    v41 = "rror" + 0x8000000000000000;
    v42 = "stylizedImageURL" + 0x8000000000000000;
    v43 = "validationAccuracy" + 0x8000000000000000;
    v44 = "accuracy" + 0x8000000000000000;

    v13 = 0;
    v47 -= 64;
    v46 = v8;
    while (1)
    {
      if (v12)
      {
        _BitScanForward64(&v14, v12);
        v12 &= v12 - 1;
        v15 = v14 | (v13 << 6);
      }

      else
      {
        v16 = __OFADD__(1, v13);
        v17 = v13 + 1;
        if (v16)
        {
          BUG();
        }

        if (v17 >= v49)
        {
LABEL_48:

          v3 = v45;
          if (v48)
          {
            v36 = 1 << *(v8 + 32);
            if (v36 >= 64)
            {
              specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v36 + 63) >> 6, v50);
            }

            else
            {
              *v50 = -1 << (1 << *(v8 + 32));
            }

            *(v8 + 16) = 0;
          }

          break;
        }

        i = v50[v17];
        if (i)
        {
          v19 = v17;
        }

        else
        {
          v19 = v17 + 1;
          if (v17 + 1 >= v49)
          {
            goto LABEL_48;
          }

          i = v50[v17 + 1];
          if (!i)
          {
            v19 = v17 + 2;
            if (v17 + 2 >= v49)
            {
              goto LABEL_48;
            }

            i = v50[v17 + 2];
            if (!i)
            {
              v19 = v17 + 3;
              if (v17 + 3 >= v49)
              {
                goto LABEL_48;
              }

              for (i = v50[v17 + 3]; !i; i = v50[v19])
              {
                v16 = __OFADD__(1, v19++);
                if (v16)
                {
                  BUG();
                }

                if (v19 >= v49)
                {
                  goto LABEL_48;
                }
              }
            }
          }
        }

        _BitScanForward64(&v20, i);
        v12 = i & (i - 1);
        v15 = v20 | (v19 << 6);
        v13 = v19;
      }

      v21 = *(v8 + 56);
      v22 = *(*(v8 + 48) + v15);
      v39 = *(v21 + 8 * v15);
      Hasher.init(_seed:)(*(v9 + 40));
      v51 = v22;
      switch(v22)
      {
        case 0:
          v23 = 1936945004;
          v24 = 0;
          break;
        case 1:
          v23 = 0x4C746E65746E6F63;
          v24 = 111;
          break;
        case 2:
          v23 = 0x736F4C656C797473;
          v24 = 115;
          break;
        case 3:
          v23 = 0x7963617275636361;
          v24 = 0;
          break;
        case 4:
          v23 = 0x69746164696C6176;
          v24 = 111;
          break;
        case 5:
          v23 = 0xD000000000000012;
          v24 = v44;
          break;
        case 6:
          v23 = 0xD000000000000010;
          v24 = v43;
          break;
        case 7:
          v23 = 0xD000000000000014;
          v24 = v42;
          break;
        case 8:
          v23 = 0x456D756D6978616DLL;
          v24 = 114;
          break;
        case 9:
          v23 = 0xD00000000000001ELL;
          v24 = v41;
          break;
        case 10:
          v23 = 0xD000000000000016;
          v24 = v40;
          break;
      }

      String.hash(into:)(v38, v23);
      v24;
      v25 = Hasher._finalize()() & ~(-1 << *(v9 + 32));
      v26 = v25 >> 6;
      v27 = ~*(v9 + 8 * (v25 >> 6) + 64) >> v25 << v25;
      if (v27)
      {
        _BitScanForward64(&v28, v27);
        v29 = v28 | v47 & v25;
        v8 = v46;
      }

      else
      {
        v30 = (63 - (-1 << *(v9 + 32))) >> 6;
        v31 = 0;
        v8 = v46;
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
          v33 = *(v9 + 8 * v26 + 64);
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

      *(v9 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      *(*(v9 + 48) + v29) = v51;
      *(*(v9 + 56) + 8 * v29) = v39;
      ++*(v9 + 16);
    }
  }

  *v3 = v9;
  return result;
}

{
  v41 = v2;
  v3 = *v2;
  v4 = *(*v2 + 24);
  if (v4 <= a1)
  {
    v4 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, Int>);
  v42 = a2;
  v5 = static _DictionaryStorage.resize(original:capacity:move:)(v3, v4, a2);
  if (!*(v3 + 16))
  {

    v34 = v41;
    goto LABEL_45;
  }

  v6 = 1 << *(v3 + 32);
  v44 = (v3 + 64);
  v7 = ~(-1 << v6);
  if (v6 >= 64)
  {
    v7 = -1;
  }

  v8 = *(v3 + 64) & v7;
  v43 = (v6 + 63) >> 6;

  v9 = 0;
  v39 = v3;
  while (1)
  {
    if (v8)
    {
      _BitScanForward64(&v10, v8);
      v8 &= v8 - 1;
      v40 = v9;
      v11 = v10 | (v9 << 6);
      goto LABEL_18;
    }

    v12 = __OFADD__(1, v9);
    v13 = v9 + 1;
    if (v12)
    {
      BUG();
    }

    if (v13 >= v43)
    {
      break;
    }

    i = v44[v13];
    if (i)
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 + 1;
      if (v13 + 1 >= v43)
      {
        break;
      }

      i = v44[v13 + 1];
      if (!i)
      {
        v15 = v13 + 2;
        if (v13 + 2 >= v43)
        {
          break;
        }

        i = v44[v13 + 2];
        if (!i)
        {
          v15 = v13 + 3;
          if (v13 + 3 >= v43)
          {
            break;
          }

          for (i = v44[v13 + 3]; !i; i = v44[v15])
          {
            v12 = __OFADD__(1, v15++);
            if (v12)
            {
              BUG();
            }

            if (v15 >= v43)
            {
              goto LABEL_38;
            }
          }
        }
      }
    }

    _BitScanForward64(&v16, i);
    v8 = i & (i - 1);
    v11 = v16 | (v15 << 6);
    v40 = v15;
LABEL_18:
    v17 = *(v3 + 48);
    v18 = *(v3 + 56);
    v19 = *(v17 + 16 * v11);
    v20 = *(v17 + 16 * v11 + 8);
    v38 = *(v18 + 8 * v11);
    if ((v42 & 1) == 0)
    {
    }

    Hasher.init(_seed:)(*(v5 + 40));
    String.hash(into:)(v37, v19);
    v21 = Hasher._finalize()() & ~(-1 << *(v5 + 32));
    v22 = v21 >> 6;
    v23 = ~*(v5 + 8 * (v21 >> 6) + 64) >> v21 << v21;
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
        v29 = *(v5 + 8 * v22 + 64);
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

    *(v5 + 8 * (v25 >> 6) + 64) |= 1 << v25;
    v32 = *(v5 + 48);
    v33 = 16 * v25;
    *(v32 + v33) = v19;
    *(v32 + v33 + 8) = v20;
    *(*(v5 + 56) + 8 * v25) = v38;
    ++*(v5 + 16);
    v3 = v39;
    v9 = v40;
  }

LABEL_38:

  v34 = v41;
  if (v42)
  {
    v35 = 1 << *(v3 + 32);
    if (v35 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v35 + 63) >> 6, v44);
    }

    else
    {
      *v44 = -1 << (1 << *(v3 + 32));
    }

    *(v3 + 16) = 0;
  }

LABEL_45:
  *v34 = v5;
  return result;
}

{
  v3 = v2;
  v4 = *v2;
  v5 = *(*v2 + 24);
  if (v5 <= a1)
  {
    v5 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, [Double]>);
  v41 = a2;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)(v4, v5, a2);
  if (*(v4 + 16))
  {
    v38 = v2;
    v7 = 1 << *(v4 + 32);
    v44 = (v4 + 64);
    v8 = ~(-1 << v7);
    if (v7 >= 64)
    {
      v8 = -1;
    }

    v9 = *(v4 + 64) & v8;
    v42 = (v7 + 63) >> 6;
    v43 = v4;

    v10 = 0;
    while (1)
    {
      if (v9)
      {
        _BitScanForward64(&v11, v9);
        v9 &= v9 - 1;
        v12 = v11 | (v10 << 6);
      }

      else
      {
        v13 = __OFADD__(1, v10);
        v14 = v10 + 1;
        if (v13)
        {
          BUG();
        }

        if (v14 >= v42)
        {
LABEL_38:
          v34 = v43;

          v3 = v38;
          if (v41)
          {
            v35 = 1 << *(v34 + 32);
            if (v35 >= 64)
            {
              specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v35 + 63) >> 6, v44);
            }

            else
            {
              *v44 = -1 << (1 << *(v34 + 32));
            }

            *(v34 + 16) = 0;
          }

          break;
        }

        i = v44[v14];
        if (i)
        {
          v16 = v14;
        }

        else
        {
          v16 = v14 + 1;
          if (v14 + 1 >= v42)
          {
            goto LABEL_38;
          }

          i = v44[v14 + 1];
          if (!i)
          {
            v16 = v14 + 2;
            if (v14 + 2 >= v42)
            {
              goto LABEL_38;
            }

            i = v44[v14 + 2];
            if (!i)
            {
              v16 = v14 + 3;
              if (v14 + 3 >= v42)
              {
                goto LABEL_38;
              }

              for (i = v44[v14 + 3]; !i; i = v44[v16])
              {
                v13 = __OFADD__(1, v16++);
                if (v13)
                {
                  BUG();
                }

                if (v16 >= v42)
                {
                  goto LABEL_38;
                }
              }
            }
          }
        }

        _BitScanForward64(&v17, i);
        v9 = i & (i - 1);
        v12 = v17 | (v16 << 6);
        v10 = v16;
      }

      v18 = *(v43 + 48);
      v19 = *(v43 + 56);
      v39 = *(v18 + 16 * v12);
      v20 = *(v18 + 16 * v12 + 8);
      v40 = *(v19 + 8 * v12);
      if ((v41 & 1) == 0)
      {
      }

      Hasher.init(_seed:)(*(v6 + 40));
      String.hash(into:)(v37, v39);
      v21 = Hasher._finalize()() & ~(-1 << *(v6 + 32));
      v22 = v21 >> 6;
      v23 = ~*(v6 + 8 * (v21 >> 6) + 64) >> v21 << v21;
      if (v23)
      {
        _BitScanForward64(&v24, v23);
        v25 = v24 | v21 & 0xFFFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = (63 - (-1 << *(v6 + 32))) >> 6;
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
          v29 = *(v6 + 8 * v22 + 64);
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

      *(v6 + 8 * (v25 >> 6) + 64) |= 1 << v25;
      v32 = *(v6 + 48);
      v33 = 16 * v25;
      *(v32 + v33) = v39;
      *(v32 + v33 + 8) = v20;
      *(*(v6 + 56) + 8 * v25) = v40;
      ++*(v6 + 16);
    }
  }

  *v3 = v6;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &type metadata accessor for CSVType, &demangling cache variable for type metadata for _DictionaryStorage<String, CSVType>);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &type metadata accessor for JSONType, &demangling cache variable for type metadata for _DictionaryStorage<String, JSONType>);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, unsigned int a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a1;
  v51 = a3(0);
  v48 = *(v51 - 8);
  v7 = *(v48 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v52 = v46;
  v50 = v4;
  v10 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v6 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledName(a4);
  v53 = a2;
  v11 = v10;
  v12 = static _DictionaryStorage.resize(original:capacity:move:)(v10, v6, a2);
  if (!*(v11 + 16))
  {

    v43 = v50;
    goto LABEL_46;
  }

  v13 = 1 << *(v11 + 32);
  v56 = (v11 + 64);
  v14 = ~(-1 << v13);
  if (v13 >= 64)
  {
    v14 = -1;
  }

  v15 = *(v11 + 64) & v14;
  v54 = (v13 + 63) >> 6;
  v55 = v11;

  for (i = 0; ; i = v49)
  {
    if (v15)
    {
      _BitScanForward64(&v17, v15);
      v15 &= v15 - 1;
      v49 = i;
      v18 = v17 | (i << 6);
      goto LABEL_18;
    }

    v19 = __OFADD__(1, i);
    v20 = i + 1;
    if (v19)
    {
      BUG();
    }

    if (v20 >= v54)
    {
      break;
    }

    j = v56[v20];
    if (j)
    {
      v22 = v20;
    }

    else
    {
      v22 = v20 + 1;
      if (v20 + 1 >= v54)
      {
        break;
      }

      j = v56[v20 + 1];
      if (!j)
      {
        v22 = v20 + 2;
        if (v20 + 2 >= v54)
        {
          break;
        }

        j = v56[v20 + 2];
        if (!j)
        {
          v22 = v20 + 3;
          if (v20 + 3 >= v54)
          {
            break;
          }

          for (j = v56[v20 + 3]; !j; j = v56[v22])
          {
            v19 = __OFADD__(1, v22++);
            if (v19)
            {
              BUG();
            }

            if (v22 >= v54)
            {
              goto LABEL_39;
            }
          }
        }
      }
    }

    _BitScanForward64(&v23, j);
    v15 = j & (j - 1);
    v18 = v23 | (v22 << 6);
    v49 = v22;
LABEL_18:
    v24 = *(v55 + 48);
    v47 = *(v24 + 16 * v18);
    v25 = *(v24 + 16 * v18 + 8);
    v26 = *(v48 + 72);
    v27 = *(v55 + 56) + v26 * v18;
    if (v53)
    {
      (*(v48 + 32))(v52, v27, v51);
    }

    else
    {
      (*(v48 + 16))(v52, v27, v51);
    }

    Hasher.init(_seed:)(*(v12 + 40));
    String.hash(into:)(v46, v47);
    v28 = Hasher._finalize()() & ~(-1 << *(v12 + 32));
    v29 = v28 >> 6;
    v30 = ~*(v12 + 8 * (v28 >> 6) + 64) >> v28 << v28;
    if (v30)
    {
      _BitScanForward64(&v31, v30);
      v32 = v31 | v28 & 0xFFFFFFFFFFFFFFC0;
    }

    else
    {
      v33 = (63 - (-1 << *(v12 + 32))) >> 6;
      v34 = 0;
      do
      {
        v35 = v29 + 1;
        if (v29 + 1 == v33 && (v34 & 1) != 0)
        {
          BUG();
        }

        v29 = 0;
        if (v35 != v33)
        {
          v29 = v35;
        }

        v34 |= v35 == v33;
        v36 = *(v12 + 8 * v29 + 64);
      }

      while (v36 == -1);
      v37 = ~v36;
      v38 = 64;
      if (v37)
      {
        _BitScanForward64(&v38, v37);
      }

      v32 = v38 + (v29 << 6);
    }

    *(v12 + 8 * (v32 >> 6) + 64) |= 1 << v32;
    v39 = *(v12 + 48);
    v40 = v32 * v26;
    v41 = 16 * v32;
    *(v39 + v41) = v47;
    *(v39 + v41 + 8) = v25;
    (*(v48 + 32))(*(v12 + 56) + v40, v52, v51);
    ++*(v12 + 16);
  }

LABEL_39:
  v42 = v55;

  v43 = v50;
  if (v53)
  {
    v44 = 1 << *(v42 + 32);
    if (v44 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v44 + 63) >> 6, v56);
    }

    else
    {
      *v56 = -1 << (1 << *(v42 + 32));
    }

    *(v42 + 16) = 0;
  }

LABEL_46:
  *v43 = v12;
  return result;
}

uint64_t *specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, unsigned int a2)
{
  v24 = v2;
  v3 = *v2;
  v4 = *(*v2 + 24);
  if (v4 <= a1)
  {
    v4 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<MLRecommender.Identifier, Int>);
  v27 = a2;
  v26 = static _DictionaryStorage.resize(original:capacity:move:)(v3, v4, a2);
  if (!*(v3 + 16))
  {
    goto LABEL_31;
  }

  v5 = 1 << *(v3 + 32);
  v29 = (v3 + 64);
  v6 = ~(-1 << v5);
  if (v5 >= 64)
  {
    v6 = -1;
  }

  v7 = *(v3 + 64) & v6;
  v28 = (v5 + 63) >> 6;

  v8 = 0;
  v23 = v3;
  while (1)
  {
    if (v7)
    {
      _BitScanForward64(&v9, v7);
      v7 &= v7 - 1;
      v25 = v8;
      v10 = v9 | (v8 << 6);
      goto LABEL_23;
    }

    v11 = v8 + 1;
    if (__OFADD__(1, v8))
    {
      BUG();
    }

    if (v11 >= v28)
    {
      goto LABEL_26;
    }

    v12 = v29[v11];
    if (!v12)
    {
      break;
    }

    v13 = v8 + 1;
LABEL_22:
    _BitScanForward64(&v14, v12);
    v7 = v12 & (v12 - 1);
    v10 = v14 | (v13 << 6);
    v25 = v13;
LABEL_23:
    v15 = *(v3 + 48);
    v16 = *(v3 + 56);
    v17 = *(v15 + 24 * v10);
    v18 = *(v15 + 24 * v10 + 8);
    v19 = *(v16 + 8 * v10);
    v20 = *(v15 + 24 * v10 + 16);
    if ((v27 & 1) == 0)
    {
      outlined copy of MLRecommender.Identifier(*(v15 + 24 * v10), *(v15 + 24 * v10 + 8), *(v15 + 24 * v10 + 16));
    }

    specialized _NativeDictionary._unsafeInsertNew(key:value:)(v17, v18, v20, v19, v26);
    v3 = v23;
    v8 = v25;
  }

  v13 = v8 + 2;
  if (v8 + 2 >= v28)
  {
    goto LABEL_26;
  }

  v12 = v29[v11 + 1];
  if (v12)
  {
    goto LABEL_22;
  }

  v13 = v8 + 3;
  if (v8 + 3 >= v28)
  {
    goto LABEL_26;
  }

  v12 = v29[v11 + 2];
  if (v12)
  {
    goto LABEL_22;
  }

  v13 = v8 + 4;
  if (v8 + 4 >= v28)
  {
    goto LABEL_26;
  }

  v12 = v29[v11 + 3];
  if (v12)
  {
    goto LABEL_22;
  }

  while (v8 + 5 < v28)
  {
    v12 = *(v3 + 8 * v8++ + 104);
    if (v12)
    {
      v13 = v8 + 4;
      goto LABEL_22;
    }
  }

LABEL_26:

  if (v27)
  {
    v21 = 1 << *(v3 + 32);
    if (v21 > 63)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v21 + 63) >> 6, v29);
    }

    else
    {
      *v29 = -1 << (1 << *(v3 + 32));
    }

    *(v3 + 16) = 0;
  }

LABEL_31:

  result = v24;
  *v24 = v26;
  return result;
}

unint64_t specialized _NativeDictionary._unsafeInsertNew(key:value:)(Swift::UInt a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  Hasher.init(_seed:)(*(a5 + 40));
  if (a3)
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(a1);
  }

  else
  {
    Hasher._combine(_:)(0);
    String.hash(into:)(v11, a1);
  }

  v7 = Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)(~(-1 << *(a5 + 32)) & v7, a5 + 64);
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v9 = *(a5 + 48);
  v10 = 24 * result;
  *(v9 + v10) = a1;
  *(v9 + v10 + 8) = a2;
  *(v9 + v10 + 16) = a3 & 1;
  *(*(a5 + 56) + 8 * result) = v12;
  ++*(a5 + 16);
  return result;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t *a1, int a2, void *a3)
{
  v4 = v3;
  v54 = a3;
  v61 = a2;
  v5 = *a1;
  v42 = a1[1];
  v6 = a1[2];
  v43 = a1[3];
  v7 = a1[4];
  v44 = a1[5];
  v53 = a1[6];

  v48 = v6;

  v49 = v7;

  v8 = 0;
  v52 = v5;
  while (1)
  {
    if (v8 == CMLDictionary.size.getter())
    {
LABEL_17:
      v53;
      v49;
      v48;
      return v52;
    }

    v9 = CMLDictionary.keyAndValue(at:)(v8);
    v60 = v4;
    if (v4)
    {
      swift_unexpectedError(v60, "CreateML/DictionaryType.swift", 29, 1, 75);
      BUG();
    }

    v11 = v9;
    v12 = v10;
    v8 = specialized RandomAccessCollection<>.index(after:)(v8, CMLDictionary.size.getter);
    v45[0] = v11;
    v45[1] = v12;
    v42(v45);

    v55 = v39[0];
    v56 = v39[1];
    v57 = v40;
    LOBYTE(v58) = v41;
    if ((v43(&v55) & 1) == 0)
    {
      outlined consume of (MLDataValue, MLDataValue)?(v55, *(&v55 + 1), v56, *(&v56 + 1), v57, v58);
      goto LABEL_6;
    }

    v44(&v55);
    outlined consume of (MLDataValue, MLDataValue)?(v55, *(&v55 + 1), v56, *(&v56 + 1), v57, v58);
    if (v35 == 0xFF)
    {
      goto LABEL_17;
    }

    v55 = v34;
    LOBYTE(v56) = v35;
    v47 = v36;
    v46 = v37;
    v62 = v38;
    v13 = *v54;
    v50 = *(&v34 + 1);
    v51 = v34;
    v59 = v35;
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(v34, *(&v34 + 1), v35);
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v13[2], v16);
    v18 = v13[2] + v16;
    if (v17)
    {
      BUG();
    }

    v19 = v14;
    if (v13[3] >= v18)
    {
      if ((v61 & 1) == 0)
      {
        LOBYTE(v61) = v14;
        v29 = v15;
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<MLDataValue, MLDataValue>);
        _NativeDictionary.copy()();
        v15 = v29;
        v19 = v61;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, v61);
      v20 = v50;
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(v51, v50, v59);
      LOBYTE(v22) = v22 & 1;
      if ((v19 & 1) != v22)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLDataValue, v20, v22, v21);
        BUG();
      }
    }

    if (v19)
    {
      break;
    }

    v23 = *v54;
    v23[(v15 >> 6) + 8] |= 1 << v15;
    v24 = v23[6];
    v25 = 24 * v15;
    *(v24 + v25) = v51;
    *(v24 + v25 + 8) = v50;
    *(v24 + v25 + 16) = v35;
    v26 = v23[7];
    *(v26 + v25) = v47;
    *(v26 + v25 + 8) = v46;
    *(v26 + v25 + 16) = v62;
    v27 = v23[2];
    v17 = __OFADD__(1, v27);
    v28 = v27 + 1;
    if (v17)
    {
      BUG();
    }

    v23[2] = v28;
    LOBYTE(v23) = 1;
    v61 = v23;
LABEL_6:
    v4 = v60;
  }

  v31 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
  swift_willThrow();
  v45[0] = v31;
  v60 = v31;
  swift_errorRetain(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
  if (swift_dynamicCast(&demangling cache variable for type metadata for Error, v45, v32, &type metadata for _MergeError, 0))
  {
    *&v39[0] = 0;
    *(&v39[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    v33._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
    v33._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v33);
    _print_unlocked<A, B>(_:_:)(&v55, v39, &type metadata for MLDataValue, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v33._countAndFlagsBits = 39;
    v33._object = 0xE100000000000000;
    String.append(_:)(v33);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, *&v39[0], *(&v39[0] + 1), "Swift/NativeDictionary.swift", 28, 2, 783, 0);
    BUG();
  }

  outlined consume of MLDataValue(v47, v46, v62);
  outlined consume of MLDataValue(v51, v50, v59);

  return v45[0];
}

uint64_t specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 == 255)
  {
    BUG();
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  v6 = *a1;
  v7 = *(a1 + 8);
  *v1 = *a1;
  *(v1 + 8) = v7;
  *(v1 + 16) = v2;
  *(v1 + 24) = v5;
  *(v1 + 32) = v4;
  *(v1 + 40) = v3;
  outlined copy of MLDataValue(v6, v7, v2);
  return outlined copy of MLDataValue(v5, v4, v3);
}

BOOL specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:)(__int128 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  *(v5 + 9) = *(a1 + 25);
  v5[0] = v2;
  v4 = v1;
  return specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:)(&v4);
}

uint64_t specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:)(__int128 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  *(v5 + 9) = *(a1 + 25);
  v5[0] = v2;
  v4 = v1;
  return specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:)(&v4);
}

uint64_t lazy protocol witness table accessor for type MLDataTable.Row and conformance MLDataTable.Row()
{
  result = lazy protocol witness table cache variable for type MLDataTable.Row and conformance MLDataTable.Row;
  if (!lazy protocol witness table cache variable for type MLDataTable.Row and conformance MLDataTable.Row)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTable.Row, &type metadata for MLDataTable.Row);
    lazy protocol witness table cache variable for type MLDataTable.Row and conformance MLDataTable.Row = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MLDataTable.Row.Values and conformance MLDataTable.Row.Values()
{
  result = lazy protocol witness table cache variable for type MLDataTable.Row.Values and conformance MLDataTable.Row.Values;
  if (!lazy protocol witness table cache variable for type MLDataTable.Row.Values and conformance MLDataTable.Row.Values)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTable.Row.Values, &type metadata for MLDataTable.Row.Values);
    lazy protocol witness table cache variable for type MLDataTable.Row.Values and conformance MLDataTable.Row.Values = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLDataTable.Row.Values and conformance MLDataTable.Row.Values;
  if (!lazy protocol witness table cache variable for type MLDataTable.Row.Values and conformance MLDataTable.Row.Values)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTable.Row.Values, &type metadata for MLDataTable.Row.Values);
    lazy protocol witness table cache variable for type MLDataTable.Row.Values and conformance MLDataTable.Row.Values = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLDataTable.Row.Values and conformance MLDataTable.Row.Values;
  if (!lazy protocol witness table cache variable for type MLDataTable.Row.Values and conformance MLDataTable.Row.Values)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTable.Row.Values, &type metadata for MLDataTable.Row.Values);
    lazy protocol witness table cache variable for type MLDataTable.Row.Values and conformance MLDataTable.Row.Values = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLDataTable.Row.Values and conformance MLDataTable.Row.Values;
  if (!lazy protocol witness table cache variable for type MLDataTable.Row.Values and conformance MLDataTable.Row.Values)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTable.Row.Values, &type metadata for MLDataTable.Row.Values);
    lazy protocol witness table cache variable for type MLDataTable.Row.Values and conformance MLDataTable.Row.Values = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<MLDataTable.Row.Values> and conformance <> Slice<A>(uint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!*a1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for Slice<MLDataTable.Row.Values>);
    a2();
    result = swift_getWitnessTable(a3, v5);
    *a1 = result;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLDataTable.Row(void *a1, void *a2)
{
  return initializeBufferWithCopyOfBuffer for MLDataTable.Row(a1, a2);
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];

  return a1;
}

uint64_t destroy for MLDataTable.Row(uint64_t a1)
{

  *(a1 + 8);
}

void *assignWithCopy for MLDataTable.Row(void *a1, void *a2)
{
  *a1 = *a2;

  v2 = a1[1];
  a1[1] = a2[1];

  v2;
  a1[2] = a2[2];

  return a1;
}

uint64_t assignWithTake for MLDataTable.Row(uint64_t a1, uint64_t a2)
{

  v3 = *(a1 + 8);
  *a1 = *a2;
  v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

void outlined consume of (MLDataValue, MLDataValue)?(void *a1, void *a2, char a3, void *a4, void *a5, char a6)
{
  if (a3 != -1)
  {
    outlined consume of MLDataValue(a1, a2, a3);
    outlined consume of MLDataValue(a4, a5, a6);
  }
}

uint64_t MLHandActionClassifier.init(trainingFeatures:validationFeatures:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a4;
  *(v4 + 48) = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  *(v4 + 64) = v6;
  v7 = *(v6 - 8);
  *(v4 + 72) = v7;
  *(v4 + 80) = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 88) = *a2;
  *(v4 + 25) = *(a2 + 8);
  *(v4 + 96) = *a3;
  *(v4 + 26) = *(a3 + 8);
  return swift_task_switch(MLHandActionClassifier.init(trainingFeatures:validationFeatures:parameters:), 0, 0);
}

uint64_t MLHandActionClassifier.init(trainingFeatures:validationFeatures:parameters:)(double a1)
{
  v27 = *(v1 + 26);
  v18 = *(v1 + 96);
  v26 = *(v1 + 25);
  v21 = *(v1 + 88);
  v2 = *(v1 + 80);
  v3 = *(v1 + 72);
  v23 = *(v1 + 64);
  v22 = *(v1 + 56);
  v20 = *(v1 + 48);
  v4 = objc_allocWithZone(MLModel);
  v20[2] = [v4 init];
  v24 = type metadata accessor for MLHandActionClassifier(0);
  v5 = (v20 + v24[8]);
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v2);
  v19 = *(v3 + 8);
  v19(v2, v23);
  *v5 = 0;
  v25 = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload(v5, v25, 1);
  v6 = (v20 + v24[9]);
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v2);
  v19(v2, v23);
  *v6 = 0;
  swift_storeEnumTagMultiPayload(v6, v25, 1);
  outlined init with copy of MLTrainingSessionParameters(v22, v20 + v24[7], type metadata accessor for MLHandActionClassifier.ModelParameters);
  outlined copy of Result<_DataTable, Error>(v21, v26);
  v7._countAndFlagsBits = 0x6C6562616CLL;
  v7._object = 0xE500000000000000;
  specialized MLDataTable.subscript.getter(v7, v21, v26);
  outlined consume of Result<_DataTable, Error>(v21, v26);
  specialized MLDataColumn.dropDuplicates()(v14, v15);
  outlined consume of Result<_DataTable, Error>(v14, v15);
  MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v16, v17, a1);
  *v20 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
  v9 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *(v1 + 104) = v9;
  v10 = *(v22 + *(v9 + 28));
  *(v1 + 112) = v10;
  v11 = type metadata accessor for MLHandActionClassifier.GraphCNN(0);
  swift_allocObject(v11, *(v11 + 48), *(v11 + 52));

  v20[1] = MLHandActionClassifier.GraphCNN.init(classLabels:export:numOfKeypoints:numOfKeypointsChannels:windowSize:)(MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5, 0, 21, 3, v10);
  *(v1 + 16) = v21;
  *(v1 + 24) = v26;
  *(v1 + 32) = v18;
  *(v1 + 40) = v27;
  v12 = swift_task_alloc(304);
  *(v1 + 120) = v12;
  *v12 = v1;
  v12[1] = MLHandActionClassifier.init(trainingFeatures:validationFeatures:parameters:);
  return MLHandActionClassifier.runTrainingLoop(trainingData:validationData:loadPretrain:)(v1 + 16, v1 + 32);
}

uint64_t MLHandActionClassifier.init(trainingFeatures:validationFeatures:parameters:)()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(v5 + 128) = v0;
  v2;
  outlined consume of MLDataTable?(*(v5 + 32), *(v5 + 40));
  if (v0)
  {
    v3 = MLHandActionClassifier.init(trainingFeatures:validationFeatures:parameters:);
  }

  else
  {
    v3 = MLHandActionClassifier.init(trainingFeatures:validationFeatures:parameters:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = AnalyticsReporter.init()();
  v2 = *(v0 + 25);
  v3 = *(v0 + 88);
  if (v1)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 56), type metadata accessor for MLHandActionClassifier.ModelParameters);
    outlined consume of Result<_DataTable, Error>(v3, v2);
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(v3, v2);
    v14 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v3, v2 & 1);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_handActionClassifier, __PAIR128__(("nClassifier.swift" + 0x8000000000000000), 0xD000000000000010), v14);
    v4._countAndFlagsBits = 0x6C6562616CLL;
    v4._object = 0xE500000000000000;
    MLDataTable.subscript.getter(v4);
    outlined consume of Result<_DataTable, Error>(v3, v2 & 1);
    MLUntypedColumn.dropDuplicates()();
    outlined consume of Result<_DataTable, Error>(v10, v11);
    if (v13)
    {
      outlined consume of Result<_DataTable, Error>(v12, 1);
      v5 = -1.0;
    }

    else
    {

      v6 = CMLColumn.size.getter();
      outlined consume of Result<_DataTable, Error>(v12, 0);
      outlined consume of Result<_DataTable, Error>(v12, 0);
      v5 = v6;
    }

    v7 = *(v0 + 56);
    v8 = *(v0 + 104);
    v15 = *(v0 + 112);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_handActionClassifier, __PAIR128__(("Number of Annotations" + 0x8000000000000000), 0xD000000000000010), v5);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_handActionClassifier, __PAIR128__(0xEE00736E6F697461, 0x726574492078614DLL), *(v7 + *(v8 + 24)));
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_handActionClassifier, __PAIR128__(("Number of Labels" + 0x8000000000000000), 0xD000000000000016), v15);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_handActionClassifier, __PAIR128__(0xEA0000000000657ALL, 0x6953206863746142), *(v7 + *(v8 + 20)));
    outlined destroy of MLActivityClassifier.ModelParameters(v7, type metadata accessor for MLHandActionClassifier.ModelParameters);
  }

  *(v0 + 80);
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  v3 = *(v0 + 48);
  v4 = *(v0 + 25);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 56), type metadata accessor for MLHandActionClassifier.ModelParameters);
  outlined consume of Result<_DataTable, Error>(v1, v4);
  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLHandActionClassifier);
  v2;
  return (*(v0 + 8))();
}

uint64_t MLHandActionClassifier.evaluation(on:parameters:)(uint64_t *a1, uint64_t a2, double a3)
{
  v40 = v4;
  v30 = a2;
  v37 = v3;
  v31 = type metadata accessor for LearningPhase(0);
  v32 = *(v31 - 8);
  v6 = *(v32 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v33 = &v27;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[(label: Int, keypoints: MLMultiArray)], DataSample<Tensor, Tensor>>);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v38 = &v27;
  v14 = *(a1 + 8);
  v27 = *a1;
  v28 = v14;
  v29 = v5;
  v15 = *v5;
  v16 = v40;
  v17 = static MLHandActionClassifier.makeLabeledKeypointsSequenceFeatures(from:classLabels:)(&v27, v15, a3);
  if (v16)
  {
    goto LABEL_4;
  }

  v39 = v9;
  v40 = v10;
  v36 = v15;
  v35 = v15[2];
  v18 = v17;
  v19 = v33;
  v20 = v31;
  v34 = 0;
  v21 = v32;
  (*(v32 + 104))(v33, enum case for LearningPhase.inference(_:), v31);
  _s8CreateML22MLHandActionClassifierV11makeDataset4from16classLabelsCount10parameters13learningPhase14NeuralNetworks0G0VySaySi5label_So12MLMultiArrayC9keypointstGAI10DataSampleVyAI6TensorVATGGx_SiAC15ModelParametersVAI08LearningN0OtSkRzSiAL_AnOt7ElementRtzlFZAP_Tt4g5(v18, v35, v30, v19);
  (*(v21 + 8))(v19, v20);
  v18;
  v22 = v38;
  v16 = v34;
  v23 = MLHandActionClassifier.GraphCNN.evaluate(_:)(v38);
  if (v16)
  {
    (*(v40 + 8))(v22, v39);
LABEL_4:
    v24 = v37;
    *v37 = v16;
    v25 = type metadata accessor for MLClassifierMetrics.Contents(0);
    return swift_storeEnumTagMultiPayload(v24, v25, 2);
  }

  static _MetricUtilities.makeClassifierMetrics(confusionMeter:classLabels:supplementMissingClassLabels:)(v23, v36, 0);
  (*(v40 + 8))(v22, v39);
}

void *MLHandActionClassifier.write(to:metadata:)(uint64_t a1, const void *a2)
{
  v19 = v2;
  v4 = type metadata accessor for URL(0);
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v18 = &v15;
  v21 = v3;
  MLHandActionClassifier.addHandActionClassifierSpecificMetadata(_:)(a2);
  v20 = a1;
  v8 = URL.pathExtension.getter();
  v10 = v9;
  if (v8 ^ 0x67616B6361706C6DLL | v9 ^ 0xE900000000000065)
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)(v8, v9, 0x67616B6361706C6DLL, 0xE900000000000065, 0);
    v10;
    if ((v11 & 1) == 0)
    {
      qmemcpy(v16, v17, sizeof(v16));
      MLHandActionClassifier.writeLegacyModel(to:metadata:)(v20, v16);
      return outlined release of MLModelMetadata?(v17, outlined consume of MLModelMetadata?);
    }
  }

  else
  {
    v9;
  }

  v12 = v18;
  v13 = v19;
  static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(v20, 0xD000000000000014, ("HandPoseClassifier" + 0x8000000000000000), 0x67616B6361706C6DLL, 0xE900000000000065);
  if (!v13)
  {
    qmemcpy(v16, v17, sizeof(v16));
    MLHandActionClassifier.GraphCNN.writeMLPackage(to:metadata:)(v12, v16);
    (*(v22 + 8))(v12, v4);
  }

  return outlined release of MLModelMetadata?(v17, outlined consume of MLModelMetadata?);
}

uint64_t static MLHandActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = v3;
  v5 = *(a1 + 8);
  v38 = *a1;
  v39 = v5;
  v36 = a2;
  v6._countAndFlagsBits = a2;
  *&v34 = a3;
  v6._object = a3;
  MLDataTable.subscript.getter(v6);
  if (LOBYTE(v37._object) == 1)
  {
    outlined consume of Result<_DataTable, Error>(v37._countAndFlagsBits, 1);
  }

  else
  {

    _UntypedColumn.type.getter();
    outlined consume of Result<_DataTable, Error>(v37._countAndFlagsBits, 0);
    outlined consume of Result<_DataTable, Error>(v37._countAndFlagsBits, 0);
    if (v38 == 3)
    {
      v7 = *(a1 + 8);
      v37._countAndFlagsBits = *a1;
      LOBYTE(v37._object) = v7;
      v8._countAndFlagsBits = v36;
      v8._object = v34;
      MLDataTable.subscript.getter(v8);
      specialized MLUntypedColumn.map<A>(skipUndefined:_:)(1, partial apply for closure #1 in static MLHandActionClassifier.reformatKeypointsDataTable(table:featureColumn:), 0, v38, v39);
      outlined consume of Result<_DataTable, Error>(v38, v39);
      countAndFlagsBits = v37._countAndFlagsBits;
      LOBYTE(v40) = v37._object;
      v9 = *(a1 + 8);
      v38 = *a1;
      v39 = v9;
      v8._countAndFlagsBits = v36;
      v8._object = v34;
      MLDataTable.subscript.getter(v8);
      v10 = -1;
      v33 = -1;
      if (!LOBYTE(v37._object))
      {

        v10 = CMLColumn.size.getter();
        outlined consume of Result<_DataTable, Error>(v37._countAndFlagsBits, 0);
      }

      outlined consume of Result<_DataTable, Error>(v37._countAndFlagsBits, v37._object);
      v40 = v40;
      specialized MLDataColumn.dropMissing()(countAndFlagsBits, v40);
      if (!v39)
      {
        v32 = v10;
        outlined copy of Result<_DataTable, Error>(v38, 0);
        v33 = CMLColumn.size.getter();
        outlined consume of Result<_DataTable, Error>(v38, 0);
      }

      outlined consume of Result<_DataTable, Error>(v38, v39);
      v11 = __OFSUB__(v10, v33);
      v12 = v10 - v33;
      if (v11)
      {
        BUG();
      }

      if (v12)
      {
        v37._countAndFlagsBits = 0;
        v37._object = 0xE000000000000000;
        _StringGuts.grow(_:)(236);
        v13._object = "validation_confusion" + 0x8000000000000000;
        v13._countAndFlagsBits = 0xD00000000000003DLL;
        String.append(_:)(v13);
        v14 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v16 = v15;
        v13._countAndFlagsBits = v14;
        v13._object = v15;
        String.append(_:)(v13);
        v16;
        v13._object = "mn into MLMultiArray format. " + 0x8000000000000000;
        v13._countAndFlagsBits = 0xD00000000000006BLL;
        String.append(_:)(v13);
        v17 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v19 = v18;
        v13._countAndFlagsBits = v17;
        v13._object = v18;
        String.append(_:)(v13);
        v19;
        v13._object = 0xE200000000000000;
        v13._countAndFlagsBits = 8236;
        String.append(_:)(v13);
        v38 = 21;
        v20 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v22 = v21;
        v13._countAndFlagsBits = v20;
        v13._object = v21;
        String.append(_:)(v13);
        v22;
        v13._object = "ld have a dimension of [1, " + 0x8000000000000000;
        v13._countAndFlagsBits = 0xD00000000000003CLL;
        String.append(_:)(v13);
        v23 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v23, 0, 0);
        *v24 = v37;
        *(v24 + 16) = 0;
        *(v24 + 32) = 0;
        *(v24 + 48) = 0;
        swift_willThrow();
        return outlined consume of Result<_DataTable, Error>(countAndFlagsBits, v40);
      }

      specialized MLDataTable.subscript.setter(countAndFlagsBits, v40, v36, v34);
    }
  }

  v27 = *(a1 + 8);
  v37._countAndFlagsBits = *a1;
  v26 = v37._countAndFlagsBits;
  LOBYTE(v37._object) = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v28, v30);
  inited[2] = 1;
  inited[3] = 2;
  inited[4] = v36;
  inited[5] = v34;
  LOBYTE(v38) = 5;

  outlined copy of Result<_DataTable, Error>(v26, v27);
  static _ValidationUtilities.validateTableTypes(table:columns:type:)(&v37, inited, &v38);
  outlined consume of Result<_DataTable, Error>(v37._countAndFlagsBits, v37._object);
  swift_setDeallocating(inited);
  return specialized _ContiguousArrayStorage.__deallocating_deinit();
}

uint64_t static MLHandActionClassifier._defaultSessionParameters.getter()
{
  v1 = v0;
  if (one-time initialization token for _defaultSessionParameters != -1)
  {
    swift_once(&one-time initialization token for _defaultSessionParameters, one-time initialization function for _defaultSessionParameters);
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  v3 = __swift_project_value_buffer(v2, static MLHandActionClassifier._defaultSessionParameters);
  return outlined init with copy of MLTrainingSessionParameters(v3, v1, type metadata accessor for MLTrainingSessionParameters);
}

uint64_t MLHandActionClassifier.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLHandActionClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 28), v2, type metadata accessor for MLHandActionClassifier.ModelParameters);
}

uint64_t MLHandActionClassifier.trainingMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLHandActionClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 32), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLHandActionClassifier.validationMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLHandActionClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 36), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLHandActionClassifier.Prediction.results.setter(uint64_t a1)
{
  result = *(v1 + 16);
  *(v1 + 16) = a1;
  return result;
}

uint64_t MLHandActionClassifier.init(trainingData:parameters:)(uint64_t a1, uint64_t a2, __m128 a3)
{
  v85 = v4;
  v84 = a2;
  v76 = a1;
  v5 = v3;
  v82 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v66 = *(v82 - 8);
  v65 = *(v66 + 64);
  v6 = alloca(v65);
  v7 = alloca(v65);
  v70 = &v64;
  v8 = type metadata accessor for MLHandActionClassifier(0);
  v9 = *(v8 - 8);
  v10 = v8;
  v80 = v8;
  v11 = *(v9 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v64 = &v64;
  v67 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  v14 = *(*(v67 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v75 = &v64;
  v17 = *(*(type metadata accessor for MLHandActionClassifier.DataSource(0) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v68 = &v64;
  v83 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v73 = *(v83 - 8);
  v20 = *(v73 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  *v5 = _swiftEmptyArrayStorage;
  v23 = objc_allocWithZone(MLModel);
  v24 = [v23 init];
  v69 = v5;
  v77 = v24;
  v5[2] = v24;
  v25 = *(v10 + 32);
  v26 = v5 + v25;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v81 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v64);
  v78 = *(v73 + 8);
  v78(&v64, v83);
  v27 = v69;
  *(v69 + v25) = 0;
  v79 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v73 = v26;
  swift_storeEnumTagMultiPayload(v26, v79, 1);
  v28 = *(v80 + 36);
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v64);
  v29 = v76;
  v78(&v64, v83);
  *(v69 + v28) = 0;
  v83 = v27 + v28;
  v30 = v84;
  swift_storeEnumTagMultiPayload(v83, v79, 1);
  v31 = v85;
  MLHandActionClassifier.ModelParameters.ValidationData.extractAnnotations(trainingData:)(&v86, &v71, a3);
  if (v31)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v30, type metadata accessor for MLHandActionClassifier.ModelParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v29, type metadata accessor for MLHandActionClassifier.DataSource);
LABEL_10:

    v41 = v83;
LABEL_11:
    outlined destroy of MLActivityClassifier.ModelParameters(v73, type metadata accessor for MLClassifierMetrics);
    return outlined destroy of MLActivityClassifier.ModelParameters(v41, type metadata accessor for MLClassifierMetrics);
  }

  v85 = 0;
  v32 = v86;
  v80 = v71;
  LOBYTE(v78) = v72;
  v33 = v87;
  v79 = v86;
  if (v87 == 0xFF)
  {
    LODWORD(v81) = v87;
    v37 = v85;
    MLHandActionClassifier.DataSource.keypointsWithAnnotations(targetFrameRate:)(0x403E000000000000uLL);
    v35 = v37;
  }

  else
  {
    type metadata accessor for MLHandActionClassifier.FeatureExtractor();
    v71 = v32;
    v72 = v33 & 1;
    v81 = *(v84 + *(v82 + 40));
    outlined copy of Result<_DataTable, Error>(v32, v33);
    v34 = v85;
    static MLHandActionClassifier.FeatureExtractor.extractFeatures(from:targetFrameRate:startingSessionId:)(&v71, 0, *&v81);
    v35 = v34;
    if (v34)
    {
      outlined consume of MLDataTable?(v80, v78);
      v36 = v79;
      outlined consume of MLDataTable?(v79, v33);
      outlined destroy of MLActivityClassifier.ModelParameters(v84, type metadata accessor for MLHandActionClassifier.ModelParameters);
      outlined destroy of MLActivityClassifier.ModelParameters(v76, type metadata accessor for MLHandActionClassifier.DataSource);
      outlined consume of MLDataTable?(v36, v33);
      goto LABEL_10;
    }

    LODWORD(v81) = v33;
    outlined consume of MLDataTable?(v79, v33);
  }

  v88 = v87;
  v38 = v78;
  v74 = v86;
  if (v78 == 0xFF)
  {
    v40 = v84;
    v43 = v75;
    outlined init with copy of MLTrainingSessionParameters(v84, v75, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
    if (swift_getEnumCaseMultiPayload(v43, v67) == 1)
    {
      v44 = v68;
      outlined init with take of MLClassifierMetrics(v43, v68, type metadata accessor for MLHandActionClassifier.DataSource);
      MLHandActionClassifier.DataSource.keypointsWithAnnotations(targetFrameRate:)(0x403E000000000000uLL);
      v85 = 0;
      outlined destroy of MLActivityClassifier.ModelParameters(v44, type metadata accessor for MLHandActionClassifier.DataSource);
      v51 = v86;
      v82 = v86;
      LOBYTE(v51) = v87;
      v75 = v51;
      v40 = v84;
    }

    else
    {
      v85 = v35;
      outlined destroy of MLActivityClassifier.ModelParameters(v43, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
      empty = tc_v1_sframe_create_empty(0);
      if (!empty)
      {
        BUG();
      }

      v47 = empty;
      v75 = 0;
      v48 = type metadata accessor for CMLTable();
      v49 = swift_allocObject(v48, 24, 7);
      *(v49 + 16) = v47;
      v50 = type metadata accessor for _DataTable();
      swift_allocObject(v50, 40, 7);
      v82 = _DataTable.init(impl:)(v49);
    }
  }

  else
  {
    v39 = v80;
    type metadata accessor for MLHandActionClassifier.FeatureExtractor();
    v71 = v39;
    v72 = v38 & 1;
    v40 = v84;
    static MLHandActionClassifier.FeatureExtractor.extractFeatures(from:targetFrameRate:startingSessionId:)(&v71, 0, *(v84 + *(v82 + 40)));
    v85 = 0;
    v45 = v86;
    v82 = v86;
    LOBYTE(v45) = v87;
    v75 = v45;
  }

  v52 = v70;
  outlined init with copy of MLTrainingSessionParameters(v40, v70, type metadata accessor for MLHandActionClassifier.ModelParameters);
  v53 = *(v66 + 80);
  v54 = ~*(v66 + 80) & (v53 + 41);
  v55 = v52;
  v56 = swift_allocObject(&unk_3929F8, v54 + v65, v53 | 7);
  v57 = v74;
  *(v56 + 16) = v74;
  v58 = v88;
  *(v56 + 24) = v88 & 1;
  *(v56 + 32) = v82;
  *(v56 + 40) = v75 & 1;
  outlined init with take of MLClassifierMetrics(v55, v56 + v54, type metadata accessor for MLHandActionClassifier.ModelParameters);
  v59 = v57;
  v60 = v58;
  outlined copy of Result<_DataTable, Error>(v59, v58);
  v61 = v75;
  outlined copy of Result<_DataTable, Error>(v82, v75);
  v62 = v64;
  v63 = v85;
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLHandActionClassifier.init(trainingData:parameters:), v56);
  v85 = v63;
  if (v63)
  {

    outlined consume of MLDataTable?(v80, v78);
    outlined consume of MLDataTable?(v79, v81);
    outlined consume of Result<_DataTable, Error>(v82, v61);
    outlined consume of Result<_DataTable, Error>(v74, v60);
    outlined destroy of MLActivityClassifier.ModelParameters(v84, type metadata accessor for MLHandActionClassifier.ModelParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v76, type metadata accessor for MLHandActionClassifier.DataSource);

    v41 = v83;
    goto LABEL_11;
  }

  outlined consume of MLDataTable?(v80, v78);
  outlined consume of MLDataTable?(v79, v81);
  outlined consume of Result<_DataTable, Error>(v82, v61);
  outlined consume of Result<_DataTable, Error>(v74, v60);
  outlined destroy of MLActivityClassifier.ModelParameters(v84, type metadata accessor for MLHandActionClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v76, type metadata accessor for MLHandActionClassifier.DataSource);

  outlined destroy of MLActivityClassifier.ModelParameters(v73, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v83, type metadata accessor for MLClassifierMetrics);
  return outlined init with take of MLClassifierMetrics(v62, v69, type metadata accessor for MLHandActionClassifier);
}

uint64_t closure #1 in MLHandActionClassifier.init(trainingData:parameters:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 72) = a6;
  *(v6 + 26) = a5;
  *(v6 + 64) = a4;
  *(v6 + 25) = a3;
  *(v6 + 56) = a2;
  *(v6 + 48) = a1;
  v10 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *(v6 + 80) = swift_task_alloc((*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined copy of Result<_DataTable, Error>(a2, a3);
  outlined copy of Result<_DataTable, Error>(a4, a5);
  return swift_task_switch(closure #1 in MLHandActionClassifier.init(trainingData:parameters:), 0, 0);
}

uint64_t closure #1 in MLHandActionClassifier.init(trainingData:parameters:)()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 72);
  v3 = *(v0 + 25);
  v4 = *(v0 + 26);
  v5 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 24) = v3 & 1;
  *(v0 + 32) = v5;
  *(v0 + 40) = v4 & 1;
  outlined init with copy of MLTrainingSessionParameters(v2, v1, type metadata accessor for MLHandActionClassifier.ModelParameters);
  v6 = swift_task_alloc(144);
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = closure #1 in MLHandPoseClassifier.init(trainingData:parameters:);
  return MLHandActionClassifier.init(trainingFeatures:validationFeatures:parameters:)(*(v0 + 48), v0 + 16, v0 + 32, *(v0 + 80));
}

uint64_t MLHandActionClassifier.init(model:parameters:metricsAttributes:classLabels:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v45 = a3;
  v6 = v4;
  v48 = a2;
  v39 = v5;
  v49 = a1;
  v7 = *(*(type metadata accessor for MLClassifierMetrics(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v43 = &v35;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v40 = &v35;
  v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v52 = *(v47 - 8);
  v12 = *(v52 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v15 = objc_allocWithZone(MLModel);
  v16 = [v15 init];
  v42 = v6;
  v6[2] = v16;
  v50 = type metadata accessor for MLHandActionClassifier(0);
  v17 = v50[8];
  v18 = v6 + v17;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v38 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v35);
  v52 = *(v52 + 8);
  (v52)(&v35, v47);
  v19 = v42;
  *(v42 + v17) = 0;
  v46 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v41 = v18;
  swift_storeEnumTagMultiPayload(v18, v46, 1);
  v20 = v50[9];
  v21 = v19 + v20;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v35);
  v22 = v42;
  (v52)(&v35, v47);
  *(v22 + v20) = 0;
  v23 = v51;
  v47 = v21;
  swift_storeEnumTagMultiPayload(v21, v46, 1);
  v22[1] = v49;
  outlined init with copy of MLTrainingSessionParameters(v48, v22 + v50[7], type metadata accessor for MLHandActionClassifier.ModelParameters);
  *v22 = v23;

  v24 = v45;
  specialized Dictionary.subscript.getter(0xD000000000000012, ("oseClassifier.swift" + 0x8000000000000000), v45);
  if (!v37)
  {
    v23;
    v24;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, &demangling cache variable for type metadata for Any?);
LABEL_7:
    v29 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v29, 0, 0);
    *v30 = 0xD00000000000002CLL;
    *(v30 + 8) = "training_confusion" + 0x8000000000000000;
    *(v30 + 16) = 0;
    *(v30 + 32) = 0;
    *(v30 + 48) = 0;
    swift_willThrow();

    outlined destroy of MLActivityClassifier.ModelParameters(v48, type metadata accessor for MLHandActionClassifier.ModelParameters);
    return outlined destroy of MLActivityClassifier.ModelParameters(v22, type metadata accessor for MLHandActionClassifier);
  }

  v25 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
  if (!swift_dynamicCast(&v44, v36, &type metadata for Any + 8, v25, 6))
  {
    v51;
    v24;
    goto LABEL_7;
  }

  v46 = v25;
  v26 = v40;
  v52 = v44;
  v27 = v51;
  v28 = v39;
  static _MetricUtilities.makeClassifierMetrics(confusionMeter:classLabels:supplementMissingClassLabels:)(v44, v51, 0);
  v50 = v28;
  if (v28)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v48, type metadata accessor for MLHandActionClassifier.ModelParameters);

    v45;
    v27;

    return outlined destroy of MLActivityClassifier.ModelParameters(v22, type metadata accessor for MLHandActionClassifier);
  }

  outlined assign with take of MLClassifierMetrics(v26, v41);
  v32 = v45;
  specialized Dictionary.subscript.getter(0xD000000000000014, ("ve training confusion matrix" + 0x8000000000000000), v45);
  v32;
  if (!v37)
  {

    v51;

    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, &demangling cache variable for type metadata for Any?);
    return outlined destroy of MLActivityClassifier.ModelParameters(v48, type metadata accessor for MLHandActionClassifier.ModelParameters);
  }

  if (!swift_dynamicCast(&v44, v36, &type metadata for Any + 8, v46, 6))
  {

    v51;

    return outlined destroy of MLActivityClassifier.ModelParameters(v48, type metadata accessor for MLHandActionClassifier.ModelParameters);
  }

  v33 = v51;
  v34 = v50;
  static _MetricUtilities.makeClassifierMetrics(confusionMeter:classLabels:supplementMissingClassLabels:)(v44, v51, 0);
  outlined destroy of MLActivityClassifier.ModelParameters(v48, type metadata accessor for MLHandActionClassifier.ModelParameters);

  v33;

  if (v34)
  {
    return outlined destroy of MLActivityClassifier.ModelParameters(v22, type metadata accessor for MLHandActionClassifier);
  }

  return outlined assign with take of MLClassifierMetrics(v43, v47);
}

void *MLHandActionClassifier.init(checkpoint:)(uint64_t a1, __m128 a2)
{
  v78._countAndFlagsBits = v3;
  v67 = a1;
  v4 = v2;
  v64 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v5 = *(*(v64 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v77 = &v59;
  v65 = type metadata accessor for MLHandActionClassifier.PersistentParameters(0);
  v8 = *(*(v65 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v74 = &v59;
  v68 = type metadata accessor for URL(0);
  v73 = *(v68 - 8);
  v11 = *(v73 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v69 = &v59;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v71 = &v59;
  v79 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v75 = *(v79 - 8);
  v16 = *(v75 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v78._object = v4;
  *v4 = _swiftEmptyArrayStorage;
  v19 = objc_allocWithZone(MLModel);
  v72 = [v19 init];
  v20 = type metadata accessor for MLHandActionClassifier(0);
  v76 = *(v20 + 32);
  v21 = v4 + v76;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v70 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v59);
  v75 = *(v75 + 8);
  (v75)(&v59, v79);
  object = v78._object;
  *(v78._object + v76) = 0;
  v76 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v63 = v21;
  swift_storeEnumTagMultiPayload(v21, v76, 1);
  v66 = v20;
  v23 = *(v20 + 36);
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v59);
  (v75)(&v59, v79);
  *(v78._object + v23) = 0;
  v75 = object + v23;
  v24 = object + v23;
  v25 = v71;
  v26 = v67;
  swift_storeEnumTagMultiPayload(v24, v76, 1);
  URL.deletingLastPathComponent()(v24);
  v27 = v68;
  v28 = v69;
  (*(v73 + 16))(v69, v25, v68);
  countAndFlagsBits = v78._countAndFlagsBits;
  MLHandActionClassifier.PersistentParameters.init(sessionDirectory:)(v28);
  v79 = countAndFlagsBits;
  if (countAndFlagsBits)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v26, type metadata accessor for MLCheckpoint);
    (*(v73 + 8))(v25, v27);
LABEL_3:

    goto LABEL_12;
  }

  v30 = v27;
  v31 = v74;
  v32 = v77;
  outlined init with copy of MLTrainingSessionParameters(v74, v77, type metadata accessor for MLHandActionClassifier.DataSource);
  if (swift_getEnumCaseMultiPayload(v32, v64) == 3)
  {
    v33 = *(v32 + 8);
    v34 = *v32;
    v35 = *(v32 + 24);
    v78._countAndFlagsBits = *(v32 + 32);
    v36 = *(v32 + 40);
    v37 = *(v32 + 56);
    v35;
    v37;
    outlined copy of Result<_DataTable, Error>(v34, v33);
    v38._countAndFlagsBits = v78._countAndFlagsBits;
    v38._object = v36;
    specialized MLDataTable.subscript.getter(v38, v34, v33);
    v36;
    outlined consume of Result<_DataTable, Error>(v34, v33);
    v39 = v59;
    LOBYTE(v37) = v60;
    specialized MLDataColumn.dropDuplicates()(v59, v60);
    outlined consume of Result<_DataTable, Error>(v39, v37);
    v78._countAndFlagsBits = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v61, v62, *a2.i64);
    outlined consume of Result<_DataTable, Error>(v34, v33);
    v40 = v78._object;
  }

  else
  {
    v41 = v79;
    v42 = static _VideoUtilities.videoURLsPerClass(from:)(v31, a2);
    v79 = v41;
    v40 = v78._object;
    if (v41)
    {
      outlined destroy of MLActivityClassifier.ModelParameters(v67, type metadata accessor for MLCheckpoint);
      outlined destroy of MLActivityClassifier.ModelParameters(v31, type metadata accessor for MLHandActionClassifier.PersistentParameters);
      (*(v73 + 8))(v71, v30);
      outlined destroy of MLActivityClassifier.ModelParameters(v77, type metadata accessor for MLHandActionClassifier.DataSource);
      goto LABEL_3;
    }

    v43 = v42;
    v78._countAndFlagsBits = specialized _copyCollectionToContiguousArray<A>(_:)(v42);
    v43;
    outlined destroy of MLActivityClassifier.ModelParameters(v77, type metadata accessor for MLHandActionClassifier.DataSource);
  }

  v44 = v40 + *(v66 + 28);
  v45 = v65;
  v46 = v74;
  outlined init with copy of MLTrainingSessionParameters(v74 + *(v65 + 20), v44, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
  v69 = *(v46 + v45[6]);
  v76 = *(v46 + v45[7]);
  v47 = *(v46 + v45[8]);
  v70 = *(v46 + v45[10]);
  v77 = *(v46 + v45[9]);
  v48 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *(v48[5] + v44) = v69;
  *(v48[6] + v44) = v76;
  *(v48[7] + v44) = v47;
  *(v48[8] + v44) = v70;
  *(v48[10] + v44) = v77;
  v49 = type metadata accessor for MLHandActionClassifier.GraphCNN(0);
  swift_allocObject(v49, *(v49 + 48), *(v49 + 52));
  v50 = MLHandActionClassifier.GraphCNN.init(classLabels:export:numOfKeypoints:numOfKeypointsChannels:windowSize:)(v78._countAndFlagsBits, 0, 21, 3, v47);
  v51 = v67;
  v52 = v79;
  MLHandActionClassifier.GraphCNN.updateGraphCNN(from:)(v67);
  if (!v52)
  {

    specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLHandActionClassifier.init(checkpoint:), v50);
    v79 = 0;
    v55 = v73;
    v57 = v56;

    outlined destroy of MLActivityClassifier.ModelParameters(v51, type metadata accessor for MLCheckpoint);
    outlined destroy of MLActivityClassifier.ModelParameters(v74, type metadata accessor for MLHandActionClassifier.PersistentParameters);
    (*(v55 + 8))(v71, v68);

    result = v78._object;
    *(v78._object + 2) = v57;
    result[1] = v50;
    return result;
  }

  v79 = v52;
  v53 = v78._object;
  v54 = v73;

  outlined destroy of MLActivityClassifier.ModelParameters(v51, type metadata accessor for MLCheckpoint);
  outlined destroy of MLActivityClassifier.ModelParameters(v74, type metadata accessor for MLHandActionClassifier.PersistentParameters);
  (*(v54 + 8))(v71, v68);

  outlined destroy of MLActivityClassifier.ModelParameters(v53 + *(v66 + 28), type metadata accessor for MLHandActionClassifier.ModelParameters);
LABEL_12:
  outlined destroy of MLActivityClassifier.ModelParameters(v63, type metadata accessor for MLClassifierMetrics);
  return outlined destroy of MLActivityClassifier.ModelParameters(v75, type metadata accessor for MLClassifierMetrics);
}

uint64_t closure #1 in MLHandActionClassifier.init(checkpoint:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc(80);
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #1 in MLRandomForestRegressor.init(checkpoint:);
  return MLHandActionClassifier.GraphCNN.compile()();
}

void *static MLHandActionClassifier.train(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = static MLHandActionClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(a1, a2, a3);
  if (!v3)
  {
    v5 = result;
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLHandActionClassifier>);
    v7 = swift_allocObject(v6, *(v6 + 48), *(v6 + 52));
    return specialized MLJob.init(_:)(v7, v5);
  }

  return result;
}

uint64_t static MLHandActionClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = v3;
  v26 = a2;
  v24 = a1;
  v5 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v25 = &v21;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v10 = *(*(type metadata accessor for MLHandActionClassifier.ModelParameters(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = *(*(type metadata accessor for MLHandActionClassifier.DataSource(0) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  outlined init with copy of MLTrainingSessionParameters(v24, &v21, type metadata accessor for MLHandActionClassifier.DataSource);
  outlined init with copy of MLTrainingSessionParameters(v26, &v21, type metadata accessor for MLHandActionClassifier.ModelParameters);
  v26 = a3;
  outlined init with copy of MLTrainingSessionParameters(a3, &v21, type metadata accessor for MLTrainingSessionParameters);
  v16 = type metadata accessor for HandActionClassifierTrainingSessionDelegate(0);
  swift_allocObject(v16, *(v16 + 48), *(v16 + 52));
  v17 = v23;
  result = HandActionClassifierTrainingSessionDelegate.init(trainingData:modelParameters:sessionParameters:)(&v21, &v21, &v21);
  if (!v17)
  {
    v22[3] = v16;
    v22[4] = &protocol witness table for HandActionClassifierTrainingSessionDelegate;
    v22[0] = result;
    v19 = v25;
    outlined init with copy of MLTrainingSessionParameters(v26, v25, type metadata accessor for MLTrainingSessionParameters);
    v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>);
    swift_allocObject(v20, *(v20 + 48), *(v20 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v22, v19, 25);
  }

  return result;
}

void *static MLHandActionClassifier.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLHandActionClassifier>);
  v2 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));

  return specialized MLJob.init(_:)(v2, a1);
}

uint64_t static MLHandActionClassifier.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v2 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v12 = v11;
  v5 = alloca(v2);
  v6 = alloca(v2);
  outlined init with copy of MLTrainingSessionParameters(a1, v11, type metadata accessor for MLTrainingSessionParameters);
  v7 = type metadata accessor for HandActionClassifierTrainingSessionDelegate(0);
  swift_allocObject(v7, *(v7 + 48), *(v7 + 52));
  result = HandActionClassifierTrainingSessionDelegate.init(sessionParameters:)(v11);
  if (!v1)
  {
    v11[3] = v7;
    v11[4] = &protocol witness table for HandActionClassifierTrainingSessionDelegate;
    v11[0] = result;
    v9 = v12;
    outlined init with copy of MLTrainingSessionParameters(a1, v12, type metadata accessor for MLTrainingSessionParameters);
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>);
    swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v11, v9, 25);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static MLHandActionClassifier.resume(_:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v56 = a5;
  v55 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLHandActionClassifier, Error>);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = &v43;
  v50 = type metadata accessor for MLHandActionClassifier.PersistentParameters(0);
  v11 = *(*(v50 - 1) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v52 = &v43;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v51 = &v43;
  v17 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v21 = alloca(v18);
  v22 = alloca(v18);
  if (a2)
  {
    v43 = a1;
    swift_storeEnumTagMultiPayload(&v43, v6, 1);
    swift_errorRetain(a1);
    v55(&v43);
    v23 = &demangling cache variable for type metadata for Result<MLHandActionClassifier, Error>;
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v23);
  }

  v53 = v17;
  v57 = &v43;
  v54 = &v43;
  outlined init with copy of TabularRegressionTask(direct field offset for MLTrainingSession.delegate + a3, v44);
  v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingSessionDelegate);
  v26 = type metadata accessor for HandActionClassifierTrainingSessionDelegate(0);
  result = swift_dynamicCast(&v49, v44, v25, v26, 6);
  if (result)
  {
    v27 = *(v49 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model);
    if (v27)
    {
      v59 = v49;
      v28 = v49 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
      swift_beginAccess(v49 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters, v44, 0, 0);
      v29 = v28;
      v10 = v51;
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v29, v51, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
      v30 = v50;
      if (__swift_getEnumTagSinglePayload(v10, 1, v50))
      {

        v23 = &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?;
        return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v23);
      }

      v31 = v52;
      outlined init with copy of MLTrainingSessionParameters(v10, v52, type metadata accessor for MLHandActionClassifier.PersistentParameters);
      v58 = v27;

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
      outlined init with copy of MLTrainingSessionParameters(v31 + v30[5], &v43, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
      v32 = *(v31 + v30[7]);
      v33 = *(v31 + v30[8]);
      v34 = *(v31 + v30[10]);
      v35 = *(v31 + v30[9]);
      v36 = v53;
      *&v44[v53[5] - 8] = *(v31 + v30[6]);
      *&v44[v36[6] - 8] = v32;
      *&v44[v36[7] - 8] = v33;
      *&v44[v36[8] - 8] = v34;
      *&v44[v36[10] - 8] = v35;
      outlined destroy of MLActivityClassifier.ModelParameters(v31, type metadata accessor for MLHandActionClassifier.PersistentParameters);
      v37 = v57;
      outlined init with take of MLClassifierMetrics(&v43, v57, type metadata accessor for MLHandActionClassifier.ModelParameters);
      v38 = *(v59 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels);
      if (v38)
      {
        v39 = alloca(48);
        v40 = alloca(48);
        v45 = v58;
        v46 = v37;
        v47 = v59;
        v48 = v38;

        v41 = v54;
        _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML22MLHandActionClassifierV_s5Error_pTt1g5(partial apply for closure #1 in closure #1 in closure #1 in static MLHandActionClassifier.resume(_:), &v43);
        v38;
        v55(v41);

        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v41, &demangling cache variable for type metadata for Result<MLHandActionClassifier, Error>);
        v42 = v57;
      }

      else
      {

        v42 = v37;
      }

      return outlined destroy of MLActivityClassifier.ModelParameters(v42, type metadata accessor for MLHandActionClassifier.ModelParameters);
    }

    else
    {
    }
  }

  return result;
}

void *closure #1 in closure #1 in closure #1 in static MLHandActionClassifier.resume(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = a5;
  v14[0] = v6;
  v15 = a3;
  v14[1] = v5;
  v8 = *(*(type metadata accessor for MLHandActionClassifier.ModelParameters(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  outlined init with copy of MLTrainingSessionParameters(a2, v14, type metadata accessor for MLHandActionClassifier.ModelParameters);
  v11 = *(v15 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_metricsAttributesDictionary);

  v12 = v14[0];
  result = MLHandActionClassifier.init(model:parameters:metricsAttributes:classLabels:)(a1, v14, v11, a4);
  if (v12)
  {
    result = v16;
    *v16 = v12;
  }

  return result;
}

uint64_t static MLHandActionClassifier.buildFeatureTable(features:labels:sessionIds:videoFiles:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v22 = a3;
  v20 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLUntypedColumn)>);
  inited = swift_initStackObject(v5, v15);
  *(inited + 16) = 4;
  *(inited + 24) = 8;
  *(inited + 32) = 0x746E696F7079656BLL;
  *(inited + 40) = 0xE900000000000073;
  v23 = a1;
  v16 = &v23;

  *(inited + 48) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  *(inited + 56) = v7 & 1;
  v23;
  *(inited + 64) = 0x6C6562616CLL;
  *(inited + 72) = 0xE500000000000000;
  v23 = a2;
  v17 = &v23;

  *(inited + 80) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  *(inited + 88) = v8 & 1;
  v23;
  *(inited + 96) = 0x5F6E6F6973736573;
  *(inited + 104) = 0xEA00000000006469;
  v23 = v22;
  v18 = &v23;

  *(inited + 112) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  *(inited + 120) = v9 & 1;
  v23;
  *(inited + 128) = 0x7461506F65646976;
  *(inited + 136) = 0xE900000000000068;
  v23 = v21;
  v19 = &v23;

  *(inited + 144) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
  *(inited + 152) = v10 & 1;
  v23;
  v11 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for MLUntypedColumn, &protocol witness table for String);
  _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(v11);
  result = v23;
  v13 = v24;
  v14 = v20;
  *v20 = v23;
  *(v14 + 8) = v13;
  return result;
}

void closure #1 in static MLHandActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(uint64_t a1)
{
  if (*(a1 + 16) == 3)
  {
    v2 = *a1;
    static MLHandActionClassifier.convertSequenceToMultiArray(value:)(&v2);
  }

  else
  {
    *v1 = 0;
  }
}

void static MLHandActionClassifier.convertSequenceToMultiArray(value:)(uint64_t *a1)
{
  v138 = v1;
  v2 = *a1;
  v134 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)(3);
  v3 = objc_allocWithZone(NSNumber);
  [v3 initWithInteger:1];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v3);
  v4 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v4);
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v4);
  specialized ContiguousArray._endMutation()(v4);
  v5 = objc_allocWithZone(NSNumber);
  [v5 initWithInteger:3];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v5);
  v6 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v6);
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v6);
  specialized ContiguousArray._endMutation()(v6);
  v7 = objc_allocWithZone(NSNumber);
  [v7 initWithInteger:21];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v7);
  v8 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v8);
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v8);
  specialized ContiguousArray._endMutation()(v8);
  objc_allocWithZone(MLMultiArray);
  v9 = @nonobjc MLMultiArray.init(shape:dataType:)(_swiftEmptyArrayStorage, 65600);
  if (!v9)
  {
    goto LABEL_67;
  }

  v10 = v9;
  v124 = UnsafeMutableBufferPointer.init(_:)(v10, &type metadata for Double);
  v140 = v10;

  v11 = CMLSequence.size.getter();
  v12 = specialized RandomAccessCollection<>.distance(from:to:)(0, v11);

  if (v12 != 1)
  {

LABEL_67:
    *v138 = 0;
    return;
  }

  v120[1] = v2;
  v13 = 0.0;
  v121 = 0;

LABEL_4:
  specialized EnumeratedSequence.Iterator.next()(v13);
  v14 = v134;
  v15 = v135;
  v16 = v136;
  v17 = v137;
  if (v137 == 3)
  {
    outlined copy of MLDataValue(v135, v136, 3u);
    outlined copy of MLDataValue(v15, v16, 3u);
    v133 = v15;
    v130 = v16;
    v18 = CMLSequence.size.getter();
    v16 = v130;
    v15 = v133;
    v19 = specialized RandomAccessCollection<>.distance(from:to:)(0, v18);
    v132 = v14;
    outlined consume of (offset: Int, element: MLDataValue)?(v14, v15, v16, 3);
    if (v19 == 3)
    {
      outlined copy of MLDataValue(v15, v16, 3u);
      v20 = 0;
      while (1)
      {
        if (v20 == CMLSequence.size.getter())
        {

          v104 = v132;
          v105 = v130;
          outlined consume of (offset: Int, element: MLDataValue)?(v132, v15, v130, 3);
          outlined consume of (offset: Int, element: MLDataValue)?(v104, v15, v105, 3);
          goto LABEL_4;
        }

        v22 = v20;
        v21 = CMLSequence.value(at:)(v20);
        MLDataValue.init(_:)(v21, v13);
        v23 = v134;
        v129 = v135;
        v24 = v136;
        v25 = CMLSequence.size.getter();
        v123 = v22;
        if (v22 >= v25)
        {
          BUG();
        }

        v26 = v129;
        if (v24 != 3)
        {
          break;
        }

        outlined copy of MLDataValue(v23, v129, 3u);
        outlined copy of MLDataValue(v23, v26, 3u);
        v27 = CMLSequence.size.getter();
        if (CMLSequence.size.getter() < 0)
        {
          BUG();
        }

        v28 = v23;
        v29 = CMLSequence.size.getter();
        v131 = v28;
        outlined consume of MLDataValue(v28, v26, 3);
        if (v27 < 0 || v29 < v27)
        {
          BUG();
        }

        if (v27 != 21)
        {
          v23 = v131;
          outlined consume of MLDataValue(v131, v26, 3);
          v24 = 3;
          break;
        }

        v30 = v131;

        if (CMLSequence.size.getter())
        {
          v31 = 0;
          while (1)
          {
            v32 = CMLSequence.value(at:)(v31);
            v33 = CMLFeatureValue.type.getter();
            v122 = v31;
            switch(v33)
            {
              case 0:
                v34 = v32[2];

                countAndFlagsBits = specialized handling<A, B>(_:_:)(v34);
                v32;
                object = 0;
                v142 = 0;
                goto LABEL_39;
              case 1:
                v70 = v32[2];

                specialized handling<A, B>(_:_:)(v70);
                v139 = *&v13;
                v69 = v32;
                v13 = *&v139;
                countAndFlagsBits = v139;
                LOBYTE(v69) = 1;
                goto LABEL_37;
              case 2:

                v63 = CMLFeatureValue.stringValue()();
                countAndFlagsBits = v63._countAndFlagsBits;
                if (v64)
                {
                  v64;

                  BUG();
                }

                object = v63._object;
                v65 = v32;
                LOBYTE(v65) = 2;
                v142 = v65;
                goto LABEL_39;
              case 3:
                v66 = v32[2];

                v67 = specialized handling<A, B>(_:_:)(v66);
                if (!v67)
                {
                  BUG();
                }

                v32;
                v68 = type metadata accessor for CMLSequence();
                v69 = swift_allocObject(v68, 25, 7);
                *(v69 + 16) = v67;
                countAndFlagsBits = v69;
                *(v69 + 24) = 1;
                LOBYTE(v69) = 3;
                goto LABEL_37;
              case 4:
                v36 = v32[2];

                v37 = specialized handling<A, B>(_:_:)(v36);
                if (!v37)
                {
                  BUG();
                }

                v128 = v32;
                v38 = type metadata accessor for CMLDictionary();
                inited = swift_initStackObject(v38, v117);
                inited[2] = v37;
                v127 = _swiftEmptyDictionarySingleton;
                swift_retain_n(inited, 2);
                v40 = 0;
                countAndFlagsBits = _swiftEmptyDictionarySingleton;
                v139 = inited;
                while (v40 != CMLDictionary.size.getter())
                {
                  CMLDictionary.keyAndValue(at:)(v40);
                  v42 = v41;
                  v40 = specialized RandomAccessCollection<>.index(after:)(v40);
                  v43 = CMLFeatureValue.stringValue()();
                  if (v44)
                  {
                    v44;

                    inited = v139;
                  }

                  else
                  {
                    v45 = v43._object;
                    v142 = v43._countAndFlagsBits;

                    MLDataValue.init(_:)(v42, v13);

                    v126 = v134;
                    v125 = v135;
                    v143 = v136;
                    *&v46 = v142;
                    v134 = v142;
                    v135 = v45;
                    LOBYTE(v136) = 2;
                    v47 = v45;
                    *(&v46 + 1) = v45;
                    v48 = countAndFlagsBits;
                    specialized __RawDictionaryStorage.find<A>(_:)(v46, 2, v13);
                    *&v46 = (v50 & 1) == 0;
                    v51 = __OFADD__(v48[2], v46);
                    v52 = v48[2] + v46;
                    if (v51)
                    {
                      BUG();
                    }

                    v53 = v50;
                    if (v48[3] < v52)
                    {
                      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v52, 1u);
                      *&v54 = v142;
                      *(&v54 + 1) = v47;
                      specialized __RawDictionaryStorage.find<A>(_:)(v54, 2, v13);
                      LOBYTE(v55) = v55 & 1;
                      v56 = v53;
                      if ((v53 & 1) != v55)
                      {
                        LOBYTE(v56) = v53 & 1;
                        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLDataValue, v47, v55, v56);
                        BUG();
                      }
                    }

                    if (v53)
                    {
                      v114 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
                      swift_willThrow();
                      v120[0] = v114;
                      swift_errorRetain(v114);
                      v115 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
                      if (swift_dynamicCast(&demangling cache variable for type metadata for Error, v120, v115, &type metadata for _MergeError, 0))
                      {
                        v118 = 0;
                        v119 = 0xE000000000000000;
                        _StringGuts.grow(_:)(30);
                        v116._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
                        v116._countAndFlagsBits = 0xD00000000000001BLL;
                        String.append(_:)(v116);
                        _print_unlocked<A, B>(_:_:)(&v134, &v118, &type metadata for MLDataValue, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
                        v116._countAndFlagsBits = 39;
                        v116._object = 0xE100000000000000;
                        String.append(_:)(v116);
                        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v118, v119, "Swift/NativeDictionary.swift", 28, 2, 783, 0);
                        BUG();
                      }

                      outlined consume of MLDataValue(v126, v125, v143);
                      outlined consume of MLDataValue(v134, v135, v136);

                      v120[0];
                      swift_unexpectedError(v114, "Swift/Dictionary.swift", 22, 1, 489);
                      BUG();
                    }

                    v57 = v127;
                    v127[(v49 >> 6) + 8] |= 1 << v49;
                    v58 = v57[6];
                    v59 = 24 * v49;
                    *(v58 + v59) = v142;
                    *(v58 + v59 + 8) = v47;
                    *(v58 + v59 + 16) = 2;
                    v60 = v57[7];
                    *(v60 + v59) = v126;
                    *(v60 + v59 + 8) = v125;
                    *(v60 + v59 + 16) = v143;
                    v61 = v57[2];
                    v51 = __OFADD__(1, v61);
                    v62 = v61 + 1;
                    if (v51)
                    {
                      BUG();
                    }

                    countAndFlagsBits = v57;
                    v57[2] = v62;
                    inited = v139;
                  }
                }

                v128;
                v100 = inited;
                LOBYTE(v100) = 4;
                v142 = v100;
                object = 0;
                v31 = v122;
                goto LABEL_39;
              case 5:

                LOBYTE(v71) = 6;
                v142 = v71;
                countAndFlagsBits = 0;
                goto LABEL_38;
              case 6:

                MLDataValue.MultiArrayType.init(from:)(v32);
                countAndFlagsBits = v134;
                if (!v134)
                {
                  BUG();
                }

                LOBYTE(v69) = 5;
LABEL_37:
                v142 = v69;
LABEL_38:
                object = 0;
LABEL_39:
                if (v31 >= CMLSequence.size.getter())
                {
                  BUG();
                }

                v128 = object;
                v72 = v140;
                v73 = [v140 strides];
                v74 = v73;
                v139 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
                v75 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v74, v139);

                if ((v75 & 0xC000000000000003) != 0)
                {
                  v76 = specialized _ArrayBuffer._getElementSlowPath(_:)(0);
                }

                else
                {
                  if (!*(&dword_10 + (v75 & 0xFFFFFFFFFFFFF8)))
                  {
                    BUG();
                  }

                  v76 = *(v75 + 32);
                }

                v77 = v76;
                v75;
                v78 = [v77 integerValue];

                v80 = v78;
                v79 = v132 * v78;
                if (!is_mul_ok(v132, v80))
                {
                  BUG();
                }

                v81 = [v72 strides];
                v82 = v81;
                v83 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v82, v139);

                if ((v83 & 0xC000000000000003) != 0)
                {
                  v84 = specialized _ArrayBuffer._getElementSlowPath(_:)(1);
                }

                else
                {
                  if (*(&dword_10 + (v83 & 0xFFFFFFFFFFFFF8)) < 2uLL)
                  {
                    BUG();
                  }

                  v84 = *(v83 + 40);
                }

                v85 = v84;
                v83;
                v86 = [v85 integerValue];

                v88 = v86;
                v87 = v123 * v86;
                if (!is_mul_ok(v123, v88))
                {
                  BUG();
                }

                v51 = __OFADD__(v87, v79);
                v89 = v87 + v79;
                if (v51)
                {
                  BUG();
                }

                v90 = [v140 strides];
                v91 = v90;
                v92 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v91, v139);
                (objc_release)(v91);
                if ((v92 & 0xC000000000000003) != 0)
                {
                  v94 = specialized _ArrayBuffer._getElementSlowPath(_:)(2);
                  v93 = v129;
                }

                else
                {
                  v93 = v129;
                  if (*(&dword_10 + (v92 & 0xFFFFFFFFFFFFF8)) < 3uLL)
                  {
                    BUG();
                  }

                  v94 = *(v92 + 48);
                }

                v92;
                v95 = [v94 integerValue];

                v96 = v122;
                v98 = v95;
                v97 = v122 * v95;
                if (!is_mul_ok(v122, v98))
                {
                  BUG();
                }

                v51 = __OFADD__(v97, v89);
                v99 = v97 + v89;
                if (v51)
                {
                  BUG();
                }

                if (v142)
                {
                  v30 = v131;
                  if (v142 != 1)
                  {
                    outlined consume of MLDataValue(countAndFlagsBits, v128, v142);
                    outlined consume of MLDataValue(v30, v93, 3);
                    outlined consume of MLDataValue(v30, v93, 3);
                    v106 = v132;
                    v107 = v133;
                    v108 = v130;
                    outlined consume of (offset: Int, element: MLDataValue)?(v132, v133, v130, 3);
                    outlined consume of (offset: Int, element: MLDataValue)?(v106, v107, v108, 3);

                    goto LABEL_71;
                  }

                  *(v124 + 8 * v99) = countAndFlagsBits;
                }

                else
                {
                  v13 = countAndFlagsBits;
                  *(v124 + 8 * v99) = countAndFlagsBits;
                  v30 = v131;
                }

                v31 = v96 + 1;
                if (v31 == CMLSequence.size.getter())
                {
                  goto LABEL_64;
                }

                break;
            }
          }
        }

LABEL_64:
        v101 = v123 + 1;

        v102 = v129;
        outlined consume of MLDataValue(v30, v129, 3);
        v103 = v30;
        v20 = v101;
        outlined consume of MLDataValue(v103, v102, 3);
        v15 = v133;
      }

      outlined consume of MLDataValue(v23, v26, v24);
      v109 = v132;
      v110 = v133;
      v111 = v130;
      outlined consume of (offset: Int, element: MLDataValue)?(v132, v133, v130, 3);
      outlined consume of (offset: Int, element: MLDataValue)?(v109, v110, v111, 3);
LABEL_71:

      goto LABEL_67;
    }

    v112 = v132;
    outlined consume of (offset: Int, element: MLDataValue)?(v132, v15, v16, 3);
    v17 = 3;
  }

  else
  {
    if (v137 == 255)
    {

      MLDataValue.MultiArrayType.init(_:)(v140);
      *v138 = v134;
      return;
    }

    v112 = v134;
  }

  v113 = v138;
  outlined consume of (offset: Int, element: MLDataValue)?(v112, v15, v16, v17);
  *v113 = 0;
}

void *MLHandActionClassifier.modelPrediction(on:using:)(void *a1, void *a2)
{
  v4 = (v3 + *(type metadata accessor for MLHandActionClassifier(0) + 28));
  v5 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v6 = static _VideoUtilities.getHandKeyPointsFromVideoUrl(url:startTime:endTime:targetFrameRate:)(a1, kCMTimeZero.value, *&kCMTimeZero.timescale, kCMTimeZero.epoch, kCMTimeIndefinite.value, *&kCMTimeIndefinite.timescale, *(v4 + *(v5 + 40)), kCMTimeIndefinite.epoch);
  if (!v2)
  {
    v23 = v6[2];
    if (v23)
    {
      v19 = v4;
      v21 = v6;
      specialized ContiguousArray.reserveCapacity(_:)(v23);
      v7 = 0;
      do
      {
        v8 = v21[v7 + 4];
        v7 = v7 + 1;
        v8;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v8);
        v9 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v9);
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v9);
        specialized ContiguousArray._endMutation()(v9);
      }

      while (v23 != v7);
      v21;
      v4 = v19;
    }

    else
    {
      v6;
    }

    v11 = static _VideoUtilities.generatePredictionWindows(frameKeypoints:windowSize:numOfKeypoints:)(_swiftEmptyArrayStorage, *(v4 + *(v5 + 28)), 21, v10);
    _swiftEmptyArrayStorage;
    v13 = *(v11 + 2);
    if (v13)
    {
      v18 = v11;
      v14 = v11 + 40;
      v4 = _swiftEmptyArrayStorage;
      do
      {
        v22 = v13;
        v17 = *v14;
        v24 = *(v14 - 1);
        v20 = MLHandActionClassifier.modelPrediction(on:using:)(v24, a2);
        if (!swift_isUniquelyReferenced_nonNull_native(v4))
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
        }

        v15 = v4[2];
        if (v4[3] >> 1 <= v15)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v4[3] >= 2uLL, v15 + 1, 1, v4);
        }

        v4[2] = v15 + 1;
        v16 = 3 * v15;
        *&v4[v16 + 4] = v17;
        v4[v16 + 6] = v20;

        v14 = (v14 + 24);
        v13 = v22 - 1;
      }

      while (v22 != 1);
      v18;
    }

    else
    {
      v11;
      return _swiftEmptyArrayStorage;
    }
  }

  return v4;
}

{
  v4 = [a1 shape];
  v5 = v4;
  v6 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v5, v6);

  v10 = specialized Array._getCount()(v7, v6, v8, v9);
  v7;
  if (v10 == 3 && (v11 = [a1 shape], v12 = v11, v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v12, v6), v12, v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>), v15 = swift_allocObject(v14, 56, 7), v15[2] = 3, v15[3] = 7, v16 = *(type metadata accessor for MLHandActionClassifier(0) + 28) + v3, v17 = *(*(type metadata accessor for MLHandActionClassifier.ModelParameters(0) + 28) + v16), v18 = objc_allocWithZone(NSNumber), v15[4] = objc_msgSend(v18, "initWithInteger:", v17), v19 = objc_allocWithZone(NSNumber), v15[5] = objc_msgSend(v19, "initWithInteger:", 3), v20 = objc_allocWithZone(NSNumber), v15[6] = objc_msgSend(v20, "initWithInteger:", 21), v3 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo8NSNumberC_Tt1g5(v13, v15), v13, v15, (v3 & 1) != 0))
  {
    v68 = v6;
    v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
    inited = swift_initStackObject(v21, v89);
    inited[2] = 1;
    inited[3] = 2;
    inited[4] = 0x7365736F70;
    inited[5] = 0xE500000000000000;
    v23 = objc_opt_self(MLFeatureValue);
    v24 = [v23 featureValueWithMultiArray:a1];
    v25 = v24;
    inited[9] = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLFeatureValue, MLFeatureValue_ptr);
    inited[6] = v25;
    v26 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
    v3 = objc_allocWithZone(MLDictionaryFeatureProvider);
    v27 = @nonobjc MLDictionaryFeatureProvider.init(dictionary:)(v26);
    if (!v2)
    {
      v3 = v27;
      v88[0] = 0;
      v28 = [a2 predictionFromFeatures:v27 error:v88];
      v29 = v28;
      v30 = v88[0];
      if (v29)
      {
        v70 = v3;
        v3 = 0xD000000000000012;
        v31 = v29;
        v88[0];
        v32 = String._bridgeToObjectiveC()();
        v71 = v31;
        v33 = [v31 featureValueForName:v32];
        v34 = v33;

        if (v34)
        {
          v35 = [v34 dictionaryValue];
          v36 = v35;

          v37 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(v36, &type metadata for AnyHashable, v68, &protocol witness table for AnyHashable);
          v38 = *(v37 + 16);
          if (v38)
          {
            v74 = _swiftEmptyArrayStorage;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38, 0);
            v3 = _swiftEmptyArrayStorage;
            v39 = specialized Dictionary.startIndex.getter(v37);
            v41 = v37 + 64;
            v42 = v38 - 1;
            v65 = v37 + 64;
            for (i = v37; ; v40 = *(i + 36))
            {
              if (v39 < 0 || v39 >= 1 << *(v37 + 32))
              {
                BUG();
              }

              v69 = v42;
              v43 = v39 >> 6;
              v44 = *(v41 + 8 * (v39 >> 6));
              if (!_bittest64(&v44, v39))
              {
                BUG();
              }

              if (v40 != *(v37 + 36))
              {
                BUG();
              }

              v62 = 1 << v39;
              v63 = v40;
              v45 = v39;
              outlined init with copy of AnyHashable(*(v37 + 48) + 40 * v39, v88);
              v67 = v45;
              v46 = *(*(v37 + 56) + 8 * v45);
              v88[5] = v46;
              outlined init with copy of AnyHashable(v88, v85);
              v87 = v46;
              v83 = v86;
              v84 = v46;
              v82[1] = v85[1];
              v82[0] = v85[0];
              v47 = v46;
              v47;
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v88, &demangling cache variable for type metadata for (key: AnyHashable, value: NSNumber));
              outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v82, v77, &demangling cache variable for type metadata for (key: AnyHashable, value: NSNumber));

              v81 = v78;
              v48 = *&v77[0];
              v80[1] = v77[1];
              v80[0] = v77[0];
              swift_dynamicCast(&v72, v80, &type metadata for AnyHashable, &type metadata for String, 7);
              outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v82, v75, &demangling cache variable for type metadata for (key: AnyHashable, value: NSNumber));
              v49 = v76;
              [v76 doubleValue];

              outlined destroy of AnyHashable(v75);
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v82, &demangling cache variable for type metadata for (key: AnyHashable, value: NSNumber));
              v50 = v72;
              v51 = v73;
              v74 = v3;
              v52 = *(v3 + 16);
              v53 = v52 + 1;
              if (*(v3 + 24) >> 1 <= v52)
              {
                v66 = v73;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(*(v3 + 24) >= 2uLL, v53, 1);
                v53 = v52 + 1;
                v51 = v66;
                v3 = v74;
              }

              *(v3 + 16) = v53;
              v54 = 24 * v52;
              *(v3 + v54 + 32) = v50;
              *(v3 + v54 + 40) = v51;
              *(v3 + v54 + 48) = v48;
              v37 = i;
              v55 = -1 << *(i + 32);
              if (v67 >= -v55)
              {
                BUG();
              }

              v41 = v65;
              if ((v62 & *(v65 + 8 * v43)) == 0)
              {
                BUG();
              }

              if (v63 != *(i + 36))
              {
                BUG();
              }

              v39 = _HashTable.occupiedBucket(after:)(v67, v65, ~v55);
              v42 = v69 - 1;
              if (!v69)
              {
                break;
              }
            }

            i;
            swift_unknownObjectRelease(v71);
          }

          else
          {
            v37;
            swift_unknownObjectRelease(v71);

            return _swiftEmptyArrayStorage;
          }
        }

        else
        {
          v60 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v60, 0, 0);
          *v61 = 0xD000000000000028;
          *(v61 + 8) = "labelProbabilities" + 0x8000000000000000;
          *(v61 + 16) = 0;
          *(v61 + 32) = 0;
          *(v61 + 48) = 0;
          swift_willThrow();

          swift_unknownObjectRelease(v31);
        }
      }

      else
      {
        v59 = v88[0];
        _convertNSErrorToError(_:)(v30);

        swift_willThrow();
      }
    }
  }

  else
  {
    v56 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v56, 0, 0);
    *v57 = 0xD000000000000025;
    *(v57 + 8) = "rt requested type" + 0x8000000000000000;
    *(v57 + 16) = 0;
    *(v57 + 32) = 0;
    *(v57 + 48) = 0;
    swift_willThrow();
  }

  return v3;
}

void *closure #1 in MLHandActionClassifier.predictions(from:)(void *a1, uint64_t a2, void *a3)
{
  v6 = v3;
  result = MLHandActionClassifier.modelPrediction(on:using:)(a1, *(a2 + 16));
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    *v6 = result;
  }

  return result;
}

uint64_t MLHandActionClassifier.evaluation(on:)()
{
  result = MLHandActionClassifier.DataSource.keypointsWithAnnotations(targetFrameRate:)(0x403E000000000000uLL);
  if (!v0)
  {
    v6 = v4;
    v7 = v5;
    v3 = type metadata accessor for MLHandActionClassifier(0);
    MLHandActionClassifier.evaluation(on:parameters:)(&v4, v1 + *(v3 + 28), 30.0);
    return outlined consume of Result<_DataTable, Error>(v6, v7);
  }

  return result;
}

void *MLHandActionClassifier.addHandActionClassifierSpecificMetadata(_:)(const void *a1)
{
  v3 = v1;
  v4 = type metadata accessor for MLHandActionClassifier(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v137 = &v116;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v149 = &v116;
  v10 = type metadata accessor for Logger(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v15 = alloca(v12);
  v16 = alloca(v12);
  qmemcpy(v119, a1, sizeof(v119));
  v132 = v3;
  if (!v119[1])
  {
    v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, String)>);
    inited = swift_initStackObject(v29, v117);
    inited[2] = 2;
    inited[3] = 4;
    inited[4] = 0xD000000000000016;
    inited[5] = "Number of Labels" + 0x8000000000000000;
    v31 = v2 + *(v4 + 28);
    v32 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
    v120 = *&v31[*(v32 + 28)];
    inited[6] = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    inited[7] = v33;
    inited[8] = 0xD000000000000011;
    inited[9] = "lassification algorithm." + 0x8000000000000000;
    inited[10] = Double.description.getter(*&v31[*(v32 + 40)]);
    inited[11] = v34;
    v142 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for String, &protocol witness table for String);
    v35 = NSFullUserName();
    v36 = v35;
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)(v36);
    v39 = v38;

    *v118 = v37;
    *&v118[8] = v39;
    *&v118[16] = 0xD000000000000033;
    *&v118[24] = "RandomForestRegressor" + 0x8000000000000000;
    *&v118[32] = 0;
    *&v118[48] = 49;
    *&v118[56] = 0xE100000000000000;
    *&v118[64] = v142;
    v120 = v37;
    v121 = v39;
    v122 = 0xD000000000000033;
    v123 = "RandomForestRegressor" + 0x8000000000000000;
    v124 = 0;
    v125 = 49;
    v126 = 0xE100000000000000;
    v127 = v142;
    outlined retain of MLModelMetadata(v118);
    result = outlined release of MLModelMetadata(&v120);
    qmemcpy(v132, v118, 0x48uLL);
    return result;
  }

  v150 = v4;
  log = v2;
  v135 = v119[0];
  v142 = v119[2];
  v133 = v119[4];
  v17 = v119[5];
  v134 = v119[6];
  v145 = v119[1];
  v146 = v119[3];
  v136 = v119[7];
  if (v119[8])
  {
    v140 = &v116;
    v139 = &v116;
    v148 = v10;
    v147 = v11;
    v18 = v119[8];

    outlined release of MLModelMetadata?(v119, outlined copy of MLModelMetadata?);
    v143 = v17;

    v19 = specialized Dictionary.subscript.getter(0xD000000000000016, ("Number of Labels" + 0x8000000000000000), v18);
    v151 = v18;
    if (v20)
    {
      v128 = "Number of Labels" + 0x8000000000000000;
      v141 = 0xD000000000000016;
      v21 = log + *(v150 + 28);
      v144 = v19;
      v22 = v20;
      v23 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
      v24 = *&v21[*(v23 + 28)];
      v120 = v24;
      v25 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
      v27 = v26;
      if (!(v25 ^ v144 | v26 ^ v22))
      {
        v22;
        v28 = v27;
LABEL_11:
        v28;
        v61 = v151;
        goto LABEL_19;
      }

      v129 = v23;
      v60 = _stringCompareWithSmolCheck(_:_:expecting:)(v144, v22, v25, v26, 0);
      v27;
      if (v60)
      {
        v28 = v22;
        goto LABEL_11;
      }

      v130 = v24;
      if (one-time initialization token for logger != -1)
      {
        swift_once(&one-time initialization token for logger, one-time initialization function for logger);
      }

      v62 = v148;
      v63 = __swift_project_value_buffer(v148, static MLHandActionClassifier.logger);
      v64 = v140;
      (*(v147 + 16))(v140, v63, v62);
      v65 = v149;
      v66 = v149;
      outlined init with copy of MLTrainingSessionParameters(log, v149, type metadata accessor for MLHandActionClassifier);
      v67 = v22;
      v68 = v22;

      v69 = Logger.logObject.getter(v22, v66);
      v70 = static os_log_type_t.info.getter(v68);
      v71 = v70;
      if (os_log_type_enabled(v69, v70))
      {
        v72 = swift_slowAlloc(22, -1);
        *type = v71;
        v73 = v72;
        v131 = swift_slowAlloc(32, -1);
        v120 = v131;
        *v73 = 136315394;

        *(v73 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v144, v67, &v120);
        swift_bridgeObjectRelease_n(v67, 3);
        *(v73 + 12) = 2048;
        v74 = v65;
        v75 = *(*(v129 + 28) + *(v150 + 28) + v65);
        outlined destroy of MLActivityClassifier.ModelParameters(v74, type metadata accessor for MLHandActionClassifier);
        *(v73 + 14) = v75;
        _os_log_impl(&dword_0, v69, type[0], "Prediction window size %s is set incorrectly, change it to %ld frames.", v73, 0x16u);
        v76 = v131;
        __swift_destroy_boxed_opaque_existential_1Tm(v131);
        v76, -1, -1;
        v73, -1, -1;
      }

      else
      {
        outlined destroy of MLActivityClassifier.ModelParameters(v65, type metadata accessor for MLHandActionClassifier);

        swift_bridgeObjectRelease_n(v67, 2);
      }

      (*(v147 + 8))(v64, v148);
      v77 = v151;
      v120 = v130;
      v78 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
      v80 = v79;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v77);
      v120 = v77;
      v55 = isUniquelyReferenced_nonNull_native;
      v56 = v78;
      v57 = v80;
      v58 = v141;
      v59 = v128;
    }

    else
    {
      v50 = log + *(v150 + 28);
      v120 = *&v50[*(type metadata accessor for MLHandActionClassifier.ModelParameters(0) + 28)];
      v51 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
      v53 = v52;
      v54 = swift_isUniquelyReferenced_nonNull_native(v18);
      v120 = v18;
      v55 = v54;
      v56 = v51;
      v57 = v53;
      v58 = 0xD000000000000016;
      v59 = "Number of Labels" + 0x8000000000000000;
    }

    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v56, v57, v58, v59, v55);
    v61 = v120;
LABEL_19:
    v82 = specialized Dictionary.subscript.getter(0xD000000000000011, ("lassification algorithm." + 0x8000000000000000), v61);
    if (v83)
    {
      v84 = v83;
      v144 = ("lassification algorithm." + 0x8000000000000000);
      v149 = v61;
      v85 = log + *(v150 + 28);
      v86 = v82;
      v87 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
      v140 = *&v85[*(v87 + 40)];
      v88 = Double.description.getter(*&v140);
      v90 = v89;
      if (v86 == v88 && v84 == v89)
      {
        v151;
        v84;
        v91 = v90;
LABEL_26:
        v91;
        v44 = v145;
        v49 = v146;
        v45 = v143;
        v48 = v149;
        goto LABEL_34;
      }

      v98 = _stringCompareWithSmolCheck(_:_:expecting:)(v86, v84, v88, v89, 0);
      v90;
      if (v98)
      {
        v151;
        v91 = v84;
        goto LABEL_26;
      }

      v141 = v87;
      if (one-time initialization token for logger != -1)
      {
        swift_once(&one-time initialization token for logger, one-time initialization function for logger);
      }

      v99 = v148;
      v100 = __swift_project_value_buffer(v148, static MLHandActionClassifier.logger);
      (*(v147 + 16))(v139, v100, v99);
      v101 = v137;
      v102 = v137;
      outlined init with copy of MLTrainingSessionParameters(log, v137, type metadata accessor for MLHandActionClassifier);

      v103 = Logger.logObject.getter(v84, v102);
      v104 = static os_log_type_t.info.getter(v84);
      log = v103;
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc(22, -1);
        v106 = swift_slowAlloc(32, -1);
        v120 = v106;
        *v105 = 136315394;

        *(v105 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v84, &v120);
        swift_bridgeObjectRelease_n(v84, 3);
        *(v105 + 12) = 2048;
        v107 = v137;
        *(v105 + 14) = *(v137 + *(v150 + 28) + *(v141 + 40));
        outlined destroy of MLActivityClassifier.ModelParameters(v107, type metadata accessor for MLHandActionClassifier);
        v108 = log;
        _os_log_impl(&dword_0, log, v104, "Target frame rate %s is set incorrectly, change it to %f.", v105, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v106);
        v106, -1, -1;
        v105, -1, -1;
        v109 = v108;
      }

      else
      {
        swift_bridgeObjectRelease_n(v84, 2);
        outlined destroy of MLActivityClassifier.ModelParameters(v101, type metadata accessor for MLHandActionClassifier);
        v109 = log;
      }

      (*(v147 + 8))(v139, v148);
      v110 = Double.description.getter(*&v140);
      v112 = v111;
      v113 = v149;
      v114 = swift_isUniquelyReferenced_nonNull_native(v149);
      v120 = v113;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v110, v112, 0xD000000000000011, v144, v114);
      v151;
      v48 = v120;
      v44 = v145;
    }

    else
    {
      v92 = log + *(v150 + 28);
      v93 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
      v94 = Double.description.getter(*&v92[*(v93 + 40)]);
      v44 = v145;
      v95 = v94;
      log = v96;
      v97 = swift_isUniquelyReferenced_nonNull_native(v61);
      v120 = v61;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v95, log, 0xD000000000000011, ("lassification algorithm." + 0x8000000000000000), v97);
      v151;
      v48 = v120;
    }

    v49 = v146;
    v45 = v143;
    goto LABEL_34;
  }

  v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, String)>);
  v42 = swift_allocObject(v41, 96, 7);
  v42[2] = 2;
  v42[3] = 4;
  v42[4] = 0xD000000000000016;
  v42[5] = "Number of Labels" + 0x8000000000000000;
  v43 = log + *(v150 + 28);
  log = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v120 = *&v43[*(log + 7)];
  v44 = v145;

  outlined release of MLModelMetadata?(v119, outlined copy of MLModelMetadata?);
  v45 = v17;

  v42[6] = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v42[7] = v46;
  v42[8] = 0xD000000000000011;
  v42[9] = "lassification algorithm." + 0x8000000000000000;
  v42[10] = Double.description.getter(*&v43[*(log + 10)]);
  v42[11] = v47;
  v48 = Dictionary.init(dictionaryLiteral:)(v42, &type metadata for String, &type metadata for String, &protocol witness table for String);
  v49 = v146;
LABEL_34:
  v149 = v48;
  *v118 = v135;
  *&v118[8] = v44;
  *&v118[16] = v142;
  *&v118[24] = v49;
  *&v118[32] = v133;
  *&v118[40] = v45;
  *&v118[48] = v134;
  v115 = v136;
  *&v118[56] = v136;
  *&v118[64] = v48;
  outlined retain of MLModelMetadata(v118);
  v44;
  v49;
  v45;
  v115;
  qmemcpy(v132, v118, 0x48uLL);
  v120 = v135;
  v121 = v44;
  v122 = v142;
  v123 = v49;
  *&v124 = v133;
  *(&v124 + 1) = v45;
  v125 = v134;
  v126 = v115;
  v127 = v149;
  return outlined release of MLModelMetadata(&v120);
}

NSURL *MLHandActionClassifier.writeLegacyModel(to:metadata:)(uint64_t a1, const void *a2)
{
  v22 = v2;
  v17 = v3;
  v16 = a2;
  v18 = type metadata accessor for Model(0);
  v19 = *(v18 - 8);
  v4 = *(v19 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v21 = v15;
  v7 = type metadata accessor for URL(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = v22;
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(a1, 0xD000000000000014, ("HandPoseClassifier" + 0x8000000000000000), 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (!v12)
  {
    v20 = v15;
    v22 = v7;
    qmemcpy(v15, v16, sizeof(v15));
    MLHandActionClassifier.GraphCNN.export(metadata:)(v15);
    v14 = v20;
    Model.write(to:)(v20);
    (*(v19 + 8))(v21, v18);
    return (*(v8 + 8))(v14, v22);
  }

  return result;
}

uint64_t type metadata accessor for MLHandActionClassifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLHandActionClassifier;
  if (!type metadata singleton initialization cache for MLHandActionClassifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLHandActionClassifier);
  }

  return result;
}

uint64_t MLHandActionClassifier.write(toFile:metadata:)(uint64_t a1, uint64_t a2, const void *a3)
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
  MLHandActionClassifier.write(to:metadata:)(v16, v16);
  return (*(v24 + 8))(v16, v10);
}

unint64_t MLHandActionClassifier.debugDescription.getter()
{
  v1 = v0;
  v25._object = type metadata accessor for MLClassifierMetrics.Contents(0);
  v2 = *(*(v25._object - 1) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = type metadata accessor for MLHandActionClassifier(0);
  v25._countAndFlagsBits = MLHandActionClassifier.ModelParameters.description.getter();
  v7 = v6;
  v22._countAndFlagsBits = MLClassifierMetrics.accuracyDescription.getter();
  v22._object = v8;
  v9 = *(v5 + 36);
  v10 = v7;
  outlined init with copy of MLTrainingSessionParameters(v1 + v9, &v20, type metadata accessor for MLClassifierMetrics.Contents);
  LODWORD(v7) = swift_getEnumCaseMultiPayload(&v20, v25._object);
  outlined destroy of MLActivityClassifier.ModelParameters(&v20, type metadata accessor for MLClassifierMetrics.Contents);
  v25._object = MLClassifierMetrics.accuracyDescription.getter();
  v12 = v11;
  v23 = 0xD000000000000021;
  v24 = "used as dictionary key" + 0x8000000000000000;
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

NSAttributedString MLHandActionClassifier.playgroundDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSAttributedString, NSAttributedString_ptr);
  v3._countAndFlagsBits = MLHandActionClassifier.debugDescription.getter();
  v3._object = v4;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v3).super.isa;
  v1[3].super.isa = v2;
  v1->super.isa = result.super.isa;
  return result;
}

uint64_t sub_1A1160()
{
  v1 = *(type metadata accessor for MLHandActionClassifier.ModelParameters(0) - 8);
  v2 = *(v1 + 80);
  v3 = ~*(v1 + 80) & (v2 + 41);
  v4 = *(v1 + 64);
  outlined consume of Result<_DataTable, Error>(*(v0 + 16), *(v0 + 24));
  outlined consume of Result<_DataTable, Error>(*(v0 + 32), *(v0 + 40));
  v5 = v3 + v0;
  v6 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v3 + v0, v6) == 1)
  {
    v7 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v3 + v0, v7))
    {
      case 0u:
        v17 = type metadata accessor for URL(0);
        v18 = *(*(v17 - 8) + 8);
        v18(v3 + v0, v17);
        v19 = v4;
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v18(v5 + v10[12], v17);
        *(v5 + v10[16] + 8);
        *(v5 + v10[20] + 8);
        *(v5 + v10[24] + 8);
        v11 = v10[28];
        goto LABEL_9;
      case 1u:
      case 2u:
        v8 = type metadata accessor for URL(0);
        (*(*(v8 - 8) + 8))(v3 + v0, v8);
        return swift_deallocObject(v0, v4 + v3, v2 | 7);
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v5, *(v5 + 8));
        *(v5 + 24);
        *(v5 + 40);
        v9 = *(v5 + 56);
        goto LABEL_10;
      case 4u:
        outlined consume of Result<_DataTable, Error>(*v5, *(v5 + 8));
        *(v5 + 24);
        *(v5 + 40);
        *(v5 + 56);
        v9 = *(v5 + 72);
        goto LABEL_10;
      case 5u:
        v12 = type metadata accessor for DataFrame(0);
        (*(*(v12 - 8) + 8))(v3 + v0, v12);
        v19 = v4;
        v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *(v5 + v13[12] + 8);
        *(v5 + v13[16] + 8);
        v11 = v13[20];
        goto LABEL_9;
      case 6u:
        v14 = type metadata accessor for DataFrame(0);
        (*(*(v14 - 8) + 8))(v3 + v0, v14);
        v19 = v4;
        v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *(v5 + v15[12] + 8);
        *(v5 + v15[16] + 8);
        *(v5 + v15[20] + 8);
        v11 = v15[24];
LABEL_9:
        v4 = v19;
        v9 = *(v5 + v11 + 8);
LABEL_10:
        v9;
        break;
      default:
        return swift_deallocObject(v0, v4 + v3, v2 | 7);
    }
  }

  return swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t partial apply for closure #1 in MLHandActionClassifier.init(trainingData:parameters:)(uint64_t a1)
{
  v3 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v9 = *(v1 + 24);
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v10 = *(v1 + 40);
  v6 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 41));
  v7 = swift_task_alloc(112);
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLHandActionClassifier.init(trainingData:parameters:)(a1, v4, v9, v5, v10, v6);
}

id @nonobjc MLDictionaryFeatureProvider.init(dictionary:)(uint64_t a1)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  a1;
  v7 = 0;
  v3 = [v1 initWithDictionary:isa error:&v7];

  v4 = v7;
  if (v3)
  {
    v7;
  }

  else
  {
    v5 = v7;
    _convertNSErrorToError(_:)(v4);

    swift_willThrow();
  }

  return v3;
}

uint64_t partial apply for closure #1 in MLHandActionClassifier.init(checkpoint:)(uint64_t a1)
{
  v2 = swift_task_alloc(48);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLHandActionClassifier.init(checkpoint:)(a1);
}

void *initializeBufferWithCopyOfBuffer for MLHandActionClassifier(void *a1, void *a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v14 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    a1[1] = a2[1];
    v5 = a2[2];
    a1[2] = v5;
    v6 = a3[7];
    __dst = a1 + v6;
    v8 = a2 + v6;
    v84 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);

    v9 = v5;
    v10 = v84;
    v9;
    v83 = a1;
    if (swift_getEnumCaseMultiPayload(v8, v84) == 1)
    {
      v11 = __dst;
      v12 = type metadata accessor for MLHandActionClassifier.DataSource(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v8, v12);
      switch(EnumCaseMultiPayload)
      {
        case 0u:
          v19 = type metadata accessor for URL(0);
          v20 = *(*(v19 - 8) + 16);
          v20(__dst, v8, v19);
          v91 = v12;
          v21 = v8;
          v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v20(&__dst[v22[12]], &v21[v22[12]], v19);
          v23 = v22[16];
          *&__dst[v23] = *&v21[v23];
          *&__dst[v23 + 8] = *&v21[v23 + 8];
          v24 = v22[20];
          *&__dst[v24] = *&v21[v24];
          *&__dst[v24 + 8] = *&v21[v24 + 8];
          v25 = v22[24];
          *&__dst[v25] = *&v21[v25];
          *&__dst[v25 + 8] = *&v21[v25 + 8];
          v26 = v22[28];
          *&__dst[v26] = *&v21[v26];
          *&__dst[v26 + 8] = *&v21[v26 + 8];

          v10 = v84;

          v8 = v21;
          goto LABEL_12;
        case 1u:
        case 2u:
          v13 = type metadata accessor for URL(0);
          (*(*(v13 - 8) + 16))(__dst, v8, v13);
          goto LABEL_16;
        case 3u:
          v27 = *v8;
          v91 = v12;
          v28 = v84;
          v29 = v8;
          v30 = v8[8];
          outlined copy of Result<_DataTable, Error>(v27, v30);
          *__dst = v27;
          __dst[8] = v30;
          *(__dst + 2) = *(v29 + 2);
          *(__dst + 3) = *(v29 + 3);
          *(__dst + 4) = *(v29 + 4);
          *(__dst + 5) = *(v29 + 5);
          *(__dst + 6) = *(v29 + 6);
          *(__dst + 7) = *(v29 + 7);
          goto LABEL_11;
        case 4u:
          v16 = *v8;
          v90 = v12;
          v17 = v8;
          v18 = v8[8];
          outlined copy of Result<_DataTable, Error>(v16, v18);
          *__dst = v16;
          __dst[8] = v18;
          *(__dst + 2) = *(v17 + 2);
          *(__dst + 3) = *(v17 + 3);
          *(__dst + 4) = *(v17 + 4);
          *(__dst + 5) = *(v17 + 5);
          *(__dst + 6) = *(v17 + 6);
          *(__dst + 7) = *(v17 + 7);
          *(__dst + 8) = *(v17 + 8);
          *(__dst + 9) = *(v17 + 9);

          v8 = v17;
          v12 = v90;

          goto LABEL_14;
        case 5u:
          v31 = type metadata accessor for DataFrame(0);
          (*(*(v31 - 8) + 16))(__dst, v8, v31);
          v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v33 = v32[12];
          *&__dst[v33] = *&v8[v33];
          *&__dst[v33 + 8] = *&v8[v33 + 8];
          v34 = v32[16];
          *&__dst[v34] = *&v8[v34];
          *&__dst[v34 + 8] = *&v8[v34 + 8];
          v35 = v32[20];
          *&__dst[v35] = *&v8[v35];
          v91 = v12;
          v28 = v84;
          v29 = v8;
          *&__dst[v35 + 8] = *&v8[v35 + 8];
LABEL_11:

          v8 = v29;
          v10 = v28;
LABEL_12:
          v12 = v91;
          break;
        case 6u:
          v36 = type metadata accessor for DataFrame(0);
          (*(*(v36 - 8) + 16))(__dst, v8, v36);
          v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v38 = v37[12];
          *&__dst[v38] = *&v8[v38];
          *&__dst[v38 + 8] = *&v8[v38 + 8];
          v39 = v37[16];
          *&__dst[v39] = *&v8[v39];
          *&__dst[v39 + 8] = *&v8[v39 + 8];
          v40 = v37[20];
          *&__dst[v40] = *&v8[v40];
          *&__dst[v40 + 8] = *&v8[v40 + 8];
          v41 = v37[24];
          *&__dst[v41] = *&v8[v41];
          *&__dst[v41 + 8] = *&v8[v41 + 8];

LABEL_14:
          v10 = v84;
          break;
      }

LABEL_16:
      v15 = a2;
      swift_storeEnumTagMultiPayload(__dst, v12, EnumCaseMultiPayload);
      swift_storeEnumTagMultiPayload(__dst, v10, 1);
    }

    else
    {
      v11 = __dst;
      memcpy(__dst, v8, *(*(v84 - 8) + 64));
      v15 = a2;
    }

    v42 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
    *&v11[v42[5]] = *&v8[v42[5]];
    *&v11[v42[6]] = *&v8[v42[6]];
    *&v11[v42[7]] = *&v8[v42[7]];
    *&v11[v42[8]] = *&v8[v42[8]];
    *&v11[v42[10]] = *&v8[v42[10]];
    v43 = a3[8];
    v44 = v83;
    v45 = (v83 + v43);
    v46 = (v15 + v43);
    v85 = type metadata accessor for MLClassifierMetrics.Contents(0);
    v47 = swift_getEnumCaseMultiPayload(v46, v85);
    if (v47 == 2)
    {
      v53 = *v46;
      swift_errorRetain(*v46);
      *v45 = v53;
      v44 = v83;
    }

    else if (v47 == 1)
    {
      *v45 = *v46;
      v80 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v48 = *(v80 + 20);
      v92 = v45 + v48;
      v49 = type metadata accessor for DataFrame(0);
      __dstb = v45;
      v50 = *(*(v49 - 8) + 16);
      v51 = v46 + v48;
      v15 = a2;
      v50(v92, v51, v49);
      v52 = v49;
      v44 = v83;
      v50(__dstb + *(v80 + 24), v46 + *(v80 + 24), v52);
      v45 = __dstb;
    }

    else
    {
      __dsta = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v54 = swift_getEnumCaseMultiPayload(v46, __dsta);
      v55 = v54 == 1;
      v56 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v54 == 1)
      {
        v56 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v57 = __swift_instantiateConcreteTypeFromMangledName(v56);
      (*(*(v57 - 8) + 16))(v45, v46, v57);
      swift_storeEnumTagMultiPayload(v45, __dsta, v55);
      v15 = a2;
    }

    swift_storeEnumTagMultiPayload(v45, v85, v47);
    v58 = a3[9];
    v59 = (v44 + v58);
    v60 = (v15 + v58);
    v61 = swift_getEnumCaseMultiPayload(v60, v85);
    if (v61 == 2)
    {
      v72 = *v60;
      swift_errorRetain(*v60);
      *v59 = v72;
      v14 = v83;
      v69 = 2;
      v70 = v59;
      v71 = v85;
      goto LABEL_28;
    }

    if (v61 == 1)
    {
      *v59 = *v60;
      v62 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v63 = v60;
      v64 = *(v62 + 20);
      v82 = v59 + v64;
      v65 = type metadata accessor for DataFrame(0);
      v66 = v63 + v64;
      v67 = *(*(v65 - 8) + 16);
      v67(v82, v66, v65);
      v68 = *(v62 + 24);
      v14 = v83;
      v67(v59 + v68, v63 + v68, v65);
      v69 = 1;
      v70 = v59;
      v71 = v85;
LABEL_28:
      swift_storeEnumTagMultiPayload(v70, v71, v69);
      return v14;
    }

    v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v74 = swift_getEnumCaseMultiPayload(v60, v73);
    v75 = v74 == 1;
    v76 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v74 == 1)
    {
      v76 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v77 = __swift_instantiateConcreteTypeFromMangledName(v76);
    (*(*(v77 - 8) + 16))(v59, v60, v77);
    swift_storeEnumTagMultiPayload(v59, v73, v75);
    swift_storeEnumTagMultiPayload(v59, v85, 0);
    return v83;
  }

  return v14;
}

uint64_t destroy for MLHandActionClassifier(uint64_t a1, int *a2)
{
  *a1;

  v3 = a1 + a2[7];
  v4 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v3, v4) == 1)
  {
    v5 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v3, v5))
    {
      case 0u:
        v8 = type metadata accessor for URL(0);
        v9 = *(*(v8 - 8) + 8);
        v9(v3, v8);
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v9(v3 + v10[12], v8);
        *(v3 + v10[16] + 8);
        *(v3 + v10[20] + 8);
        *(v3 + v10[24] + 8);
        v11 = v10[28];
        goto LABEL_9;
      case 1u:
      case 2u:
        v6 = type metadata accessor for URL(0);
        (*(*(v6 - 8) + 8))(v3, v6);
        break;
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v3, *(v3 + 8));
        *(v3 + 24);
        *(v3 + 40);
        v7 = *(v3 + 56);
        goto LABEL_10;
      case 4u:
        outlined consume of Result<_DataTable, Error>(*v3, *(v3 + 8));
        *(v3 + 24);
        *(v3 + 40);
        *(v3 + 56);
        v7 = *(v3 + 72);
        goto LABEL_10;
      case 5u:
        v12 = type metadata accessor for DataFrame(0);
        (*(*(v12 - 8) + 8))(v3, v12);
        v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *(v3 + v13[12] + 8);
        *(v3 + v13[16] + 8);
        v11 = v13[20];
        goto LABEL_9;
      case 6u:
        v14 = type metadata accessor for DataFrame(0);
        (*(*(v14 - 8) + 8))(v3, v14);
        v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *(v3 + v15[12] + 8);
        *(v3 + v15[16] + 8);
        *(v3 + v15[20] + 8);
        v11 = v15[24];
LABEL_9:
        v7 = *(v3 + v11 + 8);
LABEL_10:
        v7;
        break;
      default:
        break;
    }
  }

  v16 = (a1 + a2[8]);
  v17 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v16, v17);
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *v16;
      break;
    case 1:
      v35 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v21 = v16 + *(v35 + 20);
      v22 = type metadata accessor for DataFrame(0);
      v23 = v21;
      v24 = *(*(v22 - 8) + 8);
      v24(v23, v22);
      v24(v16 + *(v35 + 24), v22);
      break;
    case 0:
      v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v16, v19) == 1)
      {
        v20 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v20 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v25 = __swift_instantiateConcreteTypeFromMangledName(v20);
      (*(*(v25 - 8) + 8))(v16, v25);
      break;
  }

  v26 = (a2[9] + a1);
  result = swift_getEnumCaseMultiPayload(v26, v17);
  switch(result)
  {
    case 2:
      return *v26;
    case 1:
      v30 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v31 = v26 + *(v30 + 20);
      v32 = type metadata accessor for DataFrame(0);
      v33 = *(*(v32 - 8) + 8);
      v33(v31, v32);
      return (v33)(v26 + *(v30 + 24), v32);
    case 0:
      v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v26, v28) == 1)
      {
        v29 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v29 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v34 = __swift_instantiateConcreteTypeFromMangledName(v29);
      return (*(*(v34 - 8) + 8))(v26, v34);
  }

  return result;
}

void *initializeWithCopy for MLHandActionClassifier(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v3 = a2[2];
  a1[2] = v3;
  v4 = a3[7];
  __dst = a1 + v4;
  v5 = a2 + v4;
  v6 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);

  v7 = v6;

  v3;
  if (swift_getEnumCaseMultiPayload(v5, v6) == 1)
  {
    v74 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v5, v74);
    switch(EnumCaseMultiPayload)
    {
      case 0u:
        v15 = type metadata accessor for URL(0);
        v77 = v6;
        v16 = *(*(v15 - 8) + 16);
        v9 = __dst;
        v17 = v15;
        v16(__dst, v5);
        v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        (v16)(&__dst[v18[12]], &v5[v18[12]], v17);
        v19 = v18[16];
        *&__dst[v19] = *&v5[v19];
        *&__dst[v19 + 8] = *&v5[v19 + 8];
        v20 = v18[20];
        *&__dst[v20] = *&v5[v20];
        *&__dst[v20 + 8] = *&v5[v20 + 8];
        v21 = v18[24];
        *&__dst[v21] = *&v5[v21];
        *&__dst[v21 + 8] = *&v5[v21 + 8];
        v22 = v18[28];
        *&__dst[v22] = *&v5[v22];
        *&__dst[v22 + 8] = *&v5[v22 + 8];

        v7 = v77;
        goto LABEL_9;
      case 1u:
      case 2u:
        v8 = type metadata accessor for URL(0);
        v9 = __dst;
        (*(*(v8 - 8) + 16))(__dst, v5, v8);
        goto LABEL_12;
      case 3u:
        v23 = *v5;
        v78 = v5[8];
        outlined copy of Result<_DataTable, Error>(*v5, v78);
        v9 = __dst;
        *__dst = v23;
        __dst[8] = v78;
        *(__dst + 2) = *(v5 + 2);
        *(__dst + 3) = *(v5 + 3);
        *(__dst + 4) = *(v5 + 4);
        *(__dst + 5) = *(v5 + 5);
        *(__dst + 6) = *(v5 + 6);
        *(__dst + 7) = *(v5 + 7);

        goto LABEL_9;
      case 4u:
        v13 = *v5;
        v14 = v5[8];
        outlined copy of Result<_DataTable, Error>(*v5, v14);
        *__dst = v13;
        __dst[8] = v14;
        *(__dst + 2) = *(v5 + 2);
        *(__dst + 3) = *(v5 + 3);
        *(__dst + 4) = *(v5 + 4);
        *(__dst + 5) = *(v5 + 5);
        *(__dst + 6) = *(v5 + 6);
        *(__dst + 7) = *(v5 + 7);
        *(__dst + 8) = *(v5 + 8);
        *(__dst + 9) = *(v5 + 9);

        v9 = __dst;
        break;
      case 5u:
        v24 = type metadata accessor for DataFrame(0);
        v9 = __dst;
        (*(*(v24 - 8) + 16))(__dst, v5, v24);
        v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v26 = v25[12];
        *&__dst[v26] = *&v5[v26];
        *&__dst[v26 + 8] = *&v5[v26 + 8];
        v27 = v25[16];
        *&__dst[v27] = *&v5[v27];
        *&__dst[v27 + 8] = *&v5[v27 + 8];
        v28 = v25[20];
        *&__dst[v28] = *&v5[v28];
        *&__dst[v28 + 8] = *&v5[v28 + 8];

LABEL_9:

        break;
      case 6u:
        v29 = type metadata accessor for DataFrame(0);
        v9 = __dst;
        (*(*(v29 - 8) + 16))(__dst, v5, v29);
        v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v31 = v30[12];
        *&__dst[v31] = *&v5[v31];
        *&__dst[v31 + 8] = *&v5[v31 + 8];
        v32 = v30[16];
        *&__dst[v32] = *&v5[v32];
        *&__dst[v32 + 8] = *&v5[v32 + 8];
        v33 = v30[20];
        *&__dst[v33] = *&v5[v33];
        *&__dst[v33 + 8] = *&v5[v33 + 8];
        v34 = v30[24];
        *&__dst[v34] = *&v5[v34];
        *&__dst[v34 + 8] = *&v5[v34 + 8];

        break;
    }

LABEL_12:
    v12 = a2;
    swift_storeEnumTagMultiPayload(v9, v74, EnumCaseMultiPayload);
    swift_storeEnumTagMultiPayload(v9, v7, 1);
    v11 = a1;
  }

  else
  {
    v10 = *(*(v6 - 8) + 64);
    v9 = __dst;
    memcpy(__dst, v5, v10);
    v11 = a1;
    v12 = a2;
  }

  v35 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *(v9 + v35[5]) = *&v5[v35[5]];
  *(v9 + v35[6]) = *&v5[v35[6]];
  *(v9 + v35[7]) = *&v5[v35[7]];
  *(v9 + v35[8]) = *&v5[v35[8]];
  *(v9 + v35[10]) = *&v5[v35[10]];
  v36 = a3[8];
  v37 = (v11 + v36);
  v38 = (v12 + v36);
  __dsta = type metadata accessor for MLClassifierMetrics.Contents(0);
  v39 = swift_getEnumCaseMultiPayload(v38, __dsta);
  if (v39 == 2)
  {
    v45 = *v38;
    swift_errorRetain(v45);
    *v37 = v45;
  }

  else if (v39 == 1)
  {
    *v37 = *v38;
    v75 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v40 = *(v75 + 20);
    v68 = v37 + v40;
    v41 = type metadata accessor for DataFrame(0);
    v42 = v38 + v40;
    v43 = *(*(v41 - 8) + 16);
    v43(v68, v42, v41);
    v44 = v41;
    v12 = a2;
    v43(v37 + *(v75 + 24), v38 + *(v75 + 24), v44);
    v11 = a1;
  }

  else
  {
    v76 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v46 = swift_getEnumCaseMultiPayload(v38, v76);
    v47 = v46 == 1;
    v48 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v46 == 1)
    {
      v48 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v49 = __swift_instantiateConcreteTypeFromMangledName(v48);
    (*(*(v49 - 8) + 16))(v37, v38, v49);
    swift_storeEnumTagMultiPayload(v37, v76, v47);
    v12 = a2;
  }

  swift_storeEnumTagMultiPayload(v37, __dsta, v39);
  v50 = a3[9];
  v51 = (v11 + v50);
  v52 = (v12 + v50);
  v53 = swift_getEnumCaseMultiPayload(v52, __dsta);
  if (v53 == 2)
  {
    v60 = *v52;
    swift_errorRetain(*v52);
    *v51 = v60;
  }

  else if (v53 == 1)
  {
    *v51 = *v52;
    v80 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v54 = v52;
    v55 = *(v80 + 20);
    v70 = v51 + v55;
    v56 = type metadata accessor for DataFrame(0);
    v57 = v54 + v55;
    v58 = *(*(v56 - 8) + 16);
    v58(v70, v57, v56);
    v59 = v56;
    v11 = a1;
    v58(v51 + *(v80 + 24), v54 + *(v80 + 24), v59);
  }

  else
  {
    v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v62 = swift_getEnumCaseMultiPayload(v52, v61);
    v81 = v52;
    v63 = v62 == 1;
    v64 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v62 == 1)
    {
      v64 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v65 = __swift_instantiateConcreteTypeFromMangledName(v64);
    (*(*(v65 - 8) + 16))(v51, v81, v65);
    swift_storeEnumTagMultiPayload(v51, v61, v63);
  }

  swift_storeEnumTagMultiPayload(v51, __dsta, v53);
  return v11;
}