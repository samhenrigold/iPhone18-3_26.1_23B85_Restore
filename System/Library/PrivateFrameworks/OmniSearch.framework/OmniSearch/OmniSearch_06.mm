uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array.count.getter, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array.count.getter, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1);
}

{
  result = OUTLINED_FUNCTION_40_6(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1, v5);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v7 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v7)
  {
    *(v9 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array.count.getter, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array.count.getter, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array.count.getter, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, void, uint64_t))
{
  v7 = a2();
  v8 = (a2)(*v3);
  v9 = __OFADD__(v8, v7);
  result = v8 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 1)
  {
LABEL_6:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void AnswerSynthesisController.isHallucination(result:query:inputDocuments:locale:)()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v4 = v3;
  v34 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  type metadata accessor for SearchResultItem(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_36();
  v15 = v14 - v13;
  v16 = type metadata accessor for Answer(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_36();
  v20 = v19 - v18;
  OUTLINED_FUNCTION_13_4();
  _s10OmniSearch0B6ResultVWOcTm_1(v11, v15);
  if (swift_getEnumCaseMultiPayload() == 28)
  {
    OUTLINED_FUNCTION_114_2();
    outlined init with take of ResultsDialog(v15, v20);
    v21 = (v20 + *(v16 + 44));
    v22 = v21[1];
    if (v22)
    {
      v31 = v9;
      v32 = v4;
      v23 = v2;
      v24 = *v21;
      v26 = v0[36];
      v25 = v0[37];
      OUTLINED_FUNCTION_218(v0 + 33, v26);
      v27 = *(v20 + 40);
      v33 = v20;
      v28 = *(v25 + 16);

      v28(v31, v7, v34, v24, v22, v27, 0, v32, v23, v26, v25);

      OUTLINED_FUNCTION_7_5();
      v30 = v33;
    }

    else
    {
      OUTLINED_FUNCTION_7_5();
      v30 = v20;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_6();
    v30 = v15;
  }

  _s10OmniSearch0B6ResultVWOhTm_0(v30, v29);
  OUTLINED_FUNCTION_148();
}

void AnswerSynthesisController.answersMitigatingHallucination(result:query:inputDocuments:locale:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v96 = v2;
  v97 = v3;
  v88 = v4;
  v6 = v5;
  v95 = v7;
  v9 = v8;
  v90 = v10;
  v92 = type metadata accessor for AnswerSynthesisResult(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36();
  v91 = (v13 - v12);
  v14 = OUTLINED_FUNCTION_78_0();
  v15 = type metadata accessor for SearchResult(v14);
  v16 = OUTLINED_FUNCTION_21(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_109();
  v87 = v17 - v18;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_4();
  v94 = v20;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_4();
  v86 = v22;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7_4();
  v93 = v24;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v25);
  v27 = &v85 - v26;
  v28 = 0;
  v29 = *(v6 + 16);
  v98 = MEMORY[0x277D84F90];
  while (v29 != v28)
  {
    OUTLINED_FUNCTION_2_4();
    _s10OmniSearch0B6ResultVWOcTm_1(v30, v27);
    SearchResultItem.type.getter(v102);
    if ((*(*v1 + 352))(v102))
    {
      OUTLINED_FUNCTION_1_7();
      outlined init with take of ResultsDialog(v27, v93);
      v32 = v98;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v99[0] = v32;
      v89 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = OUTLINED_FUNCTION_74_4();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v34, v35, v36);
        v32 = v99[0];
      }

      v38 = *(v32 + 16);
      v37 = *(v32 + 24);
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        v41 = OUTLINED_FUNCTION_26_3(v37);
        v98 = v42;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v41, v42, 1);
        v39 = v98;
        v32 = v99[0];
      }

      ++v28;
      *(v32 + 16) = v39;
      v98 = v32;
      OUTLINED_FUNCTION_1_7();
      outlined init with take of ResultsDialog(v93, v40);
      v9 = v89;
    }

    else
    {
      OUTLINED_FUNCTION_3_6();
      _s10OmniSearch0B6ResultVWOhTm_0(v27, v31);
      ++v28;
    }
  }

  OUTLINED_FUNCTION_10_5();
  v43 = v91;
  _s10OmniSearch0B6ResultVWOcTm_1(v9, v91);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v48 = 0;
      v49 = *v43;
      v50 = v43[1];
      v89 = v43[2];
      v93 = v49[2];
      v91 = MEMORY[0x277D84F90];
      v51 = v88;
      while (v93 != v48)
      {
        if (v48 >= v49[2])
        {
          __break(1u);
          OUTLINED_FUNCTION_142_0(&one-time initialization token for stextension);
          v71 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_200(v71, static Logging.stextension);
          v72 = v89;

          v73 = Logger.logObject.getter();
          static os_log_type_t.error.getter();

          if (OUTLINED_FUNCTION_259())
          {
            OUTLINED_FUNCTION_28_3();
            v74 = swift_slowAlloc();
            OUTLINED_FUNCTION_9_4();
            v75 = swift_slowAlloc();
            v99[0] = v75;
            *v74 = 136642819;
            getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            OUTLINED_FUNCTION_244();

            *(v74 + 4) = v72;
            OUTLINED_FUNCTION_56_4();
            _os_log_impl(v76, v77, v78, v79, v80, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v75);
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
            v81 = OUTLINED_FUNCTION_19_5();
            MEMORY[0x25F8A1050](v81);
          }

          else
          {
          }

          v83 = v90;
          v90[1] = 0;
          v83[2] = 0;
          *v83 = v49;
          goto LABEL_39;
        }

        OUTLINED_FUNCTION_2_4();
        v52 = v94;
        _s10OmniSearch0B6ResultVWOcTm_1(v53, v94);
        if ((*(*v1 + 472))(v52, v95, v96, v98, v51, v97))
        {
          OUTLINED_FUNCTION_3_6();
          _s10OmniSearch0B6ResultVWOhTm_0(v52, v54);
          ++v48;
        }

        else
        {
          OUTLINED_FUNCTION_1_7();
          outlined init with take of ResultsDialog(v52, v87);
          v55 = v91;
          v56 = swift_isUniquelyReferenced_nonNull_native();
          v99[0] = v55;
          if ((v56 & 1) == 0)
          {
            v57 = OUTLINED_FUNCTION_74_4();
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v57, v58, v59);
            v55 = v99[0];
          }

          v61 = *(v55 + 16);
          v60 = *(v55 + 24);
          if (v61 >= v60 >> 1)
          {
            v63 = OUTLINED_FUNCTION_26_3(v60);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v63, v61 + 1, 1);
            v55 = v99[0];
          }

          ++v48;
          *(v55 + 16) = v61 + 1;
          v91 = v55;
          OUTLINED_FUNCTION_1_7();
          outlined init with take of ResultsDialog(v87, v62);
          v51 = v88;
        }
      }

      if (v91[2])
      {
        outlined init with copy of ChatMessageRecord(v1 + 264, v99);
        v64 = v100;
        v65 = v101;
        v66 = v51;
        v94 = __swift_project_boxed_opaque_existential_1(v99, v100);
        v67 = v89;
        if (v89)
        {
          v68 = v50;
        }

        else
        {
          v68 = 0;
        }

        if (v89)
        {
          v69 = v89;
        }

        else
        {
          v69 = 0xE000000000000000;
        }

        v70 = *(v65 + 16);

        v84 = v97;
        v97 = v68;
        v70(v95, v96, v98, v68, v69, MEMORY[0x277D84F90], 1, v66, v84, v64, v65);

        __swift_destroy_boxed_opaque_existential_1Tm(v99);
        v82 = v90;
        *v90 = v91;
        v82[1] = v50;
        v82[2] = v67;
      }

      else
      {
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_7();
      v45 = v86;
      outlined init with take of ResultsDialog(v43, v86);
      v46 = (*(*v1 + 472))(v45, v95, v96, v98, v88, v97);

      OUTLINED_FUNCTION_3_6();
      _s10OmniSearch0B6ResultVWOhTm_0(v45, v47);
      if ((v46 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_39:
    swift_storeEnumTagMultiPayload();
    goto LABEL_40;
  }

LABEL_12:
  OUTLINED_FUNCTION_10_5();
  _s10OmniSearch0B6ResultVWOcTm_1(v9, v90);
LABEL_40:
  OUTLINED_FUNCTION_148();
}

void AnswerSynthesisController.convertOnScreenTextToSearchResults(_:)()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_228();
  v1 = type metadata accessor for SpotlightRankingItem();
  OUTLINED_FUNCTION_14();
  v94 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  v77 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v7 = OUTLINED_FUNCTION_114(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_109();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v75 - v12;
  v91 = type metadata accessor for SearchResultItem(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_36();
  v17 = v16 - v15;
  v18 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_14();
  v90 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_109();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7_4();
  v89 = v25;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v26);
  v28 = &v75 - v27;
  v88 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_14();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_36();
  v87 = v33 - v32;
  OUTLINED_FUNCTION_78_0();
  v92 = type metadata accessor for OnScreen();
  MEMORY[0x28223BE20](v0);
  v36 = &v75 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v0)
  {
    v0 = MEMORY[0x277D84F90];
  }

  if (*(v0 + 16))
  {
    v95 = *(v0 + 16);
    v85 = v18;
    v86 = v17;
    v79 = (v34 + 16);
    v80 = (v30 + 8);
    v76 = (v94 + 32);
    v78 = (v34 + 8);
    v37 = MEMORY[0x277D84F90];

    v75 = v0;
    v38 = v0 + 40;
    v39 = v92;
    v83 = v10;
    v84 = v23;
    v81 = v36;
    v82 = v28;
    do
    {
      v93 = v38;
      v94 = v37;

      v40 = v87;
      UUID.init()();
      UUID.uuidString.getter();
      (*v80)(v40, v88);
      OUTLINED_FUNCTION_64_0();
      OnScreen.init(id:text:)();
      v41 = v86;
      (*v79)(v86, v36, v39);
      swift_storeEnumTagMultiPayload();
      v42 = objc_allocWithZone(MEMORY[0x277CC34B0]);
      v43 = [v42 init];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v44, v45, v46, v1);
      v47 = v85;
      v48 = v89;
      *(v89 + v85[7]) = MEMORY[0x277D84F90];
      v49 = (v48 + v47[10]);
      *v49 = 0;
      v49[1] = 0;
      OUTLINED_FUNCTION_13_4();
      _s10OmniSearch0B6ResultVWOcTm_1(v41, v48);
      type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
      lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
      v50 = v43;
      v51 = v83;
      CodableNSSecureCoding.init(wrappedValue:)();
      outlined init with copy of ToolDatabaseProtocol?(v13, v51, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      if (__swift_getEnumTagSinglePayload(v51, 1, v1) == 1)
      {
        v52 = OUTLINED_FUNCTION_232();
        outlined destroy of IntentApplication?(v52, v53, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        v103 = 1;
        v102 = 1;
        v101 = 1;
        v100 = 1;
        v99 = 1;
        v98 = 1;
        v97 = 1;
        v96 = 1;
        OUTLINED_FUNCTION_28_1();
        SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)();

        outlined destroy of IntentApplication?(v13, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_8_6();
        _s10OmniSearch0B6ResultVWOhTm_0(v41, v54);
      }

      else
      {

        outlined destroy of IntentApplication?(v13, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_8_6();
        _s10OmniSearch0B6ResultVWOhTm_0(v41, v55);
        v56 = *v76;
        v57 = v77;
        v58 = OUTLINED_FUNCTION_153();
        v56(v58);
        (v56)(v48 + v47[5], v57, v1);
      }

      *(v48 + v47[8]) = 0;
      *(v48 + v47[9]) = 1;
      OUTLINED_FUNCTION_1_7();
      v59 = v82;
      outlined init with take of ResultsDialog(v48, v82);
      OUTLINED_FUNCTION_2_4();
      v60 = v84;
      _s10OmniSearch0B6ResultVWOcTm_1(v59, v84);
      v37 = v94;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v92;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v66 = OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v66, v67, v68, v37);
        v37 = v69;
      }

      v63 = *(v37 + 16);
      v62 = *(v37 + 24);
      if (v63 >= v62 >> 1)
      {
        OUTLINED_FUNCTION_26_3(v62);
        OUTLINED_FUNCTION_117();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v70, v71, v72, v73);
        v37 = v74;
      }

      OUTLINED_FUNCTION_3_6();
      _s10OmniSearch0B6ResultVWOhTm_0(v59, v64);
      v36 = v81;
      (*v78)(v81, v39);
      *(v37 + 16) = v63 + 1;
      OUTLINED_FUNCTION_42_5();
      OUTLINED_FUNCTION_1_7();
      outlined init with take of ResultsDialog(v60, v65);
      v38 = v93 + 16;
      --v95;
    }

    while (v95);
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
  }

  Array<A>.dictionaryByKey()(v37);

  OUTLINED_FUNCTION_148();
}

Swift::OpaquePointer_optional __swiftcall AnswerSynthesisController.compareAndBackfill(for:with:)(Swift::OpaquePointer a1, Swift::OpaquePointer with)
{
  OUTLINED_FUNCTION_155();
  v105 = v2;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B16PropertyResponseVSgMd, &_s10OmniSearch0B16PropertyResponseVSgMR);
  OUTLINED_FUNCTION_114(v7);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  v109 = &v102 - v9;
  v10 = OUTLINED_FUNCTION_78_0();
  v11 = type metadata accessor for SearchPropertyResponse(v10);
  OUTLINED_FUNCTION_14();
  v115 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_109();
  v106 = v14 - v15;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v16);
  v18 = &v102 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v102 - v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7_4();
  v108 = v23;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v24);
  v26 = &v102 - v25;
  v114 = type metadata accessor for SearchPropertyRequest(0);
  MEMORY[0x28223BE20](v114);
  v122 = &v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v6;
  v113 = *(v6 + 16);
  if (v113)
  {
    v112 = *(v4 + 16);
    if (!v112)
    {
LABEL_64:
      v32 = 0;
      goto LABEL_65;
    }

    v103 = v18;
    v28 = 0;
    v118 = 0;
    OUTLINED_FUNCTION_131_1();
    v111 = v4 + v30;
    v110 = *(v31 + 72);
    v32 = MEMORY[0x277D84F90];
    v107 = v26;
LABEL_4:
    v104 = v29;
    while (1)
    {
      v33 = v28;
      OUTLINED_FUNCTION_102_2();
      v34 = v122;
      _s10OmniSearch0B6ResultVWOcTm_1(v35, v122);
      v36 = v114;
      EntityProperty.wrappedValue.getter();
      v38 = v125;
      v37 = v126;
      v128 = v125;
      v129 = v126;
      EntityProperty.wrappedValue.getter();
      v39 = v125;
      v40 = v34 + *(v36 + 32);
      v41 = *(v40 + 32);
      v121 = v32;
      v119 = v40;
      if (v41 != 255 && (v41 & 1) != 0)
      {
        v38 = *v40;
        v42 = *(v40 + 8);
        outlined copy of SearchPropertyRequest.GroupInfo(*v40, v42, *(v40 + 16), *(v40 + 24), 1);

        v128 = v38;
        v129 = v42;
        v37 = v42;
      }

      v120 = v33 + 1;
      v43 = (*(v115 + 80) + 32) & ~*(v115 + 80);
      v123 = *(v115 + 72);
      v117 = v43;
      v44 = v116 + v43;
      v45 = v113;
      if (v113)
      {
        break;
      }

LABEL_44:
      if (*(v119 + 32) == 255)
      {
        OUTLINED_FUNCTION_133();
        (*(v65 + 256))(&v125);
        OUTLINED_FUNCTION_218(&v125, v127);
        v124 = v39;
        v66 = OUTLINED_FUNCTION_232();
        v67(v66);
        v32 = v121;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v120;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v73 = OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v73, v74, v75, v32);
          v32 = v76;
        }

        v70 = *(v32 + 16);
        v69 = *(v32 + 24);
        if (v70 >= v69 >> 1)
        {
          v77 = OUTLINED_FUNCTION_26_3(v69);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v77, v70 + 1, 1, v32);
          v32 = v78;
        }

        OUTLINED_FUNCTION_222();
        OUTLINED_FUNCTION_100_2();
        outlined init with take of ResultsDialog(v106, v71);
        OUTLINED_FUNCTION_9_6();
        _s10OmniSearch0B6ResultVWOhTm_0(v122, v72);
        __swift_destroy_boxed_opaque_existential_1Tm(&v125);
      }

      else
      {
        OUTLINED_FUNCTION_9_6();
        _s10OmniSearch0B6ResultVWOhTm_0(v122, v57);

        v28 = v120;
        v32 = v121;
      }

LABEL_54:
      if (v28 == v112)
      {
        if (v104)
        {
          goto LABEL_65;
        }

        goto LABEL_64;
      }
    }

    while (1)
    {
      OUTLINED_FUNCTION_103_2();
      _s10OmniSearch0B6ResultVWOcTm_1(v44, v21);
      EntityProperty.wrappedValue.getter();
      if (v125 == v38 && v126 == v37)
      {
      }

      else
      {
        v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v47 & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      EntityProperty.wrappedValue.getter();
      v48 = 0xE600000000000000;
      v49 = 0x676E69727473;
      switch(v125)
      {
        case 1:
          v48 = 0xE400000000000000;
          v49 = 1702125924;
          break;
        case 2:
          v49 = 0x706D6F4365746164;
          v48 = 0xEE0073746E656E6FLL;
          break;
        case 3:
          v48 = 0xE800000000000000;
          v50 = 1634891108;
          goto LABEL_22;
        case 4:
          v49 = 0x6E6F73726570;
          break;
        case 5:
          v49 = 0x7265626D756ELL;
          break;
        case 6:
          v48 = 0xE500000000000000;
          v49 = 0x616964656DLL;
          break;
        case 7:
          v49 = 0x697461676976616ELL;
          v48 = 0xEA00000000006E6FLL;
          break;
        case 8:
          v48 = 0xE300000000000000;
          v49 = 7107189;
          break;
        case 9:
          v48 = 0xE800000000000000;
          v50 = 1633906540;
LABEL_22:
          v49 = v50 | 0x6E6F697400000000;
          break;
        default:
          break;
      }

      v51 = 0xE600000000000000;
      v52 = 0x676E69727473;
      switch(v39)
      {
        case 0:
          goto LABEL_38;
        case 1:
          v51 = 0xE400000000000000;
          v52 = 1702125924;
          goto LABEL_38;
        case 2:
          v52 = 0x706D6F4365746164;
          v51 = 0xEE0073746E656E6FLL;
          goto LABEL_38;
        case 3:
          v51 = 0xE800000000000000;
          v53 = 1634891108;
          goto LABEL_33;
        case 4:
          v52 = 0x6E6F73726570;
          goto LABEL_38;
        case 5:
          v52 = 0x7265626D756ELL;
          goto LABEL_38;
        case 6:
          v51 = 0xE500000000000000;
          v52 = 0x616964656DLL;
          goto LABEL_38;
        case 7:
          v52 = 0x697461676976616ELL;
          v51 = 0xEA00000000006E6FLL;
          goto LABEL_38;
        case 8:
          v51 = 0xE300000000000000;
          v52 = 7107189;
          goto LABEL_38;
        case 9:
          v51 = 0xE800000000000000;
          v53 = 1633906540;
LABEL_33:
          v52 = v53 | 0x6E6F697400000000;
LABEL_38:
          if (v49 == v52 && v48 == v51)
          {

LABEL_47:
            v58 = v108;
            outlined init with take of ResultsDialog(v21, v108);
            v59 = v107;
            outlined init with take of ResultsDialog(v58, v107);
            v32 = v121;
            v60 = v39;
            v61 = v109;
            v62 = v118;
            specialized Sequence.first(where:)(v121, &v128, v60, v109);
            v118 = v62;
            if (__swift_getEnumTagSinglePayload(v61, 1, v11) != 1)
            {
              OUTLINED_FUNCTION_32_7();
              _s10OmniSearch0B6ResultVWOhTm_0(v59, v63);
              outlined destroy of IntentApplication?(v61, &_s10OmniSearch0B16PropertyResponseVSgMd, &_s10OmniSearch0B16PropertyResponseVSgMR);
              OUTLINED_FUNCTION_9_6();
              _s10OmniSearch0B6ResultVWOhTm_0(v122, v64);

              v28 = v120;
              goto LABEL_54;
            }

            outlined destroy of IntentApplication?(v61, &_s10OmniSearch0B16PropertyResponseVSgMd, &_s10OmniSearch0B16PropertyResponseVSgMR);
            OUTLINED_FUNCTION_103_2();
            _s10OmniSearch0B6ResultVWOcTm_1(v59, v103);
            v79 = swift_isUniquelyReferenced_nonNull_native();
            v28 = v120;
            if ((v79 & 1) == 0)
            {
              v85 = OUTLINED_FUNCTION_44();
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v85, v86, v87, v32);
              v32 = v88;
            }

            v81 = *(v32 + 16);
            v80 = *(v32 + 24);
            if (v81 >= v80 >> 1)
            {
              v89 = OUTLINED_FUNCTION_26_3(v80);
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v89, v81 + 1, 1, v32);
              v32 = v90;
            }

            OUTLINED_FUNCTION_32_7();
            _s10OmniSearch0B6ResultVWOhTm_0(v59, v82);
            OUTLINED_FUNCTION_222();
            OUTLINED_FUNCTION_100_2();
            outlined init with take of ResultsDialog(v103, v83);
            OUTLINED_FUNCTION_9_6();
            _s10OmniSearch0B6ResultVWOhTm_0(v122, v84);

            v29 = 1;
            if (v28 == v112)
            {
LABEL_65:
              if (one-time initialization token for answerSynthesis != -1)
              {
                OUTLINED_FUNCTION_0_5();
                swift_once();
              }

              v91 = type metadata accessor for Logger();
              OUTLINED_FUNCTION_200(v91, static Logging.answerSynthesis);

              v92 = Logger.logObject.getter();
              v93 = static os_log_type_t.info.getter();

              if (os_log_type_enabled(v92, v93))
              {
                OUTLINED_FUNCTION_28_3();
                v94 = swift_slowAlloc();
                OUTLINED_FUNCTION_9_4();
                v95 = swift_slowAlloc();
                v125 = v95;
                *v94 = 136642819;
                v128 = v32;

                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B16PropertyResponseVGSgMd, &_sSay10OmniSearch0B16PropertyResponseVGSgMR);
                String.init<A>(describing:)();
                v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

                *(v94 + 4) = v96;
                OUTLINED_FUNCTION_184_0(&dword_25D85C000, v92, v93, "Results after properties have been verified and backfilled: %{sensitive}s");
                __swift_destroy_boxed_opaque_existential_1Tm(v95);
                OUTLINED_FUNCTION_90();
                MEMORY[0x25F8A1050]();
                OUTLINED_FUNCTION_90();
                MEMORY[0x25F8A1050]();
              }

              goto LABEL_74;
            }

            goto LABEL_4;
          }

          v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v55)
          {
            goto LABEL_47;
          }

          break;
        default:
          JUMPOUT(0);
      }

LABEL_43:
      OUTLINED_FUNCTION_32_7();
      _s10OmniSearch0B6ResultVWOhTm_0(v21, v56);
      v44 += v123;
      if (!--v45)
      {
        goto LABEL_44;
      }
    }
  }

  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v97 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v97, static Logging.answerSynthesis);
  v92 = Logger.logObject.getter();
  v98 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v92, v98))
  {
    OUTLINED_FUNCTION_51_5();
    v99 = swift_slowAlloc();
    OUTLINED_FUNCTION_81_4(v99);
    OUTLINED_FUNCTION_174_0(&dword_25D85C000, v92, v98, "No properties fetched, returning nil");
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

LABEL_74:

  OUTLINED_FUNCTION_148();
  result.value._rawValue = v100;
  result.is_nil = v101;
  return result;
}

