uint64_t _s25SiriLinkSuggestionsPlugin0B14ClientResolverPAAE18getAppIntentAction4from3for14withParameters18andSalientEntitiesAA0hiJ0VSgSo16LNActionMetadataC_SSSDySS0aC3Kit0aC0O20DisplayRepresentable_pGSDySSSay22IntelligenceFlowShared16RetrievedContextVGGtYaFAA015MetaDataSourcedhiF0C_Tt3g5TY3_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46_0();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_22_0();
  a18 = v20;
  if (one-time initialization token for appIntentsSuggestions != -1)
  {
    OUTLINED_FUNCTION_4_0(&one-time initialization token for appIntentsSuggestions);
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.appIntentsSuggestions);
  OUTLINED_FUNCTION_14();
  swift_errorRetain();

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  v26 = OUTLINED_FUNCTION_51();
  v27 = v20[6];
  if (v26)
  {
    v28 = v20[5];
    v29 = OUTLINED_FUNCTION_46();
    v30 = swift_slowAlloc();
    v31 = OUTLINED_FUNCTION_47();
    a10 = v31;
    *v29 = 138412546;
    swift_errorRetain();
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v32;
    *v30 = v32;
    *(v29 + 12) = 2080;
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, &a10);

    *(v29 + 14) = v33;
    _os_log_impl(&dword_0, v24, v25, "Unable to fetch parameter info: %@ for: %s", v29, 0x16u);
    outlined destroy of CoreSignalTypes?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11(v30);
    __swift_destroy_boxed_opaque_existential_1(v31);
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_2();
  }

  else
  {
  }

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_44_0();

  return v38(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
}

uint64_t _s25SiriLinkSuggestionsPlugin0B14ClientResolverPAAE13getParameters3for04withH018andSalientEntitiesSDySSAA15ActionParameterVGSgSo16LNActionMetadataC_SDySS0aC3Kit0aC0O20DisplayRepresentable_pGSDySSSay22IntelligenceFlowShared16RetrievedContextVGGtYaKFAA024MetaDataSourcedAppIntentF0C_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[40] = a2;
  v3[41] = a3;
  v3[39] = a1;
  return _swift_task_switch(_s25SiriLinkSuggestionsPlugin0B14ClientResolverPAAE13getParameters3for04withH018andSalientEntitiesSDySSAA15ActionParameterVGSgSo16LNActionMetadataC_SDySS0aC3Kit0aC0O20DisplayRepresentable_pGSDySSSay22IntelligenceFlowShared16RetrievedContextVGGtYaKFAA024MetaDataSourcedAppIntentF0C_Tt2g5TY0_, 0, 0);
}

uint64_t _s25SiriLinkSuggestionsPlugin0B14ClientResolverPAAE13getParameters3for04withH018andSalientEntitiesSDySSAA15ActionParameterVGSgSo16LNActionMetadataC_SDySS0aC3Kit0aC0O20DisplayRepresentable_pGSDySSSay22IntelligenceFlowShared16RetrievedContextVGGtYaKFAA024MetaDataSourcedAppIntentF0C_Tt2g5TY0_()
{
  v81 = v0;
  v72 = *(v0 + 320);
  v1 = [*(v0 + 312) parameters];
  type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNActionParameterMetadata, LNActionParameterMetadata_ptr);
  OUTLINED_FUNCTION_39_0();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 304;
  *(v3 + 24) = v72;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo25LNActionParameterMetadataCG_AG_18SiriSuggestionsKit0gH0O20DisplayRepresentable_pSgts5NeverOTg5(partial apply for specialized closure #1 in LinkClientResolver.getParameters(for:withParameters:andSalientEntities:), v3, v2);
  v5 = v4;

  v6 = 0;
  v7 = v5 + 32;
  v8 = _swiftEmptyArrayStorage;
  v70 = v5 + 32;
  v73 = v5;
  v9 = *(v5 + 16);
  for (i = v5 + 32; ; i += 48)
  {
    if (v9 == v6)
    {
      if (v8[2])
      {

        if (one-time initialization token for appIntentsSuggestions != -1)
        {
          goto LABEL_54;
        }

        goto LABEL_15;
      }

      if (!v9)
      {

        v48 = _swiftEmptyArrayStorage;
LABEL_46:
        v63 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_25SiriLinkSuggestionsPlugin15ActionParameterVSaySS_AGtGTt0g5(v48);
        goto LABEL_50;
      }

      v48 = _swiftEmptyArrayStorage;
      while (1)
      {
        outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v7, v0 + 80, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
        outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v0 + 88, v0 + 224, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
        if (*(v0 + 248))
        {
          outlined init with take of SiriSuggestions.DisplayRepresentable((v0 + 224), v0 + 264);
          outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v0 + 80, v0 + 128, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
          v49 = outlined bridged method (ob) of @objc LNActionParameterMetadata.name.getter(*(v0 + 128));
          if (v50)
          {
            *(v0 + 16) = v49;
            *(v0 + 24) = v50;
            outlined init with take of SiriSuggestions.DisplayRepresentable((v0 + 264), v0 + 32);
            v51 = *(v0 + 96);
            *(v0 + 176) = *(v0 + 80);
            *(v0 + 192) = v51;
            *(v0 + 208) = *(v0 + 112);
            *(v0 + 72) = *(v0 + 176);
            outlined destroy of CoreSignalTypes?(v0 + 184, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1((v0 + 264));
            outlined destroy of CoreSignalTypes?(v0 + 80, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
            *(v0 + 16) = 0u;
            *(v0 + 32) = 0u;
            *(v0 + 48) = 0u;
            *(v0 + 64) = 0u;
          }

          outlined destroy of CoreSignalTypes?(v0 + 136, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
          if (*(v0 + 24))
          {
            v52 = *(v0 + 32);
            v77 = *(v0 + 16);
            v78 = v52;
            v53 = *(v0 + 64);
            v79 = *(v0 + 48);
            v80 = v53;
            v54 = v7;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_28_0();
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v48 = v61;
            }

            v56 = v48[2];
            v55 = v48[3];
            if (v56 >= v55 >> 1)
            {
              OUTLINED_FUNCTION_19_2(v55);
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v48 = v62;
            }

            v48[2] = v56 + 1;
            v57 = &v48[8 * v56];
            v58 = v77;
            v59 = v78;
            v60 = v80;
            v57[4] = v79;
            v57[5] = v60;
            v57[2] = v58;
            v57[3] = v59;
            v7 = v54;
            goto LABEL_42;
          }
        }

        else
        {
          outlined destroy of CoreSignalTypes?(v0 + 80, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
          *(v0 + 16) = 0u;
          *(v0 + 32) = 0u;
          *(v0 + 48) = 0u;
          *(v0 + 64) = 0u;
        }

        outlined destroy of CoreSignalTypes?(v0 + 16, &_sSS_25SiriLinkSuggestionsPlugin15ActionParameterVtSgMd, &_sSS_25SiriLinkSuggestionsPlugin15ActionParameterVtSgMR);
LABEL_42:
        v7 += 48;
        if (!--v9)
        {

          goto LABEL_46;
        }
      }
    }

    if (v6 >= *(v73 + 16))
    {
      break;
    }

    outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(i, v0 + 16, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
    v11 = OUTLINED_FUNCTION_36();
    outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v11, v12, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
    v13 = *(v0 + 80);
    v14 = [v13 isOptional];

    outlined destroy of CoreSignalTypes?(v0 + 88, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
    if ((v14 & 1) != 0 || *(v0 + 48))
    {
      outlined destroy of CoreSignalTypes?(v0 + 16, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
    }

    else
    {
      v15 = *(v0 + 32);
      v77 = *(v0 + 16);
      v78 = v15;
      v79 = *(v0 + 48);
      v76 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1);
        v8 = v76;
      }

      v17 = v8[2];
      v16 = v8[3];
      if (v17 >= v16 >> 1)
      {
        v21 = OUTLINED_FUNCTION_19_2(v16);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21, v17 + 1, 1);
        v8 = v76;
      }

      v8[2] = v17 + 1;
      v18 = &v8[6 * v17];
      v19 = v77;
      v20 = v79;
      v18[3] = v78;
      v18[4] = v20;
      v18[2] = v19;
      v7 = v70;
    }

    ++v6;
  }

  __break(1u);
LABEL_54:
  OUTLINED_FUNCTION_4_0(&one-time initialization token for appIntentsSuggestions);
LABEL_15:
  v22 = *(v0 + 312);
  v23 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_20_1(v23, static Logger.appIntentsSuggestions);
  v24 = v22;

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = *(v0 + 312);
    v28 = OUTLINED_FUNCTION_46();
    v74 = OUTLINED_FUNCTION_35_0();
    v75 = v74;
    *v28 = 136315394;
    v29 = [v27 identifier];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v75);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2080;
    v34 = v8[2];
    if (v34)
    {
      v69 = v28;
      v71 = v25;
      v76 = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34, 0);
      v35 = (v8 + 4);
      v36 = v76;
      do
      {
        outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v35, v0 + 16, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
        *&v77 = 0;
        *(&v77 + 1) = 0xE000000000000000;
        v37 = OUTLINED_FUNCTION_36();
        outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v37, v38, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
        v39 = outlined bridged method (ob) of @objc LNActionParameterMetadata.name.getter(*(v0 + 80));
        if (v40)
        {
          v41 = v39;
        }

        else
        {
          v41 = 0x656D616E5F6F6E3CLL;
        }

        if (v40)
        {
          v42 = v40;
        }

        else
        {
          v42 = 0xE90000000000003ELL;
        }

        outlined destroy of CoreSignalTypes?(v0 + 88, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
        v43._countAndFlagsBits = v41;
        v43._object = v42;
        String.append(_:)(v43);

        v44 = v77;
        outlined destroy of CoreSignalTypes?(v0 + 16, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
        v76 = v36;
        v46 = v36[2];
        v45 = v36[3];
        if (v46 >= v45 >> 1)
        {
          v47 = OUTLINED_FUNCTION_19_2(v45);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v47, v46 + 1, 1);
          v36 = v76;
        }

        v36[2] = v46 + 1;
        *&v36[2 * v46 + 4] = v44;
        v35 += 48;
        --v34;
      }

      while (v34);

      v25 = v71;
      v28 = v69;
    }

    else
    {

      v36 = _swiftEmptyArrayStorage;
    }

    *(v0 + 16) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v64 = BidirectionalCollection<>.joined(separator:)();
    v66 = v65;

    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, &v75);
    OUTLINED_FUNCTION_14();

    *(v28 + 14) = v64;
    _os_log_impl(&dword_0, v25, v26, "We have not been able to set all mandatory parameters for action %s. Missing parameters:\n %s", v28, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11(v74);
    OUTLINED_FUNCTION_11(v28);
  }

  else
  {
  }

  v63 = 0;
LABEL_50:
  v67 = *(v0 + 8);

  return v67(v63);
}

void _s25SiriLinkSuggestionsPlugin0B14ClientResolverPAAE12getParameter33_6476B7DACEC880C5FEE6E902F92AE474LL3for14withParameters18andSalientEntities0aC3Kit0aC0O20DisplayRepresentable_pSgSo08LNActionH8MetadataC_SDySSAkL_pGSDySSSay22IntelligenceFlowShared16RetrievedContextVGGtFAA024MetaDataSourcedAppIntentF0C_Tt3g5(void *a1@<X0>, uint64_t a2@<X1>, NSObject *a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22IntelligenceFlowShared16RetrievedContextVSgMd, &_s22IntelligenceFlowShared16RetrievedContextVSgMR);
  __chkstk_darwin(v7 - 8);
  v77 = &v66 - v8;
  v9 = type metadata accessor for RetrievedContext();
  v76 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v74 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v66 - v13;
  __chkstk_darwin(v12);
  v16 = &v66 - v15;
  v17 = [a1 name];
  v75 = v14;
  if (v17)
  {
    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v78 = [a1 valueType];
  if (!v21)
  {
    if (one-time initialization token for appIntentsSuggestions != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.appIntentsSuggestions);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_23;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_0, v24, v25, "Unknown parameter name", v26, 2u);
    goto LABEL_21;
  }

  v22 = v19;
  specialized Dictionary.subscript.getter(v19, v21, a2, &v79);
  if (v80)
  {

    outlined init with take of SiriSuggestions.DisplayRepresentable(&v79, v81);
    outlined init with take of SiriSuggestions.DisplayRepresentable(v81, a4);
    return;
  }

  outlined destroy of CoreSignalTypes?(&v79, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
  v27 = [v78 description];
  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  if (one-time initialization token for appIntentsSuggestions != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = __swift_project_value_buffer(v30, static Logger.appIntentsSuggestions);

  v72 = v31;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  LODWORD(v69) = v33;
  v71 = v32;
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v70 = v29;
    v35 = v34;
    v67 = swift_slowAlloc();
    *&v81[0] = v67;
    *v35 = 136315650;
    *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v81);
    v68 = v9;
    *(v35 + 12) = 2080;
    *(v35 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v70, v81);
    *(v35 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay22IntelligenceFlowShared16RetrievedContextVGMd, &_sSay22IntelligenceFlowShared16RetrievedContextVGMR);
    v36 = Dictionary.Keys.description.getter();
    v38 = a4;
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v81);
    v9 = v68;

    *(v35 + 24) = v39;
    a4 = v38;
    v22 = v19;
    v40 = v71;
    _os_log_impl(&dword_0, v71, v69, "determining parater - %s paramType - %s from andSalientEntities Keys - %s", v35, 0x20u);
    swift_arrayDestroy();

    v29 = v70;
  }

  else
  {
  }

  v41 = specialized Dictionary.subscript.getter();
  if (!v41)
  {
LABEL_19:

    v24 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v24, v43))
    {

      goto LABEL_23;
    }

    v44 = swift_slowAlloc();
    *&v81[0] = swift_slowAlloc();
    *v44 = 136315394;
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, v81);

    *(v44 + 4) = v45;
    *(v44 + 12) = 2080;
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v29, v81);

    *(v44 + 14) = v46;
    _os_log_impl(&dword_0, v24, v43, "No parameter available to set for %s, of type: %s", v44, 0x16u);
    swift_arrayDestroy();

LABEL_21:

LABEL_23:

    a4[4].isa = 0;
    *&a4->isa = 0u;
    *&a4[2].isa = 0u;
    return;
  }

  *&v81[0] = v41;
  specialized MutableCollection<>.shuffle<A>(using:)();
  v42 = v77;
  specialized Collection.first.getter(*&v81[0], v77);

  if (__swift_getEnumTagSinglePayload(v42, 1, v9) == 1)
  {
    outlined destroy of CoreSignalTypes?(v42, &_s22IntelligenceFlowShared16RetrievedContextVSgMd, &_s22IntelligenceFlowShared16RetrievedContextVSgMR);
    goto LABEL_19;
  }

  v47 = *(v76 + 32);
  v48 = v76;
  v70 = v76 + 32;
  v71 = a4;
  v69 = v47;
  v47(v16, v42, v9);
  v49 = *(v48 + 16);
  v50 = v75;
  v77 = v16;
  v49(v75);

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    LODWORD(v68) = v52;
    v54 = v48;
    v55 = v53;
    v72 = swift_slowAlloc();
    *&v81[0] = v72;
    *v55 = 136315650;
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, v81);
    v57 = v9;
    v58 = v56;

    *(v55 + 4) = v58;
    *(v55 + 12) = 2080;
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v29, v81);

    *(v55 + 14) = v59;
    *(v55 + 22) = 2080;
    (v49)(v74, v50, v57);
    v60 = String.init<A>(describing:)();
    v62 = v61;
    (*(v54 + 8))(v50, v57);
    v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, v81);

    *(v55 + 24) = v63;
    v9 = v57;
    _os_log_impl(&dword_0, v51, v68, "Setting parameter %s, of type: %s to %s using salient entities", v55, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v48 + 8))(v50, v9);
  }

  v64 = v71;
  v71[3].isa = v9;
  v64[4] = lazy protocol witness table accessor for type MetaDataSourcedAppIntentResolver and conformance MetaDataSourcedAppIntentResolver(&lazy protocol witness table cache variable for type RetrievedContext and conformance RetrievedContext, 255, &type metadata accessor for RetrievedContext);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
  v69(boxed_opaque_existential_1, v77, v9);
}

uint64_t MetaDataSourcedAppIntentResolver.resolverTypeOperand.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t MetaDataSourcedAppIntentResolver.__allocating_init(linkClient:toolClient:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  MetaDataSourcedAppIntentResolver.init(linkClient:toolClient:)(a1, a2);
  return v4;
}

uint64_t MetaDataSourcedAppIntentResolver.init(linkClient:toolClient:)(__int128 *a1, __int128 *a2)
{
  *(v2 + 96) = 0xD000000000000017;
  *(v2 + 104) = 0x8000000000042180;
  outlined init with take of SiriSuggestions.DisplayRepresentable(a1, v2 + 16);
  outlined init with take of SiriSuggestions.DisplayRepresentable(a2, v2 + 56);
  return v2;
}

BOOL static MetaDataSourcedAppIntentResolver.disruptsUserFlow(appIntentDetails:environmentSnapshot:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  valid = EnvironmentSnapshot.getValidOpenAppIds()();
  v10[0] = a1;
  v10[1] = a2;
  v9[2] = v10;
  LOBYTE(a2) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v9, valid);

  return (a2 & 1) == 0 && ([a3 openAppWhenRun] & 1) != 0;
}

uint64_t MetaDataSourcedAppIntentResolver.getSuggestionDialogFromTool(toolId:parametersToolValue:siriLocale:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = OUTLINED_FUNCTION_4_2();
  return _swift_task_switch(v5, v6, v7);
}

uint64_t MetaDataSourcedAppIntentResolver.getSuggestionDialogFromTool(toolId:parametersToolValue:siriLocale:)()
{
  OUTLINED_FUNCTION_22_0();
  v21 = v0;
  if (one-time initialization token for appIntentsSuggestions != -1)
  {
    OUTLINED_FUNCTION_4_0(&one-time initialization token for appIntentsSuggestions);
  }

  v1 = type metadata accessor for Logger();
  v0[6] = OUTLINED_FUNCTION_20_1(v1, static Logger.appIntentsSuggestions);

  v2 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();

  if (OUTLINED_FUNCTION_29_0())
  {
    v3 = v0[3];
    v4 = v0[2];
    v5 = OUTLINED_FUNCTION_46();
    v20 = OUTLINED_FUNCTION_35_0();
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v20);
    *(v5 + 12) = 2080;
    type metadata accessor for TypedValue();
    v6 = Dictionary.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v20);

    *(v5 + 14) = v8;
    OUTLINED_FUNCTION_2_1();
    _os_log_impl(v9, v10, v11, v12, v13, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_6_2();
  }

  v14 = v0[5];
  v15 = v14[11];
  __swift_project_boxed_opaque_existential_1(v14 + 7, v14[10]);
  v19 = (*(v15 + 8) + **(v15 + 8));
  v16 = swift_task_alloc();
  v0[7] = v16;
  *v16 = v0;
  v17 = OUTLINED_FUNCTION_32_0(v16);

  return v19(v17);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_9_2();
  *v3 = v2;
  *v3 = *v1;
  v2[8] = v4;
  v2[9] = v5;
  v2[10] = v6;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_8_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15_0();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_34_0(v1))
  {
    *OUTLINED_FUNCTION_52() = 0;
    OUTLINED_FUNCTION_2_1();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
    OUTLINED_FUNCTION_6_2();
  }

  OUTLINED_FUNCTION_40_0();

  return v7(0, 0);
}

uint64_t MetaDataSourcedAppIntentResolver.getSuggestionDialogFromTool(toolId:parametersToolValue:siriLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46_0();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_22_0();
  a18 = v20;
  v23 = v20[9];
  if (v23)
  {
    v24 = v20[10];

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (OUTLINED_FUNCTION_51())
    {
      v27 = v20[8];
      v28 = OUTLINED_FUNCTION_46();
      a10 = OUTLINED_FUNCTION_35_0();
      *v28 = 136315394;

      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v23, &a10);

      *(v28 + 4) = v29;
      *(v28 + 12) = 2080;

      v30 = Dictionary.description.getter();
      v32 = v31;

      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &a10);

      *(v28 + 14) = v33;
      _os_log_impl(&dword_0, v25, v26, "tool parameter summary - phrase template - %s and params - %s", v28, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_13_2();
    }

    static PhraseUtils.getHydratedPhrase(phraseTemplate:parameters:)(v20[8], v23, v24);
  }

  else
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_34_0(v35))
    {
      *OUTLINED_FUNCTION_52() = 0;
      OUTLINED_FUNCTION_2_1();
      _os_log_impl(v36, v37, v38, v39, v40, 2u);
      OUTLINED_FUNCTION_6_2();
    }
  }

  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_44_0();

  return v44(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
}

