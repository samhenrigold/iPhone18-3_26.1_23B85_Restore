uint64_t MLHandActionClassifier.ModelParameters.ValidationData.init(dictionary:tableFile:)(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = v2;
  v4 = type metadata accessor for URL(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v39 = &v37;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DataSource?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v38 = &v37;
  v12 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v40 = &v37;
  v52 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
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
  v49 = (&type metadata for Any + 8);
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
            MLHandActionClassifier.DataSource.init(dictionary:tableFile:)(v49, v28);
            (*(v5 + 8))(v50, v4);
            v30 = v29;
            v22 = 1;
            if (__swift_getEnumTagSinglePayload(v30, 1, v12) == 1)
            {
              outlined destroy of AnyColumn?(v30, &demangling cache variable for type metadata for MLHandActionClassifier.DataSource?);
              v25 = 1;
              v3 = v51;
              goto LABEL_11;
            }

            v34 = v30;
            v35 = v40;
            outlined init with take of MLClassifierMetrics(v34, v40, type metadata accessor for MLHandActionClassifier.DataSource);
            v36 = v35;
            v24 = v47;
            outlined init with take of MLClassifierMetrics(v36, v47, type metadata accessor for MLHandActionClassifier.DataSource);
LABEL_29:
            v23 = v52;
            goto LABEL_7;
          }
        }

        else
        {
          outlined destroy of AnyColumn?(&v41, &demangling cache variable for type metadata for Any?);
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
          outlined destroy of AnyColumn?(&v41, &demangling cache variable for type metadata for Any?);
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
  v22 = 2;
  v23 = v52;
  v24 = v47;
LABEL_7:
  swift_storeEnumTagMultiPayload(v24, v23, v22);
  v3 = v51;
  outlined init with take of MLClassifierMetrics(v24, v51, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
  v25 = 0;
  return __swift_storeEnumTagSinglePayload(v3, v25, 1, v23);
}

uint64_t MLHandActionClassifier.ModelParameters.ModelAlgorithmType.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  if (!*(a1 + 16) || (v3 = specialized __RawDictionaryStorage.find<A>(_:)(0x687469726F676C61, 0xE90000000000006DLL), (v4 & 1) == 0))
  {
    v10 = 0;
    v9 = 0;
    a1;
    goto LABEL_8;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v3, &v9);
  a1;
  if (!*(&v10 + 1))
  {
LABEL_8:
    result = outlined destroy of AnyColumn?(&v9, &demangling cache variable for type metadata for Any?);
    goto LABEL_9;
  }

  result = swift_dynamicCast(&v11, &v9, &type metadata for Any + 8, &type metadata for String, 6);
  if (!result)
  {
LABEL_9:
    v7 = 1;
    goto LABEL_10;
  }

  v6 = v12;
  if (v11 ^ 0x6E6367 | v12 ^ 0xE300000000000000)
  {
    v7 = 0;
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)(7234407, 0xE300000000000000, v11, v12, 0);
    result = v6;
    if (v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  result = v12;
  v7 = 0;
LABEL_10:
  *v2 = v7;
  return result;
}

NSURL *MLHandActionClassifier.PersistentParameters.save(toSessionDirectory:)(uint64_t a1)
{
  v57 = v1;
  v69 = a1;
  v3 = *(*(type metadata accessor for MLHandActionClassifier.DataSource(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v64 = &v53;
  v60 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  v6 = *(*(v60 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v61 = &v53;
  v75 = type metadata accessor for URL(0);
  v66 = *(v75 - 8);
  v9 = *(v66 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v68 = &v53;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v59 = &v53;
  v14 = alloca(v9);
  v15 = alloca(v9);
  v58 = &v53;
  v65 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v16 = *(*(v65 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v67 = &v53;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v73 = &v53;
  v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  inited = swift_initStackObject(v21, v78);
  *(inited + 16) = 8;
  *(inited + 24) = 16;
  *(inited + 32) = 0x676E696E69617274;
  *(inited + 40) = 0xE800000000000000;
  v71 = v2;
  v23 = MLHandActionClassifier.DataSource.dictionary.getter();
  v74 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  *(inited + 72) = v74;
  *(inited + 48) = v23;
  *(inited + 80) = 0x69746164696C6176;
  *(inited + 88) = 0xEA00000000006E6FLL;
  v24 = type metadata accessor for MLHandActionClassifier.PersistentParameters(0);
  v62 = v2 + v24[5];
  v25 = v73;
  outlined init with copy of MLTrainingSessionParameters(v62, v73, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
  v56 = *&v71[v24[6]];
  v70 = *&v71[v24[7]];
  v55 = *&v71[v24[8]];
  v63 = v24[10];
  v54 = *&v71[v63];
  v72 = *&v71[v24[9]];
  *(v25 + *(v65 + 32)) = v54;
  v26 = MLHandActionClassifier.ModelParameters.ValidationData.dictionary.getter();
  outlined destroy of MLActivityClassifier.ModelParameters(v25, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
  v27 = v74;
  *(inited + 120) = v74;
  *(inited + 96) = v26;
  *(inited + 128) = 0x69735F6863746162;
  *(inited + 136) = 0xEA0000000000657ALL;
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = v56;
  *(inited + 176) = 0x6D6172665F6D756ELL;
  *(inited + 184) = 0xEA00000000007365;
  *(inited + 216) = &type metadata for Int;
  *(inited + 192) = v55;
  strcpy((inited + 224), "max_iterations");
  *(inited + 239) = -18;
  *(inited + 264) = &type metadata for Int;
  *(inited + 240) = v70;
  *(inited + 272) = 0xD000000000000014;
  *(inited + 280) = "Empty training input." + 0x8000000000000000;
  *(inited + 312) = &type metadata for Int;
  *(inited + 288) = v54;
  *(inited + 320) = 0x687469726F676C61;
  *(inited + 328) = 0xE90000000000006DLL;
  v28 = MLHandActionClassifier.ModelParameters.ModelAlgorithmType.dictionary.getter();
  *(inited + 360) = v27;
  *(inited + 336) = v28;
  *(inited + 368) = 0x7246746567726174;
  *(inited + 376) = 0xEF65746152656D61;
  *(inited + 408) = &type metadata for Double;
  v29 = v72;
  *(inited + 384) = v72;
  LOBYTE(inited) = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  v30 = objc_opt_self(NSPropertyListSerialization);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  inited;
  v76 = 0;
  v32 = [v30 dataWithPropertyList:isa format:200 options:0 error:&v76];
  v33 = v32;

  v34 = v76;
  if (v33)
  {
    v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)(v33);
    v37 = v36;

    v38 = v58;
    URL.appendingPathComponent(_:)(0xD000000000000010, ("ObjectDetectorMetrics." + 0x8000000000000000));
    v39 = v57;
    Data.write(to:options:)(v38, 0, v35, v37);
    if (v39)
    {
      (*(v66 + 8))(v38, v75);
      v40 = v35;
      v41 = v37;
    }

    else
    {
      v74 = v35;
      v73 = v37;
      v72 = *(v66 + 8);
      *v29.i64 = v72(v38, v75);
      MLHandActionClassifier.DataSource.table.getter(v29);
      v43 = v77;
      if (v77 != -1)
      {
        v70 = v76;
        v77 &= 1u;
        v44 = v59;
        URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
        MLDataTable.write(to:)(v44);
        v72(v44, v75);
        outlined consume of MLDataTable?(v70, v43);
      }

      v45 = v67;
      outlined init with copy of MLTrainingSessionParameters(v62, v67, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
      *(v45 + *(v65 + 32)) = *&v71[v63];
      v46 = v45;
      v47 = v61;
      outlined init with copy of MLTrainingSessionParameters(v46, v61, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
      if (swift_getEnumCaseMultiPayload(v47, v60) == 1)
      {
        v48 = v64;
        outlined init with take of MLClassifierMetrics(v47, v64, type metadata accessor for MLHandActionClassifier.DataSource);
        MLHandActionClassifier.DataSource.table.getter(v29);
        outlined destroy of MLActivityClassifier.ModelParameters(v48, type metadata accessor for MLHandActionClassifier.DataSource);
        v49 = v77;
        v50 = v76;
      }

      else
      {
        v49 = -1;
        v50 = 0;
      }

      v51 = v68;
      outlined destroy of MLActivityClassifier.ModelParameters(v67, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
      if (v49 != -1)
      {
        v76 = v50;
        v77 = v49 & 1;
        v71 = v50;
        URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
        MLDataTable.write(to:)(v51);
        v72(v51, v75);
        outlined consume of Data._Representation(v74, v73);
        outlined consume of MLDataTable?(v71, v49);
        return __stack_chk_guard;
      }

      v40 = v74;
      v41 = v73;
    }

    outlined consume of Data._Representation(v40, v41);
  }

  else
  {
    v42 = v34;
    _convertNSErrorToError(_:)(v34);

    swift_willThrow();
  }

  return __stack_chk_guard;
}

uint64_t MLHandActionClassifier.DataSource.dictionary.getter()
{
  v86 = type metadata accessor for URL(0);
  v85 = *(v86 - 8);
  v1 = *(v85 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = alloca(v1);
  v5 = alloca(v1);
  v84 = &v60;
  v6 = alloca(v1);
  v7 = alloca(v1);
  v8 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  outlined init with copy of MLTrainingSessionParameters(v0, &v60, type metadata accessor for MLHandActionClassifier.DataSource);
  switch(swift_getEnumCaseMultiPayload(&v60, v8))
  {
    case 0u:
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v13 = &v60 + v12[12];
      v77 = *(&v60 + v12[16]);
      v76 = *(&v60 + v12[20]);
      v14 = v12[24];
      v80 = *(&v60 + v14);
      v78 = *(&v60 + v14 + 8);
      v15 = v12[28];
      v79 = *(&v60 + v15);
      v82 = *(&v60 + v15 + 8);
      v16 = *(v85 + 32);
      v17 = v86;
      v16(&v60, &v60, v86);
      v16(v84, v13, v17);
      v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v19 = swift_allocObject(v18, 272, 7);
      *(v19 + 16) = 5;
      *(v19 + 24) = 10;
      *(v19 + 32) = 1684957547;
      *(v19 + 40) = 0xE400000000000000;
      *(v19 + 72) = &type metadata for String;
      *(v19 + 48) = 0x726F746365726964;
      *(v19 + 56) = 0xE900000000000079;
      *(v19 + 80) = 1752457584;
      *(v19 + 88) = 0xE400000000000000;
      v83 = &v60;
      v20 = URL.path.getter(v18);
      *(v19 + 120) = &type metadata for String;
      *(v19 + 96) = v20;
      *(v19 + 104) = v21;
      *(v19 + 128) = 0x697461746F6E6E61;
      *(v19 + 136) = 0xEF656C69665F6E6FLL;
      *(v19 + 168) = v17;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v19 + 144));
      (*(v85 + 16))(boxed_opaque_existential_0, v84, v17);
      strcpy((v19 + 176), "video_column");
      *(v19 + 189) = 0;
      *(v19 + 190) = -5120;
      *(v19 + 216) = &type metadata for String;
      *(v19 + 192) = v77;
      strcpy((v19 + 224), "label_column");
      *(v19 + 237) = 0;
      *(v19 + 238) = -5120;
      *(v19 + 264) = &type metadata for String;
      *(v19 + 240) = v76;
      v23 = Dictionary.init(dictionaryLiteral:)(v19, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
      if (v78)
      {
        v74 = &type metadata for String;
        *&v73 = v80;
        *(&v73 + 1) = v78;
        outlined init with take of Any(&v73, v75);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v23);
        v81 = v23;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v75, 0xD000000000000011, ("labeled_video_data" + 0x8000000000000000), isUniquelyReferenced_nonNull_native);
        v23 = v81;
      }

      v25 = v85;
      v26 = v86;
      if (v82)
      {
        v74 = &type metadata for String;
        *&v73 = v79;
        *(&v73 + 1) = v82;
        outlined init with take of Any(&v73, v75);
        v27 = swift_isUniquelyReferenced_nonNull_native(v23);
        v81 = v23;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v75, 0x656D69745F646E65, 0xEF6E6D756C6F635FLL, v27);
        v23 = v81;
      }

      v28 = *(v25 + 8);
      v28(v84, v26);
      v28(v83, v26);
      return v23;
    case 1u:
      v32 = v85;
      (*(v85 + 32))(&v60, &v60, v86);
      v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      inited = swift_initStackObject(v33, v72);
      inited[2] = 2;
      inited[3] = 4;
      inited[4] = 1684957547;
      inited[5] = 0xE400000000000000;
      v35 = "session_id_column" + 0x8000000000000000;
      inited[9] = &type metadata for String;
      inited[6] = 0xD000000000000013;
      goto LABEL_11;
    case 2u:
      v32 = v85;
      (*(v85 + 32))(&v60, &v60, v86);
      v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      inited = swift_initStackObject(v33, v71);
      inited[2] = 2;
      inited[3] = 4;
      inited[4] = 1684957547;
      inited[5] = 0xE400000000000000;
      inited[9] = &type metadata for String;
      inited[6] = 0x5F64656C6562616CLL;
      v35 = 0xED000073656C6966;
LABEL_11:
      inited[7] = v35;
      inited[10] = 1752457584;
      inited[11] = 0xE400000000000000;
      v40 = URL.path.getter(v33);
      inited[15] = &type metadata for String;
      inited[12] = v40;
      inited[13] = v41;
      v23 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
      (*(v32 + 8))(&v60, v86);
      return v23;
    case 3u:
      v36 = v62;
      v37 = v63;
      v38 = v64;
      v39 = v65;
      v86 = v66;
      v85 = v67;
      outlined consume of Result<_DataTable, Error>(v60, v61);
      goto LABEL_13;
    case 4u:
      v84 = v62;
      v29 = v63;
      v85 = v64;
      v30 = v65;
      v82 = v66;
      v31 = v67;
      v83 = v68;
      v86 = v69;
      outlined consume of Result<_DataTable, Error>(v60, v61);
      goto LABEL_15;
    case 5u:
      v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      v43 = v42[12];
      v36 = *(&v60 + v43);
      v37 = *(&v60 + v43 + 8);
      v44 = v42[16];
      v38 = *(&v60 + v44);
      v39 = *(&v60 + v44 + 8);
      v45 = v42[20];
      v86 = *(&v60 + v45);
      v85 = *(&v60 + v45 + 8);
      v46 = type metadata accessor for DataFrame(0);
      (*(*(v46 - 8) + 8))(&v60, v46);
LABEL_13:
      v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v48 = swift_initStackObject(v47, &v60);
      *(v48 + 16) = 4;
      *(v48 + 24) = 8;
      *(v48 + 32) = 1684957547;
      *(v48 + 40) = 0xE400000000000000;
      *(v48 + 72) = &type metadata for String;
      *(v48 + 48) = 0xD000000000000016;
      *(v48 + 56) = "start_time_column" + 0x8000000000000000;
      *(v48 + 80) = 0xD000000000000011;
      *(v48 + 88) = "labeled_keypoints_data" + 0x8000000000000000;
      *(v48 + 120) = &type metadata for String;
      *(v48 + 96) = v36;
      *(v48 + 104) = v37;
      strcpy((v48 + 128), "label_column");
      *(v48 + 141) = 0;
      *(v48 + 142) = -5120;
      *(v48 + 168) = &type metadata for String;
      *(v48 + 144) = v38;
      *(v48 + 152) = v39;
      strcpy((v48 + 176), "feature_column");
      *(v48 + 191) = -18;
      *(v48 + 216) = &type metadata for String;
      *(v48 + 192) = v86;
      *(v48 + 200) = v85;
      v23 = Dictionary.init(dictionaryLiteral:)(v48, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
      break;
    case 6u:
      v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v50 = v49[12];
      v84 = *(&v60 + v50);
      v29 = *(&v60 + v50 + 8);
      v51 = v49[16];
      v85 = *(&v60 + v51);
      v30 = *(&v60 + v51 + 8);
      v52 = v49[20];
      v82 = *(&v60 + v52);
      v31 = *(&v60 + v52 + 8);
      v53 = v49[24];
      v83 = *(&v60 + v53);
      v86 = *(&v60 + v53 + 8);
      v54 = type metadata accessor for DataFrame(0);
      (*(*(v54 - 8) + 8))(&v60, v54);
LABEL_15:
      v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v56 = swift_initStackObject(v55, v70);
      *(v56 + 16) = 3;
      *(v56 + 24) = 6;
      *(v56 + 32) = 1684957547;
      *(v56 + 40) = 0xE400000000000000;
      *(v56 + 72) = &type metadata for String;
      *(v56 + 48) = 0xD000000000000012;
      *(v56 + 56) = "augmentation_options" + 0x8000000000000000;
      strcpy((v56 + 80), "video_column");
      *(v56 + 93) = 0;
      *(v56 + 94) = -5120;
      *(v56 + 120) = &type metadata for String;
      *(v56 + 96) = v84;
      *(v56 + 104) = v29;
      strcpy((v56 + 128), "label_column");
      *(v56 + 141) = 0;
      *(v56 + 142) = -5120;
      *(v56 + 168) = &type metadata for String;
      *(v56 + 144) = v85;
      *(v56 + 152) = v30;
      v23 = Dictionary.init(dictionaryLiteral:)(v56, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
      if (v31)
      {
        v74 = &type metadata for String;
        *&v73 = v82;
        *(&v73 + 1) = v31;
        outlined init with take of Any(&v73, v75);
        v57 = swift_isUniquelyReferenced_nonNull_native(v23);
        v81 = v23;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v75, 0xD000000000000011, ("labeled_video_data" + 0x8000000000000000), v57);
        v23 = v81;
      }

      if (v86)
      {
        v74 = &type metadata for String;
        *&v73 = v83;
        *(&v73 + 1) = v86;
        outlined init with take of Any(&v73, v75);
        v58 = swift_isUniquelyReferenced_nonNull_native(v23);
        v81 = v23;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v75, 0x656D69745F646E65, 0xEF6E6D756C6F635FLL, v58);
        v23 = v81;
      }

      break;
  }

  return v23;
}

uint64_t MLHandActionClassifier.ModelParameters.ValidationData.dictionary.getter()
{
  v1 = *(*(type metadata accessor for MLHandActionClassifier.DataSource(0) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  outlined init with copy of MLTrainingSessionParameters(v0, &v23, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v23, v4);
  if (!EnumCaseMultiPayload)
  {
    v13 = v24;
    v14 = v25;
    v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
    v31 = v23;
    inited = swift_initStackObject(v15, &v23);
    inited[2] = 2;
    inited[3] = 4;
    inited[4] = 1684957547;
    inited[5] = 0xE400000000000000;
    inited[9] = &type metadata for String;
    inited[6] = 0x74696C7073;
    inited[7] = 0xE500000000000000;
    inited[10] = 1635017060;
    inited[11] = 0xE400000000000000;
    v28 = v31;
    v29 = v13;
    v30 = v14;
    v17 = MLSplitStrategy.dictionary.getter();
    inited[15] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
    inited[12] = v17;
    v18 = &type metadata for Any + 8;
    v19 = inited;
    return Dictionary.init(dictionaryLiteral:)(v19, &type metadata for String, v18, &protocol witness table for String);
  }

  if (EnumCaseMultiPayload != 1)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
    v21 = swift_initStackObject(v20, v27);
    v21[2] = 1;
    v21[3] = 2;
    v21[4] = 1684957547;
    v21[5] = 0xE400000000000000;
    v21[9] = &type metadata for String;
    v21[6] = 1701736302;
    v21[7] = 0xE400000000000000;
    v18 = &type metadata for Any + 8;
    v19 = v21;
    return Dictionary.init(dictionaryLiteral:)(v19, &type metadata for String, v18, &protocol witness table for String);
  }

  outlined init with take of MLClassifierMetrics(&v23, &v23, type metadata accessor for MLHandActionClassifier.DataSource);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  v10 = swift_initStackObject(v9, v26);
  v10[2] = 2;
  v10[3] = 4;
  v10[4] = 1684957547;
  v10[5] = 0xE400000000000000;
  v10[9] = &type metadata for String;
  v10[6] = 0x756F735F61746164;
  v10[7] = 0xEB00000000656372;
  v10[10] = 1635017060;
  v10[11] = 0xE400000000000000;
  v11 = MLHandActionClassifier.DataSource.dictionary.getter();
  v10[15] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  v10[12] = v11;
  v12 = Dictionary.init(dictionaryLiteral:)(v10, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  outlined destroy of MLActivityClassifier.ModelParameters(&v23, type metadata accessor for MLHandActionClassifier.DataSource);
  return v12;
}

uint64_t MLHandActionClassifier.ModelParameters.ModelAlgorithmType.dictionary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  inited = swift_initStackObject(v0, v3);
  inited[2] = 1;
  inited[3] = 2;
  inited[4] = 0x687469726F676C61;
  inited[5] = 0xE90000000000006DLL;
  inited[9] = &type metadata for String;
  inited[6] = 7234407;
  inited[7] = 0xE300000000000000;
  return Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
}

uint64_t *MLHandActionClassifier.DataSource.table.getter(__m128 a1)
{
  v88 = v2;
  v87 = v1;
  v76 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v75 = *(v76 - 8);
  v3 = *(v75 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v69 = &v68;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v84 = &v68;
  v83 = type metadata accessor for AnyColumn(0);
  v74 = *(v83 - 8);
  v9 = *(v74 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v77 = &v68;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v79 = &v68;
  v14 = type metadata accessor for DataFrame(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v81 = &v68;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v80 = &v68;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v23 = alloca(v16);
  v24 = alloca(v16);
  v73 = &v68;
  v25 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v26 = *(*(v25 - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  outlined init with copy of MLTrainingSessionParameters(v88, &v68, type metadata accessor for MLHandActionClassifier.DataSource);
  switch(swift_getEnumCaseMultiPayload(&v68, v25))
  {
    case 0u:
      v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v36 = &v68 + v35[12];
      *(&v68 + v35[16] + 8);
      *(&v68 + v35[20] + 8);
      *(&v68 + v35[24] + 8);
      *(&v68 + v35[28] + 8);
      v37 = type metadata accessor for URL(0);
      v38 = *(*(v37 - 8) + 8);
      v38(v36, v37);
      v38(&v68, v37);
      goto LABEL_11;
    case 1u:
    case 2u:
      v29 = type metadata accessor for URL(0);
      (*(*(v29 - 8) + 8))(&v68, v29);
LABEL_11:
      result = v87;
      *v87 = 0;
      *(result + 8) = -1;
      return result;
    case 3u:
      v39 = v68;
      v40 = v69;
      v41 = v73;
      v42 = v75;
      v71;
      v41;
      v42;
      v85 = v39;
      v86 = v40 & 1;
      outlined copy of Result<_DataTable, Error>(v39, v40);
      static MLHandActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(&v85, 0x746E696F7079656BLL, 0xE900000000000073);
      outlined consume of Result<_DataTable, Error>(v39, v40);
      goto LABEL_12;
    case 4u:
      v30 = v68;
      LOBYTE(v88) = v69;
      v31 = v73;
      v32 = v75;
      v33 = v77;
      v71;
      v31;
      v33;
      v32;
      result = v87;
      *v87 = v30;
      *(result + 8) = v88;
      return result;
    case 5u:
      v81 = &v68;
      v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *(&v68 + v43[12] + 8);
      *(&v68 + v43[16] + 8);
      v44 = v43[20];
      v45 = *(&v68 + v44);
      v46 = *(&v68 + v44 + 8);
      v80 = v14;
      v88 = v15;
      (*(v15 + 32))(v73, &v68, v14);
      v47 = v79;
      v82 = v45;
      v48 = v46;
      v49 = v46;
      v50 = v73;
      DataFrame.subscript.getter(v45, v49);
      v51 = AnyColumn.wrappedElementType.getter(v45);
      v52 = *(v74 + 8);
      v52(v47, v83);
      v78 = v48;
      if (v51 == &type metadata for String)
      {
        v70 = v52;
        v57 = v69;
        DataFrame.subscript.getter(v82, v48, &type metadata for String);
        Column<A>.parseAsJSONArrays()();
        (*(v75 + 8))(v57, v76);
        v58 = v83;
        __swift_storeEnumTagSinglePayload(v84, 0, 1, v83);
        v59 = v77;
        v60 = v58;
        v61 = v74;
        (*(v74 + 32))(v77, v84, v60);
        v62 = v59;
        v63 = v83;
        (*(v61 + 16))(v79, v62, v83);

        DataFrame.subscript.setter(v79, v82, v48);
        v70(v77, v63);
      }

      v53 = v88;
      v64 = v81;
      v65 = v80;
      *a1.i64 = (*(v88 + 16))(v81, v50, v80);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v64, 0, a1);
      v85 = v71;
      v86 = v72;
      LOBYTE(v64) = v78;
      static MLHandActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(&v85, v82, v78);
      (*(v53 + 8))(v50, v65);
      v64;
      goto LABEL_12;
    case 6u:
      v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      *(&v68 + v54[12] + 8);
      *(&v68 + v54[16] + 8);
      *(&v68 + v54[20] + 8);
      *(&v68 + v54[24] + 8);
      v55 = v80;
      (*(v15 + 32))(v80, &v68, v14);
      v56 = v81;
      *a1.i64 = (*(v15 + 16))(v81, v55, v14);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v56, 0, a1);
      (*(v15 + 8))(v55, v14);
LABEL_12:
      result = v85;
      v66 = v86;
      v67 = v87;
      *v87 = v85;
      *(v67 + 8) = v66;
      return result;
  }
}

uint64_t outlined consume of MLDataTable?(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return outlined consume of Result<_DataTable, Error>(a1, a2);
  }

  return result;
}

void *outlined retain of MLDataTable.ParsingOptions(void *a1)
{

  return a1;
}

uint64_t outlined destroy of AnyColumn?(uint64_t a1, uint64_t *a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(a2);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *assignWithCopy for MLDecisionTreeClassifier.ModelParameters.ValidationData(_BYTE *__dst, _BYTE *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLDecisionTreeClassifier.ModelParameters.ValidationData(__dst);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload == 2)
  {
    v7 = type metadata accessor for DataFrame(0);
    (*(*(v7 - 8) + 16))(__dst, __src, v7);
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v5 = *__src;
    v6 = __src[8];
    outlined copy of Result<_DataTable, Error>(*__src, v6);
    *__dst = v5;
    __dst[8] = v6;
    swift_storeEnumTagMultiPayload(__dst, a3, 1);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLDecisionTreeClassifier.ModelParameters.ValidationData;
  if (!type metadata singleton initialization cache for MLDecisionTreeClassifier.ModelParameters.ValidationData)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLDecisionTreeClassifier.ModelParameters.ValidationData);
  }

  return result;
}

void *assignWithTake for MLDecisionTreeClassifier.ModelParameters.ValidationData(void *__dst, void *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLDecisionTreeClassifier.ModelParameters.ValidationData(__dst);
  if (swift_getEnumCaseMultiPayload(__src, a3) == 2)
  {
    v4 = type metadata accessor for DataFrame(0);
    (*(*(v4 - 8) + 32))(__dst, __src, v4);
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata completion function for MLDecisionTreeClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  v5[0] = &unk_33F3C0;
  v5[1] = &unk_33F3D8;
  result = type metadata accessor for DataFrame(319);
  if (v4 <= 0x3F)
  {
    v5[2] = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 3, v5, v2, v3);
    return 0;
  }

  return result;
}

uint64_t MLDecisionTreeClassifier.ModelParameters.ValidationData.asTable()(__m128 a1)
{
  v3 = v1;
  v4 = type metadata accessor for DataFrame(0);
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v29 = &v25;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v28 = &v25;
  v10 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  outlined init with copy of MLDecisionTreeClassifier.ModelParameters.ValidationData(v2, &v25);
  result = swift_getEnumCaseMultiPayload(&v25, v10);
  switch(result)
  {
    case 0:
      *v3 = 0;
      *(v3 + 8) = -1;
      break;
    case 1:
      result = v25;
      v15 = v26;
      goto LABEL_7;
    case 2:
      v16 = v28;
      v17 = v27;
      (*(v27 + 32))(v28, &v25, v4);
      v18 = v29;
      *a1.i64 = (*(v17 + 16))(v29, v16, v4);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v18, 1, a1);
      (*(v17 + 8))(v16, v4);
      result = v30;
      v15 = v31;
LABEL_7:
      *v3 = result;
      *(v3 + 8) = v15;
      break;
    case 3:
      v19 = v3;
      empty = tc_v1_sframe_create_empty(0);
      if (!empty)
      {
        BUG();
      }

      v21 = empty;
      v22 = type metadata accessor for CMLTable();
      v23 = swift_allocObject(v22, 24, 7);
      *(v23 + 16) = v21;
      v24 = type metadata accessor for _DataTable();
      swift_allocObject(v24, 40, 7);
      result = _DataTable.init(impl:)(v23);
      *v19 = result;
      *(v19 + 8) = 0;
      break;
  }

  return result;
}

uint64_t outlined init with copy of MLDecisionTreeClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t MLDecisionTreeClassifier.ModelParameters.ValidationData.generateDataFrames(trainingData:)(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t *, uint64_t *, uint64_t))
{
  v56 = a3;
  v55 = a2;
  v54 = a1;
  v4 = type metadata accessor for DataFrame(0);
  v57 = *(v4 - 8);
  v5 = *(v57 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v53 = &v44;
  v47 = type metadata accessor for DataFrame.Slice(0);
  v46 = *(v47 - 8);
  v8 = *(v46 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v49 = &v44;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v52 = &v44;
  v13 = alloca(v8);
  v14 = alloca(v8);
  v50 = &v44;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame.Slice?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v48 = &v44;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v51 = &v44;
  v20 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  outlined init with copy of MLDecisionTreeClassifier.ModelParameters.ValidationData(v3, &v44);
  switch(swift_getEnumCaseMultiPayload(&v44, v20))
  {
    case 0u:
      v57 = v4;
      v24 = v51;
      v25 = v50;
      DataFrame.randomSplit(strategy:)(v51, v50, &v44);
      v26 = v46;
      v27 = v52;
      v28 = v25;
      v29 = v47;
      v56 = *(v46 + 16);
      v56(v52, v28, v47);
      DataFrame.init(_:)(v27);
      v30 = v48;
      outlined init with copy of DataFrame.Slice?(v24, v48);
      v31 = v29;
      if (__swift_getEnumTagSinglePayload(v30, 1, v29) == 1)
      {
        __swift_storeEnumTagSinglePayload(v55, 1, 1, v57);
        (*(v26 + 8))(v50, v29);
      }

      else
      {
        v41 = v52;
        (*(v26 + 32))(v52, v30, v31);
        v42 = v49;
        v56(v49, v41, v31);
        DataFrame.init(_:)(v42);
        v43 = *(v26 + 8);
        v43(v41, v31);
        __swift_storeEnumTagSinglePayload(v55, 0, 1, v57);
        v43(v50, v31);
      }

      return outlined destroy of DataFrame.Slice?(v51);
    case 1u:
      v36 = v44;
      v37 = v45;
      (*(v57 + 16))(v54, v56, v4);
      v44 = v36;
      v45 = v37;
      v38 = v55;
      DataFrame.init(_:)(&v44);
      v34 = v38;
      goto LABEL_10;
    case 2u:
      v32 = *(v57 + 32);
      v32(v53, &v44, v4);
      if (DataFrameProtocol.isEmpty.getter(v4, &protocol witness table for DataFrame))
      {
        v33 = v57;
        (*(v57 + 8))(v53, v4);
        (*(v33 + 16))(v54, v56, v4);
LABEL_7:
        v34 = v55;
        v35 = 1;
      }

      else
      {
        (*(v57 + 16))(v54, v56, v4);
        v39 = v55;
        v32(v55, v53, v4);
        v34 = v39;
LABEL_10:
        v35 = 0;
      }

      return __swift_storeEnumTagSinglePayload(v34, v35, 1, v4);
    case 3u:
      (*(v57 + 16))(v54, v56, v4);
      goto LABEL_7;
  }
}

void *initializeBufferWithCopyOfBuffer for MLHandPoseClassifier.PersistentParameters(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *v4 = *a2;
    v4 = (v15 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = a3;
    v7 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
    v57 = v6;
    v62 = v7;
    switch(swift_getEnumCaseMultiPayload(a2, v7))
    {
      case 0u:
        v8 = type metadata accessor for URL(0);
        v9 = *(*(v8 - 8) + 16);
        v9(a1, a2, v8);
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v9(a1 + v10[12], a2 + v10[12], v8);
        v11 = v10[16];
        *(a1 + v11) = *(a2 + v11);
        *(a1 + v11 + 8) = *(a2 + v11 + 8);
        v12 = v10[20];
        *(a1 + v12) = *(a2 + v12);
        *(a1 + v12 + 8) = *(a2 + v12 + 8);

        v6 = v57;

        v13 = v62;
        v14 = 0;
        break;
      case 1u:
        v23 = type metadata accessor for URL(0);
        (*(*(v23 - 8) + 16))(a1, a2, v23);
        v55 = 1;
        goto LABEL_12;
      case 2u:
        v19 = type metadata accessor for URL(0);
        (*(*(v19 - 8) + 16))(a1, a2, v19);
        v55 = 2;
        goto LABEL_12;
      case 3u:
        v20 = v6;
        v21 = *a2;
        v22 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v22);
        *a1 = v21;
        *(a1 + 8) = v22;
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = *(a2 + 56);

        v6 = v20;

        v54 = 3;
        goto LABEL_10;
      case 4u:
        v16 = v6;
        v17 = *a2;
        v18 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v18);
        *a1 = v17;
        *(a1 + 8) = v18;
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);

        v6 = v16;

        v54 = 4;
        goto LABEL_10;
      case 5u:
        v24 = type metadata accessor for DataFrame(0);
        (*(*(v24 - 8) + 16))(a1, a2, v24);
        v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v26 = v25[12];
        *(a1 + v26) = *(a2 + v26);
        *(a1 + v26 + 8) = *(a2 + v26 + 8);
        v27 = v25[16];
        *(a1 + v27) = *(a2 + v27);
        *(a1 + v27 + 8) = *(a2 + v27 + 8);
        v28 = v25[20];
        *(a1 + v28) = *(a2 + v28);
        *(a1 + v28 + 8) = *(a2 + v28 + 8);

        v54 = 5;
LABEL_10:
        v14 = v54;
        v13 = v62;
        break;
      case 6u:
        v29 = type metadata accessor for DataFrame(0);
        (*(*(v29 - 8) + 16))(a1, a2, v29);
        v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        v31 = *(v30 + 48);
        *(a1 + v31) = *(a2 + v31);
        *(a1 + v31 + 8) = *(a2 + v31 + 8);
        v32 = *(v30 + 64);
        *(a1 + v32) = *(a2 + v32);
        *(a1 + v32 + 8) = *(a2 + v32 + 8);

        v55 = 6;
LABEL_12:
        v14 = v55;
        v13 = v7;
        break;
    }

    swift_storeEnumTagMultiPayload(a1, v13, v14);
    v33 = v6[5];
    v34 = (a1 + v33);
    v35 = a2 + v33;
    v36 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(v35, v36) == 1)
    {
      v61 = v36;
      switch(swift_getEnumCaseMultiPayload(v35, v62))
      {
        case 0u:
          v58 = type metadata accessor for URL(0);
          v56 = *(*(v58 - 8) + 16);
          v56(v34, v35, v58);
          v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
          v56(&v34[v37[12]], v35 + v37[12], v58);
          v38 = v37[16];
          *&v34[v38] = *(v35 + v38);
          *&v34[v38 + 8] = *(v35 + v38 + 8);
          v39 = v37[20];
          *&v34[v39] = *(v35 + v39);
          *&v34[v39 + 8] = *(v35 + v39 + 8);

          JUMPOUT(0x7CC19);
        case 1u:
          v43 = type metadata accessor for URL(0);
          (*(*(v43 - 8) + 16))(v34, v35, v43);
          swift_storeEnumTagMultiPayload(v34, v62, 1);
          break;
        case 2u:
          v41 = type metadata accessor for URL(0);
          (*(*(v41 - 8) + 16))(v34, v35, v41);
          swift_storeEnumTagMultiPayload(v34, v62, 2);
          break;
        case 3u:
          v60 = *v35;
          v42 = *(v35 + 8);
          outlined copy of Result<_DataTable, Error>(*v35, v42);
          *v34 = v60;
          v34[8] = v42;
          *(v34 + 2) = *(v35 + 16);
          *(v34 + 3) = *(v35 + 24);
          *(v34 + 4) = *(v35 + 32);
          *(v34 + 5) = *(v35 + 40);
          *(v34 + 6) = *(v35 + 48);
          *(v34 + 7) = *(v35 + 56);

          swift_storeEnumTagMultiPayload(v34, v62, 3);
          break;
        case 4u:
          v59 = *v35;
          v40 = *(v35 + 8);
          outlined copy of Result<_DataTable, Error>(*v35, v40);
          *v34 = v59;
          v34[8] = v40;
          *(v34 + 2) = *(v35 + 16);
          *(v34 + 3) = *(v35 + 24);
          *(v34 + 4) = *(v35 + 32);
          JUMPOUT(0x7CC72);
        case 5u:
          v44 = type metadata accessor for DataFrame(0);
          (*(*(v44 - 8) + 16))(v34, v35, v44);
          v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v46 = v45[12];
          *&v34[v46] = *(v35 + v46);
          *&v34[v46 + 8] = *(v35 + v46 + 8);
          v47 = v45[16];
          *&v34[v47] = *(v35 + v47);
          *&v34[v47 + 8] = *(v35 + v47 + 8);
          v48 = v45[20];
          *&v34[v48] = *(v35 + v48);
          *&v34[v48 + 8] = *(v35 + v48 + 8);

          swift_storeEnumTagMultiPayload(v34, v62, 5);
          break;
        case 6u:
          v49 = type metadata accessor for DataFrame(0);
          (*(*(v49 - 8) + 16))(v34, v35, v49);
          v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
          v51 = *(v50 + 48);
          *&v34[v51] = *(v35 + v51);
          *&v34[v51 + 8] = *(v35 + v51 + 8);
          v52 = *(v50 + 64);
          *&v34[v52] = *(v35 + v52);
          *&v34[v52 + 8] = *(v35 + v52 + 8);

          swift_storeEnumTagMultiPayload(v34, v62, 6);
          break;
        case 7u:
          JUMPOUT(0x7CE8CLL);
      }

      swift_storeEnumTagMultiPayload(v34, v61, 1);
    }

    else
    {
      memcpy(v34, v35, *(*(v36 - 8) + 64));
    }

    *(a1 + v57[6]) = *(a2 + v57[6]);
    *(a1 + v57[7]) = *(a2 + v57[7]);
    *(a1 + v57[8]) = *(a2 + v57[8]);
  }

  return v4;
}

uint64_t destroy for MLHandPoseClassifier.PersistentParameters(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  switch(swift_getEnumCaseMultiPayload(a1, v4))
  {
    case 0u:
      v7 = type metadata accessor for URL(0);
      v8 = *(*(v7 - 8) + 8);
      v8(a1, v7);
      v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
      v8(a1 + v9[12], v7);
      v2 = a2;
      *(a1 + v9[16] + 8);
      v10 = v9[20];
      goto LABEL_8;
    case 1u:
    case 2u:
      v5 = type metadata accessor for URL(0);
      (*(*(v5 - 8) + 8))(a1, v5);
      break;
    case 3u:
      outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
      *(a1 + 24);
      *(a1 + 40);
      v6 = *(a1 + 56);
      goto LABEL_9;
    case 4u:
      outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
      *(a1 + 24);
      v6 = *(a1 + 40);
      goto LABEL_9;
    case 5u:
      v11 = type metadata accessor for DataFrame(0);
      (*(*(v11 - 8) + 8))(a1, v11);
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *(a1 + v12[12] + 8);
      *(a1 + v12[16] + 8);
      v10 = v12[20];
      goto LABEL_8;
    case 6u:
      v13 = type metadata accessor for DataFrame(0);
      (*(*(v13 - 8) + 8))(a1, v13);
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
      *(a1 + *(v14 + 48) + 8);
      v10 = *(v14 + 64);
LABEL_8:
      v6 = *(a1 + v10 + 8);
LABEL_9:
      v6;
      break;
    default:
      break;
  }

  v15 = *(v2 + 20) + a1;
  v16 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  result = swift_getEnumCaseMultiPayload(v15, v16);
  if (result == 1)
  {
    result = swift_getEnumCaseMultiPayload(v15, v4);
    switch(result)
    {
      case 0:
        v19 = type metadata accessor for URL(0);
        v20 = *(*(v19 - 8) + 8);
        v20(v15, v19);
        v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v20(v15 + v21[12], v19);
        *(v15 + v21[16] + 8);
        v22 = v21[20];
        goto LABEL_19;
      case 1:
      case 2:
        v18 = type metadata accessor for URL(0);
        return (*(*(v18 - 8) + 8))(v15, v18);
      case 3:
        outlined consume of Result<_DataTable, Error>(*v15, *(v15 + 8));
        *(v15 + 24);
        *(v15 + 40);
        return *(v15 + 56);
      case 4:
        outlined consume of Result<_DataTable, Error>(*v15, *(v15 + 8));
        *(v15 + 24);
        return *(v15 + 40);
      case 5:
        v23 = type metadata accessor for DataFrame(0);
        (*(*(v23 - 8) + 8))(v15, v23);
        v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *(v15 + v24[12] + 8);
        *(v15 + v24[16] + 8);
        v22 = v24[20];
        goto LABEL_19;
      case 6:
        v25 = type metadata accessor for DataFrame(0);
        (*(*(v25 - 8) + 8))(v15, v25);
        v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        *(v15 + *(v26 + 48) + 8);
        v22 = *(v26 + 64);
LABEL_19:
        result = *(v15 + v22 + 8);
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t initializeWithCopy for MLHandPoseClassifier.PersistentParameters(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v60 = a3;
  v66 = v6;
  switch(swift_getEnumCaseMultiPayload(a2, v6))
  {
    case 0u:
      v7 = type metadata accessor for URL(0);
      v8 = *(*(v7 - 8) + 16);
      v8(a1, a2, v7);
      v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
      v8(a1 + v9[12], a2 + v9[12], v7);
      v10 = v9[16];
      *(a1 + v10) = *(a2 + v10);
      *(a1 + v10 + 8) = *(a2 + v10 + 8);
      v11 = v9[20];
      *(a1 + v11) = *(a2 + v11);
      *(a1 + v11 + 8) = *(a2 + v11 + 8);

      a3 = v60;

      v12 = v66;
      v13 = v66;
      v14 = 0;
      break;
    case 1u:
      v22 = type metadata accessor for URL(0);
      (*(*(v22 - 8) + 16))(a1, a2, v22);
      v58 = 1;
      goto LABEL_10;
    case 2u:
      v18 = type metadata accessor for URL(0);
      (*(*(v18 - 8) + 16))(a1, a2, v18);
      v58 = 2;
      goto LABEL_10;
    case 3u:
      v19 = a3;
      v20 = *a2;
      v21 = *(a2 + 8);
      outlined copy of Result<_DataTable, Error>(*a2, v21);
      *a1 = v20;
      *(a1 + 8) = v21;
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);

      a3 = v19;

      v57 = 3;
      goto LABEL_8;
    case 4u:
      v15 = a3;
      v16 = *a2;
      v17 = *(a2 + 8);
      outlined copy of Result<_DataTable, Error>(*a2, v17);
      *a1 = v16;
      *(a1 + 8) = v17;
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);

      a3 = v15;

      v57 = 4;
      goto LABEL_8;
    case 5u:
      v23 = type metadata accessor for DataFrame(0);
      (*(*(v23 - 8) + 16))(a1, a2, v23);
      v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      v25 = v24[12];
      *(a1 + v25) = *(a2 + v25);
      *(a1 + v25 + 8) = *(a2 + v25 + 8);
      v26 = v24[16];
      *(a1 + v26) = *(a2 + v26);
      *(a1 + v26 + 8) = *(a2 + v26 + 8);
      v27 = v24[20];
      *(a1 + v27) = *(a2 + v27);
      *(a1 + v27 + 8) = *(a2 + v27 + 8);

      v57 = 5;
LABEL_8:
      v14 = v57;
      v12 = v66;
      v13 = v66;
      break;
    case 6u:
      v28 = type metadata accessor for DataFrame(0);
      (*(*(v28 - 8) + 16))(a1, a2, v28);
      v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
      v30 = *(v29 + 48);
      *(a1 + v30) = *(a2 + v30);
      *(a1 + v30 + 8) = *(a2 + v30 + 8);
      v31 = *(v29 + 64);
      *(a1 + v31) = *(a2 + v31);
      *(a1 + v31 + 8) = *(a2 + v31 + 8);

      v58 = 6;
LABEL_10:
      v14 = v58;
      v13 = v6;
      v12 = v6;
      break;
  }

  swift_storeEnumTagMultiPayload(a1, v12, v14);
  v32 = a2;
  v33 = a3[5];
  v34 = a1 + v33;
  v61 = v32;
  v35 = v32 + v33;
  v36 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v35, v36) != 1)
  {
    JUMPOUT(0x7D5B7);
  }

  v65 = v36;
  switch(swift_getEnumCaseMultiPayload(v35, v13))
  {
    case 0u:
      v62 = type metadata accessor for URL(0);
      v37 = *(*(v62 - 8) + 16);
      v38 = v34;
      v37(v34, v35, v62);
      v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
      v37(v39[12] + v38, v35 + v39[12], v62);
      v40 = v39[16];
      *(v38 + v40) = *(v35 + v40);
      *(v38 + v40 + 8) = *(v35 + v40 + 8);
      v41 = v39[20];
      *(v38 + v41) = *(v35 + v41);
      *(v38 + v41 + 8) = *(v35 + v41 + 8);

      JUMPOUT(0x7D5B2);
    case 1u:
      JUMPOUT(0x7D6B7);
    case 2u:
      JUMPOUT(0x7D628);
    case 3u:
      v64 = *v35;
      v44 = *(v35 + 8);
      outlined copy of Result<_DataTable, Error>(*v35, v44);
      v43 = v34;
      *v34 = v64;
      *(v34 + 8) = v44;
      *(v34 + 16) = *(v35 + 16);
      *(v34 + 24) = *(v35 + 24);
      *(v34 + 32) = *(v35 + 32);
      *(v34 + 40) = *(v35 + 40);
      *(v34 + 48) = *(v35 + 48);
      *(v34 + 56) = *(v35 + 56);

      v50 = 3;
      v51 = v34;
      goto LABEL_23;
    case 4u:
      v63 = *v35;
      v42 = *(v35 + 8);
      outlined copy of Result<_DataTable, Error>(*v35, v42);
      v43 = v34;
      *v34 = v63;
      *(v34 + 8) = v42;
      *(v34 + 16) = *(v35 + 16);
      *(v34 + 24) = *(v35 + 24);
      *(v34 + 32) = *(v35 + 32);
      *(v34 + 40) = *(v35 + 40);

      v59 = 4;
      goto LABEL_22;
    case 5u:
      v45 = type metadata accessor for DataFrame(0);
      (*(*(v45 - 8) + 16))(v34, v35, v45);
      v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      v47 = v46[12];
      *(v34 + v47) = *(v35 + v47);
      *(v34 + v47 + 8) = *(v35 + v47 + 8);
      v48 = v46[16];
      *(v34 + v48) = *(v35 + v48);
      *(v34 + v48 + 8) = *(v35 + v48 + 8);
      v49 = v46[20];
      *(v34 + v49) = *(v35 + v49);
      *(v34 + v49 + 8) = *(v35 + v49 + 8);
      JUMPOUT(0x7D73FLL);
    case 6u:
      v52 = type metadata accessor for DataFrame(0);
      v43 = v34;
      (*(*(v52 - 8) + 16))(v34, v35, v52);
      v53 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
      v54 = *(v53 + 48);
      *(v34 + v54) = *(v35 + v54);
      *(v34 + v54 + 8) = *(v35 + v54 + 8);
      v55 = *(v53 + 64);
      *(v34 + v55) = *(v35 + v55);
      *(v34 + v55 + 8) = *(v35 + v55 + 8);

      v59 = 6;
LABEL_22:
      v50 = v59;
      v51 = v34;
LABEL_23:
      swift_storeEnumTagMultiPayload(v51, v66, v50);
      swift_storeEnumTagMultiPayload(v43, v65, 1);
      *(a1 + v60[6]) = *(v61 + v60[6]);
      *(a1 + v60[7]) = *(v61 + v60[7]);
      *(a1 + v60[8]) = *(v61 + v60[8]);
      return a1;
  }
}

void *assignWithCopy for MLHandPoseClassifier.PersistentParameters(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = a2;
  v5 = a1;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLHandPoseClassifier.DataSource);
    v6 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, v6);
    v58 = a3;
    switch(EnumCaseMultiPayload)
    {
      case 0u:
        v56 = v6;
        v12 = type metadata accessor for URL(0);
        v60 = *(*(v12 - 8) + 16);
        v60(a1, a2, v12);
        v62 = EnumCaseMultiPayload;
        v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v14 = v12;
        v6 = v56;
        v60(a1 + v13[12], a2 + v13[12], v14);
        v15 = v13[16];
        *(a1 + v15) = *(a2 + v15);
        *(a1 + v15 + 8) = *(a2 + v15 + 8);
        v16 = v13[20];
        *(a1 + v16) = *(a2 + v16);
        goto LABEL_10;
      case 1u:
      case 2u:
        v8 = type metadata accessor for URL(0);
        (*(*(v8 - 8) + 16))(a1, a2, v8);
        goto LABEL_13;
      case 3u:
        v63 = EnumCaseMultiPayload;
        v17 = *a2;
        v18 = v6;
        v19 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v19);
        *a1 = v17;
        *(a1 + 8) = v19;
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = *(a2 + 56);
        goto LABEL_8;
      case 4u:
        v62 = EnumCaseMultiPayload;
        v9 = *a2;
        v10 = v6;
        v11 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v11);
        *a1 = v9;
        *(a1 + 8) = v11;
        v6 = v10;
        a3 = v58;
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        goto LABEL_11;
      case 5u:
        v20 = type metadata accessor for DataFrame(0);
        (*(*(v20 - 8) + 16))(a1, a2, v20);
        v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v22 = v21[12];
        *(a1 + v22) = *(a2 + v22);
        *(a1 + v22 + 8) = *(a2 + v22 + 8);
        v23 = v21[16];
        *(a1 + v23) = *(a2 + v23);
        v63 = EnumCaseMultiPayload;
        *(a1 + v23 + 8) = *(a2 + v23 + 8);
        v24 = v21[20];
        *(a1 + v24) = *(a2 + v24);
        v18 = v6;
        *(a1 + v24 + 8) = *(a2 + v24 + 8);
LABEL_8:

        EnumCaseMultiPayload = v63;

        v6 = v18;
        a3 = v58;
        break;
      case 6u:
        v25 = type metadata accessor for DataFrame(0);
        (*(*(v25 - 8) + 16))(a1, a2, v25);
        v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        v27 = *(v26 + 48);
        *(a1 + v27) = *(a2 + v27);
        *(a1 + v27 + 8) = *(a2 + v27 + 8);
        v16 = *(v26 + 64);
        *(a1 + v16) = *(a2 + v16);
        v62 = EnumCaseMultiPayload;
LABEL_10:
        *(a1 + v16 + 8) = *(a2 + v16 + 8);
LABEL_11:

        EnumCaseMultiPayload = v62;
        break;
    }

LABEL_13:
    swift_storeEnumTagMultiPayload(a1, v6, EnumCaseMultiPayload);
    v28 = a3[5];
    v29 = (v28 + a1);
    v30 = a2 + v28;
    outlined destroy of MLActivityClassifier.ModelParameters(v29, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
    v31 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(v30, v31) == 1)
    {
      v32 = v29;
      v59 = v31;
      v57 = v6;
      v55 = swift_getEnumCaseMultiPayload(v30, v6);
      switch(v55)
      {
        case 0u:
          v37 = type metadata accessor for URL(0);
          v34 = v32;
          v38 = v32;
          v39 = *(*(v37 - 8) + 16);
          v39(v38, v30, v37);
          v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
          v39((v40[12] + v34), v30 + v40[12], v37);
          v41 = v40[16];
          *(v34 + v41) = *(v30 + v41);
          *(v34 + v41 + 8) = *(v30 + v41 + 8);
          v42 = v40[20];
          *(v34 + v42) = *(v30 + v42);
          *(v34 + v42 + 8) = *(v30 + v42 + 8);
          goto LABEL_24;
        case 1u:
        case 2u:
          v33 = type metadata accessor for URL(0);
          v34 = v29;
          (*(*(v33 - 8) + 16))(v29, v30, v33);
          goto LABEL_25;
        case 3u:
          v43 = *v30;
          v44 = *(v30 + 8);
          outlined copy of Result<_DataTable, Error>(*v30, v44);
          *v32 = v43;
          v32[8] = v44;
          *(v32 + 2) = *(v30 + 16);
          *(v32 + 3) = *(v30 + 24);
          *(v32 + 4) = *(v30 + 32);
          JUMPOUT(0x7DC80);
        case 4u:
          v35 = *v30;
          v36 = *(v30 + 8);
          outlined copy of Result<_DataTable, Error>(*v30, v36);
          *v32 = v35;
          v32[8] = v36;
          *(v32 + 2) = *(v30 + 16);
          JUMPOUT(0x7DBB1);
        case 5u:
          v45 = type metadata accessor for DataFrame(0);
          v34 = v29;
          (*(*(v45 - 8) + 16))(v29, v30, v45);
          v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v47 = v46[12];
          *&v29[v47] = *(v30 + v47);
          *&v29[v47 + 8] = *(v30 + v47 + 8);
          v48 = v46[16];
          *&v29[v48] = *(v30 + v48);
          *&v29[v48 + 8] = *(v30 + v48 + 8);
          v49 = v46[20];
          *&v29[v49] = *(v30 + v49);
          *&v29[v49 + 8] = *(v30 + v49 + 8);

          goto LABEL_24;
        case 6u:
          v50 = type metadata accessor for DataFrame(0);
          v34 = v29;
          (*(*(v50 - 8) + 16))(v29, v30, v50);
          v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
          v52 = *(v51 + 48);
          *&v29[v52] = *(v30 + v52);
          *&v29[v52 + 8] = *(v30 + v52 + 8);
          v53 = *(v51 + 64);
          *&v29[v53] = *(v30 + v53);
          *&v29[v53 + 8] = *(v30 + v53 + 8);
LABEL_24:

LABEL_25:
          v5 = a1;
          swift_storeEnumTagMultiPayload(v34, v57, v55);
          swift_storeEnumTagMultiPayload(v34, v59, 1);
          a3 = v58;
          v4 = a2;
          break;
        case 7u:
          JUMPOUT(0x7DDF0);
      }
    }

    else
    {
      memcpy(v29, v30, *(*(v31 - 8) + 64));
      a3 = v58;
      v5 = a1;
    }
  }

  *(v5 + a3[6]) = *(v4 + a3[6]);
  *(v5 + a3[7]) = *(v4 + a3[7]);
  *(v5 + a3[8]) = *(v4 + a3[8]);
  return v5;
}

char *initializeWithTake for MLHandPoseClassifier.PersistentParameters(char *__dst, char *__src, int *a3)
{
  v6 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v36 = a3;
  v39 = v6;
  switch(swift_getEnumCaseMultiPayload(__src, v6))
  {
    case 0u:
      v7 = type metadata accessor for URL(0);
      v37 = *(*(v7 - 8) + 32);
      v37(__dst, __src, v7);
      v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
      v9 = v7;
      a3 = v36;
      v37(&__dst[v8[12]], &__src[v8[12]], v9);
      *&__dst[v8[16]] = *&__src[v8[16]];
      *&__dst[v8[20]] = *&__src[v8[20]];
      v10 = v6;
      v11 = 0;
      goto LABEL_9;
    case 1u:
      v13 = type metadata accessor for URL(0);
      (*(*(v13 - 8) + 32))(__dst, __src, v13);
      v32 = 1;
      goto LABEL_8;
    case 2u:
      v12 = type metadata accessor for URL(0);
      (*(*(v12 - 8) + 32))(__dst, __src, v12);
      v32 = 2;
      goto LABEL_8;
    case 5u:
      v14 = type metadata accessor for DataFrame(0);
      (*(*(v14 - 8) + 32))(__dst, __src, v14);
      v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *&__dst[v15[12]] = *&__src[v15[12]];
      *&__dst[v15[16]] = *&__src[v15[16]];
      *&__dst[v15[20]] = *&__src[v15[20]];
      v32 = 5;
      goto LABEL_8;
    case 6u:
      v16 = type metadata accessor for DataFrame(0);
      (*(*(v16 - 8) + 32))(__dst, __src, v16);
      v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
      *&__dst[*(v17 + 48)] = *&__src[*(v17 + 48)];
      *&__dst[*(v17 + 64)] = *&__src[*(v17 + 64)];
      v32 = 6;
LABEL_8:
      v11 = v32;
      v10 = v6;
LABEL_9:
      swift_storeEnumTagMultiPayload(__dst, v10, v11);
      break;
    default:
      memcpy(__dst, __src, *(*(v6 - 8) + 64));
      break;
  }

  v18 = a3[5];
  v19 = &__dst[v18];
  v20 = &__src[v18];
  v21 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v20, v21) == 1)
  {
    switch(swift_getEnumCaseMultiPayload(v20, v39))
    {
      case 0u:
        v34 = type metadata accessor for URL(0);
        v38 = *(*(v34 - 8) + 32);
        v38(v19, v20, v34);
        v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v38(&v19[v35[12]], &v20[v35[12]], v34);
        *&v19[v35[16]] = *&v20[v35[16]];
        *&v19[v35[20]] = *&v20[v35[20]];
        v22 = v19;
        v23 = v39;
        v24 = 0;
        goto LABEL_20;
      case 1u:
        v26 = type metadata accessor for URL(0);
        (*(*(v26 - 8) + 32))(v19, v20, v26);
        v33 = 1;
        goto LABEL_19;
      case 2u:
        v25 = type metadata accessor for URL(0);
        (*(*(v25 - 8) + 32))(v19, v20, v25);
        v33 = 2;
        goto LABEL_19;
      case 5u:
        v27 = type metadata accessor for DataFrame(0);
        (*(*(v27 - 8) + 32))(v19, v20, v27);
        v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *&v19[v28[12]] = *&v20[v28[12]];
        *&v19[v28[16]] = *&v20[v28[16]];
        *&v19[v28[20]] = *&v20[v28[20]];
        v33 = 5;
        goto LABEL_19;
      case 6u:
        v29 = type metadata accessor for DataFrame(0);
        (*(*(v29 - 8) + 32))(v19, v20, v29);
        v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        *&v19[*(v30 + 48)] = *&v20[*(v30 + 48)];
        *&v19[*(v30 + 64)] = *&v20[*(v30 + 64)];
        v33 = 6;
LABEL_19:
        v24 = v33;
        v22 = v19;
        v23 = v39;
LABEL_20:
        swift_storeEnumTagMultiPayload(v22, v23, v24);
        break;
      default:
        memcpy(v19, v20, *(*(v39 - 8) + 64));
        break;
    }

    swift_storeEnumTagMultiPayload(v19, v21, 1);
  }

  else
  {
    memcpy(v19, v20, *(*(v21 - 8) + 64));
  }

  *&__dst[v36[6]] = *&__src[v36[6]];
  *&__dst[v36[7]] = *&__src[v36[7]];
  *&__dst[v36[8]] = *&__src[v36[8]];
  return __dst;
}