uint64_t AnswerSynthesisController.extractAnswer(query:)()
{
  OUTLINED_FUNCTION_48();
  v1[71] = v0;
  v1[70] = v2;
  v1[72] = *v0;
  v3 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  v1[73] = v3;
  OUTLINED_FUNCTION_21(v3);
  v1[74] = v4;
  v1[75] = OUTLINED_FUNCTION_199();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes31AnswerSynthesisResolutionResultOSgMd, &_s15OmniSearchTypes31AnswerSynthesisResolutionResultOSgMR);
  OUTLINED_FUNCTION_114(v5);
  v1[76] = OUTLINED_FUNCTION_199();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes34AnswerSynthesisExtractionCandidateOSgMd, &_s15OmniSearchTypes34AnswerSynthesisExtractionCandidateOSgMR);
  OUTLINED_FUNCTION_114(v6);
  v1[77] = OUTLINED_FUNCTION_160();
  v1[78] = swift_task_alloc();
  v7 = type metadata accessor for AnswerSynthesisExtractionCandidate();
  v1[79] = v7;
  OUTLINED_FUNCTION_21(v7);
  v1[80] = v8;
  v1[81] = OUTLINED_FUNCTION_160();
  v1[82] = swift_task_alloc();
  v9 = type metadata accessor for SearchResultItem(0);
  v1[83] = v9;
  OUTLINED_FUNCTION_114(v9);
  v1[84] = OUTLINED_FUNCTION_199();
  v10 = type metadata accessor for Answer(0);
  v1[85] = v10;
  OUTLINED_FUNCTION_114(v10);
  v1[86] = OUTLINED_FUNCTION_199();
  v11 = type metadata accessor for ResultsDialog(0);
  OUTLINED_FUNCTION_114(v11);
  v1[87] = OUTLINED_FUNCTION_160();
  v1[88] = swift_task_alloc();
  v12 = type metadata accessor for AnswerSynthesisRequestContext(0);
  v1[89] = v12;
  OUTLINED_FUNCTION_114(v12);
  v1[90] = OUTLINED_FUNCTION_199();
  Entity = type metadata accessor for PersonQueryEntity(0);
  v1[91] = Entity;
  OUTLINED_FUNCTION_21(Entity);
  v1[92] = v14;
  v1[93] = OUTLINED_FUNCTION_199();
  v15 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult();
  v1[94] = v15;
  OUTLINED_FUNCTION_21(v15);
  v1[95] = v16;
  v1[96] = OUTLINED_FUNCTION_199();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  OUTLINED_FUNCTION_114(v17);
  v1[97] = OUTLINED_FUNCTION_160();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  OUTLINED_FUNCTION_114(v18);
  v1[100] = OUTLINED_FUNCTION_160();
  v1[101] = swift_task_alloc();
  v19 = type metadata accessor for UserQuery(0);
  v1[102] = v19;
  OUTLINED_FUNCTION_114(v19);
  v1[103] = OUTLINED_FUNCTION_199();
  v20 = type metadata accessor for SearchResult(0);
  v1[104] = v20;
  OUTLINED_FUNCTION_21(v20);
  v1[105] = v21;
  v1[106] = OUTLINED_FUNCTION_160();
  v1[107] = swift_task_alloc();
  v1[108] = swift_task_alloc();
  v1[109] = swift_task_alloc();
  v1[110] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtSgMd, &_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtSgMR);
  OUTLINED_FUNCTION_114(v22);
  v1[111] = OUTLINED_FUNCTION_199();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtMd, &_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtMR);
  v1[112] = v23;
  OUTLINED_FUNCTION_21(v23);
  v1[113] = v24;
  v1[114] = OUTLINED_FUNCTION_160();
  v1[115] = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_21(v25);
  v1[116] = v26;
  v1[117] = OUTLINED_FUNCTION_160();
  v1[118] = swift_task_alloc();
  v1[119] = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultVSg7elementtMd, &_sSi6offset_10OmniSearch0C6ResultVSg7elementtMR);
  v1[120] = v27;
  OUTLINED_FUNCTION_114(v27);
  v1[121] = OUTLINED_FUNCTION_199();
  v28 = type metadata accessor for Locale();
  v1[122] = v28;
  OUTLINED_FUNCTION_21(v28);
  v1[123] = v29;
  v1[124] = OUTLINED_FUNCTION_160();
  v1[125] = swift_task_alloc();
  v30 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v30);
}

{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 1112) = v0;

  if (v0)
  {
  }

  else
  {
    *(v4 + 1120) = v3;
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v6);
}

{
  OUTLINED_FUNCTION_78();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 36);
  v0[141] = v0[140];
  v1 = swift_task_alloc();
  v0[142] = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_76_3(v1);

  return specialized AnswerResolvable.resolve(query:options:results:assistantLocale:)(v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1144) = v4;
  *(v2 + 1152) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v5);
}

{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1184) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v4);
}

{
  OUTLINED_FUNCTION_48();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_5_0(&one-time initialization token for shared);
  }

  *(v0 + 1192) = static ContextManager.shared;

  return MEMORY[0x2822009F8](AnswerSynthesisController.extractAnswer(query:));
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 1184);
  OUTLINED_FUNCTION_83_4();
  swift_beginAccess();
  MessageAccumulationContext.record(_:from:)(v1, 2);
  swift_endAccess();
  v2 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v2);
}

void AnswerSynthesisController.extractAnswer(query:)()
{
  v2 = v0[70];
  v3 = type metadata accessor for AnswerSynthesisQuery(0);
  v4 = *(v2 + v3[8]);
  v0[126] = v4;
  if (!*(v4 + 32))
  {
    v5 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
    static NSUserDefaults.fallbackLocale.getter(v5, v6, v7, v8, v9);
  }

  v10 = v0[125];
  v11 = v0[71];

  OUTLINED_FUNCTION_107();
  Locale.init(identifier:)();
  (*(*v11 + 344))(v10);
  outlined init with copy of ToolDatabaseProtocol?(v0[71] + 200, (v0 + 21), &_s10OmniSearch20ToolDatabaseProtocol_pSgMd, &_s10OmniSearch20ToolDatabaseProtocol_pSgMR);
  v164 = v4;
  if (v0[24])
  {
    v12 = v0 + 16;
    v173 = v0[120];
    v13 = v0[116];
    v170 = v0[111];
    v171 = v0[112];
    v14 = v0[80];
    v15 = v0[70];
    v175 = v0;
    outlined init with take of ResponseOverrideMatcherProtocol((v0 + 21), (v0 + 16));
    v162 = v3;
    v0 = *(v15 + v3[6]);
    v16 = swift_task_alloc();
    v163 = v12;
    *(v16 + 16) = v12;
    v169 = v0;
    v17 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay15OmniSearchTypes34AnswerSynthesisExtractionCandidateOG_0dE00E6ResultVSgs5NeverOTg5(partial apply for closure #1 in static AnswerSynthesisController.convertToSearchResult(extractionCandidates:toolDatabase:), v16, v0);

    v18 = 0;
    v168 = v14;
    v165 = MEMORY[0x277D84F90];
    v176 = v17;
    v19 = *(v17 + 16);
    while (1)
    {
      v20 = &_s10OmniSearch0B6ResultVSgMd;
      if (v19 == v18)
      {
        break;
      }

      if (v18 >= v176[2])
      {
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
LABEL_47:
        v120 = v0[96];
        v121 = v0[71];
        v0[132] = static MetricsLogger.shared;
        v122 = v0[11];
        v0[133] = v0[10];
        v0[134] = v122;
        OUTLINED_FUNCTION_133();
        (*(v123 + 192))();
        (*(*v121 + 536))(1, v170, v120);

        v0[64] = MEMORY[0x277D84FA0];
        if (one-time initialization token for oneself != -1)
        {
          swift_once();
        }

        v124 = static Person.oneself;
        EntityProperty.wrappedValue.getter();
        if (*v169)
        {
          v124 = v20;
          specialized Set.formUnion<A>(_:)(*v169);
        }

        outlined init with copy of ToolDatabaseProtocol?(v171 + v168, v0[100], &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
        type metadata accessor for StructuredQueryEntity(0);
        v125 = OUTLINED_FUNCTION_112_2();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v125, 1, v124);
        v127 = v0[100];
        if (EnumTagSinglePayload == 1)
        {
          outlined destroy of IntentApplication?(v0[100], &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
          goto LABEL_54;
        }

        EntityProperty.wrappedValue.getter();
        v128 = *v163;
        _s10OmniSearch0B6ResultVWOhTm_0(v127, type metadata accessor for StructuredQueryEntity);
        if (!v128)
        {
LABEL_54:

          v128 = MEMORY[0x277D84F90];
        }

        v129 = *(v128 + 16);
        if (v129)
        {
          OUTLINED_FUNCTION_131_1();
          v131 = v128 + v130;
          v133 = *(v132 + 72);
          do
          {
            _s10OmniSearch0B6ResultVWOcTm_1(v131, v0[93]);
            EntityProperty.wrappedValue.getter();
            if (v0[58])
            {

              v134 = OUTLINED_FUNCTION_141_0();
              outlined consume of Person?(v134, v135);
              EntityProperty.wrappedValue.getter();
              v136 = OUTLINED_FUNCTION_141_0();
              outlined consume of Person?(v136, v137);
              if (*v176)
              {
                specialized Set.formUnion<A>(_:)(*v176);
              }
            }

            else
            {
              outlined consume of Person?(0, v0[59]);
            }

            EntityProperty.wrappedValue.getter();
            if (v0[60])
            {

              v138 = OUTLINED_FUNCTION_141_0();
              outlined consume of Person?(v138, v139);
              EntityProperty.wrappedValue.getter();
              v140 = OUTLINED_FUNCTION_141_0();
              outlined consume of Person?(v140, v141);
              if (*v175)
              {
                specialized Set.formUnion<A>(_:)(*v175);
              }
            }

            else
            {
              outlined consume of Person?(0, v0[61]);
            }

            EntityProperty.wrappedValue.getter();
            if (v0[62])
            {

              v142 = OUTLINED_FUNCTION_141_0();
              outlined consume of Person?(v142, v143);
              EntityProperty.wrappedValue.getter();
              v144 = OUTLINED_FUNCTION_141_0();
              outlined consume of Person?(v144, v145);
              if (*v1)
              {
                specialized Set.formUnion<A>(_:)(*v1);
              }
            }

            else
            {
              outlined consume of Person?(0, v0[63]);
            }

            _s10OmniSearch0B6ResultVWOhTm_0(v0[93], type metadata accessor for PersonQueryEntity);
            v131 += v133;
            --v129;
          }

          while (v129);
        }

        if (one-time initialization token for search != -1)
        {
          swift_once();
        }

        v146 = type metadata accessor for Logger();
        v0[135] = v146;
        OUTLINED_FUNCTION_200(v146, static Logging.search);
        v147 = Logger.logObject.getter();
        v148 = static os_log_type_t.info.getter();
        v149 = OUTLINED_FUNCTION_20_3();
        if (os_log_type_enabled(v149, v150))
        {
          OUTLINED_FUNCTION_28_3();
          v151 = swift_slowAlloc();
          OUTLINED_FUNCTION_9_4();
          v177 = swift_slowAlloc();
          *v151 = 136315138;
          OUTLINED_FUNCTION_28_1();
          swift_beginAccess();

          Set.description.getter();

          OUTLINED_FUNCTION_179_0();
          v152 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(v151 + 4) = v152;
          OUTLINED_FUNCTION_184_0(&dword_25D85C000, v147, v148, "Fetching relationships for people names: %s", v161);
          __swift_destroy_boxed_opaque_existential_1Tm(v177);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
        }

        v153 = v0[71];
        OUTLINED_FUNCTION_28_1();
        swift_beginAccess();
        outlined init with copy of ToolDatabaseProtocol?(v153 + 152, (v0 + 26), &_s10OmniSearch17ECRClientProtocol_pSgMd, &_s10OmniSearch17ECRClientProtocol_pSgMR);
        if (v0[29])
        {
          outlined init with copy of ChatMessageRecord((v0 + 26), (v0 + 36));
          outlined destroy of IntentApplication?((v0 + 26), &_s10OmniSearch17ECRClientProtocol_pSgMd, &_s10OmniSearch17ECRClientProtocol_pSgMR);
          OUTLINED_FUNCTION_218(v0 + 36, v0[39]);
          OUTLINED_FUNCTION_28_1();
          swift_beginAccess();
          v0[136] = v0[64];

          v0[137] = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v154);
          v155 = swift_task_alloc();
          v0[138] = v155;
          *v155 = v0;
          v155[1] = AnswerSynthesisController.extractAnswer(query:);
          OUTLINED_FUNCTION_244();
          OUTLINED_FUNCTION_253();

          __asm { BRAA            X4, X16 }
        }

        outlined destroy of IntentApplication?((v0 + 26), &_s10OmniSearch17ECRClientProtocol_pSgMd, &_s10OmniSearch17ECRClientProtocol_pSgMR);
        v0[141] = 0;
        v158 = swift_task_alloc();
        v0[142] = v158;
        *v158 = v0;
        OUTLINED_FUNCTION_76_3(v158);
        OUTLINED_FUNCTION_253();

        __asm { BR              X5 }
      }

      v0 = v175;
      v1 = v175[121];
      v21 = v175[118];
      v22 = v175[104];
      OUTLINED_FUNCTION_79();
      v24 = v176 + v23 + *(v13 + 72) * v18;
      v25 = *(v173 + 48);
      *v1 = v18;
      outlined init with copy of ToolDatabaseProtocol?(v24, v1 + v25, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      outlined init with copy of ToolDatabaseProtocol?(v1 + v25, v21, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      v26 = OUTLINED_FUNCTION_65();
      if (__swift_getEnumTagSinglePayload(v26, v27, v22) == 1)
      {
        outlined destroy of IntentApplication?(v175[118], &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      }

      else
      {
        v20 = v175[111];
        v28 = v175[110];
        OUTLINED_FUNCTION_1_7();
        outlined init with take of ResultsDialog(v29, v28);
        v30 = *(v171 + 12);
        SearchResultItem.associatedValue.getter(v175 + 41);
        v31 = v175[44];
        v1 = v175[45];
        __swift_project_boxed_opaque_existential_1(v175 + 41, v31);
        v32 = (*(v1 + 32))(v31, v1);
        v34 = v33;
        __swift_destroy_boxed_opaque_existential_1Tm(v175 + 41);
        *v20 = v32;
        *(v170 + 8) = v34;
        if (v18 >= v169[2])
        {
          goto LABEL_82;
        }

        v35 = v175[111];
        v1 = v175[110];
        OUTLINED_FUNCTION_42_5();
        (*(v38 + 16))(v35 + v30, v37 + v36 + *(v38 + 72) * v18);
        OUTLINED_FUNCTION_3_6();
        _s10OmniSearch0B6ResultVWOhTm_0(v1, v39);
      }

      OUTLINED_FUNCTION_117();
      __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
      v44 = v175[111];
      outlined destroy of IntentApplication?(v175[121], &_sSi6offset_10OmniSearch0C6ResultVSg7elementtMd, &_sSi6offset_10OmniSearch0C6ResultVSg7elementtMR);
      OUTLINED_FUNCTION_38_5(v44);
      if (v45)
      {
        outlined destroy of IntentApplication?(v175[111], &_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtSgMd, &_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtSgMR);
        ++v18;
      }

      else
      {
        v0 = &_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtMd;
        outlined init with take of (AnswerSynthesisModelResult.AnswerResponse, SearchResult)(v175[111], v175[115], &_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtMd, &_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtMR);
        v46 = OUTLINED_FUNCTION_26_2();
        outlined init with take of (AnswerSynthesisModelResult.AnswerResponse, SearchResult)(v46, v47, &_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtMd, &_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtMR);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v55 = OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v55);
          v165 = v56;
        }

        v50 = *(v165 + 16);
        v49 = *(v165 + 24);
        if (v50 >= v49 >> 1)
        {
          v57 = OUTLINED_FUNCTION_22_5(v49);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v57);
          v165 = v58;
        }

        ++v18;
        *(v165 + 16) = v50 + 1;
        OUTLINED_FUNCTION_42_5();
        outlined init with take of (AnswerSynthesisModelResult.AnswerResponse, SearchResult)(v54, v52 + v51 + *(v53 + 72) * v50, &_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtMd, &_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtMR);
      }
    }

    v59 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOSaySS_AGtGTt0g5(v165);
    v60 = v59;
    v61 = v176[2];
    if (v61)
    {
      v172 = v59;
      v0 = v175;
      OUTLINED_FUNCTION_79();
      v63 = v176 + v62;
      v174 = *(v13 + 72);
      v64 = MEMORY[0x277D84F90];
      do
      {
        outlined init with copy of ToolDatabaseProtocol?(v63, v175[119], &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
        v65 = OUTLINED_FUNCTION_32_3();
        outlined init with take of (AnswerSynthesisModelResult.AnswerResponse, SearchResult)(v65, v66, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
        v67 = OUTLINED_FUNCTION_191_0();
        if (__swift_getEnumTagSinglePayload(v67, v68, v69) == 1)
        {
          outlined destroy of IntentApplication?(v175[117], &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
        }

        else
        {
          OUTLINED_FUNCTION_1_7();
          outlined init with take of ResultsDialog(v70, v71);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v72 = v64;
          }

          else
          {
            v78 = OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v78, v79, v80, v64);
            v72 = v81;
          }

          v74 = *(v72 + 16);
          v73 = *(v72 + 24);
          if (v74 >= v73 >> 1)
          {
            OUTLINED_FUNCTION_26_3(v73);
            OUTLINED_FUNCTION_235();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v82, v83, v84, v85);
            v72 = v86;
          }

          *(v72 + 16) = v74 + 1;
          OUTLINED_FUNCTION_79();
          v64 = v75;
          OUTLINED_FUNCTION_1_7();
          outlined init with take of ResultsDialog(v76, v77);
        }

        v63 += v174;
        --v61;
      }

      while (v61);

      v3 = v162;
      v60 = v172;
    }

    else
    {

      v64 = MEMORY[0x277D84F90];
      v3 = v162;
      v0 = v175;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v163);
  }

  else
  {
    outlined destroy of IntentApplication?((v0 + 21), &_s10OmniSearch20ToolDatabaseProtocol_pSgMd, &_s10OmniSearch20ToolDatabaseProtocol_pSgMR);
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v87 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v87, static Logging.answerSynthesis);
    v88 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v89 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v89, v90))
    {
      OUTLINED_FUNCTION_51_5();
      v91 = swift_slowAlloc();
      OUTLINED_FUNCTION_81_4(v91);
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v92, v93, v94, v95, v96, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v64 = MEMORY[0x277D84F90];
    v60 = Dictionary.init(dictionaryLiteral:)();
  }

  v169 = v0 + 65;
  v175 = v0 + 67;
  v176 = v0 + 66;
  v1 = (v0 + 68);
  v163 = v0 + 69;
  v0[128] = v60;
  v170 = v64;
  v0[127] = v64;
  v97 = v0[103];
  v98 = v0[102];
  v99 = v0[101];
  v100 = v0[70];
  static AnswerSynthesisController.onScreenEntities(from:)();
  v0[129] = v101;
  v102 = *v100;
  v0[130] = *v100;
  v103 = v100[1];
  v0[131] = v103;
  v171 = v100;
  v168 = v3[5];
  outlined init with copy of ToolDatabaseProtocol?(v100 + v168, v99, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  v104 = Locale.identifier.getter();
  v106 = v105;
  *v97 = v102;
  v97[1] = v103;
  v97[2] = v102;
  v97[3] = v103;
  v97[4] = 0;
  v97[5] = 0;
  outlined init with copy of ToolDatabaseProtocol?(v99, v97 + *(v98 + 28), &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  v107 = (v97 + *(v98 + 32));
  *v107 = v104;
  v107[1] = v106;
  swift_bridgeObjectRetain_n();

  UtteranceNormalizer.init(locale:)();
  outlined destroy of IntentApplication?(v99, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  v108 = MEMORY[0x277CBA0B8];
  v109 = 1;
  switch(*(v164 + 16))
  {
    case 1:
      v108 = MEMORY[0x277CBA0A8];
      goto LABEL_42;
    case 2:
      v108 = MEMORY[0x277CBA0C0];
      goto LABEL_42;
    case 3:
      v108 = MEMORY[0x277CBA0B0];
      goto LABEL_42;
    case 4:
      goto LABEL_43;
    default:
LABEL_42:
      v110 = v0[99];
      v111 = *v108;
      type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
      OUTLINED_FUNCTION_23_5();
      (*(v112 + 104))(v110, v111);
      v109 = 0;
LABEL_43:
      v113 = v0[99];
      v114 = type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
      __swift_storeEnumTagSinglePayload(v113, v109, 1, v114);
      v115 = Locale.identifier.getter();
      v167 = v116;
      if (*(v164 + 48))
      {
        v166 = *(v164 + 40);
        v117 = *(v164 + 48);
      }

      else
      {
        v166 = 0;
        v117 = 0xE000000000000000;
      }

      v20 = v0 + 64;
      v118 = v0[99];
      v119 = v0[98];
      outlined init with copy of ToolDatabaseProtocol?(v118, v119, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);

      LOBYTE(v119) = InteractionMode.init(interactionMode:)(v119);
      outlined destroy of IntentApplication?(v118, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
      v0[2] = 0;
      *(v0 + 24) = 1;
      v0[4] = 0;
      *(v0 + 40) = 1;
      v0[6] = 0;
      *(v0 + 56) = v119;
      v0[8] = v115;
      v0[9] = v167;
      v0[10] = v166;
      v0[11] = v117;
      v0[13] = 0;
      v0[14] = 0;
      v0[12] = 0;
      *(v0 + 120) = 0;
      AnswerSynthesisController.createAnswerSynthesisResultForMetrics()();
      if (one-time initialization token for shared == -1)
      {
        goto LABEL_47;
      }

      goto LABEL_83;
  }
}

{
  OUTLINED_FUNCTION_190();
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v0[145] = __swift_project_value_buffer(v0[135], static Logging.answerSynthesis);
  v1 = OUTLINED_FUNCTION_59_3();
  v2(v1);
  v3 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  OUTLINED_FUNCTION_77_4();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[123];
  if (v5)
  {
    OUTLINED_FUNCTION_28_3();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v43 = swift_slowAlloc();
    *v7 = 136315138;
    lazy protocol witness table accessor for type GenerativeError and conformance GenerativeError(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
    dispatch thunk of CustomStringConvertible.description.getter();
    v8 = *(v6 + 8);
    v9 = OUTLINED_FUNCTION_70_2();
    v8(v9);
    OUTLINED_FUNCTION_158();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v7 + 4) = v10;
    OUTLINED_FUNCTION_190_0();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    OUTLINED_FUNCTION_223(v43);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    v16 = OUTLINED_FUNCTION_19_5();
    MEMORY[0x25F8A1050](v16);
  }

  else
  {

    v8 = *(v6 + 8);
    v17 = OUTLINED_FUNCTION_70_2();
    v8(v17);
  }

  v0[146] = v8;
  v18 = MEMORY[0x277CBA0B8];
  v19 = 1;
  switch(*(v0[126] + 16))
  {
    case 1:
      v18 = MEMORY[0x277CBA0A8];
      goto LABEL_10;
    case 2:
      v18 = MEMORY[0x277CBA0C0];
      goto LABEL_10;
    case 3:
      v18 = MEMORY[0x277CBA0B0];
      goto LABEL_10;
    case 4:
      goto LABEL_11;
    default:
LABEL_10:
      v20 = v0[97];
      v21 = *v18;
      type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
      OUTLINED_FUNCTION_23_5();
      (*(v22 + 104))(v20, v21);
      v19 = 0;
LABEL_11:
      v42 = v0[141];
      v23 = v0[97];
      v24 = v0[90];
      v25 = v0[89];
      v26 = type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
      __swift_storeEnumTagSinglePayload(v23, v19, 1, v26);
      v27 = Locale.identifier.getter();
      v29 = v28;
      v30 = type metadata accessor for FeatureFlagService();
      v31 = OUTLINED_FUNCTION_197_0(v30);
      v32 = v25[5];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v33, v34, v35, v26);
      v36 = (v24 + v25[6]);
      v37 = (v24 + v25[7]);
      *v37 = 25965;
      v37[1] = 0xE200000000000000;
      outlined assign with take of SearchToolGlobalSearchXPC?(v23, v24 + v32, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
      *v36 = v27;
      v36[1] = v29;
      *v24 = v42;
      *(v24 + v25[8]) = v31;
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      v0[147] = v38;
      *v38 = v39;
      v38[1] = AnswerSynthesisController.extractAnswer(query:);
      OUTLINED_FUNCTION_115();

      __asm { BRAA            X8, X16 }

      return;
  }
}

{
  v1 = v0[88];
  OUTLINED_FUNCTION_110_1();
  outlined init with take of ResultsDialog(v2, v1);
  v3 = *v1;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = OUTLINED_FUNCTION_20_3();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[127];
  if (v8)
  {
    v10 = OUTLINED_FUNCTION_90_1();
    *v10 = 134218240;
    *(v10 + 4) = *(v3 + 16);

    *(v10 + 12) = 2048;
    v11 = *(v9 + 16);

    *(v10 + 14) = v11;

    _os_log_impl(&dword_25D85C000, v4, v5, "Return %ld answers from %ld ranked results", v10, 0x16u);
    v12 = OUTLINED_FUNCTION_19_5();
    MEMORY[0x25F8A1050](v12);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v13 = MEMORY[0x277D84F90];
  v116 = MEMORY[0x277D84F90];
  v14 = *(v3 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = v0[128];
    v17 = v0[105];
    v106 = v0[86];
    OUTLINED_FUNCTION_79();
    v105 = v18;
    v111 = v19;
    v113 = (v19 + 32);
    v103 = v14;
    v104 = v3;
    v110 = v16;
    v102 = v17;
    while (v15 < *(v3 + 16))
    {
      v20 = v0[108];
      v21 = v0[84];
      v112 = *(v17 + 72);
      OUTLINED_FUNCTION_2_4();
      _s10OmniSearch0B6ResultVWOcTm_1(v22, v20);
      OUTLINED_FUNCTION_13_4();
      _s10OmniSearch0B6ResultVWOcTm_1(v20, v21);
      OUTLINED_FUNCTION_63_0();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v24 = v0[84];
      if (EnumCaseMultiPayload == 28)
      {
        v108 = v15;
        OUTLINED_FUNCTION_114_2();
        v25 = OUTLINED_FUNCTION_94();
        outlined init with take of ResultsDialog(v25, v26);
        v27 = *(v106 + 40);
        v115 = *(v27 + 16);

        v28 = 0;
        v114 = v27;
        v29 = v27 + v105;
        v109 = MEMORY[0x277D84F90];
        v107 = v27 + v105;
LABEL_9:
        v30 = v112;
        v31 = v29 + v112 * v28;
        while (v115 != v28)
        {
          if (v28 >= *(v114 + 16))
          {
            __break(1u);
            goto LABEL_37;
          }

          v32 = v0[107];
          OUTLINED_FUNCTION_2_4();
          _s10OmniSearch0B6ResultVWOcTm_1(v31, v32);
          SearchResultItem.associatedValue.getter(v0 + 31);
          __swift_project_boxed_opaque_existential_1(v0 + 31, v0[34]);
          v33 = OUTLINED_FUNCTION_63_0();
          v34(v33);
          __swift_destroy_boxed_opaque_existential_1Tm(v0 + 31);
          if (*(v16 + 16))
          {
            v35 = OUTLINED_FUNCTION_45_0();
            v37 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v36);
            if (v38)
            {
              (*(v111 + 16))(v0[77], *(v16 + 56) + *(v111 + 72) * v37, v0[79]);
            }
          }

          v39 = v0[77];
          OUTLINED_FUNCTION_117();
          __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);

          OUTLINED_FUNCTION_38_5(v39);
          if (v44)
          {
            v45 = v0[106];
            outlined destroy of IntentApplication?(v0[77], &_s15OmniSearchTypes34AnswerSynthesisExtractionCandidateOSgMd, &_s15OmniSearchTypes34AnswerSynthesisExtractionCandidateOSgMR);
            OUTLINED_FUNCTION_2_4();
            v46 = OUTLINED_FUNCTION_63_0();
            _s10OmniSearch0B6ResultVWOcTm_1(v46, v47);
            v48 = Logger.logObject.getter();
            static os_log_type_t.error.getter();
            OUTLINED_FUNCTION_150_0();
            v50 = os_log_type_enabled(v48, v49);
            v51 = v0[106];
            if (v50)
            {
              OUTLINED_FUNCTION_28_3();
              v52 = swift_slowAlloc();
              OUTLINED_FUNCTION_9_4();
              v117 = swift_slowAlloc();
              *v52 = 136642819;
              SearchResult.description.getter();
              OUTLINED_FUNCTION_3_6();
              _s10OmniSearch0B6ResultVWOhTm_0(v51, v53);
              v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

              *(v52 + 4) = v54;
              _os_log_impl(&dword_25D85C000, v48, v45, "Could not map search result %{sensitive}s to extraction candidate", v52, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v117);
              v30 = v112;
              OUTLINED_FUNCTION_90();
              MEMORY[0x25F8A1050]();
              v16 = v110;
              OUTLINED_FUNCTION_90();
              MEMORY[0x25F8A1050]();
            }

            else
            {

              OUTLINED_FUNCTION_3_6();
              _s10OmniSearch0B6ResultVWOhTm_0(v51, v56);
            }

            v55 = 1;
          }

          else
          {
            (*v113)(v0[78], v0[77], v0[79]);
            v55 = 0;
          }

          v57 = v0[107];
          v58 = v0[79];
          v59 = v0[78];
          __swift_storeEnumTagSinglePayload(v59, v55, 1, v58);
          OUTLINED_FUNCTION_3_6();
          _s10OmniSearch0B6ResultVWOhTm_0(v57, v60);
          if (__swift_getEnumTagSinglePayload(v59, 1, v58) != 1)
          {
            v61 = v0[82];
            v62 = *v113;
            (*v113)(v61, v0[78], v0[79]);
            v63 = OUTLINED_FUNCTION_59_3();
            (v62)(v63);
            v64 = v109;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v70 = OUTLINED_FUNCTION_44();
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v70, v71, v72, v109);
              v64 = v73;
            }

            v29 = v107;
            v65 = *(v64 + 16);
            OUTLINED_FUNCTION_226();
            if (v67)
            {
              v74 = OUTLINED_FUNCTION_22_5(v66);
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v74, v75, v76, v64);
              v64 = v77;
            }

            ++v28;
            *(v64 + 16) = v61;
            OUTLINED_FUNCTION_42_5();
            v109 = v64;
            (v62)(v64 + v68 + *(v69 + 72) * v65);
            goto LABEL_9;
          }

          outlined destroy of IntentApplication?(v0[78], &_s15OmniSearchTypes34AnswerSynthesisExtractionCandidateOSgMd, &_s15OmniSearchTypes34AnswerSynthesisExtractionCandidateOSgMR);
          v31 += v30;
          ++v28;
        }

        v81 = v0[108];
        v82 = v0[86];
        type metadata accessor for AnswerSynthesisResolutionResult();
        v83 = OUTLINED_FUNCTION_65();
        __swift_storeEnumTagSinglePayload(v83, v84, 1, v85);
        type metadata accessor for AnswerSynthesisResult();
        OUTLINED_FUNCTION_53_0();
        swift_allocObject();
        AnswerSynthesisResult.init(answer:dialog:sources:resolutionResult:)();
        OUTLINED_FUNCTION_3_6();
        _s10OmniSearch0B6ResultVWOhTm_0(v81, v86);
        OUTLINED_FUNCTION_7_5();
        v88 = _s10OmniSearch0B6ResultVWOhTm_0(v82, v87);
        MEMORY[0x25F89F850](v88);
        v89 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v89 >> 1)
        {
          OUTLINED_FUNCTION_26_3(v89);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v13 = v116;
        v14 = v103;
        v3 = v104;
        v15 = v108;
        v17 = v102;
      }

      else
      {
        OUTLINED_FUNCTION_3_6();
        _s10OmniSearch0B6ResultVWOhTm_0(v78, v79);
        OUTLINED_FUNCTION_8_6();
        _s10OmniSearch0B6ResultVWOhTm_0(v24, v80);
      }

      if (++v15 == v14)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    __break(1u);
  }

  else
  {
LABEL_33:
    v90 = v0[125];
    v101 = v0[146];
    v100 = v0[122];
    v91 = v0[103];
    v92 = v0[96];
    v93 = v0[95];
    v94 = v0[94];
    v95 = v0[90];
    v96 = v0[88];
    OUTLINED_FUNCTION_149_0();

    outlined destroy of OmniSearchOptions((v0 + 2));
    (*(v93 + 8))(v92, v94);
    OUTLINED_FUNCTION_16_7();
    _s10OmniSearch0B6ResultVWOhTm_0(v91, v97);
    v101(v90, v100);
    _s10OmniSearch0B6ResultVWOhTm_0(v96, type metadata accessor for ResultsDialog);
    OUTLINED_FUNCTION_113_2();
    _s10OmniSearch0B6ResultVWOhTm_0(v95, v98);

    OUTLINED_FUNCTION_62();

    v99(v13);
  }
}

