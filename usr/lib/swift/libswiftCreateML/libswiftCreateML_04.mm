uint64_t static _ValidationUtilities.validateTableTypes(table:columns:type:)(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v4 = *a1;
  _._countAndFlagsBits = 0;
  v5 = *(a1 + 8);
  v6 = *a3;
  _._object = 0xE000000000000000;
  v144._countAndFlagsBits = v4;
  LOBYTE(v144._object) = v5 & 1;
  v142 = v4;
  v136 = v5;
  outlined copy of Result<_DataTable, Error>(v4, v5);
  v7 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v144._countAndFlagsBits, v5 & 1);
  if (v7 <= 0)
  {
    v100._object = "ng default name '" + 0x8000000000000000;
    v100._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v100);
    goto LABEL_77;
  }

  v129 = a2[2];
  if (!v129)
  {
    goto LABEL_77;
  }

  v130 = a2 + 4;
  v143 = a2;

  v8 = 0;
  v146 = v6;
  while (1)
  {
    v135._countAndFlagsBits = v130[2 * v8];
    v138 = v130[2 * v8 + 1];
    v149 = v8;
    if (v136)
    {
      outlined copy of Result<_DataTable, Error>(v142, 1);

      v9 = tc_v1_flex_list_create(0);
      if (!v9)
      {
        BUG();
      }

      v10 = v9;
      v11 = type metadata accessor for CMLSequence();
      v12 = swift_allocObject(v11, 25, 7);
      *(v12 + 16) = v10;
      countAndFlagsBits = v12;
      *(v12 + 24) = 1;
      v13 = tc_v1_flex_list_create(0);
      if (!v13)
      {
        BUG();
      }

      v14 = v13;
      outlined consume of Result<_DataTable, Error>(v142, 1);
      v15 = swift_allocObject(v11, 25, 7);
      *(v15 + 16) = v14;
      v152 = v15;
      *(v15 + 24) = 1;
      v16 = _swiftEmptyDictionarySingleton;
    }

    else
    {
      v17 = v142;
      v18 = *(*(v142 + 16) + 16);
      outlined copy of Result<_DataTable, Error>(v142, 0);
      outlined copy of Result<_DataTable, Error>(v17, 0);

      v19 = v153;
      v20 = specialized handling<A, B, C>(_:_:_:)(v18, 0);
      v153 = v19;
      if (v19)
      {
        v153;

        v21 = tc_v1_flex_list_create(0);
        v153 = 0;
        if (!v21)
        {
          BUG();
        }
      }

      else
      {
        v21 = v20;
        if (!v20)
        {
          BUG();
        }
      }

      v22 = type metadata accessor for CMLSequence();
      v23 = swift_allocObject(v22, 25, 7);
      *(v23 + 16) = v21;
      v152 = v23;
      *(v23 + 24) = 1;
      v24 = v142;
      outlined copy of Result<_DataTable, Error>(v142, 0);
      _DataTable.columnNames.getter();
      outlined consume of Result<_DataTable, Error>(v24, 0);
      countAndFlagsBits = v144._countAndFlagsBits;
      outlined copy of Result<_DataTable, Error>(v24, 0);
      v16 = _DataTable.columnIndexes.getter();
      outlined consume of Result<_DataTable, Error>(v24, 0);
      outlined consume of Result<_DataTable, Error>(v24, 0);
      outlined consume of Result<_DataTable, Error>(v24, 0);
      v8 = v149;
    }

    v25 = v146;
    if (!v16[2])
    {

      v16;

      goto LABEL_22;
    }

    v26 = v138;

    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v135._countAndFlagsBits, v26);
    if (v28)
    {
      break;
    }

    v16;

    v26;
    v8 = v149;
LABEL_22:
    if (v25 != 7)
    {
      goto LABEL_75;
    }

LABEL_71:
    ++v8;
    v138;
    if (v8 == v129)
    {
      v105 = v143;
      goto LABEL_76;
    }
  }

  v29 = *(v16[7] + 8 * v27);
  v26;

  v30 = v153;
  v31 = CMLSequence.value(at:)(v29);
  v153 = v30;
  if (v30)
  {
    v115 = "CreateML/MLDataTable.Row.swift";
    v116 = 30;
    v117 = 85;
    v118 = v153;
    goto LABEL_103;
  }

  v32 = v31;
  v33 = CMLFeatureValue.type.getter();
  v150 = v16;
  switch(v33)
  {
    case 0:
      v34 = v32[2];

      v35 = v153;
      specialized handling<A, B>(_:_:)(v34);
      v153 = v35;
      if (v35)
      {
        v153;

        BUG();
      }

      v16;

      v152;
      v32;
      v36 = 0;
      goto LABEL_67;
    case 1:
      v97 = v32[2];

      v98 = v153;
      specialized handling<A, B>(_:_:)(v97);
      v153 = v98;
      if (v98)
      {
        v153;

        BUG();
      }

      v16;

      v152;
      v32;
      v122 = 1;
      goto LABEL_66;
    case 2:

      v87 = CMLFeatureValue.stringValue()();
      v153 = v88;
      if (v88)
      {
        v153;

        BUG();
      }

      object = v87._object;
      v16;

      v152;
      v32;
      object;
      v122 = 2;
      goto LABEL_66;
    case 3:
      v90 = v32[2];
      v91 = v32;

      v92 = v153;
      v93 = specialized handling<A, B>(_:_:)(v90);
      v153 = v92;
      if (v92)
      {
        v153;

        BUG();
      }

      v94 = v93;
      v8 = v149;
      if (!v93)
      {
        BUG();
      }

      v91;
      v95 = type metadata accessor for CMLSequence();
      inited = swift_initStackObject(v95, v123);
      *(inited + 16) = v94;
      *(inited + 24) = 1;

      v150;

      v36 = 3;
      goto LABEL_68;
    case 4:
      v37 = v32[2];
      v135._object = v32;

      v38 = v153;
      v39 = specialized handling<A, B>(_:_:)(v37);
      v153 = v38;
      if (v38)
      {
        v153;

        BUG();
      }

      v40 = v39;
      if (!v39)
      {
        BUG();
      }

      v132 = type metadata accessor for CMLDictionary();
      v41 = swift_initStackObject(v132, v124);
      *(v41 + 16) = v40;
      v137 = _swiftEmptyDictionarySingleton;
      swift_retain_n(v41, 2);
      v42 = 0;
      v140 = _swiftEmptyDictionarySingleton;
      v139 = v41;
      break;
    case 5:
      v16;

      v152;

      v122 = 6;
      goto LABEL_66;
    case 6:

      MLDataValue.MultiArrayType.init(from:)(v32);
      v99 = v144._countAndFlagsBits;
      if (!v144._countAndFlagsBits)
      {
        BUG();
      }

      v16;

      v152;

      v122 = 5;
LABEL_66:
      v36 = v122;
LABEL_67:
      v8 = v149;
LABEL_68:
      v25 = v146;
      goto LABEL_69;
  }

  while (v42 != CMLDictionary.size.getter())
  {
    v43 = v153;
    CMLDictionary.keyAndValue(at:)(v42);
    if (v43)
    {
      v115 = "CreateML/DictionaryType.swift";
      v116 = 29;
      v117 = 75;
      v118 = v43;
      goto LABEL_103;
    }

    v45 = v42;
    v46 = v44;
    v134 = specialized RandomAccessCollection<>.index(after:)(v45);
    v47 = CMLFeatureValue.stringValue()();
    v153 = v49;
    if (v49)
    {
      v153;

      v153 = 0;
      LOBYTE(v16) = v150;
    }

    else
    {
      v50 = v47._countAndFlagsBits;
      v141 = v47._object;

      v51 = CMLFeatureValue.type.getter();
      v131 = v50;
      switch(v51)
      {
        case 0:
          v52 = *(v46 + 16);

          v53 = v153;
          v147._countAndFlagsBits = specialized handling<A, B>(_:_:)(v52);
          v153 = v53;
          if (!v53)
          {

            JUMPOUT(0x3981ALL);
          }

          v153;

          BUG();
        case 1:
          v67 = *(v46 + 16);

          v68 = v153;
          specialized handling<A, B>(_:_:)(v67);
          v147._countAndFlagsBits = v48;
          v153 = v68;
          JUMPOUT(0x399D6);
        case 2:

          v147 = CMLFeatureValue.stringValue()();
          v153 = v59;
          if (!v59)
          {
            JUMPOUT(0x39919);
          }

          v153;

          BUG();
        case 3:
          v60 = *(v46 + 16);

          v61 = v153;
          v62 = specialized handling<A, B>(_:_:)(v60);
          if (v61)
          {
            v61;

            BUG();
          }

          v63 = v62;
          if (!v62)
          {
            BUG();
          }

          v64 = type metadata accessor for CMLSequence();
          v65 = swift_allocObject(v64, 25, 7);
          *(v65 + 16) = v63;
          v147._countAndFlagsBits = v65;
          *(v65 + 24) = 1;

          v66 = v46;
          LOBYTE(v66) = 3;
          v148 = v66;
          v147._object = 0;
          v153 = 0;
          break;
        case 4:
          v54 = *(v46 + 16);

          v55 = v153;
          v56 = specialized handling<A, B>(_:_:)(v54);
          if (!v55)
          {
            v57 = v56;
            if (v56)
            {
              v58 = swift_allocObject(v132, 24, 7);
              *(v58 + 16) = v57;
              v127[0] = v58;
              v127[1] = closure #1 in MLDataValue.DictionaryType.init(from:);
              v127[2] = 0;
              v127[3] = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
              v127[4] = 0;
              v127[5] = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
              v127[6] = 0;
              _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC8CreateML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5(v127);
              JUMPOUT(0x398D2);
            }

            BUG();
          }

          v55;

          BUG();
        case 5:
          JUMPOUT(0x399F6);
        case 6:

          MLDataValue.MultiArrayType.init(from:)(v46);
          v147._countAndFlagsBits = v144._countAndFlagsBits;
          if (!v144._countAndFlagsBits)
          {
            BUG();
          }

          v69 = v46;
          LOBYTE(v69) = 5;
          v148 = v69;
          v147._object = 0;
          break;
      }

      LOBYTE(v16) = v150;
      *&v70 = v131;
      v144._countAndFlagsBits = v131;
      *(&v70 + 1) = v141;
      v144._object = v141;
      LOBYTE(v145) = 2;
      v71 = v131;
      v72 = v140;
      specialized __RawDictionaryStorage.find<A>(_:)(v70, 2, *&v48);
      *&v70 = (v74 & 1) == 0;
      v75 = __OFADD__(v72[2], v70);
      v76 = v72[2] + v70;
      if (v75)
      {
        BUG();
      }

      v77 = v74;
      if (v72[3] < v76)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v76, 1u);
        *&v78 = v71;
        *(&v78 + 1) = v141;
        specialized __RawDictionaryStorage.find<A>(_:)(v78, 2, *&v48);
        LOBYTE(v79) = v79 & 1;
        v80 = v77;
        if ((v77 & 1) != v79)
        {
          LOBYTE(v80) = v77 & 1;
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLDataValue, *(&v78 + 1), v79, v80);
          BUG();
        }
      }

      if (v77)
      {
        v119 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
        swift_willThrow();
        v128 = v119;
        swift_errorRetain(v119);
        v120 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
        if (swift_dynamicCast(&demangling cache variable for type metadata for Error, &v128, v120, &type metadata for _MergeError, 0))
        {
          v125 = 0;
          v126 = 0xE000000000000000;
          _StringGuts.grow(_:)(30);
          v121._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
          v121._countAndFlagsBits = 0xD00000000000001BLL;
          String.append(_:)(v121);
          _print_unlocked<A, B>(_:_:)(&v144, &v125, &type metadata for MLDataValue, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
          v121._countAndFlagsBits = 39;
          v121._object = 0xE100000000000000;
          String.append(_:)(v121);
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v125, v126, "Swift/NativeDictionary.swift", 28, 2, 783, 0);
          BUG();
        }

        outlined consume of MLDataValue(v147._countAndFlagsBits, v147._object, v148);
        outlined consume of MLDataValue(v144._countAndFlagsBits, v144._object, v145);

        v128;
        v115 = "Swift/Dictionary.swift";
        v116 = 22;
        v117 = 489;
        v118 = v119;
LABEL_103:
        swift_unexpectedError(v118, v115, v116, 1, v117);
        BUG();
      }

      v81 = v137;
      v137[(v73 >> 6) + 8] |= 1 << v73;
      v82 = v81[6];
      v83 = 24 * v73;
      *(v82 + v83) = v71;
      *(v82 + v83 + 8) = v141;
      *(v82 + v83 + 16) = 2;
      v84 = v81[7];
      *(v84 + v83) = v147;
      *(v84 + v83 + 16) = v148;
      v85 = v81[2];
      v75 = __OFADD__(1, v85);
      v86 = v85 + 1;
      if (v75)
      {
        BUG();
      }

      v140 = v81;
      v81[2] = v86;
    }

    v41 = v139;
    v42 = v134;
  }

  v16;

  v152;
  v135._object;
  v41;

  v36 = 4;
  v25 = v146;
  v8 = v149;
LABEL_69:
  if (v25 != 7 && v36 == v25)
  {
    goto LABEL_71;
  }

LABEL_75:
  v101 = v25;
  v143;
  v144._countAndFlagsBits = 0;
  v144._object = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  v102._countAndFlagsBits = v135._countAndFlagsBits;
  v103 = v138;
  v102._object = v138;
  String.append(_:)(v102);
  v103;
  v102._countAndFlagsBits = 0x7369206570797420;
  v102._object = 0xEF206120746F6E20;
  String.append(_:)(v102);
  specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v101);
  v102._object = 0xE200000000000000;
  v102._countAndFlagsBits = 2606;
  String.append(_:)(v102);
  v104 = v144._object;
  String.append(_:)(v144);
  v105 = v104;
LABEL_76:
  v105;
LABEL_77:
  v106 = _._countAndFlagsBits;
  v107 = _._object;
  v108 = (_._object >> 56) & 0xF;
  if ((_._object & 0x2000000000000000) == 0)
  {
    v108 = _._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v108)
  {
    return _._object;
  }

  v109 = static os_log_type_t.error.getter();
  v110._countAndFlagsBits = v106;
  v110._object = v107;
  log(_:type:)(v110, v109);
  v111 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v112 = swift_allocError(&type metadata for MLCreateError, v111, 0, 0);
  *v113 = v106;
  *(v113 + 8) = v107;
  *(v113 + 16) = 0;
  *(v113 + 32) = 0;
  *(v113 + 48) = 1;
  v153 = v112;
  return swift_willThrow();
}

NSURL *static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v41 = v6;
  v49 = a5;
  v44._countAndFlagsBits = a4;
  v42 = a3;
  v43 = a2;
  v50 = v5;
  v7 = type metadata accessor for URL.DirectoryHint(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v47 = type metadata accessor for URL(0);
  v48 = *(v47 - 8);
  v12 = *(v48 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v44._object = &v40;
  if (URL.isFileURL.getter())
  {
    if (URL.hasDirectoryPath.getter())
    {
      v45 = v43;
      v46 = v42;
      (*(v8 + 104))(&v40, enum case for URL.DirectoryHint.inferFromPath(_:), v7);
      v15 = lazy protocol witness table accessor for type String and conformance String();
      URL.appending<A>(component:directoryHint:)(&v45, &v40, &type metadata for String, v15);
      (*(v8 + 8))(&v40, v7);
      v16 = v49;
      object = v44._object;
      URL.appendingPathExtension(_:)(v44._countAndFlagsBits, v49);
      (*(v48 + 8))(object, v47);
      v45 = 0;
      v46 = 0xE000000000000000;
      _StringGuts.grow(_:)(69);
      v18._object = " be an empty string." + 0x8000000000000000;
      v18._countAndFlagsBits = 0xD000000000000041;
      String.append(_:)(v18);
      v19 = URL.lastPathComponent.getter();
      v21 = v20;
      v18._countAndFlagsBits = v19;
      v18._object = v20;
      String.append(_:)(v18);
      v21;
      v18._object = 0xE200000000000000;
      v18._countAndFlagsBits = 11815;
      String.append(_:)(v18);
      v22 = v45;
      v23 = v46;
      v24 = static os_log_type_t.info.getter(11815);
      v18._countAndFlagsBits = v22;
      v25 = v50;
      v18._object = v23;
      log(_:type:)(v18, v24);
      v23;
    }

    else
    {
      v25 = v50;
      (*(v48 + 16))(v50, a1, v47);
      v16 = v49;
    }

    v29 = URL.pathExtension.getter();
    v31 = v30;
    countAndFlagsBits = v44._countAndFlagsBits;
    if (v44._countAndFlagsBits ^ v29 | v16 ^ v30)
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)(v29, v30, v44._countAndFlagsBits, v16, 0);
      v31;
      v34 = (v33 & 1) == 0;
      v25 = v50;
      if (v34)
      {
        v45 = 0;
        v46 = 0xE000000000000000;
        _StringGuts.grow(_:)(72);
        v35._object = "L has to be a file URL." + 0x8000000000000000;
        v35._countAndFlagsBits = 0xD000000000000013;
        String.append(_:)(v35);
        v35._countAndFlagsBits = countAndFlagsBits;
        v35._object = v16;
        String.append(_:)(v35);
        v35._object = "Expected filetype ." + 0x8000000000000000;
        v35._countAndFlagsBits = 0xD000000000000033;
        String.append(_:)(v35);
        v36 = v45;
        v37 = v46;
        v38 = static os_log_type_t.info.getter(0xD000000000000033);
        v35._countAndFlagsBits = v36;
        v35._object = v37;
        log(_:type:)(v35, v38);
        LOBYTE(v35._countAndFlagsBits) = v37;
        v25 = v50;
        v35._countAndFlagsBits;
        v35._countAndFlagsBits = countAndFlagsBits;
        v35._object = v49;
        URL.appendPathExtension(_:)(v35);
      }
    }

    else
    {
      v30;
    }

    v39 = v41;
    result = static _FileUtilities.prepareForWriting(to:isDirectory:)(v25, 0);
    if (v39)
    {
      return (*(v48 + 8))(v25, v47);
    }
  }

  else
  {
    v26 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v26, 0, 0);
    *v27 = 0xD000000000000027;
    *(v27 + 8) = " in the data table. " + 0x8000000000000000;
    *(v27 + 16) = 0;
    *(v27 + 32) = 0;
    *(v27 + 48) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t static _ValidationUtilities.validateWriteLocation(atPath:defaultName:)(Swift::String string, uint64_t a2, void *a3)
{
  object = string._object;
  countAndFlagsBits = string._countAndFlagsBits;

  v6 = specialized BidirectionalCollection.last.getter(string._countAndFlagsBits, string._object);
  if (v7)
  {
    v8 = v7;
    if (!(v6 ^ 0x2F | v7 ^ 0xE100000000000000))
    {
      v7;
LABEL_5:

      v11._countAndFlagsBits = 0x6C65646F6D6C6D2ELL;
      v11._object = 0xE800000000000000;
      String.append(_:)(v11);
      v11._countAndFlagsBits = a2;
      v11._object = a3;
      String.append(_:)(v11);
      a3;
      _StringGuts.grow(_:)(69);
      v11._object = " be an empty string." + 0x8000000000000000;
      v11._countAndFlagsBits = 0xD000000000000041;
      String.append(_:)(v11);
      v11._countAndFlagsBits = a2;
      v11._object = a3;
      String.append(_:)(v11);
      v11._object = 0xE200000000000000;
      v11._countAndFlagsBits = 11815;
      String.append(_:)(v11);
      v12 = static os_log_type_t.info.getter(11815);
      v11._countAndFlagsBits = 0;
      v11._object = 0xE000000000000000;
      log(_:type:)(v11, v12);
      0;
      countAndFlagsBits = string._countAndFlagsBits;
      object = string._object;
      goto LABEL_6;
    }

    v22 = a3;
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 47, 0xE100000000000000, 0);
    v8;
    v10 = (v9 & 1) == 0;
    a3 = v22;
    if (!v10)
    {
      goto LABEL_5;
    }
  }

LABEL_6:
  v13._countAndFlagsBits = countAndFlagsBits;
  v13._object = object;
  type metadata accessor for NSString();
  v14 = NSString.__allocating_init(string:)(v13);
  v15 = [v14 stringByExpandingTildeInPath];
  v16 = v15;

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)(v16);
  v19 = v18;

  URL.init(fileURLWithPath:)(v17, v19);
  return v19;
}

uint64_t static _ValidationUtilities.validateTableTypes(table:featureColumns:featureType:labelColumn:labelType:)(uint64_t *a1, void *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  v15 = a4;
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *a3;
  v19 = *a6;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  result = static _ValidationUtilities.validateTableTypes(table:columns:type:)(&v16, a2, &v18);
  if (!v6)
  {
    v16 = v8;
    v17 = v9;
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
    inited = swift_initStackObject(v12, v14);
    inited[2] = 1;
    inited[3] = 2;
    inited[4] = v15;
    inited[5] = a5;
    v18 = v19;

    static _ValidationUtilities.validateTableTypes(table:columns:type:)(&v16, inited, &v18);
    swift_setDeallocating(inited);
    return specialized _ContiguousArrayStorage.__deallocating_deinit();
  }

  return result;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> DataFrame.validateContainsColumns(_:context:)(Swift::OpaquePointer _, Swift::String context)
{
  object = context._object;
  v34._countAndFlagsBits = context._countAndFlagsBits;
  v3 = DataFrame.columns.getter(_._rawValue);
  v4 = v3;
  MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11TabularData9AnyColumnVG_SSs5NeverOTg504_s11d75Data0B5FrameV8CreateMLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n(v3);
  v34._object = v2;
  v4;
  v6 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n);
  v32 = *(_._rawValue + 2);
  if (v32)
  {
    v37 = v6;
    v31 = _._rawValue + 32;
    v36._object = _._rawValue;

    v7 = 0;
    while (1)
    {
      v8 = *&v31[16 * v7];
      v9 = *&v31[16 * v7 + 8];
      v10 = *(v37 + 16) == 0;
      v36._countAndFlagsBits = v8;
      if (v10)
      {
        v21 = v37;

        v21;
        v36._object;
        v18 = v9;
        goto LABEL_18;
      }

      v30 = v7;
      Hasher.init(_seed:)(*(v37 + 40));

      v35 = v9;
      String.hash(into:)(&v28, v8);
      v11 = Hasher._finalize()();
      v12 = ~(-1 << *(v37 + 32));
      v13 = v12 & v11;
      v14 = *(v37 + 8 * ((v12 & v11) >> 6) + 56);
      if (!_bittest64(&v14, v13))
      {
        break;
      }

      v15 = *(v37 + 48);
      v16 = *(v15 + 16 * v13);
      v17 = *(v15 + 16 * v13 + 8);
      v10 = v16 == v8;
      v18 = v35;
      if (!v10)
      {
        goto LABEL_7;
      }

LABEL_6:
      if (v17 != v18)
      {
LABEL_7:
        while ((_stringCompareWithSmolCheck(_:_:expecting:)(v16, v17, v36._countAndFlagsBits, v18, 0) & 1) == 0)
        {
          v13 = v12 & (v13 + 1);
          v19 = *(v37 + 8 * (v13 >> 6) + 56);
          if (!_bittest64(&v19, v13))
          {
            v37;
            v36._object;
            goto LABEL_18;
          }

          v16 = *(v15 + 16 * v13);
          v17 = *(v15 + 16 * v13 + 8);
          if (v16 == v36._countAndFlagsBits)
          {
            goto LABEL_6;
          }
        }
      }

      v7 = v30 + 1;
      v18;
      if (v7 == v32)
      {
        v37;
        v20 = v36._object;
        goto LABEL_14;
      }
    }

    v37;
    v36._object;
    v18 = v35;
LABEL_18:
    v28 = 0;
    v29 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v22._countAndFlagsBits = v34._countAndFlagsBits;
    v22._object = object;
    String.append(_:)(v22);
    v22._countAndFlagsBits = 0x206E6D756C6F6320;
    v22._object = 0xEE002720656D616ELL;
    String.append(_:)(v22);
    v22._countAndFlagsBits = v36._countAndFlagsBits;
    v22._object = v18;
    String.append(_:)(v22);
    v18;
    v22._object = "The DataTable is empty." + 0x8000000000000000;
    v22._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v22);
    v23 = v28;
    v24 = v29;
    v25 = static os_log_type_t.error.getter();
    v22._countAndFlagsBits = v23;
    v22._object = v24;
    log(_:type:)(v22, v25);
    v26 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v26, 0, 0);
    *v27 = v23;
    *(v27 + 8) = v24;
    *(v27 + 16) = 0;
    *(v27 + 32) = 0;
    *(v27 + 48) = 1;
    swift_willThrow();
  }

  else
  {
    v20 = v6;
LABEL_14:
    v20;
  }
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> DataFrame.validateColumnTypes(_:_:context:)(Swift::String _, Swift::OpaquePointer a2, Swift::String context)
{
  v34 = v3;
  v36._object = context._object;
  v37._countAndFlagsBits = context._countAndFlagsBits;
  rawValue = a2._rawValue;
  v32 = type metadata accessor for AnyColumn(0);
  v33 = *(v32 - 8);
  v4 = *(v33 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v36._countAndFlagsBits = _._countAndFlagsBits;
  object = _._object;
  v7 = DataFrame.indexOfColumn(_:)(_);
  if (v7.is_nil)
  {
    v29 = 0;
    v30 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v8._countAndFlagsBits = v37._countAndFlagsBits;
    v8._object = v36._object;
    String.append(_:)(v8);
    v8._countAndFlagsBits = 0x206E6D756C6F6320;
    v8._object = 0xEE002720656D616ELL;
    String.append(_:)(v8);
    v8._countAndFlagsBits = v36._countAndFlagsBits;
    v8._object = object;
    String.append(_:)(v8);
    v9._object = "The DataTable is empty." + 0x8000000000000000;
    v9._countAndFlagsBits = 0xD000000000000023;
LABEL_11:
    String.append(_:)(v9);
    v23 = v29;
    v24 = v30;
    v25 = static os_log_type_t.error.getter(v9._countAndFlagsBits);
    v26._countAndFlagsBits = v23;
    v26._object = v24;
    log(_:type:)(v26, v25);
    v27 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v27, 0, 0);
    *v28 = v23;
    *(v28 + 8) = v24;
    *(v28 + 16) = 0;
    *(v28 + 32) = 0;
    *(v28 + 48) = 1;
    swift_willThrow();
    return;
  }

  value = v7.value;
  DataFrame.subscript.getter(v7.value);
  v11 = AnyColumn.wrappedElementType.getter(value);
  (*(v33 + 8))(&v29, v32);
  v12 = rawValue;
  v13 = rawValue[2];
  v14 = object;
  countAndFlagsBits = v36._countAndFlagsBits;
  if (!v13)
  {
    goto LABEL_10;
  }

  if (rawValue[4] == v11)
  {
    return;
  }

  if (v13 == 1)
  {
LABEL_10:
    v29 = 0;
    v30 = 0xE000000000000000;
    _StringGuts.grow(_:)(68);
    v18._countAndFlagsBits = v37._countAndFlagsBits;
    v18._object = v36._object;
    String.append(_:)(v18);
    v18._countAndFlagsBits = 0x206E6D756C6F6320;
    v18._object = 0xEE002720656D616ELL;
    String.append(_:)(v18);
    v18._countAndFlagsBits = countAndFlagsBits;
    v18._object = v14;
    String.append(_:)(v18);
    v18._object = " in the data table." + 0x8000000000000000;
    v18._countAndFlagsBits = 0xD00000000000002FLL;
    String.append(_:)(v18);
    v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any.Type);
    v20 = Array.description.getter(v12, v19);
    v22 = v21;
    v18._countAndFlagsBits = v20;
    v18._object = v21;
    String.append(_:)(v18);
    v22;
    v9._countAndFlagsBits = 46;
    v9._object = 0xE100000000000000;
    goto LABEL_11;
  }

  v16 = 5;
  while (1)
  {
    v17 = v16 - 4 + 1;
    if (__OFADD__(1, v16 - 4))
    {
      BUG();
    }

    if (rawValue[v16] == v11)
    {
      break;
    }

    ++v16;
    if (v17 == v13)
    {
      goto LABEL_10;
    }
  }
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> DataFrame.validateColumnIsNumeric(_:context:)(Swift::String _, Swift::String context)
{
  contexta = context._object;
  countAndFlagsBits = context._countAndFlagsBits;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any.Type>);
  v4 = swift_allocObject(v3, 56, 7);
  v5 = v4;
  v4[2] = 3;
  v4[3] = 6;
  v4[4] = &type metadata for Float;
  v4[5] = &type metadata for Double;
  v4[6] = &type metadata for Int;
  DataFrame.validateColumnTypes(_:_:context:)(_, v4, __PAIR128__(contexta, countAndFlagsBits));
  v5;
}

uint64_t type metadata accessor for NSString()
{
  result = lazy cache variable for type metadata for NSString;
  if (!lazy cache variable for type metadata for NSString)
  {
    v1 = objc_opt_self(NSString);
    result = swift_getObjCClassMetadata(v1);
    lazy cache variable for type metadata for NSString = result;
  }

  return result;
}

