char ColumnDescriptor.ColumnTypeDescriptor.featureType.getter(char a1, char a2)
{
  switch(a2)
  {
    case 0:
      result = 4;
      break;
    case 1:
      result = 5;
      break;
    case 2:
      result = 6;
      break;
    case 3:
      result = 7;
      break;
    case 4:
      result = 8;
      break;
    case 5:
      result = 9;
      break;
    case 6:
      result = a1;
      break;
  }

  return result;
}

uint64_t ColumnDescriptor.ColumnTypeDescriptor.init(_:)(id a1)
{
  v2 = [a1 shape];
  v3 = v2;
  v4 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v3, v4);

  ML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8NSNumberCG_Sis5NeverOTg5071_s8CreateML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm(v5);
  v5;
  if (ML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm[2] <= 1uLL)
  {
    v8 = [a1 dataType];
    if (v8 == &loc_1000E + 2)
    {
      if (ML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm[2])
      {
        goto LABEL_7;
      }
    }

    else if (v8 == &loc_10020)
    {
      if (ML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm[2])
      {
        goto LABEL_7;
      }
    }

    else if (v8 == &loc_2001D + 3)
    {
      if (ML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm[2])
      {
LABEL_7:
        v7 = ML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm[4];
        ML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm;

        return v7;
      }
    }

    else
    {
      if (v8 != &loc_1003C + 4)
      {
        v12 = 0;
        v13 = 0xE000000000000000;
        _StringGuts.grow(_:)(28);
        v10._object = "CreateML/ColumnDescriptor.swift" + 0x8000000000000000;
        v10._countAndFlagsBits = 0xD000000000000019;
        String.append(_:)(v10);
        v14[0] = [a1 dataType];
        v11 = type metadata accessor for MLMultiArrayDataType(0);
        _print_unlocked<A, B>(_:_:)(v14, &v12, v11, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
        v10._countAndFlagsBits = 46;
        v10._object = 0xE100000000000000;
        String.append(_:)(v10);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v12, v13, "CreateML/ColumnDescriptor.swift", 31, 2, 402, 0);
        BUG();
      }

      if (ML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm[2])
      {
        goto LABEL_7;
      }
    }

    ML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm;

    return 1;
  }

  ML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm;
  return 0;
}

void *_s8CreateML16ColumnDescriptorV0c4TypeD0OyAE11TabularData0C0VySDySSxGGKclufCSi_Tt0g5(uint64_t a1)
{
  v105 = v1;
  v112 = a1;
  v115 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<[String : Int]>>);
  v123._object = *(v115 - 1);
  v2 = *(v123._object + 8);
  v3 = alloca(v2);
  v4 = alloca(v2);
  *&v113 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<[String : Int]>>>);
  v5 = *(*(v113 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v106 = &v104;
  v121 = _swiftEmptyArrayStorage;
  v8 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v9 = v8;
  *&v109[0] = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Int]>);
  v11 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[String : Int]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[String : Int]>, &protocol conformance descriptor for Column<A>);
  v107 = v10;
  OptionalColumnProtocol.filled(with:)(v109, v10, v11);
  v9;
  v12 = v106;
  v13 = v115;
  (*(v123._object + 2))(v106, &v104, v115);
  v14 = (v12 + *(v113 + 36));
  v15 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<[String : Int]>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<[String : Int]>>, &protocol conformance descriptor for FilledColumn<A>);
  v116 = v14;
  v111 = v15;
  dispatch thunk of Collection.startIndex.getter(v13, v15);
  (*(v123._object + 1))(&v104, v13);
  v16 = _swiftEmptyDictionarySingleton;
  v117 = 0;
  v108 = 1;
  v17 = 0;
  v123._object = 0;
  while (1)
  {
    v18 = v106;
    v19 = v115;
    dispatch thunk of Collection.endIndex.getter(v115, v111);
    v20 = *v116 == *&v109[0];
    v122 = v16;
    if (v20)
    {
      break;
    }

    v21 = v111;
    *&v113 = dispatch thunk of Collection.subscript.read(v109, v116, v19, v111);
    v23 = *v22;

    (v113)(v109, 0);
    dispatch thunk of Collection.formIndex(after:)(v116, v115, v21);
    v24 = 1 << *(v23 + 32);
    v25 = ~(-1 << v24);
    if (v24 >= 64)
    {
      v25 = -1;
    }

    v123._countAndFlagsBits = v23;
    v26 = *(v23 + 64) & v25;
    v119 = (v24 + 63) >> 6;
    v27 = 0;
    v28 = v117;
    while (1)
    {
      if (v26)
      {
        v29 = v27;
        v16 = v122;
        goto LABEL_26;
      }

      v30 = v27 + 1;
      v16 = v122;
      if (__OFADD__(1, v27))
      {
        BUG();
      }

      if (v30 >= v119)
      {
        goto LABEL_39;
      }

      v26 = *(v123._countAndFlagsBits + 8 * v30 + 64);
      if (v26)
      {
        v29 = v27 + 1;
        goto LABEL_26;
      }

      v29 = v27 + 2;
      if (v27 + 2 >= v119)
      {
        goto LABEL_39;
      }

      v26 = *(v123._countAndFlagsBits + 8 * v30 + 72);
      if (!v26)
      {
        v29 = v27 + 3;
        if (v27 + 3 >= v119)
        {
          goto LABEL_39;
        }

        v26 = *(v123._countAndFlagsBits + 8 * v30 + 80);
        if (!v26)
        {
          v29 = v27 + 4;
          if (v27 + 4 >= v119)
          {
            goto LABEL_39;
          }

          v26 = *(v123._countAndFlagsBits + 8 * v30 + 88);
          if (!v26)
          {
            v29 = v27 + 5;
            if (v27 + 5 >= v119)
            {
              goto LABEL_39;
            }

            v26 = *(v123._countAndFlagsBits + 8 * v30 + 96);
            if (!v26)
            {
              v29 = v27 + 6;
              if (v27 + 6 >= v119)
              {
                goto LABEL_39;
              }

              v26 = *(v123._countAndFlagsBits + 8 * v30 + 104);
              if (!v26)
              {
                break;
              }
            }
          }
        }
      }

LABEL_26:
      v110 = v26;
      _BitScanForward64(&v32, v26);
      v117 = v29;
      v33 = v32 | (v29 << 6);
      v118 = *(*(v123._countAndFlagsBits + 56) + 8 * v33);
      v33 *= 16;
      v34 = *(v123._countAndFlagsBits + 48);
      v35 = *(v34 + v33);
      v120 = v17;
      v36 = v16;
      v37 = *(v34 + v33 + 8);

      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v28, 0);
      v38 = swift_allocObject(&unk_395000, 32, 7);
      *(v38 + 16) = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
      *&v113 = v38;
      *(v38 + 24) = 0;
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v120, v123._object);
      v39 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v36);
      *&v109[0] = v39;
      v120 = v35;
      v122 = v37;
      v123._object = specialized __RawDictionaryStorage.find<A>(_:)(v35, v37);
      v42 = (v41 & 1) == 0;
      v43 = __OFADD__(*(v39 + 16), v42);
      v44 = *(v39 + 16) + v42;
      if (v43)
      {
        BUG();
      }

      v45 = v41;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [Int]>);
      v46 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v44);
      v47 = *&v109[0];
      if (v46)
      {
        v48 = v122;
        v49 = v122;
        v123._object = specialized __RawDictionaryStorage.find<A>(_:)(v120, v122);
        LOBYTE(v51) = v51 & 1;
        if ((v45 & 1) != v51)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v49, v51, v50);
          BUG();
        }
      }

      else
      {
        v48 = v122;
      }

      if ((v45 & 1) == 0)
      {
        v52 = (*(v113 + 16))(v47);
        object = v123._object;
        v47[(v123._object >> 6) + 8] |= 1 << SLOBYTE(v123._object);
        v54 = v47[6];
        v55 = 16 * object;
        *(v54 + v55) = v120;
        *(v54 + v55 + 8) = v48;
        *(v47[7] + 8 * object) = v52;
        v56 = v47[2];
        v43 = __OFADD__(1, v56);
        v57 = v56 + 1;
        if (v43)
        {
          BUG();
        }

        v47[2] = v57;
      }

      v58 = v47[7];
      v122 = v47;

      v59 = v123._object;
      v60 = *(v58 + 8 * v123._object);
      v61 = swift_isUniquelyReferenced_nonNull_native(v60);
      *(v58 + 8 * v59) = v60;
      v120 = v58;
      if (!v61)
      {
        v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v60[2] + 1, 1, v60);
        *(v58 + 8 * v123._object) = v60;
      }

      v62 = v60[2];
      v63 = v110;
      if (v60[3] >> 1 <= v62)
      {
        v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v60[3] >= 2uLL, v62 + 1, 1, v60);
        v63 = v110;
        v60 = v65;
        *(v120 + 8 * v123._object) = v65;
      }

      v60[2] = v62 + 1;
      v60[v62 + 4] = v118;
      v64 = (v63 - 1) & v63;
      v48;
      v26 = v64;
      v28 = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
      v17 = thunk for @callee_guaranteed () -> (@owned [B])specialized partial apply;
      v123._object = v113;
      v27 = v117;
    }

    v31 = v27 + 7;
    while (v31 < v119)
    {
      v26 = *(v123._countAndFlagsBits + 8 * v31++ + 64);
      if (v26)
      {
        v29 = v31 - 1;
        goto LABEL_26;
      }
    }

LABEL_39:
    v117 = v28;
  }

  v120 = v17;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<[String : Int]>>>);
  swift_bridgeObjectRetain_n(v16, 2);
  v66 = specialized _copyCollectionToContiguousArray<A>(_:)(v16);
  v16;
  *&v109[0] = v66;
  v67 = v105;
  specialized MutableCollection<>.sort(by:)(v109);
  v111 = v67;
  if (v67)
  {

    BUG();
  }

  v16;
  v116 = *&v109[0];
  v119 = *(*&v109[0] + 16);
  v68 = v16;
  v69 = v120;
  v70 = v117;
  v71 = v123._object;
  if (v119)
  {
    if (!*(v68 + 16))
    {
      BUG();
    }

    v72 = v116;
    v123._countAndFlagsBits = v116[4];
    v73 = v116[5];
    swift_bridgeObjectRetain_n(v73, 2);
    v118 = v73;
    v74 = specialized __RawDictionaryStorage.find<A>(_:)(v123._countAndFlagsBits, v73);
    if ((v75 & 1) == 0)
    {
      LOBYTE(v76) = v118;
LABEL_71:
      v76;
      BUG();
    }

    v115 = v72 + 4;
    v121 = _swiftEmptyArrayStorage;
    v76 = v118;
    v123._object = v71;
    while (1)
    {
      v77 = *(*(v68 + 56) + 8 * v74);

      v118 = v76;
      v76;
      v78 = *(v77 + 16);
      if (v78)
      {
        v114 = _swiftEmptyArrayStorage;
        v110 = v78;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v78, 0);
        v79 = v114;
        v80 = 0;
        *&v113 = v77;
        do
        {
          v104 = *(v77 + 8 * v80 + 32);
          v81 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
          swift_dynamicCast(v109, &v104, &type metadata for Int, v81, 7);
          v114 = v79;
          v82 = v79[2];
          if (v79[3] >> 1 <= v82)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v79[3] >= 2uLL, v82 + 1, 1);
            v79 = v114;
          }

          ++v80;
          v79[2] = v82 + 1;
          v83 = 4 * v82;
          v84 = v109[0];
          *&v79[v83 + 6] = v109[1];
          *&v79[v83 + 4] = v84;
          v77 = v113;
        }

        while (v110 != v80);
        v113;
      }

      else
      {
        v77;
        v79 = _swiftEmptyArrayStorage;
      }

      ML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5 = _s8CreateML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5(v79);
      if (v86 == -1)
      {
        v121;

        *&v109[0] = 0;
        *(&v109[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(77);
        v95._object = "Unknown MLMultiArrayType " + 0x8000000000000000;
        v95._countAndFlagsBits = 0xD000000000000014;
        String.append(_:)(v95);
        v95._countAndFlagsBits = v123._countAndFlagsBits;
        v96 = v118;
        v95._object = v118;
        String.append(_:)(v95);
        v96;
        v95._countAndFlagsBits = 0x6C6F63206E692027;
        v95._object = 0xED000027206E6D75;
        String.append(_:)(v95);
        v97 = v107;
        v98 = Column.name.getter(v107);
        v100 = v99;
        v95._countAndFlagsBits = v98;
        v95._object = v99;
        String.append(_:)(v95);
        v100;
        v95._object = "Dictionary feature '" + 0x8000000000000000;
        v95._countAndFlagsBits = 0xD000000000000028;
        String.append(_:)(v95);
        v113 = v109[0];
        v101 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v101, 0, 0);
        *v102 = v113;
        *(v102 + 16) = 0;
        *(v102 + 32) = 0;
        *(v102 + 48) = 0;
        swift_willThrow();
        (*(*(v97 - 8) + 8))(v112, v97);
        v122;
        _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v117, 0);
        _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v120, v123._object);
        return v121;
      }

      v87 = ML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5;
      v88 = v86;
      if (!swift_isUniquelyReferenced_nonNull_native(v121))
      {
        v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v121[2] + 1, 1, v121);
      }

      v89 = v121[2];
      if (v121[3] >> 1 <= v89)
      {
        v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v121[3] >= 2uLL, v89 + 1, 1, v121);
      }

      v90 = v121;
      v121[2] = v89 + 1;
      v91 = 4 * v89;
      v90[v91 + 4] = v123._countAndFlagsBits;
      v90[v91 + 5] = v118;
      v90[v91 + 6] = v87;
      LOBYTE(v90[v91 + 7]) = v88;
      if (v108 == v119)
      {
        break;
      }

      if (!v122[2])
      {
        BUG();
      }

      v92 = v108 + 1;
      v93 = v115[2 * v108];
      v76 = v115[2 * v108 + 1];
      swift_bridgeObjectRetain_n(v76, 2);
      v123._countAndFlagsBits = v93;
      v74 = specialized __RawDictionaryStorage.find<A>(_:)(v93, v76);
      v108 = v92;
      v68 = v122;
      if ((v94 & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    LOBYTE(v68) = v122;
    v71 = v123._object;
    v69 = v120;
    v70 = v117;
  }

  (*(*(v107 - 8) + 8))(v112);
  v68;

  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v70, 0);
  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v69, v71);
  return v121;
}

void *_s8CreateML16ColumnDescriptorV0c4TypeD0OyAE11TabularData0C0VySDySSxGGKclufCs5UInt8V_Tt0g5(uint64_t a1)
{
  v105 = v1;
  v112 = a1;
  v115 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<[String : UInt8]>>);
  v124 = *(v115 - 1);
  v2 = *(v124 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  *&v113 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<[String : UInt8]>>>);
  v5 = *(*(v113 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v106 = &v104;
  v121 = _swiftEmptyArrayStorage;
  v8 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for UInt8, &protocol witness table for String);
  v9 = v8;
  *&v109[0] = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : UInt8]>);
  v11 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[String : UInt8]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[String : UInt8]>, &protocol conformance descriptor for Column<A>);
  v107 = v10;
  OptionalColumnProtocol.filled(with:)(v109, v10, v11);
  v9;
  v12 = v106;
  v13 = v115;
  (*(v124 + 16))(v106, &v104, v115);
  v14 = (v12 + *(v113 + 36));
  v15 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<[String : UInt8]>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<[String : UInt8]>>, &protocol conformance descriptor for FilledColumn<A>);
  v116 = v14;
  v111 = v15;
  dispatch thunk of Collection.startIndex.getter(v13, v15);
  (*(v124 + 8))(&v104, v13);
  v16 = _swiftEmptyDictionarySingleton;
  v117 = 0;
  v108 = 1;
  v17 = 0;
  v124 = 0;
  while (1)
  {
    v18 = v106;
    v19 = v115;
    dispatch thunk of Collection.endIndex.getter(v115, v111);
    v20 = *v116 == *&v109[0];
    v122 = v16;
    if (v20)
    {
      break;
    }

    v21 = v111;
    *&v113 = dispatch thunk of Collection.subscript.read(v109, v116, v19, v111);
    v23 = *v22;

    (v113)(v109, 0);
    dispatch thunk of Collection.formIndex(after:)(v116, v115, v21);
    v24 = 1 << *(v23 + 32);
    v25 = ~(-1 << v24);
    if (v24 >= 64)
    {
      v25 = -1;
    }

    v123._countAndFlagsBits = v23;
    v26 = *(v23 + 64) & v25;
    v119 = (v24 + 63) >> 6;
    v27 = 0;
    v28 = v117;
    while (1)
    {
      if (v26)
      {
        v29 = v27;
        v16 = v122;
        goto LABEL_26;
      }

      v30 = v27 + 1;
      v16 = v122;
      if (__OFADD__(1, v27))
      {
        BUG();
      }

      if (v30 >= v119)
      {
        goto LABEL_39;
      }

      v26 = *(v123._countAndFlagsBits + 8 * v30 + 64);
      if (v26)
      {
        v29 = v27 + 1;
        goto LABEL_26;
      }

      v29 = v27 + 2;
      if (v27 + 2 >= v119)
      {
        goto LABEL_39;
      }

      v26 = *(v123._countAndFlagsBits + 8 * v30 + 72);
      if (!v26)
      {
        v29 = v27 + 3;
        if (v27 + 3 >= v119)
        {
          goto LABEL_39;
        }

        v26 = *(v123._countAndFlagsBits + 8 * v30 + 80);
        if (!v26)
        {
          v29 = v27 + 4;
          if (v27 + 4 >= v119)
          {
            goto LABEL_39;
          }

          v26 = *(v123._countAndFlagsBits + 8 * v30 + 88);
          if (!v26)
          {
            v29 = v27 + 5;
            if (v27 + 5 >= v119)
            {
              goto LABEL_39;
            }

            v26 = *(v123._countAndFlagsBits + 8 * v30 + 96);
            if (!v26)
            {
              v29 = v27 + 6;
              if (v27 + 6 >= v119)
              {
                goto LABEL_39;
              }

              v26 = *(v123._countAndFlagsBits + 8 * v30 + 104);
              if (!v26)
              {
                break;
              }
            }
          }
        }
      }

LABEL_26:
      v110 = v26;
      _BitScanForward64(&v32, v26);
      v117 = v29;
      v33 = v32 | (v29 << 6);
      LOBYTE(v118) = *(*(v123._countAndFlagsBits + 56) + v33);
      v33 *= 16;
      v34 = *(v123._countAndFlagsBits + 48);
      v35 = *(v34 + v33);
      v120 = v17;
      v36 = v16;
      v37 = *(v34 + v33 + 8);

      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v28, 0);
      v38 = swift_allocObject(&unk_395028, 32, 7);
      *(v38 + 16) = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
      *&v113 = v38;
      *(v38 + 24) = 0;
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v120, v124);
      v39 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v36);
      *&v109[0] = v39;
      v120 = v35;
      v122 = v37;
      v124 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v37);
      v42 = (v41 & 1) == 0;
      v43 = __OFADD__(*(v39 + 16), v42);
      v44 = *(v39 + 16) + v42;
      if (v43)
      {
        BUG();
      }

      v45 = v41;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [UInt8]>);
      v46 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v44);
      v47 = *&v109[0];
      if (v46)
      {
        v48 = v122;
        v49 = v122;
        v124 = specialized __RawDictionaryStorage.find<A>(_:)(v120, v122);
        LOBYTE(v51) = v51 & 1;
        if ((v45 & 1) != v51)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v49, v51, v50);
          BUG();
        }
      }

      else
      {
        v48 = v122;
      }

      if ((v45 & 1) == 0)
      {
        v52 = (*(v113 + 16))(v47);
        v53 = v124;
        v47[(v124 >> 6) + 8] |= 1 << v124;
        v54 = v47[6];
        v55 = 16 * v53;
        *(v54 + v55) = v120;
        *(v54 + v55 + 8) = v48;
        *(v47[7] + 8 * v53) = v52;
        v56 = v47[2];
        v43 = __OFADD__(1, v56);
        v57 = v56 + 1;
        if (v43)
        {
          BUG();
        }

        v47[2] = v57;
      }

      v58 = v47[7];
      v122 = v47;

      v59 = v124;
      v60 = *(v58 + 8 * v124);
      v61 = swift_isUniquelyReferenced_nonNull_native(v60);
      *(v58 + 8 * v59) = v60;
      v120 = v58;
      if (!v61)
      {
        v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v60 + 2) + 1, 1, v60);
        *(v58 + 8 * v124) = v60;
      }

      v62 = *(v60 + 2);
      v63 = v110;
      if (*(v60 + 3) >> 1 <= v62)
      {
        v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v60 + 3) >= 2uLL, v62 + 1, 1, v60);
        v63 = v110;
        v60 = v65;
        *(v120 + 8 * v124) = v65;
      }

      *(v60 + 2) = v62 + 1;
      v60[v62 + 32] = v118;
      v64 = (v63 - 1) & v63;
      v48;
      v26 = v64;
      v28 = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
      v17 = thunk for @callee_guaranteed () -> (@owned [B])specialized partial apply;
      v124 = v113;
      v27 = v117;
    }

    v31 = v27 + 7;
    while (v31 < v119)
    {
      v26 = *(v123._countAndFlagsBits + 8 * v31++ + 64);
      if (v26)
      {
        v29 = v31 - 1;
        goto LABEL_26;
      }
    }

LABEL_39:
    v117 = v28;
  }

  v120 = v17;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<[String : UInt8]>>>);
  swift_bridgeObjectRetain_n(v16, 2);
  v66 = specialized _copyCollectionToContiguousArray<A>(_:)(v16);
  v16;
  *&v109[0] = v66;
  v67 = v105;
  specialized MutableCollection<>.sort(by:)(v109);
  v111 = v67;
  if (v67)
  {

    BUG();
  }

  v16;
  v116 = *&v109[0];
  v119 = *(*&v109[0] + 16);
  v68 = v16;
  v69 = v120;
  v70 = v117;
  v71 = v124;
  if (v119)
  {
    if (!*(v68 + 16))
    {
      BUG();
    }

    v72 = v116;
    v123._countAndFlagsBits = v116[4];
    v73 = v116[5];
    swift_bridgeObjectRetain_n(v73, 2);
    v118 = v73;
    v74 = specialized __RawDictionaryStorage.find<A>(_:)(v123._countAndFlagsBits, v73);
    if ((v75 & 1) == 0)
    {
      LOBYTE(v76) = v118;
LABEL_71:
      v76;
      BUG();
    }

    v115 = v72 + 4;
    v121 = _swiftEmptyArrayStorage;
    v76 = v118;
    v124 = v71;
    while (1)
    {
      v77 = *(*(v68 + 56) + 8 * v74);

      v118 = v76;
      v76;
      v78 = *(v77 + 16);
      if (v78)
      {
        v114 = _swiftEmptyArrayStorage;
        v110 = v78;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v78, 0);
        v79 = v114;
        v80 = 0;
        *&v113 = v77;
        do
        {
          HIBYTE(v123._object) = *(v77 + v80 + 32);
          v81 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
          swift_dynamicCast(v109, &v123._object + 7, &type metadata for UInt8, v81, 7);
          v114 = v79;
          v82 = v79[2];
          if (v79[3] >> 1 <= v82)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v79[3] >= 2uLL, v82 + 1, 1);
            v79 = v114;
          }

          ++v80;
          v79[2] = v82 + 1;
          v83 = 4 * v82;
          v84 = v109[0];
          *&v79[v83 + 6] = v109[1];
          *&v79[v83 + 4] = v84;
          v77 = v113;
        }

        while (v110 != v80);
        v113;
      }

      else
      {
        v77;
        v79 = _swiftEmptyArrayStorage;
      }

      ML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5 = _s8CreateML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5(v79);
      if (v86 == -1)
      {
        v121;

        *&v109[0] = 0;
        *(&v109[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(77);
        v95._object = "Unknown MLMultiArrayType " + 0x8000000000000000;
        v95._countAndFlagsBits = 0xD000000000000014;
        String.append(_:)(v95);
        v95._countAndFlagsBits = v123._countAndFlagsBits;
        v96 = v118;
        v95._object = v118;
        String.append(_:)(v95);
        v96;
        v95._countAndFlagsBits = 0x6C6F63206E692027;
        v95._object = 0xED000027206E6D75;
        String.append(_:)(v95);
        v97 = v107;
        v98 = Column.name.getter(v107);
        v100 = v99;
        v95._countAndFlagsBits = v98;
        v95._object = v99;
        String.append(_:)(v95);
        v100;
        v95._object = "Dictionary feature '" + 0x8000000000000000;
        v95._countAndFlagsBits = 0xD000000000000028;
        String.append(_:)(v95);
        v113 = v109[0];
        v101 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v101, 0, 0);
        *v102 = v113;
        *(v102 + 16) = 0;
        *(v102 + 32) = 0;
        *(v102 + 48) = 0;
        swift_willThrow();
        (*(*(v97 - 8) + 8))(v112, v97);
        v122;
        _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v117, 0);
        _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v120, v124);
        return v121;
      }

      v87 = ML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5;
      v88 = v86;
      if (!swift_isUniquelyReferenced_nonNull_native(v121))
      {
        v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v121[2] + 1, 1, v121);
      }

      v89 = v121[2];
      if (v121[3] >> 1 <= v89)
      {
        v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v121[3] >= 2uLL, v89 + 1, 1, v121);
      }

      v90 = v121;
      v121[2] = v89 + 1;
      v91 = 4 * v89;
      v90[v91 + 4] = v123._countAndFlagsBits;
      v90[v91 + 5] = v118;
      v90[v91 + 6] = v87;
      LOBYTE(v90[v91 + 7]) = v88;
      if (v108 == v119)
      {
        break;
      }

      if (!v122[2])
      {
        BUG();
      }

      v92 = v108 + 1;
      v93 = v115[2 * v108];
      v76 = v115[2 * v108 + 1];
      swift_bridgeObjectRetain_n(v76, 2);
      v123._countAndFlagsBits = v93;
      v74 = specialized __RawDictionaryStorage.find<A>(_:)(v93, v76);
      v108 = v92;
      v68 = v122;
      if ((v94 & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    LOBYTE(v68) = v122;
    v71 = v124;
    v69 = v120;
    v70 = v117;
  }

  (*(*(v107 - 8) + 8))(v112);
  v68;

  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v70, 0);
  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v69, v71);
  return v121;
}

void *_s8CreateML16ColumnDescriptorV0c4TypeD0OyAE11TabularData0C0VySDySSxGGKclufCs5Int32V_Tt0g5(uint64_t a1)
{
  v104 = v1;
  v112 = a1;
  v115 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<[String : Int32]>>);
  v123._object = *(v115 - 1);
  v2 = *(v123._object + 8);
  v3 = alloca(v2);
  v4 = alloca(v2);
  *&v113 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<[String : Int32]>>>);
  v5 = *(*(v113 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v105 = &v104;
  v121 = _swiftEmptyArrayStorage;
  v8 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Int32, &protocol witness table for String);
  v9 = v8;
  *&v109[0] = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Int32]>);
  v11 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[String : Int32]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[String : Int32]>, &protocol conformance descriptor for Column<A>);
  v106 = v10;
  OptionalColumnProtocol.filled(with:)(v109, v10, v11);
  v9;
  v12 = v105;
  v13 = v115;
  (*(v123._object + 2))(v105, &v104, v115);
  v14 = (v12 + *(v113 + 36));
  v15 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<[String : Int32]>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<[String : Int32]>>, &protocol conformance descriptor for FilledColumn<A>);
  v116 = v14;
  v111 = v15;
  dispatch thunk of Collection.startIndex.getter(v13, v15);
  (*(v123._object + 1))(&v104, v13);
  v16 = _swiftEmptyDictionarySingleton;
  v117 = 0;
  v108 = 1;
  v17 = 0;
  v123._object = 0;
  while (1)
  {
    v18 = v105;
    v19 = v115;
    dispatch thunk of Collection.endIndex.getter(v115, v111);
    v20 = *v116 == *&v109[0];
    v122 = v16;
    if (v20)
    {
      break;
    }

    v21 = v111;
    *&v113 = dispatch thunk of Collection.subscript.read(v109, v116, v19, v111);
    v23 = *v22;

    (v113)(v109, 0);
    dispatch thunk of Collection.formIndex(after:)(v116, v115, v21);
    v24 = 1 << *(v23 + 32);
    v25 = ~(-1 << v24);
    if (v24 >= 64)
    {
      v25 = -1;
    }

    v123._countAndFlagsBits = v23;
    v26 = *(v23 + 64) & v25;
    v119 = (v24 + 63) >> 6;
    v27 = 0;
    v28 = v117;
    while (1)
    {
      if (v26)
      {
        v29 = v27;
        v16 = v122;
        goto LABEL_26;
      }

      v30 = v27 + 1;
      v16 = v122;
      if (__OFADD__(1, v27))
      {
        BUG();
      }

      if (v30 >= v119)
      {
        goto LABEL_39;
      }

      v26 = *(v123._countAndFlagsBits + 8 * v30 + 64);
      if (v26)
      {
        v29 = v27 + 1;
        goto LABEL_26;
      }

      v29 = v27 + 2;
      if (v27 + 2 >= v119)
      {
        goto LABEL_39;
      }

      v26 = *(v123._countAndFlagsBits + 8 * v30 + 72);
      if (!v26)
      {
        v29 = v27 + 3;
        if (v27 + 3 >= v119)
        {
          goto LABEL_39;
        }

        v26 = *(v123._countAndFlagsBits + 8 * v30 + 80);
        if (!v26)
        {
          v29 = v27 + 4;
          if (v27 + 4 >= v119)
          {
            goto LABEL_39;
          }

          v26 = *(v123._countAndFlagsBits + 8 * v30 + 88);
          if (!v26)
          {
            v29 = v27 + 5;
            if (v27 + 5 >= v119)
            {
              goto LABEL_39;
            }

            v26 = *(v123._countAndFlagsBits + 8 * v30 + 96);
            if (!v26)
            {
              v29 = v27 + 6;
              if (v27 + 6 >= v119)
              {
                goto LABEL_39;
              }

              v26 = *(v123._countAndFlagsBits + 8 * v30 + 104);
              if (!v26)
              {
                break;
              }
            }
          }
        }
      }

LABEL_26:
      v110 = v26;
      _BitScanForward64(&v32, v26);
      v117 = v29;
      v33 = v32 | (v29 << 6);
      LODWORD(v118) = *(*(v123._countAndFlagsBits + 56) + 4 * v33);
      v33 *= 16;
      v34 = *(v123._countAndFlagsBits + 48);
      v35 = *(v34 + v33);
      v120 = v17;
      v36 = v16;
      v37 = *(v34 + v33 + 8);

      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v28, 0);
      v38 = swift_allocObject(&unk_395050, 32, 7);
      *(v38 + 16) = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
      *&v113 = v38;
      *(v38 + 24) = 0;
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v120, v123._object);
      v39 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v36);
      *&v109[0] = v39;
      v120 = v35;
      v122 = v37;
      v123._object = specialized __RawDictionaryStorage.find<A>(_:)(v35, v37);
      v42 = (v41 & 1) == 0;
      v43 = __OFADD__(*(v39 + 16), v42);
      v44 = *(v39 + 16) + v42;
      if (v43)
      {
        BUG();
      }

      v45 = v41;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [Int32]>);
      v46 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v44);
      v47 = *&v109[0];
      if (v46)
      {
        v48 = v122;
        v49 = v122;
        v123._object = specialized __RawDictionaryStorage.find<A>(_:)(v120, v122);
        LOBYTE(v51) = v51 & 1;
        if ((v45 & 1) != v51)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v49, v51, v50);
          BUG();
        }
      }

      else
      {
        v48 = v122;
      }

      if ((v45 & 1) == 0)
      {
        v52 = (*(v113 + 16))(v47);
        object = v123._object;
        v47[(v123._object >> 6) + 8] |= 1 << SLOBYTE(v123._object);
        v54 = v47[6];
        v55 = 16 * object;
        *(v54 + v55) = v120;
        *(v54 + v55 + 8) = v48;
        *(v47[7] + 8 * object) = v52;
        v56 = v47[2];
        v43 = __OFADD__(1, v56);
        v57 = v56 + 1;
        if (v43)
        {
          BUG();
        }

        v47[2] = v57;
      }

      v58 = v47[7];
      v122 = v47;

      v59 = v123._object;
      v60 = *(v58 + 8 * v123._object);
      v61 = swift_isUniquelyReferenced_nonNull_native(v60);
      *(v58 + 8 * v59) = v60;
      v120 = v58;
      if (!v61)
      {
        v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v60[2] + 1, 1, v60);
        *(v58 + 8 * v123._object) = v60;
      }

      v62 = v60[2];
      v63 = v110;
      if (v60[3] >> 1 <= v62)
      {
        v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v60[3] >= 2uLL, v62 + 1, 1, v60);
        v63 = v110;
        v60 = v65;
        *(v120 + 8 * v123._object) = v65;
      }

      v60[2] = v62 + 1;
      *(v60 + v62 + 8) = v118;
      v64 = (v63 - 1) & v63;
      v48;
      v26 = v64;
      v28 = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
      v17 = thunk for @callee_guaranteed () -> (@owned [B])specialized partial apply;
      v123._object = v113;
      v27 = v117;
    }

    v31 = v27 + 7;
    while (v31 < v119)
    {
      v26 = *(v123._countAndFlagsBits + 8 * v31++ + 64);
      if (v26)
      {
        v29 = v31 - 1;
        goto LABEL_26;
      }
    }

LABEL_39:
    v117 = v28;
  }

  v120 = v17;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<[String : Int32]>>>);
  swift_bridgeObjectRetain_n(v16, 2);
  v66 = specialized _copyCollectionToContiguousArray<A>(_:)(v16);
  v16;
  *&v109[0] = v66;
  v67 = v104;
  specialized MutableCollection<>.sort(by:)(v109);
  v111 = v67;
  if (v67)
  {

    BUG();
  }

  v16;
  v116 = *&v109[0];
  v119 = *(*&v109[0] + 16);
  v68 = v16;
  v69 = v120;
  v70 = v117;
  v71 = v123._object;
  if (v119)
  {
    if (!*(v68 + 16))
    {
      BUG();
    }

    v72 = v116;
    v123._countAndFlagsBits = v116[4];
    v73 = v116[5];
    swift_bridgeObjectRetain_n(v73, 2);
    v118 = v73;
    v74 = specialized __RawDictionaryStorage.find<A>(_:)(v123._countAndFlagsBits, v73);
    if ((v75 & 1) == 0)
    {
      LOBYTE(v76) = v118;
LABEL_71:
      v76;
      BUG();
    }

    v115 = v72 + 4;
    v121 = _swiftEmptyArrayStorage;
    v76 = v118;
    v123._object = v71;
    while (1)
    {
      v77 = *(*(v68 + 56) + 8 * v74);

      v118 = v76;
      v76;
      v78 = *(v77 + 16);
      if (v78)
      {
        v114 = _swiftEmptyArrayStorage;
        v110 = v78;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v78, 0);
        v79 = v114;
        v80 = 0;
        *&v113 = v77;
        do
        {
          v107 = *(v77 + 4 * v80 + 32);
          v81 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
          swift_dynamicCast(v109, &v107, &type metadata for Int32, v81, 7);
          v114 = v79;
          v82 = v79[2];
          if (v79[3] >> 1 <= v82)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v79[3] >= 2uLL, v82 + 1, 1);
            v79 = v114;
          }

          ++v80;
          v79[2] = v82 + 1;
          v83 = 4 * v82;
          v84 = v109[0];
          *&v79[v83 + 6] = v109[1];
          *&v79[v83 + 4] = v84;
          v77 = v113;
        }

        while (v110 != v80);
        v113;
      }

      else
      {
        v77;
        v79 = _swiftEmptyArrayStorage;
      }

      ML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5 = _s8CreateML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5(v79);
      if (v86 == -1)
      {
        v121;

        *&v109[0] = 0;
        *(&v109[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(77);
        v95._object = "Unknown MLMultiArrayType " + 0x8000000000000000;
        v95._countAndFlagsBits = 0xD000000000000014;
        String.append(_:)(v95);
        v95._countAndFlagsBits = v123._countAndFlagsBits;
        v96 = v118;
        v95._object = v118;
        String.append(_:)(v95);
        v96;
        v95._countAndFlagsBits = 0x6C6F63206E692027;
        v95._object = 0xED000027206E6D75;
        String.append(_:)(v95);
        v97 = v106;
        v98 = Column.name.getter(v106);
        v100 = v99;
        v95._countAndFlagsBits = v98;
        v95._object = v99;
        String.append(_:)(v95);
        v100;
        v95._object = "Dictionary feature '" + 0x8000000000000000;
        v95._countAndFlagsBits = 0xD000000000000028;
        String.append(_:)(v95);
        v113 = v109[0];
        v101 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v101, 0, 0);
        *v102 = v113;
        *(v102 + 16) = 0;
        *(v102 + 32) = 0;
        *(v102 + 48) = 0;
        swift_willThrow();
        (*(*(v97 - 8) + 8))(v112, v97);
        v122;
        _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v117, 0);
        _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v120, v123._object);
        return v121;
      }

      v87 = ML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5;
      v88 = v86;
      if (!swift_isUniquelyReferenced_nonNull_native(v121))
      {
        v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v121[2] + 1, 1, v121);
      }

      v89 = v121[2];
      if (v121[3] >> 1 <= v89)
      {
        v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v121[3] >= 2uLL, v89 + 1, 1, v121);
      }

      v90 = v121;
      v121[2] = v89 + 1;
      v91 = 4 * v89;
      v90[v91 + 4] = v123._countAndFlagsBits;
      v90[v91 + 5] = v118;
      v90[v91 + 6] = v87;
      LOBYTE(v90[v91 + 7]) = v88;
      if (v108 == v119)
      {
        break;
      }

      if (!v122[2])
      {
        BUG();
      }

      v92 = v108 + 1;
      v93 = v115[2 * v108];
      v76 = v115[2 * v108 + 1];
      swift_bridgeObjectRetain_n(v76, 2);
      v123._countAndFlagsBits = v93;
      v74 = specialized __RawDictionaryStorage.find<A>(_:)(v93, v76);
      v108 = v92;
      v68 = v122;
      if ((v94 & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    LOBYTE(v68) = v122;
    v71 = v123._object;
    v69 = v120;
    v70 = v117;
  }

  (*(*(v106 - 8) + 8))(v112);
  v68;

  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v70, 0);
  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v69, v71);
  return v121;
}