uint64_t AnswerSynthesisController.extractAnswer(query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_255();
  v54 = v38[125];
  v39 = v38[123];
  v40 = v38[122];
  v41 = v38[103];

  outlined destroy of OmniSearchOptions((v38 + 2));
  v42 = OUTLINED_FUNCTION_158();
  v43(v42);
  OUTLINED_FUNCTION_16_7();
  _s10OmniSearch0B6ResultVWOhTm_0(v41, v44);
  (*(v39 + 8))(v54, v40);

  v55 = v38[144];
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_62_4();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_250();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v55, a35, a36, a37, a38);
}

{
  OUTLINED_FUNCTION_255();
  v39 = v38[103];
  outlined destroy of OmniSearchOptions((v38 + 2));
  v40 = OUTLINED_FUNCTION_63_0();
  v41(v40);
  OUTLINED_FUNCTION_16_7();
  _s10OmniSearch0B6ResultVWOhTm_0(v39, v42);
  v43 = OUTLINED_FUNCTION_32_0();
  v44(v43);
  OUTLINED_FUNCTION_223(v38 + 36);

  v54 = v38[139];
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_62_4();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_250();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v54, a35, a36, a37, a38);
}

{
  OUTLINED_FUNCTION_255();
  v39 = v38[148];
  v64 = v38[146];
  v61 = v38[122];
  v62 = v38[125];
  v59 = v38[103];
  v60 = v38[123];
  v58 = v38[96];
  v40 = v38[95];
  v41 = v38[94];
  v63 = v38[90];
  OUTLINED_FUNCTION_133();
  (*(v42 + 320))(v39);
  OUTLINED_FUNCTION_133();
  v43 = OUTLINED_FUNCTION_118_0();
  v44(v43);
  v45 = OUTLINED_FUNCTION_64_0();
  v46(v45);
  swift_willThrow();
  outlined destroy of OmniSearchOptions((v38 + 2));
  (*(v40 + 8))(v58, v41);
  OUTLINED_FUNCTION_16_7();
  _s10OmniSearch0B6ResultVWOhTm_0(v59, v47);
  v64(v62, v61);
  OUTLINED_FUNCTION_113_2();
  _s10OmniSearch0B6ResultVWOhTm_0(v63, v48);

  v65 = v38[148];
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_63_3();
  OUTLINED_FUNCTION_149_0();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_250();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v58, v59, v60, v61, v62, v63, v65, a34, a35, a36, a37, a38);
}

void static AnswerSynthesisController.onScreenEntities(from:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  type metadata accessor for AnswerSynthesisExtractionCandidate();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_109();
  v7 = (v5 - v6);
  MEMORY[0x28223BE20](v8);
  v10 = v37 - v9;
  v11 = *(v1 + 16);
  if (v11)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    OUTLINED_FUNCTION_79();
    v16 = v1 + v15;
    v43 = *(v12 + 56);
    v42 = *MEMORY[0x277D374D8];
    v37[0] = v12 + 80;
    v37[1] = v12 - 8;
    v17 = MEMORY[0x277D84F90];
    v39 = v10;
    v40 = v12;
    v38 = v14;
    do
    {
      v18 = OUTLINED_FUNCTION_232();
      v13(v18);
      v19 = OUTLINED_FUNCTION_153();
      v20(v19);
      v21 = OUTLINED_FUNCTION_107();
      v23 = v22(v21);
      if (v23 == v42)
      {
        v24 = OUTLINED_FUNCTION_107();
        v25(v24);
        v26 = *v7;
        v41 = v7[1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v33);
          v17 = v34;
        }

        v28 = *(v17 + 16);
        v27 = *(v17 + 24);
        if (v28 >= v27 >> 1)
        {
          v35 = OUTLINED_FUNCTION_26_3(v27);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35);
          v17 = v36;
        }

        *(v17 + 16) = v28 + 1;
        v29 = v17 + 16 * v28;
        v30 = v41;
        *(v29 + 32) = v26;
        *(v29 + 40) = v30;
        v13 = v38;
      }

      else
      {
        v31 = OUTLINED_FUNCTION_107();
        v32(v31);
      }

      v16 += v43;
      --v11;
    }

    while (v11);
  }

  OUTLINED_FUNCTION_148();
}

uint64_t specialized Set.formUnion<A>(_:)(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = (result + 40);
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    ++v2;
    v6 = *(v4 - 1);
    v5 = *v4;

    specialized Set._Variant.insert(_:)(&v7, v6, v5);

    v4 += 2;
  }
}

const void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSi_SnySiGTt0g5(const void *result, uint64_t a2)
{
  v3 = (a2 - result);
  if (!__OFSUB__(a2, result))
  {
    if (v3)
    {
      v5 = OUTLINED_FUNCTION_244();
      v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(v5, 0);
      if (specialized Sequence._copySequenceContents(initializing:)(v7, v6 + 32, v3, v2, a2) == v3)
      {
        return v6;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  __break(1u);
  return result;
}

uint64_t _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(a1 + 16), 0);
  OUTLINED_FUNCTION_203_0();
  v6 = specialized Sequence._copySequenceContents(initializing:)(v2, v3, v4, v5);
  OUTLINED_FUNCTION_168_0(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17);
  if (!v14)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC10Foundation3URLV_ShyAFGTt0g5Tm(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(void), uint64_t a4)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v5 = a2(*(a1 + 16), 0);
  v6 = a3(0);
  OUTLINED_FUNCTION_114(v6);
  OUTLINED_FUNCTION_79();
  specialized Sequence._copySequenceContents(initializing:)();
  OUTLINED_FUNCTION_168_0(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18);
  if (!v15)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v5;
}

uint64_t _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_SD6ValuesVyS2S_GTt0g5(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(a1 + 16), 0);
  OUTLINED_FUNCTION_203_0();
  v6 = specialized Sequence._copySequenceContents(initializing:)(v2, v3, v4, v5);
  OUTLINED_FUNCTION_168_0(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17);
  if (!v14)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t closure #1 in static AnswerSynthesisController.convertToSearchResult(extractionCandidates:toolDatabase:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v48 = a2;
  v6 = type metadata accessor for TypedValue();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v46 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v47 = &v41 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  v14 = type metadata accessor for AnswerSynthesisExtractionCandidate();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, a1, v14, v16);
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 == *MEMORY[0x277D374E0])
  {
    (*(v15 + 96))(v18, v14);
    (*(v7 + 32))(v13, v18, v6);
    TypedValue.asSearchResult(toolDatabase:)(v48, a3);
    v48 = a3;
    v20 = v13;
    if (v3)
    {
      if (one-time initialization token for answerSynthesis != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Logging.answerSynthesis);
      v22 = *(v7 + 16);
      v23 = v47;
      v22(v47, v13, v6);
      v24 = v3;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      v45 = v26;
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = v6;
        v44 = v20;
        v29 = v23;
        v30 = v27;
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v49 = v43;
        *v30 = 136380931;
        v22(v46, v29, v28);
        String.init<A>(describing:)();
        v31 = *(v7 + 8);
        v31(v29, v28);
        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v30 + 4) = v32;
        *(v30 + 12) = 2112;
        v33 = v3;
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v30 + 14) = v34;
        v35 = v42;
        *v42 = v34;
        _os_log_impl(&dword_25D85C000, v25, v45, "Error converting typedValue (%{private}s) to SearchResult: %@", v30, 0x16u);
        outlined destroy of IntentApplication?(v35, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x25F8A1050](v35, -1, -1);
        v36 = v43;
        __swift_destroy_boxed_opaque_existential_1Tm(v43);
        MEMORY[0x25F8A1050](v36, -1, -1);
        MEMORY[0x25F8A1050](v30, -1, -1);

        v31(v44, v28);
      }

      else
      {

        v39 = *(v7 + 8);
        v39(v23, v6);
        v39(v20, v6);
      }

      v40 = type metadata accessor for SearchResult(0);
      return __swift_storeEnumTagSinglePayload(v48, 1, 1, v40);
    }

    else
    {
      return (*(v7 + 8))(v13, v6);
    }
  }

  else if (v19 == *MEMORY[0x277D374D8])
  {
    (*(v15 + 8))(v18, v14);
    v37 = type metadata accessor for SearchResult(0);
    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v37);
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t AnswerSynthesisController.createAnswerSynthesisResultForMetrics()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF26AnswerSynthesisPerfMetricsVSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF26AnswerSynthesisPerfMetricsVSgMR);
  OUTLINED_FUNCTION_114(v0);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF26AnswerSynthesisDataMetricsVSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF26AnswerSynthesisDataMetricsVSgMR);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v15[-v4];
  IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.init()();
  IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics.init()();
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.dataMetrics.setter();
  v7 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.dataMetrics.modify();
  v9 = OUTLINED_FUNCTION_165_0(v7, v8);
  if (!__swift_getEnumTagSinglePayload(v9, v10, v6))
  {
    v15[12] = 0;
    MEMORY[0x25F89E590](1);
  }

  v7(v16, 0);
  IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics.init()();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics();
  v11 = OUTLINED_FUNCTION_243();
  __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
  return IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.perfMetrics.setter();
}

void AnswerSynthesisController.prewarmPCCConnection(runAnswerSynthesis:results:answerSynthesisResultForMetrics:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for PrewarmUrgency();
  OUTLINED_FUNCTION_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36();
  v14 = (v13 - v12);
  v15 = type metadata accessor for SearchResult(0);
  v16 = OUTLINED_FUNCTION_21(v15);
  v18 = v17;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_109();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v65 - v23;
  if (v7)
  {
    v66 = v14;
    v67 = v3;
    v68 = v10;
    v69 = v8;
    v25 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
    v72 = static NSUserDefaults.answerSynthesisLimit.getter(v25);
    v26 = *(v5 + 16);
    if (v26)
    {
      v27 = 0;
      v28 = (*v1 + 352);
      v73 = *v28;
      v71 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v29 = v5 + v71;
      v30 = *(v18 + 72);
      v31 = MEMORY[0x277D84F90];
      v32 = v28;
      v70 = v1;
      while (1)
      {
        OUTLINED_FUNCTION_2_4();
        _s10OmniSearch0B6ResultVWOcTm_1(v29, v24);
        SearchResultItem.type.getter(&v74);
        if (v73(&v74))
        {
          OUTLINED_FUNCTION_2_4();
          v33 = OUTLINED_FUNCTION_118_0();
          _s10OmniSearch0B6ResultVWOcTm_1(v33, v34);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v40, v41, v42, v31);
            v31 = v43;
          }

          v1 = *(v31 + 16);
          v35 = *(v31 + 24);
          if (v1 >= v35 >> 1)
          {
            v44 = OUTLINED_FUNCTION_22_5(v35);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v44, v45, v46, v31);
            v31 = v47;
          }

          OUTLINED_FUNCTION_3_6();
          _s10OmniSearch0B6ResultVWOhTm_0(v24, v36);
          *(v31 + 16) = v1 + 1;
          OUTLINED_FUNCTION_1_7();
          outlined init with take of ResultsDialog(v21, v37);
          if (__OFADD__(v27++, 1))
          {
            __break(1u);
LABEL_36:
            OUTLINED_FUNCTION_0_5();
            swift_once();
LABEL_25:
            v53 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_200(v53, static Logging.answerSynthesis);
            v54 = Logger.logObject.getter();
            static os_log_type_t.info.getter();
            v55 = OUTLINED_FUNCTION_20_3();
            if (os_log_type_enabled(v55, v56))
            {
              OUTLINED_FUNCTION_51_5();
              *swift_slowAlloc() = 0;
              OUTLINED_FUNCTION_257(&dword_25D85C000, v57, v58, "Prewarming AnswerSynthesisModel with .imminent urgency");
              OUTLINED_FUNCTION_90();
              MEMORY[0x25F8A1050]();
            }

            static PrewarmUrgency.imminent.getter();
            goto LABEL_33;
          }

          if (v27 == v72)
          {
            v1 = v70;
            goto LABEL_23;
          }

          v1 = v70;
        }

        else
        {
          OUTLINED_FUNCTION_3_6();
          _s10OmniSearch0B6ResultVWOhTm_0(v24, v39);
        }

        v29 += v30;
        if (!--v26)
        {
          goto LABEL_16;
        }
      }
    }

    v31 = MEMORY[0x277D84F90];
LABEL_16:
    if (*(v31 + 16))
    {
LABEL_23:
      AnswerSynthesisController.answerSynthesisStrongPreheatEnabled()();
      v32 = v68;
      v26 = v69;
      v24 = v66;
      v27 = v67;
      if (v52)
      {
        if (one-time initialization token for answerSynthesis != -1)
        {
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v59, static Logging.answerSynthesis);
      v60 = Logger.logObject.getter();
      static os_log_type_t.info.getter();
      v61 = OUTLINED_FUNCTION_20_3();
      if (os_log_type_enabled(v61, v62))
      {
        OUTLINED_FUNCTION_51_5();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_257(&dword_25D85C000, v63, v64, "Prewarming AnswerSynthesisModel with .default urgency");
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      static PrewarmUrgency.default.getter();
LABEL_33:
      (*(*v1 + 376))(v24, v27);

      (v32[1])(v24, v26);
    }

    else
    {

      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v48, static Logging.answerSynthesis);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v49, v50))
      {
        OUTLINED_FUNCTION_51_5();
        v51 = swift_slowAlloc();
        OUTLINED_FUNCTION_81_4(v51);
        OUTLINED_FUNCTION_174_0(&dword_25D85C000, v49, v50, "Filtered results contain no supported types; not prewarming AnswerSynthesisModel");
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }
    }
  }

  OUTLINED_FUNCTION_148();
}

