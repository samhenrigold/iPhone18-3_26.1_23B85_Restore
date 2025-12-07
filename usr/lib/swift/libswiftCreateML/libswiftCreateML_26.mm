uint64_t _Model.classifierEvaluation(_:)(uint64_t a1, double a2)
{
  v3 = v2;
  v4 = *(a1 + 8);
  if (v4 == -1)
  {
    v7 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v8 = swift_allocError(&type metadata for MLCreateError, v7, 0, 0);
    *v9 = 0xD000000000000013;
    *(v9 + 8) = "CreateML/_Model.swift" + 0x8000000000000000;
    *(v9 + 16) = 0;
    *(v9 + 32) = 0;
    *(v9 + 48) = 1;
    *v3 = v8;
    v10 = type metadata accessor for MLClassifierMetrics.Contents(0);
    return swift_storeEnumTagMultiPayload(v3, v10, 2);
  }

  else
  {
    v13 = *a1;
    v5 = v13;
    v6 = v4;
    v14 = v4 & 1;
    outlined copy of Result<_DataTable, Error>(v13, v4);
    v11 = _Model.evaluation(from:)(&v13);
    static _Model.makeClassifierEvaluationMetrics(_:classes:)(v11, 0, a2);

    return outlined consume of MLDataTable?(v5, v6);
  }
}

void *_Model.getAttributes()(double a1)
{
  v127 = _swiftEmptyArrayStorage;
  v132 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  v119[1] = *(v1 + 16);
  v2 = CMLModel.listFields()();
  MLDataValue.init(_:)(v2, a1);
  if (v114 != 3)
  {
    BUG();
  }

  v3 = v112;
  v121 = v113;
  swift_retain_n(v112, 2);
  v123 = v112;
  if (CMLSequence.size.getter())
  {
    v127 = _swiftEmptyArrayStorage;
    v4 = 0;
    do
    {
      v130 = v4;
      v5 = CMLSequence.value(at:)(v4);
      switch(CMLFeatureValue.type.getter())
      {
        case 0u:
          v6 = *(v5 + 16);

          v135 = COERCE_DOUBLE(specialized handling<A, B>(_:_:)(v6));
          v5;
          goto LABEL_40;
        case 1u:
          v50 = *(v5 + 16);

          specialized handling<A, B>(_:_:)(v50);
          v137 = a1;
          v5;
          a1 = v137;
          v135 = v137;
          goto LABEL_40;
        case 2u:

          v42 = CMLFeatureValue.stringValue()();
          v135 = *&v42._countAndFlagsBits;
          if (v43)
          {
            v43;

            BUG();
          }

          object = v42._object;
          v5;
          v45 = 1;
          goto LABEL_42;
        case 3u:
          v46 = *(v5 + 16);

          v47 = specialized handling<A, B>(_:_:)(v46);
          if (!v47)
          {
            BUG();
          }

          v5;
          object = 0;
          v48 = type metadata accessor for CMLSequence();
          *&v49 = COERCE_DOUBLE(swift_allocObject(v48, 25, 7));
          *(v49 + 16) = v47;
          v135 = *&v49;
          *(v49 + 24) = 1;
          goto LABEL_41;
        case 4u:
          v7 = *(v5 + 16);
          v128 = v5;

          v8 = specialized handling<A, B>(_:_:)(v7);
          if (!v8)
          {
            BUG();
          }

          v120 = type metadata accessor for CMLDictionary();
          *&v9 = COERCE_DOUBLE(swift_initStackObject(v120, v111));
          *(v9 + 16) = v8;
          v134 = _swiftEmptyDictionarySingleton;
          swift_retain_n(v9, 2);
          v10 = 0;
          v135 = COERCE_DOUBLE(_swiftEmptyDictionarySingleton);
          v137 = *&v9;
          break;
        case 5u:

          v135 = 0.0;
          goto LABEL_40;
        case 6u:

          MLDataValue.MultiArrayType.init(from:)(v5);
          v135 = *&v124;
          if (!v124)
          {
            BUG();
          }

LABEL_40:
          object = 0;
LABEL_41:
          v45 = 0;
          goto LABEL_42;
      }

      while (v10 != CMLDictionary.size.getter())
      {
        CMLDictionary.keyAndValue(at:)(v10);
        v12 = v11;
        v10 = specialized RandomAccessCollection<>.index(after:)(v10);
        v13 = CMLFeatureValue.stringValue()();
        if (v14)
        {
          v14;

          *&v9 = v137;
        }

        else
        {
          v129 = v13._object;
          countAndFlagsBits = v13._countAndFlagsBits;

          switch(CMLFeatureValue.type.getter())
          {
            case 0u:
              v15 = *(v12 + 16);

              v136 = specialized handling<A, B>(_:_:)(v15);
              JUMPOUT(0x1B50D4);
            case 1u:
              v24 = *(v12 + 16);

              specialized handling<A, B>(_:_:)(v24);
              v136 = *&a1;
              JUMPOUT(0x1B5264);
            case 2u:

              v136 = CMLFeatureValue.stringValue()()._countAndFlagsBits;
              if (!v19)
              {
                JUMPOUT(0x1B51C4);
              }

              v19;

              BUG();
            case 3u:
              v20 = *(v12 + 16);

              v21 = specialized handling<A, B>(_:_:)(v20);
              if (v21)
              {
                v22 = type metadata accessor for CMLSequence();
                v23 = swift_allocObject(v22, 25, 7);
                v23[2] = v21;
                v136 = v23;
                JUMPOUT(0x1B5229);
              }

              BUG();
            case 4u:
              v16 = *(v12 + 16);

              v17 = specialized handling<A, B>(_:_:)(v16);
              if (v17)
              {
                v18 = swift_allocObject(v120, 24, 7);
                *(v18 + 16) = v17;
                v112 = v18;
                v113 = closure #1 in MLDataValue.DictionaryType.init(from:);
                v114 = 0;
                v115 = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
                v116 = 0;
                v117 = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
                v118 = 0;
                _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC8CreateML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5(&v112);
                JUMPOUT(0x1B5188);
              }

              BUG();
            case 5u:
              JUMPOUT(0x1B5285);
            case 6u:

              MLDataValue.MultiArrayType.init(from:)(v12);
              v136 = v124;
              if (!v124)
              {
                BUG();
              }

              v12;
              v131 = 0;
              *&v25 = countAndFlagsBits;
              *&v124 = countAndFlagsBits;
              *(&v25 + 1) = v129;
              *(&v124 + 1) = v129;
              LOBYTE(v125) = 2;
              v26 = v135;
              specialized __RawDictionaryStorage.find<A>(_:)(v25, 2, a1);
              *&v25 = (v28 & 1) == 0;
              v29 = __OFADD__(*(*&v26 + 16), v25);
              v30 = *(*&v26 + 16) + v25;
              if (v29)
              {
                BUG();
              }

              v31 = v28;
              if (*(*&v26 + 24) < v30)
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v30, 1u);
                *&v32 = countAndFlagsBits;
                *(&v32 + 1) = v129;
                specialized __RawDictionaryStorage.find<A>(_:)(v32, 2, a1);
                LOBYTE(v33) = v33 & 1;
                v34 = v31;
                LOBYTE(v34) = v31 & 1;
                if ((v31 & 1) != v33)
                {
                  *&v32 = &type metadata for MLDataValue;
LABEL_105:
                  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v32, *(&v32 + 1), v33, v34);
                  BUG();
                }
              }

              v35 = v131;
              if (v31)
              {
                v108 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
                swift_willThrow();
                v119[0] = v108;
                swift_errorRetain(v108);
                v109 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
                if (swift_dynamicCast(&demangling cache variable for type metadata for Error, v119, v109, &type metadata for _MergeError, 0))
                {
                  *&v122[0] = 0;
                  *(&v122[0] + 1) = 0xE000000000000000;
                  _StringGuts.grow(_:)(30);
                  v110._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
                  v110._countAndFlagsBits = 0xD00000000000001BLL;
                  String.append(_:)(v110);
                  _print_unlocked<A, B>(_:_:)(&v124, v122, &type metadata for MLDataValue, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
                  v110._countAndFlagsBits = 39;
                  v110._object = 0xE100000000000000;
                  String.append(_:)(v110);
                  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, *&v122[0], *(&v122[0] + 1), "Swift/NativeDictionary.swift", 28, 2, 783, 0);
                  BUG();
                }

                outlined consume of MLDataValue(v136, v131, 5);
                outlined consume of MLDataValue(v124, *(&v124 + 1), v125);

                v119[0];
                swift_unexpectedError(v108, "Swift/Dictionary.swift", 22, 1, 489);
                BUG();
              }

              v36 = v134;
              v134[(v27 >> 6) + 8] |= 1 << v27;
              v37 = v36[6];
              v38 = 24 * v27;
              *(v37 + v38) = countAndFlagsBits;
              *(v37 + v38 + 8) = v129;
              *(v37 + v38 + 16) = 2;
              v39 = v36[7];
              *(v39 + v38) = v136;
              *(v39 + v38 + 8) = v35;
              *(v39 + v38 + 16) = 5;
              v40 = v36[2];
              v29 = __OFADD__(1, v40);
              v41 = v40 + 1;
              if (v29)
              {
                BUG();
              }

              v135 = *&v36;
              v36[2] = v41;
              *&v9 = v137;
              break;
          }
        }
      }

      v128;
      v9;
      object = 0;
      v45 = 0;
LABEL_42:
      v51 = CMLSequence.size.getter();
      v52 = v130;
      if (v130 >= v51)
      {
        BUG();
      }

      if (!v45)
      {
        BUG();
      }

      if (swift_isUniquelyReferenced_nonNull_native(v127))
      {
        v53 = v127;
      }

      else
      {
        v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v127[2] + 1, 1, v127);
      }

      v54 = v53[2];
      if (v53[3] >> 1 <= v54)
      {
        v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v53[3] >= 2uLL, v54 + 1, 1, v53);
      }

      v53[2] = v54 + 1;
      v55 = 2 * v54;
      *&v53[v55 + 4] = v135;
      v127 = v53;
      v53[v55 + 5] = object;
      v3 = v123;
      v4 = v52 + 1;
    }

    while (v52 + 1 != CMLSequence.size.getter());
  }

  v56 = v127[2];
  if (v56)
  {
    v57 = v127 + 5;
    while (1)
    {
      v130 = v56;
      v58 = v3;
      v59 = *(v57 - 1);
      v60 = *v57;

      countAndFlagsBits = v59;
      v137 = *&v60;
      v61 = CMLModel.getValue(field:)(v59, v60);
      v129 = v57;
      _Model.Output.init(variant:)(v61, a1);
      v62 = *(&v124 + 1);
      v135 = *&v124;
      v63 = v125 >> 5;
      LODWORD(v128) = v125;
      if (v63 == 2)
      {
        break;
      }

      v3 = v58;
      v64 = v130;
      if (v63 == 1)
      {
        v126 = &type metadata for MLUntypedColumn;
        v73 = *&v135;
        *&v124 = v135;
        BYTE8(v124) &= 1u;
        outlined init with take of Any(&v124, v122);
        outlined copy of Result<_DataTable, Error>(v73, v62);
        v136 = v62;
        outlined copy of Result<_DataTable, Error>(v73, v62);
        v74 = v132;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v132);
        v134 = v74;
        v69 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, *&v137);
        v77 = (v76 & 1) == 0;
        v29 = __OFADD__(*(v74 + 16), v77);
        v78 = *(v74 + 16) + v77;
        if (v29)
        {
          BUG();
        }

        v79 = v76;
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Any>);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v78))
        {
          *(&v32 + 1) = v137;
          v69 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, *&v137);
          LOBYTE(v33) = v33 & 1;
          v64 = v130;
          if ((v79 & 1) != v33)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v64 = v130;
        }

        v89 = v136;
        v90 = v134;
        v132 = v134;
        if ((v79 & 1) == 0)
        {
          v134[(v69 >> 6) + 8] |= 1 << v69;
          v91 = v90[6];
          v92 = 16 * v69;
          *(v91 + v92) = countAndFlagsBits;
          *(v91 + v92 + 8) = v137;
          outlined init with take of Any(v122, (v90[7] + 32 * v69));
          v93 = v132;
          v94 = v132[2];
          v29 = __OFADD__(1, v94);
          v95 = v94 + 1;
          if (v29)
          {
            BUG();
          }

          goto LABEL_82;
        }

LABEL_80:
        v99 = v89;
        v100 = (v90[7] + 32 * v69);
        __swift_destroy_boxed_opaque_existential_1Tm(v100);
        outlined init with take of Any(v122, v100);
        SLOBYTE(v137);
        goto LABEL_83;
      }

      if (!v63)
      {
        v126 = &type metadata for MLDataTable;
        v65 = *&v135;
        *&v124 = v135;
        BYTE8(v124) &= 1u;
        outlined init with take of Any(&v124, v122);
        outlined copy of Result<_DataTable, Error>(v65, v62);
        v136 = v62;
        outlined copy of Result<_DataTable, Error>(v65, v62);
        v66 = v132;
        v67 = swift_isUniquelyReferenced_nonNull_native(v132);
        v134 = v66;
        v69 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, *&v137);
        v70 = (v68 & 1) == 0;
        v29 = __OFADD__(*(v66 + 16), v70);
        v71 = *(v66 + 16) + v70;
        if (v29)
        {
          BUG();
        }

        v72 = v68;
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Any>);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v67, v71))
        {
          *(&v32 + 1) = v137;
          v69 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, *&v137);
          LOBYTE(v33) = v33 & 1;
          v64 = v130;
          if ((v72 & 1) != v33)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v64 = v130;
        }

        v89 = v136;
        v90 = v134;
        v132 = v134;
        if (v72)
        {
          goto LABEL_80;
        }

        v134[(v69 >> 6) + 8] |= 1 << v69;
        v101 = v90[6];
        v102 = 16 * v69;
        *(v101 + v102) = countAndFlagsBits;
        *(v101 + v102 + 8) = v137;
        outlined init with take of Any(v122, (v90[7] + 32 * v69));
        v93 = v132;
        v103 = v132[2];
        v29 = __OFADD__(1, v103);
        v95 = v103 + 1;
        if (v29)
        {
          BUG();
        }

LABEL_82:
        v99 = v89;
        *(v93 + 16) = v95;
LABEL_83:
        v104 = v135;
        v105 = v128;
        outlined consume of _Model.Output(*&v135, v99, v128);
        outlined consume of _Model.Output(*&v104, v99, v105);
        v88 = v129;
        v3 = v123;
        goto LABEL_84;
      }

      SLOBYTE(v137);
      outlined consume of _Model.Output(*&v135, v62, v128);
      v88 = v129;
LABEL_84:
      v57 = (v88 + 16);
      v56 = v64 - 1;
      if (!v56)
      {
        goto LABEL_85;
      }
    }

    v126 = &type metadata for MLDataValue;
    v81 = v135;
    *&v124 = v135;
    LOBYTE(v125) = v125 & 0x1F;
    v80 = v125;
    outlined init with take of Any(&v124, v122);
    outlined copy of MLDataValue(*&v81, v62, v80);
    v136 = v62;
    outlined copy of MLDataValue(*&v81, v62, v80);
    v82 = v132;
    v83 = swift_isUniquelyReferenced_nonNull_native(v132);
    v134 = v82;
    v69 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, *&v137);
    v85 = (v84 & 1) == 0;
    v29 = __OFADD__(*(v82 + 16), v85);
    v86 = *(v82 + 16) + v85;
    if (v29)
    {
      BUG();
    }

    v87 = v84;
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Any>);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v83, v86))
    {
      *(&v32 + 1) = v137;
      v69 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, *&v137);
      LOBYTE(v33) = v33 & 1;
      v64 = v130;
      if ((v87 & 1) != v33)
      {
LABEL_103:
        *&v32 = &type metadata for String;
        goto LABEL_105;
      }
    }

    else
    {
      v64 = v130;
    }

    v89 = v136;
    v90 = v134;
    v132 = v134;
    if ((v87 & 1) == 0)
    {
      v134[(v69 >> 6) + 8] |= 1 << v69;
      v96 = v90[6];
      v97 = 16 * v69;
      *(v96 + v97) = countAndFlagsBits;
      *(v96 + v97 + 8) = v137;
      outlined init with take of Any(v122, (v90[7] + 32 * v69));
      v93 = v132;
      v98 = v132[2];
      v29 = __OFADD__(1, v98);
      v95 = v98 + 1;
      if (v29)
      {
        BUG();
      }

      goto LABEL_82;
    }

    goto LABEL_80;
  }

LABEL_85:
  v127;
  v106 = v121;
  outlined consume of MLDataValue(v3, v121, 3);
  outlined consume of MLDataValue(v3, v106, 3);
  return v132;
}

uint64_t _Model.init(impl:)(uint64_t a1)
{
  v2[3] = v1;
  v2[2] = a1;
  v2[4] = *v1;
  return swift_task_switch(_Model.init(impl:), 0, 0);
}

{
  v4 = *(*v2 + 56);
  v3 = *v2;
  v3[8] = a1;
  v3[9] = v1;
  v4;
  if (v1)
  {
    v3[6];
    v5 = _Model.init(impl:);
  }

  else
  {
    v5 = _Model.init(impl:);
  }

  return swift_task_switch(v5, 0, 0);
}

uint64_t _Model.init(impl:)()
{
  *(*(v0 + 24) + 40) = 0;
  *(v0 + 40) = CMLModel.name()();
  if (v1)
  {

    v2 = *(v0 + 24);
    v3 = *(v0 + 32);
    *(v2 + 40);
    swift_deallocPartialClassInstance(v2, v3, 48, 7);
    return (*(v0 + 8))();
  }

  else
  {
    v5 = swift_task_alloc(288);
    *(v0 + 56) = v5;
    *v5 = v0;
    v5[1] = _Model.init(impl:);
    return CMLModel.compile()();
  }
}

{
  v1.value = ModelType.init(nameKey:)(*(v0 + 40)).value;
  if (v1.value == CreateML_ModelType_unknownDefault)
  {
    BUG();
  }

  value = v1.value;
  v3 = *(v0 + 64);
  v4 = *(v0 + 24);
  *(v4 + 16) = *(v0 + 16);
  *(v4 + 24) = v3;
  *(v4 + 32) = value;

  v3;
  if (!AnalyticsReporter.init()())
  {
    v5._countAndFlagsBits = value;
    v5._object = &dword_0 + 2;
    AnalyticsReporter.reportTemplateUsed(model:mode:)(v5);
  }

  return (*(v0 + 8))(*(v0 + 24));
}

{

  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  *(v1 + 40);
  swift_deallocPartialClassInstance(v1, v2, 48, 7);
  return (*(v0 + 8))();
}

uint64_t *_Model.init(type:)(unsigned int a1)
{
  v21 = *v2;
  *(v2 + 40) = 0;
  v3 = objc_allocWithZone(MLModel);
  *(v2 + 24) = [v3 init];
  v5 = ModelType.nameKey.getter(a1);
  v6 = v4;
  v23 = a1;
  if ((v4 & 0x1000000000000000) == 0 && v4 & 0x2000000000000000 | v5 & 0x1000000000000000)
  {
    v7 = alloca(32);
    v8 = alloca(32);
    v21 = 0;
    v20 = closure #1 in CMLModel.init(name:);
    if ((v4 & 0x2000000000000000) != 0)
    {
      v19 = v5;
      v20 = v4 & 0xFFFFFFFFFFFFFFLL;
      v12 = specialized handling<A, B>(_:_:)(&v19);
      if (v1)
      {
        v6;
        goto LABEL_10;
      }

      if (!v12)
      {
        BUG();
      }

      v24 = v12;
      v6;
LABEL_15:
      v13 = v24;
      v14 = type metadata accessor for CMLModel();
      v15 = swift_allocObject(v14, 24, 7);
      *(v15 + 16) = v13;
      *(v2 + 16) = v15;
      *(v2 + 32) = v23;
      return v2;
    }

    v22 = &v18;
    if ((v5 & 0x1000000000000000) != 0)
    {
      v9 = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v10 = v5 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = _StringObject.sharedUTF8.getter(v5, v4);
      v10 = v17;
    }

    v11 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v9, v10, closure #1 in _StringGuts.withCString<A>(_:)specialized partial apply);
    if (v1)
    {
      goto LABEL_7;
    }

    v24 = v11;
LABEL_12:
    v6;
    goto LABEL_15;
  }

  _StringGuts._slowWithCString<A>(_:)(closure #1 in CMLModel.init(name:), 0, v5, v4, &type metadata for OpaquePointer);
  if (!v1)
  {
    goto LABEL_12;
  }

LABEL_7:
  v6;
LABEL_10:

  *(v2 + 40);
  swift_deallocPartialClassInstance(v2, v21, 48, 7);
  return v2;
}

uint64_t _Model.init(type:parameters:modelOptions:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 56) = v3;
  *(v4 + 48) = a3;
  *(v4 + 40) = a2;
  *(v4 + 108) = a1;
  *(v4 + 64) = *v3;
  return swift_task_switch(_Model.init(type:parameters:modelOptions:), 0, 0);
}