void *_s8CreateML16ColumnDescriptorV0c4TypeD0OyAE11TabularData0C0VySDySSxGGKclufCSd_Tt0g5(uint64_t a1)
{
  v105 = v1;
  v112 = a1;
  v115 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<[String : Double]>>);
  v123._object = *(v115 - 1);
  v2 = *(v123._object + 8);
  v3 = alloca(v2);
  v4 = alloca(v2);
  *&v113 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<[String : Double]>>>);
  v5 = *(*(v113 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v106 = &v104;
  v121 = _swiftEmptyArrayStorage;
  v8 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Double, &protocol witness table for String);
  v9 = v8;
  *&v109[0] = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Double]>);
  v11 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[String : Double]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[String : Double]>, &protocol conformance descriptor for Column<A>);
  v107 = v10;
  OptionalColumnProtocol.filled(with:)(v109, v10, v11);
  v9;
  v12 = v106;
  v13 = v115;
  (*(v123._object + 2))(v106, &v104, v115);
  v14 = (v12 + *(v113 + 36));
  v15 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<[String : Double]>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<[String : Double]>>, &protocol conformance descriptor for FilledColumn<A>);
  v116 = v14;
  v111 = v15;
  dispatch thunk of Collection.startIndex.getter(v13, v15);
  (*(v123._object + 1))(&v104, v13);
  v16 = _swiftEmptyDictionarySingleton;
  v117 = 0;
  v108 = 1;
  v17 = 0;
  v123._object = 0;
  while (1)
  {
    v18 = v106;
    v19 = v115;
    dispatch thunk of Collection.endIndex.getter(v115, v111);
    v20 = *v116 == *&v109[0];
    v122 = v16;
    if (v20)
    {
      break;
    }

    v21 = v111;
    *&v113 = dispatch thunk of Collection.subscript.read(v109, v116, v19, v111);
    v23 = *v22;

    (v113)(v109, 0);
    dispatch thunk of Collection.formIndex(after:)(v116, v115, v21);
    v24 = 1 << *(v23 + 32);
    v25 = ~(-1 << v24);
    if (v24 >= 64)
    {
      v25 = -1;
    }

    v123._countAndFlagsBits = v23;
    v26 = *(v23 + 64) & v25;
    v119 = (v24 + 63) >> 6;
    v27 = 0;
    v28 = v117;
    while (1)
    {
      if (v26)
      {
        v29 = v27;
        v16 = v122;
        goto LABEL_26;
      }

      v30 = v27 + 1;
      v16 = v122;
      if (__OFADD__(1, v27))
      {
        BUG();
      }

      if (v30 >= v119)
      {
        goto LABEL_39;
      }

      v26 = *(v123._countAndFlagsBits + 8 * v30 + 64);
      if (v26)
      {
        v29 = v27 + 1;
        goto LABEL_26;
      }

      v29 = v27 + 2;
      if (v27 + 2 >= v119)
      {
        goto LABEL_39;
      }

      v26 = *(v123._countAndFlagsBits + 8 * v30 + 72);
      if (!v26)
      {
        v29 = v27 + 3;
        if (v27 + 3 >= v119)
        {
          goto LABEL_39;
        }

        v26 = *(v123._countAndFlagsBits + 8 * v30 + 80);
        if (!v26)
        {
          v29 = v27 + 4;
          if (v27 + 4 >= v119)
          {
            goto LABEL_39;
          }

          v26 = *(v123._countAndFlagsBits + 8 * v30 + 88);
          if (!v26)
          {
            v29 = v27 + 5;
            if (v27 + 5 >= v119)
            {
              goto LABEL_39;
            }

            v26 = *(v123._countAndFlagsBits + 8 * v30 + 96);
            if (!v26)
            {
              v29 = v27 + 6;
              if (v27 + 6 >= v119)
              {
                goto LABEL_39;
              }

              v26 = *(v123._countAndFlagsBits + 8 * v30 + 104);
              if (!v26)
              {
                break;
              }
            }
          }
        }
      }

LABEL_26:
      v110 = v26;
      _BitScanForward64(&v32, v26);
      v117 = v29;
      v33 = v32 | (v29 << 6);
      v118 = *(*(v123._countAndFlagsBits + 56) + 8 * v33);
      v33 *= 16;
      v34 = *(v123._countAndFlagsBits + 48);
      v35 = *(v34 + v33);
      v120 = v17;
      v36 = v16;
      v37 = *(v34 + v33 + 8);

      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v28, 0);
      v38 = swift_allocObject(&unk_395078, 32, 7);
      *(v38 + 16) = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
      *&v113 = v38;
      *(v38 + 24) = 0;
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v120, v123._object);
      v39 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v36);
      *&v109[0] = v39;
      v120 = v35;
      v122 = v37;
      v123._object = specialized __RawDictionaryStorage.find<A>(_:)(v35, v37);
      v42 = (v41 & 1) == 0;
      v43 = __OFADD__(*(v39 + 16), v42);
      v44 = *(v39 + 16) + v42;
      if (v43)
      {
        BUG();
      }

      v45 = v41;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [Double]>);
      v46 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v44);
      v47 = *&v109[0];
      if (v46)
      {
        v48 = v122;
        v49 = v122;
        v123._object = specialized __RawDictionaryStorage.find<A>(_:)(v120, v122);
        LOBYTE(v51) = v51 & 1;
        if ((v45 & 1) != v51)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v49, v51, v50);
          BUG();
        }
      }

      else
      {
        v48 = v122;
      }

      if ((v45 & 1) == 0)
      {
        v52 = (*(v113 + 16))(v47);
        object = v123._object;
        v47[(v123._object >> 6) + 8] |= 1 << SLOBYTE(v123._object);
        v54 = v47[6];
        v55 = 16 * object;
        *(v54 + v55) = v120;
        *(v54 + v55 + 8) = v48;
        *(v47[7] + 8 * object) = v52;
        v56 = v47[2];
        v43 = __OFADD__(1, v56);
        v57 = v56 + 1;
        if (v43)
        {
          BUG();
        }

        v47[2] = v57;
      }

      v58 = v47[7];
      v122 = v47;

      v59 = v123._object;
      v60 = *(v58 + 8 * v123._object);
      v61 = swift_isUniquelyReferenced_nonNull_native(v60);
      *(v58 + 8 * v59) = v60;
      v120 = v58;
      if (!v61)
      {
        v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v60[2] + 1, 1, v60);
        *(v58 + 8 * v123._object) = v60;
      }

      v62 = v60[2];
      v63 = v110;
      if (v60[3] >> 1 <= v62)
      {
        v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v60[3] >= 2uLL, v62 + 1, 1, v60);
        v63 = v110;
        v60 = v65;
        *(v120 + 8 * v123._object) = v65;
      }

      v60[2] = v62 + 1;
      v60[v62 + 4] = v118;
      v64 = (v63 - 1) & v63;
      v48;
      v26 = v64;
      v28 = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
      v17 = partial apply for specialized thunk for @callee_guaranteed () -> (@owned [B]);
      v123._object = v113;
      v27 = v117;
    }

    v31 = v27 + 7;
    while (v31 < v119)
    {
      v26 = *(v123._countAndFlagsBits + 8 * v31++ + 64);
      if (v26)
      {
        v29 = v31 - 1;
        goto LABEL_26;
      }
    }

LABEL_39:
    v117 = v28;
  }

  v120 = v17;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<[String : Double]>>>);
  swift_bridgeObjectRetain_n(v16, 2);
  v66 = specialized _copyCollectionToContiguousArray<A>(_:)(v16);
  v16;
  *&v109[0] = v66;
  v67 = v105;
  specialized MutableCollection<>.sort(by:)(v109);
  v111 = v67;
  if (v67)
  {

    BUG();
  }

  v16;
  v116 = *&v109[0];
  v119 = *(*&v109[0] + 16);
  v68 = v16;
  v69 = v120;
  v70 = v117;
  v71 = v123._object;
  if (v119)
  {
    if (!*(v68 + 16))
    {
      BUG();
    }

    v72 = v116;
    v123._countAndFlagsBits = v116[4];
    v73 = v116[5];
    swift_bridgeObjectRetain_n(v73, 2);
    v118 = v73;
    v74 = specialized __RawDictionaryStorage.find<A>(_:)(v123._countAndFlagsBits, v73);
    if ((v75 & 1) == 0)
    {
      LOBYTE(v76) = v118;
LABEL_71:
      v76;
      BUG();
    }

    v115 = v72 + 4;
    v121 = _swiftEmptyArrayStorage;
    v76 = v118;
    v123._object = v71;
    while (1)
    {
      v77 = *(*(v68 + 56) + 8 * v74);

      v118 = v76;
      v76;
      v78 = *(v77 + 16);
      if (v78)
      {
        v114 = _swiftEmptyArrayStorage;
        v110 = v78;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v78, 0);
        v79 = v114;
        v80 = 0;
        *&v113 = v77;
        do
        {
          v104 = *(v77 + 8 * v80 + 32);
          v81 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
          swift_dynamicCast(v109, &v104, &type metadata for Double, v81, 7);
          v114 = v79;
          v82 = v79[2];
          if (v79[3] >> 1 <= v82)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v79[3] >= 2uLL, v82 + 1, 1);
            v79 = v114;
          }

          ++v80;
          v79[2] = v82 + 1;
          v83 = 4 * v82;
          v84 = v109[0];
          *&v79[v83 + 6] = v109[1];
          *&v79[v83 + 4] = v84;
          v77 = v113;
        }

        while (v110 != v80);
        v113;
      }

      else
      {
        v77;
        v79 = _swiftEmptyArrayStorage;
      }

      ML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5 = _s8CreateML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5(v79);
      if (v86 == -1)
      {
        v121;

        *&v109[0] = 0;
        *(&v109[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(77);
        v95._object = "Unknown MLMultiArrayType " + 0x8000000000000000;
        v95._countAndFlagsBits = 0xD000000000000014;
        String.append(_:)(v95);
        v95._countAndFlagsBits = v123._countAndFlagsBits;
        v96 = v118;
        v95._object = v118;
        String.append(_:)(v95);
        v96;
        v95._countAndFlagsBits = 0x6C6F63206E692027;
        v95._object = 0xED000027206E6D75;
        String.append(_:)(v95);
        v97 = v107;
        v98 = Column.name.getter(v107);
        v100 = v99;
        v95._countAndFlagsBits = v98;
        v95._object = v99;
        String.append(_:)(v95);
        v100;
        v95._object = "Dictionary feature '" + 0x8000000000000000;
        v95._countAndFlagsBits = 0xD000000000000028;
        String.append(_:)(v95);
        v113 = v109[0];
        v101 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v101, 0, 0);
        *v102 = v113;
        *(v102 + 16) = 0;
        *(v102 + 32) = 0;
        *(v102 + 48) = 0;
        swift_willThrow();
        (*(*(v97 - 8) + 8))(v112, v97);
        v122;
        _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v117, 0);
        _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v120, v123._object);
        return v121;
      }

      v87 = ML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5;
      v88 = v86;
      if (!swift_isUniquelyReferenced_nonNull_native(v121))
      {
        v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v121[2] + 1, 1, v121);
      }

      v89 = v121[2];
      if (v121[3] >> 1 <= v89)
      {
        v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v121[3] >= 2uLL, v89 + 1, 1, v121);
      }

      v90 = v121;
      v121[2] = v89 + 1;
      v91 = 4 * v89;
      v90[v91 + 4] = v123._countAndFlagsBits;
      v90[v91 + 5] = v118;
      v90[v91 + 6] = v87;
      LOBYTE(v90[v91 + 7]) = v88;
      if (v108 == v119)
      {
        break;
      }

      if (!v122[2])
      {
        BUG();
      }

      v92 = v108 + 1;
      v93 = v115[2 * v108];
      v76 = v115[2 * v108 + 1];
      swift_bridgeObjectRetain_n(v76, 2);
      v123._countAndFlagsBits = v93;
      v74 = specialized __RawDictionaryStorage.find<A>(_:)(v93, v76);
      v108 = v92;
      v68 = v122;
      if ((v94 & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    LOBYTE(v68) = v122;
    v71 = v123._object;
    v69 = v120;
    v70 = v117;
  }

  (*(*(v107 - 8) + 8))(v112);
  v68;

  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v70, 0);
  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v69, v71);
  return v121;
}

void *_s8CreateML16ColumnDescriptorV0c4TypeD0OyAE11TabularData0C0VySDySSxGGKclufCSf_Tt0g5(uint64_t a1)
{
  v104 = v1;
  v112 = a1;
  v115 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<[String : Float]>>);
  v123._object = *(v115 - 1);
  v2 = *(v123._object + 8);
  v3 = alloca(v2);
  v4 = alloca(v2);
  *&v113 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<[String : Float]>>>);
  v5 = *(*(v113 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v105 = &v104;
  v121 = _swiftEmptyArrayStorage;
  v8 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Float, &protocol witness table for String);
  v9 = v8;
  *&v109[0] = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Float]>);
  v11 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[String : Float]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[String : Float]>, &protocol conformance descriptor for Column<A>);
  v106 = v10;
  OptionalColumnProtocol.filled(with:)(v109, v10, v11);
  v9;
  v12 = v105;
  v13 = v115;
  (*(v123._object + 2))(v105, &v104, v115);
  v14 = (v12 + *(v113 + 36));
  v15 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<[String : Float]>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<[String : Float]>>, &protocol conformance descriptor for FilledColumn<A>);
  v116 = v14;
  v111 = v15;
  dispatch thunk of Collection.startIndex.getter(v13, v15);
  (*(v123._object + 1))(&v104, v13);
  v16 = _swiftEmptyDictionarySingleton;
  v117 = 0;
  v108 = 1;
  v17 = 0;
  v123._object = 0;
  while (1)
  {
    v18 = v105;
    v19 = v115;
    dispatch thunk of Collection.endIndex.getter(v115, v111);
    v20 = *v116 == *&v109[0];
    v122 = v16;
    if (v20)
    {
      break;
    }

    v21 = v111;
    *&v113 = dispatch thunk of Collection.subscript.read(v109, v116, v19, v111);
    v23 = *v22;

    (v113)(v109, 0);
    dispatch thunk of Collection.formIndex(after:)(v116, v115, v21);
    v24 = 1 << *(v23 + 32);
    v25 = ~(-1 << v24);
    if (v24 >= 64)
    {
      v25 = -1;
    }

    v123._countAndFlagsBits = v23;
    v26 = *(v23 + 64) & v25;
    v119 = (v24 + 63) >> 6;
    v27 = 0;
    v28 = v117;
    while (1)
    {
      if (v26)
      {
        v29 = v27;
        v16 = v122;
        goto LABEL_26;
      }

      v30 = v27 + 1;
      v16 = v122;
      if (__OFADD__(1, v27))
      {
        BUG();
      }

      if (v30 >= v119)
      {
        goto LABEL_39;
      }

      v26 = *(v123._countAndFlagsBits + 8 * v30 + 64);
      if (v26)
      {
        v29 = v27 + 1;
        goto LABEL_26;
      }

      v29 = v27 + 2;
      if (v27 + 2 >= v119)
      {
        goto LABEL_39;
      }

      v26 = *(v123._countAndFlagsBits + 8 * v30 + 72);
      if (!v26)
      {
        v29 = v27 + 3;
        if (v27 + 3 >= v119)
        {
          goto LABEL_39;
        }

        v26 = *(v123._countAndFlagsBits + 8 * v30 + 80);
        if (!v26)
        {
          v29 = v27 + 4;
          if (v27 + 4 >= v119)
          {
            goto LABEL_39;
          }

          v26 = *(v123._countAndFlagsBits + 8 * v30 + 88);
          if (!v26)
          {
            v29 = v27 + 5;
            if (v27 + 5 >= v119)
            {
              goto LABEL_39;
            }

            v26 = *(v123._countAndFlagsBits + 8 * v30 + 96);
            if (!v26)
            {
              v29 = v27 + 6;
              if (v27 + 6 >= v119)
              {
                goto LABEL_39;
              }

              v26 = *(v123._countAndFlagsBits + 8 * v30 + 104);
              if (!v26)
              {
                break;
              }
            }
          }
        }
      }

LABEL_26:
      v110 = v26;
      _BitScanForward64(&v32, v26);
      v117 = v29;
      v33 = v32 | (v29 << 6);
      LODWORD(v118) = *(*(v123._countAndFlagsBits + 56) + 4 * v33);
      v33 *= 16;
      v34 = *(v123._countAndFlagsBits + 48);
      v35 = *(v34 + v33);
      v120 = v17;
      v36 = v16;
      v37 = *(v34 + v33 + 8);

      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v28, 0);
      v38 = swift_allocObject(&unk_3950A0, 32, 7);
      *(v38 + 16) = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
      *&v113 = v38;
      *(v38 + 24) = 0;
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v120, v123._object);
      v39 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v36);
      *&v109[0] = v39;
      v120 = v35;
      v122 = v37;
      v123._object = specialized __RawDictionaryStorage.find<A>(_:)(v35, v37);
      v42 = (v41 & 1) == 0;
      v43 = __OFADD__(*(v39 + 16), v42);
      v44 = *(v39 + 16) + v42;
      if (v43)
      {
        BUG();
      }

      v45 = v41;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [Float]>);
      v46 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v44);
      v47 = *&v109[0];
      if (v46)
      {
        v48 = v122;
        v49 = v122;
        v123._object = specialized __RawDictionaryStorage.find<A>(_:)(v120, v122);
        LOBYTE(v51) = v51 & 1;
        if ((v45 & 1) != v51)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v49, v51, v50);
          BUG();
        }
      }

      else
      {
        v48 = v122;
      }

      if ((v45 & 1) == 0)
      {
        v52 = (*(v113 + 16))(v47);
        object = v123._object;
        v47[(v123._object >> 6) + 8] |= 1 << SLOBYTE(v123._object);
        v54 = v47[6];
        v55 = 16 * object;
        *(v54 + v55) = v120;
        *(v54 + v55 + 8) = v48;
        *(v47[7] + 8 * object) = v52;
        v56 = v47[2];
        v43 = __OFADD__(1, v56);
        v57 = v56 + 1;
        if (v43)
        {
          BUG();
        }

        v47[2] = v57;
      }

      v58 = v47[7];
      v122 = v47;

      v59 = v123._object;
      v60 = *(v58 + 8 * v123._object);
      v61 = swift_isUniquelyReferenced_nonNull_native(v60);
      *(v58 + 8 * v59) = v60;
      v120 = v58;
      if (!v61)
      {
        v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v60[2] + 1, 1, v60);
        *(v58 + 8 * v123._object) = v60;
      }

      v62 = v60[2];
      v63 = v110;
      if (v60[3] >> 1 <= v62)
      {
        v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v60[3] >= 2uLL, v62 + 1, 1, v60);
        v63 = v110;
        v60 = v65;
        *(v120 + 8 * v123._object) = v65;
      }

      v60[2] = v62 + 1;
      *(v60 + v62 + 8) = v118;
      v64 = (v63 - 1) & v63;
      v48;
      v26 = v64;
      v28 = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
      v17 = thunk for @callee_guaranteed () -> (@owned [B])specialized partial apply;
      v123._object = v113;
      v27 = v117;
    }

    v31 = v27 + 7;
    while (v31 < v119)
    {
      v26 = *(v123._countAndFlagsBits + 8 * v31++ + 64);
      if (v26)
      {
        v29 = v31 - 1;
        goto LABEL_26;
      }
    }

LABEL_39:
    v117 = v28;
  }

  v120 = v17;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<[String : Float]>>>);
  swift_bridgeObjectRetain_n(v16, 2);
  v66 = specialized _copyCollectionToContiguousArray<A>(_:)(v16);
  v16;
  *&v109[0] = v66;
  v67 = v104;
  specialized MutableCollection<>.sort(by:)(v109);
  v111 = v67;
  if (v67)
  {

    BUG();
  }

  v16;
  v116 = *&v109[0];
  v119 = *(*&v109[0] + 16);
  v68 = v16;
  v69 = v120;
  v70 = v117;
  v71 = v123._object;
  if (v119)
  {
    if (!*(v68 + 16))
    {
      BUG();
    }

    v72 = v116;
    v123._countAndFlagsBits = v116[4];
    v73 = v116[5];
    swift_bridgeObjectRetain_n(v73, 2);
    v118 = v73;
    v74 = specialized __RawDictionaryStorage.find<A>(_:)(v123._countAndFlagsBits, v73);
    if ((v75 & 1) == 0)
    {
      LOBYTE(v76) = v118;
LABEL_71:
      v76;
      BUG();
    }

    v115 = v72 + 4;
    v121 = _swiftEmptyArrayStorage;
    v76 = v118;
    v123._object = v71;
    while (1)
    {
      v77 = *(*(v68 + 56) + 8 * v74);

      v118 = v76;
      v76;
      v78 = *(v77 + 16);
      if (v78)
      {
        v114 = _swiftEmptyArrayStorage;
        v110 = v78;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v78, 0);
        v79 = v114;
        v80 = 0;
        *&v113 = v77;
        do
        {
          v107 = *(v77 + 4 * v80 + 32);
          v81 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
          swift_dynamicCast(v109, &v107, &type metadata for Float, v81, 7);
          v114 = v79;
          v82 = v79[2];
          if (v79[3] >> 1 <= v82)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v79[3] >= 2uLL, v82 + 1, 1);
            v79 = v114;
          }

          ++v80;
          v79[2] = v82 + 1;
          v83 = 4 * v82;
          v84 = v109[0];
          *&v79[v83 + 6] = v109[1];
          *&v79[v83 + 4] = v84;
          v77 = v113;
        }

        while (v110 != v80);
        v113;
      }

      else
      {
        v77;
        v79 = _swiftEmptyArrayStorage;
      }

      ML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5 = _s8CreateML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5(v79);
      if (v86 == -1)
      {
        v121;

        *&v109[0] = 0;
        *(&v109[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(77);
        v95._object = "Unknown MLMultiArrayType " + 0x8000000000000000;
        v95._countAndFlagsBits = 0xD000000000000014;
        String.append(_:)(v95);
        v95._countAndFlagsBits = v123._countAndFlagsBits;
        v96 = v118;
        v95._object = v118;
        String.append(_:)(v95);
        v96;
        v95._countAndFlagsBits = 0x6C6F63206E692027;
        v95._object = 0xED000027206E6D75;
        String.append(_:)(v95);
        v97 = v106;
        v98 = Column.name.getter(v106);
        v100 = v99;
        v95._countAndFlagsBits = v98;
        v95._object = v99;
        String.append(_:)(v95);
        v100;
        v95._object = "Dictionary feature '" + 0x8000000000000000;
        v95._countAndFlagsBits = 0xD000000000000028;
        String.append(_:)(v95);
        v113 = v109[0];
        v101 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v101, 0, 0);
        *v102 = v113;
        *(v102 + 16) = 0;
        *(v102 + 32) = 0;
        *(v102 + 48) = 0;
        swift_willThrow();
        (*(*(v97 - 8) + 8))(v112, v97);
        v122;
        _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v117, 0);
        _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v120, v123._object);
        return v121;
      }

      v87 = ML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5;
      v88 = v86;
      if (!swift_isUniquelyReferenced_nonNull_native(v121))
      {
        v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v121[2] + 1, 1, v121);
      }

      v89 = v121[2];
      if (v121[3] >> 1 <= v89)
      {
        v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v121[3] >= 2uLL, v89 + 1, 1, v121);
      }

      v90 = v121;
      v121[2] = v89 + 1;
      v91 = 4 * v89;
      v90[v91 + 4] = v123._countAndFlagsBits;
      v90[v91 + 5] = v118;
      v90[v91 + 6] = v87;
      LOBYTE(v90[v91 + 7]) = v88;
      if (v108 == v119)
      {
        break;
      }

      if (!v122[2])
      {
        BUG();
      }

      v92 = v108 + 1;
      v93 = v115[2 * v108];
      v76 = v115[2 * v108 + 1];
      swift_bridgeObjectRetain_n(v76, 2);
      v123._countAndFlagsBits = v93;
      v74 = specialized __RawDictionaryStorage.find<A>(_:)(v93, v76);
      v108 = v92;
      v68 = v122;
      if ((v94 & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    LOBYTE(v68) = v122;
    v71 = v123._object;
    v69 = v120;
    v70 = v117;
  }

  (*(*(v106 - 8) + 8))(v112);
  v68;

  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v70, 0);
  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v69, v71);
  return v121;
}

void *_s8CreateML16ColumnDescriptorV0c4TypeD0OyAE11TabularData0C0VySDySSxSgGGKclufCyp_Tt0g5(uint64_t a1)
{
  v99 = v1;
  v109 = a1;
  v110 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<[String : Any?]>>);
  v118 = *(v110 - 8);
  v2 = *(v118 + 8);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v119 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<[String : Any?]>>>);
  v5 = *(*(v119 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v112._object = v97;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
  v116 = _swiftEmptyArrayStorage;
  v9 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v8, &protocol witness table for String);
  v10 = v9;
  *&v104 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Any?]>);
  v12 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[String : Any?]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[String : Any?]>, &protocol conformance descriptor for Column<A>);
  v103 = v11;
  OptionalColumnProtocol.filled(with:)(&v104, v11, v12);
  v13 = v10;
  object = v112._object;
  v13;
  v15 = v110;
  (*(v118 + 2))(object, v97, v110);
  v16 = &object[*(v119 + 36)];
  v17 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<[String : Any?]>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<[String : Any?]>>, &protocol conformance descriptor for FilledColumn<A>);
  v108 = v16;
  v98 = v17;
  dispatch thunk of Collection.startIndex.getter(v15, v17);
  (*(v118 + 1))(v97, v15);
  v113 = _swiftEmptyDictionarySingleton;
  v118 = 0;
  v107 = 1;
  v119 = 0;
  v115 = 0;
LABEL_2:
  v18 = v110;
  v19 = v98;
  dispatch thunk of Collection.endIndex.getter(v110, v98);
  v20 = v113;
  if (*v108 != v104)
  {
    *&v111 = dispatch thunk of Collection.subscript.read(&v104, v108, v18, v19);
    v117 = *v21;

    (v111)(&v104, 0);
    dispatch thunk of Collection.formIndex(after:)(v108, v18, v19);
    v22 = 1 << *(v117 + 32);
    v23 = ~(-1 << v22);
    if (v22 >= 64)
    {
      v23 = -1;
    }

    i = *(v117 + 64) & v23;
    v114 = (v22 + 63) >> 6;
    v25 = 0;
    v26 = v118;
    while (1)
    {
      if (i)
      {
        goto LABEL_10;
      }

      v27 = __OFADD__(1, v25++);
      if (v27)
      {
        BUG();
      }

      if (v25 >= v114)
      {
LABEL_39:
        v118 = v26;

        goto LABEL_2;
      }

      i = *(v117 + 8 * v25 + 64);
      if (i)
      {
LABEL_10:
        v28 = v25;
      }

      else
      {
        v28 = v25 + 1;
        if (v25 + 1 >= v114)
        {
          goto LABEL_39;
        }

        i = *(v117 + 8 * v25 + 72);
        if (!i)
        {
          v28 = v25 + 2;
          if (v25 + 2 >= v114)
          {
            goto LABEL_39;
          }

          i = *(v117 + 8 * v25 + 80);
          if (!i)
          {
            v28 = v25 + 3;
            if (v25 + 3 >= v114)
            {
              goto LABEL_39;
            }

            i = *(v117 + 8 * v25 + 88);
            if (!i)
            {
              v28 = v25 + 4;
              if (v25 + 4 >= v114)
              {
                goto LABEL_39;
              }

              i = *(v117 + 8 * v25 + 96);
              if (!i)
              {
                v28 = v25 + 5;
                if (v25 + 5 >= v114)
                {
                  goto LABEL_39;
                }

                for (i = *(v117 + 8 * v25 + 104); !i; i = *(v117 + 8 * v28 + 64))
                {
                  v27 = __OFADD__(1, v28++);
                  if (v27)
                  {
                    BUG();
                  }

                  if (v28 >= v114)
                  {
                    goto LABEL_39;
                  }
                }
              }
            }
          }
        }
      }

      v112._countAndFlagsBits = i;
      _BitScanForward64(&v29, i);
      v106 = v28;
      v30 = v29 | (v28 << 6);
      v31 = *(v117 + 48);
      v32 = v26;
      v33 = *(v31 + 16 * v30 + 8);
      *&v104 = *(v31 + 16 * v30);
      *(&v104 + 1) = v33;
      outlined init with copy of Any?(*(v117 + 56) + 32 * v30, v105);
      v34 = *(&v104 + 1);
      v118 = v104;
      v100 = v105[0];
      v101 = v105[1];

      v26 = v32;
      if (!v34)
      {
        goto LABEL_39;
      }

      v105[0] = v101;
      v104 = v100;
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v32, 0);
      outlined init with copy of Any?(&v104, v97);
      v35 = swift_allocObject(&unk_3950C8, 32, 7);
      *(v35 + 16) = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
      *&v111 = v35;
      *(v35 + 24) = 0;
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v119, v115);
      v36 = v113;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v113);
      v102 = v36;
      v115 = v34;
      v119 = specialized __RawDictionaryStorage.find<A>(_:)(v118, v34);
      v39 = (v38 & 1) == 0;
      v27 = __OFADD__(v36[2], v39);
      v40 = v36[2] + v39;
      if (v27)
      {
        BUG();
      }

      v41 = v38;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [Any?]>);
      v42 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v40);
      v43 = v102;
      if (v42)
      {
        v44 = v115;
        v119 = specialized __RawDictionaryStorage.find<A>(_:)(v118, v115);
        LOBYTE(v46) = v46 & 1;
        countAndFlagsBits = v112._countAndFlagsBits;
        if ((v41 & 1) != v46)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v44, v46, v45);
          BUG();
        }
      }

      else
      {
        countAndFlagsBits = v112._countAndFlagsBits;
      }

      if ((v41 & 1) == 0)
      {
        v48 = (*(v111 + 16))(v43);
        v49 = v119;
        v43[(v119 >> 6) + 8] |= 1 << v119;
        v50 = v43[6];
        v51 = 16 * v49;
        *(v50 + v51) = v118;
        *(v50 + v51 + 8) = v115;
        *(v43[7] + 8 * v49) = v48;
        v52 = v43[2];
        v27 = __OFADD__(1, v52);
        v53 = v52 + 1;
        if (v27)
        {
          BUG();
        }

        v43[2] = v53;
      }

      v54 = v43[7];
      v113 = v43;

      v55 = v119;
      v56 = *(v54 + 8 * v119);
      v57 = swift_isUniquelyReferenced_nonNull_native(v56);
      *(v54 + 8 * v55) = v56;
      v118 = v54;
      if (!v57)
      {
        v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56[2] + 1, 1, v56);
        *(v54 + 8 * v119) = v56;
      }

      v58 = v56[2];
      if (v56[3] >> 1 <= v58)
      {
        v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v56[3] >= 2uLL, v58 + 1, 1, v56);
        *(v118 + v119) = v56;
      }

      i = (countAndFlagsBits - 1) & countAndFlagsBits;
      v56[2] = v58 + 1;
      v59 = 4 * v58;
      v60 = v97[0];
      *&v56[v59 + 6] = v97[1];
      *&v56[v59 + 4] = v60;
      v115;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v104, &demangling cache variable for type metadata for Any?);
      v26 = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
      v119 = thunk for @callee_guaranteed () -> (@owned [B])specialized partial apply;
      v115 = v111;
      v25 = v106;
    }
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v112._object, &demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<[String : Any?]>>>);
  swift_bridgeObjectRetain_n(v20, 2);
  v61 = specialized _copyCollectionToContiguousArray<A>(_:)(v20);
  v20;
  *&v104 = v61;
  v62 = v99;
  specialized MutableCollection<>.sort(by:)(&v104);
  if (v62)
  {

    BUG();
  }

  v20;
  v63 = v104;
  v117 = *(v104 + 16);
  v64 = v115;
  if (v117)
  {
    if (!v20[2])
    {
      BUG();
    }

    v108 = 0;
    v112._countAndFlagsBits = *(v104 + 32);
    v65 = *(v104 + 40);
    swift_bridgeObjectRetain_n(v65, 2);
    *&v111 = v65;
    v66 = specialized __RawDictionaryStorage.find<A>(_:)(v112._countAndFlagsBits, v65);
    if ((v67 & 1) == 0)
    {
      LOBYTE(v68) = v111;
LABEL_72:
      v68;
      BUG();
    }

    v112._object = v63;
    v114 = v63 + 32;
    v116 = _swiftEmptyArrayStorage;
    v68 = v111;
    v115 = v64;
    while (1)
    {
      v69 = *(v20[7] + 8 * v66);

      *&v111 = v68;
      v68;
      v70 = *(v69 + 16);
      if (v70)
      {
        *&v100 = _swiftEmptyArrayStorage;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v70, 0);
        v71 = v100;
        v106 = v69;
        v72 = v69 + 32;
        do
        {
          outlined init with copy of Any?(v72, &v104);
          *&v100 = v71;
          v73 = v71[2];
          v74 = v71[3];
          v75 = v73 + 1;
          if (v74 >> 1 <= v73)
          {
            v110 = v73 + 1;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v74 >= 2, v73 + 1, 1);
            v75 = v110;
            v71 = v100;
          }

          v71[2] = v75;
          v76 = 4 * v73;
          v77 = v104;
          *&v71[v76 + 6] = v105[0];
          *&v71[v76 + 4] = v77;
          v72 += 32;
          --v70;
        }

        while (v70);
        v106;
      }

      else
      {
        v69;
        v71 = _swiftEmptyArrayStorage;
      }

      ML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5 = _s8CreateML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5(v71);
      if (v79 == -1)
      {
        v116;

        *&v104 = 0;
        *(&v104 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(77);
        v88._object = "Unknown MLMultiArrayType " + 0x8000000000000000;
        v88._countAndFlagsBits = 0xD000000000000014;
        String.append(_:)(v88);
        v88._countAndFlagsBits = v112._countAndFlagsBits;
        v89 = v111;
        v88._object = v111;
        String.append(_:)(v88);
        v89;
        v88._countAndFlagsBits = 0x6C6F63206E692027;
        v88._object = 0xED000027206E6D75;
        String.append(_:)(v88);
        v90 = v103;
        v91 = Column.name.getter(v103);
        v93 = v92;
        v88._countAndFlagsBits = v91;
        v88._object = v92;
        String.append(_:)(v88);
        v93;
        v88._object = "Dictionary feature '" + 0x8000000000000000;
        v88._countAndFlagsBits = 0xD000000000000028;
        String.append(_:)(v88);
        v111 = v104;
        v94 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v94, 0, 0);
        *v95 = v111;
        *(v95 + 16) = 0;
        *(v95 + 32) = 0;
        *(v95 + 48) = 0;
        swift_willThrow();
        (*(*(v90 - 8) + 8))(v109, v90);
        v113;
        _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v118, 0);
        _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v119, v115);
        return v116;
      }

      v80 = ML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5;
      v81 = v79;
      if (!swift_isUniquelyReferenced_nonNull_native(v116))
      {
        v116 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v116[2] + 1, 1, v116);
      }

      v82 = v116[2];
      if (v116[3] >> 1 <= v82)
      {
        v116 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v116[3] >= 2uLL, v82 + 1, 1, v116);
      }

      v83 = v116;
      v116[2] = v82 + 1;
      v84 = 4 * v82;
      v83[v84 + 4] = v112._countAndFlagsBits;
      v83[v84 + 5] = v111;
      v83[v84 + 6] = v80;
      LOBYTE(v83[v84 + 7]) = v81;
      if (v107 == v117)
      {
        break;
      }

      if (!v113[2])
      {
        BUG();
      }

      v85 = v107 + 1;
      v86 = *(v114 + 16 * v107);
      v68 = *(v114 + 16 * v107 + 8);
      swift_bridgeObjectRetain_n(v68, 2);
      v112._countAndFlagsBits = v86;
      v66 = specialized __RawDictionaryStorage.find<A>(_:)(v86, v68);
      v107 = v85;
      v20 = v113;
      if ((v87 & 1) == 0)
      {
        goto LABEL_72;
      }
    }

    LOBYTE(v20) = v113;
    v64 = v115;
  }

  (*(*(v103 - 8) + 8))(v109);
  v20;

  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v118, 0);
  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v119, v64);
  return v116;
}