void AnswerSynthesisController.answerSynthesisStrongPreheatEnabled()()
{
  OUTLINED_FUNCTION_155();
  v1 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_109();
  MEMORY[0x28223BE20](v5);
  v7 = &v38[-v6];
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v8 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v8, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v9 = OSSignposter.logHandle.getter();
  v10 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    OUTLINED_FUNCTION_51_5();
    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v9, v10, v12, "OmniSearchService.answerSynthesisStrongPreheatEnabled", "", v11, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v13 = OUTLINED_FUNCTION_34_5();
  v14(v13);
  type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_53_0();
  swift_allocObject();
  OUTLINED_FUNCTION_112_2();
  OSSignpostIntervalState.init(id:isOpen:)();
  v15 = (*(v3 + 8))(v7, v1);
  (*(*v0 + 280))(v15);
  swift_beginAccess();
  v16 = specialized Dictionary.subscript.getter();
  swift_endAccess();
  if (v16)
  {
    v17 = [v16 BOOLeanValue];
  }

  else
  {
    v17 = 2;
  }

  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v18, static Logging.answerSynthesis);
  v19 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  OUTLINED_FUNCTION_150_0();
  if (os_log_type_enabled(v19, v20))
  {
    OUTLINED_FUNCTION_28_3();
    v21 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v39 = swift_slowAlloc();
    *v21 = 136315138;
    v38[7] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    String.init<A>(describing:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v21 + 4) = v22;
    OUTLINED_FUNCTION_194_0();
    _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
    OUTLINED_FUNCTION_139_1();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v28 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  v29 = OUTLINED_FUNCTION_20_3();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_173_0();
    *v31 = 67109120;
    v31[1] = (v17 == 2) | v17 & 1;
    OUTLINED_FUNCTION_22_4();
    _os_log_impl(v32, v33, v34, v35, v36, 8u);
    v37 = OUTLINED_FUNCTION_19_5();
    MEMORY[0x25F8A1050](v37);
  }

  OUTLINED_FUNCTION_4_7();
  $defer #1 () in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)();

  OUTLINED_FUNCTION_148();
}

void $defer #1 () in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)()
{
  OUTLINED_FUNCTION_155();
  v27 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for OSSignpostError();
  OUTLINED_FUNCTION_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36();
  v13 = v12 - v11;
  v14 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_14();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_36();
  v20 = v19 - v18;
  if (*v4 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v21, v2);
  v22 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v23 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v9 + 88))(v13, v7) == *MEMORY[0x277D85B00])
    {
      v24 = "[Error] Interval already ended";
    }

    else
    {
      (*(v9 + 8))(v13, v7);
      v24 = "";
    }

    OUTLINED_FUNCTION_51_5();
    v25 = swift_slowAlloc();
    OUTLINED_FUNCTION_234(v25);
    v26 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v22, v23, v26, v27, v24, v6, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  (*(v16 + 8))(v20, v14);
  OUTLINED_FUNCTION_148();
}

uint64_t AnswerSynthesisController.deinit()
{
  outlined destroy of IntentApplication?(v0 + 16, &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMd, &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMR);
  outlined destroy of IntentApplication?(v0 + 56, &_s10OmniSearch28PQAVerificationModelProtocol_pSgMd, &_s10OmniSearch28PQAVerificationModelProtocol_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));

  outlined destroy of IntentApplication?(v0 + 152, &_s10OmniSearch17ECRClientProtocol_pSgMd, &_s10OmniSearch17ECRClientProtocol_pSgMR);

  outlined destroy of IntentApplication?(v0 + 200, &_s10OmniSearch20ToolDatabaseProtocol_pSgMd, &_s10OmniSearch20ToolDatabaseProtocol_pSgMR);

  return OUTLINED_FUNCTION_223((v0 + 264));
}

uint64_t AnswerSynthesisController.__deallocating_deinit()
{
  AnswerSynthesisController.deinit();
  OUTLINED_FUNCTION_193_0();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for AnswerSynthesisControllerProtocol.synthesize(query:requestedProperties:searchResults:onScreenText:context:clientId:answerSynthesisResultForMetrics:) in conformance AnswerSynthesisController(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = (*(**v8 + 368) + **(**v8 + 368));
  v16 = swift_task_alloc();
  *(v9 + 16) = v16;
  *v16 = v9;
  v16[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return v18(a1, a2, a3, a4, a5, a6, a7, a8);
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

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = type metadata accessor for UTType();
    OUTLINED_FUNCTION_21(v9);
    v12 = a1(a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v11 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v12 & 1) == 0);
  return v7 != v8;
}

uint64_t specialized implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v2);
  MEMORY[0x25F89F8A0](v2, MEMORY[0x277D837D0]);

  return OUTLINED_FUNCTION_88();
}

uint64_t specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a4;
  a1[1] = a5;

  return OUTLINED_FUNCTION_62_3();
}

uint64_t specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(_BYTE *a1, char a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;

  return a3;
}

uint64_t specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s10OmniSearch0B6ResultVWOcTm_1(a4, a1);

  return a2;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_8:
    if (v4 < 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x25F8A01B0](v6);
  }

LABEL_12:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    a3 = 0;
LABEL_12:
    v7 = a4;
LABEL_14:
    *result = a4;
    result[1] = a5;
    result[2] = v7;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (!(a4 - a5 + v5))
      {
        v7 = a5;
        a3 = a5 - a4;
        goto LABEL_14;
      }

      if (a5 < a4)
      {
        goto LABEL_16;
      }

      if (a4 + v5 >= a5)
      {
        goto LABEL_17;
      }

      *(a2 + 8 * v5) = a4 + v5;
      ++v5;
      if (v6 == a3)
      {
        v7 = a4 + v5;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, unint64_t a3, uint64_t a4)
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
LABEL_21:
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
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v25 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v16 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v15 == v10)
      {
        break;
      }

      v11 += 4;

      v12 = v15;
      v13 = v16;
    }

    v13 = v16;
LABEL_19:
    v7 = v25;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

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
      v16 = (*(a4 + 56) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
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

void specialized Sequence._copySequenceContents(initializing:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8(0);
  OUTLINED_FUNCTION_14();
  v28 = v9;
  v29 = v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_109();
  v27 = v11 - v12;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14_2();
  v14 = v1 + 56;
  v26 = -1 << *(v1 + 32);
  if (-v26 < 64)
  {
    v15 = ~(-1 << -v26);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v1 + 56);
  if (!v5)
  {
    v19 = 0;
LABEL_22:
    *v7 = v1;
    v7[1] = v14;
    v7[2] = ~v26;
    v7[3] = v19;
    v7[4] = v16;
    OUTLINED_FUNCTION_148();
    return;
  }

  v17 = v3;
  if (!v3)
  {
    v19 = 0;
    goto LABEL_22;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v25 = v1 + 56;
    v18 = 0;
    v19 = 0;
    while (v18 < v17)
    {
      if (__OFADD__(v18, 1))
      {
        goto LABEL_26;
      }

      if (!v16)
      {
        v14 = v25;
        while (1)
        {
          v20 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v20 >= ((63 - v26) >> 6))
          {
            v16 = 0;
            goto LABEL_22;
          }

          v16 = *(v25 + 8 * v20);
          ++v19;
          if (v16)
          {
            v30 = v18 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v30 = v18 + 1;
      v20 = v19;
LABEL_17:
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v22 = v1;
      v23 = *(v29 + 72);
      (*(v29 + 16))(v27, *(v1 + 48) + v23 * (v21 | (v20 << 6)), v28);
      v24 = *(v29 + 32);
      OUTLINED_FUNCTION_160_0();
      v24();
      OUTLINED_FUNCTION_202_0();
      v24();
      v17 = v3;
      v18 = v30;
      if (v30 == v3)
      {
        v19 = v20;
        v14 = v25;
        v1 = v22;
        goto LABEL_22;
      }

      v5 += v23;
      v19 = v20;
      v1 = v22;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
}

uint64_t specialized LazyMapSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void specialized LazyMapSequence.Iterator.next()(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10OmniSearch0C6ResultV5valuetMd, &_sSS3key_10OmniSearch0C6ResultV5valuetMR);
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - v4;
  v6 = type metadata accessor for SearchResult(0);
  v36 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10OmniSearch0C6ResultV5valuetSgMd, &_sSS3key_10OmniSearch0C6ResultV5valuetSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v32 - v13);
  v16 = *v1;
  v15 = v1[1];
  v17 = v1[2];
  v18 = v1[3];
  v19 = v1[4];
  v33 = v5;
  v37 = v17;
  if (v19)
  {
    v34 = v11;
    v35 = a1;
    v20 = v3;
    v21 = v18;
LABEL_7:
    v22 = (v19 - 1) & v19;
    v23 = __clz(__rbit64(v19)) | (v21 << 6);
    v24 = (*(v16 + 48) + 16 * v23);
    v25 = *v24;
    v26 = v24[1];
    _s10OmniSearch0B6ResultVWOcTm_1(*(v16 + 56) + *(v36 + 72) * v23, v8);
    v27 = *(v20 + 48);
    *v14 = v25;
    v14[1] = v26;
    v3 = v20;
    outlined init with take of ResultsDialog(v8, v14 + v27);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v20);

    v11 = v34;
    a1 = v35;
LABEL_8:
    *v1 = v16;
    v1[1] = v15;
    v1[2] = v37;
    v1[3] = v18;
    v1[4] = v22;
    v28 = v1[5];
    outlined init with take of (AnswerSynthesisModelResult.AnswerResponse, SearchResult)(v14, v11, &_sSS3key_10OmniSearch0C6ResultV5valuetSgMd, &_sSS3key_10OmniSearch0C6ResultV5valuetSgMR);
    v29 = 1;
    if (__swift_getEnumTagSinglePayload(v11, 1, v3) != 1)
    {
      v30 = v33;
      outlined init with take of (AnswerSynthesisModelResult.AnswerResponse, SearchResult)(v11, v33, &_sSS3key_10OmniSearch0C6ResultV5valuetMd, &_sSS3key_10OmniSearch0C6ResultV5valuetMR);
      v28(v30);
      outlined destroy of IntentApplication?(v30, &_sSS3key_10OmniSearch0C6ResultV5valuetMd, &_sSS3key_10OmniSearch0C6ResultV5valuetMR);
      v29 = 0;
    }

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10OmniSearch0B6ResultVtMd, &_sSS_10OmniSearch0B6ResultVtMR);
    __swift_storeEnumTagSinglePayload(a1, v29, 1, v31);
  }

  else
  {
    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= ((v17 + 64) >> 6))
      {
        __swift_storeEnumTagSinglePayload(&v32 - v13, 1, 1, v3);
        v22 = 0;
        goto LABEL_8;
      }

      v19 = *(v15 + 8 * v21);
      ++v18;
      if (v19)
      {
        v34 = v11;
        v35 = a1;
        v20 = v3;
        v18 = v21;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t specialized TrialManager.init(trialClient:namespace:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for TRIClient, 0x277D73660);
  v14[4] = &protocol witness table for TRIClient;
  v14[0] = a1;
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for TRILevel, 0x277D73B18);
  *(a4 + 72) = Dictionary.init(dictionaryLiteral:)();
  *(a4 + 80) = xmmword_25DBC9A70;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  outlined init with copy of ChatMessageRecord(v14, a4 + 32);

  TrialManager.loadFactorsAndExperiment()();
  v8 = *(a4 + 16);
  v9 = *(a4 + 24);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = v10;

  v12 = @nonobjc TRIClient.addUpdateHandler(forNamespaceName:using:)(v8, v9, partial apply for closure #1 in TrialManager.init(trialClient:namespace:), v11);

  *(a4 + 144) = v12;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return a4;
}

uint64_t outlined assign with copy of ECRClientProtocol?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_34_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_23_5();
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v4;
}

uint64_t partial apply for closure #1 in AnySearchEntityPreprocessing.init(_:)()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #1 in AnySearchEntityPreprocessing.init(_:);
  OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_117_2();

  return closure #1 in AnySearchEntityPreprocessing.init(_:)(v3, v4, v5, v6);
}

uint64_t closure #1 in AnySearchEntityPreprocessing.init(_:)partial apply()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v1[1] = closure #1 in AnySearchEntityPreprocessing.init(_:)partial apply;
  OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_117_2();

  return closure #1 in AnySearchEntityPreprocessing.init(_:)(v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  OUTLINED_FUNCTION_52();
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  OUTLINED_FUNCTION_62();

  return v5(v2);
}

uint64_t partial apply for closure #1 in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)()
{
  OUTLINED_FUNCTION_72();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v1 + 16) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_246(v5);

  return closure #1 in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)(v7, v8, v2, v3, v4);
}

unint64_t lazy protocol witness table accessor for type DialogOverrideError and conformance DialogOverrideError()
{
  result = lazy protocol witness table cache variable for type DialogOverrideError and conformance DialogOverrideError;
  if (!lazy protocol witness table cache variable for type DialogOverrideError and conformance DialogOverrideError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DialogOverrideError and conformance DialogOverrideError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DialogOverrideError and conformance DialogOverrideError;
  if (!lazy protocol witness table cache variable for type DialogOverrideError and conformance DialogOverrideError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DialogOverrideError and conformance DialogOverrideError);
  }

  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(a2, *a1, *(a1 + 8), *(a1 + 16));
  *(a2 + 8) = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t specialized Dictionary.Keys.subscript.getter(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 48) + 16 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisRequest and conformance AnswerSynthesisRequest()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisRequest and conformance AnswerSynthesisRequest;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisRequest and conformance AnswerSynthesisRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisRequest and conformance AnswerSynthesisRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisRequest and conformance AnswerSynthesisRequest;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisRequest and conformance AnswerSynthesisRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisRequest and conformance AnswerSynthesisRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisRequest and conformance AnswerSynthesisRequest;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisRequest and conformance AnswerSynthesisRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisRequest and conformance AnswerSynthesisRequest);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NetworkServiceError and conformance NetworkServiceError()
{
  result = lazy protocol witness table cache variable for type NetworkServiceError and conformance NetworkServiceError;
  if (!lazy protocol witness table cache variable for type NetworkServiceError and conformance NetworkServiceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkServiceError and conformance NetworkServiceError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkServiceError and conformance NetworkServiceError;
  if (!lazy protocol witness table cache variable for type NetworkServiceError and conformance NetworkServiceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkServiceError and conformance NetworkServiceError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisModelResult and conformance AnswerSynthesisModelResult()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisModelResult and conformance AnswerSynthesisModelResult;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisModelResult and conformance AnswerSynthesisModelResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisModelResult and conformance AnswerSynthesisModelResult);
  }

  return result;
}

uint64_t outlined init with take of ResultsDialog(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_1();
  v4(v3);
  OUTLINED_FUNCTION_23_5();
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return a2;
}

uint64_t _s10OmniSearch0B6ResultVWOcTm_1(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_1();
  v4(v3);
  OUTLINED_FUNCTION_23_5();
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return a2;
}

uint64_t outlined consume of Person?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined assign with take of SearchToolGlobalSearchXPC?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_34_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_23_5();
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v4;
}

uint64_t lazy protocol witness table accessor for type GenerativeError and conformance GenerativeError(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s10OmniSearch0B6ResultVWOhTm_0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t outlined init with copy of ToolDatabaseProtocol?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_34_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_23_5();
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v4;
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisController.AnswerSynthesisModelType and conformance AnswerSynthesisController.AnswerSynthesisModelType()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisController.AnswerSynthesisModelType and conformance AnswerSynthesisController.AnswerSynthesisModelType;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisController.AnswerSynthesisModelType and conformance AnswerSynthesisController.AnswerSynthesisModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisController.AnswerSynthesisModelType and conformance AnswerSynthesisController.AnswerSynthesisModelType);
  }

  return result;
}

uint64_t dispatch thunk of AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_135_1();
  OUTLINED_FUNCTION_133();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_46(v1);

  return v4(v3);
}

uint64_t dispatch thunk of AnswerSynthesisController.synthesize(query:requestedProperties:searchResults:onScreenText:context:clientId:answerSynthesisResultForMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_190();
  v37 = v19;
  v38 = v20;
  OUTLINED_FUNCTION_133();
  v35 = (v21 + 368);
  v36 = *v35 + **v35;
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v18 + 16) = v22;
  *v22 = v23;
  v22[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  OUTLINED_FUNCTION_115();

  return v32(v24, v25, v26, v27, v28, v29, v30, v31, a9, v35, v36, v37, v38, a14, a15, a16, a17, a18);
}

uint64_t dispatch thunk of AnswerSynthesisController.performSynthesisRequest(for:with:answerSynthesisMetrics:clientId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_133();
  v17 = (*(v13 + 400) + **(v13 + 400));
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v6 + 16) = v14;
  *v14 = v15;
  v14[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of AnswerSynthesisController.convertSynthesisResultToSearchResultAnswers(request:synthesisResult:searchResults:answerSynthesisMetrics:clientId:)(uint64_t a1)
{
  OUTLINED_FUNCTION_133();
  v6 = (*(v2 + 424) + **(v2 + 424));
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);
  OUTLINED_FUNCTION_241();

  return v6();
}

uint64_t dispatch thunk of AnswerSynthesisController.performPQAVerification(for:answerSynthesisMetrics:clientId:)()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_135_1();
  OUTLINED_FUNCTION_133();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_46(v1);

  return v4(v3);
}

uint64_t dispatch thunk of AnswerSynthesisController.preCheckAnswerResponses(with:answerSynthesisRequest:references:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_192_0();
  OUTLINED_FUNCTION_133();
  v5 = (*(v0 + 448) + **(v0 + 448));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_63(v1);
  *v2 = v3;
  v2[1] = dispatch thunk of AnswerResolvable.extractInfo(query:results:assistantLocale:);
  OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_117_2();

  return v5();
}

uint64_t dispatch thunk of AnswerSynthesisController.createProperties(from:requestedProperties:answer:)()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_135_1();
  OUTLINED_FUNCTION_133();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_46(v1);

  return v4(v3);
}

uint64_t dispatch thunk of AnswerSynthesisController.collateNetworkServiceResults(_:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_133();
  v6 = (*(v1 + 464) + **(v1 + 464));
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v0 + 16) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_246(v2);

  return v6(v4);
}

uint64_t dispatch thunk of AnswerSynthesisController.extractAnswer(query:)()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_133();
  v6 = (*(v0 + 520) + **(v0 + 520));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_63(v1);
  *v2 = v3;
  v2[1] = dispatch thunk of AnswerResolvable.extractInfo(query:results:assistantLocale:);
  v4 = OUTLINED_FUNCTION_244();

  return v6(v4);
}

_BYTE *storeEnumTagSinglePayload for AnswerSynthesisController.AnswerSynthesisModelType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

uint64_t outlined assign with take of SearchResult(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResult(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of (AnswerSynthesisModelResult.AnswerResponse, SearchResult)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_34_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_23_5();
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v4;
}

void outlined consume of SearchOverride?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }
}

double OUTLINED_FUNCTION_20_5(uint64_t a1)
{
  *(a1 + 16) = 10;
  *(a1 + 24) = 2;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 88) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_62_4()
{
  v3 = v0[81];
  *(v1 - 136) = v0[82];
  *(v1 - 128) = v3;
  v4 = v0[77];
  *(v1 - 120) = v0[78];
  *(v1 - 112) = v4;
  v5 = v0[75];
  *(v1 - 104) = v0[76];
  *(v1 - 96) = v5;
}

void OUTLINED_FUNCTION_94_2()
{

  _StringGuts.grow(_:)(23);
}