uint64_t _Model.init(type:parameters:modelOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(*(v7 + 56) + 40) = 0;
  *(v7 + 104) = static _PowerUtilities.createPowerAssertion()();
  v30 = (v7 + 32);
  v9 = ModelType.nameKey.getter(*(v7 + 108));
  v10 = v8;
  if ((v8 & 0x1000000000000000) != 0 || !(v8 & 0x2000000000000000 | v9 & 0x1000000000000000))
  {
    _StringGuts._slowWithCString<A>(_:)(closure #1 in CMLModel.init(name:), 0, v9, v8, &type metadata for OpaquePointer);
LABEL_8:
    v10;
    goto LABEL_11;
  }

  v11 = swift_task_alloc(32);
  *(v11 + 24) = 0;
  v28 = v11;
  *(v11 + 16) = closure #1 in CMLModel.init(name:);
  if ((v10 & 0x2000000000000000) == 0)
  {
    if ((v9 & 0x1000000000000000) != 0)
    {
      v12 = (v10 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v13 = v9 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = _StringObject.sharedUTF8.getter(v9, v10);
      v13 = v27;
    }

    *v30 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v12, v13, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
    v28;
    goto LABEL_8;
  }

  *(v7 + 16) = v9;
  *(v7 + 24) = v10 & 0xFFFFFFFFFFFFFFLL;
  v14 = specialized handling<A, B>(_:_:)(v7 + 16);
  if (!v14)
  {
    BUG();
  }

  *v30 = v14;
  v10;
  v28;
LABEL_11:
  v15 = *(v7 + 32);
  v16 = *(v7 + 48);
  v17 = type metadata accessor for CMLModel();
  v18 = swift_allocObject(v17, 24, 7);
  *(v7 + 72) = v18;
  *(v18 + 16) = v15;
  if (v16)
  {

    CMLModel.initialize(options:)(v16);
  }

  if (AnalyticsReporter.init()())
  {
    CMLModel.callFunction(name:arguments:)(5, *(v7 + 40));
  }

  else
  {
    v19._countAndFlagsBits = ModelType.nameKey.getter(*(v7 + 108));
    v19._object = v20;
    v21.value = ModelType.init(nameKey:)(v19).value;
    if (v21.value == CreateML_ModelType_unknownDefault)
    {
      BUG();
    }

    value = v21.value;
    v23 = *(v7 + 40);
    Current = CFAbsoluteTimeGetCurrent();
    v24._object = &dword_0 + 2;
    v24._countAndFlagsBits = value;
    AnalyticsReporter.reportTemplateUsed(model:mode:)(v24);
    CMLModel.callFunction(name:arguments:)(5, v23);

    AnalyticsReporter.reportEventDuration(model:task:startTime:)(value, __PAIR128__(0xE800000000000000, 0x676E696E69617254), Current);
  }

  v25 = swift_task_alloc(288);
  *(v7 + 80) = v25;
  *v25 = v7;
  v25[1] = _Model.init(type:parameters:modelOptions:);
  return CMLModel.compile()();
}

uint64_t _Model.init(type:parameters:modelOptions:)(uint64_t a1)
{
  v3 = *(*v2 + 80);
  v6 = *v2;
  *(v6 + 88) = a1;
  *(v6 + 96) = v1;
  v3;
  if (v1)
  {
    v4 = _Model.init(type:parameters:modelOptions:);
  }

  else
  {
    v4 = _Model.init(type:parameters:modelOptions:);
  }

  return swift_task_switch(v4, 0, 0);
}

uint64_t _Model.init(type:parameters:modelOptions:)()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  v3 = *(v0 + 88);
  v4 = *(v0 + 104);
  *(v2 + 24) = v3;
  v3;
  static _PowerUtilities.endPowerAssertion(from:)(v4);
  v5 = *(v0 + 72);
  v6 = *(v0 + 88);
  if (v1)
  {

    v7 = *(v0 + 56);
    v8 = *(v0 + 64);
    *(v7 + 40);
    swift_deallocPartialClassInstance(v7, v8, 48, 7);
  }

  else
  {
    v9 = *(v0 + 56);
    v11 = *(v0 + 108);

    *(v9 + 16) = v5;
    *(v9 + 32) = v11;
  }

  return (*(v0 + 8))();
}

{

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  *(v1 + 40);
  swift_deallocPartialClassInstance(v1, v2, 48, 7);
  return (*(v0 + 8))();
}

uint64_t static _Model.makeClassifierEvaluationMetrics(_:classes:)(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v5 = *(a1 + 16);
  if (tc_v1_variant_is_parameters(v5))
  {
    v6 = specialized handling<A, B>(_:_:)(v5);
    if (!v6)
    {
      BUG();
    }

    v7 = type metadata accessor for CMLParameters();
    *(swift_initStackObject(v7, v24) + 16) = v6;
    v8 = CMLParameters.featureValue(for:)(61);
    specialized handling<A, B>(_:_:)(*(v8 + 16));
    v28 = a3;

    v14 = CMLParameters.table(for:)(62);
    v29 = type metadata accessor for _DataTable();
    swift_allocObject(v29, 40, 7);
    v15 = _DataTable.init(impl:)(v14);
    if (a2)
    {
      v26 = v15;
      v27 = 0;

      static _MetricUtilities.supplementConfusionMatrixWithMissingClasses(_:classes:)(&v26, a2, a3);

      outlined consume of Result<_DataTable, Error>(v26, v27);
      v16 = v32;
      v30 = v32;
      LOBYTE(v16) = v33;
      v31 = v16;
    }

    else
    {
      v31 = 0;
      v30 = v15;
    }

    v17 = CMLParameters.table(for:)(63);
    v18 = 1.0 - v28;
    v28 = 1.0 - v28;
    swift_allocObject(v29, 40, 7);
    v19 = _DataTable.init(impl:)(v17);
    if (a2)
    {
      v26 = v19;
      v27 = 0;

      static _MetricUtilities.supplementPrecisionRecallWithMissingClasses(_:classes:)(&v26, a2, v18);

      outlined consume of Result<_DataTable, Error>(v26, v27);
      v29 = v32;
      v20 = v33;
    }

    else
    {
      v29 = v19;
      v20 = 0;
    }

    v32 = v30;
    v21 = v31;
    v33 = v31 & 1;
    v25 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    LODWORD(v31) = v21;
    outlined copy of Result<_DataTable, Error>(v30, v21);
    DataFrame.init(_:)(&v32);
    v22 = v29;
    v32 = v29;
    v33 = v20 & 1;
    outlined copy of Result<_DataTable, Error>(v29, v20);
    DataFrame.init(_:)(&v32);

    outlined consume of Result<_DataTable, Error>(v30, v31);
    outlined consume of Result<_DataTable, Error>(v22, v20);
    *v4 = v28;
    v23 = 1;
  }

  else
  {
    v9 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v10 = swift_allocError(&type metadata for MLCreateError, v9, 0, 0);
    *v11 = 0xD000000000000026;
    *(v11 + 8) = "Invalid input data." + 0x8000000000000000;
    *(v11 + 16) = 0;
    *(v11 + 32) = 0;
    *(v11 + 48) = 0;
    *v4 = v10;
    v23 = 2;
  }

  v12 = type metadata accessor for MLClassifierMetrics.Contents(0);
  return swift_storeEnumTagMultiPayload(v4, v12, v23);
}

uint64_t _Model.deinit()
{

  *(v0 + 40);
  return v0;
}

void outlined consume of _Model.Output(void *a1, void *a2, unsigned __int8 a3)
{
  switch(a3 >> 5)
  {
    case 0:
    case 1:
      outlined consume of Result<_DataTable, Error>(a1, a2);
      break;
    case 2:
      outlined consume of MLDataValue(a1, a2, a3 & 0x1F);
      break;
    case 3:
      a2;
      break;
    case 5:
    case 6:

      break;
    default:
      return;
  }
}

uint64_t specialized MLDataValueConvertible.featureValue.getter(uint64_t a1, uint64_t a2)
{
  v7[3] = &type metadata for String;
  v7[4] = &protocol witness table for String;
  v7[0] = a1;
  v7[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_0Tm(v7, &type metadata for String);
  v3 = *v2;
  v4 = v2[1];
  type metadata accessor for CMLFeatureValue();

  v5 = CMLFeatureValue.__allocating_init(_:)(v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  return v5;
}

uint64_t specialized _UntypedColumn.init<A>(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = specialized MLDataValueConvertible.featureValue.getter(a1, a2);
  if (a3 < 0)
  {
    BUG();
  }

  v6 = specialized handling<A, B, C>(_:_:_:)(*(v5 + 16), a3);
  if (!v6)
  {
    BUG();
  }

  v7 = type metadata accessor for CMLColumn();
  v8 = swift_allocObject(v7, 24, 7);
  *(v8 + 16) = v6;
  a2;
  *(v3 + 16) = v8;
  return v3;
}

uint64_t MLStyleTransfer.TrainingSessionDelegate.init(sessionParameters:)(uint64_t a1)
{
  v35 = v1;
  strcpy((v2 + 16), "style_transfer");
  *(v2 + 31) = -18;
  v3 = v2 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters;
  v4 = type metadata accessor for MLStyleTransfer.PersistentParameters(0);
  v30 = v3;
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v6 = empty;
  v7 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_args;
  v8 = type metadata accessor for CMLParameters();
  v9 = swift_allocObject(v8, 24, 7);
  *(v9 + 16) = v6;
  v31 = v7;
  *(v2 + v7) = v9;
  v10 = v2 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters;
  v34 = a1;
  outlined init with copy of MLTrainingSessionParameters(a1, v2 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  v11 = *(v2 + 16);
  v33 = v2;
  v12 = *(v2 + 24);
  v32 = v10;
  if ((v12 & 0x1000000000000000) != 0 || !(v12 & 0x2000000000000000 | v11 & 0x1000000000000000))
  {

    _StringGuts._slowWithCString<A>(_:)(closure #1 in CMLModel.init(name:), 0, v11, v12, &type metadata for OpaquePointer);
    if (!v35)
    {
      v12;
      v23 = v29;
      goto LABEL_14;
    }
  }

  else
  {
    v36 = v28;
    v13 = alloca(32);
    v14 = alloca(32);
    v30 = 0;
    v29 = closure #1 in CMLModel.init(name:);
    if ((v12 & 0x2000000000000000) == 0)
    {
      if ((v11 & 0x1000000000000000) != 0)
      {
        v15 = (v12 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v16 = v11 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = _StringObject.sharedUTF8.getter(v11, v12);
        v16 = v27;
      }

      v17 = v35;
      v18 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v15, v16, closure #1 in _StringGuts.withCString<A>(_:)specialized partial apply);
      if (v17)
      {
        goto LABEL_10;
      }

      v23 = v18;
      v12;
LABEL_14:
      v24 = type metadata accessor for CMLModel();
      v25 = swift_allocObject(v24, 24, 7);
      *(v25 + 16) = v23;
      outlined destroy of MLActivityClassifier.ModelParameters(v34, type metadata accessor for MLTrainingSessionParameters);
      v21 = v33;
      *(v33 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model) = v25;
      return v21;
    }

    v28[0] = v11;
    v28[1] = v12 & 0xFFFFFFFFFFFFFFLL;

    v19 = v35;
    v20 = specialized handling<A, B>(_:_:)(v28);
    if (!v19)
    {
      v23 = v20;
      if (!v20)
      {
        BUG();
      }

      v12;
      goto LABEL_14;
    }
  }

LABEL_10:
  v12;
  outlined destroy of MLActivityClassifier.ModelParameters(v34, type metadata accessor for MLTrainingSessionParameters);
  v21 = v33;
  *(v33 + 24);
  outlined destroy of MLActivityClassifier.ModelParameters(v32, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, &demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?);

  v22 = type metadata accessor for MLStyleTransfer.TrainingSessionDelegate(0);
  swift_deallocPartialClassInstance(v21, v22, *(*v21 + 48), *(*v21 + 52));
  return v21;
}

uint64_t MLStyleTransfer.TrainingSessionDelegate.init(trainingData:modelParameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = v3;
  v49 = a3;
  v56 = a2;
  v53 = a1;
  v55 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v5 = *(*(v55 - 1) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v50 = v43;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  strcpy((v4 + 16), "style_transfer");
  *(v4 + 31) = -18;
  v52 = v4;
  v11 = v4 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters;
  v12 = type metadata accessor for MLStyleTransfer.PersistentParameters(0);
  v54 = v11;
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v14 = empty;
  v15 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_args;
  v16 = type metadata accessor for CMLParameters();
  v17 = swift_allocObject(v16, 24, 7);
  *(v17 + 16) = v14;
  v48 = v15;
  *(v52 + v15) = v17;
  outlined init with copy of MLTrainingSessionParameters(v53, v43, type metadata accessor for MLStyleTransfer.DataSource);
  v18 = v50;
  outlined init with copy of MLTrainingSessionParameters(v56, v50, type metadata accessor for MLStyleTransfer.ModelParameters);
  v43[v12[5]] = *v18;
  v19 = v55;
  *&v43[v12[7]] = 4 * (*&v18[*(v55 + 8)] / 4);
  *&v43[v12[8]] = *&v18[v19[9]];
  outlined init with copy of MLTrainingSessionParameters(&v18[v19[5]], &v43[v12[6]], type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  LOBYTE(v19) = v18[v19[10]];
  outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLStyleTransfer.ModelParameters);
  v43[v12[9]] = v19;
  __swift_storeEnumTagSinglePayload(v43, 0, 1, v12);
  v20 = v54;
  swift_beginAccess(v54, &v44, 33, 0);
  outlined assign with take of MLStyleTransfer.PersistentParameters?(v43, v20);
  swift_endAccess(&v44);
  v21 = v52;
  v50 = (v52 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters);
  outlined init with copy of MLTrainingSessionParameters(v49, v52 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  v22 = *(v21 + 16);
  v23 = *(v21 + 24);
  if ((v23 & 0x1000000000000000) != 0 || !(v23 & 0x2000000000000000 | v22 & 0x1000000000000000))
  {

    v41 = v51;
    _StringGuts._slowWithCString<A>(_:)(closure #1 in CMLModel.init(name:), 0, v22, v23, &type metadata for OpaquePointer);
    if (!v41)
    {
      v54 = 0;
      v23;
      v36 = v47;
LABEL_12:
      v37 = v56;
LABEL_15:
      v38 = type metadata accessor for CMLModel();
      v39 = swift_allocObject(v38, 24, 7);
      *(v39 + 16) = v36;
      outlined destroy of MLActivityClassifier.ModelParameters(v49, type metadata accessor for MLTrainingSessionParameters);
      outlined destroy of MLActivityClassifier.ModelParameters(v37, type metadata accessor for MLStyleTransfer.ModelParameters);
      outlined destroy of MLActivityClassifier.ModelParameters(v53, type metadata accessor for MLStyleTransfer.DataSource);
      v34 = v52;
      *(v52 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model) = v39;
      return v34;
    }
  }

  else
  {
    v55 = v43;
    v24 = alloca(32);
    v25 = alloca(32);
    v46 = 0;
    v45 = closure #1 in CMLModel.init(name:);
    if ((v23 & 0x2000000000000000) == 0)
    {
      if ((v22 & 0x1000000000000000) != 0)
      {
        v26 = (v23 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v27 = v22 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = _StringObject.sharedUTF8.getter(v22, v23);
        v27 = v42;
      }

      v28 = v51;
      v29 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v26, v27, closure #1 in _StringGuts.withCString<A>(_:)specialized partial apply);
      if (v28)
      {
        goto LABEL_10;
      }

      v36 = v29;
      v54 = 0;
      v23;
      goto LABEL_12;
    }

    v44 = v22;
    v45 = v23 & 0xFFFFFFFFFFFFFFLL;

    v30 = v51;
    v31 = specialized handling<A, B>(_:_:)(&v44);
    if (!v30)
    {
      v36 = v31;
      v54 = 0;
      v37 = v56;
      if (!v31)
      {
        BUG();
      }

      v23;
      goto LABEL_15;
    }
  }

LABEL_10:
  v23;
  v32 = v53;
  v33 = v56;
  outlined destroy of MLActivityClassifier.ModelParameters(v49, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v33, type metadata accessor for MLStyleTransfer.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v32, type metadata accessor for MLStyleTransfer.DataSource);
  v34 = v52;
  *(v52 + 24);
  outlined destroy of MLActivityClassifier.ModelParameters(v50, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v54, &demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?);

  v35 = type metadata accessor for MLStyleTransfer.TrainingSessionDelegate(0);
  swift_deallocPartialClassInstance(v34, v35, *(*v34 + 48), *(*v34 + 52));
  return v34;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLStyleTransfer.TrainingSessionDelegate.setUp()()
{
  v205 = v0;
  v186 = type metadata accessor for _Model.Parameters(0);
  v2 = *(*(v186 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v185 = &v177;
  v5 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v177 = &v177;
  v8 = *(*(type metadata accessor for MLStyleTransfer.DataSource(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v178 = &v177;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v204 = &v177;
  v197 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v13 = *(*(v197 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v180 = &v177;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v184 = &v177;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v179 = &v177;
  v20 = alloca(v13);
  v21 = alloca(v13);
  v207 = &v177;
  v22 = alloca(v13);
  v23 = alloca(v13);
  v198 = &v177;
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v183 = &v177;
  v27 = alloca(v24);
  v28 = alloca(v24);
  v195 = &v177;
  v29 = alloca(v24);
  v30 = alloca(v24);
  v203 = &v177;
  v31 = alloca(v24);
  v32 = alloca(v24);
  v215 = &v177;
  v187 = type metadata accessor for MLTrainingSessionParameters(0);
  v33 = *(*(v187 - 8) + 64);
  v34 = alloca(v33);
  v35 = alloca(v33);
  v214 = &v177;
  v216 = type metadata accessor for URL(0);
  v201 = *(v216 - 8);
  v36 = *(v201 + 64);
  v37 = alloca(v36);
  v38 = alloca(v36);
  v194 = &v177;
  v39 = alloca(v36);
  v40 = alloca(v36);
  v199 = &v177;
  v41 = alloca(v36);
  v42 = alloca(v36);
  v202 = &v177;
  v43 = alloca(v36);
  v44 = alloca(v36);
  v206 = &v177;
  v45 = alloca(v36);
  v46 = alloca(v36);
  v192 = &v177;
  v47 = alloca(v36);
  v48 = alloca(v36);
  v208 = &v177;
  v49 = alloca(v36);
  v50 = alloca(v36);
  v210 = &v177;
  v51 = alloca(v36);
  v52 = alloca(v36);
  v209 = &v177;
  v53 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?) - 8) + 64);
  v54 = alloca(v53);
  v55 = alloca(v53);
  v181 = &v177;
  v56 = alloca(v53);
  v57 = alloca(v53);
  v58 = type metadata accessor for MLStyleTransfer.PersistentParameters(0);
  v59 = *(*(v58 - 8) + 64);
  v60 = alloca(v59);
  v61 = alloca(v59);
  v200 = &v177;
  v62 = objc_opt_self(NSFileManager);
  v63 = [v62 defaultManager];
  v212 = v63;
  v191 = v1;
  v64 = v1 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v1 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters, v220, 0, 0);
  v182 = v64;
  outlined init with copy of MLStyleTransfer.PersistentParameters?(v64, &v177);
  v193 = v58;
  if (__swift_getEnumTagSinglePayload(&v177, 1, v58) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v177, &demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?);
    v65 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v65, 0, 0);
    *v66 = 0xD000000000000061;
    *(v66 + 8) = "tylized validation result" + 0x8000000000000000;
    *(v66 + 16) = 0;
    *(v66 + 32) = 0;
    *(v66 + 48) = 0;
    swift_willThrow();

    return;
  }

  v67 = v200;
  outlined init with take of MLClassifierMetrics(&v177, v200, type metadata accessor for MLStyleTransfer.PersistentParameters);
  v190 = v191 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters;
  v68 = v214;
  outlined init with copy of MLTrainingSessionParameters(v191 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters, v214, type metadata accessor for MLTrainingSessionParameters);
  v69 = v68;
  v70 = v215;
  outlined init with take of URL?(v69, v215);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v70, 1, v216);
  v213 = v67;
  if (EnumTagSinglePayload == 1)
  {
    v72 = NSTemporaryDirectory();
    v73 = v72;
    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)(v73);
    v76 = v75;

    URL.init(fileURLWithPath:isDirectory:)(v74, v76, 1);
    v76;
    v77 = v216;
    if (__swift_getEnumTagSinglePayload(v215, 1, v216) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v215, &demangling cache variable for type metadata for URL?);
    }
  }

  else
  {
    v77 = v216;
    (*(v201 + 32))(v209, v215, v216);
  }

  URL.appendingPathComponent(_:isDirectory:)(0xD000000000000010, ("Content column doesn't exist" + 0x8000000000000000), 1);
  URL.path.getter(0xD000000000000010);
  v79 = v78;
  v80 = String._bridgeToObjectiveC()();
  v79;
  v81 = [v212 fileExistsAtPath:v80];

  if (!v81)
  {
    URL._bridgeToObjectiveC()(v82);
    v84 = v83;
    v218 = 0;
    v85 = [v212 createDirectoryAtURL:v83 withIntermediateDirectories:0 attributes:0 error:&v218];

    v86 = v218;
    if (!v85)
    {
      v144 = v218;
      _convertNSErrorToError(_:)(v86);

      swift_willThrow();
      v112 = *(v201 + 8);
      v113 = v210;
      v111 = v216;
      goto LABEL_20;
    }

    v218;
    v77 = v216;
  }

  v87 = v192;
  URL.appendingPathComponent(_:)(0x656C797473, 0xE500000000000000);
  URL.appendingPathExtension(_:)(6778480, 0xE300000000000000);
  v215 = *(v201 + 8);
  (v215)(v87, v77);
  v88 = v206;
  URL.appendingPathComponent(_:isDirectory:)(0x746E65746E6F63, 0xE700000000000000, 1);
  v89 = v88;
  URL.path.getter(0x746E65746E6F63);
  LOBYTE(v88) = v90;
  v91 = String._bridgeToObjectiveC()();
  v88;
  v92 = v212;
  LOBYTE(v88) = [v212 fileExistsAtPath:v91];

  if (!v88)
  {
    URL._bridgeToObjectiveC()(v93);
    v95 = v94;
    v218 = 0;
    v96 = [v92 createDirectoryAtURL:v94 withIntermediateDirectories:0 attributes:0 error:&v218];

    v97 = v218;
    if (!v96)
    {
      v147 = v218;
      _convertNSErrorToError(_:)(v97);

      swift_willThrow();
      v148 = v216;
      v149 = v215;
      (v215)(v89, v216);
      (v149)(v208, v148);
      (v149)(v210, v148);
      (v149)(v209, v148);
      goto LABEL_21;
    }

    v218;
  }

  v98 = v193;
  v99 = v213;
  v196 = v193[5];
  LOBYTE(v214) = *(v213 + v196);
  v100 = v197;
  v101 = v198;
  v102 = v198 + *(v197 + 20);
  v200 = (v200 + v193[6]);
  outlined init with copy of MLTrainingSessionParameters(v200, v102, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  v103 = *(v99 + v98[7]);
  v104 = *(v99 + v98[8]);
  *(v101 + v100[6]) = 1;
  v105 = v100[10];
  *v101 = v214;
  *(v101 + v100[7]) = 500;
  *(v101 + v100[8]) = v103;
  v106 = v100[9];
  v189 = v104;
  *(v101 + v106) = v104;
  v211 = *(v99 + v98[9]);
  *(v101 + v105) = v211;
  v188 = v103;
  v214 = (4 * (v103 / 4));
  outlined destroy of MLActivityClassifier.ModelParameters(v101, type metadata accessor for MLStyleTransfer.ModelParameters);
  v107 = *(v201 + 16);
  v108 = v203;
  (v107)(v203, v208, v216);
  __swift_storeEnumTagSinglePayload(v108, 0, 1, v216);
  v109 = v195;
  v198 = v107;
  (v107)(v195, v206, v216);
  __swift_storeEnumTagSinglePayload(v109, 0, 1, v216);
  v110 = v205;
  MLStyleTransfer.DataSource.preprocessDataSource(textelDensity:styleImageDestination:contentImagesDestination:)(v199, &v218, v214, v108, v109);
  if (v110)
  {

    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v109, &demangling cache variable for type metadata for URL?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v108, &demangling cache variable for type metadata for URL?);
    v111 = v216;
    v112 = v215;
    (v215)(v206, v216);
    (v112)(v208, v111);
    v113 = v210;
LABEL_20:
    (v112)(v113, v111);
    (v112)(v209, v111);
LABEL_21:
    v145 = type metadata accessor for MLStyleTransfer.PersistentParameters;
    v146 = v213;
LABEL_22:
    outlined destroy of MLActivityClassifier.ModelParameters(v146, v145);
    return;
  }

  v214 = 0;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v109, &demangling cache variable for type metadata for URL?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v108, &demangling cache variable for type metadata for URL?);
  v205 = v218;
  LOBYTE(v203) = v219;
  v195 = *(v201 + 32);
  (v195)(v202, v199, v216);
  v114 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
  v115 = v197;
  v116 = v204 + *(v114 + 48);
  v201 = *(v114 + 64);
  v117 = v198;
  (v198)(v204, v208, v216);
  (v117)(v116, v206, v216);
  v118 = v178;
  outlined init with copy of MLTrainingSessionParameters(v213, v178, type metadata accessor for MLStyleTransfer.DataSource);
  v119 = v118 + *(v114 + 48);
  v120 = *(v114 + 64);
  v199 = *(v118 + v120);
  LOBYTE(v116) = *(v118 + v120 + 8);
  v121 = v215;
  (v215)(v119, v216);
  (v121)(v118, v216);
  v122 = v201;
  v123 = v204;
  *(v204 + v201) = v199;
  *(v123 + v122 + 8) = v116;
  v124 = v213;
  LOBYTE(v201) = *(v213 + v196);
  v125 = v207;
  v126 = v200;
  v199 = (v207 + v115[5]);
  outlined init with copy of MLTrainingSessionParameters(v200, v199, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  *(v125 + v115[6]) = 1;
  v127 = v115[10];
  *v125 = v201;
  *(v125 + v115[7]) = 500;
  *(v125 + v115[8]) = v188;
  *(v125 + v115[9]) = v189;
  *(v125 + v127) = v211;
  LOBYTE(v124) = *(v124 + v196);
  v128 = v179;
  v129 = v179 + v115[5];
  outlined init with copy of MLTrainingSessionParameters(v126, v129, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  *v128 = v124;
  v130 = v216;
  v131 = v177;
  outlined init with take of MLClassifierMetrics(v129, v177, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  LODWORD(v129) = __swift_getEnumTagSinglePayload(v131, 1, v130);
  outlined destroy of MLActivityClassifier.ModelParameters(v131, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  if (v129 != 1)
  {
    v132 = v192;
    v133 = v130;
    v134 = v213;
    URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEA00000000006E6FLL);
    URL.appendingPathExtension(_:)(6778480, 0xE300000000000000);
    (v215)(v132, v133);
    LOBYTE(v134) = *(v134 + v196);
    v135 = v184;
    v136 = v184 + *(v197 + 20);
    outlined init with copy of MLTrainingSessionParameters(v200, v136, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
    *v135 = v134;
    v137 = v133;
    v138 = v194;
    v139 = v183;
    (v198)(v183, v194, v137);
    __swift_storeEnumTagSinglePayload(v139, 0, 1, v137);
    v200 = v136;
    v140 = v214;
    MLStyleTransfer.ModelParameters.ValidationData.preprocessValidationData(to:)(v139);
    v214 = v140;
    if (v140)
    {
      outlined consume of Result<_DataTable, Error>(v205, v203);

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v139, &demangling cache variable for type metadata for URL?);
      v141 = v215;
      (v215)(v138, v137);
      outlined destroy of MLActivityClassifier.ModelParameters(v204, type metadata accessor for MLStyleTransfer.DataSource);
      (v141)(v202, v137);
      (v141)(v206, v137);
      (v141)(v208, v137);
      (v141)(v210, v137);
      (v141)(v209, v137);
      outlined destroy of MLActivityClassifier.ModelParameters(v213, type metadata accessor for MLStyleTransfer.PersistentParameters);
      v142 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData;
      v143 = v200;
      goto LABEL_18;
    }

    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v139, &demangling cache variable for type metadata for URL?);
    outlined destroy of MLActivityClassifier.ModelParameters(v200, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
    v150 = v199;
    outlined destroy of MLActivityClassifier.ModelParameters(v199, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
    (v195)(v150, v138, v137);
    __swift_storeEnumTagSinglePayload(v150, 0, 1, v137);
  }

  v151 = v207;
  v152 = v181;
  outlined init with copy of MLTrainingSessionParameters(v204, v181, type metadata accessor for MLStyleTransfer.DataSource);
  v153 = v180;
  outlined init with copy of MLTrainingSessionParameters(v151, v180, type metadata accessor for MLStyleTransfer.ModelParameters);
  v154 = v193;
  *(v152 + v193[5]) = *v153;
  v155 = v197;
  *(v152 + v154[7]) = 4 * (*(v153 + *(v197 + 32)) / 4);
  *(v152 + v154[8]) = *(v153 + v155[9]);
  outlined init with copy of MLTrainingSessionParameters(v153 + v155[5], v152 + v154[6], type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  LOBYTE(v155) = *(v153 + v155[10]);
  outlined destroy of MLActivityClassifier.ModelParameters(v153, type metadata accessor for MLStyleTransfer.ModelParameters);
  *(v152 + v154[9]) = v155;
  __swift_storeEnumTagSinglePayload(v152, 0, 1, v154);
  v156 = v182;
  swift_beginAccess(v182, &v218, 33, 0);
  outlined assign with take of MLStyleTransfer.PersistentParameters?(v152, v156);
  swift_endAccess(&v218);
  v218 = v205;
  v157 = v203;
  v219 = v203 & 1;
  v158 = v202;
  v159 = v214;
  v160 = static MLStyleTransfer.validateAndConvertParameters(_:styleImage:contentTable:)(v207, v202, &v218);
  if (!v159)
  {
    v164 = v160;
    v167 = CMLParameters.featureValue(for:)(47);
    v168 = specialized handling<A, B>(_:_:)(*(v167 + 16));
    v214 = 0;
    v169 = v168;
    if (!v168)
    {
      BUG();
    }

    v170 = type metadata accessor for CMLDictionary();
    inited = swift_initStackObject(v170, v217);
    *(inited + 16) = v169;
    v172 = v185;
    *v185 = *(v190 + *(v187 + 20));
    swift_storeEnumTagMultiPayload(v172, v186, 20);
    CMLDictionary.add(_:)(v172);
    outlined destroy of MLActivityClassifier.ModelParameters(v172, type metadata accessor for _Model.Parameters);
    type metadata accessor for CMLFeatureValue();

    v173 = v214;
    v174 = CMLFeatureValue.__allocating_init(_:)(inited);
    if (v173)
    {

      outlined consume of Result<_DataTable, Error>(v205, v203);

      outlined destroy of MLActivityClassifier.ModelParameters(v204, type metadata accessor for MLStyleTransfer.DataSource);
      v165 = v216;
      v166 = v215;
      (v215)(v202, v216);
      (v166)(v206, v165);
      (v166)(v208, v165);
      (v166)(v210, v165);
      (v166)(v209, v165);
      outlined destroy of MLActivityClassifier.ModelParameters(v213, type metadata accessor for MLStyleTransfer.PersistentParameters);
      v145 = type metadata accessor for MLStyleTransfer.ModelParameters;
      v146 = v207;
      goto LABEL_22;
    }

    CMLParameters.add(key:featureValue:)(47, v174);

    CMLModel.callFunction(name:arguments:)(0, v164);
    v214 = 0;

    outlined consume of Result<_DataTable, Error>(v205, v203);

    outlined destroy of MLActivityClassifier.ModelParameters(v204, type metadata accessor for MLStyleTransfer.DataSource);
    v175 = v216;
    v176 = v215;
    (v215)(v202, v216);
    (v176)(v206, v175);
    (v176)(v208, v175);
    (v176)(v210, v175);
    (v176)(v209, v175);
    v142 = type metadata accessor for MLStyleTransfer.PersistentParameters;
    v143 = v213;
LABEL_18:
    outlined destroy of MLActivityClassifier.ModelParameters(v143, v142);
    outlined destroy of MLActivityClassifier.ModelParameters(v207, type metadata accessor for MLStyleTransfer.ModelParameters);
    return;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v204, type metadata accessor for MLStyleTransfer.DataSource);
  v161 = v158;
  v162 = v216;
  v163 = v215;
  (v215)(v161, v216);
  (v163)(v206, v162);
  (v163)(v208, v162);
  (v163)(v210, v162);
  (v163)(v209, v162);
  outlined destroy of MLActivityClassifier.ModelParameters(v213, type metadata accessor for MLStyleTransfer.PersistentParameters);
  outlined consume of Result<_DataTable, Error>(v205, v157);
  outlined destroy of MLActivityClassifier.ModelParameters(v207, type metadata accessor for MLStyleTransfer.ModelParameters);
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLStyleTransfer.TrainingSessionDelegate.resume(from:)(Swift::OpaquePointer from)
{
  v166 = v1;
  v175 = v2;
  rawValue = from._rawValue;
  v3 = *(*(type metadata accessor for MLStyleTransfer.DataSource(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v159 = &v147;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v177 = &v147;
  v178 = type metadata accessor for MLCheckpoint(0);
  v9 = *(*(v178 - 1) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v181 = &v147;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v154 = &v147;
  v15 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v155 = &v147;
  v182 = type metadata accessor for URL(0);
  v183 = *(v182 - 8);
  v18 = *(v183 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v160 = &v147;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v168 = &v147;
  v23 = alloca(v18);
  v24 = alloca(v18);
  v161 = &v147;
  v25 = alloca(v18);
  v26 = alloca(v18);
  v173 = &v147;
  v27 = alloca(v18);
  v28 = alloca(v18);
  v179 = &v147;
  v29 = alloca(v18);
  v30 = alloca(v18);
  v158 = &v147;
  v31 = alloca(v18);
  v32 = alloca(v18);
  v157 = &v147;
  v33 = alloca(v18);
  v34 = alloca(v18);
  v167 = &v147;
  v35 = alloca(v18);
  v36 = alloca(v18);
  v165 = &v147;
  v37 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v38 = *(*(v37 - 8) + 64);
  v39 = alloca(v38);
  v40 = alloca(v38);
  v162 = &v147;
  v41 = alloca(v38);
  v42 = alloca(v38);
  v180 = &v147;
  v43 = type metadata accessor for MLStyleTransfer.PersistentParameters(0);
  v44 = *(*(v43 - 1) + 64);
  v45 = alloca(v44);
  v46 = alloca(v44);
  v174 = &v147;
  v47 = alloca(v44);
  v48 = alloca(v44);
  v171 = &v147;
  v49 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?) - 8) + 64);
  v50 = alloca(v49);
  v51 = alloca(v49);
  v164 = &v147;
  v52 = alloca(v49);
  v53 = alloca(v49);
  v54 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
  v55 = alloca(v54);
  v56 = alloca(v54);
  v153 = &v147;
  v57 = v175 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v175 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters, v148, 0, 0);
  v156 = v57;
  outlined init with copy of MLStyleTransfer.PersistentParameters?(v57, &v147);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v147, 1, v43);
  v163 = v37;
  v172 = v43;
  if (EnumTagSinglePayload)
  {
    v59 = &demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?;
    v60 = &v147;
LABEL_3:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v60, v59);
    goto LABEL_11;
  }

  v61 = v171;
  outlined init with copy of MLTrainingSessionParameters(&v147, v171, type metadata accessor for MLStyleTransfer.PersistentParameters);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v147, &demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?);
  v184 = *(v61 + v43[5]);
  v62 = *(v37 + 20);
  v63 = v180;
  v64 = v180 + v62;
  outlined init with copy of MLTrainingSessionParameters(v61 + v43[6], v64, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  *v63 = v184;
  v65 = v182;
  outlined destroy of MLActivityClassifier.ModelParameters(v61, type metadata accessor for MLStyleTransfer.PersistentParameters);
  v66 = v153;
  outlined init with take of MLClassifierMetrics(v64, v153, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  LODWORD(v64) = __swift_getEnumTagSinglePayload(v66, 1, v65);
  outlined destroy of MLActivityClassifier.ModelParameters(v66, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  if (v64 != 1)
  {
    v67 = v155;
    outlined init with copy of MLTrainingSessionParameters(v175 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters, v155, type metadata accessor for MLTrainingSessionParameters);
    v68 = v154;
    outlined init with take of URL?(v67, v154);
    if (__swift_getEnumTagSinglePayload(v68, 1, v65) == 1)
    {
      v59 = &demangling cache variable for type metadata for URL?;
      v60 = v68;
      goto LABEL_3;
    }

    v69 = v68;
    v70 = v183;
    (*(v183 + 32))(v165, v69, v65);
    v71 = v158;
    URL.appendingPathComponent(_:isDirectory:)(0xD000000000000010, ("Content column doesn't exist" + 0x8000000000000000), 1);
    v72 = v157;
    URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEA00000000006E6FLL);
    v73 = *(v70 + 8);
    v74 = v182;
    v75 = v71;
    v76 = v73;
    v73(v75, v182);
    URL.appendingPathExtension(_:)(6778480, 0xE300000000000000);
    v76(v72, v74);
    v180 = MLStyleTransfer.TrainingSessionDelegate.trainingParameters.modify(&v151);
    v78 = v77;
    v79 = v172;
    if (__swift_getEnumTagSinglePayload(v77, 1, v172))
    {
      (v180)(&v151, 0);
      v80 = v167;
    }

    else
    {
      v81 = v79[6] + v78;
      outlined destroy of MLActivityClassifier.ModelParameters(v81, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
      v82 = v167;
      (*(v183 + 16))(v81, v167, v74);
      __swift_storeEnumTagSinglePayload(v81, 0, 1, v74);
      (v180)(&v151, 0);
      v80 = v82;
    }

    v76(v80, v74);
    v76(v165, v74);
  }

LABEL_11:
  v83 = v177;
  specialized BidirectionalCollection.last.getter(rawValue);
  v84 = v178;
  if (__swift_getEnumTagSinglePayload(v83, 1, v178) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v83, &demangling cache variable for type metadata for MLCheckpoint?);
    v85 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v85, 0, 0);
    *v86 = 0xD00000000000001DLL;
    *(v86 + 8) = "reated." + 0x8000000000000000;
    *(v86 + 16) = 0;
    *(v86 + 32) = 0;
    *(v86 + 48) = 0;
    swift_willThrow();
    return;
  }

  v87 = 0xEA0000000000676ELL;
  v88 = v83;
  v89 = v181;
  outlined init with take of MLClassifierMetrics(v88, v181, type metadata accessor for MLCheckpoint);
  switch(*(v89 + v84[5]))
  {
    case 0:
      v90 = 0x696C616974696E69;
      v87 = 0xEB0000000064657ALL;
      goto LABEL_19;
    case 1:
      v90 = 0x6974636172747865;
      goto LABEL_19;
    case 2:
      0;
      goto LABEL_20;
    case 3:
      v90 = 0x697461756C617665;
      goto LABEL_19;
    case 4:
      v87 = &loc_308EF - 0x14FFFFFFFF9B9A86;
      v90 = 0x636E657265666E69;
LABEL_19:
      v91 = _stringCompareWithSmolCheck(_:_:expecting:)(v90, v87, 0x676E696E69617274, 0xE800000000000000, 0);
      v87;
      if ((v91 & 1) == 0)
      {
        v103 = "" + 0x8000000000000000;
        v104 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v104, 0, 0);
        v106 = 0xD000000000000028;
        goto LABEL_35;
      }

LABEL_20:
      v92 = v182;
      (*(v183 + 16))(v179, v181, v182);
      v94 = URL.absoluteString.getter();
      v95 = v93;
      if ((v93 & 0x1000000000000000) != 0 || !(v93 & 0x2000000000000000 | v94 & 0x1000000000000000))
      {
        v145 = v166;
        _StringGuts._slowWithCString<A>(_:)(closure #1 in CMLModel.init(url:), 0, v94, v93, &type metadata for OpaquePointer);
        if (!v145)
        {
          v95;
          v98 = v164;
          goto LABEL_33;
        }

LABEL_30:
        (*(v183 + 8))(v179, v92);
        v95;
        goto LABEL_36;
      }

      v96 = alloca(32);
      v97 = alloca(32);
      v150 = 0;
      v149 = closure #1 in CMLModel.init(url:);
      v98 = v164;
      if ((v93 & 0x2000000000000000) != 0)
      {
        v151 = v94;
        v152 = v93 & 0xFFFFFFFFFFFFFFLL;
        v107 = v166;
        v102 = specialized handling<A, B>(_:_:)(&v151);
        if (!v107)
        {
          if (!v102)
          {
            BUG();
          }

          goto LABEL_32;
        }

        goto LABEL_29;
      }

      if ((v94 & 0x1000000000000000) != 0)
      {
        v99 = (v93 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v100 = v94 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v99 = _StringObject.sharedUTF8.getter(v94, v93);
        v100 = v146;
      }

      v101 = v166;
      v102 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v99, v100, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
      if (v101)
      {
LABEL_29:
        v92 = v182;
        goto LABEL_30;
      }

LABEL_32:
      v169 = v102;
      v95;
LABEL_33:
      v108 = v169;
      rawValue = *(v183 + 8);
      rawValue(v179, v182);
      v109 = type metadata accessor for CMLModel();
      v110 = swift_allocObject(v109, 24, 7);
      *(v110 + 16) = v108;
      v177 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model;
      *(v175 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model) = v110;

      outlined init with copy of MLStyleTransfer.PersistentParameters?(v156, v98);
      if (__swift_getEnumTagSinglePayload(v98, 1, v172) != 1)
      {
        v112 = v174;
        outlined init with take of MLClassifierMetrics(v98, v174, type metadata accessor for MLStyleTransfer.PersistentParameters);
        v113 = v159;
        outlined init with copy of MLTrainingSessionParameters(v112, v159, type metadata accessor for MLStyleTransfer.DataSource);
        v114 = v113 + *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?)) + 48);
        v115 = *(v183 + 32);
        v116 = v113;
        v117 = v182;
        v115(v168, v116, v182);
        v118 = v114;
        v119 = v117;
        v120 = v160;
        v178 = v115;
        v115(v160, v118, v119);
        static MLStyleTransfer.generateTrainingTable(directoryURL:)(v120);
        v121 = v119;
        rawValue(v120, v119);
        v179 = v151;
        LODWORD(v183) = v152;
        v122 = v161;
        v123 = v119;
        v124 = v178;
        (v178)(v161, v168, v123);
        v125 = v121;
        v126 = v179;
        (v124)(v173, v122, v125);
        v169 = v126;
        v170 = v183 & 1;
        outlined copy of Result<_DataTable, Error>(v126, v183);
        v127._object = 0xEB00000000734C52;
        v127._countAndFlagsBits = 0x55746E65746E6F63;
        MLDataTable.subscript.getter(v127);
        outlined consume of Result<_DataTable, Error>(v169, v170);
        v128 = v151;
        if (v152)
        {
          outlined consume of Result<_DataTable, Error>(v151, 1);
          v129 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v129, 0, 0);
          *v130 = 0xD00000000000001CLL;
          *(v130 + 8) = "rt a new session." + 0x8000000000000000;
          *(v130 + 16) = 0;
          *(v130 + 32) = 0;
          *(v130 + 48) = 0;
          swift_willThrow();
          v131 = v183;
          v132 = v126;
        }

        else
        {
          v178 = v151[2];

          outlined consume of Result<_DataTable, Error>(v128, 0);
          v133 = URL.path.getter(v128);
          v135 = v134;
          v136 = type metadata accessor for _UntypedColumn();
          swift_allocObject(v136, 24, 7);
          v171 = specialized _UntypedColumn.init<A>(repeating:count:)(v133, v135, 1);
          v180 = v171[2];
          v175 = *(v177 + v175);
          v137 = v174;
          LOBYTE(v177) = *(v174 + v172[5]);
          v138 = v163;
          v139 = v162;
          outlined init with copy of MLTrainingSessionParameters(v174 + v172[6], v162 + v163[5], type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
          v140 = *(v137 + v172[7]);
          v141 = v172;
          v142 = *(v137 + v172[8]);
          *(v139 + v138[6]) = 1;
          v143 = v138[10];
          *v139 = v177;
          *(v139 + v138[7]) = 500;
          *(v139 + v138[8]) = v140;
          *(v139 + v138[9]) = v142;
          LODWORD(v177) = *(v137 + v141[9]);
          *(v139 + v143) = v177;
          v144 = v180;

          outlined destroy of MLActivityClassifier.ModelParameters(v139, type metadata accessor for MLStyleTransfer.ModelParameters);
          CMLModel.resume(style:content:device:)(v144, v178, v177);

          v131 = v183;
          v132 = v179;
        }

        outlined consume of Result<_DataTable, Error>(v132, v131);
        rawValue(v173, v182);
        outlined destroy of MLActivityClassifier.ModelParameters(v174, type metadata accessor for MLStyleTransfer.PersistentParameters);
        goto LABEL_36;
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v98, &demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?);
      v103 = "tylized validation result" + 0x8000000000000000;
      v111 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v111, 0, 0);
      v106 = 0xD000000000000061;
LABEL_35:
      *v105 = v106;
      *(v105 + 8) = v103;
      *(v105 + 16) = 0;
      *(v105 + 32) = 0;
      *(v105 + 48) = 0;
      swift_willThrow();
LABEL_36:
      outlined destroy of MLActivityClassifier.ModelParameters(v181, type metadata accessor for MLCheckpoint);
      return;
  }
}

uint64_t CMLModel.resume(style:content:device:)(uint64_t a1, uint64_t a2, int a3)
{
  v27 = v4;
  v28 = a3;
  v29 = a2;
  v26 = type metadata accessor for _Model.Parameters(0);
  v5 = *(*(v26 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v25 = &v22;
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v9 = empty;
  v10 = type metadata accessor for CMLParameters();
  inited = swift_initStackObject(v10, v23);
  *(inited + 16) = v9;
  CMLParameters.add(key:column:)(71, a1);
  if (v3)
  {
  }

  CMLParameters.add(key:column:)(72, v29);
  v12 = tc_v1_flex_dict_create(0);
  if (!v12)
  {
    BUG();
  }

  v13 = v12;
  v14 = type metadata accessor for CMLDictionary();
  v15 = swift_initStackObject(v14, v24);
  *(v15 + 16) = v13;
  v16 = v28;
  v17 = 1869903201;
  if (v28)
  {
    v17 = 7696483;
  }

  v18 = v25;
  *v25 = v17;
  *(v18 + 8) = (((v16 & 1) == 0) << 56) - 0x1D00000000000000;
  swift_storeEnumTagMultiPayload(v18, v26, 9);
  CMLDictionary.add(_:)(v18);
  outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for _Model.Parameters);
  type metadata accessor for CMLFeatureValue();

  v29 = v15;
  v19 = CMLFeatureValue.__allocating_init(_:)(v15);
  CMLParameters.add(key:featureValue:)(47, v19);

  CMLModel.callFunction(name:arguments:)(3, inited);

  v20 = v29;
  swift_setDeallocating(v29);
  tc_v1_release(*(v20 + 16));
  swift_setDeallocating(inited);
  return tc_v1_release(*(inited + 16));
}

Swift::Int_optional __swiftcall MLStyleTransfer.TrainingSessionDelegate.itemCount(phase:)(CreateML::MLPhase phase)
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
      v4 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters + v1;
      v2 = 0;
      v3.value = *(*(type metadata accessor for MLTrainingSessionParameters(0) + 28) + v4);
      break;
  }

  v3.is_nil = v2;
  return v3;
}

uint64_t MLStyleTransfer.TrainingSessionDelegate.saveImage(from:to:)(uint64_t a1, const __CFURL *a2)
{
  url = a2;
  v3 = type metadata accessor for UTType(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v33 = &v32;
  result = CMLMultiArray.data()();
  if (!v2)
  {
    v35 = v3;
    v34 = v4;
    v36 = 0;
    v38 = _swiftEmptyArrayStorage;
    v9 = 0;
    v41 = result;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 786432, 0);
    v10 = v41;
    v11 = v38;
    do
    {
      v12 = *(v10 + 8 * v9);
      if ((v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        BUG();
      }

      if (*&v12 <= -1.0)
      {
        BUG();
      }

      if (*&v12 >= 256.0)
      {
        BUG();
      }

      v38 = v11;
      v13 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v14 >> 1 <= v13)
      {
        v40 = v12;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v14 >= 2, v13 + 1, 1);
        v12 = v40;
        v10 = v41;
        v11 = v38;
      }

      ++v9;
      *(v11 + 16) = v13 + 1;
      *(v11 + v13 + 32) = *&v12;
    }

    while (v9 != 786432);
    v40 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5(v11);
    v41 = v15;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v17 = CGDataProviderCreateWithCFData(isa);

    if (!v17)
    {
      goto LABEL_14;
    }

    v18 = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
    if (!v18)
    {
      BUG();
    }

    v19 = v18;
    v20 = CGImageCreate(0x200uLL, 0x200uLL, 8uLL, 0x18uLL, 0x600uLL, v18, 0, v17, 0, 0, kCGRenderingIntentDefault);

    v21 = v34;
    if (v20)
    {
      image = v20;
      URL._bridgeToObjectiveC()(image);
      url = v22;
      v23 = v33;
      static UTType.png.getter(-1.0, 256.0);
      UTType.identifier.getter();
      v25 = v24;
      (*(v21 + 8))(v23, v35);
      v26 = String._bridgeToObjectiveC()();
      v25;
      v27 = url;
      v28 = CGImageDestinationCreateWithURL(url, v26, 1uLL, 0);

      if (!v28)
      {
        BUG();
      }

      v29 = image;
      CGImageDestinationAddImage(v28, image, 0);
      CGImageDestinationFinalize(v28);

      return outlined consume of Data._Representation(v40, v41);
    }

    else
    {
LABEL_14:
      v30 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v30, 0, 0);
      *v31 = 0xD000000000000029;
      *(v31 + 8) = "column is invalid" + 0x8000000000000000;
      *(v31 + 16) = 0;
      *(v31 + 32) = 0;
      *(v31 + 48) = 0;
      swift_willThrow();
      return outlined consume of Data._Representation(v40, v41);
    }
  }

  return result;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5(uint64_t a1)
{
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [UInt8]);
  v8 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
  v6[0] = a1;
  v1 = *__swift_project_boxed_opaque_existential_0Tm(v6, v7);
  v2 = v1 + 32;
  v3 = v1 + 32 + *(v1 + 16);

  closure #1 in Data.init<A>(_:)(v2, v3);
  v4 = v9;
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  a1;
  return v4;
}

Swift::tuple_Int_metrics_OpaquePointer_finished_Bool __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLStyleTransfer.TrainingSessionDelegate.train(from:)(Swift::Int from)
{
  v4 = v1;
  v147 = v2;
  v131 = type metadata accessor for UUID(0);
  v130 = *(v131 - 8);
  v6 = *(v130 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v132 = v124;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v141 = v124;
  v12 = type metadata accessor for MLTrainingSessionParameters(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v134 = v124;
  v16 = type metadata accessor for URL(0);
  v156 = *(v16 - 8);
  v17 = *(v156 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v133 = v124;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v140 = v124;
  v22 = alloca(v17);
  v23 = alloca(v17);
  v146 = v124;
  v24 = alloca(v17);
  v25 = alloca(v17);
  v154 = v124;
  v143 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v26 = *(*(v143 - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v151 = v124;
  v144 = type metadata accessor for MLStyleTransfer.PersistentParameters(0);
  v29 = *(*(v144 - 1) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v145 = v124;
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?) - 8) + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v152 = v124;
  v35 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
  v36 = v147;
  v37 = *(*(v35 - 8) + 64);
  v38 = alloca(v37);
  v39 = alloca(v37);
  v148 = v124;
  v40 = alloca(v37);
  v41 = alloca(v37);
  v42 = alloca(v37);
  v43 = alloca(v37);
  v155 = v124;
  v44 = *(*(v12 + 20) + v147 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters);
  if (__OFADD__(v44, from))
  {
    BUG();
  }

  v45 = *(v147 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters + *(v12 + 28));
  v46 = v45 - from;
  if (__OFSUB__(v45, from))
  {
    BUG();
  }

  if (v44 < v46)
  {
    v46 = *(*(v12 + 20) + v147 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters);
  }

  if (v46 < 0)
  {
    BUG();
  }

  v142 = v124;
  v135 = v147 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters;
  v139 = v45;
  v138 = v44 + from;
  v153 = v16;
  v137 = v46;
  if (v46)
  {
    v150 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model;
    v158 = *(v147 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_args);
    v47 = v46;
    do
    {

      CMLModel.callFunction(name:arguments:)(1, v158);
      if (v4)
      {
        goto LABEL_11;
      }

      --v47;
      v4 = 0;
      v36 = v147;
    }

    while (v47);
  }

  v47 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model;
  v48 = v4;
  v49 = *(v36 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_args);

  CMLModel.callFunction(name:arguments:)(2, v49);
  if (v48)
  {
LABEL_11:

    goto LABEL_23;
  }

  v150 = v47;
  v158 = 0;

  v52 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v157 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v52);
  v53 = v147 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v147 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters, v124, 0, 0);
  v54 = v152;
  outlined init with copy of MLStyleTransfer.PersistentParameters?(v53, v152);
  v55 = v144;
  if (!__swift_getEnumTagSinglePayload(v54, 1, v144))
  {
    v149 = _swiftEmptyArrayStorage;
    v56 = v145;
    outlined init with copy of MLTrainingSessionParameters(v54, v145, type metadata accessor for MLStyleTransfer.PersistentParameters);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v54, &demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?);
    v57 = v56[v55[5]];
    v58 = &v56[v55[6]];
    v59 = v151;
    v60 = &v151[*(v143 + 20)];
    outlined init with copy of MLTrainingSessionParameters(v58, v60, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
    *v59 = v57;
    outlined destroy of MLActivityClassifier.ModelParameters(v56, type metadata accessor for MLStyleTransfer.PersistentParameters);
    v61 = v60;
    v62 = v142;
    outlined init with take of MLClassifierMetrics(v61, v142, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
    v63 = v155;
    outlined init with take of MLClassifierMetrics(v62, v155, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
    v64 = v148;
    outlined init with copy of MLTrainingSessionParameters(v63, v148, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
    v47 = v153;
    if (__swift_getEnumTagSinglePayload(v64, 1, v153) == 1)
    {
      outlined destroy of MLActivityClassifier.ModelParameters(v63, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
      v65 = v64;
LABEL_17:
      outlined destroy of MLActivityClassifier.ModelParameters(v65, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
      goto LABEL_18;
    }

    v75 = v154;
    v144 = *(v156 + 32);
    (v144)(v154, v64, v47);

    v76 = v158;
    v77 = CMLModel.predict(validationURL:)(v75);
    if (v76)
    {

      (*(v156 + 8))(v75, v47);
      outlined destroy of MLActivityClassifier.ModelParameters(v155, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
      v50 = v157;
      goto LABEL_23;
    }

    v78 = v77;

    v47 = specialized handling<A, B>(_:_:)(*(v78 + 2));
    v152 = v78;
    v79 = v157;
    if (!v47)
    {
      BUG();
    }

    v80 = type metadata accessor for CMLColumn();
    inited = swift_initStackObject(v80, v125);
    *(inited + 2) = v47;
    if (CMLColumn.size.getter() == 1)
    {
      v148 = v47;
      v82 = CMLColumn.value(at:)(0);
      v151 = inited;
      v87 = specialized handling<A, B>(_:_:)(*(v82 + 16));
      v158 = 0;
      v47 = v87;
      if (!v87)
      {
        BUG();
      }

      v88 = type metadata accessor for CMLMultiArray();
      v89 = swift_initStackObject(v88, v126);
      *(v89 + 16) = v47;
      v90 = v158;
      v91 = CMLMultiArray.shape()();
      v158 = v90;
      v92 = v156;
      if (v90)
      {
        swift_setDeallocating(v151);
        tc_v1_release(v148);

        (*(v92 + 8))(v154, v153);
        goto LABEL_37;
      }

      v93 = specialized _copyCollectionToContiguousArray<A>(_:)(v91, 3);
      v94 = v93[2];
      v143 = v89;
      if (v94)
      {
        *&v128 = _swiftEmptyArrayStorage;
        v47 = 0;
        v145 = v94;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v94, 0);
        v95 = v145;
        v149 = v128;
        do
        {
          v96 = v93[v47 + 4];
          if (v96 < 0)
          {
            BUG();
          }

          v97 = v149;
          *&v128 = v149;
          v98 = v149[2];
          v99 = v149[3];
          v100 = v98 + 1;
          if (v99 >> 1 <= v98)
          {
            v142 = v149[2];
            v149 = v98 + 1;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v99 >= 2, v100, 1);
            v100 = v149;
            v98 = v142;
            v95 = v145;
            v97 = v128;
          }

          ++v47;
          v97[2] = v100;
          v149 = v97;
          v97[v98 + 4] = v96;
        }

        while (v95 != v47);
      }

      v101 = v153;
      v102 = v149;
      v103 = specialized Sequence<>.elementsEqual<A>(_:)(&outlined read-only object #0 of MLStyleTransfer.TrainingSessionDelegate.train(from:), v149);
      v102;
      if (v103)
      {
        v104 = v134;
        outlined init with copy of MLTrainingSessionParameters(v135, v134, type metadata accessor for MLTrainingSessionParameters);
        v105 = v141;
        outlined init with take of URL?(v104, v141);
        if (__swift_getEnumTagSinglePayload(v105, 1, v101) == 1)
        {
          v106 = NSTemporaryDirectory();
          v107 = v106;
          v144 = static String._unconditionallyBridgeFromObjectiveC(_:)(v107);
          v109 = v108;

          URL.init(fileURLWithPath:isDirectory:)(v144, v109, 1);
          v109;
          if (__swift_getEnumTagSinglePayload(v105, 1, v101) != 1)
          {
            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v141, &demangling cache variable for type metadata for URL?);
          }
        }

        else
        {
          (v144)(v146, v105, v101);
        }

        v112 = v132;
        UUID.init()();
        v113 = UUID.uuidString.getter();
        v115 = v114;
        (*(v130 + 8))(v112, v131);
        v116 = v133;
        URL.appendingPathComponent(_:)(v113, v115);
        v115;
        v117 = v140;
        URL.appendingPathExtension(_:)(6778480, 0xE300000000000000);
        v118 = v117;
        v119 = *(v156 + 8);
        v120 = v153;
        v119(v116, v153);
        v47 = v143;
        v121 = v158;
        MLStyleTransfer.TrainingSessionDelegate.saveImage(from:to:)(v143, v118);
        v158 = v121;
        if (!v121)
        {
          v129 = v120;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v128);
          (*(v156 + 16))(boxed_opaque_existential_0, v118, v120);
          outlined init with take of Any(&v128, v127);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v157);
          v136 = v157;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v127, 6, isUniquelyReferenced_nonNull_native);

          v157 = v136;
          v119(v140, v120);
          v119(v146, v120);
          v119(v154, v120);
          v65 = v155;
          goto LABEL_17;
        }

        v119(v118, v120);
        v119(v146, v120);
        v119(v154, v120);
LABEL_37:
        outlined destroy of MLActivityClassifier.ModelParameters(v155, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
        v50 = v157;
        goto LABEL_23;
      }

      v157;
      v110 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v110, 0, 0);
      *v111 = 0xD00000000000001CLL;
      *(v111 + 8) = "3TrainingSessionDelegate" + 0x8000000000000000;
      *(v111 + 16) = 0;
      *(v111 + 32) = 0;
      *(v111 + 48) = 0;
      swift_willThrow();
      swift_setDeallocating(v151);
      tc_v1_release(v148);

      v85 = v154;
      v86 = v101;
    }

    else
    {
      v79;
      v83 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v83, 0, 0);
      *v84 = 0xD00000000000001CLL;
      *(v84 + 8) = "3TrainingSessionDelegate" + 0x8000000000000000;
      *(v84 + 16) = 0;
      *(v84 + 32) = 0;
      *(v84 + 48) = 0;
      swift_willThrow();
      swift_setDeallocating(inited);
      tc_v1_release(v47);

      v85 = v154;
      v86 = v153;
    }

    (*(v156 + 8))(v85, v86);
    v50 = outlined destroy of MLActivityClassifier.ModelParameters(v155, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
    goto LABEL_23;
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v54, &demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?);
LABEL_18:

  v66 = CMLModel.contentLoss.getter(v3);
  v68 = v67;

  v47 = v157;
  if ((v68 & 1) == 0)
  {
    v129 = &type metadata for Double;
    *&v128 = v66;
    outlined init with take of Any(&v128, v127);
    v69 = swift_isUniquelyReferenced_nonNull_native(v47);
    v136 = v47;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v127, 1, v69);
    v47 = v136;
  }

  v70 = CMLModel.styleLoss.getter(v3);
  v72 = v71;

  if ((v72 & 1) == 0)
  {
    v129 = &type metadata for Double;
    *&v128 = v70;
    outlined init with take of Any(&v128, v127);
    v73 = swift_isUniquelyReferenced_nonNull_native(v47);
    v136 = v47;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v127, 2, v73);
    v47 = v136;
  }

  v50 = v137;
  v51 = v138 >= v139;
LABEL_23:
  v74 = v47;
  result.metrics._rawValue = v74;
  result._0 = v50;
  result.finished = v51;
  return result;
}

uint64_t CMLModel.predict(validationURL:)(uint64_t a1)
{
  v28 = v1;
  v25 = v2;
  v27 = a1;
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v4 = empty;
  v5 = type metadata accessor for CMLParameters();
  inited = swift_initStackObject(v5, v20);
  *(inited + 16) = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<URL>);
  v7 = type metadata accessor for URL(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 + 32) & ~*(v8 + 80);
  v11 = swift_allocObject(v6, v10 + *(v8 + 72), v9 | 7);
  *(v11 + 16) = 1;
  *(v11 + 24) = 2;
  (*(v8 + 16))(v11 + v10, v27, v7);
  v12 = v28;
  static MLStyleTransfer.generateTrainingTable(urls:)(v11);
  if (v12)
  {

    swift_setDeallocating(v11);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
  }

  else
  {
    swift_setDeallocating(v11);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v13 = v24;
    v21 = v23;
    v22 = v24 & 1;
    v28 = v23;
    outlined copy of Result<_DataTable, Error>(v23, v24);
    v14._countAndFlagsBits = 0x55746E65746E6F63;
    v14._object = 0xEB00000000734C52;
    MLDataTable.subscript.getter(v14);
    outlined consume of Result<_DataTable, Error>(v21, v22);
    v11 = v23;
    if (v24)
    {
      outlined consume of Result<_DataTable, Error>(v23, 1);
      v15 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v15, 0, 0);
      *v16 = 0xD000000000000021;
      *(v16 + 8) = "checkpoint inference failed." + 0x8000000000000000;
      *(v16 + 16) = 0;
      *(v16 + 32) = 0;
      *(v16 + 48) = 0;
      swift_willThrow();
      outlined consume of Result<_DataTable, Error>(v28, v13);
    }

    else
    {
      LODWORD(v27) = v13;
      v17 = *(v23 + 16);

      outlined consume of Result<_DataTable, Error>(v11, 0);
      v18 = inited;
      CMLParameters.add(key:column:)(4, v17);
      v11 = CMLModel.callFunction(name:arguments:)(10, v18);

      outlined consume of Result<_DataTable, Error>(v28, v27);
      swift_setDeallocating(v18);
      tc_v1_release(*(v18 + 16));
    }
  }

  return v11;
}

Swift::tuple_Int_finished_Bool __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLStyleTransfer.TrainingSessionDelegate.evaluate(from:)(Swift::Int from)
{
  v3 = *(v2 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_args);

  CMLModel.callFunction(name:arguments:)(4, v3);

  if (!v1)
  {
  }

  v4._0 = 1;
  v4.finished = 1;
  return v4;
}

uint64_t MLStyleTransfer.TrainingSessionDelegate.saveCheckpoint(to:phase:iteration:)(uint64_t a1, unsigned __int8 *a2)
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

uint64_t MLStyleTransfer.TrainingSessionDelegate.save(to:)(uint64_t a1)
{
  v16 = v1;
  v17 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for MLStyleTransfer.PersistentParameters(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters + v2;
  swift_beginAccess(v10, v15, 0, 0);
  outlined init with copy of MLStyleTransfer.PersistentParameters?(v10, &v14);
  if (__swift_getEnumTagSinglePayload(&v14, 1, v6) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v14, &demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?);
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
    outlined init with take of MLClassifierMetrics(&v14, &v14, type metadata accessor for MLStyleTransfer.PersistentParameters);
    MLStyleTransfer.PersistentParameters.save(toSessionDirectory:)(v17);
    return outlined destroy of MLActivityClassifier.ModelParameters(&v14, type metadata accessor for MLStyleTransfer.PersistentParameters);
  }
}

NSURL *MLStyleTransfer.TrainingSessionDelegate.restore(from:phase:)(uint64_t a1)
{
  v36 = v1;
  v31 = v2;
  v30 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v33 = &v27;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v35 = &v27;
  v8 = type metadata accessor for URL(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v32 = type metadata accessor for MLStyleTransfer.PersistentParameters(0);
  v13 = *(*(v32 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v34 = &v27;
  v16 = alloca(v13);
  v17 = alloca(v13);
  (*(v9 + 16))(&v27, v30, v8);
  v18 = v36;
  result = MLStyleTransfer.PersistentParameters.init(sessionDirectory:)(&v27);
  if (!v18)
  {
    v36 = &v27;
    v20 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters + v31;
    swift_beginAccess(OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters + v31, v28, 0, 0);
    v21 = v35;
    outlined init with copy of MLStyleTransfer.PersistentParameters?(v20, v35);
    v22 = v21;
    v23 = v32;
    if (__swift_getEnumTagSinglePayload(v22, 1, v32) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v35, &demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?);
      v24 = v33;
      outlined init with take of MLClassifierMetrics(v36, v33, type metadata accessor for MLStyleTransfer.PersistentParameters);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v23);
      swift_beginAccess(v20, v29, 33, 0);
      outlined assign with take of MLStyleTransfer.PersistentParameters?(v24, v20);
      return swift_endAccess(v29);
    }

    else
    {
      v25 = v34;
      outlined init with take of MLClassifierMetrics(v35, v34, type metadata accessor for MLStyleTransfer.PersistentParameters);
      v26 = v36;
      MLStyleTransfer.TrainingSessionDelegate.verifyParametersCompatibility(_:_:phase:)(v36, v25);
      outlined destroy of MLActivityClassifier.ModelParameters(v25, type metadata accessor for MLStyleTransfer.PersistentParameters);
      return outlined destroy of MLActivityClassifier.ModelParameters(v26, type metadata accessor for MLStyleTransfer.PersistentParameters);
    }
  }

  return result;
}

uint64_t MLStyleTransfer.TrainingSessionDelegate.verifyParametersCompatibility(_:_:phase:)(uint64_t a1, uint64_t a2)
{
  v77 = v2;
  v87 = a2;
  v3 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v4 = *(*(v3 - 1) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v75 = v73;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v76 = v73;
  v9 = alloca(v4);
  v10 = alloca(v4);
  v74 = v73;
  v11 = alloca(v4);
  v12 = alloca(v4);
  v13 = type metadata accessor for MLStyleTransfer.PersistentParameters(0);
  v79 = v13[5];
  LOBYTE(v89) = *(a1 + v79);
  v14 = &v73[v3[5]];
  v81 = a1 + v13[6];
  outlined init with copy of MLTrainingSessionParameters(v81, v14, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  v15 = *(a1 + v13[7]);
  v16 = *(a1 + v13[8]);
  v85 = a1;
  *&v73[v3[6]] = 1;
  v17 = v3[10];
  v73[0] = v89;
  *&v73[v3[7]] = 500;
  v18 = v3[8];
  v89 = v15;
  *&v73[v18] = v15;
  v19 = v3[9];
  v88 = v16;
  *&v73[v19] = v16;
  v90 = *(a1 + v13[9]);
  v73[v17] = v90;
  v78 = v73[0];
  outlined destroy of MLActivityClassifier.ModelParameters(v73, type metadata accessor for MLStyleTransfer.ModelParameters);
  v84 = v13[5];
  LOBYTE(v86) = *(v87 + v84);
  v20 = v74;
  v21 = &v74[v3[5]];
  v83 = v87 + v13[6];
  outlined init with copy of MLTrainingSessionParameters(v83, v21, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  v22 = *(v87 + v13[7]);
  v23 = *(v87 + v13[8]);
  v24 = v87;
  *&v20[v3[6]] = 1;
  v25 = v3[10];
  *v20 = v86;
  *&v20[v3[7]] = 500;
  v26 = v3[8];
  v86 = v22;
  *&v20[v26] = v22;
  v27 = v3[9];
  v82 = v23;
  *&v20[v27] = v23;
  v91 = *(v24 + v13[9]);
  v20[v25] = v91;
  LOBYTE(v13) = *v20;
  outlined destroy of MLActivityClassifier.ModelParameters(v20, type metadata accessor for MLStyleTransfer.ModelParameters);
  v28 = specialized == infix<A>(_:_:)(v78, v13);
  v29 = *(v85 + v79);
  v30 = v3[5];
  if (v28)
  {
    outlined init with copy of MLTrainingSessionParameters(v81, &v73[v30], type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
    *&v73[v3[6]] = 1;
    v31 = v3[10];
    v73[0] = v29;
    *&v73[v3[7]] = 500;
    *&v73[v3[8]] = v89;
    *&v73[v3[9]] = v88;
    v73[v31] = v90;
    outlined destroy of MLActivityClassifier.ModelParameters(v73, type metadata accessor for MLStyleTransfer.ModelParameters);
    v32 = *(v87 + v84);
    outlined init with copy of MLTrainingSessionParameters(v83, &v20[v3[5]], type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
    *&v20[v3[6]] = 1;
    v33 = v3[10];
    *v20 = v32;
    *&v20[v3[7]] = 500;
    *&v20[v3[8]] = v86;
    *&v20[v3[9]] = v82;
    v20[v33] = v91;
    outlined destroy of MLActivityClassifier.ModelParameters(v20, type metadata accessor for MLStyleTransfer.ModelParameters);
    v34 = *(v85 + v79);
    outlined init with copy of MLTrainingSessionParameters(v81, &v73[v3[5]], type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
    *&v73[v3[6]] = 1;
    v35 = v3[10];
    v73[0] = v34;
    *&v73[v3[7]] = 500;
    v36 = v89;
    *&v73[v3[8]] = v89;
    *&v73[v3[9]] = v88;
    v73[v35] = v90;
    outlined destroy of MLActivityClassifier.ModelParameters(v73, type metadata accessor for MLStyleTransfer.ModelParameters);
    if (v36 == v86)
    {
      v37 = *(v87 + v84);
      outlined init with copy of MLTrainingSessionParameters(v83, &v20[v3[5]], type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
      *&v20[v3[6]] = 1;
      v38 = v3[10];
      *v20 = v37;
      *&v20[v3[7]] = 500;
      *&v20[v3[8]] = v89;
      v39 = v82;
      *&v20[v3[9]] = v82;
      v20[v38] = v91;
      result = outlined destroy of MLActivityClassifier.ModelParameters(v20, type metadata accessor for MLStyleTransfer.ModelParameters);
      if (v88 == v39)
      {
        return result;
      }

      v41 = *(v85 + v79);
      outlined init with copy of MLTrainingSessionParameters(v81, &v73[v3[5]], type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
      *&v73[v3[6]] = 1;
      v42 = v3[10];
      v73[0] = v41;
      *&v73[v3[7]] = 500;
      *&v73[v3[8]] = v89;
      v43 = v88;
      *&v73[v3[9]] = v88;
      v73[v42] = v90;
      outlined destroy of MLActivityClassifier.ModelParameters(v73, type metadata accessor for MLStyleTransfer.ModelParameters);
      v80 = v43;
      v85 = lazy protocol witness table accessor for type Int and conformance Int();
      v88 = BinaryInteger.description.getter(&type metadata for Int, v85);
      v86 = v44;
      v45 = *(v87 + v84);
      outlined init with copy of MLTrainingSessionParameters(v83, &v20[v3[5]], type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
      *&v20[v3[6]] = 1;
      v46 = v3[10];
      *v20 = v45;
      *&v20[v3[7]] = 500;
      *&v20[v3[8]] = v89;
      v47 = v3[9];
      v48 = v82;
      *&v20[v47] = v82;
      v20[v46] = v91;
      outlined destroy of MLActivityClassifier.ModelParameters(v20, type metadata accessor for MLStyleTransfer.ModelParameters);
      v80 = v48;
      v49 = BinaryInteger.description.getter(&type metadata for Int, v85);
      v51 = v50;
      v52 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v52, 0, 0);
      strcpy(v53, "Style Strength");
      *(v53 + 15) = -18;
      *(v53 + 16) = v88;
      v54 = v86;
    }

    else
    {
      v80 = v89;
      v85 = lazy protocol witness table accessor for type Int and conformance Int();
      v89 = BinaryInteger.description.getter(&type metadata for Int, v85);
      v88 = v67;
      v68 = *(v87 + v84);
      outlined init with copy of MLTrainingSessionParameters(v83, &v20[v3[5]], type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
      *&v20[v3[6]] = 1;
      v69 = v3[10];
      *v20 = v68;
      *&v20[v3[7]] = 500;
      v70 = v86;
      *&v20[v3[8]] = v86;
      *&v20[v3[9]] = v82;
      v20[v69] = v91;
      outlined destroy of MLActivityClassifier.ModelParameters(v20, type metadata accessor for MLStyleTransfer.ModelParameters);
      v80 = v70;
      v49 = BinaryInteger.description.getter(&type metadata for Int, v85);
      v51 = v71;
      v72 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v72, 0, 0);
      strcpy(v53, "Textel Density");
      *(v53 + 15) = -18;
      *(v53 + 16) = v89;
      v54 = v88;
    }

    *(v53 + 24) = v54;
    *(v53 + 32) = v49;
    *(v53 + 40) = v51;
  }

  else
  {
    v55 = v76;
    outlined init with copy of MLTrainingSessionParameters(v81, &v76[v30], type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
    *&v55[v3[6]] = 1;
    v56 = v3[10];
    *v55 = v29;
    *&v55[v3[7]] = 500;
    *&v55[v3[8]] = v89;
    *&v55[v3[9]] = v88;
    v55[v56] = v90;
    v57 = *v55;
    v58 = "volutional neural network lite)";
    v59 = "volutional neural network lite)";
    if (*v55)
    {
      v59 = "parallelTreeCount";
    }

    v88 = 0xD00000000000004FLL;
    v60 = v57 == 0;
    v61 = 0xD000000000000046;
    if (!v60)
    {
      v61 = 0xD00000000000004FLL;
    }

    v89 = v61;
    outlined destroy of MLActivityClassifier.ModelParameters(v55, type metadata accessor for MLStyleTransfer.ModelParameters);
    v62 = v59 | 0x8000000000000000;
    LOBYTE(v87) = *(v87 + v84);
    v63 = v75;
    outlined init with copy of MLTrainingSessionParameters(v83, &v75[v3[5]], type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
    *&v63[v3[6]] = 1;
    v64 = v3[10];
    *v63 = v87;
    *&v63[v3[7]] = 500;
    *&v63[v3[8]] = v86;
    *&v63[v3[9]] = v82;
    v63[v64] = v91;
    v65 = 0xD000000000000046;
    if (*v63)
    {
      v65 = v88;
      v58 = "parallelTreeCount";
    }

    outlined destroy of MLActivityClassifier.ModelParameters(v63, type metadata accessor for MLStyleTransfer.ModelParameters);
    v66 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v66, 0, 0);
    *v53 = 0x687469726F676C41;
    *(v53 + 8) = 0xE90000000000006DLL;
    *(v53 + 16) = v89;
    *(v53 + 24) = v62;
    *(v53 + 32) = v65;
    *(v53 + 40) = v58 | 0x8000000000000000;
  }

  *(v53 + 48) = 3;
  return swift_willThrow();
}

uint64_t MLStyleTransfer.TrainingSessionDelegate.deinit()
{
  *(v0 + 24);
  outlined destroy of MLActivityClassifier.ModelParameters(v0 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters, &demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?);

  return v0;
}

uint64_t type metadata accessor for MLStyleTransfer.TrainingSessionDelegate(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLStyleTransfer.TrainingSessionDelegate;
  if (!type metadata singleton initialization cache for MLStyleTransfer.TrainingSessionDelegate)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLStyleTransfer.TrainingSessionDelegate);
  }

  return result;
}

uint64_t type metadata completion function for MLStyleTransfer.TrainingSessionDelegate(uint64_t a1)
{
  v4[0] = &unk_344878;
  result = type metadata accessor for MLTrainingSessionParameters(319);
  if (v2 <= 0x3F)
  {
    v4[1] = *(result - 8) + 64;
    result = type metadata accessor for MLStyleTransfer.PersistentParameters?(319);
    if (v3 <= 0x3F)
    {
      v4[2] = *(result - 8) + 64;
      v4[3] = &value witness table for Builtin.NativeObject + 64;
      v4[4] = &value witness table for Builtin.NativeObject + 64;
      result = swift_updateClassMetadata2(a1, 256, 5, v4, a1 + 80);
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for MLStyleTransfer.PersistentParameters?(uint64_t a1)
{
  result = lazy cache variable for type metadata for MLStyleTransfer.PersistentParameters?;
  if (!lazy cache variable for type metadata for MLStyleTransfer.PersistentParameters?)
  {
    v2 = type metadata accessor for MLStyleTransfer.PersistentParameters(255);
    result = type metadata accessor for Optional(a1, v2);
    if (!v3)
    {
      lazy cache variable for type metadata for MLStyleTransfer.PersistentParameters? = result;
    }
  }

  return result;
}

uint64_t protocol witness for TrainingSessionDelegate.train(from:) in conformance MLStyleTransfer.TrainingSessionDelegate(Swift::Int a1)
{
  v7 = MLStyleTransfer.TrainingSessionDelegate.train(from:)(a1);
  if (v5)
  {
    return (*(v1 + 8))(v3, v4, v7.metrics._rawValue, *&v7.finished);
  }

  else
  {
    return (*(v1 + 8))(v7._0, v7.metrics._rawValue, v7.finished);
  }
}

uint64_t protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance MLStyleTransfer.TrainingSessionDelegate(Swift::Int a1)
{
  *&v2 = MLStyleTransfer.TrainingSessionDelegate.evaluate(from:)(a1);
  if (!v5)
  {
    v3 = 1;
    v4 = 1;
  }

  return (*(v1 + 8))(v3, v4, *(&v2 + 1));
}

uint64_t outlined init with copy of MLStyleTransfer.PersistentParameters?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined assign with take of MLStyleTransfer.PersistentParameters?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?);
  (*(*(v2 - 8) + 40))(a2, a1, v2);
  return a2;
}

uint64_t lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A])
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [UInt8]);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v1);
    lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A] = result;
  }

  return result;
}

uint64_t closure #1 in Data.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = 0xC000000000000000;
  if (a1 && (v5 = a2 - a1, a2 != a1))
  {
    if (v5 <= 14)
    {
      result = Data.InlineData.init(_:)(a1, a2, 0xC000000000000000);
      v4 = v8 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      result = Data.LargeSlice.init(_:)(a1, a2, 0xC000000000000000);
      v4 = v9 | 0x8000000000000000;
    }

    else
    {
      result = Data.InlineSlice.init(_:)(a1, a2, 0xC000000000000000);
      v4 = v7 | 0x4000000000000000;
    }
  }

  else
  {
    result = 0;
  }

  *v3 = result;
  v3[1] = v4;
  return result;
}

uint64_t __swift_memcpy3_1(uint64_t a1, uint64_t a2)
{
  result = a1;
  *(a1 + 2) = *(a2 + 2);
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for MLObjectDetector.AnnotationType(unsigned __int16 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && (a2 + 33554177 >= 0x1000000 ? (v2 = *(a1 + 3)) : (v2 = *(a1 + 3)), v2))
    {
      v3 = (*a1 | (*(a1 + 2) << 16)) + (v2 << 24) - 16776962;
    }

    else
    {
      v4 = *a1;
      v5 = v4 - 2;
      v6 = v4 < 2;
      v3 = -1;
      if (!v6)
      {
        v3 = v5;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for MLObjectDetector.AnnotationType(uint64_t a1, unsigned int a2, unsigned int a3)
{
  result = (a3 + 33554177 < 0x1000000) + 1;
  if (a3 < 0xFF)
  {
    result = 0;
  }

  if (a2 > 0xFE)
  {
    v4 = a2 - 255;
    *a1 = v4;
    *(a1 + 2) = BYTE2(v4);
    if (result)
    {
      v5 = HIBYTE(v4) + 1;
      if (result == 2)
      {
        *(a1 + 3) = v5;
      }

      else
      {
        *(a1 + 3) = v5;
      }
    }
  }

  else
  {
    if (result)
    {
      if (result == 2)
      {
        *(a1 + 3) = 0;
      }

      else
      {
        *(a1 + 3) = 0;
      }
    }

    if (a2)
    {
      *a1 = a2 + 1;
    }
  }

  return result;
}

void MLRandomForestClassifier.predictions(from:)(uint64_t a1)
{
  v20 = v2;
  v19 = v1;
  v5 = type metadata accessor for DataFrame(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v17 = &v15;
  v10 = *(type metadata accessor for MLRandomForestClassifier(0) + 28);
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

uint64_t type metadata accessor for MLRandomForestClassifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLRandomForestClassifier;
  if (!type metadata singleton initialization cache for MLRandomForestClassifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLRandomForestClassifier);
  }

  return result;
}

uint64_t *MLRandomForestClassifier.predictions(from:)(uint64_t a1, __m128 a2)
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
  MLRandomForestClassifier.predictions(from:)(&v13);
  if (v11)
  {
    return (*(v18 + 8))(&v13, v17);
  }

  *a2.i64 = (*(v18 + 8))(&v13, v17);
  return MLUntypedColumn.init(_:convertArraysToShapedArrays:)(&v13, 1, a2);
}

uint64_t MLRandomForestClassifier.evaluation(on:)(uint64_t a1)
{
  v4 = v1;
  v5 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = type metadata accessor for MLRandomForestClassifier(0);
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
  MLRandomForestClassifier.evaluation(on:)(&v9);
  return (*(v3 + 8))(&v9, v2);
}

NSURL *MLRandomForestClassifier.write(to:metadata:)(uint64_t a1, const void *a2)
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
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(v49, 0xD000000000000016, ("parameter-images" + 0x8000000000000000), 0x6C65646F6D6C6DLL, 0xE700000000000000);
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

uint64_t MLRandomForestClassifier.write(toFile:metadata:)(uint64_t a1, uint64_t a2, const void *a3)
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
  MLRandomForestClassifier.write(to:metadata:)(v16, v16);
  return (*(v24 + 8))(v16, v10);
}

unint64_t MLRandomForestClassifier.debugDescription.getter()
{
  v1 = v0;
  v25._object = type metadata accessor for MLClassifierMetrics.Contents(0);
  v2 = *(*(v25._object - 1) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = type metadata accessor for MLRandomForestClassifier(0);
  v25._countAndFlagsBits = MLRandomForestClassifier.ModelParameters.description.getter();
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
  v24 = "RandomForestClassifier" + 0x8000000000000000;
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

NSAttributedString MLRandomForestClassifier.playgroundDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NSAttributedString();
  v3._countAndFlagsBits = MLRandomForestClassifier.debugDescription.getter();
  v3._object = v4;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v3).super.isa;
  v1[3].super.isa = v2;
  v1->super.isa = result.super.isa;
  return result;
}

void *specialized _setUpCast<A, B>(_:)(uint64_t a1)
{
  v29 = a1;
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<String?>);
    v2 = static _SetStorage.allocate(capacity:)(v1);
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for String?);
  v4 = -1 << *(v29 + 32);
  v5 = v3;
  v6 = ~(-1 << -v4);
  if (-v4 >= 64)
  {
    v6 = -1;
  }

  v7 = *(v29 + 56) & v6;
  v31 = v29 + 56;
  v32 = (63 - v4) >> 6;

  if (v5 == &type metadata for String)
  {
    v17 = 0;
    for (i = v2; ; v2 = i)
    {
      if (v7)
      {
        v18 = v17;
      }

      else
      {
        v19 = v17 + 1;
        if (__OFADD__(1, v17))
        {
          BUG();
        }

        if (v19 >= v32)
        {
          goto LABEL_31;
        }

        v7 = *(v31 + 8 * v19);
        if (v7)
        {
          v18 = v17 + 1;
        }

        else
        {
          v18 = v17 + 2;
          if (v17 + 2 >= v32)
          {
            goto LABEL_55;
          }

          v7 = *(v31 + 8 * v19 + 8);
          if (!v7)
          {
            v18 = v17 + 3;
            if (v17 + 3 >= v32)
            {
              goto LABEL_55;
            }

            v7 = *(v31 + 8 * v19 + 16);
            if (!v7)
            {
              v18 = v17 + 4;
              if (v17 + 4 >= v32)
              {
                goto LABEL_55;
              }

              v7 = *(v31 + 8 * v19 + 24);
              if (!v7)
              {
                v18 = v17 + 5;
                if (v17 + 5 >= v32)
                {
                  goto LABEL_55;
                }

                v7 = *(v31 + 8 * v19 + 32);
                if (!v7)
                {
                  v18 = v17 + 6;
                  if (v17 + 6 >= v32)
                  {
                    goto LABEL_55;
                  }

                  v7 = *(v31 + 8 * v19 + 40);
                  if (!v7)
                  {
                    v20 = v17 + 7;
                    if (v17 + 7 >= v32)
                    {
                      goto LABEL_55;
                    }

                    v7 = *(v31 + 8 * v19 + 48);
                    if (!v7)
                    {
                      while (1)
                      {
                        v18 = v20 + 1;
                        if (v20 + 1 >= v32)
                        {
                          break;
                        }

                        v7 = *(v29 + 8 * v20++ + 64);
                        if (v7)
                        {
                          goto LABEL_54;
                        }
                      }

LABEL_55:
                      v2 = i;
                      goto LABEL_31;
                    }

                    v18 = v17 + 7;
                  }
                }
              }
            }
          }
        }
      }

LABEL_54:
      _BitScanForward64(&v21, v7);
      v7 &= v7 - 1;
      v22 = *(v29 + 48);
      v23 = (v18 << 10) | (16 * v21);
      v24 = *(v22 + v23 + 8);
      v27 = *(v22 + v23);
      v28 = v24;

      swift_dynamicCast(&v25, &v27, &type metadata for String, &type metadata for String, 7);
      specialized _NativeSet._unsafeUpdate(with:)(v25, v26);
      v17 = v18;
    }
  }

  for (j = 0; ; j = v9)
  {
    if (v7)
    {
      v9 = j;
      goto LABEL_29;
    }

    v10 = j + 1;
    if (__OFADD__(1, j))
    {
      BUG();
    }

    if (v10 >= v32)
    {
      goto LABEL_30;
    }

    v7 = *(v31 + 8 * v10);
    if (v7)
    {
      v9 = j + 1;
      goto LABEL_29;
    }

    v9 = j + 2;
    if (j + 2 >= v32)
    {
      goto LABEL_30;
    }

    v7 = *(v31 + 8 * v10 + 8);
    if (!v7)
    {
      v9 = j + 3;
      if (j + 3 >= v32)
      {
        goto LABEL_30;
      }

      v7 = *(v31 + 8 * v10 + 16);
      if (!v7)
      {
        v9 = j + 4;
        if (j + 4 >= v32)
        {
          goto LABEL_30;
        }

        v7 = *(v31 + 8 * v10 + 24);
        if (!v7)
        {
          v9 = j + 5;
          if (j + 5 >= v32)
          {
            goto LABEL_30;
          }

          v7 = *(v31 + 8 * v10 + 32);
          if (!v7)
          {
            v9 = j + 6;
            if (j + 6 >= v32)
            {
              goto LABEL_30;
            }

            v7 = *(v31 + 8 * v10 + 40);
            if (!v7)
            {
              break;
            }
          }
        }
      }
    }

LABEL_29:
    _BitScanForward64(&v12, v7);
    v7 &= v7 - 1;
    v13 = *(v29 + 48);
    v14 = (v9 << 10) | (16 * v12);
    v15 = *(v13 + v14 + 8);
    v27 = *(v13 + v14);
    v28 = v15;

    swift_dynamicCast(&v25, &v27, &type metadata for String, v5, 7);
    specialized _NativeSet._unsafeInsertNew(_:)(v25, v26, v2);
  }

  v11 = j + 7;
  if (j + 7 >= v32)
  {
    goto LABEL_30;
  }

  v7 = *(v31 + 8 * v10 + 48);
  if (v7)
  {
    v9 = j + 7;
    goto LABEL_29;
  }

  while (1)
  {
    v9 = v11 + 1;
    if (v11 + 1 >= v32)
    {
      break;
    }

    v7 = *(v29 + 8 * v11++ + 64);
    if (v7)
    {
      goto LABEL_29;
    }
  }

LABEL_30:

LABEL_31:
  outlined consume of [String : [Double]].Iterator._Variant(v29);
  return v2;
}

{
  v34 = a1;
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<Int?>);
    v2 = static _SetStorage.allocate(capacity:)(v1);
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v3 = -1 << *(v34 + 32);
  v36 = v34 + 56;
  v4 = ~(-1 << -v3);
  if (-v3 >= 64)
  {
    v4 = -1;
  }

  j = *(v34 + 56) & v4;
  v31 = v3;
  v35 = (63 - v3) >> 6;

  for (i = 0; ; i = v30)
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

    if (v8 >= v35)
    {
      break;
    }

    j = *(v36 + 8 * v8);
    if (j)
    {
      v7 = i + 1;
    }

    else
    {
      v7 = i + 2;
      if (i + 2 >= v35)
      {
        break;
      }

      j = *(v36 + 8 * v8 + 8);
      if (!j)
      {
        v7 = i + 3;
        if (i + 3 >= v35)
        {
          break;
        }

        j = *(v36 + 8 * v8 + 16);
        if (!j)
        {
          v7 = i + 4;
          if (i + 4 >= v35)
          {
            break;
          }

          j = *(v36 + 8 * v8 + 24);
          if (!j)
          {
            v7 = i + 5;
            if (i + 5 >= v35)
            {
              break;
            }

            j = *(v36 + 8 * v8 + 32);
            if (!j)
            {
              v7 = i + 6;
              if (i + 6 >= v35)
              {
                break;
              }

              j = *(v36 + 8 * v8 + 40);
              if (!j)
              {
                v7 = i + 7;
                if (i + 7 >= v35)
                {
                  break;
                }

                for (j = *(v36 + 8 * v8 + 48); !j; j = *(v36 + 8 * v7))
                {
                  if (__OFADD__(1, v7++))
                  {
                    BUG();
                  }

                  if (v7 >= v35)
                  {
                    goto LABEL_44;
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
    v10 = *(v34 + 48);
    v30 = v7;
    v29[0] = *(v10 + ((v7 << 9) | (8 * v9)));
    v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Int?);
    swift_dynamicCast(&v32, v29, &type metadata for Int, v11, 7);
    v12 = v32;
    v13 = v33;
    Hasher.init(_seed:)(v2[5]);
    if (v13 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(v12);
    }

    v14 = Hasher._finalize()() & ~(-1 << *(v2 + 32));
    v15 = v14 >> 6;
    v16 = ~v2[(v14 >> 6) + 7] >> v14 << v14;
    if (v16)
    {
      _BitScanForward64(&v17, v16);
      v18 = v17 | v14 & 0xFFFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = (63 - (-1 << *(v2 + 32))) >> 6;
      v20 = 0;
      do
      {
        v21 = v15 + 1;
        if (v15 + 1 == v19 && (v20 & 1) != 0)
        {
          BUG();
        }

        v15 = 0;
        if (v21 != v19)
        {
          v15 = v21;
        }

        v20 |= v21 == v19;
        v22 = v2[v15 + 7];
      }

      while (v22 == -1);
      v23 = ~v22;
      v24 = 64;
      if (v23)
      {
        _BitScanForward64(&v24, v23);
      }

      v18 = v24 + (v15 << 6);
    }

    j &= j - 1;
    v2[(v18 >> 6) + 7] |= 1 << v18;
    v25 = v2[6];
    v26 = 16 * v18;
    *(v25 + v26) = v12;
    *(v25 + v26 + 8) = v13;
    ++v2[2];
  }

LABEL_44:

  outlined consume of [String : [Double]].Iterator._Variant(v34);
  return v2;
}

void MLRandomForestClassifier.model.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLRandomForestClassifier(0) + 20);

  *(v1 + v2) = a1;
}

void (*MLRandomForestClassifier.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLRandomForestClassifier(0) + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v4;
  return MLActivityClassifier.model.modify;
}

uint64_t MLRandomForestClassifier.targetColumn.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLRandomForestClassifier(0) + 24));

  return v1;
}

uint64_t MLRandomForestClassifier.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for MLRandomForestClassifier(0) + 24);
  result = *(v2 + v3 + 8);
  *(v2 + v3) = a1;
  *(v2 + v3 + 8) = a2;
  return result;
}

uint64_t MLRandomForestClassifier.featureColumns.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLRandomForestClassifier(0) + 28);
  result = *(v1 + v2);
  *(v1 + v2) = a1;
  return result;
}

uint64_t MLRandomForestClassifier.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLRandomForestClassifier(0);
  return outlined init with copy of MLRandomForestClassifier.ModelParameters(v1 + *(v3 + 32), v2);
}

uint64_t MLRandomForestClassifier.trainingMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLRandomForestClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 36), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLRandomForestClassifier.validationMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLRandomForestClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 40), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t static MLRandomForestClassifier._defaultSessionParameters.getter()
{
  v1 = v0;
  if (one-time initialization token for _defaultSessionParameters != -1)
  {
    swift_once(&one-time initialization token for _defaultSessionParameters, one-time initialization function for _defaultSessionParameters);
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  v3 = __swift_project_value_buffer(v2, static MLRandomForestClassifier._defaultSessionParameters);
  return outlined init with copy of MLTrainingSessionParameters(v3, v1, type metadata accessor for MLTrainingSessionParameters);
}

uint64_t MLRandomForestClassifier.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  return swift_task_switch(MLRandomForestClassifier.init(_:targetColumn:featureColumns:parameters:), 0, 0);
}