void MetaDataSourcedAppIntentResolver.getSuggestionDialogFromAssistantIntentPhrase(appIntentAction:details:siriLocale:)()
{
  OUTLINED_FUNCTION_50();
  v76 = v0;
  v77 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_14_0();
  v12 = v11;
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_5_2();
  v16 = v15 - v14;
  v17 = [v5 identifier];
  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (one-time initialization token for appIntentsSuggestions != -1)
  {
LABEL_39:
    OUTLINED_FUNCTION_4_0(&one-time initialization token for appIntentsSuggestions);
  }

  v20 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_20_1(v20, static Logger.appIntentsSuggestions);
  (*(v12 + 16))(v16, v3, v10);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  LODWORD(v74) = v22;
  v23 = OUTLINED_FUNCTION_51();
  v66 = v9;
  v67 = v3;
  if (v23)
  {
    v24 = OUTLINED_FUNCTION_47();
    v71 = swift_slowAlloc();
    v78 = v71;
    *v24 = 136315650;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v7, &v78);
    *(v24 + 12) = 2080;
    v70 = v10;
    v25 = v75;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v19, &v78);
    v73 = v7;
    *(v24 + 14) = v26;
    *(v24 + 22) = 2080;
    __chkstk_darwin(v26);
    *(&v64 - 2) = v16;
    v9 = specialized _NativeDictionary.mapValues<A>(_:)(partial apply for closure #1 in implicit closure #3 in MetaDataSourcedAppIntentResolver.getSuggestionDialogFromAssistantIntentPhrase(appIntentAction:details:siriLocale:), (&v64 - 4), v9);
    v72 = 0;
    v27 = v25;
    v28 = Dictionary.description.getter();
    v30 = v29;

    v31 = *(v12 + 8);
    v12 += 8;
    v31(v16, v70);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v78);
    v7 = v73;

    *(v24 + 24) = v32;
    OUTLINED_FUNCTION_43_0();
    _os_log_impl(v33, v34, v35, v36, v37, 0x20u);
    v38 = v71;
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11(v38);
    OUTLINED_FUNCTION_8_2();
  }

  else
  {

    v39 = *(v12 + 8);
    v12 += 8;
    v39(v16, v10);
    v72 = 0;
    v27 = v75;
  }

  v3 = v76[5];
  v10 = v76[6];
  __swift_project_boxed_opaque_existential_1(v76 + 2, v3);
  v7 = (*(v10 + 64))(v77, v7, v27, v19, v3, v10);

  v71 = *(v7 + 16);
  if (!v71)
  {
LABEL_34:

    OUTLINED_FUNCTION_48();
    return;
  }

  v65 = 0;
  v19 = 0;
  v69 = 0;
  v70 = v7 + 32;
  v74 = -1;
  v68 = v7;
  while (1)
  {
    if (v19 >= *(v7 + 16))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v40 = (v70 + 16 * v19);
    v16 = *v40;
    v9 = v40[1];
    v41 = one-time initialization token for variableNameRegex;

    if (v41 != -1)
    {
      swift_once();
    }

    v42 = static PhraseUtils.variableNameRegex;
    v43 = String._bridgeToObjectiveC()();
    v44 = (v9 & 0x1000000000000000) != 0 ? String.UTF16View._foreignCount()() : String.UTF16View._nativeGetOffset(for:)();
    v45 = [v42 matchesInString:v43 options:0 range:{0, v44}];

    type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for NSTextCheckingResult, NSTextCheckingResult_ptr);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v10 >> 62)
    {
      break;
    }

    v3 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
    if (v3)
    {
      goto LABEL_14;
    }

LABEL_28:

    v46 = _swiftEmptyArrayStorage;
LABEL_29:
    v58 = v46[2];

    if (v74 >= v58)
    {
      goto LABEL_32;
    }

    __chkstk_darwin(v59);
    v60 = v66;
    *(&v64 - 2) = v67;
    v61 = v72;
    v10 = specialized Dictionary.compactMapValues<A>(_:)(partial apply for closure #1 in static PhraseUtils.getHydratedPhrase(phraseTemplate:parameters:locale:), (&v64 - 4), v60);
    v72 = v61;
    v3 = static PhraseUtils.getHydratedPhrase(phraseTemplate:parameters:)(v16, v9, v10);
    v63 = v62;

    if (v63)
    {
      v9 = v69;
      v74 = v58;
      v65 = v3;
      v69 = v63;
LABEL_32:
    }

    if (++v19 == v71)
    {
      goto LABEL_34;
    }
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_28;
  }

LABEL_14:
  v78 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v73 = v19;
  v7 = 0;
  v46 = v78;
  v76 = v10;
  v77 = v10 & 0xC000000000000001;
  v75 = v10 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    v19 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v77)
    {
      v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v75 + 16))
      {
        goto LABEL_36;
      }

      v47 = *(v10 + 8 * v7 + 32);
    }

    v48 = v47;
    [v47 rangeAtIndex:1];
    Range<>.init(_:in:)();
    if (v49)
    {
      break;
    }

    v50 = v16;
    String.subscript.getter();
    v51 = static String._fromSubstring(_:)();
    v53 = v52;

    v78 = v46;
    v55 = v46[2];
    v54 = v46[3];
    v12 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      v57 = OUTLINED_FUNCTION_19_2(v54);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v57, v55 + 1, 1);
      v46 = v78;
    }

    v46[2] = v12;
    v56 = &v46[2 * v55];
    v56[4] = v51;
    v56[5] = v53;
    ++v7;
    v10 = v76;
    v16 = v50;
    if (v19 == v3)
    {

      v7 = v68;
      v19 = v73;
      goto LABEL_29;
    }
  }

  __break(1u);
}

uint64_t closure #1 in implicit closure #3 in MetaDataSourcedAppIntentResolver.getSuggestionDialogFromAssistantIntentPhrase(appIntentAction:details:siriLocale:)@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(a1, v8, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
  if (!v9)
  {
    outlined destroy of CoreSignalTypes?(v8, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
LABEL_5:

    v6 = 0xE400000000000000;
    v4 = 1819047278;
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(v8, v9);
  v4 = dispatch thunk of SiriSuggestions.DisplayRepresentable.getDisplay(for:)();
  v6 = v5;
  result = __swift_destroy_boxed_opaque_existential_1(v8);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_6:
  *a3 = v4;
  a3[1] = v6;
  return result;
}

uint64_t MetaDataSourcedAppIntentResolver.getSuggestionDialog(appIntentAction:details:siriLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = OUTLINED_FUNCTION_4_2();
  return _swift_task_switch(v9, v10, v11);
}

uint64_t MetaDataSourcedAppIntentResolver.getSuggestionDialog(appIntentAction:details:siriLocale:)()
{
  v27 = v0;
  v1 = specialized Dictionary.compactMapValues<A>(_:)(v0[4]);
  v0[10] = v1;
  if (one-time initialization token for appIntentsSuggestions != -1)
  {
    OUTLINED_FUNCTION_4_0(&one-time initialization token for appIntentsSuggestions);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.appIntentsSuggestions);
  OUTLINED_FUNCTION_14();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_46();
    v25 = OUTLINED_FUNCTION_35_0();
    *v5 = 136315394;
    type metadata accessor for TypedValue();
    v6 = Dictionary.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v25);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = Dictionary.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v25);

    *(v5 + 14) = v11;
    OUTLINED_FUNCTION_43_0();
    _os_log_impl(v12, v13, v14, v15, v16, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_8_2();
  }

  if (*(v1 + 16) == *(v0[4] + 16))
  {
    v17 = v0[6];
    v25 = v0[5];
    v26 = v17;

    v18._countAndFlagsBits = 46;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    v19._countAndFlagsBits = OUTLINED_FUNCTION_38_0();
    String.append(_:)(v19);
    v0[11] = v26;
    v20 = swift_task_alloc();
    v0[12] = v20;
    *v20 = v0;
    v20[1] = MetaDataSourcedAppIntentResolver.getSuggestionDialog(appIntentAction:details:siriLocale:);
    v21 = OUTLINED_FUNCTION_38_0();

    return MetaDataSourcedAppIntentResolver.getSuggestionDialogFromTool(toolId:parametersToolValue:siriLocale:)(v21, v22, v1);
  }

  else
  {

    MetaDataSourcedAppIntentResolver.getSuggestionDialogFromAssistantIntentPhrase(appIntentAction:details:siriLocale:)();
    OUTLINED_FUNCTION_40_0();

    return v24();
  }
}

{
  OUTLINED_FUNCTION_15_0();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_13();
  v5 = *v0;
  OUTLINED_FUNCTION_7();
  *v6 = v5;

  OUTLINED_FUNCTION_40_0();

  return v7(v4, v2);
}

Swift::Int specialized Dictionary.compactMapValues<A>(_:)(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v44 = a2;
  v5 = &_swiftEmptyDictionarySingleton;
  v43 = &_swiftEmptyDictionarySingleton;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = v4;
  while (1)
  {
    if (!v9)
    {
      while (1)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v13 >= v10)
        {
          goto LABEL_26;
        }

        v9 = *(v6 + 8 * v13);
        ++v12;
        if (v9)
        {
          v12 = v13;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_28;
    }

LABEL_10:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(v4 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    outlined init with copy of ActionParameter(*(v4 + 56) + 48 * v14, v42);
    *&v41 = v17;
    *(&v41 + 1) = v16;
    v37 = v41;
    v38 = v42[0];
    v39 = v42[1];
    v40 = v42[2];

    a1(&v33, &v38);
    if (v3)
    {
      break;
    }

    v9 &= v9 - 1;
    v18 = v34;
    if (v34)
    {
      v31 = v33;
      v36[1] = v39;
      v36[2] = v40;
      v35 = v37;
      v36[0] = v38;
      if (v5[3] <= v5[2])
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)();
        v5 = v43;
      }

      v19 = v35;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = (v5 + 8);
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~v5[(v22 >> 6) + 8]) == 0)
      {
        v25 = 0;
        v26 = (63 - v21) >> 6;
        while (++v23 != v26 || (v25 & 1) == 0)
        {
          v27 = v23 == v26;
          if (v23 == v26)
          {
            v23 = 0;
          }

          v25 |= v27;
          v28 = *&v20[8 * v23];
          if (v28 != -1)
          {
            v24 = __clz(__rbit64(~v28)) + (v23 << 6);
            goto LABEL_24;
          }
        }

LABEL_28:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v22) & ~v5[(v22 >> 6) + 8])) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
      *&v20[(v24 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v24;
      *(v5[6] + 16 * v24) = v19;
      v29 = (v5[7] + 16 * v24);
      *v29 = v31;
      v29[1] = v18;
      ++v5[2];
      result = outlined destroy of ActionParameter(v36);
      v4 = v30;
    }

    else
    {
      result = outlined destroy of CoreSignalTypes?(&v37, &_sSS3key_25SiriLinkSuggestionsPlugin15ActionParameterV5valuetMd, &_sSS3key_25SiriLinkSuggestionsPlugin15ActionParameterV5valuetMR);
    }
  }

  outlined destroy of CoreSignalTypes?(&v37, &_sSS3key_25SiriLinkSuggestionsPlugin15ActionParameterV5valuetMd, &_sSS3key_25SiriLinkSuggestionsPlugin15ActionParameterV5valuetMR);

LABEL_26:

  return v5;
}

Swift::Int specialized Dictionary.compactMapValues<A>(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit10TypedValueOSgMd, &_s7ToolKit10TypedValueOSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v45 - v3;
  v65 = type metadata accessor for TypedValue();
  v5 = __chkstk_darwin(v65);
  v52 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v48 = &v45 - v8;
  v53 = &_swiftEmptyDictionarySingleton;
  v54 = a1;
  v64 = &_swiftEmptyDictionarySingleton;
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v46 = v7;
  v51 = (v7 + 32);

  v15 = 0;
  v47 = v4;
  while (v12)
  {
LABEL_10:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = v17 | (v15 << 6);
    v19 = (*(v54 + 48) + 16 * v18);
    v21 = *v19;
    v20 = v19[1];
    outlined init with copy of ActionParameter(*(v54 + 56) + 48 * v18, v63);
    *&v62 = v21;
    *(&v62 + 1) = v20;
    v58 = v62;
    v59 = v63[0];
    v60 = v63[1];
    v61 = v63[2];
    outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(&v59, v55, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
    v22 = v55[3];

    if (v22)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pMR);
      v23 = v65;
      v24 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v4, v24 ^ 1u, 1, v23);
      if (__swift_getEnumTagSinglePayload(v4, 1, v23) == 1)
      {
        goto LABEL_17;
      }

      v25 = *v51;
      v26 = v4;
      v27 = v48;
      v28 = v65;
      (*v51)(v48, v26, v65);
      v56 = v58;
      v57[0] = v59;
      v57[1] = v60;
      v57[2] = v61;
      v50 = v25;
      v25(v52, v27, v28);
      v29 = v53[2];
      if (v53[3] <= v29)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29 + 1, 1);
      }

      v30 = v64;
      v31 = v56;
      Hasher.init(_seed:)();
      v49 = *(&v31 + 1);
      String.hash(into:)();
      result = Hasher._finalize()();
      v32 = (v30 + 8);
      v53 = v30;
      v33 = -1 << *(v30 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      v4 = v47;
      if (((-1 << v34) & ~v30[(v34 >> 6) + 8]) == 0)
      {
        v37 = 0;
        v38 = (63 - v33) >> 6;
        while (++v35 != v38 || (v37 & 1) == 0)
        {
          v39 = v35 == v38;
          if (v35 == v38)
          {
            v35 = 0;
          }

          v37 |= v39;
          v40 = *&v32[8 * v35];
          if (v40 != -1)
          {
            v36 = __clz(__rbit64(~v40)) + (v35 << 6);
            goto LABEL_25;
          }
        }

        goto LABEL_28;
      }

      v36 = __clz(__rbit64((-1 << v34) & ~v30[(v34 >> 6) + 8])) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *&v32[(v36 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v36;
      v41 = v52;
      v42 = v53;
      v43 = (v53[6] + 16 * v36);
      v44 = v49;
      *v43 = v31;
      v43[1] = v44;
      v50((v42[7] + *(v46 + 72) * v36), v41, v65);
      ++v42[2];
      result = outlined destroy of ActionParameter(v57);
    }

    else
    {
      outlined destroy of CoreSignalTypes?(v55, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
      __swift_storeEnumTagSinglePayload(v4, 1, 1, v65);
LABEL_17:
      outlined destroy of CoreSignalTypes?(&v58, &_sSS3key_25SiriLinkSuggestionsPlugin15ActionParameterV5valuetMd, &_sSS3key_25SiriLinkSuggestionsPlugin15ActionParameterV5valuetMR);
      result = outlined destroy of CoreSignalTypes?(v4, &_s7ToolKit10TypedValueOSgMd, &_s7ToolKit10TypedValueOSgMR);
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      return v53;
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:)()
{
  OUTLINED_FUNCTION_8();
  v1[18] = v2;
  v1[19] = v0;
  v1[17] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit16TimeoutBehaviourVy0a4LinkB6Plugin16AppIntentDetailsVypGSgMd, &_s18SiriSuggestionsKit16TimeoutBehaviourVy0a4LinkB6Plugin16AppIntentDetailsVypGSgMR);
  v1[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit12AppIdDetailsVSgMd, &_s18SiriSuggestionsKit12AppIdDetailsVSgMR);
  v1[21] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_15_0();
  __swift_project_boxed_opaque_existential_1(*(v0 + 136), *(*(v0 + 136) + 24));
  OUTLINED_FUNCTION_14();
  *(v0 + 176) = dispatch thunk of CandidateSuggestion.context.getter();
  *(v0 + 184) = v1;
  *(v0 + 192) = swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  v2 = OUTLINED_FUNCTION_26_0();

  return _swift_task_switch(v2, v3, v4);
}

{
  OUTLINED_FUNCTION_8();
  Context.getAppId()();
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v0, v1, v2);
}

{
  v107 = v0;
  v1 = v0;
  v2 = *(v0 + 168);
  v3 = type metadata accessor for AppIdDetails();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    outlined destroy of CoreSignalTypes?(v2, &_s18SiriSuggestionsKit12AppIdDetailsVSgMd, &_s18SiriSuggestionsKit12AppIdDetailsVSgMR);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = AppIdDetails.appId.getter();
    v5 = v6;
    OUTLINED_FUNCTION_15();
    (*(v7 + 8))(v2, v3);
  }

  *(v0 + 200) = v5;
  if (one-time initialization token for appIntentsSuggestions != -1)
  {
LABEL_41:
    OUTLINED_FUNCTION_4_0(&one-time initialization token for appIntentsSuggestions);
  }

  v8 = type metadata accessor for Logger();
  v9 = __swift_project_value_buffer(v8, static Logger.appIntentsSuggestions);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_47();
    v13 = swift_slowAlloc();
    v105 = v13;
    *v12 = 136315650;
    v21 = OUTLINED_FUNCTION_47_0(v13, v14, v15, v16, v17, v18, v19, v20, v93, v95, v97, v99, v101, *(&v101 + 1));
    *(v12 + 4) = v21;
    *(v12 + 12) = 2080;
    *(v12 + 14) = OUTLINED_FUNCTION_47_0(v21, v22, v23, v24, v25, v26, v27, v28, v94, v96, v98, v100, v102, v103);
    *(v12 + 22) = 2080;
    v29 = Array.description.getter();
    v31 = v1;
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v105);

    *(v12 + 24) = v32;
    v1 = v31;
    _os_log_impl(&dword_0, v10, v11, "MetaDataSourcedAppIntentResolver resolveParameter called with - appIdToUse - %s, intentIdentifierToUse - %s, parameters - %s", v12, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11(v13);
    OUTLINED_FUNCTION_6_2();
  }

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = OUTLINED_FUNCTION_52();
    *v35 = 0;
    _os_log_impl(&dword_0, v33, v34, "No explicit appId set on IntentType. Using the appId assign to the context instead", v35, 2u);
    OUTLINED_FUNCTION_7_1();
  }

  if (v5)
  {

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = OUTLINED_FUNCTION_25_0();
      v105 = OUTLINED_FUNCTION_47();
      *v38 = 136315138;
      *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v105);
      OUTLINED_FUNCTION_53(&dword_0, v36, v37, "Obtaining app intents details for appId: %s", v93);
      OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_7_1();
    }

    v39 = *(v1 + 152);
    v40 = v39[5];
    v41 = v39[6];
    __swift_project_boxed_opaque_existential_1(v39 + 2, v40);
    v42 = 0;
    v43 = (*(v41 + 48))(v4, v5, v40, v41);
    v51 = v43;
    v95 = v9;
    v97 = v4;
    v52 = v43 + 64;
    v53 = -1;
    v54 = -1 << *(v43 + 32);
    if (-v54 < 64)
    {
      v53 = ~(-1 << -v54);
    }

    v55 = v53 & *(v43 + 64);
    v56 = (63 - v54) >> 6;

    v4 = 0;
    v57 = _swiftEmptyArrayStorage;
    while (1)
    {
      *(v1 + 208) = v57;
      if (!v55)
      {
        break;
      }

LABEL_23:
      v104 = *(*(v51 + 56) + ((v4 << 9) | (8 * __clz(__rbit64(v55)))));
      v59 = v104;
      closure #2 in MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:)(&v104, v97, v5, &v105);

      if (v106)
      {
        v101 = v106;
        v99 = v42;
        v60 = v51;
        v61 = v1;
        v62 = v5;
        v63 = v105;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_28_0();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v57 = v70;
        }

        v64 = v57;
        v65 = v57[2];
        v66 = v64;
        v67 = v64[3];
        v68 = v101;
        if (v65 >= v67 >> 1)
        {
          OUTLINED_FUNCTION_19_2(v67);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v68 = v101;
          v66 = v71;
        }

        v66[2] = v65 + 1;
        v69 = &v66[3 * v65];
        v57 = v66;
        v69[4] = v63;
        *(v69 + 5) = v68;
        v5 = v62;
        v1 = v61;
        v51 = v60;
        v42 = v99;
      }

      v55 &= v55 - 1;
    }

    while (1)
    {
      v58 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v58 >= v56)
      {
        break;
      }

      v55 = *(v52 + 8 * v58);
      ++v4;
      if (v55)
      {
        v4 = v58;
        goto LABEL_23;
      }
    }

    v72 = *(v1 + 144);

    _s25SiriLinkSuggestionsPlugin0B6Client_pWOcTm_0(v72, v1 + 16);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v73, v74))
    {
      OUTLINED_FUNCTION_25_0();
      v75 = OUTLINED_FUNCTION_17_2();
      v105 = v75;
      *v72 = 136315138;
      __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
      OUTLINED_FUNCTION_27_0();
      dispatch thunk of EnvironmentSnapshot.salientEntities.getter();
      type metadata accessor for SalientEntity();
      OUTLINED_FUNCTION_39_0();
      v76 = Array.description.getter();
      v78 = v77;

      __swift_destroy_boxed_opaque_existential_1((v1 + 16));
      v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, &v105);

      *(v72 + 4) = v79;
      _os_log_impl(&dword_0, v73, v74, "environment.salientEntities - %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v75);
      OUTLINED_FUNCTION_13_2();
      OUTLINED_FUNCTION_6_2();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1((v1 + 16));
    }

    v82 = *(v1 + 152);
    v83 = *(v1 + 160);
    v85 = *(v1 + 136);
    v84 = *(v1 + 144);
    __swift_project_boxed_opaque_existential_1(v84, v84[3]);
    OUTLINED_FUNCTION_27_0();
    dispatch thunk of EnvironmentSnapshot.salientEntities.getter();
    v86 = Array<A>.getRetrievedContext()();

    Array<A>.indexByType()(v86);
    v88 = v87;

    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit16TimeoutBehaviourVy0a4LinkB6Plugin16AppIntentDetailsVypGMd, &_s18SiriSuggestionsKit16TimeoutBehaviourVy0a4LinkB6Plugin16AppIntentDetailsVypGMR);
    __swift_storeEnumTagSinglePayload(v83, 1, 1, v89);
    _s25SiriLinkSuggestionsPlugin0B6Client_pWOcTm_0(v84, v1 + 56);
    _s25SiriLinkSuggestionsPlugin0B6Client_pWOcTm_0(v85, v1 + 96);
    v90 = swift_allocObject();
    *(v1 + 216) = v90;
    v90[2] = v82;
    v90[3] = _swiftEmptyArrayStorage;
    v90[4] = v88;
    outlined init with take of SiriSuggestions.DisplayRepresentable((v1 + 56), (v90 + 5));
    outlined init with take of SiriSuggestions.DisplayRepresentable((v1 + 96), (v90 + 10));

    v91 = swift_task_alloc();
    *(v1 + 224) = v91;
    *v91 = v1;
    v91[1] = MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:);
    v92 = *(v1 + 160);

    return static AsyncAwaitUtils.run<A, B>(elements:timeoutBehaviour:execute:)(v57, v92, &async function pointer to partial apply for closure #3 in MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:), v90, &type metadata for AppIntentDetails, &type metadata for Any + 8);
  }

  else
  {
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_34_0(v45))
    {
      *OUTLINED_FUNCTION_52() = 0;
      OUTLINED_FUNCTION_2_1();
      _os_log_impl(v46, v47, v48, v49, v50, 2u);
      OUTLINED_FUNCTION_6_2();
    }

    else
    {
    }

    v80 = *(v1 + 8);

    return v80(_swiftEmptyArrayStorage);
  }
}

{
  OUTLINED_FUNCTION_15_0();
  v3 = v2;
  OUTLINED_FUNCTION_13();
  v5 = v4;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v10 = *(v5 + 160);
    *(v5 + 232) = v3;
    outlined destroy of CoreSignalTypes?(v10, &_s18SiriSuggestionsKit16TimeoutBehaviourVy0a4LinkB6Plugin16AppIntentDetailsVypGSgMd, &_s18SiriSuggestionsKit16TimeoutBehaviourVy0a4LinkB6Plugin16AppIntentDetailsVypGSgMR);

    v11 = OUTLINED_FUNCTION_4_2();

    return _swift_task_switch(v11, v12, v13);
  }
}