uint64_t OUTLINED_FUNCTION_118_1(uint64_t a1, _BYTE *a2)
{
  *a2 = 4;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_125_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_126_2(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_136_1()
{
}

uint64_t OUTLINED_FUNCTION_142_0(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_149_0()
{
  v2 = v0[78];
  *(v1 - 136) = v0[81];
  *(v1 - 128) = v2;
  v3 = v0[76];
  *(v1 - 120) = v0[77];
  *(v1 - 112) = v3;
  *(v1 - 104) = v0[75];
}

uint64_t OUTLINED_FUNCTION_152_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_153_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_169_0()
{
  v3 = *(v1 + 400);
  v4 = *(v1 + 408);

  return AnswerSynthesisController.contentSearchFallback(with:reason:)(v0, v3, v4);
}

void OUTLINED_FUNCTION_170_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_172_0()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_173_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_174_0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

void *OUTLINED_FUNCTION_176_0()
{

  return memcpy((v0 + 240), (v0 + 16), 0x70uLL);
}

uint64_t OUTLINED_FUNCTION_177_0()
{
  result = *(v0 + 200);
  *(result + *(*(v0 + 184) + 32)) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_182_0(uint64_t a1)
{
  *(v1 + 12) = 2048;

  return GenerativeError.PromptError.ErrorType.TooManyTokensErrorInfo.tokenCountMaximum.getter();
}

void OUTLINED_FUNCTION_184_0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_195_0()
{

  return type metadata accessor for Logger();
}

void *OUTLINED_FUNCTION_196_0(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x70uLL);
}

uint64_t OUTLINED_FUNCTION_197_0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_216()
{

  return type metadata accessor for Logger();
}

void OUTLINED_FUNCTION_217()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_219()
{
}

uint64_t OUTLINED_FUNCTION_220(uint64_t a1, _BYTE *a2)
{
  *a2 = v2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_221(uint64_t a1)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_256(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v6, v7, a4, a5, a6, v8, 2u);
}

void OUTLINED_FUNCTION_257(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_258(float a1)
{
  *v1 = a1;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

BOOL OUTLINED_FUNCTION_259()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_260()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_261@<X0>(_BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;

  return swift_willThrow();
}

uint64_t dispatch thunk of AnswerSynthesisControllerProtocol.synthesize(query:requestedProperties:searchResults:onScreenText:context:clientId:answerSynthesisResultForMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = (*(a12 + 40) + **(a12 + 40));
  v18 = swift_task_alloc();
  *(v12 + 16) = v18;
  *v18 = v12;
  v18[1] = dispatch thunk of AnswerSynthesisControllerProtocol.synthesize(query:requestedProperties:searchResults:onScreenText:context:clientId:answerSynthesisResultForMetrics:);

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t dispatch thunk of AnswerSynthesisControllerProtocol.synthesize(query:requestedProperties:searchResults:onScreenText:context:clientId:answerSynthesisResultForMetrics:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t AnswerSynthesisModelResult.AnswerResponse.answer.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AnswerSynthesisModelResult.AnswerResponse.dialog.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

OmniSearch::AnswerSynthesisModelResult::AnswerResponse::CodingKeys_optional __swiftcall AnswerSynthesisModelResult.AnswerResponse.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnswerSynthesisModelResult.AnswerResponse.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t AnswerSynthesisModelResult.AnswerResponse.CodingKeys.stringValue.getter(char a1)
{
  result = 0x726577736E61;
  switch(a1)
  {
    case 1:
      result = 1935896420;
      break;
    case 2:
      result = 0x676F6C616964;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

OmniSearch::AnswerSynthesisModelResult::AnswerResponse::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnswerSynthesisModelResult.AnswerResponse.CodingKeys@<W0>(Swift::String *a1@<X0>, OmniSearch::AnswerSynthesisModelResult::AnswerResponse::CodingKeys_optional *a2@<X8>)
{
  result.value = AnswerSynthesisModelResult.AnswerResponse.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnswerSynthesisModelResult.AnswerResponse.CodingKeys@<X0>(unint64_t *a1@<X8>)
{
  result = AnswerSynthesisModelResult.AnswerResponse.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

OmniSearch::AnswerSynthesisModelResult::AnswerResponse::CodingKeys_optional protocol witness for CodingKey.init(stringValue:) in conformance AnswerSynthesisModelResult.AnswerResponse.CodingKeys@<W0>(uint64_t a1@<X0>, OmniSearch::AnswerSynthesisModelResult::AnswerResponse::CodingKeys_optional *a2@<X8>)
{
  result.value = AnswerSynthesisModelResult.AnswerResponse.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisModelResult.AnswerResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisModelResult.AnswerResponse.CodingKeys and conformance AnswerSynthesisModelResult.AnswerResponse.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisModelResult.AnswerResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisModelResult.AnswerResponse.CodingKeys and conformance AnswerSynthesisModelResult.AnswerResponse.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t one-time initialization function for schema()
{
  v0 = type metadata accessor for Schema();
  __swift_allocate_value_buffer(v0, static AnswerSynthesisModelResult.AnswerResponse.schema);
  __swift_project_value_buffer(v0, static AnswerSynthesisModelResult.AnswerResponse.schema);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation6SchemaV5FieldVGMd, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation6SchemaV5FieldVGMR);
  type metadata accessor for Schema.Field();
  *(swift_allocObject() + 16) = xmmword_25DBC8930;
  v1 = MEMORY[0x277D0DE60];
  Schema.Field.init<A>(name:type:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], v1, MEMORY[0x277D0DE68]);
  Schema.Field.init<A>(name:type:)();
  Schema.Field.init<A>(name:type:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  lazy protocol witness table accessor for type [String : String] and conformance <> [A : B]();
  Schema.Field.init<A>(name:type:)();
  return Schema.init(fields:)();
}

{
  v0 = type metadata accessor for Schema();
  __swift_allocate_value_buffer(v0, static AnswerSynthesisModelResult.schema);
  __swift_project_value_buffer(v0, static AnswerSynthesisModelResult.schema);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation6SchemaV5FieldVGMd, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation6SchemaV5FieldVGMR);
  type metadata accessor for Schema.Field();
  *(swift_allocObject() + 16) = xmmword_25DBC8400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch26AnswerSynthesisModelResultV0C8ResponseVGMd, &_sSay10OmniSearch26AnswerSynthesisModelResultV0C8ResponseVGMR);
  lazy protocol witness table accessor for type [AnswerSynthesisModelResult.AnswerResponse] and conformance <A> [A](&lazy protocol witness table cache variable for type [AnswerSynthesisModelResult.AnswerResponse] and conformance <A> [A], lazy protocol witness table accessor for type AnswerSynthesisModelResult.AnswerResponse and conformance AnswerSynthesisModelResult.AnswerResponse, MEMORY[0x277D0DE68]);
  Schema.Field.init<A>(name:type:)();
  Schema.Field.init<A>(name:type:)();
  Schema.Field.init<A>(name:type:)();
  return Schema.init(fields:)();
}

{
  v0 = type metadata accessor for Schema();
  __swift_allocate_value_buffer(v0, static MemoryCreationQUModelResponse.schema);
  __swift_project_value_buffer(v0, static MemoryCreationQUModelResponse.schema);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation6SchemaV5FieldVGMd, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation6SchemaV5FieldVGMR);
  type metadata accessor for Schema.Field();
  *(swift_allocObject() + 16) = xmmword_25DBC8900;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySSGGMd, &_sSDySSSaySSGGMR);
  lazy protocol witness table accessor for type [String : [String]] and conformance <> [A : B]();
  Schema.Field.init<A>(name:type:)();
  Schema.Field.init<A>(name:type:)();
  Schema.Field.init<A>(name:type:)();
  Schema.Field.init<A>(name:type:)();
  lazy protocol witness table accessor for type MemoryCreationQUModelResponseMusic and conformance MemoryCreationQUModelResponseMusic();
  Schema.Field.init<A>(name:type:)();
  Schema.Field.init<A>(name:type:)();
  Schema.Field.init<A>(name:type:)();
  Schema.Field.init<A>(name:type:)();
  Schema.Field.init<A>(name:type:)();
  return Schema.init(fields:)();
}

{
  v0 = type metadata accessor for Schema();
  __swift_allocate_value_buffer(v0, static MemoryCreationQUModelResponseMusic.schema);
  __swift_project_value_buffer(v0, static MemoryCreationQUModelResponseMusic.schema);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation6SchemaV5FieldVGMd, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation6SchemaV5FieldVGMR);
  type metadata accessor for Schema.Field();
  *(swift_allocObject() + 16) = xmmword_25DBC8400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySSGGMd, &_sSDySSSaySSGGMR);
  lazy protocol witness table accessor for type [String : [String]] and conformance <> [A : B]();
  Schema.Field.init<A>(name:type:)();
  Schema.Field.init<A>(name:type:)();
  Schema.Field.init<A>(name:type:)();
  return Schema.init(fields:)();
}

uint64_t AnswerSynthesisModelResult.AnswerResponse.schema.unsafeMutableAddressor()
{
  if (one-time initialization token for schema != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Schema();

  return __swift_project_value_buffer(v0, static AnswerSynthesisModelResult.AnswerResponse.schema);
}

void __swiftcall AnswerSynthesisModelResult.AnswerResponse.init(answer:docs:dialog:extractedProperties:)(OmniSearch::AnswerSynthesisModelResult::AnswerResponse *__return_ptr retstr, Swift::String answer, Swift::OpaquePointer docs, Swift::String_optional dialog, Swift::OpaquePointer_optional extractedProperties)
{
  retstr->answer = answer;
  retstr->docs = docs;
  retstr->dialog = dialog;
  retstr->extractedProperties.value._rawValue = extractedProperties.value._rawValue;
}

uint64_t AnswerSynthesisModelResult.AnswerResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch26AnswerSynthesisModelResultV0F8ResponseV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch26AnswerSynthesisModelResultV0F8ResponseV10CodingKeysOGMR);
  OUTLINED_FUNCTION_14();
  v7 = v6;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnswerSynthesisModelResult.AnswerResponse.CodingKeys and conformance AnswerSynthesisModelResult.AnswerResponse.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  OUTLINED_FUNCTION_10_6();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + 16);
    HIBYTE(v12) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_3_7();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = 2;
    OUTLINED_FUNCTION_10_6();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = *(v3 + 40);
    HIBYTE(v12) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    OUTLINED_FUNCTION_3_7();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisModelResult.AnswerResponse.CodingKeys and conformance AnswerSynthesisModelResult.AnswerResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisModelResult.AnswerResponse.CodingKeys and conformance AnswerSynthesisModelResult.AnswerResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisModelResult.AnswerResponse.CodingKeys and conformance AnswerSynthesisModelResult.AnswerResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisModelResult.AnswerResponse.CodingKeys and conformance AnswerSynthesisModelResult.AnswerResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisModelResult.AnswerResponse.CodingKeys and conformance AnswerSynthesisModelResult.AnswerResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisModelResult.AnswerResponse.CodingKeys and conformance AnswerSynthesisModelResult.AnswerResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisModelResult.AnswerResponse.CodingKeys and conformance AnswerSynthesisModelResult.AnswerResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisModelResult.AnswerResponse.CodingKeys and conformance AnswerSynthesisModelResult.AnswerResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisModelResult.AnswerResponse.CodingKeys and conformance AnswerSynthesisModelResult.AnswerResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisModelResult.AnswerResponse.CodingKeys and conformance AnswerSynthesisModelResult.AnswerResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisModelResult.AnswerResponse.CodingKeys and conformance AnswerSynthesisModelResult.AnswerResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisModelResult.AnswerResponse.CodingKeys and conformance AnswerSynthesisModelResult.AnswerResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisModelResult.AnswerResponse.CodingKeys and conformance AnswerSynthesisModelResult.AnswerResponse.CodingKeys);
  }

  return result;
}

uint64_t AnswerSynthesisModelResult.AnswerResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch26AnswerSynthesisModelResultV0F8ResponseV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch26AnswerSynthesisModelResultV0F8ResponseV10CodingKeysOGMR);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnswerSynthesisModelResult.AnswerResponse.CodingKeys and conformance AnswerSynthesisModelResult.AnswerResponse.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v16) = 0;
  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D83808], MEMORY[0x277D83978]);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_8_7();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v16;
  LOBYTE(v16) = 2;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x277D83808], MEMORY[0x277D83528]);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_8_7();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v9 = OUTLINED_FUNCTION_1_8();
  v10(v9);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v6;
  a2[1] = v15;
  a2[2] = v14;
  a2[3] = v12;
  a2[4] = v13;
  a2[5] = v16;
  return result;
}

uint64_t protocol witness for static Generable.schema.getter in conformance AnswerSynthesisModelResult.AnswerResponse@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for schema != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Schema();
  v3 = __swift_project_value_buffer(v2, static AnswerSynthesisModelResult.AnswerResponse.schema);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

double protocol witness for Decodable.init(from:) in conformance AnswerSynthesisModelResult.AnswerResponse@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  AnswerSynthesisModelResult.AnswerResponse.init(from:)(a1, v6);
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

uint64_t AnswerSynthesisModelResult.disambiguationDialog.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

OmniSearch::AnswerSynthesisModelResult::CodingKeys_optional __swiftcall AnswerSynthesisModelResult.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnswerSynthesisModelResult.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t AnswerSynthesisModelResult.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0x64696C6176;
}

OmniSearch::AnswerSynthesisModelResult::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnswerSynthesisModelResult.CodingKeys@<W0>(Swift::String *a1@<X0>, OmniSearch::AnswerSynthesisModelResult::CodingKeys_optional *a2@<X8>)
{
  result.value = AnswerSynthesisModelResult.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnswerSynthesisModelResult.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = AnswerSynthesisModelResult.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

OmniSearch::AnswerSynthesisModelResult::CodingKeys_optional protocol witness for CodingKey.init(stringValue:) in conformance AnswerSynthesisModelResult.CodingKeys@<W0>(uint64_t a1@<X0>, OmniSearch::AnswerSynthesisModelResult::CodingKeys_optional *a2@<X8>)
{
  result.value = AnswerSynthesisModelResult.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisModelResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisModelResult.CodingKeys and conformance AnswerSynthesisModelResult.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisModelResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisModelResult.CodingKeys and conformance AnswerSynthesisModelResult.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static AnswerSynthesisModelResult.AnswerResponse.schema.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Schema();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t AnswerSynthesisModelResult.init(answerResponses:disambiguationDialog:isValid:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t AnswerSynthesisModelResult.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch26AnswerSynthesisModelResultV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch26AnswerSynthesisModelResultV10CodingKeysOGMR);
  OUTLINED_FUNCTION_14();
  v6 = v5;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  v9 = v13 - v8;
  v11 = *v1;
  v10 = v1[1];
  v14 = v1[2];
  v15 = v10;
  v13[1] = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnswerSynthesisModelResult.CodingKeys and conformance AnswerSynthesisModelResult.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = v11;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch26AnswerSynthesisModelResultV0C8ResponseVGMd, &_sSay10OmniSearch26AnswerSynthesisModelResultV0C8ResponseVGMR);
  lazy protocol witness table accessor for type [AnswerSynthesisModelResult.AnswerResponse] and conformance <A> [A](&lazy protocol witness table cache variable for type [AnswerSynthesisModelResult.AnswerResponse] and conformance <A> [A], lazy protocol witness table accessor for type AnswerSynthesisModelResult.AnswerResponse and conformance AnswerSynthesisModelResult.AnswerResponse, MEMORY[0x277D83948]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

  if (!v2)
  {
    v17 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisModelResult.CodingKeys and conformance AnswerSynthesisModelResult.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisModelResult.CodingKeys and conformance AnswerSynthesisModelResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisModelResult.CodingKeys and conformance AnswerSynthesisModelResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisModelResult.CodingKeys and conformance AnswerSynthesisModelResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisModelResult.CodingKeys and conformance AnswerSynthesisModelResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisModelResult.CodingKeys and conformance AnswerSynthesisModelResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisModelResult.CodingKeys and conformance AnswerSynthesisModelResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisModelResult.CodingKeys and conformance AnswerSynthesisModelResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisModelResult.CodingKeys and conformance AnswerSynthesisModelResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisModelResult.CodingKeys and conformance AnswerSynthesisModelResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisModelResult.CodingKeys and conformance AnswerSynthesisModelResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisModelResult.CodingKeys and conformance AnswerSynthesisModelResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisModelResult.CodingKeys and conformance AnswerSynthesisModelResult.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisModelResult.AnswerResponse and conformance AnswerSynthesisModelResult.AnswerResponse()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisModelResult.AnswerResponse and conformance AnswerSynthesisModelResult.AnswerResponse;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisModelResult.AnswerResponse and conformance AnswerSynthesisModelResult.AnswerResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisModelResult.AnswerResponse and conformance AnswerSynthesisModelResult.AnswerResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisModelResult.AnswerResponse and conformance AnswerSynthesisModelResult.AnswerResponse;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisModelResult.AnswerResponse and conformance AnswerSynthesisModelResult.AnswerResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisModelResult.AnswerResponse and conformance AnswerSynthesisModelResult.AnswerResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisModelResult.AnswerResponse and conformance AnswerSynthesisModelResult.AnswerResponse;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisModelResult.AnswerResponse and conformance AnswerSynthesisModelResult.AnswerResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisModelResult.AnswerResponse and conformance AnswerSynthesisModelResult.AnswerResponse);
  }

  return result;
}

uint64_t AnswerSynthesisModelResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch26AnswerSynthesisModelResultV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch26AnswerSynthesisModelResultV10CodingKeysOGMR);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnswerSynthesisModelResult.CodingKeys and conformance AnswerSynthesisModelResult.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch26AnswerSynthesisModelResultV0C8ResponseVGMd, &_sSay10OmniSearch26AnswerSynthesisModelResultV0C8ResponseVGMR);
  lazy protocol witness table accessor for type [AnswerSynthesisModelResult.AnswerResponse] and conformance <A> [A](&lazy protocol witness table cache variable for type [AnswerSynthesisModelResult.AnswerResponse] and conformance <A> [A], lazy protocol witness table accessor for type AnswerSynthesisModelResult.AnswerResponse and conformance AnswerSynthesisModelResult.AnswerResponse, MEMORY[0x277D83978]);
  OUTLINED_FUNCTION_2_5();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v6 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v7;
  v8 = v6;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v10 = OUTLINED_FUNCTION_5_7();
  v11(v10);
  *a2 = v14;
  *(a2 + 8) = v8;
  *(a2 + 16) = v13;
  *(a2 + 24) = v9;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AnswerSynthesisModelResult(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 25))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AnswerSynthesisModelResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
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

uint64_t getEnumTagSinglePayload for AnswerSynthesisModelResult.AnswerResponse(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AnswerSynthesisModelResult.AnswerResponse(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for AnswerSynthesisModelResult.AnswerResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for AnswerSynthesisModelResult.AnswerResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *storeEnumTagSinglePayload for AnswerSynthesisModelResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

uint64_t lazy protocol witness table accessor for type [AnswerSynthesisModelResult.AnswerResponse] and conformance <A> [A](unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch26AnswerSynthesisModelResultV0C8ResponseVGMd, &_sSay10OmniSearch26AnswerSynthesisModelResultV0C8ResponseVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t static AnswerSynthesisRequest.calculateCharLimitForUserPrompt(tokenLimit:)(uint64_t a1)
{
  v3 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
  v4 = static NSUserDefaults.answerSynthesisTokenLimitNonUserPrompt.getter(v3);
  v5 = a1 - v4;
  if (__OFSUB__(a1, v4))
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = static NSUserDefaults.answerSynthesisTokenLimitOutput.getter(v4);
  if (__OFSUB__(v5, v6))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = v5 - v6;
  v1 = static NSUserDefaults.answerSynthesisTokenCharMultiplier.getter(v6) * v7;
  if ((LODWORD(v1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v1 <= -9.2234e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v1 < 9.2234e18)
  {
    if (one-time initialization token for answerSynthesis == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  OUTLINED_FUNCTION_0_5();
  swift_once();
LABEL_7:
  v8 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v8, static Logging.answerSynthesis);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v16 = swift_slowAlloc();
    *v11 = 136316418;
    OUTLINED_FUNCTION_25_7();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v11 + 4) = v12;
    *(v11 + 12) = 2048;
    *(v11 + 14) = a1;
    *(v11 + 22) = 2048;
    v13 = static NSUserDefaults.answerSynthesisTokenLimitNonUserPrompt.getter(v12);
    *(v11 + 24) = v13;
    *(v11 + 32) = 2048;
    v14 = static NSUserDefaults.answerSynthesisTokenLimitOutput.getter(v13);
    *(v11 + 34) = v14;
    *(v11 + 42) = 2048;
    *(v11 + 44) = static NSUserDefaults.answerSynthesisTokenCharMultiplier.getter(v14);
    *(v11 + 52) = 2048;
    *(v11 + 54) = v1;
    _os_log_impl(&dword_25D85C000, v9, v10, "%s\ntokenLimit=%ld\ntokenLimitNonUserPrompt=%ld\ntokenLimitOutput=%ld\ntokenCharMultiplier=%f\n-> charLimitForUserPrompt=%ld)", v11, 0x3Eu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  return v1;
}

void AnswerSynthesisRequest.init(query:requestedProperties:documents:onScreenText:context:charLimit:enableTruncation:)()
{
  OUTLINED_FUNCTION_155();
  v186 = v0;
  v2 = v1;
  v171 = v3;
  v187 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v168 = v13;
  v178 = type metadata accessor for SearchPropertyRequest(0);
  OUTLINED_FUNCTION_14();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_36();
  v177 = v18 - v17;
  v19 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_14();
  v180 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_109();
  v181 = (v22 - v23);
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v24);
  v183 = &v164 - v25;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v26);
  v182 = &v164 - v27;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v28);
  v179 = (&v164 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtSgMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtSgMR);
  v31 = OUTLINED_FUNCTION_114(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_109();
  v192 = v32 - v33;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v34);
  v190 = (&v164 - v35);
  v198[3] = 0;
  v198[4] = 0;
  v198[7] = 0;
  v198[8] = 0;
  v198[0] = v12;
  v198[1] = v10;
  if (one-time initialization token for answerSynthesis != -1)
  {
LABEL_84:
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v36, static Logging.answerSynthesis);

  v184 = v10;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.info.getter();
  v39 = os_log_type_enabled(v37, v38);
  v167 = v15;
  v169 = v19;
  if (v39)
  {
    OUTLINED_FUNCTION_9_4();
    v40 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v41 = swift_slowAlloc();
    v193 = v41;
    *v40 = 136315650;
    OUTLINED_FUNCTION_14_5();
    *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v40 + 12) = 2048;
    *(v40 + 14) = v8[2];

    *(v40 + 22) = 2048;
    v42 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
    *(v40 + 24) = static NSUserDefaults.answerSynthesisRequestedPropertiesPerRequest.getter(v42);
    _os_log_impl(&dword_25D85C000, v37, v38, "%s requestedProperties.count=%ld, max allowed answerSynthesisRequestedPropertiesPerRequest=%ld", v40, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {
  }

  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);

  v44 = static NSUserDefaults.answerSynthesisRequestedPropertiesPerRequest.getter(v43);
  v170 = v8;
  specialized Collection.prefix(_:)(v44, v8, specialized Array.index(_:offsetBy:limitedBy:), specialized Array.subscript.getter);
  v46 = v45;
  v48 = v47;
  if (v47)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v55 = swift_dynamicCastClass();
    if (!v55)
    {
      swift_unknownObjectRelease();
      v55 = MEMORY[0x277D84F90];
    }

    v56 = *(v55 + 16);

    if (__OFSUB__(v48 >> 1, v46))
    {
      goto LABEL_86;
    }

    if (v56 != (v48 >> 1) - v46)
    {
      goto LABEL_87;
    }

    v54 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v54)
    {
      goto LABEL_14;
    }

    v54 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  while (1)
  {
    v49 = OUTLINED_FUNCTION_88();
    specialized _copyCollectionToContiguousArray<A>(_:)(v49, v50, v46, v48, v51, v52);
    v54 = v53;
LABEL_13:
    swift_unknownObjectRelease();
LABEL_14:
    v57 = MEMORY[0x277D84F90];
    v198[2] = v54;
    v58 = (v171 + *(type metadata accessor for AnswerSynthesisRequestContext(0) + 24));
    v59 = *v58;
    v165 = v58[1];
    v166 = v59;
    v198[5] = v59;
    v198[6] = v165;

    AnswerSynthesisRequestContext.llmPromptString.getter();
    v198[10] = v60;
    v198[11] = v61;
    v198[9] = v57;
    v62 = *(v6 + 16);
    if (!v62)
    {
      break;
    }

    if (v187)
    {
      v63 = v187;
    }

    else
    {
      v63 = v57;
    }

    v46 = *(v63 + 16);

    if (!__OFADD__(v62, v46))
    {
      v175 = v2 / (v62 + v46);
      goto LABEL_21;
    }

    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    swift_unknownObjectRelease();
  }

  v175 = v2;
LABEL_21:
  v64 = v187;
  swift_bridgeObjectRetain_n();

  v10 = Logger.logObject.getter();
  v65 = static os_log_type_t.debug.getter();
  v66 = OUTLINED_FUNCTION_20_3();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v69 = swift_slowAlloc();
    v193 = v69;
    *v68 = 136316162;
    OUTLINED_FUNCTION_14_5();
    v174 = v70;
    *(v68 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v68 + 12) = 2048;
    *(v68 + 14) = v2;
    *(v68 + 22) = 2048;
    *(v68 + 24) = *(v6 + 16);

    *(v68 + 32) = 2048;
    if (v64)
    {
      v71 = v64;
    }

    else
    {
      v71 = v57;
    }

    v72 = *(v71 + 16);

    *(v68 + 34) = v72;

    *(v68 + 42) = 2048;
    *(v68 + 44) = v175;
    _os_log_impl(&dword_25D85C000, v10, v65, "%s charLimit=%ld, documents.count=%ld, onScreenText.count=%ld, charLimitPerDocument=%ld", v68, 0x34u);
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v174 = 0x800000025DBF0500;
  }

  v19 = v169;
  v8 = v181;
  v15 = v182;
  v73 = v188;
  v74 = v192;
  v2 = 0;
  v75 = *(v6 + 16);
  *(&v76 + 1) = 2;
  v185 = xmmword_25DBC8180;
  *&v76 = 136315651;
  v172 = v76;
  v191 = MEMORY[0x277D84F90];
  v189 = v75;
  v173 = v6;
  while (1)
  {
    if (v2 == v75)
    {
      v77 = 1;
      v2 = v75;
    }

    else
    {
      if (v2 < 0)
      {
        goto LABEL_81;
      }

      if (v2 >= *(v6 + 16))
      {
        goto LABEL_82;
      }

      v10 = (v2 + 1);
      v78 = v179;
      OUTLINED_FUNCTION_42_5();
      *v78 = v2;
      OUTLINED_FUNCTION_4_8();
      _s10OmniSearch0B6ResultVWOcTm_2();
      v74 = v192;
      outlined init with take of (Int, SearchCATEntity)();
      v77 = 0;
      ++v2;
    }

    __swift_storeEnumTagSinglePayload(v74, v77, 1, v73);
    v79 = v190;
    outlined init with take of (Int, SearchCATEntity)();
    if (__swift_getEnumTagSinglePayload(v79, 1, v73) == 1)
    {
      break;
    }

    v10 = *v79;
    outlined init with take of SearchResult(v79 + *(v73 + 48), v15);
    if (*(v15 + *(v19 + 36)))
    {
      v80 = keyForSearchResult(_:idx:)(v15, v10);
      if (v81)
      {
        v90 = v80;
        v91 = v81;
        SearchResultItem.associatedValue.getter(&v193);
        v92 = v195;
        v93 = v196;
        __swift_project_boxed_opaque_existential_1(&v193, v195);
        v94 = (*(v93 + 56))(v166, v165, v92, v93);
        v96 = v95;
        __swift_destroy_boxed_opaque_existential_1Tm(&v193);
        if (v186)
        {
          v97 = specialized Collection.prefix(_:)(v175, v94, v96);
          v94 = MEMORY[0x25F89F5B0](v97);
          v96 = v98;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
        inited = swift_initStackObject();
        *(inited + 16) = v185;
        *(inited + 32) = v90;
        *(inited + 40) = v91;
        *(inited + 48) = v94;
        *(inited + 56) = v96;
        v10 = Dictionary.init(dictionaryLiteral:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v191 = v103;
        }

        v15 = v182;
        v73 = v188;
        v101 = *(v191 + 16);
        v100 = *(v191 + 24);
        if (v101 >= v100 >> 1)
        {
          OUTLINED_FUNCTION_26_3(v100);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v191 = v104;
        }

        OUTLINED_FUNCTION_2_6();
        outlined destroy of AnswerSynthesisRequestContext();
        v102 = v191;
        *(v191 + 16) = v101 + 1;
        *(v102 + 8 * v101 + 32) = v10;
        v198[9] = v102;
      }

      else
      {
        OUTLINED_FUNCTION_2_6();
        outlined destroy of AnswerSynthesisRequestContext();
        v73 = v188;
      }
    }

    else
    {
      _s10OmniSearch0B6ResultVWOcTm_2();
      _s10OmniSearch0B6ResultVWOcTm_2();
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v82, v83))
      {
        OUTLINED_FUNCTION_9_4();
        v84 = swift_slowAlloc();
        v176 = swift_slowAlloc();
        v193 = v176;
        *v84 = v172;
        OUTLINED_FUNCTION_14_5();
        *(v84 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        *(v84 + 12) = 2085;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
        v85 = CodableNSSecureCoding.wrappedValue.getter();
        v86 = [v85 uniqueIdentifier];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        outlined destroy of AnswerSynthesisRequestContext();
        v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v84 + 14) = v87;
        *(v84 + 22) = 2080;
        v8 = v181;
        v88 = CodableNSSecureCoding.wrappedValue.getter();
        outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(v88);
        outlined destroy of AnswerSynthesisRequestContext();
        v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v84 + 24) = v89;
        _os_log_impl(&dword_25D85C000, v82, v83, "%s skipping adding document %{sensitive}s for bundle: %s as it is not eligbile to use in answer synthesis requests", v84, 0x20u);
        v10 = v176;
        swift_arrayDestroy();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        v73 = v188;
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();

        v15 = v182;
        v6 = v173;
      }

      else
      {

        v10 = type metadata accessor for SearchResult;
        outlined destroy of AnswerSynthesisRequestContext();
        outlined destroy of AnswerSynthesisRequestContext();
        v15 = v182;
      }

      outlined destroy of AnswerSynthesisRequestContext();
    }

    v74 = v192;
    v75 = v189;
  }

  v105 = v187;
  if (v187)
  {
    v192 = *(v187 + 16);

    v19 = 0;
    v8 = (v105 + 40);
    v15 = v191;
    while (1)
    {
      if (v192 == v19)
      {

        goto LABEL_62;
      }

      if (v19 >= *(v105 + 16))
      {
        break;
      }

      v191 = v15;
      v106 = *(v8 - 1);
      v6 = *v8;
      v193 = 0x6E65657263736E6FLL;
      v194 = 0xE90000000000005FLL;
      v197 = (v19 + 1);

      v107 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = &v193;
      MEMORY[0x25F89F6C0](v107);

      v2 = v193;
      v15 = v194;
      if (v186)
      {
        if (v175 < 0)
        {
          goto LABEL_83;
        }

        String.index(_:offsetBy:limitedBy:)();
        String.subscript.getter();
        OUTLINED_FUNCTION_40_7();

        v108 = OUTLINED_FUNCTION_88();
        v106 = MEMORY[0x25F89F5B0](v108);
        v6 = v109;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
      v110 = swift_initStackObject();
      *(v110 + 16) = v185;
      *(v110 + 32) = v2;
      *(v110 + 40) = v15;
      *(v110 + 48) = v106;
      *(v110 + 56) = v6;
      v10 = Dictionary.init(dictionaryLiteral:)();
      v15 = v191;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v15 = v113;
      }

      v105 = v187;
      v112 = *(v15 + 16);
      v111 = *(v15 + 24);
      if (v112 >= v111 >> 1)
      {
        OUTLINED_FUNCTION_26_3(v111);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v15 = v114;
      }

      *(v15 + 16) = v112 + 1;
      *(v15 + 8 * v112 + 32) = v10;
      v198[9] = v15;
      v8 += 2;
      ++v19;
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

LABEL_62:
  v198[12] = v105;
  v115 = v170[2];
  if (v115 <= 1)
  {

    v117 = 0;
  }

  else
  {
    v197 = MEMORY[0x277D84F90];
    v116 = v170;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v115, 0);
    v117 = v197;
    OUTLINED_FUNCTION_42_5();
    v119 = v116 + v118;
    v121 = *(v120 + 72);
    do
    {
      _s10OmniSearch0B6ResultVWOcTm_2();
      EntityProperty.wrappedValue.getter();
      v122 = v193;
      v123 = v194;
      outlined destroy of AnswerSynthesisRequestContext();
      v197 = v117;
      v125 = v117[2];
      v124 = v117[3];
      if (v125 >= v124 >> 1)
      {
        v127 = OUTLINED_FUNCTION_26_3(v124);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v127, v125 + 1, 1);
        v117 = v197;
      }

      v117[2] = v125 + 1;
      v126 = &v117[2 * v125];
      v126[4] = v122;
      v126[5] = v123;
      v119 += v121;
      --v115;
    }

    while (v115);
  }

  v198[13] = v117;
  type metadata accessor for FeatureFlagService();
  swift_initStackObject();
  v128 = FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_dynamicDocumentTruncation);
  v129 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  v130 = OUTLINED_FUNCTION_20_3();
  v132 = os_log_type_enabled(v130, v131);
  if (!v128)
  {
    if (v132)
    {
      v155 = OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_9_4();
      v156 = swift_slowAlloc();
      v193 = v156;
      *v155 = 136315138;
      OUTLINED_FUNCTION_14_5();
      *(v155 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_21_6();
      _os_log_impl(v157, v158, v159, v160, v161, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v156);
      v162 = OUTLINED_FUNCTION_19_5();
      MEMORY[0x25F8A1050](v162);
      v163 = OUTLINED_FUNCTION_7_6();
      MEMORY[0x25F8A1050](v163);
    }

    goto LABEL_78;
  }

  if (v132)
  {
    v133 = OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_9_4();
    v134 = swift_slowAlloc();
    v193 = v134;
    *v133 = 136315138;
    OUTLINED_FUNCTION_14_5();
    *(v133 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_21_6();
    _os_log_impl(v135, v136, v137, v138, v139, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v134);
    v140 = OUTLINED_FUNCTION_19_5();
    MEMORY[0x25F8A1050](v140);
    v141 = OUTLINED_FUNCTION_7_6();
    MEMORY[0x25F8A1050](v141);
  }

  AnswerSynthesisRequest.truncatePersonalDataSourcesToTokenLimit()();
  if (v142)
  {
    v143 = v142;
    v129 = Logger.logObject.getter();
    v144 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v129, v144))
    {
      v145 = OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_9_4();
      v146 = swift_slowAlloc();
      v193 = v146;
      *v145 = 136315138;
      v197 = v142;
      v147 = v142;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      String.init<A>(describing:)();
      v148 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v145 + 4) = v148;
      OUTLINED_FUNCTION_22_4();
      _os_log_impl(v149, v150, v151, v152, v153, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v146);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      v154 = OUTLINED_FUNCTION_19_5();
      MEMORY[0x25F8A1050](v154);

      goto LABEL_79;
    }