char *assignWithTake for MLHandPoseClassifier.PersistentParameters(char *__dst, char *__src, int *a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLHandPoseClassifier.DataSource);
    v6 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
    v37 = v6;
    switch(swift_getEnumCaseMultiPayload(__src, v6))
    {
      case 0u:
        v7 = type metadata accessor for URL(0);
        v38 = *(*(v7 - 8) + 32);
        v38(__dst, __src, v7);
        v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v38(&__dst[v8[12]], &__src[v8[12]], v7);
        *&__dst[v8[16]] = *&__src[v8[16]];
        *&__dst[v8[20]] = *&__src[v8[20]];
        v9 = v37;
        v10 = 0;
        goto LABEL_10;
      case 1u:
        v12 = type metadata accessor for URL(0);
        (*(*(v12 - 8) + 32))(__dst, __src, v12);
        v32 = 1;
        goto LABEL_9;
      case 2u:
        v11 = type metadata accessor for URL(0);
        (*(*(v11 - 8) + 32))(__dst, __src, v11);
        v32 = 2;
        goto LABEL_9;
      case 5u:
        v13 = type metadata accessor for DataFrame(0);
        (*(*(v13 - 8) + 32))(__dst, __src, v13);
        v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *&__dst[v14[12]] = *&__src[v14[12]];
        *&__dst[v14[16]] = *&__src[v14[16]];
        *&__dst[v14[20]] = *&__src[v14[20]];
        v32 = 5;
        goto LABEL_9;
      case 6u:
        v15 = type metadata accessor for DataFrame(0);
        (*(*(v15 - 8) + 32))(__dst, __src, v15);
        v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        *&__dst[*(v16 + 48)] = *&__src[*(v16 + 48)];
        *&__dst[*(v16 + 64)] = *&__src[*(v16 + 64)];
        v32 = 6;
LABEL_9:
        v10 = v32;
        v9 = v6;
LABEL_10:
        swift_storeEnumTagMultiPayload(__dst, v9, v10);
        break;
      default:
        memcpy(__dst, __src, *(*(v6 - 8) + 64));
        break;
    }

    v39 = a3;
    v17 = a3[5];
    v18 = &__dst[v17];
    v19 = &__src[v17];
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
    v20 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(v19, v20) == 1)
    {
      v34 = v20;
      switch(swift_getEnumCaseMultiPayload(v19, v37))
      {
        case 0u:
          v35 = type metadata accessor for URL(0);
          v36 = *(*(v35 - 8) + 32);
          v36(v18, v19, v35);
          v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
          v36(&v18[v21[12]], &v19[v21[12]], v35);
          *&v18[v21[16]] = *&v19[v21[16]];
          *&v18[v21[20]] = *&v19[v21[20]];
          v22 = v18;
          v23 = v37;
          v24 = 0;
          goto LABEL_21;
        case 1u:
          v26 = type metadata accessor for URL(0);
          (*(*(v26 - 8) + 32))(v18, v19, v26);
          v33 = 1;
          goto LABEL_20;
        case 2u:
          v25 = type metadata accessor for URL(0);
          (*(*(v25 - 8) + 32))(v18, v19, v25);
          v33 = 2;
          goto LABEL_20;
        case 5u:
          v27 = type metadata accessor for DataFrame(0);
          (*(*(v27 - 8) + 32))(v18, v19, v27);
          v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          *&v18[v28[12]] = *&v19[v28[12]];
          *&v18[v28[16]] = *&v19[v28[16]];
          *&v18[v28[20]] = *&v19[v28[20]];
          v33 = 5;
          goto LABEL_20;
        case 6u:
          v29 = type metadata accessor for DataFrame(0);
          (*(*(v29 - 8) + 32))(v18, v19, v29);
          v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
          *&v18[*(v30 + 48)] = *&v19[*(v30 + 48)];
          *&v18[*(v30 + 64)] = *&v19[*(v30 + 64)];
          v33 = 6;
LABEL_20:
          v24 = v33;
          v22 = v18;
          v23 = v37;
LABEL_21:
          swift_storeEnumTagMultiPayload(v22, v23, v24);
          break;
        default:
          memcpy(v18, v19, *(*(v37 - 8) + 64));
          break;
      }

      a3 = v39;
      swift_storeEnumTagMultiPayload(v18, v34, 1);
    }

    else
    {
      memcpy(v18, v19, *(*(v20 - 8) + 64));
      a3 = v39;
    }
  }

  *&__dst[a3[6]] = *&__src[a3[6]];
  *&__dst[a3[7]] = *&__src[a3[7]];
  *&__dst[a3[8]] = *&__src[a3[8]];
  return __dst;
}