{
  OUTLINED_FUNCTION_8();

  v0 = OUTLINED_FUNCTION_12_1();

  return v1(v0);
}

uint64_t closure #2 in MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:)@<X0>(void **a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  if (one-time initialization token for appIntentsSuggestions != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.appIntentsSuggestions);
  v9 = v7;

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v12 = 136315650;
    log = v10;
    v13 = [v9 identifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v30);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v30);
    *(v12 + 22) = 2080;
    v18 = v9;
    v19 = [v18 description];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v11;
    v21 = a4;
    v22 = a2;
    v24 = v23;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v24, &v30);
    a2 = v22;
    a4 = v21;

    *(v12 + 24) = v25;
    _os_log_impl(&dword_0, log, v28, "Got actions %s for: %s. Details: %s", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  *a4 = a2;
  a4[1] = a3;
  a4[2] = v9;
  v26 = v9;
}

void Array<A>.indexByType()(uint64_t a1)
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v64 = type metadata accessor for TypeIdentifier();
  OUTLINED_FUNCTION_14_0();
  v4 = v3;
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_5_2();
  v63 = v7 - v6;
  v8 = type metadata accessor for TypedValue();
  OUTLINED_FUNCTION_14_0();
  v10 = v9;
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_5_2();
  v62 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit10TypedValueOSgMd, &_s7ToolKit10TypedValueOSgMR);
  __chkstk_darwin(v14 - 8);
  OUTLINED_FUNCTION_37_0();
  v65 = v15;
  __chkstk_darwin(v16);
  v18 = &v53 - v17;
  v19 = type metadata accessor for RetrievedContext();
  OUTLINED_FUNCTION_14_0();
  v21 = v20;
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_5_2();
  v25 = v24 - v23;
  v26 = *(v2 + 16);
  if (v26)
  {
    v28 = *(v21 + 16);
    v27 = v21 + 16;
    v29 = *(v27 + 64);
    v57 = (v29 + 32) & ~v29;
    v58 = v29;
    v30 = v2 + v57;
    v31 = v28;
    v69 = *(v27 + 56);
    v55 = (v4 + 8);
    v56 = (v10 + 32);
    v54 = (v10 + 8);
    v70 = _swiftEmptyArrayStorage;
    v68 = v27 - 8;
    v53 = xmmword_3EFC0;
    v32 = v65;
    v60 = v28;
    v61 = v27;
    v59 = v18;
    do
    {
      v31(v25, v30, v19);
      RetrievedContext.typedValue.getter();
      outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v18, v32, &_s7ToolKit10TypedValueOSgMd, &_s7ToolKit10TypedValueOSgMR);
      if (__swift_getEnumTagSinglePayload(v32, 1, v8) == 1)
      {
        outlined destroy of CoreSignalTypes?(v18, &_s7ToolKit10TypedValueOSgMd, &_s7ToolKit10TypedValueOSgMR);
        v33 = OUTLINED_FUNCTION_41_0();
        v34(v33);
      }

      else
      {
        v35 = v62;
        (*v56)(v62, v32, v8);
        v36 = v63;
        TypedValue.typeIdentifier.getter();
        v37 = TypeIdentifier.debugDescription.getter();
        v66 = v38;
        v67 = v37;
        (*v55)(v36, v64);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22IntelligenceFlowShared16RetrievedContextVGMd, &_ss23_ContiguousArrayStorageCy22IntelligenceFlowShared16RetrievedContextVGMR);
        v39 = v57;
        v40 = v8;
        v41 = swift_allocObject();
        *(v41 + 16) = v53;
        v31(v41 + v39, v25, v19);
        v18 = v59;
        v42 = v35;
        v43 = v40;
        (*v54)(v42, v40);
        outlined destroy of CoreSignalTypes?(v18, &_s7ToolKit10TypedValueOSgMd, &_s7ToolKit10TypedValueOSgMR);
        v44 = OUTLINED_FUNCTION_41_0();
        v45(v44);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_28_0();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v70 = v51;
        }

        v47 = v70[2];
        v46 = v70[3];
        v31 = v60;
        if (v47 >= v46 >> 1)
        {
          OUTLINED_FUNCTION_19_2(v46);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v70 = v52;
        }

        v48 = v70;
        v70[2] = v47 + 1;
        v49 = &v48[3 * v47];
        v50 = v66;
        v49[4] = v67;
        v49[5] = v50;
        v49[6] = v41;
        v8 = v43;
        v32 = v65;
      }

      v30 += v69;
      --v26;
    }

    while (v26);
  }

  else
  {
    v70 = _swiftEmptyArrayStorage;
  }

  _sSD_16uniquingKeysWithSDyxq_Gqd__n_q_q__q_tKXEtKcSTRd__x_q_t7ElementRtd__lufCSS_Say22IntelligenceFlowShared16RetrievedContextVGSaySS_AHtGTt1g5033_sSa25SiriLinkSuggestionsPlugin22ef8Shared16hI46VRszlE11indexByTypeSDySSSayADGGyFA2F_AFtXEfU0_Tf1nc_nTm(v70, &_ss18_DictionaryStorageCySSSay22IntelligenceFlowShared16RetrievedContextVGGMd, &_ss18_DictionaryStorageCySSSay22IntelligenceFlowShared16RetrievedContextVGGMR, specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:));
  OUTLINED_FUNCTION_48();
}

uint64_t closure #3 in MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 408) = a5;
  *(v6 + 416) = a6;
  *(v6 + 392) = a3;
  *(v6 + 400) = a4;
  *(v6 + 384) = a2;
  v8 = type metadata accessor for Locale();
  *(v6 + 424) = v8;
  *(v6 + 432) = *(v8 - 8);
  v9 = swift_task_alloc();
  v10 = *a1;
  *(v6 + 440) = v9;
  *(v6 + 448) = v10;
  *(v6 + 456) = *(a1 + 1);

  return _swift_task_switch(closure #3 in MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:), 0, 0);
}

uint64_t closure #3 in MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:)()
{
  v1 = *(v0 + 392);
  v2 = [*(v0 + 464) identifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(v0 + 472) = v3;
  *(v0 + 480) = v5;
  Array<A>.indexByName()(v1);
  v7 = v6;
  *(v0 + 488) = v6;
  v8 = swift_task_alloc();
  *(v0 + 496) = v8;
  *v8 = v0;
  v8[1] = closure #3 in MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:);
  v9 = *(v0 + 456);
  v10 = *(v0 + 464);
  v11 = *(v0 + 448);
  v12 = *(v0 + 400);

  return _s25SiriLinkSuggestionsPlugin0B14ClientResolverPAAE18getAppIntentAction4from3for14withParameters18andSalientEntitiesAA0hiJ0VSgSo16LNActionMetadataC_SSSDySS0aC3Kit0aC0O20DisplayRepresentable_pGSDySSSay22IntelligenceFlowShared16RetrievedContextVGGtYaFAA015MetaDataSourcedhiF0C_Tt3g5(v10, v11, v9, v7, v12);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;
  v1[44] = v0;
  v1[45] = v3;
  v1[46] = v4;
  v1[47] = v5;
  v6 = *v0;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  *(v10 + 504) = v8;
  *(v10 + 512) = v9;

  v11 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v11, v12, v13);
}

{
  v36 = v0;
  if (!v0[64])
  {
    if (one-time initialization token for appIntentsSuggestions != -1)
    {
      OUTLINED_FUNCTION_4_0(&one-time initialization token for appIntentsSuggestions);
    }

    v22 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_20_1(v22, static Logger.appIntentsSuggestions);

    v9 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (!OUTLINED_FUNCTION_29_0())
    {

      goto LABEL_17;
    }

    v23 = OUTLINED_FUNCTION_25_0();
    v24 = OUTLINED_FUNCTION_47();
    v35 = v24;
    *v23 = 136315138;
    v25 = OUTLINED_FUNCTION_38_0();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v27);

    *(v23 + 4) = v28;
    OUTLINED_FUNCTION_49(&dword_0, v29, v30, "Siri App Intent could not be determined. Skipping appIntent: %s");
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_7_1();
    v21 = v23;
    goto LABEL_11;
  }

  v1 = v0[47];
  v3 = v0[57];
  v2 = v0[58];
  v4 = v0[56];
  v5 = v0[51];

  v0[65] = v1;
  type metadata accessor for MetaDataSourcedAppIntentResolver();
  if (static MetaDataSourcedAppIntentResolver.disruptsUserFlow(appIntentDetails:environmentSnapshot:)(v4, v3, v2, v5))
  {

    if (one-time initialization token for appIntentsSuggestions != -1)
    {
      OUTLINED_FUNCTION_4_0(&one-time initialization token for appIntentsSuggestions);
    }

    v6 = v0[58];
    v7 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_20_1(v7, static Logger.appIntentsSuggestions);
    v8 = v6;
    v9 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();

    if (!OUTLINED_FUNCTION_29_0())
    {
      goto LABEL_12;
    }

    v10 = v0[58];
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_42();
    *v8 = 136315138;
    v11 = [v10 identifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v35);

    *(v8 + 1) = v15;
    OUTLINED_FUNCTION_2_1();
    _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
    OUTLINED_FUNCTION_8_2();
    v21 = v8;
LABEL_11:
    OUTLINED_FUNCTION_11(v21);
LABEL_12:

LABEL_17:

    v34 = v0[1];

    return v34(_swiftEmptyArrayStorage);
  }

  v31 = swift_task_alloc();
  v0[66] = v31;
  *v31 = v0;
  v31[1] = closure #3 in MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:);
  v32 = v0[52];

  return MetaDataSourcedAppIntentResolver.getDialogOverride(_:)((v0 + 39), v32);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_22_0();
  v45 = v0;
  v1 = *(v0 + 408);
  if (*(v0 + 336))
  {
    v3 = *(v0 + 432);
    v2 = *(v0 + 440);
    v4 = *(v0 + 424);
    outlined init with take of SiriSuggestions.DisplayRepresentable((v0 + 312), v0 + 272);
    __swift_project_boxed_opaque_existential_1((v0 + 272), *(v0 + 296));
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    OUTLINED_FUNCTION_27_0();
    dispatch thunk of EnvironmentSnapshot.siriLocale.getter();
    v5 = dispatch thunk of SiriSuggestions.DisplayRepresentable.getDisplay(for:)();
    v7 = v6;
    (*(v3 + 8))(v2, v4);
    if (v7)
    {
      v8 = v5;
    }

    else
    {
      v8 = 1819047278;
    }

    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0xE400000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 272));
    v11 = *(v0 + 456);
    v10 = *(v0 + 464);
    v12 = *(v0 + 448);
    *(v0 + 16) = *(v0 + 504);
    *(v0 + 24) = *(v0 + 512);
    *(v0 + 40) = v12;
    *(v0 + 48) = v11;
    *(v0 + 56) = v10;
    *(v0 + 64) = v8;
    *(v0 + 72) = v9;
    v13 = one-time initialization token for appIntentsSuggestions;
    v14 = v10;

    if (v13 != -1)
    {
      OUTLINED_FUNCTION_4_0(&one-time initialization token for appIntentsSuggestions);
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.appIntentsSuggestions);
    OUTLINED_FUNCTION_14();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_25_0();
      v44 = OUTLINED_FUNCTION_47();
      *v18 = 136315138;
      v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v44);

      *(v18 + 4) = v8;
      OUTLINED_FUNCTION_53(&dword_0, v16, v17, "dialog =%s", v44);
      OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_7_1();
    }

    else
    {
    }

    v29 = OUTLINED_FUNCTION_36();
    outlined init with copy of SuggestionAppIntent(v29, v30);
    v31 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    outlined destroy of SuggestionAppIntent(v0 + 16);
    if (OUTLINED_FUNCTION_29_0())
    {
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_17_2();
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_24(4.8149e-34);
      v32 = String.init<A>(describing:)();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v44);

      *(v8 + 4) = v34;
      OUTLINED_FUNCTION_2_1();
      _os_log_impl(v35, v36, v37, v38, v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_6_2();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, ".<");
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_3EFC0;
    *(v40 + 56) = &type metadata for SuggestionAppIntent;
    v41 = swift_allocObject();
    OUTLINED_FUNCTION_31_0(v41);

    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_45();

    __asm { BRAA            X2, X16 }
  }

  outlined destroy of CoreSignalTypes?(v0 + 312, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  dispatch thunk of EnvironmentSnapshot.siriLocale.getter();
  v19 = swift_task_alloc();
  *(v0 + 536) = v19;
  *v19 = v0;
  v19[1] = closure #3 in MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:);
  OUTLINED_FUNCTION_45();

  return MetaDataSourcedAppIntentResolver.getSuggestionDialog(appIntentAction:details:siriLocale:)(v20, v21, v22, v23, v24, v25, v26);
}

{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;
  v4 = v3[55];
  v5 = v3[54];
  v6 = v3[53];
  v7 = *v0;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v10 + 544) = v9;
  *(v10 + 552) = v11;

  (*(v5 + 8))(v4, v6);
  v12 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v12, v13, v14);
}

void closure #3 in MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:)()
{
  OUTLINED_FUNCTION_22_0();
  v49 = v0;
  v2 = *(v0 + 552);
  if (v2)
  {
    if (one-time initialization token for appIntentsSuggestions != -1)
    {
      OUTLINED_FUNCTION_4_0(&one-time initialization token for appIntentsSuggestions);
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.appIntentsSuggestions);
    OUTLINED_FUNCTION_14();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    if (OUTLINED_FUNCTION_51())
    {
      v6 = *(v0 + 544);
      v7 = OUTLINED_FUNCTION_25_0();
      v48 = OUTLINED_FUNCTION_47();
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v2, &v48);
      OUTLINED_FUNCTION_53(&dword_0, v4, v5, "computedDialog=%s", v48);
      OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_7_1();
    }

    v8 = *(v0 + 544);
    v9 = *(v0 + 504);
    v10 = *(v0 + 456);
    v11 = *(v0 + 464);
    v12 = *(v0 + 448);

    *(v0 + 16) = v9;
    *(v0 + 24) = *(v0 + 512);
    *(v0 + 40) = v12;
    *(v0 + 48) = v10;
    *(v0 + 56) = v11;
    *(v0 + 64) = v8;
    *(v0 + 72) = v2;
    v13 = one-time initialization token for appIntentsSuggestions;
    v14 = v11;

    if (v13 != -1)
    {
      OUTLINED_FUNCTION_4_0(&one-time initialization token for appIntentsSuggestions);
    }

    __swift_project_value_buffer(v3, static Logger.appIntentsSuggestions);
    OUTLINED_FUNCTION_14();

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_25_0();
      v48 = OUTLINED_FUNCTION_47();
      *v17 = 136315138;
      v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v2, &v48);

      *(v17 + 4) = v8;
      OUTLINED_FUNCTION_53(&dword_0, v15, v16, "dialog =%s", v48);
      OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_7_1();
    }

    else
    {
    }

    v33 = OUTLINED_FUNCTION_36();
    outlined init with copy of SuggestionAppIntent(v33, v34);
    v35 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    outlined destroy of SuggestionAppIntent(v0 + 16);
    if (OUTLINED_FUNCTION_29_0())
    {
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_17_2();
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_24(4.8149e-34);
      v36 = String.init<A>(describing:)();
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v48);

      *(v15 + 4) = v38;
      OUTLINED_FUNCTION_2_1();
      _os_log_impl(v39, v40, v41, v42, v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_6_2();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, ".<");
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_3EFC0;
    *(v44 + 56) = &type metadata for SuggestionAppIntent;
    v45 = swift_allocObject();
    OUTLINED_FUNCTION_31_0(v45);
  }

  else
  {

    if (one-time initialization token for appIntentsSuggestions != -1)
    {
      OUTLINED_FUNCTION_4_0(&one-time initialization token for appIntentsSuggestions);
    }

    v18 = *(v0 + 464);
    v19 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_20_1(v19, static Logger.appIntentsSuggestions);
    v20 = v18;
    v21 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();

    if (OUTLINED_FUNCTION_29_0())
    {
      v22 = *(v0 + 464);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_17_2();
      OUTLINED_FUNCTION_42();
      *v20 = 136315138;
      v23 = [v22 identifier];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v48);

      *(v20 + 1) = v27;
      OUTLINED_FUNCTION_2_1();
      _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v1);
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_6_2();
    }
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_45();

  __asm { BRAA            X2, X16 }
}

void Array<A>.indexByName()(uint64_t a1)
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v3 = type metadata accessor for AppIntentFilter.AppIntentParameter();
  OUTLINED_FUNCTION_14_0();
  v5 = v4;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_5_2();
  v9 = v8 - v7;
  v10 = *(v2 + 16);
  if (v10)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v12 = *(v5 + 16);
    v11 = v5 + 16;
    v13 = v2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v19 = *(v11 + 56);
    v20 = v12;
    do
    {
      v20(v9, v13, v3);
      *&v21 = AppIntentFilter.AppIntentParameter.name.getter();
      *(&v21 + 1) = v14;
      AppIntentFilter.AppIntentParameter.value.getter();
      (*(v11 - 8))(v9, v3);
      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        v18 = OUTLINED_FUNCTION_19_2(v15);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18, v16 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[7 * v16];
      v17[10] = v24;
      *(v17 + 3) = v22;
      *(v17 + 4) = v23;
      *(v17 + 2) = v21;
      v13 += v19;
      --v10;
    }

    while (v10);
  }

  _sSD_16uniquingKeysWithSDyxq_Gqd__n_q_q__q_tKXEtKcSTRd__x_q_t7ElementRtd__lufCSS_Say22IntelligenceFlowShared16RetrievedContextVGSaySS_AHtGTt1g5033_sSa25SiriLinkSuggestionsPlugin22ef8Shared16hI46VRszlE11indexByTypeSDySSSayADGGyFA2F_AFtXEfU0_Tf1nc_nTm(_swiftEmptyArrayStorage, &_ss18_DictionaryStorageCySS18SiriSuggestionsKit0cD0O20DisplayRepresentable_pGMd, &_ss18_DictionaryStorageCySS18SiriSuggestionsKit0cD0O20DisplayRepresentable_pGMR, specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:));
  OUTLINED_FUNCTION_48();
}

uint64_t MetaDataSourcedAppIntentResolver.getDialogOverride(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return _swift_task_switch(MetaDataSourcedAppIntentResolver.getDialogOverride(_:), 0, 0);
}

uint64_t MetaDataSourcedAppIntentResolver.getDialogOverride(_:)()
{
  OUTLINED_FUNCTION_15_0();
  __swift_project_boxed_opaque_existential_1(*(v0 + 136), *(*(v0 + 136) + 24));
  OUTLINED_FUNCTION_14();
  *(v0 + 144) = dispatch thunk of CandidateSuggestion.context.getter();
  *(v0 + 152) = v1;
  *(v0 + 160) = swift_getObjectType();
  *(v0 + 168) = dispatch thunk of CandidateSuggestion.context.getter();
  *(v0 + 176) = v2;
  *(v0 + 184) = swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  v3 = OUTLINED_FUNCTION_26_0();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_8();
  Context.getTargetOwner()();
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v0, v1, v2);
}

{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v0[10] = v1;
  v0[11] = *(v2 + 8);
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  OUTLINED_FUNCTION_15();
  (*(v3 + 16))();
  dispatch thunk of Actor.unownedExecutor.getter();
  v4 = OUTLINED_FUNCTION_26_0();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_8();
  Context.getParam(for:key:)();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v1, v2, v3);
}

{
  OUTLINED_FUNCTION_8();
  v1 = v0[16];
  if (v0[15])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v2 = v0[16];
      *(v2 + 32) = 0;
      *v2 = 0u;
      *(v2 + 16) = 0u;
    }
  }

  else
  {
    outlined destroy of CoreSignalTypes?((v0 + 12), &_sypSgMd, &_sypSgMR);
    *v1 = 0u;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0;
  }

  v3 = v0[1];

  return v3();
}

void *MetaDataSourcedAppIntentResolver.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return v0;
}

uint64_t MetaDataSourcedAppIntentResolver.__deallocating_deinit()
{
  MetaDataSourcedAppIntentResolver.deinit();

  return _swift_deallocClassInstance(v0, 112, 7);
}

uint64_t protocol witness for InternalResolver.resolverTypeOperand.getter in conformance MetaDataSourcedAppIntentResolver()
{
  v1 = *(*v0 + 96);

  return v1;
}

uint64_t protocol witness for InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:) in conformance MetaDataSourcedAppIntentResolver()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:) in conformance MetaDataSourcedAppIntentResolver;

  return MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:)();
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return v4(v3);
}

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = specialized Array.count.getter();
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