LABEL_78:
  }

LABEL_79:
  outlined destroy of AnswerSynthesisRequestContext();
  memcpy(v168, v198, 0x70uLL);
  OUTLINED_FUNCTION_148();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnswerSynthesisRequest.userPrompt()()
{
  OUTLINED_FUNCTION_60_1();
  v2 = type metadata accessor for String.Encoding();
  v3 = OUTLINED_FUNCTION_114(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  v4 = type metadata accessor for JSONEncoder.OutputFormatting();
  v5 = OUTLINED_FUNCTION_114(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[4];
  v19 = v0[3];
  v9 = v0[6];
  v18 = v0[5];
  v10 = v0[9];
  v20 = v0[10];
  v11 = v0[11];
  v12 = v0[13];
  type metadata accessor for JSONEncoder();
  swift_allocObject();

  JSONEncoder.init()();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  v22[0] = v6;
  v22[1] = v7;
  v22[2] = 0;
  v22[3] = v19;
  v22[4] = v8;
  v22[5] = v18;
  v22[6] = v9;
  v22[7] = 0;
  v22[8] = 0;
  v22[9] = v10;
  v22[10] = v20;
  v22[11] = v11;
  v22[12] = 0;
  v22[13] = v12;
  memcpy(v21, v22, sizeof(v21));
  lazy protocol witness table accessor for type AnswerSynthesisRequest and conformance AnswerSynthesisRequest();
  dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v1)
  {

    outlined destroy of AnswerSynthesisRequest(v22);
  }

  else
  {
    outlined destroy of AnswerSynthesisRequest(v22);
    static String.Encoding.utf8.getter();
    OUTLINED_FUNCTION_45_0();
    String.init(data:encoding:)();
    v13 = OUTLINED_FUNCTION_45_0();
    outlined consume of Data._Representation(v13, v14);
  }

  OUTLINED_FUNCTION_61_2();
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

void AnswerSynthesisRequest.onScreenTextToSearchResultsDictionary.getter()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v2 = type metadata accessor for SpotlightRankingItem();
  OUTLINED_FUNCTION_14();
  v86 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v69 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v8 = OUTLINED_FUNCTION_114(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_109();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v67 - v13;
  v83 = type metadata accessor for SearchResultItem(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_36();
  v18 = v17 - v16;
  v19 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_14();
  v82 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_109();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v81 = &v67 - v26;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v27);
  v29 = &v67 - v28;
  v80 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_14();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_36();
  v79 = v34 - v33;
  v84 = type metadata accessor for OnScreen();
  MEMORY[0x28223BE20](v84);
  if (*(v1 + 96))
  {
    v37 = *(v1 + 96);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
  }

  if (*(v37 + 16))
  {
    v87 = *(v37 + 16);
    v77 = v19;
    v78 = v18;
    v72 = (v31 + 8);
    v71 = (v35 + 16);
    v68 = (v86 + 32);
    v70 = (v35 + 8);
    v38 = &v67 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = MEMORY[0x277D84F90];

    v67 = v37;
    v40 = v37 + 40;
    v41 = v84;
    v75 = v11;
    v76 = v24;
    v73 = v38;
    v74 = v29;
    do
    {
      v85 = v39;
      v86 = v40;

      v42 = v79;
      UUID.init()();
      UUID.uuidString.getter();
      (*v72)(v42, v80);
      OnScreen.init(id:text:)();
      (*v71)(v78, v38, v41);
      swift_storeEnumTagMultiPayload();
      v43 = objc_allocWithZone(MEMORY[0x277CC34B0]);
      v44 = [v43 init];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v2);
      v48 = v77;
      v49 = v81;
      *&v81[v77[7]] = MEMORY[0x277D84F90];
      v50 = (v49 + v48[10]);
      *v50 = 0;
      v50[1] = 0;
      _s10OmniSearch0B6ResultVWOcTm_2();
      type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
      lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
      v51 = v44;
      v52 = v75;
      CodableNSSecureCoding.init(wrappedValue:)();
      outlined init with copy of EagerResolutionService?();
      if (__swift_getEnumTagSinglePayload(v52, 1, v2) == 1)
      {
        outlined destroy of IntentApplication?(v52, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        v95 = 1;
        v94 = 1;
        v93 = 1;
        v92 = 1;
        v91 = 1;
        v90 = 1;
        v89 = 1;
        v88 = 1;
        SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)();

        outlined destroy of IntentApplication?(v14, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_17_6();
      }

      else
      {

        outlined destroy of IntentApplication?(v14, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_17_6();
        v53 = *v68;
        v54 = v69;
        (*v68)(v69, v52, v2);
        v53(v49 + v48[5], v54, v2);
      }

      *(v49 + v48[8]) = 0;
      *(v49 + v48[9]) = 1;
      outlined init with take of SearchResult(v49, v74);
      OUTLINED_FUNCTION_4_8();
      v55 = v76;
      _s10OmniSearch0B6ResultVWOcTm_2();
      v39 = v85;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v84;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v61 = OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v61, v62, v63, v39);
        v39 = v64;
      }

      v58 = *(v39 + 16);
      v57 = *(v39 + 24);
      if (v58 >= v57 >> 1)
      {
        v65 = OUTLINED_FUNCTION_26_3(v57);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v65, v58 + 1, 1, v39);
        v39 = v66;
      }

      OUTLINED_FUNCTION_2_6();
      outlined destroy of AnswerSynthesisRequestContext();
      v38 = v73;
      (*v70)(v73, v41);
      *(v39 + 16) = v58 + 1;
      OUTLINED_FUNCTION_42_5();
      outlined init with take of SearchResult(v55, v39 + v59 + *(v60 + 72) * v58);
      v40 = v86 + 16;
      --v87;
    }

    while (v87);
  }

  else
  {

    v39 = MEMORY[0x277D84F90];
  }

  Array<A>.dictionaryByKey()(v39);

  OUTLINED_FUNCTION_148();
}

void AnswerSynthesisRequestContext.init(mode:assistantLocale:ecrResults:featureFlagService:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = type metadata accessor for AnswerSynthesisRequestContext(0);
  v13 = v12[5];
  type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = (v11 + v12[6]);
  v19 = (v11 + v12[7]);
  *v19 = 25965;
  v19[1] = 0xE200000000000000;
  outlined assign with take of IntentSystemContext.AssistantContext.InteractionMode?(v9, v11 + v13);
  *v18 = v7;
  v18[1] = v5;
  *v11 = v3;
  *(v11 + v12[8]) = v1;
  OUTLINED_FUNCTION_148();
}

uint64_t AnswerSynthesisRequestContext.ecrResults.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AnswerSynthesisRequestContext.mode.setter()
{
  v2 = OUTLINED_FUNCTION_42_2();
  v3 = v1 + *(type metadata accessor for AnswerSynthesisRequestContext(v2) + 20);

  return outlined assign with take of IntentSystemContext.AssistantContext.InteractionMode?(v0, v3);
}

void (*AnswerSynthesisRequestContext.mode.modify())()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for AnswerSynthesisRequestContext(v0);
  return _s10OmniSearch11GeoLocationVSgWOi_;
}

uint64_t AnswerSynthesisRequestContext.assistantLocale.getter()
{
  type metadata accessor for AnswerSynthesisRequestContext(0);

  return OUTLINED_FUNCTION_94();
}

uint64_t AnswerSynthesisRequestContext.assistantLocale.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = (v1 + *(type metadata accessor for AnswerSynthesisRequestContext(0) + 24));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

void (*AnswerSynthesisRequestContext.assistantLocale.modify())()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for AnswerSynthesisRequestContext(v0);
  return _s10OmniSearch11GeoLocationVSgWOi_;
}

uint64_t AnswerSynthesisRequestContext.featureFlagService.getter()
{
  type metadata accessor for AnswerSynthesisRequestContext(0);
}

uint64_t AnswerSynthesisRequestContext.init(query:mode:assistantLocale:ecrResults:featureFlagService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;

  return MEMORY[0x2822009F8](AnswerSynthesisRequestContext.init(query:mode:assistantLocale:ecrResults:featureFlagService:));
}

uint64_t AnswerSynthesisRequestContext.init(query:mode:assistantLocale:ecrResults:featureFlagService:)()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v7 = type metadata accessor for AnswerSynthesisRequestContext(0);
  v8 = v7[5];
  type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = (v6 + v7[6]);
  v14 = (v6 + v7[7]);
  *v14 = 25965;
  v14[1] = 0xE200000000000000;
  outlined assign with take of IntentSystemContext.AssistantContext.InteractionMode?(v5, v6 + v8);
  *v13 = v4;
  v13[1] = v3;
  *v6 = v2;
  *(v6 + v7[8]) = v1;
  v15 = v0[1];

  return v15();
}