uint64_t sub_7E651(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  if (*(*(v5 - 8) + 84) != a2)
  {
    v5 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
    v4 = *(a3 + 20) + a1;
  }

  return __swift_getEnumTagSinglePayload(v4, a2, v5);
}

uint64_t sub_7E6B8(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  if (*(*(v7 - 8) + 84) != a3)
  {
    v7 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
    v6 = *(a4 + 20) + a1;
  }

  return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
}

uint64_t type metadata accessor for MLHandPoseClassifier.PersistentParameters(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLHandPoseClassifier.PersistentParameters;
  if (!type metadata singleton initialization cache for MLHandPoseClassifier.PersistentParameters)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLHandPoseClassifier.PersistentParameters);
  }

  return result;
}

uint64_t type metadata completion function for MLHandPoseClassifier.PersistentParameters(uint64_t a1)
{
  result = type metadata accessor for MLHandPoseClassifier.DataSource(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    result = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(319);
    if (v3 <= 0x3F)
    {
      v4[1] = *(result - 8) + 64;
      v4[2] = &value witness table for Builtin.Int64 + 64;
      v4[3] = &value witness table for Builtin.Int64 + 64;
      v4[4] = &value witness table for Builtin.Int64 + 64;
      v4[5] = &value witness table for () + 64;
      swift_initStructMetadata(a1, 256, 6, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

NSURL *MLHandPoseClassifier.PersistentParameters.init(sessionDirectory:)(uint64_t *a1)
{
  v107 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandPoseClassifier.ModelParameters.ValidationData?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v98 = &v94;
  v104 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  v6 = *(*(v104 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v95 = &v94;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandPoseClassifier.DataSource?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v96 = &v94;
  v101 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v12 = *(*(v101 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v97 = &v94;
  v117 = type metadata accessor for URL(0);
  v15 = *(v117 - 8);
  v16 = *(v15 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v102 = &v94;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v100 = &v94;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v111 = &v94;
  v23 = alloca(v16);
  v24 = alloca(v16);
  v25 = alloca(v16);
  v26 = alloca(v16);
  v118 = &v94;
  URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
  URL.appendingPathComponent(_:)(0xD000000000000010, ("ObjectDetectorMetrics." + 0x8000000000000000));
  v27 = Data.init(contentsOf:options:)(&v94, 0);
  v109 = v2;
  if (v2)
  {
    v29 = v117;
    v30 = *(v15 + 8);
    v30(a1, v117);
    v30(&v94, v29);
LABEL_3:
    v31 = v118;
    v32 = v29;
LABEL_4:
    v30(v31, v32);
    return __stack_chk_guard;
  }

  v33 = v28;
  v103 = 0xD00000000000002BLL;
  v115 = a1;
  v105 = v15;
  v34 = v27;
  v113 = *(v15 + 8);
  v113(&v94, v117);
  v35 = objc_opt_self(NSPropertyListSerialization);
  v36.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v114 = v33;
  isa = v36.super.isa;
  v123[0] = 0;
  v38 = [v35 propertyListWithData:v36.super.isa options:0 format:0 error:v123];
  v39 = v38;

  v40 = v123[0];
  if (!v39)
  {
    v66 = v40;
    _convertNSErrorToError(_:)(v40);

    swift_willThrow();
    outlined consume of Data._Representation(v34, v114);
    v67 = v117;
    v68 = v113;
    v113(v115, v117);
LABEL_19:
    v71 = v118;
LABEL_26:
    v68(v71, v67);
    return __stack_chk_guard;
  }

  v112 = v34;
  _bridgeAnyObjectToAny(_:)(v39);
  swift_unknownObjectRelease(v39);
  outlined init with copy of Any(v140, v123);
  v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  if (!swift_dynamicCast(__src, v123, &type metadata for Any + 8, v41, 6))
  {
    v69 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v69, 0, 0);
    *v70 = 0xD000000000000037;
    *(v70 + 8) = "parameters.plist" + 0x8000000000000000;
    *(v70 + 16) = 0;
    *(v70 + 32) = 0;
    *(v70 + 48) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v112, v114);
    v67 = v117;
    v68 = v113;
    v113(v115, v117);
    __swift_destroy_boxed_opaque_existential_1Tm(v140);
    goto LABEL_19;
  }

  v106 = v41;
  v42 = *&__src[0];
  specialized Dictionary.subscript.getter(0x69735F6863746162, 0xEA0000000000657ALL, *&__src[0]);
  v43 = v118;
  if (!v124)
  {
    v42;
    _s11TabularData9AnyColumnVSgWOhTm_0(v123, &demangling cache variable for type metadata for Any?);
LABEL_25:
    v72 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v72, 0, 0);
    *v73 = 0xD00000000000003FLL;
    *(v73 + 8) = "labeled_directories" + 0x8000000000000000;
    *(v73 + 16) = 0;
    *(v73 + 32) = 0;
    *(v73 + 48) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v112, v114);
    v67 = v117;
    v68 = v113;
    v113(v115, v117);
    __swift_destroy_boxed_opaque_existential_1Tm(v140);
    v71 = v43;
    goto LABEL_26;
  }

  v116 = v42;
  if (!swift_dynamicCast(__src, v123, &type metadata for Any + 8, &type metadata for Int, 6))
  {
    v116;
    goto LABEL_25;
  }

  v110 = &type metadata for Any + 8;
  v44 = *&__src[0];
  v45 = v116;
  specialized Dictionary.subscript.getter(0x726574695F78616DLL, 0xEE00736E6F697461, v116);
  if (!v124)
  {
    goto LABEL_22;
  }

  if (!swift_dynamicCast(__src, v123, v110, &type metadata for Int, 6))
  {
LABEL_23:
    v45;
    goto LABEL_24;
  }

  v46 = *&__src[0];
  specialized Dictionary.subscript.getter(0xD000000000000014, ("Empty training input." + 0x8000000000000000), v45);
  if (!v124)
  {
LABEL_22:
    v45;
    _s11TabularData9AnyColumnVSgWOhTm_0(v123, &demangling cache variable for type metadata for Any?);
LABEL_24:
    v43 = v118;
    goto LABEL_25;
  }

  if (!swift_dynamicCast(__src, v123, v110, &type metadata for Int, 6))
  {
    goto LABEL_23;
  }

  v47 = type metadata accessor for MLHandPoseClassifier.PersistentParameters(0);
  v48 = *(v47 + 24);
  v108 = v47;
  v49 = *(v47 + 28);
  v99 = *&__src[0];
  v50 = v107;
  *(v107 + v48) = v44;
  *(v50 + v49) = v46;
  v51 = v111;
  URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
  specialized Dictionary.subscript.getter(0x676E696E69617274, 0xE800000000000000, v116);
  if (v139)
  {
    v52 = swift_dynamicCast(v123, v138, v110, v106, 6);
    v53 = v100;
    if (v52)
    {
      v54 = v123[0];
      v55 = v102;
      v56 = v51;
      v57 = v117;
      (*(v105 + 16))(v102, v56, v117);
      v58 = v54;
      v59 = v96;
      MLHandPoseClassifier.DataSource.init(dictionary:tableFile:)(v58, v55);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v59, 1, v101);
      v61 = v115;
      v62 = v107;
      if (EnumTagSinglePayload == 1)
      {
        v116;
        _s11TabularData9AnyColumnVSgWOhTm_0(v59, &demangling cache variable for type metadata for MLHandPoseClassifier.DataSource?);
        v63 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v63, 0, 0);
        *v64 = 0xD000000000000035;
        *(v64 + 8) = "o load validation data." + 0x8000000000000000;
        *(v64 + 16) = 0;
        *(v64 + 32) = 0;
        *(v64 + 48) = 0;
        swift_willThrow();
        outlined consume of Data._Representation(v112, v114);
        v65 = v113;
        v113(v61, v57);
        v65(v111, v57);
        __swift_destroy_boxed_opaque_existential_1Tm(v140);
        v65(v118, v57);
        return __stack_chk_guard;
      }

      v78 = v97;
      outlined init with take of MLClassifierMetrics(v59, v97, type metadata accessor for MLHandPoseClassifier.DataSource);
      outlined init with take of MLClassifierMetrics(v78, v62, type metadata accessor for MLHandPoseClassifier.DataSource);
      goto LABEL_34;
    }

    v75 = v117;
  }

  else
  {
    _s11TabularData9AnyColumnVSgWOhTm_0(v138, &demangling cache variable for type metadata for Any?);
    v75 = v117;
    v53 = v100;
  }

  (*(v105 + 16))(v53, v111, v75);
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
  LOBYTE(v123[0]) = 1;
  v123[1] = &stru_20 + 12;
  v123[2] = 0xE100000000000000;
  v124 = 0;
  v125 = 0xE000000000000000;
  v126 = 92;
  v127 = 0xE100000000000000;
  v128 = 1;
  v129 = 34;
  v130 = 0xE100000000000000;
  v131 = 1;
  v132 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
  v133 = 10;
  v134 = 0xE100000000000000;
  v135 = 0;
  v136 = 1;
  v137 = 0;
  outlined retain of MLDataTable.ParsingOptions(__src);
  outlined release of MLDataTable.ParsingOptions(v123);
  memcpy(__dst, __src, sizeof(__dst));
  v76 = v109;
  MLDataTable.init(contentsOf:options:)(v53, __dst);
  v109 = v76;
  if (v76)
  {
    outlined consume of Data._Representation(v112, v114);
    v116;
    v30 = v113;
    v113(v115, v75);
    v30(v111, v75);
    __swift_destroy_boxed_opaque_existential_1Tm(v140);
    v31 = v118;
    v32 = v75;
    goto LABEL_4;
  }

  v77 = v121;
  v62 = v107;
  *v107 = v120;
  *(v62 + 8) = v77;
  v62[2] = 0x7461506567616D69;
  v62[3] = 0xE900000000000068;
  v62[4] = 0x6C6562616CLL;
  v62[5] = 0xE500000000000000;
  swift_storeEnumTagMultiPayload(v62, v101, 4);
LABEL_34:
  specialized Dictionary.subscript.getter(0x69746164696C6176, 0xEA00000000006E6FLL, v116);
  v79 = v95;
  v80 = v110;
  if (!v124)
  {
    _s11TabularData9AnyColumnVSgWOhTm_0(v123, &demangling cache variable for type metadata for Any?);
    goto LABEL_39;
  }

  if (!swift_dynamicCast(__src, v123, v110, v106, 6))
  {
LABEL_39:
    v87 = v108;
    swift_storeEnumTagMultiPayload(v62 + *(v108 + 20), v104, 2);
    goto LABEL_40;
  }

  v81 = *&__src[0];
  v82 = v102;
  (*(v105 + 16))(v102, v118, v117);
  v83 = v81;
  v84 = v98;
  MLHandPoseClassifier.ModelParameters.ValidationData.init(dictionary:tableFile:)(v83, v82);
  if (__swift_getEnumTagSinglePayload(v84, 1, v104) == 1)
  {
    v116;
    _s11TabularData9AnyColumnVSgWOhTm_0(v84, &demangling cache variable for type metadata for MLHandPoseClassifier.ModelParameters.ValidationData?);
    v103 += 12;
    v85 = "ion Classification algorithm.";
    v86 = 0;
    goto LABEL_46;
  }

  outlined init with take of MLClassifierMetrics(v84, v79, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
  v87 = v108;
  outlined init with take of MLClassifierMetrics(v79, v62 + *(v108 + 20), type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
  v80 = v110;
LABEL_40:
  *(v62 + *(v87 + 32)) = v99;
  v88 = v116;
  specialized Dictionary.subscript.getter(0x687469726F676C61, 0xE90000000000006DLL, v116);
  v88;
  if (v124)
  {
    if (swift_dynamicCast(__src, v123, v80, v106, 6))
    {
      MLHandPoseClassifier.ModelParameters.ModelAlgorithmType.init(dictionary:)(*&__src[0]);
      if (LOBYTE(v123[0]) != 1)
      {
        outlined consume of Data._Representation(v112, v114);
        v29 = v117;
        v30 = v113;
        v113(v115, v117);
        v30(v111, v29);
        __swift_destroy_boxed_opaque_existential_1Tm(v140);
        goto LABEL_3;
      }
    }
  }

  else
  {
    _s11TabularData9AnyColumnVSgWOhTm_0(v123, &demangling cache variable for type metadata for Any?);
  }

  v86 = 1;
  v85 = "labeled_image_data";
LABEL_46:
  v89 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v89, 0, 0);
  *v90 = v103;
  *(v90 + 8) = v85 | 0x8000000000000000;
  *(v90 + 16) = 0;
  *(v90 + 32) = 0;
  *(v90 + 48) = 0;
  swift_willThrow();
  outlined consume of Data._Representation(v112, v114);
  v91 = v117;
  v92 = v113;
  v113(v115, v117);
  v92(v111, v91);
  __swift_destroy_boxed_opaque_existential_1Tm(v140);
  v92(v118, v91);
  v93 = v107;
  outlined destroy of MLActivityClassifier.ModelParameters(v107, type metadata accessor for MLHandPoseClassifier.DataSource);
  if (v86)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v93 + *(v108 + 20), type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
  }

  return __stack_chk_guard;
}

uint64_t MLHandPoseClassifier.DataSource.init(dictionary:tableFile:)(uint64_t *a1, uint64_t a2)
{
  v85 = a2;
  v3 = v2;
  v84 = type metadata accessor for URL(0);
  v4 = *(v84 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v81 = &v52;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v10 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  if (!a1[2])
  {
    a1;
LABEL_20:
    v28 = v85;
    v29 = v84;
LABEL_21:
    (*(v4 + 8))(v28, v29);
    goto LABEL_22;
  }

  v78 = &v52;
  v87 = v4;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(1684957547, 0xE400000000000000);
  if ((v15 & 1) == 0)
  {
    a1;
LABEL_19:
    v4 = v87;
    goto LABEL_20;
  }

  v83 = v10;
  outlined init with copy of Any(a1[7] + 32 * v14, v54);
  *&v79 = &type metadata for Any + 8;
  if (!swift_dynamicCast(__src, v54, &type metadata for Any + 8, &type metadata for String, 6))
  {
    a1;
    v10 = v83;
    goto LABEL_19;
  }

  v86 = v3;
  v16 = __src[0];
  if (*&__src[0] ^ 0x726F746365726964 | *(&__src[0] + 1) ^ 0xE900000000000079 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x726F746365726964, 0xE900000000000079, *&__src[0], *(&__src[0] + 1), 0) & 1) == 0)
  {
    if (!(v16 ^ 0xD000000000000013 | *(&v16 + 1) ^ (&aLabeledDirecto[-32] | 0x8000000000000000)) || (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000013, &aLabeledDirecto[-32] | 0x8000000000000000, v16, *(&v16 + 1), 0) & 1) != 0)
    {
      SBYTE8(v16);
      specialized Dictionary.subscript.getter(1752457584, 0xE400000000000000, a1);
      a1;
      if (v57)
      {
        v32 = swift_dynamicCast(__src, v54, v79, &type metadata for String, 6);
        v3 = v86;
        v10 = v83;
        v4 = v87;
        if (v32)
        {
          v33 = BYTE8(__src[0]);
          v22 = v78;
          URL.init(fileURLWithPath:)(*&__src[0], *(&__src[0] + 1));
          v33;
          (*(v4 + 8))(v85, v84);
          swift_storeEnumTagMultiPayload(v22, v10, 1);
          goto LABEL_30;
        }

        goto LABEL_38;
      }

      _s11TabularData9AnyColumnVSgWOhTm_0(v54, &demangling cache variable for type metadata for Any?);
      v3 = v86;
      v10 = v83;
      goto LABEL_37;
    }

    if (!(v16 ^ 0x5F64656C6562616CLL | *(&v16 + 1) ^ 0xED000073656C6966) || (_stringCompareWithSmolCheck(_:_:expecting:)(0x5F64656C6562616CLL, 0xED000073656C6966, v16, *(&v16 + 1), 0) & 1) != 0)
    {
      SBYTE8(v16);
      specialized Dictionary.subscript.getter(1752457584, 0xE400000000000000, a1);
      a1;
      v3 = v86;
      v10 = v83;
      if (v57)
      {
        v34 = swift_dynamicCast(__src, v54, v79, &type metadata for String, 6);
        v4 = v87;
        if (v34)
        {
          v35 = BYTE8(__src[0]);
          v22 = v78;
          URL.init(fileURLWithPath:)(*&__src[0], *(&__src[0] + 1));
          v35;
          (*(v4 + 8))(v85, v84);
          swift_storeEnumTagMultiPayload(v22, v10, 2);
          goto LABEL_30;
        }

        goto LABEL_38;
      }

      _s11TabularData9AnyColumnVSgWOhTm_0(v54, &demangling cache variable for type metadata for Any?);
LABEL_37:
      v4 = v87;
LABEL_38:
      v29 = v84;
      v28 = v85;
      goto LABEL_21;
    }

    if (!(v16 ^ 0xD000000000000016 | *(&v16 + 1) ^ (&aLabeledKeypoin[-32] | 0x8000000000000000)) || (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000016, &aLabeledKeypoin[-32] | 0x8000000000000000, v16, *(&v16 + 1), 0) & 1) != 0)
    {
      SBYTE8(v16);
      (*(v87 + 16))(&v52, v85, v84);
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
      v54[0] = 1;
      v55 = 44;
      v56 = 0xE100000000000000;
      v57 = 0;
      v58 = 0xE000000000000000;
      v59 = 92;
      v60 = 0xE100000000000000;
      v61 = 1;
      v62 = 34;
      v63 = 0xE100000000000000;
      v64 = 1;
      v65 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
      v66 = 10;
      v67 = 0xE100000000000000;
      v68 = 0;
      v69 = 1;
      v70 = 0;
      outlined retain of MLDataTable.ParsingOptions(__src);
      outlined release of MLDataTable.ParsingOptions(v54);
      memcpy(__dst, __src, sizeof(__dst));
      MLDataTable.init(contentsOf:options:)(&v52, __dst);
      v76 = v80;
      LOBYTE(v77) = BYTE8(v80);
      static MLHandPoseClassifier.reformatKeypointsDataTable(table:featureColumn:)(&v76, 0x746E696F7079656BLL, 0xE900000000000073);
      v10 = v83;
      specialized Dictionary.subscript.getter(0xD000000000000011, ("labeled_keypoints_data" + 0x8000000000000000), a1);
      v39 = v87;
      if (__dst[3])
      {
        if (swift_dynamicCast(&v80, __dst, v79, &type metadata for String, 6))
        {
          v40 = *(&v80 + 1);
          v41 = v80;
          specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
          if (__dst[3])
          {
            if (swift_dynamicCast(&v80, __dst, v79, &type metadata for String, 6))
            {
              v42 = *(&v80 + 1);
              v81 = v80;
              specialized Dictionary.subscript.getter(0x5F65727574616566, 0xEE006E6D756C6F63, a1);
              a1;
              (*(v87 + 8))(v85, v84);
              if (__dst[3])
              {
                if (swift_dynamicCast(&v80, __dst, v79, &type metadata for String, 6))
                {
                  v43 = v80;
                  v82 = v77;
                  v22 = v78;
                  *v78 = v76;
                  *(v22 + 8) = v82;
                  *(v22 + 16) = v41;
                  *(v22 + 24) = v40;
                  *(v22 + 32) = v81;
                  *(v22 + 40) = v42;
                  *(v22 + 48) = v43;
                  v51 = 3;
LABEL_73:
                  v27 = v51;
                  v25 = v22;
                  v10 = v83;
                  v26 = v83;
                  goto LABEL_15;
                }

                v42;
                v40;
              }

              else
              {
                v42;
                v40;
                _s11TabularData9AnyColumnVSgWOhTm_0(__dst, &demangling cache variable for type metadata for Any?);
              }

              v3 = v86;
              v10 = v83;
LABEL_87:
              outlined consume of Result<_DataTable, Error>(v76, v77);
              goto LABEL_22;
            }

            a1;
            v40;
          }

          else
          {
            a1;
            v40;
            _s11TabularData9AnyColumnVSgWOhTm_0(__dst, &demangling cache variable for type metadata for Any?);
          }

          v3 = v86;
          (*(v87 + 8))(v85, v84);
          goto LABEL_87;
        }

        a1;
      }

      else
      {
        a1;
        _s11TabularData9AnyColumnVSgWOhTm_0(__dst, &demangling cache variable for type metadata for Any?);
      }

      v3 = v86;
      (*(v39 + 8))(v85, v84);
      goto LABEL_87;
    }

    v44 = &aLabeledImageDa[-32] | 0x8000000000000000;
    v45 = v87;
    if (v16 - __PAIR128__(v44, 0xD000000000000012) == 0)
    {
      SBYTE8(v16);
    }

    else
    {
      v46 = _stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000012, v44, v16, *(&v16 + 1), 0);
      SBYTE8(v16);
      if ((v46 & 1) == 0)
      {
        (*(v45 + 8))(v85, v84);
        goto LABEL_78;
      }
    }

    v47 = v81;
    (*(v45 + 16))(v81, v85, v84);
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
    v54[0] = 1;
    v55 = 44;
    v56 = 0xE100000000000000;
    v57 = 0;
    v58 = 0xE000000000000000;
    v59 = 92;
    v60 = 0xE100000000000000;
    v61 = 1;
    v62 = 34;
    v63 = 0xE100000000000000;
    v64 = 1;
    v65 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
    v66 = 10;
    v67 = 0xE100000000000000;
    v68 = 0;
    v69 = 1;
    v70 = 0;
    outlined retain of MLDataTable.ParsingOptions(__src);
    outlined release of MLDataTable.ParsingOptions(v54);
    memcpy(__dst, __src, sizeof(__dst));
    MLDataTable.init(contentsOf:options:)(v47, __dst);
    v48 = v80;
    v49 = BYTE8(v80);
    specialized Dictionary.subscript.getter(0x6F635F6567616D69, 0xEC0000006E6D756CLL, a1);
    if (__dst[3])
    {
      if (swift_dynamicCast(&v80, __dst, v79, &type metadata for String, 6))
      {
        v81 = *(&v80 + 1);
        v75 = v80;
        specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
        a1;
        (*(v87 + 8))(v85, v84);
        if (!__dst[3])
        {
          outlined consume of Result<_DataTable, Error>(v48, v49);
          v81;
          _s11TabularData9AnyColumnVSgWOhTm_0(__dst, &demangling cache variable for type metadata for Any?);
          goto LABEL_48;
        }

        if (swift_dynamicCast(&v80, __dst, v79, &type metadata for String, 6))
        {
          v50 = v80;
          v22 = v78;
          *v78 = v48;
          *(v22 + 8) = v49 & 1;
          *(v22 + 16) = v75;
          *(v22 + 24) = v81;
          *(v22 + 32) = v50;
          v51 = 4;
          goto LABEL_73;
        }

        outlined consume of Result<_DataTable, Error>(v48, v49);
        LOBYTE(a1) = v81;
LABEL_78:
        a1;
        goto LABEL_48;
      }

      outlined consume of Result<_DataTable, Error>(v48, v49);
      a1;
    }

    else
    {
      outlined consume of Result<_DataTable, Error>(v48, v49);
      a1;
      _s11TabularData9AnyColumnVSgWOhTm_0(__dst, &demangling cache variable for type metadata for Any?);
    }

    v37 = v85;
    v38 = v84;
    v36 = v87;
LABEL_47:
    (*(v36 + 8))(v37, v38);
LABEL_48:
    v30 = 1;
    v3 = v86;
    goto LABEL_49;
  }

  SBYTE8(v16);
  v3 = v86;
  specialized Dictionary.subscript.getter(1752457584, 0xE400000000000000, a1);
  v10 = v83;
  if (v57)
  {
    if (swift_dynamicCast(__src, v54, v79, &type metadata for String, 6))
    {
      v17 = *(&__src[0] + 1);
      v18 = *&__src[0];
      specialized Dictionary.subscript.getter(0x697461746F6E6E61, 0xEF656C69665F6E6FLL, a1);
      if (v57)
      {
        if (swift_dynamicCast(__src, v54, v79, &type metadata for String, 6))
        {
          v19 = *(&__src[0] + 1);
          v75 = *&__src[0];
          specialized Dictionary.subscript.getter(0x6F635F6567616D69, 0xEC0000006E6D756CLL, a1);
          if (v57)
          {
            v81 = v19;
            if (swift_dynamicCast(__src, v54, v79, &type metadata for String, 6))
            {
              v20 = *(&__src[0] + 1);
              v72 = *&__src[0];
              specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
              a1;
              if (v57)
              {
                if (swift_dynamicCast(__src, v54, v79, &type metadata for String, 6))
                {
                  v79 = __src[0];
                  v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
                  v22 = v78;
                  v73 = v20;
                  v23 = *(v21 + 64);
                  v74 = *(v21 + 80);
                  URL.init(fileURLWithPath:)(v18, v17);
                  v17;
                  v24 = v81;
                  URL.init(fileURLWithPath:)(v75, v81);
                  v24;
                  (*(v87 + 8))(v85, v84);
                  *(v22 + v23) = v72;
                  *(v22 + v23 + 8) = v73;
                  *(v22 + v74) = v79;
                  v25 = v22;
                  v10 = v83;
                  v26 = v83;
                  v27 = 0;
LABEL_15:
                  swift_storeEnumTagMultiPayload(v25, v26, v27);
                  v3 = v86;
LABEL_30:
                  outlined init with take of MLClassifierMetrics(v22, v3, type metadata accessor for MLHandPoseClassifier.DataSource);
                  v30 = 0;
                  return __swift_storeEnumTagSinglePayload(v3, v30, 1, v10);
                }

                v20;
                v81;
                v17;
              }

              else
              {
                v20;
                v81;
                v17;
                _s11TabularData9AnyColumnVSgWOhTm_0(v54, &demangling cache variable for type metadata for Any?);
              }

              v3 = v86;
              goto LABEL_35;
            }

            a1;
            v81;
            v17;
          }

          else
          {
            a1;
            v19;
            v17;
            _s11TabularData9AnyColumnVSgWOhTm_0(v54, &demangling cache variable for type metadata for Any?);
          }

          v36 = v87;
          v37 = v85;
          v38 = v84;
          goto LABEL_47;
        }

        a1;
        v17;
      }

      else
      {
        a1;
        v17;
        _s11TabularData9AnyColumnVSgWOhTm_0(v54, &demangling cache variable for type metadata for Any?);
      }

LABEL_35:
      (*(v87 + 8))(v85, v84);
      v30 = 1;
LABEL_49:
      v10 = v83;
      return __swift_storeEnumTagSinglePayload(v3, v30, 1, v10);
    }

    a1;
  }

  else
  {
    a1;
    _s11TabularData9AnyColumnVSgWOhTm_0(v54, &demangling cache variable for type metadata for Any?);
  }

  (*(v87 + 8))(v85, v84);
LABEL_22:
  v30 = 1;
  return __swift_storeEnumTagSinglePayload(v3, v30, 1, v10);
}