void specialized MutableCollection<>.shuffle<A>(using:)()
{
  OUTLINED_FUNCTION_50();
  v1 = type metadata accessor for RetrievedContext();
  OUTLINED_FUNCTION_14_0();
  v27 = v2;
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_37_0();
  v30 = v4;
  __chkstk_darwin(v5);
  v31 = &v23 - v6;
  v26 = v0;
  v7 = *v0;
  v8 = *(*v0 + 2);
  v9 = v8 - 2;
  if (v8 < 2)
  {
LABEL_18:
    OUTLINED_FUNCTION_48();
  }

  else
  {
    v10 = 0;
    v23 = v8 - 2;
    v24 = (v27 + 40);
    v25 = v27 + 16;
    while (1)
    {
      v32 = 0;
      swift_stdlib_random();
      v11 = (v32 * v8) >> 64;
      if (v8 > v32 * v8)
      {
        v12 = -v8 % v8;
        if (v12 > v32 * v8)
        {
          do
          {
            v32 = 0;
            swift_stdlib_random();
          }

          while (v12 > v32 * v8);
          v11 = (v32 * v8) >> 64;
        }
      }

      v13 = v10 + v11;
      if (__OFADD__(v10, v11))
      {
        break;
      }

      if (v10 != v13)
      {
        v14 = *(v7 + 2);
        if (v10 >= v14)
        {
          goto LABEL_20;
        }

        v15 = v1;
        v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
        v16 = &v7[v29];
        v17 = *(v27 + 72);
        v18 = *(v27 + 16);
        v28 = v17 * v10;
        v18(v31, &v7[v29 + v17 * v10], v15);
        if (v13 >= v14)
        {
          goto LABEL_21;
        }

        v19 = v17 * v13;
        v18(v30, &v16[v17 * v13], v15);
        v1 = v15;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v7);
        }

        if (v10 >= *(v7 + 2))
        {
          goto LABEL_22;
        }

        v20 = &v7[v29];
        v21 = *v24;
        (*v24)(&v7[v29 + v28], v30, v15);
        if (v13 >= *(v7 + 2))
        {
          goto LABEL_23;
        }

        v21(&v20[v19], v31, v15);
        *v26 = v7;
        v9 = v23;
      }

      --v8;
      if (v10++ == v9)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

uint64_t specialized _NativeDictionary.mapValues<A>(_:)(void (*a1)(void *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  result = static _DictionaryStorage.copy(original:)();
  v6 = result;
  v7 = 0;
  v30 = a3;
  v10 = *(a3 + 64);
  v9 = a3 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v28 = result + 64;
  v33 = result;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v19 = (*(v30 + 48) + 16 * v18);
      v20 = *v19;
      v21 = v19[1];
      outlined init with copy of ActionParameter(*(v30 + 56) + 48 * v18, v32);

      a1(v31, v32);
      if (v3)
      {
        break;
      }

      result = outlined destroy of ActionParameter(v32);
      *(v28 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v6 = v33;
      v22 = (*(v33 + 48) + 16 * v18);
      *v22 = v20;
      v22[1] = v21;
      v23 = (*(v6 + 56) + 16 * v18);
      v24 = v31[1];
      *v23 = v31[0];
      v23[1] = v24;
      v25 = *(v6 + 16);
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_17;
      }

      *(v6 + 16) = v27;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v6 = v33;

    outlined destroy of ActionParameter(v32);
    return v6;
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v6;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1, uint64_t *a2)
{
  return specialized closure #1 in Sequence<>.contains(_:)(*a1, a1[1], *a2, a2[1]) & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)(*a1, *a2) & 1;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

uint64_t sub_18568()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t partial apply for closure #3 in MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:)(uint64_t *a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #3 in MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:);

  return closure #3 in MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:)(a1, v4, v5, v6, (v1 + 5), (v1 + 10));
}

uint64_t partial apply for closure #3 in MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:)()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_13();
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t instantiation function for generic protocol witness table for MetaDataSourcedAppIntentResolver(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type MetaDataSourcedAppIntentResolver and conformance MetaDataSourcedAppIntentResolver(&lazy protocol witness table cache variable for type MetaDataSourcedAppIntentResolver and conformance MetaDataSourcedAppIntentResolver, a2, type metadata accessor for MetaDataSourcedAppIntentResolver);
  *(a1 + 8) = result;
  return result;
}

uint64_t _s25SiriLinkSuggestionsPlugin0B6Client_pWOcTm_0(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_15();
  (*v3)(a2);
  return a2;
}

uint64_t sub_18988()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t type metadata accessor for NSTextCheckingResult(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MetaDataSourcedAppIntentResolver and conformance MetaDataSourcedAppIntentResolver(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_39_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_2()
{
}

uint64_t OUTLINED_FUNCTION_7_1()
{
}

uint64_t OUTLINED_FUNCTION_8_2()
{
}

uint64_t OUTLINED_FUNCTION_13_2()
{
}

uint64_t OUTLINED_FUNCTION_14_2()
{
  __swift_destroy_boxed_opaque_existential_1(v0);
}

uint64_t OUTLINED_FUNCTION_17_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_24(float a1)
{
  *v1 = a1;
  v4 = v2[2];
  v2[9] = v2[1];
  v2[10] = v4;
  v5 = v2[4];
  v2[11] = v2[3];
  v2[12] = v5;

  return outlined init with copy of SuggestionAppIntent((v2 + 1), (v2 + 13));
}

uint64_t OUTLINED_FUNCTION_25_0()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_29_0()
{

  return os_log_type_enabled(v1, v0);
}

__n128 OUTLINED_FUNCTION_31_0(uint64_t a1)
{
  *(v1 + 32) = a1;
  v3 = *(v2 + 32);
  *(a1 + 16) = *(v2 + 16);
  *(a1 + 32) = v3;
  result = *(v2 + 48);
  v5 = *(v2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

BOOL OUTLINED_FUNCTION_34_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_35_0()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_47_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(7104878, 0xE300000000000000, va);
}

void OUTLINED_FUNCTION_49(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_51()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_52()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_53(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t LinkSuggestionsOwners.getOwner()@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (one-time initialization token for appIntentsOwner != -1)
      {
        swift_once();
      }

      v3 = &static LinkSuggestionsOwners.appIntentsOwner;
    }

    else
    {
      if (one-time initialization token for autoshortcutsOwner != -1)
      {
        swift_once();
      }

      v3 = &static LinkSuggestionsOwners.autoshortcutsOwner;
    }
  }

  else
  {
    if (one-time initialization token for linkOwner != -1)
    {
      swift_once();
    }

    v3 = &static LinkSuggestionsOwners.linkOwner;
  }

  v4 = *v3;
  a2[3] = type metadata accessor for DefaultOwner();
  a2[4] = lazy protocol witness table accessor for type DefaultOwner and conformance DefaultOwner(&lazy protocol witness table cache variable for type DefaultOwner and conformance DefaultOwner, &type metadata accessor for DefaultOwner, &protocol conformance descriptor for DefaultOwner);
  *a2 = v4;
}

uint64_t one-time initialization function for linkOwner(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = type metadata accessor for CoreSuggestionGroups();
  v10[3] = v7;
  v10[4] = lazy protocol witness table accessor for type DefaultOwner and conformance DefaultOwner(&lazy protocol witness table cache variable for type CoreSuggestionGroups and conformance CoreSuggestionGroups, &type metadata accessor for CoreSuggestionGroups, &protocol conformance descriptor for CoreSuggestionGroups);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(v7 - 8) + 104))(boxed_opaque_existential_1, *a2, v7);
  type metadata accessor for DefaultOwner();
  swift_allocObject();
  result = DefaultOwner.init(group:identifier:)();
  *a5 = result;
  return result;
}

SiriLinkSuggestionsPlugin::LinkSuggestionsOwners_optional __swiftcall LinkSuggestionsOwners.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LinkSuggestionsOwners.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t LinkSuggestionsOwners.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 1802398060;
  }

  if (a1 == 1)
  {
    return 0x6E65746E49707061;
  }

  return 0x726F68736F747561;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

SiriLinkSuggestionsPlugin::LinkSuggestionsOwners_optional protocol witness for RawRepresentable.init(rawValue:) in conformance LinkSuggestionsOwners@<W0>(Swift::String *a1@<X0>, SiriLinkSuggestionsPlugin::LinkSuggestionsOwners_optional *a2@<X8>)
{
  result.value = LinkSuggestionsOwners.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance LinkSuggestionsOwners@<X0>(uint64_t *a1@<X8>)
{
  result = LinkSuggestionsOwners.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::String __swiftcall LinkGroups.getName()()
{
  v0 = 1802398060;
  v1 = 0xE400000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t LinkGroups.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 1802398060 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int LinkGroups.CodingKeys.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LinkGroups.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LinkGroups.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = LinkGroups.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance LinkGroups.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = static AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors.__derived_enum_equals(_:_:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LinkGroups.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LinkGroups.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LinkGroups.LinkCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = LinkGroups.LinkCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LinkGroups.LinkCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LinkGroups.LinkCodingKeys and conformance LinkGroups.LinkCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LinkGroups.LinkCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LinkGroups.LinkCodingKeys and conformance LinkGroups.LinkCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LinkGroups.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy25SiriLinkSuggestionsPlugin0E6GroupsO0E10CodingKeys33_B4BD01E4DDE188E5B38F1918D6F65352LLOGMd, &_ss22KeyedEncodingContainerVy25SiriLinkSuggestionsPlugin0E6GroupsO0E10CodingKeys33_B4BD01E4DDE188E5B38F1918D6F65352LLOGMR);
  OUTLINED_FUNCTION_14_0();
  v4 = v3;
  OUTLINED_FUNCTION_1_2();
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy25SiriLinkSuggestionsPlugin0E6GroupsO10CodingKeys33_B4BD01E4DDE188E5B38F1918D6F65352LLOGMd, &_ss22KeyedEncodingContainerVy25SiriLinkSuggestionsPlugin0E6GroupsO10CodingKeys33_B4BD01E4DDE188E5B38F1918D6F65352LLOGMR);
  OUTLINED_FUNCTION_14_0();
  v10 = v9;
  OUTLINED_FUNCTION_1_2();
  __chkstk_darwin(v11);
  v13 = &v15 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type LinkGroups.LinkCodingKeys and conformance LinkGroups.LinkCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v4 + 8))(v7, v2);
  return (*(v10 + 8))(v13, v8);
}

unint64_t lazy protocol witness table accessor for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LinkGroups.LinkCodingKeys and conformance LinkGroups.LinkCodingKeys()
{
  result = lazy protocol witness table cache variable for type LinkGroups.LinkCodingKeys and conformance LinkGroups.LinkCodingKeys;
  if (!lazy protocol witness table cache variable for type LinkGroups.LinkCodingKeys and conformance LinkGroups.LinkCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkGroups.LinkCodingKeys and conformance LinkGroups.LinkCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkGroups.LinkCodingKeys and conformance LinkGroups.LinkCodingKeys;
  if (!lazy protocol witness table cache variable for type LinkGroups.LinkCodingKeys and conformance LinkGroups.LinkCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkGroups.LinkCodingKeys and conformance LinkGroups.LinkCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkGroups.LinkCodingKeys and conformance LinkGroups.LinkCodingKeys;
  if (!lazy protocol witness table cache variable for type LinkGroups.LinkCodingKeys and conformance LinkGroups.LinkCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkGroups.LinkCodingKeys and conformance LinkGroups.LinkCodingKeys);
  }

  return result;
}

Swift::Int LinkGroups.hashValue.getter()
{
  Hasher.init(_seed:)();
  lazy protocol witness table accessor for type LinkGroups and conformance LinkGroups();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t LinkGroups.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy25SiriLinkSuggestionsPlugin0E6GroupsO0E10CodingKeys33_B4BD01E4DDE188E5B38F1918D6F65352LLOGMd, &_ss22KeyedDecodingContainerVy25SiriLinkSuggestionsPlugin0E6GroupsO0E10CodingKeys33_B4BD01E4DDE188E5B38F1918D6F65352LLOGMR);
  OUTLINED_FUNCTION_14_0();
  v38 = v4;
  OUTLINED_FUNCTION_1_2();
  __chkstk_darwin(v5);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy25SiriLinkSuggestionsPlugin0E6GroupsO10CodingKeys33_B4BD01E4DDE188E5B38F1918D6F65352LLOGMd, &_ss22KeyedDecodingContainerVy25SiriLinkSuggestionsPlugin0E6GroupsO10CodingKeys33_B4BD01E4DDE188E5B38F1918D6F65352LLOGMR);
  OUTLINED_FUNCTION_14_0();
  v39 = v9;
  OUTLINED_FUNCTION_1_2();
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_9;
  }

  v36 = v7;
  v37 = a1;
  v13 = KeyedDecodingContainer.allKeys.getter();
  result = _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC25SiriLinkSuggestionsPlugin0K6GroupsO10CodingKeys33_B4BD01E4DDE188E5B38F1918D6F65352LLO_Tt1g5(v13, 0);
  v18 = v12;
  if (v16 == v17 >> 1)
  {
    v38 = result;
LABEL_8:
    v29 = v8;
    v30 = v39;
    v31 = type metadata accessor for DecodingError();
    swift_allocError();
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v33 = &type metadata for LinkGroups;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v31 - 8) + 104))(v33, enum case for DecodingError.typeMismatch(_:), v31);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v30 + 8))(v18, v29);
    a1 = v37;
LABEL_9:
    v34 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  if (v16 < (v17 >> 1))
  {
    v19 = specialized ArraySlice.subscript.getter(v16 + 1, v17 >> 1, result, v15, v16, v17);
    v21 = v20;
    v23 = v22;
    swift_unknownObjectRelease();
    v24 = v21 == v23 >> 1;
    v25 = v37;
    v26 = v38;
    if (v24)
    {
      lazy protocol witness table accessor for type LinkGroups.LinkCodingKeys and conformance LinkGroups.LinkCodingKeys();
      v27 = v36;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v28 = v39;
      swift_unknownObjectRelease();
      (*(v26 + 8))(v27, v3);
      (*(v28 + 8))(v18, v8);
      v34 = v25;
      return __swift_destroy_boxed_opaque_existential_1(v34);
    }

    v38 = v19;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LinkGroups(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type LinkGroups and conformance LinkGroups();

  return static SuggestionGroup.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LinkGroups(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type LinkGroups and conformance LinkGroups();

  return SuggestionGroup.hash(into:)(a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LinkGroups(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type LinkGroups and conformance LinkGroups()
{
  result = lazy protocol witness table cache variable for type LinkGroups and conformance LinkGroups;
  if (!lazy protocol witness table cache variable for type LinkGroups and conformance LinkGroups)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkGroups and conformance LinkGroups);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkGroups and conformance LinkGroups;
  if (!lazy protocol witness table cache variable for type LinkGroups and conformance LinkGroups)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkGroups and conformance LinkGroups);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkGroups and conformance LinkGroups;
  if (!lazy protocol witness table cache variable for type LinkGroups and conformance LinkGroups)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkGroups and conformance LinkGroups);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkGroups and conformance LinkGroups;
  if (!lazy protocol witness table cache variable for type LinkGroups and conformance LinkGroups)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkGroups and conformance LinkGroups);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkGroups and conformance LinkGroups;
  if (!lazy protocol witness table cache variable for type LinkGroups and conformance LinkGroups)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkGroups and conformance LinkGroups);
  }

  return result;
}

uint64_t _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC25SiriLinkSuggestionsPlugin0K6GroupsO10CodingKeys33_B4BD01E4DDE188E5B38F1918D6F65352LLO_Tt1g5(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t specialized ArraySlice.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for LinkSuggestionsOwners(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LinkSuggestionsOwners(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1A264);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LinkGroups(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
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

_BYTE *storeEnumTagSinglePayload for LinkGroups(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1A3B4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DefaultOwner and conformance DefaultOwner(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t LinkSuggestionsRepository.getPooledSuggestions()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyypypSgGMd, &_s13SiriUtilities11TransformerVyypypSgGMR);
  __chkstk_darwin(v1 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit17SuggestionDetailsVGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit17SuggestionDetailsVGMR);
  type metadata accessor for SuggestionDetails();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_3EFC0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_18SiriSuggestionsKit19ResolvableParameterCtGMd, &_ss23_ContiguousArrayStorageCySS_18SiriSuggestionsKit19ResolvableParameterCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_3EFC0;
  *(inited + 32) = 0xD00000000000001FLL;
  *(inited + 40) = 0x80000000000424E0;
  type metadata accessor for ResolvableParameter();
  static SuggestionTransformers.passthroughParameterForLogging()();
  *(inited + 48) = ResolvableParameter.__allocating_init(typeIdentifier:required:loggingKeyTransformer:)();
  Dictionary.init(dictionaryLiteral:)();
  outlined init with copy of LinkClient(v0 + 16, &v7);
  v4 = type metadata accessor for LinkViewProvider();
  v5 = swift_allocObject();
  type metadata accessor for LinkInvocationActionProvider();
  *(v5 + 56) = swift_allocObject();
  outlined init with take of LinkClient(&v7, v5 + 16);
  v8 = v4;
  v9 = lazy protocol witness table accessor for type LinkViewProvider and conformance LinkViewProvider(&lazy protocol witness table cache variable for type LinkViewProvider and conformance LinkViewProvider, 255, type metadata accessor for LinkViewProvider, &protocol conformance descriptor for LinkViewProvider);
  *&v7 = v5;
  type metadata accessor for LinkLoggingActionKeyMapper();
  swift_allocObject();
  lazy protocol witness table accessor for type LinkViewProvider and conformance LinkViewProvider(&lazy protocol witness table cache variable for type LinkLoggingActionKeyMapper and conformance LinkLoggingActionKeyMapper, 255, type metadata accessor for LinkLoggingActionKeyMapper, &protocol conformance descriptor for LinkLoggingActionKeyMapper);
  OUTLINED_FUNCTION_0();
  SuggestionDetails.init(suggestionId:resolverParams:description:viewProvider:actionIdKeyMapper:filter:)();
  return v2;
}

uint64_t protocol witness for InternalSuggestionsRepository.getAsyncPooledSuggestions() in conformance LinkSuggestionsRepository(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for InternalSuggestionsRepository.getAsyncPooledSuggestions() in conformance LinkSuggestionsRepository;

  return InternalSuggestionsRepository.getAsyncPooledSuggestions()(a1, a2);
}

uint64_t protocol witness for InternalSuggestionsRepository.getAsyncPooledSuggestions() in conformance LinkSuggestionsRepository(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t protocol witness for OwnerProvider.getOwner() in conformance LinkSuggestionsRepository(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return SuggestionsRepository.getOwner()(a1, WitnessTable);
}

uint64_t lazy protocol witness table accessor for type LinkViewProvider and conformance LinkViewProvider(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized Array.count.getter(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }
}

uint64_t static PhraseUtils.getHydratedPhrase(phraseTemplate:parameters:)(unint64_t a1, unint64_t a2, unint64_t a3)
{
  if (one-time initialization token for variableNameRegex != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v6 = static PhraseUtils.variableNameRegex;
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 matchesInString:v7 options:0 range:{0, String.UTF16View.count.getter()}];

    type metadata accessor for NSTextCheckingResult();
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = specialized Array.count.getter(v9);
    v59 = a3;
    if (!v10)
    {
      break;
    }

    v11 = v10;
    v62[0] = _swiftEmptyArrayStorage;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 & ~(v10 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
LABEL_36:
      __break(1u);
      return result;
    }

    v13 = 0;
    v14 = v62[0];
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if ((v9 & 0xC000000000000001) != 0)
      {
        v16 = v14;
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_33;
        }

        v16 = v14;
        v17 = *(v9 + 8 * v13 + 32);
      }

      v18 = v17;
      [v17 rangeAtIndex:{1, v55, v56, v57, v58}];
      result = Range<>.init(_:in:)();
      if (v19)
      {
        goto LABEL_36;
      }

      a3 = a1;
      v20 = a2;
      String.subscript.getter();
      v21 = static String._fromSubstring(_:)();
      v23 = v22;

      v14 = v16;
      v62[0] = v16;
      v24 = *(v16 + 16);
      v25 = v14[3];
      if (v24 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v24 + 1, 1);
        v14 = v62[0];
      }

      v14[2] = v24 + 1;
      v26 = &v14[2 * v24];
      v26[4] = v21;
      v26[5] = v23;
      ++v13;
      a1 = a3;
      a2 = v20;
      if (v15 == v11)
      {

        a3 = v59;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    OUTLINED_FUNCTION_0_4(&one-time initialization token for variableNameRegex);
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_16:
  v27 = v14;
  if (one-time initialization token for appIntentsSuggestions != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.appIntentsSuggestions);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  v61 = a1;
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = a2;
    v33 = swift_slowAlloc();
    v62[0] = v33;
    *v31 = 136315394;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, v32, v62);
    *(v31 + 12) = 2080;
    v34 = Dictionary.description.getter();
    a1 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v62);

    *(v31 + 14) = a1;
    _os_log_impl(&dword_0, v29, v30, "Hydrating phraseTemplate - %s with parameters - %s", v31, 0x16u);
    swift_arrayDestroy();
    v36 = v33;
    a2 = v32;
    OUTLINED_FUNCTION_11(v36);
    OUTLINED_FUNCTION_11(v31);
  }

  v37 = v27;
  v60 = v27[2];

  v38 = 0;
  for (i = (v27 + 5); ; i += 2)
  {
    if (v60 == v38)
    {

      return v61;
    }

    if (v38 >= v37[2])
    {
      goto LABEL_32;
    }

    v40 = a2;
    v42 = *(i - 1);
    v41 = *i;
    v43 = *(v59 + 16);

    if (!v43)
    {
      break;
    }

    v44 = specialized __RawDictionaryStorage.find<A>(_:)(v42, v41);
    if ((v45 & 1) == 0)
    {
      break;
    }

    v46 = (*(v59 + 56) + 16 * v44);
    a3 = *v46;
    a1 = v46[1];
    v62[0] = v61;
    v62[1] = v40;

    v47._countAndFlagsBits = v42;
    v47._object = v41;
    String.append(_:)(v47);

    v48._countAndFlagsBits = 125;
    v48._object = 0xE100000000000000;
    String.append(_:)(v48);
    v57 = lazy protocol witness table accessor for type String and conformance String();
    v58 = v57;
    v56 = v57;
    v55 = &type metadata for String;
    v61 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    a2 = v49;

    ++v38;
    v37 = v27;
  }

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v62[0] = v53;
    *v52 = 136315138;
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v41, v62);

    *(v52 + 4) = v54;
    _os_log_impl(&dword_0, v50, v51, "display representable cannot be obtained for variable - %s ", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v53);
    OUTLINED_FUNCTION_11(v53);
    OUTLINED_FUNCTION_11(v52);
  }

  else
  {
  }

  return 0;
}