void AnswerSynthesisRequestContext.llmPromptString.getter()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  type metadata accessor for Date.FormatStyle();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v5);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v100 - v7;
  v9 = type metadata accessor for Date();
  OUTLINED_FUNCTION_14();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_36();
  v15 = v14 - v13;
  v114 = 0;
  v115 = 0xE000000000000000;
  v105 = type metadata accessor for AnswerSynthesisRequestContext(0);
  v16 = (*(**(v0 + v105[8]) + 80))(17);
  v17 = 0;
  v104 = 0;
  if (v16)
  {
    v103 = v3;
    if (one-time initialization token for answerSynthesis != -1)
    {
LABEL_46:
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v18, static Logging.answerSynthesis);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_172();
      *v21 = 0;
      _os_log_impl(&dword_25D85C000, v19, v20, "OmniSearch/asTimeContext FF enabled. Include time context in AS request.", v21, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v22 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
    static NSUserDefaults.currentTime.getter(v22, v23, v24, v25, v26);
    if (v27)
    {
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v28, v29, v30, v9);
      Date.init()();
      if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
      {
        outlined destroy of IntentApplication?(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    else
    {
      Date.init(timeIntervalSinceReferenceDate:)();
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
      (*(v11 + 32))(v15, v8, v9);
    }

    static LLMFormatter.dateTimeFormatter(locale:includeWeekday:timeZone:)(*(v1 + v105[6]), *(v1 + v105[6] + 8), 0, 0, 0, v31, v32, v33, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
    lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle();
    OUTLINED_FUNCTION_45_0();
    Date.formatted<A>(_:)();
    v111 = v106;
    v112 = v107;

    MEMORY[0x25F89F6C0](46, 0xE100000000000000);

    v34 = v111;
    v35 = v112;
    OUTLINED_FUNCTION_27_5();
    _StringGuts.grow(_:)(29);

    v106 = 0xD00000000000001BLL;
    v107 = 0x800000025DBF0560;
    MEMORY[0x25F89F6C0](v34, v35);

    LLMFormatter.sanitized.getter();
    v17 = v36;
    v104 = v37;

    v38 = OUTLINED_FUNCTION_45_0();
    v39(v38);
    (*(v11 + 8))(v15, v9);
  }

  v40 = *v1;
  if (!*v1)
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v85, static Logging.answerSynthesis);
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();
    v88 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = OUTLINED_FUNCTION_172();
      *v90 = 0;
      _os_log_impl(&dword_25D85C000, v86, v87, "ECR results are nil. Skip creating LLM prompt for ECR results.", v90, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    goto LABEL_40;
  }

  v113 = *v1;
  v41 = *(v40 + 16);
  v42 = one-time initialization token for answerSynthesis;

  if (!v41)
  {
    if (v42 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v91 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v91, static Logging.answerSynthesis);
    v86 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v92 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v92, v93))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_22_4();
      _os_log_impl(v94, v95, v96, v97, v98, 2u);
      v99 = OUTLINED_FUNCTION_19_5();
      MEMORY[0x25F8A1050](v99);
    }

LABEL_40:

    goto LABEL_44;
  }

  if (v42 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  v101 = __swift_project_value_buffer(v43, static Logging.answerSynthesis);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.info.getter();
  v46 = OUTLINED_FUNCTION_20_3();
  v48 = os_log_type_enabled(v46, v47);
  v102 = v17;
  if (v48)
  {
    v9 = OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_9_4();
    v49 = swift_slowAlloc();
    v106 = v49;
    *v9 = 136642819;

    Dictionary.description.getter();

    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v9 + 4) = v50;
    _os_log_impl(&dword_25D85C000, v44, v45, "ECR results: %{sensitive}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v51 = (v1 + v105[7]);
  v52 = *v51;
  v53 = v51[1];
  swift_beginAccess();
  v54 = specialized Dictionary._Variant.removeValue(forKey:)(v52, v53);
  v11 = v55;
  swift_endAccess();
  v56 = MEMORY[0x277D837D0];
  v57 = MEMORY[0x277D83838];
  if (v11)
  {
    OUTLINED_FUNCTION_27_5();
    MEMORY[0x25F89F5D0](16);
    v111 = v106;
    v112 = v107;
    MEMORY[0x25F89F6C0](0x206D612049, 0xE500000000000000);
    v109 = v56;
    v110 = v57;
    v106 = v54;
    v107 = v11;
    LLMFormatter.StringInterpolation.appendInterpolation(_:)();
    outlined destroy of IntentApplication?(&v106, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    MEMORY[0x25F89F6C0](46, 0xE100000000000000);
    LLMFormatter.sanitized.getter();
    v59 = v58;
    v61 = v60;

    MEMORY[0x25F89F6C0](v59, v61);
  }

  v1 = (v113 + 64);
  v62 = 1 << *(v113 + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v8 = v63 & *(v113 + 64);
  v64 = (v62 + 63) >> 6;
  v103 = v113;

  v15 = 0;
  if (v8)
  {
    while (1)
    {
      v65 = v15;
LABEL_26:
      v66 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v67 = (v65 << 10) | (16 * v66);
      v68 = *(v103 + 56);
      v69 = *(v103 + 48) + v67;
      v70 = *(v69 + 8);
      v105 = *v69;
      v71 = (v68 + v67);
      v73 = *v71;
      v72 = v71[1];

      MEMORY[0x25F89F6C0](32, 0xE100000000000000);
      OUTLINED_FUNCTION_27_5();
      MEMORY[0x25F89F5D0](28);
      v111 = v106;
      v112 = v107;
      v74 = MEMORY[0x277D837D0];
      v109 = MEMORY[0x277D837D0];
      v11 = MEMORY[0x277D83838];
      v110 = MEMORY[0x277D83838];
      v106 = v73;
      v107 = v72;
      LLMFormatter.StringInterpolation.appendInterpolation(_:)();
      v9 = &_ss23CustomStringConvertible_pSgMR;
      outlined destroy of IntentApplication?(&v106, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
      MEMORY[0x25F89F6C0](0x20796D20736920, 0xE700000000000000);
      v109 = v74;
      v110 = v11;
      v106 = v105;
      v107 = v70;
      LLMFormatter.StringInterpolation.appendInterpolation(_:)();
      outlined destroy of IntentApplication?(&v106, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
      MEMORY[0x25F89F6C0](46, 0xE100000000000000);
      LLMFormatter.sanitized.getter();
      v76 = v75;
      v78 = v77;

      MEMORY[0x25F89F6C0](v76, v78);

      if (!v8)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
LABEL_22:
    v65 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v65 >= v64)
    {
      break;
    }

    v8 = v1[v65];
    ++v15;
    if (v8)
    {
      v15 = v65;
      goto LABEL_26;
    }
  }

  MEMORY[0x25F89F6C0](32, 0xE100000000000000);
  v79 = v104;
  if (v104)
  {

    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_9_4();
      v83 = swift_slowAlloc();
      v106 = v83;
      *v82 = 136315138;
      v84 = v102;
      *(v82 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      _os_log_impl(&dword_25D85C000, v80, v81, "Time context: %s", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v83);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    else
    {

      v84 = v102;
    }

    MEMORY[0x25F89F6C0](v84, v79);
  }

LABEL_44:
  OUTLINED_FUNCTION_148();
}

uint64_t AnswerSynthesisRequest.query.setter()
{
  OUTLINED_FUNCTION_93();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AnswerSynthesisRequest.requestedProperties.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t AnswerSynthesisRequest.mode.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t AnswerSynthesisRequest.locale.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t AnswerSynthesisRequest.currentTime.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t AnswerSynthesisRequest.personalDataSources.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t AnswerSynthesisRequest.context.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t AnswerSynthesisRequest.onScreenText.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t AnswerSynthesisRequest.searchPropertyTypes.setter(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

uint64_t specialized Collection.prefix(_:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();
    v3 = String.subscript.getter();

    return v3;
  }

  return result;
}

uint64_t specialized Collection.prefix(_:)(uint64_t result, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t), uint64_t (*a4)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    result = a3(0, result, v5, a2);
    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = result;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      a4(0);
      OUTLINED_FUNCTION_40_7();

      return OUTLINED_FUNCTION_88();
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized Collection.prefix(_:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      v6 = a3 - a2;
    }

    else
    {
      v6 = 0;
    }

    v7 = OUTLINED_FUNCTION_43_5();
    result = specialized RandomAccessCollection<>.distance(from:to:)(v7, v8, v9, v10);
    if (!v5 || result >= v5)
    {
      result = specialized RandomAccessCollection<>.index(_:offsetBy:)(0, v5, a2, a3);
      v6 = result;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      return OUTLINED_FUNCTION_43_5();
    }
  }

  __break(1u);
  return result;
}

uint64_t keyForSearchResult(_:idx:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SearchResult(0);
  v4 = OUTLINED_FUNCTION_114(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_5;
  }

  SearchResultItem.type.getter(&v21);
  if (v21 == 29)
  {
    v19 = 0x6E65657263736E6FLL;
    v20 = 0xE90000000000005FLL;
LABEL_7:
    v18 = v5;
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x25F89F6C0](v9);

    return v19;
  }

  if (one-time initialization token for supportedTypeMap != -1)
  {
    goto LABEL_15;
  }

LABEL_5:
  v6 = static AnswerSynthesisController.supportedTypeMap;
  SearchResultItem.type.getter(&v19);
  v7 = specialized Dictionary.subscript.getter(v19, v6);
  if (v8)
  {
    v19 = v7;
    v20 = v8;
    MEMORY[0x25F89F6C0](95, 0xE100000000000000);
    goto LABEL_7;
  }

  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logging.answerSynthesis);
  OUTLINED_FUNCTION_4_8();
  _s10OmniSearch0B6ResultVWOcTm_2();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_9_4();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136315138;
    SearchResultItem.type.getter(&v18);
    SearchResultKey.rawValue.getter();
    OUTLINED_FUNCTION_2_6();
    outlined destroy of AnswerSynthesisRequestContext();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v14 + 4) = v16;
    _os_log_impl(&dword_25D85C000, v12, v13, "Search result type not supported for answer synthesis: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    v17 = OUTLINED_FUNCTION_7_6();
    MEMORY[0x25F8A1050](v17);
  }

  else
  {

    OUTLINED_FUNCTION_2_6();
    outlined destroy of AnswerSynthesisRequestContext();
  }

  return 0;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnswerSynthesisRequest.truncatePersonalDataSourcesToTokenLimit()()
{
  OUTLINED_FUNCTION_60_1();
  v1 = v0;
  v52 = static AnswerSynthesisRequest.getModelTokenLimit()();
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logging.answerSynthesis);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = OUTLINED_FUNCTION_20_3();
  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_30_7();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v8 = swift_slowAlloc();
    v51[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v7 + 12) = 2048;
    *(v7 + 14) = v52;
    _os_log_impl(&dword_25D85C000, v3, v4, "%s tokenLimit to use to dynamically trim source documents: %ld", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  memcpy(v51, v1, 0x70uLL);
  memcpy(__dst, v1, sizeof(__dst));
  outlined init with copy of AnswerSynthesisRequest(v51, v49);
  v9 = AnswerSynthesisRequest.calculateTokenCount()();
  if (v10)
  {
    memcpy(v49, __dst, sizeof(v49));
    v11 = v49;
LABEL_7:
    outlined destroy of AnswerSynthesisRequest(v11);
  }

  else
  {
    v12 = v9;
    v13 = v51[9];
    memcpy(v49, __dst, sizeof(v49));
    outlined destroy of AnswerSynthesisRequest(v49);
LABEL_10:
    if (v12 >= v52)
    {
      while (*(v13 + 16))
      {
        v14 = v1[1];
        v15 = v1[8];
        v13 = v1[9];
        *&__src[0] = *v1;
        *(&__src[0] + 1) = v14;
        v16 = *(v1 + 2);
        __src[1] = *(v1 + 1);
        __src[2] = v16;
        __src[3] = *(v1 + 3);
        *&__src[4] = v15;
        *(&__src[4] + 1) = v13;
        v17 = *(v1 + 6);
        __src[5] = *(v1 + 5);
        __src[6] = v17;
        memcpy(v46, __src, sizeof(v46));
        outlined init with copy of AnswerSynthesisRequest(__src, v45);
        IndexTo = AnswerSynthesisRequest.getLastIndexToTruncate()();
        value = IndexTo.value;
        is_nil = IndexTo.is_nil;
        memcpy(v48, v46, sizeof(v48));
        outlined destroy of AnswerSynthesisRequest(v48);
        if (!is_nil)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew()();
            v13 = v42;
          }

          v20 = *(v13 + 16);
          if (value >= v20)
          {
            __break(1u);
            return;
          }

          v21 = v20 - 1;
          memmove((v13 + 8 * value + 32), (v13 + 8 * value + 40), 8 * (v20 - 1 - value));
          *(v13 + 16) = v21;

          v1[9] = v13;
          v22 = *(v13 + 16);
          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.debug.getter();
          v25 = OUTLINED_FUNCTION_20_3();
          if (os_log_type_enabled(v25, v26))
          {
            OUTLINED_FUNCTION_30_7();
            v27 = swift_slowAlloc();
            OUTLINED_FUNCTION_9_4();
            v28 = swift_slowAlloc();
            *&v46[0] = v28;
            *v27 = 136315394;
            *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            *(v27 + 12) = 2048;
            *(v27 + 14) = v22;
            _os_log_impl(&dword_25D85C000, v23, v24, "%s Dropped the last non-onScreenText document. Number of personal_data_sources docs left: %ld", v27, 0x16u);
            __swift_destroy_boxed_opaque_existential_1Tm(v28);
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
          }

          v29 = v1[1];
          v30 = v1[8];
          v13 = v1[9];
          *&v46[0] = *v1;
          *(&v46[0] + 1) = v29;
          v31 = *(v1 + 2);
          v46[1] = *(v1 + 1);
          v46[2] = v31;
          v46[3] = *(v1 + 3);
          *&v46[4] = v30;
          *(&v46[4] + 1) = v13;
          v32 = *(v1 + 6);
          v46[5] = *(v1 + 5);
          v46[6] = v32;
          memcpy(v45, v46, sizeof(v45));
          outlined init with copy of AnswerSynthesisRequest(v46, v44);
          v33 = AnswerSynthesisRequest.calculateTokenCount()();
          if (v34)
          {
            memcpy(v44, v45, sizeof(v44));
            v11 = v44;
            goto LABEL_7;
          }

          v12 = v33;
          memcpy(v44, v45, sizeof(v44));
          outlined destroy of AnswerSynthesisRequest(v44);
          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.info.getter();
          v37 = OUTLINED_FUNCTION_20_3();
          if (os_log_type_enabled(v37, v38))
          {
            OUTLINED_FUNCTION_9_4();
            v39 = swift_slowAlloc();
            OUTLINED_FUNCTION_9_4();
            v43 = swift_slowAlloc();
            *v39 = 136315650;
            *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            *(v39 + 12) = 2048;
            *(v39 + 14) = value;
            *(v39 + 22) = 2048;
            *(v39 + 24) = v12;
            _os_log_impl(&dword_25D85C000, v35, v36, "%s Dropping personal_data_sources doc at index: %ld, remaining currentTokenCount: %ld", v39, 0x20u);
            __swift_destroy_boxed_opaque_existential_1Tm(v43);
            v40 = OUTLINED_FUNCTION_19_5();
            MEMORY[0x25F8A1050](v40);
            v41 = OUTLINED_FUNCTION_7_6();
            MEMORY[0x25F8A1050](v41);
          }

          goto LABEL_10;
        }
      }
    }
  }

  OUTLINED_FUNCTION_61_2();
}

OmniSearch::AnswerSynthesisRequest::CodingKeys_optional __swiftcall AnswerSynthesisRequest.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnswerSynthesisRequest.CodingKeys.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t AnswerSynthesisRequest.CodingKeys.rawValue.getter(char a1)
{
  result = 0x7972657571;
  switch(a1)
  {
    case 1:
      result = 1701080941;
      break;
    case 2:
      result = 0x656C61636F6CLL;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x747865746E6F63;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

OmniSearch::AnswerSynthesisRequest::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnswerSynthesisRequest.CodingKeys@<W0>(Swift::String *a1@<X0>, OmniSearch::AnswerSynthesisRequest::CodingKeys_optional *a2@<X8>)
{
  result.value = AnswerSynthesisRequest.CodingKeys.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnswerSynthesisRequest.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = AnswerSynthesisRequest.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

OmniSearch::AnswerSynthesisRequest::CodingKeys_optional protocol witness for CodingKey.init(stringValue:) in conformance AnswerSynthesisRequest.CodingKeys@<W0>(uint64_t a1@<X0>, OmniSearch::AnswerSynthesisRequest::CodingKeys_optional *a2@<X8>)
{
  result.value = AnswerSynthesisRequest.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisRequest.CodingKeys and conformance AnswerSynthesisRequest.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisRequest.CodingKeys and conformance AnswerSynthesisRequest.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AnswerSynthesisRequest.getLocale()@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 48))
  {

    OUTLINED_FUNCTION_88();
    Locale.init(identifier:)();
    v3 = 0;
  }

  else
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v4, static Logging.answerSynthesis);
    v5 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v6 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v6, v7))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_21_6();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      v13 = OUTLINED_FUNCTION_7_6();
      MEMORY[0x25F8A1050](v13);
    }

    v3 = 1;
  }

  v14 = type metadata accessor for Locale();

  return __swift_storeEnumTagSinglePayload(a1, v3, 1, v14);
}

uint64_t static AnswerSynthesisRequest.getModelTokenLimit()()
{
  v0 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
  if (static NSUserDefaults.answerSynthesisModelType.getter(v0, v1, v2, v3, v4) == 0x6563697665446E6FLL && v5 == 0xE800000000000000)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      return static NSUserDefaults.answerSynthesisTokenLimitServer.getter(v8);
    }
  }

  return static NSUserDefaults.answerSynthesisTokenLimitDevice.getter(v8);
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnswerSynthesisRequest.calculateTokenCount()()
{
  AnswerSynthesisRequest.userPrompt()();
  if (v1)
  {
    return v0;
  }

  v2 = String.count.getter();

  v3 = v2;
  v4 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
  v5 = v2 / static NSUserDefaults.answerSynthesisTokenCharMultiplier.getter(v4);
  if (COERCE_INT(fabs(v5)) > 2139095039)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v5 <= -9.2234e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v5 >= 9.2234e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (one-time initialization token for answerSynthesis != -1)
  {
LABEL_13:
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v0 = v5;
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logging.answerSynthesis);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v12 = swift_slowAlloc();
    *v9 = 136315906;
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v9 + 4) = v10;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v3;
    *(v9 + 22) = 2048;
    *(v9 + 24) = static NSUserDefaults.answerSynthesisTokenCharMultiplier.getter(v10);
    *(v9 + 32) = 2048;
    *(v9 + 34) = v0;
    _os_log_impl(&dword_25D85C000, v7, v8, "%s %f (prompt char count) / %f (token-to-char multiplier) = %ld (token count)", v9, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  return v0;
}

Swift::Int_optional __swiftcall AnswerSynthesisRequest.getLastIndexToTruncate()()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v16 = 0;
LABEL_21:
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v30, static Logging.answerSynthesis);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      OUTLINED_FUNCTION_30_7();
      v33 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_4();
      v37 = swift_slowAlloc();
      *v33 = 136315394;
      OUTLINED_FUNCTION_25_7();
      *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      *(v33 + 12) = 2048;
      *(v33 + 14) = v16;
      _os_log_impl(&dword_25D85C000, v31, v32, "%s Unable to find any non-onScreenText document to drop? current personalDataSources.count: %ld", v33, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      v34 = OUTLINED_FUNCTION_7_6();
      MEMORY[0x25F8A1050](v34);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v2 = 0;
    v29 = 1;
    goto LABEL_26;
  }

  v3 = v1 + 32;
  while (2)
  {
    if (v2 <= *(v1 + 16))
    {
      --v2;
      v4 = *(v3 + 8 * v2);
      v7 = *(v4 + 64);
      v6 = v4 + 64;
      v5 = v7;
      v8 = 1 << *(*(v3 + 8 * v2) + 32);
      if (v8 < 64)
      {
        v9 = ~(-1 << v8);
      }

      else
      {
        v9 = -1;
      }

      v10 = v9 & v5;
      v11 = (v8 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v12 = 0;
      do
      {
        if (!v10)
        {
          while (1)
          {
            v13 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              __break(1u);
              goto LABEL_28;
            }

            if (v13 >= v11)
            {
              break;
            }

            v10 = *(v6 + 8 * v13);
            ++v12;
            if (v10)
            {
              v12 = v13;
              goto LABEL_13;
            }
          }

          swift_bridgeObjectRelease_n();
          if (one-time initialization token for answerSynthesis != -1)
          {
            goto LABEL_29;
          }

          goto LABEL_17;
        }

LABEL_13:
        v10 &= v10 - 1;

        v14._countAndFlagsBits = 0x6E65657263736E6FLL;
        v14._object = 0xE90000000000005FLL;
        v15 = String.hasPrefix(_:)(v14);
      }

      while (!v15);

      swift_bridgeObjectRelease_n();
      v3 = v1 + 32;
      if (v2)
      {
        continue;
      }

      v16 = *(v1 + 16);
      goto LABEL_21;
    }

    break;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  OUTLINED_FUNCTION_0_5();
  swift_once();
LABEL_17:
  v17 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v17, static Logging.answerSynthesis);
  v18 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v19 = OUTLINED_FUNCTION_20_3();
  if (os_log_type_enabled(v19, v20))
  {
    OUTLINED_FUNCTION_30_7();
    v21 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v36 = swift_slowAlloc();
    *v21 = 136315394;
    OUTLINED_FUNCTION_25_7();
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v21 + 12) = 2048;
    *(v21 + 14) = v2;
    OUTLINED_FUNCTION_21_6();
    _os_log_impl(v22, v23, v24, v25, v26, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    v27 = OUTLINED_FUNCTION_19_5();
    MEMORY[0x25F8A1050](v27);
    v28 = OUTLINED_FUNCTION_7_6();
    MEMORY[0x25F8A1050](v28);
  }

  v29 = 0;
LABEL_26:
  v35 = v2;
  result.value = v35;
  result.is_nil = v29;
  return result;
}

Swift::Int_optional __swiftcall AnswerSynthesisRequest.truncateLastPersonalDataSources()()
{
  memcpy(__dst, v0, sizeof(__dst));
  memcpy(v18, v0, sizeof(v18));
  outlined init with copy of AnswerSynthesisRequest(__dst, v20);
  IndexTo = AnswerSynthesisRequest.getLastIndexToTruncate()();
  value = IndexTo.value;
  is_nil = IndexTo.is_nil;
  memcpy(v20, v18, sizeof(v20));
  outlined destroy of AnswerSynthesisRequest(v20);
  if (!is_nil)
  {
    specialized Array.remove(at:)(value);

    v3 = *(v0[9] + 16);
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v4, static Logging.answerSynthesis);
    v5 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v6 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v6, v7))
    {
      OUTLINED_FUNCTION_30_7();
      v8 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_4();
      v9 = swift_slowAlloc();
      v18[0] = v9;
      *v8 = 136315394;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      *(v8 + 12) = 2048;
      *(v8 + 14) = v3;
      OUTLINED_FUNCTION_22_4();
      _os_log_impl(v10, v11, v12, v13, v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      v15 = OUTLINED_FUNCTION_19_5();
      MEMORY[0x25F8A1050](v15);
    }
  }

  v16 = is_nil;
  v17 = value;
  result.value = v17;
  result.is_nil = v16;
  return result;
}

void specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v3 = v6;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    memmove((v3 + 8 * a1 + 32), (v3 + 8 * a1 + 40), 8 * (v4 - 1 - a1));
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

void AnswerSynthesisRequest.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60_1();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch22AnswerSynthesisRequestV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch22AnswerSynthesisRequestV10CodingKeysOGMR);
  OUTLINED_FUNCTION_14();
  v25 = v24;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v26);
  v28 = v37 - v27;
  v29 = v20[3];
  v37[7] = v20[4];
  v37[8] = v29;
  v30 = v20[5];
  v37[5] = v20[6];
  v37[6] = v30;
  v31 = v20[9];
  v37[3] = v20[10];
  v37[4] = v31;
  v32 = v20[11];
  v37[1] = v20[13];
  v37[2] = v32;
  v33 = v23[3];
  v34 = v23;
  v36 = v35;
  __swift_project_boxed_opaque_existential_1(v34, v33);
  lazy protocol witness table accessor for type AnswerSynthesisRequest.CodingKeys and conformance AnswerSynthesisRequest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_20_6();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v21)
  {
    OUTLINED_FUNCTION_20_6();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_20_6();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v38 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDyS2SGGMd, &_sSaySDyS2SGGMR);
    lazy protocol witness table accessor for type [[String : String]] and conformance <A> [A]();
    OUTLINED_FUNCTION_22_6();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_20_6();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v38 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_22_6();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  (*(v25 + 8))(v28, v36);
  OUTLINED_FUNCTION_61_2();
}

void AnswerSynthesisRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60_1();
  v22 = v21;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch22AnswerSynthesisRequestV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch22AnswerSynthesisRequestV10CodingKeysOGMR);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v25);
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  lazy protocol witness table accessor for type AnswerSynthesisRequest.CodingKeys and conformance AnswerSynthesisRequest.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  else
  {
    OUTLINED_FUNCTION_12_5();
    v26 = KeyedDecodingContainer.decode(_:forKey:)();
    v43 = v27;
    OUTLINED_FUNCTION_12_5();
    v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v42 = v29;
    LOBYTE(v45[0]) = 2;
    OUTLINED_FUNCTION_12_5();
    v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v41 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDyS2SGGMd, &_sSaySDyS2SGGMR);
    LOBYTE(v44[0]) = 3;
    lazy protocol witness table accessor for type [[String : String]] and conformance <A> [A]();
    OUTLINED_FUNCTION_31_10();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v38 = v28;
    v39 = v26;
    v31 = v45[0];
    LOBYTE(v45[0]) = 4;
    OUTLINED_FUNCTION_12_5();
    v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v34 = v33;
    v37 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v46 = 5;
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D83808], MEMORY[0x277D83978]);
    OUTLINED_FUNCTION_31_10();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v35 = OUTLINED_FUNCTION_8_8();
    v36(v35);
    v44[0] = v39;
    v44[1] = v43;
    v44[2] = 0;
    v44[3] = v38;
    v44[4] = v42;
    v44[5] = v40;
    v44[6] = v41;
    v44[7] = 0;
    v44[8] = 0;
    v44[9] = v31;
    v44[10] = v37;
    v44[11] = v34;
    v44[12] = 0;
    v44[13] = a10;
    memcpy(v24, v44, 0x70uLL);
    outlined init with copy of AnswerSynthesisRequest(v44, v45);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v45[0] = v39;
    v45[1] = v43;
    v45[2] = 0;
    v45[3] = v38;
    v45[4] = v42;
    v45[5] = v40;
    v45[6] = v41;
    v45[7] = 0;
    v45[8] = 0;
    v45[9] = v31;
    v45[10] = v37;
    v45[11] = v34;
    v45[12] = 0;
    v45[13] = a10;
    outlined destroy of AnswerSynthesisRequest(v45);
  }

  OUTLINED_FUNCTION_61_2();
}

void specialized UnsafeMutablePointer.moveInitialize(from:count:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for ExtractedInfo);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for SearchResult);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &_sSi_10OmniSearch0B6ResultVtMd, &_sSi_10OmniSearch0B6ResultVtMR);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for MessageAccumulationContext.Message);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277D38E40]);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for GlobalItem);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &_sSS_10OmniSearch0B6ResultVtMd, &_sSS_10OmniSearch0B6ResultVtMR);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277CB9DA8]);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277CB9DB8]);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for SearchPropertyResponse);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMd, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMR);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtMd, &_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtMR);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277D374E8]);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277D374C8]);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for MemoryCreationQUResult);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for SearchEntity);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for SearchPropertyRequest);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &_sSi6offset_10OmniSearch0C6EntityV7elementtMd, &_sSi6offset_10OmniSearch0C6EntityV7elementtMR);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277D39A88]);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for SearchCATEntity);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &_sSi_10OmniSearch0B9CATEntityVtMd, &_sSi_10OmniSearch0B9CATEntityVtMR);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277D372B8]);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277D1FD90]);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMd, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMR);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for PersonQueryEntity);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for LocationQueryEntity);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for AudioSearchResultsRanker.AudioSearchResultRankingItem);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &_sSS2id_10Foundation3URLVSg3urltMd, ",");
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277D38EC8]);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for WebImage);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277D397D8]);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277D39B70]);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277D39A70]);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &_sSo16CSSearchableItemC4item_15OmniSearchTypes016SpotlightRankingB0V09spotlighthB0tMd, &_sSo16CSSearchableItemC4item_15OmniSearchTypes016SpotlightRankingB0V09spotlighthB0tMR);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &_sSo16CSSearchableItemC_15OmniSearchTypes016SpotlightRankingB0VtMd, &_sSo16CSSearchableItemC_15OmniSearchTypes016SpotlightRankingB0VtMR);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277D37540]);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277D37388]);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277D1FBA8]);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277D55FF8]);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277D1FD08]);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277D1FD68]);
}

void specialized UnsafeMutablePointer.moveInitialize(from:count:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_134();
  if (v11 < v10 || (__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), OUTLINED_FUNCTION_17(), v6 + *(v12 + 72) * v5 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_11_6();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v6)
  {
    OUTLINED_FUNCTION_11_6();

    swift_arrayInitWithTakeBackToFront();
  }
}