uint64_t MLRandomForestClassifier.init(_:targetColumn:featureColumns:parameters:)()
{
  v1 = *(v0 + 80);
  v13 = *(v0 + 72);
  v15 = *(v0 + 64);
  v11 = *(v0 + 48);
  v10 = *(v0 + 32);
  v2 = *(v0 + 16);
  v12 = type metadata accessor for MLRandomForestClassifier(0);
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
  v8[1] = MLRandomForestClassifier.init(_:targetColumn:featureColumns:parameters:);
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
  qmemcpy((v4 + *(v1 + 32)), v3, 0x58uLL);
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
  outlined destroy of MLRandomForestClassifier.ModelParameters(*(v0 + 56));
  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for AnyTreeClassifierModel);
  v1;
  v8;
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v4, type metadata accessor for MLClassifierMetrics);
  v7;
  return (*(v0 + 8))();
}

uint64_t MLRandomForestClassifier.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  v5 = *(*v2 + 96);
  v4 = *v2;
  *(*v2 + 104) = v1;
  v5;
  if (v1)
  {
    v6 = MLRandomForestClassifier.init(_:targetColumn:featureColumns:parameters:);
  }

  else
  {
    *(v4 + 112) = a1;
    v6 = MLRandomForestClassifier.init(_:targetColumn:featureColumns:parameters:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t MLRandomForestClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(void *a1, uint64_t a2, void *a3, char *a4, uint64_t a5)
{
  v201 = a4;
  _ = a3;
  v7 = v5;
  v199 = v5;
  v212._countAndFlagsBits = a2;
  v211 = v6;
  v217 = a5;
  v212._object = a1;
  v8 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v186 = v165;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v183 = v165;
  v13 = *(*(type metadata accessor for MLClassifierMetrics(0) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v187 = v165;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v184 = v165;
  v181 = *(type metadata accessor for AnyTreeClassifierModel(0) - 8);
  v18 = *(v181 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v179 = v165;
  v180 = v18;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v210 = v165;
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v177 = v165;
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?) - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v195 = v165;
  v192 = type metadata accessor for AnyColumn(0);
  v29 = *(*(v192 - 8) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v197 = v165;
  v32 = alloca(v29);
  v33 = alloca(v29);
  v204 = v165;
  v34 = alloca(v29);
  v35 = alloca(v29);
  v189 = v165;
  v36 = *(*(type metadata accessor for AnyTreeClassifier(0) - 8) + 64);
  v37 = alloca(v36);
  v38 = alloca(v36);
  v209 = v165;
  v219 = type metadata accessor for DataFrame(0);
  v207 = *(v219 - 8);
  v39 = *(v207 + 64);
  v40 = alloca(v39);
  v41 = alloca(v39);
  v194 = v165;
  v42 = alloca(v39);
  v43 = alloca(v39);
  v198 = v165;
  v44 = alloca(v39);
  v45 = alloca(v39);
  v196 = v165;
  v46 = alloca(v39);
  v47 = alloca(v39);
  v190 = v165;
  v202 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  v48 = *(*(v202 - 8) + 64);
  v49 = alloca(v48);
  v50 = alloca(v48);
  v220 = v165;
  v208 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v51 = *(*(v208 - 8) + 64);
  v52 = alloca(v51);
  v53 = alloca(v51);
  v185 = v165;
  v54 = alloca(v51);
  v55 = alloca(v51);
  v182 = v165;
  v56 = alloca(v51);
  v57 = alloca(v51);
  v191 = v165;
  v58 = alloca(v51);
  v59 = alloca(v51);
  v203 = v165;
  v60 = alloca(v51);
  v61 = alloca(v51);
  v176 = v165;
  v62 = alloca(v51);
  v63 = alloca(v51);
  v214 = v165;
  v213 = type metadata accessor for BoostedTreeConfiguration(0);
  v215 = *(v213 - 8);
  v64 = *(v215 + 64);
  v65 = alloca(v64);
  v66 = alloca(v64);
  v178 = v165;
  v67 = alloca(v64);
  v68 = alloca(v64);
  v205 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v221 = *(v205 - 1);
  v69 = *(v221 + 8);
  v70 = alloca(v69);
  v71 = alloca(v69);
  v206 = type metadata accessor for MLRandomForestClassifier(0);
  v200 = *(v206 + 9);
  v72 = v7 + v200;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v165);
  (*(v221 + 1))(v165, v205);
  v73 = v199;
  *(v199 + v200) = 0;
  v74 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v200 = v72;
  swift_storeEnumTagMultiPayload(v72, v74, 1);
  v221 = *(v206 + 10);
  v205 = &v221[v73];
  v75 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v76 = swift_allocError(&type metadata for MLCreateError, v75, 0, 0);
  *v77 = 0xD0000000000000C0;
  *(v77 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v77 + 16) = 0;
  *(v77 + 32) = 0;
  *(v77 + 48) = 0;
  *&v221[v73] = v76;
  v78 = v217;
  v193 = v74;
  swift_storeEnumTagMultiPayload(v205, v74, 2);
  outlined init with copy of MLRandomForestClassifier.ModelParameters(v78, v166);
  BoostedTreeConfiguration.init()(v78);
  BoostedTreeConfiguration.learningRate.setter(1.0);
  BoostedTreeConfiguration.parallelTreeCount.setter(10);
  BoostedTreeConfiguration.maximumDepth.setter(v167);
  BoostedTreeConfiguration.maximumIterations.setter(v168);
  BoostedTreeConfiguration.minimumLossReduction.setter(v169);
  BoostedTreeConfiguration.minimumChildWeight.setter(v170);
  BoostedTreeConfiguration.randomSeed.setter(v171);
  BoostedTreeConfiguration.rowSubsample.setter(v172);
  v216 = v165;
  BoostedTreeConfiguration.columnSubsample.setter(v173);
  outlined destroy of MLRandomForestClassifier.ModelParameters(v166);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v78, &v174, &demangling cache variable for type metadata for Any?);
  if (!v175)
  {
    BUG();
  }

  v79 = v214;
  v80 = (v214 + *(v208 + 48));
  outlined init with take of Any(&v174, v166);
  swift_dynamicCast(v220, v166, &type metadata for Any + 8, v202, 7);
  object = v212._object;
  v82 = v211;
  MLRandomForestClassifier.ModelParameters.ValidationData.generateDataFrames(trainingData:)(v79, v80, v212._object);
  v221 = v82;
  if (v82)
  {
    _;
    v201;
    outlined destroy of MLRandomForestClassifier.ModelParameters(v217);
    (*(v207 + 8))(object, v219);
    outlined destroy of MLActivityClassifier.ModelParameters(v220, type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData);
    v83 = v216;
    v84 = v213;
LABEL_6:
    (*(v215 + 8))(v83, v84);
LABEL_7:
    outlined destroy of MLActivityClassifier.ModelParameters(v200, type metadata accessor for MLClassifierMetrics);
    return outlined destroy of MLActivityClassifier.ModelParameters(v205, type metadata accessor for MLClassifierMetrics);
  }

  v85 = v79;
  v188 = v80;
  outlined destroy of MLActivityClassifier.ModelParameters(v220, type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData);
  v86 = v79;
  v87 = _;
  v88 = v201;
  v89 = v221;
  v90 = static _FeatureUtilities.selectFeaturesFromTrainingData(trainingData:targetColumn:featureColumns:)(v86, v212._countAndFlagsBits, _, v201);
  v221 = v89;
  v91 = v213;
  if (v89)
  {
    v87;
    v88;
    outlined destroy of MLRandomForestClassifier.ModelParameters(v217);
    (*(v207 + 8))(v212._object, v219);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v85, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v83 = v216;
    v84 = v91;
    goto LABEL_6;
  }

  v211 = v90;
  v88;
  v93 = v176;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v85, v176, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v94 = v93 + *(v208 + 48);
  if (__swift_getEnumTagSinglePayload(v94, 1, v219) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v94, &demangling cache variable for type metadata for DataFrame?);
    v220 = *(v207 + 8);
    v220(v93, v219);
    goto LABEL_10;
  }

  v105 = v94;
  v106 = v219;
  v107 = v207;
  (*(v207 + 32))(v190, v105, v219);
  v220 = *(v107 + 8);
  v220(v93, v106);
  v108 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v108, v165);
  inited[2] = 1;
  inited[3] = 2;
  inited[4] = v212._countAndFlagsBits;
  inited[5] = v87;

  v110 = v190;
  DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xEE00726569666973, 0x73616C4365657254));
  if (v111)
  {
    swift_setDeallocating(inited);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    _;
    v211;
    outlined destroy of MLRandomForestClassifier.ModelParameters(v217);
    v112 = v219;
    v113 = v220;
    v220(v212._object, v219);
    v113(v110, v112);
LABEL_20:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v214, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (*(v215 + 8))(v216, v213);
    goto LABEL_7;
  }

  swift_setDeallocating(inited);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v121 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any.Type>);
  v122 = swift_allocObject(v121, 48, 7);
  v122[2] = 2;
  v122[3] = 4;
  v122[4] = &type metadata for String;
  v122[5] = &type metadata for Int;
  v123._countAndFlagsBits = v212._countAndFlagsBits;
  v123._object = _;
  v124 = v110;
  DataFrame.validateColumnTypes(_:_:context:)(v123, v122, __PAIR128__(0xEE00726569666973, 0x73616C4365657254));
  if (v125)
  {
    _;
    v211;
    v122;
    outlined destroy of MLRandomForestClassifier.ModelParameters(v217);
    v126 = v219;
    v127 = v220;
    v220(v212._object, v219);
    v127(v124, v126);
    goto LABEL_20;
  }

  v221 = 0;
  v220(v110, v219);
  v122;
  v87 = _;