void *static PhraseUtils.getVariableNames(phraseTemplate:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for variableNameRegex != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v2 = static PhraseUtils.variableNameRegex;
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 matchesInString:v3 options:0 range:{0, String.UTF16View.count.getter()}];

    type metadata accessor for NSTextCheckingResult();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = specialized Array.count.getter(v5);
    if (!v6)
    {
LABEL_14:

      return _swiftEmptyArrayStorage;
    }

    v7 = v6;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 & ~(v6 >> 63), 0);
    if (v7 < 0)
    {
      break;
    }

    v9 = 0;
    v21 = v5;
    v22 = v5 & 0xC000000000000001;
    v20 = v5 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v22)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *(v20 + 16))
        {
          goto LABEL_16;
        }

        v11 = *(v5 + 8 * v9 + 32);
      }

      v12 = v11;
      [v11 rangeAtIndex:{1, v20}];
      result = Range<>.init(_:in:)();
      if (v13)
      {
        goto LABEL_19;
      }

      String.subscript.getter();
      v14 = static String._fromSubstring(_:)();
      v16 = v15;

      v18 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v18 + 1;
      v19 = &_swiftEmptyArrayStorage[2 * v18];
      v19[4] = v14;
      v19[5] = v16;
      ++v9;
      v5 = v21;
      if (v10 == v7)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    OUTLINED_FUNCTION_0_4(&one-time initialization token for variableNameRegex);
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t static PhraseUtils.getHydratedPhrase(phraseTemplate:parameters:locale:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = a4;
  v6 = specialized Dictionary.compactMapValues<A>(_:)(partial apply for closure #1 in static PhraseUtils.getHydratedPhrase(phraseTemplate:parameters:locale:), v9, a3);
  v7 = static PhraseUtils.getHydratedPhrase(phraseTemplate:parameters:)(a1, a2, v6);

  return v7;
}

id one-time initialization function for variableNameRegex()
{
  v0 = objc_allocWithZone(NSRegularExpression);
  result = @nonobjc NSRegularExpression.init(pattern:options:)(0x2B775C287B5C245CLL, 0xEB000000007D5C29, 0);
  static PhraseUtils.variableNameRegex = result;
  return result;
}

uint64_t closure #1 in static PhraseUtils.getHydratedPhrase(phraseTemplate:parameters:locale:)@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  outlined init with copy of SiriSuggestions.DisplayRepresentable?(a1, v8);
  v4 = v9;
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = dispatch thunk of SiriSuggestions.DisplayRepresentable.getDisplay(for:)();
    v4 = v6;
    result = __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    result = outlined destroy of SiriSuggestions.DisplayRepresentable?(v8);
    v5 = 0;
  }

  *a3 = v5;
  a3[1] = v4;
  return result;
}

id @nonobjc NSRegularExpression.init(pattern:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

unint64_t type metadata accessor for NSTextCheckingResult()
{
  result = lazy cache variable for type metadata for NSTextCheckingResult;
  if (!lazy cache variable for type metadata for NSTextCheckingResult)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSTextCheckingResult);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t outlined init with copy of SiriSuggestions.DisplayRepresentable?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SiriSuggestions.DisplayRepresentable?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1)
{

  return swift_once();
}

uint64_t *SiriLinkSuggestionsFeatureFlags.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_5(&one-time initialization token for forceEnabled);
  }

  return &static SiriLinkSuggestionsFeatureFlags.forceEnabled;
}

uint64_t static SiriLinkSuggestionsFeatureFlags.forceEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_5(&one-time initialization token for forceEnabled);
  }

  swift_beginAccess();
}

uint64_t static SiriLinkSuggestionsFeatureFlags.forceEnabled.setter(uint64_t a1)
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_5(&one-time initialization token for forceEnabled);
  }

  swift_beginAccess();
  static SiriLinkSuggestionsFeatureFlags.forceEnabled = a1;
}

uint64_t (*static SiriLinkSuggestionsFeatureFlags.forceEnabled.modify(uint64_t a1))()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_5(&one-time initialization token for forceEnabled);
  }

  swift_beginAccess();
  return static SiriLinkSuggestionsFeatureFlags.forceEnabled.modify;
}

uint64_t key path getter for static SiriLinkSuggestionsFeatureFlags.forceEnabled : SiriLinkSuggestionsFeatureFlags.Type@<X0>(void *a1@<X8>)
{
  SiriLinkSuggestionsFeatureFlags.forceEnabled.unsafeMutableAddressor();
  swift_beginAccess();
  *a1 = static SiriLinkSuggestionsFeatureFlags.forceEnabled;
}

uint64_t key path setter for static SiriLinkSuggestionsFeatureFlags.forceEnabled : SiriLinkSuggestionsFeatureFlags.Type(uint64_t *a1)
{
  v1 = *a1;

  SiriLinkSuggestionsFeatureFlags.forceEnabled.unsafeMutableAddressor();
  swift_beginAccess();
  static SiriLinkSuggestionsFeatureFlags.forceEnabled = v1;
}

const char *SiriLinkSuggestionsFeatureFlags.feature.getter(char a1)
{
  if (a1)
  {
    return "appIntents";
  }

  else
  {
    return "link";
  }
}

uint64_t SiriLinkSuggestionsFeatureFlags.isEnabled.getter(char a1)
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_5(&one-time initialization token for forceEnabled);
  }

  swift_beginAccess();
  v2 = static SiriLinkSuggestionsFeatureFlags.forceEnabled;
  v3 = a1 & 1;
  if (*(static SiriLinkSuggestionsFeatureFlags.forceEnabled + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v3), (v5 & 1) != 0))
  {
    v6 = *(*(v2 + 56) + v4);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v8[3] = &type metadata for SiriLinkSuggestionsFeatureFlags;
    v8[4] = lazy protocol witness table accessor for type SiriLinkSuggestionsFeatureFlags and conformance SiriLinkSuggestionsFeatureFlags();
    LOBYTE(v8[0]) = v3;
    v6 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  return v6 & 1;
}

uint64_t static SiriLinkSuggestionsFeatureFlags.isAppIntentsEnabled.getter()
{
  if (SiriLinkSuggestionsFeatureFlags.isEnabled.getter(1))
  {
    return AFDeviceSupportsSystemAssistantExperience();
  }

  else
  {
    return 0;
  }
}

uint64_t SiriLinkSuggestionsFeatureFlags.withForcedEnabled<A>(_:block:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 105) = a5;
  *(v5 + 72) = a3;
  *(v5 + 80) = a4;
  *(v5 + 104) = a2;
  *(v5 + 64) = a1;
  return _swift_task_switch(SiriLinkSuggestionsFeatureFlags.withForcedEnabled<A>(_:block:), 0, 0);
}

uint64_t SiriLinkSuggestionsFeatureFlags.withForcedEnabled<A>(_:block:)()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_5(&one-time initialization token for forceEnabled);
  }

  v1 = *(v0 + 105);
  v2 = *(v0 + 72);
  v3 = *(v0 + 104);
  swift_beginAccess();
  *(v0 + 106) = specialized Dictionary.subscript.getter(v1 & 1, static SiriLinkSuggestionsFeatureFlags.forceEnabled);
  swift_endAccess();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = static SiriLinkSuggestionsFeatureFlags.forceEnabled;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, v1 & 1, isUniquelyReferenced_nonNull_native);
  static SiriLinkSuggestionsFeatureFlags.forceEnabled = v9;
  swift_endAccess();
  v8 = (v2 + *v2);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = SiriLinkSuggestionsFeatureFlags.withForcedEnabled<A>(_:block:);
  v6 = *(v0 + 64);

  return v8(v6);
}

{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = SiriLinkSuggestionsFeatureFlags.withForcedEnabled<A>(_:block:);
  }

  else
  {
    v2 = SiriLinkSuggestionsFeatureFlags.withForcedEnabled<A>(_:block:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  $defer #1 <A>() in SiriLinkSuggestionsFeatureFlags.withForcedEnabled<A>(_:block:)(*(v0 + 105) & 1, *(v0 + 106));
  v1 = *(v0 + 8);

  return v1();
}

{
  $defer #1 <A>() in SiriLinkSuggestionsFeatureFlags.withForcedEnabled<A>(_:block:)(*(v0 + 105) & 1, *(v0 + 106));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t $defer #1 <A>() in SiriLinkSuggestionsFeatureFlags.withForcedEnabled<A>(_:block:)(char a1, char a2)
{
  if (a2 == 2)
  {
    if (one-time initialization token for forceEnabled != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    specialized __RawDictionaryStorage.find<A>(_:)(a1 & 1);
    if (v3)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = static SiriLinkSuggestionsFeatureFlags.forceEnabled;
      v5 = static SiriLinkSuggestionsFeatureFlags.forceEnabled;
      static SiriLinkSuggestionsFeatureFlags.forceEnabled = 0x8000000000000000;
      v6 = *(v5 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy25SiriLinkSuggestionsPlugin0cdE12FeatureFlagsOSbGMd, "F/");
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v6);
      lazy protocol witness table accessor for type SiriLinkSuggestionsFeatureFlags and conformance SiriLinkSuggestionsFeatureFlags();
      _NativeDictionary._delete(at:)();
      static SiriLinkSuggestionsFeatureFlags.forceEnabled = v10;
    }
  }

  else
  {
    if (one-time initialization token for forceEnabled != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v8 = swift_isUniquelyReferenced_nonNull_native();
    v11 = static SiriLinkSuggestionsFeatureFlags.forceEnabled;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2 & 1, a1 & 1, v8);
    static SiriLinkSuggestionsFeatureFlags.forceEnabled = v11;
  }

  return swift_endAccess();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SiriLinkSuggestionsFeatureFlags(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  DialogType.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type SiriLinkSuggestionsFeatureFlags and conformance SiriLinkSuggestionsFeatureFlags()
{
  result = lazy protocol witness table cache variable for type SiriLinkSuggestionsFeatureFlags and conformance SiriLinkSuggestionsFeatureFlags;
  if (!lazy protocol witness table cache variable for type SiriLinkSuggestionsFeatureFlags and conformance SiriLinkSuggestionsFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkSuggestionsFeatureFlags and conformance SiriLinkSuggestionsFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkSuggestionsFeatureFlags and conformance SiriLinkSuggestionsFeatureFlags;
  if (!lazy protocol witness table cache variable for type SiriLinkSuggestionsFeatureFlags and conformance SiriLinkSuggestionsFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkSuggestionsFeatureFlags and conformance SiriLinkSuggestionsFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkSuggestionsFeatureFlags and conformance SiriLinkSuggestionsFeatureFlags;
  if (!lazy protocol witness table cache variable for type SiriLinkSuggestionsFeatureFlags and conformance SiriLinkSuggestionsFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkSuggestionsFeatureFlags and conformance SiriLinkSuggestionsFeatureFlags);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriLinkSuggestionsFeatureFlags(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1C46CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_5(uint64_t a1)
{

  return swift_once();
}

void *_sSD_16uniquingKeysWithSDyxq_Gqd__n_q_q__q_tKXEtKcSTRd__x_q_t7ElementRtd__lufCSS_So16LNActionMetadataCSaySS_AFtGTt1g5096_s25SiriLinkSuggestionsPlugin07DefaultB6ClientC17getActionMetadata19forBundleIdentifierSDySSSo08E23I0CGSS_tKFA2G_AGtXEfU0_Tf1nc_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, void **))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v7 = &_swiftEmptyDictionarySingleton;
  }

  v10 = v7;
  a4(a1, 1, &v10);
  v8 = v10;
  if (v4)
  {
  }

  return v8;
}

uint64_t DefaultLinkClient.appIntentSuggestionsSignposter.unsafeMutableAddressor()
{
  if (one-time initialization token for appIntentSuggestionsSignposter != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v0 = type metadata accessor for OSSignposter();

  return __swift_project_value_buffer(v0, static DefaultLinkClient.appIntentSuggestionsSignposter);
}

uint64_t static DefaultLinkClient.appIntentSuggestionsSignposter.getter()
{
  if (one-time initialization token for appIntentSuggestionsSignposter != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v0 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v0, static DefaultLinkClient.appIntentSuggestionsSignposter);
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t DefaultLinkClient.__allocating_init(metadataProvider:suggestionsProvider:registryObserver:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  DefaultLinkClient.init(metadataProvider:suggestionsProvider:registryObserver:)(a1, a2, a3);
  return v6;
}

void *DefaultLinkClient.init(metadataProvider:suggestionsProvider:registryObserver:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5(&outlined read-only object #0 of DefaultLinkClient.init(metadataProvider:suggestionsProvider:registryObserver:));
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v3[5] = v7;
  return v3;
}

Swift::OpaquePointer_optional __swiftcall DefaultLinkClient.getLinkEnabledBundleIdentifiers()()
{
  if (one-time initialization token for linkSuggestions != -1)
  {
    OUTLINED_FUNCTION_1_0(&one-time initialization token for linkSuggestions);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.linkSuggestions);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Fetching Link-enabled bundles", v4, 2u);
    OUTLINED_FUNCTION_3_2();
  }

  v5 = *(v0 + 16);
  v30 = 0;
  v6 = [v5 bundlesWithError:&v30];
  v7 = v30;
  if (v6)
  {
    v8 = v6;
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v7;

    v11 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_21_0();

    if (OUTLINED_FUNCTION_24_0())
    {
      OUTLINED_FUNCTION_11_2();
      v12 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_3();
      v13 = swift_slowAlloc();
      v30 = v13;
      *v12 = 136315138;
      v14 = Array.description.getter();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v30);

      *(v12 + 4) = v16;
      OUTLINED_FUNCTION_5_3(&dword_0, v17, v18, "Fetched Link-enabled bundles: %s");
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_3_2();

      OUTLINED_FUNCTION_3_2();
    }
  }

  else
  {
    v20 = v30;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_21_0();

    if (OUTLINED_FUNCTION_24_0())
    {
      OUTLINED_FUNCTION_11_2();
      v22 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_3();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136315138;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v24 = String.init<A>(describing:)();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v30);

      *(v22 + 4) = v26;
      OUTLINED_FUNCTION_5_3(&dword_0, v27, v28, "Error fetching bundles: %s");
      __swift_destroy_boxed_opaque_existential_1(v23);
      OUTLINED_FUNCTION_3_2();

      OUTLINED_FUNCTION_3_2();
    }

    else
    {
    }

    v9 = 0;
  }

  v29 = v9;
  result.value._rawValue = v29;
  result.is_nil = v19;
  return result;
}

void *DefaultLinkClient.getSuggestedActions(for:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for linkSuggestions != -1)
  {
LABEL_54:
    OUTLINED_FUNCTION_1_0(&one-time initialization token for linkSuggestions);
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.linkSuggestions);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_11_2();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_3();
    v8 = swift_slowAlloc();
    *&v86 = v8;
    *v7 = 136315138;
    v9 = Array.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v86);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v5, v6, "Retrieving suggested actions for requests: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_3_2();

    OUTLINED_FUNCTION_3_2();
  }

  v12 = v2[3];
  v13 = a1[2];
  if (v13)
  {
    *&v86 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNSuggestionsRequest, LNSuggestionsRequest_ptr);
    v14 = a1 + 49;
    v15 = v13;
    do
    {
      v16 = *(v14 - 17);
      v17 = *(v14 - 9);
      v18 = *(v14 - 1);
      v19 = *v14;
      v14 += 24;

      LNSuggestionsRequest.__allocating_init(bundleIdentifier:onScreen:explicitRequest:)(v16, v17, v18, v19);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v15;
    }

    while (v15);
  }

  type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNSuggestionsRequest, LNSuggestionsRequest_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  *&v86 = 0;
  v21 = [v12 suggestedActionsForSuggestionsRequests:isa error:&v86];

  v22 = v86;
  if (v21)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17LNSuggestedActionCGMd, &_sSaySo17LNSuggestedActionCGMR);
    v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = _swiftEmptyArrayStorage;
    if (v13)
    {
      v83 = v2;
      *&v86 = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
      v24 = v86;
      v25 = a1 + 49;
      do
      {
        v26 = *(v25 - 17);
        v27 = *(v25 - 9);
        v28 = *(v25 - 1);
        v29 = *v25;
        *&v86 = v24;
        v30 = v24[2];
        v31 = v24[3];
        swift_bridgeObjectRetain_n();
        if (v30 >= v31 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v30 + 1, 1);
          v24 = v86;
        }

        v24[2] = v30 + 1;
        v32 = &v24[5 * v30];
        v32[4] = v26;
        v32[5] = v27;
        v32[6] = v26;
        v32[7] = v27;
        *(v32 + 64) = v28;
        *(v32 + 65) = v29;
        v25 += 24;
        --v13;
      }

      while (v13);
      v2 = v83;
    }

    v84 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_25SiriLinkSuggestionsPlugin0G23SuggestedActionsRequestVSaySS_AGtGTt0g5(v24);

    v33 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_21_0();

    if (OUTLINED_FUNCTION_24_0())
    {
      OUTLINED_FUNCTION_11_2();
      v34 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_3();
      v35 = swift_slowAlloc();
      *&v86 = v35;
      *v34 = 136315138;
      v36 = Dictionary.description.getter();
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v86);

      *(v34 + 4) = v38;
      OUTLINED_FUNCTION_5_3(&dword_0, v39, v40, "Found suggested actions: %s");
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_3_2();

      OUTLINED_FUNCTION_3_2();
    }

    v82 = v2 + 8;
    OUTLINED_FUNCTION_5_0();
    v43 = v42 & v41;
    v45 = (v44 + 63) >> 6;

    v46 = 0;
    a1 = _swiftEmptyArrayStorage;
    do
    {
      while (1)
      {
        if (!v43)
        {
          while (1)
          {
            v47 = v46 + 1;
            if (__OFADD__(v46, 1))
            {
              break;
            }

            if (v47 >= v45)
            {
              goto LABEL_33;
            }

            v43 = v82[v47];
            ++v46;
            if (v43)
            {
              v46 = v47;
              goto LABEL_22;
            }
          }

          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

LABEL_22:
        v48 = __clz(__rbit64(v43)) | (v46 << 6);
        v49 = v2;
        v50 = (v2[6] + 16 * v48);
        v51 = *v50;
        v52 = v50[1];
        v53 = *(v2[7] + 8 * v48);

        v54 = closure #2 in DefaultLinkClient.getSuggestedActions(for:)(v51, v52, v53, v84);

        v55 = *(v54 + 2);
        v2 = a1[2];
        if (__OFADD__(v2, v55))
        {
          goto LABEL_51;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v2 + v55 > a1[3] >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          a1 = v56;
        }

        v2 = v49;
        v43 &= v43 - 1;
        if (!*(v54 + 2))
        {
          break;
        }

        if ((a1[3] >> 1) - a1[2] < v55)
        {
          goto LABEL_52;
        }

        swift_arrayInitWithCopy();

        if (v55)
        {
          v57 = a1[2];
          v58 = __OFADD__(v57, v55);
          v59 = v57 + v55;
          if (v58)
          {
            goto LABEL_53;
          }

          a1[2] = v59;
        }
      }
    }

    while (!v55);
    __break(1u);
LABEL_33:

    v60 = 0;
    v61 = a1[2];
    v2 = _swiftEmptyArrayStorage;
LABEL_34:
    v62 = 48 * v60 + 32;
    while (v61 != v60)
    {
      if (v60 >= a1[2])
      {
        goto LABEL_50;
      }

      v63 = *(a1 + v62);
      v64 = *(a1 + v62 + 32);
      v87 = *(a1 + v62 + 16);
      v88 = v64;
      v86 = v63;
      type metadata accessor for DefaultLinkDialogIdProvider(0);
      outlined init with copy of LinkSuggestedAction(&v86, v85);
      if (static DefaultLinkDialogIdProvider.canDialog(action:)(&v86))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v66 = _swiftEmptyArrayStorage[2];
        v65 = _swiftEmptyArrayStorage[3];
        if (v66 >= v65 >> 1)
        {
          v70 = OUTLINED_FUNCTION_19_2(v65);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v70, v66 + 1, 1);
        }

        ++v60;
        _swiftEmptyArrayStorage[2] = v66 + 1;
        v67 = &_swiftEmptyArrayStorage[6 * v66];
        v68 = v86;
        v69 = v88;
        v67[3] = v87;
        v67[4] = v69;
        v67[2] = v68;
        goto LABEL_34;
      }

      outlined destroy of LinkSuggestedAction(&v86);
      v62 += 48;
      ++v60;
    }
  }

  else
  {
    v71 = v86;
    v72 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v73 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_21_0();

    if (OUTLINED_FUNCTION_24_0())
    {
      OUTLINED_FUNCTION_11_2();
      v74 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_3();
      v75 = swift_slowAlloc();
      *&v86 = v75;
      *v74 = 136315138;
      v85[0] = v72;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v76 = String.init<A>(describing:)();
      v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, &v86);

      *(v74 + 4) = v78;
      OUTLINED_FUNCTION_5_3(&dword_0, v79, v80, "Error fetching suggested actions: %s");
      __swift_destroy_boxed_opaque_existential_1(v75);
      OUTLINED_FUNCTION_3_2();

      OUTLINED_FUNCTION_3_2();
    }
  }

  return _swiftEmptyArrayStorage;
}

char *closure #2 in DefaultLinkClient.getSuggestedActions(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v6 & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = *(a4 + 56) + 24 * v5;
  v8 = *(v7 + 8);
  v25 = *v7;
  v23 = *(v7 + 17);
  v24 = *(v7 + 16);
  v9 = specialized Array.count.getter();
  if (!v9)
  {
    return _swiftEmptyArrayStorage;
  }

  v10 = v9;
  v11 = v9 & ~(v9 >> 63);

  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v14 = *(a3 + 8 * v13 + 32);
      }

      v15 = v14;

      v16 = [v15 action];
      v17 = [v15 systemProtocol];
      v18 = outlined bridged method (pb) of @objc LNSuggestedAction.dialogParameters.getter(v15);
      if (!v18)
      {
        type metadata accessor for LNSuggestedActionDialogParameterKey(0);
        lazy protocol witness table accessor for type LNSuggestedActionDialogParameterKey and conformance LNSuggestedActionDialogParameterKey();
        v18 = Dictionary.init(dictionaryLiteral:)();
      }

      v19 = v18;

      v21 = _swiftEmptyArrayStorage[2];
      v20 = _swiftEmptyArrayStorage[3];
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
      }

      ++v13;
      _swiftEmptyArrayStorage[2] = v21 + 1;
      v22 = &_swiftEmptyArrayStorage[6 * v21];
      v22[4] = v25;
      v22[5] = v8;
      *(v22 + 48) = v24;
      *(v22 + 49) = v23;
      v22[7] = v16;
      v22[8] = v17;
      v22[9] = v19;
    }

    while (v10 != v13);

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