char static ColumnDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6, void *a7, char a8)
{
  if (a5 ^ a1 | a6 ^ a2 && (_stringCompareWithSmolCheck(_:_:expecting:)(a1, a2, a5, a6, 0) & 1) == 0)
  {
    return 0;
  }

  else
  {
    return static ColumnDescriptor.ColumnTypeDescriptor.== infix(_:_:)(a3, a4, a7, a8);
  }
}

char ColumnDescriptor.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 ^ 0x656D616E | a2 ^ 0xE400000000000000 && (_stringCompareWithSmolCheck(_:_:expecting:)(1701667182, 0xE400000000000000, a1, a2, 0) & 1) == 0)
  {
    if (a1 ^ 0x6373654465707974 | a2 ^ 0xEE00726F74706972)
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)(0x6373654465707974, 0xEE00726F74706972, a1, a2, 0);
      a2;
      return 2 - (v3 & 1);
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

uint64_t ColumnDescriptor.CodingKeys.stringValue.getter(char a1)
{
  result = 1701667182;
  if (a1)
  {
    return 0x6373654465707974;
  }

  return result;
}

uint64_t ColumnDescriptor.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v17 = v5;
  v23 = a5;
  v21 = a4;
  v18 = a3;
  v19 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedEncodingContainer<ColumnDescriptor.CodingKeys>);
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v10);
  v11 = lazy protocol witness table accessor for type ColumnDescriptor.CodingKeys and conformance ColumnDescriptor.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)(&unk_395390, &unk_395390, v11, v10, v20);
  v24 = 0;
  KeyedEncodingContainer.encode(_:forKey:)(a2, v18, &v24, v6);
  if (!v5)
  {
    v15 = v21;
    v16 = v23;
    v25[0] = 1;
    v13 = lazy protocol witness table accessor for type ColumnDescriptor.ColumnTypeDescriptor and conformance ColumnDescriptor.ColumnTypeDescriptor();
    KeyedEncodingContainer.encode<A>(_:forKey:)(&v15, v25, v6, &type metadata for ColumnDescriptor.ColumnTypeDescriptor, v13);
  }

  return (*(v22 + 8))(&v14, v6);
}

uint64_t ColumnDescriptor.init(from:)(void *a1)
{
  v19 = v1;
  v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedDecodingContainer<ColumnDescriptor.CodingKeys>);
  v13 = *(v21 - 8);
  v2 = *(v13 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  v6 = lazy protocol witness table accessor for type ColumnDescriptor.CodingKeys and conformance ColumnDescriptor.CodingKeys();
  v17 = &v13;
  dispatch thunk of Decoder.container<A>(keyedBy:)(&unk_395390, &unk_395390, v6, v5, v18);
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v7 = v13;
  v19 = a1;
  v20 = 0;
  v14 = KeyedDecodingContainer.decode(_:forKey:)(&v20, v21);
  v22[0] = 1;
  v9 = v8;
  v10 = lazy protocol witness table accessor for type ColumnDescriptor.ColumnTypeDescriptor and conformance ColumnDescriptor.ColumnTypeDescriptor();
  v18 = v9;
  v11 = v17;

  KeyedDecodingContainer.decode<A>(_:forKey:)(&type metadata for ColumnDescriptor.ColumnTypeDescriptor, v22, v21, &type metadata for ColumnDescriptor.ColumnTypeDescriptor, v10);
  (*(v7 + 8))(v11, v21);
  LOBYTE(v7) = v15;
  LODWORD(v21) = v16;
  outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v15, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  v18;
  outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v7, v21);
  return v14;
}

char static ColumnDescriptor.ColumnTypeDescriptor.== infix(_:_:)(void *a1, char a2, void *a3, char a4)
{
  switch(a2)
  {
    case 0:
      if (a4)
      {
        goto LABEL_20;
      }

      return a1 == a3;
    case 1:
      if (a4 == 1)
      {
        return a1 == a3;
      }

      goto LABEL_20;
    case 2:
      if (a4 != 2)
      {
        goto LABEL_20;
      }

      return a1 == a3;
    case 3:
      if (a4 != 3)
      {
        goto LABEL_20;
      }

      return a1 == a3;
    case 4:
      if (a4 != 4)
      {
        goto LABEL_20;
      }

      result = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(a1, a3);
      break;
    case 5:
      if (a4 != 5)
      {
        goto LABEL_20;
      }

      result = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CreateML16ColumnDescriptorV_Tt1g5(a1, a3);
      break;
    case 6:
      switch(a1)
      {
        case 0uLL:
          JUMPOUT(0x2A0887);
        case 1uLL:
          v5 = a4 == 6;
          v6 = a3 == (&dword_0 + 1);
          break;
        case 2uLL:
          v5 = a4 == 6;
          v6 = a3 == (&dword_0 + 2);
          break;
        case 3uLL:
          v5 = a4 == 6;
          v6 = a3 == (&dword_0 + 3);
          break;
      }

      result = 1;
      if (!v6 || !v5)
      {
LABEL_20:
        result = 0;
      }

      break;
  }

  return result;
}

char protocol witness for CodingKey.init(stringValue:) in conformance ColumnDescriptor.CodingKeys(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = ColumnDescriptor.CodingKeys.init(stringValue:)(a1, a2);
  *v3 = result;
  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance ColumnDescriptor(void *a1)
{
  v3 = v1;
  result = ColumnDescriptor.init(from:)(a1);
  if (!v2)
  {
    *v3 = result;
    *(v3 + 8) = v5;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
  }

  return result;
}

uint64_t _s8CreateML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v41 = a1;
  v42 = v2;
  if (v2)
  {
    v3 = a1 + 32;

    v4 = _swiftEmptyArrayStorage;
    do
    {
      outlined init with copy of Any?(v3, &v35);
      v34 = v36;
      v33 = v35;
      if (*(&v36 + 1))
      {
        outlined init with take of Any(&v33, &v37);
        outlined init with take of Any(&v37, &v33);
        if (!swift_isUniquelyReferenced_nonNull_native(v4))
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
        }

        v5 = v4[2];
        if (v4[3] >> 1 <= v5)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v4[3] >= 2uLL, v5 + 1, 1, v4);
        }

        v4[2] = v5 + 1;
        outlined init with take of Any(&v33, &v4[4 * v5 + 4]);
      }

      else
      {
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v33, &demangling cache variable for type metadata for Any?);
      }

      v3 += 32;
      --v2;
    }

    while (v2);
    v1 = v41;
    v41;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  specialized Collection.first.getter(v4);
  v4;
  if (!v38)
  {
    v1;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v37, &demangling cache variable for type metadata for Any?);
    return 0;
  }

  outlined init with take of Any(&v37, &v35);
  v6 = *(&v36 + 1);
  v7 = __swift_project_boxed_opaque_existential_0Tm(&v35, *(&v36 + 1));
  DynamicType = swift_getDynamicType(v7, v6, 1);
  v9 = DynamicType;
  v10 = v42;
  if (v42)
  {
    v40 = DynamicType;
    v11 = v1 + 32;

    do
    {
      outlined init with copy of Any?(v11, &v37);
      if (v38)
      {
        outlined init with copy of Any?(&v37, &v33);
        v12 = *(&v34 + 1);
        if (!*(&v34 + 1))
        {
          BUG();
        }

        v13 = __swift_project_boxed_opaque_existential_0Tm(&v33, *(&v34 + 1));
        v14 = swift_getDynamicType(v13, v12, 1);
        __swift_destroy_boxed_opaque_existential_1Tm(&v33);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v37, &demangling cache variable for type metadata for Any?);
        if (v14 != v40)
        {
          swift_bridgeObjectRelease_n(v41, 2);
          goto LABEL_28;
        }
      }

      else
      {
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v37, &demangling cache variable for type metadata for Any?);
      }

      v11 += 32;
      --v10;
    }

    while (v10);
    v1 = v41;
    v41;
    v9 = v40;
  }

  if (swift_dynamicCastMetatype(v9, &type metadata for Int))
  {
    v1;
    __swift_destroy_boxed_opaque_existential_1Tm(&v35);
    return 0;
  }

  if (swift_dynamicCastMetatype(v9, &type metadata for Float))
  {
    v1;
    __swift_destroy_boxed_opaque_existential_1Tm(&v35);
    return 2;
  }

  if (swift_dynamicCastMetatype(v9, &type metadata for Double) || (v17 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr), swift_dynamicCastMetatype(v9, v17)))
  {
    v1;
    __swift_destroy_boxed_opaque_existential_1Tm(&v35);
    return 3;
  }

  if (!swift_dynamicCastMetatype(v9, &type metadata for String))
  {
    v1;
LABEL_28:
    __swift_destroy_boxed_opaque_existential_1Tm(&v35);
    return 0;
  }

  v18 = *(v1 + 16);
  if (v18)
  {
    v19 = v1;
    v39 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    v20 = v39;
    v21 = v19 + 32;
    v32 = &type metadata for Any + 8;
    do
    {
      outlined init with copy of Any?(v21, &v37);
      outlined init with copy of Any?(&v37, &v29);
      v40 = v18;
      if (v30)
      {
        outlined init with take of Any(&v29, &v33);
        swift_dynamicCast(v31, &v33, v32, &type metadata for String, 7);
        v22 = v31[0];
        v42 = v31[1];
      }

      else
      {
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v29, &demangling cache variable for type metadata for Any?);
        v22 = 0;
        v42 = 0xE000000000000000;
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v37, &demangling cache variable for type metadata for Any?);
      v39 = v20;
      v23 = v20[2];
      if (v20[3] >> 1 <= v23)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20[3] >= 2uLL, v23 + 1, 1);
        v20 = v39;
      }

      v20[2] = v23 + 1;
      v24 = 2 * v23;
      v20[v24 + 4] = v22;
      v20[v24 + 5] = v42;
      v21 += 32;
      v18 = v40 - 1;
    }

    while (v40 != 1);
    v25 = v41;
  }

  else
  {
    v25 = v1;
    v20 = _swiftEmptyArrayStorage;
  }

  v26 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v20);

  v27 = specialized _copyCollectionToContiguousArray<A>(_:)(v26);
  v26;
  *&v37 = v27;
  specialized MutableCollection<>.sort(by:)(&v37);
  v25;
  v15 = v37;
  __swift_destroy_boxed_opaque_existential_1Tm(&v35);
  v26;
  return v15;
}

CreateML::ColumnDescriptor::FeatureType_optional __swiftcall ColumnDescriptor.FeatureType.init(rawValue:)(Swift::String rawValue)
{
  v1 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ColumnDescriptor.FeatureType.init(rawValue:), rawValue);
  rawValue._object;
  result.value = CreateML_ColumnDescriptor_FeatureType_unknownDefault;
  if (v1 < 0xA)
  {
    return v1;
  }

  return result;
}

unint64_t ColumnDescriptor.FeatureType.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      result = 7630441;
      break;
    case 1:
      result = 0x363174616F6C66;
      break;
    case 2:
      result = 0x74616F6C66;
      break;
    case 3:
      result = 0x656C62756F64;
      break;
    case 4:
      result = 0x6570616853746E69;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x69726F6765746163;
      break;
    case 9:
      result = 0x616E6F6974636964;
      break;
  }

  return result;
}

CreateML::ColumnDescriptor::ColumnTypeDescriptor::CodingKeys_optional __swiftcall ColumnDescriptor.ColumnTypeDescriptor.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v1 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ColumnDescriptor.ColumnTypeDescriptor.CodingKeys.init(rawValue:), stringValue);
  stringValue._object;
  result.value = CreateML_ColumnDescriptor_ColumnTypeDescriptor_CodingKeys_unknownDefault;
  if (v1 < 4)
  {
    return v1;
  }

  return result;
}

uint64_t ColumnDescriptor.ColumnTypeDescriptor.CodingKeys.stringValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      result = 0x54746E656D656C65;
      break;
    case 1:
      result = 1702521203;
      break;
    case 2:
      result = 0x69726F6765746163;
      break;
    case 3:
      result = 0x7470697263736564;
      break;
  }

  return result;
}

CreateML::ColumnDescriptor::FeatureType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ColumnDescriptor.FeatureType(Swift::String *a1)
{
  v2 = v1;
  result.value = ColumnDescriptor.FeatureType.init(rawValue:)(*a1).value;
  v2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ColumnDescriptor.FeatureType()
{
  v2 = v0;
  result = ColumnDescriptor.FeatureType.rawValue.getter(*v1);
  *v2 = result;
  v2[1] = v4;
  return result;
}

CreateML::ColumnDescriptor::ColumnTypeDescriptor::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys(Swift::String *a1)
{
  v2 = v1;
  result.value = ColumnDescriptor.ColumnTypeDescriptor.CodingKeys.init(stringValue:)(*a1).value;
  v2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys()
{
  v2 = v0;
  result = ColumnDescriptor.ColumnTypeDescriptor.CodingKeys.stringValue.getter(*v1);
  *v2 = result;
  v2[1] = v4;
  return result;
}

CreateML::ColumnDescriptor::ColumnTypeDescriptor::CodingKeys_optional protocol witness for CodingKey.init(stringValue:) in conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys(Swift::String a1)
{
  v2 = v1;
  result.value = ColumnDescriptor.ColumnTypeDescriptor.CodingKeys.init(stringValue:)(a1).value;
  v2->value = result.value;
  return result;
}

void *ColumnDescriptor.ColumnTypeDescriptor.init(from:)(void *a1)
{
  v23 = v1;
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedDecodingContainer<ColumnDescriptor.ColumnTypeDescriptor.CodingKeys>);
  v25 = *(v24 - 8);
  v2 = *(v25 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = a1[3];
  v6 = a1[4];
  v27 = a1;
  v7 = __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  v8 = lazy protocol witness table accessor for type ColumnDescriptor.ColumnTypeDescriptor.CodingKeys and conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys();
  v22 = &v21;
  v9 = v23;
  dispatch thunk of Decoder.container<A>(keyedBy:)(&type metadata for ColumnDescriptor.ColumnTypeDescriptor.CodingKeys, &type metadata for ColumnDescriptor.ColumnTypeDescriptor.CodingKeys, v8, v5, v6);
  if (!v9)
  {
    v10 = v25;
    v28[0] = 0;
    v11 = lazy protocol witness table accessor for type ColumnDescriptor.FeatureType and conformance ColumnDescriptor.FeatureType();
    v12 = v24;
    v13 = v22;
    KeyedDecodingContainer.decode<A>(_:forKey:)(&type metadata for ColumnDescriptor.FeatureType, v28, v24, &type metadata for ColumnDescriptor.FeatureType, v11);
    v14 = v12;
    v16 = v13;
    switch(v26)
    {
      case 0:
        (*(v10 + 8))(v13, v14);
        v7 = 0;
        break;
      case 1:
        (*(v10 + 8))(v13, v14);
        v20 = 1;
        goto LABEL_10;
      case 2:
        (*(v10 + 8))(v13, v14);
        v20 = 2;
        goto LABEL_10;
      case 3:
        (*(v10 + 8))(v13, v14);
        v20 = 3;
LABEL_10:
        v7 = v20;
        break;
      case 4:
      case 5:
      case 6:
      case 7:
        LOBYTE(v26) = 1;
        v7 = KeyedDecodingContainer.decode(_:forKey:)(&v26, v14);
        (*(v25 + 8))(v16, v14);
        break;
      case 8:
        v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
        v28[0] = 2;
        v19 = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
        KeyedDecodingContainer.decode<A>(_:forKey:)(v18, v28, v14, v18, v19);
        (*(v25 + 8))(v13, v14);
        v7 = v26;
        break;
      case 9:
        v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [ColumnDescriptor]);
        v28[0] = 3;
        v17 = lazy protocol witness table accessor for type [ColumnDescriptor] and conformance <A> [A](&lazy protocol witness table cache variable for type [ColumnDescriptor] and conformance <A> [A], lazy protocol witness table accessor for type ColumnDescriptor and conformance ColumnDescriptor, &protocol conformance descriptor for <A> [A]);
        KeyedDecodingContainer.decode<A>(_:forKey:)(v23, v28, v14, v23, v17);
        (*(v10 + 8))(v13, v24);
        v7 = v26;
        break;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  return v7;
}

uint64_t ColumnDescriptor.ColumnTypeDescriptor.encode(to:)(void *a1, uint64_t a2, int a3)
{
  v16[1] = v3;
  LODWORD(v21) = a3;
  v18 = a2;
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedEncodingContainer<ColumnDescriptor.ColumnTypeDescriptor.CodingKeys>);
  v19 = *(v17 - 8);
  v4 = *(v19 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v7);
  v9 = lazy protocol witness table accessor for type ColumnDescriptor.ColumnTypeDescriptor.CodingKeys and conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)(&type metadata for ColumnDescriptor.ColumnTypeDescriptor.CodingKeys, &type metadata for ColumnDescriptor.ColumnTypeDescriptor.CodingKeys, v9, v7, v8);
  LOBYTE(v20) = ColumnDescriptor.ColumnTypeDescriptor.featureType.getter(a2, v21);
  v22[0] = 0;
  v10 = lazy protocol witness table accessor for type ColumnDescriptor.FeatureType and conformance ColumnDescriptor.FeatureType();
  KeyedEncodingContainer.encode<A>(_:forKey:)(&v20, v22, v17, &type metadata for ColumnDescriptor.FeatureType, v10);
  if (!v3)
  {
    switch(v21)
    {
      case 0:
      case 1:
      case 2:
      case 3:
        LOBYTE(v20) = 1;
        KeyedEncodingContainer.encode(_:forKey:)(v18, &v20, v17);
        break;
      case 4:
        v20 = v18;
        v22[0] = 2;
        v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
        v21 = 0;
        v12 = v14;
        v13 = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
        goto LABEL_6;
      case 5:
        v20 = v18;
        v22[0] = 3;
        v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [ColumnDescriptor]);
        v21 = 0;
        v12 = v11;
        v13 = lazy protocol witness table accessor for type [ColumnDescriptor] and conformance <A> [A](&lazy protocol witness table cache variable for type [ColumnDescriptor] and conformance <A> [A], lazy protocol witness table accessor for type ColumnDescriptor and conformance ColumnDescriptor, &protocol conformance descriptor for <A> [A]);
LABEL_6:
        KeyedEncodingContainer.encode<A>(_:forKey:)(&v20, v22, v17, v12, v13);
        break;
      case 6:
        return (*(v19 + 8))(v16, v17);
    }
  }

  return (*(v19 + 8))(v16, v17);
}

void *protocol witness for Decodable.init(from:) in conformance ColumnDescriptor.ColumnTypeDescriptor(void *a1)
{
  v3 = v1;
  result = ColumnDescriptor.ColumnTypeDescriptor.init(from:)(a1);
  if (!v2)
  {
    *v3 = result;
    *(v3 + 8) = v5;
  }

  return result;
}

void outlined consume of MLMultiArray??(char *a1)
{
  if (a1 != &dword_0 + 2)
  {
  }
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

uint64_t outlined consume of ColumnDescriptor.ColumnTypeDescriptor(char a1, char a2)
{
  if ((a2 & 0xFE) == 4)
  {
    return a1;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ColumnDescriptor.ColumnTypeDescriptor.CodingKeys and conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor.CodingKeys and conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor.CodingKeys and conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ColumnDescriptor.ColumnTypeDescriptor.CodingKeys, &type metadata for ColumnDescriptor.ColumnTypeDescriptor.CodingKeys);
    lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor.CodingKeys and conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor.CodingKeys and conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor.CodingKeys and conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ColumnDescriptor.ColumnTypeDescriptor.CodingKeys, &type metadata for ColumnDescriptor.ColumnTypeDescriptor.CodingKeys);
    lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor.CodingKeys and conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor.CodingKeys and conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor.CodingKeys and conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ColumnDescriptor.ColumnTypeDescriptor.CodingKeys, &type metadata for ColumnDescriptor.ColumnTypeDescriptor.CodingKeys);
    lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor.CodingKeys and conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor.CodingKeys and conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor.CodingKeys and conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ColumnDescriptor.ColumnTypeDescriptor.CodingKeys, &type metadata for ColumnDescriptor.ColumnTypeDescriptor.CodingKeys);
    lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor.CodingKeys and conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ColumnDescriptor.FeatureType and conformance ColumnDescriptor.FeatureType()
{
  result = lazy protocol witness table cache variable for type ColumnDescriptor.FeatureType and conformance ColumnDescriptor.FeatureType;
  if (!lazy protocol witness table cache variable for type ColumnDescriptor.FeatureType and conformance ColumnDescriptor.FeatureType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ColumnDescriptor.FeatureType, &type metadata for ColumnDescriptor.FeatureType);
    lazy protocol witness table cache variable for type ColumnDescriptor.FeatureType and conformance ColumnDescriptor.FeatureType = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColumnDescriptor.FeatureType and conformance ColumnDescriptor.FeatureType;
  if (!lazy protocol witness table cache variable for type ColumnDescriptor.FeatureType and conformance ColumnDescriptor.FeatureType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ColumnDescriptor.FeatureType, &type metadata for ColumnDescriptor.FeatureType);
    lazy protocol witness table cache variable for type ColumnDescriptor.FeatureType and conformance ColumnDescriptor.FeatureType = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColumnDescriptor.FeatureType and conformance ColumnDescriptor.FeatureType;
  if (!lazy protocol witness table cache variable for type ColumnDescriptor.FeatureType and conformance ColumnDescriptor.FeatureType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ColumnDescriptor.FeatureType, &type metadata for ColumnDescriptor.FeatureType);
    lazy protocol witness table cache variable for type ColumnDescriptor.FeatureType and conformance ColumnDescriptor.FeatureType = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColumnDescriptor.FeatureType and conformance ColumnDescriptor.FeatureType;
  if (!lazy protocol witness table cache variable for type ColumnDescriptor.FeatureType and conformance ColumnDescriptor.FeatureType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ColumnDescriptor.FeatureType, &type metadata for ColumnDescriptor.FeatureType);
    lazy protocol witness table cache variable for type ColumnDescriptor.FeatureType and conformance ColumnDescriptor.FeatureType = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!*a1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [String]);
    result = swift_getWitnessTable(a3, v5);
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ColumnDescriptor.FeatureType(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 < 0xF7)
    {
      goto LABEL_13;
    }

    v2 = a2 + 9;
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
      v5 = *a1 + (v4 << 8) - 10;
    }

    else
    {
LABEL_13:
      v6 = *a1;
      v7 = v6 - 10;
      v8 = v6 < 0xA;
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

uint64_t storeEnumTagSinglePayload for ColumnDescriptor.FeatureType(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  LODWORD(result) = 0;
  if (a3 >= 0xF7)
  {
    v4 = a3 + 9;
    LODWORD(result) = 1;
    if (v4 >= 0xFF00)
    {
      LODWORD(result) = 2 * (v4 >= 0xFFFF00) + 2;
    }
  }

  if (a2 > 0xF6)
  {
    v5 = a2 - 247;
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
          *a1 = a2 + 9;
        }

        break;
      case 5:
        JUMPOUT(0x2A1D4CLL);
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ColumnDescriptor.ColumnTypeDescriptor(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  outlined copy of ColumnDescriptor.ColumnTypeDescriptor(*a2, v3);
  *a1 = v2;
  *(a1 + 8) = v3;
  return a1;
}

uint64_t *assignWithCopy for ColumnDescriptor.ColumnTypeDescriptor(uint64_t *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of ColumnDescriptor.ColumnTypeDescriptor(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 2);
  *(a1 + 8) = v4;
  outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v5, v6);
  return a1;
}

uint64_t __swift_memcpy9_8(uint64_t a1, uint64_t a2)
{
  result = a1;
  *(a1 + 8) = *(a2 + 8);
  *a1 = *a2;
  return result;
}

uint64_t *assignWithTake for ColumnDescriptor.ColumnTypeDescriptor(uint64_t *a1, uint64_t *a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 2);
  *(a1 + 8) = v3;
  outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v4, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for ColumnDescriptor.ColumnTypeDescriptor(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 9))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v2 = -1;
      if (*(a1 + 8) >= 7u)
      {
        v2 = *(a1 + 8) ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for ColumnDescriptor.ColumnTypeDescriptor(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *a1 = a2 - 250;
    *(a1 + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(a1 + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(a1 + 9) = 0;
    }

    if (a2)
    {
      *(a1 + 8) = -a2;
    }
  }
}

uint64_t getEnumTag for ColumnDescriptor.ColumnTypeDescriptor(uint64_t a1)
{
  result = (*a1 + 6);
  if (*(a1 + 8) < 6u)
  {
    return *(a1 + 8);
  }

  return result;
}

void destructiveInjectEnumTag for ColumnDescriptor.ColumnTypeDescriptor(uint64_t a1, unsigned int a2)
{
  if (a2 >= 6)
  {
    *a1 = a2 - 6;
    LOBYTE(a2) = 6;
  }

  *(a1 + 8) = a2;
}

uint64_t initializeWithCopy for ColumnDescriptor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);

  outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v2, v3);
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  return a1;
}

uint64_t assignWithCopy for ColumnDescriptor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v3;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v4, v5);
  v6 = *(a1 + 16);
  *(a1 + 16) = v4;
  v7 = *(a1 + 24);
  *(a1 + 24) = v5;
  outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v6, v7);
  return a1;
}

_OWORD *__swift_memcpy25_8(_OWORD *a1, __int128 *a2)
{
  result = a1;
  v3 = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = v3;
  return result;
}

uint64_t assignWithTake for ColumnDescriptor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  v3;
  v4 = *(a2 + 24);
  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a1 + 24);
  *(a1 + 24) = v4;
  outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for ColumnDescriptor(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*(a1 + 8) & 0xFFFFFFFF00000001) != 0 ? -1 : *(a1 + 8) >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for ColumnDescriptor(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 24) = 0;
    if (a3 < 0)
    {
      *(a1 + 25) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 25) = 0;
    }

    if (a2)
    {
      *(a1 + 8) = 2 * (a2 - 1);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ColumnDescriptor.CodingKeys and conformance ColumnDescriptor.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ColumnDescriptor.CodingKeys and conformance ColumnDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type ColumnDescriptor.CodingKeys and conformance ColumnDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ColumnDescriptor.CodingKeys, &unk_395390);
    lazy protocol witness table cache variable for type ColumnDescriptor.CodingKeys and conformance ColumnDescriptor.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColumnDescriptor.CodingKeys and conformance ColumnDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type ColumnDescriptor.CodingKeys and conformance ColumnDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ColumnDescriptor.CodingKeys, &unk_395390);
    lazy protocol witness table cache variable for type ColumnDescriptor.CodingKeys and conformance ColumnDescriptor.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColumnDescriptor.CodingKeys and conformance ColumnDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type ColumnDescriptor.CodingKeys and conformance ColumnDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ColumnDescriptor.CodingKeys, &unk_395390);
    lazy protocol witness table cache variable for type ColumnDescriptor.CodingKeys and conformance ColumnDescriptor.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColumnDescriptor.CodingKeys and conformance ColumnDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type ColumnDescriptor.CodingKeys and conformance ColumnDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ColumnDescriptor.CodingKeys, &unk_395390);
    lazy protocol witness table cache variable for type ColumnDescriptor.CodingKeys and conformance ColumnDescriptor.CodingKeys = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ColumnDescriptor.ColumnTypeDescriptor and conformance ColumnDescriptor.ColumnTypeDescriptor()
{
  result = lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor and conformance ColumnDescriptor.ColumnTypeDescriptor;
  if (!lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor and conformance ColumnDescriptor.ColumnTypeDescriptor)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ColumnDescriptor.ColumnTypeDescriptor, &type metadata for ColumnDescriptor.ColumnTypeDescriptor);
    lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor and conformance ColumnDescriptor.ColumnTypeDescriptor = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor and conformance ColumnDescriptor.ColumnTypeDescriptor;
  if (!lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor and conformance ColumnDescriptor.ColumnTypeDescriptor)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ColumnDescriptor.ColumnTypeDescriptor, &type metadata for ColumnDescriptor.ColumnTypeDescriptor);
    lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor and conformance ColumnDescriptor.ColumnTypeDescriptor = result;
  }

  return result;
}