LABEL_10:
  v95 = v214;
  v96 = v203;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v214, v203, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  DataFrame.subscript.getter(v212._countAndFlagsBits, v87);
  v97 = v96;
  v98 = v219;
  v99 = v220;
  v220(v97, v219);
  v100 = v95;
  v101 = v191;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v100, v191, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v102 = v177;
  outlined init with take of DataFrame?(v101 + *(v208 + 48), v177);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v102, 1, v98);
  v104 = v99;
  if (EnumTagSinglePayload == 1)
  {
    v99(v101, v98);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v102, &demangling cache variable for type metadata for DataFrame?);
    __swift_storeEnumTagSinglePayload(v195, 1, 1, v192);
  }

  else
  {
    v114 = v195;
    v115 = v104;
    DataFrame.subscript.getter(v212._countAndFlagsBits, _);
    v115(v102, v98);
    __swift_storeEnumTagSinglePayload(v114, 0, 1, v192);
    v115(v191, v98);
  }

  v116 = _;
  v203 += *(v208 + 48);
  v117 = v178;
  (*(v215 + 16))(v178, v216, v213);

  v118 = v211;

  v119 = v221;
  AnyTreeClassifier.init(trainingLabelsColumn:validationLabelsColumn:annotationColumnName:featureColumnNames:configuration:)(v189, v195, v212._countAndFlagsBits, v116, v118, v117);
  if (v119)
  {
    v116;
    v118;
    outlined destroy of MLRandomForestClassifier.ModelParameters(v217);
    v220(v212._object, v219);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v214, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (*(v215 + 8))(v216, v213);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v203, &demangling cache variable for type metadata for DataFrame?);
    goto LABEL_7;
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v203, &demangling cache variable for type metadata for DataFrame?);
  v120 = v210;
  AnyTreeClassifier.fitted(to:validateOn:eventHandler:)(v214, v188, 0, 0);
  v221 = 0;
  if (!AnalyticsReporter.init()())
  {
    v128 = v214;
    v129 = v182;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v214, v182, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v130 = v129 + *(v208 + 48);
    v131 = DataFrame.shape.getter(v128);
    v220(v129, v219);
    v132 = v131;
    v120 = v210;
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_randomForestClassifier, __PAIR128__(("vectorized_features" + 0x8000000000000000), 0xD000000000000015), v132);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v130, &demangling cache variable for type metadata for DataFrame?);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_randomForestClassifier, __PAIR128__(("Number of Annotations" + 0x8000000000000000), 0xD000000000000010), *(*(v209 + 3) + 16));
  }

  v133 = v206;
  v134 = *(v206 + 6);
  v135 = v199;
  *(v199 + v134) = v212._countAndFlagsBits;
  *(v135 + v134 + 8) = _;
  v201 = v135 + v133[8];
  outlined init with copy of MLRandomForestClassifier.ModelParameters(v217, v201);
  *(v135 + v133[7]) = v211;
  v136 = v179;
  outlined init with copy of MLTrainingSessionParameters(v120, v179, type metadata accessor for AnyTreeClassifierModel);
  v137 = *(v181 + 80);
  v138 = ~*(v181 + 80) & (v137 + 16);
  v139 = swift_allocObject(&unk_392E08, v138 + v180, v137 | 7);
  outlined init with take of MLClassifierMetrics(v136, v139 + v138, type metadata accessor for AnyTreeClassifierModel);
  v140 = v221;
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLRandomForestClassifier.init(trainingData:targetColumn:featureColumns:parameters:), v139);
  if (v140)
  {

    outlined destroy of MLRandomForestClassifier.ModelParameters(v217);
    v220(v212._object, v219);
    outlined destroy of MLActivityClassifier.ModelParameters(v210, type metadata accessor for AnyTreeClassifierModel);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v214, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (*(v215 + 8))(v216, v213);
    outlined destroy of MLActivityClassifier.ModelParameters(v209, type metadata accessor for AnyTreeClassifier);
    v211;
    _;
LABEL_27:
    outlined destroy of MLRandomForestClassifier.ModelParameters(v201);
    goto LABEL_7;
  }

  v142 = v141;

  v143 = *(v206 + 5);
  v206 = v142;
  *(v135 + v143) = v142;
  outlined init with copy of MLTrainingSessionParameters(v210, v135, type metadata accessor for AnyTreeClassifierModel);
  v144 = v214;
  AnyTreeClassifierModel.applied(to:eventHandler:)(v214, 0, 0);
  v221 = 0;
  v145 = v135;
  v146 = *v135;
  v147 = v145[1];
  DataFrame.subscript.getter(v146, v147);
  v212._countAndFlagsBits = v146;
  v202 = v147;
  DataFrame.subscript.getter(v146, v147);
  v148 = v183;
  AnyClassificationMetrics.init(_:_:)(v204, v197);
  v149 = v144;
  v150 = v219;
  v220(v196, v219);
  v151 = v184;
  outlined init with take of MLClassifierMetrics(v148, v184, type metadata accessor for AnyClassificationMetrics);
  swift_storeEnumTagMultiPayload(v151, v193, 0);
  outlined assign with take of MLClassifierMetrics(v151, v200);
  v152 = v185;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v149, v185, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v153 = v152 + *(v208 + 48);
  if (__swift_getEnumTagSinglePayload(v153, 1, v150) == 1)
  {
    outlined destroy of MLRandomForestClassifier.ModelParameters(v217);
    v154 = v220;
    v220(v212._object, v150);
    outlined destroy of MLActivityClassifier.ModelParameters(v210, type metadata accessor for AnyTreeClassifierModel);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v214, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (*(v215 + 8))(v216, v213);
    outlined destroy of MLActivityClassifier.ModelParameters(v209, type metadata accessor for AnyTreeClassifier);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v153, &demangling cache variable for type metadata for DataFrame?);
    return v154(v152, v150);
  }

  else
  {
    v155 = v198;
    (*(v207 + 32))(v198, v153, v150);
    v220(v152, v150);
    v156 = v221;
    AnyTreeClassifierModel.applied(to:eventHandler:)(v155, 0, 0);
    v221 = v156;
    if (v156)
    {
      outlined destroy of MLRandomForestClassifier.ModelParameters(v217);
      v157 = v220;
      v220(v212._object, v150);
      v157(v155, v150);
      v158 = v199;
      v159 = v214;
      outlined destroy of MLActivityClassifier.ModelParameters(v210, type metadata accessor for AnyTreeClassifierModel);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v159, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
      (*(v215 + 8))(v216, v213);
      outlined destroy of MLActivityClassifier.ModelParameters(v209, type metadata accessor for AnyTreeClassifier);
      outlined destroy of MLActivityClassifier.ModelParameters(v158, type metadata accessor for AnyTreeClassifierModel);
      v211;
      _;

      goto LABEL_27;
    }

    countAndFlagsBits = v212._countAndFlagsBits;
    DataFrame.subscript.getter(v212._countAndFlagsBits, v202);
    v161 = v197;
    DataFrame.subscript.getter(countAndFlagsBits, v202);
    v162 = v186;
    AnyClassificationMetrics.init(_:_:)(v204, v161);
    v163 = v220;
    v220(v194, v150);
    outlined destroy of MLRandomForestClassifier.ModelParameters(v217);
    v163(v212._object, v150);
    v163(v198, v150);
    outlined destroy of MLActivityClassifier.ModelParameters(v210, type metadata accessor for AnyTreeClassifierModel);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v214, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (*(v215 + 8))(v216, v213);
    v164 = v187;
    outlined init with take of MLClassifierMetrics(v162, v187, type metadata accessor for AnyClassificationMetrics);
    swift_storeEnumTagMultiPayload(v164, v193, 0);
    outlined destroy of MLActivityClassifier.ModelParameters(v209, type metadata accessor for AnyTreeClassifier);
    return outlined assign with take of MLClassifierMetrics(v164, v205);
  }
}

uint64_t closure #1 in MLRandomForestClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc(288);
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #1 in MLRandomForestClassifier.init(trainingData:targetColumn:featureColumns:parameters:);
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
  return swift_task_switch(closure #1 in MLRandomForestClassifier.init(trainingData:targetColumn:featureColumns:parameters:), 0, 0);
}

uint64_t MLRandomForestClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t *a1, uint64_t a2, void *a3, char *a4, uint64_t a5)
{
  v14 = a4;
  v15 = a3;
  v16 = a2;
  v6 = *(*(type metadata accessor for DataFrame(0) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = *(a1 + 8);
  v12 = *a1;
  v13 = v9;
  DataFrame.init(_:)(&v12);
  outlined init with copy of MLRandomForestClassifier.ModelParameters(a5, &v12);
  MLRandomForestClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(&v11, v16, v15, v14, &v12);
  return outlined destroy of MLRandomForestClassifier.ModelParameters(a5);
}

uint64_t MLRandomForestClassifier.init(checkpoint:)(uint64_t a1)
{
  v73 = v2;
  v91 = a1;
  v3 = v1;
  v85 = v1;
  v84 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  v4 = *(*(v84 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v83 = v72;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v82 = v72;
  v9 = *(*(type metadata accessor for BoostedTreeConfiguration(0) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v74 = v72;
  v92 = type metadata accessor for AnyTreeClassifier(0);
  v12 = *(*(v92 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v77 = v72;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v88 = v72;
  v81 = *(type metadata accessor for AnyTreeClassifierModel(0) - 8);
  v17 = *(v81 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v78 = v72;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v80 = v72;
  v22 = alloca(v17);
  v23 = alloca(v17);
  v75 = v72;
  v79 = v17;
  v24 = alloca(v17);
  v25 = alloca(v17);
  v89 = v72;
  v86 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v87 = *(v86 - 8);
  v26 = *(v87 + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v29 = type metadata accessor for MLRandomForestClassifier(0);
  v90 = *(v29 + 36);
  v30 = v90 + v3;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v72);
  (*(v87 + 8))(v72, v86);
  v31 = v85;
  *(v85 + v90) = 0;
  v32 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v86 = v30;
  swift_storeEnumTagMultiPayload(v30, v32, 1);
  v90 = v29;
  v33 = *(v29 + 40);
  v34 = v33 + v31;
  v76 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v35 = swift_allocError(&type metadata for MLCreateError, v76, 0, 0);
  *v36 = 0xD0000000000000C0;
  *(v36 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v36 + 16) = 0;
  *(v36 + 32) = 0;
  *(v36 + 48) = 0;
  *(v85 + v33) = v35;
  v37 = v91;
  v87 = v34;
  swift_storeEnumTagMultiPayload(v34, v32, 2);
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
      v40 = v92;
      v41 = v88;
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
  }

  v42 = _stringCompareWithSmolCheck(_:_:expecting:)(v38, v39, 0x676E696E69617274, 0xE800000000000000, 0);
  v39;
  v40 = v92;
  v41 = v88;
  if ((v42 & 1) == 0)
  {
    swift_allocError(&type metadata for MLCreateError, v76, 0, 0);
    *v52 = 0xD00000000000004ELL;
    *(v52 + 8) = "sifier\n\nParameters\n" + 0x8000000000000000;
    *(v52 + 16) = 0;
    *(v52 + 32) = 0;
    *(v52 + 48) = 0;
    swift_willThrow();
    v53 = type metadata accessor for MLCheckpoint;
    v54 = v91;
LABEL_15:
    outlined destroy of MLActivityClassifier.ModelParameters(v54, v53);
    outlined destroy of MLActivityClassifier.ModelParameters(v86, type metadata accessor for MLClassifierMetrics);
    return outlined destroy of MLActivityClassifier.ModelParameters(v87, type metadata accessor for MLClassifierMetrics);
  }

LABEL_9:
  v43 = specialized _setUpCast<A, B>(_:)(&_swiftEmptySetSingleton);
  v44 = v74;
  BoostedTreeConfiguration.init()(&_swiftEmptySetSingleton);
  AnyTreeClassifier.init(labels:annotationColumnName:featureColumnNames:configuration:)(v43, 0, 0xE000000000000000, _swiftEmptyArrayStorage, v44);
  v45 = lazy protocol witness table accessor for type AnyTreeClassifier and conformance AnyTreeClassifier();
  v46 = v75;
  v88 = v45;
  v47 = v73;
  UpdatableSupervisedTabularEstimator.readWithOptimizer(from:)(v91, v40, v45);
  outlined destroy of MLActivityClassifier.ModelParameters(v41, type metadata accessor for AnyTreeClassifier);
  if (v47)
  {
    v48 = specialized _setUpCast<A, B>(_:)(&_swiftEmptySetSingleton);
    BoostedTreeConfiguration.init()(&_swiftEmptySetSingleton);
    v49 = v44;
    v50 = v77;
    AnyTreeClassifier.init(labels:annotationColumnName:featureColumnNames:configuration:)(v48, 0, 0xE000000000000000, _swiftEmptyArrayStorage, v49);
    v51 = v78;
    UpdatableSupervisedTabularEstimator.readWithOptimizer(from:)(v91, v92, v88);
    outlined destroy of MLActivityClassifier.ModelParameters(v50, type metadata accessor for AnyTreeClassifier);
    v47;
    v55 = v51;
  }

  else
  {
    v55 = v46;
  }

  v92 = 0;
  v56 = v89;
  outlined init with take of MLClassifierMetrics(v55, v89, type metadata accessor for AnyTreeClassifierModel);
  v57 = v80;
  outlined init with copy of MLTrainingSessionParameters(v56, v80, type metadata accessor for AnyTreeClassifierModel);
  v58 = *(v81 + 80);
  v59 = ~*(v81 + 80) & (v58 + 16);
  v60 = swift_allocObject(&unk_392E30, v59 + v79, v58 | 7);
  outlined init with take of MLClassifierMetrics(v57, v60 + v59, type metadata accessor for AnyTreeClassifierModel);
  v61 = v92;
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLRandomForestClassifier.init(checkpoint:), v60);
  v63 = v62;

  if (v61)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v91, type metadata accessor for MLCheckpoint);
    v53 = type metadata accessor for AnyTreeClassifierModel;
    v54 = v89;
    goto LABEL_15;
  }

  v65 = v85;
  *(v85 + *(v90 + 20)) = v63;
  outlined init with copy of MLTrainingSessionParameters(v89, v65, type metadata accessor for AnyTreeClassifierModel);
  v66 = v82;
  *v82 = 0;
  *(v66 + 16) = 256;
  swift_storeEnumTagMultiPayload(v66, v84, 0);
  v67 = *(v90 + 32);
  v92 = v65 + v67;
  *(v65 + v67 + 16) = 0;
  *(v65 + v67) = 0;
  *(v65 + v67 + 32) = 6;
  *(v65 + v67 + 40) = 10;
  *(v65 + v67 + 48) = _mm_loadh_ps(&qword_33D880);
  *(v65 + v67 + 64) = 42;
  *(v65 + v67 + 72) = xmmword_33E240;
  v68 = v83;
  outlined init with copy of MLTrainingSessionParameters(v66, v83, type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData);
  v72[3] = v84;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v72);
  outlined init with take of MLClassifierMetrics(v68, boxed_opaque_existential_0, type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData);
  outlined assign with take of Any?(v72, v92);
  outlined destroy of MLActivityClassifier.ModelParameters(v66, type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData);
  v70 = v90;
  v71 = *(v90 + 24);
  *(v65 + v71) = 0;
  *(v65 + v71 + 8) = 0xE000000000000000;
  outlined destroy of MLActivityClassifier.ModelParameters(v91, type metadata accessor for MLCheckpoint);
  outlined destroy of MLActivityClassifier.ModelParameters(v89, type metadata accessor for AnyTreeClassifierModel);
  result = *(v70 + 28);
  *(v65 + result) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t closure #1 in MLRandomForestClassifier.init(checkpoint:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc(288);
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #1 in MLRandomForestRegressor.init(checkpoint:);
  return ((&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel()))();
}

void *static MLRandomForestClassifier.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
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
  v13 = static MLRandomForestClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(&v19, v25, v24, v23, v22, v21);
  v14 = v7;
  if (v6)
  {
    return (*(v8 + 8))(&v19, v7);
  }

  v16 = v13;
  (*(v8 + 8))(&v19, v14);
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLRandomForestClassifier>);
  v18 = swift_allocObject(v17, *(v17 + 48), *(v17 + 52));
  return specialized MLJob.init(_:)(v18, v16);
}

uint64_t static MLRandomForestClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
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
  v12 = static MLRandomForestClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(&v14, a2, v19, v18, v17, v16);
  (*(v20 + 8))(&v14, v7);
  return v12;
}

void *static MLRandomForestClassifier.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLRandomForestClassifier>);
  v2 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));

  return specialized MLJob.init(_:)(v2, a1);
}