uint64_t MLHandPoseClassifier.ModelParameters.ValidationData.init(dictionary:tableFile:)(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = v2;
  v4 = type metadata accessor for URL(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v39 = &v37;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandPoseClassifier.DataSource?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v38 = &v37;
  v12 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v40 = &v37;
  v52 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
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
  v49 = (&type metadata for Any + 8);
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
            MLHandPoseClassifier.DataSource.init(dictionary:tableFile:)(v49, v28);
            (*(v5 + 8))(v50, v4);
            v30 = v29;
            v22 = 1;
            if (__swift_getEnumTagSinglePayload(v30, 1, v12) == 1)
            {
              _s11TabularData9AnyColumnVSgWOhTm_0(v30, &demangling cache variable for type metadata for MLHandPoseClassifier.DataSource?);
              v25 = 1;
              v3 = v51;
              goto LABEL_11;
            }

            v34 = v30;
            v35 = v40;
            outlined init with take of MLClassifierMetrics(v34, v40, type metadata accessor for MLHandPoseClassifier.DataSource);
            v36 = v35;
            v24 = v47;
            outlined init with take of MLClassifierMetrics(v36, v47, type metadata accessor for MLHandPoseClassifier.DataSource);
LABEL_29:
            v23 = v52;
            goto LABEL_7;
          }
        }

        else
        {
          _s11TabularData9AnyColumnVSgWOhTm_0(&v41, &demangling cache variable for type metadata for Any?);
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
          _s11TabularData9AnyColumnVSgWOhTm_0(&v41, &demangling cache variable for type metadata for Any?);
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
  v22 = 2;
  v23 = v52;
  v24 = v47;
LABEL_7:
  swift_storeEnumTagMultiPayload(v24, v23, v22);
  v3 = v51;
  outlined init with take of MLClassifierMetrics(v24, v51, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
  v25 = 0;
  return __swift_storeEnumTagSinglePayload(v3, v25, 1, v23);
}

uint64_t MLHandPoseClassifier.ModelParameters.ModelAlgorithmType.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  if (!*(a1 + 16) || (v3 = specialized __RawDictionaryStorage.find<A>(_:)(0x687469726F676C61, 0xE90000000000006DLL), (v4 & 1) == 0))
  {
    v10 = 0;
    v9 = 0;
    a1;
    goto LABEL_8;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v3, &v9);
  a1;
  if (!*(&v10 + 1))
  {
LABEL_8:
    result = _s11TabularData9AnyColumnVSgWOhTm_0(&v9, &demangling cache variable for type metadata for Any?);
    goto LABEL_9;
  }

  result = swift_dynamicCast(&v11, &v9, &type metadata for Any + 8, &type metadata for String, 6);
  if (!result)
  {
LABEL_9:
    v7 = 1;
    goto LABEL_10;
  }

  v6 = v12;
  if (v11 ^ 0x6E6367 | v12 ^ 0xE300000000000000)
  {
    v7 = 0;
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)(7234407, 0xE300000000000000, v11, v12, 0);
    result = v6;
    if (v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  result = v12;
  v7 = 0;
LABEL_10:
  *v2 = v7;
  return result;
}

NSURL *MLHandPoseClassifier.PersistentParameters.save(toSessionDirectory:)(uint64_t a1, __m128 a2)
{
  v68 = v2;
  v4 = v3;
  v67 = a1;
  v5 = *(*(type metadata accessor for MLHandPoseClassifier.DataSource(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v62 = v55;
  v58 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  v8 = *(*(v58 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v59 = v55;
  v73 = type metadata accessor for URL(0);
  v63 = *(v73 - 8);
  v11 = *(v63 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v66 = v55;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v57 = v55;
  v16 = alloca(v11);
  v17 = alloca(v11);
  v56 = v55;
  v69 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  v18 = *(*(v69 - 1) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v65 = v55;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  inited = swift_initStackObject(v23, v76);
  *(inited + 16) = 6;
  *(inited + 24) = 12;
  *(inited + 32) = 0x676E696E69617274;
  *(inited + 40) = 0xE800000000000000;
  v25 = MLHandPoseClassifier.DataSource.dictionary.getter();
  v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  *(inited + 72) = v70;
  *(inited + 48) = v25;
  *(inited + 80) = 0x69746164696C6176;
  *(inited + 88) = 0xEA00000000006E6FLL;
  v26 = type metadata accessor for MLHandPoseClassifier.PersistentParameters(0);
  v60 = v4 + v26[5];
  outlined init with copy of MLTrainingSessionParameters(v60, v55, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
  v72 = *(v4 + v26[6]);
  v71 = *(v4 + v26[7]);
  v27 = v26[8];
  v64 = v4;
  v61 = v27;
  v28 = *(v4 + v27);
  *&v55[v69[7]] = v28;
  v29 = MLHandPoseClassifier.ModelParameters.ValidationData.dictionary.getter();
  outlined destroy of MLActivityClassifier.ModelParameters(v55, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
  v30 = v70;
  *(inited + 120) = v70;
  *(inited + 96) = v29;
  *(inited + 128) = 0x69735F6863746162;
  *(inited + 136) = 0xEA0000000000657ALL;
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = v72;
  strcpy((inited + 176), "max_iterations");
  *(inited + 191) = -18;
  *(inited + 216) = &type metadata for Int;
  *(inited + 192) = v71;
  *(inited + 224) = 0xD000000000000014;
  *(inited + 232) = "Empty training input." + 0x8000000000000000;
  *(inited + 264) = &type metadata for Int;
  *(inited + 240) = v28;
  *(inited + 272) = 0x687469726F676C61;
  *(inited + 280) = 0xE90000000000006DLL;
  v31 = MLHandActionClassifier.ModelParameters.ModelAlgorithmType.dictionary.getter();
  *(inited + 312) = v30;
  *(inited + 288) = v31;
  LOBYTE(inited) = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  v32 = objc_opt_self(NSPropertyListSerialization);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  inited;
  v74 = 0;
  v34 = [v32 dataWithPropertyList:isa format:200 options:0 error:&v74];
  v35 = v34;

  v36 = v74;
  if (v35)
  {
    v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)(v35);
    v39 = v38;

    v40 = v56;
    URL.appendingPathComponent(_:)(0xD000000000000010, ("ObjectDetectorMetrics." + 0x8000000000000000));
    v41 = v68;
    Data.write(to:options:)(v40, 0, v37, v39);
    if (v41)
    {
      (*(v63 + 8))(v40, v73);
      v42 = v37;
      v43 = v39;
    }

    else
    {
      v72 = v37;
      v71 = v39;
      v70 = *(v63 + 8);
      *a2.i64 = v70(v40, v73);
      MLHandPoseClassifier.DataSource.table.getter(a2);
      v45 = v75;
      if (v75 != -1)
      {
        v68 = v74;
        v75 &= 1u;
        v46 = v57;
        URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
        MLDataTable.write(to:)(v46);
        v70(v46, v73);
        outlined consume of MLDataTable?(v68, v45);
      }

      v47 = v65;
      outlined init with copy of MLTrainingSessionParameters(v60, v65, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
      *(v47 + v69[7]) = *(v64 + v61);
      v48 = v47;
      v49 = v59;
      outlined init with copy of MLTrainingSessionParameters(v48, v59, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
      if (swift_getEnumCaseMultiPayload(v49, v58) == 1)
      {
        v50 = v62;
        outlined init with take of MLClassifierMetrics(v49, v62, type metadata accessor for MLHandPoseClassifier.DataSource);
        MLHandPoseClassifier.DataSource.table.getter(a2);
        outlined destroy of MLActivityClassifier.ModelParameters(v50, type metadata accessor for MLHandPoseClassifier.DataSource);
        v51 = v75;
        v52 = v74;
      }

      else
      {
        v51 = -1;
        v52 = 0;
      }

      v53 = v66;
      outlined destroy of MLActivityClassifier.ModelParameters(v65, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
      if (v51 != -1)
      {
        v74 = v52;
        v75 = v51 & 1;
        v69 = v52;
        URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
        MLDataTable.write(to:)(v53);
        v70(v53, v73);
        outlined consume of Data._Representation(v72, v71);
        outlined consume of MLDataTable?(v69, v51);
        return __stack_chk_guard;
      }

      v42 = v72;
      v43 = v71;
    }

    outlined consume of Data._Representation(v42, v43);
  }

  else
  {
    v44 = v36;
    _convertNSErrorToError(_:)(v36);

    swift_willThrow();
  }

  return __stack_chk_guard;
}

uint64_t MLHandPoseClassifier.DataSource.dictionary.getter()
{
  v1 = v0;
  v68 = type metadata accessor for URL(0);
  v2 = *(v68 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v67 = &v51;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v8 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  outlined init with copy of MLTrainingSessionParameters(v1, &v51, type metadata accessor for MLHandPoseClassifier.DataSource);
  switch(swift_getEnumCaseMultiPayload(&v51, v8))
  {
    case 0u:
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
      v13 = &v51 + v12[12];
      v64 = *(&v51 + v12[16]);
      v63 = *(&v51 + v12[20]);
      v65 = v2;
      v14 = *(v2 + 32);
      v66 = &v51;
      v15 = v68;
      v14(&v51, &v51, v68);
      v14(v67, v13, v15);
      v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      inited = swift_initStackObject(v16, &v51);
      *(inited + 16) = 5;
      *(inited + 24) = 10;
      *(inited + 32) = 1684957547;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 72) = &type metadata for String;
      *(inited + 48) = 0x726F746365726964;
      *(inited + 56) = 0xE900000000000079;
      *(inited + 80) = 1752457584;
      *(inited + 88) = 0xE400000000000000;
      v18 = URL.path.getter(v16);
      *(inited + 120) = &type metadata for String;
      *(inited + 96) = v18;
      *(inited + 104) = v19;
      *(inited + 128) = 0x697461746F6E6E61;
      *(inited + 136) = 0xEF656C69665F6E6FLL;
      *(inited + 168) = v15;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 144));
      v21 = v67;
      v22 = v65;
      (*(v65 + 16))(boxed_opaque_existential_0, v67, v15);
      strcpy((inited + 176), "image_column");
      *(inited + 189) = 0;
      *(inited + 190) = -5120;
      *(inited + 216) = &type metadata for String;
      *(inited + 192) = v64;
      strcpy((inited + 224), "label_column");
      *(inited + 237) = 0;
      *(inited + 238) = -5120;
      *(inited + 264) = &type metadata for String;
      *(inited + 240) = v63;
      v23 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
      v24 = *(v22 + 8);
      v24(v21, v15);
      v24(v66, v15);
      return v23;
    case 1u:
      (*(v2 + 32))(&v51, &v51, v68);
      v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v30 = swift_initStackObject(v29, v62);
      v30[2] = 2;
      v30[3] = 4;
      v30[4] = 1684957547;
      v30[5] = 0xE400000000000000;
      v31 = "session_id_column" + 0x8000000000000000;
      v30[9] = &type metadata for String;
      v30[6] = 0xD000000000000013;
      goto LABEL_7;
    case 2u:
      (*(v2 + 32))(&v51, &v51, v68);
      v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v30 = swift_initStackObject(v29, v61);
      v30[2] = 2;
      v30[3] = 4;
      v30[4] = 1684957547;
      v30[5] = 0xE400000000000000;
      v30[9] = &type metadata for String;
      v30[6] = 0x5F64656C6562616CLL;
      v31 = 0xED000073656C6966;
LABEL_7:
      v30[7] = v31;
      v30[10] = 1752457584;
      v30[11] = 0xE400000000000000;
      v36 = URL.path.getter(v29);
      v30[15] = &type metadata for String;
      v30[12] = v36;
      v30[13] = v37;
      v23 = Dictionary.init(dictionaryLiteral:)(v30, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
      (*(v2 + 8))(&v51, v68);
      return v23;
    case 3u:
      v32 = v53;
      v33 = v54;
      v34 = v55;
      v35 = v56;
      v68 = v57;
      v67 = v58;
      outlined consume of Result<_DataTable, Error>(v51, v52);
      goto LABEL_9;
    case 4u:
      v25 = v53;
      v26 = v54;
      v27 = v55;
      v28 = v56;
      outlined consume of Result<_DataTable, Error>(v51, v52);
      goto LABEL_11;
    case 5u:
      v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      v39 = v38[12];
      v32 = *(&v51 + v39);
      v33 = *(&v51 + v39 + 8);
      v40 = v38[16];
      v34 = *(&v51 + v40);
      v35 = *(&v51 + v40 + 8);
      v41 = v38[20];
      v68 = *(&v51 + v41);
      v67 = *(&v51 + v41 + 8);
      v42 = type metadata accessor for DataFrame(0);
      (*(*(v42 - 8) + 8))(&v51, v42);
LABEL_9:
      v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v44 = swift_initStackObject(v43, v59);
      *(v44 + 16) = 4;
      *(v44 + 24) = 8;
      *(v44 + 32) = 1684957547;
      *(v44 + 40) = 0xE400000000000000;
      *(v44 + 72) = &type metadata for String;
      *(v44 + 48) = 0xD000000000000016;
      *(v44 + 56) = "start_time_column" + 0x8000000000000000;
      *(v44 + 80) = 0xD000000000000011;
      *(v44 + 88) = "labeled_keypoints_data" + 0x8000000000000000;
      *(v44 + 120) = &type metadata for String;
      *(v44 + 96) = v32;
      *(v44 + 104) = v33;
      strcpy((v44 + 128), "label_column");
      *(v44 + 141) = 0;
      *(v44 + 142) = -5120;
      *(v44 + 168) = &type metadata for String;
      *(v44 + 144) = v34;
      *(v44 + 152) = v35;
      strcpy((v44 + 176), "feature_column");
      *(v44 + 191) = -18;
      *(v44 + 216) = &type metadata for String;
      *(v44 + 192) = v68;
      *(v44 + 200) = v67;
      break;
    case 6u:
      v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
      v46 = *(v45 + 48);
      v25 = *(&v51 + v46);
      v26 = *(&v51 + v46 + 8);
      v47 = *(v45 + 64);
      v27 = *(&v51 + v47);
      v28 = *(&v51 + v47 + 8);
      v48 = type metadata accessor for DataFrame(0);
      (*(*(v48 - 8) + 8))(&v51, v48);
LABEL_11:
      v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v44 = swift_initStackObject(v49, v60);
      *(v44 + 16) = 3;
      *(v44 + 24) = 6;
      *(v44 + 32) = 1684957547;
      *(v44 + 40) = 0xE400000000000000;
      *(v44 + 72) = &type metadata for String;
      *(v44 + 48) = 0xD000000000000012;
      *(v44 + 56) = "o load training data." + 0x8000000000000000;
      strcpy((v44 + 80), "image_column");
      *(v44 + 93) = 0;
      *(v44 + 94) = -5120;
      *(v44 + 120) = &type metadata for String;
      *(v44 + 96) = v25;
      *(v44 + 104) = v26;
      strcpy((v44 + 128), "label_column");
      *(v44 + 141) = 0;
      *(v44 + 142) = -5120;
      *(v44 + 168) = &type metadata for String;
      *(v44 + 144) = v27;
      *(v44 + 152) = v28;
      break;
  }

  return Dictionary.init(dictionaryLiteral:)(v44, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
}

uint64_t MLHandPoseClassifier.ModelParameters.ValidationData.dictionary.getter()
{
  v1 = *(*(type metadata accessor for MLHandPoseClassifier.DataSource(0) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  outlined init with copy of MLTrainingSessionParameters(v0, &v23, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v23, v4);
  if (!EnumCaseMultiPayload)
  {
    v13 = v24;
    v14 = v25;
    v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
    v31 = v23;
    inited = swift_initStackObject(v15, &v23);
    inited[2] = 2;
    inited[3] = 4;
    inited[4] = 1684957547;
    inited[5] = 0xE400000000000000;
    inited[9] = &type metadata for String;
    inited[6] = 0x74696C7073;
    inited[7] = 0xE500000000000000;
    inited[10] = 1635017060;
    inited[11] = 0xE400000000000000;
    v28 = v31;
    v29 = v13;
    v30 = v14;
    v17 = MLSplitStrategy.dictionary.getter();
    inited[15] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
    inited[12] = v17;
    v18 = &type metadata for Any + 8;
    v19 = inited;
    return Dictionary.init(dictionaryLiteral:)(v19, &type metadata for String, v18, &protocol witness table for String);
  }

  if (EnumCaseMultiPayload != 1)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
    v21 = swift_initStackObject(v20, v27);
    v21[2] = 1;
    v21[3] = 2;
    v21[4] = 1684957547;
    v21[5] = 0xE400000000000000;
    v21[9] = &type metadata for String;
    v21[6] = 1701736302;
    v21[7] = 0xE400000000000000;
    v18 = &type metadata for Any + 8;
    v19 = v21;
    return Dictionary.init(dictionaryLiteral:)(v19, &type metadata for String, v18, &protocol witness table for String);
  }

  outlined init with take of MLClassifierMetrics(&v23, &v23, type metadata accessor for MLHandPoseClassifier.DataSource);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  v10 = swift_initStackObject(v9, v26);
  v10[2] = 2;
  v10[3] = 4;
  v10[4] = 1684957547;
  v10[5] = 0xE400000000000000;
  v10[9] = &type metadata for String;
  v10[6] = 0x756F735F61746164;
  v10[7] = 0xEB00000000656372;
  v10[10] = 1635017060;
  v10[11] = 0xE400000000000000;
  v11 = MLHandPoseClassifier.DataSource.dictionary.getter();
  v10[15] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  v10[12] = v11;
  v12 = Dictionary.init(dictionaryLiteral:)(v10, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  outlined destroy of MLActivityClassifier.ModelParameters(&v23, type metadata accessor for MLHandPoseClassifier.DataSource);
  return v12;
}

uint64_t *MLHandPoseClassifier.DataSource.table.getter(__m128 a1)
{
  v84 = v2;
  v89 = v1;
  v76 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v3 = *(v76 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v71 = &v69;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v81 = &v69;
  v70 = type metadata accessor for AnyColumn(0);
  v75 = *(v70 - 8);
  v10 = *(v75 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v77 = &v69;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v79 = &v69;
  v15 = type metadata accessor for DataFrame(0);
  v83 = *(v15 - 8);
  v16 = *(v83 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v80 = &v69;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v86 = &v69;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v23 = alloca(v16);
  v24 = alloca(v16);
  v85 = &v69;
  v25 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v26 = *(*(v25 - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  outlined init with copy of MLTrainingSessionParameters(v84, &v69, type metadata accessor for MLHandPoseClassifier.DataSource);
  switch(swift_getEnumCaseMultiPayload(&v69, v25))
  {
    case 0u:
      v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
      v35 = &v69 + v34[12];
      *(&v69 + v34[16] + 8);
      *(&v69 + v34[20] + 8);
      v36 = type metadata accessor for URL(0);
      v37 = *(*(v36 - 8) + 8);
      v37(v35, v36);
      v37(&v69, v36);
      goto LABEL_11;
    case 1u:
    case 2u:
      v29 = type metadata accessor for URL(0);
      (*(*(v29 - 8) + 8))(&v69, v29);
LABEL_11:
      result = v89;
      *v89 = 0;
      *(result + 8) = -1;
      return result;
    case 3u:
      v38 = v69;
      v39 = v70;
      v40 = v74;
      v41 = v76;
      v72;
      v40;
      v41;
      v87 = v38;
      v88 = v39 & 1;
      outlined copy of Result<_DataTable, Error>(v38, v39);
      static MLHandPoseClassifier.reformatKeypointsDataTable(table:featureColumn:)(&v87, 0x746E696F7079656BLL, 0xE900000000000073);
      outlined consume of Result<_DataTable, Error>(v38, v39);
      goto LABEL_12;
    case 4u:
      v30 = v69;
      v31 = v70;
      v32 = v74;
      v72;
      v32;
      result = v89;
      *v89 = v30;
      *(result + 8) = v31;
      return result;
    case 5u:
      v80 = &v69;
      v78 = v3;
      v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *(&v69 + v42[12] + 8);
      *(&v69 + v42[16] + 8);
      v43 = v42[20];
      v44 = *(&v69 + v43);
      v84 = *(&v69 + v43 + 8);
      v86 = v15;
      v45 = v15;
      v46 = v83;
      (*(v83 + 32))(v85, &v69, v45);
      v47 = v79;
      v82 = v44;
      v48 = v44;
      v49 = v84;
      DataFrame.subscript.getter(v48, v84);
      v50 = AnyColumn.wrappedElementType.getter(v48);
      v51 = v47;
      v52 = *(v75 + 8);
      v53 = v70;
      v52(v51, v70);
      if (v50 == &type metadata for String)
      {
        v72 = v52;
        v61 = v71;
        DataFrame.subscript.getter(v82, v49, &type metadata for String);
        Column<A>.parseAsJSONArrays()();
        (*(v78 + 8))(v61, v76);
        v62 = v81;
        __swift_storeEnumTagSinglePayload(v81, 0, 1, v53);
        v63 = v77;
        v64 = v62;
        v65 = v75;
        (*(v75 + 32))(v77, v64, v53);
        (*(v65 + 16))(v79, v63, v53);

        v55 = v85;
        DataFrame.subscript.setter(v79, v82, v49);
        v72(v77, v53);
        v56 = v86;
        v54 = v83;
      }

      else
      {
        v54 = v46;
        v55 = v85;
        v56 = v86;
      }

      v66 = v80;
      *a1.i64 = (*(v54 + 16))(v80, v55, v56);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v66, 0, a1);
      v87 = v73;
      v88 = v74;
      LOBYTE(v66) = v84;
      static MLHandPoseClassifier.reformatKeypointsDataTable(table:featureColumn:)(&v87, v82, v84);
      (*(v54 + 8))(v55, v56);
      v66;
      goto LABEL_12;
    case 6u:
      v57 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
      *(&v69 + *(v57 + 48) + 8);
      *(&v69 + *(v57 + 64) + 8);
      v58 = v86;
      v59 = v83;
      (*(v83 + 32))(v86, &v69, v15);
      v60 = v80;
      *a1.i64 = (*(v59 + 16))(v80, v58, v15);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v60, 0, a1);
      (*(v59 + 8))(v58, v15);
LABEL_12:
      result = v87;
      v67 = v88;
      v68 = v89;
      *v89 = v87;
      *(v68 + 8) = v67;
      return result;
    case 7u:
      JUMPOUT(0x8210CLL);
  }
}

uint64_t _s11TabularData9AnyColumnVSgWOhTm_0(uint64_t a1, uint64_t *a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(a2);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *MLObjectDetector.modelPredictions(from:)()
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for VNCoreMLModel, VNCoreMLModel_ptr);
  v2 = *(*v1 + 24);
  v3 = @nonobjc VNCoreMLModel.__allocating_init(for:)(v2);
  if (v0)
  {
    return v65;
  }

  v4 = v3;
  v5 = objc_allocWithZone(VNCoreMLRequest);
  v63 = v4;
  v6 = [v5 initWithModel:v4];
  v7 = objc_allocWithZone(VNSequenceRequestHandler);
  v64 = [v7 init];
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>);
  v9 = swift_allocObject(v8, 40, 7);
  v9[2] = 1;
  v9[3] = 3;
  v9[4] = v6;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for VNRequest, VNRequest_ptr);
  v65 = v6;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v11 = v9;
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  *&v66 = 0;
  v14 = [v64 performRequests:isa onImageURL:v12 error:&v66];

  v15 = v66;
  if (!v14)
  {
    v52 = v66;
    _convertNSErrorToError(_:)(v15);

    v50 = v63;
    v51 = v64;
    v16 = v65;
    goto LABEL_29;
  }

  v16 = v65;
  v17 = v65;
  v15;
  v18 = outlined bridged method (ob) of @objc VNRequest.results.getter(v17);
  if (!v18 || (v21 = v18, v22 = specialized _arrayConditionalCast<A, B>(_:)(v18, "performRequests:onImageURL:error:", v19, v20), v21, !v22))
  {
    v48 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v48, 0, 0);
    *v49 = 0xD000000000000046;
    *(v49 + 8) = "e Classification algorithm." + 0x8000000000000000;
    *(v49 + 16) = 0;
    *(v49 + 32) = 0;
    *(v49 + 48) = 0;
    v50 = v63;
    v51 = v64;
LABEL_29:
    swift_willThrow();

    return v65;
  }

  v60 = specialized Array._getCount()(v22, "performRequests:onImageURL:error:", v23, v24);
  if (v60 < 0)
  {
    BUG();
  }

  v62 = v17;
  if (v60)
  {
    v65 = _swiftEmptyArrayStorage;
    v25 = 0;
    v61 = v22;
    do
    {
      if ((v22 & 0xC000000000000003) != 0)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)(v25);
      }

      else
      {
        v26 = *(v22 + 8 * v25 + 32);
      }

      v27 = v26;
      v28 = [v26 labels];
      v29 = v28;

      v30 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for VNClassificationObservation, VNClassificationObservation_ptr);
      v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v29, v30);

      if ((v31 & 0xC000000000000003) != 0)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)(0);
      }

      else
      {
        if (!*(&dword_10 + (v31 & 0xFFFFFFFFFFFFF8)))
        {
          BUG();
        }

        v32 = *(v31 + 32);
      }

      v33 = v32;
      v31;
      v34 = [v33 identifier];
      v35 = v34;

      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)(v35);
      v59 = v36;

      v22 = v61;
      if ((v61 & 0xC000000000000003) != 0)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)(v25);
      }

      else
      {
        v37 = *(v61 + 8 * v25 + 32);
      }

      v38 = v37;
      objc_msgSend_stret(&v66, v37, "boundingBox");
      v54 = v66;
      v39 = v67[0];
      v56 = *v67;

      if ((v61 & 0xC000000000000003) != 0)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)(v25);
      }

      else
      {
        v40 = *(v61 + 8 * v25 + 32);
      }

      v45 = v40;
      [v40 confidence];

      if (!swift_isUniquelyReferenced_nonNull_native(v65))
      {
        v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v65[2] + 1, 1, v65);
      }

      v46 = v65[2];
      if (v65[3] >> 1 <= v46)
      {
        v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v65[3] >= 2uLL, v46 + 1, 1, v65);
      }

      ++v25;
      v65[2] = v46 + 1;
      v47 = 7 * v46;
      v65[v47 + 4] = v58;
      v65[v47 + 5] = v59;
      *&v65[v47 + 6] = v55;
      *&v65[v47 + 8] = v57;
      *&v65[v47 + 10] = v39;
    }

    while (v60 != v25);
  }

  else
  {
    v65 = _swiftEmptyArrayStorage;
  }

  v22;
  return v65;
}

void *closure #1 in MLObjectDetector.predictions(from:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = v3;
  result = MLObjectDetector.modelPredictions(from:)();
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

uint64_t MLCheckpoint.url.getter()
{
  v2 = v0;
  v3 = type metadata accessor for URL(0);
  return (*(*(v3 - 8) + 16))(v2, v1, v3);
}

char MLCheckpoint.phase.getter()
{
  v2 = v0;
  result = *(v1 + *(type metadata accessor for MLCheckpoint(0) + 20));
  *v2 = result;
  return result;
}

uint64_t type metadata accessor for MLCheckpoint(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLCheckpoint;
  if (!type metadata singleton initialization cache for MLCheckpoint)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLCheckpoint);
  }

  return result;
}

uint64_t MLCheckpoint.phase.setter(char *a1)
{
  v2 = *a1;
  result = *(type metadata accessor for MLCheckpoint(0) + 20);
  *(v1 + result) = v2;
  return result;
}

uint64_t MLCheckpoint.iteration.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLCheckpoint(0) + 24);
  *(v1 + result) = a1;
  return result;
}

uint64_t MLCheckpoint.date.getter()
{
  v2 = v0;
  v3 = v1 + *(type metadata accessor for MLCheckpoint(0) + 28);
  v4 = type metadata accessor for Date(0);
  return (*(*(v4 - 8) + 16))(v2, v3, v4);
}

uint64_t MLCheckpoint.date.setter(uint64_t a1)
{
  v2 = v1 + *(type metadata accessor for MLCheckpoint(0) + 28);
  v3 = type metadata accessor for Date(0);
  return (*(*(v3 - 8) + 40))(v2, a1, v3);
}

uint64_t MLCheckpoint.metrics.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLCheckpoint(0) + 32);
  result = *(v1 + v2);
  *(v1 + v2) = a1;
  return result;
}

CreateML::MLCheckpoint::CodingKeys_optional __swiftcall MLCheckpoint.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  if (stringValue._countAndFlagsBits ^ 0x6C7275 | stringValue._object ^ 0xE300000000000000 && (_stringCompareWithSmolCheck(_:_:expecting:)(7107189, 0xE300000000000000, stringValue._countAndFlagsBits, stringValue._object, 0) & 1) == 0)
  {
    if (stringValue._countAndFlagsBits ^ 0x6573616870 | stringValue._object ^ 0xE500000000000000 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x6573616870, 0xE500000000000000, stringValue._countAndFlagsBits, stringValue._object, 0) & 1) == 0)
    {
      if (stringValue._countAndFlagsBits ^ 0x6F69746172657469 | stringValue._object ^ 0xE90000000000006ELL && (_stringCompareWithSmolCheck(_:_:expecting:)(0x6F69746172657469, 0xE90000000000006ELL, stringValue._countAndFlagsBits, stringValue._object, 0) & 1) == 0)
      {
        if (stringValue._countAndFlagsBits ^ 0x65746164 | stringValue._object ^ 0xE400000000000000 && (_stringCompareWithSmolCheck(_:_:expecting:)(1702125924, 0xE400000000000000, stringValue._countAndFlagsBits, stringValue._object, 0) & 1) == 0)
        {
          if (stringValue._countAndFlagsBits ^ 0x697274654D6C7275 | stringValue._object ^ 0xEA00000000007363 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x697274654D6C7275, 0xEA00000000007363, stringValue._countAndFlagsBits, stringValue._object, 0) & 1) == 0)
          {
            if (stringValue._countAndFlagsBits ^ 0x7363697274656DLL | stringValue._object ^ 0xE700000000000000)
            {
              v2 = _stringCompareWithSmolCheck(_:_:expecting:)(0x7363697274656DLL, 0xE700000000000000, stringValue._countAndFlagsBits, stringValue._object, 0);
              stringValue._object;
              return (6 - (v2 & 1));
            }

            else
            {
              stringValue._object;
              return 5;
            }
          }

          else
          {
            stringValue._object;
            return 4;
          }
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

uint64_t MLCheckpoint.CodingKeys.stringValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      result = 7107189;
      break;
    case 1:
      result = 0x6573616870;
      break;
    case 2:
      result = 0x6F69746172657469;
      break;
    case 3:
      result = 1702125924;
      break;
    case 4:
      result = 0x697274654D6C7275;
      break;
    case 5:
      result = 0x7363697274656DLL;
      break;
  }

  return result;
}

CreateML::MLCheckpoint::CodingKeys_optional protocol witness for CodingKey.init(stringValue:) in conformance MLCheckpoint.CodingKeys(Swift::String a1)
{
  v2 = v1;
  result.value = MLCheckpoint.CodingKeys.init(stringValue:)(a1).value;
  v2->value = result.value;
  return result;
}

uint64_t MLCheckpoint.init(from:)(void *a1)
{
  v108 = v2;
  v91 = v1;
  v92 = type metadata accessor for Date(0);
  v93 = *(v92 - 8);
  v3 = *(v93 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v94 = &v89;
  v104 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedDecodingContainer<MLCheckpoint.CodingKeys>);
  v101 = *(v104 - 8);
  v6 = *(v101 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v98 = &v89;
  v90 = type metadata accessor for CodingUserInfoKey(0);
  v96 = *(v90 - 8);
  v9 = *(v96 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v99 = &v89;
  v106 = type metadata accessor for URL(0);
  v107 = *(v106 - 8);
  v15 = *(v107 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v105 = &v89;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v100 = &v89;
  v97 = type metadata accessor for MLCheckpoint(0);
  v20 = *(*(v97 - 1) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v102 = &v89;
  v23 = a1[3];
  v24 = a1[4];
  v103 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v23);
  v25 = dispatch thunk of Decoder.userInfo.getter(v23, v24);
  if (one-time initialization token for sessionDirectory != -1)
  {
    swift_once(&one-time initialization token for sessionDirectory, one-time initialization function for sessionDirectory);
  }

  v26 = v90;
  v27 = __swift_project_value_buffer(v90, static CodingUserInfoKey.sessionDirectory);
  v28 = v96;
  (*(v96 + 16))(&v89, v27, v26);
  specialized Dictionary.subscript.getter(&v89, v25);
  v25;
  (*(v28 + 8))(&v89, v26);
  if (!v95[3])
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v95, &demangling cache variable for type metadata for Any?);
    v29 = v99;
    __swift_storeEnumTagSinglePayload(v99, 1, 1, v106);
LABEL_29:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v29, &demangling cache variable for type metadata for URL?);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002CLL, ("CreateML/MLCheckpoint.swift" + 0x8000000000000000), "CreateML/MLCheckpoint.swift", 27, 2, 69, 0);
    BUG();
  }

  v29 = v99;
  v96 = &type metadata for Any + 8;
  v30 = v106;
  v31 = swift_dynamicCast(v99, v95, &type metadata for Any + 8, v106, 6);
  __swift_storeEnumTagSinglePayload(v29, v31 ^ 1u, 1, v30);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v30);
  v33 = v103;
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_29;
  }

  (*(v107 + 32))(v100, v29, v30);
  v34 = v33;
  v35 = v33[3];
  v36 = v34[4];
  __swift_project_boxed_opaque_existential_0Tm(v34, v35);
  v37 = lazy protocol witness table accessor for type MLCheckpoint.CodingKeys and conformance MLCheckpoint.CodingKeys();
  v38 = v108;
  dispatch thunk of Decoder.container<A>(keyedBy:)(&type metadata for MLCheckpoint.CodingKeys, &type metadata for MLCheckpoint.CodingKeys, v37, v35, v36);
  if (v38)
  {
    (*(v107 + 8))(v100, v106);
    return __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  LOBYTE(v95[0]) = 0;
  v39 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  KeyedDecodingContainer.decode<A>(_:forKey:)(v106, v95, v104, v106, v39);
  v108 = 0;
  v41 = objc_opt_self(NSFileManager);
  v42 = [v41 defaultManager];
  v43 = v42;
  URL.path.getter(v42);
  v45 = v44;
  v46 = String._bridgeToObjectiveC()();
  v45;
  v47 = [v43 fileExistsAtPath:v46];

  if (v47)
  {
    v48 = v106;
    (*(v107 + 16))(v102, v105, v106);
  }

  else
  {
    v49 = URL.path.getter(v46);
    v51 = v50;
    URL.appendingPathComponent(_:)(v49, v50);
    v51;
    v48 = v106;
  }

  v109[0] = 1;
  v52 = lazy protocol witness table accessor for type MLPhase and conformance MLPhase();
  v53 = v104;
  v54 = v98;
  v55 = v108;
  KeyedDecodingContainer.decode<A>(_:forKey:)(&type metadata for MLPhase, v109, v104, &type metadata for MLPhase, v52);
  if (v55)
  {
    v108 = v55;
    v56 = v48;
    v57 = *(v107 + 8);
    v57(v105, v56);
    v58 = v53;
    v59 = 0;
    (*(v101 + 8))(v54, v58);
    goto LABEL_13;
  }

  *(v102 + v97[5]) = v95[0];
  LOBYTE(v95[0]) = 2;
  v60 = KeyedDecodingContainer.decode(_:forKey:)(v95, v53);
  *(v102 + v97[6]) = v60;
  LOBYTE(v95[0]) = 3;
  v61 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v62 = v92;
  KeyedDecodingContainer.decode<A>(_:forKey:)(v92, v95, v104, v92, v61);
  v108 = 0;
  (*(v93 + 32))(v102 + v97[7], v94, v62);
  v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLProgress.Metric : Double]);
  v109[0] = 5;
  v66 = lazy protocol witness table accessor for type [MLProgress.Metric : Double] and conformance <> [A : B](&lazy protocol witness table cache variable for type [MLProgress.Metric : Double] and conformance <> [A : B], lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric, &protocol witness table for Double, &protocol conformance descriptor for <> [A : B]);
  v67 = v104;
  v68 = v108;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(v65, v109, v104, v65, v66);
  if (v68)
  {
    v69 = v67;
    v108 = v68;
    v70 = v107;
LABEL_23:
    v57 = *(v70 + 8);
    v56 = v106;
    v57(v105, v106);
    (*(v101 + 8))(v54, v69);
    v59 = 1;
LABEL_13:
    v63 = v103;
    v57(v100, v56);
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    v64 = v102;
    result = (v57)(v102, v56);
    if (v59)
    {
      return (*(v93 + 8))(&v64[v97[7]], v92);
    }

    return result;
  }

  v71 = v95[0];
  if (v95[0])
  {
    v99 = specialized _NativeDictionary.mapValues<A>(_:)(v95[0]);
    v108 = 0;
    v71;
  }

  else
  {
    v72 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
    v99 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, v96, v72);
    v108 = 0;
  }

  v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLProgress.Metric : URL]);
  v109[0] = 4;
  v74 = lazy protocol witness table accessor for type [MLProgress.Metric : URL] and conformance <> [A : B]();
  v75 = v104;
  v54 = v98;
  v76 = v108;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(v73, v109, v104, v73, v74);
  if (v76)
  {
    v108 = v76;
    v99;
    v70 = v107;
    v69 = v75;
    goto LABEL_23;
  }

  v77 = v95[0];
  if (v95[0])
  {
    v78 = alloca(24);
    v79 = alloca(32);
    v91 = v100;
    v80 = specialized _NativeDictionary.mapValues<A>(_:)(partial apply for closure #2 in MLCheckpoint.init(from:), &v89, v95[0]);
    v77;
    v108 = specialized _NativeDictionary.mapValues<A>(_:)(v80);
  }

  else
  {
    v81 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
    v108 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, v96, v81);
  }

  v82 = v107;
  v83 = v99;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v99);
  v95[0] = v83;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v108, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, v95);
  v108 = 0;
  v85 = v95[0];
  v86 = *(v82 + 8);
  v87 = v106;
  v86(v105, v106);
  (*(v101 + 8))(v98, v104);
  v88 = v102;
  *(v102 + v97[8]) = v85;
  v86(v100, v87);
  outlined init with copy of MLCheckpoint(v88, v91);
  __swift_destroy_boxed_opaque_existential_1Tm(v103);
  return outlined destroy of MLCheckpoint(v88);
}