void MLSoundClassifier.Model.export(internalMetadata:)(uint64_t *a1)
{
  v24[1] = v1;
  v26 = type metadata accessor for ModelKind(0);
  v25 = *(v26 - 8);
  v3 = *(v25 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v27 = v24;
  v28 = type metadata accessor for Model(0);
  v6 = *(v28 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v31 = v24;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v32 = a1;
  MLSoundClassifier.Model.createFeatureExtractorModel(internalMetadata:)(a1);
  if (!v2)
  {
    v29 = v24;
    v30 = v6;
    MLSoundClassifier.Model.createClassifierModel(internalMetadata:)(v32);
    v32 = 0;
    v12 = Model.outputs.getter();
    Model.inputs.setter(v12);
    Model.init()();
    v13 = Model.inputs.getter();
    Model.inputs.setter(v13);
    v14 = Model.outputs.getter();
    Model.outputs.setter(v14);
    v15 = Model.predictedFeatureName.getter();
    Model.predictedFeatureName.setter(v15, v16);
    v17 = Model.predictedProbabilitiesName.getter();
    Model.predictedProbabilitiesName.setter(v17, v18);
    v19 = Model.nestedModels.getter();
    v20 = Model.nestedModels.getter();
    v24[0] = v19;
    specialized Array.append<A>(contentsOf:)(v20);
    v21 = v27;
    PipelineClassifierConfiguration.init(models:names:)(v24[0], _swiftEmptyArrayStorage);
    (*(v25 + 104))(v21, enum case for ModelKind.pipelineClassifier(_:), v26);
    Model.kind.setter(v21);
    v22 = *(v30 + 8);
    v23 = v28;
    v22(v31, v28);
    v22(v29, v23);
  }
}

void MLSoundClassifier.Model.createFeatureExtractorModel(internalMetadata:)(uint64_t *a1)
{
  v86 = v2;
  v67 = v3;
  v82 = a1;
  v80 = v1;
  v84 = type metadata accessor for AudioFeaturePrint(0);
  v85 = *(v84 - 8);
  v4 = *(v85 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v88 = &v64;
  v81 = type metadata accessor for Model(0);
  v7 = *(v81 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v74 = &v64;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v76 = &v64;
  v90 = type metadata accessor for URL.DirectoryHint(0);
  v68 = *(v90 - 1);
  v13 = *(v68 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v69 = &v64;
  v71 = type metadata accessor for UUID(0);
  v72 = *(v71 - 8);
  v16 = *(v72 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v73 = &v64;
  v89 = type metadata accessor for URL(0);
  v79 = *(v89 - 8);
  v19 = *(v79 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v75 = &v64;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v24 = alloca(v19);
  v25 = alloca(v19);
  v70 = &v64;
  v26 = alloca(v19);
  v27 = alloca(v19);
  v87 = &v64;
  v28 = objc_opt_self(NSFileManager);
  v29 = [v28 defaultManager];
  v30 = v29;
  NSFileManager.createTemporaryModelDirectory()();

  if (!v31)
  {
    v86 = 0;
    v83 = v7;
    v32 = [v28 defaultManager];
    v33 = v32;
    v77 = &v64;
    NSFileManager.temporaryModelDirectory.getter();

    v34 = v73;
    UUID.init()();
    v35 = UUID.uuidString.getter();
    v37 = v36;
    v78 = v36;
    (*(v72 + 8))(v34, v71);
    v65[0] = v35;
    v65[1] = v37;
    v38 = v69;
    v39 = v68;
    (*(v68 + 104))(v69, enum case for URL.DirectoryHint.inferFromPath(_:), v90);
    v40 = lazy protocol witness table accessor for type String and conformance String();
    v41 = v70;
    v42 = v77;
    URL.appending<A>(component:directoryHint:)(v65, v38, &type metadata for String, v40);
    (*(v39 + 8))(v38, v90);
    v78;
    v43 = *(v79 + 8);
    v44 = v89;
    v43(v42, v89);
    URL.appendingPathExtension(_:)(0x6C65646F6D6C6D2ELL, 0xE800000000000000);
    v90 = v43;
    v43(v41, v44);
    v45 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
    v46 = v67;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v67 + *(v45 + 28), v65, &demangling cache variable for type metadata for Any?);
    if (v65[3])
    {
      v47 = swift_dynamicCast(v66, v65, &type metadata for Any + 8, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, 6);
      v48 = v88;
      if (v47)
      {
        v49 = v66[8];
        v66[16];
        if (!v49)
        {
          v50 = v76;
          v51 = v86;
          static MLSoundClassifier.VGGishFeatureExtractor.buildCoreMLSpec(outputName:)(0x7365727574616566, 0xE800000000000000);
          if (!v51)
          {
            v63 = Model.metadata.getter();
            specialized Dictionary._Variant.merge<A>(_:uniquingKeysWith:)(v63, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v82);
            v90(v87, v89);
            (*(v83 + 32))(v80, v50, v81);
            return;
          }

          v52 = v89;
          v53 = v87;
          goto LABEL_11;
        }
      }
    }

    else
    {
      outlined destroy of Any?(v65);
      v48 = v88;
    }

    v54 = MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.getter();
    AudioFeaturePrint.init(windowDuration:overlapFactor:)(v54, *(v46 + *(v45 + 24)));
    v55 = lazy protocol witness table accessor for type AudioFeaturePrint and conformance AudioFeaturePrint();
    v53 = v87;
    v56 = v84;
    v57 = v86;
    TemporalTransformer.export(to:)(v87, v84, v55);
    if (!v57)
    {
      v58 = v75;
      v59 = v89;
      (*(v79 + 16))(v75, v53, v89);
      v60 = v74;
      Model.init(contentsOf:)(v58);
      v61 = Model.metadata.getter();
      specialized Dictionary._Variant.merge<A>(_:uniquingKeysWith:)(v61, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v82);
      (*(v83 + 32))(v80, v60, v81);
      $defer #1 () in MLSoundClassifier.Model.createFeatureExtractorModel(internalMetadata:)();
      (*(v85 + 8))(v88, v84);
      v62 = v53;
      v52 = v59;
LABEL_12:
      v90(v62, v52);
      return;
    }

    (*(v85 + 8))(v48, v56);
    v52 = v89;
LABEL_11:
    v62 = v53;
    goto LABEL_12;
  }
}

void MLSoundClassifier.Model.createClassifierModel(internalMetadata:)(uint64_t *a1)
{
  v98 = v2;
  v71 = v3;
  v90 = a1;
  v87 = v1;
  v89 = type metadata accessor for Model(0);
  v88 = *(v89 - 8);
  v4 = *(v88 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v86 = v70;
  v81 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
  v80 = *(v81 - 8);
  v7 = *(v80 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v82 = v70;
  v84 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
  v83 = *(v84 - 8);
  v10 = *(v83 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v85 = v70;
  v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v13 = *(*(v73 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v72 = v70;
  v96 = type metadata accessor for URL.DirectoryHint(0);
  v74 = *(v96 - 1);
  v16 = *(v74 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v75 = v70;
  v77 = type metadata accessor for UUID(0);
  v78 = *(v77 - 8);
  v19 = *(v78 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v79 = v70;
  v95 = type metadata accessor for URL(0);
  v94 = *(v95 - 8);
  v22 = *(v94 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v25 = alloca(v22);
  v26 = alloca(v22);
  v27 = alloca(v22);
  v28 = alloca(v22);
  v76 = v70;
  v29 = alloca(v22);
  v30 = alloca(v22);
  v97 = v70;
  v31 = objc_opt_self(NSFileManager);
  v32 = [v31 defaultManager];
  v33 = v32;
  NSFileManager.createTemporaryModelDirectory()();

  if (!v34)
  {
    v93 = v70;
    v98 = 0;
    v35 = [v31 defaultManager];
    v36 = v35;
    v91 = v70;
    NSFileManager.temporaryModelDirectory.getter();

    v37 = v79;
    UUID.init()();
    v38 = UUID.uuidString.getter();
    v40 = v39;
    v92 = v39;
    (*(v78 + 8))(v37, v77);
    v70[0] = v38;
    v70[1] = v40;
    v41 = v75;
    v42 = v74;
    (*(v74 + 104))(v75, enum case for URL.DirectoryHint.inferFromPath(_:), v96);
    v43 = lazy protocol witness table accessor for type String and conformance String();
    v44 = v76;
    v45 = v91;
    URL.appending<A>(component:directoryHint:)(v70, v41, &type metadata for String, v43);
    (*(v42 + 8))(v41, v96);
    v92;
    v46 = *(v94 + 8);
    v47 = v95;
    (v46)(v45, v95);
    URL.appendingPathExtension(_:)(0x6C65646F6D6C6D2ELL, 0xE800000000000000);
    v96 = v46;
    (v46)(v44, v47);
    v48 = type metadata accessor for MLSoundClassifier.Model(0);
    v49 = v72;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v48 + 20) + v71, v72, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    if (swift_getEnumCaseMultiPayload(v49, v73) == 1)
    {
      v50 = v82;
      v51 = v49;
      v52 = v81;
      v53 = v80;
      (*(v80 + 32))(v82, v51, v81);
      v54 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FullyConnectedNetworkClassifierModel<Float, String> and conformance FullyConnectedNetworkClassifierModel<A, B>, &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>, &protocol conformance descriptor for FullyConnectedNetworkClassifierModel<A, B>);
      v55 = v98;
      Transformer.export(to:)(v97, v52, v54);
      if (v55)
      {
        (*(v53 + 8))(v50, v52);
LABEL_7:
        v62 = v95;
        v63 = v97;
        goto LABEL_12;
      }

      v98 = 0;
      (*(v53 + 8))(v50, v52);
    }

    else
    {
      v56 = v85;
      v57 = v49;
      v58 = v84;
      v59 = v83;
      (*(v83 + 32))(v85, v57, v84);
      v60 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type LogisticRegressionClassifierModel<Float, String> and conformance LogisticRegressionClassifierModel<A, B>, &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>, &protocol conformance descriptor for LogisticRegressionClassifierModel<A, B>);
      v61 = v98;
      Transformer.export(to:)(v97, v58, v60);
      if (v61)
      {
        (*(v59 + 8))(v56, v58);
        goto LABEL_7;
      }

      v98 = 0;
      (*(v59 + 8))(v56, v58);
    }

    v64 = v95;
    v65 = v93;
    v63 = v97;
    (*(v94 + 16))(v93, v97, v95);
    v66 = v86;
    v67 = v98;
    Model.init(contentsOf:)(v65);
    if (!v67)
    {
      v69 = Model.metadata.getter();
      specialized Dictionary._Variant.merge<A>(_:uniquingKeysWith:)(v69, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v90);
      (*(v88 + 32))(v87, v66, v89);
      $defer #1 () in MLSoundClassifier.Model.createFeatureExtractorModel(internalMetadata:)();
      v68 = v63;
      v62 = v64;
      goto LABEL_13;
    }

    $defer #1 () in MLSoundClassifier.Model.createFeatureExtractorModel(internalMetadata:)();
    v62 = v64;
LABEL_12:
    v68 = v63;
LABEL_13:
    v96(v68, v62);
  }
}

NSURL *$defer #1 () in MLSoundClassifier.Model.createFeatureExtractorModel(internalMetadata:)()
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

uint64_t lazy protocol witness table accessor for type AudioFeaturePrint and conformance AudioFeaturePrint()
{
  result = lazy protocol witness table cache variable for type AudioFeaturePrint and conformance AudioFeaturePrint;
  if (!lazy protocol witness table cache variable for type AudioFeaturePrint and conformance AudioFeaturePrint)
  {
    v1 = type metadata accessor for AudioFeaturePrint(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for AudioFeaturePrint, v1);
    lazy protocol witness table cache variable for type AudioFeaturePrint and conformance AudioFeaturePrint = result;
  }

  return result;
}

uint64_t static Dense.loadLayer(from:layerName:)(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v87[1] = v6;
  v87[2] = v5;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v94 = v87;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v97 = v87;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v93 = v87;
  v100 = type metadata accessor for Tensor(0);
  v88 = *(v100 - 8);
  v17 = *(v88 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v89 = v87;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v96 = v87;
  v102 = type metadata accessor for TensorShape(0);
  v98 = *(v102 - 8);
  v22 = *(v98 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v95 = v87;
  v25 = alloca(v22);
  v26 = alloca(v22);
  v92 = v87;
  v108 = a2;
  v106 = a2;
  v107 = a3;

  v27._countAndFlagsBits = 0x7468676965772ELL;
  v27._object = 0xE700000000000000;
  String.append(_:)(v27);
  v28 = v107;
  v29 = a1;
  v30 = specialized Dictionary.subscript.getter(v106, v107, a1);
  v28;
  v104 = v30;
  if (!v30)
  {
    v106 = 0;
    v107 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);
    v47 = v107;

    v47;
    v106 = v108;
    v107 = a3;
    v48._object = "predictionWindowSize" + 0x8000000000000000;
    v48._countAndFlagsBits = 0xD000000000000025;
LABEL_14:
    String.append(_:)(v48);
    v50 = v106;
    v51 = v107;
    v52 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v52, 0, 0);
    *v53 = v50;
    *(v53 + 8) = v51;
    *(v53 + 16) = 0;
    *(v53 + 32) = 0;
    *(v53 + 48) = 2;
    return swift_willThrow();
  }

  v103 = v29;
  v31 = v108;
  v106 = v108;
  v107 = a3;

  v32._countAndFlagsBits = 0x2E7468676965772ELL;
  v32._object = 0xED00006570616873;
  String.append(_:)(v32);
  v33 = v107;
  v34 = specialized Dictionary.subscript.getter(v106, v107, v103);
  v33;
  if (!v34)
  {
    v104;
    v106 = 0;
    v107 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);
    v49 = v107;

    v49;
    v106 = v31;
    v107 = a3;
    v48._object = "d in state dictionary" + 0x8000000000000000;
    v48._countAndFlagsBits = 0xD00000000000002BLL;
    goto LABEL_14;
  }

  v99 = a3;
  v35 = *(v34 + 16);
  if (v35)
  {
    v106 = _swiftEmptyArrayStorage;
    v36 = 0;
    v101 = v34;
    v105 = v35;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
    v37 = v105;
    v38 = v101;
    v39 = v106;
    a4 = -9.223372036854778e18;
    a5 = 9.223372036854776e18;
    v40 = 1;
    do
    {
      v41 = *(v38 + 8 * v36 + 32);
      if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        BUG();
      }

      if (v41 <= -9.223372036854778e18)
      {
        BUG();
      }

      if (v41 >= 9.223372036854776e18)
      {
        BUG();
      }

      v106 = v39;
      v42 = v39[2];
      v43 = v39[3];
      v44 = v42 + 1;
      if (v43 >> 1 <= v42)
      {
        v46 = v40;
        v90 = v41;
        v91 = v42 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v43 >= 2, v44, v40);
        v44 = v91;
        v41 = v90;
        v40 = v46;
        a5 = 9.223372036854776e18;
        a4 = -9.223372036854778e18;
        v37 = v105;
        v38 = v101;
        v39 = v106;
      }

      ++v36;
      v39[2] = v44;
      v39[v42 + 4] = v41;
      v45 = v102;
    }

    while (v37 != v36);
    v38;
  }

  else
  {
    v34;
    v39 = _swiftEmptyArrayStorage;
    v45 = v102;
  }

  v55 = v92;
  TensorShape.init(_:)(v39);
  v56 = v93;
  v105 = *(v98 + 16);
  (v105)(v93, v55, v45, a4, a5);
  __swift_storeEnumTagSinglePayload(v56, 0, 1, v45);
  LOBYTE(v55) = v104;
  Array<A>.floatTensor(shape:)(v56, v104, a4, a5);
  v55;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v56, &demangling cache variable for type metadata for TensorShape?);
  __swift_storeEnumTagSinglePayload(v97, 1, 1, v100);
  v106 = v108;
  v57 = v99;
  v107 = v99;

  v58._countAndFlagsBits = 0x736169622ELL;
  v58._object = 0xE500000000000000;
  String.append(_:)(v58);
  v59 = v107;
  v60 = v103;
  v61 = specialized Dictionary.subscript.getter(v106, v107, v103);
  v59;
  v104 = v61;
  if (v61)
  {
    v106 = v108;
    v107 = v57;

    v62._countAndFlagsBits = 0x68732E736169622ELL;
    v62._object = 0xEB00000000657061;
    String.append(_:)(v62);
    v63 = v107;
    v64 = specialized Dictionary.subscript.getter(v106, v107, v60);
    v63;
    if (v64)
    {
      v65 = *(v64 + 16);
      if (v65)
      {
        v106 = _swiftEmptyArrayStorage;
        v66 = 0;
        v103 = v64;
        v108 = v65;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v65, 0);
        v67 = v108;
        v68 = v103;
        v69 = v106;
        a4 = -9.223372036854778e18;
        a5 = 9.223372036854776e18;
        v70 = 1;
        do
        {
          v71 = *(v68 + 8 * v66 + 32);
          if ((*&v71 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            BUG();
          }

          if (v71 <= -9.223372036854778e18)
          {
            BUG();
          }

          if (v71 >= 9.223372036854776e18)
          {
            BUG();
          }

          v106 = v69;
          v72 = v69[2];
          v73 = v69[3];
          v74 = v72 + 1;
          if (v73 >> 1 <= v72)
          {
            v76 = v70;
            *&v99 = v71;
            v101 = v72 + 1;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v73 >= 2, v74, v70);
            v74 = v101;
            v71 = *&v99;
            v70 = v76;
            a5 = 9.223372036854776e18;
            a4 = -9.223372036854778e18;
            v67 = v108;
            v68 = v103;
            v69 = v106;
          }

          v66 = (v66 + 1);
          v69[2] = v74;
          v69[v72 + 4] = v71;
          v75 = v102;
        }

        while (v67 != v66);
        v68;
      }

      else
      {
        v64;
        v69 = _swiftEmptyArrayStorage;
        v75 = v102;
      }

      v77 = v95;
      TensorShape.init(_:)(v69);
      v78 = v93;
      (v105)(v93, v77, v75, a4, a5);
      v79 = v75;
      __swift_storeEnumTagSinglePayload(v78, 0, 1, v75);
      v80 = v94;
      v81 = v104;
      Array<A>.floatTensor(shape:)(v78, v104, a4, a5);
      v81;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v78, &demangling cache variable for type metadata for TensorShape?);
      (*(v98 + 8))(v95, v79);
      v82 = v97;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v97, &demangling cache variable for type metadata for Tensor?);
      __swift_storeEnumTagSinglePayload(v80, 0, 1, v100);
      outlined init with take of Tensor?(v80, v82);
    }

    else
    {
      v104;
    }
  }

  v83 = v89;
  v84 = v88;
  (*(v88 + 16))(v89, v96, v100);
  v85 = v97;
  v86 = v94;
  outlined init with copy of Tensor?(v97, v94);
  Dense.init(weight:bias:)(v83, v86);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v85, &demangling cache variable for type metadata for Tensor?);
  (*(v84 + 8))(v96, v100);
  return (*(v98 + 8))(v92, v102);
}

uint64_t outlined init with take of Tensor?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML24MLDecisionTreeClassifierV15ModelParametersV010ValidationD0OTg503_s8g4ML24ijk3V15lm75V13configuration10validationAE0A12MLComponents07BoostedD13ConfigurationV_11c7Data0N5e12VSgtcfcAE010N21N0OAMcAPmcfu_ApMcfu0_AOXMtTf1ncn_n(uint64_t a1)
{
  v21 = v1;
  v2 = type metadata accessor for DataFrame(0);
  v18 = *(v2 - 8);
  v3 = *(v18 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v19 = &v17;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1, &v17, &demangling cache variable for type metadata for DataFrame?);
  if (__swift_getEnumTagSinglePayload(&v17, 1, v2) == 1)
  {
    v9 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
    v10 = v21;
    v11 = 1;
    v12 = v9;
  }

  else
  {
    v13 = v19;
    v14 = v18;
    (*(v18 + 32))(v19, &v17, v2);
    v15 = v21;
    (*(v14 + 16))(v21, v13, v2);
    v20 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
    swift_storeEnumTagMultiPayload(v15, v20, 2);
    (*(v14 + 8))(v13, v2);
    v10 = v15;
    v11 = 0;
    v12 = v20;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t MLDecisionTreeClassifier.ModelParameters.init(validation:maxDepth:minLossReduction:minChildWeight:randomSeed:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v15 = a3;
  v16 = a5;
  v18 = a4;
  v6 = v5;
  v7 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v17 = v6 + 8;
  *(v6 + 24) = 0;
  *(v6 + 8) = 0;
  *v6 = a2;
  *(v6 + 40) = v18;
  *(v6 + 48) = v16;
  *(v6 + 56) = v15;
  outlined init with copy of MLDecisionTreeClassifier.ModelParameters.ValidationData(a1, &v13);
  v14[3] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  outlined init with take of MLDecisionTreeClassifier.ModelParameters.ValidationData(&v13, boxed_opaque_existential_0);
  outlined assign with take of Any?(v14, v17);
  return outlined destroy of MLDecisionTreeClassifier.ModelParameters.ValidationData(a1);
}

uint64_t MLDecisionTreeClassifier.ModelParameters.validation.getter()
{
  v2 = v0;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1 + 8, &v6, &demangling cache variable for type metadata for Any?);
  if (!v7)
  {
    BUG();
  }

  outlined init with take of Any(&v6, v5);
  v3 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  return swift_dynamicCast(v2, v5, &type metadata for Any + 8, v3, 7);
}

uint64_t MLDecisionTreeClassifier.ModelParameters.init(validationData:maxDepth:minLossReduction:minChildWeight:randomSeed:)(double a1, double a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = *a3;
  v7 = *(a3 + 8);
  *(v5 + 24) = 0;
  *(v5 + 8) = 0;
  *v5 = a4;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  *(v5 + 56) = a5;
  v9 = v6;
  v10 = v7;
  return MLDecisionTreeClassifier.ModelParameters.validationData.setter(&v9);
}

uint64_t MLDecisionTreeClassifier.ModelParameters.init(configuration:validation:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLDecisionTreeClassifier.ModelParameters.ValidationData?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v19 = &v15;
  v18 = v3 + 8;
  *(v3 + 24) = 0;
  *(v3 + 8) = 0;
  *v3 = BoostedTreeConfiguration.maximumDepth.getter();
  *(v3 + 40) = BoostedTreeConfiguration.minimumLossReduction.getter();
  *(v3 + 48) = BoostedTreeConfiguration.minimumChildWeight.getter();
  *(v3 + 56) = BoostedTreeConfiguration.randomSeed.getter();
  v17 = a2;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML24MLDecisionTreeClassifierV15ModelParametersV010ValidationD0OTg503_s8g4ML24ijk3V15lm75V13configuration10validationAE0A12MLComponents07BoostedD13ConfigurationV_11c7Data0N5e12VSgtcfcAE010N21N0OAMcAPmcfu_ApMcfu0_AOXMtTf1ncn_n(a2);
  if (__swift_getEnumTagSinglePayload(&v15, 1, v7) == 1)
  {
    v11 = v19;
    swift_storeEnumTagMultiPayload(v19, v7, 3);
    if (__swift_getEnumTagSinglePayload(&v15, 1, v7) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v15, &demangling cache variable for type metadata for MLDecisionTreeClassifier.ModelParameters.ValidationData?);
    }
  }

  else
  {
    v11 = v19;
    outlined init with take of MLDecisionTreeClassifier.ModelParameters.ValidationData(&v15, v19);
  }

  v16[3] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  outlined init with take of MLDecisionTreeClassifier.ModelParameters.ValidationData(v11, boxed_opaque_existential_0);
  outlined assign with take of Any?(v16, v18);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v17, &demangling cache variable for type metadata for DataFrame?);
  v13 = type metadata accessor for BoostedTreeConfiguration(0);
  return (*(*(v13 - 8) + 8))(a1, v13);
}

uint64_t MLDecisionTreeClassifier.ModelParameters.description.getter()
{
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  object = v0._object;
  String.append(_:)(v0);
  object;
  v2._object = 0xE100000000000000;
  v2._countAndFlagsBits = 10;
  String.append(_:)(v2);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  _StringGuts.grow(_:)(23);
  v2._object = "Max Iterations: " + 0x8000000000000000;
  v2._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v2);
  Double.write<A>(to:)(&v9, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3 = v9._object;
  String.append(_:)(v9);
  v3;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  v2._object = "Min Loss Reduction: " + 0x8000000000000000;
  v2._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v2);
  Double.write<A>(to:)(&v9, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v4 = v9._object;
  String.append(_:)(v9);
  v4;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  _StringGuts.grow(_:)(16);
  v9._object;
  strcpy(&v9, "Random Seed: ");
  HIWORD(v9._object) = -4864;
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v6 = v5._object;
  String.append(_:)(v5);
  v6;
  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v7 = v9._object;
  String.append(_:)(v9);
  v7;
  return 0x747065442078614DLL;
}

uint64_t MLDecisionTreeClassifier.ModelParameters.validationData.getter(__m128 a1)
{
  v2 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1 + 8, &v9, &demangling cache variable for type metadata for Any?);
  if (!v10)
  {
    BUG();
  }

  outlined init with take of Any(&v9, v8);
  swift_dynamicCast(&v7, v8, &type metadata for Any + 8, v2, 7);
  MLDecisionTreeClassifier.ModelParameters.ValidationData.asTable()(a1);
  return outlined destroy of MLDecisionTreeClassifier.ModelParameters.ValidationData(&v7);
}

uint64_t key path getter for MLDecisionTreeClassifier.ModelParameters.validationData : MLDecisionTreeClassifier.ModelParameters(__m128 a1)
{
  v2 = v1;
  MLDecisionTreeClassifier.ModelParameters.validationData.getter(a1);
  result = v4;
  *v2 = v4;
  *(v2 + 8) = v5;
  return result;
}

uint64_t key path setter for MLDecisionTreeClassifier.ModelParameters.validationData : MLDecisionTreeClassifier.ModelParameters(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  outlined copy of MLDataTable?(v3, v1);
  return MLDecisionTreeClassifier.ModelParameters.validationData.setter(&v3);
}

uint64_t MLDecisionTreeClassifier.ModelParameters.validationData.setter(uint64_t a1)
{
  v18 = v1;
  v2 = 0;
  v3 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *a1;
  v8 = *(a1 + 8);
  v15 = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v13 + 1);
  if (v8 == 0xFF)
  {
    v13 = 0;
    v14 = 256;
  }

  else
  {
    v16 = v7;
    v9 = v8;
    v10 = v8 & 1;
    v17 = v10;
    v21 = v9;
    outlined copy of Result<_DataTable, Error>(v7, v9);
    v20 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v16, v17);
    if (v20)
    {
      *&v13 = v7;
      BYTE8(v13) = v10;
      v12 = 1;
    }

    else
    {
      outlined consume of MLDataTable?(v7, v21);
      v12 = 3;
    }

    v2 = v12;
  }

  swift_storeEnumTagMultiPayload(&v13, v3, v2);
  outlined init with take of MLDecisionTreeClassifier.ModelParameters.ValidationData(&v13, boxed_opaque_existential_0);
  return outlined assign with take of Any?(&v13 + 8, v18 + 8);
}

uint64_t (*MLDecisionTreeClassifier.ModelParameters.validationData.modify(uint64_t a1, __m128 a2))(uint64_t a1, char a2)
{
  *(a1 + 16) = v2;
  MLDecisionTreeClassifier.ModelParameters.validationData.getter(a2);
  return MLDecisionTreeClassifier.ModelParameters.validationData.modify;
}

uint64_t MLDecisionTreeClassifier.ModelParameters.validationData.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v6 = *a1;
  v7 = v3;
  if ((a2 & 1) == 0)
  {
    return MLDecisionTreeClassifier.ModelParameters.validationData.setter(&v6);
  }

  v4 = v3;
  outlined copy of MLDataTable?(v2, v3);
  MLDecisionTreeClassifier.ModelParameters.validationData.setter(&v6);
  return outlined consume of MLDataTable?(v2, v4);
}

uint64_t key path setter for MLDecisionTreeClassifier.ModelParameters.validation : MLDecisionTreeClassifier.ModelParameters(uint64_t a1)
{
  v6[0] = v1;
  v2 = *(*(type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  outlined init with copy of MLDecisionTreeClassifier.ModelParameters.ValidationData(a1, v6);
  return MLDecisionTreeClassifier.ModelParameters.validation.setter(v6);
}

uint64_t MLDecisionTreeClassifier.ModelParameters.validation.setter(uint64_t a1)
{
  v4[3] = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  outlined init with take of MLDecisionTreeClassifier.ModelParameters.ValidationData(a1, boxed_opaque_existential_0);
  return outlined assign with take of Any?(v4, v1 + 8);
}

uint64_t outlined init with take of MLDecisionTreeClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t outlined assign with take of Any?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
  (*(*(v2 - 8) + 40))(a2, a1, v2);
  return a2;
}

uint64_t outlined destroy of MLDecisionTreeClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  v1 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

void (*MLDecisionTreeClassifier.ModelParameters.validation.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = malloc(0xA0uLL);
  *a1 = v2;
  *(v2 + 16) = v1;
  v3 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  *(v2 + 17) = v3;
  v4 = *(*(v3 - 8) + 64);
  *(v2 + 18) = malloc(v4);
  v5 = malloc(v4);
  *(v2 + 19) = v5;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1 + 8, (v2 + 2), &demangling cache variable for type metadata for Any?);
  if (!*(v2 + 7))
  {
    BUG();
  }

  outlined init with take of Any(v2 + 2, v2);
  swift_dynamicCast(v5, v2, &type metadata for Any + 8, v3, 7);
  return MLDecisionTreeClassifier.ModelParameters.validation.modify;
}

void MLDecisionTreeClassifier.ModelParameters.validation.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[19];
  v4 = (*a1)[18];
  v5 = (*a1)[17];
  v6 = (*a1)[16] + 8;
  if (a2)
  {
    v10 = (*a1)[18];
    outlined init with copy of MLDecisionTreeClassifier.ModelParameters.ValidationData((*a1)[19], v4);
    v2[11] = v5;
    v7 = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    outlined init with take of MLDecisionTreeClassifier.ModelParameters.ValidationData(v10, boxed_opaque_existential_0);
    outlined assign with take of Any?((v2 + 8), v6);
    outlined destroy of MLDecisionTreeClassifier.ModelParameters.ValidationData(v3);
  }

  else
  {
    v2[15] = v5;
    v7 = v4;
    v9 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    outlined init with take of MLDecisionTreeClassifier.ModelParameters.ValidationData(v3, v9);
    outlined assign with take of Any?((v2 + 12), v6);
  }

  free(v3);
  free(v7);
  free(v2);
}