void *static MLRandomForestClassifier.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(void (*a1)(uint64_t *, uint64_t *, uint64_t), uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  result = static MLRandomForestClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(a1, a2, a3, a4, a5, a6);
  if (!v6)
  {
    v8 = result;
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLRandomForestClassifier>);
    v10 = swift_allocObject(v9, *(v9 + 48), *(v9 + 52));
    return specialized MLJob.init(_:)(v10, v8);
  }

  return result;
}

uint64_t static MLRandomForestClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(void (*a1)(uint64_t *, uint64_t *, uint64_t), uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v70 = v6;
  v66 = a6;
  v61 = a5;
  v63 = a4;
  v64 = a3;
  v57 = a2;
  v68 = a1;
  v7 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v60 = v45;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v58 = v45;
  v12 = *(*(type metadata accessor for BoostedTreeConfiguration(0) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v59 = v45;
  v15 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v62 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v19 = *(*(v62 - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v69 = v45;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v65 = v45;
  v24 = alloca(v19);
  v25 = alloca(v19);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v61, &v55, &demangling cache variable for type metadata for Any?);
  if (!v56)
  {
    BUG();
  }

  v26 = &v45[*(v62 + 48)];
  v67 = v45;
  outlined init with take of Any(&v55, &v46);
  v27 = v67;
  swift_dynamicCast(v45, &v46, &type metadata for Any + 8, v15, 7);
  v28 = v70;
  MLRandomForestClassifier.ModelParameters.ValidationData.generateDataFrames(trainingData:)(v27, v26, v68);
  outlined destroy of MLActivityClassifier.ModelParameters(v45, type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData);
  if (!v28)
  {
    v68 = 0;
    v29 = v65;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v27, v65, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v30 = v62;
    v70 = v29 + *(v62 + 48);
    v31 = v27;
    v32 = v69;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v31, v69, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v33 = v32 + *(v30 + 48);
    outlined init with copy of MLRandomForestClassifier.ModelParameters(v61, &v46);

    v34 = v64;

    v35 = v59;
    BoostedTreeConfiguration.init()(v34);
    BoostedTreeConfiguration.learningRate.setter(1.0);
    BoostedTreeConfiguration.parallelTreeCount.setter(10);
    BoostedTreeConfiguration.maximumDepth.setter(v48);
    BoostedTreeConfiguration.maximumIterations.setter(v49);
    BoostedTreeConfiguration.minimumLossReduction.setter(v50);
    BoostedTreeConfiguration.minimumChildWeight.setter(v51);
    BoostedTreeConfiguration.randomSeed.setter(v52);
    BoostedTreeConfiguration.rowSubsample.setter(v53);
    BoostedTreeConfiguration.columnSubsample.setter(v54);
    outlined destroy of MLRandomForestClassifier.ModelParameters(&v46);
    v36 = v58;
    outlined init with copy of MLTrainingSessionParameters(v66, v58, type metadata accessor for MLTrainingSessionParameters);
    v27 = type metadata accessor for TreeClassifierTrainingSessionDelegate(0);
    swift_allocObject(v27, *(v27 + 48), *(v27 + 52));
    v37 = v68;
    v38 = TreeClassifierTrainingSessionDelegate.init(trainingData:validationData:targetColumn:featureColumns:configuration:sessionParameters:)(v65, v33, v57, v64, v63, v35, v36);
    if (v37)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v67, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
      v39 = type metadata accessor for DataFrame(0);
      (*(*(v39 - 8) + 8))(v69, v39);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v70, &demangling cache variable for type metadata for DataFrame?);
    }

    else
    {
      v40 = v38;
      v41 = type metadata accessor for DataFrame(0);
      (*(*(v41 - 8) + 8))(v69, v41);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v70, &demangling cache variable for type metadata for DataFrame?);
      v47 = v27;
      v48 = &protocol witness table for TreeClassifierTrainingSessionDelegate;
      *&v46 = v40;
      v42 = v60;
      outlined init with copy of MLTrainingSessionParameters(v66, v60, type metadata accessor for MLTrainingSessionParameters);
      v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>);
      swift_allocObject(v43, *(v43 + 48), *(v43 + 52));

      v27 = specialized MLTrainingSession.init(delegate:parameters:modelType:)(&v46, v42, 1);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v67, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    }
  }

  return v27;
}

uint64_t static MLRandomForestClassifier.restoreTrainingSession(sessionParameters:)(uint64_t a1)
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
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>);
    swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v11, v9, 1);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static MLRandomForestClassifier.resume(_:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v22 = a5;
  v23 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLRandomForestClassifier, Error>);
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
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v19, &demangling cache variable for type metadata for Result<MLRandomForestClassifier, Error>);
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
    v18 = swift_allocObject(&unk_392E68, 56, 7);
    *(v18 + 16) = 0;
    *(v18 + 32) = v16;
    *(v18 + 40) = v23;
    *(v18 + 48) = v22;

    _sScTss5NeverORs_rlE8priority9operationScTyxABGScPSg_xyYaYAcntcfCyt_Tt1g5(&v19, &async function pointer to partial apply for closure #1 in static MLRandomForestClassifier.handleResult(_:session:fulfill:), v18);
  }
}

uint64_t closure #1 in static MLRandomForestClassifier.handleResult(_:session:fulfill:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a6;
  v6[3] = a5;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLRandomForestClassifier, Error>);
  v6[5] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in static MLRandomForestClassifier.handleResult(_:session:fulfill:), 0, 0);
}

uint64_t closure #1 in static MLRandomForestClassifier.handleResult(_:session:fulfill:)()
{

  v1 = swift_task_alloc(80);
  v0[6] = v1;
  *v1 = v0;
  v1[1] = closure #1 in static MLRandomForestClassifier.handleResult(_:session:fulfill:);
  return ((&_ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC24MLRandomForestClassifierV_Tt1g503_s8b4ML24fgh80V12handleResult33_4BA12AD8C244BA9B40BDFBE3C2FF9674LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04TreeH23TrainingSessionDelegateCTf1nc_nTu + _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC24MLRandomForestClassifierV_Tt1g503_s8b4ML24fgh80V12handleResult33_4BA12AD8C244BA9B40BDFBE3C2FF9674LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04TreeH23TrainingSessionDelegateCTf1nc_nTu))(v0[5], v0[2]);
}

{
  *(*v0 + 48);
  return swift_task_switch(closure #1 in static MLRandomForestClassifier.handleResult(_:session:fulfill:), 0, 0);
}

{
  v1 = *(v0 + 40);
  (*(v0 + 24))(v1);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &demangling cache variable for type metadata for Result<MLRandomForestClassifier, Error>);
  v1;
  return (*(v0 + 8))();
}

uint64_t MLRandomForestClassifier.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2[37] = a2;
  v2[36] = a1;
  v3 = type metadata accessor for AnyClassificationMetrics(0);
  v2[38] = v3;
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[39] = swift_task_alloc(v4);
  v2[40] = swift_task_alloc(v4);
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyClassificationMetrics?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[41] = swift_task_alloc(v5);
  v2[42] = swift_task_alloc(v5);
  v6 = type metadata accessor for MLClassifierMetrics(0);
  v2[43] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyTreeClassifierModel?);
  v2[44] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MLRandomForestClassifier(0);
  v2[45] = v8;
  v2[46] = swift_task_alloc((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  v2[47] = swift_task_alloc((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BoostedTreeConfiguration(0);
  v2[48] = v10;
  v11 = *(v10 - 8);
  v2[49] = v11;
  v2[50] = swift_task_alloc((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  v2[51] = swift_task_alloc((*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v2[52] = v13;
  v2[53] = swift_task_alloc((*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLRandomForestClassifier.init(delegate:), 0, 0);
}

uint64_t MLRandomForestClassifier.init(delegate:)()
{
  v1 = v0[52];
  v2 = v0[51];
  v3 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters + v0[37];
  swift_beginAccess(v3, (v0 + 24), 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v3, v2, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    BUG();
  }

  v4 = v0[53];
  v5 = v0[52];
  v6 = v0[50];
  v18 = v0[49];
  v15 = v0[48];
  v16 = v0[47];
  v7 = v0[37];
  v14 = v0[44];
  outlined init with take of MLClassifierMetrics(v0[51], v4, type metadata accessor for PersistentParametersForTreeBasedMethods);
  (*(v18 + 16))(v6, v4 + v5[8], v15);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4 + v5[5], v16, &demangling cache variable for type metadata for DataFrame?);
  MLRandomForestClassifier.ModelParameters.init(configuration:validation:)(v6, v16);
  v8 = v5[6];
  v17 = *(v4 + v8);
  v19 = *(v4 + v8 + 8);
  v9 = *(v4 + v5[7]);
  v10 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model + v7;
  swift_beginAccess(v10, (v0 + 27), 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v14, &demangling cache variable for type metadata for AnyTreeClassifierModel?);
  v11 = type metadata accessor for AnyTreeClassifierModel(0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v11) == 1)
  {
    BUG();
  }

  outlined init with copy of MLRandomForestClassifier.ModelParameters((v0 + 2), (v0 + 13));

  v12 = swift_task_alloc(128);
  v0[54] = v12;
  *v12 = v0;
  v12[1] = MLRandomForestClassifier.init(delegate:);
  return MLRandomForestClassifier.init(_:targetColumn:featureColumns:parameters:)(v0[46], v0[44], v17, v19, v9, (v0 + 13));
}

{
  v2 = *(*v1 + 432);
  *(*v1 + 440) = v0;
  v2;
  if (v0)
  {
    v3 = MLRandomForestClassifier.init(delegate:);
  }

  else
  {
    v3 = MLRandomForestClassifier.init(delegate:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 336);
  v2 = *(v0 + 304);
  v3 = *(v0 + 296);
  outlined init with take of MLClassifierMetrics(*(v0 + 368), *(v0 + 288), type metadata accessor for MLRandomForestClassifier);
  v4 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingMetrics + v3;
  swift_beginAccess(v4, v0 + 240, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4, v1, &demangling cache variable for type metadata for AnyClassificationMetrics?);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    BUG();
  }

  v5 = *(v0 + 424);
  v22 = *(v0 + 360);
  v6 = *(v0 + 344);
  v7 = *(v0 + 336);
  v29 = *(v0 + 328);
  v26 = *(v0 + 304);
  v24 = *(v0 + 288);
  v8 = *(v0 + 296);
  outlined destroy of MLRandomForestClassifier.ModelParameters(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for PersistentParametersForTreeBasedMethods);
  outlined init with take of MLClassifierMetrics(v7, v6, type metadata accessor for AnyClassificationMetrics);
  v9 = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload(v6, v9, 0);
  outlined assign with take of MLClassifierMetrics(v6, v24 + *(v22 + 36));
  v10 = v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics;
  swift_beginAccess(v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics, v0 + 264, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v29, &demangling cache variable for type metadata for AnyClassificationMetrics?);

  if (__swift_getEnumTagSinglePayload(v29, 1, v26) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 328), &demangling cache variable for type metadata for AnyClassificationMetrics?);
  }

  else
  {
    v30 = *(v0 + 360);
    v11 = *(v0 + 320);
    v12 = *(v0 + 288);
    v27 = v9;
    v13 = *(v0 + 312);
    outlined init with take of MLClassifierMetrics(*(v0 + 328), v11, type metadata accessor for AnyClassificationMetrics);
    outlined init with take of MLClassifierMetrics(v11, v13, type metadata accessor for AnyClassificationMetrics);
    v14 = v12 + *(v30 + 40);
    outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for MLClassifierMetrics);
    outlined init with take of MLClassifierMetrics(v13, v14, type metadata accessor for AnyClassificationMetrics);
    swift_storeEnumTagMultiPayload(v14, v27, 0);
  }

  v15 = *(v0 + 408);
  v16 = *(v0 + 400);
  v17 = *(v0 + 376);
  v18 = *(v0 + 368);
  v20 = *(v0 + 352);
  v25 = *(v0 + 344);
  v23 = *(v0 + 336);
  v21 = *(v0 + 328);
  v28 = *(v0 + 312);
  v31 = *(v0 + 320);
  *(v0 + 424);
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
  v1 = *(v0 + 424);
  v2 = *(v0 + 408);
  v3 = *(v0 + 400);
  v12 = *(v0 + 376);
  v11 = *(v0 + 368);
  v10 = *(v0 + 352);
  v9 = *(v0 + 344);
  v8 = *(v0 + 336);
  v7 = *(v0 + 328);
  v6 = *(v0 + 320);
  v5 = *(v0 + 312);

  outlined destroy of MLRandomForestClassifier.ModelParameters(v0 + 16);
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

uint64_t partial apply for closure #1 in MLRandomForestClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  type metadata accessor for AnyTreeClassifierModel(0);
  v2 = swift_task_alloc(48);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLRandomForestClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(a1);
}

uint64_t objectdestroyTm_3()
{
  v11 = type metadata accessor for AnyTreeClassifierModel(0);
  v1 = *(v11 - 8);
  v2 = *(v1 + 80);
  v3 = ~*(v1 + 80) & (v2 + 16);
  v4 = *(v1 + 64);
  v5 = v3 + v0;
  *(v0 + v3 + 8);
  v6 = *(v0 + v3 + 16);
  if (v6)
  {
    v6;
    *(v5 + 32);
  }

  v7 = v4 + v3;
  v8 = v5 + *(v11 + 24);
  v9 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v9 - 8) + 8))(v8, v9);
  *(v5 + *(v11 + 28));
  return swift_deallocObject(v0, v7, v2 | 7);
}

uint64_t partial apply for closure #1 in MLRandomForestClassifier.init(checkpoint:)(uint64_t a1)
{
  type metadata accessor for AnyTreeClassifierModel(0);
  v2 = swift_task_alloc(48);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLRandomForestClassifier.init(checkpoint:)(a1);
}

id sub_1C0749()
{
  v1 = v0;
  result = MLRandomForestClassifier.model.getter();
  *v1 = result;
  return result;
}

void *initializeBufferWithCopyOfBuffer for MLRandomForestClassifier(void *a1, void *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) == 0)
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

    v7 = type metadata accessor for AnyTreeClassifierModel(0);
    v8 = *(v7 + 24);
    v9 = type metadata accessor for BaseTreeClassifierModel(0);
    (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
    v10 = *(v7 + 28);
    v11 = *(a2 + v10 + 8);
    *(a1 + v10) = *(a2 + v10);
    *(a1 + v10 + 8) = v11;
    v12 = a3[5];
    v13 = *(a2 + v12);
    *(a1 + v12) = v13;
    v14 = a3[6];
    *(a1 + v14) = *(a2 + v14);
    *(a1 + v14 + 8) = *(a2 + v14 + 8);
    *(a1 + a3[7]) = *(a2 + a3[7]);
    v15 = a3[8];
    v16 = a1 + v15;
    v17 = a2 + v15;
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
      *(v16 + 1) = *(v17 + 1);
      *v16 = v19;
    }

    *(v16 + 2) = *(v17 + 2);
    *(v16 + 3) = *(v17 + 3);
    *(v16 + 4) = *(v17 + 4);
    *(v16 + 10) = *(v17 + 10);
    v20 = a3;
    v21 = a3[9];
    v22 = (a1 + v21);
    v23 = (a2 + v21);
    v63 = type metadata accessor for MLClassifierMetrics.Contents(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v23, v63);
    if (EnumCaseMultiPayload == 2)
    {
      v30 = v22;
      v31 = *v23;
      swift_errorRetain(*v23);
      *v30 = v31;
      v22 = v30;
      EnumCaseMultiPayload = 2;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *v22 = *v23;
      v57 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v25 = *(v57 + 20);
      v55 = v22 + v25;
      v26 = type metadata accessor for DataFrame(0);
      v64 = v22;
      v27 = *(*(v26 - 8) + 16);
      v28 = v23 + v25;
      v3 = a1;
      v27(v55, v28, v26);
      v29 = v26;
      v20 = a3;
      v27(v64 + *(v57 + 24), v23 + *(v57 + 24), v29);
      v22 = v64;
    }

    else
    {
      v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v32 = swift_getEnumCaseMultiPayload(v23, v65);
      v58 = v32 == 1;
      v33 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v32 == 1)
      {
        v33 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v34 = __swift_instantiateConcreteTypeFromMangledName(v33);
      (*(*(v34 - 8) + 16))(v22, v23, v34);
      swift_storeEnumTagMultiPayload(v22, v65, v58);
    }

    swift_storeEnumTagMultiPayload(v22, v63, EnumCaseMultiPayload);
    v35 = v20[10];
    v36 = (v3 + v35);
    v37 = (a2 + v35);
    v38 = swift_getEnumCaseMultiPayload(a2 + v35, v63);
    if (v38 == 2)
    {
      v43 = *v37;
      swift_errorRetain(v43);
      *v36 = v43;
      v54 = 2;
    }

    else
    {
      if (v38 != 1)
      {
        v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v48 = swift_getEnumCaseMultiPayload(v37, v47);
        v49 = v37;
        v50 = v48 == 1;
        v51 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v48 == 1)
        {
          v51 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v52 = __swift_instantiateConcreteTypeFromMangledName(v51);
        (*(*(v52 - 8) + 16))(v36, v49, v52);
        swift_storeEnumTagMultiPayload(v36, v47, v50);
        v45 = v36;
        v46 = v63;
        v44 = 0;
        goto LABEL_24;
      }

      *v36 = *v37;
      v62 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v39 = *(v62 + 20);
      v60 = v36 + v39;
      v40 = type metadata accessor for DataFrame(0);
      v41 = *(*(v40 - 8) + 16);
      v42 = v37 + v39;
      v3 = a1;
      v41(v60, v42, v40);
      v41(v36 + *(v62 + 24), v37 + *(v62 + 24), v40);
      v54 = 1;
    }

    v44 = v54;
    v45 = v36;
    v46 = v63;
LABEL_24:
    swift_storeEnumTagMultiPayload(v45, v46, v44);
    return v3;
  }

  v6 = *a2;
  *v3 = *a2;
  v3 = (v6 + ((v4 + 16) & ~v4));

  return v3;
}

uint64_t destroy for MLRandomForestClassifier(void *a1, int *a2)
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
  if (*(a1 + v8 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v8));
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

void *initializeWithCopy for MLRandomForestClassifier(void *a1, void *a2, int *a3)
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
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(a2 + v12 + 24);

  v10;

  if (v15)
  {
    *(v13 + 3) = v15;
    (**(v15 - 8))(v13, v14, v15);
  }

  else
  {
    v16 = *v14;
    *(v13 + 1) = *(v14 + 1);
    *v13 = v16;
  }

  *(v13 + 2) = *(v14 + 2);
  *(v13 + 3) = *(v14 + 3);
  *(v13 + 4) = *(v14 + 4);
  *(v13 + 10) = *(v14 + 10);
  v17 = a3[9];
  v18 = (a1 + v17);
  v19 = (a2 + v17);
  v49 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v19, v49);
  if (EnumCaseMultiPayload == 2)
  {
    v25 = *v19;
    swift_errorRetain(*v19);
    *v18 = v25;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    *v18 = *v19;
    v47 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v21 = *(v47 + 20);
    v45 = v18 + v21;
    v22 = type metadata accessor for DataFrame(0);
    v23 = v19 + v21;
    v24 = *(*(v22 - 8) + 16);
    v24(v45, v23, v22);
    v24(v18 + *(v47 + 24), v19 + *(v47 + 24), v22);
  }

  else
  {
    v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v26 = swift_getEnumCaseMultiPayload(v19, v48);
    v27 = v26 == 1;
    v28 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v26 == 1)
    {
      v28 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v29 = __swift_instantiateConcreteTypeFromMangledName(v28);
    (*(*(v29 - 8) + 16))(v18, v19, v29);
    swift_storeEnumTagMultiPayload(v18, v48, v27);
  }

  swift_storeEnumTagMultiPayload(v18, v49, EnumCaseMultiPayload);
  v30 = a3[10];
  v31 = (a1 + v30);
  v32 = (a2 + v30);
  v33 = swift_getEnumCaseMultiPayload(a2 + v30, v49);
  if (v33 == 2)
  {
    v38 = *v32;
    swift_errorRetain(v38);
    *v31 = v38;
  }

  else if (v33 == 1)
  {
    *v31 = *v32;
    v51 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v34 = *(v51 + 20);
    v53 = v31 + v34;
    v35 = type metadata accessor for DataFrame(0);
    v36 = v32 + v34;
    v37 = *(*(v35 - 8) + 16);
    v37(v53, v36, v35);
    v37(v31 + *(v51 + 24), v32 + *(v51 + 24), v35);
  }

  else
  {
    v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v40 = swift_getEnumCaseMultiPayload(v32, v39);
    v54 = v32;
    v41 = v40 == 1;
    v42 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v40 == 1)
    {
      v42 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v43 = __swift_instantiateConcreteTypeFromMangledName(v42);
    (*(*(v43 - 8) + 16))(v31, v54, v43);
    swift_storeEnumTagMultiPayload(v31, v39, v41);
  }

  swift_storeEnumTagMultiPayload(v31, v49, v33);
  return a1;
}

void *assignWithCopy for MLRandomForestClassifier(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v5 = a1[1];
  a1[1] = a2[1];

  v5;
  v6 = a1 + 2;
  v7 = a2 + 2;
  v8 = a1[2];
  v9 = a2[2];
  if (v8)
  {
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

  else if (v9)
  {
    a1[2] = v9;
    a1[3] = a2[3];
    a1[4] = a2[4];
  }

  else
  {
    a1[4] = a2[4];
    *v6 = *v7;
  }

  v11 = type metadata accessor for AnyTreeClassifierModel(0);
  v12 = *(v11 + 24);
  v13 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v13 - 8) + 24))(a1 + v12, a2 + v12, v13);
  v14 = *(v11 + 28);
  v15 = *(a2 + v14 + 8);
  v16 = *(a1 + v14);
  *(a1 + v14) = *(a2 + v14);
  *(a1 + v14 + 8) = v15;

  v16;
  v17 = a3[5];
  v18 = *(a2 + v17);
  v19 = *(a1 + v17);
  *(a1 + v17) = v18;
  v18;

  v20 = a3[6];
  *(a1 + v20) = *(a2 + v20);
  v21 = *(a1 + v20 + 8);
  *(a1 + v20 + 8) = *(a2 + v20 + 8);

  v21;
  v22 = a3[7];
  v23 = *(a1 + v22);
  *(a1 + v22) = *(a2 + v22);

  v23;
  v24 = a3[8];
  v25 = a1 + v24;
  v26 = a2 + v24;
  v27 = *(a2 + v24 + 24);
  if (*(a1 + v24 + 24))
  {
    v28 = (a1 + v24);
    if (v27)
    {
      __swift_assign_boxed_opaque_existential_0(v28, (a2 + v24));
      goto LABEL_15;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  else if (v27)
  {
    *(v25 + 3) = v27;
    (**(v27 - 8))(v25, v26);
    goto LABEL_15;
  }

  v29 = *v26;
  *(v25 + 1) = *(v26 + 1);
  *v25 = v29;
LABEL_15:
  *(v25 + 4) = *(v26 + 4);
  *(v25 + 5) = *(v26 + 5);
  *(v25 + 6) = *(v26 + 6);
  *(v25 + 7) = *(v26 + 7);
  *(v25 + 8) = *(v26 + 8);
  *(v25 + 9) = *(v26 + 9);
  *(v25 + 10) = *(v26 + 10);
  if (a1 != a2)
  {
    v30 = a3[9];
    v31 = (a1 + v30);
    v32 = (a2 + v30);
    outlined destroy of MLActivityClassifier.ModelParameters(v31, type metadata accessor for MLClassifierMetrics.Contents);
    v33 = type metadata accessor for MLClassifierMetrics.Contents(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v32, v33);
    v64 = EnumCaseMultiPayload;
    if (EnumCaseMultiPayload == 2)
    {
      v37 = *v32;
      swift_errorRetain(v37);
      *v31 = v37;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *v31 = *v32;
      v57 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v59 = v33;
      v35 = *(v57 + 20);
      v55 = v31 + v35;
      v56 = type metadata accessor for DataFrame(0);
      v67 = *(*(v56 - 8) + 16);
      v36 = v32 + v35;
      v33 = v59;
      v67(v55, v36, v56);
      v67(v31 + *(v57 + 24), v32 + *(v57 + 24), v56);
    }

    else
    {
      v60 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v38 = swift_getEnumCaseMultiPayload(v32, v60);
      v68 = v38 == 1;
      v39 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v38 == 1)
      {
        v39 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v40 = __swift_instantiateConcreteTypeFromMangledName(v39);
      (*(*(v40 - 8) + 16))(v31, v32, v40);
      swift_storeEnumTagMultiPayload(v31, v60, v68);
    }

    swift_storeEnumTagMultiPayload(v31, v33, v64);
    v41 = a3[10];
    v42 = (a1 + v41);
    v43 = (a2 + v41);
    outlined destroy of MLActivityClassifier.ModelParameters(a1 + v41, type metadata accessor for MLClassifierMetrics.Contents);
    v44 = swift_getEnumCaseMultiPayload(v43, v33);
    if (v44 == 2)
    {
      v49 = *v43;
      swift_errorRetain(v49);
      *v42 = v49;
    }

    else
    {
      v63 = v44;
      if (v44 == 1)
      {
        *v42 = *v43;
        v69 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
        v45 = *(v69 + 20);
        v58 = v42 + v45;
        v61 = v33;
        v46 = type metadata accessor for DataFrame(0);
        v65 = *(*(v46 - 8) + 16);
        v47 = v43 + v45;
        v44 = 1;
        v65(v58, v47, v46);
        v48 = v46;
        v33 = v61;
        v65(v42 + *(v69 + 24), v43 + *(v69 + 24), v48);
      }

      else
      {
        v66 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v50 = swift_getEnumCaseMultiPayload(v43, v66);
        v51 = v50 == 1;
        v52 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v50 == 1)
        {
          v52 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v53 = __swift_instantiateConcreteTypeFromMangledName(v52);
        (*(*(v53 - 8) + 16))(v42, v43, v53);
        swift_storeEnumTagMultiPayload(v42, v66, v51);
        v44 = v63;
      }
    }

    swift_storeEnumTagMultiPayload(v42, v33, v44);
  }

  return a1;
}

uint64_t initializeWithTake for MLRandomForestClassifier(uint64_t a1, uint64_t a2, int *a3)
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
  qmemcpy((a1 + a3[8]), (a2 + a3[8]), 0x58uLL);
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

void *assignWithTake for MLRandomForestClassifier(void *a1, void *a2, int *a3)
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
  *(v24 + 72) = *(v25 + 72);
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

uint64_t sub_1C1D0A(uint64_t a1, unsigned int a2, uint64_t a3)
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

uint64_t sub_1C1D97(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
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

uint64_t type metadata completion function for MLRandomForestClassifier(uint64_t a1)
{
  result = type metadata accessor for AnyTreeClassifierModel(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    v4[1] = &value witness table for Builtin.UnknownObject + 64;
    v4[2] = &unk_3449D0;
    v4[3] = &value witness table for Builtin.BridgeObject + 64;
    v4[4] = &unk_3449E8;
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

uint64_t sub_1C1EBC()
{
  swift_unknownObjectRelease(*(v0 + 16));

  return swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in static MLRandomForestClassifier.handleResult(_:session:fulfill:)(uint64_t a1)
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
  return closure #1 in static MLRandomForestClassifier.handleResult(_:session:fulfill:)(a1, v3, v4, v8, v9, v5);
}

uint64_t specialized _NativeSet._unsafeUpdate(with:)(uint64_t a1, uint64_t a2)
{
  v19 = *v2;
  Hasher.init(_seed:)(*(v19 + 40));
  v20 = a2;
  v21 = a1;
  if (a2)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)(v18, a1);
    a2;
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v3 = Hasher._finalize()();
  v4 = v19;
  v5 = ~(-1 << *(v19 + 32));
  v6 = v5 & v3;
  result = *(v19 + 8 * ((v5 & v3) >> 6) + 56);
  if (!_bittest64(&result, v6))
  {
    v9 = v20;
    v10 = v21;
LABEL_15:
    if (v4[2] >= v4[3])
    {
      BUG();
    }

    v4[(v6 >> 6) + 7] |= 1 << v6;
    v13 = v4[6];
    v14 = 16 * v6;
    *(v13 + v14) = v10;
    *(v13 + v14 + 8) = v9;
    v15 = v4[2];
    v16 = __OFADD__(1, v15);
    result = v15 + 1;
    if (v16)
    {
      BUG();
    }

    v4[2] = result;
    return result;
  }

  v8 = *(v19 + 48);
  v9 = v20;
  v10 = v21;
  while (1)
  {
    v11 = *(v8 + 16 * v6 + 8);
    if (v11)
    {
      break;
    }

    if (!v9)
    {
      goto LABEL_19;
    }

LABEL_12:
    v6 = v5 & (v6 + 1);
    result = v4[(v6 >> 6) + 7];
    if (!_bittest64(&result, v6))
    {
      goto LABEL_15;
    }
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  if (v10 ^ *(v8 + 16 * v6) | v9 ^ v11)
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)(*(v8 + 16 * v6), *(v8 + 16 * v6 + 8), v21, v9, 0);
    v4 = v19;
    v10 = v21;
    v9 = v20;
    if ((v12 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  result = v11;
  v10 = v21;
  v9 = v20;
LABEL_19:
  v17 = (16 * v6 + v8);
  *v17 = v10;
  v17[1] = v9;
  return result;
}

unint64_t MethodName.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      result = 0x6172745F74696E69;
      break;
    case 1:
    case 8:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x745F656D75736572;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x6E69617274;
      break;
    case 6:
      result = 1702257011;
      break;
    case 7:
      result = 0x6174656D5F646461;
      break;
    case 9:
      result = 0x737265765F746567;
      break;
    case 10:
      result = 0x74636964657270;
      break;
    case 11:
      result = 0x657A696C797473;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0x657461756C617665;
      break;
    case 14:
      result = 0x74706F5F74696E69;
      break;
    case 15:
      result = 0x6569665F7473696CLL;
      break;
    case 16:
      result = 0x756C61765F746567;
      break;
    case 17:
      result = 0x6E656D6D6F636572;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0xD000000000000018;
      break;
    case 20:
      result = 0xD00000000000001DLL;
      break;
    case 21:
      result = 0xD000000000000011;
      break;
    case 22:
      result = 0xD000000000000019;
      break;
    case 23:
      result = 0xD00000000000002BLL;
      break;
    case 24:
      result = 0xD000000000000024;
      break;
    case 25:
      result = 0xD00000000000001ALL;
      break;
    case 26:
      result = 0xD000000000000021;
      break;
  }

  return result;
}

uint64_t MLHandActionClassifier.GraphCNN.updateGraphCNN(from:)(uint64_t a1)
{
  v52 = v1;
  v50 = v2;
  v3 = *(*(type metadata accessor for MLHandActionClassifier.GraphCNNModel(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v47 = &v25;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for SGD<MLHandActionClassifier.GraphCNNModel>) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v49 = &v25;
  v9 = *(*(type metadata accessor for URL(0) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v48 = a1;
  URL.appendingPathComponent(_:)(0x7461446C65646F6DLL, 0xE900000000000061);
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
  v26[0] = 1;
  v27 = 44;
  v28 = 0xE100000000000000;
  v29 = 0;
  v30 = 0xE000000000000000;
  v31 = 92;
  v32 = 0xE100000000000000;
  v33 = 1;
  v34 = 34;
  v35 = 0xE100000000000000;
  v36 = 1;
  v37 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
  v38 = 10;
  v39 = 0xE100000000000000;
  v40 = 0;
  v41 = 1;
  v42 = 0;
  outlined retain of MLDataTable.ParsingOptions(__src);
  outlined release of MLDataTable.ParsingOptions(v26);
  memcpy(__dst, __src, sizeof(__dst));
  v12 = v52;
  result = MLDataTable.init(contentsOf:options:)(&v25, __dst);
  if (!v12)
  {
    v14 = v50;
    v15 = v45;
    v16 = v46;
    ML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE03getD10Dictionary4fromSDySSSaySdGGAA11MLDataTableV_tKFZAA20MLActivityClassifierV7TrainerV0C9ContainerC_Tt0B5Tm = _s8CreateML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE03getD10Dictionary4fromSDySSSaySdGGAA11MLDataTableV_tKFZAA20MLActivityClassifierV7TrainerV0C9ContainerC_Tt0B5Tm(v45, v46, 0.0);
    v51 = v15;
    v18 = v14 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
    v19 = v14 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
    v20 = ML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE03getD10Dictionary4fromSDySSSaySdGGAA11MLDataTableV_tKFZAA20MLActivityClassifierV7TrainerV0C9ContainerC_Tt0B5Tm;
    swift_beginAccess(v19, __dst, 0, 0);
    v21 = v18;
    v22 = v47;
    outlined init with copy of MLTrainingSessionParameters(v21, v47, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
    v52 = v20;
    _s14NeuralNetworks3SGDV8CreateMLE15createOptimizer3for20checkpointDictionaryACyxGx_SDySSSaySdGGtKFZAD22MLHandActionClassifierV13GraphCNNModelV_Tt2g5(v22, v20);
    outlined destroy of MLActivityClassifier.ModelParameters(v22, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
    v23 = v49;
    specialized _ModelCheckpoint<>.updateGraph<A>(from:optimizer:checkpointDictionary:)(v48, v49, v52);
    outlined consume of Result<_DataTable, Error>(v51, v16);
    v52;
    v24 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_optimizer + v50;
    swift_beginAccess(OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_optimizer + v50, &v45, 33, 0);
    outlined assign with take of SGD<MLHandActionClassifier.GraphCNNModel>(v23, v24);
    return swift_endAccess(&v45);
  }

  return result;
}

uint64_t specialized SGD.updateOptimizerState(for:shape:using:name:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, double a6, double a7)
{
  v54 = v7;
  v63 = a3;
  v55 = a1;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v56 = &v52;
  v57 = type metadata accessor for Tensor(0);
  v64 = *(v57 - 8);
  v13 = *(v64 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v58 = &v52;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v65 = &v52;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?) - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v59 = &v52;
  v21 = alloca(v18);
  v22 = alloca(v18);
  outlined init with copy of TensorShape?(a2, &v52);
  v23 = type metadata accessor for TensorShape(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v52, 1, v23);
  v53 = a4;
  v60 = v23;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v52, &demangling cache variable for type metadata for TensorShape?);
    v67 = 0;
    v68 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);
    v25 = v68;

    v25;
    v67 = a4;
    v62 = a5;
    v68 = a5;
    v26._object = ".optimizer.velocity" + 0x8000000000000000;
    v26._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v26);
    v27 = v68;
    v28 = specialized Dictionary.subscript.getter(v67, v68, v63);
    result = v27;
    if (!v28)
    {
      return result;
    }

    v30 = *(v28 + 16);
    if (v30)
    {
      v67 = _swiftEmptyArrayStorage;
      v31 = 0;
      v66 = v28;
      v69 = v30;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
      v32 = v69;
      v33 = v66;
      v34 = v67;
      a6 = -9.223372036854778e18;
      a7 = 9.223372036854776e18;
      do
      {
        v35 = *(v33 + 8 * v31 + 32);
        if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          BUG();
        }

        if (v35 <= -9.223372036854778e18)
        {
          BUG();
        }

        if (v35 >= 9.223372036854776e18)
        {
          BUG();
        }

        v67 = v34;
        v36 = v34[2];
        v37 = v34[3];
        if (v37 >> 1 <= v36)
        {
          v61 = v35;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v37 >= 2, v36 + 1, 1);
          v35 = v61;
          a7 = 9.223372036854776e18;
          a6 = -9.223372036854778e18;
          v32 = v69;
          v33 = v66;
          v34 = v67;
        }

        v31 = (v31 + 1);
        v34[2] = v36 + 1;
        v34[v36 + 4] = v35;
        a5 = v62;
      }

      while (v32 != v31);
      v69 = v34;
      v33;
    }

    else
    {
      v28;
      v69 = _swiftEmptyArrayStorage;
      a5 = v62;
    }
  }

  else
  {
    v69 = TensorShape.dimensions.getter();
    (*(*(v23 - 8) + 8))(&v52, v23);
  }

  v67 = 0;
  v68 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  v38 = v68;

  v38;
  v67 = v53;
  v68 = a5;
  v39._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v39);
  v40 = v68;
  v41 = specialized Dictionary.subscript.getter(v67, v68, v63);
  v40;
  if (!v41)
  {
    return v69;
  }

  v42 = v59;
  TensorShape.init(_:)(v69);
  __swift_storeEnumTagSinglePayload(v42, 0, 1, v60);
  v43 = v58;
  Array<A>.floatTensor(shape:)(v42, v41, a6, a7);
  v41;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v42, &demangling cache variable for type metadata for TensorShape?);
  v44 = v65;
  v45 = v43;
  v46 = v57;
  v47 = v64;
  (*(v64 + 32))(v65, v45, v57);
  v48 = v56;
  (*(v47 + 16))(v56, v44, v46);
  v49 = v48;
  __swift_storeEnumTagSinglePayload(v48, 0, 1, v46);
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for SGD<MLHandActionClassifier.GraphCNNModel>);
  v50 = v55;

  v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLHandActionClassifier.GraphCNNModel>);
  OptimizerStateDictionary.subscript.setter(v49, v50, v51);
  return (*(v64 + 8))(v65, v46);
}