uint64_t closure #2 in MLCheckpoint.init(from:)(uint64_t a1)
{
  v1 = URL.path.getter(a1);
  v3 = v2;
  URL.appendingPathComponent(_:)(v1, v2);
  return v3;
}

uint64_t MLCheckpoint.encode(to:)(void *a1)
{
  v80 = v1;
  v79 = v2;
  v74 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedEncodingContainer<MLCheckpoint.CodingKeys>);
  v76 = *(v74 - 8);
  v3 = *(v76 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v72 = &v63;
  v68 = type metadata accessor for CodingUserInfoKey(0);
  v67 = *(v68 - 8);
  v6 = *(v67 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v70 = &v63;
  v77 = type metadata accessor for URL(0);
  v78 = *(v77 - 8);
  v12 = *(v78 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v75 = &v63;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v73 = &v63;
  v17 = a1[3];
  v18 = a1[4];
  v66 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v17);
  v19 = dispatch thunk of Encoder.userInfo.getter(v17, v18);
  if (one-time initialization token for sessionDirectory != -1)
  {
    swift_once(&one-time initialization token for sessionDirectory, one-time initialization function for sessionDirectory);
  }

  v20 = v68;
  v21 = __swift_project_value_buffer(v68, static CodingUserInfoKey.sessionDirectory);
  v22 = v67;
  (*(v67 + 16))(&v63, v21, v20);
  specialized Dictionary.subscript.getter(&v63, v19);
  v19;
  (*(v22 + 8))(&v63, v20);
  if (!v71[3])
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v71, &demangling cache variable for type metadata for Any?);
    v23 = v70;
    __swift_storeEnumTagSinglePayload(v70, 1, 1, v77);
LABEL_17:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v23, &demangling cache variable for type metadata for URL?);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002CLL, (" specify a session directory" + 0x8000000000000000), "CreateML/MLCheckpoint.swift", 27, 2, 104, 0);
    BUG();
  }

  v23 = v70;
  v24 = v77;
  v25 = swift_dynamicCast(v70, v71, &type metadata for Any + 8, v77, 6);
  __swift_storeEnumTagSinglePayload(v23, v25 ^ 1u, 1, v24);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    goto LABEL_17;
  }

  (*(v78 + 32))(v73, v23, v24);
  v26 = v66[3];
  v27 = v66[4];
  __swift_project_boxed_opaque_existential_0Tm(v66, v26);
  v28 = lazy protocol witness table accessor for type MLCheckpoint.CodingKeys and conformance MLCheckpoint.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)(&type metadata for MLCheckpoint.CodingKeys, &type metadata for MLCheckpoint.CodingKeys, v28, v26, v27);
  v29 = URL.path.getter(&type metadata for MLCheckpoint.CodingKeys);
  LOBYTE(v27) = v30;
  v71[0] = v29;
  v71[1] = v30;
  v31 = URL.path.getter(&type metadata for MLCheckpoint.CodingKeys);
  v33 = v32;
  v64 = 0;
  v69[0] = v31;
  v69[1] = v32;
  v65 = 0xE000000000000000;
  v34 = lazy protocol witness table accessor for type String and conformance String();
  v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(v69, &v64, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v34, v34, v34);
  v37 = v36;
  v38 = v27;
  v39 = v77;
  v38;
  v33;
  v40 = v75;
  URL.init(fileURLWithPath:)(v35, v37);
  v37;
  LOBYTE(v71[0]) = 0;
  v41 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v42 = v74;
  v43 = v80;
  KeyedEncodingContainer.encode<A>(_:forKey:)(v40, v71, v74, v39, v41);
  v80 = v43;
  if (v43)
  {
    v44 = *(v78 + 8);
    v44(v40, v39);
    (*(v76 + 8))(v72, v42);
    return (v44)(v73, v39);
  }

  v78 = *(v78 + 8);
  (v78)(v40, v39);
  v75 = type metadata accessor for MLCheckpoint(0);
  LOBYTE(v71[0]) = *(v79 + v75[5]);
  LOBYTE(v69[0]) = 1;
  v46 = lazy protocol witness table accessor for type MLPhase and conformance MLPhase();
  v47 = v72;
  v48 = v80;
  KeyedEncodingContainer.encode<A>(_:forKey:)(v71, v69, v42, &type metadata for MLPhase, v46);
  if (v48)
  {
    (*(v76 + 8))(v47, v42);
    return (v78)(v73, v77);
  }

  v49 = *(v79 + v75[6]);
  LOBYTE(v71[0]) = 2;
  KeyedEncodingContainer.encode(_:forKey:)(v49, v71, v42);
  v50 = v79 + v75[7];
  LOBYTE(v71[0]) = 3;
  v80 = type metadata accessor for Date(0);
  v51 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)(v50, v71, v42, v80, v51);
  v80 = *(v79 + v75[8]);
  v52 = specialized Dictionary.compactMapValues<A>(_:)(v80);
  v79 = 0;
  v71[0] = v52;
  LOBYTE(v69[0]) = 5;
  v53 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLProgress.Metric : Double]);
  v54 = lazy protocol witness table accessor for type [MLProgress.Metric : Double] and conformance <> [A : B](&lazy protocol witness table cache variable for type [MLProgress.Metric : Double] and conformance <> [A : B], lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric, &protocol witness table for Double, &protocol conformance descriptor for <> [A : B]);
  v55 = v79;
  KeyedEncodingContainer.encode<A>(_:forKey:)(v71, v69, v42, v53, v54);
  if (v55)
  {
    (*(v76 + 8))(v47, v74);
    v52;
    return (v78)(v73, v77);
  }

  v52;
  v56 = specialized Dictionary.compactMapValues<A>(_:)(v80);
  v57 = alloca(24);
  v58 = alloca(32);
  v65 = v73;
  v59 = specialized _NativeDictionary.mapValues<A>(_:)(partial apply for closure #3 in MLCheckpoint.encode(to:), &v63, v56);
  v80 = 0;
  v56;
  v79 = v59;
  v71[0] = v59;
  LOBYTE(v69[0]) = 4;
  v60 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLProgress.Metric : URL]);
  v61 = lazy protocol witness table accessor for type [MLProgress.Metric : URL] and conformance <> [A : B]();
  v62 = v80;
  KeyedEncodingContainer.encode<A>(_:forKey:)(v71, v69, v74, v60, v61);
  if (v62)
  {
    (*(v76 + 8))(v47, v74);

    return (v78)(v73, v77);
  }

  (*(v76 + 8))(v47, v74);

  return (v78)(v73, v77);
}

uint64_t closure #3 in MLCheckpoint.encode(to:)(uint64_t a1, uint64_t a2)
{
  v15[5] = v2;
  v3 = URL.path.getter(a1);
  v5 = v4;
  v15[2] = v3;
  v15[3] = v4;
  v6 = URL.path.getter(a1);
  v8 = v7;
  v15[0] = 0;
  v14[0] = v6;
  v14[1] = v7;
  v15[1] = 0xE000000000000000;
  v9 = lazy protocol witness table accessor for type String and conformance String();
  v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(v14, v15, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
  v12 = v11;
  v5;
  v8;
  URL.init(fileURLWithPath:)(v10, v12);
  return v12;
}

uint64_t one-time initialization function for sessionDirectory()
{
  v7[0] = v0;
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for CodingUserInfoKey?) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = type metadata accessor for CodingUserInfoKey(0);
  __swift_allocate_value_buffer(v4, static CodingUserInfoKey.sessionDirectory);
  v5 = __swift_project_value_buffer(v4, static CodingUserInfoKey.sessionDirectory);
  CodingUserInfoKey.init(rawValue:)(0xD000000000000010, (" specify a session directory" + 0x8000000000000000));
  if (__swift_getEnumTagSinglePayload(v7, 1, v4) == 1)
  {
    BUG();
  }

  return (*(*(v4 - 8) + 32))(v5, v7, v4);
}

uint64_t lazy protocol witness table accessor for type MLCheckpoint.CodingKeys and conformance MLCheckpoint.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLCheckpoint.CodingKeys and conformance MLCheckpoint.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLCheckpoint.CodingKeys and conformance MLCheckpoint.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLCheckpoint.CodingKeys, &type metadata for MLCheckpoint.CodingKeys);
    lazy protocol witness table cache variable for type MLCheckpoint.CodingKeys and conformance MLCheckpoint.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLCheckpoint.CodingKeys and conformance MLCheckpoint.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLCheckpoint.CodingKeys and conformance MLCheckpoint.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLCheckpoint.CodingKeys, &type metadata for MLCheckpoint.CodingKeys);
    lazy protocol witness table cache variable for type MLCheckpoint.CodingKeys and conformance MLCheckpoint.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLCheckpoint.CodingKeys and conformance MLCheckpoint.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLCheckpoint.CodingKeys and conformance MLCheckpoint.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLCheckpoint.CodingKeys, &type metadata for MLCheckpoint.CodingKeys);
    lazy protocol witness table cache variable for type MLCheckpoint.CodingKeys and conformance MLCheckpoint.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLCheckpoint.CodingKeys and conformance MLCheckpoint.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLCheckpoint.CodingKeys and conformance MLCheckpoint.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLCheckpoint.CodingKeys, &type metadata for MLCheckpoint.CodingKeys);
    lazy protocol witness table cache variable for type MLCheckpoint.CodingKeys and conformance MLCheckpoint.CodingKeys = result;
  }

  return result;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, void *a5)
{
  v35 = a5;
  v36 = a4;
  specialized LazyMapSequence.makeIterator()(a1, a2, a3);
  v32 = v24;
  v31 = v23[4];
  v30 = v23[3];
  v29 = v23[2];
  v34 = a1;

  v33 = a3;

  while (1)
  {
    specialized LazyMapSequence.Iterator.next()();
    if (!v28)
    {
      break;
    }

    v6 = v26;
    outlined init with take of Any(v27, v25);
    v7 = *v35;
    v37 = v6;
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
    v10 = (v8 & 1) == 0;
    v11 = __OFADD__(v7[2], v10);
    v12 = v7[2] + v10;
    if (v11)
    {
      BUG();
    }

    v13 = v8;
    if (v7[3] >= v12)
    {
      if ((v36 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<MLProgress.Metric, Any>);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      v14 = v36;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v12, v36);
      v9 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      LOBYTE(v16) = v16 & 1;
      if ((v13 & 1) != v16)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLProgress.Metric, v14, v16, v15);
        BUG();
      }
    }

    if (v13)
    {
      v17 = *v35;
      outlined init with copy of Any(v25, v23);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      v18 = (v17[7] + 32 * v9);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      v19 = outlined init with take of Any(v23, v18);
    }

    else
    {
      v20 = *v35;
      v20[(v9 >> 6) + 8] |= 1 << v9;
      *(v20[6] + v9) = v37;
      outlined init with take of Any(v25, (v20[7] + 32 * v9));
      v21 = v20[2];
      v11 = __OFADD__(1, v21);
      v19 = (v21 + 1);
      if (v11)
      {
        BUG();
      }

      v20[2] = v19;
    }

    LOBYTE(v19) = 1;
    v36 = v19;
  }

  v34;

  outlined consume of [String : [Double]].Iterator._Variant(v29);
}

uint64_t outlined init with copy of MLCheckpoint(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLCheckpoint(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined destroy of MLCheckpoint(uint64_t a1)
{
  v1 = type metadata accessor for MLCheckpoint(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t specialized _NativeDictionary.mapValues<A>(_:)(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v47 = v3;
  v39[1] = a2;
  v40 = a1;
  v48 = 0;
  v5 = type metadata accessor for URL(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v41 = v39;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v46 = v39;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<MLProgress.Metric, URL>);
  v12 = static _DictionaryStorage.copy(original:)(a3);
  v13 = v5;
  v14 = 1 << *(a3 + 32);
  v15 = ~(-1 << v14);
  if (v14 >= 64)
  {
    v15 = -1;
  }

  v50 = a3;
  v16 = *(a3 + 64) & v15;
  v17 = v12;
  v18 = v6;
  v49 = (v14 + 63) >> 6;
  v43 = v12;
  v44 = v6;
  v45 = v5;
  while (1)
  {
    if (v16)
    {
      _BitScanForward64(&v19, v16);
      v42 = (v16 - 1) & v16;
      v20 = v19 | (v48 << 6);
      goto LABEL_17;
    }

    v21 = v48;
    v22 = v48 + 1;
    if (__OFADD__(1, v48))
    {
      BUG();
    }

    if (v22 >= v49)
    {
      return v17;
    }

    v23 = *(v50 + 8 * v22 + 64);
    if (!v23)
    {
      break;
    }

LABEL_16:
    _BitScanForward64(&v25, v23);
    v42 = v23 & (v23 - 1);
    v20 = v25 | (v22 << 6);
    v48 = v22;
LABEL_17:
    v26 = v46;
    v27 = *(v50 + 48);
    v28 = v20 * *(v18 + 72);
    (*(v18 + 16))(v46, v28 + *(v50 + 56), v13);
    v51 = *(v27 + v20);
    v29 = v47;
    v40(v26);
    v47 = v29;
    if (v29)
    {
      v17 = v43;

      (*(v44 + 8))(v26, v45);
      return v17;
    }

    v30 = v26;
    v31 = v45;
    v32 = v44;
    (*(v44 + 8))(v30, v45);
    v33 = v43;
    *(v43 + 8 * (v20 >> 6) + 64) |= 1 << v20;
    *(*(v33 + 48) + v20) = v51;
    v34 = *(v33 + 56) + v28;
    v17 = v33;
    (*(v32 + 32))(v34, v41, v31);
    v35 = *(v17 + 16);
    v36 = __OFADD__(1, v35);
    v37 = v35 + 1;
    if (v36)
    {
      BUG();
    }

    v13 = v31;
    v18 = v32;
    *(v17 + 16) = v37;
    v16 = v42;
  }

  v24 = v48 + 2;
  if (v48 + 2 >= v49)
  {
    return v17;
  }

  v23 = *(v50 + 8 * v22 + 72);
  if (v23)
  {
    goto LABEL_15;
  }

  v24 = v48 + 3;
  if (v48 + 3 >= v49)
  {
    return v17;
  }

  v23 = *(v50 + 8 * v22 + 80);
  if (v23)
  {
    goto LABEL_15;
  }

  v24 = v48 + 4;
  if (v48 + 4 >= v49)
  {
    return v17;
  }

  v23 = *(v50 + 8 * v22 + 88);
  if (v23)
  {
LABEL_15:
    v22 = v24;
    goto LABEL_16;
  }

  while (v21 + 5 < v49)
  {
    v23 = *(v50 + 8 * v21++ + 104);
    if (v23)
    {
      v22 = v21 + 4;
      goto LABEL_16;
    }
  }

  return v17;
}

uint64_t lazy protocol witness table accessor for type MLPhase and conformance MLPhase()
{
  result = lazy protocol witness table cache variable for type MLPhase and conformance MLPhase;
  if (!lazy protocol witness table cache variable for type MLPhase and conformance MLPhase)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLPhase, &type metadata for MLPhase);
    lazy protocol witness table cache variable for type MLPhase and conformance MLPhase = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLPhase and conformance MLPhase;
  if (!lazy protocol witness table cache variable for type MLPhase and conformance MLPhase)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLPhase, &type metadata for MLPhase);
    lazy protocol witness table cache variable for type MLPhase and conformance MLPhase = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLPhase and conformance MLPhase;
  if (!lazy protocol witness table cache variable for type MLPhase and conformance MLPhase)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLPhase, &type metadata for MLPhase);
    lazy protocol witness table cache variable for type MLPhase and conformance MLPhase = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLPhase and conformance MLPhase;
  if (!lazy protocol witness table cache variable for type MLPhase and conformance MLPhase)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLPhase, &type metadata for MLPhase);
    lazy protocol witness table cache variable for type MLPhase and conformance MLPhase = result;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLCheckpoint(void *a1, void *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = type metadata accessor for URL(0);
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    *(a1 + a3[5]) = *(a2 + a3[5]);
    *(a1 + a3[6]) = *(a2 + a3[6]);
    v7 = a3[7];
    v8 = type metadata accessor for Date(0);
    (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
    *(a1 + a3[8]) = *(a2 + a3[8]);
  }

  return v3;
}

uint64_t destroy for MLCheckpoint(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for URL(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  v3 = a1 + *(a2 + 28);
  v4 = type metadata accessor for Date(0);
  (*(*(v4 - 8) + 8))(v3, v4);
  return *(a1 + *(a2 + 32));
}

uint64_t initializeWithCopy for MLCheckpoint(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = type metadata accessor for URL(0);
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v5 = a3[7];
  v6 = type metadata accessor for Date(0);
  (*(*(v6 - 8) + 16))(a1 + v5, a2 + v5, v6);
  *(a1 + a3[8]) = *(a2 + a3[8]);

  return a1;
}

uint64_t assignWithCopy for MLCheckpoint(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = type metadata accessor for URL(0);
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v5 = a3[7];
  v6 = type metadata accessor for Date(0);
  (*(*(v6 - 8) + 24))(a1 + v5, a2 + v5, v6);
  v7 = a3[8];
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  v8;
  return a1;
}

uint64_t initializeWithTake for MLCheckpoint(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = type metadata accessor for URL(0);
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v5 = a3[7];
  v6 = type metadata accessor for Date(0);
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  return a1;
}

uint64_t assignWithTake for MLCheckpoint(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = type metadata accessor for URL(0);
  (*(*(v5 - 8) + 40))(a1, a2, v5);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v6 = a3[7];
  v7 = type metadata accessor for Date(0);
  (*(*(v7 - 8) + 40))(a1 + v6, a2 + v6, v7);
  v8 = a3[8];
  v9 = *(a1 + v8);
  *(a1 + v8) = *(a2 + v8);
  v9;
  return a1;
}

uint64_t sub_85888(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for URL(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  v6 = 0;
  v5 = type metadata accessor for Date(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v4 = *(a3 + 28) + a1;
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  if ((*(a1 + *(a3 + 32)) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + *(a3 + 32)) >> 1) + 1;
  }

  return v6;
}

uint64_t sub_85918(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = type metadata accessor for URL(0);
  if (*(*(v7 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
  }

  v7 = type metadata accessor for Date(0);
  if (*(*(v7 - 8) + 84) == a3)
  {
    v6 = *(a4 + 28) + a1;
    return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
  }

  result = *(a4 + 32);
  *(a1 + result) = 2 * (a2 - 1);
  return result;
}

uint64_t type metadata completion function for MLCheckpoint(uint64_t a1)
{
  result = type metadata accessor for URL(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    v4[1] = &unk_33F4A0;
    v4[2] = &value witness table for Builtin.Int64 + 64;
    result = type metadata accessor for Date(319);
    if (v3 <= 0x3F)
    {
      v4[3] = *(result - 8) + 64;
      v4[4] = &value witness table for Builtin.BridgeObject + 64;
      swift_initStructMetadata(a1, 256, 5, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

_BYTE *__swift_memcpy1_1(_BYTE *a1, _BYTE *a2)
{
  result = a1;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for MLCheckpoint.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 < 0xFB)
    {
      goto LABEL_13;
    }

    v2 = a2 + 5;
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
      v5 = *a1 + (v4 << 8) - 6;
    }

    else
    {
LABEL_13:
      v6 = *a1;
      v7 = v6 - 6;
      v8 = v6 < 6;
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

uint64_t storeEnumTagSinglePayload for MLCheckpoint.CodingKeys(_BYTE *a1, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x85B58);
    }
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML23MLDecisionTreeRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML23ijk3V15lm75V13configuration10validationAE0A12MLComponents07BoostedD13ConfigurationV_11c7Data0N5e12VSgtcfcAE010N21N0OAMcAPmcfu_ApMcfu0_AOXMtTf1ncn_n(uint64_t a1)
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
    v9 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
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
    v20 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
    swift_storeEnumTagMultiPayload(v15, v20, 2);
    (*(v14 + 8))(v13, v2);
    v10 = v15;
    v11 = 0;
    v12 = v20;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t MLDecisionTreeRegressor.ModelParameters.validationData.getter(__m128 a1)
{
  v2 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &v9, &demangling cache variable for type metadata for Any?);
  if (!v10)
  {
    BUG();
  }

  outlined init with take of Any(&v9, v8);
  swift_dynamicCast(&v7, v8, &type metadata for Any + 8, v2, 7);
  MLDecisionTreeRegressor.ModelParameters.ValidationData.table.getter(a1);
  return outlined destroy of MLDecisionTreeRegressor.ModelParameters.ValidationData(&v7);
}

uint64_t key path getter for MLDecisionTreeRegressor.ModelParameters.validationData : MLDecisionTreeRegressor.ModelParameters(__m128 a1)
{
  v2 = v1;
  MLDecisionTreeRegressor.ModelParameters.validationData.getter(a1);
  result = v4;
  *v2 = v4;
  *(v2 + 8) = v5;
  return result;
}

uint64_t key path setter for MLDecisionTreeRegressor.ModelParameters.validationData : MLDecisionTreeRegressor.ModelParameters(uint64_t *a1)
{
  v1 = *(a1 + 2);
  v3 = *a1;
  v4 = v1;
  outlined copy of MLDataTable?(v3, v1);
  return MLDecisionTreeRegressor.ModelParameters.validationData.setter(&v3);
}

uint64_t MLDecisionTreeRegressor.ModelParameters.validationData.setter(uint64_t a1)
{
  v18 = v1;
  v2 = 0;
  v3 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
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
  outlined init with take of MLDecisionTreeRegressor.ModelParameters.ValidationData(&v13, boxed_opaque_existential_0);
  return outlined assign with take of Any?(&v13 + 8, v18);
}

uint64_t MLDecisionTreeRegressor.ModelParameters.validation.getter()
{
  v2 = v0;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &v6, &demangling cache variable for type metadata for Any?);
  if (!v7)
  {
    BUG();
  }

  outlined init with take of Any(&v6, v5);
  v3 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  return swift_dynamicCast(v2, v5, &type metadata for Any + 8, v3, 7);
}

uint64_t outlined destroy of MLDecisionTreeRegressor.ModelParameters.ValidationData(uint64_t a1)
{
  v1 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t outlined init with take of MLDecisionTreeRegressor.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t (*MLDecisionTreeRegressor.ModelParameters.validationData.modify(uint64_t a1, __m128 a2))(uint64_t a1, char a2)
{
  *(a1 + 16) = v2;
  MLDecisionTreeRegressor.ModelParameters.validationData.getter(a2);
  return MLDecisionTreeRegressor.ModelParameters.validationData.modify;
}

uint64_t MLDecisionTreeRegressor.ModelParameters.validationData.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v6 = *a1;
  v7 = v3;
  if ((a2 & 1) == 0)
  {
    return MLDecisionTreeRegressor.ModelParameters.validationData.setter(&v6);
  }

  v4 = v3;
  outlined copy of MLDataTable?(v2, v3);
  MLDecisionTreeRegressor.ModelParameters.validationData.setter(&v6);
  return outlined consume of MLDataTable?(v2, v4);
}

uint64_t key path setter for MLDecisionTreeRegressor.ModelParameters.validation : MLDecisionTreeRegressor.ModelParameters(uint64_t a1)
{
  v6[0] = v1;
  v2 = *(*(type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  outlined init with copy of MLDecisionTreeRegressor.ModelParameters.ValidationData(a1, v6);
  return MLDecisionTreeRegressor.ModelParameters.validation.setter(v6);
}

uint64_t MLDecisionTreeRegressor.ModelParameters.validation.setter(uint64_t a1)
{
  v4[3] = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  outlined init with take of MLDecisionTreeRegressor.ModelParameters.ValidationData(a1, boxed_opaque_existential_0);
  return outlined assign with take of Any?(v4, v1);
}

void (*MLDecisionTreeRegressor.ModelParameters.validation.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = malloc(0xA0uLL);
  *a1 = v2;
  *(v2 + 16) = v1;
  v3 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  *(v2 + 17) = v3;
  v4 = *(*(v3 - 8) + 64);
  *(v2 + 18) = malloc(v4);
  v5 = malloc(v4);
  *(v2 + 19) = v5;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, (v2 + 2), &demangling cache variable for type metadata for Any?);
  if (!*(v2 + 7))
  {
    BUG();
  }

  outlined init with take of Any(v2 + 2, v2);
  swift_dynamicCast(v5, v2, &type metadata for Any + 8, v3, 7);
  return MLDecisionTreeRegressor.ModelParameters.validation.modify;
}

void MLDecisionTreeRegressor.ModelParameters.validation.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[19];
  v4 = (*a1)[18];
  v8 = (*a1)[16];
  v5 = (*a1)[17];
  if (a2)
  {
    outlined init with copy of MLDecisionTreeRegressor.ModelParameters.ValidationData(v3, v4);
    v2[11] = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    outlined init with take of MLDecisionTreeRegressor.ModelParameters.ValidationData(v4, boxed_opaque_existential_0);
    outlined assign with take of Any?((v2 + 8), v8);
    outlined destroy of MLDecisionTreeRegressor.ModelParameters.ValidationData(v3);
  }

  else
  {
    v2[15] = v5;
    v7 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    outlined init with take of MLDecisionTreeRegressor.ModelParameters.ValidationData(v3, v7);
    outlined assign with take of Any?((v2 + 12), v8);
  }

  free(v3);
  free(v4);
  free(v2);
}

uint64_t outlined init with copy of MLDecisionTreeRegressor.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t MLDecisionTreeRegressor.ModelParameters.init(validation:maxDepth:minLossReduction:minChildWeight:randomSeed:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v14 = a3;
  v15 = a5;
  v16 = a4;
  v6 = v5;
  v7 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  *(v6 + 16) = 0;
  *v6 = 0;
  *(v6 + 32) = a2;
  *(v6 + 40) = v16;
  *(v6 + 48) = v15;
  *(v6 + 56) = v14;
  outlined init with copy of MLDecisionTreeRegressor.ModelParameters.ValidationData(a1, v13);
  v13[3] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  outlined init with take of MLDecisionTreeRegressor.ModelParameters.ValidationData(v13, boxed_opaque_existential_0);
  outlined assign with take of Any?(v13, v6);
  return outlined destroy of MLDecisionTreeRegressor.ModelParameters.ValidationData(a1);
}

uint64_t MLDecisionTreeRegressor.ModelParameters.init(validationData:maxDepth:minLossReduction:minChildWeight:randomSeed:)(uint64_t *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  *(v5 + 16) = 0;
  *v5 = 0;
  *(v5 + 32) = a2;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  *(v5 + 56) = a3;
  v9 = v6;
  v10 = v7;
  return MLDecisionTreeRegressor.ModelParameters.validationData.setter(&v9);
}

uint64_t MLDecisionTreeRegressor.ModelParameters.init(configuration:validation:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLDecisionTreeRegressor.ModelParameters.ValidationData?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v18 = v15;
  *(v3 + 16) = 0;
  *v3 = 0;
  *(v3 + 32) = BoostedTreeConfiguration.maximumDepth.getter();
  *(v3 + 40) = BoostedTreeConfiguration.minimumLossReduction.getter();
  *(v3 + 48) = BoostedTreeConfiguration.minimumChildWeight.getter();
  *(v3 + 56) = BoostedTreeConfiguration.randomSeed.getter();
  v17 = a2;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML23MLDecisionTreeRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML23ijk3V15lm75V13configuration10validationAE0A12MLComponents07BoostedD13ConfigurationV_11c7Data0N5e12VSgtcfcAE010N21N0OAMcAPmcfu_ApMcfu0_AOXMtTf1ncn_n(a2);
  if (__swift_getEnumTagSinglePayload(v15, 1, v7) == 1)
  {
    v11 = v18;
    swift_storeEnumTagMultiPayload(v18, v7, 3);
    if (__swift_getEnumTagSinglePayload(v15, 1, v7) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v15, &demangling cache variable for type metadata for MLDecisionTreeRegressor.ModelParameters.ValidationData?);
    }
  }

  else
  {
    v11 = v18;
    outlined init with take of MLDecisionTreeRegressor.ModelParameters.ValidationData(v15, v18);
  }

  v16[3] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  outlined init with take of MLDecisionTreeRegressor.ModelParameters.ValidationData(v11, boxed_opaque_existential_0);
  outlined assign with take of Any?(v16, v3);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v17, &demangling cache variable for type metadata for DataFrame?);
  v13 = type metadata accessor for BoostedTreeConfiguration(0);
  return (*(*(v13 - 8) + 8))(a1, v13);
}

uint64_t MLDecisionTreeRegressor.ModelParameters.description.getter()
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

uint64_t MLDecisionTreeRegressor.ModelParameters.playgroundDescription.getter()
{
  v1 = v0;
  result = MLDecisionTreeRegressor.ModelParameters.description.getter();
  v1[3] = &type metadata for String;
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t initializeWithCopy for MLDecisionTreeRegressor.ModelParameters(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 3);
  if (v2)
  {
    *(a1 + 24) = v2;
    (**(v2 - 8))(a1, a2);
  }

  else
  {
    v3 = *a2;
    *(a1 + 16) = a2[1];
    *a1 = v3;
  }

  *(a1 + 32) = a2[2];
  *(a1 + 48) = a2[3];
  return a1;
}

uint64_t assignWithCopy for MLDecisionTreeRegressor.ModelParameters(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 3);
  if (!*(a1 + 24))
  {
    if (v2)
    {
      *(a1 + 24) = v2;
      (**(v2 - 8))(a1, a2);
      goto LABEL_8;
    }

LABEL_7:
    v3 = *a2;
    *(a1 + 16) = a2[1];
    *a1 = v3;
    goto LABEL_8;
  }

  if (!v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_0(a1, a2);
LABEL_8:
  *(a1 + 32) = a2[2];
  *(a1 + 48) = a2[3];
  return a1;
}

void __swift_assign_boxed_opaque_existential_0(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v2 = a1[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v7 = *(v2 - 8);
      if ((*(v7 + 82) & 2) != 0)
      {
        v8 = *a2;

        *a1 = v8;
      }

      else
      {
        (*(v7 + 24))(a1, a2, a1[3]);
      }
    }

    else
    {
      a1[3] = v3;
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v6 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v5 + 16))(a1, a2, v3);
        }
      }

      else
      {
        v11 = *(v3 - 8);
        v10 = v4;
        (*(v4 + 32))(v9, a1, v2);
        if ((v6 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v11 + 16))(a1, a2, v3);
        }

        (*(v10 + 8))(v9, v2);
      }
    }
  }
}