uint64_t MLDecisionTreeClassifier.ModelParameters.playgroundDescription.getter()
{
  v1 = v0;
  result = MLDecisionTreeClassifier.ModelParameters.description.getter();
  v1[3] = &type metadata for String;
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t initializeWithCopy for MLDecisionTreeClassifier.ModelParameters(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  v5 = (a2 + 8);
  v6 = *(a2 + 32);
  if (v6)
  {
    *(a1 + 32) = v6;
    (**(v6 - 8))(v4, v5);
  }

  else
  {
    v7 = *v5;
    v4[1] = v5[1];
    *v4 = v7;
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithCopy for MLDecisionTreeClassifier.ModelParameters(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (v2)
    {
      *(a1 + 32) = v2;
      (**(v2 - 8))(a1 + 8, a2 + 8);
      goto LABEL_8;
    }

LABEL_7:
    v3 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v3;
    goto LABEL_8;
  }

  if (!v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 8));
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_0((a1 + 8), (a2 + 8));
LABEL_8:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

_OWORD *__swift_memcpy64_8(_OWORD *a1, __int128 *a2)
{
  result = a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  a1[3] = a2[3];
  a1[2] = v5;
  a1[1] = v4;
  *a1 = v3;
  return result;
}

uint64_t assignWithTake for MLDecisionTreeClassifier.ModelParameters(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a1 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 8));
  }

  v2 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v2;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLDecisionTreeClassifier.ModelParameters(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
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

void storeEnumTagSinglePayload for MLDecisionTreeClassifier.ModelParameters(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 64) = 0;
    }

    if (a2)
    {
      *(a1 + 32) = 2 * a2;
    }
  }
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLRandomForestRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_0636907E5F32D963700A018890EA71C7LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04Treeh8TrainingY8DelegateCTf1nc_n(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v2[2] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLRandomForestRegressor, Error>);
  v2[4] = v3;
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = swift_task_alloc(v4);
  v2[5] = v5;
  v2[6] = swift_task_alloc(v4);

  v6 = swift_task_alloc(400);
  v2[7] = v6;
  *v6 = v2;
  v6[1] = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLRandomForestRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_0636907E5F32D963700A018890EA71C7LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04Treeh8TrainingY8DelegateCTf1nc_nTQ0_;
  return MLRandomForestRegressor.init(delegate:)(v5, a2);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLRandomForestRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_0636907E5F32D963700A018890EA71C7LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04Treeh8TrainingY8DelegateCTf1nc_nTQ0_()
{
  v2 = *(*v1 + 56);
  *(*v1 + 64) = v0;
  v2;
  if (v0)
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLRandomForestRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_0636907E5F32D963700A018890EA71C7LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04Treeh8TrainingY8DelegateCTf1nc_nTY2_;
  }

  else
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLRandomForestRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_0636907E5F32D963700A018890EA71C7LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04Treeh8TrainingY8DelegateCTf1nc_nTY1_;
  }

  return swift_task_switch(v3, 0, 0);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLRandomForestRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_0636907E5F32D963700A018890EA71C7LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04Treeh8TrainingY8DelegateCTf1nc_nTY1_()
{
  v1 = v0[6];
  v2 = v0[5];
  swift_storeEnumTagMultiPayload(v2, v0[4], 0);
  outlined init with take of DataFrame?(v2, v1, &demangling cache variable for type metadata for Result<MLRandomForestRegressor, Error>);
  v3 = v0;
  v4 = v0[6];
  v5 = v3[5];
  v6 = v3;
  outlined init with take of DataFrame?(v4, v3[2], &demangling cache variable for type metadata for Result<MLRandomForestRegressor, Error>);

  v4;
  v5;
  return (v6[1])();
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLRandomForestRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_0636907E5F32D963700A018890EA71C7LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04Treeh8TrainingY8DelegateCTf1nc_nTY2_()
{
  v1 = v0[4];
  v2 = v0[6];
  *v2 = v0[8];
  swift_storeEnumTagMultiPayload(v2, v1, 1);
  v3 = v0;
  v4 = v0[6];
  v5 = v3[5];
  v6 = v3;
  outlined init with take of DataFrame?(v4, v3[2], &demangling cache variable for type metadata for Result<MLRandomForestRegressor, Error>);

  v4;
  v5;
  return (v6[1])();
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLDecisionTreeRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_BFDF09F73B7AB1D73124AE8B375F4C93LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gH23TrainingSessionDelegateCTf1nc_n(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v2[2] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLDecisionTreeRegressor, Error>);
  v2[4] = v3;
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = swift_task_alloc(v4);
  v2[5] = v5;
  v2[6] = swift_task_alloc(v4);

  v6 = swift_task_alloc(304);
  v2[7] = v6;
  *v6 = v2;
  v6[1] = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLDecisionTreeRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_BFDF09F73B7AB1D73124AE8B375F4C93LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gH23TrainingSessionDelegateCTf1nc_nTQ0_;
  return MLDecisionTreeRegressor.init(delegate:)(v5, a2);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLDecisionTreeRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_BFDF09F73B7AB1D73124AE8B375F4C93LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gH23TrainingSessionDelegateCTf1nc_nTQ0_()
{
  v2 = *(*v1 + 56);
  *(*v1 + 64) = v0;
  v2;
  if (v0)
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLDecisionTreeRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_BFDF09F73B7AB1D73124AE8B375F4C93LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gH23TrainingSessionDelegateCTf1nc_nTY2_;
  }

  else
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLDecisionTreeRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_BFDF09F73B7AB1D73124AE8B375F4C93LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gH23TrainingSessionDelegateCTf1nc_nTY1_;
  }

  return swift_task_switch(v3, 0, 0);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLDecisionTreeRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_BFDF09F73B7AB1D73124AE8B375F4C93LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gH23TrainingSessionDelegateCTf1nc_nTY1_()
{
  v1 = v0[6];
  v2 = v0[5];
  swift_storeEnumTagMultiPayload(v2, v0[4], 0);
  outlined init with take of DataFrame?(v2, v1, &demangling cache variable for type metadata for Result<MLDecisionTreeRegressor, Error>);
  v3 = v0;
  v4 = v0[6];
  v5 = v3[5];
  v6 = v3;
  outlined init with take of DataFrame?(v4, v3[2], &demangling cache variable for type metadata for Result<MLDecisionTreeRegressor, Error>);

  v4;
  v5;
  return (v6[1])();
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLDecisionTreeRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_BFDF09F73B7AB1D73124AE8B375F4C93LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gH23TrainingSessionDelegateCTf1nc_nTY2_()
{
  v1 = v0[4];
  v2 = v0[6];
  *v2 = v0[8];
  swift_storeEnumTagMultiPayload(v2, v1, 1);
  v3 = v0;
  v4 = v0[6];
  v5 = v3[5];
  v6 = v3;
  outlined init with take of DataFrame?(v4, v3[2], &demangling cache variable for type metadata for Result<MLDecisionTreeRegressor, Error>);

  v4;
  v5;
  return (v6[1])();
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC24MLRandomForestClassifierV_Tt1g503_s8b4ML24fgh80V12handleResult33_4BA12AD8C244BA9B40BDFBE3C2FF9674LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04TreeH23TrainingSessionDelegateCTf1nc_n(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v2[2] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLRandomForestClassifier, Error>);
  v2[4] = v3;
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = swift_task_alloc(v4);
  v2[5] = v5;
  v2[6] = swift_task_alloc(v4);

  v6 = swift_task_alloc(448);
  v2[7] = v6;
  *v6 = v2;
  v6[1] = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC24MLRandomForestClassifierV_Tt1g503_s8b4ML24fgh80V12handleResult33_4BA12AD8C244BA9B40BDFBE3C2FF9674LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04TreeH23TrainingSessionDelegateCTf1nc_nTQ0_;
  return MLRandomForestClassifier.init(delegate:)(v5, a2);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC24MLRandomForestClassifierV_Tt1g503_s8b4ML24fgh80V12handleResult33_4BA12AD8C244BA9B40BDFBE3C2FF9674LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04TreeH23TrainingSessionDelegateCTf1nc_nTQ0_()
{
  v2 = *(*v1 + 56);
  *(*v1 + 64) = v0;
  v2;
  if (v0)
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC24MLRandomForestClassifierV_Tt1g503_s8b4ML24fgh80V12handleResult33_4BA12AD8C244BA9B40BDFBE3C2FF9674LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04TreeH23TrainingSessionDelegateCTf1nc_nTY2_;
  }

  else
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC24MLRandomForestClassifierV_Tt1g503_s8b4ML24fgh80V12handleResult33_4BA12AD8C244BA9B40BDFBE3C2FF9674LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04TreeH23TrainingSessionDelegateCTf1nc_nTY1_;
  }

  return swift_task_switch(v3, 0, 0);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC24MLRandomForestClassifierV_Tt1g503_s8b4ML24fgh80V12handleResult33_4BA12AD8C244BA9B40BDFBE3C2FF9674LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04TreeH23TrainingSessionDelegateCTf1nc_nTY1_()
{
  v1 = v0[6];
  v2 = v0[5];
  swift_storeEnumTagMultiPayload(v2, v0[4], 0);
  outlined init with take of DataFrame?(v2, v1, &demangling cache variable for type metadata for Result<MLRandomForestClassifier, Error>);
  v3 = v0;
  v4 = v0[6];
  v5 = v3[5];
  v6 = v3;
  outlined init with take of DataFrame?(v4, v3[2], &demangling cache variable for type metadata for Result<MLRandomForestClassifier, Error>);

  v4;
  v5;
  return (v6[1])();
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC24MLRandomForestClassifierV_Tt1g503_s8b4ML24fgh80V12handleResult33_4BA12AD8C244BA9B40BDFBE3C2FF9674LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04TreeH23TrainingSessionDelegateCTf1nc_nTY2_()
{
  v1 = v0[4];
  v2 = v0[6];
  *v2 = v0[8];
  swift_storeEnumTagMultiPayload(v2, v1, 1);
  v3 = v0;
  v4 = v0[6];
  v5 = v3[5];
  v6 = v3;
  outlined init with take of DataFrame?(v4, v3[2], &demangling cache variable for type metadata for Result<MLRandomForestClassifier, Error>);

  v4;
  v5;
  return (v6[1])();
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC22MLBoostedTreeRegressorV_Tt1g503_s8b4ML22fgh80V12handleResult33_53F1D2839F479D9B4239C31BB67470FBLL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gh8TrainingZ8DelegateCTf1nc_n(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v2[2] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLBoostedTreeRegressor, Error>);
  v2[4] = v3;
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = swift_task_alloc(v4);
  v2[5] = v5;
  v2[6] = swift_task_alloc(v4);

  v6 = swift_task_alloc(400);
  v2[7] = v6;
  *v6 = v2;
  v6[1] = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC22MLBoostedTreeRegressorV_Tt1g503_s8b4ML22fgh80V12handleResult33_53F1D2839F479D9B4239C31BB67470FBLL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gh8TrainingZ8DelegateCTf1nc_nTQ0_;
  return MLBoostedTreeRegressor.init(delegate:)(v5, a2);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC22MLBoostedTreeRegressorV_Tt1g503_s8b4ML22fgh80V12handleResult33_53F1D2839F479D9B4239C31BB67470FBLL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gh8TrainingZ8DelegateCTf1nc_nTQ0_()
{
  v2 = *(*v1 + 56);
  *(*v1 + 64) = v0;
  v2;
  if (v0)
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC22MLBoostedTreeRegressorV_Tt1g503_s8b4ML22fgh80V12handleResult33_53F1D2839F479D9B4239C31BB67470FBLL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gh8TrainingZ8DelegateCTf1nc_nTY2_;
  }

  else
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC22MLBoostedTreeRegressorV_Tt1g503_s8b4ML22fgh80V12handleResult33_53F1D2839F479D9B4239C31BB67470FBLL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gh8TrainingZ8DelegateCTf1nc_nTY1_;
  }

  return swift_task_switch(v3, 0, 0);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC22MLBoostedTreeRegressorV_Tt1g503_s8b4ML22fgh80V12handleResult33_53F1D2839F479D9B4239C31BB67470FBLL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gh8TrainingZ8DelegateCTf1nc_nTY1_()
{
  v1 = v0[6];
  v2 = v0[5];
  swift_storeEnumTagMultiPayload(v2, v0[4], 0);
  outlined init with take of DataFrame?(v2, v1, &demangling cache variable for type metadata for Result<MLBoostedTreeRegressor, Error>);
  v3 = v0;
  v4 = v0[6];
  v5 = v3[5];
  v6 = v3;
  outlined init with take of DataFrame?(v4, v3[2], &demangling cache variable for type metadata for Result<MLBoostedTreeRegressor, Error>);

  v4;
  v5;
  return (v6[1])();
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC22MLBoostedTreeRegressorV_Tt1g503_s8b4ML22fgh80V12handleResult33_53F1D2839F479D9B4239C31BB67470FBLL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gh8TrainingZ8DelegateCTf1nc_nTY2_()
{
  v1 = v0[4];
  v2 = v0[6];
  *v2 = v0[8];
  swift_storeEnumTagMultiPayload(v2, v1, 1);
  v3 = v0;
  v4 = v0[6];
  v5 = v3[5];
  v6 = v3;
  outlined init with take of DataFrame?(v4, v3[2], &demangling cache variable for type metadata for Result<MLBoostedTreeRegressor, Error>);

  v4;
  v5;
  return (v6[1])();
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC24MLDecisionTreeClassifierV_Tt1g503_s8b4ML24fgh80V12handleResult33_7E17D1DEF38C9D8FEB24863D1630C03BLL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gH23TrainingSessionDelegateCTf1nc_n(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v2[2] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLDecisionTreeClassifier, Error>);
  v2[4] = v3;
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = swift_task_alloc(v4);
  v2[5] = v5;
  v2[6] = swift_task_alloc(v4);

  v6 = swift_task_alloc(400);
  v2[7] = v6;
  *v6 = v2;
  v6[1] = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC24MLDecisionTreeClassifierV_Tt1g503_s8b4ML24fgh80V12handleResult33_7E17D1DEF38C9D8FEB24863D1630C03BLL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gH23TrainingSessionDelegateCTf1nc_nTQ0_;
  return MLDecisionTreeClassifier.init(delegate:)(v5, a2);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC24MLDecisionTreeClassifierV_Tt1g503_s8b4ML24fgh80V12handleResult33_7E17D1DEF38C9D8FEB24863D1630C03BLL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gH23TrainingSessionDelegateCTf1nc_nTQ0_()
{
  v2 = *(*v1 + 56);
  *(*v1 + 64) = v0;
  v2;
  if (v0)
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC24MLDecisionTreeClassifierV_Tt1g503_s8b4ML24fgh80V12handleResult33_7E17D1DEF38C9D8FEB24863D1630C03BLL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gH23TrainingSessionDelegateCTf1nc_nTY2_;
  }

  else
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC24MLDecisionTreeClassifierV_Tt1g503_s8b4ML24fgh80V12handleResult33_7E17D1DEF38C9D8FEB24863D1630C03BLL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gH23TrainingSessionDelegateCTf1nc_nTY1_;
  }

  return swift_task_switch(v3, 0, 0);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC24MLDecisionTreeClassifierV_Tt1g503_s8b4ML24fgh80V12handleResult33_7E17D1DEF38C9D8FEB24863D1630C03BLL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gH23TrainingSessionDelegateCTf1nc_nTY1_()
{
  v1 = v0[6];
  v2 = v0[5];
  swift_storeEnumTagMultiPayload(v2, v0[4], 0);
  outlined init with take of DataFrame?(v2, v1, &demangling cache variable for type metadata for Result<MLDecisionTreeClassifier, Error>);
  v3 = v0;
  v4 = v0[6];
  v5 = v3[5];
  v6 = v3;
  outlined init with take of DataFrame?(v4, v3[2], &demangling cache variable for type metadata for Result<MLDecisionTreeClassifier, Error>);

  v4;
  v5;
  return (v6[1])();
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC24MLDecisionTreeClassifierV_Tt1g503_s8b4ML24fgh80V12handleResult33_7E17D1DEF38C9D8FEB24863D1630C03BLL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gH23TrainingSessionDelegateCTf1nc_nTY2_()
{
  v1 = v0[4];
  v2 = v0[6];
  *v2 = v0[8];
  swift_storeEnumTagMultiPayload(v2, v1, 1);
  v3 = v0;
  v4 = v0[6];
  v5 = v3[5];
  v6 = v3;
  outlined init with take of DataFrame?(v4, v3[2], &demangling cache variable for type metadata for Result<MLDecisionTreeClassifier, Error>);

  v4;
  v5;
  return (v6[1])();
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC17MLSoundClassifierV_Tt1g503_s8b4ML17fg80V12handleResult33_0936EF001B4864F81C630288B6304A87LL_7session7fulfillys0F0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC05Soundg8TrainingX8DelegateCTf1nc_n(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v2[2] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLSoundClassifier, Error>);
  v2[4] = v3;
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = swift_task_alloc(v4);
  v2[5] = v5;
  v2[6] = swift_task_alloc(v4);

  v6 = swift_task_alloc(288);
  v2[7] = v6;
  *v6 = v2;
  v6[1] = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC17MLSoundClassifierV_Tt1g503_s8b4ML17fg80V12handleResult33_0936EF001B4864F81C630288B6304A87LL_7session7fulfillys0F0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC05Soundg8TrainingX8DelegateCTf1nc_nTQ0_;
  return MLSoundClassifier.init(delegate:)(v5, a2);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC17MLSoundClassifierV_Tt1g503_s8b4ML17fg80V12handleResult33_0936EF001B4864F81C630288B6304A87LL_7session7fulfillys0F0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC05Soundg8TrainingX8DelegateCTf1nc_nTQ0_()
{
  v2 = *(*v1 + 56);
  *(*v1 + 64) = v0;
  v2;
  if (v0)
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC17MLSoundClassifierV_Tt1g503_s8b4ML17fg80V12handleResult33_0936EF001B4864F81C630288B6304A87LL_7session7fulfillys0F0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC05Soundg8TrainingX8DelegateCTf1nc_nTY2_;
  }

  else
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC17MLSoundClassifierV_Tt1g503_s8b4ML17fg80V12handleResult33_0936EF001B4864F81C630288B6304A87LL_7session7fulfillys0F0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC05Soundg8TrainingX8DelegateCTf1nc_nTY1_;
  }

  return swift_task_switch(v3, 0, 0);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC17MLSoundClassifierV_Tt1g503_s8b4ML17fg80V12handleResult33_0936EF001B4864F81C630288B6304A87LL_7session7fulfillys0F0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC05Soundg8TrainingX8DelegateCTf1nc_nTY1_()
{
  v1 = v0[6];
  v2 = v0[5];
  swift_storeEnumTagMultiPayload(v2, v0[4], 0);
  outlined init with take of DataFrame?(v2, v1, &demangling cache variable for type metadata for Result<MLSoundClassifier, Error>);
  v3 = v0;
  v4 = v0[6];
  v5 = v3[5];
  v6 = v3;
  outlined init with take of DataFrame?(v4, v3[2], &demangling cache variable for type metadata for Result<MLSoundClassifier, Error>);

  v4;
  v5;
  return (v6[1])();
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC17MLSoundClassifierV_Tt1g503_s8b4ML17fg80V12handleResult33_0936EF001B4864F81C630288B6304A87LL_7session7fulfillys0F0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC05Soundg8TrainingX8DelegateCTf1nc_nTY2_()
{
  v1 = v0[4];
  v2 = v0[6];
  *v2 = v0[8];
  swift_storeEnumTagMultiPayload(v2, v1, 1);
  v3 = v0;
  v4 = v0[6];
  v5 = v3[5];
  v6 = v3;
  outlined init with take of DataFrame?(v4, v3[2], &demangling cache variable for type metadata for Result<MLSoundClassifier, Error>);

  v4;
  v5;
  return (v6[1])();
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLBoostedTreeClassifierV_Tt1g503_s8b4ML23fgh80V12handleResult33_CD9A6EBB503908D6C1216C5F49822BDBLL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gh8TrainingZ8DelegateCTf1nc_n(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v2[2] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLBoostedTreeClassifier, Error>);
  v2[4] = v3;
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = swift_task_alloc(v4);
  v2[5] = v5;
  v2[6] = swift_task_alloc(v4);

  v6 = swift_task_alloc(496);
  v2[7] = v6;
  *v6 = v2;
  v6[1] = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLBoostedTreeClassifierV_Tt1g503_s8b4ML23fgh80V12handleResult33_CD9A6EBB503908D6C1216C5F49822BDBLL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gh8TrainingZ8DelegateCTf1nc_nTQ0_;
  return MLBoostedTreeClassifier.init(delegate:)(v5, a2);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLBoostedTreeClassifierV_Tt1g503_s8b4ML23fgh80V12handleResult33_CD9A6EBB503908D6C1216C5F49822BDBLL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gh8TrainingZ8DelegateCTf1nc_nTQ0_()
{
  v2 = *(*v1 + 56);
  *(*v1 + 64) = v0;
  v2;
  if (v0)
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLBoostedTreeClassifierV_Tt1g503_s8b4ML23fgh80V12handleResult33_CD9A6EBB503908D6C1216C5F49822BDBLL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gh8TrainingZ8DelegateCTf1nc_nTY2_;
  }

  else
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLBoostedTreeClassifierV_Tt1g503_s8b4ML23fgh80V12handleResult33_CD9A6EBB503908D6C1216C5F49822BDBLL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gh8TrainingZ8DelegateCTf1nc_nTY1_;
  }

  return swift_task_switch(v3, 0, 0);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLBoostedTreeClassifierV_Tt1g503_s8b4ML23fgh80V12handleResult33_CD9A6EBB503908D6C1216C5F49822BDBLL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gh8TrainingZ8DelegateCTf1nc_nTY1_()
{
  v1 = v0[6];
  v2 = v0[5];
  swift_storeEnumTagMultiPayload(v2, v0[4], 0);
  outlined init with take of DataFrame?(v2, v1, &demangling cache variable for type metadata for Result<MLBoostedTreeClassifier, Error>);
  v3 = v0;
  v4 = v0[6];
  v5 = v3[5];
  v6 = v3;
  outlined init with take of DataFrame?(v4, v3[2], &demangling cache variable for type metadata for Result<MLBoostedTreeClassifier, Error>);

  v4;
  v5;
  return (v6[1])();
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLBoostedTreeClassifierV_Tt1g503_s8b4ML23fgh80V12handleResult33_CD9A6EBB503908D6C1216C5F49822BDBLL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gh8TrainingZ8DelegateCTf1nc_nTY2_()
{
  v1 = v0[4];
  v2 = v0[6];
  *v2 = v0[8];
  swift_storeEnumTagMultiPayload(v2, v1, 1);
  v3 = v0;
  v4 = v0[6];
  v5 = v3[5];
  v6 = v3;
  outlined init with take of DataFrame?(v4, v3[2], &demangling cache variable for type metadata for Result<MLBoostedTreeClassifier, Error>);

  v4;
  v5;
  return (v6[1])();
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC17MLLinearRegressorV_Tt1g503_s8b4ML17fg80V12handleResult33_002D25F40C350B487B72244DB0D467A6LL_7session7fulfillys0F0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC06Linearg8TrainingZ8DelegateCTf1nc_n(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v2[2] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLLinearRegressor, Error>);
  v2[4] = v3;
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = swift_task_alloc(v4);
  v2[5] = v5;
  v2[6] = swift_task_alloc(v4);

  v6 = swift_task_alloc(304);
  v2[7] = v6;
  *v6 = v2;
  v6[1] = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC17MLLinearRegressorV_Tt1g503_s8b4ML17fg80V12handleResult33_002D25F40C350B487B72244DB0D467A6LL_7session7fulfillys0F0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC06Linearg8TrainingZ8DelegateCTf1nc_nTQ0_;
  return MLLinearRegressor.init(delegate:)(v5, a2);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC17MLLinearRegressorV_Tt1g503_s8b4ML17fg80V12handleResult33_002D25F40C350B487B72244DB0D467A6LL_7session7fulfillys0F0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC06Linearg8TrainingZ8DelegateCTf1nc_nTQ0_()
{
  v2 = *(*v1 + 56);
  *(*v1 + 64) = v0;
  v2;
  if (v0)
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC17MLLinearRegressorV_Tt1g503_s8b4ML17fg80V12handleResult33_002D25F40C350B487B72244DB0D467A6LL_7session7fulfillys0F0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC06Linearg8TrainingZ8DelegateCTf1nc_nTY2_;
  }

  else
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC17MLLinearRegressorV_Tt1g503_s8b4ML17fg80V12handleResult33_002D25F40C350B487B72244DB0D467A6LL_7session7fulfillys0F0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC06Linearg8TrainingZ8DelegateCTf1nc_nTY1_;
  }

  return swift_task_switch(v3, 0, 0);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC17MLLinearRegressorV_Tt1g503_s8b4ML17fg80V12handleResult33_002D25F40C350B487B72244DB0D467A6LL_7session7fulfillys0F0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC06Linearg8TrainingZ8DelegateCTf1nc_nTY1_()
{
  v1 = v0[6];
  v2 = v0[5];
  swift_storeEnumTagMultiPayload(v2, v0[4], 0);
  outlined init with take of DataFrame?(v2, v1, &demangling cache variable for type metadata for Result<MLLinearRegressor, Error>);
  v3 = v0;
  v4 = v0[6];
  v5 = v3[5];
  v6 = v3;
  outlined init with take of DataFrame?(v4, v3[2], &demangling cache variable for type metadata for Result<MLLinearRegressor, Error>);

  v4;
  v5;
  return (v6[1])();
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC17MLLinearRegressorV_Tt1g503_s8b4ML17fg80V12handleResult33_002D25F40C350B487B72244DB0D467A6LL_7session7fulfillys0F0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC06Linearg8TrainingZ8DelegateCTf1nc_nTY2_()
{
  v1 = v0[4];
  v2 = v0[6];
  *v2 = v0[8];
  swift_storeEnumTagMultiPayload(v2, v1, 1);
  v3 = v0;
  v4 = v0[6];
  v5 = v3[5];
  v6 = v3;
  outlined init with take of DataFrame?(v4, v3[2], &demangling cache variable for type metadata for Result<MLLinearRegressor, Error>);

  v4;
  v5;
  return (v6[1])();
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC17MLImageClassifierV_Tt1g503_s8b4ML17fg43V6resumeyAA5MLJobCyACGAA17MLTrainingSessionm13ACGKFZyAG_ys6a6OyACs5D45_pGctXEfU_yALyytsAM_pGcfU_yyYacfU_ACyYaKXEfU_AC05Imageg8TrainingP8DelegateCTf1nc_n(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v2[2] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLImageClassifier, Error>);
  v2[4] = v3;
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = swift_task_alloc(v4);
  v2[5] = v5;
  v2[6] = swift_task_alloc(v4);

  v6 = swift_task_alloc(496);
  v2[7] = v6;
  *v6 = v2;
  v6[1] = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC17MLImageClassifierV_Tt1g503_s8b4ML17fg43V6resumeyAA5MLJobCyACGAA17MLTrainingSessionm13ACGKFZyAG_ys6a6OyACs5D45_pGctXEfU_yALyytsAM_pGcfU_yyYacfU_ACyYaKXEfU_AC05Imageg8TrainingP8DelegateCTf1nc_nTQ0_;
  return MLImageClassifier.init(delegate:)(v5, a2);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC17MLImageClassifierV_Tt1g503_s8b4ML17fg43V6resumeyAA5MLJobCyACGAA17MLTrainingSessionm13ACGKFZyAG_ys6a6OyACs5D45_pGctXEfU_yALyytsAM_pGcfU_yyYacfU_ACyYaKXEfU_AC05Imageg8TrainingP8DelegateCTf1nc_nTQ0_()
{
  v2 = *(*v1 + 56);
  *(*v1 + 64) = v0;
  v2;
  if (v0)
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC17MLImageClassifierV_Tt1g503_s8b4ML17fg43V6resumeyAA5MLJobCyACGAA17MLTrainingSessionm13ACGKFZyAG_ys6a6OyACs5D45_pGctXEfU_yALyytsAM_pGcfU_yyYacfU_ACyYaKXEfU_AC05Imageg8TrainingP8DelegateCTf1nc_nTY2_;
  }

  else
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC17MLImageClassifierV_Tt1g503_s8b4ML17fg43V6resumeyAA5MLJobCyACGAA17MLTrainingSessionm13ACGKFZyAG_ys6a6OyACs5D45_pGctXEfU_yALyytsAM_pGcfU_yyYacfU_ACyYaKXEfU_AC05Imageg8TrainingP8DelegateCTf1nc_nTY1_;
  }

  return swift_task_switch(v3, 0, 0);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC17MLImageClassifierV_Tt1g503_s8b4ML17fg43V6resumeyAA5MLJobCyACGAA17MLTrainingSessionm13ACGKFZyAG_ys6a6OyACs5D45_pGctXEfU_yALyytsAM_pGcfU_yyYacfU_ACyYaKXEfU_AC05Imageg8TrainingP8DelegateCTf1nc_nTY1_()
{
  v1 = v0[6];
  v2 = v0[5];
  swift_storeEnumTagMultiPayload(v2, v0[4], 0);
  outlined init with take of DataFrame?(v2, v1, &demangling cache variable for type metadata for Result<MLImageClassifier, Error>);
  v3 = v0;
  v4 = v0[6];
  v5 = v3[5];
  v6 = v3;
  outlined init with take of DataFrame?(v4, v3[2], &demangling cache variable for type metadata for Result<MLImageClassifier, Error>);

  v4;
  v5;
  return (v6[1])();
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC17MLImageClassifierV_Tt1g503_s8b4ML17fg43V6resumeyAA5MLJobCyACGAA17MLTrainingSessionm13ACGKFZyAG_ys6a6OyACs5D45_pGctXEfU_yALyytsAM_pGcfU_yyYacfU_ACyYaKXEfU_AC05Imageg8TrainingP8DelegateCTf1nc_nTY2_()
{
  v1 = v0[4];
  v2 = v0[6];
  *v2 = v0[8];
  swift_storeEnumTagMultiPayload(v2, v1, 1);
  v3 = v0;
  v4 = v0[6];
  v5 = v3[5];
  v6 = v3;
  outlined init with take of DataFrame?(v4, v3[2], &demangling cache variable for type metadata for Result<MLImageClassifier, Error>);

  v4;
  v5;
  return (v6[1])();
}

uint64_t outlined destroy of Result<Any, Error>?(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<Any, Error>?);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t static MLHandPoseClassifier.FeatureExtractor.extractFeatures(from:startingSessionId:)(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v11 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  inited = swift_initStackObject(v4, v9);
  *(inited + 32) = _swiftEmptyArrayStorage;
  *(inited + 40) = _swiftEmptyArrayStorage;
  *(inited + 48) = _swiftEmptyArrayStorage;
  *(inited + 56) = _swiftEmptyArrayStorage;
  *(inited + 16) = v5;
  *(inited + 24) = v6;
  if (v3)
  {
    return outlined copy of Result<_DataTable, Error>(v5, v6);
  }

  outlined copy of Result<_DataTable, Error>(v5, v6);
  MLHandPoseClassifier.FeatureExtractor.extractFeaturesFromFileTable(startingSessionId:)(v10);
}

uint64_t static MLHandPoseClassifier.FeatureExtractor.extractFeatures(from:startingSessionId:)(uint64_t a1, uint64_t a2, __m128 a3)
{
  v9[0] = a2;
  v9[1] = v3;
  v5 = *(*(type metadata accessor for MLHandPoseClassifier.DataSource(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  outlined init with copy of MLHandPoseClassifier.DataSource(a1, v9);
  result = MLHandPoseClassifier.FeatureExtractor.__allocating_init(source:)(v9, a3);
  if (!v4)
  {
    MLHandPoseClassifier.FeatureExtractor.extractFeaturesFromFileTable(startingSessionId:)(v9[0]);
  }

  return result;
}

uint64_t MLHandPoseClassifier.FeatureExtractor.__allocating_init(source:)(uint64_t a1, __m128 a2)
{
  MLHandPoseClassifier.DataSource.imagesWithAnnotations()(a2);
  result = outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLHandPoseClassifier.DataSource);
  if (!v2)
  {
    result = swift_allocObject(v3, 64, 7);
    *(result + 32) = _swiftEmptyArrayStorage;
    *(result + 40) = _swiftEmptyArrayStorage;
    *(result + 48) = _swiftEmptyArrayStorage;
    *(result + 56) = _swiftEmptyArrayStorage;
    *(result + 16) = v5;
    *(result + 24) = v6;
  }

  return result;
}

uint64_t MLHandPoseClassifier.FeatureExtractor.extractFeaturesFromFileTable(startingSessionId:)(uint64_t a1)
{
  v141._countAndFlagsBits = v2;
  v116 = a1;
  v122 = v1;
  v126 = type metadata accessor for URL(0);
  v127 = *(v126 - 8);
  v4 = *(v127 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v128 = &v113;
  v145 = type metadata accessor for Date(0);
  v142 = *(v145 - 8);
  v7 = *(v142 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v137 = &v113;
  currentFileIndex = type metadata accessor for _TablePrinter(0);
  v10 = *(*(currentFileIndex - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v144 = &v113;
  v136 = v3;
  v13 = *(v3 + 16);
  v14 = *(v3 + 24);
  v131 = v13;
  LOBYTE(v132) = v14;
  outlined copy of Result<_DataTable, Error>(v13, v14);
  outlined copy of Result<_DataTable, Error>(v13, v14);
  v15 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v131, v132);
  v16 = specialized RandomAccessCollection<>.distance(from:to:)(0, v15, v13, v14);
  outlined consume of Result<_DataTable, Error>(v13, v14);
  v131 = 0;
  v132 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v132;
  v131 = 0x69737365636F7250;
  v132 = 0xEB0000000020676ELL;
  *&_ = v16;
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  LOBYTE(v13) = v17._object;
  String.append(_:)(v17);
  v13;
  v18._object = "ractor" + 0x8000000000000000;
  v18._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v18);
  v19 = v131;
  v20 = v132;
  v21 = static os_log_type_t.info.getter(0xD000000000000011);
  v18._countAndFlagsBits = v19;
  v18._object = v20;
  log(_:type:)(v18, v21);
  v18._countAndFlagsBits = v20;
  v20;
  v143 = "ml.handPoseClassifier" + 0x8000000000000000;
  v22 = v144;
  v23 = v144 + *(currentFileIndex + 20);
  Date.init()(v18._countAndFlagsBits);
  v119 = v16;
  *v22 = v16;
  type metadata accessor for OS_os_log();
  v24 = OS_os_log.init(subsystem:category:)(0xD000000000000025, (" annotated images" + 0x8000000000000000), 0x72705F656C626174, 0xED00007265746E69);
  v25 = currentFileIndex;
  v26 = *(currentFileIndex + 24);
  v121 = v24;
  v27 = v144;
  *(v144 + v26) = v24;
  v28 = *(v25 + 28);
  *(v27 + v28) = 0xD000000000000010;
  *(v27 + v28 + 8) = v143;
  v29 = v137;
  Date.init()(0xD000000000000025);
  v117 = v23;
  (*(v142 + 40))(v23, v29, v145);
  _TablePrinter.beginTable()();
  _TablePrinter.printRow(currentFileIndex:)(0);
  LOBYTE(v18._object) = *(v136 + 24);
  v131 = *(v136 + 16);
  LOBYTE(v132) = v18._object;
  v123 = (v136 + 32);
  v124 = (v136 + 48);
  v125 = (v136 + 40);
  v136 += 56;
  v30 = 0;
  v133 = 0;
  outlined copy of Result<_DataTable, Error>(v131, v18._object);
  v118 = "h or label string at row " + 0x8000000000000000;
  v120 = "Extracted features from " + 0x8000000000000000;
  while (1)
  {
    specialized EnumeratedSequence.Iterator.next()();
    if (!*(&_ + 1))
    {
      break;
    }

    currentFileIndex = _;
    v31 = v139;
    v32 = v139[2] == 0;
    v142 = v140;
    v145 = *(&_ + 1);
    v137 = v139;
    if (v32)
    {
      goto LABEL_24;
    }

    v33 = specialized __RawDictionaryStorage.find<A>(_:)(0x7461506567616D69, 0xE900000000000068);
    if ((v34 & 1) == 0)
    {
      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v145, v31);
      goto LABEL_24;
    }

    v35 = *(v31[7] + 8 * v33);

    countAndFlagsBits = v141._countAndFlagsBits;
    v37 = CMLSequence.value(at:)(v35);
    if (countAndFlagsBits)
    {
      swift_unexpectedError(countAndFlagsBits, "CreateML/MLDataTable.Row.swift", 30, 1, 85);
      BUG();
    }

    MLDataValue.init(_:)(v37, *v30.i64);

    outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v145, v31);
    v38 = *(&_ + 1);
    v141._countAndFlagsBits = _;
    if (v139 != 2)
    {
      v98 = v139;
      v99 = v141._countAndFlagsBits;
      goto LABEL_23;
    }

    v143 = *(&_ + 1);
    if (!v31[2])
    {
      goto LABEL_20;
    }

    v39 = specialized __RawDictionaryStorage.find<A>(_:)(0x6C6562616CLL, 0xE500000000000000);
    if ((v40 & 1) == 0)
    {
      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v145, v31);
LABEL_20:
      v98 = 2;
      v99 = v141._countAndFlagsBits;
LABEL_22:
      v38 = v143;
LABEL_23:
      outlined consume of MLDataValue(v99, v38, v98);
LABEL_24:
      *&_ = 0;
      *(&_ + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(52);
      v100._object = "Annotated images" + 0x8000000000000000;
      v100._countAndFlagsBits = 0xD000000000000029;
      String.append(_:)(v100);
      v101 = currentFileIndex;
      v134 = currentFileIndex;
      v102 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
      v104 = v103;
      v100._countAndFlagsBits = v102;
      v100._object = v103;
      String.append(_:)(v100);
      v104;
      v100._object = 0xE900000000000065;
      v100._countAndFlagsBits = 0x6C626174206E6920;
      String.append(_:)(v100);
      v141 = _;
      v105 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v105, 0, 0);
      *v106 = v141;
      *(v106 + 16) = 0;
      *(v106 + 32) = 0;
      *(v106 + 48) = 0;
      swift_willThrow();
      v107 = v101;
      goto LABEL_25;
    }

    v41 = *(v31[7] + 8 * v39);

    v42 = CMLSequence.value(at:)(v41);
    v135 = 0;
    MLDataValue.init(_:)(v42, *v30.i64);

    outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v145, v31);
    v43 = v141._countAndFlagsBits;
    if (v139 != 2)
    {
      outlined consume of MLDataValue(_, *(&_ + 1), v139);
      v98 = 2;
      v99 = v43;
      goto LABEL_22;
    }

    v129 = *(&_ + 1);
    v130 = _;
    v44 = objc_opt_self(NSFileManager);
    v45 = [v44 defaultManager];
    v46 = v45;
    v47 = v143;
    v48 = String._bridgeToObjectiveC()();
    v49 = [v46 fileExistsAtPath:v48];

    if (!v49)
    {
      outlined consume of MLDataValue(v130, v129, 2);
      *&_ = 0;
      *(&_ + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(26);
      SBYTE8(_);
      *&_ = 0xD000000000000018;
      *(&_ + 1) = "s, elapsed time: " + 0x8000000000000000;
      v109 = v141._countAndFlagsBits;
      v110._countAndFlagsBits = v141._countAndFlagsBits;
      v110._object = v47;
      String.append(_:)(v110);
      outlined consume of MLDataValue(v109, v47, 2);
      v141 = _;
      v111 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v111, 0, 0);
      *v112 = v141;
      *(v112 + 16) = 0;
      *(v112 + 32) = 0;
      *(v112 + 48) = 0;
      swift_willThrow();
      v107 = currentFileIndex;
LABEL_25:
      outlined consume of (offset: Int, element: MLDataTable.Row)?(v107, v145, v137);
LABEL_26:
      outlined consume of Result<_DataTable, Error>(v131, v132);
      return outlined destroy of MLActivityClassifier.ModelParameters(v144, type metadata accessor for _TablePrinter);
    }

    v50 = v128;
    v51 = v141._countAndFlagsBits;
    URL.init(fileURLWithPath:)(v141._countAndFlagsBits, v47);
    outlined consume of MLDataValue(v51, v47, 2);
    v52 = URL.lastPathComponent.getter();
    v54 = v53;
    v55 = v135;
    v56 = static _VideoUtilities.getHandKeyPointsFromImageUrl(url:)(v50);
    if (v55)
    {
      outlined consume of MLDataValue(v130, v129, 2);
      v54;
      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v145, v137);
      (*(v127 + 8))(v128, v126);
      goto LABEL_26;
    }

    if (__OFADD__(v116, currentFileIndex))
    {
      BUG();
    }

    v57 = v56;
    v141._countAndFlagsBits = 0;
    v58 = v56[2];
    v143 = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5(v116 + currentFileIndex, v58);
    v135 = _sSa9repeating5countSayxGx_SitcfCSS_Tt1g5(v130, v129, v58);
    v59 = _sSa9repeating5countSayxGx_SitcfCSS_Tt1g5(v52, v54, v58);
    specialized Array.append<A>(contentsOf:)(v57);
    specialized Array.append<A>(contentsOf:)(v143);
    specialized Array.append<A>(contentsOf:)(v135);
    specialized Array.append<A>(contentsOf:)(v59);
    v60 = currentFileIndex;
    _TablePrinter.printRow(currentFileIndex:)(currentFileIndex);
    v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v62 = swift_allocObject(v61, 72, 7);
    *(v62 + 16) = 1;
    *(v62 + 24) = 2;
    *v30.i64 = Date.timeIntervalSinceNow.getter();
    *(v62 + 56) = &type metadata for Double;
    *(v62 + 64) = &protocol witness table for Double;
    _mm_storel_ps((v62 + 32), _mm_xor_ps(v30, xmmword_33DFE0));
    v63 = String.init(format:_:)(1714826789, 0xE400000000000000, v62);
    v65 = v64;
    *&_ = 0;
    *(&_ + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(71);
    v30 = _;
    v66._countAndFlagsBits = 0xD000000000000018;
    v66._object = v118;
    String.append(_:)(v66);
    v67 = __OFADD__(1, v60);
    v68 = v60 + 1;
    if (v67)
    {
      BUG();
    }

    v134 = v68;
    v69._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    object = v69._object;
    String.append(_:)(v69);
    object;
    v71._countAndFlagsBits = 0x20666F2074756F20;
    v71._object = 0xE800000000000000;
    String.append(_:)(v71);
    v134 = v119;
    v72._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v73 = v72._object;
    String.append(_:)(v72);
    v73;
    v71._countAndFlagsBits = 0xD000000000000021;
    v71._object = v120;
    String.append(_:)(v71);
    v71._countAndFlagsBits = v63;
    v71._object = v65;
    String.append(_:)(v71);
    v65;
    v74 = _;
    v75 = static os_log_type_t.default.getter(v65);
    log(_:type:)(v74, v75);
    v74._object;
    outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v145, v137);
    (*(v127 + 8))(v128, v126);
  }

  v76 = v131;
  outlined consume of Result<_DataTable, Error>(v131, v132);
  static os_log_type_t.info.getter(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v78 = swift_allocObject(v77, 72, 7);
  v79 = v78;
  v78[2] = 1;
  v78[3] = 2;
  v78[7] = &type metadata for Int;
  v78[8] = &protocol witness table for Int;
  v78[4] = 3;
  os_log(_:dso:log:type:_:)("event: %lu");
  v79;
  v80 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLUntypedColumn)>);
  inited = swift_initStackObject(v80, v114);
  *(inited + 16) = 4;
  *(inited + 24) = 8;
  *(inited + 32) = 0x6C6562616CLL;
  *(inited + 40) = 0xE500000000000000;
  v131 = *v125;
  v82 = alloca(24);
  v83 = alloca(32);
  v115 = &v131;

  *(inited + 48) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  *(inited + 56) = v84 & 1;
  v131;
  *(inited + 64) = 0x5F6E6F6973736573;
  *(inited + 72) = 0xEA00000000006469;
  v131 = *v124;
  v85 = alloca(24);
  v86 = alloca(24);
  v115 = &v131;

  *(inited + 80) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  *(inited + 88) = v87 & 1;
  v131;
  *(inited + 96) = 0x746E696F7079656BLL;
  *(inited + 104) = 0xE900000000000073;
  v131 = *v123;
  v88 = alloca(24);
  v89 = alloca(32);
  v115 = &v131;

  *(inited + 112) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  *(inited + 120) = v90 & 1;
  v131;
  *(inited + 128) = 0x7461506567616D69;
  *(inited + 136) = 0xE900000000000068;
  v131 = *v136;
  v91 = alloca(24);
  v92 = alloca(32);
  v115 = &v131;

  *(inited + 144) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
  *(inited + 152) = v93 & 1;
  v131;
  v94 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for MLUntypedColumn, &protocol witness table for String);
  v95 = v141._countAndFlagsBits;
  _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(v94);
  if (!v95)
  {
    v96 = v132;
    v97 = v122;
    *v122 = v131;
    *(v97 + 8) = v96;
  }

  return outlined destroy of MLActivityClassifier.ModelParameters(v144, type metadata accessor for _TablePrinter);
}

uint64_t outlined consume of (offset: Int, element: MLDataTable.Row)?(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {

    a3;
  }

  return result;
}

uint64_t static MLActivityClassifier.validateAndConvertParameters(_:featureColumns:labelColumn:recordingFileColumn:table:)(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4, void *a5, void *a6, __m128 xmm0_0, uint64_t *a7)
{
  v10 = *(a7 + 8);
  v14 = *a7;
  v15 = v10;
  MLActivityClassifier.ModelParameters.generateTables(trainingData:featureColumns:labelColumn:recordingFileColumn:)(&v16, &v18, &v14, a2, a3, a4, xmm0_0, a5, a6);
  result = v13;
  if (!v8)
  {
    v20 = v16;
    v12 = v18;
    v22 = v19;
    v21 = v17;
    static MLActivityClassifier.validateAndConvertParameters(parameters:featureColumns:trainingTable:validationTable:)(a1, a2, &v16, &v18);
    outlined consume of MLDataTable?(v12, v22);
    return outlined consume of Result<_DataTable, Error>(v20, v21);
  }

  return result;
}

uint64_t static MLActivityClassifier.validateAndConvertParameters(parameters:featureColumns:trainingTable:validationTable:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v48 = a2;
  v47 = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v44 = &v31;
  v11 = *a3;
  LODWORD(a3) = *(a3 + 8);
  v39 = *a4;
  LOBYTE(v46) = *(a4 + 8);
  v38 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v12 = v7 + *(v38 + 44);
  *&v42 = v11;
  v49 = a3 & 1;
  BYTE8(v42) = a3 & 1;

  v41 = v11;
  outlined copy of Result<_DataTable, Error>(v11, a3);
  DataFrame.init(_:)(&v42);
  v13 = type metadata accessor for DataFrame(0);
  v40 = v12;
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  v14 = v7 + *(v38 + 48);
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v13);
  *v7 = 10;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 32;
  *(v7 + 32) = 100;
  *(v7 + 40) = v48;
  *(v7 + 48) = 0x6C6562616CLL;
  *(v7 + 56) = 0xE500000000000000;
  *(v7 + 64) = 0x5F6E6F6973736573;
  *(v7 + 72) = 0xEA00000000006469;
  v15 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
  v16 = v47;
  v17 = v15[6];
  if (!*(v47 + v17 + 8))
  {
    *v7 = *(v47 + v17);
  }

  v18 = v15[7];
  if (!*(v16 + v18 + 8))
  {
    *(v7 + 24) = *(v16 + v18);
  }

  v19 = v15[8];
  if (!*(v16 + v19 + 8))
  {
    *(v7 + 32) = *(v16 + v19);
  }

  v45 = v13;
  if (v46 == 0xFF)
  {
    v46 = v14;
    v36 = v41;
    v37 = v49;
    v42 = 0;
    v43 = 256;
    MLDataTable.randomSplitBySequence(strategy:by:on:)(&v32, &v34, &v42, 0x5F6E6F6973736573, 0xEA00000000006469, 0x6C6562616CLL, 0xE500000000000000);
    v47 = v32;
    v24 = v33;
    v25 = v35;
    *&v42 = v34;
    BYTE8(v42) = v35 & 1;
    v48 = v34;
    outlined copy of Result<_DataTable, Error>(v34, v35);
    v26 = v44;
    DataFrame.init(_:)(&v42);
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v45);
    outlined assign with take of DataFrame?(v26, v40);
    if (v24 == -1)
    {
      return outlined consume of Result<_DataTable, Error>(v48, v25);
    }

    v27 = v47;
    *&v42 = v47;
    v28 = v24;
    BYTE8(v42) = v24 & 1;
    outlined copy of Result<_DataTable, Error>(v47, v24);
    v29 = v44;
    DataFrame.init(_:)(&v42);
    outlined consume of Result<_DataTable, Error>(v48, v25);
    outlined consume of MLDataTable?(v27, v28);
    __swift_storeEnumTagSinglePayload(v29, 0, 1, v45);
    v22 = v29;
    v23 = v46;
  }

  else
  {
    *&v42 = v39;
    BYTE8(v42) = v46 & 1;
    outlined copy of Result<_DataTable, Error>(v39, v46);
    v20 = v14;
    v21 = v44;
    DataFrame.init(_:)(&v42);
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v45);
    v22 = v21;
    v23 = v20;
  }

  return outlined assign with take of DataFrame?(v22, v23);
}

uint64_t MLActivityClassifier.write(to:metadata:)(uint64_t a1, const void *a2)
{
  v73 = v2;
  v3 = *(*(type metadata accessor for MLActivityClassifier.Model(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v70 = v67;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v69 = v67;
  v8 = alloca(v3);
  v9 = alloca(v3);
  v74 = v67;
  v10 = type metadata accessor for URL(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  qmemcpy(v71, a2, sizeof(v71));
  v72 = a1;
  v76 = v10;
  v75 = v11;
  (*(v11 + 16))(v67, a1);
  v77 = v67;
  if (URL.hasDirectoryPath.getter())
  {
    v15._countAndFlagsBits = 0xD00000000000001CLL;
    v15._object = "l, appending that to file name." + 0x8000000000000000;
    URL.appendPathComponent(_:)(v15);
    *v68 = 0;
    *&v68[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(69);
    v15._object = " be an empty string." + 0x8000000000000000;
    v15._countAndFlagsBits = 0xD000000000000041;
    String.append(_:)(v15);
    v15._countAndFlagsBits = 0xD00000000000001CLL;
    v15._object = "l, appending that to file name." + 0x8000000000000000;
    String.append(_:)(v15);
    v15._object = 0xE200000000000000;
    v15._countAndFlagsBits = 11815;
    String.append(_:)(v15);
    v16 = *v68;
    v17 = *&v68[8];
    v18 = static os_log_type_t.info.getter(11815);
    v15._countAndFlagsBits = v16;
    v15._object = v17;
    log(_:type:)(v15, v18);
    v17;
  }

  v20 = URL.pathExtension.getter();
  v21 = v19;
  if (!(v20 ^ 0x67616B6361706C6DLL | v19 ^ 0xE900000000000065) || (_stringCompareWithSmolCheck(_:_:expecting:)(0x67616B6361706C6DLL, 0xE900000000000065, v20, v19, 0) & 1) != 0)
  {
    v21;
    outlined init with copy of MLActivityClassifier.Model(v73, v74);
    v22 = *&v71[8];
    if (*&v71[8])
    {
      v23 = *v71;
      v24 = *&v71[16];
      v25 = *&v71[24];
      v26 = *&v71[32];
      v27 = *&v71[48];
      v28 = *&v71[56];
      v29 = *&v71[64];
    }

    else
    {
      v30 = NSFullUserName();
      v31 = v30;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)(v31);
      v22 = v33;

      v25 = "RandomForestRegressor" + 0x8000000000000000;
      v34 = v32;
      v73 = v32;
      *v67 = v32;
      *&v67[8] = v22;
      *&v67[16] = 0xD000000000000033;
      *&v67[24] = "RandomForestRegressor" + 0x8000000000000000;
      *&v67[32] = 0;
      *&v67[48] = 49;
      v28 = 0xE100000000000000;
      *&v67[56] = 0xE100000000000000;
      *&v67[64] = 0;
      *v68 = v34;
      *&v68[8] = v22;
      *&v68[16] = 0xD000000000000033;
      *&v68[24] = "RandomForestRegressor" + 0x8000000000000000;
      *&v68[32] = 0;
      *&v68[48] = 49;
      *&v68[56] = 0xE100000000000000;
      *&v68[64] = 0;
      outlined retain of MLModelMetadata(v67);
      outlined release of MLModelMetadata(v68);
      v27 = 49;
      v26 = 0;
      v24 = 0xD000000000000033;
      v23 = v73;
      v29 = 0;
    }

    *v68 = v23;
    *&v68[8] = v22;
    *&v68[16] = v24;
    *&v68[24] = v25;
    *&v68[32] = v26;
    *&v68[48] = v27;
    *&v68[56] = v28;
    *&v68[64] = v29;
    outlined retain of MLModelMetadata?(v71);
    v35 = v72;
    v36 = v74;
LABEL_9:
    MLActivityClassifier.Model.writeMLPackage(to:metadata:)(v35, v68);
    goto LABEL_10;
  }

  if (v20 ^ 0x6C65646F6D6C6DLL | v21 ^ 0xE700000000000000)
  {
    v38 = _stringCompareWithSmolCheck(_:_:expecting:)(0x6C65646F6D6C6DLL, 0xE700000000000000, v20, v21, 0);
    v21;
    if ((v38 & 1) == 0)
    {
      v52 = static os_log_type_t.info.getter(v21);
      v53._countAndFlagsBits = 0xD00000000000004FLL;
      v53._object = "Image does not exist at " + 0x8000000000000000;
      log(_:type:)(v53, v52);
      v53._countAndFlagsBits = 0x67616B6361706C6DLL;
      v53._object = 0xE900000000000065;
      URL.appendPathExtension(_:)(v53);
      outlined init with copy of MLActivityClassifier.Model(v73, v70);
      v54 = *&v71[8];
      if (*&v71[8])
      {
        v55 = *v71;
        v56 = *&v71[16];
        v57 = *&v71[24];
        v58 = *&v71[32];
        v59 = *&v71[48];
        v60 = *&v71[56];
        v61 = *&v71[64];
      }

      else
      {
        v62 = NSFullUserName();
        v63 = v62;
        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)(v63);
        v54 = v65;

        v57 = "RandomForestRegressor" + 0x8000000000000000;
        v66 = v64;
        v74 = v64;
        *v67 = v64;
        *&v67[8] = v54;
        *&v67[16] = 0xD000000000000033;
        *&v67[24] = "RandomForestRegressor" + 0x8000000000000000;
        *&v67[32] = 0;
        *&v67[48] = 49;
        v60 = 0xE100000000000000;
        *&v67[56] = 0xE100000000000000;
        *&v67[64] = 0;
        *v68 = v66;
        *&v68[8] = v54;
        *&v68[16] = 0xD000000000000033;
        *&v68[24] = "RandomForestRegressor" + 0x8000000000000000;
        *&v68[32] = 0;
        *&v68[48] = 49;
        *&v68[56] = 0xE100000000000000;
        *&v68[64] = 0;
        outlined retain of MLModelMetadata(v67);
        outlined release of MLModelMetadata(v68);
        v59 = 49;
        v58 = 0;
        v55 = v74;
        v56 = 0xD000000000000033;
        v61 = 0;
      }

      *v68 = v55;
      *&v68[8] = v54;
      *&v68[16] = v56;
      *&v68[24] = v57;
      *&v68[32] = v58;
      *&v68[48] = v59;
      *&v68[56] = v60;
      *&v68[64] = v61;
      outlined retain of MLModelMetadata?(v71);
      v35 = v72;
      v36 = v70;
      goto LABEL_9;
    }
  }

  else
  {
    v21;
  }

  outlined init with copy of MLActivityClassifier.Model(v73, v69);
  v39 = *&v71[8];
  if (*&v71[8])
  {
    v40 = *v71;
    v41 = *&v71[16];
    v42 = *&v71[24];
    v43 = *&v71[32];
    v44 = *&v71[48];
    v45 = *&v71[56];
    v46 = *&v71[64];
  }

  else
  {
    v47 = NSFullUserName();
    v48 = v47;
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)(v48);
    v39 = v50;

    v42 = "RandomForestRegressor" + 0x8000000000000000;
    v51 = v49;
    v74 = v49;
    *v67 = v49;
    *&v67[8] = v39;
    *&v67[16] = 0xD000000000000033;
    *&v67[24] = "RandomForestRegressor" + 0x8000000000000000;
    *&v67[32] = 0;
    *&v67[48] = 49;
    v45 = 0xE100000000000000;
    *&v67[56] = 0xE100000000000000;
    *&v67[64] = 0;
    *v68 = v51;
    *&v68[8] = v39;
    *&v68[16] = 0xD000000000000033;
    *&v68[24] = "RandomForestRegressor" + 0x8000000000000000;
    *&v68[32] = 0;
    *&v68[48] = 49;
    *&v68[56] = 0xE100000000000000;
    *&v68[64] = 0;
    outlined retain of MLModelMetadata(v67);
    outlined release of MLModelMetadata(v68);
    v44 = 49;
    v43 = 0;
    v41 = 0xD000000000000033;
    v40 = v74;
    v46 = 0;
  }

  *v68 = v40;
  *&v68[8] = v39;
  *&v68[16] = v41;
  *&v68[24] = v42;
  *&v68[32] = v43;
  *&v68[48] = v44;
  *&v68[56] = v45;
  *&v68[64] = v46;
  outlined retain of MLModelMetadata?(v71);
  v36 = v69;
  MLActivityClassifier.Model.writeMLModel(to:metadata:)(v72, v68);
LABEL_10:
  qmemcpy(v67, v68, sizeof(v67));
  outlined release of MLModelMetadata(v67);
  outlined destroy of MLActivityClassifier.Model(v36);
  return (*(v75 + 8))(v77, v76);
}

uint64_t outlined init with copy of MLActivityClassifier.Model(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLActivityClassifier.Model(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined destroy of MLActivityClassifier.Model(uint64_t a1)
{
  v1 = type metadata accessor for MLActivityClassifier.Model(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t MLActivityClassifier.write(toFile:metadata:)(uint64_t a1, uint64_t a2, const void *a3)
{
  v9[1] = v3;
  v10 = a3;
  v4 = type metadata accessor for URL(0);
  v11 = *(v4 - 8);
  v5 = *(v11 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  URL.init(fileURLWithPath:)(a1, a2);
  MLActivityClassifier.write(to:metadata:)(v9, v10);
  return (*(v11 + 8))(v9, v4);
}

uint64_t outlined assign with take of DataFrame?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  (*(*(v2 - 8) + 40))(a2, a1, v2);
  return a2;
}

void *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy11TabularData6ColumnVySSGAKG_SS4text_SS5labelts5NeverOTg5043_sSSSgAAS2SIgggoo_AA_AAtSS4text_SS5labelts5k106OIegnrzr_TR143_s8CreateML16MLTextClassifierV10evaluation2on10textColumn05labelH0AA19MLClassifierMetricsV11f31Data0M5FrameV_S2StFSS0G0_SS0I0tM19_AOtXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  i = *(v1 - 8);
  v2 = *(i + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v69 = &v54;
  v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<Column<String>, Column<String>>);
  v5 = *(*(v65 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v67 = &v54;
  v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<Column<String>, Column<String>>.Iterator);
  v8 = *(*(v56 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v60 = &v54;
  v11 = lazy protocol witness table accessor for type Column<String> and conformance Column<A>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &protocol conformance descriptor for Column<A>);
  v64 = v11;
  v63 = dispatch thunk of Sequence.underestimatedCount.getter(v1, v11);
  v12 = dispatch thunk of Sequence.underestimatedCount.getter(v1, v11);
  v13 = v63;
  if (v12 < v63)
  {
    v13 = v12;
  }

  v63 = v13;
  v62 = _swiftEmptyArrayStorage;
  v14 = 0;
  if (v13 > 0)
  {
    v14 = v13;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
  v66 = v62;
  v15 = v67;
  outlined init with copy of Zip2Sequence<Column<String>, Column<String>>(a1, v67);
  i = *(i + 32);
  (i)(v69, v15, v1);
  v16 = v60;
  v17 = v64;
  dispatch thunk of Sequence.makeIterator()(v1, v64);
  (i)(v69, v67 + *(v65 + 52), v1);
  v65 = v16 + *(v56 + 52);
  dispatch thunk of Sequence.makeIterator()(v1, v17);
  if (v63 < 0)
  {
    BUG();
  }

  v18 = v1;
  v59 = v1;
  v19 = v16;
  if (v63)
  {
    v20 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<String>>) + 36);
    v67 = (v16 + v20);
    i = v65 + v20;
    v69 = lazy protocol witness table accessor for type Column<String> and conformance Column<A>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &protocol conformance descriptor for Column<A>);
    do
    {
      dispatch thunk of Collection.endIndex.getter(v18, v69);
      if (*v67 == v55[0])
      {
        BUG();
      }

      v21 = v59;
      v22 = dispatch thunk of Collection.subscript.read(v55, v67, v59, v69);
      v61 = *v23;
      v64 = v23[1];

      v22(v55, 0);
      v24 = v69;
      dispatch thunk of Collection.formIndex(after:)(v67, v21, v69);
      dispatch thunk of Collection.endIndex.getter(v21, v24);
      if (*i == v55[0])
      {
        v64;
        BUG();
      }

      v25 = v69;
      v27 = dispatch thunk of Collection.subscript.read(v55, i, v21, v69);
      v28 = v26[1];
      v29 = 0xE000000000000000;
      if (v28)
      {
        v28 = *v26;
        v29 = v26[1];
      }

      v58 = v29;
      v57 = v28;

      v27(v55, 0);
      dispatch thunk of Collection.formIndex(after:)(i, v59, v25);
      v30 = v64;
      v31 = v61;
      if (!v64)
      {
        v31 = 0;
        v30 = 0xE000000000000000;
      }

      v32 = v66;
      v62 = v66;
      v33 = v66[2];
      v34 = v66[3];
      v35 = v33 + 1;
      if (v34 >> 1 <= v33)
      {
        v66 = (v33 + 1);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v34 >= 2, v35, 1);
        v35 = v66;
        v32 = v62;
      }

      v32[2] = v35;
      v36 = 4 * v33;
      v32[v36 + 4] = v31;
      v32[v36 + 5] = v30;
      v32[v36 + 6] = v57;
      v66 = v32;
      v32[v36 + 7] = v58;
      v37 = v63-- == 1;
      v18 = v59;
      v19 = v60;
    }

    while (!v37);
  }

  v63 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<String>>);
  v67 = (v19 + *(v63 + 36));
  v38 = lazy protocol witness table accessor for type Column<String> and conformance Column<A>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &protocol conformance descriptor for Column<A>);
  for (i = v38; ; v38 = i)
  {
    v39 = v38;
    dispatch thunk of Collection.endIndex.getter(v18, v38);
    if (*v67 == v55[0])
    {
      break;
    }

    v69 = dispatch thunk of Collection.subscript.read(v55, v67, v18, v39);
    v61 = *v40;
    v64 = v40[1];

    (v69)(v55, 0);
    dispatch thunk of Collection.formIndex(after:)(v67, v18, v39);
    v69 = *(v63 + 36);
    v41 = v65;
    dispatch thunk of Collection.endIndex.getter(v18, v39);
    if (*(v41 + v69) == v55[0])
    {
      v64;
      break;
    }

    v69 += v41;
    v43 = dispatch thunk of Collection.subscript.read(v55, v69, v18, v39);
    v44 = v42[1];
    v45 = 0xE000000000000000;
    if (v44)
    {
      v44 = *v42;
      v45 = v42[1];
    }

    v58 = v45;
    v57 = v44;

    v43(v55, 0);
    dispatch thunk of Collection.formIndex(after:)(v69, v18, i);
    v46 = v64;
    v47 = v61;
    if (!v64)
    {
      v47 = 0;
      v46 = 0xE000000000000000;
    }

    v48 = v66;
    v62 = v66;
    v49 = v66[2];
    v50 = v66[3];
    if (v50 >> 1 <= v49)
    {
      v61 = v47;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v50 >= 2, v49 + 1, 1);
      v47 = v61;
      v48 = v62;
    }

    v48[2] = v49 + 1;
    v51 = 4 * v49;
    v48[v51 + 4] = v47;
    v48[v51 + 5] = v46;
    v48[v51 + 6] = v57;
    v66 = v48;
    v48[v51 + 7] = v58;
    v18 = v59;
  }

  v52 = v60;
  *(v60 + *(v56 + 56)) = 1;
  outlined destroy of Tensor?(v52, &demangling cache variable for type metadata for Zip2Sequence<Column<String>, Column<String>>.Iterator);
  return v66;
}

uint64_t MLTextClassifier.evaluation(on:)(uint64_t a1, double a2)
{
  v3 = static _TextUtilities.getTextLabeledDictionary(from:)(a1, a2);
  v4 = v3;
  v5 = unpackLabeledTexts(_:)(v3);
  v6 = v5;
  _s8CreateML16MLTextClassifierV10evaluation2on5usingAA19MLClassifierMetricsVx_So7NLModelCtSlRzSS4text_SS5labelt7ElementRtzlFZSaySSAK_SSALtG_Tt2g5(v5, *v2);
  v4;
  return v6;
}

uint64_t MLTextClassifier.evaluation(on:)(uint64_t a1)
{
  v2 = unpackLabeledTexts(_:)(a1);
  v3 = v2;
  _s8CreateML16MLTextClassifierV10evaluation2on5usingAA19MLClassifierMetricsVx_So7NLModelCtSlRzSS4text_SS5labelt7ElementRtzlFZSaySSAK_SSALtG_Tt2g5(v2, *v1);
  return v3;
}

uint64_t MLTextClassifier.evaluation(on:textColumn:labelColumn:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v37 = v6;
  _ = a5;
  v45._countAndFlagsBits = a4;
  v43 = v5;
  v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<Column<String>, Column<String>>);
  v8 = *(*(v40 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v39 = &v36;
  v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v45._object = *(v38 - 8);
  v11 = *(v45._object + 8);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v47 = &v36;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v46 = &v36;
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any.Type>);
  v17 = swift_allocObject(v16, 40, 7);
  v18 = v17;
  v17[2] = 1;
  v17[3] = 2;
  v17[4] = &type metadata for String;
  v41 = a2;
  v19._countAndFlagsBits = a2;
  v20 = a3;
  v19._object = a3;
  DataFrame.validateColumnTypes(_:_:context:)(v19, v17, __PAIR128__(0xE400000000000000, 1954047316));
  v18;
  if (v21 || (v42 = v20, v22 = v46, object = v45._object, v24 = swift_allocObject(v16, 40, 7), v25 = v24, v24[2] = 1, v24[3] = 2, v24[4] = &type metadata for String, v26._countAndFlagsBits = v45._countAndFlagsBits, v26._object = _, DataFrame.validateColumnTypes(_:_:context:)(v26, v24, __PAIR128__(0xE500000000000000, 0x6C6562614CLL)), v25, v21))
  {
    v27 = v43;
    *v43 = v21;
    v28 = type metadata accessor for MLClassifierMetrics.Contents(0);
    return swift_storeEnumTagMultiPayload(v27, v28, 2);
  }

  else
  {
    DataFrame.subscript.getter(v41, v42, &type metadata for String);
    DataFrame.subscript.getter(v45._countAndFlagsBits, _, &type metadata for String);
    v30 = object[2];
    v31 = v39;
    v32 = v38;
    v30(v39, v22, v38);
    v33 = v47;
    v30((v31 + *(v40 + 52)), v47, v32);
    ML16MLTextClassifierV10evaluation2on10textColumn05labelH0AA19MLClassifierMetricsV11f31Data0M5FrameV_S2StFSS0G0_SS0I0tM19_AOtXEfU_Tf3nnnpf_nTf1cn_n = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy11TabularData6ColumnVySSGAKG_SS4text_SS5labelts5NeverOTg5043_sSSSgAAS2SIgggoo_AA_AAtSS4text_SS5labelts5k106OIegnrzr_TR143_s8CreateML16MLTextClassifierV10evaluation2on10textColumn05labelH0AA19MLClassifierMetricsV11f31Data0M5FrameV_S2StFSS0G0_SS0I0tM19_AOtXEfU_Tf3nnnpf_nTf1cn_n(v31);
    outlined destroy of Tensor?(v31, &demangling cache variable for type metadata for Zip2Sequence<Column<String>, Column<String>>);
    _s8CreateML16MLTextClassifierV10evaluation2on5usingAA19MLClassifierMetricsVx_So7NLModelCtSlRzSS4text_SS5labelt7ElementRtzlFZSaySSAK_SSALtG_Tt2g5(ML16MLTextClassifierV10evaluation2on10textColumn05labelH0AA19MLClassifierMetricsV11f31Data0M5FrameV_S2StFSS0G0_SS0I0tM19_AOtXEfU_Tf3nnnpf_nTf1cn_n, *v37);
    v35 = *(v45._object + 1);
    v35(v33, v32);
    v35(v46, v32);
    return ML16MLTextClassifierV10evaluation2on10textColumn05labelH0AA19MLClassifierMetricsV11f31Data0M5FrameV_S2StFSS0G0_SS0I0tM19_AOtXEfU_Tf3nnnpf_nTf1cn_n;
  }
}

{
  v15 = v5;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = a2;
  v6 = type metadata accessor for DataFrame(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = *(a1 + 8);
  v13 = *a1;
  v14 = v11;
  outlined copy of Result<_DataTable, Error>(v13, v11);
  DataFrame.init(_:)(&v13);
  MLTextClassifier.evaluation(on:textColumn:labelColumn:)(&v13, v19, v18, v17, v16);
  return (*(v7 + 8))(&v13, v6);
}

uint64_t outlined init with copy of Zip2Sequence<Column<String>, Column<String>>(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<Column<String>, Column<String>>);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

void *initializeBufferWithCopyOfBuffer for MLSupportVectorClassifier.Classifier(uint64_t a1, uint64_t *a2, uint64_t a3)
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
    *(a1 + 8) = a2[1];
    *(a1 + 16) = a2[2];
    *(a1 + 24) = a2[3];
    v19 = (a1 + 32);
    v20 = a2 + 4;
    v6 = a2[7];

    if (v6)
    {
      *(a1 + 56) = v6;
      (**(v6 - 8))(v19, v20, v6);
    }

    else
    {
      v8 = *v20;
      *(a1 + 48) = *(a2 + 3);
      *v19 = v8;
    }

    *(a1 + 64) = *(a2 + 4);
    *(a1 + 80) = *(a2 + 80);
    v9 = *(a3 + 28);
    v10 = a1 + v9;
    v11 = a2 + v9;
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifier<Double, String>, LinearSupportVectorClassifier<Double, Int>>);
    if (swift_getEnumCaseMultiPayload(v11, v12) == 1)
    {
      v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifier<Double, Int>);
      (*(*(v13 - 8) + 16))(v10, v11, v13);
      v14 = 1;
      v15 = v10;
      v16 = v12;
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifier<Double, String>);
      (*(*(v17 - 8) + 16))(v10, v11, v17);
      v15 = v10;
      v16 = v12;
      v14 = 0;
    }

    swift_storeEnumTagMultiPayload(v15, v16, v14);
  }

  return v3;
}