uint64_t _s14NeuralNetworks3SGDV8CreateMLE15createOptimizer3for20checkpointDictionaryACyxGx_SDySSSaySdGGtKFZAD22MLHandActionClassifierV13GraphCNNModelV_Tt2g5(uint64_t a1, uint64_t a2)
{
  v28[0] = a1;
  v28[1] = v2;
  v3 = 0xD000000000000033;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for RegularizationKind?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v29 = v28;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for GradientClippingMode?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v30 = v28;
  v10 = specialized Dictionary.subscript.getter(0x676E696E7261656CLL, 0xEC00000065746152, a2);
  if (!v10)
  {
    v3 = 0xD000000000000037;
LABEL_22:
    v26 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v26, 0, 0);
    *v27 = v3;
    *(v27 + 8) = v14 | 0x8000000000000000;
    *(v27 + 16) = 0;
    *(v27 + 32) = 0;
    *(v27 + 48) = 2;
    return swift_willThrow();
  }

  v11 = v10;
  if (*(v10 + 16) != 1)
  {
    v3 = 0xD000000000000037;
LABEL_21:
    v11;
    goto LABEL_22;
  }

  *&v12 = COERCE_DOUBLE(specialized Dictionary.subscript.getter(0x6D75746E656D6F6DLL, 0xE800000000000000, a2));
  if (*&v12 == 0.0)
  {
    v14 = "e checkpoint dictionary";
    goto LABEL_21;
  }

  if (*(v12 + 16) != 1)
  {
    v14 = "e checkpoint dictionary";
LABEL_20:
    v12;
    goto LABEL_21;
  }

  v33 = *&v12;
  v13 = specialized Dictionary.subscript.getter(0xD000000000000014, (".isBidirectional" + 0x8000000000000000), a2);
  v3 = 0xD00000000000003FLL;
  v14 = "eckpoint dictionary";
  if (!v13)
  {
LABEL_19:
    LOBYTE(v12) = LOBYTE(v33);
    goto LABEL_20;
  }

  if (*(v13 + 16) != 1)
  {
    v13;
    goto LABEL_19;
  }

  if (!*(v11 + 16))
  {
    BUG();
  }

  v15 = v13;
  v16 = *(v11 + 32);
  v31 = v16;
  v11;
  if (!*(*&v33 + 16))
  {
    BUG();
  }

  v17 = *(*&v33 + 32);
  v32 = v17;
  SLOBYTE(v33);
  if (!*(v15 + 16))
  {
    BUG();
  }

  v33 = *(v15 + 32);
  v18 = v33;
  v15;
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    BUG();
  }

  if (v33 <= -9.223372036854778e18)
  {
    BUG();
  }

  if (v33 >= 9.223372036854776e18)
  {
    BUG();
  }

  LODWORD(v33) = v33 == 1;
  v19 = type metadata accessor for GradientClippingMode(0);
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v19);
  v20 = v29;
  *v29 = 981668463;
  v21 = enum case for RegularizationKind.l2(_:);
  v22 = type metadata accessor for RegularizationKind(0);
  (*(*(v22 - 8) + 104))(v20, v21, v22);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v22);
  v23 = type metadata accessor for MLHandActionClassifier.GraphCNNModel(0);
  v24 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel);
  return SGD.init(for:learningRate:momentum:usesNesterovMomentum:gradientClippingMode:regularizationKind:gradientScale:)(v28[0], LODWORD(v33), v30, v20, v23, v24, v31, v32, 1.0);
}

void *MLHandActionClassifier.GraphCNN.init(classLabels:export:numOfKeypoints:numOfKeypointsChannels:windowSize:)(char *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v73 = a5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for RegularizationKind?) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v62 = v58;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for GradientClippingMode?) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v63 = v58;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for SGD<MLHandActionClassifier.GraphCNNModel>) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v61 = v58;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v71 = v58;
  v20 = type metadata accessor for MLHandActionClassifier.GraphCNNModel(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v69 = v5;
  v72 = a1;
  v5[2] = a1;
  v5[3] = a3;
  v5[4] = a4;
  *(v58 + *(v20 + 36)) = a2 & 1;
  v24 = v20;
  *(v58 + *(v20 + 40)) = v73;
  v25 = type metadata accessor for ParameterInitializer(0);

  v26 = static ParameterInitializer.zeros.getter(a1);
  v70 = v25;
  v27 = static ParameterInitializer.ones.getter();
  BatchNorm.init(offsetInitializer:scaleInitializer:momentum:epsilon:)(v26, v27, 0.1, 0.0000099999997);
  v73 = type metadata accessor for ComputeDevice(0);
  v28 = v71;
  __swift_storeEnumTagSinglePayload(v71, 1, 1, v73);
  v29 = static ParameterInitializer.glorotUniform(seed:scalarType:on:)(0, 1, &type metadata for Float, &protocol witness table for Float, v28);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v28, &demangling cache variable for type metadata for ComputeDevice?);
  Dense.init(unitCount:weightInitializer:biasInitializer:)(704, v29, 0);
  v30 = static ParameterInitializer.zeros.getter(704);
  v31 = static ParameterInitializer.ones.getter();
  BatchNorm.init(offsetInitializer:scaleInitializer:momentum:epsilon:)(v30, v31, 0.1, 0.0000099999997);
  v64 = v24;
  v65 = v58;
  Dropout.init(probability:seed:)(0, 1, 0.2);
  v66 = *(v72 + 2);
  v72;
  v32 = v58 + *(v24 + 32);
  v72 = v32;
  static MLHandActionClassifier.SingleStreamBlock.makeDownSampledInvertedResidual(inplanes:planes:stride:)(16, 8, 1, 1);
  v33 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
  static MLHandActionClassifier.SingleStreamBlock.makeDownSampledInvertedResidual(inplanes:planes:stride:)(8, 16, 1, 1);
  static MLHandActionClassifier.SingleStreamBlock.makeDownSampledInvertedResidual(inplanes:planes:stride:)(16, 32, 1, 1);
  v67 = v33;
  static MLHandActionClassifier.SingleStreamBlock.makeDownSampledInvertedResidual(inplanes:planes:stride:)(32, 64, 2, 2);
  v34 = &v32[*(v33 + 32)];
  v35 = v71;
  __swift_storeEnumTagSinglePayload(v71, 1, 1, v73);
  v36 = static ParameterInitializer.glorotUniform(seed:scalarType:on:)(0, 1, &type metadata for Float, &protocol witness table for Float, v35);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v35, &demangling cache variable for type metadata for ComputeDevice?);
  Conv2D.init(filterCount:kernelSize:stride:padding:dilation:groupCount:weightInitializer:biasInitializer:)(128, 1, 1, 1, 1, 0, 0, 1, 1, 1, v36, 0);
  AveragePool2D.init(kernelSize:stride:padding:countIncludesPadding:)(1, 3, 1, 1, 0, 0, 1, 1);
  v68 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v37 = *(v68 + 20);
  v34[v37 + 48] = v59;
  v38 = v58[0];
  v39 = v58[1];
  *&v34[v37 + 32] = v58[2];
  *&v34[v37 + 16] = v39;
  *&v34[v37] = v38;
  v40 = v35;
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v73);
  v41 = static ParameterInitializer.glorotUniform(seed:scalarType:on:)(0, 1, &type metadata for Float, &protocol witness table for Float, v35);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v40, &demangling cache variable for type metadata for ComputeDevice?);
  Conv2D.init(filterCount:kernelSize:stride:padding:dilation:groupCount:weightInitializer:biasInitializer:)(64, 9, 1, 1, 1, 4, 0, 1, 1, 1, v41, 0);
  v42 = static ParameterInitializer.zeros.getter(64);
  v43 = static ParameterInitializer.ones.getter();
  BatchNorm.init(offsetInitializer:scaleInitializer:momentum:epsilon:)(v42, v43, 0.1, 0.0000099999997);
  Dropout.init(probability:seed:)(0, 1, 0.2);
  static MLHandActionClassifier.SingleStreamBlock.makeDownSampledInvertedResidual(inplanes:planes:stride:)(64, 128, 2, 2);
  static MLHandActionClassifier.SingleStreamBlock.makeDownSampledInvertedResidual(inplanes:planes:stride:)(128, 256, 1, 1);
  GlobalAveragePool2D.init()();
  v44 = v71;
  __swift_storeEnumTagSinglePayload(v71, 1, 1, v73);
  v45 = v44;
  v46 = static ParameterInitializer.glorotUniform(seed:scalarType:on:)(0, 1, &type metadata for Float, &protocol witness table for Float, v44);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v45, &demangling cache variable for type metadata for ComputeDevice?);
  v47 = static ParameterInitializer.zeros.getter(v45);
  type metadata accessor for MLHandActionClassifier.Torso(0);
  Dense.init(unitCount:weightInitializer:biasInitializer:)(v66, v46, v47);
  v48 = v69 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  v49 = v65;
  outlined init with take of MLHandActionClassifier.GraphCNNModel(v65, v69 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model);
  swift_beginAccess(v48, v60, 0, 0);
  outlined init with copy of MLTrainingSessionParameters(v48, v49, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
  v50 = type metadata accessor for GradientClippingMode(0);
  v51 = v63;
  __swift_storeEnumTagSinglePayload(v63, 1, 1, v50);
  v52 = v62;
  *v62 = 981668463;
  LODWORD(v48) = enum case for RegularizationKind.l2(_:);
  v53 = type metadata accessor for RegularizationKind(0);
  (*(*(v53 - 8) + 104))(v52, v48, v53);
  __swift_storeEnumTagSinglePayload(v52, 0, 1, v53);
  v54 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel);
  v55 = v61;
  SGD.init(for:learningRate:momentum:usesNesterovMomentum:gradientClippingMode:regularizationKind:gradientScale:)(v49, 1, v51, v52, v64, v54, 0.0099999998, 0.89999998, 1.0);
  outlined destroy of MLActivityClassifier.ModelParameters(v49, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
  v56 = v69;
  outlined init with take of SGD<MLHandActionClassifier.GraphCNNModel>(v55, v69 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_optimizer);
  return v56;
}

uint64_t _s8CreateML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE03getD10Dictionary4fromSDySSSaySdGGAA11MLDataTableV_tKFZAA20MLActivityClassifierV7TrainerV0C9ContainerC_Tt0B5Tm(void *a1, char a2, double a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  v22 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v4, &protocol witness table for String);
  v19 = a2 & 1;
  outlined copy of Result<_DataTable, Error>(a1, a2);
  LOBYTE(v20) = a2 & 1;
  outlined copy of Result<_DataTable, Error>(a1, a2);
  v5 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(a1, a2 & 1);
  if (v5)
  {
    MLDataTable.Rows.subscript.getter(0);
    specialized RandomAccessCollection<>.index(after:)(0, a1, v19);
    if (v20[2])
    {

      v6 = specialized __RawDictionaryStorage.find<A>(_:)(1937335659, 0xE400000000000000);
      if (v7)
      {
        v8 = *(v20[7] + 8 * v6);

        v9 = CMLSequence.value(at:)(v8);
        if (v3)
        {
          swift_unexpectedError(v3, "CreateML/MLDataTable.Row.swift", 30, 1, 85);
          BUG();
        }

        MLDataValue.init(_:)(v9, a3);
        v20;

        v21;
        if (v21 == 2)
        {
          if (v20[2])
          {

            outlined copy of MLDataValue(a1, v20, 2u);
            v10 = specialized __RawDictionaryStorage.find<A>(_:)(0x7365756C6176, 0xE600000000000000);
            if (v11)
            {
              v12 = *(v20[7] + 8 * v10);

              v13 = CMLSequence.value(at:)(v12);
              MLDataValue.init(_:)(v13, a3);
              v20;

              v21;
              v22;
              outlined consume of MLDataValue(a1, v20, v21);
            }

            else
            {
              v22;

              v20;
            }

            outlined consume of MLDataValue(a1, v20, 2);
          }

          else
          {
            v22;
          }

          v16 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v16, 0, 0);
          *v17 = 0xD00000000000005BLL;
          *(v17 + 8) = " contains string keys" + 0x8000000000000000;
          *(v17 + 16) = 0;
          *(v17 + 32) = 0;
          *(v17 + 48) = 2;
          swift_willThrow();
          outlined consume of MLDataValue(a1, v20, 2);
          goto LABEL_18;
        }

        v22;
        outlined consume of MLDataValue(a1, v20, v21);
      }

      else
      {
        v22;

        v20;
      }
    }

    else
    {
      v22;
    }

    v14 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v14, 0, 0);
    *v15 = 0xD000000000000055;
    *(v15 + 8) = "nd in the checkpoint dictionary" + 0x8000000000000000;
    *(v15 + 16) = 0;
    *(v15 + 32) = 0;
    *(v15 + 48) = 2;
    swift_willThrow();
LABEL_18:

    v20;

    outlined consume of Result<_DataTable, Error>(a1, v19);
    return v22;
  }

  outlined consume of Result<_DataTable, Error>(a1, v19);
  return v22;
}