uint64_t assignWithTake for MLDecisionTreeRegressor.ModelParameters(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v2 = *a2;
  *(a1 + 16) = a2[1];
  *a1 = v2;
  *(a1 + 32) = *(a2 + 4);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 7);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLDecisionTreeRegressor.ModelParameters(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

void storeEnumTagSinglePayload for MLDecisionTreeRegressor.ModelParameters(uint64_t a1, unsigned int a2, unsigned int a3)
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
      *(a1 + 24) = 2 * a2;
    }
  }
}

void *MLModelMetadata.init(author:shortDescription:license:version:additional:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a7;
  v12[7] = a8;
  v12[8] = a9;
  qmemcpy(v9, v12, 0x48uLL);
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  v11[6] = a7;
  v11[7] = a8;
  v11[8] = a9;
  outlined retain of MLModelMetadata(v12);
  return outlined release of MLModelMetadata(v11);
}

uint64_t MLModelMetadata.author.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MLModelMetadata.author.setter(uint64_t a1, uint64_t a2)
{
  result = v2[1];
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MLModelMetadata.shortDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MLModelMetadata.shortDescription.setter(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MLModelMetadata.license.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MLModelMetadata.license.setter(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MLModelMetadata.version.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t MLModelMetadata.version.setter(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t MLModelMetadata.additional.setter(uint64_t a1)
{
  result = *(v1 + 64);
  *(v1 + 64) = a1;
  return result;
}

uint64_t destroy for MLModelMetadata(void *a1)
{
  a1[1];
  a1[3];
  a1[5];
  a1[7];
  return a1[8];
}

void *initializeWithCopy for MLModelMetadata(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];

  return a1;
}

void *assignWithCopy for MLModelMetadata(void *a1, void *a2)
{
  *a1 = *a2;
  v2 = a1[1];
  a1[1] = a2[1];

  v2;
  a1[2] = a2[2];
  v3 = a1[3];
  a1[3] = a2[3];

  v3;
  a1[4] = a2[4];
  v4 = a1[5];
  a1[5] = a2[5];

  v4;
  a1[6] = a2[6];
  v5 = a1[7];
  a1[7] = a2[7];

  v5;
  v6 = a1[8];
  a1[8] = a2[8];

  v6;
  return a1;
}

void *__swift_memcpy72_8(void *a1, const void *a2)
{
  result = a1;
  qmemcpy(a1, a2, 0x48uLL);
  return result;
}

void *assignWithTake for MLModelMetadata(void *a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = a1[1];
  a1[1] = *(a2 + 8);
  v3;
  a1[2] = *(a2 + 16);
  v4 = a1[3];
  a1[3] = *(a2 + 24);
  v4;
  a1[4] = *(a2 + 32);
  v5 = a1[5];
  a1[5] = *(a2 + 40);
  v5;
  a1[6] = *(a2 + 48);
  a1[7];
  v6 = a1[8];
  *(a1 + 7) = *(a2 + 56);
  v6;
  return a1;
}

uint64_t getEnumTagSinglePayload for MLModelMetadata(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

void storeEnumTagSinglePayload for MLModelMetadata(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *(a1 + 56) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 72) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 72) = 0;
    }

    if (a2)
    {
      *(a1 + 8) = 2 * (a2 - 1);
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for TreeRegressor(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
    *a1 = *a2;
    a1[1] = a2[1];
    a1[2] = a2[2];
    a1[3] = a2[3];
    a1[4] = a2[4];
    a1[5] = a2[5];
    v5 = *(a3 + 28);
    v10 = a1 + v5;
    v6 = a2 + v5;
    v7 = type metadata accessor for BaseTreeRegressor(0);
    v11 = *(*(v7 - 8) + 16);

    v11(v10, v6, v7);
  }

  return v3;
}

uint64_t destroy for TreeRegressor(void *a1, uint64_t a2)
{
  a1[1];
  a1[2];
  a1[3];
  a1[5];
  v2 = a1 + *(a2 + 28);
  v3 = type metadata accessor for BaseTreeRegressor(0);
  return (*(*(v3 - 8) + 8))(v2, v3);
}

void *initializeWithCopy for TreeRegressor(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  v3 = *(a3 + 28);
  v7 = a1 + v3;
  v4 = a2 + v3;
  v5 = type metadata accessor for BaseTreeRegressor(0);
  v8 = *(*(v5 - 8) + 16);

  v8(v7, v4, v5);
  return a1;
}

void *assignWithCopy for TreeRegressor(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  v4;
  v5 = a1[2];
  a1[2] = a2[2];

  v5;
  v6 = a1[3];
  a1[3] = a2[3];

  v6;
  a1[4] = a2[4];
  v7 = a1[5];
  a1[5] = a2[5];

  v7;
  v8 = *(a3 + 28);
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = type metadata accessor for BaseTreeRegressor(0);
  (*(*(v11 - 8) + 24))(v9, v10, v11);
  return a1;
}

uint64_t initializeWithTake for TreeRegressor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a3 + 28);
  v4 = a1 + v3;
  v5 = v3 + a2;
  v6 = type metadata accessor for BaseTreeRegressor(0);
  (*(*(v6 - 8) + 32))(v4, v5, v6);
  return a1;
}

void *assignWithTake for TreeRegressor(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1[1];
  a1[1] = a2[1];
  v5;
  v6 = a1[2];
  a1[2] = a2[2];
  v6;
  v7 = a1[3];
  a1[3] = a2[3];
  v7;
  a1[4] = a2[4];
  v8 = a1[5];
  a1[5] = a2[5];
  v8;
  v9 = *(a3 + 28);
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = type metadata accessor for BaseTreeRegressor(0);
  (*(*(v12 - 8) + 40))(v10, v11, v12);
  return a1;
}

uint64_t sub_8748C(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v5 = type metadata accessor for BaseTreeRegressor(0);
    return __swift_getEnumTagSinglePayload(*(a3 + 28) + a1, a2, v5);
  }

  return result;
}

uint64_t sub_87514(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + 8) = 2 * (a2 - 1);
  }

  else
  {
    v5 = type metadata accessor for BaseTreeRegressor(0);
    return __swift_storeEnumTagSinglePayload(*(a4 + 28) + a1, a2, a2, v5);
  }

  return result;
}

uint64_t type metadata accessor for TreeRegressor(uint64_t a1)
{
  result = type metadata singleton initialization cache for TreeRegressor;
  if (!type metadata singleton initialization cache for TreeRegressor)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for TreeRegressor);
  }

  return result;
}

uint64_t type metadata completion function for TreeRegressor(uint64_t a1)
{
  v3[0] = &unk_33F6A8;
  v3[1] = &value witness table for Builtin.BridgeObject + 64;
  v3[2] = &unk_33F6C0;
  result = type metadata accessor for BaseTreeRegressor(319);
  if (v2 <= 0x3F)
  {
    v3[3] = *(result - 8) + 64;
    swift_initStructMetadata(a1, 256, 4, v3, a1 + 16);
    return 0;
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = (a1 + 40);
    do
    {
      v6 = v1;
      v7 = *(v2 - 1);
      v3 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      v10 = v3 + 1;
      v8 = *v2;

      if (v9 >> 1 <= v3)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v9 >= 2, v10, 1);
      }

      _swiftEmptyArrayStorage[2] = v10;
      v4 = 2 * v3;
      _swiftEmptyArrayStorage[v4 + 4] = v7;
      _swiftEmptyArrayStorage[v4 + 5] = v8;
      v2 += 4;
      v1 = v6 - 1;
    }

    while (v6 != 1);
  }

  return _swiftEmptyArrayStorage;
}

char specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)(*(a3 + 40));
  String.hash(into:)(&v15, a1);
  v5 = Hasher._finalize()();
  v6 = ~(-1 << *(a3 + 32));
  v7 = v6 & v5;
  v8 = *(a3 + 8 * ((v6 & v5) >> 6) + 56);
  if (_bittest64(&v8, v7))
  {
    v9 = *(a3 + 48);
    v10 = *(v9 + 16 * v7);
    v16 = v9;
    if (!(a1 ^ v10 | a2 ^ *(v9 + 16 * v7 + 8)) || (_stringCompareWithSmolCheck(_:_:expecting:)(v10, *(v9 + 16 * v7 + 8), a1, a2, 0) & 1) != 0)
    {
      return 1;
    }

    v12 = v6 & (v7 + 1);
    v13 = *(a3 + 8 * (v12 >> 6) + 56);
    if (_bittest64(&v13, v12))
    {
      while (a1 ^ *(v16 + 16 * v12) | a2 ^ *(v16 + 16 * v12 + 8) && (_stringCompareWithSmolCheck(_:_:expecting:)(*(v16 + 16 * v12), *(v16 + 16 * v12 + 8), a1, a2, 0) & 1) == 0)
      {
        v12 = v6 & (v12 + 1);
        v14 = *(a3 + 8 * (v12 >> 6) + 56);
        result = 0;
        if (!_bittest64(&v14, v12))
        {
          return result;
        }
      }

      return 1;
    }
  }

  return 0;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = type metadata accessor for URL(0);
  v19 = *(v3 - 8);
  v4 = *(v19 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  if (*(a2 + 16))
  {
    v7 = *(a2 + 40);
    v8 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v15 = a1;
    v9 = dispatch thunk of Hashable._rawHashValue(seed:)(v7, v3, v8);
    v16 = ~(-1 << *(a2 + 32));
    v10 = v16 & v9;
    v11 = *(a2 + 8 * ((v16 & v9) >> 6) + 56);
    if (_bittest64(&v11, v10))
    {
      v17 = *(v19 + 16);
      v18 = *(v19 + 72);
      do
      {
        v17(&v15, *(a2 + 48) + v10 * v18, v3);
        v12 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v2 = dispatch thunk of static Equatable.== infix(_:_:)(&v15, v15, v3, v12);
        (*(v19 + 8))(&v15, v3);
        if (v2)
        {
          break;
        }

        v10 = v16 & (v10 + 1);
        v13 = *(a2 + 8 * (v10 >> 6) + 56);
      }

      while (_bittest64(&v13, v10));
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t TreeRegressor.fitted(to:validateOn:eventHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ML16ColumnDescriptorVsAE_pTg5 = v5;
  v68 = a4;
  v69 = a3;
  v63 = a2;
  v86 = a1;
  v64 = v4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v62 = v60;
  v78 = type metadata accessor for DataFrame(0);
  v80 = *(v78 - 8);
  v10 = *(v80 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v79 = v60;
  v72 = type metadata accessor for BaseTreeRegressorModel(0);
  v71 = *(v72 - 8);
  v13 = *(v71 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v70 = v60;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v73 = v60;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v67 = v60;
  v65 = type metadata accessor for AnyColumn(0);
  v88 = *(v65 - 8);
  v20 = v88[8];
  v21 = alloca(v20);
  v22 = alloca(v20);
  v66 = v60;
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Float>);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v81 = v60;
  v28 = alloca(v25);
  v29 = alloca(v25);
  v85 = v60;
  v30 = v6[3];
  v76 = v6[4];
  v77 = v6;
  v84 = v6[5];
  v61 = v86;

  v31 = ML16ColumnDescriptorVsAE_pTg5;
  ML16ColumnDescriptorVsAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_8CreateML16ColumnDescriptorVsAE_pTg5(closure #1 in FeatureVectorizer.fitted(to:)partial apply, v60, v30);
  result = v30;
  if (!v31)
  {
    v33 = v88;
    v83 = v24;
    v82 = v23;
    v34 = v84;

    specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(v86, 0, ML16ColumnDescriptorVsAE_pTg5, v76, v34, _s11TabularData0B5FrameV8CreateMLE8asMatrix2of11descriptors13includingBias0D12MLComponents05DenseG0VyxGxm_SayAD16ColumnDescriptorVGSbtKSBRzlFSf_Tt0g5);
    v89 = 0;
    v35 = v77[1];
    v36 = v66;
    v75 = *v77;
    v74 = v35;
    DataFrame.subscript.getter(v75, v35);
    v37 = AnyColumn.convertedToFloats()();
    v38 = *(v33 + 8);
    (v38)(v36, v65);
    v86 = v37;
    if (!v37)
    {
      BUG();
    }

    v39 = v62;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v63, v62, &demangling cache variable for type metadata for DataFrame?);
    v40 = v78;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 1, v78);
    v42 = v79;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v39, &demangling cache variable for type metadata for DataFrame?);
      type metadata accessor for TreeRegressor(0);
      v43 = v85;
      v44 = v89;
      BaseTreeRegressor.fitted(features:annotations:eventHandler:)(v85, v86, v69, v68);
      (*(v83 + 8))(v43, v82);
      v89 = v44;
      v45 = v71;
      v46 = v67;
      if (v44)
      {
        v84;
        ML16ColumnDescriptorVsAE_pTg5;
      }

      v50 = v70;
      v51 = v72;
    }

    else
    {
      v88 = v38;
      (*(v80 + 32))(v79, v39, v40);
      v47 = ML16ColumnDescriptorVsAE_pTg5;
      v48 = v84;
      v49 = v89;
      specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(v42, 0, ML16ColumnDescriptorVsAE_pTg5, v76, v84, _s11TabularData0B5FrameV8CreateMLE8asMatrix2of11descriptors13includingBias0D12MLComponents05DenseG0VyxGxm_SayAD16ColumnDescriptorVGSbtKSBRzlFSf_Tt0g5);
      if (v49)
      {
        v89 = v49;

        v48;
        v47;
        (*(v80 + 8))(v42, v40);
        return (*(v83 + 8))(v85, v82);
      }

      v52 = v66;
      DataFrame.subscript.getter(v75, v74);
      v53 = AnyColumn.convertedToFloats()();
      (v88)(v52, v65);
      v88 = v53;
      v54 = v53 == 0;
      v46 = v67;
      if (v54)
      {
        BUG();
      }

      type metadata accessor for TreeRegressor(0);
      BaseTreeRegressor.fitted(trainingFeatures:trainingAnnotations:validationFeatures:validationAnnotations:eventHandler:)(v85, v86, v81, v88, v69, v68);
      v89 = 0;
      v51 = v72;

      v55 = *(v83 + 8);
      v56 = v82;
      v55(v81, v82);
      (*(v80 + 8))(v79, v78);
      v55(v85, v56);
      v45 = v71;
      v50 = v73;
    }

    v57 = *(v45 + 32);
    v57(v46, v50, v51);
    v58 = type metadata accessor for TreeRegressorModel(0);
    v59 = v64;
    v57(v64 + *(v58 + 24), v46, v51);
    *v59 = v75;
    v59[1] = v74;
    v59[2] = ML16ColumnDescriptorVsAE_pTg5;
    v59[3] = v76;
    v59[4] = v84;
  }

  return result;
}

uint64_t TreeRegressor.annotationColumnID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return ColumnID.init(_:_:)(v1, v2, &type metadata for Float, &type metadata for Float);
}

uint64_t TreeRegressor.annotationColumnID.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnID<Float>);
  v3 = ColumnID.name.getter(v2);
  v5 = v4;
  (*(*(v2 - 8) + 8))(a1, v2);
  result = v1[1];
  *v1 = v3;
  v1[1] = v5;
  return result;
}

uint64_t specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(a1, a2, a3, a4, a5, _s11TabularData0B5FrameV8CreateMLE8asMatrix2of11descriptors13includingBias0D12MLComponents05DenseG0VyxGxm_SayAD16ColumnDescriptorVGSbtKSBRzlFSf_Tt0g5);
}

{
  return specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(a1, a2, a3, a4, a5, _s11TabularData0B5FrameV8CreateMLE8asMatrix2of11descriptors13includingBias0D12MLComponents05DenseG0VyxGxm_SayAD16ColumnDescriptorVGSbtKSBRzlFSd_Tt0g5);
}

uint64_t specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void))
{
  v17 = a6;
  v24 = a2;
  v19 = a1;
  v18 = v6;
  v22 = type metadata accessor for DataFrame(0);
  v23 = *(v22 - 8);
  v8 = *(v23 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v20 = &v16;

  ML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n(a3);
  v21 = ML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n;
  a3;
  v16 = ML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v13 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
  v14 = v20;
  DataFrame.selecting<A>(columnNames:)(&v16, v12, v13);
  v21;
  v17(a3, v24);
  return (*(v23 + 8))(v14, v22);
}

uint64_t TreeRegressor.encode(_:to:)(uint64_t a1, uint64_t a2)
{
  v16 = v2;
  v3 = *(a1 + 32);
  v15 = a1;
  v13 = *(a1 + 16);
  v14 = v3;
  v4 = *(a2 + 24);
  v17 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer?);
  v6 = lazy protocol witness table accessor for type FeatureVectorizer<Float>.Transformer? and conformance <A> A?();
  result = dispatch thunk of EstimatorEncoder.encode<A>(_:)(&v13, v5, v6, v4, v17, v7, v13, *(&v13 + 1), v14);
  if (!v2)
  {
    v9 = *(type metadata accessor for TreeRegressorModel(0) + 24) + v15;
    v17 = *(a2 + 24);
    v16 = *(a2 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a2, v17);
    v10 = type metadata accessor for BaseTreeRegressorModel(0);
    v11 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type BaseTreeRegressorModel and conformance BaseTreeRegressorModel, &type metadata accessor for BaseTreeRegressorModel, &protocol conformance descriptor for BaseTreeRegressorModel);
    return dispatch thunk of EstimatorEncoder.encode<A>(_:)(v9, v10, v11, v17, v16, v12, v13, *(&v13 + 1), v14);
  }

  return result;
}

uint64_t TreeRegressor.decode(from:)(uint64_t a1)
{
  v26 = v2;
  v21 = v3;
  v19 = v1;
  v24 = type metadata accessor for BaseTreeRegressorModel(0);
  v20 = *(v24 - 8);
  v4 = *(v20 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v25 = v18;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer);
  v8 = *(a1 + 24);
  v27 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v8);
  v9 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FeatureVectorizer<Float>.Transformer and conformance FeatureVectorizer<A>.Transformer, &demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer, &protocol conformance descriptor for FeatureVectorizer<A>.Transformer);
  v10 = v26;
  result = dispatch thunk of EstimatorDecoder.decode<A>(_:)(v7, v7, v9, v8, v27);
  if (!v10)
  {
    v26 = v18[0];
    v23 = v18[1];
    v27 = v18[2];
    v12 = *(a1 + 24);
    v22 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v12);
    v13 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type BaseTreeRegressorModel and conformance BaseTreeRegressorModel, &type metadata accessor for BaseTreeRegressorModel, &protocol conformance descriptor for BaseTreeRegressorModel);
    dispatch thunk of EstimatorDecoder.decode<A>(_:)(v24, v24, v13, v12, v22);
    v14 = *v21;
    v15 = v21[1];
    v16 = type metadata accessor for TreeRegressorModel(0);
    v17 = v19;
    (*(v20 + 32))(v19 + *(v16 + 24), v25, v24);
    *v17 = v14;
    v17[1] = v15;
    v17[2] = v26;
    v17[3] = v23;
    v17[4] = v27;
  }

  return result;
}

void (*protocol witness for SupervisedTabularEstimator.annotationColumnID.modify in conformance TreeRegressor(void *a1))(uint64_t a1, char a2)
{
  v2 = malloc(0x28uLL);
  *a1 = v2;
  *v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnID<Float>);
  v2[1] = v3;
  v4 = *(v3 - 8);
  v2[2] = v4;
  v5 = *(v4 + 64);
  v2[3] = malloc(v5);
  v2[4] = malloc(v5);
  TreeRegressor.annotationColumnID.getter();
  return protocol witness for SupervisedTabularEstimator.annotationColumnID.modify in conformance TreeRegressor;
}

void protocol witness for SupervisedTabularEstimator.annotationColumnID.modify in conformance TreeRegressor(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[1];
    (*(v5 + 16))(v3, v4);
    TreeRegressor.annotationColumnID.setter(v3);
    (*(v5 + 8))(v4, v6);
  }

  else
  {
    TreeRegressor.annotationColumnID.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);
  free(v2);
}

uint64_t TreeRegressor.makeTransformer()()
{
  v2 = v0;
  v3 = *v1;
  v4 = v1[1];
  type metadata accessor for TreeRegressor(0);
  type metadata accessor for TreeRegressorModel(0);

  result = BaseTreeRegressor.makeTransformer()(v4);
  *v2 = v3;
  *(v2 + 8) = v4;
  *(v2 + 16) = 0;
  *(v2 + 32) = 0;
  return result;
}

uint64_t TreeRegressor.update(_:with:eventHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v32 = a3;
  v36 = a2;
  v29 = type metadata accessor for AnyColumn(0);
  v28 = *(v29 - 8);
  v6 = *(v28 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v30 = &v27;
  v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Float>);
  v33 = *(v34 - 8);
  v9 = *(v33 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = &v27;
  ML16ColumnDescriptorVsAE_pTg5 = a1[2];
  v35 = a1;
  if (ML16ColumnDescriptorVsAE_pTg5)
  {
    v38 = v5;
    v14 = v36;
    v15 = a1[3];
    v16 = a1[4];
  }

  else
  {
    v37 = &v27;
    v38 = &v27;
    v22 = v5;
    v23 = v5[2];
    v24 = alloca(24);
    v25 = alloca(32);
    v29 = v36;

    ML16ColumnDescriptorVsAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_8CreateML16ColumnDescriptorVsAE_pTg5(partial apply for closure #1 in FeatureVectorizer.fitted(to:), &v27, v23);
    result = v23;
    if (v4)
    {
      return result;
    }

    v14 = v36;
    v15 = 0xD000000000000013;
    v16 = "raining samples." + 0x8000000000000000;
    v26 = v35;
    v35[2] = ML16ColumnDescriptorVsAE_pTg5;
    v26[3] = 0xD000000000000013;
    v26[4] = "raining samples." + 0x8000000000000000;
    v38 = v22;
    v12 = v37;
  }

  result = specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(v14, 0, ML16ColumnDescriptorVsAE_pTg5, v15, v16, _s11TabularData0B5FrameV8CreateMLE8asMatrix2of11descriptors13includingBias0D12MLComponents05DenseG0VyxGxm_SayAD16ColumnDescriptorVGSbtKSBRzlFSf_Tt0g5);
  if (!v4)
  {
    v37 = v12;
    v18 = v30;
    DataFrame.subscript.getter(*v38, v38[1]);
    v19 = AnyColumn.convertedToFloats()();
    (*(v28 + 8))(v18, v29);
    if (!v19)
    {
      BUG();
    }

    type metadata accessor for TreeRegressor(0);
    v20 = type metadata accessor for TreeRegressorModel(0);
    v21 = v37;
    BaseTreeRegressor.update(_:features:annotations:eventHandler:)(v35 + *(v20 + 24), v37, v19, v32, v31);
    (*(v33 + 8))(v21, v34);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstract(uint64_t *a1)
{
  result = *a1;
  if (*a1 < 0)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2(255, a1 + result, -(result >> 32), 0, 0);
    *a1 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type FeatureVectorizer<Float>.Transformer? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type FeatureVectorizer<Float>.Transformer? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type FeatureVectorizer<Float>.Transformer? and conformance <A> A?)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer?);
    lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FeatureVectorizer<Float>.Transformer and conformance FeatureVectorizer<A>.Transformer, &demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer, &protocol conformance descriptor for FeatureVectorizer<A>.Transformer);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v1);
    lazy protocol witness table cache variable for type FeatureVectorizer<Float>.Transformer? and conformance <A> A? = result;
  }

  return result;
}

uint64_t _s11TabularData0B5FrameV8CreateMLE8asMatrix2of11descriptors13includingBias0D12MLComponents05DenseG0VyxGxm_SayAD16ColumnDescriptorVGSbtKSBRzlFSf_Tt0g5(uint64_t a1, int a2, float a3)
{
  LODWORD(v55) = a2;
  v43 = v3;
  v46 = type metadata accessor for AnyColumn(0);
  v47 = *(v46 - 8);
  v6 = *(v47 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v56 = &v39;
  v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
  v9 = *(*(v44 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v41 = v5;
  v12 = a1;
  v13 = DataFrame.shape.getter(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);

  v52 = &v39;
  _s8CreateML20FeatureMatrixBuilderV8rowCount18featureDescriptors12includesBiasACyxGSi_SayAA16ColumnDescriptorVGSbtcfCSf_Tt3g5(v13, a1, v55);
  v42 = *(a1 + 16);
  if (!v42)
  {
LABEL_18:
    v32 = v52;
    v33 = v52 + *(v44 + 44);
    v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Float>);
    (*(*(v34 - 8) + 16))(v43, v33, v34);
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v32, &demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
  }

  v55 = v4;

  v14 = 7;
  v15 = 0;
  v53 = a1;
  while (2)
  {
    v54 = *(v12 + 8 * v14 - 24);
    v16 = v14;
    v17 = *(v12 + 8 * v14 - 16);
    v18 = *(v12 + 8 * v16 - 8);
    v39 = v16;
    v19 = *(v12 + 8 * v16);

    v45 = v18;
    outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v18, v19);
    v20 = v54;
    v54 = v17;
    DataFrame.subscript.getter(v20, v17);
    v21 = *v52;
    if (v15 >= *(*v52 + 16))
    {
      BUG();
    }

    v22 = v52[1];
    if (v15 >= *(v22 + 16))
    {
      BUG();
    }

    v23 = v39;
    v24 = *(v21 + 8 * v39 - 16);
    v25 = *(v21 + 8 * v39 - 8);
    v40 = v15;
    v26 = *(v22 + 8 * v15 + 32);
    v27 = *(v21 + 8 * v39);
    v49 = v19;
    switch(v27)
    {
      case 0:
      case 1:
      case 2:
      case 3:
        v28 = v55;
        specialized FeatureMatrixBuilder.fillArray(from:size:column:)(v56, v25, v26);
        goto LABEL_7;
      case 4:
        v48 = v27;
        v51 = v24;

        outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v25, 4);
        v50 = v25;
        v31 = v55;
        specialized FeatureMatrixBuilder.fillCategorical(from:categories:column:)(v56, v25, v26);
        v55 = v31;
        if (!v31)
        {
          goto LABEL_14;
        }

        v36 = v19;
        v51;
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v50, 4);
        goto LABEL_21;
      case 5:
        v48 = v27;
        v51 = v24;

        outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v25, 5);
        v50 = v25;
        v30 = v55;
        specialized FeatureMatrixBuilder.fillDictionary(from:descriptors:column:)(v56, v25, v26, specialized FeatureMatrixBuilder.fill(_:descriptor:row:column:));
        v55 = v30;
        if (v30)
        {
          v36 = v19;
          v51;
          outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v50, 5);
          goto LABEL_21;
        }

LABEL_14:
        v12 = v53;
        v29 = v56;
        v51;
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v50, v48);
        goto LABEL_15;
      case 6:
        v28 = v55;
        if (v25)
        {
          specialized FeatureMatrixBuilder.fillFloat(from:column:)(v56, v26, a3);
        }

        else
        {
          specialized FeatureMatrixBuilder.fillInteger(from:column:)(v56, v26, a3);
        }

LABEL_7:
        v55 = v28;
        if (!v28)
        {
          v12 = v53;
          v29 = v56;
LABEL_15:
          v15 = v40 + 1;
          v54;
          outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v45, v49);
          (*(v47 + 8))(v29, v46);
          v14 = v23 + 4;
          if (v42 == v15)
          {
            v12;
            goto LABEL_18;
          }

          continue;
        }

        v36 = v19;
LABEL_21:
        v37 = v53;
        v38 = v56;
        v54;
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v45, v36);
        (*(v47 + 8))(v38, v46);
        v37;
        return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v52, &demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
    }
  }
}