uint64_t destroy for MLSupportVectorClassifier.Classifier(void *a1, uint64_t a2)
{
  a1[1];
  a1[2];
  if (a1[7])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1 + 4);
  }

  v2 = a1 + *(a2 + 28);
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifier<Double, String>, LinearSupportVectorClassifier<Double, Int>>);
  v4 = &demangling cache variable for type metadata for LinearSupportVectorClassifier<Double, String>;
  if (swift_getEnumCaseMultiPayload(v2, v3) == 1)
  {
    v4 = &demangling cache variable for type metadata for LinearSupportVectorClassifier<Double, Int>;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledName(v4);
  return (*(*(v5 - 8) + 8))(v2, v5);
}

uint64_t initializeWithCopy for MLSupportVectorClassifier.Classifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v16 = (a1 + 32);
  v4 = *(a2 + 56);

  if (v4)
  {
    *(a1 + 56) = v4;
    (**(v4 - 8))(v16, a2 + 32, v4);
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *v16 = v5;
  }

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  v6 = *(a3 + 28);
  v7 = a1 + v6;
  v8 = v6 + a2;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifier<Double, String>, LinearSupportVectorClassifier<Double, Int>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v8, v9);
  v11 = EnumCaseMultiPayload == 1;
  v12 = &demangling cache variable for type metadata for LinearSupportVectorClassifier<Double, String>;
  if (EnumCaseMultiPayload == 1)
  {
    v12 = &demangling cache variable for type metadata for LinearSupportVectorClassifier<Double, Int>;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledName(v12);
  (*(*(v13 - 8) + 16))(v7, v8, v13);
  swift_storeEnumTagMultiPayload(v7, v9, v11);
  return a1;
}

uint64_t assignWithCopy for MLSupportVectorClassifier.Classifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v5;
  v6 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v6;
  *(a1 + 24) = *(a2 + 24);
  v7 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (v7)
    {
      __swift_assign_boxed_opaque_existential_0((a1 + 32), (a2 + 32));
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 32));
  }

  else if (v7)
  {
    *(a1 + 56) = v7;
    (**(v7 - 8))(a1 + 32, a2 + 32);
    goto LABEL_8;
  }

  v8 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v8;
LABEL_8:
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  if (a1 != a2)
  {
    v9 = *(a3 + 28);
    v10 = v9 + a2;
    v11 = a1 + v9;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v11, &demangling cache variable for type metadata for Either<LinearSupportVectorClassifier<Double, String>, LinearSupportVectorClassifier<Double, Int>>);
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifier<Double, String>, LinearSupportVectorClassifier<Double, Int>>);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v10, v12);
    v14 = EnumCaseMultiPayload == 1;
    v15 = &demangling cache variable for type metadata for LinearSupportVectorClassifier<Double, String>;
    if (EnumCaseMultiPayload == 1)
    {
      v15 = &demangling cache variable for type metadata for LinearSupportVectorClassifier<Double, Int>;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledName(v15);
    (*(*(v16 - 8) + 16))(v11, v10, v16);
    swift_storeEnumTagMultiPayload(v11, v12, v14);
  }

  return a1;
}

uint64_t initializeWithTake for MLSupportVectorClassifier.Classifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  v6 = *(a2 + 56);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v7 = *(a3 + 28);
  v8 = a1 + v7;
  v9 = v7 + a2;
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifier<Double, String>, LinearSupportVectorClassifier<Double, Int>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v9, v10);
  v12 = EnumCaseMultiPayload == 1;
  v13 = &demangling cache variable for type metadata for LinearSupportVectorClassifier<Double, String>;
  if (EnumCaseMultiPayload == 1)
  {
    v13 = &demangling cache variable for type metadata for LinearSupportVectorClassifier<Double, Int>;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledName(v13);
  (*(*(v14 - 8) + 32))(v8, v9, v14);
  swift_storeEnumTagMultiPayload(v8, v10, v12);
  return a1;
}

uint64_t assignWithTake for MLSupportVectorClassifier.Classifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  v5;
  v6 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  v6;
  *(a1 + 24) = *(a2 + 24);
  if (*(a1 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 32));
  }

  v7 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v7;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  if (a1 != a2)
  {
    v8 = *(a3 + 28);
    v9 = v8 + a2;
    v10 = a1 + v8;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, &demangling cache variable for type metadata for Either<LinearSupportVectorClassifier<Double, String>, LinearSupportVectorClassifier<Double, Int>>);
    v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifier<Double, String>, LinearSupportVectorClassifier<Double, Int>>);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v9, v11);
    v13 = EnumCaseMultiPayload == 1;
    v14 = &demangling cache variable for type metadata for LinearSupportVectorClassifier<Double, String>;
    if (EnumCaseMultiPayload == 1)
    {
      v14 = &demangling cache variable for type metadata for LinearSupportVectorClassifier<Double, Int>;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledName(v14);
    (*(*(v15 - 8) + 32))(v10, v9, v15);
    swift_storeEnumTagMultiPayload(v10, v11, v13);
  }

  return a1;
}

uint64_t sub_2A8812(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifier<Double, String>, LinearSupportVectorClassifier<Double, Int>>);
    return __swift_getEnumTagSinglePayload(*(a3 + 28) + a1, a2, v5);
  }

  return result;
}

uint64_t sub_2A889F(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + 8) = 2 * (a2 - 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifier<Double, String>, LinearSupportVectorClassifier<Double, Int>>);
    return __swift_storeEnumTagSinglePayload(*(a4 + 28) + a1, a2, a2, v5);
  }

  return result;
}

uint64_t type metadata accessor for MLSupportVectorClassifier.Classifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLSupportVectorClassifier.Classifier;
  if (!type metadata singleton initialization cache for MLSupportVectorClassifier.Classifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLSupportVectorClassifier.Classifier);
  }

  return result;
}

uint64_t type metadata completion function for MLSupportVectorClassifier.Classifier(uint64_t a1)
{
  v3[0] = &unk_348C88;
  v3[1] = &value witness table for Builtin.BridgeObject + 64;
  v3[2] = &unk_348CA0;
  result = type metadata accessor for Either<LinearSupportVectorClassifier<Double, String>, LinearSupportVectorClassifier<Double, Int>>(319);
  if (v2 <= 0x3F)
  {
    v3[3] = *(result - 8) + 64;
    swift_initStructMetadata(a1, 256, 4, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for Either<LinearSupportVectorClassifier<Double, String>, LinearSupportVectorClassifier<Double, Int>>(uint64_t a1)
{
  result = lazy cache variable for type metadata for Either<LinearSupportVectorClassifier<Double, String>, LinearSupportVectorClassifier<Double, Int>>;
  if (!lazy cache variable for type metadata for Either<LinearSupportVectorClassifier<Double, String>, LinearSupportVectorClassifier<Double, Int>>)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for LinearSupportVectorClassifier<Double, String>);
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for LinearSupportVectorClassifier<Double, Int>);
    result = type metadata accessor for Either(a1, v2, v3, v4);
    if (!v5)
    {
      lazy cache variable for type metadata for Either<LinearSupportVectorClassifier<Double, String>, LinearSupportVectorClassifier<Double, Int>> = result;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MLSupportVectorClassifier.Model and conformance MLSupportVectorClassifier.Model()
{
  result = lazy protocol witness table cache variable for type MLSupportVectorClassifier.Model and conformance MLSupportVectorClassifier.Model;
  if (!lazy protocol witness table cache variable for type MLSupportVectorClassifier.Model and conformance MLSupportVectorClassifier.Model)
  {
    v1 = type metadata accessor for MLSupportVectorClassifier.Model(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for MLSupportVectorClassifier.Model, v1);
    lazy protocol witness table cache variable for type MLSupportVectorClassifier.Model and conformance MLSupportVectorClassifier.Model = result;
  }

  return result;
}

void *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay6CoreML13MLShapedArrayVySdGG11TabularData12FilledColumnVyAM0M0VySSGGG_18CreateMLComponents16AnnotatedFeatureVyAKSSGs5NeverOTg503_s6f4ML13hi9VySdGSS18n14MLComponents16pqu22ADSSGIegngr_AD_SStAHs5r101OIegnrzr_TR03_s8e142ML25MLSupportVectorClassifierV0E0V6fitted2to10validateOn12eventHandlerAC5ModelV11j71Data0N5FrameV_ANSgy0A12MLComponents5EventVYbcSgtKFAP16gh4Vy04a4B013cD19uV25GSSGAY_SStcfu0_Tf3nnnpf_nTf1cn_nTm(uint64_t *a1)
{
  v94 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Double>, String>);
  v95 = *(v94 - 8);
  v1 = *(v95 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v103 = &v85;
  v4 = alloca(v1);
  v5 = alloca(v1);
  v98 = &v85;
  v115 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
  v114 = *(v115 - 8);
  v6 = *(v114 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v107 = &v85;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v96 = &v85;
  v11 = alloca(v6);
  v12 = alloca(v6);
  v102 = &v85;
  v97 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLShapedArray<Double>, String));
  v13 = *(*(v97 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v86 = &v85;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v89 = &v85;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v90 = &v85;
  v105 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v113 = *(v105 - 8);
  v20 = *(v113 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v108 = &v85;
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<[MLShapedArray<Double>], FilledColumn<Column<String>>>);
  v24 = *(v23 - 8);
  v100 = v23;
  v25 = *(v24 + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v109 = &v85;
  v99 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<[MLShapedArray<Double>], FilledColumn<Column<String>>>.Iterator);
  v28 = *(*(v99 - 8) + 64);
  v29 = alloca(v28);
  v30 = alloca(v28);
  v111 = a1;
  v31 = *(*a1 + 16);
  v110 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<String>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<String>>, &protocol conformance descriptor for FilledColumn<A>);
  v32 = v105;
  v33 = dispatch thunk of Sequence.underestimatedCount.getter(v105, v110);
  v101 = v33;
  if (v33 < v31)
  {
    v31 = v33;
  }

  v112 = _swiftEmptyArrayStorage;
  v34 = 0;
  if (v31 > 0)
  {
    v34 = v31;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34, 0);
  v106 = v112;
  v35 = v109;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v111, v109, &demangling cache variable for type metadata for Zip2Sequence<[MLShapedArray<Double>], FilledColumn<Column<String>>>);
  v104 = *v35;
  v85 = v104;
  v86 = 0;
  (*(v113 + 32))(v108, &v35[*(v100 + 52)], v32);
  v36 = *(v99 + 52);
  v111 = &v85;
  v93 = &v85 + v36;
  dispatch thunk of Sequence.makeIterator()(v32, v110);
  if (v101 < 0)
  {
    BUG();
  }

  v37 = v31;
  if (!v31)
  {
    v40 = v114;
    goto LABEL_20;
  }

  v38 = v104;
  v87 = *(v104 + 16);
  v39 = 0;
  v40 = v114;
  v41 = v115;
  v88 = v31;
  do
  {
    if (v87 == v39)
    {
      goto LABEL_19;
    }

    v42 = v107;
    if (v39 >= *(v38 + 16))
    {
      BUG();
    }

    v43 = v39 + 1;
    v44 = v38 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v39;
    v113 = v43;
    v111[1] = v43;
    v108 = *(v40 + 16);
    (v108)(v42, v44, v41);
    v45 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<String>>>) + 36);
    v46 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<String>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<String>>, &protocol conformance descriptor for FilledColumn<A>);
    v47 = v93;
    v48 = v105;
    v109 = v46;
    dispatch thunk of Collection.endIndex.getter(v105, v46);
    if (*&v47[v45] == v91)
    {
      (*(v114 + 8))(v107, v115);
LABEL_19:
      BUG();
    }

    v49 = &v47[v45];
    v50 = v48;
    v51 = v109;
    v101 = dispatch thunk of Collection.subscript.read(&v91, v49, v50, v109);
    v110 = *v52;
    v100 = *(v52 + 8);

    v101(&v91, 0);
    dispatch thunk of Collection.formIndex(after:)(v49, v105, v51);
    v53 = *(v97 + 48);
    v54 = v86;
    (*(v114 + 32))(v86, v107, v115);
    v55 = v110;
    *(v54 + v53) = v110;
    v56 = v100;
    *(v54 + v53 + 8) = v100;
    v57 = v96;
    (v108)(v96, v54, v115);
    v91 = v55;
    v92 = v56;

    AnnotatedFeature.init(feature:annotation:)(v57, &v91, v115, &type metadata for String);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v54, &demangling cache variable for type metadata for (MLShapedArray<Double>, String));
    v58 = v106;
    v112 = v106;
    v59 = v106[2];
    v40 = v114;
    if (v106[3] >> 1 <= v59)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v106[3] >= 2uLL, v59 + 1, 1);
      v40 = v114;
      v58 = v112;
    }

    v58[2] = v59 + 1;
    v60 = *(v95 + 80);
    v106 = v58;
    (*(v95 + 32))(v58 + ((v60 + 32) & ~v60) + *(v95 + 72) * v59, v103, v94);
    v39 = v113;
    v37 = v88;
    v38 = v104;
    v41 = v115;
  }

  while (v88 != v113);
  while (1)
  {
    v61 = v102;
    if (v37 == *(v38 + 16))
    {
      break;
    }

    if (v37 >= *(v38 + 16))
    {
      BUG();
    }

    v62 = (v37 + 1);
    v63 = v38 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v37;
    v107 = v62;
    v111[1] = v62;
    v103 = *(v40 + 16);
    (v103)(v61, v63, v41);
    v64 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<String>>>) + 36);
    v65 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<String>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<String>>, &protocol conformance descriptor for FilledColumn<A>);
    v66 = v93;
    v67 = v105;
    v113 = v65;
    dispatch thunk of Collection.endIndex.getter(v105, v65);
    if (*&v66[v64] == v91)
    {
      (*(v114 + 8))(v102, v115);
      break;
    }

    v68 = &v66[v64];
    v69 = v67;
    v70 = v113;
    v110 = dispatch thunk of Collection.subscript.read(&v91, v68, v69, v113);
    v108 = *v71;
    v109 = v71[1];

    v110(&v91, 0);
    dispatch thunk of Collection.formIndex(after:)(v68, v105, v70);
    v72 = v97;
    v73 = *(v97 + 48);
    v74 = v89;
    (*(v114 + 32))(v89, v102, v115);
    *(v74 + v73) = v108;
    *(v74 + v73 + 8) = v109;
    v75 = v90;
    outlined init with take of Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>(v74, v90, &demangling cache variable for type metadata for (MLShapedArray<Double>, String));
    v76 = *(v72 + 48);
    v113 = *(v75 + v76);
    v77 = *(v75 + v76 + 8);
    v78 = v96;
    v79 = v115;
    (v103)(v96, v75, v115);
    v91 = v113;
    v92 = v77;

    AnnotatedFeature.init(feature:annotation:)(v78, &v91, v79, &type metadata for String);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v75, &demangling cache variable for type metadata for (MLShapedArray<Double>, String));
    v80 = v106;
    v112 = v106;
    v81 = v106[2];
    v40 = v114;
    if (v106[3] >> 1 <= v81)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v106[3] >= 2uLL, v81 + 1, 1);
      v40 = v114;
      v80 = v112;
    }

    v80[2] = v81 + 1;
    v82 = *(v95 + 80);
    v106 = v80;
    (*(v95 + 32))(v80 + ((v82 + 32) & ~v82) + *(v95 + 72) * v81, v98, v94);
    v37 = v107;