uint64_t MLRegressor.init<A>(model:)(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v39 = v2;
  v48 = type metadata accessor for MLRandomForestRegressor(0);
  v3 = *(*(v48 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v47 = &v36;
  v46 = type metadata accessor for MLDecisionTreeRegressor(0);
  v6 = *(*(v46 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v45 = &v36;
  v44 = type metadata accessor for MLBoostedTreeRegressor(0);
  v9 = *(*(v44 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v43 = &v36;
  v12 = type metadata accessor for MLLinearRegressor(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v42 = &v36;
  v16 = *(a2 - 8);
  v17 = *(v16 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v41 = type metadata accessor for MLRegressor(0);
  v20 = *(*(v41 - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v40 = v16;
  (*(v16 + 16))(&v36, v49, a2);
  v23 = v42;
  v50 = a2;
  if (swift_dynamicCast(v42, &v36, a2, v12, 0))
  {
    outlined init with take of MLClassifierMetrics(v23, &v36, type metadata accessor for MLLinearRegressor);
    v24 = 3;
  }

  else
  {
    v24 = 0;
    v25 = v43;
    if (swift_dynamicCast(v43, &v36, v50, v44, 0))
    {
      outlined init with take of MLClassifierMetrics(v25, &v36, type metadata accessor for MLBoostedTreeRegressor);
    }

    else
    {
      v26 = v45;
      if (swift_dynamicCast(v45, &v36, v50, v46, 0))
      {
        outlined init with take of MLClassifierMetrics(v26, &v36, type metadata accessor for MLDecisionTreeRegressor);
        v35 = 1;
      }

      else
      {
        v27 = v47;
        if (!swift_dynamicCast(v47, &v36, v50, v48, 0))
        {
          v37 = 0;
          v38 = 0xE000000000000000;
          _StringGuts.grow(_:)(22);
          v38;
          v37 = 0xD000000000000013;
          v38 = "CreateML/MLRegressor.swift" + 0x8000000000000000;
          DynamicType = swift_getDynamicType(v49, v50, 0);
          v32._countAndFlagsBits = _typeName(_:qualified:)(DynamicType, 0);
          object = v32._object;
          String.append(_:)(v32);
          object;
          v34._countAndFlagsBits = 46;
          v34._object = 0xE100000000000000;
          String.append(_:)(v34);
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v37, v38, "CreateML/MLRegressor.swift", 26, 2, 64, 0);
          BUG();
        }

        outlined init with take of MLClassifierMetrics(v27, &v36, type metadata accessor for MLRandomForestRegressor);
        v35 = 2;
      }

      v24 = v35;
    }
  }

  swift_storeEnumTagMultiPayload(&v36, v41, v24);
  v28 = *(v40 + 8);
  v29 = v50;
  v28(&v36, v50);
  outlined init with take of MLClassifierMetrics(&v36, v39, type metadata accessor for MLRegressor);
  return v28(v49, v29);
}

uint64_t MLRegressor.init(trainingData:targetColumn:featureColumns:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v116 = v5;
  v114 = a3;
  v97 = v4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v94 = &v84;
  v109 = type metadata accessor for DataFrame(0);
  v111 = *(v109 - 8);
  v10 = *(v111 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v104 = &v84;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v105 = &v84;
  v103 = type metadata accessor for DataFrame.Slice(0);
  v15 = *(v103 - 8);
  v16 = *(v15 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v115 = COERCE_DOUBLE(&v84);
  v19 = alloca(v16);
  v20 = alloca(v16);
  v113 = &v84;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v112 = &v84;
  v110 = a1;
  v23 = v114;
  v24 = v116;
  v25 = static _FeatureUtilities.selectFeaturesFromTrainingData(trainingData:targetColumn:featureColumns:)(a1, a2, v114, a4);
  v108 = v24;
  if (v24)
  {
    (*(v111 + 8))(v110, v109);
    v23;
    return a4;
  }

  v106 = v25;
  v95 = a2;
  v107 = v15;
  a4;
  v27 = v109;
  DataFrameProtocol.randomSplit(by:seed:)(v112, v113, 0, 0, v109, &protocol witness table for DataFrame, 0.1);
  v28 = v103;
  if (DataFrameProtocol.isEmpty.getter(v103, &protocol witness table for DataFrame.Slice))
  {
    v114;
    v106;
    v29 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v29, 0, 0);
    *v30 = 0xD000000000000044;
    *(v30 + 8) = " that to file name." + 0x8000000000000000;
    *(v30 + 16) = 0;
    *(v30 + 32) = 0;
    *(v30 + 48) = 0;
    swift_willThrow();
    (*(v111 + 8))(v110, v27);
    v31 = *(v107 + 8);
    v31(v113, v28);
    return (v31)(v112, v28);
  }

  v32 = *(v107 + 16);
  v33 = *&v115;
  v32(*&v115, v112, v28);
  v34 = v105;
  DataFrame.init(_:)(v33);
  v32(v33, v113, v28);
  DataFrame.init(_:)(v33);
  v35 = v106;
  v36 = static MLRegressor.selectRegressors(featureCount:)(*(v106 + 2));
  v37 = v36[2];
  if (!v37)
  {
    v35;
    v59 = _swiftEmptyArrayStorage;
LABEL_23:
    v36;
    v114;
    v102 = v59[2];
    if (v102)
    {
      v116 = v59;
      outlined init with copy of TabularRegressionTask((v59 + 4), &v84);
      swift_bridgeObjectRetain_n(v116, 2);
      v60 = v116;
      v61 = (v116 + 9);
      for (i = 1; v102 != i; ++i)
      {
        if (i >= v60[2])
        {
          BUG();
        }

        v114 = v61;
        outlined init with copy of TabularRegressionTask(v61, &v98);
        v63 = *(&v99 + 1);
        v64 = v100;
        __swift_project_boxed_opaque_existential_0Tm(&v98, *(&v99 + 1));
        (*(v64 + 24))(v63, v64);
        v65 = v88;
        if (v89)
        {
          outlined consume of Result<_RegressorMetrics, Error>(v87, *&v88, 1);
          v115 = -1.0;
        }

        else
        {
          outlined consume of Result<_RegressorMetrics, Error>(v87, *&v88, 0);
          v115 = v65;
        }

        v66 = v85;
        v67 = v86;
        __swift_project_boxed_opaque_existential_0Tm(&v84, v85);
        (*(v67 + 24))(v66, v67);
        v68 = v91;
        if (v92)
        {
          outlined consume of Result<_RegressorMetrics, Error>(v90, v91, 1);
          v69 = -1.0;
        }

        else
        {
          outlined consume of Result<_RegressorMetrics, Error>(v90, v91, 0);
          v69 = *&v68;
        }

        if (v69 <= v115)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(&v98);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1Tm(&v84);
          outlined init with take of TabularRegressionTask(&v98, &v84);
        }

        v61 = v114 + 40;
        v60 = v116;
      }

      v60;
      outlined init with take of TabularRegressionTask(&v84, &v98);
      v60;
      if (*(&v99 + 1))
      {
        v60;
        outlined init with take of TabularRegressionTask(&v98, &v84);
        v70 = v85;
        v71 = __swift_project_boxed_opaque_existential_0Tm(&v84, v85);
        v72 = *(v70 - 8);
        v73 = *(v72 + 64);
        v74 = alloca(v73);
        v75 = alloca(v73);
        (*(v72 + 16))(&v84, v71, v70);
        MLRegressor.init<A>(model:)(&v84, v70);
        v76 = *(v111 + 8);
        v77 = v109;
        v76(v110, v109);
        v76(v104, v77);
        v76(v105, v77);
        v78 = *(v107 + 8);
        v79 = v103;
        v78(v113, v103);
        v78(v112, v79);
        return __swift_destroy_boxed_opaque_existential_1Tm(&v84);
      }
    }

    else
    {
      v98 = 0;
      v99 = 0;
      v100 = 0;
    }

    BUG();
  }

  v96 = *(v111 + 16);
  v101 = v36;
  v38 = v36 + 5;
  v116 = _swiftEmptyArrayStorage;
  while (1)
  {
    v102 = v37;
    v39 = *(v38 - 1);
    v93 = v38;
    v40 = *v38;
    v41 = v94;
    v42 = v34;
    v43 = v109;
    v96(v94, v42, v109);
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v43);
    v44 = *(v40 + 8);
    v115 = *(v44 + 24);
    v45 = v106;

    v46 = v108;
    v47 = (*&v115)(v104, v41, v95, v114, v45, v39, v44);
    v108 = v46;
    if (v46)
    {
      break;
    }

    v48 = v47;
    outlined destroy of DataFrame?(v41);
    v45;
    v115 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TabularRegressionTask));
    v49 = _arrayForceCast<A, B>(_:)(v48, v39, *&v115);
    v48;
    v50 = *(v49 + 16);
    v51 = v116[2];
    v52 = v50 + v51;
    if (__OFADD__(v50, v51))
    {
      BUG();
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v116);
    v54 = v116;
    if (!isUniquelyReferenced_nonNull_native || v116[3] >> 1 < v52)
    {
      if (v51 > v52)
      {
        v52 = v51;
      }

      v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v52, 1, v116, &demangling cache variable for type metadata for _ContiguousArrayStorage<TabularRegressionTask>, &demangling cache variable for type metadata for TabularRegressionTask, specialized UnsafeMutablePointer.moveInitialize(from:count:));
    }

    v55 = *(v49 + 16) == 0;
    v116 = v54;
    if (v55)
    {
      if (v50)
      {
        BUG();
      }
    }

    else
    {
      v56 = v54[2];
      if ((v54[3] >> 1) - v56 < v50)
      {
        BUG();
      }

      swift_arrayInitWithCopy(&v54[5 * v56 + 4], v49 + 32, v50, *&v115);
      if (v50)
      {
        v57 = __OFADD__(v116[2], v50);
        v58 = v116[2] + v50;
        if (v57)
        {
          BUG();
        }

        v116[2] = v58;
      }
    }

    v49;
    v38 = v93 + 2;
    v37 = v102 - 1;
    v34 = v105;
    if (v102 == 1)
    {
      v106;
      v59 = v116;
      LOBYTE(v36) = v101;
      goto LABEL_23;
    }
  }

  v114;
  swift_bridgeObjectRelease_n(v45, 2);
  v80 = *(v111 + 8);
  v81 = v109;
  v80(v110, v109);
  outlined destroy of DataFrame?(v41);
  v116;
  v101;
  v80(v104, v81);
  v80(v105, v81);
  v82 = *(v107 + 8);
  v83 = v103;
  v82(v113, v103);
  return (v82)(v112, v83);
}

void *static MLRegressor.selectRegressors(featureCount:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<TabularRegressionTask.Type>);
  if (a1 > 199)
  {
    v2 = swift_allocObject(v1, 48, 7);
    v2[2] = 1;
    v2[3] = 2;
    v2[4] = type metadata accessor for MLLinearRegressor(0);
    v2[5] = &protocol witness table for MLLinearRegressor;
  }

  else
  {
    v2 = swift_allocObject(v1, 96, 7);
    v2[2] = 4;
    v2[3] = 8;
    v2[4] = type metadata accessor for MLLinearRegressor(0);
    v2[5] = &protocol witness table for MLLinearRegressor;
    v2[6] = type metadata accessor for MLBoostedTreeRegressor(0);
    v2[7] = &protocol witness table for MLBoostedTreeRegressor;
    v2[8] = type metadata accessor for MLDecisionTreeRegressor(0);
    v2[9] = &protocol witness table for MLDecisionTreeRegressor;
    v2[10] = type metadata accessor for MLRandomForestRegressor(0);
    v2[11] = &protocol witness table for MLRandomForestRegressor;
  }

  return v2;
}

uint64_t MLRegressor.init(trainingData:targetColumn:featureColumns:)(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v12 = a4;
  v13 = a3;
  v4 = *(*(type metadata accessor for DataFrame(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *(a1 + 8);
  v10 = *a1;
  v11 = v7;
  DataFrame.init(_:)(&v10);
  return MLRegressor.init(trainingData:targetColumn:featureColumns:)(&v9, a2, v13, v12);
}

uint64_t MLRegressor.predictions(from:)(uint64_t a1)
{
  v59 = v2;
  v47 = v3;
  v58 = a1;
  v60 = v1;
  v48 = type metadata accessor for MLLinearRegressor(0);
  v4 = *(*(v48 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v49 = &v47;
  v51 = type metadata accessor for MLRandomForestRegressor(0);
  v7 = *(*(v51 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v50 = &v47;
  v53 = type metadata accessor for MLDecisionTreeRegressor(0);
  v10 = *(*(v53 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v52 = &v47;
  v62 = type metadata accessor for DataFrame(0);
  v61 = *(v62 - 8);
  v13 = *(v61 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v57 = &v47;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v54 = &v47;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v55 = &v47;
  v20 = alloca(v13);
  v21 = alloca(v13);
  v56 = &v47;
  v22 = type metadata accessor for MLBoostedTreeRegressor(0);
  v23 = *(*(v22 - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v26 = type metadata accessor for MLRegressor(0);
  v27 = *(*(v26 - 8) + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  outlined init with copy of MLRegressor(v47, &v47);
  switch(swift_getEnumCaseMultiPayload(&v47, v26))
  {
    case 0u:
      outlined init with take of MLClassifierMetrics(&v47, &v47, type metadata accessor for MLBoostedTreeRegressor);
      v30 = v58;
      DataFrame.validateContainsColumns(_:context:)(*(&v47 + *(v22 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (!v31)
      {
        v32 = v56;
        TreeRegressorModel.applied(to:eventHandler:)(v30, 0, 0);
        DataFrame.subscript.getter(v47, v48);
        (*(v61 + 8))(v32, v62);
      }

      v33 = type metadata accessor for MLBoostedTreeRegressor;
      v34 = &v47;
      return outlined destroy of MLActivityClassifier.ModelParameters(v34, v33);
    case 1u:
      v36 = v52;
      outlined init with take of MLClassifierMetrics(&v47, v52, type metadata accessor for MLDecisionTreeRegressor);
      v43 = v58;
      DataFrame.validateContainsColumns(_:context:)(*(v36 + *(v53 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (!v44)
      {
        v45 = v55;
        TreeRegressorModel.applied(to:eventHandler:)(v43, 0, 0);
        DataFrame.subscript.getter(*v36, v36[1]);
        (*(v61 + 8))(v45, v62);
      }

      v33 = type metadata accessor for MLDecisionTreeRegressor;
      goto LABEL_14;
    case 2u:
      v35 = v54;
      v36 = v50;
      outlined init with take of MLClassifierMetrics(&v47, v50, type metadata accessor for MLRandomForestRegressor);
      v37 = v58;
      DataFrame.validateContainsColumns(_:context:)(*(v36 + *(v51 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (!v38)
      {
        TreeRegressorModel.applied(to:eventHandler:)(v37, 0, 0);
        DataFrame.subscript.getter(*v36, v36[1]);
        (*(v61 + 8))(v35, v62);
      }

      v33 = type metadata accessor for MLRandomForestRegressor;
      goto LABEL_14;
    case 3u:
      v36 = v49;
      outlined init with take of MLClassifierMetrics(&v47, v49, type metadata accessor for MLLinearRegressor);
      v39 = v48;
      v40 = v58;
      DataFrame.validateContainsColumns(_:context:)(*(v36 + *(v48 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (!v41)
      {
        MLLinearRegressor.Model.applied(to:eventHandler:)(v40, 0, 0);
        v42 = v57;
        DataFrame.subscript.getter(*(v36 + *(v39 + 24)), *(v36 + *(v39 + 24) + 8));
        (*(v61 + 8))(v42, v62);
      }

      v33 = type metadata accessor for MLLinearRegressor;
LABEL_14:
      v34 = v36;
      return outlined destroy of MLActivityClassifier.ModelParameters(v34, v33);
  }
}

{
  v108 = v2;
  v87 = v3;
  v110 = v1;
  v88 = type metadata accessor for MLLinearRegressor(0);
  v4 = *(*(v88 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v89 = &v86;
  v91 = type metadata accessor for MLRandomForestRegressor(0);
  v7 = *(*(v91 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v90 = &v86;
  v93 = type metadata accessor for MLDecisionTreeRegressor(0);
  v10 = *(*(v93 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v92 = &v86;
  v112 = type metadata accessor for DataFrame(0);
  v113 = *(v112 - 8);
  v13 = *(v113 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v99 = &v86;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v111 = &v86;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v100 = &v86;
  v20 = alloca(v13);
  v21 = alloca(v13);
  v97 = &v86;
  v22 = alloca(v13);
  v23 = alloca(v13);
  v101 = &v86;
  v24 = alloca(v13);
  v25 = alloca(v13);
  v98 = &v86;
  v26 = alloca(v13);
  v27 = alloca(v13);
  v96 = &v86;
  v28 = alloca(v13);
  v29 = alloca(v13);
  v94 = &v86;
  v30 = *(*(type metadata accessor for AnyColumn(0) - 8) + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  v102 = &v86;
  v33 = alloca(v30);
  v34 = alloca(v30);
  v103 = &v86;
  v35 = alloca(v30);
  v36 = alloca(v30);
  v104 = &v86;
  v37 = alloca(v30);
  v38 = alloca(v30);
  v105 = &v86;
  v95 = type metadata accessor for MLBoostedTreeRegressor(0);
  v39 = *(*(v95 - 8) + 64);
  v40 = alloca(v39);
  v41 = alloca(v39);
  v109 = &v86;
  v42 = type metadata accessor for MLRegressor(0);
  v43 = *(*(v42 - 8) + 64);
  v44 = alloca(v43);
  v45 = alloca(v43);
  v46 = *a1;
  v47 = *(a1 + 8);
  outlined init with copy of MLRegressor(v87, &v86);
  switch(swift_getEnumCaseMultiPayload(&v86, v42))
  {
    case 0u:
      v48 = v109;
      outlined init with take of MLClassifierMetrics(&v86, v109, type metadata accessor for MLBoostedTreeRegressor);
      v106 = v46;
      v107 = v47 & 1;
      outlined copy of Result<_DataTable, Error>(v46, v47);
      v49 = v94;
      DataFrame.init(_:)(&v106);
      DataFrame.validateContainsColumns(_:context:)(*(v48 + *(v95 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (v51)
      {
        (*(v113 + 8))(v49, v112);
      }

      else
      {
        v52 = v96;
        TreeRegressorModel.applied(to:eventHandler:)(v49, 0, 0);
        DataFrame.subscript.getter(*v109, v109[1]);
        v77 = v52;
        v78 = *(v113 + 8);
        v79 = v112;
        v78(v77, v112);
        *v50.i64 = v78(v49, v79);
        MLUntypedColumn.init(_:convertArraysToShapedArrays:)(v105, 1, v50);
        v48 = v109;
      }

      v53 = type metadata accessor for MLBoostedTreeRegressor;
      v54 = v48;
      return outlined destroy of MLActivityClassifier.ModelParameters(v54, v53);
    case 1u:
      v55 = v92;
      outlined init with take of MLClassifierMetrics(&v86, v92, type metadata accessor for MLDecisionTreeRegressor);
      v106 = v46;
      v107 = v47 & 1;
      outlined copy of Result<_DataTable, Error>(v46, v47);
      v62 = v98;
      DataFrame.init(_:)(&v106);
      DataFrame.validateContainsColumns(_:context:)(*(v55 + *(v93 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (v64)
      {
        (*(v113 + 8))(v62, v112);
      }

      else
      {
        TreeRegressorModel.applied(to:eventHandler:)(v62, 0, 0);
        v80 = v101;
        DataFrame.subscript.getter(*v55, v55[1]);
        v81 = *(v113 + 8);
        v82 = v80;
        v83 = v55;
        v84 = v112;
        v81(v82, v112);
        v85 = v84;
        v55 = v83;
        *v63.i64 = v81(v98, v85);
        MLUntypedColumn.init(_:convertArraysToShapedArrays:)(v104, 1, v63);
      }

      v53 = type metadata accessor for MLDecisionTreeRegressor;
      goto LABEL_17;
    case 2u:
      v55 = v90;
      outlined init with take of MLClassifierMetrics(&v86, v90, type metadata accessor for MLRandomForestRegressor);
      v106 = v46;
      v107 = v47 & 1;
      outlined copy of Result<_DataTable, Error>(v46, v47);
      v56 = v97;
      DataFrame.init(_:)(&v106);
      DataFrame.validateContainsColumns(_:context:)(*(v55 + *(v91 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (v58)
      {
        (*(v113 + 8))(v56, v112);
      }

      else
      {
        TreeRegressorModel.applied(to:eventHandler:)(v56, 0, 0);
        v66 = v100;
        DataFrame.subscript.getter(*v55, v55[1]);
        v67 = *(v113 + 8);
        v68 = v66;
        v69 = v55;
        v70 = v112;
        v67(v68, v112);
        v71 = v70;
        v55 = v69;
        *v57.i64 = v67(v97, v71);
        MLUntypedColumn.init(_:convertArraysToShapedArrays:)(v103, 1, v57);
      }

      v53 = type metadata accessor for MLRandomForestRegressor;
      goto LABEL_17;
    case 3u:
      v55 = v89;
      outlined init with take of MLClassifierMetrics(&v86, v89, type metadata accessor for MLLinearRegressor);
      v106 = v46;
      v107 = v47 & 1;
      outlined copy of Result<_DataTable, Error>(v46, v47);
      DataFrame.init(_:)(&v106);
      v59 = v88;
      DataFrame.validateContainsColumns(_:context:)(*(v55 + *(v88 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (v61)
      {
        (*(v113 + 8))(v111, v112);
        v53 = type metadata accessor for MLLinearRegressor;
LABEL_17:
        v54 = v55;
      }

      else
      {
        MLLinearRegressor.Model.applied(to:eventHandler:)(v111, 0, 0);
        v72 = v99;
        DataFrame.subscript.getter(*(v55 + *(v59 + 24)), *(v55 + *(v59 + 24) + 8));
        v73 = *(v113 + 8);
        v74 = v72;
        v75 = v55;
        v76 = v112;
        v73(v74, v112);
        *v60.i64 = v73(v111, v76);
        MLUntypedColumn.init(_:convertArraysToShapedArrays:)(v102, 1, v60);
        v53 = type metadata accessor for MLLinearRegressor;
        v54 = v75;
      }

      return outlined destroy of MLActivityClassifier.ModelParameters(v54, v53);
  }
}

uint64_t MLRegressor.evaluation(on:)(uint64_t a1)
{
  v56 = a1;
  v58 = v1;
  v3 = *(*(type metadata accessor for MLLinearRegressor(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v53 = v48;
  v57 = type metadata accessor for MLRandomForestRegressor(0);
  v6 = *(*(v57 - 1) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v54 = v48;
  v55 = type metadata accessor for MLDecisionTreeRegressor(0);
  v9 = *(*(v55 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v52 = v48;
  v12 = type metadata accessor for MLBoostedTreeRegressor(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = v48;
  v17 = type metadata accessor for MLRegressor(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  outlined init with copy of MLRegressor(v2, v48);
  switch(swift_getEnumCaseMultiPayload(v48, v17))
  {
    case 0u:
      outlined init with take of MLClassifierMetrics(v48, v48, type metadata accessor for MLBoostedTreeRegressor);
      v21 = v56;
      DataFrame.validateContainsColumns(_:context:)(*&v48[*(v12 + 28)], __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (v22)
      {
        v23 = v58;
      }

      else
      {
        v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
        inited = swift_initStackObject(v42, v51);
        inited[2] = 1;
        inited[3] = 2;
        v44 = *(v12 + 24);
        v45 = *&v48[v44];
        v57 = v48;
        v46 = *&v48[v44 + 8];
        inited[4] = v45;
        inited[5] = v46;

        DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xE500000000000000, 0x6C6562614CLL));
        swift_setDeallocating(inited);
        specialized _ContiguousArrayStorage.__deallocating_deinit();
        if (!v22)
        {
          v16 = v57;
          TreeRegressorModel.computeMetrics(on:)(v21);
LABEL_19:
          v32 = type metadata accessor for MLBoostedTreeRegressor;
          goto LABEL_20;
        }

        v23 = v58;
        v16 = v57;
      }

      *v23 = v22;
      v23[1] = 0;
      *(v23 + 16) = 1;
      goto LABEL_19;
    case 1u:
      v16 = v52;
      outlined init with take of MLClassifierMetrics(v48, v52, type metadata accessor for MLDecisionTreeRegressor);
      v35 = v56;
      DataFrame.validateContainsColumns(_:context:)(*&v16[*(v55 + 28)], __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (v36 || (v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>), v38 = swift_initStackObject(v37, v50), v38[2] = 1, v38[3] = 2, v39 = *(v55 + 24), v40 = *&v16[v39 + 8], v38[4] = *&v16[v39], v38[5] = v40, , DataFrame.validateContainsColumns(_:context:)(v38, __PAIR128__(0xE500000000000000, 0x6C6562614CLL)), swift_setDeallocating(v38), specialized _ContiguousArrayStorage.__deallocating_deinit(), v36))
      {
        v41 = v58;
        *v58 = v36;
        v41[1] = 0;
        *(v41 + 16) = 1;
      }

      else
      {
        TreeRegressorModel.computeMetrics(on:)(v35);
      }

      v32 = type metadata accessor for MLDecisionTreeRegressor;
LABEL_20:
      v33 = v16;
      return outlined destroy of MLActivityClassifier.ModelParameters(v33, v32);
    case 2u:
      v24 = v54;
      outlined init with take of MLClassifierMetrics(v48, v54, type metadata accessor for MLRandomForestRegressor);
      v25 = v56;
      DataFrame.validateContainsColumns(_:context:)(*(v24 + *(v57 + 7)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (v26 || (v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>), v28 = swift_initStackObject(v27, v49), v28[2] = 1, v28[3] = 2, v29 = *(v57 + 6), v30 = *(v24 + v29 + 8), v28[4] = *(v24 + v29), v28[5] = v30, , DataFrame.validateContainsColumns(_:context:)(v28, __PAIR128__(0xE500000000000000, 0x6C6562614CLL)), swift_setDeallocating(v28), specialized _ContiguousArrayStorage.__deallocating_deinit(), v26))
      {
        v31 = v58;
        *v58 = v26;
        v31[1] = 0;
        *(v31 + 16) = 1;
      }

      else
      {
        TreeRegressorModel.computeMetrics(on:)(v25);
      }

      v32 = type metadata accessor for MLRandomForestRegressor;
      v33 = v24;
      return outlined destroy of MLActivityClassifier.ModelParameters(v33, v32);
    case 3u:
      v34 = v53;
      outlined init with take of MLClassifierMetrics(v48, v53, type metadata accessor for MLLinearRegressor);
      MLLinearRegressor.evaluation(on:)(v56);
      v33 = v34;
      v32 = type metadata accessor for MLLinearRegressor;
      return outlined destroy of MLActivityClassifier.ModelParameters(v33, v32);
  }
}

{
  v79 = v2;
  v80 = v1;
  v3 = *(*(type metadata accessor for MLLinearRegressor(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v65 = v61;
  v73 = type metadata accessor for MLRandomForestRegressor(0);
  v6 = *(*(v73 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v66 = v61;
  v74 = type metadata accessor for MLDecisionTreeRegressor(0);
  v9 = *(*(v74 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v67 = v61;
  v78 = type metadata accessor for DataFrame(0);
  v77 = *(v78 - 8);
  v12 = *(v77 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v69 = v61;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v68 = v61;
  v17 = alloca(v12);
  v18 = alloca(v12);
  v70 = v61;
  v19 = alloca(v12);
  v20 = alloca(v12);
  v71 = v61;
  v72 = type metadata accessor for MLBoostedTreeRegressor(0);
  v21 = *(*(v72 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v24 = type metadata accessor for MLRegressor(0);
  v25 = *(*(v24 - 8) + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v28 = *a1;
  v29 = *(a1 + 8);
  outlined init with copy of MLRegressor(v79, v61);
  switch(swift_getEnumCaseMultiPayload(v61, v24))
  {
    case 0u:
      outlined init with take of MLClassifierMetrics(v61, v61, type metadata accessor for MLBoostedTreeRegressor);
      v75 = v28;
      v76 = v29 & 1;
      outlined copy of Result<_DataTable, Error>(v28, v29);
      v30 = v71;
      DataFrame.init(_:)(&v75);
      v31 = v72;
      DataFrame.validateContainsColumns(_:context:)(*&v61[*(v72 + 28)], __PAIR128__(0xE700000000000000, 0x65727574616546));
      v33 = v61;
      if (v32)
      {
        v34 = v80;
      }

      else
      {
        v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
        inited = swift_initStackObject(v55, v64);
        inited[2] = 1;
        inited[3] = 2;
        v57 = *(v31 + 24);
        v58 = *&v61[v57];
        v79 = v61;
        v59 = *&v61[v57 + 8];
        inited[4] = v58;
        inited[5] = v59;

        DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xE500000000000000, 0x6C6562614CLL));
        if (!v32)
        {
          swift_setDeallocating(inited);
          specialized _ContiguousArrayStorage.__deallocating_deinit();
          v33 = v79;
          TreeRegressorModel.computeMetrics(on:)(v30);
LABEL_21:
          (*(v77 + 8))(v30, v78);
          v43 = type metadata accessor for MLBoostedTreeRegressor;
          goto LABEL_22;
        }

        swift_setDeallocating(inited);
        specialized _ContiguousArrayStorage.__deallocating_deinit();
        v34 = v80;
        v33 = v79;
      }

      *v34 = v32;
      v34[1] = 0;
      *(v34 + 16) = 1;
      goto LABEL_21;
    case 1u:
      v47 = v67;
      outlined init with take of MLClassifierMetrics(v61, v67, type metadata accessor for MLDecisionTreeRegressor);
      v75 = v28;
      v76 = v29 & 1;
      outlined copy of Result<_DataTable, Error>(v28, v29);
      v48 = v70;
      DataFrame.init(_:)(&v75);
      DataFrame.validateContainsColumns(_:context:)(*(v47 + *(v74 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      v33 = v47;
      if (v49)
      {
        goto LABEL_13;
      }

      v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
      v51 = swift_initStackObject(v50, v63);
      v51[2] = 1;
      v51[3] = 2;
      v52 = *(v74 + 24);
      v53 = *(v47 + v52 + 8);
      v51[4] = *(v47 + v52);
      v51[5] = v53;

      DataFrame.validateContainsColumns(_:context:)(v51, __PAIR128__(0xE500000000000000, 0x6C6562614CLL));
      if (v49)
      {
        swift_setDeallocating(v51);
        specialized _ContiguousArrayStorage.__deallocating_deinit();
LABEL_13:
        v54 = v80;
        *v80 = v49;
        v54[1] = 0;
        *(v54 + 16) = 1;
      }

      else
      {
        swift_setDeallocating(v51);
        specialized _ContiguousArrayStorage.__deallocating_deinit();
        TreeRegressorModel.computeMetrics(on:)(v48);
      }

      (*(v77 + 8))(v48, v78);
      v43 = type metadata accessor for MLDecisionTreeRegressor;
      goto LABEL_22;
    case 2u:
      v35 = v66;
      outlined init with take of MLClassifierMetrics(v61, v66, type metadata accessor for MLRandomForestRegressor);
      v75 = v28;
      v76 = v29 & 1;
      outlined copy of Result<_DataTable, Error>(v28, v29);
      v36 = v68;
      DataFrame.init(_:)(&v75);
      DataFrame.validateContainsColumns(_:context:)(*(v35 + *(v73 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      v33 = v35;
      if (v37)
      {
        goto LABEL_7;
      }

      v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
      v39 = swift_initStackObject(v38, v62);
      v39[2] = 1;
      v39[3] = 2;
      v40 = *(v73 + 24);
      v41 = *(v35 + v40 + 8);
      v39[4] = *(v35 + v40);
      v39[5] = v41;

      DataFrame.validateContainsColumns(_:context:)(v39, __PAIR128__(0xE500000000000000, 0x6C6562614CLL));
      if (v37)
      {
        swift_setDeallocating(v39);
        specialized _ContiguousArrayStorage.__deallocating_deinit();
LABEL_7:
        v42 = v80;
        *v80 = v37;
        v42[1] = 0;
        *(v42 + 16) = 1;
      }

      else
      {
        swift_setDeallocating(v39);
        specialized _ContiguousArrayStorage.__deallocating_deinit();
        TreeRegressorModel.computeMetrics(on:)(v36);
      }

      (*(v77 + 8))(v36, v78);
      v43 = type metadata accessor for MLRandomForestRegressor;
LABEL_22:
      v46 = v33;
      return outlined destroy of MLActivityClassifier.ModelParameters(v46, v43);
    case 3u:
      v44 = v65;
      outlined init with take of MLClassifierMetrics(v61, v65, type metadata accessor for MLLinearRegressor);
      v75 = v28;
      v76 = v29 & 1;
      outlined copy of Result<_DataTable, Error>(v28, v29);
      v45 = v69;
      DataFrame.init(_:)(&v75);
      MLLinearRegressor.evaluation(on:)(v45);
      (*(v77 + 8))(v45, v78);
      v46 = v44;
      v43 = type metadata accessor for MLLinearRegressor;
      return outlined destroy of MLActivityClassifier.ModelParameters(v46, v43);
  }
}

uint64_t MLRegressor.write(to:metadata:)(uint64_t a1, const void *a2)
{
  v30 = v2;
  v32 = a2;
  v31 = a1;
  v4 = *(*(type metadata accessor for MLLinearRegressor(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v27 = &v25;
  v7 = *(*(type metadata accessor for MLRandomForestRegressor(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v28 = &v25;
  v10 = *(*(type metadata accessor for MLDecisionTreeRegressor(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v29 = &v25;
  v13 = *(*(type metadata accessor for MLBoostedTreeRegressor(0) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = type metadata accessor for MLRegressor(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  outlined init with copy of MLRegressor(v3, &v25);
  switch(swift_getEnumCaseMultiPayload(&v25, v16))
  {
    case 0u:
      outlined init with take of MLClassifierMetrics(&v25, &v25, type metadata accessor for MLBoostedTreeRegressor);
      qmemcpy(v26, v32, sizeof(v26));
      MLBoostedTreeRegressor.write(to:metadata:)(v31, v26);
      v20 = &v25;
      v21 = type metadata accessor for MLBoostedTreeRegressor;
      return outlined destroy of MLActivityClassifier.ModelParameters(v20, v21);
    case 1u:
      v22 = type metadata accessor for MLDecisionTreeRegressor;
      v23 = v29;
      outlined init with take of MLClassifierMetrics(&v25, v29, type metadata accessor for MLDecisionTreeRegressor);
      qmemcpy(v26, v32, sizeof(v26));
      MLDecisionTreeRegressor.write(to:metadata:)(v31, v26);
      goto LABEL_6;
    case 2u:
      v22 = type metadata accessor for MLRandomForestRegressor;
      v23 = v28;
      outlined init with take of MLClassifierMetrics(&v25, v28, type metadata accessor for MLRandomForestRegressor);
      qmemcpy(v26, v32, sizeof(v26));
      MLRandomForestRegressor.write(to:metadata:)(v31, v26);
      goto LABEL_6;
    case 3u:
      v22 = type metadata accessor for MLLinearRegressor;
      v23 = v27;
      outlined init with take of MLClassifierMetrics(&v25, v27, type metadata accessor for MLLinearRegressor);
      qmemcpy(v26, v32, sizeof(v26));
      MLLinearRegressor.write(to:metadata:)(v31, v26);
LABEL_6:
      v20 = v23;
      v21 = v22;
      return outlined destroy of MLActivityClassifier.ModelParameters(v20, v21);
  }
}

uint64_t MLRegressor.write(toFile:metadata:)(uint64_t a1, uint64_t a2, const void *a3)
{
  v60 = v3;
  v53 = v4;
  v54 = a3;
  v61 = a2;
  v62 = a1;
  v5 = *(*(type metadata accessor for MLLinearRegressor(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v66 = v51;
  v8 = *(*(type metadata accessor for MLRandomForestRegressor(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v67 = v51;
  v11 = *(*(type metadata accessor for MLDecisionTreeRegressor(0) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v68 = v51;
  v65 = type metadata accessor for URL.DirectoryHint(0);
  v64 = *(v65 - 8);
  v14 = *(v64 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v63 = v51;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v70 = type metadata accessor for URL(0);
  v69 = *(v70 - 8);
  v20 = *(v69 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v56 = v51;
  v23 = alloca(v20);
  v24 = alloca(v20);
  v57 = v51;
  v25 = alloca(v20);
  v26 = alloca(v20);
  v58 = v51;
  v27 = alloca(v20);
  v28 = alloca(v20);
  v59 = v51;
  v29 = *(*(type metadata accessor for MLBoostedTreeRegressor(0) - 8) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v32 = type metadata accessor for MLRegressor(0);
  v33 = *(*(v32 - 8) + 64);
  v34 = alloca(v33);
  v35 = alloca(v33);
  qmemcpy(v52, v54, sizeof(v52));
  outlined init with copy of MLRegressor(v53, v51);
  switch(swift_getEnumCaseMultiPayload(v51, v32))
  {
    case 0u:
      outlined init with take of MLClassifierMetrics(v51, v51, type metadata accessor for MLBoostedTreeRegressor);
      v55 = v51;
      __swift_storeEnumTagSinglePayload(v51, 1, 1, v70);
      v36 = v63;
      (*(v64 + 104))(v63, enum case for URL.DirectoryHint.inferFromPath(_:), v65);
      v37 = v61;

      v38 = v59;
      URL.init(filePath:directoryHint:relativeTo:)(v62, v37, v36, v55);
      qmemcpy(v51, v52, sizeof(v51));
      MLBoostedTreeRegressor.write(to:metadata:)(v38, v51);
      (*(v69 + 8))(v59, v70);
      v39 = type metadata accessor for MLBoostedTreeRegressor;
      v40 = v51;
      break;
    case 1u:
      outlined init with take of MLClassifierMetrics(v51, v68, type metadata accessor for MLDecisionTreeRegressor);
      __swift_storeEnumTagSinglePayload(v51, 1, 1, v70);
      v47 = v63;
      (*(v64 + 104))(v63, enum case for URL.DirectoryHint.inferFromPath(_:), v65);
      v48 = v61;

      v49 = v58;
      URL.init(filePath:directoryHint:relativeTo:)(v62, v48, v47, v51);
      qmemcpy(v51, v52, sizeof(v51));
      MLDecisionTreeRegressor.write(to:metadata:)(v49, v51);
      (*(v69 + 8))(v58, v70);
      v39 = type metadata accessor for MLDecisionTreeRegressor;
      v40 = v68;
      break;
    case 2u:
      outlined init with take of MLClassifierMetrics(v51, v67, type metadata accessor for MLRandomForestRegressor);
      __swift_storeEnumTagSinglePayload(v51, 1, 1, v70);
      v41 = v63;
      (*(v64 + 104))(v63, enum case for URL.DirectoryHint.inferFromPath(_:), v65);
      v42 = v61;

      v43 = v57;
      URL.init(filePath:directoryHint:relativeTo:)(v62, v42, v41, v51);
      qmemcpy(v51, v52, sizeof(v51));
      MLRandomForestRegressor.write(to:metadata:)(v43, v51);
      (*(v69 + 8))(v57, v70);
      v39 = type metadata accessor for MLRandomForestRegressor;
      v40 = v67;
      break;
    case 3u:
      outlined init with take of MLClassifierMetrics(v51, v66, type metadata accessor for MLLinearRegressor);
      __swift_storeEnumTagSinglePayload(v51, 1, 1, v70);
      v44 = v63;
      (*(v64 + 104))(v63, enum case for URL.DirectoryHint.inferFromPath(_:), v65);
      v45 = v61;

      v46 = v56;
      URL.init(filePath:directoryHint:relativeTo:)(v62, v45, v44, v51);
      qmemcpy(v51, v52, sizeof(v51));
      MLLinearRegressor.write(to:metadata:)(v46, v51);
      (*(v69 + 8))(v56, v70);
      v39 = type metadata accessor for MLLinearRegressor;
      v40 = v66;
      break;
  }

  return outlined destroy of MLActivityClassifier.ModelParameters(v40, v39);
}

id MLRegressor.model.getter()
{
  v27 = v0;
  v28 = type metadata accessor for MLLinearRegressor(0);
  v1 = *(*(v28 - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v29 = v26;
  v30 = type metadata accessor for MLRandomForestRegressor(0);
  v4 = *(*(v30 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v31 = v26;
  v7 = type metadata accessor for MLDecisionTreeRegressor(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v32 = v26;
  v11 = type metadata accessor for MLBoostedTreeRegressor(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v15 = type metadata accessor for MLRegressor(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  outlined init with copy of MLRegressor(v27, v26);
  switch(swift_getEnumCaseMultiPayload(v26, v15))
  {
    case 0u:
      outlined init with take of MLClassifierMetrics(v26, v26, type metadata accessor for MLBoostedTreeRegressor);
      v19 = *&v26[*(v11 + 20)];
      outlined destroy of MLActivityClassifier.ModelParameters(v26, type metadata accessor for MLBoostedTreeRegressor);
      return v19;
    case 1u:
      v21 = type metadata accessor for MLDecisionTreeRegressor;
      v22 = v32;
      outlined init with take of MLClassifierMetrics(v26, v32, type metadata accessor for MLDecisionTreeRegressor);
      v24 = *(v7 + 20);
      goto LABEL_7;
    case 2u:
      v21 = type metadata accessor for MLRandomForestRegressor;
      v22 = v31;
      outlined init with take of MLClassifierMetrics(v26, v31, type metadata accessor for MLRandomForestRegressor);
      v23 = v30;
      goto LABEL_5;
    case 3u:
      v21 = type metadata accessor for MLLinearRegressor;
      v22 = v29;
      outlined init with take of MLClassifierMetrics(v26, v29, type metadata accessor for MLLinearRegressor);
      v23 = v28;
LABEL_5:
      v24 = *(v23 + 20);
LABEL_7:
      v25 = *(v22 + v24);
      outlined destroy of MLActivityClassifier.ModelParameters(v22, v21);
      return v25;
  }
}

uint64_t *MLRegressor.trainingMetrics.getter()
{
  v29 = v1;
  v28 = v0;
  v31 = type metadata accessor for MLLinearRegressor(0);
  v2 = *(*(v31 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v30 = &v28;
  v33 = type metadata accessor for MLRandomForestRegressor(0);
  v5 = *(*(v33 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v32 = &v28;
  v8 = type metadata accessor for MLDecisionTreeRegressor(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v34 = &v28;
  v12 = type metadata accessor for MLBoostedTreeRegressor(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = &v28;
  v17 = type metadata accessor for MLRegressor(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  outlined init with copy of MLRegressor(v29, &v28);
  switch(swift_getEnumCaseMultiPayload(&v28, v17))
  {
    case 0u:
      v21 = type metadata accessor for MLBoostedTreeRegressor;
      outlined init with take of MLClassifierMetrics(&v28, &v28, type metadata accessor for MLBoostedTreeRegressor);
      v22 = *(v12 + 36);
      break;
    case 1u:
      v21 = type metadata accessor for MLDecisionTreeRegressor;
      v16 = v34;
      outlined init with take of MLClassifierMetrics(&v28, v34, type metadata accessor for MLDecisionTreeRegressor);
      v22 = *(v8 + 36);
      break;
    case 2u:
      v21 = type metadata accessor for MLRandomForestRegressor;
      v16 = v32;
      outlined init with take of MLClassifierMetrics(&v28, v32, type metadata accessor for MLRandomForestRegressor);
      v23 = v33;
      goto LABEL_5;
    case 3u:
      v21 = type metadata accessor for MLLinearRegressor;
      v16 = v30;
      outlined init with take of MLClassifierMetrics(&v28, v30, type metadata accessor for MLLinearRegressor);
      v23 = v31;
LABEL_5:
      v22 = *(v23 + 36);
      break;
  }

  v24 = *(v16 + v22);
  v25 = *(v16 + v22 + 8);
  v26 = *(v16 + v22 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v24, v25, v26);
  outlined destroy of MLActivityClassifier.ModelParameters(v16, v21);
  result = v28;
  *v28 = v24;
  result[1] = v25;
  *(result + 16) = v26 & 1;
  return result;
}

uint64_t *MLRegressor.validationMetrics.getter()
{
  v29 = v1;
  v28 = v0;
  v31 = type metadata accessor for MLLinearRegressor(0);
  v2 = *(*(v31 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v30 = &v28;
  v33 = type metadata accessor for MLRandomForestRegressor(0);
  v5 = *(*(v33 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v32 = &v28;
  v8 = type metadata accessor for MLDecisionTreeRegressor(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v34 = &v28;
  v12 = type metadata accessor for MLBoostedTreeRegressor(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = &v28;
  v17 = type metadata accessor for MLRegressor(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  outlined init with copy of MLRegressor(v29, &v28);
  switch(swift_getEnumCaseMultiPayload(&v28, v17))
  {
    case 0u:
      v21 = type metadata accessor for MLBoostedTreeRegressor;
      outlined init with take of MLClassifierMetrics(&v28, &v28, type metadata accessor for MLBoostedTreeRegressor);
      v22 = *(v12 + 40);
      break;
    case 1u:
      v21 = type metadata accessor for MLDecisionTreeRegressor;
      v16 = v34;
      outlined init with take of MLClassifierMetrics(&v28, v34, type metadata accessor for MLDecisionTreeRegressor);
      v22 = *(v8 + 40);
      break;
    case 2u:
      v21 = type metadata accessor for MLRandomForestRegressor;
      v16 = v32;
      outlined init with take of MLClassifierMetrics(&v28, v32, type metadata accessor for MLRandomForestRegressor);
      v23 = v33;
      goto LABEL_5;
    case 3u:
      v21 = type metadata accessor for MLLinearRegressor;
      v16 = v30;
      outlined init with take of MLClassifierMetrics(&v28, v30, type metadata accessor for MLLinearRegressor);
      v23 = v31;
LABEL_5:
      v22 = *(v23 + 40);
      break;
  }

  v24 = *(v16 + v22);
  v25 = *(v16 + v22 + 8);
  v26 = *(v16 + v22 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v24, v25, v26);
  outlined destroy of MLActivityClassifier.ModelParameters(v16, v21);
  result = v28;
  *v28 = v24;
  result[1] = v25;
  *(result + 16) = v26 & 1;
  return result;
}

uint64_t MLRegressor.targetColumn.getter()
{
  v27 = v0;
  v28 = type metadata accessor for MLLinearRegressor(0);
  v1 = *(*(v28 - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v29 = v26;
  v30 = type metadata accessor for MLRandomForestRegressor(0);
  v4 = *(*(v30 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v31 = v26;
  v7 = type metadata accessor for MLDecisionTreeRegressor(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v32 = v26;
  v11 = type metadata accessor for MLBoostedTreeRegressor(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v15 = type metadata accessor for MLRegressor(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  outlined init with copy of MLRegressor(v27, v26);
  switch(swift_getEnumCaseMultiPayload(v26, v15))
  {
    case 0u:
      v19 = type metadata accessor for MLBoostedTreeRegressor;
      outlined init with take of MLClassifierMetrics(v26, v26, type metadata accessor for MLBoostedTreeRegressor);
      v20 = *&v26[*(v11 + 24)];

      v21 = v26;
      goto LABEL_8;
    case 1u:
      v19 = type metadata accessor for MLDecisionTreeRegressor;
      v22 = v32;
      outlined init with take of MLClassifierMetrics(v26, v32, type metadata accessor for MLDecisionTreeRegressor);
      v24 = *(v7 + 24);
      goto LABEL_7;
    case 2u:
      v19 = type metadata accessor for MLRandomForestRegressor;
      v22 = v31;
      outlined init with take of MLClassifierMetrics(v26, v31, type metadata accessor for MLRandomForestRegressor);
      v23 = v30;
      goto LABEL_5;
    case 3u:
      v19 = type metadata accessor for MLLinearRegressor;
      v22 = v29;
      outlined init with take of MLClassifierMetrics(v26, v29, type metadata accessor for MLLinearRegressor);
      v23 = v28;
LABEL_5:
      v24 = *(v23 + 24);
LABEL_7:
      v20 = *(v22 + v24);

      v21 = v22;
LABEL_8:
      outlined destroy of MLActivityClassifier.ModelParameters(v21, v19);
      return v20;
  }
}

uint64_t MLRegressor.featureColumns.getter()
{
  v28 = v0;
  v29 = type metadata accessor for MLLinearRegressor(0);
  v1 = *(*(v29 - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v30 = v27;
  v31 = type metadata accessor for MLRandomForestRegressor(0);
  v4 = *(*(v31 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v32 = v27;
  v7 = type metadata accessor for MLDecisionTreeRegressor(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v33 = v27;
  v11 = type metadata accessor for MLBoostedTreeRegressor(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v15 = type metadata accessor for MLRegressor(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  outlined init with copy of MLRegressor(v28, v27);
  switch(swift_getEnumCaseMultiPayload(v27, v15))
  {
    case 0u:
      v19 = type metadata accessor for MLBoostedTreeRegressor;
      outlined init with take of MLClassifierMetrics(v27, v27, type metadata accessor for MLBoostedTreeRegressor);
      v20 = *&v27[*(v11 + 28)];

      v21 = v27;
      goto LABEL_6;
    case 1u:
      v25 = v33;
      outlined init with take of MLClassifierMetrics(v27, v33, type metadata accessor for MLDecisionTreeRegressor);
      v20 = *(v25 + *(v7 + 28));

      v21 = v25;
      v24 = type metadata accessor for MLDecisionTreeRegressor;
      goto LABEL_8;
    case 2u:
      v19 = type metadata accessor for MLRandomForestRegressor;
      v22 = v32;
      outlined init with take of MLClassifierMetrics(v27, v32, type metadata accessor for MLRandomForestRegressor);
      v23 = v31;
      goto LABEL_5;
    case 3u:
      v19 = type metadata accessor for MLLinearRegressor;
      v22 = v30;
      outlined init with take of MLClassifierMetrics(v27, v30, type metadata accessor for MLLinearRegressor);
      v23 = v29;
LABEL_5:
      v20 = *(v22 + *(v23 + 28));

      v21 = v22;
LABEL_6:
      v24 = v19;
LABEL_8:
      outlined destroy of MLActivityClassifier.ModelParameters(v21, v24);
      return v20;
  }
}

unint64_t MLRegressor.description.getter()
{
  return MLRegressor.description.getter();
}

{
  v1 = *(*(type metadata accessor for MLLinearRegressor(0) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v24 = &v23;
  v4 = *(*(type metadata accessor for MLRandomForestRegressor(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v25 = &v23;
  v7 = *(*(type metadata accessor for MLDecisionTreeRegressor(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = &v23;
  v11 = *(*(type metadata accessor for MLBoostedTreeRegressor(0) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v14 = type metadata accessor for MLRegressor(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  outlined init with copy of MLRegressor(v0, &v23);
  switch(swift_getEnumCaseMultiPayload(&v23, v14))
  {
    case 0u:
      v18 = type metadata accessor for MLBoostedTreeRegressor;
      outlined init with take of MLClassifierMetrics(&v23, &v23, type metadata accessor for MLBoostedTreeRegressor);
      v19 = MLBoostedTreeRegressor.debugDescription.getter();
      v20 = &v23;
      goto LABEL_7;
    case 1u:
      v18 = type metadata accessor for MLDecisionTreeRegressor;
      outlined init with take of MLClassifierMetrics(&v23, &v23, type metadata accessor for MLDecisionTreeRegressor);
      v21 = MLDecisionTreeRegressor.description.getter();
      goto LABEL_6;
    case 2u:
      v18 = type metadata accessor for MLRandomForestRegressor;
      v10 = v25;
      outlined init with take of MLClassifierMetrics(&v23, v25, type metadata accessor for MLRandomForestRegressor);
      v21 = MLRandomForestRegressor.description.getter();
      goto LABEL_6;
    case 3u:
      v18 = type metadata accessor for MLLinearRegressor;
      v10 = v24;
      outlined init with take of MLClassifierMetrics(&v23, v24, type metadata accessor for MLLinearRegressor);
      v21 = MLLinearRegressor.description.getter();
LABEL_6:
      v19 = v21;
      v20 = v10;
LABEL_7:
      outlined destroy of MLActivityClassifier.ModelParameters(v20, v18);
      return v19;
  }
}

uint64_t MLRegressor.playgroundDescription.getter()
{
  v39 = v0;
  v2 = *(*(type metadata accessor for MLLinearRegressor(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v37 = &v37;
  v5 = *(*(type metadata accessor for MLRandomForestRegressor(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v38 = &v37;
  v8 = *(*(type metadata accessor for MLDecisionTreeRegressor(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = *(*(type metadata accessor for MLBoostedTreeRegressor(0) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v14 = type metadata accessor for MLRegressor(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  outlined init with copy of MLRegressor(v1, &v37);
  switch(swift_getEnumCaseMultiPayload(&v37, v14))
  {
    case 0u:
      outlined init with take of MLClassifierMetrics(&v37, &v37, type metadata accessor for MLBoostedTreeRegressor);
      v18 = type metadata accessor for NSAttributedString();
      v19._countAndFlagsBits = MLBoostedTreeRegressor.debugDescription.getter();
      v19._object = v20;
      v21.super.isa = NSAttributedString.__allocating_init(string:)(v19).super.isa;
      v22 = v39;
      v39[3].super.isa = v18;
      v22->super.isa = v21.super.isa;
      v23 = &v37;
      v24 = type metadata accessor for MLBoostedTreeRegressor;
      return outlined destroy of MLActivityClassifier.ModelParameters(v23, v24);
    case 1u:
      v25 = type metadata accessor for MLDecisionTreeRegressor;
      outlined init with take of MLClassifierMetrics(&v37, &v37, type metadata accessor for MLDecisionTreeRegressor);
      v31 = type metadata accessor for NSAttributedString();
      v32._countAndFlagsBits = MLDecisionTreeRegressor.description.getter();
      v32._object = v33;
      v34.super.isa = NSAttributedString.__allocating_init(string:)(v32).super.isa;
      v35 = v39;
      v39[3].super.isa = v31;
      v35->super.isa = v34.super.isa;
      v23 = &v37;
      goto LABEL_7;
    case 2u:
      v25 = type metadata accessor for MLRandomForestRegressor;
      v26 = v38;
      outlined init with take of MLClassifierMetrics(&v37, v38, type metadata accessor for MLRandomForestRegressor);
      v27 = type metadata accessor for NSAttributedString();
      v28._countAndFlagsBits = MLRandomForestRegressor.description.getter();
      goto LABEL_5;
    case 3u:
      v25 = type metadata accessor for MLLinearRegressor;
      v26 = v37;
      outlined init with take of MLClassifierMetrics(&v37, v37, type metadata accessor for MLLinearRegressor);
      v27 = type metadata accessor for NSAttributedString();
      v28._countAndFlagsBits = MLLinearRegressor.description.getter();
LABEL_5:
      v29.super.isa = NSAttributedString.__allocating_init(string:)(v28).super.isa;
      v30 = v39;
      v39[3].super.isa = v27;
      v30->super.isa = v29.super.isa;
      v23 = v26;
LABEL_7:
      v24 = v25;
      return outlined destroy of MLActivityClassifier.ModelParameters(v23, v24);
  }
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<UInt64>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Int>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Double>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Float>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Interaction>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Int?>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<ItemStatistics<Double>>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<(Int, Double)>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<(Int, Int)>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<(Double, Double)>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, char a3, void *a4, uint64_t *a5, void (*a6)(void *, int64_t, void *))
{
  v8 = a2;
  if (a3)
  {
    v9 = a4[3];
    if ((v9 >> 1) >= a2)
    {
      v8 = a4[3] >> 1;
    }

    else
    {
      if (((v9 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if (v10 > a2)
      {
        v8 = v10;
      }
    }
  }

  v11 = a4[2];
  if (v8 <= v11)
  {
    v8 = a4[2];
  }

  if (v8)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v13 = swift_allocObject(v12, 8 * v8 + 32, 7);
    v14 = (_swift_stdlib_malloc_size(v13) - 32);
    v13[2] = v11;
    v13[3] = 2 * (v14 / 8);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    a6(a4 + 4, v11, v13 + 4);
    a4[2] = 0;
  }

  else
  {
    memcpy(v13 + 4, a4 + 4, 8 * v11);
  }

  a4;
  return v13;
}

{
  v8 = a2;
  if (a3)
  {
    v9 = a4[3];
    if ((v9 >> 1) >= a2)
    {
      v8 = a4[3] >> 1;
    }

    else
    {
      if (((v9 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if (v10 > a2)
      {
        v8 = v10;
      }
    }
  }

  v11 = a4[2];
  if (v8 <= v11)
  {
    v8 = a4[2];
  }

  if (v8)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v13 = swift_allocObject(v12, 16 * v8 + 32, 7);
    v14 = (_swift_stdlib_malloc_size(v13) - 32);
    v13[2] = v11;
    v13[3] = 2 * (v14 / 16);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    a6(a4 + 4, v11, v13 + 4);
    a4[2] = 0;
  }

  else
  {
    memcpy(v13 + 4, a4 + 4, 16 * v11);
  }

  a4;
  return v13;
}

{
  v8 = a2;
  if (a3)
  {
    v9 = a4[3];
    if ((v9 >> 1) >= a2)
    {
      v8 = a4[3] >> 1;
    }

    else
    {
      if (((v9 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if (v10 > a2)
      {
        v8 = v10;
      }
    }
  }

  v11 = a4[2];
  if (v8 <= v11)
  {
    v8 = a4[2];
  }

  if (v8)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v13 = swift_allocObject(v12, 4 * v8 + 32, 7);
    v14 = (_swift_stdlib_malloc_size(v13) - 32);
    v13[2] = v11;
    v13[3] = 2 * (v14 / 4);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    a6(a4 + 4, v11, v13 + 4);
    a4[2] = 0;
  }

  else
  {
    memcpy(v13 + 4, a4 + 4, 4 * v11);
  }

  a4;
  return v13;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, char a3, uint64_t a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<String>, &type metadata for String, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Column<[Float]>>, &demangling cache variable for type metadata for Column<[Float]>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<[Float]>, &demangling cache variable for type metadata for [Float], specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Column<[Double]>>, &demangling cache variable for type metadata for Column<[Double]>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<[Double]>, &demangling cache variable for type metadata for [Double], specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<MLDataValue>, &type metadata for MLDataValue, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<[Int]>, &demangling cache variable for type metadata for [Int], specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<[Tensor]>, &demangling cache variable for type metadata for [Tensor], specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Character>, &type metadata for Character, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Layer>, &demangling cache variable for type metadata for Layer, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<AnnotatedFeature<URL, String>>, &demangling cache variable for type metadata for AnnotatedFeature<URL, String>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<[String]>, &demangling cache variable for type metadata for [String], specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<MLShapedArray<Double>>, &demangling cache variable for type metadata for MLShapedArray<Double>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<AnnotatedFeature<String, [MLObjectDetector.NormalizedAnnotation]>>, &demangling cache variable for type metadata for AnnotatedFeature<String, [MLObjectDetector.NormalizedAnnotation]>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<MLObjectDetector.AnnotatedPredictionForLabel>, &type metadata for MLObjectDetector.AnnotatedPredictionForLabel, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<TabularClassificationTask>, &demangling cache variable for type metadata for TabularClassificationTask, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<AnnotatedFeature<MLShapedArray<Float>, String>>, &demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<(user: MLRecommender.Identifier, item: MLRecommender.Identifier, rating: Double)>, &demangling cache variable for type metadata for (user: MLRecommender.Identifier, item: MLRecommender.Identifier, rating: Double), specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<(MLRecommender.Identifier, MLRecommender.Identifier, score: Double)>, &demangling cache variable for type metadata for (MLRecommender.Identifier, MLRecommender.Identifier, score: Double), specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<RecommendationMetrics<MLRecommender.Identifier>>, &demangling cache variable for type metadata for RecommendationMetrics<MLRecommender.Identifier>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<MLRecommender.Identifier>, &type metadata for MLRecommender.Identifier, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<(MLRecommender.Identifier, score: Double)>, &demangling cache variable for type metadata for (MLRecommender.Identifier, score: Double), specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<ClassificationDistribution<Int>>, &demangling cache variable for type metadata for ClassificationDistribution<Int>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<ClassificationDistribution<String>>, &demangling cache variable for type metadata for ClassificationDistribution<String>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<AnnotatedPrediction<ClassificationDistribution<String>, String>>, &demangling cache variable for type metadata for AnnotatedPrediction<ClassificationDistribution<String>, String>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<AnnotatedFeature<CIImage, String>>, &demangling cache variable for type metadata for AnnotatedFeature<CIImage, String>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<MLShapedArray<Float>>, &demangling cache variable for type metadata for MLShapedArray<Float>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<(predicted: String, label: String)>, &demangling cache variable for type metadata for (predicted: String, label: String), specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<MLActionClassifier.Prediction>, &type metadata for MLActionClassifier.Prediction, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<MLHandActionClassifier.Prediction>, &type metadata for MLHandActionClassifier.Prediction, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<[String : [URL]]>, &demangling cache variable for type metadata for [String : [URL]], specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<ColumnDescriptor>, &type metadata for ColumnDescriptor, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Any>, &type metadata for Any + 8, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Any?>, &demangling cache variable for type metadata for Any?, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<[String : Double]>, &demangling cache variable for type metadata for [String : Double], specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Tensor>, &type metadata accessor for Tensor, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<WeightedDataSample>, type metadata accessor for WeightedDataSample, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<MLProgram.Operation>, &type metadata accessor for MLProgram.Operation, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>, &type metadata accessor for FeatureDescription, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<URL>, &type metadata accessor for URL, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<MLCheckpoint>, type metadata accessor for MLCheckpoint, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<NeuralNetwork.Layer>, &type metadata accessor for NeuralNetwork.Layer, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Model>, &type metadata accessor for Model, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureVectorizerConfiguration.Input>, &type metadata accessor for FeatureVectorizerConfiguration.Input, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Event>, &type metadata accessor for Event, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(uint64_t, int64_t, void *))
{
  v9 = a2;
  if (a3)
  {
    v10 = *(a4 + 24);
    if ((v10 >> 1) >= a2)
    {
      v9 = *(a4 + 24) >> 1;
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
        v9 = v11;
      }
    }
  }

  v12 = *(a4 + 16);
  if (v9 <= v12)
  {
    v9 = *(a4 + 16);
  }

  if (v9)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v14 = swift_allocObject(v13, 16 * v9 + 32, 7);
    v15 = (_swift_stdlib_malloc_size(v14) - 32);
    v14[2] = v12;
    v14[3] = 2 * (v15 / 16);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    a7(a4 + 32, v12, v14 + 4);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy((v14 + 4), a4 + 32, v12, a6);
  }

  a4;
  return v14;
}

{
  v9 = a2;
  if (a3)
  {
    v10 = *(a4 + 24);
    if ((v10 >> 1) >= a2)
    {
      v9 = *(a4 + 24) >> 1;
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
        v9 = v11;
      }
    }
  }

  v12 = *(a4 + 16);
  if (v9 <= v12)
  {
    v9 = *(a4 + 16);
  }

  if (v9)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v14 = swift_allocObject(v13, 24 * v9 + 32, 7);
    v15 = (_swift_stdlib_malloc_size(v14) - 32);
    v14[2] = v12;
    v14[3] = 2 * (v15 / 24);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    a7(a4 + 32, v12, v14 + 4);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy((v14 + 4), a4 + 32, v12, a6);
  }

  a4;
  return v14;
}

{
  v9 = a2;
  if (a3)
  {
    v10 = *(a4 + 24);
    if ((v10 >> 1) >= a2)
    {
      v9 = *(a4 + 24) >> 1;
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
        v9 = v11;
      }
    }
  }

  v12 = *(a4 + 16);
  if (v9 <= v12)
  {
    v9 = *(a4 + 16);
  }

  if (v9)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v14 = swift_allocObject(v13, 32 * v9 + 32, 7);
    v15 = (_swift_stdlib_malloc_size(v14) - 32);
    v14[2] = v12;
    v14[3] = 2 * (v15 / 32);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    a7(a4 + 32, v12, v14 + 4);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy((v14 + 4), a4 + 32, v12, a6);
  }

  a4;
  return v14;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, char a3, char *a4)
{
  v5 = a2;
  if (a3)
  {
    v6 = *(a4 + 3);
    if ((v6 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
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

  v8 = *(a4 + 2);
  if (v5 <= v8)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLDataValue.MultiArrayType>);
    v10 = swift_allocObject(v9, 8 * v5 + 32, 7);
    v11 = (_swift_stdlib_malloc_size(v10) - 32);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v11 / 8);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32, v8, v10 + 32);
    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy((v10 + 32), (a4 + 32), v8, &type metadata for MLDataValue.MultiArrayType);
  }

  a4;
  return v10;
}

{
  v5 = a2;
  if (a3)
  {
    v6 = *(a4 + 3);
    if ((v6 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
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

  v8 = *(a4 + 2);
  if (v5 <= v8)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(windowKeypoints: MLMultiArray, range: Range<Int>)>);
    v10 = swift_allocObject(v9, 24 * v5 + 32, 7);
    v11 = (_swift_stdlib_malloc_size(v10) - 32);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v11 / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32, v8, v10 + 32);
    *(a4 + 2) = 0;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (windowKeypoints: MLMultiArray, range: Range<Int>));
    swift_arrayInitWithCopy((v10 + 32), (a4 + 32), v8, v12);
  }

  a4;
  return v10;
}

{
  v5 = a2;
  if (a3)
  {
    v6 = *(a4 + 3);
    if ((v6 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
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

  v8 = *(a4 + 2);
  if (v5 <= v8)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<BlobMetadata>);
    v10 = swift_allocObject(v9, (v5 << 6) | 0x20, 7);
    v11 = (_swift_stdlib_malloc_size(v10) - 32);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v11 / 64);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32, v8, v10 + 32);
    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v10 + 32, a4 + 32, v8 << 6);
  }

  a4;
  return v10;
}

{
  v5 = a2;
  if (a3)
  {
    v6 = *(a4 + 3);
    if ((v6 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
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

  v8 = *(a4 + 2);
  if (v5 <= v8)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLObjectDetector.ObjectAnnotation>);
    v10 = swift_allocObject(v9, 56 * v5 + 32, 7);
    v11 = (_swift_stdlib_malloc_size(v10) - 32);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v11 / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32, v8, v10 + 32);
    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy((v10 + 32), (a4 + 32), v8, &type metadata for MLObjectDetector.ObjectAnnotation);
  }

  a4;
  return v10;
}

{
  v5 = a2;
  if (a3)
  {
    v6 = *(a4 + 3);
    if ((v6 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
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

  v8 = *(a4 + 2);
  if (v5 <= v8)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<ItemStatistics<PearsonSimilarity.ItemScore>>);
    v10 = swift_allocObject(v9, 32 * v5 + 32, 7);
    v11 = (_swift_stdlib_malloc_size(v10) - 32);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v11 / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32, v8, v10 + 32);
    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v10 + 32, a4 + 32, 32 * v8);
  }

  a4;
  return v10;
}

{
  v5 = a2;
  if (a3)
  {
    v6 = *(a4 + 3);
    if ((v6 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
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

  v8 = *(a4 + 2);
  if (v5 <= v8)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Recommendation<MLRecommender.Identifier, MLRecommender.Identifier>>);
    v10 = swift_allocObject(v9, (v5 << 6) | 0x20, 7);
    v11 = (_swift_stdlib_malloc_size(v10) - 32);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v11 / 64);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32, v8, v10 + 32);
    *(a4 + 2) = 0;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Recommendation<MLRecommender.Identifier, MLRecommender.Identifier>);
    swift_arrayInitWithCopy((v10 + 32), (a4 + 32), v8, v12);
  }

  a4;
  return v10;
}

{
  v5 = a2;
  if (a3)
  {
    v6 = *(a4 + 3);
    if ((v6 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
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

  v8 = *(a4 + 2);
  if (v5 <= v8)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(user: MLRecommender.Identifier, item: MLRecommender.Identifier)>);
    v10 = swift_allocObject(v9, 48 * v5 + 32, 7);
    v11 = (_swift_stdlib_malloc_size(v10) - 32);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v11 / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32, v8, v10 + 32);
    *(a4 + 2) = 0;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (user: MLRecommender.Identifier, item: MLRecommender.Identifier));
    swift_arrayInitWithCopy((v10 + 32), (a4 + 32), v8, v12);
  }

  a4;
  return v10;
}

{
  v5 = a2;
  if (a3)
  {
    v6 = *(a4 + 3);
    if ((v6 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
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

  v8 = *(a4 + 2);
  if (v5 <= v8)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<UInt8>);
    v10 = swift_allocObject(v9, v5 + 32, 7);
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32, v8, v10 + 32);
    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v10 + 32, a4 + 32, v8);
  }

  a4;
  return v10;
}

{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v11 = swift_allocObject(v10, 8 * v5 + 32, 7);
    v12 = (_swift_stdlib_malloc_size(v11) - 32);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v12 / 8);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (&v14[8 * v9] <= v13 || v11 != a4)
    {
      memmove(v13, v14, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v9);
  }

  a4;
  return v11;
}

{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Range<Int>>);
    v11 = swift_allocObject(v10, 16 * v5 + 32, 7);
    v12 = (_swift_stdlib_malloc_size(v11) - 32);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v12 / 16);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  v15 = 16 * v9;
  if (a1)
  {
    if (&v14[v15] <= v13 || v11 != a4)
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  a4;
  return v11;
}

{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<UInt8>);
    v11 = swift_allocObject(v10, v5 + 32, 7);
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (&v14[v9] <= v13 || v11 != a4)
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  a4;
  return v11;
}

uint64_t outlined init with copy of TabularRegressionTask(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with take of TabularRegressionTask(__int128 *a1, uint64_t a2)
{
  result = a2;
  *(a2 + 32) = *(a1 + 4);
  v3 = *a1;
  *(a2 + 16) = a1[1];
  *a2 = v3;
  return result;
}

uint64_t type metadata accessor for MLRegressor(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLRegressor;
  if (!type metadata singleton initialization cache for MLRegressor)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLRegressor);
  }

  return result;
}

uint64_t outlined init with copy of MLRegressor(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLRegressor(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t type metadata accessor for NSAttributedString()
{
  result = lazy cache variable for type metadata for NSAttributedString;
  if (!lazy cache variable for type metadata for NSAttributedString)
  {
    v1 = objc_opt_self(NSAttributedString);
    result = swift_getObjCClassMetadata(v1);
    lazy cache variable for type metadata for NSAttributedString = result;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLRegressor(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
    *a1 = *a2;
    a1[1] = a2[1];
    v90 = a1 + 2;
    v6 = a2 + 2;
    v7 = a2[2];

    switch(EnumCaseMultiPayload)
    {
      case 0:
        if (v7)
        {
          a1[2] = v7;
          a1[3] = a2[3];
          a1[4] = a2[4];
        }

        else
        {
          a1[4] = a2[4];
          *v90 = *v6;
        }

        v45 = *(type metadata accessor for TreeRegressorModel(0) + 24);
        v46 = type metadata accessor for BaseTreeRegressorModel(0);
        (*(*(v46 - 8) + 16))(a1 + v45, a2 + v45, v46);
        v47 = type metadata accessor for MLBoostedTreeRegressor(0);
        v48 = v47[5];
        v49 = *(a2 + v48);
        *(v3 + v48) = v49;
        v50 = v47[6];
        *(v3 + v50) = *(a2 + v50);
        *(v3 + v50 + 8) = *(a2 + v50 + 8);
        *(v3 + v47[7]) = *(a2 + v47[7]);
        v93 = v47;
        v51 = v47[8];
        v52 = v3 + v51;
        v53 = a2 + v51;
        v54 = *(a2 + v51 + 24);
        v49;

        if (v54)
        {
          *(v52 + 3) = v54;
          (**(v54 - 8))(v52, v53, v54);
        }

        else
        {
          v64 = *v53;
          *(v52 + 1) = *(v53 + 1);
          *v52 = v64;
        }

        *(v52 + 2) = *(v53 + 2);
        *(v52 + 3) = *(v53 + 3);
        *(v52 + 4) = *(v53 + 4);
        *(v52 + 10) = *(v53 + 10);
        v52[88] = v53[88];
        *(v52 + 6) = *(v53 + 6);
        v65 = v93[9];
        v66 = *(a2 + v65);
        v67 = *(a2 + v65 + 8);
        v89 = *(a2 + v65 + 16);
        outlined copy of Result<_RegressorMetrics, Error>(v66, v67, v89);
        *(v3 + v65) = v66;
        *(v3 + v65 + 8) = v67;
        *(v3 + v65 + 16) = v89;
        v68 = v93[10];
        v69 = *(a2 + v68);
        v70 = *(a2 + v68 + 8);
        v71 = *(a2 + v68 + 16);
        outlined copy of Result<_RegressorMetrics, Error>(v69, v70, v71);
        *(v3 + v68) = v69;
        *(v3 + v68 + 8) = v70;
        *(v3 + v68 + 16) = v71;
        v72 = v3;
        v73 = a3;
        v74 = 0;
        goto LABEL_33;
      case 1:
        if (v7)
        {
          a1[2] = v7;
          a1[3] = a2[3];
          a1[4] = a2[4];
        }

        else
        {
          a1[4] = a2[4];
          *v90 = *v6;
        }

        v55 = *(type metadata accessor for TreeRegressorModel(0) + 24);
        v56 = type metadata accessor for BaseTreeRegressorModel(0);
        (*(*(v56 - 8) + 16))(a1 + v55, a2 + v55, v56);
        v57 = type metadata accessor for MLDecisionTreeRegressor(0);
        v58 = v57[5];
        v59 = *(a2 + v58);
        *(v3 + v58) = v59;
        v60 = v57[6];
        *(v3 + v60) = *(a2 + v60);
        *(v3 + v60 + 8) = *(a2 + v60 + 8);
        *(v3 + v57[7]) = *(a2 + v57[7]);
        v61 = v57[8];
        v62 = v3 + v61;
        v94 = (a2 + v61);
        v63 = *(a2 + v61 + 24);
        v59;

        if (v63)
        {
          *(v62 + 3) = v63;
          (**(v63 - 8))(v62, v94, v63);
        }

        else
        {
          v75 = *v94;
          *(v62 + 1) = v94[1];
          *v62 = v75;
        }

        *(v62 + 2) = v94[2];
        *(v62 + 3) = v94[3];
        v86 = v57;
        v76 = v57[9];
        v77 = *(a2 + v76);
        v78 = *(a2 + v76 + 8);
        v95 = *(a2 + v76 + 16);
        outlined copy of Result<_RegressorMetrics, Error>(v77, v78, v95);
        *(v3 + v76) = v77;
        *(v3 + v76 + 8) = v78;
        *(v3 + v76 + 16) = v95;
        v79 = v86[10];
        v80 = *(a2 + v79);
        v81 = *(a2 + v79 + 8);
        v82 = *(a2 + v79 + 16);
        outlined copy of Result<_RegressorMetrics, Error>(v80, v81, v82);
        *(v3 + v79) = v80;
        *(v3 + v79 + 8) = v81;
        *(v3 + v79 + 16) = v82;
        v84 = 1;
        goto LABEL_32;
      case 2:
        if (v7)
        {
          a1[2] = v7;
          a1[3] = a2[3];
          a1[4] = a2[4];
        }

        else
        {
          a1[4] = a2[4];
          *v90 = *v6;
        }

        v9 = *(type metadata accessor for TreeRegressorModel(0) + 24);
        v10 = type metadata accessor for BaseTreeRegressorModel(0);
        (*(*(v10 - 8) + 16))(a1 + v9, a2 + v9, v10);
        v11 = type metadata accessor for MLRandomForestRegressor(0);
        v12 = v11[5];
        v13 = *(a2 + v12);
        *(v3 + v12) = v13;
        v14 = v11[6];
        *(v3 + v14) = *(a2 + v14);
        *(v3 + v14 + 8) = *(a2 + v14 + 8);
        *(v3 + v11[7]) = *(a2 + v11[7]);
        v91 = v11;
        v15 = v11[8];
        v16 = v3 + v15;
        v17 = (a2 + v15);
        v18 = *(a2 + v15 + 24);
        v13;

        if (v18)
        {
          *(v16 + 3) = v18;
          (**(v18 - 8))(v16, v17, v18);
        }

        else
        {
          v19 = *v17;
          *(v16 + 1) = v17[1];
          *v16 = v19;
        }

        *(v16 + 2) = v17[2];
        *(v16 + 3) = v17[3];
        *(v16 + 4) = v17[4];
        *(v16 + 5) = v17[5];
        *(v16 + 6) = v17[6];
        v20 = v91[9];
        v21 = *(a2 + v20);
        v22 = *(a2 + v20 + 8);
        v87 = *(a2 + v20 + 16);
        outlined copy of Result<_RegressorMetrics, Error>(v21, v22, v87);
        *(v3 + v20) = v21;
        *(v3 + v20 + 8) = v22;
        *(v3 + v20 + 16) = v87;
        v23 = v91[10];
        v24 = *(a2 + v23);
        v25 = *(a2 + v23 + 8);
        v26 = *(a2 + v23 + 16);
        outlined copy of Result<_RegressorMetrics, Error>(v24, v25, v26);
        *(v3 + v23) = v24;
        *(v3 + v23 + 8) = v25;
        *(v3 + v23 + 16) = v26;
        v84 = 2;
        goto LABEL_32;
      case 3:
        if (v7)
        {
          a1[2] = v7;
          a1[3] = a2[3];
          a1[4] = a2[4];
        }

        else
        {
          a1[4] = a2[4];
          *v90 = *v6;
        }

        v27 = *(type metadata accessor for MLLinearRegressor.Model(0) + 24);
        v28 = type metadata accessor for BaseLinearRegressorModel(0);
        (*(*(v28 - 8) + 16))(a1 + v27, a2 + v27, v28);
        v29 = type metadata accessor for MLLinearRegressor(0);
        v30 = v29[5];
        v31 = *(a2 + v30);
        *(v3 + v30) = v31;
        v32 = v29[6];
        *(v3 + v32) = *(a2 + v32);
        *(v3 + v32 + 8) = *(a2 + v32 + 8);
        *(v3 + v29[7]) = *(a2 + v29[7]);
        v92 = v29;
        v33 = v29[8];
        v34 = v3 + v33;
        v35 = a2 + v33;
        v36 = *(a2 + v33 + 24);
        v31;

        if (v36)
        {
          *(v34 + 3) = v36;
          (**(v36 - 8))(v34, v35, v36);
        }

        else
        {
          v37 = *v35;
          *(v34 + 1) = *(v35 + 1);
          *v34 = v37;
        }

        *(v34 + 2) = *(v35 + 2);
        *(v34 + 3) = *(v35 + 3);
        *(v34 + 8) = *(v35 + 8);
        v34[72] = v35[72];
        v38 = v92[9];
        v39 = *(a2 + v38);
        v40 = *(a2 + v38 + 8);
        v88 = *(a2 + v38 + 16);
        outlined copy of Result<_RegressorMetrics, Error>(v39, v40, v88);
        *(v3 + v38) = v39;
        *(v3 + v38 + 8) = v40;
        *(v3 + v38 + 16) = v88;
        v41 = v92[10];
        v42 = *(a2 + v41);
        v43 = *(a2 + v41 + 8);
        v44 = *(a2 + v41 + 16);
        outlined copy of Result<_RegressorMetrics, Error>(v42, v43, v44);
        *(v3 + v41) = v42;
        *(v3 + v41 + 8) = v43;
        *(v3 + v41 + 16) = v44;
        v84 = 3;
LABEL_32:
        v74 = v84;
        v72 = v3;
        v73 = a3;
LABEL_33:
        swift_storeEnumTagMultiPayload(v72, v73, v74);
        break;
    }
  }

  return v3;
}

uint64_t destroy for MLRegressor(void *a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  switch(result)
  {
    case 0:
      a1[1];
      v4 = a1[2];
      if (v4)
      {
        v4;
        a1[4];
      }

      v5 = a1 + *(type metadata accessor for TreeRegressorModel(0) + 24);
      v6 = type metadata accessor for BaseTreeRegressorModel(0);
      (*(*(v6 - 8) + 8))(v5, v6);
      v7 = type metadata accessor for MLBoostedTreeRegressor(0);
      goto LABEL_14;
    case 1:
      a1[1];
      v14 = a1[2];
      if (v14)
      {
        v14;
        a1[4];
      }

      v15 = a1 + *(type metadata accessor for TreeRegressorModel(0) + 24);
      v16 = type metadata accessor for BaseTreeRegressorModel(0);
      (*(*(v16 - 8) + 8))(v15, v16);
      v7 = type metadata accessor for MLDecisionTreeRegressor(0);
      goto LABEL_14;
    case 2:
      a1[1];
      v8 = a1[2];
      if (v8)
      {
        v8;
        a1[4];
      }

      v9 = a1 + *(type metadata accessor for TreeRegressorModel(0) + 24);
      v10 = type metadata accessor for BaseTreeRegressorModel(0);
      (*(*(v10 - 8) + 8))(v9, v10);
      v7 = type metadata accessor for MLRandomForestRegressor(0);
      goto LABEL_14;
    case 3:
      a1[1];
      v11 = a1[2];
      if (v11)
      {
        v11;
        a1[4];
      }

      v12 = a1 + *(type metadata accessor for MLLinearRegressor.Model(0) + 24);
      v13 = type metadata accessor for BaseLinearRegressorModel(0);
      (*(*(v13 - 8) + 8))(v12, v13);
      v7 = type metadata accessor for MLLinearRegressor(0);
LABEL_14:
      v17 = v7;

      *(a1 + v17[6] + 8);
      *(a1 + v17[7]);
      v18 = v17[8];
      if (*(a1 + v18 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((a1 + v18));
      }

      outlined consume of Result<_RegressorMetrics, Error>(*(a1 + v17[9]), *(a1 + v17[9] + 8), *(a1 + v17[9] + 16));
      result = outlined consume of Result<_RegressorMetrics, Error>(*(a1 + v17[10]), *(a1 + v17[10] + 8), *(a1 + v17[10] + 16));
      break;
    default:
      return result;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *initializeWithCopy for MLRegressor(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
  *a1 = *a2;
  a1[1] = a2[1];
  v5 = a1 + 2;
  v6 = a2 + 2;
  v7 = a2[2];

  v64 = EnumCaseMultiPayload;
  switch(EnumCaseMultiPayload)
  {
    case 0u:
      if (v7)
      {
        a1[2] = v7;
        v8 = a2;
        a1[3] = a2[3];
        a1[4] = a2[4];
      }

      else
      {
        a1[4] = a2[4];
        *v5 = *v6;
        v8 = a2;
      }

      v36 = *(type metadata accessor for TreeRegressorModel(0) + 24);
      v37 = type metadata accessor for BaseTreeRegressorModel(0);
      (*(*(v37 - 8) + 16))(a1 + v36, &v8[v36], v37);
      v14 = type metadata accessor for MLBoostedTreeRegressor(0);
      v38 = v14[5];
      v39 = *&v8[v38];
      *(a1 + v38) = v39;
      v40 = v14[6];
      *(a1 + v40) = *&v8[v40];
      *(a1 + v40 + 8) = *&v8[v40 + 8];
      *(a1 + v14[7]) = *&v8[v14[7]];
      v41 = v14[8];
      v19 = a1 + v41;
      v20 = &v8[v41];
      v42 = *&v8[v41 + 24];
      v39;

      if (v42)
      {
        v43 = v42;
        v23 = a1;
        *(v19 + 3) = v43;
        (**(v43 - 8))(v19, v20);
      }

      else
      {
        v23 = a1;
        v53 = *v20;
        *(v19 + 1) = *(v20 + 1);
        *v19 = v53;
      }

      *(v19 + 2) = *(v20 + 2);
      *(v19 + 3) = *(v20 + 3);
      *(v19 + 4) = *(v20 + 4);
      *(v19 + 10) = *(v20 + 10);
      v19[88] = v20[88];
      goto LABEL_28;
    case 1u:
      if (v7)
      {
        a1[2] = v7;
        v11 = a2;
        a1[3] = a2[3];
        a1[4] = a2[4];
      }

      else
      {
        a1[4] = a2[4];
        *v5 = *v6;
        v11 = a2;
      }

      v44 = *(type metadata accessor for TreeRegressorModel(0) + 24);
      v45 = type metadata accessor for BaseTreeRegressorModel(0);
      (*(*(v45 - 8) + 16))(a1 + v44, &v11[v44], v45);
      v14 = type metadata accessor for MLDecisionTreeRegressor(0);
      v46 = v14[5];
      v47 = *&v11[v46];
      *(a1 + v46) = v47;
      v48 = v14[6];
      *(a1 + v48) = *&v11[v48];
      *(a1 + v48 + 8) = *&v11[v48 + 8];
      *(a1 + v14[7]) = *&v11[v14[7]];
      v49 = v14[8];
      v50 = a1 + v49;
      v66 = &v11[v49];
      v51 = *&v11[v49 + 24];
      v47;

      v23 = a1;
      if (v51)
      {
        *(v50 + 3) = v51;
        v52 = v66;
        (**(v51 - 8))(v50, v66, v51);
      }

      else
      {
        v52 = v66;
        v54 = *v66;
        *(v50 + 1) = *(v66 + 1);
        *v50 = v54;
      }

      *(v50 + 2) = *(v52 + 2);
      *(v50 + 3) = *(v52 + 3);
      break;
    case 2u:
      if (v7)
      {
        a1[2] = v7;
        v9 = a2;
        a1[3] = a2[3];
        a1[4] = a2[4];
      }

      else
      {
        a1[4] = a2[4];
        *v5 = *v6;
        v9 = a2;
      }

      v12 = *(type metadata accessor for TreeRegressorModel(0) + 24);
      v13 = type metadata accessor for BaseTreeRegressorModel(0);
      (*(*(v13 - 8) + 16))(a1 + v12, &v9[v12], v13);
      v14 = type metadata accessor for MLRandomForestRegressor(0);
      v15 = v14[5];
      v16 = *&v9[v15];
      *(a1 + v15) = v16;
      v17 = v14[6];
      *(a1 + v17) = *&v9[v17];
      *(a1 + v17 + 8) = *&v9[v17 + 8];
      *(a1 + v14[7]) = *&v9[v14[7]];
      v18 = v14[8];
      v19 = a1 + v18;
      v20 = &v9[v18];
      v21 = *&v9[v18 + 24];
      v16;

      if (v21)
      {
        v22 = v21;
        v23 = a1;
        *(v19 + 3) = v22;
        (**(v22 - 8))(v19, v20);
      }

      else
      {
        v23 = a1;
        v24 = *v20;
        *(v19 + 1) = *(v20 + 1);
        *v19 = v24;
      }

      *(v19 + 2) = *(v20 + 2);
      *(v19 + 3) = *(v20 + 3);
      *(v19 + 4) = *(v20 + 4);
      *(v19 + 5) = *(v20 + 5);
LABEL_28:
      *(v19 + 6) = *(v20 + 6);
      break;
    case 3u:
      if (v7)
      {
        a1[2] = v7;
        v10 = a2;
        a1[3] = a2[3];
        a1[4] = a2[4];
      }

      else
      {
        a1[4] = a2[4];
        *v5 = *v6;
        v10 = a2;
      }

      v25 = *(type metadata accessor for MLLinearRegressor.Model(0) + 24);
      v26 = type metadata accessor for BaseLinearRegressorModel(0);
      (*(*(v26 - 8) + 16))(a1 + v25, &v10[v25], v26);
      v14 = type metadata accessor for MLLinearRegressor(0);
      v27 = v14[5];
      v28 = *&v10[v27];
      *(a1 + v27) = v28;
      v29 = v14[6];
      *(a1 + v29) = *&v10[v29];
      *(a1 + v29 + 8) = *&v10[v29 + 8];
      *(a1 + v14[7]) = *&v10[v14[7]];
      v30 = v14[8];
      v31 = a1 + v30;
      v32 = &v10[v30];
      v33 = *&v10[v30 + 24];
      v28;

      if (v33)
      {
        v34 = v33;
        v23 = a1;
        *(v31 + 3) = v34;
        (**(v34 - 8))(v31, v32);
      }

      else
      {
        v23 = a1;
        v35 = *v32;
        *(v31 + 1) = *(v32 + 1);
        *v31 = v35;
      }

      *(v31 + 2) = *(v32 + 2);
      *(v31 + 3) = *(v32 + 3);
      *(v31 + 8) = *(v32 + 8);
      v31[72] = v32[72];
      break;
  }

  v55 = v14[9];
  v56 = *(a2 + v55);
  v57 = *(a2 + v55 + 8);
  v65 = *(a2 + v55 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v56, v57, v65);
  *(v23 + v55) = v56;
  *(v23 + v55 + 8) = v57;
  *(v23 + v55 + 16) = v65;
  v58 = v14[10];
  v59 = *(a2 + v58);
  v60 = *(a2 + v58 + 8);
  v61 = *(a2 + v58 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v59, v60, v61);
  *(v23 + v58) = v59;
  *(v23 + v58 + 8) = v60;
  *(v23 + v58 + 16) = v61;
  swift_storeEnumTagMultiPayload(v23, a3, v64);
  return v23;
}

void *assignWithCopy for MLRegressor(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLRegressor);
    v58 = a3;
    LODWORD(a3) = swift_getEnumCaseMultiPayload(a2, a3);
    *a1 = *a2;
    a1[1] = a2[1];
    v61 = a1 + 2;
    v5 = a2 + 2;
    v6 = a2[2];

    v60 = a3;
    switch(a3)
    {
      case 0:
        if (v6)
        {
          a1[2] = v6;
          a1[3] = a2[3];
          a1[4] = a2[4];
        }

        else
        {
          a1[4] = a2[4];
          *v61 = *v5;
        }

        v30 = *(type metadata accessor for TreeRegressorModel(0) + 24);
        v31 = type metadata accessor for BaseTreeRegressorModel(0);
        (*(*(v31 - 8) + 16))(a1 + v30, a2 + v30, v31);
        v32 = type metadata accessor for MLBoostedTreeRegressor(0);
        v33 = v32[5];
        v34 = *(a2 + v33);
        *(v3 + v33) = v34;
        v35 = v32[6];
        *(v3 + v35) = *(a2 + v35);
        *(v3 + v35 + 8) = *(a2 + v35 + 8);
        *(v3 + v32[7]) = *(a2 + v32[7]);
        v62 = v32;
        v36 = v32[8];
        v14 = v3 + v36;
        v15 = a2 + v36;
        v37 = *(a2 + v36 + 24);
        v34;

        v17 = a2;
        if (v37)
        {
          *(v14 + 3) = v37;
          (**(v37 - 8))(v14, v15, v37);
        }

        else
        {
          v48 = *v15;
          *(v14 + 1) = *(v15 + 1);
          *v14 = v48;
        }

        *(v14 + 4) = *(v15 + 4);
        *(v14 + 5) = *(v15 + 5);
        *(v14 + 6) = *(v15 + 6);
        *(v14 + 7) = *(v15 + 7);
        *(v14 + 8) = *(v15 + 8);
        *(v14 + 9) = *(v15 + 9);
        *(v14 + 10) = *(v15 + 10);
        v14[88] = v15[88];
        goto LABEL_29;
      case 1:
        if (v6)
        {
          a1[2] = v6;
          a1[3] = a2[3];
          a1[4] = a2[4];
        }

        else
        {
          a1[4] = a2[4];
          *v61 = *v5;
        }

        v38 = *(type metadata accessor for TreeRegressorModel(0) + 24);
        v39 = type metadata accessor for BaseTreeRegressorModel(0);
        (*(*(v39 - 8) + 16))(a1 + v38, a2 + v38, v39);
        v40 = type metadata accessor for MLDecisionTreeRegressor(0);
        v41 = v40[5];
        v42 = *(a2 + v41);
        *(v3 + v41) = v42;
        v43 = v40[6];
        *(v3 + v43) = *(a2 + v43);
        *(v3 + v43 + 8) = *(a2 + v43 + 8);
        *(v3 + v40[7]) = *(a2 + v40[7]);
        v62 = v40;
        v44 = v40[8];
        v45 = v3 + v44;
        v46 = a2 + v44;
        v47 = *(a2 + v44 + 24);
        v42;

        v17 = a2;
        if (v47)
        {
          *(v45 + 3) = v47;
          (**(v47 - 8))(v45, v46, v47);
        }

        else
        {
          v49 = *v46;
          *(v45 + 1) = *(v46 + 1);
          *v45 = v49;
        }

        *(v45 + 4) = *(v46 + 4);
        *(v45 + 5) = *(v46 + 5);
        *(v45 + 6) = *(v46 + 6);
        *(v45 + 7) = *(v46 + 7);
        break;
      case 2:
        if (v6)
        {
          a1[2] = v6;
          a1[3] = a2[3];
          a1[4] = a2[4];
        }

        else
        {
          a1[4] = a2[4];
          *v61 = *v5;
        }

        v7 = *(type metadata accessor for TreeRegressorModel(0) + 24);
        v8 = type metadata accessor for BaseTreeRegressorModel(0);
        (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
        v9 = type metadata accessor for MLRandomForestRegressor(0);
        v10 = v9[5];
        v11 = *(a2 + v10);
        *(v3 + v10) = v11;
        v12 = v9[6];
        *(v3 + v12) = *(a2 + v12);
        *(v3 + v12 + 8) = *(a2 + v12 + 8);
        *(v3 + v9[7]) = *(a2 + v9[7]);
        v62 = v9;
        v13 = v9[8];
        v14 = v3 + v13;
        v15 = a2 + v13;
        v16 = *(a2 + v13 + 24);
        v11;

        v17 = a2;
        if (v16)
        {
          *(v14 + 3) = v16;
          (**(v16 - 8))(v14, v15, v16);
        }

        else
        {
          v18 = *v15;
          *(v14 + 1) = *(v15 + 1);
          *v14 = v18;
        }

        *(v14 + 4) = *(v15 + 4);
        *(v14 + 5) = *(v15 + 5);
        *(v14 + 6) = *(v15 + 6);
        *(v14 + 7) = *(v15 + 7);
        *(v14 + 8) = *(v15 + 8);
        *(v14 + 9) = *(v15 + 9);
        *(v14 + 10) = *(v15 + 10);
        *(v14 + 11) = *(v15 + 11);
LABEL_29:
        *(v14 + 12) = *(v15 + 12);
        *(v14 + 13) = *(v15 + 13);
        break;
      case 3:
        if (v6)
        {
          a1[2] = v6;
          a1[3] = a2[3];
          a1[4] = a2[4];
        }

        else
        {
          a1[4] = a2[4];
          *v61 = *v5;
        }

        v19 = *(type metadata accessor for MLLinearRegressor.Model(0) + 24);
        v20 = type metadata accessor for BaseLinearRegressorModel(0);
        (*(*(v20 - 8) + 16))(a1 + v19, a2 + v19, v20);
        v21 = type metadata accessor for MLLinearRegressor(0);
        v22 = v21[5];
        v23 = *(a2 + v22);
        *(v3 + v22) = v23;
        v24 = v21[6];
        *(v3 + v24) = *(a2 + v24);
        *(v3 + v24 + 8) = *(a2 + v24 + 8);
        *(v3 + v21[7]) = *(a2 + v21[7]);
        v62 = v21;
        v25 = v21[8];
        v26 = v3 + v25;
        v27 = a2 + v25;
        v28 = *(a2 + v25 + 24);
        v23;

        v17 = a2;
        if (v28)
        {
          *(v26 + 3) = v28;
          (**(v28 - 8))(v26, v27, v28);
        }

        else
        {
          v29 = *v27;
          *(v26 + 1) = *(v27 + 1);
          *v26 = v29;
        }

        *(v26 + 4) = *(v27 + 4);
        *(v26 + 5) = *(v27 + 5);
        *(v26 + 6) = *(v27 + 6);
        *(v26 + 7) = *(v27 + 7);
        *(v26 + 8) = *(v27 + 8);
        v26[72] = v27[72];
        break;
      case 4:
        JUMPOUT(0x403E4);
    }

    v50 = v62[9];
    v51 = *(v17 + v50);
    v52 = *(v17 + v50 + 8);
    v53 = *(v17 + v50 + 16);
    outlined copy of Result<_RegressorMetrics, Error>(v51, v52, v53);
    *(a1 + v50) = v51;
    *(a1 + v50 + 8) = v52;
    *(a1 + v50 + 16) = v53;
    v54 = v62[10];
    v55 = *(v17 + v54);
    v56 = *(v17 + v54 + 8);
    LOBYTE(v50) = *(v17 + v54 + 16);
    v3 = a1;
    outlined copy of Result<_RegressorMetrics, Error>(v55, v56, v50);
    *(a1 + v54) = v55;
    *(a1 + v54 + 8) = v56;
    *(a1 + v54 + 16) = v50;
    swift_storeEnumTagMultiPayload(a1, v58, v60);
  }

  return v3;
}

uint64_t initializeWithTake for MLRegressor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
  *a1 = *a2;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  switch(EnumCaseMultiPayload)
  {
    case 0u:
      v4 = *(type metadata accessor for TreeRegressorModel(0) + 24);
      v5 = type metadata accessor for BaseTreeRegressorModel(0);
      (*(*(v5 - 8) + 32))(a1 + v4, a2 + v4, v5);
      v6 = type metadata accessor for MLBoostedTreeRegressor(0);
      goto LABEL_4;
    case 1u:
      v11 = *(type metadata accessor for TreeRegressorModel(0) + 24);
      v12 = type metadata accessor for BaseTreeRegressorModel(0);
      (*(*(v12 - 8) + 32))(a1 + v11, a2 + v11, v12);
      v6 = type metadata accessor for MLDecisionTreeRegressor(0);
      *(a1 + v6[5]) = *(a2 + v6[5]);
      *(a1 + v6[6]) = *(a2 + v6[6]);
      *(a1 + v6[7]) = *(a2 + v6[7]);
      v13 = v6[8];
      v14 = *(a2 + v13);
      v15 = *(a2 + v13 + 16);
      v16 = *(a2 + v13 + 32);
      *(a1 + v13 + 48) = *(a2 + v13 + 48);
      *(a1 + v13 + 32) = v16;
      *(a1 + v13 + 16) = v15;
      *(a1 + v13) = v14;
      break;
    case 2u:
      v7 = *(type metadata accessor for TreeRegressorModel(0) + 24);
      v8 = type metadata accessor for BaseTreeRegressorModel(0);
      (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
      v6 = type metadata accessor for MLRandomForestRegressor(0);
LABEL_4:
      *(a1 + v6[5]) = *(a2 + v6[5]);
      *(a1 + v6[6]) = *(a2 + v6[6]);
      *(a1 + v6[7]) = *(a2 + v6[7]);
      qmemcpy((a1 + v6[8]), (a2 + v6[8]), 0x70uLL);
      break;
    case 3u:
      v9 = *(type metadata accessor for MLLinearRegressor.Model(0) + 24);
      v10 = type metadata accessor for BaseLinearRegressorModel(0);
      (*(*(v10 - 8) + 32))(a1 + v9, a2 + v9, v10);
      v6 = type metadata accessor for MLLinearRegressor(0);
      *(a1 + v6[5]) = *(a2 + v6[5]);
      *(a1 + v6[6]) = *(a2 + v6[6]);
      *(a1 + v6[7]) = *(a2 + v6[7]);
      qmemcpy((a1 + v6[8]), (a2 + v6[8]), 0x49uLL);
      break;
  }

  v17 = v6[9];
  *(a1 + v17 + 16) = *(a2 + v17 + 16);
  *(a1 + v17) = *(a2 + v17);
  v18 = v6[10];
  *(a1 + v18) = *(a2 + v18);
  *(a1 + v18 + 16) = *(a2 + v18 + 16);
  swift_storeEnumTagMultiPayload(a1, a3, EnumCaseMultiPayload);
  return a1;
}

uint64_t assignWithTake for MLRegressor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLRegressor);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
    *a1 = *a2;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    v21 = EnumCaseMultiPayload;
    switch(EnumCaseMultiPayload)
    {
      case 0u:
        v5 = *(type metadata accessor for TreeRegressorModel(0) + 24);
        v6 = type metadata accessor for BaseTreeRegressorModel(0);
        (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
        v7 = type metadata accessor for MLBoostedTreeRegressor(0);
        goto LABEL_5;
      case 1u:
        v12 = *(type metadata accessor for TreeRegressorModel(0) + 24);
        v13 = type metadata accessor for BaseTreeRegressorModel(0);
        (*(*(v13 - 8) + 32))(a1 + v12, a2 + v12, v13);
        v7 = type metadata accessor for MLDecisionTreeRegressor(0);
        *(a1 + v7[5]) = *(a2 + v7[5]);
        *(a1 + v7[6]) = *(a2 + v7[6]);
        *(a1 + v7[7]) = *(a2 + v7[7]);
        v14 = v7[8];
        v15 = *(a2 + v14);
        v16 = *(a2 + v14 + 16);
        v17 = *(a2 + v14 + 32);
        *(a1 + v14 + 48) = *(a2 + v14 + 48);
        *(a1 + v14 + 32) = v17;
        *(a1 + v14 + 16) = v16;
        *(a1 + v14) = v15;
        break;
      case 2u:
        v8 = *(type metadata accessor for TreeRegressorModel(0) + 24);
        v9 = type metadata accessor for BaseTreeRegressorModel(0);
        (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
        v7 = type metadata accessor for MLRandomForestRegressor(0);
LABEL_5:
        *(a1 + v7[5]) = *(a2 + v7[5]);
        *(a1 + v7[6]) = *(a2 + v7[6]);
        *(a1 + v7[7]) = *(a2 + v7[7]);
        qmemcpy((a1 + v7[8]), (a2 + v7[8]), 0x70uLL);
        break;
      case 3u:
        v10 = *(type metadata accessor for MLLinearRegressor.Model(0) + 24);
        v11 = type metadata accessor for BaseLinearRegressorModel(0);
        (*(*(v11 - 8) + 32))(a1 + v10, a2 + v10, v11);
        v7 = type metadata accessor for MLLinearRegressor(0);
        *(a1 + v7[5]) = *(a2 + v7[5]);
        *(a1 + v7[6]) = *(a2 + v7[6]);
        *(a1 + v7[7]) = *(a2 + v7[7]);
        qmemcpy((a1 + v7[8]), (a2 + v7[8]), 0x49uLL);
        break;
    }

    v18 = v7[9];
    *(a1 + v18 + 16) = *(a2 + v18 + 16);
    *(a1 + v18) = *(a2 + v18);
    v19 = v7[10];
    *(a1 + v19) = *(a2 + v19);
    *(a1 + v19 + 16) = *(a2 + v19 + 16);
    swift_storeEnumTagMultiPayload(a1, a3, v21);
  }

  return a1;
}

uint64_t type metadata completion function for MLRegressor(uint64_t a1)
{
  result = type metadata accessor for MLBoostedTreeRegressor(319);
  if (v2 <= 0x3F)
  {
    v8[0] = *(result - 8) + 64;
    result = type metadata accessor for MLDecisionTreeRegressor(319);
    if (v3 <= 0x3F)
    {
      v8[1] = *(result - 8) + 64;
      result = type metadata accessor for MLRandomForestRegressor(319);
      if (v4 <= 0x3F)
      {
        v8[2] = *(result - 8) + 64;
        result = type metadata accessor for MLLinearRegressor(319);
        if (v7 <= 0x3F)
        {
          v8[3] = *(result - 8) + 64;
          swift_initEnumMetadataMultiPayload(a1, 256, 4, v8, v5, v6);
          return 0;
        }
      }
    }
  }

  return result;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, int64_t, void *, uint64_t, uint64_t *, uint64_t *, uint64_t))
{
  v19 = v7;
  v8 = a4;
  v9 = a2;
  if (a3)
  {
    v10 = *(a4 + 24);
    a4 = v10 >> 1;
    if ((v10 >> 1) >= a2)
    {
      v9 = *(v8 + 24) >> 1;
    }

    else
    {
      a4 += 0x4000000000000000;
      if (a4 < 0)
      {
        BUG();
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (v11 > a2)
      {
        v9 = v11;
      }
    }
  }

  v12 = *(v8 + 16);
  if (v9 <= v12)
  {
    v9 = *(v8 + 16);
  }

  if (v9)
  {
    v13 = a6;
    v14 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v15 = swift_allocObject(v14, 40 * v9 + 32, 7);
    v16 = _swift_stdlib_malloc_size(v15);
    a6 = v13;
    a4 = 40;
    v15[2] = v12;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    a7(v8 + 32, v12, v15 + 4, a4, a5, a6, v19);
    *(v8 + 16) = 0;
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledName(a6);
    swift_arrayInitWithCopy((v15 + 4), v8 + 32, v12, v17);
  }

  v8;
  return v15;
}

{
  v19 = v7;
  v8 = a4;
  v9 = a2;
  if (a3)
  {
    v10 = *(a4 + 24);
    a4 = v10 >> 1;
    if ((v10 >> 1) >= a2)
    {
      v9 = *(v8 + 24) >> 1;
    }

    else
    {
      a4 += 0x4000000000000000;
      if (a4 < 0)
      {
        BUG();
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (v11 > a2)
      {
        v9 = v11;
      }
    }
  }

  v12 = *(v8 + 16);
  if (v9 <= v12)
  {
    v9 = *(v8 + 16);
  }

  if (v9)
  {
    v13 = a6;
    v14 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v15 = swift_allocObject(v14, 56 * v9 + 32, 7);
    v16 = _swift_stdlib_malloc_size(v15);
    a6 = v13;
    a4 = 56;
    v15[2] = v12;
    v15[3] = 2 * ((v16 - 32) / 56);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    a7(v8 + 32, v12, v15 + 4, a4, a5, a6, v19);
    *(v8 + 16) = 0;
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledName(a6);
    swift_arrayInitWithCopy((v15 + 4), v8 + 32, v12, v17);
  }

  v8;
  return v15;
}

{
  v19 = v7;
  v8 = a4;
  v9 = a2;
  if (a3)
  {
    v10 = *(a4 + 24);
    a4 = v10 >> 1;
    if ((v10 >> 1) >= a2)
    {
      v9 = *(v8 + 24) >> 1;
    }

    else
    {
      a4 += 0x4000000000000000;
      if (a4 < 0)
      {
        BUG();
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (v11 > a2)
      {
        v9 = v11;
      }
    }
  }

  v12 = *(v8 + 16);
  if (v9 <= v12)
  {
    v9 = *(v8 + 16);
  }

  if (v9)
  {
    v13 = a6;
    v14 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v15 = swift_allocObject(v14, 32 * v9 + 32, 7);
    v16 = _swift_stdlib_malloc_size(v15);
    a6 = v13;
    a4 = 32;
    v15[2] = v12;
    v15[3] = 2 * ((v16 - 32) / 32);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    a7(v8 + 32, v12, v15 + 4, a4, a5, a6, v19);
    *(v8 + 16) = 0;
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledName(a6);
    swift_arrayInitWithCopy((v15 + 4), v8 + 32, v12, v17);
  }

  v8;
  return v15;
}

{
  v19 = v7;
  v8 = a4;
  v9 = a2;
  if (a3)
  {
    v10 = *(a4 + 24);
    a4 = v10 >> 1;
    if ((v10 >> 1) >= a2)
    {
      v9 = *(v8 + 24) >> 1;
    }

    else
    {
      a4 += 0x4000000000000000;
      if (a4 < 0)
      {
        BUG();
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (v11 > a2)
      {
        v9 = v11;
      }
    }
  }

  v12 = *(v8 + 16);
  if (v9 <= v12)
  {
    v9 = *(v8 + 16);
  }

  if (v9)
  {
    v13 = a6;
    v14 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v15 = swift_allocObject(v14, 8 * v9 + 32, 7);
    v16 = _swift_stdlib_malloc_size(v15);
    a6 = v13;
    a4 = 8;
    v15[2] = v12;
    v15[3] = 2 * ((v16 - 32) / 8);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    a7(v8 + 32, v12, v15 + 4, a4, a5, a6, v19);
    *(v8 + 16) = 0;
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledName(a6);
    swift_arrayInitWithCopy((v15 + 4), v8 + 32, v12, v17);
  }

  v8;
  return v15;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, int64_t, char *))
{
  v9 = a2;
  v10 = a1;
  if (a3)
  {
    v11 = *(a4 + 24);
    if ((v11 >> 1) >= a2)
    {
      v9 = *(a4 + 24) >> 1;
    }

    else
    {
      if (((v11 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if (v12 > a2)
      {
        v9 = v12;
      }
    }
  }

  v13 = *(a4 + 16);
  if (v9 <= v13)
  {
    v9 = *(a4 + 16);
  }

  if (v9)
  {
    v27 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v28 = a6;
    v14 = *(__swift_instantiateConcreteTypeFromMangledName(a6) - 8);
    v15 = *(v14 + 72);
    v16 = *(v14 + 80);
    v17 = (v16 + 32) & ~v16;
    v18 = swift_allocObject(v27, v17 + v15 * v9, v16 | 7);
    v19 = _swift_stdlib_malloc_size(v18);
    if (!v15)
    {
      BUG();
    }

    v20 = v19 - v17;
    if (__OFSUB__(-v20, 1) && v15 == -1)
    {
      BUG();
    }

    v18[2] = v13;
    v18[3] = 2 * (v20 / v15);
    v10 = a1;
    a6 = v28;
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledName(a6);
  v22 = *(*(v21 - 8) + 80);
  v23 = (v22 + 32) & ~v22;
  v24 = v18 + v23;
  v25 = a4 + v23;
  if (v10)
  {
    a7(v25, v13, v24);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy(v24, v25, v13, v21);
  }

  a4;
  return v18;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(void), void (*a7)(uint64_t, int64_t, char *))
{
  v8 = a4;
  v9 = a2;
  v10 = a1;
  if (a3)
  {
    v11 = *(a4 + 24);
    a4 = v11 >> 1;
    if ((v11 >> 1) >= a2)
    {
      v9 = *(v8 + 24) >> 1;
    }

    else
    {
      a3 = 0x4000000000000000;
      a4 += 0x4000000000000000;
      if (a4 < 0)
      {
        BUG();
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if (v12 > a2)
      {
        v9 = v12;
      }
    }
  }

  v13 = *(v8 + 16);
  if (v9 <= v13)
  {
    v9 = *(v8 + 16);
  }

  if (v9)
  {
    v28 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v29 = a6;
    v14 = *(a6(0) - 8);
    v15 = *(v14 + 72);
    v16 = *(v14 + 80);
    v17 = (v16 + 32) & ~v16;
    v18 = v17 + v15 * v9;
    v19 = swift_allocObject(v28, v18, v16 | 7);
    v20 = _swift_stdlib_malloc_size(v19);
    if (!v15)
    {
      BUG();
    }

    v21 = v20 - v17;
    if (__OFSUB__(-v21, 1) && v15 == -1)
    {
      BUG();
    }

    v19[2] = v13;
    v19[3] = 2 * (v21 / v15);
    v10 = a1;
    v22 = (v29)(0, v18, v21 % v15, -v21);
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
    v22 = (a6)(0, a2, a3, a4);
  }

  v23 = *(*(v22 - 8) + 80);
  v24 = (v23 + 32) & ~v23;
  v25 = v19 + v24;
  v26 = v8 + v24;
  if (v10)
  {
    a7(v26, v13, v25);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy(v25, v26, v13, v22);
  }

  v8;
  return v19;
}

uint64_t NSFileManager.temporaryModelDirectory.getter()
{
  v11[1] = v0;
  v1 = type metadata accessor for URL(0);
  v12 = *(v1 - 8);
  v2 = *(v12 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = NSTemporaryDirectory();
  v6 = v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)(v6);
  v9 = v8;

  URL.init(fileURLWithPath:)(v7, v9);
  v9;
  URL.appendingPathComponent(_:)(0x4C4D657461657243, 0xEE00736C65646F4DLL);
  return (*(v12 + 8))(v11, v1);
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> NSFileManager.createTemporaryModelDirectory()()
{
  v19 = v0;
  v21 = type metadata accessor for URL(0);
  v22 = *(v21 - 8);
  v2 = *(v22 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  NSFileManager.temporaryModelDirectory.getter();
  URL.path.getter(0);
  v6 = v5;
  v7 = String._bridgeToObjectiveC()();
  v6;
  v20 = v1;
  v8 = [v1 fileExistsAtPath:v7];

  if (v8)
  {
    (*(v22 + 8))(&v19, v21);
  }

  else
  {
    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    v12 = type metadata accessor for NSFileAttributeKey(0);
    v13 = lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey();
    v14 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v12, &type metadata for Any + 8, v13);
    v23 = 0;
    v15 = outlined bridged method (mnnbnnn) of @objc NSFileManager.createDirectory(at:withIntermediateDirectories:attributes:)(v11, 1, v14, &v23, v20);

    v16 = v23;
    if (v15)
    {
      v17 = *(v22 + 8);
      v23;
      v17(&v19, v21);
    }

    else
    {
      v18 = v23;
      _convertNSErrorToError(_:)(v16);

      swift_willThrow();
      (*(v22 + 8))(&v19, v21);
    }
  }
}

uint64_t lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey()
{
  result = lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (!lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey)
  {
    v1 = type metadata accessor for NSFileAttributeKey(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for NSFileAttributeKey, v1);
    lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey = result;
  }

  return result;
}

uint64_t outlined bridged method (mnnbnnn) of @objc NSFileManager.createDirectory(at:withIntermediateDirectories:attributes:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a3;
  type metadata accessor for NSFileAttributeKey(0);
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v6;
  LODWORD(a5) = [a5 createDirectoryAtURL:a1 withIntermediateDirectories:a2 attributes:isa error:a4];

  return a5;
}

uint64_t static MLHandActionClassifier.FeatureExtractor.extractFeatures(from:targetFrameRate:startingSessionId:)(uint64_t a1, uint64_t a2, __m128 a3)
{
  v10 = a2;
  v11 = *a3.i64;
  v12 = v3;
  v5 = *(*(type metadata accessor for MLHandActionClassifier.DataSource(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  outlined init with copy of MLTrainingSessionParameters(a1, &v9, type metadata accessor for MLHandActionClassifier.DataSource);
  result = MLHandActionClassifier.FeatureExtractor.__allocating_init(source:)(&v9, a3);
  if (!v4)
  {
    MLHandActionClassifier.FeatureExtractor.extractFeaturesFromFileTable(_:startingSessionId:)(v10, v11);
  }

  return result;
}

uint64_t MLHandActionClassifier.FeatureExtractor.__allocating_init(source:)(uint64_t a1, __m128 a2)
{
  MLHandActionClassifier.DataSource.videosWithAnnotations()(a2);
  result = outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLHandActionClassifier.DataSource);
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

uint64_t MLHandActionClassifier.FeatureExtractor.extractFeaturesFromFileTable(_:startingSessionId:)(uint64_t a1, double a2)
{
  seconds[0] = v3;
  v285 = a1;
  v284 = a2;
  v288 = v2;
  v309 = type metadata accessor for URL(0);
  v308 = *(v309 - 8);
  v5 = *(v308 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v313 = v282;
  v333 = type metadata accessor for Date(0);
  v337 = *(v333 - 1);
  v8 = *(v337 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  *v336 = v282;
  currentFileIndex = type metadata accessor for _TablePrinter(0);
  v11 = *(*(currentFileIndex - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v299 = v282;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v320 = v282;
  v340 = type metadata accessor for Logger(0);
  v338 = *(v340 - 8);
  v16 = *(v338 + 8);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v289 = v282;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v310 = v282;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v300 = v282;
  v23 = alloca(v16);
  v24 = alloca(v16);
  v294 = v282;
  v25 = alloca(v16);
  v26 = alloca(v16);
  v321 = v282;
  v27 = alloca(v16);
  v28 = alloca(v16);
  v296 = v282;
  v29 = alloca(v16);
  v30 = alloca(v16);
  v295 = v282;
  v31 = alloca(v16);
  v32 = alloca(v16);
  v322 = v282;
  v33 = *(v4 + 16);
  v297 = v4;
  v34 = *(v4 + 24);
  v303 = v33;
  LOBYTE(v304) = v34;
  outlined copy of Result<_DataTable, Error>(v33, v34);
  outlined copy of Result<_DataTable, Error>(v33, v34);
  v35 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v303, v304);
  v332 = specialized RandomAccessCollection<>.distance(from:to:)(0, v35, v33, v34);
  outlined consume of Result<_DataTable, Error>(v33, v34);
  if (one-time initialization token for logger != -1)
  {
    swift_once(&one-time initialization token for logger, one-time initialization function for logger);
  }

  v36 = v340;
  v37 = __swift_project_value_buffer(v340, static MLHandActionClassifier.logger);
  v38 = v338;
  v39 = *(v338 + 2);
  v40 = v322;
  v41 = v322;
  v314 = v37;
  v42 = v37;
  v315 = v39;
  v39(v322, v37, v36);
  v43 = Logger.logObject.getter(v41, v42);
  v44 = static os_log_type_t.info.getter(v41);
  if (os_log_type_enabled(v43, v44))
  {
    v45 = v40;
    v46 = swift_slowAlloc(12, -1);
    *v46 = 134217984;
    *(v46 + 4) = v332;
    _os_log_impl(&dword_0, v43, v44, "Processing %ld annotated video clips", v46, 0xCu);
    v47 = v46;
    v40 = v45;
    v38 = v338;
    v47, -1, -1;
  }

  v48 = v40;
  v323 = *(v38 + 1);
  v323(v40, v340);
  v338 = "ml.handActionClassifier" + 0x8000000000000000;
  v49 = v320;
  v50 = v320 + *(currentFileIndex + 20);
  Date.init()(v48);
  *v49 = v332;
  type metadata accessor for OS_os_log();
  v51 = OS_os_log.init(subsystem:category:)(0xD000000000000027, ("le" + 0x8000000000000000), 0x72705F656C626174, 0xED00007265746E69);
  v52 = currentFileIndex;
  v53 = *(currentFileIndex + 24);
  v287 = v51;
  *(v49 + v53) = v51;
  v54 = *(v52 + 28);
  *(v49 + v54) = 0xD000000000000015;
  *(v49 + v54 + 8) = v338;
  v55 = *v336;
  Date.init()(0xD000000000000027);
  v286 = v50;
  (*(v337 + 40))(v50, v55, v333);
  _TablePrinter.beginTable()();
  _TablePrinter.printRow(currentFileIndex:)(0);
  v56 = *(v297 + 24);
  v303 = *(v297 + 16);
  LOBYTE(v304) = v56;
  v291 = (v297 + 32);
  v292 = (v297 + 48);
  v293 = (v297 + 40);
  v290 = (v297 + 56);
  value_low = 0.0;
  v305 = 0;
  outlined copy of Result<_DataTable, Error>(v303, v56);
  value = kCMTimeZero.value;
  timescale = kCMTimeZero.timescale;
  flags = kCMTimeZero.flags;
  epoch = kCMTimeZero.epoch;
  v318 = kCMTimeIndefinite.value;
  v326 = kCMTimeIndefinite.timescale;
  v327 = kCMTimeIndefinite.flags;
  v319 = kCMTimeIndefinite.epoch;
  while (1)
  {
    specialized EnumeratedSequence.Iterator.next()();
    if (!*&v330.timescale)
    {
      v244 = v303;
      outlined consume of Result<_DataTable, Error>(v303, v304);
      static os_log_type_t.info.getter(v244);
      v245 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
      v246 = swift_allocObject(v245, 72, 7);
      v247 = v246;
      v246[2] = 1;
      v246[3] = 2;
      v246[7] = &type metadata for Int;
      v246[8] = &protocol witness table for Int;
      v246[4] = 3;
      os_log(_:dso:log:type:_:)("event: %lu");
      v247;
      v248 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLUntypedColumn)>);
      inited = swift_initStackObject(v248, v282);
      *(inited + 16) = 4;
      *(inited + 24) = 8;
      *(inited + 32) = 0x6C6562616CLL;
      *(inited + 40) = 0xE500000000000000;
      v303 = *v293;
      v250 = alloca(24);
      v251 = alloca(32);
      v283 = &v303;

      *(inited + 48) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
      *(inited + 56) = v252 & 1;
      v303;
      *(inited + 64) = 0x5F6E6F6973736573;
      *(inited + 72) = 0xEA00000000006469;
      v303 = *v292;
      v253 = alloca(24);
      v254 = alloca(32);
      v283 = &v303;

      *(inited + 80) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
      *(inited + 88) = v255 & 1;
      v303;
      *(inited + 96) = 0x746E696F7079656BLL;
      *(inited + 104) = 0xE900000000000073;
      v303 = *v291;
      v256 = alloca(24);
      v257 = alloca(32);
      v283 = &v303;

      *(inited + 112) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
      *(inited + 120) = v258 & 1;
      v303;
      *(inited + 128) = 0x7461506F65646976;
      *(inited + 136) = 0xE900000000000068;
      v303 = *v290;
      v259 = alloca(24);
      v260 = alloca(24);
      v283 = &v303;

      *(inited + 144) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
      *(inited + 152) = v261 & 1;
      v303;
      v262 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for MLUntypedColumn, &protocol witness table for String);
      v263 = seconds[0];
      _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(v262);
      if (v263 == 0.0)
      {
        v264 = v304;
        v265 = v288;
        *v288 = v303;
        *(v265 + 8) = v264;
      }

      return outlined destroy of MLActivityClassifier.ModelParameters(v320, type metadata accessor for _TablePrinter);
    }

    currentFileIndex = v330.value;
    v58 = v330.epoch;
    v59 = v331;
    v60 = *(v330.epoch + 16) == 0;
    v332 = v330.epoch;
    v338 = *&v330.timescale;
    if (v60)
    {
      goto LABEL_114;
    }

    v61 = specialized __RawDictionaryStorage.find<A>(_:)(0x7461506F65646976, 0xE900000000000068);
    if ((v62 & 1) == 0)
    {
      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v338, v58);
      goto LABEL_114;
    }

    v63 = *(*(v58 + 56) + 8 * v61);

    v64 = seconds[0];
    v65 = CMLSequence.value(at:)(v63);
    if (v64 != 0.0)
    {
      v281 = *&v64;
      goto LABEL_128;
    }

    MLDataValue.init(_:)(v65, value_low);

    outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v338, v58);
    v66 = v330.value;
    v67 = *&v330.timescale;
    if (LOBYTE(v330.epoch) != 2)
    {
      v266 = v330.epoch;
      goto LABEL_112;
    }

    if (!*(v58 + 16))
    {
      v266 = 2;
      goto LABEL_112;
    }

    *v336 = v330.value;
    v333 = *&v330.timescale;

    v68 = specialized __RawDictionaryStorage.find<A>(_:)(0x6C6562616CLL, 0xE500000000000000);
    if ((v69 & 1) == 0)
    {
      break;
    }

    v70 = *(*(v58 + 56) + 8 * v68);

    v71 = CMLSequence.value(at:)(v70);
    MLDataValue.init(_:)(v71, value_low);

    v337 = v59;
    outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v338, v58);
    if (LOBYTE(v330.epoch) != 2)
    {
      outlined consume of MLDataValue(v330.value, *&v330.timescale, v330.epoch);
      outlined consume of MLDataValue(*v336, v333, 2);
      goto LABEL_114;
    }

    seconds[0] = 0.0;
    v307 = v330.value;
    v306 = *&v330.timescale;
    v72 = objc_opt_self(NSFileManager);
    v73 = [v72 defaultManager];
    v74 = v73;
    v75 = *v336;
    v76 = String._bridgeToObjectiveC()();
    v77 = [v74 fileExistsAtPath:v76];

    if (!v77)
    {
      outlined consume of MLDataValue(v307, v306, 2);
      v330.value = 0;
      *&v330.timescale = 0xE000000000000000;
      _StringGuts.grow(_:)(26);
      v330.timescale;
      v330.value = 0xD000000000000018;
      *&v330.timescale = "h or label string at row " + 0x8000000000000000;
      v277._countAndFlagsBits = v75;
      v278 = v333;
      v277._object = v333;
      String.append(_:)(v277);
      outlined consume of MLDataValue(v75, v278, 2);
      *seconds = *&v330.value;
      v279 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v279, 0, 0);
      *v280 = *seconds;
      *(v280 + 16) = 0;
      *(v280 + 32) = 0;
      *(v280 + 48) = 0;
      swift_willThrow();
      v273 = currentFileIndex;
      v274 = v338;
      v275 = v332;
      goto LABEL_115;
    }

    URL.init(fileURLWithPath:)(v75, v333);
    v298 = URL.lastPathComponent.getter();
    v322 = v78;
    v79 = *(v297 + 16);
    if (*(v297 + 24))
    {
      outlined copy of Result<_DataTable, Error>(*(v297 + 16), 1);
      v80 = tc_v1_flex_list_create(0);
      v81 = seconds[0];
      if (!v80)
      {
        BUG();
      }

      v82 = v80;
      v83 = type metadata accessor for CMLSequence();
      v84 = swift_allocObject(v83, 25, 7);
      *(v84 + 16) = v82;
      *(v84 + 24) = 1;
      outlined consume of Result<_DataTable, Error>(v79, 1);
    }

    else
    {
      outlined copy of Result<_DataTable, Error>(*(v297 + 16), 0);
      _DataTable.columnNames.getter();
      outlined consume of Result<_DataTable, Error>(v79, 0);
      v84 = v302;
      v81 = seconds[0];
    }

    v330.value = 0x7472617473;
    *&v330.timescale = 0xE500000000000000;
    v85 = alloca(24);
    v86 = alloca(32);
    v283 = &v330;
    v87 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v282, v84);
    seconds[0] = v81;

    if ((v87 & 1) == 0)
    {
      goto LABEL_51;
    }

    v88 = v332;
    v89 = v338;
    if (!*(v332 + 16))
    {
      goto LABEL_45;
    }

    v90 = specialized __RawDictionaryStorage.find<A>(_:)(0x7472617473, 0xE500000000000000);
    if (v91)
    {
      v92 = *(*(v88 + 56) + 8 * v90);

      v93 = seconds[0];
      v94 = CMLSequence.value(at:)(v92);
      v95 = v88;
      v96 = *&v93;
      if (v93 != 0.0)
      {
        goto LABEL_125;
      }

      MLDataValue.init(_:)(v94, value_low);

      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v338, v95);
      v97 = v330.value;
      v98 = v340;
      seconds[0] = 0.0;
      if (LOBYTE(v330.epoch) == 1)
      {
        value_low = *&v330.value;
        if (*&v330.value >= 0.0)
        {
          goto LABEL_43;
        }

        v99 = v295;
        v315(v295, v314, v340);
        v100 = v333;
        v101 = v333;
        outlined copy of MLDataValue(*v336, v333, 2u);

        v102 = Logger.logObject.getter(v100, v101);
        v103 = static os_log_type_t.info.getter(v100);
        log = v102;
        *type = v103;
        if (!os_log_type_enabled(v102, v103))
        {
          goto LABEL_100;
        }

        v104 = swift_slowAlloc(22, -1);
        v335 = swift_slowAlloc(32, -1);
        v330.value = v335;
        *v104 = 134218242;
        *(v104 + 4) = v97;
        *(v104 + 12) = 2080;

        v105 = *v336;
        *(v104 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v336, v100, &v330.value);
        outlined consume of MLDataValue(v105, v100, 2);
        outlined consume of MLDataValue(v105, v100, 2);
        v100;
        v106 = log;
        _os_log_impl(&dword_0, log, type[0], "Start time %f specified in video file %s is negative, using 0.0 automatically.", v104, 0x16u);
        v107 = v335;
        __swift_destroy_boxed_opaque_existential_1Tm(v335);
        v107, -1, -1;
        v104, -1, -1;

        v108 = v295;
        goto LABEL_50;
      }

      outlined consume of MLDataValue(v330.value, *&v330.timescale, v330.epoch);
      v109 = v321;
      v88 = v332;
    }

    else
    {
      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v89, v88);
      v98 = v340;
      v109 = v321;
    }

    if (!*(v88 + 16))
    {
      goto LABEL_46;
    }

    v110 = v338;

    v111 = specialized __RawDictionaryStorage.find<A>(_:)(0x7472617473, 0xE500000000000000);
    if ((v112 & 1) == 0)
    {
      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v110, v88);
      v98 = v340;
      v109 = v321;
LABEL_35:
      if (*(v88 + 16))
      {
        v118 = v338;

        v119 = specialized __RawDictionaryStorage.find<A>(_:)(0x7472617473, 0xE500000000000000);
        if (v120)
        {
          v121 = *(*(v88 + 56) + 8 * v119);

          v122 = seconds[0];
          v123 = CMLSequence.value(at:)(v121);
          v124 = *&v122;
          if (v122 != 0.0)
          {
            goto LABEL_127;
          }

          MLDataValue.init(_:)(v123, value_low);

          outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v338, v88);
          v129 = v330.value;
          v130 = *&v330.timescale;
          if (LOBYTE(v330.epoch) == 2)
          {
            static _VideoUtilities.getSecondsFromTimeString(_:)(*&v330.value, v125, v126, v127, v128);
            seconds[0] = 0.0;
            *&log = value_low;
            outlined consume of MLDataValue(v129, v130, 2);
            value_low = *&log;
LABEL_43:
            CMTimeMakeWithSeconds(&v330, value_low, 1000);
            log = v330.value;
            LODWORD(v335) = v330.timescale;
            *type = v330.flags;
            v131 = v330.epoch;
            goto LABEL_52;
          }

          seconds[0] = 0.0;
          outlined consume of MLDataValue(v330.value, *&v330.timescale, v330.epoch);
        }

        else
        {
          outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v118, v88);
        }

LABEL_45:
        v98 = v340;
        v109 = v321;
      }

LABEL_46:
      v315(v109, v314, v98);
      v132 = v322;
      v133 = v322;
      swift_bridgeObjectRetain_n(v322, 2);
      v134 = Logger.logObject.getter(v133, 2);
      v135 = static os_log_type_t.error.getter(v133);
      if (os_log_type_enabled(v134, v135))
      {
        v136 = swift_slowAlloc(12, -1);
        *&log = COERCE_DOUBLE(swift_slowAlloc(32, -1));
        v330.value = log;
        *v136 = 136315138;

        *(v136 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v298, v132, &v330.value);
        swift_bridgeObjectRelease_n(v132, 3);
        _os_log_impl(&dword_0, v134, v135, "Unsupported start time format in annotation file. Please provide either a Double or Int value in seconds, or a String value in hours:minutes:seconds.fraction, minutes:seconds.fraction, or seconds.fraction format. Skipping start time for file %s", v136, 0xCu);
        v137 = log;
        __swift_destroy_boxed_opaque_existential_1Tm(log);
        v137, -1, -1;
        v136, -1, -1;
      }

      else
      {

        swift_bridgeObjectRelease_n(v132, 2);
      }

      v108 = v321;
      goto LABEL_50;
    }

    v113 = *(*(v88 + 56) + 8 * v111);

    v114 = seconds[0];
    v115 = CMLSequence.value(at:)(v113);
    v116 = v88;
    v96 = *&v114;
    if (v114 != 0.0)
    {
LABEL_125:
      v281 = v96;
      goto LABEL_128;
    }

    MLDataValue.init(_:)(v115, value_low);

    outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v338, v116);
    v117 = v330.value;
    v98 = v340;
    v109 = v321;
    seconds[0] = 0.0;
    if (LOBYTE(v330.epoch))
    {
      outlined consume of MLDataValue(v330.value, *&v330.timescale, v330.epoch);
      v88 = v332;
      goto LABEL_35;
    }

    if (v330.value >= 0)
    {
      value_low = SLODWORD(v330.value);
      goto LABEL_43;
    }

    v99 = v296;
    v315(v296, v314, v340);
    v100 = v333;
    v225 = v333;
    outlined copy of MLDataValue(*v336, v333, 2u);

    v226 = Logger.logObject.getter(v100, v225);
    v227 = static os_log_type_t.info.getter(v100);
    log = v226;
    *type = v227;
    if (!os_log_type_enabled(v226, v227))
    {
LABEL_100:
      v232 = *v336;
      outlined consume of MLDataValue(*v336, v100, 2);
      outlined consume of MLDataValue(v232, v100, 2);

      v108 = v99;
      goto LABEL_50;
    }

    v228 = swift_slowAlloc(22, -1);
    v335 = swift_slowAlloc(32, -1);
    v330.value = v335;
    *v228 = 134218242;
    *(v228 + 4) = v117;
    *(v228 + 12) = 2080;

    v229 = *v336;
    *(v228 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v336, v100, &v330.value);
    outlined consume of MLDataValue(v229, v100, 2);
    outlined consume of MLDataValue(v229, v100, 2);
    v100;
    v230 = log;
    _os_log_impl(&dword_0, log, type[0], "Start time %ld specified in video file %s is negative, using 0.0 automatically.", v228, 0x16u);
    v231 = v335;
    __swift_destroy_boxed_opaque_existential_1Tm(v335);
    v231, -1, -1;
    v228, -1, -1;

    v108 = v296;
LABEL_50:
    v323(v108, v340);
LABEL_51:
    log = value;
    LODWORD(v335) = timescale;
    *type = flags;
    v131 = epoch;
LABEL_52:
    v328 = v131;
    v138 = *(v297 + 16);
    if (*(v297 + 24))
    {
      outlined copy of Result<_DataTable, Error>(*(v297 + 16), 1);
      v139 = tc_v1_flex_list_create(0);
      if (!v139)
      {
        BUG();
      }

      v140 = v139;
      v141 = type metadata accessor for CMLSequence();
      v142 = swift_allocObject(v141, 25, 7);
      *(v142 + 16) = v140;
      *(v142 + 24) = 1;
      outlined consume of Result<_DataTable, Error>(v138, 1);
    }

    else
    {
      outlined copy of Result<_DataTable, Error>(*(v297 + 16), 0);
      _DataTable.columnNames.getter();
      outlined consume of Result<_DataTable, Error>(v138, 0);
      v142 = v302;
    }

    v330.value = 6581861;
    *&v330.timescale = 0xE300000000000000;
    v143 = alloca(24);
    v144 = alloca(32);
    v283 = &v330;
    v145 = seconds[0];
    v146 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v282, v142);
    v147 = v145;

    if ((v146 & 1) == 0)
    {
      outlined consume of MLDataValue(*v336, v333, 2);
      v167 = v318;
      v168 = v326;
      v169 = v327;
      v170 = v319;
      goto LABEL_84;
    }

    v148 = v332;
    if (*(v332 + 16))
    {
      seconds[0] = v145;
      v149 = v338;

      v150 = specialized __RawDictionaryStorage.find<A>(_:)(6581861, 0xE300000000000000);
      if (v151)
      {
        v152 = *(*(v148 + 56) + 8 * v150);

        v153 = seconds[0];
        v154 = CMLSequence.value(at:)(v152);
        v147 = v153;
        if (v153 != 0.0)
        {
          goto LABEL_126;
        }

        MLDataValue.init(_:)(v154, value_low);

        outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v338, v148);
        v155 = v330.value;
        v156 = v294;
        if (LOBYTE(v330.epoch) == 1)
        {
          if (*&v330.value >= 0.0)
          {
            v190 = *v336;
            v191 = v333;
            seconds[0] = *&v330.value;
LABEL_93:
            outlined consume of MLDataValue(v190, v191, 2);
            CMTimeMakeWithSeconds(&v330, seconds[0], 1000);
            v167 = v330.value;
            v168 = v330.timescale;
            v169 = v330.flags;
            v170 = v330.epoch;
          }

          else
          {
            seconds[0] = 0.0;
            v157 = v314;
            v315(v294, v314, v340);
            v158 = v333;
            v159 = v333;

            v160 = Logger.logObject.getter(v159, v157);
            v161 = static os_log_type_t.info.getter(v159);
            v311 = v160;
            *v312 = v161;
            if (os_log_type_enabled(v160, v161))
            {
              v162 = swift_slowAlloc(22, -1);
              v301 = swift_slowAlloc(32, -1);
              v330.value = v301;
              *v162 = 134218242;
              *(v162 + 4) = v155;
              *(v162 + 12) = 2080;

              v163 = *v336;
              *(v162 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v336, v158, &v330.value);
              outlined consume of MLDataValue(v163, v158, 2);
              outlined consume of MLDataValue(v163, v158, 2);
              v158;
              v164 = v311;
              _os_log_impl(&dword_0, v311, v312[0], "End time %f specified in video file %s is negative, using end of file automatically.", v162, 0x16u);
              v165 = v301;
              __swift_destroy_boxed_opaque_existential_1Tm(v301);
              v165, -1, -1;
              v162, -1, -1;

              v166 = v294;
            }

            else
            {
              v224 = *v336;
              outlined consume of MLDataValue(*v336, v158, 2);
              outlined consume of MLDataValue(v224, v158, 2);

              v166 = v156;
            }

            v323(v166, v340);
            v167 = v318;
            v168 = v326;
            v169 = v327;
            v170 = v319;
            v147 = seconds[0];
          }

LABEL_84:
          LOBYTE(v148) = v332;
LABEL_85:
          v200 = log;
          v201 = *type;
          v202 = v335;
          v203 = v328;
          goto LABEL_86;
        }

        outlined consume of MLDataValue(v330.value, *&v330.timescale, v330.epoch);
        v148 = v332;
      }

      else
      {
        outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v149, v148);
        v147 = seconds[0];
      }

      if (*(v148 + 16))
      {
        seconds[0] = v147;
        v171 = v338;

        v172 = specialized __RawDictionaryStorage.find<A>(_:)(6581861, 0xE300000000000000);
        if (v173)
        {
          v174 = *(*(v148 + 56) + 8 * v172);

          v175 = seconds[0];
          v176 = CMLSequence.value(at:)(v174);
          v147 = v175;
          if (v175 != 0.0)
          {
LABEL_126:
            v281 = *&v147;
            goto LABEL_128;
          }

          MLDataValue.init(_:)(v176, value_low);

          outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v338, v148);
          v177 = v330.value;
          if (!LOBYTE(v330.epoch))
          {
            if (v330.value < 0)
            {
              seconds[0] = 0.0;
              v233 = v314;
              v315(v300, v314, v340);
              v234 = v333;
              v235 = v333;

              v236 = Logger.logObject.getter(v235, v233);
              v237 = static os_log_type_t.info.getter(v235);
              v311 = v236;
              *v312 = v237;
              if (os_log_type_enabled(v236, v237))
              {
                v148 = swift_slowAlloc(22, -1);
                v301 = swift_slowAlloc(32, -1);
                v330.value = v301;
                *v148 = 134218242;
                *(v148 + 4) = v177;
                *(v148 + 12) = 2080;

                v238 = *v336;
                *(v148 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v336, v234, &v330.value);
                outlined consume of MLDataValue(v238, v234, 2);
                outlined consume of MLDataValue(v238, v234, 2);
                v234;
                v239 = v311;
                _os_log_impl(&dword_0, v311, v312[0], "End time %ld specified in video file %s is negative, using end of file automatically.", v148, 0x16u);
                v240 = v301;
                __swift_destroy_boxed_opaque_existential_1Tm(v301);
                v240, -1, -1;
                v241 = v148;
                LOBYTE(v148) = v332;
                v241, -1, -1;
                v242 = v239;
              }

              else
              {
                v243 = *v336;
                outlined consume of MLDataValue(*v336, v234, 2);
                outlined consume of MLDataValue(v243, v234, 2);
                v242 = v311;
              }

              v323(v300, v340);
              v167 = v318;
              v168 = v326;
              v169 = v327;
              v170 = v319;
              v147 = seconds[0];
            }

            else
            {
              outlined consume of MLDataValue(*v336, v333, 2);
              CMTimeMakeWithSeconds(&v330, v177, 1000);
              v167 = v330.value;
              v168 = v330.timescale;
              v169 = v330.flags;
              v170 = v330.epoch;
            }

            goto LABEL_85;
          }

          outlined consume of MLDataValue(v330.value, *&v330.timescale, v330.epoch);
        }

        else
        {
          outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v171, v148);
          v147 = seconds[0];
        }
      }
    }

    seconds[0] = v147;
    outlined consume of MLDataValue(*v336, v333, 2);
    if (*(v148 + 16))
    {
      v178 = v338;

      v179 = specialized __RawDictionaryStorage.find<A>(_:)(6581861, 0xE300000000000000);
      if (v180)
      {
        v181 = *(*(v148 + 56) + 8 * v179);

        v182 = seconds[0];
        v183 = CMLSequence.value(at:)(v181);
        v124 = *&v182;
        if (v182 != 0.0)
        {
LABEL_127:
          v281 = v124;
LABEL_128:
          swift_unexpectedError(v281, "CreateML/MLDataTable.Row.swift", 30, 1, 85);
          BUG();
        }

        MLDataValue.init(_:)(v183, value_low);

        outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v338, v148);
        v188 = v330.value;
        v189 = *&v330.timescale;
        if (LOBYTE(v330.epoch) == 2)
        {
          static _VideoUtilities.getSecondsFromTimeString(_:)(*&v330.value, v184, v185, v186, v187);
          v147 = 0.0;
          v190 = v188;
          v191 = v189;
          seconds[0] = value_low;
          goto LABEL_93;
        }

        seconds[0] = 0.0;
        outlined consume of MLDataValue(v330.value, *&v330.timescale, v330.epoch);
      }

      else
      {
        outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v178, v148);
      }

      v192 = v340;
      v193 = v310;
    }

    else
    {
      v192 = v340;
      v193 = v310;
    }

    v315(v193, v314, v192);
    v194 = v322;
    v195 = v322;
    swift_bridgeObjectRetain_n(v322, 2);
    v196 = Logger.logObject.getter(v195, 2);
    v197 = static os_log_type_t.error.getter(v195);
    if (os_log_type_enabled(v196, v197))
    {
      v198 = swift_slowAlloc(12, -1);
      v333 = swift_slowAlloc(32, -1);
      v330.value = v333;
      *v198 = 136315138;

      *(v198 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v298, v194, &v330.value);
      swift_bridgeObjectRelease_n(v194, 3);
      _os_log_impl(&dword_0, v196, v197, "Unsupported end time format in annotation file. Please provide either a Double or Int value in seconds, or a String value in hours:minutes:seconds.fraction, minutes:seconds.fraction, or seconds.fraction format. Skipping end time for file %s", v198, 0xCu);
      v199 = v333;
      __swift_destroy_boxed_opaque_existential_1Tm(v333);
      v199, -1, -1;
      v198, -1, -1;

      v323(v310, v340);
      v167 = v318;
      v168 = v326;
      v169 = v327;
      v170 = v319;
      v147 = seconds[0];
      goto LABEL_84;
    }

    swift_bridgeObjectRelease_n(v194, 2);
    v323(v310, v340);
    v167 = v318;
    v168 = v326;
    v169 = v327;
    v170 = v319;
    v147 = seconds[0];
    LOBYTE(v148) = v332;
    v200 = log;
    v201 = *type;
    v202 = v335;
    v203 = v328;
LABEL_86:
    v204 = static _VideoUtilities.getHandKeyPointsFromVideoUrl(url:startTime:endTime:targetFrameRate:)(v313, v200, v202 | (v201 << 32), v203, v167, v168 | (v169 << 32), v284, v170);
    if (v147 != 0.0)
    {
      outlined consume of MLDataValue(v307, v306, 2);
      v322;
      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v338, v148);
      (*(v308 + 8))(v313, v309);
      goto LABEL_116;
    }

    v205 = currentFileIndex;
    if (__OFADD__(v285, currentFileIndex))
    {
      BUG();
    }

    v206 = v204;
    seconds[0] = 0.0;
    v207 = v204[2];
    v333 = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5(v285 + currentFileIndex, v207);
    *v336 = _sSa9repeating5countSayxGx_SitcfCSS_Tt1g5(v307, v306, v207);
    v208 = _sSa9repeating5countSayxGx_SitcfCSS_Tt1g5(v298, v322, v207);
    specialized Array.append<A>(contentsOf:)(v206);
    specialized Array.append<A>(contentsOf:)(v333);
    specialized Array.append<A>(contentsOf:)(*v336);
    specialized Array.append<A>(contentsOf:)(v208);
    v209 = v205;
    v210 = v320;
    _TablePrinter.printRow(currentFileIndex:)(v209);
    v211 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v212 = swift_allocObject(v211, 72, 7);
    *(v212 + 16) = 1;
    *(v212 + 24) = 2;
    value_low = -Date.timeIntervalSinceNow.getter();
    *(v212 + 56) = &type metadata for Double;
    *(v212 + 64) = &protocol witness table for Double;
    *(v212 + 32) = value_low;
    v333 = String.init(format:_:)(1714826789, 0xE400000000000000, v212);
    v214 = v213;
    v215 = v289;
    v315(v289, v314, v340);
    v216 = v299;
    v217 = v299;
    outlined init with copy of MLTrainingSessionParameters(v210, v299, type metadata accessor for _TablePrinter);

    v218 = Logger.logObject.getter(v214, v217);
    v219 = static os_log_type_t.debug.getter();
    *v336 = v219;
    if (os_log_type_enabled(v218, v219))
    {
      v322 = v218;
      v220 = swift_slowAlloc(32, -1);
      v221 = swift_slowAlloc(32, -1);
      v330.value = v221;
      *v220 = 134218498;
      if (__OFADD__(1, currentFileIndex))
      {
        BUG();
      }

      *(v220 + 4) = currentFileIndex + 1;
      *(v220 + 12) = 2048;
      v222 = *v299;
      outlined destroy of MLActivityClassifier.ModelParameters(v299, type metadata accessor for _TablePrinter);
      *(v220 + 14) = v222;
      *(v220 + 22) = 2080;

      *(v220 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v333, v214, &v330.value);
      swift_bridgeObjectRelease_n(v214, 3);
      v223 = v322;
      _os_log_impl(&dword_0, v322, v336[0], "Extracted features from %ld out of %ld annotated video clips, elapsed time: %s", v220, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v221);
      v221, -1, -1;
      v220, -1, -1;

      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v338, v332);
      v323(v289, v340);
      (*(v308 + 8))(v313, v309);
    }

    else
    {
      outlined destroy of MLActivityClassifier.ModelParameters(v216, type metadata accessor for _TablePrinter);
      swift_bridgeObjectRelease_n(v214, 2);

      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v338, v332);
      v323(v215, v340);
      (*(v308 + 8))(v313, v309);
    }
  }

  outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v338, v58);
  v266 = 2;
  v66 = *v336;
  v67 = v333;
LABEL_112:
  outlined consume of MLDataValue(v66, v67, v266);
LABEL_114:
  v330.value = 0;
  *&v330.timescale = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  v267._object = "Annotated Video Clips" + 0x8000000000000000;
  v267._countAndFlagsBits = 0xD000000000000029;
  String.append(_:)(v267);
  v302 = currentFileIndex;
  v268 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v270 = v269;
  v267._countAndFlagsBits = v268;
  v267._object = v269;
  String.append(_:)(v267);
  v270;
  v267._object = 0xE900000000000065;
  v267._countAndFlagsBits = 0x6C626174206E6920;
  String.append(_:)(v267);
  *seconds = *&v330.value;
  v271 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v271, 0, 0);
  *v272 = *seconds;
  *(v272 + 16) = 0;
  *(v272 + 32) = 0;
  *(v272 + 48) = 0;
  swift_willThrow();
  v273 = currentFileIndex;
  v274 = v338;
  v275 = v332;
LABEL_115:
  outlined consume of (offset: Int, element: MLDataTable.Row)?(v273, v274, v275);
LABEL_116:
  outlined consume of Result<_DataTable, Error>(v303, v304);
  return outlined destroy of MLActivityClassifier.ModelParameters(v320, type metadata accessor for _TablePrinter);
}

uint64_t static MLHandActionClassifier.FeatureExtractor.extractFeatures(from:targetFrameRate:startingSessionId:)(uint64_t a1, uint64_t a2, double a3)
{
  v11 = a2;
  v12 = a3;
  v13 = v3;
  v6 = *a1;
  v7 = *(a1 + 8);
  inited = swift_initStackObject(v5, v10);
  *(inited + 32) = _swiftEmptyArrayStorage;
  *(inited + 40) = _swiftEmptyArrayStorage;
  *(inited + 48) = _swiftEmptyArrayStorage;
  *(inited + 56) = _swiftEmptyArrayStorage;
  *(inited + 16) = v6;
  *(inited + 24) = v7;
  if (v4)
  {
    return outlined copy of Result<_DataTable, Error>(v6, v7);
  }

  outlined copy of Result<_DataTable, Error>(v6, v7);
  MLHandActionClassifier.FeatureExtractor.extractFeaturesFromFileTable(_:startingSessionId:)(v11, v12);
}

uint64_t MLHandActionClassifier.FeatureExtractor.deinit()
{
  outlined consume of Result<_DataTable, Error>(*(v0 + 16), *(v0 + 24));
  *(v0 + 32);
  *(v0 + 40);
  *(v0 + 48);
  *(v0 + 56);
  return v0;
}

char closure #1 in Sequence<>.contains(_:)specialized partial apply(unint64_t *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1);
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1);
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1);
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1);
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1);
}

uint64_t storeEnumTagSinglePayload for _MLDevice(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  LODWORD(result) = 0;
  if (a3 >= 0xFF)
  {
    v4 = a3 + 1;
    LODWORD(result) = 1;
    if (v4 >= 0xFF00)
    {
      LODWORD(result) = 2 * (v4 >= 0xFFFF00) + 2;
    }
  }

  if (a2 > 0xFE)
  {
    v5 = a2 - 255;
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
          *a1 = a2 + 1;
        }

        break;
    }
  }

  return result;
}

CreateML::_MLDevice_optional __swiftcall _MLDevice.init(rawValue:)(Swift::String rawValue)
{
  v1 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of _MLDevice.init(rawValue:), rawValue);
  rawValue._object;
  result.value = 2 - (v1 == 1);
  if (!v1)
  {
    return 0;
  }

  return result;
}

uint64_t _MLDevice.rawValue.getter(char a1)
{
  result = 1869903201;
  if (a1)
  {
    return 7696483;
  }

  return result;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(char a1)
{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1 & 1);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1 & 1);
}

{
  Hasher.init(_seed:)(0);
  v1 = ColumnDescriptor.FeatureType.rawValue.getter(a1);
  v3 = v2;
  String.hash(into:)(v5, v1);
  v3;
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1)
{
  return specialized RawRepresentable<>.hashValue.getter(a1, specialized RawRepresentable<>.hash(into:));
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, specialized RawRepresentable<>.hash(into:));
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, specialized RawRepresentable<>.hash(into:));
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(unsigned int a1, void (*a2)(_BYTE *, void))
{
  Hasher.init(_seed:)(0);
  a2(v3, a1);
  return Hasher._finalize()();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, char a2)
{
  v2 = 1869903201;
  if (a2)
  {
    v2 = 7696483;
  }

  String.hash(into:)(a1, v2);
  return 0;
}

{
  v2 = 122;
  switch(a2)
  {
    case 0:
      v3 = 0x696C616974696E69;
      break;
    case 1:
      v3 = 0x6974636172747865;
      goto LABEL_7;
    case 2:
      v2 = 0;
      v3 = 0x676E696E69617274;
      break;
    case 3:
      v3 = 0x697461756C617665;
LABEL_7:
      v2 = 110;
      break;
    case 4:
      v2 = 105;
      v3 = 0x636E657265666E69;
      break;
  }

  String.hash(into:)(a1, v3);
  return v2;
}

{
  v2 = ColumnDescriptor.FeatureType.rawValue.getter(a2);
  v4 = v3;
  String.hash(into:)(a1, v2);
  return v4;
}

{
  v2 = 121;
  switch(a2)
  {
    case 0:
      v3 = 0x54746E656D656C65;
      break;
    case 1:
      v2 = 0;
      v3 = 1702521203;
      break;
    case 2:
      v2 = 101;
      v3 = 0x69726F6765746163;
      break;
    case 3:
      v2 = 111;
      v3 = 0x7470697263736564;
      break;
  }

  String.hash(into:)(a1, v3);
  return v2;
}

{
  v2 = 7237219;
  if (a2)
  {
    v2 = 0x6574694C6E6E63;
  }

  String.hash(into:)(a1, v2);
  return 0;
}

{
  switch(a2)
  {
    case 0:
      LOBYTE(v2) = 0;
      v3 = 1936945004;
      break;
    case 1:
      LOBYTE(v2) = 111;
      v3 = 0x4C746E65746E6F63;
      break;
    case 2:
      LOBYTE(v2) = 115;
      v3 = 0x736F4C656C797473;
      break;
    case 3:
      LOBYTE(v2) = 0;
      v3 = 0x7963617275636361;
      break;
    case 4:
      LOBYTE(v2) = 111;
      v3 = 0x69746164696C6176;
      break;
    case 5:
      v2 = "accuracy" + 0x8000000000000000;
      v3 = 0xD000000000000012;
      break;
    case 6:
      v3 = 0xD000000000000010;
      v2 = "validationAccuracy" + 0x8000000000000000;
      break;
    case 7:
      v2 = "stylizedImageURL" + 0x8000000000000000;
      v3 = 0xD000000000000014;
      break;
    case 8:
      LOBYTE(v2) = 114;
      v3 = 0x456D756D6978616DLL;
      break;
    case 9:
      v2 = "rror" + 0x8000000000000000;
      v3 = 0xD00000000000001ELL;
      break;
    case 10:
      v2 = "validationRootMeanSquaredError" + 0x8000000000000000;
      v3 = 0xD000000000000016;
      break;
  }

  String.hash(into:)(a1, v3);
  return v2;
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2)
{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, specialized RawRepresentable<>.hash(into:));
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, specialized RawRepresentable<>.hash(into:));
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, specialized RawRepresentable<>.hash(into:));
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, char a2)
{
  Hasher.init(_seed:)(a1);
  v3 = 7237219;
  if (a2)
  {
    v3 = 0x6574694C6E6E63;
  }

  String.hash(into:)(v5, v3);
  0;
  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)(a1);
  v2 = ColumnDescriptor.FeatureType.rawValue.getter(a2);
  v4 = v3;
  String.hash(into:)(v6, v2);
  v4;
  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)(a1);
  v3 = 1869903201;
  if (a2)
  {
    v3 = 7696483;
  }

  String.hash(into:)(v5, v3);
  0;
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, unsigned int a2, void (*a3)(_BYTE *, void))
{
  Hasher.init(_seed:)(a1);
  a3(v5, a2);
  return Hasher._finalize()();
}

CreateML::_MLDevice_optional protocol witness for RawRepresentable.init(rawValue:) in conformance _MLDevice(Swift::String *a1)
{
  v2 = v1;
  result.value = _MLDevice.init(rawValue:)(*a1).value;
  v2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance _MLDevice()
{
  v2 = v0;
  result = _MLDevice.rawValue.getter(*v1);
  *v2 = result;
  v2[1] = v4;
  return result;
}

uint64_t lazy protocol witness table accessor for type _MLDevice and conformance _MLDevice()
{
  result = lazy protocol witness table cache variable for type _MLDevice and conformance _MLDevice;
  if (!lazy protocol witness table cache variable for type _MLDevice and conformance _MLDevice)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for _MLDevice, &type metadata for _MLDevice);
    lazy protocol witness table cache variable for type _MLDevice and conformance _MLDevice = result;
  }

  return result;
}

unint64_t MLCreateError.failureReason.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  if (v7 >= 3)
  {
    if (v7 == 3)
    {
      return 0xD000000000000024;
    }

    else
    {
      v8 = 0xD000000000000018;
      if (v6 | v5 | v2 | v3 | v4 | v1)
      {
        return 0xD00000000000001BLL;
      }

      return v8;
    }
  }

  else
  {
    outlined copy of MLCreateError(v1, v2, v3, v4, v5, v6, v7);
  }

  return v1;
}

uint64_t outlined copy of MLCreateError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  result = a7;
  if (a7 >= 3u)
  {
    if (a7 != 3)
    {
      return result;
    }
  }
}

unint64_t MLCreateError.errorDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  switch(*(v0 + 48))
  {
    case 0:
      _StringGuts.grow(_:)(26);
      0;
      v5 = 0xD000000000000018;
      goto LABEL_8;
    case 1:
      _StringGuts.grow(_:)(23);
      0;
      v5 = 0xD000000000000015;
      goto LABEL_8;
    case 2:
      _StringGuts.grow(_:)(21);
      0;
      v5 = 0xD000000000000013;
LABEL_8:
      v10 = v5;
      v8._countAndFlagsBits = v1;
      v8._object = v2;
      goto LABEL_9;
    case 3:
      v10 = 0;
      v9 = *(v0 + 32);
      _StringGuts.grow(_:)(111);
      v7._object = "eate the session." + 0x8000000000000000;
      v7._countAndFlagsBits = 0xD000000000000039;
      String.append(_:)(v7);
      v7._countAndFlagsBits = v1;
      v7._object = v2;
      String.append(_:)(v7);
      v7._object = "n incompatible value for " + 0x8000000000000000;
      v7._countAndFlagsBits = 0xD00000000000001BLL;
      String.append(_:)(v7);
      v7._countAndFlagsBits = v3;
      v7._object = v4;
      String.append(_:)(v7);
      v7._object = ". Session was created with " + 0x8000000000000000;
      v7._countAndFlagsBits = 0xD000000000000014;
      String.append(_:)(v7);
      String.append(_:)(v9);
      v8._countAndFlagsBits = 46;
      v8._object = 0xE100000000000000;
LABEL_9:
      String.append(_:)(v8);
      result = v10;
      break;
    case 4:
      if (*(v0 + 40) | *(v0 + 32) | v2 | v3 | v4 | v1)
      {
        result = 0xD000000000000051;
      }

      else
      {
        result = 0xD00000000000001CLL;
      }

      break;
  }

  return result;
}

uint64_t MLCreateError.errorCode.getter()
{
  result = v0[3].u8[0];
  switch(v0[3].i8[0])
  {
    case 0:
      return result;
    case 1:
      result = 1;
      break;
    case 2:
      result = 2;
      break;
    case 3:
      result = 4;
      break;
    case 4:
      v2 = _mm_or_si128(_mm_loadu_si128(v0 + 2), _mm_loadu_si128(v0 + 1));
      result = 2 * ((v0->i64[0] | v0->i64[1] | _mm_or_si128(_mm_shuffle_epi32(v2, 238), v2).u64[0]) != 0) + 3;
      break;
  }

  return result;
}

void *MLCreateError.errorUserInfo.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v33 = *(v0 + 16);
  v34 = *(v0 + 24);
  v32 = *(v0 + 32);
  v31 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any?)>);
  inited = swift_initStackObject(v4, v20);
  inited[2] = 2;
  inited[3] = 4;
  inited[4] = static String._unconditionallyBridgeFromObjectiveC(_:)(NSLocalizedDescriptionKey);
  inited[5] = v6;
  v30 = v1;
  v21 = v1;
  v22 = v2;
  v23 = v33;
  v24 = v34;
  v25 = v32;
  v26 = v31;
  v27 = v3;
  outlined copy of MLCreateError(v1, v2, v33, v34, v32, v31, v3);
  v7 = MLCreateError.errorDescription.getter();
  v9 = v8;
  v29 = v3;
  v28 = v2;
  outlined consume of MLCreateError(v30, v2, v33, v34, v32, v31, v3);
  if (v9)
  {
    v10 = &type metadata for String;
  }

  else
  {
    inited[8] = 0;
    v7 = 0;
    v9 = 0;
    v10 = 0;
  }

  inited[6] = v7;
  inited[7] = v9;
  inited[9] = v10;
  inited[10] = static String._unconditionallyBridgeFromObjectiveC(_:)(NSLocalizedFailureReasonErrorKey);
  inited[11] = v11;
  if (v29 >= 3)
  {
    if (v29 == 3)
    {
      v13 = "Training data was modified." + 0x8000000000000000;
      v14 = 0xD000000000000024;
    }

    else
    {
      v14 = 0xD000000000000018;
      if (v31 | v32 | v28 | v33 | v34 | v30)
      {
        v13 = "com.apple.CreateML" + 0x8000000000000000;
        v14 = 0xD00000000000001BLL;
      }

      else
      {
        v13 = "rs are incompatible." + 0x8000000000000000;
      }
    }
  }

  else
  {
    v12 = v30;
    v13 = v28;
    outlined copy of MLCreateError(v30, v28, v33, v34, v32, v31, v29);
    v14 = v12;
  }

  inited[15] = &type metadata for String;
  inited[12] = v14;
  inited[13] = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
  v16 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, v15, &protocol witness table for String);
  v17 = v16;
  v18 = specialized Dictionary.compactMapValues<A>(_:)(v16);
  v17;
  return v18;
}

void *specialized Dictionary.compactMapValues<A>(_:)(uint64_t a1)
{
  v1 = _swiftEmptyDictionarySingleton;
  v42 = _swiftEmptyDictionarySingleton;
  specialized _NativeDictionary.makeIterator()(a1);
  v44 = v24;
  v46 = v25;
  v2 = v27;
  v43 = v28;
  v41 = v26;
  v45 = (v26 + 64) >> 6;

  while (1)
  {
    v3 = v43;
    if (v43)
    {
      v4 = v2;
      goto LABEL_24;
    }

    v5 = v2 + 1;
    if (__OFADD__(1, v2))
    {
      BUG();
    }

    if (v5 >= v45)
    {
      goto LABEL_41;
    }

    v3 = *(v46 + 8 * v5);
    if (v3)
    {
      v4 = v2 + 1;
      goto LABEL_24;
    }

    v4 = v2 + 2;
    if (v2 + 2 >= v45)
    {
      goto LABEL_41;
    }

    v3 = *(v46 + 8 * v5 + 8);
    if (!v3)
    {
      v4 = v2 + 3;
      if (v2 + 3 >= v45)
      {
        goto LABEL_41;
      }

      v3 = *(v46 + 8 * v5 + 16);
      if (!v3)
      {
        v4 = v2 + 4;
        if (v2 + 4 >= v45)
        {
          goto LABEL_41;
        }

        v3 = *(v46 + 8 * v5 + 24);
        if (!v3)
        {
          v4 = v2 + 5;
          if (v2 + 5 >= v45)
          {
            goto LABEL_41;
          }

          v3 = *(v46 + 8 * v5 + 32);
          if (!v3)
          {
            v4 = v2 + 6;
            if (v2 + 6 >= v45)
            {
              goto LABEL_41;
            }

            v3 = *(v46 + 8 * v5 + 40);
            if (!v3)
            {
              v4 = v2 + 7;
              if (v2 + 7 >= v45)
              {
                goto LABEL_41;
              }

              v3 = *(v46 + 8 * v5 + 48);
              if (!v3)
              {
                break;
              }
            }
          }
        }
      }
    }

LABEL_24:
    v7 = v3;
    _BitScanForward64(&v3, v3);
    v43 = v7 & (v7 - 1);
    v2 = v4;
    v8 = v3 | (v4 << 6);
    v9 = *(v44 + 48);
    v10 = *(v9 + 16 * v8 + 8);
    *&v33 = *(v9 + 16 * v8);
    *(&v33 + 1) = v10;
    outlined init with copy of Any?(*(v44 + 56) + 32 * v8, v34);
    v39 = v34[1];
    v38 = v34[0];
    v37 = v33;
    outlined init with copy of Any?(&v38, &v30);
    if (v31)
    {
      v40 = v4;
      outlined init with take of Any(&v30, v29);
      v36[1] = v39;
      v36[0] = v38;
      v35 = v37;
      outlined init with take of Any(v29, v32);
      v11 = v1[2];
      if (v1[3] <= v11)
      {

        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v11 + 1, 1u);
        v1 = v42;
      }

      else
      {
      }

      v12 = v35;
      Hasher.init(_seed:)(v1[5]);
      String.hash(into:)(&v30, v12);
      v13 = Hasher._finalize()() & ~(-1 << *(v1 + 32));
      v14 = v13 >> 6;
      v15 = ~v1[(v13 >> 6) + 8] >> v13 << v13;
      if (v15)
      {
        _BitScanForward64(&v15, v15);
        v16 = v15 | v13 & 0xFFFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = (63 - (-1 << *(v1 + 32))) >> 6;
        v18 = 0;
        do
        {
          if (++v14 == v17 && (v18 & 1) != 0)
          {
            BUG();
          }

          v19 = v14 == v17;
          if (v14 == v17)
          {
            v14 = 0;
          }

          v18 |= v19;
          v20 = v1[v14 + 8];
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

      v1[(v16 >> 6) + 8] |= 1 << v16;
      *(v1[6] + 16 * v16) = v12;
      outlined init with take of Any(v32, (v1[7] + 32 * v16));
      ++v1[2];
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, &demangling cache variable for type metadata for Any?);
      v2 = v40;
    }

    else
    {

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v37, &demangling cache variable for type metadata for (key: String, value: Any?));
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v30, &demangling cache variable for type metadata for Any?);
    }
  }

  v6 = v2 + 8;
  while (v6 < v45)
  {
    v3 = *(v46 + 8 * v6++);
    if (v3)
    {
      v4 = v6 - 1;
      goto LABEL_24;
    }
  }

LABEL_41:
  outlined consume of [String : [Double]].Iterator._Variant(v44);
  return v1;
}

{
  v1 = _swiftEmptyDictionarySingleton;
  v46 = _swiftEmptyDictionarySingleton;
  specialized _NativeDictionary.makeIterator()(a1);
  v47 = v25;
  v51 = v26;
  v2 = v28;
  v3 = v29;
  v45 = v27;
  v50 = (v27 + 64) >> 6;
  v40 = "validationRootMeanSquaredError" + 0x8000000000000000;
  v41 = "rror" + 0x8000000000000000;
  v42 = "stylizedImageURL" + 0x8000000000000000;
  v43 = "validationAccuracy" + 0x8000000000000000;
  v44 = "accuracy" + 0x8000000000000000;

  v48 = 0x7FFFFFFFFFFFFFC0;
  v49 = &type metadata for Any + 8;
  while (1)
  {
    if (v3)
    {
      v4 = v2;
      goto LABEL_24;
    }

    v5 = v2 + 1;
    if (__OFADD__(1, v2))
    {
      BUG();
    }

    if (v5 >= v50)
    {
      goto LABEL_52;
    }

    v3 = *(v51 + 8 * v5);
    if (v3)
    {
      v4 = v2 + 1;
      goto LABEL_24;
    }

    v4 = v2 + 2;
    if (v2 + 2 >= v50)
    {
      goto LABEL_52;
    }

    v3 = *(v51 + 8 * v5 + 8);
    if (!v3)
    {
      v4 = v2 + 3;
      if (v2 + 3 >= v50)
      {
        goto LABEL_52;
      }

      v3 = *(v51 + 8 * v5 + 16);
      if (!v3)
      {
        v4 = v2 + 4;
        if (v2 + 4 >= v50)
        {
          goto LABEL_52;
        }

        v3 = *(v51 + 8 * v5 + 24);
        if (!v3)
        {
          v4 = v2 + 5;
          if (v2 + 5 >= v50)
          {
            goto LABEL_52;
          }

          v3 = *(v51 + 8 * v5 + 32);
          if (!v3)
          {
            v4 = v2 + 6;
            if (v2 + 6 >= v50)
            {
              goto LABEL_52;
            }

            v3 = *(v51 + 8 * v5 + 40);
            if (!v3)
            {
              v4 = v2 + 7;
              if (v2 + 7 >= v50)
              {
                goto LABEL_52;
              }

              v3 = *(v51 + 8 * v5 + 48);
              if (!v3)
              {
                break;
              }
            }
          }
        }
      }
    }

LABEL_24:
    _BitScanForward64(&v7, v3);
    v3 &= v3 - 1;
    v8 = v7 | (v4 << 6);
    LOBYTE(v31[0]) = *(*(v47 + 48) + v8);
    outlined init with copy of Any(*(v47 + 56) + 32 * v8, v31 + 8);
    v35 = v32;
    v34 = v31[1];
    v33 = v31[0];
    outlined init with copy of Any(&v33 + 8, v30);
    if (swift_dynamicCast(v36, v30, v49, &type metadata for Double, 6))
    {
      v38 = v4;
      v39 = *&v36[0];
      v37 = v35;
      v36[1] = v34;
      v36[0] = v33;
      v9 = v1[2];
      if (v1[3] <= v9)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v9 + 1, 1u);
        v1 = v46;
      }

      v10 = v36[0];
      Hasher.init(_seed:)(v1[5]);
      v52 = v10;
      switch(v10)
      {
        case 0:
          v11 = 1936945004;
          v12 = 0;
          break;
        case 1:
          v11 = 0x4C746E65746E6F63;
          v12 = 111;
          break;
        case 2:
          v11 = 0x736F4C656C797473;
          v12 = 115;
          break;
        case 3:
          v11 = 0x7963617275636361;
          v12 = 0;
          break;
        case 4:
          v11 = 0x69746164696C6176;
          v12 = 111;
          break;
        case 5:
          v11 = 0xD000000000000012;
          v12 = v44;
          break;
        case 6:
          v11 = 0xD000000000000010;
          v12 = v43;
          break;
        case 7:
          v11 = 0xD000000000000014;
          v12 = v42;
          break;
        case 8:
          v11 = 0x456D756D6978616DLL;
          v12 = 114;
          break;
        case 9:
          v11 = 0xD00000000000001ELL;
          v12 = v41;
          break;
        case 10:
          v11 = 0xD000000000000016;
          v12 = v40;
          break;
      }

      String.hash(into:)(v30, v11);
      v12;
      v13 = Hasher._finalize()() & ~(-1 << *(v1 + 32));
      v14 = v13 >> 6;
      v15 = ~v1[(v13 >> 6) + 8] >> v13 << v13;
      if (v15)
      {
        _BitScanForward64(&v16, v15);
        v17 = v16 | v48 & v13;
      }

      else
      {
        v18 = (63 - (-1 << *(v1 + 32))) >> 6;
        v19 = 0;
        do
        {
          if (++v14 == v18 && (v19 & 1) != 0)
          {
            BUG();
          }

          v20 = v14 == v18;
          if (v14 == v18)
          {
            v14 = 0;
          }

          v19 |= v20;
          v21 = v1[v14 + 8];
        }

        while (v21 == -1);
        v22 = ~v21;
        v23 = 64;
        if (v22)
        {
          _BitScanForward64(&v23, v22);
        }

        v17 = v23 + (v14 << 6);
      }

      v1[(v17 >> 6) + 8] |= 1 << v17;
      *(v1[6] + v17) = v52;
      *(v1[7] + 8 * v17) = v39;
      ++v1[2];
      __swift_destroy_boxed_opaque_existential_1Tm(v36 + 1);
      v2 = v38;
    }

    else
    {
      *&v36[0] = 0;
      BYTE8(v36[0]) = 1;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v33, &demangling cache variable for type metadata for (key: MLProgress.Metric, value: Any));
      v2 = v4;
    }
  }

  v6 = v2 + 8;
  while (v6 < v50)
  {
    v3 = *(v51 + 8 * v6++);
    if (v3)
    {
      v4 = v6 - 1;
      goto LABEL_24;
    }
  }

LABEL_52:
  outlined consume of [String : [Double]].Iterator._Variant(v47);
  return v1;
}

{
  v68 = 0x8000000000000000;
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v52 = v40;
  v69 = type metadata accessor for URL(0);
  v66 = *(v69 - 8);
  v4 = v66[8];
  v5 = alloca(v4);
  v6 = alloca(v4);
  v67 = v40;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v56 = v40;
  v9 = _swiftEmptyDictionarySingleton;
  v63 = _swiftEmptyDictionarySingleton;
  specialized _NativeDictionary.makeIterator()(a1);
  v65 = v40[1];
  v72 = v40[2];
  v10 = v42;
  v11 = v43;
  v62 = v41;
  v71 = (v41 + 64) >> 6;
  v57 = "validationRootMeanSquaredError" + 0x8000000000000000;
  v58 = "rror" + 0x8000000000000000;
  v59 = "stylizedImageURL" + 0x8000000000000000;
  v60 = "validationAccuracy" + 0x8000000000000000;
  v61 = "accuracy" + 0x8000000000000000;

  v53 = &type metadata for Any + 8;
  v68 -= 64;
  while (1)
  {
    if (v11)
    {
      v12 = v10;
      v13 = v65;
      goto LABEL_24;
    }

    v14 = v10 + 1;
    v13 = v65;
    if (__OFADD__(1, v10))
    {
      BUG();
    }

    if (v14 >= v71)
    {
      goto LABEL_52;
    }

    v11 = *(v72 + 8 * v14);
    if (v11)
    {
      v12 = v10 + 1;
      goto LABEL_24;
    }

    v12 = v10 + 2;
    if (v10 + 2 >= v71)
    {
      goto LABEL_52;
    }

    v11 = *(v72 + 8 * v14 + 8);
    if (!v11)
    {
      v12 = v10 + 3;
      if (v10 + 3 >= v71)
      {
        goto LABEL_52;
      }

      v11 = *(v72 + 8 * v14 + 16);
      if (!v11)
      {
        v12 = v10 + 4;
        if (v10 + 4 >= v71)
        {
          goto LABEL_52;
        }

        v11 = *(v72 + 8 * v14 + 24);
        if (!v11)
        {
          v12 = v10 + 5;
          if (v10 + 5 >= v71)
          {
            goto LABEL_52;
          }

          v11 = *(v72 + 8 * v14 + 32);
          if (!v11)
          {
            v12 = v10 + 6;
            if (v10 + 6 >= v71)
            {
              goto LABEL_52;
            }

            v11 = *(v72 + 8 * v14 + 40);
            if (!v11)
            {
              v12 = v10 + 7;
              if (v10 + 7 >= v71)
              {
                goto LABEL_52;
              }

              v11 = *(v72 + 8 * v14 + 48);
              if (!v11)
              {
                break;
              }
            }
          }
        }
      }
    }

LABEL_24:
    v70 = v9;
    _BitScanForward64(&v16, v11);
    v64 = v11 & (v11 - 1);
    v17 = v12;
    v18 = v16 | (v12 << 6);
    LOBYTE(v45[0]) = *(*(v13 + 48) + v18);
    outlined init with copy of Any(*(v13 + 56) + 32 * v18, v45 + 8);
    v51 = v46;
    v50 = v45[1];
    v49 = v45[0];
    outlined init with copy of Any(&v49 + 8, v44);
    v19 = v52;
    v20 = v69;
    v21 = swift_dynamicCast(v52, v44, v53, v69, 6);
    __swift_storeEnumTagSinglePayload(v19, v21 ^ 1u, 1, v20);
    if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v49, &demangling cache variable for type metadata for (key: MLProgress.Metric, value: Any));
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for URL?);
      v10 = v17;
      v11 = v64;
      v9 = v70;
    }

    else
    {
      v54 = v17;
      v22 = v66[4];
      v23 = v56;
      v22(v56, v19, v20);
      v48 = v51;
      v47[1] = v50;
      v47[0] = v49;
      v55 = v22;
      v22(v67, v23, v20);
      v24 = v70[2];
      if (v70[3] <= v24)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24 + 1, 1u);
      }

      v9 = v63;
      v25 = v47[0];
      Hasher.init(_seed:)(v63[5]);
      LOBYTE(v70) = v25;
      v11 = v64;
      switch(v25)
      {
        case 0:
          v26 = 1936945004;
          v27 = 0;
          break;
        case 1:
          v26 = 0x4C746E65746E6F63;
          v27 = 111;
          break;
        case 2:
          v26 = 0x736F4C656C797473;
          v27 = 115;
          break;
        case 3:
          v26 = 0x7963617275636361;
          v27 = 0;
          break;
        case 4:
          v26 = 0x69746164696C6176;
          v27 = 111;
          break;
        case 5:
          v26 = 0xD000000000000012;
          v27 = v61;
          break;
        case 6:
          v26 = 0xD000000000000010;
          v27 = v60;
          break;
        case 7:
          v26 = 0xD000000000000014;
          v27 = v59;
          break;
        case 8:
          v26 = 0x456D756D6978616DLL;
          v27 = 114;
          break;
        case 9:
          v26 = 0xD00000000000001ELL;
          v27 = v58;
          break;
        case 10:
          v26 = 0xD000000000000016;
          v27 = v57;
          break;
      }

      String.hash(into:)(v44, v26);
      v27;
      v28 = Hasher._finalize()() & ~(-1 << *(v9 + 32));
      v29 = v28 >> 6;
      v30 = ~v9[(v28 >> 6) + 8] >> v28 << v28;
      if (v30)
      {
        _BitScanForward64(&v30, v30);
        v31 = v30 | v68 & v28;
        v32 = v69;
      }

      else
      {
        v33 = (63 - (-1 << *(v9 + 32))) >> 6;
        v34 = 0;
        v32 = v69;
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
          v36 = v9[v29 + 8];
        }

        while (v36 == -1);
        v37 = ~v36;
        v38 = 64;
        if (v37)
        {
          _BitScanForward64(&v38, v37);
        }

        v31 = v38 + (v29 << 6);
      }

      v9[(v31 >> 6) + 8] |= 1 << v31;
      *(v9[6] + v31) = v70;
      v55(v9[7] + v66[9] * v31, v67, v32);
      ++v9[2];
      __swift_destroy_boxed_opaque_existential_1Tm(v47 + 1);
      v10 = v54;
    }
  }

  v15 = v10 + 8;
  while (v15 < v71)
  {
    v11 = *(v72 + 8 * v15++);
    if (v11)
    {
      v12 = v15 - 1;
      goto LABEL_24;
    }
  }

LABEL_52:
  outlined consume of [String : [Double]].Iterator._Variant(v65);
  return v9;
}

unint64_t MLCreateError.description.getter()
{
  return MLCreateError.description.getter();
}

{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  if (v7 > 2u)
  {
    v14 = *(v0 + 48);
    v11 = *(v0 + 32);
    v12 = *(v0 + 40);
    outlined copy of MLCreateError(v1, v2, v3, v4, v5, v6, v7);
    v13 = MLCreateError.errorDescription.getter();
    v9 = v8;
    outlined consume of MLCreateError(v1, v2, v3, v4, v11, v12, v14);
    if (!v9)
    {
      BUG();
    }

    return v13;
  }

  else
  {
    outlined copy of MLCreateError(v1, v2, v3, v4, v5, v6, v7);
  }

  return v1;
}

uint64_t outlined consume of MLCreateError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  result = a7;
  if (a7 < 3u)
  {
    return a2;
  }

  if (a7 == 3)
  {
    v8 = a6;
    v9 = a4;
    a2;
    v9;
    return v8;
  }

  return result;
}

uint64_t base witness table accessor for Error in MLCreateError(uint64_t a1, uint64_t a2)
{
  return lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
}

{
  return base witness table accessor for Error in MLCreateError(a1, a2);
}

uint64_t initializeWithCopy for MLCreateError(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  outlined copy of MLCreateError(*a2, v3, v4, v5, v7, v8, v9);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  return a1;
}

uint64_t assignWithCopy for MLCreateError(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16 = *(a2 + 40);
  v17 = *(a2 + 48);
  outlined copy of MLCreateError(*a2, v4, v5, v6, v15, v16, v17);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v15;
  *(a1 + 40) = v16;
  v13 = *(a1 + 48);
  *(a1 + 48) = v17;
  outlined consume of MLCreateError(v7, v8, v9, v10, v11, v12, v13);
  return a1;
}

uint64_t __swift_memcpy49_8(uint64_t a1, __int128 *a2)
{
  result = a1;
  *(a1 + 48) = *(a2 + 48);
  v3 = *a2;
  v4 = a2[1];
  *(a1 + 32) = a2[2];
  *(a1 + 16) = v4;
  *a1 = v3;
  return result;
}

uint64_t assignWithTake for MLCreateError(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v10 = *(a1 + 48);
  *(a1 + 48) = v3;
  outlined consume of MLCreateError(v4, v5, v6, v7, v8, v9, v10);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLCreateError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 49))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v2 = -1;
      if (*(a1 + 48) >= 5u)
      {
        v2 = *(a1 + 48) ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLCreateError(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 - 252;
    *(a1 + 48) = 0;
    if (a3 >= 0xFC)
    {
      *(a1 + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(a1 + 49) = 0;
    }

    if (a2)
    {
      *(a1 + 48) = -a2;
    }
  }
}

uint64_t getEnumTag for MLCreateError(uint64_t a1)
{
  result = (*a1 + 4);
  if (*(a1 + 48) < 4u)
  {
    return *(a1 + 48);
  }

  return result;
}

void destructiveInjectEnumTag for MLCreateError(uint64_t a1, unsigned int a2)
{
  if (a2 >= 4)
  {
    *a1 = a2 - 4;
    *(a1 + 8) = 0;
    *(a1 + 24) = 0;
    *(a1 + 40) = 0;
    LOBYTE(a2) = 4;
  }

  *(a1 + 48) = a2;
}

uint64_t lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError()
{
  result = lazy protocol witness table cache variable for type MLCreateError and conformance MLCreateError;
  if (!lazy protocol witness table cache variable for type MLCreateError and conformance MLCreateError)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLCreateError, &type metadata for MLCreateError);
    lazy protocol witness table cache variable for type MLCreateError and conformance MLCreateError = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLCreateError and conformance MLCreateError;
  if (!lazy protocol witness table cache variable for type MLCreateError and conformance MLCreateError)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLCreateError, &type metadata for MLCreateError);
    lazy protocol witness table cache variable for type MLCreateError and conformance MLCreateError = result;
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(char a1, char a2)
{
  v4 = (a1 & 1) == 0;
  v5 = 1869903201;
  v6 = 1869903201;
  if (!v4)
  {
    v6 = 7696483;
  }

  v7 = (((a1 & 1) == 0) << 56) - 0x1D00000000000000;
  if (a2)
  {
    v5 = 7696483;
  }

  v8 = (((a2 & 1) == 0) << 56) - 0x1D00000000000000;
  LOBYTE(v2) = 1;
  if (v5 ^ v6 | v8 ^ v7)
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, v5, v8, 0);
  }

  v7;
  0;
  return v2;
}

{
  v4 = (a1 & 1) == 0;
  v5 = 7237219;
  v6 = 7237219;
  if (!v4)
  {
    v6 = 0x6574694C6E6E63;
  }

  v7 = ((a1 & 1) << 58) | 0xE300000000000000;
  if (a2)
  {
    v5 = 0x6574694C6E6E63;
  }

  v8 = ((a2 & 1) << 58) | 0xE300000000000000;
  LOBYTE(v2) = 1;
  if (v5 ^ v6 | v8 ^ v7)
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, v5, v8, 0);
  }

  v7;
  0;
  return v2;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, char a2)
{
  v3 = 0xEB0000000064657ALL;
  v4 = 0x696C616974696E69;
  v5 = 0x696C616974696E69;
  v6 = 0xEB0000000064657ALL;
  switch(0xEA0000000000676ELL)
  {
    case 0uLL:
      break;
    case 1uLL:
      v6 = 0xEA0000000000676ELL;
      v5 = 0x6974636172747865;
      switch(a2)
      {
        case 0:
          goto LABEL_12;
        case 1:
          goto LABEL_7;
        case 2:
          goto LABEL_9;
        case 3:
          goto LABEL_10;
        case 4:
          goto LABEL_8;
      }

    case 2uLL:
      v6 = 0xE800000000000000;
      v5 = 0x676E696E69617274;
      switch(a2)
      {
        case 0:
          goto LABEL_12;
        case 1:
          goto LABEL_7;
        case 2:
          goto LABEL_9;
        case 3:
          goto LABEL_10;
        case 4:
          goto LABEL_8;
      }

    case 3uLL:
      v6 = 0xEA0000000000676ELL;
      v5 = 0x697461756C617665;
      switch(a2)
      {
        case 0:
          goto LABEL_12;
        case 1:
LABEL_7:
          v4 = 0x6974636172747865;
          goto LABEL_11;
        case 2:
LABEL_9:
          v4 = 0x676E696E69617274;
          v3 = 0xE800000000000000;
          goto LABEL_12;
        case 3:
LABEL_10:
          v4 = 0x697461756C617665;
LABEL_11:
          v3 = 0xEA0000000000676ELL;
LABEL_12:
          LOBYTE(v2) = 1;
          if (v4 ^ v5 | v3 ^ v6)
          {
            v2 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, v4, v3, 0);
          }

          v6;
          v3;
          return v2;
        case 4:
LABEL_8:
          JUMPOUT(0x45F0DLL);
      }

    case 4uLL:
      v5 = 0x636E657265666E69;
      v6 = &loc_308EF - 0x14FFFFFFFF9B9A86;
      break;
  }

  switch(a2)
  {
    case 0:
      goto LABEL_12;
    case 1:
      goto LABEL_7;
    case 2:
      goto LABEL_9;
    case 3:
      goto LABEL_10;
    case 4:
      goto LABEL_8;
  }
}

{
  v3 = ColumnDescriptor.FeatureType.rawValue.getter(a1);
  v5 = v4;
  v6 = ColumnDescriptor.FeatureType.rawValue.getter(a2);
  v8 = v7;
  LOBYTE(v2) = 1;
  if (v6 ^ v3 | v7 ^ v5)
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)(v3, v5, v6, v7, 0);
  }

  v5;
  v8;
  return v2;
}

{
  v3 = 0x54746E656D656C65;
  v4 = 0xEB00000000657079;
  switch(0x69726F6765746163)
  {
    case 0:
      break;
    case 1:
      v3 = 1702521203;
      v4 = 0xE400000000000000;
      switch(a2)
      {
        case 0:
          goto LABEL_6;
        case 1:
          goto LABEL_9;
      }

    case 2:
      v4 = 0xEA00000000007365;
      v3 = 0x69726F6765746163;
      switch(a2)
      {
        case 0:
LABEL_6:
          LOBYTE(v2) = 1;
          if (v3 ^ 0x54746E656D656C65 | v4 ^ 0xEB00000000657079)
          {
            v2 = _stringCompareWithSmolCheck(_:_:expecting:)(v3, v4, 0x54746E656D656C65, 0xEB00000000657079, 0);
          }

          v4;
          121;
          return v2;
        case 1:
LABEL_9:
          JUMPOUT(0x460B1);
      }

    case 3:
      v3 = 0x7470697263736564;
      v4 = 0xEB0000000073726FLL;
      break;
  }

  switch(a2)
  {
    case 0:
      goto LABEL_6;
    case 1:
      goto LABEL_9;
  }
}

BOOL specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  return a1 == a2;
}

{
  return specialized == infix<A>(_:_:)(a1, a2);
}

{
  return specialized == infix<A>(_:_:)(a1, a2);
}

void MLRandomForestRegressor.predictions(from:)(uint64_t a1)
{
  v20 = v2;
  v19 = v1;
  v5 = type metadata accessor for DataFrame(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v17 = &v15;
  v10 = *(type metadata accessor for MLRandomForestRegressor(0) + 28);
  v16 = v3;
  v11._rawValue = *(v3 + v10);
  v18 = a1;
  DataFrame.validateContainsColumns(_:context:)(v11, __PAIR128__(0xE700000000000000, 0x65727574616546));
  if (!v12)
  {
    v20 = v6;
    v13 = v17;
    v14 = v16;
    TreeRegressorModel.applied(to:eventHandler:)(v18, 0, 0);
    DataFrame.subscript.getter(*v14, v14[1]);
    (*(v20 + 8))(v13, v5);
  }
}

uint64_t type metadata accessor for MLRandomForestRegressor(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLRandomForestRegressor;
  if (!type metadata singleton initialization cache for MLRandomForestRegressor)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLRandomForestRegressor);
  }

  return result;
}

uint64_t *MLRandomForestRegressor.predictions(from:)(uint64_t a1, __m128 a2)
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
  MLRandomForestRegressor.predictions(from:)(&v13);
  if (v11)
  {
    return (*(v18 + 8))(&v13, v17);
  }

  *a2.i64 = (*(v18 + 8))(&v13, v17);
  return MLUntypedColumn.init(_:convertArraysToShapedArrays:)(&v13, 1, a2);
}

void MLRandomForestRegressor.evaluation(on:)(uint64_t a1)
{
  v3 = v2;
  v5 = v1;
  v6 = type metadata accessor for MLRandomForestRegressor(0);
  v7._rawValue = *(v3 + *(v6 + 28));
  v16 = a1;
  DataFrame.validateContainsColumns(_:context:)(v7, __PAIR128__(0xE700000000000000, 0x65727574616546));
  if (v8 || (v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>), inited = swift_initStackObject(v9, v15), v11 = v3, v12 = inited, *(inited + 16) = 1, *(inited + 24) = 2, v13 = *(v6 + 24), v14 = *(v11 + v13 + 8), *(v12 + 32) = *(v11 + v13), *(v12 + 40) = v14, , DataFrame.validateContainsColumns(_:context:)(v12, __PAIR128__(0xE500000000000000, 0x6C6562614CLL)), swift_setDeallocating(v12), specialized _ContiguousArrayStorage.__deallocating_deinit(), v8))
  {
    *v5 = v8;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }

  else
  {
    TreeRegressorModel.computeMetrics(on:)(v16);
  }
}

uint64_t MLRandomForestRegressor.evaluation(on:)(uint64_t a1)
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
  MLRandomForestRegressor.evaluation(on:)(&v9);
  return (*(v3 + 8))(&v9, v2);
}

NSURL *MLRandomForestRegressor.write(to:metadata:)(uint64_t a1, const void *a2)
{
  v43 = v3;
  v48 = a2;
  v49 = a1;
  v4 = *(*(type metadata accessor for TreeRegressorModel(0) - 8) + 64);
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
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(v49, 0xD000000000000015, ("CreateML Generic Error: " + 0x8000000000000000), 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (!v2)
  {
    v44 = 0;
    v50 = &v33;
    v47 = v7;
    v48 = v11;
    v49 = v12;
    outlined init with copy of MLTrainingSessionParameters(v43, v45, type metadata accessor for TreeRegressorModel);
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
    outlined destroy of MLActivityClassifier.ModelParameters(v29, type metadata accessor for TreeRegressorModel);
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

uint64_t MLRandomForestRegressor.write(toFile:metadata:)(uint64_t a1, uint64_t a2, const void *a3)
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
  MLRandomForestRegressor.write(to:metadata:)(v16, v16);
  return (*(v24 + 8))(v16, v10);
}

unint64_t MLRandomForestRegressor.description.getter()
{
  v1 = type metadata accessor for MLRandomForestRegressor(0);
  v20 = MLRandomForestRegressor.ModelParameters.description.getter();
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
  return 0xD000000000000022;
}

NSAttributedString MLRandomForestRegressor.playgroundDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NSAttributedString();
  v3._countAndFlagsBits = MLRandomForestRegressor.description.getter();
  v3._object = v4;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v3).super.isa;
  v1[3].super.isa = v2;
  v1->super.isa = result.super.isa;
  return result;
}

void MLRandomForestRegressor.model.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLRandomForestRegressor(0) + 20);

  *(v1 + v2) = a1;
}

void (*MLRandomForestRegressor.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLRandomForestRegressor(0) + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v4;
  return MLActivityClassifier.model.modify;
}

uint64_t MLRandomForestRegressor.targetColumn.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLRandomForestRegressor(0) + 24));

  return v1;
}

uint64_t MLRandomForestRegressor.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for MLRandomForestRegressor(0) + 24);
  result = *(v2 + v3 + 8);
  *(v2 + v3) = a1;
  *(v2 + v3 + 8) = a2;
  return result;
}

uint64_t MLRandomForestRegressor.featureColumns.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLRandomForestRegressor(0) + 28);
  result = *(v1 + v2);
  *(v1 + v2) = a1;
  return result;
}

uint64_t MLRandomForestRegressor.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLRandomForestRegressor(0);
  return outlined init with copy of MLRandomForestRegressor.ModelParameters(v1 + *(v3 + 32), v2);
}

uint64_t MLRandomForestRegressor.trainingMetrics.getter()
{
  v2 = v0;
  v3 = *(type metadata accessor for MLRandomForestRegressor(0) + 36);
  v4 = *(v1 + v3);
  v5 = *(v1 + v3 + 8);
  v6 = *(v1 + v3 + 16);
  *v2 = v4;
  *(v2 + 8) = v5;
  *(v2 + 16) = v6;
  return outlined copy of Result<_RegressorMetrics, Error>(v4, v5, v6);
}

uint64_t MLRandomForestRegressor.validationMetrics.getter()
{
  v2 = v0;
  v3 = *(type metadata accessor for MLRandomForestRegressor(0) + 40);
  v4 = *(v1 + v3);
  v5 = *(v1 + v3 + 8);
  v6 = *(v1 + v3 + 16);
  *v2 = v4;
  *(v2 + 8) = v5;
  *(v2 + 16) = v6;
  return outlined copy of Result<_RegressorMetrics, Error>(v4, v5, v6);
}

uint64_t static MLRandomForestRegressor._defaultSessionParameters.getter()
{
  v1 = v0;
  if (one-time initialization token for _defaultSessionParameters != -1)
  {
    swift_once(&one-time initialization token for _defaultSessionParameters, one-time initialization function for _defaultSessionParameters);
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  v3 = __swift_project_value_buffer(v2, static MLRandomForestRegressor._defaultSessionParameters);
  return outlined init with copy of MLTrainingSessionParameters(v3, v1, type metadata accessor for MLTrainingSessionParameters);
}

uint64_t MLRandomForestRegressor.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a6;
  v6[6] = a5;
  v6[5] = a4;
  v6[4] = a3;
  v6[3] = a2;
  v6[2] = a1;
  return swift_task_switch(MLRandomForestRegressor.init(_:targetColumn:featureColumns:parameters:), 0, 0);
}

uint64_t MLRandomForestRegressor.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2)
{
  v13 = *(v2 + 48);
  v12 = *(v2 + 32);
  v3 = *(v2 + 16);
  v4 = type metadata accessor for MLRandomForestRegressor(0);
  *(v2 + 64) = v4;
  v5 = v4[9];
  *(v2 + 96) = v5;
  *(v3 + v5 + 16) = 0;
  *(v3 + v5) = 0;
  v6 = v4[10];
  *(v2 + 100) = v6;
  v7 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v8 = swift_allocError(&type metadata for MLCreateError, v7, 0, 0);
  *v9 = 0xD0000000000000C0;
  *(v9 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v9 + 16) = 0;
  *(v9 + 32) = 0;
  *(v9 + 48) = 0;
  *(v3 + v6) = v8;
  *(v3 + v6 + 8) = 0;
  *(v3 + v6 + 16) = 1;
  *(v3 + v4[7]) = v13;
  *(v3 + v4[6]) = v12;
  v10 = swift_task_alloc(288);
  *(v2 + 72) = v10;
  *v10 = v2;
  v10[1] = MLRandomForestRegressor.init(_:targetColumn:featureColumns:parameters:);
  return ((&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel()))();
}

uint64_t MLRandomForestRegressor.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  v5 = *(*v2 + 72);
  v4 = *v2;
  *(*v2 + 80) = v1;
  v5;
  if (v1)
  {
    v6 = MLRandomForestRegressor.init(_:targetColumn:featureColumns:parameters:);
  }

  else
  {
    *(v4 + 88) = a1;
    v6 = MLRandomForestRegressor.init(_:targetColumn:featureColumns:parameters:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t MLRandomForestRegressor.init(_:targetColumn:featureColumns:parameters:)()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  *(v3 + *(v1 + 20)) = *(v0 + 88);
  outlined init with take of MLClassifierMetrics(v4, v3, type metadata accessor for TreeRegressorModel);
  qmemcpy((v3 + *(v1 + 32)), v2, 0x70uLL);
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 100);
  v2 = *(v0 + 96);
  v6 = *(v0 + 48);
  v7 = *(v0 + 40);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  outlined destroy of MLRandomForestRegressor.ModelParameters(*(v0 + 56));
  outlined destroy of MLActivityClassifier.ModelParameters(v4, type metadata accessor for TreeRegressorModel);
  v7;
  v6;
  outlined consume of Result<_RegressorMetrics, Error>(*(v3 + v2), *(v3 + v2 + 8), *(v3 + v2 + 16));
  outlined consume of Result<_RegressorMetrics, Error>(*(v3 + v1), *(v3 + v1 + 8), *(v3 + v1 + 16));
  return (*(v0 + 8))();
}

uint64_t MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v128 = a4;
  v125 = a3;
  v7 = v5;
  v117 = a2;
  v122 = v6;
  v134 = a5;
  v131 = a1;
  v127 = type metadata accessor for DataFrame(0);
  v130 = *(v127 - 8);
  v8 = *(v130 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v115 = &v97;
  v112 = *(type metadata accessor for TreeRegressorModel(0) - 8);
  v11 = *(v112 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v110 = &v97;
  v111 = v11;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v129 = &v97;
  v108 = type metadata accessor for TreeRegressor(0);
  v16 = *(*(v108 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v123 = &v97;
  v119 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  v19 = *(*(v119 - 1) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v137 = &v97;
  v118 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v22 = *(*(v118 - 8) + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v121 = &v97;
  v25 = alloca(v22);
  v26 = alloca(v22);
  v114 = &v97;
  v27 = alloca(v22);
  v28 = alloca(v22);
  v132 = &v97;
  v135 = type metadata accessor for BoostedTreeConfiguration(0);
  v136 = *(v135 - 8);
  v29 = *(v136 + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v109 = &v97;
  v32 = alloca(v29);
  v33 = alloca(v29);
  v120 = &v97;
  v34 = alloca(v29);
  v35 = alloca(v29);
  v36 = type metadata accessor for MLRandomForestRegressor(0);
  v37 = *(v36 + 36);
  *(v7 + v37 + 16) = 0;
  v124 = v37;
  *(v7 + v37) = 0;
  v38 = v7;
  v113 = v36;
  v39 = *(v36 + 40);
  v40 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v41 = swift_allocError(&type metadata for MLCreateError, v40, 0, 0);
  *v42 = 0xD0000000000000C0;
  *(v42 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v42 + 16) = 0;
  *(v42 + 32) = 0;
  *(v42 + 48) = 0;
  *(v38 + v39) = v41;
  *(v38 + v39 + 8) = 0;
  v116 = v39;
  *(v38 + v39 + 16) = 1;
  v43 = v134;
  outlined init with copy of MLRandomForestRegressor.ModelParameters(v134, &v99);
  BoostedTreeConfiguration.init()(v43);
  BoostedTreeConfiguration.learningRate.setter(1.0);
  BoostedTreeConfiguration.parallelTreeCount.setter(10);
  BoostedTreeConfiguration.maximumDepth.setter(v101);
  BoostedTreeConfiguration.maximumIterations.setter(v102);
  BoostedTreeConfiguration.minimumLossReduction.setter(v103);
  BoostedTreeConfiguration.minimumChildWeight.setter(v104);
  BoostedTreeConfiguration.randomSeed.setter(v105);
  BoostedTreeConfiguration.rowSubsample.setter(v106);
  v133 = &v97;
  BoostedTreeConfiguration.columnSubsample.setter(v107);
  outlined destroy of MLRandomForestRegressor.ModelParameters(&v99);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v134, &v97, &demangling cache variable for type metadata for Any?);
  if (!v98)
  {
    BUG();
  }

  v126 = v38;
  v124 += v38;
  v44 = v132;
  v45 = (v132 + *(v118 + 48));
  outlined init with take of Any(&v97, &v99);
  swift_dynamicCast(v137, &v99, &type metadata for Any + 8, v119, 7);
  v46 = v122;
  MLRandomForestRegressor.ModelParameters.ValidationData.generateDataFrames(trainingData:)(v44, v45, v131);
  v47 = v124;
  if (v46)
  {
    v125;
    v128;
    outlined destroy of MLRandomForestRegressor.ModelParameters(v134);
    (*(v130 + 8))(v131, v127);
    outlined destroy of MLActivityClassifier.ModelParameters(v137, type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData);
    (*(v136 + 8))(v133, v135);
    v48 = v126;
LABEL_12:
    outlined consume of Result<_RegressorMetrics, Error>(*v47, *(v47 + 8), *(v47 + 16));
    return outlined consume of Result<_RegressorMetrics, Error>(*(v48 + v116), *(v48 + v116 + 8), *(v48 + v116 + 16));
  }

  v122 = v45;
  outlined destroy of MLActivityClassifier.ModelParameters(v137, type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData);
  v49 = v117;
  v50 = v125;
  v51 = v128;
  v52 = static _FeatureUtilities.selectFeaturesFromTrainingData(trainingData:targetColumn:featureColumns:)(v44, v117, v125, v128);
  v137 = 0;
  v53 = v51;
  v54 = v52;
  v53;
  v55 = *(v136 + 16);
  v55(v120, v133, v135);
  v56 = v55;
  v57 = v123;
  *v123 = v49;
  *(v57 + 1) = v50;
  *(v57 + 2) = v54;
  *(v57 + 3) = v54;
  *(v57 + 4) = 0xD000000000000013;
  *(v57 + 5) = "raining samples." + 0x8000000000000000;
  v58 = v109;
  v56(v109, v120, v135);
  v128 = v54;
  swift_bridgeObjectRetain_n(v54, 2);
  v59 = v125;

  BaseTreeRegressor.init(configuration:)(v58);
  v136 = *(v136 + 8);
  (v136)(v120, v135);
  v60 = v137;
  TreeRegressor.fitted(to:validateOn:eventHandler:)(v132, v122, 0, 0);
  if (v60)
  {
    v59;
    v128;
    outlined destroy of MLRandomForestRegressor.ModelParameters(v134);
    (*(v130 + 8))(v131, v127);
    outlined destroy of MLActivityClassifier.ModelParameters(v57, type metadata accessor for TreeRegressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v132, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (v136)(v133, v135);
    v48 = v126;
    v47 = v124;
    goto LABEL_12;
  }

  v137 = 0;
  if (!AnalyticsReporter.init()())
  {
    v61 = v132;
    v62 = v114;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v132, v114, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v63 = v62 + *(v118 + 48);
    v64 = DataFrame.shape.getter(v61);
    (*(v130 + 8))(v62, v127);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_randomForestRegressor, __PAIR128__(("vectorized_features" + 0x8000000000000000), 0xD000000000000015), v64);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v63, &demangling cache variable for type metadata for DataFrame?);
  }

  v65 = v113;
  v66 = v113[6];
  v67 = v126;
  *(v126 + v66) = v117;
  *(v67 + v66 + 8) = v125;
  v122 = v67 + v65[8];
  outlined init with copy of MLRandomForestRegressor.ModelParameters(v134, v122);
  *(v67 + v65[7]) = v128;
  v68 = v110;
  outlined init with copy of MLTrainingSessionParameters(v129, v110, type metadata accessor for TreeRegressorModel);
  v69 = *(v112 + 80);
  v70 = ~*(v112 + 80) & (v69 + 16);
  v71 = swift_allocObject(&unk_38F790, v70 + v111, v69 | 7);
  outlined init with take of MLClassifierMetrics(v68, v71 + v70, type metadata accessor for TreeRegressorModel);
  v72 = v137;
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:), v71);
  v74 = v131;
  if (v72)
  {

    outlined destroy of MLRandomForestRegressor.ModelParameters(v134);
    (*(v130 + 8))(v74, v127);
    outlined destroy of MLActivityClassifier.ModelParameters(v129, type metadata accessor for TreeRegressorModel);
    outlined destroy of MLActivityClassifier.ModelParameters(v123, type metadata accessor for TreeRegressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v132, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (v136)(v133, v135);
    v128;
    v125;
    v48 = v126;
LABEL_11:
    v47 = v124;
    outlined destroy of MLRandomForestRegressor.ModelParameters(v122);
    goto LABEL_12;
  }

  v75 = v73;

  v76 = v65[5];
  v119 = v75;
  v77 = v126;
  *(v126 + v76) = v75;
  outlined init with copy of MLTrainingSessionParameters(v129, v77, type metadata accessor for TreeRegressorModel);
  v78 = v132;
  TreeRegressorModel.computeMetrics(on:)(v132);
  v137 = 0;
  v80 = v100;
  v81 = v124;
  outlined consume of Result<_RegressorMetrics, Error>(*v124, *(v124 + 8), *(v124 + 16));
  *v81 = v99;
  *(v81 + 16) = v80;
  v82 = v121;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v78, v121, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v83 = v82 + *(v118 + 48);
  v84 = v127;
  if (__swift_getEnumTagSinglePayload(v83, 1, v127) == 1)
  {
    outlined destroy of MLRandomForestRegressor.ModelParameters(v134);
    v85 = v84;
    v86 = *(v130 + 8);
    v86(v131, v85);
    outlined destroy of MLActivityClassifier.ModelParameters(v129, type metadata accessor for TreeRegressorModel);
    outlined destroy of MLActivityClassifier.ModelParameters(v123, type metadata accessor for TreeRegressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v78, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (v136)(v133, v135);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v83, &demangling cache variable for type metadata for DataFrame?);
    return (v86)(v121, v85);
  }

  else
  {
    v87 = v115;
    v88 = v130;
    (*(v130 + 32))(v115, v83, v84);
    v89 = *(v88 + 8);
    v90 = v87;
    v89(v121, v84);
    v91 = v87;
    v92 = v126;
    v93 = v137;
    TreeRegressorModel.computeMetrics(on:)(v91);
    v137 = v93;
    if (v93)
    {
      outlined destroy of MLRandomForestRegressor.ModelParameters(v134);
      v89(v131, v84);
      v89(v90, v84);
      outlined destroy of MLActivityClassifier.ModelParameters(v129, type metadata accessor for TreeRegressorModel);
      outlined destroy of MLActivityClassifier.ModelParameters(v123, type metadata accessor for TreeRegressor);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v132, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
      (v136)(v133, v135);
      v48 = v92;
      v94 = v125;
      outlined destroy of MLActivityClassifier.ModelParameters(v92, type metadata accessor for TreeRegressorModel);
      v128;
      v94;

      goto LABEL_11;
    }

    outlined destroy of MLRandomForestRegressor.ModelParameters(v134);
    v89(v131, v84);
    v89(v90, v84);
    outlined destroy of MLActivityClassifier.ModelParameters(v129, type metadata accessor for TreeRegressorModel);
    outlined destroy of MLActivityClassifier.ModelParameters(v123, type metadata accessor for TreeRegressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v132, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (v136)(v133, v135);
    v95 = v100;
    v96 = v116;
    result = outlined consume of Result<_RegressorMetrics, Error>(*(v92 + v116), *(v92 + v116 + 8), *(v92 + v116 + 16));
    *(v92 + v96) = v99;
    *(v92 + v96 + 16) = v95;
  }

  return result;
}

uint64_t closure #1 in MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc(288);
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #1 in MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:);
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
  return swift_task_switch(closure #1 in MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:), 0, 0);
}

uint64_t MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
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
  outlined init with copy of MLRandomForestRegressor.ModelParameters(a5, &v11);
  MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(&v11, v15, v14, v13, &v11);
  return outlined destroy of MLRandomForestRegressor.ModelParameters(a5);
}

uint64_t MLRandomForestRegressor.init(checkpoint:)(uint64_t a1, uint64_t a2)
{
  v63 = v3;
  v80 = a1;
  v4 = v2;
  v72 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  v5 = *(*(v72 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v73 = v60;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v71 = v60;
  v70 = *(type metadata accessor for TreeRegressorModel(0) - 8);
  v10 = *(v70 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v68 = v60;
  v69 = v10;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v79 = v60;
  v64 = type metadata accessor for BoostedTreeConfiguration(0);
  v65 = *(v64 - 8);
  v15 = *(v65 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v66 = v60;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v78 = v60;
  v77 = type metadata accessor for TreeRegressor(0);
  v20 = *(*(v77 - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v75 = v60;
  v23 = type metadata accessor for MLRandomForestRegressor(0);
  v24 = *(v23 + 36);
  *(v4 + v24 + 16) = 0;
  v62 = v24;
  *(v4 + v24) = 0;
  v76 = v23;
  v25 = *(v23 + 40);
  v67 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v26 = swift_allocError(&type metadata for MLCreateError, v67, 0, 0);
  *v27 = 0xD0000000000000C0;
  *(v27 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v27 + 16) = 0;
  *(v27 + 32) = 0;
  *(v27 + 48) = 0;
  *(v4 + v25) = v26;
  *(v4 + v25 + 8) = 0;
  v74 = v4;
  v61 = v25;
  *(v4 + v25 + 16) = 1;
  v28 = v80;
  switch(*(v28 + *(type metadata accessor for MLCheckpoint(0) + 20)))
  {
    case 0:
      v29 = 0x696C616974696E69;
      v30 = 0xEB0000000064657ALL;
      break;
    case 1:
      v29 = 0x6974636172747865;
      goto LABEL_7;
    case 2:
      v31 = 0xE800000000000000;
      0;
      goto LABEL_9;
    case 3:
      v29 = 0x697461756C617665;
LABEL_7:
      v30 = 0xEA0000000000676ELL;
      break;
    case 4:
      v30 = 0xEB00000000676E69;
      v29 = 0x636E657265666E69;
      break;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)(v29, v30, 0x676E696E69617274, 0xE800000000000000, 0);
  v31 = v30;
  v30;
  if (v32)
  {
LABEL_9:
    v33 = v78;
    BoostedTreeConfiguration.init()(v31);
    v34 = v75;
    *v75 = 0;
    v34[1] = 0xE000000000000000;
    v34[2] = _swiftEmptyArrayStorage;
    v34[3] = _swiftEmptyArrayStorage;
    v34[4] = 0xD000000000000013;
    v34[5] = ("raining samples." + 0x8000000000000000);
    v35 = v66;
    v36 = v33;
    v37 = v64;
    v38 = v65;
    (*(v65 + 16))(v66, v36, v64);
    BaseTreeRegressor.init(configuration:)(v35);
    (*(v38 + 8))(v78, v37);
    v39 = lazy protocol witness table accessor for type TreeRegressor and conformance TreeRegressor();
    v40 = v79;
    v41 = v80;
    v42 = v63;
    UpdatableSupervisedTabularEstimator.readWithOptimizer(from:)(v80, v77, v39);
    if (!v42)
    {
      v44 = v68;
      outlined init with copy of MLTrainingSessionParameters(v40, v68, type metadata accessor for TreeRegressorModel);
      v45 = *(v70 + 80);
      v46 = ~*(v70 + 80) & (v45 + 16);
      v47 = swift_allocObject(&unk_38F7B8, v46 + v69, v45 | 7);
      outlined init with take of MLClassifierMetrics(v44, v47 + v46, type metadata accessor for TreeRegressorModel);
      specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLRandomForestRegressor.init(checkpoint:), v47);
      v49 = v48;

      v51 = v74;
      *(v74 + v76[5]) = v49;
      outlined init with copy of MLTrainingSessionParameters(v79, v51, type metadata accessor for TreeRegressorModel);
      v52 = v71;
      *v71 = 0;
      *(v52 + 16) = 256;
      v77 = 0;
      v53 = v72;
      swift_storeEnumTagMultiPayload(v52, v72, 0);
      v54 = v76[8];
      v78 = (v51 + v54);
      *(v51 + v54 + 16) = 0;
      *(v51 + v54) = 0;
      *(v51 + v54 + 88) = 0;
      *(v51 + v54 + 104) = 0;
      *(v51 + v54 + 32) = 6;
      *(v51 + v54 + 40) = 10;
      *(v51 + v54 + 48) = _mm_loadh_ps(&qword_33D880);
      *(v51 + v54 + 64) = 42;
      *(v51 + v54 + 72) = xmmword_33E240;
      v55 = v73;
      outlined init with copy of MLTrainingSessionParameters(v52, v73, type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData);
      v60[3] = v53;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v60);
      outlined init with take of MLClassifierMetrics(v55, boxed_opaque_existential_0, type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData);
      outlined assign with take of Any?(v60, v78);
      outlined destroy of MLActivityClassifier.ModelParameters(v52, type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData);
      v57 = v76;
      v58 = v76[6];
      *(v51 + v58) = 0;
      *(v51 + v58 + 8) = 0xE000000000000000;
      outlined destroy of MLActivityClassifier.ModelParameters(v80, type metadata accessor for MLCheckpoint);
      outlined destroy of MLActivityClassifier.ModelParameters(v79, type metadata accessor for TreeRegressorModel);
      outlined destroy of MLActivityClassifier.ModelParameters(v75, type metadata accessor for TreeRegressor);
      result = v57[7];
      *(v51 + result) = _swiftEmptyArrayStorage;
      return result;
    }

    outlined destroy of MLActivityClassifier.ModelParameters(v41, type metadata accessor for MLCheckpoint);
    outlined destroy of MLActivityClassifier.ModelParameters(v34, type metadata accessor for TreeRegressor);
  }

  else
  {
    swift_allocError(&type metadata for MLCreateError, v67, 0, 0);
    *v43 = 0xD000000000000042;
    *(v43 + 8) = "Number of Data Points" + 0x8000000000000000;
    *(v43 + 16) = 0;
    *(v43 + 32) = 0;
    *(v43 + 48) = 0;
    swift_willThrow();
    outlined destroy of MLActivityClassifier.ModelParameters(v80, type metadata accessor for MLCheckpoint);
  }

  v50 = v74;
  outlined consume of Result<_RegressorMetrics, Error>(*(v74 + v62), *(v74 + v62 + 8), *(v74 + v62 + 16));
  return outlined consume of Result<_RegressorMetrics, Error>(*(v50 + v61), *(v50 + v61 + 8), *(v50 + v61 + 16));
}