uint64_t _s11TabularData0B5FrameV8CreateMLE8asMatrix2of11descriptors13includingBias0D12MLComponents05DenseG0VyxGxm_SayAD16ColumnDescriptorVGSbtKSBRzlFSd_Tt0g5(uint64_t a1, int a2, float a3)
{
  LODWORD(v55) = a2;
  v43 = v3;
  v46 = type metadata accessor for AnyColumn(0);
  v47 = *(v46 - 8);
  v6 = *(v47 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v56 = &v39;
  v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
  v9 = *(*(v44 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v41 = v5;
  v12 = a1;
  v13 = DataFrame.shape.getter(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);

  v52 = &v39;
  _s8CreateML20FeatureMatrixBuilderV8rowCount18featureDescriptors12includesBiasACyxGSi_SayAA16ColumnDescriptorVGSbtcfCSd_Tt3g5(v13, a1, v55);
  v42 = *(a1 + 16);
  if (!v42)
  {
LABEL_18:
    v32 = v52;
    v33 = v52 + *(v44 + 44);
    v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Double>);
    (*(*(v34 - 8) + 16))(v43, v33, v34);
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v32, &demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
  }

  v55 = v4;

  v14 = 7;
  v15 = 0;
  v53 = a1;
  while (2)
  {
    v54 = *(v12 + 8 * v14 - 24);
    v16 = v14;
    v17 = *(v12 + 8 * v14 - 16);
    v18 = *(v12 + 8 * v16 - 8);
    v39 = v16;
    v19 = *(v12 + 8 * v16);

    v45 = v18;
    outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v18, v19);
    v20 = v54;
    v54 = v17;
    DataFrame.subscript.getter(v20, v17);
    v21 = *v52;
    if (v15 >= *(*v52 + 16))
    {
      BUG();
    }

    v22 = v52[1];
    if (v15 >= *(v22 + 16))
    {
      BUG();
    }

    v23 = v39;
    v24 = *(v21 + 8 * v39 - 16);
    v25 = *(v21 + 8 * v39 - 8);
    v40 = v15;
    v26 = *(v22 + 8 * v15 + 32);
    v27 = *(v21 + 8 * v39);
    v49 = v19;
    switch(v27)
    {
      case 0:
      case 1:
      case 2:
      case 3:
        v28 = v55;
        specialized FeatureMatrixBuilder.fillArray(from:size:column:)(v56, v25, v26);
        goto LABEL_7;
      case 4:
        v48 = v27;
        v51 = v24;

        outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v25, 4);
        v50 = v25;
        v31 = v55;
        specialized FeatureMatrixBuilder.fillCategorical(from:categories:column:)(v56, v25, v26);
        v55 = v31;
        if (!v31)
        {
          goto LABEL_14;
        }

        v36 = v19;
        v51;
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v50, 4);
        goto LABEL_21;
      case 5:
        v48 = v27;
        v51 = v24;

        outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v25, 5);
        v50 = v25;
        v30 = v55;
        specialized FeatureMatrixBuilder.fillDictionary(from:descriptors:column:)(v56, v25, v26, specialized FeatureMatrixBuilder.fill(_:descriptor:row:column:));
        v55 = v30;
        if (v30)
        {
          v36 = v19;
          v51;
          outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v50, 5);
          goto LABEL_21;
        }

LABEL_14:
        v12 = v53;
        v29 = v56;
        v51;
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v50, v48);
        goto LABEL_15;
      case 6:
        v28 = v55;
        if (v25)
        {
          specialized FeatureMatrixBuilder.fillFloat(from:column:)(v56, v26, a3);
        }

        else
        {
          specialized FeatureMatrixBuilder.fillInteger(from:column:)(v56, v26, a3);
        }

LABEL_7:
        v55 = v28;
        if (!v28)
        {
          v12 = v53;
          v29 = v56;
LABEL_15:
          v15 = v40 + 1;
          v54;
          outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v45, v49);
          (*(v47 + 8))(v29, v46);
          v14 = v23 + 4;
          if (v42 == v15)
          {
            v12;
            goto LABEL_18;
          }

          continue;
        }

        v36 = v19;
LABEL_21:
        v37 = v53;
        v38 = v56;
        v54;
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v45, v36);
        (*(v47 + 8))(v38, v46);
        v37;
        return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v52, &demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
    }
  }
}

uint64_t _s8CreateML20FeatureMatrixBuilderV8rowCount18featureDescriptors12includesBiasACyxGSi_SayAA16ColumnDescriptorVGSbtcfCSf_Tt3g5(uint64_t a1, uint64_t a2, int a3)
{
  v30 = a1;
  *v3 = a2;
  *(v3 + 16) = a3 & 1;
  v4 = *(a2 + 16);
  v32 = v3;
  if (v4)
  {
    v33 = a3;

    v31 = a2;
    v5 = (a2 + 56);
    v34 = _swiftEmptyArrayStorage;
    v6 = 0;
    do
    {
      v29 = v4;
      v7 = *(v5 - 1);
      v8 = *v5;
      v28 = *(v5 - 2);

      v9 = v8;
      v10 = v7;
      outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v7, v9);
      v27 = v6;
      if (!swift_isUniquelyReferenced_nonNull_native(v34))
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34[2] + 1, 1, v34);
      }

      v11 = v34[2];
      if (v34[3] >> 1 <= v11)
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v34[3] >= 2uLL, v11 + 1, 1, v34);
      }

      v12 = v34;
      v34[2] = v11 + 1;
      v13 = v27;
      v12[v11 + 4] = v27;
      v14 = v13;
      v15 = ColumnDescriptor.ColumnTypeDescriptor.featureSize.getter(v7, v9);
      v28;
      outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v10, v9);
      v16 = __OFADD__(v15, v14);
      v6 = v15 + v14;
      if (v16)
      {
        BUG();
      }

      v5 += 32;
      v4 = v29 - 1;
    }

    while (v29 != 1);
    v31;
    *(v32 + 8) = v34;
    if ((v33 & 1) == 0)
    {
      v17 = 0;
      v18 = v6;
      goto LABEL_13;
    }
  }

  else
  {
    *(v3 + 8) = _swiftEmptyArrayStorage;
    v6 = 0;
    v18 = 0;
    v17 = 0;
    if ((a3 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v18 = v6;
  v16 = __OFADD__(1, v6++);
  v17 = 1;
  if (v16)
  {
    BUG();
  }

LABEL_13:
  LODWORD(v26[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
  v19 = lazy protocol witness table accessor for type Float and conformance Float();
  v20 = v6;
  v21 = v30;
  result = DenseMatrix.init(rowCount:columnCount:layout:repeating:)(v30, v20, 0, v26, &type metadata for Float, v19);
  if (v17)
  {
    if (v21 < 0)
    {
      BUG();
    }

    if (v21)
    {
      for (i = 0; i != v21; ++i)
      {
        v24 = specialized DenseMatrix.subscript.modify(v26, i, v18);
        *v25 = 1065353216;
        result = (v24)(v26, 0);
      }
    }
  }

  return result;
}

uint64_t _s8CreateML20FeatureMatrixBuilderV8rowCount18featureDescriptors12includesBiasACyxGSi_SayAA16ColumnDescriptorVGSbtcfCSd_Tt3g5(uint64_t a1, uint64_t a2, int a3)
{
  v30 = a1;
  *v3 = a2;
  *(v3 + 16) = a3 & 1;
  v4 = *(a2 + 16);
  if (v4)
  {
    v33 = a3;
    v31 = v3;

    v32 = a2;
    v5 = (a2 + 56);
    v34 = _swiftEmptyArrayStorage;
    v6 = 0;
    do
    {
      v29 = v4;
      v7 = *(v5 - 1);
      v8 = *v5;
      v28 = *(v5 - 2);

      v9 = v8;
      v10 = v7;
      outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v7, v9);
      v27 = v6;
      if (!swift_isUniquelyReferenced_nonNull_native(v34))
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34[2] + 1, 1, v34);
      }

      v11 = v34[2];
      if (v34[3] >> 1 <= v11)
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v34[3] >= 2uLL, v11 + 1, 1, v34);
      }

      v12 = v34;
      v34[2] = v11 + 1;
      v13 = v27;
      v12[v11 + 4] = v27;
      v14 = v13;
      v15 = ColumnDescriptor.ColumnTypeDescriptor.featureSize.getter(v7, v9);
      v28;
      outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v10, v9);
      v16 = __OFADD__(v15, v14);
      v6 = v15 + v14;
      if (v16)
      {
        BUG();
      }

      v5 += 32;
      v4 = v29 - 1;
    }

    while (v29 != 1);
    v32;
    *(v31 + 8) = v34;
    if ((v33 & 1) == 0)
    {
      v17 = 0;
      v18 = v6;
      goto LABEL_13;
    }
  }

  else
  {
    *(v3 + 8) = _swiftEmptyArrayStorage;
    v6 = 0;
    v18 = 0;
    v17 = 0;
    if ((a3 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v18 = v6;
  v16 = __OFADD__(1, v6++);
  v17 = 1;
  if (v16)
  {
    BUG();
  }

LABEL_13:
  v26[0] = 0;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
  v19 = lazy protocol witness table accessor for type Double and conformance Double();
  v20 = v6;
  v21 = v30;
  result = DenseMatrix.init(rowCount:columnCount:layout:repeating:)(v30, v20, 0, v26, &type metadata for Double, v19);
  if (v17)
  {
    if (v21 < 0)
    {
      BUG();
    }

    if (v21)
    {
      for (i = 0; i != v21; ++i)
      {
        v24 = specialized DenseMatrix.subscript.modify(v26, i, v18);
        *v25 = 0x3FF0000000000000;
        result = (v24)(v26, 0);
      }
    }
  }

  return result;
}

uint64_t specialized FeatureMatrixBuilder.fillInteger(from:column:)(__int128 *a1, uint64_t a2, float a3)
{
  v81 = v3;
  v78 = v4;
  *&v80 = a2;
  v76 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<NSNumber>);
  v75 = *(v76 - 8);
  v5 = *(v75 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v77 = &v57;
  v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v72 = *(v73 - 8);
  v8 = *(v72 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v74 = &v57;
  v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Float>);
  v69 = *(v70 - 8);
  v11 = *(v69 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v71 = &v57;
  v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int64>);
  v66 = *(v67 - 8);
  v14 = *(v66 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v68 = &v57;
  v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int32>);
  v63 = *(v64 - 8);
  v17 = *(v63 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v65 = &v57;
  v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int16>);
  v60 = *(v61 - 8);
  v20 = *(v60 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v62 = &v57;
  v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int8>);
  v58 = *(v59 - 8);
  v23 = *(v58 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v82 = &v57;
  v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = alloca(v28);
  v30 = alloca(v28);
  v79 = AnyColumn.wrappedElementType.getter(&demangling cache variable for type metadata for Column<Int>);
  if (swift_dynamicCastMetatype(v79, &type metadata for Int))
  {
    AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(&v57, v80, &demangling cache variable for type metadata for Column<Int>);
    return (*(v27 + 8))(&v57, v26);
  }

  v32 = v82;
  v33 = v79;
  if (swift_dynamicCastMetatype(v79, &type metadata for Int8))
  {
    AnyColumn.assumingType<A>(_:)(&type metadata for Int8, &type metadata for Int8);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v32, v80);
    v34 = v32;
    v35 = v59;
    v36 = v58;
    return (*(v36 + 8))(v34, v35);
  }

  v37 = swift_dynamicCastMetatype(v33, &type metadata for Int16);
  v38 = v80;
  if (v37)
  {
    v39 = v62;
    AnyColumn.assumingType<A>(_:)(&type metadata for Int16, &type metadata for Int16);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v39, v38);
    v34 = v39;
    v35 = v61;
    v36 = v60;
    return (*(v36 + 8))(v34, v35);
  }

  v82 = a1;
  v40 = v79;
  if (swift_dynamicCastMetatype(v79, &type metadata for Int32))
  {
    v41 = v65;
    AnyColumn.assumingType<A>(_:)(&type metadata for Int32, &type metadata for Int32);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v41, v38);
    v34 = v41;
    v35 = v64;
    v36 = v63;
    return (*(v36 + 8))(v34, v35);
  }

  if (swift_dynamicCastMetatype(v40, &type metadata for Int64))
  {
    v42 = v68;
    AnyColumn.assumingType<A>(_:)(&type metadata for Int64, &type metadata for Int64);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v42, v38, &demangling cache variable for type metadata for Column<Int64>);
    v34 = v42;
    v35 = v67;
    v36 = v66;
    return (*(v36 + 8))(v34, v35);
  }

  if (swift_dynamicCastMetatype(v40, &type metadata for Float))
  {
    v43 = v71;
    AnyColumn.assumingType<A>(_:)(&type metadata for Float, &type metadata for Float);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v43, v38);
    v34 = v43;
    v35 = v70;
    v36 = v69;
    return (*(v36 + 8))(v34, v35);
  }

  if (swift_dynamicCastMetatype(v40, &type metadata for Double))
  {
    v44 = v74;
    AnyColumn.assumingType<A>(_:)(&type metadata for Double, &type metadata for Double);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v44, v38);
    v34 = v44;
    v35 = v73;
    v36 = v72;
    return (*(v36 + 8))(v34, v35);
  }

  v45 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  if (swift_dynamicCastMetatype(v40, v45))
  {
    v46 = v77;
    AnyColumn.assumingType<A>(_:)(v45, v45);
    specialized FeatureMatrixBuilder.fillInteger(from:column:)(v46, v80, a3);
    v34 = v46;
    v35 = v76;
    v36 = v75;
    return (*(v36 + 8))(v34, v35);
  }

  *&v57 = 0;
  *(&v57 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  v47._object = "sessionDirectory" + 0x8000000000000000;
  v47._countAndFlagsBits = 0xD000000000000025;
  String.append(_:)(v47);
  v48 = AnyColumn.name.getter();
  v50 = v49;
  v47._countAndFlagsBits = v48;
  v47._object = v49;
  String.append(_:)(v47);
  v50;
  v47._countAndFlagsBits = 0x6720747562202C27;
  v47._object = 0xEB0000000020746FLL;
  String.append(_:)(v47);
  v51 = AnyColumn.wrappedElementType.getter(0x6720747562202C27);
  v52 = _typeName(_:qualified:)(v51, 0);
  v54 = v53;
  v47._countAndFlagsBits = v52;
  v47._object = v53;
  String.append(_:)(v47);
  v54;
  v47._countAndFlagsBits = 46;
  v47._object = 0xE100000000000000;
  String.append(_:)(v47);
  v80 = v57;
  v55 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v55, 0, 0);
  *v56 = v80;
  *(v56 + 16) = 0;
  *(v56 + 32) = 0;
  *(v56 + 48) = 0;
  return swift_willThrow();
}

{
  v81 = v3;
  v78 = v4;
  *&v80 = a2;
  v76 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<NSNumber>);
  v75 = *(v76 - 8);
  v5 = *(v75 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v77 = &v57;
  v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v72 = *(v73 - 8);
  v8 = *(v72 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v74 = &v57;
  v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Float>);
  v69 = *(v70 - 8);
  v11 = *(v69 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v71 = &v57;
  v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int64>);
  v66 = *(v67 - 8);
  v14 = *(v66 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v68 = &v57;
  v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int32>);
  v63 = *(v64 - 8);
  v17 = *(v63 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v65 = &v57;
  v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int16>);
  v60 = *(v61 - 8);
  v20 = *(v60 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v62 = &v57;
  v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int8>);
  v58 = *(v59 - 8);
  v23 = *(v58 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v82 = &v57;
  v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = alloca(v28);
  v30 = alloca(v28);
  v79 = AnyColumn.wrappedElementType.getter(&demangling cache variable for type metadata for Column<Int>);
  if (swift_dynamicCastMetatype(v79, &type metadata for Int))
  {
    AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(&v57, v80, &demangling cache variable for type metadata for Column<Int>);
    return (*(v27 + 8))(&v57, v26);
  }

  v32 = v82;
  v33 = v79;
  if (swift_dynamicCastMetatype(v79, &type metadata for Int8))
  {
    AnyColumn.assumingType<A>(_:)(&type metadata for Int8, &type metadata for Int8);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v32, v80);
    v34 = v32;
    v35 = v59;
    v36 = v58;
    return (*(v36 + 8))(v34, v35);
  }

  v37 = swift_dynamicCastMetatype(v33, &type metadata for Int16);
  v38 = v80;
  if (v37)
  {
    v39 = v62;
    AnyColumn.assumingType<A>(_:)(&type metadata for Int16, &type metadata for Int16);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v39, v38);
    v34 = v39;
    v35 = v61;
    v36 = v60;
    return (*(v36 + 8))(v34, v35);
  }

  v82 = a1;
  v40 = v79;
  if (swift_dynamicCastMetatype(v79, &type metadata for Int32))
  {
    v41 = v65;
    AnyColumn.assumingType<A>(_:)(&type metadata for Int32, &type metadata for Int32);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v41, v38);
    v34 = v41;
    v35 = v64;
    v36 = v63;
    return (*(v36 + 8))(v34, v35);
  }

  if (swift_dynamicCastMetatype(v40, &type metadata for Int64))
  {
    v42 = v68;
    AnyColumn.assumingType<A>(_:)(&type metadata for Int64, &type metadata for Int64);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v42, v38, &demangling cache variable for type metadata for Column<Int64>);
    v34 = v42;
    v35 = v67;
    v36 = v66;
    return (*(v36 + 8))(v34, v35);
  }

  if (swift_dynamicCastMetatype(v40, &type metadata for Float))
  {
    v43 = v71;
    AnyColumn.assumingType<A>(_:)(&type metadata for Float, &type metadata for Float);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v43, v38);
    v34 = v43;
    v35 = v70;
    v36 = v69;
    return (*(v36 + 8))(v34, v35);
  }

  if (swift_dynamicCastMetatype(v40, &type metadata for Double))
  {
    v44 = v74;
    AnyColumn.assumingType<A>(_:)(&type metadata for Double, &type metadata for Double);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v44, v38);
    v34 = v44;
    v35 = v73;
    v36 = v72;
    return (*(v36 + 8))(v34, v35);
  }

  v45 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  if (swift_dynamicCastMetatype(v40, v45))
  {
    v46 = v77;
    AnyColumn.assumingType<A>(_:)(v45, v45);
    specialized FeatureMatrixBuilder.fillInteger(from:column:)(v46, v80, a3);
    v34 = v46;
    v35 = v76;
    v36 = v75;
    return (*(v36 + 8))(v34, v35);
  }

  *&v57 = 0;
  *(&v57 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  v47._object = "sessionDirectory" + 0x8000000000000000;
  v47._countAndFlagsBits = 0xD000000000000025;
  String.append(_:)(v47);
  v48 = AnyColumn.name.getter();
  v50 = v49;
  v47._countAndFlagsBits = v48;
  v47._object = v49;
  String.append(_:)(v47);
  v50;
  v47._countAndFlagsBits = 0x6720747562202C27;
  v47._object = 0xEB0000000020746FLL;
  String.append(_:)(v47);
  v51 = AnyColumn.wrappedElementType.getter(0x6720747562202C27);
  v52 = _typeName(_:qualified:)(v51, 0);
  v54 = v53;
  v47._countAndFlagsBits = v52;
  v47._object = v53;
  String.append(_:)(v47);
  v54;
  v47._countAndFlagsBits = 46;
  v47._object = 0xE100000000000000;
  String.append(_:)(v47);
  v80 = v57;
  v55 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v55, 0, 0);
  *v56 = v80;
  *(v56 + 16) = 0;
  *(v56 + 32) = 0;
  *(v56 + 48) = 0;
  return swift_willThrow();
}