LABEL_20:
    v41 = v115;
    v38 = v104;
  }

  v83 = v111;
  *(v111 + *(v99 + 56)) = 1;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v83, &demangling cache variable for type metadata for Zip2Sequence<[MLShapedArray<Double>], FilledColumn<Column<String>>>.Iterator);
  return v106;
}

void *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay6CoreML13MLShapedArrayVySdGG11TabularData12FilledColumnVyAM0M0VySiGGG_18CreateMLComponents16AnnotatedFeatureVyAKSiGs5NeverOTg503_s6f4ML13hi9VySdGSi18n14MLComponents16pqu22ADSiGIegnyr_AD_SitAHs5r101OIegnrzr_TR03_s8e142ML25MLSupportVectorClassifierV0E0V6fitted2to10validateOn12eventHandlerAC5ModelV11j71Data0N5FrameV_ANSgy0A12MLComponents5EventVYbcSgtKFAP16gh4Vy04a4B013cD19uV25GSiGAY_Sitcfu2_Tf3nnnpf_nTf1cn_nTm(uint64_t a1)
{
  v91 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Double>, Int>);
  v92 = *(v91 - 8);
  v1 = *(v92 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v101 = &v83;
  v4 = alloca(v1);
  v5 = alloca(v1);
  v86 = &v83;
  v108 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
  v110 = *(v108 - 8);
  v6 = *(v110 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v103 = &v83;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v93 = &v83;
  v11 = alloca(v6);
  v12 = alloca(v6);
  v99 = &v83;
  v94 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLShapedArray<Double>, Int));
  v13 = *(*(v94 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v84 = &v83;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v87 = &v83;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v88 = &v83;
  v98 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<Int>>);
  v109 = *(v98 - 8);
  v20 = *(v109 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v104 = &v83;
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<[MLShapedArray<Double>], FilledColumn<Column<Int>>>);
  v24 = *(v23 - 8);
  v105 = v23;
  v25 = *(v24 + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v96 = &v83;
  v95 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<[MLShapedArray<Double>], FilledColumn<Column<Int>>>.Iterator);
  v28 = *(*(v95 - 8) + 64);
  v29 = alloca(v28);
  v30 = alloca(v28);
  v107 = a1;
  v31 = *(*a1 + 16);
  v97 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<Int>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<Int>>, &protocol conformance descriptor for FilledColumn<A>);
  v32 = v98;
  v33 = dispatch thunk of Sequence.underestimatedCount.getter(v98, v97);
  v100 = v33;
  if (v33 < v31)
  {
    v31 = v33;
  }

  v106 = _swiftEmptyArrayStorage;
  v34 = 0;
  if (v31 > 0)
  {
    v34 = v31;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34, 0);
  v102 = v106;
  v35 = v96;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v107, v96, &demangling cache variable for type metadata for Zip2Sequence<[MLShapedArray<Double>], FilledColumn<Column<Int>>>);
  v107 = *v35;
  v83 = v107;
  v84 = 0;
  (*(v109 + 32))(v104, v35 + *(v105 + 13), v32);
  v36 = *(v95 + 52);
  v105 = &v83;
  v90 = &v83 + v36;
  dispatch thunk of Sequence.makeIterator()(v32, v97);
  if (v100 < 0)
  {
    BUG();
  }

  if (v31)
  {
    v37 = v107;
    v100 = *(v107 + 16);
    v38 = 0;
    v39 = v110;
    v85 = v31;
    while (1)
    {
      if (v100 == v38)
      {
        goto LABEL_29;
      }

      v40 = v103;
      if (v38 >= *(v37 + 16))
      {
        BUG();
      }

      v41 = (v38 + 1);
      v42 = v37 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v38;
      v104 = v41;
      v105[1] = v41;
      v96 = *(v39 + 16);
      (v96)(v40, v42, v108);
      v43 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<Int>>>) + 36);
      v44 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<Int>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<Int>>, &protocol conformance descriptor for FilledColumn<A>);
      v45 = v90;
      v46 = v98;
      v109 = v44;
      dispatch thunk of Collection.endIndex.getter(v98, v44);
      if (*&v45[v43] == v89[0])
      {
        break;
      }

      v47 = &v45[v43];
      v48 = dispatch thunk of Collection.subscript.read(v89, v47, v46, v109);
      v97 = *v49;
      v48(v89, 0);
      dispatch thunk of Collection.formIndex(after:)(v47, v46, v109);
      v50 = *(v94 + 48);
      v51 = v84;
      v52 = v108;
      (*(v110 + 32))(v84, v103, v108);
      v53 = v97;
      *(v51 + v50) = v97;
      v54 = v93;
      (v96)(v93, v51, v52);
      v89[0] = v53;
      AnnotatedFeature.init(feature:annotation:)(v54, v89, v52, &type metadata for Int);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v51, &demangling cache variable for type metadata for (MLShapedArray<Double>, Int));
      v55 = v102;
      v106 = v102;
      v56 = v102[2];
      v39 = v110;
      if (v102[3] >> 1 <= v56)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v102[3] >= 2uLL, v56 + 1, 1);
        v39 = v110;
        v55 = v106;
      }

      v55[2] = v56 + 1;
      v57 = *(v92 + 80);
      v102 = v55;
      (*(v92 + 32))(v55 + ((v57 + 32) & ~v57) + *(v92 + 72) * v56, v101, v91);
      v38 = v104;
      v31 = v85;
      v37 = v107;
      if (v85 == v104)
      {
        goto LABEL_16;
      }
    }

    (*(v110 + 8))(v103, v108);
LABEL_29:
    BUG();
  }

  v39 = v110;
  v37 = v107;
LABEL_16:
  v58 = v108;
  while (1)
  {
    v59 = v99;
    if (v31 == *(v37 + 16))
    {
      break;
    }

    if (v31 >= *(v37 + 16))
    {
      BUG();
    }

    v60 = (v31 + 1);
    v61 = v37 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v31;
    v103 = v60;
    v105[1] = v60;
    v101 = *(v39 + 16);
    (v101)(v59, v61, v58);
    v62 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<Int>>>) + 36);
    v63 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<Int>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<Int>>, &protocol conformance descriptor for FilledColumn<A>);
    v64 = v90;
    v65 = v98;
    v109 = v63;
    dispatch thunk of Collection.endIndex.getter(v98, v63);
    if (*&v64[v62] == v89[0])
    {
      (*(v110 + 8))(v99, v108);
      break;
    }

    v66 = &v64[v62];
    v67 = dispatch thunk of Collection.subscript.read(v89, v66, v65, v109);
    v104 = *v68;
    v67(v89, 0);
    dispatch thunk of Collection.formIndex(after:)(v66, v65, v109);
    v69 = v94;
    v70 = *(v94 + 48);
    v71 = v87;
    v72 = v108;
    (*(v110 + 32))(v87, v99, v108);
    *(v71 + v70) = v104;
    v73 = v71;
    v74 = v88;
    outlined init with take of Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>(v73, v88, &demangling cache variable for type metadata for (MLShapedArray<Double>, Int));
    v75 = *(v74 + *(v69 + 48));
    v76 = v93;
    (v101)(v93, v74, v72);
    v89[0] = v75;
    v77 = v86;
    AnnotatedFeature.init(feature:annotation:)(v76, v89, v72, &type metadata for Int);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v74, &demangling cache variable for type metadata for (MLShapedArray<Double>, Int));
    v78 = v102;
    v106 = v102;
    v79 = v102[2];
    v39 = v110;
    if (v102[3] >> 1 <= v79)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v102[3] >= 2uLL, v79 + 1, 1);
      v39 = v110;
      v78 = v106;
    }

    v78[2] = v79 + 1;
    v80 = *(v92 + 80);
    v102 = v78;
    (*(v92 + 32))(v78 + ((v80 + 32) & ~v80) + *(v92 + 72) * v79, v77, v91);
    v31 = v103;
    v58 = v108;
    v37 = v107;
  }

  v81 = v105;
  *(v105 + *(v95 + 56)) = 1;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v81, &demangling cache variable for type metadata for Zip2Sequence<[MLShapedArray<Double>], FilledColumn<Column<Int>>>.Iterator);
  return v102;
}

uint64_t MLSupportVectorClassifier.Classifier.init(labelsColumn:targetColumnName:featureColumnNames:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v102 = v6;
  v111 = a5;
  v106 = a4;
  v108 = a2;
  v112 = a1;
  v8 = v5;
  v100 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifier<Double, Int>);
  v99 = *(v100 - 8);
  v9 = *(v99 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v90 = &v77;
  v92 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v91 = *(v92 - 8);
  v12 = *(v91 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v96 = &v77;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<Int>>) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v97 = &v77;
  v107 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifier<Double, Int>.Configuration);
  v105 = *(v107 - 8);
  v18 = *(v105 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v98 = &v77;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v110 = &v77;
  v93 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifier<Double, String>);
  v94 = *(v93 - 8);
  v23 = *(v94 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v83 = &v77;
  v103 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifier<Double, String>, LinearSupportVectorClassifier<Double, Int>>);
  v26 = *(*(v103 - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v101 = &v77;
  v29 = alloca(v26);
  v30 = alloca(v26);
  v95 = &v77;
  v84 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v85 = *(v84 - 8);
  v31 = *(v85 + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v34 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>) - 8) + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v86 = &v77;
  v109 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifier<Double, String>.Configuration);
  v104 = *(v109 - 8);
  v37 = *(v104 + 64);
  v38 = alloca(v37);
  v39 = alloca(v37);
  v87 = &v77;
  v40 = alloca(v37);
  v41 = alloca(v37);
  *v8 = v108;
  v108 = a3;
  v8[1] = a3;
  v8[2] = v106;
  v88 = v8;
  v42 = v111;
  v82 = v8 + 3;
  outlined init with copy of MLSupportVectorClassifier.ModelParameters(v111, (v8 + 3));
  v43 = AnyColumn.wrappedElementType.getter(v42);
  if (swift_dynamicCastMetatype(v43, &type metadata for String))
  {
    outlined init with copy of MLSupportVectorClassifier.ModelParameters(v111, v78);
    v110 = lazy protocol witness table accessor for type Double and conformance Double();
    LinearSupportVectorClassifier.Configuration.init()(&type metadata for Double, &type metadata for String, &protocol witness table for Double, v110, &protocol witness table for String, &protocol witness table for String, &protocol witness table for String, &protocol witness table for String);
    v89 = &v77;
    v44 = v109;
    LinearSupportVectorClassifier.Configuration.maximumIterations.setter(v78[0], v109);
    LinearSupportVectorClassifier.Configuration.penalty.setter(v44, v79);
    LinearSupportVectorClassifier.Configuration.convergenceThreshold.setter(v44, v80);
    LinearSupportVectorClassifier.Configuration.scaleFeatures.setter(v81, v44);
    outlined destroy of MLSupportVectorClassifier.ModelParameters(v78);
    AnyColumn.assumingType<A>(_:)(&type metadata for String, &type metadata for String);
    v78[0] = 0;
    v78[1] = 0xE000000000000000;
    v45 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
    v46 = v84;
    OptionalColumnProtocol.filled(with:)(v78, v84, v45);
    (*(v85 + 8))(&v77, v46);
    v47 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_11TabularData12FilledColumnVyAD0E0VySSGGTt0g5();
    v48 = v87;
    v49 = v89;
    (*(v104 + 16))(v87, v89, v109);
    v50 = v83;
    v51 = v102;
    LinearSupportVectorClassifier.init(labels:configuration:)(v47, v48, &type metadata for Double, &type metadata for String, &protocol witness table for Double, v110, &protocol witness table for String, &protocol witness table for String, &protocol witness table for String, &protocol witness table for String);
    if (v51)
    {
      outlined destroy of MLSupportVectorClassifier.ModelParameters(v111);
      v52 = type metadata accessor for AnyColumn(0);
      (*(*(v52 - 8) + 8))(v112, v52);
      v53 = v49;
      v54 = v109;
      v55 = v104;
LABEL_7:
      (*(v55 + 8))(v53, v54);
LABEL_10:
      v106;
      v108;
      return outlined destroy of MLSupportVectorClassifier.ModelParameters(v82);
    }

    outlined destroy of MLSupportVectorClassifier.ModelParameters(v111);
    v66 = type metadata accessor for AnyColumn(0);
    (*(*(v66 - 8) + 8))(v112, v66);
    (*(v104 + 8))(v49, v109);
    v67 = v95;
    (*(v94 + 32))(v95, v50, v93);
    v68 = v67;
    v69 = v103;
    v70 = 0;
  }

  else
  {
    v56 = v111;
    if (!swift_dynamicCastMetatype(v43, &type metadata for Int))
    {
      v71 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v71, 0, 0);
      *v72 = 0xD000000000000025;
      *(v72 + 8) = "start time column" + 0x8000000000000000;
      *(v72 + 16) = 0;
      *(v72 + 32) = 0;
      *(v72 + 48) = 1;
      swift_willThrow();
      outlined destroy of MLSupportVectorClassifier.ModelParameters(v56);
      v73 = type metadata accessor for AnyColumn(0);
      (*(*(v73 - 8) + 8))(v112, v73);
      goto LABEL_10;
    }

    outlined init with copy of MLSupportVectorClassifier.ModelParameters(v56, v78);
    v109 = lazy protocol witness table accessor for type Double and conformance Double();
    LinearSupportVectorClassifier.Configuration.init()(&type metadata for Double, &type metadata for Int, &protocol witness table for Double, v109, &protocol witness table for Int, &protocol witness table for Int, &protocol witness table for Int, &protocol witness table for Int);
    v57 = v107;
    LinearSupportVectorClassifier.Configuration.maximumIterations.setter(v78[0], v107);
    LinearSupportVectorClassifier.Configuration.penalty.setter(v57, v79);
    LinearSupportVectorClassifier.Configuration.convergenceThreshold.setter(v57, v80);
    LinearSupportVectorClassifier.Configuration.scaleFeatures.setter(v81, v57);
    outlined destroy of MLSupportVectorClassifier.ModelParameters(v78);
    v58 = v96;
    AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
    v78[0] = 0;
    v59 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
    v60 = v92;
    OptionalColumnProtocol.filled(with:)(v78, v92, v59);
    (*(v91 + 8))(v58, v60);
    v61 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_11TabularData12FilledColumnVyAD0E0VySiGGTt0g5();
    v62 = v98;
    (*(v105 + 16))(v98, v110, v107);
    v63 = v90;
    v64 = v102;
    LinearSupportVectorClassifier.init(labels:configuration:)(v61, v62, &type metadata for Double, &type metadata for Int, &protocol witness table for Double, v109, &protocol witness table for Int, &protocol witness table for Int, &protocol witness table for Int, &protocol witness table for Int);
    if (v64)
    {
      outlined destroy of MLSupportVectorClassifier.ModelParameters(v111);
      v65 = type metadata accessor for AnyColumn(0);
      (*(*(v65 - 8) + 8))(v112, v65);
      v53 = v110;
      v54 = v107;
      v55 = v105;
      goto LABEL_7;
    }

    outlined destroy of MLSupportVectorClassifier.ModelParameters(v111);
    v75 = type metadata accessor for AnyColumn(0);
    (*(*(v75 - 8) + 8))(v112, v75);
    (*(v105 + 8))(v110, v107);
    v67 = v101;
    (*(v99 + 32))(v101, v63, v100);
    v70 = 1;
    v68 = v67;
    v69 = v103;
  }

  swift_storeEnumTagMultiPayload(v68, v69, v70);
  v76 = type metadata accessor for MLSupportVectorClassifier.Classifier(0);
  return outlined init with take of Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>(v67, v88 + *(v76 + 28), &demangling cache variable for type metadata for Either<LinearSupportVectorClassifier<Double, String>, LinearSupportVectorClassifier<Double, Int>>);
}

uint64_t MLSupportVectorClassifier.Classifier.fitted(to:validateOn:eventHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v291 = v5;
  v262 = a4;
  v263 = a3;
  v289 = a2;
  v264 = v4;
  v251 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>);
  v250 = *(v251 - 8);
  v8 = *(v250 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v240 = &v233;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v254 = &v233;
  v246 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<[MLShapedArray<Double>], FilledColumn<Column<Int>>>);
  v13 = *(*(v246 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v245 = &v233;
  v241 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v236 = *(v241 - 8);
  v16 = *(v236 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v242 = &v233;
  v277 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<Int>>);
  v271 = *(v277 - 8);
  v19 = *(v271 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v258 = &v233;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v275 = &v233;
  v281 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifier<Double, Int>);
  v273 = *(v281 - 1);
  v24 = *(v273 + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v282 = &v233;
  v260 = type metadata accessor for AnyColumn(0);
  v259 = *(v260 - 8);
  v27 = *(v259 + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v261 = &v233;
  v253 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>);
  v252 = *(v253 - 8);
  v30 = *(v252 + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  v249 = &v233;
  v33 = alloca(v30);
  v34 = alloca(v30);
  v255 = &v233;
  v285 = type metadata accessor for DataFrame(0);
  v280 = *(v285 - 8);
  v35 = *(v280 + 64);
  v36 = alloca(v35);
  v37 = alloca(v35);
  v270 = &v233;
  v38 = alloca(v35);
  v39 = alloca(v35);
  v256 = &v233;
  v248 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<[MLShapedArray<Double>], FilledColumn<Column<String>>>);
  v40 = *(*(v248 - 8) + 64);
  v41 = alloca(v40);
  v42 = alloca(v40);
  v247 = &v233;
  v286 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Double>);
  v287 = *(v286 - 8);
  v43 = *(v287 + 64);
  v44 = alloca(v43);
  v45 = alloca(v43);
  v257 = &v233;
  v46 = alloca(v43);
  v47 = alloca(v43);
  v268 = &v233;
  v48 = alloca(v43);
  v49 = alloca(v43);
  v265 = &v233;
  v50 = alloca(v43);
  v51 = alloca(v43);
  v269 = &v233;
  v243 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v237 = *(v243 - 8);
  v52 = *(v237 + 64);
  v53 = alloca(v52);
  v54 = alloca(v52);
  v244 = &v233;
  v278 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v272 = *(v278 - 8);
  v55 = *(v272 + 64);
  v56 = alloca(v55);
  v57 = alloca(v55);
  v266 = &v233;
  v58 = alloca(v55);
  v59 = alloca(v55);
  v276 = &v233;
  v283 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifier<Double, String>);
  v274 = *(v283 - 1);
  v60 = *(v274 + 64);
  v61 = alloca(v60);
  v62 = alloca(v60);
  v284 = &v233;
  v235 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifier<Double, String>, LinearSupportVectorClassifier<Double, Int>>);
  v63 = *(*(v235 - 8) + 64);
  v64 = alloca(v63);
  v65 = alloca(v63);
  v234 = &v233;
  v66 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v67 = alloca(v66);
  v68 = alloca(v66);
  v238 = &v233;
  v69 = alloca(v66);
  v70 = alloca(v66);
  v239 = &v233;
  v71 = alloca(v66);
  v72 = alloca(v66);
  v292._object = &v233;
  v73 = *v6;
  v290 = v6;
  v74 = v6[1];
  v75._countAndFlagsBits = v73;
  v75._object = v74;
  *&v293 = a1;
  if (DataFrame.indexOfColumn(_:)(v75).is_nil)
  {
    *&v288 = 0;
    *(&v288 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v76._object = "er.Classifier.swift" + 0x8000000000000000;
    v76._countAndFlagsBits = 0xD00000000000001ELL;
    String.append(_:)(v76);

    v76._countAndFlagsBits = v73;
    v76._object = v74;
    String.append(_:)(v76);
    v74;
    v77._object = "Training data must contain a '" + 0x8000000000000000;
    v77._countAndFlagsBits = 0xD000000000000015;
LABEL_3:
    String.append(_:)(v77);
    v293 = v288;
    v78 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v78, 0, 0);
    *v79 = v293;
    *(v79 + 16) = 0;
    *(v79 + 32) = 0;
    *(v79 + 48) = 0;
    return swift_willThrow();
  }

  v292._countAndFlagsBits = v73;
  v279 = v74;
  v81 = v289;
  v82 = v285;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v289, 1, v285);
  v84 = v280;
  if (EnumTagSinglePayload != 1)
  {
    v85 = v81;
    object = v292._object;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v85, v292._object, &demangling cache variable for type metadata for DataFrame?);
    if (__swift_getEnumTagSinglePayload(object, 1, v82) == 1)
    {
      BUG();
    }

    v87._countAndFlagsBits = v292._countAndFlagsBits;
    v87._object = v279;
    is_nil = DataFrame.indexOfColumn(_:)(v87).is_nil;
    (*(v84 + 8))(object, v82);
    if (is_nil)
    {
      *&v288 = 0;
      *(&v288 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      v89._object = "trings but it contains " + 0x8000000000000000;
      v89._countAndFlagsBits = 0xD000000000000020;
      String.append(_:)(v89);
      v90 = v279;

      v89._countAndFlagsBits = v292._countAndFlagsBits;
      v89._object = v90;
      String.append(_:)(v89);
      v90;
      v77._object = "Training data must contain a '" + 0x8000000000000000;
      v77._countAndFlagsBits = 0xD000000000000015;
      goto LABEL_3;
    }
  }

  v91 = v290;
  v92 = v290[2];
  v93 = alloca(24);
  v94 = alloca(32);
  v235 = v293;

  v95 = v291;
  ML16ColumnDescriptorVsAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_8CreateML16ColumnDescriptorVsAE_pTg5(partial apply for closure #1 in FeatureVectorizer.fitted(to:), &v233, v92);
  if (v95)
  {
    return v92;
  }

  v291 = ML16ColumnDescriptorVsAE_pTg5;
  v292._object = 0;
  v267 = "raining samples." + 0x8000000000000000;
  v92;
  v97 = type metadata accessor for MLSupportVectorClassifier.Classifier(0);
  v98 = v234;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v97 + 28) + v91, v234, &demangling cache variable for type metadata for Either<LinearSupportVectorClassifier<Double, String>, LinearSupportVectorClassifier<Double, Int>>);
  if (swift_getEnumCaseMultiPayload(v98, v235) != 1)
  {
    (*(v274 + 32))(v284, v98, v283);
    countAndFlagsBits = v292._countAndFlagsBits;
    v111._countAndFlagsBits = v292._countAndFlagsBits;
    v112 = v279;
    v111._object = v279;
    if ((_s11TabularData0B5FrameV14containsColumnySbSS_xmtlFSS_Tt0g5(v111) & 1) == 0)
    {
      v291;
      *&v288 = 0;
      *(&v288 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(59);
      v131._countAndFlagsBits = 0x6320736C6562614CLL;
      v131._object = 0xEF27206E6D756C6FLL;
      String.append(_:)(v131);

      v131._countAndFlagsBits = countAndFlagsBits;
      v131._object = v112;
      String.append(_:)(v131);
      v112;
      v131._object = "Validation labels column '" + 0x8000000000000000;
      v131._countAndFlagsBits = 0xD000000000000027;
      String.append(_:)(v131);
      v132 = v261;
      DataFrame.subscript.getter(countAndFlagsBits, v112);
      v133 = AnyColumn.wrappedElementType.getter(countAndFlagsBits);
      (*(v259 + 8))(v132, v260);
      v134 = _typeName(_:qualified:)(v133, 0);
      LOBYTE(v133) = v135;
      v131._countAndFlagsBits = v134;
      v131._object = v135;
      String.append(_:)(v131);
      v133;
      v131._countAndFlagsBits = 46;
      v131._object = 0xE100000000000000;
      String.append(_:)(v131);
      v293 = v288;
      v136 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v136, 0, 0);
      *v137 = v293;
      *(v137 + 16) = 0;
      *(v137 + 32) = 0;
      *(v137 + 48) = 1;
      swift_willThrow();
      goto LABEL_22;
    }

    v113 = v244;
    v114 = v112;
    v115 = v293;
    DataFrame.subscript.getter(countAndFlagsBits, v114, &type metadata for String);
    *&v288 = 0;
    *(&v288 + 1) = 0xE000000000000000;
    v116 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
    v117 = v243;
    v290 = v116;
    OptionalColumnProtocol.filled(with:)(&v288, v243, v116);
    v281 = *(v237 + 8);
    (v281)(v113, v117);
    v118 = v269;
    v119 = v291;
    v120 = v292._object;
    specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(v115, 0, v291, 0xD000000000000013, v267);
    if (v120)
    {
      v119;
LABEL_18:
      (*(v272 + 8))(v276, v278);
LABEL_22:
      v128 = v284;
      v129 = v283;
      v130 = v274;
      return (*(v130 + 8))(v128, v129);
    }

    v153 = static MLSupportVectorClassifier.Model.buildFeatures(from:)(v118);
    v154 = v247;
    *v247 = v153;
    v155 = v154 + *(v248 + 52);
    v282 = *(v272 + 16);
    (v282)(v155, v276, v278);
    MLComponents16AnnotatedFeatureVyAKSSGs5NeverOTg503_s6f4ML13hi9VySdGSS18n14MLComponents16pqu22ADSSGIegngr_AD_SStAHs5r101OIegnrzr_TR03_s8e142ML25MLSupportVectorClassifierV0E0V6fitted2to10validateOn12eventHandlerAC5ModelV11j71Data0N5FrameV_ANSgy0A12MLComponents5EventVYbcSgtKFAP16gh4Vy04a4B013cD19uV25GSSGAY_SStcfu0_Tf3nnnpf_nTf1cn_nTm = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay6CoreML13MLShapedArrayVySdGG11TabularData12FilledColumnVyAM0M0VySSGGG_18CreateMLComponents16AnnotatedFeatureVyAKSSGs5NeverOTg503_s6f4ML13hi9VySdGSS18n14MLComponents16pqu22ADSSGIegngr_AD_SStAHs5r101OIegnrzr_TR03_s8e142ML25MLSupportVectorClassifierV0E0V6fitted2to10validateOn12eventHandlerAC5ModelV11j71Data0N5FrameV_ANSgy0A12MLComponents5EventVYbcSgtKFAP16gh4Vy04a4B013cD19uV25GSSGAY_SStcfu0_Tf3nnnpf_nTf1cn_nTm(v154);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v154, &demangling cache variable for type metadata for Zip2Sequence<[MLShapedArray<Double>], FilledColumn<Column<String>>>);
    v157 = v239;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v289, v239, &demangling cache variable for type metadata for DataFrame?);
    v158 = __swift_getEnumTagSinglePayload(v157, 1, v285);
    *&v293 = MLComponents16AnnotatedFeatureVyAKSSGs5NeverOTg503_s6f4ML13hi9VySdGSS18n14MLComponents16pqu22ADSSGIegngr_AD_SStAHs5r101OIegnrzr_TR03_s8e142ML25MLSupportVectorClassifierV0E0V6fitted2to10validateOn12eventHandlerAC5ModelV11j71Data0N5FrameV_ANSgy0A12MLComponents5EventVYbcSgtKFAP16gh4Vy04a4B013cD19uV25GSSGAY_SStcfu0_Tf3nnnpf_nTf1cn_nTm;
    if (v158 == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v157, &demangling cache variable for type metadata for DataFrame?);
      *&v288 = MLComponents16AnnotatedFeatureVyAKSSGs5NeverOTg503_s6f4ML13hi9VySdGSS18n14MLComponents16pqu22ADSSGIegngr_AD_SStAHs5r101OIegnrzr_TR03_s8e142ML25MLSupportVectorClassifierV0E0V6fitted2to10validateOn12eventHandlerAC5ModelV11j71Data0N5FrameV_ANSgy0A12MLComponents5EventVYbcSgtKFAP16gh4Vy04a4B013cD19uV25GSSGAY_SStcfu0_Tf3nnnpf_nTf1cn_nTm;
      v159 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnnotatedFeature<MLShapedArray<Double>, String>]);
      v160 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [AnnotatedFeature<MLShapedArray<Double>, String>] and conformance [A], &demangling cache variable for type metadata for [AnnotatedFeature<MLShapedArray<Double>, String>], &protocol conformance descriptor for [A]);
      v161 = v284;
      v162 = v283;
      LinearSupportVectorClassifier.fitted<A>(to:eventHandler:)(&v288, v263, v262, v283, v159, v160);
      (*(v287 + 8))(v269, v286);
      (*(v272 + 8))(v276, v278);
      (*(v274 + 8))(v161, v162);
      v293;
      v191 = type metadata accessor for MLSupportVectorClassifier.Model(0);
      v192 = v264;
      v193 = v264 + *(v191 + 24);
      v194 = v193;
      v195 = v249;
    }

    else
    {
      v169 = v256;
      (*(v280 + 32))(v256, v157, v285);
      v170._countAndFlagsBits = v292._countAndFlagsBits;
      v170._object = v279;
      v171 = v279;
      if ((_s11TabularData0B5FrameV14containsColumnySbSS_xmtlFSS_Tt0g5(v170) & 1) == 0)
      {
        v293;
        v291;
        *&v288 = 0;
        *(&v288 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(70);
        v180._object = "ntegers but it contains " + 0x8000000000000000;
        v180._countAndFlagsBits = 0xD00000000000001ALL;
        String.append(_:)(v180);

        v180._countAndFlagsBits = v292._countAndFlagsBits;
        v180._object = v171;
        String.append(_:)(v180);
        v171;
        v180._object = "Validation labels column '" + 0x8000000000000000;
        v180._countAndFlagsBits = 0xD000000000000027;
        String.append(_:)(v180);
        v181 = v169;
        v182 = v261;
        v180._countAndFlagsBits = v292._countAndFlagsBits;
        DataFrame.subscript.getter(v292._countAndFlagsBits, v171);
        v183 = AnyColumn.wrappedElementType.getter(v180._countAndFlagsBits);
        (*(v259 + 8))(v182, v260);
        v184 = _typeName(_:qualified:)(v183, 0);
        LOBYTE(v183) = v185;
        v180._countAndFlagsBits = v184;
        v180._object = v185;
        String.append(_:)(v180);
        v183;
        v180._countAndFlagsBits = 46;
        v180._object = 0xE100000000000000;
        String.append(_:)(v180);
        v293 = v288;
        v186 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v186, 0, 0);
        *v187 = v293;
        *(v187 + 16) = 0;
        *(v187 + 32) = 0;
        *(v187 + 48) = 1;
        swift_willThrow();
        (*(v280 + 8))(v181, v285);
        (*(v287 + 8))(v269, v286);
        goto LABEL_18;
      }

      specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(v169, 0, v291, 0xD000000000000013, v267);
      v289 = static MLSupportVectorClassifier.Model.buildFeatures(from:)(v265);
      v211 = v244;
      v292._object = 0;
      DataFrame.subscript.getter(v292._countAndFlagsBits, v279, &type metadata for String);
      *&v288 = 0;
      *(&v288 + 1) = 0xE000000000000000;
      v212 = v243;
      OptionalColumnProtocol.filled(with:)(&v288, v243, v290);
      (v281)(v211, v212);
      v213 = v247;
      *v247 = v289;
      (v282)(v213 + *(v248 + 52), v266, v278);
      v214 = v292._object;
      v215 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay6CoreML13MLShapedArrayVySdGG11TabularData12FilledColumnVyAM0M0VySSGGG_18CreateMLComponents16AnnotatedFeatureVyAKSSGs5NeverOTg503_s6f4ML13hi9VySdGSS18n14MLComponents16pqu22ADSSGIegngr_AD_SStAHs5r101OIegnrzr_TR03_s8e142ML25MLSupportVectorClassifierV0E0V6fitted2to10validateOn12eventHandlerAC5ModelV11j71Data0N5FrameV_ANSgy0A12MLComponents5EventVYbcSgtKFAP16gh4Vy04a4B013cD19uV25GSSGAY_SStcfu0_Tf3nnnpf_nTf1cn_nTm(v213);
      v290 = v214;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v213, &demangling cache variable for type metadata for Zip2Sequence<[MLShapedArray<Double>], FilledColumn<Column<String>>>);
      *&v288 = v293;
      v289 = v215;
      v233 = v215;
      v216 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnnotatedFeature<MLShapedArray<Double>, String>]);
      v217 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [AnnotatedFeature<MLShapedArray<Double>, String>] and conformance [A], &demangling cache variable for type metadata for [AnnotatedFeature<MLShapedArray<Double>, String>], &protocol conformance descriptor for [A]);
      v218 = v290;
      LinearSupportVectorClassifier.fitted<A, B>(to:validateOn:eventHandler:)(&v288, &v233, v263, v262, v283, v216, v216, v217, v217);
      if (v218)
      {
        v291;
        v290 = *(v272 + 8);
        v219 = v278;
        (v290)(v266, v278);
        v220 = *(v287 + 8);
        v221 = v286;
        v220(v265, v286);
        (*(v280 + 8))(v256, v285);
        v220(v269, v221);
        (v290)(v276, v219);
        (*(v274 + 8))(v284, v283);
        v293;
        v152 = v289;
        return v152;
      }

      v290 = *(v272 + 8);
      v229 = v278;
      (v290)(v266, v278);
      v230 = *(v287 + 8);
      v231 = v286;
      v230(v265, v286);
      (*(v280 + 8))(v256, v285);
      v230(v269, v231);
      (v290)(v276, v229);
      (*(v274 + 8))(v284, v283);
      v293;
      v289;
      v232 = type metadata accessor for MLSupportVectorClassifier.Model(0);
      v192 = v264;
      v193 = v264 + *(v232 + 24);
      v194 = v193;
      v195 = v255;
    }

    (*(v252 + 32))(v194, v195, v253);
    v196 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
    swift_storeEnumTagMultiPayload(v193, v196, 0);