Swift::OpaquePointer_optional __swiftcall DefaultLinkClient.getAutoShortcutsByBundleIdentifier()()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  i = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_14_0();
  v4 = v3;
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4_3();
  v8 = (v6 - v7);
  __chkstk_darwin(v9);
  v11 = &v48 - v10;
  v12 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_14_0();
  v14 = v13;
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_5_2();
  v18 = v17 - v16;
  if (one-time initialization token for appIntentSuggestionsSignposter != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v19 = __swift_project_value_buffer(v12, static DefaultLinkClient.appIntentSuggestionsSignposter);
    v55 = v12;
    v56 = v14;
    (*(v14 + 16))(v18, v19, v12);
    static OSSignpostID.exclusive.getter();
    v20 = OSSignposter.logHandle.getter();
    v21 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_0, v20, v21, v23, "getAutoShortcutsByBundleIdentifier", "", v22, 2u);
      OUTLINED_FUNCTION_3_2();
    }

    (v4[2])(v8, v11, i);
    type metadata accessor for OSSignpostIntervalState();
    OUTLINED_FUNCTION_13_3();
    swift_allocObject();
    OUTLINED_FUNCTION_19_3();
    v24 = OSSignpostIntervalState.init(id:isOpen:)();
    v25 = OUTLINED_FUNCTION_14_3();
    v26(v25);
    v27 = [objc_opt_self() sharedPreferences];
    v28 = outlined bridged method (ob) of @objc AFPreferences.languageCode()(v27);
    v30 = v56;
    if (!v29)
    {
      goto LABEL_19;
    }

    v31 = v28;
    v32 = v29;
    if ((DefaultLinkClient.isSupportedDeviceAndLocale(siriLanguage:)(v28, v29) & 1) == 0)
    {

LABEL_19:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14LNAutoShortcutCGMd, &_sSaySo14LNAutoShortcutCGMR);
      Dictionary.init(dictionaryLiteral:)();
      goto LABEL_22;
    }

    v12 = v1;
    v33 = DefaultLinkClient.getLinkEnabledBundleIdentifiers()();
    if (!v33)
    {
      break;
    }

    v14 = v33;
    v51 = v31;
    v52 = v24;
    v53 = v32;
    v11 = 0;
    v1 = 0;
    v34 = v33 + 40;
    v54 = _swiftEmptyArrayStorage;
    v8 = *(v33 + 16);
    v4 = &_s10Foundation12NotificationV36_unconditionallyBridgeFromObjectiveCyACSo14NSNotificationCSgFZ_ptr;
    v50 = v33 + 40;
LABEL_8:
    for (i = (v34 + 16 * v11); ; i += 2)
    {
      if (v8 == v11)
      {

        _sSD_16uniquingKeysWithSDyxq_Gqd__n_q_q__q_tKXEtKcSTRd__x_q_t7ElementRtd__lufCSS_So16LNActionMetadataCSaySS_AFtGTt1g5096_s25SiriLinkSuggestionsPlugin07DefaultB6ClientC17getActionMetadata19forBundleIdentifierSDySSSo08E23I0CGSS_tKFA2G_AGtXEfU0_Tf1nc_nTm(v54, &_ss18_DictionaryStorageCySSSaySo14LNAutoShortcutCGGMd, &_ss18_DictionaryStorageCySSSaySo14LNAutoShortcutCGGMR, specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:));
        v30 = v56;
        goto LABEL_22;
      }

      if (v11 >= *(v14 + 16))
      {
        break;
      }

      v35 = *(i - 1);
      v36 = *i;
      v37 = objc_allocWithZone(LSApplicationRecord);
      swift_bridgeObjectRetain_n();
      v12 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v35, v36, 0);
      if (v12)
      {
        v38 = [objc_opt_self() sharedInstance];
        v48 = v38;
        v49 = String._bridgeToObjectiveC()();
        v39 = [v38 autoShortcutsForApplicationRecord:v12 localeIdentifier:v49];

        type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNAutoShortcut, LNAutoShortcut_ptr);
        v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v54 = v44;
        }

        v41 = v54[2];
        v40 = v54[3];
        v12 = (v41 + 1);
        if (v41 >= v40 >> 1)
        {
          OUTLINED_FUNCTION_19_2(v40);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v54 = v45;
        }

        ++v11;
        v42 = v54;
        v54[2] = v12;
        v43 = &v42[3 * v41];
        v43[4] = v35;
        v43[5] = v36;
        v34 = v50;
        v43[6] = v49;
        goto LABEL_8;
      }

      ++v11;
    }

    __break(1u);
LABEL_24:
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v30 = v56;
LABEL_22:
  OUTLINED_FUNCTION_17_3();
  $defer #1 () in DefaultLinkClient.getAutoShortcutsByBundleIdentifier()();

  (*(v30 + 8))(v18, v55);
  OUTLINED_FUNCTION_48();
  result.value._rawValue = v46;
  result.is_nil = v47;
  return result;
}

uint64_t DefaultLinkClient.isSupportedDeviceAndLocale(siriLanguage:)(uint64_t a1, uint64_t a2)
{
  if (!AFShouldRunAsrOnServerForUOD())
  {
    if (!specialized Set.contains(_:)(a1, a2, *(v2 + 40)) || !AFDeviceSupportsFullSiriUOD())
    {
      if (one-time initialization token for linkSuggestions != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.linkSuggestions);
      v6 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v6, v13))
      {
        v10 = 0;
        goto LABEL_20;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v6, v13, "Device/locale not supported by hybrid or UOD, not donating App Shortcut phrases for SiriHelp", v14, 2u);
      v10 = 0;
      goto LABEL_17;
    }

    if (one-time initialization token for linkSuggestions != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.linkSuggestions);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "Device/locale supported by full UOD, donating App Shortcut phrases for SiriHelp";
      goto LABEL_6;
    }

LABEL_18:
    v10 = 1;
    goto LABEL_20;
  }

  if (one-time initialization token for linkSuggestions != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.linkSuggestions);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v6, v7))
  {
    goto LABEL_18;
  }

  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = "Device/locale supported by hybrid, donating App Shortcut phrases for SiriHelp";
LABEL_6:
  _os_log_impl(&dword_0, v6, v7, v9, v8, 2u);
  v10 = 1;
LABEL_17:

LABEL_20:

  return v10;
}

void DefaultLinkClient.getAutoShortcutsFor(bundleIdentifier:)()
{
  OUTLINED_FUNCTION_50();
  v38 = v1;
  v3 = v2;
  v4 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_14_0();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4_3();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_6_3();
  v12 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_14_0();
  v14 = v13;
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_5_2();
  v18 = v17 - v16;
  if (one-time initialization token for appIntentSuggestionsSignposter != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v19 = __swift_project_value_buffer(v12, static DefaultLinkClient.appIntentSuggestionsSignposter);
  (*(v14 + 16))(v18, v19, v12);

  static OSSignpostID.exclusive.getter();
  v20 = OSSignposter.logHandle.getter();
  v21 = static os_signpost_type_t.begin.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    OUTLINED_FUNCTION_11_2();
    v22 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_3();
    v23 = swift_slowAlloc();
    v39 = v23;
    *v22 = 136315138;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v3, &v39);
    v24 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v20, v21, v24, "getAutoShortcutsForBundle", "BundleId: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    OUTLINED_FUNCTION_3_2();

    OUTLINED_FUNCTION_3_2();
  }

  (*(v6 + 16))(v10, v0, v4);
  type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_13_3();
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  (*(v6 + 8))(v0, v4);
  v25 = [objc_opt_self() sharedPreferences];
  v26 = outlined bridged method (ob) of @objc AFPreferences.languageCode()(v25);
  if (v27)
  {
    if ((DefaultLinkClient.isSupportedDeviceAndLocale(siriLanguage:)(v26, v27) & 1) != 0 && (v28 = objc_allocWithZone(LSApplicationRecord), , v29 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v38, v3, 0), (v32 = v29) != 0))
    {
      v33 = [objc_opt_self() sharedInstance];
      v34 = String._bridgeToObjectiveC()();

      v35 = OUTLINED_FUNCTION_18_1();
      v37 = [v35 v36];

      type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNAutoShortcut, LNAutoShortcut_ptr);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
    }
  }

  $defer #1 () in DefaultLinkClient.getAutoShortcutsByBundleIdentifier()();

  v30 = OUTLINED_FUNCTION_15_2();
  v31(v30);
  OUTLINED_FUNCTION_48();
}

id DefaultLinkClient.getActionMetadata(forBundleIdentifier:withActionIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_14_0();
  v47 = v9;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_4_3();
  v46 = v11 - v12;
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_6_3();
  v14 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_14_0();
  v16 = v15;
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_5_2();
  v20 = (v19 - v18);
  if (one-time initialization token for appIntentSuggestionsSignposter != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v21 = __swift_project_value_buffer(v14, static DefaultLinkClient.appIntentSuggestionsSignposter);
  v50 = v16;
  v51 = v14;
  (*(v16 + 16))(v20, v21, v14);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();

  v49 = v20;
  v22 = OSSignposter.logHandle.getter();
  v23 = static os_signpost_type_t.begin.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v44 = v8;
    v24 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v24 = 136315394;
    v25 = OUTLINED_FUNCTION_14_3();
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v27);
    *(v24 + 12) = 2080;
    v52 = a3;
    v45 = a3;

    specialized MutableCollection<>.sort(by:)(&v52);
    if (v3)
    {

      __break(1u);
      return result;
    }

    v28 = Array.description.getter();
    v30 = v29;

    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v53);

    *(v24 + 14) = v31;
    v32 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v22, v23, v32, "getActionMetadata", "BundleId: %s, actionIdentifier - %s", v24, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_2();

    OUTLINED_FUNCTION_3_2();

    v8 = v44;
    a3 = v45;
  }

  else
  {
  }

  (*(v47 + 16))(v46, v4, v8);
  type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_13_3();
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  (*(v47 + 8))(v4, v8);
  v33 = *(a3 + 16);
  if (v33)
  {
    v53 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v34 = (a3 + 40);
    do
    {
      v35 = *(v34 - 1);
      v36 = *v34;
      objc_allocWithZone(LNFullyQualifiedActionIdentifier);

      @nonobjc LNFullyQualifiedActionIdentifier.init(actionIdentifier:bundleIdentifier:)(v35, v36, a1, a2);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v34 += 2;
      --v33;
    }

    while (v33);
  }

  v37 = *(v48 + 16);
  type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNFullyQualifiedActionIdentifier, LNFullyQualifiedActionIdentifier_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v53 = 0;
  v39 = [v37 actionsWithFullyQualifiedIdentifiers:isa error:&v53];

  v40 = v53;
  if (v39)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo16LNActionMetadataCGMd, &_sSDySSSo16LNActionMetadataCGMR);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    OUTLINED_FUNCTION_14_3();
    specialized Dictionary.subscript.getter();
    OUTLINED_FUNCTION_19_3();

    OUTLINED_FUNCTION_15_2();
  }

  else
  {
    v42 = v53;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v39 = v49;
  }

  $defer #1 () in DefaultLinkClient.getAutoShortcutsByBundleIdentifier()();

  (*(v50 + 8))(v49, v51);
  return v39;
}

void *DefaultLinkClient.getActionMetadata(forBundleIdentifier:)(unint64_t a1, uint64_t a2)
{
  v63 = a1;
  v60 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4_3();
  v59 = v5 - v6;
  __chkstk_darwin(v7);
  v9 = &v56 - v8;
  v10 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_14_0();
  v12 = v11;
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_5_2();
  v16 = v15 - v14;
  if (one-time initialization token for appIntentSuggestionsSignposter != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v17 = __swift_project_value_buffer(v10, static DefaultLinkClient.appIntentSuggestionsSignposter);
  v57 = v12;
  (*(v12 + 16))(v16, v17, v10);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();

  v62 = v16;
  v18 = OSSignposter.logHandle.getter();
  v19 = static os_signpost_type_t.begin.getter();

  v20 = OS_os_log.signpostsEnabled.getter();
  v58 = v10;
  if (v20)
  {
    OUTLINED_FUNCTION_11_2();
    v21 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_3();
    v22 = swift_slowAlloc();
    v64 = v22;
    *v21 = 136315138;
    v23 = OUTLINED_FUNCTION_14_3();
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v25);
    v26 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v18, v19, v26, "getActionMetadata", "BundleId: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    OUTLINED_FUNCTION_3_2();

    OUTLINED_FUNCTION_3_2();
  }

  (*(v3 + 16))(v59, v9, v60);
  type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_13_3();
  swift_allocObject();
  OUTLINED_FUNCTION_19_3();
  v27 = OSSignpostIntervalState.init(id:isOpen:)();
  v28 = OUTLINED_FUNCTION_15_2();
  v29(v28);
  OUTLINED_FUNCTION_14_3();
  v30 = String._bridgeToObjectiveC()();
  v64 = 0;
  v31 = OUTLINED_FUNCTION_18_1();
  v33 = [v31 v32];

  v34 = v64;
  v35 = v62;
  if (v33)
  {
    type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNActionMetadata, LNActionMetadata_ptr);
    v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v34;

    v38 = specialized Array.count.getter();
    if (v38)
    {
      v39 = v38;
      v64 = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38 & ~(v38 >> 63), 0);
      if (v39 < 0)
      {
        __break(1u);
      }

      v61 = v27;
      v40 = 0;
      v41 = v64;
      v63 = v36 & 0xC000000000000001;
      v42 = v36;
      v43 = v39;
      do
      {
        if (v63)
        {
          v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v44 = *(v36 + 8 * v40 + 32);
        }

        v45 = v44;
        v46 = [v44 identifier];
        v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = v48;

        v64 = v41;
        v51 = v41[2];
        v50 = v41[3];
        if (v51 >= v50 >> 1)
        {
          v53 = OUTLINED_FUNCTION_19_2(v50);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v53, v51 + 1, 1);
          v41 = v64;
        }

        ++v40;
        v41[2] = v51 + 1;
        v52 = &v41[3 * v51];
        v52[4] = v47;
        v52[5] = v49;
        v52[6] = v45;
        v36 = v42;
      }

      while (v43 != v40);

      v35 = v62;
    }

    else
    {

      v41 = _swiftEmptyArrayStorage;
    }

    v54 = _sSD_16uniquingKeysWithSDyxq_Gqd__n_q_q__q_tKXEtKcSTRd__x_q_t7ElementRtd__lufCSS_So16LNActionMetadataCSaySS_AFtGTt1g5096_s25SiriLinkSuggestionsPlugin07DefaultB6ClientC17getActionMetadata19forBundleIdentifierSDySSSo08E23I0CGSS_tKFA2G_AGtXEfU0_Tf1nc_nTm(v41, &_ss18_DictionaryStorageCySSSo16LNActionMetadataCGMd, &_ss18_DictionaryStorageCySSSo16LNActionMetadataCGMR, specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:));
    OUTLINED_FUNCTION_17_3();
    $defer #1 () in DefaultLinkClient.getAutoShortcutsByBundleIdentifier()();

    (*(v57 + 8))(v35, v58);
  }

  else
  {
    v54 = v64;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    OUTLINED_FUNCTION_17_3();
    $defer #1 () in DefaultLinkClient.getAutoShortcutsByBundleIdentifier()();

    (*(v57 + 8))(v35, v58);
  }

  return v54;
}

uint64_t DefaultLinkClient.getActionState(bundleIdentifier:actionIdentifiers:metadataForPolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 152) = a3;
  *(v4 + 160) = a4;

  return _swift_task_switch(DefaultLinkClient.getActionState(bundleIdentifier:actionIdentifiers:metadataForPolicy:), 0, 0);
}

uint64_t DefaultLinkClient.getActionState(bundleIdentifier:actionIdentifiers:metadataForPolicy:)()
{
  v1 = [objc_opt_self() policyWithActionMetadata:v0[20]];
  v0[10] = 0;
  v2 = [v1 connectionWithError:v0 + 10];
  v0[21] = v2;

  v3 = v0[10];
  if (v2)
  {
    v4 = v3;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v0[22] = isa;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = DefaultLinkClient.getActionState(bundleIdentifier:actionIdentifiers:metadataForPolicy:);
    v6 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDySSSo8NSNumberCGs5Error_pGMd, &_sSccySDySSSo8NSNumberCGs5Error_pGMR);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary?, @unowned NSError?) -> () with result type [String : NSNumber];
    v0[13] = &block_descriptor;
    v0[14] = v6;
    [v2 fetchStateForAppIntentIdentifiers:isa completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v7 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = DefaultLinkClient.getActionState(bundleIdentifier:actionIdentifiers:metadataForPolicy:);
  }

  else
  {
    v2 = DefaultLinkClient.getActionState(bundleIdentifier:actionIdentifiers:metadataForPolicy:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd, &_ss18_DictionaryStorageCySSSbGMR);
  v2 = static _DictionaryStorage.copy(original:)();
  v3 = 0;
  OUTLINED_FUNCTION_5_0();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  v27 = v9 + 64;
  if ((v5 & v4) != 0)
  {
    goto LABEL_2;
  }

LABEL_3:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    if (v3 >= v8)
    {
      break;
    }

    v12 = *(v1 + 64 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v6 = (v12 - 1) & v12;
      while (2)
      {
        v13 = v10 | (v3 << 6);
        v14 = (*(v1 + 48) + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        v17 = *(*(v1 + 56) + 8 * v13);

        v18 = [v17 BOOLValue];
        *(v27 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        v19 = (v2[6] + 16 * v13);
        *v19 = v16;
        v19[1] = v15;
        *(v2[7] + v13) = v18;
        v20 = v2[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (!v21)
        {
          v2[2] = v22;
          if (!v6)
          {
            goto LABEL_3;
          }

LABEL_2:
          v10 = __clz(__rbit64(v6));
          v6 &= v6 - 1;
          continue;
        }

        break;
      }

LABEL_15:
      __break(1u);
    }
  }

  v23 = *(v26 + 176);

  v24 = *(v26 + 8);

  return v24(v2);
}

uint64_t DefaultLinkClient.getActionState(bundleIdentifier:actionIdentifiers:metadataForPolicy:)(uint64_t a1)
{
  v2 = v1[22];
  v3 = v1[21];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

void DefaultLinkClient.getExamplePhraseTemplates(bundleIdentifier:actionIdentifier:)()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v73 = v3;
  p_ivar_base_size = v4;
  v71 = v6;
  v68 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_14_0();
  v8 = v7;
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4_3();
  v67 = v10 - v11;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_6_3();
  v13 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_14_0();
  v15 = v14;
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_5_2();
  v19 = v18 - v17;
  if (one-time initialization token for appIntentSuggestionsSignposter != -1)
  {
LABEL_53:
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v20 = __swift_project_value_buffer(v13, static DefaultLinkClient.appIntentSuggestionsSignposter);
  v66 = v13;
  (*(v15 + 2))(v19, v20, v13);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();

  v21 = OSSignposter.logHandle.getter();
  v22 = static os_signpost_type_t.begin.getter();

  v72 = v2;
  v70 = v15;
  v65 = v19;
  if (OS_os_log.signpostsEnabled.getter())
  {
    v23 = swift_slowAlloc();
    v74[0] = swift_slowAlloc();
    *v23 = 136315394;
    v24 = v71;
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, p_ivar_base_size, v74);
    *(v23 + 14) = OUTLINED_FUNCTION_12_2(v25);
    v26 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v21, v22, v26, "getExamplePhraseTemplates", "BundleId: %s, actionIdentifier - %s", v23, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_2();

    OUTLINED_FUNCTION_3_2();
  }

  else
  {

    v24 = v71;
  }

  (*(v8 + 16))(v67, v0, v68);
  type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_13_3();
  swift_allocObject();
  v67 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v8 + 8))(v0, v68);
  v27 = String._bridgeToObjectiveC()();
  v74[0] = 0;
  v28 = OUTLINED_FUNCTION_18_1();
  v13 = [v28 v29];

  v30 = v74[0];
  if (!v13)
  {
    v57 = v74[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for appIntentsSuggestions != -1)
    {
      OUTLINED_FUNCTION_4_0(&one-time initialization token for appIntentsSuggestions);
    }

    v58 = type metadata accessor for Logger();
    __swift_project_value_buffer(v58, static Logger.appIntentsSuggestions);
    OUTLINED_FUNCTION_19_3();

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v74[0] = swift_slowAlloc();
      *v61 = 136315394;
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, p_ivar_base_size, v74);
      *(v61 + 14) = OUTLINED_FUNCTION_12_2(v62);
      _os_log_impl(&dword_0, v59, v60, "error attempting to get phrase templates for bundleIdentifier - %s and actionIdentifier - %s", v61, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_2();

      OUTLINED_FUNCTION_3_2();
    }

    v63 = v65;
    v64 = v66;

    goto LABEL_48;
  }

  v69 = p_ivar_base_size;
  type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNExamplePhraseDescription, LNExamplePhraseDescription_ptr);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v74[0] = _swiftEmptyArrayStorage;
  v0 = specialized Array.count.getter(v19);
  v8 = 0;
  v2 = v19 & 0xFFFFFFFFFFFFFF8;
  p_ivar_base_size = &AutoShortcutsSuggestionsOwnerDefinitionFactory.ivar_base_size;
  while (v0 != v8)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_50;
      }

      v32 = *(v19 + 8 * v8 + 32);
    }

    v13 = v32;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v15 = [v32 parentIdentifier];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    if (v33 == v73 && v35 == v72)
    {
    }

    else
    {
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v37 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if ([v13 kind])
    {
LABEL_20:

      goto LABEL_22;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    OUTLINED_FUNCTION_15_2();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
LABEL_22:
    ++v8;
  }

  v38 = v74[0];
  v0 = specialized Array.count.getter(v74[0]);
  v13 = 0;
  p_ivar_base_size = 0;
  v2 = v38 & 0xC000000000000001;
  v19 = _swiftEmptyArrayStorage;
  while (v0 != v13)
  {
    if (v2)
    {
      v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v13 >= *(v38 + 16))
      {
        goto LABEL_52;
      }

      v39 = *(v38 + 8 * v13 + 32);
    }

    v15 = v39;
    v8 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_51;
    }

    v40 = outlined bridged method (pb) of @objc LNExamplePhraseDescription.phraseTemplate.getter(v39);
    v42 = v41;

    ++v13;
    if (v42)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v19 = v45;
      }

      v15 = *(v19 + 16);
      v43 = *(v19 + 24);
      if (v15 >= v43 >> 1)
      {
        OUTLINED_FUNCTION_19_2(v43);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v19 = v46;
      }

      *(v19 + 16) = v15 + 1;
      v44 = v19 + 16 * v15;
      *(v44 + 32) = v40;
      *(v44 + 40) = v42;
      v13 = v8;
    }
  }

  v48 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v47);
  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5Tm(v48, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5, specialized Sequence._copySequenceContents(initializing:));
  if (one-time initialization token for appIntentsSuggestions != -1)
  {
    OUTLINED_FUNCTION_4_0(&one-time initialization token for appIntentsSuggestions);
  }

  v49 = type metadata accessor for Logger();
  __swift_project_value_buffer(v49, static Logger.appIntentsSuggestions);

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();

  v15 = v70;
  if (os_log_type_enabled(v50, v51))
  {
    OUTLINED_FUNCTION_9_3();
    v52 = swift_slowAlloc();
    v74[0] = swift_slowAlloc();
    *v52 = 136315650;
    *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v69, v74);
    *(v52 + 12) = 2080;
    *(v52 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v72, v74);
    *(v52 + 22) = 2080;
    Array.description.getter();

    v53 = OUTLINED_FUNCTION_17_3();
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, v55);

    *(v52 + 24) = v56;
    _os_log_impl(&dword_0, v50, v51, "bundleIdentifier - %s with action identifier - %s got examplePhraseTemplates - %s", v52, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_2();

    OUTLINED_FUNCTION_3_2();
  }

  else
  {
  }

  v63 = v65;
  v64 = v66;