uint64_t specialized FeatureMatrixBuilder.fillCategorical(from:categories:column:)(uint64_t a1, void *a2, uint64_t a3)
{
  v153 = v3;
  v162 = v4;
  v161 = a3;
  v168 = a2;
  v166 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Int]>);
  v158 = *(v166 - 1);
  v5 = *(v158 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v157 = &v147;
  v154 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Float]>);
  v156 = *(v154 - 8);
  v8 = *(v156 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v155 = &v147;
  v163 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Double]>);
  v152 = *(v163 - 8);
  v11 = *(v152 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v160 = &v147;
  v159 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v151 = *(v159 - 8);
  v14 = *(v151 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v150 = &v147;
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v147 = *(v17 - 8);
  v18 = *(v147 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v21 = AnyColumn.wrappedElementType.getter(&demangling cache variable for type metadata for Column<String>);
  if (swift_dynamicCastMetatype(v21, &type metadata for String))
  {
    AnyColumn.assumingType<A>(_:)(&type metadata for String, &type metadata for String);
    v22 = Column.count.getter(v17);
    v163 = v22;
    if (v22 < 0)
    {
      BUG();
    }

    v166 = &v147;
    v165 = v17;
    if (v22)
    {
      v164 = v168[2];
      v168 += 5;
      v171 = 0;
      while (!v164)
      {
LABEL_15:
        if (++v171 == v163)
        {
          goto LABEL_16;
        }
      }

      v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
      v167 = v162 + *(v23 + 44);
      v24 = v168;
      v25 = 0;
      while (1)
      {
        v26 = v25 + v161;
        if (__OFADD__(v25, v161))
        {
          BUG();
        }

        v170 = *(v24 - 1);
        *&v169 = *v24;

        Column.subscript.getter(v171, v165);
        v27 = BYTE8(v148[0]);
        if (!*(&v148[0] + 1))
        {
          break;
        }

        if (*&v148[0] ^ v170 | v169 ^ *(&v148[0] + 1))
        {
          LOBYTE(v170) = _stringCompareWithSmolCheck(_:_:expecting:)(v170, v169, *&v148[0], *(&v148[0] + 1), 0);
          v169;
          v27;
          v28 = 1065353216;
          if ((v170 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v169;
          v27;
          v28 = 1065353216;
        }

LABEL_14:
        LODWORD(v169) = v28;
        v25 = (v25 + 1);
        v29 = specialized DenseMatrix.subscript.modify(v148, v171, v26);
        *v30 = v169;
        (v29)(v148, 0);
        v24 += 2;
        if (v164 == v25)
        {
          goto LABEL_15;
        }
      }

      v169;
LABEL_13:
      v28 = 0;
      goto LABEL_14;
    }

LABEL_16:
    v31 = v166;
    v32 = v165;
    v33 = v147;
    return (*(v33 + 8))(v31, v32);
  }

  v34 = AnyColumn.wrappedElementType.getter(v21);
  v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  if (swift_dynamicCastMetatype(v34, v35))
  {
    v36 = v150;
    AnyColumn.assumingType<A>(_:)(v35, v35);
    v37 = v159;
    v160 = Column.count.getter(v159);
    if (v160 < 0)
    {
      BUG();
    }

    v33 = v151;
    if (!v160)
    {
LABEL_54:
      v31 = v36;
      v32 = v37;
      return (*(v33 + 8))(v31, v32);
    }

    v167 = v168[2];
    v168 += 4;
    v38 = 0;
    while (1)
    {
      v166 = v38;
      Column.subscript.getter(v38, v37);
      v39 = *&v148[0];
      if (!*&v148[0])
      {
        v39 = _swiftEmptyArrayStorage;
      }

      v40 = Set.init(minimumCapacity:)(v39[2], &type metadata for String, &protocol witness table for String);
      v149 = v40;
      v41 = v39[2];
      if (v41)
      {
        *&v169 = v39;
        v42 = v39 + 5;
        do
        {
          v43 = *(v42 - 1);
          v44 = *v42;

          specialized Set._Variant.insert(_:)(v148, v43, v44);
          SBYTE8(v148[0]);
          v42 += 2;
          --v41;
        }

        while (v41);
        v169;
        v45 = v149;
      }

      else
      {
        v46 = v40;
        v39;
        v45 = v46;
      }

      v47 = v166;
      if (v167)
      {
        break;
      }

LABEL_53:
      v77 = (v47 + 1);
      v45;
      v78 = v77 == v160;
      v38 = v77;
      v37 = v159;
      v33 = v151;
      v36 = v150;
      if (v78)
      {
        goto LABEL_54;
      }
    }

    *&v169 = v45;
    v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
    v45 = v169;
    v165 = v162 + *(v48 + 44);
    v49 = 0;
    while (1)
    {
      v50 = v49 + v161;
      if (__OFADD__(v49, v161))
      {
        BUG();
      }

      if (*(v45 + 16))
      {
        break;
      }

      LODWORD(v171) = 0;
LABEL_49:
      v49 = (v49 + 1);
      v75 = specialized DenseMatrix.subscript.modify(v148, v47, v50);
      *v76 = v171;
      (v75)(v148, 0);
      v45 = v169;
      if (v49 == v167)
      {
        goto LABEL_53;
      }
    }

    v164 = v49;
    v51 = 2 * v49;
    v52 = v168[2 * v49];
    v53 = v168[v51 + 1];
    Hasher.init(_seed:)(*(v169 + 40));

    v170 = v52;
    v171 = v53;
    String.hash(into:)(v148, v52);
    v54 = Hasher._finalize()();
    v55 = ~(-1 << *(v169 + 32));
    v56 = v55 & v54;
    v57 = *(v169 + 8 * ((v55 & v54) >> 6) + 56);
    if (_bittest64(&v57, v56))
    {
      v58 = *(v169 + 48);
      v59 = *(v58 + 16 * v56);
      v163 = v58;
      v60 = *(v58 + 16 * v56 + 8);
      LOBYTE(v61) = v171;
      v49 = v164;
      if (v59 == v170)
      {
        v62 = 1065353216;
        if (v60 == v171)
        {
          goto LABEL_48;
        }
      }

      v63 = _stringCompareWithSmolCheck(_:_:expecting:)(v59, v60, v170, v171, 0);
      LOBYTE(v61) = v171;
      v62 = 1065353216;
      if (v63)
      {
        goto LABEL_48;
      }

      v64 = v55 & (v56 + 1);
      v65 = *(v169 + 8 * (v64 >> 6) + 56);
      if (_bittest64(&v65, v64))
      {
        v66 = *(v163 + 16 * v64);
        v67 = *(v163 + 16 * v64 + 8);
        if (v66 == v170)
        {
          v62 = 1065353216;
          if (v67 == v171)
          {
            goto LABEL_48;
          }
        }

        v68 = _stringCompareWithSmolCheck(_:_:expecting:)(v66, v67, v170, v171, 0);
        v69 = v170;
        v61 = v171;
        v62 = 1065353216;
        if (v68)
        {
          goto LABEL_48;
        }

        v70 = v55 & (v64 + 1);
        v71 = *(v169 + 8 * (v70 >> 6) + 56);
        if (_bittest64(&v71, v70))
        {
          while (1)
          {
            v72 = *(v163 + 16 * v70);
            v73 = *(v163 + 16 * v70 + 8);
            if (v72 == v69 && v73 == v61)
            {
              v62 = 1065353216;
              goto LABEL_48;
            }

            if (_stringCompareWithSmolCheck(_:_:expecting:)(v72, v73, v69, v61, 0))
            {
              break;
            }

            v70 = v55 & (v70 + 1);
            v74 = *(v169 + 8 * (v70 >> 6) + 56);
            v61 = v171;
            v69 = v170;
            if (!_bittest64(&v74, v70))
            {
              goto LABEL_45;
            }
          }

          v62 = 1065353216;
          LOBYTE(v61) = v171;
          goto LABEL_48;
        }
      }

LABEL_45:
      v62 = 0;
    }

    else
    {
      v62 = 0;
      LOBYTE(v61) = v171;
      v49 = v164;
    }

LABEL_48:
    LODWORD(v171) = v62;
    v61;
    v47 = v166;
    goto LABEL_49;
  }

  v80 = AnyColumn.wrappedElementType.getter(v34);
  v81 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Double]);
  if (swift_dynamicCastMetatype(v80, v81))
  {
    v82 = v160;
    AnyColumn.assumingType<A>(_:)(v81, v81);
    v83 = v163;
    v84 = Column.count.getter(v163);
    v159 = v84;
    if (v84 < 0)
    {
      BUG();
    }

    v85 = v152;
    if (v84)
    {
      v165 = v168[2];
      v168 += 5;
      v86 = 0;
      do
      {
        v167 = v86;
        Column.subscript.getter(v86, v83);
        v87 = *&v148[0];
        if (!*&v148[0])
        {
          v87 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Double, &protocol witness table for String);
        }

        if (v165)
        {
          v88 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
          v166 = (v162 + *(v88 + 44));
          v89 = v168;
          v90 = 0;
          v171 = v87;
          do
          {
            v91 = v90 + v161;
            if (__OFADD__(v90, v161))
            {
              BUG();
            }

            if (*(v87 + 16))
            {
              v92 = v89;
              v93 = *v89;
              v170 = v92;
              *&v169 = *(v92 - 8);

              v94 = v169;
              *&v169 = v93;
              v95 = specialized __RawDictionaryStorage.find<A>(_:)(v94, v93);
              v96 = 0;
              if (v97)
              {
                v96 = *(*(v171 + 56) + 8 * v95);
              }

              v164 = v96;
              v169;
              v98 = *&v164;
              v99 = v167;
              v89 = v170;
            }

            else
            {
              v98 = 0.0;
              v99 = v167;
            }

            ++v90;
            v100 = v98;
            *&v169 = v100;
            v101 = specialized DenseMatrix.subscript.modify(v148, v99, v91);
            *v102 = v169;
            (v101)(v148, 0);
            v89 += 2;
            v87 = v171;
          }

          while (v165 != v90);
          v171;
          v85 = v152;
          v83 = v163;
          v82 = v160;
        }

        else
        {
          v87;
        }

        v86 = v167 + 1;
      }

      while (v167 + 1 != v159);
    }

    return (*(v85 + 8))(v82, v83);
  }

  v103 = AnyColumn.wrappedElementType.getter(v80);
  v104 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Float]);
  if (swift_dynamicCastMetatype(v103, v104))
  {
    v82 = v155;
    AnyColumn.assumingType<A>(_:)(v104, v104);
    v83 = v154;
    v105 = Column.count.getter(v154);
    v163 = v105;
    if (v105 < 0)
    {
      BUG();
    }

    v85 = v156;
    if (v105)
    {
      v165 = v168[2];
      v168 += 5;
      v106 = 0;
      do
      {
        v167 = v106;
        Column.subscript.getter(v106, v83);
        v107 = *&v148[0];
        if (!*&v148[0])
        {
          v107 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Float, &protocol witness table for String);
        }

        if (v165)
        {
          v108 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
          v166 = (v162 + *(v108 + 44));
          v109 = v168;
          v110 = 0;
          v171 = v107;
          do
          {
            v111 = v110 + v161;
            if (__OFADD__(v110, v161))
            {
              BUG();
            }

            if (*(v107 + 16))
            {
              v112 = v109;
              v113 = *v109;
              v164 = v112;
              *&v169 = *(v112 - 1);

              v170 = v113;
              v114 = specialized __RawDictionaryStorage.find<A>(_:)(v169, v113);
              v115 = 0;
              if (v116)
              {
                v115 = *(*(v171 + 56) + 4 * v114);
              }

              LODWORD(v169) = v115;
              v170;
              v109 = v164;
            }

            else
            {
              LODWORD(v169) = 0;
            }

            ++v110;
            v117 = specialized DenseMatrix.subscript.modify(v148, v167, v111);
            *v118 = v169;
            (v117)(v148, 0);
            v109 += 2;
            v107 = v171;
          }

          while (v165 != v110);
          v171;
          v85 = v156;
          v83 = v154;
          v82 = v155;
        }

        else
        {
          v107;
        }

        v106 = v167 + 1;
      }

      while (v167 + 1 != v163);
    }

    return (*(v85 + 8))(v82, v83);
  }

  v119 = AnyColumn.wrappedElementType.getter(v103);
  v120 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Int]);
  if (swift_dynamicCastMetatype(v119, v120))
  {
    v82 = v157;
    AnyColumn.assumingType<A>(_:)(v120, v120);
    v83 = v166;
    v121 = Column.count.getter(v166);
    v163 = v121;
    if (v121 < 0)
    {
      BUG();
    }

    v85 = v158;
    if (v121)
    {
      v164 = v168[2];
      v168 += 5;
      v122 = 0;
      do
      {
        v170 = v122;
        Column.subscript.getter(v122, v83);
        v123 = *&v148[0];
        if (!*&v148[0])
        {
          v123 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Int, &protocol witness table for String);
        }

        if (v164)
        {
          v124 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
          v165 = v162 + *(v124 + 44);
          v125 = v168;
          v126 = 0;
          v167 = v123;
          do
          {
            v127 = v126 + v161;
            if (__OFADD__(v126, v161))
            {
              BUG();
            }

            if (*(v123 + 16))
            {
              v128 = v125;
              v129 = *v125;
              v171 = v128;
              *&v169 = *(v128 - 8);

              v130 = v169;
              *&v169 = v129;
              v131 = specialized __RawDictionaryStorage.find<A>(_:)(v130, v129);
              if (v132)
              {
                v133 = *(*(v123 + 56) + 8 * v131);
              }

              else
              {
                LODWORD(v133) = 0;
              }

              v169;
              v125 = v171;
            }

            else
            {
              LODWORD(v133) = 0;
            }

            v126 = (v126 + 1);
            *&v169 = v133;
            v134 = specialized DenseMatrix.subscript.modify(v148, v170, v127);
            *v135 = v169;
            (v134)(v148, 0);
            v125 += 2;
            v123 = v167;
          }

          while (v164 != v126);
          v167;
          v85 = v158;
          v83 = v166;
          v82 = v157;
        }

        else
        {
          v123;
        }

        v122 = v170 + 1;
      }

      while (v170 + 1 != v163);
    }

    return (*(v85 + 8))(v82, v83);
  }

  *&v148[0] = 0;
  *(&v148[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  v136._object = "', but got shape " + 0x8000000000000000;
  v136._countAndFlagsBits = 0xD000000000000024;
  String.append(_:)(v136);
  v137 = AnyColumn.name.getter();
  v139 = v138;
  v136._countAndFlagsBits = v137;
  v136._object = v138;
  String.append(_:)(v136);
  v139;
  v136._countAndFlagsBits = 0x6720747562202C27;
  v136._object = 0xEB0000000020746FLL;
  String.append(_:)(v136);
  v140 = AnyColumn.wrappedElementType.getter(0x6720747562202C27);
  v141 = _typeName(_:qualified:)(v140, 0);
  v143 = v142;
  v136._countAndFlagsBits = v141;
  v136._object = v142;
  String.append(_:)(v136);
  v143;
  v136._countAndFlagsBits = 46;
  v136._object = 0xE100000000000000;
  String.append(_:)(v136);
  v169 = v148[0];
  v144 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v145 = swift_allocError(&type metadata for MLCreateError, v144, 0, 0);
  *v146 = v169;
  *(v146 + 16) = 0;
  *(v146 + 32) = 0;
  *(v146 + 48) = 0;
  v153 = v145;
  return swift_willThrow();
}

{
  v152 = v3;
  v161 = v4;
  v160 = a3;
  v167 = a2;
  v165 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Int]>);
  v157 = *(v165 - 1);
  v5 = *(v157 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v156 = &v146;
  v153 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Float]>);
  v155 = *(v153 - 8);
  v8 = *(v155 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v154 = &v146;
  v162 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Double]>);
  v151 = *(v162 - 8);
  v11 = *(v151 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v159 = &v146;
  v158 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v150 = *(v158 - 8);
  v14 = *(v150 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v149 = &v146;
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v146 = *(v17 - 8);
  v18 = *(v146 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v21 = AnyColumn.wrappedElementType.getter(&demangling cache variable for type metadata for Column<String>);
  if (swift_dynamicCastMetatype(v21, &type metadata for String))
  {
    AnyColumn.assumingType<A>(_:)(&type metadata for String, &type metadata for String);
    v22 = Column.count.getter(v17);
    v162 = v22;
    if (v22 < 0)
    {
      BUG();
    }

    v165 = &v146;
    v164 = v17;
    if (v22)
    {
      v163 = v167[2];
      v167 += 5;
      v170 = 0;
      while (!v163)
      {
LABEL_15:
        if (++v170 == v162)
        {
          goto LABEL_16;
        }
      }

      v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
      v166 = v161 + *(v23 + 44);
      v24 = v167;
      v25 = 0;
      while (1)
      {
        v26 = v25 + v160;
        if (__OFADD__(v25, v160))
        {
          BUG();
        }

        v169 = *(v24 - 1);
        *&v168 = *v24;

        Column.subscript.getter(v170, v164);
        v27 = BYTE8(v147[0]);
        if (!*(&v147[0] + 1))
        {
          break;
        }

        if (*&v147[0] ^ v169 | v168 ^ *(&v147[0] + 1))
        {
          LOBYTE(v169) = _stringCompareWithSmolCheck(_:_:expecting:)(v169, v168, *&v147[0], *(&v147[0] + 1), 0);
          v168;
          v27;
          v28 = 0x3FF0000000000000;
          if ((v169 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v168;
          v27;
          v28 = 0x3FF0000000000000;
        }

LABEL_14:
        *&v168 = v28;
        v25 = (v25 + 1);
        v29 = specialized DenseMatrix.subscript.modify(v147, v170, v26);
        *v30 = v168;
        (v29)(v147, 0);
        v24 += 2;
        if (v163 == v25)
        {
          goto LABEL_15;
        }
      }

      v168;
LABEL_13:
      v28 = 0;
      goto LABEL_14;
    }

LABEL_16:
    v31 = v165;
    v32 = v164;
    v33 = v146;
    return (*(v33 + 8))(v31, v32);
  }

  v34 = AnyColumn.wrappedElementType.getter(v21);
  v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  if (swift_dynamicCastMetatype(v34, v35))
  {
    v36 = v149;
    AnyColumn.assumingType<A>(_:)(v35, v35);
    v37 = v158;
    v159 = Column.count.getter(v158);
    if (v159 < 0)
    {
      BUG();
    }

    v33 = v150;
    if (!v159)
    {
LABEL_54:
      v31 = v36;
      v32 = v37;
      return (*(v33 + 8))(v31, v32);
    }

    v166 = v167[2];
    v167 += 4;
    v38 = 0;
    while (1)
    {
      v165 = v38;
      Column.subscript.getter(v38, v37);
      v39 = *&v147[0];
      if (!*&v147[0])
      {
        v39 = _swiftEmptyArrayStorage;
      }

      v40 = Set.init(minimumCapacity:)(v39[2], &type metadata for String, &protocol witness table for String);
      v148 = v40;
      v41 = v39[2];
      if (v41)
      {
        *&v168 = v39;
        v42 = v39 + 5;
        do
        {
          v43 = *(v42 - 1);
          v44 = *v42;

          specialized Set._Variant.insert(_:)(v147, v43, v44);
          SBYTE8(v147[0]);
          v42 += 2;
          --v41;
        }

        while (v41);
        v168;
        v45 = v148;
      }

      else
      {
        v46 = v40;
        v39;
        v45 = v46;
      }

      v47 = v165;
      if (v166)
      {
        break;
      }

LABEL_53:
      v77 = (v47 + 1);
      v45;
      v78 = v77 == v159;
      v38 = v77;
      v37 = v158;
      v33 = v150;
      v36 = v149;
      if (v78)
      {
        goto LABEL_54;
      }
    }

    *&v168 = v45;
    v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
    v45 = v168;
    v164 = v161 + *(v48 + 44);
    v49 = 0;
    while (1)
    {
      v50 = v49 + v160;
      if (__OFADD__(v49, v160))
      {
        BUG();
      }

      if (*(v45 + 16))
      {
        break;
      }

      v170 = 0;
LABEL_49:
      v49 = (v49 + 1);
      v75 = specialized DenseMatrix.subscript.modify(v147, v47, v50);
      *v76 = v170;
      (v75)(v147, 0);
      v45 = v168;
      if (v49 == v166)
      {
        goto LABEL_53;
      }
    }

    v163 = v49;
    v51 = 2 * v49;
    v52 = v167[2 * v49];
    v53 = v167[v51 + 1];
    Hasher.init(_seed:)(*(v168 + 40));

    v169 = v52;
    v170 = v53;
    String.hash(into:)(v147, v52);
    v54 = Hasher._finalize()();
    v55 = ~(-1 << *(v168 + 32));
    v56 = v55 & v54;
    v57 = *(v168 + 8 * ((v55 & v54) >> 6) + 56);
    if (_bittest64(&v57, v56))
    {
      v58 = *(v168 + 48);
      v59 = *(v58 + 16 * v56);
      v162 = v58;
      v60 = *(v58 + 16 * v56 + 8);
      LOBYTE(v61) = v170;
      v49 = v163;
      if (v59 == v169)
      {
        v62 = 0x3FF0000000000000;
        if (v60 == v170)
        {
          goto LABEL_48;
        }
      }

      v63 = _stringCompareWithSmolCheck(_:_:expecting:)(v59, v60, v169, v170, 0);
      LOBYTE(v61) = v170;
      v62 = 0x3FF0000000000000;
      if (v63)
      {
        goto LABEL_48;
      }

      v64 = v55 & (v56 + 1);
      v65 = *(v168 + 8 * (v64 >> 6) + 56);
      if (_bittest64(&v65, v64))
      {
        v66 = *(v162 + 16 * v64);
        v67 = *(v162 + 16 * v64 + 8);
        if (v66 == v169)
        {
          v62 = 0x3FF0000000000000;
          if (v67 == v170)
          {
            goto LABEL_48;
          }
        }

        v68 = _stringCompareWithSmolCheck(_:_:expecting:)(v66, v67, v169, v170, 0);
        v69 = v169;
        v61 = v170;
        v62 = 0x3FF0000000000000;
        if (v68)
        {
          goto LABEL_48;
        }

        v70 = v55 & (v64 + 1);
        v71 = *(v168 + 8 * (v70 >> 6) + 56);
        if (_bittest64(&v71, v70))
        {
          while (1)
          {
            v72 = *(v162 + 16 * v70);
            v73 = *(v162 + 16 * v70 + 8);
            if (v72 == v69 && v73 == v61)
            {
              v62 = 0x3FF0000000000000;
              goto LABEL_48;
            }

            if (_stringCompareWithSmolCheck(_:_:expecting:)(v72, v73, v69, v61, 0))
            {
              break;
            }

            v70 = v55 & (v70 + 1);
            v74 = *(v168 + 8 * (v70 >> 6) + 56);
            v61 = v170;
            v69 = v169;
            if (!_bittest64(&v74, v70))
            {
              goto LABEL_45;
            }
          }

          v62 = 0x3FF0000000000000;
          LOBYTE(v61) = v170;
          goto LABEL_48;
        }
      }

LABEL_45:
      v62 = 0;
    }

    else
    {
      v62 = 0;
      LOBYTE(v61) = v170;
      v49 = v163;
    }

LABEL_48:
    v170 = v62;
    v61;
    v47 = v165;
    goto LABEL_49;
  }

  v80 = AnyColumn.wrappedElementType.getter(v34);
  v81 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Double]);
  if (swift_dynamicCastMetatype(v80, v81))
  {
    v82 = v159;
    AnyColumn.assumingType<A>(_:)(v81, v81);
    v83 = v162;
    v84 = Column.count.getter(v162);
    v158 = v84;
    if (v84 < 0)
    {
      BUG();
    }

    v85 = v151;
    if (v84)
    {
      v164 = v167[2];
      v167 += 5;
      v86 = 0;
      do
      {
        v166 = v86;
        Column.subscript.getter(v86, v83);
        v87 = *&v147[0];
        if (!*&v147[0])
        {
          v87 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Double, &protocol witness table for String);
        }

        if (v164)
        {
          v88 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
          v165 = (v161 + *(v88 + 44));
          v89 = v167;
          v90 = 0;
          v170 = v87;
          do
          {
            v91 = v90 + v160;
            if (__OFADD__(v90, v160))
            {
              BUG();
            }

            if (*(v87 + 16))
            {
              v92 = v89;
              v93 = *v89;
              v163 = v92;
              *&v168 = *(v92 - 1);

              v169 = v93;
              v94 = specialized __RawDictionaryStorage.find<A>(_:)(v168, v93);
              v95 = 0;
              if (v96)
              {
                v95 = *(*(v170 + 56) + 8 * v94);
              }

              *&v168 = v95;
              v169;
              v97 = v166;
              v89 = v163;
            }

            else
            {
              *&v168 = 0;
              v97 = v166;
            }

            ++v90;
            v98 = specialized DenseMatrix.subscript.modify(v147, v97, v91);
            *v99 = v168;
            (v98)(v147, 0);
            v89 += 2;
            v87 = v170;
          }

          while (v164 != v90);
          v170;
          v85 = v151;
          v83 = v162;
          v82 = v159;
        }

        else
        {
          v87;
        }

        v86 = v166 + 1;
      }

      while (v166 + 1 != v158);
    }

    return (*(v85 + 8))(v82, v83);
  }

  v100 = AnyColumn.wrappedElementType.getter(v80);
  v101 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Float]);
  if (swift_dynamicCastMetatype(v100, v101))
  {
    v82 = v154;
    AnyColumn.assumingType<A>(_:)(v101, v101);
    v83 = v153;
    v102 = Column.count.getter(v153);
    v162 = v102;
    if (v102 < 0)
    {
      BUG();
    }

    v85 = v155;
    if (v102)
    {
      v164 = v167[2];
      v167 += 5;
      v103 = 0;
      do
      {
        v166 = v103;
        Column.subscript.getter(v103, v83);
        v104 = *&v147[0];
        if (!*&v147[0])
        {
          v104 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Float, &protocol witness table for String);
        }

        if (v164)
        {
          v105 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
          v165 = (v161 + *(v105 + 44));
          v106 = v167;
          v107 = 0;
          v170 = v104;
          do
          {
            v108 = v107 + v160;
            if (__OFADD__(v107, v160))
            {
              BUG();
            }

            if (*(v104 + 16))
            {
              v109 = v106;
              v110 = *v106;
              v169 = v109;
              *&v168 = *(v109 - 8);

              v111 = v168;
              *&v168 = v110;
              v112 = specialized __RawDictionaryStorage.find<A>(_:)(v111, v110);
              v113 = 0;
              if (v114)
              {
                v113 = *(*(v170 + 56) + 4 * v112);
              }

              LODWORD(v163) = v113;
              v168;
              v115 = *&v163;
              v106 = v169;
            }

            else
            {
              v115 = 0.0;
            }

            ++v107;
            *&v168 = v115;
            v116 = specialized DenseMatrix.subscript.modify(v147, v166, v108);
            *v117 = v168;
            (v116)(v147, 0);
            v106 += 2;
            v104 = v170;
          }

          while (v164 != v107);
          v170;
          v85 = v155;
          v83 = v153;
          v82 = v154;
        }

        else
        {
          v104;
        }

        v103 = v166 + 1;
      }

      while (v166 + 1 != v162);
    }

    return (*(v85 + 8))(v82, v83);
  }

  v118 = AnyColumn.wrappedElementType.getter(v100);
  v119 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Int]);
  if (swift_dynamicCastMetatype(v118, v119))
  {
    v82 = v156;
    AnyColumn.assumingType<A>(_:)(v119, v119);
    v83 = v165;
    v120 = Column.count.getter(v165);
    v162 = v120;
    if (v120 < 0)
    {
      BUG();
    }

    v85 = v157;
    if (v120)
    {
      v163 = v167[2];
      v167 += 5;
      v121 = 0;
      do
      {
        v169 = v121;
        Column.subscript.getter(v121, v83);
        v122 = *&v147[0];
        if (!*&v147[0])
        {
          v122 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Int, &protocol witness table for String);
        }

        if (v163)
        {
          v123 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
          v164 = v161 + *(v123 + 44);
          v124 = v167;
          v125 = 0;
          v166 = v122;
          do
          {
            v126 = v125 + v160;
            if (__OFADD__(v125, v160))
            {
              BUG();
            }

            if (*(v122 + 16))
            {
              v127 = v124;
              v128 = *v124;
              v170 = v127;
              *&v168 = *(v127 - 8);

              v129 = v168;
              *&v168 = v128;
              v130 = specialized __RawDictionaryStorage.find<A>(_:)(v129, v128);
              if (v131)
              {
                v132 = *(*(v122 + 56) + 8 * v130);
              }

              else
              {
                LODWORD(v132) = 0;
              }

              v168;
              v124 = v170;
            }

            else
            {
              LODWORD(v132) = 0;
            }

            v125 = (v125 + 1);
            *&v168 = v132;
            v133 = specialized DenseMatrix.subscript.modify(v147, v169, v126);
            *v134 = v168;
            (v133)(v147, 0);
            v124 += 2;
            v122 = v166;
          }

          while (v163 != v125);
          v166;
          v85 = v157;
          v83 = v165;
          v82 = v156;
        }

        else
        {
          v122;
        }

        v121 = v169 + 1;
      }

      while (v169 + 1 != v162);
    }

    return (*(v85 + 8))(v82, v83);
  }

  *&v147[0] = 0;
  *(&v147[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  v135._object = "', but got shape " + 0x8000000000000000;
  v135._countAndFlagsBits = 0xD000000000000024;
  String.append(_:)(v135);
  v136 = AnyColumn.name.getter();
  v138 = v137;
  v135._countAndFlagsBits = v136;
  v135._object = v137;
  String.append(_:)(v135);
  v138;
  v135._countAndFlagsBits = 0x6720747562202C27;
  v135._object = 0xEB0000000020746FLL;
  String.append(_:)(v135);
  v139 = AnyColumn.wrappedElementType.getter(0x6720747562202C27);
  v140 = _typeName(_:qualified:)(v139, 0);
  v142 = v141;
  v135._countAndFlagsBits = v140;
  v135._object = v141;
  String.append(_:)(v135);
  v142;
  v135._countAndFlagsBits = 46;
  v135._object = 0xE100000000000000;
  String.append(_:)(v135);
  v168 = v147[0];
  v143 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v144 = swift_allocError(&type metadata for MLCreateError, v143, 0, 0);
  *v145 = v168;
  *(v145 + 16) = 0;
  *(v145 + 32) = 0;
  *(v145 + 48) = 0;
  v152 = v144;
  return swift_willThrow();
}

uint64_t specialized FeatureMatrixBuilder.fillDictionary(from:descriptors:column:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  v71 = a4;
  *&v67 = v4;
  v68 = v5;
  v69 = a3;
  v70 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Any?]>);
  v64 = *(v65 - 8);
  v6 = *(v64 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v66 = &v50;
  v62 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Float]>);
  v61 = *(v62 - 8);
  v9 = *(v61 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v63 = &v50;
  v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Double]>);
  v58 = *(v59 - 8);
  v12 = *(v58 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v60 = &v50;
  v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Int32]>);
  v55 = *(v56 - 8);
  v15 = *(v55 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v57 = &v50;
  v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : UInt8]>);
  v53 = *(v54 - 8);
  v18 = *(v53 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v52 = &v50;
  v72 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Int]>);
  v51 = *(v72 - 8);
  v21 = *(v51 + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v24 = AnyColumn.wrappedElementType.getter(&demangling cache variable for type metadata for Column<[String : Int]>);
  v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Int]);
  if (swift_dynamicCastMetatype(v24, v25))
  {
    AnyColumn.assumingType<A>(_:)(v25, v25);
    specialized FeatureMatrixBuilder.fillDictionary<A>(from:descriptors:column:)(&v50, v70, v69, v71);
    v26 = &v50;
    v27 = v72;
    v28 = v51;
    return (*(v28 + 8))(v26, v27);
  }

  v29 = v52;
  v72 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : UInt8]);
  if (swift_dynamicCastMetatype(v24, v30))
  {
    AnyColumn.assumingType<A>(_:)(v30, v30);
    specialized FeatureMatrixBuilder.fillDictionary<A>(from:descriptors:column:)(v29, v70, v69, v71);
    v26 = v29;
    v27 = v54;
    v28 = v53;
    return (*(v28 + 8))(v26, v27);
  }

  v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Int32]);
  if (swift_dynamicCastMetatype(v24, v31))
  {
    v32 = v57;
    AnyColumn.assumingType<A>(_:)(v31, v31);
    specialized FeatureMatrixBuilder.fillDictionary<A>(from:descriptors:column:)(v32, v70, v69, v71);
    v26 = v32;
    v27 = v56;
    v28 = v55;
    return (*(v28 + 8))(v26, v27);
  }

  v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Double]);
  if (swift_dynamicCastMetatype(v24, v33))
  {
    v34 = v60;
    AnyColumn.assumingType<A>(_:)(v33, v33);
    specialized FeatureMatrixBuilder.fillDictionary<A>(from:descriptors:column:)(v34, v70, v69, v71);
    v26 = v34;
    v27 = v59;
    v28 = v58;
    return (*(v28 + 8))(v26, v27);
  }

  v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Float]);
  if (swift_dynamicCastMetatype(v24, v35))
  {
    v36 = v63;
    AnyColumn.assumingType<A>(_:)(v35, v35);
    specialized FeatureMatrixBuilder.fillDictionary<A>(from:descriptors:column:)(v36, v70, v69, v71);
    v26 = v36;
    v27 = v62;
    v28 = v61;
    return (*(v28 + 8))(v26, v27);
  }

  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any?]);
  if (swift_dynamicCastMetatype(v24, v37))
  {
    v38 = v66;
    AnyColumn.assumingType<A>(_:)(v37, v37);
    specialized FeatureMatrixBuilder.fillDictionary<A>(from:descriptors:column:)(v38, v70, v69, v71);
    v26 = v38;
    v27 = v65;
    v28 = v64;
    return (*(v28 + 8))(v26, v27);
  }

  *&v50 = 0;
  *(&v50 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v40._object = "values for feature '" + 0x8000000000000000;
  v40._countAndFlagsBits = 0xD000000000000028;
  String.append(_:)(v40);
  v41 = AnyColumn.name.getter();
  v43 = v42;
  v40._countAndFlagsBits = v41;
  v40._object = v42;
  String.append(_:)(v40);
  v43;
  v40._countAndFlagsBits = 0x6720747562202C27;
  v40._object = 0xEB0000000020746FLL;
  String.append(_:)(v40);
  v44 = AnyColumn.wrappedElementType.getter(0x6720747562202C27);
  v45 = _typeName(_:qualified:)(v44, 0);
  v47 = v46;
  v40._countAndFlagsBits = v45;
  v40._object = v46;
  String.append(_:)(v40);
  v47;
  v40._countAndFlagsBits = 46;
  v40._object = 0xE100000000000000;
  String.append(_:)(v40);
  v67 = v50;
  v48 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v48, 0, 0);
  *v49 = v67;
  *(v49 + 16) = 0;
  *(v49 + 32) = 0;
  *(v49 + 48) = 0;
  return swift_willThrow();
}

uint64_t specialized FeatureMatrixBuilder.fillFloat(from:column:)(__int128 *a1, uint64_t a2, float a3)
{
  v81 = v3;
  v78 = v4;
  *&v80 = a2;
  v76 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<NSNumber>);
  v75 = *(v76 - 8);
  v5 = *(v75 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v77 = &v57;
  v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v72 = *(v73 - 8);
  v8 = *(v72 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v74 = &v57;
  v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Float>);
  v69 = *(v70 - 8);
  v11 = *(v69 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v71 = &v57;
  v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int64>);
  v66 = *(v67 - 8);
  v14 = *(v66 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v68 = &v57;
  v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int32>);
  v63 = *(v64 - 8);
  v17 = *(v63 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v65 = &v57;
  v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int16>);
  v60 = *(v61 - 8);
  v20 = *(v60 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v62 = &v57;
  v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int8>);
  v58 = *(v59 - 8);
  v23 = *(v58 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v82 = &v57;
  v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = alloca(v28);
  v30 = alloca(v28);
  v79 = AnyColumn.wrappedElementType.getter(&demangling cache variable for type metadata for Column<Int>);
  if (swift_dynamicCastMetatype(v79, &type metadata for Int))
  {
    AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(&v57, v80, &demangling cache variable for type metadata for Column<Int>);
    return (*(v27 + 8))(&v57, v26);
  }

  v32 = v82;
  v33 = v79;
  if (swift_dynamicCastMetatype(v79, &type metadata for Int8))
  {
    AnyColumn.assumingType<A>(_:)(&type metadata for Int8, &type metadata for Int8);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v32, v80);
    v34 = v32;
    v35 = v59;
    v36 = v58;
    return (*(v36 + 8))(v34, v35);
  }

  v37 = swift_dynamicCastMetatype(v33, &type metadata for Int16);
  v38 = v80;
  if (v37)
  {
    v39 = v62;
    AnyColumn.assumingType<A>(_:)(&type metadata for Int16, &type metadata for Int16);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v39, v38);
    v34 = v39;
    v35 = v61;
    v36 = v60;
    return (*(v36 + 8))(v34, v35);
  }

  v82 = a1;
  v40 = v79;
  if (swift_dynamicCastMetatype(v79, &type metadata for Int32))
  {
    v41 = v65;
    AnyColumn.assumingType<A>(_:)(&type metadata for Int32, &type metadata for Int32);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v41, v38);
    v34 = v41;
    v35 = v64;
    v36 = v63;
    return (*(v36 + 8))(v34, v35);
  }

  if (swift_dynamicCastMetatype(v40, &type metadata for Int64))
  {
    v42 = v68;
    AnyColumn.assumingType<A>(_:)(&type metadata for Int64, &type metadata for Int64);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v42, v38, &demangling cache variable for type metadata for Column<Int64>);
    v34 = v42;
    v35 = v67;
    v36 = v66;
    return (*(v36 + 8))(v34, v35);
  }

  if (swift_dynamicCastMetatype(v40, &type metadata for Float))
  {
    v43 = v71;
    AnyColumn.assumingType<A>(_:)(&type metadata for Float, &type metadata for Float);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v43, v38);
    v34 = v43;
    v35 = v70;
    v36 = v69;
    return (*(v36 + 8))(v34, v35);
  }

  if (swift_dynamicCastMetatype(v40, &type metadata for Double))
  {
    v44 = v74;
    AnyColumn.assumingType<A>(_:)(&type metadata for Double, &type metadata for Double);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v44, v38);
    v34 = v44;
    v35 = v73;
    v36 = v72;
    return (*(v36 + 8))(v34, v35);
  }

  v45 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  if (swift_dynamicCastMetatype(v40, v45))
  {
    v46 = v77;
    AnyColumn.assumingType<A>(_:)(v45, v45);
    specialized FeatureMatrixBuilder.fillInteger(from:column:)(v46, v80, a3);
    v34 = v46;
    v35 = v76;
    v36 = v75;
    return (*(v36 + 8))(v34, v35);
  }

  *&v57 = 0;
  *(&v57 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(60);
  v47._object = " values for feature '" + 0x8000000000000000;
  v47._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v47);
  v48 = AnyColumn.name.getter();
  v50 = v49;
  v47._countAndFlagsBits = v48;
  v47._object = v49;
  String.append(_:)(v47);
  v50;
  v47._countAndFlagsBits = 0x6720747562202C27;
  v47._object = 0xEB0000000020746FLL;
  String.append(_:)(v47);
  v51 = AnyColumn.wrappedElementType.getter(0x6720747562202C27);
  v52 = _typeName(_:qualified:)(v51, 0);
  v54 = v53;
  v47._countAndFlagsBits = v52;
  v47._object = v53;
  String.append(_:)(v47);
  v54;
  v47._countAndFlagsBits = 46;
  v47._object = 0xE100000000000000;
  String.append(_:)(v47);
  v80 = v57;
  v55 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v55, 0, 0);
  *v56 = v80;
  *(v56 + 16) = 0;
  *(v56 + 32) = 0;
  *(v56 + 48) = 0;
  return swift_willThrow();
}

{
  v81 = v3;
  v78 = v4;
  *&v80 = a2;
  v76 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<NSNumber>);
  v75 = *(v76 - 8);
  v5 = *(v75 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v77 = &v57;
  v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v72 = *(v73 - 8);
  v8 = *(v72 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v74 = &v57;
  v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Float>);
  v69 = *(v70 - 8);
  v11 = *(v69 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v71 = &v57;
  v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int64>);
  v66 = *(v67 - 8);
  v14 = *(v66 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v68 = &v57;
  v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int32>);
  v63 = *(v64 - 8);
  v17 = *(v63 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v65 = &v57;
  v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int16>);
  v60 = *(v61 - 8);
  v20 = *(v60 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v62 = &v57;
  v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int8>);
  v58 = *(v59 - 8);
  v23 = *(v58 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v82 = &v57;
  v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = alloca(v28);
  v30 = alloca(v28);
  v79 = AnyColumn.wrappedElementType.getter(&demangling cache variable for type metadata for Column<Int>);
  if (swift_dynamicCastMetatype(v79, &type metadata for Int))
  {
    AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(&v57, v80, &demangling cache variable for type metadata for Column<Int>);
    return (*(v27 + 8))(&v57, v26);
  }

  v32 = v82;
  v33 = v79;
  if (swift_dynamicCastMetatype(v79, &type metadata for Int8))
  {
    AnyColumn.assumingType<A>(_:)(&type metadata for Int8, &type metadata for Int8);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v32, v80);
    v34 = v32;
    v35 = v59;
    v36 = v58;
    return (*(v36 + 8))(v34, v35);
  }

  v37 = swift_dynamicCastMetatype(v33, &type metadata for Int16);
  v38 = v80;
  if (v37)
  {
    v39 = v62;
    AnyColumn.assumingType<A>(_:)(&type metadata for Int16, &type metadata for Int16);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v39, v38);
    v34 = v39;
    v35 = v61;
    v36 = v60;
    return (*(v36 + 8))(v34, v35);
  }

  v82 = a1;
  v40 = v79;
  if (swift_dynamicCastMetatype(v79, &type metadata for Int32))
  {
    v41 = v65;
    AnyColumn.assumingType<A>(_:)(&type metadata for Int32, &type metadata for Int32);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v41, v38);
    v34 = v41;
    v35 = v64;
    v36 = v63;
    return (*(v36 + 8))(v34, v35);
  }

  if (swift_dynamicCastMetatype(v40, &type metadata for Int64))
  {
    v42 = v68;
    AnyColumn.assumingType<A>(_:)(&type metadata for Int64, &type metadata for Int64);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v42, v38, &demangling cache variable for type metadata for Column<Int64>);
    v34 = v42;
    v35 = v67;
    v36 = v66;
    return (*(v36 + 8))(v34, v35);
  }

  if (swift_dynamicCastMetatype(v40, &type metadata for Float))
  {
    v43 = v71;
    AnyColumn.assumingType<A>(_:)(&type metadata for Float, &type metadata for Float);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v43, v38);
    v34 = v43;
    v35 = v70;
    v36 = v69;
    return (*(v36 + 8))(v34, v35);
  }

  if (swift_dynamicCastMetatype(v40, &type metadata for Double))
  {
    v44 = v74;
    AnyColumn.assumingType<A>(_:)(&type metadata for Double, &type metadata for Double);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v44, v38);
    v34 = v44;
    v35 = v73;
    v36 = v72;
    return (*(v36 + 8))(v34, v35);
  }

  v45 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  if (swift_dynamicCastMetatype(v40, v45))
  {
    v46 = v77;
    AnyColumn.assumingType<A>(_:)(v45, v45);
    specialized FeatureMatrixBuilder.fillInteger(from:column:)(v46, v80, a3);
    v34 = v46;
    v35 = v76;
    v36 = v75;
    return (*(v36 + 8))(v34, v35);
  }

  *&v57 = 0;
  *(&v57 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(60);
  v47._object = " values for feature '" + 0x8000000000000000;
  v47._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v47);
  v48 = AnyColumn.name.getter();
  v50 = v49;
  v47._countAndFlagsBits = v48;
  v47._object = v49;
  String.append(_:)(v47);
  v50;
  v47._countAndFlagsBits = 0x6720747562202C27;
  v47._object = 0xEB0000000020746FLL;
  String.append(_:)(v47);
  v51 = AnyColumn.wrappedElementType.getter(0x6720747562202C27);
  v52 = _typeName(_:qualified:)(v51, 0);
  v54 = v53;
  v47._countAndFlagsBits = v52;
  v47._object = v53;
  String.append(_:)(v47);
  v54;
  v47._countAndFlagsBits = 46;
  v47._object = 0xE100000000000000;
  String.append(_:)(v47);
  v80 = v57;
  v55 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v55, 0, 0);
  *v56 = v80;
  *(v56 + 16) = 0;
  *(v56 + 32) = 0;
  *(v56 + 48) = 0;
  return swift_willThrow();
}