LABEL_40:
    v197 = v292._countAndFlagsBits;
    goto LABEL_41;
  }

  (*(v273 + 32))(v282, v98, v281);
  v99 = v292._countAndFlagsBits;
  v100._countAndFlagsBits = v292._countAndFlagsBits;
  v101 = v279;
  v100._object = v279;
  if ((_s11TabularData0B5FrameV14containsColumnySbSS_xmtlFSi_Tt0g5(v100) & 1) == 0)
  {
    v291;
    *&v288 = 0;
    *(&v288 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(60);
    v121._countAndFlagsBits = 0x6320736C6562614CLL;
    v121._object = 0xEF27206E6D756C6FLL;
    String.append(_:)(v121);

    v121._countAndFlagsBits = v99;
    v121._object = v101;
    String.append(_:)(v121);
    v101;
    v121._object = "' column with labels." + 0x8000000000000000;
    v121._countAndFlagsBits = 0xD000000000000028;
    String.append(_:)(v121);
    v121._countAndFlagsBits = v99;
    v122 = v261;
    DataFrame.subscript.getter(v121._countAndFlagsBits, v101);
    v123 = AnyColumn.wrappedElementType.getter(v121._countAndFlagsBits);
    (*(v259 + 8))(v122, v260);
    v124 = _typeName(_:qualified:)(v123, 0);
    LOBYTE(v123) = v125;
    v121._countAndFlagsBits = v124;
    v121._object = v125;
    String.append(_:)(v121);
    v123;
    v121._countAndFlagsBits = 46;
    v121._object = 0xE100000000000000;
    String.append(_:)(v121);
    v293 = v288;
    v126 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v126, 0, 0);
    *v127 = v293;
    *(v127 + 16) = 0;
    *(v127 + 32) = 0;
    *(v127 + 48) = 1;
    swift_willThrow();
    goto LABEL_20;
  }

  v102 = v99;
  v103 = v242;
  DataFrame.subscript.getter(v102, v101, &type metadata for Int);
  *&v288 = 0;
  v104 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
  v105 = v241;
  v290 = v104;
  OptionalColumnProtocol.filled(with:)(&v288, v241, v104);
  v106 = *(v236 + 8);
  (v106)(v103, v105);
  v107 = v268;
  v108 = v291;
  v109 = v292._object;
  specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(v293, 0, v291, 0xD000000000000013, v267);
  if (v109)
  {
    v108;
LABEL_14:
    (*(v271 + 8))(v275, v277);
LABEL_20:
    v128 = v282;
    v129 = v281;
    v130 = v273;
    return (*(v130 + 8))(v128, v129);
  }

  v283 = v106;
  v138 = static MLSupportVectorClassifier.Model.buildFeatures(from:)(v107);
  v139 = v245;
  *v245 = v138;
  v140 = v139 + *(v246 + 52);
  v284 = *(v271 + 16);
  (v284)(v140, v275, v277);
  MLComponents16AnnotatedFeatureVyAKSiGs5NeverOTg503_s6f4ML13hi9VySdGSi18n14MLComponents16pqu22ADSiGIegnyr_AD_SitAHs5r101OIegnrzr_TR03_s8e142ML25MLSupportVectorClassifierV0E0V6fitted2to10validateOn12eventHandlerAC5ModelV11j71Data0N5FrameV_ANSgy0A12MLComponents5EventVYbcSgtKFAP16gh4Vy04a4B013cD19uV25GSiGAY_Sitcfu2_Tf3nnnpf_nTf1cn_nTm = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay6CoreML13MLShapedArrayVySdGG11TabularData12FilledColumnVyAM0M0VySiGGG_18CreateMLComponents16AnnotatedFeatureVyAKSiGs5NeverOTg503_s6f4ML13hi9VySdGSi18n14MLComponents16pqu22ADSiGIegnyr_AD_SitAHs5r101OIegnrzr_TR03_s8e142ML25MLSupportVectorClassifierV0E0V6fitted2to10validateOn12eventHandlerAC5ModelV11j71Data0N5FrameV_ANSgy0A12MLComponents5EventVYbcSgtKFAP16gh4Vy04a4B013cD19uV25GSiGAY_Sitcfu2_Tf3nnnpf_nTf1cn_nTm(v139);
  v292._object = 0;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v139, &demangling cache variable for type metadata for Zip2Sequence<[MLShapedArray<Double>], FilledColumn<Column<Int>>>);
  v142 = v238;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v289, v238, &demangling cache variable for type metadata for DataFrame?);
  v143 = v285;
  v144 = __swift_getEnumTagSinglePayload(v142, 1, v285);
  *&v293 = MLComponents16AnnotatedFeatureVyAKSiGs5NeverOTg503_s6f4ML13hi9VySdGSi18n14MLComponents16pqu22ADSiGIegnyr_AD_SitAHs5r101OIegnrzr_TR03_s8e142ML25MLSupportVectorClassifierV0E0V6fitted2to10validateOn12eventHandlerAC5ModelV11j71Data0N5FrameV_ANSgy0A12MLComponents5EventVYbcSgtKFAP16gh4Vy04a4B013cD19uV25GSiGAY_Sitcfu2_Tf3nnnpf_nTf1cn_nTm;
  if (v144 == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v142, &demangling cache variable for type metadata for DataFrame?);
    *&v288 = MLComponents16AnnotatedFeatureVyAKSiGs5NeverOTg503_s6f4ML13hi9VySdGSi18n14MLComponents16pqu22ADSiGIegnyr_AD_SitAHs5r101OIegnrzr_TR03_s8e142ML25MLSupportVectorClassifierV0E0V6fitted2to10validateOn12eventHandlerAC5ModelV11j71Data0N5FrameV_ANSgy0A12MLComponents5EventVYbcSgtKFAP16gh4Vy04a4B013cD19uV25GSiGAY_Sitcfu2_Tf3nnnpf_nTf1cn_nTm;
    v145 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnnotatedFeature<MLShapedArray<Double>, Int>]);
    v146 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [AnnotatedFeature<MLShapedArray<Double>, Int>] and conformance [A], &demangling cache variable for type metadata for [AnnotatedFeature<MLShapedArray<Double>, Int>], &protocol conformance descriptor for [A]);
    v147 = v240;
    v148 = v145;
    v149 = v282;
    v150 = v292._object;
    v151 = v281;
    LinearSupportVectorClassifier.fitted<A>(to:eventHandler:)(&v288, v263, v262, v281, v148, v146);
    v292._object = v150;
    if (v150)
    {
      v291;
      (*(v287 + 8))(v268, v286);
      (*(v271 + 8))(v275, v277);
      (*(v273 + 8))(v149, v151);
      v152 = v293;
      return v152;
    }

    (*(v287 + 8))(v268, v286);
    (*(v271 + 8))(v275, v277);
    (*(v273 + 8))(v149, v151);
    v293;
    v188 = type metadata accessor for MLSupportVectorClassifier.Model(0);
    v192 = v264;
    v189 = v264 + *(v188 + 24);
    (*(v250 + 32))(v189, v147, v251);
    v190 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
    swift_storeEnumTagMultiPayload(v189, v190, 1);
    goto LABEL_40;
  }

  (*(v280 + 32))(v270, v142, v143);
  v163._countAndFlagsBits = v292._countAndFlagsBits;
  v164 = v279;
  v163._object = v279;
  if ((_s11TabularData0B5FrameV14containsColumnySbSS_xmtlFSi_Tt0g5(v163) & 1) == 0)
  {
    v293;
    v291;
    *&v288 = 0;
    *(&v288 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(71);
    v172._object = "ntegers but it contains " + 0x8000000000000000;
    v172._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v172);

    v172._countAndFlagsBits = v292._countAndFlagsBits;
    v172._object = v164;
    String.append(_:)(v172);
    v164;
    v172._object = "' column with labels." + 0x8000000000000000;
    v172._countAndFlagsBits = 0xD000000000000028;
    String.append(_:)(v172);
    v173 = v261;
    v172._countAndFlagsBits = v292._countAndFlagsBits;
    v172._object = v164;
    v174 = v270;
    DataFrame.subscript.getter(v292._countAndFlagsBits, v172._object);
    v175 = AnyColumn.wrappedElementType.getter(v172._countAndFlagsBits);
    (*(v259 + 8))(v173, v260);
    v176 = _typeName(_:qualified:)(v175, 0);
    LOBYTE(v175) = v177;
    v172._countAndFlagsBits = v176;
    v172._object = v177;
    String.append(_:)(v172);
    v175;
    v172._countAndFlagsBits = 46;
    v172._object = 0xE100000000000000;
    String.append(_:)(v172);
    v293 = v288;
    v178 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v178, 0, 0);
    *v179 = v293;
    *(v179 + 16) = 0;
    *(v179 + 32) = 0;
    *(v179 + 48) = 1;
    swift_willThrow();
    v168 = v174;
    goto LABEL_36;
  }

  v165 = v257;
  v166 = v291;
  v167 = v292._object;
  specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(v270, 0, v291, 0xD000000000000013, v267);
  if (v167)
  {
    v293;
    v166;
    v168 = v270;
LABEL_36:
    (*(v280 + 8))(v168, v285);
    (*(v287 + 8))(v268, v286);
    goto LABEL_14;
  }

  v289 = static MLSupportVectorClassifier.Model.buildFeatures(from:)(v165);
  v198 = v242;
  v292._object = 0;
  DataFrame.subscript.getter(v292._countAndFlagsBits, v279, &type metadata for Int);
  *&v288 = 0;
  v199 = v258;
  v200 = v241;
  OptionalColumnProtocol.filled(with:)(&v288, v241, v290);
  (v283)(v198, v200);
  v201 = v245;
  *v245 = v289;
  (v284)(*(v246 + 52) + v201, v199, v277);
  v202 = v292._object;
  v203 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay6CoreML13MLShapedArrayVySdGG11TabularData12FilledColumnVyAM0M0VySiGGG_18CreateMLComponents16AnnotatedFeatureVyAKSiGs5NeverOTg503_s6f4ML13hi9VySdGSi18n14MLComponents16pqu22ADSiGIegnyr_AD_SitAHs5r101OIegnrzr_TR03_s8e142ML25MLSupportVectorClassifierV0E0V6fitted2to10validateOn12eventHandlerAC5ModelV11j71Data0N5FrameV_ANSgy0A12MLComponents5EventVYbcSgtKFAP16gh4Vy04a4B013cD19uV25GSiGAY_Sitcfu2_Tf3nnnpf_nTf1cn_nTm(v201);
  v290 = v202;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v201, &demangling cache variable for type metadata for Zip2Sequence<[MLShapedArray<Double>], FilledColumn<Column<Int>>>);
  *&v288 = v293;
  v289 = v203;
  v233 = v203;
  v204 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnnotatedFeature<MLShapedArray<Double>, Int>]);
  v205 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [AnnotatedFeature<MLShapedArray<Double>, Int>] and conformance [A], &demangling cache variable for type metadata for [AnnotatedFeature<MLShapedArray<Double>, Int>], &protocol conformance descriptor for [A]);
  v206 = v290;
  LinearSupportVectorClassifier.fitted<A, B>(to:validateOn:eventHandler:)(&v288, &v233, v263, v262, v281, v204, v204, v205, v205);
  v292._object = v206;
  if (v206)
  {
    v291;
    v207 = *(v271 + 8);
    v208 = v277;
    v207(v258, v277);
    v209 = *(v287 + 8);
    v210 = v286;
    v209(v257, v286);
    (*(v280 + 8))(v270, v285);
    v209(v268, v210);
    v207(v275, v208);
    (*(v273 + 8))(v282, v281);
    v293;
    v152 = v289;
    return v152;
  }

  v222 = *(v271 + 8);
  v223 = v277;
  v222(v258, v277);
  v224 = *(v287 + 8);
  v225 = v286;
  v224(v257, v286);
  (*(v280 + 8))(v270, v285);
  v224(v268, v225);
  v222(v275, v223);
  (*(v273 + 8))(v282, v281);
  v293;
  v289;
  v226 = type metadata accessor for MLSupportVectorClassifier.Model(0);
  v192 = v264;
  v227 = v264 + *(v226 + 24);
  (*(v250 + 32))(v227, v254, v251);
  v228 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
  swift_storeEnumTagMultiPayload(v227, v228, 1);
  v197 = v292._countAndFlagsBits;
LABEL_41:
  *v192 = v197;
  v192[1] = v279;
  v192[2] = v291;
  v192[3] = 0xD000000000000013;
  v192[4] = v267;
}

uint64_t MLSupportVectorClassifier.Classifier.encode(_:to:)(uint64_t a1, uint64_t a2)
{
  v72 = v2;
  v55 = v3;
  v62 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>);
  v61 = *(v62 - 8);
  v4 = *(v61 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v58 = &v50;
  v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifier<Double, Int>);
  v69 = *(v67 - 8);
  v7 = *(v69 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v68 = &v50;
  v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>);
  v63 = *(v64 - 8);
  v10 = *(v63 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v59 = &v50;
  v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifier<Double, String>);
  v73 = *(v70 - 8);
  v13 = *(v73 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v65 = &v50;
  v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifier<Double, String>, LinearSupportVectorClassifier<Double, Int>>);
  v16 = *(*(v56 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v60 = &v50;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v71 = &v50;
  v57 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (Either<LinearSupportVectorClassifier<Double, String>, LinearSupportVectorClassifier<Double, Int>>, Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>));
  v21 = *(*(v57 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v74 = &v50;
  v24 = *(a1 + 16);
  v54 = a1;
  v25 = *(a1 + 32);
  v51 = v24;
  v52 = v25;
  v26 = *(a2 + 24);
  v53 = *(a2 + 32);
  v66 = a2;
  __swift_mutable_project_boxed_opaque_existential_1(a2, v26);
  v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureVectorizer<Double>.Transformer);
  v28 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FeatureVectorizer<Double>.Transformer and conformance FeatureVectorizer<A>.Transformer, &demangling cache variable for type metadata for FeatureVectorizer<Double>.Transformer, &protocol conformance descriptor for FeatureVectorizer<A>.Transformer);
  v29 = v72;
  result = dispatch thunk of EstimatorEncoder.encode<A>(_:)(&v51, v27, v28, v26, v53, v30, v50, v51, *(&v51 + 1));
  if (!v29)
  {
    v72 = 0;
    v32 = *(type metadata accessor for MLSupportVectorClassifier.Classifier(0) + 28) + v55;
    v33 = *(type metadata accessor for MLSupportVectorClassifier.Model(0) + 24) + v54;
    v34 = v74;
    v35 = v74 + *(v57 + 48);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v32, v74, &demangling cache variable for type metadata for Either<LinearSupportVectorClassifier<Double, String>, LinearSupportVectorClassifier<Double, Int>>);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v33, v35, &demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
    if (swift_getEnumCaseMultiPayload(v34, v56) == 1)
    {
      v36 = v60;
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v74, v60, &demangling cache variable for type metadata for Either<LinearSupportVectorClassifier<Double, String>, LinearSupportVectorClassifier<Double, Int>>);
      v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v35, v37);
      v39 = v66;
      if (EnumCaseMultiPayload == 1)
      {
        v40 = v36;
        v41 = v67;
        (*(v69 + 32))(v68, v40, v67);
        v42 = v58;
        (*(v61 + 32))(v58, v35, v62);
        LinearSupportVectorClassifier.encode(_:to:)(v42, v39, v41);
        (*(v61 + 8))(v42, v62);
        v43 = v68;
        v44 = v41;
        v45 = v69;
LABEL_7:
        (*(v45 + 8))(v43, v44);
        return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v74, &demangling cache variable for type metadata for Either<LinearSupportVectorClassifier<Double, String>, LinearSupportVectorClassifier<Double, Int>>);
      }

      v73 = v69;
      v70 = v67;
      v71 = v36;
    }

    else
    {
      v46 = v71;
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v74, v71, &demangling cache variable for type metadata for Either<LinearSupportVectorClassifier<Double, String>, LinearSupportVectorClassifier<Double, Int>>);
      v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
      if (swift_getEnumCaseMultiPayload(v35, v47) != 1)
      {
        v48 = v70;
        (*(v73 + 32))(v65, v46, v70);
        v49 = v59;
        (*(v63 + 32))(v59, v35, v64);
        LinearSupportVectorClassifier.encode(_:to:)(v49, v66, v48);
        (*(v63 + 8))(v49, v64);
        v43 = v65;
        v44 = v48;
        v45 = v73;
        goto LABEL_7;
      }
    }

    (*(v73 + 8))(v71, v70);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002FLL, ("Classifier.Classifier.swift" + 0x8000000000000000), "CreateML/MLSupportVectorClassifier.Classifier.swift", 51, 2, 175, 0);
    BUG();
  }

  return result;
}

uint64_t MLSupportVectorClassifier.Classifier.decode(from:)(uint64_t a1)
{
  v71 = v2;
  v73 = v3;
  v64 = v1;
  v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>);
  v57 = *(v58 - 8);
  v4 = *(v57 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v66 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifier<Double, Int>);
  v54 = *(v50 - 8);
  v7 = *(v54 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v51 = v49;
  v60 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>);
  v61 = *(v60 - 8);
  v10 = *(v61 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v67 = v49;
  v68 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
  v13 = *(*(v68 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v62 = v49;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v59 = v49;
  v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifier<Double, String>);
  v55 = *(v56 - 8);
  v18 = *(v55 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v53 = v49;
  v52 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifier<Double, String>, LinearSupportVectorClassifier<Double, Int>>);
  v21 = *(*(v52 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v72 = v49;
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureVectorizer<Double>.Transformer);
  v25 = *(a1 + 24);
  v26 = *(a1 + 32);
  v65 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(a1, v25);
  v27 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FeatureVectorizer<Double>.Transformer and conformance FeatureVectorizer<A>.Transformer, &demangling cache variable for type metadata for FeatureVectorizer<Double>.Transformer, &protocol conformance descriptor for FeatureVectorizer<A>.Transformer);
  v28 = v71;
  result = dispatch thunk of EstimatorDecoder.decode<A>(_:)(v24, v24, v27, v25, v26);
  if (!v28)
  {
    v30 = v53;
    v31 = v51;
    v32 = v50;
    v71 = 0;
    v69 = v49[1];
    v63 = v49[2];
    v70 = v49[3];
    v33 = type metadata accessor for MLSupportVectorClassifier.Classifier(0);
    v34 = v72;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v73 + *(v33 + 28), v72, &demangling cache variable for type metadata for Either<LinearSupportVectorClassifier<Double, String>, LinearSupportVectorClassifier<Double, Int>>);
    if (swift_getEnumCaseMultiPayload(v34, v52) == 1)
    {
      v35 = v54;
      (*(v54 + 32))(v31, v72, v32);
      v72 = *v73;
      v73 = v73[1];

      v36 = v71;
      LinearSupportVectorClassifier.decode(from:)(v65, v32);
      (*(v35 + 8))(v31, v32);
      v37 = v64;
      if (!v36)
      {
        v38 = v72;
        v39 = v62;
        (*(v57 + 32))(v62, v66, v58);
        v40 = 1;
        v41 = v39;
        v42 = v68;
LABEL_8:
        swift_storeEnumTagMultiPayload(v41, v42, v40);
        *v37 = v38;
        v37[1] = v73;
        v37[2] = v69;
        v37[3] = v63;
        v37[4] = v70;
        v48 = type metadata accessor for MLSupportVectorClassifier.Model(0);
        return outlined init with take of Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>(v39, v37 + *(v48 + 24), &demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
      }
    }

    else
    {
      v43 = v30;
      v44 = v30;
      v45 = v56;
      v46 = v55;
      (*(v55 + 32))(v44, v72, v56);
      v72 = *v73;
      v73 = v73[1];

      v47 = v71;
      LinearSupportVectorClassifier.decode(from:)(v65, v45);
      (*(v46 + 8))(v43, v45);
      v37 = v64;
      if (!v47)
      {
        v38 = v72;
        v39 = v59;
        (*(v61 + 32))(v59, v67, v60);
        v41 = v39;
        v42 = v68;
        v40 = 0;
        goto LABEL_8;
      }
    }

    v70;
    v69;
    return v73;
  }

  return result;
}

uint64_t outlined init with take of Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledName(a3);
  (*(*(v3 - 8) + 32))(a2, a1, v3);
  return a2;
}

void *MLHandActionClassifier.GraphCNN.iterateTraining(trainingData:validationData:epochCount:)(uint64_t a1, uint64_t a2, Swift::Int a3, double a4)
{
  v8[1] = v4;
  v10 = _swiftEmptyDictionarySingleton;
  context = _objc_autoreleasePoolPush();
  closure #1 in MLHandActionClassifier.GraphCNN.iterateTraining(trainingData:validationData:epochCount:)(v5, a1, &v10, a3, a2, v8, a4);
  _objc_autoreleasePoolPop(context);
  if (v4)
  {
    return v10;
  }

  else
  {
    return v10;
  }
}

uint64_t MLHandActionClassifier.runTrainingLoop(trainingData:validationData:loadPretrain:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 104) = v2;
  v4 = type metadata accessor for Event(0);
  *(v3 + 112) = v4;
  v5 = *(v4 - 8);
  *(v3 + 120) = v5;
  *(v3 + 128) = swift_task_alloc((*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Tensor(0);
  *(v3 + 136) = v6;
  v7 = *(v6 - 8);
  *(v3 + 144) = v7;
  *(v3 + 152) = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*(type metadata accessor for MLClassifierMetrics(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  *(v3 + 160) = swift_task_alloc(v8);
  *(v3 + 168) = swift_task_alloc(v8);
  v9 = type metadata accessor for TrainingTablePrinter(0);
  *(v3 + 176) = v9;
  *(v3 + 184) = swift_task_alloc((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MetricsKey(0);
  *(v3 + 192) = v10;
  v11 = *(v10 - 8);
  *(v3 + 200) = v11;
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  *(v3 + 208) = swift_task_alloc(v12);
  *(v3 + 216) = swift_task_alloc(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[(label: Int, keypoints: MLMultiArray)], DataSample<Tensor, Tensor>>?);
  *(v3 + 224) = swift_task_alloc((*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[(label: Int, keypoints: MLMultiArray)], DataSample<Tensor, Tensor>>);
  *(v3 + 232) = v14;
  v15 = *(v14 - 8);
  *(v3 + 240) = v15;
  *(v3 + 248) = swift_task_alloc((*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 256) = *a1;
  *(v3 + 296) = *(a1 + 8);
  *(v3 + 264) = *a2;
  *(v3 + 297) = *(a2 + 8);
  return swift_task_switch(MLHandActionClassifier.runTrainingLoop(trainingData:validationData:loadPretrain:), 0, 0);
}

uint64_t MLHandActionClassifier.runTrainingLoop(trainingData:validationData:loadPretrain:)(double a1)
{
  v116 = v1 | 0x1000000000000000;
  v115 = v2;
  v3 = *(v2 + 297);
  v4 = v2[33];
  v5 = *(v2 + 296);
  v6 = v2[32];
  v114 = v2[31];
  v7 = v2[13];
  v112 = v2[28];
  *&v110 = *v7;
  v85 = v6;
  v86 = v5;
  *&v105 = v4;
  BYTE8(v105) = v3;
  v8 = type metadata accessor for MLHandActionClassifier(0);
  v9 = (v7 + *(v8 + 28));
  static MLHandActionClassifier.prepareDataset(classLabels:trainingFeatures:validationFeatures:parameters:)(v114, v112, v110, &v85, &v105, v9, a1);
  v114 = v9;
  v111 = v8;
  v10 = *(v2[13] + 8);
  MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel()();
  if (v11)
  {
    *&v110 = v11;
    v13 = v2[28];
    (*(v2[30] + 8))(v2[31], v2[29]);
    v14 = v13;
LABEL_3:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v14, &demangling cache variable for type metadata for Dataset<[(label: Int, keypoints: MLMultiArray)], DataSample<Tensor, Tensor>>?);
    v15 = v2[31];
    v16 = v2[28];
    v17 = v2[27];
    v18 = v2[26];
    v19 = v2[23];
    v111 = v2[21];
    v113 = v2[20];
    v114 = v2[16];
    v112 = v2[19];
    v15;
    v16;
    v17;
    v18;
    v19;
    v111;
    v113;
    v112;
    v114;
    return (v2[1])();
  }

  v112 = v2[29];
  v21 = v2;
  v22 = v2[24];
  v113 = v2[28];
  v104 = v10;
  MLHandActionClassifier.GraphCNN.initDevice()();
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MetricsKey)>);
  v24 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, MetricsKey)) - 8);
  v25 = *(v24 + 80);
  v26 = (v25 + 32) & ~*(v24 + 80);
  v27 = swift_allocObject(v23, v26 + *(v24 + 72), v25 | 7);
  *(v27 + 16) = 1;
  *(v27 + 24) = 2;
  *(v27 + v26) = 0xD000000000000011;
  *(v27 + v26 + 8) = "eature extractor should be " + 0x8000000000000000;
  static MetricsKey.trainingAccuracy.getter();
  v28 = Dictionary.init(dictionaryLiteral:)(v27, &type metadata for String, v22, &protocol witness table for String);
  if (__swift_getEnumTagSinglePayload(v113, 1, v112) != 1)
  {
    v29 = v21[27];
    v30 = v21[26];
    v112 = v21[24];
    v113 = v21[25];
    static MetricsKey.validationAccuracy.getter();
    (v113[4])(v30, v29, v112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v28);
    *&v105 = v28;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, 0xD000000000000013, ("Validation Data\n" + 0x8000000000000000), isUniquelyReferenced_nonNull_native);
    v28 = v105;
  }

  v32 = v114;
  v87 = v21 + 2;
  v89 = v21 + 6;
  v102 = v21 + 10;
  v88 = v21 + 11;
  v99 = v21 + 12;
  v33 = v21[22];
  v114 = v21;
  v34 = v21[23];
  *(v34 + *(v33 + 24)) = v28;
  type metadata accessor for OS_os_log();
  v35 = OS_os_log.init(subsystem:category:)(0xD000000000000027, ("el with empty dataset." + 0x8000000000000000), 0x72705F656C626174, 0xED00007265746E69);
  v36 = *(v33 + 20);
  v101 = v35;
  *(v34 + v36) = v35;
  Date.init()(0xD000000000000027);
  TrainingTablePrinter.beginTable()();
  v37 = 0;
  v38 = *(v32 + *(type metadata accessor for MLHandActionClassifier.ModelParameters(0) + 24));
  v92 = v38;
  if (v38 < 0)
  {
    BUG();
  }

  v39 = v114;
  if (v38)
  {
    v100 = v114[25];
    v96 = v114[15];
    v93 = v114[18];
    v90 = "oseClassifier.swift" + 0x8000000000000000;
    v94 = "ve training confusion matrix" + 0x8000000000000000;
    v97 = "usion matrix at iteration " + 0x8000000000000000;
    v40 = 0;
    v91 = 0xD000000000000012;
    v103 = &type metadata for Any + 8;
    v95 = 0xD000000000000014;
    v98 = 0xD000000000000016;
    while (1)
    {
      v41 = v39[28];
      v42 = v39[31];
      v112 = v40;
      v43 = MLHandActionClassifier.GraphCNN.iterateTraining(trainingData:validationData:epochCount:)(v42, v41, v40, *v12.i64);
      v44 = v87;
      specialized Dictionary.subscript.getter(v91, v90, v43);
      if (!v39[5])
      {
        v43;
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v44, &demangling cache variable for type metadata for Any?);
        goto LABEL_19;
      }

      v45 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
      if (!swift_dynamicCast(v88, v44, v103, v45, 6))
      {
        break;
      }

      v107 = v45;
      v113 = v43;
      v46 = v39[11];
      v47 = v110;
      static _MetricUtilities.makeClassifierMetrics(confusionMeter:classLabels:supplementMissingClassLabels:)(v46, v110, 0);
      v109 = v39[24];
      v48 = v39[17];
      v49 = v114[19];
      outlined assign with take of MLClassifierMetrics(v39[21], v114[13] + *(v111 + 32));
      v108 = v46;
      _MetricUtilities.ConfusionMatrixMeter.value(normalized:)(0);
      v106 = static _MetricUtilities.top1Accuracy(confusionMatrix:classCount:)(v49, *(v47 + 16));
      v50 = *(v93 + 8);
      v50(v49, v48);
      v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(MetricsKey, Double)>);
      v52 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MetricsKey, Double));
      v53 = *(v52 - 8);
      v54 = *(v53 + 80);
      v55 = (v54 + 32) & ~*(v53 + 80);
      v56 = swift_allocObject(v51, v55 + *(v53 + 72), v54 | 7);
      *(v56 + 16) = 1;
      *(v56 + 24) = 2;
      v57 = *(v52 + 48);
      static MetricsKey.trainingAccuracy.getter();
      v12 = *&v106;
      *(v57 + v56 + v55) = v106;
      v58 = v114;
      v59 = lazy protocol witness table accessor for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel(&lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey, &type metadata accessor for MetricsKey, &protocol conformance descriptor for MetricsKey);
      v60 = Dictionary.init(dictionaryLiteral:)(v56, v109, &type metadata for Double, v59);
      v61 = v89;
      LOBYTE(v57) = v113;
      specialized Dictionary.subscript.getter(v95, v94, v113);
      v57;
      if (v58[9])
      {
        if (swift_dynamicCast(v99, v61, v103, v107, 6))
        {
          v113 = v60;
          static _MetricUtilities.makeClassifierMetrics(confusionMeter:classLabels:supplementMissingClassLabels:)(v58[12], v110, 0);
          v62 = v114[27];
          v109 = v114[24];
          v63 = v114[20];
          v106 = *(v114 + 17);
          v64 = v114[19];
          outlined assign with take of MLClassifierMetrics(v63, v114[13] + *(v111 + 36));
          static MetricsKey.validationAccuracy.getter();
          _MetricUtilities.ConfusionMatrixMeter.value(normalized:)(0);
          v107 = static _MetricUtilities.top1Accuracy(confusionMatrix:classCount:)(v64, *(v110 + 16));
          v50(v64, *&v106);
          v65 = v113;
          v66 = swift_isUniquelyReferenced_nonNull_native(v113);
          *&v105 = v65;
          v12 = v107;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v62, v66, *&v107);
          v60 = v105;
          (*(v100 + 8))(v62, v109);
        }
      }

      else
      {
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v61, &demangling cache variable for type metadata for Any?);
      }

      v67 = v112;
      v113 = (v112 + 1);
      v68 = v114[14];
      v69 = v114[16];
      v70 = v60;
      v71 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v60);
      v70;
      Event.init(origin:itemCount:totalItemCount:metrics:)(v98, v97, v67, 0, 1, v71);
      TrainingTablePrinter.print(_:)(v69, v12);

      v37 = v69;
      v72 = v68;
      v39 = v114;
      (*(v96 + 8))(v69, v72);
      v40 = v113;
      if (v92 == v113)
      {
        goto LABEL_16;
      }
    }

    v43;
LABEL_19:
    v108 = v39[31];
    v111 = v39[30];
    v109 = v39[29];
    v77 = v39[23];
    v113 = v39[28];
    *&v105 = 0;
    *(&v105 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(60);
    v78._object = "ml.handactionclassifier" + 0x8000000000000000;
    v78._countAndFlagsBits = 0xD00000000000003ALL;
    String.append(_:)(v78);
    v114[10] = v112;
    v79 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v81 = v80;
    v78._countAndFlagsBits = v79;
    v78._object = v80;
    String.append(_:)(v78);
    v81;
    v110 = v105;
    v2 = v114;
    v82 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v83 = swift_allocError(&type metadata for MLCreateError, v82, 0, 0);
    *v84 = v110;
    *(v84 + 16) = 0;
    *(v84 + 32) = 0;
    *(v84 + 48) = 0;
    *&v110 = v83;
    swift_willThrow();
    outlined destroy of MLActivityClassifier.ModelParameters(v77, type metadata accessor for TrainingTablePrinter);
    (*(v111 + 8))(v108, v109);
    v14 = v113;
    goto LABEL_3;
  }

LABEL_16:
  static os_log_type_t.info.getter(v37);
  v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v74 = swift_allocObject(v73, 72, 7);
  v75 = v74;
  v74[2] = 1;
  v74[3] = 2;
  v74[7] = &type metadata for Int;
  v74[8] = &protocol witness table for Int;
  v74[4] = 3;
  os_log(_:dso:log:type:_:)("event: %lu");
  v75;
  v76 = swift_task_alloc(80);
  v39[34] = v76;
  *v76 = v39;
  v76[1] = MLHandActionClassifier.runTrainingLoop(trainingData:validationData:loadPretrain:);
  return MLHandActionClassifier.GraphCNN.compile()();
}

uint64_t MLHandActionClassifier.runTrainingLoop(trainingData:validationData:loadPretrain:)(uint64_t a1)
{
  v5 = *(*v2 + 272);
  v4 = *v2;
  *(*v2 + 280) = v1;
  v5;
  if (v1)
  {
    v6 = MLHandActionClassifier.runTrainingLoop(trainingData:validationData:loadPretrain:);
  }

  else
  {
    *(v4 + 288) = a1;
    v6 = MLHandActionClassifier.runTrainingLoop(trainingData:validationData:loadPretrain:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t MLHandActionClassifier.runTrainingLoop(trainingData:validationData:loadPretrain:)()
{
  v13 = *(v0 + 288);
  v1 = *(v0 + 248);
  v14 = *(v0 + 240);
  v2 = *(v0 + 232);
  v3 = *(v0 + 224);
  v11 = *(v0 + 216);
  v10 = *(v0 + 208);
  v12 = *(v0 + 184);
  v9 = *(v0 + 168);
  v8 = *(v0 + 160);
  v7 = *(v0 + 152);
  v4 = *(v0 + 104);
  v6 = *(v0 + 128);
  outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for TrainingTablePrinter);
  (*(v14 + 8))(v1, v2);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v3, &demangling cache variable for type metadata for Dataset<[(label: Int, keypoints: MLMultiArray)], DataSample<Tensor, Tensor>>?);

  *(v4 + 16) = v13;
  v1;
  v3;
  v11;
  v10;
  v12;
  v9;
  v8;
  v7;
  v6;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 248);
  v2 = *(v0 + 240);
  v3 = *(v0 + 232);
  v4 = *(v0 + 224);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 184), type metadata accessor for TrainingTablePrinter);
  (*(v2 + 8))(v1, v3);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4, &demangling cache variable for type metadata for Dataset<[(label: Int, keypoints: MLMultiArray)], DataSample<Tensor, Tensor>>?);
  v5 = *(v0 + 224);
  v6 = *(v0 + 216);
  v7 = *(v0 + 208);
  v8 = *(v0 + 184);
  v13 = *(v0 + 168);
  v12 = *(v0 + 160);
  v10 = *(v0 + 128);
  v11 = *(v0 + 152);
  *(v0 + 248);
  v5;
  v6;
  v7;
  v8;
  v13;
  v12;
  v11;
  v10;
  return (*(v0 + 8))();
}

uint64_t MLHandActionClassifier.GraphCNN.evaluate(_:)(void *a1)
{
  v73 = v2;
  context = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LossReduction?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v56 = v54;
  v61 = type metadata accessor for Tensor(0);
  v60 = *(v61 - 8);
  v6 = *(v60 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v57 = v54;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v59 = v54;
  v11 = alloca(v6);
  v12 = alloca(v6);
  v58 = v54;
  v13 = alloca(v6);
  v14 = alloca(v6);
  v70 = v54;
  v71 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataSample<Tensor, Tensor>);
  v65 = *(v71 - 8);
  v15 = *(v65 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v66 = v54;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataSample<Tensor, Tensor>?) - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v67 = v54;
  v75 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[(label: Int, keypoints: MLMultiArray)]>>, DataSample<Tensor, Tensor>>>, DataSample<Tensor, Tensor>>.Iterator);
  v21 = *(*(v75 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v74 = v54;
  v24 = type metadata accessor for LearningPhase(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  (*(v25 + 104))(v54, enum case for LearningPhase.inference(_:), v24);
  swift_beginAccess(v73 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model, v54, 33, 0);
  v77 = type metadata accessor for MLHandActionClassifier.GraphCNNModel(0);
  v29 = lazy protocol witness table accessor for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel(&lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel);
  Layer.prepare(for:)(v54, v77, v29);
  swift_endAccess(v54);
  (*(v25 + 8))(v54, v24);
  v30 = *(*(v73 + 16) + 16);
  v31 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
  swift_allocObject(v31, *(v31 + 48), *(v31 + 52));
  result = _MetricUtilities.ConfusionMatrixMeter.init(classCount:)(v30);
  if (!v1)
  {
    v68 = result;
    v64 = 0;
    v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[(label: Int, keypoints: MLMultiArray)], DataSample<Tensor, Tensor>>);
    v34 = v74;
    Dataset.makeIterator()(v33);
    v35 = *(v75 + 44);
    v62 = *(v34 + v35);
    v63 = *(v34 + v35 + 8);
    v75 = lazy protocol witness table accessor for type Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[(label: Int, keypoints: MLMultiArray)]>>, DataSample<Tensor, Tensor>>>.Iterator and conformance Batches<A>.Iterator();
    v69 = enum case for LossReduction.mean(_:);
    LODWORD(v77) = 0;
    v76 = 0;
    while (1)
    {
      v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[(label: Int, keypoints: MLMultiArray)]>>, DataSample<Tensor, Tensor>>>.Iterator);
      dispatch thunk of IteratorProtocol.next()(v36, v75);
      v37 = v54[0];
      if (v54[0])
      {
        v55 = v54[0];
        v38 = v67;
        v62(&v55);
        v37;
        v39 = v38;
        v40 = 0;
      }

      else
      {
        v38 = v67;
        v39 = v67;
        v40 = 1;
      }

      v41 = v71;
      __swift_storeEnumTagSinglePayload(v39, v40, 1, v71);
      v42 = v70;
      if (__swift_getEnumTagSinglePayload(v38, 1, v41) == 1)
      {
        break;
      }

      (*(v65 + 32))(v66, v38, v41);
      context = _objc_autoreleasePoolPush();
      DataSample.features.getter(v41);
      v43 = v58;
      v44 = v41;
      v45 = v59;
      DataSample.labels.getter(v44);
      MLHandActionClassifier.GraphCNN.callAsFunction(_:)(v42);
      v46 = type metadata accessor for LossReduction(0);
      v47 = v56;
      (*(*(v46 - 8) + 104))(v56, v69, v46);
      __swift_storeEnumTagSinglePayload(v47, 0, 1, v46);
      v48 = v57;
      softmaxCrossEntropy(logits:labels:labelSmoothing:axis:reduction:)(v45, v43, -1, v47, 0.0);
      v49 = v47;
      v50 = v48;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v49, &demangling cache variable for type metadata for LossReduction?);
      _MetricUtilities.ConfusionMatrixMeter.add(predicted:target:)(v45, v43);
      Tensor.scalar<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
      if (__OFADD__(1, v76))
      {
        BUG();
      }

      ++v76;
      *&v77 = *&v77 + *v54;
      v51 = *(v60 + 8);
      v52 = v50;
      v53 = v61;
      v51(v52, v61);
      v51(v45, v53);
      v51(v43, v53);
      v51(v70, v53);
      _objc_autoreleasePoolPop(context);
      (*(v65 + 8))(v66, v71);
    }

    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v74, &demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[(label: Int, keypoints: MLMultiArray)]>>, DataSample<Tensor, Tensor>>>, DataSample<Tensor, Tensor>>.Iterator);
    return v68;
  }

  return result;
}