LABEL_48:
  $defer #1 () in DefaultLinkClient.getAutoShortcutsByBundleIdentifier()();

  (*(v15 + 1))(v63, v64);
  OUTLINED_FUNCTION_48();
}

void $defer #1 () in DefaultLinkClient.getAutoShortcutsByBundleIdentifier()()
{
  OUTLINED_FUNCTION_50();
  v20 = v0;
  v1 = type metadata accessor for OSSignpostError();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_5_2();
  v7 = v6 - v5;
  v8 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_14_0();
  v10 = v9;
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_5_2();
  v14 = v13 - v12;
  v15 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v16 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v3 + 88))(v7, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v7, v1);
      v17 = "";
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v15, v16, v19, v20, v17, v18, 2u);
    OUTLINED_FUNCTION_3_2();
  }

  (*(v10 + 8))(v14, v8);
  OUTLINED_FUNCTION_48();
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(uint64_t a1)
{
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    specialized Set._Variant.insert(_:)(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

void _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo16LNSystemProtocolC_SayAEGTt0g5(unint64_t a1)
{
  specialized Array.count.getter();
  type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNSystemProtocol, LNSystemProtocol_ptr);
  lazy protocol witness table accessor for type LNSystemProtocol and conformance NSObject();
  v5[1] = Set.init(minimumCapacity:)();
  v2 = specialized Array.count.getter(a1);
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_15_2();
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    specialized Set._Variant.insert(_:)(v5, v4);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5Tm(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  a2(*(a1 + 16), 0);
  OUTLINED_FUNCTION_16_2();
  v6 = a3();
  outlined consume of [String : Any].Iterator._Variant(v8);
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufC25SiriLinkSuggestionsPlugin013AutoShortcutsD22OwnerDefinitionFactoryC0F39ShortcutCandidateSuggestionConfiguratorC_SD6ValuesVySSAH_GTt0g5(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo14LNAutoShortcutC_Tt1g5Tm(*(a1 + 16), 0);
  OUTLINED_FUNCTION_16_2();
  v7 = specialized Sequence._copySequenceContents(initializing:)(v4, v5, v6, a1);
  outlined consume of [String : Any].Iterator._Variant(v9);
  if (v7 != v3)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v1;
}

uint64_t DefaultLinkClient.deinit()
{

  return v0;
}

uint64_t DefaultLinkClient.__deallocating_deinit()
{
  DefaultLinkClient.deinit();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t protocol witness for LinkClient.getActionState(bundleIdentifier:actionIdentifiers:metadataForPolicy:) in conformance DefaultLinkClient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = protocol witness for LinkClient.getActionState(bundleIdentifier:actionIdentifiers:metadataForPolicy:) in conformance DefaultLinkClient;

  return DefaultLinkClient.getActionState(bundleIdentifier:actionIdentifiers:metadataForPolicy:)(v7, v8, a3, a4);
}

uint64_t protocol witness for LinkClient.getActionState(bundleIdentifier:actionIdentifiers:metadataForPolicy:) in conformance DefaultLinkClient(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

id @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

id @nonobjc LNFullyQualifiedActionIdentifier.init(actionIdentifier:bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = String._bridgeToObjectiveC()();

  v6 = String._bridgeToObjectiveC()();

  v7 = [v4 initWithActionIdentifier:v5 bundleIdentifier:v6];

  return v7;
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo14LNAutoShortcutC_Tt0g5(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNAutoShortcut, LNAutoShortcut_ptr);
      result = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)) = v1;
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC22IntelligenceFlowShared16RetrievedContextV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC25SiriLinkSuggestionsPlugin0I23SuggestedActionsRequestV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 24);
  return v4;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo14LNAutoShortcutC_Tt1g5Tm(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *result;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v91, *result, a3);
LABEL_102:
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t outlined bridged method (ob) of @objc AFPreferences.languageCode()(void *a1)
{
  v2 = [a1 languageCode];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc LNExamplePhraseDescription.phraseTemplate.getter(void *a1)
{
  v1 = [a1 phraseTemplate];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v15 << 9) | (8 * v16)));
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      ++v11;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = *(a4 + 48) + 24 * (v16 | (v15 << 6));
      v19 = *v17;
      v18 = *(v17 + 8);
      v20 = *(v17 + 16);
      LOBYTE(v17) = *(v17 + 17);
      *v11 = v19;
      *(v11 + 8) = v18;
      *(v11 + 16) = v20;
      *(v11 + 17) = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 24;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type [LNAutoShortcut] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [LNAutoShortcut] and conformance [A];
  if (!lazy protocol witness table cache variable for type [LNAutoShortcut] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo14LNAutoShortcutCGMd, &_sSaySo14LNAutoShortcutCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [LNAutoShortcut] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LNSystemProtocol and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type LNSystemProtocol and conformance NSObject;
  if (!lazy protocol witness table cache variable for type LNSystemProtocol and conformance NSObject)
  {
    type metadata accessor for NSTextCheckingResult(255, &lazy cache variable for type metadata for LNSystemProtocol, LNSystemProtocol_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LNSystemProtocol and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LNSuggestedActionDialogParameterKey and conformance LNSuggestedActionDialogParameterKey()
{
  result = lazy protocol witness table cache variable for type LNSuggestedActionDialogParameterKey and conformance LNSuggestedActionDialogParameterKey;
  if (!lazy protocol witness table cache variable for type LNSuggestedActionDialogParameterKey and conformance LNSuggestedActionDialogParameterKey)
  {
    type metadata accessor for LNSuggestedActionDialogParameterKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LNSuggestedActionDialogParameterKey and conformance LNSuggestedActionDialogParameterKey);
  }

  return result;
}

void OUTLINED_FUNCTION_5_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

unint64_t OUTLINED_FUNCTION_12_2(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2080;
  v5 = *(v3 - 112);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v2, (v3 - 96));
}

BOOL OUTLINED_FUNCTION_24_0()
{

  return os_log_type_enabled(v0, v1);
}

void LinkSuggestedAction.init(request:suggestedAction:)(id a1@<X3>, uint64_t a2@<X0>, uint64_t a3@<X1>, __int16 a4@<W2>, uint64_t a5@<X8>)
{
  v10 = [a1 action];
  v11 = [a1 systemProtocol];
  v12 = outlined bridged method (pb) of @objc LNSuggestedAction.dialogParameters.getter(a1);
  if (!v12)
  {
    type metadata accessor for LNSuggestedActionDialogParameterKey(0);
    lazy protocol witness table accessor for type LNSuggestedActionDialogParameterKey and conformance LNSuggestedActionDialogParameterKey();
    v12 = Dictionary.init(dictionaryLiteral:)();
  }

  v13 = v12;

  *a5 = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4 & 1;
  *(a5 + 17) = HIBYTE(a4) & 1;
  *(a5 + 24) = v10;
  *(a5 + 32) = v11;
  *(a5 + 40) = v13;
}

uint64_t LinkSuggestedAction.request.getter()
{
  v1 = *v0;

  return v1;
}

void *LinkSuggestedAction.rawDialogParmaters.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (v2)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    result = specialized Dictionary.startIndex.getter(v1);
    v6 = result;
    v7 = 0;
    v8 = v1 + 64;
    v28 = v4;
    v29 = v2;
    v27 = v1 + 72;
    v30 = v1 + 64;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v1 + 36) != v4)
      {
        goto LABEL_25;
      }

      v32 = v7;
      v33 = v4;
      v31 = v5;
      v10 = (*(v1 + 56) + 16 * v6);
      v11 = v10[1];
      v35 = *v10;
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
      v14 = v1;
      v15 = _swiftEmptyArrayStorage[2];
      v16 = _swiftEmptyArrayStorage[3];

      if (v15 >= v16 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v15 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      v17 = &_swiftEmptyArrayStorage[4 * v15];
      v17[4] = v34;
      v17[5] = v13;
      v17[6] = v35;
      v17[7] = v11;
      v18 = 1 << *(v14 + 32);
      if (v6 >= v18)
      {
        goto LABEL_26;
      }

      v8 = v30;
      v19 = *(v30 + 8 * v9);
      if ((v19 & (1 << v6)) == 0)
      {
        goto LABEL_27;
      }

      v1 = v14;
      if (*(v14 + 36) != v33)
      {
        goto LABEL_28;
      }

      v20 = v19 & (-2 << (v6 & 0x3F));
      if (v20)
      {
        v18 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v21 = v29;
      }

      else
      {
        v22 = v9 << 6;
        v23 = v9 + 1;
        v24 = (v27 + 8 * v9);
        v21 = v29;
        while (v23 < (v18 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = outlined consume of [LNSuggestedActionDialogParameterKey : String].Index._Variant(v6, v33, v31 & 1);
            v18 = __clz(__rbit64(v25)) + v22;
            goto LABEL_19;
          }
        }

        result = outlined consume of [LNSuggestedActionDialogParameterKey : String].Index._Variant(v6, v33, v31 & 1);
      }

LABEL_19:
      v5 = 0;
      v7 = v32 + 1;
      v6 = v18;
      v4 = v28;
      if (v32 + 1 == v21)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_20:

    return _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SSSaySS_SStGTt0g5(_swiftEmptyArrayStorage);
  }

  return result;
}

uint64_t LinkSuggestedAction.iconSystemImageName.getter()
{
  v1 = *(v0 + 40);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(v1 + 56) + 16 * v2);

  return v4;
}

SiriLinkSuggestionsPlugin::LinkSuggestedAction::CodingKeys_optional __swiftcall LinkSuggestedAction.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v3 = stringValue._countAndFlagsBits == 0x74736575716572 && stringValue._object == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_1_3(0x74736575716572, 0xE700000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = countAndFlagsBits == 0x6E6F69746361 && object == 0xE600000000000000;
    if (v5 || (OUTLINED_FUNCTION_1_3(0x6E6F69746361, 0xE600000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v6 = OUTLINED_FUNCTION_2_2();
      v8 = countAndFlagsBits == v6 && object == v7;
      if (v8 || (OUTLINED_FUNCTION_1_3(v6, v7) & 1) != 0)
      {

        return 2;
      }

      else if (countAndFlagsBits == 0xD000000000000010 && 0x8000000000042930 == object)
      {

        return 3;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_1_3(0xD000000000000010, 0x8000000000042930);

        if (v10)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

Swift::Int LinkSuggestedAction.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t LinkSuggestedAction.CodingKeys.stringValue.getter(char a1)
{
  result = 0x74736575716572;
  switch(a1)
  {
    case 1:
      result = 0x6E6F69746361;
      break;
    case 2:
      result = OUTLINED_FUNCTION_2_2();
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LinkSuggestedAction.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  LinkSuggestedAction.CodingKeys.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

SiriLinkSuggestionsPlugin::LinkSuggestedAction::CodingKeys_optional protocol witness for CodingKey.init(stringValue:) in conformance LinkSuggestedAction.CodingKeys@<W0>(uint64_t a1@<X0>, SiriLinkSuggestionsPlugin::LinkSuggestedAction::CodingKeys_optional *a2@<X8>)
{
  result.value = LinkSuggestedAction.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LinkSuggestedAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LinkSuggestedAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LinkSuggestedAction.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy25SiriLinkSuggestionsPlugin0E15SuggestedActionV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy25SiriLinkSuggestionsPlugin0E15SuggestedActionV10CodingKeysOGMR);
  OUTLINED_FUNCTION_14_0();
  __chkstk_darwin(v4);
  v6 = (&v21 - v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = lazy protocol witness table accessor for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v7;
  v34 = 0;
  lazy protocol witness table accessor for type LinkSuggestedActionsRequest and conformance LinkSuggestedActionsRequest();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v28;
  v8 = v29;
  v10 = v30;
  v11 = v31;
  v12 = _s25SiriLinkSuggestionsPlugin0B15SuggestedActionV6decode33_A45247CBCD3FCD1A5B59037132DD4F4ELL4type4from3keyxxm_s22KeyedDecodingContainerVyq_Gq_tKSo8NSObjectCRbzSo8NSCodingRzs9CodingKeyR_r0_lFZSo8LNActionC_AC0W4KeysOTtt2g5Tm(v6, 1, &lazy cache variable for type metadata for LNAction, LNAction_ptr);
  v22 = v11;
  v23 = v9;
  v24 = v8;
  v33 = v10;
  v25 = v12;
  v13 = _s25SiriLinkSuggestionsPlugin0B15SuggestedActionV6decode33_A45247CBCD3FCD1A5B59037132DD4F4ELL4type4from3keyxxm_s22KeyedDecodingContainerVyq_Gq_tKSo8NSObjectCRbzSo8NSCodingRzs9CodingKeyR_r0_lFZSo8LNActionC_AC0W4KeysOTtt2g5Tm(v6, 2, &lazy cache variable for type metadata for LNSystemProtocol, LNSystemProtocol_ptr);
  LOBYTE(v28) = 3;
  v14 = static CodableWrapper.decodeDictionary<A, B>(forType:forKey:container:)();
  if (v22)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  LinkSuggestedAction.init(request:action:systemProtocol:rawDialogParameters:)(v23, v24, v16 | v33, v25, v13, v14, v32);
  v17 = OUTLINED_FUNCTION_0_7();
  v18(v17);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v19 = v32[1];
  v20 = v27;
  *v27 = v32[0];
  v20[1] = v19;
  v20[2] = v32[2];
  return result;
}

uint64_t *_s25SiriLinkSuggestionsPlugin0B15SuggestedActionV6decode33_A45247CBCD3FCD1A5B59037132DD4F4ELL4type4from3keyxxm_s22KeyedDecodingContainerVyq_Gq_tKSo8NSObjectCRbzSo8NSCodingRzs9CodingKeyR_r0_lFZSo8LNActionC_AC0W4KeysOTtt2g5Tm(uint64_t *a1, char a2, unint64_t *a3, void *a4)
{
  v7 = type metadata accessor for NSTextCheckingResult(0, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy25SiriLinkSuggestionsPlugin0E15SuggestedActionV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy25SiriLinkSuggestionsPlugin0E15SuggestedActionV10CodingKeysOGMR);
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (!v4)
  {
    type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, NSKeyedUnarchiver_ptr);
    v8 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    a1 = v8;
    if (!v8)
    {
      lazy protocol witness table accessor for type LinkSuggestedAction.CodingError and conformance LinkSuggestedAction.CodingError();
      swift_allocError();
      a1 = v10;
      *v10 = v7;
      v10[4] = &type metadata for LinkSuggestedAction.CodingKeys;
      v10[5] = lazy protocol witness table accessor for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys();
      *(a1 + 8) = a2;
      swift_willThrow();
    }

    outlined consume of Data._Representation(v11, v12);
  }

  return a1;
}

uint64_t LinkSuggestedAction.init(request:action:systemProtocol:rawDialogParameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = a5;
  v33 = HIBYTE(a3);
  v9 = a3 & 1;
  v43 = a3 & 1;
  v10 = *(a6 + 16);
  if (v10)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    result = specialized Dictionary.startIndex.getter(a6);
    v14 = result;
    v15 = 0;
    v16 = a6 + 64;
    v38 = v12;
    v39 = v10;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a6 + 32))
    {
      v17 = v14 >> 6;
      if ((*(v16 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a6 + 36) != v12)
      {
        goto LABEL_25;
      }

      v40 = v13;
      v18 = (*(a6 + 56) + 16 * v14);
      v19 = v18[1];
      v41 = v12;
      v42 = *v18;

      v20 = String._bridgeToObjectiveC()();

      v22 = _swiftEmptyArrayStorage[2];
      v21 = _swiftEmptyArrayStorage[3];
      if (v22 >= v21 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v22 + 1;
      v23 = &_swiftEmptyArrayStorage[3 * v22];
      v23[4] = v20;
      v23[5] = v42;
      v23[6] = v19;
      v24 = 1 << *(a6 + 32);
      if (v14 >= v24)
      {
        goto LABEL_26;
      }

      v16 = a6 + 64;
      v25 = *(a6 + 64 + 8 * v17);
      if ((v25 & (1 << v14)) == 0)
      {
        goto LABEL_27;
      }

      if (*(a6 + 36) != v41)
      {
        goto LABEL_28;
      }

      v26 = v25 & (-2 << (v14 & 0x3F));
      if (v26)
      {
        v24 = __clz(__rbit64(v26)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = v17 << 6;
        v28 = v17 + 1;
        v29 = (a6 + 72 + 8 * v17);
        while (v28 < (v24 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = outlined consume of [LNSuggestedActionDialogParameterKey : String].Index._Variant(v14, v41, v40 & 1);
            v24 = __clz(__rbit64(v30)) + v27;
            goto LABEL_19;
          }
        }

        result = outlined consume of [LNSuggestedActionDialogParameterKey : String].Index._Variant(v14, v41, v40 & 1);
      }

LABEL_19:
      v13 = 0;
      ++v15;
      v14 = v24;
      v12 = v38;
      if (v15 == v39)
      {

        v9 = v43;
        v8 = a5;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_22:
    result = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSo35LNSuggestedActionDialogParameterKeya_SSSayAF_SStGTt0g5(_swiftEmptyArrayStorage);
    *a7 = a1;
    *(a7 + 8) = a2;
    *(a7 + 16) = v9;
    *(a7 + 17) = v33 & 1;
    *(a7 + 24) = a4;
    *(a7 + 32) = v8;
    *(a7 + 40) = result;
  }

  return result;
}

uint64_t LinkSuggestedAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy25SiriLinkSuggestionsPlugin0E15SuggestedActionV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy25SiriLinkSuggestionsPlugin0E15SuggestedActionV10CodingKeysOGMR);
  OUTLINED_FUNCTION_14_0();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *v3;
  v14 = *(v3 + 8);
  v15 = 0;
  lazy protocol witness table accessor for type LinkSuggestedActionsRequest and conformance LinkSuggestedActionsRequest();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v7 + 8))(v10, v5);
  }

  _s25SiriLinkSuggestionsPlugin0B15SuggestedActionV6encode33_A45247CBCD3FCD1A5B59037132DD4F4ELL_4into3keyyx_s22KeyedEncodingContainerVyq_Gzq_tKs9CodingKeyR_r0_lFZSo8LNActionC_AC0T4KeysOTt2g5Tm(*(v3 + 3), v10, 1);
  _s25SiriLinkSuggestionsPlugin0B15SuggestedActionV6encode33_A45247CBCD3FCD1A5B59037132DD4F4ELL_4into3keyyx_s22KeyedEncodingContainerVyq_Gzq_tKs9CodingKeyR_r0_lFZSo8LNActionC_AC0T4KeysOTt2g5Tm(*(v3 + 4), v10, 2);
  LOBYTE(v13) = 3;
  v11 = LinkSuggestedAction.rawDialogParmaters.getter();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v11);

  static CodableWrapper.encodeDictionary<A>(to:forKey:instance:)();
  (*(v7 + 8))(v10, v5);
}

uint64_t _s25SiriLinkSuggestionsPlugin0B15SuggestedActionV6encode33_A45247CBCD3FCD1A5B59037132DD4F4ELL_4into3keyyx_s22KeyedEncodingContainerVyq_Gzq_tKs9CodingKeyR_r0_lFZSo8LNActionC_AC0T4KeysOTt2g5Tm(uint64_t a1, uint64_t a2, char a3)
{
  v10[0] = 0;
  v3 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v10];
  v4 = v10[0];
  if (v3)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v10[0] = v5;
    v10[1] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy25SiriLinkSuggestionsPlugin0E15SuggestedActionV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy25SiriLinkSuggestionsPlugin0E15SuggestedActionV10CodingKeysOGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return outlined consume of Data._Representation(v5, v7);
  }

  else
  {
    v9 = v4;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

double protocol witness for Decodable.init(from:) in conformance LinkSuggestedAction@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  LinkSuggestedAction.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc LNSuggestedAction.dialogParameters.getter(void *a1)
{
  v1 = [a1 dialogParameters];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for LNSuggestedActionDialogParameterKey(0);
  lazy protocol witness table accessor for type LNSuggestedActionDialogParameterKey and conformance LNSuggestedActionDialogParameterKey();
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t lazy protocol witness table accessor for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LinkSuggestedActionsRequest and conformance LinkSuggestedActionsRequest()
{
  result = lazy protocol witness table cache variable for type LinkSuggestedActionsRequest and conformance LinkSuggestedActionsRequest;
  if (!lazy protocol witness table cache variable for type LinkSuggestedActionsRequest and conformance LinkSuggestedActionsRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkSuggestedActionsRequest and conformance LinkSuggestedActionsRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkSuggestedActionsRequest and conformance LinkSuggestedActionsRequest;
  if (!lazy protocol witness table cache variable for type LinkSuggestedActionsRequest and conformance LinkSuggestedActionsRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkSuggestedActionsRequest and conformance LinkSuggestedActionsRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkSuggestedActionsRequest and conformance LinkSuggestedActionsRequest;
  if (!lazy protocol witness table cache variable for type LinkSuggestedActionsRequest and conformance LinkSuggestedActionsRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkSuggestedActionsRequest and conformance LinkSuggestedActionsRequest);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LinkSuggestedAction(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LinkSuggestedAction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LinkSuggestedAction.CodingError(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LinkSuggestedAction.CodingError(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LinkSuggestedAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LinkSuggestedAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x23A34);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LinkSuggestedAction.CodingError and conformance LinkSuggestedAction.CodingError()
{
  result = lazy protocol witness table cache variable for type LinkSuggestedAction.CodingError and conformance LinkSuggestedAction.CodingError;
  if (!lazy protocol witness table cache variable for type LinkSuggestedAction.CodingError and conformance LinkSuggestedAction.CodingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkSuggestedAction.CodingError and conformance LinkSuggestedAction.CodingError);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  if (v5)
  {
    OUTLINED_FUNCTION_15();
    (*(v7 + 16))(a3, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v6);
}

void *specialized Collection.first.getter(uint64_t a1)
{
  result = specialized Dictionary.startIndex.getter(a1);
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == (1 << *(a1 + 32)))
  {
    return 0;
  }

  else
  {
    return specialized Dictionary.subscript.getter(&v5, result, v3, 0, a1);
  }
}

uint64_t static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:)()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v1;
  v4 = v3;
  v6 = v5[3];
  v7 = v5[4];
  v8 = __swift_project_boxed_opaque_existential_1(v5, v6);
  v9 = v4[3];
  v10 = v4[4];
  v11 = __swift_project_boxed_opaque_existential_1(v4, v9);
  OUTLINED_FUNCTION_6_4(&async function pointer to specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:));
  v17 = v12;
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_19_4(v13);
  *v14 = v15;
  v14[1] = static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:);

  return v17(v8, v11, v2, v0, v6, v9, v7, v10);
}

uint64_t static AppIntentsSuggestionsOwnerDefinitionFactory.getDialogProvider(linkClient:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return specialized static AppIntentsSuggestionsOwnerDefinitionFactory.getDialogProvider(linkClient:)(v4, v1, v2, v3);
}

void static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:)()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_6_4(&async function pointer to specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_19_4(v3);
  *v4 = v5;
  v4[1] = static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:);
  OUTLINED_FUNCTION_45();

  __asm { BR              X8 }
}

uint64_t static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:)()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_13();
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_13_4();

  return v5(v2);
}