void specialized UnsafeMutablePointer.moveInitialize(from:count:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_134();
  if (v9 < v8 || (a4(0), OUTLINED_FUNCTION_17(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_11_6();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_11_6();

    swift_arrayInitWithTakeBackToFront();
  }
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS3key_SS5valuet_Tt1g5(*(a1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v7, v3 + 4, v1, a1);
  v5 = v7;

  outlined consume of [String : String].Iterator._Variant(v5);
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t type metadata accessor for AnswerSynthesisRequestContext(uint64_t a1)
{
  result = type metadata singleton initialization cache for AnswerSynthesisRequestContext;
  if (!type metadata singleton initialization cache for AnswerSynthesisRequestContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10AppIntents12IntentPersonV6HandleV_Tt1g5, MEMORY[0x277CB9DA8]);
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(unint64_t, void), uint64_t (*a6)(void))
{
  v6 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    a5((a4 >> 1) - a3, 0);
    if (v6 != a3)
    {
      a6(0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v2;
  v8 = *(*v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, &_ss17_NativeDictionaryVyS2SGMR);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v8);

  v9 = *(*(v11 + 56) + 16 * v6);
  _NativeDictionary._delete(at:)();
  *v3 = v11;
  return v9;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v9 = *(*v3 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS10OmniSearch17ChatMessageRecord_pGMd, &_ss17_NativeDictionaryVySS10OmniSearch17ChatMessageRecord_pGMR);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v9);

    outlined init with take of ResponseOverrideMatcherProtocol((*(v11 + 56) + 40 * v7), a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch17ChatMessageRecord_pMd, &_s10OmniSearch17ChatMessageRecord_pMR);
    _NativeDictionary._delete(at:)();
    *v3 = v11;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

void specialized _ArrayBuffer._consumeAndCreateNew()()
{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0);
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    MEMORY[0x25F8A01B0](a1);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t _s10OmniSearch0B6ResultVWOcTm_2()
{
  OUTLINED_FUNCTION_134();
  v1(0);
  OUTLINED_FUNCTION_17();
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);
  return v0;
}

uint64_t outlined destroy of AnswerSynthesisRequestContext()
{
  v1 = OUTLINED_FUNCTION_42_2();
  v2(v1);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t outlined assign with take of IntentSystemContext.AssistantContext.InteractionMode?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle)
  {
    type metadata accessor for Date.FormatStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisRequest.CodingKeys and conformance AnswerSynthesisRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisRequest.CodingKeys and conformance AnswerSynthesisRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisRequest.CodingKeys and conformance AnswerSynthesisRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisRequest.CodingKeys and conformance AnswerSynthesisRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisRequest.CodingKeys and conformance AnswerSynthesisRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisRequest.CodingKeys and conformance AnswerSynthesisRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisRequest.CodingKeys and conformance AnswerSynthesisRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisRequest.CodingKeys and conformance AnswerSynthesisRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisRequest.CodingKeys and conformance AnswerSynthesisRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisRequest.CodingKeys and conformance AnswerSynthesisRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisRequest.CodingKeys and conformance AnswerSynthesisRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisRequest.CodingKeys and conformance AnswerSynthesisRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisRequest.CodingKeys and conformance AnswerSynthesisRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [[String : String]] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [[String : String]] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [[String : String]] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySDyS2SGGMd, &_sSaySDyS2SGGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [[String : String]] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [[String : String]] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [[String : String]] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySDyS2SGGMd, &_sSaySDyS2SGGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x277D83808], MEMORY[0x277D83528]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [[String : String]] and conformance <A> [A]);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AnswerSynthesisRequest(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type AnswerSynthesisRequest and conformance AnswerSynthesisRequest();
  result = lazy protocol witness table accessor for type AnswerSynthesisRequest and conformance AnswerSynthesisRequest();
  *(a1 + 16) = result;
  return result;
}

void type metadata completion function for AnswerSynthesisRequestContext(uint64_t a1)
{
  type metadata accessor for [String : String]?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode?(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?();
      if (v3 <= 0x3F)
      {
        type metadata accessor for FeatureFlagService();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IntentSystemContext.AssistantContext.InteractionMode?)
  {
    type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IntentSystemContext.AssistantContext.InteractionMode?);
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

uint64_t getEnumTagSinglePayload for AnswerSynthesisRequest(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for AnswerSynthesisRequest(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnswerSynthesisRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AnswerSynthesisRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        break;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t specialized RandomAccessCollection<>.index(_:offsetBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v6 = a4 - a3;
  if (!a3)
  {
    v6 = 0;
  }

  if (result < 0 || v6 < result)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_17_6()
{

  return outlined destroy of AnswerSynthesisRequestContext();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AnswerSynthesisResult.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25D863038(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnswerSynthesisResult.CodingKeys@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25D863084(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnswerSynthesisResult.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_25D863038(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AnswerSynthesisResult.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_9_1();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResult.CodingKeys and conformance AnswerSynthesisResult.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResult.CodingKeys and conformance AnswerSynthesisResult.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AnswerSynthesisResult.encode(to:)(void *a1)
{
  type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  v5 = v4 - v3;
  type metadata accessor for AnswerSynthesisResult(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch21AnswerSynthesisResultO10CodingKeys33_20C464D5414377117A6D9988CE04326CLLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch21AnswerSynthesisResultO10CodingKeys33_20C464D5414377117A6D9988CE04326CLLOGMR);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnswerSynthesisResult.CodingKeys and conformance AnswerSynthesisResult.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_2_7();
  outlined init with copy of AnswerSynthesisResult(v21, v9, v11);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B6ResultVGMd, &_sSay10OmniSearch0B6ResultVGMR);
      lazy protocol witness table accessor for type [SearchResult] and conformance <A> [A](&lazy protocol witness table cache variable for type [SearchResult] and conformance <A> [A], &lazy protocol witness table cache variable for type SearchResult and conformance SearchResult, &protocol conformance descriptor for SearchResult, MEMORY[0x277D83948]);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v19 = OUTLINED_FUNCTION_116_0();
      v20(v19);

      break;
    case 2u:
    case 3u:
      KeyedEncodingContainer.encode(_:forKey:)();
      goto LABEL_4;
    default:
      OUTLINED_FUNCTION_10_7();
      _s10OmniSearch0B6ResultVWObTm_2(v9, v5, v12);
      OUTLINED_FUNCTION_1_10();
      lazy protocol witness table accessor for type SearchResult and conformance SearchResult(v13, v14, &protocol conformance descriptor for SearchResult);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      OUTLINED_FUNCTION_12_6();
      _s10OmniSearch0B6ResultVWOhTm_1(v5, v15);
LABEL_4:
      v16 = OUTLINED_FUNCTION_116_0();
      result = v17(v16);
      break;
  }

  return result;
}

uint64_t type metadata accessor for AnswerSynthesisResult(uint64_t a1)
{
  result = type metadata singleton initialization cache for AnswerSynthesisResult;
  if (!type metadata singleton initialization cache for AnswerSynthesisResult)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisResult.CodingKeys and conformance AnswerSynthesisResult.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisResult.CodingKeys and conformance AnswerSynthesisResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisResult.CodingKeys and conformance AnswerSynthesisResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisResult.CodingKeys and conformance AnswerSynthesisResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisResult.CodingKeys and conformance AnswerSynthesisResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisResult.CodingKeys and conformance AnswerSynthesisResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisResult.CodingKeys and conformance AnswerSynthesisResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisResult.CodingKeys and conformance AnswerSynthesisResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisResult.CodingKeys and conformance AnswerSynthesisResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisResult.CodingKeys and conformance AnswerSynthesisResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisResult.CodingKeys and conformance AnswerSynthesisResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisResult.CodingKeys and conformance AnswerSynthesisResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisResult.CodingKeys and conformance AnswerSynthesisResult.CodingKeys);
  }

  return result;
}

void static AnswerSynthesisResult.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = type metadata accessor for SearchResult(0);
  MEMORY[0x28223BE20](v27 - 8);
  OUTLINED_FUNCTION_36();
  v30 = v29 - v28;
  type metadata accessor for AnswerSynthesisResult(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_22_7();
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21AnswerSynthesisResultO_ACtMd, &_s10OmniSearch21AnswerSynthesisResultO_ACtMR);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v35);
  v37 = &a9 - v36;
  v39 = &a9 + *(v38 + 56) - v36;
  outlined init with copy of AnswerSynthesisResult(v26, &a9 - v36, type metadata accessor for AnswerSynthesisResult);
  outlined init with copy of AnswerSynthesisResult(v24, v39, type metadata accessor for AnswerSynthesisResult);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_2_7();
      outlined init with copy of AnswerSynthesisResult(v37, v20, v42);
      v43 = *(v20 + 8);
      v44 = *(v20 + 16);
      OUTLINED_FUNCTION_21_7();
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        goto LABEL_19;
      }

      v45 = *(v39 + 1);
      v46 = *(v39 + 2);
      _sSasSQRzlE2eeoiySbSayxG_ABtFZ10OmniSearch0C6ResultV_Tt1g5();
      v48 = v47;

      if ((v48 & 1) == 0)
      {

        goto LABEL_23;
      }

      if (v44)
      {
        if (v46)
        {
          if (v43 != v45 || v44 != v46)
          {
            _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          goto LABEL_24;
        }

LABEL_23:

        goto LABEL_24;
      }

      if (v46)
      {
        goto LABEL_23;
      }

LABEL_24:
      OUTLINED_FUNCTION_5_8();
LABEL_20:
      OUTLINED_FUNCTION_148();
      return;
    case 2u:
      OUTLINED_FUNCTION_21_7();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_19;
      }

      goto LABEL_24;
    case 3u:
      OUTLINED_FUNCTION_21_7();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    default:
      OUTLINED_FUNCTION_2_7();
      outlined init with copy of AnswerSynthesisResult(v37, v34, v40);
      OUTLINED_FUNCTION_21_7();
      if (swift_getEnumCaseMultiPayload())
      {
        OUTLINED_FUNCTION_12_6();
        _s10OmniSearch0B6ResultVWOhTm_1(v34, v41);
LABEL_19:
        outlined destroy of IntentApplication?(v37, &_s10OmniSearch21AnswerSynthesisResultO_ACtMd, &_s10OmniSearch21AnswerSynthesisResultO_ACtMR);
      }

      else
      {
        OUTLINED_FUNCTION_10_7();
        _s10OmniSearch0B6ResultVWObTm_2(v39, v30, v50);
        static SearchResult.== infix(_:_:)();
        _s10OmniSearch0B6ResultVWOhTm_1(v30, type metadata accessor for SearchResult);
        _s10OmniSearch0B6ResultVWOhTm_1(v34, type metadata accessor for SearchResult);
        OUTLINED_FUNCTION_5_8();
      }

      goto LABEL_20;
  }
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ10OmniSearch0C6ResultV_Tt1g5()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for SearchResultItem(0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_36();
  v61 = v7 - v6;
  v64 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_18_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_16_9();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v60 - v13;
  v15 = *(v4 + 16);
  if (v15 == *(v2 + 16) && v15 && v4 != v2)
  {
    OUTLINED_FUNCTION_131_1();
    v17 = v4 + v16;
    v18 = v2 + v16;
    v60 = *(v19 + 72);
    while (1)
    {
      outlined init with copy of AnswerSynthesisResult(v17, v14, type metadata accessor for SearchResult);
      v62 = v18;
      v63 = v17;
      outlined init with copy of AnswerSynthesisResult(v18, v11, type metadata accessor for SearchResult);
      v20 = v61;
      outlined init with copy of AnswerSynthesisResult(v11, v61, type metadata accessor for SearchResultItem);
      SearchResultItem.associatedValue.getter(v65);
      v21 = v66;
      v22 = v67;
      __swift_project_boxed_opaque_existential_1(v65, v66);
      (*(v22 + 32))(v21, v22);
      OUTLINED_FUNCTION_24_8();
      SearchResultItem.associatedValue.getter(v23);
      v25 = v66;
      v24 = v67;
      v26 = __swift_project_boxed_opaque_existential_1(v65, v66);
      (*(v24 + 32))(v25, v24);
      OUTLINED_FUNCTION_26_4();
      _s10OmniSearch0B6ResultVWOhTm_1(v20, type metadata accessor for SearchResultItem);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      if (v21 == v25 && v0 == v26)
      {
      }

      else
      {
        OUTLINED_FUNCTION_8_9();
        OUTLINED_FUNCTION_33_5();

        if ((v24 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      SearchResultItem.associatedValue.getter(v65);
      v28 = v66;
      v29 = v67;
      OUTLINED_FUNCTION_34_8();
      (*(v29 + 40))(v28, v29);
      OUTLINED_FUNCTION_24_8();
      SearchResultItem.associatedValue.getter(v30);
      v24 = v66;
      v31 = v67;
      v32 = OUTLINED_FUNCTION_34_8();
      (*(v31 + 40))(v24, v31);
      OUTLINED_FUNCTION_26_4();
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      if (v29 == v31 && v0 == v32)
      {
      }

      else
      {
        OUTLINED_FUNCTION_8_9();
        OUTLINED_FUNCTION_33_5();

        if ((v24 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      SearchResultItem.associatedValue.getter(v65);
      v34 = v67;
      OUTLINED_FUNCTION_34_8();
      v35 = OUTLINED_FUNCTION_30_8();
      v36(v35);
      OUTLINED_FUNCTION_24_8();
      SearchResultItem.associatedValue.getter(v37);
      v24 = v66;
      v38 = v67;
      v39 = OUTLINED_FUNCTION_34_8();
      v40 = OUTLINED_FUNCTION_30_8();
      v41(v40);
      OUTLINED_FUNCTION_26_4();
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      if (v34 == v38 && v0 == v39)
      {
      }

      else
      {
        OUTLINED_FUNCTION_8_9();
        OUTLINED_FUNCTION_33_5();

        if ((v24 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      v43 = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
      v44 = CodableNSSecureCoding.wrappedValue.getter();
      v45 = [v44 uniqueIdentifier];

      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v0 = v47;

      v48 = v11 + *(v43 + 24);
      v24 = CodableNSSecureCoding.wrappedValue.getter();
      v49 = [v24 uniqueIdentifier];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_26_4();

      if (v46 == v45 && v0 == v48)
      {
      }

      else
      {
        OUTLINED_FUNCTION_8_9();
        OUTLINED_FUNCTION_33_5();

        if ((v24 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      v51 = *(v64 + 40);
      v52 = &v14[v51];
      v53 = *&v14[v51 + 8];
      v54 = (v11 + v51);
      v55 = v54[1];
      if (v53)
      {
        if (!v55 || (*v52 == *v54 ? (v56 = v53 == v55) : (v56 = 0), !v56 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
        {
LABEL_46:
          OUTLINED_FUNCTION_11_7();
          _s10OmniSearch0B6ResultVWOhTm_1(v11, v59);
          _s10OmniSearch0B6ResultVWOhTm_1(v14, v24);
          break;
        }
      }

      else if (v55)
      {
        goto LABEL_46;
      }

      v57 = static SpotlightRankingItem.== infix(_:_:)();
      OUTLINED_FUNCTION_11_7();
      _s10OmniSearch0B6ResultVWOhTm_1(v11, v58);
      _s10OmniSearch0B6ResultVWOhTm_1(v14, v24);
      if (v57)
      {
        v18 = v62 + v60;
        v17 = v63 + v60;
        if (--v15)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_148();
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1gq5Tm(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10OmniSearch0C12GlobalEntityV15CustomAttributeO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 72);
  for (i = (a1 + 40); ; i += 6)
  {
    v6 = *(i - 1);
    v5 = *i;
    v7 = i[1];
    v8 = i[2];
    v9 = i[3];
    v10 = i[4];
    v12 = *(v3 - 5);
    v11 = *(v3 - 4);
    v14 = *(v3 - 3);
    v13 = *(v3 - 2);
    v15 = *(v3 - 1);
    v16 = *v3;
    v98[0] = v6;
    v98[1] = v5;
    v98[2] = v7;
    v98[3] = v8;
    v97 = v9;
    v98[4] = v9;
    v98[5] = v10;
    v98[6] = v12;
    v98[7] = v11;
    v98[8] = v14;
    v98[9] = v13;
    v17 = v13 >> 62;
    v98[10] = v15;
    v98[11] = v16;
    if (!(v8 >> 62))
    {
      if (v17)
      {
        goto LABEL_56;
      }

      v93 = v10;
      if (v6 != v12 || v5 != v11)
      {
        v87 = v16;
        v90 = v15;
        v85 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v19 = OUTLINED_FUNCTION_0_6();
        outlined copy of SearchGlobalEntity.CustomAttribute(v19, v20, v21, v22, v90, v87);
        OUTLINED_FUNCTION_13_5();
        outlined copy of SearchGlobalEntity.CustomAttribute(v23, v24, v25, v26, v27, v93);
        outlined destroy of IntentApplication?(v98, &_s10OmniSearch0B12GlobalEntityV15CustomAttributeO_AEtMd, &_s10OmniSearch0B12GlobalEntityV15CustomAttributeO_AEtMR);
        if ((v85 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_54;
      }

      outlined copy of SearchGlobalEntity.CustomAttribute(v6, v5, v14, v13, v15, v16);
      goto LABEL_53;
    }

    v96 = v6;
    if (v8 >> 62 == 1)
    {
      break;
    }

    if (v17 != 2)
    {
      goto LABEL_56;
    }

    v94 = v10;
    if (v5)
    {
      if (!v11)
      {
        goto LABEL_57;
      }

      if (v6 != v12 || v5 != v11)
      {
        v29 = v5;
        v88 = v8;
        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v5 = v29;
        if ((v30 & 1) == 0)
        {
          goto LABEL_58;
        }
      }
    }

    else if (v11)
    {
      goto LABEL_57;
    }

    if (v8)
    {
      v92 = v13;
    }

    else
    {
      if (v13)
      {
LABEL_57:
        v29 = v5;
        v88 = v8;
LABEL_58:
        v72 = OUTLINED_FUNCTION_0_6();
        outlined copy of SearchGlobalEntity.CustomAttribute(v72, v73, v74, v75, v76, v77);
        v66 = v96;
        v70 = v97;
        v67 = v29;
        v68 = v7;
        v69 = v88;
        v71 = v94;
        goto LABEL_59;
      }

      v92 = *&v7 == *&v14;
    }

    v36 = OUTLINED_FUNCTION_0_6();
    outlined copy of SearchGlobalEntity.CustomAttribute(v36, v37, v38, v39, v40, v41);
    OUTLINED_FUNCTION_13_5();
    outlined copy of SearchGlobalEntity.CustomAttribute(v42, v43, v44, v45, v46, v94);
    outlined destroy of IntentApplication?(v98, &_s10OmniSearch0B12GlobalEntityV15CustomAttributeO_AEtMd, &_s10OmniSearch0B12GlobalEntityV15CustomAttributeO_AEtMR);
    if (!v92)
    {
      return 0;
    }

LABEL_54:
    v3 += 6;
    if (!--v2)
    {
      return 1;
    }
  }

  if (v17 != 1)
  {
    goto LABEL_56;
  }

  if (v5)
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  else if ((v11 & 1) != 0 || v6 != v12)
  {
LABEL_56:
    v64 = v5;
    v65 = v10;
    outlined copy of SearchGlobalEntity.CustomAttribute(v12, v11, v14, v13, v15, v16);
    v66 = v6;
    v67 = v64;
    v68 = v7;
    v69 = v8;
    v70 = v97;
    v71 = v65;
    goto LABEL_59;
  }

  if (v8)
  {
    if ((v13 & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  else if ((v13 & 1) != 0 || v7 != v14)
  {
    goto LABEL_56;
  }

  if (v10)
  {
    if (!v16)
    {
      goto LABEL_56;
    }

    v86 = v5;
    if (v97 != v15 || v10 != v16)
    {
      v91 = v15;
      v95 = v10;
      v89 = v16;
      v84 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v32 = OUTLINED_FUNCTION_0_6();
      outlined copy of SearchGlobalEntity.CustomAttribute(v32, v33, v34, v35, v91, v89);
      outlined copy of SearchGlobalEntity.CustomAttribute(v6, v86, v7, v8, v97, v95);
      outlined destroy of IntentApplication?(v98, &_s10OmniSearch0B12GlobalEntityV15CustomAttributeO_AEtMd, &_s10OmniSearch0B12GlobalEntityV15CustomAttributeO_AEtMR);
      if ((v84 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_54;
    }

    v53 = OUTLINED_FUNCTION_0_6();
    outlined copy of SearchGlobalEntity.CustomAttribute(v53, v54, v55, v56, v97, v57);
    goto LABEL_53;
  }

  if (!v16)
  {
    v47 = OUTLINED_FUNCTION_0_6();
    outlined copy of SearchGlobalEntity.CustomAttribute(v47, v48, v49, v50, v51, v52);
LABEL_53:
    OUTLINED_FUNCTION_13_5();
    outlined copy of SearchGlobalEntity.CustomAttribute(v58, v59, v60, v61, v97, v62);
    outlined destroy of IntentApplication?(v98, &_s10OmniSearch0B12GlobalEntityV15CustomAttributeO_AEtMd, &_s10OmniSearch0B12GlobalEntityV15CustomAttributeO_AEtMR);
    goto LABEL_54;
  }

  v78 = OUTLINED_FUNCTION_0_6();
  outlined copy of SearchGlobalEntity.CustomAttribute(v78, v79, v80, v81, v82, v83);
  OUTLINED_FUNCTION_13_5();
  v71 = 0;
LABEL_59:
  outlined copy of SearchGlobalEntity.CustomAttribute(v66, v67, v68, v69, v70, v71);
  outlined destroy of IntentApplication?(v98, &_s10OmniSearch0B12GlobalEntityV15CustomAttributeO_AEtMd, &_s10OmniSearch0B12GlobalEntityV15CustomAttributeO_AEtMR);
  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10OmniSearch0C6EntityV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchEntity(0) - 8;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_16_9();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_131_1();
      v13 = a1 + v12;
      v14 = a2 + v12;
      v16 = *(v15 + 72);
      do
      {
        outlined init with copy of AnswerSynthesisResult(v13, v10, type metadata accessor for SearchEntity);
        outlined init with copy of AnswerSynthesisResult(v14, v7, type metadata accessor for SearchEntity);
        static SearchEntity.== infix(_:_:)();
        v18 = v17;
        _s10OmniSearch0B6ResultVWOhTm_1(v7, type metadata accessor for SearchEntity);
        _s10OmniSearch0B6ResultVWOhTm_1(v10, type metadata accessor for SearchEntity);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v14 += v16;
        v13 += v16;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ10OmniSearch13FlightSnippetV3LegV_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for FlightSnippet.Leg(0);
  OUTLINED_FUNCTION_18_8();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_16_9();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  v34 = *(v25 + 16);
  if (v34 == *(v23 + 16) && v34 && v25 != v23)
  {
    OUTLINED_FUNCTION_131_1();
    v36 = v25 + v35;
    v37 = v23 + v35;
    v39 = *(v38 + 72);
    while (1)
    {
      v40 = OUTLINED_FUNCTION_116_0();
      outlined init with copy of AnswerSynthesisResult(v40, v41, v42);
      v43 = OUTLINED_FUNCTION_21_7();
      outlined init with copy of AnswerSynthesisResult(v43, v44, v45);
      if (*&v33[*(v26 + 20)] != *(v30 + *(v26 + 20)))
      {

        closure #1 in static FlightSnippet.Leg.== infix(_:_:)();
        v47 = v46;

        if ((v47 & 1) == 0)
        {
          break;
        }
      }

      type metadata accessor for UnknownStorage();
      OUTLINED_FUNCTION_9_7();
      lazy protocol witness table accessor for type SearchResult and conformance SearchResult(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, v48, MEMORY[0x277D216D0]);
      v49 = dispatch thunk of static Equatable.== infix(_:_:)();
      _s10OmniSearch0B6ResultVWOhTm_1(v30, type metadata accessor for FlightSnippet.Leg);
      _s10OmniSearch0B6ResultVWOhTm_1(v33, type metadata accessor for FlightSnippet.Leg);
      if (v49)
      {
        v37 += v39;
        v36 += v39;
        if (--v34)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    _s10OmniSearch0B6ResultVWOhTm_1(v30, type metadata accessor for FlightSnippet.Leg);
    _s10OmniSearch0B6ResultVWOhTm_1(v33, type metadata accessor for FlightSnippet.Leg);
  }

LABEL_12:
  OUTLINED_FUNCTION_148();
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ10OmniSearch13FlightSnippetV0D4InfoV_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  type metadata accessor for FlightSnippet.FlightInfo(0);
  OUTLINED_FUNCTION_18_8();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_16_9();
  v29 = (v27 - v28);
  MEMORY[0x28223BE20](v30);
  v32 = (&a9 - v31);
  v33 = *(v25 + 16);
  if (v33 == *(v23 + 16) && v33 && v25 != v23)
  {
    OUTLINED_FUNCTION_131_1();
    v35 = v25 + v34;
    v36 = v23 + v34;
    v38 = *(v37 + 72);
    while (1)
    {
      v39 = OUTLINED_FUNCTION_116_0();
      outlined init with copy of AnswerSynthesisResult(v39, v40, v41);
      v42 = OUTLINED_FUNCTION_21_7();
      outlined init with copy of AnswerSynthesisResult(v42, v43, v44);
      v45 = *v32 == *v29 && v32[1] == v29[1];
      if (!v45 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v46 = v32[2] == v29[2] && v32[3] == v29[3];
      if (!v46 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v47 = v32[4] == v29[4] && v32[5] == v29[5];
      if (!v47 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v48 = v32[6] == v29[6] && v32[7] == v29[7];
      if (!v48 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      type metadata accessor for UnknownStorage();
      OUTLINED_FUNCTION_9_7();
      lazy protocol witness table accessor for type SearchResult and conformance SearchResult(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, v49, MEMORY[0x277D216D0]);
      v50 = dispatch thunk of static Equatable.== infix(_:_:)();
      _s10OmniSearch0B6ResultVWOhTm_1(v29, type metadata accessor for FlightSnippet.FlightInfo);
      _s10OmniSearch0B6ResultVWOhTm_1(v32, type metadata accessor for FlightSnippet.FlightInfo);
      if (v50)
      {
        v36 += v38;
        v35 += v38;
        if (--v33)
        {
          continue;
        }
      }

      goto LABEL_30;
    }

    _s10OmniSearch0B6ResultVWOhTm_1(v29, type metadata accessor for FlightSnippet.FlightInfo);
    _s10OmniSearch0B6ResultVWOhTm_1(v32, type metadata accessor for FlightSnippet.FlightInfo);
  }

LABEL_30:
  OUTLINED_FUNCTION_148();
}