uint64_t specialized _ModelCheckpoint<>.updateGraph<A>(from:optimizer:checkpointDictionary:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v113 = v3;
  v109 = a3;
  v110 = a2;
  v97 = type metadata accessor for LSTM(0);
  v106 = *(v97 - 8);
  v5 = *(v106 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v100 = &v79;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v98 = &v79;
  v93 = type metadata accessor for Dense(0);
  v105 = *(v93 - 8);
  v10 = *(v105 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v99 = &v79;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v95 = &v79;
  v104 = type metadata accessor for Conv2D(0);
  v94 = *(v104 - 8);
  v15 = *(v94 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v96 = &v79;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v91 = &v79;
  v86 = type metadata accessor for BatchNorm(0);
  v90 = *(v86 - 8);
  v20 = *(v90 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v92 = &v79;
  v23 = alloca(v20);
  v24 = alloca(v20);
  v87 = &v79;
  v25 = *(*(type metadata accessor for MLActivityClassifier.Model(0) - 8) + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v28 = v4 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model;
  swift_beginAccess(v4 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model, v80, 0, 0);
  v29 = v28;
  v30 = 0;
  outlined init with copy of MLTrainingSessionParameters(v29, &v79, type metadata accessor for MLActivityClassifier.Model);
  v108 = v4;
  v31 = specialized _ModelCheckpoint<>.trainableSublayers(model:)(&v79, type metadata accessor for MLActivityClassifier.Model, &lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
  outlined destroy of MLActivityClassifier.ModelParameters(&v79, type metadata accessor for MLActivityClassifier.Model);
  v32 = v31[2];
  v112 = v31;
  v89 = v31 + 4;
  for (i = v32; ; v32 = i)
  {
    if (v30 == v32)
    {
      v103 = 0;
      v102 = 0;
      v101 = 0;
      v33 = v32;
    }

    else
    {
      if (v30 < 0)
      {
        BUG();
      }

      if (v30 >= v112[2])
      {
        BUG();
      }

      v33 = v30 + 1;
      *&v101 = v30;
      outlined init with copy of TabularRegressionTask(&v89[5 * v30], &v101 + 8);
    }

    v34 = *&v102;
    v81[2] = v103;
    v81[1] = v102;
    v81[0] = v101;
    if (!v103)
    {
      return v112;
    }

    v85 = v33;
    v35 = *&v81[0];
    outlined init with take of TabularRegressionTask((v81 + 8), &v101);
    v82 = 0x5F726579616CLL;
    v83 = 0xE600000000000000;
    *&v84 = v35;
    v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    LOBYTE(v35) = v36._object;
    String.append(_:)(v36);
    v35;
    v107 = v82;
    *&v111 = v83;
    outlined init with copy of TabularRegressionTask(&v101, &v82);
    v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Layer);
    v38 = v87;
    v39 = v86;
    if (swift_dynamicCast(v87, &v82, v37, v86, 0))
    {
      v40 = v92;
      v41 = v90;
      v42 = (*(v90 + 32))(v92, v38, v39);
      v43 = v113;
      specialized _ModelCheckpoint<>.restoreLayer<A>(_:optimizer:layerName:checkpointDictionary:)(v40, v110, v107, v111, v109, specialized _ModelCheckpoint<>.parameterKeyPathLookup.getter, v42, v34, specialized _ModelCheckpoint<>.layerStateKeyPathLookup.getter, specialized Dictionary.subscript.getter, &OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model, &lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model, specialized Adam.updateOptimizerState(for:shape:using:name:), specialized Dictionary.subscript.getter);
      v113 = v43;
      if (!v43)
      {
        v111;
        v44 = v40;
        v45 = v39;
LABEL_14:
        (*(v41 + 8))(v44, v45);
        goto LABEL_22;
      }

      v111;
      v71 = v40;
      v72 = v39;
      goto LABEL_26;
    }

    v46 = v91;
    v47 = v104;
    if (swift_dynamicCast(v91, &v82, v37, v104, 0))
    {
      v48 = v47;
      v49 = v96;
      v41 = v94;
      v50 = (*(v94 + 32))(v96, v46, v48);
      v51 = v111;
      v52 = v113;
      specialized _ModelCheckpoint<>.restoreLayer<A>(_:optimizer:layerName:checkpointDictionary:)(v49, v110, v107, v111, v109, v50, v34);
      v113 = v52;
      if (!v52)
      {
        v51;
        v44 = v49;
        v45 = v104;
        goto LABEL_14;
      }

      v51;
      v71 = v49;
      v72 = v104;
LABEL_26:
      (*(v41 + 8))(v71, v72);
      goto LABEL_31;
    }

    v53 = v95;
    v54 = v93;
    if (!swift_dynamicCast(v95, &v82, v37, v93, 0))
    {
      v62 = v98;
      v63 = v97;
      v64 = swift_dynamicCast(v98, &v82, v37, v97, 0);
      v65 = v107;
      if (!v64)
      {
        v111;
        v112;
        *&v84 = 0;
        *(&v84 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(64);
        v73._object = "annels" + 0x8000000000000000;
        v73._countAndFlagsBits = 0xD000000000000020;
        String.append(_:)(v73);
        _print_unlocked<A, B>(_:_:)(&v101, &v84, v37, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
        v73._countAndFlagsBits = 0xD00000000000001ELL;
        String.append(_:)(v73);
        v111 = v84;
        v74 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v74, 0, 0);
        *v75 = v111;
        *(v75 + 16) = 0;
        *(v75 + 32) = 0;
        *(v75 + 48) = 2;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1Tm(&v101);
        return __swift_destroy_boxed_opaque_existential_1Tm(&v82);
      }

      v66 = v63;
      v67 = v100;
      (*(v106 + 32))(v100, v62, v66);
      v68 = v111;
      v69 = v113;
      specialized _ModelCheckpoint<>.restoreGenericLayer<A, B>(_:optimizer:layerName:checkpointDictionary:)(v67, v110, v65, v111, v109);
      v113 = v69;
      if (v69)
      {
        v68;
        v76 = v67;
        v77 = v66;
        v78 = v106;
        goto LABEL_30;
      }

      v68;
      v59 = v67;
      v60 = v66;
      v61 = v106;
      goto LABEL_21;
    }

    v55 = v99;
    v56 = (*(v105 + 32))(v99, v53, v54);
    v57 = v111;
    v58 = v113;
    specialized _ModelCheckpoint<>.restoreLayer<A>(_:optimizer:layerName:checkpointDictionary:)(v55, v110, v107, v111, v109, v56, v34);
    v113 = v58;
    if (v58)
    {
      break;
    }

    v57;
    v59 = v55;
    v60 = v54;
    v61 = v105;
LABEL_21:
    (*(v61 + 8))(v59, v60);
LABEL_22:
    __swift_destroy_boxed_opaque_existential_1Tm(&v101);
    __swift_destroy_boxed_opaque_existential_1Tm(&v82);
    v30 = v85;
  }

  v57;
  v76 = v55;
  v77 = v54;
  v78 = v105;
LABEL_30:
  (*(v78 + 8))(v76, v77);
LABEL_31:
  __swift_destroy_boxed_opaque_existential_1Tm(&v101);
  v112;
  return __swift_destroy_boxed_opaque_existential_1Tm(&v82);
}

{
  v114 = v3;
  v110 = a3;
  v111 = a2;
  v98 = type metadata accessor for LSTM(0);
  v107 = *(v98 - 8);
  v5 = *(v107 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v101 = &v80;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v99 = &v80;
  v94 = type metadata accessor for Dense(0);
  v106 = *(v94 - 8);
  v10 = *(v106 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v100 = &v80;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v96 = &v80;
  v105 = type metadata accessor for Conv2D(0);
  v95 = *(v105 - 8);
  v15 = *(v95 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v97 = &v80;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v92 = &v80;
  v87 = type metadata accessor for BatchNorm(0);
  v91 = *(v87 - 8);
  v20 = *(v91 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v93 = &v80;
  v23 = alloca(v20);
  v24 = alloca(v20);
  v88 = &v80;
  v25 = *(*(type metadata accessor for MLHandActionClassifier.GraphCNNModel(0) - 8) + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v28 = v4 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  swift_beginAccess(v4 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model, v81, 0, 0);
  v29 = v28;
  v30 = 0;
  outlined init with copy of MLTrainingSessionParameters(v29, &v80, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
  v109 = v4;
  v31 = specialized _ModelCheckpoint<>.trainableSublayers(model:)(&v80, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel);
  outlined destroy of MLActivityClassifier.ModelParameters(&v80, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
  v32 = v31[2];
  v113 = v31;
  v90 = v31 + 4;
  for (i = v32; ; v32 = i)
  {
    if (v30 == v32)
    {
      v104 = 0;
      v103 = 0;
      v102 = 0;
      v33 = v32;
    }

    else
    {
      if (v30 < 0)
      {
        BUG();
      }

      if (v30 >= v113[2])
      {
        BUG();
      }

      v33 = v30 + 1;
      *&v102 = v30;
      outlined init with copy of TabularRegressionTask(&v90[5 * v30], &v102 + 8);
    }

    v34 = *&v103;
    v82[2] = v104;
    v82[1] = v103;
    v82[0] = v102;
    if (!v104)
    {
      return v113;
    }

    v86 = v33;
    v35 = *&v82[0];
    outlined init with take of TabularRegressionTask((v82 + 8), &v102);
    v83 = 0x5F726579616CLL;
    v84 = 0xE600000000000000;
    *&v85 = v35;
    v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    LOBYTE(v35) = v36._object;
    String.append(_:)(v36);
    v35;
    v108 = v83;
    *&v112 = v84;
    outlined init with copy of TabularRegressionTask(&v102, &v83);
    v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Layer);
    v38 = v88;
    v39 = v87;
    if (swift_dynamicCast(v88, &v83, v37, v87, 0))
    {
      v40 = v93;
      v41 = v91;
      v42 = (*(v91 + 32))(v93, v38, v39);
      v43 = v114;
      specialized _ModelCheckpoint<>.restoreLayer<A>(_:optimizer:layerName:checkpointDictionary:)(v40, v111, v108, v112, v110, specialized _ModelCheckpoint<>.parameterKeyPathLookup.getter, v42, v34, specialized _ModelCheckpoint<>.layerStateKeyPathLookup.getter, specialized Dictionary.subscript.getter, &OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model, &lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel, specialized SGD.updateOptimizerState(for:shape:using:name:), specialized Dictionary.subscript.getter);
      v114 = v43;
      if (!v43)
      {
        v112;
        v44 = v40;
        v45 = v39;
LABEL_14:
        (*(v41 + 8))(v44, v45);
        goto LABEL_22;
      }

      v112;
      v72 = v40;
      v73 = v39;
      goto LABEL_26;
    }

    v46 = v92;
    v47 = v105;
    if (swift_dynamicCast(v92, &v83, v37, v105, 0))
    {
      v48 = v47;
      v49 = v97;
      v41 = v95;
      v50 = (*(v95 + 32))(v97, v46, v48);
      v51 = v112;
      v52 = v114;
      specialized _ModelCheckpoint<>.restoreLayer<A>(_:optimizer:layerName:checkpointDictionary:)(v49, v111, v108, v112, v110, v50, v34);
      v114 = v52;
      if (!v52)
      {
        v51;
        v44 = v49;
        v45 = v105;
        goto LABEL_14;
      }

      v51;
      v72 = v49;
      v73 = v105;
LABEL_26:
      (*(v41 + 8))(v72, v73);
      goto LABEL_31;
    }

    v53 = v96;
    v54 = v94;
    if (!swift_dynamicCast(v96, &v83, v37, v94, 0))
    {
      v62 = v99;
      v63 = v98;
      v64 = swift_dynamicCast(v99, &v83, v37, v98, 0);
      v65 = v108;
      if (!v64)
      {
        v112;
        v113;
        *&v85 = 0;
        *(&v85 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(64);
        v74._object = "annels" + 0x8000000000000000;
        v74._countAndFlagsBits = 0xD000000000000020;
        String.append(_:)(v74);
        _print_unlocked<A, B>(_:_:)(&v102, &v85, v37, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
        v74._countAndFlagsBits = 0xD00000000000001ELL;
        String.append(_:)(v74);
        v112 = v85;
        v75 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v75, 0, 0);
        *v76 = v112;
        *(v76 + 16) = 0;
        *(v76 + 32) = 0;
        *(v76 + 48) = 2;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1Tm(&v102);
        return __swift_destroy_boxed_opaque_existential_1Tm(&v83);
      }

      v66 = v63;
      v67 = v101;
      v68 = (*(v107 + 32))(v101, v62, v66);
      v69 = v112;
      v70 = v114;
      specialized _ModelCheckpoint<>.restoreGenericLayer<A, B>(_:optimizer:layerName:checkpointDictionary:)(v67, v111, v65, v112, v110, v68, v34);
      v114 = v70;
      if (v70)
      {
        v69;
        v77 = v67;
        v78 = v66;
        v79 = v107;
        goto LABEL_30;
      }

      v69;
      v59 = v67;
      v60 = v66;
      v61 = v107;
      goto LABEL_21;
    }

    v55 = v100;
    v56 = (*(v106 + 32))(v100, v53, v54);
    v57 = v112;
    v58 = v114;
    specialized _ModelCheckpoint<>.restoreLayer<A>(_:optimizer:layerName:checkpointDictionary:)(v55, v111, v108, v112, v110, v56, v34);
    v114 = v58;
    if (v58)
    {
      break;
    }

    v57;
    v59 = v55;
    v60 = v54;
    v61 = v106;
LABEL_21:
    (*(v61 + 8))(v59, v60);
LABEL_22:
    __swift_destroy_boxed_opaque_existential_1Tm(&v102);
    __swift_destroy_boxed_opaque_existential_1Tm(&v83);
    v30 = v86;
  }

  v57;
  v77 = v55;
  v78 = v54;
  v79 = v106;
LABEL_30:
  (*(v79 + 8))(v77, v78);
LABEL_31:
  __swift_destroy_boxed_opaque_existential_1Tm(&v102);
  v113;
  return __swift_destroy_boxed_opaque_existential_1Tm(&v83);
}

uint64_t MLHandActionClassifier.GraphCNN.deinit()
{
  *(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(v0 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_optimizer, &demangling cache variable for type metadata for SGD<MLHandActionClassifier.GraphCNNModel>);
  return v0;
}

uint64_t type metadata completion function for MLHandActionClassifier.GraphCNN(uint64_t a1)
{
  v4[0] = &value witness table for Builtin.BridgeObject + 64;
  v4[1] = &value witness table for Builtin.Int64 + 64;
  v4[2] = &value witness table for Builtin.Int64 + 64;
  result = type metadata accessor for MLHandActionClassifier.GraphCNNModel(319);
  if (v2 <= 0x3F)
  {
    v4[3] = *(result - 8) + 64;
    result = type metadata accessor for SGD<MLHandActionClassifier.GraphCNNModel>(319);
    if (v3 <= 0x3F)
    {
      v4[4] = *(result - 8) + 64;
      result = swift_updateClassMetadata2(a1, 256, 5, v4, a1 + 80);
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for SGD<MLHandActionClassifier.GraphCNNModel>(uint64_t a1)
{
  result = lazy cache variable for type metadata for SGD<MLHandActionClassifier.GraphCNNModel>;
  if (!lazy cache variable for type metadata for SGD<MLHandActionClassifier.GraphCNNModel>)
  {
    v2 = type metadata accessor for MLHandActionClassifier.GraphCNNModel(255);
    v3 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel);
    result = type metadata accessor for SGD(a1, v2, v3);
    if (!v4)
    {
      lazy cache variable for type metadata for SGD<MLHandActionClassifier.GraphCNNModel> = result;
    }
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for MLHandActionClassifier.GraphCNNModel(char *a1, char *a2, int *a3)
{
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v66 = *a2;
    *a1 = *a2;
    v64 = (v66 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = type metadata accessor for BatchNorm(0);
    v81 = *(*(v6 - 8) + 16);
    v80 = v6;
    v81(a1, a2, v6);
    v7 = a3[5];
    v68 = type metadata accessor for Dense(0);
    v69 = *(*(v68 - 8) + 16);
    v69(&a1[v7], &a2[v7], v68);
    v81(&a1[a3[6]], &a2[a3[6]], v6);
    v8 = a3[7];
    v79 = type metadata accessor for Dropout(0);
    v78 = *(*(v79 - 8) + 16);
    v78(&a1[v8], &a2[v8], v79);
    v9 = a3[8];
    v10 = &a1[v9];
    v11 = &a2[v9];
    v71 = a3;
    v12 = type metadata accessor for Conv2D(0);
    v13 = *(*(v12 - 8) + 16);
    v13(v10, v11, v12);
    v14 = v13;
    v74 = v13;
    v15 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
    v16 = *(v15 + 20);
    v10[v16 + 48] = v11[v16 + 48];
    v17 = *&v11[v16];
    v18 = *&v11[v16 + 16];
    *&v10[v16 + 32] = *&v11[v16 + 32];
    *&v10[v16 + 16] = v18;
    *&v10[v16] = v17;
    v19 = v15;
    v75 = v15;
    v14(&v10[*(v15 + 24)], &v11[*(v15 + 24)], v12);
    v81(&v10[*(v19 + 28)], &v11[*(v19 + 28)], v80);
    v78(&v10[*(v19 + 32)], &v11[*(v19 + 32)], v79);
    v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
    v74(&v10[*(v73 + 36)], &v11[*(v73 + 36)], v12);
    v20 = v10;
    v76 = v10;
    v77 = v11;
    v81(&v10[*(v73 + 40)], &v11[*(v73 + 40)], v80);
    v72 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
    v21 = v72[5];
    v22 = &v20[v21];
    v23 = &v77[v21];
    v74(v22, v23, v12);
    v24 = v75;
    v25 = v75[5];
    v22[v25 + 48] = v23[v25 + 48];
    v26 = *&v23[v25];
    v27 = *&v23[v25 + 16];
    *&v22[v25 + 32] = *&v23[v25 + 32];
    *&v22[v25 + 16] = v27;
    *&v22[v25] = v26;
    v74(&v22[v75[6]], &v23[v75[6]], v12);
    v81(&v22[v24[7]], &v23[v24[7]], v80);
    v78(&v22[v24[8]], &v23[v24[8]], v79);
    v74(&v22[*(v73 + 36)], &v23[*(v73 + 36)], v12);
    v81(&v22[*(v73 + 40)], &v23[*(v73 + 40)], v80);
    v28 = v72[6];
    v29 = &v76[v28];
    v30 = &v77[v28];
    v74(v29, v30, v12);
    v31 = v75;
    v32 = v75[5];
    v29[v32 + 48] = v30[v32 + 48];
    v33 = *&v30[v32];
    v34 = *&v30[v32 + 16];
    *&v29[v32 + 32] = *&v30[v32 + 32];
    *&v29[v32 + 16] = v34;
    *&v29[v32] = v33;
    v74(&v29[v75[6]], &v30[v75[6]], v12);
    v81(&v29[v31[7]], &v30[v31[7]], v80);
    v78(&v29[v31[8]], &v30[v31[8]], v79);
    v74(&v29[*(v73 + 36)], &v30[*(v73 + 36)], v12);
    v81(&v29[*(v73 + 40)], &v30[*(v73 + 40)], v80);
    v35 = v72[7];
    v36 = &v76[v35];
    v37 = &v77[v35];
    v74(v36, v37, v12);
    v38 = v75;
    v39 = v75[5];
    v36[v39 + 48] = v37[v39 + 48];
    v40 = *&v37[v39];
    v41 = *&v37[v39 + 16];
    *&v36[v39 + 32] = *&v37[v39 + 32];
    *&v36[v39 + 16] = v41;
    *&v36[v39] = v40;
    v74(&v36[v75[6]], &v37[v75[6]], v12);
    v81(&v36[v38[7]], &v37[v38[7]], v80);
    v78(&v36[v38[8]], &v37[v38[8]], v79);
    v74(&v36[*(v73 + 36)], &v37[*(v73 + 36)], v12);
    v81(&v36[*(v73 + 40)], &v37[*(v73 + 40)], v80);
    v42 = v72[8];
    v43 = &v76[v42];
    v44 = &v77[v42];
    v74(v43, v44, v12);
    v45 = v75;
    v46 = v75[5];
    v43[v46 + 48] = v44[v46 + 48];
    v47 = *&v44[v46];
    v48 = *&v44[v46 + 16];
    *&v43[v46 + 32] = *&v44[v46 + 32];
    *&v43[v46 + 16] = v48;
    *&v43[v46] = v47;
    v74(&v43[v75[6]], &v44[v75[6]], v12);
    v81(&v43[v45[7]], &v44[v45[7]], v80);
    v78(&v43[v45[8]], &v44[v45[8]], v79);
    v49 = v72[9];
    v50 = &v76[v49];
    v51 = &v77[v49];
    v74(v50, v51, v12);
    v52 = v75[5];
    v50[v52 + 48] = v51[v52 + 48];
    v53 = *&v51[v52];
    v54 = *&v51[v52 + 16];
    *&v50[v52 + 32] = *&v51[v52 + 32];
    *&v50[v52 + 16] = v54;
    *&v50[v52] = v53;
    v74(&v50[v45[6]], &v51[v45[6]], v12);
    v81(&v50[v75[7]], &v51[v75[7]], v80);
    v78(&v50[v75[8]], &v51[v75[8]], v79);
    v74(&v50[*(v73 + 36)], &v51[*(v73 + 36)], v12);
    v81(&v50[*(v73 + 40)], &v51[*(v73 + 40)], v80);
    v55 = v72[10];
    v56 = &v76[v55];
    v57 = &v77[v55];
    v74(v56, v57, v12);
    v58 = v75[5];
    v56[v58 + 48] = v57[v58 + 48];
    v59 = *&v57[v58];
    v60 = *&v57[v58 + 16];
    *&v56[v58 + 32] = *&v57[v58 + 32];
    *&v56[v58 + 16] = v60;
    *&v56[v58] = v59;
    v61 = v75;
    v74(&v56[v75[6]], &v57[v75[6]], v12);
    v81(&v56[v61[7]], &v57[v61[7]], v80);
    v78(&v56[v61[8]], &v57[v61[8]], v79);
    v74(&v56[*(v73 + 36)], &v57[*(v73 + 36)], v12);
    v62 = *(v73 + 40);
    v63 = &v57[v62];
    v64 = a1;
    v81(&v56[v62], v63, v80);
    v65 = type metadata accessor for MLHandActionClassifier.Torso(0);
    v69(&v76[*(v65 + 24)], &v77[*(v65 + 24)], v68);
    a1[v71[9]] = a2[v71[9]];
    *&a1[v71[10]] = *&a2[v71[10]];
  }

  return v64;
}

uint64_t destroy for MLHandActionClassifier.GraphCNNModel(uint64_t a1, int *a2)
{
  v2 = type metadata accessor for BatchNorm(0);
  v3 = *(*(v2 - 8) + 8);
  v3(a1, v2);
  v4 = v3;
  v27 = v3;
  v5 = a1 + a2[5];
  v20 = type metadata accessor for Dense(0);
  v21 = *(*(v20 - 8) + 8);
  v21(v5, v20);
  v4(a1 + a2[6], v2);
  v6 = a1 + a2[7];
  v26 = type metadata accessor for Dropout(0);
  v25 = *(*(v26 - 8) + 8);
  v25(v6, v26);
  v7 = a1 + a2[8];
  v8 = type metadata accessor for Conv2D(0);
  v9 = *(*(v8 - 8) + 8);
  v9(v7, v8);
  v10 = v9;
  v28 = v9;
  v11 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v10(v7 + v11[6], v8);
  v27(v7 + v11[7], v2);
  v25(v7 + v11[8], v26);
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v28(v7 + *(v24 + 36), v8);
  v23 = v7;
  v27(v7 + *(v24 + 40), v2);
  v22 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
  v12 = v7 + v22[5];
  v28(v12, v8);
  v28(v12 + v11[6], v8);
  v27(v12 + v11[7], v2);
  v25(v12 + v11[8], v26);
  v28(v12 + *(v24 + 36), v8);
  v27(v12 + *(v24 + 40), v2);
  v13 = v7 + v22[6];
  v28(v13, v8);
  v28(v13 + v11[6], v8);
  v27(v13 + v11[7], v2);
  v25(v13 + v11[8], v26);
  v28(v13 + *(v24 + 36), v8);
  v27(v13 + *(v24 + 40), v2);
  v14 = v23 + v22[7];
  v28(v14, v8);
  v28(v14 + v11[6], v8);
  v27(v14 + v11[7], v2);
  v25(v14 + v11[8], v26);
  v28(v14 + *(v24 + 36), v8);
  v27(v14 + *(v24 + 40), v2);
  v15 = v23 + v22[8];
  v28(v15, v8);
  v28(v15 + v11[6], v8);
  v27(v15 + v11[7], v2);
  v25(v15 + v11[8], v26);
  v16 = v23 + v22[9];
  v28(v16, v8);
  v28(v16 + v11[6], v8);
  v27(v16 + v11[7], v2);
  v25(v16 + v11[8], v26);
  v28(v16 + *(v24 + 36), v8);
  v27(v16 + *(v24 + 40), v2);
  v17 = v23 + v22[10];
  v28(v17, v8);
  v28(v17 + v11[6], v8);
  v27(v17 + v11[7], v2);
  v25(v17 + v11[8], v26);
  v28(v17 + *(v24 + 36), v8);
  v27(v17 + *(v24 + 40), v2);
  v18 = type metadata accessor for MLHandActionClassifier.Torso(0);
  return (v21)(v23 + *(v18 + 24), v20);
}

uint64_t initializeWithCopy for MLHandActionClassifier.GraphCNNModel(uint64_t a1, uint64_t a2, int *a3)
{
  v72 = type metadata accessor for BatchNorm(0);
  v71 = *(*(v72 - 8) + 16);
  v71(a1, a2, v72);
  v4 = a3[5];
  v60 = type metadata accessor for Dense(0);
  v61 = *(*(v60 - 8) + 16);
  v61(a1 + v4, a2 + v4, v60);
  v71(a1 + a3[6], a2 + a3[6], v72);
  v5 = a3[7];
  v62 = a3;
  v69 = type metadata accessor for Dropout(0);
  v70 = *(*(v69 - 8) + 16);
  v70(a1 + v5, a2 + v5, v69);
  v6 = a3[8];
  v7 = v6 + a1;
  v8 = a2 + v6;
  v9 = type metadata accessor for Conv2D(0);
  v10 = *(*(v9 - 8) + 16);
  v10(v7, v8, v9);
  v63 = v10;
  v11 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v12 = *(v11 + 20);
  *(v12 + v7 + 48) = *(v12 + v8 + 48);
  v13 = *(v12 + v8);
  v14 = *(v12 + v8 + 16);
  *(v12 + v7 + 32) = *(v12 + v8 + 32);
  *(v12 + v7 + 16) = v14;
  *(v12 + v7) = v13;
  v15 = v11;
  v10(v7 + *(v11 + 24), v8 + *(v11 + 24), v9);
  v66 = v15;
  v71(v7 + v15[7], v8 + v15[7], v72);
  v70(v7 + v15[8], v8 + v15[8], v69);
  v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v10(v7 + *(v65 + 36), v8 + *(v65 + 36), v9);
  v67 = v7;
  v68 = v8;
  v71(v7 + *(v65 + 40), v8 + *(v65 + 40), v72);
  v64 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
  v16 = v64[5];
  v17 = v16 + v7;
  v18 = v8 + v16;
  v10(v17, v18, v9);
  v19 = v66[5];
  *(v19 + v17 + 48) = *(v19 + v18 + 48);
  v20 = *(v19 + v18);
  v21 = *(v19 + v18 + 16);
  *(v19 + v17 + 32) = *(v19 + v18 + 32);
  *(v19 + v17 + 16) = v21;
  *(v19 + v17) = v20;
  v22 = v66;
  v10(v17 + v66[6], v18 + v66[6], v9);
  v71(v17 + v22[7], v18 + v22[7], v72);
  v70(v17 + v22[8], v18 + v22[8], v69);
  v10(v17 + *(v65 + 36), v18 + *(v65 + 36), v9);
  v71(*(v65 + 40) + v17, *(v65 + 40) + v18, v72);
  v23 = v64[6];
  v24 = v67 + v23;
  v25 = v68 + v23;
  v26 = v10;
  v10(v24, v25, v9);
  v27 = v66;
  v28 = v66[5];
  *(v28 + v24 + 48) = *(v28 + v25 + 48);
  v29 = *(v28 + v25);
  v30 = *(v28 + v25 + 16);
  *(v28 + v24 + 32) = *(v28 + v25 + 32);
  *(v28 + v24 + 16) = v30;
  *(v28 + v24) = v29;
  v26(v24 + v66[6], v25 + v66[6], v9);
  v71(v24 + v27[7], v25 + v27[7], v72);
  v70(v24 + v27[8], v25 + v27[8], v69);
  v63(v24 + *(v65 + 36), v25 + *(v65 + 36), v9);
  v71(*(v65 + 40) + v24, *(v65 + 40) + v25, v72);
  v31 = v64[7];
  v32 = v67 + v31;
  v33 = v68 + v31;
  v63(v32, v33, v9);
  v34 = v66;
  v35 = v66[5];
  *(v35 + v32 + 48) = *(v35 + v33 + 48);
  v36 = *(v35 + v33);
  v37 = *(v35 + v33 + 16);
  *(v35 + v32 + 32) = *(v35 + v33 + 32);
  *(v35 + v32 + 16) = v37;
  *(v35 + v32) = v36;
  v63(v32 + v66[6], v33 + v66[6], v9);
  v71(v32 + v34[7], v33 + v34[7], v72);
  v70(v32 + v34[8], v33 + v34[8], v69);
  v63(v32 + *(v65 + 36), v33 + *(v65 + 36), v9);
  v71(*(v65 + 40) + v32, *(v65 + 40) + v33, v72);
  v38 = v64[8];
  v39 = v67 + v38;
  v40 = v68 + v38;
  v63(v39, v40, v9);
  v41 = v66;
  v42 = v66[5];
  *(v42 + v39 + 48) = *(v42 + v40 + 48);
  v43 = *(v42 + v40);
  v44 = *(v42 + v40 + 16);
  *(v42 + v39 + 32) = *(v42 + v40 + 32);
  *(v42 + v39 + 16) = v44;
  *(v42 + v39) = v43;
  v63(v39 + v66[6], v40 + v66[6], v9);
  v71(v39 + v41[7], v40 + v41[7], v72);
  v70(v41[8] + v39, v41[8] + v40, v69);
  v45 = v64[9];
  v46 = v67 + v45;
  v47 = v68 + v45;
  v63(v46, v47, v9);
  v48 = v66[5];
  *(v48 + v46 + 48) = *(v48 + v47 + 48);
  v49 = *(v48 + v47);
  v50 = *(v48 + v47 + 16);
  *(v48 + v46 + 32) = *(v48 + v47 + 32);
  *(v48 + v46 + 16) = v50;
  *(v48 + v46) = v49;
  v63(v46 + v41[6], v47 + v41[6], v9);
  v71(v46 + v66[7], v47 + v66[7], v72);
  v70(v46 + v66[8], v47 + v66[8], v69);
  v63(v46 + *(v65 + 36), v47 + *(v65 + 36), v9);
  v71(*(v65 + 40) + v46, *(v65 + 40) + v47, v72);
  v51 = v64[10];
  v52 = v67 + v51;
  v53 = v68 + v51;
  v63(v52, v53, v9);
  v54 = v66;
  v55 = v66[5];
  *(v55 + v52 + 48) = *(v55 + v53 + 48);
  v56 = *(v55 + v53);
  v57 = *(v55 + v53 + 16);
  *(v55 + v52 + 32) = *(v55 + v53 + 32);
  *(v55 + v52 + 16) = v57;
  *(v55 + v52) = v56;
  v63(v52 + v66[6], v53 + v66[6], v9);
  v71(v52 + v54[7], v53 + v54[7], v72);
  v70(v52 + v54[8], v53 + v54[8], v69);
  v63(v52 + *(v65 + 36), v53 + *(v65 + 36), v9);
  v71(*(v65 + 40) + v52, *(v65 + 40) + v53, v72);
  v58 = type metadata accessor for MLHandActionClassifier.Torso(0);
  v61(*(v58 + 24) + v67, *(v58 + 24) + v68, v60);
  result = a1;
  *(a1 + v62[9]) = *(a2 + v62[9]);
  *(a1 + v62[10]) = *(a2 + v62[10]);
  return result;
}

uint64_t assignWithCopy for MLHandActionClassifier.GraphCNNModel(uint64_t a1, uint64_t a2, int *a3)
{
  v56 = type metadata accessor for BatchNorm(0);
  v53 = *(*(v56 - 8) + 24);
  v53(a1, a2, v56);
  v4 = a3[5];
  v44 = type metadata accessor for Dense(0);
  v45 = *(*(v44 - 8) + 24);
  v45(a1 + v4, a2 + v4, v44);
  v53(a1 + a3[6], a2 + a3[6], v56);
  v5 = a3[7];
  v46 = a3;
  v51 = type metadata accessor for Dropout(0);
  v52 = *(*(v51 - 8) + 24);
  v52(a1 + v5, a2 + v5, v51);
  v6 = a3[8];
  v7 = v6 + a1;
  v8 = a2 + v6;
  v9 = type metadata accessor for Conv2D(0);
  v10 = *(*(v9 - 8) + 24);
  v55 = v9;
  v10(v7, v8, v9);
  v11 = v10;
  v54 = v10;
  v12 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v13 = *(v12 + 20);
  v14 = v12;
  v49 = v12;
  *(v13 + v7) = *(v13 + v8);
  *(v13 + v7 + 8) = *(v13 + v8 + 8);
  *(v13 + v7 + 16) = *(v13 + v8 + 16);
  *(v13 + v7 + 24) = *(v13 + v8 + 24);
  *(v13 + v7 + 32) = *(v13 + v8 + 32);
  *(v13 + v7 + 40) = *(v13 + v8 + 40);
  *(v13 + v7 + 48) = *(v13 + v8 + 48);
  v11(v7 + *(v12 + 24), v8 + *(v12 + 24), v9);
  v53(v7 + *(v14 + 28), v8 + *(v14 + 28), v56);
  v52(*(v14 + 32) + v7, v8 + *(v14 + 32), v51);
  v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v54(*(v48 + 36) + v7, v8 + *(v48 + 36), v9);
  v50 = v7;
  v53(*(v48 + 40) + v7, v8 + *(v48 + 40), v56);
  v47 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
  v15 = v47[5];
  v16 = v15 + v7;
  v17 = v8 + v15;
  v54(v16, v17, v55);
  v18 = v49[5];
  *(v18 + v16) = *(v18 + v17);
  *(v18 + v16 + 8) = *(v18 + v17 + 8);
  *(v18 + v16 + 16) = *(v18 + v17 + 16);
  *(v18 + v16 + 24) = *(v18 + v17 + 24);
  *(v18 + v16 + 32) = *(v18 + v17 + 32);
  *(v18 + v16 + 40) = *(v18 + v17 + 40);
  *(v18 + v16 + 48) = *(v18 + v17 + 48);
  v54(v16 + v49[6], v17 + v49[6], v55);
  v53(v16 + v49[7], v17 + v49[7], v56);
  v52(v16 + v49[8], v17 + v49[8], v51);
  v54(v16 + *(v48 + 36), v17 + *(v48 + 36), v55);
  v53(*(v48 + 40) + v16, *(v48 + 40) + v17, v56);
  v19 = v47[6];
  v20 = v50 + v19;
  v21 = v8 + v19;
  v54(v20, v21, v55);
  v22 = v49;
  v23 = v49[5];
  *(v23 + v20) = *(v23 + v21);
  *(v23 + v20 + 8) = *(v23 + v21 + 8);
  *(v23 + v20 + 16) = *(v23 + v21 + 16);
  *(v23 + v20 + 24) = *(v23 + v21 + 24);
  *(v23 + v20 + 32) = *(v23 + v21 + 32);
  *(v23 + v20 + 40) = *(v23 + v21 + 40);
  *(v23 + v20 + 48) = *(v23 + v21 + 48);
  v54(v20 + v49[6], v21 + v49[6], v55);
  v53(v20 + v22[7], v21 + v22[7], v56);
  v52(v20 + v22[8], v21 + v22[8], v51);
  v54(v20 + *(v48 + 36), v21 + *(v48 + 36), v55);
  v53(*(v48 + 40) + v20, *(v48 + 40) + v21, v56);
  v24 = v47[7];
  v25 = v50 + v24;
  v26 = v8 + v24;
  v54(v25, v26, v55);
  v27 = v49[5];
  *(v27 + v25) = *(v27 + v26);
  *(v27 + v25 + 8) = *(v27 + v26 + 8);
  *(v27 + v25 + 16) = *(v27 + v26 + 16);
  *(v27 + v25 + 24) = *(v27 + v26 + 24);
  *(v27 + v25 + 32) = *(v27 + v26 + 32);
  *(v27 + v25 + 40) = *(v27 + v26 + 40);
  *(v27 + v25 + 48) = *(v27 + v26 + 48);
  v54(v25 + v49[6], v26 + v49[6], v55);
  v53(v25 + v49[7], v26 + v49[7], v56);
  v52(v25 + v49[8], v26 + v49[8], v51);
  v54(v25 + *(v48 + 36), v26 + *(v48 + 36), v55);
  v53(*(v48 + 40) + v25, *(v48 + 40) + v26, v56);
  v28 = v47[8];
  v29 = v50 + v28;
  v30 = v8 + v28;
  v54(v29, v30, v55);
  v31 = v49;
  v32 = v49[5];
  *(v32 + v29) = *(v32 + v30);
  *(v32 + v29 + 8) = *(v32 + v30 + 8);
  *(v32 + v29 + 16) = *(v32 + v30 + 16);
  *(v32 + v29 + 24) = *(v32 + v30 + 24);
  *(v32 + v29 + 32) = *(v32 + v30 + 32);
  *(v32 + v29 + 40) = *(v32 + v30 + 40);
  *(v32 + v29 + 48) = *(v32 + v30 + 48);
  v54(v29 + v49[6], v30 + v49[6], v55);
  v53(v29 + v31[7], v30 + v31[7], v56);
  v52(v31[8] + v29, v31[8] + v30, v51);
  v33 = v47[9];
  v34 = v50 + v33;
  v35 = v8 + v33;
  v54(v34, v35, v55);
  v36 = v49[5];
  *(v36 + v34) = *(v36 + v35);
  *(v36 + v34 + 8) = *(v36 + v35 + 8);
  *(v36 + v34 + 16) = *(v36 + v35 + 16);
  *(v36 + v34 + 24) = *(v36 + v35 + 24);
  *(v36 + v34 + 32) = *(v36 + v35 + 32);
  *(v36 + v34 + 40) = *(v36 + v35 + 40);
  *(v36 + v34 + 48) = *(v36 + v35 + 48);
  v54(v34 + v31[6], v35 + v31[6], v55);
  v53(v34 + v49[7], v35 + v49[7], v56);
  v52(v34 + v49[8], v35 + v49[8], v51);
  v54(v34 + *(v48 + 36), v35 + *(v48 + 36), v55);
  v53(*(v48 + 40) + v34, *(v48 + 40) + v35, v56);
  v37 = v47[10];
  v38 = v50 + v37;
  v39 = v8 + v37;
  v54(v38, v39, v55);
  v40 = v49[5];
  *(v40 + v38) = *(v40 + v39);
  *(v40 + v38 + 8) = *(v40 + v39 + 8);
  *(v40 + v38 + 16) = *(v40 + v39 + 16);
  *(v40 + v38 + 24) = *(v40 + v39 + 24);
  *(v40 + v38 + 32) = *(v40 + v39 + 32);
  *(v40 + v38 + 40) = *(v40 + v39 + 40);
  *(v40 + v38 + 48) = *(v40 + v39 + 48);
  v41 = v49;
  v54(v38 + v49[6], v39 + v49[6], v55);
  v53(v38 + v41[7], v39 + v41[7], v56);
  v52(v38 + v41[8], v39 + v41[8], v51);
  v54(v38 + *(v48 + 36), v39 + *(v48 + 36), v55);
  v53(*(v48 + 40) + v38, *(v48 + 40) + v39, v56);
  v42 = type metadata accessor for MLHandActionClassifier.Torso(0);
  v45(*(v42 + 24) + v50, *(v42 + 24) + v8, v44);
  result = a1;
  *(a1 + v46[9]) = *(a2 + v46[9]);
  *(a1 + v46[10]) = *(a2 + v46[10]);
  return result;
}

uint64_t initializeWithTake for MLHandActionClassifier.GraphCNNModel(uint64_t a1, uint64_t a2, int *a3)
{
  v72 = type metadata accessor for BatchNorm(0);
  v71 = *(*(v72 - 8) + 32);
  v71(a1, a2, v72);
  v4 = a3[5];
  v60 = type metadata accessor for Dense(0);
  v61 = *(*(v60 - 8) + 32);
  v61(a1 + v4, a2 + v4, v60);
  v71(a1 + a3[6], a2 + a3[6], v72);
  v5 = a3[7];
  v62 = a3;
  v69 = type metadata accessor for Dropout(0);
  v70 = *(*(v69 - 8) + 32);
  v70(a1 + v5, a2 + v5, v69);
  v6 = a3[8];
  v7 = v6 + a1;
  v8 = a2 + v6;
  v9 = type metadata accessor for Conv2D(0);
  v10 = *(*(v9 - 8) + 32);
  v10(v7, v8, v9);
  v63 = v10;
  v11 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v12 = *(v11 + 20);
  *(v12 + v7 + 48) = *(v12 + v8 + 48);
  v13 = *(v12 + v8);
  v14 = *(v12 + v8 + 16);
  *(v12 + v7 + 32) = *(v12 + v8 + 32);
  *(v12 + v7 + 16) = v14;
  *(v12 + v7) = v13;
  v15 = v11;
  v10(v7 + *(v11 + 24), v8 + *(v11 + 24), v9);
  v66 = v15;
  v71(v7 + v15[7], v8 + v15[7], v72);
  v70(v7 + v15[8], v8 + v15[8], v69);
  v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v10(v7 + *(v65 + 36), v8 + *(v65 + 36), v9);
  v67 = v7;
  v68 = v8;
  v71(v7 + *(v65 + 40), v8 + *(v65 + 40), v72);
  v64 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
  v16 = v64[5];
  v17 = v16 + v7;
  v18 = v8 + v16;
  v10(v17, v18, v9);
  v19 = v66[5];
  *(v19 + v17 + 48) = *(v19 + v18 + 48);
  v20 = *(v19 + v18);
  v21 = *(v19 + v18 + 16);
  *(v19 + v17 + 32) = *(v19 + v18 + 32);
  *(v19 + v17 + 16) = v21;
  *(v19 + v17) = v20;
  v22 = v66;
  v10(v17 + v66[6], v18 + v66[6], v9);
  v71(v17 + v22[7], v18 + v22[7], v72);
  v70(v17 + v22[8], v18 + v22[8], v69);
  v10(v17 + *(v65 + 36), v18 + *(v65 + 36), v9);
  v71(*(v65 + 40) + v17, *(v65 + 40) + v18, v72);
  v23 = v64[6];
  v24 = v67 + v23;
  v25 = v68 + v23;
  v26 = v10;
  v10(v24, v25, v9);
  v27 = v66;
  v28 = v66[5];
  *(v28 + v24 + 48) = *(v28 + v25 + 48);
  v29 = *(v28 + v25);
  v30 = *(v28 + v25 + 16);
  *(v28 + v24 + 32) = *(v28 + v25 + 32);
  *(v28 + v24 + 16) = v30;
  *(v28 + v24) = v29;
  v26(v24 + v66[6], v25 + v66[6], v9);
  v71(v24 + v27[7], v25 + v27[7], v72);
  v70(v24 + v27[8], v25 + v27[8], v69);
  v63(v24 + *(v65 + 36), v25 + *(v65 + 36), v9);
  v71(*(v65 + 40) + v24, *(v65 + 40) + v25, v72);
  v31 = v64[7];
  v32 = v67 + v31;
  v33 = v68 + v31;
  v63(v32, v33, v9);
  v34 = v66;
  v35 = v66[5];
  *(v35 + v32 + 48) = *(v35 + v33 + 48);
  v36 = *(v35 + v33);
  v37 = *(v35 + v33 + 16);
  *(v35 + v32 + 32) = *(v35 + v33 + 32);
  *(v35 + v32 + 16) = v37;
  *(v35 + v32) = v36;
  v63(v32 + v66[6], v33 + v66[6], v9);
  v71(v32 + v34[7], v33 + v34[7], v72);
  v70(v32 + v34[8], v33 + v34[8], v69);
  v63(v32 + *(v65 + 36), v33 + *(v65 + 36), v9);
  v71(*(v65 + 40) + v32, *(v65 + 40) + v33, v72);
  v38 = v64[8];
  v39 = v67 + v38;
  v40 = v68 + v38;
  v63(v39, v40, v9);
  v41 = v66;
  v42 = v66[5];
  *(v42 + v39 + 48) = *(v42 + v40 + 48);
  v43 = *(v42 + v40);
  v44 = *(v42 + v40 + 16);
  *(v42 + v39 + 32) = *(v42 + v40 + 32);
  *(v42 + v39 + 16) = v44;
  *(v42 + v39) = v43;
  v63(v39 + v66[6], v40 + v66[6], v9);
  v71(v39 + v41[7], v40 + v41[7], v72);
  v70(v41[8] + v39, v41[8] + v40, v69);
  v45 = v64[9];
  v46 = v67 + v45;
  v47 = v68 + v45;
  v63(v46, v47, v9);
  v48 = v66[5];
  *(v48 + v46 + 48) = *(v48 + v47 + 48);
  v49 = *(v48 + v47);
  v50 = *(v48 + v47 + 16);
  *(v48 + v46 + 32) = *(v48 + v47 + 32);
  *(v48 + v46 + 16) = v50;
  *(v48 + v46) = v49;
  v63(v46 + v41[6], v47 + v41[6], v9);
  v71(v46 + v66[7], v47 + v66[7], v72);
  v70(v46 + v66[8], v47 + v66[8], v69);
  v63(v46 + *(v65 + 36), v47 + *(v65 + 36), v9);
  v71(*(v65 + 40) + v46, *(v65 + 40) + v47, v72);
  v51 = v64[10];
  v52 = v67 + v51;
  v53 = v68 + v51;
  v63(v52, v53, v9);
  v54 = v66;
  v55 = v66[5];
  *(v55 + v52 + 48) = *(v55 + v53 + 48);
  v56 = *(v55 + v53);
  v57 = *(v55 + v53 + 16);
  *(v55 + v52 + 32) = *(v55 + v53 + 32);
  *(v55 + v52 + 16) = v57;
  *(v55 + v52) = v56;
  v63(v52 + v66[6], v53 + v66[6], v9);
  v71(v52 + v54[7], v53 + v54[7], v72);
  v70(v52 + v54[8], v53 + v54[8], v69);
  v63(v52 + *(v65 + 36), v53 + *(v65 + 36), v9);
  v71(*(v65 + 40) + v52, *(v65 + 40) + v53, v72);
  v58 = type metadata accessor for MLHandActionClassifier.Torso(0);
  v61(*(v58 + 24) + v67, *(v58 + 24) + v68, v60);
  result = a1;
  *(a1 + v62[9]) = *(a2 + v62[9]);
  *(a1 + v62[10]) = *(a2 + v62[10]);
  return result;
}

uint64_t assignWithTake for MLHandActionClassifier.GraphCNNModel(uint64_t a1, uint64_t a2, int *a3)
{
  v53 = type metadata accessor for BatchNorm(0);
  v52 = *(*(v53 - 8) + 40);
  v52(a1, a2, v53);
  v4 = a3[5];
  v42 = type metadata accessor for Dense(0);
  v43 = *(*(v42 - 8) + 40);
  v43(a1 + v4, a2 + v4, v42);
  v52(a1 + a3[6], a2 + a3[6], v53);
  v5 = a3[7];
  v44 = a3;
  v48 = type metadata accessor for Dropout(0);
  v49 = *(*(v48 - 8) + 40);
  v49(a1 + v5, a2 + v5, v48);
  v6 = a3[8];
  v7 = a1 + v6;
  v8 = a2 + v6;
  v50 = type metadata accessor for Conv2D(0);
  v9 = *(*(v50 - 8) + 40);
  v9(v7, v8, v50);
  v51 = v9;
  v10 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v11 = *(v10 + 20);
  *(v11 + v7) = *(v11 + v8);
  *(v11 + v7 + 16) = *(v11 + v8 + 16);
  *(v11 + v7 + 32) = *(v11 + v8 + 32);
  *(v11 + v7 + 48) = *(v11 + v8 + 48);
  v12 = v10;
  v9(*(v10 + 24) + v7, v8 + *(v10 + 24), v50);
  v45 = v12;
  v52(v12[7] + v7, v8 + v12[7], v53);
  v49(v12[8] + v7, v8 + v12[8], v48);
  v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v9(*(v47 + 36) + v7, v8 + *(v47 + 36), v50);
  v52(*(v47 + 40) + v7, v8 + *(v47 + 40), v53);
  v46 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
  v13 = v46[5];
  v14 = v13 + v7;
  v15 = v8 + v13;
  v9(v14, v15, v50);
  v16 = v45;
  v17 = v45[5];
  *(v17 + v14) = *(v17 + v15);
  *(v17 + v14 + 16) = *(v17 + v15 + 16);
  *(v17 + v14 + 32) = *(v17 + v15 + 32);
  *(v17 + v14 + 48) = *(v17 + v15 + 48);
  v51(v14 + v45[6], v15 + v45[6], v50);
  v52(v14 + v16[7], v15 + v16[7], v53);
  v49(v14 + v16[8], v15 + v16[8], v48);
  v51(v14 + *(v47 + 36), v15 + *(v47 + 36), v50);
  v52(*(v47 + 40) + v14, *(v47 + 40) + v15, v53);
  v18 = v46[6];
  v19 = v7 + v18;
  v20 = v8 + v18;
  v51(v19, v20, v50);
  v21 = v45[5];
  *(v21 + v19) = *(v21 + v20);
  *(v21 + v19 + 16) = *(v21 + v20 + 16);
  *(v21 + v19 + 32) = *(v21 + v20 + 32);
  *(v21 + v19 + 48) = *(v21 + v20 + 48);
  v51(v19 + v45[6], v20 + v45[6], v50);
  v52(v19 + v45[7], v20 + v45[7], v53);
  v49(v19 + v45[8], v20 + v45[8], v48);
  v51(v19 + *(v47 + 36), v20 + *(v47 + 36), v50);
  v52(*(v47 + 40) + v19, *(v47 + 40) + v20, v53);
  v22 = v46[7];
  v23 = v7 + v22;
  v24 = v8 + v22;
  v51(v23, v24, v50);
  v25 = v45;
  v26 = v45[5];
  *(v26 + v23) = *(v26 + v24);
  *(v26 + v23 + 16) = *(v26 + v24 + 16);
  *(v26 + v23 + 32) = *(v26 + v24 + 32);
  *(v26 + v23 + 48) = *(v26 + v24 + 48);
  v51(v23 + v45[6], v24 + v45[6], v50);
  v52(v23 + v25[7], v24 + v25[7], v53);
  v49(v23 + v25[8], v24 + v25[8], v48);
  v51(v23 + *(v47 + 36), v24 + *(v47 + 36), v50);
  v52(*(v47 + 40) + v23, *(v47 + 40) + v24, v53);
  v27 = v46[8];
  v28 = v7 + v27;
  v29 = v8 + v27;
  v51(v28, v29, v50);
  v30 = v45;
  v31 = v45[5];
  *(v31 + v28) = *(v31 + v29);
  *(v31 + v28 + 16) = *(v31 + v29 + 16);
  *(v31 + v28 + 32) = *(v31 + v29 + 32);
  *(v31 + v28 + 48) = *(v31 + v29 + 48);
  v51(v28 + v45[6], v29 + v45[6], v50);
  v52(v28 + v30[7], v29 + v30[7], v53);
  v49(v30[8] + v28, v30[8] + v29, v48);
  v32 = v46[9];
  v33 = v7 + v32;
  v34 = v8 + v32;
  v51(v33, v34, v50);
  v35 = v45[5];
  *(v35 + v33) = *(v35 + v34);
  *(v35 + v33 + 16) = *(v35 + v34 + 16);
  *(v35 + v33 + 32) = *(v35 + v34 + 32);
  *(v35 + v33 + 48) = *(v35 + v34 + 48);
  v51(v33 + v30[6], v34 + v30[6], v50);
  v52(v33 + v30[7], v34 + v30[7], v53);
  v49(v33 + v30[8], v34 + v30[8], v48);
  v51(v33 + *(v47 + 36), v34 + *(v47 + 36), v50);
  v52(*(v47 + 40) + v33, *(v47 + 40) + v34, v53);
  v36 = v46[10];
  v37 = v7 + v36;
  v38 = v8 + v36;
  v51(v37, v38, v50);
  v39 = v45[5];
  *(v39 + v37) = *(v39 + v38);
  *(v39 + v37 + 16) = *(v39 + v38 + 16);
  *(v39 + v37 + 32) = *(v39 + v38 + 32);
  *(v39 + v37 + 48) = *(v39 + v38 + 48);
  v51(v37 + v30[6], v38 + v30[6], v50);
  v52(v37 + v30[7], v38 + v30[7], v53);
  v49(v37 + v30[8], v38 + v30[8], v48);
  v51(v37 + *(v47 + 36), v38 + *(v47 + 36), v50);
  v52(*(v47 + 40) + v37, *(v47 + 40) + v38, v53);
  v40 = type metadata accessor for MLHandActionClassifier.Torso(0);
  v43(*(v40 + 24) + v7, *(v40 + 24) + v8, v42);
  result = a1;
  *(a1 + v44[9]) = *(a2 + v44[9]);
  *(a1 + v44[10]) = *(a2 + v44[10]);
  return result;
}

uint64_t sub_1C752B(uint64_t a1, unsigned int a2, int *a3)
{
  v4 = a1;
  v5 = type metadata accessor for BatchNorm(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  v5 = type metadata accessor for Dense(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v6 = a3[5];
LABEL_8:
    v4 = v6 + a1;
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  v5 = type metadata accessor for Dropout(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v6 = a3[7];
    goto LABEL_8;
  }

  v7 = 0;
  v5 = type metadata accessor for MLHandActionClassifier.Torso(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v6 = a3[8];
    goto LABEL_8;
  }

  v9 = *(a1 + a3[9]);
  if (v9 >= 2u)
  {
    return ((v9 + 2147483646) & 0x7FFFFFFFu) + 1;
  }

  return v7;
}

uint64_t sub_1C75F6(uint64_t a1, unsigned int a2, int a3, int *a4)
{
  v6 = a1;
  v7 = type metadata accessor for BatchNorm(0);
  if (*(*(v7 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
  }

  v7 = type metadata accessor for Dense(0);
  if (*(*(v7 - 8) + 84) == a3)
  {
    v8 = a4[5];
LABEL_8:
    v6 = v8 + a1;
    return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
  }

  v7 = type metadata accessor for Dropout(0);
  if (*(*(v7 - 8) + 84) == a3)
  {
    v8 = a4[7];
    goto LABEL_8;
  }

  v7 = type metadata accessor for MLHandActionClassifier.Torso(0);
  if (*(*(v7 - 8) + 84) == a3)
  {
    v8 = a4[8];
    goto LABEL_8;
  }

  result = a4[9];
  *(a1 + result) = a2 + 1;
  return result;
}

uint64_t type metadata completion function for MLHandActionClassifier.GraphCNNModel(uint64_t a1)
{
  result = type metadata accessor for BatchNorm(319);
  if (v2 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    v7[0] = v3;
    result = type metadata accessor for Dense(319);
    if (v4 <= 0x3F)
    {
      v7[1] = *(result - 8) + 64;
      v7[2] = v3;
      result = type metadata accessor for Dropout(319);
      if (v5 <= 0x3F)
      {
        v7[3] = *(result - 8) + 64;
        result = type metadata accessor for MLHandActionClassifier.Torso(319);
        if (v6 <= 0x3F)
        {
          v7[4] = *(result - 8) + 64;
          v7[5] = &unk_344A60;
          v7[6] = &value witness table for Builtin.Int64 + 64;
          swift_initStructMetadata(a1, 256, 7, v7, a1 + 16);
          return 0;
        }
      }
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLHandActionClassifier.Torso(void *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v54 = *a2;
    *v3 = *a2;
    v3 = (v54 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = type metadata accessor for Conv2D(0);
    v6 = *(*(v5 - 8) + 16);
    v6(a1, a2, v5);
    v63 = v6;
    v7 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
    v8 = *(v7 + 20);
    *(a1 + v8 + 48) = a2[v8 + 48];
    v9 = *&a2[v8];
    v10 = *&a2[v8 + 16];
    *(a1 + v8 + 32) = *&a2[v8 + 32];
    *(a1 + v8 + 16) = v10;
    *(a1 + v8) = v9;
    v11 = v7;
    v6(a1 + *(v7 + 24), &a2[*(v7 + 24)], v5);
    v12 = v11[7];
    v61 = type metadata accessor for BatchNorm(0);
    v62 = *(*(v61 - 8) + 16);
    v62(a1 + v12, &a2[v12], v61);
    v13 = v11[8];
    v60 = type metadata accessor for Dropout(0);
    v59 = *(*(v60 - 8) + 16);
    v59(a1 + v13, &a2[v13], v60);
    v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
    v6(a1 + *(v58 + 36), &a2[*(v58 + 36)], v5);
    v62(a1 + *(v58 + 40), &a2[*(v58 + 40)], v61);
    v57 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
    v14 = v57[5];
    v15 = a1 + v14;
    v16 = &a2[v14];
    v63(v15, v16, v5);
    v17 = v11[5];
    v15[v17 + 48] = v16[v17 + 48];
    v18 = *&v16[v17];
    v19 = *&v16[v17 + 16];
    *&v15[v17 + 32] = *&v16[v17 + 32];
    *&v15[v17 + 16] = v19;
    *&v15[v17] = v18;
    v63(&v15[v11[6]], &v16[v11[6]], v5);
    v62(&v15[v11[7]], &v16[v11[7]], v61);
    v59(&v15[v11[8]], &v16[v11[8]], v60);
    v63(&v15[*(v58 + 36)], &v16[*(v58 + 36)], v5);
    v62(&v15[*(v58 + 40)], &v16[*(v58 + 40)], v61);
    v20 = v57[6];
    v21 = a1 + v20;
    v22 = &a2[v20];
    v63(v21, v22, v5);
    v23 = v11[5];
    v21[v23 + 48] = v22[v23 + 48];
    v24 = *&v22[v23];
    v25 = *&v22[v23 + 16];
    *&v21[v23 + 32] = *&v22[v23 + 32];
    *&v21[v23 + 16] = v25;
    *&v21[v23] = v24;
    v63(&v21[v11[6]], &v22[v11[6]], v5);
    v62(&v21[v11[7]], &v22[v11[7]], v61);
    v59(&v21[v11[8]], &v22[v11[8]], v60);
    v63(&v21[*(v58 + 36)], &v22[*(v58 + 36)], v5);
    v62(&v21[*(v58 + 40)], &v22[*(v58 + 40)], v61);
    v26 = v57[7];
    v27 = a1 + v26;
    v28 = &a2[v26];
    v63(v27, v28, v5);
    v29 = v11[5];
    v27[v29 + 48] = v28[v29 + 48];
    v30 = *&v28[v29];
    v31 = *&v28[v29 + 16];
    *&v27[v29 + 32] = *&v28[v29 + 32];
    *&v27[v29 + 16] = v31;
    *&v27[v29] = v30;
    v63(&v27[v11[6]], &v28[v11[6]], v5);
    v62(&v27[v11[7]], &v28[v11[7]], v61);
    v59(&v27[v11[8]], &v28[v11[8]], v60);
    v63(&v27[*(v58 + 36)], &v28[*(v58 + 36)], v5);
    v62(&v27[*(v58 + 40)], &v28[*(v58 + 40)], v61);
    v32 = v57[8];
    v33 = a1 + v32;
    v34 = &a2[v32];
    v63(v33, v34, v5);
    v35 = v11[5];
    v33[v35 + 48] = v34[v35 + 48];
    v36 = *&v34[v35];
    v37 = *&v34[v35 + 16];
    *&v33[v35 + 32] = *&v34[v35 + 32];
    *&v33[v35 + 16] = v37;
    *&v33[v35] = v36;
    v63(&v33[v11[6]], &v34[v11[6]], v5);
    v62(&v33[v11[7]], &v34[v11[7]], v61);
    v59(&v33[v11[8]], &v34[v11[8]], v60);
    v38 = v57[9];
    v39 = a1 + v38;
    v40 = &a2[v38];
    v63(v39, v40, v5);
    v41 = v11[5];
    v39[v41 + 48] = v40[v41 + 48];
    v42 = *&v40[v41];
    v43 = *&v40[v41 + 16];
    *&v39[v41 + 32] = *&v40[v41 + 32];
    *&v39[v41 + 16] = v43;
    *&v39[v41] = v42;
    v63(&v39[v11[6]], &v40[v11[6]], v5);
    v62(&v39[v11[7]], &v40[v11[7]], v61);
    v59(&v39[v11[8]], &v40[v11[8]], v60);
    v63(&v39[*(v58 + 36)], &v40[*(v58 + 36)], v5);
    v62(&v39[*(v58 + 40)], &v40[*(v58 + 40)], v61);
    v44 = v57[10];
    v45 = a1 + v44;
    v46 = &a2[v44];
    v63(v45, v46, v5);
    v47 = v11[5];
    v45[v47 + 48] = v46[v47 + 48];
    v48 = *&v46[v47];
    v49 = *&v46[v47 + 16];
    *&v45[v47 + 32] = *&v46[v47 + 32];
    *&v45[v47 + 16] = v49;
    *&v45[v47] = v48;
    v63(&v45[v11[6]], &v46[v11[6]], v5);
    v62(&v45[v11[7]], &v46[v11[7]], v61);
    v59(&v45[v11[8]], &v46[v11[8]], v60);
    v63(&v45[*(v58 + 36)], &v46[*(v58 + 36)], v5);
    v62(&v45[*(v58 + 40)], &v46[*(v58 + 40)], v61);
    v50 = *(a3 + 24);
    v51 = a1 + v50;
    v52 = &a2[v50];
    v53 = type metadata accessor for Dense(0);
    (*(*(v53 - 8) + 16))(v51, v52, v53);
  }

  return v3;
}

uint64_t destroy for MLHandActionClassifier.Torso(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Conv2D(0);
  v3 = *(*(v2 - 8) + 8);
  v24 = v2;
  v3(a1, v2);
  v23 = v3;
  v4 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v3(a1 + *(v4 + 24), v2);
  v5 = v4;
  v18 = v4;
  v6 = a1 + *(v4 + 28);
  v7 = type metadata accessor for BatchNorm(0);
  v25 = *(*(v7 - 8) + 8);
  v25(v6, v7);
  v8 = a1 + *(v5 + 32);
  v22 = type metadata accessor for Dropout(0);
  v19 = *(*(v22 - 8) + 8);
  v19(v8, v22);
  v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v23(a1 + *(v21 + 36), v24);
  v25(a1 + *(v21 + 40), v7);
  v20 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
  v9 = a1 + v20[5];
  v23(v9, v24);
  v23(v9 + v18[6], v24);
  v25(v9 + v18[7], v7);
  v19(v9 + v18[8], v22);
  v23(v9 + *(v21 + 36), v24);
  v25(v9 + *(v21 + 40), v7);
  v10 = a1 + v20[6];
  v23(v10, v24);
  v23(v10 + v18[6], v24);
  v25(v10 + v18[7], v7);
  v19(v10 + v18[8], v22);
  v23(v10 + *(v21 + 36), v24);
  v25(v10 + *(v21 + 40), v7);
  v11 = a1 + v20[7];
  v23(v11, v24);
  v23(v11 + v18[6], v24);
  v25(v11 + v18[7], v7);
  v19(v11 + v18[8], v22);
  v23(v11 + *(v21 + 36), v24);
  v25(v11 + *(v21 + 40), v7);
  v12 = a1 + v20[8];
  v23(v12, v24);
  v23(v12 + v18[6], v24);
  v25(v12 + v18[7], v7);
  v19(v12 + v18[8], v22);
  v13 = a1 + v20[9];
  v23(v13, v24);
  v23(v13 + v18[6], v24);
  v25(v13 + v18[7], v7);
  v19(v13 + v18[8], v22);
  v23(v13 + *(v21 + 36), v24);
  v25(v13 + *(v21 + 40), v7);
  v14 = a1 + v20[10];
  v23(v14, v24);
  v23(v14 + v18[6], v24);
  v25(v14 + v18[7], v7);
  v19(v14 + v18[8], v22);
  v23(v14 + *(v21 + 36), v24);
  v25(v14 + *(v21 + 40), v7);
  v15 = a1 + *(a2 + 24);
  v16 = type metadata accessor for Dense(0);
  return (*(*(v16 - 8) + 8))(v15, v16);
}

uint64_t initializeWithCopy for MLHandActionClassifier.Torso(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = type metadata accessor for Conv2D(0);
  v3 = *(*(v61 - 8) + 16);
  v3(a1, a2, v61);
  v58 = v3;
  v4 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v5 = *(v4 + 20);
  *(a1 + v5 + 48) = *(a2 + v5 + 48);
  v6 = *(a2 + v5);
  v7 = *(a2 + v5 + 16);
  *(a1 + v5 + 32) = *(a2 + v5 + 32);
  *(a1 + v5 + 16) = v7;
  *(a1 + v5) = v6;
  v8 = v4;
  v3(a1 + *(v4 + 24), a2 + *(v4 + 24), v61);
  v9 = v8[7];
  v59 = type metadata accessor for BatchNorm(0);
  v60 = *(*(v59 - 8) + 16);
  v60(a1 + v9, a2 + v9, v59);
  v10 = v8[8];
  v56 = type metadata accessor for Dropout(0);
  v57 = *(*(v56 - 8) + 16);
  v57(a1 + v10, a2 + v10, v56);
  v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v3(a1 + *(v55 + 36), a2 + *(v55 + 36), v61);
  v60(a1 + *(v55 + 40), a2 + *(v55 + 40), v59);
  v54 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
  v11 = v54[5];
  v12 = a1 + v11;
  v13 = a2 + v11;
  v3(v12, v13, v61);
  v14 = v8[5];
  *(v14 + v12 + 48) = *(v14 + v13 + 48);
  v15 = *(v14 + v13);
  v16 = *(v14 + v13 + 16);
  *(v14 + v12 + 32) = *(v14 + v13 + 32);
  *(v14 + v12 + 16) = v16;
  *(v14 + v12) = v15;
  v3(v12 + v8[6], v13 + v8[6], v61);
  v60(v12 + v8[7], v13 + v8[7], v59);
  v57(v12 + v8[8], v13 + v8[8], v56);
  v3(v12 + *(v55 + 36), v13 + *(v55 + 36), v61);
  v60(*(v55 + 40) + v12, *(v55 + 40) + v13, v59);
  v17 = v54[6];
  v18 = a1 + v17;
  v19 = a2 + v17;
  v3(v18, v19, v61);
  v20 = v8[5];
  *(v20 + v18 + 48) = *(v20 + v19 + 48);
  v21 = *(v20 + v19);
  v22 = *(v20 + v19 + 16);
  *(v20 + v18 + 32) = *(v20 + v19 + 32);
  *(v20 + v18 + 16) = v22;
  *(v20 + v18) = v21;
  v3(v18 + v8[6], v19 + v8[6], v61);
  v60(v18 + v8[7], v19 + v8[7], v59);
  v57(v18 + v8[8], v19 + v8[8], v56);
  v3(v18 + *(v55 + 36), v19 + *(v55 + 36), v61);
  v60(*(v55 + 40) + v18, *(v55 + 40) + v19, v59);
  v23 = v54[7];
  v24 = a1 + v23;
  v25 = a2 + v23;
  v3(v24, v25, v61);
  v26 = v8[5];
  *(v26 + v24 + 48) = *(v26 + v25 + 48);
  v27 = *(v26 + v25);
  v28 = *(v26 + v25 + 16);
  *(v26 + v24 + 32) = *(v26 + v25 + 32);
  *(v26 + v24 + 16) = v28;
  *(v26 + v24) = v27;
  v3(v24 + v8[6], v25 + v8[6], v61);
  v60(v24 + v8[7], v25 + v8[7], v59);
  v57(v24 + v8[8], v25 + v8[8], v56);
  v3(v24 + *(v55 + 36), v25 + *(v55 + 36), v61);
  v60(*(v55 + 40) + v24, *(v55 + 40) + v25, v59);
  v29 = v54[8];
  v30 = a1 + v29;
  v31 = a2 + v29;
  v3(v30, v31, v61);
  v32 = v8[5];
  *(v32 + v30 + 48) = *(v32 + v31 + 48);
  v33 = *(v32 + v31);
  v34 = *(v32 + v31 + 16);
  *(v32 + v30 + 32) = *(v32 + v31 + 32);
  *(v32 + v30 + 16) = v34;
  *(v32 + v30) = v33;
  v3(v30 + v8[6], v31 + v8[6], v61);
  v60(v30 + v8[7], v31 + v8[7], v59);
  v57(v8[8] + v30, v8[8] + v31, v56);
  v35 = v54[9];
  v36 = a1 + v35;
  v37 = a2 + v35;
  v3(v36, v37, v61);
  v38 = v8[5];
  *(v38 + v36 + 48) = *(v38 + v37 + 48);
  v39 = *(v38 + v37);
  v40 = *(v38 + v37 + 16);
  *(v38 + v36 + 32) = *(v38 + v37 + 32);
  *(v38 + v36 + 16) = v40;
  *(v38 + v36) = v39;
  v3(v36 + v8[6], v37 + v8[6], v61);
  v60(v36 + v8[7], v37 + v8[7], v59);
  v57(v36 + v8[8], v37 + v8[8], v56);
  v3(v36 + *(v55 + 36), v37 + *(v55 + 36), v61);
  v60(*(v55 + 40) + v36, *(v55 + 40) + v37, v59);
  v41 = v54[10];
  v42 = a1 + v41;
  v43 = a2 + v41;
  v3(v42, v43, v61);
  v44 = v8;
  v45 = v8[5];
  *(v45 + v42 + 48) = *(v45 + v43 + 48);
  v46 = *(v45 + v43);
  v47 = *(v45 + v43 + 16);
  *(v45 + v42 + 32) = *(v45 + v43 + 32);
  *(v45 + v42 + 16) = v47;
  *(v45 + v42) = v46;
  v58(v42 + v44[6], v43 + v44[6], v61);
  v60(v42 + v44[7], v43 + v44[7], v59);
  v57(v42 + v44[8], v43 + v44[8], v56);
  v58(v42 + *(v55 + 36), v43 + *(v55 + 36), v61);
  v60(*(v55 + 40) + v42, *(v55 + 40) + v43, v59);
  v48 = *(a3 + 24);
  v49 = a1 + v48;
  v50 = v48 + a2;
  v51 = type metadata accessor for Dense(0);
  (*(*(v51 - 8) + 16))(v49, v50, v51);
  return a1;
}

uint64_t assignWithCopy for MLHandActionClassifier.Torso(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Conv2D(0);
  v49 = *(*(v4 - 8) + 24);
  v50 = v4;
  v49(a1, a2, v4);
  v5 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v6 = *(v5 + 20);
  *(a1 + v6) = *(a2 + v6);
  *(a1 + v6 + 8) = *(a2 + v6 + 8);
  *(a1 + v6 + 16) = *(a2 + v6 + 16);
  *(a1 + v6 + 24) = *(a2 + v6 + 24);
  *(a1 + v6 + 32) = *(a2 + v6 + 32);
  *(a1 + v6 + 40) = *(a2 + v6 + 40);
  *(a1 + v6 + 48) = *(a2 + v6 + 48);
  v7 = v5;
  v49(a1 + *(v5 + 24), a2 + *(v5 + 24), v4);
  v8 = v7[7];
  v46 = v7;
  v51 = type metadata accessor for BatchNorm(0);
  v52 = *(*(v51 - 8) + 24);
  v52(a1 + v8, a2 + v8, v51);
  v9 = v7[8];
  v48 = type metadata accessor for Dropout(0);
  v47 = *(*(v48 - 8) + 24);
  v47(v9 + a1, a2 + v9, v48);
  v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v49(a1 + *(v45 + 36), a2 + *(v45 + 36), v4);
  v52(a1 + *(v45 + 40), a2 + *(v45 + 40), v51);
  v44 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
  v10 = v44[5];
  v11 = a1 + v10;
  v12 = a2 + v10;
  v49(v11, v12, v4);
  v13 = v7;
  v14 = v7[5];
  *(v14 + v11) = *(v14 + v12);
  *(v14 + v11 + 8) = *(v14 + v12 + 8);
  *(v14 + v11 + 16) = *(v14 + v12 + 16);
  *(v14 + v11 + 24) = *(v14 + v12 + 24);
  *(v14 + v11 + 32) = *(v14 + v12 + 32);
  *(v14 + v11 + 40) = *(v14 + v12 + 40);
  *(v14 + v11 + 48) = *(v14 + v12 + 48);
  v49(v11 + v13[6], v12 + v13[6], v50);
  v52(v11 + v13[7], v12 + v13[7], v51);
  v47(v11 + v13[8], v12 + v13[8], v48);
  v49(v11 + *(v45 + 36), v12 + *(v45 + 36), v50);
  v52(*(v45 + 40) + v11, *(v45 + 40) + v12, v51);
  v15 = v44[6];
  v16 = a1 + v15;
  v17 = a2 + v15;
  v49(v16, v17, v50);
  v18 = v7[5];
  *(v18 + v16) = *(v18 + v17);
  *(v18 + v16 + 8) = *(v18 + v17 + 8);
  *(v18 + v16 + 16) = *(v18 + v17 + 16);
  *(v18 + v16 + 24) = *(v18 + v17 + 24);
  *(v18 + v16 + 32) = *(v18 + v17 + 32);
  *(v18 + v16 + 40) = *(v18 + v17 + 40);
  *(v18 + v16 + 48) = *(v18 + v17 + 48);
  v49(v16 + v46[6], v17 + v46[6], v50);
  v52(v16 + v13[7], v17 + v13[7], v51);
  v47(v16 + v13[8], v17 + v13[8], v48);
  v49(v16 + *(v45 + 36), v17 + *(v45 + 36), v50);
  v52(*(v45 + 40) + v16, *(v45 + 40) + v17, v51);
  v19 = v44[7];
  v20 = a1 + v19;
  v21 = a2 + v19;
  v49(v20, v21, v50);
  v22 = v7;
  v23 = v7[5];
  *(v23 + v20) = *(v23 + v21);
  *(v23 + v20 + 8) = *(v23 + v21 + 8);
  *(v23 + v20 + 16) = *(v23 + v21 + 16);
  *(v23 + v20 + 24) = *(v23 + v21 + 24);
  *(v23 + v20 + 32) = *(v23 + v21 + 32);
  *(v23 + v20 + 40) = *(v23 + v21 + 40);
  *(v23 + v20 + 48) = *(v23 + v21 + 48);
  v49(v20 + v46[6], v21 + v46[6], v50);
  v52(v20 + v22[7], v21 + v22[7], v51);
  v47(v20 + v22[8], v21 + v22[8], v48);
  v49(v20 + *(v45 + 36), v21 + *(v45 + 36), v50);
  v52(*(v45 + 40) + v20, *(v45 + 40) + v21, v51);
  v24 = v44[8];
  v25 = a1 + v24;
  v26 = a2 + v24;
  v49(v25, v26, v50);
  v27 = v7;
  v28 = v7[5];
  *(v28 + v25) = *(v28 + v26);
  *(v28 + v25 + 8) = *(v28 + v26 + 8);
  *(v28 + v25 + 16) = *(v28 + v26 + 16);
  *(v28 + v25 + 24) = *(v28 + v26 + 24);
  *(v28 + v25 + 32) = *(v28 + v26 + 32);
  *(v28 + v25 + 40) = *(v28 + v26 + 40);
  *(v28 + v25 + 48) = *(v28 + v26 + 48);
  v49(v25 + v46[6], v26 + v46[6], v50);
  v52(v25 + v27[7], v26 + v27[7], v51);
  v47(v27[8] + v25, v27[8] + v26, v48);
  v29 = v44[9];
  v30 = a1 + v29;
  v31 = a2 + v29;
  v49(v30, v31, v50);
  v32 = v7[5];
  *(v32 + v30) = *(v32 + v31);
  *(v32 + v30 + 8) = *(v32 + v31 + 8);
  *(v32 + v30 + 16) = *(v32 + v31 + 16);
  *(v32 + v30 + 24) = *(v32 + v31 + 24);
  *(v32 + v30 + 32) = *(v32 + v31 + 32);
  *(v32 + v30 + 40) = *(v32 + v31 + 40);
  *(v32 + v30 + 48) = *(v32 + v31 + 48);
  v49(v30 + v27[6], v31 + v27[6], v50);
  v52(v30 + v7[7], v31 + v7[7], v51);
  v47(v30 + v7[8], v31 + v7[8], v48);
  v49(v30 + *(v45 + 36), v31 + *(v45 + 36), v50);
  v52(*(v45 + 40) + v30, *(v45 + 40) + v31, v51);
  v33 = v44[10];
  v34 = a1 + v33;
  v35 = a2 + v33;
  v49(v34, v35, v50);
  v36 = v7[5];
  *(v36 + v34) = *(v36 + v35);
  *(v36 + v34 + 8) = *(v36 + v35 + 8);
  *(v36 + v34 + 16) = *(v36 + v35 + 16);
  *(v36 + v34 + 24) = *(v36 + v35 + 24);
  *(v36 + v34 + 32) = *(v36 + v35 + 32);
  *(v36 + v34 + 40) = *(v36 + v35 + 40);
  *(v36 + v34 + 48) = *(v36 + v35 + 48);
  v37 = v7;
  v49(v34 + v46[6], v35 + v46[6], v50);
  v52(v34 + v37[7], v35 + v37[7], v51);
  v47(v34 + v37[8], v35 + v37[8], v48);
  v49(v34 + *(v45 + 36), v35 + *(v45 + 36), v50);
  v52(*(v45 + 40) + v34, *(v45 + 40) + v35, v51);
  v38 = *(a3 + 24);
  v39 = a1 + v38;
  v40 = v38 + a2;
  v41 = type metadata accessor for Dense(0);
  (*(*(v41 - 8) + 24))(v39, v40, v41);
  return a1;
}

uint64_t initializeWithTake for MLHandActionClassifier.Torso(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = type metadata accessor for Conv2D(0);
  v3 = *(*(v61 - 8) + 32);
  v3(a1, a2, v61);
  v58 = v3;
  v4 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v5 = *(v4 + 20);
  *(a1 + v5 + 48) = *(a2 + v5 + 48);
  v6 = *(a2 + v5);
  v7 = *(a2 + v5 + 16);
  *(a1 + v5 + 32) = *(a2 + v5 + 32);
  *(a1 + v5 + 16) = v7;
  *(a1 + v5) = v6;
  v8 = v4;
  v3(a1 + *(v4 + 24), a2 + *(v4 + 24), v61);
  v9 = v8[7];
  v59 = type metadata accessor for BatchNorm(0);
  v60 = *(*(v59 - 8) + 32);
  v60(a1 + v9, a2 + v9, v59);
  v10 = v8[8];
  v56 = type metadata accessor for Dropout(0);
  v57 = *(*(v56 - 8) + 32);
  v57(a1 + v10, a2 + v10, v56);
  v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v3(a1 + *(v55 + 36), a2 + *(v55 + 36), v61);
  v60(a1 + *(v55 + 40), a2 + *(v55 + 40), v59);
  v54 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
  v11 = v54[5];
  v12 = a1 + v11;
  v13 = a2 + v11;
  v3(v12, v13, v61);
  v14 = v8[5];
  *(v14 + v12 + 48) = *(v14 + v13 + 48);
  v15 = *(v14 + v13);
  v16 = *(v14 + v13 + 16);
  *(v14 + v12 + 32) = *(v14 + v13 + 32);
  *(v14 + v12 + 16) = v16;
  *(v14 + v12) = v15;
  v3(v12 + v8[6], v13 + v8[6], v61);
  v60(v12 + v8[7], v13 + v8[7], v59);
  v57(v12 + v8[8], v13 + v8[8], v56);
  v3(v12 + *(v55 + 36), v13 + *(v55 + 36), v61);
  v60(*(v55 + 40) + v12, *(v55 + 40) + v13, v59);
  v17 = v54[6];
  v18 = a1 + v17;
  v19 = a2 + v17;
  v3(v18, v19, v61);
  v20 = v8[5];
  *(v20 + v18 + 48) = *(v20 + v19 + 48);
  v21 = *(v20 + v19);
  v22 = *(v20 + v19 + 16);
  *(v20 + v18 + 32) = *(v20 + v19 + 32);
  *(v20 + v18 + 16) = v22;
  *(v20 + v18) = v21;
  v3(v18 + v8[6], v19 + v8[6], v61);
  v60(v18 + v8[7], v19 + v8[7], v59);
  v57(v18 + v8[8], v19 + v8[8], v56);
  v3(v18 + *(v55 + 36), v19 + *(v55 + 36), v61);
  v60(*(v55 + 40) + v18, *(v55 + 40) + v19, v59);
  v23 = v54[7];
  v24 = a1 + v23;
  v25 = a2 + v23;
  v3(v24, v25, v61);
  v26 = v8[5];
  *(v26 + v24 + 48) = *(v26 + v25 + 48);
  v27 = *(v26 + v25);
  v28 = *(v26 + v25 + 16);
  *(v26 + v24 + 32) = *(v26 + v25 + 32);
  *(v26 + v24 + 16) = v28;
  *(v26 + v24) = v27;
  v3(v24 + v8[6], v25 + v8[6], v61);
  v60(v24 + v8[7], v25 + v8[7], v59);
  v57(v24 + v8[8], v25 + v8[8], v56);
  v3(v24 + *(v55 + 36), v25 + *(v55 + 36), v61);
  v60(*(v55 + 40) + v24, *(v55 + 40) + v25, v59);
  v29 = v54[8];
  v30 = a1 + v29;
  v31 = a2 + v29;
  v3(v30, v31, v61);
  v32 = v8[5];
  *(v32 + v30 + 48) = *(v32 + v31 + 48);
  v33 = *(v32 + v31);
  v34 = *(v32 + v31 + 16);
  *(v32 + v30 + 32) = *(v32 + v31 + 32);
  *(v32 + v30 + 16) = v34;
  *(v32 + v30) = v33;
  v3(v30 + v8[6], v31 + v8[6], v61);
  v60(v30 + v8[7], v31 + v8[7], v59);
  v57(v8[8] + v30, v8[8] + v31, v56);
  v35 = v54[9];
  v36 = a1 + v35;
  v37 = a2 + v35;
  v3(v36, v37, v61);
  v38 = v8[5];
  *(v38 + v36 + 48) = *(v38 + v37 + 48);
  v39 = *(v38 + v37);
  v40 = *(v38 + v37 + 16);
  *(v38 + v36 + 32) = *(v38 + v37 + 32);
  *(v38 + v36 + 16) = v40;
  *(v38 + v36) = v39;
  v3(v36 + v8[6], v37 + v8[6], v61);
  v60(v36 + v8[7], v37 + v8[7], v59);
  v57(v36 + v8[8], v37 + v8[8], v56);
  v3(v36 + *(v55 + 36), v37 + *(v55 + 36), v61);
  v60(*(v55 + 40) + v36, *(v55 + 40) + v37, v59);
  v41 = v54[10];
  v42 = a1 + v41;
  v43 = a2 + v41;
  v3(v42, v43, v61);
  v44 = v8;
  v45 = v8[5];
  *(v45 + v42 + 48) = *(v45 + v43 + 48);
  v46 = *(v45 + v43);
  v47 = *(v45 + v43 + 16);
  *(v45 + v42 + 32) = *(v45 + v43 + 32);
  *(v45 + v42 + 16) = v47;
  *(v45 + v42) = v46;
  v58(v42 + v44[6], v43 + v44[6], v61);
  v60(v42 + v44[7], v43 + v44[7], v59);
  v57(v42 + v44[8], v43 + v44[8], v56);
  v58(v42 + *(v55 + 36), v43 + *(v55 + 36), v61);
  v60(*(v55 + 40) + v42, *(v55 + 40) + v43, v59);
  v48 = *(a3 + 24);
  v49 = a1 + v48;
  v50 = v48 + a2;
  v51 = type metadata accessor for Dense(0);
  (*(*(v51 - 8) + 32))(v49, v50, v51);
  return a1;
}

uint64_t assignWithTake for MLHandActionClassifier.Torso(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Conv2D(0);
  v4 = *(*(v3 - 8) + 40);
  v53 = v3;
  v4(a1, a2, v3);
  v50 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v5 = v50[5];
  *(a1 + v5) = *(a2 + v5);
  *(a1 + v5 + 16) = *(a2 + v5 + 16);
  *(a1 + v5 + 32) = *(a2 + v5 + 32);
  *(a1 + v5 + 48) = *(a2 + v5 + 48);
  v4(v50[6] + a1, a2 + v50[6], v3);
  v6 = v50[7];
  v51 = type metadata accessor for BatchNorm(0);
  v52 = *(*(v51 - 8) + 40);
  v52(v6 + a1, a2 + v6, v51);
  v7 = v50[8];
  v49 = type metadata accessor for Dropout(0);
  v48 = *(*(v49 - 8) + 40);
  v48(v7 + a1, a2 + v7, v49);
  v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v4(*(v47 + 36) + a1, a2 + *(v47 + 36), v3);
  v52(a1 + *(v47 + 40), a2 + *(v47 + 40), v51);
  v46 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
  v8 = v46[5];
  v9 = a1 + v8;
  v10 = a2 + v8;
  v4(v9, v10, v3);
  v11 = v50;
  v12 = v50[5];
  *(v12 + v9) = *(v12 + v10);
  *(v12 + v9 + 16) = *(v12 + v10 + 16);
  *(v12 + v9 + 32) = *(v12 + v10 + 32);
  *(v12 + v9 + 48) = *(v12 + v10 + 48);
  v4(v9 + v50[6], v10 + v50[6], v3);
  v52(v9 + v11[7], v10 + v11[7], v51);
  v48(v9 + v11[8], v10 + v11[8], v49);
  v4(v9 + *(v47 + 36), v10 + *(v47 + 36), v3);
  v52(*(v47 + 40) + v9, *(v47 + 40) + v10, v51);
  v13 = v46[6];
  v14 = a1 + v13;
  v15 = a2 + v13;
  v4(v14, v15, v3);
  v16 = v50;
  v17 = v50[5];
  *(v17 + v14) = *(v17 + v15);
  *(v17 + v14 + 16) = *(v17 + v15 + 16);
  *(v17 + v14 + 32) = *(v17 + v15 + 32);
  *(v17 + v14 + 48) = *(v17 + v15 + 48);
  v4(v14 + v50[6], v15 + v50[6], v3);
  v52(v14 + v16[7], v15 + v16[7], v51);
  v48(v14 + v16[8], v15 + v16[8], v49);
  v4(v14 + *(v47 + 36), v15 + *(v47 + 36), v3);
  v52(*(v47 + 40) + v14, *(v47 + 40) + v15, v51);
  v18 = v46[7];
  v19 = a1 + v18;
  v20 = a2 + v18;
  v4(v19, v20, v3);
  v21 = v50;
  v22 = v50[5];
  *(v22 + v19) = *(v22 + v20);
  *(v22 + v19 + 16) = *(v22 + v20 + 16);
  *(v22 + v19 + 32) = *(v22 + v20 + 32);
  *(v22 + v19 + 48) = *(v22 + v20 + 48);
  v4(v19 + v50[6], v20 + v50[6], v3);
  v52(v19 + v21[7], v20 + v21[7], v51);
  v48(v19 + v21[8], v20 + v21[8], v49);
  v4(v19 + *(v47 + 36), v20 + *(v47 + 36), v3);
  v52(*(v47 + 40) + v19, *(v47 + 40) + v20, v51);
  v23 = v46[8];
  v24 = a1 + v23;
  v25 = a2 + v23;
  v4(v24, v25, v3);
  v26 = v50;
  v27 = v50[5];
  *(v27 + v24) = *(v27 + v25);
  *(v27 + v24 + 16) = *(v27 + v25 + 16);
  *(v27 + v24 + 32) = *(v27 + v25 + 32);
  *(v27 + v24 + 48) = *(v27 + v25 + 48);
  v4(v24 + v50[6], v25 + v50[6], v3);
  v52(v24 + v26[7], v25 + v26[7], v51);
  v48(v26[8] + v24, v26[8] + v25, v49);
  v28 = v46[9];
  v29 = a1 + v28;
  v30 = a2 + v28;
  v4(v29, v30, v3);
  v31 = v50[5];
  *(v31 + v29) = *(v31 + v30);
  *(v31 + v29 + 16) = *(v31 + v30 + 16);
  *(v31 + v29 + 32) = *(v31 + v30 + 32);
  *(v31 + v29 + 48) = *(v31 + v30 + 48);
  v4(v29 + v26[6], v30 + v26[6], v3);
  v52(v29 + v50[7], v30 + v50[7], v51);
  v48(v29 + v50[8], v30 + v50[8], v49);
  v4(v29 + *(v47 + 36), v30 + *(v47 + 36), v3);
  v52(*(v47 + 40) + v29, *(v47 + 40) + v30, v51);
  v32 = v46[10];
  v33 = a1 + v32;
  v34 = a2 + v32;
  v4(v33, v34, v3);
  v35 = v4;
  v36 = v50;
  v37 = v50[5];
  *(v37 + v33) = *(v37 + v34);
  *(v37 + v33 + 16) = *(v37 + v34 + 16);
  *(v37 + v33 + 32) = *(v37 + v34 + 32);
  *(v37 + v33 + 48) = *(v37 + v34 + 48);
  v38 = v3;
  v39 = v35;
  v35(v33 + v50[6], v34 + v50[6], v38);
  v52(v33 + v36[7], v34 + v36[7], v51);
  v48(v33 + v36[8], v34 + v36[8], v49);
  v39(v33 + *(v47 + 36), v34 + *(v47 + 36), v53);
  v52(*(v47 + 40) + v33, *(v47 + 40) + v34, v51);
  v40 = *(a3 + 24);
  v41 = a1 + v40;
  v42 = v40 + a2;
  v43 = type metadata accessor for Dense(0);
  (*(*(v43 - 8) + 40))(v41, v42, v43);
  return a1;
}