uint64_t closure #1 in static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(closure #1 in static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:), 0, 0);
}

uint64_t closure #1 in static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:)()
{
  OUTLINED_FUNCTION_8();
  static AppIntentsSuggestionsOwnerDefinitionFactory.handleDialog(dialogProperties:dialogProvider:)(*(v0 + 24), *(v0 + 32), *(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

void static AppIntentsSuggestionsOwnerDefinitionFactory.handleDialog(dialogProperties:dialogProvider:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for BehaviorAfterSpeaking();
  OUTLINED_FUNCTION_3_3();
  v72 = v7;
  v73 = v6;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_5_2();
  v74 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
  __chkstk_darwin(v10 - 8);
  v68 = &v65 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14TemplatingTextVSgMd, &_s11SiriKitFlow14TemplatingTextVSgMR);
  __chkstk_darwin(v12 - 8);
  v14 = &v65 - v13;
  v70 = type metadata accessor for TemplatingText();
  OUTLINED_FUNCTION_3_3();
  v67 = v15;
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_5_2();
  v69 = v18 - v17;
  v19 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_3_3();
  v21 = v20;
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_5_2();
  v25 = v24 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DialogProperties.appIntentAction.getter(v81);
  v84 = v81[0];
  v85 = v81[1];
  v86 = v82;
  v87 = v83;
  if (!*(&v81[0] + 1))
  {
    a3[3] = &type metadata for String;
    *a3 = 0;
    a3[1] = 0xE000000000000000;
    return;
  }

  v71 = a3;
  v26 = *(&v82 + 1);
  type metadata accessor for ViewContext();
  v80 = ViewContext.__allocating_init()();
  (*(*a2 + 104))(v75, &v80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit14DialogCallback_pMd, &_s18SiriSuggestionsKit14DialogCallback_pMR);
  v27 = swift_dynamicCast();
  p_ivar_base_size = (&AutoShortcutsSuggestionsOwnerDefinitionFactory + 8);
  v66 = v26;
  if (!v27)
  {
    *&v78 = 0;
    v76 = 0u;
    v77 = 0u;
    outlined destroy of CoreSignalTypes?(&v76, &_s25SiriLinkSuggestionsPlugin23AppIntentDialogCallbackVSgMd, &_s25SiriLinkSuggestionsPlugin23AppIntentDialogCallbackVSgMR);
LABEL_10:
    if (*(p_ivar_base_size + 432) != -1)
    {
      OUTLINED_FUNCTION_4_0(&one-time initialization token for appIntentsSuggestions);
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.appIntentsSuggestions);
    v76 = v84;
    v77 = v85;
    v78 = v86;
    v79 = v87;
    outlined init with copy of SuggestionAppIntent(&v76, v75);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    outlined destroy of CoreSignalTypes?(v81, &_s25SiriLinkSuggestionsPlugin19SuggestionAppIntentVSgMd, &_s25SiriLinkSuggestionsPlugin19SuggestionAppIntentVSgMR);
    if (os_log_type_enabled(v36, v37))
    {
      v38 = p_ivar_base_size;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v75[0] = v40;
      *v39 = 136315138;
      v41 = [v26 identifier];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v75);

      *(v39 + 4) = v45;
      _os_log_impl(&dword_0, v36, v37, "Unable to get text from app intent for: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      OUTLINED_FUNCTION_11(v40);
      v46 = v39;
      p_ivar_base_size = v38;
      OUTLINED_FUNCTION_11(v46);
    }

    v34 = v71;
    v33 = _swiftEmptyArrayStorage;
    goto LABEL_15;
  }

  static Locale.current.getter();
  v29 = AppIntentDialogCallback.getText(dialogProperties:siriLocale:)(a1);
  v31 = v30;
  (*(v21 + 8))(v25, v19);
  outlined destroy of AppIntentDialogCallback(&v76);
  v32 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v32 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32)
  {

    p_ivar_base_size = &AutoShortcutsSuggestionsOwnerDefinitionFactory.ivar_base_size;
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow17TemplatingSectionVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow17TemplatingSectionVGMR);
  type metadata accessor for TemplatingSection();
  v33 = swift_allocObject();
  *(v33 + 1) = xmmword_3EFC0;
  TemplatingText.init(text:speakableTextOverride:)();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v70);
  TemplatingSection.init(id:content:caption:spokenOnly:)();

  v34 = v71;
  p_ivar_base_size = (&AutoShortcutsSuggestionsOwnerDefinitionFactory + 8);
LABEL_15:
  if (*(p_ivar_base_size + 432) != -1)
  {
    OUTLINED_FUNCTION_4_0(&one-time initialization token for appIntentsSuggestions);
  }

  v47 = type metadata accessor for Logger();
  __swift_project_value_buffer(v47, static Logger.appIntentsSuggestions);
  outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v81, &v76, &_s25SiriLinkSuggestionsPlugin19SuggestionAppIntentVSgMd, &_s25SiriLinkSuggestionsPlugin19SuggestionAppIntentVSgMR);

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();
  outlined destroy of CoreSignalTypes?(v81, &_s25SiriLinkSuggestionsPlugin19SuggestionAppIntentVSgMd, &_s25SiriLinkSuggestionsPlugin19SuggestionAppIntentVSgMR);

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *&v76 = v51;
    *v50 = 136315394;
    v52 = [v66 identifier];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, &v76);

    *(v50 + 4) = v56;
    *(v50 + 12) = 2080;
    v57 = v68;
    specialized Collection.first.getter(v33, &type metadata accessor for TemplatingSection, v68);

    v58 = type metadata accessor for TemplatingSection();
    if (__swift_getEnumTagSinglePayload(v57, 1, v58) == 1)
    {
      outlined destroy of CoreSignalTypes?(v57, &_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
      v59 = 0;
      v60 = 0xE000000000000000;
    }

    else
    {
      v61 = v69;
      TemplatingSection.content.getter();
      OUTLINED_FUNCTION_15();
      (*(v62 + 8))(v57, v58);
      v59 = TemplatingText.text.getter();
      v60 = v63;
      (*(v67 + 8))(v61, v70);
    }

    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v76);

    *(v50 + 14) = v64;
    _os_log_impl(&dword_0, v48, v49, "Using dialog for %s as: %s", v50, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11(v51);
    OUTLINED_FUNCTION_11(v50);

    v34 = v71;
  }

  else
  {
  }

  (*(v72 + 104))(v74, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v73);
  v34[3] = type metadata accessor for TemplatingResult();
  __swift_allocate_boxed_opaque_existential_1(v34);
  TemplatingResult.init(templateIdentifier:sections:behaviorAfterSpeaking:)();
  outlined destroy of CoreSignalTypes?(v81, &_s25SiriLinkSuggestionsPlugin19SuggestionAppIntentVSgMd, &_s25SiriLinkSuggestionsPlugin19SuggestionAppIntentVSgMR);
}

uint64_t closure #2 in static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v86 = a4;
  v88 = a2;
  v6 = type metadata accessor for VersionedInvocation();
  v7 = *(v6 - 8);
  v79 = v6;
  v80 = v7;
  __chkstk_darwin(v6);
  v71 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for InvocationType();
  v9 = *(v82 - 8);
  v10 = __chkstk_darwin(v82);
  v78 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v81 = &v71 - v13;
  v14 = __chkstk_darwin(v12);
  v76 = (&v71 - v15);
  v16 = __chkstk_darwin(v14);
  v85 = &v71 - v17;
  __chkstk_darwin(v16);
  v19 = &v71 - v18;
  v87 = type metadata accessor for IntentType();
  v20 = *(v87 - 1);
  __chkstk_darwin(v87);
  v84 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v83 = a1[5];
  v77 = __swift_project_boxed_opaque_existential_1(a1, v22);
  v23 = *(v22 - 8);
  __chkstk_darwin(v77);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AppIntentsSuggestionsOwnerDefinitionFactory.getAppIntentResolvers(linkClient:toolClient:)(a3, v86);
  static Resolvers.unionResolvers(type:resolvers:)();

  static AppIntentsSuggestionsOwnerDefinitionFactory.createIntentParameter()();
  v26 = v82;
  SuggestionDetailsBuilder.parameter(parameterName:resolver:resolveParam:)();

  outlined destroy of CoreSignalTypes?(v90, &_s18SiriSuggestionsKit8Resolver_pSgMd, &_s18SiriSuggestionsKit8Resolver_pSgMR);
  (*(v23 + 8))(v25, v22);
  v27 = a1[3];
  v88 = a1[5];
  v73 = a1;
  v86 = __swift_project_boxed_opaque_existential_1(a1, v27);
  v28 = *(v27 - 8);
  __chkstk_darwin(v86);
  v30 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AppIntentFilter.builder()();
  v31 = v84;
  dispatch thunk of AppIntentFilter.Builder.build()();

  v32 = v87;
  (*(v20 + 104))(v31, enum case for IntentType.appIntent(_:), v87);
  dispatch thunk of SuggestionDetailsBuilder.intentIdentifier(_:)();
  (*(v20 + 8))(v31, v32);
  (*(v28 + 8))(v30, v27);
  result = static InvocationType.allCases.getter();
  v34 = result;
  v35 = 0;
  v86 = *(result + 16);
  v88 = v9 + 16;
  v84 = (v9 + 88);
  LODWORD(v83) = enum case for InvocationType.assistantTurn(_:);
  v87 = (v9 + 8);
  v72 = (v9 + 96);
  v75 = (v9 + 32);
  v77 = _swiftEmptyArrayStorage;
  v74 = v9;
  while (v86 != v35)
  {
    if (v35 >= *(v34 + 16))
    {
      __break(1u);
      return result;
    }

    v36 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v37 = v34;
    v38 = v34 + v36;
    v39 = v26;
    v40 = *(v9 + 72);
    v41 = *(v9 + 16);
    v42 = v19;
    v41(v19, v38 + v40 * v35, v39);
    v43 = v85;
    v41(v85, v42, v39);
    v44 = (*(v9 + 88))(v43, v39);
    if (v44 == v83)
    {
      (*v72)(v43, v39);
      v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit18AssistantTurnStateO5state_AA18InvocationModalityO8modalitytMd, &_s18SiriSuggestionsKit18AssistantTurnStateO5state_AA18InvocationModalityO8modalitytMR) + 48);
      v47 = type metadata accessor for InvocationModality();
      (*(*(v47 - 8) + 8))(&v43[v46], v47);
      v48 = type metadata accessor for AssistantTurnState();
      (*(*(v48 - 8) + 8))(v43, v48);
      v49 = *v75;
      (*v75)(v76, v42, v39);
      v50 = v77;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v50;
      v90[0] = v50;
      v19 = v42;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50[2] + 1, 1);
        v52 = v90[0];
      }

      v34 = v37;
      v54 = v52[2];
      v53 = v52[3];
      if (v54 >= v53 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1);
        v52 = v90[0];
      }

      ++v35;
      v52[2] = v54 + 1;
      v77 = v52;
      v55 = v52 + v36 + v54 * v40;
      v26 = v82;
      result = v49(v55, v76, v82);
      v9 = v74;
    }

    else
    {
      v45 = *v87;
      (*v87)(v43, v39);
      result = v45(v42, v39);
      ++v35;
      v26 = v39;
      v19 = v42;
      v34 = v37;
    }
  }

  outlined init with copy of SiriHelpSuggestionDetailsBuilderExtension & SuggestionDetailsBuilder(v73, v90);
  v56 = v91;
  v84 = v92;
  v76 = __swift_project_boxed_opaque_existential_1(v90, v91);
  v85 = &v71;
  v83 = *(v56 - 1);
  __chkstk_darwin(v76);
  v75 = &v71 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v77[2];
  if (v58)
  {
    v73 = v56;
    v89 = _swiftEmptyArrayStorage;
    v59 = v77;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58, 0);
    v60 = v89;
    v61 = v59 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v62 = *(v9 + 72);
    v63 = *(v9 + 16);
    v86 = (v80 + 32);
    v64 = v71;
    do
    {
      v65 = v81;
      v66 = v82;
      v63(v81, v61, v82);
      v63(v78, v65, v66);
      VersionedInvocation.init(invocationType:versions:)();
      (*v87)(v65, v66);
      v89 = v60;
      v68 = v60[2];
      v67 = v60[3];
      if (v68 >= v67 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1);
        v60 = v89;
      }

      v60[2] = v68 + 1;
      (*(v80 + 32))(v60 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v68, v64, v79);
      v61 += v62;
      --v58;
    }

    while (v58);

    v9 = v74;
    v26 = v82;
    v56 = v73;
  }

  else
  {

    v60 = _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit19VersionedInvocationVGMd, "0<");
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_3EFC0;
  (*(v9 + 104))(v81, enum case for InvocationType.siriHelp(_:), v26);
  VersionedInvocation.init(invocationType:versions:)();
  v89 = v60;
  specialized Array.append<A>(contentsOf:)(v69);
  v70 = v75;
  dispatch thunk of SuggestionDetailsBuilder.validForInvocationTypes(_:)();

  (*(v83 + 8))(v70, v56);
  return __swift_destroy_boxed_opaque_existential_1(v90);
}

uint64_t static AppIntentsSuggestionsOwnerDefinitionFactory.getAppIntentResolvers(linkClient:toolClient:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit8Resolver_pGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit8Resolver_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_3EFC0;
  _s25SiriLinkSuggestionsPlugin0B6Client_pWOcTm_0(a1, v9);
  _s25SiriLinkSuggestionsPlugin0B6Client_pWOcTm_0(a2, v8);
  v5 = type metadata accessor for MetaDataSourcedAppIntentResolver();
  swift_allocObject();
  v6 = MetaDataSourcedAppIntentResolver.init(linkClient:toolClient:)(v9, v8);
  *(v4 + 56) = v5;
  *(v4 + 64) = _s25SiriLinkSuggestionsPlugin32MetaDataSourcedAppIntentResolverCAC0aC3Kit0J0AAWlTm_0(&lazy protocol witness table cache variable for type MetaDataSourcedAppIntentResolver and conformance MetaDataSourcedAppIntentResolver, type metadata accessor for MetaDataSourcedAppIntentResolver, &protocol conformance descriptor for MetaDataSourcedAppIntentResolver);
  *(v4 + 32) = v6;
  return v4;
}

uint64_t static AppIntentsSuggestionsOwnerDefinitionFactory.createIntentParameter()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A14SuggestionsKit6IntentOAD0F9ParameterOGMd, &_s13SiriUtilities11TransformerVy0A14SuggestionsKit6IntentOAD0F9ParameterOGMR);
  __chkstk_darwin(v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyypypSgGMd, &_s13SiriUtilities11TransformerVyypypSgGMR);
  __chkstk_darwin(v2 - 8);
  *(swift_allocObject() + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  Transformer.init(transform:)();
  type metadata accessor for Intent();
  type metadata accessor for IntentParameter();
  Transformer.init(transform:)();
  type metadata accessor for ResolvableParameter();
  swift_allocObject();
  return ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:intentTransformer:)();
}

double closure #1 in static AppIntentsSuggestionsOwnerDefinitionFactory.createIntentParameter()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Any(a1, &v30);
  if (swift_dynamicCast())
  {
    v32[0] = v26;
    v32[1] = v27;
    v32[2] = v28;
    v32[3] = v29;
    v4 = [*(&v28 + 1) identifier];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    *&v26 = v5;
    *(&v26 + 1) = v7;
    v8._countAndFlagsBits = 95;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);

    v9._countAndFlagsBits = *(&v27 + 1);
    v9._object = v28;
    String.append(_:)(v9);

    v10._countAndFlagsBits = 95;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    v11._countAndFlagsBits = static AppIntentsSuggestionsOwnerDefinitionFactory.getParameterLoggingId(_:)(v32);
    String.append(_:)(v11);

    v12 = v26;
    *(a2 + 24) = &type metadata for String;
    outlined destroy of SuggestionAppIntent(v32);
    *a2 = v12;
  }

  else
  {
    if (one-time initialization token for appIntentsSuggestions != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.appIntentsSuggestions);
    outlined init with copy of Any(a1, v32);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136315138;
      outlined init with copy of Any(v32, &v26);
      outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(&v26, &v30, &_sypSgMd, &_sypSgMR);
      if (v31)
      {
        outlined init with take of Any(&v30, v24);
        outlined init with copy of Any(v24, v23);
        v19 = String.init<A>(describing:)();
        v21 = v20;
        __swift_destroy_boxed_opaque_existential_1(v24);
        outlined destroy of CoreSignalTypes?(&v26, &_sypSgMd, &_sypSgMR);
      }

      else
      {
        outlined destroy of CoreSignalTypes?(&v26, &_sypSgMd, &_sypSgMR);
        v21 = 0xE300000000000000;
        v19 = 7104878;
      }

      __swift_destroy_boxed_opaque_existential_1(v32);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v25);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_0, v15, v16, "Unable to get parameter of type AppIntentAction. found value of type: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v32);
    }

    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t static AppIntentsSuggestionsOwnerDefinitionFactory.getParameterLoggingId(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v48 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v5 = specialized Dictionary.startIndex.getter(v1);
    v6 = 0;
    v7 = v1 + 64;
    v33 = v2;
    v34 = v4;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v1 + 36) != v4)
      {
        goto LABEL_25;
      }

      v9 = v3;
      v10 = (*(v1 + 48) + 16 * v5);
      v12 = *v10;
      v11 = v10[1];
      outlined init with copy of ActionParameter(*(v1 + 56) + 48 * v5, v47);
      v42[0] = v12;
      v42[1] = v11;
      v43 = v47[0];
      v44 = v47[1];
      v45 = v47[2];
      v40 = v12;
      v41 = v11;
      swift_bridgeObjectRetain_n();
      v13._countAndFlagsBits = 61;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
      outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v42, v38, &_sSS3key_25SiriLinkSuggestionsPlugin15ActionParameterV5valuetMd, &_sSS3key_25SiriLinkSuggestionsPlugin15ActionParameterV5valuetMR);

      outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v39, v37, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
      outlined destroy of ActionParameter(v39);
      outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v37, v35, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
      if (v36)
      {
        outlined destroy of CoreSignalTypes?(v35, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
        outlined destroy of CoreSignalTypes?(v37, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
        v14 = 0xE300000000000000;
        v15 = 7628147;
      }

      else
      {
        outlined destroy of CoreSignalTypes?(v37, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
        v14 = 0xE600000000000000;
        v15 = 0x7465732D6F6ELL;
      }

      v16 = v14;
      String.append(_:)(*&v15);

      v17 = v40;
      v18 = v41;
      outlined destroy of CoreSignalTypes?(v42, &_sSS3key_25SiriLinkSuggestionsPlugin15ActionParameterV5valuetMd, &_sSS3key_25SiriLinkSuggestionsPlugin15ActionParameterV5valuetMR);
      v3 = v9;
      v48 = v9;
      v19 = *(v9 + 2);
      v20 = *(v3 + 3);
      if (v19 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v19 + 1, 1);
        v3 = v48;
      }

      *(v3 + 2) = v19 + 1;
      v21 = &v3[16 * v19];
      *(v21 + 4) = v17;
      *(v21 + 5) = v18;
      v22 = 1 << *(v1 + 32);
      if (v5 >= v22)
      {
        goto LABEL_26;
      }

      v7 = v1 + 64;
      v23 = *(v1 + 64 + 8 * v8);
      if ((v23 & (1 << v5)) == 0)
      {
        goto LABEL_27;
      }

      v4 = v34;
      if (*(v1 + 36) != v34)
      {
        goto LABEL_28;
      }

      v24 = v23 & (-2 << (v5 & 0x3F));
      if (v24)
      {
        v22 = __clz(__rbit64(v24)) | v5 & 0x7FFFFFFFFFFFFFC0;
        v25 = v33;
      }

      else
      {
        v26 = v8 << 6;
        v27 = v8 + 1;
        v25 = v33;
        v28 = (v1 + 72 + 8 * v8);
        while (v27 < (v22 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            v22 = __clz(__rbit64(v29)) + v26;
            break;
          }
        }
      }

      ++v6;
      v5 = v22;
      if (v6 == v25)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_22:
    v46 = v3;

    specialized MutableCollection<>.sort(by:)(&v46);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v31 = BidirectionalCollection<>.joined(separator:)();

    return v31;
  }

  return result;
}